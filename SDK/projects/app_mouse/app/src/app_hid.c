/**
 ****************************************************************************************
 *
 * @file app_hid.c
 *
 * @brief HID Application Module entry point
 *
 * Copyright (C) RivieraWaves 2009-2015
 *
 *
 ****************************************************************************************
 */

/**
 ****************************************************************************************
 * @addtogroup APP
 * @{
 ****************************************************************************************
 */

#include "rwapp_config.h"            // SW configuration

#include <stdio.h>
#include <string.h>

#if (BLE_APP_HID)
/*
 * INCLUDE FILES
 ****************************************************************************************
 */

#include "app.h"                    // Application Definitions
#include "app_sec.h"                // Application Security Module API
#include "app_task.h"               // Application task definitions
#include "app_hid.h"                // HID Application Module Definitions
#include "hogpd_task.h"             // HID Over GATT Profile Device Role Functions
#include "prf_types.h"              // Profile common types Definition
#include "arch.h"                    // Platform Definitions
#include "prf.h"
#include "ke_timer.h"
#include "user_config.h"
#include "uart2.h"
#if (NVDS_SUPPORT)
#include "nvds.h"                   // NVDS Definitions
#endif //(NVDS_SUPPORT)

#if (DISPLAY_SUPPORT)
#include "app_display.h"            // Application Display Module
#endif //(DISPLAY_SUPPORT)

#include "co_utils.h"               // Common functions

#if (KE_PROFILING)
#include "ke_mem.h"
#endif //(KE_PROFILING)
/*
 * DEFINES
 ****************************************************************************************
 */

/// Length of the HID Mouse Report
//#define APP_HID_MOUSE_REPORT_LEN       (6)

#define APP_HID_HID_REPORT_MAX_LEN       (8)

#define APP_HID_BK_REPORT_MAP_LEN      (sizeof(gHIDReportDescriptor))

/// Duration before connection update procedure if no report received (mouse is silent) - 20s
#define APP_HID_SILENCE_DURATION_1     (2000)
/// Duration before disconnection if no report is received after connection update - 60s
#define APP_HID_SILENCE_DURATION_2     (6000)

/// Number of reports that can be sent
#define APP_HID_NB_SEND_REPORT         (10)

/*
 * ENUMERATIONS
 ****************************************************************************************
 */


/*
 * LOCAL VARIABLE DEFINITIONS
 ****************************************************************************************
 */

/// HID Application Module Environment Structure
 struct app_hid_env_tag app_hid_env;

#if 1
#define HIDS_KB_REPORT_ID       	1
#define HIDS_MOUSE_REPORT_ID    	5
#define RMC_VENDOR_REPORT_ID_1  	0xfd
#define RMC_VENDOR_REPORT_ID_2   	0x1e
#define HIDS_MM_KB_REPORT_ID     	3
#define RMC_SENSORS_DATA_REPORT_ID  0x32


#define RMC_WITH_VOICE				1
#define MULTIMEDIA_KEYBOARD			1
#define RMC_WITH_SENSORS_DATA		1

