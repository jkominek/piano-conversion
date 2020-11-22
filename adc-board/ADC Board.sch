EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 3
Title "ADC Board"
Date ""
Rev "A0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GNDD #PWR0101
U 1 1 5F9891F8
P 4650 9500
F 0 "#PWR0101" H 4650 9250 50  0001 C CNN
F 1 "GNDD" H 4654 9345 50  0000 C CNN
F 2 "" H 4650 9500 50  0001 C CNN
F 3 "" H 4650 9500 50  0001 C CNN
	1    4650 9500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 9250 4650 9400
Wire Wire Line
	4650 9400 4750 9400
Wire Wire Line
	5450 9400 5450 9250
Connection ~ 4650 9400
Wire Wire Line
	4650 9400 4650 9500
Wire Wire Line
	5350 9250 5350 9400
Connection ~ 5350 9400
Wire Wire Line
	5350 9400 5450 9400
Wire Wire Line
	5250 9250 5250 9400
Connection ~ 5250 9400
Wire Wire Line
	5250 9400 5350 9400
Wire Wire Line
	5150 9250 5150 9400
Connection ~ 5150 9400
Wire Wire Line
	5150 9400 5250 9400
Wire Wire Line
	5050 9250 5050 9400
Connection ~ 5050 9400
Wire Wire Line
	5050 9400 5150 9400
Wire Wire Line
	4950 9250 4950 9400
Connection ~ 4950 9400
Wire Wire Line
	4950 9400 5050 9400
Wire Wire Line
	4850 9250 4850 9400
Connection ~ 4850 9400
Wire Wire Line
	4850 9400 4950 9400
Wire Wire Line
	4750 9250 4750 9400
Connection ~ 4750 9400
Wire Wire Line
	4750 9400 4850 9400
$Comp
L power:GNDA #PWR0102
U 1 1 5F98BC31
P 5550 9500
F 0 "#PWR0102" H 5550 9250 50  0001 C CNN
F 1 "GNDA" H 5555 9327 50  0000 C CNN
F 2 "" H 5550 9500 50  0001 C CNN
F 3 "" H 5550 9500 50  0001 C CNN
	1    5550 9500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 9500 5550 9250
$Comp
L power:+3.3VA #PWR0103
U 1 1 5F98CB14
P 5750 1800
F 0 "#PWR0103" H 5750 1650 50  0001 C CNN
F 1 "+3.3VA" H 5765 1973 50  0000 C CNN
F 2 "" H 5750 1800 50  0001 C CNN
F 3 "" H 5750 1800 50  0001 C CNN
	1    5750 1800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0104
U 1 1 5F98D7BF
P 4450 1800
F 0 "#PWR0104" H 4450 1650 50  0001 C CNN
F 1 "+3.3V" H 4465 1973 50  0000 C CNN
F 2 "" H 4450 1800 50  0001 C CNN
F 3 "" H 4450 1800 50  0001 C CNN
	1    4450 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 2050 4450 1900
Wire Wire Line
	4450 1900 4550 1900
Wire Wire Line
	5650 1900 5650 2050
Connection ~ 4450 1900
Wire Wire Line
	4450 1900 4450 1800
Wire Wire Line
	5550 2050 5550 1900
Connection ~ 5550 1900
Wire Wire Line
	5550 1900 5650 1900
Wire Wire Line
	5450 2050 5450 1900
Connection ~ 5450 1900
Wire Wire Line
	5450 1900 5550 1900
Wire Wire Line
	5350 2050 5350 1900
Connection ~ 5350 1900
Wire Wire Line
	5350 1900 5450 1900
Wire Wire Line
	5250 2050 5250 1900
Connection ~ 5250 1900
Wire Wire Line
	5250 1900 5350 1900
Wire Wire Line
	5150 1900 5150 2050
Connection ~ 5150 1900
Wire Wire Line
	5150 1900 5250 1900
Wire Wire Line
	5050 1900 5050 2050
Connection ~ 5050 1900
Wire Wire Line
	5050 1900 5150 1900
Wire Wire Line
	4950 1900 4950 2050
Connection ~ 4950 1900
Wire Wire Line
	4950 1900 5050 1900
Wire Wire Line
	4850 1900 4850 2050
Connection ~ 4850 1900
Wire Wire Line
	4850 1900 4950 1900
Wire Wire Line
	4750 1900 4750 2050
Connection ~ 4750 1900
Wire Wire Line
	4750 1900 4850 1900
Wire Wire Line
	4650 1900 4650 2050
Connection ~ 4650 1900
Wire Wire Line
	4650 1900 4750 1900
Wire Wire Line
	4550 1900 4550 2050
Connection ~ 4550 1900
Wire Wire Line
	4550 1900 4650 1900
$Comp
L Connector_Generic:Conn_02x10_Odd_Even J2
U 1 1 5F998BDC
P 11050 5200
F 0 "J2" H 11100 5817 50  0000 C CNN
F 1 "ST-LINK/V2" H 11100 5726 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x10_Pitch2.54mm" H 11050 5200 50  0001 C CNN
F 3 "~" H 11050 5200 50  0001 C CNN
	1    11050 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0105
U 1 1 5F99A7F3
P 11650 5900
F 0 "#PWR0105" H 11650 5650 50  0001 C CNN
F 1 "GNDD" H 11654 5745 50  0000 C CNN
F 2 "" H 11650 5900 50  0001 C CNN
F 3 "" H 11650 5900 50  0001 C CNN
	1    11650 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	11350 4900 11650 4900
Wire Wire Line
	11650 4900 11650 5000
Wire Wire Line
	11350 5000 11650 5000
Connection ~ 11650 5000
Wire Wire Line
	11650 5000 11650 5100
Wire Wire Line
	11350 5100 11650 5100
Connection ~ 11650 5100
Wire Wire Line
	11650 5100 11650 5200
Wire Wire Line
	11350 5200 11650 5200
Connection ~ 11650 5200
Wire Wire Line
	11650 5200 11650 5300
Wire Wire Line
	11350 5300 11650 5300
Connection ~ 11650 5300
Wire Wire Line
	11650 5300 11650 5400
Wire Wire Line
	11350 5400 11650 5400
Connection ~ 11650 5400
Wire Wire Line
	11650 5400 11650 5500
Wire Wire Line
	11350 5600 11650 5600
Connection ~ 11650 5600
Wire Wire Line
	11650 5600 11650 5700
Wire Wire Line
	11350 5500 11650 5500
Connection ~ 11650 5500
Wire Wire Line
	11650 5500 11650 5600
Wire Wire Line
	11350 5700 11650 5700
Connection ~ 11650 5700
Wire Wire Line
	11650 5700 11650 5900
Wire Wire Line
	10850 5500 10450 5500
Text Label 10450 5500 0    50   ~ 0
NRST
Wire Wire Line
	3850 2350 2150 2350
Text Label 2150 2350 0    50   ~ 0
NRST
Wire Wire Line
	6350 4450 7050 4450
Wire Wire Line
	6350 4350 7050 4350
Wire Wire Line
	6350 3850 7050 3850
Wire Wire Line
	6350 3750 7050 3750
Wire Wire Line
	6350 3650 7050 3650
Text Label 7050 3650 2    50   ~ 0
JTMS
Text Label 7050 3750 2    50   ~ 0
JTCK
Text Label 7050 3850 2    50   ~ 0
JTDI
Text Label 7050 4450 2    50   ~ 0
JNTRST
Text Label 7050 4350 2    50   ~ 0
JTDO
$Comp
L power:GNDD #PWR0107
U 1 1 5F9B2A89
P 3150 2700
F 0 "#PWR0107" H 3150 2450 50  0001 C CNN
F 1 "GNDD" H 3154 2545 50  0000 C CNN
F 2 "" H 3150 2700 50  0001 C CNN
F 3 "" H 3150 2700 50  0001 C CNN
	1    3150 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 2450 3650 2450
Wire Wire Line
	3650 2450 3650 1900
Wire Wire Line
	3650 1900 4450 1900
$Comp
L Device:C C34
U 1 1 5F9B505D
P 10450 1100
F 0 "C34" H 10565 1146 50  0000 L CNN
F 1 "DC6" H 10565 1055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 10488 950 50  0001 C CNN
F 3 "~" H 10450 1100 50  0001 C CNN
	1    10450 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C35
