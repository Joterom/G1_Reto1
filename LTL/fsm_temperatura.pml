ltl spec{
	[](((state == 0)&&(tempD_men_tempD_lim)&&(tempD_may_tempF)) -> <> (state==1)) &&
	[](((state == 0)&&(!tempD_men_tempD_lim)) -> <> (state == 2)) &&
	[](((state == 1)&&(!tempD_may_tempF)&&(tempD_men_tempD_lim)) -> <> (state==0)) &&
	[](((state == 1)&&(!tempD_men_tempD_lim)) -> <> (state == 2)) &&
	[](((state == 2)&&(tempD_men_tempD_lim)) -> <> (state == 1)) &&
	[](((state == 2)&&(tempD_men_tempD_lim)&&(!tempD_may_tempF)) -> <> (state == 0));
}

bit tempD_men_tempD_lim, tempD_may_tempF;
byte state;

active proctype fsm_temperatura() {
	state =0;
	do
	::(state == 0) -> atomic {
		if
		::(tempD_men_tempD_lim && tempD_may_tempF) -> state=1;
		::(!tempD_men_tempD_lim) -> state=2;
		fi;
	}
	::(state == 1) -> atomic {
		if
		::(!tempD_may_tempF && tempD_men_tempD_lim) -> state=0;
		::(!tempD_men_tempD_lim) -> state=2;
		fi;
	}
	::(state == 2) -> atomic {
		if
		::(tempD_men_tempD_lim) -> state=1;
		::((tempD_men_tempD_lim)&&(!tempD_may_tempF)) -> state=0;
		fi;
	}
	od;
}

active proctype entorno(){
	do
	::tempD_men_tempD_lim = 1;
	::(!tempD_men_tempD_lim) -> skip;
	::tempD_may_tempF = 1;
        ::(!tempD_may_tempF) -> skip;
	od;
}