const uint8_t gHIDReportDescriptor[] =
{
    0x05, 0x01,
    0x09, 0x06,
    0xa1, 0x01,
    0x85, HIDS_KB_REPORT_ID,
    0x05, 0x07,
    0x19, 0xe0,
    0x29, 0xe7,
    0x15, 0x00 ,
    0x25, 0x01,
    0x75, 0x01,
    0x95, 0x08,
    0x81, 0x02,
    0x95, 0x01,
    0x75, 0x08,
    0x81, 0x01,

    0x95, 0x05,
    0x75, 0x01,
    0x05, 0x08,
    0x19, 0x01,
    0x29, 0x05,
    0x91, 0x02,
    0x95, 0x01,
    0x75, 0x03,
    0x91, 0x01,
    0x95, 0x06,
    0x75, 0x08,
    0x15, 0x00,
    0x25, 0xff,
    0x05, 0x07,
    0x19, 0x00,
    0x29, 0xff,
    0x81, 0x00,
    0xc0,

    0x05, 0x01,  /// USAGE PAGE (Generic Desktop) ��λ��Generic Desktopҳ������൱��ָ����תһ���Ķ���
    0x09, 0x02,  /// USAGE (Mouse) ��ʾ����һ�����
    0xa1, 0x01,  /// COLLECTION (Application) �Ƕ�Mouse�Ľ���
    0x85, HIDS_MOUSE_REPORT_ID, /// REPORT ID (5)
    0x09, 0x01,  /// USAGE (Pointer) ��ʾָ����ʽ
    0xa1, 0x00,  /// COLLECTION (Physical)  �Ƕ�Pointer�Ľ���
    /**
     * ----------------------------------------------------------------------------
     * BUTTONS
     * ----------------------------------------------------------------------------
     */
    0x05, 0x09,  /// USAGE PAGE (Buttons)
    0x19, 0x01,  /// Usage Minimum (01) -Button 1
    0x29, 0x05,  /// Usage Maximum (03) -Button 3
    0x15, 0x00,  /// Logical Minimum (0)
    0x25, 0x01,  /// Logical Maximum (1)
    0x95, 0x05,  /// Report Count (3)
    0x75, 0x01,  /// Report Size (1)
    0x81, 0x02,  /// Input (Data, Variable,Absolute) - Button states
    0x95, 0x01,  /// Report Count (1)
    0x75, 0x03,  /// Report Size (5)
    0x81, 0x01,  /// Input (Constant) - Paddingor Reserved bits
    /**
     * ----------------------------------------------------------------------------
     * MOVEMENT DATA
     * ----------------------------------------------------------------------------
     */
    0x05, 0x01,  /// USAGE PAGE (Generic Desktop)
    0x09, 0x30,  /// USAGE (X)
    0x09, 0x31,  /// USAGE (Y)
    0x16, 0x01, 0xF8,              //     Logical Minimum (-2047)
    0x26, 0xFF, 0x07,              //     Logical Maximum (2047)
    0x75, 0x0C,                    //     REPORT_SIZE (12)
    0x95, 0x02,                    //     REPORT_COUNT (2)
    0x81, 0x06,                    //     INPUT (Data,Var,Rel)

    0x09, 0x38,  /// USAGE (Wheel)
    0x15, 0x81,  /// LOGICAL MINIMUM (-127)
    0x25, 0x7f,  /// LOGICAL MAXIMUM (127)
    0x75, 0x08,  /// REPORT SIZE (8)
    0x95, 0x01,  /// REPORT COUNT (3)
    0x81, 0x06,  /// INPUT
#if MOUSE_SWING
    0x05, 0x0c,
    0x0a, 0x38, 0x02,       // AC PAN.
    0x95, 0x01,
    0x81, 0x06,
#endif

    0xc0,
    0xc0,

#if RMC_WITH_VOICE

    0x06, 0x12, 0xff,
    0x0a, 0x12, 0xff,
    0xa1, 0x01, 		// Collection
    0x85, RMC_VENDOR_REPORT_ID_1, // Report ID
    0x09, 0x01, 		// Usage
    0x75, 0x08, 		// Report Size (8),
    //0x95, 0xff, 		// Report Count (256), modify
    0x95, 0x13,			// Report Count (19),
    0x16, 0x00, 0x00, 	// Logical Minimum ,
    0x26, 0xff ,0x00, 	// Logical Maximum ,
    0x19, 0x00, 		// Usage Minimum (),
    0x29, 0xff, 		// Usage Maximum (),
    0x81, 0x00, 		// Input
    0xc0,				// END_COLLECTION

    0x06, 0x12, 0xff,
    0x0a, 0x12, 0xff,
    0xa1, 0x01, 		// Collection
    0x85, RMC_VENDOR_REPORT_ID_2, // Report ID
    0x09, 0x01, 		// Usage
    0x75, 0x08, 		// Report Size (8),
    //0x95, 0xff, 		// Report Count (256),
    0x95, 0x13,			// Report Count (19),
    0x16, 0x00, 0x00, 	// Logical Minimum ,
    0x26, 0xff, 0x00, 	// Logical Maximum ,
    0x19, 0x00, 		// Usage Minimum (),
    0x29, 0xff, 		// Usage Maximum (),
    0x81, 0x00,		// Input

    0x95, 0x08,		// Usage
    0x75, 0x01,		// Report Size (1),
    0x05, 0x08,		// Report Count (8),
    0x19, 0x01,		// Usage Minimum (),
    0x29, 0x08,		// Usage Maximum (),
    0x91, 0x02,		// Output
    0xc0,			// END_COLLECTION
#endif

#if MULTIMEDIA_KEYBOARD
     0x05, 0x0c,           // USAGE_PAGE (Consumer Devices)
     0x09, 0x01,           // USAGE (Consumer Control)
     0xa1, 0x01,           // COLLECTION (Application)
     0x85, HIDS_MM_KB_REPORT_ID,  // REPORT_ID (3)
     0x19, 0x00,          //USAGE_MINIMUM (0)
     0x2A, 0x9c, 0x02,    //USAGE_MAXIMUM (29c)
     0x15, 0x00,          //LOGICAL_MINIMUM (0)
     0x26, 0x9c, 0x02,    //LOGICAL_MAXIMUM (29c)
     0x95, 0x01,          //REPORT_COUNT (1)
     0x75, 0x10,          //REPORT_SIZE (16)
     0x81, 0x00,          //INPUT (Data,Ary,Abs)
     0xc0,
#endif

#if RMC_WITH_SENSORS_DATA
	0x06, 0x00, 0xff,
	0x09, 0x00,    // USAGE
	0xa1, 0x01,    // COLLECTION (Application)
	0x85, RMC_SENSORS_DATA_REPORT_ID,  // REPORT_ID (0x32)
	0x09, 0x00,
	0x15, 0x80,   //LOGICAL_MINIMUM ()
	0x25, 0x7f,   //LOGICAL MAXIMUM ()
	0x75, 0x08,   // Report Size (8),
	0x95, 0x12,   // Report Count (18),
	0x81, 0x22,   // INPUT
	0xc0
#endif
};

