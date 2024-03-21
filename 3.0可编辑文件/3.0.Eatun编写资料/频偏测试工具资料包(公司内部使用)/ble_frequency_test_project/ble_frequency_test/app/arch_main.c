/**
 ****************************************************************************************
 *
 * @file arch_main.c
 *
 * @brief Main loop of the application.
 *
 * Copyright (C) RivieraWaves 2009-2015
 *
 *
 ******** ********************************************************************************
 */


/*
 * INCLUDES
 ****************************************************************************************
 */

#include "rwip_config.h" // RW SW configuration

#include "arch.h"      // architectural platform definitions
#include <stdlib.h>    // standard lib functions
#include <stddef.h>    // standard definitions
#include <stdint.h>    // standard integer definition
#include <stdbool.h>   // boolean definition
#include "boot.h"      // boot definition
#include "rwip.h"      // RW SW initialization
#include "syscntl.h"   // System control initialization
#include "emi.h"       // EMI initialization
#include "intc.h"      // Interrupt initialization
#include "timer.h"     // TIMER initialization
#include "icu.h"
#include "flash.h"
#include "uart.h"      	// UART initialization
#include "flash.h"     // Flash initialization
//#include "led.h"       // Led initialization
#if (BLE_EMB_PRESENT || BT_EMB_PRESENT)
#include "rf.h"        // RF initialization
#endif // BLE_EMB_PRESENT || BT_EMB_PRESENT

#if (BLE_APP_PRESENT)
#include "app.h"       // application functions
#endif // BLE_APP_PRESENT

#include "nvds.h"         // NVDS definitions

#include "reg_assert_mgr.h"
#include "BK3435_reg.h"
#include "RomCallFlash.h"
#include "gpio.h"
#include "pwm.h"
#include "audio.h"
#include "app_task.h"
#include "ir.h"
#include "oads.h"
#include "wdt.h"
#include "user_config.h"

/**
 ****************************************************************************************
 * @addtogroup DRIVERS
 * @{
 *
 *
 * ****************************************************************************************
 */




/*
 * STRUCTURE DEFINITIONS
 ****************************************************************************************
 */

// Creation of uart external interface api
struct rwip_eif_api uart_api;

/*
 * LOCAL FUNCTION DECLARATIONS
 ****************************************************************************************
 */

static void Stack_Integrity_Check(void);

extern void code_sanity_check(void);

extern void rw_fcc_enter(void);

#if (UART_DRIVER)
void uart_rx_handler(uint8_t *buf, uint8_t len);
#endif

#if ((UART_PRINTF_EN) &&(UART_DRIVER))
void assert_err(const char *condition, const char * file, int line)
{
	uart_printf("%s,condition %s,file %s,line = %d\r\n",__func__,condition,file,line);

}

void assert_param(int param0, int param1, const char * file, int line)
{
	uart_printf("%s,param0 = %d,param1 = %d,file = %s,line = %d\r\n",__func__,param0,param1,file,line);

}

void assert_warn(int param0, int param1, const char * file, int line)
{
	uart_printf("%s,param0 = %d,param1 = %d,file = %s,line = %d\r\n",__func__,param0,param1,file,line);

}

void dump_data(uint8_t* data, uint16_t length)
{
	uart_printf("%s,data = %d,length = %d,file = %s,line = %d\r\n",__func__,data,length);

}
#else
void assert_err(const char *condition, const char * file, int line)
{

}

void assert_param(int param0, int param1, const char * file, int line)
{

}

void assert_warn(int param0, int param1, const char * file, int line)
{

}

void dump_data(uint8_t* data, uint16_t length)
{

}
#endif //UART_PRINTF_EN



void BT_delayUs(int num)
{
	int x, y;
	for(y = 0; y < num; y ++ )
	{
		for(x = 0; x < 10; x++);
	}
}



extern uint8_t system_mode;


#if 1
/*
 * LOCAL FUNCTION DEFINITIONS
 ****************************************************************************************
 */

