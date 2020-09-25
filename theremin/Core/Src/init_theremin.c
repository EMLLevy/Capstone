/*
 * init_theremin.c
 *
 *  Created on: Sep 17, 2020
 *      Author: Ethan
 */

#include "arm_math.h"

#define DEFAULT_BLOCKSIZE 100

volatile uint32_t * ADC_Input_Buff = NULL;
volatile uint32_t * DAC_Output_Buff = NULL;

uint32_t ADC_Blocksize = DEFAULT_BLOCKSIZE;
uint32_t ADC_Buffersize = DEFAULT_BLOCKSIZE << 1;

//static void init_adc()

void set_blocksize(uint32_t size) {
	ADC_Blocksize = size;
	ADC_Buffersize = size << 1;
}

void get_block(float * buff) {
//	HAL_ADC_Start(hadc);

}
