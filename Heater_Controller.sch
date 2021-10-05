EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "2021-08-29"
Rev "2"
Comp "Alec Ross"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Heater_Controller-rescue:SC0915-2021-08-14_07-35-25 U1
U 1 1 611B442B
P 1200 1500
F 0 "U1" H 3700 1887 60  0000 C CNN
F 1 "SC0915" H 3700 1781 60  0000 C CNN
F 2 "footprints:SC0915-Up" H 3700 1740 60  0001 C CNN
F 3 "" H 1200 1500 60  0000 C CNN
	1    1200 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:Thermocouple TC1
U 1 1 611B72CA
P 4350 5700
F 0 "TC1" H 4323 6025 50  0000 C CNN
F 1 "Thermocouple" H 4323 5934 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2_1x02_P5.00mm_Horizontal" H 3775 5750 50  0001 C CNN
F 3 "~" H 3775 5750 50  0001 C CNN
	1    4350 5700
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Temperature:MAX31855KASA U3
U 1 1 611BA278
P 6150 5700
F 0 "U3" H 6150 6281 50  0000 C CNN
F 1 "MAX31855KASA" H 6150 6190 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 7150 5350 50  0001 C CIN
F 3 "http://datasheets.maximintegrated.com/en/ds/MAX31855.pdf" H 6150 5700 50  0001 C CNN
	1    6150 5700
	1    0    0    -1  
$EndComp
Text GLabel 6150 4900 0    50   BiDi ~ 0
+3.3V
Wire Wire Line
	6150 4900 6150 5000
$Comp
L power:GND #PWR0101
U 1 1 611BB564
P 6150 6250
F 0 "#PWR0101" H 6150 6000 50  0001 C CNN
F 1 "GND" H 6155 6077 50  0000 C CNN
F 2 "" H 6150 6250 50  0001 C CNN
F 3 "" H 6150 6250 50  0001 C CNN
	1    6150 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 6250 6150 6100
Text Notes 4000 6300 0    50   ~ 0
K or T-type is acceptable for the \nMAX31855KASA+T type\n
$Comp
L power:GND #PWR0103
U 1 1 611C5AA4
P 9150 2650
F 0 "#PWR0103" H 9150 2400 50  0001 C CNN
F 1 "GND" H 9155 2477 50  0000 C CNN
F 2 "" H 9150 2650 50  0001 C CNN
F 3 "" H 9150 2650 50  0001 C CNN
	1    9150 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 2650 9150 2500
$Comp
L power:GND #PWR0104
U 1 1 611C6EBA
P 1000 3700
F 0 "#PWR0104" H 1000 3450 50  0001 C CNN
F 1 "GND" H 1005 3527 50  0000 C CNN
F 2 "" H 1000 3700 50  0001 C CNN
F 3 "" H 1000 3700 50  0001 C CNN
	1    1000 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	1200 3700 1000 3700
Text GLabel 6700 5500 2    50   Input ~ 0
T_Clock
Wire Wire Line
	6700 5500 6550 5500
Text GLabel 6750 5600 2    50   Output ~ 0
T_RX
Wire Wire Line
	6750 5600 6550 5600
Text GLabel 6700 5800 2    50   Input ~ 0
CS
Wire Wire Line
	6700 5800 6550 5800
Text GLabel 950  3800 0    50   Output ~ 0
T_Clock
Text GLabel 950  3500 0    50   Input ~ 0
T_RX
Wire Wire Line
	1200 3800 950  3800
Text GLabel 950  3600 0    50   Output ~ 0
CS
Wire Wire Line
	1200 3600 950  3600
Wire Wire Line
	1200 3500 950  3500
Wire Wire Line
	6400 2900 6200 2900
Text GLabel 7300 2900 2    50   Input ~ 0
+5V
Text Notes 6750 3550 0    50   ~ 0
ORing diode to\n safely use the USB
Text Label 6300 3000 0    50   ~ 0
gnd
Wire Wire Line
	6300 3000 6200 3000
Text Label 6300 1800 0    50   ~ 0
gnd
Wire Wire Line
	6300 1800 6200 1800
Text Label 6300 1700 0    50   ~ 0
gnd
Wire Wire Line
	6300 1700 6200 1700
Text Label 6300 1600 0    50   ~ 0
gnd
Wire Wire Line
	6300 1600 6200 1600
