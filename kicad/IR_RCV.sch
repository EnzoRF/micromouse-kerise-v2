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
Sheet 8 15
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
L D D4
U 1 1 57CF0F37
P 4600 3850
AR Path="/57CF0B09/57CF0F37" Ref="D4"  Part="1" 
AR Path="/57CF289D/57CF0F37" Ref="D5"  Part="1" 
AR Path="/57CF292E/57CF0F37" Ref="D6"  Part="1" 
AR Path="/57CF2A30/57CF0F37" Ref="D7"  Part="1" 
F 0 "D6" H 4600 3950 50  0000 C CNN
F 1 "SFH213FA" H 4600 3750 50  0000 C CNN
F 2 "mouse:Photo-5MM_Angle" H 4600 3850 50  0001 C CNN
F 3 "" H 4600 3850 50  0000 C CNN
	1    4600 3850
	0    1    1    0   
$EndComp
$Comp
L LM2902N U6
U 3 1 57CF0F3E
P 5500 4000
AR Path="/57CF0B09/57CF0F3E" Ref="U6"  Part="1" 
AR Path="/57CF289D/57CF0F3E" Ref="U6"  Part="2" 
AR Path="/57CF292E/57CF0F3E" Ref="U6"  Part="3" 
AR Path="/57CF2A30/57CF0F3E" Ref="U6"  Part="4" 
F 0 "U6" H 5550 4200 50  0000 C CNN
F 1 "AD8604" H 5650 3800 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-14_4.4x5mm_Pitch0.65mm" H 5450 4100 50  0001 C CNN
F 3 "" H 5550 4200 50  0000 C CNN
	3    5500 4000
	1    0    0    -1  
$EndComp
$Comp
L C C19
U 1 1 57CF0F45
P 4850 4100
AR Path="/57CF0B09/57CF0F45" Ref="C19"  Part="1" 
AR Path="/57CF289D/57CF0F45" Ref="C21"  Part="1" 
AR Path="/57CF292E/57CF0F45" Ref="C23"  Part="1" 
AR Path="/57CF2A30/57CF0F45" Ref="C25"  Part="1" 
F 0 "C23" H 4875 4200 50  0000 L CNN
F 1 "0.01u" H 4875 4000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4888 3950 50  0001 C CNN
F 3 "" H 4850 4100 50  0000 C CNN
	1    4850 4100
	0    1    1    0   
$EndComp
$Comp
L R R11
U 1 1 57CF0F4C
P 4600 4650
AR Path="/57CF0B09/57CF0F4C" Ref="R11"  Part="1" 
AR Path="/57CF289D/57CF0F4C" Ref="R13"  Part="1" 
AR Path="/57CF292E/57CF0F4C" Ref="R15"  Part="1" 
AR Path="/57CF2A30/57CF0F4C" Ref="R17"  Part="1" 
F 0 "R15" V 4680 4650 50  0000 C CNN
F 1 "100k" V 4600 4650 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 4530 4650 50  0001 C CNN
F 3 "" H 4600 4650 50  0000 C CNN
	1    4600 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 4100 5200 4100
Wire Wire Line
	4700 4100 4600 4100
Wire Wire Line
	4600 4000 4600 4500
Connection ~ 4600 4100
$Comp
L R R10
U 1 1 57CF0F57
P 5650 3600
AR Path="/57CF0B09/57CF0F57" Ref="R10"  Part="1" 
AR Path="/57CF289D/57CF0F57" Ref="R12"  Part="1" 
AR Path="/57CF292E/57CF0F57" Ref="R14"  Part="1" 
AR Path="/57CF2A30/57CF0F57" Ref="R16"  Part="1" 
F 0 "R14" V 5730 3600 50  0000 C CNN
F 1 "220k" V 5650 3600 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 5580 3600 50  0001 C CNN
F 3 "" H 5650 3600 50  0000 C CNN
	1    5650 3600
	0    1    1    0   
$EndComp
$Comp
L C C18
U 1 1 57CF0F5E
P 5650 3400
AR Path="/57CF0B09/57CF0F5E" Ref="C18"  Part="1" 
AR Path="/57CF289D/57CF0F5E" Ref="C20"  Part="1" 
AR Path="/57CF292E/57CF0F5E" Ref="C22"  Part="1" 
AR Path="/57CF2A30/57CF0F5E" Ref="C24"  Part="1" 
F 0 "C22" H 5550 3500 50  0000 L CNN
F 1 "22p" H 5500 3300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5688 3250 50  0001 C CNN
F 3 "" H 5650 3400 50  0000 C CNN
	1    5650 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 4000 6000 4000
Wire Wire Line
	5900 3400 5900 4000
