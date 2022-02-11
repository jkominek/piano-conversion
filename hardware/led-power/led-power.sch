EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
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
L Connector:Conn_01x02_Male J1
U 1 1 5FAB9BDD
P 1950 1150
F 0 "J1" H 2058 1331 50  0000 C CNN
F 1 "String1" H 2058 1240 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x02_Pitch2.54mm" H 1950 1150 50  0001 C CNN
F 3 "~" H 1950 1150 50  0001 C CNN
	1    1950 1150
	1    0    0    -1  
$EndComp
$Comp
L power:+48V #PWR0101
U 1 1 5FAB9E35
P 2300 850
F 0 "#PWR0101" H 2300 700 50  0001 C CNN
F 1 "+48V" H 2315 1023 50  0000 C CNN
F 2 "" H 2300 850 50  0001 C CNN
F 3 "" H 2300 850 50  0001 C CNN
	1    2300 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 1100 2300 1150
Wire Wire Line
	2300 1150 2150 1150
$Comp
L Device:Q_NMOS_GDS Q1
U 1 1 5FABA2D7
P 2200 1550
F 0 "Q1" H 2404 1596 50  0000 L CNN
F 1 "Q_NMOS_GDS" H 2404 1505 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220-3_Vertical" H 2400 1650 50  0001 C CNN
F 3 "~" H 2200 1550 50  0001 C CNN
	1    2200 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 1250 2300 1250
Wire Wire Line
	2300 1250 2300 1350
$Comp
L Device:R_Small_US R1
U 1 1 5FABB3AC
P 2300 1950
F 0 "R1" H 2368 1996 50  0000 L CNN
F 1 "100" H 2368 1905 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" H 2300 1950 50  0001 C CNN
F 3 "~" H 2300 1950 50  0001 C CNN
	1    2300 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5FABBF12
P 2300 2150
F 0 "#PWR0102" H 2300 1900 50  0001 C CNN
F 1 "GND" H 2305 1977 50  0000 C CNN
F 2 "" H 2300 2150 50  0001 C CNN
F 3 "" H 2300 2150 50  0001 C CNN
	1    2300 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 2150 2300 2100
Wire Wire Line
	2300 1850 2300 1800
$Comp
L Amplifier_Operational:LM6171D U1
U 1 1 5FABDED4
P 1550 1550
F 0 "U1" H 1550 1900 50  0000 L CNN
F 1 "MCP6V51" H 1550 1800 50  0000 L CNN
F 2 "Housings_SSOP:MSOP-8_3x3mm_Pitch0.65mm" H 1450 1350 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm6171.pdf" H 1700 1700 50  0001 C CNN
	1    1550 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1550 2000 1550
Wire Wire Line
	1950 1950 1950 1800
Wire Wire Line
	1950 1800 2300 1800
Connection ~ 2300 1800
Wire Wire Line
	2300 1800 2300 1750
Wire Wire Line
	1200 1950 1200 1650
Wire Wire Line
	1200 1650 1250 1650
Wire Wire Line
	1200 1950 1950 1950
Wire Wire Line
	1250 1450 900  1450
Text Label 900  1450 0    50   ~ 0
VREF
Wire Wire Line
	1450 2100 2300 2100
Wire Wire Line
	1450 1850 1450 2100
Connection ~ 2300 2100
Wire Wire Line
	2300 2100 2300 2050
Wire Wire Line
	1450 1150 1450 1200
$Comp
L Connector:Screw_Terminal_01x02 J9
U 1 1 5FAC32D4
P 11500 1250
F 0 "J9" H 11580 1242 50  0000 L CNN
F 1 "PowerInput" H 11580 1151 50  0000 L CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 11500 1250 50  0001 C CNN
F 3 "~" H 11500 1250 50  0001 C CNN
	1    11500 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5FAC46C2
P 10700 1550
F 0 "#PWR0104" H 10700 1300 50  0001 C CNN
F 1 "GND" H 10705 1377 50  0000 C CNN
F 2 "" H 10700 1550 50  0001 C CNN
F 3 "" H 10700 1550 50  0001 C CNN
	1    10700 1550
	1    0    0    -1  
$EndComp
$Comp
L power:+48V #PWR0105
U 1 1 5FAC4A3D
P 10700 1150
F 0 "#PWR0105" H 10700 1000 50  0001 C CNN
F 1 "+48V" H 10715 1323 50  0000 C CNN
F 2 "" H 10700 1150 50  0001 C CNN
F 3 "" H 10700 1150 50  0001 C CNN
	1    10700 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 1150 10700 1200
Wire Wire Line
	10700 1350 10700 1450
Wire Wire Line
	14150 2000 14000 2000
Wire Wire Line
	14000 2000 14000 1850
Wire Wire Line
	14750 2000 14850 2000
Wire Wire Line
	14450 2300 14450 2400
Wire Wire Line
	14450 2400 14850 2400
Wire Wire Line
	15000 2400 15000 2500
$Comp
L power:GND #PWR0108
U 1 1 5FADBD80
P 15000 2500
F 0 "#PWR0108" H 15000 2250 50  0001 C CNN
F 1 "GND" H 15005 2327 50  0000 C CNN
F 2 "" H 15000 2500 50  0001 C CNN
F 3 "" H 15000 2500 50  0001 C CNN
	1    15000 2500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0109
U 1 1 5FADC62B
P 14000 1850
F 0 "#PWR0109" H 14000 1700 50  0001 C CNN
F 1 "+5V" H 14015 2023 50  0000 C CNN
F 2 "" H 14000 1850 50  0001 C CNN
F 3 "" H 14000 1850 50  0001 C CNN
	1    14000 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C9
U 1 1 5FAE2C41
P 10450 1300
F 0 "C9" H 10541 1346 50  0000 L CNN
F 1 "Lots" H 10541 1255 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D16.0mm_P7.50mm" H 10450 1300 50  0001 C CNN
F 3 "~" H 10450 1300 50  0001 C CNN
	1    10450 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 1200 10450 1200
Connection ~ 10700 1200
Wire Wire Line
	10700 1200 10700 1250
Wire Wire Line
	10450 1400 10450 1450
Wire Wire Line
	10450 1450 10700 1450
Connection ~ 10700 1450
Wire Wire Line
	10700 1450 10700 1550
$Comp
L Device:C_Small C10
U 1 1 5FAC3DE6
P 10100 1300
F 0 "C10" H 10192 1346 50  0000 L CNN
F 1 ".1uF" H 10192 1255 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10100 1300 50  0001 C CNN
F 3 "~" H 10100 1300 50  0001 C CNN
	1    10100 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 1200 10100 1200
Connection ~ 10450 1200
Wire Wire Line
	10100 1400 10100 1450
Wire Wire Line
	10100 1450 10450 1450
Connection ~ 10450 1450
$Comp
L Device:C_Small C20
U 1 1 5FAC6C81
P 14000 2250
F 0 "C20" H 14092 2296 50  0000 L CNN
F 1 ".1uF" H 14092 2205 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 14000 2250 50  0001 C CNN
F 3 "~" H 14000 2250 50  0001 C CNN
	1    14000 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	14000 2000 14000 2150
Connection ~ 14000 2000
Wire Wire Line
	14000 2350 14000 2400
Wire Wire Line
	14000 2400 14450 2400
Connection ~ 14450 2400
$Comp
L Device:C_Small C1
U 1 1 5FACB0C3
P 3000 1600
F 0 "C1" H 3092 1646 50  0000 L CNN
F 1 ".1uF" H 3092 1555 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3000 1600 50  0001 C CNN
F 3 "~" H 3000 1600 50  0001 C CNN
	1    3000 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 1150 3000 1150
Wire Wire Line
	3000 1150 3000 1500
Connection ~ 2300 1150
Wire Wire Line
	3000 1700 3000 2100
Wire Wire Line
	3000 2100 2300 2100
$Comp
L MCP1501:MCP1501 U11
U 1 1 5FAD0643
P 13350 3750
F 0 "U11" H 13350 4265 50  0000 C CNN
F 1 "MCP1501" H 13350 4174 50  0000 C CNN
F 2 "SMD_Packages:SOIC-8-N" H 13350 3750 50  0001 C CNN
F 3 "DOCUMENTATION" H 13350 3750 50  0001 C CNN
	1    13350 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5FAD37F8
P 13350 4350
F 0 "#PWR0110" H 13350 4100 50  0001 C CNN
F 1 "GND" H 13355 4177 50  0000 C CNN
F 2 "" H 13350 4350 50  0001 C CNN
F 3 "" H 13350 4350 50  0001 C CNN
	1    13350 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	12600 3900 12550 3900
Wire Wire Line
	12550 3900 12550 4250
Wire Wire Line
	12550 4250 13350 4250
Wire Wire Line
	13350 4250 13350 4350
Wire Wire Line
	12600 3700 12550 3700
Wire Wire Line
	12550 3700 12550 3900
Connection ~ 12550 3900
Wire Wire Line
	14100 3800 14150 3800
Wire Wire Line
	14150 3800 14150 3900
Wire Wire Line
	14150 4250 13350 4250
Connection ~ 13350 4250
Wire Wire Line
	14100 3900 14150 3900
Connection ~ 14150 3900
Wire Wire Line
	14150 3900 14150 4250
Wire Wire Line
	14100 3700 14150 3700
Text Label 14450 3700 2    50   ~ 0
VREF
Wire Wire Line
	12150 3600 12150 3550
$Comp
L power:+5V #PWR0111
U 1 1 5FADDB32
P 12150 3550
F 0 "#PWR0111" H 12150 3400 50  0001 C CNN
F 1 "+5V" H 12165 3723 50  0000 C CNN
F 2 "" H 12150 3550 50  0001 C CNN
F 3 "" H 12150 3550 50  0001 C CNN
	1    12150 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	14100 3600 14150 3600
Wire Wire Line
	14150 3600 14150 3700
Connection ~ 14150 3700
Wire Wire Line
	14150 3700 14300 3700
$Comp
L Device:C_Small C29
U 1 1 5FADF543
P 12300 3950
F 0 "C29" H 12392 3996 50  0000 L CNN
F 1 "2.2uF" H 12392 3905 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 12300 3950 50  0001 C CNN
F 3 "~" H 12300 3950 50  0001 C CNN
	1    12300 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	12300 3850 12300 3600
