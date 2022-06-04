#!/usr/bin/env python3

import serial
import serial.tools.list_ports
import struct
import time
import threading
import atexit
from math import log10
import sys
import functools
import numpy as np
import json

from util import connectboards, handlers

connectboards()

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
            bb.append({'min': min(mins), 'max': max(maxs),
                       'mean': np.mean(means),
                       'std': np.std(means)})
            print(f"{b} {chan:2d} {min(mins):5d}   {round(np.mean(means)):5d} {round(np.std(means)):5d}   {max(maxs):5d}")
    return baseline

baseline = generatebaseline(5)

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
            print("activity", board, active, "crosstalk", crosstalk)

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
        print(f"wrote json for {board}")

    for h in handlers:
        h.statscollector = functools.partial(activitycollector, h.board)
        h.sendmsg(0x0B, struct.pack("H", 0))

activitymonitor(baseline)

# infinite loop while the automatic processing runs.
while True:
    time.sleep(60)
