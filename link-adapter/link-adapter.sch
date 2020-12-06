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
L Interface_USB:FT230XS U2
U 1 1 5FAF33F1
P 4400 3200
F 0 "U2" H 4950 3950 50  0000 C CNN
F 1 "FT230XS" H 5050 3850 50  0000 C CNN
F 2 "Housings_SSOP:SSOP-16_3.9x4.9mm_Pitch0.635mm" H 5400 2600 50  0001 C CNN
F 3 "https://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT230X.pdf" H 4400 3200 50  0001 C CNN
	1    4400 3200
	1    0    0    -1  
$EndComp
$Comp
L ISL83490:ISL83490 U1
U 1 1 5FAF3E10
P 7750 3100
F 0 "U1" H 7750 3615 50  0000 C CNN
F 1 "ISL83490" H 7750 3524 50  0000 C CNN
F 2 "SMD_Packages:SOIC-8-N" H 7750 3100 50  0001 C CNN
F 3 "DOCUMENTATION" H 7750 3100 50  0001 C CNN
	1    7750 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5FAF4C2B
P 6900 3550
F 0 "#PWR0101" H 6900 3300 50  0001 C CNN
F 1 "GND" H 6905 3377 50  0000 C CNN
F 2 "" H 6900 3550 50  0001 C CNN
F 3 "" H 6900 3550 50  0001 C CNN
	1    6900 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5FAF582C
P 4400 4050
F 0 "#PWR0102" H 4400 3800 50  0001 C CNN
F 1 "GND" H 4405 3877 50  0000 C CNN
F 2 "" H 4400 4050 50  0001 C CNN
F 3 "" H 4400 4050 50  0001 C CNN
	1    4400 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 3550 6900 3500
Wire Wire Line
	6900 3250 7000 3250
Wire Wire Line
	4300 3900 4300 4000
Wire Wire Line
	4300 4000 4400 4000
Wire Wire Line
	4500 4000 4500 3900
Wire Wire Line
	4400 4050 4400 4000
Connection ~ 4400 4000
Wire Wire Line
	4400 4000 4500 4000
$Comp
L power:+3.3V #PWR0103
U 1 1 5FAF6310
P 6900 2800
F 0 "#PWR0103" H 6900 2650 50  0001 C CNN
F 1 "+3.3V" H 6915 2973 50  0000 C CNN
F 2 "" H 6900 2800 50  0001 C CNN
F 3 "" H 6900 2800 50  0001 C CNN
	1    6900 2800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0104
U 1 1 5FAF63F1
P 3550 2700
F 0 "#PWR0104" H 3550 2550 50  0001 C CNN
F 1 "+3.3V" H 3565 2873 50  0000 C CNN
F 2 "" H 3550 2700 50  0001 C CNN
F 3 "" H 3550 2700 50  0001 C CNN
	1    3550 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 2700 3550 2800
Wire Wire Line
	3550 2800 3600 2800
Wire Wire Line
	6900 2800 6900 2950
Wire Wire Line
	6900 2950 7000 2950
$Comp
L power:+3.3V #PWR0105
U 1 1 5FAF72EC
P 4500 2350
F 0 "#PWR0105" H 4500 2200 50  0001 C CNN
F 1 "+3.3V" H 4515 2523 50  0000 C CNN
F 2 "" H 4500 2350 50  0001 C CNN
F 3 "" H 4500 2350 50  0001 C CNN
	1    4500 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 2500 4500 2350
NoConn ~ 5100 3000
NoConn ~ 5100 3100
Wire Wire Line
	5100 2800 5500 2800
Wire Wire Line
	5100 2900 5500 2900
Wire Wire Line
	7000 3050 6600 3050
Wire Wire Line
	7000 3150 6600 3150
Text Label 6600 3050 0    50   ~ 0
RX
Text Label 6600 3150 0    50   ~ 0
TX
Text Label 5500 2800 2    50   ~ 0
TX
Text Label 5500 2900 2    50   ~ 0
RX
$Comp
L Connector:Conn_01x06_Male J4
U 1 1 5FB02ADB
P 6350 1500
F 0 "J4" H 6322 1382 50  0000 R CNN
F 1 "FTDI Header" H 6322 1473 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch2.54mm" H 6350 1500 50  0001 C CNN
F 3 "~" H 6350 1500 50  0001 C CNN
	1    6350 1500
	1    0    0    1   
$EndComp
Wire Wire Line
	6550 1700 6700 1700
Wire Wire Line
	6700 1700 6700 1800
$Comp
L power:GND #PWR0106
U 1 1 5FB03B37
P 6700 1800
F 0 "#PWR0106" H 6700 1550 50  0001 C CNN
F 1 "GND" H 6705 1627 50  0000 C CNN
F 2 "" H 6700 1800 50  0001 C CNN
F 3 "" H 6700 1800 50  0001 C CNN
	1    6700 1800
	1    0    0    -1  
