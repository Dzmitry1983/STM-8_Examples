   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
  43                     ; 67 void I2C_DeInit(void)
  43                     ; 68 {
  45                     	switch	.text
  46  0000               _I2C_DeInit:
  50                     ; 69   I2C->CR1 = I2C_CR1_RESET_VALUE;
  52  0000 725f5210      	clr	21008
  53                     ; 70   I2C->CR2 = I2C_CR2_RESET_VALUE;
  55  0004 725f5211      	clr	21009
  56                     ; 71   I2C->FREQR = I2C_FREQR_RESET_VALUE;
  58  0008 725f5212      	clr	21010
  59                     ; 72   I2C->OARL = I2C_OARL_RESET_VALUE;
  61  000c 725f5213      	clr	21011
  62                     ; 73   I2C->OARH = I2C_OARH_RESET_VALUE;
  64  0010 725f5214      	clr	21012
  65                     ; 74   I2C->ITR = I2C_ITR_RESET_VALUE;
  67  0014 725f521a      	clr	21018
  68                     ; 75   I2C->CCRL = I2C_CCRL_RESET_VALUE;
  70  0018 725f521b      	clr	21019
  71                     ; 76   I2C->CCRH = I2C_CCRH_RESET_VALUE;
  73  001c 725f521c      	clr	21020
  74                     ; 77   I2C->TRISER = I2C_TRISER_RESET_VALUE;
  76  0020 3502521d      	mov	21021,#2
  77                     ; 78 }
  80  0024 81            	ret
 260                     .const:	section	.text
 261  0000               L44:
 262  0000 00061a81      	dc.l	400001
 263  0004               L05:
 264  0004 000186a1      	dc.l	100001
 265  0008               L25:
 266  0008 000f4240      	dc.l	1000000
 267                     ; 96 void I2C_Init(uint32_t OutputClockFrequencyHz, uint16_t OwnAddress, 
 267                     ; 97               I2C_DutyCycle_TypeDef I2C_DutyCycle, I2C_Ack_TypeDef Ack, 
 267                     ; 98               I2C_AddMode_TypeDef AddMode, uint8_t InputClockFrequencyMHz )
 267                     ; 99 {
 268                     	switch	.text
 269  0025               _I2C_Init:
 271  0025 5209          	subw	sp,#9
 272       00000009      OFST:	set	9
 275                     ; 100   uint16_t result = 0x0004;
 277                     ; 101   uint16_t tmpval = 0;
 279                     ; 102   uint8_t tmpccrh = 0;
 281  0027 0f07          	clr	(OFST-2,sp)
 283                     ; 105   assert_param(IS_I2C_ACK_OK(Ack));
 285  0029 0d13          	tnz	(OFST+10,sp)
 286  002b 270c          	jreq	L21
 287  002d 7b13          	ld	a,(OFST+10,sp)
 288  002f a101          	cp	a,#1
 289  0031 2706          	jreq	L21
 290  0033 7b13          	ld	a,(OFST+10,sp)
 291  0035 a102          	cp	a,#2
 292  0037 2603          	jrne	L01
 293  0039               L21:
 294  0039 4f            	clr	a
 295  003a 2010          	jra	L41
 296  003c               L01:
 297  003c ae0069        	ldw	x,#105
 298  003f 89            	pushw	x
 299  0040 ae0000        	ldw	x,#0
 300  0043 89            	pushw	x
 301  0044 ae000c        	ldw	x,#L131
 302  0047 cd0000        	call	_assert_failed
 304  004a 5b04          	addw	sp,#4
 305  004c               L41:
 306                     ; 106   assert_param(IS_I2C_ADDMODE_OK(AddMode));
 308  004c 0d14          	tnz	(OFST+11,sp)
 309  004e 2706          	jreq	L02
 310  0050 7b14          	ld	a,(OFST+11,sp)
 311  0052 a180          	cp	a,#128
 312  0054 2603          	jrne	L61
 313  0056               L02:
 314  0056 4f            	clr	a
 315  0057 2010          	jra	L22
 316  0059               L61:
 317  0059 ae006a        	ldw	x,#106
 318  005c 89            	pushw	x
 319  005d ae0000        	ldw	x,#0
 320  0060 89            	pushw	x
 321  0061 ae000c        	ldw	x,#L131
 322  0064 cd0000        	call	_assert_failed
 324  0067 5b04          	addw	sp,#4
 325  0069               L22:
 326                     ; 107   assert_param(IS_I2C_OWN_ADDRESS_OK(OwnAddress));
 328  0069 1e10          	ldw	x,(OFST+7,sp)
 329  006b a30400        	cpw	x,#1024
 330  006e 2403          	jruge	L42
 331  0070 4f            	clr	a
 332  0071 2010          	jra	L62
 333  0073               L42:
 334  0073 ae006b        	ldw	x,#107
 335  0076 89            	pushw	x
 336  0077 ae0000        	ldw	x,#0
 337  007a 89            	pushw	x
 338  007b ae000c        	ldw	x,#L131
 339  007e cd0000        	call	_assert_failed
 341  0081 5b04          	addw	sp,#4
 342  0083               L62:
 343                     ; 108   assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));  
 345  0083 0d12          	tnz	(OFST+9,sp)
 346  0085 2706          	jreq	L23
 347  0087 7b12          	ld	a,(OFST+9,sp)
 348  0089 a140          	cp	a,#64
 349  008b 2603          	jrne	L03
 350  008d               L23:
 351  008d 4f            	clr	a
 352  008e 2010          	jra	L43
 353  0090               L03:
 354  0090 ae006c        	ldw	x,#108
 355  0093 89            	pushw	x
 356  0094 ae0000        	ldw	x,#0
 357  0097 89            	pushw	x
 358  0098 ae000c        	ldw	x,#L131
 359  009b cd0000        	call	_assert_failed
 361  009e 5b04          	addw	sp,#4
 362  00a0               L43:
 363                     ; 109   assert_param(IS_I2C_INPUT_CLOCK_FREQ_OK(InputClockFrequencyMHz));
 365  00a0 0d15          	tnz	(OFST+12,sp)
 366  00a2 2709          	jreq	L63
 367  00a4 7b15          	ld	a,(OFST+12,sp)
 368  00a6 a111          	cp	a,#17
 369  00a8 2403          	jruge	L63
 370  00aa 4f            	clr	a
 371  00ab 2010          	jra	L04
 372  00ad               L63:
 373  00ad ae006d        	ldw	x,#109
 374  00b0 89            	pushw	x
 375  00b1 ae0000        	ldw	x,#0
 376  00b4 89            	pushw	x
 377  00b5 ae000c        	ldw	x,#L131
 378  00b8 cd0000        	call	_assert_failed
 380  00bb 5b04          	addw	sp,#4
 381  00bd               L04:
 382                     ; 110   assert_param(IS_I2C_OUTPUT_CLOCK_FREQ_OK(OutputClockFrequencyHz));
 384  00bd 96            	ldw	x,sp
 385  00be 1c000c        	addw	x,#OFST+3
 386  00c1 cd0000        	call	c_lzmp
 388  00c4 2712          	jreq	L24
 389  00c6 96            	ldw	x,sp
 390  00c7 1c000c        	addw	x,#OFST+3
 391  00ca cd0000        	call	c_ltor
 393  00cd ae0000        	ldw	x,#L44
 394  00d0 cd0000        	call	c_lcmp
 396  00d3 2403          	jruge	L24
 397  00d5 4f            	clr	a
 398  00d6 2010          	jra	L64
 399  00d8               L24:
 400  00d8 ae006e        	ldw	x,#110
 401  00db 89            	pushw	x
 402  00dc ae0000        	ldw	x,#0
 403  00df 89            	pushw	x
 404  00e0 ae000c        	ldw	x,#L131
 405  00e3 cd0000        	call	_assert_failed
 407  00e6 5b04          	addw	sp,#4
 408  00e8               L64:
 409                     ; 115   I2C->FREQR &= (uint8_t)(~I2C_FREQR_FREQ);
 411  00e8 c65212        	ld	a,21010
 412  00eb a4c0          	and	a,#192
 413  00ed c75212        	ld	21010,a
 414                     ; 117   I2C->FREQR |= InputClockFrequencyMHz;
 416  00f0 c65212        	ld	a,21010
 417  00f3 1a15          	or	a,(OFST+12,sp)
 418  00f5 c75212        	ld	21010,a
 419                     ; 121   I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
 421  00f8 72115210      	bres	21008,#0
 422                     ; 124   I2C->CCRH &= (uint8_t)(~(I2C_CCRH_FS | I2C_CCRH_DUTY | I2C_CCRH_CCR));
 424  00fc c6521c        	ld	a,21020
 425  00ff a430          	and	a,#48
 426  0101 c7521c        	ld	21020,a
 427                     ; 125   I2C->CCRL &= (uint8_t)(~I2C_CCRL_CCR);
 429  0104 725f521b      	clr	21019
 430                     ; 128   if (OutputClockFrequencyHz > I2C_MAX_STANDARD_FREQ) /* FAST MODE */
 432  0108 96            	ldw	x,sp
 433  0109 1c000c        	addw	x,#OFST+3
 434  010c cd0000        	call	c_ltor
 436  010f ae0004        	ldw	x,#L05
 437  0112 cd0000        	call	c_lcmp
 439  0115 2403          	jruge	L45
 440  0117 cc01a4        	jp	L331
 441  011a               L45:
 442                     ; 131     tmpccrh = I2C_CCRH_FS;
 444  011a a680          	ld	a,#128
 445  011c 6b07          	ld	(OFST-2,sp),a
 447                     ; 133     if (I2C_DutyCycle == I2C_DUTYCYCLE_2)
 449  011e 0d12          	tnz	(OFST+9,sp)
 450  0120 2630          	jrne	L531
 451                     ; 136       result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 3));
 453  0122 96            	ldw	x,sp
 454  0123 1c000c        	addw	x,#OFST+3
 455  0126 cd0000        	call	c_ltor
 457  0129 a603          	ld	a,#3
 458  012b cd0000        	call	c_smul
 460  012e 96            	ldw	x,sp
 461  012f 1c0001        	addw	x,#OFST-8
 462  0132 cd0000        	call	c_rtol
 465  0135 7b15          	ld	a,(OFST+12,sp)
 466  0137 b703          	ld	c_lreg+3,a
 467  0139 3f02          	clr	c_lreg+2
 468  013b 3f01          	clr	c_lreg+1
 469  013d 3f00          	clr	c_lreg
 470  013f ae0008        	ldw	x,#L25
 471  0142 cd0000        	call	c_lmul
 473  0145 96            	ldw	x,sp
 474  0146 1c0001        	addw	x,#OFST-8
 475  0149 cd0000        	call	c_ludv
 477  014c be02          	ldw	x,c_lreg+2
 478  014e 1f08          	ldw	(OFST-1,sp),x
 481  0150 2034          	jra	L731
 482  0152               L531:
 483                     ; 141       result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 25));
 485  0152 96            	ldw	x,sp
 486  0153 1c000c        	addw	x,#OFST+3
 487  0156 cd0000        	call	c_ltor
 489  0159 a619          	ld	a,#25
 490  015b cd0000        	call	c_smul
 492  015e 96            	ldw	x,sp
 493  015f 1c0001        	addw	x,#OFST-8
 494  0162 cd0000        	call	c_rtol
 497  0165 7b15          	ld	a,(OFST+12,sp)
 498  0167 b703          	ld	c_lreg+3,a
 499  0169 3f02          	clr	c_lreg+2
 500  016b 3f01          	clr	c_lreg+1
 501  016d 3f00          	clr	c_lreg
 502  016f ae0008        	ldw	x,#L25
 503  0172 cd0000        	call	c_lmul
 505  0175 96            	ldw	x,sp
 506  0176 1c0001        	addw	x,#OFST-8
 507  0179 cd0000        	call	c_ludv
 509  017c be02          	ldw	x,c_lreg+2
 510  017e 1f08          	ldw	(OFST-1,sp),x
 512                     ; 143       tmpccrh |= I2C_CCRH_DUTY;
 514  0180 7b07          	ld	a,(OFST-2,sp)
 515  0182 aa40          	or	a,#64
 516  0184 6b07          	ld	(OFST-2,sp),a
 518  0186               L731:
 519                     ; 147     if (result < (uint16_t)0x01)
 521  0186 1e08          	ldw	x,(OFST-1,sp)
 522  0188 2605          	jrne	L141
 523                     ; 150       result = (uint16_t)0x0001;
 525  018a ae0001        	ldw	x,#1
 526  018d 1f08          	ldw	(OFST-1,sp),x
 528  018f               L141:
 529                     ; 156     tmpval = ((InputClockFrequencyMHz * 3) / 10) + 1;
 531  018f 7b15          	ld	a,(OFST+12,sp)
 532  0191 97            	ld	xl,a
 533  0192 a603          	ld	a,#3
 534  0194 42            	mul	x,a
 535  0195 a60a          	ld	a,#10
 536  0197 cd0000        	call	c_sdivx
 538  019a 5c            	incw	x
 539  019b 1f05          	ldw	(OFST-4,sp),x
 541                     ; 157     I2C->TRISER = (uint8_t)tmpval;
 543  019d 7b06          	ld	a,(OFST-3,sp)
 544  019f c7521d        	ld	21021,a
 546  01a2 2043          	jra	L341
 547  01a4               L331:
 548                     ; 164     result = (uint16_t)((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz << (uint8_t)1));
 550  01a4 96            	ldw	x,sp
 551  01a5 1c000c        	addw	x,#OFST+3
 552  01a8 cd0000        	call	c_ltor
 554  01ab 3803          	sll	c_lreg+3
 555  01ad 3902          	rlc	c_lreg+2
 556  01af 3901          	rlc	c_lreg+1
 557  01b1 3900          	rlc	c_lreg
 558  01b3 96            	ldw	x,sp
 559  01b4 1c0001        	addw	x,#OFST-8
 560  01b7 cd0000        	call	c_rtol
 563  01ba 7b15          	ld	a,(OFST+12,sp)
 564  01bc b703          	ld	c_lreg+3,a
 565  01be 3f02          	clr	c_lreg+2
 566  01c0 3f01          	clr	c_lreg+1
 567  01c2 3f00          	clr	c_lreg
 568  01c4 ae0008        	ldw	x,#L25
 569  01c7 cd0000        	call	c_lmul
 571  01ca 96            	ldw	x,sp
 572  01cb 1c0001        	addw	x,#OFST-8
 573  01ce cd0000        	call	c_ludv
 575  01d1 be02          	ldw	x,c_lreg+2
 576  01d3 1f08          	ldw	(OFST-1,sp),x
 578                     ; 167     if (result < (uint16_t)0x0004)
 580  01d5 1e08          	ldw	x,(OFST-1,sp)
 581  01d7 a30004        	cpw	x,#4
 582  01da 2405          	jruge	L541
 583                     ; 170       result = (uint16_t)0x0004;
 585  01dc ae0004        	ldw	x,#4
 586  01df 1f08          	ldw	(OFST-1,sp),x
 588  01e1               L541:
 589                     ; 176     I2C->TRISER = (uint8_t)(InputClockFrequencyMHz + (uint8_t)1);
 591  01e1 7b15          	ld	a,(OFST+12,sp)
 592  01e3 4c            	inc	a
 593  01e4 c7521d        	ld	21021,a
 594  01e7               L341:
 595                     ; 181   I2C->CCRL = (uint8_t)result;
 597  01e7 7b09          	ld	a,(OFST+0,sp)
 598  01e9 c7521b        	ld	21019,a
 599                     ; 182   I2C->CCRH = (uint8_t)((uint8_t)((uint8_t)(result >> 8) & I2C_CCRH_CCR) | tmpccrh);
 601  01ec 7b08          	ld	a,(OFST-1,sp)
 602  01ee a40f          	and	a,#15
 603  01f0 1a07          	or	a,(OFST-2,sp)
 604  01f2 c7521c        	ld	21020,a
 605                     ; 185   I2C->CR1 |= I2C_CR1_PE;
 607  01f5 72105210      	bset	21008,#0
 608                     ; 188   I2C_AcknowledgeConfig(Ack);
 610  01f9 7b13          	ld	a,(OFST+10,sp)
 611  01fb cd031d        	call	_I2C_AcknowledgeConfig
 613                     ; 191   I2C->OARL = (uint8_t)(OwnAddress);
 615  01fe 7b11          	ld	a,(OFST+8,sp)
 616  0200 c75213        	ld	21011,a
 617                     ; 192   I2C->OARH = (uint8_t)((uint8_t)(AddMode | I2C_OARH_ADDCONF) |
 617                     ; 193                    (uint8_t)((OwnAddress & (uint16_t)0x0300) >> (uint8_t)7));
 619  0203 1e10          	ldw	x,(OFST+7,sp)
 620  0205 4f            	clr	a
 621  0206 01            	rrwa	x,a
 622  0207 48            	sll	a
 623  0208 59            	rlcw	x
 624  0209 01            	rrwa	x,a
 625  020a a406          	and	a,#6
 626  020c 5f            	clrw	x
 627  020d 6b04          	ld	(OFST-5,sp),a
 629  020f 7b14          	ld	a,(OFST+11,sp)
 630  0211 aa40          	or	a,#64
 631  0213 1a04          	or	a,(OFST-5,sp)
 632  0215 c75214        	ld	21012,a
 633                     ; 194 }
 636  0218 5b09          	addw	sp,#9
 637  021a 81            	ret
 693                     ; 202 void I2C_Cmd(FunctionalState NewState)
 693                     ; 203 {
 694                     	switch	.text
 695  021b               _I2C_Cmd:
 697  021b 88            	push	a
 698       00000000      OFST:	set	0
 701                     ; 205   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 703  021c 4d            	tnz	a
 704  021d 2704          	jreq	L26
 705  021f a101          	cp	a,#1
 706  0221 2603          	jrne	L06
 707  0223               L26:
 708  0223 4f            	clr	a
 709  0224 2010          	jra	L46
 710  0226               L06:
 711  0226 ae00cd        	ldw	x,#205
 712  0229 89            	pushw	x
 713  022a ae0000        	ldw	x,#0
 714  022d 89            	pushw	x
 715  022e ae000c        	ldw	x,#L131
 716  0231 cd0000        	call	_assert_failed
 718  0234 5b04          	addw	sp,#4
 719  0236               L46:
 720                     ; 207   if (NewState != DISABLE)
 722  0236 0d01          	tnz	(OFST+1,sp)
 723  0238 2706          	jreq	L571
 724                     ; 210     I2C->CR1 |= I2C_CR1_PE;
 726  023a 72105210      	bset	21008,#0
 728  023e 2004          	jra	L771
 729  0240               L571:
 730                     ; 215     I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
 732  0240 72115210      	bres	21008,#0
 733  0244               L771:
 734                     ; 217 }
 737  0244 84            	pop	a
 738  0245 81            	ret
 774                     ; 225 void I2C_GeneralCallCmd(FunctionalState NewState)
 774                     ; 226 {
 775                     	switch	.text
 776  0246               _I2C_GeneralCallCmd:
 778  0246 88            	push	a
 779       00000000      OFST:	set	0
 782                     ; 228   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 784  0247 4d            	tnz	a
 785  0248 2704          	jreq	L27
 786  024a a101          	cp	a,#1
 787  024c 2603          	jrne	L07
 788  024e               L27:
 789  024e 4f            	clr	a
 790  024f 2010          	jra	L47
 791  0251               L07:
 792  0251 ae00e4        	ldw	x,#228
 793  0254 89            	pushw	x
 794  0255 ae0000        	ldw	x,#0
 795  0258 89            	pushw	x
 796  0259 ae000c        	ldw	x,#L131
 797  025c cd0000        	call	_assert_failed
 799  025f 5b04          	addw	sp,#4
 800  0261               L47:
 801                     ; 230   if (NewState != DISABLE)
 803  0261 0d01          	tnz	(OFST+1,sp)
 804  0263 2706          	jreq	L712
 805                     ; 233     I2C->CR1 |= I2C_CR1_ENGC;
 807  0265 721c5210      	bset	21008,#6
 809  0269 2004          	jra	L122
 810  026b               L712:
 811                     ; 238     I2C->CR1 &= (uint8_t)(~I2C_CR1_ENGC);
 813  026b 721d5210      	bres	21008,#6
 814  026f               L122:
 815                     ; 240 }
 818  026f 84            	pop	a
 819  0270 81            	ret
 855                     ; 250 void I2C_GenerateSTART(FunctionalState NewState)
 855                     ; 251 {
 856                     	switch	.text
 857  0271               _I2C_GenerateSTART:
 859  0271 88            	push	a
 860       00000000      OFST:	set	0
 863                     ; 253   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 865  0272 4d            	tnz	a
 866  0273 2704          	jreq	L201
 867  0275 a101          	cp	a,#1
 868  0277 2603          	jrne	L001
 869  0279               L201:
 870  0279 4f            	clr	a
 871  027a 2010          	jra	L401
 872  027c               L001:
 873  027c ae00fd        	ldw	x,#253
 874  027f 89            	pushw	x
 875  0280 ae0000        	ldw	x,#0
 876  0283 89            	pushw	x
 877  0284 ae000c        	ldw	x,#L131
 878  0287 cd0000        	call	_assert_failed
 880  028a 5b04          	addw	sp,#4
 881  028c               L401:
 882                     ; 255   if (NewState != DISABLE)
 884  028c 0d01          	tnz	(OFST+1,sp)
 885  028e 2706          	jreq	L142
 886                     ; 258     I2C->CR2 |= I2C_CR2_START;
 888  0290 72105211      	bset	21009,#0
 890  0294 2004          	jra	L342
 891  0296               L142:
 892                     ; 263     I2C->CR2 &= (uint8_t)(~I2C_CR2_START);
 894  0296 72115211      	bres	21009,#0
 895  029a               L342:
 896                     ; 265 }
 899  029a 84            	pop	a
 900  029b 81            	ret
 936                     ; 273 void I2C_GenerateSTOP(FunctionalState NewState)
 936                     ; 274 {
 937                     	switch	.text
 938  029c               _I2C_GenerateSTOP:
 940  029c 88            	push	a
 941       00000000      OFST:	set	0
 944                     ; 276   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 946  029d 4d            	tnz	a
 947  029e 2704          	jreq	L211
 948  02a0 a101          	cp	a,#1
 949  02a2 2603          	jrne	L011
 950  02a4               L211:
 951  02a4 4f            	clr	a
 952  02a5 2010          	jra	L411
 953  02a7               L011:
 954  02a7 ae0114        	ldw	x,#276
 955  02aa 89            	pushw	x
 956  02ab ae0000        	ldw	x,#0
 957  02ae 89            	pushw	x
 958  02af ae000c        	ldw	x,#L131
 959  02b2 cd0000        	call	_assert_failed
 961  02b5 5b04          	addw	sp,#4
 962  02b7               L411:
 963                     ; 278   if (NewState != DISABLE)
 965  02b7 0d01          	tnz	(OFST+1,sp)
 966  02b9 2706          	jreq	L362
 967                     ; 281     I2C->CR2 |= I2C_CR2_STOP;
 969  02bb 72125211      	bset	21009,#1
 971  02bf 2004          	jra	L562
 972  02c1               L362:
 973                     ; 286     I2C->CR2 &= (uint8_t)(~I2C_CR2_STOP);
 975  02c1 72135211      	bres	21009,#1
 976  02c5               L562:
 977                     ; 288 }
 980  02c5 84            	pop	a
 981  02c6 81            	ret