U 1 1 5F9B857A
P 10800 1100
F 0 "C35" H 10915 1146 50  0000 L CNN
F 1 "DC17" H 10915 1055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 10838 950 50  0001 C CNN
F 3 "~" H 10800 1100 50  0001 C CNN
	1    10800 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C36
U 1 1 5F9B8F64
P 11150 1100
F 0 "C36" H 11265 1146 50  0000 L CNN
F 1 "DC30" H 11265 1055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 11188 950 50  0001 C CNN
F 3 "~" H 11150 1100 50  0001 C CNN
	1    11150 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C37
U 1 1 5F9B99EA
P 11500 1100
F 0 "C37" H 11615 1146 50  0000 L CNN
F 1 "DC39" H 11615 1055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 11538 950 50  0001 C CNN
F 3 "~" H 11500 1100 50  0001 C CNN
	1    11500 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C38
U 1 1 5F9BA58E
P 11850 1100
F 0 "C38" H 11965 1146 50  0000 L CNN
F 1 "DC52" H 11965 1055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 11888 950 50  0001 C CNN
F 3 "~" H 11850 1100 50  0001 C CNN
	1    11850 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C39
U 1 1 5F9BADF1
P 12200 1100
F 0 "C39" H 12315 1146 50  0000 L CNN
F 1 "DC62" H 12315 1055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 12238 950 50  0001 C CNN
F 3 "~" H 12200 1100 50  0001 C CNN
	1    12200 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C40
U 1 1 5F9BADFB
P 12550 1100
F 0 "C40" H 12665 1146 50  0000 L CNN
F 1 "DC72" H 12665 1055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 12588 950 50  0001 C CNN
F 3 "~" H 12550 1100 50  0001 C CNN
	1    12550 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C41
U 1 1 5F9BAE05
P 12900 1100
F 0 "C41" H 13015 1146 50  0000 L CNN
F 1 "DC84" H 13015 1055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 12938 950 50  0001 C CNN
F 3 "~" H 12900 1100 50  0001 C CNN
	1    12900 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C42
U 1 1 5F9BAE0F
P 13250 1100
F 0 "C42" H 13365 1146 50  0000 L CNN
F 1 "DC108" H 13365 1055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 13288 950 50  0001 C CNN
F 3 "~" H 13250 1100 50  0001 C CNN
	1    13250 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C43
U 1 1 5F9BAE19
P 13600 1100
F 0 "C43" H 13715 1146 50  0000 L CNN
F 1 "DC121" H 13715 1055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 13638 950 50  0001 C CNN
F 3 "~" H 13600 1100 50  0001 C CNN
	1    13600 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C44
U 1 1 5F9C88F4
P 13950 1100
F 0 "C44" H 14065 1146 50  0000 L CNN
F 1 "DC131" H 14065 1055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 13988 950 50  0001 C CNN
F 3 "~" H 13950 1100 50  0001 C CNN
	1    13950 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C45
U 1 1 5F9C88FA
P 14300 1100
F 0 "C45" H 14415 1146 50  0000 L CNN
F 1 "DC144" H 14415 1055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 14338 950 50  0001 C CNN
F 3 "~" H 14300 1100 50  0001 C CNN
	1    14300 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C46
U 1 1 5F9C8900
P 14650 1100
F 0 "C46" H 14765 1146 50  0000 L CNN
F 1 "DC95" H 14765 1055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 14688 950 50  0001 C CNN
F 3 "~" H 14650 1100 50  0001 C CNN
	1    14650 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	14650 950  14300 950 
Wire Wire Line
	10350 950  10350 850 
Connection ~ 10450 950 
Wire Wire Line
	10450 950  10350 950 
Connection ~ 10800 950 
Wire Wire Line
	10800 950  10450 950 
Connection ~ 11150 950 
Wire Wire Line
	11150 950  10800 950 
Connection ~ 11500 950 
Wire Wire Line
	11500 950  11150 950 
Connection ~ 11850 950 
Wire Wire Line
	11850 950  11500 950 
Connection ~ 12200 950 
Wire Wire Line
	12200 950  11850 950 
Connection ~ 12550 950 
Wire Wire Line
	12550 950  12200 950 
Connection ~ 12900 950 
Wire Wire Line
	12900 950  12550 950 
Connection ~ 13250 950 
Wire Wire Line
	13250 950  12900 950 
Connection ~ 13600 950 
Wire Wire Line
	13600 950  13250 950 
Connection ~ 13950 950 
Wire Wire Line
	13950 950  13600 950 
Connection ~ 14300 950 
Wire Wire Line
	14300 950  13950 950 
Wire Wire Line
	14650 1250 14300 1250
Wire Wire Line
	10350 1250 10350 1350
Connection ~ 10450 1250
Wire Wire Line
	10450 1250 10350 1250
Connection ~ 10800 1250
Wire Wire Line
	10800 1250 10450 1250
Connection ~ 11150 1250
Wire Wire Line
	11150 1250 10800 1250
Connection ~ 11500 1250
Wire Wire Line
	11500 1250 11150 1250
Connection ~ 11850 1250
Wire Wire Line
	11850 1250 11500 1250
Connection ~ 12200 1250
Wire Wire Line
	12200 1250 11850 1250
Connection ~ 12550 1250
Wire Wire Line
	12550 1250 12200 1250
Connection ~ 12900 1250
Wire Wire Line
	12900 1250 12550 1250
Connection ~ 13250 1250
Wire Wire Line
	13250 1250 12900 1250
Connection ~ 13600 1250
Wire Wire Line
	13600 1250 13250 1250
Connection ~ 13950 1250
Wire Wire Line
	13950 1250 13600 1250
Connection ~ 14300 1250
Wire Wire Line
	14300 1250 13950 1250
$Comp
L power:GNDD #PWR0108
U 1 1 5F9CFCFD
P 10350 1350
F 0 "#PWR0108" H 10350 1100 50  0001 C CNN
F 1 "GNDD" H 10354 1195 50  0000 C CNN
F 2 "" H 10350 1350 50  0001 C CNN
F 3 "" H 10350 1350 50  0001 C CNN
	1    10350 1350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0109
U 1 1 5F9D039B
P 10350 850
F 0 "#PWR0109" H 10350 700 50  0001 C CNN
F 1 "+3.3V" H 10365 1023 50  0000 C CNN
F 2 "" H 10350 850 50  0001 C CNN
F 3 "" H 10350 850 50  0001 C CNN
	1    10350 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C48
U 1 1 5F9D1264
P 2850 3150
F 0 "C48" H 2965 3196 50  0000 L CNN
F 1 "2.2uF" H 2965 3105 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2888 3000 50  0001 C CNN
F 3 "~" H 2850 3150 50  0001 C CNN
	1    2850 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 2950 3550 2950
Wire Wire Line
	2850 2950 2850 3000
$Comp
L Device:C C47
U 1 1 5F9D618A
P 2450 3150
F 0 "C47" H 2565 3196 50  0000 L CNN
F 1 "2.2uF" H 2565 3105 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2488 3000 50  0001 C CNN
F 3 "~" H 2450 3150 50  0001 C CNN
	1    2450 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 2850 2450 3000
$Comp
L power:GNDD #PWR0110
U 1 1 5F9DA9AA
P 2650 3350
F 0 "#PWR0110" H 2650 3100 50  0001 C CNN
F 1 "GNDD" H 2654 3195 50  0000 C CNN
F 2 "" H 2650 3350 50  0001 C CNN
F 3 "" H 2650 3350 50  0001 C CNN
	1    2650 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 3300 2850 3350
Wire Wire Line
	2850 3350 2650 3350
Wire Wire Line
	2650 3350 2450 3350
Wire Wire Line
	2450 3350 2450 3300
Connection ~ 2650 3350
Wire Wire Line
	5750 2050 5750 1800
$Comp
L Device:C C33
U 1 1 5FA0D3BE
P 10050 1100
F 0 "C33" H 10165 1146 50  0000 L CNN
F 1 "4.7uF" H 10165 1055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 10088 950 50  0001 C CNN
F 3 "~" H 10050 1100 50  0001 C CNN
	1    10050 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 950  10050 950 
Connection ~ 10350 950 
Wire Wire Line
	10350 1250 10050 1250
