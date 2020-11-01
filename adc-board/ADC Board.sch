EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
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
L MCU_ST_STM32H7:STM32H743ZITx U1
U 1 1 5F9842BC
P 4400 4150
F 0 "U1" H 4350 461 50  0000 C CNN
F 1 "STM32H743ZITx" H 4350 370 50  0000 C CNN
F 2 "Housings_QFP:LQFP-144_20x20mm_Pitch0.5mm" H 3300 750 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00387108.pdf" H 4400 4150 50  0001 C CNN
	1    4400 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0101
U 1 1 5F9891F8
P 3900 8000
F 0 "#PWR0101" H 3900 7750 50  0001 C CNN
F 1 "GNDD" H 3904 7845 50  0000 C CNN
F 2 "" H 3900 8000 50  0001 C CNN
F 3 "" H 3900 8000 50  0001 C CNN
	1    3900 8000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 7750 3900 7900
Wire Wire Line
	3900 7900 4000 7900
Wire Wire Line
	4700 7900 4700 7750
Connection ~ 3900 7900
Wire Wire Line
	3900 7900 3900 8000
Wire Wire Line
	4600 7750 4600 7900
Connection ~ 4600 7900
Wire Wire Line
	4600 7900 4700 7900
Wire Wire Line
	4500 7750 4500 7900
Connection ~ 4500 7900
Wire Wire Line
	4500 7900 4600 7900
Wire Wire Line
	4400 7750 4400 7900
Connection ~ 4400 7900
Wire Wire Line
	4400 7900 4500 7900
Wire Wire Line
	4300 7750 4300 7900
Connection ~ 4300 7900
Wire Wire Line
	4300 7900 4400 7900
Wire Wire Line
	4200 7750 4200 7900
Connection ~ 4200 7900
Wire Wire Line
	4200 7900 4300 7900
Wire Wire Line
	4100 7750 4100 7900
Connection ~ 4100 7900
Wire Wire Line
	4100 7900 4200 7900
Wire Wire Line
	4000 7750 4000 7900
Connection ~ 4000 7900
Wire Wire Line
	4000 7900 4100 7900
$Comp
L power:GNDA #PWR0102
U 1 1 5F98BC31
P 4800 8000
F 0 "#PWR0102" H 4800 7750 50  0001 C CNN
F 1 "GNDA" H 4805 7827 50  0000 C CNN
F 2 "" H 4800 8000 50  0001 C CNN
F 3 "" H 4800 8000 50  0001 C CNN
	1    4800 8000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 8000 4800 7750
$Comp
L power:+3.3VA #PWR0103
U 1 1 5F98CB14
P 5000 300
F 0 "#PWR0103" H 5000 150 50  0001 C CNN
F 1 "+3.3VA" H 5015 473 50  0000 C CNN
F 2 "" H 5000 300 50  0001 C CNN
F 3 "" H 5000 300 50  0001 C CNN
	1    5000 300 
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0104
U 1 1 5F98D7BF
P 3700 300
F 0 "#PWR0104" H 3700 150 50  0001 C CNN
F 1 "+3.3V" H 3715 473 50  0000 C CNN
F 2 "" H 3700 300 50  0001 C CNN
F 3 "" H 3700 300 50  0001 C CNN
	1    3700 300 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 550  3700 400 
Wire Wire Line
	3700 400  3800 400 
Wire Wire Line
	4900 400  4900 550 
Connection ~ 3700 400 
Wire Wire Line
	3700 400  3700 300 
Wire Wire Line
	4800 550  4800 400 
Connection ~ 4800 400 
Wire Wire Line
	4800 400  4900 400 
Wire Wire Line
	4700 550  4700 400 
Connection ~ 4700 400 
Wire Wire Line
	4700 400  4800 400 
Wire Wire Line
	4600 550  4600 400 
Connection ~ 4600 400 
Wire Wire Line
	4600 400  4700 400 
Wire Wire Line
	4500 550  4500 400 
Connection ~ 4500 400 
Wire Wire Line
	4500 400  4600 400 
Wire Wire Line
	4400 400  4400 550 
Connection ~ 4400 400 
Wire Wire Line
	4400 400  4500 400 
Wire Wire Line
	4300 400  4300 550 
Connection ~ 4300 400 
Wire Wire Line
	4300 400  4400 400 
Wire Wire Line
	4200 400  4200 550 
Connection ~ 4200 400 
Wire Wire Line
	4200 400  4300 400 
Wire Wire Line
	4100 400  4100 550 
Connection ~ 4100 400 
Wire Wire Line
	4100 400  4200 400 
Wire Wire Line
	4000 400  4000 550 
Connection ~ 4000 400 
Wire Wire Line
	4000 400  4100 400 
Wire Wire Line
	3900 400  3900 550 
Connection ~ 3900 400 
Wire Wire Line
	3900 400  4000 400 
Wire Wire Line
	3800 400  3800 550 
Connection ~ 3800 400 
Wire Wire Line
	3800 400  3900 400 
$Comp
L Connector_Generic:Conn_02x10_Odd_Even J1
U 1 1 5F998BDC
P 7450 5050
F 0 "J1" H 7500 5667 50  0000 C CNN
F 1 "ST-LINK/V2" H 7500 5576 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x10_Pitch2.54mm" H 7450 5050 50  0001 C CNN
F 3 "~" H 7450 5050 50  0001 C CNN
	1    7450 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0105
U 1 1 5F99A7F3
P 8050 5750
F 0 "#PWR0105" H 8050 5500 50  0001 C CNN
F 1 "GNDD" H 8054 5595 50  0000 C CNN
F 2 "" H 8050 5750 50  0001 C CNN
F 3 "" H 8050 5750 50  0001 C CNN
	1    8050 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 4750 8050 4750
Wire Wire Line
	8050 4750 8050 4850
Wire Wire Line
	7750 4850 8050 4850
Connection ~ 8050 4850
Wire Wire Line
	8050 4850 8050 4950
Wire Wire Line
	7750 4950 8050 4950
Connection ~ 8050 4950
Wire Wire Line
	8050 4950 8050 5050
Wire Wire Line
	7750 5050 8050 5050
Connection ~ 8050 5050
Wire Wire Line
	8050 5050 8050 5150
Wire Wire Line
	7750 5150 8050 5150
Connection ~ 8050 5150
Wire Wire Line
	8050 5150 8050 5250
Wire Wire Line
	7750 5250 8050 5250
Connection ~ 8050 5250
Wire Wire Line
	8050 5250 8050 5350
Wire Wire Line
	7750 5450 8050 5450
Connection ~ 8050 5450
Wire Wire Line
	8050 5450 8050 5550
Wire Wire Line
	7750 5350 8050 5350
Connection ~ 8050 5350
Wire Wire Line
	8050 5350 8050 5450
Wire Wire Line
	7750 5550 8050 5550
Connection ~ 8050 5550
Wire Wire Line
	8050 5550 8050 5750
Wire Wire Line
	7250 5350 6850 5350
Text Label 6850 5350 0    50   ~ 0
NRST
Wire Wire Line
	3100 850  2600 850 
Text Label 2600 850  0    50   ~ 0
NRST
Wire Wire Line
	5600 2950 6300 2950
Wire Wire Line
	5600 2850 6300 2850
Wire Wire Line
	5600 2350 6300 2350
Wire Wire Line
	5600 2250 6300 2250
Wire Wire Line
	5600 2150 6300 2150
Text Label 6300 2150 2    50   ~ 0
JTMS
Text Label 6300 2250 2    50   ~ 0
JTCK
Text Label 6300 2350 2    50   ~ 0
JTDI
Text Label 6300 2950 2    50   ~ 0
JNTRST
Text Label 6300 2850 2    50   ~ 0
JTDO
$Comp
L power:GNDD #PWR0107
U 1 1 5F9B2A89
P 2400 1200
F 0 "#PWR0107" H 2400 950 50  0001 C CNN
F 1 "GNDD" H 2404 1045 50  0000 C CNN
F 2 "" H 2400 1200 50  0001 C CNN
F 3 "" H 2400 1200 50  0001 C CNN
	1    2400 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 950  2900 950 
Wire Wire Line
	2900 950  2900 400 
Wire Wire Line
	2900 400  3700 400 
$Comp
L Device:C C3
U 1 1 5F9B505D
P 6850 950
F 0 "C3" H 6965 996 50  0000 L CNN
F 1 "DC6" H 6965 905 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6888 800 50  0001 C CNN
F 3 "~" H 6850 950 50  0001 C CNN
	1    6850 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5F9B857A
P 7200 950
F 0 "C4" H 7315 996 50  0000 L CNN
F 1 "DC17" H 7315 905 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7238 800 50  0001 C CNN
F 3 "~" H 7200 950 50  0001 C CNN
	1    7200 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5F9B8F64
P 7550 950
F 0 "C5" H 7665 996 50  0000 L CNN
F 1 "DC30" H 7665 905 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7588 800 50  0001 C CNN
F 3 "~" H 7550 950 50  0001 C CNN
	1    7550 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5F9B99EA
P 7900 950
F 0 "C6" H 8015 996 50  0000 L CNN
F 1 "DC39" H 8015 905 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7938 800 50  0001 C CNN
F 3 "~" H 7900 950 50  0001 C CNN
	1    7900 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5F9BA58E
P 8250 950
F 0 "C7" H 8365 996 50  0000 L CNN
F 1 "DC52" H 8365 905 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8288 800 50  0001 C CNN
F 3 "~" H 8250 950 50  0001 C CNN
	1    8250 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5F9BADF1
P 8600 950
F 0 "C8" H 8715 996 50  0000 L CNN
F 1 "DC62" H 8715 905 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8638 800 50  0001 C CNN
F 3 "~" H 8600 950 50  0001 C CNN
	1    8600 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5F9BADFB
P 8950 950
F 0 "C9" H 9065 996 50  0000 L CNN
F 1 "DC72" H 9065 905 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8988 800 50  0001 C CNN
F 3 "~" H 8950 950 50  0001 C CNN
	1    8950 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 5F9BAE05
P 9300 950
F 0 "C10" H 9415 996 50  0000 L CNN
F 1 "DC84" H 9415 905 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9338 800 50  0001 C CNN
F 3 "~" H 9300 950 50  0001 C CNN
	1    9300 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 5F9BAE0F
P 9650 950
F 0 "C11" H 9765 996 50  0000 L CNN
F 1 "DC108" H 9765 905 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9688 800 50  0001 C CNN
F 3 "~" H 9650 950 50  0001 C CNN
	1    9650 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 5F9BAE19
P 10000 950
F 0 "C12" H 10115 996 50  0000 L CNN
F 1 "DC121" H 10115 905 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10038 800 50  0001 C CNN
F 3 "~" H 10000 950 50  0001 C CNN
	1    10000 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 5F9C88F4
P 10350 950
F 0 "C13" H 10465 996 50  0000 L CNN
F 1 "DC131" H 10465 905 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10388 800 50  0001 C CNN
F 3 "~" H 10350 950 50  0001 C CNN
	1    10350 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 5F9C88FA
P 10700 950
F 0 "C14" H 10815 996 50  0000 L CNN
F 1 "DC144" H 10815 905 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10738 800 50  0001 C CNN
F 3 "~" H 10700 950 50  0001 C CNN
	1    10700 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C15
U 1 1 5F9C8900
P 11050 950
F 0 "C15" H 11165 996 50  0000 L CNN
F 1 "DC95" H 11165 905 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 11088 800 50  0001 C CNN
F 3 "~" H 11050 950 50  0001 C CNN
	1    11050 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	11050 800  10700 800 