Text Label 6300 1500 0    50   ~ 0
gnd
Wire Wire Line
	6300 1500 6200 1500
Text Label 1100 1700 2    50   ~ 0
gnd
Wire Wire Line
	1100 1700 1200 1700
Text Label 1100 2200 2    50   ~ 0
gnd
Wire Wire Line
	1100 2200 1200 2200
Text Label 1100 2700 2    50   ~ 0
gnd
Wire Wire Line
	1100 2700 1200 2700
Text Label 1100 3200 2    50   ~ 0
gnd
Wire Wire Line
	1100 3200 1200 3200
Text GLabel 6350 4100 2    50   Output ~ 0
Gate_Control
Wire Wire Line
	6350 4100 6200 4100
$Comp
L Device:C_Small C7
U 1 1 6120A587
P 6450 5000
F 0 "C7" V 6679 5000 50  0000 C CNN
F 1 "100n" V 6588 5000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6450 5000 50  0001 C CNN
F 3 "~" H 6450 5000 50  0001 C CNN
	1    6450 5000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 6120C66A
P 6650 5000
F 0 "#PWR0109" H 6650 4750 50  0001 C CNN
F 1 "GND" H 6655 4827 50  0000 C CNN
F 2 "" H 6650 5000 50  0001 C CNN
F 3 "" H 6650 5000 50  0001 C CNN
	1    6650 5000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6650 5000 6550 5000
Wire Wire Line
	6350 5000 6150 5000
Connection ~ 6150 5000
Wire Wire Line
	6150 5000 6150 5300
$Comp
L Device:C_Small C1
U 1 1 61215A1B
P 6800 3100
F 0 "C1" V 6950 3100 50  0000 C CNN
F 1 "100n" V 6650 3100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6800 3100 50  0001 C CNN
F 3 "~" H 6800 3100 50  0001 C CNN
	1    6800 3100
	-1   0    0    1   
$EndComp
Text Label 6800 3350 0    50   ~ 0
gnd
Wire Wire Line
	6800 3350 6800 3200
Wire Wire Line
	6800 3000 6800 2900
Connection ~ 6800 2900
Wire Wire Line
	6800 2900 6700 2900
Wire Wire Line
	5750 5600 5250 5600
Wire Wire Line
	5250 5800 5750 5800
$Comp
L Connector:Conn_01x03_Male J2
U 1 1 61223E80
P 7000 2600
F 0 "J2" H 6972 2532 50  0000 R CNN
F 1 "debug" H 6972 2623 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7000 2600 50  0001 C CNN
F 3 "~" H 7000 2600 50  0001 C CNN
	1    7000 2600
	-1   0    0    1   
$EndComp
Wire Wire Line
	6800 2700 6200 2700
Wire Wire Line
	6800 2600 6200 2600
Wire Wire Line
	6800 2500 6200 2500
Text Label 6500 2600 0    50   ~ 0
gnd
Text GLabel 1000 2800 0    50   Output ~ 0
SDA\SCK
Wire Wire Line
	1200 2800 1000 2800
Text GLabel 1000 2900 0    50   Output ~ 0
TX\SCL
Text GLabel 1000 3000 0    50   Output ~ 0
SDA\RX
Text GLabel 1000 3100 0    50   Output ~ 0
SCL\CS
Wire Wire Line
	1200 2900 1000 2900
Wire Wire Line
	1200 3000 1000 3000
Wire Wire Line
	1200 3100 1000 3100
$Comp
L Connector_Generic:Conn_01x06 J3
U 1 1 6124049D
P 10550 4950
F 0 "J3" H 10468 4425 50  0000 C CNN
F 1 "Conn_01x06" H 10468 4516 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 10550 4950 50  0001 C CNN
F 3 "~" H 10550 4950 50  0001 C CNN
	1    10550 4950
	1    0    0    -1  
$EndComp
Text GLabel 10200 5050 0    50   Output ~ 0
SDA\SCK
Text GLabel 10200 4950 0    50   Output ~ 0
TX\SCL
Text GLabel 10200 4850 0    50   Output ~ 0
SDA\RX
Text GLabel 10200 4750 0    50   Output ~ 0
SCL\CS
Wire Wire Line
	10200 5050 10350 5050
Wire Wire Line
	10200 4950 10350 4950
Wire Wire Line
	10200 4850 10350 4850
