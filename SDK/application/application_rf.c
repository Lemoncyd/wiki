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
/*! \file application_rf.c
    \brief The application interface of rf module.
*/

#include "..\headfile\includes.h"

/*! \fn void application_dongle_rf_cd_detect( UINT8 count)
    \brief Dectect the carrier signal, if true but can NOT receive valid data, it has been interfered and will hop to the next channel.

    In RX mode a carrier detection (CD) signal is available. The CD is set to high when a RF signal is detected inside the receiving frequency channel.\n
    The internal CD signal is filtered before presented to CD register. The RF signal must be present for at least 128 us before the CD is set high.
    \param count - the delay ms to start CD
    \return void
*/
void application_dongle_rf_cd_detect(UINT8 count)
{
    UINT8 status;
    BOOL flag_rf_received_invalid = TRUE;

    /* In RX mode a carrier detection (CD) signal is available. The CD is set to high when a RF signal is detected inside
         the receiving frequency channel. The internal CD signal is filtered before presented to CD register. The RF signal
         must be present for at least 128 us before the CD is set high. */
    //
    driver_delay_us(50);
	#if 0
    status = driver_rf_spi_read_register(CD);
    if(status & CD_INT)                                                               //detect the valid cd
    {
        driver_timer0_reset();
        system_data.time.tick_system = 0;
        while(system_data.time.tick_system < count)       // 2ms*count
        {
            driver_delay_us(60);                                                      //150us
            status = driver_rf_spi_read_register(CD);
            if((status & CD_INT) == 0)
            {
                flag_rf_received_invalid = FALSE;                                     //cd disappear
                break;
            }

            status = BK2401_STATUS;//driver_rf_spi_read_register(STATUS);
            if(status & STATUS_RX_DR)
            {
                flag_rf_received_invalid = FALSE;                                    //reveive the valid data from mouse, so the cd is valid
                break;
            }
        }

        if(flag_rf_received_invalid)                                                     //hop when just only cd detected
            driver_rf_channel_switch();
    }
	#endif
}

/*! \fn void application_dongle_rf_receive_with_multi_hop_in_8ms(void)
    \brief Dongle tries to receive rf data from mouse  in 2ms interval for 3 times. If true it will reset timer0, otherwise it just hop to next channel to go on searching.

    \param void
    \return void
*/
#if 0
void application_dongle_rf_receive_with_multi_hop_in_8ms(void)
{
    UINT8 status, count = 3;

    driver_timer0_reset();
    while(count)
    {
        count--;
        driver_rf_channel_switch();
        system_data.time.tick_system = 0;
        while(system_data.time.tick_system < 1)             // 2ms
        {
            status = BK2401_STATUS;//driver_rf_spi_read_register(STATUS);
            if(status & STATUS_RX_DR)
            {
                count = 0;
                driver_timer0_reset();
                system_data.time.tick_2ms = 0;
                break;
            }
    	 }
    }
}
#endif

/***********************************************************
						end file
***********************************************************/
