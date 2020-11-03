EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 2
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
P 7500 8150
F 0 "#PWR0101" H 7500 7900 50  0001 C CNN
F 1 "GNDD" H 7504 7995 50  0000 C CNN
F 2 "" H 7500 8150 50  0001 C CNN
F 3 "" H 7500 8150 50  0001 C CNN
	1    7500 8150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 7900 7500 8050
Wire Wire Line
	7500 8050 7600 8050
Wire Wire Line
	8300 8050 8300 7900
Connection ~ 7500 8050
Wire Wire Line
	7500 8050 7500 8150
Wire Wire Line
	8200 7900 8200 8050
Connection ~ 8200 8050
Wire Wire Line
	8200 8050 8300 8050
Wire Wire Line
	8100 7900 8100 8050
Connection ~ 8100 8050
Wire Wire Line
	8100 8050 8200 8050
Wire Wire Line
	8000 7900 8000 8050
Connection ~ 8000 8050
Wire Wire Line
	8000 8050 8100 8050
Wire Wire Line
	7900 7900 7900 8050
Connection ~ 7900 8050
Wire Wire Line
	7900 8050 8000 8050
Wire Wire Line
	7800 7900 7800 8050
Connection ~ 7800 8050
Wire Wire Line
	7800 8050 7900 8050
Wire Wire Line
	7700 7900 7700 8050
Connection ~ 7700 8050
Wire Wire Line
	7700 8050 7800 8050
Wire Wire Line
	7600 7900 7600 8050
Connection ~ 7600 8050
Wire Wire Line
	7600 8050 7700 8050
$Comp
L power:GNDA #PWR0102
U 1 1 5F98BC31
P 8400 8150
F 0 "#PWR0102" H 8400 7900 50  0001 C CNN
F 1 "GNDA" H 8405 7977 50  0000 C CNN
F 2 "" H 8400 8150 50  0001 C CNN
F 3 "" H 8400 8150 50  0001 C CNN
	1    8400 8150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 8150 8400 7900
$Comp
L power:+3.3VA #PWR0103
U 1 1 5F98CB14
P 8600 450
F 0 "#PWR0103" H 8600 300 50  0001 C CNN
F 1 "+3.3VA" H 8615 623 50  0000 C CNN
F 2 "" H 8600 450 50  0001 C CNN
F 3 "" H 8600 450 50  0001 C CNN
	1    8600 450 
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0104
U 1 1 5F98D7BF
P 7300 450
F 0 "#PWR0104" H 7300 300 50  0001 C CNN
F 1 "+3.3V" H 7315 623 50  0000 C CNN
F 2 "" H 7300 450 50  0001 C CNN
F 3 "" H 7300 450 50  0001 C CNN
	1    7300 450 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 700  7300 550 
Wire Wire Line
	7300 550  7400 550 
Wire Wire Line
	8500 550  8500 700 
Connection ~ 7300 550 
Wire Wire Line
	7300 550  7300 450 
Wire Wire Line
	8400 700  8400 550 
Connection ~ 8400 550 
Wire Wire Line
	8400 550  8500 550 
Wire Wire Line
	8300 700  8300 550 
Connection ~ 8300 550 
Wire Wire Line
	8300 550  8400 550 
Wire Wire Line
	8200 700  8200 550 
Connection ~ 8200 550 
Wire Wire Line
	8200 550  8300 550 
Wire Wire Line
	8100 700  8100 550 
Connection ~ 8100 550 
Wire Wire Line
	8100 550  8200 550 
Wire Wire Line
	8000 550  8000 700 
Connection ~ 8000 550 
Wire Wire Line
	8000 550  8100 550 
Wire Wire Line
	7900 550  7900 700 
Connection ~ 7900 550 
Wire Wire Line
	7900 550  8000 550 
Wire Wire Line
	7800 550  7800 700 
Connection ~ 7800 550 
Wire Wire Line
	7800 550  7900 550 
Wire Wire Line
	7700 550  7700 700 
Connection ~ 7700 550 
Wire Wire Line
	7700 550  7800 550 
Wire Wire Line
	7600 550  7600 700 
Connection ~ 7600 550 
Wire Wire Line
	7600 550  7700 550 
Wire Wire Line
	7500 550  7500 700 
Connection ~ 7500 550 
Wire Wire Line
	7500 550  7600 550 
Wire Wire Line
	7400 550  7400 700 
Connection ~ 7400 550 
Wire Wire Line
	7400 550  7500 550 
$Comp
L Connector_Generic:Conn_02x10_Odd_Even J1
U 1 1 5F998BDC
P 11050 5200
F 0 "J1" H 11100 5817 50  0000 C CNN
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
	6700 1000 6200 1000
Text Label 6200 1000 0    50   ~ 0
NRST
Wire Wire Line
	9200 3100 9900 3100
Wire Wire Line
	9200 3000 9900 3000
Wire Wire Line
	9200 2500 9900 2500
Wire Wire Line
	9200 2400 9900 2400
Wire Wire Line
	9200 2300 9900 2300
Text Label 9900 2300 2    50   ~ 0
JTMS
Text Label 9900 2400 2    50   ~ 0
JTCK
Text Label 9900 2500 2    50   ~ 0
JTDI
Text Label 9900 3100 2    50   ~ 0
JNTRST
Text Label 9900 3000 2    50   ~ 0
JTDO
$Comp
L power:GNDD #PWR0107
U 1 1 5F9B2A89
P 6000 1350
F 0 "#PWR0107" H 6000 1100 50  0001 C CNN
F 1 "GNDD" H 6004 1195 50  0000 C CNN
F 2 "" H 6000 1350 50  0001 C CNN
F 3 "" H 6000 1350 50  0001 C CNN
	1    6000 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 1100 6500 1100
Wire Wire Line
	6500 1100 6500 550 
Wire Wire Line
	6500 550  7300 550 
$Comp
L Device:C C3
U 1 1 5F9B505D
P 10450 1100
F 0 "C3" H 10565 1146 50  0000 L CNN
F 1 "DC6" H 10565 1055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10488 950 50  0001 C CNN
F 3 "~" H 10450 1100 50  0001 C CNN
	1    10450 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5F9B857A
P 10800 1100
F 0 "C4" H 10915 1146 50  0000 L CNN
F 1 "DC17" H 10915 1055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10838 950 50  0001 C CNN
F 3 "~" H 10800 1100 50  0001 C CNN
	1    10800 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5F9B8F64
P 11150 1100
F 0 "C5" H 11265 1146 50  0000 L CNN
F 1 "DC30" H 11265 1055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 11188 950 50  0001 C CNN
F 3 "~" H 11150 1100 50  0001 C CNN
	1    11150 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5F9B99EA
P 11500 1100
F 0 "C6" H 11615 1146 50  0000 L CNN
F 1 "DC39" H 11615 1055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 11538 950 50  0001 C CNN
F 3 "~" H 11500 1100 50  0001 C CNN
	1    11500 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5F9BA58E
P 11850 1100
F 0 "C7" H 11965 1146 50  0000 L CNN
F 1 "DC52" H 11965 1055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 11888 950 50  0001 C CNN
F 3 "~" H 11850 1100 50  0001 C CNN
	1    11850 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5F9BADF1
P 12200 1100
F 0 "C8" H 12315 1146 50  0000 L CNN
F 1 "DC62" H 12315 1055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 12238 950 50  0001 C CNN
F 3 "~" H 12200 1100 50  0001 C CNN
	1    12200 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5F9BADFB
P 12550 1100
F 0 "C9" H 12665 1146 50  0000 L CNN
F 1 "DC72" H 12665 1055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 12588 950 50  0001 C CNN
F 3 "~" H 12550 1100 50  0001 C CNN
	1    12550 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 5F9BAE05
P 12900 1100
F 0 "C10" H 13015 1146 50  0000 L CNN
F 1 "DC84" H 13015 1055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 12938 950 50  0001 C CNN
F 3 "~" H 12900 1100 50  0001 C CNN
	1    12900 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 5F9BAE0F
P 13250 1100
F 0 "C11" H 13365 1146 50  0000 L CNN
F 1 "DC108" H 13365 1055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 13288 950 50  0001 C CNN
F 3 "~" H 13250 1100 50  0001 C CNN
	1    13250 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 5F9BAE19
P 13600 1100
F 0 "C12" H 13715 1146 50  0000 L CNN
F 1 "DC121" H 13715 1055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 13638 950 50  0001 C CNN
F 3 "~" H 13600 1100 50  0001 C CNN
	1    13600 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 5F9C88F4
P 13950 1100
F 0 "C13" H 14065 1146 50  0000 L CNN
F 1 "DC131" H 14065 1055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 13988 950 50  0001 C CNN
F 3 "~" H 13950 1100 50  0001 C CNN
	1    13950 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 5F9C88FA
P 14300 1100
F 0 "C14" H 14415 1146 50  0000 L CNN
F 1 "DC144" H 14415 1055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 14338 950 50  0001 C CNN
F 3 "~" H 14300 1100 50  0001 C CNN
	1    14300 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C15
U 1 1 5F9C8900
P 14650 1100
F 0 "C15" H 14765 1146 50  0000 L CNN
F 1 "DC95" H 14765 1055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 14688 950 50  0001 C CNN
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
L Device:C C2
U 1 1 5F9D1264
P 5700 1800
F 0 "C2" H 5815 1846 50  0000 L CNN
F 1 "2.2uF" H 5815 1755 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5738 1650 50  0001 C CNN
F 3 "~" H 5700 1800 50  0001 C CNN
	1    5700 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 1600 5700 1600
