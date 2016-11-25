EESchema Schematic File Version 2
LIBS:Mouse-01
LIBS:74xgxx
LIBS:74xx
LIBS:ac-dc
LIBS:actel
LIBS:adc-dac
LIBS:Altera
LIBS:analog_devices
LIBS:analog_switches
LIBS:atmel
LIBS:audio
LIBS:brooktre
LIBS:cmos_ieee
LIBS:cmos4000
LIBS:conn
LIBS:connectors
LIBS:contrib
LIBS:cypress
LIBS:dc-dc
LIBS:device
LIBS:digital-audio
LIBS:diode
LIBS:display
LIBS:dsp
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:graphic
LIBS:hc11
LIBS:ic-cpu
LIBS:ic-io
LIBS:ic-misc
LIBS:ic-power
LIBS:intel
LIBS:interface
LIBS:ir
LIBS:Lattice
LIBS:linear
LIBS:logo
LIBS:maxim
LIBS:memory
LIBS:microchip
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic32mcu
LIBS:microcontrollers
LIBS:motor_drivers
LIBS:motorola
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:opto
LIBS:Oscillators
LIBS:passive
LIBS:philips
LIBS:power
LIBS:Power_Management
LIBS:powerint
LIBS:pspice
LIBS:references
LIBS:regul
LIBS:relays
LIBS:rfcom
LIBS:sensors
LIBS:silabs
LIBS:siliconi
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:switches
LIBS:texas
LIBS:transf
LIBS:transistors
LIBS:ttl_ieee
LIBS:valves
LIBS:video
LIBS:Xicor
LIBS:xilinx
LIBS:Zilog
LIBS:Mouse-01-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 13
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
L STM32F405RGTx U1
U 1 1 57C8ED63
P 7600 3600
F 0 "U1" H 5050 6550 50  0000 L BNN
F 1 "STM32F405RGTx" H 5650 6400 50  0000 R BNN
F 2 "Housings_QFP:LQFP-64_10x10mm_Pitch0.5mm" H 6850 1050 50  0000 R TNN
F 3 "" H 6050 4800 50  0000 C CNN
	1    7600 3600
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR01
U 1 1 57C90296
P 4800 1000
F 0 "#PWR01" H 4800 850 50  0001 C CNN
F 1 "+3.3V" H 4800 1140 50  0000 C CNN
F 2 "" H 4800 1000 50  0000 C CNN
F 3 "" H 4800 1000 50  0000 C CNN
	1    4800 1000
	1    0    0    -1  
$EndComp
$Comp
L C_Small C11
U 1 1 57C91C59
P 4500 4800
F 0 "C11" H 4510 4870 50  0000 L CNN
F 1 "2.2u" H 4510 4720 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4500 4800 50  0001 C CNN
F 3 "" H 4500 4800 50  0000 C CNN
	1    4500 4800
	0    1    1    0   
$EndComp
$Comp
L C_Small C10
U 1 1 57C928EA
P 4500 4550
F 0 "C10" H 4510 4620 50  0000 L CNN
F 1 "2.2u" H 4510 4470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4500 4550 50  0001 C CNN
F 3 "" H 4500 4550 50  0000 C CNN
	1    4500 4550
	0    1    1    0   
$EndComp
$Comp
L GND #PWR02
U 1 1 57C96070
P 4600 3700
F 0 "#PWR02" H 4600 3450 50  0001 C CNN
F 1 "GND" H 4600 3550 50  0000 C CNN
F 2 "" H 4600 3700 50  0000 C CNN
F 3 "" H 4600 3700 50  0000 C CNN
	1    4600 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 57C960BE
P 4300 3700
F 0 "#PWR03" H 4300 3450 50  0001 C CNN
F 1 "GND" H 4300 3550 50  0000 C CNN
F 2 "" H 4300 3700 50  0000 C CNN
F 3 "" H 4300 3700 50  0000 C CNN
	1    4300 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 57C99E1F
P 4300 5100
F 0 "#PWR04" H 4300 4850 50  0001 C CNN
F 1 "GND" H 4300 4950 50  0000 C CNN
F 2 "" H 4300 5100 50  0000 C CNN
F 3 "" H 4300 5100 50  0000 C CNN
	1    4300 5100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 57C9A3C2