Wire Wire Line
	6750 800  6750 700 
Connection ~ 6850 800 
Wire Wire Line
	6850 800  6750 800 
Connection ~ 7200 800 
Wire Wire Line
	7200 800  6850 800 
Connection ~ 7550 800 
Wire Wire Line
	7550 800  7200 800 
Connection ~ 7900 800 
Wire Wire Line
	7900 800  7550 800 
Connection ~ 8250 800 
Wire Wire Line
	8250 800  7900 800 
Connection ~ 8600 800 
Wire Wire Line
	8600 800  8250 800 
Connection ~ 8950 800 
Wire Wire Line
	8950 800  8600 800 
Connection ~ 9300 800 
Wire Wire Line
	9300 800  8950 800 
Connection ~ 9650 800 
Wire Wire Line
	9650 800  9300 800 
Connection ~ 10000 800 
Wire Wire Line
	10000 800  9650 800 
Connection ~ 10350 800 
Wire Wire Line
	10350 800  10000 800 
Connection ~ 10700 800 
Wire Wire Line
	10700 800  10350 800 
Wire Wire Line
	11050 1100 10700 1100
Wire Wire Line
	6750 1100 6750 1200
Connection ~ 6850 1100
Wire Wire Line
	6850 1100 6750 1100
Connection ~ 7200 1100
Wire Wire Line
	7200 1100 6850 1100
Connection ~ 7550 1100
Wire Wire Line
	7550 1100 7200 1100
Connection ~ 7900 1100
Wire Wire Line
	7900 1100 7550 1100
Connection ~ 8250 1100
Wire Wire Line
	8250 1100 7900 1100
Connection ~ 8600 1100
Wire Wire Line
	8600 1100 8250 1100
Connection ~ 8950 1100
Wire Wire Line
	8950 1100 8600 1100
Connection ~ 9300 1100
Wire Wire Line
	9300 1100 8950 1100
Connection ~ 9650 1100
Wire Wire Line
	9650 1100 9300 1100
Connection ~ 10000 1100
Wire Wire Line
	10000 1100 9650 1100
Connection ~ 10350 1100
Wire Wire Line
	10350 1100 10000 1100
Connection ~ 10700 1100
Wire Wire Line
	10700 1100 10350 1100
$Comp
L power:GNDD #PWR0108
U 1 1 5F9CFCFD
P 6750 1200
F 0 "#PWR0108" H 6750 950 50  0001 C CNN
F 1 "GNDD" H 6754 1045 50  0000 C CNN
F 2 "" H 6750 1200 50  0001 C CNN
F 3 "" H 6750 1200 50  0001 C CNN
	1    6750 1200
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0109
U 1 1 5F9D039B
P 6750 700
F 0 "#PWR0109" H 6750 550 50  0001 C CNN
F 1 "+3.3V" H 6765 873 50  0000 C CNN
F 2 "" H 6750 700 50  0001 C CNN
F 3 "" H 6750 700 50  0001 C CNN
	1    6750 700 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5F9D1264
P 2100 1650
F 0 "C2" H 2215 1696 50  0000 L CNN
F 1 "2.2uF" H 2215 1605 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2138 1500 50  0001 C CNN
F 3 "~" H 2100 1650 50  0001 C CNN
	1    2100 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1450 2100 1450
Wire Wire Line
	2100 1450 2100 1500
$Comp
L Device:C C1
U 1 1 5F9D618A
P 1700 1650
F 0 "C1" H 1815 1696 50  0000 L CNN
F 1 "2.2uF" H 1815 1605 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1738 1500 50  0001 C CNN
F 3 "~" H 1700 1650 50  0001 C CNN
	1    1700 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 1350 1700 1500
$Comp
L power:GNDD #PWR0110
U 1 1 5F9DA9AA
P 1900 1850
F 0 "#PWR0110" H 1900 1600 50  0001 C CNN
F 1 "GNDD" H 1904 1695 50  0000 C CNN
F 2 "" H 1900 1850 50  0001 C CNN
F 3 "" H 1900 1850 50  0001 C CNN
	1    1900 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 1800 2100 1850
Wire Wire Line
	2100 1850 1900 1850
Wire Wire Line
	1900 1850 1700 1850
Wire Wire Line
	1700 1850 1700 1800
Connection ~ 1900 1850
Wire Wire Line
	5000 550  5000 300 
$Comp
L Device:C C16
U 1 1 5FA0D3BE
P 6450 950
F 0 "C16" H 6565 996 50  0000 L CNN
F 1 "4.7uF" H 6565 905 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6488 800 50  0001 C CNN
F 3 "~" H 6450 950 50  0001 C CNN
	1    6450 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 800  6450 800 
Connection ~ 6750 800 
Wire Wire Line
	6750 1100 6450 1100
Connection ~ 6750 1100
$Comp
L Device:R_Small_US R1
U 1 1 5FA1DF18
P -4650 4300
F 0 "R1" V -4855 4300 50  0000 C CNN
F 1 "2200" V -4764 4300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H -4650 4300 50  0001 C CNN
F 3 "~" H -4650 4300 50  0001 C CNN
	1    -4650 4300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R2
U 1 1 5FA263FF
P -4650 4200
F 0 "R2" V -4855 4200 50  0000 C CNN
F 1 "2200" V -4764 4200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H -4650 4200 50  0001 C CNN
F 3 "~" H -4650 4200 50  0001 C CNN
	1    -4650 4200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R3
U 1 1 5FA2E28D
P -4650 4100
F 0 "R3" V -4855 4100 50  0000 C CNN
F 1 "2200" V -4764 4100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H -4650 4100 50  0001 C CNN
F 3 "~" H -4650 4100 50  0001 C CNN
	1    -4650 4100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R4
U 1 1 5FA36A73
P -4650 4000
F 0 "R4" V -4855 4000 50  0000 C CNN
F 1 "2200" V -4764 4000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H -4650 4000 50  0001 C CNN
F 3 "~" H -4650 4000 50  0001 C CNN
	1    -4650 4000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R5
U 1 1 5FA3D517
P -4650 3900
F 0 "R5" V -4855 3900 50  0000 C CNN
F 1 "2200" V -4764 3900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H -4650 3900 50  0001 C CNN
F 3 "~" H -4650 3900 50  0001 C CNN
	1    -4650 3900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R6
U 1 1 5FA44002
P -4650 3800
F 0 "R6" V -4855 3800 50  0000 C CNN
F 1 "2200" V -4764 3800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H -4650 3800 50  0001 C CNN
F 3 "~" H -4650 3800 50  0001 C CNN
	1    -4650 3800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R7
U 1 1 5FA4ACC5
P -4650 3700
F 0 "R7" V -4855 3700 50  0000 C CNN
F 1 "2200" V -4764 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H -4650 3700 50  0001 C CNN
F 3 "~" H -4650 3700 50  0001 C CNN
	1    -4650 3700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R8
U 1 1 5FA51AD3
P -4650 3600
F 0 "R8" V -4855 3600 50  0000 C CNN
F 1 "2200" V -4764 3600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H -4650 3600 50  0001 C CNN
F 3 "~" H -4650 3600 50  0001 C CNN
	1    -4650 3600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R9
U 1 1 5FA58B55
P -4650 3500
F 0 "R9" V -4855 3500 50  0000 C CNN
F 1 "2200" V -4764 3500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H -4650 3500 50  0001 C CNN
F 3 "~" H -4650 3500 50  0001 C CNN
	1    -4650 3500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R10
U 1 1 5FA5FD22
P -4650 3400
F 0 "R10" V -4855 3400 50  0000 C CNN
F 1 "2200" V -4764 3400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H -4650 3400 50  0001 C CNN
F 3 "~" H -4650 3400 50  0001 C CNN
	1    -4650 3400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R11
U 1 1 5FA671CF
P -4650 3300
F 0 "R11" V -4855 3300 50  0000 C CNN
F 1 "2200" V -4764 3300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H -4650 3300 50  0001 C CNN
F 3 "~" H -4650 3300 50  0001 C CNN
	1    -4650 3300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R12
U 1 1 5FA6E7DF
P -4650 3200
F 0 "R12" V -4855 3200 50  0000 C CNN
F 1 "2200" V -4764 3200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H -4650 3200 50  0001 C CNN
F 3 "~" H -4650 3200 50  0001 C CNN
	1    -4650 3200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R13
U 1 1 5FA76213
P -4650 3100
F 0 "R13" V -4855 3100 50  0000 C CNN
F 1 "2200" V -4764 3100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H -4650 3100 50  0001 C CNN
F 3 "~" H -4650 3100 50  0001 C CNN
	1    -4650 3100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R14
U 1 1 5FA7DA9E
P -4650 3000
F 0 "R14" V -4855 3000 50  0000 C CNN
F 1 "2200" V -4764 3000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H -4650 3000 50  0001 C CNN
F 3 "~" H -4650 3000 50  0001 C CNN
	1    -4650 3000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R15
U 1 1 5FA8560B
P -4650 2900
F 0 "R15" V -4855 2900 50  0000 C CNN
F 1 "2200" V -4764 2900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H -4650 2900 50  0001 C CNN
F 3 "~" H -4650 2900 50  0001 C CNN
	1    -4650 2900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R16
U 1 1 5FA8D447
P -4650 2800
F 0 "R16" V -4855 2800 50  0000 C CNN
F 1 "2200" V -4764 2800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H -4650 2800 50  0001 C CNN
F 3 "~" H -4650 2800 50  0001 C CNN
	1    -4650 2800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R17
U 1 1 5FA952E7
P -4650 2700
F 0 "R17" V -4855 2700 50  0000 C CNN
F 1 "2200" V -4764 2700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H -4650 2700 50  0001 C CNN
F 3 "~" H -4650 2700 50  0001 C CNN
	1    -4650 2700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R18
U 1 1 5FA9D5E4
P -4650 2600
F 0 "R18" V -4855 2600 50  0000 C CNN
F 1 "2200" V -4764 2600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H -4650 2600 50  0001 C CNN
F 3 "~" H -4650 2600 50  0001 C CNN
	1    -4650 2600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R19
U 1 1 5FAA5818
P -4650 2500
F 0 "R19" V -4855 2500 50  0000 C CNN
F 1 "2200" V -4764 2500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H -4650 2500 50  0001 C CNN
F 3 "~" H -4650 2500 50  0001 C CNN
	1    -4650 2500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R20
U 1 1 5FAADEFB
P -4650 2400
F 0 "R20" V -4855 2400 50  0000 C CNN
F 1 "2200" V -4764 2400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H -4650 2400 50  0001 C CNN
F 3 "~" H -4650 2400 50  0001 C CNN
	1    -4650 2400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R21
U 1 1 5FAB66BA
P -4650 2300
F 0 "R21" V -4855 2300 50  0000 C CNN
F 1 "2200" V -4764 2300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H -4650 2300 50  0001 C CNN
F 3 "~" H -4650 2300 50  0001 C CNN
	1    -4650 2300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R22
U 1 1 5FABF036
P -4650 2200
F 0 "R22" V -4855 2200 50  0000 C CNN
F 1 "2200" V -4764 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H -4650 2200 50  0001 C CNN
F 3 "~" H -4650 2200 50  0001 C CNN
	1    -4650 2200
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDA #PWR0111
U 1 1 5FB55C96
P -4300 4450
F 0 "#PWR0111" H -4300 4200 50  0001 C CNN
F 1 "GNDA" H -4295 4277 50  0000 C CNN
F 2 "" H -4300 4450 50  0001 C CNN
F 3 "" H -4300 4450 50  0001 C CNN
	1    -4300 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	-4300 4450 -4300 4300