$EndComp
NoConn ~ 6550 1600
NoConn ~ 6550 1200
$Comp
L power:+3.3V #PWR0107
U 1 1 5FB04549
P 7050 1450
F 0 "#PWR0107" H 7050 1300 50  0001 C CNN
F 1 "+3.3V" H 7065 1623 50  0000 C CNN
F 2 "" H 7050 1450 50  0001 C CNN
F 3 "" H 7050 1450 50  0001 C CNN
	1    7050 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 1500 7050 1500
Wire Wire Line
	7050 1500 7050 1450
Wire Wire Line
	6550 1400 6800 1400
Wire Wire Line
	6550 1300 6800 1300
Text Label 6800 1400 2    50   ~ 0
TX
Text Label 6800 1300 2    50   ~ 0
RX
$Comp
L power:+5V #PWR0108
U 1 1 5FB06D4C
P 4300 2350
F 0 "#PWR0108" H 4300 2200 50  0001 C CNN
F 1 "+5V" H 4315 2523 50  0000 C CNN
F 2 "" H 4300 2350 50  0001 C CNN
F 3 "" H 4300 2350 50  0001 C CNN
	1    4300 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 1350 8550 1350
Wire Wire Line
	8550 1350 8550 1250
Wire Wire Line
	8300 1450 8700 1450
Wire Wire Line
	8700 1450 8700 1250
$Comp
L power:+3.3V #PWR0109
U 1 1 5FB08120
P 8550 1250
F 0 "#PWR0109" H 8550 1100 50  0001 C CNN
F 1 "+3.3V" H 8565 1423 50  0000 C CNN
F 2 "" H 8550 1250 50  0001 C CNN
F 3 "" H 8550 1250 50  0001 C CNN
	1    8550 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0110
U 1 1 5FB088C7
P 8700 1250
F 0 "#PWR0110" H 8700 1100 50  0001 C CNN
F 1 "+5V" H 8715 1423 50  0000 C CNN
F 2 "" H 8700 1250 50  0001 C CNN
F 3 "" H 8700 1250 50  0001 C CNN
	1    8700 1250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J6
U 1 1 5FB098CA
P 5500 3400
F 0 "J6" H 5472 3374 50  0000 R CNN
F 1 "CBUS" H 5472 3283 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 5500 3400 50  0001 C CNN
F 3 "~" H 5500 3400 50  0001 C CNN
	1    5500 3400
	-1   0    0    -1  
$EndComp
$Comp
L Connector:8P8C J1
U 1 1 5FB0D205
P 10000 2250
F 0 "J1" H 9650 2150 50  0000 R CNN
F 1 "ToADC" H 9650 2050 50  0000 R CNN
F 2 "Connectors:RJ45_8" V 10000 2275 50  0001 C CNN
F 3 "~" V 10000 2275 50  0001 C CNN
	1    10000 2250
	-1   0    0    -1  
$EndComp
$Comp
L Connector:8P8C J2
U 1 1 5FB0F283
P 10000 3850
F 0 "J2" H 9670 3946 50  0000 R CNN
F 1 "ToMaster" H 9670 3855 50  0000 R CNN
F 2 "Connectors:RJ45_8" V 10000 3875 50  0001 C CNN
F 3 "~" V 10000 3875 50  0001 C CNN
	1    10000 3850
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5FB10316
P 9450 4450
F 0 "#PWR0111" H 9450 4200 50  0001 C CNN
F 1 "GND" H 9455 4277 50  0000 C CNN
F 2 "" H 9450 4450 50  0001 C CNN
F 3 "" H 9450 4450 50  0001 C CNN
	1    9450 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 4450 9450 3850
Wire Wire Line
	9450 2050 9600 2050
Wire Wire Line
	9450 2250 9600 2250
Connection ~ 9450 2250
Wire Wire Line
	9450 2250 9450 2050
Wire Wire Line
	9450 3650 9600 3650
Wire Wire Line
	9450 3850 9600 3850
Connection ~ 9450 3850
Wire Wire Line
	9450 3850 9450 3650
$Comp
L power:+5V #PWR0112
U 1 1 5FB16EF9
P 9350 1350
F 0 "#PWR0112" H 9350 1200 50  0001 C CNN
F 1 "+5V" H 9365 1523 50  0000 C CNN
F 2 "" H 9350 1350 50  0001 C CNN
F 3 "" H 9350 1350 50  0001 C CNN
	1    9350 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 2150 9350 2150
Wire Wire Line
	9350 2150 9350 2350
Wire Wire Line
	9350 2350 9600 2350
