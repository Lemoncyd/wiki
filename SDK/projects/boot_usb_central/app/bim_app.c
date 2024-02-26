#include "bim_updataImage.h"
#include "bim_app.h"
#include "bim_uart2.h"
#include "bim_flash.h"
#include "bim_icu.h"
#include "bim_wdt.h"
#include "driver_usb.h"
#include "rf.h"
#include "bk3633_reglist.h"
#include "Driver_icu.h"
#include "usb.h"

#include <string.h>   // boolean definition


const  unsigned int BK36[] __attribute__((at(0x100)))=
{
    0x36334B42,0x00103333,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,
    0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
};

typedef void (*FUNCPTR)(void);

//extern void USBD_StartTx(unsigned char *pBuf, unsigned long ulLen);

static int32_t  check_cnt=0;
static uint8_t read_updata_status[16];
uint8_t MGC_RX_Buffer[64];
volatile uint8_t b_isDataing;
volatile uint8_t b_isTRxing;
int32_t delay_timer_count;

uint8_t erase_fenable;
uint8_t bim_uart_cmd[16];
uint8_t bim_uart_data[4096+8];
uint8_t uart_download_status=0;


void usb_cmd_response( uint8_t cmd, uint8_t length, uint8_t *payload )
{
    uint8_t response_buff[64],i,j;

    if(length<4)
        return;

    response_buff[0]=0x04;
    response_buff[1]=0x0e;
    response_buff[2]=length;
    response_buff[3]=0x01;
    response_buff[4]=0xe0;
    response_buff[5]=0xfc;
    response_buff[6]=cmd;

    for(i=0;i<length-4;i++)
        response_buff[7+i]=payload[i];

    for(j=0;j<(64-(7+i-1)) ;j++)
    {
        response_buff[7+i+j] = 0;
    }
    AplUsb_StartTx(USB_ENDPID_Hid_DBG_IN,response_buff,64);
 //   USBD_StartTx(response_buff,64);
}

void usb_cmd_dispath(uint8_t *buff,uint8_t len)
{
    uint8_t payload[16];
    uint8_t read_data[256];
    uint32_t  calcuCrc=0xffffffff;
    uint32_t read_flash_addr;
    uint32_t crc_start_addr,crc_end_addr;

    switch(buff[0])
	{
        case LINK_CHECK_CMD:
            uart_download_status=1;
            payload[0]=0x00;
            usb_cmd_response(LINK_CHECK_CMD+1,5,payload);
            erase_fenable=1;
            break;

        case CRC_CHECK_CMD:
            crc_start_addr = ( buff[1]|(buff[2]<<8)|(buff[3]<<16)|(buff[4]<<24) );
            crc_end_addr = ( buff[5]|(buff[6]<<8)|(buff[7]<<16)|(buff[8]<<24) );
            flash_wp_256k();

            bim_printf("CRC_CHECK\r\n");
            flash_erase(0x7c000,0x1000);
            flash_wp_all();

            make_crc32_table();

            read_flash_addr=crc_start_addr;

            for(uint16_t i = 0;i < (crc_end_addr-crc_start_addr+1)/256; i++)
        	{
        		flash_read(read_data,read_flash_addr,256);

        		calcuCrc = make_crc32(calcuCrc,read_data,256);

        		read_flash_addr+= 256;
        	}
            payload[0]= calcuCrc;
            payload[1]= calcuCrc>>8;
            payload[2]= calcuCrc>>16;
            payload[3]= calcuCrc>>24;
            usb_cmd_response(CRC_CHECK_CMD,8,payload);

            wdt_enable(0X100);
            while(1);
//          break;

        case STAY_ROM_CMD:
            uart_download_status=1;
            payload[0]=buff[1];
            usb_cmd_response(STAY_ROM_CMD,5,payload);
            break;

        case SET_BAUDRATE_CMD:


            break;

        case SET_RESET_CMD:
            if(buff[1]==0xa5)
            {
                wdt_enable(0X10);
	            while(1);
            }

            break;
    }
}

void usb_operate_flash_cmd_response( uint8_t cmd, uint8_t status,uint16_t length, uint8_t *payload )
{
    uint8_t response_buff[4200];
    uint16_t    i;

    if(length<2)
        return;

    response_buff[0]=0x04;
    response_buff[1]=0x0e;
    response_buff[2]=0xff;
    response_buff[3]=0x01;
    response_buff[4]=0xe0;
    response_buff[5]=0xfc;
    response_buff[6]=0xf4;

    response_buff[7]=(length&0xff);
    response_buff[8]=length>>8;
    response_buff[9]=cmd;
    response_buff[10]=status;


    for(i=0;i<(length-2);i++)
        response_buff[11+i]=payload[i];
    AplUsb_StartTx(USB_ENDPID_Hid_DBG_IN,response_buff,64);

//	USBD_StartTx(response_buff,64);
}