#endif


/*
 * GLOBAL FUNCTION DEFINITIONS
 ****************************************************************************************
 */

void app_hid_init(void)
{
    // Length of the mouse timeout value
    uint8_t length = NVDS_LEN_MOUSE_TIMEOUT;

    // Reset the environment
    memset(&app_hid_env, 0, sizeof(app_hid_env));

    app_hid_env.nb_report = APP_HID_NB_SEND_REPORT;

    /*
     * Get the timeout value from the NVDS - This value is used each time a report is received
     * from the PS2 driver, store it in the environment.
     */
    if (nvds_get(NVDS_TAG_MOUSE_TIMEOUT, &length, (uint8_t *)&app_hid_env.timeout) != NVDS_OK)
    {
        app_hid_env.timeout = APP_HID_SILENCE_DURATION_1;
    }
}


/*
 ****************************************************************************************
 * @brief Function called when get GAP manager command complete events.
 *
 ****************************************************************************************
 */
void app_hid_start_mouse(void)
{
    /*-----------------------------------------------------------------------------------
     * CONFIGURE THE MOUSE
     *----------------------------------------------------------------------------------*/
    #if (PS2_SUPPORT)
    // Default mouse rate (200 report/s)
    uint8_t rate = 200;

    #if (NVDS_SUPPORT)
    uint8_t length = NVDS_LEN_MOUSE_SAMPLE_RATE;

    // Get sample rate from NVDS
    if (nvds_get(NVDS_TAG_MOUSE_SAMPLE_RATE, &length, &rate) == NVDS_OK)
    {
        // Check if value is among supported set
        if ((rate != 10) && (rate != 20) && (rate != 40) && (rate != 60) &&
            (rate != 80) && (rate != 100) && (rate != 200) )
        {
            // Default value
            rate = 200;
        }
    }
    #endif //(NVDS_SUPPORT)

    #endif //(PS2_SUPPORT)
}

void app_hid_add_hids(void)
{
	struct hogpd_db_cfg *db_cfg;
	// Prepare the HOGPD_CREATE_DB_REQ message
	struct gapm_profile_task_add_cmd *req = KE_MSG_ALLOC_DYN(GAPM_PROFILE_TASK_ADD_CMD,
	                                               TASK_GAPM, TASK_APP,
	                                               gapm_profile_task_add_cmd, sizeof(struct hogpd_db_cfg));
	uart_printf("%s \r\n",__func__);

	// Fill message
	req->operation   = GAPM_PROFILE_TASK_ADD;
	req->sec_lvl     = 0;
	req->prf_task_id = TASK_ID_HOGPD;
	req->app_task    = TASK_APP;
	req->start_hdl   = 0;

	// Set parameters
	db_cfg = (struct hogpd_db_cfg* ) req->param;

	// Only one HIDS instance is useful
	db_cfg->hids_nb = 1;


	/*****************************************************/
	// The device is a keyboard
	db_cfg->cfg[0].svc_features =  HOGPD_CFG_KEYBOARD | HOGPD_CFG_PROTO_MODE ;

	// Only one Report Characteristic is requested
	db_cfg->cfg[0].report_nb    = 8;

	db_cfg->cfg[0].report_id[0] = HIDS_KB_REPORT_ID;    //standard key

	// The report is an input report
	db_cfg->cfg[0].report_char_cfg[0] = HOGPD_CFG_REPORT_IN;

	/*****************************************************/
	db_cfg->cfg[0].report_id[1] = HIDS_KB_REPORT_ID;

	// The report is an input report
	db_cfg->cfg[0].report_char_cfg[1] = HOGPD_CFG_REPORT_OUT;

	/*****************************************************/
	db_cfg->cfg[0].report_id[2] = HIDS_MOUSE_REPORT_ID;   //mouse

	// The report is an input report
	db_cfg->cfg[0].report_char_cfg[2] = HOGPD_CFG_REPORT_IN;

	/*****************************************************/
	db_cfg->cfg[0].report_id[3] = RMC_VENDOR_REPORT_ID_1;   //voice 1

	// The report is an input report
	db_cfg->cfg[0].report_char_cfg[3] = HOGPD_CFG_REPORT_IN;
	/*****************************************************/

	db_cfg->cfg[0].report_id[4] = RMC_VENDOR_REPORT_ID_2;   //voice 2

	// The report is an input report
	db_cfg->cfg[0].report_char_cfg[4] = HOGPD_CFG_REPORT_IN;

	/*****************************************************/
	db_cfg->cfg[0].report_id[5] = RMC_VENDOR_REPORT_ID_2;

	// The report is an input report
	db_cfg->cfg[0].report_char_cfg[5] = HOGPD_CFG_REPORT_OUT;
	/*****************************************************/

	db_cfg->cfg[0].report_id[6] = HIDS_MM_KB_REPORT_ID;  //media  key

	// The report is an input report
	db_cfg->cfg[0].report_char_cfg[6] = HOGPD_CFG_REPORT_IN;
	/*****************************************************/

	db_cfg->cfg[0].report_id[7] = RMC_SENSORS_DATA_REPORT_ID;  //sensor

	// The report is an input report
	db_cfg->cfg[0].report_char_cfg[7] = HOGPD_CFG_REPORT_IN;
	/*****************************************************/

	// HID Information
	db_cfg->cfg[0].hid_info.bcdHID       = 0x0111;         // HID Version 1.11
	db_cfg->cfg[0].hid_info.bCountryCode = 0x00;
	db_cfg->cfg[0].hid_info.flags        = HIDS_REMOTE_WAKE_CAPABLE | HIDS_NORM_CONNECTABLE;

	// Send the message
	ke_msg_send(req);
}



