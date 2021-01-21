EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 9600 1600 0    50   BiDi ~ 0
OP+
Text HLabel 5300 1650 0    50   BiDi ~ 0
OP-
Text HLabel 6550 1800 2    50   BiDi ~ 0
OP_OUT
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J?
U 1 1 5FC69E13
P 3550 2250
AR Path="/5FC34DE6/5FC69E13" Ref="J?"  Part="1" 
AR Path="/5FC566FE/5FC69E13" Ref="J7"  Part="1" 
F 0 "J7" V 3554 2330 50  0000 L CNN
F 1 "Sensor" V 3645 2330 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x02_Pitch2.54mm" H 3550 2250 50  0001 C CNN
F 3 "~" H 3550 2250 50  0001 C CNN
	1    3550 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	3550 2050 3550 1850
Wire Wire Line
	3450 2050 3450 1850
Wire Wire Line
	3450 1850 3000 1850
Wire Wire Line
	3450 2550 3450 2750
Wire Wire Line
	3450 2750 3250 2750
Wire Wire Line
	3550 2550 3550 2750
Wire Wire Line
	3550 2750 3750 2750
Text Label 3000 1850 0    50   ~ 0
Emitter
Text Label 4050 1850 2    50   ~ 0
Collector
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 5FC6D6E7
P 1700 1450
AR Path="/5FC34DE6/5FC6D6E7" Ref="TP?"  Part="1" 
AR Path="/5FC566FE/5FC6D6E7" Ref="TP5"  Part="1" 
F 0 "TP5" H 1853 1551 50  0000 L CNN
F 1 "TestPoint_Probe" H 1853 1460 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 1900 1450 50  0001 C CNN
F 3 "~" H 1900 1450 50  0001 C CNN
	1    1700 1450
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 5FC6D6ED
P 1700 1650
AR Path="/5FC34DE6/5FC6D6ED" Ref="TP?"  Part="1" 
AR Path="/5FC566FE/5FC6D6ED" Ref="TP6"  Part="1" 
F 0 "TP6" H 1853 1751 50  0000 L CNN
F 1 "TestPoint_Probe" H 1853 1660 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 1900 1650 50  0001 C CNN
F 3 "~" H 1900 1650 50  0001 C CNN
	1    1700 1650
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 5FC6D6F3
P 1700 1850
AR Path="/5FC34DE6/5FC6D6F3" Ref="TP?"  Part="1" 
AR Path="/5FC566FE/5FC6D6F3" Ref="TP7"  Part="1" 
F 0 "TP7" H 1853 1951 50  0000 L CNN
F 1 "TestPoint_Probe" H 1853 1860 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 1900 1850 50  0001 C CNN
F 3 "~" H 1900 1850 50  0001 C CNN
	1    1700 1850
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 5FC6D6F9
P 1700 2050
AR Path="/5FC34DE6/5FC6D6F9" Ref="TP?"  Part="1" 
AR Path="/5FC566FE/5FC6D6F9" Ref="TP8"  Part="1" 
F 0 "TP8" H 1853 2151 50  0000 L CNN
F 1 "TestPoint_Probe" H 1853 2060 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 1900 2050 50  0001 C CNN
F 3 "~" H 1900 2050 50  0001 C CNN
	1    1700 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 1450 1250 1450
Wire Wire Line
	1700 1650 1250 1650
Wire Wire Line
	1700 1850 1250 1850
Wire Wire Line
	1700 2050 1250 2050
Text Label 1250 1450 0    50   ~ 0
Cathode
Text Label 1250 1650 0    50   ~ 0
Collector
Text Label 1250 1850 0    50   ~ 0
Anode
Text Label 1250 2050 0    50   ~ 0
Emitter
$Comp
L power:+5V #PWR0105
U 1 1 5FC708C4
P 10650 1500
F 0 "#PWR0105" H 10650 1350 50  0001 C CNN
F 1 "+5V" H 10665 1673 50  0000 C CNN
F 2 "" H 10650 1500 50  0001 C CNN
F 3 "" H 10650 1500 50  0001 C CNN
	1    10650 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5FC70CC0
P 10150 2050
F 0 "#PWR0109" H 10150 1800 50  0001 C CNN
F 1 "GND" H 10155 1877 50  0000 C CNN
F 2 "" H 10150 2050 50  0001 C CNN
F 3 "" H 10150 2050 50  0001 C CNN
	1    10150 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV?