Wire Wire Line
	-4550 2200 -4300 2200
Wire Wire Line
	-4550 2300 -4300 2300
Connection ~ -4300 2300
Wire Wire Line
	-4300 2300 -4300 2200
Wire Wire Line
	-4550 2400 -4300 2400
Connection ~ -4300 2400
Wire Wire Line
	-4300 2400 -4300 2300
Wire Wire Line
	-4550 2500 -4300 2500
Connection ~ -4300 2500
Wire Wire Line
	-4300 2500 -4300 2400
Wire Wire Line
	-4550 2600 -4300 2600
Connection ~ -4300 2600
Wire Wire Line
	-4300 2600 -4300 2500
Wire Wire Line
	-4550 2700 -4300 2700
Connection ~ -4300 2700
Wire Wire Line
	-4300 2700 -4300 2600
Wire Wire Line
	-4550 2800 -4300 2800
Connection ~ -4300 2800
Wire Wire Line
	-4300 2800 -4300 2700
Wire Wire Line
	-4550 2900 -4300 2900
Connection ~ -4300 2900
Wire Wire Line
	-4300 2900 -4300 2800
Wire Wire Line
	-4550 3000 -4300 3000
Connection ~ -4300 3000
Wire Wire Line
	-4300 3000 -4300 2900
Wire Wire Line
	-4550 3100 -4300 3100
Connection ~ -4300 3100
Wire Wire Line
	-4300 3100 -4300 3000
Wire Wire Line
	-4550 3200 -4300 3200
Connection ~ -4300 3200
Wire Wire Line
	-4300 3200 -4300 3100
Wire Wire Line
	-4550 3300 -4300 3300
Connection ~ -4300 3300
Wire Wire Line
	-4300 3300 -4300 3200
Wire Wire Line
	-4550 3400 -4300 3400
Connection ~ -4300 3400
Wire Wire Line
	-4300 3400 -4300 3300
Wire Wire Line
	-4550 3500 -4300 3500
Connection ~ -4300 3500
Wire Wire Line
	-4300 3500 -4300 3400
Wire Wire Line
	-4550 3600 -4300 3600
Connection ~ -4300 3600
Wire Wire Line
	-4300 3600 -4300 3500
Wire Wire Line
	-4550 3700 -4300 3700
Connection ~ -4300 3700
Wire Wire Line
	-4300 3700 -4300 3600
Wire Wire Line
	-4550 3800 -4300 3800
Connection ~ -4300 3800
Wire Wire Line
	-4300 3800 -4300 3700
Wire Wire Line
	-4550 3900 -4300 3900
Connection ~ -4300 3900
Wire Wire Line
	-4300 3900 -4300 3800
Wire Wire Line
	-4550 4000 -4300 4000
Connection ~ -4300 4000
Wire Wire Line
	-4300 4000 -4300 3900
Wire Wire Line
	-4550 4100 -4300 4100
Connection ~ -4300 4100
Wire Wire Line
	-4300 4100 -4300 4000
Wire Wire Line
	-4550 4200 -4300 4200
Connection ~ -4300 4200
Wire Wire Line
	-4300 4200 -4300 4100
Wire Wire Line
	-4550 4300 -4300 4300
Connection ~ -4300 4300
Wire Wire Line
	-4300 4300 -4300 4200
Wire Wire Line
	-4900 4300 -4750 4300
Wire Wire Line
	-4900 4200 -4750 4200
Wire Wire Line
	-4900 4100 -4750 4100
Wire Wire Line
	-4900 4000 -4750 4000
Wire Wire Line
	-4900 3900 -4750 3900
Wire Wire Line
	-4900 3800 -4750 3800
Wire Wire Line
	-4900 3700 -4750 3700
Wire Wire Line
	-4900 3600 -4750 3600
Wire Wire Line
	-4900 3500 -4750 3500
Wire Wire Line
	-4900 3400 -4750 3400
Wire Wire Line
	-4900 3300 -4750 3300
Wire Wire Line
	-4900 3200 -4750 3200
Wire Wire Line
	-4900 3100 -4750 3100
Wire Wire Line
	-4900 3000 -4750 3000
Wire Wire Line
	-4900 2900 -4750 2900
Wire Wire Line
	-4900 2800 -4750 2800
Wire Wire Line
	-4900 2700 -4750 2700
Wire Wire Line
	-4900 2600 -4750 2600
Wire Wire Line
	-4900 2500 -4750 2500
Wire Wire Line
	-4900 2400 -4750 2400
Wire Wire Line
	-4900 2300 -4750 2300
Wire Wire Line
	-4900 2200 -4750 2200
Text Label -4850 4300 0    50   ~ 0
Sen1R
Text Label -4850 4200 0    50   ~ 0
Sen2R
Text Label -4850 4100 0    50   ~ 0
Sen3R
Text Label -4850 4000 0    50   ~ 0
Sen4R
Text Label -4850 3900 0    50   ~ 0
Sen5R
Text Label -4850 3800 0    50   ~ 0
Sen6R
Text Label -4850 3700 0    50   ~ 0
Sen7R
Text Label -4850 3600 0    50   ~ 0
Sen8R
Text Label -4850 3500 0    50   ~ 0
Sen9R
Text Label -4850 3400 0    50   ~ 0
Sen10R
Text Label -4850 3300 0    50   ~ 0
Sen11R
Text Label -4850 3200 0    50   ~ 0
Sen12R
Text Label -4850 3100 0    50   ~ 0
Sen13R
Text Label -4850 3000 0    50   ~ 0
Sen14R
Text Label -4850 2900 0    50   ~ 0
Sen15R
Text Label -4850 2800 0    50   ~ 0
Sen16R
Text Label -4850 2700 0    50   ~ 0
Sen17R
Text Label -4850 2600 0    50   ~ 0
Sen18R
Text Label -4850 2500 0    50   ~ 0
Sen19R
Text Label -4850 2400 0    50   ~ 0
Sen20R
Text Label -4850 2300 0    50   ~ 0
Sen21R
Text Label -4850 2200 0    50   ~ 0
Sen22R
Text Label 2100 1350 0    50   ~ 0
VCAP1
Text Label 2850 1150 0    50   ~ 0
BOOT0
Wire Wire Line
	1700 1350 3100 1350
Text Label 2100 1450 0    50   ~ 0
VCAP2
Wire Wire Line
	6850 4750 7250 4750
Wire Wire Line
	6850 4850 7250 4850
Wire Wire Line
	6850 4950 7250 4950
Wire Wire Line
	6850 5050 7250 5050
Wire Wire Line
	6850 5250 7250 5250
Text Label 6850 5250 0    50   ~ 0
JTDO
Text Label 6850 5050 0    50   ~ 0
JTCK
Text Label 6850 4950 0    50   ~ 0
JTMS
Text Label 6850 4850 0    50   ~ 0
JTDI
Text Label 6850 4750 0    50   ~ 0
JNTRST
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5FF241D9
P 900 800
F 0 "H1" H 1000 849 50  0000 L CNN
F 1 "MountingHole_Pad" H 1000 758 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 900 800 50  0001 C CNN
F 3 "~" H 900 800 50  0001 C CNN
	1    900  800 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5FF253E7
P 1200 800
F 0 "H2" H 1300 849 50  0000 L CNN
F 1 "MountingHole_Pad" H 1300 758 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 1200 800 50  0001 C CNN
F 3 "~" H 1200 800 50  0001 C CNN
	1    1200 800 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5FF263BA
P 1500 800
F 0 "H3" H 1600 849 50  0000 L CNN
F 1 "MountingHole_Pad" H 1600 758 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 1500 800 50  0001 C CNN
F 3 "~" H 1500 800 50  0001 C CNN
	1    1500 800 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5FF27900
P 1800 800
F 0 "H4" H 1900 849 50  0000 L CNN
F 1 "MountingHole_Pad" H 1900 758 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 1800 800 50  0001 C CNN
F 3 "~" H 1800 800 50  0001 C CNN
	1    1800 800 
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0112
U 1 1 5FF28455
P 1350 1000
F 0 "#PWR0112" H 1350 750 50  0001 C CNN
F 1 "GNDD" H 1354 845 50  0000 C CNN
F 2 "" H 1350 1000 50  0001 C CNN
F 3 "" H 1350 1000 50  0001 C CNN
	1    1350 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  900  900  1000
Wire Wire Line
	900  1000 1200 1000
Wire Wire Line
	1800 1000 1800 900 
Connection ~ 1350 1000
Wire Wire Line
	1200 900  1200 1000
Connection ~ 1200 1000
Wire Wire Line
	1200 1000 1350 1000
Wire Wire Line
	5600 4350 6300 4350
Wire Wire Line
	5600 950  6300 950 
Wire Wire Line
	5600 1050 6300 1050
Wire Wire Line
	5600 1550 6300 1550
Wire Wire Line
	5600 4650 6300 4650
Wire Wire Line
	5600 4750 6300 4750
Wire Wire Line
	5600 3650 6300 3650
Wire Wire Line
	5600 3850 6300 3850
Wire Wire Line
	5600 3750 6300 3750
Wire Wire Line
	5600 3950 6300 3950
Wire Wire Line
	5600 4050 6300 4050
Wire Wire Line
	5600 4950 6300 4950
Wire Wire Line
	5600 5050 6300 5050
Wire Wire Line
	5600 1950 6300 1950
Wire Wire Line
	5600 2050 6300 2050
Text Label 6300 950  2    50   ~ 0
Sen11
Text Label 6300 1050 2    50   ~ 0
Sen10
Text Label 6300 1550 2    50   ~ 0
Sen5
Text Label 6300 3650 2    50   ~ 0
ETH_TX_EN
Text Label 6300 3750 2    50   ~ 0
ETH_TXD0
Text Label 6300 3850 2    50   ~ 0
ETH_TXD1
Text Label 6300 3950 2    50   ~ 0
USART1_TX
Text Label 6300 4050 2    50   ~ 0
USART1_RX
Text Label 6300 4950 2    50   ~ 0
USART6_RX
Text Label 6300 5050 2    50   ~ 0
USART6_TX
Text Label 6300 4650 2    50   ~ 0
Sen4
Text Label 6300 4750 2    50   ~ 0
Sen3
Text Label 6300 1950 2    50   ~ 0
USB_OTG_FS_D-
Text Label 6300 2050 2    50   ~ 0
USB_OTG_FS_D+
Text Label 6300 4350 2    50   ~ 0
Sen13
Wire Wire Line
	9200 5150 9300 5150
Wire Wire Line
	9200 5250 9300 5250
$Comp
L power:GNDD #PWR0113
U 1 1 601E6CAB
P 8900 5600
F 0 "#PWR0113" H 8900 5350 50  0001 C CNN
F 1 "GNDD" H 8904 5445 50  0000 C CNN
F 2 "" H 8900 5600 50  0001 C CNN
F 3 "" H 8900 5600 50  0001 C CNN
	1    8900 5600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J3
U 1 1 601EA369
P 9550 3350
F 0 "J3" H 9658 3631 50  0000 C CNN
F 1 "USART1" H 9658 3540 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 9550 3350 50  0001 C CNN
F 3 "~" H 9550 3350 50  0001 C CNN
	1    9550 3350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J4
