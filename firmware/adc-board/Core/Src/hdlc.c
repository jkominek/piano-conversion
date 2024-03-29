#include "hdlc.h"
#include "stm32h7xx_hal.h"
#include "main.h"

#include <string.h>

#define DMA_BUFFER_SIZE 1024
#define COMMAND_BUFFER_SIZE 512

// TODO move a bunch of this into some sort of
// "channel" struct, which we hook into
// with just the tiniest shims. also we should
// see about registering an interrupt handler
// to at least copy from the dmabuffer into the
// relevant command buffer.
// then migrate all of the functions below to
// take the channel struct as an argument.
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

// we don't have protection for wrap-around in this code.
// OUT_BUF_SIZE needs to be significantly larger than any
// burst of stuff we might want to send, or we'll corrupt
// packets.
#define OUT_BUF_SIZE 1024
_Bool DMA_IN_PROGRESS = 0;
__attribute__ ((aligned (32))) __attribute__(( section(".dmabuffers") )) uint8_t out_buffer[OUT_BUF_SIZE];
uint16_t out_write = 0;
uint16_t out_sent = 0;
#define UPDATE_PARITY(b) { parity ^= b; }
#define INC_WRITE_IDX(i) { out_write = (out_write + i) % OUT_BUF_SIZE; }

static inline void APPEND_TO_FRAME(uint8_t b)
{
	if((b==0x7E)||(b==0x7D)) {
		out_buffer[out_write] = 0x7D;
		out_buffer[(out_write+1) % OUT_BUF_SIZE] = b ^ 0x10;
		INC_WRITE_IDX(2);
	} else {
		out_buffer[out_write] = b;
		INC_WRITE_IDX(1);
	}
}

// adds our standard "headers" to every message, and
// then applies async hdlc framing
void HDLC_Send_Frame(UART_HandleTypeDef *uart, uint8_t msgtype, uint8_t* rawmsg, uint16_t len)
{
	__disable_irq();

	// start and stop frame bytes, possibly escaping every byte,
	// parity byte(s), and another one for good measure.
	uint8_t parity = 0;
	// hdlc encode rawmsg to msg

	// is a DMA in progress? is the previous byte in the buffer a 0x7E?
	// then don't waste time sending this one. we don't need to send
	// back-to-back frame boundaries. for the minimum possible message
	// size this would reduce bandwidth consumption by 16%.
	if(!(DMA_IN_PROGRESS && out_buffer[out_sent]==0x7E))
	{
		out_buffer[out_write] = 0x7E;
		INC_WRITE_IDX(1);
	}

	UPDATE_PARITY(msgtype);
	APPEND_TO_FRAME(msgtype);

	// make sure to serialize in network byte order
	UPDATE_PARITY(*(1+(uint8_t*)&msgid));
	APPEND_TO_FRAME(*(1+(uint8_t*)&msgid));

	UPDATE_PARITY(*((uint8_t*)&msgid));
	APPEND_TO_FRAME(*((uint8_t*)&msgid));
	msgid++;

	for(int i=0; i<len; i++) {
		UPDATE_PARITY(rawmsg[i]);
		APPEND_TO_FRAME(rawmsg[i]);
	}
	APPEND_TO_FRAME(parity);
	out_buffer[out_write] = 0x7E;
	INC_WRITE_IDX(1);

	if(DMA_IN_PROGRESS) {
		// do nothing, the bytes are in the buffer and the pointers updated.
	} else {
		if(out_write > out_sent) {
			HAL_UART_Transmit_DMA(uart, out_buffer + out_sent, out_write - out_sent);
			out_sent = out_write;
		} else {
			HAL_UART_Transmit_DMA(uart, out_buffer + out_sent, OUT_BUF_SIZE - out_sent);
			out_sent = 0;
		}
		DMA_IN_PROGRESS = 1;
	}

	__enable_irq();
}

void HDLC_DMA_Send_Complete(UART_HandleTypeDef *uart)
{
	__disable_irq();
	if(out_write == out_sent) {
		// no change to the buffer. or the buffer is totally hosed.
		DMA_IN_PROGRESS = 0;
		__enable_irq();
		return;
	}
	// note, DMA_IN_PROGRESS is remaining true

	// note, if there was wrapping we'll retrigger ourselves
	// so that the wrapped portion is sent in two chunks.

	if(out_write > out_sent) {
		// no wrapping has occurred
		HAL_UART_Transmit_DMA(uart, out_buffer + out_sent, out_write - out_sent);
		out_sent = out_write;
	} else {
		// wrapping happened
		HAL_UART_Transmit_DMA(uart, out_buffer + out_sent, OUT_BUF_SIZE - out_sent);
		out_sent = 0;
	}
	__enable_irq();
}

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

#define ACK(msgid) HDLC_Send_Frame(uart, 0x00, (uint8_t*)&msgid, sizeof(uint16_t));
#define NACK(msgid) HDLC_Send_Frame(uart, 0x01, (uint8_t*)&msgid, sizeof(uint16_t));

	// TODO bring anything interesting out of here, via a function
	// call into main.c which receives a point to the start of the
	// interesting part of the buffer, and an updated length.
	switch(msgtype) {
	case 0x02: {
		ACK(msgid);
		// do we need to sleep, to give the message time to transmit?
		NVIC_SystemReset();
		break;
	}
	case 0x04:
		// blink LED
		;
	case 0x05: {
		// status request
		HDLC_Send_Frame(uart, 0x06, &status, sizeof(struct systemstatus));
		break;
	}
	case 0x09: {
		// configure sensor trip points / filtering
		// maybe operate on single channels at once
		// channel, field, value ?
		uint8_t channel;
		uint8_t setting;
		uint32_t value;
		bcopy(buf+3, &channel, 1);
		bcopy(buf+4, &setting, 1);
		bcopy(buf+5, &value, sizeof(uint32_t));
		if(update_setting(channel, setting, value)) {
			ACK(msgid);
		} else {
			NACK(msgid);
		}
		break;
	}
	case 0x0B:
		// configure sensor streaming
		bcopy(buf+3, &collectstats, sizeof(uint16_t));
		ACK(msgid);
		break;
	default: {
		// NACK everything unrecognized
		nack_count ++;
		NACK(msgid);
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
		dma_buffer[ptr] = 0;
		if(b == 0x7E) {
			// frame end
			if(is_escape) {
				// bad frame
				bad_frame_count ++;
				is_escape = 0;
			} else {
				if(command_buffer_idx >= 4)
					HDLC_Process_Frame(0, command_buffer, command_buffer_idx);
				else if(command_buffer_idx > 0)
					// two frame ends in a row doesn't make a run, so
					// require that we received _some_ bytes inbetween
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
			is_escape = 0;
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

	//printf("%i %i\n", bad_frame_count, parityerror_frame_count);
}
