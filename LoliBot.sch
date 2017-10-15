EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:spst
LIBS:rt9276
LIBS:l9110
LIBS:lolin32-lite
LIBS:LoliBot-cache
EELAYER 25 0
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
L CONN_01X02 J1
U 1 1 59DB5DC9
P 950 1200
F 0 "J1" H 950 1350 50  0000 C CNN
F 1 "LOLINBATT" V 1050 1200 50  0000 C CNN
F 2 "" H 950 1200 50  0001 C CNN
F 3 "" H 950 1200 50  0001 C CNN
	1    950  1200
	-1   0    0    1   
$EndComp
$Comp
L Battery_Cell BT1
U 1 1 59DB5FBF
P 1500 1450
F 0 "BT1" H 1600 1550 50  0000 L CNN
F 1 "Battery_Cell" H 1600 1450 50  0000 L CNN
F 2 "" V 1500 1510 50  0001 C CNN
F 3 "" V 1500 1510 50  0001 C CNN
	1    1500 1450
	0    1    1    0   
$EndComp
$Comp
L GND #PWR01
U 1 1 59DB6136
P 1250 2150
F 0 "#PWR01" H 1250 1900 50  0001 C CNN
F 1 "GND" H 1250 2000 50  0000 C CNN
F 2 "" H 1250 2150 50  0001 C CNN
F 3 "" H 1250 2150 50  0001 C CNN
	1    1250 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 1250 1250 1250
Wire Wire Line
	1250 1250 1250 2150
Wire Wire Line
	1400 1450 1250 1450
Connection ~ 1250 1450
Wire Wire Line
	1150 1150 1800 1150
Wire Wire Line
	1800 1150 1800 1450
Wire Wire Line
	1800 1450 1700 1450
$Comp
L SPST SW1
U 1 1 59DB61AE
P 2300 1150
F 0 "SW1" H 2300 1250 50  0000 C CNN
F 1 "SPST" H 2300 1050 50  0000 C CNN
F 2 "" H 2300 1150 50  0001 C CNN
F 3 "" H 2300 1150 50  0000 C CNN
	1    2300 1150
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 59DB630E
P 2900 1450
F 0 "C1" H 2925 1550 50  0000 L CNN
F 1 "10uF 10V" V 2750 1300 50  0000 L CNN
F 2 "" H 2938 1300 50  0001 C CNN
F 3 "" H 2900 1450 50  0001 C CNN
	1    2900 1450
	1    0    0    -1  
$EndComp
$Comp
L L L1
U 1 1 59DB6491
P 3400 1000
F 0 "L1" V 3350 1000 50  0000 C CNN
F 1 "7.4uH CDRH" V 3475 1000 50  0000 C CNN
F 2 "" H 3400 1000 50  0001 C CNN
F 3 "" H 3400 1000 50  0001 C CNN
	1    3400 1000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2800 1150 3950 1150
Wire Wire Line
	2900 1000 2900 1300
$Comp
L R R1
U 1 1 59DB6733
P 3300 1450
F 0 "R1" V 3380 1450 50  0000 C CNN
F 1 "130K" V 3200 1450 50  0000 C CNN
F 2 "" V 3230 1450 50  0001 C CNN
F 3 "" H 3300 1450 50  0001 C CNN
	1    3300 1450
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 59DB681D
P 3300 1950
F 0 "R2" V 3380 1950 50  0000 C CNN
F 1 "20K" V 3200 1950 50  0000 C CNN
F 2 "" V 3230 1950 50  0001 C CNN
F 3 "" H 3300 1950 50  0001 C CNN
	1    3300 1950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 59DB694D
P 2900 1800
F 0 "#PWR02" H 2900 1550 50  0001 C CNN
F 1 "GND" H 2900 1650 50  0000 C CNN
F 2 "" H 2900 1800 50  0001 C CNN
F 3 "" H 2900 1800 50  0001 C CNN
	1    2900 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 1800 2900 1600
Wire Wire Line
	3300 1150 3300 1300