Wire Wire Line
	5700 1600 5700 1650
$Comp
L Device:C C1
U 1 1 5F9D618A
P 5300 1800
F 0 "C1" H 5415 1846 50  0000 L CNN
F 1 "2.2uF" H 5415 1755 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5338 1650 50  0001 C CNN
F 3 "~" H 5300 1800 50  0001 C CNN
	1    5300 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 1500 5300 1650
$Comp
L power:GNDD #PWR0110
U 1 1 5F9DA9AA
P 5500 2000
F 0 "#PWR0110" H 5500 1750 50  0001 C CNN
F 1 "GNDD" H 5504 1845 50  0000 C CNN
F 2 "" H 5500 2000 50  0001 C CNN
F 3 "" H 5500 2000 50  0001 C CNN
	1    5500 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 1950 5700 2000
Wire Wire Line
	5700 2000 5500 2000
Wire Wire Line
	5500 2000 5300 2000
Wire Wire Line
	5300 2000 5300 1950
Connection ~ 5500 2000
Wire Wire Line
	8600 700  8600 450 
$Comp
L Device:C C16
U 1 1 5FA0D3BE
P 10050 1100
F 0 "C16" H 10165 1146 50  0000 L CNN
F 1 "4.7uF" H 10165 1055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10088 950 50  0001 C CNN
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
$Comp
L Device:R_Small_US R1
U 1 1 5FA1DF18
P 5350 9600
F 0 "R1" V 5145 9600 50  0000 C CNN
F 1 "2200" V 5236 9600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5350 9600 50  0001 C CNN
F 3 "~" H 5350 9600 50  0001 C CNN
	1    5350 9600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R2
U 1 1 5FA263FF
P 5350 9500
F 0 "R2" V 5145 9500 50  0000 C CNN
F 1 "2200" V 5236 9500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5350 9500 50  0001 C CNN
F 3 "~" H 5350 9500 50  0001 C CNN
	1    5350 9500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R3
U 1 1 5FA2E28D
P 5350 9400
F 0 "R3" V 5145 9400 50  0000 C CNN
F 1 "2200" V 5236 9400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5350 9400 50  0001 C CNN
F 3 "~" H 5350 9400 50  0001 C CNN
	1    5350 9400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R4
U 1 1 5FA36A73
P 5350 9300
F 0 "R4" V 5145 9300 50  0000 C CNN
F 1 "2200" V 5236 9300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5350 9300 50  0001 C CNN
F 3 "~" H 5350 9300 50  0001 C CNN
	1    5350 9300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R5
U 1 1 5FA3D517
P 5350 9200
F 0 "R5" V 5145 9200 50  0000 C CNN
F 1 "2200" V 5236 9200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5350 9200 50  0001 C CNN
F 3 "~" H 5350 9200 50  0001 C CNN
	1    5350 9200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R6
U 1 1 5FA44002
P 5350 9100
F 0 "R6" V 5145 9100 50  0000 C CNN
F 1 "2200" V 5236 9100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5350 9100 50  0001 C CNN
F 3 "~" H 5350 9100 50  0001 C CNN
	1    5350 9100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R7
U 1 1 5FA4ACC5
P 5350 9000
F 0 "R7" V 5145 9000 50  0000 C CNN
F 1 "2200" V 5236 9000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5350 9000 50  0001 C CNN
F 3 "~" H 5350 9000 50  0001 C CNN
	1    5350 9000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R8
U 1 1 5FA51AD3
P 5350 8900
F 0 "R8" V 5145 8900 50  0000 C CNN
F 1 "2200" V 5236 8900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5350 8900 50  0001 C CNN
F 3 "~" H 5350 8900 50  0001 C CNN
	1    5350 8900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R9
U 1 1 5FA58B55
P 5350 8800
F 0 "R9" V 5145 8800 50  0000 C CNN
F 1 "2200" V 5236 8800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5350 8800 50  0001 C CNN
F 3 "~" H 5350 8800 50  0001 C CNN
	1    5350 8800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R10
U 1 1 5FA5FD22
P 5350 8700
F 0 "R10" V 5145 8700 50  0000 C CNN
F 1 "2200" V 5236 8700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5350 8700 50  0001 C CNN
F 3 "~" H 5350 8700 50  0001 C CNN
	1    5350 8700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R11
U 1 1 5FA671CF
P 5350 8600
F 0 "R11" V 5145 8600 50  0000 C CNN
F 1 "2200" V 5236 8600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5350 8600 50  0001 C CNN
F 3 "~" H 5350 8600 50  0001 C CNN
	1    5350 8600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R12
U 1 1 5FA6E7DF
P 5350 8500
F 0 "R12" V 5145 8500 50  0000 C CNN
F 1 "2200" V 5236 8500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5350 8500 50  0001 C CNN
F 3 "~" H 5350 8500 50  0001 C CNN
	1    5350 8500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R13
U 1 1 5FA76213
P 5350 8400
F 0 "R13" V 5145 8400 50  0000 C CNN
F 1 "2200" V 5236 8400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5350 8400 50  0001 C CNN
F 3 "~" H 5350 8400 50  0001 C CNN
	1    5350 8400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R14
U 1 1 5FA7DA9E
P 5350 8300
F 0 "R14" V 5145 8300 50  0000 C CNN
F 1 "2200" V 5236 8300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5350 8300 50  0001 C CNN
F 3 "~" H 5350 8300 50  0001 C CNN
	1    5350 8300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R15
U 1 1 5FA8560B
P 5350 8200
F 0 "R15" V 5145 8200 50  0000 C CNN
F 1 "2200" V 5236 8200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5350 8200 50  0001 C CNN
F 3 "~" H 5350 8200 50  0001 C CNN
	1    5350 8200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R16
U 1 1 5FA8D447
P 5350 8100
F 0 "R16" V 5145 8100 50  0000 C CNN
F 1 "2200" V 5236 8100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5350 8100 50  0001 C CNN
F 3 "~" H 5350 8100 50  0001 C CNN
	1    5350 8100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R17
U 1 1 5FA952E7
P 5350 8000
F 0 "R17" V 5145 8000 50  0000 C CNN
F 1 "2200" V 5236 8000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5350 8000 50  0001 C CNN
F 3 "~" H 5350 8000 50  0001 C CNN
	1    5350 8000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R18
U 1 1 5FA9D5E4
P 5350 7900
F 0 "R18" V 5145 7900 50  0000 C CNN
F 1 "2200" V 5236 7900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5350 7900 50  0001 C CNN
F 3 "~" H 5350 7900 50  0001 C CNN
	1    5350 7900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R19
U 1 1 5FAA5818
P 5350 7800
F 0 "R19" V 5145 7800 50  0000 C CNN
F 1 "2200" V 5236 7800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5350 7800 50  0001 C CNN
F 3 "~" H 5350 7800 50  0001 C CNN
	1    5350 7800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R20
U 1 1 5FAADEFB
P 5350 7700
F 0 "R20" V 5145 7700 50  0000 C CNN
F 1 "2200" V 5236 7700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5350 7700 50  0001 C CNN
F 3 "~" H 5350 7700 50  0001 C CNN
	1    5350 7700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R21
U 1 1 5FAB66BA
P 5350 7600
F 0 "R21" V 5145 7600 50  0000 C CNN
F 1 "2200" V 5236 7600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5350 7600 50  0001 C CNN
F 3 "~" H 5350 7600 50  0001 C CNN
	1    5350 7600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R22
U 1 1 5FABF036
P 5350 7500
F 0 "R22" V 5145 7500 50  0000 C CNN
F 1 "2200" V 5236 7500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5350 7500 50  0001 C CNN
F 3 "~" H 5350 7500 50  0001 C CNN
	1    5350 7500
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDA #PWR0111
U 1 1 5FB55C96
P 5700 9750
F 0 "#PWR0111" H 5700 9500 50  0001 C CNN
F 1 "GNDA" H 5705 9577 50  0000 C CNN
F 2 "" H 5700 9750 50  0001 C CNN
F 3 "" H 5700 9750 50  0001 C CNN
	1    5700 9750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 9750 5700 9600
Wire Wire Line
	5450 7500 5700 7500
Wire Wire Line
	5450 7600 5700 7600
Connection ~ 5700 7600
Wire Wire Line
	5700 7600 5700 7500
Wire Wire Line
	5450 7700 5700 7700
Connection ~ 5700 7700
Wire Wire Line
	5700 7700 5700 7600
Wire Wire Line
	5450 7800 5700 7800
Connection ~ 5700 7800
Wire Wire Line
	5700 7800 5700 7700
Wire Wire Line
	5450 7900 5700 7900
Connection ~ 5700 7900
Wire Wire Line
	5700 7900 5700 7800
Wire Wire Line
	5450 8000 5700 8000
Connection ~ 5700 8000
Wire Wire Line
	5700 8000 5700 7900
Wire Wire Line
	5450 8100 5700 8100
Connection ~ 5700 8100
Wire Wire Line
	5700 8100 5700 8000
Wire Wire Line
	5450 8200 5700 8200
Connection ~ 5700 8200
Wire Wire Line
	5700 8200 5700 8100
Wire Wire Line
	5450 8300 5700 8300
Connection ~ 5700 8300
Wire Wire Line
	5700 8300 5700 8200
Wire Wire Line
	5450 8400 5700 8400
Connection ~ 5700 8400
Wire Wire Line
	5700 8400 5700 8300
Wire Wire Line
	5450 8500 5700 8500
Connection ~ 5700 8500
Wire Wire Line
	5700 8500 5700 8400
Wire Wire Line
	5450 8600 5700 8600
