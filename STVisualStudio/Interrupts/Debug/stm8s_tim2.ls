   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
  43                     ; 52 void TIM2_DeInit(void)
  43                     ; 53 {
  45                     	switch	.text
  46  0000               _TIM2_DeInit:
  50                     ; 54   TIM2->CR1 = (uint8_t)TIM2_CR1_RESET_VALUE;
  52  0000 725f5300      	clr	21248
  53                     ; 55   TIM2->IER = (uint8_t)TIM2_IER_RESET_VALUE;
  55  0004 725f5303      	clr	21251
  56                     ; 56   TIM2->SR2 = (uint8_t)TIM2_SR2_RESET_VALUE;
  58  0008 725f5305      	clr	21253
  59                     ; 59   TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  61  000c 725f530a      	clr	21258
  62                     ; 60   TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  64  0010 725f530b      	clr	21259
  65                     ; 64   TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  67  0014 725f530a      	clr	21258
  68                     ; 65   TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  70  0018 725f530b      	clr	21259
  71                     ; 66   TIM2->CCMR1 = (uint8_t)TIM2_CCMR1_RESET_VALUE;
  73  001c 725f5307      	clr	21255
  74                     ; 67   TIM2->CCMR2 = (uint8_t)TIM2_CCMR2_RESET_VALUE;
  76  0020 725f5308      	clr	21256
  77                     ; 68   TIM2->CCMR3 = (uint8_t)TIM2_CCMR3_RESET_VALUE;
  79  0024 725f5309      	clr	21257
  80                     ; 69   TIM2->CNTRH = (uint8_t)TIM2_CNTRH_RESET_VALUE;
  82  0028 725f530c      	clr	21260
  83                     ; 70   TIM2->CNTRL = (uint8_t)TIM2_CNTRL_RESET_VALUE;
  85  002c 725f530d      	clr	21261
  86                     ; 71   TIM2->PSCR = (uint8_t)TIM2_PSCR_RESET_VALUE;
  88  0030 725f530e      	clr	21262
  89                     ; 72   TIM2->ARRH  = (uint8_t)TIM2_ARRH_RESET_VALUE;
  91  0034 35ff530f      	mov	21263,#255
  92                     ; 73   TIM2->ARRL  = (uint8_t)TIM2_ARRL_RESET_VALUE;
  94  0038 35ff5310      	mov	21264,#255
  95                     ; 74   TIM2->CCR1H = (uint8_t)TIM2_CCR1H_RESET_VALUE;
  97  003c 725f5311      	clr	21265
  98                     ; 75   TIM2->CCR1L = (uint8_t)TIM2_CCR1L_RESET_VALUE;
 100  0040 725f5312      	clr	21266
 101                     ; 76   TIM2->CCR2H = (uint8_t)TIM2_CCR2H_RESET_VALUE;
 103  0044 725f5313      	clr	21267
 104                     ; 77   TIM2->CCR2L = (uint8_t)TIM2_CCR2L_RESET_VALUE;
 106  0048 725f5314      	clr	21268
 107                     ; 78   TIM2->CCR3H = (uint8_t)TIM2_CCR3H_RESET_VALUE;
 109  004c 725f5315      	clr	21269
 110                     ; 79   TIM2->CCR3L = (uint8_t)TIM2_CCR3L_RESET_VALUE;
 112  0050 725f5316      	clr	21270
 113                     ; 80   TIM2->SR1 = (uint8_t)TIM2_SR1_RESET_VALUE;
 115  0054 725f5304      	clr	21252
 116                     ; 81 }
 119  0058 81            	ret
 287                     ; 89 void TIM2_TimeBaseInit( TIM2_Prescaler_TypeDef TIM2_Prescaler,
 287                     ; 90                         uint16_t TIM2_Period)
 287                     ; 91 {
 288                     	switch	.text
 289  0059               _TIM2_TimeBaseInit:
 291  0059 88            	push	a
 292       00000000      OFST:	set	0
 295                     ; 93   TIM2->PSCR = (uint8_t)(TIM2_Prescaler);
 297  005a c7530e        	ld	21262,a
 298                     ; 95   TIM2->ARRH = (uint8_t)(TIM2_Period >> 8);
 300  005d 7b04          	ld	a,(OFST+4,sp)
 301  005f c7530f        	ld	21263,a
 302                     ; 96   TIM2->ARRL = (uint8_t)(TIM2_Period);
 304  0062 7b05          	ld	a,(OFST+5,sp)
 305  0064 c75310        	ld	21264,a
 306                     ; 97 }
 309  0067 84            	pop	a
 310  0068 81            	ret
 468                     ; 108 void TIM2_OC1Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 468                     ; 109                   TIM2_OutputState_TypeDef TIM2_OutputState,
 468                     ; 110                   uint16_t TIM2_Pulse,
 468                     ; 111                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 468                     ; 112 {
 469                     	switch	.text
 470  0069               _TIM2_OC1Init:
 472  0069 89            	pushw	x
 473  006a 88            	push	a
 474       00000001      OFST:	set	1
 477                     ; 114   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 479  006b 9e            	ld	a,xh
 480  006c 4d            	tnz	a
 481  006d 2719          	jreq	L41
 482  006f 9e            	ld	a,xh
 483  0070 a110          	cp	a,#16
 484  0072 2714          	jreq	L41
 485  0074 9e            	ld	a,xh
 486  0075 a120          	cp	a,#32
 487  0077 270f          	jreq	L41
 488  0079 9e            	ld	a,xh
 489  007a a130          	cp	a,#48
 490  007c 270a          	jreq	L41
 491  007e 9e            	ld	a,xh
 492  007f a160          	cp	a,#96
 493  0081 2705          	jreq	L41
 494  0083 9e            	ld	a,xh
 495  0084 a170          	cp	a,#112
 496  0086 2603          	jrne	L21
 497  0088               L41:
 498  0088 4f            	clr	a
 499  0089 2010          	jra	L61
 500  008b               L21:
 501  008b ae0072        	ldw	x,#114
 502  008e 89            	pushw	x
 503  008f ae0000        	ldw	x,#0
 504  0092 89            	pushw	x
 505  0093 ae0000        	ldw	x,#L702
 506  0096 cd0000        	call	_assert_failed
 508  0099 5b04          	addw	sp,#4
 509  009b               L61:
 510                     ; 115   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 512  009b 0d03          	tnz	(OFST+2,sp)
 513  009d 2706          	jreq	L22
 514  009f 7b03          	ld	a,(OFST+2,sp)
 515  00a1 a111          	cp	a,#17
 516  00a3 2603          	jrne	L02
 517  00a5               L22:
 518  00a5 4f            	clr	a
 519  00a6 2010          	jra	L42
 520  00a8               L02:
 521  00a8 ae0073        	ldw	x,#115
 522  00ab 89            	pushw	x
 523  00ac ae0000        	ldw	x,#0
 524  00af 89            	pushw	x
 525  00b0 ae0000        	ldw	x,#L702
 526  00b3 cd0000        	call	_assert_failed
 528  00b6 5b04          	addw	sp,#4
 529  00b8               L42:
 530                     ; 116   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 532  00b8 0d08          	tnz	(OFST+7,sp)
 533  00ba 2706          	jreq	L03
 534  00bc 7b08          	ld	a,(OFST+7,sp)
 535  00be a122          	cp	a,#34
 536  00c0 2603          	jrne	L62
 537  00c2               L03:
 538  00c2 4f            	clr	a
 539  00c3 2010          	jra	L23
 540  00c5               L62:
 541  00c5 ae0074        	ldw	x,#116
 542  00c8 89            	pushw	x
 543  00c9 ae0000        	ldw	x,#0
 544  00cc 89            	pushw	x
 545  00cd ae0000        	ldw	x,#L702
 546  00d0 cd0000        	call	_assert_failed
 548  00d3 5b04          	addw	sp,#4
 549  00d5               L23:
 550                     ; 119   TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC1E | TIM2_CCER1_CC1P));
 552  00d5 c6530a        	ld	a,21258
 553  00d8 a4fc          	and	a,#252
 554  00da c7530a        	ld	21258,a
 555                     ; 121   TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER1_CC1E ) | 
 555                     ; 122                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC1P));
 557  00dd 7b08          	ld	a,(OFST+7,sp)
 558  00df a402          	and	a,#2
 559  00e1 6b01          	ld	(OFST+0,sp),a
 561  00e3 7b03          	ld	a,(OFST+2,sp)
 562  00e5 a401          	and	a,#1
 563  00e7 1a01          	or	a,(OFST+0,sp)
 564  00e9 ca530a        	or	a,21258
 565  00ec c7530a        	ld	21258,a
 566                     ; 125   TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM)) |
 566                     ; 126                           (uint8_t)TIM2_OCMode);
 568  00ef c65307        	ld	a,21255
 569  00f2 a48f          	and	a,#143
 570  00f4 1a02          	or	a,(OFST+1,sp)
 571  00f6 c75307        	ld	21255,a
 572                     ; 129   TIM2->CCR1H = (uint8_t)(TIM2_Pulse >> 8);
 574  00f9 7b06          	ld	a,(OFST+5,sp)
 575  00fb c75311        	ld	21265,a
 576                     ; 130   TIM2->CCR1L = (uint8_t)(TIM2_Pulse);
 578  00fe 7b07          	ld	a,(OFST+6,sp)
 579  0100 c75312        	ld	21266,a
 580                     ; 131 }
 583  0103 5b03          	addw	sp,#3
 584  0105 81            	ret
 649                     ; 142 void TIM2_OC2Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 649                     ; 143                   TIM2_OutputState_TypeDef TIM2_OutputState,
 649                     ; 144                   uint16_t TIM2_Pulse,
 649                     ; 145                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 649                     ; 146 {
 650                     	switch	.text
 651  0106               _TIM2_OC2Init:
 653  0106 89            	pushw	x
 654  0107 88            	push	a
 655       00000001      OFST:	set	1
 658                     ; 148   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 660  0108 9e            	ld	a,xh
 661  0109 4d            	tnz	a
 662  010a 2719          	jreq	L04
 663  010c 9e            	ld	a,xh
 664  010d a110          	cp	a,#16
 665  010f 2714          	jreq	L04
 666  0111 9e            	ld	a,xh
 667  0112 a120          	cp	a,#32
 668  0114 270f          	jreq	L04
 669  0116 9e            	ld	a,xh
 670  0117 a130          	cp	a,#48
 671  0119 270a          	jreq	L04
 672  011b 9e            	ld	a,xh
 673  011c a160          	cp	a,#96
 674  011e 2705          	jreq	L04
 675  0120 9e            	ld	a,xh
 676  0121 a170          	cp	a,#112
 677  0123 2603          	jrne	L63
 678  0125               L04:
 679  0125 4f            	clr	a
 680  0126 2010          	jra	L24
 681  0128               L63:
 682  0128 ae0094        	ldw	x,#148
 683  012b 89            	pushw	x
 684  012c ae0000        	ldw	x,#0
 685  012f 89            	pushw	x
 686  0130 ae0000        	ldw	x,#L702
 687  0133 cd0000        	call	_assert_failed
 689  0136 5b04          	addw	sp,#4
 690  0138               L24:
 691                     ; 149   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 693  0138 0d03          	tnz	(OFST+2,sp)
 694  013a 2706          	jreq	L64
 695  013c 7b03          	ld	a,(OFST+2,sp)
 696  013e a111          	cp	a,#17
 697  0140 2603          	jrne	L44
 698  0142               L64:
 699  0142 4f            	clr	a
 700  0143 2010          	jra	L05
 701  0145               L44:
 702  0145 ae0095        	ldw	x,#149
 703  0148 89            	pushw	x
 704  0149 ae0000        	ldw	x,#0
 705  014c 89            	pushw	x
 706  014d ae0000        	ldw	x,#L702
 707  0150 cd0000        	call	_assert_failed
 709  0153 5b04          	addw	sp,#4
 710  0155               L05:
 711                     ; 150   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 713  0155 0d08          	tnz	(OFST+7,sp)
 714  0157 2706          	jreq	L45
 715  0159 7b08          	ld	a,(OFST+7,sp)
 716  015b a122          	cp	a,#34
 717  015d 2603          	jrne	L25
 718  015f               L45:
 719  015f 4f            	clr	a
 720  0160 2010          	jra	L65
 721  0162               L25:
 722  0162 ae0096        	ldw	x,#150
 723  0165 89            	pushw	x
 724  0166 ae0000        	ldw	x,#0
 725  0169 89            	pushw	x
 726  016a ae0000        	ldw	x,#L702
 727  016d cd0000        	call	_assert_failed
 729  0170 5b04          	addw	sp,#4
 730  0172               L65:
 731                     ; 154   TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC2E |  TIM2_CCER1_CC2P ));
 733  0172 c6530a        	ld	a,21258
 734  0175 a4cf          	and	a,#207
 735  0177 c7530a        	ld	21258,a
 736                     ; 156   TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState  & TIM2_CCER1_CC2E ) |
 736                     ; 157                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC2P));
 738  017a 7b08          	ld	a,(OFST+7,sp)
 739  017c a420          	and	a,#32
 740  017e 6b01          	ld	(OFST+0,sp),a
 742  0180 7b03          	ld	a,(OFST+2,sp)
 743  0182 a410          	and	a,#16
 744  0184 1a01          	or	a,(OFST+0,sp)
 745  0186 ca530a        	or	a,21258
 746  0189 c7530a        	ld	21258,a
 747                     ; 161   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM)) | 
 747                     ; 162                           (uint8_t)TIM2_OCMode);
 749  018c c65308        	ld	a,21256
 750  018f a48f          	and	a,#143
 751  0191 1a02          	or	a,(OFST+1,sp)
 752  0193 c75308        	ld	21256,a
 753                     ; 166   TIM2->CCR2H = (uint8_t)(TIM2_Pulse >> 8);
 755  0196 7b06          	ld	a,(OFST+5,sp)
 756  0198 c75313        	ld	21267,a
 757                     ; 167   TIM2->CCR2L = (uint8_t)(TIM2_Pulse);
 759  019b 7b07          	ld	a,(OFST+6,sp)
 760  019d c75314        	ld	21268,a
 761                     ; 168 }
 764  01a0 5b03          	addw	sp,#3
 765  01a2 81            	ret
 830                     ; 179 void TIM2_OC3Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 830                     ; 180                   TIM2_OutputState_TypeDef TIM2_OutputState,
 830                     ; 181                   uint16_t TIM2_Pulse,
 830                     ; 182                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 830                     ; 183 {
 831                     	switch	.text
 832  01a3               _TIM2_OC3Init:
 834  01a3 89            	pushw	x
 835  01a4 88            	push	a
 836       00000001      OFST:	set	1
 839                     ; 185   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 841  01a5 9e            	ld	a,xh
 842  01a6 4d            	tnz	a
 843  01a7 2719          	jreq	L46
 844  01a9 9e            	ld	a,xh
 845  01aa a110          	cp	a,#16
 846  01ac 2714          	jreq	L46
 847  01ae 9e            	ld	a,xh
 848  01af a120          	cp	a,#32
 849  01b1 270f          	jreq	L46
 850  01b3 9e            	ld	a,xh
 851  01b4 a130          	cp	a,#48
 852  01b6 270a          	jreq	L46
 853  01b8 9e            	ld	a,xh
 854  01b9 a160          	cp	a,#96
 855  01bb 2705          	jreq	L46
 856  01bd 9e            	ld	a,xh
 857  01be a170          	cp	a,#112
 858  01c0 2603          	jrne	L26
 859  01c2               L46:
 860  01c2 4f            	clr	a
 861  01c3 2010          	jra	L66
 862  01c5               L26:
 863  01c5 ae00b9        	ldw	x,#185
 864  01c8 89            	pushw	x
 865  01c9 ae0000        	ldw	x,#0
 866  01cc 89            	pushw	x
 867  01cd ae0000        	ldw	x,#L702
 868  01d0 cd0000        	call	_assert_failed
 870  01d3 5b04          	addw	sp,#4
 871  01d5               L66:
 872                     ; 186   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 874  01d5 0d03          	tnz	(OFST+2,sp)
 875  01d7 2706          	jreq	L27
 876  01d9 7b03          	ld	a,(OFST+2,sp)
 877  01db a111          	cp	a,#17
 878  01dd 2603          	jrne	L07
 879  01df               L27:
 880  01df 4f            	clr	a
 881  01e0 2010          	jra	L47
 882  01e2               L07:
 883  01e2 ae00ba        	ldw	x,#186
 884  01e5 89            	pushw	x
 885  01e6 ae0000        	ldw	x,#0
 886  01e9 89            	pushw	x
 887  01ea ae0000        	ldw	x,#L702
 888  01ed cd0000        	call	_assert_failed
 890  01f0 5b04          	addw	sp,#4
 891  01f2               L47:
 892                     ; 187   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 894  01f2 0d08          	tnz	(OFST+7,sp)
 895  01f4 2706          	jreq	L001
 896  01f6 7b08          	ld	a,(OFST+7,sp)
 897  01f8 a122          	cp	a,#34
 898  01fa 2603          	jrne	L67
 899  01fc               L001:
 900  01fc 4f            	clr	a
 901  01fd 2010          	jra	L201
 902  01ff               L67:
 903  01ff ae00bb        	ldw	x,#187
 904  0202 89            	pushw	x
 905  0203 ae0000        	ldw	x,#0
 906  0206 89            	pushw	x
 907  0207 ae0000        	ldw	x,#L702
 908  020a cd0000        	call	_assert_failed
 910  020d 5b04          	addw	sp,#4
 911  020f               L201:
 912                     ; 189   TIM2->CCER2 &= (uint8_t)(~( TIM2_CCER2_CC3E  | TIM2_CCER2_CC3P));
 914  020f c6530b        	ld	a,21259
 915  0212 a4fc          	and	a,#252
 916  0214 c7530b        	ld	21259,a
 917                     ; 191   TIM2->CCER2 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER2_CC3E) |  
 917                     ; 192                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER2_CC3P));
 919  0217 7b08          	ld	a,(OFST+7,sp)
 920  0219 a402          	and	a,#2
 921  021b 6b01          	ld	(OFST+0,sp),a
 923  021d 7b03          	ld	a,(OFST+2,sp)
 924  021f a401          	and	a,#1
 925  0221 1a01          	or	a,(OFST+0,sp)
 926  0223 ca530b        	or	a,21259
 927  0226 c7530b        	ld	21259,a
 928                     ; 195   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM)) |
 928                     ; 196                           (uint8_t)TIM2_OCMode);
 930  0229 c65309        	ld	a,21257
 931  022c a48f          	and	a,#143
 932  022e 1a02          	or	a,(OFST+1,sp)
 933  0230 c75309        	ld	21257,a
 934                     ; 199   TIM2->CCR3H = (uint8_t)(TIM2_Pulse >> 8);
 936  0233 7b06          	ld	a,(OFST+5,sp)
 937  0235 c75315        	ld	21269,a
 938                     ; 200   TIM2->CCR3L = (uint8_t)(TIM2_Pulse);
 940  0238 7b07          	ld	a,(OFST+6,sp)
 941  023a c75316        	ld	21270,a
 942                     ; 201 }
 945  023d 5b03          	addw	sp,#3
 946  023f 81            	ret
