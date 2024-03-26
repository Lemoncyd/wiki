/**************************************************************************************************

    Phyplus Microelectronics Limited confidential and proprietary.
    All rights reserved.

    IMPORTANT: All rights of this software belong to Phyplus Microelectronics
    Limited ("Phyplus"). Your use of this Software is limited to those
    specific rights granted under  the terms of the business contract, the
    confidential agreement, the non-disclosure agreement and any other forms
    of agreements as a customer or a partner of Phyplus. You may not use this
    Software unless you agree to abide by the terms of these agreements.
    You acknowledge that the Software may not be modified, copied,
    distributed or disclosed unless embedded on a Phyplus Bluetooth Low Energy
    (BLE) integrated circuit, either as a product or is integrated into your
    products.  Other than for the aforementioned purposes, you may not use,
    reproduce, copy, prepare derivative works of, modify, distribute, perform,
    display or sell this Software and/or its documentation for any purposes.

    YOU FURTHER ACKNOWLEDGE AND AGREE THAT THE SOFTWARE AND DOCUMENTATION ARE
    PROVIDED AS IS WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESS OR IMPLIED,
    INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF MERCHANTABILITY, TITLE,
    NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE. IN NO EVENT SHALL
    PHYPLUS OR ITS SUBSIDIARIES BE LIABLE OR OBLIGATED UNDER CONTRACT,
    NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR OTHER
    LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES
    INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE
    OR CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT
    OF SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES
    (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.

**************************************************************************************************/

/**************************************************************************************************
    Filename:       gpio_demo.c
    Revised:        $Date $
    Revision:       $Revision $


**************************************************************************************************/

/*********************************************************************
    INCLUDES
*/

#include "OSAL.h"
#include "gpio_demo.h"
#include "log.h"

#include "gpio.h"
#include "clock.h"

#include "pwrmgr.h"
#include "error.h"
#include "key.h"


/*********************************************************************
    pulseMeasure_Task
    Task pulseMeasure sample code,we can use p04~p07 and p11~p15 easily.
*/
static uint8 pulseMeasure_TaskID;

typedef struct
{
    bool          enable;
    bool          pinstate;
    uint32_t      edge_tick;
} gpioin_Trig_t;

typedef struct
{
    GPIO_Pin_e    pin;
    bool          type;
    uint32_t      ticks;
} gpioin_pulse_Width_measure_t;

gpioin_pulse_Width_measure_t measureResult =
{
    .pin = GPIO_P14,
};

static gpioin_Trig_t gpioTrig =
{
    .enable = FALSE,
    .edge_tick = 0,
};

void plus_edge_callback(void)
{
    LOG("pulse:%d %d\n", measureResult.type, measureResult.ticks);
}

void pulse_measure_callback(GPIO_Pin_e pin, IO_Wakeup_Pol_e type)
{
    if(gpioTrig.enable == FALSE)
    {
        gpioTrig.enable = TRUE;
        gpioTrig.edge_tick = hal_systick();
        return;
    }

    measureResult.type = type;
    measureResult.ticks = hal_ms_intv(gpioTrig.edge_tick);
    plus_edge_callback();
    gpioTrig.edge_tick = hal_systick();
}


void Pulse_Measure_Init( uint8 task_id )
{
    pulseMeasure_TaskID = task_id;
    hal_gpio_init();
    hal_gpioin_register(measureResult.pin, pulse_measure_callback, pulse_measure_callback);
    gpioTrig.pinstate = hal_gpio_read(measureResult.pin);
}

uint16 Pulse_Measure_ProcessEvent( uint8 task_id, uint16 events )
{
    if(task_id != pulseMeasure_TaskID)
    {
        return 0;
    }

    // Discard unknown events
    return 0;
}