Wire Wire Line
	5900 3600 5800 3600
Wire Wire Line
	5900 3400 5800 3400
Connection ~ 5900 3600
Wire Wire Line
	5500 3600 5100 3600
Wire Wire Line
	5100 3400 5100 4100
Connection ~ 5100 4100
Wire Wire Line
	5100 3400 5500 3400
Connection ~ 5100 3600
Wire Wire Line
	5400 3200 5400 3700
Wire Wire Line
	4600 3200 4600 3700
Wire Wire Line
	4900 3800 4900 3900
Wire Wire Line
	4900 3900 5200 3900
$Comp
L GND #PWR058
U 1 1 57CF0F85
P 4600 4900
AR Path="/57CF0B09/57CF0F85" Ref="#PWR058"  Part="1" 
AR Path="/57CF289D/57CF0F85" Ref="#PWR063"  Part="1" 
AR Path="/57CF292E/57CF0F85" Ref="#PWR068"  Part="1" 
AR Path="/57CF2A30/57CF0F85" Ref="#PWR073"  Part="1" 
F 0 "#PWR073" H 4600 4650 50  0001 C CNN
F 1 "GND" H 4600 4750 50  0000 C CNN
F 2 "" H 4600 4900 50  0000 C CNN
F 3 "" H 4600 4900 50  0000 C CNN
	1    4600 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 4900 4600 4800
$Comp
L GND #PWR059
U 1 1 57CF0F8C
P 5400 4900
AR Path="/57CF0B09/57CF0F8C" Ref="#PWR059"  Part="1" 
AR Path="/57CF289D/57CF0F8C" Ref="#PWR064"  Part="1" 
AR Path="/57CF292E/57CF0F8C" Ref="#PWR069"  Part="1" 
AR Path="/57CF2A30/57CF0F8C" Ref="#PWR074"  Part="1" 
F 0 "#PWR074" H 5400 4650 50  0001 C CNN
F 1 "GND" H 5400 4750 50  0000 C CNN
F 2 "" H 5400 4900 50  0000 C CNN
F 3 "" H 5400 4900 50  0000 C CNN
	1    5400 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 4300 5400 4900
Connection ~ 5900 4000
Text HLabel 6000 4000 2    60   Input ~ 0
IR_RCV
Text Notes 3700 2800 0    100  ~ 0
IR Receiver
$Comp
L +1.65VA #PWR060
U 1 1 57CF0F7D
P 4900 3800
AR Path="/57CF0B09/57CF0F7D" Ref="#PWR060"  Part="1" 
AR Path="/57CF289D/57CF0F7D" Ref="#PWR065"  Part="1" 
AR Path="/57CF292E/57CF0F7D" Ref="#PWR070"  Part="1" 
AR Path="/57CF2A30/57CF0F7D" Ref="#PWR075"  Part="1" 
F 0 "#PWR075" H 5050 3750 50  0001 C CNN
F 1 "+1.65VA" H 4900 3900 50  0000 C CNN
F 2 "" H 4900 3800 50  0000 C CNN
F 3 "" H 4900 3800 50  0000 C CNN
	1    4900 3800
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR061
U 1 1 586FEA9B
P 4600 3200
AR Path="/57CF0B09/586FEA9B" Ref="#PWR061"  Part="1" 
AR Path="/57CF292E/586FEA9B" Ref="#PWR071"  Part="1" 
AR Path="/57CF289D/586FEA9B" Ref="#PWR066"  Part="1" 
AR Path="/57CF2A30/586FEA9B" Ref="#PWR076"  Part="1" 
F 0 "#PWR076" H 4600 3050 50  0001 C CNN
F 1 "+3.3V" H 4600 3340 50  0000 C CNN
F 2 "" H 4600 3200 50  0000 C CNN
F 3 "" H 4600 3200 50  0000 C CNN
	1    4600 3200
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR072
U 1 1 586FEABF
P 5400 3200
AR Path="/57CF292E/586FEABF" Ref="#PWR072"  Part="1" 
AR Path="/57CF0B09/586FEABF" Ref="#PWR062"  Part="1" 
AR Path="/57CF289D/586FEABF" Ref="#PWR067"  Part="1" 
AR Path="/57CF2A30/586FEABF" Ref="#PWR077"  Part="1" 
F 0 "#PWR077" H 5400 3050 50  0001 C CNN
F 1 "+3.3V" H 5400 3340 50  0000 C CNN
F 2 "" H 5400 3200 50  0000 C CNN
F 3 "" H 5400 3200 50  0000 C CNN
	1    5400 3200
	1    0    0    -1  
$EndComp
$EndSCHEMATC