void bim_usb_data_callback( uint8_t * buff, uint16_t len)
{
    static uint8_t cmd_status=0;
    static uint16_t index=0,index_cnt=0;
    static uint16_t length;
    static uint16_t scmd_length;
    static uint32_t write_addr;
    static uint32_t read_addr;
    static uint8_t read_buff[256];

    while(len>0)
    {
        switch(cmd_status)
        {
            case UART_CMD_STATE_HEAD:
            {
                if(buff[0]==0x01)
                {
                    cmd_status=UART_CMD_STATE_OPCODE_ONE; //01 e0 fc ff f4 06 00 0f 20 00 20
                }
                else
                    cmd_status=UART_CMD_STATE_HEAD;
            }
            break;
            case UART_CMD_STATE_OPCODE_ONE:
            {
                if( buff[0]==0xe0 )
                    cmd_status=UART_CMD_STATE_OPCODE_TWO;
                else
                    cmd_status=UART_CMD_STATE_HEAD;
            }
            break;
            case UART_CMD_STATE_OPCODE_TWO:
            {
                if( buff[0]==0xfc )
                    cmd_status=UART_CMD_STATE_LENGTH;//fc ff f4 06 00 0f 20 00 20
                else
                    cmd_status=UART_CMD_STATE_HEAD;
            }
            break;

            case UART_CMD_STATE_LENGTH:
            {
                length=buff[0];

                if(0xff==buff[0])
                {
                    cmd_status=UART_CMD_STATE_CMD_FLASH;//ff f4 06 00 0f 20 00 20
                }
                else if( buff[0]>0 && buff[0]!=0xff )
                {
                    cmd_status=UART_CMD_STATE_CMD;
                    index=0;
                }
                else
                {
                    cmd_status=UART_CMD_STATE_HEAD;
                }
            }
            break;

            case UART_CMD_STATE_CMD:
            {
                bim_uart_cmd[index++]=buff[0];

                if(index==length)
                {
                    usb_cmd_dispath(bim_uart_cmd, length);
                    cmd_status=UART_CMD_STATE_HEAD;
                }
            }
            break;

            case UART_CMD_STATE_CMD_FLASH:
            {
                if( buff[0]==0xf4 )
					//f4 06 00 0f 20 00 20
                    cmd_status=UART_CMD_STATE_LENGTH_FLASH_LEN0;
                else
                    cmd_status=UART_CMD_STATE_HEAD;
            }
            break;

            case UART_CMD_STATE_LENGTH_FLASH_LEN0:
            {
                cmd_status=UART_CMD_STATE_LENGTH_FLASH_LEN1;
                scmd_length=buff[0]; //06

            }
            break;

            case UART_CMD_STATE_LENGTH_FLASH_LEN1:
            {
                scmd_length += (buff[0]<<8); //00

                if(scmd_length>0)
                    cmd_status=UART_CMD_STATE_LENGTH_FLASH_SCMD;
                else
                    cmd_status=UART_CMD_STATE_HEAD;

                index=0;
                index_cnt=0;
            }
            break;

            case UART_CMD_STATE_LENGTH_FLASH_SCMD:
            {
                bim_uart_data[index++]=buff[0];

                if(bim_uart_data[0]==0x09 && index==scmd_length)//read id
                {
                    read_addr = bim_uart_data[1]|(bim_uart_data[2]<<8)|(bim_uart_data[3]<<16)|(bim_uart_data[4]<<24) ;

                    if(read_addr<0x20000)
                    {
                        bim_uart_data[5]=scmd_length-5;
                        usb_operate_flash_cmd_response(0x09,6,7,&bim_uart_data[1]);
                    }
                    else
                    {
                        flash_read(read_buff,read_addr,16);
                        for(uint8_t i=0;i<16;i++)
                            bim_uart_data[5+i]=read_buff[i];

                        usb_operate_flash_cmd_response(0x09,0,4102,&bim_uart_data[1]); //change here, add som states

                    }
                    cmd_status=UART_CMD_STATE_HEAD;

                }
                else if(bim_uart_data[0]==0x0f && index==scmd_length)//erase //0f 20 00 20
                {
                    int32_t addr = bim_uart_data[2]|(bim_uart_data[3]<<8)|(bim_uart_data[4]<<16)|(bim_uart_data[5]<<24) ;

                  /*  if(addr<SEC_IMAGE_ALLOC_START_STACK_FADDR*4)
                    {
                        usb_operate_flash_cmd_response(0x0f,6,0x07,&bim_uart_data[1]);
                    }
                    else*/
                    {
                        if(erase_fenable==1)
                        {
                            flash_wp_128k();
                            erase_fenable=0;
                        }
                   //     bim_printf("e=%x\r\n",addr);

                        if(ERASE_FLASH_SEC_SIZE == bim_uart_data[1])
                        {
                             flash_erase(addr,FLASH_SEC_SIZE);
                        }
                        else if(bim_uart_data[1]==ERASE_FLASH_ONE_BLOCK_SIZE)
                        {
                            if(addr == 0x70000)
                            {
                                for(char i=0;i<13;i++)
                                {
                              //  	bim_printf("e2=%x\r\n",addr);
                                    flash_erase(addr,FLASH_SEC_SIZE);
                                    addr+=0x1000;
                                }
                               // flash_erase(0x7f000,FLASH_SEC_SIZE);


                            }
                            else
                            {
                                flash_erase_one_block(addr);
                            }
                        }
                        usb_operate_flash_cmd_response(0x0f,0,0x07,&bim_uart_data[1]);
                    }
                    cmd_status=UART_CMD_STATE_HEAD;
                }
                else if(bim_uart_data[0]==0x06 && index==scmd_length)//write bt addr
                {
                    write_addr = bim_uart_data[1]|(bim_uart_data[2]<<8)|(bim_uart_data[3]<<16)|(bim_uart_data[4]<<24) ;

                    if(write_addr<flash_env.ota_all_image_end_faddr_abs)
                    {
                        bim_uart_data[5]=scmd_length-5;
                        usb_operate_flash_cmd_response(0x06,6,7,&bim_uart_data[1]);
                    }
                    else
                    {
                        flash_write(&bim_uart_data[5],write_addr,(scmd_length-5));
                        bim_uart_data[5]=scmd_length-5;
                        usb_operate_flash_cmd_response(0x06,0,7,&bim_uart_data[1]);

                    }
                    cmd_status=UART_CMD_STATE_HEAD;

                }
                else if( bim_uart_data[0]==0x07 )//write code data
                {
                   if(index >= (64*(index_cnt+1)+5))
                    {
                        write_addr = bim_uart_data[1]|(bim_uart_data[2]<<8)|(bim_uart_data[3]<<16)|(bim_uart_data[4]<<24) ;

                        if(write_addr<SEC_IMAGE_OAD_HEADER_STACK_FADDR)
                        {
                            index_cnt++;
                            if(index==scmd_length )
                            {
                                bim_uart_data[1]=SEC_IMAGE_OAD_HEADER_STACK_FADDR & 0xff;
                                bim_uart_data[2]=SEC_IMAGE_OAD_HEADER_STACK_FADDR >> 8;
                                usb_operate_flash_cmd_response(0x07,6,6,&bim_uart_data[1]);
                                cmd_status=UART_CMD_STATE_HEAD;
                                index_cnt=0;
                            }
                        }
                        else
                        {
                            flash_write(&bim_uart_data[5+64*(index_cnt)],(write_addr+64*(index_cnt)),64);

                            index_cnt++;

                            if(index==scmd_length )
                            {
                                usb_operate_flash_cmd_response(0x07,0,6,&bim_uart_data[1]);
                                cmd_status=UART_CMD_STATE_HEAD;
                                index_cnt=0;

                            }
                        }
                    }
                }
                else if(index==scmd_length)
                    cmd_status=UART_CMD_STATE_HEAD;

            }
            break;
        }
        len--;
        buff++;
    }
}


