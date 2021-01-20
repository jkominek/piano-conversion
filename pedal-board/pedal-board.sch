EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR04
U 1 1 5FD37B78
P 8100 3750
F 0 "#PWR04" H 8100 3500 50  0001 C CNN
F 1 "GND" H 8105 3577 50  0000 C CNN
F 2 "" H 8100 3750 50  0001 C CNN
F 3 "" H 8100 3750 50  0001 C CNN
	1    8100 3750
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR03
U 1 1 5FD37E4D
P 8100 2350
F 0 "#PWR03" H 8100 2200 50  0001 C CNN
F 1 "+3.3V" H 8115 2523 50  0000 C CNN
F 2 "" H 8100 2350 50  0001 C CNN
F 3 "" H 8100 2350 50  0001 C CNN
	1    8100 2350
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack3 J1
U 1 1 5FD72390
P 1050 2000
F 0 "J1" H 1032 2325 50  0000 C CNN
F 1 "AudioJack0" H 1032 2234 50  0000 C CNN
F 2 "footprints:SJ-63053A" H 1050 2000 50  0001 C CNN
F 3 "~" H 1050 2000 50  0001 C CNN
	1    1050 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 2650 7100 2650
Wire Wire Line
	7600 2750 7100 2750
Wire Wire Line
	7600 2850 7100 2850
Wire Wire Line
	7600 2950 7100 2950
Text Label 7100 2650 0    50   ~ 0
CH0
Text Label 7100 2750 0    50   ~ 0
CH1
Text Label 7100 2850 0    50   ~ 0
CH2
Text Label 7100 2950 0    50   ~ 0
CH3
$Comp
L Connector:AudioJack3 J2
U 1 1 5FDA7589
P 3600 2000
F 0 "J2" H 3582 2325 50  0000 C CNN
F 1 "AudioJack1" H 3582 2234 50  0000 C CNN
F 2 "footprints:SJ-63053A" H 3600 2000 50  0001 C CNN
F 3 "~" H 3600 2000 50  0001 C CNN
	1    3600 2000
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack3 J3
U 1 1 5FDAFA47
P 1100 3950
F 0 "J3" H 1082 4275 50  0000 C CNN
F 1 "AudioJack2" H 1082 4184 50  0000 C CNN
F 2 "footprints:SJ-63053A" H 1100 3950 50  0001 C CNN
F 3 "~" H 1100 3950 50  0001 C CNN
	1    1100 3950
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack3 J4
U 1 1 5FDB7B67
P 3600 4000
F 0 "J4" H 3582 4325 50  0000 C CNN
F 1 "AudioJack3" H 3582 4234 50  0000 C CNN
F 2 "footprints:SJ-63053A" H 3600 4000 50  0001 C CNN
F 3 "~" H 3600 4000 50  0001 C CNN
	1    3600 4000
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0107
U 1 1 5FDCEDC2
P 9750 2500
F 0 "#PWR0107" H 9750 2350 50  0001 C CNN
F 1 "+3.3V" H 9765 2673 50  0000 C CNN
F 2 "" H 9750 2500 50  0001 C CNN
F 3 "" H 9750 2500 50  0001 C CNN
	1    9750 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5FDCF69F
P 10200 2750
F 0 "#PWR0108" H 10200 2500 50  0001 C CNN
F 1 "GND" H 10205 2577 50  0000 C CNN
F 2 "" H 10200 2750 50  0001 C CNN
F 3 "" H 10200 2750 50  0001 C CNN
	1    10200 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5FE016C8
P 7700 1700
F 0 "C1" H 7792 1746 50  0000 L CNN
F 1 "0.1uF" H 7792 1655 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7700 1700 50  0001 C CNN
F 3 "~" H 7700 1700 50  0001 C CNN
	1    7700 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5FE01FE3
P 8100 1700
F 0 "C2" H 8192 1746 50  0000 L CNN
F 1 "1uF" H 8192 1655 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8100 1700 50  0001 C CNN
F 3 "~" H 8100 1700 50  0001 C CNN
	1    8100 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5FE02631
P 8500 1700
F 0 "C3" H 8592 1746 50  0000 L CNN
F 1 "4.7uF" H 8592 1655 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8500 1700 50  0001 C CNN
F 3 "~" H 8500 1700 50  0001 C CNN
	1    8500 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0109
U 1 1 5FE02A86
P 7700 1500
F 0 "#PWR0109" H 7700 1350 50  0001 C CNN
F 1 "+3.3V" H 7715 1673 50  0000 C CNN
F 2 "" H 7700 1500 50  0001 C CNN
F 3 "" H 7700 1500 50  0001 C CNN
	1    7700 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5FE0349A
P 7700 1900
F 0 "#PWR0110" H 7700 1650 50  0001 C CNN
F 1 "GND" H 7705 1727 50  0000 C CNN
F 2 "" H 7700 1900 50  0001 C CNN
F 3 "" H 7700 1900 50  0001 C CNN
	1    7700 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 1500 8100 1500
Wire Wire Line
	8500 1500 8500 1600
Wire Wire Line
	7700 1900 8100 1900
Wire Wire Line
	8500 1900 8500 1800
Wire Wire Line
	8100 1800 8100 1900
Connection ~ 8100 1900
Wire Wire Line
	8100 1900 8500 1900
Wire Wire Line
	8100 1600 8100 1500
Connection ~ 8100 1500
Wire Wire Line
	8100 1500 8500 1500
Wire Wire Line
	7700 1500 7700 1600
Connection ~ 7700 1500
Wire Wire Line
	7700 1800 7700 1900
