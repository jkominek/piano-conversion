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
L Symbols:MIDI_DIN J2
U 1 1 5FD0C6A1
P 6100 2750
F 0 "J2" H 6100 2300 50  0000 C CNN
F 1 "MIDI IN" H 6100 2200 50  0000 C CNN
F 2 "footprints:SDS-50J" H 6100 2750 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/18/40_c091_abd_e-75918.pdf" H 6100 2750 50  0001 C CNN
	1    6100 2750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J3
U 1 1 5FD0F2CE
P 4550 4550
F 0 "J3" H 4522 4432 50  0000 R CNN
F 1 "Qwiic" H 4522 4523 50  0000 R CNN
F 2 "Connectors_JST:JST_SH_SM04B-SRSS-TB_04x1.00mm_Angled" H 4550 4550 50  0001 C CNN
F 3 "~" H 4550 4550 50  0001 C CNN
	1    4550 4550
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR0101
U 1 1 5FD10015
P 3550 4500
F 0 "#PWR0101" H 3550 4350 50  0001 C CNN
F 1 "+3V3" H 3565 4673 50  0000 C CNN
F 2 "" H 3550 4500 50  0001 C CNN
F 3 "" H 3550 4500 50  0001 C CNN
	1    3550 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5FD1032C
P 4250 4900
F 0 "#PWR0102" H 4250 4650 50  0001 C CNN
F 1 "GND" H 4255 4727 50  0000 C CNN
F 2 "" H 4250 4900 50  0001 C CNN
F 3 "" H 4250 4900 50  0001 C CNN
	1    4250 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 4500 3550 4550
Wire Wire Line
	3550 4550 3650 4550
Wire Wire Line
	4350 4650 4250 4650
Wire Wire Line
	4250 4650 4250 4850
$Comp
L Symbols:MIDI_DIN J1
U 1 1 5FD0BC62
P 2550 2750
F 0 "J1" H 2550 2300 50  0000 C CNN
F 1 "MIDI OUT" H 2550 2200 50  0000 C CNN
F 2 "footprints:SDS-50J" H 2550 2750 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/18/40_c091_abd_e-75918.pdf" H 2550 2750 50  0001 C CNN
	1    2550 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5FD04EA3
P 3050 3250
F 0 "#PWR0103" H 3050 3000 50  0001 C CNN
F 1 "GND" H 3055 3077 50  0000 C CNN
F 2 "" H 3050 3250 50  0001 C CNN
F 3 "" H 3050 3250 50  0001 C CNN
	1    3050 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 3100 3050 3100
Wire Wire Line
	3050 3100 3050 3250
Wire Wire Line
	2550 2450 2550 2250
Wire Wire Line
	2550 2250 3050 2250
Wire Wire Line
	3050 2250 3050 3100
Connection ~ 3050 3100
$Comp
L Device:Ferrite_Bead_Small FB1
U 1 1 5FD06466
P 2050 2650
F 0 "FB1" V 1813 2650 50  0000 C CNN
F 1 "Ferrite" V 1904 2650 50  0000 C CNN
F 2 "Inductors_SMD:L_0805_HandSoldering" V 1980 2650 50  0001 C CNN
F 3 "~" H 2050 2650 50  0001 C CNN
	1    2050 2650
	0    1    1    0   
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB2
U 1 1 5FD07703
P 3050 2650
F 0 "FB2" V 2813 2650 50  0000 C CNN
F 1 "Ferrite" V 2904 2650 50  0000 C CNN
F 2 "Inductors_SMD:L_0805_HandSoldering" V 2980 2650 50  0001 C CNN
F 3 "~" H 3050 2650 50  0001 C CNN
	1    3050 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	2850 2650 2950 2650
Wire Wire Line
	2250 2650 2150 2650
