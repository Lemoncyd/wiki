/*************************************************************
 * @file		usb.c
 * @brief		main protocol of USB spec1.1 chapter 9
 * @author		Jiang Kaigan
 * @version		V1.0
 * @date		2020-12-03
 * @par
 * @attention
 *
 * @history		2020-12-03 jkg	create this file
 */


/*file type declaration section*/
#define _C_SRC_
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/*internal symbols import section*/
#include "usbclass.h"
#include "usb.h"
#include "usbdef.h"
#include "..\driver_usb.h"
#include "bim_uart2.h"

//#include "user_config.h"


#define USB_MemAlloc(a) malloc(a)
#define USB_MemFree free


/*external symbols import section*/
extern void HwUsb_SendZlp(int endpn);
extern void HwUsb_SendStall(int endpn);
extern void HwUsb_Switch2Endp(int endpn);
extern void HwUsb_SetAddress(int addr);
extern void HwUsb_SendPkt(UI8 epn, CEndpoint * endp);
extern void HalUsbClassRequest(void * setupPkt, CEndpoint * endp);

extern void*USBDesc_GetDeviceDesc(void);

extern void*USBDesc_GetConfigDesc(void);

extern void*USBDesc_GetHidRptDesc(int idx);

extern void*USBDesc_GetStringDesc(int idx);

/*variable implement section*/

typedef struct{
	CBufferBaseDesc rxBuf;//����buf
	CBufferBaseDesc txBuf;//����buf
	CBK_USBAPP txcbk;
	CBK_USBAPP rxcbk;
}CUsbAppIntf;
/////////////////////////////////////////////////////////////////////////////////////////
//interface and endpoint should be arranged in order
volatile UI8 bUsbConfig=0; //usb configed value
extern UI8 bUsbState;
static CUsbAppIntf pipIntf[USB_MAX_ENDPOINT_NUM+1];
UI8	bUsbAlterInterface[USB_MAX_INTERFACE_NUM];
UI8 ep0PktMaxSz=0x40;
CSuspendMode suspend_status;

/*
 *������:
 *	��׼usb����������
 *����:
 *
 *����:
 *	��
 *����:
 *	��
 *����:
 *
*/
/*function implement section*/


void* _find_tarDesc(void*desc,int sz,int tarTyp,int index){
	CUsbCommonDesc*pdesc=(CUsbCommonDesc*)desc;
	char*ptr=(char*)pdesc;
	int cnt=0;
	while(1){
		if((ptr-(char*)desc)>=sz)break;
		if(pdesc->devType==tarTyp){
			cnt++;
			if(index==cnt)return(pdesc);
		}
		ptr=&ptr[pdesc->len];
		pdesc=(CUsbCommonDesc*)ptr;
	}
	return(NULL);
}

void* _find_HidClassRpt(void*desc,int sz,int intfno){
	CUsbCommonDesc*pdesc=(CUsbCommonDesc*)desc;
	CUsbIntfDesc*pintf=NULL;
	char*ptr=(char*)pdesc;
//	int cnt=0;
	while(1){
		if((ptr-(char*)desc)>=sz)break;
		if(pdesc->devType==USB_DESCTYPE_INTERFACE){
			pintf=(CUsbIntfDesc*)pdesc;
			if(pintf->bIntfNo==intfno){
				return &ptr[pdesc->len];
			}
		}
		ptr=&ptr[pdesc->len];
		pdesc=(CUsbCommonDesc*)ptr;
	}
	return(NULL);
}

void* _get_nextDesc(void*desc,int sz,void*cur){
	CUsbCommonDesc*pdesc=(CUsbCommonDesc*)cur;
	char*ptr=(char*)pdesc;
	ptr=&ptr[pdesc->len];
	pdesc=(CUsbCommonDesc*)ptr;
	if((ptr-(char*)desc)>=sz)return NULL;
	return(pdesc);
}

