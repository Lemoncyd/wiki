#include "rwip_config.h"             // SW configuration
#if (BLE_APP_PRESENT)
#include <string.h>
#include "rwapp_config.h"
#include "app_task.h"                // Application task Definition
#include "app.h"                     // Application Definition
#include "app_adv.h"
#include "gap.h"                     // GAP Definition
#include "gapm_task.h"               // GAP Manager Task API
#include "gapc_task.h"               // GAP Controller Task API
#include "co_bt.h"                   // Common BT Definition
#include "co_math.h"                 // Common Maths Definition
#include "ke_timer.h"
#include "app_fcc0.h"                 // Application security Definition
#include "app_dis.h"                 // Device Information Service Application Definitions
#include "app_batt.h"                // Battery Application Definitions
#include "nvds.h"                    // NVDS Definitions
#include "rf.h"
#include "uart.h"
#include "gpio.h"
#include "user_config.h"

/*
 * DEFINES
 ****************************************************************************************
 */



#if (BLE_APP_HID)
// HID Mouse
#define DEVICE_NAME        "Hid Mouse"
#else
#define DEVICE_NAME        "RW DEVICE"
#endif

#define DEVICE_NAME_SIZE    sizeof(DEVICE_NAME)

/**
 * UUID List part of ADV Data
 * --------------------------------------------------------------------------------------
 * x03 - Length
 * x03 - Complete list of 16-bit UUIDs available
 * x09\x18 - Health Thermometer Service UUID
 *   or
 * x12\x18 - HID Service UUID
 * --------------------------------------------------------------------------------------
 */

#if (BLE_APP_HT)
#define APP_HT_ADV_DATA_UUID        "\x03\x03\x09\x18"
#define APP_HT_ADV_DATA_UUID_LEN    (4)
#endif //(BLE_APP_HT)

#if (BLE_APP_HID)
#define APP_HID_ADV_DATA_UUID       "\x03\x03\x12\x18"
#define APP_HID_ADV_DATA_UUID_LEN   (4)
#endif //(BLE_APP_HID)



/**
 * Appearance part of ADV Data
 * --------------------------------------------------------------------------------------
 * x03 - Length
 * x19 - Appearance
 * x03\x00 - Generic Thermometer
 *   or
 * xC2\x04 - HID Mouse
 * --------------------------------------------------------------------------------------
 */

#if (BLE_APP_HT)
#define APP_HT_ADV_DATA_APPEARANCE    "\x03\x19\x00\x03"
#endif //(BLE_APP_HT)

#if (BLE_APP_HID)
#define APP_HID_ADV_DATA_APPEARANCE   "\x03\x19\xC2\x03"
#endif //(BLE_APP_HID)

#define APP_ADV_DATA_APPEARANCE_LEN  (4)



/*
 * LOCAL FUNCTION DEFINITIONS
 ****************************************************************************************
 */