Connection ~ 9350 2150
Wire Wire Line
	8900 2950 8600 2950
Wire Wire Line
	8500 3050 8800 3050
Wire Wire Line
	8500 3150 9100 3150
Wire Wire Line
	8500 3250 9200 3250
Text Notes 10600 1550 2    50   ~ 0
Supply power to ADC boards
Wire Wire Line
	9450 2250 9450 3650
Connection ~ 9450 3650
Wire Wire Line
	8900 2550 9600 2550
Wire Wire Line
	9600 2450 9000 2450
Wire Wire Line
	9200 1850 9600 1850
Wire Wire Line
	9600 1950 9100 1950
$Comp
L Device:C_Small C1
U 1 1 5FB29431
P 6800 3350
F 0 "C1" H 6600 3400 50  0000 L CNN
F 1 "0.1uF" H 6500 3300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6800 3350 50  0001 C CNN
F 3 "~" H 6800 3350 50  0001 C CNN
	1    6800 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 3250 6800 2950
Wire Wire Line
	6800 2950 6900 2950
Connection ~ 6900 2950
Wire Wire Line
	6800 3450 6800 3500
Wire Wire Line
	6800 3500 6900 3500
Connection ~ 6900 3500
Wire Wire Line
	6900 3500 6900 3250
$Comp
L Connector:USB_B J3
U 1 1 5FB2CD24
P 2000 3100
F 0 "J3" H 2057 3567 50  0000 C CNN
F 1 "USB_B" H 2057 3476 50  0000 C CNN
F 2 "Connectors:USB_B" H 2150 3050 50  0001 C CNN
F 3 " ~" H 2150 3050 50  0001 C CNN
	1    2000 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 3100 3200 3100
Wire Wire Line
	3200 3100 3350 3200
Wire Wire Line
	3350 3200 3700 3200
Wire Wire Line
	3700 3100 3350 3100
Wire Wire Line
	3350 3100 3200 3200
Wire Wire Line
	3200 3200 3150 3200
Wire Wire Line
	2950 2900 3100 2900
Wire Wire Line
	3100 2900 3100 2600
$Comp
L power:+5V #PWR0113
U 1 1 5FB33692
P 3100 2600
F 0 "#PWR0113" H 3100 2450 50  0001 C CNN
F 1 "+5V" H 3115 2773 50  0000 C CNN
F 2 "" H 3100 2600 50  0001 C CNN
F 3 "" H 3100 2600 50  0001 C CNN
	1    3100 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5FB357B3
P 2000 3600
F 0 "#PWR0114" H 2000 3350 50  0001 C CNN
F 1 "GND" H 2005 3427 50  0000 C CNN
F 2 "" H 2000 3600 50  0001 C CNN
F 3 "" H 2000 3600 50  0001 C CNN
	1    2000 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 3600 2000 3550
$Comp
L Connector:Conn_01x04_Male J7
U 1 1 5FB37B48
P 5800 5150
F 0 "J7" H 5772 5124 50  0000 R CNN
F 1 "FORLED" H 5772 5033 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 5800 5150 50  0001 C CNN
F 3 "~" H 5800 5150 50  0001 C CNN
	1    5800 5150
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5FB38369
P 5050 5750
F 0 "#PWR0115" H 5050 5500 50  0001 C CNN
F 1 "GND" H 5055 5577 50  0000 C CNN
F 2 "" H 5050 5750 50  0001 C CNN
F 3 "" H 5050 5750 50  0001 C CNN
	1    5050 5750
	1    0    0    -1  
$EndComp
Text Notes 7450 5050 2    50   ~ 0
place next to J6 CBUS for convenience
$Comp
L Device:R_Small_US R10
U 1 1 5FB6B7D3
P 5500 5550
F 0 "R10" H 5568 5596 50  0000 L CNN
F 1 "6000" H 5568 5505 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5500 5550 50  0001 C CNN
F 3 "~" H 5500 5550 50  0001 C CNN
	1    5500 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R9
U 1 1 5FB6C234
P 5200 5550
F 0 "R9" H 5268 5596 50  0000 L CNN
F 1 "6000" H 5268 5505 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5200 5550 50  0001 C CNN
F 3 "~" H 5200 5550 50  0001 C CNN
	1    5200 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R8
U 1 1 5FB6C8E6
P 4900 5550
F 0 "R8" H 4968 5596 50  0000 L CNN
F 1 "6000" H 4968 5505 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 4900 5550 50  0001 C CNN
F 3 "~" H 4900 5550 50  0001 C CNN
	1    4900 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R7
U 1 1 5FB6CD0C
P 4600 5550
F 0 "R7" H 4668 5596 50  0000 L CNN
F 1 "6000" H 4668 5505 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 4600 5550 50  0001 C CNN
F 3 "~" H 4600 5550 50  0001 C CNN
	1    4600 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R6
