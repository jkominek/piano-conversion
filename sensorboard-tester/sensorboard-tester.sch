EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
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
L Connector:Conn_01x02_Female J0
U 1 1 5FC23940
P 8000 2950
F 0 "J0" H 7892 2625 50  0000 C CNN
F 1 "Power" H 7892 2716 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 8000 2950 50  0001 C CNN
F 3 "~" H 8000 2950 50  0001 C CNN
	1    8000 2950
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 5FC253FF
P 10000 2700
F 0 "#PWR0106" H 10000 2550 50  0001 C CNN
F 1 "+5V" H 10015 2873 50  0000 C CNN
F 2 "" H 10000 2700 50  0001 C CNN
F 3 "" H 10000 2700 50  0001 C CNN
	1    10000 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5FC25BF2
P 10000 3500
F 0 "#PWR0107" H 10000 3250 50  0001 C CNN
F 1 "GND" H 10005 3327 50  0000 C CNN
F 2 "" H 10000 3500 50  0001 C CNN
F 3 "" H 10000 3500 50  0001 C CNN
	1    10000 3500
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B J1
U 1 1 5FC27C73
P 8800 3000
F 0 "J1" H 8857 3467 50  0000 C CNN
F 1 "USB_B" H 8857 3376 50  0000 C CNN
F 2 "Connectors:USB_B" H 8950 2950 50  0001 C CNN
F 3 " ~" H 8950 2950 50  0001 C CNN
	1    8800 3000
	1    0    0    -1  
$EndComp
NoConn ~ 8700 3400
NoConn ~ 9100 3100
NoConn ~ 9100 3000
$Comp
L power:GND #PWR0108
U 1 1 5FC29626
P 8800 3500
F 0 "#PWR0108" H 8800 3250 50  0001 C CNN
F 1 "GND" H 8805 3327 50  0000 C CNN
F 2 "" H 8800 3500 50  0001 C CNN
F 3 "" H 8800 3500 50  0001 C CNN
	1    8800 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 3400 8800 3450
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5FC30CF1
P 8300 900
F 0 "H1" H 8400 949 50  0000 L CNN
F 1 "MountingHole_Pad" H 8400 858 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 8300 900 50  0001 C CNN
F 3 "~" H 8300 900 50  0001 C CNN
	1    8300 900 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5FC3182E
P 8600 900
F 0 "H2" H 8700 949 50  0000 L CNN
F 1 "MountingHole_Pad" H 8700 858 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 8600 900 50  0001 C CNN
F 3 "~" H 8600 900 50  0001 C CNN
	1    8600 900 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5FC31C3B
P 8900 900
F 0 "H3" H 9000 949 50  0000 L CNN
F 1 "MountingHole_Pad" H 9000 858 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 8900 900 50  0001 C CNN
F 3 "~" H 8900 900 50  0001 C CNN
	1    8900 900 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5FC3207B
P 9200 900
F 0 "H4" H 9300 949 50  0000 L CNN
F 1 "MountingHole_Pad" H 9300 858 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 9200 900 50  0001 C CNN
F 3 "~" H 9200 900 50  0001 C CNN
	1    9200 900 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5FC32568
P 8300 1150
F 0 "#PWR0110" H 8300 900 50  0001 C CNN
F 1 "GND" H 8305 977 50  0000 C CNN
F 2 "" H 8300 1150 50  0001 C CNN
F 3 "" H 8300 1150 50  0001 C CNN
	1    8300 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 1150 8300 1050
Wire Wire Line
	8300 1050 8600 1050
Wire Wire Line
	9200 1050 9200 1000
Connection ~ 8300 1050
Wire Wire Line
	8300 1050 8300 1000
Wire Wire Line
	8900 1000 8900 1050
Connection ~ 8900 1050
Wire Wire Line
	8900 1050 9200 1050
Wire Wire Line
	8600 1000 8600 1050
Connection ~ 8600 1050
Wire Wire Line
	8600 1050 8900 1050