//用来加密的原始数据，需要在烧录代码的时候提供
//0102210630355cff0078b69d5538dd22
uint8_t encrypt_key_array[16] =
{
	0x01, 0x02, 0x21, 0x06,
	0x30, 0x35, 0x5c, 0xff,
	0x00, 0x78, 0xb6, 0x9d,
	0x55, 0x38, 0xdd, 0x22
};
#endif

/*
 * EXPORTED FUNCTION DEFINITIONS
 ****************************************************************************************
 */


void platform_reset(uint32_t error)
{
	//void (*pReset)(void);

	UART_PRINTF("error = %x\r\n", error);

	// Disable interrupts
	GLOBAL_INT_STOP();

#if UART_PRINTF_EN
	// Wait UART transfer finished
	uart_finish_transfers();
#endif //UART_PRINTF_EN


	if(error == RESET_AND_LOAD_FW || error == RESET_TO_ROM)
	{
		// Not yet supported
	}
	else
	{
		//Restart FW
		//pReset = (void * )(0x0);
		//pReset();
		wdt_enable(10);
		while(1);
	}
}



void bdaddr_env_init(void)
{
	struct bd_addr co_bdaddr;
	flash_read_data(&co_bdaddr.addr[0],0x400e3,6);
	if(co_bdaddr.addr[0]!=0xff ||co_bdaddr.addr[1]!=0xff||
	        co_bdaddr.addr[2]!=0xff||co_bdaddr.addr[3]!=0xff||
	        co_bdaddr.addr[4]!=0xff||co_bdaddr.addr[5]!=0xff )
	{
		memcpy(&co_default_bdaddr,&co_bdaddr,6);
	}
}


void rw_dut_enter(void)
{
	/*
	 ***************************************************************************
	 * Main loop
	 ***************************************************************************
	 */
	while(1)
	{
		// schedule all pending events
		rwip_schedule();
	}
}

void rw_app_enter(void)
{
#if SYSTEM_SLEEP
	uint8_t sleep_type = 0;
#endif

	while(1)
	{
		//schedule all pending events
		rwip_schedule();

		// Checks for sleep have to be done with interrupt disabled
		GLOBAL_INT_DISABLE();

		oad_updating_user_section_pro();

		if(wdt_disable_flag==1)
		{
			wdt_disable();
		}
#if SYSTEM_SLEEP
		// Check if the processor clock can be gated
		sleep_type = rwip_sleep();
		if((sleep_type & RW_MCU_DEEP_SLEEP) == RW_MCU_DEEP_SLEEP)
		{
			// 1:idel  0:reduce voltage
			if(icu_get_sleep_mode())
			{
				cpu_idle_sleep();
			}
			else
			{
				cpu_reduce_voltage_sleep();
			}
		}
		else if((sleep_type & RW_MCU_IDLE_SLEEP) == RW_MCU_IDLE_SLEEP)
		{
			cpu_idle_sleep();
		}
#endif
		Stack_Integrity_Check();
		GLOBAL_INT_RESTORE();
	}
}

void sys_mode_init(void)
{
	system_mode |= RW_NO_MODE;
}

#define LED_RED                     (0x16)
#define LED_GREEN                   (0x17)
#define LED_BLUE                    (0x33)

void led_init(void)
{
    gpio_config(LED_RED, OUTPUT, PULL_NONE);
    gpio_config(LED_GREEN, OUTPUT, PULL_NONE);
    gpio_config(LED_BLUE, OUTPUT, PULL_NONE);
    gpio_set(LED_RED, 0);
    gpio_set(LED_GREEN, 0);
    gpio_set(LED_BLUE, 1);
}


void led_fail(void)
{
    gpio_set(LED_RED, 1);
    gpio_set(LED_GREEN, 0);
}


void led_success(void)
{
    gpio_set(LED_RED, 0);
    gpio_set(LED_GREEN, 1);
}

void test_mode_enter(void)
{
    gpio_config(0x04, OUTPUT, PULL_NONE);
    gpio_set(0x04, 0);
}

