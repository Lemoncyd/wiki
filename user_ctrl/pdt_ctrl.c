#include "log.h"
#include "uart.h"
#include "gpio.h"
#include <stdio.h>
#include <string.h>   
#include "pdt_ctrl.h"
#include "lib_ctrl.h"
#include "user_ctrl.h"
#include "cmd_display.h"
gpio_pin_e gpio_cfg[2] = {GPIO_P32,GPIO_P31};// 

uint8_t enter_pdt_mode(void)
{
	uint8_t ret = 0;
	user_dt.pdt_dt.pdt_flag = 0;
	hal_gpio_pull_set(GPIO_TM, GPIO_PULL_UP_S);
	hal_gpio_pin_init(GPIO_TM, GPIO_INPUT);
    if (!hal_gpio_read(GPIO_TM))
    {
		//dbg_printf("enter_pdt_mode \r\n");
		ret = 1;
        uint8_t ret_uart[6] = {0xBB, 0x02, 0x04, 0x01,0x07,0x66};
		hal_uart_send_buff(UART0, ret_uart, 6);
		#if 0
		for(uint8_t cnt = 0; cnt < sizeof(gpio_cfg); cnt ++)
		{
			hal_gpio_pin_init(gpio_cfg[cnt], GPIO_OUTPUT);
			hal_gpio_fast_write(gpio_cfg[cnt],1);
		}
		user_dt.pdt_dt.pdt_flag = 1;//
		#endif
    }
	return ret;
}
#include "tuya_ble_main.h"