Connection ~ 10350 1250
Text Label 2850 2850 0    50   ~ 0
VCAP1
Text Label 3600 2650 0    50   ~ 0
BOOT0
Wire Wire Line
	2450 2850 3800 2850
Text Label 2850 2950 0    50   ~ 0
VCAP2
Wire Wire Line
	10450 4900 10850 4900
Wire Wire Line
	10450 5000 10850 5000
Wire Wire Line
	10450 5100 10850 5100
Wire Wire Line
	10450 5200 10850 5200
Wire Wire Line
	10450 5400 10850 5400
Text Label 10450 5400 0    50   ~ 0
JTDO
Text Label 10450 5200 0    50   ~ 0
JTCK
Text Label 10450 5100 0    50   ~ 0
JTMS
Text Label 10450 5000 0    50   ~ 0
JTDI
Text Label 10450 4900 0    50   ~ 0
JNTRST
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5FF241D9
P 1000 1350
F 0 "H1" H 1100 1399 50  0000 L CNN
F 1 "MountingHole_Pad" H 1100 1308 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 1000 1350 50  0001 C CNN
F 3 "~" H 1000 1350 50  0001 C CNN
	1    1000 1350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5FF253E7
P 1300 1350
F 0 "H2" H 1400 1399 50  0000 L CNN
F 1 "MountingHole_Pad" H 1400 1308 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 1300 1350 50  0001 C CNN
F 3 "~" H 1300 1350 50  0001 C CNN
	1    1300 1350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5FF263BA
P 1600 1350
F 0 "H3" H 1700 1399 50  0000 L CNN
F 1 "MountingHole_Pad" H 1700 1308 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 1600 1350 50  0001 C CNN
F 3 "~" H 1600 1350 50  0001 C CNN
	1    1600 1350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5FF27900
P 1900 1350
F 0 "H4" H 2000 1399 50  0000 L CNN
F 1 "MountingHole_Pad" H 2000 1308 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 1900 1350 50  0001 C CNN
F 3 "~" H 1900 1350 50  0001 C CNN
	1    1900 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0112
U 1 1 5FF28455
P 1450 1550
F 0 "#PWR0112" H 1450 1300 50  0001 C CNN
F 1 "GNDD" H 1454 1395 50  0000 C CNN
F 2 "" H 1450 1550 50  0001 C CNN
F 3 "" H 1450 1550 50  0001 C CNN
	1    1450 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 1450 1000 1550
Wire Wire Line
	1900 1550 1900 1450
Connection ~ 1450 1550
Wire Wire Line
	1300 1450 1300 1550
Wire Wire Line
	1300 1550 1450 1550
Wire Wire Line
	6350 5850 7050 5850
Wire Wire Line
	6350 2450 7050 2450
Wire Wire Line
	6350 2550 7050 2550
Wire Wire Line
	6350 3050 7050 3050
Wire Wire Line
	6350 6150 7050 6150
Wire Wire Line
	6350 6250 7050 6250
Wire Wire Line
	6350 5450 7050 5450
Wire Wire Line
	6350 5550 7050 5550
Wire Wire Line
	6350 6550 7050 6550
Wire Wire Line
	6350 3450 7050 3450
Wire Wire Line
	6350 3550 7050 3550
Text Label 7050 2450 2    50   ~ 0
Sen11
Text Label 7050 2550 2    50   ~ 0
Sen10
Text Label 7050 3050 2    50   ~ 0
Sen5
Text Label 7050 5450 2    50   ~ 0
USART1_TX
Text Label 7050 5550 2    50   ~ 0
USART1_RX
Text Label 7050 6150 2    50   ~ 0
Sen4
Text Label 7050 6250 2    50   ~ 0
Sen3
Text Label 7050 3450 2    50   ~ 0
USB_OTG_FS_D-
Text Label 7050 3550 2    50   ~ 0
USB_OTG_FS_D+
Text Label 7050 5850 2    50   ~ 0
Sen13
$Comp
L power:GNDD #PWR0113
U 1 1 601E6CAB
P 12500 5750
F 0 "#PWR0113" H 12500 5500 50  0001 C CNN
F 1 "GNDD" H 12504 5595 50  0000 C CNN
F 2 "" H 12500 5750 50  0001 C CNN
F 3 "" H 12500 5750 50  0001 C CNN
	1    12500 5750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J3
U 1 1 601EA369
P 13150 3500
F 0 "J3" H 13258 3781 50  0000 C CNN
F 1 "USART3" H 13258 3690 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 13150 3500 50  0001 C CNN
F 3 "~" H 13150 3500 50  0001 C CNN
	1    13150 3500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J4
U 1 1 601EC46F
P 13150 4050
F 0 "J4" H 13258 4331 50  0000 C CNN
F 1 "USART1" H 13258 4240 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch1.27mm" H 13150 4050 50  0001 C CNN
F 3 "~" H 13150 4050 50  0001 C CNN
	1    13150 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	13350 3400 14050 3400
Wire Wire Line
	13350 3500 14050 3500
Wire Wire Line
	13350 3600 13500 3600
Wire Wire Line
	13350 3950 14050 3950
Wire Wire Line
	13350 4050 14050 4050
Wire Wire Line
	13350 4150 13500 4150
$Comp
L power:GNDD #PWR0114
U 1 1 6027C631
P 13500 4150
F 0 "#PWR0114" H 13500 3900 50  0001 C CNN
F 1 "GNDD" H 13504 3995 50  0000 C CNN
F 2 "" H 13500 4150 50  0001 C CNN
F 3 "" H 13500 4150 50  0001 C CNN
	1    13500 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0115
U 1 1 6027D783
P 13500 3600
F 0 "#PWR0115" H 13500 3350 50  0001 C CNN
F 1 "GNDD" H 13504 3445 50  0000 C CNN
F 2 "" H 13500 3600 50  0001 C CNN
F 3 "" H 13500 3600 50  0001 C CNN
	1    13500 3600
	1    0    0    -1  
$EndComp
Text Label 14050 3400 2    50   ~ 0
USART3_RX
Text Label 14050 3500 2    50   ~ 0
USART3_TX
Text Label 14050 3950 2    50   ~ 0
USART1_RX
Text Label 14050 4050 2    50   ~ 0
USART1_TX
$Comp
L Device:C C32
U 1 1 6045586D
P 15100 1100
F 0 "C32" H 15215 1146 50  0000 L CNN
F 1 "DC33" H 15215 1055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 15138 950 50  0001 C CNN
F 3 "~" H 15100 1100 50  0001 C CNN
	1    15100 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0120
U 1 1 60455F47
P 15100 1250
F 0 "#PWR0120" H 15100 1000 50  0001 C CNN
F 1 "GNDA" H 15105 1077 50  0000 C CNN
F 2 "" H 15100 1250 50  0001 C CNN
F 3 "" H 15100 1250 50  0001 C CNN
	1    15100 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR0121
U 1 1 60456F62
P 15100 950
F 0 "#PWR0121" H 15100 800 50  0001 C CNN
F 1 "+3.3VA" H 15115 1123 50  0000 C CNN
F 2 "" H 15100 950 50  0001 C CNN
F 3 "" H 15100 950 50  0001 C CNN
	1    15100 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 6350 3250 6350
Wire Wire Line
	3850 6450 3250 6450
Wire Wire Line
	3850 6550 3250 6550
Wire Wire Line
	3850 6650 3250 6650
Wire Wire Line
	3850 6750 3250 6750
Text Label 3250 6350 0    50   ~ 0
Sen19
Text Label 3250 6450 0    50   ~ 0
Sen18
Text Label 3250 6550 0    50   ~ 0
Sen17
Text Label 3250 6650 0    50   ~ 0
Sen16
Text Label 3250 6750 0    50   ~ 0
Sen15
Wire Wire Line
	6350 5750 7050 5750
Text Label 7050 5750 2    50   ~ 0
Sen14
Wire Wire Line
	6350 2350 7050 2350
Text Label 7050 2350 2    50   ~ 0
Sen12
Wire Wire Line
	6350 2650 7050 2650
Wire Wire Line
	6350 2750 7050 2750
Wire Wire Line
	6350 2850 7050 2850
Wire Wire Line
	6350 2950 7050 2950
