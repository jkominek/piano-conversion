#!/usr/bin/env python3

# DEPRECATING THIS REAL SOON NOW
# good stuff should be moved into util.py
# and then separate tools written on top of that

import serial
import serial.tools.list_ports
import struct
import time
import threading
import atexit
from math import log10
import rtmidi
import sys
import functools
import numpy as np
import json

# try to open the right MIDI port.
midiout = rtmidi.MidiOut()
if len(midiout.get_ports())>1:
    midiout.open_port(1)
else:
    midiout.open_port(0)

# we're using the same hammer/damper pattern on both/all boards for now
hammers = [True,True,True,False,
           True,False,True,False,
           False,True,True,False,
           False,False,False,False,
           False,False,True,True,
           True,True]
# turn off any still-sounding notes.
for midinote in range(1,126):
    midiout.send_message([0x80, midinote, 64])
def vel2midi(velocity, noteon=True):
    if noteon==False and velocity>0.0:
        #print(f"prelift damper {midinote} {velocity}")
        pass
        return (0,0)
    if noteon:
        minvel = 7000.0
        maxvel = 100000.0
    else:
        minvel = -0
        maxvel = -1000
    mps = 7.5 * (velocity - minvel) / (maxvel - minvel)
    minmidivel = 1 if noteon else 32
    if mps <= 0.0001:
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

# this is the sensor-to-midi note pattern we're using on all channels.
#[23,27,25,25,26,24,24,23,22,21,22,21,27,26,28,29,30,31,28,29,30,31]
#[2, 6, 4, 4, 5, 3, 3, 2, 1, 0, 1, 0, 6, 5, 7, 8, 9, 10, 7, 8, 9, 10]

configuration = {
  "29002a001651393238353835": {
    # lowest notes, #4
    "channel2midi":
    [ x + 44 for x in [2, 6, 4, 4, 5, 3, 3, 2, 1, 0, 1, 0, 6, 5, 7, 8, 9, 10, 7, 8, 9, 10] ]
  },
  "2b002a001651393238353835": {
    # next lowest, #5
    "channel2midi":
    [ x + 55 for x in [2, 6, 4, 4, 5, 3, 3, 2, 1, 0, 1, 0, 6, 5, 7, 8, 9, 10, 7, 8, 9, 10] ]    
  }
}    

datafile = open("rawdata","w")

class PortHandler(object):
    def __init__(self, portname):
        self.port = serial.Serial(port=portname, baudrate=3000000, timeout=0.000001)
        self.MSGID = 0
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
        self.sendmsg(0x0B, struct.pack("H", 0))
        time.sleep(0.01)
        self.port.close()

    def print(self, *args):
        print(self.board, *args)

    def sendmsg(self, msgtype, body=b''):
        # keep writes and msgids, synchronized.
        # don't want to know what happens if self.port.write is
        # called simultaneously in multiple threads.
        with self.lock:
            msg = struct.pack("B", msgtype) + struct.pack("H", self.MSGID)
            self.MSGID += 1
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

    def handle_message(self, msg):
        now = time.time()
        calcparity = 0
        for v in msg[:-1]:
            calcparity ^= v
        parity = msg[-1]

        if len(msg) < 4:
            self.print("runt frame")
            return
        msgtype = msg[0]
        msgid = struct.unpack("H", msg[1:3])[0]
        msg = msg[3:-1]

        if msgtype == 0x00:
            self.print("received ACK for", msgid)
        elif msgtype == 0x01:
            self.print("received NACK for", msgid)
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
            devid, revid, flashsize, wakes, sample_time, *dmas = struct.unpack("IIIIIIII", msg[12:])
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
            self.print(f"status {devid} Rev{revid} {flashsize}kB {wakes} {sample_time} {dmas}")
            # based on the received uniqueid, consult our calibration tables,
            # and send the board new configuration.
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
            return
            vel, channel = struct.unpack("fB", msg)
            noteon = hammers[channel]
            midinote = configuration[self.board]["channel2midi"][channel]
            midivel, cc88vel = vel2midi(vel, noteon=noteon)
            if midivel <= 0:
                return
            self.print(round(time.time(), 3), "ON " if noteon else "OFF", midinote, midivel, cc88vel)
            midiout.send_message([0xB0, 88, cc88vel])
            midiout.send_message([0x90 if noteon else 0x80, midinote, midivel])
        elif msgtype == 0x0A:
            cnt = (len(msg) >> 1)
            for v in struct.unpack(("".join(["H"]*cnt)), msg):
                datafile.write(str(v)+"\n")
            #self.print(*struct.unpack(("".join(["H"]*cnt)), msg))
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
                if count > 0:
                    stats[i] = { 'min': min, 'max': max, 'mean': round(float(sum)/count, 2) }
            if self.statscollector:
                self.statscollector(time.time(), stats)
            #self.print(time.time(), "stats", stats)
        elif msgtype == 0x7F:
            self.print("error")

    def loop(self):
        buf = b''
        while self.running:
            try:
                buf += self.port.read(64)
            except serial.SerialTimeoutException:
                pass
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


# connect to all of the devices available to us                    
validports = [ ]
for port in serial.tools.list_ports.comports():
    if port.vid==1027 and port.pid==24597:
        validports.append(port.device)
print(validports)

handlers = [ ]
for p in validports:
    handlers.append(PortHandler(p))