Connection ~ 5700 8600
Wire Wire Line
	5700 8600 5700 8500
Wire Wire Line
	5450 8700 5700 8700
Connection ~ 5700 8700
Wire Wire Line
	5700 8700 5700 8600
Wire Wire Line
	5450 8800 5700 8800
Connection ~ 5700 8800
Wire Wire Line
	5700 8800 5700 8700
Wire Wire Line
	5450 8900 5700 8900
Connection ~ 5700 8900
Wire Wire Line
	5700 8900 5700 8800
Wire Wire Line
	5450 9000 5700 9000
Connection ~ 5700 9000
Wire Wire Line
	5700 9000 5700 8900
Wire Wire Line
	5450 9100 5700 9100
Connection ~ 5700 9100
Wire Wire Line
	5700 9100 5700 9000
Wire Wire Line
	5450 9200 5700 9200
Connection ~ 5700 9200
Wire Wire Line
	5700 9200 5700 9100
Wire Wire Line
	5450 9300 5700 9300
Connection ~ 5700 9300
Wire Wire Line
	5700 9300 5700 9200
Wire Wire Line
	5450 9400 5700 9400
Connection ~ 5700 9400
Wire Wire Line
	5700 9400 5700 9300
Wire Wire Line
	5450 9500 5700 9500
Connection ~ 5700 9500
Wire Wire Line
	5700 9500 5700 9400
Wire Wire Line
	5450 9600 5700 9600
Connection ~ 5700 9600
Wire Wire Line
	5700 9600 5700 9500
Wire Wire Line
	5100 9600 5250 9600
Wire Wire Line
	5100 9500 5250 9500
Wire Wire Line
	5100 9400 5250 9400
Wire Wire Line
	5100 9300 5250 9300
Wire Wire Line
	5100 9200 5250 9200
Wire Wire Line
	5100 9100 5250 9100
Wire Wire Line
	5100 9000 5250 9000
Wire Wire Line
	5100 8900 5250 8900
Wire Wire Line
	5100 8800 5250 8800
Wire Wire Line
	5100 8700 5250 8700
Wire Wire Line
	5100 8600 5250 8600
Wire Wire Line
	5100 8500 5250 8500
Wire Wire Line
	5100 8400 5250 8400
Wire Wire Line
	5100 8300 5250 8300
Wire Wire Line
	5100 8200 5250 8200
Wire Wire Line
	5100 8100 5250 8100
Wire Wire Line
	5100 8000 5250 8000
Wire Wire Line
	5100 7900 5250 7900
Wire Wire Line
	5100 7800 5250 7800
Wire Wire Line
	5100 7700 5250 7700
Wire Wire Line
	5100 7600 5250 7600
Wire Wire Line
	5100 7500 5250 7500
Text Label 5150 9600 0    50   ~ 0
Sen1R
Text Label 5150 9500 0    50   ~ 0
Sen2R
Text Label 5150 9400 0    50   ~ 0
Sen3R
Text Label 5150 9300 0    50   ~ 0
Sen4R
Text Label 5150 9200 0    50   ~ 0
Sen5R
Text Label 5150 9100 0    50   ~ 0
Sen6R
Text Label 5150 9000 0    50   ~ 0
Sen7R
Text Label 5150 8900 0    50   ~ 0
Sen8R
Text Label 5150 8800 0    50   ~ 0
Sen9R
Text Label 5150 8700 0    50   ~ 0
Sen10R
Text Label 5150 8600 0    50   ~ 0
Sen11R
Text Label 5150 8500 0    50   ~ 0
Sen12R
Text Label 5150 8400 0    50   ~ 0
Sen13R
Text Label 5150 8300 0    50   ~ 0
Sen14R
Text Label 5150 8200 0    50   ~ 0
Sen15R
Text Label 5150 8100 0    50   ~ 0
Sen16R
Text Label 5150 8000 0    50   ~ 0
Sen17R
Text Label 5150 7900 0    50   ~ 0
Sen18R
Text Label 5150 7800 0    50   ~ 0
Sen19R
Text Label 5150 7700 0    50   ~ 0
Sen20R
Text Label 5150 7600 0    50   ~ 0
Sen21R
Text Label 5150 7500 0    50   ~ 0
Sen22R
Text Label 5700 1500 0    50   ~ 0
VCAP1
Text Label 6450 1300 0    50   ~ 0
BOOT0
Wire Wire Line
	5300 1500 6700 1500
Text Label 5700 1600 0    50   ~ 0
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
P 4500 950
F 0 "H1" H 4600 999 50  0000 L CNN
F 1 "MountingHole_Pad" H 4600 908 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 4500 950 50  0001 C CNN
F 3 "~" H 4500 950 50  0001 C CNN
	1    4500 950 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5FF253E7
P 4800 950
F 0 "H2" H 4900 999 50  0000 L CNN
F 1 "MountingHole_Pad" H 4900 908 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 4800 950 50  0001 C CNN
F 3 "~" H 4800 950 50  0001 C CNN
	1    4800 950 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5FF263BA
P 5100 950
F 0 "H3" H 5200 999 50  0000 L CNN
F 1 "MountingHole_Pad" H 5200 908 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 5100 950 50  0001 C CNN
F 3 "~" H 5100 950 50  0001 C CNN
	1    5100 950 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5FF27900
P 5400 950
F 0 "H4" H 5500 999 50  0000 L CNN
F 1 "MountingHole_Pad" H 5500 908 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 5400 950 50  0001 C CNN
F 3 "~" H 5400 950 50  0001 C CNN
	1    5400 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0112
U 1 1 5FF28455
P 4950 1150
F 0 "#PWR0112" H 4950 900 50  0001 C CNN
F 1 "GNDD" H 4954 995 50  0000 C CNN
F 2 "" H 4950 1150 50  0001 C CNN
F 3 "" H 4950 1150 50  0001 C CNN
	1    4950 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 1050 4500 1150
Wire Wire Line
	5400 1150 5400 1050
Connection ~ 4950 1150
Wire Wire Line
	4800 1050 4800 1150
Wire Wire Line
	4800 1150 4950 1150
Wire Wire Line
	9200 4500 9900 4500
Wire Wire Line
	9200 1100 9900 1100
Wire Wire Line
	9200 1200 9900 1200
Wire Wire Line
	9200 1700 9900 1700
Wire Wire Line
	9200 4800 9900 4800
Wire Wire Line
	9200 4900 9900 4900
Wire Wire Line
	9200 3800 9900 3800
Wire Wire Line
	9200 4000 9900 4000
Wire Wire Line
	9200 3900 9900 3900
Wire Wire Line
	9200 4100 9900 4100
Wire Wire Line
	9200 4200 9900 4200
Wire Wire Line
	9200 5100 9900 5100
Wire Wire Line
	9200 5200 9900 5200
Wire Wire Line
	9200 2100 9900 2100
Wire Wire Line
	9200 2200 9900 2200
Text Label 9900 1100 2    50   ~ 0
Sen11
Text Label 9900 1200 2    50   ~ 0
Sen10
Text Label 9900 1700 2    50   ~ 0
Sen5
Text Label 9900 3800 2    50   ~ 0
ETH_TX_EN
Text Label 9900 3900 2    50   ~ 0
ETH_TXD0
Text Label 9900 4000 2    50   ~ 0
ETH_TXD1
Text Label 9900 4100 2    50   ~ 0
USART1_TX
Text Label 9900 4200 2    50   ~ 0
USART1_RX
Text Label 9900 5100 2    50   ~ 0
USART6_RX
Text Label 9900 5200 2    50   ~ 0
USART6_TX
Text Label 9900 4800 2    50   ~ 0
Sen4
Text Label 9900 4900 2    50   ~ 0
Sen3
Text Label 9900 2100 2    50   ~ 0
USB_OTG_FS_D-
Text Label 9900 2200 2    50   ~ 0
USB_OTG_FS_D+
Text Label 9900 4500 2    50   ~ 0
Sen13
Wire Wire Line
	12800 5300 12900 5300
Wire Wire Line
	12800 5400 12900 5400
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
F 1 "USART1" H 13258 3690 50  0000 C CNN
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
F 1 "USART6" H 13258 4240 50  0000 C CNN
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
USART1_RX
Text Label 14050 3500 2    50   ~ 0
USART1_TX
Text Label 14050 3950 2    50   ~ 0
USART6_RX
Text Label 14050 4050 2    50   ~ 0
USART6_TX
$Comp
L Device:C C17
U 1 1 6045586D
P 15100 1100
F 0 "C17" H 15215 1146 50  0000 L CNN
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
	6700 5000 6100 5000
Wire Wire Line
	6700 5100 6100 5100
Wire Wire Line
	6700 5200 6100 5200
Wire Wire Line
	6700 5300 6100 5300
Wire Wire Line
	6700 5400 6100 5400
Text Label 6100 5000 0    50   ~ 0
Sen19
Text Label 6100 5100 0    50   ~ 0
Sen18
Text Label 6100 5200 0    50   ~ 0
Sen17
Text Label 6100 5300 0    50   ~ 0
Sen16
Text Label 6100 5400 0    50   ~ 0
Sen15
Wire Wire Line
	9200 4400 9900 4400
Text Label 9900 4400 2    50   ~ 0
Sen14
Wire Wire Line
	9200 1000 9900 1000
Text Label 9900 1000 2    50   ~ 0
Sen12
Wire Wire Line
	9200 1300 9900 1300
Wire Wire Line
	9200 1400 9900 1400
Wire Wire Line
	9200 1500 9900 1500
Wire Wire Line
	9200 1600 9900 1600
