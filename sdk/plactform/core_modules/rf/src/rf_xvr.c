/**
****************************************************************************************
*
* @file rf_xvras.c
*
* @brief Atlas radio initialization and specific functions
*
* Copyright (C) Beken 2009-2015
*
* $Rev: $
*
****************************************************************************************
*/

/**
****************************************************************************************
* @addtogroup RF_XVR
* @ingroup RF
* @brief Radio Driver
*
* This is the driver block for radio
* @{
****************************************************************************************
*/

/**
 *****************************************************************************************
 * INCLUDE FILES
 *****************************************************************************************
 */
#include <string.h>        // for memcpy
#include "co_utils.h"      // common utility definition
#include "co_math.h"       // common math functions
#include "co_endian.h"     // endian definitions
#include "rf.h"            // RF interface
#include "em_map.h"        // RF area mapping

#include "rwip.h"          // for RF API structure definition
#include "reg_blecore.h"   // ble core registers
#include "reg_ble_em_cs.h" // control structure definitions

#include "BK3432_reg.h"           // Platform register
#include "icu.h"
#include "rwip_config.h" // stack configuration




#define RPL_POWER_MAX               0x0f


void initial_xver_BK3432_openLoop(void);
void CLK32K_AutoCali_init(void);


/**
 *****************************************************************************************
 * @brief Init RF sequence after reset.
 *****************************************************************************************
 */

static void rf_reset(void)
{
}

/**
 ****************************************************************************************
 * @brief ISR to be called in BLE ISR routine when RF Interrupt occurs.
 *****************************************************************************************
 */


/**
 *****************************************************************************************
 * @brief Get TX power in dBm from the index in the control structure
 *
 * @param[in] txpwr_idx  Index of the TX power in the control structure
 * @param[in] modulation Modulation: 1 or 2 or 3 MBPS
 *
 * @return The TX power in dBm
 *
 *****************************************************************************************
 */

static uint8_t rf_txpwr_dbm_get(uint8_t txpwr_idx, uint8_t modulation)
{
	// Power table should be provided
	return(0);
}

/**
 *****************************************************************************************
 * @brief Sleep function for  RF.
 *****************************************************************************************
 */

static void rf_sleep(void)
{
#if defined(CFG_BLE)
	ble_deepslcntl_set(ble_deepslcntl_get() |
	                   BLE_DEEP_SLEEP_ON_BIT |    // RW BLE Core sleep
	                   BLE_RADIO_SLEEP_EN_BIT |   // Radio sleep
	                   BLE_OSC_SLEEP_EN_BIT);     // Oscillator sleep
#endif // CFG_BLE
}


/**
 *****************************************************************************************
 * @brief Convert RSSI to dBm
 *
 * @param[in] rssi_reg RSSI read from the HW registers
 *
 * @return The converted RSSI
 *
 *****************************************************************************************
 */

static int8_t rf_rssi_convert (uint8_t rssi_reg)
{
	uint8_t RssidBm = 0;

	RssidBm = ((rssi_reg) >> 1) - 118;

	return(RssidBm);
}


static uint32_t rf_rpl_reg_rd (uint16_t addr)
{
	uint32_t ret;

	ret = REG_PL_RD(addr);

	return ret;
}

static void rf_rpl_reg_wr (uint16_t addr, uint32_t value)
{
	REG_PL_WR(addr, value);
}
/**
 ****************************************************************************************
 * RADIO FUNCTION INTERFACE
 ****************************************************************************************
 **/

static void rf_force_agc_enable(bool en)
{

	ble_forceagc_en_setf(en);

}
void rf_init(struct rwip_rf_api *api)
{
	// Initialize the RF driver API structure
	api->reg_rd = rf_rpl_reg_rd;
	api->reg_wr = rf_rpl_reg_wr;
	api->txpwr_dbm_get = rf_txpwr_dbm_get;
	api->txpwr_max = RPL_POWER_MAX;
	api->sleep = rf_sleep;
	api->reset = rf_reset;

#if defined(CFG_BLE)
	api->force_agc_enable = rf_force_agc_enable;
#endif //CFG_BLE

	api->rssi_convert = rf_rssi_convert;

	initial_xver_BK3432_openLoop();
}

void Delay_us(int num)
{
	int x, y;
	for(y = 0; y < num; y ++ )
	{
		for(x = 0; x < 10; x++);
	}
}

