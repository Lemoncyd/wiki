/****************************************************************************
**
** Copyright (C) 2011 Beken Corporation, All rights reserved.
**
** Contact: Beken Corporation (www.beken.com)
**
** Author:  river
**
** History: 2012/03/07
**
** Version: 1.0
**
****************************************************************************/
/*! \file application_mode_normal.c
    \brief The normal mode is the main mode that implements the product function.
*/

#include "..\headfile\includes.h"
#include "..\driver\bk24xx.h"
/*! \fn void application_normal_mode_initial(void)
    \brief  Initialize the system before entering normal mode.

    \param void
    \return void
*/

unsigned char timer_rf_next_8ms = 0;

void application_normal_mode_initial(void)
{
    //driver_buffer_set(system_data.usbp1_data.in_report, 0, 8);
    //driver_buffer_set(system_data.usbp2_data.in_report, 0, 7);
    //driver_buffer_set(system_data.usbp3_data.in_report, 0, 3);

    system_data.normal_sub_mode = SYSTEM_NORMAL_WORK;


#ifdef WATCHDOG_ENABLE
        CLK_EN_CFG |= 0x01;
        WDCTL = 0x06;       //prescale=128, 16*32768/16000000=128ms
        WDCTL = 0xd1;       //idle open
        WDCTL = 0xa5;       //enable wdt, and clear it
#endif
}

/*! \fn void application_normal_mode(void)
    \brief  The function implementation of each product, including dongle, mouse and keyboard.

    Dongle:
                It receives the data from mouse, and then analyses them by the protocol defined between them.\n
                If the mouse events happened, such as key pressed,  sensor moving and wheel rolling, it will analyse and upload them to PC according to the HID protocol.\n
                If PC enters the sleep state, it will also be suspended automatically. Certainly mouse events will wake up PC if user has the right settings.\n
    \param void
    \return void
*/
void application_normal_mode(void)
{
#if 0
    application_normal_mode_initial();

    while(system_data.system_mode == SYSTEM_NORMAL)
    {
        switch(system_data.normal_sub_mode)
        {
            case SYSTEM_NORMAL_WORK:
                 #ifdef WATCHDOG_ENABLE
                    WDCTL = 0xa5;       //enable wdt and clear it
                 #endif


                system_data.rf_page_fail_wait++;
                if(system_data.rf_page_fail_wait > 20)
                   system_data.rf_page_fail_wait = 0;

                if(flag_usb_state_normal)
                {
					//RF_CHIP_ENABLE;
					application_dongle_rf_interference_detect();
                }
				else
				{
					if(flag_usb_idle || flag_usb_get_hid_report||flag_usb_config_set)
                    {
                        flag_usb_state_normal = 1;
						RF_CMD_FLUSH_TX;
    					RF_CMD_FLUSH_RX;

						driver_rf_spi_set_mode_rx();
					}
				}
                application_dongle_rf_data_received_check(); //receive page and data package
                //driver_send_keyboard_led_status();
                    application_dongle_rf_data_received_analysis();
                //if(flag_rf_bk2423)
                application_dongle_usb_data_send_to_pc();
                    //driver_send_keyboard_led_status();

                application_dongle_usb_data_received_analysis();
                if(flag_usb_suspend)
                    system_data.normal_sub_mode = SYSTEM_NORMAL_SUSPEND;
                break;

            case SYSTEM_NORMAL_SUSPEND:
                #ifdef WATCHDOG_ENABLE
                    WDCTL = 0xa5;               //enable wdt, and clear it
                    WDCTL = 0xde;               //close wdt in idle mode
                    WDCTL = 0xda;
                #endif
                application_dongle_normal_submode_suspend();
                #ifdef WATCHDOG_ENABLE
                    CLK_EN_CFG |= 0x01;
                    WDCTL = 0xd1;       //open wdt with idle enable
                    WDCTL = 0xa5;       //enable wdt and clear it
                 #endif
                break;
        }
    }
#endif
}