Connection ~ 2900 1150
Wire Wire Line
	3300 1600 3300 1800
Wire Wire Line
	3300 2100 3300 2200
$Comp
L GND #PWR03
U 1 1 59DB6ABB
P 3300 2200
F 0 "#PWR03" H 3300 1950 50  0001 C CNN
F 1 "GND" H 3300 2050 50  0000 C CNN
F 2 "" H 3300 2200 50  0001 C CNN
F 3 "" H 3300 2200 50  0001 C CNN
	1    3300 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 1000 3250 1000
NoConn ~ 5300 1850
$Comp
L GND #PWR04
U 1 1 59DB708D
P 5400 2250
F 0 "#PWR04" H 5400 2000 50  0001 C CNN
F 1 "GND" H 5400 2100 50  0000 C CNN
F 2 "" H 5400 2250 50  0001 C CNN
F 3 "" H 5400 2250 50  0001 C CNN
	1    5400 2250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 59DB70B0
P 4150 2150
F 0 "#PWR05" H 4150 1900 50  0001 C CNN
F 1 "GND" H 4150 2000 50  0000 C CNN
F 2 "" H 4150 2150 50  0001 C CNN
F 3 "" H 4150 2150 50  0001 C CNN
	1    4150 2150
	1    0    0    -1  
$EndComp
$Comp
L RT9276 U2
U 1 1 59DB724C
P 4800 1800
F 0 "U2" H 4800 2300 60  0000 C CNN
F 1 "RT9276" H 4800 1300 60  0000 C CNN
F 2 "Housings_DFN_QFN:DFN-10-1EP_3x3mm_Pitch0.5mm" H 4750 1750 60  0001 C CNN
F 3 "" H 4750 1750 60  0001 C CNN
	1    4800 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2150 5400 2150
Wire Wire Line
	5400 2000 5400 2250
Wire Wire Line
	5300 2000 5400 2000
Connection ~ 5400 2150
Wire Wire Line
	3550 1000 4150 1000
Connection ~ 3300 1150
Wire Wire Line
	3300 1700 4300 1700
Connection ~ 3300 1700
Wire Wire Line
	4150 2150 4150 1850
Wire Wire Line
	4150 1850 4300 1850
Wire Wire Line
	3950 2000 4300 2000
Wire Wire Line
	3950 1150 3950 2000
Wire Wire Line
	4300 1550 3950 1550
Connection ~ 3950 1550
Wire Wire Line
	4300 1400 4150 1400
Wire Wire Line
	4150 1400 4150 1000
$Comp
L R R3
U 1 1 59DB795F
P 5700 1100
F 0 "R3" V 5780 1100 50  0000 C CNN
F 1 "180K 1%" V 5600 1100 50  0000 C CNN
F 2 "" V 5630 1100 50  0001 C CNN
F 3 "" H 5700 1100 50  0001 C CNN
	1    5700 1100
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 59DB79C9
P 5700 2000
F 0 "R4" V 5780 2000 50  0000 C CNN
F 1 "20K 1%" V 5600 2000 50  0000 C CNN
F 2 "" V 5630 2000 50  0001 C CNN
F 3 "" H 5700 2000 50  0001 C CNN
	1    5700 2000
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 59DB7AA4
P 6350 1100
F 0 "R5" V 6430 1100 50  0000 C CNN
F 1 "10K" V 6250 1100 50  0000 C CNN
F 2 "" V 6280 1100 50  0001 C CNN
F 3 "" H 6350 1100 50  0001 C CNN
	1    6350 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 1400 5300 1400
Wire Wire Line
	5450 850  5450 1400
Wire Wire Line
	5700 1250 5700 1850
Wire Wire Line
	5700 1550 5300 1550
Connection ~ 5700 1550
$Comp
L GND #PWR06
U 1 1 59DB7D00
P 5700 2250
F 0 "#PWR06" H 5700 2000 50  0001 C CNN
F 1 "GND" H 5700 2100 50  0000 C CNN
F 2 "" H 5700 2250 50  0001 C CNN
F 3 "" H 5700 2250 50  0001 C CNN
	1    5700 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2150 5700 2250