U 1 1 5FC75C88
P 6100 1650
AR Path="/5FC34DE6/5FC75C88" Ref="RV?"  Part="1" 
AR Path="/5FC566FE/5FC75C88" Ref="RV3"  Part="1" 
F 0 "RV3" V 5893 1650 50  0000 C CNN
F 1 "R_POT" V 5984 1650 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_WirePads_Small" H 6100 1650 50  0001 C CNN
F 3 "~" H 6100 1650 50  0001 C CNN
	1    6100 1650
	0    -1   1    0   
$EndComp
Wire Wire Line
	6100 1800 6400 1800
$Comp
L Connector:Conn_01x02_Male J9
U 1 1 5FC7731D
P 5100 1300
F 0 "J9" H 5208 1481 50  0000 C CNN
F 1 "PTCurrentShunt" H 5208 1390 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 5100 1300 50  0001 C CNN
F 3 "~" H 5100 1300 50  0001 C CNN
	1    5100 1300
	1    0    0    -1  
$EndComp
Connection ~ 3450 1850
Connection ~ 3550 1850
Text HLabel 3250 2750 0    50   BiDi ~ 0
Anode
Text HLabel 3750 2750 2    50   BiDi ~ 0
Cathode
Wire Wire Line
	5300 1650 5650 1650
Wire Wire Line
	5300 1400 5650 1400
Wire Wire Line
	5650 1400 5650 1650
Connection ~ 5650 1650
Wire Wire Line
	5650 1650 5850 1650
Wire Wire Line
	5300 1300 5800 1300
Text Label 5800 1300 2    50   ~ 0
Emitter
Wire Wire Line
	4200 1850 4200 1700
Wire Wire Line
	3550 1850 4200 1850
$Comp
L power:+3.3V #PWR0111
U 1 1 64677130
P 4200 1700
F 0 "#PWR0111" H 4200 1550 50  0001 C CNN
F 1 "+3.3V" H 4215 1873 50  0000 C CNN
F 2 "" H 4200 1700 50  0001 C CNN
F 3 "" H 4200 1700 50  0001 C CNN
	1    4200 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 6467AFEB
P 8300 2050
F 0 "#PWR0113" H 8300 1800 50  0001 C CNN
F 1 "GND" H 8305 1877 50  0000 C CNN
F 2 "" H 8300 2050 50  0001 C CNN
F 3 "" H 8300 2050 50  0001 C CNN
	1    8300 2050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0114
U 1 1 6467B5E4
P 8750 1450
F 0 "#PWR0114" H 8750 1300 50  0001 C CNN
F 1 "+5V" H 8765 1623 50  0000 C CNN
F 2 "" H 8750 1450 50  0001 C CNN
F 3 "" H 8750 1450 50  0001 C CNN
	1    8750 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 2050 8300 2000
Wire Wire Line
	8600 1650 8750 1650
Wire Wire Line
	8750 1650 8750 1450
Wire Wire Line
	8000 1650 7600 1650
Wire Wire Line
	7600 1650 7600 1550
$Comp
L power:+3.3V #PWR0115
U 1 1 6467D32F
P 7600 1550
F 0 "#PWR0115" H 7600 1400 50  0001 C CNN
F 1 "+3.3V" H 7615 1723 50  0000 C CNN
F 2 "" H 7600 1550 50  0001 C CNN
F 3 "" H 7600 1550 50  0001 C CNN
	1    7600 1550
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AMS1117-1.5 U2
U 1 1 6467DF28
P 8300 1650
F 0 "U2" H 8300 1892 50  0000 C CNN
F 1 "AP2120N-3.3TRG1" H 8300 1801 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 8300 1850 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 8400 1400 50  0001 C CNN
	1    8300 1650
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 646822F3
P 8750 1850
F 0 "C4" H 8842 1896 50  0000 L CNN
F 1 "10uF" H 8842 1805 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.00mm" H 8750 1850 50  0001 C CNN
F 3 "~" H 8750 1850 50  0001 C CNN
	1    8750 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 646825B5
P 7600 1850
F 0 "C2" H 7692 1896 50  0000 L CNN
F 1 "10uF" H 7692 1805 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.00mm" H 7600 1850 50  0001 C CNN
F 3 "~" H 7600 1850 50  0001 C CNN
	1    7600 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 64682D5A
