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
Wire Wire Line
	5400 1950 5400 2050
Wire Wire Line
	5400 2050 5750 2050
Wire Wire Line
	5750 2050 5750 3050
Text Label 5600 2050 0    50   ~ 0
NEG
$Comp
L Connector:Conn_01x06_Male J1
U 1 1 603D757B
P 5200 1750
F 0 "J1" V 5262 1994 50  0000 L CNN
F 1 "Conn_01x06_Male" V 5353 1994 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x06_Pitch2.54mm" H 5200 1750 50  0001 C CNN
F 3 "~" H 5200 1750 50  0001 C CNN
	1    5200 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	5600 3050 5750 3050
$EndSCHEMATC
