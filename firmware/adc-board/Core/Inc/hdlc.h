/*
 * hdlc.h
 *
 *  Created on: May 30, 2021
 *      Author: Jay Kominek
 */

#ifndef INC_HDLC_H_
#define INC_HDLC_H_

#include "main.h"

extern void HDLC_Init(UART_HandleTypeDef *, DMA_HandleTypeDef *);
extern void HDLC_Send_Frame(UART_HandleTypeDef *, uint8_t, uint8_t*, uint16_t);

#endif /* INC_HDLC_H_ */