Text Label 9900 1300 2    50   ~ 0
Sen9
Text Label 9900 1400 2    50   ~ 0
Sen8
Text Label 9900 1500 2    50   ~ 0
Sen7
Text Label 9900 1600 2    50   ~ 0
Sen6
Wire Wire Line
	9200 2700 9900 2700
Text Label 9900 2700 2    50   ~ 0
Sen2
Wire Wire Line
	9200 2800 9900 2800
$Comp
L Power_Protection:USBLC6-2SC6 U3
U 1 1 606C142F
P 13450 5350
F 0 "U3" V 13404 5794 50  0000 L CNN
F 1 "USBLC6-2SC6" V 13495 5794 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-6_Handsoldering" H 13450 4850 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/usblc6-2.pdf" H 13650 5700 50  0001 C CNN
	1    13450 5350
	0    1    1    0   
$EndComp
$Comp
L power:GNDD #PWR0122
U 1 1 607593F4
P 13050 5450
F 0 "#PWR0122" H 13050 5200 50  0001 C CNN
F 1 "GNDD" H 13054 5295 50  0000 C CNN
F 2 "" H 13050 5450 50  0001 C CNN
F 3 "" H 13050 5450 50  0001 C CNN
	1    13050 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	12900 5400 12900 5900
Wire Wire Line
	12900 5300 12900 4800
Wire Wire Line
	12500 5750 12500 5700
Text Label 12900 4800 0    50   ~ 0
USB_D+
Text Label 12900 5900 0    50   ~ 0
USB_D-
Wire Wire Line
	13050 5450 13050 5350
Wire Wire Line
	13550 4800 13550 4950
Wire Wire Line
	12900 4800 13550 4800
Wire Wire Line
	13550 5900 13550 5750
Wire Wire Line
	12900 5900 13550 5900
Wire Wire Line
	13350 5750 13350 5850
Wire Wire Line
	13350 5850 14200 5850
Wire Wire Line
	13350 4950 13350 4900
Wire Wire Line
	13350 4900 14200 4900
Text Label 14200 4900 2    50   ~ 0
USB_OTG_FS_D+
Text Label 14200 5850 2    50   ~ 0
USB_OTG_FS_D-
$Comp
L Connector_Generic:Conn_02x22_Odd_Even J2
U 1 1 60A3D4A2
P 4900 8600
F 0 "J2" H 4950 7275 50  0000 C CNN
F 1 "Sensors" H 4950 7366 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_2x22_Pitch2.54mm" H 4900 8600 50  0001 C CNN
F 3 "~" H 4900 8600 50  0001 C CNN
	1    4900 8600
	-1   0    0    1   
$EndComp
Wire Wire Line
	4600 9500 4600 9600
Wire Wire Line
	4600 9500 4600 9400
Connection ~ 4600 9500
Connection ~ 4600 7600
Wire Wire Line
	4600 7600 4600 7500
Connection ~ 4600 7700
Wire Wire Line
	4600 7700 4600 7600
Connection ~ 4600 7800
Wire Wire Line
	4600 7800 4600 7700
Connection ~ 4600 7900
Wire Wire Line
	4600 7900 4600 7800
Connection ~ 4600 8000
Wire Wire Line
	4600 8000 4600 7900
Connection ~ 4600 8100
Wire Wire Line
	4600 8100 4600 8000
Connection ~ 4600 8200
Wire Wire Line
	4600 8200 4600 8100
Connection ~ 4600 8300
Wire Wire Line
	4600 8300 4600 8200
Connection ~ 4600 8400
Wire Wire Line
	4600 8400 4600 8300
Connection ~ 4600 8500
Wire Wire Line
	4600 8500 4600 8400
Connection ~ 4600 8600
Wire Wire Line
	4600 8600 4600 8500
Connection ~ 4600 8700
Wire Wire Line
	4600 8700 4600 8600
Connection ~ 4600 8800
Wire Wire Line
	4600 8800 4600 8700
Connection ~ 4600 8900
Wire Wire Line
	4600 8900 4600 8800
Connection ~ 4600 9000
Wire Wire Line
	4600 9000 4600 8900
Connection ~ 4600 9100
Wire Wire Line
	4600 9100 4600 9000
Connection ~ 4600 9200
Wire Wire Line
	4600 9200 4600 9100
Connection ~ 4600 9300
Wire Wire Line
	4600 9300 4600 9200
Connection ~ 4600 9400
Wire Wire Line
	4600 9400 4600 9300
Wire Wire Line
	6700 4700 6100 4700
Wire Wire Line
	6700 4800 6100 4800
Wire Wire Line
	6700 4900 6100 4900
Text Label 6100 4700 0    50   ~ 0
Sen22
Text Label 6100 4800 0    50   ~ 0
Sen21
Text Label 6100 4900 0    50   ~ 0
Sen20
Text Label 9900 2800 2    50   ~ 0
Sen1
Wire Wire Line
	4600 7500 4600 7200
Connection ~ 4600 7500
$Comp
L Device:C_Small C19
U 1 1 60BA1561
P 5150 7200
F 0 "C19" V 4921 7200 50  0000 C CNN
F 1 "1uF" V 5012 7200 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5150 7200 50  0001 C CNN
F 3 "~" H 5150 7200 50  0001 C CNN
	1    5150 7200
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C18
U 1 1 60BA3160
P 5150 6850
F 0 "C18" V 4921 6850 50  0000 C CNN
F 1 "1uF" V 5012 6850 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5150 6850 50  0001 C CNN
F 3 "~" H 5150 6850 50  0001 C CNN
	1    5150 6850
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 6850 4600 6850
Connection ~ 4600 6850
Wire Wire Line
	4600 6850 4600 6700
Wire Wire Line
	5050 7200 4600 7200
Connection ~ 4600 7200
Wire Wire Line
	4600 7200 4600 6850
Wire Wire Line
	5250 7200 5700 7200
Wire Wire Line
	5700 7200 5700 7500
Connection ~ 5700 7500
Wire Wire Line
	5250 6850 5700 6850
Wire Wire Line
	5700 6850 5700 7200
Connection ~ 5700 7200
$Comp
L AD8544:AD8544 U4
U 1 1 60C988B4
P 2150 2700
F 0 "U4" H 2150 3365 50  0000 C CNN
F 1 "AD8544" H 2150 3274 50  0000 C CNN
F 2 "SMD_Packages:SSOP-14" H 2150 2700 50  0001 C CNN
F 3 "DOCUMENTATION" H 2150 2700 50  0001 C CNN
	1    2150 2700
	1    0    0    -1  
$EndComp
$Comp
L AD8544:AD8544 U5
U 1 1 60C9AAE3
P 2150 4000
F 0 "U5" H 2150 4665 50  0000 C CNN
F 1 "AD8544" H 2150 4574 50  0000 C CNN
F 2 "SMD_Packages:SSOP-14" H 2150 4000 50  0001 C CNN
F 3 "DOCUMENTATION" H 2150 4000 50  0001 C CNN
	1    2150 4000
	1    0    0    -1  
$EndComp
$Comp
L AD8544:AD8544 U6
U 1 1 60C9BB7B
P 2150 5300
F 0 "U6" H 2150 5965 50  0000 C CNN
F 1 "AD8544" H 2150 5874 50  0000 C CNN
F 2 "SMD_Packages:SSOP-14" H 2150 5300 50  0001 C CNN
F 3 "DOCUMENTATION" H 2150 5300 50  0001 C CNN
	1    2150 5300
	1    0    0    -1  
$EndComp
$Comp
L AD8544:AD8544 U7
U 1 1 60C9CE3C
P 2150 6600
F 0 "U7" H 2150 7265 50  0000 C CNN
F 1 "AD8544" H 2150 7174 50  0000 C CNN
F 2 "SMD_Packages:SSOP-14" H 2150 6600 50  0001 C CNN
F 3 "DOCUMENTATION" H 2150 6600 50  0001 C CNN
	1    2150 6600
	1    0    0    -1  
$EndComp
$Comp
L AD8544:AD8544 U8
U 1 1 60C9E968
P 2150 7950
F 0 "U8" H 2150 8615 50  0000 C CNN
F 1 "AD8544" H 2150 8524 50  0000 C CNN
F 2 "SMD_Packages:SSOP-14" H 2150 7950 50  0001 C CNN
F 3 "DOCUMENTATION" H 2150 7950 50  0001 C CNN
	1    2150 7950
	1    0    0    -1  
$EndComp
$Comp
L AD8544:AD8544 U9
U 1 1 60C9F34F
P 2150 9150
F 0 "U9" H 2150 9815 50  0000 C CNN
F 1 "AD8544" H 2150 9724 50  0000 C CNN
F 2 "SMD_Packages:SSOP-14" H 2150 9150 50  0001 C CNN
F 3 "DOCUMENTATION" H 2150 9150 50  0001 C CNN
	1    2150 9150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 2700 950  2700
Wire Wire Line
	950  9150 1400 9150
Wire Wire Line
	950  1900 950  2700
Connection ~ 950  2700
Wire Wire Line
	950  2700 950  4000
Wire Wire Line
	1400 4000 950  4000
Connection ~ 950  4000
Wire Wire Line
	950  4000 950  5300
Wire Wire Line
	1400 5300 950  5300
Connection ~ 950  5300
Wire Wire Line
	950  5300 950  6600
Wire Wire Line
	1400 6600 950  6600
Connection ~ 950  6600
Wire Wire Line
	950  6600 950  7950
Wire Wire Line
	1400 7950 950  7950
Connection ~ 950  7950
Wire Wire Line
	950  7950 950  9150
