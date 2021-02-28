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
L Sensor_Proximity:CNY70 U1
U 1 1 603B0913
P 4800 2700
F 0 "U1" H 4800 3017 50  0000 C CNN
F 1 "CNY70" H 4800 2926 50  0000 C CNN
F 2 "OptoDevice:Vishay_CNY70" H 4800 2500 50  0001 C CNN
F 3 "https://www.vishay.com/docs/83751/cny70.pdf" H 4800 2800 50  0001 C CNN
	1    4800 2700
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 603B60F7
P 2450 2400
F 0 "H1" H 2550 2446 50  0000 L CNN
F 1 "MountingHole" H 2550 2355 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 2450 2400 50  0001 C CNN
F 3 "~" H 2450 2400 50  0001 C CNN
	1    2450 2400
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Proximity:CNY70 U2
U 1 1 603B3CB5
P 5500 2700
F 0 "U2" H 5500 3017 50  0000 C CNN
F 1 "CNY70" H 5500 2926 50  0000 C CNN
F 2 "OptoDevice:Vishay_CNY70" H 5500 2500 50  0001 C CNN
F 3 "https://www.vishay.com/docs/83751/cny70.pdf" H 5500 2800 50  0001 C CNN
	1    5500 2700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4900 2400 4900 2350
Wire Wire Line
	4900 2350 5100 2350
Wire Wire Line
	5100 2350 5100 1950
Wire Wire Line
	5000 1950 5000 2300
Wire Wire Line
	5000 2300 4700 2300
Wire Wire Line
	4700 2300 4700 2400
Wire Wire Line
	5200 1950 5200 2350
Wire Wire Line
	5200 2350 5400 2350
Wire Wire Line
	5400 2350 5400 2400
Wire Wire Line
	5300 1950 5300 2300
Wire Wire Line
	5300 2300 5600 2300
Wire Wire Line
	5600 2300 5600 2400
Wire Wire Line
	4900 1950 4900 2250
Wire Wire Line
	4900 2250 4350 2250
Wire Wire Line
	4350 2250 4350 3050
Wire Wire Line
	4350 3050 4700 3050
Wire Wire Line
	4700 3050 4700 3000
Wire Wire Line
	4900 3000 4900 3050
Wire Wire Line
	4900 3050 5400 3050
Wire Wire Line
	5400 3050 5400 3000
Wire Wire Line
	5600 3000 5600 3050
Text Label 4400 2250 0    50   ~ 0
POS
Text Label 4750 2300 0    50   ~ 0
C1
Text Label 4950 2350 0    50   ~ 0
E1
Text Label 5250 2350 0    50   ~ 0
C2
Text Label 5400 2300 0    50   ~ 0
E2
$Comp
L Mechanical:MountingHole H2
U 1 1 603B371C
P 2450 2600
F 0 "H2" H 2550 2646 50  0000 L CNN
F 1 "MountingHole" H 2550 2555 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 2450 2600 50  0001 C CNN
F 3 "~" H 2450 2600 50  0001 C CNN
	1    2450 2600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 603B3BE4
P 2450 2800
F 0 "H3" H 2550 2846 50  0000 L CNN
F 1 "MountingHole" H 2550 2755 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 2450 2800 50  0001 C CNN
F 3 "~" H 2450 2800 50  0001 C CNN
	1    2450 2800
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Proximity:CNY70 U3
U 1 1 603B4077
P 6200 2700
F 0 "U3" H 6200 3017 50  0000 C CNN
F 1 "CNY70" H 6200 2926 50  0000 C CNN
F 2 "OptoDevice:Vishay_CNY70" H 6200 2500 50  0001 C CNN
F 3 "https://www.vishay.com/docs/83751/cny70.pdf" H 6200 2800 50  0001 C CNN
	1    6200 2700
	0    -1   -1   0   
$EndComp
$Comp
L Sensor_Proximity:CNY70 U4
U 1 1 603B4EA1
P 6850 2700
F 0 "U4" H 6850 3017 50  0000 C CNN
F 1 "CNY70" H 6850 2926 50  0000 C CNN
F 2 "OptoDevice:Vishay_CNY70" H 6850 2500 50  0001 C CNN
F 3 "https://www.vishay.com/docs/83751/cny70.pdf" H 6850 2800 50  0001 C CNN
	1    6850 2700
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x10_Male J1
U 1 1 603B6392
P 5400 1750
F 0 "J1" V 5235 1678 50  0000 C CNN
F 1 "Conn_01x10_Male" V 5326 1678 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x10_Pitch2.54mm" H 5400 1750 50  0001 C CNN
F 3 "~" H 5400 1750 50  0001 C CNN
	1    5400 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	6100 3000 6100 3050
Wire Wire Line
	5400 1950 5400 2250
Wire Wire Line
	5400 2250 6100 2250
Wire Wire Line
	6100 2250 6100 2400
Wire Wire Line
	5500 1950 5500 2200
Wire Wire Line
	5500 2200 6300 2200
Wire Wire Line
	6300 2200 6300 2400
Wire Wire Line
	5600 1950 5600 2150
Wire Wire Line
	5600 2150 6750 2150
Wire Wire Line
	6750 2150 6750 2400
Wire Wire Line
	5700 1950 5700 2100
Wire Wire Line
	5700 2100 6950 2100
Wire Wire Line
	6950 2100 6950 2400
Wire Wire Line
	5800 1950 5800 2050
Wire Wire Line
	5800 2050 7150 2050
Wire Wire Line
	7150 2050 7150 3050
Wire Wire Line
	7150 3050 6950 3050
Wire Wire Line
	6950 3050 6950 3000
Wire Wire Line
	6750 3000 6750 3050
Wire Wire Line
	6750 3050 6300 3050
Wire Wire Line
	6300 3050 6300 3000
Wire Wire Line
	5600 3050 6100 3050
Text Label 7000 2050 0    50   ~ 0
NEG
Text Label 5800 2250 0    50   ~ 0
C3
Text Label 5950 2200 0    50   ~ 0
E3
Text Label 6500 2150 0    50   ~ 0
C4
Text Label 6650 2100 0    50   ~ 0
E4
$EndSCHEMATC
