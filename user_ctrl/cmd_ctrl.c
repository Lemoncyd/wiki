#include "cmd_ctrl.h"
#include "cmd_display.h"
#include <stdio.h>
#include <string.h>   
#include "log.h"

typedef void (*app_at)(uint8_t * p_data, uint16_t len);

const uint8_t get_at_str[CMD_NUM][15] = 
{
	#if TY_INFO
	{"GET_MAC"},
	{"GET_KEY"},
	{"GET_UID"},
	#endif
	#if JL_INFO
	{"G_JL_MAC"},
	{"G_JL_KEY"},
	{"G_JL_UID"},
	{"G_JL_LIC"},
	{"G_JL_CODE"},
	#endif
};
const uint8_t set_at_str[CMD_NUM][15] = 
{
	#if TY_INFO
	{"SET_MAC"},
	{"SET_KEY"},
	{"SET_UID"},
	#endif
	#if JL_INFO
	{"S_JL_MAC"},
	{"S_JL_KEY"},
	{"S_JL_UID"},
	{"S_JL_LIC"},
	{"S_JL_CODE"},
	#endif
};

app_at get_at_func[CMD_NUM] =
{              
	#if TY_INFO
	app_get_tuya_mac,
	app_get_tuya_key,
	app_get_tuya_uid,
	#endif
	#if JL_INFO
	app_get_jl_mac,
	app_get_jl_key,
	app_get_jl_uid,
	app_get_jl_lic,
	app_get_jl_code,
	#endif
};
app_at set_at_func[CMD_NUM] =
{
	#if TY_INFO
	app_set_tuya_mac,
	app_set_tuya_key,
	app_set_tuya_uid,
	#endif
	#if JL_INFO
	app_set_jl_mac,
	app_set_jl_key,
	app_set_jl_uid,
	app_set_jl_lic,
	app_set_jl_code,
	#endif
};

#if 1//(UART_DRIVER)
/*******************************************************************
*作用 	 :获取AT获取指令
*参数
	buf  :传入的数据
	len  :数据长度
*返回值	 :NO
*其它说明:NO
********************************************************************/
static void app_get_at(uint8_t* buf, uint16_t len)
{
	uint8_t at_type[15] = {0};
	memcpy(at_type, &buf[3], len-3-2);
	for(uint8_t i = 0; i < CMD_NUM; i++)
	{
		if(!strcmp((char*)at_type, (char*)get_at_str[i]))
		{
			//UART_PRINTF("str.. = %02s\r\n" ,&buf[3]);
			get_at_func[i](&buf[0], len-3-2);
			break;
		}
	}
}
/*******************************************************************
*作用 	 :获取AT设置指令
*参数
	buf  :传入的数据
	len  :数据长度
*返回值	 :NO
*其它说明:NO
********************************************************************/
static void app_set_at(uint8_t *buf, uint16_t len)
{
	uint8_t at_type[15] = {0};
	uint8_t at_data[60] = {0};
	for(uint8_t cnt = 0; cnt < len; cnt++)
	{
		if(buf[cnt] == '=')
		{
			memcpy(at_type, &buf[3], cnt - 3);
			memcpy(at_data, &buf[cnt + 1], len-cnt-1-2);//1 '='     2 '\r\n'
			for(uint8_t i = 0; i < CMD_NUM; i++)
			{
				if(!strcmp((char*)at_type, (char*)set_at_str[i]))
				{
					//UART_PRINTF("str. = %02s\r\n" ,at_data);
					set_at_func[i](at_data, len-cnt-1-2);
					break;
				}
			}
			break;
		}
	}
}
/*******************************************************************
*作用 	 :处理串口接收到的数据
*参数
	buf  :传入的数据
	len  :数据长度
*返回值	 :NO
*其它说明:NO
********************************************************************/
#include "pdt_ctrl.h"
#include "tuya_ble_port.h"
void uart_rx_handler(uint8_t *buf, uint16_t *len, uint16_t phy_len)
{
	//一帧接收完成
	if(0 < *len)// && 0 == phy_len)//&& 250 == cnt)// 
	{
		#if 0
		dbg_printf("pev->len = %02d %x  pev->data = ", *len, *len);
		for(uint8_t cnt = 0; cnt < *len; cnt ++)
		{
			dbg_printf("%02x ", buf[cnt]);
		}
		dbg_printf("\r\n");
		#else
		tuya_ble_device_delay_ms(10);
		#endif
		uint16_t at_len = *len;
		//dbg_printf("at_len = %02d-%d\r\n", at_len,*len);
		if(!start_pdt_mode(buf, at_len))
		{
			if(buf[0] == 'A' && buf[1] == 'T' && buf[2] == '+' && buf[*len - 1] == 0x0A && buf[*len - 2] == 0x0D)
			{
					 if('G' == buf[3]) {app_get_at(buf, at_len);}
				else if('S' == buf[3]) {app_set_at(buf, at_len);}
			}
		}
		memset(buf, 0, *len);
		*len = 0;
	}
}
#endif

