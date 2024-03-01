/****************************************************************************
**
** Copyright (C) 2011 Beken Corporation, All rights reserved.
**
** Contact: Beken Corporation (www.beken.com)
**
** Author:  river
**
** History: 2012/03/07
**
** Version: 1.0
**
****************************************************************************/
/*! \file driver_rf.c
    \brief The driver interface of rf module.
*/

#include "..\headfile\includes.h"
#include "bk24xx.h"
#define BIT(n)		(1<<(n))
#define _BIT(n)		(BIT(n)^0xffffffff)
typedef unsigned char uint8;
typedef unsigned long uint32;

#define _adj_tx_freq_offset(cf_delta)		\
	{\
		TX_FREQ_OFFSET_3=0xff&((0x960000-(cf_delta)*4)>>16);\
		TX_FREQ_OFFSET_2=0xff&((0x960000-(cf_delta)*4)>>8);\
		TX_FREQ_OFFSET_1=0xff&((0x960000-(cf_delta)*4));\
	}

#define _adj_rx_freq_offset(cf_delta)		\
	{\
		RX_FREQ_OFFSET_3=0xff&((0x780000-(cf_delta)*4)>>16);\
		RX_FREQ_OFFSET_2=0xff&((0x780000-(cf_delta)*4)>>8);\
		RX_FREQ_OFFSET_1=0xff&((0x780000-(cf_delta)*4));\
	}

#define _DR_1Mbps	1
#define _DR_2Mbps	2
#define _DR_		_DR_1Mbps

#define _IF_MOD_INV_	0

#define GET_ELEMENT_CNT(tbl)		(sizeof(tbl)/sizeof(tbl[0]))
code uint8 c_ana_init_val[][4]= {
#if _DR_==_DR_2Mbps
	{0xC4,0xB0,0x32,0x10},
	{0x82,0x95,0xC4,0x00},
	{0x2F,0x62,0xA0,0x00},
	{0x00,0x00,0x04,0x62},

	{0x5F,0x93,0xAE,0xCB},
	{0x46,0x00,0x90,0x3F},
	{0xE0,0xCF,0xC6,0x20},
	{0x0F,0xC1,0x80,0x24},

	{0x00,0x80,0x0D,0x10},
	{0x80,0x00,0xD0,0x08},
	{0x00,0x00,0x00,0x00},
	{0x00,0x01,0x50,0x88},

	{0x75,0x00,0x00,0xFF},
	{0x70,0x93,0x22,0x0C},
	{0x80,0x01,0x01,0x80},
#endif
#if _DR_==_DR_1Mbps
	{0xC4,0xB0,0x32,0x10},
	{0x82,0x95,0xC4,0x00},
	{0x2F,0x62,0xA0,0x00},
	{0x00,0x00,0x04,0x62},

	{0x5F,0x93,0xAE,0xCB},
	{0x4D,0x00,0x90,0x3F},
	{0xE0,0xCF,0xC6,0x20},
	{0x0F,0xC0,0x80,0x24},

	{0x00,0x80,0x0D,0x10},
	{0x80,0x00,0xD0,0x08},
//	{0x00,0x00,0x00,0x00},
	{0x00,0x40,0x00,0x00},
	{0x00,0x01,0x50,0x88},

	{0x75,0x00,0x00,0xFF},
	{0x70,0x93,0x22,0x0C},
	{0x80,0x01,0x01,0x80},
#endif
};
xdata uint8 Ana_Init_Val[GET_ELEMENT_CNT(c_ana_init_val)][4] ;
#if 0
#if _DR_==_DR_1Mbps
0x07,
#elif _DR_==_DR_2Mbps
0x0f,
#else
#error _DR must be 1M or 2M
#endif
#endif