/*! \fn void application_dongle_rf_interference_detect(void)
    \brief The process function when the system is interfered by some rf signal.

    The system will detect the carrier signal after receive mouse data, if true it will just hop to next channel.\n
    If the communication between mouse and dongle failed, the system will also detect the interference, if true it will hop again.
    \param void
    \return void
*/
void application_dongle_rf_interference_detect(void)
{
#if 0
	if(flag_rf_send_end)			                                        //detect cd when receive the end pacakage form mouse
    {
		application_dongle_rf_cd_detect(2);
        system_data.time.tick_2ms = 0;
    }
    else
    {
        if(system_data.time.tick_2ms >= 4)                                  // 8ms tick
        {
			//test_pin7 = ~test_pin7;
			system_data.time.tick_2ms = 0;
			if(flag_rf_packet_received)                                     //data and end package from mouse
            {
                flag_rf_packet_received = 0;
                //system_data.time.tick_2ms = 0;
				timer_rf_next_8ms = 0;
            }
            else  //                                                          //hop package from mouse
            {
               // if(flag_rf_next_channel)                                    //send successfully last time
                //{
                   // flag_rf_next_channel = 0;
                    //application_dongle_rf_receive_with_multi_hop_in_8ms();  //synchronize
                //}
				if (timer_rf_next_8ms < SYNC_TIMES)
				{

					if (!flag_rf_next_channel)
					{
						driver_rf_channel_switch();
						//test_pin7 = ~test_pin7;
					}
					else
						flag_rf_next_channel = 0;


					timer_rf_next_8ms++;
				}
				else
				{
					flag_rf_send_end = 1;
					driver_rf_channel_switch();
				}
                //else
                //{
                    //application_dongle_rf_cd_detect(1);	//detect cd
                    //system_data.time.tick_2ms = 0;

                //}
				//system_data.time.tick_2ms = 0;
            }
        }
    }
#endif
}

