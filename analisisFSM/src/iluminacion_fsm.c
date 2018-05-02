#include "esp_common.h"
#include "freertos/task.h"
#include "gpio.h"
#include <fsm.h>


#define LUCES 2


enum fsm_state {
	ON, OFF
};

static int* presencia = NULL;
static int* luminosidad=NULL;

int cond_apagar(fsm_t* self){
  if((!(*presencia)) || (*luminosidad > 100)){
    return 1;
  }
    return 0;
}

int cond_encender(fsm_t* self){
  if(*presencia && (*luminosidad <= 100)){
    return 1;
  }
  return 0;
}

void luz_OFF(fsm_t *self){
  GPIO_OUTPUT_SET(LUCES, 0);
}

void luz_ON(fsm_t *self){
  GPIO_OUTPUT_SET(LUCES, 1);
}

fsm_t* fsm_new_iluminacion(int* presencia_punt, int* luminosidad_punt){
  static fsm_trans_t control_luces[] = {
    { ON, cond_apagar, OFF, luz_OFF},
    { ON, cond_encender, ON, NULL},
    { OFF, cond_encender, ON, luz_ON},
    { OFF, cond_apagar, ON, luz_ON},
    {-1, NULL, -1, NULL},
  };
  presencia = presencia_punt;
  luminosidad = luminosidad_punt;
  PIN_FUNC_SELECT(GPIO_PIN_REG_2, FUNC_GPIO2);
  GPIO_AS_OUTPUT(LUCES);
  return fsm_new(control_luces);

}
