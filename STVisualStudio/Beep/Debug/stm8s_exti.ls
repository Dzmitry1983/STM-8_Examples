   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
  44                     ; 53 void EXTI_DeInit(void)
  44                     ; 54 {
  46                     .text:	section	.text,new
  47  0000               _EXTI_DeInit:
  51                     ; 55   EXTI->CR1 = EXTI_CR1_RESET_VALUE;
  53  0000 725f50a0      	clr	20640
  54                     ; 56   EXTI->CR2 = EXTI_CR2_RESET_VALUE;
  56  0004 725f50a1      	clr	20641
  57                     ; 57 }
  60  0008 81            	ret
 186                     ; 70 void EXTI_SetExtIntSensitivity(EXTI_Port_TypeDef Port, EXTI_Sensitivity_TypeDef SensitivityValue)
 186                     ; 71 {
 187                     .text:	section	.text,new
 188  0000               _EXTI_SetExtIntSensitivity:
 190  0000 89            	pushw	x
 191       00000000      OFST:	set	0
 194                     ; 73   assert_param(IS_EXTI_PORT_OK(Port));
 196  0001 9e            	ld	a,xh
 197  0002 4d            	tnz	a
 198  0003 2714          	jreq	L21
 199  0005 9e            	ld	a,xh
 200  0006 a101          	cp	a,#1
 201  0008 270f          	jreq	L21
 202  000a 9e            	ld	a,xh
 203  000b a102          	cp	a,#2
 204  000d 270a          	jreq	L21
 205  000f 9e            	ld	a,xh
 206  0010 a103          	cp	a,#3
 207  0012 2705          	jreq	L21
 208  0014 9e            	ld	a,xh
 209  0015 a104          	cp	a,#4
 210  0017 2603          	jrne	L01
 211  0019               L21:
 212  0019 4f            	clr	a
 213  001a 2010          	jra	L41
 214  001c               L01:
 215  001c ae0049        	ldw	x,#73
 216  001f 89            	pushw	x
 217  0020 ae0000        	ldw	x,#0
 218  0023 89            	pushw	x
 219  0024 ae0000        	ldw	x,#L111
 220  0027 cd0000        	call	_assert_failed
 222  002a 5b04          	addw	sp,#4
 223  002c               L41:
 224                     ; 74   assert_param(IS_EXTI_SENSITIVITY_OK(SensitivityValue));
 226  002c 0d02          	tnz	(OFST+2,sp)
 227  002e 2712          	jreq	L02
 228  0030 7b02          	ld	a,(OFST+2,sp)
 229  0032 a101          	cp	a,#1
 230  0034 270c          	jreq	L02
 231  0036 7b02          	ld	a,(OFST+2,sp)
 232  0038 a102          	cp	a,#2
 233  003a 2706          	jreq	L02
 234  003c 7b02          	ld	a,(OFST+2,sp)
 235  003e a103          	cp	a,#3
 236  0040 2603          	jrne	L61
 237  0042               L02:
 238  0042 4f            	clr	a
 239  0043 2010          	jra	L22
 240  0045               L61:
 241  0045 ae004a        	ldw	x,#74
 242  0048 89            	pushw	x
 243  0049 ae0000        	ldw	x,#0
 244  004c 89            	pushw	x
 245  004d ae0000        	ldw	x,#L111
 246  0050 cd0000        	call	_assert_failed
 248  0053 5b04          	addw	sp,#4
 249  0055               L22:
 250                     ; 77   switch (Port)
 252  0055 7b01          	ld	a,(OFST+1,sp)
 254                     ; 99   default:
 254                     ; 100     break;
 255  0057 4d            	tnz	a
 256  0058 270e          	jreq	L12
 257  005a 4a            	dec	a
 258  005b 271d          	jreq	L32
 259  005d 4a            	dec	a
 260  005e 272e          	jreq	L52
 261  0060 4a            	dec	a
 262  0061 2742          	jreq	L72
 263  0063 4a            	dec	a
 264  0064 2756          	jreq	L13
 265  0066 2064          	jra	L511
 266  0068               L12:
 267                     ; 79   case EXTI_PORT_GPIOA:
 267                     ; 80     EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PAIS);
 269  0068 c650a0        	ld	a,20640
 270  006b a4fc          	and	a,#252
 271  006d c750a0        	ld	20640,a
 272                     ; 81     EXTI->CR1 |= (uint8_t)(SensitivityValue);
 274  0070 c650a0        	ld	a,20640
 275  0073 1a02          	or	a,(OFST+2,sp)
 276  0075 c750a0        	ld	20640,a
 277                     ; 82     break;
 279  0078 2052          	jra	L511
 280  007a               L32:
 281                     ; 83   case EXTI_PORT_GPIOB:
 281                     ; 84     EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PBIS);
 283  007a c650a0        	ld	a,20640
 284  007d a4f3          	and	a,#243
 285  007f c750a0        	ld	20640,a
 286                     ; 85     EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 2);
 288  0082 7b02          	ld	a,(OFST+2,sp)
 289  0084 48            	sll	a
 290  0085 48            	sll	a
 291  0086 ca50a0        	or	a,20640
 292  0089 c750a0        	ld	20640,a
 293                     ; 86     break;
 295  008c 203e          	jra	L511
 296  008e               L52:
 297                     ; 87   case EXTI_PORT_GPIOC:
 297                     ; 88     EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PCIS);
 299  008e c650a0        	ld	a,20640
 300  0091 a4cf          	and	a,#207
 301  0093 c750a0        	ld	20640,a
 302                     ; 89     EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 4);
 304  0096 7b02          	ld	a,(OFST+2,sp)
 305  0098 97            	ld	xl,a
 306  0099 a610          	ld	a,#16
 307  009b 42            	mul	x,a
 308  009c 9f            	ld	a,xl
 309  009d ca50a0        	or	a,20640
 310  00a0 c750a0        	ld	20640,a
 311                     ; 90     break;
 313  00a3 2027          	jra	L511
 314  00a5               L72:
 315                     ; 91   case EXTI_PORT_GPIOD:
 315                     ; 92     EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PDIS);
 317  00a5 c650a0        	ld	a,20640
 318  00a8 a43f          	and	a,#63
 319  00aa c750a0        	ld	20640,a
 320                     ; 93     EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 6);
 322  00ad 7b02          	ld	a,(OFST+2,sp)
 323  00af 97            	ld	xl,a
 324  00b0 a640          	ld	a,#64
 325  00b2 42            	mul	x,a
 326  00b3 9f            	ld	a,xl
 327  00b4 ca50a0        	or	a,20640
 328  00b7 c750a0        	ld	20640,a
 329                     ; 94     break;
 331  00ba 2010          	jra	L511
 332  00bc               L13:
 333                     ; 95   case EXTI_PORT_GPIOE:
 333                     ; 96     EXTI->CR2 &= (uint8_t)(~EXTI_CR2_PEIS);
 335  00bc c650a1        	ld	a,20641
 336  00bf a4fc          	and	a,#252
 337  00c1 c750a1        	ld	20641,a
 338                     ; 97     EXTI->CR2 |= (uint8_t)(SensitivityValue);
 340  00c4 c650a1        	ld	a,20641
 341  00c7 1a02          	or	a,(OFST+2,sp)
 342  00c9 c750a1        	ld	20641,a
 343                     ; 98     break;
 345  00cc               L33:
 346                     ; 99   default:
 346                     ; 100     break;
 348  00cc               L511:
 349                     ; 102 }
 352  00cc 85            	popw	x
 353  00cd 81            	ret
 412                     ; 111 void EXTI_SetTLISensitivity(EXTI_TLISensitivity_TypeDef SensitivityValue)
 412                     ; 112 {
 413                     .text:	section	.text,new
 414  0000               _EXTI_SetTLISensitivity:
 416  0000 88            	push	a
 417       00000000      OFST:	set	0
 420                     ; 114   assert_param(IS_EXTI_TLISENSITIVITY_OK(SensitivityValue));
 422  0001 4d            	tnz	a
 423  0002 2704          	jreq	L03
 424  0004 a104          	cp	a,#4
 425  0006 2603          	jrne	L62
 426  0008               L03:
 427  0008 4f            	clr	a
 428  0009 2010          	jra	L23
 429  000b               L62:
 430  000b ae0072        	ldw	x,#114
 431  000e 89            	pushw	x
 432  000f ae0000        	ldw	x,#0
 433  0012 89            	pushw	x
 434  0013 ae0000        	ldw	x,#L111
 435  0016 cd0000        	call	_assert_failed
 437  0019 5b04          	addw	sp,#4
 438  001b               L23:
 439                     ; 117   EXTI->CR2 &= (uint8_t)(~EXTI_CR2_TLIS);
 441  001b 721550a1      	bres	20641,#2
 442                     ; 118   EXTI->CR2 |= (uint8_t)(SensitivityValue);
 444  001f c650a1        	ld	a,20641
 445  0022 1a01          	or	a,(OFST+1,sp)
 446  0024 c750a1        	ld	20641,a
 447                     ; 119 }
 450  0027 84            	pop	a
 451  0028 81            	ret
 498                     ; 126 EXTI_Sensitivity_TypeDef EXTI_GetExtIntSensitivity(EXTI_Port_TypeDef Port)
 498                     ; 127 {
 499                     .text:	section	.text,new
 500  0000               _EXTI_GetExtIntSensitivity:
 502  0000 88            	push	a
 503  0001 88            	push	a
 504       00000001      OFST:	set	1
 507                     ; 128   uint8_t value = 0;
 509  0002 0f01          	clr	(OFST+0,sp)
 511                     ; 131   assert_param(IS_EXTI_PORT_OK(Port));
 513  0004 4d            	tnz	a
 514  0005 2710          	jreq	L04
 515  0007 a101          	cp	a,#1
 516  0009 270c          	jreq	L04
 517  000b a102          	cp	a,#2
 518  000d 2708          	jreq	L04
 519  000f a103          	cp	a,#3
 520  0011 2704          	jreq	L04
 521  0013 a104          	cp	a,#4
 522  0015 2603          	jrne	L63
 523  0017               L04:
 524  0017 4f            	clr	a
 525  0018 2010          	jra	L24
 526  001a               L63:
 527  001a ae0083        	ldw	x,#131
 528  001d 89            	pushw	x
 529  001e ae0000        	ldw	x,#0
 530  0021 89            	pushw	x
 531  0022 ae0000        	ldw	x,#L111
 532  0025 cd0000        	call	_assert_failed
 534  0028 5b04          	addw	sp,#4
 535  002a               L24:
 536                     ; 133   switch (Port)
 538  002a 7b02          	ld	a,(OFST+1,sp)
 540                     ; 150   default:
 540                     ; 151     break;
 541  002c 4d            	tnz	a
 542  002d 270e          	jreq	L541
 543  002f 4a            	dec	a
 544  0030 2714          	jreq	L741
 545  0032 4a            	dec	a
 546  0033 271c          	jreq	L151
 547  0035 4a            	dec	a
 548  0036 2725          	jreq	L351
 549  0038 4a            	dec	a
 550  0039 2730          	jreq	L551
 551  003b 2035          	jra	L502
 552  003d               L541:
 553                     ; 135   case EXTI_PORT_GPIOA:
 553                     ; 136     value = (uint8_t)(EXTI->CR1 & EXTI_CR1_PAIS);
 555  003d c650a0        	ld	a,20640
 556  0040 a403          	and	a,#3
 557  0042 6b01          	ld	(OFST+0,sp),a
 559                     ; 137     break;
 561  0044 202c          	jra	L502
 562  0046               L741:
 563                     ; 138   case EXTI_PORT_GPIOB:
 563                     ; 139     value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PBIS) >> 2);
 565  0046 c650a0        	ld	a,20640
 566  0049 a40c          	and	a,#12
 567  004b 44            	srl	a
 568  004c 44            	srl	a
 569  004d 6b01          	ld	(OFST+0,sp),a
 571                     ; 140     break;
 573  004f 2021          	jra	L502
 574  0051               L151:
 575                     ; 141   case EXTI_PORT_GPIOC:
 575                     ; 142     value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PCIS) >> 4);
 577  0051 c650a0        	ld	a,20640
 578  0054 a430          	and	a,#48
 579  0056 4e            	swap	a
 580  0057 a40f          	and	a,#15
 581  0059 6b01          	ld	(OFST+0,sp),a
 583                     ; 143     break;
 585  005b 2015          	jra	L502
 586  005d               L351:
 587                     ; 144   case EXTI_PORT_GPIOD:
 587                     ; 145     value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PDIS) >> 6);
 589  005d c650a0        	ld	a,20640
 590  0060 a4c0          	and	a,#192
 591  0062 4e            	swap	a
 592  0063 44            	srl	a
 593  0064 44            	srl	a
 594  0065 a403          	and	a,#3
 595  0067 6b01          	ld	(OFST+0,sp),a
 597                     ; 146     break;
 599  0069 2007          	jra	L502
 600  006b               L551:
 601                     ; 147   case EXTI_PORT_GPIOE:
 601                     ; 148     value = (uint8_t)(EXTI->CR2 & EXTI_CR2_PEIS);
 603  006b c650a1        	ld	a,20641
 604  006e a403          	and	a,#3
 605  0070 6b01          	ld	(OFST+0,sp),a
 607                     ; 149     break;
 609  0072               L751:
 610                     ; 150   default:
 610                     ; 151     break;
 612  0072               L502:
 613                     ; 154   return((EXTI_Sensitivity_TypeDef)value);
 615  0072 7b01          	ld	a,(OFST+0,sp)
 618  0074 85            	popw	x
 619  0075 81            	ret
 655                     ; 162 EXTI_TLISensitivity_TypeDef EXTI_GetTLISensitivity(void)
 655                     ; 163 {
 656                     .text:	section	.text,new
 657  0000               _EXTI_GetTLISensitivity:
 659  0000 88            	push	a
 660       00000001      OFST:	set	1
 663                     ; 164   uint8_t value = 0;
 665                     ; 167   value = (uint8_t)(EXTI->CR2 & EXTI_CR2_TLIS);
 667  0001 c650a1        	ld	a,20641
 668  0004 a404          	and	a,#4
 669  0006 6b01          	ld	(OFST+0,sp),a
 671                     ; 169   return((EXTI_TLISensitivity_TypeDef)value);
 673  0008 7b01          	ld	a,(OFST+0,sp)
 676  000a 5b01          	addw	sp,#1
 677  000c 81            	ret
 690                     	xdef	_EXTI_GetTLISensitivity
 691                     	xdef	_EXTI_GetExtIntSensitivity
 692                     	xdef	_EXTI_SetTLISensitivity
 693                     	xdef	_EXTI_SetExtIntSensitivity
 694                     	xdef	_EXTI_DeInit
 695                     	xref	_assert_failed
 696                     .const:	section	.text
 697  0000               L111:
 698  0000 2e2e5c6c6962  	dc.b	"..\libs\src\stm8s_"
 699  0012 657874692e63  	dc.b	"exti.c",0
 719                     	end
