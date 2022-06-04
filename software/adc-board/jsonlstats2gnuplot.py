#!/usr/bin/env python3

import json
import sys

data = [ json.loads(l) for l in open(sys.argv[1]) ]

files = [ open("%02i" % (i,), "w") for i in range(22) ]

for record in data:
    t, stats = record
    for c in range(22):
        files[c].write("{min} {mean} {max}\n".format(**stats[c]))

[ f.close() for f in files ]