/*****************************************************************************************
 * @brief Function called when get connection complete event from the GAP
 *

**************************************************************************************** */
void app_hid_enable_prf(uint8_t conidx)
{
    // Requested connection parameters
    //struct gapc_conn_param conn_param;

    uint16_t ntf_cfg;

    // Store the connection handle
    app_hid_env.conidx = conidx;

    // Allocate the message
    struct hogpd_enable_req * req = KE_MSG_ALLOC(HOGPD_ENABLE_REQ,
                                                 prf_get_task_from_id(TASK_ID_HOGPD),
                                                 TASK_APP,
                                                 hogpd_enable_req);

    // Fill in the parameter structure
    req->conidx     = conidx;
    // Notifications are disabled
    ntf_cfg         = 0xffff;

    // Go to Enabled state
    app_hid_env.state = APP_HID_READY;

    #if (NVDS_SUPPORT)
    // If first connection with the peer device
   // if (app_sec_get_bond_status())
    {
        // Length of the value read in NVDS
        uint8_t length   = NVDS_LEN_MOUSE_NTF_CFG;
        // Notification configuration

        if (nvds_get(NVDS_TAG_MOUSE_NTF_CFG, &length, (uint8_t *)&ntf_cfg) != NVDS_OK)
        {
            // If we are bonded this information should be present in the NVDS
           // ASSERT_ERR(0);
        }

        // CCC enable notification
        if ((ntf_cfg & HOGPD_CFG_REPORT_NTF_EN ) != 0)
        {
            // The device is ready to send reports to the peer device
            app_hid_env.state = APP_HID_READY;
           // app_hid_env.nb_report = APP_HID_NB_SEND_REPORT;

        }
    }
    #endif //(NVDS_SUPPORT)

    req->ntf_cfg[conidx] = ntf_cfg;


    // Send the message
    ke_msg_send(req);
}