Connection ~ 12300 3600
Wire Wire Line
	12300 3600 12150 3600
Wire Wire Line
	12300 4050 12300 4250
Wire Wire Line
	12300 4250 12550 4250
Connection ~ 12550 4250
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 5FB05536
P 1950 2900
F 0 "J2" H 2058 3081 50  0000 C CNN
F 1 "String2" H 2058 2990 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x02_Pitch2.54mm" H 1950 2900 50  0001 C CNN
F 3 "~" H 1950 2900 50  0001 C CNN
	1    1950 2900
	1    0    0    -1  
$EndComp
$Comp
L power:+48V #PWR0112
U 1 1 5FB0553C
P 2300 2600
F 0 "#PWR0112" H 2300 2450 50  0001 C CNN
F 1 "+48V" H 2315 2773 50  0000 C CNN
F 2 "" H 2300 2600 50  0001 C CNN
F 3 "" H 2300 2600 50  0001 C CNN
	1    2300 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 2850 2300 2900
Wire Wire Line
	2300 2900 2150 2900
$Comp
L Device:Q_NMOS_GDS Q2
U 1 1 5FB05544
P 2200 3300
F 0 "Q2" H 2404 3346 50  0000 L CNN
F 1 "Q_NMOS_GDS" H 2404 3255 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220-3_Vertical" H 2400 3400 50  0001 C CNN
F 3 "~" H 2200 3300 50  0001 C CNN
	1    2200 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 3000 2300 3000
Wire Wire Line
	2300 3000 2300 3100
$Comp
L Device:R_Small_US R2
U 1 1 5FB0554C
P 2300 3700
F 0 "R2" H 2368 3746 50  0000 L CNN
F 1 "100" H 2368 3655 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" H 2300 3700 50  0001 C CNN
F 3 "~" H 2300 3700 50  0001 C CNN
	1    2300 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5FB05552
P 2300 3900
F 0 "#PWR0113" H 2300 3650 50  0001 C CNN
F 1 "GND" H 2305 3727 50  0000 C CNN
F 2 "" H 2300 3900 50  0001 C CNN
F 3 "" H 2300 3900 50  0001 C CNN
	1    2300 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 3900 2300 3850
Wire Wire Line
	2300 3600 2300 3550
$Comp
L Amplifier_Operational:LM6171D U2
U 1 1 5FB0555A
P 1550 3300
F 0 "U2" H 1550 3650 50  0000 L CNN
F 1 "MCP6V51" H 1550 3550 50  0000 L CNN
F 2 "Housings_SSOP:MSOP-8_3x3mm_Pitch0.65mm" H 1450 3100 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm6171.pdf" H 1700 3450 50  0001 C CNN
	1    1550 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 3300 2000 3300
Wire Wire Line
	1950 3700 1950 3550
Wire Wire Line
	1950 3550 2300 3550
Connection ~ 2300 3550
Wire Wire Line
	2300 3550 2300 3500
Wire Wire Line
	1200 3700 1200 3400
Wire Wire Line
	1200 3400 1250 3400
Wire Wire Line
	1200 3700 1950 3700
Wire Wire Line
	1250 3200 900  3200
Text Label 900  3200 0    50   ~ 0
VREF
Wire Wire Line
	1450 3850 2300 3850
Wire Wire Line
	1450 3600 1450 3850
Connection ~ 2300 3850
Wire Wire Line
	2300 3850 2300 3800
$Comp
L Device:C_Small C2
U 1 1 5FB05575
P 3000 3350
F 0 "C2" H 3092 3396 50  0000 L CNN
F 1 ".1uF" H 3092 3305 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3000 3350 50  0001 C CNN
F 3 "~" H 3000 3350 50  0001 C CNN
	1    3000 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 2900 3000 2900
Wire Wire Line
	3000 2900 3000 3250
Connection ~ 2300 2900
Wire Wire Line
	3000 3450 3000 3850
Wire Wire Line
	3000 3850 2300 3850
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 5FB0C24C
P 1950 4650
F 0 "J3" H 2058 4831 50  0000 C CNN
F 1 "String3" H 2058 4740 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x02_Pitch2.54mm" H 1950 4650 50  0001 C CNN
F 3 "~" H 1950 4650 50  0001 C CNN
	1    1950 4650
	1    0    0    -1  
$EndComp
$Comp
L power:+48V #PWR0115
U 1 1 5FB0C252
P 2300 4350
F 0 "#PWR0115" H 2300 4200 50  0001 C CNN
F 1 "+48V" H 2315 4523 50  0000 C CNN
F 2 "" H 2300 4350 50  0001 C CNN
F 3 "" H 2300 4350 50  0001 C CNN
	1    2300 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 4600 2300 4650
Wire Wire Line
	2300 4650 2150 4650
$Comp
L Device:Q_NMOS_GDS Q3
U 1 1 5FB0C25A
P 2200 5050
F 0 "Q3" H 2404 5096 50  0000 L CNN
F 1 "Q_NMOS_GDS" H 2404 5005 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220-3_Vertical" H 2400 5150 50  0001 C CNN
F 3 "~" H 2200 5050 50  0001 C CNN
	1    2200 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 4750 2300 4750
Wire Wire Line
	2300 4750 2300 4850
$Comp
L Device:R_Small_US R3
U 1 1 5FB0C262
P 2300 5450
F 0 "R3" H 2368 5496 50  0000 L CNN
F 1 "100" H 2368 5405 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" H 2300 5450 50  0001 C CNN
F 3 "~" H 2300 5450 50  0001 C CNN
	1    2300 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5FB0C268
P 2300 5650
F 0 "#PWR0116" H 2300 5400 50  0001 C CNN
F 1 "GND" H 2305 5477 50  0000 C CNN
F 2 "" H 2300 5650 50  0001 C CNN
F 3 "" H 2300 5650 50  0001 C CNN
	1    2300 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 5650 2300 5600
Wire Wire Line
	2300 5350 2300 5300
$Comp
L Amplifier_Operational:LM6171D U3
U 1 1 5FB0C270
P 1550 5050
F 0 "U3" H 1550 5400 50  0000 L CNN
F 1 "MCP6V51" H 1550 5300 50  0000 L CNN
F 2 "Housings_SSOP:MSOP-8_3x3mm_Pitch0.65mm" H 1450 4850 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm6171.pdf" H 1700 5200 50  0001 C CNN
	1    1550 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 5050 2000 5050
Wire Wire Line
	1950 5450 1950 5300
Wire Wire Line
	1950 5300 2300 5300
Connection ~ 2300 5300
Wire Wire Line
	2300 5300 2300 5250
Wire Wire Line
	1200 5450 1200 5150
Wire Wire Line
	1200 5150 1250 5150
Wire Wire Line
	1200 5450 1950 5450
Wire Wire Line
	1250 4950 900  4950
Text Label 900  4950 0    50   ~ 0
VREF
Wire Wire Line
	1450 5600 2300 5600
Wire Wire Line
	1450 5350 1450 5600
Connection ~ 2300 5600
Wire Wire Line
	2300 5600 2300 5550
Wire Wire Line
	1450 4650 1450 4750
$Comp
L Device:C_Small C3
U 1 1 5FB0C28B
P 3000 5100
F 0 "C3" H 3092 5146 50  0000 L CNN
F 1 ".1uF" H 3092 5055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3000 5100 50  0001 C CNN
F 3 "~" H 3000 5100 50  0001 C CNN
	1    3000 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 4650 3000 4650
Wire Wire Line
	3000 4650 3000 5000
Connection ~ 2300 4650
Wire Wire Line
	3000 5200 3000 5600
Wire Wire Line
	3000 5600 2300 5600
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 5FB14AAD
P 1950 6400
F 0 "J4" H 2058 6581 50  0000 C CNN
F 1 "String4" H 2058 6490 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x02_Pitch2.54mm" H 1950 6400 50  0001 C CNN
F 3 "~" H 1950 6400 50  0001 C CNN
	1    1950 6400
	1    0    0    -1  
$EndComp
$Comp
L power:+48V #PWR0118
U 1 1 5FB14AB3
P 2300 6100
F 0 "#PWR0118" H 2300 5950 50  0001 C CNN
F 1 "+48V" H 2315 6273 50  0000 C CNN
F 2 "" H 2300 6100 50  0001 C CNN
F 3 "" H 2300 6100 50  0001 C CNN
	1    2300 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 6350 2300 6400
Wire Wire Line
	2300 6400 2150 6400
$Comp
L Device:Q_NMOS_GDS Q4
U 1 1 5FB14ABB
P 2200 6800
F 0 "Q4" H 2404 6846 50  0000 L CNN
F 1 "Q_NMOS_GDS" H 2404 6755 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220-3_Vertical" H 2400 6900 50  0001 C CNN
F 3 "~" H 2200 6800 50  0001 C CNN
	1    2200 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 6500 2300 6500
Wire Wire Line
	2300 6500 2300 6600
$Comp
L Device:R_Small_US R4
U 1 1 5FB14AC3
P 2300 7200
F 0 "R4" H 2368 7246 50  0000 L CNN
F 1 "100" H 2368 7155 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" H 2300 7200 50  0001 C CNN
F 3 "~" H 2300 7200 50  0001 C CNN
	1    2300 7200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5FB14AC9
P 2300 7400
F 0 "#PWR0119" H 2300 7150 50  0001 C CNN
F 1 "GND" H 2305 7227 50  0000 C CNN
F 2 "" H 2300 7400 50  0001 C CNN
F 3 "" H 2300 7400 50  0001 C CNN
	1    2300 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 7400 2300 7350
Wire Wire Line
	2300 7100 2300 7050
$Comp
L Amplifier_Operational:LM6171D U4
U 1 1 5FB14AD1
P 1550 6800
F 0 "U4" H 1550 7150 50  0000 L CNN
F 1 "MCP6V51" H 1550 7050 50  0000 L CNN
F 2 "Housings_SSOP:MSOP-8_3x3mm_Pitch0.65mm" H 1450 6600 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm6171.pdf" H 1700 6950 50  0001 C CNN
	1    1550 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 6800 2000 6800
Wire Wire Line
	1950 7200 1950 7050
Wire Wire Line
	1950 7050 2300 7050
Connection ~ 2300 7050
Wire Wire Line
	2300 7050 2300 7000
