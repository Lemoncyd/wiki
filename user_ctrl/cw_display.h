#ifndef _CW_DISPLAY_H_
#define _CW_DISPLAY_H_

#include <stdbool.h>          // standard boolean definitions
#include <stdint.h>           // standard integer functions

typedef enum 
{
	CW_SLEF00_MODE = 0xE300,
	CW_SLEF01_MODE = 0xE301,//CW¾²Ì¬Ä£Ê½
	CW_SLEF02_MODE,
	CW_SLEF03_MODE,
	CW_SLEF04_MODE,
	CW_SLEF05_MODE,
	CW_SLEF06_MODE,
	CW_SLEF07_MODE,
	CW_SLEFFF_MODE = 0xE3FF,
}cw_mode_dt;

extern uint16_t cw_val[6][2];

void cw_display(void);
void cw_clear_display(void);

#endif //_CW_DISPLAY_H_