U 1 1 601EC46F
P 9550 3900
F 0 "J4" H 9658 4181 50  0000 C CNN
F 1 "USART6" H 9658 4090 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch1.27mm" H 9550 3900 50  0001 C CNN
F 3 "~" H 9550 3900 50  0001 C CNN
	1    9550 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 3250 10450 3250
Wire Wire Line
	9750 3350 10450 3350
Wire Wire Line
	9750 3450 9900 3450
Wire Wire Line
	9750 3800 10450 3800
Wire Wire Line
	9750 3900 10450 3900
Wire Wire Line
	9750 4000 9900 4000
$Comp
L power:GNDD #PWR0114
U 1 1 6027C631
P 9900 4000
F 0 "#PWR0114" H 9900 3750 50  0001 C CNN
F 1 "GNDD" H 9904 3845 50  0000 C CNN
F 2 "" H 9900 4000 50  0001 C CNN
F 3 "" H 9900 4000 50  0001 C CNN
	1    9900 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0115
U 1 1 6027D783
P 9900 3450
F 0 "#PWR0115" H 9900 3200 50  0001 C CNN
F 1 "GNDD" H 9904 3295 50  0000 C CNN
F 2 "" H 9900 3450 50  0001 C CNN
F 3 "" H 9900 3450 50  0001 C CNN
	1    9900 3450
	1    0    0    -1  
$EndComp
Text Label 10450 3250 2    50   ~ 0
USART1_RX
Text Label 10450 3350 2    50   ~ 0
USART1_TX
Text Label 10450 3800 2    50   ~ 0
USART6_RX
Text Label 10450 3900 2    50   ~ 0
USART6_TX
$Comp
L Device:C C17
U 1 1 6045586D
P 11500 950
F 0 "C17" H 11615 996 50  0000 L CNN
F 1 "DC33" H 11615 905 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 11538 800 50  0001 C CNN
F 3 "~" H 11500 950 50  0001 C CNN
	1    11500 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0120
U 1 1 60455F47
P 11500 1100
F 0 "#PWR0120" H 11500 850 50  0001 C CNN
F 1 "GNDA" H 11505 927 50  0000 C CNN
F 2 "" H 11500 1100 50  0001 C CNN
F 3 "" H 11500 1100 50  0001 C CNN
	1    11500 1100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR0121
U 1 1 60456F62
P 11500 800
F 0 "#PWR0121" H 11500 650 50  0001 C CNN
F 1 "+3.3VA" H 11515 973 50  0000 C CNN
F 2 "" H 11500 800 50  0001 C CNN
F 3 "" H 11500 800 50  0001 C CNN
	1    11500 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 4850 2500 4850
Wire Wire Line
	3100 4950 2500 4950
Wire Wire Line
	3100 5050 2500 5050
Wire Wire Line
	3100 5150 2500 5150
Wire Wire Line
	3100 5250 2500 5250
Text Label 2500 4850 0    50   ~ 0
Sen19
Text Label 2500 4950 0    50   ~ 0
Sen18
Text Label 2500 5050 0    50   ~ 0
Sen17
Text Label 2500 5150 0    50   ~ 0
Sen16
Text Label 2500 5250 0    50   ~ 0
Sen15
Wire Wire Line
	5600 4250 6300 4250
Text Label 6300 4250 2    50   ~ 0
Sen14
Wire Wire Line
	5600 850  6300 850 
Text Label 6300 850  2    50   ~ 0
Sen12
Wire Wire Line
	5600 1150 6300 1150
Wire Wire Line
	5600 1250 6300 1250
Wire Wire Line
	5600 1350 6300 1350
Wire Wire Line
	5600 1450 6300 1450
Text Label 6300 1150 2    50   ~ 0
Sen9
Text Label 6300 1250 2    50   ~ 0
Sen8
Text Label 6300 1350 2    50   ~ 0
Sen7
Text Label 6300 1450 2    50   ~ 0
Sen6
Wire Wire Line
	5600 2550 6300 2550
Text Label 6300 2550 2    50   ~ 0
Sen2
Wire Wire Line
	5600 2650 6300 2650
$Comp
L Power_Protection:USBLC6-2SC6 U3
U 1 1 606C142F
P 9850 5200
F 0 "U3" V 9804 5644 50  0000 L CNN
F 1 "USBLC6-2SC6" V 9895 5644 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-6_Handsoldering" H 9850 4700 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/usblc6-2.pdf" H 10050 5550 50  0001 C CNN
	1    9850 5200
	0    1    1    0   
$EndComp
$Comp
L power:GNDD #PWR0122
U 1 1 607593F4
P 9450 5300
F 0 "#PWR0122" H 9450 5050 50  0001 C CNN
F 1 "GNDD" H 9454 5145 50  0000 C CNN
F 2 "" H 9450 5300 50  0001 C CNN
F 3 "" H 9450 5300 50  0001 C CNN
	1    9450 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 5250 9300 5750
Wire Wire Line
	9300 5150 9300 4650
Wire Wire Line
	8900 5600 8900 5550
Text Label 9300 4650 0    50   ~ 0
USB_D+
Text Label 9300 5750 0    50   ~ 0
USB_D-
Wire Wire Line
	9450 5300 9450 5200
Wire Wire Line
	9950 4650 9950 4800
Wire Wire Line
	9300 4650 9950 4650
Wire Wire Line
	9950 5750 9950 5600
Wire Wire Line
	9300 5750 9950 5750
Wire Wire Line
	9750 5600 9750 5700
Wire Wire Line
	9750 5700 10600 5700
Wire Wire Line
	9750 4800 9750 4750
Wire Wire Line
	9750 4750 10600 4750
Text Label 10600 4750 2    50   ~ 0
USB_OTG_FS_D+
Text Label 10600 5700 2    50   ~ 0
USB_OTG_FS_D-
$Comp
L Connector_Generic:Conn_02x22_Odd_Even J2
U 1 1 60A3D4A2
P -5100 3300
F 0 "J2" H -5050 1975 50  0000 C CNN
F 1 "Sensors" H -5050 2066 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_2x22_Pitch2.54mm" H -5100 3300 50  0001 C CNN
F 3 "~" H -5100 3300 50  0001 C CNN
	1    -5100 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	-5400 4200 -5400 4300
Wire Wire Line
	-5400 4200 -5400 4100
Connection ~ -5400 4200
Connection ~ -5400 2300
Wire Wire Line
	-5400 2300 -5400 2200
Connection ~ -5400 2400
Wire Wire Line
	-5400 2400 -5400 2300
Connection ~ -5400 2500
Wire Wire Line
	-5400 2500 -5400 2400
Connection ~ -5400 2600
Wire Wire Line
	-5400 2600 -5400 2500
Connection ~ -5400 2700
Wire Wire Line
	-5400 2700 -5400 2600
Connection ~ -5400 2800
Wire Wire Line
	-5400 2800 -5400 2700
Connection ~ -5400 2900
Wire Wire Line
	-5400 2900 -5400 2800
Connection ~ -5400 3000
Wire Wire Line
	-5400 3000 -5400 2900
Connection ~ -5400 3100
Wire Wire Line
	-5400 3100 -5400 3000
Connection ~ -5400 3200
Wire Wire Line
	-5400 3200 -5400 3100
Connection ~ -5400 3300
Wire Wire Line
	-5400 3300 -5400 3200
Connection ~ -5400 3400
Wire Wire Line
	-5400 3400 -5400 3300
Connection ~ -5400 3500
Wire Wire Line
	-5400 3500 -5400 3400
Connection ~ -5400 3600
Wire Wire Line
	-5400 3600 -5400 3500
Connection ~ -5400 3700
Wire Wire Line
	-5400 3700 -5400 3600
Connection ~ -5400 3800
Wire Wire Line
	-5400 3800 -5400 3700
Connection ~ -5400 3900
Wire Wire Line
	-5400 3900 -5400 3800
Connection ~ -5400 4000
Wire Wire Line
	-5400 4000 -5400 3900
Connection ~ -5400 4100
Wire Wire Line
	-5400 4100 -5400 4000
Wire Wire Line
	3100 4550 2500 4550
Wire Wire Line
	3100 4650 2500 4650
Wire Wire Line
	3100 4750 2500 4750
Text Label 2500 4550 0    50   ~ 0
Sen22
Text Label 2500 4650 0    50   ~ 0
Sen21
Text Label 2500 4750 0    50   ~ 0
Sen20
Text Label 6300 2650 2    50   ~ 0
Sen1
$Comp
L power:+5V #PWR0123
U 1 1 60B85816
P -5400 1400
F 0 "#PWR0123" H -5400 1250 50  0001 C CNN
F 1 "+5V" H -5385 1573 50  0000 C CNN
F 2 "" H -5400 1400 50  0001 C CNN
F 3 "" H -5400 1400 50  0001 C CNN
	1    -5400 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	-5400 2200 -5400 1900
Connection ~ -5400 2200
$Comp
L Device:C_Small C19
U 1 1 60BA1561
P -4850 1900
F 0 "C19" V -5079 1900 50  0000 C CNN
F 1 "1uF" V -4988 1900 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H -4850 1900 50  0001 C CNN
F 3 "~" H -4850 1900 50  0001 C CNN
	1    -4850 1900
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C18
U 1 1 60BA3160
P -4850 1550
F 0 "C18" V -5079 1550 50  0000 C CNN
F 1 "1uF" V -4988 1550 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H -4850 1550 50  0001 C CNN
F 3 "~" H -4850 1550 50  0001 C CNN
	1    -4850 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	-4950 1550 -5400 1550
Connection ~ -5400 1550
Wire Wire Line
	-5400 1550 -5400 1400
Wire Wire Line
	-4950 1900 -5400 1900
Connection ~ -5400 1900
Wire Wire Line
	-5400 1900 -5400 1550
Wire Wire Line
	-4750 1900 -4300 1900
Wire Wire Line
	-4300 1900 -4300 2200
Connection ~ -4300 2200
Wire Wire Line
	-4750 1550 -4300 1550
Wire Wire Line
	-4300 1550 -4300 1900
Connection ~ -4300 1900
$Comp
L AD8544:AD8544 U4
U 1 1 60C988B4
P -2100 1150
F 0 "U4" H -2100 1815 50  0000 C CNN
F 1 "AD8544" H -2100 1724 50  0000 C CNN
F 2 "SMD_Packages:SSOP-14" H -2100 1150 50  0001 C CNN
F 3 "DOCUMENTATION" H -2100 1150 50  0001 C CNN
	1    -2100 1150
	1    0    0    -1  
$EndComp
$Comp
L AD8544:AD8544 U5
U 1 1 60C9AAE3
P -2100 2450
F 0 "U5" H -2100 3115 50  0000 C CNN
F 1 "AD8544" H -2100 3024 50  0000 C CNN
F 2 "SMD_Packages:SSOP-14" H -2100 2450 50  0001 C CNN
F 3 "DOCUMENTATION" H -2100 2450 50  0001 C CNN
	1    -2100 2450
	1    0    0    -1  
$EndComp
$Comp
L AD8544:AD8544 U6
U 1 1 60C9BB7B
P -2100 3750
F 0 "U6" H -2100 4415 50  0000 C CNN
F 1 "AD8544" H -2100 4324 50  0000 C CNN
F 2 "SMD_Packages:SSOP-14" H -2100 3750 50  0001 C CNN
F 3 "DOCUMENTATION" H -2100 3750 50  0001 C CNN
	1    -2100 3750
	1    0    0    -1  