Wire Wire Line
	1200 7200 1200 6900
Wire Wire Line
	1200 6900 1250 6900
Wire Wire Line
	1200 7200 1950 7200
Wire Wire Line
	1250 6700 900  6700
Text Label 900  6700 0    50   ~ 0
VREF
Wire Wire Line
	1450 7350 2300 7350
Wire Wire Line
	1450 7100 1450 7350
Connection ~ 2300 7350
Wire Wire Line
	2300 7350 2300 7300
Wire Wire Line
	1450 6400 1450 6450
$Comp
L Device:C_Small C4
U 1 1 5FB14AEC
P 3000 6850
F 0 "C4" H 3092 6896 50  0000 L CNN
F 1 ".1uF" H 3092 6805 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3000 6850 50  0001 C CNN
F 3 "~" H 3000 6850 50  0001 C CNN
	1    3000 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 6400 3000 6400
Wire Wire Line
	3000 6400 3000 6750
Connection ~ 2300 6400
Wire Wire Line
	3000 6950 3000 7350
Wire Wire Line
	3000 7350 2300 7350
$Comp
L Connector:Conn_01x02_Male J5
U 1 1 5FB1EF03
P 4750 1150
F 0 "J5" H 4858 1331 50  0000 C CNN
F 1 "String5" H 4858 1240 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x02_Pitch2.54mm" H 4750 1150 50  0001 C CNN
F 3 "~" H 4750 1150 50  0001 C CNN
	1    4750 1150
	1    0    0    -1  
$EndComp
$Comp
L power:+48V #PWR0121
U 1 1 5FB1EF09
P 5100 850
F 0 "#PWR0121" H 5100 700 50  0001 C CNN
F 1 "+48V" H 5115 1023 50  0000 C CNN
F 2 "" H 5100 850 50  0001 C CNN
F 3 "" H 5100 850 50  0001 C CNN
	1    5100 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 1100 5100 1150
Wire Wire Line
	5100 1150 4950 1150
$Comp
L Device:Q_NMOS_GDS Q5
U 1 1 5FB1EF11
P 5000 1550
F 0 "Q5" H 5204 1596 50  0000 L CNN
F 1 "Q_NMOS_GDS" H 5204 1505 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220-3_Vertical" H 5200 1650 50  0001 C CNN
F 3 "~" H 5000 1550 50  0001 C CNN
	1    5000 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 1250 5100 1250
Wire Wire Line
	5100 1250 5100 1350
$Comp
L Device:R_Small_US R5
U 1 1 5FB1EF19
P 5100 1950
F 0 "R5" H 5168 1996 50  0000 L CNN
F 1 "100" H 5168 1905 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" H 5100 1950 50  0001 C CNN
F 3 "~" H 5100 1950 50  0001 C CNN
	1    5100 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 5FB1EF1F
P 5100 2150
F 0 "#PWR0122" H 5100 1900 50  0001 C CNN
F 1 "GND" H 5105 1977 50  0000 C CNN
F 2 "" H 5100 2150 50  0001 C CNN
F 3 "" H 5100 2150 50  0001 C CNN
	1    5100 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2150 5100 2100
Wire Wire Line
	5100 1850 5100 1800
$Comp
L Amplifier_Operational:LM6171D U5
U 1 1 5FB1EF27
P 4350 1550
F 0 "U5" H 4350 1900 50  0000 L CNN
F 1 "MCP6V51" H 4350 1800 50  0000 L CNN
F 2 "Housings_SSOP:MSOP-8_3x3mm_Pitch0.65mm" H 4250 1350 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm6171.pdf" H 4500 1700 50  0001 C CNN
	1    4350 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 1550 4800 1550
Wire Wire Line
	4750 1950 4750 1800
Wire Wire Line
	4750 1800 5100 1800
Connection ~ 5100 1800
Wire Wire Line
	5100 1800 5100 1750
Wire Wire Line
	4000 1950 4000 1650
Wire Wire Line
	4000 1650 4050 1650
Wire Wire Line
	4000 1950 4750 1950
Wire Wire Line
	4050 1450 3700 1450
Text Label 3700 1450 0    50   ~ 0
VREF
Wire Wire Line
	4250 2100 5100 2100
Wire Wire Line
	4250 1850 4250 2100
Connection ~ 5100 2100
Wire Wire Line
	5100 2100 5100 2050
Wire Wire Line
	4250 1150 4250 1200
$Comp
L Device:C_Small C5
U 1 1 5FB1EF42
P 5800 1600
F 0 "C5" H 5892 1646 50  0000 L CNN
F 1 ".1uF" H 5892 1555 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5800 1600 50  0001 C CNN
F 3 "~" H 5800 1600 50  0001 C CNN
	1    5800 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 1150 5800 1150
Wire Wire Line
	5800 1150 5800 1500
Connection ~ 5100 1150
Wire Wire Line
	5800 1700 5800 2100
Wire Wire Line
	5800 2100 5100 2100
$Comp
L Connector:Conn_01x02_Male J6
U 1 1 5FB29960
P 4750 2850
F 0 "J6" H 4858 3031 50  0000 C CNN
F 1 "String6" H 4858 2940 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x02_Pitch2.54mm" H 4750 2850 50  0001 C CNN
F 3 "~" H 4750 2850 50  0001 C CNN
	1    4750 2850
	1    0    0    -1  
$EndComp
$Comp
L power:+48V #PWR0124
U 1 1 5FB29966
P 5100 2550
F 0 "#PWR0124" H 5100 2400 50  0001 C CNN
F 1 "+48V" H 5115 2723 50  0000 C CNN
F 2 "" H 5100 2550 50  0001 C CNN
F 3 "" H 5100 2550 50  0001 C CNN
	1    5100 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2800 5100 2850
Wire Wire Line
	5100 2850 4950 2850
$Comp
L Device:Q_NMOS_GDS Q6
U 1 1 5FB2996E
P 5000 3250
F 0 "Q6" H 5204 3296 50  0000 L CNN
F 1 "Q_NMOS_GDS" H 5204 3205 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220-3_Vertical" H 5200 3350 50  0001 C CNN
F 3 "~" H 5000 3250 50  0001 C CNN
	1    5000 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 2950 5100 2950
Wire Wire Line
	5100 2950 5100 3050
$Comp
L Device:R_Small_US R6
U 1 1 5FB29976
P 5100 3650
F 0 "R6" H 5168 3696 50  0000 L CNN
F 1 "100" H 5168 3605 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" H 5100 3650 50  0001 C CNN
F 3 "~" H 5100 3650 50  0001 C CNN
	1    5100 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 5FB2997C
P 5100 3850
F 0 "#PWR0125" H 5100 3600 50  0001 C CNN
F 1 "GND" H 5105 3677 50  0000 C CNN
F 2 "" H 5100 3850 50  0001 C CNN
F 3 "" H 5100 3850 50  0001 C CNN
	1    5100 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 3850 5100 3800
Wire Wire Line
	5100 3550 5100 3500
$Comp
L Amplifier_Operational:LM6171D U6
U 1 1 5FB29984
P 4350 3250
F 0 "U6" H 4350 3600 50  0000 L CNN
F 1 "MCP6V51" H 4350 3500 50  0000 L CNN
F 2 "Housings_SSOP:MSOP-8_3x3mm_Pitch0.65mm" H 4250 3050 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm6171.pdf" H 4500 3400 50  0001 C CNN
	1    4350 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3250 4800 3250
Wire Wire Line
	4750 3650 4750 3500
Wire Wire Line
	4750 3500 5100 3500
Connection ~ 5100 3500
Wire Wire Line
	5100 3500 5100 3450
Wire Wire Line
	4000 3650 4000 3350
Wire Wire Line
	4000 3350 4050 3350
Wire Wire Line
	4000 3650 4750 3650
Wire Wire Line
	4050 3150 3700 3150
Text Label 3700 3150 0    50   ~ 0
VREF
Wire Wire Line
	4250 3800 5100 3800
Wire Wire Line
	4250 3550 4250 3800
Connection ~ 5100 3800
Wire Wire Line
	5100 3800 5100 3750
Wire Wire Line
	4250 2850 4250 2950
$Comp
L Device:C_Small C6
U 1 1 5FB2999F
P 5800 3300
F 0 "C6" H 5892 3346 50  0000 L CNN
F 1 ".1uF" H 5892 3255 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5800 3300 50  0001 C CNN
F 3 "~" H 5800 3300 50  0001 C CNN
	1    5800 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2850 5800 2850
Wire Wire Line
	5800 2850 5800 3200
Connection ~ 5100 2850
Wire Wire Line
	5800 3400 5800 3800
Wire Wire Line
	5800 3800 5100 3800
$Comp
L Connector:Conn_01x02_Male J7
U 1 1 5FB3C322
P 4750 4650
F 0 "J7" H 4858 4831 50  0000 C CNN
F 1 "String7" H 4858 4740 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x02_Pitch2.54mm" H 4750 4650 50  0001 C CNN
F 3 "~" H 4750 4650 50  0001 C CNN
	1    4750 4650
	1    0    0    -1  
$EndComp
$Comp
L power:+48V #PWR0127
U 1 1 5FB3C328
P 5100 4350
F 0 "#PWR0127" H 5100 4200 50  0001 C CNN
F 1 "+48V" H 5115 4523 50  0000 C CNN
F 2 "" H 5100 4350 50  0001 C CNN
F 3 "" H 5100 4350 50  0001 C CNN
	1    5100 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 4600 5100 4650
Wire Wire Line
	5100 4650 4950 4650
$Comp
L Device:Q_NMOS_GDS Q7
U 1 1 5FB3C330
P 5000 5050
F 0 "Q7" H 5204 5096 50  0000 L CNN
F 1 "Q_NMOS_GDS" H 5204 5005 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220-3_Vertical" H 5200 5150 50  0001 C CNN
F 3 "~" H 5000 5050 50  0001 C CNN
	1    5000 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 4750 5100 4750
Wire Wire Line
	5100 4750 5100 4850
$Comp
L Device:R_Small_US R7
U 1 1 5FB3C338
P 5100 5450
F 0 "R7" H 5168 5496 50  0000 L CNN
F 1 "100" H 5168 5405 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" H 5100 5450 50  0001 C CNN
F 3 "~" H 5100 5450 50  0001 C CNN
	1    5100 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0128
