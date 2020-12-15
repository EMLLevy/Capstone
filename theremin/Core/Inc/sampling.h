/*
 * sampling.h
 *
 *  Created on: Oct 13, 2020
 *      Author: Ethan
 */


#ifndef INC_SAMPLING_H_
#define INC_SAMPLING_H_

#define DEFAULT_BLOCK_LEN 1000

extern volatile uint16_t *adc_buff;
extern volatile uint16_t *dac_buff;

/*!
 * @brief Return the block size of half the ADC buffer.
 *
 * @returns Block size of the ADC buffer
 */
int get_blocksize();

/*!
 * @brief Set the block size of half the ADC buffer.
 *
 * @returns On return, the blocksize and buffersize are updated
 */
void set_blocksize( uint32_t new_blocksize);

/*!
 * @brief Receive a block of data from the ADC.
 *
 * @returns On return, ret_adc array is filled up with float values from the 12-bit ADC.
 * Ideally, this function should be called twice within the course of one full ADC conversion.
 */
void get_adc_buff(uint16_t * ret_buff);

/*!
 * @brief Put a block of data on half of the DAC buffer.
 *
 * @returns On return, ret_adc array is filled up with float values from the 12-bit ADC.
 * Ideally, this function should be called twice within the course of one full DAC conversion.
 */
void set_dac_buff(uint16_t * input_dac);

enum status{STARTUP, PROCESS, WAIT_FOR_BUFFER};
extern enum status volatile current_status;

#endif /* INC_SAMPLING_H_ */
