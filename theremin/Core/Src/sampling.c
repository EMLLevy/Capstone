/*
 * sampling.c
 *
 *  Created on: Oct 13, 2020
 *      Author: Ethan
 */
#include <stdio.h>
#include "main.h"
#include "sampling.h"

//Size of ADC Input Buffer
uint32_t ADC_block_len = DEFAULT_BLOCK_LEN;
uint32_t ADC_buffer_len = DEFAULT_BLOCK_LEN * 2;

volatile uint8_t Half_Done = 0;

volatile uint16_t *adc_buff=NULL;
volatile uint16_t *dac_buff=NULL;

static volatile uint16_t *input_buff;
static volatile uint16_t *output_buff;

enum status volatile current_status;

int get_blocksize() {
	return ADC_block_len;
}

void set_blocksize( uint32_t new_blocksize) {
	ADC_block_len = new_blocksize;
	ADC_buffer_len = 2 * new_blocksize;
}

/* Get buffer from the ADC */
void get_adc_buff(float * ret_adc) {
	uint32_t i;

	/* Wait for the next buffer of values */
	current_status = WAIT_FOR_BUFFER;
	while (current_status == WAIT_FOR_BUFFER)
		__WFI(); //Wait for interrupts to change current_status

	/* If the ADC conversion is half done, fill up the first half of the buffer */
	if (Half_Done) {
		input_buff = adc_buff;
		output_buff = dac_buff;
	}

	/* If the ADC conversion is complete, fill up the second half of the buffer */
	else {
		input_buff = &(adc_buff[ADC_block_len]);
		output_buff = &(dac_buff[ADC_block_len]);
	}

	/* Convert ADC block to floats to return to user*/
	for (i = 0; i < ADC_block_len; i++) {
		ret_adc[i] = (float)(input_buff[i] - 2047) / 2048.;
	}
}

/* Set DAC buffer to output */
void set_dac_buff(float * input_dac) {
	uint32_t i;

	/* Convert from float to 0-4095 for 12bit dac */
	for (i = 0; i < ADC_block_len; i++) {
		output_buff[i] = (int)((input_dac[i] + 1.) * 2048.) & 0xFFFF;
	}
}

void HAL_ADC_ConvHalfCpltCallback(ADC_HandleTypeDef* hadc) {
	Half_Done = 1;

	HAL_GPIO_TogglePin(LD1_GPIO_Port, LD1_Pin);
	if (current_status == STARTUP){}
	else if (current_status == WAIT_FOR_BUFFER) {
		current_status = PROCESS;
	}
	else {
//		printf("Overrun by samples\n");
//		exit(EXIT_FAILURE);
//		HAL_GPIO_TogglePin(LD1_GPIO_Port, LD1_Pin);
	}
}

void HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef* hadc) {
	Half_Done = 0;

	HAL_GPIO_TogglePin(LD1_GPIO_Port, LD1_Pin);
	if (current_status == STARTUP){}
	if (current_status == WAIT_FOR_BUFFER) {
			current_status = PROCESS;
	}
	else{
//		printf("Overrun by samples\n");
//		exit(1);
//		HAL_GPIO_TogglePin(LD1_GPIO_Port, LD1_Pin);
	}
}
