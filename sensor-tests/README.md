# Summary
I tested an Everligth EAITRCA6 a QRE1113 preassembled by sparkfun in the center (https://www.sparkfun.com/products/9453) and a well-known CNY70 by VISHAY on the right. The datasheet for the QRE1113 reports a response time of 20us, whereas the EAITRCA6's one depends on the load resistance (page 5 of the datasheet). The CNY70 datasheet does not mention time. The first two are quite smaller than the third, which (depending on your goals) can be a pro or a con. For me smaller is better

# Datasheets
* EAITRCA6 https://everlightamericas.com/index.php?controller=attachment&id_attachment=1546
* QRE1113: http://cdn.sparkfun.com/datasheets/Sensors/Proximity/QRE1113.pdf and https://www.onsemi.com/pdf/datasheet/qre1113-d.pdf (same data)

# Capture made with Raspberry Pi Pico
* RPicoADC directory contains the software to capture analog data off 3 channels of the ADC in the RP2040, check the pico documentation for details
* Hardware setup on a breadboard as described [here](https://pianoclack.com/forum/d/243-diy-piano-sensors/36)

# Measurements
* plot directory contains the captured data and a plotting script
* large images not included in the repository, current ones are posted [here](https://pianoclack.com/forum/d/243-diy-piano-sensors/39)


