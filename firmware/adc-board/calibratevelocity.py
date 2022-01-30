#!/usr/bin/env python3

import serial
import serial.tools.list_ports
import struct
import time
import threading
import atexit
from math import log2, log10
import rtmidi
import sys
import functools
import numpy as np
import json

from util import graphicsleep, PortHandler, handlers, connectboards, notename2midi, notesort

connectboards()

configuration = json.load(open("pianoconf.json"))
keys = configuration['keys']

quicklookup = { }
for keyname, settings in configuration['keys'].items():
    board, hammer, damper = settings
    quicklookup[(board, hammer)] = (True, notename2midi(keyname), keyname)
    quicklookup[(board, damper)] = (False, notename2midi(keyname), keyname)

velocities = { }

ls = [ l.split()[:5] for l in open("vr.txt").readlines() ]
ls = { l[0]: [[float(l[3]), float(l[4])],
              [float(l[1]), float(l[2])]] for l in ls }
velocities = ls

def process_velocity(handler, now, channel, velocity):
    board = handler.board
    noteon, midinote, keyname = quicklookup[(board, channel)]

    # not sure why we're getting these
    if noteon and velocity <= 50.0:
        return
    if (not noteon) and velocity>=-10.0:
        return
    if np.isinf(velocity):
        return

    velocities.setdefault(keyname, [ [], [] ])[noteon].append(velocity)
    
for h in handlers:
    h.velocityhandler = process_velocity

h   = "{:>4s}                On            Off"
row = "{:>4s} {:8.1f} {:8.1f} {:8.1f} {:8.1f} {}"
while True:
    time.sleep(1)

    print(h.format(""))
    stats = { }
    for keyname in notesort(velocities.keys()):
        ons = velocities[keyname][True]
        offs = velocities[keyname][False]
        if (not ons) or (not offs):
            continue
        s = stats[keyname] = { 'onmin': min(ons),
                           'onmax': max(ons),
                           'offmin': min(offs),
                           'offmax': max(offs),
                           }
        s['ondr'] = s['onmax'] / s['onmin']
        s['offdr'] = s['offmin'] / s['offmax']
    for keyname in notesort(stats.keys()):
        s = stats[keyname]
        msg = ""
        if s['ondr'] < 35.0:
            msg = "need on DR"
        elif s['offdr'] < 8.0:
            msg = 'need off DR'
        print(row.format(keyname,
                         s['onmin'], s['onmax'],
                         s['offmin'], s['offmax'],
                         msg))
    print()