$Comp
L power:+3.3VA #PWR0124
U 1 1 60D384C3
P 950 1900
F 0 "#PWR0124" H 950 1750 50  0001 C CNN
F 1 "+3.3VA" H 965 2073 50  0000 C CNN
F 2 "" H 950 1900 50  0001 C CNN
F 3 "" H 950 1900 50  0001 C CNN
	1    950  1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 2700 3350 2700
Wire Wire Line
	3350 2700 3350 4000
Wire Wire Line
	2900 9150 3350 9150
Connection ~ 3350 9150
Wire Wire Line
	3350 9150 3350 9750
Wire Wire Line
	2900 7950 3350 7950
Connection ~ 3350 7950
Wire Wire Line
	3350 7950 3350 9150
Wire Wire Line
	2900 6600 3350 6600
Connection ~ 3350 6600
Wire Wire Line
	3350 6600 3350 7950
Wire Wire Line
	2900 5300 3350 5300
Connection ~ 3350 5300
Wire Wire Line
	3350 5300 3350 6600
Wire Wire Line
	2900 4000 3350 4000
Connection ~ 3350 4000
Wire Wire Line
	3350 4000 3350 5300
$Comp
L power:GNDA #PWR0125
U 1 1 60DFED01
P 3350 9750
F 0 "#PWR0125" H 3350 9500 50  0001 C CNN
F 1 "GNDA" H 3355 9577 50  0000 C CNN
F 2 "" H 3350 9750 50  0001 C CNN
F 3 "" H 3350 9750 50  0001 C CNN
	1    3350 9750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 2400 1400 2500
Wire Wire Line
	1400 2900 1400 3000
Wire Wire Line
	2900 3000 2900 2900
Wire Wire Line
	2900 2500 2900 2400
Wire Wire Line
	1400 3800 1400 3700
Wire Wire Line
	1400 4200 1400 4300
Wire Wire Line
	2900 4200 2900 4300
Wire Wire Line
	2900 3800 2900 3700
Wire Wire Line
	1400 5100 1400 5000
Wire Wire Line
	1400 5500 1400 5600
Wire Wire Line
	2900 5600 2900 5500
Wire Wire Line
	2900 5100 2900 5000
Wire Wire Line
	1400 6300 1400 6400
Wire Wire Line
	1400 6800 1400 6900
Wire Wire Line
	2900 6900 2900 6800
Wire Wire Line
	2900 6400 2900 6300
Wire Wire Line
	1400 7750 1400 7650
Wire Wire Line
	1400 8150 1400 8250
Wire Wire Line
	2900 8250 2900 8150
Wire Wire Line
	2900 7750 2900 7650
Wire Wire Line
	1400 8950 1400 8850
Wire Wire Line
	1400 9350 1400 9450
Wire Wire Line
	2900 9350 2900 9250
Wire Wire Line
	2900 9050 2900 8950
Wire Wire Line
	1400 9050 1000 9050
Wire Wire Line
	1400 9250 1000 9250
Wire Wire Line
	1400 8050 1000 8050
Wire Wire Line
	1400 7850 1000 7850
Wire Wire Line
	2900 7850 3300 7850
Wire Wire Line
	2900 8050 3300 8050
Wire Wire Line
	1400 6500 1000 6500
Wire Wire Line
	1400 6700 1000 6700
Wire Wire Line
	2900 6700 3300 6700
Wire Wire Line
	2900 6500 3300 6500
Wire Wire Line
	1400 5400 1000 5400
Wire Wire Line
	1400 5200 1000 5200
Wire Wire Line
	2900 5200 3300 5200
Wire Wire Line
	2900 5400 3300 5400
Wire Wire Line
	1400 4100 1000 4100
Wire Wire Line
	1400 3900 1000 3900
Wire Wire Line
	2900 3900 3300 3900
Wire Wire Line
	2900 4100 3300 4100
Wire Wire Line
	1400 2600 1000 2600
Wire Wire Line
	1400 2800 1000 2800
Wire Wire Line
	2900 2800 3300 2800
Wire Wire Line
	2900 2600 3300 2600
Text Label 1000 2600 0    50   ~ 0
Sen2R
Text Label 1000 2800 0    50   ~ 0
Sen1R
Text Label 3300 2800 2    50   ~ 0
Sen4R
Text Label 3300 2600 2    50   ~ 0
Sen3R
Wire Wire Line
	1400 2400 1000 2400
Connection ~ 1400 2400
Wire Wire Line
	1400 3000 1000 3000
Connection ~ 1400 3000
Wire Wire Line
	2900 3000 3300 3000
Connection ~ 2900 3000
Wire Wire Line
	2900 2400 3300 2400
Connection ~ 2900 2400
Text Label 1000 2400 0    50   ~ 0
Sen2
Text Label 1000 3000 0    50   ~ 0
Sen1
Text Label 3300 3000 2    50   ~ 0
Sen4
Text Label 3300 2400 2    50   ~ 0
Sen3
Wire Wire Line
	1400 4300 1000 4300
Connection ~ 1400 4300
Wire Wire Line
	1400 3700 1000 3700
Connection ~ 1400 3700
Wire Wire Line
	2900 3700 3300 3700
Connection ~ 2900 3700
Wire Wire Line
	2900 4300 3300 4300
Connection ~ 2900 4300
Wire Wire Line
	1400 5000 1000 5000
Connection ~ 1400 5000
Wire Wire Line
	1400 5600 1000 5600
Connection ~ 1400 5600
Wire Wire Line
	2900 5600 3300 5600
Connection ~ 2900 5600
Wire Wire Line
	2900 5000 3300 5000
Connection ~ 2900 5000
Wire Wire Line
	1400 6300 1000 6300
Connection ~ 1400 6300
Wire Wire Line
	1400 6900 1000 6900
Connection ~ 1400 6900
Wire Wire Line
	2900 6900 3300 6900
Connection ~ 2900 6900
Wire Wire Line
	2900 6300 3300 6300
Connection ~ 2900 6300
Wire Wire Line
	1400 7650 1000 7650
Connection ~ 1400 7650
Wire Wire Line
	1400 8250 1000 8250
Connection ~ 1400 8250
Wire Wire Line
	2900 8250 3300 8250
Connection ~ 2900 8250
Wire Wire Line
	2900 7650 3300 7650
Connection ~ 2900 7650
Wire Wire Line
	1400 8850 1000 8850
Connection ~ 1400 8850
Wire Wire Line
	1400 9450 1000 9450
Connection ~ 1400 9450
Text Label 1000 4300 0    50   ~ 0
Sen5
Text Label 1000 4100 0    50   ~ 0
Sen5R
Text Label 1000 3900 0    50   ~ 0
Sen6R
Text Label 1000 3700 0    50   ~ 0
Sen6
Text Label 3300 3700 2    50   ~ 0
Sen7
Text Label 3300 3900 2    50   ~ 0
Sen7R
Text Label 3300 4100 2    50   ~ 0
Sen8R
Text Label 3300 4300 2    50   ~ 0
Sen8
Text Label 1000 5600 0    50   ~ 0
Sen9
Text Label 1000 5400 0    50   ~ 0
Sen9R
Text Label 1000 5200 0    50   ~ 0
Sen10R
Text Label 1000 5000 0    50   ~ 0
Sen10
Text Label 3300 5000 2    50   ~ 0
Sen11
Text Label 3300 5200 2    50   ~ 0
Sen11R
Text Label 3300 5400 2    50   ~ 0
Sen12R
Text Label 3300 5600 2    50   ~ 0
Sen12
Text Label 1000 6900 0    50   ~ 0
Sen13
Text Label 1000 6700 0    50   ~ 0
Sen13R
Text Label 1000 6500 0    50   ~ 0
Sen14R
Text Label 1000 6300 0    50   ~ 0
Sen14
Text Label 3300 6300 2    50   ~ 0
Sen15
Text Label 3300 6500 2    50   ~ 0
Sen15R
Text Label 3300 6700 2    50   ~ 0
Sen16R
Text Label 3300 6900 2    50   ~ 0
Sen16
Text Label 1000 8250 0    50   ~ 0
Sen17
Text Label 1000 8050 0    50   ~ 0
Sen17R
Text Label 1000 7850 0    50   ~ 0
Sen18R
Text Label 1000 7650 0    50   ~ 0
Sen18
Text Label 3300 7650 2    50   ~ 0
Sen19
Text Label 3300 7850 2    50   ~ 0
Sen19R
Text Label 3300 8050 2    50   ~ 0
Sen20R
Text Label 3300 8250 2    50   ~ 0
Sen20
Text Label 1000 9450 0    50   ~ 0
Sen21
Text Label 1000 9250 0    50   ~ 0
Sen21R
Text Label 1000 9050 0    50   ~ 0
Sen22R
Text Label 1000 8850 0    50   ~ 0
Sen22
$Comp
L MCP1501:MCP1501 U10
U 1 1 61AB3524
P 12400 7400
F 0 "U10" H 12400 7915 50  0000 C CNN
F 1 "MCP1501T-30E/SN" H 12400 7824 50  0000 C CNN
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
$Comp
L power:+5V #PWR0126
U 1 1 61B1F663
P 11400 7000
F 0 "#PWR0126" H 11400 6850 50  0001 C CNN
F 1 "+5V" H 11415 7173 50  0000 C CNN
F 2 "" H 11400 7000 50  0001 C CNN
F 3 "" H 11400 7000 50  0001 C CNN
	1    11400 7000
	1    0    0    -1  
