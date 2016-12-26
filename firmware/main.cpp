/*
 * main.cpp
 *
 *  Created on: 2016/10/23
 *      Author: kerikun11
 */

#include "mbed.h"

#include "config.h"
#include "Battery.h"
#include "Buzzer.h"
#include "Button.h"
#include "Motor.h"
#include "Encoder.h"
#include "MPU6500.h"
#include "Reflector.h"
#include "WallDetector.h"
#include "SpeedController.h"
#include "MoveAction.h"
#include "MazeSolver.h"

/* define each pointer */
BusOut *led;
Battery *bat;
Buzzer *bz;
Button *btn;

Motor *mt;
Encoders *enc;
MPU6500 *mpu;
Reflector *rfl;
WallDetector *wd;

SpeedController *sc;
MoveAction *ma;
MazeSolver *ms;

bool output = false;

void debug_info() {
	while (1) {
		Thread::wait(100);
//		DBG("%.3f\t%.3f\n", mpu->gyro.z * 180 / M_PI, mpu->angle.z * 180 / M_PI);
//		sc->getPosition().print();

//		const int i = 0;
//		if (output) LOG("%.0f,%.0f,%.0f,%.0f,%.0f\n", sc->target.wheel[i] / 10,
//				sc->actual.wheel[i] / 10, sc->Kp * (sc->target.wheel[i] - sc->actual.wheel[i]) / 10,
//				sc->Kp * sc->Ki * (0 - sc->integral.wheel[i]) / 10,
//				sc->Kp * sc->Kd * (0 - sc->differential.wheel[i]) / 10);
//		if (output) LOG("%.0f,%.0f\n", sc->target.wheel[i], sc->actual.wheel[i]);

//		if (output) LOG("%.0f,%.0f\n", sc->target.trans, sc->actual.trans);

//		LOG("%.3f,%.3f\n", mpu->gyro.z, mpu->angle.z);
//		LOG("%.0f,%.0f\n", mpu->accel.y, mpu->velocity.y);
	}
}