P 10650 1800
F 0 "C5" H 10742 1846 50  0000 L CNN
F 1 "1uF" H 10742 1755 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.00mm" H 10650 1800 50  0001 C CNN
F 3 "~" H 10650 1800 50  0001 C CNN
	1    10650 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 64683380
P 9700 1800
F 0 "C3" H 9792 1846 50  0000 L CNN
F 1 "1uF" H 9792 1755 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.00mm" H 9700 1800 50  0001 C CNN
F 3 "~" H 9700 1800 50  0001 C CNN
	1    9700 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 1600 9700 1700
Connection ~ 9700 1600
Wire Wire Line
	9700 1600 9600 1600
Wire Wire Line
	9700 1900 9700 2000
Wire Wire Line
	9700 2000 10150 2000
Wire Wire Line
	10150 2000 10150 2050
Connection ~ 10150 2000
Wire Wire Line
	10650 1900 10650 2000
Wire Wire Line
	10650 2000 10150 2000
Wire Wire Line
	8750 1750 8750 1650
Connection ~ 8750 1650
Wire Wire Line
	8750 1950 8750 2000
Wire Wire Line
	8750 2000 8300 2000
Connection ~ 8300 2000
Wire Wire Line
	8300 2000 8300 1950
Wire Wire Line
	8300 2000 7600 2000
Wire Wire Line
	7600 2000 7600 1950
Wire Wire Line
	7600 1750 7600 1650
Connection ~ 7600 1650
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 6468831B
P 6400 1650
AR Path="/5FC34DE6/6468831B" Ref="TP?"  Part="1" 
AR Path="/5FC566FE/6468831B" Ref="TP10"  Part="1" 
F 0 "TP10" H 6553 1751 50  0000 L CNN
F 1 "TestPoint_Probe" H 6553 1660 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 6600 1650 50  0001 C CNN
F 3 "~" H 6600 1650 50  0001 C CNN
	1    6400 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 1800 6400 1650
Connection ~ 6400 1800
Wire Wire Line
	6400 1800 6550 1800
$Comp
L Connector:Conn_01x02_Female J5
U 1 1 5FD3CAE4
P 6150 2300
F 0 "J5" V 6000 2350 50  0000 L CNN
F 1 "StabilizingCap" V 6100 2350 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 6150 2300 50  0001 C CNN
F 3 "~" H 6150 2300 50  0001 C CNN
	1    6150 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	6050 2100 6050 1950
Wire Wire Line
	6050 1950 5850 1950
Wire Wire Line
	5850 1950 5850 1650
Connection ~ 5850 1650
Wire Wire Line
	5850 1650 5950 1650
Wire Wire Line
	6150 2100 6150 1950
Wire Wire Line
	6400 1950 6400 1800
Wire Wire Line
	6150 1950 6400 1950
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J?
U 1 1 5FE14A6D
P 3550 1050
AR Path="/5FC34DE6/5FE14A6D" Ref="J?"  Part="1" 
AR Path="/5FC566FE/5FE14A6D" Ref="J11"  Part="1" 
F 0 "J11" V 3554 1130 50  0000 L CNN
F 1 "Sensor" V 3645 1130 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x02_Pitch2.54mm" H 3550 1050 50  0001 C CNN
F 3 "~" H 3550 1050 50  0001 C CNN
	1    3550 1050
	0    1    1    0   
$EndComp
Wire Wire Line
	3450 850  3450 750 
Wire Wire Line
	3450 750  3250 750 
Wire Wire Line
	3550 850  3550 750 
Wire Wire Line
	3550 750  3750 750 
Text HLabel 3250 750  0    50   BiDi ~ 0
Anode
Text HLabel 3750 750  2    50   BiDi ~ 0
Cathode
Wire Wire Line
	3450 1350 3450 1850
Wire Wire Line
	3550 1350 3550 1850
$Comp
L Regulator_Linear:AMS1117-1.5 U3
U 1 1 60378B2C
P 10150 1600
F 0 "U3" H 10150 1842 50  0000 C CNN
F 1 "MCP1700T-2002E/TT" H 10150 1751 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 10150 1800 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 10250 1350 50  0001 C CNN
	1    10150 1600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10650 1500 10650 1600
Wire Wire Line
	10450 1600 10650 1600
Connection ~ 10650 1600
Wire Wire Line
	10650 1600 10650 1700
Wire Wire Line
	10150 1900 10150 2000
Wire Wire Line
	9700 1600 9850 1600
$EndSCHEMATC