Text Label 7050 2650 2    50   ~ 0
Sen9
Text Label 7050 2750 2    50   ~ 0
Sen8
Text Label 7050 2850 2    50   ~ 0
Sen7
Text Label 7050 2950 2    50   ~ 0
Sen6
Wire Wire Line
	6350 4050 7050 4050
Text Label 7050 4050 2    50   ~ 0
Sen2
Wire Wire Line
	6350 4150 7050 4150
$Comp
L Power_Protection:USBLC6-2SC6 U9
U 1 1 606C142F
P 14250 5350
F 0 "U9" V 14204 5794 50  0000 L CNN
F 1 "USBLC6-2SC6" V 14295 5794 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-6_Handsoldering" H 14250 4850 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/usblc6-2.pdf" H 14450 5700 50  0001 C CNN
	1    14250 5350
	0    1    1    0   
$EndComp
$Comp
L power:GNDD #PWR0122
U 1 1 607593F4
P 13850 5450
F 0 "#PWR0122" H 13850 5200 50  0001 C CNN
F 1 "GNDD" H 13854 5295 50  0000 C CNN
F 2 "" H 13850 5450 50  0001 C CNN
F 3 "" H 13850 5450 50  0001 C CNN
	1    13850 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	13700 5400 13700 5900
Wire Wire Line
	13700 5300 13700 4800
Wire Wire Line
	12500 5750 12500 5700
Text Label 13700 4800 0    50   ~ 0
USB_D+
Text Label 13700 5900 0    50   ~ 0
USB_D-
Wire Wire Line
	13850 5450 13850 5350
Wire Wire Line
	14350 4800 14350 4950
Wire Wire Line
	13700 4800 14350 4800
Wire Wire Line
	14350 5900 14350 5750
Wire Wire Line
	13700 5900 14350 5900
Wire Wire Line
	14150 5750 14150 5850
Wire Wire Line
	14150 5850 15000 5850
Wire Wire Line
	14150 4950 14150 4900
Wire Wire Line
	14150 4900 15000 4900
Text Label 15000 4900 2    50   ~ 0
USB_OTG_FS_D+
Text Label 15000 5850 2    50   ~ 0
USB_OTG_FS_D-
Wire Wire Line
	3850 6050 3250 6050
Wire Wire Line
	3850 6150 3250 6150
Wire Wire Line
	3850 6250 3250 6250
Text Label 3250 6050 0    50   ~ 0
Sen22
Text Label 3250 6150 0    50   ~ 0
Sen21
Text Label 3250 6250 0    50   ~ 0
Sen20
Text Label 7050 4150 2    50   ~ 0
Sen1
$Comp
L MCP1501:MCP1501 U10
U 1 1 61AB3524
P 12400 7400
F 0 "U10" H 12400 7915 50  0000 C CNN
F 1 "MCP1501-20E/SN" H 12400 7824 50  0000 C CNN
F 2 "SMD_Packages:SOIC-8-N" H 12400 7400 50  0001 C CNN
F 3 "DOCUMENTATION" H 12400 7400 50  0001 C CNN
	1    12400 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	11650 7450 11400 7450
Wire Wire Line
	11400 7450 11400 7250
Wire Wire Line
	11650 7250 11400 7250
Connection ~ 11400 7250
Wire Wire Line
	11400 7250 11400 7000
Wire Wire Line
	11650 7350 11500 7350
Wire Wire Line
	11500 7350 11500 7550
Wire Wire Line
	11500 7900 12450 7900
Wire Wire Line
	13300 7900 13300 7550
Wire Wire Line
	13300 7450 13150 7450
Wire Wire Line
	13150 7550 13300 7550
Connection ~ 13300 7550
Wire Wire Line
	13300 7550 13300 7450
Wire Wire Line
	11650 7550 11500 7550
Connection ~ 11500 7550
Wire Wire Line
	11500 7550 11500 7900
Wire Wire Line
	12450 7900 12450 8050
Connection ~ 12450 7900
Wire Wire Line
	12450 7900 13300 7900
$Comp
L power:GNDA #PWR0127
U 1 1 61BFD4C7
P 12450 8050
F 0 "#PWR0127" H 12450 7800 50  0001 C CNN
F 1 "GNDA" H 12455 7877 50  0000 C CNN
F 2 "" H 12450 8050 50  0001 C CNN
F 3 "" H 12450 8050 50  0001 C CNN
	1    12450 8050
	1    0    0    -1  
$EndComp
Wire Wire Line
	13150 7250 13900 7250
Wire Wire Line
	13900 7250 13900 7300
Wire Wire Line
	13900 7350 13650 7350
Wire Wire Line
	13900 7300 14300 7300
Connection ~ 13900 7300
Wire Wire Line
	13900 7300 13900 7350
Text Label 14300 7300 2    50   ~ 0
VREF+
$Comp
L Device:R_Small_US R31
U 1 1 61CA84E6
P 13650 7500
F 0 "R31" H 13718 7546 50  0000 L CNN
F 1 "50" H 13718 7455 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 13650 7500 50  0001 C CNN
F 3 "~" H 13650 7500 50  0001 C CNN
	1    13650 7500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C52
U 1 1 61CA8BA4
P 13650 7750
F 0 "C52" H 13742 7796 50  0000 L CNN
F 1 "2.2uF" H 13742 7705 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 13650 7750 50  0001 C CNN
F 3 "~" H 13650 7750 50  0001 C CNN
	1    13650 7750
	1    0    0    -1  
$EndComp
Wire Wire Line
	13650 7350 13650 7400
Connection ~ 13650 7350
Wire Wire Line
	13650 7350 13150 7350
Wire Wire Line
	13650 7600 13650 7650
Wire Wire Line
	13650 7850 13650 7900
Wire Wire Line
	13650 7900 13300 7900
Connection ~ 13300 7900
$Comp
L Device:C_Small C51
U 1 1 61D55B11
P 11400 7700
F 0 "C51" H 11492 7746 50  0000 L CNN
F 1 "2.2uF" H 11492 7655 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 11400 7700 50  0001 C CNN
F 3 "~" H 11400 7700 50  0001 C CNN
	1    11400 7700
	1    0    0    -1  
$EndComp
Wire Wire Line
	11400 7450 11400 7600
Connection ~ 11400 7450
Wire Wire Line
	11400 7800 11400 7900
Wire Wire Line
	11400 7900 11500 7900
Connection ~ 11500 7900
Wire Wire Line
	3850 3050 3300 3050
Text Label 3300 3050 0    50   ~ 0
VREF+
$Comp
L Regulator_Linear:L7805 U13
U 1 1 623F8A69
P 13700 8650
F 0 "U13" H 13700 8892 50  0000 C CNN
F 1 "3.3V Reg" H 13700 8801 50  0000 C CNN
F 2 "TO_SOT_Packages_THT:TO-220-3_Vertical" H 13725 8500 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 13700 8600 50  0001 C CNN
	1    13700 8650
	1    0    0    -1  
$EndComp
Wire Wire Line
	13150 8550 13150 8650
Wire Wire Line
	13150 8650 13300 8650
Wire Wire Line
	14000 8650 14100 8650
Wire Wire Line
	14200 8650 14200 8500
$Comp
L power:GNDD #PWR0138
U 1 1 62475017
P 13700 9100
F 0 "#PWR0138" H 13700 8850 50  0001 C CNN
F 1 "GNDD" H 13704 8945 50  0000 C CNN
F 2 "" H 13700 9100 50  0001 C CNN
F 3 "" H 13700 9100 50  0001 C CNN
	1    13700 9100
	1    0    0    -1  
$EndComp
Wire Wire Line
	13700 8950 13700 9050
$Comp
L Device:CP1_Small C53
U 1 1 62AC126C
P 13300 8900
F 0 "C53" H 13391 8946 50  0000 L CNN
F 1 "10uF EEA-GA1V100" H 13391 8855 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.00mm" H 13300 8900 50  0001 C CNN
F 3 "~" H 13300 8900 50  0001 C CNN
	1    13300 8900
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C54
U 1 1 62AC2BA4
P 14100 8900
F 0 "C54" H 14191 8946 50  0000 L CNN
F 1 "22uF ECE-A1HKA220" H 14191 8855 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D6.3mm_P2.50mm" H 14100 8900 50  0001 C CNN
F 3 "~" H 14100 8900 50  0001 C CNN
	1    14100 8900
	1    0    0    -1  
