EESchema Schematic File Version 4
EELAYER 29 0
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
L MCU_ST_STM32F1:STM32F103C8Tx U1
U 1 1 5D003CA2
P 5750 2650
F 0 "U1" H 5700 1061 50  0000 C CNN
F 1 "STM32F103C8Tx" H 5700 970 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 5150 1250 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00161566.pdf" H 5750 2650 50  0001 C CNN
	1    5750 2650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Male J?
U 1 1 5D005228
P 9650 2000
F 0 "J?" H 9800 1500 50  0000 R CNN
F 1 "Conn_Sensor_Infra" V 9600 2300 50  0000 R CNN
F 2 "" H 9650 2000 50  0001 C CNN
F 3 "~" H 9650 2000 50  0001 C CNN
	1    9650 2000
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J?
U 1 1 5D00BA5C
P 1250 1450
F 0 "J?" H 1358 1631 50  0000 C CNN
F 1 "Conn_Bateria" H 1358 1540 50  0000 C CNN
F 2 "" H 1250 1450 50  0001 C CNN
F 3 "~" H 1250 1450 50  0001 C CNN
	1    1250 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D00C2B3
P 1700 1750
F 0 "#PWR?" H 1700 1500 50  0001 C CNN
F 1 "GND" H 1705 1577 50  0000 C CNN
F 2 "" H 1700 1750 50  0001 C CNN
F 3 "" H 1700 1750 50  0001 C CNN
	1    1700 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 1550 1700 1550
Wire Wire Line
	1700 1550 1700 1750
$Comp
L power:VCC #PWR?
U 1 1 5D00C7DC
P 1700 1250
F 0 "#PWR?" H 1700 1100 50  0001 C CNN
F 1 "VCC" H 1717 1423 50  0000 C CNN
F 2 "" H 1700 1250 50  0001 C CNN
F 3 "" H 1700 1250 50  0001 C CNN
	1    1700 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 1450 1700 1450
Wire Wire Line
	1700 1450 1700 1250
$Comp
L Regulator_Linear:AMS1117-3.3 U?
U 1 1 5D00DA79
P 2050 3800
F 0 "U?" H 2050 4042 50  0000 C CNN
F 1 "AMS1117-3.3" H 2050 3951 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 2050 4000 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 2150 3550 50  0001 C CNN
	1    2050 3800
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AMS1117-5.0 U?
U 1 1 5D00FB7E
P 2050 2750
F 0 "U?" H 2050 2992 50  0000 C CNN
F 1 "AMS1117-5.0" H 2050 2901 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 2050 2950 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 2150 2500 50  0001 C CNN
	1    2050 2750
	1    0    0    -1  
$EndComp
$EndSCHEMATC
