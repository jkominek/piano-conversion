#!/usr/bin/env python3

import json
from util import notesort

conf = json.load(open("pianoconf.json"))
boards = conf['boards']

header = "{:>4} | Hammer | Damper"
row    = "{:>4} |  {:5d} |  {:5d}"
print(header.format(""))
for k in notesort(conf['keys'].keys()):
    board, hammer, damper = conf['keys'][k]
    print(row.format(k,
                     round(boards[board][str(hammer)]['minpos']),
                     round(boards[board][str(damper)]['offpos'])))

