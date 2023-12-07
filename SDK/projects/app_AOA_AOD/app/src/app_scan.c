#include "rwip_config.h"             // SW configuration
#if (BLE_APP_PRESENT)
#include "ke_timer.h"
#include "rwapp_config.h"
#include "app.h"
#include "app_sec.h"
#include "app_task.h"                // Application task Definition
#include "app_scan.h"                     // Application Definition
#include "gap.h"                     // GAP Definition
#include "gapm_task.h"               // GAP Manager Task API
#include "gapc_task.h"               // GAP Controller Task API
#include "gattc_task.h"
#include "co_bt.h"                   // Common BT Definition
#include "co_math.h"                 // Common Maths Definition
#include "sdp_service_task.h"
#include "sdp_service.h"
#include "prf_utils.h"
#include "uart.h"



/// Application Environment Structure
//struct useapp_env_tag useapp_env;
#if (BLE_CENTRAL || BLE_OBSERVER)

/// Scan interval 
#define APP_SCAN_INTV         (100)
/// Scan window 
#define APP_SCAN_WD         (20)


#define APPM_SCAN_TIME_10MS   400

uint16_t BLE_SCAN_INTVALUE = 88;
uint16_t BLE_SCAN_WINDOW = 88;

uint8_t gapm_scan_type = 0;///GAPM_SCAN_

