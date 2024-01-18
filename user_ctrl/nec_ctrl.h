#ifndef _NEC_CTRL_H_
#define _NEC_CTRL_H_

typedef struct
{
	uint8_t nec_io;//��ʾIO�жϴ���״̬
	uint8_t nec_fs;//���������ɷ���
	uint8_t nec_rt;//���������ɷ���
	uint8_t nec_dt[4];
	uint16_t end_code;
}nec_st;

typedef struct
{
	uint8_t timer_srt;//��ʱ��������־
	uint32_t nec_time;
}nec_flash_dt;


uint8_t run_nec_rec(uint8_t *nec_rec, uint32_t time, uint16_t* end_code);
#endif //_NEC_CTRL_H_