1018                     ; 296 void I2C_SoftwareResetCmd(FunctionalState NewState)
1018                     ; 297 {
1019                     	switch	.text
1020  02c7               _I2C_SoftwareResetCmd:
1022  02c7 88            	push	a
1023       00000000      OFST:	set	0
1026                     ; 299   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1028  02c8 4d            	tnz	a
1029  02c9 2704          	jreq	L221
1030  02cb a101          	cp	a,#1
1031  02cd 2603          	jrne	L021
1032  02cf               L221:
1033  02cf 4f            	clr	a
1034  02d0 2010          	jra	L421
1035  02d2               L021:
1036  02d2 ae012b        	ldw	x,#299
1037  02d5 89            	pushw	x
1038  02d6 ae0000        	ldw	x,#0
1039  02d9 89            	pushw	x
1040  02da ae000c        	ldw	x,#L131
1041  02dd cd0000        	call	_assert_failed
1043  02e0 5b04          	addw	sp,#4
1044  02e2               L421:
1045                     ; 301   if (NewState != DISABLE)
1047  02e2 0d01          	tnz	(OFST+1,sp)
1048  02e4 2706          	jreq	L503
1049                     ; 304     I2C->CR2 |= I2C_CR2_SWRST;
1051  02e6 721e5211      	bset	21009,#7
1053  02ea 2004          	jra	L703
1054  02ec               L503:
1055                     ; 309     I2C->CR2 &= (uint8_t)(~I2C_CR2_SWRST);
1057  02ec 721f5211      	bres	21009,#7
1058  02f0               L703:
1059                     ; 311 }
1062  02f0 84            	pop	a
1063  02f1 81            	ret
1100                     ; 320 void I2C_StretchClockCmd(FunctionalState NewState)
1100                     ; 321 {
1101                     	switch	.text
1102  02f2               _I2C_StretchClockCmd:
1104  02f2 88            	push	a
1105       00000000      OFST:	set	0
1108                     ; 323   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1110  02f3 4d            	tnz	a
1111  02f4 2704          	jreq	L231
1112  02f6 a101          	cp	a,#1
1113  02f8 2603          	jrne	L031
1114  02fa               L231:
1115  02fa 4f            	clr	a
1116  02fb 2010          	jra	L431
1117  02fd               L031:
1118  02fd ae0143        	ldw	x,#323
1119  0300 89            	pushw	x
1120  0301 ae0000        	ldw	x,#0
1121  0304 89            	pushw	x
1122  0305 ae000c        	ldw	x,#L131
1123  0308 cd0000        	call	_assert_failed
1125  030b 5b04          	addw	sp,#4
1126  030d               L431:
1127                     ; 325   if (NewState != DISABLE)
1129  030d 0d01          	tnz	(OFST+1,sp)
1130  030f 2706          	jreq	L723
1131                     ; 328     I2C->CR1 &= (uint8_t)(~I2C_CR1_NOSTRETCH);
1133  0311 721f5210      	bres	21008,#7
1135  0315 2004          	jra	L133
1136  0317               L723:
1137                     ; 334     I2C->CR1 |= I2C_CR1_NOSTRETCH;
1139  0317 721e5210      	bset	21008,#7
1140  031b               L133:
1141                     ; 336 }
1144  031b 84            	pop	a
1145  031c 81            	ret
1182                     ; 345 void I2C_AcknowledgeConfig(I2C_Ack_TypeDef Ack)
1182                     ; 346 {
1183                     	switch	.text
1184  031d               _I2C_AcknowledgeConfig:
1186  031d 88            	push	a
1187       00000000      OFST:	set	0
1190                     ; 348   assert_param(IS_I2C_ACK_OK(Ack));
1192  031e 4d            	tnz	a
1193  031f 2708          	jreq	L241
1194  0321 a101          	cp	a,#1
1195  0323 2704          	jreq	L241
1196  0325 a102          	cp	a,#2
1197  0327 2603          	jrne	L041
1198  0329               L241:
1199  0329 4f            	clr	a
1200  032a 2010          	jra	L441
1201  032c               L041:
1202  032c ae015c        	ldw	x,#348
1203  032f 89            	pushw	x
1204  0330 ae0000        	ldw	x,#0
1205  0333 89            	pushw	x
1206  0334 ae000c        	ldw	x,#L131
1207  0337 cd0000        	call	_assert_failed
1209  033a 5b04          	addw	sp,#4
1210  033c               L441:
1211                     ; 350   if (Ack == I2C_ACK_NONE)
1213  033c 0d01          	tnz	(OFST+1,sp)
1214  033e 2606          	jrne	L153
1215                     ; 353     I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
1217  0340 72155211      	bres	21009,#2
1219  0344 2014          	jra	L353
1220  0346               L153:
1221                     ; 358     I2C->CR2 |= I2C_CR2_ACK;
1223  0346 72145211      	bset	21009,#2
1224                     ; 360     if (Ack == I2C_ACK_CURR)
1226  034a 7b01          	ld	a,(OFST+1,sp)
1227  034c a101          	cp	a,#1
1228  034e 2606          	jrne	L553
1229                     ; 363       I2C->CR2 &= (uint8_t)(~I2C_CR2_POS);
1231  0350 72175211      	bres	21009,#3
1233  0354 2004          	jra	L353
1234  0356               L553:
1235                     ; 368       I2C->CR2 |= I2C_CR2_POS;
1237  0356 72165211      	bset	21009,#3
1238  035a               L353:
1239                     ; 371 }
1242  035a 84            	pop	a
1243  035b 81            	ret
1316                     ; 381 void I2C_ITConfig(I2C_IT_TypeDef I2C_IT, FunctionalState NewState)
1316                     ; 382 {
1317                     	switch	.text
1318  035c               _I2C_ITConfig:
1320  035c 89            	pushw	x
1321       00000000      OFST:	set	0
1324                     ; 384   assert_param(IS_I2C_INTERRUPT_OK(I2C_IT));
1326  035d 9e            	ld	a,xh
1327  035e a101          	cp	a,#1
1328  0360 271e          	jreq	L251
1329  0362 9e            	ld	a,xh
1330  0363 a102          	cp	a,#2
1331  0365 2719          	jreq	L251
1332  0367 9e            	ld	a,xh
1333  0368 a104          	cp	a,#4
1334  036a 2714          	jreq	L251
1335  036c 9e            	ld	a,xh
1336  036d a103          	cp	a,#3
1337  036f 270f          	jreq	L251
1338  0371 9e            	ld	a,xh
1339  0372 a105          	cp	a,#5
1340  0374 270a          	jreq	L251
1341  0376 9e            	ld	a,xh
1342  0377 a106          	cp	a,#6
1343  0379 2705          	jreq	L251
1344  037b 9e            	ld	a,xh
1345  037c a107          	cp	a,#7
1346  037e 2603          	jrne	L051
1347  0380               L251:
1348  0380 4f            	clr	a
1349  0381 2010          	jra	L451
1350  0383               L051:
1351  0383 ae0180        	ldw	x,#384
1352  0386 89            	pushw	x
1353  0387 ae0000        	ldw	x,#0
1354  038a 89            	pushw	x
1355  038b ae000c        	ldw	x,#L131
1356  038e cd0000        	call	_assert_failed
1358  0391 5b04          	addw	sp,#4
1359  0393               L451:
1360                     ; 385   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1362  0393 0d02          	tnz	(OFST+2,sp)
1363  0395 2706          	jreq	L061
1364  0397 7b02          	ld	a,(OFST+2,sp)
1365  0399 a101          	cp	a,#1
1366  039b 2603          	jrne	L651
1367  039d               L061:
1368  039d 4f            	clr	a
1369  039e 2010          	jra	L261
1370  03a0               L651:
1371  03a0 ae0181        	ldw	x,#385
1372  03a3 89            	pushw	x
1373  03a4 ae0000        	ldw	x,#0
1374  03a7 89            	pushw	x
1375  03a8 ae000c        	ldw	x,#L131
1376  03ab cd0000        	call	_assert_failed
1378  03ae 5b04          	addw	sp,#4
1379  03b0               L261:
1380                     ; 387   if (NewState != DISABLE)
1382  03b0 0d02          	tnz	(OFST+2,sp)
1383  03b2 270a          	jreq	L514
1384                     ; 390     I2C->ITR |= (uint8_t)I2C_IT;
1386  03b4 c6521a        	ld	a,21018
1387  03b7 1a01          	or	a,(OFST+1,sp)
1388  03b9 c7521a        	ld	21018,a
1390  03bc 2009          	jra	L714
1391  03be               L514:
1392                     ; 395     I2C->ITR &= (uint8_t)(~(uint8_t)I2C_IT);
1394  03be 7b01          	ld	a,(OFST+1,sp)
1395  03c0 43            	cpl	a
1396  03c1 c4521a        	and	a,21018
1397  03c4 c7521a        	ld	21018,a
1398  03c7               L714:
1399                     ; 397 }
1402  03c7 85            	popw	x
1403  03c8 81            	ret
1440                     ; 405 void I2C_FastModeDutyCycleConfig(I2C_DutyCycle_TypeDef I2C_DutyCycle)
1440                     ; 406 {
1441                     	switch	.text
1442  03c9               _I2C_FastModeDutyCycleConfig:
1444  03c9 88            	push	a
1445       00000000      OFST:	set	0
1448                     ; 408   assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));
1450  03ca 4d            	tnz	a
1451  03cb 2704          	jreq	L071
1452  03cd a140          	cp	a,#64
1453  03cf 2603          	jrne	L661
1454  03d1               L071:
1455  03d1 4f            	clr	a
1456  03d2 2010          	jra	L271
1457  03d4               L661:
1458  03d4 ae0198        	ldw	x,#408
1459  03d7 89            	pushw	x
1460  03d8 ae0000        	ldw	x,#0
1461  03db 89            	pushw	x
1462  03dc ae000c        	ldw	x,#L131
1463  03df cd0000        	call	_assert_failed
1465  03e2 5b04          	addw	sp,#4
1466  03e4               L271:
1467                     ; 410   if (I2C_DutyCycle == I2C_DUTYCYCLE_16_9)
1469  03e4 7b01          	ld	a,(OFST+1,sp)
1470  03e6 a140          	cp	a,#64
1471  03e8 2606          	jrne	L734
1472                     ; 413     I2C->CCRH |= I2C_CCRH_DUTY;
1474  03ea 721c521c      	bset	21020,#6
1476  03ee 2004          	jra	L144
1477  03f0               L734:
1478                     ; 418     I2C->CCRH &= (uint8_t)(~I2C_CCRH_DUTY);
1480  03f0 721d521c      	bres	21020,#6
1481  03f4               L144:
1482                     ; 420 }
1485  03f4 84            	pop	a
1486  03f5 81            	ret
1509                     ; 427 uint8_t I2C_ReceiveData(void)
1509                     ; 428 {
1510                     	switch	.text
1511  03f6               _I2C_ReceiveData:
1515                     ; 430   return ((uint8_t)I2C->DR);
1517  03f6 c65216        	ld	a,21014
1520  03f9 81            	ret
1586                     ; 440 void I2C_Send7bitAddress(uint8_t Address, I2C_Direction_TypeDef Direction)
1586                     ; 441 {
1587                     	switch	.text
1588  03fa               _I2C_Send7bitAddress:
1590  03fa 89            	pushw	x
1591       00000000      OFST:	set	0
1594                     ; 443   assert_param(IS_I2C_ADDRESS_OK(Address));
1596  03fb 9e            	ld	a,xh
1597  03fc a501          	bcp	a,#1
1598  03fe 2603          	jrne	L002
1599  0400 4f            	clr	a
1600  0401 2010          	jra	L202
1601  0403               L002:
1602  0403 ae01bb        	ldw	x,#443
1603  0406 89            	pushw	x
1604  0407 ae0000        	ldw	x,#0
1605  040a 89            	pushw	x
1606  040b ae000c        	ldw	x,#L131
1607  040e cd0000        	call	_assert_failed
1609  0411 5b04          	addw	sp,#4
1610  0413               L202:
1611                     ; 444   assert_param(IS_I2C_DIRECTION_OK(Direction));
1613  0413 0d02          	tnz	(OFST+2,sp)
1614  0415 2706          	jreq	L602
1615  0417 7b02          	ld	a,(OFST+2,sp)
1616  0419 a101          	cp	a,#1
1617  041b 2603          	jrne	L402
1618  041d               L602:
1619  041d 4f            	clr	a
1620  041e 2010          	jra	L012
1621  0420               L402:
1622  0420 ae01bc        	ldw	x,#444
1623  0423 89            	pushw	x
1624  0424 ae0000        	ldw	x,#0
1625  0427 89            	pushw	x
1626  0428 ae000c        	ldw	x,#L131
1627  042b cd0000        	call	_assert_failed
1629  042e 5b04          	addw	sp,#4
1630  0430               L012:
1631                     ; 447   Address &= (uint8_t)0xFE;
1633  0430 7b01          	ld	a,(OFST+1,sp)
1634  0432 a4fe          	and	a,#254
1635  0434 6b01          	ld	(OFST+1,sp),a
1636                     ; 450   I2C->DR = (uint8_t)(Address | (uint8_t)Direction);
1638  0436 7b01          	ld	a,(OFST+1,sp)
1639  0438 1a02          	or	a,(OFST+2,sp)
1640  043a c75216        	ld	21014,a
1641                     ; 451 }
1644  043d 85            	popw	x
1645  043e 81            	ret
1679                     ; 458 void I2C_SendData(uint8_t Data)
1679                     ; 459 {
1680                     	switch	.text
1681  043f               _I2C_SendData:
1685                     ; 461   I2C->DR = Data;
1687  043f c75216        	ld	21014,a
1688                     ; 462 }
1691  0442 81            	ret
1916                     ; 578 ErrorStatus I2C_CheckEvent(I2C_Event_TypeDef I2C_Event)
1916                     ; 579 {
1917                     	switch	.text
1918  0443               _I2C_CheckEvent:
1920  0443 89            	pushw	x
1921  0444 5206          	subw	sp,#6
1922       00000006      OFST:	set	6
1925                     ; 580   __IO uint16_t lastevent = 0x00;
1927  0446 5f            	clrw	x
1928  0447 1f04          	ldw	(OFST-2,sp),x
1930                     ; 581   uint8_t flag1 = 0x00 ;
1932                     ; 582   uint8_t flag2 = 0x00;
1934                     ; 583   ErrorStatus status = ERROR;
1936                     ; 586   assert_param(IS_I2C_EVENT_OK(I2C_Event));
1938  0449 1e07          	ldw	x,(OFST+1,sp)
1939  044b a30682        	cpw	x,#1666
1940  044e 2769          	jreq	L022
1941  0450 1e07          	ldw	x,(OFST+1,sp)
1942  0452 a30202        	cpw	x,#514
1943  0455 2762          	jreq	L022
1944  0457 1e07          	ldw	x,(OFST+1,sp)
1945  0459 a31200        	cpw	x,#4608
1946  045c 275b          	jreq	L022
1947  045e 1e07          	ldw	x,(OFST+1,sp)
1948  0460 a30240        	cpw	x,#576
1949  0463 2754          	jreq	L022
1950  0465 1e07          	ldw	x,(OFST+1,sp)
1951  0467 a30350        	cpw	x,#848
1952  046a 274d          	jreq	L022
1953  046c 1e07          	ldw	x,(OFST+1,sp)
1954  046e a30684        	cpw	x,#1668
1955  0471 2746          	jreq	L022
1956  0473 1e07          	ldw	x,(OFST+1,sp)
1957  0475 a30794        	cpw	x,#1940
1958  0478 273f          	jreq	L022
1959  047a 1e07          	ldw	x,(OFST+1,sp)
1960  047c a30004        	cpw	x,#4
1961  047f 2738          	jreq	L022
1962  0481 1e07          	ldw	x,(OFST+1,sp)
1963  0483 a30010        	cpw	x,#16
1964  0486 2731          	jreq	L022
1965  0488 1e07          	ldw	x,(OFST+1,sp)
1966  048a a30301        	cpw	x,#769
1967  048d 272a          	jreq	L022
1968  048f 1e07          	ldw	x,(OFST+1,sp)
1969  0491 a30782        	cpw	x,#1922
1970  0494 2723          	jreq	L022
1971  0496 1e07          	ldw	x,(OFST+1,sp)
1972  0498 a30302        	cpw	x,#770
1973  049b 271c          	jreq	L022
1974  049d 1e07          	ldw	x,(OFST+1,sp)
1975  049f a30340        	cpw	x,#832
1976  04a2 2715          	jreq	L022
1977  04a4 1e07          	ldw	x,(OFST+1,sp)
1978  04a6 a30784        	cpw	x,#1924
1979  04a9 270e          	jreq	L022
1980  04ab 1e07          	ldw	x,(OFST+1,sp)
1981  04ad a30780        	cpw	x,#1920
1982  04b0 2707          	jreq	L022
1983  04b2 1e07          	ldw	x,(OFST+1,sp)
1984  04b4 a30308        	cpw	x,#776
1985  04b7 2603          	jrne	L612
1986  04b9               L022:
1987  04b9 4f            	clr	a
1988  04ba 2010          	jra	L222
1989  04bc               L612:
1990  04bc ae024a        	ldw	x,#586
1991  04bf 89            	pushw	x
1992  04c0 ae0000        	ldw	x,#0
1993  04c3 89            	pushw	x
1994  04c4 ae000c        	ldw	x,#L131
1995  04c7 cd0000        	call	_assert_failed
1997  04ca 5b04          	addw	sp,#4
1998  04cc               L222:
1999                     ; 588   if (I2C_Event == I2C_EVENT_SLAVE_ACK_FAILURE)
2001  04cc 1e07          	ldw	x,(OFST+1,sp)
2002  04ce a30004        	cpw	x,#4
2003  04d1 260b          	jrne	L336
2004                     ; 590     lastevent = I2C->SR2 & I2C_SR2_AF;
2006  04d3 c65218        	ld	a,21016
2007  04d6 a404          	and	a,#4
2008  04d8 5f            	clrw	x
2009  04d9 97            	ld	xl,a
2010  04da 1f04          	ldw	(OFST-2,sp),x
2013  04dc 201f          	jra	L536
2014  04de               L336:
2015                     ; 594     flag1 = I2C->SR1;
2017  04de c65217        	ld	a,21015
2018  04e1 6b03          	ld	(OFST-3,sp),a
2020                     ; 595     flag2 = I2C->SR3;
2022  04e3 c65219        	ld	a,21017
2023  04e6 6b06          	ld	(OFST+0,sp),a
2025                     ; 596     lastevent = ((uint16_t)((uint16_t)flag2 << (uint16_t)8) | (uint16_t)flag1);
2027  04e8 7b03          	ld	a,(OFST-3,sp)
2028  04ea 5f            	clrw	x
2029  04eb 97            	ld	xl,a
2030  04ec 1f01          	ldw	(OFST-5,sp),x
2032  04ee 7b06          	ld	a,(OFST+0,sp)
2033  04f0 5f            	clrw	x
2034  04f1 97            	ld	xl,a
2035  04f2 4f            	clr	a
2036  04f3 02            	rlwa	x,a
2037  04f4 01            	rrwa	x,a
2038  04f5 1a02          	or	a,(OFST-4,sp)
2039  04f7 01            	rrwa	x,a
2040  04f8 1a01          	or	a,(OFST-5,sp)
2041  04fa 01            	rrwa	x,a
2042  04fb 1f04          	ldw	(OFST-2,sp),x
2044  04fd               L536:
2045                     ; 599   if (((uint16_t)lastevent & (uint16_t)I2C_Event) == (uint16_t)I2C_Event)
2047  04fd 1e04          	ldw	x,(OFST-2,sp)
2048  04ff 01            	rrwa	x,a
2049  0500 1408          	and	a,(OFST+2,sp)
2050  0502 01            	rrwa	x,a
2051  0503 1407          	and	a,(OFST+1,sp)
2052  0505 01            	rrwa	x,a
2053  0506 1307          	cpw	x,(OFST+1,sp)
2054  0508 2606          	jrne	L736
2055                     ; 602     status = SUCCESS;
2057  050a a601          	ld	a,#1
2058  050c 6b06          	ld	(OFST+0,sp),a
2061  050e 2002          	jra	L146
2062  0510               L736:
2063                     ; 607     status = ERROR;
2065  0510 0f06          	clr	(OFST+0,sp)
2067  0512               L146:
2068                     ; 611   return status;
2070  0512 7b06          	ld	a,(OFST+0,sp)
2073  0514 5b08          	addw	sp,#8
2074  0516 81            	ret
2127                     ; 628 I2C_Event_TypeDef I2C_GetLastEvent(void)
2127                     ; 629 {
2128                     	switch	.text
2129  0517               _I2C_GetLastEvent:
2131  0517 5206          	subw	sp,#6
2132       00000006      OFST:	set	6
2135                     ; 630   __IO uint16_t lastevent = 0;
2137  0519 5f            	clrw	x
2138  051a 1f05          	ldw	(OFST-1,sp),x
2140                     ; 631   uint16_t flag1 = 0;
2142                     ; 632   uint16_t flag2 = 0;
2144                     ; 634   if ((I2C->SR2 & I2C_SR2_AF) != 0x00)
2146  051c c65218        	ld	a,21016
2147  051f a504          	bcp	a,#4
2148  0521 2707          	jreq	L176
2149                     ; 636     lastevent = I2C_EVENT_SLAVE_ACK_FAILURE;
2151  0523 ae0004        	ldw	x,#4
2152  0526 1f05          	ldw	(OFST-1,sp),x
2155  0528 201b          	jra	L376
2156  052a               L176:
2157                     ; 641     flag1 = I2C->SR1;
2159  052a c65217        	ld	a,21015
2160  052d 5f            	clrw	x
2161  052e 97            	ld	xl,a
2162  052f 1f01          	ldw	(OFST-5,sp),x
2164                     ; 642     flag2 = I2C->SR3;
2166  0531 c65219        	ld	a,21017
2167  0534 5f            	clrw	x
2168  0535 97            	ld	xl,a
2169  0536 1f03          	ldw	(OFST-3,sp),x
2171                     ; 645     lastevent = ((uint16_t)((uint16_t)flag2 << 8) | (uint16_t)flag1);
2173  0538 1e03          	ldw	x,(OFST-3,sp)
2174  053a 4f            	clr	a
2175  053b 02            	rlwa	x,a
2176  053c 01            	rrwa	x,a
2177  053d 1a02          	or	a,(OFST-4,sp)
2178  053f 01            	rrwa	x,a
2179  0540 1a01          	or	a,(OFST-5,sp)
2180  0542 01            	rrwa	x,a
2181  0543 1f05          	ldw	(OFST-1,sp),x
2183  0545               L376:
2184                     ; 648   return (I2C_Event_TypeDef)lastevent;
2186  0545 1e05          	ldw	x,(OFST-1,sp)
2189  0547 5b06          	addw	sp,#6
2190  0549 81            	ret
2406                     ; 679 FlagStatus I2C_GetFlagStatus(I2C_Flag_TypeDef I2C_Flag)
2406                     ; 680 {
2407                     	switch	.text
2408  054a               _I2C_GetFlagStatus:
2410  054a 89            	pushw	x
2411  054b 89            	pushw	x
2412       00000002      OFST:	set	2
2415                     ; 681   uint8_t tempreg = 0;
2417  054c 0f02          	clr	(OFST+0,sp)
2419                     ; 682   uint8_t regindex = 0;
2421                     ; 683   FlagStatus bitstatus = RESET;
2423                     ; 686   assert_param(IS_I2C_FLAG_OK(I2C_Flag));
2425  054e a30180        	cpw	x,#384
2426  0551 274b          	jreq	L232
2427  0553 a30140        	cpw	x,#320
2428  0556 2746          	jreq	L232
2429  0558 a30110        	cpw	x,#272
2430  055b 2741          	jreq	L232
2431  055d a30108        	cpw	x,#264
2432  0560 273c          	jreq	L232
2433  0562 a30104        	cpw	x,#260
2434  0565 2737          	jreq	L232
2435  0567 a30102        	cpw	x,#258
2436  056a 2732          	jreq	L232
2437  056c a30101        	cpw	x,#257
2438  056f 272d          	jreq	L232
2439  0571 a30220        	cpw	x,#544
2440  0574 2728          	jreq	L232
2441  0576 a30208        	cpw	x,#520
2442  0579 2723          	jreq	L232
2443  057b a30204        	cpw	x,#516
2444  057e 271e          	jreq	L232
2445  0580 a30202        	cpw	x,#514
2446  0583 2719          	jreq	L232
2447  0585 a30201        	cpw	x,#513
2448  0588 2714          	jreq	L232
2449  058a a30310        	cpw	x,#784
2450  058d 270f          	jreq	L232
2451  058f a30304        	cpw	x,#772
2452  0592 270a          	jreq	L232
2453  0594 a30302        	cpw	x,#770
2454  0597 2705          	jreq	L232
2455  0599 a30301        	cpw	x,#769
2456  059c 2603          	jrne	L032
2457  059e               L232:
2458  059e 4f            	clr	a
2459  059f 2010          	jra	L432
2460  05a1               L032:
2461  05a1 ae02ae        	ldw	x,#686
2462  05a4 89            	pushw	x
2463  05a5 ae0000        	ldw	x,#0
2464  05a8 89            	pushw	x
2465  05a9 ae000c        	ldw	x,#L131
2466  05ac cd0000        	call	_assert_failed
2468  05af 5b04          	addw	sp,#4
2469  05b1               L432:
2470                     ; 689   regindex = (uint8_t)((uint16_t)I2C_Flag >> 8);
2472  05b1 7b03          	ld	a,(OFST+1,sp)
2473  05b3 6b01          	ld	(OFST-1,sp),a
2475                     ; 691   switch (regindex)
2477  05b5 7b01          	ld	a,(OFST-1,sp)
2479                     ; 708     default:
2479                     ; 709       break;
2480  05b7 4a            	dec	a
2481  05b8 2708          	jreq	L576
2482  05ba 4a            	dec	a
2483  05bb 270c          	jreq	L776
2484  05bd 4a            	dec	a
2485  05be 2710          	jreq	L107
2486  05c0 2013          	jra	L5101
2487  05c2               L576:
2488                     ; 694     case 0x01:
2488                     ; 695       tempreg = (uint8_t)I2C->SR1;
2490  05c2 c65217        	ld	a,21015
2491  05c5 6b02          	ld	(OFST+0,sp),a
2493                     ; 696       break;
2495  05c7 200c          	jra	L5101
2496  05c9               L776:
2497                     ; 699     case 0x02:
2497                     ; 700       tempreg = (uint8_t)I2C->SR2;
2499  05c9 c65218        	ld	a,21016
2500  05cc 6b02          	ld	(OFST+0,sp),a
2502                     ; 701       break;
2504  05ce 2005          	jra	L5101
2505  05d0               L107:
2506                     ; 704     case 0x03:
2506                     ; 705       tempreg = (uint8_t)I2C->SR3;
2508  05d0 c65219        	ld	a,21017
2509  05d3 6b02          	ld	(OFST+0,sp),a
2511                     ; 706       break;
2513  05d5               L307:
2514                     ; 708     default:
2514                     ; 709       break;
2516  05d5               L5101:
2517                     ; 713   if ((tempreg & (uint8_t)I2C_Flag ) != 0)
2519  05d5 7b04          	ld	a,(OFST+2,sp)
2520  05d7 1502          	bcp	a,(OFST+0,sp)
2521  05d9 2706          	jreq	L7101
2522                     ; 716     bitstatus = SET;
2524  05db a601          	ld	a,#1
2525  05dd 6b02          	ld	(OFST+0,sp),a
2528  05df 2002          	jra	L1201
2529  05e1               L7101:
2530                     ; 721     bitstatus = RESET;
2532  05e1 0f02          	clr	(OFST+0,sp)
2534  05e3               L1201:
2535                     ; 724   return bitstatus;
2537  05e3 7b02          	ld	a,(OFST+0,sp)
2540  05e5 5b04          	addw	sp,#4
2541  05e7 81            	ret
2586                     ; 759 void I2C_ClearFlag(I2C_Flag_TypeDef I2C_FLAG)
2586                     ; 760 {
2587                     	switch	.text
2588  05e8               _I2C_ClearFlag:
2590  05e8 89            	pushw	x
2591  05e9 89            	pushw	x
2592       00000002      OFST:	set	2
2595                     ; 761   uint16_t flagpos = 0;
2597                     ; 763   assert_param(IS_I2C_CLEAR_FLAG_OK(I2C_FLAG));
2599  05ea 01            	rrwa	x,a
2600  05eb 9f            	ld	a,xl
2601  05ec a4fd          	and	a,#253
2602  05ee 97            	ld	xl,a
2603  05ef 4f            	clr	a
2604  05f0 02            	rlwa	x,a
2605  05f1 5d            	tnzw	x
2606  05f2 2607          	jrne	L042
2607  05f4 1e03          	ldw	x,(OFST+1,sp)
2608  05f6 2703          	jreq	L042
2609  05f8 4f            	clr	a
2610  05f9 2010          	jra	L242
2611  05fb               L042:
2612  05fb ae02fb        	ldw	x,#763
2613  05fe 89            	pushw	x
2614  05ff ae0000        	ldw	x,#0
2615  0602 89            	pushw	x
2616  0603 ae000c        	ldw	x,#L131
2617  0606 cd0000        	call	_assert_failed
2619  0609 5b04          	addw	sp,#4
2620  060b               L242:
2621                     ; 766   flagpos = (uint16_t)I2C_FLAG & FLAG_Mask;
2623  060b 7b03          	ld	a,(OFST+1,sp)
2624  060d 97            	ld	xl,a
2625  060e 7b04          	ld	a,(OFST+2,sp)
2626  0610 a4ff          	and	a,#255
2627  0612 5f            	clrw	x
2628  0613 02            	rlwa	x,a
2629  0614 1f01          	ldw	(OFST-1,sp),x
2630  0616 01            	rrwa	x,a
2632                     ; 768   I2C->SR2 = (uint8_t)((uint16_t)(~flagpos));
2634  0617 7b02          	ld	a,(OFST+0,sp)
2635  0619 43            	cpl	a
2636  061a c75218        	ld	21016,a
2637                     ; 769 }
2640  061d 5b04          	addw	sp,#4
2641  061f 81            	ret
2808                     ; 791 ITStatus I2C_GetITStatus(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
2808                     ; 792 {
2809                     	switch	.text
2810  0620               _I2C_GetITStatus:
2812  0620 89            	pushw	x
2813  0621 5204          	subw	sp,#4
2814       00000004      OFST:	set	4
2817                     ; 793   ITStatus bitstatus = RESET;
2819                     ; 794   __IO uint8_t enablestatus = 0;
2821  0623 0f03          	clr	(OFST-1,sp)
2823                     ; 795   uint16_t tempregister = 0;
2825                     ; 798     assert_param(IS_I2C_ITPENDINGBIT_OK(I2C_ITPendingBit));
2827  0625 a31680        	cpw	x,#5760
2828  0628 2737          	jreq	L052
2829  062a a31640        	cpw	x,#5696
2830  062d 2732          	jreq	L052
2831  062f a31210        	cpw	x,#4624
2832  0632 272d          	jreq	L052
2833  0634 a31208        	cpw	x,#4616
2834  0637 2728          	jreq	L052
2835  0639 a31204        	cpw	x,#4612
2836  063c 2723          	jreq	L052
2837  063e a31202        	cpw	x,#4610
2838  0641 271e          	jreq	L052
2839  0643 a31201        	cpw	x,#4609
2840  0646 2719          	jreq	L052
2841  0648 a32220        	cpw	x,#8736
2842  064b 2714          	jreq	L052
2843  064d a32108        	cpw	x,#8456
2844  0650 270f          	jreq	L052
2845  0652 a32104        	cpw	x,#8452
2846  0655 270a          	jreq	L052
2847  0657 a32102        	cpw	x,#8450
2848  065a 2705          	jreq	L052
2849  065c a32101        	cpw	x,#8449
2850  065f 2603          	jrne	L642
2851  0661               L052:
2852  0661 4f            	clr	a
2853  0662 2010          	jra	L252
2854  0664               L642:
2855  0664 ae031e        	ldw	x,#798
2856  0667 89            	pushw	x
2857  0668 ae0000        	ldw	x,#0
2858  066b 89            	pushw	x
2859  066c ae000c        	ldw	x,#L131
2860  066f cd0000        	call	_assert_failed
2862  0672 5b04          	addw	sp,#4
2863  0674               L252:
2864                     ; 800   tempregister = (uint8_t)( ((uint16_t)((uint16_t)I2C_ITPendingBit & ITEN_Mask)) >> 8);
2866  0674 7b05          	ld	a,(OFST+1,sp)
2867  0676 a407          	and	a,#7
2868  0678 5f            	clrw	x
2869  0679 97            	ld	xl,a
2870  067a 1f01          	ldw	(OFST-3,sp),x
2872                     ; 803   enablestatus = (uint8_t)(I2C->ITR & ( uint8_t)tempregister);
2874  067c c6521a        	ld	a,21018
2875  067f 1402          	and	a,(OFST-2,sp)
2876  0681 6b03          	ld	(OFST-1,sp),a
2878                     ; 805   if ((uint16_t)((uint16_t)I2C_ITPendingBit & REGISTER_Mask) == REGISTER_SR1_Index)
2880  0683 7b05          	ld	a,(OFST+1,sp)
2881  0685 97            	ld	xl,a
2882  0686 7b06          	ld	a,(OFST+2,sp)
2883  0688 9f            	ld	a,xl
2884  0689 a430          	and	a,#48
2885  068b 97            	ld	xl,a
2886  068c 4f            	clr	a
2887  068d 02            	rlwa	x,a
2888  068e a30100        	cpw	x,#256
2889  0691 2615          	jrne	L3311
2890                     ; 808     if (((I2C->SR1 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
2892  0693 c65217        	ld	a,21015
2893  0696 1506          	bcp	a,(OFST+2,sp)
2894  0698 270a          	jreq	L5311
2896  069a 0d03          	tnz	(OFST-1,sp)
2897  069c 2706          	jreq	L5311
2898                     ; 811       bitstatus = SET;
2900  069e a601          	ld	a,#1
2901  06a0 6b04          	ld	(OFST+0,sp),a
2904  06a2 2017          	jra	L1411
2905  06a4               L5311:
2906                     ; 816       bitstatus = RESET;
2908  06a4 0f04          	clr	(OFST+0,sp)
2910  06a6 2013          	jra	L1411
2911  06a8               L3311:
2912                     ; 822     if (((I2C->SR2 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
2914  06a8 c65218        	ld	a,21016
2915  06ab 1506          	bcp	a,(OFST+2,sp)
2916  06ad 270a          	jreq	L3411
2918  06af 0d03          	tnz	(OFST-1,sp)
2919  06b1 2706          	jreq	L3411
2920                     ; 825       bitstatus = SET;
2922  06b3 a601          	ld	a,#1
2923  06b5 6b04          	ld	(OFST+0,sp),a
2926  06b7 2002          	jra	L1411
2927  06b9               L3411:
2928                     ; 830       bitstatus = RESET;
2930  06b9 0f04          	clr	(OFST+0,sp)
2932  06bb               L1411:
2933                     ; 834   return  bitstatus;
2935  06bb 7b04          	ld	a,(OFST+0,sp)
2938  06bd 5b06          	addw	sp,#6
2939  06bf 81            	ret
2985                     ; 871 void I2C_ClearITPendingBit(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
2985                     ; 872 {
2986                     	switch	.text
2987  06c0               _I2C_ClearITPendingBit:
2989  06c0 89            	pushw	x
2990  06c1 89            	pushw	x
2991       00000002      OFST:	set	2
2994                     ; 873   uint16_t flagpos = 0;
2996                     ; 876   assert_param(IS_I2C_CLEAR_ITPENDINGBIT_OK(I2C_ITPendingBit));
2998  06c2 a32220        	cpw	x,#8736
2999  06c5 2714          	jreq	L062
3000  06c7 a32108        	cpw	x,#8456
3001  06ca 270f          	jreq	L062
3002  06cc a32104        	cpw	x,#8452
3003  06cf 270a          	jreq	L062
3004  06d1 a32102        	cpw	x,#8450
3005  06d4 2705          	jreq	L062
3006  06d6 a32101        	cpw	x,#8449
3007  06d9 2603          	jrne	L652
3008  06db               L062:
3009  06db 4f            	clr	a
3010  06dc 2010          	jra	L262
3011  06de               L652:
3012  06de ae036c        	ldw	x,#876
3013  06e1 89            	pushw	x
3014  06e2 ae0000        	ldw	x,#0
3015  06e5 89            	pushw	x
3016  06e6 ae000c        	ldw	x,#L131
3017  06e9 cd0000        	call	_assert_failed
3019  06ec 5b04          	addw	sp,#4
3020  06ee               L262:
3021                     ; 879   flagpos = (uint16_t)I2C_ITPendingBit & FLAG_Mask;
3023  06ee 7b03          	ld	a,(OFST+1,sp)
3024  06f0 97            	ld	xl,a
3025  06f1 7b04          	ld	a,(OFST+2,sp)
3026  06f3 a4ff          	and	a,#255
3027  06f5 5f            	clrw	x
3028  06f6 02            	rlwa	x,a
3029  06f7 1f01          	ldw	(OFST-1,sp),x
3030  06f9 01            	rrwa	x,a
3032                     ; 882   I2C->SR2 = (uint8_t)((uint16_t)~flagpos);
3034  06fa 7b02          	ld	a,(OFST+0,sp)
3035  06fc 43            	cpl	a
3036  06fd c75218        	ld	21016,a
3037                     ; 883 }
3040  0700 5b04          	addw	sp,#4
3041  0702 81            	ret
3054                     	xdef	_I2C_ClearITPendingBit
3055                     	xdef	_I2C_GetITStatus
3056                     	xdef	_I2C_ClearFlag
3057                     	xdef	_I2C_GetFlagStatus
3058                     	xdef	_I2C_GetLastEvent
3059                     	xdef	_I2C_CheckEvent
3060                     	xdef	_I2C_SendData
3061                     	xdef	_I2C_Send7bitAddress
3062                     	xdef	_I2C_ReceiveData
3063                     	xdef	_I2C_ITConfig
3064                     	xdef	_I2C_FastModeDutyCycleConfig
3065                     	xdef	_I2C_AcknowledgeConfig
3066                     	xdef	_I2C_StretchClockCmd
3067                     	xdef	_I2C_SoftwareResetCmd
3068                     	xdef	_I2C_GenerateSTOP
3069                     	xdef	_I2C_GenerateSTART
3070                     	xdef	_I2C_GeneralCallCmd
3071                     	xdef	_I2C_Cmd
3072                     	xdef	_I2C_Init
3073                     	xdef	_I2C_DeInit
3074                     	xref	_assert_failed
3075                     	switch	.const
3076  000c               L131:
3077  000c 2e2e5c6c6962  	dc.b	"..\libs\src\stm8s_"
3078  001e 6932632e6300  	dc.b	"i2c.c",0
3079                     	xref.b	c_lreg
3080                     	xref.b	c_x
3100                     	xref	c_sdivx
3101                     	xref	c_ludv
3102                     	xref	c_rtol
3103                     	xref	c_smul
3104                     	xref	c_lmul
3105                     	xref	c_lcmp
3106                     	xref	c_ltor
3107                     	xref	c_lzmp
3108                     	end