P 4800 6100
F 0 "#PWR05" H 4800 5850 50  0001 C CNN
F 1 "GND" H 4800 5950 50  0000 C CNN
F 2 "" H 4800 6100 50  0000 C CNN
F 3 "" H 4800 6100 50  0000 C CNN
	1    4800 6100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 57CA25EF
P 4800 3900
F 0 "#PWR06" H 4800 3650 50  0001 C CNN
F 1 "GND" H 4800 3750 50  0000 C CNN
F 2 "" H 4800 3900 50  0000 C CNN
F 3 "" H 4800 3900 50  0000 C CNN
	1    4800 3900
	1    0    0    -1  
$EndComp
$Sheet
S 1400 6500 1000 300 
U 57CA18F6
F0 "Motor_L" 60
F1 "Motor.sch" 60
F2 "ENC_A" I R 2400 6600 60 
F3 "ENC_B" I R 2400 6700 60 
F4 "MT_IN_1" I L 1400 6600 60 
F5 "MT_IN_2" I L 1400 6700 60 
$EndSheet
Text GLabel 1300 6600 0    50   Input ~ 0
MT-IN-L-1
Text GLabel 1300 6700 0    50   Input ~ 0
MT-IN-L-2
Text GLabel 2500 6600 2    50   Input ~ 0
EN-L-A
Text GLabel 2500 6700 2    50   Input ~ 0
EN-L-B
$Sheet
S 1400 7100 1000 300 
U 57CA507C
F0 "Motor_R" 60
F1 "Motor.sch" 60
F2 "ENC_A" I R 2400 7200 60 
F3 "ENC_B" I R 2400 7300 60 
F4 "MT_IN_1" I L 1400 7200 60 
F5 "MT_IN_2" I L 1400 7300 60 
$EndSheet
Text GLabel 2500 7300 2    50   Input ~ 0
EN-R-B
Text GLabel 2500 7200 2    50   Input ~ 0
EN-R-A
Text GLabel 1300 7200 0    50   Input ~ 0
MT-IN-R-1
Text GLabel 1300 7300 0    50   Input ~ 0
MT-IN-R-2
Text GLabel 1300 4300 0    50   Input ~ 0
PR-LED-SL-FR
Text GLabel 3100 4300 2    50   Input ~ 0
PR-RCV-SL
Text GLabel 3100 4800 2    50   Input ~ 0
PR-RCV-FL
Text GLabel 3100 5300 2    50   Input ~ 0
PR-RCV-FR
Text GLabel 3100 5800 2    50   Input ~ 0
PR-RCV-SR
$Sheet
S 1300 1250 800  200 
U 57CA15C1
F0 "Power" 60
F1 "Power.sch" 60
F2 "BAT_VOL" I R 2100 1350 60 
$EndSheet
Text GLabel 10400 4200 2    50   Input ~ 0
PR-RCV-SL
Text GLabel 10400 4300 2    50   Input ~ 0
PR-RCV-FL
Text GLabel 10400 4400 2    50   Input ~ 0
PR-RCV-FR
Text GLabel 10400 4500 2    50   Input ~ 0
PR-RCV-SR
Text GLabel 10400 2900 2    50   Input ~ 0
EN-L-A
Text GLabel 10400 3000 2    50   Input ~ 0
EN-L-B
Text GLabel 10400 3100 2    50   Input ~ 0
EN-R-A
Text GLabel 10400 3200 2    50   Input ~ 0
EN-R-B
Text GLabel 10400 800  2    50   Input ~ 0
MT-IN-L-1
Text GLabel 10400 1000 2    50   Input ~ 0
MT-IN-R-1
Text GLabel 10400 900  2    50   Input ~ 0
MT-IN-L-2
Text GLabel 10400 1100 2    50   Input ~ 0
MT-IN-R-2
$Comp
L C_Small C3
U 1 1 57CCF51A
P 4500 1500
F 0 "C3" H 4510 1570 50  0000 L CNN
F 1 "0.1u" H 4510 1420 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4500 1500 50  0001 C CNN
F 3 "" H 4500 1500 50  0000 C CNN
	1    4500 1500
	0    1    1    0   
$EndComp
$Comp
L C_Small C4
U 1 1 57CDA654
P 4500 1700
F 0 "C4" H 4510 1770 50  0000 L CNN
F 1 "0.1u" H 4510 1620 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4500 1700 50  0001 C CNN
F 3 "" H 4500 1700 50  0000 C CNN
	1    4500 1700
	0    1    1    0   
