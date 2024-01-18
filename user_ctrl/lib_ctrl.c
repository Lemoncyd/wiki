#include <stdlib.h>    // standard lib functions
#include <stddef.h>    // standard definitions
#include <stdint.h>    // standard integer definition
#include <string.h>
#include "lib_ctrl.h"

/*******************************************************************
*作用 	 		:
*参数
	flag		:颜色是否需要变化的标志：0不需要 1需要
	output_val	:颜色变化的当前值
	val_one     :颜色的开始值 
	val_two     :颜色的目标值
	cnt 	    :颜色变化的次数(控制变化速度)
*返回值	 		:NO
*其它说明			:NO
********************************************************************/
void rgb_check(uint8_t * flag, float *output_val, uint16_t val_one, uint16_t val_two, uint16_t cnt)
{
	static float spd = 0;
	if(*flag == 1)
	{
		     if(val_one > val_two) {spd = (float)(((float)(val_one - val_two))/cnt);}
		else if(val_one < val_two) {spd = (float)(((float)(val_two - val_one))/cnt);}
		else if(val_one == val_two){*output_val = val_two;}
		if(*output_val < val_two)
		{
			*output_val += spd;
			if(*output_val >= val_two-1) {*output_val = val_two;}
		}
		else if(*output_val > val_two)
		{
			*output_val -= spd;
			if(*output_val <= val_two+1) {*output_val = val_two;}
		}
		//else if(*output_rgb_val == rgb_val_two)
		if(*output_val == val_two) {*flag = 0;}
	}
}


void cnt_increase_reduce(uint8_t type, uint8_t *data, uint16_t max, uint16_t min, uint8_t step)
{
	if(0 == type)
	{
		*data = *data + step;
		if(max <= *data) 
		{
			*data = min;
		}
	}
	else if(1 == type)
	{
		*data = *data - step;
		if(min >= *data) 
		{
			*data = max;
		}
	}
}

void increase_reduce_u08(uint8_t type, uint8_t *data, uint16_t max, uint16_t min, uint8_t step)
{
	switch(type)
	{
		case 0:
		if(*data > min)
		{
			if(*data <= step || (*data-step) <= min) *data = min;
			else *data -= step;
		}
		else if(*data <= min+1)
		{
			*data = min;
		}break;
		case 1:
		if(*data < max)
		{
			if((max-*data) <= step) *data = max;
			else *data += step;
		}
		else if(*data >= max)
		{
			*data = max;
		}break;
	}
}

void increase_reduce_u16(uint8_t type, uint16_t *data, uint16_t max, uint16_t min, uint8_t step)
{
	switch(type)
	{
		case 0:
		if(*data > min) 
		{
			if(*data <= step || (*data-step) <= min) *data = min;
			else *data -= step;
		}
		else if(*data <= min+1)
		{
			*data = min;
		}break;
		case 1:
		if(*data < max)
		{
			if((max-*data) <= step) *data = max;
			else *data += step;
		}
		else if(*data >= max)
		{
			*data = max;
		}break;
	}
}

void loop_reduce_u16(uint8_t type, uint16_t *data, uint16_t max, uint8_t min, uint8_t step)
{
	if(*data > min)
	{
		if(*data <= step || (*data-step) <= min) *data = min;//
		else *data -= step;
	}
	else if(*data <= min+1)
	{
		*data = max;
	}
}
void loop_reduce_u08(uint8_t type, uint8_t *data, uint16_t max, uint8_t min, uint8_t step)
{
	switch(type)
	{
		case 0:
		if(*data > min)
		{
			if(*data <= step || (*data-step) <= min) *data = min;
			else *data -= step;
		}
		else if(*data <= min+1)
		{
			*data = max;
		}break;
		case 1:
		if(*data < max)
		{
			if((max-*data) <= step) *data = max;
			else *data += step;
		}
		else if(*data >= max)
		{
			*data = min;
		}break;
	}
	#if 0
	if(*data > min)
	{
		if(*data <= step || (*data-step) <= min) *data = min;//
		else *data -= step;
	}
	else if(*data <= min+1)
	{
		*data = max;
	}
	#endif
}
//#include "uart.h"
//#include "user_ctrl.h"
void hsv_to_rgb(uint16_t *hsv, uint16_t *rgb_dt)
{
    float rgb[3] = {0.0};
    float cyxz[4] = {0.0};
    float h=(float)(hsv[0]);
    float s=(float)(hsv[1])/1000.0;
    float v=(float)(hsv[2])/1000.0;
    if(s == 0)
        rgb[0] = rgb[1] = rgb[2] = v;
    else
    {
        h = h/60;
        uint8_t a = (uint8_t)h;
        cyxz[0] = h - a;
        cyxz[1] = v * (1 - s);
        cyxz[2] = v * (1 - s*cyxz[0]);
        cyxz[3] = v * (1 - s*(1-cyxz[0]));
        switch(a)
		{
            case 0 : rgb[0] = v; rgb[1] = cyxz[3]; rgb[2] = cyxz[1]; break;
            case 1 : rgb[0] = cyxz[2]; rgb[1] = v; rgb[2] = cyxz[1]; break;
            case 2 : rgb[0] = cyxz[1]; rgb[1] = v; rgb[2] = cyxz[3]; break;
            case 3 : rgb[0] = cyxz[1]; rgb[1] = cyxz[2]; rgb[2] = v; break;
            case 4 : rgb[0] = cyxz[3]; rgb[1] = cyxz[1]; rgb[2] = v; break;
            default: rgb[0] = v; rgb[1] = cyxz[1]; rgb[2] = cyxz[2]; break;
        }
    }
    rgb_dt[0] = (uint16_t)(rgb[0]*255);
    rgb_dt[1] = (uint16_t)(rgb[1]*255);
    rgb_dt[2] = (uint16_t)(rgb[2]*255);
	//app_get_log_u16(&rgb_dt[0], 3, "rgb_dt.hsv");
}