/*********************************************************************
    gpio_wakeup_Task
    Task gpio wakeup sample code
    The followinng code shows P14 wakeup the system when there is a posedge or negedge.
*/
static uint8 gpio_wakeup_TaskID;
void posedge_callback_wakeup(GPIO_Pin_e pin, IO_Wakeup_Pol_e type)
{
    if(type == POSEDGE)
    {
        LOG("wakeup(pos):gpio:%d type:%d\n", pin, type);
    }
    else
    {
        LOG("error\n");
    }
}

void negedge_callback_wakeup(GPIO_Pin_e pin, IO_Wakeup_Pol_e type)
{
    if(type == NEGEDGE)
    {
        LOG("wakeup(neg):gpio:%d type:%d\n", pin, type);
    }
    else
    {
        LOG("wakeup(pos):gpio:%d type:%d\n", pin, type);
    }
}

/*
     P00~P03:default jtag,we can use it as wakeup pin when no debug.
     P04~P07,P11~P15,P18~P30:default gpio,use it easily.
     P08:mode select pin,cannot used as other usage.
     P09~P10,it is uart in burn mode which cannot config.it is configable when in debug mode.
     P16~P17:xtal pin,when use this pins,please use rc as system frequency.config hal_rtc_clock_config(CLK_32K_RCOSC) in hal_init first.
     P31~P34:default spif,we can use it as wakeup pin directly,we driver have completed its multiplex config.
*/
typedef struct gpioin_wakeup_t
{
    GPIO_Pin_e pin;
    gpioin_Hdl_t posedgeHdl;
    gpioin_Hdl_t negedgeHdl;
} gpioin_wakeup;

gpioin_wakeup gpiodemo[GPIO_WAKEUP_PIN_NUM] =
{
    GPIO_P14, posedge_callback_wakeup, negedge_callback_wakeup,
    GPIO_P23, posedge_callback_wakeup, negedge_callback_wakeup,
    GPIO_P31, posedge_callback_wakeup, negedge_callback_wakeup,
};

void GPIO_Wakeup_Init(uint8 task_id )
{
    uint8_t i = 0;
    static bool gpioin_state[GPIO_WAKEUP_PIN_NUM];
    hal_gpio_init();
    gpio_wakeup_TaskID = task_id;
    LOG("gpio wakeup demo start...\n");

    //hal_gpio_pull_set(P14,WEAK_PULL_UP);

    for(i = 0; i < GPIO_WAKEUP_PIN_NUM; i++)
    {
        hal_gpioin_register(gpiodemo[i].pin, gpiodemo[i].posedgeHdl, gpiodemo[i].negedgeHdl);
        gpioin_state[i] = hal_gpio_read(gpiodemo[i].pin);
        LOG("gpioin_state:%d %d\n", i, gpioin_state[i]);
    }
}

uint16 GPIO_Wakeup_ProcessEvent( uint8 task_id, uint16 events )
{
    if(task_id != gpio_wakeup_TaskID)
    {
        return 0;
    }

    return 0;
}

/*********************************************************************
    key_Task:gpio config as key

*/
static uint8 key_TaskID;

#define KEY_DEMO_ONCE_TIMER      0x0001
#define KEY_DEMO_CYCLE_TIMER     0x0002
//#define HAL_KEY_EVENT          0x0100//assign short key event in your app event process

#ifdef HAL_KEY_SUPPORT_LONG_PRESS
//    #define KEY_DEMO_LONG_PRESS_EVT   0x0200 //if use long key,assign long key event in your app process
#endif

static void key_press_evt(uint8_t i, key_evt_t key_evt)
{
    LOG("\nkey index:%d gpio:%d ", i, key_state.key[i].pin);

    switch(key_evt)
    {
    case HAL_KEY_EVT_PRESS:
        LOG("key(press down)\n");
        break;

    case HAL_KEY_EVT_RELEASE:
        LOG("key(press release)\n");
        break;
#ifdef HAL_KEY_SUPPORT_LONG_PRESS

    case HAL_KEY_EVT_LONG_RELEASE:
        hal_pwrmgr_unlock(MOD_USR1);
        LOG("key(long press release)\n");
        break;
#endif

    default:
        LOG("unexpect\n");
        break;
    }
}