void  updata_memset32(void * dest, uint32 value, uint8 size)
{
    uint32 *_u8_dest = (uint32 *)dest;
    uint32 *_u8_end  = (uint32 *)dest+size*4;

    while (_u8_dest < _u8_end)
    {
        *_u8_dest++ = value;
    }

}

uint8_t bim_user_flash_data1[16] = {0x12,0x34,0xaa,0x00,0x00,0x20,0x00,0x00,
                                0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,};
extern uint32_t bim_get_psec_image_header(void);
extern img_hdr_t hdr_img;

extern void DelayNops_usb(volatile unsigned long nops);
void usb_mod_enable(int en_dis){
	if(en_dis){//usb modal enable
		setf_SYS_Reg0x3_usb_pwd;
		DelayNops_usb(500);
		clrf_SYS_Reg0x3_usb_pwd;
	}
	else{
		setf_SYS_Reg0x3_usb_pwd;
	}
}

void usb_mod_ie_enable(int en_dis){
	if(en_dis){
		ICU_INT_ENABLE_SET(ICU_INT_ENABLE_IRQ_USB_MASK);
	}else{
		ICU_INT_ENABLE_CLEAR(ICU_INT_ENABLE_IRQ_USB_MASK);
	}
}



void Ep2_RxCbk(void*ptr,int sz){
//	int i;
	/*?iif(((char*)ptr)[0]==0x10){
		mouseTest=1;
		uart_printf("recieved a cmd\r\n");
	}
	AplUsb_StartTx(USB_ENDPID_Hid_DBG_IN, ptr, sz);


//	print("Ep3 Rx Data",ptr,sz);
	*/
	char * pBuffer;
	pBuffer = (char*)ptr;
/*	bim_printf("recieved a cmd=");
    printf_hex(sz);
    bim_printf("\r\n");
	for(int i=0;i<sz;i++)
	{
	printf_hex(pBuffer[i]);
	bim_printf(",");
	}
	bim_printf("\r\n");*/
	//01 E0 FC 02 0E A5
	memcpy(MGC_RX_Buffer,ptr,sz);
    b_isDataing = 1;

}