void appm_create_advertising(void)
{
   
    if (app_env.adv_state == APP_ADV_STATE_IDLE)
    {
        // Prepare the GAPM_ACTIVITY_CREATE_CMD message
        struct gapm_activity_create_adv_cmd *p_cmd = KE_MSG_ALLOC(GAPM_ACTIVITY_CREATE_CMD,
                                                                  TASK_GAPM, TASK_APP,
                                                                  gapm_activity_create_adv_cmd);

        // Set operation code
        p_cmd->operation = GAPM_CREATE_ADV_ACTIVITY;

        #if (BLE_APP_AM0)
        // Let AM0 application module set advertising parameters
        app_am0_fill_create_adv_actv(p_cmd);
        #else //(BLE_APP_AM0)
        // Fill the allocated kernel message
        p_cmd->own_addr_type = GAPM_STATIC_ADDR;
        p_cmd->adv_param.type = GAPM_ADV_TYPE_PERIODIC;//GAPM_ADV_TYPE_EXTENDED;//;
        p_cmd->adv_param.prop = GAPM_ADV_PROP_NON_CONN_NON_SCAN_MASK ;//| GAPM_ADV_PROP_SCAN_REQ_NTF_EN_BIT;//GAPM_ADV_PROP_BROADCAST_NON_SCAN_MASK;//GAPM_ADV_PROP_UNDIR_CONN_MASK;
        p_cmd->adv_param.filter_pol = ADV_ALLOW_SCAN_ANY_CON_ANY;
        p_cmd->adv_param.prim_cfg.chnl_map = APP_ADV_CHMAP;
        p_cmd->adv_param.prim_cfg.phy = GAP_PHY_LE_1MBPS;
        p_cmd->adv_param.second_cfg.phy = GAP_PHY_1MBPS;//GAP_PHY_2MBPS;;
        p_cmd->adv_param.period_cfg.adv_intv_min = 20;
        p_cmd->adv_param.period_cfg.adv_intv_max = 25;
        p_cmd->adv_param.period_cfg.cte_count = 1;
        p_cmd->adv_param.period_cfg.cte_type = 0;
        p_cmd->adv_param.period_cfg.cte_len = 10;
        p_cmd->adv_param.period_cfg.switching_pattern_len = 2;
        p_cmd->adv_param.period_cfg.antenna_id[0]=1;
        p_cmd->adv_param.period_cfg.antenna_id[1]=2;
        
        #if (BLE_APP_HID)
        p_cmd->adv_param.disc_mode = GAPM_ADV_MODE_LIM_DISC;

        /*
         * If the peripheral is already bonded with a central device, use the direct advertising
         * procedure (BD Address of the peer device is stored in NVDS.
         */
        if (app_sec_get_bond_status())
        {
            p_cmd->adv_param.prim_cfg.adv_intv_min = APP_ADV_FAST_INT;
            p_cmd->adv_param.prim_cfg.adv_intv_max = APP_ADV_FAST_INT;
        }
        else
        {
            p_cmd->adv_param.prim_cfg.adv_intv_min = APP_ADV_INT_MIN;
            p_cmd->adv_param.prim_cfg.adv_intv_max = APP_ADV_INT_MAX;
        }
        #else //(BLE_APP_HID)
        p_cmd->adv_param.disc_mode = GAPM_ADV_MODE_GEN_DISC;
        p_cmd->adv_param.prim_cfg.adv_intv_min = APP_ADV_INT_MIN;
        p_cmd->adv_param.prim_cfg.adv_intv_max = APP_ADV_INT_MAX;
        #endif //(BLE_APP_HID)
        #endif //(BLE_APP_AM0)

        // Send the message
        ke_msg_send(p_cmd);

        // Keep the current operation
        app_env.adv_state = APP_ADV_STATE_CREATING;
    }
}


#if (!BLE_APP_AM0)
static void appm_build_adv_data(uint16_t max_length, uint16_t *p_length, uint8_t *p_buf)
{
    // Remaining Length
    uint8_t rem_len = max_length;
    //adv type flag
    p_buf[0]=0x02;
    p_buf[1]=0x01;
    p_buf[2]=0x06;
    p_buf += 3;
    *p_length += 3;
    #if (BLE_APP_HT)
    // Set list of UUIDs
    memcpy(p_buf, APP_HT_ADV_DATA_UUID, APP_HT_ADV_DATA_UUID_LEN);
    *p_length += APP_HT_ADV_DATA_UUID_LEN;
    p_buf += APP_HT_ADV_DATA_UUID_LEN;

    // Set appearance
    memcpy(p_buf, APP_HT_ADV_DATA_APPEARANCE, APP_ADV_DATA_APPEARANCE_LEN);
    *p_length += APP_ADV_DATA_APPEARANCE_LEN;
    p_buf += APP_ADV_DATA_APPEARANCE_LEN;
    #endif //(BLE_APP_HT)

    #if (BLE_APP_HID)
    // Set list of UUIDs
    memcpy(p_buf, APP_HID_ADV_DATA_UUID, APP_HID_ADV_DATA_UUID_LEN);
    *p_length += APP_HID_ADV_DATA_UUID_LEN;
    p_buf += APP_HID_ADV_DATA_UUID_LEN;

    // Set appearance
    memcpy(p_buf, APP_HID_ADV_DATA_APPEARANCE, APP_ADV_DATA_APPEARANCE_LEN);
    *p_length += APP_ADV_DATA_APPEARANCE_LEN;
    p_buf += APP_ADV_DATA_APPEARANCE_LEN;
    #endif //(BLE_APP_HID)

    // Sanity check
    ASSERT_ERR(rem_len >= max_length);

    // Get remaining space in the Advertising Data - 2 bytes are used for name length/flag
    rem_len -= *p_length;

    // Check if additional data can be added to the Advertising data - 2 bytes needed for type and length
    if (rem_len > 2)
    {
        uint8_t dev_name_length = co_min(app_env.dev_name_len, (rem_len - 2));

        // Device name length
        *p_buf = dev_name_length + 1;
        // Device name flag (check if device name is complete or not)
        *(p_buf + 1) = (dev_name_length == app_env.dev_name_len) ? '\x09' : '\x08';
        // Copy device name
        memcpy(p_buf + 2, app_env.dev_name, dev_name_length);

        // Update advertising data length
        *p_length += (dev_name_length + 2);
        
        
    }
}
#endif //(!BLE_APP_AM0)