# have we been asked to run a calibration process?
# wait for all boards to go commsgood.
# command stats collection mode.
# loop watching all of the fresh stats coming in
# collect baseline for background.
# instruct user to proceed, continue to capture stats.

CADENCE = 60

def generatebaseline(secs=10.0):
    print("setting up")
    stats = { }
    def collector(board, t, vs):
        d = stats[board]
        for i, v in enumerate(vs):
            d[i].append((t,v))
    def makeempty():
        v = [ ]
        for x in range(22):
            v.append([])
        return v
    for h in handlers:
        while not h.commsgood:
            time.sleep(0.1)
        stats[h.board] = makeempty()
        h.statscollector = functools.partial(collector, h.board)
        h.sendmsg(0x0B, struct.pack("H", round(16000.0/CADENCE)))
    print("collecting stats for",secs,"seconds")
    time.sleep(secs)
    for h in handlers:
        h.sendmsg(0x0B, struct.pack("H", 0))
        h.statscollector = None
    baseline = { }
    for b in stats.keys():
        bb = baseline[b] = [ ]
        d = stats[b]
        for chan in range(22):
            cd = d[chan]
            #print(cd)
            mins = [ v[1]['min'] for v in cd ]
            maxs = [ v[1]['max'] for v in cd ]
            means = [ v[1]['mean'] for v in cd ]
            try:
                bb.append({'min': min(mins), 'max': max(maxs),
                           'mean': np.mean(means),
                           'std': np.std(means)})
                print(f"{b} {chan:2d} {min(mins):5d}   {round(np.mean(means)):5d} {round(np.std(means)):5d}   {max(maxs):5d}")
            except:
                pass
    return baseline

#baseline = generatebaseline(3)

def boardmeantime(paircounts):
    # gets dictionary of (sensor,sensor)->[times]
    times = 0.0
    count = 0
    for ts in paircounts.values():
        for t in ts:
            times += t
            count += 1
    return times/count

def computesensorpairing(paircounts):
    # gets dictionary of (sensor,sensor)->[times]
    # want to produce a list of lists
    # [ [1,2,3,...22],
    #   [22,20,18,17,3,...]
    #   ...
    # ]
    # each sublist corresponds to a sensor, and ranks
    # their preference for being paired with every
    # other sensor. they don't have a preference for
    # themselves.

    # build the easy-to-use hash of co-appearance counts
    counts = { }
    for (a,b) in paircounts.keys():
        counts[(a,b)] = 1 + counts.get((a,b),0)
        counts[(b,a)] = 1 + counts.get((b,a),0)
    
    # find the time of every appearance
    appearances = { }
    for (a,b) in paircounts.keys():
        v = appearances.setdefault(a, [ ]).extend(paircounts[(a,b)])
        v = appearances.setdefault(b, [ ]).extend(paircounts[(a,b)])
    # produce the mean time at which each sensor appeared
    meanappearance = { }
    for k in appearances.keys():
        meanappearance[k] = sum(appearances[k]) / len(appearances[k])

    output = []
    for i in range(22):
        output.append(list(range(22)))
        output[-1].remove(i)

        def comparison(a,b):
            ma_a = meanappearance.get(a, 0)
            ma_b = meanappearance.get(b, 0)
            ma_i = meanappearance.get(i, 0)
            # consider (i,a) and (i,b) and decide which is better
            if counts.get((i,a), 0) > counts.get((i,b), 0):
                return -1
            elif counts.get((i,a), 0) < counts.get((i,b), 0):
                return 1
            elif abs(ma_a - ma_i) < abs(ma_b - ma_i):
                return -1
            elif abs(ma_a - ma_i) < abs(ma_b - ma_i):
                return 1
            else:
                return 0
        output[-1].sort(key=functools.cmp_to_key(comparison))
    
    return output

def activitymonitor(baseline):
    paircounts = { }
    
    def activitycollector(board, t, vs):
        bd = baseline[board]
        outcome = [0]*22
        for i, (base, m) in enumerate(zip(bd, vs)):
            if m['min'] > base['max']:
                deviation = (m['min'] - base['max']) / base['std']
                outcome[i] = deviation
        idxs = np.argsort(outcome)
        active = [ ]
        crosstalk = 0
        if outcome[idxs[-1]] > 0:
            active.append(idxs[-1])
            if outcome[idxs[-2]] > 0:
                active.append(idxs[-2])
                for i in idxs[0:-2]:
                    if outcome[i] > 0:
                        crosstalk += 1
        if active:
            if len(active)==2:
                pair = tuple(sorted(active))
                paircounts.setdefault(board, { }).setdefault(pair, [ ]).append(t)
            #print("activity", board, active, "crosstalk", crosstalk)

    for h in handlers:
        h.statscollector = functools.partial(activitycollector, h.board)
        h.sendmsg(0x0B, struct.pack("H", round(16000.0/CADENCE)))

    print("press all keys in order, then hit enter.")
    input()

    boards = list(paircounts.keys())
    boards.sort(key=lambda b: boardmeantime(paircounts[b]))
    for board in boards:
        print(board, boardmeantime(paircounts[board]))
        rankings = computesensorpairing(paircounts[board])
        open(board+".json", "w").write(json.dumps(rankings))

    for h in handlers:
        h.statscollector = functools.partial(activitycollector, h.board)
        h.sendmsg(0x0B, struct.pack("H", 0))

#activitymonitor(baseline)

# infinite loop while the automatic processing runs.
while True:
    time.sleep(60)
