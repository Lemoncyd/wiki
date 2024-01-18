#ifndef _NEC_CTRL_H_
#define _NEC_CTRL_H_

typedef struct
{
	uint8_t nec_io;//表示IO中断触发状态
	uint8_t nec_fs;//红外接收完成返回
	uint8_t nec_rt;//红外接收完成返回
	uint8_t nec_dt[4];
	uint16_t end_code;
}nec_st;

typedef struct
{
	uint8_t timer_srt;//定时器开启标志
	uint32_t nec_time;
}nec_flash_dt;


uint8_t run_nec_rec(uint8_t *nec_rec, uint32_t time, uint16_t* end_code);
#endif //_NEC_CTRL_H_