$Comp
L C C2
U 1 1 59DB7D83
P 6050 1100
F 0 "C2" H 6075 1200 50  0000 L CNN
F 1 "22uF 10V" V 5900 950 50  0000 L CNN
F 2 "" H 6088 950 50  0001 C CNN
F 3 "" H 6050 1100 50  0001 C CNN
	1    6050 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 1250 6050 2250
$Comp
L GND #PWR07
U 1 1 59DB7E46
P 6050 2250
F 0 "#PWR07" H 6050 2000 50  0001 C CNN
F 1 "GND" H 6050 2100 50  0000 C CNN
F 2 "" H 6050 2250 50  0001 C CNN
F 3 "" H 6050 2250 50  0001 C CNN
	1    6050 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 1700 7050 1700
Wire Wire Line
	6350 1700 6350 1250
$Comp
L R R6
U 1 1 59DB81F2
P 6650 1100
F 0 "R6" V 6730 1100 50  0000 C CNN
F 1 "1K" V 6550 1100 50  0000 C CNN
F 2 "" V 6580 1100 50  0001 C CNN
F 3 "" H 6650 1100 50  0001 C CNN
	1    6650 1100
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 59DB82A8
P 6650 1500
F 0 "D1" H 6650 1600 50  0000 C CNN
F 1 "LOW BATT" H 6650 1400 50  0000 C CNN
F 2 "" H 6650 1500 50  0001 C CNN
F 3 "" H 6650 1500 50  0001 C CNN
	1    6650 1500
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR08
U 1 1 59DB834E
P 7200 2250
F 0 "#PWR08" H 7200 2000 50  0001 C CNN
F 1 "GND" H 7200 2100 50  0000 C CNN
F 2 "" H 7200 2250 50  0001 C CNN
F 3 "" H 7200 2250 50  0001 C CNN
	1    7200 2250
	1    0    0    -1  
$EndComp
$Comp
L LED D2
U 1 1 59DB8383
P 7200 1500
F 0 "D2" H 7200 1600 50  0000 C CNN
F 1 "PWR" H 7200 1400 50  0000 C CNN
F 2 "" H 7200 1500 50  0001 C CNN
F 3 "" H 7200 1500 50  0001 C CNN
	1    7200 1500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5450 850  7200 850 
Wire Wire Line
	5700 850  5700 950 
Wire Wire Line
	6050 850  6050 950 
Connection ~ 5700 850 
Wire Wire Line
	6350 850  6350 950 
Connection ~ 6050 850 
Wire Wire Line
	6650 850  6650 950 
Connection ~ 6350 850 
Wire Wire Line
	6650 1250 6650 1350
Wire Wire Line
	6650 1700 6650 1650
Connection ~ 6350 1700
Connection ~ 6650 1700
Text Label 7050 1700 2    60   ~ 0
LBO
$Comp
L R R7
U 1 1 59DB8F30
P 7200 1100
F 0 "R7" V 7280 1100 50  0000 C CNN
F 1 "2K2" V 7100 1100 50  0000 C CNN
F 2 "" V 7130 1100 50  0001 C CNN
F 3 "" H 7200 1100 50  0001 C CNN
	1    7200 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 750  7200 950 
Connection ~ 6650 850 
Wire Wire Line
	7200 1250 7200 1350
Wire Wire Line
	7200 1650 7200 2250
$Comp
L +5V #PWR09
U 1 1 59DB92E1
P 7200 750
F 0 "#PWR09" H 7200 600 50  0001 C CNN
F 1 "+5V" H 7200 890 50  0000 C CNN
F 2 "" H 7200 750 50  0001 C CNN
F 3 "" H 7200 750 50  0001 C CNN
	1    7200 750 
	1    0    0    -1  
