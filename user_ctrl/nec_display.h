#ifndef _NEC_DISPLAY_H_
#define _NEC_DISPLAY_H_

void nec_init(void);
void nec_display(void);
void nec_int_display(void);
//void nec_pin_handler(gpio_pin_e pin,gpio_polarity_e type);
typedef enum
{
	BGTNESS = 0x00,
	BGTNESS_ADD,
	BGTNESS_RED,
	SPD,
	SPD_ADD,
	SPD_RED,
}nec_type;

#endif //_NEC_DISPLAY_H_


