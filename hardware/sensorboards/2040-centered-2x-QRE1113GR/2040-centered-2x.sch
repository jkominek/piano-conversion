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
L Mechanical:MountingHole H1
U 1 1 603B60F7
P 5900 2450
F 0 "H1" H 6000 2496 50  0000 L CNN
F 1 "MountingHole" H 6000 2405 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 5900 2450 50  0001 C CNN
F 3 "~" H 5900 2450 50  0001 C CNN
	1    5900 2450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 603B685B
P 5900 2650
F 0 "H2" H 6000 2696 50  0000 L CNN
F 1 "MountingHole" H 6000 2605 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 5900 2650 50  0001 C CNN
F 3 "~" H 5900 2650 50  0001 C CNN
	1    5900 2650
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Proximity:CNY70 U2
U 1 1 603B6433
P 4350 2700
F 0 "U2" H 4350 3017 50  0000 C CNN
F 1 "CNY70" H 4350 2926 50  0000 C CNN
F 2 "OptoDevice:Vishay_CNY70" H 4350 2500 50  0001 C CNN
F 3 "https://www.vishay.com/docs/83751/cny70.pdf" H 4350 2800 50  0001 C CNN
	1    4350 2700
	0    -1   -1   0   
$EndComp
$Comp
L Sensor_Proximity:CNY70 U1
U 1 1 603B0913
P 3500 2700
F 0 "U1" H 3500 3017 50  0000 C CNN
F 1 "CNY70" H 3500 2926 50  0000 C CNN
F 2 "OptoDevice:Vishay_CNY70" H 3500 2500 50  0001 C CNN
F 3 "https://www.vishay.com/docs/83751/cny70.pdf" H 3500 2800 50  0001 C CNN
	1    3500 2700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3600 3000 3600 3050
Wire Wire Line
	3600 3050 4250 3050
Wire Wire Line
	4250 3050 4250 3000
Wire Wire Line
	4450 3000 4450 3050
$Comp
L Connector:Conn_01x06_Male J1
U 1 1 603B900C
P 3950 1800
F 0 "J1" V 4012 2044 50  0000 L CNN
F 1 "Conn_01x06_Male" V 4103 2044 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x06_Pitch2.54mm" H 3950 1800 50  0001 C CNN
F 3 "~" H 3950 1800 50  0001 C CNN
	1    3950 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	3600 2400 3600 2350
Wire Wire Line
	3600 2350 3850 2350
Wire Wire Line
	3850 2350 3850 2000
Wire Wire Line
	3750 2000 3750 2300
Wire Wire Line
	3750 2300 3400 2300
Wire Wire Line
	3400 2300 3400 2400
Wire Wire Line
	3400 3000 3400 3050
Wire Wire Line
	3400 3050 3100 3050
Wire Wire Line
	3100 3050 3100 2250
Wire Wire Line
	3100 2250 3650 2250
Wire Wire Line
	3650 2250 3650 2000
Wire Wire Line
	3950 2000 3950 2350
Wire Wire Line
	3950 2350 4250 2350
Wire Wire Line
	4250 2350 4250 2400
Wire Wire Line
	4050 2000 4050 2300
Wire Wire Line
	4050 2300 4450 2300
Wire Wire Line
	4450 2300 4450 2400
Wire Wire Line
	4150 2000 4150 2250
Wire Wire Line
	4150 2250 4600 2250
Wire Wire Line
	4600 2250 4600 3050
Wire Wire Line
	4600 3050 4450 3050
Text Label 3150 2250 0    50   ~ 0
POS
Text Label 4400 2250 0    50   ~ 0
NEG
$EndSCHEMATC
