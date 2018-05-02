	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM spec */
;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 9: // STATE 27
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC entorno */

	case 10: // STATE 1
		;
		now.presencia = trpt->bup.oval;
		;
		goto R999;

	case 11: // STATE 2
		;
		now.lumAlta = trpt->bup.oval;
		;
		goto R999;

	case 12: // STATE 3
		;
		now.lumAlta = trpt->bup.oval;
		;
		goto R999;

	case 13: // STATE 4
		;
		now.sensor_timeout = trpt->bup.oval;
		;
		goto R999;

	case 14: // STATE 5
		;
		now.lim_reached = trpt->bup.oval;
		;
		goto R999;

	case 15: // STATE 6
		;
		now.lim_reached = trpt->bup.oval;
		;
		goto R999;

	case 16: // STATE 7
		;
		now.colder_temp = trpt->bup.oval;
		;
		goto R999;

	case 17: // STATE 8
		;
		now.colder_temp = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		;
		;
		
	case 22: // STATE 18
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC fsm_temperatura */

	case 23: // STATE 1
		;
		now.t_state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 25: // STATE 4
		;
		now.t_state = trpt->bup.oval;
		;
		goto R999;
;
		
	case 26: // STATE 8
		goto R999;

	case 27: // STATE 6
		;
		now.t_state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 29: // STATE 12
		;
		now.t_state = trpt->bup.oval;
		;
		goto R999;
;
		
	case 30: // STATE 16
		goto R999;

	case 31: // STATE 14
		;
		now.t_state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 33: // STATE 20
		;
		now.t_state = trpt->bup.oval;
		;
		goto R999;
;
		
	case 34: // STATE 24
		goto R999;

	case 35: // STATE 22
		;
		now.t_state = trpt->bup.oval;
		;
		goto R999;

	case 36: // STATE 29
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC fsm_mediciones */

	case 37: // STATE 1
		;
		now.m_state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 39: // STATE 4
		;
		now.sensor_timeout = trpt->bup.oval;
		;
		goto R999;

	case 40: // STATE 11
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC fsm_luz */

	case 41: // STATE 1
		;
		now.state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 43: // STATE 5
		;
		now.presencia = trpt->bup.ovals[1];
		now.state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 45: // STATE 11
		;
		now.state = trpt->bup.oval;
		;
		goto R999;
;
		
	case 46: // STATE 15
		goto R999;

	case 47: // STATE 13
		;
		now.state = trpt->bup.oval;
		;
		goto R999;

	case 48: // STATE 20
		;
		p_restor(II);
		;
		;
		goto R999;
	}