void appm_start_advertising(void)
{
    uart_printf("%s,adv-state:0x%x\r\n",__func__,app_env.adv_state);
    if(app_env.adv_state == APP_ADV_STATE_CREATED)
    {
        // Prepare the GAPM_ACTIVITY_START_CMD message
        struct gapm_activity_start_cmd *p_cmd = KE_MSG_ALLOC(GAPM_ACTIVITY_START_CMD,
                                                             TASK_GAPM, TASK_APP,
                                                             gapm_activity_start_cmd);

        p_cmd->operation = GAPM_START_ACTIVITY;
        p_cmd->actv_idx = app_env.adv_actv_idx;
        #if (BLE_APP_HID)
        p_cmd->u_param.adv_add_param.duration = APP_DFLT_ADV_DURATION;
        #else //(BLE_APP_HID)
        p_cmd->u_param.adv_add_param.duration = 0;
        #endif //(BLE_APP_HID)
        p_cmd->u_param.adv_add_param.max_adv_evt = 0;

        // Send the message
        ke_msg_send(p_cmd);

        // Keep the current operation
        app_env.adv_state = APP_ADV_STATE_STARTING;
    }
}


void appm_stop_advertising(void)
{
    uart_printf("%s,adv-state:0x%x\r\n",__func__,app_env.adv_state);
   if(app_env.adv_state == APP_ADV_STATE_STARTED)
   {
        
        // Prepare the GAPM_ACTIVITY_STOP_CMD message
        struct gapm_activity_stop_cmd *cmd = KE_MSG_ALLOC(GAPM_ACTIVITY_STOP_CMD,
                                                    TASK_GAPM, TASK_APP,
                                                    gapm_activity_stop_cmd);

        // Fill the allocated kernel message
        cmd->operation = GAPM_STOP_ACTIVITY;
        cmd->actv_idx = app_env.adv_actv_idx;

        // Send the message
        ke_msg_send(cmd);

        // Update advertising state
        app_env.adv_state = APP_ADV_STATE_STOPPING;
   }

}

void appm_delete_advertising(void)
{
    // Prepare the GAPM_ACTIVITY_CREATE_CMD message
    struct gapm_activity_delete_cmd *p_cmd = KE_MSG_ALLOC(GAPM_ACTIVITY_DELETE_CMD,
                                                              TASK_GAPM, TASK_APP,
                                                              gapm_activity_delete_cmd);

    // Set operation code
    p_cmd->operation = GAPM_DELETE_ACTIVITY;
    p_cmd->actv_idx = app_env.adv_actv_idx;
    // Send the message
    ke_msg_send(p_cmd);
    app_env.adv_state = APP_ADV_STATE_DELETE;
    // Keep the current operation
}