code uint8 Dig_Init_Val[0x60] = {
	#if _DR_==_DR_2Mbps
	0x0E,0x3F,0x03,0x03,0x03,0x4E,0x0F,0x25,
    0x59,0x18,0xC6,0x29,0xC2,0xC2,0xC2,0xC2,

	0xC2,0xC3,0xC4,0xC5,0xC6,0x25,0x59,0x18,
	0xc6,0x29,0x00,0x00,0x00,0x00,0x00,0x00,

	0x01,0x04,0x00,0x1A,0x73,0x05,0x34,0xB4,
	0x80,0x00,0x41,0x20,0x08,0x04,0x81,0x20,

	0xCF,0xF7,0xFE,0xFF,0xFF,0x01,0x00,0x00,
	0x06,0x00,0x00,0x11,0x00,0x00,0x00,0x00,

	0x0e,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,

	0x00,0x00,0x00,0x96,0x00,0x00,0x00,0x78,
	0x18,0x4a,0x02,0xe2,0x01,0x00,0x13,0xf4
	#endif
	#if _DR_==_DR_1Mbps
	#define _BLE_ADV_
	#ifndef _BLE_ADV_
	0x0E,0x3F,0x03,0x03,0x03,0x4E,0x07,0x25,
    0x59,0x18,0xC6,0x29,0xC2,0xC2,0xC2,0xC2,
	#else
	0x0e,0x00,0x03,0x02,0x03,0x4e,0x07,0x71,
    0x91,0x7d,0x6b,0x00,0xC2,0xC2,0xC2,0xC2,
	#endif

	#ifndef _BLE_ADV_
	0xC2,0xC3,0xC4,0xC5,0xC6,0x25,0x59,0x18,
	0xc6,0x29,0x00,0x00,0x00,0x00,0x00,0x00,
	#else
	0xC2,0xC3,0xC4,0xC5,0xC6,0x71,0x91,0x7d,
	0x6b,0x00,0x18,0x00,0x00,0x00,0x00,0x00,
	#endif
	
	#ifndef _BLE_ADV_
	0x01,0x04,0x00,0x1A,0x73,0x05,0x34,0xB4,
	0x80,0x00,0x41,0x20,0x08,0x04,0x81,0x20,
	#else
	0x00,0x00,0x00,0x1A,0x73,0x05,0x34,0xB4,
	0x80,0x00,0x41,0x20,0x08,0x04,0x81,0x20,
	#endif

	0xCF,0xF7,0xFE,0xFF,0xFF,0x01,0x00,0x00,
	0x06,0x00,0x00,0x11,0x00,0x00,0x00,0x00,

	0x0e,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,

//	0x00,0x00,0x00,0x96,0x00,0x00,0x00,0x78,
//	0x00,0x00,0xfb,0x95,0x00,0x00,0xfd,0x77,
	0x00,0x00,0x00,0x96,0x00,0x00,0x00,0x78,
	0x18,0x4a,0x02,0xf0,0x01,0x00,0x09,0x00
	#endif

};
static uint8 s_fm_gain_h=0x01;
static uint8 s_fm_gain_l=0x02;

void driver_rf_spi_trig(){
	Ana_Init_Val[2][0]&=_BIT(7);
	Write_Reg_Ana(2, Ana_Init_Val[2]);
	Ana_Init_Val[2][0]|=BIT(7);
	Write_Reg_Ana(2, Ana_Init_Val[2]);
}
#if 0
void driver_rf_set_tx_addr(UINT8*addr,UINT8 len){
	memcpy(BK2401_TX_ADDR,addr,len);
}

void driver_rf_set_rx_addr_pip0(UINT8*addr,UINT8 len){
	memcpy(BK2401_R0_ADDR,addr,len);
}

void driver_rf_set_rx_addr_pip1(UINT8*addr,UINT8 len){
	memcpy(BK2401_R1_ADDR,addr,len);
}
#endif

/*! \fn void driver_rf_spi_read_buffer(UINT8 *pBuf,  UINT8 length)
    \brief Write a \length data to \pBuf from the start register \reg.

    \param pBuf - the pointer address
    \param length - data length
    \return void
*/
void driver_rf_spi_read_buffer(UINT8 *pBuf,  UINT8 length)
{
    UINT8 i;
    BK2401_CMD = 0x40;		// Write TX payload.
    //pBuf[0]=BK2401_FIFO;
    for (i=0; i<length; i++)
        pBuf[i]=BK2401_FIFO;
    BK2401_CMD = 0x00;

}

