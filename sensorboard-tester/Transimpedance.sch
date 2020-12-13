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
Text HLabel 8550 1450 0    50   BiDi ~ 0
OP+
Text HLabel 5600 2850 0    50   BiDi ~ 0
OP-
Text HLabel 6850 3000 2    50   BiDi ~ 0
OP_OUT
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J?
U 1 1 5FC69E13
P 3550 1700
AR Path="/5FC34DE6/5FC69E13" Ref="J?"  Part="1" 
AR Path="/5FC566FE/5FC69E13" Ref="J7"  Part="1" 
F 0 "J7" V 3554 1780 50  0000 L CNN
F 1 "Sensor" V 3645 1780 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x02_Pitch2.54mm" H 3550 1700 50  0001 C CNN
F 3 "~" H 3550 1700 50  0001 C CNN
	1    3550 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	3550 1500 3550 1300
Wire Wire Line
	3450 1500 3450 1300
Wire Wire Line
	3450 1300 3000 1300
Wire Wire Line
	3450 2000 3450 2200
Wire Wire Line
	3450 2200 3250 2200
Wire Wire Line
	3550 2000 3550 2200
Wire Wire Line
	3550 2200 3750 2200
Text Label 3000 1300 0    50   ~ 0
Emitter
Text Label 4050 1300 2    50   ~ 0
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
P 9600 1350
F 0 "#PWR0105" H 9600 1200 50  0001 C CNN
F 1 "+5V" H 9615 1523 50  0000 C CNN
F 2 "" H 9600 1350 50  0001 C CNN
F 3 "" H 9600 1350 50  0001 C CNN
	1    9600 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5FC70CC0
P 9100 1900
F 0 "#PWR0109" H 9100 1650 50  0001 C CNN
F 1 "GND" H 9105 1727 50  0000 C CNN
F 2 "" H 9100 1900 50  0001 C CNN
F 3 "" H 9100 1900 50  0001 C CNN
	1    9100 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV?
U 1 1 5FC75C88
P 6400 2850
AR Path="/5FC34DE6/5FC75C88" Ref="RV?"  Part="1" 
AR Path="/5FC566FE/5FC75C88" Ref="RV3"  Part="1" 
F 0 "RV3" V 6193 2850 50  0000 C CNN
F 1 "R_POT" V 6284 2850 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_WirePads_Small" H 6400 2850 50  0001 C CNN
F 3 "~" H 6400 2850 50  0001 C CNN
	1    6400 2850
	0    -1   1    0   
$EndComp
Wire Wire Line
	6400 3000 6700 3000
$Comp
L Connector:Conn_01x02_Male J9
U 1 1 5FC7731D
P 5400 2500
F 0 "J9" H 5508 2681 50  0000 C CNN
F 1 "PTCurrent" H 5508 2590 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 5400 2500 50  0001 C CNN
F 3 "~" H 5400 2500 50  0001 C CNN
	1    5400 2500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J8
U 1 1 5FC791F7
P 3550 900
F 0 "J8" V 3612 944 50  0000 L CNN
F 1 "PTVoltage" V 3703 944 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 3550 900 50  0001 C CNN
F 3 "~" H 3550 900 50  0001 C CNN
	1    3550 900 
	0    1    1    0   
$EndComp
Wire Wire Line
	3450 1300 3450 1100
Connection ~ 3450 1300
Wire Wire Line
	3550 1300 3550 1100
Connection ~ 3550 1300
Text HLabel 3250 2200 0    50   BiDi ~ 0
Anode
Text HLabel 3750 2200 2    50   BiDi ~ 0
Cathode
Wire Wire Line
	5600 2850 5950 2850
Wire Wire Line
	5600 2600 5950 2600
Wire Wire Line
	5950 2600 5950 2850
Connection ~ 5950 2850
Wire Wire Line
	5950 2850 6150 2850
Wire Wire Line
	5600 2500 6100 2500
Text Label 6100 2500 2    50   ~ 0
Emitter
Wire Wire Line
	4200 1300 4200 1150
Wire Wire Line
	3550 1300 4200 1300
$Comp
L power:+3.3V #PWR0111
U 1 1 64677130
P 4200 1150
F 0 "#PWR0111" H 4200 1000 50  0001 C CNN
F 1 "+3.3V" H 4215 1323 50  0000 C CNN
F 2 "" H 4200 1150 50  0001 C CNN
F 3 "" H 4200 1150 50  0001 C CNN
	1    4200 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 6467AFEB
P 8450 3150
F 0 "#PWR0113" H 8450 2900 50  0001 C CNN
F 1 "GND" H 8455 2977 50  0000 C CNN
F 2 "" H 8450 3150 50  0001 C CNN
F 3 "" H 8450 3150 50  0001 C CNN
	1    8450 3150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0114
U 1 1 6467B5E4
P 8900 2550
F 0 "#PWR0114" H 8900 2400 50  0001 C CNN
F 1 "+5V" H 8915 2723 50  0000 C CNN
F 2 "" H 8900 2550 50  0001 C CNN
F 3 "" H 8900 2550 50  0001 C CNN
	1    8900 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 3150 8450 3100
Wire Wire Line
	8750 2750 8900 2750
Wire Wire Line
	8900 2750 8900 2550
