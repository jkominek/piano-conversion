# About

This represents work on hardware/software for converting acoustic
pianos in to full featured MIDI controllers. The idea is to take
untunable pianos, or pianos whose restoration cost would wildly
exceed their value, and make something useful out of them.

Later work may expand that scope.

It was inspired by Evgeni Kumanov (CyberGene)'s "Cybrid" controller:
https://github.com/ekumanov/cybrid/

# Warning!

The hardware designs are unfinished. Some have not been fabricated.
Most have barely been tested, and there is no published firmware for
any of them.

See the [Status page](https://github.com/jkominek/piano-conversion/wiki/Status) for where things stand.

# A Very Brief Overview

* adc-board
  * An STM32H743 reading 22 ADC channels and sending the results over RS485.
* led-power
  * Provides power to 8 strings of 22 CNY70 IR LEDs. Needs +48V and +15V. optional I2C control.
* led-test-bar
  * For development only: little bar that holds a bunch of LEDs for testing the LED power board.
* link-adapter
  * For development only: allows a PC to connect to an ADC or main board.
* main-board
  * 8 ADC boards can plug in, their processed signals are managed
    by another STM32H743 and converted to MIDI in its various forms.
    Intended mainly for USB use, also has ethernet designed in.
    For all of the optional accessories, there are three I2C ports in
    the form of Qwiic connectors, for plugging in MIDI & pedal boards,
    and whatever other craziness you can conjure up.
* midi-board
  * An I2C to MIDI DIN board (via a UART). Gets the extra UART, optos
    and DIN connectors off the main board so they're not taking up
    space if you don't need them.
* pedal-board
  * 4 1/4" TRS jacks for common MIDI keyboard pedals. 8 channel ADC for reading the values; 4 used for the jacks, the others on headers if you want them.
* sensorboard-tester
  * For development/manufacture only, for testing/measuring sensorboards/CNY70s.
* sensorboards
  * Directory with a variety of board configurations for holding CNY70 sensors.

To put a sensor on every hammer and key of an 88 key piano, you would need:

* 176 sensor boards
* 8 ADC boards
* 1 main board
* 1 LED power board

The MIDI board and pedal board are optional.

# More

See [DESIGN.md](https://github.com/jkominek/piano-conversion/blob/master/DESIGN.md) for system design information.