/*! \fn void driver_rf_spi_write_buffer(UINT8 *pBuf,  UINT8 length)
    \brief Write a \length data stored in \pBuf to the start register \reg.

    \param pBuf - the pointer address
    \param length - data length
    \return void
*/
void driver_rf_spi_write_buffer(UINT8 *pBuf,  UINT8 length)
{
    UINT8 i;
    BK2401_CMD = 0x60;		// Write TX payload.
    for (i=0; i<length; i++)
        BK2401_FIFO = pBuf[i];
    BK2401_CMD = 0x00;

}


/*! \fn void driver_rf_spi_set_mode_tx(void)
    \brief Set rf module to tx mode

    \param void
    \return void
*/
void driver_rf_spi_set_mode_tx(void)
{
	FLUSH_TX;
    RF_CHIP_DISABLE;
	BK2401_CONFIG&=0xfe;
    RF_CHIP_ENABLE;
//	driver_rf_spi_trig();
}

/*! \fn void driver_rf_spi_set_mode_rx(void)
    \brief Set rf module to rx mode

    \param void
    \return void
*/
void driver_rf_spi_set_mode_rx(void)
{
    FLUSH_RX;
    RF_CHIP_DISABLE;
	BK2401_CONFIG|=0x01;
//	BK2401_CONFIG=0x73;
    RF_CHIP_ENABLE;
//	driver_rf_spi_trig();
}