/*! \fn void application_dongle_rf_data_received_analysis(void)
    \brief  Analyse the data from mouse and keyboard.

    If the data is valid, that's some events has happened, the relative uploading flag of usb endpoint will be set, and then execute the real uploading.
    \param void
    \return void
*/
void application_dongle_rf_data_received_check(void)
{
#if 0
    driver_rf_receive_packet();
    if(flag_rf_driver_received)
    {
        flag_rf_driver_received = 0;
        //if(flag_rf_bk2423)
        //{
            system_data.time.tick_led_rf_received = 0;
            flag_rf_led_received = 1;
            LED = 0;
        //}

        if(system_data.rf_pipe_num == 0)
        {
            application_page_mode();
        }
        else if(flag_usb_state_normal)                      //pipe 1
        {
	            if((rf_fifo_data[0] & 0x01) == DATATYPE_MOUSE)
	             {
                        test_pin1 = ~test_pin1;

    					flag_rf_old_mouse = 1;
                        if((!flag_rf_paged_mouse)&&(system_data.rf_received_len==9))
                        {
                            flag_rf_paged_mouse = 1;                                //if have NOT paged before, for dongle restart again
                            system_data.rf_address_paged_mouse1 = rf_fifo_data[7];
                            system_data.rf_address_paged_mouse2 = rf_fifo_data[8];
                            //driver_rf_page_write_address();
                        }

    					if((system_data.rf_address_paged_mouse1 == rf_fifo_data[7]) && (system_data.rf_address_paged_mouse2 == rf_fifo_data[8]))
    					{


							flag_rf_packet_received = 1;
    		                flag_mouse_update = 1;
    		                flag_rf_send_end = 0;

							if(rf_fifo_data[0] & MOUSE_DATA_TYPE_HOP)
    		                {
    		                    flag_rf_next_channel = 1;
    		                    flag_rf_packet_received = 0;
    		                    flag_mouse_update = 0;//////////////////////?
								driver_rf_channel_switch();

	                		}
							else
								system_data.time.tick_2ms = 0;


							if(rf_fifo_data[0] & MOUSE_DATA_TYPE_SYNCHRONIZE)
    		                {
    		                    driver_timer0_reset();
    		                    system_data.time.tick_2ms = 0;
    		                }
    		                if(rf_fifo_data[0] & MOUSE_DATA_TYPE_END)
    		                    flag_rf_send_end = 1;
    		                if (flag_mouse_update)
								driver_buffer_copy(&system_data.mouse_data_buffer_received[1], &rf_fifo_data[1], 6);    //key wheel x x_ h y_l y_h

						}

	            	}
                if((rf_fifo_data[0]==KEYBOARD_LED_STATUS)&&(rf_fifo_data[system_data.rf_received_len-1]==system_data.rf_address_paged_keyboard2)&&(rf_fifo_data[system_data.rf_received_len-2]==system_data.rf_address_paged_keyboard1))
	            {
	               rf_fifo_data[0]=DATATYPE_KEYBOARD;
                   rf_fifo_data[1]=KEYBOARD_LED_STATUS;
                   rf_fifo_data[2]=system_data.numlock_state;
                   rf_fifo_data[3]=system_data.rf_address_paged_keyboard1;
                   rf_fifo_data[4]=system_data.rf_address_paged_keyboard2;

                   driver_rf_spi_write_buffer(rf_address_rx1, RF_ADDRESS_LEN);
                   driver_rf_spi_set_mode_tx();

                  if(driver_rf_data_send(5))
                   {
                   }
                   else
                   {
                     driver_delay_us(25);
                     driver_rf_data_send(5);
                     //driver_delay_us(25);
                   }
                   driver_rf_spi_set_mode_rx();
                   return;
	            }

	            if((rf_fifo_data[0] & 0x01) == DATATYPE_KEYBOARD)
	            {
					flag_rf_old_keyboard = 1;
	                system_data.usbp1_data.rf_data_received_len = system_data.rf_received_len - 1;
	                if((!flag_rf_paged_keyboard) &&(system_data.rf_received_len>4))          //have NOT paged before
	                {
	                    //flag_rf_paged_keyboard = 1;
	                  //if((system_data.rf_address_paged_keyboard1==rf_fifo_data[system_data.usbp1_data.rf_data_received_len - 1])&&(system_data.rf_address_paged_keyboard2==rf_fifo_data[system_data.usbp1_data.rf_data_received_len]))
                      flag_rf_paged_keyboard = 1;
                      system_data.rf_address_paged_keyboard1 = rf_fifo_data[system_data.usbp1_data.rf_data_received_len - 1];
                      system_data.rf_address_paged_keyboard2 = rf_fifo_data[system_data.usbp1_data.rf_data_received_len];
                        //driver_rf_page_write_address();
	                }

					if((system_data.rf_address_paged_keyboard1 == rf_fifo_data[system_data.usbp1_data.rf_data_received_len - 1]) && (system_data.rf_address_paged_keyboard2 == rf_fifo_data[system_data.usbp1_data.rf_data_received_len]))
					{
					    if(rf_fifo_data[0]&KEYBOARD_DATA_MEDIA)
                        {
                           system_data.usbp1_data.rf_data_media[0]=rf_fifo_data[0];
						   system_data.usbp1_data.rf_data_media[1]=rf_fifo_data[2];
						   system_data.usbp1_data.rf_data_media[2]=rf_fifo_data[3];
                           //driver_buffer_copy(&system_data.usbp1_data.rf_data_media[1],&rf_fifo_data[2],2);
                           rf_fifo_data[2]=0x00;
						   rf_fifo_data[3]=0x00;
                           //system_data.usbp1_data.rf_data_received[0]=rf_fifo_data[0]&(~KEYBOARD_DATA_MEDIA);
                           //if(rf_fifo_data[1])
                           //driver_buffer_copy(&system_data.usbp1_data.rf_data_received[1], &rf_fifo_data[2], system_data.usbp1_data.rf_data_received_len-2);
						   //else
						   //driver_buffer_copy(&system_data.usbp1_data.rf_data_received[1], &rf_fifo_data[1], system_data.usbp1_data.rf_data_received_len-1);
                        }
		                //else
		                //{
						 driver_buffer_copy(system_data.usbp1_data.rf_data_received, rf_fifo_data, system_data.usbp1_data.rf_data_received_len);
		                //}

		                system_data.usbp1_data.tick = 0;
		                flag_usb_endpoint1_null_data = 0;
		                flag_keyboard_update = 1;
					}
	            }
			}
        }

    	if(!flag_rf_bk2423)
    	{
        	if(system_data.time.tick_led_rf_no_page >= DELAY_LED_RF_NO_PAGE_COUNT*4)
        	{
          	  system_data.time.tick_led_rf_no_page = 0;
           	 LED = ~LED;
        	}
    	}
    	else if(!flag_rf_paged_mouse && !flag_rf_paged_keyboard)          //have NOT paged before
    	{
       		 if(system_data.time.tick_led_rf_no_page >= DELAY_LED_RF_NO_PAGE_COUNT)
        	{
           		 system_data.time.tick_led_rf_no_page = 0;
            		LED = ~LED;
      	    }
    	}
    	else
    	{
        	if(flag_rf_led_received)
        	{
           		 if(system_data.time.tick_led_rf_received >= DELAY_LED_RF_REVEIVED_COUNT)
            	{
               		 flag_rf_led_received = 0;
                	LED = 1;
            	}
        	}
    	}
#endif
}