void app_hid_send_report(uint8_t *data, uint8_t len)
{
	//uart_printf("app_hid_state = %x,len=%d\r\n", app_hid_env.state,len);
	switch (app_hid_env.state)
	{
	    case (APP_HID_READY):
	    {
	        // Check if the report can be sent
            struct hogpd_report_upd_req * req = KE_MSG_ALLOC_DYN(HOGPD_REPORT_UPD_REQ,
	                                                      prf_get_task_from_id(TASK_ID_HOGPD),
	                                                      TASK_APP,
	                                                      hogpd_report_upd_req,
	                                                      APP_HID_HID_REPORT_MAX_LEN);

            uint8_t report_buff[APP_HID_HID_REPORT_MAX_LEN];
            uint8_t status = 0;

            memset(&report_buff[0], 0, APP_HID_HID_REPORT_MAX_LEN);

            if((len == APP_HID_MOUSE_REPORT_LEN)||(len == APP_HID_MOUSE1_REPORT_LEN)|| (len == APP_HID_MOUSE2_REPORT_LEN))
            {
                status = 1;

                report_buff[0] = data[0];
                report_buff[1] = data[1];
                report_buff[2] = data[2];
                report_buff[3] = data[3];
                report_buff[4] = data[4];
                report_buff[5] = data[5];
                report_buff[6] = data[6];
                report_buff[7] = data[7];

                // Allocate the HOGPD_REPORT_UPD_REQ message
                req->conidx  = app_hid_env.conidx;
                //now fill report
                req->report.hid_idx  = app_hid_env.conidx;
                req->report.type     = HOGPD_REPORT;
                req->report.idx      = APP_HID_MOUSE_IN_ENDPORT;
                req->report.length   = len;
                memcpy(&req->report.value[0], &report_buff[0], len);
            }
			else if(len == APP_HID_KEYBOARD_REPORT_LEN)
			{
				status = 1;

			 	report_buff[0] = data[0];
			 	report_buff[1] = data[1];
			 	report_buff[2] = data[2];
			 	report_buff[3] = data[3];
			 	report_buff[4] = data[4];
			 	report_buff[5] = data[5];
			 	report_buff[6] = data[6];
				report_buff[7] = data[7];

	         	// Allocate the HOGPD_REPORT_UPD_REQ message
                req->conidx  = app_hid_env.conidx;
                //now fill report
                req->report.hid_idx  = app_hid_env.conidx;
                req->report.type     = HOGPD_REPORT;
                req->report.idx      = APP_HID_KEYBOARD_IN_ENDPORT;
                req->report.length   = APP_HID_KEYBOARD_REPORT_LEN;
                memcpy(&req->report.value[0], &report_buff[0], APP_HID_KEYBOARD_REPORT_LEN);
			}
			else if(len == APP_HID_MEDIA_REPORT_LEN)
			{
				status = 1;

				report_buff[0] = data[0];
				report_buff[1] = data[1];

				// Allocate the HOGPD_REPORT_UPD_REQ message
				req->conidx  = app_hid_env.conidx;
				//now fill report
				req->report.hid_idx  = app_hid_env.conidx;
				req->report.type     = HOGPD_REPORT;
				req->report.idx      = APP_HID_MEDIA_IN_ENDPORT;
				req->report.length   = APP_HID_MEDIA_REPORT_LEN;
				memcpy(&req->report.value[0], &report_buff[0], APP_HID_MEDIA_REPORT_LEN);
			}
			else if(len == APP_HID_POWER_REPORT_LEN)
			{
				status = 1;
				report_buff[0] = data[0];

				//Allocate the HOGPD_REPORT_UPD_REQ message
				req->conidx  = app_hid_env.conidx;
				//now fill report
				req->report.hid_idx  = app_hid_env.conidx;
				req->report.type     = HOGPD_REPORT;
				req->report.idx      = APP_HID_POWER_IN_ENDPORT;
				req->report.length   = APP_HID_POWER_REPORT_LEN;
				memcpy(&req->report.value[0], &report_buff[0], APP_HID_POWER_REPORT_LEN);
			}
	      	// Buffer used to create the Report
			if(status)
			{
				ke_msg_send(req);
                app_hid_env.state = APP_HID_IDLE;
			}
			else
			{
				ke_msg_free(ke_param2msg(req));	// free
			}
	    } break;

	    case (APP_HID_WAIT_REP):
	    {
	        // Requested connection parameters
	        struct gapc_conn_param conn_param;

	       /*
	        * Requested connection interval: 10ms
	        * Latency: 25
	        * Supervision Timeout: 2s
	        */
	        conn_param.intv_min = 8;
	        conn_param.intv_max = 8;
	        conn_param.latency  = 25;
	        conn_param.time_out = 200;

	        appm_update_param(&conn_param);

	        // Go back to the ready state
	        app_hid_env.state = APP_HID_READY;
	    } break;

	    case (APP_HID_IDLE):
	    {
	        // Try to restart advertising if needed
	       // appm_start_advertising();
	    } break;

	    // DISABLE and ENABLED states
	    default:
	    {
	        // Drop the message
	    } break;
	}
}



/*
 * MESSAGE HANDLERS
 ****************************************************************************************
 */


static int hogpd_ctnl_pt_ind_handler(ke_msg_id_t const msgid,
                                     struct hogpd_ctnl_pt_ind const *param,
                                     ke_task_id_t const dest_id,
                                     ke_task_id_t const src_id)
{
	uart_printf("%s,(%d) \r\n",__func__,__LINE__);


    if (param->conidx == app_hid_env.conidx)
    {
        //make use of param->hid_ctnl_pt
        struct hogpd_report_cfm *req = KE_MSG_ALLOC_DYN(HOGPD_REPORT_CFM,
                                                        prf_get_task_from_id(TASK_ID_HOGPD),/* src_id */
                                                        TASK_APP,
                                                        hogpd_report_cfm,
                                                        0);

        req->conidx = param->conidx; ///app_hid_env.conidx; ///???
        /// Operation requested (read/write @see enum hogpd_op)
        req->operation = HOGPD_OP_REPORT_WRITE;
        /// Status of the request
        req->status = GAP_ERR_NO_ERROR;  ///???
        /// Report Info
        //req->report;
        /// HIDS Instance
        req->report.hid_idx = app_hid_env.conidx; ///???
        /// type of report (@see enum hogpd_report_type)
        req->report.type = HOGPD_BOOT_REPORT_DEFAULT;//outside
        /// Report Length (uint8_t)
        req->report.length = 0;
        /// Report Instance - 0 for boot reports and report map
        req->report.idx = 0;
        /// Report data


        // Send the message
        ke_msg_send(req);
    }
    return (KE_MSG_CONSUMED);
}




