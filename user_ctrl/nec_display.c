/*******************************************************************
*Copyright(C), 2013-2020,深圳市集贤科技有限公司
*Author		:  Lemon
*Date		:  创建日期，如2020.09.18
*Description:  用于主要说明此程序文件完成的主要功能
*Others		:  其他内容说明
********************************************************************/
#include <stdint.h> 
#include <string.h> 
#include "gpio.h"
#include "user_ctrl.h"
#include "lib_ctrl.h"
#include "nec_ctrl.h"
#include "tuya_ble_api.h"
#include "tuya_ble_utils.h"
#include "ty_flash.h"
#include "ty_system.h"
#include "user_ble_dp_data.h"
#include "light_basis_ctrl.h"
#include "light_cfg_init.h"
#include "light_save_user_flash.h"
#include "user_strip_driver_spi.h"
#include "light_memory.h"
#include "light_scene.h"
#include "nec_display.h"
uint8_t nec_key[9] = 
{0x1A,0x9A,0xA2, 0x2A,0xAA,0x92, 0x18,0x58,0x22};
uint8_t nec_rgb[9][3] = 
{{0xFF, 0x00, 0x00}, {0x00, 0xFF, 0x00}, {0x00, 0x00, 0xFF},
 {0xFF, 0x86, 0x00}, {0x00, 0xFF, 0x7C}, {0x00, 0x72, 0xff},
 {0xFF, 0xF7, 0x00}, {0xFF, 0x00, 0xAA}, {0xFF, 0xFF, 0xFF}};

static void updata_bgtness_spd(nec_type type)
{
	uint8_t begin = 0;
	uint16_t tuya_len = 0;
	uint8_t tuya_dt[50] = {0x02,0x04,0x00,0x01,0x01,0x33,0x00,0x00};
	user_light_scene_dp_data_get(&tuya_dt[9], &tuya_len);
	tuya_dt[8] = tuya_len;
	dbg_printf("_mode = %d\r\n", user_light_mode_get());
	if(((tuya_dt[10]>=0x15 && tuya_dt[10]<=0x26) || (tuya_dt[10]>=0x47 && tuya_dt[10]<=0x50) || 
		(tuya_dt[10]>=0x29 && tuya_dt[10]<=0x30) || (tuya_dt[10]>=0x33 && tuya_dt[10]<=0x3A)) && 
		1 == user_light_mode_get() && true == user_light_switch_get())
	{
		switch(type)
		{
			case BGTNESS:
			{
				begin = 1;
				uint8_t bgtness = ty_light_cfg_init_get_rgb_bgtness();
				loop_reduce_u08(0, &bgtness, 100, 10, 10);
				dbg_printf("bgtness. = %d\r\n", bgtness);
				ty_light_cfg_init_set_rgb_bgtness(bgtness);
				break;
			}
			case BGTNESS_ADD:
			{
				break;
			}
			case BGTNESS_RED:
			{
				if(10 != ty_light_cfg_init_get_rgb_bgtness())
				{
					begin = 1;
					ty_light_cfg_init_set_rgb_bgtness(10);
				}
				break;
			}
			case SPD:
			{
				break;
			}
			case SPD_ADD:
			{
				uint8_t spd = ty_light_cfg_init_get_rgb_spd();
				if(100 > spd)
				{
					begin = 1;
					increase_reduce_u08(1, &spd, 100, 10, 10);
					dbg_printf("spd. = %d\r\n", spd);
					ty_light_cfg_init_set_rgb_spd(spd);
				}
				break;
			}
			case SPD_RED:
			{
				uint8_t spd = ty_light_cfg_init_get_rgb_spd();
				if(10 < spd)
				{
					begin = 1;
					increase_reduce_u08(0, &spd, 100, 10, 10);
					dbg_printf("spd. = %d\r\n", spd);
					ty_light_cfg_init_set_rgb_spd(spd);
				}
				break;
			}
		}
		if(begin)
		{
			user_light_auto_save(DATA_TYPE_USER);
			user_light_vendor_dp_data(&tuya_dt[0], tuya_len+9);
			app_get_log_u08(tuya_dt, tuya_len+9, "tuya_dt");
		}
	}
}

