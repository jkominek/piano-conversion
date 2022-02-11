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
P 3800 3800
F 0 "H1" H 3900 3846 50  0000 L CNN
F 1 "MountingHole" H 3900 3755 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 3800 3800 50  0001 C CNN
F 3 "~" H 3800 3800 50  0001 C CNN
	1    3800 3800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 603B685B
P 3800 4000
F 0 "H2" H 3900 4046 50  0000 L CNN
F 1 "MountingHole" H 3900 3955 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 3800 4000 50  0001 C CNN
F 3 "~" H 3800 4000 50  0001 C CNN
	1    3800 4000
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
	3600 3050 3900 3050
Wire Wire Line
	4250 3050 4250 3000
Wire Wire Line
	4450 3000 4450 3050
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
$Comp
L Sensor_Proximity:CNY70 U3
U 1 1 603B5856
P 5200 2700
F 0 "U3" H 5200 3017 50  0000 C CNN
F 1 "CNY70" H 5200 2926 50  0000 C CNN
F 2 "OptoDevice:Vishay_CNY70" H 5200 2500 50  0001 C CNN
F 3 "https://www.vishay.com/docs/83751/cny70.pdf" H 5200 2800 50  0001 C CNN
	1    5200 2700
	0    -1   -1   0   
$EndComp
$Comp
L Sensor_Proximity:CNY70 U4
U 1 1 603B62E7
P 6000 2700
F 0 "U4" H 6000 3017 50  0000 C CNN
F 1 "CNY70" H 6000 2926 50  0000 C CNN
F 2 "OptoDevice:Vishay_CNY70" H 6000 2500 50  0001 C CNN
F 3 "https://www.vishay.com/docs/83751/cny70.pdf" H 6000 2800 50  0001 C CNN
	1    6000 2700
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x10_Male J1
U 1 1 603B75E2
P 4150 1800
F 0 "J1" V 3985 1728 50  0000 C CNN
F 1 "Conn_01x10_Male" V 4076 1728 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x10_Pitch2.54mm" H 4150 1800 50  0001 C CNN
F 3 "~" H 4150 1800 50  0001 C CNN
	1    4150 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	6100 3000 6100 3050
Wire Wire Line
	6100 3050 6250 3050
Wire Wire Line
	6250 3050 6250 2050
Wire Wire Line
	6250 2050 4550 2050
Wire Wire Line
	4550 2050 4550 2000
Wire Wire Line
	4150 2250 5100 2250
Wire Wire Line
	5100 2250 5100 2400
Wire Wire Line
	4250 2000 4250 2200
Wire Wire Line
	4250 2200 5300 2200
Wire Wire Line
	5300 2200 5300 2400
Wire Wire Line
	4350 2000 4350 2150
Wire Wire Line
	4350 2150 5900 2150
Wire Wire Line
	5900 2150 5900 2400
Wire Wire Line
	4450 2000 4450 2100
Wire Wire Line
	4450 2100 6100 2100
Wire Wire Line
	6100 2100 6100 2400
Wire Wire Line
	5100 3050 5100 3000
Wire Wire Line
	4450 3050 4750 3050
Wire Wire Line
	5300 3000 5300 3050
Wire Wire Line
	5300 3050 5600 3050
Wire Wire Line
	5900 3050 5900 3000
$Comp
L Mechanical:MountingHole H3
U 1 1 603C113D
P 4600 3800
F 0 "H3" H 4700 3846 50  0000 L CNN
F 1 "MountingHole" H 4700 3755 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 4600 3800 50  0001 C CNN
F 3 "~" H 4600 3800 50  0001 C CNN
	1    4600 3800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H5
U 1 1 603C1143
P 4600 4000
F 0 "H5" H 4700 4046 50  0000 L CNN
F 1 "MountingHole" H 4700 3955 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 4600 4000 50  0001 C CNN
F 3 "~" H 4600 4000 50  0001 C CNN
	1    4600 4000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 603C25A4
P 5400 3800
F 0 "H4" H 5500 3846 50  0000 L CNN
F 1 "MountingHole" H 5500 3755 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 5400 3800 50  0001 C CNN
F 3 "~" H 5400 3800 50  0001 C CNN
	1    5400 3800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H6
U 1 1 603C25AA
P 5400 4000
F 0 "H6" H 5500 4046 50  0000 L CNN
F 1 "MountingHole" H 5500 3955 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 5400 4000 50  0001 C CNN
F 3 "~" H 5400 4000 50  0001 C CNN
	1    5400 4000
	1    0    0    -1  
$EndComp
Text Label 3250 2250 0    50   ~ 0
POS
Text Label 6150 2050 0    50   ~ 0
NEG
Text Label 3500 2300 0    50   ~ 0
C1
Text Label 3700 2350 0    50   ~ 0
E1
Text Label 4000 2350 0    50   ~ 0
C2
Text Label 4200 2300 0    50   ~ 0
E2
Text Label 4750 2250 0    50   ~ 0
C3
Text Label 4900 2200 0    50   ~ 0
E3
Text Label 5550 2150 0    50   ~ 0
C4
Text Label 5700 2100 0    50   ~ 0
E4
$Comp
L Connector:TestPoint TP1
U 1 1 603B7DCD
P 3900 3050
F 0 "TP1" H 3842 3076 50  0000 R CNN
F 1 "TestPoint" H 3842 3167 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 4100 3050 50  0001 C CNN
F 3 "~" H 4100 3050 50  0001 C CNN
	1    3900 3050
	-1   0    0    1   
$EndComp
Connection ~ 3900 3050
Wire Wire Line
	3900 3050 4250 3050
$Comp
L Connector:TestPoint TP2
U 1 1 603B8AC1
P 4750 3050
F 0 "TP2" H 4692 3076 50  0000 R CNN
F 1 "TestPoint" H 4692 3167 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 4950 3050 50  0001 C CNN
F 3 "~" H 4950 3050 50  0001 C CNN
	1    4750 3050
	-1   0    0    1   
$EndComp
Connection ~ 4750 3050
Wire Wire Line
	4750 3050 5100 3050
$Comp
L Connector:TestPoint TP3
U 1 1 603B8F77
P 5600 3050
F 0 "TP3" H 5542 3076 50  0000 R CNN
F 1 "TestPoint" H 5542 3167 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 5800 3050 50  0001 C CNN
F 3 "~" H 5800 3050 50  0001 C CNN
	1    5600 3050
	-1   0    0    1   
$EndComp
Connection ~ 5600 3050
Wire Wire Line
	5600 3050 5900 3050
$EndSCHEMATC