void appm_create_period_sync(void)
{
    uart_printf("func %s\r\n",__func__);
        // Prepare the GAPM_ACTIVITY_CREATE_CMD message
        struct gapm_activity_create_cmd *p_cmd = KE_MSG_ALLOC(GAPM_ACTIVITY_CREATE_CMD,
                                                                  TASK_GAPM, TASK_APP,
                                                                  gapm_activity_create_cmd);

        // Set operation code
        p_cmd->operation = GAPM_CREATE_PERIOD_SYNC_ACTIVITY;

        // Fill the allocated kernel message
        p_cmd->own_addr_type = GAPM_STATIC_ADDR;
         
        // Send the message
        ke_msg_send(p_cmd);
        
}
 void appm_start_period_sync(void)
{
    
        // Prepare the GAPM_ACTIVITY_START_CMD message
        struct gapm_activity_start_cmd *p_cmd = KE_MSG_ALLOC(GAPM_ACTIVITY_START_CMD,
                                                             TASK_GAPM, TASK_APP,
                                                             gapm_activity_start_cmd);

        p_cmd->operation = GAPM_START_ACTIVITY;
        p_cmd->actv_idx = app_env.period_sync_actv_idx;
        
        
        p_cmd->u_param.per_sync_param.skip = 2 ;
        p_cmd->u_param.per_sync_param.sync_to = 200;
        p_cmd->u_param.per_sync_param.type = GAPM_PER_SYNC_TYPE_GENERAL;
        p_cmd->u_param.per_sync_param.report_disable = 0;
        p_cmd->u_param.per_sync_param.conidx = 0;
        p_cmd->u_param.per_sync_param.cte_type =GAPM_CTE_NO_SYNC_WITH_AOA;
        memcpy(p_cmd->u_param.per_sync_param.adv_addr.addr.addr.addr,co_default_bdaddr.addr,6);   
        p_cmd->u_param.per_sync_param.adv_addr.adv_sid = 0;
        p_cmd->u_param.per_sync_param.adv_addr.addr.addr_type = GAPM_STATIC_ADDR;
        // Send the message
        ke_msg_send(p_cmd);
        app_env.period_sync_state = APP_PER_SYNC_STATE_STARTING;
}
 void appm_create_scaning(void)
{
    uart_printf("func %s,scan_state:%d\r\n",__func__,app_env.scan_state);
    if (app_env.scan_state == APP_SCAN_STATE_IDLE)
    {
        // Prepare the GAPM_ACTIVITY_CREATE_CMD message
        struct gapm_activity_create_cmd *p_cmd = KE_MSG_ALLOC(GAPM_ACTIVITY_CREATE_CMD,
                                                                  TASK_GAPM, TASK_APP,
                                                                  gapm_activity_create_cmd);

        // Set operation code
        p_cmd->operation = GAPM_CREATE_SCAN_ACTIVITY;

        // Fill the allocated kernel message
        p_cmd->own_addr_type = GAPM_STATIC_ADDR;
         
        // Send the message
        ke_msg_send(p_cmd);

        // Keep the current operation
        app_env.scan_state = APP_SCAN_STATE_CREATING;
        
    }
}

 void appm_start_scaning(void)
{
    uart_printf("func %s,scan_state:%d\r\n",__func__,app_env.scan_state);
    if (app_env.scan_state == APP_SCAN_STATE_CREATED)
    {
        // Prepare the GAPM_ACTIVITY_START_CMD message
        struct gapm_activity_start_cmd *p_cmd = KE_MSG_ALLOC(GAPM_ACTIVITY_START_CMD,
                                                             TASK_GAPM, TASK_APP,
                                                             gapm_activity_start_cmd);

        p_cmd->operation = GAPM_START_ACTIVITY;
        p_cmd->actv_idx = app_env.scan_actv_idx;
        
        p_cmd->u_param.scan_param.type = GAPM_SCAN_TYPE_OBSERVER;//GAPM_SCAN_TYPE_GEN_DISC;//GAPM_SCAN_TYPE_OBSERVER;//;
        
        p_cmd->u_param.scan_param.prop = GAPM_SCAN_PROP_PHY_1M_BIT ;//| GAPM_SCAN_PROP_ACTIVE_1M_BIT;
        
        //p_cmd->u_param.scan_param.scan_param_1m.scan_intv = app_env.scan_intv;
        //p_cmd->u_param.scan_param.scan_param_1m.scan_wd = app_env.scan_wd;
        
        p_cmd->u_param.scan_param.scan_param_1m.scan_intv = 30;//app_env.scan_intv;
        p_cmd->u_param.scan_param.scan_param_1m.scan_wd = 20;//app_env.scan_wd;
        
        p_cmd->u_param.scan_param.dup_filt_pol = 0;
        
        p_cmd->u_param.scan_param.duration = 0;
        
        p_cmd->u_param.scan_param.period = 10;

        // Send the message
        ke_msg_send(p_cmd);

        // Keep the current operation
        app_env.scan_state = APP_SCAN_STATE_STARTING;
    }
}


 void appm_stop_scaning(void)
{
    // Prepare the GAPM_ACTIVITY_STOP_CMD message
    struct gapm_activity_stop_cmd *cmd = KE_MSG_ALLOC(GAPM_ACTIVITY_STOP_CMD,
                                                      TASK_GAPM, TASK_APP,
                                                      gapm_activity_stop_cmd);

    // Fill the allocated kernel message
    cmd->operation = GAPM_STOP_ACTIVITY;
    cmd->actv_idx = app_env.scan_actv_idx;

    // Send the message
    ke_msg_send(cmd);

    // Update advertising state
    app_env.scan_state = APP_SCAN_STATE_STOPPING;
}

void appm_delete_scaning(void)
{
    // Prepare the GAPM_ACTIVITY_CREATE_CMD message
    struct gapm_activity_delete_cmd *p_cmd = KE_MSG_ALLOC(GAPM_ACTIVITY_DELETE_CMD,
                                                              TASK_GAPM, TASK_APP,
                                                              gapm_activity_delete_cmd);

    // Set operation code
    p_cmd->operation = GAPM_DELETE_ACTIVITY;
    
    p_cmd->actv_idx = app_env.scan_actv_idx;

    // Send the message
    ke_msg_send(p_cmd);

}
#if 0
void appm_scan_fsm_next(void)
{
  //  return;
    uart_printf("%s scan_state:%x\r\n",__func__,app_env.scan_state);
    switch (app_env.scan_state)
    {
        case (APP_SCAN_STATE_IDLE)://0
        {
            // Create advertising
            appm_create_scaning();
        } break;

        case (APP_SCAN_STATE_CREATING):  //1      
        case (APP_SCAN_STATE_CREATED):   //2    
        {
            // Start scaning activity
            appm_start_scaning();
        } break;

        case (APP_SCAN_STATE_STARTING)://3
        {
            // Go to started state
            app_env.scan_state = APP_SCAN_STATE_STARTED;
        } break;

        case (APP_SCAN_STATE_STARTED)://4
        {
            // Stop scaning activity  
             appm_stop_scaning();
        } break;

        case (APP_SCAN_STATE_STOPPING)://5
        {
            
            // Go created state
            app_env.scan_state = APP_SCAN_STATE_CREATED;
        } break;

        default:
        {
            ASSERT_ERR(0);
        } break;
    }
    uart_printf("end scan_state:%x\r\n",app_env.scan_state);
}

