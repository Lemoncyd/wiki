#ifndef _USER_CTRL_H_
#define _USER_CTRL_H_

#include <stdbool.h>          // standard boolean definitions
#include <stdint.h>           // standard integer functions
#include "nec_ctrl.h"  
#include "cw_ctrl.h"
#include "pdt_ctrl.h"           //
#include "cmd_ctrl.h"           //
//#include "rgbcw_ctrl.h"
//#define   	GPIO_NEC            GPIOB_3
#define TIMER_CNT 2
enum 
{
    RGB_ON     = 0,
    RGB_OFF    = 1,                
};


typedef struct 
{
	uint8_t begin[1];
}init_param;

typedef struct 
{
	uint16_t one_dt;//用于储存绑定状态之前的灯效
	uint16_t two_dt;//用于储存绑定状态之前的灯效
	uint16_t thr_dt;//用于储存绑定成功之前的灯效
	uint16_t fou_dt;//用于储存绑定成功之前的灯效
	uint16_t fiv_dt;//用于储存解绑成功之前的灯效
	uint16_t six_dt;//用于储存解绑成功之前的灯效
	uint16_t one_onoff;//用于储存绑定状态之前的开关
	uint16_t two_onoff;//用于储存绑定状态之前的开关
	uint16_t thr_onoff;//用于储存绑定成功之前的开关
	uint16_t fou_onoff;//用于储存绑定成功之前的开关
	uint16_t fiv_onoff;//用于储存解绑成功之前的开关
	uint16_t six_onoff;//用于储存解绑成功之前的开关
}pair_dt_t;

typedef struct 
{
	nec_st 			nec;
	cw_param  		cw_dt;
	pdt_data        pdt_dt;
	uart_data 		uart_dt;
	init_param 		init_dt;
	pair_dt_t 		pair;
}user_param;
extern user_param user_dt;//user_dt;

typedef struct 
{
	uint8_t od_one;
	uint8_t od_two;
	uint8_t od_thr;
}odr_flash_dt;//order

typedef struct 
{
	uint8_t begin;  //璁板綍鐑у綍鍚庣涓�娆′笂鐢?
	
}com_flash_dt;//common


typedef struct 
{
	com_flash_dt com_fdt;
	odr_flash_dt odr_fdt;
	nec_flash_dt nec_fdt;
	cw_flash_dt  cw_fdt;
	
}user_flash_dt;
extern user_flash_dt flash_dt;

void dev_init(void);
void light_display(void);
void begin_set(uint8_t pdt_mode);
void app_get_log_u16(uint16_t *buf, uint32_t len, uint8_t* str);
void app_get_log_u08(uint8_t *buf, uint32_t len, uint8_t* str);
uint32_t cyd_flash_ea(uint32_t addr, uint8_t sec);
uint32_t cyd_flash_wr(const uint8_t *buf, uint32_t addr, uint32_t len);
uint32_t cyd_flash_rd(uint8_t *buf, uint32_t addr, uint32_t len);

uint16_t get_adc_value(void);
void set_adc_value(uint16_t val);

#endif //_USER_CTRL_H_