/*! \fn void void driver_rf_ouput_power_value_set(UINT8 power)
    \brief Set rf out power through writing \a power*2+1 into BK2401_SETUP.

    \param power - 0-3
    \return void
*/
void driver_rf_kmod_Calibration(){
	uint32 b;
	UINT16 a;
	/*
	a)		 进入发射模式（cfg_dig_fsk.reg0x0=0x0E）
	*/
	BK2401_CONFIG=0x0e;
	/*
	b)		 CE拉高（cfg_dig_fsk.reg_0x35=0x01）
	*/
	BK2401_CE=0x01;
	/*
	c)		 Bypass gated clock & PN9 mode
			 cfg_dig_fsk.reg_0x22<7:0>=0x90
	*/
	BK2401_CFG_0C_0=0x90;
	/*
	d)		 设channel为0（cfg_dig_fsk.reg_0x5<6:0>=0）
	*/
	BK2401_RFCH=0x00;
	/*
	e)			设data rate  （分为不同速率模式,不同的data rate需要分开校）
				  1M cfg_dig_fsk.reg_0x6=0x07
				  2M cfg_dig_fsk.reg_0x6=0x0F
	*/
	#if _DR_==_DR_1Mbps
	BK2401_SETUP=0x07;//1M
	#endif
	#if _DR_==_DR_2Mbps
	BK2401_SETUP=0x0f;//2M
	#endif

	/*
	f)		  设fm_gain
			  cfg_dig_fsk.reg_0x5a<0>=1
			  cfg_dig_fsk.reg_0x5b<7:0>=0x0

			 设 kmod_coef
			 cfg_dig_fsk.reg_0x5c<0>=0x1
			 cfg_dig_fsk.reg_0x5d<7:0>=0x0

			设mod_coef
			cfg_dig_fsk.reg_0x5e=0x0
			cfg_dig_fsk.reg_0x5f=0x0
	*/
	FM_GAIN_H=0x03;
	FM_GAIN_L=0x00;
	FM_KMOD_SET_H=0x01;
	FM_KMOD_SET_L=0x00;
	MOD_COEFFICIENT_H=0x00;
	MOD_COEFFICIENT_L=0x00;

	/*
	g)			cfg_ana.reg_0x5<30>=0   //mod inv
	*/
	Ana_Init_Val[5][0]&=_BIT(6);
	Write_Reg_Ana(5, Ana_Init_Val[5]);
	/*
	h)		 VCO trigger: (spi_trigger=0->1)
			   cfg_ana.reg_0x2=2f42a000;
			   cfg_ana.reg_0x2=af42a000;
	*/
	driver_rf_spi_trig();
//	Ana_Init_Val[2][0]&=_BIT(7);
//	Write_Reg_Ana(2, Ana_Init_Val[2]);
//	Ana_Init_Val[2][0]|=BIT(7);
//	Write_Reg_Ana(2, Ana_Init_Val[2]);

//	Write_Reg_Ana(2, c_kmod_ana_reg2_reset);
//	Write_Reg_Ana(2, c_kmod_ana_reg2_trig);


	/*
	i)		 开始校准

		 cfg_dig_fsk.reg_0x59<0>=0x0
		  Wait for 10us
	   cfg_dig_fsk.reg_0x59<0>=0x1
		 Wait for 20ms
	*/
	PLL_SDM&=0xfe;
	//delay(10us)//建议值10us，不要随便改
	driver_delay_us(10);
	PLL_SDM|=0x01;
	//delay(20ms)
	driver_delay_us(20000);

	/*
	j)		  读出frequency deviation

	A1=cfg_dig_fsk.reg_0x3e<1:0>  //高2位 kcal_out
	A2=cfg_dig_fsk.reg_0x3f<7:0>  //低8位

	Fdev_dec=hex2dec(A1,A2) (10bit)
	*/
	uart_data_send[0] = 0xaa;
	uart_data_send[1] = 0x55;
	uart_data_send[2] = BK2401_KCALOUT_H;
	uart_data_send[3] = BK2401_KCALOUT_L;
	driver_uart_send_start(4);
	a=BK2401_KCALOUT_H;
	a<<=8;
	a+=BK2401_KCALOUT_L;
//	a>>=2;
	driver_delay_us(10000);
	/*
	k)		计算应该设置的fm_gain

	1M 模式fm_gain_dec=300*256/Fdev_dec
	2M 模式fm_gain_dec=600*256/Fdev_dec

	设fm_gain_hex=dec2hex(fm_gain_dec)
		cfg_dig_fsk.reg_0x5a<0>=fm_gain_hex<2>
		cfg_dig_fsk.reg_0x5b<7:0>=fm_gain_hex<1:0>
	*/
	#if _DR_==_DR_1Mbps
	b=0x012c00;//300*256;//1Mbps
	#endif
	#if _DR_==_DR_2Mbps
	b=0x025800;//600*256;//2Mbps
	#endif
	uart_data_send[0] = 0xaa;
	uart_data_send[1] = 0x58;
	uart_data_send[2] = sizeof(b);
	uart_data_send[3] = (b>>24)&0xff;
	uart_data_send[4] = (b>>16)&0xff;
	uart_data_send[5] = (b>>8)&0xff;
	uart_data_send[6] = (b&0xff);
	driver_uart_send_start(7);
	driver_delay_us(10000);

	b/=a;
	if(b>=512)b=511;
//	s_fm_gain_h=(0xfe&Dig_Init_Val[0x5a]);
	s_fm_gain_h|=((b>>8)&1);
	s_fm_gain_l=(b&0xff);
	FM_GAIN_H=s_fm_gain_h;
	FM_GAIN_L=s_fm_gain_l;
	uart_data_send[0] = 0xaa;
	uart_data_send[1] = 0x56;
	uart_data_send[2] = FM_GAIN_H;
	uart_data_send[3] = FM_GAIN_L;
	driver_uart_send_start(4);
	driver_delay_us(1000);
//	driver_rf_spi_trig();


	/*
	l)			关闭kcal,cfg_ana.reg2/reg5还原到正常模式
	*/
	PLL_SDM&=0xfe;
//	driver_buffer_copy(Ana_Init_Val[2], c_ana_init_val[2], 4);
	driver_buffer_copy(Ana_Init_Val[5], c_ana_init_val[5], 4);
	Write_Reg_Ana(5, Ana_Init_Val[5]);
//	Write_Reg_Ana(2, Ana_Init_Val[2]);
	BK2401_CFG_0C_0=Dig_Init_Val[0x22];
//
//	FM_GAIN_H=Dig_Init_Val[0x5a];
//	FM_GAIN_L=Dig_Init_Val[0x5b];
	FM_KMOD_SET_H=Dig_Init_Val[0x5c];
	FM_KMOD_SET_L=Dig_Init_Val[0x5d];
	MOD_COEFFICIENT_H=Dig_Init_Val[0x5e];
	MOD_COEFFICIENT_L=Dig_Init_Val[0x5f];
//	PLL_SDM=Dig_Init_Val[0x59];
//	driver_rf_spi_trig();
//	driver_delay_us(10000);
	RF_POWER_DOWN;
	driver_delay_us(1000);
	RF_POWER_UP;
	driver_delay_us(1000);

}