void Delay(int num)
{
	int x, y;
	for(y = 0; y < num; y ++ )
	{
		for(x = 0; x < 50; x++);
	}
}

void Delay_ms(int num) //sync from svn revision 18
{
	int x, y;
	for(y = 0; y < num; y ++ )
	{
		for(x = 0; x < 3260; x++);
	}

}

volatile uint32_t XVR_ANALOG_REG_BAK[16] = {0};

void kmod_calibration(void)
{
	/* 1、在初始化0X26的 [16:28] = 0x1084
	    2、在0X30的BT 设置成 BT = 1去校准
	    3、校准完成后将在0X30的BT 设置成 BT = 0.5
	*/

	uint32_t value;
	uint32_t value_kcal_result;

	XVR_REG24  |= (0x1 << 20);

	XVR_REG24  |= (0xf << 7);
	XVR_REG24  &= ~(0x1 << 17);
	XVR_REG24  &= ~(0x7f);
	XVR_REG25 |= (1<<12);
	Delay_ms(10);
	XVR_REG25 |= (1<<13);

	Delay_ms(10);

	XVR_ANALOG_REG_BAK[3] &= ~(0x1 << 6);
	XVR_REG03 = XVR_ANALOG_REG_BAK[3];
	Delay_ms(10);

	XVR_ANALOG_REG_BAK[3] |= (0x1 << 7);
	XVR_REG03 = XVR_ANALOG_REG_BAK[3];
	Delay_ms(10);
	XVR_REG25 |= (1<<16);

	Delay_ms(200);
	value = XVR_REG12;

	value = ((value >> 16) & 0x1fff);


	value_kcal_result =  ((256*250/value)&0x1ff) ;  //2M :((256*250/value)&0x1ff); 1M:((256*125/value)&0x1ff)

	//	uart_printf_test("value = 0x%x,value_kcal_result = 0x%x\r\n",value,value_kcal_result);
	XVR_REG30 &= (~(0x1ff<<8));
	XVR_REG30 |= (value_kcal_result<<8);
	Delay_ms(100);
	XVR_REG25 &= (~(1<<12));
	XVR_REG25 &= (~(1<<13));

	XVR_ANALOG_REG_BAK[3] &= ~(0x1 << 7);
	XVR_REG03 = XVR_ANALOG_REG_BAK[3];
	Delay_ms(10);

	XVR_ANALOG_REG_BAK[3] |= (0x1 << 6);
	XVR_REG03 = XVR_ANALOG_REG_BAK[3];

	XVR_REG25 &= (~(1<<16));

	XVR_REG24 |= (0x1 << 17);
	XVR_REG24  &= ~(0x1 << 20);

	XVR_REG30 |= (0x01 << 0);
	Delay_ms(200);
	Delay_ms(100);

}






#define RF_TEST 0
#define TEST_RC 0
#define INNER_HZ32000				0