Connection ~ 7700 1900
Text Notes 5000 5850 0    50   ~ 0
We've got a complicated network of resistors here\nthat should let us pull up or down any of the pins as necessary.\n\nSecond round of investigation; the signal is on the tip.\nThat makes a bit more sense, I think.\n\nThese could probably use some more protection (TVS?)\nas users are likely to plug/unplug them during operation.\n\n!!! Definitely don't put zero-ohm resistors in for any of\nthese. You've got to assume all of the pins will be\nleft permanently shorted, and work from there.
$Comp
L Analog_DAC:ADS7830 U1
U 1 1 5FD6C453
P 8100 3050
F 0 "U1" H 8300 3700 50  0000 C CNN
F 1 "ADS7830" H 8350 3600 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-16_4.4x5mm_Pitch0.65mm" H 8200 2350 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/ads7830.pdf" H 8300 2600 50  0001 C CNN
	1    8100 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 2350 8100 2450
Wire Wire Line
	8100 3750 8100 3700
Connection ~ 8100 3700
Wire Wire Line
	8100 3700 8100 3650
Wire Wire Line
	8600 2650 9000 2650
Wire Wire Line
	8600 2750 9000 2750
Text Label 9000 2750 2    50   ~ 0
SCL
Text Label 9000 2650 2    50   ~ 0
SDA
$Comp
L Connector:Conn_01x04_Female J5
U 1 1 5FDB53D4
P 10950 2550
F 0 "J5" H 10842 2125 50  0000 C CNN
F 1 "Qwiic" H 10842 2216 50  0000 C CNN
F 2 "Connectors_JST:JST_SH_SM04B-SRSS-TB_04x1.00mm_Angled" H 10950 2550 50  0001 C CNN
F 3 "~" H 10950 2550 50  0001 C CNN
	1    10950 2550
	1    0    0    1   
$EndComp
Wire Wire Line
	9750 2500 9750 2550
Wire Wire Line
	9750 2550 9900 2550
Wire Wire Line
	10750 2650 10200 2650
Wire Wire Line
	10200 2650 10200 2750
Wire Wire Line
	10750 2450 10350 2450
Wire Wire Line
	10750 2350 10350 2350
Text Label 10350 2350 0    50   ~ 0
SCL
Text Label 10350 2450 0    50   ~ 0
SDA
$Comp
L Device:C_Small C4
U 1 1 5FD6DFF9
P 8900 3350
F 0 "C4" H 8992 3396 50  0000 L CNN
F 1 "0.1uF" H 8992 3305 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8900 3350 50  0001 C CNN
F 3 "~" H 8900 3350 50  0001 C CNN
	1    8900 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 3050 8750 3050
Wire Wire Line
	8900 3050 8900 3250
Wire Wire Line
	8900 3450 8900 3700
Wire Wire Line
	7600 3450 7550 3450
Wire Wire Line
	7550 3450 7550 3700
Wire Wire Line
	7550 3700 8100 3700
$Comp
L Device:Ferrite_Bead_Small FB1
U 1 1 5FD7EB67
P 9000 3050
F 0 "FB1" V 8763 3050 50  0000 C CNN
F 1 "FB" V 8854 3050 50  0000 C CNN
F 2 "Inductors_SMD:L_0805_HandSoldering" V 8930 3050 50  0001 C CNN
F 3 "~" H 9000 3050 50  0001 C CNN
	1    9000 3050
	0    1    1    0   
$EndComp
Connection ~ 8900 3050
$Comp
L Device:Ferrite_Bead_Small FB2
U 1 1 5FD7FC16
P 10000 2550
F 0 "FB2" V 10237 2550 50  0000 C CNN
F 1 "FB" V 10146 2550 50  0000 C CNN
F 2 "Inductors_SMD:L_0805_HandSoldering" V 9930 2550 50  0001 C CNN
F 3 "~" H 10000 2550 50  0001 C CNN
	1    10000 2550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10750 2550 10100 2550
$Comp
L power:+3.3V #PWR0111
U 1 1 5FDA0A43
P 9400 3000
F 0 "#PWR0111" H 9400 2850 50  0001 C CNN
F 1 "+3.3V" H 9415 3173 50  0000 C CNN
F 2 "" H 9400 3000 50  0001 C CNN
F 3 "" H 9400 3000 50  0001 C CNN
	1    9400 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 3050 9400 3050
Wire Wire Line
	9400 3050 9400 3000
$Comp
L Connector:Conn_01x03_Male J9
U 1 1 5FDA6570
P 6650 3450
F 0 "J9" H 6758 3731 50  0000 C CNN
F 1 "CH7" H 6758 3640 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 6650 3450 50  0001 C CNN
F 3 "~" H 6650 3450 50  0001 C CNN
	1    6650 3450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J8
U 1 1 5FDA8E43
P 6350 3300
F 0 "J8" H 6458 3581 50  0000 C CNN
F 1 "CH7" H 6458 3490 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 6350 3300 50  0001 C CNN
F 3 "~" H 6350 3300 50  0001 C CNN
	1    6350 3300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J7
U 1 1 5FDAA214
P 6050 3100
F 0 "J7" H 6158 3381 50  0000 C CNN
F 1 "CH7" H 6158 3290 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 6050 3100 50  0001 C CNN
F 3 "~" H 6050 3100 50  0001 C CNN
	1    6050 3100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J6
U 1 1 5FDAA9BC
P 5750 2950
F 0 "J6" H 5858 3231 50  0000 C CNN
F 1 "CH7" H 5858 3140 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 5750 2950 50  0001 C CNN
F 3 "~" H 5750 2950 50  0001 C CNN
	1    5750 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 3250 6650 3250
Wire Wire Line
	6650 3250 6550 3300
Wire Wire Line
	6250 3100 6650 3100
Wire Wire Line
	6650 3100 6700 3150
Wire Wire Line
	6700 3150 7600 3150
Wire Wire Line
	6850 3450 7050 3450
Wire Wire Line
	7050 3450 7200 3350