/*! \fn void application_dongle_rf_data_received_analysis(void)
    \brief  Analyse the data from mouse and keyboard.

    If the data is received from mouse, call \a application_dongle_rf_data_received_analysis_mouse to process.\n
    If the data is received from keyboard, call \a application_dongle_rf_data_received_analysis_keyboard to process.\n
    If the data is valid, that's some events has happened, the relative uploading flag of usb endpoint will be set, and then \a application_dongle_usb_data_send_to_pc wil execute the real uploading.
    \param void
    \return void
*/
void application_dongle_rf_data_received_analysis(void)
{
#if 0
    //mouse
    if(flag_mouse_update)
    {
        flag_mouse_update = 0;

        if(system_data.mouse_data_buffer_received[3] || system_data.mouse_data_buffer_received[4] || system_data.mouse_data_buffer_received[5] || system_data.mouse_data_buffer_received[6]      // x != 0 x_h y !=0 y_h != 0
            || system_data.mouse_data_buffer_received[2] 								                           //wheel
            || (system_data.mouse_data_received_key_copy != system_data.mouse_data_buffer_received[1]) )     // key
        {
            system_data.mouse_data_received_key_copy = system_data.mouse_data_buffer_received[1];

            //sensor
            if(system_data.mouse_data_buffer_received[3] || system_data.mouse_data_buffer_received[4] || system_data.mouse_data_buffer_received[5] || system_data.mouse_data_buffer_received[6])
            {
                //system_data.mouse_data_buffer_uploading[MOUSE_INDEX_X] = system_data.mouse_data_buffer_received[3];    //x L
                //system_data.mouse_data_buffer_uploading[MOUSE_INDEX_XH] = system_data.mouse_data_buffer_received[4];  //X H
                //system_data.mouse_data_buffer_uploading[MOUSE_INDEX_Y] = system_data.mouse_data_buffer_received[5];    //y L
                //system_data.mouse_data_buffer_uploading[MOUSE_INDEX_YH] = system_data.mouse_data_buffer_received[6];  //y H
                driver_buffer_copy(&system_data.mouse_data_buffer_uploading[MOUSE_INDEX_X],&system_data.mouse_data_buffer_received[3], 4);
            }

            //key
            system_data.mouse_data_buffer_uploading[MOUSE_INDEX_KEY] |=system_data.mouse_data_buffer_received[1]&0x1F;

            //if(system_data.mouse_data_buffer_received[1] & MOUSE_STANDARD_KEY_LEFT)              //L
              //  system_data.mouse_data_buffer_uploading[MOUSE_INDEX_KEY] |= MOUSE_KEY_VALUE_LEFT;
            //if(system_data.mouse_data_buffer_received[1] & MOUSE_STANDARD_KEY_RIGHT)           //R
               // system_data.mouse_data_buffer_uploading[MOUSE_INDEX_KEY] |= MOUSE_KEY_VALUE_RIGHT;
            //if(system_data.mouse_data_buffer_received[1] & MOUSE_STANDARD_KEY_MIDDLE)        //M
               // system_data.mouse_data_buffer_uploading[MOUSE_INDEX_KEY] |= MOUSE_KEY_VALUE_MIDDLE;
           // if(system_data.mouse_data_buffer_received[1] & MOUSE_STANDARD_KEY_BACK)           //back
                //system_data.mouse_data_buffer_uploading[MOUSE_INDEX_KEY] |= MOUSE_KEY_VALUE_BACK;
           // if(system_data.mouse_data_buffer_received[1] & MOUSE_STANDARD_KEY_FORAWARD)  //foraward
                //system_data.mouse_data_buffer_uploading[MOUSE_INDEX_KEY] |= MOUSE_KEY_VALUE_FORWARD;
            //wheel
            if(system_data.mouse_data_buffer_received[2])
                system_data.mouse_data_buffer_uploading[MOUSE_INDEX_WHEEL] = system_data.mouse_data_buffer_received[2];

            flag_usb_endpoint2_uploading = 1;
        }

    #ifdef MOUSE_SWING
    	//swing need to be dealed with specially
    	if(system_data.mouse_data_buffer_received[1] & MOUSE_STANDARD_KEY_SWING_LEFT)
    	{
            if(flag_mouse_swing_left_first == 0)
            {
                flag_mouse_swing_left_first = 1;
                flag_mouse_swing_right_first = 0;
                system_data.time.tick_mouse_key = 0x00;
                system_data.time.tick_mouse_key_max = 60;
            }
            if(system_data.time.tick_mouse_key == 0)
            {
                system_data.mouse_data_buffer_uploading[MOUSE_INDEX_SWING] = MOUSE_KEY_VALUE_SWING_LEFT;
                flag_usb_endpoint2_uploading = 1;
            }
            system_data.time.tick_mouse_key++;
            if(system_data.time.tick_mouse_key >= system_data.time.tick_mouse_key_max)
            {
                system_data.time.tick_mouse_key = 0;
                system_data.time.tick_mouse_key_max = 20;
            }
    	}
    	else if(system_data.mouse_data_buffer_received[1] & MOUSE_STANDARD_KEY_SWING_RIGHT)
    	{
            if(flag_mouse_swing_right_first == 0)
            {
                flag_mouse_swing_right_first = 1;
                flag_mouse_swing_left_first = 0;
                system_data.time.tick_mouse_key = 0x00;
                system_data.time.tick_mouse_key_max = 60;
            }
            if(system_data.time.tick_mouse_key == 0)
            {
                system_data.mouse_data_buffer_uploading[MOUSE_INDEX_SWING] = MOUSE_KEY_VALUE_SWING_RIGHT;
                flag_usb_endpoint2_uploading = 1;
            }
            system_data.time.tick_mouse_key++;
            if(system_data.time.tick_mouse_key >= system_data.time.tick_mouse_key_max)
            {
                system_data.time.tick_mouse_key = 0;
                system_data.time.tick_mouse_key_max = 20;
            }
    	}
    	else
    	{
            system_data.time.tick_mouse_key = 0;
            flag_mouse_swing_left_first = 0;
            flag_mouse_swing_right_first = 0;
    	}
    #endif
    }

    // keyboard: key pressed timeout, auto release
    if(flag_usb_endpoint1_null_data)
    {
        flag_usb_endpoint1_null_data = 0;
        flag_keyboard_update = 0;
        if(flag_keyboard_media_pressed)
        {
            flag_keyboard_update = 1;
            //system_data.usbp1_data.rf_data_received[0] |= KEYBOARD_DATA_MEDIA;
            system_data.usbp1_data.rf_data_media[0] |= KEYBOARD_DATA_MEDIA;
            system_data.usbp1_data.rf_data_media[1]=0x00;
        }
        if(flag_keyboard_standard_pressed)
        {
            flag_keyboard_update = 1;
            system_data.usbp1_data.rf_data_received[0] |= KEYBOARD_DATA_STANDARD;
        }
        /*
        else if(flag_keyboard_media_pressed)
        {
            flag_keyboard_update = 1;
            //system_data.usbp1_data.rf_data_received[0] |= KEYBOARD_DATA_MEDIA;
            system_data.usbp1_data.rf_data_media[0] |= KEYBOARD_DATA_MEDIA;
            system_data.usbp1_data.rf_data_media[1]=0x00;
        }
        */
        else if(flag_keyboard_mce_pressed)
        {
            flag_keyboard_update = 1;
            system_data.usbp1_data.rf_data_received[0] |= KEYBOARD_DATA_MCE;
        }
        else if(flag_keyboard_power_pressed)
        {
            flag_keyboard_update = 1;
            system_data.usbp1_data.rf_data_received[0] |= KEYBOARD_DATA_POWER;
        }
        system_data.usbp1_data.rf_data_received[1] |= 0x00;
        system_data.usbp1_data.rf_data_received_len = 2;
    }

    if(flag_keyboard_update)
    {
        flag_keyboard_update = 0;
        if(system_data.usbp1_data.rf_data_media[0] & KEYBOARD_DATA_MEDIA)
        {
            flag_usb_endpoint3_uploading = 1;
            flag_media_uploading = 1;
            system_data.usbp3_data.in_report[0] = 0x03;
            system_data.usbp3_data.in_report[1] = system_data.usbp1_data.rf_data_media[1];
            if(system_data.usbp1_data.rf_data_media[1])
                system_data.usbp3_data.in_report[2] = system_data.usbp1_data.rf_data_media[2];
            system_data.usbp3_data.in_report_len = 3;

            if(system_data.usbp1_data.rf_data_media[1])
                flag_keyboard_media_pressed = 1;
            else
               flag_keyboard_media_pressed = 0;
        }
        if(system_data.usbp1_data.rf_data_received[0] & KEYBOARD_DATA_STANDARD)
        {
            flag_usb_endpoint1_uploading = 1;
            system_data.usbp1_data.in_report[0] = system_data.usbp1_data.rf_data_received[1];
            driver_buffer_copy(&system_data.usbp1_data.in_report[2], &system_data.usbp1_data.rf_data_received[2], system_data.usbp1_data.rf_data_received_len-2);

            if(system_data.usbp1_data.rf_data_received_len > 2)
            {
                if(system_data.usbp1_data.rf_data_received[1] || system_data.usbp1_data.rf_data_received[2])
                    flag_keyboard_standard_pressed = 1;
                else
                   flag_keyboard_standard_pressed = 0;
            }
            else
            {
                if(system_data.usbp1_data.rf_data_received[1])
                    flag_keyboard_standard_pressed = 1;
                else
                   flag_keyboard_standard_pressed = 0;
            }
        }
        /*
        else if(system_data.usbp1_data.rf_data_received[0] & KEYBOARD_DATA_MEDIA)
        {
            flag_usb_endpoint3_uploading = 1;
            flag_media_uploading = 1;
            system_data.usbp3_data.in_report[0] = 0x03;
            system_data.usbp3_data.in_report[1] = system_data.usbp1_data.rf_data_received[1];
            if(system_data.usbp1_data.rf_data_received_len > 2)
                system_data.usbp3_data.in_report[2] = system_data.usbp1_data.rf_data_received[2];
            system_data.usbp3_data.in_report_len = 3;

            if(system_data.usbp1_data.rf_data_received_len > 2)
                flag_keyboard_media_pressed = 1;
            else
               flag_keyboard_media_pressed = 0;
        }
        */
    #ifdef KEYBOARD_MCE
        else if(system_data.usbp1_data.rf_data_received[0] & KEYBOARD_DATA_MCE)
        {
            flag_usb_endpoint3_uploading = 1;
            flag_mce_uploading = 1;
            system_data.usbp3_data.in_report[0] = 0x04;
            system_data.usbp3_data.in_report[1] = system_data.usbp1_data.rf_data_received[1];
            system_data.usbp3_data.in_report_len = 2;

            if(system_data.usbp1_data.rf_data_received[1])
                flag_keyboard_mce_pressed = 1;
            else
                flag_keyboard_mce_pressed = 1;
        }
    #endif
        else if(system_data.usbp1_data.rf_data_received[0] & KEYBOARD_DATA_POWER)
        {
            flag_usb_endpoint3_uploading = 1;
            flag_power_uploading = 1;
            system_data.usbp3_data.in_report[0] = 0x02;
            system_data.usbp3_data.in_report[1] = system_data.usbp1_data.rf_data_received[1];
            system_data.usbp3_data.in_report_len = 2;

            if(system_data.usbp1_data.rf_data_received[1])
                flag_keyboard_power_pressed = 1;
            else
                flag_keyboard_power_pressed = 1;
        }
    }
#endif
}