uint8_t start_pdt_mode(uint8_t *buf, uint8_t len)
{
	uint8_t ret = 0;
	if (!hal_gpio_read(GPIO_TM)) //测试模式
	{
		uint8_t data_one[11] = {0xAA, 0x07, 0x03, 0x4A, 0x58, 0x54, 0x45, 0x58, 0x54, 0xF1, 0x55};
		uint8_t data_two[6] = {0xAA, 0x02, 0x08, 0x01, 0x0B, 0x55};
		uint8_t data_thr[6] = {0xAA, 0x02, 0x0B, 0x01, 0x0E, 0x55};
		uint8_t ble_data[50];
		uint8_t ble_len = 0;
		uint8_t ble_name[]	 = {"TYMG"};				//最大20个字节'N','H','B','-','2','0','2','0'
		uint8_t ble_ver[]	 = {"1.0.1"};				//最大20个字节
		//dbg_printf("start_pdt_mode \r\n");
		if ((len == 11) && (0 == memcmp(data_one, buf, 11)))  	//新增GPIO测试模式
		{
			//dbg_printf("pdt_mode \r\n");
			ble_data[0] = 0XB6;  //HEAD
			ble_data[1] = 0X6B;  //HEAD
			//tuya_ble_current_para.auth_settings.mac
			uint8_t mac[6] = {0};
			for(uint8_t cnt = 0; cnt < 6; cnt ++)
			{
				mac[cnt] = tuya_ble_current_para.auth_settings.mac[5-cnt];
				//dbg_printf("mac[cnt] = %02x \r\n", mac[cnt]);
			}
			memcpy(ble_data + 2, tuya_ble_current_para.auth_settings.mac, 6);//mac
			
			ble_len = 8;
			ble_data[ble_len] = sizeof(ble_name) - 1;  //name len
			ble_len ++;
			memcpy(ble_data + ble_len, ble_name, sizeof(ble_name) - 1);//name
			ble_len = ble_len + ble_data[8];
			ble_data[ble_len] = sizeof(ble_ver) - 1;//ver len
			ble_len ++;
			//当前版本 手动修改
			memcpy(ble_data + ble_len, ble_ver, sizeof(ble_ver)-1);//ver
			ble_len = ble_len + sizeof(ble_ver) - 1;
			if (ble_len > 50) {return 0;}
			hal_uart_send_buff(UART0, ble_data, ble_len);//当前设备的MAC地址、名称、版本号给主机,主机通过这个连接
			for(uint8_t cnt = 0; cnt < sizeof(gpio_cfg); cnt ++)
			{
				hal_gpio_pin_init(gpio_cfg[cnt], GPIO_OUTPUT);
				hal_gpio_fast_write(gpio_cfg[cnt],1);
			}
			ret = 1;
			user_dt.pdt_dt.pdt_cnt = 0;
			user_dt.pdt_dt.pdt_flag = 1;
		}
		else if ((len == 6) && (0 == memcmp(data_two, buf, 6)))  	//MIC测试模式
		{
			ret = 1;
			user_dt.pdt_dt.pdt_cnt = 0;
			user_dt.pdt_dt.pdt_flag = 2;
		}
		else if ((len == 6) && (0 == memcmp(data_thr, buf, 6)))  	//KEY测试模式
		{
			ret = 1;
			user_dt.pdt_dt.pdt_cnt = 0;
			user_dt.pdt_dt.pdt_flag = 3;
		}
	}
	return ret;
}
#if 1
void pdt_display(void)
{
	//如果是相邻的GPIO口一个使用gpio_va_1,一个使用gpio_va_0可以测试相邻是否短路
	static uint8_t gpio_va_1 = 0xff;
	static uint8_t gpio_va_0 = 0x00;
	if(0 != user_dt.pdt_dt.pdt_flag)
	{
		user_dt.pdt_dt.pdt_cnt ++;
		//if(user_dt.pdt_dt.pdt_cnt < 10 && user_dt.pdt_dt.pdt_cnt >= 1)
		{
			if(1 == user_dt.pdt_dt.pdt_flag && user_dt.pdt_dt.pdt_cnt < 10 && user_dt.pdt_dt.pdt_cnt > 2)
			{
				for(uint8_t cnt = 0; cnt < sizeof(gpio_cfg); cnt ++)
				{
					hal_gpio_fast_write(gpio_cfg[cnt],gpio_va_1);
				}
				gpio_va_1 = ~gpio_va_1;
				gpio_va_0 = ~gpio_va_0;
				user_dt.pdt_dt.pdt_cnt = 0;
			}
			else if(2 == user_dt.pdt_dt.pdt_flag)
			{
				uint8_t ret_uart[6] = {0xBB, 0x02, 0x08, 0x01,0x0B,0x66};
				if(PDT_MC_END == mc_pdt_enter(&ret_uart[3]))
				{
					ret_uart[4] = and_crc(&ret_uart[1], 3);
					//dbg_printf("ret_uart[3 4] = %02x %02x\r\n", ret_uart[3], ret_uart[4]);
					hal_uart_send_buff(UART0, ret_uart, 6);
					user_dt.pdt_dt.pdt_flag = 0;
				}
				user_dt.pdt_dt.pdt_cnt = 0;
			}
			else if(3 == user_dt.pdt_dt.pdt_flag)
			{
				if(0x01 == user_dt.pdt_dt.pdt_key)
				{
					uint8_t ret_uart[6] = {0xBB, 0x02, 0x0B, 0x01,0x0E,0x66};
					hal_uart_send_buff(UART0, ret_uart, 6);
					user_dt.pdt_dt.pdt_key = 0;
				}
				user_dt.pdt_dt.pdt_cnt = 0;
			}
		}
	}
}
#endif
#if 1
int music_1khz_check(uint16_t * data , uint8_t len)
{
	uint32_t sum = 0;
	uint32_t avg = 0;
	uint8_t count = 0;
	uint8_t vaildLen = 0;
	for (uint8_t i = 0; i < len; i++)
	{
		if (*(data + i) > 8)
		{
			sum += *(data + i);
			vaildLen++;
		}
	}
	if (vaildLen == 0)
	{
		return -1;
	}
	avg = sum / vaildLen;
	//dbg_printf("avg is %d len is %d\n",avg,vaildLen);
	if (avg < 350)
	{
		return -1;
	}
	for (uint8_t j = 0; j < len; j++)
	{
		if (*(data + j) > 8)
		{
			if (avg > (*(data + j)))
			{
				
				//dbg_printf("check - is %d %d %d\n",avg ,avg - (*(data + j)), (*(data + j)));
				if ((avg - (*(data + j))) > 420)
				{
					count++;
				}
			}
			else
			{
				//dbg_printf("check + is %d %d %d\n",avg,*(data + j) - avg, (*(data + j)));
				if ((*(data + j) - avg) > 420)
				{
					count++;
				}
			}
		}
	}
	//dbg_printf("count is %d\n",count);
	if (count > 10)
	{
		return -1;
	}
	else
	{
		return 0;
	}
}

static uint16_t music_test_buffer[100];

pdt_mc_mode mc_pdt_enter(uint8_t *result)
{
	static uint8_t mc_start_flag = 0;
	if (0 == mc_start_flag)
	{
		memset(music_test_buffer,0,100);
		mc_start_flag++;
	}
	else
	{
		uint16_t val = get_adc_value();
		if (val < 0)
		{
			val = 0;	
		}
		music_test_buffer[mc_start_flag-1] = (uint16_t)val;
		//dbg_printf("music test adc value is %d\n",value);
		if (100 == mc_start_flag)
		{
			mc_start_flag = 0;
			if (0 == music_1khz_check(&music_test_buffer[25],50))
			{
				*result = 1;
			}
			else
			{
				*result = 0;
			}
			return PDT_MC_END;
		}
		else
		{
			mc_start_flag++;
		}
	}
	return PDT_MC_SRT;	
}
#endif

