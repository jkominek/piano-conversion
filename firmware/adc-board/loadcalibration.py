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

from util import PortHandler, handlers, connectboards

CADENCE = 60

connectboards()

configuration = json.load(open("pianoconf.json"))

setting_count = 0
acks = 0
nacks = 0

def cb(msgid, result):
    global acks
    global nacks
    if result:
        acks += 1
    else:
        nacks += 1 # :(

for h in handlers:
    boardconf = configuration.get('boards', { }).get(h.board, { })
    for channel, settings in boardconf.items():
        channel = int(channel)
        setting_count += 1
        id = h.sendmsg(0x09,
                       struct.pack("<BBI", channel, 0,
                                   int(settings.get('hammer', False))),
                       cb)
        #print('type', h.board, channel, settings.get('hammer', False), id)

        if 'minpos' in settings:
            setting_count += 1
            id = h.sendmsg(0x09,
                           struct.pack("<BBf", channel, 1,
                                       settings['minpos']),
                           cb)
            #print('minpos', h.board, channel, id)
        if 'offpos' in settings:
            setting_count += 1
            id = h.sendmsg(0x09,
                           struct.pack("<BBf", channel, 2,
                                       settings['offpos']),
                           cb)
            #print('offpos', h.board, channel, settings['offpos'], id)

    # have to set this after the channel types are all set,
    # so the firmware can check that we're doing something
    # reasonable.
    for channel, settings in boardconf.items():
        channel = int(channel)
        if 'hammerchan' in settings:
            setting_count += 1
            id = h.sendmsg(0x09,
                           struct.pack("<BBI", channel, 3,
                                       settings['hammerchan']),
                           cb)
            #print('hammerchan', h.board, channel, id)

while acks + nacks < setting_count:
    time.sleep(0.5)
    print(acks, nacks, setting_count)
    for h in handlers:
        print(h.callbacks)
    print()
if acks == setting_count:
    print("calibration loaded")
else:
    print(f"calibration failed, {nacks} nacks")