void Write_Reg_Ana(UINT8 u8_addr, UINT8*pu8_val)
{
    while (!(BK2401_SCTRL & 0x80));
    BK2401_SDATA_0 = pu8_val[3];
    BK2401_SDATA_1 = pu8_val[2];
    BK2401_SDATA_2 = pu8_val[1];
    BK2401_SDATA_3 = pu8_val[0];
    BK2401_SCTRL = u8_addr;              // address
}


/*! \fn void driver_rf_initial(void)
    \brief Initialize rf module before first rf sending.

    \param void
    \return void
*/
void driver_rf_initial(void)
{
	uint8 i;
	driver_buffer_copy(Ana_Init_Val, c_ana_init_val, sizeof(c_ana_init_val));
	#if _IF_MOD_INV_==1
	Ana_Init_Val[5][0]|=BIT(6);
	#else
	Ana_Init_Val[5][0]&=_BIT(6);
	#endif

	for (i=0; i<GET_ELEMENT_CNT(Ana_Init_Val); i++)
	{
        Write_Reg_Ana(i, Ana_Init_Val[i]);
	}

	for (i = 0; i < 0x2a; ++i)
    {
        *((uint8 volatile xdata *)(ADDR_BASE_TRX + i)) = Dig_Init_Val[i];
    }

	for (i = 0x50; i < 0x60; ++i)
	{
		*((uint8 volatile xdata *)(ADDR_BASE_TRX + i)) = Dig_Init_Val[i];
	}
//	driver_buffer_copy(BK2401_R0_ADDR, "\x25\x59\x18\xC6\x29", 5);
//	driver_buffer_copy(BK2401_R1_ADDR, "\x25\x59\x18\xC6\x29", 5);
//	driver_buffer_copy(BK2401_TX_ADDR, "\x25\x59\x18\xC6\x29", 5);

	#if _IF_MOD_INV_==1
	s_fm_gain_h=Dig_Init_Val[0x5a]|BIT(1);
	DEM_CONTROL&=(0x40^0xff);
	#else
	s_fm_gain_h=Dig_Init_Val[0x5a]&_BIT(1);
	DEM_CONTROL|=(0x40);
	#endif
	FM_GAIN_H=s_fm_gain_h;

	//kmod需要比较准确的2400Mhz基准信号,此处209是指单载波的频偏为+209KHz,以实际板子的偏差为准
//	_adj_tx_freq_offset(209);
//	_adj_rx_freq_offset(209);
	//经过上述频偏调整，kmod校准出来的devitaion在5%(@2Mbps-600KHz,@1Mbps-300KHz)以内
//	driver_rf_kmod_Calibration();

}

/*! \fn BOOL driver_rf_data_send(UINT8 len)
    \brief Send \a len bytes rf data to the other part, and the data is stored in rf_fifo_data array.

    Step1: send data through writing rf_fifo_data to BK2401_FIFO register.\n
    Step2: wait for the sending state through checking the BK2401_STATUS register.
    \param len - the length of data
    \return TRUE - send successfully, FALSE - otherwise
*/
BOOL driver_rf_data_send(UINT8 len)
{
    UINT8 status;
    BOOL result = FALSE;


    RF_CMD_FLUSH_TX;
	RF_CMD_FLUSH_RX;
	RF_CMD_CLEAR_STATUS_ALL;
    driver_rf_spi_write_buffer(rf_fifo_data,  len);
    do{
        status = BK2401_STATUS;//driver_rf_spi_read_register(STATUS);
    }while((status & STATUS_RX_TX_MAX) == 0x00);

    if(status & STATUS_TX_DS)
    {
        result = TRUE;
        //RF_CMD_FLUSH_TX;
        RF_CMD_CLEAR_STATUS_TX;
    }
    else if(status & STATUS_MAX_RT)
    {
		//test_pin7 = ~test_pin7;
		RF_CMD_FLUSH_TX;
        RF_CMD_FLUSH_RX;
        RF_CMD_CLEAR_STATUS_ALL;

    }

    return result;
}