$Sheet
S 5550 1600 950  700 
U 5FC34DE6
F0 "Simple" 50
F1 "Simple.sch" 50
F2 "OP+" B L 5550 1700 50 
F3 "OP-" B L 5550 2200 50 
F4 "OP_OUT" B L 5550 1950 50 
F5 "Anode" B R 6500 1800 50 
F6 "Cathode" B R 6500 2100 50 
$EndSheet
$Comp
L Device:C_Small C1
U 1 1 5FC4060D
P 10000 3250
F 0 "C1" H 10092 3296 50  0000 L CNN
F 1 "C_Small" H 10092 3205 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D10.0mm_P2.50mm" H 10000 3250 50  0001 C CNN
F 3 "~" H 10000 3250 50  0001 C CNN
	1    10000 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 3050 8350 3050
Wire Wire Line
	8350 3050 8350 3450
Wire Wire Line
	8350 3450 8800 3450
Connection ~ 8800 3450
Wire Wire Line
	8800 3450 8800 3500
Wire Wire Line
	8200 2950 8350 2950
Wire Wire Line
	8350 2950 8350 2400
Wire Wire Line
	9100 2800 9200 2800
Wire Wire Line
	10000 3350 10000 3500
Wire Wire Line
	8350 2400 9200 2400
Wire Wire Line
	9200 2400 9200 2800
Wire Wire Line
	10000 2700 10000 2800
$Comp
L Device:Ferrite_Bead_Small FB1
U 1 1 5FC4B65D
P 9500 2800
F 0 "FB1" V 9263 2800 50  0000 C CNN
F 1 "Ferrite_Bead_Small" V 9354 2800 50  0000 C CNN
F 2 "Inductors_THT:L_Axial_L5.3mm_D2.2mm_P2.54mm_Vertical_Vishay_IM-1" V 9430 2800 50  0001 C CNN
F 3 "~" H 9500 2800 50  0001 C CNN
	1    9500 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	9600 2800 9800 2800
Connection ~ 10000 2800
Wire Wire Line
	10000 2800 10000 3150
Wire Wire Line
	9200 2800 9400 2800
Connection ~ 9200 2800
$Comp
L Device:Opamp_Dual_Generic U1
U 1 1 5FC4E0CC
P 4850 1950
F 0 "U1" H 4750 2450 50  0000 C CNN
F 1 "Opamp_Dual_Generic" H 4800 2350 50  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm_Socket" H 4850 1950 50  0001 C CNN
F 3 "~" H 4850 1950 50  0001 C CNN
	1    4850 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:Opamp_Dual_Generic U1
U 2 1 5FC4EF12
P 4850 3100
F 0 "U1" H 4750 3550 50  0000 C CNN
F 1 "Opamp_Dual_Generic" H 4850 3450 50  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm_Socket" H 4850 3100 50  0001 C CNN
F 3 "~" H 4850 3100 50  0001 C CNN
	2    4850 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:Opamp_Dual_Generic U1
U 3 1 5FC528F8
P 9400 3550
F 0 "U1" V 9075 3550 50  0000 C CNN
F 1 "Opamp_Dual_Generic" V 9166 3550 50  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm_Socket" H 9400 3550 50  0001 C CNN
F 3 "~" H 9400 3550 50  0001 C CNN
	3    9400 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	9700 3450 9800 3450
Wire Wire Line
	9800 3450 9800 2800
Connection ~ 9800 2800
Wire Wire Line
	9800 2800 10000 2800
Wire Wire Line
	9100 3450 8800 3450
$Sheet
S 5550 2750 950  650 
U 5FC566FE
F0 "Transimpedance" 50
F1 "Transimpedance.sch" 50
F2 "OP+" B L 5550 2850 50 
F3 "OP-" B L 5550 3350 50 
F4 "OP_OUT" B L 5550 3100 50 
F5 "Anode" B R 6500 2950 50 
F6 "Cathode" B R 6500 3200 50 
$EndSheet
Wire Wire Line
	5150 1950 5550 1950
Wire Wire Line
	5550 1700 4400 1700
Wire Wire Line
	4400 1850 4550 1850
Wire Wire Line
	4550 2050 4400 2050
Wire Wire Line
	4400 2050 4400 2200
Wire Wire Line
	4400 2200 5550 2200
Wire Wire Line
	4400 1700 4400 1850
Wire Wire Line
	5550 2850 4500 2850
Wire Wire Line
	4500 2850 4500 3000
Wire Wire Line
	4500 3000 4550 3000
Wire Wire Line
	5550 3350 4500 3350
Wire Wire Line
	4500 3350 4500 3200
Wire Wire Line
	4500 3200 4550 3200
Wire Wire Line
	5150 3100 5550 3100