void test_mode_quit(void)
{
    gpio_config(0x04, OUTPUT, PULL_NONE);
    gpio_set(0x04, 1);
    //UART_PRINTF("Quit Test Mode!\r\n");
}


void timer_start(void);


#define UART_INIT_FLAG      (0x12345678)
#define FREQ_LEFT_OFFSET    (0xffffffce)
#define FREQ_RIGHT_OFFSET   (0x32)
#define RF_TEST_COUNT       (12)
#define FREQ_REFER_OFFSET    (-2)



int32_t total = 0;
int32_t max_data=0x80000000;
int32_t min_data=0x7fffffff;
uint8_t full_count = 0;
uint8_t empty_count = 0;
int32_t average = 0;
uint8_t lock_delay = 0;
uint8_t lock_status = 0;


uint8_t total_count = RF_TEST_COUNT;
int32_t freq_left = FREQ_LEFT_OFFSET;
int32_t freq_rifgt = FREQ_RIGHT_OFFSET;
int16_t freq_refer = FREQ_REFER_OFFSET;



void timer_callback(unsigned char ucChannel)
{
    int32_t tmp_xvr13;
    uint32_t tmp_xvr15;

    lock_delay++;
    if(lock_delay >= 100)  //200ms
    {
        pwm_disable(1);
        lock_delay = 0;
        lock_status = 1;
        XVR_REG25 |= (0x1 << 9);  //PN9 hold EN
        BT_delayUs(100);
        tmp_xvr15 = XVR_REG15;
        tmp_xvr13 = (XVR_REG13 & 0xfff);
        XVR_REG25 &= ~(0x1<<10);
        XVR_REG25 &= ~(0x1<<13);
        XVR_REG25 &= ~(0x1 << 9);
        UART_PRINTF("Current freq = 0x%x\r\n", tmp_xvr13);
        UART_PRINTF("Receive Packet = 0x%x\r\n", tmp_xvr15);
    }
    if(lock_status)
    {
        lock_status = 0;
        if(tmp_xvr15 == 0)
        {
            empty_count++;
            UART_PRINTF("Empty PKT Count = %d\r\n", empty_count);
            if(empty_count >= total_count)
            {
                goto FAIL;
            }
        }
        else
        {
            full_count ++;
        }
        if( full_count <= total_count)
        {
            UART_PRINTF("Receive PKT Count = %d\r\n", full_count);
            UART_PRINTF("\r\n");
            if(tmp_xvr13 & (0x1 << 11))
            {
                tmp_xvr13 |= 0xfffff000;
            }
            if(max_data < tmp_xvr13)
            {
                max_data = tmp_xvr13;
            }
            if(min_data > tmp_xvr13)
            {
                min_data = tmp_xvr13;
            }
            total += tmp_xvr13;
            BT_delayUs(10);
            XVR_REG25 |= (0x1<<10);
            XVR_REG25 |= (0x1<<13);
            timer_start();
        }
        else
        {
            total = total - max_data - min_data;
            average = total/(total_count - 2); 
            average = (average * 2) + freq_refer;
            if(((average >= freq_left) && ( average < 0)) || ((average >= 0) && (average <= freq_rifgt)))  //+-50K
            {
                led_success();
                UART_PRINTF("\r\n");
                if(full_count > 0)
                {
                    UART_PRINTF("Receive PKT Count = %d\r\n", full_count-1);
                }
                else
                {
                    UART_PRINTF("Receive PKT Count = %d\r\n", full_count);
                }
                UART_PRINTF("Empty PKT Count = %d\r\n", empty_count);
                UART_PRINTF("Average freq = %d\r\n", average);
                UART_PRINTF("Test Result: PASS\r\n");
            }
            else
            {
FAIL:            
                led_fail();
                UART_PRINTF("\r\n");
                if(full_count > 0)
                {
                    UART_PRINTF("Receive PKT Count = %d\r\n", full_count-1);
                }
                else
                {
                    UART_PRINTF("Receive PKT Count = %d\r\n", full_count);
                }
                UART_PRINTF("Empty PKT Count = %d\r\n", empty_count);
                UART_PRINTF("Average freq = %d\r\n", average);
                UART_PRINTF("Test Result: FAIL\r\n");
            }
            test_mode_quit();
            //while(1);
        }

    }
}


