# LED Power board

As covered in the main design doc, the board takes +15V and +48V,
and uses them to feed 8 strings of LEDs with a constant current of
~20mA.

# FAQs

* Why do we require a +15V supply?
  * A low power DIN rail +15V supply is <$10. An on-board regulator
    that could regulate the +48V down to +15V, without getting too hot,
    would cost about the same amount. There are cheaper regulators that
    could produce +5V, but we need to provide the op amps with something
    higher.
* The +15V supply is really kind of dumb, we're only drawing about 100mA.
  * Yes, and the op amps can run off of 45V. I'm considering a new
    version which runs off a single ~40V supply. But 40V supplies don't
    fall off of trees. So it isn't an obvious win.

# Design

## Constant current regulation

We've got a chain of ~22+1 LEDs, which will have a combined forward voltage
of between 30V and 37V, depending on part variation and current conditions.
We'd like to apply a constant 20mA to them. We've got a ~48V supply to work
with. The suggested supply is actually a 43V to 52V device. So we need to
be able to drop anywhere between 23V and 6V, while controlling the current.

To do this, we stack an N-channel MOSFET on top of a temperature
stable precision resistor.  The precision resistor is chosen so that
when we hold a certain fixed voltage across the resistor, 20mA is
developed through it. To hold that voltage, an op amp drives the MOSFET's
gate to whatever voltage is necessary for the MOSFET's resistance to
drop the excess voltage.