U 1 1 5FB3C33E
P 5100 5650
F 0 "#PWR0128" H 5100 5400 50  0001 C CNN
F 1 "GND" H 5105 5477 50  0000 C CNN
F 2 "" H 5100 5650 50  0001 C CNN
F 3 "" H 5100 5650 50  0001 C CNN
	1    5100 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 5650 5100 5600
Wire Wire Line
	5100 5350 5100 5300
$Comp
L Amplifier_Operational:LM6171D U7
U 1 1 5FB3C346
P 4350 5050
F 0 "U7" H 4350 5400 50  0000 L CNN
F 1 "MCP6V51" H 4350 5300 50  0000 L CNN
F 2 "Housings_SSOP:MSOP-8_3x3mm_Pitch0.65mm" H 4250 4850 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm6171.pdf" H 4500 5200 50  0001 C CNN
	1    4350 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 5050 4800 5050
Wire Wire Line
	4750 5450 4750 5300
Wire Wire Line
	4750 5300 5100 5300
Connection ~ 5100 5300
Wire Wire Line
	5100 5300 5100 5250
Wire Wire Line
	4000 5450 4000 5150
Wire Wire Line
	4000 5150 4050 5150
Wire Wire Line
	4000 5450 4750 5450
Wire Wire Line
	4050 4950 3700 4950
Text Label 3700 4950 0    50   ~ 0
VREF
Wire Wire Line
	4250 5600 5100 5600
Wire Wire Line
	4250 5350 4250 5600
Connection ~ 5100 5600
Wire Wire Line
	5100 5600 5100 5550
Wire Wire Line
	4250 4650 4250 4750
$Comp
L Device:C_Small C7
U 1 1 5FB3C361
P 5800 5100
F 0 "C7" H 5892 5146 50  0000 L CNN
F 1 ".1uF" H 5892 5055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5800 5100 50  0001 C CNN
F 3 "~" H 5800 5100 50  0001 C CNN
	1    5800 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 4650 5800 4650
Wire Wire Line
	5800 4650 5800 5000
Connection ~ 5100 4650
Wire Wire Line
	5800 5200 5800 5600
Wire Wire Line
	5800 5600 5100 5600
$Comp
L Connector:Conn_01x02_Male J8
U 1 1 5FB4BA65
P 4750 6350
F 0 "J8" H 4858 6531 50  0000 C CNN
F 1 "String8" H 4858 6440 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x02_Pitch2.54mm" H 4750 6350 50  0001 C CNN
F 3 "~" H 4750 6350 50  0001 C CNN
	1    4750 6350
	1    0    0    -1  
$EndComp
$Comp
L power:+48V #PWR0130
U 1 1 5FB4BA6B
P 5100 6050
F 0 "#PWR0130" H 5100 5900 50  0001 C CNN
F 1 "+48V" H 5115 6223 50  0000 C CNN
F 2 "" H 5100 6050 50  0001 C CNN
F 3 "" H 5100 6050 50  0001 C CNN
	1    5100 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 6300 5100 6350
Wire Wire Line
	5100 6350 4950 6350
$Comp
L Device:Q_NMOS_GDS Q8
U 1 1 5FB4BA73
P 5000 6750
F 0 "Q8" H 5204 6796 50  0000 L CNN
F 1 "Q_NMOS_GDS" H 5204 6705 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220-3_Vertical" H 5200 6850 50  0001 C CNN
F 3 "~" H 5000 6750 50  0001 C CNN
	1    5000 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 6450 5100 6450
Wire Wire Line
	5100 6450 5100 6550
$Comp
L Device:R_Small_US R8
U 1 1 5FB4BA7B
P 5100 7150
F 0 "R8" H 5168 7196 50  0000 L CNN
F 1 "100" H 5168 7105 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" H 5100 7150 50  0001 C CNN
F 3 "~" H 5100 7150 50  0001 C CNN
	1    5100 7150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0131
U 1 1 5FB4BA81
P 5100 7350
F 0 "#PWR0131" H 5100 7100 50  0001 C CNN
F 1 "GND" H 5105 7177 50  0000 C CNN
F 2 "" H 5100 7350 50  0001 C CNN
F 3 "" H 5100 7350 50  0001 C CNN
	1    5100 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 7350 5100 7300
Wire Wire Line
	5100 7050 5100 7000
$Comp
L Amplifier_Operational:LM6171D U8
U 1 1 5FB4BA89
P 4350 6750
F 0 "U8" H 4350 7100 50  0000 L CNN
F 1 "MCP6V51" H 4350 7000 50  0000 L CNN
F 2 "Housings_SSOP:MSOP-8_3x3mm_Pitch0.65mm" H 4250 6550 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm6171.pdf" H 4500 6900 50  0001 C CNN
	1    4350 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 6750 4800 6750
Wire Wire Line
	4750 7150 4750 7000
Wire Wire Line
	4750 7000 5100 7000
Connection ~ 5100 7000
Wire Wire Line
	5100 7000 5100 6950
Wire Wire Line
	4000 7150 4000 6850
Wire Wire Line
	4000 6850 4050 6850
Wire Wire Line
	4000 7150 4750 7150
Wire Wire Line
	4050 6650 3700 6650
Text Label 3700 6650 0    50   ~ 0
VREF
Wire Wire Line
	4250 7300 5100 7300
Wire Wire Line
	4250 7050 4250 7300
Connection ~ 5100 7300
Wire Wire Line
	5100 7300 5100 7250
Wire Wire Line
	4250 6350 4250 6400
$Comp
L Device:C_Small C8
U 1 1 5FB4BAA4
P 5800 6800
F 0 "C8" H 5892 6846 50  0000 L CNN
F 1 ".1uF" H 5892 6755 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5800 6800 50  0001 C CNN
F 3 "~" H 5800 6800 50  0001 C CNN
	1    5800 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 6350 5800 6350
Wire Wire Line
	5800 6350 5800 6700
Connection ~ 5100 6350
Wire Wire Line
	5800 6900 5800 7300
Wire Wire Line
	5800 7300 5100 7300
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5FB16605
P 7400 1350
F 0 "H1" H 7500 1399 50  0000 L CNN
F 1 "MountingHole_Pad" H 7500 1308 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad_Via" H 7400 1350 50  0001 C CNN
F 3 "~" H 7400 1350 50  0001 C CNN
	1    7400 1350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5FB1786C
P 7750 1350
F 0 "H2" H 7850 1399 50  0000 L CNN
F 1 "MountingHole_Pad" H 7850 1308 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad_Via" H 7750 1350 50  0001 C CNN
F 3 "~" H 7750 1350 50  0001 C CNN
	1    7750 1350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5FB17F4F
P 8100 1350
F 0 "H3" H 8200 1399 50  0000 L CNN
F 1 "MountingHole_Pad" H 8200 1308 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad_Via" H 8100 1350 50  0001 C CNN
F 3 "~" H 8100 1350 50  0001 C CNN
	1    8100 1350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5FB18585
P 8450 1350
F 0 "H4" H 8550 1399 50  0000 L CNN
F 1 "MountingHole_Pad" H 8550 1308 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad_Via" H 8450 1350 50  0001 C CNN
F 3 "~" H 8450 1350 50  0001 C CNN
	1    8450 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 1450 8450 1500
Wire Wire Line
	8450 1500 8100 1500
Wire Wire Line
	7400 1500 7400 1450
Wire Wire Line
	7750 1450 7750 1500
Connection ~ 7750 1500
Wire Wire Line
	7750 1500 7400 1500
Wire Wire Line
	8100 1450 8100 1500
Connection ~ 8100 1500
Wire Wire Line
	8100 1500 7900 1500
Wire Wire Line
	7900 1500 7900 1550
Connection ~ 7900 1500
Wire Wire Line
	7900 1500 7750 1500
$Comp
L power:GND #PWR0133
U 1 1 5FB57A4F
P 7900 1550
F 0 "#PWR0133" H 7900 1300 50  0001 C CNN
F 1 "GND" H 7905 1377 50  0000 C CNN
F 2 "" H 7900 1550 50  0001 C CNN
F 3 "" H 7900 1550 50  0001 C CNN
	1    7900 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D1
U 1 1 5FB8E681
P 2300 1000
F 0 "D1" V 2346 930 50  0000 R CNN
F 1 "LED" V 2255 930 50  0000 R CNN
F 2 "LEDs:LED_0805_HandSoldering" V 2300 1000 50  0001 C CNN
F 3 "~" V 2300 1000 50  0001 C CNN
	1    2300 1000
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D2
U 1 1 5FB8FE5B
P 2300 2750
F 0 "D2" V 2346 2680 50  0000 R CNN
F 1 "LED" V 2255 2680 50  0000 R CNN
F 2 "LEDs:LED_0805_HandSoldering" V 2300 2750 50  0001 C CNN
F 3 "~" V 2300 2750 50  0001 C CNN
	1    2300 2750
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D3
U 1 1 5FB90535
P 2300 4500
F 0 "D3" V 2346 4430 50  0000 R CNN
F 1 "LED" V 2255 4430 50  0000 R CNN
F 2 "LEDs:LED_0805_HandSoldering" V 2300 4500 50  0001 C CNN
F 3 "~" V 2300 4500 50  0001 C CNN
	1    2300 4500
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D7
U 1 1 5FB91888
P 5100 4500
F 0 "D7" V 5146 4430 50  0000 R CNN
F 1 "LED" V 5055 4430 50  0000 R CNN
F 2 "LEDs:LED_0805_HandSoldering" V 5100 4500 50  0001 C CNN
F 3 "~" V 5100 4500 50  0001 C CNN
	1    5100 4500
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D6
U 1 1 5FB9297D
P 5100 2700
F 0 "D6" V 5146 2630 50  0000 R CNN
F 1 "LED" V 5055 2630 50  0000 R CNN
F 2 "LEDs:LED_0805_HandSoldering" V 5100 2700 50  0001 C CNN
F 3 "~" V 5100 2700 50  0001 C CNN
	1    5100 2700
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D5
U 1 1 5FB932A9
P 5100 1000
F 0 "D5" V 5146 930 50  0000 R CNN
F 1 "LED" V 5055 930 50  0000 R CNN
F 2 "LEDs:LED_0805_HandSoldering" V 5100 1000 50  0001 C CNN
F 3 "~" V 5100 1000 50  0001 C CNN
	1    5100 1000
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D4
U 1 1 5FB93815
P 2300 6250
F 0 "D4" V 2346 6180 50  0000 R CNN
F 1 "LED" V 2255 6180 50  0000 R CNN
F 2 "LEDs:LED_0805_HandSoldering" V 2300 6250 50  0001 C CNN
F 3 "~" V 2300 6250 50  0001 C CNN
	1    2300 6250
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D8
U 1 1 5FB93F01
P 5100 6200
F 0 "D8" V 5146 6130 50  0000 R CNN
F 1 "LED" V 5055 6130 50  0000 R CNN
F 2 "LEDs:LED_0805_HandSoldering" V 5100 6200 50  0001 C CNN
F 3 "~" V 5100 6200 50  0001 C CNN
	1    5100 6200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5100 6050 5100 6100
