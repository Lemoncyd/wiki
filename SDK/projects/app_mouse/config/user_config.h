/**
 ****************************************************************************************
 *
 * @file user_config.h
 *
 * @brief Configuration of the BT function
 *
 * Copyright (C) Beken 2019
 *
 ****************************************************************************************
 */
#ifndef USER_CONFIG_H_
#define USER_CONFIG_H_
#include "uart2.h"
#include "uart.h"

#define VIRTUAL_UART_H4TL          1
#define UART_PRINTF_ENABLE         1///���ڴ�ӡ����
#define DEBUG_HW                   0///Ӳ������
#define DEBUG_HW_DIGITAL           0///����Ӳ������
#define GPIO_DBG_MSG               0///DEBUG��Ϣ����ͨ��DEBUG_MSG���������GPIO
#define DEBUG_RF_REG               0///RF���ԣ�Ϊ1����ͨ�����ڶ�дRF�Ĵ���
#define LDO_MODE                   0///LDO����ģʽ
#define _BK3633_



#define SYSTEM_SLEEP	1


//DRIVER CONFIG
#define UART0_DRIVER				1
#define UART2_DRIVER				1

#define GPIO_DRIVER				    1
#define AUDIO_DRIVER			    0
#define RTC_DRIVER					0
#define ADC_DRIVER					0
#define I2C_DRIVER					0
#define PWM_DRIVER					0
#define USB_DRIVER                  0
#define SPI_DRIVER                  0
#define AON_RTC_DRIVER              0
#define TIMER_DRIVER				1
#define I2S_DRIVER					0

#define uart_printf              uart0_printf

#define __MOUSE__


/// Default Device Name
#define APP_DFLT_DEVICE_NAME            ("BK3633")
#define APP_DFLT_DEVICE_NAME_LEN        (sizeof(APP_DFLT_DEVICE_NAME))

//#define APP_SCNRSP_DATA         "\x09\xFF\x00\x60\x42\x4B\x2D\x42\x4C\x45"
//#define APP_SCNRSP_DATA_LEN     (10)

#define APP_SCNRSP_DATA         "\x09\x09\x42\x4B\x33\x36\x33\x33"
#define APP_SCNRSP_DATA_LEN     (8)



/// Advertising channel map - 37, 38, 39
#define APP_ADV_CHMAP           (0x07)
/// Advertising minimum interval - 40ms (64*0.625ms)
#define APP_ADV_INT_MIN         (80 )
/// Advertising maximum interval - 40ms (64*0.625ms)
#define APP_ADV_INT_MAX         (80)
/// Fast advertising interval
#define APP_ADV_FAST_INT        (4)



//��С���Ӽ��
#define BLE_UAPDATA_MIN_INTVALUE		9
//������Ӽ��
#define BLE_UAPDATA_MAX_INTVALUE		9
//����Latency
#define BLE_UAPDATA_LATENCY				  100 //0
//���ӳ�ʱ
#define BLE_UAPDATA_TIMEOUT				600

#define APP_WHITE_LIST_ENABLE   0

extern uint8_t mouse_en ;


#endif // USER_CONFIG_H_

