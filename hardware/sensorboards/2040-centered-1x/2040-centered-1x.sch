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
Wire Wire Line
	4700 3150 4700 3050
Wire Wire Line
	4900 3000 4900 3050
Wire Wire Line
	4750 3800 4750 3900
Wire Wire Line
	4750 3900 4500 3900
Wire Wire Line
	4500 3900 4500 3150
Wire Wire Line
	4500 2300 4700 2300
Wire Wire Line
	4700 2300 4700 2400
Wire Wire Line
	4900 2400 4900 2300
Wire Wire Line
	4900 2300 5100 2300
Wire Wire Line
	5100 2300 5100 3150
Wire Wire Line
	5100 3900 4850 3900
Wire Wire Line
	4850 3900 4850 3800
$Comp
L Connector:TestPoint Coll1
U 1 1 603B2707
P 4500 3150
F 0 "Coll1" V 4695 3222 50  0000 C CNN
F 1 "TestPoint" V 4604 3222 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 4700 3150 50  0001 C CNN
F 3 "~" H 4700 3150 50  0001 C CNN
	1    4500 3150
	0    -1   -1   0   
$EndComp
Connection ~ 4500 3150
Wire Wire Line
	4500 3150 4500 2300
$Comp
L Connector:TestPoint Em1
U 1 1 603B3794
P 5100 3150
F 0 "Em1" V 5054 3338 50  0000 L CNN
F 1 "TestPoint" V 5145 3338 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 5300 3150 50  0001 C CNN
F 3 "~" H 5300 3150 50  0001 C CNN
	1    5100 3150
	0    1    1    0   
$EndComp
Connection ~ 5100 3150
Wire Wire Line
	5100 3150 5100 3900
$Comp
L Connector:TestPoint Cath1
U 1 1 603B432D
P 4900 3050
F 0 "Cath1" V 4854 3238 50  0000 L CNN
F 1 "TestPoint" V 4945 3238 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 5100 3050 50  0001 C CNN
F 3 "~" H 5100 3050 50  0001 C CNN
	1    4900 3050
	0    1    1    0   
$EndComp
Connection ~ 4900 3050
Wire Wire Line
	4900 3050 4900 3150
$Comp
L Connector:TestPoint An1
U 1 1 603B4D4C
P 4700 3050
F 0 "An1" V 4895 3122 50  0000 C CNN
F 1 "TestPoint" V 4804 3122 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 4900 3050 50  0001 C CNN
F 3 "~" H 4900 3050 50  0001 C CNN
	1    4700 3050
	0    -1   -1   0   
$EndComp
Connection ~ 4700 3050
Wire Wire Line
	4700 3050 4700 3000
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
Text Label 5100 2450 0    50   ~ 0
Emitter
Text Label 4500 2450 2    50   ~ 0
Collector
Text Label 4900 3150 0    50   ~ 0
Cathode
Text Label 4700 3150 2    50   ~ 0
Anode
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J1
U 1 1 603B1A9B
P 4850 3500
F 0 "J1" H 4900 3717 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 4900 3626 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_2x02_Pitch2.54mm" H 4850 3500 50  0001 C CNN
F 3 "~" H 4850 3500 50  0001 C CNN
	1    4850 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	4700 3150 4750 3300
Wire Wire Line
	4900 3150 4850 3300
$EndSCHEMATC
