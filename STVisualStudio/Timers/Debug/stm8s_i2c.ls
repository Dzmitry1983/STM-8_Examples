   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
  44                     ; 67 void I2C_DeInit(void)
  44                     ; 68 {
  46                     .text:	section	.text,new
  47  0000               _I2C_DeInit:
  51                     ; 69   I2C->CR1 = I2C_CR1_RESET_VALUE;
  53  0000 725f5210      	clr	21008
  54                     ; 70   I2C->CR2 = I2C_CR2_RESET_VALUE;
  56  0004 725f5211      	clr	21009
  57                     ; 71   I2C->FREQR = I2C_FREQR_RESET_VALUE;
  59  0008 725f5212      	clr	21010
  60                     ; 72   I2C->OARL = I2C_OARL_RESET_VALUE;
  62  000c 725f5213      	clr	21011
  63                     ; 73   I2C->OARH = I2C_OARH_RESET_VALUE;
  65  0010 725f5214      	clr	21012
  66                     ; 74   I2C->ITR = I2C_ITR_RESET_VALUE;
  68  0014 725f521a      	clr	21018
  69                     ; 75   I2C->CCRL = I2C_CCRL_RESET_VALUE;
  71  0018 725f521b      	clr	21019
  72                     ; 76   I2C->CCRH = I2C_CCRH_RESET_VALUE;
  74  001c 725f521c      	clr	21020
  75                     ; 77   I2C->TRISER = I2C_TRISER_RESET_VALUE;
  77  0020 3502521d      	mov	21021,#2
  78                     ; 78 }
  81  0024 81            	ret
 261                     .const:	section	.text
 262  0000               L44:
 263  0000 00061a81      	dc.l	400001
 264  0004               L05:
 265  0004 000186a1      	dc.l	100001
 266  0008               L25:
 267  0008 000f4240      	dc.l	1000000
 268                     ; 96 void I2C_Init(uint32_t OutputClockFrequencyHz, uint16_t OwnAddress, 
 268                     ; 97               I2C_DutyCycle_TypeDef I2C_DutyCycle, I2C_Ack_TypeDef Ack, 
 268                     ; 98               I2C_AddMode_TypeDef AddMode, uint8_t InputClockFrequencyMHz )
 268                     ; 99 {
 269                     .text:	section	.text,new
 270  0000               _I2C_Init:
 272  0000 5209          	subw	sp,#9
 273       00000009      OFST:	set	9
 276                     ; 100   uint16_t result = 0x0004;
 278                     ; 101   uint16_t tmpval = 0;
 280                     ; 102   uint8_t tmpccrh = 0;
 282  0002 0f07          	clr	(OFST-2,sp)
 284                     ; 105   assert_param(IS_I2C_ACK_OK(Ack));
 286  0004 0d13          	tnz	(OFST+10,sp)
 287  0006 270c          	jreq	L21
 288  0008 7b13          	ld	a,(OFST+10,sp)
 289  000a a101          	cp	a,#1
 290  000c 2706          	jreq	L21
 291  000e 7b13          	ld	a,(OFST+10,sp)
 292  0010 a102          	cp	a,#2
 293  0012 2603          	jrne	L01
 294  0014               L21:
 295  0014 4f            	clr	a
 296  0015 2010          	jra	L41
 297  0017               L01:
 298  0017 ae0069        	ldw	x,#105
 299  001a 89            	pushw	x
 300  001b ae0000        	ldw	x,#0
 301  001e 89            	pushw	x
 302  001f ae000c        	ldw	x,#L131
 303  0022 cd0000        	call	_assert_failed
 305  0025 5b04          	addw	sp,#4
 306  0027               L41:
 307                     ; 106   assert_param(IS_I2C_ADDMODE_OK(AddMode));
 309  0027 0d14          	tnz	(OFST+11,sp)
 310  0029 2706          	jreq	L02
 311  002b 7b14          	ld	a,(OFST+11,sp)
 312  002d a180          	cp	a,#128
 313  002f 2603          	jrne	L61
 314  0031               L02:
 315  0031 4f            	clr	a
 316  0032 2010          	jra	L22
 317  0034               L61:
 318  0034 ae006a        	ldw	x,#106
 319  0037 89            	pushw	x
 320  0038 ae0000        	ldw	x,#0
 321  003b 89            	pushw	x
 322  003c ae000c        	ldw	x,#L131
 323  003f cd0000        	call	_assert_failed
 325  0042 5b04          	addw	sp,#4
 326  0044               L22:
 327                     ; 107   assert_param(IS_I2C_OWN_ADDRESS_OK(OwnAddress));
 329  0044 1e10          	ldw	x,(OFST+7,sp)
 330  0046 a30400        	cpw	x,#1024
 331  0049 2403          	jruge	L42
 332  004b 4f            	clr	a
 333  004c 2010          	jra	L62
 334  004e               L42:
 335  004e ae006b        	ldw	x,#107
 336  0051 89            	pushw	x
 337  0052 ae0000        	ldw	x,#0
 338  0055 89            	pushw	x
 339  0056 ae000c        	ldw	x,#L131
 340  0059 cd0000        	call	_assert_failed
 342  005c 5b04          	addw	sp,#4
 343  005e               L62:
 344                     ; 108   assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));  
 346  005e 0d12          	tnz	(OFST+9,sp)
 347  0060 2706          	jreq	L23
 348  0062 7b12          	ld	a,(OFST+9,sp)
 349  0064 a140          	cp	a,#64
 350  0066 2603          	jrne	L03
 351  0068               L23:
 352  0068 4f            	clr	a
 353  0069 2010          	jra	L43
 354  006b               L03:
 355  006b ae006c        	ldw	x,#108
 356  006e 89            	pushw	x
 357  006f ae0000        	ldw	x,#0
 358  0072 89            	pushw	x
 359  0073 ae000c        	ldw	x,#L131
 360  0076 cd0000        	call	_assert_failed
 362  0079 5b04          	addw	sp,#4
 363  007b               L43:
 364                     ; 109   assert_param(IS_I2C_INPUT_CLOCK_FREQ_OK(InputClockFrequencyMHz));
 366  007b 0d15          	tnz	(OFST+12,sp)
 367  007d 2709          	jreq	L63
 368  007f 7b15          	ld	a,(OFST+12,sp)
 369  0081 a111          	cp	a,#17
 370  0083 2403          	jruge	L63
 371  0085 4f            	clr	a
 372  0086 2010          	jra	L04
 373  0088               L63:
 374  0088 ae006d        	ldw	x,#109
 375  008b 89            	pushw	x
 376  008c ae0000        	ldw	x,#0
 377  008f 89            	pushw	x
 378  0090 ae000c        	ldw	x,#L131
 379  0093 cd0000        	call	_assert_failed
 381  0096 5b04          	addw	sp,#4
 382  0098               L04:
 383                     ; 110   assert_param(IS_I2C_OUTPUT_CLOCK_FREQ_OK(OutputClockFrequencyHz));
 385  0098 96            	ldw	x,sp
 386  0099 1c000c        	addw	x,#OFST+3
 387  009c cd0000        	call	c_lzmp
 389  009f 2712          	jreq	L24
 390  00a1 96            	ldw	x,sp
 391  00a2 1c000c        	addw	x,#OFST+3
 392  00a5 cd0000        	call	c_ltor
 394  00a8 ae0000        	ldw	x,#L44
 395  00ab cd0000        	call	c_lcmp
 397  00ae 2403          	jruge	L24
 398  00b0 4f            	clr	a
 399  00b1 2010          	jra	L64
 400  00b3               L24:
 401  00b3 ae006e        	ldw	x,#110
 402  00b6 89            	pushw	x
 403  00b7 ae0000        	ldw	x,#0
 404  00ba 89            	pushw	x
 405  00bb ae000c        	ldw	x,#L131
 406  00be cd0000        	call	_assert_failed
 408  00c1 5b04          	addw	sp,#4
 409  00c3               L64:
 410                     ; 115   I2C->FREQR &= (uint8_t)(~I2C_FREQR_FREQ);
 412  00c3 c65212        	ld	a,21010
 413  00c6 a4c0          	and	a,#192
 414  00c8 c75212        	ld	21010,a
 415                     ; 117   I2C->FREQR |= InputClockFrequencyMHz;
 417  00cb c65212        	ld	a,21010
 418  00ce 1a15          	or	a,(OFST+12,sp)
 419  00d0 c75212        	ld	21010,a
 420                     ; 121   I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
 422  00d3 72115210      	bres	21008,#0
 423                     ; 124   I2C->CCRH &= (uint8_t)(~(I2C_CCRH_FS | I2C_CCRH_DUTY | I2C_CCRH_CCR));
 425  00d7 c6521c        	ld	a,21020
 426  00da a430          	and	a,#48
 427  00dc c7521c        	ld	21020,a
 428                     ; 125   I2C->CCRL &= (uint8_t)(~I2C_CCRL_CCR);
 430  00df 725f521b      	clr	21019
 431                     ; 128   if (OutputClockFrequencyHz > I2C_MAX_STANDARD_FREQ) /* FAST MODE */
 433  00e3 96            	ldw	x,sp
 434  00e4 1c000c        	addw	x,#OFST+3
 435  00e7 cd0000        	call	c_ltor
 437  00ea ae0004        	ldw	x,#L05
 438  00ed cd0000        	call	c_lcmp
 440  00f0 2403          	jruge	L45
 441  00f2 cc017f        	jp	L331
 442  00f5               L45:
 443                     ; 131     tmpccrh = I2C_CCRH_FS;
 445  00f5 a680          	ld	a,#128
 446  00f7 6b07          	ld	(OFST-2,sp),a
 448                     ; 133     if (I2C_DutyCycle == I2C_DUTYCYCLE_2)
 450  00f9 0d12          	tnz	(OFST+9,sp)
 451  00fb 2630          	jrne	L531
 452                     ; 136       result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 3));
 454  00fd 96            	ldw	x,sp
 455  00fe 1c000c        	addw	x,#OFST+3
 456  0101 cd0000        	call	c_ltor
 458  0104 a603          	ld	a,#3
 459  0106 cd0000        	call	c_smul
 461  0109 96            	ldw	x,sp
 462  010a 1c0001        	addw	x,#OFST-8
 463  010d cd0000        	call	c_rtol
 466  0110 7b15          	ld	a,(OFST+12,sp)
 467  0112 b703          	ld	c_lreg+3,a
 468  0114 3f02          	clr	c_lreg+2
 469  0116 3f01          	clr	c_lreg+1
 470  0118 3f00          	clr	c_lreg
 471  011a ae0008        	ldw	x,#L25
 472  011d cd0000        	call	c_lmul
 474  0120 96            	ldw	x,sp
 475  0121 1c0001        	addw	x,#OFST-8
 476  0124 cd0000        	call	c_ludv
 478  0127 be02          	ldw	x,c_lreg+2
 479  0129 1f08          	ldw	(OFST-1,sp),x
 482  012b 2034          	jra	L731
 483  012d               L531:
 484                     ; 141       result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 25));
 486  012d 96            	ldw	x,sp
 487  012e 1c000c        	addw	x,#OFST+3
 488  0131 cd0000        	call	c_ltor
 490  0134 a619          	ld	a,#25
 491  0136 cd0000        	call	c_smul
 493  0139 96            	ldw	x,sp
 494  013a 1c0001        	addw	x,#OFST-8
 495  013d cd0000        	call	c_rtol
 498  0140 7b15          	ld	a,(OFST+12,sp)
 499  0142 b703          	ld	c_lreg+3,a
 500  0144 3f02          	clr	c_lreg+2
 501  0146 3f01          	clr	c_lreg+1
 502  0148 3f00          	clr	c_lreg
 503  014a ae0008        	ldw	x,#L25
 504  014d cd0000        	call	c_lmul
 506  0150 96            	ldw	x,sp
 507  0151 1c0001        	addw	x,#OFST-8
 508  0154 cd0000        	call	c_ludv
 510  0157 be02          	ldw	x,c_lreg+2
 511  0159 1f08          	ldw	(OFST-1,sp),x
 513                     ; 143       tmpccrh |= I2C_CCRH_DUTY;
 515  015b 7b07          	ld	a,(OFST-2,sp)
 516  015d aa40          	or	a,#64
 517  015f 6b07          	ld	(OFST-2,sp),a
 519  0161               L731:
 520                     ; 147     if (result < (uint16_t)0x01)
 522  0161 1e08          	ldw	x,(OFST-1,sp)
 523  0163 2605          	jrne	L141
 524                     ; 150       result = (uint16_t)0x0001;
 526  0165 ae0001        	ldw	x,#1
 527  0168 1f08          	ldw	(OFST-1,sp),x
 529  016a               L141:
 530                     ; 156     tmpval = ((InputClockFrequencyMHz * 3) / 10) + 1;
 532  016a 7b15          	ld	a,(OFST+12,sp)
 533  016c 97            	ld	xl,a
 534  016d a603          	ld	a,#3
 535  016f 42            	mul	x,a
 536  0170 a60a          	ld	a,#10
 537  0172 cd0000        	call	c_sdivx
 539  0175 5c            	incw	x
 540  0176 1f05          	ldw	(OFST-4,sp),x
 542                     ; 157     I2C->TRISER = (uint8_t)tmpval;
 544  0178 7b06          	ld	a,(OFST-3,sp)
 545  017a c7521d        	ld	21021,a
 547  017d 2043          	jra	L341
 548  017f               L331:
 549                     ; 164     result = (uint16_t)((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz << (uint8_t)1));
 551  017f 96            	ldw	x,sp
 552  0180 1c000c        	addw	x,#OFST+3
 553  0183 cd0000        	call	c_ltor
 555  0186 3803          	sll	c_lreg+3
 556  0188 3902          	rlc	c_lreg+2
 557  018a 3901          	rlc	c_lreg+1
 558  018c 3900          	rlc	c_lreg
 559  018e 96            	ldw	x,sp
 560  018f 1c0001        	addw	x,#OFST-8
 561  0192 cd0000        	call	c_rtol
 564  0195 7b15          	ld	a,(OFST+12,sp)
 565  0197 b703          	ld	c_lreg+3,a
 566  0199 3f02          	clr	c_lreg+2
 567  019b 3f01          	clr	c_lreg+1
 568  019d 3f00          	clr	c_lreg
 569  019f ae0008        	ldw	x,#L25
 570  01a2 cd0000        	call	c_lmul
 572  01a5 96            	ldw	x,sp
 573  01a6 1c0001        	addw	x,#OFST-8
 574  01a9 cd0000        	call	c_ludv
 576  01ac be02          	ldw	x,c_lreg+2
 577  01ae 1f08          	ldw	(OFST-1,sp),x
 579                     ; 167     if (result < (uint16_t)0x0004)
 581  01b0 1e08          	ldw	x,(OFST-1,sp)
 582  01b2 a30004        	cpw	x,#4
 583  01b5 2405          	jruge	L541
 584                     ; 170       result = (uint16_t)0x0004;
 586  01b7 ae0004        	ldw	x,#4
 587  01ba 1f08          	ldw	(OFST-1,sp),x
 589  01bc               L541:
 590                     ; 176     I2C->TRISER = (uint8_t)(InputClockFrequencyMHz + (uint8_t)1);
 592  01bc 7b15          	ld	a,(OFST+12,sp)
 593  01be 4c            	inc	a
 594  01bf c7521d        	ld	21021,a
 595  01c2               L341:
 596                     ; 181   I2C->CCRL = (uint8_t)result;
 598  01c2 7b09          	ld	a,(OFST+0,sp)
 599  01c4 c7521b        	ld	21019,a
 600                     ; 182   I2C->CCRH = (uint8_t)((uint8_t)((uint8_t)(result >> 8) & I2C_CCRH_CCR) | tmpccrh);
 602  01c7 7b08          	ld	a,(OFST-1,sp)
 603  01c9 a40f          	and	a,#15
 604  01cb 1a07          	or	a,(OFST-2,sp)
 605  01cd c7521c        	ld	21020,a
 606                     ; 185   I2C->CR1 |= I2C_CR1_PE;
 608  01d0 72105210      	bset	21008,#0
 609                     ; 188   I2C_AcknowledgeConfig(Ack);
 611  01d4 7b13          	ld	a,(OFST+10,sp)
 612  01d6 cd0000        	call	_I2C_AcknowledgeConfig
 614                     ; 191   I2C->OARL = (uint8_t)(OwnAddress);
 616  01d9 7b11          	ld	a,(OFST+8,sp)
 617  01db c75213        	ld	21011,a
 618                     ; 192   I2C->OARH = (uint8_t)((uint8_t)(AddMode | I2C_OARH_ADDCONF) |
 618                     ; 193                    (uint8_t)((OwnAddress & (uint16_t)0x0300) >> (uint8_t)7));
 620  01de 1e10          	ldw	x,(OFST+7,sp)
 621  01e0 4f            	clr	a
 622  01e1 01            	rrwa	x,a
 623  01e2 48            	sll	a
 624  01e3 59            	rlcw	x
 625  01e4 01            	rrwa	x,a
 626  01e5 a406          	and	a,#6
 627  01e7 5f            	clrw	x
 628  01e8 6b04          	ld	(OFST-5,sp),a
 630  01ea 7b14          	ld	a,(OFST+11,sp)
 631  01ec aa40          	or	a,#64
 632  01ee 1a04          	or	a,(OFST-5,sp)
 633  01f0 c75214        	ld	21012,a
 634                     ; 194 }
 637  01f3 5b09          	addw	sp,#9
 638  01f5 81            	ret
 694                     ; 202 void I2C_Cmd(FunctionalState NewState)
 694                     ; 203 {
 695                     .text:	section	.text,new
 696  0000               _I2C_Cmd:
 698  0000 88            	push	a
 699       00000000      OFST:	set	0
 702                     ; 205   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 704  0001 4d            	tnz	a
 705  0002 2704          	jreq	L26
 706  0004 a101          	cp	a,#1
 707  0006 2603          	jrne	L06
 708  0008               L26:
 709  0008 4f            	clr	a
 710  0009 2010          	jra	L46
 711  000b               L06:
 712  000b ae00cd        	ldw	x,#205
 713  000e 89            	pushw	x
 714  000f ae0000        	ldw	x,#0
 715  0012 89            	pushw	x
 716  0013 ae000c        	ldw	x,#L131
 717  0016 cd0000        	call	_assert_failed
 719  0019 5b04          	addw	sp,#4
 720  001b               L46:
 721                     ; 207   if (NewState != DISABLE)
 723  001b 0d01          	tnz	(OFST+1,sp)
 724  001d 2706          	jreq	L571
 725                     ; 210     I2C->CR1 |= I2C_CR1_PE;
 727  001f 72105210      	bset	21008,#0
 729  0023 2004          	jra	L771
 730  0025               L571:
 731                     ; 215     I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
 733  0025 72115210      	bres	21008,#0
 734  0029               L771:
 735                     ; 217 }
 738  0029 84            	pop	a
 739  002a 81            	ret
 775                     ; 225 void I2C_GeneralCallCmd(FunctionalState NewState)
 775                     ; 226 {
 776                     .text:	section	.text,new
 777  0000               _I2C_GeneralCallCmd:
 779  0000 88            	push	a
 780       00000000      OFST:	set	0
 783                     ; 228   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 785  0001 4d            	tnz	a
 786  0002 2704          	jreq	L27
 787  0004 a101          	cp	a,#1
 788  0006 2603          	jrne	L07
 789  0008               L27:
 790  0008 4f            	clr	a
 791  0009 2010          	jra	L47
 792  000b               L07:
 793  000b ae00e4        	ldw	x,#228
 794  000e 89            	pushw	x
 795  000f ae0000        	ldw	x,#0
 796  0012 89            	pushw	x
 797  0013 ae000c        	ldw	x,#L131
 798  0016 cd0000        	call	_assert_failed
 800  0019 5b04          	addw	sp,#4
 801  001b               L47:
 802                     ; 230   if (NewState != DISABLE)
 804  001b 0d01          	tnz	(OFST+1,sp)
 805  001d 2706          	jreq	L712
 806                     ; 233     I2C->CR1 |= I2C_CR1_ENGC;
 808  001f 721c5210      	bset	21008,#6
 810  0023 2004          	jra	L122
 811  0025               L712:
 812                     ; 238     I2C->CR1 &= (uint8_t)(~I2C_CR1_ENGC);
 814  0025 721d5210      	bres	21008,#6
 815  0029               L122:
 816                     ; 240 }
 819  0029 84            	pop	a
 820  002a 81            	ret
 856                     ; 250 void I2C_GenerateSTART(FunctionalState NewState)
 856                     ; 251 {
 857                     .text:	section	.text,new
 858  0000               _I2C_GenerateSTART:
 860  0000 88            	push	a
 861       00000000      OFST:	set	0
 864                     ; 253   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 866  0001 4d            	tnz	a
 867  0002 2704          	jreq	L201
 868  0004 a101          	cp	a,#1
 869  0006 2603          	jrne	L001
 870  0008               L201:
 871  0008 4f            	clr	a
 872  0009 2010          	jra	L401
 873  000b               L001:
 874  000b ae00fd        	ldw	x,#253
 875  000e 89            	pushw	x
 876  000f ae0000        	ldw	x,#0
 877  0012 89            	pushw	x
 878  0013 ae000c        	ldw	x,#L131
 879  0016 cd0000        	call	_assert_failed
 881  0019 5b04          	addw	sp,#4
 882  001b               L401:
 883                     ; 255   if (NewState != DISABLE)
 885  001b 0d01          	tnz	(OFST+1,sp)
 886  001d 2706          	jreq	L142
 887                     ; 258     I2C->CR2 |= I2C_CR2_START;
 889  001f 72105211      	bset	21009,#0
 891  0023 2004          	jra	L342
 892  0025               L142:
 893                     ; 263     I2C->CR2 &= (uint8_t)(~I2C_CR2_START);
 895  0025 72115211      	bres	21009,#0
 896  0029               L342:
 897                     ; 265 }
 900  0029 84            	pop	a
 901  002a 81            	ret
 937                     ; 273 void I2C_GenerateSTOP(FunctionalState NewState)
 937                     ; 274 {
 938                     .text:	section	.text,new
 939  0000               _I2C_GenerateSTOP:
 941  0000 88            	push	a
 942       00000000      OFST:	set	0
 945                     ; 276   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 947  0001 4d            	tnz	a
 948  0002 2704          	jreq	L211
 949  0004 a101          	cp	a,#1
 950  0006 2603          	jrne	L011
 951  0008               L211:
 952  0008 4f            	clr	a
 953  0009 2010          	jra	L411
 954  000b               L011:
 955  000b ae0114        	ldw	x,#276
 956  000e 89            	pushw	x
 957  000f ae0000        	ldw	x,#0
 958  0012 89            	pushw	x
 959  0013 ae000c        	ldw	x,#L131
 960  0016 cd0000        	call	_assert_failed
 962  0019 5b04          	addw	sp,#4
 963  001b               L411:
 964                     ; 278   if (NewState != DISABLE)
 966  001b 0d01          	tnz	(OFST+1,sp)
 967  001d 2706          	jreq	L362
 968                     ; 281     I2C->CR2 |= I2C_CR2_STOP;
 970  001f 72125211      	bset	21009,#1
 972  0023 2004          	jra	L562
 973  0025               L362:
 974                     ; 286     I2C->CR2 &= (uint8_t)(~I2C_CR2_STOP);
 976  0025 72135211      	bres	21009,#1
 977  0029               L562:
 978                     ; 288 }
 981  0029 84            	pop	a
 982  002a 81            	ret
