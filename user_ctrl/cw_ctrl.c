/*******************************************************************
*Copyright(C), 2013-2022,�����м��ͿƼ����޹�˾
*Author		:  Lemon
*Date		:  �������ڣ���2022.02.10
*Description:  ������Ҫ˵���˳����ļ���ɵ���Ҫ����
*Others		:  ��������˵��
********************************************************************/
#include "uart.h"
#include <stdio.h>
#include "user_ctrl.h"
#include "pwm.h" 
#include "string.h" 
#include "cw_ctrl.h" 
#include "lib_ctrl.h" 
#include "cw_display.h" 
#include "tuya_ble_api.h"

void cw_param_init(void)
{
	user_dt.cw_dt.begin = 0;
	user_dt.cw_dt.co_num = 0;
	user_dt.cw_dt.cw_cnt = 0;
}
void cw_fdt_init(void)
{
	if(0xff == flash_dt.cw_fdt.cw_onoff)
	{
		flash_dt.cw_fdt.cw_onoff = 1;
	}
	dbg_printf("cw_onoff = %d ", flash_dt.cw_fdt.cw_onoff); 
	if(0xff == flash_dt.cw_fdt.cw_bgtness)
	{
		flash_dt.cw_fdt.cw_bgtness = 128;
	}
	dbg_printf("cw_bgtness = %d ", flash_dt.cw_fdt.cw_bgtness); 
	if(0xff == flash_dt.cw_fdt.cw_num)
	{
		flash_dt.cw_fdt.cw_num = 7;
	}
	dbg_printf("cw_num = %d ", flash_dt.cw_fdt.cw_num); 
	if(0xffff == flash_dt.cw_fdt.cw_vivy)
	{
		flash_dt.cw_fdt.cw_vivy = 100;
	}
	dbg_printf("cw_vivy = %d ", flash_dt.cw_fdt.cw_vivy); 
	if(0xffff == flash_dt.cw_fdt.cw_spd)
	{
		flash_dt.cw_fdt.cw_spd = 4;
	}
	dbg_printf("rgbcw_spd = %d ", flash_dt.cw_fdt.cw_spd); 
	if(0xffff == flash_dt.cw_fdt.cw_scene)
	{
		flash_dt.cw_fdt.cw_scene = CW_SLEF00_MODE;
	}
	dbg_printf("rgbcw_scene = %04x \r\n", flash_dt.cw_fdt.cw_scene); 
}

void set_cw_flag(uint8_t val)
{
	user_dt.cw_dt.flag[0] = val;
	user_dt.cw_dt.flag[1] = val;
}
void set_cw_param(uint16_t *cw, uint8_t bgtness, uint8_t mode)
{
	cw[0] = cw[0] * (bgtness)/100;
	cw[1] = cw[1] * (bgtness)/100;
	if(mode != 0)
		flash_dt.cw_fdt.cw_scene = 1;
}
void display_cw_value(void)
{
	hal_pwm_set_count_val(PWM_CH3, user_dt.cw_dt.cw_val[0], RGB_HZ);
	hal_pwm_set_count_val(PWM_CH4, user_dt.cw_dt.cw_val[1], RGB_HZ);
}

