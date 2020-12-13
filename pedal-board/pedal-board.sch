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
L power:GND #PWR04
U 1 1 5FD37B78
P 8100 3750
F 0 "#PWR04" H 8100 3500 50  0001 C CNN
F 1 "GND" H 8105 3577 50  0000 C CNN
F 2 "" H 8100 3750 50  0001 C CNN
F 3 "" H 8100 3750 50  0001 C CNN
	1    8100 3750
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR03
U 1 1 5FD37E4D
P 8100 2350
F 0 "#PWR03" H 8100 2200 50  0001 C CNN
F 1 "+3.3V" H 8115 2523 50  0000 C CNN
F 2 "" H 8100 2350 50  0001 C CNN
F 3 "" H 8100 2350 50  0001 C CNN
	1    8100 2350
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack3 J1
U 1 1 5FD72390
P 1450 2050
F 0 "J1" H 1432 2375 50  0000 C CNN
F 1 "AudioJack0" H 1432 2284 50  0000 C CNN
F 2 "footprints:SJ-63053A" H 1450 2050 50  0001 C CNN
F 3 "~" H 1450 2050 50  0001 C CNN
	1    1450 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R3
U 1 1 5FD72396
P 1900 2050
F 0 "R3" V 1695 2050 50  0000 C CNN
F 1 "10" V 1786 2050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 1900 2050 50  0001 C CNN
F 3 "~" H 1900 2050 50  0001 C CNN
	1    1900 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	1650 2050 1800 2050
$Comp
L Device:R_Small_US R4
U 1 1 5FD7239D
P 1900 2350
F 0 "R4" V 2105 2350 50  0000 C CNN
F 1 "XXX" V 2014 2350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 1900 2350 50  0001 C CNN
F 3 "~" H 1900 2350 50  0001 C CNN
	1    1900 2350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R5
U 1 1 5FD723A3
P 1900 2650
F 0 "R5" V 2105 2650 50  0000 C CNN
F 1 "XXX" V 2014 2650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 1900 2650 50  0001 C CNN
F 3 "~" H 1900 2650 50  0001 C CNN
	1    1900 2650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1650 2150 1700 2150
Wire Wire Line
	1700 2150 1700 2350
Wire Wire Line
	1700 2650 1800 2650
Wire Wire Line
	1700 2350 1800 2350
Connection ~ 1700 2350
Wire Wire Line
	1700 2350 1700 2650
$Comp
L Device:R_Small_US R1
U 1 1 5FD723AF
P 1900 1450
F 0 "R1" V 2105 1450 50  0000 C CNN
F 1 "XXX" V 2014 1450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 1900 1450 50  0001 C CNN
F 3 "~" H 1900 1450 50  0001 C CNN
	1    1900 1450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R2
U 1 1 5FD723B5
P 1900 1750
F 0 "R2" V 2105 1750 50  0000 C CNN
F 1 "XXX" V 2014 1750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 1900 1750 50  0001 C CNN
F 3 "~" H 1900 1750 50  0001 C CNN
	1    1900 1750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1700 1750 1800 1750
Wire Wire Line
	1700 1450 1800 1450
Wire Wire Line
	1650 1950 1700 1950
Wire Wire Line
	1700 1950 1700 1750
Connection ~ 1700 1750
Wire Wire Line
	1700 1750 1700 1450
Wire Wire Line
	2000 2050 2350 2050
Text Label 2800 2050 2    50   ~ 0
CH0
$Comp
L power:GND #PWR02
U 1 1 5FD723C3
P 2200 2750
F 0 "#PWR02" H 2200 2500 50  0001 C CNN
F 1 "GND" H 2205 2577 50  0000 C CNN
F 2 "" H 2200 2750 50  0001 C CNN
F 3 "" H 2200 2750 50  0001 C CNN
	1    2200 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 2650 2200 2650
Wire Wire Line
	2200 2650 2200 2750
Wire Wire Line
	2000 1750 2200 1750
Wire Wire Line
	2200 1750 2200 2650
Connection ~ 2200 2650
Wire Wire Line
	2000 1450 2100 1450
Wire Wire Line
	2100 1450 2100 1300
Wire Wire Line
	2000 2350 2100 2350
Wire Wire Line
	2100 2350 2100 1450
Connection ~ 2100 1450
$Comp
L power:+3.3V #PWR01
U 1 1 5FD723D3
P 2100 1300
F 0 "#PWR01" H 2100 1150 50  0001 C CNN
F 1 "+3.3V" H 2115 1473 50  0000 C CNN
F 2 "" H 2100 1300 50  0001 C CNN
F 3 "" H 2100 1300 50  0001 C CNN
	1    2100 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 2650 7100 2650
Wire Wire Line
	7600 2750 7100 2750
Wire Wire Line
	7600 2850 7100 2850
Wire Wire Line
	7600 2950 7100 2950