1140                     ; 212 void TIM2_ICInit(TIM2_Channel_TypeDef TIM2_Channel,
1140                     ; 213                  TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
1140                     ; 214                  TIM2_ICSelection_TypeDef TIM2_ICSelection,
1140                     ; 215                  TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
1140                     ; 216                  uint8_t TIM2_ICFilter)
1140                     ; 217 {
1141                     	switch	.text
1142  0240               _TIM2_ICInit:
1144  0240 89            	pushw	x
1145       00000000      OFST:	set	0
1148                     ; 219   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
1150  0241 9e            	ld	a,xh
1151  0242 4d            	tnz	a
1152  0243 270a          	jreq	L011
1153  0245 9e            	ld	a,xh
1154  0246 a101          	cp	a,#1
1155  0248 2705          	jreq	L011
1156  024a 9e            	ld	a,xh
1157  024b a102          	cp	a,#2
1158  024d 2603          	jrne	L601
1159  024f               L011:
1160  024f 4f            	clr	a
1161  0250 2010          	jra	L211
1162  0252               L601:
1163  0252 ae00db        	ldw	x,#219
1164  0255 89            	pushw	x
1165  0256 ae0000        	ldw	x,#0
1166  0259 89            	pushw	x
1167  025a ae0000        	ldw	x,#L702
1168  025d cd0000        	call	_assert_failed
1170  0260 5b04          	addw	sp,#4
1171  0262               L211:
1172                     ; 220   assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
1174  0262 0d02          	tnz	(OFST+2,sp)
1175  0264 2706          	jreq	L611
1176  0266 7b02          	ld	a,(OFST+2,sp)
1177  0268 a144          	cp	a,#68
1178  026a 2603          	jrne	L411
1179  026c               L611:
1180  026c 4f            	clr	a
1181  026d 2010          	jra	L021
1182  026f               L411:
1183  026f ae00dc        	ldw	x,#220
1184  0272 89            	pushw	x
1185  0273 ae0000        	ldw	x,#0
1186  0276 89            	pushw	x
1187  0277 ae0000        	ldw	x,#L702
1188  027a cd0000        	call	_assert_failed
1190  027d 5b04          	addw	sp,#4
1191  027f               L021:
1192                     ; 221   assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
1194  027f 7b05          	ld	a,(OFST+5,sp)
1195  0281 a101          	cp	a,#1
1196  0283 270c          	jreq	L421
1197  0285 7b05          	ld	a,(OFST+5,sp)
1198  0287 a102          	cp	a,#2
1199  0289 2706          	jreq	L421
1200  028b 7b05          	ld	a,(OFST+5,sp)
1201  028d a103          	cp	a,#3
1202  028f 2603          	jrne	L221
1203  0291               L421:
1204  0291 4f            	clr	a
1205  0292 2010          	jra	L621
1206  0294               L221:
1207  0294 ae00dd        	ldw	x,#221
1208  0297 89            	pushw	x
1209  0298 ae0000        	ldw	x,#0
1210  029b 89            	pushw	x
1211  029c ae0000        	ldw	x,#L702
1212  029f cd0000        	call	_assert_failed
1214  02a2 5b04          	addw	sp,#4
1215  02a4               L621:
1216                     ; 222   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
1218  02a4 0d06          	tnz	(OFST+6,sp)
1219  02a6 2712          	jreq	L231
1220  02a8 7b06          	ld	a,(OFST+6,sp)
1221  02aa a104          	cp	a,#4
1222  02ac 270c          	jreq	L231
1223  02ae 7b06          	ld	a,(OFST+6,sp)
1224  02b0 a108          	cp	a,#8
1225  02b2 2706          	jreq	L231
1226  02b4 7b06          	ld	a,(OFST+6,sp)
1227  02b6 a10c          	cp	a,#12
1228  02b8 2603          	jrne	L031
1229  02ba               L231:
1230  02ba 4f            	clr	a
1231  02bb 2010          	jra	L431
1232  02bd               L031:
1233  02bd ae00de        	ldw	x,#222
1234  02c0 89            	pushw	x
1235  02c1 ae0000        	ldw	x,#0
1236  02c4 89            	pushw	x
1237  02c5 ae0000        	ldw	x,#L702
1238  02c8 cd0000        	call	_assert_failed
1240  02cb 5b04          	addw	sp,#4
1241  02cd               L431:
1242                     ; 223   assert_param(IS_TIM2_IC_FILTER_OK(TIM2_ICFilter));
1244  02cd 7b07          	ld	a,(OFST+7,sp)
1245  02cf a110          	cp	a,#16
1246  02d1 2403          	jruge	L631
1247  02d3 4f            	clr	a
1248  02d4 2010          	jra	L041
1249  02d6               L631:
1250  02d6 ae00df        	ldw	x,#223
1251  02d9 89            	pushw	x
1252  02da ae0000        	ldw	x,#0
1253  02dd 89            	pushw	x
1254  02de ae0000        	ldw	x,#L702
1255  02e1 cd0000        	call	_assert_failed
1257  02e4 5b04          	addw	sp,#4
1258  02e6               L041:
1259                     ; 225   if (TIM2_Channel == TIM2_CHANNEL_1)
1261  02e6 0d01          	tnz	(OFST+1,sp)
1262  02e8 2614          	jrne	L304
1263                     ; 228     TI1_Config((uint8_t)TIM2_ICPolarity,
1263                     ; 229                (uint8_t)TIM2_ICSelection,
1263                     ; 230                (uint8_t)TIM2_ICFilter);
1265  02ea 7b07          	ld	a,(OFST+7,sp)
1266  02ec 88            	push	a
1267  02ed 7b06          	ld	a,(OFST+6,sp)
1268  02ef 97            	ld	xl,a
1269  02f0 7b03          	ld	a,(OFST+3,sp)
1270  02f2 95            	ld	xh,a
1271  02f3 cd0ad3        	call	L3_TI1_Config
1273  02f6 84            	pop	a
1274                     ; 233     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1276  02f7 7b06          	ld	a,(OFST+6,sp)
1277  02f9 cd08c3        	call	_TIM2_SetIC1Prescaler
1280  02fc 202c          	jra	L504
1281  02fe               L304:
1282                     ; 235   else if (TIM2_Channel == TIM2_CHANNEL_2)
1284  02fe 7b01          	ld	a,(OFST+1,sp)
1285  0300 a101          	cp	a,#1
1286  0302 2614          	jrne	L704
1287                     ; 238     TI2_Config((uint8_t)TIM2_ICPolarity,
1287                     ; 239                (uint8_t)TIM2_ICSelection,
1287                     ; 240                (uint8_t)TIM2_ICFilter);
1289  0304 7b07          	ld	a,(OFST+7,sp)
1290  0306 88            	push	a
1291  0307 7b06          	ld	a,(OFST+6,sp)
1292  0309 97            	ld	xl,a
1293  030a 7b03          	ld	a,(OFST+3,sp)
1294  030c 95            	ld	xh,a
1295  030d cd0b03        	call	L5_TI2_Config
1297  0310 84            	pop	a
1298                     ; 243     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1300  0311 7b06          	ld	a,(OFST+6,sp)
1301  0313 cd08f2        	call	_TIM2_SetIC2Prescaler
1304  0316 2012          	jra	L504
1305  0318               L704:
1306                     ; 248     TI3_Config((uint8_t)TIM2_ICPolarity,
1306                     ; 249                (uint8_t)TIM2_ICSelection,
1306                     ; 250                (uint8_t)TIM2_ICFilter);
1308  0318 7b07          	ld	a,(OFST+7,sp)
1309  031a 88            	push	a
1310  031b 7b06          	ld	a,(OFST+6,sp)
1311  031d 97            	ld	xl,a
1312  031e 7b03          	ld	a,(OFST+3,sp)
1313  0320 95            	ld	xh,a
1314  0321 cd0b33        	call	L7_TI3_Config
1316  0324 84            	pop	a
1317                     ; 253     TIM2_SetIC3Prescaler(TIM2_ICPrescaler);
1319  0325 7b06          	ld	a,(OFST+6,sp)
1320  0327 cd0921        	call	_TIM2_SetIC3Prescaler
1322  032a               L504:
1323                     ; 255 }
1326  032a 85            	popw	x
1327  032b 81            	ret
1424                     ; 266 void TIM2_PWMIConfig(TIM2_Channel_TypeDef TIM2_Channel,
1424                     ; 267                      TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
1424                     ; 268                      TIM2_ICSelection_TypeDef TIM2_ICSelection,
1424                     ; 269                      TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
1424                     ; 270                      uint8_t TIM2_ICFilter)
1424                     ; 271 {
1425                     	switch	.text
1426  032c               _TIM2_PWMIConfig:
1428  032c 89            	pushw	x
1429  032d 89            	pushw	x
1430       00000002      OFST:	set	2
1433                     ; 272   uint8_t icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1435                     ; 273   uint8_t icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1437                     ; 276   assert_param(IS_TIM2_PWMI_CHANNEL_OK(TIM2_Channel));
1439  032e 9e            	ld	a,xh
1440  032f 4d            	tnz	a
1441  0330 2705          	jreq	L641
1442  0332 9e            	ld	a,xh
1443  0333 a101          	cp	a,#1
1444  0335 2603          	jrne	L441
1445  0337               L641:
1446  0337 4f            	clr	a
1447  0338 2010          	jra	L051
1448  033a               L441:
1449  033a ae0114        	ldw	x,#276
1450  033d 89            	pushw	x
1451  033e ae0000        	ldw	x,#0
1452  0341 89            	pushw	x
1453  0342 ae0000        	ldw	x,#L702
1454  0345 cd0000        	call	_assert_failed
1456  0348 5b04          	addw	sp,#4
1457  034a               L051:
1458                     ; 277   assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
1460  034a 0d04          	tnz	(OFST+2,sp)
1461  034c 2706          	jreq	L451
1462  034e 7b04          	ld	a,(OFST+2,sp)
1463  0350 a144          	cp	a,#68
1464  0352 2603          	jrne	L251
1465  0354               L451:
1466  0354 4f            	clr	a
1467  0355 2010          	jra	L651
1468  0357               L251:
1469  0357 ae0115        	ldw	x,#277
1470  035a 89            	pushw	x
1471  035b ae0000        	ldw	x,#0
1472  035e 89            	pushw	x
1473  035f ae0000        	ldw	x,#L702
1474  0362 cd0000        	call	_assert_failed
1476  0365 5b04          	addw	sp,#4
1477  0367               L651:
1478                     ; 278   assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
1480  0367 7b07          	ld	a,(OFST+5,sp)
1481  0369 a101          	cp	a,#1
1482  036b 270c          	jreq	L261
1483  036d 7b07          	ld	a,(OFST+5,sp)
1484  036f a102          	cp	a,#2
1485  0371 2706          	jreq	L261
1486  0373 7b07          	ld	a,(OFST+5,sp)
1487  0375 a103          	cp	a,#3
1488  0377 2603          	jrne	L061
1489  0379               L261:
1490  0379 4f            	clr	a
1491  037a 2010          	jra	L461
1492  037c               L061:
1493  037c ae0116        	ldw	x,#278
1494  037f 89            	pushw	x
1495  0380 ae0000        	ldw	x,#0
1496  0383 89            	pushw	x
1497  0384 ae0000        	ldw	x,#L702
1498  0387 cd0000        	call	_assert_failed
1500  038a 5b04          	addw	sp,#4
1501  038c               L461:
1502                     ; 279   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
1504  038c 0d08          	tnz	(OFST+6,sp)
1505  038e 2712          	jreq	L071
1506  0390 7b08          	ld	a,(OFST+6,sp)
1507  0392 a104          	cp	a,#4
1508  0394 270c          	jreq	L071
1509  0396 7b08          	ld	a,(OFST+6,sp)
1510  0398 a108          	cp	a,#8
1511  039a 2706          	jreq	L071
1512  039c 7b08          	ld	a,(OFST+6,sp)
1513  039e a10c          	cp	a,#12
1514  03a0 2603          	jrne	L661
1515  03a2               L071:
1516  03a2 4f            	clr	a
1517  03a3 2010          	jra	L271
1518  03a5               L661:
1519  03a5 ae0117        	ldw	x,#279
1520  03a8 89            	pushw	x
1521  03a9 ae0000        	ldw	x,#0
1522  03ac 89            	pushw	x
1523  03ad ae0000        	ldw	x,#L702
1524  03b0 cd0000        	call	_assert_failed
1526  03b3 5b04          	addw	sp,#4
1527  03b5               L271:
1528                     ; 282   if (TIM2_ICPolarity != TIM2_ICPOLARITY_FALLING)
1530  03b5 7b04          	ld	a,(OFST+2,sp)
1531  03b7 a144          	cp	a,#68
1532  03b9 2706          	jreq	L164
1533                     ; 284     icpolarity = (uint8_t)TIM2_ICPOLARITY_FALLING;
1535  03bb a644          	ld	a,#68
1536  03bd 6b01          	ld	(OFST-1,sp),a
1539  03bf 2002          	jra	L364
1540  03c1               L164:
1541                     ; 288     icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1543  03c1 0f01          	clr	(OFST-1,sp)
1545  03c3               L364:
1546                     ; 292   if (TIM2_ICSelection == TIM2_ICSELECTION_DIRECTTI)
1548  03c3 7b07          	ld	a,(OFST+5,sp)
1549  03c5 a101          	cp	a,#1
1550  03c7 2606          	jrne	L564
1551                     ; 294     icselection = (uint8_t)TIM2_ICSELECTION_INDIRECTTI;
1553  03c9 a602          	ld	a,#2
1554  03cb 6b02          	ld	(OFST+0,sp),a
1557  03cd 2004          	jra	L764
1558  03cf               L564:
1559                     ; 298     icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1561  03cf a601          	ld	a,#1
1562  03d1 6b02          	ld	(OFST+0,sp),a
1564  03d3               L764:
1565                     ; 301   if (TIM2_Channel == TIM2_CHANNEL_1)
1567  03d3 0d03          	tnz	(OFST+1,sp)
1568  03d5 2626          	jrne	L174
1569                     ; 304     TI1_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1569                     ; 305                (uint8_t)TIM2_ICFilter);
1571  03d7 7b09          	ld	a,(OFST+7,sp)
1572  03d9 88            	push	a
1573  03da 7b08          	ld	a,(OFST+6,sp)
1574  03dc 97            	ld	xl,a
1575  03dd 7b05          	ld	a,(OFST+3,sp)
1576  03df 95            	ld	xh,a
1577  03e0 cd0ad3        	call	L3_TI1_Config
1579  03e3 84            	pop	a
1580                     ; 308     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1582  03e4 7b08          	ld	a,(OFST+6,sp)
1583  03e6 cd08c3        	call	_TIM2_SetIC1Prescaler
1585                     ; 311     TI2_Config(icpolarity, icselection, TIM2_ICFilter);
1587  03e9 7b09          	ld	a,(OFST+7,sp)
1588  03eb 88            	push	a
1589  03ec 7b03          	ld	a,(OFST+1,sp)
1590  03ee 97            	ld	xl,a
1591  03ef 7b02          	ld	a,(OFST+0,sp)
1592  03f1 95            	ld	xh,a
1593  03f2 cd0b03        	call	L5_TI2_Config
1595  03f5 84            	pop	a
1596                     ; 314     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1598  03f6 7b08          	ld	a,(OFST+6,sp)
1599  03f8 cd08f2        	call	_TIM2_SetIC2Prescaler
1602  03fb 2024          	jra	L374
1603  03fd               L174:
1604                     ; 319     TI2_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1604                     ; 320                (uint8_t)TIM2_ICFilter);
1606  03fd 7b09          	ld	a,(OFST+7,sp)
1607  03ff 88            	push	a
1608  0400 7b08          	ld	a,(OFST+6,sp)
1609  0402 97            	ld	xl,a
1610  0403 7b05          	ld	a,(OFST+3,sp)
1611  0405 95            	ld	xh,a
1612  0406 cd0b03        	call	L5_TI2_Config
1614  0409 84            	pop	a
1615                     ; 323     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1617  040a 7b08          	ld	a,(OFST+6,sp)
1618  040c cd08f2        	call	_TIM2_SetIC2Prescaler
1620                     ; 326     TI1_Config((uint8_t)icpolarity, icselection, (uint8_t)TIM2_ICFilter);
1622  040f 7b09          	ld	a,(OFST+7,sp)
1623  0411 88            	push	a
1624  0412 7b03          	ld	a,(OFST+1,sp)
1625  0414 97            	ld	xl,a
1626  0415 7b02          	ld	a,(OFST+0,sp)
1627  0417 95            	ld	xh,a
1628  0418 cd0ad3        	call	L3_TI1_Config
1630  041b 84            	pop	a
1631                     ; 329     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1633  041c 7b08          	ld	a,(OFST+6,sp)
1634  041e cd08c3        	call	_TIM2_SetIC1Prescaler
1636  0421               L374:
1637                     ; 331 }
1640  0421 5b04          	addw	sp,#4
1641  0423 81            	ret
1697                     ; 339 void TIM2_Cmd(FunctionalState NewState)
1697                     ; 340 {
1698                     	switch	.text
1699  0424               _TIM2_Cmd:
1701  0424 88            	push	a
1702       00000000      OFST:	set	0
1705                     ; 342   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1707  0425 4d            	tnz	a
1708  0426 2704          	jreq	L002
1709  0428 a101          	cp	a,#1
1710  042a 2603          	jrne	L671
1711  042c               L002:
1712  042c 4f            	clr	a
1713  042d 2010          	jra	L202
1714  042f               L671:
1715  042f ae0156        	ldw	x,#342
1716  0432 89            	pushw	x
1717  0433 ae0000        	ldw	x,#0
1718  0436 89            	pushw	x
1719  0437 ae0000        	ldw	x,#L702
1720  043a cd0000        	call	_assert_failed
1722  043d 5b04          	addw	sp,#4
1723  043f               L202:
1724                     ; 345   if (NewState != DISABLE)
1726  043f 0d01          	tnz	(OFST+1,sp)
1727  0441 2706          	jreq	L325
1728                     ; 347     TIM2->CR1 |= (uint8_t)TIM2_CR1_CEN;
1730  0443 72105300      	bset	21248,#0
1732  0447 2004          	jra	L525
1733  0449               L325:
1734                     ; 351     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_CEN);
1736  0449 72115300      	bres	21248,#0
1737  044d               L525:
1738                     ; 353 }
1741  044d 84            	pop	a
1742  044e 81            	ret
1822                     ; 368 void TIM2_ITConfig(TIM2_IT_TypeDef TIM2_IT, FunctionalState NewState)
1822                     ; 369 {
1823                     	switch	.text
1824  044f               _TIM2_ITConfig:
1826  044f 89            	pushw	x
1827       00000000      OFST:	set	0
1830                     ; 371   assert_param(IS_TIM2_IT_OK(TIM2_IT));
1832  0450 9e            	ld	a,xh
1833  0451 4d            	tnz	a
1834  0452 2708          	jreq	L602
1835  0454 9e            	ld	a,xh
1836  0455 a110          	cp	a,#16
1837  0457 2403          	jruge	L602
1838  0459 4f            	clr	a
1839  045a 2010          	jra	L012
1840  045c               L602:
1841  045c ae0173        	ldw	x,#371
1842  045f 89            	pushw	x
1843  0460 ae0000        	ldw	x,#0
1844  0463 89            	pushw	x
1845  0464 ae0000        	ldw	x,#L702
1846  0467 cd0000        	call	_assert_failed
1848  046a 5b04          	addw	sp,#4
1849  046c               L012:
1850                     ; 372   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1852  046c 0d02          	tnz	(OFST+2,sp)
1853  046e 2706          	jreq	L412
1854  0470 7b02          	ld	a,(OFST+2,sp)
1855  0472 a101          	cp	a,#1
1856  0474 2603          	jrne	L212
1857  0476               L412:
1858  0476 4f            	clr	a
1859  0477 2010          	jra	L612
1860  0479               L212:
1861  0479 ae0174        	ldw	x,#372
1862  047c 89            	pushw	x
1863  047d ae0000        	ldw	x,#0
1864  0480 89            	pushw	x
1865  0481 ae0000        	ldw	x,#L702
1866  0484 cd0000        	call	_assert_failed
1868  0487 5b04          	addw	sp,#4
1869  0489               L612:
1870                     ; 374   if (NewState != DISABLE)
1872  0489 0d02          	tnz	(OFST+2,sp)
1873  048b 270a          	jreq	L565
1874                     ; 377     TIM2->IER |= (uint8_t)TIM2_IT;
1876  048d c65303        	ld	a,21251
1877  0490 1a01          	or	a,(OFST+1,sp)
1878  0492 c75303        	ld	21251,a
1880  0495 2009          	jra	L765
1881  0497               L565:
1882                     ; 382     TIM2->IER &= (uint8_t)(~TIM2_IT);
1884  0497 7b01          	ld	a,(OFST+1,sp)
1885  0499 43            	cpl	a
1886  049a c45303        	and	a,21251
1887  049d c75303        	ld	21251,a
1888  04a0               L765:
1889                     ; 384 }
1892  04a0 85            	popw	x
1893  04a1 81            	ret
1930                     ; 392 void TIM2_UpdateDisableConfig(FunctionalState NewState)
1930                     ; 393 {
1931                     	switch	.text
1932  04a2               _TIM2_UpdateDisableConfig:
1934  04a2 88            	push	a
1935       00000000      OFST:	set	0
1938                     ; 395   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1940  04a3 4d            	tnz	a
1941  04a4 2704          	jreq	L422
1942  04a6 a101          	cp	a,#1
1943  04a8 2603          	jrne	L222
1944  04aa               L422:
1945  04aa 4f            	clr	a
1946  04ab 2010          	jra	L622
1947  04ad               L222:
1948  04ad ae018b        	ldw	x,#395
1949  04b0 89            	pushw	x
1950  04b1 ae0000        	ldw	x,#0
1951  04b4 89            	pushw	x
1952  04b5 ae0000        	ldw	x,#L702
1953  04b8 cd0000        	call	_assert_failed
1955  04bb 5b04          	addw	sp,#4
1956  04bd               L622:
1957                     ; 398   if (NewState != DISABLE)
1959  04bd 0d01          	tnz	(OFST+1,sp)
1960  04bf 2706          	jreq	L706
1961                     ; 400     TIM2->CR1 |= (uint8_t)TIM2_CR1_UDIS;
1963  04c1 72125300      	bset	21248,#1
1965  04c5 2004          	jra	L116
1966  04c7               L706:
1967                     ; 404     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_UDIS);
1969  04c7 72135300      	bres	21248,#1
1970  04cb               L116:
1971                     ; 406 }
1974  04cb 84            	pop	a
1975  04cc 81            	ret
2034                     ; 416 void TIM2_UpdateRequestConfig(TIM2_UpdateSource_TypeDef TIM2_UpdateSource)
2034                     ; 417 {
2035                     	switch	.text
2036  04cd               _TIM2_UpdateRequestConfig:
2038  04cd 88            	push	a
2039       00000000      OFST:	set	0
2042                     ; 419   assert_param(IS_TIM2_UPDATE_SOURCE_OK(TIM2_UpdateSource));
2044  04ce 4d            	tnz	a
2045  04cf 2704          	jreq	L432
2046  04d1 a101          	cp	a,#1
2047  04d3 2603          	jrne	L232
2048  04d5               L432:
2049  04d5 4f            	clr	a
2050  04d6 2010          	jra	L632
2051  04d8               L232:
2052  04d8 ae01a3        	ldw	x,#419
2053  04db 89            	pushw	x
2054  04dc ae0000        	ldw	x,#0
2055  04df 89            	pushw	x
2056  04e0 ae0000        	ldw	x,#L702
2057  04e3 cd0000        	call	_assert_failed
2059  04e6 5b04          	addw	sp,#4
2060  04e8               L632:
2061                     ; 422   if (TIM2_UpdateSource != TIM2_UPDATESOURCE_GLOBAL)
2063  04e8 0d01          	tnz	(OFST+1,sp)
2064  04ea 2706          	jreq	L146
2065                     ; 424     TIM2->CR1 |= (uint8_t)TIM2_CR1_URS;
2067  04ec 72145300      	bset	21248,#2
2069  04f0 2004          	jra	L346
2070  04f2               L146:
2071                     ; 428     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_URS);
2073  04f2 72155300      	bres	21248,#2
2074  04f6               L346:
2075                     ; 430 }
2078  04f6 84            	pop	a
2079  04f7 81            	ret
2137                     ; 440 void TIM2_SelectOnePulseMode(TIM2_OPMode_TypeDef TIM2_OPMode)
2137                     ; 441 {
2138                     	switch	.text
2139  04f8               _TIM2_SelectOnePulseMode:
2141  04f8 88            	push	a
2142       00000000      OFST:	set	0
2145                     ; 443   assert_param(IS_TIM2_OPM_MODE_OK(TIM2_OPMode));
2147  04f9 a101          	cp	a,#1
2148  04fb 2703          	jreq	L442
2149  04fd 4d            	tnz	a
2150  04fe 2603          	jrne	L242
2151  0500               L442:
2152  0500 4f            	clr	a
2153  0501 2010          	jra	L642
2154  0503               L242:
2155  0503 ae01bb        	ldw	x,#443
2156  0506 89            	pushw	x
2157  0507 ae0000        	ldw	x,#0
2158  050a 89            	pushw	x
2159  050b ae0000        	ldw	x,#L702
2160  050e cd0000        	call	_assert_failed
2162  0511 5b04          	addw	sp,#4
2163  0513               L642:
2164                     ; 446   if (TIM2_OPMode != TIM2_OPMODE_REPETITIVE)
2166  0513 0d01          	tnz	(OFST+1,sp)
2167  0515 2706          	jreq	L376
2168                     ; 448     TIM2->CR1 |= (uint8_t)TIM2_CR1_OPM;
2170  0517 72165300      	bset	21248,#3
2172  051b 2004          	jra	L576
2173  051d               L376:
2174                     ; 452     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_OPM);
2176  051d 72175300      	bres	21248,#3
2177  0521               L576:
2178                     ; 454 }
2181  0521 84            	pop	a
2182  0522 81            	ret
2251                     ; 484 void TIM2_PrescalerConfig(TIM2_Prescaler_TypeDef Prescaler,
2251                     ; 485                           TIM2_PSCReloadMode_TypeDef TIM2_PSCReloadMode)
2251                     ; 486 {
2252                     	switch	.text
2253  0523               _TIM2_PrescalerConfig:
2255  0523 89            	pushw	x
2256       00000000      OFST:	set	0
2259                     ; 488   assert_param(IS_TIM2_PRESCALER_RELOAD_OK(TIM2_PSCReloadMode));
2261  0524 9f            	ld	a,xl
2262  0525 4d            	tnz	a
2263  0526 2705          	jreq	L452
2264  0528 9f            	ld	a,xl
2265  0529 a101          	cp	a,#1
2266  052b 2603          	jrne	L252
2267  052d               L452:
2268  052d 4f            	clr	a
2269  052e 2010          	jra	L652
2270  0530               L252:
2271  0530 ae01e8        	ldw	x,#488
2272  0533 89            	pushw	x
2273  0534 ae0000        	ldw	x,#0
2274  0537 89            	pushw	x
2275  0538 ae0000        	ldw	x,#L702
2276  053b cd0000        	call	_assert_failed
2278  053e 5b04          	addw	sp,#4
2279  0540               L652:
2280                     ; 489   assert_param(IS_TIM2_PRESCALER_OK(Prescaler));
2282  0540 0d01          	tnz	(OFST+1,sp)
2283  0542 275a          	jreq	L262
2284  0544 7b01          	ld	a,(OFST+1,sp)
2285  0546 a101          	cp	a,#1
2286  0548 2754          	jreq	L262
2287  054a 7b01          	ld	a,(OFST+1,sp)
2288  054c a102          	cp	a,#2
2289  054e 274e          	jreq	L262
2290  0550 7b01          	ld	a,(OFST+1,sp)
2291  0552 a103          	cp	a,#3
2292  0554 2748          	jreq	L262
2293  0556 7b01          	ld	a,(OFST+1,sp)
2294  0558 a104          	cp	a,#4
2295  055a 2742          	jreq	L262
2296  055c 7b01          	ld	a,(OFST+1,sp)
2297  055e a105          	cp	a,#5
2298  0560 273c          	jreq	L262
2299  0562 7b01          	ld	a,(OFST+1,sp)
2300  0564 a106          	cp	a,#6
2301  0566 2736          	jreq	L262
2302  0568 7b01          	ld	a,(OFST+1,sp)
2303  056a a107          	cp	a,#7
2304  056c 2730          	jreq	L262
2305  056e 7b01          	ld	a,(OFST+1,sp)
2306  0570 a108          	cp	a,#8
2307  0572 272a          	jreq	L262
2308  0574 7b01          	ld	a,(OFST+1,sp)
2309  0576 a109          	cp	a,#9
2310  0578 2724          	jreq	L262
2311  057a 7b01          	ld	a,(OFST+1,sp)
2312  057c a10a          	cp	a,#10
2313  057e 271e          	jreq	L262
2314  0580 7b01          	ld	a,(OFST+1,sp)
2315  0582 a10b          	cp	a,#11
2316  0584 2718          	jreq	L262
2317  0586 7b01          	ld	a,(OFST+1,sp)
2318  0588 a10c          	cp	a,#12
2319  058a 2712          	jreq	L262
2320  058c 7b01          	ld	a,(OFST+1,sp)
2321  058e a10d          	cp	a,#13
2322  0590 270c          	jreq	L262
2323  0592 7b01          	ld	a,(OFST+1,sp)
2324  0594 a10e          	cp	a,#14
2325  0596 2706          	jreq	L262
2326  0598 7b01          	ld	a,(OFST+1,sp)
2327  059a a10f          	cp	a,#15
2328  059c 2603          	jrne	L062
2329  059e               L262:
2330  059e 4f            	clr	a
2331  059f 2010          	jra	L462
2332  05a1               L062:
2333  05a1 ae01e9        	ldw	x,#489
2334  05a4 89            	pushw	x
2335  05a5 ae0000        	ldw	x,#0
2336  05a8 89            	pushw	x
2337  05a9 ae0000        	ldw	x,#L702
2338  05ac cd0000        	call	_assert_failed
2340  05af 5b04          	addw	sp,#4
2341  05b1               L462:
2342                     ; 492   TIM2->PSCR = (uint8_t)Prescaler;
2344  05b1 7b01          	ld	a,(OFST+1,sp)
2345  05b3 c7530e        	ld	21262,a
2346                     ; 495   TIM2->EGR = (uint8_t)TIM2_PSCReloadMode;
2348  05b6 7b02          	ld	a,(OFST+2,sp)
2349  05b8 c75306        	ld	21254,a
2350                     ; 496 }
2353  05bb 85            	popw	x
2354  05bc 81            	ret
2413                     ; 507 void TIM2_ForcedOC1Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2413                     ; 508 {
2414                     	switch	.text
2415  05bd               _TIM2_ForcedOC1Config:
2417  05bd 88            	push	a
2418       00000000      OFST:	set	0
2421                     ; 510   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2423  05be a150          	cp	a,#80
2424  05c0 2704          	jreq	L272
2425  05c2 a140          	cp	a,#64
2426  05c4 2603          	jrne	L072
2427  05c6               L272:
2428  05c6 4f            	clr	a
2429  05c7 2010          	jra	L472
2430  05c9               L072:
2431  05c9 ae01fe        	ldw	x,#510
2432  05cc 89            	pushw	x
2433  05cd ae0000        	ldw	x,#0
2434  05d0 89            	pushw	x
2435  05d1 ae0000        	ldw	x,#L702
2436  05d4 cd0000        	call	_assert_failed
2438  05d7 5b04          	addw	sp,#4
2439  05d9               L472:
2440                     ; 513   TIM2->CCMR1  =  (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))  
2440                     ; 514                             | (uint8_t)TIM2_ForcedAction);
2442  05d9 c65307        	ld	a,21255
2443  05dc a48f          	and	a,#143
2444  05de 1a01          	or	a,(OFST+1,sp)
2445  05e0 c75307        	ld	21255,a
2446                     ; 515 }
2449  05e3 84            	pop	a
2450  05e4 81            	ret
2487                     ; 526 void TIM2_ForcedOC2Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2487                     ; 527 {
2488                     	switch	.text
2489  05e5               _TIM2_ForcedOC2Config:
2491  05e5 88            	push	a
2492       00000000      OFST:	set	0
2495                     ; 529   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2497  05e6 a150          	cp	a,#80
2498  05e8 2704          	jreq	L203
2499  05ea a140          	cp	a,#64
2500  05ec 2603          	jrne	L003
2501  05ee               L203:
2502  05ee 4f            	clr	a
2503  05ef 2010          	jra	L403
2504  05f1               L003:
2505  05f1 ae0211        	ldw	x,#529
2506  05f4 89            	pushw	x
2507  05f5 ae0000        	ldw	x,#0
2508  05f8 89            	pushw	x
2509  05f9 ae0000        	ldw	x,#L702
2510  05fc cd0000        	call	_assert_failed
2512  05ff 5b04          	addw	sp,#4
2513  0601               L403:
2514                     ; 532   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))  
2514                     ; 533                           | (uint8_t)TIM2_ForcedAction);
2516  0601 c65308        	ld	a,21256
2517  0604 a48f          	and	a,#143
2518  0606 1a01          	or	a,(OFST+1,sp)
2519  0608 c75308        	ld	21256,a
2520                     ; 534 }
2523  060b 84            	pop	a
2524  060c 81            	ret
2561                     ; 545 void TIM2_ForcedOC3Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2561                     ; 546 {
2562                     	switch	.text
2563  060d               _TIM2_ForcedOC3Config:
2565  060d 88            	push	a
2566       00000000      OFST:	set	0
2569                     ; 548   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2571  060e a150          	cp	a,#80
2572  0610 2704          	jreq	L213
2573  0612 a140          	cp	a,#64
2574  0614 2603          	jrne	L013
2575  0616               L213:
2576  0616 4f            	clr	a
2577  0617 2010          	jra	L413
2578  0619               L013:
2579  0619 ae0224        	ldw	x,#548
2580  061c 89            	pushw	x
2581  061d ae0000        	ldw	x,#0
2582  0620 89            	pushw	x
2583  0621 ae0000        	ldw	x,#L702
2584  0624 cd0000        	call	_assert_failed
2586  0627 5b04          	addw	sp,#4
2587  0629               L413:
2588                     ; 551   TIM2->CCMR3  =  (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
2588                     ; 552                             | (uint8_t)TIM2_ForcedAction);
2590  0629 c65309        	ld	a,21257
2591  062c a48f          	and	a,#143
2592  062e 1a01          	or	a,(OFST+1,sp)
2593  0630 c75309        	ld	21257,a
2594                     ; 553 }
2597  0633 84            	pop	a
2598  0634 81            	ret
2635                     ; 561 void TIM2_ARRPreloadConfig(FunctionalState NewState)
2635                     ; 562 {
2636                     	switch	.text
2637  0635               _TIM2_ARRPreloadConfig:
2639  0635 88            	push	a
2640       00000000      OFST:	set	0
2643                     ; 564   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2645  0636 4d            	tnz	a
2646  0637 2704          	jreq	L223
2647  0639 a101          	cp	a,#1
2648  063b 2603          	jrne	L023
2649  063d               L223:
2650  063d 4f            	clr	a
2651  063e 2010          	jra	L423
2652  0640               L023:
2653  0640 ae0234        	ldw	x,#564
2654  0643 89            	pushw	x
2655  0644 ae0000        	ldw	x,#0
2656  0647 89            	pushw	x
2657  0648 ae0000        	ldw	x,#L702
2658  064b cd0000        	call	_assert_failed
2660  064e 5b04          	addw	sp,#4
2661  0650               L423:
2662                     ; 567   if (NewState != DISABLE)
2664  0650 0d01          	tnz	(OFST+1,sp)
2665  0652 2706          	jreq	L1301
2666                     ; 569     TIM2->CR1 |= (uint8_t)TIM2_CR1_ARPE;
2668  0654 721e5300      	bset	21248,#7
2670  0658 2004          	jra	L3301
2671  065a               L1301:
2672                     ; 573     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_ARPE);
2674  065a 721f5300      	bres	21248,#7
2675  065e               L3301:
2676                     ; 575 }
2679  065e 84            	pop	a
2680  065f 81            	ret
2717                     ; 583 void TIM2_OC1PreloadConfig(FunctionalState NewState)
2717                     ; 584 {
2718                     	switch	.text
2719  0660               _TIM2_OC1PreloadConfig:
2721  0660 88            	push	a
2722       00000000      OFST:	set	0
2725                     ; 586   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2727  0661 4d            	tnz	a
2728  0662 2704          	jreq	L233
2729  0664 a101          	cp	a,#1
2730  0666 2603          	jrne	L033
2731  0668               L233:
2732  0668 4f            	clr	a
2733  0669 2010          	jra	L433
2734  066b               L033:
2735  066b ae024a        	ldw	x,#586
2736  066e 89            	pushw	x
2737  066f ae0000        	ldw	x,#0
2738  0672 89            	pushw	x
2739  0673 ae0000        	ldw	x,#L702
2740  0676 cd0000        	call	_assert_failed
2742  0679 5b04          	addw	sp,#4
2743  067b               L433:
2744                     ; 589   if (NewState != DISABLE)
2746  067b 0d01          	tnz	(OFST+1,sp)
2747  067d 2706          	jreq	L3501
2748                     ; 591     TIM2->CCMR1 |= (uint8_t)TIM2_CCMR_OCxPE;
2750  067f 72165307      	bset	21255,#3
2752  0683 2004          	jra	L5501
2753  0685               L3501:
2754                     ; 595     TIM2->CCMR1 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2756  0685 72175307      	bres	21255,#3
2757  0689               L5501:
2758                     ; 597 }
2761  0689 84            	pop	a
2762  068a 81            	ret
2799                     ; 605 void TIM2_OC2PreloadConfig(FunctionalState NewState)
2799                     ; 606 {
2800                     	switch	.text
2801  068b               _TIM2_OC2PreloadConfig:
2803  068b 88            	push	a
2804       00000000      OFST:	set	0
2807                     ; 608   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2809  068c 4d            	tnz	a
2810  068d 2704          	jreq	L243
2811  068f a101          	cp	a,#1
2812  0691 2603          	jrne	L043
2813  0693               L243:
2814  0693 4f            	clr	a
2815  0694 2010          	jra	L443
2816  0696               L043:
2817  0696 ae0260        	ldw	x,#608
2818  0699 89            	pushw	x
2819  069a ae0000        	ldw	x,#0
2820  069d 89            	pushw	x
2821  069e ae0000        	ldw	x,#L702
2822  06a1 cd0000        	call	_assert_failed
2824  06a4 5b04          	addw	sp,#4
2825  06a6               L443:
2826                     ; 611   if (NewState != DISABLE)
2828  06a6 0d01          	tnz	(OFST+1,sp)
2829  06a8 2706          	jreq	L5701
2830                     ; 613     TIM2->CCMR2 |= (uint8_t)TIM2_CCMR_OCxPE;
2832  06aa 72165308      	bset	21256,#3
2834  06ae 2004          	jra	L7701
2835  06b0               L5701:
2836                     ; 617     TIM2->CCMR2 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2838  06b0 72175308      	bres	21256,#3
2839  06b4               L7701:
2840                     ; 619 }
2843  06b4 84            	pop	a
2844  06b5 81            	ret
2881                     ; 627 void TIM2_OC3PreloadConfig(FunctionalState NewState)
2881                     ; 628 {
2882                     	switch	.text
2883  06b6               _TIM2_OC3PreloadConfig:
2885  06b6 88            	push	a
2886       00000000      OFST:	set	0
2889                     ; 630   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2891  06b7 4d            	tnz	a
2892  06b8 2704          	jreq	L253
2893  06ba a101          	cp	a,#1
2894  06bc 2603          	jrne	L053
2895  06be               L253:
2896  06be 4f            	clr	a
2897  06bf 2010          	jra	L453
2898  06c1               L053:
2899  06c1 ae0276        	ldw	x,#630
2900  06c4 89            	pushw	x
2901  06c5 ae0000        	ldw	x,#0
2902  06c8 89            	pushw	x
2903  06c9 ae0000        	ldw	x,#L702
2904  06cc cd0000        	call	_assert_failed
2906  06cf 5b04          	addw	sp,#4
2907  06d1               L453:
2908                     ; 633   if (NewState != DISABLE)
2910  06d1 0d01          	tnz	(OFST+1,sp)
2911  06d3 2706          	jreq	L7111
2912                     ; 635     TIM2->CCMR3 |= (uint8_t)TIM2_CCMR_OCxPE;
2914  06d5 72165309      	bset	21257,#3
2916  06d9 2004          	jra	L1211
2917  06db               L7111:
2918                     ; 639     TIM2->CCMR3 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2920  06db 72175309      	bres	21257,#3
2921  06df               L1211:
2922                     ; 641 }
2925  06df 84            	pop	a
2926  06e0 81            	ret
3000                     ; 653 void TIM2_GenerateEvent(TIM2_EventSource_TypeDef TIM2_EventSource)
3000                     ; 654 {
3001                     	switch	.text
3002  06e1               _TIM2_GenerateEvent:
3004  06e1 88            	push	a
3005       00000000      OFST:	set	0
3008                     ; 656   assert_param(IS_TIM2_EVENT_SOURCE_OK(TIM2_EventSource));
3010  06e2 4d            	tnz	a
3011  06e3 2703          	jreq	L063
3012  06e5 4f            	clr	a
3013  06e6 2010          	jra	L263
3014  06e8               L063:
3015  06e8 ae0290        	ldw	x,#656
3016  06eb 89            	pushw	x
3017  06ec ae0000        	ldw	x,#0
3018  06ef 89            	pushw	x
3019  06f0 ae0000        	ldw	x,#L702
3020  06f3 cd0000        	call	_assert_failed
3022  06f6 5b04          	addw	sp,#4
3023  06f8               L263:
3024                     ; 659   TIM2->EGR = (uint8_t)TIM2_EventSource;
3026  06f8 7b01          	ld	a,(OFST+1,sp)
3027  06fa c75306        	ld	21254,a
3028                     ; 660 }
3031  06fd 84            	pop	a
3032  06fe 81            	ret
3069                     ; 670 void TIM2_OC1PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
3069                     ; 671 {
3070                     	switch	.text
3071  06ff               _TIM2_OC1PolarityConfig:
3073  06ff 88            	push	a
3074       00000000      OFST:	set	0
3077                     ; 673   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
3079  0700 4d            	tnz	a
3080  0701 2704          	jreq	L073
3081  0703 a122          	cp	a,#34
3082  0705 2603          	jrne	L663
3083  0707               L073:
3084  0707 4f            	clr	a
3085  0708 2010          	jra	L273
3086  070a               L663:
3087  070a ae02a1        	ldw	x,#673
3088  070d 89            	pushw	x
3089  070e ae0000        	ldw	x,#0
3090  0711 89            	pushw	x
3091  0712 ae0000        	ldw	x,#L702
3092  0715 cd0000        	call	_assert_failed
3094  0718 5b04          	addw	sp,#4
3095  071a               L273:
3096                     ; 676   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
3098  071a 0d01          	tnz	(OFST+1,sp)
3099  071c 2706          	jreq	L3711
3100                     ; 678     TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1P;
3102  071e 7212530a      	bset	21258,#1
3104  0722 2004          	jra	L5711
3105  0724               L3711:
3106                     ; 682     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
3108  0724 7213530a      	bres	21258,#1
3109  0728               L5711:
3110                     ; 684 }
3113  0728 84            	pop	a
3114  0729 81            	ret
3151                     ; 694 void TIM2_OC2PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
3151                     ; 695 {
3152                     	switch	.text
3153  072a               _TIM2_OC2PolarityConfig:
3155  072a 88            	push	a
3156       00000000      OFST:	set	0
3159                     ; 697   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
3161  072b 4d            	tnz	a
3162  072c 2704          	jreq	L004
3163  072e a122          	cp	a,#34
3164  0730 2603          	jrne	L673
3165  0732               L004:
3166  0732 4f            	clr	a
3167  0733 2010          	jra	L204
3168  0735               L673:
3169  0735 ae02b9        	ldw	x,#697
3170  0738 89            	pushw	x
3171  0739 ae0000        	ldw	x,#0
3172  073c 89            	pushw	x
3173  073d ae0000        	ldw	x,#L702
3174  0740 cd0000        	call	_assert_failed
3176  0743 5b04          	addw	sp,#4
3177  0745               L204:
3178                     ; 700   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
3180  0745 0d01          	tnz	(OFST+1,sp)
3181  0747 2706          	jreq	L5121
3182                     ; 702     TIM2->CCER1 |= TIM2_CCER1_CC2P;
3184  0749 721a530a      	bset	21258,#5
3186  074d 2004          	jra	L7121
3187  074f               L5121:
3188                     ; 706     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
3190  074f 721b530a      	bres	21258,#5
3191  0753               L7121:
3192                     ; 708 }
3195  0753 84            	pop	a
3196  0754 81            	ret
3233                     ; 718 void TIM2_OC3PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
3233                     ; 719 {
3234                     	switch	.text
3235  0755               _TIM2_OC3PolarityConfig:
3237  0755 88            	push	a
3238       00000000      OFST:	set	0
3241                     ; 721   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
3243  0756 4d            	tnz	a
3244  0757 2704          	jreq	L014
3245  0759 a122          	cp	a,#34
3246  075b 2603          	jrne	L604
3247  075d               L014:
3248  075d 4f            	clr	a
3249  075e 2010          	jra	L214
3250  0760               L604:
3251  0760 ae02d1        	ldw	x,#721
3252  0763 89            	pushw	x
3253  0764 ae0000        	ldw	x,#0
3254  0767 89            	pushw	x
3255  0768 ae0000        	ldw	x,#L702
3256  076b cd0000        	call	_assert_failed
3258  076e 5b04          	addw	sp,#4
3259  0770               L214:
3260                     ; 724   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
3262  0770 0d01          	tnz	(OFST+1,sp)
3263  0772 2706          	jreq	L7321
3264                     ; 726     TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3P;
3266  0774 7212530b      	bset	21259,#1
3268  0778 2004          	jra	L1421
3269  077a               L7321:
3270                     ; 730     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
3272  077a 7213530b      	bres	21259,#1
3273  077e               L1421:
3274                     ; 732 }
3277  077e 84            	pop	a
3278  077f 81            	ret
3324                     ; 745 void TIM2_CCxCmd(TIM2_Channel_TypeDef TIM2_Channel, FunctionalState NewState)
3324                     ; 746 {
3325                     	switch	.text
3326  0780               _TIM2_CCxCmd:
3328  0780 89            	pushw	x
3329       00000000      OFST:	set	0
3332                     ; 748   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
3334  0781 9e            	ld	a,xh
3335  0782 4d            	tnz	a
3336  0783 270a          	jreq	L024
3337  0785 9e            	ld	a,xh
3338  0786 a101          	cp	a,#1
3339  0788 2705          	jreq	L024
3340  078a 9e            	ld	a,xh
3341  078b a102          	cp	a,#2
3342  078d 2603          	jrne	L614
3343  078f               L024:
3344  078f 4f            	clr	a
3345  0790 2010          	jra	L224
3346  0792               L614:
3347  0792 ae02ec        	ldw	x,#748
3348  0795 89            	pushw	x
3349  0796 ae0000        	ldw	x,#0
3350  0799 89            	pushw	x
3351  079a ae0000        	ldw	x,#L702
3352  079d cd0000        	call	_assert_failed
3354  07a0 5b04          	addw	sp,#4
3355  07a2               L224:
3356                     ; 749   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3358  07a2 0d02          	tnz	(OFST+2,sp)
3359  07a4 2706          	jreq	L624
3360  07a6 7b02          	ld	a,(OFST+2,sp)
3361  07a8 a101          	cp	a,#1
3362  07aa 2603          	jrne	L424
3363  07ac               L624:
3364  07ac 4f            	clr	a
3365  07ad 2010          	jra	L034
3366  07af               L424:
3367  07af ae02ed        	ldw	x,#749
3368  07b2 89            	pushw	x
3369  07b3 ae0000        	ldw	x,#0
3370  07b6 89            	pushw	x
3371  07b7 ae0000        	ldw	x,#L702
3372  07ba cd0000        	call	_assert_failed
3374  07bd 5b04          	addw	sp,#4
3375  07bf               L034:
3376                     ; 751   if (TIM2_Channel == TIM2_CHANNEL_1)
3378  07bf 0d01          	tnz	(OFST+1,sp)
3379  07c1 2610          	jrne	L5621
3380                     ; 754     if (NewState != DISABLE)
3382  07c3 0d02          	tnz	(OFST+2,sp)
3383  07c5 2706          	jreq	L7621
3384                     ; 756       TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
3386  07c7 7210530a      	bset	21258,#0
3388  07cb 202a          	jra	L3721
3389  07cd               L7621:
3390                     ; 760       TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
3392  07cd 7211530a      	bres	21258,#0
3393  07d1 2024          	jra	L3721
3394  07d3               L5621:
3395                     ; 764   else if (TIM2_Channel == TIM2_CHANNEL_2)
3397  07d3 7b01          	ld	a,(OFST+1,sp)
3398  07d5 a101          	cp	a,#1
3399  07d7 2610          	jrne	L5721
3400                     ; 767     if (NewState != DISABLE)
3402  07d9 0d02          	tnz	(OFST+2,sp)
3403  07db 2706          	jreq	L7721
3404                     ; 769       TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC2E;
3406  07dd 7218530a      	bset	21258,#4
3408  07e1 2014          	jra	L3721
3409  07e3               L7721:
3410                     ; 773       TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
3412  07e3 7219530a      	bres	21258,#4
3413  07e7 200e          	jra	L3721
3414  07e9               L5721:
3415                     ; 779     if (NewState != DISABLE)
3417  07e9 0d02          	tnz	(OFST+2,sp)
3418  07eb 2706          	jreq	L5031
3419                     ; 781       TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3E;
3421  07ed 7210530b      	bset	21259,#0
3423  07f1 2004          	jra	L3721
3424  07f3               L5031:
3425                     ; 785       TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
3427  07f3 7211530b      	bres	21259,#0
3428  07f7               L3721:
3429                     ; 788 }
3432  07f7 85            	popw	x
3433  07f8 81            	ret
3479                     ; 810 void TIM2_SelectOCxM(TIM2_Channel_TypeDef TIM2_Channel, TIM2_OCMode_TypeDef TIM2_OCMode)
3479                     ; 811 {
3480                     	switch	.text
3481  07f9               _TIM2_SelectOCxM:
3483  07f9 89            	pushw	x
3484       00000000      OFST:	set	0
3487                     ; 813   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
3489  07fa 9e            	ld	a,xh
3490  07fb 4d            	tnz	a
3491  07fc 270a          	jreq	L634
3492  07fe 9e            	ld	a,xh
3493  07ff a101          	cp	a,#1
3494  0801 2705          	jreq	L634
3495  0803 9e            	ld	a,xh
3496  0804 a102          	cp	a,#2
3497  0806 2603          	jrne	L434
3498  0808               L634:
3499  0808 4f            	clr	a
3500  0809 2010          	jra	L044
3501  080b               L434:
3502  080b ae032d        	ldw	x,#813
3503  080e 89            	pushw	x
3504  080f ae0000        	ldw	x,#0
3505  0812 89            	pushw	x
3506  0813 ae0000        	ldw	x,#L702
3507  0816 cd0000        	call	_assert_failed
3509  0819 5b04          	addw	sp,#4
3510  081b               L044:
3511                     ; 814   assert_param(IS_TIM2_OCM_OK(TIM2_OCMode));
3513  081b 0d02          	tnz	(OFST+2,sp)
3514  081d 272a          	jreq	L444
3515  081f 7b02          	ld	a,(OFST+2,sp)
3516  0821 a110          	cp	a,#16
3517  0823 2724          	jreq	L444
3518  0825 7b02          	ld	a,(OFST+2,sp)
3519  0827 a120          	cp	a,#32
3520  0829 271e          	jreq	L444
3521  082b 7b02          	ld	a,(OFST+2,sp)
3522  082d a130          	cp	a,#48
3523  082f 2718          	jreq	L444
3524  0831 7b02          	ld	a,(OFST+2,sp)
3525  0833 a160          	cp	a,#96
3526  0835 2712          	jreq	L444
3527  0837 7b02          	ld	a,(OFST+2,sp)
3528  0839 a170          	cp	a,#112
3529  083b 270c          	jreq	L444
3530  083d 7b02          	ld	a,(OFST+2,sp)
3531  083f a150          	cp	a,#80
3532  0841 2706          	jreq	L444
3533  0843 7b02          	ld	a,(OFST+2,sp)
3534  0845 a140          	cp	a,#64
3535  0847 2603          	jrne	L244
3536  0849               L444:
3537  0849 4f            	clr	a
3538  084a 2010          	jra	L644
3539  084c               L244:
3540  084c ae032e        	ldw	x,#814
3541  084f 89            	pushw	x
3542  0850 ae0000        	ldw	x,#0
3543  0853 89            	pushw	x
3544  0854 ae0000        	ldw	x,#L702
3545  0857 cd0000        	call	_assert_failed
3547  085a 5b04          	addw	sp,#4
3548  085c               L644:
3549                     ; 816   if (TIM2_Channel == TIM2_CHANNEL_1)
3551  085c 0d01          	tnz	(OFST+1,sp)
3552  085e 2610          	jrne	L3331
3553                     ; 819     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
3555  0860 7211530a      	bres	21258,#0
3556                     ; 822     TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))
3556                     ; 823                             | (uint8_t)TIM2_OCMode);
3558  0864 c65307        	ld	a,21255
3559  0867 a48f          	and	a,#143
3560  0869 1a02          	or	a,(OFST+2,sp)
3561  086b c75307        	ld	21255,a
3563  086e 2024          	jra	L5331
3564  0870               L3331:
3565                     ; 825   else if (TIM2_Channel == TIM2_CHANNEL_2)
3567  0870 7b01          	ld	a,(OFST+1,sp)
3568  0872 a101          	cp	a,#1
3569  0874 2610          	jrne	L7331
3570                     ; 828     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
3572  0876 7219530a      	bres	21258,#4
3573                     ; 831     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))
3573                     ; 832                             | (uint8_t)TIM2_OCMode);
3575  087a c65308        	ld	a,21256
3576  087d a48f          	and	a,#143
3577  087f 1a02          	or	a,(OFST+2,sp)
3578  0881 c75308        	ld	21256,a
3580  0884 200e          	jra	L5331
3581  0886               L7331:
3582                     ; 837     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
3584  0886 7211530b      	bres	21259,#0
3585                     ; 840     TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
3585                     ; 841                             | (uint8_t)TIM2_OCMode);
3587  088a c65309        	ld	a,21257
3588  088d a48f          	and	a,#143
3589  088f 1a02          	or	a,(OFST+2,sp)
3590  0891 c75309        	ld	21257,a
3591  0894               L5331:
3592                     ; 843 }
3595  0894 85            	popw	x
3596  0895 81            	ret
3630                     ; 851 void TIM2_SetCounter(uint16_t Counter)
3630                     ; 852 {
3631                     	switch	.text
3632  0896               _TIM2_SetCounter:
3636                     ; 854   TIM2->CNTRH = (uint8_t)(Counter >> 8);
3638  0896 9e            	ld	a,xh
3639  0897 c7530c        	ld	21260,a
3640                     ; 855   TIM2->CNTRL = (uint8_t)(Counter);
3642  089a 9f            	ld	a,xl
3643  089b c7530d        	ld	21261,a
3644                     ; 856 }
3647  089e 81            	ret
3681                     ; 864 void TIM2_SetAutoreload(uint16_t Autoreload)
3681                     ; 865 {
3682                     	switch	.text
3683  089f               _TIM2_SetAutoreload:
3687                     ; 867   TIM2->ARRH = (uint8_t)(Autoreload >> 8);
3689  089f 9e            	ld	a,xh
3690  08a0 c7530f        	ld	21263,a
3691                     ; 868   TIM2->ARRL = (uint8_t)(Autoreload);
3693  08a3 9f            	ld	a,xl
3694  08a4 c75310        	ld	21264,a
3695                     ; 869 }
3698  08a7 81            	ret
3732                     ; 877 void TIM2_SetCompare1(uint16_t Compare1)
3732                     ; 878 {
3733                     	switch	.text
3734  08a8               _TIM2_SetCompare1:
3738                     ; 880   TIM2->CCR1H = (uint8_t)(Compare1 >> 8);
3740  08a8 9e            	ld	a,xh
3741  08a9 c75311        	ld	21265,a
3742                     ; 881   TIM2->CCR1L = (uint8_t)(Compare1);
3744  08ac 9f            	ld	a,xl
3745  08ad c75312        	ld	21266,a
3746                     ; 882 }
3749  08b0 81            	ret
3783                     ; 890 void TIM2_SetCompare2(uint16_t Compare2)
3783                     ; 891 {
3784                     	switch	.text
3785  08b1               _TIM2_SetCompare2:
3789                     ; 893   TIM2->CCR2H = (uint8_t)(Compare2 >> 8);
3791  08b1 9e            	ld	a,xh
3792  08b2 c75313        	ld	21267,a
3793                     ; 894   TIM2->CCR2L = (uint8_t)(Compare2);
3795  08b5 9f            	ld	a,xl
3796  08b6 c75314        	ld	21268,a
3797                     ; 895 }
3800  08b9 81            	ret
3834                     ; 903 void TIM2_SetCompare3(uint16_t Compare3)
3834                     ; 904 {
3835                     	switch	.text
3836  08ba               _TIM2_SetCompare3:
3840                     ; 906   TIM2->CCR3H = (uint8_t)(Compare3 >> 8);
3842  08ba 9e            	ld	a,xh
3843  08bb c75315        	ld	21269,a
3844                     ; 907   TIM2->CCR3L = (uint8_t)(Compare3);
3846  08be 9f            	ld	a,xl
3847  08bf c75316        	ld	21270,a
3848                     ; 908 }
3851  08c2 81            	ret
3888                     ; 920 void TIM2_SetIC1Prescaler(TIM2_ICPSC_TypeDef TIM2_IC1Prescaler)
3888                     ; 921 {
3889                     	switch	.text
3890  08c3               _TIM2_SetIC1Prescaler:
3892  08c3 88            	push	a
3893       00000000      OFST:	set	0
3896                     ; 923   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC1Prescaler));
3898  08c4 4d            	tnz	a
3899  08c5 270c          	jreq	L664
3900  08c7 a104          	cp	a,#4
3901  08c9 2708          	jreq	L664
3902  08cb a108          	cp	a,#8
3903  08cd 2704          	jreq	L664
3904  08cf a10c          	cp	a,#12
3905  08d1 2603          	jrne	L464
3906  08d3               L664:
3907  08d3 4f            	clr	a
3908  08d4 2010          	jra	L074
3909  08d6               L464:
3910  08d6 ae039b        	ldw	x,#923
3911  08d9 89            	pushw	x
3912  08da ae0000        	ldw	x,#0
3913  08dd 89            	pushw	x
3914  08de ae0000        	ldw	x,#L702
3915  08e1 cd0000        	call	_assert_failed
3917  08e4 5b04          	addw	sp,#4
3918  08e6               L074:
3919                     ; 926   TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3919                     ; 927                           | (uint8_t)TIM2_IC1Prescaler);
3921  08e6 c65307        	ld	a,21255
3922  08e9 a4f3          	and	a,#243
3923  08eb 1a01          	or	a,(OFST+1,sp)
3924  08ed c75307        	ld	21255,a
3925                     ; 928 }
3928  08f0 84            	pop	a
3929  08f1 81            	ret
3966                     ; 940 void TIM2_SetIC2Prescaler(TIM2_ICPSC_TypeDef TIM2_IC2Prescaler)
3966                     ; 941 {
3967                     	switch	.text
3968  08f2               _TIM2_SetIC2Prescaler:
3970  08f2 88            	push	a
3971       00000000      OFST:	set	0
3974                     ; 943   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC2Prescaler));
3976  08f3 4d            	tnz	a
3977  08f4 270c          	jreq	L674
3978  08f6 a104          	cp	a,#4
3979  08f8 2708          	jreq	L674
3980  08fa a108          	cp	a,#8
3981  08fc 2704          	jreq	L674
3982  08fe a10c          	cp	a,#12
3983  0900 2603          	jrne	L474
3984  0902               L674:
3985  0902 4f            	clr	a
3986  0903 2010          	jra	L005
3987  0905               L474:
3988  0905 ae03af        	ldw	x,#943
3989  0908 89            	pushw	x
3990  0909 ae0000        	ldw	x,#0
3991  090c 89            	pushw	x
3992  090d ae0000        	ldw	x,#L702
3993  0910 cd0000        	call	_assert_failed
3995  0913 5b04          	addw	sp,#4
3996  0915               L005:
3997                     ; 946   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3997                     ; 947                           | (uint8_t)TIM2_IC2Prescaler);
3999  0915 c65308        	ld	a,21256
4000  0918 a4f3          	and	a,#243
4001  091a 1a01          	or	a,(OFST+1,sp)
4002  091c c75308        	ld	21256,a
4003                     ; 948 }
4006  091f 84            	pop	a
4007  0920 81            	ret
4044                     ; 960 void TIM2_SetIC3Prescaler(TIM2_ICPSC_TypeDef TIM2_IC3Prescaler)
4044                     ; 961 {
4045                     	switch	.text
4046  0921               _TIM2_SetIC3Prescaler:
4048  0921 88            	push	a
4049       00000000      OFST:	set	0
4052                     ; 964   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC3Prescaler));
4054  0922 4d            	tnz	a
4055  0923 270c          	jreq	L605
4056  0925 a104          	cp	a,#4
4057  0927 2708          	jreq	L605
4058  0929 a108          	cp	a,#8
4059  092b 2704          	jreq	L605
4060  092d a10c          	cp	a,#12
4061  092f 2603          	jrne	L405
4062  0931               L605:
4063  0931 4f            	clr	a
4064  0932 2010          	jra	L015
4065  0934               L405:
4066  0934 ae03c4        	ldw	x,#964
4067  0937 89            	pushw	x
4068  0938 ae0000        	ldw	x,#0
4069  093b 89            	pushw	x
4070  093c ae0000        	ldw	x,#L702
4071  093f cd0000        	call	_assert_failed
4073  0942 5b04          	addw	sp,#4
4074  0944               L015:
4075                     ; 966   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_ICxPSC))
4075                     ; 967                           | (uint8_t)TIM2_IC3Prescaler);
4077  0944 c65309        	ld	a,21257
4078  0947 a4f3          	and	a,#243
4079  0949 1a01          	or	a,(OFST+1,sp)
4080  094b c75309        	ld	21257,a
4081                     ; 968 }
4084  094e 84            	pop	a
4085  094f 81            	ret
4137                     ; 975 uint16_t TIM2_GetCapture1(void)
4137                     ; 976 {
4138                     	switch	.text
4139  0950               _TIM2_GetCapture1:
4141  0950 5204          	subw	sp,#4
4142       00000004      OFST:	set	4
4145                     ; 978   uint16_t tmpccr1 = 0;
4147                     ; 979   uint8_t tmpccr1l=0, tmpccr1h=0;
4151                     ; 981   tmpccr1h = TIM2->CCR1H;
4153  0952 c65311        	ld	a,21265
4154  0955 6b02          	ld	(OFST-2,sp),a
4156                     ; 982   tmpccr1l = TIM2->CCR1L;
4158  0957 c65312        	ld	a,21266
4159  095a 6b01          	ld	(OFST-3,sp),a
4161                     ; 984   tmpccr1 = (uint16_t)(tmpccr1l);
4163  095c 7b01          	ld	a,(OFST-3,sp)
4164  095e 5f            	clrw	x
4165  095f 97            	ld	xl,a
4166  0960 1f03          	ldw	(OFST-1,sp),x
4168                     ; 985   tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
4170  0962 7b02          	ld	a,(OFST-2,sp)
4171  0964 5f            	clrw	x
4172  0965 97            	ld	xl,a
4173  0966 4f            	clr	a
4174  0967 02            	rlwa	x,a
4175  0968 01            	rrwa	x,a
4176  0969 1a04          	or	a,(OFST+0,sp)
4177  096b 01            	rrwa	x,a
4178  096c 1a03          	or	a,(OFST-1,sp)
4179  096e 01            	rrwa	x,a
4180  096f 1f03          	ldw	(OFST-1,sp),x
4182                     ; 987   return (uint16_t)tmpccr1;
4184  0971 1e03          	ldw	x,(OFST-1,sp)
4187  0973 5b04          	addw	sp,#4
4188  0975 81            	ret
4240                     ; 995 uint16_t TIM2_GetCapture2(void)
4240                     ; 996 {
4241                     	switch	.text
4242  0976               _TIM2_GetCapture2:
4244  0976 5204          	subw	sp,#4
4245       00000004      OFST:	set	4
4248                     ; 998   uint16_t tmpccr2 = 0;
4250                     ; 999   uint8_t tmpccr2l=0, tmpccr2h=0;
4254                     ; 1001   tmpccr2h = TIM2->CCR2H;
4256  0978 c65313        	ld	a,21267
4257  097b 6b02          	ld	(OFST-2,sp),a
4259                     ; 1002   tmpccr2l = TIM2->CCR2L;
4261  097d c65314        	ld	a,21268
4262  0980 6b01          	ld	(OFST-3,sp),a
4264                     ; 1004   tmpccr2 = (uint16_t)(tmpccr2l);
4266  0982 7b01          	ld	a,(OFST-3,sp)
4267  0984 5f            	clrw	x
4268  0985 97            	ld	xl,a
4269  0986 1f03          	ldw	(OFST-1,sp),x
4271                     ; 1005   tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
4273  0988 7b02          	ld	a,(OFST-2,sp)
4274  098a 5f            	clrw	x
4275  098b 97            	ld	xl,a
4276  098c 4f            	clr	a
4277  098d 02            	rlwa	x,a
4278  098e 01            	rrwa	x,a
4279  098f 1a04          	or	a,(OFST+0,sp)
4280  0991 01            	rrwa	x,a
4281  0992 1a03          	or	a,(OFST-1,sp)
4282  0994 01            	rrwa	x,a
4283  0995 1f03          	ldw	(OFST-1,sp),x
4285                     ; 1007   return (uint16_t)tmpccr2;
4287  0997 1e03          	ldw	x,(OFST-1,sp)
4290  0999 5b04          	addw	sp,#4
4291  099b 81            	ret
4343                     ; 1015 uint16_t TIM2_GetCapture3(void)
4343                     ; 1016 {
4344                     	switch	.text
4345  099c               _TIM2_GetCapture3:
4347  099c 5204          	subw	sp,#4
4348       00000004      OFST:	set	4
4351                     ; 1018   uint16_t tmpccr3 = 0;
4353                     ; 1019   uint8_t tmpccr3l=0, tmpccr3h=0;
4357                     ; 1021   tmpccr3h = TIM2->CCR3H;
4359  099e c65315        	ld	a,21269
4360  09a1 6b02          	ld	(OFST-2,sp),a
4362                     ; 1022   tmpccr3l = TIM2->CCR3L;
4364  09a3 c65316        	ld	a,21270
4365  09a6 6b01          	ld	(OFST-3,sp),a
4367                     ; 1024   tmpccr3 = (uint16_t)(tmpccr3l);
4369  09a8 7b01          	ld	a,(OFST-3,sp)
4370  09aa 5f            	clrw	x
4371  09ab 97            	ld	xl,a
4372  09ac 1f03          	ldw	(OFST-1,sp),x
4374                     ; 1025   tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
4376  09ae 7b02          	ld	a,(OFST-2,sp)
4377  09b0 5f            	clrw	x
4378  09b1 97            	ld	xl,a
4379  09b2 4f            	clr	a
4380  09b3 02            	rlwa	x,a
4381  09b4 01            	rrwa	x,a
4382  09b5 1a04          	or	a,(OFST+0,sp)
4383  09b7 01            	rrwa	x,a
4384  09b8 1a03          	or	a,(OFST-1,sp)
4385  09ba 01            	rrwa	x,a
4386  09bb 1f03          	ldw	(OFST-1,sp),x
4388                     ; 1027   return (uint16_t)tmpccr3;
4390  09bd 1e03          	ldw	x,(OFST-1,sp)
4393  09bf 5b04          	addw	sp,#4
4394  09c1 81            	ret
4428                     ; 1035 uint16_t TIM2_GetCounter(void)
4428                     ; 1036 {
4429                     	switch	.text
4430  09c2               _TIM2_GetCounter:
4432  09c2 89            	pushw	x
4433       00000002      OFST:	set	2
4436                     ; 1037   uint16_t tmpcntr = 0;
4438                     ; 1039   tmpcntr =  ((uint16_t)TIM2->CNTRH << 8);
4440  09c3 c6530c        	ld	a,21260
4441  09c6 5f            	clrw	x
4442  09c7 97            	ld	xl,a
4443  09c8 4f            	clr	a
4444  09c9 02            	rlwa	x,a
4445  09ca 1f01          	ldw	(OFST-1,sp),x
4447                     ; 1041   return (uint16_t)( tmpcntr| (uint16_t)(TIM2->CNTRL));
4449  09cc c6530d        	ld	a,21261
4450  09cf 5f            	clrw	x
4451  09d0 97            	ld	xl,a
4452  09d1 01            	rrwa	x,a
4453  09d2 1a02          	or	a,(OFST+0,sp)
4454  09d4 01            	rrwa	x,a
4455  09d5 1a01          	or	a,(OFST-1,sp)
4456  09d7 01            	rrwa	x,a
4459  09d8 5b02          	addw	sp,#2
4460  09da 81            	ret
4484                     ; 1049 TIM2_Prescaler_TypeDef TIM2_GetPrescaler(void)
4484                     ; 1050 {
4485                     	switch	.text
4486  09db               _TIM2_GetPrescaler:
4490                     ; 1052   return (TIM2_Prescaler_TypeDef)(TIM2->PSCR);
4492  09db c6530e        	ld	a,21262
4495  09de 81            	ret
4635                     ; 1068 FlagStatus TIM2_GetFlagStatus(TIM2_FLAG_TypeDef TIM2_FLAG)
4635                     ; 1069 {
4636                     	switch	.text
4637  09df               _TIM2_GetFlagStatus:
4639  09df 89            	pushw	x
4640  09e0 89            	pushw	x
4641       00000002      OFST:	set	2
4644                     ; 1070   FlagStatus bitstatus = RESET;
4646                     ; 1071   uint8_t tim2_flag_l = 0, tim2_flag_h = 0;
4650                     ; 1074   assert_param(IS_TIM2_GET_FLAG_OK(TIM2_FLAG));
4652  09e1 a30001        	cpw	x,#1
4653  09e4 271e          	jreq	L035
4654  09e6 a30002        	cpw	x,#2
4655  09e9 2719          	jreq	L035
4656  09eb a30004        	cpw	x,#4
4657  09ee 2714          	jreq	L035
4658  09f0 a30008        	cpw	x,#8
4659  09f3 270f          	jreq	L035
4660  09f5 a30200        	cpw	x,#512
4661  09f8 270a          	jreq	L035
4662  09fa a30400        	cpw	x,#1024
4663  09fd 2705          	jreq	L035
4664  09ff a30800        	cpw	x,#2048
4665  0a02 2603          	jrne	L625
4666  0a04               L035:
4667  0a04 4f            	clr	a
4668  0a05 2010          	jra	L235
4669  0a07               L625:
4670  0a07 ae0432        	ldw	x,#1074
4671  0a0a 89            	pushw	x
4672  0a0b ae0000        	ldw	x,#0
4673  0a0e 89            	pushw	x
4674  0a0f ae0000        	ldw	x,#L702
4675  0a12 cd0000        	call	_assert_failed
4677  0a15 5b04          	addw	sp,#4
4678  0a17               L235:
4679                     ; 1076   tim2_flag_l = (uint8_t)(TIM2->SR1 & (uint8_t)TIM2_FLAG);
4681  0a17 c65304        	ld	a,21252
4682  0a1a 1404          	and	a,(OFST+2,sp)
4683  0a1c 6b01          	ld	(OFST-1,sp),a
4685                     ; 1077   tim2_flag_h = (uint8_t)((uint16_t)TIM2_FLAG >> 8);
4687  0a1e 7b03          	ld	a,(OFST+1,sp)
4688  0a20 6b02          	ld	(OFST+0,sp),a
4690                     ; 1079   if ((tim2_flag_l | (uint8_t)(TIM2->SR2 & tim2_flag_h)) != (uint8_t)RESET )
4692  0a22 c65305        	ld	a,21253
4693  0a25 1402          	and	a,(OFST+0,sp)
4694  0a27 1a01          	or	a,(OFST-1,sp)
4695  0a29 2706          	jreq	L7371
4696                     ; 1081     bitstatus = SET;
4698  0a2b a601          	ld	a,#1
4699  0a2d 6b02          	ld	(OFST+0,sp),a
4702  0a2f 2002          	jra	L1471
4703  0a31               L7371:
4704                     ; 1085     bitstatus = RESET;
4706  0a31 0f02          	clr	(OFST+0,sp)
4708  0a33               L1471:
4709                     ; 1087   return (FlagStatus)bitstatus;
4711  0a33 7b02          	ld	a,(OFST+0,sp)
4714  0a35 5b04          	addw	sp,#4
4715  0a37 81            	ret
4751                     ; 1103 void TIM2_ClearFlag(TIM2_FLAG_TypeDef TIM2_FLAG)
4751                     ; 1104 {
4752                     	switch	.text
4753  0a38               _TIM2_ClearFlag:
4755  0a38 89            	pushw	x
4756       00000000      OFST:	set	0
4759                     ; 1106   assert_param(IS_TIM2_CLEAR_FLAG_OK(TIM2_FLAG));
4761  0a39 01            	rrwa	x,a
4762  0a3a a4f0          	and	a,#240
4763  0a3c 01            	rrwa	x,a
4764  0a3d a4f1          	and	a,#241
4765  0a3f 01            	rrwa	x,a
4766  0a40 a30000        	cpw	x,#0
4767  0a43 2607          	jrne	L635
4768  0a45 1e01          	ldw	x,(OFST+1,sp)
4769  0a47 2703          	jreq	L635
4770  0a49 4f            	clr	a
4771  0a4a 2010          	jra	L045
4772  0a4c               L635:
4773  0a4c ae0452        	ldw	x,#1106
4774  0a4f 89            	pushw	x
4775  0a50 ae0000        	ldw	x,#0
4776  0a53 89            	pushw	x
4777  0a54 ae0000        	ldw	x,#L702
4778  0a57 cd0000        	call	_assert_failed
4780  0a5a 5b04          	addw	sp,#4
4781  0a5c               L045:
4782                     ; 1109   TIM2->SR1 = (uint8_t)(~((uint8_t)(TIM2_FLAG)));
4784  0a5c 7b02          	ld	a,(OFST+2,sp)
4785  0a5e 43            	cpl	a
4786  0a5f c75304        	ld	21252,a
4787                     ; 1110   TIM2->SR2 = (uint8_t)(~((uint8_t)((uint8_t)TIM2_FLAG >> 8)));
4789  0a62 35ff5305      	mov	21253,#255
4790                     ; 1111 }
4793  0a66 85            	popw	x
4794  0a67 81            	ret
4859                     ; 1123 ITStatus TIM2_GetITStatus(TIM2_IT_TypeDef TIM2_IT)
4859                     ; 1124 {
4860                     	switch	.text
4861  0a68               _TIM2_GetITStatus:
4863  0a68 88            	push	a
4864  0a69 89            	pushw	x
4865       00000002      OFST:	set	2
4868                     ; 1125   ITStatus bitstatus = RESET;
4870                     ; 1126   uint8_t TIM2_itStatus = 0, TIM2_itEnable = 0;
4874                     ; 1129   assert_param(IS_TIM2_GET_IT_OK(TIM2_IT));
4876  0a6a a101          	cp	a,#1
4877  0a6c 270c          	jreq	L645
4878  0a6e a102          	cp	a,#2
4879  0a70 2708          	jreq	L645
4880  0a72 a104          	cp	a,#4
4881  0a74 2704          	jreq	L645
4882  0a76 a108          	cp	a,#8
4883  0a78 2603          	jrne	L445
4884  0a7a               L645:
4885  0a7a 4f            	clr	a
4886  0a7b 2010          	jra	L055
4887  0a7d               L445:
4888  0a7d ae0469        	ldw	x,#1129
4889  0a80 89            	pushw	x
4890  0a81 ae0000        	ldw	x,#0
4891  0a84 89            	pushw	x
4892  0a85 ae0000        	ldw	x,#L702
4893  0a88 cd0000        	call	_assert_failed
4895  0a8b 5b04          	addw	sp,#4
4896  0a8d               L055:
4897                     ; 1131   TIM2_itStatus = (uint8_t)(TIM2->SR1 & TIM2_IT);
4899  0a8d c65304        	ld	a,21252
4900  0a90 1403          	and	a,(OFST+1,sp)
4901  0a92 6b01          	ld	(OFST-1,sp),a
4903                     ; 1133   TIM2_itEnable = (uint8_t)(TIM2->IER & TIM2_IT);
4905  0a94 c65303        	ld	a,21251
4906  0a97 1403          	and	a,(OFST+1,sp)
4907  0a99 6b02          	ld	(OFST+0,sp),a
4909                     ; 1135   if ((TIM2_itStatus != (uint8_t)RESET ) && (TIM2_itEnable != (uint8_t)RESET ))
4911  0a9b 0d01          	tnz	(OFST-1,sp)
4912  0a9d 270a          	jreq	L3102
4914  0a9f 0d02          	tnz	(OFST+0,sp)
4915  0aa1 2706          	jreq	L3102
4916                     ; 1137     bitstatus = SET;
4918  0aa3 a601          	ld	a,#1
4919  0aa5 6b02          	ld	(OFST+0,sp),a
4922  0aa7 2002          	jra	L5102
4923  0aa9               L3102:
4924                     ; 1141     bitstatus = RESET;
4926  0aa9 0f02          	clr	(OFST+0,sp)
4928  0aab               L5102:
4929                     ; 1143   return (ITStatus)(bitstatus);
4931  0aab 7b02          	ld	a,(OFST+0,sp)
4934  0aad 5b03          	addw	sp,#3
4935  0aaf 81            	ret
4972                     ; 1156 void TIM2_ClearITPendingBit(TIM2_IT_TypeDef TIM2_IT)
4972                     ; 1157 {
4973                     	switch	.text
4974  0ab0               _TIM2_ClearITPendingBit:
4976  0ab0 88            	push	a
4977       00000000      OFST:	set	0
4980                     ; 1159   assert_param(IS_TIM2_IT_OK(TIM2_IT));
4982  0ab1 4d            	tnz	a
4983  0ab2 2707          	jreq	L455
4984  0ab4 a110          	cp	a,#16
4985  0ab6 2403          	jruge	L455
4986  0ab8 4f            	clr	a
4987  0ab9 2010          	jra	L655
4988  0abb               L455:
4989  0abb ae0487        	ldw	x,#1159
4990  0abe 89            	pushw	x
4991  0abf ae0000        	ldw	x,#0
4992  0ac2 89            	pushw	x
4993  0ac3 ae0000        	ldw	x,#L702
4994  0ac6 cd0000        	call	_assert_failed
4996  0ac9 5b04          	addw	sp,#4
4997  0acb               L655:
4998                     ; 1162   TIM2->SR1 = (uint8_t)(~TIM2_IT);
5000  0acb 7b01          	ld	a,(OFST+1,sp)
5001  0acd 43            	cpl	a
5002  0ace c75304        	ld	21252,a
5003                     ; 1163 }
5006  0ad1 84            	pop	a
5007  0ad2 81            	ret
5059                     ; 1181 static void TI1_Config(uint8_t TIM2_ICPolarity,
5059                     ; 1182                        uint8_t TIM2_ICSelection,
5059                     ; 1183                        uint8_t TIM2_ICFilter)
5059                     ; 1184 {
5060                     	switch	.text
5061  0ad3               L3_TI1_Config:
5063  0ad3 89            	pushw	x
5064  0ad4 88            	push	a
5065       00000001      OFST:	set	1
5068                     ; 1186   TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
5070  0ad5 7211530a      	bres	21258,#0
5071                     ; 1189   TIM2->CCMR1  = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF )))
5071                     ; 1190                            | (uint8_t)(((TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
5073  0ad9 7b06          	ld	a,(OFST+5,sp)
5074  0adb 97            	ld	xl,a
5075  0adc a610          	ld	a,#16
5076  0ade 42            	mul	x,a
5077  0adf 9f            	ld	a,xl
5078  0ae0 1a03          	or	a,(OFST+2,sp)
5079  0ae2 6b01          	ld	(OFST+0,sp),a
5081  0ae4 c65307        	ld	a,21255
5082  0ae7 a40c          	and	a,#12
5083  0ae9 1a01          	or	a,(OFST+0,sp)
5084  0aeb c75307        	ld	21255,a
5085                     ; 1193   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
5087  0aee 0d02          	tnz	(OFST+1,sp)
5088  0af0 2706          	jreq	L3602
5089                     ; 1195     TIM2->CCER1 |= TIM2_CCER1_CC1P;
5091  0af2 7212530a      	bset	21258,#1
5093  0af6 2004          	jra	L5602
5094  0af8               L3602:
5095                     ; 1199     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
5097  0af8 7213530a      	bres	21258,#1
5098  0afc               L5602:
5099                     ; 1202   TIM2->CCER1 |= TIM2_CCER1_CC1E;
5101  0afc 7210530a      	bset	21258,#0
5102                     ; 1203 }
5105  0b00 5b03          	addw	sp,#3
5106  0b02 81            	ret
5158                     ; 1221 static void TI2_Config(uint8_t TIM2_ICPolarity,
5158                     ; 1222                        uint8_t TIM2_ICSelection,
5158                     ; 1223                        uint8_t TIM2_ICFilter)
5158                     ; 1224 {
5159                     	switch	.text
5160  0b03               L5_TI2_Config:
5162  0b03 89            	pushw	x
5163  0b04 88            	push	a
5164       00000001      OFST:	set	1
5167                     ; 1226   TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
5169  0b05 7219530a      	bres	21258,#4
5170                     ; 1229   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF ))) 
5170                     ; 1230                           | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
5172  0b09 7b06          	ld	a,(OFST+5,sp)
5173  0b0b 97            	ld	xl,a
5174  0b0c a610          	ld	a,#16
5175  0b0e 42            	mul	x,a
5176  0b0f 9f            	ld	a,xl
5177  0b10 1a03          	or	a,(OFST+2,sp)
5178  0b12 6b01          	ld	(OFST+0,sp),a
5180  0b14 c65308        	ld	a,21256
5181  0b17 a40c          	and	a,#12
5182  0b19 1a01          	or	a,(OFST+0,sp)
5183  0b1b c75308        	ld	21256,a
5184                     ; 1234   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
5186  0b1e 0d02          	tnz	(OFST+1,sp)
5187  0b20 2706          	jreq	L5112
5188                     ; 1236     TIM2->CCER1 |= TIM2_CCER1_CC2P;
5190  0b22 721a530a      	bset	21258,#5
5192  0b26 2004          	jra	L7112
5193  0b28               L5112:
5194                     ; 1240     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
5196  0b28 721b530a      	bres	21258,#5
5197  0b2c               L7112:
5198                     ; 1244   TIM2->CCER1 |= TIM2_CCER1_CC2E;
5200  0b2c 7218530a      	bset	21258,#4
5201                     ; 1245 }
5204  0b30 5b03          	addw	sp,#3
5205  0b32 81            	ret
5257                     ; 1261 static void TI3_Config(uint8_t TIM2_ICPolarity, uint8_t TIM2_ICSelection,
5257                     ; 1262                        uint8_t TIM2_ICFilter)
5257                     ; 1263 {
5258                     	switch	.text
5259  0b33               L7_TI3_Config:
5261  0b33 89            	pushw	x
5262  0b34 88            	push	a
5263       00000001      OFST:	set	1
5266                     ; 1265   TIM2->CCER2 &=  (uint8_t)(~TIM2_CCER2_CC3E);
5268  0b35 7211530b      	bres	21259,#0
5269                     ; 1268   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF))) 
5269                     ; 1269                           | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
5271  0b39 7b06          	ld	a,(OFST+5,sp)
5272  0b3b 97            	ld	xl,a
5273  0b3c a610          	ld	a,#16
5274  0b3e 42            	mul	x,a
5275  0b3f 9f            	ld	a,xl
5276  0b40 1a03          	or	a,(OFST+2,sp)
5277  0b42 6b01          	ld	(OFST+0,sp),a
5279  0b44 c65309        	ld	a,21257
5280  0b47 a40c          	and	a,#12
5281  0b49 1a01          	or	a,(OFST+0,sp)
5282  0b4b c75309        	ld	21257,a
5283                     ; 1273   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
5285  0b4e 0d02          	tnz	(OFST+1,sp)
5286  0b50 2706          	jreq	L7412
5287                     ; 1275     TIM2->CCER2 |= TIM2_CCER2_CC3P;
5289  0b52 7212530b      	bset	21259,#1
5291  0b56 2004          	jra	L1512
5292  0b58               L7412:
5293                     ; 1279     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
5295  0b58 7213530b      	bres	21259,#1
5296  0b5c               L1512:
5297                     ; 1282   TIM2->CCER2 |= TIM2_CCER2_CC3E;
5299  0b5c 7210530b      	bset	21259,#0
5300                     ; 1283 }
5303  0b60 5b03          	addw	sp,#3
5304  0b62 81            	ret
5317                     	xdef	_TIM2_ClearITPendingBit
5318                     	xdef	_TIM2_GetITStatus
5319                     	xdef	_TIM2_ClearFlag
5320                     	xdef	_TIM2_GetFlagStatus
5321                     	xdef	_TIM2_GetPrescaler
5322                     	xdef	_TIM2_GetCounter
5323                     	xdef	_TIM2_GetCapture3
5324                     	xdef	_TIM2_GetCapture2
5325                     	xdef	_TIM2_GetCapture1
5326                     	xdef	_TIM2_SetIC3Prescaler
5327                     	xdef	_TIM2_SetIC2Prescaler
5328                     	xdef	_TIM2_SetIC1Prescaler
5329                     	xdef	_TIM2_SetCompare3
5330                     	xdef	_TIM2_SetCompare2
5331                     	xdef	_TIM2_SetCompare1
5332                     	xdef	_TIM2_SetAutoreload
5333                     	xdef	_TIM2_SetCounter
5334                     	xdef	_TIM2_SelectOCxM
5335                     	xdef	_TIM2_CCxCmd
5336                     	xdef	_TIM2_OC3PolarityConfig
5337                     	xdef	_TIM2_OC2PolarityConfig
5338                     	xdef	_TIM2_OC1PolarityConfig
5339                     	xdef	_TIM2_GenerateEvent
5340                     	xdef	_TIM2_OC3PreloadConfig
5341                     	xdef	_TIM2_OC2PreloadConfig
5342                     	xdef	_TIM2_OC1PreloadConfig
5343                     	xdef	_TIM2_ARRPreloadConfig
5344                     	xdef	_TIM2_ForcedOC3Config
5345                     	xdef	_TIM2_ForcedOC2Config
5346                     	xdef	_TIM2_ForcedOC1Config
5347                     	xdef	_TIM2_PrescalerConfig
5348                     	xdef	_TIM2_SelectOnePulseMode
5349                     	xdef	_TIM2_UpdateRequestConfig
5350                     	xdef	_TIM2_UpdateDisableConfig
5351                     	xdef	_TIM2_ITConfig
5352                     	xdef	_TIM2_Cmd
5353                     	xdef	_TIM2_PWMIConfig
5354                     	xdef	_TIM2_ICInit
5355                     	xdef	_TIM2_OC3Init
5356                     	xdef	_TIM2_OC2Init
5357                     	xdef	_TIM2_OC1Init
5358                     	xdef	_TIM2_TimeBaseInit
5359                     	xdef	_TIM2_DeInit
5360                     	xref	_assert_failed
5361                     .const:	section	.text
5362  0000               L702:
5363  0000 2e2e5c6c6962  	dc.b	"..\libs\src\stm8s_"
5364  0012 74696d322e63  	dc.b	"tim2.c",0
5384                     	end