U 1 1 5FB70FB9
P 5500 4800
F 0 "R6" H 5568 4846 50  0000 L CNN
F 1 "6000" H 5568 4755 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5500 4800 50  0001 C CNN
F 3 "~" H 5500 4800 50  0001 C CNN
	1    5500 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R5
U 1 1 5FB70FBF
P 5200 4800
F 0 "R5" H 5268 4846 50  0000 L CNN
F 1 "6000" H 5268 4755 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5200 4800 50  0001 C CNN
F 3 "~" H 5200 4800 50  0001 C CNN
	1    5200 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R4
U 1 1 5FB70FC5
P 4900 4800
F 0 "R4" H 4968 4846 50  0000 L CNN
F 1 "6000" H 4968 4755 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 4900 4800 50  0001 C CNN
F 3 "~" H 4900 4800 50  0001 C CNN
	1    4900 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R3
U 1 1 5FB70FCB
P 4600 4800
F 0 "R3" H 4668 4846 50  0000 L CNN
F 1 "6000" H 4668 4755 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 4600 4800 50  0001 C CNN
F 3 "~" H 4600 4800 50  0001 C CNN
	1    4600 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 5350 5500 5350
Wire Wire Line
	5500 5350 5500 5450
Wire Wire Line
	5500 5350 5500 4900
Connection ~ 5500 5350
Wire Wire Line
	5600 5250 5200 5250
Wire Wire Line
	5200 5250 5200 4900
Wire Wire Line
	5200 5250 5200 5450
Connection ~ 5200 5250
Wire Wire Line
	5600 5150 4900 5150
Wire Wire Line
	4900 5150 4900 4900
Wire Wire Line
	4900 5150 4900 5450
Connection ~ 4900 5150
Wire Wire Line
	5600 5050 4600 5050
Wire Wire Line
	4600 5050 4600 4900
Wire Wire Line
	4600 5050 4600 5450
Connection ~ 4600 5050
Wire Wire Line
	4600 5650 4600 5700
Wire Wire Line
	4600 5700 4900 5700
Wire Wire Line
	5500 5700 5500 5650
Wire Wire Line
	5200 5650 5200 5700
Connection ~ 5200 5700
Wire Wire Line
	5200 5700 5500 5700
Wire Wire Line
	4900 5650 4900 5700
Connection ~ 4900 5700
Wire Wire Line
	4900 5700 5050 5700
Wire Wire Line
	5050 5750 5050 5700
Connection ~ 5050 5700
Wire Wire Line
	5050 5700 5200 5700
Wire Wire Line
	4600 4700 4600 4650
Wire Wire Line
	4600 4650 4900 4650
Wire Wire Line
	5500 4650 5500 4700
Wire Wire Line
	5200 4700 5200 4650
Connection ~ 5200 4650
Wire Wire Line
	5200 4650 5500 4650
Wire Wire Line
	4900 4700 4900 4650
Connection ~ 4900 4650
Wire Wire Line
	4900 4650 5050 4650
Wire Wire Line
	5050 4650 5050 4600
Connection ~ 5050 4650
Wire Wire Line
	5050 4650 5200 4650
Wire Wire Line
	4300 2350 4300 2500
Wire Wire Line
	3600 3400 3600 2800
Wire Wire Line
	3600 3400 3700 3400
Connection ~ 3600 2800
Wire Wire Line
	3600 2800 3700 2800
$Comp
L Device:C_Small C7
U 1 1 5FBA3353
P 3600 3650
F 0 "C7" H 3400 3700 50  0000 L CNN
F 1 "0.1uF" H 3300 3600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3600 3650 50  0001 C CNN
F 3 "~" H 3600 3650 50  0001 C CNN
	1    3600 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 3400 3600 3550
Connection ~ 3600 3400
Wire Wire Line
	3600 3750 3600 4000
Wire Wire Line
	3600 4000 4300 4000
Connection ~ 4300 4000
$Comp
L Device:C_Small C2
U 1 1 5FBABD17
P 3900 1300
F 0 "C2" H 3700 1350 50  0000 L CNN
F 1 "0.1uF" H 3600 1250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3900 1300 50  0001 C CNN
F 3 "~" H 3900 1300 50  0001 C CNN
	1    3900 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C3
U 1 1 5FBAC71A
P 4150 1300
F 0 "C3" H 4241 1346 50  0000 L CNN
F 1 "4.7uF" H 4241 1255 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4150 1300 50  0001 C CNN
F 3 "~" H 4150 1300 50  0001 C CNN
	1    4150 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5FBACFC4
