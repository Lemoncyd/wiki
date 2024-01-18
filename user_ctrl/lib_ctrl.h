#ifndef _LIB_CTRL_H_
#define _LIB_CTRL_H_
#include <stdint.h> 
#include "user_ctrl.h"

#define RGB_NUM 76   

extern uint32_t rgb_dt[RGB_NUM];

#define max3v(a, b, c) (a > b ? (a > c ? a : c) : (b > c ? b : c))
#define min3v(a, b, c) (a > b ? (b > c ? c : b) : (a > c ? c : a))

#define rgb_u24_dt(b) ((b[flash_dt.rgb_odr.od_one]&0xff00)<<8)|((b[flash_dt.rgb_odr.od_two]&0xff00)<<0)|((b[flash_dt.rgb_odr.od_thr]&0xff00)>>8)

void send_mg_dt(void);
void clear_mg_display(void);
void mg_to_rgb_ctrl(uint16_t *rgb_val);
//void mg_sec_ctrl(uint16_t *val, uint8_t sec);
void mg_sec_ctrl(uint16_t (*val)[3]);

void send_mg_dt_1(uint32_t* rgb_dt, uint8_t rgb_num);
void loop_reduce_u16(uint8_t type, uint16_t *data, uint16_t max, uint8_t min, uint8_t step);
void loop_reduce_u08(uint8_t type, uint8_t  *data, uint16_t max, uint8_t min, uint8_t step);

void cnt_increase_reduce(uint8_t type, uint8_t *data, uint16_t max, uint16_t min, uint8_t step);
void increase_reduce_u08(uint8_t type, uint8_t *data, uint16_t max, uint16_t min, uint8_t step);
void increase_reduce_u16(uint8_t type, uint16_t *data, uint16_t max, uint16_t min, uint8_t step);
uint8_t cmp_dt_one(uint8_t *data, uint8_t result, uint8_t num);
uint8_t cmp_dt_two(uint8_t *data, uint8_t result, uint8_t num);
uint8_t cmp_dt_thr(const uint8_t * one, const uint8_t * two, uint8_t num);
uint8_t cmp_dt_fou(uint8_t *data, uint8_t result, uint8_t num);
void copy_dt_one(uint16_t (*val)[3], uint8_t sub, uint8_t offset, uint8_t num);
void copy_dt_two(uint16_t *val_one,uint16_t *val_two, uint8_t num);

#if 1
void str_to_hex(uint8_t *str, uint8_t *out);
#else
void str_to_hex(uint8_t *str, uint8_t *out, uint8_t *outlen);
#endif
void hex_to_str(uint8_t *source, uint8_t* dest, uint8_t sourceLen);
uint8_t oxr_crc(uint8_t *buf, uint8_t lenght);
uint8_t and_crc(uint8_t *buf, uint8_t lenght);//和校验

void hsv_to_rgb(uint16_t *hsv, uint16_t *rgb_dt);
void rgb_to_hsv(uint8_t *hsv,uint8_t r,uint8_t g,uint8_t b);


void rgb_dt_to_mg_dt(uint32_t* rgb_data, uint16_t rgb_num, uint8_t* mg_data);
void rgb_check(uint8_t * flag, float *output_val, uint16_t val_one, uint16_t val_two, uint16_t cnt);
void mg_loop_move(uint32_t* val, uint16_t val_len, uint8_t move_len, uint8_t dir, uint8_t loop_cnt, uint8_t cnt_flag, uint8_t *mg_cnt);//时间最短

#endif//_LIB_CTRL_H_