void usb_init_boot(void)
{
    mcu_clk_switch(MCU_CLK_64M);

    usb_init(usb_mod_enable,usb_mod_ie_enable);
    AplUsb_SetRxCbk(USB_ENDPID_Hid_DBG_OUT, (void*)Ep2_RxCbk);

}
extern void Delay_ms(int num);
void bim_main(void)
{
    uint32 addr_tmp,i;
    uint8 tmp=0xff;
    updata_memset32((uint8 *)0x00400000, 1, 1);
    icu_init();
    wdt_disable();
    uart2_init(1000000);
    bim_printf("boot_start1\r\n");
    Delay_ms(50);
    GLOBAL_INT_START();
    flash_advance_init();

    xvr_reg_initial();

    flash_read(read_updata_status,0x7c000,16);
    bim_printf("usb init=%x,%x\r\n",read_updata_status[0],read_updata_status[1]);

    if((read_updata_status[0]==0x12) && (read_updata_status[1]==0x34) )
    {
        flash_erase(0x7c000,FLASH_SEC_SIZE);
        flash_wp_8k();
        usb_init_boot();

    }
    else
    {
        #if 0
        bim_get_psec_image_header();

        bim_printf("uuid=%x\r\n",hdr_img.uid);
        if(hdr_img.uid == OAD_APP_PART_UID)
        {
            addr_tmp = (hdr_img.len << 2)+ SEC_OAD_RUN_APP_FADDR-0x100;
            bim_printf("ad_t=%x\r\n",addr_tmp);

            flash_read(bim_uart_data,addr_tmp,256);
            for(i=0;i<256;i++)
            {
                tmp &= bim_uart_data[i];
            }

            bim_printf("tmp=%x\r\n",tmp);
            if(tmp == 0xff)
            {
                flash_wp_8k();

                flash_write(bim_user_flash_data1,0x7c000,16);
                read_updata_status[0]=0x12;
                read_updata_status[1]=0x34;
                usb_init_boot();
            }
        }
         else
        {
            flash_wp_8k();
            bim_printf("22\r\n");
            flash_write(bim_user_flash_data1,0x7c000,16);

            read_updata_status[0]=0x12;
            read_updata_status[1]=0x34;
            usb_init_boot();
        }
        #endif
    }




    while(1)
    {
        if (b_isDataing == 1)
        {
            b_isTRxing == 0;
            bim_usb_data_callback(MGC_RX_Buffer,sizeof(MGC_RX_Buffer));
            b_isDataing = 0;
          //  test_usb_device();
            check_cnt=0;
        }
        else
        {
            if( (read_updata_status[0]==0x12) && (read_updata_status[1]==0x34) )
            {
                if(read_updata_status[2]==0x55)
                {
                    delay_timer_count=(read_updata_status[5]<<16)+(read_updata_status[4]<<8)+read_updata_status[3];
                    if(check_cnt++>delay_timer_count)
                    break;
                }
            }
            else
            {
                if(check_cnt++>2)
                    break;
            }
        }
    }

    if(1 == bim_select_sec())
    {
        updata_memset32((uint8 *)0x00400000, 0, 1);
        GLOBAL_INT_STOP();
        (*(FUNCPTR)SEC_IMAGE_RUN_STACK_CADDR)();
    }
    else
    {
        updata_memset32((uint8 *)0x00400000, 0, 1);
        GLOBAL_INT_STOP();
        while(1)
        {
            bim_printf("error_start\r\n");
        }
    }
}