/*! \fn void application_dongle_usb_data_send_to_pc(void)
    \brief  The function is used to send data to PC through usb interface.

    Endpoint1 is used for keyboard, and endpoint2 is used for mouse, mce keys, power keys, and media keys.
    \param void
    \return void
*/
void application_dongle_usb_data_send_to_pc(void)
{
#if 0
    if(flag_usb_endpoint1_uploading && flag_usb_endpoint1_ready_uploading)
    {
        driver_usb_fifo_write(EP_1, 8, (UINT8 *)system_data.usbp1_data.in_report);
        driver_buffer_set(system_data.usbp1_data.in_report, 0, 8);
        flag_usb_endpoint1_uploading = 0;
        flag_usb_endpoint1_ready_uploading = 0;
        driver_usb_set_current_endpoint(EP_1);
    }

    if(flag_usb_endpoint2_uploading && flag_usb_endpoint2_ready_uploading)
    {
        /*
                                                            mac             windows         linux
                                                            boot normal    boot normal    boot normal
        flag_usb_idle                                       1        1     1        1     1       1
        flag_usb_get_protocol                               1              0              0
        system_data.usb_protocol_status                     0        1     0        0     0       0
                                                            need boot      no need boot   no need boot
        */
        if((system_data.usb_protocol_status == 0) && flag_usb_get_protocol && flag_usb_idle) //MAC BOOT
        {
            //system_data.usbp2_data.in_report[0] = system_data.mouse_data_buffer_uploading[MOUSE_INDEX_KEY];
            //system_data.usbp2_data.in_report[1] = system_data.mouse_data_buffer_uploading[MOUSE_INDEX_X];
            //system_data.usbp2_data.in_report[2] = system_data.mouse_data_buffer_uploading[MOUSE_INDEX_Y];
            //system_data.usbp2_data.in_report[3] = system_data.mouse_data_buffer_uploading[MOUSE_INDEX_WHEEL];
            driver_usb_fifo_write(EP_2, 4, (UINT8 *)system_data.mouse_data_buffer_uploading);//system_data.usbp2_data.in_report);
        }
        else
        {
            //system_data.usbp2_data.in_report[0] = system_data.mouse_data_buffer_uploading[MOUSE_INDEX_KEY];
            //system_data.usbp2_data.in_report[1] = system_data.mouse_data_buffer_uploading[MOUSE_INDEX_X];
            //system_data.usbp2_data.in_report[2] = system_data.mouse_data_buffer_uploading[MOUSE_INDEX_XH];
            //system_data.usbp2_data.in_report[3] = system_data.mouse_data_buffer_uploading[MOUSE_INDEX_Y];
            //system_data.usbp2_data.in_report[4] = system_data.mouse_data_buffer_uploading[MOUSE_INDEX_YH];
            //system_data.usbp2_data.in_report[5] = system_data.mouse_data_buffer_uploading[MOUSE_INDEX_WHEEL];
        #ifdef MOUSE_SWING
            //system_data.usbp2_data.in_report[6] = system_data.mouse_data_buffer_uploading[MOUSE_INDEX_SWING];
            driver_usb_fifo_write(EP_2, 7, (UINT8 *)system_data.mouse_data_buffer_uploading);//system_data.usbp2_data.in_report);
        #else
            driver_usb_fifo_write(EP_2, 6, (UINT8 *)system_data.mouse_data_buffer_uploading);//system_data.usbp2_data.in_report);
        #endif
        }

        driver_buffer_set(system_data.mouse_data_buffer_uploading, 0, 7);
        driver_buffer_set(&system_data.usbp2_data.in_report, 0, 7);
        flag_usb_endpoint2_uploading = 0;
        flag_usb_endpoint2_ready_uploading = 0;
        driver_usb_set_current_endpoint(EP_2);
    }

    if(flag_usb_endpoint3_uploading && flag_usb_endpoint3_ready_uploading)
    {
        flag_media_uploading = 0;
    #ifdef KEYBOARD_MCE
        flag_mce_uploading = 0;
    #endif
        flag_power_uploading = 0;
        driver_usb_fifo_write(EP_3, system_data.usbp3_data.in_report_len, (UINT8 *)system_data.usbp3_data.in_report);
        driver_buffer_set(system_data.usbp3_data.in_report, 0, 3);
		//driver_buffer_set(system_data.usbp1_data.rf_data_media, 0, 3);
        flag_usb_endpoint3_uploading = 0;
        flag_usb_endpoint3_ready_uploading = 0;
        driver_usb_set_current_endpoint(EP_3);
    }
#endif
}

