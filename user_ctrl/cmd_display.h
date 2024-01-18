#ifndef _CMD_DISPLAY_H_
#define _CMD_DISPLAY_H_

#include <stdbool.h>          // standard boolean definitions
#include <stdint.h>           // standard integer functions

#define JL_INFO 0
#define TY_INFO 1
#if TY_INFO
#define TUYA_UID_LEN    16+1
#define TUYA_MAC_LEN  	12+1
#define TUYA_KEY_LEN  	32+1
#define TY_AUTH_DATA 	0x50000
#define TY_AUTH_SIZE    0x1000

#endif

#if JL_INFO
#define JL_UID_LEN 	  	2+6+1
#define LEN_JL_MAC  	12+1
#define JL_KEY_LEN  	16+1
#define JL_LIC_LEN  	32+1
#define JL_CODE_LEN  	32+1
#define JL_INFO_ADDR 	0x8000
#define JOY_LINK_ADDR 	0x8080//

#endif

#if TY_INFO
typedef struct //tuya_auth_info
{
	uint8_t uid[TUYA_UID_LEN];
	uint8_t mac[TUYA_MAC_LEN];
	uint8_t key[TUYA_KEY_LEN];
}tuya_auth_dt;//authorization information
extern tuya_auth_dt tuya_dt;
#endif

#if JL_INFO
typedef struct //tuya_auth_info
{
	uint8_t uid[JL_UID_LEN];
	uint8_t mac[LEN_JL_MAC];
	uint8_t lic[JL_LIC_LEN];
	uint8_t key[JL_KEY_LEN];
	uint8_t code[JL_CODE_LEN];
}jl_auth_dt;
extern jl_auth_dt jl_dt;
#endif

#if 0//TY_INFO
typedef struct 
{
	uint8_t mac[6];
	uint8_t key[32];
	uint8_t uid[16];
}tuya_data;

#endif

#if JL_INFO
void app_get_jl_mac(uint8_t* p_data, uint16_t len);
void app_get_jl_key(uint8_t* p_data, uint16_t len);
void app_get_jl_uid(uint8_t* p_data, uint16_t len);
void app_get_jl_lic(uint8_t* p_data, uint16_t len);
void app_get_jl_code(uint8_t* p_data, uint16_t len);
void app_set_jl_mac(uint8_t* p_data, uint16_t len);
void app_set_jl_key(uint8_t* p_data, uint16_t len);
void app_set_jl_uid(uint8_t* p_data, uint16_t len);
void app_set_jl_lic(uint8_t* p_data, uint16_t len);
void app_set_jl_code(uint8_t* p_data, uint16_t len);
#endif
#if TY_INFO
void app_get_tuya_mac(uint8_t * p_data, uint16_t len);
void app_get_tuya_key(uint8_t * p_data, uint16_t len);
void app_get_tuya_uid(uint8_t * p_data, uint16_t len);
void app_set_tuya_mac(uint8_t * p_data, uint16_t len);
void app_set_tuya_key(uint8_t * p_data, uint16_t len);
void app_set_tuya_uid(uint8_t * p_data, uint16_t len);
#endif


#endif //_CMD_DISPLAY_H_
