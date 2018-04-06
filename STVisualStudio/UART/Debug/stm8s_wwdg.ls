   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
  65                     ; 53 void WWDG_Init(uint8_t Counter, uint8_t WindowValue)
  65                     ; 54 {
  67                     .text:	section	.text,new
  68  0000               _WWDG_Init:
  70  0000 89            	pushw	x
  71       00000000      OFST:	set	0
  74                     ; 56   assert_param(IS_WWDG_WINDOWLIMITVALUE_OK(WindowValue));
  76  0001 9f            	ld	a,xl
  77  0002 a180          	cp	a,#128
  78  0004 2403          	jruge	L6
  79  0006 4f            	clr	a
  80  0007 2010          	jra	L01
  81  0009               L6:
  82  0009 ae0038        	ldw	x,#56
  83  000c 89            	pushw	x
  84  000d ae0000        	ldw	x,#0
  85  0010 89            	pushw	x
  86  0011 ae0000        	ldw	x,#L33
  87  0014 cd0000        	call	_assert_failed
  89  0017 5b04          	addw	sp,#4
  90  0019               L01:
  91                     ; 58   WWDG->WR = WWDG_WR_RESET_VALUE;
  93  0019 357f50d2      	mov	20690,#127
  94                     ; 59   WWDG->CR = (uint8_t)((uint8_t)(WWDG_CR_WDGA | WWDG_CR_T6) | (uint8_t)Counter);
  96  001d 7b01          	ld	a,(OFST+1,sp)
  97  001f aac0          	or	a,#192
  98  0021 c750d1        	ld	20689,a
  99                     ; 60   WWDG->WR = (uint8_t)((uint8_t)(~WWDG_CR_WDGA) & (uint8_t)(WWDG_CR_T6 | WindowValue));
 101  0024 7b02          	ld	a,(OFST+2,sp)
 102  0026 aa40          	or	a,#64
 103  0028 a47f          	and	a,#127
 104  002a c750d2        	ld	20690,a
 105                     ; 61 }
 108  002d 85            	popw	x
 109  002e 81            	ret
 144                     ; 69 void WWDG_SetCounter(uint8_t Counter)
 144                     ; 70 {
 145                     .text:	section	.text,new
 146  0000               _WWDG_SetCounter:
 148  0000 88            	push	a
 149       00000000      OFST:	set	0
 152                     ; 72   assert_param(IS_WWDG_COUNTERVALUE_OK(Counter));
 154  0001 a180          	cp	a,#128
 155  0003 2403          	jruge	L41
 156  0005 4f            	clr	a
 157  0006 2010          	jra	L61
 158  0008               L41:
 159  0008 ae0048        	ldw	x,#72
 160  000b 89            	pushw	x
 161  000c ae0000        	ldw	x,#0
 162  000f 89            	pushw	x
 163  0010 ae0000        	ldw	x,#L33
 164  0013 cd0000        	call	_assert_failed
 166  0016 5b04          	addw	sp,#4
 167  0018               L61:
 168                     ; 76   WWDG->CR = (uint8_t)(Counter & (uint8_t)BIT_MASK);
 170  0018 7b01          	ld	a,(OFST+1,sp)
 171  001a a47f          	and	a,#127
 172  001c c750d1        	ld	20689,a
 173                     ; 77 }
 176  001f 84            	pop	a
 177  0020 81            	ret
 200                     ; 86 uint8_t WWDG_GetCounter(void)
 200                     ; 87 {
 201                     .text:	section	.text,new
 202  0000               _WWDG_GetCounter:
 206                     ; 88   return(WWDG->CR);
 208  0000 c650d1        	ld	a,20689
 211  0003 81            	ret
 234                     ; 96 void WWDG_SWReset(void)
 234                     ; 97 {
 235                     .text:	section	.text,new
 236  0000               _WWDG_SWReset:
 240                     ; 98   WWDG->CR = WWDG_CR_WDGA; /* Activate WWDG, with clearing T6 */
 242  0000 358050d1      	mov	20689,#128
 243                     ; 99 }
 246  0004 81            	ret
 282                     ; 108 void WWDG_SetWindowValue(uint8_t WindowValue)
 282                     ; 109 {
 283                     .text:	section	.text,new
 284  0000               _WWDG_SetWindowValue:
 286  0000 88            	push	a
 287       00000000      OFST:	set	0
 290                     ; 111   assert_param(IS_WWDG_WINDOWLIMITVALUE_OK(WindowValue));
 292  0001 a180          	cp	a,#128
 293  0003 2403          	jruge	L62
 294  0005 4f            	clr	a
 295  0006 2010          	jra	L03
 296  0008               L62:
 297  0008 ae006f        	ldw	x,#111
 298  000b 89            	pushw	x
 299  000c ae0000        	ldw	x,#0
 300  000f 89            	pushw	x
 301  0010 ae0000        	ldw	x,#L33
 302  0013 cd0000        	call	_assert_failed
 304  0016 5b04          	addw	sp,#4
 305  0018               L03:
 306                     ; 113   WWDG->WR = (uint8_t)((uint8_t)(~WWDG_CR_WDGA) & (uint8_t)(WWDG_CR_T6 | WindowValue));
 308  0018 7b01          	ld	a,(OFST+1,sp)
 309  001a aa40          	or	a,#64
 310  001c a47f          	and	a,#127
 311  001e c750d2        	ld	20690,a
 312                     ; 114 }
 315  0021 84            	pop	a
 316  0022 81            	ret
 329                     	xdef	_WWDG_SetWindowValue
 330                     	xdef	_WWDG_SWReset
 331                     	xdef	_WWDG_GetCounter
 332                     	xdef	_WWDG_SetCounter
 333                     	xdef	_WWDG_Init
 334                     	xref	_assert_failed
 335                     .const:	section	.text
 336  0000               L33:
 337  0000 2e2e5c6c6962  	dc.b	"..\libs\src\stm8s_"
 338  0012 777764672e63  	dc.b	"wwdg.c",0
 358                     	end