static int hogpd_ntf_cfg_ind_handler(ke_msg_id_t const msgid,
                                     struct hogpd_ntf_cfg_ind const *param,
                                     ke_task_id_t const dest_id,
                                     ke_task_id_t const src_id)
{
	uart_printf("%s,(%d) \r\n",__func__,__LINE__);

    if (app_hid_env.conidx == param->conidx)
    {
        if ((param->ntf_cfg[param->conidx] & HOGPD_CFG_REPORT_NTF_EN ) != 0)
        {
            // The device is ready to send reports to the peer device
            app_hid_env.state = APP_HID_READY;
        }
        else
        {
            // Come back to the Enabled state
            if (app_hid_env.state == APP_HID_READY)
            {
                app_hid_env.state = APP_HID_ENABLED;
            }
        }

        // Store the notification configuration in the database
        if (nvds_put(NVDS_TAG_MOUSE_NTF_CFG, NVDS_LEN_MOUSE_NTF_CFG,
                     (uint8_t *)&param->ntf_cfg[param->conidx]) != NVDS_OK)
        {
            // Should not happen
            ASSERT_ERR(0);
        }
    }

    return (KE_MSG_CONSUMED);
}

static int hogpd_report_req_ind_handler(ke_msg_id_t const msgid,
                                    struct hogpd_report_req_ind const *param,
                                    ke_task_id_t const dest_id,
                                    ke_task_id_t const src_id)
{

	uart_printf("hogpd_report_req_ind_handler operation = %x,type = %x\r\n",param->operation,param->report.type);

	if ((param->operation == HOGPD_OP_REPORT_READ) && (param->report.type == HOGPD_REPORT_MAP))
	{
		struct hogpd_report_cfm *req = KE_MSG_ALLOC_DYN(HOGPD_REPORT_CFM,
	                                        prf_get_task_from_id(TASK_ID_HOGPD),
	                                        TASK_APP,
	                                        hogpd_report_cfm,
	                                        APP_HID_BK_REPORT_MAP_LEN );

		req->conidx = app_hid_env.conidx;
		/// Operation requested (read/write @see enum hogpd_op)
		req->operation = HOGPD_OP_REPORT_READ;
		/// Status of the request
		req->status = GAP_ERR_NO_ERROR;
		/// HIDS Instance
		req->report.hid_idx = param->report.hid_idx;
		/// type of report (@see enum hogpd_report_type)
		req->report.type = HOGPD_REPORT_MAP;
		/// Report Length (uint8_t)
		req->report.length =  APP_HID_BK_REPORT_MAP_LEN;
		/// Report Instance - 0 for boot reports and report map
		req->report.idx = 0;
		/// Report data

		memcpy(&req->report.value[0], &gHIDReportDescriptor[0], APP_HID_BK_REPORT_MAP_LEN);

		// Send the message
		ke_msg_send(req);

	}
	else
	{
		if (param->report.type == HOGPD_BOOT_MOUSE_INPUT_REPORT)
		{
			//request of boot mouse report
			struct hogpd_report_cfm *req = KE_MSG_ALLOC_DYN(HOGPD_REPORT_CFM,
			                                        prf_get_task_from_id(TASK_ID_HOGPD),
			                                        TASK_APP,
			                                        hogpd_report_cfm,
			                                        5/*param->report.length*/);

			req->conidx = param->conidx; ///app_hid_env.conidx;
			/// Operation requested (read/write @see enum hogpd_op)
			req->operation = HOGPD_OP_REPORT_READ;
			/// Status of the request
			req->status = GAP_ERR_NO_ERROR;
			/// HIDS Instance
			req->report.hid_idx = app_hid_env.conidx;
			/// type of report (@see enum hogpd_report_type)
			req->report.type = param->report.type;
			/// Report Length (uint8_t)
			req->report.length = 5; //param->report.length;
			/// Report Instance - 0 for boot reports and report map
			req->report.idx = param->report.idx; //0;
			/// Report data
            memset(&req->report.value[0], 0, 5);
			// Send the message
			ke_msg_send(req);
		}
		else if (param->report.type == HOGPD_REPORT)
		{
			//request of mouse report
			struct hogpd_report_cfm *req = KE_MSG_ALLOC_DYN(HOGPD_REPORT_CFM,
			                                                prf_get_task_from_id(TASK_ID_HOGPD),
			                                                TASK_APP,
			                                                hogpd_report_cfm,
			                                                8/*param->report.length*/);

			req->conidx = param->conidx; ///app_hid_env.conidx;
			/// Operation requested (read/write @see enum hogpd_op)
			req->operation = HOGPD_OP_REPORT_READ;
			/// Status of the request
			req->status = GAP_ERR_NO_ERROR;
			/// HIDS Instance
			req->report.hid_idx = app_hid_env.conidx;
			/// type of report (@see enum hogpd_report_type)
			req->report.type = param->report.type;
			/// Report Length (uint8_t)
			if(param->report.idx==0)
				req->report.length = 8;
			else if(param->report.idx==1)
				req->report.length = 2;
			if(param->report.idx==2)
				req->report.length = 5;
			if(param->report.idx==6)
				req->report.length = 2;
			/// Report Instance - 0 for boot reports and report map
			req->report.idx = param->report.idx;
			/// Report data
			memset(&req->report.value[0], 0, 8);
			//req->report.value[0] = param->report.hid_idx;  /// HIDS Instance
			//req->report.value[1] = param->report.type;    /// type of report (@see enum hogpd_report_type)
			//req->report.value[2] = param->report.length; /// Report Length (uint8_t)
			//req->report.value[3] = param->report.idx;    /// Report Instance - 0 for boot reports and report map

			// Send the message
			ke_msg_send(req);
		}
		else
		{
			struct hogpd_report_cfm *req = KE_MSG_ALLOC_DYN(HOGPD_REPORT_CFM,
			                                            prf_get_task_from_id(TASK_ID_HOGPD),
			                                            TASK_APP,
			                                            hogpd_report_cfm,
			                                            8/*param->report.length*/);

			req->conidx = param->conidx; ///app_hid_env.conidx;
			/// Operation requested (read/write @see enum hogpd_op)
			req->operation = HOGPD_OP_REPORT_READ;
			/// Status of the request
			req->status = GAP_ERR_NO_ERROR;
			/// Report Info
			//req->report;
			/// HIDS Instance
			req->report.hid_idx = app_hid_env.conidx;
			/// type of report (@see enum hogpd_report_type)
			req->report.type = param->report.type;
			/// Report Length (uint8_t)
			if(param->report.type==HOGPD_BOOT_KEYBOARD_INPUT_REPORT)
				req->report.length = 8;
			else
				req->report.length = 2;
			/// Report Instance - 0 for boot reports and report map
			req->report.idx = param->report.idx; //0;
			/// Report data
			memset(&req->report.value[0], 0, 8);
			//req->report.value[0] = param->report.hid_idx; /// HIDS Instance
			//req->report.value[1] = param->report.type;    /// type of report (@see enum hogpd_report_type)
			//req->report.value[2] = param->report.length;  /// Report Length (uint8_t)
			//req->report.value[3] = param->report.idx;     /// Report Instance - 0 for boot reports and report map

			// Send the message
			ke_msg_send(req);
		}
	}

    return (KE_MSG_CONSUMED);
}