//R,G,B鍙傛暟浼犲叆鑼冨洿锛?~255锛?
//杞崲缁撴灉h(0~360),s(0~100),v(0~100)
//#include "Tuya_ble_api.h"
void rgb_to_hsv(uint8_t *hsv,uint8_t r,uint8_t g,uint8_t b)
{
	float R = (float)((float)r/255.0);
    float G = (float)((float)g/255.0);
    float B = (float)((float)b/255.0);
	uint16_t h = 0, s = 0, v = 0;
	float max = (float)((float)(max3v(r,g,b))/255.0);
	float min = (float)((float)(min3v(r,g,b))/255.0);
    v = (uint16_t)(max*1000);
    if(max == 0) s = 0;
    else s = (uint16_t)((1-(min/max))*1000);
    if(max == min) h = 0;
    else if(max == R && G>=B) h = (uint16_t)((60.0*((G-B)/(max-min)))+0.0);
    else if(max == R && G<B)  h = (uint16_t)((60.0*((G-B)/(max-min)))+360.0);
    else if(max == G)  		  h = (uint16_t)((60.0*((B-R)/(max-min)))+120.0);
    else if(max == B)  		  h = (uint16_t)((60.0*((R-G)/(max-min)))+240.0);
	hsv[0] = (h>>8) & 0x00ff;
	hsv[1] = (h>>0) & 0x00ff;
	hsv[2] = (s>>8) & 0x00ff;
	hsv[3] = (s>>0) & 0x00ff;
	hsv[4] = (v>>8) & 0x00ff;
	hsv[5] = (v>>0) & 0x00ff;
}

uint8_t cmp_dt_one(uint8_t *data, uint8_t result, uint8_t num)
{
	uint8_t ret = 0;
	for(uint8_t cnt = 0; cnt < num; cnt ++)
	{
		if(data[cnt] == result)
		{
			ret ++;
		}
		else
		{
			ret = 0;
		}
	}
	return ret;
}
uint8_t cmp_dt_two(uint8_t *data, uint8_t result, uint8_t num)
{
	uint8_t ret = 0;
	for(uint8_t cnt = 0; cnt < num; cnt ++)
	{
		if(data[cnt] == result)
		{
			ret = 0x01;//只要检测到FF 说明出现不是字符数据 不再检测
			break;
		}
		else
		{
			ret = 0x00;
		}
	}
	return ret;
}
uint8_t cmp_dt_thr(const uint8_t * one, const uint8_t * two, uint8_t num)
{
    uint8_t ret = 0;
    for(uint8_t cnt = 0; cnt < num; cnt++)
    {
        if(one[cnt] != two[cnt])
        {
			ret = 1;
			break;
		}
    }
    return ret;
}
uint8_t cmp_dt_fou(uint8_t *data, uint8_t result, uint8_t num)
{
	uint8_t ret = 0;
	for(uint8_t cnt = 0; cnt < num; cnt ++)
	{
		if(data[cnt] == result)
		{
			ret = cnt+1;//只要检测到FF 说明出现不是字符数据 不再检测
			break;
		}
		else
		{
			ret = 0x00;
		}
	}
	return ret;
}
void copy_dt_one(uint16_t (*val)[3], uint8_t sub, uint8_t offset, uint8_t num)
{
	for(uint8_t cnt = 0+offset; cnt < num+offset; cnt ++)
	{
		val[cnt][0] = val[sub][0];
		val[cnt][1] = val[sub][1];
		val[cnt][2] = val[sub][2];
	}
}
void copy_dt_two(uint16_t *val_one,uint16_t *val_two, uint8_t num)
{
	for(uint8_t cnt = 0; cnt < num; cnt ++)
	{
		val_one[cnt] = val_two[cnt];
	}
}


