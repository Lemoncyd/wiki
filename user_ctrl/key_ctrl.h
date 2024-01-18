#ifndef _KEY_CTRL_H_
#define _KEY_CTRL_H_

#include <stdbool.h>          // standard boolean definitions
#include <stdint.h>           // standard integer functions

#define KEY_NUM 3

#define KEY_FUNC_DOUBLE_0 0
#define KEY_FUNC_DOUBLE_1 1
#define KEY_FUNC_DOUBLE_2 2
#define KEY_FUNC_SINGLE_0 3
#define KEY_FUNC_SINGLE_1 0
#define KEY_FUNC_SINGLE_2 1
#define KEY_FUNC_LONG_0 	2
#define KEY_FUNC_LONG_1 	3
#define KEY_FUNC_LONG_2 	0

typedef void (*key_func)(gpio_pin_e pin,gpio_polarity_e type);
typedef void (* key_func_click)(void *arg);

typedef struct 
{
	uint8_t gpio_key;  	//按键GPIO设置
	uint8_t gpio_cfig; 	//GPIO初始化标准位
	uint8_t new_key;   	//按键的新值
	uint8_t old_key;   	//按键的旧值
	uint16_t cnt_key;   //计数按键按下的时间
	uint16_t set_time;  //长按按键的设定值
	uint8_t key_press; 	//短按单击时间小于2秒(长按按键的时间) 大于150毫秒的标志位
	uint8_t keystrokes;	//记录按键按下的次数
	uint8_t key_flag;  	//
	uint8_t long_key;  	//长按键的标志位
	uint8_t short_key; 	//短按键的标志位
	uint8_t double_key;
	uint8_t double_time;
	uint8_t key_cfg;
	uint8_t key_effect;
	key_func key_handler_one;//鎸変笅瑙﹀彂
	key_func key_handler_two;//鎶捣瑙﹀彂
	key_func_click single_click_func;
	key_func_click double_click_func;
	key_func_click long_click_func;
}key_eve_t;
extern key_eve_t key_user[KEY_NUM];

void key_check(key_eve_t * key_eve);

void key_check_2(key_eve_t * key_eve);
#endif //_KEY_CTRL_H_