void* _find_endpDesc_byEndpNo(void*desc,int sz,int endp_no){
	CUsbCommonDesc*pdesc=(CUsbCommonDesc*)desc;
	CUsbEndpDesc*pendp=NULL;
	char*ptr=(char*)pdesc;
	while(1){
		if((ptr-(char*)desc)>=sz)break;
		if(pdesc->devType==USB_DESCTYPE_ENDPOINT){
			pendp=(CUsbEndpDesc*)pdesc;
			if((pendp->bEndpAddr&0x0f)==endp_no)return(pdesc);
		}
		ptr=&ptr[pdesc->len];
		pdesc=(CUsbCommonDesc*)ptr;
	}
	return(NULL);
}


void AplUsb_SetRxCbk(int endp_no,void*cbk){
	if(endp_no>USB_MAX_ENDPOINT_NUM)return;
	pipIntf[endp_no].rxcbk=(CBK_USBAPP)cbk;
}

void *AplUsb_GetRxBuf(int endp_no){
	if(endp_no>USB_MAX_ENDPOINT_NUM){
		return NULL;
	}else{
		return pipIntf[endp_no].rxBuf.ptr;
	}
}
void *AplUsb_GetTxBuf(int endp_no){
	if(endp_no>USB_MAX_ENDPOINT_NUM){
		return NULL;
	}else{
		return pipIntf[endp_no].txBuf.ptr;
	}
}
void *AplUsb_GetTxCbk(int endp_no){
	if(endp_no>USB_MAX_ENDPOINT_NUM){
		return NULL;
	}else{
		return pipIntf[endp_no].txcbk;
	}
}

void *AplUsb_GetRxCbk(int endp_no){
	if(endp_no>USB_MAX_ENDPOINT_NUM){
		return NULL;
	}else{
		return pipIntf[endp_no].rxcbk;
	}
}

int AplUsb_IsConfigured(void){
	return(bUsbConfig);
}

void _build_pipRxBuf(int endp_no,int maxp){
	if(endp_no>USB_MAX_ENDPOINT_NUM)return;
	pipIntf[endp_no].rxBuf.sz=0;
	if(pipIntf[endp_no].rxBuf.ptr){
		USB_MemFree(pipIntf[endp_no].rxBuf.ptr);
		pipIntf[endp_no].rxBuf.ptr=NULL;
	}
	pipIntf[endp_no].rxBuf.ptr=USB_MemAlloc(maxp);//NULL;//

}

void _build_pipTxBuf(int endp_no,int maxp){
	if(endp_no>USB_MAX_ENDPOINT_NUM)return;
	if(pipIntf[endp_no].txBuf.ptr){
		USB_MemFree(pipIntf[endp_no].txBuf.ptr);
		pipIntf[endp_no].txBuf.ptr=NULL;
	}
	pipIntf[endp_no].txBuf.sz=0;
	pipIntf[endp_no].txBuf.ptr=USB_MemAlloc(maxp);//NULL;//

}

