/*******************************************************************
*Copyright(C), 2013-2020,深圳市集贤科技有限公司
*Author		:  Lemon
*Date		:  创建日期，如2020.09.18
*Description:  用于主要说明此程序文件完成的主要功能
*Others		:  其他内容说明
********************************************************************/
#include <stdio.h>
#include "string.h" 
#include "pwm.h"  
#include "flash.h"
#include "timer.h"
#include "ty_adc.h"
#include "user_ctrl.h"  
#include "pdt_ctrl.h"  
#include "nec_display.h" 
#include "tuya_ble_api.h"
user_param user_dt;
user_flash_dt flash_dt;
void app_get_log_u16(uint16_t *buf, uint32_t len, uint8_t* str)
{
	dbg_printf("%s = ", str);
	for (uint8_t i = 0; i < len; i++)
	{
		dbg_printf("%d ", buf[i]);
	}
	dbg_printf("\r\n");
}
void app_get_log_u08(uint8_t *buf, uint32_t len, uint8_t* str)
{
	dbg_printf("%s = ", str);
	for (uint8_t i = 0; i < len; i++)
	{
		dbg_printf("%02x ", buf[i]);
	}
	dbg_printf("\r\n");
}
void light_display(void)
{
	//cw_display();
	//rgb_display();
}

uint32_t cyd_flash_ea(uint32_t addr, uint8_t sec)
{
    #if 1
	ty_system_wdt_feed();
    if(addr % TUYA_NV_ERASE_MIN_SIZE != 0) 
	{
        TY_PRINTF("the start address is a not multiple of TUYA_NV_ERASE_MIN_SIZE");
        return TUYA_BLE_ERR_INVALID_ADDR;
    }
    for(uint32_t idx = 0; idx < sec; idx++) 
	{
        hal_flash_erase_sector(addr + (TUYA_NV_ERASE_MIN_SIZE*idx));
    }
    return TUYA_BLE_SUCCESS;
	#else
	return 0;
	#endif
}
static ALIGN4_U8 cyd_fcache[128];
uint32_t cyd_flash_wr(const uint8_t *buf, uint32_t addr, uint32_t len)
{
	#if 1
	ty_system_wdt_feed();
	memcpy(cyd_fcache, buf, len);
	#if 1
	dbg_printf("cyd_fcache = ");
	for (uint16_t cnt = 0; cnt < len; cnt++)
	{
		dbg_printf("%02x ", cyd_fcache[cnt]);
	}
	dbg_printf("\r\n");
	#endif
	return hal_flash_write(addr, cyd_fcache, len);
	#else
	return 0;
	#endif
}
uint32_t cyd_flash_rd(uint8_t *buf, uint32_t addr, uint32_t len)
{
    ty_system_wdt_feed();
    hal_flash_read(addr,buf,len);
	#if 0
	dbg_printf("cyd_fcache = ");
	for (uint16_t cnt = 0; cnt < len; cnt++)
	{
		dbg_printf("%02x ", buf[cnt]);
	}
	dbg_printf("\r\n");
	#endif
	return 0;
}

static uint16_t adc_val = 0;
void set_adc_value(uint16_t val)
{
	adc_val = val; 
}

uint16_t get_adc_value(void)
{
	//dbg_printf("adc_val = %04d\n", adc_val);
	return adc_val; 
}

/*******************************************************************
*作用 	 :初始化数据
*参数		 :NO
*返回值	 :NO
*其它说明:NO
********************************************************************/
void dev_init(void)
{
	if(!enter_pdt_mode())
	{
		nec_init();
		timer_init();
	}
	ty_adc_init();
}
/*******************************************************************
*作用 	 :上电只操作一次的数据
*参数		 :NO
*返回值	 :NO
*其它说明:NO
********************************************************************/
void begin_set(uint8_t pdt_mode)
{

}