/*******************************************************************
*���� 	 :���Ƶ���ɫ������˸��
*����		 :	*rgb_one:��ɫ�Ŀ�ʼֵ
			*rgb_two:��ɫ��Ŀ��ֵ
			  cw_num:�仯��ɫ������
			  cw_cnt:��¼���еĴ���
				 spd:�仯�ٶ�(ֵԽСԽ��)
			   delay:�л��ٶ�(ֵԽСԽ��)
*����ֵ	 :NO
*����˵��:NO
********************************************************************/
void cw_change(uint16_t *cw_one, uint16_t *cw_two, uint8_t cw_num, uint8_t cw_cnt, uint16_t spd, uint16_t delay, uint8_t bgtness)
{
	static uint8_t rgb_delay = 0;
	rgb_delay++;
	if(rgb_delay == 1)
	{
		rgb_check(&user_dt.cw_dt.flag[0], &user_dt.cw_dt.cw_float[0], cw_one[0], cw_two[0]*bgtness/255, spd);
		rgb_check(&user_dt.cw_dt.flag[1], &user_dt.cw_dt.cw_float[1], cw_one[1], cw_two[1]*bgtness/255, spd);
		user_dt.cw_dt.cw_val[0] = (uint16_t)user_dt.cw_dt.cw_float[0];
		user_dt.cw_dt.cw_val[1] = (uint16_t)user_dt.cw_dt.cw_float[1];
		rgb_delay = 0;
	}
	if(user_dt.cw_dt.flag[0] == 0 && user_dt.cw_dt.flag[1] == 0 && user_dt.rgb_dt.flag[0] == 0 && user_dt.rgb_dt.flag[1] == 0 && user_dt.rgb_dt.flag[2] == 0)
	{
		static uint16_t cw_delay = 0;
		cw_delay++;
		if(cw_delay >= delay)
		{
			cw_delay = 0;
			set_cw_flag(1);
			if(user_dt.cw_dt.co_num >= cw_num) {user_dt.cw_dt.co_num = 0;} 
			user_dt.cw_dt.co_num ++;
			
			if(user_dt.cw_dt.cw_cnt >= cw_cnt) {user_dt.cw_dt.cw_cnt = cw_cnt;}
			else {user_dt.cw_dt.cw_cnt ++;}
			//dbg_printf("user_dt.cw_dt.cw_cnt = %d\r\n", user_dt.cw_dt.cw_cnt);
		}
	}
}

/*******************************************************************
*���� 	 :���ƶ���ɫ���������
*����		 : (*val)[3]:��ɫ����
			     cnt:�仯��ɫ������
				 spd:�仯�ٶ�(ֵԽСԽ��)
			   delay:�л��ٶ�(ֵԽСԽ��)
*����ֵ	 :NO
*����˵��:NO
********************************************************************/
void cw_self_ctrl_1(uint16_t (*val)[2], uint8_t cw_num, uint8_t cw_cnt, uint16_t spd, uint16_t delay, uint8_t bgtness)
{
	static uint16_t val_s[2] = {0x0000, 0x0000};
	//dbg_printf("co_num = %d begin = %d rgb_cnt = %d spd  = %d\r\n", user_dt.rgb_dt.co_num, user_dt.rgb_dt.begin, user_dt.rgb_dt.rgb_cnt, spd);
	if(cw_num == user_dt.cw_dt.co_num) //���һ����ɫ
	{ 
		cw_change(val[user_dt.cw_dt.co_num-1], val[0], cw_num, cw_cnt, spd, (delay & 0xFF), bgtness);
	}
	else
	{
		if(user_dt.cw_dt.begin < 2) //��һ���ϵ����ģʽ�л�
		{
			if(0 == user_dt.cw_dt.begin)
			{
				user_dt.cw_dt.begin = 1;
				val_s[0] = user_dt.cw_dt.cw_val[0];
				val_s[1] = user_dt.cw_dt.cw_val[1];
				dbg_printf("......................flag	= %02x %02x rgb_val = %04x %04x %04x %04x \r\n", 
												user_dt.cw_dt.flag[0], user_dt.cw_dt.flag[1], 
												user_dt.cw_dt.cw_val[0], user_dt.cw_dt.cw_val[1],
												(uint16_t)user_dt.cw_dt.cw_float[0], (uint16_t)user_dt.cw_dt.cw_float[1]);
			}
			cw_change(&val_s[0], val[user_dt.cw_dt.co_num], cw_num, 1, spd, (delay&0xFF), bgtness);
			if(1 == user_dt.cw_dt.cw_cnt) {user_dt.cw_dt.begin = 2;}
		}
		else 
		{
			if(1 == (user_dt.cw_dt.co_num%2))//���� ��Ҫ��Ϊ��ʵ����˸����
			{
				cw_change(val[user_dt.cw_dt.co_num-1], val[user_dt.cw_dt.co_num], cw_num, cw_cnt, spd, ((delay>>8)&0xFF)+(delay&0xFF), bgtness);
			}
			else if(0 != user_dt.cw_dt.co_num)
			{
				cw_change(val[user_dt.cw_dt.co_num-1], val[user_dt.cw_dt.co_num], cw_num, cw_cnt, spd, (delay&0xFF), bgtness);
			}
		}
	}
}


