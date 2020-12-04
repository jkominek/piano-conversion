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
P 11000 1250
F 0 "J9" H 11080 1242 50  0000 L CNN
F 1 "PowerInput" H 11080 1151 50  0000 L CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 11000 1250 50  0001 C CNN
F 3 "~" H 11000 1250 50  0001 C CNN
	1    11000 1250
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
	10700 1250 10800 1250
Wire Wire Line
	10800 1350 10700 1350
Wire Wire Line
	10700 1350 10700 1450
$Comp
L Regulator_Linear:LM7805_TO220 U10
U 1 1 5FAD8BDA
P 14450 2000
F 0 "U10" H 14450 2242 50  0000 C CNN
F 1 "L78L05ACZ-AP" H 14450 2151 50  0000 C CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 14450 2225 50  0001 C CIN
F 3 "https://www.onsemi.cn/PowerSolutions/document/MC7800-D.PDF" H 14450 1950 50  0001 C CNN
	1    14450 2000
	-1   0    0    -1  
$EndComp
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
P 14600 3450
F 0 "U11" H 14600 3965 50  0000 C CNN
F 1 "MCP1501" H 14600 3874 50  0000 C CNN
F 2 "SMD_Packages:SOIC-8-N" H 14600 3450 50  0001 C CNN
F 3 "DOCUMENTATION" H 14600 3450 50  0001 C CNN
	1    14600 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5FAD37F8
P 14600 4050
F 0 "#PWR0110" H 14600 3800 50  0001 C CNN
F 1 "GND" H 14605 3877 50  0000 C CNN
F 2 "" H 14600 4050 50  0001 C CNN
F 3 "" H 14600 4050 50  0001 C CNN
	1    14600 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	13850 3600 13800 3600
Wire Wire Line
	13800 3600 13800 3950
Wire Wire Line
	13800 3950 14600 3950
Wire Wire Line
	14600 3950 14600 4050
Wire Wire Line
	13850 3400 13800 3400
Wire Wire Line
	13800 3400 13800 3600
Connection ~ 13800 3600
Wire Wire Line
	15350 3500 15400 3500
Wire Wire Line
	15400 3500 15400 3600
Wire Wire Line
	15400 3950 14600 3950
Connection ~ 14600 3950
Wire Wire Line
	15350 3600 15400 3600
Connection ~ 15400 3600
Wire Wire Line
	15400 3600 15400 3950
Wire Wire Line
	15350 3400 15400 3400
Text Label 15700 3400 2    50   ~ 0
VREF
Wire Wire Line
	13850 3300 13650 3300
Wire Wire Line
	13850 3500 13650 3500
Wire Wire Line
	13650 3500 13650 3300
Connection ~ 13650 3300
Wire Wire Line
	13650 3300 13550 3300
Wire Wire Line
	13400 3300 13400 3250
$Comp
L power:+5V #PWR0111
U 1 1 5FADDB32
P 13400 3250
F 0 "#PWR0111" H 13400 3100 50  0001 C CNN
F 1 "+5V" H 13415 3423 50  0000 C CNN
F 2 "" H 13400 3250 50  0001 C CNN
F 3 "" H 13400 3250 50  0001 C CNN
	1    13400 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	15350 3300 15400 3300
Wire Wire Line
	15400 3300 15400 3400
Connection ~ 15400 3400
Wire Wire Line
	15400 3400 15700 3400
$Comp
L Device:C_Small C29
U 1 1 5FADF543
P 13550 3650
F 0 "C29" H 13642 3696 50  0000 L CNN
F 1 "2.2uF" H 13642 3605 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 13550 3650 50  0001 C CNN
F 3 "~" H 13550 3650 50  0001 C CNN
	1    13550 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	13550 3550 13550 3300
Connection ~ 13550 3300
Wire Wire Line
	13550 3300 13400 3300
Wire Wire Line
	13550 3750 13550 3950
Wire Wire Line
	13550 3950 13800 3950
Connection ~ 13800 3950
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
Wire Wire Line
	1450 2900 1450 3000
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
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 7400 1350 50  0001 C CNN
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
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 7750 1350 50  0001 C CNN
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
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 8100 1350 50  0001 C CNN
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
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 8450 1350 50  0001 C CNN
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
P 11000 2250
F 0 "J10" H 11080 2242 50  0000 L CNN
F 1 "PowerInput" H 11080 2151 50  0000 L CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 11000 2250 50  0001 C CNN
F 3 "~" H 11000 2250 50  0001 C CNN
	1    11000 2250
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
	10700 2250 10800 2250
Wire Wire Line
	10800 2350 10700 2350
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
P 1450 2900
F 0 "#PWR0120" H 1450 2750 50  0001 C CNN
F 1 "+15V" H 1465 3073 50  0000 C CNN
F 2 "" H 1450 2900 50  0001 C CNN
F 3 "" H 1450 2900 50  0001 C CNN
	1    1450 2900
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
Text Notes 11100 1050 0    50   ~ 0
Meanwell HDR-30-48\n(adjust DOWN, reduces heat in FETs)
Text Notes 11100 2100 0    50   ~ 0
Meanwell HDR-30-15\n(may need to adjust UP slightly depending on FETs)
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
	750  3250 750  3000
Wire Wire Line
	750  3000 1450 3000
Connection ~ 1450 3000
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
$EndSCHEMATC
