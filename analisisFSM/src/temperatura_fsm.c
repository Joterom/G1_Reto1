#include "esp_common.h"
#include "freertos/task.h"
#include "gpio.h"
#include <fsm.h>


#define COMPUERTAS  12
#define REFRIGERACION  15

#define TEMPD_LIMITE 150


enum fsm_state {
	IDLE, COMPUERTAS_ABIERTAS, REFRIG_ACT
};

static int* tempD = NULL;
static int* tempF = NULL;

int igual(fsm_t* self){
  if((*tempF)>=(*tempD)){
    return 1;
  }
  return 0;
}

int menor(fsm_t* self){
  if(((*tempF)<(*tempD))&&((*tempD<TEMPD_LIMITE))){
    return 1;
  }
  return 0;
}

int menor_limite(fsm_t* self){
  if((*tempD>=TEMPD_LIMITE)){
    return 1;
  }
  return 0;
}

void enciende_compuertas(fsm_t* self){
  GPIO_OUTPUT_SET(COMPUERTAS, 1);
}

void enciende_refrig(fsm_t* self){
  GPIO_OUTPUT_SET(REFRIGERACION, 1);
}

void enciende_todo(fsm_t* self){
  GPIO_OUTPUT_SET(COMPUERTAS, 1);
  GPIO_OUTPUT_SET(REFRIGERACION, 1);
}

void apaga_compuertas(fsm_t* self){
  GPIO_OUTPUT_SET(COMPUERTAS, 0);
}

void apaga_refrig(fsm_t* self){
  GPIO_OUTPUT_SET(REFRIGERACION, 0);
}

void apaga_todo(fsm_t* self){
  GPIO_OUTPUT_SET(COMPUERTAS, 0);
  GPIO_OUTPUT_SET(REFRIGERACION, 0);
}


fsm_t* fsm_new_temperatura(int* tempD_punt, int* tempF_punt){
  static fsm_trans_t temperaturas[] = {
    { IDLE,                 menor,        COMPUERTAS_ABIERTAS,  enciende_compuertas},
    { IDLE,                 menor_limite, REFRIG_ACT,           enciende_todo},
    { COMPUERTAS_ABIERTAS,  igual,        IDLE,                 apaga_compuertas},
    { COMPUERTAS_ABIERTAS,  menor_limite, REFRIG_ACT,           enciende_refrig},
    { REFRIG_ACT,           menor,        COMPUERTAS_ABIERTAS,  apaga_refrig},
    { REFRIG_ACT,           igual,        IDLE,                 apaga_todo},
    {-1, NULL, -1, NULL},
  };
  tempD = tempD_punt;
  tempF = tempF_punt;
  PIN_FUNC_SELECT(GPIO_PIN_REG_12, FUNC_GPIO12);
  PIN_FUNC_SELECT(GPIO_PIN_REG_15, FUNC_GPIO15);
  GPIO_AS_OUTPUT(COMPUERTAS);
  GPIO_AS_OUTPUT(REFRIGERACION);
  return fsm_new(temperaturas);
}
