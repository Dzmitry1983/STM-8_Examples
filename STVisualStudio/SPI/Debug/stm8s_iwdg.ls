   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
  80                     ; 48 void IWDG_WriteAccessCmd(IWDG_WriteAccess_TypeDef IWDG_WriteAccess)
  80                     ; 49 {
  82                     .text:	section	.text,new
  83  0000               _IWDG_WriteAccessCmd:
  85  0000 88            	push	a
  86       00000000      OFST:	set	0
  89                     ; 51   assert_param(IS_IWDG_WRITEACCESS_MODE_OK(IWDG_WriteAccess));
  91  0001 a155          	cp	a,#85
  92  0003 2703          	jreq	L01
  93  0005 4d            	tnz	a
  94  0006 2603          	jrne	L6
  95  0008               L01:
  96  0008 4f            	clr	a
  97  0009 2010          	jra	L21
  98  000b               L6:
  99  000b ae0033        	ldw	x,#51
 100  000e 89            	pushw	x
 101  000f ae0000        	ldw	x,#0
 102  0012 89            	pushw	x
 103  0013 ae0000        	ldw	x,#L73
 104  0016 cd0000        	call	_assert_failed
 106  0019 5b04          	addw	sp,#4
 107  001b               L21:
 108                     ; 53   IWDG->KR = (uint8_t)IWDG_WriteAccess; /* Write Access */
 110  001b 7b01          	ld	a,(OFST+1,sp)
 111  001d c750e0        	ld	20704,a
 112                     ; 54 }
 115  0020 84            	pop	a
 116  0021 81            	ret
 207                     ; 63 void IWDG_SetPrescaler(IWDG_Prescaler_TypeDef IWDG_Prescaler)
 207                     ; 64 {
 208                     .text:	section	.text,new
 209  0000               _IWDG_SetPrescaler:
 211  0000 88            	push	a
 212       00000000      OFST:	set	0
 215                     ; 66   assert_param(IS_IWDG_PRESCALER_OK(IWDG_Prescaler));
 217  0001 4d            	tnz	a
 218  0002 2718          	jreq	L02
 219  0004 a101          	cp	a,#1
 220  0006 2714          	jreq	L02
 221  0008 a102          	cp	a,#2
 222  000a 2710          	jreq	L02
 223  000c a103          	cp	a,#3
 224  000e 270c          	jreq	L02
 225  0010 a104          	cp	a,#4
 226  0012 2708          	jreq	L02
 227  0014 a105          	cp	a,#5
 228  0016 2704          	jreq	L02
 229  0018 a106          	cp	a,#6
 230  001a 2603          	jrne	L61
 231  001c               L02:
 232  001c 4f            	clr	a
 233  001d 2010          	jra	L22
 234  001f               L61:
 235  001f ae0042        	ldw	x,#66
 236  0022 89            	pushw	x
 237  0023 ae0000        	ldw	x,#0
 238  0026 89            	pushw	x
 239  0027 ae0000        	ldw	x,#L73
 240  002a cd0000        	call	_assert_failed
 242  002d 5b04          	addw	sp,#4
 243  002f               L22:
 244                     ; 68   IWDG->PR = (uint8_t)IWDG_Prescaler;
 246  002f 7b01          	ld	a,(OFST+1,sp)
 247  0031 c750e1        	ld	20705,a
 248                     ; 69 }
 251  0034 84            	pop	a
 252  0035 81            	ret
 286                     ; 78 void IWDG_SetReload(uint8_t IWDG_Reload)
 286                     ; 79 {
 287                     .text:	section	.text,new
 288  0000               _IWDG_SetReload:
 292                     ; 80   IWDG->RLR = IWDG_Reload;
 294  0000 c750e2        	ld	20706,a
 295                     ; 81 }
 298  0003 81            	ret
 321                     ; 89 void IWDG_ReloadCounter(void)
 321                     ; 90 {
 322                     .text:	section	.text,new
 323  0000               _IWDG_ReloadCounter:
 327                     ; 91   IWDG->KR = IWDG_KEY_REFRESH;
 329  0000 35aa50e0      	mov	20704,#170
 330                     ; 92 }
 333  0004 81            	ret
 356                     ; 99 void IWDG_Enable(void)
 356                     ; 100 {
 357                     .text:	section	.text,new
 358  0000               _IWDG_Enable:
 362                     ; 101   IWDG->KR = IWDG_KEY_ENABLE;
 364  0000 35cc50e0      	mov	20704,#204
 365                     ; 102 }
 368  0004 81            	ret
 381                     	xdef	_IWDG_Enable
 382                     	xdef	_IWDG_ReloadCounter
 383                     	xdef	_IWDG_SetReload
 384                     	xdef	_IWDG_SetPrescaler
 385                     	xdef	_IWDG_WriteAccessCmd
 386                     	xref	_assert_failed
 387                     .const:	section	.text
 388  0000               L73:
 389  0000 2e2e5c6c6962  	dc.b	"..\libs\src\stm8s_"
 390  0012 697764672e63  	dc.b	"iwdg.c",0
 410                     	end