static int hogpd_proto_mode_req_ind_handler(ke_msg_id_t const msgid,
                                        struct hogpd_proto_mode_req_ind const *param,
                                        ke_task_id_t const dest_id,
                                        ke_task_id_t const src_id)
{
	uart_printf("%s,(%d) \r\n",__func__,__LINE__);

    if ((param->conidx == app_hid_env.conidx) && (param->operation == HOGPD_OP_PROT_UPDATE))
    {

        //make use of param->proto_mode
        struct hogpd_proto_mode_cfm *req = KE_MSG_ALLOC_DYN(HOGPD_PROTO_MODE_CFM,
                                                        prf_get_task_from_id(TASK_ID_HOGPD),/* src_id */
                                                        TASK_APP,
                                                        hogpd_proto_mode_cfm,
                                                        0);
        /// Connection Index
        req->conidx = app_hid_env.conidx;
        /// Status of the request
        req->status = GAP_ERR_NO_ERROR;
        /// HIDS Instance
        req->hid_idx = app_hid_env.conidx;
        /// New Protocol Mode Characteristic Value
        req->proto_mode = param->proto_mode;


        // Send the message
        ke_msg_send(req);
    }
    else
    {
        struct hogpd_proto_mode_cfm *req = KE_MSG_ALLOC_DYN(HOGPD_PROTO_MODE_CFM,
                                                        prf_get_task_from_id(TASK_ID_HOGPD),/* src_id */
                                                        TASK_APP,
                                                        hogpd_proto_mode_cfm,
                                                        0);
        /// Status of the request
        req->status = ATT_ERR_APP_ERROR;

        /// Connection Index
        req->conidx = app_hid_env.conidx;
        /// HIDS Instance
        req->hid_idx = app_hid_env.conidx;
        /// New Protocol Mode Characteristic Value
        req->proto_mode = param->proto_mode;

        // Send the message
        ke_msg_send(req);
    }
    return (KE_MSG_CONSUMED);
}

extern uint8_t send_key_en;

static int hogpd_report_upd_handler(ke_msg_id_t const msgid,
                                   struct hogpd_report_upd_rsp const *param,
                                   ke_task_id_t const dest_id,
                                   ke_task_id_t const src_id)
{
//	uart_printf("%s,(%d) \r\n",__func__,__LINE__);
    send_key_en = 0;
    if(param->status == GAP_ERR_NO_ERROR)
    {
        // Go back to the ready state
        app_hid_env.state = APP_HID_READY;
    }
    return (KE_MSG_CONSUMED);
}

static int hogpd_enable_rsp_handler(ke_msg_id_t const msgid,
                                     struct hogpd_enable_rsp const *param,
                                     ke_task_id_t const dest_id,
                                     ke_task_id_t const src_id)
{
uart_printf("%s,(%d) \r\n",__func__,__LINE__);

    return (KE_MSG_CONSUMED);
}