/*! \fn void driver_rf_receive_packet(void)
    \brief Receive the packet to rf_fifo_data, whose length is rf_data_len_received. If received a valid flag, the flag flag_rf_driver_received is true.

    \param void
    \return void
*/
void driver_rf_receive_packet(void)
{
    UINT8 status;
    UINT8 fifo_status;

    status = BK2401_STATUS;//driver_rf_spi_read_register(STATUS);    	     // read register STATUS's value
    if(status & STATUS_RX_DR)			                     // if receive data ready (RX_DR) interrupt
    {
    	system_data.rf_page_fail_wait=BK2401_CDSTATUS;
		 //test_pin0 = ~test_pin0;
		 //driver_rf_spi_write_register(WRITE_REG|STATUS, status);
		 BK2401_STATUS=status;

//       do {
            system_data.rf_received_len = BK2401_RPL_WIDTH;//driver_rf_spi_read_register(R_RX_PL_WID_CMD);
            if((system_data.rf_received_len <= MAX_PACKET_LEN)&&(system_data.rf_received_len>0))
            {
                //driver_buffer_set(rf_fifo_data, 0, 32);
                driver_rf_spi_read_buffer(rf_fifo_data, system_data.rf_received_len);// read receive payload from RX_FIFO buffer
                flag_rf_driver_received = 1;
                system_data.rf_pipe_num = (status >> 1) & 0x07;
            }
            else
            {
                //driver_rf_spi_write_register(FLUSH_RX, 0);                     // flush Rx
                FLUSH_RX;
                //driver_rf_spi_write_register(FLUSH_TX, 0);                     // flush Tx
            }
			//fifo_status = BK2401_STATUS;//driver_rf_spi_read_register(FIFO_STATUS);	           // read register FIFO_STATUS's value

//		}while((fifo_status & FIFO_STATUS_RX_EMPTY) == 0);                     // while not empty
		 //driver_rf_spi_write_register(WRITE_REG|STATUS, status);
	}
	// clear RX_DR or TX_DS or MAX_RT interrupt flag
}

/*! \fn void driver_rf_channel_switch(void)
    \brief set rf channel

    \param void
    \return void
*/
void driver_rf_set_channel(UINT8 chn)
{
	BK2401_RFCH=chn;
	driver_rf_spi_trig();
}

/*! \fn void driver_rf_channel_switch(void)
    \brief Switch rf channel to the next value in RF_CHANNEL_TABLE array.

    \param void
    \return void
*/
void driver_rf_channel_switch(void)
{
    system_data.rf_channel++;
    system_data.rf_channel &= 0x0F; //<=15
//    driver_rf_spi_write_register(WRITE_REG|RF_CH, RF_CHANNEL_TABLE[system_data.rf_channel]);
//	BK2401_RFCH=system_data.rf_channel;
//	driver_rf_spi_trig();
	driver_rf_set_channel(RF_CHANNEL_TABLE[system_data.rf_channel]);
}

/*! \fn void driver_rf_page_write_address(void)
    \brief

    \param void
    \return void
*/
/*
void driver_rf_page_write_address(void)
{
    if(flag_rf_paged_mouse)
    {
        rf_address_rx0[0] = system_data.rf_address_paged_mouse1;
        rf_address_rx0[1] = system_data.rf_address_paged_mouse2;
    }
    else if(flag_rf_paged_keyboard)
    {
        rf_address_rx0[0] = system_data.rf_address_paged_keyboard1;
        rf_address_rx0[1] = system_data.rf_address_paged_keyboard2;
    }
    rf_address_rx0[2] = RF_ADDRESS_FIRST_BYTE;
    rf_address_rx0[3] = RF_ADDRESS_FIRST_BYTE;
    rf_address_rx0[4] = RF_ADDRESS_FIRST_BYTE;
    */
    /*
    rf_address_rx2[0] = system_data.rf_address_paged_keyboard1;
    rf_address_rx2[1] = system_data.rf_address_paged_keyboard2;
    rf_address_rx2[2] = RF_ADDRESS_FIRST_BYTE;
    rf_address_rx2[3] = RF_ADDRESS_FIRST_BYTE;
    rf_address_rx2[4] = RF_ADDRESS_FIRST_BYTE;
    driver_rf_spi_write_buffer((WRITE_REG|RX_ADDR_P2), rf_address_rx2, RF_ADDRESS_LEN);
    //driver_rf_spi_write_buffer((WRITE_REG|TX_ADDR), rf_address_rx0, RF_ADDRESS_LEN);
}
*/
#ifdef MODE_TEST
/*! \fn void driver_rf_mode_set_single_wave(UINT8 mode)
    \brief Set rf module to single wave mode.

    \param mode - 0/single wave, 1/normal mode
    \return void
*/
void driver_rf_mode_set_single_wave(UINT8 mode)
{
    if(mode){
		FM_GAIN_H=0;
		FM_GAIN_L=0;
		MOD_COEFFICIENT_H=0;
		MOD_COEFFICIENT_L=0;
	}else{
		FM_GAIN_H=Dig_Init_Val[0x5a];
		FM_GAIN_L=Dig_Init_Val[0x5b];
		MOD_COEFFICIENT_H=Dig_Init_Val[0x5e];
		MOD_COEFFICIENT_L=Dig_Init_Val[0x5f];
	}
}
UINT8 driver_get_rssi(){
	if(BK2401_CDSTATUS&1){
		return((BK2401_CDSTATUS>>1)&0x1f);
	}
	return 0xff;
}

