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
uint32_t ADC_blocksize = DEFAULT_BLOCK_LEN;
uint32_t ADC_buffer_len = DEFAULT_BLOCK_LEN * 2;

volatile uint8_t Half_Done = 0;

volatile uint16_t *adc_buff=NULL;
volatile uint16_t *dac_buff=NULL;

static volatile uint16_t *input_buff;
static volatile uint16_t *output_buff;

enum status volatile current_status;

/*!
 * @brief Return the block size of half the ADC buffer.
 *
 * @returns Block size of the ADC buffer
 */
int get_blocksize() {
	return ADC_blocksize;
}

/*!
 * @brief Set the block size of half the ADC buffer.
 *
 * @returns On return, the blocksize and buffersize are updated
 */
void set_blocksize( uint32_t new_blocksize) {
	ADC_blocksize = new_blocksize;
	ADC_buffer_len = 2 * new_blocksize;
}

/*!
 * @brief Receive a block of data from the ADC.
 *
 * @returns On return, ret_adc array is filled up with float values from the 12-bit ADC.
 * Ideally, this function should be called twice within the course of one full ADC conversion.
 */
void get_adc_buff(uint16_t * ret_adc ) {//!< [in,out] Pointer to ADC return array.
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
		input_buff = &(adc_buff[ADC_blocksize]);
		output_buff = &(dac_buff[ADC_blocksize]);
	}

	/* Convert ADC block to floats to return to user*/
	for (i = 0; i < ADC_blocksize; i++) {
		ret_adc[i] = (float)(input_buff[i] - 2047) / 2048.;
	}
}

/*!
 * @brief Put a block of data on half of the DAC buffer.
 *
 * @returns On return, ret_adc array is filled up with float values from the 12-bit ADC.
 * Ideally, this function should be called twice within the course of one full DAC conversion.
 */
void set_dac_buff(uint16_t * input_dac) { //!< [in] Pointer to input DAC array.
	uint32_t i;

	if (Half_Done) {
		output_buff = dac_buff;
		Half_Done = 0;
	}
	else {
		output_buff = &(dac_buff[ADC_blocksize]);
		Half_Done = 1;
	}
	/* Fill DAC buffer with values */
	for (i = 0; i < ADC_blocksize; i++) {
		output_buff[i] = input_dac[i];
	}
}