NoConn ~ 2850 2750
NoConn ~ 2250 2750
$Comp
L Device:Ferrite_Bead_Small FB3
U 1 1 5FD086EB
P 5600 2650
F 0 "FB3" V 5363 2650 50  0000 C CNN
F 1 "Ferrite" V 5454 2650 50  0000 C CNN
F 2 "Inductors_SMD:L_0805_HandSoldering" V 5530 2650 50  0001 C CNN
F 3 "~" H 5600 2650 50  0001 C CNN
	1    5600 2650
	0    1    1    0   
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB4
U 1 1 5FD08F8F
P 6600 2650
F 0 "FB4" V 6363 2650 50  0000 C CNN
F 1 "Ferrite" V 6454 2650 50  0000 C CNN
F 2 "Inductors_SMD:L_0805_HandSoldering" V 6530 2650 50  0001 C CNN
F 3 "~" H 6600 2650 50  0001 C CNN
	1    6600 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	6400 2650 6500 2650
Wire Wire Line
	5800 2650 5700 2650
NoConn ~ 5800 2750
NoConn ~ 6400 2750
$Comp
L power:GND #PWR0104
U 1 1 5FD0A1EA
P 6600 3300
F 0 "#PWR0104" H 6600 3050 50  0001 C CNN
F 1 "GND" H 6605 3127 50  0000 C CNN
F 2 "" H 6600 3300 50  0001 C CNN
F 3 "" H 6600 3300 50  0001 C CNN
	1    6600 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5FD0A3A7
P 6400 3100
F 0 "C4" V 6171 3100 50  0000 C CNN
F 1 "0.1uF" V 6262 3100 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6400 3100 50  0001 C CNN
F 3 "~" H 6400 3100 50  0001 C CNN
	1    6400 3100
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5FD0AC49
P 6400 2250
F 0 "C3" V 6171 2250 50  0000 C CNN
F 1 "0.1uF" V 6262 2250 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6400 2250 50  0001 C CNN
F 3 "~" H 6400 2250 50  0001 C CNN
	1    6400 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	6100 2450 6100 2250
Wire Wire Line
	6100 2250 6300 2250
Wire Wire Line
	6500 2250 6600 2250
Wire Wire Line
	6600 2250 6600 3100
Wire Wire Line
	6500 3100 6600 3100
Connection ~ 6600 3100
Wire Wire Line
	6600 3100 6600 3300
Wire Wire Line
	6200 3100 6300 3100
$Comp
L Device:D_Small D1
U 1 1 5FD10A92
P 6100 1900
F 0 "D1" H 6100 2107 50  0000 C CNN
F 1 "BAS16" H 6100 2016 50  0000 C CNN
F 2 "Diodes_SMD:D_SOT-23_ANK" V 6100 1900 50  0001 C CNN
F 3 "~" V 6100 1900 50  0001 C CNN
	1    6100 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 2650 6800 2650
Wire Wire Line
	6800 2650 6800 1900
Wire Wire Line
	6800 1900 6200 1900
Wire Wire Line
	6000 1900 5400 1900
Wire Wire Line
	5400 2650 5500 2650
