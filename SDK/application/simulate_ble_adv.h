#ifndef __SIMULATE_BLE_ADV__
#define __SIMULATE_BLE_ADV__

#define BLE_ADV_ACCESS_ADDR_WIDTH 4
#define BLE_ADV_CHN_NUM 3

void simulate_ble_rf_init();
INT8 ble_adv_send(UINT8 *buf, UINT8 len,UINT8 chn);
INT8 ble_adv_recv(UINT8 *buf,UINT8 len,UINT8 chn);

#endif
