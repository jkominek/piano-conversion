#!/usr/bin/env python3

import atexit
import struct
import sys
import threading
import time
from math import *

import serial
import serial.tools.list_ports
import rtmidi

def graphicsleep(i):
    for _ in range(i):
        print('.', end='')
        sys.stdout.flush()
        time.sleep(1)

notelettermap = { "C": 0, "D": 2, "E": 4, "F": 5, "G": 7, "A": 9, "B": 11 } 
def notename2midi(ns):
    v = 12
    v += int(ns[-1]) * 12 # octave
    if ns[1] == '#':
        v += 1 # sharp
    v += notelettermap[ns[0]]
    return v

def notesort(notenames):
    return list(sorted(notenames, key=notename2midi))

def connectmidi():
    # try to open the right MIDI port.
    midiout = rtmidi.MidiOut()
    if len(midiout.get_ports())>1:
        midiout.open_port(1)
    else:
        midiout.open_port(0)
    # turn off any still-sounding notes.
    for midinote in range(1,126):
        midiout.send_message([0x80, midinote, 64])
    return midiout

def vel2midi(velocity, noteon=True,
             minvel=None, maxvel=None):
    if noteon==False and velocity>0.0:
        #print(f"prelift damper {midinote} {velocity}")
        pass
        return (0,0)
    #if noteon:
    #    minvel = 7000.0
    #    maxvel = 100000.0
    #else:
    #    minvel = -0
    #    maxvel = -1000
    if velocity < minvel:
        print(f"{velocity} below {minvel}")
    mps = 7.25 * (velocity - minvel) / (maxvel - minvel)
    mps += 0.25
    minmidivel = 1 if noteon else 32
    if mps <= 0.001:
        midivel = minmidivel
        cc88vel = 0
    else:
        vel = 57.96 + 71.3*log10(mps)
        try:
            midivel = round(vel)
        except OverflowError:
            midivel = 0
        if midivel < minmidivel:
            #print("had low velocity", velocity, mps)
            midivel = minmidivel
            cc88vel = 0
        elif midivel > 127.0:
            midivel = 127
            cc88vel = 0
        else:
            cc88vel = round(127 * (vel % 1))
    return (midivel, cc88vel)