P 4000 1500
F 0 "#PWR0116" H 4000 1250 50  0001 C CNN
F 1 "GND" H 4005 1327 50  0000 C CNN
F 2 "" H 4000 1500 50  0001 C CNN
F 3 "" H 4000 1500 50  0001 C CNN
	1    4000 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1400 3900 1450
Wire Wire Line
	3900 1450 4000 1450
Wire Wire Line
	4150 1450 4150 1400
Wire Wire Line
	4000 1500 4000 1450
Connection ~ 4000 1450
Wire Wire Line
	4000 1450 4150 1450
Wire Wire Line
	3900 1200 3900 1150
Wire Wire Line
	3900 1150 4000 1150
Wire Wire Line
	4150 1150 4150 1200
Wire Wire Line
	4000 1150 4000 1100
Connection ~ 4000 1150
Wire Wire Line
	4000 1150 4150 1150
$Comp
L power:+5V #PWR0117
U 1 1 5FBBEAE7
P 4000 1100
F 0 "#PWR0117" H 4000 950 50  0001 C CNN
F 1 "+5V" H 4015 1273 50  0000 C CNN
F 2 "" H 4000 1100 50  0001 C CNN
F 3 "" H 4000 1100 50  0001 C CNN
	1    4000 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB1
U 1 1 5FBC4F99
P 2850 2900
F 0 "FB1" V 2613 2900 50  0000 C CNN
F 1 "MPZ2012S601AT000‎" V 2704 2900 50  0000 C CNN
F 2 "Inductors_SMD:L_0805_HandSoldering" V 2780 2900 50  0001 C CNN
F 3 "~" H 2850 2900 50  0001 C CNN
	1    2850 2900
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5FBC621C
P 2450 3400
F 0 "C4" H 2250 3450 50  0000 L CNN
F 1 "10nF" H 2150 3350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2450 3400 50  0001 C CNN
F 3 "~" H 2450 3400 50  0001 C CNN
	1    2450 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 3550 2450 3550
Wire Wire Line
	2450 3550 2450 3500
Connection ~ 2000 3550
Wire Wire Line
	2000 3550 2000 3500
Wire Wire Line
	2300 2900 2450 2900
Wire Wire Line
	2450 3300 2450 2900
Connection ~ 2450 2900
Wire Wire Line
	2450 2900 2750 2900
$Comp
L Device:R_Small_US R1
U 1 1 5FBE0E6A
P 3050 3100
F 0 "R1" V 2845 3100 50  0000 C CNN
F 1 "27" V 2936 3100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 3050 3100 50  0001 C CNN
F 3 "~" H 3050 3100 50  0001 C CNN
	1    3050 3100
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R2
U 1 1 5FBE18CE
P 3050 3200
F 0 "R2" V 2845 3200 50  0000 C CNN
F 1 "27" V 2936 3200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 3050 3200 50  0001 C CNN
F 3 "~" H 3050 3200 50  0001 C CNN
	1    3050 3200
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5FBE70C4
P 2650 3600
F 0 "C5" H 2450 3650 50  0000 L CNN
F 1 "47pF" H 2350 3550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2650 3600 50  0001 C CNN
F 3 "~" H 2650 3600 50  0001 C CNN
	1    2650 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5FBE77F4
P 2850 3600
F 0 "C6" H 2650 3650 50  0000 L CNN
F 1 "47pF" H 2550 3550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2850 3600 50  0001 C CNN
F 3 "~" H 2850 3600 50  0001 C CNN
	1    2850 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 3100 2650 3100
Wire Wire Line
	2950 3200 2850 3200
Wire Wire Line
	2650 3500 2650 3100
Connection ~ 2650 3100
Wire Wire Line
	2650 3100 2950 3100
Wire Wire Line
	2850 3500 2850 3200
Connection ~ 2850 3200
Wire Wire Line
	2850 3200 2300 3200
Wire Wire Line
	2650 3700 2650 3800
Wire Wire Line
	2650 3800 2750 3800
Wire Wire Line
	2850 3800 2850 3700
Wire Wire Line
	2750 3800 2750 3900
Connection ~ 2750 3800
Wire Wire Line
	2750 3800 2850 3800
$Comp
L power:GND #PWR0118
U 1 1 5FC0A180
P 2750 3900
F 0 "#PWR0118" H 2750 3650 50  0001 C CNN
F 1 "GND" H 2755 3727 50  0000 C CNN
F 2 "" H 2750 3900 50  0001 C CNN
F 3 "" H 2750 3900 50  0001 C CNN
	1    2750 3900
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0119
U 1 1 5FC0A9C5
P 5050 4600
F 0 "#PWR0119" H 5050 4450 50  0001 C CNN
F 1 "+3.3V" H 5065 4773 50  0000 C CNN
F 2 "" H 5050 4600 50  0001 C CNN
F 3 "" H 5050 4600 50  0001 C CNN
	1    5050 4600
	1    0    0    -1  