Wire Wire Line
	10200 4750 10350 4750
Text GLabel 10200 5250 0    50   Output ~ 0
+3.3V
Wire Wire Line
	10200 5150 10350 5150
Text Label 10200 5150 2    50   ~ 0
gnd
Wire Wire Line
	10200 5250 10350 5250
Text GLabel 6300 3200 2    50   Output ~ 0
+3.3V
Wire Wire Line
	6300 3200 6200 3200
$Comp
L Connector:TestPoint TP4
U 1 1 61279B84
P 1350 7200
F 0 "TP4" H 1408 7318 50  0000 L CNN
F 1 " " H 1408 7227 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5019_Minature" H 1550 7200 50  0001 C CNN
F 3 "~" H 1550 7200 50  0001 C CNN
	1    1350 7200
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP6
U 1 1 6127CE01
P 1600 7200
F 0 "TP6" H 1658 7318 50  0000 L CNN
F 1 " " H 1658 7227 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5019_Minature" H 1800 7200 50  0001 C CNN
F 3 "~" H 1800 7200 50  0001 C CNN
	1    1600 7200
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP7
U 1 1 6127FFF8
P 1850 7200
F 0 "TP7" H 1908 7318 50  0000 L CNN
F 1 " " H 1908 7227 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5019_Minature" H 2050 7200 50  0001 C CNN
F 3 "~" H 2050 7200 50  0001 C CNN
	1    1850 7200
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP8
U 1 1 61283011
P 2100 7200
F 0 "TP8" H 2158 7318 50  0000 L CNN
F 1 " " H 2158 7227 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5019_Minature" H 2300 7200 50  0001 C CNN
F 3 "~" H 2300 7200 50  0001 C CNN
	1    2100 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 7200 1350 7300
Wire Wire Line
	1350 7300 1600 7300
Wire Wire Line
	1600 7300 1600 7200
Wire Wire Line
	1850 7200 1850 7300
Wire Wire Line
	1850 7300 1700 7300
Connection ~ 1600 7300
Wire Wire Line
	2100 7200 2100 7300
Wire Wire Line
	2100 7300 1950 7300
Connection ~ 1850 7300
Text Label 1700 7450 3    50   ~ 0
gnd
Wire Wire Line
	1700 7450 1700 7300
Connection ~ 1700 7300
Wire Wire Line
	1700 7300 1600 7300
$Comp
L Device:R R7
U 1 1 612BFFC5
P 7150 3050
F 0 "R7" H 7220 3096 50  0000 L CNN
F 1 "1k" H 7220 3005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7080 3050 50  0001 C CNN
F 3 "~" H 7150 3050 50  0001 C CNN
	1    7150 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 2900 7300 2900
Wire Wire Line
	6800 2900 7150 2900
Connection ~ 7150 2900
Wire Wire Line
	8650 3100 8650 3050
$Comp
L power:GND #PWR0111
U 1 1 612E47F1
P 8650 3100
F 0 "#PWR0111" H 8650 2850 50  0001 C CNN
F 1 "GND" H 8655 2927 50  0000 C CNN
F 2 "" H 8650 3100 50  0001 C CNN
F 3 "" H 8650 3100 50  0001 C CNN
	1    8650 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 2750 8650 2650
$Comp
L Device:LED D3
U 1 1 612E0C33
P 8650 2900
F 0 "D3" V 8689 2782 50  0000 R CNN
F 1 "L171L-GC" V 8598 2782 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8650 2900 50  0001 C CNN
F 3 "~" H 8650 2900 50  0001 C CNN
	1    8650 2900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 612F4844
P 6450 2800
F 0 "R6" H 6520 2846 50  0000 L CNN
F 1 "1k" H 6520 2755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6380 2800 50  0001 C CNN
F 3 "~" H 6450 2800 50  0001 C CNN
	1    6450 2800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6300 2800 6200 2800
Text Label 6750 2800 0    50   ~ 0
VBUS_Ind
Wire Wire Line
	6750 2800 6600 2800
Text Label 7150 3350 0    50   ~ 0
Power_Ind
Wire Wire Line
	7150 3200 7150 3350
