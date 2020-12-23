# Requirements / Goals

* Semiautomated calibration. Ideally once the hardware is correctly
  installed, it can be calibrated by playing all of the notes in
  order. It is expected this will require an attached PC running
  specialized software.
* While none of this is intended to go into a tunable piano, or even
  one that still has strings in it, it should not require huge
  modification. I'd like to ensure that if you converted a working
  condition piano, it could be more or less returned to normal
  condition by removing these parts and restringing it.
* It must be possible to make this work with just the extracted action
  of a grand piano. Mechanics are largely outside of the scope of what
  this project intends to worry about, but it would be ideal if a MIDI
  controller housing could be made for a piano's action, such that the
  action could be transferred between controller housing and piano
  with ease.
* Support for multiple common 1/4" TRS sustain pedals, or some other
  sensors that would be suitable for measuring the state of pedals
  still in their original piano.

### "Stage 1" Goals

* To require fewer sensors and boards be fabricated, step one is to
  attempt to get note on and note off velocities from the key sticks
  themselves, not the hammers.
* Pedal On/Off from a standard TRS pedal
  
### "Stage 2" Goals

* Finish fabrication of all PCBs, and take note on measurements directly
  from hammer strikes.
* Continuous Pedal measurements from a TRS pedal

### "Stage N" Goals

* Integration with a Raspberry Pi 4 Compute Module capable of running
  Pianoteq so that a standalone piano can be produced.
* Design/integration of DACs and audio amplifiers appropriate for driving
  exciters affixed to the soundboard of a string-less piano.

# System Design

The hardware/software system is based around the Vishay [CNY70](https://github.com/jkominek/piano-conversion/wiki/CNY70) optical
reflectance sensor. It consists of an infrared LED, and a phototransistor
sensitive to the LED, in a convenient package. It can measure distances
in the (roughly!) 0-10mm range.

In the full version of this conversion, 88 of those sensors would be
placed under the keys to detect note-off time & velocity, and 88 of them
placed at the end of the hammers' travel, so as to measure note-on timing
and velocity. This would prevent the "loud note" problem that troubles
some hybrid pianos. Additionally, information from the key sensors may be
used to signal to the synthesizer that the damper has been raised
(permitting resonsnace) before the hammer strikes. Sample based synths
could also use that information to preload samples.

(During the initial design of this I completely forgot that pianos usually
don't dampen the highest strings. If you want to leave the top 22 notes
undampened, you could eliminate one of the ADC boards. Or you could convert
a >88 key piano.)

### ADC Board

That's 176 sensors in a piano. 22 are monitored by each of these
boards.  The current through each one is converted to a voltage by a
sense resistor on this board, buffered by an op amp, and monitored by
an ADC channel of an
[STM32H743](https://github.com/jkominek/piano-conversion/wiki/STM32H7). Hopefully
the STM32 will be able to process all 22 signals at between 10kHz and
20kHz. I expect to apply some digital low pass filtering.

Once the processor has determined that a note on, or off, is occurring
and measured the velocity, it is sent out over a RS485 serial
link. Use of RS485 should allow us to spread these boards out through
the structure of the controller, while maintaining relatively high
speed serial communications. The RS485 link takes place over two
twisted pairs of an ethernet cable. (NOTE we are NOT using ethernet,
just taking advantage of the large supply of high quality premade
cabling and jacks.) Having two twisted pairs permits full duplex
communication.

The same cable also carries ~5V power. Each board includes a single
switching regulator to bring the 5V down to 3.3V. The 3.3V analog
power plane is produced by a linear regulator, to reduce noise on
the rail.

The board can be populated with optional components to make it into
a USB device. This isn't expected to be necessary, but may be more
convenient during the sensor calibration process. Two additional UARTs
are brought out to 0.100" header pins. Just in case.

Programming is performed over the JTAG header, intended for use with the
ST-Link/v2 programmer.

There is space for four LEDs, and a number of otherwise-unused pins are
brought out to sizable test points.

### Sensor board

Each sensor board will consist of nothing but a CNY70, and a 4 pin 0.100"
header. Two pins will connect to the phototransistor, and come back to
the ADC board via twisted pair. The other two correspond to the LED.
The LEDs should be chained together in rather long strings. Likely 22
sensors per string.

### LED power board

The LED power board is designed (as of rev0) to take two off the shelf
power supplies, one 48V and the other 15V, and provide a constant
~20mA to 8 different strings of LEDs. Each string is intended to have 22
CNY70 LEDs on it. The 48V powers the strings, and the 15V supplies the
various analog control electronics. The design as it stands should produce
constant currents which are extremely stable from time scales of a year,
down to 100kHz. The deterioration of the LEDs themselves is expected to
be the main source of change in the optical output.

Rev1 of the board adds an IO expander which can monitor the LED strings
individually to detect errors, and also turn all the LEDs off by shutting
down the precision voltage reference.

### Main board

Intended to use a STM32H743 like the ADC board.

8 RS485 serial links, along with 5V distribution to the ADC boards.
Per-board high-side MOSFET control of power, so that boards
can be brought up in sequence once power has stabilized. Also allows
them to be power cycled in event of error, or to reflash them.

USB B device link, as the main/intended link to the host computer.

Three I2C controllers are brought out to three separate Qwiic headers,
so that a variety of common I/O devices can be attached without requiring
special development.

10/100Mbps ethernet is optional, but planned & designed in.

Firmware is expected to process the fairly raw velocity messages
from the ADC boards, appyling any calibration, and sending them out
over any of the many MIDI links available to it (serial, USB, ethernet,
maybe even bluetooth).

#### Pedal board

A simple 8 channel I2C ADC on a board with Qwiic headers, and 4 1/4"
TRS jacks for standard sustain pedals. The other 4 ADC inputs are
brought out on a 0.100" header, just in case.

Requires pull up/pull down configuration to make it work with the
user's selection of pedals.

I might dub this the "simple pedal board" and design a v2 with a
simple STM32 on it, which can use TRS jacks with switches, and engage
in some local signal generation/detection in order to autoconfigure
for whatever kind of pedal is plugged in.

#### MIDI board

Like the pedal board, the MIDI board is designed as a Qwiic device.
It is an I2C UART, appropriate oscillator, and isolation circuitry
to convert the logic level signals from the UART into MIDI compatible
current signals.

### Link board

To facilitate development/testing of the ADC boards without the main board,
a "link board" has been designed. It is a full duplex RS485 board with power
injection comparable to what the main board will provide.

As an alternative to using the main board, a PC with enough link boards to
talk to all of the ADC boards simultaneously could skip out on the use of
a main board, in exchange for running more complicated software locally.

# Construction/assembly requirements

* Everything necessary for surface mount board assembly.
* AC to DC power supples: 5V, 15V and 48V enclosed. I suggest Meanwell, DIN mount may be nice depending on the space available.
* 8 ethernet cables.
* Lots of bulk Cat5 cable to pull apart for the twisted pairs.
* Crimpers and such to turn the twisted pair into 176 cables for
  the sensors, with 0.100" headers on each end.
* ST-Link/v2 programmer.
* Hardware for rigid mounting of sensors to the piano frame.
