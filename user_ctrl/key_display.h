#ifndef _KEY_DISPLAY_H_
#define _KEY_DISPLAY_H_

#include <stdbool.h>          // standard boolean definitions
#include <stdint.h>           // standard integer functions

#define KEY_NUMBERS 3

#define KEY_ONE GPIO_P20
#define KEY_TWO GPIO_P18
//#define KEY_THR GPIO_P14
#define KEY_THR GPIO_P15

#define KEY0_EFFECT_LEVEL 0
#define KEY1_EFFECT_LEVEL 0
#define KEY2_EFFECT_LEVEL 0

typedef struct {
		gpio_pin_e 	gpio_pin;
		int 				effect_level;
		
}pin_config_t;

void key_handler(void);

#endif //_KEY_DISPLAY_H_