$EndComp
Wire Wire Line
	13300 8800 13300 8650
Connection ~ 13300 8650
Wire Wire Line
	13300 8650 13400 8650
Wire Wire Line
	13300 9000 13300 9050
Wire Wire Line
	13300 9050 13700 9050
Connection ~ 13700 9050
Wire Wire Line
	13700 9050 13700 9100
Wire Wire Line
	14100 9000 14100 9050
Wire Wire Line
	14100 9050 13700 9050
Wire Wire Line
	14100 8800 14100 8650
Connection ~ 14100 8650
Wire Wire Line
	14100 8650 14200 8650
$Comp
L Connector:USB_A J5
U 1 1 62BFF5D3
P 12500 5300
F 0 "J5" H 12500 6150 50  0000 C CNN
F 1 "UE27AC5410H" H 12450 5650 50  0000 C CNN
F 2 "usbconnectors:USB_A_Molex_67643_Horizontal" H 12650 5250 50  0001 C CNN
F 3 " ~" H 12650 5250 50  0001 C CNN
	1    12500 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 1550 1600 1550
Wire Wire Line
	12400 5700 12400 5750
Wire Wire Line
	12400 5750 12500 5750
Connection ~ 12500 5750
Wire Wire Line
	1600 1450 1600 1550
Connection ~ 1600 1550
Wire Wire Line
	1600 1550 1900 1550
$Comp
L power:GNDD #PWR0106
U 1 1 62DF6DA3
P 13200 9650
F 0 "#PWR0106" H 13200 9400 50  0001 C CNN
F 1 "GNDD" H 13204 9495 50  0000 C CNN
F 2 "" H 13200 9650 50  0001 C CNN
F 3 "" H 13200 9650 50  0001 C CNN
	1    13200 9650
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0139
U 1 1 62DF89B0
P 13700 9650
F 0 "#PWR0139" H 13700 9400 50  0001 C CNN
F 1 "GNDA" H 13705 9477 50  0000 C CNN
F 2 "" H 13700 9650 50  0001 C CNN
F 3 "" H 13700 9650 50  0001 C CNN
	1    13700 9650
	1    0    0    -1  
$EndComp
Wire Wire Line
	13200 9650 13200 9550
Wire Wire Line
	13200 9550 13300 9550
Wire Wire Line
	13600 9550 13700 9550
Wire Wire Line
	13700 9550 13700 9650
$Comp
L Jumper:SolderJumper_2_Bridged JP0
U 1 1 62F6ADC2
P 13450 9550
F 0 "JP0" H 13450 9755 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 13450 9664 50  0000 C CNN
F 2 "jumpers:SolderJumper-2_P1.3mm_Bridged_RoundedPad1.0x1.5mm" H 13450 9550 50  0001 C CNN
F 3 "~" H 13450 9550 50  0001 C CNN
	1    13450 9550
	1    0    0    -1  
$EndComp
$Sheet
S 11950 3500 950  400 
U 62FDE2B6
F0 "RS485" 50
F1 "RS485.sch" 50
F2 "UART_RX" I L 11950 3600 50 
F3 "UART_TX" I L 11950 3800 50 
$EndSheet
Wire Wire Line
	11950 3600 11400 3600
Wire Wire Line
	11950 3800 11400 3800
Text Label 11400 3600 0    50   ~ 0
USART1_RX
Text Label 11400 3800 0    50   ~ 0
USART1_TX
$Comp
L Device:LED D1
U 1 1 633E3B17
P 11500 2100
F 0 "D1" V 11539 1982 50  0000 R CNN
F 1 "LED" V 11448 1982 50  0000 R CNN
F 2 "LEDs:LED_0805_HandSoldering" H 11500 2100 50  0001 C CNN
F 3 "~" H 11500 2100 50  0001 C CNN
	1    11500 2100
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 633E4D5C
P 11850 2100
F 0 "D2" V 11889 1982 50  0000 R CNN
F 1 "LED" V 11798 1982 50  0000 R CNN
F 2 "LEDs:LED_0805_HandSoldering" H 11850 2100 50  0001 C CNN
F 3 "~" H 11850 2100 50  0001 C CNN
	1    11850 2100
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D3
U 1 1 633E5392
P 12200 2100
F 0 "D3" V 12239 1982 50  0000 R CNN
F 1 "LED" V 12148 1982 50  0000 R CNN
F 2 "LEDs:LED_0805_HandSoldering" H 12200 2100 50  0001 C CNN
F 3 "~" H 12200 2100 50  0001 C CNN
	1    12200 2100
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D4
U 1 1 633E58F4
P 12550 2100
F 0 "D4" V 12589 1982 50  0000 R CNN
F 1 "LED" V 12498 1982 50  0000 R CNN
F 2 "LEDs:LED_0805_HandSoldering" H 12550 2100 50  0001 C CNN
F 3 "~" H 12550 2100 50  0001 C CNN
	1    12550 2100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R55
U 1 1 633E6DD8
P 11500 2500
F 0 "R55" H 11568 2546 50  0000 L CNN
F 1 "CL" H 11568 2455 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 11500 2500 50  0001 C CNN
F 3 "~" H 11500 2500 50  0001 C CNN
	1    11500 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R56
U 1 1 633E780D
P 11850 2500
F 0 "R56" H 11918 2546 50  0000 L CNN
F 1 "CL" H 11918 2455 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 11850 2500 50  0001 C CNN
F 3 "~" H 11850 2500 50  0001 C CNN
	1    11850 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R57
U 1 1 633E893B
P 12200 2500
F 0 "R57" H 12268 2546 50  0000 L CNN
F 1 "CL" H 12268 2455 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 12200 2500 50  0001 C CNN
F 3 "~" H 12200 2500 50  0001 C CNN
	1    12200 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R58
U 1 1 633E8E0C
P 12550 2500
F 0 "R58" H 12618 2546 50  0000 L CNN
F 1 "CL" H 12618 2455 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 12550 2500 50  0001 C CNN
F 3 "~" H 12550 2500 50  0001 C CNN
	1    12550 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0117
U 1 1 633E949E
P 11500 2700
F 0 "#PWR0117" H 11500 2450 50  0001 C CNN
F 1 "GNDD" H 11504 2545 50  0000 C CNN
F 2 "" H 11500 2700 50  0001 C CNN
F 3 "" H 11500 2700 50  0001 C CNN
	1    11500 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	11500 2600 11500 2650
Wire Wire Line
	11500 2650 11850 2650
Wire Wire Line
	12550 2650 12550 2600
Wire Wire Line
	11500 2700 11500 2650
Connection ~ 11500 2650
Wire Wire Line
	11850 2600 11850 2650
Connection ~ 11850 2650
Wire Wire Line
	11850 2650 12200 2650
Wire Wire Line
	12200 2600 12200 2650
Connection ~ 12200 2650
Wire Wire Line
	12200 2650 12550 2650
Wire Wire Line
	11500 2400 11500 2250
Wire Wire Line
	11850 2400 11850 2250
Wire Wire Line
	12200 2400 12200 2250
Wire Wire Line
	12550 2400 12550 2250
Wire Wire Line
	11500 1950 11500 1900
Wire Wire Line
	11500 1900 11050 1900
Wire Wire Line
	11850 1950 11850 1800
Wire Wire Line
	11850 1800 11050 1800
Wire Wire Line
	12200 1950 12200 1700
Wire Wire Line
	12200 1700 11050 1700
Wire Wire Line
	12550 1600 12550 1950
Text Label 11050 1900 0    50   ~ 0
LED1
Text Label 11050 1800 0    50   ~ 0
LED2
Text Label 11050 1700 0    50   ~ 0
LED3
Text Label 11050 1600 0    50   ~ 0
LED4
Wire Wire Line
	11050 1600 12550 1600
Wire Wire Line
	3850 7550 3250 7550
Text Label 3250 7550 0    50   ~ 0
LED1
Wire Wire Line
	6350 6750 7050 6750
Text Label 7050 6750 2    50   ~ 0
LED4
Wire Wire Line
	6350 6950 7050 6950
Wire Wire Line
	3850 7450 3250 7450