Text Label 7100 2650 0    50   ~ 0
CH0
Text Label 7100 2750 0    50   ~ 0
CH1
Text Label 7100 2850 0    50   ~ 0
CH2
Text Label 7100 2950 0    50   ~ 0
CH3
$Comp
L Device:R_Small_US R6
U 1 1 5FD98753
P 2350 1750
F 0 "R6" H 2418 1796 50  0000 L CNN
F 1 "XXX" H 2418 1705 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 2350 1750 50  0001 C CNN
F 3 "~" H 2350 1750 50  0001 C CNN
	1    2350 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R7
U 1 1 5FD99058
P 2350 2350
F 0 "R7" H 2418 2396 50  0000 L CNN
F 1 "XXX" H 2418 2305 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 2350 2350 50  0001 C CNN
F 3 "~" H 2350 2350 50  0001 C CNN
	1    2350 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 2050 2350 2250
Connection ~ 2350 2050
Wire Wire Line
	2350 2050 2800 2050
Wire Wire Line
	2200 2650 2350 2650
Wire Wire Line
	2350 2650 2350 2450
Wire Wire Line
	2350 2050 2350 1850
Wire Wire Line
	2100 1450 2350 1450
Wire Wire Line
	2350 1450 2350 1650
$Comp
L Connector:AudioJack3 J2
U 1 1 5FDA7589
P 3250 2050
F 0 "J2" H 3232 2375 50  0000 C CNN
F 1 "AudioJack1" H 3232 2284 50  0000 C CNN
F 2 "footprints:SJ-63053A" H 3250 2050 50  0001 C CNN
F 3 "~" H 3250 2050 50  0001 C CNN
	1    3250 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R10
U 1 1 5FDA758F
P 3700 2050
F 0 "R10" V 3495 2050 50  0000 C CNN
F 1 "10" V 3586 2050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 3700 2050 50  0001 C CNN
F 3 "~" H 3700 2050 50  0001 C CNN
	1    3700 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	3450 2050 3600 2050
$Comp
L Device:R_Small_US R11
U 1 1 5FDA7596
P 3700 2350
F 0 "R11" V 3905 2350 50  0000 C CNN
F 1 "XXX" V 3814 2350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 3700 2350 50  0001 C CNN
F 3 "~" H 3700 2350 50  0001 C CNN
	1    3700 2350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R12
U 1 1 5FDA759C
P 3700 2650
F 0 "R12" V 3905 2650 50  0000 C CNN
F 1 "XXX" V 3814 2650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 3700 2650 50  0001 C CNN
F 3 "~" H 3700 2650 50  0001 C CNN
	1    3700 2650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3450 2150 3500 2150
Wire Wire Line
	3500 2150 3500 2350
Wire Wire Line
	3500 2650 3600 2650
Wire Wire Line
	3500 2350 3600 2350
Connection ~ 3500 2350
Wire Wire Line
	3500 2350 3500 2650
$Comp
L Device:R_Small_US R8
U 1 1 5FDA75A8
P 3700 1450
F 0 "R8" V 3905 1450 50  0000 C CNN
F 1 "XXX" V 3814 1450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 3700 1450 50  0001 C CNN
F 3 "~" H 3700 1450 50  0001 C CNN
	1    3700 1450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R9
U 1 1 5FDA75AE
P 3700 1750
F 0 "R9" V 3905 1750 50  0000 C CNN
F 1 "XXX" V 3814 1750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 3700 1750 50  0001 C CNN
F 3 "~" H 3700 1750 50  0001 C CNN
	1    3700 1750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3500 1750 3600 1750
Wire Wire Line
	3500 1450 3600 1450
Wire Wire Line
	3450 1950 3500 1950
Wire Wire Line
	3500 1950 3500 1750
Connection ~ 3500 1750
Wire Wire Line
	3500 1750 3500 1450
Wire Wire Line
	3800 2050 4150 2050
Text Label 4600 2050 2    50   ~ 0
CH1
$Comp
L power:GND #PWR0101
U 1 1 5FDA75BC
P 4000 2750
F 0 "#PWR0101" H 4000 2500 50  0001 C CNN
F 1 "GND" H 4005 2577 50  0000 C CNN
F 2 "" H 4000 2750 50  0001 C CNN
F 3 "" H 4000 2750 50  0001 C CNN
	1    4000 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 2650 4000 2650
Wire Wire Line
	4000 2650 4000 2750
Wire Wire Line
	3800 1750 4000 1750
Wire Wire Line
	4000 1750 4000 2650
Connection ~ 4000 2650
Wire Wire Line
	3800 1450 3900 1450
Wire Wire Line
	3900 1450 3900 1300
Wire Wire Line
	3800 2350 3900 2350
Wire Wire Line
	3900 2350 3900 1450
