ltl spec {
	( [] ( ((state==0) && presencia && ([] !lumAlta)) -> <> (state==1) ) ) && 
	( [] ( ((state==1) && ((!presencia) || ([] lumAlta))) -> <> (state==0) ))	
}

#define timeout true

bit presencia, lumAlta;
byte state;

active proctype fsm_luz() {
	state = 0;
	do
	::(state == 0) -> atomic {
		if
		::(presencia && !lumAlta) -> state=1; presencia = 0
		fi;
	}
	::(state == 1) -> atomic { 
                if
                ::lumAlta -> state = 0
                ::timeout -> state = 0
                fi;
        }
	od;
}

active proctype entorno() {
     do
     ::  if
	:: presencia = 1
	:: lumAlta = 1
	:: lumAlta = 0
        fi;
        printf ("presencia = %d, lumAlta = %d  (state = %d)\n", 
		presencia, lumAlta, state)
     od; 
}
