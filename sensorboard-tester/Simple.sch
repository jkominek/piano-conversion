EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
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
L Device:R_POT RV2
U 1 1 5FC3F653
P 5650 3350
F 0 "RV2" V 5443 3350 50  0000 C CNN
F 1 "R_POT" V 5534 3350 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_WirePads_Small" H 5650 3350 50  0001 C CNN
F 3 "~" H 5650 3350 50  0001 C CNN
	1    5650 3350
	0    -1   1    0   
$EndComp
Wire Wire Line
	5250 3350 5400 3350
Wire Wire Line
	5650 3500 5650 3600
$Comp
L power:GND #PWR0103
U 1 1 5FC3F65B
P 5650 3600
F 0 "#PWR0103" H 5650 3350 50  0001 C CNN
F 1 "GND" H 5655 3427 50  0000 C CNN
F 2 "" H 5650 3600 50  0001 C CNN
F 3 "" H 5650 3600 50  0001 C CNN
	1    5650 3600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 5FC3F661
P 5250 3150
F 0 "J4" V 5550 3050 50  0000 L CNN
F 1 "PTVoltage" V 5650 3050 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 5250 3150 50  0001 C CNN
F 3 "~" H 5250 3150 50  0001 C CNN
	1    5250 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	5150 3350 4800 3350
Text Label 4800 3350 0    50   ~ 0
Emitter
$Comp
L Connector:Conn_01x02_Male J6
U 1 1 5FC3F669
P 5250 3900
F 0 "J6" V 5550 3800 50  0000 L CNN
F 1 "PTCurrent" V 5650 3800 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 5250 3900 50  0001 C CNN
F 3 "~" H 5250 3900 50  0001 C CNN
	1    5250 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 4100 5600 4100
Wire Wire Line
	5150 4100 4800 4100
Text Label 4800 4100 0    50   ~ 0
Collector
$Comp
L Connector:TestPoint_Probe TP1
U 1 1 5FC3F672
P 6700 3700
F 0 "TP1" H 6853 3801 50  0000 L CNN
F 1 "TestPoint_Probe" H 6853 3710 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 6900 3700 50  0001 C CNN
F 3 "~" H 6900 3700 50  0001 C CNN
	1    6700 3700
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Probe TP2
U 1 1 5FC3F678
P 6700 3900
F 0 "TP2" H 6853 4001 50  0000 L CNN
F 1 "TestPoint_Probe" H 6853 3910 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 6900 3900 50  0001 C CNN
F 3 "~" H 6900 3900 50  0001 C CNN
	1    6700 3900
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Probe TP3
U 1 1 5FC3F67E
P 6700 4100
F 0 "TP3" H 6853 4201 50  0000 L CNN
F 1 "TestPoint_Probe" H 6853 4110 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 6900 4100 50  0001 C CNN
F 3 "~" H 6900 4100 50  0001 C CNN
	1    6700 4100
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Probe TP4
U 1 1 5FC3F684
P 6700 4300
F 0 "TP4" H 6853 4401 50  0000 L CNN
F 1 "TestPoint_Probe" H 6853 4310 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 6900 4300 50  0001 C CNN
F 3 "~" H 6900 4300 50  0001 C CNN
	1    6700 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 3700 6250 3700
Wire Wire Line
	6700 3900 6250 3900
Wire Wire Line
	6700 4100 6250 4100
Wire Wire Line
	6700 4300 6250 4300
Text Label 6250 3700 0    50   ~ 0
Cathode
Text Label 6250 3900 0    50   ~ 0
Collector
Text Label 6250 4100 0    50   ~ 0
Anode
Text Label 6250 4300 0    50   ~ 0
Emitter
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J3
U 1 1 5FC3F692
P 3600 2800
F 0 "J3" V 3604 2880 50  0000 L CNN
F 1 "Sensor" V 3695 2880 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x02_Pitch2.54mm" H 3600 2800 50  0001 C CNN
F 3 "~" H 3600 2800 50  0001 C CNN
	1    3600 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	3600 2600 3600 2400
Wire Wire Line
	3600 2400 4100 2400
Wire Wire Line
	3500 2600 3500 2400
Wire Wire Line
	3500 2400 3050 2400
Wire Wire Line
	3500 3100 3500 3300
Wire Wire Line
	3500 3300 3200 3300
Wire Wire Line
	3600 3100 3600 3300
Wire Wire Line
	3600 3300 3900 3300
Text Label 3050 2400 0    50   ~ 0
Emitter
Text Label 4100 2400 2    50   ~ 0
Collector
$Comp
L power:+5V #PWR0104
U 1 1 5FC3F6A4
P 5600 4100
F 0 "#PWR0104" H 5600 3950 50  0001 C CNN
F 1 "+5V" H 5615 4273 50  0000 C CNN
F 2 "" H 5600 4100 50  0001 C CNN
F 3 "" H 5600 4100 50  0001 C CNN
	1    5600 4100
	1    0    0    -1  
$EndComp
Text HLabel 5850 1450 2    50   BiDi ~ 0
OP+
Text HLabel 5850 1600 2    50   BiDi ~ 0
OP-
Text HLabel 5850 1750 2    50   BiDi ~ 0
OP_OUT
Text HLabel 3200 3300 0    50   BiDi ~ 0
Anode
Text HLabel 3900 3300 2    50   BiDi ~ 0
Cathode
Text Label 3900 3300 2    50   ~ 0
Cathode
Text Label 3500 3300 2    50   ~ 0
Anode
Wire Wire Line
	5850 1600 5600 1600
Wire Wire Line
	5600 1600 5600 1750
Wire Wire Line
	5600 1750 5850 1750
Wire Wire Line
	5400 3350 5400 1450
Wire Wire Line
	5400 1450 5850 1450
Connection ~ 5400 3350
Wire Wire Line
	5400 3350 5500 3350
$Comp
L Connector:TestPoint_Probe TP9
U 1 1 5FC933E2
P 5400 1250
F 0 "TP9" H 5553 1351 50  0000 L CNN
F 1 "BufferedOut" H 5553 1260 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 5600 1250 50  0001 C CNN
F 3 "~" H 5600 1250 50  0001 C CNN
	1    5400 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 1450 5400 1250
Connection ~ 5400 1450
$EndSCHEMATC