$EndComp
$Comp
L AD8544:AD8544 U7
U 1 1 60C9CE3C
P -2100 5050
F 0 "U7" H -2100 5715 50  0000 C CNN
F 1 "AD8544" H -2100 5624 50  0000 C CNN
F 2 "SMD_Packages:SSOP-14" H -2100 5050 50  0001 C CNN
F 3 "DOCUMENTATION" H -2100 5050 50  0001 C CNN
	1    -2100 5050
	1    0    0    -1  
$EndComp
$Comp
L AD8544:AD8544 U8
U 1 1 60C9E968
P -2100 6400
F 0 "U8" H -2100 7065 50  0000 C CNN
F 1 "AD8544" H -2100 6974 50  0000 C CNN
F 2 "SMD_Packages:SSOP-14" H -2100 6400 50  0001 C CNN
F 3 "DOCUMENTATION" H -2100 6400 50  0001 C CNN
	1    -2100 6400
	1    0    0    -1  
$EndComp
$Comp
L AD8544:AD8544 U9
U 1 1 60C9F34F
P -2100 7600
F 0 "U9" H -2100 8265 50  0000 C CNN
F 1 "AD8544" H -2100 8174 50  0000 C CNN
F 2 "SMD_Packages:SSOP-14" H -2100 7600 50  0001 C CNN
F 3 "DOCUMENTATION" H -2100 7600 50  0001 C CNN
	1    -2100 7600
	1    0    0    -1  
$EndComp
Wire Wire Line
	-2850 1150 -3300 1150
Wire Wire Line
	-3300 7600 -2850 7600
Wire Wire Line
	-3300 350  -3300 1150
Connection ~ -3300 1150
Wire Wire Line
	-3300 1150 -3300 2450
Wire Wire Line
	-2850 2450 -3300 2450
Connection ~ -3300 2450
Wire Wire Line
	-3300 2450 -3300 3750
Wire Wire Line
	-2850 3750 -3300 3750
Connection ~ -3300 3750
Wire Wire Line
	-3300 3750 -3300 5050
Wire Wire Line
	-2850 5050 -3300 5050
Connection ~ -3300 5050
Wire Wire Line
	-3300 5050 -3300 6400
Wire Wire Line
	-2850 6400 -3300 6400
Connection ~ -3300 6400
Wire Wire Line
	-3300 6400 -3300 7600
$Comp
L power:+3.3VA #PWR0124
U 1 1 60D384C3
P -3300 350
F 0 "#PWR0124" H -3300 200 50  0001 C CNN
F 1 "+3.3VA" H -3285 523 50  0000 C CNN
F 2 "" H -3300 350 50  0001 C CNN
F 3 "" H -3300 350 50  0001 C CNN
	1    -3300 350 
	1    0    0    -1  
$EndComp
Wire Wire Line
	-1350 1150 -900 1150
Wire Wire Line
	-900 1150 -900 2450
Wire Wire Line
	-1350 7600 -900 7600
Connection ~ -900 7600
Wire Wire Line
	-900 7600 -900 8200
Wire Wire Line
	-1350 6400 -900 6400
Connection ~ -900 6400
Wire Wire Line
	-900 6400 -900 7600
Wire Wire Line
	-1350 5050 -900 5050
Connection ~ -900 5050
Wire Wire Line
	-900 5050 -900 6400
Wire Wire Line
	-1350 3750 -900 3750
Connection ~ -900 3750
Wire Wire Line
	-900 3750 -900 5050
Wire Wire Line
	-1350 2450 -900 2450
Connection ~ -900 2450
Wire Wire Line
	-900 2450 -900 3750
$Comp
L power:GNDA #PWR0125
U 1 1 60DFED01
P -900 8200
F 0 "#PWR0125" H -900 7950 50  0001 C CNN
F 1 "GNDA" H -895 8027 50  0000 C CNN
F 2 "" H -900 8200 50  0001 C CNN
F 3 "" H -900 8200 50  0001 C CNN
	1    -900 8200
	1    0    0    -1  
$EndComp
Wire Wire Line
	-2850 850  -2850 950 
Wire Wire Line
	-2850 1350 -2850 1450
Wire Wire Line
	-1350 1450 -1350 1350
Wire Wire Line
	-1350 950  -1350 850 
Wire Wire Line
	-2850 2250 -2850 2150
Wire Wire Line
	-2850 2650 -2850 2750
Wire Wire Line
	-1350 2650 -1350 2750
Wire Wire Line
	-1350 2250 -1350 2150
Wire Wire Line
	-2850 3550 -2850 3450
Wire Wire Line
	-2850 3950 -2850 4050
Wire Wire Line
	-1350 4050 -1350 3950
Wire Wire Line
	-1350 3550 -1350 3450
Wire Wire Line
	-2850 4750 -2850 4850
Wire Wire Line
	-2850 5250 -2850 5350
Wire Wire Line
	-1350 5350 -1350 5250
Wire Wire Line
	-1350 4850 -1350 4750
Wire Wire Line
	-2850 6200 -2850 6100
Wire Wire Line
	-2850 6600 -2850 6700
Wire Wire Line
	-1350 6700 -1350 6600
Wire Wire Line
	-1350 6200 -1350 6100
Wire Wire Line
	-2850 7400 -2850 7300
Wire Wire Line
	-2850 7800 -2850 7900
Wire Wire Line
	-1350 7800 -1350 7700
Wire Wire Line
	-1350 7500 -1350 7400
Wire Wire Line
	-2850 7500 -3250 7500
Wire Wire Line
	-2850 7700 -3250 7700
Wire Wire Line
	-2850 6500 -3250 6500
Wire Wire Line
	-2850 6300 -3250 6300
Wire Wire Line
	-1350 6300 -950 6300
Wire Wire Line
	-1350 6500 -950 6500
Wire Wire Line
	-2850 4950 -3250 4950
Wire Wire Line
	-2850 5150 -3250 5150
Wire Wire Line
	-1350 5150 -950 5150
Wire Wire Line
	-1350 4950 -950 4950
Wire Wire Line
	-2850 3850 -3250 3850
Wire Wire Line
	-2850 3650 -3250 3650
Wire Wire Line
	-1350 3650 -950 3650
Wire Wire Line
	-1350 3850 -950 3850
Wire Wire Line
	-2850 2550 -3250 2550
Wire Wire Line
	-2850 2350 -3250 2350
Wire Wire Line
	-1350 2350 -950 2350
Wire Wire Line
	-1350 2550 -950 2550
Wire Wire Line
	-2850 1050 -3250 1050
Wire Wire Line
	-2850 1250 -3250 1250
Wire Wire Line
	-1350 1250 -950 1250
Wire Wire Line
	-1350 1050 -950 1050
Text Label -3250 1050 0    50   ~ 0
Sen2R
Text Label -3250 1250 0    50   ~ 0
Sen1R
Text Label -950 1250 2    50   ~ 0
Sen4R
Text Label -950 1050 2    50   ~ 0
Sen3R
Wire Wire Line
	-2850 850  -3250 850 
Connection ~ -2850 850 
Wire Wire Line
	-2850 1450 -3250 1450
Connection ~ -2850 1450
Wire Wire Line
	-1350 1450 -950 1450
Connection ~ -1350 1450
Wire Wire Line
	-1350 850  -950 850 
Connection ~ -1350 850 
Text Label -3250 850  0    50   ~ 0
Sen2
Text Label -3250 1450 0    50   ~ 0
Sen1
Text Label -950 1450 2    50   ~ 0
Sen4
Text Label -950 850  2    50   ~ 0
Sen3
Wire Wire Line
	-2850 2750 -3250 2750
Connection ~ -2850 2750
Wire Wire Line
	-2850 2150 -3250 2150
Connection ~ -2850 2150
Wire Wire Line
	-1350 2150 -950 2150
Connection ~ -1350 2150
Wire Wire Line
	-1350 2750 -950 2750
Connection ~ -1350 2750
Wire Wire Line
	-2850 3450 -3250 3450
Connection ~ -2850 3450
Wire Wire Line
	-2850 4050 -3250 4050
Connection ~ -2850 4050
Wire Wire Line
	-1350 4050 -950 4050
Connection ~ -1350 4050
Wire Wire Line
	-1350 3450 -950 3450
Connection ~ -1350 3450
Wire Wire Line
	-2850 4750 -3250 4750
Connection ~ -2850 4750
Wire Wire Line
	-2850 5350 -3250 5350
Connection ~ -2850 5350
Wire Wire Line
	-1350 5350 -950 5350
Connection ~ -1350 5350
Wire Wire Line
	-1350 4750 -950 4750
Connection ~ -1350 4750
Wire Wire Line
	-2850 6100 -3250 6100
Connection ~ -2850 6100
Wire Wire Line
	-2850 6700 -3250 6700
Connection ~ -2850 6700
Wire Wire Line
	-1350 6700 -950 6700
Connection ~ -1350 6700
Wire Wire Line
	-1350 6100 -950 6100
Connection ~ -1350 6100
Wire Wire Line
	-2850 7300 -3250 7300
Connection ~ -2850 7300
Wire Wire Line
	-2850 7900 -3250 7900
Connection ~ -2850 7900
Text Label -3250 2750 0    50   ~ 0
Sen5
Text Label -3250 2550 0    50   ~ 0
Sen5R
Text Label -3250 2350 0    50   ~ 0
Sen6R
Text Label -3250 2150 0    50   ~ 0
Sen6
Text Label -950 2150 2    50   ~ 0
Sen7
Text Label -950 2350 2    50   ~ 0
Sen7R
Text Label -950 2550 2    50   ~ 0
Sen8R
Text Label -950 2750 2    50   ~ 0
Sen8
Text Label -3250 4050 0    50   ~ 0
Sen9
Text Label -3250 3850 0    50   ~ 0
Sen9R
Text Label -3250 3650 0    50   ~ 0
Sen10R
Text Label -3250 3450 0    50   ~ 0
Sen10
Text Label -950 3450 2    50   ~ 0
Sen11
Text Label -950 3650 2    50   ~ 0
Sen11R
Text Label -950 3850 2    50   ~ 0
Sen12R
Text Label -950 4050 2    50   ~ 0
Sen12
Text Label -3250 5350 0    50   ~ 0
Sen13
Text Label -3250 5150 0    50   ~ 0
Sen13R
Text Label -3250 4950 0    50   ~ 0
Sen14R
Text Label -3250 4750 0    50   ~ 0
Sen14
Text Label -950 4750 2    50   ~ 0
Sen15
Text Label -950 4950 2    50   ~ 0
Sen15R
Text Label -950 5150 2    50   ~ 0
Sen16R
Text Label -950 5350 2    50   ~ 0
Sen16
Text Label -3250 6700 0    50   ~ 0
Sen17
Text Label -3250 6500 0    50   ~ 0
Sen17R
Text Label -3250 6300 0    50   ~ 0
Sen18R
Text Label -3250 6100 0    50   ~ 0
Sen18
Text Label -950 6100 2    50   ~ 0
Sen19
Text Label -950 6300 2    50   ~ 0
Sen19R
Text Label -950 6500 2    50   ~ 0
Sen20R
Text Label -950 6700 2    50   ~ 0
Sen20
Text Label -3250 7900 0    50   ~ 0
Sen21
Text Label -3250 7700 0    50   ~ 0
Sen21R
Text Label -3250 7500 0    50   ~ 0
Sen22R
Text Label -3250 7300 0    50   ~ 0
Sen22
$Comp
L MCP1501:MCP1501 U10
U 1 1 61AB3524
P 2900 9300
F 0 "U10" H 2900 9815 50  0000 C CNN
F 1 "MCP1501T-30E/SN" H 2900 9724 50  0000 C CNN
F 2 "SMD_Packages:SOIC-8-N" H 2900 9300 50  0001 C CNN
F 3 "DOCUMENTATION" H 2900 9300 50  0001 C CNN
	1    2900 9300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 9350 1900 9350