$EndComp
Text Notes 9150 1000 2    50   ~ 0
short jumper when using 5V FTDI cable\n(and no FTDI chip of course)\nor use header to inject +5V
Text Notes 4150 2250 2    50   ~ 0
Use FT_Prog from FTDI to reprogram for 500mA draw\nand make any other desired changes.
Text Label 3400 3100 0    50   ~ 0
USBD-
Text Label 3400 3200 0    50   ~ 0
USBD+
Text Label 2550 3100 0    50   ~ 0
D+
Text Label 2550 3200 0    50   ~ 0
D-
Text Label 2450 2900 0    50   ~ 0
USB5V
Text Label 4650 5050 0    50   ~ 0
J6_1
Text Label 4950 5150 0    50   ~ 0
J6_2
Text Label 5250 5250 0    50   ~ 0
J6_3
Text Label 5550 5350 0    50   ~ 0
J6_4
Text Label 8550 2950 0    50   ~ 0
A
Text Label 8550 3050 0    50   ~ 0
B
Text Label 8550 3150 0    50   ~ 0
Z
Text Label 8550 3250 0    50   ~ 0
Y
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5FC50762
P 1200 6100
F 0 "H1" H 1300 6149 50  0000 L CNN
F 1 "MountingHole_Pad" H 1300 6058 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 1200 6100 50  0001 C CNN
F 3 "~" H 1200 6100 50  0001 C CNN
	1    1200 6100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5FC50C8D
P 1550 6100
F 0 "H2" H 1650 6149 50  0000 L CNN
F 1 "MountingHole_Pad" H 1650 6058 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 1550 6100 50  0001 C CNN
F 3 "~" H 1550 6100 50  0001 C CNN
	1    1550 6100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5FC51088
P 1900 6100
F 0 "H3" H 2000 6149 50  0000 L CNN
F 1 "MountingHole_Pad" H 2000 6058 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 1900 6100 50  0001 C CNN
F 3 "~" H 1900 6100 50  0001 C CNN
	1    1900 6100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5FC513A2
P 2250 6100
F 0 "H4" H 2350 6149 50  0000 L CNN
F 1 "MountingHole_Pad" H 2350 6058 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 2250 6100 50  0001 C CNN
F 3 "~" H 2250 6100 50  0001 C CNN
	1    2250 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 6200 1200 6300
Wire Wire Line
	1200 6300 1550 6300
Wire Wire Line
	2250 6300 2250 6200
Wire Wire Line
	1900 6200 1900 6300
Connection ~ 1900 6300
Wire Wire Line
	1900 6300 2250 6300
Wire Wire Line
	1550 6200 1550 6300
Connection ~ 1550 6300
Wire Wire Line
	1550 6300 1700 6300
Wire Wire Line
	1700 6300 1700 6400
Connection ~ 1700 6300
Wire Wire Line
	1700 6300 1900 6300
$Comp
L power:GND #PWR0120
U 1 1 5FC6CEA7
P 1700 6400
F 0 "#PWR0120" H 1700 6150 50  0001 C CNN
F 1 "GND" H 1705 6227 50  0000 C CNN
F 2 "" H 1700 6400 50  0001 C CNN
F 3 "" H 1700 6400 50  0001 C CNN
	1    1700 6400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J8
U 1 1 5FCAF174
P 2900 4500
F 0 "J8" H 2872 4382 50  0000 R CNN
F 1 "AltUSB" H 2872 4473 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 2900 4500 50  0001 C CNN
F 3 "~" H 2900 4500 50  0001 C CNN
	1    2900 4500
	-1   0    0    1   
$EndComp
Wire Wire Line
	2700 4600 2600 4600
Wire Wire Line
	2600 4600 2600 4700
Wire Wire Line
	2700 4500 2350 4500
Wire Wire Line
	2700 4400 2350 4400
Wire Wire Line
	2700 4300 2350 4300
Text Label 2350 4300 0    50   ~ 0
USB5V
Text Label 2350 4400 0    50   ~ 0
D-
Text Label 2350 4500 0    50   ~ 0
D+
$Comp
L power:GND #PWR0121
U 1 1 5FCCF6F9
P 2600 4700
F 0 "#PWR0121" H 2600 4450 50  0001 C CNN
F 1 "GND" H 2605 4527 50  0000 C CNN
F 2 "" H 2600 4700 50  0001 C CNN
F 3 "" H 2600 4700 50  0001 C CNN
	1    2600 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 3600 5150 3600
Wire Wire Line
	5100 3500 5150 3500
Wire Wire Line
	5150 3500 5250 3600
Wire Wire Line
	5250 3600 5300 3600