/*! \fn void application_dongle_normal_submode_suspend(void)
    \brief The process funtion when dongle is in the suspended state.

    It will wake up periodly to check the mouse  events, and if true it will reset usb to notify PC to wake up, otherwise it will continue to sleep again.\n
    If PC wake up by itself, it will also receive the restore signal by usb interrupt and then switch to normal mode.
    \param void
    \return void
*/
void application_dongle_normal_submode_suspend(void)
{
    UINT8 temp_clk;

    USB_EN0 |= 0x02;            //usb_res_en:  USB Resume interrupt enable bit
    USB_PWR_CN |= 0x02;    //USB_sus£º USB module will enter low-power mode when write 1 into it. The USB protocol engine is stopped and no response to outside. It is used as suspend state usually in USB protocol.(can R/W by software£©

    temp_clk = CLK_EN_CFG;
    CLK_EN_CFG = 0x40;        //timer enable
    PALT = 0;                        //gpio, no second function
    PCON &= ~0x40;             //close 48M_en

    while(1)
    {
        RF_CHIP_DISABLE;//RF_POWER_DOWN;
        TF0 = 0;
        TR0 = 0;
        TL0 = (65050 & 0x00FF);
        TH0 = (65050 >> 8);
        TR0 = 1;
        MCU_IDLE_OSC32KHZ;
        wait();

        RF_CHIP_ENABLE;//RF_POWER_UP;
        TF0 = 0;
        TR0 = 0;
        TL0 = (65500 & 0x00FF);
        TH0 = (65500 >> 8);
        TR0 = 1;
        MCU_IDLE_OSC32KHZ;


        driver_rf_receive_packet();
        if(flag_rf_driver_received)
        {
            flag_rf_driver_received = 0;
            PCON |= 0x40;                           //48M_en
            PCON &= ~0x06;                        //no 32khz
            CLK_EN_CFG = temp_clk;           //resume clk before

            if(flag_usb_remote_wakeup)
            {
                while (CFG_EP1_1 != CONST_CFG_EP1_1)  //CFG_EP1_1 [0x0812], CFG_EP1_0 [0x0813] (endpoint 1 configure register)
                    USB_PWR_CN = 0x80;           //PULL UP enable, D+(dp) pull up enable in chip. When it is disabled, device disconnect with outside circuit.
                driver_delay_us(5000);
                USB_PWR_CN = 0x84;           //Usb_rst: USB module will reset when write 1 into it. (Exclude control register)

                USB_PWR_CN |= 0x01;         //wakeup: according USB protocol, the device with remote wakeup function can send wake up signal to host.(R/W£©When it is set to 1, USB force D+ and D- into K state, and release it when clear it.
                driver_delay_us(2500);
                USB_PWR_CN &= ~0x01;

                flag_usb_suspend = 0;
                system_data.normal_sub_mode = SYSTEM_NORMAL_WORK;
            }
            else
            {
                USB_PWR_CN |= 0x02;         //USB_sus£º USB module will enter low-power mode when write 1 into it. The USB protocol engineer is stopped and no response to outside. It is used as suspend state usually in USB protocol.(can R/W by software£©
                CLK_EN_CFG = 0x40;             //timer enable
                PCON &= ~0x40;                  //close 48M_en
            }
        }

        if(!flag_usb_suspend)
        {
            flag_usb_endpoint1_uploading = 1;
            PCON |= 0x40;
            PCON &= ~0x06;
            CLK_EN_CFG = temp_clk;

            while (CFG_EP1_1 != CONST_CFG_EP1_1)
                USB_PWR_CN = 0x80;
            USB_PWR_CN = 0x84;
            system_data.normal_sub_mode = SYSTEM_NORMAL_WORK;
            break;
        }
    }
}

