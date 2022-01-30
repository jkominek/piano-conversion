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

from util import graphicsleep, PortHandler, handlers, connectboards, notesort

# command stats collection mode.
# loop watching all of the fresh stats coming in
# collect baseline for background.
# instruct user to proceed, continue to capture stats.

CADENCE = 60

def gatherbaseline(board):
    for h in handlers:
        if h.board==board:
            break
        pass
    else:
        raise Exception(f"no such board {board}")

    basedata = { }
    for c in range(22):
        basedata[c] = [ ]
    def basecollector(t, stats):
        for c in range(22):
            basedata[c].append(stats[c])

    print(f"Don't press anything. Gathering data from board {board}.")
    # stats collection
    h.statscollector = basecollector
    h.sendmsg(0x0B, struct.pack("H", round(16000/CADENCE)))
    graphicsleep(15)
    h.statscollector = None
    h.sendmsg(0x0B, struct.pack("H", 0))

    return basedata

def calibratekey(board, name, hammer, damper, baseline):
    for h in handlers:
        if h.board==board:
            break
        pass
    else:
        raise Exception(f"no such board {board}")

    hbasedata = baseline[hammer]
    dbasedata = baseline[damper]

    hbasemeans = [ x['mean'] for x in hbasedata ]
    dbasemeans = [ x['mean'] for x in dbasedata ]
    hbasemm = np.mean(hbasemeans)
    dbasemm = np.mean(dbasemeans)
    hbasestd = np.std(hbasemeans)
    dbasestd = np.std(dbasemeans)

    hpressdata = [ ]
    dpressdata = [ ]
    print(f"Press and hold {name} until instructed")
    h.sendmsg(0x0B, struct.pack("H", round(16000/CADENCE)))
    pressed = [False]
    def pressdetector(t, stats):
        hpressdata.append(stats[hammer]['max'])
        dpressdata.append(stats[damper]['max'])
        if (stats[hammer]['mean'] >= hbasemm + 6.0 * hbasestd) and \
           (stats[damper]['mean'] >= dbasemm + 6.0 * dbasestd):
            pressed[0] = True
    h.statscollector = pressdetector
    while not pressed[0]:
        time.sleep(0.1)
    time.sleep(0.2)
    h.statscollector = None
    # make sure we've finished bouncing or whatever
    time.sleep(0.2)

    hpressmax = max(hpressdata)
    dpressmax = max(dpressdata)

    print("Collecting data. Keep holding.")
    hholddata = [ ]
    dholddata = [ ]
    def holdcollector(t, stats):
        hholddata.append(stats[hammer])
        dholddata.append(stats[damper])
    h.statscollector = holdcollector
    graphicsleep(5)

    hholdmeans = [ x['mean'] for x in hholddata ]
    dholdmeans = [ x['mean'] for x in dholddata ]
    hholdmm = np.mean(hholdmeans)
    dholdmm = np.mean(dholdmeans)
    hholdstd = np.std(hholdmeans)
    dholdstd = np.std(dholdmeans)

    still_held = [True]
    def releasedetector(t, stats):
        # when we've returned close enough to our original values
        if (stats[hammer]['mean'] <= hbasemm + 4.0 * hbasestd) and \
           (stats[damper]['mean'] <= dbasemm + 4.0 * dbasestd):
            still_held[0] = False
    h.statscollector = releasedetector
    print("Release key")
    while still_held[0]:
        time.sleep(0.1)
    h.statscollector = None
    h.sendmsg(0x0B, struct.pack("H", 0))
    print("Done.")

    print(" {:>5} |  Base |  Peak |  Held".format(name))
    print("Hammer | {:5d} | {:5d} | {:5d}".format(round(hbasemm),
                                              round(hpressmax),
                                              round(hholdmm)))
    print("Damper | {:5d} | {:5d} | {:5d}".format(round(dbasemm),
                                              round(dpressmax),
                                              round(dholdmm)))
    # hammer min strike pos is 80% of the way from hold to max, log2
    hminpos = 2.0**((log2(hpressmax) - log2(hholdmm)) * 0.8 + log2(hholdmm))
    # damper off pos is halfway between hold and base, log2
    doffpos = 2.0**((log2(dholdmm) + log2(dbasemm)) / 2.0)
    print("Hammer min pos", hminpos)
    print("Damper off pos", doffpos)
    return {'hammermin': hminpos,
            'damperoff': doffpos}

def calibrateandsavekey(board, name, hammer, damper, baselines):
    fname = "pianoconf.json"
    outcome = calibratekey(board, name, hammer, damper, baselines)
    conf = { 'boards': { } }
    try:
        conf = json.load(open(fname))
    except:
        pass
    if 'boards' not in conf:
        conf['boards'] = { }
    if board not in conf['boards']:
        conf['boards'][board] = { }
    conf['boards'][board][hammer] = { 'hammer': True, 'minpos': outcome['hammermin'] }
    conf['boards'][board][damper] = { 'damper': True, 'offpos': outcome['damperoff'], 'hammerchan': hammer }
    json.dump(conf, open(fname, "w"))

connectboards()

configuration = json.load(open("pianoconf.json"))
keys = configuration['keys']
baselines = { }
for board in configuration['boards'].keys():
    baselines[board] = gatherbaseline(board)

for note in notesort(keys.keys()):
    board, hammer, damper = keys[note]
    calibrateandsavekey(board, note, hammer, damper, baselines[board])