void appm_update_scan_state(bool start)
{
    // TODO [LT] - Check current advertising state

    // Start or stop scan
    if(app_env.scan_state==APP_SCAN_STATE_IDLE)
        appm_scan_fsm_next();
}
#endif
uint8_t appm_adv_data_decode_name(uint8_t len,const uint8_t *data,uint8_t *name_str)
{
    uint8_t find = 0;
    uint8_t index;
    for(index = 0; index < len;)
    {
        switch(data[index + 1])
        {
        case GAP_AD_TYPE_FLAGS:
        {
            index +=(data[index] + 1);
        }
        break;
        case GAP_AD_TYPE_SHORTENED_NAME:
        case GAP_AD_TYPE_COMPLETE_NAME:
        {
            for(uint8_t len = 0; len < data[index] - 1; len++)
            {
                *name_str++ = data[index + 2 + len];
            }
            index +=(data[index] + 1);
            
            find = 1;
        }
        break;
        case GAP_AD_TYPE_MORE_16_BIT_UUID:
        {

            index +=(data[index] + 1);
        }
        break;
        default:
        {
            index +=(data[index] + 1);
        }
        break;
        }
    }
    return find;
}

uint8_t appm_adv_data_decode(uint8_t len,const uint8_t *data,uint8_t *find_str,uint8_t str_len,struct gap_bdaddr btaddr)
{
    uint8_t find = 0;
    uint8_t index;
    static struct gap_bdaddr device_addr;
    for(index = 0; index < len;)
    {
        switch(data[index + 1])
        {
        case GAP_AD_TYPE_FLAGS:
        {           
            //uint8_t type_data = data[index + 2];

            //uart_printf("AD_TYPE :%02x \n",type_data);
            
            index +=(data[index] + 1);
        }
        break;
        case GAP_AD_TYPE_SHORTENED_NAME:
        case GAP_AD_TYPE_COMPLETE_NAME:
        {
            if(strncmp((char*)&data[index + 2],(const char *)find_str,str_len) == 0 )
            {
                find = 1;
                if(0x00 != memcmp(&device_addr,&btaddr,sizeof(struct gap_bdaddr)))
                    app_sec_env.bond_device=0;
            }
            /*
            uart_printf("ADV_NAME : ");
            for(uint8_t len = 0; len < data[index] - 1; len++)
            {
                uart_printf("%c",data[index + 2 + len]);
            }
            uart_printf("\r\n");
            */
            index +=(data[index] + 1);
        }
        break;
        case GAP_AD_TYPE_MORE_16_BIT_UUID:
        {
            /*
            uart_printf("UUID : ");
            for(uint8_t len = 0; len < data[index] - 1;)
            {
                uart_printf("%02x%02x  ",data[index + 2 + len],data[index + 3 + len]);
                len+=2;
            }
            uart_printf("\r\n");
            */
            index +=(data[index] + 1);
        }
        break;
        case GAP_AD_TYPE_COMPLETE_LIST_16_BIT_UUID:
        {
            if( (data[index+2]==0x12) && (data[index+3]==0x18) )////HID�豸��Ҫ������԰�
            {
                app_sec_env.bond_device=1;
                memcpy(&device_addr,&btaddr,sizeof(struct gap_bdaddr));
                
            }
            
            //uart_printf("data[index+2]=%x,%x\n",data[index+2],data[index+3]);
            
            index +=(data[index] + 1);
        }
        break;
        default:
        {
            index +=(data[index] + 1);
        }
        break;
        }
    }
    return find;
}


#endif // (#if (BLE_CENTRAL || BLE_OBSERVER))
#endif  //#if (BLE_APP_PRESENT)

