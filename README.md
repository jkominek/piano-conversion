# About

This represents work on hardware/software for converting acoustic
pianos in to full featured MIDI controllers. The idea is to take
untunable pianos, or pianos whose restoration cost would wildly
exceed their value, and make something useful out of them.

Later work may expand that scope.

It was inspired by Evgeni Kumanov (CyberGene)'s "Cybrid" controller:
https://github.com/ekumanov/cybrid/

# Warning

Not only are the hardware designs unfinished, they have not been
fabricated, tested, or had firmware written for them.

The list of what needs to be done looks like:

1. Finish rough draft of the ADC board design.
1. Write firmware against the STM32H743 Nucleo board to confirm that
   the desired features can cooperate with enough CPU power to spare.
1. Design the trivial sensor PCB.
1. Design an initial version of the LED power board.
1. Have a batch of all of those fabricated.
1. Design main board.
1. Receive boards, assemble an LED power board and a set of sensor boards.
1. Progressively bring up the ADC board
  1. power stages
  1. sensing & analog amplification
  1. RS485 transceiver
  1. microcontroller
1. Anything in there could require a board respin if the problem is bad
   enough to prevent the first boards from being hacked into a working state.
1. Write & test initial firmware for the main board
1. Order main boards
1. Finish any ADC board work.
1. Revise LED power boards for more features.
1. Design any other smaller boards necessary for a finished product
   (test equipment for sensor boards, pedal sensor boards, damper motor
   control).
1. Receive main boards, perform bring up
  1. Power
  1. SPI UART, optocoupling for MIDI DIN
  1. RS485 transceivers
  1. USB
  1. Control of minor peripherals
1. Integrate main board and ADC boards

# More

See DESIGN.md for system design information.