Wire Wire Line
	2300 6100 2300 6150
Wire Wire Line
	2300 2600 2300 2650
Wire Wire Line
	2300 850  2300 900 
Wire Wire Line
	5100 850  5100 900 
Wire Wire Line
	5100 2550 5100 2600
Wire Wire Line
	5100 4350 5100 4400
Wire Wire Line
	2300 4350 2300 4400
$Comp
L Connector:Screw_Terminal_01x02 J10
U 1 1 5FBD2673
P 11500 2250
F 0 "J10" H 11580 2242 50  0000 L CNN
F 1 "PowerInput" H 11580 2151 50  0000 L CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 11500 2250 50  0001 C CNN
F 3 "~" H 11500 2250 50  0001 C CNN
	1    11500 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5FBD2679
P 10700 2550
F 0 "#PWR0103" H 10700 2300 50  0001 C CNN
F 1 "GND" H 10705 2377 50  0000 C CNN
F 2 "" H 10700 2550 50  0001 C CNN
F 3 "" H 10700 2550 50  0001 C CNN
	1    10700 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 2150 10700 2200
Wire Wire Line
	10700 2350 10700 2450
Connection ~ 10700 2200
Wire Wire Line
	10700 2200 10700 2250
Connection ~ 10700 2450
Wire Wire Line
	10700 2450 10700 2550
$Comp
L Device:C_Small C19
U 1 1 5FBD2696
P 10100 2300
F 0 "C19" H 10192 2346 50  0000 L CNN
F 1 ".1uF" H 10192 2255 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10100 2300 50  0001 C CNN
F 3 "~" H 10100 2300 50  0001 C CNN
	1    10100 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 2400 10100 2450
$Comp
L power:+15V #PWR0106
U 1 1 5FBE5A68
P 10700 2150
F 0 "#PWR0106" H 10700 2000 50  0001 C CNN
F 1 "+15V" H 10715 2323 50  0000 C CNN
F 2 "" H 10700 2150 50  0001 C CNN
F 3 "" H 10700 2150 50  0001 C CNN
	1    10700 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 2200 10700 2200
Wire Wire Line
	10100 2450 10700 2450
Wire Wire Line
	15000 1850 15000 2000
$Comp
L power:+15V #PWR0107
U 1 1 5FC59AFB
P 15000 1850
F 0 "#PWR0107" H 15000 1700 50  0001 C CNN
F 1 "+15V" H 15015 2023 50  0000 C CNN
F 2 "" H 15000 1850 50  0001 C CNN
F 3 "" H 15000 1850 50  0001 C CNN
	1    15000 1850
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR0114
U 1 1 5FC5A428
P 4250 1150
F 0 "#PWR0114" H 4250 1000 50  0001 C CNN
F 1 "+15V" H 4265 1323 50  0000 C CNN
F 2 "" H 4250 1150 50  0001 C CNN
F 3 "" H 4250 1150 50  0001 C CNN
	1    4250 1150
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR0117
U 1 1 5FC5AD08
P 1450 1150
F 0 "#PWR0117" H 1450 1000 50  0001 C CNN
F 1 "+15V" H 1465 1323 50  0000 C CNN
F 2 "" H 1450 1150 50  0001 C CNN
F 3 "" H 1450 1150 50  0001 C CNN
	1    1450 1150
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR0120
U 1 1 5FC5B32C
P 1450 2850
F 0 "#PWR0120" H 1450 2700 50  0001 C CNN
F 1 "+15V" H 1465 3023 50  0000 C CNN
F 2 "" H 1450 2850 50  0001 C CNN
F 3 "" H 1450 2850 50  0001 C CNN
	1    1450 2850
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR0123
U 1 1 5FC5BA74
P 4250 2850
F 0 "#PWR0123" H 4250 2700 50  0001 C CNN
F 1 "+15V" H 4265 3023 50  0000 C CNN
F 2 "" H 4250 2850 50  0001 C CNN
F 3 "" H 4250 2850 50  0001 C CNN
	1    4250 2850
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR0126
U 1 1 5FC5C08E
P 4250 4650
F 0 "#PWR0126" H 4250 4500 50  0001 C CNN
F 1 "+15V" H 4265 4823 50  0000 C CNN
F 2 "" H 4250 4650 50  0001 C CNN
F 3 "" H 4250 4650 50  0001 C CNN
	1    4250 4650
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR0129
U 1 1 5FC5C866
P 1450 4650
F 0 "#PWR0129" H 1450 4500 50  0001 C CNN
F 1 "+15V" H 1465 4823 50  0000 C CNN
F 2 "" H 1450 4650 50  0001 C CNN
F 3 "" H 1450 4650 50  0001 C CNN
	1    1450 4650
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR0132
U 1 1 5FC6CC9F
P 1450 6400
F 0 "#PWR0132" H 1450 6250 50  0001 C CNN
F 1 "+15V" H 1465 6573 50  0000 C CNN
F 2 "" H 1450 6400 50  0001 C CNN
F 3 "" H 1450 6400 50  0001 C CNN
	1    1450 6400
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR0134
U 1 1 5FC6D447
P 4250 6350
F 0 "#PWR0134" H 4250 6200 50  0001 C CNN
F 1 "+15V" H 4265 6523 50  0000 C CNN
F 2 "" H 4250 6350 50  0001 C CNN
F 3 "" H 4250 6350 50  0001 C CNN
	1    4250 6350
	1    0    0    -1  
$EndComp
Text Notes 11200 1050 0    50   ~ 0
Meanwell HDR-30-48\n(adjust DOWN, reduces heat in FETs)
Text Notes 11200 2050 0    50   ~ 0
Meanwell HDR-30-15\n(probably safe to adjust this DOWN)
$Comp
L Device:C_Small C11
U 1 1 5FCEE256
P 700 1600
F 0 "C11" H 792 1646 50  0000 L CNN
F 1 ".1uF" H 792 1555 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 700 1600 50  0001 C CNN
F 3 "~" H 700 1600 50  0001 C CNN
	1    700  1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  1500 700  1200
Wire Wire Line
	700  1200 1450 1200
Connection ~ 1450 1200
Wire Wire Line
	1450 1200 1450 1250
Wire Wire Line
	700  1700 700  2100
Wire Wire Line
	700  2100 1450 2100
Connection ~ 1450 2100
$Comp
L Device:C_Small C15
U 1 1 5FD10AA6
P 3550 1600
F 0 "C15" H 3642 1646 50  0000 L CNN
F 1 ".1uF" H 3642 1555 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3550 1600 50  0001 C CNN
F 3 "~" H 3550 1600 50  0001 C CNN
	1    3550 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 1200 3550 1200
Wire Wire Line
	3550 1200 3550 1500
Connection ~ 4250 1200
Wire Wire Line
	4250 1200 4250 1250
Wire Wire Line
	3550 1700 3550 2100
Wire Wire Line
	3550 2100 4250 2100
Connection ~ 4250 2100
$Comp
L Device:C_Small C12
U 1 1 5FD350C4
P 750 3350
F 0 "C12" H 842 3396 50  0000 L CNN
F 1 ".1uF" H 842 3305 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 750 3350 50  0001 C CNN
F 3 "~" H 750 3350 50  0001 C CNN
	1    750  3350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C16
U 1 1 5FD35A09
P 3550 3300
F 0 "C16" H 3642 3346 50  0000 L CNN
F 1 ".1uF" H 3642 3255 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3550 3300 50  0001 C CNN
F 3 "~" H 3550 3300 50  0001 C CNN
	1    3550 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C17
U 1 1 5FD36265
P 3550 5100
F 0 "C17" H 3642 5146 50  0000 L CNN
F 1 ".1uF" H 3642 5055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3550 5100 50  0001 C CNN
F 3 "~" H 3550 5100 50  0001 C CNN
	1    3550 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C13
U 1 1 5FD36BD2
P 750 5100
F 0 "C13" H 842 5146 50  0000 L CNN
F 1 ".1uF" H 842 5055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 750 5100 50  0001 C CNN
F 3 "~" H 750 5100 50  0001 C CNN
	1    750  5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 4750 750  4750
Wire Wire Line
	750  4750 750  5000
Connection ~ 1450 4750
Wire Wire Line
	750  5200 750  5600
Wire Wire Line
	750  5600 1450 5600
Connection ~ 1450 5600
Wire Wire Line
	4250 4750 3550 4750
Wire Wire Line
	3550 4750 3550 5000
Connection ~ 4250 4750
Wire Wire Line
	3550 5200 3550 5600
Wire Wire Line
	3550 5600 4250 5600
Connection ~ 4250 5600
$Comp
L Device:C_Small C18
U 1 1 5FD975AC
P 3550 6800
F 0 "C18" H 3642 6846 50  0000 L CNN
F 1 ".1uF" H 3642 6755 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3550 6800 50  0001 C CNN
F 3 "~" H 3550 6800 50  0001 C CNN
	1    3550 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 6400 3550 6400
Wire Wire Line
	3550 6400 3550 6700
Connection ~ 4250 6400
Wire Wire Line
	4250 6400 4250 6450
Wire Wire Line
	3550 6900 3550 7300
Wire Wire Line
	3550 7300 4250 7300
Connection ~ 4250 7300
$Comp
L Device:C_Small C14
U 1 1 5FDC0DB0
P 800 6850
F 0 "C14" H 892 6896 50  0000 L CNN
F 1 ".1uF" H 892 6805 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 800 6850 50  0001 C CNN
F 3 "~" H 800 6850 50  0001 C CNN
	1    800  6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 6450 800  6450