$EndComp
$Comp
L C_Small C2
U 1 1 57CDA6E0
P 4500 1300
F 0 "C2" H 4510 1370 50  0000 L CNN
F 1 "0.1u" H 4510 1220 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4500 1300 50  0001 C CNN
F 3 "" H 4500 1300 50  0000 C CNN
	1    4500 1300
	0    1    1    0   
$EndComp
$Comp
L C_Small C1
U 1 1 57CDA771
P 4500 1100
F 0 "C1" H 4510 1170 50  0000 L CNN
F 1 "0.1u" H 4510 1020 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4500 1100 50  0001 C CNN
F 3 "" H 4500 1100 50  0000 C CNN
	1    4500 1100
	0    1    1    0   
$EndComp
$Comp
L C_Small C5
U 1 1 57CDA805
P 4500 2000
F 0 "C5" H 4510 2070 50  0000 L CNN
F 1 "0.1u" H 4510 1920 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4500 2000 50  0001 C CNN
F 3 "" H 4500 2000 50  0000 C CNN
	1    4500 2000
	0    1    1    0   
$EndComp
$Comp
L GND #PWR07
U 1 1 57CDA895
P 4300 2600
F 0 "#PWR07" H 4300 2350 50  0001 C CNN
F 1 "GND" H 4300 2450 50  0000 C CNN
F 2 "" H 4300 2600 50  0000 C CNN
F 3 "" H 4300 2600 50  0000 C CNN
	1    4300 2600
	1    0    0    -1  
$EndComp
$Comp
L C_Small C8
U 1 1 57CDB4B2
P 4500 2300
F 0 "C8" H 4510 2370 50  0000 L CNN
F 1 "0.1u" H 4510 2220 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4500 2300 50  0001 C CNN
F 3 "" H 4500 2300 50  0000 C CNN
	1    4500 2300
	0    1    1    0   
$EndComp
$Sheet
S 1400 4200 600  200 
U 57CEFE78
F0 "IR_LED_SL_FR" 50
F1 "IR_LED.sch" 50
F2 "IR_LED" I L 1400 4300 50 
$EndSheet
$Sheet
S 2400 4200 600  200 
U 57CF0B09
F0 "IR_RCV_SL" 50
F1 "IR_RCV.sch" 50
F2 "IR_RCV" I R 3000 4300 50 
$EndSheet
$Sheet
S 2400 4700 600  200 
U 57CF289D
F0 "IR_RCV_FL" 50
F1 "IR_RCV.sch" 50
F2 "IR_RCV" I R 3000 4800 50 
$EndSheet
$Sheet
S 2400 5200 600  200 
U 57CF292E
F0 "IR_RCV_FR" 50
F1 "IR_RCV.sch" 50
F2 "IR_RCV" I R 3000 5300 50 
$EndSheet
$Sheet
S 2400 5700 600  200 
U 57CF2A30
F0 "IR_RCV_SR" 50
F1 "IR_RCV.sch" 50
F2 "IR_RCV" I R 3000 5800 50 
$EndSheet
$Sheet
S 1400 4700 600  200 
U 57CF2D36
F0 "IR_LED_FL_SR" 50
F1 "IR_LED.sch" 50
F2 "IR_LED" I L 1400 4800 50 
$EndSheet
Text GLabel 1300 4800 0    50   Input ~ 0
PR-LED-FL_SR
Text GLabel 10400 3900 2    50   Input ~ 0
PR-LED-SL-FR
Text GLabel 10400 4000 2    50   Input ~ 0
PR-LED-FL_SR
$Sheet
S 1300 3000 1000 600 
U 57CC33F6
F0 "AXIS_SENSOR" 60
F1 "AXIS_SENSOR.sch" 60
F2 "AXIS_~CS" I R 2300 3100 60 
F3 "AXIS_SCK" I R 2300 3200 60 
F4 "AXIS_MOSI" I R 2300 3300 60 
F5 "AXIS_MISO" I R 2300 3400 60 
F6 "AXIS_INT" I R 2300 3500 60 
$EndSheet
Text GLabel 2400 3100 2    50   Input ~ 0
AXIS_~CS
Text GLabel 2400 3200 2    50   Input ~ 0
AXIS_SCK
Text GLabel 2400 3300 2    50   Input ~ 0
AXIS_MOSI
Text GLabel 2400 3400 2    50   Input ~ 0
AXIS_MISO
Text GLabel 2400 3500 2    50   Input ~ 0
AXIS_INT
Text GLabel 2200 1350 2    50   Input ~ 0
BAT-VOL
Text GLabel 10400 2600 2    50   Input ~ 0
BAT-VOL
Text GLabel 10400 1200 2    50   Input ~ 0
AXIS_~CS
Text GLabel 10400 1300 2    50   Input ~ 0
AXIS_SCK
Text GLabel 10400 1500 2    50   Input ~ 0
AXIS_MOSI
Text GLabel 10400 1400 2    50   Input ~ 0
AXIS_MISO
Text GLabel 10400 4600 2    50   Input ~ 0
AXIS_INT
$Sheet
S 1300 2000 1000 500 
U 57CD8D81
F0 "UI" 60
F1 "UI.sch" 60
F2 "SPEAKER" I R 2300 2100 60 
F3 "LED_1" I L 1300 2100 60 
F4 "LED_2" I L 1300 2200 60 
F5 "LED_3" I L 1300 2300 60 
F6 "LED_4" I L 1300 2400 60 
F7 "BUTTON" I R 2300 2200 60 
$EndSheet
$Sheet
S 3200 6600 600  800 
U 57CDA827
F0 "COM" 60
F1 "COM.sch" 60
F2 "SWCLK" I R 3800 6700 60 
F3 "SWDIO" I R 3800 6800 60 
F4 "~RST" I R 3800 6900 60 
F5 "SWO" I R 3800 7000 60 
F6 "UART_RX" I R 3800 7200 60 
F7 "UART_TX" I R 3800 7300 60 
$EndSheet
Text GLabel 3900 6700 2    50   Input ~ 0
SWCLK
Text GLabel 3900 6800 2    50   Input ~ 0
SWDIO
Text GLabel 3900 6900 2    50   Input ~ 0
RESET
Text GLabel 4200 2900 0    50   Input ~ 0
RESET
$Comp
L C C9
U 1 1 57CDEB3C
P 4600 3300
F 0 "C9" H 4625 3400 50  0000 L CNN
F 1 "0.1u" H 4625 3200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4638 3150 50  0001 C CNN
F 3 "" H 4600 3300 50  0000 C CNN
	1    4600 3300
	1    0    0    -1  
