/*************************************************************
 * @file		usb.h
 * @brief		APIs for usb App
 * @author		Jiang Kaigan
 * @version		V1.0
 * @date		2020-12-03
 * @par
 * @attention
 *
 * @history		2020-12-03 jkg	create this file
 */
#ifndef _USB_H_ //this file's unique symbol checking section
#define _USB_H_

#ifdef __cplusplus
extern "C" {
#endif  /* __cplusplus */

typedef void (*USB_MOD_CTRL_CBK)(int en_dis);
/*
 *����ԭ��:
 void USB_MOD_CTRL_CBK_PROC(int en_dis){
	if(en_dis){
		//��usbģ���Դ
		//��USBģ��ʱ��
		//��usb������ؿ���
	}else{
		//�ر�usb������ؿ���
		//�ر�usbģ��ʱ��
		//�ر�usbģ���Դ
	}
 }
*/

typedef void (*USB_MOD_IE_CBK)(int en_dis);
/*
 *����ԭ��:
 void USB_MOD_IE_CBK_PROC(int en_dis){
	if(en_dis){
		//usb�ж�ʹ��
	}else{
		//usb�жϽ���
	}
 }
*/

/*define current USB App feature */
#define USB_MAX_CONFIG_NUM				1
#define USB_MAX_STRING_NUM				2

#define _VID_					0x0738
#define _PID_					0x0105

#define _Vendor_String_ID_		0x01
#define _Product_String_ID_		0x02

enum {
	USB_INTFID_AudioAC=0,
	USB_INTFID_AudioAS_MIC,
	USB_INTFID_AudioAS_SPK,
	USB_INTFID_Hid_Mse,
	USB_INTFID_Hid_Dbg,
	USB_INTFID_Hid_MKey,
	USB_MAX_INTERFACE_NUM,
};

enum{
	USB_ENDPID_Default=0,
	USB_ENDPID_Audio_MIC,
	USB_ENDPID_Audio_SPK,

	USB_ENDPID_Hid_MSE,
	USB_ENDPID_Hid_MSE_OUT,
	USB_ENDPID_Hid_DBG_OUT,
	USB_ENDPID_Hid_DBG_IN,
	USB_ENDPID_Hid_MKEY,
	USB_MAX_ENDPOINT_NUM,
};
//ע�⣺
//3435\3431Q usb endpoint����Ϊ5��0~4���� fifo��СΪ64Bytes��TXMAXP��RXMAXP���ֵΪ8
#define AUDIO_MIC_SAMPRATE			16000
#define AUDIO_MIC_CHNs				1
#define AUDIO_MIC_BR				16

#define AUDIO_SPK_SAMPRATE			32000
#define AUDIO_SPK_CHNs				1
#define AUDIO_SPK_BR				16
#define AUDIO_MAXP(chns,br,sr)		(((sr)/1000*1000)==(sr))?((sr/1000)*chns*br/8):((sr/1000+1)*chns*br/8)

#define USBAUDIO_IT_MIC				1
#define USBAUDIO_IT_SPK				2
#define USBAUDIO_OT_MIC				3
#define USBAUDIO_OT_SPK				4

extern volatile unsigned char bUsbConfig; //usb configed value

/*
 *������:
 *	AplUsb_StartTx
 *����:
 *	����usb��ָ��endp��������
 *����:
 *	1.epn:endp��
 *	2.buf,len:���ݲ���
 *����:
 *	��
 *����:
 *
*/
void AplUsb_StartTx(int epn,void*buf,int len);

/*
 *������:
 *	AplUsb_SetTxCbk
 *����:
 *	ָ��endp��������cbk
 *����:
 *	1.epn:endp��
 *	2.cbk:CALLBACK����
 *����:
 *	��
 *����:
 *
*/
void AplUsb_SetTxCbk(int endp_no,void*cbk);

/*
 *������:
 *	AplUsb_SetRxCbk
 *����:
 *	ָ��endp�յ�����cbk
 *����:
 *	1.epn:endp��
 *	2.cbk:CALLBACK����
 *����:
 *	��
 *����:
 *
*/
void AplUsb_SetRxCbk(int endp_no,void*cbk);

/*
 *������:
 *	AplUsb_GetRxBuf
 *����:
 *	��ȡendp��������ָ��
 *����:
 *	1.epn:endp��
 *����:
 *	�������ݻ�����ָ��
 *����:
 *
*/
void *AplUsb_GetRxBuf(int endp_no);

/*
 *������:
 *	AplUsb_GetTxBuf
 *����:
 *	��ȡendp��������ָ��
 *����:
 *	1.epn:endp��
 *����:
 *	�������ݻ�����ָ��
 *����:
 *
*/
void *AplUsb_GetTxBuf(int endp_no);

/*
 *������:
 *	AplUsb_GetTxCbk
 *����:
 *	��ȡָ��endp��������cbk
 *����:
 *	1.epn:endp��
 *����:
 *	cbk����ָ��
 *����:
 *
*/
void *AplUsb_GetTxCbk(int endp_no);

/*
 *������:
 *	AplUsb_GetRxCbk
 *����:
 *	��ȡָ��endp�յ�����cbk
 *����:
 *	1.epn:endp��
 *����:
 *	cbk����ָ��
 *����:
 *
*/
void *AplUsb_GetRxCbk(int endp_no);

/*
 *������:
 *	AplUsb_GetSOF
 *����:
 *	��ȡUSB SOF������
 *����:
 *	1.��
 *����:
 *	SOF����ֵ
 *����:
 *
*/
int AplUsb_GetSOF(void);

/*
 *������:
 *	AplUsb_IsConfigured
 *����:
 *	usb�豸�Ƿ�������
 *����:
 *	1.��
 *����:
 *	0=δ����,1=������
 *����:
 *
*/
int AplUsb_IsConfigured(void);

/*
 *������:
 *	usb_init
 *����:
 *	usb device ��ʼ��
 *����:
 *	1.usb_mod_ctrl_cbk:usb modal���ƻص���usbģ��������оƬ�������ֵĳ�ʼ����ʱ�ӡ���Դ���ص�
 *	2.usb_mod_int_ie_cbk:usb�ж�ʹ��/���ܻص�
 *����:
 *	��
 *����:
 *
*/
void usb_init(void*usb_mod_ctrl_cbk,void*usb_mod_int_ie_cbk);

/*
 *������:
 *	usb_deinit
 *����:
 *	usbģ��ر�
 *����:
 *	1.usb_mod_ctrl_cbk:usb modal���ƻص���usbģ��������оƬ�������ֵĳ�ʼ����ʱ�ӡ���Դ���ص�
 *	2.usb_mod_int_ie_cbk:usb�ж�ʹ��/���ܻص�
 *����:
 *	��
 *����:
 *
*/
void usb_deinit(void*usb_mod_ctrl_cbk,void*usb_mod_int_ie_cbk);
void check_usb_suspendmode(void);
void usb_suspend_wakeup(void);

#ifdef __cplusplus
}
#endif  /* __cplusplus */


#endif
/*end file*/
