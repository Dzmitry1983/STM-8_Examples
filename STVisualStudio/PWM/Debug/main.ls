   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
 136                     ; 34 void main(void)
 136                     ; 35 {	
 138                     .text:	section	.text,new
 139  0000               _main:
 141  0000 5210          	subw	sp,#16
 142       00000010      OFST:	set	16
 145                     ; 37 	uint16_t t1 = 0;
 147  0002 5f            	clrw	x
 148  0003 1f07          	ldw	(OFST-9,sp),x
 150                     ; 38 	uint16_t t2 = 0;
 152  0005 5f            	clrw	x
 153  0006 1f09          	ldw	(OFST-7,sp),x
 155                     ; 39 	uint16_t t3 = 0;
 157  0008 5f            	clrw	x
 158  0009 1f0b          	ldw	(OFST-5,sp),x
 160                     ; 40 	uint16_t t4 = 0;
 162  000b 5f            	clrw	x
 163  000c 1f0d          	ldw	(OFST-3,sp),x
 165                     ; 41 	uint16_t timeMax = 5000;
 167  000e ae1388        	ldw	x,#5000
 168  0011 1f05          	ldw	(OFST-11,sp),x
 170                     ; 42 	int n = 0;
 172  0013 5f            	clrw	x
 173  0014 1f0f          	ldw	(OFST-1,sp),x
 175                     ; 44 	CLK_DeInit();
 177  0016 cd0000        	call	_CLK_DeInit
 179                     ; 45 	TIM1_DeInit();
 181  0019 cd0000        	call	_TIM1_DeInit
 183                     ; 46 	CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
 185  001c 4f            	clr	a
 186  001d cd0000        	call	_CLK_HSIPrescalerConfig
 188                     ; 47 	CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV1);
 190  0020 a680          	ld	a,#128
 191  0022 cd0000        	call	_CLK_SYSCLKConfig
 193                     ; 49 	TIM1_TimeBaseInit(0, TIM1_COUNTERMODE_UP, timeMax, 0);
 195  0025 4b00          	push	#0
 196  0027 1e06          	ldw	x,(OFST-10,sp)
 197  0029 89            	pushw	x
 198  002a 4b00          	push	#0
 199  002c 5f            	clrw	x
 200  002d cd0000        	call	_TIM1_TimeBaseInit
 202  0030 5b04          	addw	sp,#4
 203                     ; 50 	TIM1_OC1Init(TIM1_OCMODE_PWM2, TIM1_OUTPUTSTATE_ENABLE, TIM1_OUTPUTNSTATE_DISABLE, t1, TIM1_OCPOLARITY_LOW, TIM1_OCNPOLARITY_HIGH, TIM1_OCIDLESTATE_SET, TIM1_OCNIDLESTATE_RESET); //ch6, ch3
 205  0032 4b00          	push	#0
 206  0034 4b55          	push	#85
 207  0036 4b00          	push	#0
 208  0038 4b22          	push	#34
 209  003a 1e0b          	ldw	x,(OFST-5,sp)
 210  003c 89            	pushw	x
 211  003d 4b00          	push	#0
 212  003f ae7011        	ldw	x,#28689
 213  0042 cd0000        	call	_TIM1_OC1Init
 215  0045 5b07          	addw	sp,#7
 216                     ; 51 	TIM1_OC2Init(TIM1_OCMODE_PWM2, TIM1_OUTPUTSTATE_ENABLE, TIM1_OUTPUTNSTATE_DISABLE, t2, TIM1_OCPOLARITY_LOW, TIM1_OCNPOLARITY_HIGH, TIM1_OCIDLESTATE_RESET, TIM1_OCNIDLESTATE_RESET); //ch7, ch4
 218  0047 4b00          	push	#0
 219  0049 4b00          	push	#0
 220  004b 4b00          	push	#0
 221  004d 4b22          	push	#34
 222  004f 1e0d          	ldw	x,(OFST-3,sp)
 223  0051 89            	pushw	x
 224  0052 4b00          	push	#0
 225  0054 ae7011        	ldw	x,#28689
 226  0057 cd0000        	call	_TIM1_OC2Init
 228  005a 5b07          	addw	sp,#7
 229                     ; 52 	TIM1_OC3Init(TIM1_OCMODE_PWM2, TIM1_OUTPUTSTATE_ENABLE, TIM1_OUTPUTNSTATE_DISABLE, t3, TIM1_OCPOLARITY_LOW, TIM1_OCNPOLARITY_HIGH, TIM1_OCIDLESTATE_SET, TIM1_OCNIDLESTATE_RESET); //ch3
 231  005c 4b00          	push	#0
 232  005e 4b55          	push	#85
 233  0060 4b00          	push	#0
 234  0062 4b22          	push	#34
 235  0064 1e0f          	ldw	x,(OFST-1,sp)
 236  0066 89            	pushw	x
 237  0067 4b00          	push	#0
 238  0069 ae7011        	ldw	x,#28689
 239  006c cd0000        	call	_TIM1_OC3Init
 241  006f 5b07          	addw	sp,#7
 242                     ; 53 	TIM1_OC4Init(TIM1_OCMODE_PWM2, TIM1_OUTPUTSTATE_ENABLE, t4, TIM1_OCPOLARITY_LOW, TIM1_OCIDLESTATE_RESET); //ch4
 244  0071 4b00          	push	#0
 245  0073 4b22          	push	#34
 246  0075 1e0f          	ldw	x,(OFST-1,sp)
 247  0077 89            	pushw	x
 248  0078 ae7011        	ldw	x,#28689
 249  007b cd0000        	call	_TIM1_OC4Init
 251  007e 5b04          	addw	sp,#4
 252                     ; 54 	TIM1_Cmd(ENABLE);
 254  0080 a601          	ld	a,#1
 255  0082 cd0000        	call	_TIM1_Cmd
 257                     ; 55 	TIM1_CtrlPWMOutputs(ENABLE);
 259  0085 a601          	ld	a,#1
 260  0087 cd0000        	call	_TIM1_CtrlPWMOutputs
 262  008a               L57:
 263                     ; 60 		uint16_t *value0 = 0;
 265  008a 5f            	clrw	x
 266  008b 1f03          	ldw	(OFST-13,sp),x
 268                     ; 61 		uint16_t *value1 = 0;
 270  008d 5f            	clrw	x
 271  008e 1f01          	ldw	(OFST-15,sp),x
 273                     ; 64 		switch (n) {
 275  0090 1e0f          	ldw	x,(OFST-1,sp)
 277                     ; 81 			default:
 277                     ; 82 			break;
 278  0092 5d            	tnzw	x
 279  0093 270b          	jreq	L3
 280  0095 5a            	decw	x
 281  0096 2716          	jreq	L5
 282  0098 5a            	decw	x
 283  0099 2721          	jreq	L7
 284  009b 5a            	decw	x
 285  009c 272c          	jreq	L11
 286  009e 2036          	jra	L301
 287  00a0               L3:
 288                     ; 65 			case 0:
 288                     ; 66 				value0 = &t1;
 290  00a0 96            	ldw	x,sp
 291  00a1 1c0007        	addw	x,#OFST-9
 292  00a4 1f03          	ldw	(OFST-13,sp),x
 294                     ; 67 				value1 = &t4;
 296  00a6 96            	ldw	x,sp
 297  00a7 1c000d        	addw	x,#OFST-3
 298  00aa 1f01          	ldw	(OFST-15,sp),x
 300                     ; 68 				break;
 302  00ac 2028          	jra	L301
 303  00ae               L5:
 304                     ; 69 			case 1:
 304                     ; 70 				value0 = &t2;
 306  00ae 96            	ldw	x,sp
 307  00af 1c0009        	addw	x,#OFST-7
 308  00b2 1f03          	ldw	(OFST-13,sp),x
 310                     ; 71 				value1 = &t1;
 312  00b4 96            	ldw	x,sp
 313  00b5 1c0007        	addw	x,#OFST-9
 314  00b8 1f01          	ldw	(OFST-15,sp),x
 316                     ; 72 				break;
 318  00ba 201a          	jra	L301
 319  00bc               L7:
 320                     ; 73 			case 2:
 320                     ; 74 				value0 = &t3;
 322  00bc 96            	ldw	x,sp
 323  00bd 1c000b        	addw	x,#OFST-5
 324  00c0 1f03          	ldw	(OFST-13,sp),x
 326                     ; 75 				value1 = &t2;
 328  00c2 96            	ldw	x,sp
 329  00c3 1c0009        	addw	x,#OFST-7
 330  00c6 1f01          	ldw	(OFST-15,sp),x
 332                     ; 76 				break;
 334  00c8 200c          	jra	L301
 335  00ca               L11:
 336                     ; 77 			case 3:
 336                     ; 78 				value0 = &t4;
 338  00ca 96            	ldw	x,sp
 339  00cb 1c000d        	addw	x,#OFST-3
 340  00ce 1f03          	ldw	(OFST-13,sp),x
 342                     ; 79 				value1 = &t3;
 344  00d0 96            	ldw	x,sp
 345  00d1 1c000b        	addw	x,#OFST-5
 346  00d4 1f01          	ldw	(OFST-15,sp),x
 348                     ; 80 				break;
 350  00d6               L31:
 351                     ; 81 			default:
 351                     ; 82 			break;
 353  00d6               L301:
 354                     ; 84 		(*value0) ++;
 356  00d6 1e03          	ldw	x,(OFST-13,sp)
 357  00d8 9093          	ldw	y,x
 358  00da fe            	ldw	x,(x)
 359  00db 1c0001        	addw	x,#1
 360  00de 90ff          	ldw	(y),x
 361                     ; 85 		if (*value1 > 1) {
 363  00e0 1e01          	ldw	x,(OFST-15,sp)
 364  00e2 9093          	ldw	y,x
 365  00e4 90fe          	ldw	y,(y)
 366  00e6 90a30002      	cpw	y,#2
 367  00ea 250a          	jrult	L501
 368                     ; 86 			(*value1)--;
 370  00ec 1e01          	ldw	x,(OFST-15,sp)
 371  00ee 9093          	ldw	y,x
 372  00f0 fe            	ldw	x,(x)
 373  00f1 1d0001        	subw	x,#1
 374  00f4 90ff          	ldw	(y),x
 375  00f6               L501:
 376                     ; 88 		if (*value0 >= timeMax) {
 378  00f6 1e03          	ldw	x,(OFST-13,sp)
 379  00f8 9093          	ldw	y,x
 380  00fa 51            	exgw	x,y
 381  00fb fe            	ldw	x,(x)
 382  00fc 1305          	cpw	x,(OFST-11,sp)
 383  00fe 51            	exgw	x,y
 384  00ff 2517          	jrult	L701
 385                     ; 89 			*value0 = timeMax;
 387  0101 1e03          	ldw	x,(OFST-13,sp)
 388  0103 1605          	ldw	y,(OFST-11,sp)
 389  0105 ff            	ldw	(x),y
 390                     ; 90 			n++;
 392  0106 1e0f          	ldw	x,(OFST-1,sp)
 393  0108 1c0001        	addw	x,#1
 394  010b 1f0f          	ldw	(OFST-1,sp),x
 396                     ; 91 			checkByMax(n, 4);
 398  010d 9c            	rvf
 399  010e 1e0f          	ldw	x,(OFST-1,sp)
 400  0110 a30004        	cpw	x,#4
 401  0113 2f03          	jrslt	L701
 404  0115 5f            	clrw	x
 405  0116 1f0f          	ldw	(OFST-1,sp),x
 407  0118               L701:
 408                     ; 95 		TIM1_SetCompare1(t1);
 410  0118 1e07          	ldw	x,(OFST-9,sp)
 411  011a cd0000        	call	_TIM1_SetCompare1
 413                     ; 96 		TIM1_SetCompare2(t2);
 415  011d 1e09          	ldw	x,(OFST-7,sp)
 416  011f cd0000        	call	_TIM1_SetCompare2
 418                     ; 97 		TIM1_SetCompare3(t3);
 420  0122 1e0b          	ldw	x,(OFST-5,sp)
 421  0124 cd0000        	call	_TIM1_SetCompare3
 423                     ; 98 		TIM1_SetCompare4(t4);
 425  0127 1e0d          	ldw	x,(OFST-3,sp)
 426  0129 cd0000        	call	_TIM1_SetCompare4
 428                     ; 101 		Delay(50);
 430  012c ae0032        	ldw	x,#50
 431  012f 89            	pushw	x
 432  0130 ae0000        	ldw	x,#0
 433  0133 89            	pushw	x
 434  0134 cd0000        	call	_Delay
 436  0137 5b04          	addw	sp,#4
 438  0139 ac8a008a      	jpf	L57
 472                     ; 112 void Delay(uint32_t nCount)
 472                     ; 113 {
 473                     .text:	section	.text,new
 474  0000               _Delay:
 476       00000000      OFST:	set	0
 479  0000 2009          	jra	L331
 480  0002               L131:
 481                     ; 117     nCount--;
 483  0002 96            	ldw	x,sp
 484  0003 1c0003        	addw	x,#OFST+3
 485  0006 a601          	ld	a,#1
 486  0008 cd0000        	call	c_lgsbc
 488  000b               L331:
 489                     ; 115   while (nCount != 0)
 491  000b 96            	ldw	x,sp
 492  000c 1c0003        	addw	x,#OFST+3
 493  000f cd0000        	call	c_lzmp
 495  0012 26ee          	jrne	L131
 496                     ; 119 }
 499  0014 81            	ret
 535                     ; 130 void assert_failed(uint8_t* file, uint32_t line)
 535                     ; 131 { 
 536                     .text:	section	.text,new
 537  0000               _assert_failed:
 541  0000               L551:
 542                     ; 138 		nop();
 545  0000 9d            nop
 549  0001 20fd          	jra	L551
 562                     	xdef	_main
 563                     	xdef	_Delay
 564                     	xdef	_assert_failed
 565                     	xref	_TIM1_SetCompare4
 566                     	xref	_TIM1_SetCompare3
 567                     	xref	_TIM1_SetCompare2
 568                     	xref	_TIM1_SetCompare1
 569                     	xref	_TIM1_CtrlPWMOutputs
 570                     	xref	_TIM1_Cmd
 571                     	xref	_TIM1_OC4Init
 572                     	xref	_TIM1_OC3Init
 573                     	xref	_TIM1_OC2Init
 574                     	xref	_TIM1_OC1Init
 575                     	xref	_TIM1_TimeBaseInit
 576                     	xref	_TIM1_DeInit
 577                     	xref	_CLK_SYSCLKConfig
 578                     	xref	_CLK_HSIPrescalerConfig
 579                     	xref	_CLK_DeInit
 598                     	xref	c_lzmp
 599                     	xref	c_lgsbc
 600                     	end