$EndComp
Connection ~ 7200 850 
Text Notes 7550 800  0    60   ~ 0
Vout = 5.0V\nat 500mA max.
$Comp
L CONN_01X04 J2
U 1 1 59DBA0EE
P 4250 3150
F 0 "J2" H 4250 3400 50  0000 C CNN
F 1 "APA106" V 4350 3150 50  0000 C CNN
F 2 "" H 4250 3150 50  0001 C CNN
F 3 "" H 4250 3150 50  0001 C CNN
	1    4250 3150
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR010
U 1 1 59DBA2B8
P 3750 3250
F 0 "#PWR010" H 3750 3100 50  0001 C CNN
F 1 "+5V" H 3750 3390 50  0000 C CNN
F 2 "" H 3750 3250 50  0001 C CNN
F 3 "" H 3750 3250 50  0001 C CNN
	1    3750 3250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 59DBA675
P 4300 3550
F 0 "#PWR011" H 4300 3300 50  0001 C CNN
F 1 "GND" H 4300 3400 50  0000 C CNN
F 2 "" H 4300 3550 50  0001 C CNN
F 3 "" H 4300 3550 50  0001 C CNN
	1    4300 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 3350 4300 3550
$Comp
L L9110 U3
U 1 1 59DBB35F
P 9700 4300
F 0 "U3" H 9700 4550 60  0000 C CNN
F 1 "L9110" H 9700 3950 60  0000 C CNN
F 2 "" H 9700 4300 60  0001 C CNN
F 3 "" H 9700 4300 60  0000 C CNN
	1    9700 4300
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 J4
U 1 1 59DBB5AA
P 10800 4800
F 0 "J4" H 10800 4950 50  0000 C CNN
F 1 "RIGHT" V 10900 4800 50  0000 C CNN
F 2 "Connectors_JST:JST_PH_B2B-PH-K_02x2.00mm_Straight" H 10800 4800 50  0001 C CNN
F 3 "" H 10800 4800 50  0001 C CNN
	1    10800 4800
	0    1    1    0   
$EndComp
$Comp
L GND #PWR012
U 1 1 59DBB61B
P 10450 4750
F 0 "#PWR012" H 10450 4500 50  0001 C CNN
F 1 "GND" H 10450 4600 50  0000 C CNN
F 2 "" H 10450 4750 50  0001 C CNN
F 3 "" H 10450 4750 50  0001 C CNN
	1    10450 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 4100 10450 4100
Wire Wire Line
	10450 4100 10450 4750
Wire Wire Line
	10300 4550 10450 4550
Connection ~ 10450 4550
Wire Wire Line
	10300 4400 10750 4400
Wire Wire Line
	10750 4400 10750 4600
Wire Wire Line
	10300 4250 10850 4250
Wire Wire Line
	10850 4250 10850 4600
$Comp
L +5V #PWR013
U 1 1 59DBBC2C
P 8950 3950
F 0 "#PWR013" H 8950 3800 50  0001 C CNN
F 1 "+5V" H 8950 4090 50  0000 C CNN
F 2 "" H 8950 3950 50  0001 C CNN
F 3 "" H 8950 3950 50  0001 C CNN
	1    8950 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 3950 8950 4400
Wire Wire Line
	8950 4400 9100 4400
Wire Wire Line
	9100 4250 8950 4250
Connection ~ 8950 4250
Wire Wire Line
	9100 4100 8700 4100
Wire Wire Line
	9100 4550 8700 4550
Text Label 8700 4100 0    60   ~ 0
IO18
Text Label 8700 4550 0    60   ~ 0
IO23
$Comp
L L9110 U4
U 1 1 59DBCDB7
P 9750 5600
F 0 "U4" H 9750 5850 60  0000 C CNN
F 1 "L9110" H 9750 5250 60  0000 C CNN
F 2 "" H 9750 5600 60  0001 C CNN
F 3 "" H 9750 5600 60  0000 C CNN
	1    9750 5600
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 J5
U 1 1 59DBCDBD
P 10850 6100
F 0 "J5" H 10850 6250 50  0000 C CNN
F 1 "LEFT" V 10950 6100 50  0000 C CNN
F 2 "Connectors_JST:JST_PH_B2B-PH-K_02x2.00mm_Straight" H 10850 6100 50  0001 C CNN
F 3 "" H 10850 6100 50  0001 C CNN
	1    10850 6100
	0    1    1    0   