Wire Wire Line
	7200 3350 7600 3350
Wire Wire Line
	5950 2950 6650 2950
Wire Wire Line
	6650 2950 6750 3050
Wire Wire Line
	6750 3050 7600 3050
Wire Wire Line
	5950 2850 6400 2850
Wire Wire Line
	6400 2850 6400 2700
Wire Wire Line
	6250 3000 6400 3000
Wire Wire Line
	6400 3000 6400 2850
Connection ~ 6400 2850
Wire Wire Line
	6550 3200 6550 2850
Wire Wire Line
	6550 2850 6400 2850
Wire Wire Line
	6850 3350 6850 2850
Wire Wire Line
	6850 2850 6550 2850
Connection ~ 6550 2850
$Comp
L power:GND #PWR0113
U 1 1 5FDDB04E
P 6400 3700
F 0 "#PWR0113" H 6400 3450 50  0001 C CNN
F 1 "GND" H 6405 3527 50  0000 C CNN
F 2 "" H 6400 3700 50  0001 C CNN
F 3 "" H 6400 3700 50  0001 C CNN
	1    6400 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 3650 6550 3650
Wire Wire Line
	5950 3650 5950 3050
Wire Wire Line
	6250 3200 6250 3650
Connection ~ 6250 3650
Wire Wire Line
	6250 3650 5950 3650
Wire Wire Line
	6550 3400 6550 3650
Connection ~ 6550 3650
Wire Wire Line
	6550 3650 6400 3650
Wire Wire Line
	6400 3650 6400 3700
Connection ~ 6400 3650
Wire Wire Line
	6400 3650 6250 3650
Wire Wire Line
	6850 3550 6850 3650
$Comp
L Connector:Conn_01x03_Male J10
U 1 1 5FDFD607
P 9650 4300
F 0 "J10" H 9622 4232 50  0000 R CNN
F 1 "CH7" H 9622 4323 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 9650 4300 50  0001 C CNN
F 3 "~" H 9650 4300 50  0001 C CNN
	1    9650 4300
	-1   0    0    1   
$EndComp
Wire Wire Line
	8100 3700 8900 3700
Wire Wire Line
	8600 3350 8800 3350
Wire Wire Line
	8600 3250 8800 3250
Text Label 8800 3250 2    50   ~ 0
A1
Text Label 8800 3350 2    50   ~ 0
A0
Wire Wire Line
	9450 4200 9300 4200
Wire Wire Line
	9450 4400 9300 4400
$Comp
L power:GND #PWR0114
U 1 1 5FE2849A
P 9300 4600
F 0 "#PWR0114" H 9300 4350 50  0001 C CNN
F 1 "GND" H 9305 4427 50  0000 C CNN
F 2 "" H 9300 4600 50  0001 C CNN
F 3 "" H 9300 4600 50  0001 C CNN
	1    9300 4600
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0115
U 1 1 5FE2891A
P 9300 4000
F 0 "#PWR0115" H 9300 3850 50  0001 C CNN
F 1 "+3.3V" H 9315 4173 50  0000 C CNN
F 2 "" H 9300 4000 50  0001 C CNN
F 3 "" H 9300 4000 50  0001 C CNN
	1    9300 4000
	1    0    0    -1  
$EndComp
Text Label 9300 4300 0    50   ~ 0
A0
$Comp
L Connector:Conn_01x03_Male J11
U 1 1 5FE74475
P 10700 4300
F 0 "J11" H 10672 4232 50  0000 R CNN
F 1 "CH7" H 10672 4323 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 10700 4300 50  0001 C CNN
F 3 "~" H 10700 4300 50  0001 C CNN
	1    10700 4300
	-1   0    0    1   
$EndComp
Wire Wire Line
	10500 4200 10350 4200
Wire Wire Line
	10500 4400 10350 4400
$Comp
L power:GND #PWR0116
U 1 1 5FE74480
P 10350 4600
F 0 "#PWR0116" H 10350 4350 50  0001 C CNN
F 1 "GND" H 10355 4427 50  0000 C CNN
F 2 "" H 10350 4600 50  0001 C CNN
F 3 "" H 10350 4600 50  0001 C CNN
	1    10350 4600
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0117
U 1 1 5FE74486
P 10350 4000
F 0 "#PWR0117" H 10350 3850 50  0001 C CNN
F 1 "+3.3V" H 10365 4173 50  0000 C CNN
F 2 "" H 10350 4000 50  0001 C CNN
F 3 "" H 10350 4000 50  0001 C CNN
	1    10350 4000
	1    0    0    -1  
$EndComp
Text Label 10350 4300 0    50   ~ 0
A1
Text Notes 11000 4950 2    50   ~ 0
Through hole, and surface mount pads for selecting the address.\nYou can populate with headers, zero ohm resistors, whatever.
$Comp
L power:+3.3VA #PWR0112
U 1 1 5FDCC422
P 8750 3050
F 0 "#PWR0112" H 8750 2900 50  0001 C CNN
F 1 "+3.3VA" H 8765 3223 50  0000 C CNN
F 2 "" H 8750 3050 50  0001 C CNN
F 3 "" H 8750 3050 50  0001 C CNN
	1    8750 3050
	1    0    0    -1  
$EndComp
Connection ~ 8750 3050
Wire Wire Line
	8750 3050 8900 3050
$Comp
L power:+3.3VA #PWR0118
U 1 1 5FDCD03F
P 6400 2700
F 0 "#PWR0118" H 6400 2550 50  0001 C CNN
F 1 "+3.3VA" H 6415 2873 50  0000 C CNN
F 2 "" H 6400 2700 50  0001 C CNN
F 3 "" H 6400 2700 50  0001 C CNN
	1    6400 2700
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0120
U 1 1 5FDF7A0D
P 9750 3300
F 0 "#PWR0120" H 9750 3150 50  0001 C CNN
F 1 "+3.3V" H 9765 3473 50  0000 C CNN
F 2 "" H 9750 3300 50  0001 C CNN
F 3 "" H 9750 3300 50  0001 C CNN
	1    9750 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 5FDF7A13