Wire Wire Line
	800  6450 800  6750
Connection ~ 1450 6450
Wire Wire Line
	1450 6450 1450 6500
Wire Wire Line
	800  6950 800  7350
Wire Wire Line
	800  7350 1450 7350
Connection ~ 1450 7350
Wire Wire Line
	750  3450 750  3850
Wire Wire Line
	750  3850 1450 3850
Connection ~ 1450 3850
Wire Wire Line
	4250 2950 3550 2950
Wire Wire Line
	3550 2950 3550 3200
Connection ~ 4250 2950
Wire Wire Line
	3550 3400 3550 3800
Wire Wire Line
	3550 3800 4250 3800
Connection ~ 4250 3800
$Comp
L Device:C_Small C30
U 1 1 5FE867FE
P 14850 2250
F 0 "C30" H 14942 2296 50  0000 L CNN
F 1 ".1uF" H 14942 2205 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 14850 2250 50  0001 C CNN
F 3 "~" H 14850 2250 50  0001 C CNN
	1    14850 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	14850 2350 14850 2400
Connection ~ 14850 2400
Wire Wire Line
	14850 2400 15000 2400
Wire Wire Line
	14850 2150 14850 2000
Connection ~ 14850 2000
Wire Wire Line
	14850 2000 15000 2000
$Comp
L Device:R_Small_US R0
U 1 1 5FE12C48
P 9800 1300
F 0 "R0" H 9868 1346 50  0000 L CNN
F 1 "Dissipate" H 9868 1255 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 9800 1300 50  0001 C CNN
F 3 "~" H 9800 1300 50  0001 C CNN
	1    9800 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 1200 9800 1200
Connection ~ 10100 1200
Wire Wire Line
	9800 1400 9800 1450
Wire Wire Line
	9800 1450 10100 1450
Connection ~ 10100 1450
$Comp
L Device:D_Small_ALT D9
U 1 1 5FE6401F
P 11050 1250
F 0 "D9" H 11050 1457 50  0000 C CNN
F 1 "D_Small_ALT" H 11050 1366 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-123F" V 11050 1250 50  0001 C CNN
F 3 "~" V 11050 1250 50  0001 C CNN
	1    11050 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Small_ALT D10
U 1 1 5FE64CE3
P 11050 2250
F 0 "D10" H 11050 2457 50  0000 C CNN
F 1 "D_Small_ALT" H 11050 2366 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-123F" V 11050 2250 50  0001 C CNN
F 3 "~" V 11050 2250 50  0001 C CNN
	1    11050 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	11300 2250 11150 2250
Wire Wire Line
	10700 2250 10950 2250
Wire Wire Line
	10700 1250 10950 1250
Wire Wire Line
	11300 1250 11150 1250
Wire Wire Line
	10700 1350 11300 1350
Wire Wire Line
	10700 2350 11300 2350
$Comp
L Connector:Conn_01x04_Female J11
U 1 1 5FF6841D
P 7950 3900
F 0 "J11" H 7842 3475 50  0000 C CNN
F 1 "Qwiic" H 7842 3566 50  0000 C CNN
F 2 "Connectors_JST:JST_SH_SM04B-SRSS-TB_04x1.00mm_Angled" H 7950 3900 50  0001 C CNN
F 3 "~" H 7950 3900 50  0001 C CNN
	1    7950 3900
	1    0    0    1   
$EndComp
Wire Wire Line
	7750 3700 7450 3700
Wire Wire Line
	7750 3800 7450 3800
Wire Wire Line
	7750 3900 7300 3900
Text Label 7450 3700 0    50   ~ 0
SCL
Text Label 7450 3800 0    50   ~ 0
SDA
Wire Wire Line
	7300 3900 7300 3800
$Comp
L power:+3.3V #PWR0135
U 1 1 6007E805
P 7300 3800
F 0 "#PWR0135" H 7300 3650 50  0001 C CNN
F 1 "+3.3V" H 7315 3973 50  0000 C CNN
F 2 "" H 7300 3800 50  0001 C CNN
F 3 "" H 7300 3800 50  0001 C CNN
	1    7300 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 4000 7300 4100
Wire Wire Line
	7300 4000 7750 4000
$Comp
L power:GND #PWR0136
U 1 1 60099B77
P 7300 4100
F 0 "#PWR0136" H 7300 3850 50  0001 C CNN
F 1 "GND" H 7305 3927 50  0000 C CNN
F 2 "" H 7300 4100 50  0001 C CNN
F 3 "" H 7300 4100 50  0001 C CNN
	1    7300 4100
	1    0    0    -1  
$EndComp
$Comp
L Interface_Expansion:MCP23017_SO U9
U 1 1 600B6799
P 8200 6350
F 0 "U9" H 7950 7350 50  0000 C CNN
F 1 "MCP23017_SO" H 8550 7350 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-28W_7.5x17.9mm_Pitch1.27mm" H 8400 5350 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001952C.pdf" H 8400 5250 50  0001 L CNN
	1    8200 6350
	1    0    0    -1  
$EndComp
NoConn ~ 7500 6150
$Comp
L power:GND #PWR0137
U 1 1 600ECF78
P 8200 7600
F 0 "#PWR0137" H 8200 7350 50  0001 C CNN
F 1 "GND" H 8205 7427 50  0000 C CNN
F 2 "" H 8200 7600 50  0001 C CNN
F 3 "" H 8200 7600 50  0001 C CNN
	1    8200 7600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 6950 7350 6950
Wire Wire Line
	8200 7500 8200 7450
Wire Wire Line
	8200 7500 8200 7600
Connection ~ 8200 7500
Wire Wire Line
	7500 7150 7350 7150
$Comp
L power:+3.3V #PWR0138
U 1 1 60152BAB
P 8200 5150
F 0 "#PWR0138" H 8200 5000 50  0001 C CNN
F 1 "+3.3V" H 8215 5323 50  0000 C CNN
F 2 "" H 8200 5150 50  0001 C CNN
F 3 "" H 8200 5150 50  0001 C CNN
	1    8200 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 5150 8200 5200
Wire Wire Line
	7500 5650 7150 5650
Wire Wire Line
	7500 5550 7150 5550
Text Label 7150 5650 0    50   ~ 0
SCL
Text Label 7150 5550 0    50   ~ 0
SDA
$Comp
L power:+3.3V #PWR0139
U 1 1 601BC759
P 7350 6400
F 0 "#PWR0139" H 7350 6250 50  0001 C CNN
F 1 "+3.3V" H 7365 6573 50  0000 C CNN
F 2 "" H 7350 6400 50  0001 C CNN
F 3 "" H 7350 6400 50  0001 C CNN
	1    7350 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 6400 7350 6450
Wire Wire Line
	7350 6450 7500 6450
$Comp
L Device:R_Small_US R14
U 1 1 602035F2
P 9250 6450
F 0 "R14" V 9200 6300 50  0000 C CNN
F 1 "43k" V 9200 6650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 9250 6450 50  0001 C CNN
F 3 "~" H 9250 6450 50  0001 C CNN
	1    9250 6450
	0    1    1    0   
$EndComp
Wire Wire Line
	8900 6450 9150 6450
Wire Wire Line
	9150 6550 8900 6550
Wire Wire Line
	8900 6650 9150 6650
Wire Wire Line
	9150 6750 8900 6750
Wire Wire Line
	8900 6850 9150 6850
Wire Wire Line
	9150 6950 8900 6950
Wire Wire Line
	8900 7050 9150 7050
Wire Wire Line
	9150 7150 8900 7150
Wire Wire Line
	9350 6450 10000 6450
Wire Wire Line
	9350 6550 10000 6550
Wire Wire Line
	9350 6650 10000 6650
Wire Wire Line
	9350 6750 10000 6750
Wire Wire Line
	9350 6850 10000 6850
Wire Wire Line
	9350 6950 10000 6950
Wire Wire Line
	9350 7050 10000 7050
Wire Wire Line
	9350 7150 10000 7150
$Comp
L Device:R_Small_US R13
U 1 1 603F89C4
P 9250 6550
F 0 "R13" V 9200 6400 50  0000 C CNN
F 1 "43k" V 9200 6750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 9250 6550 50  0001 C CNN
F 3 "~" H 9250 6550 50  0001 C CNN
	1    9250 6550
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R12
U 1 1 603F8CDC
P 9250 6650
F 0 "R12" V 9200 6500 50  0000 C CNN
F 1 "43k" V 9200 6850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 9250 6650 50  0001 C CNN
F 3 "~" H 9250 6650 50  0001 C CNN
	1    9250 6650
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R11
U 1 1 603F8FB6
P 9250 6750
F 0 "R11" V 9200 6600 50  0000 C CNN
F 1 "43k" V 9200 6950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 9250 6750 50  0001 C CNN
F 3 "~" H 9250 6750 50  0001 C CNN
	1    9250 6750
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R18
U 1 1 603F9235
P 9250 6850
F 0 "R18" V 9200 6700 50  0000 C CNN
F 1 "43k" V 9200 7050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 9250 6850 50  0001 C CNN
F 3 "~" H 9250 6850 50  0001 C CNN
	1    9250 6850
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R17
U 1 1 603F95ED
P 9250 6950
F 0 "R17" V 9200 6800 50  0000 C CNN
F 1 "43k" V 9200 7150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 9250 6950 50  0001 C CNN
F 3 "~" H 9250 6950 50  0001 C CNN
	1    9250 6950
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R16
U 1 1 603F9909
P 9250 7050
F 0 "R16" V 9200 6900 50  0000 C CNN
F 1 "43k" V 9200 7250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 9250 7050 50  0001 C CNN
F 3 "~" H 9250 7050 50  0001 C CNN
	1    9250 7050
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R15
U 1 1 603F9BA0
P 9250 7150
F 0 "R15" V 9200 7000 50  0000 C CNN
F 1 "43k" V 9200 7350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 9250 7150 50  0001 C CNN
F 3 "~" H 9250 7150 50  0001 C CNN
	1    9250 7150
	0    1    1    0   