Connection ~ 3900 1450
$Comp
L power:+3.3V #PWR0102
U 1 1 5FDA75CC
P 3900 1300
F 0 "#PWR0102" H 3900 1150 50  0001 C CNN
F 1 "+3.3V" H 3915 1473 50  0000 C CNN
F 2 "" H 3900 1300 50  0001 C CNN
F 3 "" H 3900 1300 50  0001 C CNN
	1    3900 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R13
U 1 1 5FDA75D2
P 4150 1750
F 0 "R13" H 4218 1796 50  0000 L CNN
F 1 "XXX" H 4218 1705 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 4150 1750 50  0001 C CNN
F 3 "~" H 4150 1750 50  0001 C CNN
	1    4150 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R14
U 1 1 5FDA75D8
P 4150 2350
F 0 "R14" H 4218 2396 50  0000 L CNN
F 1 "XXX" H 4218 2305 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 4150 2350 50  0001 C CNN
F 3 "~" H 4150 2350 50  0001 C CNN
	1    4150 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 2050 4150 2250
Connection ~ 4150 2050
Wire Wire Line
	4150 2050 4600 2050
Wire Wire Line
	4000 2650 4150 2650
Wire Wire Line
	4150 2650 4150 2450
Wire Wire Line
	4150 2050 4150 1850
Wire Wire Line
	3900 1450 4150 1450
Wire Wire Line
	4150 1450 4150 1650
$Comp
L Connector:AudioJack3 J3
U 1 1 5FDAFA47
P 1550 4050
F 0 "J3" H 1532 4375 50  0000 C CNN
F 1 "AudioJack2" H 1532 4284 50  0000 C CNN
F 2 "footprints:SJ-63053A" H 1550 4050 50  0001 C CNN
F 3 "~" H 1550 4050 50  0001 C CNN
	1    1550 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R17
U 1 1 5FDAFA4D
P 2000 4050
F 0 "R17" V 1795 4050 50  0000 C CNN
F 1 "10" V 1886 4050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 2000 4050 50  0001 C CNN
F 3 "~" H 2000 4050 50  0001 C CNN
	1    2000 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	1750 4050 1900 4050
$Comp
L Device:R_Small_US R18
U 1 1 5FDAFA54
P 2000 4350
F 0 "R18" V 2205 4350 50  0000 C CNN
F 1 "XXX" V 2114 4350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 2000 4350 50  0001 C CNN
F 3 "~" H 2000 4350 50  0001 C CNN
	1    2000 4350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R19
U 1 1 5FDAFA5A
P 2000 4650
F 0 "R19" V 2205 4650 50  0000 C CNN
F 1 "XXX" V 2114 4650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 2000 4650 50  0001 C CNN
F 3 "~" H 2000 4650 50  0001 C CNN
	1    2000 4650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1750 4150 1800 4150
Wire Wire Line
	1800 4150 1800 4350
Wire Wire Line
	1800 4650 1900 4650
Wire Wire Line
	1800 4350 1900 4350
Connection ~ 1800 4350
Wire Wire Line
	1800 4350 1800 4650
$Comp
L Device:R_Small_US R15
U 1 1 5FDAFA66
P 2000 3450
F 0 "R15" V 2205 3450 50  0000 C CNN
F 1 "XXX" V 2114 3450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 2000 3450 50  0001 C CNN
F 3 "~" H 2000 3450 50  0001 C CNN
	1    2000 3450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R16
U 1 1 5FDAFA6C
P 2000 3750
F 0 "R16" V 2205 3750 50  0000 C CNN
F 1 "XXX" V 2114 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 2000 3750 50  0001 C CNN
F 3 "~" H 2000 3750 50  0001 C CNN
	1    2000 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1800 3750 1900 3750
Wire Wire Line
	1800 3450 1900 3450
Wire Wire Line
	1750 3950 1800 3950
Wire Wire Line
	1800 3950 1800 3750
Connection ~ 1800 3750
Wire Wire Line
	1800 3750 1800 3450
Wire Wire Line
	2100 4050 2450 4050
Text Label 2900 4050 2    50   ~ 0
CH2
$Comp
L power:GND #PWR0103
U 1 1 5FDAFA7A
P 2300 4750
F 0 "#PWR0103" H 2300 4500 50  0001 C CNN
F 1 "GND" H 2305 4577 50  0000 C CNN
F 2 "" H 2300 4750 50  0001 C CNN
F 3 "" H 2300 4750 50  0001 C CNN
	1    2300 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 4650 2300 4650
Wire Wire Line
	2300 4650 2300 4750
Wire Wire Line
	2100 3750 2300 3750
Wire Wire Line
	2300 3750 2300 4650
Connection ~ 2300 4650
Wire Wire Line
	2100 3450 2200 3450
Wire Wire Line
	2200 3450 2200 3300
Wire Wire Line
	2100 4350 2200 4350
