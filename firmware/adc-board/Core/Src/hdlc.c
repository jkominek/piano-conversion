#include "hdlc.h"
#include "stm32h7xx_hal.h"

#include <string.h>

#define DMA_BUFFER_SIZE 1024
#define COMMAND_BUFFER_SIZE 512

uint8_t dma_buffer[DMA_BUFFER_SIZE];
uint8_t command_buffer[COMMAND_BUFFER_SIZE];
int command_buffer_idx;
int prev_NDTR;
int runt_frame_count;
int bad_frame_count;
int oversize_frame_count;
int parityerror_frame_count;
int nack_count;
_Bool is_escape;
UART_HandleTypeDef *uart;
DMA_HandleTypeDef *dma_uart;

// we'll need to make this a bit smarter when we get this
// running on the main board. we'll need 8 different buffers.
void HDLC_Init(UART_HandleTypeDef *_uart, DMA_HandleTypeDef *_dma_uart)
{
	// see above comment
	uart = _uart;
	dma_uart = _dma_uart;

	command_buffer_idx = 0;
	prev_NDTR = COMMAND_BUFFER_SIZE;
	bad_frame_count = 0;
	runt_frame_count = 0;
	oversize_frame_count = 0;
	parityerror_frame_count = 0;
	nack_count = 0;
	is_escape = 0;

	if(HAL_UART_Receive_DMA(uart, dma_buffer, DMA_BUFFER_SIZE) != HAL_OK)
		Error_Handler();
}

uint16_t msgid = 0;

#define UPDATE_PARITY(b) { parity ^= b; }
#define APPEND_TO_FRAME(b) { if((b==0x7E)||(b==0x7D)){ msg[offset++] = 0x7D; msg[offset++] = b ^ 0x10; } else { msg[offset++] = b; } }

// adds our standard "headers" to every message, and
// then applies async hdlc framing
void HDLC_Send_Frame(UART_HandleTypeDef *uart, uint8_t msgtype, uint8_t* rawmsg, uint16_t len)
{
	// start and stop frame bytes, possibly escaping every byte,
	// parity byte(s), and another one for good measure.
	uint8_t msg[2+1+(len<<1)+2+1];
	uint8_t parity = 0;
	// hdlc encode rawmsg to msg
	msg[0] = 0x7E;
	int offset = 1;

	UPDATE_PARITY(msgtype);
	APPEND_TO_FRAME(msgtype);

	UPDATE_PARITY(*((uint8_t*)&msgid));
	APPEND_TO_FRAME(*((uint8_t*)&msgid));

	UPDATE_PARITY(*(1+(uint8_t*)&msgid));
	APPEND_TO_FRAME(*(1+(uint8_t*)&msgid));
	msgid++;

	for(int i=0; i<len; i++) {
		UPDATE_PARITY(rawmsg[i]);
		APPEND_TO_FRAME(rawmsg[i]);
	}
	APPEND_TO_FRAME(parity);
	msg[offset++] = 0x7E;

	HAL_UART_Transmit(uart, msg, offset, 1);
}

struct statusreport {
	// which request for status we're responding to
	uint16_t responseto_msgid;
	// the 96 bits of processor unique id
	uint32_t uniqueid[3];
};

void HDLC_Process_Frame(uint8_t origin, uint8_t *buf, int size)
{
	// on the main board, origin will represent the ADC board the message
	// originated from

	uint8_t parity = 0;
	for(int i=0; i<(size-1); i++) {
		parity ^= buf[i];
	}
	if(parity != buf[size-1]) {
		parityerror_frame_count++;
		return;
	}

	uint8_t msgtype;
	uint16_t msgid;

	msgtype = buf[0];
	bcopy(buf+1, &msgid, 2);

	switch(msgtype) {
	case 0x02: {
		HDLC_Send_Frame(uart, 0x00, (uint8_t*)&msgid, sizeof(uint16_t));
		NVIC_SystemReset();
		break;
	}
	case 0x04:
		// blink LED
		;
	case 0x05: {
		// status request
		struct statusreport statusmsg;
		statusmsg.responseto_msgid = msgid;

		HDLC_Send_Frame(uart, 0x06, &statusmsg, sizeof(statusmsg));
		break;
	}
	case 0x09:
		// configure sensor trip points / filtering
		;
	case 0x0B:
		// configure sensor streaming
		;
	default: {
		// NACK everything unrecognized
		nack_count ++;
		HDLC_Send_Frame(uart, 0x01, (uint8_t*)&msgid, sizeof(uint16_t));
		break;
	}
	}

}

void HDLC_Process_Input()
{
	int new_NDTR = ((DMA_Stream_TypeDef *)(dma_uart->Instance))->NDTR;
	if(new_NDTR == prev_NDTR) {
		// nothing to do, no bytes have been received
		return;
	}

	int prev_ptr = DMA_BUFFER_SIZE - prev_NDTR;
	int new_ptr = DMA_BUFFER_SIZE - new_NDTR;
	prev_NDTR = new_NDTR;

	for(int ptr=prev_ptr; ptr != new_ptr; ptr = (ptr + 1) % DMA_BUFFER_SIZE) {
		uint8_t b = dma_buffer[ptr];
		if(b == 0x7E) {
			// frame end
			if(is_escape) {
				// bad frame
				bad_frame_count ++;
				is_escape = 0;
			} else {
				if(command_buffer_idx > 4)
					HDLC_Process_Frame(0, command_buffer, command_buffer_idx);
				else
					runt_frame_count ++;
			}
			command_buffer_idx = 0;
			continue;
		} else if(b == 0x7D) {
			// escape octet
			// what do we do with two escape octets in a row? eh
			is_escape = 1;
			continue;
		}

		if(is_escape) {
			b ^= 0x10;
		}

		if(command_buffer_idx >= (COMMAND_BUFFER_SIZE - 1)) {
			// command buffer overflow
			oversize_frame_count ++;
			command_buffer_idx = 0;
			is_escape = 0;
		} else {
			command_buffer[command_buffer_idx++] = b;
		}
	}
}