$EndComp
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
L Device:R_Small_US R23
U 1 1 61CA84E6
P 13650 7500
F 0 "R23" H 13718 7546 50  0000 L CNN
F 1 "50" H 13718 7455 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 13650 7500 50  0001 C CNN
F 3 "~" H 13650 7500 50  0001 C CNN
	1    13650 7500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C21
U 1 1 61CA8BA4
P 13650 7750
F 0 "C21" H 13742 7796 50  0000 L CNN
F 1 "2.2uF" H 13742 7705 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 13650 7750 50  0001 C CNN
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
L Device:C_Small C20
U 1 1 61D55B11
P 11400 7700
F 0 "C20" H 11492 7746 50  0000 L CNN
F 1 "2.2uF" H 11492 7655 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 11400 7700 50  0001 C CNN
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
	6700 1700 6150 1700
Text Label 6150 1700 0    50   ~ 0
VREF+
$Comp
L Regulator_Linear:AP7361C-33E U11
U 1 1 61E8552A
P 10200 8650
F 0 "U11" H 10200 8892 50  0000 C CNN
F 1 "AP7361C-33E-13" H 10200 8801 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223-3_TabPin2" H 10200 8875 50  0001 C CIN
F 3 "https://www.diodes.com/assets/Datasheets/AP7361C.pdf" H 10200 8600 50  0001 C CNN
	1    10200 8650
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AP7361C-33E U12
U 1 1 61E87546
P 12000 8650
F 0 "U12" H 12000 8892 50  0000 C CNN
F 1 "AP7361C-33E-13" H 12000 8801 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223-3_TabPin2" H 12000 8875 50  0001 C CIN
F 3 "https://www.diodes.com/assets/Datasheets/AP7361C.pdf" H 12000 8600 50  0001 C CNN
	1    12000 8650
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0128
U 1 1 61E88575
P 10200 9050
F 0 "#PWR0128" H 10200 8800 50  0001 C CNN
F 1 "GNDD" H 10204 8895 50  0000 C CNN
F 2 "" H 10200 9050 50  0001 C CNN
F 3 "" H 10200 9050 50  0001 C CNN
	1    10200 9050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0129
U 1 1 61E893A5
P 9700 8650
F 0 "#PWR0129" H 9700 8500 50  0001 C CNN
F 1 "+5V" H 9715 8823 50  0000 C CNN
F 2 "" H 9700 8650 50  0001 C CNN
F 3 "" H 9700 8650 50  0001 C CNN
	1    9700 8650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0130
U 1 1 61E8A151
P 10700 8650
F 0 "#PWR0130" H 10700 8500 50  0001 C CNN
F 1 "+3.3V" H 10715 8823 50  0000 C CNN
F 2 "" H 10700 8650 50  0001 C CNN
F 3 "" H 10700 8650 50  0001 C CNN
	1    10700 8650
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0131
U 1 1 61E8AF4F
P 12000 9050
F 0 "#PWR0131" H 12000 8800 50  0001 C CNN
F 1 "GNDA" H 12005 8877 50  0000 C CNN
F 2 "" H 12000 9050 50  0001 C CNN
F 3 "" H 12000 9050 50  0001 C CNN
	1    12000 9050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR0133
U 1 1 61E8CD76
P 12500 8650
F 0 "#PWR0133" H 12500 8500 50  0001 C CNN
F 1 "+3.3VA" H 12515 8823 50  0000 C CNN
F 2 "" H 12500 8650 50  0001 C CNN
F 3 "" H 12500 8650 50  0001 C CNN
	1    12500 8650
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP1
U 1 1 61EFC1D3
P 1000 3000
F 0 "TP1" V 1195 3072 50  0000 C CNN
F 1 "TestPoint" V 1104 3072 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch1.00mm" H 1200 3000 50  0001 C CNN
F 3 "~" H 1200 3000 50  0001 C CNN
	1    1000 3000
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 61EFE4BE
P 1000 2400
F 0 "TP2" V 1195 2472 50  0000 C CNN
F 1 "TestPoint" V 1104 2472 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch1.00mm" H 1200 2400 50  0001 C CNN
F 3 "~" H 1200 2400 50  0001 C CNN
	1    1000 2400
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP5
U 1 1 61EFF39E
P 1000 4300
F 0 "TP5" V 1195 4372 50  0000 C CNN
F 1 "TestPoint" V 1104 4372 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch1.00mm" H 1200 4300 50  0001 C CNN
F 3 "~" H 1200 4300 50  0001 C CNN
	1    1000 4300
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP6
U 1 1 61EFFE56
P 1000 3700
F 0 "TP6" V 1195 3772 50  0000 C CNN
F 1 "TestPoint" V 1104 3772 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch1.00mm" H 1200 3700 50  0001 C CNN
F 3 "~" H 1200 3700 50  0001 C CNN
	1    1000 3700
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP10
U 1 1 61F00371
P 1000 5000
F 0 "TP10" V 1195 5072 50  0000 C CNN
F 1 "TestPoint" V 1104 5072 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch1.00mm" H 1200 5000 50  0001 C CNN
F 3 "~" H 1200 5000 50  0001 C CNN
	1    1000 5000
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP9
U 1 1 61F00871
P 1000 5600
F 0 "TP9" V 1195 5672 50  0000 C CNN
F 1 "TestPoint" V 1104 5672 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch1.00mm" H 1200 5600 50  0001 C CNN
F 3 "~" H 1200 5600 50  0001 C CNN
	1    1000 5600
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP14
U 1 1 61F00DE6
P 1000 6300
F 0 "TP14" V 1195 6372 50  0000 C CNN
F 1 "TestPoint" V 1104 6372 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch1.00mm" H 1200 6300 50  0001 C CNN
F 3 "~" H 1200 6300 50  0001 C CNN
	1    1000 6300
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP13
U 1 1 61F011FB
P 1000 6900
F 0 "TP13" V 1195 6972 50  0000 C CNN
F 1 "TestPoint" V 1104 6972 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch1.00mm" H 1200 6900 50  0001 C CNN
F 3 "~" H 1200 6900 50  0001 C CNN
	1    1000 6900
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP18
U 1 1 61F017B5
P 1000 7650
F 0 "TP18" V 1195 7722 50  0000 C CNN
F 1 "TestPoint" V 1104 7722 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch1.00mm" H 1200 7650 50  0001 C CNN
F 3 "~" H 1200 7650 50  0001 C CNN
	1    1000 7650
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP17
U 1 1 61F01CC8
P 1000 8250
F 0 "TP17" V 1195 8322 50  0000 C CNN
F 1 "TestPoint" V 1104 8322 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch1.00mm" H 1200 8250 50  0001 C CNN
F 3 "~" H 1200 8250 50  0001 C CNN
	1    1000 8250
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP22
U 1 1 61F02480
P 1000 8850
F 0 "TP22" V 1195 8922 50  0000 C CNN
F 1 "TestPoint" V 1104 8922 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch1.00mm" H 1200 8850 50  0001 C CNN
F 3 "~" H 1200 8850 50  0001 C CNN
	1    1000 8850
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP21
U 1 1 61F028CD
P 1000 9450
F 0 "TP21" V 1195 9522 50  0000 C CNN
F 1 "TestPoint" V 1104 9522 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch1.00mm" H 1200 9450 50  0001 C CNN
F 3 "~" H 1200 9450 50  0001 C CNN
	1    1000 9450
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP20
U 1 1 61F02D18
P 3300 8250
F 0 "TP20" V 3254 8438 50  0000 L CNN
F 1 "TestPoint" V 3345 8438 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch1.00mm" H 3500 8250 50  0001 C CNN
F 3 "~" H 3500 8250 50  0001 C CNN
	1    3300 8250
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP19
U 1 1 61F03D61
P 3300 7650
F 0 "TP19" V 3254 7838 50  0000 L CNN
F 1 "TestPoint" V 3345 7838 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch1.00mm" H 3500 7650 50  0001 C CNN
F 3 "~" H 3500 7650 50  0001 C CNN
	1    3300 7650
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP16
U 1 1 61F04262
P 3300 6900
F 0 "TP16" V 3254 7088 50  0000 L CNN
F 1 "TestPoint" V 3345 7088 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch1.00mm" H 3500 6900 50  0001 C CNN
F 3 "~" H 3500 6900 50  0001 C CNN
	1    3300 6900
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP15
U 1 1 61F047E5
P 3300 6300
F 0 "TP15" V 3254 6488 50  0000 L CNN
F 1 "TestPoint" V 3345 6488 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch1.00mm" H 3500 6300 50  0001 C CNN
F 3 "~" H 3500 6300 50  0001 C CNN
	1    3300 6300
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP12
U 1 1 61F04B89
P 3300 5600
F 0 "TP12" V 3254 5788 50  0000 L CNN
F 1 "TestPoint" V 3345 5788 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch1.00mm" H 3500 5600 50  0001 C CNN
F 3 "~" H 3500 5600 50  0001 C CNN
	1    3300 5600
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP11
U 1 1 61F04EAD
P 3300 5000
F 0 "TP11" V 3254 5188 50  0000 L CNN
F 1 "TestPoint" V 3345 5188 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch1.00mm" H 3500 5000 50  0001 C CNN
F 3 "~" H 3500 5000 50  0001 C CNN
	1    3300 5000
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP8
U 1 1 61F052A6
P 3300 4300
F 0 "TP8" V 3254 4488 50  0000 L CNN
F 1 "TestPoint" V 3345 4488 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch1.00mm" H 3500 4300 50  0001 C CNN
F 3 "~" H 3500 4300 50  0001 C CNN
	1    3300 4300
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP7
U 1 1 61F055FC
P 3300 3700
F 0 "TP7" V 3254 3888 50  0000 L CNN
F 1 "TestPoint" V 3345 3888 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch1.00mm" H 3500 3700 50  0001 C CNN
F 3 "~" H 3500 3700 50  0001 C CNN
	1    3300 3700
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP4
U 1 1 61F05B5B
P 3300 3000
F 0 "TP4" V 3254 3188 50  0000 L CNN
F 1 "TestPoint" V 3345 3188 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch1.00mm" H 3500 3000 50  0001 C CNN
F 3 "~" H 3500 3000 50  0001 C CNN
	1    3300 3000
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP3
U 1 1 61F05FAF
P 3300 2400
F 0 "TP3" V 3254 2588 50  0000 L CNN
F 1 "TestPoint" V 3345 2588 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch1.00mm" H 3500 2400 50  0001 C CNN
F 3 "~" H 3500 2400 50  0001 C CNN
	1    3300 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	11450 8650 11450 8600