P 10200 3550
F 0 "#PWR0121" H 10200 3300 50  0001 C CNN
F 1 "GND" H 10205 3377 50  0000 C CNN
F 2 "" H 10200 3550 50  0001 C CNN
F 3 "" H 10200 3550 50  0001 C CNN
	1    10200 3550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female J12
U 1 1 5FDF7A19
P 10950 3350
F 0 "J12" H 10842 2925 50  0000 C CNN
F 1 "Qwiic" H 10842 3016 50  0000 C CNN
F 2 "Connectors_JST:JST_SH_SM04B-SRSS-TB_04x1.00mm_Angled" H 10950 3350 50  0001 C CNN
F 3 "~" H 10950 3350 50  0001 C CNN
	1    10950 3350
	1    0    0    1   
$EndComp
Wire Wire Line
	9750 3300 9750 3350
Wire Wire Line
	9750 3350 9900 3350
Wire Wire Line
	10750 3450 10200 3450
Wire Wire Line
	10200 3450 10200 3550
Wire Wire Line
	10750 3250 10350 3250
Wire Wire Line
	10750 3150 10350 3150
Text Label 10350 3150 0    50   ~ 0
SCL
Text Label 10350 3250 0    50   ~ 0
SDA
$Comp
L Device:Ferrite_Bead_Small FB3
U 1 1 5FDF7A27
P 10000 3350
F 0 "FB3" V 10237 3350 50  0000 C CNN
F 1 "FB" V 10146 3350 50  0000 C CNN
F 2 "Inductors_SMD:L_0805_HandSoldering" V 9930 3350 50  0001 C CNN
F 3 "~" H 10000 3350 50  0001 C CNN
	1    10000 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10750 3350 10100 3350
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 600874DB
P 850 7200
F 0 "H1" H 950 7249 50  0000 L CNN
F 1 "MountingHole_Pad" H 950 7158 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad_Via" H 850 7200 50  0001 C CNN
F 3 "~" H 850 7200 50  0001 C CNN
	1    850  7200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 60088095
P 1150 7200
F 0 "H2" H 1250 7249 50  0000 L CNN
F 1 "MountingHole_Pad" H 1250 7158 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad_Via" H 1150 7200 50  0001 C CNN
F 3 "~" H 1150 7200 50  0001 C CNN
	1    1150 7200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 600884E7
P 1450 7200
F 0 "H3" H 1550 7249 50  0000 L CNN
F 1 "MountingHole_Pad" H 1550 7158 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad_Via" H 1450 7200 50  0001 C CNN
F 3 "~" H 1450 7200 50  0001 C CNN
	1    1450 7200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 60091CC7
P 1150 7400
F 0 "#PWR0122" H 1150 7150 50  0001 C CNN
F 1 "GND" H 1155 7227 50  0000 C CNN
F 2 "" H 1150 7400 50  0001 C CNN
F 3 "" H 1150 7400 50  0001 C CNN
	1    1150 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  7300 850  7350
Wire Wire Line
	850  7350 1150 7350
Wire Wire Line
	1450 7350 1450 7300
Wire Wire Line
	1150 7300 1150 7350
Connection ~ 1150 7350
Wire Wire Line
	1150 7350 1450 7350
Wire Wire Line
	1150 7350 1150 7400
$Comp
L Connector:Conn_01x04_Female J13
U 1 1 600D1771
P 10950 1850
F 0 "J13" H 10842 1425 50  0000 C CNN
F 1 "Qwiic" H 10842 1516 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 10950 1850 50  0001 C CNN
F 3 "~" H 10950 1850 50  0001 C CNN
	1    10950 1850
	1    0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0123
U 1 1 600D3C6E
P 9950 1800
F 0 "#PWR0123" H 9950 1650 50  0001 C CNN
F 1 "+3.3V" H 9965 1973 50  0000 C CNN
F 2 "" H 9950 1800 50  0001 C CNN
F 3 "" H 9950 1800 50  0001 C CNN
	1    9950 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 600D3C74
P 10200 2050
F 0 "#PWR0124" H 10200 1800 50  0001 C CNN
F 1 "GND" H 10205 1877 50  0000 C CNN
F 2 "" H 10200 2050 50  0001 C CNN
F 3 "" H 10200 2050 50  0001 C CNN
	1    10200 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 1800 9950 1850
Wire Wire Line
	10750 1950 10200 1950
Wire Wire Line
	10200 1950 10200 2050
Wire Wire Line
	10750 1750 10350 1750
Wire Wire Line
	10750 1650 10350 1650
Text Label 10350 1650 0    50   ~ 0
SCL
Text Label 10350 1750 0    50   ~ 0
SDA
Wire Wire Line
	9950 1850 10750 1850
$Comp
L Device:R_Small_US R5
U 1 1 601B13AE
P 1450 2100
F 0 "R5" V 1245 2100 50  0000 C CNN
F 1 "10" V 1336 2100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 1450 2100 50  0001 C CNN
F 3 "~" H 1450 2100 50  0001 C CNN
	1    1450 2100
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R3
U 1 1 601B977C
P 1650 2000
F 0 "R3" V 1445 2000 50  0000 C CNN
F 1 "10" V 1536 2000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 1650 2000 50  0001 C CNN
F 3 "~" H 1650 2000 50  0001 C CNN
	1    1650 2000
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R1
U 1 1 601B9A7C
P 1850 1900
F 0 "R1" V 1645 1900 50  0000 C CNN
F 1 "10" V 1736 1900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 1850 1900 50  0001 C CNN
F 3 "~" H 1850 1900 50  0001 C CNN
	1    1850 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	1250 2100 1350 2100