Text Label 3250 7450 0    50   ~ 0
LED2
Text Label 7050 6950 2    50   ~ 0
LED3
$Comp
L Device:R_Small_US R30
U 1 1 639EF198
P 3400 2650
F 0 "R30" V 3195 2650 50  0000 C CNN
F 1 "10k" V 3286 2650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" H 3400 2650 50  0001 C CNN
F 3 "~" H 3400 2650 50  0001 C CNN
	1    3400 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	3500 2650 3850 2650
Wire Wire Line
	3300 2650 3150 2650
Wire Wire Line
	3150 2650 3150 2700
Wire Wire Line
	6350 3150 7050 3150
Wire Wire Line
	6350 6650 7050 6650
Wire Wire Line
	6350 3350 7050 3350
Wire Wire Line
	3850 4750 3250 4750
Wire Wire Line
	3850 4850 3250 4850
$Comp
L Device:Crystal_Small Y1
U 1 1 63C04E72
P 3400 3800
F 0 "Y1" V 3354 3888 50  0000 L CNN
F 1 "NX3225GD-8.000M-EXS00A-CG04874" V 3445 3888 50  0000 L CNN
F 2 "Crystals:Crystal_SMD_3215-2pin_3.2x1.5mm" H 3400 3800 50  0001 C CNN
F 3 "~" H 3400 3800 50  0001 C CNN
	1    3400 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	3850 3750 3750 3750
Wire Wire Line
	3750 3750 3750 3700
Wire Wire Line
	3750 3700 3400 3700
Wire Wire Line
	3850 3850 3750 3850
Wire Wire Line
	3750 3850 3750 3900
Wire Wire Line
	3750 3900 3400 3900
$Comp
L Device:C_Small C49
U 1 1 63C8DA2B
P 3150 3700
F 0 "C49" V 3379 3700 50  0000 C CNN
F 1 "4.3pF" V 3288 3700 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" H 3150 3700 50  0001 C CNN
F 3 "~" H 3150 3700 50  0001 C CNN
	1    3150 3700
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C50
U 1 1 63C8F175
P 3150 3900
F 0 "C50" V 3379 3900 50  0000 C CNN
F 1 "4.3pF" V 3288 3900 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" H 3150 3900 50  0001 C CNN
F 3 "~" H 3150 3900 50  0001 C CNN
	1    3150 3900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3400 3900 3250 3900
Connection ~ 3400 3900
Wire Wire Line
	3400 3700 3250 3700
Connection ~ 3400 3700
Wire Wire Line
	3050 3700 2950 3700
Wire Wire Line
	2950 3700 2950 3900
Wire Wire Line
	3050 3900 2950 3900
Connection ~ 2950 3900
Wire Wire Line
	2950 3900 2950 4050
$Comp
L power:GNDD #PWR0119
U 1 1 63DA4764
P 2950 4050
F 0 "#PWR0119" H 2950 3800 50  0001 C CNN
F 1 "GNDD" H 2954 3895 50  0000 C CNN
F 2 "" H 2950 4050 50  0001 C CNN
F 3 "" H 2950 4050 50  0001 C CNN
	1    2950 4050
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Small TP23
U 1 1 63DD335E
P 3250 4750
F 0 "TP23" H 3298 4796 50  0000 L CNN
F 1 "TestPoint_Small" H 3298 4705 50  0000 L CNN
F 2 "Testpoint:TestPoint_Pad_D1.5mm" H 3450 4750 50  0001 C CNN
F 3 "~" H 3450 4750 50  0001 C CNN
	1    3250 4750
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Small TP24
U 1 1 63DD46A5
P 3250 4850
F 0 "TP24" H 3298 4896 50  0000 L CNN
F 1 "TestPoint_Small" H 3298 4805 50  0000 L CNN
F 2 "Testpoint:TestPoint_Pad_D1.5mm" H 3450 4850 50  0001 C CNN
F 3 "~" H 3450 4850 50  0001 C CNN
	1    3250 4850
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Small TP28
U 1 1 63DD487F
P 7050 6550
F 0 "TP28" H 7098 6596 50  0000 L CNN
F 1 "TestPoint_Small" H 7098 6505 50  0000 L CNN
F 2 "Testpoint:TestPoint_Pad_D1.5mm" H 7250 6550 50  0001 C CNN
F 3 "~" H 7250 6550 50  0001 C CNN
	1    7050 6550
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Small TP25
U 1 1 63DD5CA6
P 7050 6650
F 0 "TP25" H 7098 6696 50  0000 L CNN
F 1 "TestPoint_Small" H 7098 6605 50  0000 L CNN
F 2 "Testpoint:TestPoint_Pad_D1.5mm" H 7250 6650 50  0001 C CNN
F 3 "~" H 7250 6650 50  0001 C CNN
	1    7050 6650
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Small TP26
U 1 1 63DD7687
P 7050 3150
F 0 "TP26" H 7098 3196 50  0000 L CNN
F 1 "TestPoint_Small" H 7098 3105 50  0000 L CNN
F 2 "Testpoint:TestPoint_Pad_D1.5mm" H 7250 3150 50  0001 C CNN
F 3 "~" H 7250 3150 50  0001 C CNN
	1    7050 3150
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Small TP27
U 1 1 63DD793A
P 7050 3350
F 0 "TP27" H 7098 3396 50  0000 L CNN
F 1 "TestPoint_Small" H 7098 3305 50  0000 L CNN
F 2 "Testpoint:TestPoint_Pad_D1.5mm" H 7250 3350 50  0001 C CNN
F 3 "~" H 7250 3350 50  0001 C CNN
	1    7050 3350
	1    0    0    -1  
$EndComp
Text Notes 14300 6800 2    50   ~ 0
Vref will be 2.048V, leaving much headroom between it at VDDA at 3.3V.\nThe resistors need to be chosen to keep (VDDA - R*maxcurrent) >> Vcesat (0.3V).\nR*maxcurrent should also be slightly less than Vref, which has to be chosen from\navailable voltage reference parts.
Text Notes 3600 10550 0    79   ~ 0
Reference STMicroelectronics Application Note AN4938\nfor details on basic STMH74x circuits
Text Notes 14550 8250 2    50   ~ 0
Monolithic switching regulator ~~5V->3.3V
Text Notes 13850 9700 0    50   ~ 0
Represents single connection between GNDD and GNDA\nnear the 5V regulator. Could be cut and choke inserted.
Text Notes 2150 4050 0    50   ~ 0
Don't intend to need this crystal circuit
Text Notes 10300 4400 0    50   ~ 0
We feed 3.3V back to the programmer so they\nknow what voltage we run at, and whether or\nnot we're live.
Wire Wire Line
	1300 1550 1000 1550
Connection ~ 1300 1550
NoConn ~ 3850 8950
NoConn ~ 3850 8850
NoConn ~ 3850 8750
NoConn ~ 3850 8650
NoConn ~ 3850 8550
NoConn ~ 3850 8450
NoConn ~ 3850 8350
NoConn ~ 3850 8250
NoConn ~ 3850 8150
NoConn ~ 3850 8050
NoConn ~ 3850 7950
NoConn ~ 3850 7850
NoConn ~ 3850 7750
NoConn ~ 3850 7650
NoConn ~ 3850 7250
NoConn ~ 3850 7150
NoConn ~ 3850 7050
NoConn ~ 3850 6950
NoConn ~ 3850 6850
NoConn ~ 6350 7050
NoConn ~ 6350 7150
NoConn ~ 6350 7250
NoConn ~ 6350 7450
NoConn ~ 6350 7550
NoConn ~ 6350 7650
NoConn ~ 6350 7750
NoConn ~ 6350 7850
NoConn ~ 6350 8150
NoConn ~ 6350 8250
NoConn ~ 6350 8350
NoConn ~ 6350 8450
NoConn ~ 6350 8550
NoConn ~ 6350 8650
NoConn ~ 6350 8750
NoConn ~ 6350 8850
NoConn ~ 6350 8950
NoConn ~ 3850 4050
NoConn ~ 3850 4150
NoConn ~ 3850 4250
NoConn ~ 3850 4350
NoConn ~ 3850 4450
NoConn ~ 3850 4550
NoConn ~ 3850 4650
NoConn ~ 3850 4950
NoConn ~ 3850 5050
NoConn ~ 3850 5150
NoConn ~ 3850 5250
NoConn ~ 3850 5350
NoConn ~ 3850 5550
NoConn ~ 3850 5750
NoConn ~ 3850 5850
NoConn ~ 3850 5950
NoConn ~ 6350 6850
NoConn ~ 6350 6350
NoConn ~ 6350 6050
NoConn ~ 6350 5950
NoConn ~ 6350 4950
NoConn ~ 6350 4850
NoConn ~ 6350 4750
NoConn ~ 6350 4650
NoConn ~ 6350 4550
$Comp
L MCU_ST_STM32H7:STM32H743ZITx U0
U 1 1 5F9842BC
P 5150 5650
F 0 "U0" H 5100 1961 50  0000 C CNN
F 1 "STM32H743ZITx" H 5100 1870 50  0000 C CNN
F 2 "Housings_QFP:LQFP-144_20x20mm_Pitch0.5mm" H 4050 2250 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00387108.pdf" H 5150 5650 50  0001 C CNN
	1    5150 5650
	1    0    0    -1  