Wire Wire Line
	2200 4350 2200 3450
Connection ~ 2200 3450
$Comp
L power:+3.3V #PWR0104
U 1 1 5FDAFA8A
P 2200 3300
F 0 "#PWR0104" H 2200 3150 50  0001 C CNN
F 1 "+3.3V" H 2215 3473 50  0000 C CNN
F 2 "" H 2200 3300 50  0001 C CNN
F 3 "" H 2200 3300 50  0001 C CNN
	1    2200 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R20
U 1 1 5FDAFA90
P 2450 3750
F 0 "R20" H 2518 3796 50  0000 L CNN
F 1 "XXX" H 2518 3705 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 2450 3750 50  0001 C CNN
F 3 "~" H 2450 3750 50  0001 C CNN
	1    2450 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R21
U 1 1 5FDAFA96
P 2450 4350
F 0 "R21" H 2518 4396 50  0000 L CNN
F 1 "XXX" H 2518 4305 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 2450 4350 50  0001 C CNN
F 3 "~" H 2450 4350 50  0001 C CNN
	1    2450 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 4050 2450 4250
Connection ~ 2450 4050
Wire Wire Line
	2450 4050 2900 4050
Wire Wire Line
	2300 4650 2450 4650
Wire Wire Line
	2450 4650 2450 4450
Wire Wire Line
	2450 4050 2450 3850
Wire Wire Line
	2200 3450 2450 3450
Wire Wire Line
	2450 3450 2450 3650
$Comp
L Connector:AudioJack3 J4
U 1 1 5FDB7B67
P 3350 4050
F 0 "J4" H 3332 4375 50  0000 C CNN
F 1 "AudioJack3" H 3332 4284 50  0000 C CNN
F 2 "footprints:SJ-63053A" H 3350 4050 50  0001 C CNN
F 3 "~" H 3350 4050 50  0001 C CNN
	1    3350 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R24
U 1 1 5FDB7B6D
P 3800 4050
F 0 "R24" V 3595 4050 50  0000 C CNN
F 1 "10" V 3686 4050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 3800 4050 50  0001 C CNN
F 3 "~" H 3800 4050 50  0001 C CNN
	1    3800 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	3550 4050 3700 4050
$Comp
L Device:R_Small_US R25
U 1 1 5FDB7B74
P 3800 4350
F 0 "R25" V 4005 4350 50  0000 C CNN
F 1 "XXX" V 3914 4350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 3800 4350 50  0001 C CNN
F 3 "~" H 3800 4350 50  0001 C CNN
	1    3800 4350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R26
U 1 1 5FDB7B7A
P 3800 4650
F 0 "R26" V 4005 4650 50  0000 C CNN
F 1 "XXX" V 3914 4650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 3800 4650 50  0001 C CNN
F 3 "~" H 3800 4650 50  0001 C CNN
	1    3800 4650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3550 4150 3600 4150
Wire Wire Line
	3600 4150 3600 4350
Wire Wire Line
	3600 4650 3700 4650
Wire Wire Line
	3600 4350 3700 4350
Connection ~ 3600 4350
Wire Wire Line
	3600 4350 3600 4650
$Comp
L Device:R_Small_US R22
U 1 1 5FDB7B86
P 3800 3450
F 0 "R22" V 4005 3450 50  0000 C CNN
F 1 "XXX" V 3914 3450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 3800 3450 50  0001 C CNN
F 3 "~" H 3800 3450 50  0001 C CNN
	1    3800 3450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R23
U 1 1 5FDB7B8C
P 3800 3750
F 0 "R23" V 4005 3750 50  0000 C CNN
F 1 "XXX" V 3914 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 3800 3750 50  0001 C CNN
F 3 "~" H 3800 3750 50  0001 C CNN
	1    3800 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3600 3750 3700 3750
Wire Wire Line
	3600 3450 3700 3450
Wire Wire Line
	3550 3950 3600 3950
Wire Wire Line
	3600 3950 3600 3750
Connection ~ 3600 3750
Wire Wire Line
	3600 3750 3600 3450
Wire Wire Line
	3900 4050 4250 4050
Text Label 4700 4050 2    50   ~ 0
CH3
$Comp
L power:GND #PWR0105
U 1 1 5FDB7B9A
P 4100 4750
F 0 "#PWR0105" H 4100 4500 50  0001 C CNN
F 1 "GND" H 4105 4577 50  0000 C CNN
F 2 "" H 4100 4750 50  0001 C CNN
F 3 "" H 4100 4750 50  0001 C CNN
	1    4100 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 4650 4100 4650
Wire Wire Line
	4100 4650 4100 4750
Wire Wire Line
	3900 3750 4100 3750
Wire Wire Line
	4100 3750 4100 4650
Connection ~ 4100 4650
Wire Wire Line
	3900 3450 4000 3450
Wire Wire Line
	4000 3450 4000 3300