Wire Wire Line
	1250 2000 1550 2000
Wire Wire Line
	1250 1900 1750 1900
$Comp
L Device:Voltage_Divider RN1
U 1 1 601D1FF4
P 2250 1550
F 0 "RN1" V 2033 1550 50  0000 C CNN
F 1 "Div" V 2124 1550 50  0000 C CNN
F 2 "footprints:R_0805_Divider" V 2725 1550 50  0001 C CNN
F 3 "~" H 2450 1550 50  0001 C CNN
	1    2250 1550
	0    1    1    0   
$EndComp
$Comp
L Device:Voltage_Divider RN3
U 1 1 601D4ABC
P 2650 2000
F 0 "RN3" H 2570 1954 50  0000 R CNN
F 1 "Div" H 2570 2045 50  0000 R CNN
F 2 "footprints:R_0805_Divider" V 3125 2000 50  0001 C CNN
F 3 "~" H 2850 2000 50  0001 C CNN
	1    2650 2000
	-1   0    0    1   
$EndComp
$Comp
L Device:Voltage_Divider RN5
U 1 1 601D52A3
P 2250 2450
F 0 "RN5" V 2125 2450 50  0000 C CNN
F 1 "Div" V 2034 2450 50  0000 C CNN
F 2 "footprints:R_0805_Divider" V 2725 2450 50  0001 C CNN
F 3 "~" H 2450 2450 50  0001 C CNN
	1    2250 2450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2250 2100 2250 2300
Wire Wire Line
	1550 2100 2250 2100
Wire Wire Line
	1750 2000 2500 2000
Wire Wire Line
	2250 1900 2250 1700
Wire Wire Line
	1950 1900 2250 1900
$Comp
L power:+3.3VA #PWR0101
U 1 1 60204CC5
P 1950 1500
F 0 "#PWR0101" H 1950 1350 50  0001 C CNN
F 1 "+3.3VA" H 1965 1673 50  0000 C CNN
F 2 "" H 1950 1500 50  0001 C CNN
F 3 "" H 1950 1500 50  0001 C CNN
	1    1950 1500
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR0102
U 1 1 602055B7
P 2700 1700
F 0 "#PWR0102" H 2700 1550 50  0001 C CNN
F 1 "+3.3VA" H 2715 1873 50  0000 C CNN
F 2 "" H 2700 1700 50  0001 C CNN
F 3 "" H 2700 1700 50  0001 C CNN
	1    2700 1700
	0    1    1    0   
$EndComp
$Comp
L power:+3.3VA #PWR0103
U 1 1 60206007
P 2550 2500
F 0 "#PWR0103" H 2550 2350 50  0001 C CNN
F 1 "+3.3VA" H 2565 2673 50  0000 C CNN
F 2 "" H 2550 2500 50  0001 C CNN
F 3 "" H 2550 2500 50  0001 C CNN
	1    2550 2500
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 602069B5
P 1950 2500
F 0 "#PWR0104" H 1950 2250 50  0001 C CNN
F 1 "GND" H 1955 2327 50  0000 C CNN
F 2 "" H 1950 2500 50  0001 C CNN
F 3 "" H 1950 2500 50  0001 C CNN
	1    1950 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 60207160
P 2700 2300
F 0 "#PWR0105" H 2700 2050 50  0001 C CNN
F 1 "GND" H 2705 2127 50  0000 C CNN
F 2 "" H 2700 2300 50  0001 C CNN
F 3 "" H 2700 2300 50  0001 C CNN
	1    2700 2300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 602077C7
P 2550 1500
F 0 "#PWR0106" H 2550 1250 50  0001 C CNN
F 1 "GND" H 2555 1327 50  0000 C CNN
F 2 "" H 2550 1500 50  0001 C CNN
F 3 "" H 2550 1500 50  0001 C CNN
	1    2550 1500
	-1   0    0    1   
$EndComp
Wire Wire Line
	2500 1550 2550 1550
Wire Wire Line
	2550 1550 2550 1500
Wire Wire Line
	1950 1500 1950 1550
Wire Wire Line
	1950 1550 2000 1550
Wire Wire Line
	1950 2500 1950 2450
Wire Wire Line
	1950 2450 2000 2450
Wire Wire Line
	2500 2450 2550 2450
Wire Wire Line
	2550 2450 2550 2500
Wire Wire Line
	2650 2250 2650 2300
Wire Wire Line
	2650 2300 2700 2300
Wire Wire Line
	2650 1750 2650 1700
Wire Wire Line
	2650 1700 2700 1700
Text Label 2250 2100 2    50   ~ 0
CH0
$Comp
L Device:R_Small_US R6
U 1 1 6023ECAA
P 4000 2100
F 0 "R6" V 3795 2100 50  0000 C CNN
F 1 "10" V 3886 2100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 4000 2100 50  0001 C CNN
F 3 "~" H 4000 2100 50  0001 C CNN
	1    4000 2100
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R4
U 1 1 6023ECB0
P 4200 2000
F 0 "R4" V 3995 2000 50  0000 C CNN
F 1 "10" V 4086 2000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 4200 2000 50  0001 C CNN
F 3 "~" H 4200 2000 50  0001 C CNN
	1    4200 2000
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R2
U 1 1 6023ECB6
P 4400 1900
F 0 "R2" V 4195 1900 50  0000 C CNN
F 1 "10" V 4286 1900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 4400 1900 50  0001 C CNN
F 3 "~" H 4400 1900 50  0001 C CNN
	1    4400 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	3800 2100 3900 2100
Wire Wire Line
	3800 2000 4100 2000
Wire Wire Line
	3800 1900 4300 1900