void appm_set_period_adv_data(void)
{
    // Prepare the GAPM_SET_ADV_DATA_CMD message
    struct gapm_set_adv_data_cmd *p_cmd = KE_MSG_ALLOC_DYN(GAPM_SET_ADV_DATA_CMD,
                                                           TASK_GAPM, TASK_APP,
                                                           gapm_set_adv_data_cmd,
                                                           ADV_DATA_LEN);

    // Fill the allocated kernel message
    p_cmd->operation = GAPM_SET_PERIOD_ADV_DATA;
    p_cmd->actv_idx = app_env.adv_actv_idx;

    #if (BLE_APP_AM0)
    app_am0_fill_adv_data(p_cmd);
    #else //(BLE_APP_AM0)
    p_cmd->length = 0;
    // GAP will use 3 bytes for the AD Type
    appm_build_adv_data(ADV_DATA_LEN, &p_cmd->length, &p_cmd->data[0]);
    
    uart_printf("adv_data=");
    for(int i = 0;i < p_cmd->length;i++)
    {
        uart_printf("%02x",p_cmd->data[i]);
    }uart_printf("\r\n");
    #endif //(BLE_APP_AM0)

    // Send the message
    ke_msg_send(p_cmd);

    // Update advertising state
    app_env.adv_state = APP_ADV_STATE_SETTING_ADV_DATA;
}    
void appm_set_adv_data(void)
{
    // Prepare the GAPM_SET_ADV_DATA_CMD message
    struct gapm_set_adv_data_cmd *p_cmd = KE_MSG_ALLOC_DYN(GAPM_SET_ADV_DATA_CMD,
                                                           TASK_GAPM, TASK_APP,
                                                           gapm_set_adv_data_cmd,
                                                           ADV_DATA_LEN);

    // Fill the allocated kernel message
    p_cmd->operation = GAPM_SET_ADV_DATA;
    p_cmd->actv_idx = app_env.adv_actv_idx;

    #if (BLE_APP_AM0)
    app_am0_fill_adv_data(p_cmd);
    #else //(BLE_APP_AM0)
    p_cmd->length = 0;
    // GAP will use 3 bytes for the AD Type
    appm_build_adv_data(ADV_DATA_LEN, &p_cmd->length, &p_cmd->data[0]);
    
    uart_printf("adv_data=");
    for(int i = 0;i < p_cmd->length;i++)
    {
        uart_printf("%02x",p_cmd->data[i]);
    }uart_printf("\r\n");
    #endif //(BLE_APP_AM0)

    // Send the message
    ke_msg_send(p_cmd);

    // Update advertising state
    app_env.adv_state = APP_ADV_STATE_SETTING_ADV_DATA;
}

void appm_set_scan_rsp_data(void)
{
    // Prepare the GAPM_SET_ADV_DATA_CMD message
    struct gapm_set_adv_data_cmd *p_cmd = KE_MSG_ALLOC_DYN(GAPM_SET_ADV_DATA_CMD,
                                                           TASK_GAPM, TASK_APP,
                                                           gapm_set_adv_data_cmd,
                                                           ADV_DATA_LEN);

    // Fill the allocated kernel message
    p_cmd->operation = GAPM_SET_SCAN_RSP_DATA;
    p_cmd->actv_idx = app_env.adv_actv_idx;

    #if (BLE_APP_AM0)
    app_am0_fill_scan_rsp_data(p_cmd);
    #else //(BLE_APP_AM0)
    p_cmd->length = APP_SCNRSP_DATA_LEN;
    memcpy(&p_cmd->data[0], APP_SCNRSP_DATA, APP_SCNRSP_DATA_LEN);
    #endif //(BLE_APP_AM0)

    // Send the message
    ke_msg_send(p_cmd);

    // Update advertising state
    app_env.adv_state = APP_ADV_STATE_SETTING_SCAN_RSP_DATA;
}