$EndComp
$Comp
L GND #PWR014
U 1 1 59DBCDC3
P 10500 6050
F 0 "#PWR014" H 10500 5800 50  0001 C CNN
F 1 "GND" H 10500 5900 50  0000 C CNN
F 2 "" H 10500 6050 50  0001 C CNN
F 3 "" H 10500 6050 50  0001 C CNN
	1    10500 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 5400 10500 5400
Wire Wire Line
	10500 5400 10500 6050
Wire Wire Line
	10350 5850 10500 5850
Connection ~ 10500 5850
Wire Wire Line
	10350 5700 10800 5700
Wire Wire Line
	10800 5700 10800 5900
Wire Wire Line
	10350 5550 10900 5550
Wire Wire Line
	10900 5550 10900 5900
$Comp
L +5V #PWR015
U 1 1 59DBCDD1
P 9000 5250
F 0 "#PWR015" H 9000 5100 50  0001 C CNN
F 1 "+5V" H 9000 5390 50  0000 C CNN
F 2 "" H 9000 5250 50  0001 C CNN
F 3 "" H 9000 5250 50  0001 C CNN
	1    9000 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 5250 9000 5700
Wire Wire Line
	9000 5700 9150 5700
Wire Wire Line
	9150 5550 9000 5550
Connection ~ 9000 5550
Wire Wire Line
	9150 5400 8750 5400
Wire Wire Line
	9150 5850 8750 5850
Text Label 8750 5400 0    60   ~ 0
IO34
Text Label 8750 5850 0    60   ~ 0
IO35
$Comp
L CONN_01X03 J3
U 1 1 59DBD721
P 6800 3350
F 0 "J3" H 6800 3550 50  0000 C CNN
F 1 "SERVO1" V 6900 3350 50  0000 C CNN
F 2 "" H 6800 3350 50  0001 C CNN
F 3 "" H 6800 3350 50  0001 C CNN
	1    6800 3350
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR016
U 1 1 59DBDAEB
P 6500 3150
F 0 "#PWR016" H 6500 3000 50  0001 C CNN
F 1 "+5V" H 6500 3290 50  0000 C CNN
F 2 "" H 6500 3150 50  0001 C CNN
F 3 "" H 6500 3150 50  0001 C CNN
	1    6500 3150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 59DBDB38
P 6500 3550
F 0 "#PWR017" H 6500 3300 50  0001 C CNN
F 1 "GND" H 6500 3400 50  0000 C CNN
F 2 "" H 6500 3550 50  0001 C CNN
F 3 "" H 6500 3550 50  0001 C CNN
	1    6500 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 3150 6500 3350
Wire Wire Line
	6500 3350 6600 3350
Wire Wire Line
	6500 3550 6500 3450
Wire Wire Line
	6500 3450 6600 3450
Wire Wire Line
	6600 3250 6300 3250
Text Label 6300 3250 0    60   ~ 0
IO2
Wire Wire Line
	1750 4650 1400 4650
Text Label 1400 4650 0    60   ~ 0
VP
Wire Wire Line
	1750 4750 1400 4750
Text Label 1400 4750 0    60   ~ 0
VN
Wire Wire Line
	1750 4850 1400 4850
Text Label 1400 4850 0    60   ~ 0
FN
Wire Wire Line
	1750 4950 1400 4950
Text Label 1400 4950 0    60   ~ 0
IO34
Wire Wire Line
	1750 5050 1400 5050
Text Label 1400 5050 0    60   ~ 0
IO35
Wire Wire Line
	1750 5150 1400 5150