Wire Wire Line
	5100 3400 5150 3400
Wire Wire Line
	5150 3400 5250 3300
Wire Wire Line
	5250 3300 5300 3300
Wire Wire Line
	5150 3300 5100 3300
Wire Wire Line
	5150 3600 5250 3400
Wire Wire Line
	5250 3400 5300 3400
Wire Wire Line
	5150 3300 5250 3500
Wire Wire Line
	5250 3500 5300 3500
NoConn ~ 1900 3500
$Comp
L Device:C_Small C8
U 1 1 5FAFFBC2
P 10600 1850
F 0 "C8" H 10692 1896 50  0000 L CNN
F 1 "0.1uF" H 10692 1805 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10600 1850 50  0001 C CNN
F 3 "~" H 10600 1850 50  0001 C CNN
	1    10600 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 5FB077FB
P 10600 2050
F 0 "#PWR0122" H 10600 1800 50  0001 C CNN
F 1 "GND" H 10605 1877 50  0000 C CNN
F 2 "" H 10600 2050 50  0001 C CNN
F 3 "" H 10600 2050 50  0001 C CNN
	1    10600 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10600 2050 10600 1950
$Comp
L Device:LED D1
U 1 1 5FB185CD
P 8100 5000
F 0 "D1" V 8139 4882 50  0000 R CNN
F 1 "LED" V 8048 4882 50  0000 R CNN
F 2 "LEDs:LED_0805_HandSoldering" H 8100 5000 50  0001 C CNN
F 3 "~" H 8100 5000 50  0001 C CNN
	1    8100 5000
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0123
U 1 1 5FB19471
P 8100 4800
F 0 "#PWR0123" H 8100 4650 50  0001 C CNN
F 1 "+3.3V" H 8115 4973 50  0000 C CNN
F 2 "" H 8100 4800 50  0001 C CNN
F 3 "" H 8100 4800 50  0001 C CNN
	1    8100 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R11
U 1 1 5FB19984
P 8100 5350
F 0 "R11" H 8168 5396 50  0000 L CNN
F 1 "620" H 8168 5305 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 8100 5350 50  0001 C CNN
F 3 "~" H 8100 5350 50  0001 C CNN
	1    8100 5350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 5FB1A1C3
P 8100 5550
F 0 "#PWR0124" H 8100 5300 50  0001 C CNN
F 1 "GND" H 8105 5377 50  0000 C CNN
F 2 "" H 8100 5550 50  0001 C CNN
F 3 "" H 8100 5550 50  0001 C CNN
	1    8100 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 5150 8100 5250
Wire Wire Line
	8100 5450 8100 5550
Wire Wire Line
	8100 4800 8100 4850
Text Notes 8200 4850 0    50   ~ 0
power indicator
Wire Wire Line
	9600 3750 9350 3750
Wire Wire Line
	9350 3750 9350 3950
Wire Wire Line
	9350 3950 9600 3950
Connection ~ 9350 3950
$Comp
L Device:R_Small_US R12
U 1 1 5FB25560
P 9350 5850
F 0 "R12" H 9418 5896 50  0000 L CNN
F 1 "3000" H 9418 5805 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 9350 5850 50  0001 C CNN
F 3 "~" H 9350 5850 50  0001 C CNN
	1    9350 5850
	1    0    0    -1  
$EndComp
Connection ~ 9350 5150
$Comp
L power:GND #PWR0125
U 1 1 5FB2EC78
P 9350 6050
F 0 "#PWR0125" H 9350 5800 50  0001 C CNN
F 1 "GND" H 9355 5877 50  0000 C CNN
F 2 "" H 9350 6050 50  0001 C CNN
F 3 "" H 9350 6050 50  0001 C CNN
	1    9350 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 5950 9350 6050
$Comp
L Device:LED D2
U 1 1 5FB41F0C
P 9350 5500
F 0 "D2" V 9389 5382 50  0000 R CNN
F 1 "LED" V 9298 5382 50  0000 R CNN
F 2 "LEDs:LED_0805_HandSoldering" H 9350 5500 50  0001 C CNN
F 3 "~" H 9350 5500 50  0001 C CNN
	1    9350 5500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9350 5150 9350 5350
Wire Wire Line
	9350 5650 9350 5750
$Comp
L power:+3.3V #PWR0126
U 1 1 5FB550DA
P 10050 4800
F 0 "#PWR0126" H 10050 4650 50  0001 C CNN
F 1 "+3.3V" H 10065 4973 50  0000 C CNN
F 2 "" H 10050 4800 50  0001 C CNN
F 3 "" H 10050 4800 50  0001 C CNN
	1    10050 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0127
