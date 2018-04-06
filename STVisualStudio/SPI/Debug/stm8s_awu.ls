   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
  16                     .const:	section	.text
  17  0000               _APR_Array:
  18  0000 00            	dc.b	0
  19  0001 1e            	dc.b	30
  20  0002 1e            	dc.b	30
  21  0003 1e            	dc.b	30
  22  0004 1e            	dc.b	30
  23  0005 1e            	dc.b	30
  24  0006 1e            	dc.b	30
  25  0007 1e            	dc.b	30
  26  0008 1e            	dc.b	30
  27  0009 1e            	dc.b	30
  28  000a 1e            	dc.b	30
  29  000b 1e            	dc.b	30
  30  000c 1e            	dc.b	30
  31  000d 3d            	dc.b	61
  32  000e 17            	dc.b	23
  33  000f 17            	dc.b	23
  34  0010 3e            	dc.b	62
  35  0011               _TBR_Array:
  36  0011 00            	dc.b	0
  37  0012 01            	dc.b	1
  38  0013 02            	dc.b	2
  39  0014 03            	dc.b	3
  40  0015 04            	dc.b	4
  41  0016 05            	dc.b	5
  42  0017 06            	dc.b	6
  43  0018 07            	dc.b	7
  44  0019 08            	dc.b	8
  45  001a 09            	dc.b	9
  46  001b 0a            	dc.b	10
  47  001c 0b            	dc.b	11
  48  001d 0c            	dc.b	12
  49  001e 0c            	dc.b	12
  50  001f 0e            	dc.b	14
  51  0020 0f            	dc.b	15
  52  0021 0f            	dc.b	15
  81                     ; 73 void AWU_DeInit(void)
  81                     ; 74 {
  83                     .text:	section	.text,new
  84  0000               _AWU_DeInit:
  88                     ; 75   AWU->CSR = AWU_CSR_RESET_VALUE;
  90  0000 725f50f0      	clr	20720
  91                     ; 76   AWU->APR = AWU_APR_RESET_VALUE;
  93  0004 353f50f1      	mov	20721,#63
  94                     ; 77   AWU->TBR = AWU_TBR_RESET_VALUE;
  96  0008 725f50f2      	clr	20722
  97                     ; 78 }
 100  000c 81            	ret
 263                     ; 88 void AWU_Init(AWU_Timebase_TypeDef AWU_TimeBase)
 263                     ; 89 {
 264                     .text:	section	.text,new
 265  0000               _AWU_Init:
 267  0000 88            	push	a
 268       00000000      OFST:	set	0
 271                     ; 91   assert_param(IS_AWU_TIMEBASE_OK(AWU_TimeBase));
 273  0001 4d            	tnz	a
 274  0002 2740          	jreq	L21
 275  0004 a101          	cp	a,#1
 276  0006 273c          	jreq	L21
 277  0008 a102          	cp	a,#2
 278  000a 2738          	jreq	L21
 279  000c a103          	cp	a,#3
 280  000e 2734          	jreq	L21
 281  0010 a104          	cp	a,#4
 282  0012 2730          	jreq	L21
 283  0014 a105          	cp	a,#5
 284  0016 272c          	jreq	L21
 285  0018 a106          	cp	a,#6
 286  001a 2728          	jreq	L21
 287  001c a107          	cp	a,#7
 288  001e 2724          	jreq	L21
 289  0020 a108          	cp	a,#8
 290  0022 2720          	jreq	L21
 291  0024 a109          	cp	a,#9
 292  0026 271c          	jreq	L21
 293  0028 a10a          	cp	a,#10
 294  002a 2718          	jreq	L21
 295  002c a10b          	cp	a,#11
 296  002e 2714          	jreq	L21
 297  0030 a10c          	cp	a,#12
 298  0032 2710          	jreq	L21
 299  0034 a10d          	cp	a,#13
 300  0036 270c          	jreq	L21
 301  0038 a10e          	cp	a,#14
 302  003a 2708          	jreq	L21
 303  003c a10f          	cp	a,#15
 304  003e 2704          	jreq	L21
 305  0040 a110          	cp	a,#16
 306  0042 2603          	jrne	L01
 307  0044               L21:
 308  0044 4f            	clr	a
 309  0045 2010          	jra	L41
 310  0047               L01:
 311  0047 ae005b        	ldw	x,#91
 312  004a 89            	pushw	x
 313  004b ae0000        	ldw	x,#0
 314  004e 89            	pushw	x
 315  004f ae002e        	ldw	x,#L501
 316  0052 cd0000        	call	_assert_failed
 318  0055 5b04          	addw	sp,#4
 319  0057               L41:
 320                     ; 94   AWU->CSR |= AWU_CSR_AWUEN;
 322  0057 721850f0      	bset	20720,#4
 323                     ; 97   AWU->TBR &= (uint8_t)(~AWU_TBR_AWUTB);
 325  005b c650f2        	ld	a,20722
 326  005e a4f0          	and	a,#240
 327  0060 c750f2        	ld	20722,a
 328                     ; 98   AWU->TBR |= TBR_Array[(uint8_t)AWU_TimeBase];
 330  0063 7b01          	ld	a,(OFST+1,sp)
 331  0065 5f            	clrw	x
 332  0066 97            	ld	xl,a
 333  0067 c650f2        	ld	a,20722
 334  006a da0011        	or	a,(_TBR_Array,x)
 335  006d c750f2        	ld	20722,a
 336                     ; 101   AWU->APR &= (uint8_t)(~AWU_APR_APR);
 338  0070 c650f1        	ld	a,20721
 339  0073 a4c0          	and	a,#192
 340  0075 c750f1        	ld	20721,a
 341                     ; 102   AWU->APR |= APR_Array[(uint8_t)AWU_TimeBase];
 343  0078 7b01          	ld	a,(OFST+1,sp)
 344  007a 5f            	clrw	x
 345  007b 97            	ld	xl,a
 346  007c c650f1        	ld	a,20721
 347  007f da0000        	or	a,(_APR_Array,x)
 348  0082 c750f1        	ld	20721,a
 349                     ; 103 }
 352  0085 84            	pop	a
 353  0086 81            	ret
 408                     ; 112 void AWU_Cmd(FunctionalState NewState)
 408                     ; 113 {
 409                     .text:	section	.text,new
 410  0000               _AWU_Cmd:
 414                     ; 114   if (NewState != DISABLE)
 416  0000 4d            	tnz	a
 417  0001 2706          	jreq	L531
 418                     ; 117     AWU->CSR |= AWU_CSR_AWUEN;
 420  0003 721850f0      	bset	20720,#4
 422  0007 2004          	jra	L731
 423  0009               L531:
 424                     ; 122     AWU->CSR &= (uint8_t)(~AWU_CSR_AWUEN);
 426  0009 721950f0      	bres	20720,#4
 427  000d               L731:
 428                     ; 124 }
 431  000d 81            	ret
 485                     	switch	.const
 486  0022               L42:
 487  0022 0001adb0      	dc.l	110000
 488  0026               L62:
 489  0026 000249f1      	dc.l	150001
 490  002a               L23:
 491  002a 000003e8      	dc.l	1000
 492                     ; 139 void AWU_LSICalibrationConfig(uint32_t LSIFreqHz)
 492                     ; 140 {
 493                     .text:	section	.text,new
 494  0000               _AWU_LSICalibrationConfig:
 496  0000 5206          	subw	sp,#6
 497       00000006      OFST:	set	6
 500                     ; 141   uint16_t lsifreqkhz = 0x0;
 502                     ; 142   uint16_t A = 0x0;
 504                     ; 145   assert_param(IS_LSI_FREQUENCY_OK(LSIFreqHz));
 506  0002 96            	ldw	x,sp
 507  0003 1c0009        	addw	x,#OFST+3
 508  0006 cd0000        	call	c_ltor
 510  0009 ae0022        	ldw	x,#L42
 511  000c cd0000        	call	c_lcmp
 513  000f 2512          	jrult	L22
 514  0011 96            	ldw	x,sp
 515  0012 1c0009        	addw	x,#OFST+3
 516  0015 cd0000        	call	c_ltor
 518  0018 ae0026        	ldw	x,#L62
 519  001b cd0000        	call	c_lcmp
 521  001e 2403          	jruge	L22
 522  0020 4f            	clr	a
 523  0021 2010          	jra	L03
 524  0023               L22:
 525  0023 ae0091        	ldw	x,#145
 526  0026 89            	pushw	x
 527  0027 ae0000        	ldw	x,#0
 528  002a 89            	pushw	x
 529  002b ae002e        	ldw	x,#L501
 530  002e cd0000        	call	_assert_failed
 532  0031 5b04          	addw	sp,#4
 533  0033               L03:
 534                     ; 147   lsifreqkhz = (uint16_t)(LSIFreqHz / 1000); /* Converts value in kHz */
 536  0033 96            	ldw	x,sp
 537  0034 1c0009        	addw	x,#OFST+3
 538  0037 cd0000        	call	c_ltor
 540  003a ae002a        	ldw	x,#L23
 541  003d cd0000        	call	c_ludv
 543  0040 be02          	ldw	x,c_lreg+2
 544  0042 1f03          	ldw	(OFST-3,sp),x
 546                     ; 151   A = (uint16_t)(lsifreqkhz >> 2U); /* Division by 4, keep integer part only */
 548  0044 1e03          	ldw	x,(OFST-3,sp)
 549  0046 54            	srlw	x
 550  0047 54            	srlw	x
 551  0048 1f05          	ldw	(OFST-1,sp),x
 553                     ; 153   if ((4U * A) >= ((lsifreqkhz - (4U * A)) * (1U + (2U * A))))
 555  004a 1e05          	ldw	x,(OFST-1,sp)
 556  004c 58            	sllw	x
 557  004d 58            	sllw	x
 558  004e 1f01          	ldw	(OFST-5,sp),x
 560  0050 1e03          	ldw	x,(OFST-3,sp)
 561  0052 72f001        	subw	x,(OFST-5,sp)
 562  0055 1605          	ldw	y,(OFST-1,sp)
 563  0057 9058          	sllw	y
 564  0059 905c          	incw	y
 565  005b cd0000        	call	c_imul
 567  005e 1605          	ldw	y,(OFST-1,sp)
 568  0060 9058          	sllw	y
 569  0062 9058          	sllw	y
 570  0064 bf00          	ldw	c_x,x
 571  0066 90b300        	cpw	y,c_x
 572  0069 2509          	jrult	L761
 573                     ; 155     AWU->APR = (uint8_t)(A - 2U);
 575  006b 7b06          	ld	a,(OFST+0,sp)
 576  006d a002          	sub	a,#2
 577  006f c750f1        	ld	20721,a
 579  0072 2006          	jra	L171
 580  0074               L761:
 581                     ; 159     AWU->APR = (uint8_t)(A - 1U);
 583  0074 7b06          	ld	a,(OFST+0,sp)
 584  0076 4a            	dec	a
 585  0077 c750f1        	ld	20721,a
 586  007a               L171:
 587                     ; 161 }
 590  007a 5b06          	addw	sp,#6
 591  007c 81            	ret
 614                     ; 168 void AWU_IdleModeEnable(void)
 614                     ; 169 {
 615                     .text:	section	.text,new
 616  0000               _AWU_IdleModeEnable:
 620                     ; 171   AWU->CSR &= (uint8_t)(~AWU_CSR_AWUEN);
 622  0000 721950f0      	bres	20720,#4
 623                     ; 174   AWU->TBR = (uint8_t)(~AWU_TBR_AWUTB);
 625  0004 35f050f2      	mov	20722,#240
 626                     ; 175 }
 629  0008 81            	ret
 673                     ; 183 FlagStatus AWU_GetFlagStatus(void)
 673                     ; 184 {
 674                     .text:	section	.text,new
 675  0000               _AWU_GetFlagStatus:
 679                     ; 185   return((FlagStatus)(((uint8_t)(AWU->CSR & AWU_CSR_AWUF) == (uint8_t)0x00) ? RESET : SET));
 681  0000 c650f0        	ld	a,20720
 682  0003 a520          	bcp	a,#32
 683  0005 2603          	jrne	L04
 684  0007 4f            	clr	a
 685  0008 2002          	jra	L24
 686  000a               L04:
 687  000a a601          	ld	a,#1
 688  000c               L24:
 691  000c 81            	ret
 726                     	xdef	_TBR_Array
 727                     	xdef	_APR_Array
 728                     	xdef	_AWU_GetFlagStatus
 729                     	xdef	_AWU_IdleModeEnable
 730                     	xdef	_AWU_LSICalibrationConfig
 731                     	xdef	_AWU_Cmd
 732                     	xdef	_AWU_Init
 733                     	xdef	_AWU_DeInit
 734                     	xref	_assert_failed
 735                     	switch	.const
 736  002e               L501:
 737  002e 2e2e5c6c6962  	dc.b	"..\libs\src\stm8s_"
 738  0040 6177752e6300  	dc.b	"awu.c",0
 739                     	xref.b	c_lreg
 740                     	xref.b	c_x
 760                     	xref	c_imul
 761                     	xref	c_ludv
 762                     	xref	c_lcmp
 763                     	xref	c_ltor
 764                     	end
