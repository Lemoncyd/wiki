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

//    application_test_check_power_up();

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
#define TEST_RF_MODE_TX		1//RF �������ݲ���(��driver_rf.c�д�_BLE_ADV_����Ϊģ��ble�㲥�����䡢����)
#define TEST_RF_MODE_RX		2//RF �������ݲ���
#define TEST_RF_MODE_TRX	3//RF �ȷ��ͺ���ղ���
#define TEST_RF_MODE_RTX	4//RF�Ƚ��պ��Ͳ���
#define TEST_BLEADV_TX		TEST_RF_MODE_TX
#define TEST_BLEADV_RX		TEST_RF_MODE_RX
#define TEST_UART_TRX		5//UART�շ����ԣ�br=38400

#define TEST_RF_MODE		TEST_RF_MODE_RX

code UINT8 c_rf_txPkt[]={0x09,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08};
extern UINT8 driver_get_rssi();
extern void driver_rf_test_pn9_ber(UINT8 chn);
extern void driver_rf_read_pn9_ber();

code UINT8 adv_data[32]={
	0x02,   // ?????��??
    19,//=mac[6]+payload
    /* Device Address(6��???) */
    0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 

	0x02,0x01,0x05,//frame 1

	0x09,0x09,'2','4','8','0','-','a','d','C'

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
	
	
//	driver_rf_test_single_wave(40);
//	driver_rf_test_pn9(55);
//	system_data.rf_channel=40;
//	driver_rf_channel_switch();
//	driver_rf_test_pn9_ber(0x4e);
//	while(1){
//		driver_rf_read_pn9_ber();
//	}
//	while (1);
	driver_rf_set_channel(2);
	#if TEST_RF_MODE==TEST_UART_TRX
	print_str("Uart TRX Test\r\n");
	f=0;
	while(1){
		if(uart_data_len_receive>0){
			if(f==0){
				s=uart_data_len_receive;
				f=1;
			}else{
				s1=uart_data_len_receive;
				if(s1>s){
					s=s1;
				}else if(s==s1){
					print_str("uart rx len=");
					print_hex(s);
					print_newline();
					print_str("uart rx dat=");
					MemCopy(uart_data_send, uart_data_receive, uart_data_len_receive);
					driver_uart_send_start(uart_data_len_receive);
					uart_data_len_receive=0;
					f=0;
				}
			}
		}
		driver_delay_us(1000);
	}
	#endif

	#if TEST_RF_MODE==TEST_RF_MODE_TX
	print_str("Test TX\r\n");
	while(1){
		ble_adv_send(adv_data, adv_data[1]+2, 37);
//		BlePacketEncode(rf_fifo_data, adv_data, adv_data[1]+2, 37);
//		driver_rf_spi_set_mode_tx();
//		driver_rf_data_send(adv_data[1]+2+3);
		driver_delay_us(3000);
	}
	#endif
	#if TEST_RF_MODE==TEST_RF_MODE_RX
	print_str("Test BLE adv.....\r\n");
	//test rx packet
	//driver_rf_spi_set_mode_rx();
	while(1){
		print_str("start rx.....\r\n");
		s=ble_adv_recv(BLE_ADV_Decode_data, 24, 37);
		//if(s)
		{
			print_str("Rx Decode={{\r\n");
			for(s=0;s<32;s++)
			{
				print_hex(BLE_ADV_Decode_data[s]);
				if((s&0xf)==0x0f)
				{
					print_newline();
				}
			}
			print_str("}};\r\n");
			print_str("recvMAC={");
			for(s=7;s>1;s--)
			{
				print_hex(BLE_ADV_Decode_data[s]);
			}
			print_str("};\r\n");
			print_str("recv name={\r\n");
			BLE_ADV_Decode_data[BLE_ADV_Decode_data[1]+2]=0;

			print_str(&BLE_ADV_Decode_data[13]);
			print_str("\r\n};\r\n");
		}
	}
	#endif
	#if TEST_RF_MODE==TEST_RF_MODE_TRX
	print_str("RF TRX Test\r\n");
	//test rx packet
	s=0;
	while(1){
		//tx
		driver_rf_spi_set_mode_tx();
		rf_fifo_data[0]=0x09;
		rf_fifo_data[2]=s++;
		driver_rf_data_send(rf_fifo_data[0]);
		driver_delay_us(1000);
		driver_rf_spi_set_mode_rx();
		i=0;
		for(i=0;i<400;i++){
			driver_rf_receive_packet();
			if(flag_rf_driver_received){
				flag_rf_driver_received=0;
				uart_data_send[0] = 0x55;
				uart_data_send[1] = rf_fifo_data[0];
				uart_data_send[2] = rf_fifo_data[1];
				driver_uart_send_start(3);
				driver_delay_us(900);
				break;
			}
			driver_delay_us(10);
		}
	}
	#endif
	#if TEST_RF_MODE==TEST_RF_MODE_RTX
	print_str("RF RTX Test\r\n");
	s=0;
	while(1){
		driver_rf_spi_set_mode_rx();
		while(1){
			driver_rf_receive_packet();
			if(flag_rf_driver_received){
				flag_rf_driver_received=0;
				break;
			}
		}
		uart_data_send[0] = 0xaa;
		uart_data_send[1] = rf_fifo_data[0];
		uart_data_send[2] = rf_fifo_data[1];
		driver_uart_send_start(3);
		driver_delay_us(900);
		driver_rf_spi_set_mode_tx();
		rf_fifo_data[0]=0x29;
		rf_fifo_data[2]=s++;
		if(rf_fifo_data[2]==0)rf_fifo_data[1]++;
		driver_rf_data_send(9);
	}
	#endif
#if 0	
    system_data.system_mode = SYSTEM_NORMAL;
    while(1)
    {
    	switch(system_data.system_mode)
    	{
            case SYSTEM_NORMAL:
            	application_normal_mode();
            	break;

        #ifdef MODE_TEST
            case SYSTEM_TEST:
            	application_test_mode();
            	break;
        #endif

            default:
            	system_data.system_mode = SYSTEM_NORMAL;
            	break;
    	}
    }
#endif
    return 0;
}


/***********************************************************
						end file
***********************************************************/
