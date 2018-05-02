#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* CLAIM spec */
	case 3: // STATE 1 - _spin_nvr.tmp:3 - [(((!(lumAlta)&&!((state==LUZ_ON)))&&((state==LUZ_OFF)&&presencia)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][1] = 1;
		if (!((( !(((int)now.lumAlta))&& !((now.state==2)))&&((now.state==1)&&((int)now.presencia)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 3 - _spin_nvr.tmp:4 - [(((!((state==LUZ_OFF))&&(state==LUZ_ON))&&lumAlta))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][3] = 1;
		if (!((( !((now.state==1))&&(now.state==2))&&((int)now.lumAlta))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 5 - _spin_nvr.tmp:5 - [(((!(presencia)&&!((state==LUZ_OFF)))&&(state==LUZ_ON)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported5 = 0;
			if (verbose && !reported5)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported5 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported5 = 0;
			if (verbose && !reported5)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported5 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][5] = 1;
		if (!((( !(((int)now.presencia))&& !((now.state==1)))&&(now.state==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 12 - _spin_nvr.tmp:10 - [((!(lumAlta)&&!((state==LUZ_ON))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported12 = 0;
			if (verbose && !reported12)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported12 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported12 = 0;
			if (verbose && !reported12)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported12 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][12] = 1;
		if (!(( !(((int)now.lumAlta))&& !((now.state==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 17 - _spin_nvr.tmp:14 - [((!((state==LUZ_OFF))&&lumAlta))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported17 = 0;
			if (verbose && !reported17)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported17 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported17 = 0;
			if (verbose && !reported17)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported17 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][17] = 1;
		if (!(( !((now.state==1))&&((int)now.lumAlta))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 22 - _spin_nvr.tmp:18 - [(!((state==LUZ_OFF)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported22 = 0;
			if (verbose && !reported22)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported22 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported22 = 0;
			if (verbose && !reported22)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported22 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][22] = 1;
		if (!( !((now.state==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 27 - _spin_nvr.tmp:20 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported27 = 0;
			if (verbose && !reported27)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported27 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported27 = 0;
			if (verbose && !reported27)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported27 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][27] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC entorno */
	case 10: // STATE 1 - espec.pml:68 - [presencia = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][1] = 1;
		(trpt+1)->bup.oval = ((int)now.presencia);
		now.presencia = 1;
#ifdef VAR_RANGES
		logval("presencia", ((int)now.presencia));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 2 - espec.pml:69 - [lumAlta = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][2] = 1;
		(trpt+1)->bup.oval = ((int)now.lumAlta);
		now.lumAlta = 1;
#ifdef VAR_RANGES
		logval("lumAlta", ((int)now.lumAlta));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 3 - espec.pml:70 - [lumAlta = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][3] = 1;
		(trpt+1)->bup.oval = ((int)now.lumAlta);
		now.lumAlta = 0;
#ifdef VAR_RANGES
		logval("lumAlta", ((int)now.lumAlta));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 4 - espec.pml:71 - [sensor_timeout = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][4] = 1;
		(trpt+1)->bup.oval = ((int)now.sensor_timeout);
		now.sensor_timeout = 1;
#ifdef VAR_RANGES
		logval("sensor_timeout", ((int)now.sensor_timeout));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 5 - espec.pml:72 - [lim_reached = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][5] = 1;
		(trpt+1)->bup.oval = ((int)now.lim_reached);
		now.lim_reached = 1;
#ifdef VAR_RANGES
		logval("lim_reached", ((int)now.lim_reached));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 6 - espec.pml:73 - [lim_reached = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][6] = 1;
		(trpt+1)->bup.oval = ((int)now.lim_reached);
		now.lim_reached = 0;
#ifdef VAR_RANGES
		logval("lim_reached", ((int)now.lim_reached));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 7 - espec.pml:74 - [colder_temp = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][7] = 1;
		(trpt+1)->bup.oval = ((int)now.colder_temp);
		now.colder_temp = 1;
#ifdef VAR_RANGES
		logval("colder_temp", ((int)now.colder_temp));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 8 - espec.pml:75 - [colder_temp = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][8] = 1;
		(trpt+1)->bup.oval = ((int)now.colder_temp);
		now.colder_temp = 0;
#ifdef VAR_RANGES
		logval("colder_temp", ((int)now.colder_temp));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 11 - espec.pml:77 - [printf('El estado actual es: %d, %d, %d \\n',state,m_state,t_state)] (0:0:0 - 9)
		IfNotBlocked
		reached[3][11] = 1;
		Printf("El estado actual es: %d, %d, %d \n", now.state, now.m_state, now.t_state);
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 12 - espec.pml:78 - [printf('presencia = %d, lumAlta = %d \\n',presencia,lumAlta)] (0:0:0 - 1)
		IfNotBlocked
		reached[3][12] = 1;
		Printf("presencia = %d, lumAlta = %d \n", ((int)now.presencia), ((int)now.lumAlta));
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 13 - espec.pml:79 - [printf('Mediciones: %d \\n',sensor_timeout)] (0:0:0 - 1)
		IfNotBlocked
		reached[3][13] = 1;
		Printf("Mediciones: %d \n", ((int)now.sensor_timeout));
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 14 - espec.pml:80 - [printf('TEMPERATURA: lim_reached = %d, colder_temp = %d \\n',lim_reached,colder_temp)] (0:0:0 - 1)
		IfNotBlocked
		reached[3][14] = 1;
		Printf("TEMPERATURA: lim_reached = %d, colder_temp = %d \n", ((int)now.lim_reached), ((int)now.colder_temp));
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 18 - espec.pml:82 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][18] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC fsm_temperatura */
	case 23: // STATE 1 - espec.pml:42 - [t_state = IDLE] (0:0:1 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		(trpt+1)->bup.oval = now.t_state;
		now.t_state = 6;
#ifdef VAR_RANGES
		logval("t_state", now.t_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 2 - espec.pml:44 - [((t_state==IDLE))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		if (!((now.t_state==6)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 3 - espec.pml:46 - [(lim_reached)] (26:0:1 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		if (!(((int)now.lim_reached)))
			continue;
		/* merge: t_state = REFRIGERACION(26, 4, 26) */
		reached[2][4] = 1;
		(trpt+1)->bup.oval = now.t_state;
		now.t_state = 5;
#ifdef VAR_RANGES
		logval("t_state", now.t_state);
#endif
		;
		/* merge: .(goto)(26, 8, 26) */
		reached[2][8] = 1;
		;
		/* merge: .(goto)(0, 27, 26) */
		reached[2][27] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 26: // STATE 8 - espec.pml:49 - [.(goto)] (0:26:0 - 2)
		IfNotBlocked
		reached[2][8] = 1;
		;
		/* merge: .(goto)(0, 27, 26) */
		reached[2][27] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 27: // STATE 5 - espec.pml:47 - [((!(lim_reached)&&!(colder_temp)))] (26:0:1 - 1)
		IfNotBlocked
		reached[2][5] = 1;
		if (!(( !(((int)now.lim_reached))&& !(((int)now.colder_temp)))))
			continue;
		/* merge: t_state = COMPUERTAS(26, 6, 26) */
		reached[2][6] = 1;
		(trpt+1)->bup.oval = now.t_state;
		now.t_state = 4;
#ifdef VAR_RANGES
		logval("t_state", now.t_state);
#endif
		;
		/* merge: .(goto)(26, 8, 26) */
		reached[2][8] = 1;
		;
		/* merge: .(goto)(0, 27, 26) */
		reached[2][27] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 28: // STATE 10 - espec.pml:50 - [((t_state==COMPUERTAS))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][10] = 1;
		if (!((now.t_state==4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 11 - espec.pml:52 - [(lim_reached)] (26:0:1 - 1)
		IfNotBlocked
		reached[2][11] = 1;
		if (!(((int)now.lim_reached)))
			continue;
		/* merge: t_state = REFRIGERACION(26, 12, 26) */
		reached[2][12] = 1;
		(trpt+1)->bup.oval = now.t_state;
		now.t_state = 5;
#ifdef VAR_RANGES
		logval("t_state", now.t_state);
#endif
		;
		/* merge: .(goto)(26, 16, 26) */
		reached[2][16] = 1;
		;
		/* merge: .(goto)(0, 27, 26) */
		reached[2][27] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 30: // STATE 16 - espec.pml:55 - [.(goto)] (0:26:0 - 2)
		IfNotBlocked
		reached[2][16] = 1;
		;
		/* merge: .(goto)(0, 27, 26) */
		reached[2][27] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 31: // STATE 13 - espec.pml:53 - [((!(lim_reached)&&colder_temp))] (26:0:1 - 1)
		IfNotBlocked
		reached[2][13] = 1;
		if (!(( !(((int)now.lim_reached))&&((int)now.colder_temp))))
			continue;
		/* merge: t_state = IDLE(26, 14, 26) */
		reached[2][14] = 1;
		(trpt+1)->bup.oval = now.t_state;
		now.t_state = 6;
#ifdef VAR_RANGES
		logval("t_state", now.t_state);
#endif
		;
		/* merge: .(goto)(26, 16, 26) */
		reached[2][16] = 1;
		;
		/* merge: .(goto)(0, 27, 26) */
		reached[2][27] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 32: // STATE 18 - espec.pml:56 - [((t_state==REFRIGERACION))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][18] = 1;
		if (!((now.t_state==5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 19 - espec.pml:58 - [((!(lim_reached)&&colder_temp))] (26:0:1 - 1)
		IfNotBlocked
		reached[2][19] = 1;
		if (!(( !(((int)now.lim_reached))&&((int)now.colder_temp))))
			continue;
		/* merge: t_state = IDLE(26, 20, 26) */
		reached[2][20] = 1;
		(trpt+1)->bup.oval = now.t_state;
		now.t_state = 6;
#ifdef VAR_RANGES
		logval("t_state", now.t_state);
#endif
		;
		/* merge: .(goto)(26, 24, 26) */
		reached[2][24] = 1;
		;
		/* merge: .(goto)(0, 27, 26) */
		reached[2][27] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 34: // STATE 24 - espec.pml:61 - [.(goto)] (0:26:0 - 2)
		IfNotBlocked
		reached[2][24] = 1;
		;
		/* merge: .(goto)(0, 27, 26) */
		reached[2][27] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 35: // STATE 21 - espec.pml:59 - [((!(lim_reached)&&!(colder_temp)))] (26:0:1 - 1)
		IfNotBlocked
		reached[2][21] = 1;
		if (!(( !(((int)now.lim_reached))&& !(((int)now.colder_temp)))))
			continue;
		/* merge: t_state = COMPUERTAS(26, 22, 26) */
		reached[2][22] = 1;
		(trpt+1)->bup.oval = now.t_state;
		now.t_state = 4;
#ifdef VAR_RANGES
		logval("t_state", now.t_state);
#endif
		;
		/* merge: .(goto)(26, 24, 26) */
		reached[2][24] = 1;
		;
		/* merge: .(goto)(0, 27, 26) */
		reached[2][27] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 36: // STATE 29 - espec.pml:63 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][29] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC fsm_mediciones */
	case 37: // STATE 1 - espec.pml:29 - [m_state = MEDICIONES] (0:0:1 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		(trpt+1)->bup.oval = now.m_state;
		now.m_state = 3;
#ifdef VAR_RANGES
		logval("m_state", now.m_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 2 - espec.pml:31 - [((m_state==MEDICIONES))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((now.m_state==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 3 - espec.pml:33 - [(sensor_timeout)] (8:0:1 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (!(((int)now.sensor_timeout)))
			continue;
		/* merge: sensor_timeout = 0(8, 4, 8) */
		reached[1][4] = 1;
		(trpt+1)->bup.oval = ((int)now.sensor_timeout);
		now.sensor_timeout = 0;
#ifdef VAR_RANGES
		logval("sensor_timeout", ((int)now.sensor_timeout));
#endif
		;
		/* merge: .(goto)(8, 6, 8) */
		reached[1][6] = 1;
		;
		/* merge: .(goto)(0, 9, 8) */
		reached[1][9] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 40: // STATE 11 - espec.pml:37 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][11] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC fsm_luz */
	case 41: // STATE 1 - espec.pml:10 - [state = LUZ_OFF] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = now.state;
		now.state = 1;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 2 - espec.pml:12 - [((state==LUZ_OFF))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((now.state==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 3 - espec.pml:14 - [((presencia&&!(lumAlta)))] (17:0:2 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		if (!((((int)now.presencia)&& !(((int)now.lumAlta)))))
			continue;
		/* merge: state = LUZ_ON(17, 4, 17) */
		reached[0][4] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.state;
		now.state = 2;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: presencia = 0(17, 5, 17) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.presencia);
		now.presencia = 0;
#ifdef VAR_RANGES
		logval("presencia", ((int)now.presencia));
#endif
		;
		/* merge: .(goto)(17, 7, 17) */
		reached[0][7] = 1;
		;
		/* merge: .(goto)(0, 18, 17) */
		reached[0][18] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 44: // STATE 9 - espec.pml:17 - [((state==LUZ_ON))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		if (!((now.state==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 10 - espec.pml:19 - [(lumAlta)] (17:0:1 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		if (!(((int)now.lumAlta)))
			continue;
		/* merge: state = LUZ_OFF(17, 11, 17) */
		reached[0][11] = 1;
		(trpt+1)->bup.oval = now.state;
		now.state = 1;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(17, 15, 17) */
		reached[0][15] = 1;
		;
		/* merge: .(goto)(0, 18, 17) */
		reached[0][18] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 46: // STATE 15 - espec.pml:22 - [.(goto)] (0:17:0 - 2)
		IfNotBlocked
		reached[0][15] = 1;
		;
		/* merge: .(goto)(0, 18, 17) */
		reached[0][18] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 47: // STATE 12 - espec.pml:20 - [(1)] (17:0:1 - 1)
		IfNotBlocked
		reached[0][12] = 1;
		if (!(1))
			continue;
		/* merge: state = LUZ_OFF(17, 13, 17) */
		reached[0][13] = 1;
		(trpt+1)->bup.oval = now.state;
		now.state = 1;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(17, 15, 17) */
		reached[0][15] = 1;
		;
		/* merge: .(goto)(0, 18, 17) */
		reached[0][18] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 48: // STATE 20 - espec.pml:24 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][20] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