$EndComp
NoConn ~ 6350 4250
$Sheet
S 1100 5350 850  2300
U 5FA7E425
F0 "Analog Input" 50
F1 "Analog Input.sch" 50
F2 "Sen1" O R 1950 5450 50 
F3 "Sen2" O R 1950 5550 50 
F4 "Sen3" O R 1950 5650 50 
F5 "Sen4" O R 1950 5750 50 
F6 "Sen5" O R 1950 5850 50 
F7 "Sen6" O R 1950 5950 50 
F8 "Sen7" O R 1950 6050 50 
F9 "Sen8" O R 1950 6150 50 
F10 "Sen9" O R 1950 6250 50 
F11 "Sen10" O R 1950 6350 50 
F12 "Sen11" O R 1950 6450 50 
F13 "Sen12" O R 1950 6550 50 
F14 "Sen13" O R 1950 6650 50 
F15 "Sen14" O R 1950 6750 50 
F16 "Sen15" O R 1950 6850 50 
F17 "Sen16" O R 1950 6950 50 
F18 "Sen17" O R 1950 7050 50 
F19 "Sen18" O R 1950 7150 50 
F20 "Sen19" O R 1950 7250 50 
F21 "Sen20" O R 1950 7350 50 
F22 "Sen21" O R 1950 7450 50 
F23 "Sen22" O R 1950 7550 50 
$EndSheet
Wire Wire Line
	1950 5450 2350 5450
Wire Wire Line
	1950 5550 2350 5550
Wire Wire Line
	1950 5650 2350 5650
Wire Wire Line
	1950 5750 2350 5750
Wire Wire Line
	1950 5850 2350 5850
Wire Wire Line
	1950 5950 2350 5950
Wire Wire Line
	1950 6050 2350 6050
Wire Wire Line
	1950 6150 2350 6150
Wire Wire Line
	1950 6250 2350 6250
Wire Wire Line
	1950 6350 2350 6350
Wire Wire Line
	1950 6450 2350 6450
Wire Wire Line
	1950 6550 2350 6550
Wire Wire Line
	1950 6650 2350 6650
Wire Wire Line
	1950 6750 2350 6750
Wire Wire Line
	1950 6850 2350 6850
Wire Wire Line
	1950 6950 2350 6950
Wire Wire Line
	1950 7050 2350 7050
Wire Wire Line
	1950 7150 2350 7150
Wire Wire Line
	1950 7250 2350 7250
Wire Wire Line
	1950 7350 2350 7350
Wire Wire Line
	1950 7450 2350 7450
Wire Wire Line
	1950 7550 2350 7550
Text Label 2350 7550 2    50   ~ 0
Sen22
Text Label 2350 7450 2    50   ~ 0
Sen21
Text Label 2350 7350 2    50   ~ 0
Sen20
Text Label 2350 7250 2    50   ~ 0
Sen19
Text Label 2350 7150 2    50   ~ 0
Sen18
Text Label 2350 7050 2    50   ~ 0
Sen17
Text Label 2350 6950 2    50   ~ 0
Sen16
Text Label 2350 6850 2    50   ~ 0
Sen15
Text Label 2350 6750 2    50   ~ 0
Sen14
Text Label 2350 6650 2    50   ~ 0
Sen13
Text Label 2350 6550 2    50   ~ 0
Sen12
Text Label 2350 6450 2    50   ~ 0
Sen11
Text Label 2350 6350 2    50   ~ 0
Sen10
Text Label 2350 6250 2    50   ~ 0
Sen9
Text Label 2350 6150 2    50   ~ 0
Sen8
Text Label 2350 6050 2    50   ~ 0
Sen7
Text Label 2350 5950 2    50   ~ 0
Sen6
Text Label 2350 5850 2    50   ~ 0
Sen5
Text Label 2350 5750 2    50   ~ 0
Sen4
Text Label 2350 5650 2    50   ~ 0
Sen3
Text Label 2350 5550 2    50   ~ 0
Sen2
Text Label 2350 5450 2    50   ~ 0
Sen1
$Comp
L power:+5V #PWR0128
U 1 1 605D15F1
P 13150 8550
F 0 "#PWR0128" H 13150 8400 50  0001 C CNN
F 1 "+5V" H 13165 8723 50  0000 C CNN
F 2 "" H 13150 8550 50  0001 C CNN
F 3 "" H 13150 8550 50  0001 C CNN
	1    13150 8550
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0129
U 1 1 605D2075
P 14200 8500
F 0 "#PWR0129" H 14200 8350 50  0001 C CNN
F 1 "+3.3V" H 14215 8673 50  0000 C CNN
F 2 "" H 14200 8500 50  0001 C CNN
F 3 "" H 14200 8500 50  0001 C CNN
	1    14200 8500
	1    0    0    -1  
$EndComp
NoConn ~ 6350 5250
NoConn ~ 6350 5350
NoConn ~ 10850 5300
NoConn ~ 10850 5600
NoConn ~ 10850 5700
$Comp
L power:PWR_FLAG #FLG0104
U 1 1 60B6914B
P 13700 9550
F 0 "#FLG0104" H 13700 9625 50  0001 C CNN
F 1 "PWR_FLAG" H 13700 9723 50  0000 C CNN
F 2 "" H 13700 9550 50  0001 C CNN
F 3 "~" H 13700 9550 50  0001 C CNN
	1    13700 9550
	1    0    0    -1  
$EndComp
Connection ~ 13700 9550
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 60B6C945
P 3800 2850
F 0 "#FLG0103" H 3800 2925 50  0001 C CNN
F 1 "PWR_FLAG" H 3800 3023 50  0000 C CNN
F 2 "" H 3800 2850 50  0001 C CNN
F 3 "~" H 3800 2850 50  0001 C CNN
	1    3800 2850
	1    0    0    -1  
$EndComp
Connection ~ 3800 2850
Wire Wire Line
	3800 2850 3850 2850
$Comp
L power:PWR_FLAG #FLG0105
U 1 1 60B6DCF1
P 3550 2950
F 0 "#FLG0105" H 3550 3025 50  0001 C CNN
F 1 "PWR_FLAG" H 3550 3123 50  0000 C CNN
F 2 "" H 3550 2950 50  0001 C CNN
F 3 "~" H 3550 2950 50  0001 C CNN
	1    3550 2950
	1    0    0    -1  
$EndComp
Connection ~ 3550 2950
Wire Wire Line
	3550 2950 2850 2950
$Comp
L Device:C_Small C55
U 1 1 60FE0B13
P 13150 8750
F 0 "C55" H 13242 8796 50  0000 L CNN
F 1 "DC" H 13242 8705 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 13150 8750 50  0001 C CNN
F 3 "~" H 13150 8750 50  0001 C CNN
	1    13150 8750
	1    0    0    -1  
$EndComp
Connection ~ 13150 8650
Wire Wire Line
	13150 8850 13150 9050
Wire Wire Line
	13150 9050 13300 9050
Connection ~ 13300 9050
$Comp
L Device:C_Small C56
U 1 1 60FFDC2E
P 14200 8750
F 0 "C56" H 14292 8796 50  0000 L CNN
F 1 "DC" H 14292 8705 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 14200 8750 50  0001 C CNN
F 3 "~" H 14200 8750 50  0001 C CNN
	1    14200 8750
	1    0    0    -1  
$EndComp
Connection ~ 14200 8650
Wire Wire Line
	14200 8850 14200 9050