$Comp
L Device:Voltage_Divider RN2
U 1 1 6023ECBF
P 4800 1550
F 0 "RN2" V 4583 1550 50  0000 C CNN
F 1 "Div" V 4674 1550 50  0000 C CNN
F 2 "footprints:R_0805_Divider" V 5275 1550 50  0001 C CNN
F 3 "~" H 5000 1550 50  0001 C CNN
	1    4800 1550
	0    1    1    0   
$EndComp
$Comp
L Device:Voltage_Divider RN4
U 1 1 6023ECC5
P 5200 2000
F 0 "RN4" H 5120 1954 50  0000 R CNN
F 1 "Div" H 5120 2045 50  0000 R CNN
F 2 "footprints:R_0805_Divider" V 5675 2000 50  0001 C CNN
F 3 "~" H 5400 2000 50  0001 C CNN
	1    5200 2000
	-1   0    0    1   
$EndComp
$Comp
L Device:Voltage_Divider RN6
U 1 1 6023ECCB
P 4800 2450
F 0 "RN6" V 4675 2450 50  0000 C CNN
F 1 "Div" V 4584 2450 50  0000 C CNN
F 2 "footprints:R_0805_Divider" V 5275 2450 50  0001 C CNN
F 3 "~" H 5000 2450 50  0001 C CNN
	1    4800 2450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4800 2100 4800 2300
Wire Wire Line
	4100 2100 4800 2100
Wire Wire Line
	4300 2000 5050 2000
Wire Wire Line
	4800 1900 4800 1700
Wire Wire Line
	4500 1900 4800 1900
$Comp
L power:+3.3VA #PWR0119
U 1 1 6023ECD6
P 4500 1500
F 0 "#PWR0119" H 4500 1350 50  0001 C CNN
F 1 "+3.3VA" H 4515 1673 50  0000 C CNN
F 2 "" H 4500 1500 50  0001 C CNN
F 3 "" H 4500 1500 50  0001 C CNN
	1    4500 1500
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR0125
U 1 1 6023ECDC
P 5250 1700
F 0 "#PWR0125" H 5250 1550 50  0001 C CNN
F 1 "+3.3VA" H 5265 1873 50  0000 C CNN
F 2 "" H 5250 1700 50  0001 C CNN
F 3 "" H 5250 1700 50  0001 C CNN
	1    5250 1700
	0    1    1    0   
$EndComp
$Comp
L power:+3.3VA #PWR0126
U 1 1 6023ECE2
P 5100 2500
F 0 "#PWR0126" H 5100 2350 50  0001 C CNN
F 1 "+3.3VA" H 5115 2673 50  0000 C CNN
F 2 "" H 5100 2500 50  0001 C CNN
F 3 "" H 5100 2500 50  0001 C CNN
	1    5100 2500
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0127
U 1 1 6023ECE8
P 4500 2500
F 0 "#PWR0127" H 4500 2250 50  0001 C CNN
F 1 "GND" H 4505 2327 50  0000 C CNN
F 2 "" H 4500 2500 50  0001 C CNN
F 3 "" H 4500 2500 50  0001 C CNN
	1    4500 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0128
U 1 1 6023ECEE
P 5250 2300
F 0 "#PWR0128" H 5250 2050 50  0001 C CNN
F 1 "GND" H 5255 2127 50  0000 C CNN
F 2 "" H 5250 2300 50  0001 C CNN
F 3 "" H 5250 2300 50  0001 C CNN
	1    5250 2300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0129
U 1 1 6023ECF4
P 5100 1500
F 0 "#PWR0129" H 5100 1250 50  0001 C CNN
F 1 "GND" H 5105 1327 50  0000 C CNN
F 2 "" H 5100 1500 50  0001 C CNN
F 3 "" H 5100 1500 50  0001 C CNN
	1    5100 1500
	-1   0    0    1   
$EndComp
Wire Wire Line
	5050 1550 5100 1550
Wire Wire Line
	5100 1550 5100 1500
Wire Wire Line
	4500 1500 4500 1550
Wire Wire Line
	4500 1550 4550 1550
Wire Wire Line
	4500 2500 4500 2450
Wire Wire Line
	4500 2450 4550 2450
Wire Wire Line
	5050 2450 5100 2450
Wire Wire Line
	5100 2450 5100 2500
Wire Wire Line
	5200 2250 5200 2300
Wire Wire Line
	5200 2300 5250 2300
Wire Wire Line
	5200 1750 5200 1700
Wire Wire Line
	5200 1700 5250 1700
Text Label 4800 2100 2    50   ~ 0
CH1
$Comp
L Device:R_Small_US R11
U 1 1 60247F53
P 1500 4050
F 0 "R11" V 1295 4050 50  0000 C CNN
F 1 "10" V 1386 4050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 1500 4050 50  0001 C CNN
F 3 "~" H 1500 4050 50  0001 C CNN
	1    1500 4050
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R9
U 1 1 60247F59
P 1700 3950
F 0 "R9" V 1495 3950 50  0000 C CNN
F 1 "10" V 1586 3950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 1700 3950 50  0001 C CNN
F 3 "~" H 1700 3950 50  0001 C CNN
	1    1700 3950
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R7
U 1 1 60247F5F
P 1900 3850
F 0 "R7" V 1695 3850 50  0000 C CNN
F 1 "10" V 1786 3850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 1900 3850 50  0001 C CNN
F 3 "~" H 1900 3850 50  0001 C CNN
	1    1900 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	1300 4050 1400 4050
Wire Wire Line
	1300 3950 1600 3950
Wire Wire Line
	1300 3850 1800 3850