//AT+SR 设置测试偏值
//AT+SC 设置测试次数
//AT+SJ 设置校准值

void timer_start(void)
{
	icu_set_sleep_mode(1);
	rwip_prevent_sleep_set(BK_DRIVER_TIMER_ACTIVE);
	PWM_DRV_DESC timer_desc;

	timer_desc.channel = 1;            				  
    timer_desc.mode    = 1<<0 | 1<<1 | 1<<2 | 1<<4;   
    timer_desc.end_value  = 65534;                      
    timer_desc.duty_cycle = 0;                        
    timer_desc.p_Int_Handler = timer_callback;  		  
	pwm_init(&timer_desc);
}

void ble_rx_start(void)
{
    XVR_REG20 = 0x0295e5dc;
    XVR_REG23 = 0x0295e5dc;
    XVR_REG3B |= 1<<13;
    XVR_REG24 = 40;
    XVR_REG25 = 0;
    BT_delayUs(100);
	XVR_REG25 |= (0x1<<10);
    XVR_REG25 |= (0x1<<13);
    UART_PRINTF("Ready To Start\r\n");
    UART_PRINTF("\r\n");
}


/**
 *******************************************************************************
 * @brief RW main function.
 *
 * This function is called right after the booting process has completed.
 *
 * @return status   exit status
 *******************************************************************************
 */


extern struct rom_env_tag rom_env;
void test_info_init(void);
void rwip_eif_api_init(void);
void rw_main(void)
{
	/*
	 ***************************************************************************
	 * Platform initialization
	 ***************************************************************************
	 */
#if SYSTEM_SLEEP
    uint8_t sleep_type = 0;
#endif

    test_mode_enter();

	// Initialize random process
	srand(1);

    // Iniialize sys run mode
	sys_mode_init();

    led_init();

	//get System sleep flag
	system_sleep_init();

	// Initialize the exchange memory interface
	emi_init();

	// Initialize timer module
	timer_init();

	rwip_eif_api_init();

	// Initialize the Interrupt Controller
	intc_init();
	// Initialize UART component
#if (UART_DRIVER)
	uart_init(19200);
	uart_cb_register(uart_rx_handler);
#endif
	flash_advance_init();
	bdaddr_env_init();
    

	// Initialize NVDS module
	struct nvds_env_tag env;
	env.flash_read = &flash_read;
	env.flash_write = &flash_write;
	env.flash_erase = &flash_erase;
	nvds_init(env);

	rom_env_init(&rom_env);


	/*
	  ***************************************************************************
	  * RW SW stack initialization
	  ***************************************************************************
	  */
	// Initialize RW SW stack
	rwip_init(0);

	icu_init();

	flash_init();

    test_info_init();

	REG_AHB0_ICU_INT_ENABLE |= (0x01 << 15); //BLE INT
	REG_AHB0_ICU_IRQ_ENABLE = 0x03;

	// finally start interrupt handling
	GLOBAL_INT_START();

    ble_rx_start();
    //gpio_config(0x11, OUTPUT, PULL_NONE);
    //gpio_set(0x11, 0);
    timer_start();
    while(1);

    //Main LOOP
	while(1)
	{
		//schedule all pending events
		rwip_schedule();

		// Checks for sleep have to be done with interrupt disabled
		GLOBAL_INT_DISABLE();

		oad_updating_user_section_pro();

		if(wdt_disable_flag==1)
		{
			wdt_disable();
		}
#if SYSTEM_SLEEP
		// Check if the processor clock can be gated
		sleep_type = rwip_sleep();
		if((sleep_type & RW_MCU_DEEP_SLEEP) == RW_MCU_DEEP_SLEEP)
		{
			// 1:idel  0:reduce voltage
			if(icu_get_sleep_mode())
			{
				cpu_idle_sleep();
			}
			else
			{
				cpu_reduce_voltage_sleep();
			}
		}
		else if((sleep_type & RW_MCU_IDLE_SLEEP) == RW_MCU_IDLE_SLEEP)
		{
			cpu_idle_sleep();
		}
#endif
		Stack_Integrity_Check();
		GLOBAL_INT_RESTORE();
	}
}


