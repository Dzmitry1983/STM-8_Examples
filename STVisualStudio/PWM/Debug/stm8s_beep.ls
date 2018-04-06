   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
  44                     ; 54 void BEEP_DeInit(void)
  44                     ; 55 {
  46                     .text:	section	.text,new
  47  0000               _BEEP_DeInit:
  51                     ; 56   BEEP->CSR = BEEP_CSR_RESET_VALUE;
  53  0000 351f50f3      	mov	20723,#31
  54                     ; 57 }
  57  0004 81            	ret
 123                     ; 67 void BEEP_Init(BEEP_Frequency_TypeDef BEEP_Frequency)
 123                     ; 68 {
 124                     .text:	section	.text,new
 125  0000               _BEEP_Init:
 127  0000 88            	push	a
 128       00000000      OFST:	set	0
 131                     ; 70   assert_param(IS_BEEP_FREQUENCY_OK(BEEP_Frequency));
 133  0001 4d            	tnz	a
 134  0002 2708          	jreq	L21
 135  0004 a140          	cp	a,#64
 136  0006 2704          	jreq	L21
 137  0008 a180          	cp	a,#128
 138  000a 2603          	jrne	L01
 139  000c               L21:
 140  000c 4f            	clr	a
 141  000d 2010          	jra	L41
 142  000f               L01:
 143  000f ae0046        	ldw	x,#70
 144  0012 89            	pushw	x
 145  0013 ae0000        	ldw	x,#0
 146  0016 89            	pushw	x
 147  0017 ae000c        	ldw	x,#L15
 148  001a cd0000        	call	_assert_failed
 150  001d 5b04          	addw	sp,#4
 151  001f               L41:
 152                     ; 73   if ((BEEP->CSR & BEEP_CSR_BEEPDIV) == BEEP_CSR_BEEPDIV)
 154  001f c650f3        	ld	a,20723
 155  0022 a41f          	and	a,#31
 156  0024 a11f          	cp	a,#31
 157  0026 2610          	jrne	L35
 158                     ; 75     BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPDIV); /* Clear bits */
 160  0028 c650f3        	ld	a,20723
 161  002b a4e0          	and	a,#224
 162  002d c750f3        	ld	20723,a
 163                     ; 76     BEEP->CSR |= BEEP_CALIBRATION_DEFAULT;
 165  0030 c650f3        	ld	a,20723
 166  0033 aa0b          	or	a,#11
 167  0035 c750f3        	ld	20723,a
 168  0038               L35:
 169                     ; 80   BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPSEL);
 171  0038 c650f3        	ld	a,20723
 172  003b a43f          	and	a,#63
 173  003d c750f3        	ld	20723,a
 174                     ; 81   BEEP->CSR |= (uint8_t)(BEEP_Frequency);
 176  0040 c650f3        	ld	a,20723
 177  0043 1a01          	or	a,(OFST+1,sp)
 178  0045 c750f3        	ld	20723,a
 179                     ; 82 }
 182  0048 84            	pop	a
 183  0049 81            	ret
 238                     ; 91 void BEEP_Cmd(FunctionalState NewState)
 238                     ; 92 {
 239                     .text:	section	.text,new
 240  0000               _BEEP_Cmd:
 244                     ; 93   if (NewState != DISABLE)
 246  0000 4d            	tnz	a
 247  0001 2706          	jreq	L301
 248                     ; 96     BEEP->CSR |= BEEP_CSR_BEEPEN;
 250  0003 721a50f3      	bset	20723,#5
 252  0007 2004          	jra	L501
 253  0009               L301:
 254                     ; 101     BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPEN);
 256  0009 721b50f3      	bres	20723,#5
 257  000d               L501:
 258                     ; 103 }
 261  000d 81            	ret
 315                     .const:	section	.text
 316  0000               L42:
 317  0000 0001adb0      	dc.l	110000
 318  0004               L62:
 319  0004 000249f1      	dc.l	150001
 320  0008               L23:
 321  0008 000003e8      	dc.l	1000
 322                     ; 118 void BEEP_LSICalibrationConfig(uint32_t LSIFreqHz)
 322                     ; 119 {
 323                     .text:	section	.text,new
 324  0000               _BEEP_LSICalibrationConfig:
 326  0000 5206          	subw	sp,#6
 327       00000006      OFST:	set	6
 330                     ; 124   assert_param(IS_LSI_FREQUENCY_OK(LSIFreqHz));
 332  0002 96            	ldw	x,sp
 333  0003 1c0009        	addw	x,#OFST+3
 334  0006 cd0000        	call	c_ltor
 336  0009 ae0000        	ldw	x,#L42
 337  000c cd0000        	call	c_lcmp
 339  000f 2512          	jrult	L22
 340  0011 96            	ldw	x,sp
 341  0012 1c0009        	addw	x,#OFST+3
 342  0015 cd0000        	call	c_ltor
 344  0018 ae0004        	ldw	x,#L62
 345  001b cd0000        	call	c_lcmp
 347  001e 2403          	jruge	L22
 348  0020 4f            	clr	a
 349  0021 2010          	jra	L03
 350  0023               L22:
 351  0023 ae007c        	ldw	x,#124
 352  0026 89            	pushw	x
 353  0027 ae0000        	ldw	x,#0
 354  002a 89            	pushw	x
 355  002b ae000c        	ldw	x,#L15
 356  002e cd0000        	call	_assert_failed
 358  0031 5b04          	addw	sp,#4
 359  0033               L03:
 360                     ; 126   lsifreqkhz = (uint16_t)(LSIFreqHz / 1000); /* Converts value in kHz */
 362  0033 96            	ldw	x,sp
 363  0034 1c0009        	addw	x,#OFST+3
 364  0037 cd0000        	call	c_ltor
 366  003a ae0008        	ldw	x,#L23
 367  003d cd0000        	call	c_ludv
 369  0040 be02          	ldw	x,c_lreg+2
 370  0042 1f03          	ldw	(OFST-3,sp),x
 372                     ; 130   BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPDIV); /* Clear bits */
 374  0044 c650f3        	ld	a,20723
 375  0047 a4e0          	and	a,#224
 376  0049 c750f3        	ld	20723,a
 377                     ; 132   A = (uint16_t)(lsifreqkhz >> 3U); /* Division by 8, keep integer part only */
 379  004c 1e03          	ldw	x,(OFST-3,sp)
 380  004e 54            	srlw	x
 381  004f 54            	srlw	x
 382  0050 54            	srlw	x
 383  0051 1f05          	ldw	(OFST-1,sp),x
 385                     ; 134   if ((8U * A) >= ((lsifreqkhz - (8U * A)) * (1U + (2U * A))))
 387  0053 1e05          	ldw	x,(OFST-1,sp)
 388  0055 58            	sllw	x
 389  0056 58            	sllw	x
 390  0057 58            	sllw	x
 391  0058 1f01          	ldw	(OFST-5,sp),x
 393  005a 1e03          	ldw	x,(OFST-3,sp)
 394  005c 72f001        	subw	x,(OFST-5,sp)
 395  005f 1605          	ldw	y,(OFST-1,sp)
 396  0061 9058          	sllw	y
 397  0063 905c          	incw	y
 398  0065 cd0000        	call	c_imul
 400  0068 1605          	ldw	y,(OFST-1,sp)
 401  006a 9058          	sllw	y
 402  006c 9058          	sllw	y
 403  006e 9058          	sllw	y
 404  0070 bf00          	ldw	c_x,x
 405  0072 90b300        	cpw	y,c_x
 406  0075 250c          	jrult	L531
 407                     ; 136     BEEP->CSR |= (uint8_t)(A - 2U);
 409  0077 7b06          	ld	a,(OFST+0,sp)
 410  0079 a002          	sub	a,#2
 411  007b ca50f3        	or	a,20723
 412  007e c750f3        	ld	20723,a
 414  0081 2009          	jra	L731
 415  0083               L531:
 416                     ; 140     BEEP->CSR |= (uint8_t)(A - 1U);
 418  0083 7b06          	ld	a,(OFST+0,sp)
 419  0085 4a            	dec	a
 420  0086 ca50f3        	or	a,20723
 421  0089 c750f3        	ld	20723,a
 422  008c               L731:
 423                     ; 142 }
 426  008c 5b06          	addw	sp,#6
 427  008e 81            	ret
 440                     	xdef	_BEEP_LSICalibrationConfig
 441                     	xdef	_BEEP_Cmd
 442                     	xdef	_BEEP_Init
 443                     	xdef	_BEEP_DeInit
 444                     	xref	_assert_failed
 445                     	switch	.const
 446  000c               L15:
 447  000c 2e2e5c6c6962  	dc.b	"..\libs\src\stm8s_"
 448  001e 626565702e63  	dc.b	"beep.c",0
 449                     	xref.b	c_lreg
 450                     	xref.b	c_x
 470                     	xref	c_imul
 471                     	xref	c_ludv
 472                     	xref	c_lcmp
 473                     	xref	c_ltor
 474                     	end
