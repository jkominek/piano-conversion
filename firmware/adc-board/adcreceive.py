#!/usr/bin/env python3

import serial
import struct
import time
import threading
import atexit
from math import log10
import rtmidi
import sys

midiout = rtmidi.MidiOut()
if len(midiout.get_ports())>1:
    midiout.open_port(1)
else:
    midiout.open_port(0)

prevtime = 0
timeinc = 0

prevclock = 0
prevnow = 0.0

channel2midi = [23,27,25,25,26,24,24,23,22,21,22,21,27,26,28,29,30,31,28,29,30,31]
hammers = [True,True,True,False,
           True,False,True,False,
           False,True,True,False,
           False,False,False,False,
           False,False,True,True,
           True,True]
channel2midi = [ x + (60-24) for x in channel2midi ]
for midinote in set(channel2midi):
    midiout.send_message([0x80, midinote, 64])
def chanvel2midi(velocity, channel, noteon=True):
    midinote = channel2midi[channel]
    if noteon==False and velocity>0.0:
        print(f"prelift damper {midinote} {velocity}")
        pass
        return (midinote,0,0)
    if noteon:
        minvel = 7000.0
        maxvel = 100000.0
    else:
        minvel = -0
        maxvel = -1000
    mps = 7.5 * (velocity - minvel) / (maxvel - minvel)
    minmidivel = 1 if noteon else 32
    if mps <= 0.0:
        midivel = minmidivel
        cc88vel = 0
    else:
        vel = 57.96 + 71.3*log10(mps)
        midivel = round(vel)
        if midivel < minmidivel:
            print("had low velocity", velocity, mps)
            midivel = minmidivel
            cc88vel = 0
        elif midivel > 127.0:
            midivel = 127
            cc88vel = 0
        else:
            cc88vel = round(127 * (vel % 1))
    return (midinote, midivel, cc88vel)

def handle_message(msg):
    global prevtime
    global timeinc
    global prevclock
    global prevnow
    now = time.time()
    calcparity = 0
    for v in msg[:-1]:
        calcparity ^= v
    parity = msg[-1]

    if len(msg) < 4:
        print("runt frame")
        return
    msgtype = msg[0]
    msgid = struct.unpack("H", msg[1:3])[0]
    msg = msg[3:-1]

    if msgtype == 0x00:
        print("received ACK for", msgid)
    elif msgtype == 0x01:
        print("received NACK for", msgid)
    elif msgtype == 0x02:
        print("we've been commanded to reboot. haha.")
    elif msgtype == 0x03:
        print("boot message", msg)
        sendmsg(0x05)
    elif msgtype == 0x06:
        uniqueid = msg[:12]
        devid, revid, flashsize = struct.unpack("III", msg[12:])
        devid = {
          0x450: "H742/743/753/750"
        }.get(devid, "UnknownDev!!")
        revid = {
          0x1001: "Z",
          0x1003: "Y",
          0x2001: "X",
          0x2003: "V"
        }.get(revid, "UnknownRev")
        print(f"status {uniqueid.hex()} {devid} Rev{revid} {flashsize}kB")
		# based on the received uniqueid, consult our calibration tables,
		# and send the board new configuration.
    elif msgtype == 0x07:
        clock = struct.unpack("i", msg)[0]
        if prevclock > 0:
            ticks = clock - prevclock
            elapsed = now - prevnow
            print("clock", clock, ",", ticks/elapsed, "ticks/sec")
        else:
            print("clock", clock)
        prevclock = clock
        prevnow = now
    elif msgtype == 0x08:
        _, channel = struct.unpack("fB", msg)
        noteon = hammers[channel]
        midinote, midivel, cc88vel = chanvel2midi(*struct.unpack("fB", msg), noteon=noteon)
        if midivel <= 0:
            return
        print(round(time.time(), 3), "ON " if noteon else "OFF", midinote, midivel, cc88vel)
        midiout.send_message([0xB0, 88, cc88vel])
        midiout.send_message([0x90 if noteon else 0x80, midinote, midivel])
    elif msgtype == 0x0A:
        cnt = (len(msg) // 4)
        print(*struct.unpack(("".join(["f"]*cnt)), msg))
    #elif msgtype == 0x12:
    #    midinote, midivel, cc88vel = chanvel2midi(*struct.unpack("fB", msg[:5]))
    #    print(time.time(), "ON ", midinote, midivel, cc88vel)
    #    midiout.send_message([0xB0, 88, cc88vel])
    #    midiout.send_message([0x90, midinote, midivel])
    #elif msgtype == 0x13:
    #    midinote, midivel, cc88vel = chanvel2midi(*struct.unpack("fB", msg[:5]), noteon=False)
    #    print(time.time(), "OFF", midinote, midivel, cc88vel)
    #    midiout.send_message([0xB0, 88, cc88vel])
    #    midiout.send_message([0x80, midinote, midivel])
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
        print(time.time(), "stats", stats)
    elif msgtype == 0x14: # damper up
        print(time.time(), "pre-note on", struct.unpack("fB", msg[:5]))
    elif msgtype == 0x20:
        t = struct.unpack("I", msg[:4])[0]
        adcbytes = msg[4:]
        cnt = len(adcbytes) // 2
        values = struct.unpack("{}H".format(cnt), adcbytes[:cnt*2])
        #print("ADC", msgid, time, values)
        if t < prevtime:
            timeinc += 1
        prevtime = t
        print((t + timeinc * (2**32)) / 15000.0, *values)
    elif msgtype == 0x21:
        if len(msg)==6:
            t, v = struct.unpack("IH", msg)
            #b = "{0:b}".format(v)
            #b = ("0" * (16 - len(b))) + b
            if t < prevtime:
                timeinc += 1
            prevtime = t
            print((t + timeinc * (2**32)) / 480000000.0, v)
    elif msgtype == 255:
        print("error")

MSGID = 666
def sendmsg(msgtype, body=b''):
    global MSGID
    msg = struct.pack("B", msgtype) + struct.pack("H", MSGID)
    MSGID += 1
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
    port.write(msg)

portname = "/dev/ttyUSB0"
if len(sys.argv)>1:
    portname = sys.argv[1]
port = serial.Serial(port=portname, baudrate=3000000, timeout=0.000001)
buf = b''
sendmsg(0x05)
#sendmsg(0x0B, struct.pack("H", 8000))
atexit.register(lambda: sendmsg(0x0B, struct.pack("H", 0)))

while True:
    try:
        buf += port.read(64)
    except serial.SerialTimeoutException:
        pass
    if len(buf)>4096:
        print("buffer overflow")
        break
    # should try to find more than one message per read, really
    while True:
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
                                print("bad frame")
                                break
                        else:
                            msg.append(v)
                    # handle it
                    handle_message(bytes(msg))
                # chop off that first message
                buf = buf[end:]
            else:
                break
        else:
            break
