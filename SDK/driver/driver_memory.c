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

#include "..\headfile\includes.h"

/***************************************************************
*   DATA region   128B = 32B(r0-r3) + 16B(128b) +80B(stack)
***************************************************************/
//66 static in function
DATA SYSTEM_STRUCT_DATA system_data;
DATA UINT8 usb_endpoint_state[4] = {EP_IDLE, EP_STALL, EP_STALL, EP_STALL};

VOLATILE bit flag_mouse_update = 0;                //mouse data received and need to analysis again
VOLATILE bit flag_keyboard_update = 0;           //keyboard data received and need to analysis again

VOLATILE bit flag_rf_bk2423 = 0;
VOLATILE bit flag_rf_send_end = 1;
VOLATILE bit flag_page_need_ack = 0;
VOLATILE bit flag_rf_paged_mouse = 0;                         //used for driver to flag the frame has been received
VOLATILE bit flag_rf_paged_keyboard = 0;                         //used for driver to flag the frame has been received
VOLATILE bit flag_rf_old_mouse = 0;                         //used for driver to flag the frame has been received
VOLATILE bit flag_rf_old_keyboard = 0;                         //used for driver to flag the frame has been received
VOLATILE bit flag_rf_driver_received = 0;         //used for driver to flag the frame has been received
VOLATILE bit flag_rf_packet_received = 0;        //valid data received
VOLATILE bit flag_rf_next_channel = 0;        
VOLATILE bit flag_rf_led_received = 0;        

VOLATILE bit flag_media_uploading = 0;            //media data need upload to pc		
VOLATILE bit flag_mce_uploading = 0;               //mce data need upload to pc		
VOLATILE bit flag_power_uploading = 0;            //power data need upload to pc		

VOLATILE bit flag_usb_report_state = 0;
VOLATILE bit flag_usb_send_wait_state = 0;
VOLATILE bit flag_usb_remote_wakeup = 1;
VOLATILE bit flag_usb_suspend = 0;

VOLATILE bit flag_usb_endpoint0_ready_report = 0; //just for usb ep0 test
VOLATILE bit flag_usb_endpoint0_accept = 0;
VOLATILE bit flag_usb_endpoint1_uploading = 0;
VOLATILE bit flag_usb_endpoint2_uploading = 0;
VOLATILE bit flag_usb_endpoint3_uploading = 0;
VOLATILE bit flag_usb_endpoint1_ready_uploading = 1;
VOLATILE bit flag_usb_endpoint2_ready_uploading = 1;
VOLATILE bit flag_usb_endpoint3_ready_uploading = 1;
VOLATILE bit flag_usb_endpoint1_null_data = 0;

VOLATILE bit flag_usb_idle = 0;
VOLATILE bit flag_usb_get_hid_report = 0;
VOLATILE bit flag_usb_get_protocol = 0;
VOLATILE bit flag_usb_state_normal = 0;

VOLATILE bit flag_usb_config_set = 0;
//VOLATILE bit flag_send_state=0;

#ifdef MOUSE_SWING
VOLATILE bit flag_mouse_swing_left_first = 0;
VOLATILE bit flag_mouse_swing_right_first = 0;
#endif

VOLATILE bit flag_keyboard_standard_pressed = 0;
VOLATILE bit flag_keyboard_media_pressed = 0;
VOLATILE bit flag_keyboard_mce_pressed = 0;
VOLATILE bit flag_keyboard_power_pressed = 0;

#ifdef MODE_TEST
VOLATILE bit flag_test_power_up = 0;
VOLATILE bit flag_test_single_wave = 1;
#endif

/***************************************************************
*   IDATA region  128B = address with r0/r1
***************************************************************/
//52+15B
//IDATA SYSTEM_STRUCT_IDATA system_idata;
IDATA TIMER timer_test;                         
IDATA TIMER timer_cd_detect;