Text Label 2850 4750 2    50   ~ 0
VBUS_Ind
Text Label 3050 4750 0    50   ~ 0
Power_Ind
$Comp
L Device:D_Schottky D1
U 1 1 61361E20
P 6550 2900
F 0 "D1" H 6500 2800 50  0000 L CNN
F 1 "FS14" H 6300 2450 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123F" H 6550 2900 50  0001 C CNN
F 3 "~" H 6550 2900 50  0001 C CNN
	1    6550 2900
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 611E9BB6
P 1600 5000
F 0 "SW1" H 1600 5285 50  0000 C CNN
F 1 "SW_Push" H 1600 5194 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3305C" H 1600 5200 50  0001 C CNN
F 3 "~" H 1600 5200 50  0001 C CNN
	1    1600 5000
	1    0    0    -1  
$EndComp
Text GLabel 1000 3300 0    50   Output ~ 0
B1
Text GLabel 1000 3400 0    50   Output ~ 0
B2
Wire Wire Line
	1200 3300 1000 3300
Wire Wire Line
	1200 3400 1000 3400
Text GLabel 850  5800 0    50   Input ~ 0
B1
Text GLabel 850  5000 0    50   Input ~ 0
B2
$Comp
L Device:R R8
U 1 1 6122CECC
P 1150 5000
F 0 "R8" H 1220 5046 50  0000 L CNN
F 1 "10k" H 1220 4955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1080 5000 50  0001 C CNN
F 3 "~" H 1150 5000 50  0001 C CNN
	1    1150 5000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 6124A42F
P 950 5300
F 0 "#PWR0114" H 950 5050 50  0001 C CNN
F 1 "GND" H 955 5127 50  0000 C CNN
F 2 "" H 950 5300 50  0001 C CNN
F 3 "" H 950 5300 50  0001 C CNN
	1    950  5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  5300 950  5200
$Comp
L Device:C_Small C9
U 1 1 6124A429
P 950 5100
F 0 "C9" V 1179 5100 50  0000 C CNN
F 1 "100n" V 1088 5100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 950 5100 50  0001 C CNN
F 3 "~" H 950 5100 50  0001 C CNN
	1    950  5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  5800 1000 5800
Wire Wire Line
	1300 5000 1400 5000
Wire Wire Line
	1000 5000 950  5000
$Comp
L Switch:SW_Push SW2
U 1 1 612D499F
P 1650 5800
F 0 "SW2" H 1650 6085 50  0000 C CNN
F 1 "SW_Push" H 1650 5994 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3305C" H 1650 6000 50  0001 C CNN
F 3 "~" H 1650 6000 50  0001 C CNN
	1    1650 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 612D49AC
P 1200 5800
F 0 "R9" H 1270 5846 50  0000 L CNN
F 1 "10k" H 1270 5755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1130 5800 50  0001 C CNN
F 3 "~" H 1200 5800 50  0001 C CNN
	1    1200 5800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 612D49B2
P 1000 6100
F 0 "#PWR0116" H 1000 5850 50  0001 C CNN
F 1 "GND" H 1005 5927 50  0000 C CNN
F 2 "" H 1000 6100 50  0001 C CNN
F 3 "" H 1000 6100 50  0001 C CNN
	1    1000 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 6100 1000 6000
$Comp
L Device:C_Small C10
U 1 1 612D49B9
P 1000 5900
F 0 "C10" V 1229 5900 50  0000 C CNN
F 1 "100n" V 1138 5900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1000 5900 50  0001 C CNN
F 3 "~" H 1000 5900 50  0001 C CNN
	1    1000 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 5800 1450 5800
Wire Wire Line
	1050 5800 1000 5800
Text GLabel 2000 5800 2    50   Output ~ 0
+3.3V
Wire Wire Line
	1850 5800 2000 5800
Text Label 5550 5600 0    50   ~ 0
+
Text Label 5500 5800 0    50   ~ 0
-
$Comp
L Device:C_Small C11
U 1 1 6140483B
P 5250 5700
F 0 "C11" H 5342 5746 50  0000 L CNN
F 1 "1n" H 5342 5655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 5250 5700 50  0001 C CNN
F 3 "~" H 5250 5700 50  0001 C CNN
	1    5250 5700
	1    0    0    -1  
$EndComp
Connection ~ 5250 5800
Connection ~ 5250 5600
Wire Wire Line
	3050 5650 3050 5600