int _config_endp(void*desc,int sz){
	CUsbEndpDesc*pendpDesc=NULL;
	int index=1;
	int cnt=0;
	while(1){
		pendpDesc=(CUsbEndpDesc*)_find_tarDesc(desc, sz, USB_DESCTYPE_ENDPOINT, index);
		if(pendpDesc==NULL)break;
		cnt++;
		HwUsb_Switch2Endp(pendpDesc->bEndpAddr&0x0f);
		if(pendpDesc->bEndpAddr&BIT(7)){//tx mode
			REG_USB_TXMAXP=(pendpDesc->wMaxPktSz>>3);//
			REG_USB_CSR02=BIT(5);//tx mode
			REG_USB_CSR0=BIT(3);
			if((pendpDesc->bmAttribute&0x03)==USB_ENDP_ISO){
				REG_USB_CSR02|=BIT(6);//iso
			}

			if((pendpDesc->bEndpAddr&0x0f)&BIT(3))REG_USB_INTRTX2E|=BIT((pendpDesc->bEndpAddr&0x07));
			else
				REG_USB_INTRTX1E|=BIT((pendpDesc->bEndpAddr&0x07));
			_build_pipTxBuf(pendpDesc->bEndpAddr&0x0f, pendpDesc->wMaxPktSz);
		}else{
			REG_USB_RXMAXP=(pendpDesc->wMaxPktSz>>3);
			REG_USB_CSR02=0;
			REG_USB_RXCSR2=0;//rx mode
			if((pendpDesc->bmAttribute&0x03)==USB_ENDP_ISO){
				REG_USB_RXCSR2|=BIT(6);//iso
			}
			REG_USB_RXCSR1=BIT(7);//clear data toggle
			if((pendpDesc->bEndpAddr&0x0f)&BIT(3))REG_USB_INTRRX2E|=BIT((pendpDesc->bEndpAddr&0x07));
			else
				REG_USB_INTRRX1E|=BIT((pendpDesc->bEndpAddr&0x07));
			_build_pipRxBuf(pendpDesc->bEndpAddr&0x0f, pendpDesc->wMaxPktSz);
		}
		index++;

	}

	return(cnt);
}

int config_device(){
	CBufferBaseDesc*pcfg=(CBufferBaseDesc*)USBDesc_GetConfigDesc();

	return _config_endp(pcfg->ptr,pcfg->sz);
}
/*
 *������:
 *	HalUsbAttibuteInit
 *����:
 *	��ʼ��USB�豸������
 *����:
 *	��
 *����:
 *	��
 *����:
 *	1.�ı�:
 *	2.stack:
*/
void HalUsbAttributeInit(){
	memset(bUsbAlterInterface,0,sizeof(bUsbAlterInterface));
}

/*
 *������:
 *	HwUsbOpen
 *����:
 *	��USB
 *����:
 *	��
 *����:
 *	��
 *����:
 *	1.�ı�:
 *	2.stack:
*/
void HwUsbOpen(){
	CBufferBaseDesc*pdesc=(CBufferBaseDesc*)USBDesc_GetDeviceDesc();
	HalUsbAttributeInit();
	ep0PktMaxSz=((CUsbDevDesc*)pdesc->ptr)->maxPkt;
	memset(pipIntf,0,sizeof(pipIntf));
}

typedef void (*CFunPtr)(void*setupPkt,CEndpoint*endp);

/*
 *������:
 *	URB_NOT_SUPPORT
 *����:
 *	��֧�ֵ�URB
 *����:
 *	1.setupPkt:setup��ָ��
 *	2.endp:�˵������
 *	3.udp:udpָ��
 *����:
 *	��
 *����:
 *	1.�ı�:
 *	2.stack:
*/
void URB_NOT_SUPPORT(void*setupPkt,CEndpoint*endp)
{//send stall
	HwUsb_SendStall(0);
	UNS_SET(endp,UNS_Complete);
}


/*
 *������:
 *	SetRxParameter
 *����:
 *	�趨�˵㷢�Ͳ���
 *����:
 *	1.endp:�˵������
 *	2.setupPkt:setup��
 *	3.dat:���ͻ�����ָ��
 *	4.sz:�������ݳ���
 *����:
 *	��
 *����:
 *	��
*/
static void SetTxParameter(CEndpoint*endp,void*setupPkt,void*dat,UI32 sz)  {
	UI16*ptr=(UI16*)setupPkt;
	UI16 rlen=ptr[3];
	endp->lmtLen=ep0PktMaxSz;
	endp->txPtr=dat;
	if(sz>rlen){
		endp->txLen=rlen;
	}else{
		endp->txLen=sz;
	}
	endp->status|=USB_EndpStt_Tx;
}

//ȡ����Ľ��ն�,usb��׼����3�ֱ�׼���ն�:
//	0.�豸,device;1.�ӿ�,interface;2.�˵�,endpoint
UI8 GetRqtRecipient(void*setupPkt)  {
	UI8*ptr=(UI8*)setupPkt;
	UI8 rcp=ptr[0];
	return(GET_BFD(rcp,0,5));
}

