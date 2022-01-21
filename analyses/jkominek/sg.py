#!/usr/bin/env python3

import scipy.signal
import sys
import numpy
from math import log

data = [ float(l.split()[1]) for l in open(sys.argv[1]).readlines() if not l.startswith("#") ]
open(f"data", "w").write("\n".join(map(str, data)))
for p in (13,): #(11,13,15,17,19,21,23):
    smooth = scipy.signal.savgol_filter(data, p, 2, delta=1.0/16000)
    deriv  = scipy.signal.savgol_filter(data, p, 2, deriv=1, delta=1.0/16000)

    peaks = [ ]
    notesent = 0
    notesentvel = 0
    for i in range(0, len(deriv)-1):
        if notesent and (deriv[i]<-notesentvel or (i-notesent)>500):
            notesent = 0
        if (not notesent) and data[i] > 20000 and deriv[i] > 0:
            if deriv[i] > deriv[i-1] and deriv[i] > deriv[i+1]:
                peaks.append(i)
                print(i, log(deriv[i]))
                notesent = i
                notesentvel = deriv[i]
    
    open(f"strikes.{p}smooth", "w").write("\n".join(map(str, smooth)))
    open(f"strikes.{p}deriv", "w").write("\n".join(map(str, deriv)))
    open(f"peaks.{p}deriv", "w").write("\n".join([ f"{x} 100" for x in peaks ]))

    coeffs = numpy.zeros(p)
    coeffs[0] = -1
    coeffs[-1] = 1
    #coeffs = scipy.signal.savgol_coeffs(p, 3, deriv=1, use='dot')

    f = open(f"strikes.{p}boxcar", "w")
    for i in range(0, len(data)-len(coeffs)):
        v = coeffs.dot(data[i:i+len(coeffs)])
        f.write(f"{v}\n")
    f.close()