static void P16_wakeup_handler(void)
{
    hal_gpio_cfg_analog_io(P16, Bit_DISABLE);
}

static void P17_wakeup_handler(void)
{
    hal_gpio_cfg_analog_io(P17, Bit_DISABLE);
}

typedef struct _uart_Context
{
    bool        enable;
    uint8_t     tx_state;
    uart_Tx_Buf_t tx_buf;
    uart_Cfg_t  cfg;
} uart_Ctx_t;


//extern uart_Ctx_t m_uartCtx;
void uart_port_reconfig(void)
{
    uart_Cfg_t cfg_user =
    {
        .tx_pin = P14,
        .rx_pin = P15,

        .rts_pin = GPIO_DUMMY,
        .cts_pin = GPIO_DUMMY,
        .baudrate = 115200,
        .use_fifo = TRUE,
        .hw_fwctrl = FALSE,
        .use_tx_buf = FALSE,
        .parity     = FALSE,
        .evt_handler = NULL,
    };
    hal_gpio_fmux(P9, Bit_DISABLE);
    hal_gpio_fmux(P10, Bit_DISABLE);
    hal_gpio_pin_init(P14, OEN);
    hal_gpio_pin_init(P15, IE);
    //m_uartCtx.enable = FALSE;
    hal_uart_init(cfg_user, UART0); //uart init
    LOG("uart new port...\n");
}
#include "pwm.h"
static uint8 cnt = 0;
void pwm_sta(int pwm_val)
{
    pwm_ch_t ir_pwm_config;
//	pwm_ch_t ir_pwm_config1;

    hal_pwm_module_init();

    ir_pwm_config.pwmN             = PWM_CH0;
    ir_pwm_config.pwmPin           = GPIO_P31;
    ir_pwm_config.cmpVal           = pwm_val;
    ir_pwm_config.cntTopVal        = 5000;
    ir_pwm_config.pwmMode          = PWM_CNT_UP;
    ir_pwm_config.pwmPolarity      = PWM_POLARITY_RISING;
    ir_pwm_config.pwmDiv           = PWM_CLK_DIV_64;

//	ir_pwm_config1.pwmN             = PWM_CH1;
//	ir_pwm_config1.pwmPin           = GPIO_P00;
//	ir_pwm_config1.cmpVal           = 16;
//	ir_pwm_config1.cntTopVal        = 32;
//	ir_pwm_config1.pwmMode          = PWM_CNT_UP;
//	ir_pwm_config1.pwmPolarity      = PWM_POLARITY_RISING;
//	ir_pwm_config1.pwmDiv           = PWM_CLK_NO_DIV;


    hal_pwm_ch_start( ir_pwm_config );
//	hal_pwm_ch_start( ir_pwm_config1 );

}
static int my_pwm_val = 0;
void KEY_NEGE_HDL(gpio_pin_e pin, gpio_polarity_e type)
{
    LOG("\n----pwm  start ----\n");
	 hal_pwm_start();
		cnt=~cnt;
	if(cnt==0){
		LOG("\n---- pwm  stop ----\n");
	hal_pwm_module_deinit();

	}else{

		LOG("\n----pwm  start ----\n");
		for(uint8 i=0;i<250;i++){
			my_pwm_val+=50;
		pwm_sta(my_pwm_val);
//osal_start_timerEx(key_TaskID, KEY_DEMO_CYCLE_TIMER, 20);

		}
	}
}
void KEY_POSE_HDL(gpio_pin_e pin, gpio_polarity_e type)
{
    // KEY RELEASE
    LOG("\n----pwm  stop ----\n");

}
void touch_init()
{
    hal_gpio_pin_init(GPIO_P07, IE);

    hal_gpio_pull_set(GPIO_P07, STRONG_PULL_UP);


    hal_gpio_pin_init(GPIO_P14, IE);

    hal_gpio_pull_set(GPIO_P14, STRONG_PULL_UP);

    hal_gpioin_register(GPIO_P14, KEY_POSE_HDL, KEY_NEGE_HDL);
    hal_gpioin_register(GPIO_P07, KEY_POSE_HDL, KEY_NEGE_HDL);

//	hal_gpio_write(P15,0);

}
void Key_Demo_Init(uint8 task_id)
{
    uint8_t i = 0;
    key_TaskID = task_id;
    LOG("pwm demo start...\n");
    hal_gpio_pin_init(GPIO_P02, IE);
    hal_gpio_pull_set(GPIO_P02, PULL_DOWN);
//	hal_gpio_pin_init(GPIO_P31, IE);
//	hal_gpio_pull_set(GPIO_P31, PULL_DOWN);
//	hal_gpio_pin_init(GPIO_P32, IE);
//	hal_gpio_pull_set(GPIO_P32, PULL_DOWN);
//	hal_gpio_pin_init(GPIO_P33, IE);
//	hal_gpio_pull_set(GPIO_P33, PULL_DOWN);
    hal_gpio_write(GPIO_P32, 0);
    hal_gpio_write(GPIO_P33, 0);
    touch_init();
    hal_gpioin_unregister(GPIO_P14);
    pwroff_cfg_t cfg;
    cfg.pin = GPIO_P15;
    cfg.type = POL_FALLING;
    cfg.on_time = 3000;
    hal_pwrmgr_poweroff(&cfg, 1);
//	osal_start_timerEx(key_TaskID, KEY_DEMO_CYCLE_TIMER, 5000);

}

