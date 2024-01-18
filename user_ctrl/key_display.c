#include "gpio.h"
#include "user_ctrl.h"
#include "lib_ctrl.h"
#include "key_ctrl.h"
#include "key_display.h"
#include "tuya_ble_api.h"
#include "user_ble_dp_data.h"
#include "light_basis_ctrl.h"
#include "light_cfg_init.h"
#include "light_save_user_flash.h"
#include "user_strip_driver_spi.h"
#include "light_memory.h"

void key_one_cfg(gpio_pin_e pin,gpio_polarity_e type);
void key_func_0(void *arg);
void key_func_1(void *arg);
void key_func_2(void *arg);
void key_func_3(void *arg);
key_func_click key_func_array[]={NULL,
														key_func_0,
														key_func_1,
														key_func_2,
														key_func_3};

key_eve_t key_user[KEY_NUMBERS] = {
#if KEY_NUMBERS > 0
{	.set_time = 100,
	.double_time = 25,
	.gpio_key = KEY_ONE,
	.key_handler_one = NULL,
	.key_handler_two = NULL,
	.key_effect = KEY0_EFFECT_LEVEL,
	.single_click_func = NULL,
	.double_click_func = NULL,
	.long_click_func = NULL
}
#endif
#if KEY_NUMBERS > 1
,
{
	.set_time = 100,
	.double_time = 25,
	.gpio_key = KEY_TWO,
	.key_handler_one = NULL,
	.key_handler_two = NULL,
	.key_effect = KEY1_EFFECT_LEVEL,
	.single_click_func = NULL,
	.double_click_func = NULL,
	.long_click_func = NULL
}
#endif
#if KEY_NUMBERS > 2
,{
	.set_time = 100,
	.double_time = 25,
	.gpio_key = KEY_THR,
	.key_handler_one = NULL,
	.key_handler_two = NULL,
	.key_effect = KEY2_EFFECT_LEVEL,
	.single_click_func = key_func_2,
	.double_click_func = key_func_1,
	.long_click_func = key_func_0
}
#endif
};

void key_func_0(void *arg)
{
	dbg_printf("key_func_0\r\n");
}
void key_func_1(void *arg)
{
	dbg_printf("key_func_1\r\n");
}
void key_func_2(void *arg)
{
	dbg_printf("key_func_2\r\n");
}
void key_func_3(void *arg)
{
	dbg_printf("key_func_3\r\n");
}
void key_one_cfg(gpio_pin_e pin,gpio_polarity_e type)
{
	key_user[0].key_cfg = 0;
}

void key_one_handle(void)
{
	key_user[0].set_time = 100;
	key_user[0].double_time = 25;
	key_user[0].gpio_key = KEY_ONE;
	key_user[0].key_handler_one = key_one_cfg;
	key_user[0].key_handler_two = NULL;
	key_user[0].key_effect = KEY0_EFFECT_LEVEL;
	key_check_2(&key_user[0]);
	if(1 == key_user[0].short_key)
	{		
		key_user[0].key_cfg = 1;
		key_user[0].short_key = 0;
		if(!hal_gpio_read(GPIO_TM))//?��??
		{
			user_dt.pdt_dt.pdt_key = 0x01;
		}
		else
		{
			dbg_printf("key_user[0].short_key\r\n");
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
		}
	}
	else if(1 == key_user[0].long_key)
	{
		dbg_printf("key_user[0].long_key\r\n");
		key_user[0].key_cfg = 1;
		key_user[0].long_key = 0;
	}
	else if(1 == key_user[0].double_key)
	{
		dbg_printf("key_user[0].double_key\r\n");
		key_user[0].key_cfg = 1;
		key_user[0].double_key = 0;
	}
	//dbg_printf("key_user[0].key_cfg = %02d\r\n", key_user[0].key_cfg);
}

void key_two_cfg(gpio_pin_e pin,gpio_polarity_e type)
{
	key_user[1].key_cfg = 0;
}