$Comp
L power:GND #PWR0112
U 1 1 612821AD
P 3050 5650
F 0 "#PWR0112" H 3050 5400 50  0001 C CNN
F 1 "GND" H 3055 5477 50  0000 C CNN
F 2 "" H 3050 5650 50  0001 C CNN
F 3 "" H 3050 5650 50  0001 C CNN
	1    3050 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D5
U 1 1 612821B4
P 3050 5450
F 0 "D5" V 3089 5332 50  0000 R CNN
F 1 "L171L-GC" V 2998 5332 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3050 5450 50  0001 C CNN
F 3 "~" H 3050 5450 50  0001 C CNN
	1    3050 5450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2850 5650 2850 5600
$Comp
L power:GND #PWR0115
U 1 1 6128E99F
P 2850 5650
F 0 "#PWR0115" H 2850 5400 50  0001 C CNN
F 1 "GND" H 2855 5477 50  0000 C CNN
F 2 "" H 2850 5650 50  0001 C CNN
F 3 "" H 2850 5650 50  0001 C CNN
	1    2850 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D4
U 1 1 6128E9A6
P 2850 5450
F 0 "D4" V 2900 5800 50  0000 R CNN
F 1 "L171L-GC" V 2800 5950 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2850 5450 50  0001 C CNN
F 3 "~" H 2850 5450 50  0001 C CNN
	1    2850 5450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2850 4750 2850 5300
Wire Wire Line
	3050 4750 3050 5300
$Comp
L Connector:Screw_Terminal_01x04 J1
U 1 1 61585E72
P 8400 5550
F 0 "J1" H 8318 5125 50  0000 C CNN
F 1 "Screw_Terminal_01x04" H 8318 5216 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-4_P5.08mm" H 8400 5550 50  0001 C CNN
F 3 "~" H 8400 5550 50  0001 C CNN
	1    8400 5550
	1    0    0    -1  
$EndComp
Text GLabel 8050 5650 0    50   Input ~ 0
+24V
Text GLabel 8050 5550 0    50   Output ~ 0
+24V
Wire Wire Line
	8050 5550 8200 5550
Wire Wire Line
	8050 5650 8200 5650
$Comp
L power:GND #PWR0102
U 1 1 615A0478
P 8000 5800
F 0 "#PWR0102" H 8000 5550 50  0001 C CNN
F 1 "GND" H 8005 5627 50  0000 C CNN
F 2 "" H 8000 5800 50  0001 C CNN
F 3 "" H 8000 5800 50  0001 C CNN
	1    8000 5800
	0    1    1    0   
$EndComp
Wire Wire Line
	8000 5800 8000 5750
Wire Wire Line
	8000 5750 8200 5750
Text GLabel 8050 5450 0    50   BiDi ~ 0
Low_side
Wire Wire Line
	8050 5450 8200 5450
$Comp
L Connector:Screw_Terminal_01x04 J4
U 1 1 615C96BF
P 8400 4900
F 0 "J4" H 8480 4892 50  0000 L CNN
F 1 "Screw_Terminal_01x04" H 8480 4801 50  0000 L CNN
F 2 "TerminalBlock_TE-Connectivity:TerminalBlock_TE_282834-4_1x04_P2.54mm_Horizontal" H 8400 4900 50  0001 C CNN
F 3 "~" H 8400 4900 50  0001 C CNN
	1    8400 4900
	1    0    0    -1  
$EndComp
Text GLabel 8050 4800 0    50   BiDi ~ 0
+24V
Wire Wire Line
	8200 4800 8050 4800
$Comp
L power:GND #PWR0105
U 1 1 615CDC69
P 8050 4950
F 0 "#PWR0105" H 8050 4700 50  0001 C CNN
F 1 "GND" H 8055 4777 50  0000 C CNN
F 2 "" H 8050 4950 50  0001 C CNN
F 3 "" H 8050 4950 50  0001 C CNN
	1    8050 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	8200 4900 8100 4900
Wire Wire Line
	8100 4900 8100 4950
Wire Wire Line
	8100 4950 8050 4950
Wire Wire Line
	8200 5000 8100 5000
Wire Wire Line
	8100 5000 8100 4950
Connection ~ 8100 4950
Text GLabel 8050 5100 0    50   BiDi ~ 0
+5V
Wire Wire Line
	8200 5100 8050 5100