//ȡ���������,usb��׼����3������:
//	0.��׼,standard;1.��,class;2.�����Զ�,vendor
UI8 GetRqtType(void*setupPkt)  {
	UI8*ptr=(UI8*)setupPkt;
	UI8 rcp=ptr[0];
	return(GET_BFD(rcp,5,2));
}

/*
 *������:
 *	URB_GET_STATUS
 *����:
 *	GET_STATUS
 *����:
 *	1.setupPkt:setup��ָ��
 *	2.endp:�˵������
 *	3.udp:udpָ��
 *����:
 *	��
 *����:
 *	1.
*/
uint16 usb_status[3]={
	(0<<_SELF_POWER_)|(1<<_REMOTE_WAKEUP_),
	0x0000,
	0x0000,
};
uint16 usb_endp_status[USB_MAX_ENDPOINT_NUM+1]={0};

void URB_GET_STATUS(void*setupPkt,CEndpoint*endp){
	int rcp=GetRqtRecipient(setupPkt);
	CUsbSetupPkt*psetup=(CUsbSetupPkt*)setupPkt;
	char*ptr=NULL;
	switch(rcp){
		case USB_RT_RECIPIENT_DEVICE:
			ptr=(char*)&usb_status[0];
			break;
		case USB_RT_RECIPIENT_INTF:
			ptr=(char*)&usb_status[1];
			break;
		case USB_RT_RECIPIENT_ENDP:
			ptr=(char*)&usb_endp_status[psetup->pkt.idx&0x0f];
			break;
	}
	if(ptr){
		SetTxParameter(endp,setupPkt,ptr,2);
		UNS_SET(endp,UNS_DataIn);
		HwUsb_SendPkt(0,endp);
	}else{
		UNS_SET(endp,UNS_Complete);
		HwUsb_SendStall(0);
	}
}

/*
 *������:
 *	URB_CLEAR_FEATURE
 *����:
 *	CLEAR_FEATURE
 *����:
 *	1.setupPkt:setup��ָ��
 *	2.endp:�˵������
 *	3.udp:udpָ��
 *����:
 *	��
 *����:
 *	1.
*/
void URB_CLEAR_FEATURE(void*setupPkt,CEndpoint*endp){
// 	int rcp=GetRqtRecipient(setupPkt);
// 	CUsbSetupPkt*psetup=(CUsbSetupPkt*)setupPkt;
// 	if(rcp==USB_RT_RECIPIENT_ENDP){
// 		rcp=psetup->pkt.idx;
// 		HwUsb_Switch2Endp(rcp&0x0f);
// 		REG_USB_CSR0=0;
// 	}
// 	HwUsb_SendZlp(0);
// 	UNS_SET(endp,UNS_Complete);

	int rcp=GetRqtRecipient(setupPkt);
	CUsbSetupPkt*psetup=(CUsbSetupPkt*)setupPkt;
	char*ptr=NULL;
	switch(rcp){
		case USB_RT_RECIPIENT_DEVICE:
			ptr=(char*)&usb_status[0];
			if(psetup->pkt.tar==1){//DEVICE_REMOTE_WAKEUP
				ptr[0]&=_BIT(_REMOTE_WAKEUP_);
			}
			break;
		case USB_RT_RECIPIENT_INTF:
			ptr=(char*)&usb_status[1];
			break;
		case USB_RT_RECIPIENT_ENDP:
			ptr=(char*)&usb_endp_status[psetup->pkt.idx&0x0f];
			if(psetup->pkt.tar==0){
				ptr[0]&=_BIT(0);
			}
			break;
	}
	HwUsb_SendZlp(0);
	UNS_SET(endp,UNS_Complete);
}
/*
 *������:
 *	URB_SET_FEATURE
 *����:
 *	SET_FEATURE
 *����:
 *	1.setupPkt:setup��ָ��
 *	2.endp:�˵������
 *	3.udp:udpָ��
 *����:
 *	��
 *����:
 *	1.
*/
// void HwUsb_HaltEndp(int endpn){
// 	HwUsb_Switch2Endp(endpn);
// }
void URB_SET_FEATURE(void*setupPkt,CEndpoint*endp){
	int rcp=GetRqtRecipient(setupPkt);
	CUsbSetupPkt*psetup=(CUsbSetupPkt*)setupPkt;
	char*ptr=NULL;
	switch(rcp){
		case USB_RT_RECIPIENT_DEVICE:
			ptr=(char*)&usb_status[0];
			if(psetup->pkt.tar==1){//DEVICE_REMOTE_WAKEUP
				ptr[0]|=BIT(_REMOTE_WAKEUP_);
			}
			break;
		case USB_RT_RECIPIENT_INTF:
			ptr=(char*)&usb_status[1];
			break;
		case USB_RT_RECIPIENT_ENDP:
			ptr=(char*)&usb_endp_status[psetup->pkt.idx&0x0f];
			if(psetup->pkt.tar==0){
				ptr[0]|=BIT(0);
			}
			break;
	}
	HwUsb_SendZlp(0);
	UNS_SET(endp,UNS_Complete);
}