IDATA UINT8 RF_CHANNEL_TABLE[16] = {8, 37, 68, 21, 40, 77, 7, 35, 67, 10, 42, 55, 14, 28, 49, 41};//{3, 28, 53, 8, 33, 58, 13, 38, 63, 18, 43, 68, 23, 48, 73, 78};
IDATA UINT8 rf_address_rx0[RF_ADDRESS_LEN] = {0xa3, 0x3e, 0x14, 0x5b, 0x6d};         //rx1 tx addr, defalut for page address
IDATA UINT8 rf_address_rx1[RF_ADDRESS_LEN];
IDATA UINT8 rf_address_rx2[RF_ADDRESS_LEN]={0xC3,0x00,22,32,42};

#ifdef MODE_TEST
IDATA UINT8 packet_count;
IDATA UINT8 P_count = 0;
IDATA UINT8 N_count = 0;
IDATA UINT8 P_flag = 0;
IDATA UINT8 N_flag = 0;
IDATA UINT8 P_status_count = 0;
IDATA UINT8 N_status_count = 0;
IDATA UINT8 RF_TEST_CHANNEL[3] = {3, 43, 78};
IDATA UINT8 RF_TEST_ADDRESS[RF_ADDRESS_LEN] = {0x15, 0x59, 0x23, 0xC6, 0x29};
#endif

/***************************************************************
*   XDATA region 64KB = address with gptr + movx
***************************************************************/
//365+12(uart)+30(usb descriptor)+19*8*2+27[19]B
XDATA SYSTEM_STRUCT_XDATA system_xdata;
XDATA UINT8 rf_fifo_data[32];             //rf fifo

#ifdef UART_INTERRUPT
XDATA UINT8 uart_data_receive[UART_DATA_LEN];// _at_ 0x0001;
XDATA UINT8 uart_data_temp[2*UART_DATA_LEN];// _at_ 0x0010;
XDATA UINT8 uart_data_send[UART_DATA_LEN];//  _at_ 0x0020;
XDATA UINT8 uart_data_len_receive;
XDATA UINT8 uart_data_len_send;
XDATA UINT8 uart_data_count_send;
XDATA INT8 uart_data_need_write_bytes;
XDATA UINT8 uart_data_index;
#endif

/***************************************************************
*   CODE region 32KB = address with gptr + movc
***************************************************************/
//Bank0 register initialization value
CODE UINT8 RF_BANK0_REG[23][2] =
{
    {0, 0x7E}, // Enable rx/tx/max interrupt, enable 2bytes crc, power up, prx
    {1, 0x3F}, // Enable 'Auto Acknowledgment' Function 
    {2, 0x3F}, // Enabled RX Addresses  
    {3, 0x01}, // Setup of Address Widths, 3bytes
    {4, 0x12}, // 500us, retransfer 3 times
    {5, 0x08}, // RF_CHANNEL_TABLE[0]
    {6, 0x07}, // 1Mbps data rate; output power=5dBm; 1:High gain
    {7, 0x07}, 
    {8, 0x00}, 
    {9, 0x00}, 
    {12, 0xc3}, 
    {13, 0xc4}, 
    {14, 0xc5}, 
    {15, 0xc6}, 
    {17, 0x20}, 
    {18, 0x20}, 
    {19, 0x20}, 
    {20, 0x20}, 
    {21, 0x20}, 
    {22, 0x20}, 
    {23, 0x00}, 
    {28, 0x3F}, 
    {29, 0x07}
};
CODE UINT32 RF_BANK1_REG_0_13[4] = 
{  
    0xF996821B,//REG4
    0x24020FA6,//REG5
 
    0x00127300, //REG12 
    0x36B48000, //REG13 
 
};
CODE UINT32 RF_BANK1_REG_4_2401[1] = 
{
    0xF996821B
};
CODE UINT8 RF_BANK1_REG14[11] = 
{
    0x41, 0x20, 0x08, 0x04, 0x81, 0x20, 0xCF, 0xF7, 0xFE, 0xFF, 0xFF //41 20 08 04 81 20 CF F7 FE FF FF
};

// usb
CODE UINT8 VALUE_ZERO_PACKET[2] = {0x00, 0x00};
CODE UINT8 VALUE_ONE_PACKET[2]  = {0x01, 0x00};
CODE UINT8 VALUE_TWO_PACKET[2]  = {0x02, 0x00};

/***********************************************************
                		end file
***********************************************************/