$Comp
L Device:Ferrite_Bead_Small FB1
U 1 1 61569307
P 4800 5600
F 0 "FB1" V 5037 5600 50  0000 C CNN
F 1 "0805" V 4946 5600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4730 5600 50  0001 C CNN
F 3 "~" H 4800 5600 50  0001 C CNN
	1    4800 5600
	0    -1   -1   0   
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB2
U 1 1 61570C3F
P 4800 5800
F 0 "FB2" V 4563 5800 50  0000 C CNN
F 1 "0805" V 4654 5800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4730 5800 50  0001 C CNN
F 3 "~" H 4800 5800 50  0001 C CNN
	1    4800 5800
	0    1    1    0   
$EndComp
Wire Wire Line
	4700 5600 4550 5600
Wire Wire Line
	4550 5600 4550 5800
Wire Wire Line
	4550 5800 4450 5800
Wire Wire Line
	4700 5800 4650 5800
Wire Wire Line
	4650 5800 4650 5700
Wire Wire Line
	4650 5700 4450 5700
Wire Wire Line
	4450 5700 4450 5600
Wire Wire Line
	4900 5600 5250 5600
Wire Wire Line
	4900 5800 5250 5800
Text GLabel 2050 5000 2    50   Output ~ 0
+3.3V
Wire Wire Line
	1800 5000 2050 5000
Wire Wire Line
	9150 1650 9150 2050
Text GLabel 9150 1650 1    50   BiDi ~ 0
Low_side
Wire Wire Line
	9150 2050 9150 2100
Connection ~ 9150 2050
Wire Wire Line
	9650 2050 9150 2050
Wire Wire Line
	10050 2050 9950 2050
Wire Wire Line
	10050 2100 10050 2050
$Comp
L power:GND #PWR0113
U 1 1 61207A89
P 10050 2100
F 0 "#PWR0113" H 10050 1850 50  0001 C CNN
F 1 "GND" H 10055 1927 50  0000 C CNN
F 2 "" H 10050 2100 50  0001 C CNN
F 3 "" H 10050 2100 50  0001 C CNN
	1    10050 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:R TJ1
U 1 1 61206B59
P 9800 2050
F 0 "TJ1" V 9593 2050 50  0000 C CNN
F 1 "Thermal Jumper" V 9684 2050 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 9730 2050 50  0001 C CNN
F 3 "~" H 9800 2050 50  0001 C CNN
	1    9800 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	8650 2300 8850 2300
Connection ~ 8650 2300
Wire Wire Line
	8650 2350 8650 2300
$Comp
L Device:R R5
U 1 1 612E0C39
P 8650 2500
F 0 "R5" H 8720 2546 50  0000 L CNN
F 1 "1k" H 8720 2455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8580 2500 50  0001 C CNN
F 3 "~" H 8650 2500 50  0001 C CNN
	1    8650 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 2300 8650 2300
Connection ~ 8400 2300
$Comp
L Connector:TestPoint TP2
U 1 1 61266389
P 8400 2300
F 0 "TP2" H 8458 2418 50  0000 L CNN
F 1 " " H 8458 2327 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5019_Minature" H 8600 2300 50  0001 C CNN
F 3 "~" H 8600 2300 50  0001 C CNN
	1    8400 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 2300 8400 2300
Text GLabel 8250 2300 0    50   Input ~ 0
Gate_Control
$Comp
L Device:Q_NMOS_GDS Q1
U 1 1 611BE197
P 9050 2300
F 0 "Q1" H 9254 2346 50  0000 L CNN
F 1 "FDD8447L" H 9254 2255 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-252-3_TabPin2" H 9250 2400 50  0001 C CNN
F 3 "~" H 9050 2300 50  0001 C CNN
	1    9050 2300
	1    0    0    -1  
$EndComp
Wire Notes Line
	3750 6450 3750 4600
Wire Notes Line
	7550 1050 7550 6450
Wire Notes Line
	500  1050 500  6450
$Comp
L Mechanical:Fiducial FID1
U 1 1 613708BC
P 2900 7350
F 0 "FID1" H 2985 7396 50  0000 L CNN
F 1 "Fiducial" H 2985 7305 50  0000 L CNN
F 2 "Fiducial:Fiducial_0.75mm_Mask1.5mm" H 2900 7350 50  0001 C CNN
F 3 "~" H 2900 7350 50  0001 C CNN
	1    2900 7350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Fiducial FID2
