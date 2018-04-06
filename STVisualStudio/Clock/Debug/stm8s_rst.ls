   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
 118                     ; 54 FlagStatus RST_GetFlagStatus(RST_Flag_TypeDef RST_Flag)
 118                     ; 55 {
 120                     	switch	.text
 121  0000               _RST_GetFlagStatus:
 123  0000 88            	push	a
 124       00000000      OFST:	set	0
 127                     ; 57   assert_param(IS_RST_FLAG_OK(RST_Flag));
 129  0001 a110          	cp	a,#16
 130  0003 2710          	jreq	L01
 131  0005 a108          	cp	a,#8
 132  0007 270c          	jreq	L01
 133  0009 a104          	cp	a,#4
 134  000b 2708          	jreq	L01
 135  000d a102          	cp	a,#2
 136  000f 2704          	jreq	L01
 137  0011 a101          	cp	a,#1
 138  0013 2603          	jrne	L6
 139  0015               L01:
 140  0015 4f            	clr	a
 141  0016 2010          	jra	L21
 142  0018               L6:
 143  0018 ae0039        	ldw	x,#57
 144  001b 89            	pushw	x
 145  001c ae0000        	ldw	x,#0
 146  001f 89            	pushw	x
 147  0020 ae0000        	ldw	x,#L55
 148  0023 cd0000        	call	_assert_failed
 150  0026 5b04          	addw	sp,#4
 151  0028               L21:
 152                     ; 60   return((FlagStatus)(((uint8_t)(RST->SR & RST_Flag) == (uint8_t)0x00) ? RESET : SET));
 154  0028 c650b3        	ld	a,20659
 155  002b 1501          	bcp	a,(OFST+1,sp)
 156  002d 2603          	jrne	L41
 157  002f 4f            	clr	a
 158  0030 2002          	jra	L61
 159  0032               L41:
 160  0032 a601          	ld	a,#1
 161  0034               L61:
 164  0034 5b01          	addw	sp,#1
 165  0036 81            	ret
 201                     ; 69 void RST_ClearFlag(RST_Flag_TypeDef RST_Flag)
 201                     ; 70 {
 202                     	switch	.text
 203  0037               _RST_ClearFlag:
 205  0037 88            	push	a
 206       00000000      OFST:	set	0
 209                     ; 72   assert_param(IS_RST_FLAG_OK(RST_Flag));
 211  0038 a110          	cp	a,#16
 212  003a 2710          	jreq	L42
 213  003c a108          	cp	a,#8
 214  003e 270c          	jreq	L42
 215  0040 a104          	cp	a,#4
 216  0042 2708          	jreq	L42
 217  0044 a102          	cp	a,#2
 218  0046 2704          	jreq	L42
 219  0048 a101          	cp	a,#1
 220  004a 2603          	jrne	L22
 221  004c               L42:
 222  004c 4f            	clr	a
 223  004d 2010          	jra	L62
 224  004f               L22:
 225  004f ae0048        	ldw	x,#72
 226  0052 89            	pushw	x
 227  0053 ae0000        	ldw	x,#0
 228  0056 89            	pushw	x
 229  0057 ae0000        	ldw	x,#L55
 230  005a cd0000        	call	_assert_failed
 232  005d 5b04          	addw	sp,#4
 233  005f               L62:
 234                     ; 74   RST->SR = (uint8_t)RST_Flag;
 236  005f 7b01          	ld	a,(OFST+1,sp)
 237  0061 c750b3        	ld	20659,a
 238                     ; 75 }
 241  0064 84            	pop	a
 242  0065 81            	ret
 255                     	xdef	_RST_ClearFlag
 256                     	xdef	_RST_GetFlagStatus
 257                     	xref	_assert_failed
 258                     .const:	section	.text
 259  0000               L55:
 260  0000 2e2e5c6c6962  	dc.b	"..\libs\src\stm8s_"
 261  0012 7273742e6300  	dc.b	"rst.c",0
 281                     	end
