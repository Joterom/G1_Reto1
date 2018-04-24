#include "esp_common.h"
#include "freertos/task.h"
#include "gpio.h"
#include <fsm.h>


fsm_t* fsm_new_iluminacion(int* presencia_punt, int* luminosidad_punt);
fsm_t* fsm_new_temperatura(int* tempD_punt, int* tempF_punt);
fsm_t* fsm_new_mediciones(int* presencia_punt, int* luminosidad_punt, int* tempD_punt, int* tempF_punt);



/******************************************************************************
 * FunctionName : user_rf_cal_sector_set
 * Description  : SDK just reversed 4 sectors, used for rf init data and paramters.
 *                We add self function to force users to set rf cal sector, since
 *                we don't know which sector is free in user's application.
 *                sector map for last several sectors : ABCCC
 *                A : rf cal
 *                B : rf init data
 *                C : sdk parameters
 * Parameters   : none
 * Returns      : rf cal sector
*******************************************************************************/
uint32 user_rf_cal_sector_set(void)
{
    flash_size_map size_map = system_get_flash_size_map();
    uint32 rf_cal_sec = 0;
    switch (size_map) {
        case FLASH_SIZE_4M_MAP_256_256:
            rf_cal_sec = 128 - 5;
            break;

        case FLASH_SIZE_8M_MAP_512_512:
            rf_cal_sec = 256 - 5;
            break;

        case FLASH_SIZE_16M_MAP_512_512:
        case FLASH_SIZE_16M_MAP_1024_1024:
            rf_cal_sec = 512 - 5;
            break;

        case FLASH_SIZE_32M_MAP_512_512:
        case FLASH_SIZE_32M_MAP_1024_1024:
            rf_cal_sec = 1024 - 5;
            break;

        default:
            rf_cal_sec = 0;
            break;
    }

    return rf_cal_sec;
}

static int* presencia_punt=NULL;
static int* tempD_punt= NULL;
static int* tempF_punt= NULL;
static int* luminosidad_punt = NULL;

static void centro_datos (void* ignore) {
    fsm_t* temperatura_fsm = fsm_new_temperatura(tempD_punt, tempF_punt);
    fsm_t* mediciones_fsm = fsm_new_mediciones(presencia_punt, luminosidad_punt, tempD_punt, tempF_punt);
    fsm_t* iluminacion_fsm = fsm_new_iluminacion(presencia_punt, luminosidad_punt);

    portTickType period =  250 /portTICK_RATE_MS;
    portTickType last = xTaskGetTickCount();
    while (1) {
        fsm_fire (temperatura_fsm);
        fsm_fire (mediciones_fsm);
        fsm_fire(iluminacion_fsm);
        vTaskDelayUntil (&last, period);
    }
}

void user_init(void){
  xTaskCreate(centro_datos, (signed char *)"startup", 2048, NULL, 1, NULL);
}