U 1 1 5FB55B07
P 10050 5850
F 0 "#PWR0127" H 10050 5600 50  0001 C CNN
F 1 "GND" H 10055 5677 50  0000 C CNN
F 2 "" H 10050 5850 50  0001 C CNN
F 3 "" H 10050 5850 50  0001 C CNN
	1    10050 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 5450 10250 5450
$Comp
L Connector:TestPoint TP1
U 1 1 5FB72503
P 10250 5450
F 0 "TP1" H 10308 5568 50  0000 L CNN
F 1 "MPWRGOOD" H 10308 5477 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 10450 5450 50  0001 C CNN
F 3 "~" H 10450 5450 50  0001 C CNN
	1    10250 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 3950 9350 5150
$Comp
L Device:Q_NMOS_GSD Q1
U 1 1 5FBB5D0F
P 9950 5150
F 0 "Q1" H 10154 5196 50  0000 L CNN
F 1 "NX7002BKW" H 10154 5105 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-323_SC-70_Handsoldering" H 10150 5250 50  0001 C CNN
F 3 "~" H 9950 5150 50  0001 C CNN
	1    9950 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 5150 9750 5150
Wire Wire Line
	10050 4800 10050 4950
$Comp
L Device:R_Small_US R13
U 1 1 5FBE47CE
P 10050 5650
F 0 "R13" H 10118 5696 50  0000 L CNN
F 1 "6000" H 10118 5605 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 10050 5650 50  0001 C CNN
F 3 "~" H 10050 5650 50  0001 C CNN
	1    10050 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 5850 10050 5750
Wire Wire Line
	10050 5550 10050 5450
Wire Wire Line
	10050 5350 10050 5450
Connection ~ 10050 5450
Text Notes 9650 6250 0    50   ~ 0
bring master power line down to a\n+3.3V signal for FT230XS GPIO
Wire Wire Line
	10600 1650 10600 1750
Wire Wire Line
	10600 1650 9450 1650
Wire Wire Line
	9450 1650 9450 1750
Wire Wire Line
	9450 1750 9350 1750
Connection ~ 9350 1750
Wire Wire Line
	9350 1750 9350 2150
Wire Wire Line
	9200 1850 9200 3250
Wire Wire Line
	8900 2950 8900 2550
Wire Wire Line
	9000 3050 9000 2450
Wire Wire Line
	9100 3150 9100 1950
Wire Wire Line
	9150 3550 9600 3550
Wire Wire Line
	9150 4050 9600 4050
Wire Wire Line
	9150 4150 9600 4150
Wire Wire Line
	9150 3450 9600 3450
Text Notes 9500 4450 0    50   ~ 0
pin mapping on this connector matches\nADC board's mapping
Text Label 9150 3450 0    50   ~ 0
A
Text Label 9150 3550 0    50   ~ 0
B
Text Label 9150 4050 0    50   ~ 0
Z
Text Label 9150 4150 0    50   ~ 0
Y
$Comp
L Device:R_Small_US R14
U 1 1 5FD68CA4
P 8700 2700
F 0 "R14" V 8495 2700 50  0000 C CNN
F 1 "120" V 8586 2700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 8700 2700 50  0001 C CNN
F 3 "~" H 8700 2700 50  0001 C CNN
	1    8700 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	8600 2700 8600 2950
Connection ~ 8600 2950
Wire Wire Line
	8600 2950 8500 2950
Wire Wire Line
	8800 2700 8800 3050
Connection ~ 8800 3050
Wire Wire Line
	8800 3050 9000 3050
$Comp
L Connector:Conn_01x04_Male J5
U 1 1 5FB79CB6
P 8100 1450
F 0 "J5" H 8208 1731 50  0000 C CNN
F 1 "PowerJumper" H 8208 1640 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 8100 1450 50  0001 C CNN
F 3 "~" H 8100 1450 50  0001 C CNN
	1    8100 1450
	1    0    0    -1  
$EndComp
NoConn ~ 8300 1550
Wire Wire Line
	8300 1650 8550 1650
Wire Wire Line
	8550 1650 8550 1700
$Comp
L power:GND #PWR0128
U 1 1 5FB95E11
P 8550 1700
F 0 "#PWR0128" H 8550 1450 50  0001 C CNN
F 1 "GND" H 8555 1527 50  0000 C CNN
F 2 "" H 8550 1700 50  0001 C CNN
F 3 "" H 8550 1700 50  0001 C CNN
	1    8550 1700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J9
U 1 1 5FCCBCDB
P 9150 1500
F 0 "J9" H 9258 1681 50  0000 C CNN
F 1 "CurrentProbe" H 9258 1590 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 9150 1500 50  0001 C CNN
F 3 "~" H 9150 1500 50  0001 C CNN
	1    9150 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 1600 9350 1750
Wire Wire Line
	9350 1500 9350 1350
$EndSCHEMATC
