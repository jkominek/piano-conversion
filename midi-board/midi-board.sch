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
P 6200 3350
F 0 "J2" H 6200 2900 50  0000 C CNN
F 1 "MIDI IN" H 6200 2800 50  0000 C CNN
F 2 "footprints:SDS-50J" H 6200 3350 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/18/40_c091_abd_e-75918.pdf" H 6200 3350 50  0001 C CNN
	1    6200 3350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J3
U 1 1 5FD0F2CE
P 10200 1250
F 0 "J3" H 10172 1132 50  0000 R CNN
F 1 "Qwiic" H 10172 1223 50  0000 R CNN
F 2 "Connectors_JST:JST_SH_SM04B-SRSS-TB_04x1.00mm_Angled" H 10200 1250 50  0001 C CNN
F 3 "~" H 10200 1250 50  0001 C CNN
	1    10200 1250
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR0101
U 1 1 5FD10015
P 9200 1200
F 0 "#PWR0101" H 9200 1050 50  0001 C CNN
F 1 "+3V3" H 9215 1373 50  0000 C CNN
F 2 "" H 9200 1200 50  0001 C CNN
F 3 "" H 9200 1200 50  0001 C CNN
	1    9200 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5FD1032C
P 9900 1600
F 0 "#PWR0102" H 9900 1350 50  0001 C CNN
F 1 "GND" H 9905 1427 50  0000 C CNN
F 2 "" H 9900 1600 50  0001 C CNN
F 3 "" H 9900 1600 50  0001 C CNN
	1    9900 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 1200 9200 1250
Wire Wire Line
	9200 1250 9300 1250
Wire Wire Line
	10000 1350 9900 1350
Wire Wire Line
	9900 1350 9900 1550
$Comp
L Symbols:MIDI_DIN J1
U 1 1 5FD0BC62
P 2150 2050
F 0 "J1" H 2150 1600 50  0000 C CNN
F 1 "MIDI OUT" H 2150 1500 50  0000 C CNN
F 2 "footprints:SDS-50J" H 2150 2050 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/18/40_c091_abd_e-75918.pdf" H 2150 2050 50  0001 C CNN
	1    2150 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5FD04EA3
P 2650 2550
F 0 "#PWR0103" H 2650 2300 50  0001 C CNN
F 1 "GND" H 2655 2377 50  0000 C CNN
F 2 "" H 2650 2550 50  0001 C CNN
F 3 "" H 2650 2550 50  0001 C CNN
	1    2650 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 2400 2650 2400
Wire Wire Line
	2650 2400 2650 2550
Wire Wire Line
	2150 1750 2150 1550
Wire Wire Line
	2150 1550 2650 1550
Wire Wire Line
	2650 1550 2650 2400
Connection ~ 2650 2400
$Comp
L Device:Ferrite_Bead_Small FB1
U 1 1 5FD06466
P 1650 1950
F 0 "FB1" V 1413 1950 50  0000 C CNN
F 1 "Ferrite" V 1504 1950 50  0000 C CNN
F 2 "Inductors_SMD:L_0805_HandSoldering" V 1580 1950 50  0001 C CNN
F 3 "~" H 1650 1950 50  0001 C CNN
	1    1650 1950
	0    1    1    0   
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB2
U 1 1 5FD07703
P 2650 1950
F 0 "FB2" V 2413 1950 50  0000 C CNN
F 1 "Ferrite" V 2504 1950 50  0000 C CNN
F 2 "Inductors_SMD:L_0805_HandSoldering" V 2580 1950 50  0001 C CNN
F 3 "~" H 2650 1950 50  0001 C CNN
	1    2650 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	2450 1950 2550 1950
Wire Wire Line
	1850 1950 1750 1950