void driver_rf_test_pn9_ber(UINT8 chn)
{
	//单载波
	BK2401_RFCH= chn;
	driver_rf_spi_trig();
	BK2401_CFG_0C_0=0x80;
	BK2401_CONFIG=0x0f;
	driver_delay_us(1000);
	BK2401_CE=0x00;
	BK2401_CE=0x01;
	BK2401_CFG_0C_0|=0x20;
}

void driver_rf_read_pn9_ber()
{
	//pn9 RX
	BK2401_CFG_0C_0|=BIT(6);

	uart_data_send[0] = 0xaa;
	uart_data_send[1] = 0x7d;
	uart_data_send[2] = BK2401_bit_cnt_3;
	uart_data_send[3] = BK2401_bit_cnt_2;
	uart_data_send[4] = BK2401_bit_cnt_1;
	uart_data_send[5] = BK2401_bit_cnt_0;
	driver_uart_send_start(6);
	driver_delay_us(300*6);
	uart_data_send[0] = 0xaa;
	uart_data_send[1] = 0x7e;
	uart_data_send[2] = BK2401_err_cnt_3;
	uart_data_send[3] = BK2401_err_cnt_2;
	uart_data_send[4] = BK2401_err_cnt_1;
	uart_data_send[5] = BK2401_err_cnt_0;
	driver_uart_send_start(6);
	driver_delay_us(300*6);
	uart_data_send[0] = 0xaa;
	uart_data_send[1] = 0x7c;
	uart_data_send[2] = BK2401_CDSTATUS;
	driver_uart_send_start(3);
	driver_delay_us(300*2);

	BK2401_CFG_0C_0&=_BIT(6);
}

void driver_rf_test_pn9(UINT8 chn)
{
	//单载波
	BK2401_RFCH= chn;
	//pn9 TX
	BK2401_CFG_0C_0=0x90;
	driver_rf_spi_set_mode_tx();
}

void driver_rf_test_single_wave(UINT8 chn)
{
	//单载波
	BK2401_RFCH= chn;
	//pn9 TX
	BK2401_CFG_0C_0=0x90;
	driver_rf_spi_trig();
	driver_delay_us(1000);
//	BK2401_CFG_0C_0=0x90;
	//高24bit:0x960000-(cf_delta)*4
//	driver_rf_adj_freq_offset(152);
//	_adj_tx_freq_offset(209);
//	TX_FREQ_OFFSET_1=0;
	uart_data_send[0] = 0xaa;
	uart_data_send[1] = 0x57;
	uart_data_send[2] = TX_FREQ_OFFSET_3;
	uart_data_send[3] = TX_FREQ_OFFSET_2;
	uart_data_send[4] = TX_FREQ_OFFSET_1;
	driver_uart_send_start(5);
	driver_rf_mode_set_single_wave(1);
	driver_rf_spi_set_mode_tx();

}
void driver_rf_test_close(){
	BK2401_CFG_0C_0=Dig_Init_Val[0x22];
	driver_rf_spi_trig();
}
#endif


/***********************************************************
						end file
***********************************************************/

