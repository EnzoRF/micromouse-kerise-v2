/*
 * config.h
 *
 *  Created on: 2016/10/23
 *      Author: kerikun11
 */

#ifndef CONFIG_H_
#define CONFIG_H_

#include "mbed.h"

/* Thread Priorities */

#define PRIORITY_REFLECTOR_UPDATE	osPriorityHigh
#define PRIORITY_MPU6500_UPDATE		osPriorityHigh

#define PRIORITY_WALL_UPDATE		osPriorityAboveNormal
#define PRIORITY_ENCODER_UPDATE		osPriorityAboveNormal

#define PRIORITY_EMERGENCY_STOP		osPriorityAboveNormal
#define PRIORITY_SPEED_CONTROLLER	osPriorityAboveNormal

#define PRIORITY_MOVE_ACTION		osPriorityNormal
#define PRIORITY_BUZZER				osPriorityNormal

#define PRIORITY_MAZE_SOLVER		osPriorityBelowNormal

#define PRIORITY_DEBUG_INFO			osPriorityLow

#define PRIORITY_SERIAL_CTRL		osPriorityIdle

/* thread stack size */

#define STACK_SIZE_BUZZER			1024
#define STACK_SIZE_ENCODER			512
#define STACK_SIZE_MAZE_SOLVER		4096
#define STACK_SIZE_MOVE_ACTION		2048
#define STACK_SIZE_MPU6500_UPDATE	1024
#define STACK_SIZE_REFLECTOR_UPDATE	512
#define STACK_SIZE_SPEED_CONTROLLER	1024
#define STACK_SIZE_WALL_UPDATE		512

#define STACK_SIZE_DEBUG_INFO		2048
#define STACK_SIZE_SERIAL_CTRL		2048
#define STACK_SIZE_EMERGENCY		512

/* Hardware Parameter */

#define MACHINE_ROTATION_RADIUS		21.0f	// [mm]
#define WHEEL_DIAMETER_MM			24.65f
#define WHEEL_GEER_RATIO			0.25f
#define ENCODER_PULSES				(1024*4)

/* Pin Mapping */

#define BATTERY_PIN			PB_1

#define BUZZER_PIN			PB_8	//< Modify PeripheralPins.c PWM Pin using Timer10

#define BUTTON_PIN			PB_0

#define LED1_PIN			PC_5
#define LED2_PIN			PC_6
#define LED3_PIN			PC_7
#define LED4_PIN			PC_8

#define MPU6500_MOSI_PIN	PA_7
#define MPU6500_MISO_PIN	PA_6
#define MPU6500_SCLK_PIN	PA_5
#define MPU6500_SSEL_PIN	PA_4

#define IR_LED_SL_FR_PIN	PB_14
#define IR_LED_SR_FL_PIN	PB_15

/* debug output */
//Debug is disabled by default
#if 1
#define DBG(x, ...)  std::printf(x, ##__VA_ARGS__)
#define WARN(x, ...) std::printf("[WARN] " x, ##__VA_ARGS__)
#define ERR(x, ...)  std::printf("[ERR] " x, ##__VA_ARGS__)
#else
#define DBG(x, ...) //wait_us(10);
#define WARN(x, ...) //wait_us(10);
#define ERR(x, ...)
#endif

//Debug is disabled by default
#if 0
#define LOG(x, ...)  printf(x, ##__VA_ARGS__)
#else
#define LOG(x, ...) //wait_us(10);
#endif

/*
 * TIM1		IR LED
 * TIM2		mbed timer
 * TIM3		Encoder L
 * TIM4		Encoder R
 * TIM5		*
 * TIM6
 * TIM7
 * TIM8
 * TIM9
 * TIM10
 * TIM11
 * TIM12
 * TIM13
 * TIM14
 */

/*
 * PA0	Motor IN1 L		TIM2_CH1				HAL
 * PA1	Motor IN2 L		TIM2_CH2				HAL
 * PA2	UART TX			UART2_TX				mbed
 * PA2	UART RX			UART2_RX				mbed
 * PA4	MPU6500 nCS		SPI1_NSS				mbed
 * PA5	MPU6500 SCK		SPI1_SCK				mbed
 * PA6	MPU6500 nMISO	SPI1_MISO				mbed
 * PA7	MPU6500 MOSI	SPI1_MOSI				mbed
 * PA8	NC
 * PA9
 * PA10
 * PA11	NC
 * PA12	NC
 * PA13	ST-Link SWDIO	SWDIO
 * PA14	ST-Link SWCLK	SWCLK
 * PA15	NC
 *
 * PB0	Button									mbed
 * PB1	Battery Voltage	ADC1_IN8 / ADC2_IN8		mbed
 * PB2	NC
 * PB3	ST-Link SWO		SWO
 * PB4	Encoder L A		TIM3_CH1				HAL
 * PB5	Encoder L B		TIM3_CH2				HAL
 * PB6	Encoder R A		TIM4_CH1				HAL
 * PB7	Encoder R B		TIM4_CH2				HAL
 * PB8	Speaker			TIM10_CH1				mbed (change mbed timer)
 * PB9	Motor IN1 R		TIM2_CH3				HAL
 * PB10	Motor IN2 R		TIM2_CH4				HAL
 * PB11	NC
 * PB12	NC
 * PB13	NC
 * PB14	IR LED SL FR	TIM1_CH2N				mbed
 * PB15	IR LED SL FR	TIM1_CH3N				mbed
 *
 * PC0	IR Receiver SL	ADC1_IN10				HAL
 * PC1	IR Receiver FL	ADC1_IN11				HAL
 * PC2	IR Receiver FR	ADC1_IN12				HAL
 * PC3	IR Receiver SR	ADC1_IN13				HAL
 * PC4	MPU6500 Int
 * PC5	LED1
 * PC6	LED2
 * PC7	LED3
 * PC8	LED4
 * PC9	NC
 * PC10	NC
 * PC11	NC
 * PC12	NC
 * PC13	NC
 * PC14	NC
 * PC15	NC
 */

#endif /* CONFIG_H_ */