NoConn ~ 2450 2050
NoConn ~ 1850 2050
$Comp
L Device:Ferrite_Bead_Small FB3
U 1 1 5FD086EB
P 5700 3250
F 0 "FB3" V 5463 3250 50  0000 C CNN
F 1 "Ferrite" V 5554 3250 50  0000 C CNN
F 2 "Inductors_SMD:L_0805_HandSoldering" V 5630 3250 50  0001 C CNN
F 3 "~" H 5700 3250 50  0001 C CNN
	1    5700 3250
	0    1    1    0   
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB4
U 1 1 5FD08F8F
P 6700 3250
F 0 "FB4" V 6463 3250 50  0000 C CNN
F 1 "Ferrite" V 6554 3250 50  0000 C CNN
F 2 "Inductors_SMD:L_0805_HandSoldering" V 6630 3250 50  0001 C CNN
F 3 "~" H 6700 3250 50  0001 C CNN
	1    6700 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	6500 3250 6600 3250
Wire Wire Line
	5900 3250 5800 3250
NoConn ~ 5900 3350
NoConn ~ 6500 3350
$Comp
L power:GND #PWR0104
U 1 1 5FD0A1EA
P 6700 3900
F 0 "#PWR0104" H 6700 3650 50  0001 C CNN
F 1 "GND" H 6705 3727 50  0000 C CNN
F 2 "" H 6700 3900 50  0001 C CNN
F 3 "" H 6700 3900 50  0001 C CNN
	1    6700 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5FD0A3A7
P 6500 3700
F 0 "C4" V 6271 3700 50  0000 C CNN
F 1 "0.1uF" V 6362 3700 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6500 3700 50  0001 C CNN
F 3 "~" H 6500 3700 50  0001 C CNN
	1    6500 3700
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5FD0AC49
P 6500 2850
F 0 "C3" V 6271 2850 50  0000 C CNN
F 1 "0.1uF" V 6362 2850 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6500 2850 50  0001 C CNN
F 3 "~" H 6500 2850 50  0001 C CNN
	1    6500 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 3050 6200 2850
Wire Wire Line
	6200 2850 6400 2850
Wire Wire Line
	6600 2850 6700 2850
Wire Wire Line
	6700 2850 6700 3700
Wire Wire Line
	6600 3700 6700 3700
Connection ~ 6700 3700
Wire Wire Line
	6700 3700 6700 3900
Wire Wire Line
	6300 3700 6400 3700
$Comp
L Device:D_Small D1
U 1 1 5FD10A92
P 6200 2500
F 0 "D1" H 6200 2707 50  0000 C CNN
F 1 "BAS16" H 6200 2616 50  0000 C CNN
F 2 "Diodes_SMD:D_SOT-23_ANK" V 6200 2500 50  0001 C CNN
F 3 "~" V 6200 2500 50  0001 C CNN
	1    6200 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 3250 6900 3250
Wire Wire Line
	6900 3250 6900 2500
Wire Wire Line
	6900 2500 6300 2500
Wire Wire Line
	6100 2500 5500 2500
Wire Wire Line
	5500 3250 5600 3250