struct frequency_tag
{
    uint32_t init_flag;
    int32_t freq_right;
    int32_t freq_left;
    uint8_t test_count;
    int16_t cal;
};

static struct frequency_tag FREQ_TAG;
typedef struct
{
	uint8_t src[25];
} uartData_t;

uartData_t uartData[4] = {0};

uint8_t isContain(uint8_t *buffer)
{
  uint8_t i;
  
  for(i=0; i<strlen((char*)buffer); i++)
  {
    if(buffer[i]=='\r' && buffer[i+1]=='\n')
    {
      return 1;
    }
  }
  
  return 0;
}

uartData_t* getUartParamValue(uint8_t *buffer, uint16_t len, uint16_t* pNums)
{
  int i,k = 0;
  int index = 0;
  uint8_t tmpBuf[21]={0};
  
  if(!isContain(buffer))
  {
    return NULL;
  }	
  for(i=len; i<strlen((char*)buffer); i++)
  {
    if(buffer[i] == ',' || (buffer[i]=='\r'&&buffer[i+1]=='\n'))
    {
      tmpBuf[k] = '\0';
      memcpy(uartData[index++].src,tmpBuf,k+1);
      k = 0;
      continue;
    }
    tmpBuf[k++] = buffer[i];
  }
  *pNums = index;
  
  return uartData;
  
}


uint32_t _atoi(char *str)
{
  uint32_t value = 0;
  while(*str>='0' && *str<='9')
  {
    value *= 10;
    value += *str - '0';
    str++;
  }
  return value;
}



#define UART_INFO_ADDR              0x42000


void update_freq_info(struct frequency_tag *tag)
{
    flash_read(0, UART_INFO_ADDR, sizeof(struct frequency_tag), (uint8_t*)&FREQ_TAG,NULL);
    FREQ_TAG.freq_right = tag->freq_right;
    FREQ_TAG.freq_left = tag->freq_left;
    flash_erase_sector(UART_INFO_ADDR);
    flash_write(0, UART_INFO_ADDR, sizeof(struct frequency_tag), (uint8_t*)&FREQ_TAG, NULL);
}

void update_count_info(struct frequency_tag *tag)
{
    flash_read(0, UART_INFO_ADDR, sizeof(struct frequency_tag), (uint8_t*)&FREQ_TAG,NULL);
    FREQ_TAG.test_count = tag->test_count;
    flash_erase_sector(UART_INFO_ADDR);
    flash_write(0, UART_INFO_ADDR, sizeof(struct frequency_tag), (uint8_t*)&FREQ_TAG, NULL);
}


void update_cal_info(struct frequency_tag *tag)
{
    flash_read(0, UART_INFO_ADDR, sizeof(struct frequency_tag), (uint8_t*)&FREQ_TAG,NULL);
    FREQ_TAG.cal = tag->cal;
    flash_erase_sector(UART_INFO_ADDR);
    flash_write(0, UART_INFO_ADDR, sizeof(struct frequency_tag), (uint8_t*)&FREQ_TAG, NULL);
}