$EndComp
Text GLabel 3900 7000 2    50   Input ~ 0
SWO
Text GLabel 3900 7200 2    50   Input ~ 0
UART-RX
Text GLabel 3900 7300 2    50   Input ~ 0
UART-TX
Text GLabel 10400 2200 2    50   Input ~ 0
SWCLK
Text GLabel 10400 2100 2    50   Input ~ 0
SWDIO
Text GLabel 10400 2800 2    50   Input ~ 0
SWO
Text GLabel 10400 1800 2    50   Input ~ 0
UART-RX
Text GLabel 10400 1700 2    50   Input ~ 0
UART-TX
Text GLabel 1200 2100 0    50   Input ~ 0
LED_1
Text GLabel 1200 2200 0    50   Input ~ 0
LED_2
Text GLabel 1200 2300 0    50   Input ~ 0
LED_3
Text GLabel 1200 2400 0    50   Input ~ 0
LED_4
Text GLabel 2400 2200 2    50   Input ~ 0
BUTTON
Text GLabel 2400 2100 2    50   Input ~ 0
SPEAKER
Text GLabel 10400 4700 2    50   Input ~ 0
LED_1
Text GLabel 10400 4800 2    50   Input ~ 0
LED_2
Text GLabel 10400 4900 2    50   Input ~ 0
LED_3
Text GLabel 10400 5000 2    50   Input ~ 0
LED_4
Text GLabel 10400 2500 2    50   Input ~ 0
BUTTON
Text GLabel 10400 3400 2    50   Input ~ 0
SPEAKER
$Comp
L PWR_FLAG #FLG08
U 1 1 57D09A39
P 4700 4450
F 0 "#FLG08" H 4700 4545 50  0001 C CNN
F 1 "PWR_FLAG" H 4700 4630 50  0000 C CNN
F 2 "" H 4700 4450 50  0000 C CNN
F 3 "" H 4700 4450 50  0000 C CNN
	1    4700 4450
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG09
U 1 1 57D180C1
P 4700 4900
F 0 "#FLG09" H 4700 4995 50  0001 C CNN
F 1 "PWR_FLAG" H 4700 5080 50  0000 C CNN
F 2 "" H 4700 4900 50  0000 C CNN
F 3 "" H 4700 4900 50  0000 C CNN
	1    4700 4900
	-1   0    0    1   
