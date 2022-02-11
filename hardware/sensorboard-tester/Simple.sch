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
Text Label 4800 3350 0    50   ~ 0
Emitter
$Comp
L Connector:Conn_01x02_Male J6
U 1 1 5FC3F669
P 5250 3900
F 0 "J6" V 5550 3800 50  0000 L CNN
F 1 "PTCurrentShunt" V 5650 3800 50  0000 L CNN
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
P 6900 3250
F 0 "TP1" H 7053 3351 50  0000 L CNN
F 1 "TestPoint_Probe" H 7053 3260 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 7100 3250 50  0001 C CNN
F 3 "~" H 7100 3250 50  0001 C CNN
	1    6900 3250
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Probe TP2
U 1 1 5FC3F678
P 6900 3450
F 0 "TP2" H 7053 3551 50  0000 L CNN
F 1 "TestPoint_Probe" H 7053 3460 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 7100 3450 50  0001 C CNN
F 3 "~" H 7100 3450 50  0001 C CNN
	1    6900 3450
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Probe TP3
U 1 1 5FC3F67E
P 6900 3650
F 0 "TP3" H 7053 3751 50  0000 L CNN
F 1 "TestPoint_Probe" H 7053 3660 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 7100 3650 50  0001 C CNN
F 3 "~" H 7100 3650 50  0001 C CNN
	1    6900 3650
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Probe TP4
U 1 1 5FC3F684
P 6900 3850
F 0 "TP4" H 7053 3951 50  0000 L CNN
F 1 "TestPoint_Probe" H 7053 3860 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 7100 3850 50  0001 C CNN
F 3 "~" H 7100 3850 50  0001 C CNN
	1    6900 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 3250 6450 3250
Wire Wire Line
	6900 3450 6450 3450
Wire Wire Line
	6900 3650 6450 3650
Wire Wire Line
	6900 3850 6450 3850
Text Label 6450 3250 0    50   ~ 0
Cathode
Text Label 6450 3450 0    50   ~ 0
Collector
Text Label 6450 3650 0    50   ~ 0
Anode
Text Label 6450 3850 0    50   ~ 0
Emitter
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J3
U 1 1 5FC3F692
P 3650 3800
F 0 "J3" V 3654 3880 50  0000 L CNN
F 1 "Sensor" V 3745 3880 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x02_Pitch2.54mm" H 3650 3800 50  0001 C CNN
F 3 "~" H 3650 3800 50  0001 C CNN
	1    3650 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	3650 3600 3650 3400
Wire Wire Line
	3650 3400 4150 3400
Wire Wire Line
	3550 3600 3550 3400
Wire Wire Line
	3550 3400 3100 3400
Wire Wire Line
	3550 4100 3550 4300
Wire Wire Line
	3550 4300 3250 4300
Wire Wire Line
	3650 4100 3650 4300
Wire Wire Line
	3650 4300 3950 4300
Text Label 3100 3400 0    50   ~ 0
Emitter
Text Label 4150 3400 2    50   ~ 0
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
Text HLabel 5850 2700 2    50   BiDi ~ 0
OP+
Text HLabel 5850 2850 2    50   BiDi ~ 0
OP-
Text HLabel 5850 3000 2    50   BiDi ~ 0
OP_OUT
Text HLabel 3250 4300 0    50   BiDi ~ 0
Anode
Text HLabel 3950 4300 2    50   BiDi ~ 0
Cathode
Text Label 3950 4300 2    50   ~ 0
Cathode
Text Label 3550 4300 2    50   ~ 0
Anode
Wire Wire Line
	5850 2850 5600 2850
Wire Wire Line
	5600 2850 5600 3000
Wire Wire Line
	5600 3000 5850 3000
Wire Wire Line
	5400 3350 5400 2700
Wire Wire Line
	5400 2700 5850 2700
Connection ~ 5400 3350
Wire Wire Line
	5400 3350 5500 3350
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J10
U 1 1 5FE12BB4
P 3650 3100
F 0 "J10" V 3654 3180 50  0000 L CNN
F 1 "MirrorSensor" V 3745 3180 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x02_Pitch2.54mm" H 3650 3100 50  0001 C CNN
F 3 "~" H 3650 3100 50  0001 C CNN
	1    3650 3100
	0    1    1    0   
$EndComp
Connection ~ 3650 3400
Connection ~ 3550 3400
Wire Wire Line
	3550 2900 3550 2800
Wire Wire Line
	3550 2800 3250 2800
Wire Wire Line
	3650 2900 3650 2800
Wire Wire Line
	3650 2800 3950 2800
Text HLabel 3250 2800 0    50   BiDi ~ 0
Anode
Text HLabel 3950 2800 2    50   BiDi ~ 0
Cathode
Text Label 3950 2800 2    50   ~ 0
Cathode
Text Label 3550 2800 2    50   ~ 0
Anode
Wire Wire Line
	4800 3350 5400 3350
Wire Wire Line
	5650 3500 5650 3600
$EndSCHEMATC