U 1 1 613704E1
P 3250 7350
F 0 "FID2" H 3335 7396 50  0000 L CNN
F 1 "Fiducial" H 3335 7305 50  0000 L CNN
F 2 "Fiducial:Fiducial_0.75mm_Mask1.5mm" H 3250 7350 50  0001 C CNN
F 3 "~" H 3250 7350 50  0001 C CNN
	1    3250 7350
	1    0    0    -1  
$EndComp
Text Notes 550  1050 0    50   ~ 10
Microcontroller Diagram
Text Notes 550  4550 0    50   ~ 10
Board Inputs and Indication
Text Notes 3900 4550 0    50   ~ 10
Thermocouple Sensor
Text Notes 5900 1450 0    50   Italic 0
App Note:\nusing the RP2040 would be better to just\n save the space, but the larger footprint \nis better when the RP2040 micro is out\n of supply.
Wire Notes Line
	500  4600 11200 4600
Wire Notes Line
	500  1050 11200 1050
Text Notes 7600 1000 0    50   ~ 10
Oven Temperature Control
Text Notes 9450 1400 0    50   Italic 0
App Note:\nthe oven element acts as a 4 ohm resistor\nso the mosfet is a low side switch.\nheat dissipation has to be managed.\n
Text Notes 9550 3250 0    50   Italic 0
App Note:\nthe supply is 24V.\n@ 4 ohms, I = 12A\nmaximum rating for FDD8447L is 60V\n@18A.\nR = 0.012 ohms, dissipation = 1.875 W\nTjt = 4 C/W.\nTa = 42 C/W.\njumper Tj = 4 C/W\nexpected max temp rise  = 12 C/W\n
Wire Notes Line
	500  6450 11200 6450
Wire Notes Line
	11200 1050 11200 6450
Text Notes 7650 4550 0    50   ~ 10
Connectors\n
Text Notes 8650 4850 0    50   ~ 10
To SMPS board
Text Notes 8550 5550 0    50   ~ 10
To Heating Element
Text Notes 10700 5000 0    50   ~ 10
To \nlCD screen
Text Notes 550  6550 0    50   ~ 10
Extra Stuff\n
$Comp
L Mechanical:MountingHole H1
U 1 1 6163B035
P 3300 6700
F 0 "H1" H 3400 6746 50  0000 L CNN
F 1 "MountingHole_M2.5" H 3400 6655 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_ISO7380_Pad_TopBottom" H 3300 6700 50  0001 C CNN
F 3 "~" H 3300 6700 50  0001 C CNN
	1    3300 6700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 6165005F
P 3300 6900
F 0 "H2" H 3400 6946 50  0000 L CNN
F 1 "MountingHole_M2.5" H 3400 6855 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_ISO7380_Pad_TopBottom" H 3300 6900 50  0001 C CNN
F 3 "~" H 3300 6900 50  0001 C CNN
	1    3300 6900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 6165388F
P 4250 6700
F 0 "H3" H 4350 6746 50  0000 L CNN
F 1 "MountingHole_M2.5" H 4350 6655 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_ISO7380_Pad_TopBottom" H 4250 6700 50  0001 C CNN
F 3 "~" H 4250 6700 50  0001 C CNN
	1    4250 6700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 61657073
P 4250 6900
F 0 "H4" H 4350 6946 50  0000 L CNN
F 1 "MountingHole_M2.5" H 4350 6855 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_ISO7380_Pad_TopBottom" H 4250 6900 50  0001 C CNN
F 3 "~" H 4250 6900 50  0001 C CNN
	1    4250 6900
	1    0    0    -1  
$EndComp
Connection ~ 1000 5800
Wire Wire Line
	950  5000 850  5000
Connection ~ 950  5000
Wire Wire Line
	1950 7350 1950 7300
Connection ~ 1950 7300
Wire Wire Line
	1950 7300 1850 7300
$Comp
L power:GND #PWR0106
U 1 1 616B3596
P 1950 7350
F 0 "#PWR0106" H 1950 7100 50  0001 C CNN
F 1 "GND" H 1955 7177 50  0000 C CNN
F 2 "" H 1950 7350 50  0001 C CNN
F 3 "" H 1950 7350 50  0001 C CNN
	1    1950 7350
	1    0    0    -1  
$EndComp
$EndSCHEMATC