$EndComp
NoConn ~ 10300 1600
NoConn ~ 10300 1900
NoConn ~ 10300 2000
NoConn ~ 10300 2300
NoConn ~ 10300 2700
NoConn ~ 10300 3300
NoConn ~ 10300 3500
NoConn ~ 10300 3600
NoConn ~ 10300 3700
NoConn ~ 10300 3800
NoConn ~ 10300 5100
NoConn ~ 10300 5200
NoConn ~ 10300 5300
NoConn ~ 10300 5400
NoConn ~ 10300 5500
NoConn ~ 10300 5600
NoConn ~ 10300 5700
NoConn ~ 10300 5900
NoConn ~ 10300 6100
NoConn ~ 10300 6200
Wire Wire Line
	4800 1000 4800 2300
Wire Wire Line
	4600 1500 4900 1500
Connection ~ 4800 1500
Wire Wire Line
	4600 1700 4900 1700
Connection ~ 4800 1700
Wire Wire Line
	4600 2000 4900 2000
Wire Wire Line
	4600 2300 4900 2300
Connection ~ 4800 2000
Wire Wire Line
	4800 5500 4800 6100
Wire Wire Line
	4800 5700 4900 5700
Connection ~ 4800 5700
Wire Wire Line
	2500 6600 2400 6600
Wire Wire Line
	2400 6700 2500 6700
Wire Wire Line
	1300 6600 1400 6600
Wire Wire Line
	1400 6700 1300 6700
Wire Wire Line
	2500 7200 2400 7200
Wire Wire Line
	2400 7300 2500 7300
Wire Wire Line
	1400 7200 1300 7200
Wire Wire Line
	1300 7300 1400 7300
Wire Wire Line
	3100 4800 3000 4800
Wire Wire Line
	3100 4300 3000 4300
Wire Wire Line
	1400 4300 1300 4300
Wire Wire Line
	3100 5800 3000 5800
Wire Wire Line
	3000 5300 3100 5300
Wire Wire Line
	4600 1100 4900 1100
Wire Wire Line
	4600 1300 4900 1300
Connection ~ 4800 1100
Connection ~ 4800 1300
Wire Wire Line
	4800 5500 4900 5500
Wire Wire Line
	4800 6000 4900 6000
Connection ~ 4800 6000
Wire Wire Line
	4300 1100 4300 2600
Wire Wire Line
	3900 1700 4400 1700
Connection ~ 4300 2000
Wire Wire Line
	4300 1500 4400 1500
Connection ~ 4300 1700
Wire Wire Line
	4300 1300 4400 1300
Connection ~ 4300 1500
Wire Wire Line
	4300 1100 4400 1100
Connection ~ 4300 1300
Connection ~ 4800 2300
Wire Wire Line
	4300 2300 4400 2300
Connection ~ 4300 2300
Wire Wire Line
	1300 4800 1400 4800
Wire Wire Line
	2400 3100 2300 3100
Wire Wire Line
	2300 3200 2400 3200
Wire Wire Line
	2400 3300 2300 3300
Wire Wire Line
	2300 3400 2400 3400
Wire Wire Line
	2400 3500 2300 3500
Wire Wire Line
	2200 1350 2100 1350
Wire Wire Line
	3900 7300 3800 7300
Wire Wire Line
	3800 7200 3900 7200
Wire Wire Line
	3900 7000 3800 7000
Wire Wire Line
	3800 6900 3900 6900
Wire Wire Line
	3900 6800 3800 6800
Wire Wire Line
	3800 6700 3900 6700
Wire Wire Line
	1200 2100 1300 2100
Wire Wire Line
	1300 2200 1200 2200
Wire Wire Line
	1200 2300 1300 2300
Wire Wire Line
	1300 2400 1200 2400
Wire Wire Line
	2400 2100 2300 2100
Wire Wire Line
	2300 2200 2400 2200
Wire Wire Line
	4200 2900 4900 2900
Wire Wire Line
	4300 3700 4300 3600
Wire Wire Line
	4600 3700 4600 3450
Wire Wire Line
	4600 3150 4600 2900
Connection ~ 4600 2900
Wire Wire Line
	4300 2900 4300 3100
Connection ~ 4300 2900
Wire Wire Line
	4800 3900 4800 3800
