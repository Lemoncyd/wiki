/*******************************************************************
*Copyright(C), 2013-2022,深圳市集贤科技有限公司
*Author		:  Lemon
*Date		:  创建日期，如2022.02.10
*Description:  用于主要说明此程序文件完成的主要功能
*Others		:  其他内容说明
********************************************************************/
#include "uart.h"
#include <stdio.h>
#include "user_ctrl.h"
#include "pwm.h" 
#include "string.h" 
#include "cw_ctrl.h" 
#include "cw_display.h" 
#include "tuya_ble_api.h"

uint16_t cw_val[6][2] = {{0x0000,0xFFFF},{0x0000,0x0000},{0xFFFF,0x0000},{0x0000,0x0000},{0x8080,0x8080},{0x0000,0x0000}};//CW

void cw_display(void)
{
	if(0x01 == flash_dt.cw_fdt.cw_onoff && flash_dt.cw_fdt.cw_scene >= CW_SLEF00_MODE && flash_dt.cw_fdt.cw_scene <= CW_SLEFFF_MODE)
	{
		switch (flash_dt.cw_fdt.cw_scene)
	    {
			case CW_SLEF00_MODE:
			{
				//if(user_dt.cw_dt.cw_cnt < 1)
				{
					set_cw_flag(1);
					set_rgb_flag(0);
					cw_change(user_dt.cw_dt.cw_val, flash_dt.cw_fdt.cw_val[0], 2, 1, 30, 20, flash_dt.cw_fdt.cw_bgtness);
					display_cw_value();
				}
				break;
			}
			case CW_SLEF01_MODE://
			{
				break;
			}
			case CW_SLEF02_MODE://
			{
	            set_cw_flag(1);
	            cw_self_ctrl_1(&flash_dt.cw_fdt.cw_val[0], flash_dt.cw_fdt.cw_num, 7, flash_dt.cw_fdt.cw_spd, flash_dt.cw_fdt.cw_delay, 255);
				display_cw_value();
				break;
			}
			#if 0
			case CW_SLEF03_MODE://
			{
				if(user_dt.cw_dt.cw_cnt < 1)
				{
					set_cw_flag(1);
					cw_change(user_dt.cw_dt.cw_val, cw_val[4], 2, 1, 20, 20, flash_dt.cw_fdt.cw_bgtness);
					display_cw_value();
				}
				break;
			}
			case CW_SLEF04_MODE://绑定状态灯效
			{
				set_cw_flag(1);
				cw_self_ctrl(&cw_val[2], 2, 6, 80, 20, 100);
				display_cw_value();
				if(user_dt.cw_dt.cw_cnt == 6)
				{
					user_dt.cw_dt.cw_cnt = 0;
					flash_dt.cw_fdt.cw_scene = CW_SLEF07_MODE;				
				}
				break;
			}
			case CW_SLEF05_MODE://绑定成功灯效
			{
				set_cw_flag(1);
				cw_self_ctrl(&cw_val[0], 2, 4, 1, 50, 100);
				display_cw_value();
				if(user_dt.cw_dt.cw_cnt == 4)
				{
					flash_dt.rgb_fdt.rgb_scene = user_dt.pair.thr_dt;
					flash_dt.cw_fdt.cw_scene = user_dt.pair.fou_dt;
				}
				break;
			}
			case CW_SLEF06_MODE:////解绑成功灯效
			{
				set_cw_flag(1);
				cw_self_ctrl(&cw_val[0], 2, 6, 1, 50, 100);
				display_cw_value();
				if(user_dt.cw_dt.cw_cnt == 6)
				{
					user_dt.cw_dt.cw_cnt = 0;
					flash_dt.cw_fdt.cw_onoff = user_dt.pair.six_onoff;
					flash_dt.rgb_fdt.rgb_scene = user_dt.pair.fiv_dt;
					flash_dt.cw_fdt.cw_scene = user_dt.pair.six_dt;
				}
				break;
			}
			case CW_SLEF07_MODE://绑定状态灯效
			{
				if(user_dt.cw_dt.cw_cnt < 1)
				{
					set_cw_flag(1);
					cw_change(user_dt.cw_dt.cw_val, cw_val[0], 2, 1, 20, 20, 100);
					display_cw_value();
				}
				break;
			}
			#endif
			default: 
				break;
		}
    }
	else if(0x00 == flash_dt.cw_fdt.cw_onoff)
	{
		if(user_dt.cw_dt.cw_cnt < 1)
		{
			set_cw_flag(1);
			cw_change(user_dt.cw_dt.cw_val, cw_val[3], 2, 1, 20, 20, 0);
			display_cw_value();
		}
	}
}