Wire Wire Line
	3900 4350 4000 4350
Wire Wire Line
	4000 4350 4000 3450
Connection ~ 4000 3450
$Comp
L power:+3.3V #PWR0106
U 1 1 5FDB7BAA
P 4000 3300
F 0 "#PWR0106" H 4000 3150 50  0001 C CNN
F 1 "+3.3V" H 4015 3473 50  0000 C CNN
F 2 "" H 4000 3300 50  0001 C CNN
F 3 "" H 4000 3300 50  0001 C CNN
	1    4000 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R27
U 1 1 5FDB7BB0
P 4250 3750
F 0 "R27" H 4318 3796 50  0000 L CNN
F 1 "XXX" H 4318 3705 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 4250 3750 50  0001 C CNN
F 3 "~" H 4250 3750 50  0001 C CNN
	1    4250 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R28
U 1 1 5FDB7BB6
P 4250 4350
F 0 "R28" H 4318 4396 50  0000 L CNN
F 1 "XXX" H 4318 4305 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 4250 4350 50  0001 C CNN
F 3 "~" H 4250 4350 50  0001 C CNN
	1    4250 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 4050 4250 4250
Connection ~ 4250 4050
Wire Wire Line
	4250 4050 4700 4050
Wire Wire Line
	4100 4650 4250 4650
Wire Wire Line
	4250 4650 4250 4450
Wire Wire Line
	4250 4050 4250 3850
Wire Wire Line
	4000 3450 4250 3450
Wire Wire Line
	4250 3450 4250 3650
$Comp
L power:+3.3V #PWR0107
U 1 1 5FDCEDC2
P 9750 2500
F 0 "#PWR0107" H 9750 2350 50  0001 C CNN
F 1 "+3.3V" H 9765 2673 50  0000 C CNN
F 2 "" H 9750 2500 50  0001 C CNN
F 3 "" H 9750 2500 50  0001 C CNN
	1    9750 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5FDCF69F
P 10200 2750
F 0 "#PWR0108" H 10200 2500 50  0001 C CNN
F 1 "GND" H 10205 2577 50  0000 C CNN
F 2 "" H 10200 2750 50  0001 C CNN
F 3 "" H 10200 2750 50  0001 C CNN
	1    10200 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5FE016C8
P 7550 950
F 0 "C1" H 7642 996 50  0000 L CNN
F 1 "0.1uF" H 7642 905 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7550 950 50  0001 C CNN
F 3 "~" H 7550 950 50  0001 C CNN
	1    7550 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5FE01FE3
P 7950 950
F 0 "C2" H 8042 996 50  0000 L CNN
F 1 "1uF" H 8042 905 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7950 950 50  0001 C CNN
F 3 "~" H 7950 950 50  0001 C CNN
	1    7950 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5FE02631
P 8350 950
F 0 "C3" H 8442 996 50  0000 L CNN
F 1 "4.7uF" H 8442 905 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8350 950 50  0001 C CNN
F 3 "~" H 8350 950 50  0001 C CNN
	1    8350 950 
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0109
U 1 1 5FE02A86
P 7550 750
F 0 "#PWR0109" H 7550 600 50  0001 C CNN
F 1 "+3.3V" H 7565 923 50  0000 C CNN
F 2 "" H 7550 750 50  0001 C CNN
F 3 "" H 7550 750 50  0001 C CNN
	1    7550 750 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5FE0349A
P 7550 1150
F 0 "#PWR0110" H 7550 900 50  0001 C CNN
F 1 "GND" H 7555 977 50  0000 C CNN
F 2 "" H 7550 1150 50  0001 C CNN
F 3 "" H 7550 1150 50  0001 C CNN
	1    7550 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 750  7950 750 
Wire Wire Line
	8350 750  8350 850 
Wire Wire Line
	7550 1150 7950 1150
Wire Wire Line
	8350 1150 8350 1050
Wire Wire Line
	7950 1050 7950 1150
Connection ~ 7950 1150
Wire Wire Line
	7950 1150 8350 1150
Wire Wire Line
	7950 850  7950 750 
Connection ~ 7950 750 
Wire Wire Line
	7950 750  8350 750 
Wire Wire Line
	7550 750  7550 850 
Connection ~ 7550 750 
Wire Wire Line
	7550 1050 7550 1150
Connection ~ 7550 1150
Text Notes 4300 5550 0    50   ~ 0
We've got a complicated network of resistors here\nthat should let us pull up or down any of the pins as necessary.\n\nFrom my investigation, we can always pick\nup the relevant signal on the ring, so it's just a matter\nof what we do with the other pins.\n\nThese could probably use some more protection (TVS?)\nas users are likely to plug/unplug them during operation.\n\n!!! Definitely don't put zero-ohm resistors in for any of\nthese. You've got to assume all of the pins will be\nleft permanently shorted, and work from there.
$Comp
L Mechanical:MountingHole H1
U 1 1 5FE43904
P 10000 750
F 0 "H1" H 10100 796 50  0000 L CNN
F 1 "MountingHole" H 10100 705 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 10000 750 50  0001 C CNN
F 3 "~" H 10000 750 50  0001 C CNN
	1    10000 750 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5FE451BF
