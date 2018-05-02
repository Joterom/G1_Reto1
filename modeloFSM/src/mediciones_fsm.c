#include "esp_common.h"
#include "freertos/task.h"
#include "gpio.h"
#include <fsm.h>

#define PERIOD_TICK 100/portTICK_RATE_MS
#define REBOUND_TICK 200/portTICK_RATE_MS

#define ETS_GPIO_INTR_ENABLE()  _xt_isr_unmask(1 << ETS_GPIO_INUM)  //ENABLE INTERRUPTS
#define ETS_GPIO_INTR_DISABLE() _xt_isr_mask(1 << ETS_GPIO_INUM)    //DISABLE INTERRUPTS

#define SENSOR_PRESENCIA 5
#define SENSOR_LUZ 13
#define SENSOR_TEMPD 4
#define SENSOR_TEMPF 14


enum fsm_state {
	MIDIENDO,
};

static int* presencia=NULL;
static int* tempD= NULL;
static int* tempF= NULL;
static int* luminosidad = NULL;
portTickType next_timeout =0;
portTickType next_timeout_exit =0;
portTickType now =0;



int timeout (fsm_t *self) {
	now = xTaskGetTickCount() ;
	//if(flag_boton){
		//printf("NOW %d\n", now);
		if(next_timeout < now){
        		printf("TIMEOUT\n");
    //    		flag_boton=0;
		        return 1;
    }
	//}
	return 0;
}

void lee_sensores (fsm_t *self) {
	next_timeout= xTaskGetTickCount() + 1000/portTICK_RATE_MS;
	*presencia = GPIO_REG_READ(GPIO_STATUS_ADDRESS) & BIT(SENSOR_PRESENCIA);
	*tempD = GPIO_REG_READ(GPIO_STATUS_ADDRESS) & BIT(SENSOR_TEMPD);
	*tempF = GPIO_REG_READ(GPIO_STATUS_ADDRESS) & BIT(SENSOR_TEMPF);
	*luminosidad = GPIO_REG_READ(GPIO_STATUS_ADDRESS) & BIT(SENSOR_LUZ);
}

fsm_t* fsm_new_mediciones(int* presencia_punt, int* luminosidad_punt, int* tempD_punt, int* tempF_punt){
  static fsm_trans_t medidas[] = {
    { MIDIENDO, timeout, MIDIENDO, lee_sensores},
    {-1, NULL, -1, NULL},
  };
  presencia=presencia_punt;
  luminosidad=luminosidad_punt;
  tempD=tempD_punt;
  tempF=tempF_punt;

  	PIN_FUNC_SELECT(GPIO_PIN_REG_13, FUNC_GPIO13); //MIRAR LOS PINES QUE SE PUEDEN USAR
  	PIN_FUNC_SELECT(GPIO_PIN_REG_5, FUNC_GPIO5);
  	PIN_FUNC_SELECT(GPIO_PIN_REG_4, FUNC_GPIO4);
  	PIN_FUNC_SELECT(GPIO_PIN_REG_14, FUNC_GPIO14);
  	GPIO_AS_INPUT(SENSOR_PRESENCIA); //GPIO 5 -> d1
  	GPIO_AS_INPUT(SENSOR_LUZ); // GPIO 13 -> D7
  	GPIO_AS_INPUT(SENSOR_TEMPD); // GPIO 4 -> D2
  	GPIO_AS_INPUT(SENSOR_TEMPF); // GPIO 14 -> D5
    return fsm_new(medidas);
}
