/*******************************************************************
*Copyright(C), 2013-2020,深圳市集贤科技有限公司
*Author		:  Lemon
*Date		:  创建日期，如2020.09.18
*Description:  用于主要说明此程序文件完成的主要功能
*Others		:  其他内容说明
********************************************************************/
#include <stdint.h> 
#include <string.h> 
uint8_t run_nec_rec(uint8_t *nec_rec, uint32_t time, uint16_t *end_code)
{
	uint8_t  ret = 0;
	static uint8_t  bit = 0, ll_f = 0, ll_w = 0, hh_w = 0, srt_code = 0;
	static uint32_t ll_t = 0, hh_t = 0, rec_data = 0;
	
	     if(0 == ll_f) {ll_t = time;/*第一个低电平时间*/ll_f = 1;}
	else if(1 == ll_f) {hh_t = time;/*第一个高电平时间*/ll_f = 0;}
	
		 if(ll_t > hh_t) {hh_w = ll_t - hh_t;}
	else if(hh_t > ll_t) {ll_w = hh_t - ll_t;}
	
	if((ll_w >= 85) && (ll_w <= 100))
	{
			 if(((hh_w >= 40) && (hh_w <= 60))) {ret = 0;(*end_code) = 0;bit = 0;hh_w = 0;ll_w = 0;srt_code = 1;rec_data = 0;
												 nec_rec[0] = 0;nec_rec[1] = 0;nec_rec[2] = 0;nec_rec[3] = 0;}//前导码获取
		else if(((hh_w >= 10) && (hh_w <= 39))) {ret = 1;(*end_code) ++;}//结束码获取  if((*end_code) > 75){srt_code = 0;}/*输出1bit高电平*/
	}
	if(1 == srt_code)
	{
		if((ll_w >= 4) && (ll_w <= 7))
		{
				 if((hh_w >= 15) && (hh_w <= 19)) /*输出1bit高电平*/ {hh_w = 0; ll_w = 0; rec_data |= 1 << (31 - bit); bit ++;}
			else if((hh_w >=  4) && (hh_w <=  7)) /*输出1bit低电平*/ {hh_w = 0; ll_w = 0; rec_data |= 0 << (31 - bit); bit ++;}
		}
		if (32 == bit)
		{
			bit = 0; srt_code = 0; ret = 0x01;
			nec_rec[0] = (rec_data & 0xff000000) >> 24; nec_rec[1] = (rec_data & 0x00ff0000) >> 16; 
			nec_rec[2] = (rec_data & 0x0000ff00) >>  8; nec_rec[3] = (rec_data & 0x000000ff) >>  0;
		}
	}
	return ret;
}