/**
 ****************************************************************************************
 * @brief Function called when the APP_HID_MOUSE_TIMEOUT_TIMER expires.
 *
 * @param[in] msgid     Id of the message received.
 * @param[in] param     Pointer to the parameters of the message.
 * @param[in] dest_id   ID of the receiving task instance (TASK_GAP).
 * @param[in] src_id    ID of the sending task instance.
 *
 * @return If the message was consumed or not.
 ****************************************************************************************
 */
static int app_hid_mouse_timeout_timer_handler(ke_msg_id_t const msgid,
                                               void const *param,
                                               ke_task_id_t const dest_id,
                                               ke_task_id_t const src_id)
{
    app_hid_env.timer_enabled = false;

    if (app_hid_env.state == APP_HID_READY)
    {
        // Requested connection parameters
        struct gapc_conn_param conn_param;
        // Length
        uint8_t length = NVDS_LEN_MOUSE_TIMEOUT;
        // Timer value
        uint16_t timer_val;

        /*
         * Request an update of the connection parameters
         * Requested connection interval: 10ms
         * Latency: 200
         * Supervision Timeout: 5s
         */
        conn_param.intv_min = 8;
        conn_param.intv_max = 8;
        conn_param.latency  = 200;
        conn_param.time_out = 500;

        appm_update_param(&conn_param);

        // Go to the Wait for Report state
        app_hid_env.state = APP_HID_WAIT_REP;

        // Get the timer value from the NVDS
        if (nvds_get(NVDS_TAG_MOUSE_ENERGY_SAFE, &length, (uint8_t *)&timer_val) != NVDS_OK)
        {
            timer_val = APP_HID_SILENCE_DURATION_2;
        }

        // Relaunch the timer
        ke_timer_set(APP_HID_MOUSE_TIMEOUT_TIMER, TASK_APP, timer_val);
        app_hid_env.timer_enabled = true;
    }
    else if (app_hid_env.state == APP_HID_WAIT_REP)
    {
      // Disconnect the link with the device
        appm_disconnect();


        // Go back to the ready state
        app_hid_env.state = APP_HID_IDLE;
    }

    return (KE_MSG_CONSUMED);
}

/**
 ****************************************************************************************
 * @brief
 *
 * @param[in] msgid     Id of the message received.
 * @param[in] param     Pointer to the parameters of the message.
 * @param[in] dest_id   ID of the receiving task instance (TASK_GAP).
 * @param[in] src_id    ID of the sending task instance.
 *
 * @return If the message was consumed or not.
 ****************************************************************************************
 */
static int app_hid_msg_dflt_handler(ke_msg_id_t const msgid,
                                    void const *param,
                                    ke_task_id_t const dest_id,
                                    ke_task_id_t const src_id)
{
    // Drop the message

    return (KE_MSG_CONSUMED);
}

/**
 ****************************************************************************************
 * @brief Set the value of the Report Map Characteristic in the database
 ****************************************************************************************
 */
void app_hid_set_report_map(void);

/*
 * LOCAL VARIABLE DEFINITIONS
 ****************************************************************************************
 */

/// Default State handlers definition
const struct ke_msg_handler app_hid_msg_handler_list[] =
{
    // Note: first message is latest message checked by kernel so default is put on top.
    {KE_MSG_DEFAULT_HANDLER,        (ke_msg_func_t)app_hid_msg_dflt_handler},

    {HOGPD_ENABLE_RSP,              (ke_msg_func_t)hogpd_enable_rsp_handler},
    {HOGPD_NTF_CFG_IND,             (ke_msg_func_t)hogpd_ntf_cfg_ind_handler},
    {HOGPD_REPORT_REQ_IND,          (ke_msg_func_t)hogpd_report_req_ind_handler},
    {HOGPD_PROTO_MODE_REQ_IND,      (ke_msg_func_t)hogpd_proto_mode_req_ind_handler},
    {HOGPD_CTNL_PT_IND,             (ke_msg_func_t)hogpd_ctnl_pt_ind_handler},
    {HOGPD_REPORT_UPD_RSP,          (ke_msg_func_t)hogpd_report_upd_handler},

    {APP_HID_MOUSE_TIMEOUT_TIMER,   (ke_msg_func_t)app_hid_mouse_timeout_timer_handler},
};

const struct app_subtask_handlers app_hid_handlers = APP_HANDLERS(app_hid);

 void app_hid_mouse(void)
{
    rwip_time_t current_time;
    static rwip_time_t last_time;

    if(ke_state_get(TASK_APP) != APPM_CONNECTED)
        return;
    current_time = rwip_time_get();
    
    if(current_time.hs>=last_time.hs)
    {
        if((current_time.hs-last_time.hs)>=BLE_UAPDATA_MAX_INTVALUE*4-1)
        {
            DEBUG_MSG(0x10);
            last_time.hs=current_time.hs;
            key_process();
            hid_send_keycode();
            app_check_key();
            DEBUG_MSG(0x11);
        }
    }
    else
    {
        last_time.hs=current_time.hs;
    }
    
 }

#endif //(BLE_APP_HID)

/// @} APP