P 10000 950
F 0 "H2" H 10100 996 50  0000 L CNN
F 1 "MountingHole" H 10100 905 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 10000 950 50  0001 C CNN
F 3 "~" H 10000 950 50  0001 C CNN
	1    10000 950 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5FE4549D
P 10000 1150
F 0 "H3" H 10100 1196 50  0000 L CNN
F 1 "MountingHole" H 10100 1105 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 10000 1150 50  0001 C CNN
F 3 "~" H 10000 1150 50  0001 C CNN
	1    10000 1150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5FE4576F
P 10000 1350
F 0 "H4" H 10100 1396 50  0000 L CNN
F 1 "MountingHole" H 10100 1305 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 10000 1350 50  0001 C CNN
F 3 "~" H 10000 1350 50  0001 C CNN
	1    10000 1350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H5
U 1 1 5FE45A71
P 10000 1550
F 0 "H5" H 10100 1596 50  0000 L CNN
F 1 "MountingHole" H 10100 1505 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 10000 1550 50  0001 C CNN
F 3 "~" H 10000 1550 50  0001 C CNN
	1    10000 1550
	1    0    0    -1  
$EndComp
$Comp
L Analog_DAC:ADS7830 U1
U 1 1 5FD6C453
P 8100 3050
F 0 "U1" H 8300 3700 50  0000 C CNN
F 1 "ADS7830" H 8350 3600 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-16_4.4x5mm_Pitch0.65mm" H 8200 2350 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/ads7830.pdf" H 8300 2600 50  0001 C CNN
	1    8100 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 2350 8100 2450
Wire Wire Line
	8100 3750 8100 3700
Connection ~ 8100 3700
Wire Wire Line
	8100 3700 8100 3650
Wire Wire Line
	8600 2650 9000 2650
Wire Wire Line
	8600 2750 9000 2750
Text Label 9000 2750 2    50   ~ 0
SCL
Text Label 9000 2650 2    50   ~ 0
SDA
$Comp
L Connector:Conn_01x04_Female J5
U 1 1 5FDB53D4
P 10950 2550
F 0 "J5" H 10842 2125 50  0000 C CNN
F 1 "Qwiic" H 10842 2216 50  0000 C CNN
F 2 "Connectors_JST:JST_SH_SM04B-SRSS-TB_04x1.00mm_Angled" H 10950 2550 50  0001 C CNN
F 3 "~" H 10950 2550 50  0001 C CNN
	1    10950 2550
	1    0    0    1   
$EndComp
Wire Wire Line
	9750 2500 9750 2550
Wire Wire Line
	9750 2550 9900 2550
Wire Wire Line
	10750 2650 10200 2650
Wire Wire Line
	10200 2650 10200 2750
Wire Wire Line
	10750 2450 10350 2450
Wire Wire Line
	10750 2350 10350 2350
Text Label 10350 2350 0    50   ~ 0
SCL
Text Label 10350 2450 0    50   ~ 0
SDA
$Comp
L Device:C_Small C4
U 1 1 5FD6DFF9
P 8900 3350
F 0 "C4" H 8992 3396 50  0000 L CNN
F 1 "0.1uF" H 8992 3305 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8900 3350 50  0001 C CNN
F 3 "~" H 8900 3350 50  0001 C CNN
	1    8900 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 3050 8900 3050
Wire Wire Line
	8900 3050 8900 3250
Wire Wire Line
	8900 3450 8900 3700
Wire Wire Line
	7600 3450 7550 3450
Wire Wire Line
	7550 3450 7550 3700
Wire Wire Line
	7550 3700 8100 3700
$Comp
L Device:Ferrite_Bead_Small FB1
U 1 1 5FD7EB67
P 9000 3050
F 0 "FB1" V 8763 3050 50  0000 C CNN
F 1 "FB" V 8854 3050 50  0000 C CNN
F 2 "Inductors_SMD:L_0805_HandSoldering" V 8930 3050 50  0001 C CNN
F 3 "~" H 9000 3050 50  0001 C CNN
	1    9000 3050
	0    1    1    0   
$EndComp
Connection ~ 8900 3050
$Comp
L Device:Ferrite_Bead_Small FB2
U 1 1 5FD7FC16
P 10000 2550
F 0 "FB2" V 10237 2550 50  0000 C CNN
F 1 "FB" V 10146 2550 50  0000 C CNN
F 2 "Inductors_SMD:L_0805_HandSoldering" V 9930 2550 50  0001 C CNN
F 3 "~" H 10000 2550 50  0001 C CNN
	1    10000 2550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10750 2550 10100 2550