uint8_t appm_updata_adv_data(uint16_t length, uint8_t *p_data)
{
    // Returned status
    uint8_t status = GAP_ERR_INVALID_PARAM;
    /*
    if(!app_gapm_adv_check_data_sanity(length,p_data))
    {
        uart_printf("appm_updata_adv_data11\r\n");
        status = GAP_ERR_ADV_DATA_INVALID;
        return status;
    }
    */

    if((app_env.adv_state == APP_ADV_STATE_CREATED) || (app_env.adv_state == APP_ADV_STATE_STARTED))
    {
         // Prepare the GAPM_SET_ADV_DATA_CMD message
        struct gapm_set_adv_data_cmd *p_cmd = KE_MSG_ALLOC_DYN(GAPM_SET_ADV_DATA_CMD,
                                                               TASK_GAPM, TASK_APP,
                                                               gapm_set_adv_data_cmd,
                                                               ADV_DATA_LEN);

        // Fill the allocated kernel message
        p_cmd->operation = GAPM_SET_ADV_DATA;
        p_cmd->actv_idx = app_env.adv_actv_idx;

    
        p_cmd->length = 0;

            // Remaining Length
        uint8_t rem_len = ADV_DATA_LEN ;

        // Check if additional data can be added to the Advertising data - 2 bytes needed for type and length
        if (rem_len >=length)
        {
            // Copy adv data
            memcpy(&p_cmd->data[0], p_data, length);
            // Update advertising data length
            p_cmd->length = length;
                        
        }
        
        uart_printf("adv data = ");
        for(int i = 0;i < p_cmd->length;i++)
        {
            uart_printf("%02x",p_cmd->data[i]);
        }uart_printf("\r\n");

        // Send the message
        ke_msg_send(p_cmd);

        // Update advertising state
        if(app_env.adv_state == APP_ADV_STATE_CREATED)
        {
            app_env.adv_state = APP_ADV_STATE_UPDATA_ADV_DATA_AFTER_CREATED;
        }
        else if (app_env.adv_state == APP_ADV_STATE_STARTED)
        {
            app_env.adv_state = APP_ADV_STATE_UPDATA_ADV_DATA_AFTER_STARTED;
        }
        
        
        status = GAP_ERR_NO_ERROR;
    }else
    {
        status = GAP_ERR_COMMAND_DISALLOWED;
    }
    return status;
}

__STATIC bool app_gapm_adv_is_advtype_unique(uint8_t type)
{
    // Advertising type check which shall be unique
    switch (type)
    {
        case GAP_AD_TYPE_MORE_16_BIT_UUID:
        case GAP_AD_TYPE_COMPLETE_LIST_16_BIT_UUID:
        case GAP_AD_TYPE_MORE_32_BIT_UUID:
        case GAP_AD_TYPE_COMPLETE_LIST_32_BIT_UUID:
        case GAP_AD_TYPE_MORE_128_BIT_UUID:
        case GAP_AD_TYPE_COMPLETE_LIST_128_BIT_UUID:
        case GAP_AD_TYPE_SHORTENED_NAME:
        case GAP_AD_TYPE_COMPLETE_NAME:
        case GAP_AD_TYPE_APPEARANCE:
        case GAP_AD_TYPE_ADV_INTV:
        case GAP_AD_TYPE_PUB_TGT_ADDR:
        case GAP_AD_TYPE_RAND_TGT_ADDR:
        case GAP_AD_TYPE_LE_BT_ADDR:
        case GAP_AD_TYPE_LE_ROLE:
        case GAP_AD_TYPE_FLAGS:
        {
            return true;
        }

        default:
        {
            return false;
        }
    }
}

bool app_gapm_adv_check_data_sanity(uint16_t length, uint8_t *p_data)
{
    // Returned status
    bool status = true;
    // Cursor
    uint8_t *p_cursor = p_data;
    // End of data
    uint8_t *p_end_cursor = p_data + length;
    // Check for duplicate information in advertising or scan response data.
    uint8_t dup_filter[GAP_AD_TYPE_BITFIELD_BYTES];

    // Clear presence status of unique advertising type
    memset(&dup_filter[0], 0, GAP_AD_TYPE_BITFIELD_BYTES);

    // AD type flags must not be set by application
    GAP_AD_TYPE_SET_BIT(dup_filter, GAP_AD_TYPE_FLAGS);

    while (p_cursor < p_end_cursor)
    {
        // Extract AD type
        uint8_t ad_type = *(p_cursor + 1);

        // Check if it's AD Type which shall be unique
        if (app_gapm_adv_is_advtype_unique(ad_type))
        {
            if (!GAP_AD_TYPE_CHECK_BIT(dup_filter, ad_type))
            {
                // Mark the advertising type as found
                GAP_AD_TYPE_SET_BIT(dup_filter, ad_type);
            }
            else
            {
                // Advertising type has been found twice
                break;
            }
        }

        /* Go to next advertising info */
        p_cursor += (*p_cursor + 1);
        
    }

    // Check if total advertising length is valid with advertising data info
    if (p_cursor != p_end_cursor)
    {
        status = false;
    }

    return (status);
}

#endif //