Wire Wire Line
	1900 9350 1900 9150
Wire Wire Line
	2150 9150 1900 9150
Connection ~ 1900 9150
Wire Wire Line
	1900 9150 1900 8900
$Comp
L power:+5V #PWR0126
U 1 1 61B1F663
P 1900 8900
F 0 "#PWR0126" H 1900 8750 50  0001 C CNN
F 1 "+5V" H 1915 9073 50  0000 C CNN
F 2 "" H 1900 8900 50  0001 C CNN
F 3 "" H 1900 8900 50  0001 C CNN
	1    1900 8900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 9250 2000 9250
Wire Wire Line
	2000 9250 2000 9450
Wire Wire Line
	2000 9800 2950 9800
Wire Wire Line
	3800 9800 3800 9450
Wire Wire Line
	3800 9350 3650 9350
Wire Wire Line
	3650 9450 3800 9450
Connection ~ 3800 9450
Wire Wire Line
	3800 9450 3800 9350
Wire Wire Line
	2150 9450 2000 9450
Connection ~ 2000 9450
Wire Wire Line
	2000 9450 2000 9800
Wire Wire Line
	2950 9800 2950 9950
Connection ~ 2950 9800
Wire Wire Line
	2950 9800 3800 9800
$Comp
L power:GNDA #PWR0127
U 1 1 61BFD4C7
P 2950 9950
F 0 "#PWR0127" H 2950 9700 50  0001 C CNN
F 1 "GNDA" H 2955 9777 50  0000 C CNN
F 2 "" H 2950 9950 50  0001 C CNN
F 3 "" H 2950 9950 50  0001 C CNN
	1    2950 9950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 9150 4400 9150
Wire Wire Line
	4400 9150 4400 9200
Wire Wire Line
	4400 9250 4150 9250
Wire Wire Line
	4400 9200 4800 9200
Connection ~ 4400 9200
Wire Wire Line
	4400 9200 4400 9250
Text Label 4800 9200 2    50   ~ 0
VREF+
$Comp
L Device:R_Small_US R23
U 1 1 61CA84E6
P 4150 9400
F 0 "R23" H 4218 9446 50  0000 L CNN
F 1 "50" H 4218 9355 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 4150 9400 50  0001 C CNN
F 3 "~" H 4150 9400 50  0001 C CNN
	1    4150 9400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C21
U 1 1 61CA8BA4
P 4150 9650
F 0 "C21" H 4242 9696 50  0000 L CNN
F 1 "2.2uF" H 4242 9605 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4150 9650 50  0001 C CNN
F 3 "~" H 4150 9650 50  0001 C CNN
	1    4150 9650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 9250 4150 9300
Connection ~ 4150 9250
Wire Wire Line
	4150 9250 3650 9250
Wire Wire Line
	4150 9500 4150 9550
Wire Wire Line
	4150 9750 4150 9800
Wire Wire Line
	4150 9800 3800 9800
Connection ~ 3800 9800
$Comp
L Device:C_Small C20
U 1 1 61D55B11
P 1900 9600
F 0 "C20" H 1992 9646 50  0000 L CNN
F 1 "2.2uF" H 1992 9555 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1900 9600 50  0001 C CNN
F 3 "~" H 1900 9600 50  0001 C CNN
	1    1900 9600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 9350 1900 9500
Connection ~ 1900 9350
Wire Wire Line
	1900 9700 1900 9800
Wire Wire Line
	1900 9800 2000 9800
Connection ~ 2000 9800
Wire Wire Line
	3100 1550 2550 1550
Text Label 2550 1550 0    50   ~ 0
VREF+
$Comp
L Regulator_Linear:AP7361C-33E U11
U 1 1 61E8552A
P 5800 9250
F 0 "U11" H 5800 9492 50  0000 C CNN
F 1 "AP7361C-33E-13" H 5800 9401 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223-3_TabPin2" H 5800 9475 50  0001 C CIN
F 3 "https://www.diodes.com/assets/Datasheets/AP7361C.pdf" H 5800 9200 50  0001 C CNN
	1    5800 9250
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AP7361C-33E U12
U 1 1 61E87546
P 7600 9250
F 0 "U12" H 7600 9492 50  0000 C CNN
F 1 "AP7361C-33E-13" H 7600 9401 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223-3_TabPin2" H 7600 9475 50  0001 C CIN
F 3 "https://www.diodes.com/assets/Datasheets/AP7361C.pdf" H 7600 9200 50  0001 C CNN
	1    7600 9250
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0128
U 1 1 61E88575
P 5800 9650
F 0 "#PWR0128" H 5800 9400 50  0001 C CNN
F 1 "GNDD" H 5804 9495 50  0000 C CNN
F 2 "" H 5800 9650 50  0001 C CNN
F 3 "" H 5800 9650 50  0001 C CNN
	1    5800 9650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0129
U 1 1 61E893A5
P 5300 9250
F 0 "#PWR0129" H 5300 9100 50  0001 C CNN
F 1 "+5V" H 5315 9423 50  0000 C CNN
F 2 "" H 5300 9250 50  0001 C CNN
F 3 "" H 5300 9250 50  0001 C CNN
	1    5300 9250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0130
U 1 1 61E8A151
P 6300 9250
F 0 "#PWR0130" H 6300 9100 50  0001 C CNN
F 1 "+3.3V" H 6315 9423 50  0000 C CNN
F 2 "" H 6300 9250 50  0001 C CNN
F 3 "" H 6300 9250 50  0001 C CNN
	1    6300 9250
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0131
U 1 1 61E8AF4F
P 7600 9650
F 0 "#PWR0131" H 7600 9400 50  0001 C CNN
F 1 "GNDA" H 7605 9477 50  0000 C CNN
F 2 "" H 7600 9650 50  0001 C CNN
F 3 "" H 7600 9650 50  0001 C CNN
	1    7600 9650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR0133
U 1 1 61E8CD76
P 8100 9250
F 0 "#PWR0133" H 8100 9100 50  0001 C CNN
F 1 "+3.3VA" H 8115 9423 50  0000 C CNN
F 2 "" H 8100 9250 50  0001 C CNN
F 3 "" H 8100 9250 50  0001 C CNN
	1    8100 9250
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP1
U 1 1 61EFC1D3
P -3250 1450
F 0 "TP1" V -3055 1522 50  0000 C CNN
F 1 "TestPoint" V -3146 1522 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch1.00mm" H -3050 1450 50  0001 C CNN
F 3 "~" H -3050 1450 50  0001 C CNN
	1    -3250 1450
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 61EFE4BE
P -3250 850
F 0 "TP2" V -3055 922 50  0000 C CNN
F 1 "TestPoint" V -3146 922 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch1.00mm" H -3050 850 50  0001 C CNN
F 3 "~" H -3050 850 50  0001 C CNN
	1    -3250 850 
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP5
U 1 1 61EFF39E
P -3250 2750
F 0 "TP5" V -3055 2822 50  0000 C CNN
F 1 "TestPoint" V -3146 2822 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch1.00mm" H -3050 2750 50  0001 C CNN
F 3 "~" H -3050 2750 50  0001 C CNN
	1    -3250 2750
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP6
U 1 1 61EFFE56
P -3250 2150
F 0 "TP6" V -3055 2222 50  0000 C CNN
F 1 "TestPoint" V -3146 2222 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch1.00mm" H -3050 2150 50  0001 C CNN
F 3 "~" H -3050 2150 50  0001 C CNN
	1    -3250 2150
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP10
U 1 1 61F00371
P -3250 3450
F 0 "TP10" V -3055 3522 50  0000 C CNN
F 1 "TestPoint" V -3146 3522 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch1.00mm" H -3050 3450 50  0001 C CNN
F 3 "~" H -3050 3450 50  0001 C CNN
	1    -3250 3450
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP9
U 1 1 61F00871
P -3250 4050
F 0 "TP9" V -3055 4122 50  0000 C CNN
F 1 "TestPoint" V -3146 4122 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch1.00mm" H -3050 4050 50  0001 C CNN
F 3 "~" H -3050 4050 50  0001 C CNN
	1    -3250 4050
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP14
U 1 1 61F00DE6
P -3250 4750
F 0 "TP14" V -3055 4822 50  0000 C CNN
F 1 "TestPoint" V -3146 4822 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch1.00mm" H -3050 4750 50  0001 C CNN
F 3 "~" H -3050 4750 50  0001 C CNN
	1    -3250 4750
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP13
U 1 1 61F011FB
P -3250 5350
F 0 "TP13" V -3055 5422 50  0000 C CNN
F 1 "TestPoint" V -3146 5422 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch1.00mm" H -3050 5350 50  0001 C CNN
F 3 "~" H -3050 5350 50  0001 C CNN
	1    -3250 5350
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP18
U 1 1 61F017B5
P -3250 6100
F 0 "TP18" V -3055 6172 50  0000 C CNN
F 1 "TestPoint" V -3146 6172 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch1.00mm" H -3050 6100 50  0001 C CNN
F 3 "~" H -3050 6100 50  0001 C CNN
	1    -3250 6100
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP17
U 1 1 61F01CC8
P -3250 6700
F 0 "TP17" V -3055 6772 50  0000 C CNN
F 1 "TestPoint" V -3146 6772 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch1.00mm" H -3050 6700 50  0001 C CNN
F 3 "~" H -3050 6700 50  0001 C CNN
	1    -3250 6700
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP22
U 1 1 61F02480
P -3250 7300
F 0 "TP22" V -3055 7372 50  0000 C CNN
F 1 "TestPoint" V -3146 7372 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch1.00mm" H -3050 7300 50  0001 C CNN
F 3 "~" H -3050 7300 50  0001 C CNN
	1    -3250 7300
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP21
U 1 1 61F028CD
P -3250 7900
F 0 "TP21" V -3055 7972 50  0000 C CNN
F 1 "TestPoint" V -3146 7972 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch1.00mm" H -3050 7900 50  0001 C CNN
F 3 "~" H -3050 7900 50  0001 C CNN
	1    -3250 7900
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP20
U 1 1 61F02D18
P -950 6700
F 0 "TP20" V -996 6888 50  0000 L CNN
F 1 "TestPoint" V -905 6888 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch1.00mm" H -750 6700 50  0001 C CNN
F 3 "~" H -750 6700 50  0001 C CNN
	1    -950 6700
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP19
U 1 1 61F03D61
P -950 6100
F 0 "TP19" V -996 6288 50  0000 L CNN
F 1 "TestPoint" V -905 6288 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch1.00mm" H -750 6100 50  0001 C CNN
F 3 "~" H -750 6100 50  0001 C CNN
	1    -950 6100
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP16
U 1 1 61F04262
P -950 5350
F 0 "TP16" V -996 5538 50  0000 L CNN
F 1 "TestPoint" V -905 5538 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch1.00mm" H -750 5350 50  0001 C CNN
F 3 "~" H -750 5350 50  0001 C CNN
	1    -950 5350
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP15
U 1 1 61F047E5
P -950 4750
F 0 "TP15" V -996 4938 50  0000 L CNN
F 1 "TestPoint" V -905 4938 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch1.00mm" H -750 4750 50  0001 C CNN
F 3 "~" H -750 4750 50  0001 C CNN
	1    -950 4750
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP12
U 1 1 61F04B89
P -950 4050
F 0 "TP12" V -996 4238 50  0000 L CNN
F 1 "TestPoint" V -905 4238 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch1.00mm" H -750 4050 50  0001 C CNN
F 3 "~" H -750 4050 50  0001 C CNN
	1    -950 4050
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP11
U 1 1 61F04EAD
P -950 3450
F 0 "TP11" V -996 3638 50  0000 L CNN
F 1 "TestPoint" V -905 3638 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch1.00mm" H -750 3450 50  0001 C CNN
F 3 "~" H -750 3450 50  0001 C CNN
	1    -950 3450
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP8
U 1 1 61F052A6
P -950 2750
F 0 "TP8" V -996 2938 50  0000 L CNN
F 1 "TestPoint" V -905 2938 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch1.00mm" H -750 2750 50  0001 C CNN
F 3 "~" H -750 2750 50  0001 C CNN
	1    -950 2750
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP7
U 1 1 61F055FC
P -950 2150
F 0 "TP7" V -996 2338 50  0000 L CNN
F 1 "TestPoint" V -905 2338 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch1.00mm" H -750 2150 50  0001 C CNN
F 3 "~" H -750 2150 50  0001 C CNN
	1    -950 2150
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP4
U 1 1 61F05B5B
P -950 1450
F 0 "TP4" V -996 1638 50  0000 L CNN
F 1 "TestPoint" V -905 1638 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch1.00mm" H -750 1450 50  0001 C CNN
F 3 "~" H -750 1450 50  0001 C CNN
	1    -950 1450
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP3
U 1 1 61F05FAF
P -950 850
F 0 "TP3" V -996 1038 50  0000 L CNN
F 1 "TestPoint" V -905 1038 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch1.00mm" H -750 850 50  0001 C CNN
F 3 "~" H -750 850 50  0001 C CNN
	1    -950 850 
	0    1    1    0   
