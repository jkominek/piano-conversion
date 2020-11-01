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
U 1 1 5F9E5915
P 5750 3100
F 0 "U1" V 5796 2912 50  0000 R CNN
F 1 "CNY70" V 5705 2912 50  0000 R CNN
F 2 "OptoDevice:Vishay_CNY70" H 5750 2900 50  0001 C CNN
F 3 "https://www.vishay.com/docs/83751/cny70.pdf" H 5750 3200 50  0001 C CNN
	1    5750 3100
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J1
U 1 1 5F9E9C7E
P 5800 3800
F 0 "J1" V 5804 3880 50  0000 L CNN
F 1 "Conn_02x02_Odd_Even" V 5895 3880 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Angled_2x02_Pitch2.54mm" H 5800 3800 50  0001 C CNN
F 3 "~" H 5800 3800 50  0001 C CNN
	1    5800 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 3400 5650 3500
Wire Wire Line
	5650 3500 5700 3500
Wire Wire Line
	5700 3500 5700 3550
Wire Wire Line
	5800 3600 5800 3500
Wire Wire Line
	5800 3500 5850 3500
Wire Wire Line
	5850 3500 5850 3400
Wire Wire Line
	5400 4150 5700 4150
Wire Wire Line
	5700 4150 5700 4100
Wire Wire Line
	6100 4150 5800 4150
Wire Wire Line
	5800 4150 5800 4100
Wire Wire Line
	6100 2600 5650 2600
Wire Wire Line
	5650 2600 5650 2800
Wire Wire Line
	6100 2600 6100 2800
Wire Wire Line
	5400 2700 5850 2700
Wire Wire Line
	5850 2700 5850 2800
$Comp
L Mechanical:MountingHole H1
U 1 1 5F9ED769
P 7000 2200
F 0 "H1" H 7100 2246 50  0000 L CNN
F 1 "MountingHole" H 7100 2155 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 7000 2200 50  0001 C CNN
F 3 "~" H 7000 2200 50  0001 C CNN
	1    7000 2200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5F9EDDDA
P 7000 2400
F 0 "H2" H 7100 2446 50  0000 L CNN
F 1 "MountingHole" H 7100 2355 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 7000 2400 50  0001 C CNN
F 3 "~" H 7000 2400 50  0001 C CNN
	1    7000 2400
	1    0    0    -1  
$EndComp
Text Label 5700 3500 2    50   ~ 0
Anode
Text Label 5800 3500 0    50   ~ 0
Cathode
Text Label 5650 2600 0    50   ~ 0
Collector
Text Label 5550 2700 2    50   ~ 0
Emitter
$Comp
L Connector:TestPoint Coll1
U 1 1 5F9F141D
P 6100 2800
F 0 "Coll1" V 6054 2988 50  0000 L CNN
F 1 "TestPoint" V 6145 2988 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 6300 2800 50  0001 C CNN
F 3 "~" H 6300 2800 50  0001 C CNN
	1    6100 2800
	0    1    1    0   
$EndComp
Connection ~ 6100 2800
Wire Wire Line
	6100 2800 6100 4150
$Comp
L Connector:TestPoint Emit1
U 1 1 5F9F22A3
P 5400 3050
F 0 "Emit1" V 5595 3122 50  0000 C CNN
F 1 "TestPoint" V 5504 3122 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 5600 3050 50  0001 C CNN
F 3 "~" H 5600 3050 50  0001 C CNN
	1    5400 3050
	0    -1   -1   0   
$EndComp
Connection ~ 5400 3050
Wire Wire Line
	5400 3050 5400 4150
Wire Wire Line
	5400 2700 5400 3050
$Comp
L Connector:TestPoint Cath1
U 1 1 5F9F308A
P 5800 3600
F 0 "Cath1" V 5754 3788 50  0000 L CNN
F 1 "TestPoint" V 5845 3788 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 6000 3600 50  0001 C CNN
F 3 "~" H 6000 3600 50  0001 C CNN
	1    5800 3600
	0    1    1    0   
$EndComp
Connection ~ 5800 3600
$Comp
L Connector:TestPoint An1
U 1 1 5F9F39CC
P 5700 3550
F 0 "An1" V 5895 3622 50  0000 C CNN
F 1 "TestPoint" V 5804 3622 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 5900 3550 50  0001 C CNN
F 3 "~" H 5900 3550 50  0001 C CNN
	1    5700 3550
	0    -1   -1   0   
$EndComp
Connection ~ 5700 3550
Wire Wire Line
	5700 3550 5700 3600
$EndSCHEMATC
