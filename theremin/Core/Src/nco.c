/*
 * nco.c
 *
 *  Created on: Sep 30, 2020
 *      Author: Ethan
 */

#include <stdio.h>
#include <stdlib.h>
#include "nco.h"
#include "math.h"

/*!
 * @brief Numerically controlled oscillator (NCO) initialization
 *
 * Call init_nco() to create and initialize an NCO structure.
 *
 * @returns pointer to an initialized structure of type #NCO_T which may
 * be used to get NCO samples.
 */

NCO_T *init_nco(  float f0,            //!< [in] Frequency in cycles per sample
                  float theta){        //!< [in] Offset angle in radians

    //Allocate memory for s
    NCO_T *s = malloc(sizeof(NCO_T));
    if (s == NULL) {
        printf("Failed to allocate memory for s\n");
        exit(EXIT_FAILURE);
    }

    //Initialize struct variables
    s->f0 = (int)(f0 * 2 * (1u << 31));
    s->theta = (int)((theta * 2 * (1u << 31))/(2.*PI));
    s->acc = 0;

    //Return pointer to struct NCO_T
    return s;
}

/*!
 * @brief Generate nco samples based on f0 and theta.
 *
 * @returns On return, y[i] (for i=0,1,...n_samples-1) contains the next
 * n_samples values of the NCO output sequence.  Subsequent calls to
 * nco_get_samples() continues to return NCO output samples with no
 * phase discontinuities from one call to the next.
 */

void nco_get_samples(NCO_T *s,         //!< [in,out] Pointer to NCO_T struct.
                     uint16_t *y,         //!< [out] Pointer to an array for storage of output samples.
                     int n_samples){   //!< [in] Number of NCO output samples to generate.
	unsigned int i;
	unsigned int kprime;
	unsigned int index;

	for (i = 0; i < n_samples; i++) {

        if ((i == 0) && (s->acc == 0)) {
            s->acc = 0;
        } else {
            // k1prime[n]
            s->acc += s->f0;
        }
        //kprime[n]
        kprime = s->acc + s->theta;

        index = kprime >> 23;
//		y[i] = index;
//        y[i] = (int)((cosine[i / 2] * 2048)/2 + 2047);
        y[i] = (unsigned int)((cosine[index] + 1) * 2047);
//        y[i] = (unsigned int)((cosine[index] * 4095) / 2 + 2047);
//        y[i] = cosine[i];
	}
}

/*!
 * @brief Update the frequency stored in the struct @a s.
 *
 * @returns On return, The NCO_T structure s is modified so that subsequent calls to nco_get_samples()
 * will operate at frequency f_new (without loss of phase continuity).
 */

void nco_set_frequency( NCO_T *s,      //!< [in,out] Pointer to NCO_T struct.
                        float f_new){  //!< [in] New NCO frequency (in cycles/sample).
    s->f0 = (int)(f_new * 2 * (1u << 31));
}

/*!
 * @brief Update the phase stored in the struct @a s.
 *
 * @returns On return, The NCO_T structure s is modified so that subsequent calls to nco_get_samples()
 * will operate with the phase shift given by theta (in radians)
 */

void nco_set_phase(  NCO_T *s,         //!< [in,out] Pointer to NCO_T struct.
                     float theta){     //!< [in] New NCO phase.
    s->theta = (int)((theta * 2 * (1u << 31))/(2*PI));
}

/*!
 * @brief Free allocated memory in struct @a s.
 *
 * @returns Any resources associated with the nco "s" are released.
 */

void destroy_nco(NCO_T *s){            //!< [in,out] Pointer to NCO_T struct.
    free(s);
}