/*! \fn void application_dongle_usb_data_received_analysis(void)
    \brief Receive the command from PC test and page program, and switch to the relative mode, such as page/debug/configure mode

    \param void
    \return void
*/
void application_dongle_usb_data_received_analysis(void)
{
#if 0
    if(flag_usb_endpoint0_accept)
    {
        flag_usb_endpoint0_accept = 0;

        switch(system_xdata.usbp0_data.set_report_data[0])
        {
            case COMMAND_MODE :
            #ifdef WATCHDOG_ENABLE
                WDCTL = 0xde;   //close when in test mode
                WDCTL = 0xad;
            #endif
		        flag_usb_endpoint0_ready_report = 1;
                switch(system_xdata.usbp0_data.set_report_data[1])
                {
                    case COM_MODE_TEST:
                        system_data.system_mode = SYSTEM_TEST;
                        break;
                    case COM_REG_READ:
                        switch(system_xdata.usbp0_data.set_report_data[2])
                        {
                            case 0x00:
								system_xdata.usbp0_data.get_report_data[1] = ID0;//rf_address_dongle1;
								system_xdata.usbp0_data.get_report_data[2] = ID1;//rf_address_dongle2;
								break;
                            case 0x01:
								system_xdata.usbp0_data.get_report_data[1] = system_data.rf_address_paged_mouse1;
								system_xdata.usbp0_data.get_report_data[2] = system_data.rf_address_paged_mouse2;
                                break;
                        }
                    case COM_TEST_POW_5:
                        driver_rf_ouput_power_value_set(POWER_VALUE_5DBM);
                        break;
                    case COM_TEST_POW_0:
                        driver_rf_ouput_power_value_set(POWER_VALUE_0DBM);
                        break;
                    case COM_TEST_POW_N5:
                        driver_rf_ouput_power_value_set(POWER_VALUE_MINUS_5DBM);
                        break;
                    case COM_TEST_POW_N10:
                        driver_rf_ouput_power_value_set(POWER_VALUE_MINUS_10DBM);
                        break;
                }
                break;
        }

        system_xdata.usbp0_data.set_report_data[0] = 0x00;
        system_xdata.usbp0_data.set_report_data[1] = 0x00;
        system_xdata.usbp0_data.set_report_data[2] = 0x00;
    }
#endif
}
//add
/*
void driver_send_keyboard_led_status(void)
{
     if(flag_send_state)
     {
         flag_send_state=0;
         rf_fifo_data[0]=DATATYPE_KEYBOARD;
         rf_fifo_data[1]=KEYBOARD_LED_STATUS;
         rf_fifo_data[2]=system_data.numlock_state;

         driver_rf_spi_set_mode_tx();
         if(driver_rf_data_send(3))
         {
            flag_send_state=0;
         }
         else
         {
           driver_delay_us(25);
         }
         driver_rf_spi_set_mode_rx();
    }
}
*/
//
/***********************************************************
						end file
***********************************************************/