void test_info_init(void)
{
    flash_read(0, UART_INFO_ADDR, sizeof(struct frequency_tag), (uint8_t*)&FREQ_TAG,NULL);
    if(FREQ_TAG.init_flag != UART_INIT_FLAG)
    {
        total_count = RF_TEST_COUNT;
        freq_left = FREQ_LEFT_OFFSET;
        freq_rifgt = FREQ_RIGHT_OFFSET;
        freq_refer = FREQ_REFER_OFFSET;
        
        FREQ_TAG.init_flag = UART_INIT_FLAG;
        FREQ_TAG.test_count = RF_TEST_COUNT;
        FREQ_TAG.freq_left = FREQ_LEFT_OFFSET;
        FREQ_TAG.freq_right = FREQ_RIGHT_OFFSET;
        FREQ_TAG.cal = FREQ_REFER_OFFSET;
        flash_erase_sector(UART_INFO_ADDR);
        flash_write(0, UART_INFO_ADDR, sizeof(struct frequency_tag), (uint8_t*)&FREQ_TAG, NULL);
    }
    else
    {
        total_count = FREQ_TAG.test_count;
        freq_left = FREQ_TAG.freq_left;
        freq_rifgt = FREQ_TAG.freq_right;
        freq_refer = FREQ_TAG.cal;
    }

    UART_PRINTF("Test Parameter:\r\n");
    UART_PRINTF("Test Count = %d\r\n", total_count);
    UART_PRINTF("Freq Left = %d, 0x%x\r\n",freq_left, freq_left );
    UART_PRINTF("Freq Rifgt = %d, 0x%x\r\n",freq_rifgt, freq_rifgt );
    UART_PRINTF("Freq Refer = %d\r\n",freq_refer );
}


//AT+SR 设置测试偏值
//AT+SC 设置测试次数
//AT+SJ 设置校准值

uint8_t UART_SetFrequencyHandler( uint8_t *buffer, uint16_t len)
{
    uint16_t      num;
    uartData_t  *uart_data = NULL;
    struct frequency_tag tmp_tag;
    
    uart_data = getUartParamValue( buffer, len, &num);
    if( uart_data == NULL )
	{
		return 0;
	}
	if( num != 1 )
	{
		return 0;
	}
    int32_t freq_right =  _atoi( (char*)uart_data[0].src );
    int32_t freq_left = (~freq_right + 1); 
    tmp_tag.freq_right = freq_right;
    tmp_tag.freq_left = freq_left;
    update_freq_info(&tmp_tag);
    
    //UART_PRINTF("freq_right = %d, 0x%x\r\n", FREQ_TAG.freq_right, FREQ_TAG.freq_right);
    //UART_PRINTF("freq_left = %d, 0x%x\r\n", FREQ_TAG.freq_left, FREQ_TAG.freq_left);

    UART_PRINTF("+SR:OK\r\n");
    
    return 0x1;
}

uint8_t UART_SetTestCountHandler( uint8_t *buffer, uint16_t len)
{
    uint16_t      num;
    uartData_t  *uart_data = NULL;
    struct frequency_tag tmp_tag;
    
    uart_data = getUartParamValue( buffer, len, &num);
    if( uart_data == NULL )
	{
		return 0;
	}
	if( num != 1 )
	{
		return 0;
	}
    uint16_t  test_count =  _atoi( (char*)uart_data[0].src );
    tmp_tag.test_count = test_count;
    update_count_info(&tmp_tag);
    
    //UART_PRINTF("test_count = %d\r\n", FREQ_TAG.test_count);

    UART_PRINTF("+SC:OK\r\n");
    
    return 0x1;
}


uint8_t UART_SetCalibrationValueHandler( uint8_t *buffer, uint16_t len)
{
    uint16_t      num;
    uartData_t  *uart_data = NULL;
    struct frequency_tag tmp_tag;
    uint8_t tmp_fu;
    int16_t tmp_value;
    
    uart_data = getUartParamValue( buffer, len, &num);
    if( uart_data == NULL )
	{
		return 0;
	}
	if( num != 2 )
	{
		return 0;
	}
    
    switch( num )
    {
        case 2:
            tmp_fu = _atoi( (char*)uart_data[0].src );
        case 1:
            tmp_value = _atoi( (char*)uart_data[1].src );
            break;
        default:
            break;
    }
    if(tmp_fu != 0)
    {
        tmp_value = (~tmp_value + 1); 
    }

    tmp_tag.cal = tmp_value;
    update_cal_info(&tmp_tag);

    //UART_PRINTF("cal = %d\r\n", FREQ_TAG.cal);

    UART_PRINTF("+SJ:OK\r\n");
    
    return 0x1;
}


