#ifndef _CW_CTRL_H_
#define _CW_CTRL_H_

#include <stdbool.h>          // standard boolean definitions
#include <stdint.h>           // standard integer functions

#define   	CW_C             1
#define   	CW_W             2

#define   	CW_HZ            65535

typedef struct 
{
	uint8_t  flag[2];
	uint8_t  begin;   		//
	uint8_t  cw_cnt;   		//
	uint8_t  co_num;   		//
	float	 cw_float[2];   //
	uint16_t cw_val[2];   	//
	
}cw_param;

typedef struct 
{
	uint8_t  cw_onoff;
	uint8_t  cw_bgtness;
	uint8_t  cw_num;
	uint16_t cw_scene;
	uint16_t cw_spd;
	uint16_t cw_vivy;
	uint16_t cw_delay;
	uint16_t cw_val[16][2];
}cw_flash_dt;

void set_cw_flag(uint8_t val);
void cw_fdt_init(void);
void cw_param_init(void);
void display_cw_value(void);
void cw_change(uint16_t *cw_one, uint16_t *cw_two, uint8_t cnt, uint8_t cnt_s, uint16_t spd, uint16_t delay, uint8_t bgtness);
void cw_self_ctrl_1(uint16_t (*val)[2], uint8_t cw_num, uint8_t cw_cnt, uint16_t spd, uint16_t delay, uint8_t bgtness);//自定义渐变 跳变

#endif //_CW_CTRL_H_