1019                     ; 296 void I2C_SoftwareResetCmd(FunctionalState NewState)
1019                     ; 297 {
1020                     .text:	section	.text,new
1021  0000               _I2C_SoftwareResetCmd:
1023  0000 88            	push	a
1024       00000000      OFST:	set	0
1027                     ; 299   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1029  0001 4d            	tnz	a
1030  0002 2704          	jreq	L221
1031  0004 a101          	cp	a,#1
1032  0006 2603          	jrne	L021
1033  0008               L221:
1034  0008 4f            	clr	a
1035  0009 2010          	jra	L421
1036  000b               L021:
1037  000b ae012b        	ldw	x,#299
1038  000e 89            	pushw	x
1039  000f ae0000        	ldw	x,#0
1040  0012 89            	pushw	x
1041  0013 ae000c        	ldw	x,#L131
1042  0016 cd0000        	call	_assert_failed
1044  0019 5b04          	addw	sp,#4
1045  001b               L421:
1046                     ; 301   if (NewState != DISABLE)
1048  001b 0d01          	tnz	(OFST+1,sp)
1049  001d 2706          	jreq	L503
1050                     ; 304     I2C->CR2 |= I2C_CR2_SWRST;
1052  001f 721e5211      	bset	21009,#7
1054  0023 2004          	jra	L703
1055  0025               L503:
1056                     ; 309     I2C->CR2 &= (uint8_t)(~I2C_CR2_SWRST);
1058  0025 721f5211      	bres	21009,#7
1059  0029               L703:
1060                     ; 311 }
1063  0029 84            	pop	a
1064  002a 81            	ret
1101                     ; 320 void I2C_StretchClockCmd(FunctionalState NewState)
1101                     ; 321 {
1102                     .text:	section	.text,new
1103  0000               _I2C_StretchClockCmd:
1105  0000 88            	push	a
1106       00000000      OFST:	set	0
1109                     ; 323   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1111  0001 4d            	tnz	a
1112  0002 2704          	jreq	L231
1113  0004 a101          	cp	a,#1
1114  0006 2603          	jrne	L031
1115  0008               L231:
1116  0008 4f            	clr	a
1117  0009 2010          	jra	L431
1118  000b               L031:
1119  000b ae0143        	ldw	x,#323
1120  000e 89            	pushw	x
1121  000f ae0000        	ldw	x,#0
1122  0012 89            	pushw	x
1123  0013 ae000c        	ldw	x,#L131
1124  0016 cd0000        	call	_assert_failed
1126  0019 5b04          	addw	sp,#4
1127  001b               L431:
1128                     ; 325   if (NewState != DISABLE)
1130  001b 0d01          	tnz	(OFST+1,sp)
1131  001d 2706          	jreq	L723
1132                     ; 328     I2C->CR1 &= (uint8_t)(~I2C_CR1_NOSTRETCH);
1134  001f 721f5210      	bres	21008,#7
1136  0023 2004          	jra	L133
1137  0025               L723:
1138                     ; 334     I2C->CR1 |= I2C_CR1_NOSTRETCH;
1140  0025 721e5210      	bset	21008,#7
1141  0029               L133:
1142                     ; 336 }
1145  0029 84            	pop	a
1146  002a 81            	ret
1183                     ; 345 void I2C_AcknowledgeConfig(I2C_Ack_TypeDef Ack)
1183                     ; 346 {
1184                     .text:	section	.text,new
1185  0000               _I2C_AcknowledgeConfig:
1187  0000 88            	push	a
1188       00000000      OFST:	set	0
1191                     ; 348   assert_param(IS_I2C_ACK_OK(Ack));
1193  0001 4d            	tnz	a
1194  0002 2708          	jreq	L241
1195  0004 a101          	cp	a,#1
1196  0006 2704          	jreq	L241
1197  0008 a102          	cp	a,#2
1198  000a 2603          	jrne	L041
1199  000c               L241:
1200  000c 4f            	clr	a
1201  000d 2010          	jra	L441
1202  000f               L041:
1203  000f ae015c        	ldw	x,#348
1204  0012 89            	pushw	x
1205  0013 ae0000        	ldw	x,#0
1206  0016 89            	pushw	x
1207  0017 ae000c        	ldw	x,#L131
1208  001a cd0000        	call	_assert_failed
1210  001d 5b04          	addw	sp,#4
1211  001f               L441:
1212                     ; 350   if (Ack == I2C_ACK_NONE)
1214  001f 0d01          	tnz	(OFST+1,sp)
1215  0021 2606          	jrne	L153
1216                     ; 353     I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
1218  0023 72155211      	bres	21009,#2
1220  0027 2014          	jra	L353
1221  0029               L153:
1222                     ; 358     I2C->CR2 |= I2C_CR2_ACK;
1224  0029 72145211      	bset	21009,#2
1225                     ; 360     if (Ack == I2C_ACK_CURR)
1227  002d 7b01          	ld	a,(OFST+1,sp)
1228  002f a101          	cp	a,#1
1229  0031 2606          	jrne	L553
1230                     ; 363       I2C->CR2 &= (uint8_t)(~I2C_CR2_POS);
1232  0033 72175211      	bres	21009,#3
1234  0037 2004          	jra	L353
1235  0039               L553:
1236                     ; 368       I2C->CR2 |= I2C_CR2_POS;
1238  0039 72165211      	bset	21009,#3
1239  003d               L353:
1240                     ; 371 }
1243  003d 84            	pop	a
1244  003e 81            	ret
1317                     ; 381 void I2C_ITConfig(I2C_IT_TypeDef I2C_IT, FunctionalState NewState)
1317                     ; 382 {
1318                     .text:	section	.text,new
1319  0000               _I2C_ITConfig:
1321  0000 89            	pushw	x
1322       00000000      OFST:	set	0
1325                     ; 384   assert_param(IS_I2C_INTERRUPT_OK(I2C_IT));
1327  0001 9e            	ld	a,xh
1328  0002 a101          	cp	a,#1
1329  0004 271e          	jreq	L251
1330  0006 9e            	ld	a,xh
1331  0007 a102          	cp	a,#2
1332  0009 2719          	jreq	L251
1333  000b 9e            	ld	a,xh
1334  000c a104          	cp	a,#4
1335  000e 2714          	jreq	L251
1336  0010 9e            	ld	a,xh
1337  0011 a103          	cp	a,#3
1338  0013 270f          	jreq	L251
1339  0015 9e            	ld	a,xh
1340  0016 a105          	cp	a,#5
1341  0018 270a          	jreq	L251
1342  001a 9e            	ld	a,xh
1343  001b a106          	cp	a,#6
1344  001d 2705          	jreq	L251
1345  001f 9e            	ld	a,xh
1346  0020 a107          	cp	a,#7
1347  0022 2603          	jrne	L051
1348  0024               L251:
1349  0024 4f            	clr	a
1350  0025 2010          	jra	L451
1351  0027               L051:
1352  0027 ae0180        	ldw	x,#384
1353  002a 89            	pushw	x
1354  002b ae0000        	ldw	x,#0
1355  002e 89            	pushw	x
1356  002f ae000c        	ldw	x,#L131
1357  0032 cd0000        	call	_assert_failed
1359  0035 5b04          	addw	sp,#4
1360  0037               L451:
1361                     ; 385   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1363  0037 0d02          	tnz	(OFST+2,sp)
1364  0039 2706          	jreq	L061
1365  003b 7b02          	ld	a,(OFST+2,sp)
1366  003d a101          	cp	a,#1
1367  003f 2603          	jrne	L651
1368  0041               L061:
1369  0041 4f            	clr	a
1370  0042 2010          	jra	L261
1371  0044               L651:
1372  0044 ae0181        	ldw	x,#385
1373  0047 89            	pushw	x
1374  0048 ae0000        	ldw	x,#0
1375  004b 89            	pushw	x
1376  004c ae000c        	ldw	x,#L131
1377  004f cd0000        	call	_assert_failed
1379  0052 5b04          	addw	sp,#4
1380  0054               L261:
1381                     ; 387   if (NewState != DISABLE)
1383  0054 0d02          	tnz	(OFST+2,sp)
1384  0056 270a          	jreq	L514
1385                     ; 390     I2C->ITR |= (uint8_t)I2C_IT;
1387  0058 c6521a        	ld	a,21018
1388  005b 1a01          	or	a,(OFST+1,sp)
1389  005d c7521a        	ld	21018,a
1391  0060 2009          	jra	L714
1392  0062               L514:
1393                     ; 395     I2C->ITR &= (uint8_t)(~(uint8_t)I2C_IT);
1395  0062 7b01          	ld	a,(OFST+1,sp)
1396  0064 43            	cpl	a
1397  0065 c4521a        	and	a,21018
1398  0068 c7521a        	ld	21018,a
1399  006b               L714:
1400                     ; 397 }
1403  006b 85            	popw	x
1404  006c 81            	ret
1441                     ; 405 void I2C_FastModeDutyCycleConfig(I2C_DutyCycle_TypeDef I2C_DutyCycle)
1441                     ; 406 {
1442                     .text:	section	.text,new
1443  0000               _I2C_FastModeDutyCycleConfig:
1445  0000 88            	push	a
1446       00000000      OFST:	set	0
1449                     ; 408   assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));
1451  0001 4d            	tnz	a
1452  0002 2704          	jreq	L071
1453  0004 a140          	cp	a,#64
1454  0006 2603          	jrne	L661
1455  0008               L071:
1456  0008 4f            	clr	a
1457  0009 2010          	jra	L271
1458  000b               L661:
1459  000b ae0198        	ldw	x,#408
1460  000e 89            	pushw	x
1461  000f ae0000        	ldw	x,#0
1462  0012 89            	pushw	x
1463  0013 ae000c        	ldw	x,#L131
1464  0016 cd0000        	call	_assert_failed
1466  0019 5b04          	addw	sp,#4
1467  001b               L271:
1468                     ; 410   if (I2C_DutyCycle == I2C_DUTYCYCLE_16_9)
1470  001b 7b01          	ld	a,(OFST+1,sp)
1471  001d a140          	cp	a,#64
1472  001f 2606          	jrne	L734
1473                     ; 413     I2C->CCRH |= I2C_CCRH_DUTY;
1475  0021 721c521c      	bset	21020,#6
1477  0025 2004          	jra	L144
1478  0027               L734:
1479                     ; 418     I2C->CCRH &= (uint8_t)(~I2C_CCRH_DUTY);
1481  0027 721d521c      	bres	21020,#6
1482  002b               L144:
1483                     ; 420 }
1486  002b 84            	pop	a
1487  002c 81            	ret
1510                     ; 427 uint8_t I2C_ReceiveData(void)
1510                     ; 428 {
1511                     .text:	section	.text,new
1512  0000               _I2C_ReceiveData:
1516                     ; 430   return ((uint8_t)I2C->DR);
1518  0000 c65216        	ld	a,21014
1521  0003 81            	ret
1587                     ; 440 void I2C_Send7bitAddress(uint8_t Address, I2C_Direction_TypeDef Direction)
1587                     ; 441 {
1588                     .text:	section	.text,new
1589  0000               _I2C_Send7bitAddress:
1591  0000 89            	pushw	x
1592       00000000      OFST:	set	0
1595                     ; 443   assert_param(IS_I2C_ADDRESS_OK(Address));
1597  0001 9e            	ld	a,xh
1598  0002 a501          	bcp	a,#1
1599  0004 2603          	jrne	L002
1600  0006 4f            	clr	a
1601  0007 2010          	jra	L202
1602  0009               L002:
1603  0009 ae01bb        	ldw	x,#443
1604  000c 89            	pushw	x
1605  000d ae0000        	ldw	x,#0
1606  0010 89            	pushw	x
1607  0011 ae000c        	ldw	x,#L131
1608  0014 cd0000        	call	_assert_failed
1610  0017 5b04          	addw	sp,#4
1611  0019               L202:
1612                     ; 444   assert_param(IS_I2C_DIRECTION_OK(Direction));
1614  0019 0d02          	tnz	(OFST+2,sp)
1615  001b 2706          	jreq	L602
1616  001d 7b02          	ld	a,(OFST+2,sp)
1617  001f a101          	cp	a,#1
1618  0021 2603          	jrne	L402
1619  0023               L602:
1620  0023 4f            	clr	a
1621  0024 2010          	jra	L012
1622  0026               L402:
1623  0026 ae01bc        	ldw	x,#444
1624  0029 89            	pushw	x
1625  002a ae0000        	ldw	x,#0
1626  002d 89            	pushw	x
1627  002e ae000c        	ldw	x,#L131
1628  0031 cd0000        	call	_assert_failed
1630  0034 5b04          	addw	sp,#4
1631  0036               L012:
1632                     ; 447   Address &= (uint8_t)0xFE;
1634  0036 7b01          	ld	a,(OFST+1,sp)
1635  0038 a4fe          	and	a,#254
1636  003a 6b01          	ld	(OFST+1,sp),a
1637                     ; 450   I2C->DR = (uint8_t)(Address | (uint8_t)Direction);
1639  003c 7b01          	ld	a,(OFST+1,sp)
1640  003e 1a02          	or	a,(OFST+2,sp)
1641  0040 c75216        	ld	21014,a
1642                     ; 451 }
1645  0043 85            	popw	x
1646  0044 81            	ret
1680                     ; 458 void I2C_SendData(uint8_t Data)
1680                     ; 459 {
1681                     .text:	section	.text,new
1682  0000               _I2C_SendData:
1686                     ; 461   I2C->DR = Data;
1688  0000 c75216        	ld	21014,a
1689                     ; 462 }
1692  0003 81            	ret
1917                     ; 578 ErrorStatus I2C_CheckEvent(I2C_Event_TypeDef I2C_Event)
1917                     ; 579 {
1918                     .text:	section	.text,new
1919  0000               _I2C_CheckEvent:
1921  0000 89            	pushw	x
1922  0001 5206          	subw	sp,#6
1923       00000006      OFST:	set	6
1926                     ; 580   __IO uint16_t lastevent = 0x00;
1928  0003 5f            	clrw	x
1929  0004 1f04          	ldw	(OFST-2,sp),x
1931                     ; 581   uint8_t flag1 = 0x00 ;
1933                     ; 582   uint8_t flag2 = 0x00;
1935                     ; 583   ErrorStatus status = ERROR;
1937                     ; 586   assert_param(IS_I2C_EVENT_OK(I2C_Event));
1939  0006 1e07          	ldw	x,(OFST+1,sp)
1940  0008 a30682        	cpw	x,#1666
1941  000b 2769          	jreq	L022
1942  000d 1e07          	ldw	x,(OFST+1,sp)
1943  000f a30202        	cpw	x,#514
1944  0012 2762          	jreq	L022
1945  0014 1e07          	ldw	x,(OFST+1,sp)
1946  0016 a31200        	cpw	x,#4608
1947  0019 275b          	jreq	L022
1948  001b 1e07          	ldw	x,(OFST+1,sp)
1949  001d a30240        	cpw	x,#576
1950  0020 2754          	jreq	L022
1951  0022 1e07          	ldw	x,(OFST+1,sp)
1952  0024 a30350        	cpw	x,#848
1953  0027 274d          	jreq	L022
1954  0029 1e07          	ldw	x,(OFST+1,sp)
1955  002b a30684        	cpw	x,#1668
1956  002e 2746          	jreq	L022
1957  0030 1e07          	ldw	x,(OFST+1,sp)
1958  0032 a30794        	cpw	x,#1940
1959  0035 273f          	jreq	L022
1960  0037 1e07          	ldw	x,(OFST+1,sp)
1961  0039 a30004        	cpw	x,#4
1962  003c 2738          	jreq	L022
1963  003e 1e07          	ldw	x,(OFST+1,sp)
1964  0040 a30010        	cpw	x,#16
1965  0043 2731          	jreq	L022
1966  0045 1e07          	ldw	x,(OFST+1,sp)
1967  0047 a30301        	cpw	x,#769
1968  004a 272a          	jreq	L022
1969  004c 1e07          	ldw	x,(OFST+1,sp)
1970  004e a30782        	cpw	x,#1922
1971  0051 2723          	jreq	L022
1972  0053 1e07          	ldw	x,(OFST+1,sp)
1973  0055 a30302        	cpw	x,#770
1974  0058 271c          	jreq	L022
1975  005a 1e07          	ldw	x,(OFST+1,sp)
1976  005c a30340        	cpw	x,#832
1977  005f 2715          	jreq	L022
1978  0061 1e07          	ldw	x,(OFST+1,sp)
1979  0063 a30784        	cpw	x,#1924
1980  0066 270e          	jreq	L022
1981  0068 1e07          	ldw	x,(OFST+1,sp)
1982  006a a30780        	cpw	x,#1920
1983  006d 2707          	jreq	L022
1984  006f 1e07          	ldw	x,(OFST+1,sp)
1985  0071 a30308        	cpw	x,#776
1986  0074 2603          	jrne	L612
1987  0076               L022:
1988  0076 4f            	clr	a
1989  0077 2010          	jra	L222
1990  0079               L612:
1991  0079 ae024a        	ldw	x,#586
1992  007c 89            	pushw	x
1993  007d ae0000        	ldw	x,#0
1994  0080 89            	pushw	x
1995  0081 ae000c        	ldw	x,#L131
1996  0084 cd0000        	call	_assert_failed
1998  0087 5b04          	addw	sp,#4
1999  0089               L222:
2000                     ; 588   if (I2C_Event == I2C_EVENT_SLAVE_ACK_FAILURE)
2002  0089 1e07          	ldw	x,(OFST+1,sp)
2003  008b a30004        	cpw	x,#4
2004  008e 260b          	jrne	L336
2005                     ; 590     lastevent = I2C->SR2 & I2C_SR2_AF;
2007  0090 c65218        	ld	a,21016
2008  0093 a404          	and	a,#4
2009  0095 5f            	clrw	x
2010  0096 97            	ld	xl,a
2011  0097 1f04          	ldw	(OFST-2,sp),x
2014  0099 201f          	jra	L536
2015  009b               L336:
2016                     ; 594     flag1 = I2C->SR1;
2018  009b c65217        	ld	a,21015
2019  009e 6b03          	ld	(OFST-3,sp),a
2021                     ; 595     flag2 = I2C->SR3;
2023  00a0 c65219        	ld	a,21017
2024  00a3 6b06          	ld	(OFST+0,sp),a
2026                     ; 596     lastevent = ((uint16_t)((uint16_t)flag2 << (uint16_t)8) | (uint16_t)flag1);
2028  00a5 7b03          	ld	a,(OFST-3,sp)
2029  00a7 5f            	clrw	x
2030  00a8 97            	ld	xl,a
2031  00a9 1f01          	ldw	(OFST-5,sp),x
2033  00ab 7b06          	ld	a,(OFST+0,sp)
2034  00ad 5f            	clrw	x
2035  00ae 97            	ld	xl,a
2036  00af 4f            	clr	a
2037  00b0 02            	rlwa	x,a
2038  00b1 01            	rrwa	x,a
2039  00b2 1a02          	or	a,(OFST-4,sp)
2040  00b4 01            	rrwa	x,a
2041  00b5 1a01          	or	a,(OFST-5,sp)
2042  00b7 01            	rrwa	x,a
2043  00b8 1f04          	ldw	(OFST-2,sp),x
2045  00ba               L536:
2046                     ; 599   if (((uint16_t)lastevent & (uint16_t)I2C_Event) == (uint16_t)I2C_Event)
2048  00ba 1e04          	ldw	x,(OFST-2,sp)
2049  00bc 01            	rrwa	x,a
2050  00bd 1408          	and	a,(OFST+2,sp)
2051  00bf 01            	rrwa	x,a
2052  00c0 1407          	and	a,(OFST+1,sp)
2053  00c2 01            	rrwa	x,a
2054  00c3 1307          	cpw	x,(OFST+1,sp)
2055  00c5 2606          	jrne	L736
2056                     ; 602     status = SUCCESS;
2058  00c7 a601          	ld	a,#1
2059  00c9 6b06          	ld	(OFST+0,sp),a
2062  00cb 2002          	jra	L146
2063  00cd               L736:
2064                     ; 607     status = ERROR;
2066  00cd 0f06          	clr	(OFST+0,sp)
2068  00cf               L146:
2069                     ; 611   return status;
2071  00cf 7b06          	ld	a,(OFST+0,sp)
2074  00d1 5b08          	addw	sp,#8
2075  00d3 81            	ret
2128                     ; 628 I2C_Event_TypeDef I2C_GetLastEvent(void)
2128                     ; 629 {
2129                     .text:	section	.text,new
2130  0000               _I2C_GetLastEvent:
2132  0000 5206          	subw	sp,#6
2133       00000006      OFST:	set	6
2136                     ; 630   __IO uint16_t lastevent = 0;
2138  0002 5f            	clrw	x
2139  0003 1f05          	ldw	(OFST-1,sp),x
2141                     ; 631   uint16_t flag1 = 0;
2143                     ; 632   uint16_t flag2 = 0;
2145                     ; 634   if ((I2C->SR2 & I2C_SR2_AF) != 0x00)
2147  0005 c65218        	ld	a,21016
2148  0008 a504          	bcp	a,#4
2149  000a 2707          	jreq	L176
2150                     ; 636     lastevent = I2C_EVENT_SLAVE_ACK_FAILURE;
2152  000c ae0004        	ldw	x,#4
2153  000f 1f05          	ldw	(OFST-1,sp),x
2156  0011 201b          	jra	L376
2157  0013               L176:
2158                     ; 641     flag1 = I2C->SR1;
2160  0013 c65217        	ld	a,21015
2161  0016 5f            	clrw	x
2162  0017 97            	ld	xl,a
2163  0018 1f01          	ldw	(OFST-5,sp),x
2165                     ; 642     flag2 = I2C->SR3;
2167  001a c65219        	ld	a,21017
2168  001d 5f            	clrw	x
2169  001e 97            	ld	xl,a
2170  001f 1f03          	ldw	(OFST-3,sp),x
2172                     ; 645     lastevent = ((uint16_t)((uint16_t)flag2 << 8) | (uint16_t)flag1);
2174  0021 1e03          	ldw	x,(OFST-3,sp)
2175  0023 4f            	clr	a
2176  0024 02            	rlwa	x,a
2177  0025 01            	rrwa	x,a
2178  0026 1a02          	or	a,(OFST-4,sp)
2179  0028 01            	rrwa	x,a
2180  0029 1a01          	or	a,(OFST-5,sp)
2181  002b 01            	rrwa	x,a
2182  002c 1f05          	ldw	(OFST-1,sp),x
2184  002e               L376:
2185                     ; 648   return (I2C_Event_TypeDef)lastevent;
2187  002e 1e05          	ldw	x,(OFST-1,sp)
2190  0030 5b06          	addw	sp,#6
2191  0032 81            	ret
2407                     ; 679 FlagStatus I2C_GetFlagStatus(I2C_Flag_TypeDef I2C_Flag)
2407                     ; 680 {
2408                     .text:	section	.text,new
2409  0000               _I2C_GetFlagStatus:
2411  0000 89            	pushw	x
2412  0001 89            	pushw	x
2413       00000002      OFST:	set	2
2416                     ; 681   uint8_t tempreg = 0;
2418  0002 0f02          	clr	(OFST+0,sp)
2420                     ; 682   uint8_t regindex = 0;
2422                     ; 683   FlagStatus bitstatus = RESET;
2424                     ; 686   assert_param(IS_I2C_FLAG_OK(I2C_Flag));
2426  0004 a30180        	cpw	x,#384
2427  0007 274b          	jreq	L232
2428  0009 a30140        	cpw	x,#320
2429  000c 2746          	jreq	L232
2430  000e a30110        	cpw	x,#272
2431  0011 2741          	jreq	L232
2432  0013 a30108        	cpw	x,#264
2433  0016 273c          	jreq	L232
2434  0018 a30104        	cpw	x,#260
2435  001b 2737          	jreq	L232
2436  001d a30102        	cpw	x,#258
2437  0020 2732          	jreq	L232
2438  0022 a30101        	cpw	x,#257
2439  0025 272d          	jreq	L232
2440  0027 a30220        	cpw	x,#544
2441  002a 2728          	jreq	L232
2442  002c a30208        	cpw	x,#520
2443  002f 2723          	jreq	L232
2444  0031 a30204        	cpw	x,#516
2445  0034 271e          	jreq	L232
2446  0036 a30202        	cpw	x,#514
2447  0039 2719          	jreq	L232
2448  003b a30201        	cpw	x,#513
2449  003e 2714          	jreq	L232
2450  0040 a30310        	cpw	x,#784
2451  0043 270f          	jreq	L232
2452  0045 a30304        	cpw	x,#772
2453  0048 270a          	jreq	L232
2454  004a a30302        	cpw	x,#770
2455  004d 2705          	jreq	L232
2456  004f a30301        	cpw	x,#769
2457  0052 2603          	jrne	L032
2458  0054               L232:
2459  0054 4f            	clr	a
2460  0055 2010          	jra	L432
2461  0057               L032:
2462  0057 ae02ae        	ldw	x,#686
2463  005a 89            	pushw	x
2464  005b ae0000        	ldw	x,#0
2465  005e 89            	pushw	x
2466  005f ae000c        	ldw	x,#L131
2467  0062 cd0000        	call	_assert_failed
2469  0065 5b04          	addw	sp,#4
2470  0067               L432:
2471                     ; 689   regindex = (uint8_t)((uint16_t)I2C_Flag >> 8);
2473  0067 7b03          	ld	a,(OFST+1,sp)
2474  0069 6b01          	ld	(OFST-1,sp),a
2476                     ; 691   switch (regindex)
2478  006b 7b01          	ld	a,(OFST-1,sp)
2480                     ; 708     default:
2480                     ; 709       break;
2481  006d 4a            	dec	a
2482  006e 2708          	jreq	L576
2483  0070 4a            	dec	a
2484  0071 270c          	jreq	L776
2485  0073 4a            	dec	a
2486  0074 2710          	jreq	L107
2487  0076 2013          	jra	L5101
2488  0078               L576:
2489                     ; 694     case 0x01:
2489                     ; 695       tempreg = (uint8_t)I2C->SR1;
2491  0078 c65217        	ld	a,21015
2492  007b 6b02          	ld	(OFST+0,sp),a
2494                     ; 696       break;
2496  007d 200c          	jra	L5101
2497  007f               L776:
2498                     ; 699     case 0x02:
2498                     ; 700       tempreg = (uint8_t)I2C->SR2;
2500  007f c65218        	ld	a,21016
2501  0082 6b02          	ld	(OFST+0,sp),a
2503                     ; 701       break;
2505  0084 2005          	jra	L5101
2506  0086               L107:
2507                     ; 704     case 0x03:
2507                     ; 705       tempreg = (uint8_t)I2C->SR3;
2509  0086 c65219        	ld	a,21017
2510  0089 6b02          	ld	(OFST+0,sp),a
2512                     ; 706       break;
2514  008b               L307:
2515                     ; 708     default:
2515                     ; 709       break;
2517  008b               L5101:
2518                     ; 713   if ((tempreg & (uint8_t)I2C_Flag ) != 0)
2520  008b 7b04          	ld	a,(OFST+2,sp)
2521  008d 1502          	bcp	a,(OFST+0,sp)
2522  008f 2706          	jreq	L7101
2523                     ; 716     bitstatus = SET;
2525  0091 a601          	ld	a,#1
2526  0093 6b02          	ld	(OFST+0,sp),a
2529  0095 2002          	jra	L1201
2530  0097               L7101:
2531                     ; 721     bitstatus = RESET;
2533  0097 0f02          	clr	(OFST+0,sp)
2535  0099               L1201:
2536                     ; 724   return bitstatus;
2538  0099 7b02          	ld	a,(OFST+0,sp)
2541  009b 5b04          	addw	sp,#4
2542  009d 81            	ret
2587                     ; 759 void I2C_ClearFlag(I2C_Flag_TypeDef I2C_FLAG)
2587                     ; 760 {
2588                     .text:	section	.text,new
2589  0000               _I2C_ClearFlag:
2591  0000 89            	pushw	x
2592  0001 89            	pushw	x
2593       00000002      OFST:	set	2
2596                     ; 761   uint16_t flagpos = 0;
2598                     ; 763   assert_param(IS_I2C_CLEAR_FLAG_OK(I2C_FLAG));
2600  0002 01            	rrwa	x,a
2601  0003 9f            	ld	a,xl
2602  0004 a4fd          	and	a,#253
2603  0006 97            	ld	xl,a
2604  0007 4f            	clr	a
2605  0008 02            	rlwa	x,a
2606  0009 5d            	tnzw	x
2607  000a 2607          	jrne	L042
2608  000c 1e03          	ldw	x,(OFST+1,sp)
2609  000e 2703          	jreq	L042
2610  0010 4f            	clr	a
2611  0011 2010          	jra	L242
2612  0013               L042:
2613  0013 ae02fb        	ldw	x,#763
2614  0016 89            	pushw	x
2615  0017 ae0000        	ldw	x,#0
2616  001a 89            	pushw	x
2617  001b ae000c        	ldw	x,#L131
2618  001e cd0000        	call	_assert_failed
2620  0021 5b04          	addw	sp,#4
2621  0023               L242:
2622                     ; 766   flagpos = (uint16_t)I2C_FLAG & FLAG_Mask;
2624  0023 7b03          	ld	a,(OFST+1,sp)
2625  0025 97            	ld	xl,a
2626  0026 7b04          	ld	a,(OFST+2,sp)
2627  0028 a4ff          	and	a,#255
2628  002a 5f            	clrw	x
2629  002b 02            	rlwa	x,a
2630  002c 1f01          	ldw	(OFST-1,sp),x
2631  002e 01            	rrwa	x,a
2633                     ; 768   I2C->SR2 = (uint8_t)((uint16_t)(~flagpos));
2635  002f 7b02          	ld	a,(OFST+0,sp)
2636  0031 43            	cpl	a
2637  0032 c75218        	ld	21016,a
2638                     ; 769 }
2641  0035 5b04          	addw	sp,#4
2642  0037 81            	ret
2809                     ; 791 ITStatus I2C_GetITStatus(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
2809                     ; 792 {
2810                     .text:	section	.text,new
2811  0000               _I2C_GetITStatus:
2813  0000 89            	pushw	x
2814  0001 5204          	subw	sp,#4
2815       00000004      OFST:	set	4
2818                     ; 793   ITStatus bitstatus = RESET;
2820                     ; 794   __IO uint8_t enablestatus = 0;
2822  0003 0f03          	clr	(OFST-1,sp)
2824                     ; 795   uint16_t tempregister = 0;
2826                     ; 798     assert_param(IS_I2C_ITPENDINGBIT_OK(I2C_ITPendingBit));
2828  0005 a31680        	cpw	x,#5760
2829  0008 2737          	jreq	L052
2830  000a a31640        	cpw	x,#5696
2831  000d 2732          	jreq	L052
2832  000f a31210        	cpw	x,#4624
2833  0012 272d          	jreq	L052
2834  0014 a31208        	cpw	x,#4616
2835  0017 2728          	jreq	L052
2836  0019 a31204        	cpw	x,#4612
2837  001c 2723          	jreq	L052
2838  001e a31202        	cpw	x,#4610
2839  0021 271e          	jreq	L052
2840  0023 a31201        	cpw	x,#4609
2841  0026 2719          	jreq	L052
2842  0028 a32220        	cpw	x,#8736
2843  002b 2714          	jreq	L052
2844  002d a32108        	cpw	x,#8456
2845  0030 270f          	jreq	L052
2846  0032 a32104        	cpw	x,#8452
2847  0035 270a          	jreq	L052
2848  0037 a32102        	cpw	x,#8450
2849  003a 2705          	jreq	L052
2850  003c a32101        	cpw	x,#8449
2851  003f 2603          	jrne	L642
2852  0041               L052:
2853  0041 4f            	clr	a
2854  0042 2010          	jra	L252
2855  0044               L642:
2856  0044 ae031e        	ldw	x,#798
2857  0047 89            	pushw	x
2858  0048 ae0000        	ldw	x,#0
2859  004b 89            	pushw	x
2860  004c ae000c        	ldw	x,#L131
2861  004f cd0000        	call	_assert_failed
2863  0052 5b04          	addw	sp,#4
2864  0054               L252:
2865                     ; 800   tempregister = (uint8_t)( ((uint16_t)((uint16_t)I2C_ITPendingBit & ITEN_Mask)) >> 8);
2867  0054 7b05          	ld	a,(OFST+1,sp)
2868  0056 a407          	and	a,#7
2869  0058 5f            	clrw	x
2870  0059 97            	ld	xl,a
2871  005a 1f01          	ldw	(OFST-3,sp),x
2873                     ; 803   enablestatus = (uint8_t)(I2C->ITR & ( uint8_t)tempregister);
2875  005c c6521a        	ld	a,21018
2876  005f 1402          	and	a,(OFST-2,sp)
2877  0061 6b03          	ld	(OFST-1,sp),a
2879                     ; 805   if ((uint16_t)((uint16_t)I2C_ITPendingBit & REGISTER_Mask) == REGISTER_SR1_Index)
2881  0063 7b05          	ld	a,(OFST+1,sp)
2882  0065 97            	ld	xl,a
2883  0066 7b06          	ld	a,(OFST+2,sp)
2884  0068 9f            	ld	a,xl
2885  0069 a430          	and	a,#48
2886  006b 97            	ld	xl,a
2887  006c 4f            	clr	a
2888  006d 02            	rlwa	x,a
2889  006e a30100        	cpw	x,#256
2890  0071 2615          	jrne	L3311
2891                     ; 808     if (((I2C->SR1 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
2893  0073 c65217        	ld	a,21015
2894  0076 1506          	bcp	a,(OFST+2,sp)
2895  0078 270a          	jreq	L5311
2897  007a 0d03          	tnz	(OFST-1,sp)
2898  007c 2706          	jreq	L5311
2899                     ; 811       bitstatus = SET;
2901  007e a601          	ld	a,#1
2902  0080 6b04          	ld	(OFST+0,sp),a
2905  0082 2017          	jra	L1411
2906  0084               L5311:
2907                     ; 816       bitstatus = RESET;
2909  0084 0f04          	clr	(OFST+0,sp)
2911  0086 2013          	jra	L1411
2912  0088               L3311:
2913                     ; 822     if (((I2C->SR2 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
2915  0088 c65218        	ld	a,21016
2916  008b 1506          	bcp	a,(OFST+2,sp)
2917  008d 270a          	jreq	L3411
2919  008f 0d03          	tnz	(OFST-1,sp)
2920  0091 2706          	jreq	L3411
2921                     ; 825       bitstatus = SET;
2923  0093 a601          	ld	a,#1
2924  0095 6b04          	ld	(OFST+0,sp),a
2927  0097 2002          	jra	L1411
2928  0099               L3411:
2929                     ; 830       bitstatus = RESET;
2931  0099 0f04          	clr	(OFST+0,sp)
2933  009b               L1411:
2934                     ; 834   return  bitstatus;
2936  009b 7b04          	ld	a,(OFST+0,sp)
2939  009d 5b06          	addw	sp,#6
2940  009f 81            	ret
2986                     ; 871 void I2C_ClearITPendingBit(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
2986                     ; 872 {
2987                     .text:	section	.text,new
2988  0000               _I2C_ClearITPendingBit:
2990  0000 89            	pushw	x
2991  0001 89            	pushw	x
2992       00000002      OFST:	set	2
2995                     ; 873   uint16_t flagpos = 0;
2997                     ; 876   assert_param(IS_I2C_CLEAR_ITPENDINGBIT_OK(I2C_ITPendingBit));
2999  0002 a32220        	cpw	x,#8736
3000  0005 2714          	jreq	L062
3001  0007 a32108        	cpw	x,#8456
3002  000a 270f          	jreq	L062
3003  000c a32104        	cpw	x,#8452
3004  000f 270a          	jreq	L062
3005  0011 a32102        	cpw	x,#8450
3006  0014 2705          	jreq	L062
3007  0016 a32101        	cpw	x,#8449
3008  0019 2603          	jrne	L652
3009  001b               L062:
3010  001b 4f            	clr	a
3011  001c 2010          	jra	L262
3012  001e               L652:
3013  001e ae036c        	ldw	x,#876
3014  0021 89            	pushw	x
3015  0022 ae0000        	ldw	x,#0
3016  0025 89            	pushw	x
3017  0026 ae000c        	ldw	x,#L131
3018  0029 cd0000        	call	_assert_failed
3020  002c 5b04          	addw	sp,#4
3021  002e               L262:
3022                     ; 879   flagpos = (uint16_t)I2C_ITPendingBit & FLAG_Mask;
3024  002e 7b03          	ld	a,(OFST+1,sp)
3025  0030 97            	ld	xl,a
3026  0031 7b04          	ld	a,(OFST+2,sp)
3027  0033 a4ff          	and	a,#255
3028  0035 5f            	clrw	x
3029  0036 02            	rlwa	x,a
3030  0037 1f01          	ldw	(OFST-1,sp),x
3031  0039 01            	rrwa	x,a
3033                     ; 882   I2C->SR2 = (uint8_t)((uint16_t)~flagpos);
3035  003a 7b02          	ld	a,(OFST+0,sp)
3036  003c 43            	cpl	a
3037  003d c75218        	ld	21016,a
3038                     ; 883 }
3041  0040 5b04          	addw	sp,#4
3042  0042 81            	ret
3055                     	xdef	_I2C_ClearITPendingBit
3056                     	xdef	_I2C_GetITStatus
3057                     	xdef	_I2C_ClearFlag
3058                     	xdef	_I2C_GetFlagStatus
3059                     	xdef	_I2C_GetLastEvent
3060                     	xdef	_I2C_CheckEvent
3061                     	xdef	_I2C_SendData
3062                     	xdef	_I2C_Send7bitAddress
3063                     	xdef	_I2C_ReceiveData
3064                     	xdef	_I2C_ITConfig
3065                     	xdef	_I2C_FastModeDutyCycleConfig
3066                     	xdef	_I2C_AcknowledgeConfig
3067                     	xdef	_I2C_StretchClockCmd
3068                     	xdef	_I2C_SoftwareResetCmd
3069                     	xdef	_I2C_GenerateSTOP
3070                     	xdef	_I2C_GenerateSTART
3071                     	xdef	_I2C_GeneralCallCmd
3072                     	xdef	_I2C_Cmd
3073                     	xdef	_I2C_Init
3074                     	xdef	_I2C_DeInit
3075                     	xref	_assert_failed
3076                     	switch	.const
3077  000c               L131:
3078  000c 2e2e5c6c6962  	dc.b	"..\libs\src\stm8s_"
3079  001e 6932632e6300  	dc.b	"i2c.c",0
3080                     	xref.b	c_lreg
3081                     	xref.b	c_x
3101                     	xref	c_sdivx
3102                     	xref	c_ludv
3103                     	xref	c_rtol
3104                     	xref	c_smul
3105                     	xref	c_lmul
3106                     	xref	c_lcmp
3107                     	xref	c_ltor
3108                     	xref	c_lzmp
3109                     	end