$Comp
L power:+5V #PWR0132
U 1 1 62037CED
P 11450 8600
F 0 "#PWR0132" H 11450 8450 50  0001 C CNN
F 1 "+5V" H 11465 8773 50  0000 C CNN
F 2 "" H 11450 8600 50  0001 C CNN
F 3 "" H 11450 8600 50  0001 C CNN
	1    11450 8600
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:L7805 U13
U 1 1 623F8A69
P 13700 8650
F 0 "U13" H 13700 8892 50  0000 C CNN
F 1 "P78E05-1000" H 13700 8801 50  0000 C CNN
F 2 "TO_SOT_Packages_THT:TO-220-3_Vertical" H 13725 8500 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 13700 8600 50  0001 C CNN
	1    13700 8650
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0136
U 1 1 623FB0EC
P 13150 8550
F 0 "#PWR0136" H 13150 8400 50  0001 C CNN
F 1 "+12V" H 13165 8723 50  0000 C CNN
F 2 "" H 13150 8550 50  0001 C CNN
F 3 "" H 13150 8550 50  0001 C CNN
	1    13150 8550
	1    0    0    -1  
$EndComp
Wire Wire Line
	13150 8550 13150 8650
Wire Wire Line
	13150 8650 13300 8650
$Comp
L power:+5V #PWR0137
U 1 1 62438167
P 14200 8500
F 0 "#PWR0137" H 14200 8350 50  0001 C CNN
F 1 "+5V" H 14215 8673 50  0000 C CNN
F 2 "" H 14200 8500 50  0001 C CNN
F 3 "" H 14200 8500 50  0001 C CNN
	1    14200 8500
	1    0    0    -1  
$EndComp
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
NoConn ~ 10850 4800
NoConn ~ 11350 4800
$Comp
L Device:C_Small C22
U 1 1 626A5BF2
P 9800 8850
F 0 "C22" H 9892 8896 50  0000 L CNN
F 1 "4.7uF" H 9892 8805 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9800 8850 50  0001 C CNN
F 3 "~" H 9800 8850 50  0001 C CNN
	1    9800 8850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C23
U 1 1 626A76C3
P 10600 8850
F 0 "C23" H 10692 8896 50  0000 L CNN
F 1 "4.7uF" H 10692 8805 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10600 8850 50  0001 C CNN
F 3 "~" H 10600 8850 50  0001 C CNN
	1    10600 8850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C24
U 1 1 626A7CE3
P 11550 8850
F 0 "C24" H 11642 8896 50  0000 L CNN
F 1 "4.7uF" H 11642 8805 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 11550 8850 50  0001 C CNN
F 3 "~" H 11550 8850 50  0001 C CNN
	1    11550 8850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C25
U 1 1 626A8420
P 12400 8850
F 0 "C25" H 12492 8896 50  0000 L CNN
F 1 "4.7uF" H 12492 8805 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 12400 8850 50  0001 C CNN
F 3 "~" H 12400 8850 50  0001 C CNN
	1    12400 8850
	1    0    0    -1  
$EndComp
Wire Wire Line
	12300 8650 12400 8650
Wire Wire Line
	12400 8750 12400 8650
Connection ~ 12400 8650
Wire Wire Line
	12400 8650 12500 8650
Wire Wire Line
	11550 8650 11550 8750
Connection ~ 11550 8650
Wire Wire Line
	11550 8650 11450 8650
Wire Wire Line
	11550 8950 11550 9000
Wire Wire Line
	12400 9000 12400 8950
Wire Wire Line
	12000 9050 12000 9000
Connection ~ 12000 9000
Wire Wire Line
	12000 9000 12400 9000
Wire Wire Line
	12000 9000 12000 8950
Wire Wire Line
	9700 8650 9800 8650
Wire Wire Line
	9800 8750 9800 8650
Connection ~ 9800 8650
Wire Wire Line
	9800 8650 9900 8650
Wire Wire Line
	10500 8650 10600 8650
Wire Wire Line
	10600 8750 10600 8650
Connection ~ 10600 8650
Wire Wire Line
	10600 8650 10700 8650
Wire Wire Line
	9800 8950 9800 9000
Wire Wire Line
	9800 9000 10200 9000
Wire Wire Line
	10600 9000 10600 8950
Wire Wire Line
	10200 9050 10200 9000
Connection ~ 10200 9000
Wire Wire Line
	10200 9000 10600 9000
Wire Wire Line
	10200 9000 10200 8950
Wire Wire Line
	11550 8650 11700 8650
Wire Wire Line
	11550 9000 12000 9000
$Comp
L Device:CP1_Small C26
U 1 1 62AC126C
P 13300 8900
F 0 "C26" H 13391 8946 50  0000 L CNN
F 1 "10uF EEA-GA1V100" H 13391 8855 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.00mm" H 13300 8900 50  0001 C CNN
F 3 "~" H 13300 8900 50  0001 C CNN
	1    13300 8900
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C27
U 1 1 62AC2BA4
P 14100 8900
F 0 "C27" H 14191 8946 50  0000 L CNN
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
F 0 "J5" H 12557 5767 50  0000 C CNN
F 1 "UE27AC5410H" H 12557 5676 50  0000 C CNN
F 2 "usbconnectors:USB_A_Molex_67643_Horizontal" H 12650 5250 50  0001 C CNN
F 3 " ~" H 12650 5250 50  0001 C CNN
	1    12500 5300
	1    0    0    -1  
$EndComp
NoConn ~ 12800 5100
Wire Wire Line
	4950 1150 5100 1150
Wire Wire Line
	12400 5700 12400 5750
Wire Wire Line
	12400 5750 12500 5750
Connection ~ 12500 5750
Wire Wire Line
	5100 1050 5100 1150
Connection ~ 5100 1150
Wire Wire Line
	5100 1150 5400 1150
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
USART6_RX
Text Label 11400 3800 0    50   ~ 0
USART6_TX
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
L Device:R_Small_US R25
U 1 1 633E6DD8
P 11500 2500
F 0 "R25" H 11568 2546 50  0000 L CNN
F 1 "CL" H 11568 2455 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 11500 2500 50  0001 C CNN
F 3 "~" H 11500 2500 50  0001 C CNN
	1    11500 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R26
U 1 1 633E780D
P 11850 2500
F 0 "R26" H 11918 2546 50  0000 L CNN
F 1 "CL" H 11918 2455 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 11850 2500 50  0001 C CNN
F 3 "~" H 11850 2500 50  0001 C CNN
	1    11850 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R27
U 1 1 633E893B
P 12200 2500
F 0 "R27" H 12268 2546 50  0000 L CNN
F 1 "CL" H 12268 2455 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 12200 2500 50  0001 C CNN
F 3 "~" H 12200 2500 50  0001 C CNN
	1    12200 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R28
U 1 1 633E8E0C
P 12550 2500
F 0 "R28" H 12618 2546 50  0000 L CNN
F 1 "CL" H 12618 2455 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 12550 2500 50  0001 C CNN
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
	6700 6200 6100 6200
Text Label 6100 6200 0    50   ~ 0
LED1
Wire Wire Line
	9200 5400 9900 5400
Text Label 9900 5400 2    50   ~ 0
LED4
Wire Wire Line
	9200 5600 9900 5600
Wire Wire Line
	6700 6100 6100 6100
Text Label 6100 6100 0    50   ~ 0
LED2
Text Label 9900 5600 2    50   ~ 0
LED3
$Comp
L Device:R_Small_US R29
U 1 1 639EF198
P 6250 1300
F 0 "R29" V 6045 1300 50  0000 C CNN
F 1 "10k" V 6136 1300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 6250 1300 50  0001 C CNN
F 3 "~" H 6250 1300 50  0001 C CNN
	1    6250 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	6350 1300 6700 1300
Wire Wire Line
	6150 1300 6000 1300
Wire Wire Line
	6000 1300 6000 1350
Wire Wire Line
	9200 1800 9900 1800
Wire Wire Line
	9200 5300 9900 5300
Wire Wire Line
	9200 1900 9900 1900
Wire Wire Line
	9200 2000 9900 2000
Wire Wire Line
	6700 3400 6100 3400
Wire Wire Line
	6700 3500 6100 3500
$Comp
L Device:Crystal_Small Y1
U 1 1 63C04E72
P 6250 2450
F 0 "Y1" V 6204 2538 50  0000 L CNN
F 1 "NX3225GD-8.000M-EXS00A-CG04874" V 6295 2538 50  0000 L CNN
F 2 "Crystals:Crystal_SMD_3215-2pin_3.2x1.5mm" H 6250 2450 50  0001 C CNN
F 3 "~" H 6250 2450 50  0001 C CNN
	1    6250 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	6700 2400 6600 2400