/*
 *������:
 *	URB_SET_ADDRESS
 *����:
 *	SET_ADDRESS
 *����:
 *	1.setupPkt:setup��ָ��
 *	2.endp:�˵������
 *	3.udp:udpָ��
 *����:
 *	��
 *����:
 *	1.
*/
extern void DelayNops_usb(volatile unsigned long nops);

void URB_SET_ADDRESS(void*setupPkt,CEndpoint*endp){
    UI8 setup[8];
	UI16 *ptr;//=(UI16*)setupPkt;
    memcpy(setup,setupPkt,8);
    ptr=(UI16*)setup;
	HwUsb_SendZlp(0);

	DelayNops_usb(10000);
	HwUsb_SetAddress(ptr[1]);

	UNS_SET(endp,UNS_Complete);
	SET_USBSTATE(USB_STATE_ADDRESS);
	//HwUdpStatusOut(udp);
}
/*
 *������:
 *	URB_GET_DESCRIPTOR
 *����:
 *	GET_DESCRIPTOR
 *����:
 *	1.setupPkt:setup��ָ��
 *	2.endp:�˵������
 *	3.udp:udpָ��
 *����:
 *	��
 *����:
 *	1.
*/
void URB_GET_DESCRIPTOR(void*setupPkt,CEndpoint*endp){
	UI8 *ptr=(UI8*)setupPkt;
	UI8 rcp=GetRqtRecipient(setupPkt);
	PUI8 tar=NULL;
	UI32 len=0;
	CBufferBaseDesc*pcfg=(CBufferBaseDesc*)USBDesc_GetConfigDesc();
	if(rcp>=USB_RT_RECIPIENT_ENDP){
		URB_NOT_SUPPORT(setupPkt,endp);
		return;
	}
	if(rcp==USB_RT_RECIPIENT_INTF){
		rcp=ptr[4];
		if(rcp>=USB_MAX_INTERFACE_NUM){
			URB_NOT_SUPPORT(setupPkt,endp);
			return;
		}
		rcp=ptr[3];
		switch(rcp){
		case USB_DESCTYPE_HID:
			tar=(PUI8)_find_HidClassRpt(
				pcfg->ptr,
				pcfg->sz,
				ptr[4]);
			len=sizeof(CHidClassDesc);
			if(tar==NULL){URB_NOT_SUPPORT(setupPkt, endp);return;}
			break;
		case USB_DESCTYPE_HID_Report:
			tar=(PUI8)(((CBufferBaseDesc*)USBDesc_GetHidRptDesc(ptr[4]))->ptr);
			len=((CBufferBaseDesc*)USBDesc_GetHidRptDesc(ptr[4]))->sz;
			break;
		default:
			URB_NOT_SUPPORT(setupPkt,endp);
			return;
		}
		SetTxParameter(endp,setupPkt,tar,len);
		UNS_SET(endp,UNS_DataIn);
		HwUsb_SendPkt(0,endp);
		return;
	}
	rcp=ptr[3];
	switch(rcp){
	case USB_DESCTYPE_DEVICE:
		tar=(PUI8)(((CBufferBaseDesc*)USBDesc_GetDeviceDesc())->ptr);
		len=((CBufferBaseDesc*)USBDesc_GetDeviceDesc())->sz;
		break;
	case USB_DESCTYPE_CONFIG:
		tar=(PUI8)(((CBufferBaseDesc*)USBDesc_GetConfigDesc())->ptr);
		len=((CBufferBaseDesc*)USBDesc_GetConfigDesc())->sz;
		break;
	case USB_DESCTYPE_STRING:
		tar=(PUI8)(((CBufferBaseDesc*)USBDesc_GetStringDesc(ptr[2]))->ptr);
		len=((CBufferBaseDesc*)USBDesc_GetStringDesc(ptr[2]))->sz;
		break;
// 	default:
	}
	if(tar==NULL){
		URB_NOT_SUPPORT(setupPkt,endp);
		return;
	}
	SetTxParameter(endp,setupPkt,tar,len);
	UNS_SET(endp,UNS_DataIn);
	HwUsb_SendPkt(0,endp);
	//HwUdpStatusOut(udp);
}
/*
 *������:
 *	URB_GET_CONFIGURATION
 *����:
 *	GET_CONFIGURATION
 *����:
 *	1.setupPkt:setup��ָ��
 *	2.endp:�˵������
 *	3.udp:udpָ��
 *����:
 *	��
 *����:
 *	1.
*/
void URB_GET_CONFIGURATION(void*setupPkt,CEndpoint*endp){
	SetTxParameter(endp,setupPkt,(void*)&bUsbConfig,1);
	UNS_SET(endp,UNS_DataIn);
	HwUsb_SendPkt(0,endp);
}
/*
 *������:
 *	URB_SET_CONFIGURATION
 *����:
 *	SET_CONFIGURATION
 *����:
 *	1.setupPkt:setup��ָ��
 *	2.endp:�˵������
 *	3.udp:udpָ��
 *����:
 *	��
 *����:
 *	1.
*/
void URB_SET_CONFIGURATION(void*setupPkt,CEndpoint*endp){
	UI8*ptr=(UI8*)setupPkt;
	UNIT tmp=ptr[2];
	CBufferBaseDesc*pcfg=NULL;
	if(tmp!=1){
		bUsbConfig=0;
		UNS_SET(endp,UNS_Complete);
		HwUsb_SendZlp(0);
		SET_USBSTATE(USB_STATE_ADDRESS);
//
// 		URB_NOT_SUPPORT(setupPkt,endp);
		return;
	}else{
		bUsbConfig=ptr[2];
		UNS_SET(endp,UNS_Complete);
		HwUsb_SendZlp(0);
		pcfg=(CBufferBaseDesc*)USBDesc_GetConfigDesc();
		_config_endp(pcfg->ptr, pcfg->sz);
// 		_config_endp((void*)&tUsbConfig, sizeof(tUsbConfig));

		SET_USBSTATE(USB_STATE_CONFIG);
		//HwUdpConfig(udp);//config my device
	}

}
/*
 *������:
 *	URB_GET_INTERFACE
 *����:
 *	GET_INTERFACE
 *����:
 *	1.setupPkt:setup��ָ��
 *	2.endp:�˵������
 *	3.udp:udpָ��
 *����:
 *	��
 *����:
 *	1.
*/
void URB_GET_INTERFACE(void*setupPkt,CEndpoint*endp){
	UI16*ptr=(UI16*)setupPkt;
	UNIT tmp=ptr[2];
	if(tmp>=USB_MAX_INTERFACE_NUM){
		URB_NOT_SUPPORT(setupPkt,endp);
		return;
	}else{
		SetTxParameter(endp,setupPkt,&bUsbAlterInterface[tmp],1);
		UNS_SET(endp,UNS_DataIn);
		HwUsb_SendPkt(0,endp);
	}
}
/*
 *������:
 *	URB_SET_INTERFACE
 *����:
 *	SET_INTERFACE
 *����:
 *	1.setupPkt:setup��ָ��
 *	2.endp:�˵������
 *	3.udp:udpָ��
 *����:
 *	��
 *����:
 *	1.
*/
extern void _endp_tx(int endpn);
void URB_SET_INTERFACE(void*setupPkt,CEndpoint*endp){
	UI8 *ptr=(UI8*)setupPkt;
	UNIT altIntf=ptr[2];
	UNIT idx=ptr[4];
	if(idx>=USB_MAX_INTERFACE_NUM){
		URB_NOT_SUPPORT(setupPkt,endp);
		return;
	}else{
		bUsbAlterInterface[idx]=altIntf;
		//if audio interface is called,it should ctrl endpoint
		UNS_SET(endp,UNS_StatusIn);
		HwUsb_SendZlp(0);
	/*	if((idx==USB_INTFID_AudioAS_MIC)&&(altIntf==1)){
			_endp_tx(idx);
		}*/
	}
}