uint32_t XVR_REG_INIT_VAL[0X50]=
{
	[0x0] = 0XC4B03210, // REG_0
	[0x1] = 0X8295C300, // REG_1
	[0x2] = 0X2F22A000, // REG_2
	[0x3] = 0X2F62A462, // REG_3
	[0x4] = 0X5F9156CB, // REG_4
	[0x5] = 0X48205211, // REG_5
	[0x6] = 0X847A8A00, // REG_6
	[0x7] = 0XAA003fC4, // REG_7
	[0x8] = 0X7C1C00d , // REG_8
#if (HZ32000)	
	[0x9] = 0X70203C08, // REG_9
#else	
    [0x9] = 0X74203C08, // REG_9
#endif
	[0xA] = 0X9C275847, // REG_A
	[0xB] = 0X0FD93F23, // REG_B
	[0xC] = 0X8000D008, // REG_C
	[0xD] = 0X00000000, // REG_D
	[0xE] = 0X00000000, // REG_E
	[0xF] = 0X00000000, // REG_F
	[0x10] = 0x00083435, // REG_10
	[0x11] = 0x16810020, // REG_11
	[0x12] = 0x00003C00, // REG_12
	[0x13] = 0x00000000, // REG_13
	[0x14] = 0x00080000, // REG_14
	[0x15] = 0x00000000, // REG_15
	[0x16] = 0x00000000, // REG_16
	[0x17] = 0x00000000, // REG_17
	[0x18] = 0x000001FF, // REG_18
	[0x19] = 0x00000000, // REG_19
	[0x1A] = 0x00000000, // REG_1A
	[0x1B] = 0x00000000, // REG_1B
	[0x1C] = 0x00000000, // REG_1C
	[0x1D] = 0x00000000, // REG_1D
	[0x1E] = 0X00000000, // REG_1E
	[0x1F] = 0X00000000, // REG_1F
	[0x20] = 0x8E89BED6, // REG_20
	[0x21] = 0x96000000, // REG_21
	[0x22] = 0x78000000, // REG_22
	[0x23] = 0xA0000000, // REG_23
	[0x24] = 0x001E0082, // REG_24
	[0x25] = 0X00000000, // REG_25
	[0x26] = 0x10840505, // REG_26
	[0x27] = 0x0008C900, // REG_27
	[0x28] = 0x01011010, // REG_28
	[0x29] = 0x3C104E00, // REG_29
	[0x2A] = 0x0e103D68, // REG_2A
	[0x2B] = 0x00000408, // REG_2B
	[0x2C] = 0x00000000, // REG_2C
	[0x2D] = 0x082CC444, // REG_2D
	[0x2E] = 0x00000000, // REG_2E
	[0x2F] = 0X00000000, // REG_2F
	[0x30] = 0x10010000, // REG_30
	[0x31] = 0X00000000, // REG_31
	[0x32] = 0X00000000, // REG_32
	[0x33] = 0X00000000, // REG_33
	[0x34] = 0X00000000, // REG_34
	[0x35] = 0X00000000, // REG_35
	[0x36] = 0X00000000, // REG_36
	[0x37] = 0X00000000, // REG_37
	[0x38] = 0X00000000, // REG_38
	[0x39] = 0X00000000, // REG_39
	[0x3A] = 0x00128000, // REG_3A
	[0x3B] = 0x22341048, // REG_3B
	[0x3C] = 0x01FF1c00, // REG_3C
	[0x3D] = 0x00000000, // REG_3D
	[0x3E] = 0X00000000, // REG_3E
	[0x3F] = 0X00000000, // REG_3F
	[0x40] = 0x01000000, // REG_40
	[0x41] = 0x07050402, // REG_41
	[0x42] = 0x120F0C0A, // REG_42
	[0x43] = 0x221E1A16, // REG_43
	[0x44] = 0x35302B26, // REG_44
	[0x45] = 0x4B45403A, // REG_45
	[0x46] = 0x635D5751, // REG_46
	[0x47] = 0x7C767069, // REG_47
	[0x48] = 0x968F8983, // REG_48
	[0x49] = 0xAEA8A29C, // REG_49
	[0x4A] = 0xC5BFBAB4, // REG_4A
	[0x4B] = 0xD9D4CFCA, // REG_4B
	[0x4C] = 0xE9E5E1DD, // REG_4C
	[0x4D] = 0xF5F3F0ED, // REG_4D
	[0x4E] = 0xFDFBFAF8, // REG_4E
	[0x4F] = 0xFFFFFFFE, // REG_4F

};