Wire Wire Line
	4800 3800 4900 3800
Wire Wire Line
	4700 4450 4700 4550
Wire Wire Line
	4600 4550 4900 4550
Wire Wire Line
	4300 4550 4300 5100
Wire Wire Line
	4300 4800 4400 4800
Wire Wire Line
	4300 4550 4400 4550
Connection ~ 4300 4800
Connection ~ 4700 4550
Wire Wire Line
	4600 4800 4900 4800
Wire Wire Line
	4700 4800 4700 4900
Connection ~ 4700 4800
Wire Wire Line
	10400 2200 10300 2200
Wire Wire Line
	10400 4200 10300 4200
Wire Wire Line
	10300 4300 10400 4300
Wire Wire Line
	10400 4400 10300 4400
Wire Wire Line
	10300 4500 10400 4500
Wire Wire Line
	10400 1700 10300 1700
Wire Wire Line
	10300 1800 10400 1800
Wire Wire Line
	10400 3900 10300 3900
Wire Wire Line
	10300 4000 10400 4000
Wire Wire Line
	10400 4600 10300 4600
Wire Wire Line
	10300 4700 10400 4700
Wire Wire Line
	10400 4800 10300 4800
Wire Wire Line
	10300 4900 10400 4900
Wire Wire Line
	10400 5000 10300 5000
Wire Wire Line
	10400 3400 10300 3400
Wire Wire Line
	10300 3200 10400 3200
Wire Wire Line
	10400 3100 10300 3100
Wire Wire Line
	10300 3000 10400 3000
Wire Wire Line
	10400 2900 10300 2900
Wire Wire Line
	10300 2800 10400 2800
Wire Wire Line
	10400 2600 10300 2600
Wire Wire Line
	10300 2500 10400 2500
Wire Wire Line
	10400 2100 10300 2100
Wire Wire Line
	10400 1500 10300 1500
Wire Wire Line
	10300 1400 10400 1400
Wire Wire Line
	10400 1300 10300 1300
Wire Wire Line
	10300 1200 10400 1200
Wire Wire Line
	10400 1100 10300 1100
Wire Wire Line
	10300 1000 10400 1000
Wire Wire Line
	10400 900  10300 900 
Wire Wire Line
	10300 800  10400 800 
$Comp
L Tactile_SW_4P SW1
U 1 1 57DDDB01
P 3900 3300
F 0 "SW1" H 3900 3550 50  0000 C CNN
F 1 "RESET" H 3900 2950 50  0000 C CNN
F 2 "mouse:SW_PUSH" V 3850 3250 60  0001 C CNN
F 3 "" V 3850 3250 60  0000 C CNN
	1    3900 3300
	1    0    0    -1  
$EndComp
NoConn ~ 3500 3600
NoConn ~ 3500 3100
Text Notes 700  800  0    100  ~ 0
Main
$Comp
L C_Small C7
U 1 1 583842DF
P 4100 2300
F 0 "C7" H 4110 2370 50  0000 L CNN
F 1 "22u" H 4110 2220 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4100 2300 50  0001 C CNN
F 3 "" H 4100 2300 50  0000 C CNN
	1    4100 2300
	1    0    0    -1  
$EndComp
$Comp
L C_Small C6
U 1 1 58384648
P 3900 2300
F 0 "C6" H 3910 2370 50  0000 L CNN
F 1 "22u" H 3910 2220 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3900 2300 50  0001 C CNN
F 3 "" H 3900 2300 50  0000 C CNN
	1    3900 2300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 58384747
P 4100 2600
F 0 "#PWR010" H 4100 2350 50  0001 C CNN
F 1 "GND" H 4100 2450 50  0000 C CNN
F 2 "" H 4100 2600 50  0000 C CNN
F 3 "" H 4100 2600 50  0000 C CNN
	1    4100 2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 58384839
P 3900 2600
F 0 "#PWR011" H 3900 2350 50  0001 C CNN
F 1 "GND" H 3900 2450 50  0000 C CNN
F 2 "" H 3900 2600 50  0000 C CNN
F 3 "" H 3900 2600 50  0000 C CNN
	1    3900 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2600 4100 2400
Wire Wire Line
	3900 2400 3900 2600
Wire Wire Line
	3900 1700 3900 2200
Wire Wire Line
	4100 2000 4100 2200
Wire Wire Line
	4100 2000 4400 2000
$EndSCHEMATC