void nec_display(void)
{
	if (1 == user_dt.nec.nec_fs)
	{
		user_dt.nec.nec_fs = 0;
		if (0x00 == user_dt.nec.nec_dt[0] && 0xFF == user_dt.nec.nec_dt[1] && 
			user_dt.nec.nec_dt[2] == (0xFF & (~user_dt.nec.nec_dt[3])) && 0 == user_dt.nec.end_code)
		{
			switch(user_dt.nec.nec_dt[2])
			{
				case 0x02://开关
				{
					dbg_printf("开关\r\n");
					if(true == user_light_switch_get())
					{
						user_light_switch_set(false);
					}
					else
					{
						user_light_switch_set(true);
					}
					dbg_printf("user_light_switch_get() = %d\r\n", user_light_switch_get());
					uint8_t tuya_dt[5] = {0x01,0x01,0x00,0x01,0x00};
					tuya_dt[4] = user_light_switch_get();
					user_light_vendor_dp_data(&tuya_dt[0], sizeof(tuya_dt));
					break;
				}
				case 0xD8://亮度
				{
					dbg_printf("亮度\r\n");
					updata_bgtness_spd(BGTNESS);
					break;
				}
				case 0x3A://暖白循环
				{
					dbg_printf("暖白循环\r\n");
					updata_bgtness_spd(BGTNESS_RED);
					break;
				}
				case 0x30://音乐模式0
				{
					dbg_printf("音乐模式0\r\n");
					ty_music_mode(3);
					break;
				}
				case 0xB0://音乐模式1
				{
					dbg_printf("音乐模式1\r\n");
					ty_music_mode(4);
					break;
				}
				case 0x70://音乐模式2
				{
					dbg_printf("音乐模式2\r\n");
					ty_music_mode(5);
					break;
				}
				case 0x10://幻彩模式0
				{
					dbg_printf("...........................................RGBCW模式0\r\n");
					ty_scene_mode(6);
					break;
				}
				case 0x90://幻彩模式1
				{
					dbg_printf("...........................................RGBCW模式1\r\n");
					ty_scene_mode(39);
					break;
				}
				case 0x60://幻彩模式2
				{
					dbg_printf("...........................................RGBCW模式2\r\n");
					ty_scene_mode(7);
					break;
				}
				case 0x50://幻彩模式3
				{
					dbg_printf("...........................................RGBCW模式3\r\n");
					ty_scene_mode(37);
					break;
				}
				case 0xD0://幻彩模式4
				{
					dbg_printf("...........................................RGBCW模式4\r\n");
					ty_scene_mode(22);
					break;
				}
				case 0xE0:////幻彩模式5
				{
					dbg_printf("...........................................RGBCW模式5\r\n");
					ty_scene_mode(26);
					break;
				}
				case 0x08://定时2H
				{
					dbg_printf("定时2H\r\n");
					uint8_t tuya_dt[20] = {0x02,0x04,0x00,0x01,0x00,
					0x3d,0x00,0x00,0x0b,0x00,0x01,0x00,0x0f,0x00,0x00,0xe3,0x03,0x54,0x01,0xf4};
					ty_light_cfg_init_set_rgb_sec(0);
					if(true == user_light_switch_get())
					{
						if(0 == ty_light_cfg_init_get_rgb_timer())
						{
							rgb_to_hsv(&tuya_dt[14], nec_rgb[0][0], nec_rgb[0][1], nec_rgb[0][2]);
							ty_light_cfg_init_set_rgb_timer(2*60*60);	
							ty_light_cfg_init_set_rgb_timer_onoff(1);
						}
						else
						{
							ty_light_cfg_init_set_rgb_sec(99);
							rgb_to_hsv(&tuya_dt[14], nec_rgb[1][0], nec_rgb[1][1], nec_rgb[1][2]);
							ty_light_cfg_init_set_rgb_timer(1);
							ty_light_cfg_init_set_rgb_timer_onoff(0);
						}
						user_light_vendor_dp_data(&tuya_dt[0], sizeof(tuya_dt));
						user_light_auto_save(DATA_TYPE_USER);
					}
					break;
				}
				case 0x88://速度+
				{
					dbg_printf("速度+\r\n");
					updata_bgtness_spd(SPD_ADD);
					break;
				}
				case 0x48://速度+
				{
					dbg_printf("速度-\r\n");
					updata_bgtness_spd(SPD_RED);
					break;
				}
				default://静态颜色
				{
					uint8_t ret = cmp_dt_fou(&nec_key[0], user_dt.nec.nec_dt[2], 9);
					dbg_printf("ret = %02d\r\n", ret);
					if(0 != ret && true == user_light_switch_get())
					{
						uint8_t tuya_dt[20] = {0x02,0x04,0x00,0x01,0x00,
						0x3d,0x00,0x00,0x0b,0x00,0x01,0x00,0x0f,0x00,0x00,0xe3,0x03,0x54,0x01,0xf4};
						rgb_to_hsv(&tuya_dt[14], nec_rgb[ret-1][0], nec_rgb[ret-1][1], nec_rgb[ret-1][2]);
						dbg_printf("hsv_dt = %02x%02x %02x%02x %02x%02x\r\n", tuya_dt[14], tuya_dt[15], tuya_dt[16], tuya_dt[17], tuya_dt[18], tuya_dt[19]);
						user_light_vendor_dp_data(&tuya_dt[0], sizeof(tuya_dt));
					}
					break;
				}
			}
		}
		else if (0x00 == user_dt.nec.nec_dt[0] && 0xFF == user_dt.nec.nec_dt[1] && //长按功能
			user_dt.nec.nec_dt[2] == (0xFF & (~user_dt.nec.nec_dt[3])) && 0 < user_dt.nec.end_code)

		{
			switch(user_dt.nec.nec_dt[2])
			{
				case 0xD8://开关
				{
					if((0 == user_dt.nec.end_code%25&&76 > user_dt.nec.end_code) || 5 == user_dt.nec.end_code)
					{
						dbg_printf("长按\r\n");
						uint8_t tuya_dt[20] = {0x02,0x04,0x00,0x01,0x00,
						0x3d,0x00,0x00,0x0b,0x00,0x01,0x00,0x0f,0x00,0x00,0xe3,0x03,0x54,0x01,0xf4};
						if(5 == user_dt.nec.end_code)
						{
							static uint8_t order = 0;
							cnt_increase_reduce(0, &order, 5, 0, 1);
							dbg_printf("order = %d\r\n", order);
							ty_light_cfg_init_set_rgb_order(order);
							user_light_auto_save(DATA_TYPE_USER);
							user_spi_driver_init();
							rgb_to_hsv(&tuya_dt[14], nec_rgb[8][0], nec_rgb[8][1], nec_rgb[8][2]);
							dbg_printf("hsv_dt = %02x%02x %02x%02x %02x%02x\r\n", tuya_dt[14], tuya_dt[15], tuya_dt[16], tuya_dt[17], tuya_dt[18], tuya_dt[19]);
							user_light_vendor_dp_data(&tuya_dt[0], sizeof(tuya_dt));
						}
						else
						{
							rgb_to_hsv(&tuya_dt[14], nec_rgb[user_dt.nec.end_code/25-1][0], nec_rgb[user_dt.nec.end_code/25-1][1], nec_rgb[user_dt.nec.end_code/25-1][2]);
							dbg_printf("hsv_dt = %02x%02x %02x%02x %02x%02x\r\n", tuya_dt[14], tuya_dt[15], tuya_dt[16], tuya_dt[17], tuya_dt[18], tuya_dt[19]);
							user_light_vendor_dp_data(&tuya_dt[0], sizeof(tuya_dt));
						}
						#if 0
						ty_flash_erase(BOARD_FLASH_TUYA_INFO_START_ADDR, 4);
						ty_system_reset();
						#endif
					}
					break;
				}
				default:
				{
					break;
				}
			}
		}
		dbg_printf("user_dt.nec.end_code = %d\r\n", user_dt.nec.end_code);		
        dbg_printf("nec_dt... = %02x%02x%02x%02x\r\n", user_dt.nec.nec_dt[0], user_dt.nec.nec_dt[1], user_dt.nec.nec_dt[2], 0xFF & (~user_dt.nec.nec_dt[3]));
	}
}

extern uint32_t timer_cnt;
void nec_pin_handler(gpio_pin_e pin,gpio_polarity_e type)
{
	//dbg_printf("nec_pin_handler\r\n");
	if(0 == user_dt.nec.nec_rt)
   	{
		user_dt.nec.nec_rt = run_nec_rec(user_dt.nec.nec_dt, timer_cnt, &user_dt.nec.end_code);	
	}
	if(1 == user_dt.nec.nec_rt)
	{
		user_dt.nec.nec_rt = 0;
		user_dt.nec.nec_fs = 1;
	}
}
void nec_init(void)
{
	hal_gpio_pull_set(GPIO_P31, GPIO_PULL_UP_S);
    hal_gpioin_register(GPIO_P31, nec_pin_handler, nec_pin_handler);
}



