#include "flash.h"
#include "log.h"
#include "uart.h"
#include "board.h"
#include "gpio.h"
#include <stdio.h>
#include <string.h>   
#include "user_ctrl.h"
#include "cmd_ctrl.h"
#include "cmd_display.h"

#if TY_INFO
tuya_auth_dt tuya_dt;
#endif

#if JL_INFO
jl_auth_dt jl_dt;
#endif

#if TY_INFO
void app_get_tuya_key(uint8_t * p_data, uint16_t len)
{
    memset(tuya_dt.key, 0, TUYA_KEY_LEN);
	cyd_flash_rd((uint8_t*)&tuya_dt,TY_AUTH_DATA, sizeof(tuya_dt));
	dbg_printf("get_key = %02s\r\n", tuya_dt.key);
}
void app_get_tuya_mac(uint8_t* p_data, uint16_t len)
{
	memset(tuya_dt.mac, 0, TUYA_MAC_LEN);
	cyd_flash_rd((uint8_t*)&tuya_dt,TY_AUTH_DATA, sizeof(tuya_dt));
	dbg_printf("get_mac = %02s\r\n", tuya_dt.mac);
}
void app_get_tuya_uid(uint8_t* p_data, uint16_t len)
{
    memset(tuya_dt.uid, 0, TUYA_UID_LEN);
	cyd_flash_rd((uint8_t*)&tuya_dt,TY_AUTH_DATA, sizeof(tuya_dt));
	dbg_printf("get_uid = %02s\r\n", tuya_dt.uid);
}
void app_set_tuya_key(uint8_t * p_data, uint16_t len)
{
    memset(tuya_dt.key, 0, TUYA_KEY_LEN);
    memcpy(tuya_dt.key, p_data, 32);
	cyd_flash_ea(TY_AUTH_DATA, 1);
	cyd_flash_wr((uint8_t*)&tuya_dt,TY_AUTH_DATA, sizeof(tuya_dt));
	dbg_printf("set_key = %02s\r\n", tuya_dt.key);
}
void app_set_tuya_mac(uint8_t* p_data, uint16_t len)
{
	memset(tuya_dt.mac, 0, TUYA_MAC_LEN);
    memcpy(tuya_dt.mac, p_data, 12);
	cyd_flash_ea(TY_AUTH_DATA, 1);
	cyd_flash_ea(BOARD_FLASH_TUYA_INFO_START_ADDR, 4);
	cyd_flash_wr((uint8_t*)&tuya_dt,TY_AUTH_DATA, sizeof(tuya_dt));
	dbg_printf("set_mac = %02s\r\n", tuya_dt.mac);
}
void app_set_tuya_uid(uint8_t* p_data, uint16_t len)
{
    memset(tuya_dt.uid, 0, TUYA_UID_LEN);
    memcpy(&tuya_dt.uid[0], p_data, 16);
	cyd_flash_ea(TY_AUTH_DATA, 1);
	cyd_flash_wr((uint8_t*)&tuya_dt,TY_AUTH_DATA, sizeof(tuya_dt));
	dbg_printf("set_uid = %02s\r\n", tuya_dt.uid);
}
#endif
#if JL_INFO
void app_get_jl_key(uint8_t * p_data, uint16_t len)
{
    app_flash_read((uint8_t*)&jl_dt, JOY_LINK_ADDR, sizeof(jl_dt));
	at_log("get_key = %02s\r\n", jl_dt.key);
}
void app_get_jl_mac(uint8_t* p_data, uint16_t len)
{
    app_flash_read((uint8_t*)&jl_dt, JOY_LINK_ADDR, sizeof(jl_dt));
	at_log("get_mac = %02s\r\n", &jl_dt.mac[0]);
}
void app_get_jl_uid(uint8_t* p_data, uint16_t len)
{
    app_flash_read((uint8_t*)&jl_dt, JOY_LINK_ADDR, sizeof(jl_dt));
	at_log("get_uid = %02s\r\n", &jl_dt.uid[2]);
}
void app_get_jl_lic(uint8_t* p_data, uint16_t len)
{
    app_flash_read((uint8_t*)&jl_dt, JOY_LINK_ADDR, sizeof(jl_dt));
	at_log("get_lic = %02s\r\n", &jl_dt.lic[0]);
}
void app_get_jl_code(uint8_t* p_data, uint16_t len)
{
    app_flash_read((uint8_t*)&jl_dt, JOY_LINK_ADDR, sizeof(jl_dt));
	at_log("get_code = %02s\r\n", &jl_dt.code[0]);
}
void app_set_jl_key(uint8_t * p_data, uint16_t len)
{
	memset(jl_dt.key, 0, JL_KEY_LEN);
    memcpy(jl_dt.key, p_data, JL_KEY_LEN-1);
    app_flash_erase(JOY_LINK_ADDR, 1);
    app_flash_write((uint8_t*)&jl_dt, JOY_LINK_ADDR, sizeof(jl_dt));
	UART_PRINTF("set_key = %02s\r\n", jl_dt.key);
}
void app_set_jl_mac(uint8_t* p_data, uint16_t len)
{
    memset(jl_dt.mac, 0, LEN_JL_MAC);
    memcpy(jl_dt.mac, p_data, LEN_JL_MAC-1);
    app_flash_erase(JOY_LINK_ADDR, 1);
    app_flash_write((uint8_t*)&jl_dt, JOY_LINK_ADDR, sizeof(jl_dt));
	UART_PRINTF("set_mac = %02s\r\n", &jl_dt.mac[0]);
}
void app_set_jl_uid(uint8_t* p_data, uint16_t len)
{
    memset(jl_dt.uid, 0, JL_UID_LEN);
    memcpy(&jl_dt.uid[2], p_data, JL_UID_LEN-3);
    app_flash_erase(JOY_LINK_ADDR, 1);
    app_flash_write((uint8_t*)&jl_dt, JOY_LINK_ADDR, sizeof(jl_dt));
	UART_PRINTF("set_uid = %02s\r\n", &jl_dt.uid[2]);
}
void app_set_jl_lic(uint8_t* p_data, uint16_t len)
{
    memset(jl_dt.lic, 0, JL_LIC_LEN);
    memcpy(jl_dt.lic, p_data, JL_LIC_LEN-1);
    app_flash_erase(JL_INFO_ADDR, 1);
    app_flash_erase(JOY_LINK_ADDR, 1);
    app_flash_write((uint8_t*)&jl_dt, JOY_LINK_ADDR, sizeof(jl_dt));
	UART_PRINTF("set_lic = %02s\r\n", &jl_dt.lic[0]);
}
void app_set_jl_code(uint8_t* p_data, uint16_t len)
{
    memset(jl_dt.code, 0, JL_CODE_LEN);
    memcpy(&jl_dt.code[0], p_data, JL_CODE_LEN-1);
    app_flash_erase(JOY_LINK_ADDR, 1);
    app_flash_write((uint8_t*)&jl_dt, JOY_LINK_ADDR, sizeof(jl_dt));
	UART_PRINTF("set_code = %02s\r\n", &jl_dt.code[0]);
}

void app_set_rmt_mac(uint8_t* p_data, uint16_t len)
{
    uint8_t mac[5] = {0};
    uint8_t mac_len = 0;
	UART_PRINTF("set_mac = %02s\r\n", &p_data[0]);
	str_to_hex(&p_data[0], &mac[0], &mac_len);
	app_get_log_u8(&mac[0], 5, "mac");
    memcpy(&flash_dt.info_list[mac[0]].addr, &mac[1], mac_len);
	for(uint8_t cnt = 0; cnt < AK_NUM; cnt ++)
	{
		uart_printf("ÉèÖÃinfo_list[%02d].addr.. = %08x\r\n", cnt, flash_dt.info_list[cnt].addr);
	}
	app_flash_erase(INFO_ONE_ADDR, 0);
	app_flash_write((uint8_t*)&flash_dt, INFO_ONE_ADDR, sizeof(flash_dt));
}
#endif