$Comp
L Connector:Conn_01x02_Male J?
U 1 1 5FC7E376
P 6250 4750
AR Path="/5FC34DE6/5FC7E376" Ref="J?"  Part="1" 
AR Path="/5FC7E376" Ref="J2"  Part="1" 
F 0 "J2" H 6358 4931 50  0000 C CNN
F 1 "LEDCurrentShunt" H 6358 4840 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 6250 4750 50  0001 C CNN
F 3 "~" H 6250 4750 50  0001 C CNN
	1    6250 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FC7E37C
P 6650 4950
AR Path="/5FC34DE6/5FC7E37C" Ref="#PWR?"  Part="1" 
AR Path="/5FC7E37C" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 6650 4700 50  0001 C CNN
F 1 "GND" H 6655 4777 50  0000 C CNN
F 2 "" H 6650 4950 50  0001 C CNN
F 3 "" H 6650 4950 50  0001 C CNN
	1    6650 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 4850 6650 4850
Wire Wire Line
	6650 4850 6650 4950
Wire Wire Line
	6450 4750 7150 4750
Text Label 7150 4750 2    50   ~ 0
Cathode
$Comp
L Device:R_POT RV?
U 1 1 5FC7E386
P 8250 4750
AR Path="/5FC34DE6/5FC7E386" Ref="RV?"  Part="1" 
AR Path="/5FC7E386" Ref="RV1"  Part="1" 
F 0 "RV1" V 8135 4750 50  0000 C CNN
F 1 "R_POT" V 8044 4750 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_WirePads_Small" H 8250 4750 50  0001 C CNN
F 3 "~" H 8250 4750 50  0001 C CNN
	1    8250 4750
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5FC7E38C
P 8250 4450
AR Path="/5FC34DE6/5FC7E38C" Ref="#PWR?"  Part="1" 
AR Path="/5FC7E38C" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 8250 4300 50  0001 C CNN
F 1 "+5V" H 8265 4623 50  0000 C CNN
F 2 "" H 8250 4450 50  0001 C CNN
F 3 "" H 8250 4450 50  0001 C CNN
	1    8250 4450
	1    0    0    -1  
$EndComp
NoConn ~ 8400 4750
Text Label 7450 4750 0    50   ~ 0
Anode
Wire Wire Line
	6500 1800 6800 1800
Wire Wire Line
	6800 1800 6800 2950
Wire Wire Line
	6800 2950 6500 2950
Wire Wire Line
	6500 2100 7000 2100
Wire Wire Line
	7000 2100 7000 3200
Wire Wire Line
	7000 3200 6500 3200
Text Label 6600 1800 0    50   ~ 0
Anode
Text Label 6600 3200 0    50   ~ 0
Cathode
Wire Wire Line
	7450 4750 8100 4750
Wire Wire Line
	8250 4450 8250 4600
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 5FC96168
P 8150 1800
AR Path="/5FC34DE6/5FC96168" Ref="TP?"  Part="1" 
AR Path="/5FC96168" Ref="RP1"  Part="1" 
F 0 "RP1" H 8303 1901 50  0000 L CNN
F 1 "TestPoint_Probe" H 8303 1810 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 8350 1800 50  0001 C CNN
F 3 "~" H 8350 1800 50  0001 C CNN
	1    8150 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 1800 7700 1800
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 5FC970E6
P 8150 2000
AR Path="/5FC34DE6/5FC970E6" Ref="TP?"  Part="1" 
AR Path="/5FC970E6" Ref="RP2"  Part="1" 
F 0 "RP2" H 8303 2101 50  0000 L CNN
F 1 "TestPoint_Probe" H 8303 2010 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 8350 2000 50  0001 C CNN
F 3 "~" H 8350 2000 50  0001 C CNN
	1    8150 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 2000 7700 2000
Text Label 7700 1800 0    50   ~ 0
Cathode
$Comp
L power:+5V #PWR0112
U 1 1 5FC98213
P 7700 2000
F 0 "#PWR0112" H 7700 1850 50  0001 C CNN
F 1 "+5V" H 7715 2173 50  0000 C CNN
F 2 "" H 7700 2000 50  0001 C CNN
F 3 "" H 7700 2000 50  0001 C CNN
	1    7700 2000
	1    0    0    -1  
$EndComp
$EndSCHEMATC