$EndComp
Text Label 1550 1950 0    50   ~ 0
Feedback1
Text Label 1550 3700 0    50   ~ 0
Feedback2
Text Label 1550 5450 0    50   ~ 0
Feedback3
Text Label 1550 7200 0    50   ~ 0
Feedback4
Text Label 4350 1950 0    50   ~ 0
Feedback5
Text Label 4350 3650 0    50   ~ 0
Feedback6
Text Label 4350 5450 0    50   ~ 0
Feedback7
Text Label 4350 7150 0    50   ~ 0
Feedback8
Text Label 9600 6850 0    50   ~ 0
Feedback8
Text Label 9600 6950 0    50   ~ 0
Feedback7
Text Label 9600 7050 0    50   ~ 0
Feedback6
Text Label 9600 7150 0    50   ~ 0
Feedback5
Text Label 9600 6750 0    50   ~ 0
Feedback1
Text Label 9600 6650 0    50   ~ 0
Feedback2
Text Label 9600 6550 0    50   ~ 0
Feedback3
Text Label 9600 6450 0    50   ~ 0
Feedback4
$Comp
L Device:C_Small C22
U 1 1 605693FE
P 6900 5950
F 0 "C22" H 6992 5996 50  0000 L CNN
F 1 "0.1uF" H 6992 5905 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6900 5950 50  0001 C CNN
F 3 "~" H 6900 5950 50  0001 C CNN
	1    6900 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C21
U 1 1 605698C6
P 6550 5950
F 0 "C21" H 6642 5996 50  0000 L CNN
F 1 "4.7uF" H 6642 5905 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6550 5950 50  0001 C CNN
F 3 "~" H 6550 5950 50  0001 C CNN
	1    6550 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 6050 6550 6150
Wire Wire Line
	6550 6150 6900 6150
Wire Wire Line
	6900 6150 6900 6050
Wire Wire Line
	6900 6150 6900 7500
Connection ~ 6900 6150
Wire Wire Line
	6900 5850 6900 5750
Wire Wire Line
	6900 5750 6550 5750
Wire Wire Line
	6550 5750 6550 5850
Wire Wire Line
	6900 5750 6900 5200
Wire Wire Line
	6900 5200 8200 5200
Connection ~ 6900 5750
Connection ~ 8200 5200
Wire Wire Line
	8200 5200 8200 5250
Wire Wire Line
	12300 3600 12600 3600
$Comp
L Device:R_Small_US R9
U 1 1 6062366C
P 11850 3600
F 0 "R9" V 11645 3600 50  0000 C CNN
F 1 "3600" V 11736 3600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 11850 3600 50  0001 C CNN
F 3 "~" H 11850 3600 50  0001 C CNN
	1    11850 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	11950 3600 12150 3600
Connection ~ 12150 3600
Wire Wire Line
	11750 3600 11600 3600
Wire Wire Line
	11600 3600 11600 3800
Wire Wire Line
	11600 3800 12600 3800
Wire Wire Line
	11600 3800 11150 3800
Connection ~ 11600 3800
Text Label 11150 3800 0    50   ~ 0
~SHDN
Wire Wire Line
	8900 6250 10000 6250
Text Label 10000 6250 2    50   ~ 0
~SHDN
$Comp
L Device:C_Small C23
U 1 1 606D60C2
P 14300 4000
F 0 "C23" H 14392 4046 50  0000 L CNN
F 1 "300pF" H 14392 3955 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 14300 4000 50  0001 C CNN
F 3 "~" H 14300 4000 50  0001 C CNN
	1    14300 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	14300 3900 14300 3700
Connection ~ 14300 3700
Wire Wire Line
	14300 4100 14300 4250
Wire Wire Line
	14300 4250 14150 4250
Connection ~ 14150 4250
NoConn ~ 8900 6150
NoConn ~ 8900 6050
NoConn ~ 8900 5950
NoConn ~ 8900 5850
NoConn ~ 8900 5750
$Comp
L Regulator_Linear:AP2204RB-3.3 U10
U 1 1 626D114E
P 14450 2000
F 0 "U10" H 14450 2242 50  0000 C CNN
F 1 "L78L05ACZ-AP" H 14450 2151 50  0000 C CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 14450 2225 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/AP2204.pdf" H 14450 2000 50  0001 C CNN
	1    14450 2000
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female J12
U 1 1 5FE41F6A
P 8900 3900
F 0 "J12" H 8792 3475 50  0000 C CNN
F 1 "Qwiic" H 8792 3566 50  0000 C CNN
F 2 "Connectors_JST:JST_SH_SM04B-SRSS-TB_04x1.00mm_Angled" H 8900 3900 50  0001 C CNN
F 3 "~" H 8900 3900 50  0001 C CNN
	1    8900 3900
	1    0    0    1   
$EndComp
Wire Wire Line
	8700 3700 8400 3700
Wire Wire Line
	8700 3800 8400 3800
Wire Wire Line
	8700 3900 8250 3900
Text Label 8400 3700 0    50   ~ 0
SCL
Text Label 8400 3800 0    50   ~ 0
SDA
Wire Wire Line
	8250 3900 8250 3800
$Comp
L power:+3.3V #PWR0140
U 1 1 5FE41F76
P 8250 3800
F 0 "#PWR0140" H 8250 3650 50  0001 C CNN
F 1 "+3.3V" H 8265 3973 50  0000 C CNN
F 2 "" H 8250 3800 50  0001 C CNN
F 3 "" H 8250 3800 50  0001 C CNN
	1    8250 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 4000 8250 4100
Wire Wire Line
	8250 4000 8700 4000
$Comp
L power:GND #PWR0141
U 1 1 5FE41F7E
P 8250 4100
F 0 "#PWR0141" H 8250 3850 50  0001 C CNN
F 1 "GND" H 8255 3927 50  0000 C CNN
F 2 "" H 8250 4100 50  0001 C CNN
F 3 "" H 8250 4100 50  0001 C CNN
	1    8250 4100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J13
U 1 1 5FE4EAC3
P 14050 6050
F 0 "J13" H 14022 5982 50  0000 R CNN
F 1 "A0" H 14022 6073 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 14050 6050 50  0001 C CNN
F 3 "~" H 14050 6050 50  0001 C CNN
	1    14050 6050
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small_US R10
U 1 1 5FE50E32
P 13400 5950
F 0 "R10" V 13195 5950 50  0000 C CNN
F 1 "DNP" V 13286 5950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 13400 5950 50  0001 C CNN
F 3 "~" H 13400 5950 50  0001 C CNN
	1    13400 5950
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R19
U 1 1 5FE5263D
P 13400 6150
F 0 "R19" V 13195 6150 50  0000 C CNN
F 1 "DNP" V 13286 6150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 13400 6150 50  0001 C CNN
F 3 "~" H 13400 6150 50  0001 C CNN
	1    13400 6150
	0    1    1    0   
$EndComp
Wire Wire Line
	13850 6050 13150 6050
Wire Wire Line
	13300 5950 13150 5950
Wire Wire Line
	13150 5950 13150 6050
Connection ~ 13150 6050
Wire Wire Line
	13150 6050 12850 6050
Wire Wire Line
	13150 6050 13150 6150
Wire Wire Line
	13150 6150 13300 6150
Wire Wire Line
	13500 5950 13650 5950
Wire Wire Line
	13500 6150 13650 6150
$Comp
L power:+3.3V #PWR0142
U 1 1 5FEF529E
P 13650 5950
F 0 "#PWR0142" H 13650 5800 50  0001 C CNN
F 1 "+3.3V" H 13665 6123 50  0000 C CNN
F 2 "" H 13650 5950 50  0001 C CNN
F 3 "" H 13650 5950 50  0001 C CNN
	1    13650 5950
	1    0    0    -1  
$EndComp
Connection ~ 13650 5950
Wire Wire Line
	13650 5950 13850 5950
$Comp
L power:GND #PWR0143
U 1 1 5FEF644A
P 13650 6150
F 0 "#PWR0143" H 13650 5900 50  0001 C CNN
F 1 "GND" H 13655 5977 50  0000 C CNN
F 2 "" H 13650 6150 50  0001 C CNN
F 3 "" H 13650 6150 50  0001 C CNN
	1    13650 6150
	1    0    0    -1  
$EndComp
Connection ~ 13650 6150
Wire Wire Line
	13650 6150 13850 6150
$Comp
L Connector:Conn_01x03_Male J14
U 1 1 5FF1AD31
P 14050 6750
F 0 "J14" H 14022 6682 50  0000 R CNN
F 1 "A1" H 14022 6773 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 14050 6750 50  0001 C CNN
F 3 "~" H 14050 6750 50  0001 C CNN
	1    14050 6750
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small_US R20
U 1 1 5FF1AD37
P 13400 6650
F 0 "R20" V 13195 6650 50  0000 C CNN
F 1 "DNP" V 13286 6650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 13400 6650 50  0001 C CNN
F 3 "~" H 13400 6650 50  0001 C CNN
	1    13400 6650
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R21
U 1 1 5FF1AD3D
P 13400 6850
F 0 "R21" V 13195 6850 50  0000 C CNN
F 1 "DNP" V 13286 6850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 13400 6850 50  0001 C CNN
F 3 "~" H 13400 6850 50  0001 C CNN
	1    13400 6850
	0    1    1    0   
$EndComp
Wire Wire Line
	13850 6750 13150 6750
Wire Wire Line
	13300 6650 13150 6650
Wire Wire Line
	13150 6650 13150 6750
Connection ~ 13150 6750
Wire Wire Line
	13150 6750 12850 6750
Wire Wire Line
	13150 6750 13150 6850
Wire Wire Line
	13150 6850 13300 6850
Wire Wire Line
	13500 6650 13650 6650
Wire Wire Line
	13500 6850 13650 6850
$Comp
L power:+3.3V #PWR0144
U 1 1 5FF1AD4C
P 13650 6650
F 0 "#PWR0144" H 13650 6500 50  0001 C CNN
F 1 "+3.3V" H 13665 6823 50  0000 C CNN
F 2 "" H 13650 6650 50  0001 C CNN
F 3 "" H 13650 6650 50  0001 C CNN
	1    13650 6650
	1    0    0    -1  
$EndComp
Connection ~ 13650 6650
Wire Wire Line
	13650 6650 13850 6650
$Comp
L power:GND #PWR0145
U 1 1 5FF1AD54
P 13650 6850
F 0 "#PWR0145" H 13650 6600 50  0001 C CNN
F 1 "GND" H 13655 6677 50  0000 C CNN
F 2 "" H 13650 6850 50  0001 C CNN
F 3 "" H 13650 6850 50  0001 C CNN
	1    13650 6850
	1    0    0    -1  