$EndComp
Wire Wire Line
	7050 9250 7050 9200
$Comp
L power:+5V #PWR0132
U 1 1 62037CED
P 7050 9200
F 0 "#PWR0132" H 7050 9050 50  0001 C CNN
F 1 "+5V" H 7065 9373 50  0000 C CNN
F 2 "" H 7050 9200 50  0001 C CNN
F 3 "" H 7050 9200 50  0001 C CNN
	1    7050 9200
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:L7805 U13
U 1 1 623F8A69
P 9300 9250
F 0 "U13" H 9300 9492 50  0000 C CNN
F 1 "P78E05-1000" H 9300 9401 50  0000 C CNN
F 2 "TO_SOT_Packages_THT:TO-220-3_Vertical" H 9325 9100 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 9300 9200 50  0001 C CNN
	1    9300 9250
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0136
U 1 1 623FB0EC
P 8750 9150
F 0 "#PWR0136" H 8750 9000 50  0001 C CNN
F 1 "+12V" H 8765 9323 50  0000 C CNN
F 2 "" H 8750 9150 50  0001 C CNN
F 3 "" H 8750 9150 50  0001 C CNN
	1    8750 9150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 9150 8750 9250
Wire Wire Line
	8750 9250 8900 9250
$Comp
L power:+5V #PWR0137
U 1 1 62438167
P 9800 9100
F 0 "#PWR0137" H 9800 8950 50  0001 C CNN
F 1 "+5V" H 9815 9273 50  0000 C CNN
F 2 "" H 9800 9100 50  0001 C CNN
F 3 "" H 9800 9100 50  0001 C CNN
	1    9800 9100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 9250 9700 9250
Wire Wire Line
	9800 9250 9800 9100
$Comp
L power:GNDD #PWR0138
U 1 1 62475017
P 9300 9700
F 0 "#PWR0138" H 9300 9450 50  0001 C CNN
F 1 "GNDD" H 9304 9545 50  0000 C CNN
F 2 "" H 9300 9700 50  0001 C CNN
F 3 "" H 9300 9700 50  0001 C CNN
	1    9300 9700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 9550 9300 9650
NoConn ~ 7250 4650
NoConn ~ 7750 4650
$Comp
L Device:C_Small C22
U 1 1 626A5BF2
P 5400 9450
F 0 "C22" H 5492 9496 50  0000 L CNN
F 1 "4.7uF" H 5492 9405 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5400 9450 50  0001 C CNN
F 3 "~" H 5400 9450 50  0001 C CNN
	1    5400 9450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C23
U 1 1 626A76C3
P 6200 9450
F 0 "C23" H 6292 9496 50  0000 L CNN
F 1 "4.7uF" H 6292 9405 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6200 9450 50  0001 C CNN
F 3 "~" H 6200 9450 50  0001 C CNN
	1    6200 9450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C24
U 1 1 626A7CE3
P 7150 9450
F 0 "C24" H 7242 9496 50  0000 L CNN
F 1 "4.7uF" H 7242 9405 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7150 9450 50  0001 C CNN
F 3 "~" H 7150 9450 50  0001 C CNN
	1    7150 9450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C25
U 1 1 626A8420
P 8000 9450
F 0 "C25" H 8092 9496 50  0000 L CNN
F 1 "4.7uF" H 8092 9405 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8000 9450 50  0001 C CNN
F 3 "~" H 8000 9450 50  0001 C CNN
	1    8000 9450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 9250 8000 9250
Wire Wire Line
	8000 9350 8000 9250
Connection ~ 8000 9250
Wire Wire Line
	8000 9250 8100 9250
Wire Wire Line
	7150 9250 7150 9350
Connection ~ 7150 9250
Wire Wire Line
	7150 9250 7050 9250
Wire Wire Line
	7150 9550 7150 9600
Wire Wire Line
	8000 9600 8000 9550
Wire Wire Line
	7600 9650 7600 9600
Connection ~ 7600 9600
Wire Wire Line
	7600 9600 8000 9600
Wire Wire Line
	7600 9600 7600 9550
Wire Wire Line
	5300 9250 5400 9250
Wire Wire Line
	5400 9350 5400 9250
Connection ~ 5400 9250
Wire Wire Line
	5400 9250 5500 9250
Wire Wire Line
	6100 9250 6200 9250
Wire Wire Line
	6200 9350 6200 9250
Connection ~ 6200 9250
Wire Wire Line
	6200 9250 6300 9250
Wire Wire Line
	5400 9550 5400 9600
Wire Wire Line
	5400 9600 5800 9600
Wire Wire Line
	6200 9600 6200 9550
Wire Wire Line
	5800 9650 5800 9600
Connection ~ 5800 9600
Wire Wire Line
	5800 9600 6200 9600
Wire Wire Line
	5800 9600 5800 9550
Wire Wire Line
	7150 9250 7300 9250
Wire Wire Line
	7150 9600 7600 9600
$Comp
L Device:CP1_Small C26
U 1 1 62AC126C
P 8900 9500
F 0 "C26" H 8991 9546 50  0000 L CNN
F 1 "10uF EEA-GA1V100" H 8991 9455 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.00mm" H 8900 9500 50  0001 C CNN
F 3 "~" H 8900 9500 50  0001 C CNN
	1    8900 9500
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C27
U 1 1 62AC2BA4
P 9700 9500
F 0 "C27" H 9791 9546 50  0000 L CNN
F 1 "22uF ECE-A1HKA220" H 9791 9455 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D6.3mm_P2.50mm" H 9700 9500 50  0001 C CNN
F 3 "~" H 9700 9500 50  0001 C CNN
	1    9700 9500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 9400 8900 9250
Connection ~ 8900 9250
Wire Wire Line
	8900 9250 9000 9250
Wire Wire Line
	8900 9600 8900 9650
Wire Wire Line
	8900 9650 9300 9650
Connection ~ 9300 9650
Wire Wire Line
	9300 9650 9300 9700
Wire Wire Line
	9700 9600 9700 9650
Wire Wire Line
	9700 9650 9300 9650
Wire Wire Line
	9700 9400 9700 9250
Connection ~ 9700 9250
Wire Wire Line
	9700 9250 9800 9250
$Comp
L Connector:USB_A J5
U 1 1 62BFF5D3
P 8900 5150
F 0 "J5" H 8957 5617 50  0000 C CNN
F 1 "UE27AC5410H" H 8957 5526 50  0000 C CNN
F 2 "usbconnectors:USB_A_Molex_67643_Horizontal" H 9050 5100 50  0001 C CNN
F 3 " ~" H 9050 5100 50  0001 C CNN
	1    8900 5150
	1    0    0    -1  
$EndComp
NoConn ~ 9200 4950
Wire Wire Line
	1350 1000 1500 1000
Wire Wire Line
	8800 5550 8800 5600
Wire Wire Line
	8800 5600 8900 5600
Connection ~ 8900 5600
Wire Wire Line
	1500 900  1500 1000
Connection ~ 1500 1000
Wire Wire Line
	1500 1000 1800 1000
$Comp
L power:GNDD #PWR0106
U 1 1 62DF6DA3
P 8800 10250
F 0 "#PWR0106" H 8800 10000 50  0001 C CNN
F 1 "GNDD" H 8804 10095 50  0000 C CNN
F 2 "" H 8800 10250 50  0001 C CNN
F 3 "" H 8800 10250 50  0001 C CNN
	1    8800 10250
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0139
U 1 1 62DF89B0
P 9300 10250
F 0 "#PWR0139" H 9300 10000 50  0001 C CNN
F 1 "GNDA" H 9305 10077 50  0000 C CNN
F 2 "" H 9300 10250 50  0001 C CNN
F 3 "" H 9300 10250 50  0001 C CNN
	1    9300 10250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 10250 8800 10150
Wire Wire Line
	8800 10150 8900 10150
Wire Wire Line
	9200 10150 9300 10150
Wire Wire Line
	9300 10150 9300 10250
$Comp
L Jumper:SolderJumper_2_Bridged JP0
U 1 1 62F6ADC2
P 9050 10150
F 0 "JP0" H 9050 10355 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 9050 10264 50  0000 C CNN
F 2 "jumpers:SolderJumper-2_P1.3mm_Bridged_RoundedPad1.0x1.5mm" H 9050 10150 50  0001 C CNN
F 3 "~" H 9050 10150 50  0001 C CNN
	1    9050 10150
	1    0    0    -1  
$EndComp
$Sheet
S 8350 3350 950  400 
U 62FDE2B6
F0 "RS485" 50
F1 "RS485.sch" 50
F2 "UART_RX" I L 8350 3450 50 
F3 "UART_TX" I L 8350 3650 50 
$EndSheet
Wire Wire Line
	8350 3450 7800 3450
Wire Wire Line
	8350 3650 7800 3650
Text Label 7800 3450 0    50   ~ 0
USART6_RX
Text Label 7800 3650 0    50   ~ 0
USART6_TX
$Comp
L Device:LED D1
U 1 1 633E3B17
P 7900 1950
F 0 "D1" V 7939 1832 50  0000 R CNN
F 1 "LED" V 7848 1832 50  0000 R CNN
F 2 "LEDs:LED_0805_HandSoldering" H 7900 1950 50  0001 C CNN
F 3 "~" H 7900 1950 50  0001 C CNN
	1    7900 1950
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 633E4D5C
P 8250 1950
F 0 "D2" V 8289 1832 50  0000 R CNN
F 1 "LED" V 8198 1832 50  0000 R CNN
F 2 "LEDs:LED_0805_HandSoldering" H 8250 1950 50  0001 C CNN
F 3 "~" H 8250 1950 50  0001 C CNN
	1    8250 1950
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D3
U 1 1 633E5392
P 8600 1950
F 0 "D3" V 8639 1832 50  0000 R CNN
F 1 "LED" V 8548 1832 50  0000 R CNN
F 2 "LEDs:LED_0805_HandSoldering" H 8600 1950 50  0001 C CNN
F 3 "~" H 8600 1950 50  0001 C CNN
	1    8600 1950
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D4
U 1 1 633E58F4
P 8950 1950
F 0 "D4" V 8989 1832 50  0000 R CNN
F 1 "LED" V 8898 1832 50  0000 R CNN
F 2 "LEDs:LED_0805_HandSoldering" H 8950 1950 50  0001 C CNN
F 3 "~" H 8950 1950 50  0001 C CNN
	1    8950 1950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R25