$Comp
L power:+3.3V #PWR0111
U 1 1 5FDA0A43
P 9400 3000
F 0 "#PWR0111" H 9400 2850 50  0001 C CNN
F 1 "+3.3V" H 9415 3173 50  0000 C CNN
F 2 "" H 9400 3000 50  0001 C CNN
F 3 "" H 9400 3000 50  0001 C CNN
	1    9400 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 3050 9400 3050
Wire Wire Line
	9400 3050 9400 3000
$Comp
L Connector:Conn_01x03_Male J9
U 1 1 5FDA6570
P 6650 3450
F 0 "J9" H 6758 3731 50  0000 C CNN
F 1 "CH7" H 6758 3640 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 6650 3450 50  0001 C CNN
F 3 "~" H 6650 3450 50  0001 C CNN
	1    6650 3450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J8
U 1 1 5FDA8E43
P 6350 3300
F 0 "J8" H 6458 3581 50  0000 C CNN
F 1 "CH7" H 6458 3490 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 6350 3300 50  0001 C CNN
F 3 "~" H 6350 3300 50  0001 C CNN
	1    6350 3300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J7
U 1 1 5FDAA214
P 6050 3100
F 0 "J7" H 6158 3381 50  0000 C CNN
F 1 "CH7" H 6158 3290 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 6050 3100 50  0001 C CNN
F 3 "~" H 6050 3100 50  0001 C CNN
	1    6050 3100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J6
U 1 1 5FDAA9BC
P 5750 2950
F 0 "J6" H 5858 3231 50  0000 C CNN
F 1 "CH7" H 5858 3140 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 5750 2950 50  0001 C CNN
F 3 "~" H 5750 2950 50  0001 C CNN
	1    5750 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 3250 6650 3250
Wire Wire Line
	6650 3250 6550 3300
Wire Wire Line
	6250 3100 6650 3100
Wire Wire Line
	6650 3100 6700 3150
Wire Wire Line
	6700 3150 7600 3150
Wire Wire Line
	6850 3450 7050 3450
Wire Wire Line
	7050 3450 7200 3350
Wire Wire Line
	7200 3350 7600 3350
Wire Wire Line
	5950 2950 6650 2950
Wire Wire Line
	6650 2950 6750 3050
Wire Wire Line
	6750 3050 7600 3050
$Comp
L power:+3.3V #PWR0112
U 1 1 5FDC259C
P 6400 2700
F 0 "#PWR0112" H 6400 2550 50  0001 C CNN
F 1 "+3.3V" H 6415 2873 50  0000 C CNN
F 2 "" H 6400 2700 50  0001 C CNN
F 3 "" H 6400 2700 50  0001 C CNN
	1    6400 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 2850 6400 2850
Wire Wire Line
	6400 2850 6400 2700
Wire Wire Line
	6250 3000 6400 3000
Wire Wire Line
	6400 3000 6400 2850
Connection ~ 6400 2850
Wire Wire Line
	6550 3200 6550 2850
Wire Wire Line
	6550 2850 6400 2850
Wire Wire Line
	6850 3350 6850 2850
Wire Wire Line
	6850 2850 6550 2850
Connection ~ 6550 2850
$Comp
L power:GND #PWR0113
U 1 1 5FDDB04E
P 6400 3700
F 0 "#PWR0113" H 6400 3450 50  0001 C CNN
F 1 "GND" H 6405 3527 50  0000 C CNN
F 2 "" H 6400 3700 50  0001 C CNN
F 3 "" H 6400 3700 50  0001 C CNN
	1    6400 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 3650 6550 3650
Wire Wire Line
	5950 3650 5950 3050
Wire Wire Line
	6250 3200 6250 3650
Connection ~ 6250 3650
Wire Wire Line
	6250 3650 5950 3650
Wire Wire Line
	6550 3400 6550 3650
Connection ~ 6550 3650
Wire Wire Line
	6550 3650 6400 3650
Wire Wire Line
	6400 3650 6400 3700
Connection ~ 6400 3650
Wire Wire Line
	6400 3650 6250 3650
Wire Wire Line
	6850 3550 6850 3650
$Comp
L Connector:Conn_01x03_Male J10
U 1 1 5FDFD607
P 9650 4300
F 0 "J10" H 9622 4232 50  0000 R CNN
F 1 "CH7" H 9622 4323 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 9650 4300 50  0001 C CNN
F 3 "~" H 9650 4300 50  0001 C CNN
	1    9650 4300
	-1   0    0    1   
$EndComp
Wire Wire Line
	8100 3700 8900 3700
Wire Wire Line
	8600 3350 8800 3350
Wire Wire Line
	8600 3250 8800 3250
