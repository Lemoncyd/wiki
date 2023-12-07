#ifndef _DRIVER_RF_H_
#define _DRIVER_RF_H_
//#include "BK_System.h"
#include "Types.h"
#include "driver_bk24.h"
// Interrupt status
#define STATUS_RX_TX_MAX                        0x7e  // 0x70
#define STATUS_RX_TX_MAX_TXFULL                 0x71
#define STATUS_RX_DR                            0x40
#define STATUS_TX_DS                            0x20
#define STATUS_MAX_RT                           0x10
#define STATUS_TX_FULL                          0x01
#define STATUS_TX                               0x30
#define STATUS_RX_EMPTY                         0x0e
#define RF_CHIP_ENABLE                          TRX_CE = 0x01
#define RF_CHIP_DISABLE                         TRX_CE = 0x00
#define RF_POWER_UP                             PowerUp_Rf()
#define RF_POWER_DOWN                            PowerDown_Rf()
#define RF_CMD_NOP
#define RF_CMD_FLUSH_TX                         { TRX_CMD = 0xA0; }
#define RF_CMD_FLUSH_RX                         { TRX_CMD = 0x80; }
#define RF_CMD_CLEAR_STATUS_RX        { TRX_IRQ_STATUS = STATUS_RX_DR; }
#define RF_CMD_CLEAR_STATUS_TX        { TRX_IRQ_STATUS = STATUS_TX_DS; }
#define RF_CMD_CLEAR_STATUS_MAX          { TRX_IRQ_STATUS = STATUS_MAX_RT; }
#define RF_CMD_CLEAR_STATUS_ALL           { TRX_IRQ_STATUS = STATUS_RX_TX_MAX; }
#define MAX_PACKET_LEN      32

extern uint8 RF_CHANNEL_TABLE[4][4];

extern uint8 uRXDataLens;
extern uint8 flag_test;
extern uint8 channel_search;

extern uint32 P0_Address[5];
extern uint32 rf_address_tx_pub[5];

void PowerUp_Rf(void);
void PowerDown_Rf(void);
void SwitchToRxMode(void);
void SwitchToTxMode(void);
void ChangeTxPipe(uint8 pipe);
void R_RX_PAYLOAD(uint8 *pBuf, uint8 bytes);
void W_TX_PAYLOAD(uint8 *pBuf, uint8 bytes);
void W_TX_PAYLOAD_NOACK(uint8 *pBuf, uint8 bytes);
void W_ACK_PAYLOAD(uint8 *pBuf, uint8 bytes, uint8 pipe);
void Rf_Init(void);
void memcpy_2461(volatile uint32 *p, uint32 *val, uint8 len);
void SetDataRate(int data_rate);
void driver_rf_channel_switch(void);
void driver_set_rf_channel(uint8 uArray, uint8 uIndx);
uint32_t driver_rf_data_send(uint8 len);
uint32 driver_rf_data_retrans(void);
void driver_rf_maxRT_clear(void);
uint8 driver_rf_data_send_noACK(uint8 len);
uint8 driver_rf_data_send_ACK(uint8 len);
void driver_rf_receive_package(void);
void driver_rf_ouput_power_value_set(uint8 power_level);
uint8_t get_rf_rssi(void);

#endif
