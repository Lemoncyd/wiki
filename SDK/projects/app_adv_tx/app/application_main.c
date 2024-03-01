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
/*! \file application_main.c
    \brief The exclusive entry of system, which has main and application initialization.
*/

#include "..\..\..\headfile\includes.h"
#include "simulate_ble_adv.h"
#include "BLE_boardcast.h"
/*! \fn void application_initial(void)
    \brief Initialize the clock, timer, gpio, rf, usb, uart and memory module.

    Dongle:     clock-16mhz, timer-T0+2ms tick, usb-usb2.0 full speed
    \param void
    \return void
*/
void application_initial(void)
{
#if 0//def BK5100_FEATURE
    WDCTL = 0xde;
    WDCTL = 0xad;
#endif

    driver_delay_us(10);

    application_test_check_power_up();

    DISABLE_INTERRUPT;
//	RF_CHIP_DISABLE;

    driver_clock_initial();
    driver_timer0_initial();
    driver_buffer_set((UINT8 *)&system_data, 0, sizeof(SYSTEM_STRUCT_DATA));
    //driver_buffer_set((UINT8 *)&system_idata, 0, sizeof(SYSTEM_STRUCT_IDATA));
    driver_buffer_set((UINT8 *)&system_xdata, 0, sizeof(SYSTEM_STRUCT_XDATA));

	ENABLE_INTERRUPT;											  //rf need 2ms timer to delay
#if defined(UART_LOOP) || defined(UART_INTERRUPT)
	driver_uart_initial();
#endif

	driver_rf_initial();                                           //rf initial with rf address

//    driver_usb_initial();


}

/*! \fn int main(void)
    \brief  The exclusive entry of system.

    System starts with application initialization, and then enter into the pairing process with mouse. If mouse is also in pairing step, it will receive its rf adress and use it in future.\n
    There are 2 or more running mode in each product system, such as Page mode, Normal mode, and Test mode.\n
    The Page mode will register the mouse to dongle with its rf address.\n
    The Normal mode is the work mode that implements the product's funtion.\n
    The Test mode is used to test the chip function before factory production.

    \param void
    \return void
*/
#define TEST_RF_MODE_TX		1//RF 发送数据测试(在driver_rf.c中打开_BLE_ADV_，则为模拟ble广播包发射、接收)
#define TEST_RF_MODE_RX		2//RF 接收数据测试
#define TEST_RF_MODE_TRX	3//RF 先发送后接收测试
#define TEST_RF_MODE_RTX	4//RF先接收后发送测试
#define TEST_BLEADV_TX		TEST_RF_MODE_TX
#define TEST_BLEADV_RX		TEST_RF_MODE_RX
#define TEST_UART_TRX		5//UART收发测试，br=38400

#define TEST_RF_MODE		TEST_RF_MODE_RX

code UINT8 c_rf_txPkt[]={0x09,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08};
extern UINT8 driver_get_rssi();
extern void driver_rf_test_pn9_ber(UINT8 chn);
extern void driver_rf_read_pn9_ber();

code UINT8 adv_data[32]={
	0x02,   // ?????à??
    19,//=mac[6]+payload
    /* Device Address(6×???) */
    0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 

	0x02,0x01,0x05,//frame 1

	0x09,0x09,'2','4','8','0','-','a','d','v'

};

void print_hex(UINT8 dat){
	if(((dat>>4)&0xf)<10)uart_data_send[0]='0'+((dat>>4)&0xf);
	else uart_data_send[0]='A'+(((dat>>4)&0xf)-10);
	if(((dat)&0xf)<10)uart_data_send[1]='0'+((dat)&0xf);
	else uart_data_send[1]='A'+(((dat)&0xf)-10);
	uart_data_send[2]=' ';
	driver_uart_send_start(3);
	driver_delay_us(1200);
}

void print_newline(){
	uart_data_send[0]='\r';
	uart_data_send[1]='\n';
	driver_uart_send_start(2);
	driver_delay_us(600);
}
void print_str(char*s){
	char c;
	while(1){
		c=*s++;
		if(c==0)break;
		uart_data_send[0]=c;
		driver_uart_send_start(1);
		driver_delay_us(300);
	}
}

XDATA UINT8 BLE_ADV_Decode_data[39];

int main(void)
{
	UINT16 i;
	UINT8 s,s1,f;
    application_initial();

	print_str("Test TX\r\n");
	while(1){
		ble_adv_send(adv_data, adv_data[1]+2, 37);
		driver_delay_us(3000);
	}
    return 0;
}


/***********************************************************
						end file
***********************************************************/
