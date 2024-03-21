//#include <ABSACC.H>
#include "..\headfile\includes.h"
#include "BLE_boardcast.h"
#include "simulate_ble_adv.h"
#include "..\driver\bk24xx.h"

static code UINT8 BLE_ADV_CHN[BLE_ADV_CHN_NUM] = {2, 26, 80};

void simulate_ble_rf_init()
{
}

//chn:0~39,0~10=2404~2404+(n*2),11~36=2428~2428+((n-11)*2),37=2402,38=2426,39=2480
//adv只能在37、38、39 chn发送

INT8 ble_adv_send(UINT8 *buf, UINT8 len,UINT8 chn)
{
	if(chn>=37)
	{
		driver_rf_set_channel(BLE_ADV_CHN[chn-37]);
	}
	else 
	{
		return 0;
	}
	driver_rf_spi_set_mode_tx();
	BlePacketEncode(rf_fifo_data, buf, len, chn);
	driver_rf_data_send(len + 3);
	return 1;
}

INT8 ble_adv_recv(UINT8 *buf,UINT8 len,UINT8 chn)
{
	if(chn>=37)
	{
		driver_rf_set_channel(BLE_ADV_CHN[chn-37]);
	}
	else 
	{
		return 0;
	}
	driver_rf_spi_set_mode_rx();
	while(1)
	{
		driver_rf_receive_packet();
		if(flag_rf_driver_received)
		{
			flag_rf_driver_received = 0;
			BlePacketDeductive(buf, rf_fifo_data, len, chn);
			break;
		}
	}
	return 1;
}

