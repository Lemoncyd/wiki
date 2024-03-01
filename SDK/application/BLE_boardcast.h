/***********************************************************
Copyright (C), 1998-2011, Esense Technology Co., Ltd.
FileName	: 
Author		:  
Date		:
Description	: 
Version		: v0.1
Function List: 
----
History: 
<author>       <time>         <version >           <desc>
                   2011/03/01        0.1             build this moudle 
***********************************************************/

#ifndef _BLE_BOARDCAST_H_
#define _BLE_BOARDCAST_H_
UINT8 BlePacketEncode( UINT8 *dstPacket, const UINT8 *srcPacket, UINT8 len, UINT8 bleChannel );
UINT8 BlePacketDeductive( UINT8 *dstPacket, const UINT8 *srcPacket, UINT8 len, UINT8 bleChannel );
void MemCopy( UINT8 *dst, const UINT8 *src, UINT8 len );

#endif

/***********************************************************
						end file
***********************************************************/
