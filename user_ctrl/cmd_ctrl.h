#ifndef _CMD_CTRL_H_
#define _CMD_CTRL_H_

#include <stdbool.h>          // standard boolean definitions
#include <stdint.h>           // standard integer functions
#define CMD_NUM             16
#define ATUART_NUM          32   // uart buffer 
#define UART_BAUD_NUM       7

void uart_rx_handler(uint8_t *buf, uint16_t *len, uint16_t phy_len);

typedef struct 
{
	uint8_t phy_len;
	uint8_t urt_dt[150];   	//
	uint16_t urt_len;
}uart_data;


#endif //_CMD_CTRL_H_