$Comp
L Symbols:TLP185(SE U3
U 1 1 5FD1BB81
P 7500 2400
F 0 "U3" H 7500 2725 50  0000 C CNN
F 1 "TLP185(SE" H 7500 2634 50  0000 C CNN
F 2 "Housings_SOIC:SO-6_4.4x3.6mm_Pitch1.27mm" H 7300 2200 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 7500 2400 50  0001 L CNN
	1    7500 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 2300 5500 2300
Wire Wire Line
	5500 2300 5500 2500
Wire Wire Line
	6900 2500 7200 2500
Connection ~ 6900 2500
$Comp
L 74xGxx:74LVC1G17 U2
U 1 1 5FD2443D
P 8400 2100
F 0 "U2" H 8375 2367 50  0000 C CNN
F 1 "74LVC1G17" H 8375 2276 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-353_SC-70-5_Handsoldering" H 8400 2100 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 8400 2100 50  0001 C CNN
	1    8400 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5FD25978
P 8150 2600
F 0 "#PWR0105" H 8150 2350 50  0001 C CNN
F 1 "GND" H 8155 2427 50  0000 C CNN
F 2 "" H 8150 2600 50  0001 C CNN
F 3 "" H 8150 2600 50  0001 C CNN
	1    8150 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 2500 8150 2500
Wire Wire Line
	8150 2500 8150 2600
Wire Wire Line
	8150 2500 8400 2500
Wire Wire Line
	8400 2500 8400 2200
Connection ~ 8150 2500
Wire Wire Line
	7800 2300 7800 2100
Wire Wire Line
	8100 2100 8050 2100
Connection ~ 7800 2100
Wire Wire Line
	7800 2100 7800 1950
$Comp
L Device:R_Small_US R2
U 1 1 5FD28919
P 7800 1850
F 0 "R2" H 7868 1896 50  0000 L CNN
F 1 "R_O" H 7868 1805 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 7800 1850 50  0001 C CNN
F 3 "~" H 7800 1850 50  0001 C CNN
	1    7800 1850
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0106
U 1 1 5FD28F7C
P 7800 1650
F 0 "#PWR0106" H 7800 1500 50  0001 C CNN
F 1 "+3V3" H 7815 1823 50  0000 C CNN
F 2 "" H 7800 1650 50  0001 C CNN
F 3 "" H 7800 1650 50  0001 C CNN
	1    7800 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 1750 7800 1700
Wire Wire Line
	8400 2000 8400 1700
Wire Wire Line
	8400 1700 7800 1700
Connection ~ 7800 1700
Wire Wire Line
	7800 1700 7800 1650
Wire Wire Line
	8650 2100 8750 2100
Text Label 8900 2100 2    50   ~ 0
RX
$Comp
L Device:C_Small C2
U 1 1 5FD2B2E8
P 8550 2300
F 0 "C2" H 8458 2254 50  0000 R CNN
F 1 "0.1uF" H 8458 2345 50  0000 R CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8550 2300 50  0001 C CNN
F 3 "~" H 8550 2300 50  0001 C CNN
	1    8550 2300
	-1   0    0    1   
$EndComp
Wire Wire Line
	8400 2500 8550 2500
Wire Wire Line
	8550 2500 8550 2400
Connection ~ 8400 2500
Wire Wire Line
	8550 2200 8550 1700
Wire Wire Line
	8550 1700 8400 1700
Connection ~ 8400 1700
$Comp
L power:+3V3 #PWR0107
U 1 1 5FD2E5A1
P 1200 1500
F 0 "#PWR0107" H 1200 1350 50  0001 C CNN
F 1 "+3V3" H 1215 1673 50  0000 C CNN
F 2 "" H 1200 1500 50  0001 C CNN
F 3 "" H 1200 1500 50  0001 C CNN
	1    1200 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R1
U 1 1 5FD2EFCE
P 1200 1700
F 0 "R1" H 1268 1746 50  0000 L CNN
F 1 "R_A" H 1268 1655 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 1200 1700 50  0001 C CNN
F 3 "~" H 1200 1700 50  0001 C CNN
	1    1200 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 1800 1200 1950
Wire Wire Line
	1200 1950 1550 1950
Wire Wire Line
	1200 1600 1200 1500
$Comp
L Device:R_Small_US R3
U 1 1 5FD34FAC
P 2950 1950
F 0 "R3" V 2745 1950 50  0000 C CNN
F 1 "R_C" V 2836 1950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 2950 1950 50  0001 C CNN
F 3 "~" H 2950 1950 50  0001 C CNN
	1    2950 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	2750 1950 2850 1950
$Comp
L 74xGxx:74LVC1G06 U1
U 1 1 5FD36436
P 3400 1950
F 0 "U1" H 3375 2217 50  0000 C CNN
F 1 "74LVC1G06" H 3375 2126 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-353_SC-70-5_Handsoldering" H 3400 1950 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 3400 1950 50  0001 C CNN
	1    3400 1950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3150 1950 3050 1950
Wire Wire Line
	3700 1950 4000 1950
Text Label 4000 1950 2    50   ~ 0
TX
Wire Wire Line
	2650 2400 3400 2400
Wire Wire Line
	3400 2400 3400 2050
$Comp
L power:+3V3 #PWR0108
U 1 1 5FD3B023
P 3650 1550
F 0 "#PWR0108" H 3650 1400 50  0001 C CNN
F 1 "+3V3" H 3665 1723 50  0000 C CNN
F 2 "" H 3650 1550 50  0001 C CNN
F 3 "" H 3650 1550 50  0001 C CNN
	1    3650 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5FD3B82A
P 3650 2150
F 0 "C1" H 3558 2104 50  0000 R CNN
F 1 "0.1uF" H 3558 2195 50  0000 R CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3650 2150 50  0001 C CNN
F 3 "~" H 3650 2150 50  0001 C CNN
	1    3650 2150
	-1   0    0    1   
$EndComp
Wire Wire Line
	3650 2050 3650 1600
Wire Wire Line
	3400 1850 3400 1600
Wire Wire Line
	3400 1600 3650 1600
Connection ~ 3650 1600
Wire Wire Line
	3650 1600 3650 1550
Wire Wire Line
	3400 2400 3650 2400
Wire Wire Line
	3650 2400 3650 2250
Connection ~ 3400 2400
$Comp
L Device:R_Small_US R4
U 1 1 5FD5B7AF
P 5500 2850
F 0 "R4" H 5568 2896 50  0000 L CNN
F 1 "220" H 5568 2805 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5500 2850 50  0001 C CNN
F 3 "~" H 5500 2850 50  0001 C CNN
	1    5500 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 2750 5500 2500
Connection ~ 5500 2500
Wire Wire Line
	5500 2950 5500 3250
$Comp
L Mechanical:MountingHole H1
U 1 1 5FD6773D
P 9000 3800
F 0 "H1" H 9100 3846 50  0000 L CNN
F 1 "MountingHole" H 9100 3755 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 9000 3800 50  0001 C CNN
F 3 "~" H 9000 3800 50  0001 C CNN
	1    9000 3800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5FD68379
P 9000 4000
F 0 "H2" H 9100 4046 50  0000 L CNN
F 1 "MountingHole" H 9100 3955 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 9000 4000 50  0001 C CNN
F 3 "~" H 9000 4000 50  0001 C CNN
	1    9000 4000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5FD689C8
P 9000 4200
F 0 "H3" H 9100 4246 50  0000 L CNN
F 1 "MountingHole" H 9100 4155 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 9000 4200 50  0001 C CNN
F 3 "~" H 9000 4200 50  0001 C CNN
	1    9000 4200
	1    0    0    -1  
$EndComp
$Comp
L Interface_UART:SC16IS740 U4
U 1 1 5FED6D03
P 5200 5150
F 0 "U4" H 5450 5900 50  0000 C CNN
F 1 "SC16IS740" H 5450 5800 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-16_4.4x5mm_Pitch0.65mm" H 5200 3950 50  0001 C CNN
F 3 "https://www.nxp.com/docs/en/data-sheet/SC16IS740_750_760.pdf" H 5200 3750 50  0001 C CNN
	1    5200 5150
	1    0    0    -1  
$EndComp
NoConn ~ 4700 5150
$Comp
L Device:C_Small C6
U 1 1 5FED95AB
P 6200 5100
F 0 "C6" V 5971 5100 50  0000 C CNN
F 1 "0.1uF" V 6062 5100 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6200 5100 50  0001 C CNN
F 3 "~" H 6200 5100 50  0001 C CNN
	1    6200 5100
	-1   0    0    1   
$EndComp
Wire Wire Line
	5200 5850 5200 5950
Wire Wire Line
	5200 5950 6200 5950
Wire Wire Line
	6200 5950 6200 5200
Wire Wire Line
	5200 4450 5200 4350
Wire Wire Line
	5200 4350 6200 4350
Wire Wire Line
	6200 4350 6200 5000
Wire Wire Line
	5200 5950 5200 6000
Connection ~ 5200 5950
Wire Wire Line
	5200 4350 5200 4300
Connection ~ 5200 4350
$Comp
L power:+3.3V #PWR0109
U 1 1 5FEE0AB7
P 5200 4300
F 0 "#PWR0109" H 5200 4150 50  0001 C CNN
F 1 "+3.3V" H 5215 4473 50  0000 C CNN
F 2 "" H 5200 4300 50  0001 C CNN
F 3 "" H 5200 4300 50  0001 C CNN
	1    5200 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5FEE0EC4
P 5200 6000
F 0 "#PWR0110" H 5200 5750 50  0001 C CNN
F 1 "GND" H 5205 5827 50  0000 C CNN
F 2 "" H 5200 6000 50  0001 C CNN
F 3 "" H 5200 6000 50  0001 C CNN
	1    5200 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 4950 6050 4950
Wire Wire Line
	5700 5250 6050 5250
NoConn ~ 5700 5150
NoConn ~ 5700 5050
NoConn ~ 5700 5450
NoConn ~ 4700 5650
Wire Wire Line
	4700 4750 4600 4750
Wire Wire Line
	4600 4750 4600 4350
Wire Wire Line
	4600 4350 5200 4350
Wire Wire Line
	4700 4950 4300 4950
Wire Wire Line
	4700 5050 4300 5050
Wire Wire Line
	4700 5250 4300 5250
Wire Wire Line
	4700 5350 4300 5350
Text Label 4300 4950 0    50   ~ 0
A0
Text Label 4300 5050 0    50   ~ 0
A1
Text Label 6050 4950 2    50   ~ 0
RX
Text Label 6050 5250 2    50   ~ 0
TX
Wire Wire Line
	10000 1150 9650 1150
Wire Wire Line
	10000 1050 9650 1050
Text Label 9650 1050 0    50   ~ 0
SCL
Text Label 9650 1150 0    50   ~ 0
SDA
$Comp
L Device:Ferrite_Bead_Small FB5
U 1 1 5FF0378B
P 9400 1250
F 0 "FB5" V 9163 1250 50  0000 C CNN
F 1 "FB" V 9254 1250 50  0000 C CNN
F 2 "Inductors_SMD:L_0805_HandSoldering" V 9330 1250 50  0001 C CNN
F 3 "~" H 9400 1250 50  0001 C CNN
	1    9400 1250
	0    1    1    0   
$EndComp
Wire Wire Line
	10000 1250 9500 1250
$Comp
L Device:C_Small C7
U 1 1 5FF0631C
P 9200 1400
F 0 "C7" V 8971 1400 50  0000 C CNN
F 1 "0.1uF" V 9062 1400 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9200 1400 50  0001 C CNN
F 3 "~" H 9200 1400 50  0001 C CNN
	1    9200 1400
	-1   0    0    1   
$EndComp
Wire Wire Line
	9200 1500 9200 1550
Wire Wire Line
	9200 1550 9900 1550
Connection ~ 9900 1550
Wire Wire Line
	9900 1550 9900 1600
Wire Wire Line
	9200 1300 9200 1250
Connection ~ 9200 1250
$Comp
L Connector:Conn_01x04_Male J6
U 1 1 5FF150B7
P 10200 2150
F 0 "J6" H 10172 2032 50  0000 R CNN
F 1 "Qwiic" H 10172 2123 50  0000 R CNN
F 2 "Connectors_JST:JST_SH_SM04B-SRSS-TB_04x1.00mm_Angled" H 10200 2150 50  0001 C CNN
F 3 "~" H 10200 2150 50  0001 C CNN
	1    10200 2150
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR0111
U 1 1 5FF150BD
P 9200 2100
F 0 "#PWR0111" H 9200 1950 50  0001 C CNN
F 1 "+3V3" H 9215 2273 50  0000 C CNN
F 2 "" H 9200 2100 50  0001 C CNN
F 3 "" H 9200 2100 50  0001 C CNN
	1    9200 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5FF150C3
P 9900 2500
F 0 "#PWR0112" H 9900 2250 50  0001 C CNN
F 1 "GND" H 9905 2327 50  0000 C CNN
F 2 "" H 9900 2500 50  0001 C CNN
F 3 "" H 9900 2500 50  0001 C CNN
	1    9900 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 2100 9200 2150
Wire Wire Line
	9200 2150 9300 2150
Wire Wire Line
	10000 2250 9900 2250
Wire Wire Line
	9900 2250 9900 2450
Wire Wire Line
	10000 2050 9650 2050
Wire Wire Line
	10000 1950 9650 1950
Text Label 9650 1950 0    50   ~ 0
SCL
Text Label 9650 2050 0    50   ~ 0
SDA
$Comp
L Device:Ferrite_Bead_Small FB6
U 1 1 5FF150D1
P 9400 2150
F 0 "FB6" V 9163 2150 50  0000 C CNN
F 1 "FB" V 9254 2150 50  0000 C CNN
F 2 "Inductors_SMD:L_0805_HandSoldering" V 9330 2150 50  0001 C CNN
F 3 "~" H 9400 2150 50  0001 C CNN
	1    9400 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	10000 2150 9500 2150
$Comp
L Device:C_Small C8
U 1 1 5FF150D8
P 9200 2300
F 0 "C8" V 8971 2300 50  0000 C CNN
F 1 "0.1uF" V 9062 2300 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9200 2300 50  0001 C CNN
F 3 "~" H 9200 2300 50  0001 C CNN
	1    9200 2300
	-1   0    0    1   
$EndComp
Wire Wire Line
	9200 2400 9200 2450
Wire Wire Line
	9200 2450 9900 2450
Connection ~ 9900 2450
Wire Wire Line
	9900 2450 9900 2500
Wire Wire Line
	9200 2200 9200 2150
Connection ~ 9200 2150
Text Label 4300 5250 0    50   ~ 0
SCL
Text Label 4300 5350 0    50   ~ 0
SDA
$Comp
L Connector:Conn_01x03_Male J4
U 1 1 5FF1854C
P 3700 4300
F 0 "J4" H 3672 4232 50  0000 R CNN
F 1 "A0" H 3672 4323 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 3700 4300 50  0001 C CNN
F 3 "~" H 3700 4300 50  0001 C CNN
	1    3700 4300
	-1   0    0    1   
$EndComp
Wire Wire Line
	3500 4200 3250 4200
Wire Wire Line
	3500 4300 2950 4300
Wire Wire Line
	3500 4400 3250 4400
Wire Wire Line
	3250 4400 3250 4450
Wire Wire Line
	3250 4200 3250 4150
$Comp
L power:+3.3V #PWR0113
U 1 1 5FF26B57
P 3250 4150
F 0 "#PWR0113" H 3250 4000 50  0001 C CNN
F 1 "+3.3V" H 3400 4250 50  0000 C CNN
F 2 "" H 3250 4150 50  0001 C CNN
F 3 "" H 3250 4150 50  0001 C CNN
	1    3250 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5FF26C81
P 3250 4450
F 0 "#PWR0114" H 3250 4200 50  0001 C CNN
F 1 "GND" H 3255 4277 50  0000 C CNN
F 2 "" H 3250 4450 50  0001 C CNN
F 3 "" H 3250 4450 50  0001 C CNN
	1    3250 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R5
U 1 1 5FF2711D
P 3150 4200
F 0 "R5" V 2945 4200 50  0000 C CNN
F 1 "DNP" V 3036 4200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 3150 4200 50  0001 C CNN
F 3 "~" H 3150 4200 50  0001 C CNN
	1    3150 4200
	0    1    1    0   
$EndComp
Connection ~ 3250 4200
$Comp
L Device:R_Small_US R6
U 1 1 5FF27AF7
P 3150 4400
F 0 "R6" V 2945 4400 50  0000 C CNN
F 1 "DNP" V 3036 4400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 3150 4400 50  0001 C CNN
F 3 "~" H 3150 4400 50  0001 C CNN
	1    3150 4400
	0    1    1    0   
$EndComp
Connection ~ 3250 4400
Wire Wire Line
	3050 4400 2950 4400
Wire Wire Line
	2950 4400 2950 4300
Connection ~ 2950 4300
Wire Wire Line
	2950 4300 2700 4300
Wire Wire Line
	3050 4200 2950 4200
Wire Wire Line
	2950 4200 2950 4300
Text Label 2700 4300 0    50   ~ 0
A0
$Comp
L Connector:Conn_01x03_Male J5
U 1 1 5FF2FDB6
P 3700 5050
F 0 "J5" H 3672 4982 50  0000 R CNN
F 1 "A1" H 3672 5073 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 3700 5050 50  0001 C CNN
F 3 "~" H 3700 5050 50  0001 C CNN
	1    3700 5050
	-1   0    0    1   
$EndComp
Wire Wire Line
	3500 4950 3250 4950
Wire Wire Line
	3500 5050 2950 5050
Wire Wire Line
	3500 5150 3250 5150
Wire Wire Line
	3250 5150 3250 5200
Wire Wire Line
	3250 4950 3250 4900
$Comp
L power:+3.3V #PWR0115
U 1 1 5FF2FDC1
P 3250 4900
F 0 "#PWR0115" H 3250 4750 50  0001 C CNN
F 1 "+3.3V" H 3400 5000 50  0000 C CNN
F 2 "" H 3250 4900 50  0001 C CNN
F 3 "" H 3250 4900 50  0001 C CNN
	1    3250 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5FF2FDC7
P 3250 5200
F 0 "#PWR0116" H 3250 4950 50  0001 C CNN
F 1 "GND" H 3255 5027 50  0000 C CNN
F 2 "" H 3250 5200 50  0001 C CNN
F 3 "" H 3250 5200 50  0001 C CNN
	1    3250 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R7
U 1 1 5FF2FDCD
P 3150 4950
F 0 "R7" V 2945 4950 50  0000 C CNN
F 1 "DNP" V 3036 4950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 3150 4950 50  0001 C CNN
F 3 "~" H 3150 4950 50  0001 C CNN
	1    3150 4950
	0    1    1    0   
$EndComp
Connection ~ 3250 4950
$Comp
L Device:R_Small_US R8
U 1 1 5FF2FDD4
P 3150 5150
F 0 "R8" V 2945 5150 50  0000 C CNN
F 1 "DNP" V 3036 5150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 3150 5150 50  0001 C CNN
F 3 "~" H 3150 5150 50  0001 C CNN
	1    3150 5150
	0    1    1    0   
$EndComp
Connection ~ 3250 5150
Wire Wire Line
	3050 5150 2950 5150
Wire Wire Line
	2950 5150 2950 5050
Connection ~ 2950 5050
Wire Wire Line
	2950 5050 2700 5050
Wire Wire Line
	3050 4950 2950 4950
Wire Wire Line
	2950 4950 2950 5050
Text Label 2700 5050 0    50   ~ 0
A1
$Comp
L Oscillator:SG-5032CAN X1
U 1 1 5FF458AB
P 4050 5550
F 0 "X1" H 4150 5250 50  0000 L CNN
F 1 "SG-5032CAN" H 4150 5150 50  0000 L CNN
F 2 "Oscillators:Oscillator_SMD_SeikoEpson_SG8002CE-4pin_3.2x2.5mm_HandSoldering" H 4750 5200 50  0001 C CNN
F 3 "https://support.epson.biz/td/api/doc_check.php?dl=brief_SG5032CAN&lang=en" H 3950 5550 50  0001 C CNN
	1    4050 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 5550 4700 5550
Wire Wire Line
	4050 5850 4050 5950
Wire Wire Line
	4050 5250 4050 5200
Wire Wire Line
	3750 5550 3650 5550
Wire Wire Line
	3650 5550 3650 5200
Wire Wire Line
	3650 5200 4050 5200
Connection ~ 4050 5200
Wire Wire Line
	4050 5100 4050 5200
$Comp
L power:GND #PWR0117
U 1 1 5FF5C232
P 4050 6050
F 0 "#PWR0117" H 4050 5800 50  0001 C CNN
F 1 "GND" H 4055 5877 50  0000 C CNN
F 2 "" H 4050 6050 50  0001 C CNN
F 3 "" H 4050 6050 50  0001 C CNN
	1    4050 6050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0118
U 1 1 5FF5C68C
P 4050 5100
F 0 "#PWR0118" H 4050 4950 50  0001 C CNN
F 1 "+3.3V" H 4065 5273 50  0000 C CNN
F 2 "" H 4050 5100 50  0001 C CNN
F 3 "" H 4050 5100 50  0001 C CNN
	1    4050 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5FF5CD21
P 3650 5800
F 0 "C5" V 3421 5800 50  0000 C CNN
F 1 "0.1uF" V 3512 5800 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3650 5800 50  0001 C CNN
F 3 "~" H 3650 5800 50  0001 C CNN
	1    3650 5800
	-1   0    0    1   
$EndComp
Wire Wire Line
	3650 5550 3650 5700
Connection ~ 3650 5550
Wire Wire Line
	3650 5900 3650 5950
Wire Wire Line
	3650 5950 4050 5950
Connection ~ 4050 5950
Wire Wire Line
	4050 5950 4050 6050
$Comp
L Device:R_Small_US R9
U 1 1 5FF704F6
P 8400 1400
F 0 "R9" H 8468 1446 50  0000 L CNN
F 1 "DNP" H 8468 1355 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 8400 1400 50  0001 C CNN
F 3 "~" H 8400 1400 50  0001 C CNN
	1    8400 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	8300 1400 8050 1400
Wire Wire Line
	8050 1400 8050 2100
Connection ~ 8050 2100
Wire Wire Line
	8050 2100 7800 2100
Wire Wire Line
	8500 1400 8750 1400
Wire Wire Line
	8750 1400 8750 2100
Connection ~ 8750 2100
Wire Wire Line
	8750 2100 8900 2100
$Comp
L Connector:Conn_01x03_Male J7
U 1 1 5FFC58E3
P 7800 4800
F 0 "J7" H 7772 4732 50  0000 R CNN
F 1 "UART" H 7772 4823 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 7800 4800 50  0001 C CNN
F 3 "~" H 7800 4800 50  0001 C CNN
	1    7800 4800
	-1   0    0    1   
$EndComp
Wire Wire Line
	7600 4900 7500 4900
Wire Wire Line
	7500 4900 7500 5000
$Comp
L power:GND #PWR0119
U 1 1 5FFCB599
P 7500 5000
F 0 "#PWR0119" H 7500 4750 50  0001 C CNN
F 1 "GND" H 7505 4827 50  0000 C CNN
F 2 "" H 7500 5000 50  0001 C CNN
F 3 "" H 7500 5000 50  0001 C CNN
	1    7500 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 4800 7300 4800
Wire Wire Line
	7600 4700 7300 4700
Text Label 7300 4700 0    50   ~ 0
TX
Text Label 7300 4800 0    50   ~ 0
RX
$EndSCHEMATC