Wire Wire Line
	8150 2750 7750 2750
Wire Wire Line
	7750 2750 7750 2650
$Comp
L power:+3.3V #PWR0115
U 1 1 6467D32F
P 7750 2650
F 0 "#PWR0115" H 7750 2500 50  0001 C CNN
F 1 "+3.3V" H 7765 2823 50  0000 C CNN
F 2 "" H 7750 2650 50  0001 C CNN
F 3 "" H 7750 2650 50  0001 C CNN
	1    7750 2650
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AMS1117-1.5 U2
U 1 1 6467DF28
P 8450 2750
F 0 "U2" H 8450 2992 50  0000 C CNN
F 1 "LD1086V33-DG" H 8450 2901 50  0000 C CNN
F 2 "TO_SOT_Packages_THT:TO-220-3_Vertical" H 8450 2950 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 8550 2500 50  0001 C CNN
	1    8450 2750
	-1   0    0    -1  
$EndComp
$Comp
L Regulator_Linear:MIC5365-3.3YC5 U3
U 1 1 6467ECFF
P 9100 1550
F 0 "U3" H 9100 1917 50  0000 C CNN
F 1 "MIC5366-2.0YC5-TR" H 9100 1826 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-353_SC-70-5_Handsoldering" H 9100 1900 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/mic5365.pdf" H 8800 2350 50  0001 C CNN
	1    9100 1550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8700 1450 8650 1450
Wire Wire Line
	9500 1450 9600 1450
Wire Wire Line
	9600 1450 9600 1350
Wire Wire Line
	9500 1650 9600 1650
Wire Wire Line
	9600 1650 9600 1450
Connection ~ 9600 1450
$Comp
L Device:C_Small C4
U 1 1 646822F3
P 8900 2950
F 0 "C4" H 8992 2996 50  0000 L CNN
F 1 "10uF" H 8992 2905 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.00mm" H 8900 2950 50  0001 C CNN
F 3 "~" H 8900 2950 50  0001 C CNN
	1    8900 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 646825B5
P 7750 2950
F 0 "C2" H 7842 2996 50  0000 L CNN
F 1 "10uF" H 7842 2905 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.00mm" H 7750 2950 50  0001 C CNN
F 3 "~" H 7750 2950 50  0001 C CNN
	1    7750 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 64682D5A
P 9750 1650
F 0 "C5" H 9842 1696 50  0000 L CNN
F 1 "1uF" H 9842 1605 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.00mm" H 9750 1650 50  0001 C CNN
F 3 "~" H 9750 1650 50  0001 C CNN
	1    9750 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 64683380
P 8650 1650
F 0 "C3" H 8742 1696 50  0000 L CNN
F 1 "1uF" H 8742 1605 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.00mm" H 8650 1650 50  0001 C CNN
F 3 "~" H 8650 1650 50  0001 C CNN
	1    8650 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 1450 8650 1550
Connection ~ 8650 1450
Wire Wire Line
	8650 1450 8550 1450
Wire Wire Line
	8650 1750 8650 1850
Wire Wire Line
	8650 1850 9100 1850
Wire Wire Line
	9100 1850 9100 1900
Connection ~ 9100 1850
Wire Wire Line
	9750 1550 9750 1450
Wire Wire Line
	9750 1450 9600 1450
Wire Wire Line
	9750 1750 9750 1850
Wire Wire Line
	9750 1850 9100 1850
Wire Wire Line
	8900 2850 8900 2750
Connection ~ 8900 2750
Wire Wire Line
	8900 3050 8900 3100
Wire Wire Line
	8900 3100 8450 3100
Connection ~ 8450 3100
Wire Wire Line
	8450 3100 8450 3050
Wire Wire Line
	8450 3100 7750 3100
Wire Wire Line
	7750 3100 7750 3050
Wire Wire Line
	7750 2850 7750 2750
Connection ~ 7750 2750
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 6468831B
P 6700 2850
AR Path="/5FC34DE6/6468831B" Ref="TP?"  Part="1" 
AR Path="/5FC566FE/6468831B" Ref="TP10"  Part="1" 
F 0 "TP10" H 6853 2951 50  0000 L CNN
F 1 "TestPoint_Probe" H 6853 2860 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 6900 2850 50  0001 C CNN
F 3 "~" H 6900 2850 50  0001 C CNN
	1    6700 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 3000 6700 2850
Connection ~ 6700 3000
Wire Wire Line
	6700 3000 6850 3000
$Comp
L Connector:Conn_01x02_Male J5
U 1 1 5FD3CAE4
P 6350 3500
F 0 "J5" V 6412 3544 50  0000 L CNN
F 1 "StabilizingCap" V 6503 3544 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 6350 3500 50  0001 C CNN
F 3 "~" H 6350 3500 50  0001 C CNN
	1    6350 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6350 3300 6350 3150
Wire Wire Line
	6350 3150 6150 3150
Wire Wire Line
	6150 3150 6150 2850
Connection ~ 6150 2850
Wire Wire Line
	6150 2850 6250 2850
Wire Wire Line
	6450 3300 6450 3150
Wire Wire Line
	6700 3150 6700 3000
Wire Wire Line
	6450 3150 6700 3150
$EndSCHEMATC
