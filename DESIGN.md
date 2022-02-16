# Requirements / Goals

* Semiautomated calibration. Ideally once the hardware is correctly
  installed, it can be calibrated by playing all of the notes in
  order. It is expected this will require an attached PC running
  specialized software.
* It must be possible to make this work with just the extracted action
  of a grand piano. Mechanics are outside of the scope of what this
  project intends to worry about, but it would be ideal if a MIDI
  controller housing could be made for a piano's action, such that the
  action could be transferred between controller housing and piano
  with ease.
* Support for multiple common 1/4" TRS sustain pedals, or some other
  sensors that would be suitable for measuring the state of pedals
  still in their original state.
* The boards should be designed such that bad firmware can't wreck
  anything. I feel like this is important for open hardware type projects,
  where there is the possibility that folks might start fiddling
  with their firmware without a full understanding of the hardware.

### Distant future goals

* Integration with a Raspberry Pi 4 Compute Module capable of running
  Pianoteq so that a standalone piano can be produced.
* Alternatively, try to figure out how to get some open source synth
  software running on some sort of microcontroller, such that it can
  take MIDI over I2C and generate audio.
* Design/integration of DACs and audio amplifiers into that synth board,
  so that it can drive speakers directly.

# System Design

The hardware/software system is based around the Vishay
[CNY70](https://github.com/jkominek/piano-conversion/wiki/CNY70)
optical reflectance sensor. It consists of an infrared LED, and a
phototransistor sensitive to the LED, in a convenient package. It can
measure distances in the (roughly!) 0-10mm range.

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
transimpedance amplifier, and monitored by an ADC channel of an
[STM32H743](https://github.com/jkominek/piano-conversion/wiki/STM32H7).
Hopefully the STM32 will be able to process all 22 signals at between
10kHz and 20kHz. I expect to apply some digital low pass filtering.

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
switching regulator to bring the 5V down to 3.3V. The analog voltage
rails are produced by linear regulators, to reduce noise.

The board can be populated with optional components to make it into
a USB device. This isn't expected to be necessary, but may be more
convenient during the sensor calibration process. Two additional UARTs
are brought out to 0.100" header pins. Just in case.

Programming is performed over the JTAG header, intended for use with the
ST-Link/v2 programmer.

There is space for four LEDs, and a number of otherwise-unused pins are
brought out to sizable test points.

### Sensor board

Each sensor board will consist of nothing but some CNY70s, and a
0.100" header. 2*N pins will connect to the phototransistors, and come
back to the ADC board via twisted pair. The last two correspond to a
chain of all of the LEDs on the board.  The LEDs should be chained
together in rather long strings. Likely 22 sensors per string.

### LED power board

The LED power board is designed (as of rev3) to use an off the shelf
48V power supply, and provide a constant ~20mA to 8 different strings
of LEDs. Each string is intended to have 22 CNY70 LEDs on it.

We derive from the 48V a ~12V power rail for the rest of the analog
electronics on the board. The design as it stands should produce
constant currents which are extremely stable from time scales of a
year, down to 100kHz. The deterioration of the LEDs themselves is
expected to be the main source of change in the optical output.

Rev3 of the board adds a microcontroller which can monitor the LED
strings individually to detect errors, and also turn all the LEDs off
by shutting down the precision voltage reference.

### Main board

Intended to use a STM32H743 like the ADC board.

8 RS485 serial links, along with 5V distribution to the ADC boards.
Per-board high-side MOSFET control of power, so that boards
can be brought up in sequence once power has stabilized. Also allows
them to be power cycled in event of error, or to reflash them.

USB B device link, as the main/intended link to the host computer.

Four I2C controllers are brought out to three separate Qwiic headers,
so that a variety of common I/O devices can be attached without
requiring special development. (MIDI DIN, pedals, led power control,
RTC clock, ethernet/bluetooth, blinky RGB LEDs, etc)

Firmware is expected to process the fairly raw velocity messages
from the ADC boards, appyling any calibration, and sending them out
over any of the many MIDI links available to it (serial, USB, ethernet,
maybe even bluetooth).

#### Pedal board

A low powered STM32G0 a board with Qwiic headers, and 4 1/4"
TRS jacks for standard sustain pedals. 12 ADC channels go to
every pin of the TRS jacks in hopes that we can automatically
determine the behavior of the attached pdals.

#### MIDI board

Like the pedal board, the MIDI board is designed as a Qwiic device.
It also uses an STM32G0 to act as an I2C<->UART bridge, and has the
appropriate MIDI isolation circuitry.

### Link board

To facilitate development/testing of the ADC boards without the main
board, a "link board" has been designed. It is a full duplex RS485
board with power injection comparable to what the main board will
provide.

As an alternative to using the main board, a PC with enough link
boards to talk to all of the ADC boards simultaneously could skip out
on the use of a main board, in exchange for running more complicated
software locally.

# Construction/assembly requirements

See [the wiki Assembly Notes](https://github.com/jkominek/piano-conversion/wiki/Assembly-Notes)
for this info.