void key_two_handle(void)
{
	key_user[1].set_time = 100;
	key_user[1].double_time = 25;
	key_user[1].gpio_key = KEY_TWO;
	key_user[1].key_handler_one = NULL;
	key_user[1].key_handler_two = NULL;
	key_check(&key_user[1]);

	if(1 == key_user[1].short_key)
	{		
		key_user[1].key_cfg = 1;
		key_user[1].short_key = 0;
		dbg_printf("key_user[1].short_key\r\n");
		if(true == user_light_switch_get())
		{
			static uint8_t key_cnt = 2;
			loop_reduce_u08(1, &key_cnt, 5, 3, 1);
			dbg_printf("key_cnt = %d\r\n", key_cnt);
			ty_music_mode(key_cnt);
		}
	}
	else if(1 == key_user[1].long_key)
	{
		dbg_printf("key_user[1].long_key\r\n");
		key_user[1].key_cfg = 1;
		key_user[1].long_key = 0;
	}
	else if(1 == key_user[1].double_key)
	{
		dbg_printf("key_user[1].double_key\r\n");
		key_user[1].key_cfg = 1;
		key_user[1].double_key = 0;
	}
	//dbg_printf("key_user[1].key_cfg = %02d\r\n", key_user[1].key_cfg);
}
void key_thr_cfg(gpio_pin_e pin,gpio_polarity_e type)
{
	//dbg_printf("key_one_cfg\r\n");
	key_user[2].key_cfg = 0;
}

void key_thr_handle(void)
{
	key_user[2].set_time = 100;
	key_user[2].double_time = 25;
	key_user[2].gpio_key = KEY_THR;
	key_user[2].key_handler_one = NULL;
	key_user[2].key_handler_two = NULL;
	key_check(&key_user[2]);

	if(1 == key_user[2].short_key)
	{		
		key_user[2].key_cfg = 1;
		key_user[2].short_key = 0;
		if(!hal_gpio_read(GPIO_TM))//?��??
		{
			user_dt.pdt_dt.pdt_key = 0x01;
		}
		else
		{
			dbg_printf("key_user[2].short_key\r\n");
			if(true == user_light_switch_get())
			{
				static uint8_t key_cnt = 0;
				loop_reduce_u08(1, &key_cnt, 44, 1, 1);
				dbg_printf("key_cnt = %d\r\n", key_cnt);
				ty_scene_mode(key_cnt);
			}
		}
	}
	else if(1 == key_user[2].long_key)
	{
		key_user[2].key_cfg = 1;
		key_user[2].long_key = 0;
		dbg_printf("key_user[2].long_key\r\n");
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
	}
	else if(1 == key_user[2].double_key)
	{
		dbg_printf("key_user[2].double_key\r\n");
		key_user[2].key_cfg = 1;
		key_user[2].double_key = 0;
	}
	//dbg_printf("key_user[2].key_cfg = %02d\r\n", key_user[2].key_cfg);
}

void key_do_work(key_eve_t * key_eve);

void key_handler(void)
{
	if (key_user[0].gpio_cfig == 0 ) {
		key_user[0].double_click_func = key_func_array[KEY_FUNC_DOUBLE_0];
		key_user[0].long_click_func = key_func_array[KEY_FUNC_LONG_0];
		key_user[0].single_click_func = key_func_array[KEY_FUNC_SINGLE_0];
	}
#if KEY_NUMBERS > 1
		if (key_user[1].gpio_cfig == 0) {
			key_user[1].double_click_func = key_func_array[KEY_FUNC_DOUBLE_1];
		  key_user[1].long_click_func = key_func_array[KEY_FUNC_LONG_1];
		  key_user[1].single_click_func = key_func_array[KEY_FUNC_SINGLE_1];
		}
#endif
#if KEY_NUMBERS > 2
	if (key_user[2].gpio_cfig == 0) {
		key_user[2].single_click_func = key_func_array[KEY_FUNC_SINGLE_2];
		key_user[2].double_click_func = key_func_array[KEY_FUNC_DOUBLE_2];
		key_user[2].long_click_func = key_func_array[KEY_FUNC_LONG_2];
	}
#endif
	for (int i = 0; i < KEY_NUMBERS; i++){
		key_check_2(&key_user[i]);
		key_do_work(&key_user[i]);
	}
}

