# About

This represents work on hardware/software for converting acoustic
pianos in to full featured MIDI controllers. The idea is to take
untunable pianos, or pianos whose restoration cost would wildly
exceed their value, and make something useful out of them.

See [the FAQ](https://github.com/jkominek/piano-conversion/wiki/FAQ)
to have common / likely questions answered.

Later work may expand that scope.

It was inspired by Evgeni Kumanov (CyberGene)'s "Cybrid" controller:
https://github.com/ekumanov/cybrid/

# Warning!

The hardware designs are unfinished. Some have not been fabricated.
Most have barely been tested, and there is not firmware to run a
completed system.

See the [Status page](https://github.com/jkominek/piano-conversion/wiki/Status) for where things stand.

# A Very Brief Overview

* hardware
  * Where most of the work has taken place. KiCad schematics and board
    layouts for the system.
* cubemx
  * STCubeMX files which correspond to the boards, the idea being that
    if you want to write your own firmware, you can start from here,
    and know that your pin assignments and such are all sane.
* firmware
  * Board firmware, some other stuff
* analyses
  * Data collected, and code/notes for processing it.
* mechanical
  * OpenSCAD files for physical parts which have been useful in
    construction of my prototype.

# More

See [DESIGN.md](https://github.com/jkominek/piano-conversion/blob/master/DESIGN.md) for system design information.