#if 0
void str_to_hex(uint8_t *str, uint8_t *out, uint8_t *outlen)
{
	uint8_t *p = str;
	uint8_t high = 0, low = 0;
	uint8_t tmplen = strlen((char*)p), cnt = 0;
	tmplen = strlen((char*)p);
	while(cnt < (tmplen / 2))
	{
		high = ((*p > '9') && ((*p <= 'F') || (*p <= 'f'))) ? *p - 48 - 7 : *p - 48;
		low = (*(++ p) > '9' && ((*p <= 'F') || (*p <= 'f'))) ? *(p) - 48 - 7 : *(p) - 48;
		out[cnt] = ((high & 0x0f) << 4 | (low & 0x0f));
		p ++;
		cnt ++;
	}
	if(tmplen % 2 != 0) out[cnt] = ((*p > '9') && ((*p <= 'F') || (*p <= 'f'))) ? *p - 48 - 7 : *p - 48;
	if(outlen != NULL) *outlen = tmplen / 2 + tmplen % 2;
}
#elif 0
void str_to_hex(uint8_t *str, uint8_t *out)
{
	uint8_t *p = str;
	uint8_t high = 0, low = 0;
	uint8_t tmplen = strlen((char*)p), cnt = 0;
	tmplen = strlen((char*)p);
	while(cnt < (tmplen / 2))
	{
		high = ((*p > '9') && ((*p <= 'F') || (*p <= 'f'))) ? *p - 48 - 7 : *p - 48;
		low = (*(++ p) > '9' && ((*p <= 'F') || (*p <= 'f'))) ? *(p) - 48 - 7 : *(p) - 48;
		out[cnt] = ((high & 0x0f) << 4 | (low & 0x0f));
		p ++;
		cnt ++;
	}
	if(tmplen % 2 != 0) out[cnt] = ((*p > '9') && ((*p <= 'F') || (*p <= 'f'))) ? *p - 48 - 7 : *p - 48;
	//if(outlen != NULL) *outlen = tmplen / 2 + tmplen % 2;
}
/****************************************************************************
 * 函数名：hex_to_str
 * 描  述  ：字节流转换为十六进制字符串
 * 输  入    source要转换的十六进制
 *         dest 转换后的字符串
 *         sourceLen转换的数据长度
 * 输  出  ：无
 * 返  回  ：无
 *************************************************************************** */ 
void hex_to_str(uint8_t* source, uint8_t* dest, uint8_t sourceLen)
{
    uint8_t highByte, lowByte;
    for (uint16_t i = 0; i < sourceLen; i++)
    {
        highByte = source[i] >> 4;
        lowByte = source[i] & 0x0f ;
        highByte += 0x30;
        if (highByte > 0x39 && highByte < 0x40)
                dest[i * 2] = highByte + 0x07;
        else 
                dest[i * 2] = highByte;
		
        lowByte += 0x30;
        if (lowByte > 0x39 && lowByte < 0x40)
            dest[i * 2 + 1] = lowByte + 0x07;
        else
            dest[i * 2 + 1] = lowByte;
    }
}
#endif
uint8_t swap (uint8_t pData)//字节高低位镜像转换
{
	uint8_t value = 0,tmp = 0;
	uint8_t ii,jj;
	for (ii = 0x80, jj = 0;ii != 0;ii = ii>>1,jj++)
	{
		if (pData & ii) tmp = 1;
		else tmp = 0;
		value |= tmp << jj;
	}
	return value;
}
uint8_t oxr_crc(uint8_t * buf, uint8_t lenght)//异或校验
{
	uint8_t oxr_crc = 0;
	for(uint8_t cnt = 0; cnt < lenght; cnt++)
	{
		oxr_crc ^= buf[cnt];
	}
	return oxr_crc;
}

uint8_t and_crc(uint8_t * buf, uint8_t lenght)//和校验
{
    uint32_t and_crc = 0;
    for(uint8_t cnt = 0; cnt < lenght; cnt++)
    {
        and_crc += buf[cnt];
    }
    and_crc = and_crc & 0xFF;
    return (uint8_t)and_crc;
}
void copy_const_dt(uint16_t *data, uint16_t *const_dt, uint8_t divisor, uint8_t len)
{
	for(uint8_t cnt = 0; cnt < len; cnt++)
	{
		data[cnt] = const_dt[cnt]/divisor;
	}
}