uint8_t UART_QueryFrequencyHandler( uint8_t *buffer, uint16_t len)
{
    struct frequency_tag tmp_info;
    flash_read(0, UART_INFO_ADDR, sizeof(struct frequency_tag), (uint8_t*)&tmp_info,NULL);
    UART_PRINTF("+SR:%d, 0x%x\r\n", tmp_info.freq_left,tmp_info.freq_left );
    UART_PRINTF("+SR:%d, 0x%x\r\n", tmp_info.freq_right,tmp_info.freq_right );
    UART_PRINTF("+SR:OK\r\n");
    return 0x1;
}

uint8_t UART_QueryTestCountHandler( uint8_t *buffer, uint16_t len)
{
    struct frequency_tag tmp_info;
    flash_read(0, UART_INFO_ADDR, sizeof(struct frequency_tag), (uint8_t*)&tmp_info,NULL);
    UART_PRINTF("+SC:%d\r\n", tmp_info.test_count);
    UART_PRINTF("+SC:OK\r\n");
    return 0x1;
}


uint8_t UART_QueryCalibrationValueHandler( uint8_t *buffer, uint16_t len)
{
    struct frequency_tag tmp_info;
    flash_read(0, UART_INFO_ADDR, sizeof(struct frequency_tag), (uint8_t*)&tmp_info,NULL);
    UART_PRINTF("+SJ:%d\r\n", tmp_info.cal);
    UART_PRINTF("+SJ:OK\r\n");
    return 0x1;
}


uint8_t UART_UartResponseHandler( uint8_t *buffer, uint16_t len)
{
    UART_PRINTF("+AT:OK\r\n");
    return 0x1;
}


typedef struct cmd {
	uint8_t commond[9];
	uint8_t ( *func )( uint8_t*, uint16_t );
}at_cmd;


static at_cmd atcmd[] = {
	{ "AT+SR=",		UART_SetFrequencyHandler		},
	{ "AT+SC=",		UART_SetTestCountHandler		},
	{ "AT+SJ=",		UART_SetCalibrationValueHandler	},
	{ "AT+SR?\r\n", UART_QueryFrequencyHandler	},
	{ "AT+SC?\r\n", UART_QueryTestCountHandler		},
	{ "AT+SJ?\r\n", UART_QueryCalibrationValueHandler},
	{ "AT\r\n",		UART_UartResponseHandler			}
};


#define UART_LEN		50
static uint16_t			all = 0;
static uint8_t			uartBuffer[UART_LEN];
#define AT_NUMBERS    ( sizeof( atcmd ) / sizeof( atcmd[0] ) )


uint8_t isRxComplete(void)
{
	for( int i = 0; i < UART_LEN; i++ )
	{
		if( uartBuffer[i] == '\r' && uartBuffer[i + 1] == '\n' )
		{
			return 1;
		}
	}
	return 0;
}

uint8_t str_cmp(uint8_t *p1,uint8_t *p2,uint8_t len)
{
  uint8_t i=0;
  while(i<len){
    if(p1[i]!=p2[i])
      return 1;
    i++;
  }
  return 0;
}


static void uart_parsing( uint8_t *buffer )
{
	uint8_t i, len;
	for( i = 0; i < AT_NUMBERS; i++ )
	{
		len = strlen( (char*)atcmd[i].commond );
		if( str_cmp( atcmd[i].commond, buffer, len ) == 0 )
		{
			if( atcmd[i].func( buffer, len ) == 0 )
			{
				UART_PRINTF( "ERROR\r\n");
			}
			break;
		}
	}
	memset( uartBuffer, 0, UART_LEN );
	all = 0;
}