$EndComp
Connection ~ 13650 6850
Wire Wire Line
	13650 6850 13850 6850
$Comp
L Connector:Conn_01x03_Male J15
U 1 1 5FF406E7
P 14050 7450
F 0 "J15" H 14022 7382 50  0000 R CNN
F 1 "A2" H 14022 7473 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 14050 7450 50  0001 C CNN
F 3 "~" H 14050 7450 50  0001 C CNN
	1    14050 7450
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small_US R22
U 1 1 5FF406ED
P 13400 7350
F 0 "R22" V 13195 7350 50  0000 C CNN
F 1 "DNP" V 13286 7350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 13400 7350 50  0001 C CNN
F 3 "~" H 13400 7350 50  0001 C CNN
	1    13400 7350
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R23
U 1 1 5FF406F3
P 13400 7550
F 0 "R23" V 13195 7550 50  0000 C CNN
F 1 "DNP" V 13286 7550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 13400 7550 50  0001 C CNN
F 3 "~" H 13400 7550 50  0001 C CNN
	1    13400 7550
	0    1    1    0   
$EndComp
Wire Wire Line
	13850 7450 13150 7450
Wire Wire Line
	13300 7350 13150 7350
Wire Wire Line
	13150 7350 13150 7450
Connection ~ 13150 7450
Wire Wire Line
	13150 7450 12850 7450
Wire Wire Line
	13150 7450 13150 7550
Wire Wire Line
	13150 7550 13300 7550
Wire Wire Line
	13500 7350 13650 7350
Wire Wire Line
	13500 7550 13650 7550
$Comp
L power:+3.3V #PWR0146
U 1 1 5FF40702
P 13650 7350
F 0 "#PWR0146" H 13650 7200 50  0001 C CNN
F 1 "+3.3V" H 13665 7523 50  0000 C CNN
F 2 "" H 13650 7350 50  0001 C CNN
F 3 "" H 13650 7350 50  0001 C CNN
	1    13650 7350
	1    0    0    -1  
$EndComp
Connection ~ 13650 7350
Wire Wire Line
	13650 7350 13850 7350
$Comp
L power:GND #PWR0147
U 1 1 5FF4070A
P 13650 7550
F 0 "#PWR0147" H 13650 7300 50  0001 C CNN
F 1 "GND" H 13655 7377 50  0000 C CNN
F 2 "" H 13650 7550 50  0001 C CNN
F 3 "" H 13650 7550 50  0001 C CNN
	1    13650 7550
	1    0    0    -1  
$EndComp
Connection ~ 13650 7550
Wire Wire Line
	13650 7550 13850 7550
Text Label 12850 6050 0    50   ~ 0
A0
Text Label 12850 6750 0    50   ~ 0
A1
Text Label 12850 7450 0    50   ~ 0
A2
Wire Wire Line
	6900 7500 8200 7500
Wire Wire Line
	7500 7050 7350 7050
Text Label 7350 6950 0    50   ~ 0
A2
Text Label 7350 7050 0    50   ~ 0
A1
Text Label 7350 7150 0    50   ~ 0
A0
$Comp
L Connector:Conn_01x04_Female J16
U 1 1 600634AC
P 9800 3900
F 0 "J16" H 9692 3475 50  0000 C CNN
F 1 "I2C Header" H 9692 3566 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 9800 3900 50  0001 C CNN
F 3 "~" H 9800 3900 50  0001 C CNN
	1    9800 3900
	1    0    0    1   
$EndComp
Wire Wire Line
	9600 3700 9300 3700
Wire Wire Line
	9600 3800 9300 3800
Wire Wire Line
	9600 3900 9150 3900
Text Label 9300 3700 0    50   ~ 0
SCL
Text Label 9300 3800 0    50   ~ 0
SDA
Wire Wire Line
	9150 3900 9150 3800
$Comp
L power:+3.3V #PWR0148
U 1 1 600634B8
P 9150 3800
F 0 "#PWR0148" H 9150 3650 50  0001 C CNN
F 1 "+3.3V" H 9165 3973 50  0000 C CNN
F 2 "" H 9150 3800 50  0001 C CNN
F 3 "" H 9150 3800 50  0001 C CNN
	1    9150 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 4000 9150 4100
Wire Wire Line
	9150 4000 9600 4000
$Comp
L power:GND #PWR0149
U 1 1 600634C0
P 9150 4100
F 0 "#PWR0149" H 9150 3850 50  0001 C CNN
F 1 "GND" H 9155 3927 50  0000 C CNN
F 2 "" H 9150 4100 50  0001 C CNN
F 3 "" H 9150 4100 50  0001 C CNN
	1    9150 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R24
U 1 1 600B2750
P 14800 3950
F 0 "R24" V 14595 3950 50  0000 C CNN
F 1 "2400" V 14686 3950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 14800 3950 50  0001 C CNN
F 3 "~" H 14800 3950 50  0001 C CNN
	1    14800 3950
	-1   0    0    1   
$EndComp
Wire Wire Line
	14800 3700 14800 3850
Wire Wire Line
	14300 3700 14800 3700
Wire Wire Line
	14800 4050 14800 4250
Wire Wire Line
	14800 4250 14300 4250
Connection ~ 14300 4250
$Comp
L Device:R_Small_US R25
U 1 1 60101633
P 10650 6150
F 0 "R25" H 10718 6196 50  0000 L CNN
F 1 "4700" H 10718 6105 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 10650 6150 50  0001 C CNN
F 3 "~" H 10650 6150 50  0001 C CNN
	1    10650 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R27
U 1 1 601028DA
P 10650 6500
F 0 "R27" H 10718 6546 50  0000 L CNN
F 1 "330" H 10718 6455 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 10650 6500 50  0001 C CNN
F 3 "~" H 10650 6500 50  0001 C CNN
	1    10650 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10650 6050 10650 5950
Wire Wire Line
	10650 6250 10650 6350
Wire Wire Line
	10650 6600 10650 6750
$Comp
L power:GND #PWR0150
U 1 1 60173236
P 10650 6750
F 0 "#PWR0150" H 10650 6500 50  0001 C CNN
F 1 "GND" H 10655 6577 50  0000 C CNN
F 2 "" H 10650 6750 50  0001 C CNN
F 3 "" H 10650 6750 50  0001 C CNN
	1    10650 6750
	1    0    0    -1  
$EndComp
$Comp
L power:+48V #PWR0151
U 1 1 60174DBB
P 10650 5950
F 0 "#PWR0151" H 10650 5800 50  0001 C CNN
F 1 "+48V" H 10665 6123 50  0000 C CNN
F 2 "" H 10650 5950 50  0001 C CNN
F 3 "" H 10650 5950 50  0001 C CNN
	1    10650 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	10650 6350 11200 6350
Connection ~ 10650 6350
Wire Wire Line
	10650 6350 10650 6400
Text Label 11200 6350 2    50   ~ 0
48V_SENSE
$Comp
L Device:R_Small_US R26
U 1 1 6020EA99
P 11450 6150
F 0 "R26" H 11518 6196 50  0000 L CNN
F 1 "1300" H 11518 6105 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 11450 6150 50  0001 C CNN
F 3 "~" H 11450 6150 50  0001 C CNN
	1    11450 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R28
U 1 1 6020EA9F
P 11450 6500
F 0 "R28" H 11518 6546 50  0000 L CNN
F 1 "330" H 11518 6455 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 11450 6500 50  0001 C CNN
F 3 "~" H 11450 6500 50  0001 C CNN
	1    11450 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	11450 6050 11450 5950
Wire Wire Line
	11450 6250 11450 6350
Wire Wire Line
	11450 6600 11450 6750
$Comp
L power:GND #PWR0152
U 1 1 6020EAA8
P 11450 6750
F 0 "#PWR0152" H 11450 6500 50  0001 C CNN
F 1 "GND" H 11455 6577 50  0000 C CNN
F 2 "" H 11450 6750 50  0001 C CNN
F 3 "" H 11450 6750 50  0001 C CNN
	1    11450 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	11450 6350 12000 6350
Connection ~ 11450 6350
Wire Wire Line
	11450 6350 11450 6400
Text Label 12000 6350 2    50   ~ 0
15V_SENSE
$Comp
L power:+15V #PWR0153
U 1 1 60234B29
P 11450 5950
F 0 "#PWR0153" H 11450 5800 50  0001 C CNN
F 1 "+15V" H 11465 6123 50  0000 C CNN
F 2 "" H 11450 5950 50  0001 C CNN
F 3 "" H 11450 5950 50  0001 C CNN
	1    11450 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 5650 10000 5650
Wire Wire Line
	8900 5550 10000 5550
Text Label 10000 5550 2    50   ~ 0
15V_SENSE
Text Label 10000 5650 2    50   ~ 0
48V_SENSE
Text Notes 14900 3750 0    50   ~ 0
To drain the VREF net\nwhen /SHDN is active.
Wire Wire Line
	1450 2950 750  2950
Wire Wire Line
	750  2950 750  3250
Wire Wire Line
	1450 3000 1450 2950
Wire Wire Line
	1450 2950 1450 2850
Connection ~ 1450 2950
$Comp
L Connector:Conn_01x02_Male J17
U 1 1 6027517F
P 10750 7600
F 0 "J17" H 10858 7781 50  0000 C CNN
F 1 "IRQ" H 10858 7690 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 10750 7600 50  0001 C CNN
F 3 "~" H 10750 7600 50  0001 C CNN
	1    10750 7600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0154
U 1 1 60277C7E
P 11050 7800
F 0 "#PWR0154" H 11050 7550 50  0001 C CNN
F 1 "GND" H 11055 7627 50  0000 C CNN
F 2 "" H 11050 7800 50  0001 C CNN
F 3 "" H 11050 7800 50  0001 C CNN
	1    11050 7800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10950 7700 11050 7700
Wire Wire Line
	11050 7700 11050 7800
Wire Wire Line
	10950 7600 11200 7600
Text Label 11200 7600 2    50   ~ 0
~IRQ
Wire Wire Line
	7500 6250 7050 6250
Text Label 7050 6250 0    50   ~ 0
~IRQ
$EndSCHEMATC
