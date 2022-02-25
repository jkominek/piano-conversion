#!/usr/bin/env python3

# Reads and exported kicad netlist and prints out the name of the net
# attached to all the pins of a part. This makes it easier to compare
# what you've attached where, to an external source. Like CubeMX.
# Reading CubeMX files would be the next step for this script.

import sexpdata
from sexpdata import Symbol

import sys

data = sexpdata.load(open(sys.argv[1]))

for v in data:
    if type(v)==list:
        if v[0].value() == 'nets':
            rawnets = v[1:]
            break

def convertnode(n):
    return { v[0].value(): v[1] for v in n }

nets = { }
for net in rawnets:
    props = { }
    for v in net[1:]:
        name = v[0].value()
        if name == 'code':
            props[name] = v[1]
        elif name == 'name':
            props[name] = v[1]
        elif name == 'node':
            props.setdefault('nodes',[]).append(convertnode(v[1:]))
        else:
            print(v)
    nets[props['name']] = props

def process(part):
    result = { }
    for net in nets.values():
        for node in net['nodes']:
            if node['ref'] == part:
                pin = int(node['pin'])
                result[pin] = { 'net': net['name'],
                                'pinfunction': node['pinfunction'],
                                'pin': pin,
                                'pintype': node['pintype'] }
    return result

result = process("U1" if len(sys.argv)<=2 else sys.argv[2])
for pin in sorted(result.keys()):
    info = result[pin]
    if info['net'].startswith("unconnected-"):
        info['net'] = ""
    print("{net:>20s} {pin:3d} {pinfunction:8s}".format(**info))

