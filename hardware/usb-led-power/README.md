This is a little USB-powered board which produces 4 constant current
outputs, each fixed to 20mA. Max voltage is 24V. With an LED Vf of
1.5V, that means you can drive <=16-ish LEDs off of each output. If
you drive just a single LED off an output, the constant current
limiter will be shedding 0.45W. It can probably handle that, but if
you want to use an output with fewer than 8 LEDs, consider putting a
resistor in series with them.  Remember V=IR. I is 20mA. Choose R to
eat 50-75% of whatever voltage will be left over after you subtract
the forward voltages of the LEDs from 24V.

The outputs inherit rather more noise from the USB power supply than I
would like. Which justifies much of the hassle I went through with the
design of the real LED power board. But if you don't like that one, or
want something for testing purposs, this might be helpful.

I don't generally suggest using it.
