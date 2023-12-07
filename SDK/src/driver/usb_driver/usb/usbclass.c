/*************************************************************
 * @file		usbclass.c
 * @brief		HW driver of Beken Usb(Mentor Graphics)
 * @author		Jiang Kaigan
 * @version		V1.0
 * @date		2020-12-03
 * @par
 * @attention
 *
 * @history		2020-12-03 jkg	create this file
 */


/*internal symbols import section*/
#include "usbclass.h"
#include "usbdef.h"
#include "usb.h"
/*external symbols import section*/

/*variable implement section*/

UI8 bUsbState ;

extern UI8 ep0PktMaxSz;
extern UI8 GetRqtRecipient(void * setupPkt);
extern void HwUsb_SendStall(int endpn);
extern void HwUsb_SendZlp(int endpn);
//extern void SetRxParameter(CEndpoint * endp, void * setupPkt, void * dat, UI32 sz)
/*
 *������:
 *	SetRxParameter
 *����:
 *	�趨�˵���ղ���
 *����:
 *	1.endp:�˵������
 *	2.setupPkt:setup��
 *	3.dat:���ջ�����ָ��
 *	4.sz:���ջ���������
 *����:
 *	��
 *����:
 *	1.Ŀǰֻ֧��С��8bytes�����ݽ��գ�����8�������¶���
*/
//static
void SetRxParameter(CEndpoint*endp,void*setupPkt,void*dat,UI32 sz) {
	UI16*ptr=(UI16*)setupPkt;
	UI16 rlen=ptr[3];
	endp->lmtLen=ep0PktMaxSz;
	endp->rxPtr=dat;
	endp->rxLen=rlen;//sz;
	endp->status|=USB_EndpStt_Rx;
}

/*
 *������:
 *	HalUsbClassRequest
 *����:
 *	USB��׼��������
 *����:
 *	��
 *����:
 *	��
 *����:
 *	1.�ı�:
 *	2.stack:
*/
void HalUsbClassRequest(void*setupPkt,CEndpoint*endp) {
	UI8 *ptr=(UI8*)setupPkt;
	UI8 rcp=GetRqtRecipient(setupPkt);
	UNIT tmp;
	if((rcp>=USB_RT_RECIPIENT_OTHER)||
		(rcp==USB_RT_RECIPIENT_DEVICE)){
		HwUsb_SendStall(0);
		return;
	}
	if(rcp==USB_RT_RECIPIENT_INTF){
		tmp=ptr[4];
		if((tmp==USB_INTFID_Hid_Mse)||(tmp==USB_INTFID_Hid_Dbg)||(tmp==USB_INTFID_Hid_MKey)){//HID class cmd
			tmp=ptr[1];
			if(tmp==HID_RQT_Set_IDLE){
				UNS_SET(endp,UNS_Complete);
				HwUsb_SendZlp(0);
				return;
			}
			if(tmp==HID_RQT_Set_Report){
				//SetRxParameter(endp,setupPkt,bIntOutBuf,dbgPktMaxSz);
				//HwUdpSetRxStat(udp,0,EPSTAT_VALID);
				//UNS_SET(endp,UNS_DataOut);
				//return;
			}
		}

//		HwUsb_SendZlp(0);
//		UNS_SET(endp,UNS_Complete);
		UNS_SET(endp,UNS_Complete);
		HwUsb_SendStall(0);
		return;
	}
	if(rcp==USB_RT_RECIPIENT_ENDP){
//		HwUsb_SendZlp(0);
		UNS_SET(endp,UNS_Complete);
		HwUsb_SendStall(0);
		return;
	}

}
/*end file*/