Text Label 1400 5150 0    60   ~ 0
IO32
Wire Wire Line
	1750 5250 1400 5250
Text Label 1400 5250 0    60   ~ 0
IO33
Wire Wire Line
	1750 5350 1400 5350
Text Label 1400 5350 0    60   ~ 0
IO25
Wire Wire Line
	1750 5450 1400 5450
Text Label 1400 5450 0    60   ~ 0
IO26
Wire Wire Line
	1750 5550 1400 5550
Text Label 1400 5550 0    60   ~ 0
IO27
Wire Wire Line
	1750 5650 1400 5650
Text Label 1400 5650 0    60   ~ 0
IO14
Wire Wire Line
	1750 5750 1400 5750
Text Label 1400 5750 0    60   ~ 0
IO12
Wire Wire Line
	1300 5850 1750 5850
Text Label 1400 5850 0    60   ~ 0
GND
Wire Wire Line
	2850 4650 3300 4650
Text Label 3200 4650 2    60   ~ 0
+3V3
Wire Wire Line
	2850 4750 3200 4750
Text Label 3200 4750 2    60   ~ 0
IO22
Wire Wire Line
	2850 4850 3200 4850
Text Label 3200 4850 2    60   ~ 0
IO19
Wire Wire Line
	2850 4950 3200 4950
Text Label 3200 4950 2    60   ~ 0
IO23
Wire Wire Line
	2850 5050 3200 5050
Text Label 3200 5050 2    60   ~ 0
IO18
Wire Wire Line
	2850 5150 3200 5150
Text Label 3200 5150 2    60   ~ 0
IO5
Wire Wire Line
	2850 5250 3200 5250
Text Label 3200 5250 2    60   ~ 0
IO17
Wire Wire Line
	2850 5350 3200 5350
Text Label 3200 5350 2    60   ~ 0
IO16
Wire Wire Line
	2850 5450 3200 5450
Text Label 3200 5450 2    60   ~ 0
IO4
Wire Wire Line
	2850 5550 3200 5550
Text Label 3200 5550 2    60   ~ 0
IO0
Wire Wire Line
	2850 5650 3200 5650
Text Label 3200 5650 2    60   ~ 0
IO2
Wire Wire Line
	2850 5750 3200 5750
Text Label 3200 5750 2    60   ~ 0
IO15
Wire Wire Line
	2850 5850 3200 5850
Text Label 3200 5850 2    60   ~ 0
IO13
$Comp
L +3.3V #PWR018
U 1 1 59DC0699
P 3300 4450
F 0 "#PWR018" H 3300 4300 50  0001 C CNN
F 1 "+3.3V" H 3300 4590 50  0000 C CNN
F 2 "" H 3300 4450 50  0001 C CNN
F 3 "" H 3300 4450 50  0001 C CNN
	1    3300 4450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 59DC0B2B
P 1300 6000
F 0 "#PWR019" H 1300 5750 50  0001 C CNN
F 1 "GND" H 1300 5850 50  0000 C CNN
F 2 "" H 1300 6000 50  0001 C CNN
F 3 "" H 1300 6000 50  0001 C CNN
	1    1300 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 5850 1300 6000
Wire Wire Line
	3300 4650 3300 4450
$Comp
L LOLIN32-LITE U1
U 1 1 59E0B378
P 2300 5250
F 0 "U1" H 2300 5950 60  0000 C CNN
F 1 "LOLIN32-LITE" H 2300 4500 60  0000 C CNN
F 2 "" H 2400 5500 60  0001 C CNN
F 3 "" H 2400 5500 60  0001 C CNN
	1    2300 5250
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x10 J6
U 1 1 59E28CBB
P 4800 5200
F 0 "J6" H 4800 5700 50  0000 C CNN
F 1 "MPU-9250" H 4800 4600 50  0000 C CNN
F 2 "" H 4800 5200 50  0001 C CNN
F 3 "" H 4800 5200 50  0001 C CNN
	1    4800 5200
	-1   0    0    1   