Text Label 8800 3250 2    50   ~ 0
A1
Text Label 8800 3350 2    50   ~ 0
A0
Wire Wire Line
	9450 4300 9050 4300
Wire Wire Line
	9450 4200 9300 4200
Wire Wire Line
	9300 4200 9300 4100
Wire Wire Line
	9450 4400 9300 4400
Wire Wire Line
	9300 4400 9300 4500
$Comp
L power:GND #PWR0114
U 1 1 5FE2849A
P 9300 4500
F 0 "#PWR0114" H 9300 4250 50  0001 C CNN
F 1 "GND" H 9305 4327 50  0000 C CNN
F 2 "" H 9300 4500 50  0001 C CNN
F 3 "" H 9300 4500 50  0001 C CNN
	1    9300 4500
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0115
U 1 1 5FE2891A
P 9300 4100
F 0 "#PWR0115" H 9300 3950 50  0001 C CNN
F 1 "+3.3V" H 9315 4273 50  0000 C CNN
F 2 "" H 9300 4100 50  0001 C CNN
F 3 "" H 9300 4100 50  0001 C CNN
	1    9300 4100
	1    0    0    -1  
$EndComp
Text Label 8850 4300 0    50   ~ 0
A0
$Comp
L Device:R_Small_US R29
U 1 1 5FE4A67D
P 9150 4200
F 0 "R29" V 8945 4200 50  0000 C CNN
F 1 "DNP" V 9036 4200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 9150 4200 50  0001 C CNN
F 3 "~" H 9150 4200 50  0001 C CNN
	1    9150 4200
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R30
U 1 1 5FE4AA72
P 9150 4400
F 0 "R30" V 8945 4400 50  0000 C CNN
F 1 "DNP" V 9036 4400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 9150 4400 50  0001 C CNN
F 3 "~" H 9150 4400 50  0001 C CNN
	1    9150 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	9050 4200 9050 4300
Connection ~ 9050 4300
Wire Wire Line
	9050 4300 8850 4300
Wire Wire Line
	9250 4200 9300 4200
Connection ~ 9300 4200
Wire Wire Line
	9050 4300 9050 4400
Wire Wire Line
	9250 4400 9300 4400
Connection ~ 9300 4400
$Comp
L Connector:Conn_01x03_Male J11
U 1 1 5FE74475
P 10700 4300
F 0 "J11" H 10672 4232 50  0000 R CNN
F 1 "CH7" H 10672 4323 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 10700 4300 50  0001 C CNN
F 3 "~" H 10700 4300 50  0001 C CNN
	1    10700 4300
	-1   0    0    1   
$EndComp
Wire Wire Line
	10500 4300 10100 4300
Wire Wire Line
	10500 4200 10350 4200
Wire Wire Line
	10350 4200 10350 4100
Wire Wire Line
	10500 4400 10350 4400
Wire Wire Line
	10350 4400 10350 4500
$Comp
L power:GND #PWR0116
U 1 1 5FE74480
P 10350 4500
F 0 "#PWR0116" H 10350 4250 50  0001 C CNN
F 1 "GND" H 10355 4327 50  0000 C CNN
F 2 "" H 10350 4500 50  0001 C CNN
F 3 "" H 10350 4500 50  0001 C CNN
	1    10350 4500
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0117
U 1 1 5FE74486
P 10350 4100
F 0 "#PWR0117" H 10350 3950 50  0001 C CNN
F 1 "+3.3V" H 10365 4273 50  0000 C CNN
F 2 "" H 10350 4100 50  0001 C CNN
F 3 "" H 10350 4100 50  0001 C CNN
	1    10350 4100
	1    0    0    -1  
$EndComp
Text Label 9900 4300 0    50   ~ 0
A1
$Comp
L Device:R_Small_US R31
U 1 1 5FE7448D
P 10200 4200
F 0 "R31" V 9995 4200 50  0000 C CNN
F 1 "DNP" V 10086 4200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 10200 4200 50  0001 C CNN
F 3 "~" H 10200 4200 50  0001 C CNN
	1    10200 4200
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R32
U 1 1 5FE74493
P 10200 4400
F 0 "R32" V 9995 4400 50  0000 C CNN
F 1 "DNP" V 10086 4400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 10200 4400 50  0001 C CNN
F 3 "~" H 10200 4400 50  0001 C CNN
	1    10200 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	10100 4200 10100 4300
Connection ~ 10100 4300
Wire Wire Line
	10100 4300 9900 4300
Wire Wire Line
	10300 4200 10350 4200
Connection ~ 10350 4200
Wire Wire Line
	10100 4300 10100 4400
Wire Wire Line
	10300 4400 10350 4400
Connection ~ 10350 4400
Text Notes 11000 4950 2    50   ~ 0
Through hole, and surface mount pads for selecting the address.\nYou can populate with headers, zero ohm resistors, whatever.
$EndSCHEMATC