U 1 1 633E6DD8
P 7900 2350
F 0 "R25" H 7968 2396 50  0000 L CNN
F 1 "CL" H 7968 2305 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 7900 2350 50  0001 C CNN
F 3 "~" H 7900 2350 50  0001 C CNN
	1    7900 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R26
U 1 1 633E780D
P 8250 2350
F 0 "R26" H 8318 2396 50  0000 L CNN
F 1 "CL" H 8318 2305 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 8250 2350 50  0001 C CNN
F 3 "~" H 8250 2350 50  0001 C CNN
	1    8250 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R27
U 1 1 633E893B
P 8600 2350
F 0 "R27" H 8668 2396 50  0000 L CNN
F 1 "CL" H 8668 2305 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 8600 2350 50  0001 C CNN
F 3 "~" H 8600 2350 50  0001 C CNN
	1    8600 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R28
U 1 1 633E8E0C
P 8950 2350
F 0 "R28" H 9018 2396 50  0000 L CNN
F 1 "CL" H 9018 2305 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 8950 2350 50  0001 C CNN
F 3 "~" H 8950 2350 50  0001 C CNN
	1    8950 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0117
U 1 1 633E949E
P 7900 2550
F 0 "#PWR0117" H 7900 2300 50  0001 C CNN
F 1 "GNDD" H 7904 2395 50  0000 C CNN
F 2 "" H 7900 2550 50  0001 C CNN
F 3 "" H 7900 2550 50  0001 C CNN
	1    7900 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 2450 7900 2500
Wire Wire Line
	7900 2500 8250 2500
Wire Wire Line
	8950 2500 8950 2450
Wire Wire Line
	7900 2550 7900 2500
Connection ~ 7900 2500
Wire Wire Line
	8250 2450 8250 2500
Connection ~ 8250 2500
Wire Wire Line
	8250 2500 8600 2500
Wire Wire Line
	8600 2450 8600 2500
Connection ~ 8600 2500
Wire Wire Line
	8600 2500 8950 2500
Wire Wire Line
	7900 2250 7900 2100
Wire Wire Line
	8250 2250 8250 2100
Wire Wire Line
	8600 2250 8600 2100
Wire Wire Line
	8950 2250 8950 2100
Wire Wire Line
	7900 1800 7900 1750
Wire Wire Line
	7900 1750 7450 1750
Wire Wire Line
	8250 1800 8250 1650
Wire Wire Line
	8250 1650 7450 1650
Wire Wire Line
	8600 1800 8600 1550
Wire Wire Line
	8600 1550 7450 1550
Wire Wire Line
	8950 1450 8950 1800
Text Label 7450 1750 0    50   ~ 0
LED1
Text Label 7450 1650 0    50   ~ 0
LED2
Text Label 7450 1550 0    50   ~ 0
LED3
Text Label 7450 1450 0    50   ~ 0
LED4
Wire Wire Line
	7450 1450 8950 1450
Wire Wire Line
	3100 6050 2500 6050
Text Label 2500 6050 0    50   ~ 0
LED1
Wire Wire Line
	5600 5250 6300 5250
Text Label 6300 5250 2    50   ~ 0
LED4
Wire Wire Line
	5600 5450 6300 5450
Wire Wire Line
	3100 5950 2500 5950
Text Label 2500 5950 0    50   ~ 0
LED2
Text Label 6300 5450 2    50   ~ 0
LED3
$Comp
L Device:R_Small_US R29
U 1 1 639EF198
P 2650 1150
F 0 "R29" V 2445 1150 50  0000 C CNN
F 1 "10k" V 2536 1150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 2650 1150 50  0001 C CNN
F 3 "~" H 2650 1150 50  0001 C CNN
	1    2650 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	2750 1150 3100 1150
Wire Wire Line
	2550 1150 2400 1150
Wire Wire Line
	2400 1150 2400 1200
Wire Wire Line
	5600 1650 6300 1650
Wire Wire Line
	5600 5150 6300 5150
Wire Wire Line
	5600 1750 6300 1750
Wire Wire Line
	5600 1850 6300 1850
Wire Wire Line
	3100 3250 2500 3250
Wire Wire Line
	3100 3350 2500 3350
$Comp
L Device:Crystal_Small Y1
U 1 1 63C04E72
P 2650 2300
F 0 "Y1" V 2604 2388 50  0000 L CNN
F 1 "NX3225GD-8.000M-EXS00A-CG04874" V 2695 2388 50  0000 L CNN
F 2 "Crystals:Crystal_SMD_3215-2pin_3.2x1.5mm" H 2650 2300 50  0001 C CNN
F 3 "~" H 2650 2300 50  0001 C CNN
	1    2650 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	3100 2250 3000 2250
Wire Wire Line
	3000 2250 3000 2200
Wire Wire Line
	3000 2200 2650 2200
Wire Wire Line
	3100 2350 3000 2350
Wire Wire Line
	3000 2350 3000 2400
Wire Wire Line
	3000 2400 2650 2400
$Comp
L Device:C_Small C29
U 1 1 63C8DA2B
P 2400 2200
F 0 "C29" V 2629 2200 50  0000 C CNN
F 1 "4.3pF" V 2538 2200 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2400 2200 50  0001 C CNN
F 3 "~" H 2400 2200 50  0001 C CNN
	1    2400 2200
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C30
U 1 1 63C8F175
P 2400 2400
F 0 "C30" V 2629 2400 50  0000 C CNN
F 1 "4.3pF" V 2538 2400 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2400 2400 50  0001 C CNN
F 3 "~" H 2400 2400 50  0001 C CNN
	1    2400 2400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2650 2400 2500 2400
Connection ~ 2650 2400
Wire Wire Line
	2650 2200 2500 2200
Connection ~ 2650 2200
Wire Wire Line
	2300 2200 2200 2200
Wire Wire Line
	2200 2200 2200 2400
Wire Wire Line
	2300 2400 2200 2400
Connection ~ 2200 2400
Wire Wire Line
	2200 2400 2200 2550
$Comp
L power:GNDD #PWR0119
U 1 1 63DA4764
P 2200 2550
F 0 "#PWR0119" H 2200 2300 50  0001 C CNN
F 1 "GNDD" H 2204 2395 50  0000 C CNN
F 2 "" H 2200 2550 50  0001 C CNN
F 3 "" H 2200 2550 50  0001 C CNN
	1    2200 2550
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Small TP23
U 1 1 63DD335E
P 2500 3250
F 0 "TP23" H 2548 3296 50  0000 L CNN
F 1 "TestPoint_Small" H 2548 3205 50  0000 L CNN
F 2 "Testpoint:TestPoint_Pad_D1.5mm" H 2700 3250 50  0001 C CNN
F 3 "~" H 2700 3250 50  0001 C CNN
	1    2500 3250
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Small TP24
U 1 1 63DD46A5
P 2500 3350
F 0 "TP24" H 2548 3396 50  0000 L CNN
F 1 "TestPoint_Small" H 2548 3305 50  0000 L CNN
F 2 "Testpoint:TestPoint_Pad_D1.5mm" H 2700 3350 50  0001 C CNN
F 3 "~" H 2700 3350 50  0001 C CNN
	1    2500 3350
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Small TP28
U 1 1 63DD487F
P 6300 5150
F 0 "TP28" H 6348 5196 50  0000 L CNN
F 1 "TestPoint_Small" H 6348 5105 50  0000 L CNN
F 2 "Testpoint:TestPoint_Pad_D1.5mm" H 6500 5150 50  0001 C CNN
F 3 "~" H 6500 5150 50  0001 C CNN
	1    6300 5150
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Small TP25
U 1 1 63DD5CA6
P 6300 1650
F 0 "TP25" H 6348 1696 50  0000 L CNN
F 1 "TestPoint_Small" H 6348 1605 50  0000 L CNN
F 2 "Testpoint:TestPoint_Pad_D1.5mm" H 6500 1650 50  0001 C CNN
F 3 "~" H 6500 1650 50  0001 C CNN
	1    6300 1650
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Small TP26
U 1 1 63DD7687
P 6300 1750
F 0 "TP26" H 6348 1796 50  0000 L CNN
F 1 "TestPoint_Small" H 6348 1705 50  0000 L CNN
F 2 "Testpoint:TestPoint_Pad_D1.5mm" H 6500 1750 50  0001 C CNN
F 3 "~" H 6500 1750 50  0001 C CNN
	1    6300 1750
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Small TP27
U 1 1 63DD793A
P 6300 1850
F 0 "TP27" H 6348 1896 50  0000 L CNN
F 1 "TestPoint_Small" H 6348 1805 50  0000 L CNN
F 2 "Testpoint:TestPoint_Pad_D1.5mm" H 6500 1850 50  0001 C CNN
F 3 "~" H 6500 1850 50  0001 C CNN
	1    6300 1850
	1    0    0    -1  
$EndComp
Text Notes 4650 8800 2    50   ~ 0
Vref will be 3.0V, leaving some headroom\nbetween it at VDDA at 3.3V.
$Comp
L Device:C C31
U 1 1 63E43F27
P 12000 950
F 0 "C31" H 12115 996 50  0000 L CNN
F 1 "DC32" H 12115 905 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 12038 800 50  0001 C CNN
F 3 "~" H 12000 950 50  0001 C CNN
	1    12000 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0140
U 1 1 63E444EF
P 12000 1100
F 0 "#PWR0140" H 12000 850 50  0001 C CNN
F 1 "GNDA" H 12005 927 50  0000 C CNN
F 2 "" H 12000 1100 50  0001 C CNN
F 3 "" H 12000 1100 50  0001 C CNN
	1    12000 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	12000 800  12000 700 
Wire Wire Line
	12000 700  12350 700 
Text Label 12350 700  2    50   ~ 0
VREF+
Text Notes 6150 6300 0    79   ~ 0
Reference STMicroelectronics Application Note AN4938\nfor details on basic STMH74x circuits
Text Notes 5800 8850 0    50   ~ 0
Separate linear regulators for Digital and Analog
Text Notes 10150 8850 2    50   ~ 0
Monolithic switching regulator 12V->5V\nSo the linears don't have to drop 8.7V
Text Notes 9450 10300 0    50   ~ 0
Represents single connection between GNDD and GNDA\nnear the 5V regulator. Could be cut and choke inserted.
Text Notes -2950 400  0    50   ~ 0
Op amps taking the "raw" voltage off the sense\nresistors, and buffering it for the ADCs. Also protects\nthe ADC inputs. Op amp output voltage is limited to\nVDDA, and they're cheap/easy to replace if damaged.
Text Notes 1400 2550 0    50   ~ 0
Don't intend to need this crystal circuit
Text Notes 6850 4350 0    50   ~ 0
We don't take 3.3V from the programming header,\nbecause that won't feed VDDA, which violates data\nsheet. We must be fed via 12V.
$EndSCHEMATC