$EndComp
Text Label 5000 4700 0    60   ~ 0
VCC
Text Label 5000 4800 0    60   ~ 0
GND
Text Label 5000 4900 0    60   ~ 0
SCL
Text Label 5000 5000 0    60   ~ 0
SDA
Text Label 5000 5100 0    60   ~ 0
EDA
Text Label 5000 5200 0    60   ~ 0
ECL
Text Label 5000 5300 0    60   ~ 0
ADO
Text Label 5000 5400 0    60   ~ 0
INT
Text Label 5000 5500 0    60   ~ 0
NCS
Text Label 5000 5600 0    60   ~ 0
FSYNC
$Comp
L +3.3V #PWR020
U 1 1 59E28F97
P 5300 4400
F 0 "#PWR020" H 5300 4250 50  0001 C CNN
F 1 "+3.3V" H 5300 4540 50  0000 C CNN
F 2 "" H 5300 4400 50  0001 C CNN
F 3 "" H 5300 4400 50  0001 C CNN
	1    5300 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 4700 5300 4700
Wire Wire Line
	5300 4700 5300 4400
$Comp
L GND #PWR021
U 1 1 59E29073
P 5300 5700
F 0 "#PWR021" H 5300 5450 50  0001 C CNN
F 1 "GND" H 5300 5550 50  0000 C CNN
F 2 "" H 5300 5700 50  0001 C CNN
F 3 "" H 5300 5700 50  0001 C CNN
	1    5300 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 4800 5300 4800
Wire Wire Line
	5300 4800 5300 5700
Wire Wire Line
	5000 4900 5700 4900
Wire Wire Line
	5000 5000 5700 5000
Text Label 5700 4900 2    60   ~ 0
IO19
Text Label 5700 5000 2    60   ~ 0
IO18
Wire Wire Line
	5000 5400 5700 5400
Text Label 5700 5400 2    60   ~ 0
IO14
NoConn ~ 5000 5600
NoConn ~ 5000 5500
NoConn ~ 5000 5300
NoConn ~ 5000 5200
NoConn ~ 5000 5100
$Comp
L CONN_01X04 J7
U 1 1 59E30588
P 5100 3150
F 0 "J7" H 5100 3400 50  0000 C CNN
F 1 "APA106" V 5200 3150 50  0000 C CNN
F 2 "" H 5100 3150 50  0001 C CNN
F 3 "" H 5100 3150 50  0001 C CNN
	1    5100 3150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4400 3350 4400 3550
Wire Wire Line
	4400 3550 4950 3550
Wire Wire Line
	4950 3550 4950 3350
Wire Wire Line
	4100 3600 4100 3350
Wire Wire Line
	3500 3600 4100 3600
Text Label 3500 3600 0    60   ~ 0
IO17
$Comp
L +5V #PWR022
U 1 1 59E30CAE
P 4600 3250
F 0 "#PWR022" H 4600 3100 50  0001 C CNN
F 1 "+5V" H 4600 3390 50  0000 C CNN
F 2 "" H 4600 3250 50  0001 C CNN
F 3 "" H 4600 3250 50  0001 C CNN
	1    4600 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 3350 5050 3450
Wire Wire Line
	5050 3450 4600 3450
Wire Wire Line
	4600 3450 4600 3250
Wire Wire Line
	4200 3350 4200 3450
Wire Wire Line
	4200 3450 3750 3450
Wire Wire Line
	3750 3450 3750 3250
Wire Wire Line
	5150 3350 5150 3550
$Comp
L GND #PWR023
U 1 1 59E30F3C
P 5150 3550
F 0 "#PWR023" H 5150 3300 50  0001 C CNN
F 1 "GND" H 5150 3400 50  0000 C CNN
F 2 "" H 5150 3550 50  0001 C CNN
F 3 "" H 5150 3550 50  0001 C CNN
	1    5150 3550
	1    0    0    -1  
$EndComp
NoConn ~ 5250 3350
$EndSCHEMATC