$Comp
L Symbols:TLP185(SE U3
U 1 1 5FD1BB81
P 7400 1800
F 0 "U3" H 7400 2125 50  0000 C CNN
F 1 "TLP185(SE" H 7400 2034 50  0000 C CNN
F 2 "Housings_SOIC:SO-6_4.4x3.6mm_Pitch1.27mm" H 7200 1600 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 7400 1800 50  0001 L CNN
	1    7400 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 1700 5400 1700
Wire Wire Line
	5400 1700 5400 1900
Wire Wire Line
	6800 1900 7100 1900
Connection ~ 6800 1900
$Comp
L 74xGxx:74LVC1G17 U2
U 1 1 5FD2443D
P 8300 1500
F 0 "U2" H 8275 1767 50  0000 C CNN
F 1 "74LVC1G17" H 8275 1676 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-353_SC-70-5_Handsoldering" H 8300 1500 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 8300 1500 50  0001 C CNN
	1    8300 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5FD25978
P 8050 2000
F 0 "#PWR0105" H 8050 1750 50  0001 C CNN
F 1 "GND" H 8055 1827 50  0000 C CNN
F 2 "" H 8050 2000 50  0001 C CNN
F 3 "" H 8050 2000 50  0001 C CNN
	1    8050 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 1900 8050 1900
Wire Wire Line
	8050 1900 8050 2000
Wire Wire Line
	8050 1900 8300 1900
Wire Wire Line
	8300 1900 8300 1600
Connection ~ 8050 1900
Wire Wire Line
	7700 1700 7700 1500
Wire Wire Line
	8000 1500 7950 1500
Connection ~ 7700 1500
Wire Wire Line
	7700 1500 7700 1350
$Comp
L Device:R_Small_US R2
U 1 1 5FD28919
P 7700 1250
F 0 "R2" H 7768 1296 50  0000 L CNN
F 1 "R_O" H 7768 1205 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 7700 1250 50  0001 C CNN
F 3 "~" H 7700 1250 50  0001 C CNN
	1    7700 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0106
U 1 1 5FD28F7C
P 7700 1050
F 0 "#PWR0106" H 7700 900 50  0001 C CNN
F 1 "+3V3" H 7715 1223 50  0000 C CNN
F 2 "" H 7700 1050 50  0001 C CNN
F 3 "" H 7700 1050 50  0001 C CNN
	1    7700 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 1150 7700 1100
Wire Wire Line
	8300 1400 8300 1100
Wire Wire Line
	8300 1100 7700 1100
Connection ~ 7700 1100
Wire Wire Line
	7700 1100 7700 1050
Wire Wire Line
	8550 1500 8650 1500
Text Label 8800 1500 2    50   ~ 0
RX
$Comp
L Device:C_Small C2
U 1 1 5FD2B2E8
P 8450 1700
F 0 "C2" H 8358 1654 50  0000 R CNN
F 1 "0.1uF" H 8358 1745 50  0000 R CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8450 1700 50  0001 C CNN
F 3 "~" H 8450 1700 50  0001 C CNN
	1    8450 1700
	-1   0    0    1   
$EndComp
Wire Wire Line
	8300 1900 8450 1900
Wire Wire Line
	8450 1900 8450 1800
Connection ~ 8300 1900
Wire Wire Line
	8450 1600 8450 1100
Wire Wire Line
	8450 1100 8300 1100
Connection ~ 8300 1100
$Comp
L power:+3V3 #PWR0107
U 1 1 5FD2E5A1
P 1600 2200
F 0 "#PWR0107" H 1600 2050 50  0001 C CNN
F 1 "+3V3" H 1615 2373 50  0000 C CNN
F 2 "" H 1600 2200 50  0001 C CNN
F 3 "" H 1600 2200 50  0001 C CNN
	1    1600 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R1
U 1 1 5FD2EFCE
P 1600 2400
F 0 "R1" H 1668 2446 50  0000 L CNN
F 1 "R_A" H 1668 2355 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 1600 2400 50  0001 C CNN
F 3 "~" H 1600 2400 50  0001 C CNN
	1    1600 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 2500 1600 2650
Wire Wire Line
	1600 2650 1950 2650
Wire Wire Line
	1600 2300 1600 2200
$Comp
L Device:R_Small_US R3
U 1 1 5FD34FAC
P 3350 2650
F 0 "R3" V 3145 2650 50  0000 C CNN
F 1 "R_C" V 3236 2650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 3350 2650 50  0001 C CNN
F 3 "~" H 3350 2650 50  0001 C CNN
	1    3350 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	3150 2650 3250 2650
$Comp
L 74xGxx:74LVC1G06 U1
U 1 1 5FD36436
P 3800 2650
F 0 "U1" H 3775 2917 50  0000 C CNN
F 1 "74LVC1G06" H 3775 2826 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-353_SC-70-5_Handsoldering" H 3800 2650 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 3800 2650 50  0001 C CNN
	1    3800 2650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3550 2650 3450 2650
Wire Wire Line
	4100 2650 4400 2650
Text Label 4400 2650 2    50   ~ 0
TX
Wire Wire Line
	3050 3100 3800 3100
Wire Wire Line
	3800 3100 3800 2750
$Comp
L power:+3V3 #PWR0108
U 1 1 5FD3B023
P 4050 2250
F 0 "#PWR0108" H 4050 2100 50  0001 C CNN
F 1 "+3V3" H 4065 2423 50  0000 C CNN
F 2 "" H 4050 2250 50  0001 C CNN
F 3 "" H 4050 2250 50  0001 C CNN
	1    4050 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5FD3B82A
P 4050 2850
F 0 "C1" H 3958 2804 50  0000 R CNN
F 1 "0.1uF" H 3958 2895 50  0000 R CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4050 2850 50  0001 C CNN
F 3 "~" H 4050 2850 50  0001 C CNN
	1    4050 2850
	-1   0    0    1   
$EndComp
Wire Wire Line
	4050 2750 4050 2300
Wire Wire Line
	3800 2550 3800 2300
Wire Wire Line
	3800 2300 4050 2300
Connection ~ 4050 2300
Wire Wire Line
	4050 2300 4050 2250
Wire Wire Line
	3800 3100 4050 3100
Wire Wire Line
	4050 3100 4050 2950
Connection ~ 3800 3100
$Comp
L Device:R_Small_US R4
U 1 1 5FD5B7AF
P 5400 2250
F 0 "R4" H 5468 2296 50  0000 L CNN
F 1 "220" H 5468 2205 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5400 2250 50  0001 C CNN
F 3 "~" H 5400 2250 50  0001 C CNN
	1    5400 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 2150 5400 1900
Connection ~ 5400 1900
Wire Wire Line
	5400 2350 5400 2650
$Comp
L Mechanical:MountingHole H1
U 1 1 5FD6773D
P 10000 5450
F 0 "H1" H 10100 5496 50  0000 L CNN
F 1 "MountingHole" H 10100 5405 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 10000 5450 50  0001 C CNN
F 3 "~" H 10000 5450 50  0001 C CNN
	1    10000 5450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5FD68379
P 10000 5650
F 0 "H2" H 10100 5696 50  0000 L CNN
F 1 "MountingHole" H 10100 5605 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 10000 5650 50  0001 C CNN
F 3 "~" H 10000 5650 50  0001 C CNN
	1    10000 5650
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5FD689C8
P 10000 5850
F 0 "H3" H 10100 5896 50  0000 L CNN
F 1 "MountingHole" H 10100 5805 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 10000 5850 50  0001 C CNN
F 3 "~" H 10000 5850 50  0001 C CNN
	1    10000 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5FED95AB
P 950 6900
F 0 "C6" V 721 6900 50  0000 C CNN
F 1 "0.1uF" V 812 6900 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 950 6900 50  0001 C CNN
F 3 "~" H 950 6900 50  0001 C CNN
	1    950  6900
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0109
U 1 1 5FEE0AB7
P 1450 6450
F 0 "#PWR0109" H 1450 6300 50  0001 C CNN
F 1 "+3.3V" H 1465 6623 50  0000 C CNN
F 2 "" H 1450 6450 50  0001 C CNN
F 3 "" H 1450 6450 50  0001 C CNN
	1    1450 6450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5FEE0EC4
P 3150 7350
F 0 "#PWR0110" H 3150 7100 50  0001 C CNN
F 1 "GND" H 3155 7177 50  0000 C CNN
F 2 "" H 3150 7350 50  0001 C CNN
F 3 "" H 3150 7350 50  0001 C CNN
	1    3150 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 4450 4000 4450
Wire Wire Line
	4350 4350 4000 4350
Text Label 4000 4350 0    50   ~ 0
SCL
Text Label 4000 4450 0    50   ~ 0
SDA
$Comp
L Device:Ferrite_Bead_Small FB5
U 1 1 5FF0378B
P 3750 4550
F 0 "FB5" V 3513 4550 50  0000 C CNN
F 1 "FB" V 3604 4550 50  0000 C CNN
F 2 "Inductors_SMD:L_0805_HandSoldering" V 3680 4550 50  0001 C CNN
F 3 "~" H 3750 4550 50  0001 C CNN
	1    3750 4550
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 4550 3850 4550
$Comp
L Device:C_Small C7
U 1 1 5FF0631C
P 3550 4700
F 0 "C7" V 3321 4700 50  0000 C CNN
F 1 "0.1uF" V 3412 4700 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3550 4700 50  0001 C CNN
F 3 "~" H 3550 4700 50  0001 C CNN
	1    3550 4700
	-1   0    0    1   
$EndComp
Wire Wire Line
	3550 4800 3550 4850
Wire Wire Line
	3550 4850 4250 4850
Connection ~ 4250 4850
Wire Wire Line
	4250 4850 4250 4900
Wire Wire Line
	3550 4600 3550 4550
Connection ~ 3550 4550
$Comp
L Connector:Conn_01x04_Male J6
U 1 1 5FF150B7
P 4550 5450
F 0 "J6" H 4522 5332 50  0000 R CNN
F 1 "Qwiic" H 4522 5423 50  0000 R CNN
F 2 "Connectors_JST:JST_SH_SM04B-SRSS-TB_04x1.00mm_Angled" H 4550 5450 50  0001 C CNN
F 3 "~" H 4550 5450 50  0001 C CNN
	1    4550 5450
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR0111
U 1 1 5FF150BD
P 3550 5400
F 0 "#PWR0111" H 3550 5250 50  0001 C CNN
F 1 "+3V3" H 3565 5573 50  0000 C CNN
F 2 "" H 3550 5400 50  0001 C CNN
F 3 "" H 3550 5400 50  0001 C CNN
	1    3550 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5FF150C3
P 4250 5800
F 0 "#PWR0112" H 4250 5550 50  0001 C CNN
F 1 "GND" H 4255 5627 50  0000 C CNN
F 2 "" H 4250 5800 50  0001 C CNN
F 3 "" H 4250 5800 50  0001 C CNN
	1    4250 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 5400 3550 5450
Wire Wire Line
	3550 5450 3650 5450
Wire Wire Line
	4350 5550 4250 5550
Wire Wire Line
	4250 5550 4250 5750
Wire Wire Line
	4350 5350 4000 5350
Wire Wire Line
	4350 5250 4000 5250
Text Label 4000 5250 0    50   ~ 0
SCL
Text Label 4000 5350 0    50   ~ 0
SDA
$Comp
L Device:Ferrite_Bead_Small FB6
U 1 1 5FF150D1
P 3750 5450
F 0 "FB6" V 3513 5450 50  0000 C CNN
F 1 "FB" V 3604 5450 50  0000 C CNN
F 2 "Inductors_SMD:L_0805_HandSoldering" V 3680 5450 50  0001 C CNN
F 3 "~" H 3750 5450 50  0001 C CNN
	1    3750 5450
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 5450 3850 5450
$Comp
L Device:C_Small C8
U 1 1 5FF150D8
P 3550 5600
F 0 "C8" V 3321 5600 50  0000 C CNN
F 1 "0.1uF" V 3412 5600 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3550 5600 50  0001 C CNN
F 3 "~" H 3550 5600 50  0001 C CNN
	1    3550 5600
	-1   0    0    1   
$EndComp
Wire Wire Line
	3550 5700 3550 5750
Wire Wire Line
	3550 5750 4250 5750
Connection ~ 4250 5750
Wire Wire Line
	4250 5750 4250 5800
Wire Wire Line
	3550 5500 3550 5450
Connection ~ 3550 5450
$Comp
L Connector:Conn_01x03_Male J4
U 1 1 5FF1854C
P 1900 4950
F 0 "J4" H 1872 4882 50  0000 R CNN
F 1 "A0" H 1872 4973 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 1900 4950 50  0001 C CNN
F 3 "~" H 1900 4950 50  0001 C CNN
	1    1900 4950
	-1   0    0    1   
$EndComp
Wire Wire Line
	1700 4850 1450 4850
Wire Wire Line
	1700 4950 1150 4950
Wire Wire Line
	1700 5050 1450 5050
Wire Wire Line
	1450 5050 1450 5100
Wire Wire Line
	1450 4850 1450 4800
$Comp
L power:+3.3V #PWR0113
U 1 1 5FF26B57
P 1450 4800
F 0 "#PWR0113" H 1450 4650 50  0001 C CNN
F 1 "+3.3V" H 1600 4900 50  0000 C CNN
F 2 "" H 1450 4800 50  0001 C CNN
F 3 "" H 1450 4800 50  0001 C CNN
	1    1450 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5FF26C81
P 1450 5100
F 0 "#PWR0114" H 1450 4850 50  0001 C CNN
F 1 "GND" H 1455 4927 50  0000 C CNN
F 2 "" H 1450 5100 50  0001 C CNN
F 3 "" H 1450 5100 50  0001 C CNN
	1    1450 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R5
U 1 1 5FF2711D
P 1350 4850
F 0 "R5" V 1145 4850 50  0000 C CNN
F 1 "DNP" V 1236 4850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 1350 4850 50  0001 C CNN
F 3 "~" H 1350 4850 50  0001 C CNN
	1    1350 4850
	0    1    1    0   
$EndComp
Connection ~ 1450 4850
$Comp
L Device:R_Small_US R6
U 1 1 5FF27AF7
P 1350 5050
F 0 "R6" V 1145 5050 50  0000 C CNN
F 1 "DNP" V 1236 5050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 1350 5050 50  0001 C CNN
F 3 "~" H 1350 5050 50  0001 C CNN
	1    1350 5050
	0    1    1    0   
$EndComp
Connection ~ 1450 5050
Wire Wire Line
	1250 5050 1150 5050
Wire Wire Line
	1150 5050 1150 4950
Connection ~ 1150 4950
Wire Wire Line
	1150 4950 900  4950
Wire Wire Line
	1250 4850 1150 4850
Wire Wire Line
	1150 4850 1150 4950
Text Label 900  4950 0    50   ~ 0
A0
$Comp
L Connector:Conn_01x03_Male J5
U 1 1 5FF2FDB6
P 1900 5700
F 0 "J5" H 1872 5632 50  0000 R CNN
F 1 "A1" H 1872 5723 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 1900 5700 50  0001 C CNN
F 3 "~" H 1900 5700 50  0001 C CNN
	1    1900 5700
	-1   0    0    1   
$EndComp
Wire Wire Line
	1700 5600 1450 5600
Wire Wire Line
	1700 5700 1150 5700
Wire Wire Line
	1700 5800 1450 5800
Wire Wire Line
	1450 5800 1450 5850
Wire Wire Line
	1450 5600 1450 5550
$Comp
L power:+3.3V #PWR0115
U 1 1 5FF2FDC1
P 1450 5550
F 0 "#PWR0115" H 1450 5400 50  0001 C CNN
F 1 "+3.3V" H 1600 5650 50  0000 C CNN
F 2 "" H 1450 5550 50  0001 C CNN
F 3 "" H 1450 5550 50  0001 C CNN
	1    1450 5550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5FF2FDC7
P 1450 5850
F 0 "#PWR0116" H 1450 5600 50  0001 C CNN
F 1 "GND" H 1455 5677 50  0000 C CNN
F 2 "" H 1450 5850 50  0001 C CNN
F 3 "" H 1450 5850 50  0001 C CNN
	1    1450 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R7
U 1 1 5FF2FDCD
P 1350 5600
F 0 "R7" V 1145 5600 50  0000 C CNN
F 1 "DNP" V 1236 5600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 1350 5600 50  0001 C CNN
F 3 "~" H 1350 5600 50  0001 C CNN
	1    1350 5600
	0    1    1    0   
$EndComp
Connection ~ 1450 5600
$Comp
L Device:R_Small_US R8
U 1 1 5FF2FDD4
P 1350 5800
F 0 "R8" V 1145 5800 50  0000 C CNN
F 1 "DNP" V 1236 5800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 1350 5800 50  0001 C CNN
F 3 "~" H 1350 5800 50  0001 C CNN
	1    1350 5800
	0    1    1    0   
$EndComp
Connection ~ 1450 5800
Wire Wire Line
	1250 5800 1150 5800
Wire Wire Line
	1150 5800 1150 5700
Connection ~ 1150 5700
Wire Wire Line
	1150 5700 900  5700
Wire Wire Line
	1250 5600 1150 5600
Wire Wire Line
	1150 5600 1150 5700
Text Label 900  5700 0    50   ~ 0
A1
Wire Wire Line
	4550 6850 4800 6850
Wire Wire Line
	4250 7150 4250 7250
Wire Wire Line
	4250 6550 4250 6500
Wire Wire Line
	3950 6850 3850 6850
Wire Wire Line
	3850 6850 3850 6500
Wire Wire Line
	3850 6500 4250 6500
Connection ~ 4250 6500
Wire Wire Line
	4250 6400 4250 6500
$Comp
L power:GND #PWR0117
U 1 1 5FF5C232
P 4250 7350
F 0 "#PWR0117" H 4250 7100 50  0001 C CNN
F 1 "GND" H 4255 7177 50  0000 C CNN
F 2 "" H 4250 7350 50  0001 C CNN
F 3 "" H 4250 7350 50  0001 C CNN
	1    4250 7350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0118
U 1 1 5FF5C68C
P 4250 6400
F 0 "#PWR0118" H 4250 6250 50  0001 C CNN
F 1 "+3.3V" H 4265 6573 50  0000 C CNN
F 2 "" H 4250 6400 50  0001 C CNN
F 3 "" H 4250 6400 50  0001 C CNN
	1    4250 6400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5FF5CD21
P 3850 7100
F 0 "C5" V 3621 7100 50  0000 C CNN
F 1 "0.1uF" V 3712 7100 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3850 7100 50  0001 C CNN
F 3 "~" H 3850 7100 50  0001 C CNN
	1    3850 7100
	-1   0    0    1   
$EndComp
Wire Wire Line
	3850 6850 3850 7000
Connection ~ 3850 6850
Wire Wire Line
	3850 7200 3850 7250
Wire Wire Line
	3850 7250 4250 7250
Connection ~ 4250 7250
Wire Wire Line
	4250 7250 4250 7350
$Comp
L Device:R_Small_US R9
U 1 1 5FF704F6
P 8300 800
F 0 "R9" H 8368 846 50  0000 L CNN
F 1 "DNP" H 8368 755 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 8300 800 50  0001 C CNN
F 3 "~" H 8300 800 50  0001 C CNN
	1    8300 800 
	0    1    1    0   
$EndComp
Wire Wire Line
	8200 800  7950 800 
Wire Wire Line
	7950 800  7950 1500
Connection ~ 7950 1500
Wire Wire Line
	7950 1500 7700 1500
Wire Wire Line
	8400 800  8650 800 
Wire Wire Line
	8650 800  8650 1500
Connection ~ 8650 1500
Wire Wire Line
	8650 1500 8800 1500
$Comp
L Connector:Conn_01x03_Male J7
U 1 1 5FFC58E3
P 2950 5650
F 0 "J7" H 2922 5582 50  0000 R CNN
F 1 "UART" H 2922 5673 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 2950 5650 50  0001 C CNN
F 3 "~" H 2950 5650 50  0001 C CNN
	1    2950 5650
	-1   0    0    1   
$EndComp
Wire Wire Line
	2750 5750 2650 5750
Wire Wire Line
	2650 5750 2650 5850
$Comp
L power:GND #PWR0119
U 1 1 5FFCB599
P 2650 5850
F 0 "#PWR0119" H 2650 5600 50  0001 C CNN
F 1 "GND" H 2655 5677 50  0000 C CNN
F 2 "" H 2650 5850 50  0001 C CNN
F 3 "" H 2650 5850 50  0001 C CNN
	1    2650 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 5650 2450 5650
Wire Wire Line
	2750 5550 2450 5550
Text Label 2450 5550 0    50   ~ 0
TX
Text Label 2450 5650 0    50   ~ 0
RX
$Comp
L SC16IS741AIPW_I2C:SC16IS741AIPW-I2C U4
U 1 1 602BF110
P 2300 6900
F 0 "U4" H 2300 7615 50  0000 C CNN
F 1 "SC16IS741AIPW-I2C" H 2300 7524 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-16_4.4x5mm_Pitch0.65mm" H 2300 6900 50  0001 C CNN
F 3 "DOCUMENTATION" H 2300 6900 50  0001 C CNN
	1    2300 6900
	1    0    0    -1  
$EndComp
NoConn ~ 3050 7150
NoConn ~ 3050 7050
NoConn ~ 3050 6550
Wire Wire Line
	1450 6450 1450 6550
Wire Wire Line
	1450 6550 1550 6550
Wire Wire Line
	1550 6650 1250 6650
Wire Wire Line
	1250 6750 1550 6750
Wire Wire Line
	1550 6950 1250 6950
Wire Wire Line
	1250 7050 1550 7050
NoConn ~ 1550 7150
Wire Wire Line
	1450 6550 1450 7250
Wire Wire Line
	1450 7250 1550 7250
Connection ~ 1450 6550
Wire Wire Line
	3050 6850 3300 6850
Wire Wire Line
	3050 6950 3300 6950
Wire Wire Line
	3050 7250 3150 7250
Wire Wire Line
	3150 7250 3150 7350
Wire Wire Line
	1450 6550 950  6550
Wire Wire Line
	950  6550 950  6800
Wire Wire Line
	950  7000 950  7150
$Comp
L power:GND #PWR0120
U 1 1 60322A43
P 950 7150
F 0 "#PWR0120" H 950 6900 50  0001 C CNN
F 1 "GND" H 955 6977 50  0000 C CNN
F 2 "" H 950 7150 50  0001 C CNN
F 3 "" H 950 7150 50  0001 C CNN
	1    950  7150
	1    0    0    -1  
$EndComp
Text Label 1250 6650 0    50   ~ 0
A0
Text Label 1250 6750 0    50   ~ 0
A1
Text Label 1250 6950 0    50   ~ 0
SCL
Text Label 1250 7050 0    50   ~ 0
SDA
Text Label 3300 6850 2    50   ~ 0
RX
Text Label 3300 6950 2    50   ~ 0
TX
Wire Wire Line
	3050 6750 3450 6750
Wire Wire Line
	3450 6750 3450 6650
$Comp
L power:+3.3V #PWR0121
U 1 1 6032C104
P 3450 6650
F 0 "#PWR0121" H 3450 6500 50  0001 C CNN
F 1 "+3.3V" H 3465 6823 50  0000 C CNN
F 2 "" H 3450 6650 50  0001 C CNN
F 3 "" H 3450 6650 50  0001 C CNN
	1    3450 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 6650 3300 6650
Text Label 3300 6650 2    50   ~ 0
OSC
$Comp
L Oscillator:SG-5032CAN X1
U 1 1 5FF458AB
P 4250 6850
F 0 "X1" H 4350 6550 50  0000 L CNN
F 1 "SG-5032CAN" H 4350 6450 50  0000 L CNN
F 2 "Oscillators:Oscillator_SMD_SeikoEpson_SG8002CE-4pin_3.2x2.5mm_HandSoldering" H 4950 6500 50  0001 C CNN
F 3 "https://support.epson.biz/td/api/doc_check.php?dl=brief_SG5032CAN&lang=en" H 4150 6850 50  0001 C CNN
	1    4250 6850
	1    0    0    -1  
$EndComp
Text Label 4800 6850 2    50   ~ 0
OSC
$EndSCHEMATC