uint16 Key_ProcessEvent( uint8 task_id, uint16 events )
{
    if(task_id != key_TaskID)
    {
        return 0;
    }

    if( events & KEY_DEMO_ONCE_TIMER)
    {
        //LOG("once timer\n");
        osal_start_timerEx( key_TaskID, KEY_DEMO_ONCE_TIMER, 5000);
        return (events ^ KEY_DEMO_ONCE_TIMER);
    }

    if( events & KEY_DEMO_CYCLE_TIMER)
    {
        LOG("\n----test ----\n");
        osal_start_timerEx(key_TaskID, KEY_DEMO_CYCLE_TIMER, 5000);
//		my_pwm_val+=5;
//		my_pwm_val=~my_pwm_val;
//		hal_gpio_write(GPIO_P31,my_pwm_val);
////		if(my_pwm_val<2500){
////			pwm_sta(my_pwm_val);
////		}else{
////			my_pwm_val=0;
////		}
//		osal_start_timerEx(key_TaskID, KEY_DEMO_CYCLE_TIMER, 100);
//        LOG("my_pwm_val =%d\r\n",my_pwm_val);
        return (events ^ KEY_DEMO_CYCLE_TIMER);
    }

    if( events & HAL_KEY_EVENT)                                                     //do not modify,key will use it
    {
        for (uint8 i = 0; i < HAL_KEY_NUM; ++i)
        {
            if ((key_state.temp[i].in_enable == TRUE) ||
                    (key_state.key[i].state == HAL_STATE_KEY_RELEASE_DEBOUNCE))
            {
                gpio_key_timer_handler(i);
            }
        }

        return (events ^ HAL_KEY_EVENT);
    }

#ifdef HAL_KEY_SUPPORT_LONG_PRESS

    if( events & KEY_DEMO_LONG_PRESS_EVT)
    {
        for (int i = 0; i < HAL_KEY_NUM; ++i)
        {
            if(key_state.key[i].state == HAL_KEY_EVT_PRESS)
            {
                LOG("key:%d gpio:%d	", i, key_state.key[i].pin);
                LOG("key(long press down)");
                //user app code long press down process
            }
        }

        return (events ^ KEY_DEMO_LONG_PRESS_EVT);
    }

#endif
    return 0;
}

/*********************************************************************
*********************************************************************/