class PortHandler(object):
    def __init__(self, portname, preserve=None):
        self.port = serial.Serial(port=portname, baudrate=3000000, timeout=0.000001)
        self.preserve = preserve
        self.MSGID = 666

        self.callbacks = { } # msgid references thunks
        self.velocityhandler = None
        self.statscollector = None

        self.prevtime = 0
        self.timeinc = 0
        self.prevclock = 0
        self.prevnow = 0.0
        self.lock = threading.Lock()

        self.board = portname
        self.commsgood = False

        self.sendmsg(0x05)
        atexit.register(self.shutdown)
        
        self.running = True
        self.thread = threading.Thread(target=self.loop)
        self.thread.daemon = True
        self.thread.start()
        
        self.statusthread = threading.Thread(target=self.statusloop)
        self.statusthread.daemon = True
        self.statusthread.start()
        
    def statusloop(self):
        while True:
            time.sleep(30)
            self.sendmsg(0x05)

    def shutdown(self):
        self.running = False
        self.sendmsg(0x0B, struct.pack(">H", 0))
        time.sleep(0.01)
        self.port.close()

    def print(self, *args):
        print(self.board, *args)

    def sendmsg(self, msgtype, body=b'', callback=None):
        # keep writes and msgids, synchronized.
        # don't want to know what happens if self.port.write is
        # called simultaneously in multiple threads.
        with self.lock:
            thismsgid = self.MSGID
            self.MSGID += 1

            msg = struct.pack("<BH", msgtype, thismsgid)
            if callback:
                self.callbacks[thismsgid] = callback

            msg += body
            parity = 0
            for v in msg:
                parity ^= v
            msg += bytes([parity])
            newbytes = [ ]
            # escape anything that needs it
            for b in msg:
                if b in (0x7E, 0x7D):
                    newbytes.append(0x7D)
                    newbytes.append(b ^ 0x10)
                else:
                    newbytes.append(b)
                msg = bytes([0x7E] + newbytes + [0x7E])
            self.port.write(msg)

            # no flow control, so we'll wait
            time.sleep(len(msg)/375000.0)

            return thismsgid

    def handle_message(self, msg):
        now = time.time()
        calcparity = 0
        for v in msg[:-1]:
            calcparity ^= v
        parity = msg[-1]
        if parity != calcparity:
            self.print(f"bad parity on len {len(msg)} msg")
            return

        if len(msg) < 4:
            self.print("runt frame")
            return
        msgtype = msg[0]
        msgid = struct.unpack(">H", msg[1:3])[0]
        msg = msg[3:-1]

        if msgtype == 0x00:
            inresponseto = struct.unpack("H", msg)[0]
            if inresponseto in self.callbacks:
                self.callbacks[inresponseto](inresponseto, True)
                del self.callbacks[inresponseto]
            else:
                self.print("received ACK for", inresponseto)
        elif msgtype == 0x01:
            inresponseto = struct.unpack("H", msg)[0]
            if inresponseto in self.callbacks:
                self.callbacks[inresponseto](inresponseto, False)
                del self.callbacks[inresponseto]
            else:
                self.print("received NACK for", inresponseto)
        elif msgtype == 0x02:
            self.print("we've been commanded to reboot. haha.")
        elif msgtype == 0x03:
            self.print("boot message", msg)
            self.sendmsg(0x05)
        elif msgtype == 0x04:
            self.print("we were told to blink an LED.")
        elif msgtype == 0x05:
            self.print("our status info was requested.")
        elif msgtype == 0x06:
            uniqueid = msg[:12]
            devid, revid, flashsize, sample_time, *dmas = struct.unpack("IIIIIII", msg[12:])
            devid = {
              0x450: "H742/743/753/750"
            }.get(devid, "UnknownDev!!")
            revid = {
              0x1001: "Z",
              0x1003: "Y",
              0x2001: "X",
              0x2003: "V"
            }.get(revid, "UnknownRev")
            self.board = uniqueid.hex()
            self.commsgood = True
            self.statushandler(devid, revid, flashsize, sample_time, dmas)
        elif msgtype == 0x07:
            # we could hypothetically be more clever and
            # track the time every frame boundary byte comes
            # in, down in the reader, and then feed that to
            # this code.
            clock = struct.unpack("i", msg)[0]
            if self.prevclock > 0:
                ticks = clock - self.prevclock
                elapsed = now - self.prevnow
                self.print("clock", clock, ",", round(ticks/elapsed, 2), "ticks/sec")
            else:
                self.print("clock", clock)
            self.prevclock = clock
            self.prevnow = now
        elif msgtype == 0x08:
            vel, channel = struct.unpack("fB", msg)
            if self.velocityhandler:
                self.velocityhandler(self, now, channel, vel)
        elif msgtype == 0x0A:
            cnt = (len(msg) // 2)
            if len(msg) % 2:
                print(f"bad raw sensor data packet; {len(msg)} bytes")
            else:
                self.print(time.time(), *struct.unpack(("".join(["H"]*cnt)), msg))
        elif msgtype == 0x0C:
            if len(msg) != 264:
                return
            statformat = "".join(["HHII"]*22)
            stats = [ None ] * 22
            parsed = struct.unpack(statformat, msg)
            for i in range(22):
                min = parsed[i*4+0]
                max = parsed[i*4+1]
                sum = parsed[i*4+2]
                count = parsed[i*4+3]
                stats[i] = { 'min': min, 'max': max, 'mean': round(float(sum)/count, 2) }
            if self.statscollector:
                self.statscollector(time.time(), stats)
            #self.print(time.time(), "stats", stats)
        elif msgtype == 0x7F:
            self.print("error")

    def statushandler(self, devid, revid, flashsize, sample_time, dmas):
        self.print(f"status {devid} Rev{revid} {flashsize}kB {sample_time} {dmas}")
        # based on the received uniqueid, consult our calibration tables,
        # and send the board new configuration.

    def loop(self):
        buf = b''
        while self.running:
            try:
                v = self.port.read(64)
                buf += v
                if self.preserve:
                    self.preserve.write(v)
            except serial.SerialTimeoutException:
                # only bother flushing once there isn't
                # anything to process. considering our
                # timeout, that'll happen often enough.
                if self.preserve:
                    self.preserve.flush()
            if len(buf)>4096:
                self.print("buffer overflow")
                sys.exit(-1)
            # should try to find more than one message per read, really
            while self.running:
                start = buf.find(0x7E)
                if start >= 0:
                    # have a frame start
                    end = buf.find(0x7E, start+1)
                    if end > start:
                        # got a complete message
                        rawmsg = buf[start+1:end]
                        if len(rawmsg)>0:
                            # decode message
                            msg = bytearray()
                            i = 0
                            while i < len(rawmsg):
                                v = rawmsg[i]
                                i += 1
                                if v==0x7D:
                                    try:
                                        msg.append(rawmsg[i] ^ 0x10)
                                        i += 1
                                    except IndexError:
                                        self.print("bad frame")
                                        break
                                else:
                                    msg.append(v)
                            # handle it
                            self.handle_message(bytes(msg))
                        # chop off that first message
                        buf = buf[end:]
                    else:
                        break
                else:
                    break

validports = [ ]
handlers = [ ]
def connectboards(preserve=False):
    # connect to all of the devices available to us                    
    for port in serial.tools.list_ports.comports():
        if port.vid==1027 and port.pid==24597:
            validports.append(port.device)
    print(validports)

    for p in validports:
        kwargs = { }
        if preserve:
            kwargs['preserve'] = open(p.replace("/","_"), "wb")
        h = PortHandler(p, **kwargs)
        while not h.commsgood:
            time.sleep(0.1)
        handlers.append(h)

def connectall():
    connectboards()
    return connectmidi()
