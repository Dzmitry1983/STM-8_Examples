   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
 119                     ; 54 FlagStatus RST_GetFlagStatus(RST_Flag_TypeDef RST_Flag)
 119                     ; 55 {
 121                     .text:	section	.text,new
 122  0000               _RST_GetFlagStatus:
 124  0000 88            	push	a
 125       00000000      OFST:	set	0
 128                     ; 57   assert_param(IS_RST_FLAG_OK(RST_Flag));
 130  0001 a110          	cp	a,#16
 131  0003 2710          	jreq	L01
 132  0005 a108          	cp	a,#8
 133  0007 270c          	jreq	L01
 134  0009 a104          	cp	a,#4
 135  000b 2708          	jreq	L01
 136  000d a102          	cp	a,#2
 137  000f 2704          	jreq	L01
 138  0011 a101          	cp	a,#1
 139  0013 2603          	jrne	L6
 140  0015               L01:
 141  0015 4f            	clr	a
 142  0016 2010          	jra	L21
 143  0018               L6:
 144  0018 ae0039        	ldw	x,#57
 145  001b 89            	pushw	x
 146  001c ae0000        	ldw	x,#0
 147  001f 89            	pushw	x
 148  0020 ae0000        	ldw	x,#L55
 149  0023 cd0000        	call	_assert_failed
 151  0026 5b04          	addw	sp,#4
 152  0028               L21:
 153                     ; 60   return((FlagStatus)(((uint8_t)(RST->SR & RST_Flag) == (uint8_t)0x00) ? RESET : SET));
 155  0028 c650b3        	ld	a,20659
 156  002b 1501          	bcp	a,(OFST+1,sp)
 157  002d 2603          	jrne	L41
 158  002f 4f            	clr	a
 159  0030 2002          	jra	L61
 160  0032               L41:
 161  0032 a601          	ld	a,#1
 162  0034               L61:
 165  0034 5b01          	addw	sp,#1
 166  0036 81            	ret
 202                     ; 69 void RST_ClearFlag(RST_Flag_TypeDef RST_Flag)
 202                     ; 70 {
 203                     .text:	section	.text,new
 204  0000               _RST_ClearFlag:
 206  0000 88            	push	a
 207       00000000      OFST:	set	0
 210                     ; 72   assert_param(IS_RST_FLAG_OK(RST_Flag));
 212  0001 a110          	cp	a,#16
 213  0003 2710          	jreq	L42
 214  0005 a108          	cp	a,#8
 215  0007 270c          	jreq	L42
 216  0009 a104          	cp	a,#4
 217  000b 2708          	jreq	L42
 218  000d a102          	cp	a,#2
 219  000f 2704          	jreq	L42
 220  0011 a101          	cp	a,#1
 221  0013 2603          	jrne	L22
 222  0015               L42:
 223  0015 4f            	clr	a
 224  0016 2010          	jra	L62
 225  0018               L22:
 226  0018 ae0048        	ldw	x,#72
 227  001b 89            	pushw	x
 228  001c ae0000        	ldw	x,#0
 229  001f 89            	pushw	x
 230  0020 ae0000        	ldw	x,#L55
 231  0023 cd0000        	call	_assert_failed
 233  0026 5b04          	addw	sp,#4
 234  0028               L62:
 235                     ; 74   RST->SR = (uint8_t)RST_Flag;
 237  0028 7b01          	ld	a,(OFST+1,sp)
 238  002a c750b3        	ld	20659,a
 239                     ; 75 }
 242  002d 84            	pop	a
 243  002e 81            	ret
 256                     	xdef	_RST_ClearFlag
 257                     	xdef	_RST_GetFlagStatus
 258                     	xref	_assert_failed
 259                     .const:	section	.text
 260  0000               L55:
 261  0000 2e2e5c6c6962  	dc.b	"..\libs\src\stm8s_"
 262  0012 7273742e6300  	dc.b	"rst.c",0
 282                     	end