Wire Wire Line
	14200 9050 14100 9050
Connection ~ 14100 9050
$Comp
L Connector:Conn_01x02_Male J7
U 1 1 5FBE56DB
P 8650 1100
F 0 "J7" H 8758 1281 50  0000 C CNN
F 1 "AltPowerInput" H 8758 1190 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 8650 1100 50  0001 C CNN
F 3 "~" H 8650 1100 50  0001 C CNN
	1    8650 1100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0135
U 1 1 5FBE63A7
P 9000 950
F 0 "#PWR0135" H 9000 800 50  0001 C CNN
F 1 "+5V" H 9015 1123 50  0000 C CNN
F 2 "" H 9000 950 50  0001 C CNN
F 3 "" H 9000 950 50  0001 C CNN
	1    9000 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 950  9000 1100
Wire Wire Line
	9000 1100 8850 1100
Wire Wire Line
	8850 1200 9000 1200
Wire Wire Line
	9000 1200 9000 1300
$Comp
L power:GNDD #PWR0136
U 1 1 5FC205C9
P 9000 1300
F 0 "#PWR0136" H 9000 1050 50  0001 C CNN
F 1 "GNDD" H 9004 1145 50  0000 C CNN
F 2 "" H 9000 1300 50  0001 C CNN
F 3 "" H 9000 1300 50  0001 C CNN
	1    9000 1300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J8
U 1 1 5FC44C17
P 12550 4500
F 0 "J8" V 12612 4544 50  0000 L CNN
F 1 "USBPowerJumper" V 12703 4544 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 12550 4500 50  0001 C CNN
F 3 "~" H 12550 4500 50  0001 C CNN
	1    12550 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	13150 5100 13150 4750
Wire Wire Line
	13150 4750 12550 4750
Wire Wire Line
	12550 4750 12550 4700
Wire Wire Line
	12450 4700 12450 4750
$Comp
L power:+5V #PWR0143
U 1 1 5FC885B1
P 12250 4700
F 0 "#PWR0143" H 12250 4550 50  0001 C CNN
F 1 "+5V" H 12265 4873 50  0000 C CNN
F 2 "" H 12250 4700 50  0001 C CNN
F 3 "" H 12250 4700 50  0001 C CNN
	1    12250 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	12250 4700 12250 4750
Wire Wire Line
	12250 4750 12450 4750
$Comp
L Device:C C1
U 1 1 5FD1E652
P 2150 2500
F 0 "C1" H 2265 2546 50  0000 L CNN
F 1 "0.1uF" H 2265 2455 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2188 2350 50  0001 C CNN
F 3 "~" H 2150 2500 50  0001 C CNN
	1    2150 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 2650 2150 2700
$Comp
L power:GNDD #PWR0144
U 1 1 5FD3C9A6
P 2150 2700
F 0 "#PWR0144" H 2150 2450 50  0001 C CNN
F 1 "GNDD" H 2154 2545 50  0000 C CNN
F 2 "" H 2150 2700 50  0001 C CNN
F 3 "" H 2150 2700 50  0001 C CNN
	1    2150 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	12800 5300 13700 5300
Wire Wire Line
	12800 5400 13700 5400
Connection ~ 13150 5100
Text Label 13550 5100 2    50   ~ 0
USB_VBUS
Wire Wire Line
	6350 3250 8300 3250
$Comp
L Device:R_Small_US R24
U 1 1 5FBFA2EB
P 8300 3450
F 0 "R24" H 8368 3496 50  0000 L CNN
F 1 "4300" H 8368 3405 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 8300 3450 50  0001 C CNN
F 3 "~" H 8300 3450 50  0001 C CNN
	1    8300 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R23
U 1 1 5FBFAEF2
P 8300 3050
F 0 "R23" H 8368 3096 50  0000 L CNN
F 1 "2200" H 8368 3005 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 8300 3050 50  0001 C CNN
F 3 "~" H 8300 3050 50  0001 C CNN
	1    8300 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 3150 8300 3250
Connection ~ 8300 3250
Wire Wire Line
	8300 3250 8300 3350
Wire Wire Line
	8300 3550 8300 3600
Wire Wire Line
	8300 2950 8300 2900
$Comp
L power:GNDD #PWR0145
U 1 1 5FC74AD6
P 8300 3600
F 0 "#PWR0145" H 8300 3350 50  0001 C CNN
F 1 "GNDD" H 8304 3445 50  0000 C CNN
F 2 "" H 8300 3600 50  0001 C CNN
F 3 "" H 8300 3600 50  0001 C CNN
	1    8300 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB1
U 1 1 5FC76527
P 12950 5100
F 0 "FB1" V 12713 5100 50  0000 C CNN
F 1 "MPZ2012S601AT000" V 12800 5400 50  0000 C CNN
F 2 "Inductors_SMD:L_0805" V 12880 5100 50  0001 C CNN
F 3 "~" H 12950 5100 50  0001 C CNN
	1    12950 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	8300 2900 8900 2900
Text Label 8900 2900 2    50   ~ 0
USB_VBUS
Text Label 8250 3250 2    50   ~ 0
VBUS_SENSE
NoConn ~ 6350 6450
NoConn ~ 3850 5450
Wire Wire Line
	6350 5150 7050 5150
Wire Wire Line
	6350 5050 7050 5050
Text Label 7050 5050 2    50   ~ 0
USART3_TX
Text Label 7050 5150 2    50   ~ 0
USART3_RX
Wire Wire Line
	6350 8050 7050 8050
Wire Wire Line
	6350 7950 7050 7950
Text Label 7050 8050 2    50   ~ 0
USART2_RX
Text Label 7050 7950 2    50   ~ 0
USART2_TX
$Comp
L Connector:Conn_01x03_Male J9
U 1 1 5FDB45DC
P 13150 2950
F 0 "J9" H 13258 3231 50  0000 C CNN
F 1 "USART2" H 13258 3140 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 13150 2950 50  0001 C CNN
F 3 "~" H 13150 2950 50  0001 C CNN
	1    13150 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0146
U 1 1 5FDB4E6F
P 13500 3100
F 0 "#PWR0146" H 13500 2850 50  0001 C CNN
F 1 "GNDD" H 13504 2945 50  0000 C CNN
F 2 "" H 13500 3100 50  0001 C CNN
F 3 "" H 13500 3100 50  0001 C CNN
	1    13500 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	13350 3050 13500 3050
Wire Wire Line
	13500 3050 13500 3100
Wire Wire Line
	13350 2950 14050 2950
Wire Wire Line
	13350 2850 14050 2850
Text Label 14050 2850 2    50   ~ 0
USART2_RX
Text Label 14050 2950 2    50   ~ 0
USART2_TX
Wire Wire Line
	13600 5100 13600 4650
Wire Wire Line
	13600 4650 15100 4650
Wire Wire Line
	15100 4650 15100 5350
Wire Wire Line
	15100 5350 14650 5350
Wire Wire Line
	13150 5100 13600 5100
Text Notes 8400 3300 0    50   ~ 0
when power is off, PA9 can't exceed 4V.\nthis brings a 5.25V VBUS down to 3.47V.
Wire Wire Line
	12800 5100 12850 5100
Wire Wire Line
	13050 5100 13150 5100
$Comp
L power:+3.3VA #PWR?
U 1 1 5FBE27C1
P 11400 7000
F 0 "#PWR?" H 11400 6850 50  0001 C CNN
F 1 "+3.3VA" H 11415 7173 50  0000 C CNN
F 2 "" H 11400 7000 50  0001 C CNN
F 3 "" H 11400 7000 50  0001 C CNN
	1    11400 7000
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FBC7EC8
P 10750 4600
F 0 "#PWR?" H 10750 4450 50  0001 C CNN
F 1 "+3.3V" H 10765 4773 50  0000 C CNN
F 2 "" H 10750 4600 50  0001 C CNN
F 3 "" H 10750 4600 50  0001 C CNN
	1    10750 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10750 4800 10850 4800
Wire Wire Line
	10750 4600 11500 4600
Wire Wire Line
	11500 4600 11500 4800
Wire Wire Line
	11500 4800 11350 4800
Connection ~ 10750 4600
Wire Wire Line
	10750 4600 10750 4800
$EndSCHEMATC
