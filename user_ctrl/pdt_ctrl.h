#ifndef _PDT_CTRL_H_
#define _PDT_CTRL_H_

#include <stdbool.h>          // standard boolean definitions
#include <stdint.h>           // standard integer functions

#define GPIO_L_PDT  	0
#define GPIO_H_PDT  	1

#define GPIO_TM 		GPIO_P07 //P17

typedef struct 
{
	uint8_t pdt_key;
	uint8_t pdt_cnt;
	uint8_t pdt_flag;
}pdt_data;

typedef enum 
{
	PDT_MC_SRT = 0x00,
	PDT_MC_END = 0x02,
}pdt_mc_mode;

void pdt_display(void);
pdt_mc_mode mc_pdt_enter(uint8_t *result);
uint8_t enter_pdt_mode(void);
uint8_t start_pdt_mode(uint8_t *buf, uint8_t len);


#endif //_PDT_CTRL_H_