void key_do_work(key_eve_t * key_eve)
{
	if(1 == key_eve->short_key)
	{
		key_eve->key_cfg = 1;
		key_eve->short_key = 0;
		//TODO ...
		if (key_eve->single_click_func)
			key_eve->single_click_func(NULL);
		dbg_printf("key_eve->short_key\r\n");
		void set_rgb_speed_cycle();
		set_rgb_speed_cycle();
	}
	else if(1 == key_eve->long_key)
	{
		if ((key_eve->cnt_key >= key_eve->set_time) && ((key_eve->cnt_key - key_eve->set_time) % 30 == 0)) {
			dbg_printf("key_eve->long_key %d\r\n", key_eve->cnt_key);
			if (key_eve->long_click_func)
				key_eve->long_click_func(NULL);
		} else if (key_eve->cnt_key == 0) {
			key_eve->key_cfg = 1;
			key_eve->long_key = 0;
		}
	}
	else if(1 == key_eve->double_key)
	{
		dbg_printf("key_eve->double_key\r\n");
		key_eve->key_cfg = 1;
		key_eve->double_key = 0;
		//TODO ...
		if (key_eve->double_click_func)
			key_eve->double_click_func(NULL);
	}
}


void set_seven_color_cycle()
{
	//u8 data[] = {0x3d, 0x00, 0x00, 0x0b, 0x00, 0x01, 0x00, 0x14, 0x00, 0x00, 0x00, 0x03, 0xe8, 0x01, 0xf4};//BLUE
	//u8 data[] = {0x3d, 0x00, 0x00, 0x0b, 0x00, 0x01, 0x00, 0x14, 0x00, 0x00, 0xff, 0x03, 0xe8, 0x01, 0xf4};//green
	//u8 data[] = {0x3d, 0x00, 0x00, 0x0b, 0x00, 0x01, 0x00, 0x14, 0x00, 0x00, 0x78, 0x03, 0xe8, 0x01, 0xf4};//red
	static u8 index = 0;
	u8 data_color[] = {0x00, 0x00, 0x00, 0x14, 0x00, 0x3c, 0x00, 0x78, 0x00, 0xb4, 0x00, 0xf0, 0x01, 0x2c};
	u8 data[] = {0x3d, 0x00, 0x00, 0x0b, 0x00, 0x01, 0x00, 0x14, 0x00, 0x00, 0x00, 0x03, 0xe8, 0x01, 0xf4};
	data[10] = data_color[index * 2 + 1];
	data[9] = data_color[index * 2];
	index ++;
	if (index >= sizeof(data_color) / 2)
		index = 0;
	
	OPERATE_LIGHT user_light_smear_proc(IN u8 *p_data, IN u16 us_len);
	user_light_smear_proc(data + 4, data[3]);
}

void set_rgb_bgtness_cycle()
{
	//BGTNESS_MAX亮度最大值
	#define BGTNESS_MAX	100
	//BGTNESS_MIN亮度最小值
	#define BGTNESS_MIN	10
	//BGTNESS_STEP 亮度分级步长
	#define BGTNESS_STEP 5

	u8 bgtness = ty_light_cfg_init_get_rgb_bgtness();
	dbg_printf("light1:%d\r\n", bgtness);
	bgtness += BGTNESS_STEP;
	if (bgtness > BGTNESS_MAX)
		bgtness = BGTNESS_MIN;

	ty_light_cfg_init_set_rgb_bgtness(bgtness);
	user_light_auto_save(DATA_TYPE_USER);

	user_light_switch_on_proc();
	dbg_printf("light2:%d\r\n", bgtness);
	
	#undef BGTNESS_STEP
	#undef BGTNESS_MAX
	#undef BGTNESS_MIN
}

void set_rgb_speed_cycle()
{
	//SPEED_MAX亮度最大值
	#define SPEED_MAX	100
	//SPEED_MIN亮度最小值
	#define SPEED_MIN	10
	//SPEED_STEP 亮度分级步长
	#define SPEED_STEP 5

	u8 speed = ty_light_cfg_init_get_rgb_spd();
	speed += SPEED_STEP;
	if (speed > SPEED_MAX)
		speed = SPEED_MIN;

	ty_light_cfg_init_set_rgb_spd(speed);
	user_light_auto_save(DATA_TYPE_USER);

	user_light_switch_on_proc();
	dbg_printf("speed:%d\r\n", speed);

	#undef SPEED_STEP
	#undef SPEED_MAX
	#undef SPEED_MIN
}