const CFunPtr tUsbStdRequest[]={
	URB_GET_STATUS,		//URB_NOT_SUPPORT,//	;; Get_Status		,0
	URB_CLEAR_FEATURE,	//URB_NOT_SUPPORT,//	;; Clear_Feature	,1
	URB_NOT_SUPPORT,//URB_RESERVED			;; Reserved		,2
	URB_SET_FEATURE,		//URB_NOT_SUPPORT,//	;; Set_Feature		,3
	URB_NOT_SUPPORT,//						;; Reserved		,4
	URB_SET_ADDRESS,//URB_SET_ADDRESS		;; Set_Address		,5
	URB_GET_DESCRIPTOR,//					;; Get_Descriptor	,6
	URB_NOT_SUPPORT,//URB_SET_DESCRIPTOR	;; Set_Descriptor	,7
	URB_GET_CONFIGURATION,//				;; Get_Configuration	,8
	URB_SET_CONFIGURATION,//				;; Set_Configuration	,9
	URB_GET_INTERFACE,//					;; Get_Interface		,10
	URB_SET_INTERFACE,//					;; Set_Interface		,11
	URB_NOT_SUPPORT,//	URB_SYNCH_FRAME		;; Synch_Frame			,12

};

/*
 *������:
 *	HalUsbStandardRequest
 *����:
 *	usb��׼������
 *����:
 *	1.setupPkt:setup��ָ��
 *	2.endp:�˵������
 *	3.udp:udpָ��
 *����:
 *	��
 *����:
 *	1.
*/
void HalUsbStandardRequest(void*setupPkt,CEndpoint*endp){
	UI8 *pSetup=(UI8*)setupPkt;
	CFunPtr fp;
	fp=(CFunPtr)tUsbStdRequest[pSetup[1]];
	fp(setupPkt,endp);
}

/*
 *������:
 *	HalUsbSetupHandle
 *����:
 *	usb setup�������
 *����:
 *	1.setupPkt:setup��ָ��
 *	2.endp:�˵������
 *	3.udp:udpָ��
 *����:
 *	��
 *����:
 *	1.
*/
void HalUsbSetupHandle(void*setupPkt,CEndpoint *endp)
{
	UI8 type=GetRqtType(setupPkt);
	if(type==0){//std request
		HalUsbStandardRequest(setupPkt,endp);
	}
	if(type==1){//class request
		HalUsbClassRequest(setupPkt,endp);
	}
	if(type>=2){//vendor req2uest
		HwUsb_SendStall(0);
	}
}



/*end file*/

/*end file*/