Wire Wire Line
	6600 2400 6600 2350
Wire Wire Line
	6600 2350 6250 2350
Wire Wire Line
	6700 2500 6600 2500
Wire Wire Line
	6600 2500 6600 2550
Wire Wire Line
	6600 2550 6250 2550
$Comp
L Device:C_Small C29
U 1 1 63C8DA2B
P 6000 2350
F 0 "C29" V 6229 2350 50  0000 C CNN
F 1 "4.3pF" V 6138 2350 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6000 2350 50  0001 C CNN
F 3 "~" H 6000 2350 50  0001 C CNN
	1    6000 2350
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C30
U 1 1 63C8F175
P 6000 2550
F 0 "C30" V 6229 2550 50  0000 C CNN
F 1 "4.3pF" V 6138 2550 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6000 2550 50  0001 C CNN
F 3 "~" H 6000 2550 50  0001 C CNN
	1    6000 2550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6250 2550 6100 2550
Connection ~ 6250 2550
Wire Wire Line
	6250 2350 6100 2350
Connection ~ 6250 2350
Wire Wire Line
	5900 2350 5800 2350
Wire Wire Line
	5800 2350 5800 2550
Wire Wire Line
	5900 2550 5800 2550
Connection ~ 5800 2550
Wire Wire Line
	5800 2550 5800 2700
$Comp
L power:GNDD #PWR0119
U 1 1 63DA4764
P 5800 2700
F 0 "#PWR0119" H 5800 2450 50  0001 C CNN
F 1 "GNDD" H 5804 2545 50  0000 C CNN
F 2 "" H 5800 2700 50  0001 C CNN
F 3 "" H 5800 2700 50  0001 C CNN
	1    5800 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Small TP23
U 1 1 63DD335E
P 6100 3400
F 0 "TP23" H 6148 3446 50  0000 L CNN
F 1 "TestPoint_Small" H 6148 3355 50  0000 L CNN
F 2 "Testpoint:TestPoint_Pad_D1.5mm" H 6300 3400 50  0001 C CNN
F 3 "~" H 6300 3400 50  0001 C CNN
	1    6100 3400
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Small TP24
U 1 1 63DD46A5
P 6100 3500
F 0 "TP24" H 6148 3546 50  0000 L CNN
F 1 "TestPoint_Small" H 6148 3455 50  0000 L CNN
F 2 "Testpoint:TestPoint_Pad_D1.5mm" H 6300 3500 50  0001 C CNN
F 3 "~" H 6300 3500 50  0001 C CNN
	1    6100 3500
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Small TP28
U 1 1 63DD487F
P 9900 5300
F 0 "TP28" H 9948 5346 50  0000 L CNN
F 1 "TestPoint_Small" H 9948 5255 50  0000 L CNN
F 2 "Testpoint:TestPoint_Pad_D1.5mm" H 10100 5300 50  0001 C CNN
F 3 "~" H 10100 5300 50  0001 C CNN
	1    9900 5300
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Small TP25
U 1 1 63DD5CA6
P 9900 1800
F 0 "TP25" H 9948 1846 50  0000 L CNN
F 1 "TestPoint_Small" H 9948 1755 50  0000 L CNN
F 2 "Testpoint:TestPoint_Pad_D1.5mm" H 10100 1800 50  0001 C CNN
F 3 "~" H 10100 1800 50  0001 C CNN
	1    9900 1800
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Small TP26
U 1 1 63DD7687
P 9900 1900
F 0 "TP26" H 9948 1946 50  0000 L CNN
F 1 "TestPoint_Small" H 9948 1855 50  0000 L CNN
F 2 "Testpoint:TestPoint_Pad_D1.5mm" H 10100 1900 50  0001 C CNN
F 3 "~" H 10100 1900 50  0001 C CNN
	1    9900 1900
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Small TP27
U 1 1 63DD793A
P 9900 2000
F 0 "TP27" H 9948 2046 50  0000 L CNN
F 1 "TestPoint_Small" H 9948 1955 50  0000 L CNN
F 2 "Testpoint:TestPoint_Pad_D1.5mm" H 10100 2000 50  0001 C CNN
F 3 "~" H 10100 2000 50  0001 C CNN
	1    9900 2000
	1    0    0    -1  
$EndComp
Text Notes 14150 6900 2    50   ~ 0
Vref will be 3.0V, leaving some headroom\nbetween it at VDDA at 3.3V.
$Comp
L Device:C C31
U 1 1 63E43F27
P 15600 1100
F 0 "C31" H 15715 1146 50  0000 L CNN
F 1 "DC32" H 15715 1055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 15638 950 50  0001 C CNN
F 3 "~" H 15600 1100 50  0001 C CNN
	1    15600 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0140
U 1 1 63E444EF
P 15600 1250
F 0 "#PWR0140" H 15600 1000 50  0001 C CNN
F 1 "GNDA" H 15605 1077 50  0000 C CNN
F 2 "" H 15600 1250 50  0001 C CNN
F 3 "" H 15600 1250 50  0001 C CNN
	1    15600 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	15600 950  15600 850 
Wire Wire Line
	15600 850  15950 850 
Text Label 15950 850  2    50   ~ 0
VREF+
Text Notes 9750 6450 0    79   ~ 0
Reference STMicroelectronics Application Note AN4938\nfor details on basic STMH74x circuits
Text Notes 10200 8250 0    50   ~ 0
Separate linear regulators for Digital and Analog
Text Notes 14550 8250 2    50   ~ 0
Monolithic switching regulator 12V->5V\nSo the linears don't have to drop 8.7V
Text Notes 13850 9700 0    50   ~ 0
Represents single connection between GNDD and GNDA\nnear the 5V regulator. Could be cut and choke inserted.
Text Notes 1300 1950 0    50   ~ 0
Op amps taking the "raw" voltage off the sense\nresistors, and buffering it for the ADCs. Also protects\nthe ADC inputs. Op amp output voltage is limited to\nVDDA, and they're cheap/easy to replace if damaged.
Text Notes 5000 2700 0    50   ~ 0
Don't intend to need this crystal circuit
Text Notes 10450 4500 0    50   ~ 0
We don't take 3.3V from the programming header,\nbecause that won't feed VDDA, which violates data\nsheet. We must be fed via 12V.
$Comp
L power:+3.3VA #PWR0123
U 1 1 5FA3D47D
P 4600 6700
F 0 "#PWR0123" H 4600 6550 50  0001 C CNN
F 1 "+3.3VA" H 4615 6873 50  0000 C CNN
F 2 "" H 4600 6700 50  0001 C CNN
F 3 "" H 4600 6700 50  0001 C CNN
	1    4600 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 1150 4500 1150
Connection ~ 4800 1150
NoConn ~ 6700 7600
NoConn ~ 6700 7500
NoConn ~ 6700 7400
NoConn ~ 6700 7300
NoConn ~ 6700 7200
NoConn ~ 6700 7100
NoConn ~ 6700 7000
NoConn ~ 6700 6900
NoConn ~ 6700 6800
NoConn ~ 6700 6700
NoConn ~ 6700 6600
NoConn ~ 6700 6500
NoConn ~ 6700 6400
NoConn ~ 6700 6300
NoConn ~ 6700 5900
NoConn ~ 6700 5800
NoConn ~ 6700 5700
NoConn ~ 6700 5600
NoConn ~ 6700 5500
NoConn ~ 9200 5700
NoConn ~ 9200 5800
NoConn ~ 9200 5900
NoConn ~ 9200 6100
NoConn ~ 9200 6200
NoConn ~ 9200 6300
NoConn ~ 9200 6400
NoConn ~ 9200 6500
NoConn ~ 9200 6600
NoConn ~ 9200 6700
NoConn ~ 9200 6800
NoConn ~ 9200 6900
NoConn ~ 9200 7000
NoConn ~ 9200 7100
NoConn ~ 9200 7200
NoConn ~ 9200 7300
NoConn ~ 9200 7400
NoConn ~ 9200 7500
NoConn ~ 9200 7600
NoConn ~ 6700 2700
NoConn ~ 6700 2800
NoConn ~ 6700 2900
NoConn ~ 6700 3000
NoConn ~ 6700 3100
NoConn ~ 6700 3200
NoConn ~ 6700 3300
NoConn ~ 6700 3600
NoConn ~ 6700 3700
NoConn ~ 6700 3800
NoConn ~ 6700 3900
NoConn ~ 6700 4000
NoConn ~ 6700 4100
NoConn ~ 6700 4200
NoConn ~ 6700 4400
NoConn ~ 6700 4500
NoConn ~ 6700 4600
NoConn ~ 9200 5500
NoConn ~ 9200 5000
NoConn ~ 9200 4700
NoConn ~ 9200 4600
NoConn ~ 9200 3700
NoConn ~ 9200 3600
NoConn ~ 9200 3500
NoConn ~ 9200 3400
NoConn ~ 9200 3300
NoConn ~ 9200 3200
$Comp
L MCU_ST_STM32H7:STM32H743ZITx U1
U 1 1 5F9842BC
P 8000 4300
F 0 "U1" H 7950 611 50  0000 C CNN
F 1 "STM32H743ZITx" H 7950 520 50  0000 C CNN
F 2 "Housings_QFP:LQFP-144_20x20mm_Pitch0.5mm" H 6900 900 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00387108.pdf" H 8000 4300 50  0001 C CNN
	1    8000 4300
	1    0    0    -1  
$EndComp
NoConn ~ 9200 2900
NoConn ~ 2900 8850
NoConn ~ 2900 9450
$EndSCHEMATC