void serial_ctrl() {
	while (1) {
		Thread::wait(100);
		int c = getchar();
		if (c == EOF) continue;
		DBG("%c\n", (char ) c);
		switch (c) {
			case 't':
				bz->play(Buzzer::CONFIRM);
				mpu->calibration();
				break;
			case 'g':
				bz->play(Buzzer::CONFIRM);
				mpu->calibration();
				wd->calibration();
				ma->enable();
				break;
			case 'f':
				bz->play(Buzzer::CANCEL);
				ms->terminate();
				break;
			case 'b':
				ma->set_action(MoveAction::FAST_STOP);
				bz->play(Buzzer::CONFIRM);
				break;
			case 'r':
				ma->set_action(MoveAction::RETURN);
				bz->play(Buzzer::CONFIRM);
				break;
			case 's':
				ma->set_action(MoveAction::FAST_START_STEP);
				bz->play(Buzzer::CONFIRM);
				break;
			case 'i':
				ma->set_action(MoveAction::START_INIT);
				bz->play(Buzzer::CONFIRM);
				break;
			case 'w':
				ma->set_action(MoveAction::FAST_GO_STRAIGHT);
				bz->play(Buzzer::CONFIRM);
				break;
			case '2':
				ma->set_action(MoveAction::FAST_GO_DIAGONAL);
				bz->play(Buzzer::CONFIRM);
				break;
			case '1':
				ma->set_action(MoveAction::FAST_TURN_LEFT_45);
				bz->play(Buzzer::CONFIRM);
				break;
			case '!':
				ma->set_action(MoveAction::FAST_TURN_LEFT_45R);
				bz->play(Buzzer::CONFIRM);
				break;
			case '3':
				ma->set_action(MoveAction::FAST_TURN_RIGHT_45);
				bz->play(Buzzer::CONFIRM);
				break;
			case '#':
				ma->set_action(MoveAction::FAST_TURN_RIGHT_45R);
				bz->play(Buzzer::CONFIRM);
				break;
			case 'q':
				ma->set_action(MoveAction::FAST_TURN_LEFT_4545);
				bz->play(Buzzer::CONFIRM);
				break;
			case 'e':
				ma->set_action(MoveAction::FAST_TURN_RIGHT_4545);
				bz->play(Buzzer::CONFIRM);
				break;
			case 'Q':
				ma->set_action(MoveAction::FAST_TURN_LEFT_45S45);
				bz->play(Buzzer::CONFIRM);
				break;
			case 'E':
				ma->set_action(MoveAction::FAST_TURN_RIGHT_45S45);
				bz->play(Buzzer::CONFIRM);
				break;
			case 'a':
				ma->set_action(MoveAction::FAST_TURN_LEFT_90);
				bz->play(Buzzer::CONFIRM);
				break;
			case 'd':
				ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
				bz->play(Buzzer::CONFIRM);
				break;
			case 'z':
				ma->set_action(MoveAction::FAST_TURN_LEFT_135);
				bz->play(Buzzer::CONFIRM);
				break;
			case 'Z':
				ma->set_action(MoveAction::FAST_TURN_LEFT_135R);
				bz->play(Buzzer::CONFIRM);
				break;
			case 'c':
				ma->set_action(MoveAction::FAST_TURN_RIGHT_135);
				bz->play(Buzzer::CONFIRM);
				break;
			case 'C':
				ma->set_action(MoveAction::FAST_TURN_RIGHT_135R);
				bz->play(Buzzer::CONFIRM);
				break;
			case 'y':
				ms->terminate();
				ma->set_action(MoveAction::FAST_START_STEP);
				ma->set_action(MoveAction::FAST_TURN_RIGHT_45);
				ma->set_action(MoveAction::FAST_TURN_LEFT_4545);
				ma->set_action(MoveAction::FAST_TURN_RIGHT_4545);
				ma->set_action(MoveAction::FAST_TURN_LEFT_45R);
				ma->set_action(MoveAction::RETURN);
				ma->set_action(MoveAction::FAST_TURN_RIGHT_45);
				ma->set_action(MoveAction::FAST_TURN_LEFT_4545);
				ma->set_action(MoveAction::FAST_TURN_RIGHT_4545);
				ma->set_action(MoveAction::FAST_TURN_LEFT_45R);
				ma->set_action(MoveAction::RETURN);
				ma->set_action(MoveAction::FAST_TURN_RIGHT_45);
				ma->set_action(MoveAction::FAST_TURN_LEFT_4545);
				ma->set_action(MoveAction::FAST_TURN_RIGHT_4545);
				ma->set_action(MoveAction::FAST_TURN_LEFT_45R);
				ma->set_action(MoveAction::RETURN);
				ma->set_action(MoveAction::FAST_TURN_RIGHT_45);
				ma->set_action(MoveAction::FAST_TURN_LEFT_4545);
				ma->set_action(MoveAction::FAST_TURN_RIGHT_4545);
				ma->set_action(MoveAction::FAST_TURN_LEFT_45R);
				ma->set_action(MoveAction::START_INIT);
				bz->play(Buzzer::CONFIRM);
				mpu->calibration();
				wd->calibration();
				ma->enable();
				break;
			case 'u':
				ms->terminate();
				ma->set_action(MoveAction::START_STEP);
				ma->set_action(MoveAction::TURN_RIGHT_90);
				ma->set_action(MoveAction::TURN_RIGHT_90);
				ma->set_action(MoveAction::RETURN);
				ma->set_action(MoveAction::TURN_LEFT_90);
				ma->set_action(MoveAction::TURN_LEFT_90);
				ma->set_action(MoveAction::RETURN);
				ma->set_action(MoveAction::TURN_RIGHT_90);
				ma->set_action(MoveAction::TURN_RIGHT_90);

				ma->set_action(MoveAction::RETURN);
				ma->set_action(MoveAction::TURN_LEFT_90);
				ma->set_action(MoveAction::TURN_LEFT_90);
				ma->set_action(MoveAction::RETURN);
				ma->set_action(MoveAction::TURN_RIGHT_90);
				ma->set_action(MoveAction::TURN_RIGHT_90);
				ma->set_action(MoveAction::RETURN);
				ma->set_action(MoveAction::TURN_LEFT_90);
				ma->set_action(MoveAction::TURN_LEFT_90);
				ma->set_action(MoveAction::RETURN);
				ma->set_action(MoveAction::TURN_RIGHT_90);
				ma->set_action(MoveAction::TURN_RIGHT_90);
				ma->set_action(MoveAction::RETURN);
				ma->set_action(MoveAction::TURN_LEFT_90);
				ma->set_action(MoveAction::TURN_LEFT_90);
				ma->set_action(MoveAction::RETURN);
				ma->set_action(MoveAction::TURN_RIGHT_90);
				ma->set_action(MoveAction::TURN_RIGHT_90);
				ma->set_action(MoveAction::RETURN);
				ma->set_action(MoveAction::TURN_LEFT_90);
				ma->set_action(MoveAction::TURN_LEFT_90);
				ma->set_action(MoveAction::START_INIT);
				bz->play(Buzzer::CONFIRM);
				mpu->calibration();
				wd->calibration();
				ma->enable();
				break;
			case 'o': {
				ms->terminate();
				const int cnt = 9;
				ma->set_action(MoveAction::START_STEP);
				ma->set_action(MoveAction::FAST_GO_STRAIGHT, cnt);
				ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
				ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
				ma->set_action(MoveAction::FAST_GO_STRAIGHT, cnt);
				ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
				ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
				ma->set_action(MoveAction::FAST_GO_STRAIGHT, cnt);
				ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
				ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
				ma->set_action(MoveAction::FAST_GO_STRAIGHT, cnt);
				ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
				ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
				ma->set_action(MoveAction::FAST_GO_STRAIGHT, cnt);
				ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
				ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
				ma->set_action(MoveAction::FAST_GO_STRAIGHT, cnt);
				ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
				ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
				ma->set_action(MoveAction::FAST_GO_STRAIGHT, cnt);
				ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
				ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
				ma->set_action(MoveAction::FAST_GO_STRAIGHT, cnt);
				ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
				ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
				ma->set_action(MoveAction::FAST_STOP);
				bz->play(Buzzer::CONFIRM);
				mpu->calibration();
				wd->calibration();
				ma->enable();
			}
				break;
			case 'm':
				ms->terminate();
				bz->play(Buzzer::CONFIRM);
				mpu->calibration();
				wd->calibration();
				ms->start();
				break;
			case 'p':
				bz->play(Buzzer::SELECT);
				DBG("%05u\t%05u\t%05u\t%05u\n", rfl->sl(), rfl->fl(), rfl->fr(), rfl->sr());
				DBG("%06.3f\t%06.3f\t%06.3f\t%06.3f\n", wd->wall_difference().side[0],
						wd->wall_difference().flont[0], wd->wall_difference().flont[1],
						wd->wall_difference().side[1]);
				DBG("%s %s %s %s\n", wd->wall().side[0] ? "X" : ".",
						wd->wall().flont[0] ? "X" : ".", wd->wall().flont[1] ? "X" : ".",
						wd->wall().side[1] ? "X" : ".");
				DBG("Position:\t(%06.1f, %06.1f, %06.3f)\n", sc->getPosition().x,
						sc->getPosition().y, sc->getPosition().theta);
				break;
		}
	}
}

