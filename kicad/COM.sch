EESchema Schematic File Version 2
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
LIBS:KERISEv2
LIBS:KERISEv2-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 13 15
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 4900 4000 2    60   Input ~ 0
SWCLK
Text HLabel 4900 4200 2    60   Input ~ 0
SWDIO
Text HLabel 4900 4300 2    60   Input ~ 0
~RST
Text HLabel 4900 4400 2    60   Input ~ 0
SWO
$Comp
L GND #PWR0101
U 1 1 57CDA951
P 4800 4500
F 0 "#PWR0101" H 4800 4250 50  0001 C CNN
F 1 "GND" H 4800 4350 50  0000 C CNN
F 2 "" H 4800 4500 50  0000 C CNN
F 3 "" H 4800 4500 50  0000 C CNN
	1    4800 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 4500 4800 4100
Wire Wire Line
	4800 4100 4700 4100
Wire Wire Line
	4700 4000 4900 4000
Wire Wire Line
	4900 4200 4700 4200
Wire Wire Line
	4700 4300 4900 4300
Wire Wire Line
	4900 4400 4700 4400
$Comp
L GND #PWR0102
U 1 1 57CDAC76
P 5850 4500
F 0 "#PWR0102" H 5850 4250 50  0001 C CNN
F 1 "GND" H 5850 4350 50  0000 C CNN
F 2 "" H 5850 4500 50  0000 C CNN
F 3 "" H 5850 4500 50  0000 C CNN
	1    5850 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 4200 5850 4500
Text HLabel 5950 4300 2    60   Input ~ 0
UART_RX
Text HLabel 5950 4400 2    60   Input ~ 0
UART_TX
Wire Wire Line
	5750 4300 5950 4300
Wire Wire Line
	5850 4200 5750 4200
$Comp
L CONN_01X04 P6
U 1 1 57CDB029
P 5550 4250
F 0 "P6" H 5550 4500 50  0000 C CNN
F 1 "UART" V 5650 4250 50  0000 C CNN
F 2 "Connectors_JST:JST_SH_BM04B-SRSS-TB_04x1.00mm_Straight" H 5550 4250 50  0001 C CNN
F 3 "" H 5550 4250 50  0000 C CNN
	1    5550 4250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5950 4400 5750 4400
Wire Wire Line
	5850 4000 5850 4100
Wire Wire Line
	5850 4100 5750 4100
Text Notes 4100 3600 0    100  ~ 0
COM Port
$Comp
L CONN_01X05 P5
U 1 1 57D2587E
P 4500 4200
F 0 "P5" H 4500 4500 50  0000 C CNN
F 1 "SWD" V 4600 4200 50  0000 C CNN
F 2 "Connectors_JST:JST_SH_BM05B-SRSS-TB_05x1.00mm_Straight" H 4500 4200 50  0001 C CNN
F 3 "" H 4500 4200 50  0000 C CNN
	1    4500 4200
	-1   0    0    -1  
$EndComp
$Comp
L +3.3V #PWR0103
U 1 1 5837DD0C
P 5850 4000
F 0 "#PWR0103" H 5850 3850 50  0001 C CNN
F 1 "+3.3V" H 5850 4140 50  0000 C CNN
F 2 "" H 5850 4000 50  0000 C CNN
F 3 "" H 5850 4000 50  0000 C CNN
	1    5850 4000
	1    0    0    -1  
$EndComp
$EndSCHEMATC