$Comp
L Device:Voltage_Divider RN7
U 1 1 60247F68
P 2300 3500
F 0 "RN7" V 2083 3500 50  0000 C CNN
F 1 "Div" V 2174 3500 50  0000 C CNN
F 2 "footprints:R_0805_Divider" V 2775 3500 50  0001 C CNN
F 3 "~" H 2500 3500 50  0001 C CNN
	1    2300 3500
	0    1    1    0   
$EndComp
$Comp
L Device:Voltage_Divider RN9
U 1 1 60247F6E
P 2700 3950
F 0 "RN9" H 2620 3904 50  0000 R CNN
F 1 "Div" H 2620 3995 50  0000 R CNN
F 2 "footprints:R_0805_Divider" V 3175 3950 50  0001 C CNN
F 3 "~" H 2900 3950 50  0001 C CNN
	1    2700 3950
	-1   0    0    1   
$EndComp
$Comp
L Device:Voltage_Divider RN11
U 1 1 60247F74
P 2300 4400
F 0 "RN11" V 2175 4400 50  0000 C CNN
F 1 "Div" V 2084 4400 50  0000 C CNN
F 2 "footprints:R_0805_Divider" V 2775 4400 50  0001 C CNN
F 3 "~" H 2500 4400 50  0001 C CNN
	1    2300 4400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2300 4050 2300 4250
Wire Wire Line
	1600 4050 2300 4050
Wire Wire Line
	1800 3950 2550 3950
Wire Wire Line
	2300 3850 2300 3650
Wire Wire Line
	2000 3850 2300 3850
$Comp
L power:+3.3VA #PWR0130
U 1 1 60247F7F
P 2000 3450
F 0 "#PWR0130" H 2000 3300 50  0001 C CNN
F 1 "+3.3VA" H 2015 3623 50  0000 C CNN
F 2 "" H 2000 3450 50  0001 C CNN
F 3 "" H 2000 3450 50  0001 C CNN
	1    2000 3450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR0131
U 1 1 60247F85
P 2750 3650
F 0 "#PWR0131" H 2750 3500 50  0001 C CNN
F 1 "+3.3VA" H 2765 3823 50  0000 C CNN
F 2 "" H 2750 3650 50  0001 C CNN
F 3 "" H 2750 3650 50  0001 C CNN
	1    2750 3650
	0    1    1    0   
$EndComp
$Comp
L power:+3.3VA #PWR0132
U 1 1 60247F8B
P 2600 4450
F 0 "#PWR0132" H 2600 4300 50  0001 C CNN
F 1 "+3.3VA" H 2615 4623 50  0000 C CNN
F 2 "" H 2600 4450 50  0001 C CNN
F 3 "" H 2600 4450 50  0001 C CNN
	1    2600 4450
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0133
U 1 1 60247F91
P 2000 4450
F 0 "#PWR0133" H 2000 4200 50  0001 C CNN
F 1 "GND" H 2005 4277 50  0000 C CNN
F 2 "" H 2000 4450 50  0001 C CNN
F 3 "" H 2000 4450 50  0001 C CNN
	1    2000 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0134
U 1 1 60247F97
P 2750 4250
F 0 "#PWR0134" H 2750 4000 50  0001 C CNN
F 1 "GND" H 2755 4077 50  0000 C CNN
F 2 "" H 2750 4250 50  0001 C CNN
F 3 "" H 2750 4250 50  0001 C CNN
	1    2750 4250
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0135
U 1 1 60247F9D
P 2600 3450
F 0 "#PWR0135" H 2600 3200 50  0001 C CNN
F 1 "GND" H 2605 3277 50  0000 C CNN
F 2 "" H 2600 3450 50  0001 C CNN
F 3 "" H 2600 3450 50  0001 C CNN
	1    2600 3450
	-1   0    0    1   
$EndComp
Wire Wire Line
	2550 3500 2600 3500
Wire Wire Line
	2600 3500 2600 3450
Wire Wire Line
	2000 3450 2000 3500
Wire Wire Line
	2000 3500 2050 3500
Wire Wire Line
	2000 4450 2000 4400
Wire Wire Line
	2000 4400 2050 4400
Wire Wire Line
	2550 4400 2600 4400
Wire Wire Line
	2600 4400 2600 4450
Wire Wire Line
	2700 4200 2700 4250
Wire Wire Line
	2700 4250 2750 4250
Wire Wire Line
	2700 3700 2700 3650
Wire Wire Line
	2700 3650 2750 3650
Text Label 2300 4050 2    50   ~ 0
CH2
$Comp
L Device:R_Small_US R12
U 1 1 60252DBD
P 4000 4100
F 0 "R12" V 3795 4100 50  0000 C CNN
F 1 "10" V 3886 4100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 4000 4100 50  0001 C CNN
F 3 "~" H 4000 4100 50  0001 C CNN
	1    4000 4100
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R10
U 1 1 60252DC3
P 4200 4000
F 0 "R10" V 3995 4000 50  0000 C CNN
F 1 "10" V 4086 4000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 4200 4000 50  0001 C CNN
F 3 "~" H 4200 4000 50  0001 C CNN
	1    4200 4000
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R8
U 1 1 60252DC9
P 4400 3900
F 0 "R8" V 4195 3900 50  0000 C CNN
F 1 "10" V 4286 3900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 4400 3900 50  0001 C CNN
F 3 "~" H 4400 3900 50  0001 C CNN
	1    4400 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	3800 4100 3900 4100
Wire Wire Line
	3800 4000 4100 4000
Wire Wire Line
	3800 3900 4300 3900
$Comp
L Device:Voltage_Divider RN8
U 1 1 60252DD2
P 4800 3550
F 0 "RN8" V 4583 3550 50  0000 C CNN
F 1 "Div" V 4674 3550 50  0000 C CNN
F 2 "footprints:R_0805_Divider" V 5275 3550 50  0001 C CNN
F 3 "~" H 5000 3550 50  0001 C CNN
	1    4800 3550
	0    1    1    0   
