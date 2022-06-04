#!/usr/bin/env python3

import struct
import time
import threading
import atexit
from math import log2, log10
import sys
import functools
import numpy as np
import json

from util import graphicsleep, PortHandler, handlers, connectall, vel2midi, notename2midi

OCTAVESHIFT = 3

midiout = connectall()

configuration = json.load(open("pianoconf.json"))

ls = [ l.split()[:5] for l in open("vr.txt").readlines() ]
ls = { notename2midi(l[0]):
       [[float(l[3]), float(l[4])],
        [float(l[1]), float(l[2])]] for l in ls }
velocities = ls

quicklookup = { }
for keyname, settings in configuration['keys'].items():
    board, hammer, damper = settings
    quicklookup[(board, hammer)] = (True, notename2midi(keyname))
    quicklookup[(board, damper)] = (False, notename2midi(keyname))

def process_velocity(handler, now, channel, velocity):
    board = handler.board

    noteon, midinote = quicklookup[(board, channel)]
    midivel, cc88vel = \
        vel2midi(velocity,
                 noteon=noteon,
                 minvel=velocities[midinote][noteon][0],
                 maxvel=velocities[midinote][noteon][1])
    if midivel <= 0:
        return
    print(round(now, 3),
          "ON " if noteon else "OFF",
          midinote, midivel, cc88vel)
    midiout.send_message([0xB0, 88, cc88vel])
    midiout.send_message([0x90 if noteon else 0x80,
                          OCTAVESHIFT*12+midinote, midivel])
    
for h in handlers:
    h.velocityhandler = process_velocity

while True:
    time.sleep(1)