void emergencyTask() {
	while (1) {
		Thread::wait(1);
		if (fabs(mpu->accel.y) > 96000 || fabs(mpu->gyro.z) > 10 * M_PI) {
			mt->emergency_stop();
			ms->terminate();
			bz->play(Buzzer::EMERGENCY);
			while (mt->isEmergency()) {
				*led = 0x0A;
				Thread::wait(100);
				*led = 0x05;
				Thread::wait(100);
			}
		}
	}
}

int main() {
	/* make instances */
	led = new BusOut(LED1_PIN, LED2_PIN, LED3_PIN, LED4_PIN);
	bat = new Battery(BATTERY_PIN);
	bz = new Buzzer(BUZZER_PIN);
	btn = new Button(BUTTON_PIN);

	mt = new Motor;

	enc = new Encoders(ENCODER_L_TIMx, ENCODER_R_TIMx);
	mpu = new MPU6500(MPU6500_MOSI_PIN, MPU6500_MISO_PIN,
	MPU6500_SCLK_PIN,
	MPU6500_SSEL_PIN);

	rfl = new Reflector(IR_LED_SL_FR_PIN, IR_LED_SR_FL_PIN);
	wd = new WallDetector(rfl);

	sc = new SpeedController(mt, enc, mpu);
	ma = new MoveAction(bz, mt, enc, mpu, rfl, wd, sc);
	ms = new MazeSolver(bz, mpu, rfl, ma, wd);

	/* boot */
	{
		DBG("\nHello World!\n");
		if (!bat->check()) {
			bz->play(Buzzer::LOW_BATTERY);
			DBG("Battery Low!\n");
			while (1) {
				Thread::wait(1000);
				if (btn->pressed) {
					btn->flags = 0;
					break;
				}
			}
		}
		bz->play(Buzzer::BOOT);
		*led = bat->gage(16);
		Thread::wait(1000);
		*led = 0;
	}

	/* for debug */
	Thread debugInfoThread(PRIORITY_DEBUG_INFO, STACK_SIZE_DEBUG_INFO);
	debugInfoThread.start(debug_info);
	DBG("0x%08X: debug info\n", (unsigned int ) debugInfoThread.gettid());
	Thread serialCtrlThread(PRIORITY_SERIAL_CTRL, STACK_SIZE_SERIAL_CTRL);
	serialCtrlThread.start(serial_ctrl);
	DBG("0x%08X: Serial Ctrl\n", (unsigned int ) serialCtrlThread.gettid());
	Thread emergencyThread(PRIORITY_EMERGENCY_STOP, STACK_SIZE_EMERGENCY);
	emergencyThread.start(emergencyTask);
	DBG("0x%08X: Emergency\n", (unsigned int ) emergencyThread.gettid());

//	sc->enable();
//	while (1) {
//		while (1) {
//			Thread::wait(10);
//			if (btn->pressed) {
//				btn->flags = 0;
//				bz->play(Buzzer::SELECT);
//				break;
//			}
//		}
////		Thread::wait(1000);
////		output = true;
////		sc->set_target(600, 0);
////		Thread::wait(300);
////		sc->set_target(0, 0);
////		Thread::wait(300);
////		output = false;
////		Thread::wait(1000);
//
//		Thread::wait(1000);
//		output = true;
//		for (int i = 0; i < 100; i++) {
//			sc->set_target(i * 6, 0);
//			Thread::wait(1);
//		}
//		Thread::wait(200);
//		for (int i = 0; i < 100; i++) {
//			sc->set_target(600 - (i + 1) * 6, 0);
//			Thread::wait(1);
//		}
//		Thread::wait(1000);
//		output = false;
//	}

	int mode = 0;
	while (true) {
		Thread::wait(10);
		while (mt->isEmergency()) {
			Thread::wait(10);
			if (btn->pressed) {
				btn->flags = 0;
				bz->play(Buzzer::BOOT);
				mt->emergency_release();
				*led = 0;
				DBG("Released Emergency\n");
			}
		}
		while (ma->actions()) {
			Thread::wait(10);
			if (btn->pressed) {
				btn->flags = 0;
				bz->play(Buzzer::CANCEL);
				ms->terminate();
			}
		}
		if (btn->pressed) {
			btn->flags = 0;
			bz->play(Buzzer::CONFIRM);
			while (1) {
				Thread::wait(100);
				mode = enc->position() / 2;
				mode &= 0x7;
				*led = mode;
				if (btn->pressed) {
					btn->flags = 0;
					bz->play(Buzzer::CONFIRM);
					break;
				}
			}
			rfl->enable();
			while (1) {
				Thread::wait(10);
				if (rfl->flont(0) > 400 && rfl->flont(1) > 400) {
					bz->play(Buzzer::CONFIRM);
					Thread::wait(200);
					switch (mode) {
						case 0:
							ms->terminate();
							mpu->calibration();
							bz->play(Buzzer::SELECT);
							wd->calibration();
							bz->play(Buzzer::CONFIRM);
							ms->start();
							break;
						case 1:
							ms->terminate();
							ma->set_action(MoveAction::START_STEP);
							ma->set_action(MoveAction::TURN_RIGHT_90);
							ma->set_action(MoveAction::TURN_RIGHT_90);
							ma->set_action(MoveAction::RETURN);
							ma->set_action(MoveAction::TURN_LEFT_90);
							ma->set_action(MoveAction::TURN_LEFT_90);
							ma->set_action(MoveAction::RETURN);
							ma->set_action(MoveAction::TURN_RIGHT_90);
							ma->set_action(MoveAction::TURN_RIGHT_90);
							ma->set_action(MoveAction::RETURN);
							ma->set_action(MoveAction::TURN_LEFT_90);
							ma->set_action(MoveAction::TURN_LEFT_90);
							ma->set_action(MoveAction::RETURN);
							ma->set_action(MoveAction::TURN_RIGHT_90);
							ma->set_action(MoveAction::TURN_RIGHT_90);
							ma->set_action(MoveAction::RETURN);
							ma->set_action(MoveAction::TURN_LEFT_90);
							ma->set_action(MoveAction::TURN_LEFT_90);
							ma->set_action(MoveAction::RETURN);
							ma->set_action(MoveAction::TURN_RIGHT_90);
							ma->set_action(MoveAction::TURN_RIGHT_90);
							ma->set_action(MoveAction::RETURN);
							ma->set_action(MoveAction::TURN_LEFT_90);
							ma->set_action(MoveAction::TURN_LEFT_90);
							ma->set_action(MoveAction::RETURN);
							ma->set_action(MoveAction::TURN_RIGHT_90);
							ma->set_action(MoveAction::TURN_RIGHT_90);
							ma->set_action(MoveAction::RETURN);
							ma->set_action(MoveAction::TURN_LEFT_90);
							ma->set_action(MoveAction::TURN_LEFT_90);
							ma->set_action(MoveAction::START_INIT);
							mpu->calibration();
							wd->calibration();
							ma->enable();
							break;
						case 2:
							ms->terminate();
							ma->set_action(MoveAction::FAST_START_STEP);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_45);
							ma->set_action(MoveAction::FAST_TURN_LEFT_4545);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_4545);
							ma->set_action(MoveAction::FAST_TURN_LEFT_45R);
							ma->set_action(MoveAction::RETURN);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_45);
							ma->set_action(MoveAction::FAST_TURN_LEFT_4545);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_4545);
							ma->set_action(MoveAction::FAST_TURN_LEFT_45R);
							ma->set_action(MoveAction::START_INIT);
							mpu->calibration();
							wd->calibration();
							ma->enable();
							break;
						case 3: {
							ms->terminate();
							const int cnt = 3;
							ma->set_action(MoveAction::FAST_START_STEP);
							ma->set_action(MoveAction::FAST_GO_STRAIGHT, cnt);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_GO_STRAIGHT, cnt);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_GO_STRAIGHT, cnt);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_GO_STRAIGHT, cnt);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_GO_STRAIGHT, cnt);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_GO_STRAIGHT, cnt);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_STOP);
							mpu->calibration();
							wd->calibration();
							ma->enable();
						}
							break;
						case 4:
							ms->terminate();
							ma->set_action(MoveAction::FAST_START_STEP);
							ma->set_action(MoveAction::FAST_GO_STRAIGHT, 2);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::START_INIT);
							mpu->calibration();
							wd->calibration();
							ma->enable();
							break;
						case 5:
							ms->terminate();
							ma->set_action(MoveAction::FAST_START_STEP);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_STOP);
							mpu->calibration();
							wd->calibration();
							ma->enable();
							break;
						case 6:
							ms->terminate();
							ma->set_action(MoveAction::FAST_START_STEP);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_45);
							ma->set_action(MoveAction::FAST_TURN_LEFT_45S45);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_45S45);
							ma->set_action(MoveAction::FAST_TURN_LEFT_135R);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_GO_STRAIGHT);
							ma->set_action(MoveAction::FAST_TURN_LEFT_45);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_45S45);
							ma->set_action(MoveAction::FAST_TURN_LEFT_45R);
							ma->set_action(MoveAction::START_INIT);
							mpu->calibration();
							wd->calibration();
							ma->enable();
							break;
					}
					break;
				}
				if (btn->pressed) {
					btn->flags = 0;
					bz->play(Buzzer::CANCEL);
					ms->terminate();
					rfl->disable();
					break;
				}
			}
		}
	}
}