$EndComp
$Comp
L Device:Voltage_Divider RN10
U 1 1 60252DD8
P 5200 4000
F 0 "RN10" H 5120 3954 50  0000 R CNN
F 1 "Div" H 5120 4045 50  0000 R CNN
F 2 "footprints:R_0805_Divider" V 5675 4000 50  0001 C CNN
F 3 "~" H 5400 4000 50  0001 C CNN
	1    5200 4000
	-1   0    0    1   
$EndComp
$Comp
L Device:Voltage_Divider RN12
U 1 1 60252DDE
P 4800 4450
F 0 "RN12" V 4675 4450 50  0000 C CNN
F 1 "Div" V 4584 4450 50  0000 C CNN
F 2 "footprints:R_0805_Divider" V 5275 4450 50  0001 C CNN
F 3 "~" H 5000 4450 50  0001 C CNN
	1    4800 4450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4800 4100 4800 4300
Wire Wire Line
	4100 4100 4800 4100
Wire Wire Line
	4300 4000 5050 4000
Wire Wire Line
	4800 3900 4800 3700
Wire Wire Line
	4500 3900 4800 3900
$Comp
L power:+3.3VA #PWR0136
U 1 1 60252DE9
P 4500 3500
F 0 "#PWR0136" H 4500 3350 50  0001 C CNN
F 1 "+3.3VA" H 4515 3673 50  0000 C CNN
F 2 "" H 4500 3500 50  0001 C CNN
F 3 "" H 4500 3500 50  0001 C CNN
	1    4500 3500
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR0137
U 1 1 60252DEF
P 5250 3700
F 0 "#PWR0137" H 5250 3550 50  0001 C CNN
F 1 "+3.3VA" H 5265 3873 50  0000 C CNN
F 2 "" H 5250 3700 50  0001 C CNN
F 3 "" H 5250 3700 50  0001 C CNN
	1    5250 3700
	0    1    1    0   
$EndComp
$Comp
L power:+3.3VA #PWR0138
U 1 1 60252DF5
P 5100 4500
F 0 "#PWR0138" H 5100 4350 50  0001 C CNN
F 1 "+3.3VA" H 5115 4673 50  0000 C CNN
F 2 "" H 5100 4500 50  0001 C CNN
F 3 "" H 5100 4500 50  0001 C CNN
	1    5100 4500
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0139
U 1 1 60252DFB
P 4500 4500
F 0 "#PWR0139" H 4500 4250 50  0001 C CNN
F 1 "GND" H 4505 4327 50  0000 C CNN
F 2 "" H 4500 4500 50  0001 C CNN
F 3 "" H 4500 4500 50  0001 C CNN
	1    4500 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0140
U 1 1 60252E01
P 5250 4300
F 0 "#PWR0140" H 5250 4050 50  0001 C CNN
F 1 "GND" H 5255 4127 50  0000 C CNN
F 2 "" H 5250 4300 50  0001 C CNN
F 3 "" H 5250 4300 50  0001 C CNN
	1    5250 4300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0141
U 1 1 60252E07
P 5100 3500
F 0 "#PWR0141" H 5100 3250 50  0001 C CNN
F 1 "GND" H 5105 3327 50  0000 C CNN
F 2 "" H 5100 3500 50  0001 C CNN
F 3 "" H 5100 3500 50  0001 C CNN
	1    5100 3500
	-1   0    0    1   
$EndComp
Wire Wire Line
	5050 3550 5100 3550
Wire Wire Line
	5100 3550 5100 3500
Wire Wire Line
	4500 3500 4500 3550
Wire Wire Line
	4500 3550 4550 3550
Wire Wire Line
	4500 4500 4500 4450
Wire Wire Line
	4500 4450 4550 4450
Wire Wire Line
	5050 4450 5100 4450
Wire Wire Line
	5100 4450 5100 4500
Wire Wire Line
	5200 4250 5200 4300
Wire Wire Line
	5200 4300 5250 4300
Wire Wire Line
	5200 3750 5200 3700
Wire Wire Line
	5200 3700 5250 3700
Text Label 4800 4100 2    50   ~ 0
CH3
$Comp
L Device:Voltage_Divider RN13
U 1 1 60386DF6
P 9100 4300
F 0 "RN13" H 9021 4346 50  0000 R CNN
F 1 "Div" H 9021 4255 50  0000 R CNN
F 2 "footprints:R_0805_Divider" V 9575 4300 50  0001 C CNN
F 3 "~" H 9300 4300 50  0001 C CNN
	1    9100 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 4300 9450 4300
Wire Wire Line
	9100 4550 9300 4550
Wire Wire Line
	9300 4550 9300 4600
Wire Wire Line
	9300 4400 9300 4550
Connection ~ 9300 4550
Wire Wire Line
	9100 4050 9300 4050
Wire Wire Line
	9300 4050 9300 4000
Wire Wire Line
	9300 4050 9300 4200
Connection ~ 9300 4050
$Comp
L Device:Voltage_Divider RN14
U 1 1 603CFB82
P 10150 4300
F 0 "RN14" H 10071 4346 50  0000 R CNN
F 1 "Div" H 10071 4255 50  0000 R CNN
F 2 "footprints:R_0805_Divider" V 10625 4300 50  0001 C CNN
F 3 "~" H 10350 4300 50  0001 C CNN
	1    10150 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 4300 10500 4300
Wire Wire Line
	10150 4050 10350 4050
Wire Wire Line
	10350 4050 10350 4000
Wire Wire Line
	10350 4050 10350 4200
Connection ~ 10350 4050
Wire Wire Line
	10150 4550 10350 4550
Wire Wire Line
	10350 4400 10350 4550
Wire Wire Line
	10350 4550 10350 4600
Connection ~ 10350 4550
$EndSCHEMATC
