#!/usr/bin/env python3

import serial
import struct
import time
import threading

prevtime = 0
timeinc = 0

prevclock = 0
prevnow = 0.0

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
    elif msgtype == 0x06:
        print("status", msg)
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
        print("sensor trip", msg)
    elif msgtype == 0x0A:
        print("raw sensor", msg)

    elif msgtype == 0x12:
        print(time.time(), "note on", struct.unpack("Bf", msg))
    elif msgtype == 0x13: # strike duration
        print(time.time(), "note off", struct.unpack("Bf", msg))
    elif msgtype == 0x14: # damper up
        print(time.time(), "pre-note on", struct.unpack("Bf", msg))
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

MSGID = 0
def sendmsg(msgtype, body=b''):
    global MSGID
    msg = struct.pack("BH", msgtype, MSGID)
    MSGID += 1
    msg += body
    parity = 0
    for v in msg[:-1]:
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

port = serial.Serial(port="/dev/ttyUSB0", baudrate=3000000, timeout=0.000001)
buf = b''
sendmsg(0xff, b'')
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
