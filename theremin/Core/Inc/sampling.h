/*
 * sampling.h
 *
 *  Created on: Oct 13, 2020
 *      Author: Ethan
 */


#ifndef INC_SAMPLING_H_
#define INC_SAMPLING_H_

#define DEFAULT_BLOCK_LEN 2048

extern volatile uint16_t *adc_buff;
extern volatile uint16_t *dac_buff;

int get_blocksize();
void set_blocksize( uint32_t new_blocksize);
void get_adc_buff(float * ret_buff);
void set_dac_buff(float * input_dac);

#endif /* INC_SAMPLING_H_ */
