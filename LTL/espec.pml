ltl spec {
	( [] ( ((state==LUZ_OFF) && presencia && ([] !lumAlta)) -> <> (state==LUZ_ON) ) ) && 
	( [] ( ((state==LUZ_ON) && ((!presencia) || ([] lumAlta))) -> <> (state==LUZ_OFF) ));
}

#define timeout true

mtype {LUZ_ON,LUZ_OFF}
bit presencia, lumAlta, lim_reached, colder_temp, sensor_timeout;
mtype state;

active proctype fsm_luz() {
	state = LUZ_OFF;
	do
	::(state == LUZ_OFF) -> atomic {
		if
		::(presencia && !lumAlta) -> state=LUZ_ON; presencia = 0
		fi;
	}
	::(state == LUZ_ON) -> atomic { 
                if
                ::lumAlta -> state = LUZ_OFF
                ::timeout -> state = LUZ_OFF
                fi;
        }
	od;
}

mtype {MEDICIONES}
mtype m_state
active proctype fsm_mediciones() {
	m_state = MEDICIONES;
	do
	:: (m_state == MEDICIONES) -> atomic {
		if
		::(sensor_timeout) -> sensor_timeout = 0
		fi
		}
	od
}

mtype {IDLE,REFRIGERACION,COMPUERTAS}
mtype t_state
active proctype fsm_temperatura() {
	t_state = IDLE;
	do
        ::(t_state == IDLE) -> atomic {
		if
		::(lim_reached) -> t_state = REFRIGERACION
		::(!lim_reached && !colder_temp) -> t_state = COMPUERTAS
		fi
		}
	::(t_state == COMPUERTAS) -> atomic {
		if
		::lim_reached -> t_state = REFRIGERACION
		::((!lim_reached) && colder_temp) -> t_state = IDLE
		fi
		}
	::(t_state == REFRIGERACION) -> atomic {
		if
		::(!lim_reached && colder_temp) -> t_state = IDLE
		::(!lim_reached && !colder_temp) -> t_state = COMPUERTAS
		fi
		}
	od
}

active proctype entorno() {
     do
     :: if
	:: presencia = 1
	:: lumAlta = 1
	:: lumAlta = 0
	:: sensor_timeout = 1
	:: lim_reached = 1
	:: lim_reached = 0
	:: colder_temp = 1
	:: colder_temp = 0
        fi;
     printf ("El estado actual es: %d, %d, %d \n",state,m_state,t_state)
     printf ("presencia = %d, lumAlta = %d \n",presencia,lumAlta)
     printf ("Mediciones: %d \n",sensor_timeout)
     printf ("TEMPERATURA: lim_reached = %d, colder_temp = %d \n",lim_reached,colder_temp)
     od;
}