#if (UART_DRIVER)
static void uart_rx_handler(uint8_t *buf, uint8_t len)
{
    if( all + len <= UART_LEN )
	{
		if( !isRxComplete( ) )
		{
			memcpy( &uartBuffer[all], buf, len );
			all += len;
			if( isRxComplete( ) )
			{
				uart_parsing( uartBuffer );
			}
		}
	}else
	{
		memset( uartBuffer, 0, UART_LEN );
		all = 0;
	}

    
}
#endif

void rwip_eif_api_init(void)
{
	uart_api.read = &uart_read;
	uart_api.write = &uart_write;
	uart_api.flow_on = &uart_flow_on;
	uart_api.flow_off = &uart_flow_off;
}

const struct rwip_eif_api* rwip_eif_get(uint8_t type)
{
	const struct rwip_eif_api* ret = NULL;
	switch(type)
	{
	case RWIP_EIF_AHI:
	{
		ret = &uart_api;
	}
	break;
#if (BLE_EMB_PRESENT) || (BT_EMB_PRESENT)
	case RWIP_EIF_HCIC:
	{
		ret = &uart_api;
	}
	break;
#elif !(BLE_EMB_PRESENT) || !(BT_EMB_PRESENT)
	case RWIP_EIF_HCIH:
	{
		ret = &uart_api;
	}
	break;
#endif
	default:
	{
		ASSERT_INFO(0, type, 0);
	}
	break;
	}
	return ret;
}

static void Stack_Integrity_Check(void)
{
	if ((REG_PL_RD(STACK_BASE_UNUSED)!= BOOT_PATTERN_UNUSED))
	{
		while(1)
		{
			uart_putchar("Stack_Integrity_Check STACK_BASE_UNUSED fail!\r\n");
		}
	}

	if ((REG_PL_RD(STACK_BASE_SVC)!= BOOT_PATTERN_SVC))
	{
		while(1)
		{
			uart_putchar("Stack_Integrity_Check STACK_BASE_SVC fail!\r\n");
		}
	}

	if ((REG_PL_RD(STACK_BASE_FIQ)!= BOOT_PATTERN_FIQ))
	{
		while(1)
		{
			uart_putchar("Stack_Integrity_Check STACK_BASE_FIQ fail!\r\n");
		}
	}

	if ((REG_PL_RD(STACK_BASE_IRQ)!= BOOT_PATTERN_IRQ))
	{
		while(1)
		{
			uart_putchar("Stack_Integrity_Check STACK_BASE_IRQ fail!\r\n");
		}
	}

}


void rom_env_init(struct rom_env_tag *api)
{
	memset(&rom_env,0,sizeof(struct rom_env_tag));
	rom_env.prf_get_id_from_task = prf_get_id_from_task;
	rom_env.prf_get_task_from_id = prf_get_task_from_id;
	rom_env.prf_init = prf_init;
	rom_env.prf_create = prf_create;
	rom_env.prf_cleanup = prf_cleanup;
	rom_env.prf_add_profile = prf_add_profile;
	rom_env.rwble_hl_reset = rwble_hl_reset;
	rom_env.rwip_reset = rwip_reset;
#if SYSTEM_SLEEP
	rom_env.rwip_prevent_sleep_set = rwip_prevent_sleep_set;
	rom_env.rwip_prevent_sleep_clear = rwip_prevent_sleep_clear;
	rom_env.rwip_sleep_lpcycles_2_us = rwip_sleep_lpcycles_2_us;
	rom_env.rwip_us_2_lpcycles = rwip_us_2_lpcycles;
	rom_env.rwip_wakeup_delay_set = rwip_wakeup_delay_set;
#endif
	rom_env.platform_reset = platform_reset;
	rom_env.assert_err = assert_err;
	rom_env.assert_param = assert_param;
	rom_env.Read_Uart_Buf = Read_Uart_Buf;
	rom_env.uart_clear_rxfifo = uart_clear_rxfifo;

}

/// @} DRIVERS