void initial_xver_BK3432_openLoop(void)
{


	//Delay_ms(10);
	//Analog Registers
	mHWreg_Assign_XVR_Regsiter(00, XVR_REG_INIT_VAL[0X00]);
	XVR_ANALOG_REG_BAK[0x00] = XVR_REG_INIT_VAL[0X00];

	mHWreg_Assign_XVR_Regsiter(01, XVR_REG_INIT_VAL[0X01]);
	XVR_ANALOG_REG_BAK[0x01] = XVR_REG_INIT_VAL[0X01];

	mHWreg_Assign_XVR_Regsiter(02, XVR_REG_INIT_VAL[0X02]);
	XVR_ANALOG_REG_BAK[0x02] = XVR_REG_INIT_VAL[0X02];

	mHWreg_Assign_XVR_Regsiter(03, XVR_REG_INIT_VAL[0X03]);
	XVR_ANALOG_REG_BAK[0x03] = XVR_REG_INIT_VAL[0X03];

	mHWreg_Assign_XVR_Regsiter(04, XVR_REG_INIT_VAL[0X04]);
	XVR_ANALOG_REG_BAK[0x04] = XVR_REG_INIT_VAL[0X05];

	mHWreg_Assign_XVR_Regsiter(05, XVR_REG_INIT_VAL[0X05]);
	XVR_ANALOG_REG_BAK[0x05] = XVR_REG_INIT_VAL[0X05];

	mHWreg_Assign_XVR_Regsiter(06, XVR_REG_INIT_VAL[0X06]);
	XVR_ANALOG_REG_BAK[0x06] = XVR_REG_INIT_VAL[0X06];


	mHWreg_Assign_XVR_Regsiter(07, XVR_REG_INIT_VAL[0X07]);
	XVR_ANALOG_REG_BAK[0x07] = XVR_REG_INIT_VAL[0X07];
	mHWreg_Assign_XVR_Regsiter(08, XVR_REG_INIT_VAL[0X08]);
	XVR_ANALOG_REG_BAK[0x08] = XVR_REG_INIT_VAL[0X08];

	mHWreg_Assign_XVR_Regsiter(09, XVR_REG_INIT_VAL[0X09]);
	XVR_ANALOG_REG_BAK[0x09] = XVR_REG_INIT_VAL[0X09];


	mHWreg_Assign_XVR_Regsiter(0A, XVR_REG_INIT_VAL[0X0A]);
	XVR_ANALOG_REG_BAK[0x0A] = XVR_REG_INIT_VAL[0X0A];

	mHWreg_Assign_XVR_Regsiter(0B, XVR_REG_INIT_VAL[0X0B]);
	XVR_ANALOG_REG_BAK[0x0B] = XVR_REG_INIT_VAL[0X0B];

	mHWreg_Assign_XVR_Regsiter(0C, XVR_REG_INIT_VAL[0X0C]);
	XVR_ANALOG_REG_BAK[0x0C] = XVR_REG_INIT_VAL[0X0C];

	mHWreg_Assign_XVR_Regsiter(0D, XVR_REG_INIT_VAL[0X0D]);
	XVR_ANALOG_REG_BAK[0x0D] = XVR_REG_INIT_VAL[0X0D];

	mHWreg_Assign_XVR_Regsiter(0E, XVR_REG_INIT_VAL[0X0E]); 
	XVR_ANALOG_REG_BAK[0x0E] = XVR_REG_INIT_VAL[0X0E];

	mHWreg_Assign_XVR_Regsiter(0F, XVR_REG_INIT_VAL[0X0F]);
	XVR_ANALOG_REG_BAK[0x0F] = XVR_REG_INIT_VAL[0X0F];

	mHWreg_Assign_XVR_Regsiter(20, XVR_REG_INIT_VAL[0X20]);
	mHWreg_Assign_XVR_Regsiter(21, XVR_REG_INIT_VAL[0X21]);
	mHWreg_Assign_XVR_Regsiter(22, XVR_REG_INIT_VAL[0X22]);
	mHWreg_Assign_XVR_Regsiter(23, XVR_REG_INIT_VAL[0X23]);
	mHWreg_Assign_XVR_Regsiter(24, XVR_REG_INIT_VAL[0X24]);   //1E0082 0x001E0782
	mHWreg_Assign_XVR_Regsiter(25, XVR_REG_INIT_VAL[0X25]);
	mHWreg_Assign_XVR_Regsiter(26, XVR_REG_INIT_VAL[0X26]);  //0x10200505 // 0x10200400  //3rd filter
	mHWreg_Assign_XVR_Regsiter(27, XVR_REG_INIT_VAL[0X27]);
	mHWreg_Assign_XVR_Regsiter(28, XVR_REG_INIT_VAL[0X28]);
	mHWreg_Assign_XVR_Regsiter(29, XVR_REG_INIT_VAL[0X29]); // 0x7C104E00  ->  0x59104E00 //change fir_en
	mHWreg_Assign_XVR_Regsiter(2A, XVR_REG_INIT_VAL[0X2A]); //120F3D6E 0x12083D6E //  0x12083B6E  ->  0x1208606E //change slot_ctrl
	mHWreg_Assign_XVR_Regsiter(2B, XVR_REG_INIT_VAL[0X2B]);
	mHWreg_Assign_XVR_Regsiter(2C, XVR_REG_INIT_VAL[0X2C]);
	mHWreg_Assign_XVR_Regsiter(2D, XVR_REG_INIT_VAL[0X2D]);
	mHWreg_Assign_XVR_Regsiter(2E, XVR_REG_INIT_VAL[0X2E]);
	mHWreg_Assign_XVR_Regsiter(2F, XVR_REG_INIT_VAL[0X2F]);
	mHWreg_Assign_XVR_Regsiter(30, XVR_REG_INIT_VAL[0X30]);  //0x1000e801
	mHWreg_Assign_XVR_Regsiter(31, XVR_REG_INIT_VAL[0X31]);
	mHWreg_Assign_XVR_Regsiter(32, XVR_REG_INIT_VAL[0X32]);
	mHWreg_Assign_XVR_Regsiter(33, XVR_REG_INIT_VAL[0X33]);
	mHWreg_Assign_XVR_Regsiter(34, XVR_REG_INIT_VAL[0X34]);
	mHWreg_Assign_XVR_Regsiter(35, XVR_REG_INIT_VAL[0X35]);
	mHWreg_Assign_XVR_Regsiter(36, XVR_REG_INIT_VAL[0X36]);
	mHWreg_Assign_XVR_Regsiter(37, XVR_REG_INIT_VAL[0X37]);
	mHWreg_Assign_XVR_Regsiter(38, XVR_REG_INIT_VAL[0X38]);
	mHWreg_Assign_XVR_Regsiter(39, XVR_REG_INIT_VAL[0X39]);
	mHWreg_Assign_XVR_Regsiter(3A, XVR_REG_INIT_VAL[0X3A]);  // 0x0092C000___OK  -. 0x00928000
	mHWreg_Assign_XVR_Regsiter(3B, XVR_REG_INIT_VAL[0X3B]);  //0x20341048  k
	mHWreg_Assign_XVR_Regsiter(3C, XVR_REG_INIT_VAL[0X3C]);
	mHWreg_Assign_XVR_Regsiter(3D, XVR_REG_INIT_VAL[0X3D]);
	mHWreg_Assign_XVR_Regsiter(3E, XVR_REG_INIT_VAL[0X3E]);
	mHWreg_Assign_XVR_Regsiter(3F, XVR_REG_INIT_VAL[0X3F]);
	mHWreg_Assign_XVR_Regsiter(40, XVR_REG_INIT_VAL[0X40]);
	mHWreg_Assign_XVR_Regsiter(41, XVR_REG_INIT_VAL[0X41]);
	mHWreg_Assign_XVR_Regsiter(42, XVR_REG_INIT_VAL[0X42]);
	mHWreg_Assign_XVR_Regsiter(43, XVR_REG_INIT_VAL[0X43]);
	mHWreg_Assign_XVR_Regsiter(44, XVR_REG_INIT_VAL[0X44]);
	mHWreg_Assign_XVR_Regsiter(45, XVR_REG_INIT_VAL[0X45]);
	mHWreg_Assign_XVR_Regsiter(46, XVR_REG_INIT_VAL[0X46]);
	mHWreg_Assign_XVR_Regsiter(47, XVR_REG_INIT_VAL[0X47]);
	mHWreg_Assign_XVR_Regsiter(48, XVR_REG_INIT_VAL[0X48]);
	mHWreg_Assign_XVR_Regsiter(49, XVR_REG_INIT_VAL[0X49]);
	mHWreg_Assign_XVR_Regsiter(4A, XVR_REG_INIT_VAL[0X4A]);
	mHWreg_Assign_XVR_Regsiter(4B, XVR_REG_INIT_VAL[0X4B]);
	mHWreg_Assign_XVR_Regsiter(4C, XVR_REG_INIT_VAL[0X4C]);
	mHWreg_Assign_XVR_Regsiter(4D, XVR_REG_INIT_VAL[0X4D]);
	mHWreg_Assign_XVR_Regsiter(4E, XVR_REG_INIT_VAL[0X3E]);
	mHWreg_Assign_XVR_Regsiter(4F, XVR_REG_INIT_VAL[0X4F]);
/*
	cfg = REG_AHB0_ICU_ANALOG_MODE;

	cfg |= ((0x01 << 18 ));
	REG_AHB0_ICU_ANALOG_MODE = cfg;

	cfg = REG_AHB0_ICU_ANALOG0_PWD;

	cfg &= ~ ((0x01 << 18 ) );
	REG_AHB0_ICU_ANALOG0_PWD = cfg;
*/


	kmod_calibration();
}



void CLK32K_AutoCali_init(void)
{
	mHWreg_Assign_XVR_Regsiter(0C, 0x80005008);  //0x8000D008  0x80009008
	XVR_ANALOG_REG_BAK[0x0C] = 0x80005008;


	mHWreg_Assign_XVR_Regsiter(0C, 0x8000D008);  //0x8000D008  0x80009008
	XVR_ANALOG_REG_BAK[0x0C] = 0x8000D008;
	Delay_ms(20);

}
