   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
  43                     ; 58 void TIM1_DeInit(void)
  43                     ; 59 {
  45                     	switch	.text
  46  0000               _TIM1_DeInit:
  50                     ; 60   TIM1->CR1  = TIM1_CR1_RESET_VALUE;
  52  0000 725f5250      	clr	21072
  53                     ; 61   TIM1->CR2  = TIM1_CR2_RESET_VALUE;
  55  0004 725f5251      	clr	21073
  56                     ; 62   TIM1->SMCR = TIM1_SMCR_RESET_VALUE;
  58  0008 725f5252      	clr	21074
  59                     ; 63   TIM1->ETR  = TIM1_ETR_RESET_VALUE;
  61  000c 725f5253      	clr	21075
  62                     ; 64   TIM1->IER  = TIM1_IER_RESET_VALUE;
  64  0010 725f5254      	clr	21076
  65                     ; 65   TIM1->SR2  = TIM1_SR2_RESET_VALUE;
  67  0014 725f5256      	clr	21078
  68                     ; 67   TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  70  0018 725f525c      	clr	21084
  71                     ; 68   TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  73  001c 725f525d      	clr	21085
  74                     ; 70   TIM1->CCMR1 = 0x01;
  76  0020 35015258      	mov	21080,#1
  77                     ; 71   TIM1->CCMR2 = 0x01;
  79  0024 35015259      	mov	21081,#1
  80                     ; 72   TIM1->CCMR3 = 0x01;
  82  0028 3501525a      	mov	21082,#1
  83                     ; 73   TIM1->CCMR4 = 0x01;
  85  002c 3501525b      	mov	21083,#1
  86                     ; 75   TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  88  0030 725f525c      	clr	21084
  89                     ; 76   TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  91  0034 725f525d      	clr	21085
  92                     ; 77   TIM1->CCMR1 = TIM1_CCMR1_RESET_VALUE;
  94  0038 725f5258      	clr	21080
  95                     ; 78   TIM1->CCMR2 = TIM1_CCMR2_RESET_VALUE;
  97  003c 725f5259      	clr	21081
  98                     ; 79   TIM1->CCMR3 = TIM1_CCMR3_RESET_VALUE;
 100  0040 725f525a      	clr	21082
 101                     ; 80   TIM1->CCMR4 = TIM1_CCMR4_RESET_VALUE;
 103  0044 725f525b      	clr	21083
 104                     ; 81   TIM1->CNTRH = TIM1_CNTRH_RESET_VALUE;
 106  0048 725f525e      	clr	21086
 107                     ; 82   TIM1->CNTRL = TIM1_CNTRL_RESET_VALUE;
 109  004c 725f525f      	clr	21087
 110                     ; 83   TIM1->PSCRH = TIM1_PSCRH_RESET_VALUE;
 112  0050 725f5260      	clr	21088
 113                     ; 84   TIM1->PSCRL = TIM1_PSCRL_RESET_VALUE;
 115  0054 725f5261      	clr	21089
 116                     ; 85   TIM1->ARRH  = TIM1_ARRH_RESET_VALUE;
 118  0058 35ff5262      	mov	21090,#255
 119                     ; 86   TIM1->ARRL  = TIM1_ARRL_RESET_VALUE;
 121  005c 35ff5263      	mov	21091,#255
 122                     ; 87   TIM1->CCR1H = TIM1_CCR1H_RESET_VALUE;
 124  0060 725f5265      	clr	21093
 125                     ; 88   TIM1->CCR1L = TIM1_CCR1L_RESET_VALUE;
 127  0064 725f5266      	clr	21094
 128                     ; 89   TIM1->CCR2H = TIM1_CCR2H_RESET_VALUE;
 130  0068 725f5267      	clr	21095
 131                     ; 90   TIM1->CCR2L = TIM1_CCR2L_RESET_VALUE;
 133  006c 725f5268      	clr	21096
 134                     ; 91   TIM1->CCR3H = TIM1_CCR3H_RESET_VALUE;
 136  0070 725f5269      	clr	21097
 137                     ; 92   TIM1->CCR3L = TIM1_CCR3L_RESET_VALUE;
 139  0074 725f526a      	clr	21098
 140                     ; 93   TIM1->CCR4H = TIM1_CCR4H_RESET_VALUE;
 142  0078 725f526b      	clr	21099
 143                     ; 94   TIM1->CCR4L = TIM1_CCR4L_RESET_VALUE;
 145  007c 725f526c      	clr	21100
 146                     ; 95   TIM1->OISR  = TIM1_OISR_RESET_VALUE;
 148  0080 725f526f      	clr	21103
 149                     ; 96   TIM1->EGR   = 0x01; /* TIM1_EGR_UG */
 151  0084 35015257      	mov	21079,#1
 152                     ; 97   TIM1->DTR   = TIM1_DTR_RESET_VALUE;
 154  0088 725f526e      	clr	21102
 155                     ; 98   TIM1->BKR   = TIM1_BKR_RESET_VALUE;
 157  008c 725f526d      	clr	21101
 158                     ; 99   TIM1->RCR   = TIM1_RCR_RESET_VALUE;
 160  0090 725f5264      	clr	21092
 161                     ; 100   TIM1->SR1   = TIM1_SR1_RESET_VALUE;
 163  0094 725f5255      	clr	21077
 164                     ; 101 }
 167  0098 81            	ret
 277                     ; 111 void TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
 277                     ; 112                        TIM1_CounterMode_TypeDef TIM1_CounterMode,
 277                     ; 113                        uint16_t TIM1_Period,
 277                     ; 114                        uint8_t TIM1_RepetitionCounter)
 277                     ; 115 {
 278                     	switch	.text
 279  0099               _TIM1_TimeBaseInit:
 281  0099 89            	pushw	x
 282       00000000      OFST:	set	0
 285                     ; 117   assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
 287  009a 0d05          	tnz	(OFST+5,sp)
 288  009c 2718          	jreq	L21
 289  009e 7b05          	ld	a,(OFST+5,sp)
 290  00a0 a110          	cp	a,#16
 291  00a2 2712          	jreq	L21
 292  00a4 7b05          	ld	a,(OFST+5,sp)
 293  00a6 a120          	cp	a,#32
 294  00a8 270c          	jreq	L21
 295  00aa 7b05          	ld	a,(OFST+5,sp)
 296  00ac a140          	cp	a,#64
 297  00ae 2706          	jreq	L21
 298  00b0 7b05          	ld	a,(OFST+5,sp)
 299  00b2 a160          	cp	a,#96
 300  00b4 2603          	jrne	L01
 301  00b6               L21:
 302  00b6 4f            	clr	a
 303  00b7 2010          	jra	L41
 304  00b9               L01:
 305  00b9 ae0075        	ldw	x,#117
 306  00bc 89            	pushw	x
 307  00bd ae0000        	ldw	x,#0
 308  00c0 89            	pushw	x
 309  00c1 ae0000        	ldw	x,#L101
 310  00c4 cd0000        	call	_assert_failed
 312  00c7 5b04          	addw	sp,#4
 313  00c9               L41:
 314                     ; 120   TIM1->ARRH = (uint8_t)(TIM1_Period >> 8);
 316  00c9 7b06          	ld	a,(OFST+6,sp)
 317  00cb c75262        	ld	21090,a
 318                     ; 121   TIM1->ARRL = (uint8_t)(TIM1_Period);
 320  00ce 7b07          	ld	a,(OFST+7,sp)
 321  00d0 c75263        	ld	21091,a
 322                     ; 124   TIM1->PSCRH = (uint8_t)(TIM1_Prescaler >> 8);
 324  00d3 7b01          	ld	a,(OFST+1,sp)
 325  00d5 c75260        	ld	21088,a
 326                     ; 125   TIM1->PSCRL = (uint8_t)(TIM1_Prescaler);
 328  00d8 7b02          	ld	a,(OFST+2,sp)
 329  00da c75261        	ld	21089,a
 330                     ; 128   TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)(~(TIM1_CR1_CMS | TIM1_CR1_DIR)))
 330                     ; 129                         | (uint8_t)(TIM1_CounterMode));
 332  00dd c65250        	ld	a,21072
 333  00e0 a48f          	and	a,#143
 334  00e2 1a05          	or	a,(OFST+5,sp)
 335  00e4 c75250        	ld	21072,a
 336                     ; 132   TIM1->RCR = TIM1_RepetitionCounter;
 338  00e7 7b08          	ld	a,(OFST+8,sp)
 339  00e9 c75264        	ld	21092,a
 340                     ; 133 }
 343  00ec 85            	popw	x
 344  00ed 81            	ret
 630                     ; 154 void TIM1_OC1Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 630                     ; 155                   TIM1_OutputState_TypeDef TIM1_OutputState,
 630                     ; 156                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 630                     ; 157                   uint16_t TIM1_Pulse,
 630                     ; 158                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 630                     ; 159                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 630                     ; 160                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 630                     ; 161                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 630                     ; 162 {
 631                     	switch	.text
 632  00ee               _TIM1_OC1Init:
 634  00ee 89            	pushw	x
 635  00ef 5203          	subw	sp,#3
 636       00000003      OFST:	set	3
 639                     ; 164   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 641  00f1 9e            	ld	a,xh
 642  00f2 4d            	tnz	a
 643  00f3 2719          	jreq	L22
 644  00f5 9e            	ld	a,xh
 645  00f6 a110          	cp	a,#16
 646  00f8 2714          	jreq	L22
 647  00fa 9e            	ld	a,xh
 648  00fb a120          	cp	a,#32
 649  00fd 270f          	jreq	L22
 650  00ff 9e            	ld	a,xh
 651  0100 a130          	cp	a,#48
 652  0102 270a          	jreq	L22
 653  0104 9e            	ld	a,xh
 654  0105 a160          	cp	a,#96
 655  0107 2705          	jreq	L22
 656  0109 9e            	ld	a,xh
 657  010a a170          	cp	a,#112
 658  010c 2603          	jrne	L02
 659  010e               L22:
 660  010e 4f            	clr	a
 661  010f 2010          	jra	L42
 662  0111               L02:
 663  0111 ae00a4        	ldw	x,#164
 664  0114 89            	pushw	x
 665  0115 ae0000        	ldw	x,#0
 666  0118 89            	pushw	x
 667  0119 ae0000        	ldw	x,#L101
 668  011c cd0000        	call	_assert_failed
 670  011f 5b04          	addw	sp,#4
 671  0121               L42:
 672                     ; 165   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 674  0121 0d05          	tnz	(OFST+2,sp)
 675  0123 2706          	jreq	L03
 676  0125 7b05          	ld	a,(OFST+2,sp)
 677  0127 a111          	cp	a,#17
 678  0129 2603          	jrne	L62
 679  012b               L03:
 680  012b 4f            	clr	a
 681  012c 2010          	jra	L23
 682  012e               L62:
 683  012e ae00a5        	ldw	x,#165
 684  0131 89            	pushw	x
 685  0132 ae0000        	ldw	x,#0
 686  0135 89            	pushw	x
 687  0136 ae0000        	ldw	x,#L101
 688  0139 cd0000        	call	_assert_failed
 690  013c 5b04          	addw	sp,#4
 691  013e               L23:
 692                     ; 166   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 694  013e 0d08          	tnz	(OFST+5,sp)
 695  0140 2706          	jreq	L63
 696  0142 7b08          	ld	a,(OFST+5,sp)
 697  0144 a144          	cp	a,#68
 698  0146 2603          	jrne	L43
 699  0148               L63:
 700  0148 4f            	clr	a
 701  0149 2010          	jra	L04
 702  014b               L43:
 703  014b ae00a6        	ldw	x,#166
 704  014e 89            	pushw	x
 705  014f ae0000        	ldw	x,#0
 706  0152 89            	pushw	x
 707  0153 ae0000        	ldw	x,#L101
 708  0156 cd0000        	call	_assert_failed
 710  0159 5b04          	addw	sp,#4
 711  015b               L04:
 712                     ; 167   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 714  015b 0d0b          	tnz	(OFST+8,sp)
 715  015d 2706          	jreq	L44
 716  015f 7b0b          	ld	a,(OFST+8,sp)
 717  0161 a122          	cp	a,#34
 718  0163 2603          	jrne	L24
 719  0165               L44:
 720  0165 4f            	clr	a
 721  0166 2010          	jra	L64
 722  0168               L24:
 723  0168 ae00a7        	ldw	x,#167
 724  016b 89            	pushw	x
 725  016c ae0000        	ldw	x,#0
 726  016f 89            	pushw	x
 727  0170 ae0000        	ldw	x,#L101
 728  0173 cd0000        	call	_assert_failed
 730  0176 5b04          	addw	sp,#4
 731  0178               L64:
 732                     ; 168   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 734  0178 0d0c          	tnz	(OFST+9,sp)
 735  017a 2706          	jreq	L25
 736  017c 7b0c          	ld	a,(OFST+9,sp)
 737  017e a188          	cp	a,#136
 738  0180 2603          	jrne	L05
 739  0182               L25:
 740  0182 4f            	clr	a
 741  0183 2010          	jra	L45
 742  0185               L05:
 743  0185 ae00a8        	ldw	x,#168
 744  0188 89            	pushw	x
 745  0189 ae0000        	ldw	x,#0
 746  018c 89            	pushw	x
 747  018d ae0000        	ldw	x,#L101
 748  0190 cd0000        	call	_assert_failed
 750  0193 5b04          	addw	sp,#4
 751  0195               L45:
 752                     ; 169   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 754  0195 7b0d          	ld	a,(OFST+10,sp)
 755  0197 a155          	cp	a,#85
 756  0199 2704          	jreq	L06
 757  019b 0d0d          	tnz	(OFST+10,sp)
 758  019d 2603          	jrne	L65
 759  019f               L06:
 760  019f 4f            	clr	a
 761  01a0 2010          	jra	L26
 762  01a2               L65:
 763  01a2 ae00a9        	ldw	x,#169
 764  01a5 89            	pushw	x
 765  01a6 ae0000        	ldw	x,#0
 766  01a9 89            	pushw	x
 767  01aa ae0000        	ldw	x,#L101
 768  01ad cd0000        	call	_assert_failed
 770  01b0 5b04          	addw	sp,#4
 771  01b2               L26:
 772                     ; 170   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 774  01b2 7b0e          	ld	a,(OFST+11,sp)
 775  01b4 a12a          	cp	a,#42
 776  01b6 2704          	jreq	L66
 777  01b8 0d0e          	tnz	(OFST+11,sp)
 778  01ba 2603          	jrne	L46
 779  01bc               L66:
 780  01bc 4f            	clr	a
 781  01bd 2010          	jra	L07
 782  01bf               L46:
 783  01bf ae00aa        	ldw	x,#170
 784  01c2 89            	pushw	x
 785  01c3 ae0000        	ldw	x,#0
 786  01c6 89            	pushw	x
 787  01c7 ae0000        	ldw	x,#L101
 788  01ca cd0000        	call	_assert_failed
 790  01cd 5b04          	addw	sp,#4
 791  01cf               L07:
 792                     ; 174   TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC1E | TIM1_CCER1_CC1NE 
 792                     ; 175                              | TIM1_CCER1_CC1P | TIM1_CCER1_CC1NP));
 794  01cf c6525c        	ld	a,21084
 795  01d2 a4f0          	and	a,#240
 796  01d4 c7525c        	ld	21084,a
 797                     ; 178   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC1E)
 797                     ; 179                                      | (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC1NE))
 797                     ; 180                            | (uint8_t)( (uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC1P)
 797                     ; 181                                        | (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC1NP)));
 799  01d7 7b0c          	ld	a,(OFST+9,sp)
 800  01d9 a408          	and	a,#8
 801  01db 6b03          	ld	(OFST+0,sp),a
 803  01dd 7b0b          	ld	a,(OFST+8,sp)
 804  01df a402          	and	a,#2
 805  01e1 1a03          	or	a,(OFST+0,sp)
 806  01e3 6b02          	ld	(OFST-1,sp),a
 808  01e5 7b08          	ld	a,(OFST+5,sp)
 809  01e7 a404          	and	a,#4
 810  01e9 6b01          	ld	(OFST-2,sp),a
 812  01eb 7b05          	ld	a,(OFST+2,sp)
 813  01ed a401          	and	a,#1
 814  01ef 1a01          	or	a,(OFST-2,sp)
 815  01f1 1a02          	or	a,(OFST-1,sp)
 816  01f3 ca525c        	or	a,21084
 817  01f6 c7525c        	ld	21084,a
 818                     ; 184   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) | 
 818                     ; 185                           (uint8_t)TIM1_OCMode);
 820  01f9 c65258        	ld	a,21080
 821  01fc a48f          	and	a,#143
 822  01fe 1a04          	or	a,(OFST+1,sp)
 823  0200 c75258        	ld	21080,a
 824                     ; 188   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS1 | TIM1_OISR_OIS1N));
 826  0203 c6526f        	ld	a,21103
 827  0206 a4fc          	and	a,#252
 828  0208 c7526f        	ld	21103,a
 829                     ; 190   TIM1->OISR |= (uint8_t)((uint8_t)( TIM1_OCIdleState & TIM1_OISR_OIS1 ) | 
 829                     ; 191                           (uint8_t)( TIM1_OCNIdleState & TIM1_OISR_OIS1N ));
 831  020b 7b0e          	ld	a,(OFST+11,sp)
 832  020d a402          	and	a,#2
 833  020f 6b03          	ld	(OFST+0,sp),a
 835  0211 7b0d          	ld	a,(OFST+10,sp)
 836  0213 a401          	and	a,#1
 837  0215 1a03          	or	a,(OFST+0,sp)
 838  0217 ca526f        	or	a,21103
 839  021a c7526f        	ld	21103,a
 840                     ; 194   TIM1->CCR1H = (uint8_t)(TIM1_Pulse >> 8);
 842  021d 7b09          	ld	a,(OFST+6,sp)
 843  021f c75265        	ld	21093,a
 844                     ; 195   TIM1->CCR1L = (uint8_t)(TIM1_Pulse);
 846  0222 7b0a          	ld	a,(OFST+7,sp)
 847  0224 c75266        	ld	21094,a
 848                     ; 196 }
 851  0227 5b05          	addw	sp,#5
 852  0229 81            	ret
 957                     ; 217 void TIM1_OC2Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 957                     ; 218                   TIM1_OutputState_TypeDef TIM1_OutputState,
 957                     ; 219                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 957                     ; 220                   uint16_t TIM1_Pulse,
 957                     ; 221                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 957                     ; 222                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 957                     ; 223                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 957                     ; 224                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 957                     ; 225 {
 958                     	switch	.text
 959  022a               _TIM1_OC2Init:
 961  022a 89            	pushw	x
 962  022b 5203          	subw	sp,#3
 963       00000003      OFST:	set	3
 966                     ; 227   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 968  022d 9e            	ld	a,xh
 969  022e 4d            	tnz	a
 970  022f 2719          	jreq	L67
 971  0231 9e            	ld	a,xh
 972  0232 a110          	cp	a,#16
 973  0234 2714          	jreq	L67
 974  0236 9e            	ld	a,xh
 975  0237 a120          	cp	a,#32
 976  0239 270f          	jreq	L67
 977  023b 9e            	ld	a,xh
 978  023c a130          	cp	a,#48
 979  023e 270a          	jreq	L67
 980  0240 9e            	ld	a,xh
 981  0241 a160          	cp	a,#96
 982  0243 2705          	jreq	L67
 983  0245 9e            	ld	a,xh
 984  0246 a170          	cp	a,#112
 985  0248 2603          	jrne	L47
 986  024a               L67:
 987  024a 4f            	clr	a
 988  024b 2010          	jra	L001
 989  024d               L47:
 990  024d ae00e3        	ldw	x,#227
 991  0250 89            	pushw	x
 992  0251 ae0000        	ldw	x,#0
 993  0254 89            	pushw	x
 994  0255 ae0000        	ldw	x,#L101
 995  0258 cd0000        	call	_assert_failed
 997  025b 5b04          	addw	sp,#4
 998  025d               L001:
 999                     ; 228   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1001  025d 0d05          	tnz	(OFST+2,sp)
1002  025f 2706          	jreq	L401
1003  0261 7b05          	ld	a,(OFST+2,sp)
1004  0263 a111          	cp	a,#17
1005  0265 2603          	jrne	L201
1006  0267               L401:
1007  0267 4f            	clr	a
1008  0268 2010          	jra	L601
1009  026a               L201:
1010  026a ae00e4        	ldw	x,#228
1011  026d 89            	pushw	x
1012  026e ae0000        	ldw	x,#0
1013  0271 89            	pushw	x
1014  0272 ae0000        	ldw	x,#L101
1015  0275 cd0000        	call	_assert_failed
1017  0278 5b04          	addw	sp,#4
1018  027a               L601:
1019                     ; 229   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
1021  027a 0d08          	tnz	(OFST+5,sp)
1022  027c 2706          	jreq	L211
1023  027e 7b08          	ld	a,(OFST+5,sp)
1024  0280 a144          	cp	a,#68
1025  0282 2603          	jrne	L011
1026  0284               L211:
1027  0284 4f            	clr	a
1028  0285 2010          	jra	L411
1029  0287               L011:
1030  0287 ae00e5        	ldw	x,#229
1031  028a 89            	pushw	x
1032  028b ae0000        	ldw	x,#0
1033  028e 89            	pushw	x
1034  028f ae0000        	ldw	x,#L101
1035  0292 cd0000        	call	_assert_failed
1037  0295 5b04          	addw	sp,#4
1038  0297               L411:
1039                     ; 230   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1041  0297 0d0b          	tnz	(OFST+8,sp)
1042  0299 2706          	jreq	L021
1043  029b 7b0b          	ld	a,(OFST+8,sp)
1044  029d a122          	cp	a,#34
1045  029f 2603          	jrne	L611
1046  02a1               L021:
1047  02a1 4f            	clr	a
1048  02a2 2010          	jra	L221
1049  02a4               L611:
1050  02a4 ae00e6        	ldw	x,#230
1051  02a7 89            	pushw	x
1052  02a8 ae0000        	ldw	x,#0
1053  02ab 89            	pushw	x
1054  02ac ae0000        	ldw	x,#L101
1055  02af cd0000        	call	_assert_failed
1057  02b2 5b04          	addw	sp,#4
1058  02b4               L221:
1059                     ; 231   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
1061  02b4 0d0c          	tnz	(OFST+9,sp)
1062  02b6 2706          	jreq	L621
1063  02b8 7b0c          	ld	a,(OFST+9,sp)
1064  02ba a188          	cp	a,#136
1065  02bc 2603          	jrne	L421
1066  02be               L621:
1067  02be 4f            	clr	a
1068  02bf 2010          	jra	L031
1069  02c1               L421:
1070  02c1 ae00e7        	ldw	x,#231
1071  02c4 89            	pushw	x
1072  02c5 ae0000        	ldw	x,#0
1073  02c8 89            	pushw	x
1074  02c9 ae0000        	ldw	x,#L101
1075  02cc cd0000        	call	_assert_failed
1077  02cf 5b04          	addw	sp,#4
1078  02d1               L031:
1079                     ; 232   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1081  02d1 7b0d          	ld	a,(OFST+10,sp)
1082  02d3 a155          	cp	a,#85
1083  02d5 2704          	jreq	L431
1084  02d7 0d0d          	tnz	(OFST+10,sp)
1085  02d9 2603          	jrne	L231
1086  02db               L431:
1087  02db 4f            	clr	a
1088  02dc 2010          	jra	L631
1089  02de               L231:
1090  02de ae00e8        	ldw	x,#232
1091  02e1 89            	pushw	x
1092  02e2 ae0000        	ldw	x,#0
1093  02e5 89            	pushw	x
1094  02e6 ae0000        	ldw	x,#L101
1095  02e9 cd0000        	call	_assert_failed
1097  02ec 5b04          	addw	sp,#4
1098  02ee               L631:
1099                     ; 233   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
1101  02ee 7b0e          	ld	a,(OFST+11,sp)
1102  02f0 a12a          	cp	a,#42
1103  02f2 2704          	jreq	L241
1104  02f4 0d0e          	tnz	(OFST+11,sp)
1105  02f6 2603          	jrne	L041
1106  02f8               L241:
1107  02f8 4f            	clr	a
1108  02f9 2010          	jra	L441
1109  02fb               L041:
1110  02fb ae00e9        	ldw	x,#233
1111  02fe 89            	pushw	x
1112  02ff ae0000        	ldw	x,#0
1113  0302 89            	pushw	x
1114  0303 ae0000        	ldw	x,#L101
1115  0306 cd0000        	call	_assert_failed
1117  0309 5b04          	addw	sp,#4
1118  030b               L441:
1119                     ; 237   TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC2E | TIM1_CCER1_CC2NE | 
1119                     ; 238                              TIM1_CCER1_CC2P | TIM1_CCER1_CC2NP));
1121  030b c6525c        	ld	a,21084
1122  030e a40f          	and	a,#15
1123  0310 c7525c        	ld	21084,a
1124                     ; 242   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC2E  ) | 
1124                     ; 243                                      (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC2NE )) | 
1124                     ; 244                            (uint8_t)((uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC2P  ) | 
1124                     ; 245                                      (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC2NP )));
1126  0313 7b0c          	ld	a,(OFST+9,sp)
1127  0315 a480          	and	a,#128
1128  0317 6b03          	ld	(OFST+0,sp),a
1130  0319 7b0b          	ld	a,(OFST+8,sp)
1131  031b a420          	and	a,#32
1132  031d 1a03          	or	a,(OFST+0,sp)
1133  031f 6b02          	ld	(OFST-1,sp),a
1135  0321 7b08          	ld	a,(OFST+5,sp)
1136  0323 a440          	and	a,#64
1137  0325 6b01          	ld	(OFST-2,sp),a
1139  0327 7b05          	ld	a,(OFST+2,sp)
1140  0329 a410          	and	a,#16
1141  032b 1a01          	or	a,(OFST-2,sp)
1142  032d 1a02          	or	a,(OFST-1,sp)
1143  032f ca525c        	or	a,21084
1144  0332 c7525c        	ld	21084,a
1145                     ; 248   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1145                     ; 249                           (uint8_t)TIM1_OCMode);
1147  0335 c65259        	ld	a,21081
1148  0338 a48f          	and	a,#143
1149  033a 1a04          	or	a,(OFST+1,sp)
1150  033c c75259        	ld	21081,a
1151                     ; 252   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS2 | TIM1_OISR_OIS2N));
1153  033f c6526f        	ld	a,21103
1154  0342 a4f3          	and	a,#243
1155  0344 c7526f        	ld	21103,a
1156                     ; 254   TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS2 & TIM1_OCIdleState) | 
1156                     ; 255                           (uint8_t)(TIM1_OISR_OIS2N & TIM1_OCNIdleState));
1158  0347 7b0e          	ld	a,(OFST+11,sp)
1159  0349 a408          	and	a,#8
1160  034b 6b03          	ld	(OFST+0,sp),a
1162  034d 7b0d          	ld	a,(OFST+10,sp)
1163  034f a404          	and	a,#4
1164  0351 1a03          	or	a,(OFST+0,sp)
1165  0353 ca526f        	or	a,21103
1166  0356 c7526f        	ld	21103,a
1167                     ; 258   TIM1->CCR2H = (uint8_t)(TIM1_Pulse >> 8);
1169  0359 7b09          	ld	a,(OFST+6,sp)
1170  035b c75267        	ld	21095,a
1171                     ; 259   TIM1->CCR2L = (uint8_t)(TIM1_Pulse);
1173  035e 7b0a          	ld	a,(OFST+7,sp)
1174  0360 c75268        	ld	21096,a
1175                     ; 260 }
1178  0363 5b05          	addw	sp,#5
1179  0365 81            	ret
1284                     ; 281 void TIM1_OC3Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1284                     ; 282                   TIM1_OutputState_TypeDef TIM1_OutputState,
1284                     ; 283                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
1284                     ; 284                   uint16_t TIM1_Pulse,
1284                     ; 285                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1284                     ; 286                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
1284                     ; 287                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
1284                     ; 288                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
1284                     ; 289 {
1285                     	switch	.text
1286  0366               _TIM1_OC3Init:
1288  0366 89            	pushw	x
1289  0367 5203          	subw	sp,#3
1290       00000003      OFST:	set	3
1293                     ; 291   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1295  0369 9e            	ld	a,xh
1296  036a 4d            	tnz	a
1297  036b 2719          	jreq	L251
1298  036d 9e            	ld	a,xh
1299  036e a110          	cp	a,#16
1300  0370 2714          	jreq	L251
1301  0372 9e            	ld	a,xh
1302  0373 a120          	cp	a,#32
1303  0375 270f          	jreq	L251
1304  0377 9e            	ld	a,xh
1305  0378 a130          	cp	a,#48
1306  037a 270a          	jreq	L251
1307  037c 9e            	ld	a,xh
1308  037d a160          	cp	a,#96
1309  037f 2705          	jreq	L251
1310  0381 9e            	ld	a,xh
1311  0382 a170          	cp	a,#112
1312  0384 2603          	jrne	L051
1313  0386               L251:
1314  0386 4f            	clr	a
1315  0387 2010          	jra	L451
1316  0389               L051:
1317  0389 ae0123        	ldw	x,#291
1318  038c 89            	pushw	x
1319  038d ae0000        	ldw	x,#0
1320  0390 89            	pushw	x
1321  0391 ae0000        	ldw	x,#L101
1322  0394 cd0000        	call	_assert_failed
1324  0397 5b04          	addw	sp,#4
1325  0399               L451:
1326                     ; 292   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1328  0399 0d05          	tnz	(OFST+2,sp)
1329  039b 2706          	jreq	L061
1330  039d 7b05          	ld	a,(OFST+2,sp)
1331  039f a111          	cp	a,#17
1332  03a1 2603          	jrne	L651
1333  03a3               L061:
1334  03a3 4f            	clr	a
1335  03a4 2010          	jra	L261
1336  03a6               L651:
1337  03a6 ae0124        	ldw	x,#292
1338  03a9 89            	pushw	x
1339  03aa ae0000        	ldw	x,#0
1340  03ad 89            	pushw	x
1341  03ae ae0000        	ldw	x,#L101
1342  03b1 cd0000        	call	_assert_failed
1344  03b4 5b04          	addw	sp,#4
1345  03b6               L261:
1346                     ; 293   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
1348  03b6 0d08          	tnz	(OFST+5,sp)
1349  03b8 2706          	jreq	L661
1350  03ba 7b08          	ld	a,(OFST+5,sp)
1351  03bc a144          	cp	a,#68
1352  03be 2603          	jrne	L461
1353  03c0               L661:
1354  03c0 4f            	clr	a
1355  03c1 2010          	jra	L071
1356  03c3               L461:
1357  03c3 ae0125        	ldw	x,#293
1358  03c6 89            	pushw	x
1359  03c7 ae0000        	ldw	x,#0
1360  03ca 89            	pushw	x
1361  03cb ae0000        	ldw	x,#L101
1362  03ce cd0000        	call	_assert_failed
1364  03d1 5b04          	addw	sp,#4
1365  03d3               L071:
1366                     ; 294   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1368  03d3 0d0b          	tnz	(OFST+8,sp)
1369  03d5 2706          	jreq	L471
1370  03d7 7b0b          	ld	a,(OFST+8,sp)
1371  03d9 a122          	cp	a,#34
1372  03db 2603          	jrne	L271
1373  03dd               L471:
1374  03dd 4f            	clr	a
1375  03de 2010          	jra	L671
1376  03e0               L271:
1377  03e0 ae0126        	ldw	x,#294
1378  03e3 89            	pushw	x
1379  03e4 ae0000        	ldw	x,#0
1380  03e7 89            	pushw	x
1381  03e8 ae0000        	ldw	x,#L101
1382  03eb cd0000        	call	_assert_failed
1384  03ee 5b04          	addw	sp,#4
1385  03f0               L671:
1386                     ; 295   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
1388  03f0 0d0c          	tnz	(OFST+9,sp)
1389  03f2 2706          	jreq	L202
1390  03f4 7b0c          	ld	a,(OFST+9,sp)
1391  03f6 a188          	cp	a,#136
1392  03f8 2603          	jrne	L002
1393  03fa               L202:
1394  03fa 4f            	clr	a
1395  03fb 2010          	jra	L402
1396  03fd               L002:
1397  03fd ae0127        	ldw	x,#295
1398  0400 89            	pushw	x
1399  0401 ae0000        	ldw	x,#0
1400  0404 89            	pushw	x
1401  0405 ae0000        	ldw	x,#L101
1402  0408 cd0000        	call	_assert_failed
1404  040b 5b04          	addw	sp,#4
1405  040d               L402:
1406                     ; 296   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1408  040d 7b0d          	ld	a,(OFST+10,sp)
1409  040f a155          	cp	a,#85
1410  0411 2704          	jreq	L012
1411  0413 0d0d          	tnz	(OFST+10,sp)
1412  0415 2603          	jrne	L602
1413  0417               L012:
1414  0417 4f            	clr	a
1415  0418 2010          	jra	L212
1416  041a               L602:
1417  041a ae0128        	ldw	x,#296
1418  041d 89            	pushw	x
1419  041e ae0000        	ldw	x,#0
1420  0421 89            	pushw	x
1421  0422 ae0000        	ldw	x,#L101
1422  0425 cd0000        	call	_assert_failed
1424  0428 5b04          	addw	sp,#4
1425  042a               L212:
1426                     ; 297   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
1428  042a 7b0e          	ld	a,(OFST+11,sp)
1429  042c a12a          	cp	a,#42
1430  042e 2704          	jreq	L612
1431  0430 0d0e          	tnz	(OFST+11,sp)
1432  0432 2603          	jrne	L412
1433  0434               L612:
1434  0434 4f            	clr	a
1435  0435 2010          	jra	L022
1436  0437               L412:
1437  0437 ae0129        	ldw	x,#297
1438  043a 89            	pushw	x
1439  043b ae0000        	ldw	x,#0
1440  043e 89            	pushw	x
1441  043f ae0000        	ldw	x,#L101
1442  0442 cd0000        	call	_assert_failed
1444  0445 5b04          	addw	sp,#4
1445  0447               L022:
1446                     ; 301   TIM1->CCER2 &= (uint8_t)(~( TIM1_CCER2_CC3E | TIM1_CCER2_CC3NE | 
1446                     ; 302                              TIM1_CCER2_CC3P | TIM1_CCER2_CC3NP));
1448  0447 c6525d        	ld	a,21085
1449  044a a4f0          	and	a,#240
1450  044c c7525d        	ld	21085,a
1451                     ; 305   TIM1->CCER2 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState  & TIM1_CCER2_CC3E   ) |
1451                     ; 306                                      (uint8_t)(TIM1_OutputNState & TIM1_CCER2_CC3NE  )) | 
1451                     ; 307                            (uint8_t)((uint8_t)(TIM1_OCPolarity   & TIM1_CCER2_CC3P   ) | 
1451                     ; 308                                      (uint8_t)(TIM1_OCNPolarity  & TIM1_CCER2_CC3NP  )));
1453  044f 7b0c          	ld	a,(OFST+9,sp)
1454  0451 a408          	and	a,#8
1455  0453 6b03          	ld	(OFST+0,sp),a
1457  0455 7b0b          	ld	a,(OFST+8,sp)
1458  0457 a402          	and	a,#2
1459  0459 1a03          	or	a,(OFST+0,sp)
1460  045b 6b02          	ld	(OFST-1,sp),a
1462  045d 7b08          	ld	a,(OFST+5,sp)
1463  045f a404          	and	a,#4
1464  0461 6b01          	ld	(OFST-2,sp),a
1466  0463 7b05          	ld	a,(OFST+2,sp)
1467  0465 a401          	and	a,#1
1468  0467 1a01          	or	a,(OFST-2,sp)
1469  0469 1a02          	or	a,(OFST-1,sp)
1470  046b ca525d        	or	a,21085
1471  046e c7525d        	ld	21085,a
1472                     ; 311   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1472                     ; 312                           (uint8_t)TIM1_OCMode);
1474  0471 c6525a        	ld	a,21082
1475  0474 a48f          	and	a,#143
1476  0476 1a04          	or	a,(OFST+1,sp)
1477  0478 c7525a        	ld	21082,a
1478                     ; 315   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS3 | TIM1_OISR_OIS3N));
1480  047b c6526f        	ld	a,21103
1481  047e a4cf          	and	a,#207
1482  0480 c7526f        	ld	21103,a
1483                     ; 317   TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS3 & TIM1_OCIdleState) | 
1483                     ; 318                           (uint8_t)(TIM1_OISR_OIS3N & TIM1_OCNIdleState));
1485  0483 7b0e          	ld	a,(OFST+11,sp)
1486  0485 a420          	and	a,#32
1487  0487 6b03          	ld	(OFST+0,sp),a
1489  0489 7b0d          	ld	a,(OFST+10,sp)
1490  048b a410          	and	a,#16
1491  048d 1a03          	or	a,(OFST+0,sp)
1492  048f ca526f        	or	a,21103
1493  0492 c7526f        	ld	21103,a
1494                     ; 321   TIM1->CCR3H = (uint8_t)(TIM1_Pulse >> 8);
1496  0495 7b09          	ld	a,(OFST+6,sp)
1497  0497 c75269        	ld	21097,a
1498                     ; 322   TIM1->CCR3L = (uint8_t)(TIM1_Pulse);
1500  049a 7b0a          	ld	a,(OFST+7,sp)
1501  049c c7526a        	ld	21098,a
1502                     ; 323 }
1505  049f 5b05          	addw	sp,#5
1506  04a1 81            	ret
1581                     ; 338 void TIM1_OC4Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1581                     ; 339                   TIM1_OutputState_TypeDef TIM1_OutputState,
1581                     ; 340                   uint16_t TIM1_Pulse,
1581                     ; 341                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1581                     ; 342                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState)
1581                     ; 343 {
1582                     	switch	.text
1583  04a2               _TIM1_OC4Init:
1585  04a2 89            	pushw	x
1586  04a3 88            	push	a
1587       00000001      OFST:	set	1
1590                     ; 345   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1592  04a4 9e            	ld	a,xh
1593  04a5 4d            	tnz	a
1594  04a6 2719          	jreq	L622
1595  04a8 9e            	ld	a,xh
1596  04a9 a110          	cp	a,#16
1597  04ab 2714          	jreq	L622
1598  04ad 9e            	ld	a,xh
1599  04ae a120          	cp	a,#32
1600  04b0 270f          	jreq	L622
1601  04b2 9e            	ld	a,xh
1602  04b3 a130          	cp	a,#48
1603  04b5 270a          	jreq	L622
1604  04b7 9e            	ld	a,xh
1605  04b8 a160          	cp	a,#96
1606  04ba 2705          	jreq	L622
1607  04bc 9e            	ld	a,xh
1608  04bd a170          	cp	a,#112
1609  04bf 2603          	jrne	L422
1610  04c1               L622:
1611  04c1 4f            	clr	a
1612  04c2 2010          	jra	L032
1613  04c4               L422:
1614  04c4 ae0159        	ldw	x,#345
1615  04c7 89            	pushw	x
1616  04c8 ae0000        	ldw	x,#0
1617  04cb 89            	pushw	x
1618  04cc ae0000        	ldw	x,#L101
1619  04cf cd0000        	call	_assert_failed
1621  04d2 5b04          	addw	sp,#4
1622  04d4               L032:
1623                     ; 346   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1625  04d4 0d03          	tnz	(OFST+2,sp)
1626  04d6 2706          	jreq	L432
1627  04d8 7b03          	ld	a,(OFST+2,sp)
1628  04da a111          	cp	a,#17
1629  04dc 2603          	jrne	L232
1630  04de               L432:
1631  04de 4f            	clr	a
1632  04df 2010          	jra	L632
1633  04e1               L232:
1634  04e1 ae015a        	ldw	x,#346
1635  04e4 89            	pushw	x
1636  04e5 ae0000        	ldw	x,#0
1637  04e8 89            	pushw	x
1638  04e9 ae0000        	ldw	x,#L101
1639  04ec cd0000        	call	_assert_failed
1641  04ef 5b04          	addw	sp,#4
1642  04f1               L632:
1643                     ; 347   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1645  04f1 0d08          	tnz	(OFST+7,sp)
1646  04f3 2706          	jreq	L242
1647  04f5 7b08          	ld	a,(OFST+7,sp)
1648  04f7 a122          	cp	a,#34
1649  04f9 2603          	jrne	L042
1650  04fb               L242:
1651  04fb 4f            	clr	a
1652  04fc 2010          	jra	L442
1653  04fe               L042:
1654  04fe ae015b        	ldw	x,#347
1655  0501 89            	pushw	x
1656  0502 ae0000        	ldw	x,#0
1657  0505 89            	pushw	x
1658  0506 ae0000        	ldw	x,#L101
1659  0509 cd0000        	call	_assert_failed
1661  050c 5b04          	addw	sp,#4
1662  050e               L442:
1663                     ; 348   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1665  050e 7b09          	ld	a,(OFST+8,sp)
1666  0510 a155          	cp	a,#85
1667  0512 2704          	jreq	L052
1668  0514 0d09          	tnz	(OFST+8,sp)
1669  0516 2603          	jrne	L642
1670  0518               L052:
1671  0518 4f            	clr	a
1672  0519 2010          	jra	L252
1673  051b               L642:
1674  051b ae015c        	ldw	x,#348
1675  051e 89            	pushw	x
1676  051f ae0000        	ldw	x,#0
1677  0522 89            	pushw	x
1678  0523 ae0000        	ldw	x,#L101
1679  0526 cd0000        	call	_assert_failed
1681  0529 5b04          	addw	sp,#4
1682  052b               L252:
1683                     ; 351   TIM1->CCER2 &= (uint8_t)(~(TIM1_CCER2_CC4E | TIM1_CCER2_CC4P));
1685  052b c6525d        	ld	a,21085
1686  052e a4cf          	and	a,#207
1687  0530 c7525d        	ld	21085,a
1688                     ; 353   TIM1->CCER2 |= (uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER2_CC4E ) |  
1688                     ; 354                            (uint8_t)(TIM1_OCPolarity  & TIM1_CCER2_CC4P ));
1690  0533 7b08          	ld	a,(OFST+7,sp)
1691  0535 a420          	and	a,#32
1692  0537 6b01          	ld	(OFST+0,sp),a
1694  0539 7b03          	ld	a,(OFST+2,sp)
1695  053b a410          	and	a,#16
1696  053d 1a01          	or	a,(OFST+0,sp)
1697  053f ca525d        	or	a,21085
1698  0542 c7525d        	ld	21085,a
1699                     ; 357   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1699                     ; 358                           TIM1_OCMode);
1701  0545 c6525b        	ld	a,21083
1702  0548 a48f          	and	a,#143
1703  054a 1a02          	or	a,(OFST+1,sp)
1704  054c c7525b        	ld	21083,a
1705                     ; 361   if (TIM1_OCIdleState != TIM1_OCIDLESTATE_RESET)
1707  054f 0d09          	tnz	(OFST+8,sp)
1708  0551 270a          	jreq	L734
1709                     ; 363     TIM1->OISR |= (uint8_t)(~TIM1_CCER2_CC4P);
1711  0553 c6526f        	ld	a,21103
1712  0556 aadf          	or	a,#223
1713  0558 c7526f        	ld	21103,a
1715  055b 2004          	jra	L144
1716  055d               L734:
1717                     ; 367     TIM1->OISR &= (uint8_t)(~TIM1_OISR_OIS4);
1719  055d 721d526f      	bres	21103,#6
1720  0561               L144:
1721                     ; 371   TIM1->CCR4H = (uint8_t)(TIM1_Pulse >> 8);
1723  0561 7b06          	ld	a,(OFST+5,sp)
1724  0563 c7526b        	ld	21099,a
1725                     ; 372   TIM1->CCR4L = (uint8_t)(TIM1_Pulse);
1727  0566 7b07          	ld	a,(OFST+6,sp)
1728  0568 c7526c        	ld	21100,a
1729                     ; 373 }
1732  056b 5b03          	addw	sp,#3
1733  056d 81            	ret
1939                     ; 388 void TIM1_BDTRConfig(TIM1_OSSIState_TypeDef TIM1_OSSIState,
1939                     ; 389                      TIM1_LockLevel_TypeDef TIM1_LockLevel,
1939                     ; 390                      uint8_t TIM1_DeadTime,
1939                     ; 391                      TIM1_BreakState_TypeDef TIM1_Break,
1939                     ; 392                      TIM1_BreakPolarity_TypeDef TIM1_BreakPolarity,
1939                     ; 393                      TIM1_AutomaticOutput_TypeDef TIM1_AutomaticOutput)
1939                     ; 394 {
1940                     	switch	.text
1941  056e               _TIM1_BDTRConfig:
1943  056e 89            	pushw	x
1944  056f 88            	push	a
1945       00000001      OFST:	set	1
1948                     ; 396   assert_param(IS_TIM1_OSSI_STATE_OK(TIM1_OSSIState));
1950  0570 9e            	ld	a,xh
1951  0571 a104          	cp	a,#4
1952  0573 2704          	jreq	L062
1953  0575 9e            	ld	a,xh
1954  0576 4d            	tnz	a
1955  0577 2603          	jrne	L652
1956  0579               L062:
1957  0579 4f            	clr	a
1958  057a 2010          	jra	L262
1959  057c               L652:
1960  057c ae018c        	ldw	x,#396
1961  057f 89            	pushw	x
1962  0580 ae0000        	ldw	x,#0
1963  0583 89            	pushw	x
1964  0584 ae0000        	ldw	x,#L101
1965  0587 cd0000        	call	_assert_failed
1967  058a 5b04          	addw	sp,#4
1968  058c               L262:
1969                     ; 397   assert_param(IS_TIM1_LOCK_LEVEL_OK(TIM1_LockLevel));
1971  058c 0d03          	tnz	(OFST+2,sp)
1972  058e 2712          	jreq	L662
1973  0590 7b03          	ld	a,(OFST+2,sp)
1974  0592 a101          	cp	a,#1
1975  0594 270c          	jreq	L662
1976  0596 7b03          	ld	a,(OFST+2,sp)
1977  0598 a102          	cp	a,#2
1978  059a 2706          	jreq	L662
1979  059c 7b03          	ld	a,(OFST+2,sp)
1980  059e a103          	cp	a,#3
1981  05a0 2603          	jrne	L462
1982  05a2               L662:
1983  05a2 4f            	clr	a
1984  05a3 2010          	jra	L072
1985  05a5               L462:
1986  05a5 ae018d        	ldw	x,#397
1987  05a8 89            	pushw	x
1988  05a9 ae0000        	ldw	x,#0
1989  05ac 89            	pushw	x
1990  05ad ae0000        	ldw	x,#L101
1991  05b0 cd0000        	call	_assert_failed
1993  05b3 5b04          	addw	sp,#4
1994  05b5               L072:
1995                     ; 398   assert_param(IS_TIM1_BREAK_STATE_OK(TIM1_Break));
1997  05b5 7b07          	ld	a,(OFST+6,sp)
1998  05b7 a110          	cp	a,#16
1999  05b9 2704          	jreq	L472
2000  05bb 0d07          	tnz	(OFST+6,sp)
2001  05bd 2603          	jrne	L272
2002  05bf               L472:
2003  05bf 4f            	clr	a
2004  05c0 2010          	jra	L672
2005  05c2               L272:
2006  05c2 ae018e        	ldw	x,#398
2007  05c5 89            	pushw	x
2008  05c6 ae0000        	ldw	x,#0
2009  05c9 89            	pushw	x
2010  05ca ae0000        	ldw	x,#L101
2011  05cd cd0000        	call	_assert_failed
2013  05d0 5b04          	addw	sp,#4
2014  05d2               L672:
2015                     ; 399   assert_param(IS_TIM1_BREAK_POLARITY_OK(TIM1_BreakPolarity));
2017  05d2 0d08          	tnz	(OFST+7,sp)
2018  05d4 2706          	jreq	L203
2019  05d6 7b08          	ld	a,(OFST+7,sp)
2020  05d8 a120          	cp	a,#32
2021  05da 2603          	jrne	L003
2022  05dc               L203:
2023  05dc 4f            	clr	a
2024  05dd 2010          	jra	L403
2025  05df               L003:
2026  05df ae018f        	ldw	x,#399
2027  05e2 89            	pushw	x
2028  05e3 ae0000        	ldw	x,#0
2029  05e6 89            	pushw	x
2030  05e7 ae0000        	ldw	x,#L101
2031  05ea cd0000        	call	_assert_failed
2033  05ed 5b04          	addw	sp,#4
2034  05ef               L403:
2035                     ; 400   assert_param(IS_TIM1_AUTOMATIC_OUTPUT_STATE_OK(TIM1_AutomaticOutput));
2037  05ef 7b09          	ld	a,(OFST+8,sp)
2038  05f1 a140          	cp	a,#64
2039  05f3 2704          	jreq	L013
2040  05f5 0d09          	tnz	(OFST+8,sp)
2041  05f7 2603          	jrne	L603
2042  05f9               L013:
2043  05f9 4f            	clr	a
2044  05fa 2010          	jra	L213
2045  05fc               L603:
2046  05fc ae0190        	ldw	x,#400
2047  05ff 89            	pushw	x
2048  0600 ae0000        	ldw	x,#0
2049  0603 89            	pushw	x
2050  0604 ae0000        	ldw	x,#L101
2051  0607 cd0000        	call	_assert_failed
2053  060a 5b04          	addw	sp,#4
2054  060c               L213:
2055                     ; 402   TIM1->DTR = (uint8_t)(TIM1_DeadTime);
2057  060c 7b06          	ld	a,(OFST+5,sp)
2058  060e c7526e        	ld	21102,a
2059                     ; 406   TIM1->BKR  =  (uint8_t)((uint8_t)(TIM1_OSSIState | (uint8_t)TIM1_LockLevel)  | 
2059                     ; 407                           (uint8_t)((uint8_t)(TIM1_Break | (uint8_t)TIM1_BreakPolarity)  | 
2059                     ; 408                           (uint8_t)TIM1_AutomaticOutput));
2061  0611 7b07          	ld	a,(OFST+6,sp)
2062  0613 1a08          	or	a,(OFST+7,sp)
2063  0615 1a09          	or	a,(OFST+8,sp)
2064  0617 6b01          	ld	(OFST+0,sp),a
2066  0619 7b02          	ld	a,(OFST+1,sp)
2067  061b 1a03          	or	a,(OFST+2,sp)
2068  061d 1a01          	or	a,(OFST+0,sp)
2069  061f c7526d        	ld	21101,a
2070                     ; 409 }
2073  0622 5b03          	addw	sp,#3
2074  0624 81            	ret
2277                     ; 423 void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel,
2277                     ; 424                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
2277                     ; 425                  TIM1_ICSelection_TypeDef TIM1_ICSelection,
2277                     ; 426                  TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
2277                     ; 427                  uint8_t TIM1_ICFilter)
2277                     ; 428 {
2278                     	switch	.text
2279  0625               _TIM1_ICInit:
2281  0625 89            	pushw	x
2282       00000000      OFST:	set	0
2285                     ; 430   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
2287  0626 9e            	ld	a,xh
2288  0627 4d            	tnz	a
2289  0628 270f          	jreq	L023
2290  062a 9e            	ld	a,xh
2291  062b a101          	cp	a,#1
2292  062d 270a          	jreq	L023
2293  062f 9e            	ld	a,xh
2294  0630 a102          	cp	a,#2
2295  0632 2705          	jreq	L023
2296  0634 9e            	ld	a,xh
2297  0635 a103          	cp	a,#3
2298  0637 2603          	jrne	L613
2299  0639               L023:
2300  0639 4f            	clr	a
2301  063a 2010          	jra	L223
2302  063c               L613:
2303  063c ae01ae        	ldw	x,#430
2304  063f 89            	pushw	x
2305  0640 ae0000        	ldw	x,#0
2306  0643 89            	pushw	x
2307  0644 ae0000        	ldw	x,#L101
2308  0647 cd0000        	call	_assert_failed
2310  064a 5b04          	addw	sp,#4
2311  064c               L223:
2312                     ; 431   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2314  064c 0d02          	tnz	(OFST+2,sp)
2315  064e 2706          	jreq	L623
2316  0650 7b02          	ld	a,(OFST+2,sp)
2317  0652 a101          	cp	a,#1
2318  0654 2603          	jrne	L423
2319  0656               L623:
2320  0656 4f            	clr	a
2321  0657 2010          	jra	L033
2322  0659               L423:
2323  0659 ae01af        	ldw	x,#431
2324  065c 89            	pushw	x
2325  065d ae0000        	ldw	x,#0
2326  0660 89            	pushw	x
2327  0661 ae0000        	ldw	x,#L101
2328  0664 cd0000        	call	_assert_failed
2330  0667 5b04          	addw	sp,#4
2331  0669               L033:
2332                     ; 432   assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
2334  0669 7b05          	ld	a,(OFST+5,sp)
2335  066b a101          	cp	a,#1
2336  066d 270c          	jreq	L433
2337  066f 7b05          	ld	a,(OFST+5,sp)
2338  0671 a102          	cp	a,#2
2339  0673 2706          	jreq	L433
2340  0675 7b05          	ld	a,(OFST+5,sp)
2341  0677 a103          	cp	a,#3
2342  0679 2603          	jrne	L233
2343  067b               L433:
2344  067b 4f            	clr	a
2345  067c 2010          	jra	L633
2346  067e               L233:
2347  067e ae01b0        	ldw	x,#432
2348  0681 89            	pushw	x
2349  0682 ae0000        	ldw	x,#0
2350  0685 89            	pushw	x
2351  0686 ae0000        	ldw	x,#L101
2352  0689 cd0000        	call	_assert_failed
2354  068c 5b04          	addw	sp,#4
2355  068e               L633:
2356                     ; 433   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
2358  068e 0d06          	tnz	(OFST+6,sp)
2359  0690 2712          	jreq	L243
2360  0692 7b06          	ld	a,(OFST+6,sp)
2361  0694 a104          	cp	a,#4
2362  0696 270c          	jreq	L243
2363  0698 7b06          	ld	a,(OFST+6,sp)
2364  069a a108          	cp	a,#8
2365  069c 2706          	jreq	L243
2366  069e 7b06          	ld	a,(OFST+6,sp)
2367  06a0 a10c          	cp	a,#12
2368  06a2 2603          	jrne	L043
2369  06a4               L243:
2370  06a4 4f            	clr	a
2371  06a5 2010          	jra	L443
2372  06a7               L043:
2373  06a7 ae01b1        	ldw	x,#433
2374  06aa 89            	pushw	x
2375  06ab ae0000        	ldw	x,#0
2376  06ae 89            	pushw	x
2377  06af ae0000        	ldw	x,#L101
2378  06b2 cd0000        	call	_assert_failed
2380  06b5 5b04          	addw	sp,#4
2381  06b7               L443:
2382                     ; 434   assert_param(IS_TIM1_IC_FILTER_OK(TIM1_ICFilter));
2384  06b7 7b07          	ld	a,(OFST+7,sp)
2385  06b9 a110          	cp	a,#16
2386  06bb 2403          	jruge	L643
2387  06bd 4f            	clr	a
2388  06be 2010          	jra	L053
2389  06c0               L643:
2390  06c0 ae01b2        	ldw	x,#434
2391  06c3 89            	pushw	x
2392  06c4 ae0000        	ldw	x,#0
2393  06c7 89            	pushw	x
2394  06c8 ae0000        	ldw	x,#L101
2395  06cb cd0000        	call	_assert_failed
2397  06ce 5b04          	addw	sp,#4
2398  06d0               L053:
2399                     ; 436   if (TIM1_Channel == TIM1_CHANNEL_1)
2401  06d0 0d01          	tnz	(OFST+1,sp)
2402  06d2 2614          	jrne	L176
2403                     ; 439     TI1_Config((uint8_t)TIM1_ICPolarity,
2403                     ; 440                (uint8_t)TIM1_ICSelection,
2403                     ; 441                (uint8_t)TIM1_ICFilter);
2405  06d4 7b07          	ld	a,(OFST+7,sp)
2406  06d6 88            	push	a
2407  06d7 7b06          	ld	a,(OFST+6,sp)
2408  06d9 97            	ld	xl,a
2409  06da 7b03          	ld	a,(OFST+3,sp)
2410  06dc 95            	ld	xh,a
2411  06dd cd150c        	call	L3_TI1_Config
2413  06e0 84            	pop	a
2414                     ; 443     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2416  06e1 7b06          	ld	a,(OFST+6,sp)
2417  06e3 cd126b        	call	_TIM1_SetIC1Prescaler
2420  06e6 2046          	jra	L376
2421  06e8               L176:
2422                     ; 445   else if (TIM1_Channel == TIM1_CHANNEL_2)
2424  06e8 7b01          	ld	a,(OFST+1,sp)
2425  06ea a101          	cp	a,#1
2426  06ec 2614          	jrne	L576
2427                     ; 448     TI2_Config((uint8_t)TIM1_ICPolarity,
2427                     ; 449                (uint8_t)TIM1_ICSelection,
2427                     ; 450                (uint8_t)TIM1_ICFilter);
2429  06ee 7b07          	ld	a,(OFST+7,sp)
2430  06f0 88            	push	a
2431  06f1 7b06          	ld	a,(OFST+6,sp)
2432  06f3 97            	ld	xl,a
2433  06f4 7b03          	ld	a,(OFST+3,sp)
2434  06f6 95            	ld	xh,a
2435  06f7 cd153c        	call	L5_TI2_Config
2437  06fa 84            	pop	a
2438                     ; 452     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2440  06fb 7b06          	ld	a,(OFST+6,sp)
2441  06fd cd129a        	call	_TIM1_SetIC2Prescaler
2444  0700 202c          	jra	L376
2445  0702               L576:
2446                     ; 454   else if (TIM1_Channel == TIM1_CHANNEL_3)
2448  0702 7b01          	ld	a,(OFST+1,sp)
2449  0704 a102          	cp	a,#2
2450  0706 2614          	jrne	L107
2451                     ; 457     TI3_Config((uint8_t)TIM1_ICPolarity,
2451                     ; 458                (uint8_t)TIM1_ICSelection,
2451                     ; 459                (uint8_t)TIM1_ICFilter);
2453  0708 7b07          	ld	a,(OFST+7,sp)
2454  070a 88            	push	a
2455  070b 7b06          	ld	a,(OFST+6,sp)
2456  070d 97            	ld	xl,a
2457  070e 7b03          	ld	a,(OFST+3,sp)
2458  0710 95            	ld	xh,a
2459  0711 cd156c        	call	L7_TI3_Config
2461  0714 84            	pop	a
2462                     ; 461     TIM1_SetIC3Prescaler(TIM1_ICPrescaler);
2464  0715 7b06          	ld	a,(OFST+6,sp)
2465  0717 cd12c9        	call	_TIM1_SetIC3Prescaler
2468  071a 2012          	jra	L376
2469  071c               L107:
2470                     ; 466     TI4_Config((uint8_t)TIM1_ICPolarity,
2470                     ; 467                (uint8_t)TIM1_ICSelection,
2470                     ; 468                (uint8_t)TIM1_ICFilter);
2472  071c 7b07          	ld	a,(OFST+7,sp)
2473  071e 88            	push	a
2474  071f 7b06          	ld	a,(OFST+6,sp)
2475  0721 97            	ld	xl,a
2476  0722 7b03          	ld	a,(OFST+3,sp)
2477  0724 95            	ld	xh,a
2478  0725 cd159c        	call	L11_TI4_Config
2480  0728 84            	pop	a
2481                     ; 470     TIM1_SetIC4Prescaler(TIM1_ICPrescaler);
2483  0729 7b06          	ld	a,(OFST+6,sp)
2484  072b cd12f8        	call	_TIM1_SetIC4Prescaler
2486  072e               L376:
2487                     ; 472 }
2490  072e 85            	popw	x
2491  072f 81            	ret
2588                     ; 488 void TIM1_PWMIConfig(TIM1_Channel_TypeDef TIM1_Channel,
2588                     ; 489                      TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
2588                     ; 490                      TIM1_ICSelection_TypeDef TIM1_ICSelection,
2588                     ; 491                      TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
2588                     ; 492                      uint8_t TIM1_ICFilter)
2588                     ; 493 {
2589                     	switch	.text
2590  0730               _TIM1_PWMIConfig:
2592  0730 89            	pushw	x
2593  0731 89            	pushw	x
2594       00000002      OFST:	set	2
2597                     ; 494   uint8_t icpolarity = TIM1_ICPOLARITY_RISING;
2599                     ; 495   uint8_t icselection = TIM1_ICSELECTION_DIRECTTI;
2601                     ; 498   assert_param(IS_TIM1_PWMI_CHANNEL_OK(TIM1_Channel));
2603  0732 9e            	ld	a,xh
2604  0733 4d            	tnz	a
2605  0734 2705          	jreq	L653
2606  0736 9e            	ld	a,xh
2607  0737 a101          	cp	a,#1
2608  0739 2603          	jrne	L453
2609  073b               L653:
2610  073b 4f            	clr	a
2611  073c 2010          	jra	L063
2612  073e               L453:
2613  073e ae01f2        	ldw	x,#498
2614  0741 89            	pushw	x
2615  0742 ae0000        	ldw	x,#0
2616  0745 89            	pushw	x
2617  0746 ae0000        	ldw	x,#L101
2618  0749 cd0000        	call	_assert_failed
2620  074c 5b04          	addw	sp,#4
2621  074e               L063:
2622                     ; 499   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2624  074e 0d04          	tnz	(OFST+2,sp)
2625  0750 2706          	jreq	L463
2626  0752 7b04          	ld	a,(OFST+2,sp)
2627  0754 a101          	cp	a,#1
2628  0756 2603          	jrne	L263
2629  0758               L463:
2630  0758 4f            	clr	a
2631  0759 2010          	jra	L663
2632  075b               L263:
2633  075b ae01f3        	ldw	x,#499
2634  075e 89            	pushw	x
2635  075f ae0000        	ldw	x,#0
2636  0762 89            	pushw	x
2637  0763 ae0000        	ldw	x,#L101
2638  0766 cd0000        	call	_assert_failed
2640  0769 5b04          	addw	sp,#4
2641  076b               L663:
2642                     ; 500   assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
2644  076b 7b07          	ld	a,(OFST+5,sp)
2645  076d a101          	cp	a,#1
2646  076f 270c          	jreq	L273
2647  0771 7b07          	ld	a,(OFST+5,sp)
2648  0773 a102          	cp	a,#2
2649  0775 2706          	jreq	L273
2650  0777 7b07          	ld	a,(OFST+5,sp)
2651  0779 a103          	cp	a,#3
2652  077b 2603          	jrne	L073
2653  077d               L273:
2654  077d 4f            	clr	a
2655  077e 2010          	jra	L473
2656  0780               L073:
2657  0780 ae01f4        	ldw	x,#500
2658  0783 89            	pushw	x
2659  0784 ae0000        	ldw	x,#0
2660  0787 89            	pushw	x
2661  0788 ae0000        	ldw	x,#L101
2662  078b cd0000        	call	_assert_failed
2664  078e 5b04          	addw	sp,#4
2665  0790               L473:
2666                     ; 501   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
2668  0790 0d08          	tnz	(OFST+6,sp)
2669  0792 2712          	jreq	L004
2670  0794 7b08          	ld	a,(OFST+6,sp)
2671  0796 a104          	cp	a,#4
2672  0798 270c          	jreq	L004
2673  079a 7b08          	ld	a,(OFST+6,sp)
2674  079c a108          	cp	a,#8
2675  079e 2706          	jreq	L004
2676  07a0 7b08          	ld	a,(OFST+6,sp)
2677  07a2 a10c          	cp	a,#12
2678  07a4 2603          	jrne	L673
2679  07a6               L004:
2680  07a6 4f            	clr	a
2681  07a7 2010          	jra	L204
2682  07a9               L673:
2683  07a9 ae01f5        	ldw	x,#501
2684  07ac 89            	pushw	x
2685  07ad ae0000        	ldw	x,#0
2686  07b0 89            	pushw	x
2687  07b1 ae0000        	ldw	x,#L101
2688  07b4 cd0000        	call	_assert_failed
2690  07b7 5b04          	addw	sp,#4
2691  07b9               L204:
2692                     ; 504   if (TIM1_ICPolarity != TIM1_ICPOLARITY_FALLING)
2694  07b9 7b04          	ld	a,(OFST+2,sp)
2695  07bb a101          	cp	a,#1
2696  07bd 2706          	jreq	L357
2697                     ; 506     icpolarity = TIM1_ICPOLARITY_FALLING;
2699  07bf a601          	ld	a,#1
2700  07c1 6b01          	ld	(OFST-1,sp),a
2703  07c3 2002          	jra	L557
2704  07c5               L357:
2705                     ; 510     icpolarity = TIM1_ICPOLARITY_RISING;
2707  07c5 0f01          	clr	(OFST-1,sp)
2709  07c7               L557:
2710                     ; 514   if (TIM1_ICSelection == TIM1_ICSELECTION_DIRECTTI)
2712  07c7 7b07          	ld	a,(OFST+5,sp)
2713  07c9 a101          	cp	a,#1
2714  07cb 2606          	jrne	L757
2715                     ; 516     icselection = TIM1_ICSELECTION_INDIRECTTI;
2717  07cd a602          	ld	a,#2
2718  07cf 6b02          	ld	(OFST+0,sp),a
2721  07d1 2004          	jra	L167
2722  07d3               L757:
2723                     ; 520     icselection = TIM1_ICSELECTION_DIRECTTI;
2725  07d3 a601          	ld	a,#1
2726  07d5 6b02          	ld	(OFST+0,sp),a
2728  07d7               L167:
2729                     ; 523   if (TIM1_Channel == TIM1_CHANNEL_1)
2731  07d7 0d03          	tnz	(OFST+1,sp)
2732  07d9 2626          	jrne	L367
2733                     ; 526     TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
2733                     ; 527                (uint8_t)TIM1_ICFilter);
2735  07db 7b09          	ld	a,(OFST+7,sp)
2736  07dd 88            	push	a
2737  07de 7b08          	ld	a,(OFST+6,sp)
2738  07e0 97            	ld	xl,a
2739  07e1 7b05          	ld	a,(OFST+3,sp)
2740  07e3 95            	ld	xh,a
2741  07e4 cd150c        	call	L3_TI1_Config
2743  07e7 84            	pop	a
2744                     ; 530     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2746  07e8 7b08          	ld	a,(OFST+6,sp)
2747  07ea cd126b        	call	_TIM1_SetIC1Prescaler
2749                     ; 533     TI2_Config(icpolarity, icselection, TIM1_ICFilter);
2751  07ed 7b09          	ld	a,(OFST+7,sp)
2752  07ef 88            	push	a
2753  07f0 7b03          	ld	a,(OFST+1,sp)
2754  07f2 97            	ld	xl,a
2755  07f3 7b02          	ld	a,(OFST+0,sp)
2756  07f5 95            	ld	xh,a
2757  07f6 cd153c        	call	L5_TI2_Config
2759  07f9 84            	pop	a
2760                     ; 536     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2762  07fa 7b08          	ld	a,(OFST+6,sp)
2763  07fc cd129a        	call	_TIM1_SetIC2Prescaler
2766  07ff 2024          	jra	L567
2767  0801               L367:
2768                     ; 541     TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
2768                     ; 542                (uint8_t)TIM1_ICFilter);
2770  0801 7b09          	ld	a,(OFST+7,sp)
2771  0803 88            	push	a
2772  0804 7b08          	ld	a,(OFST+6,sp)
2773  0806 97            	ld	xl,a
2774  0807 7b05          	ld	a,(OFST+3,sp)
2775  0809 95            	ld	xh,a
2776  080a cd153c        	call	L5_TI2_Config
2778  080d 84            	pop	a
2779                     ; 545     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2781  080e 7b08          	ld	a,(OFST+6,sp)
2782  0810 cd129a        	call	_TIM1_SetIC2Prescaler
2784                     ; 548     TI1_Config(icpolarity, icselection, TIM1_ICFilter);
2786  0813 7b09          	ld	a,(OFST+7,sp)
2787  0815 88            	push	a
2788  0816 7b03          	ld	a,(OFST+1,sp)
2789  0818 97            	ld	xl,a
2790  0819 7b02          	ld	a,(OFST+0,sp)
2791  081b 95            	ld	xh,a
2792  081c cd150c        	call	L3_TI1_Config
2794  081f 84            	pop	a
2795                     ; 551     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2797  0820 7b08          	ld	a,(OFST+6,sp)
2798  0822 cd126b        	call	_TIM1_SetIC1Prescaler
2800  0825               L567:
2801                     ; 553 }
2804  0825 5b04          	addw	sp,#4
2805  0827 81            	ret
2861                     ; 561 void TIM1_Cmd(FunctionalState NewState)
2861                     ; 562 {
2862                     	switch	.text
2863  0828               _TIM1_Cmd:
2865  0828 88            	push	a
2866       00000000      OFST:	set	0
2869                     ; 564   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2871  0829 4d            	tnz	a
2872  082a 2704          	jreq	L014
2873  082c a101          	cp	a,#1
2874  082e 2603          	jrne	L604
2875  0830               L014:
2876  0830 4f            	clr	a
2877  0831 2010          	jra	L214
2878  0833               L604:
2879  0833 ae0234        	ldw	x,#564
2880  0836 89            	pushw	x
2881  0837 ae0000        	ldw	x,#0
2882  083a 89            	pushw	x
2883  083b ae0000        	ldw	x,#L101
2884  083e cd0000        	call	_assert_failed
2886  0841 5b04          	addw	sp,#4
2887  0843               L214:
2888                     ; 567   if (NewState != DISABLE)
2890  0843 0d01          	tnz	(OFST+1,sp)
2891  0845 2706          	jreq	L5101
2892                     ; 569     TIM1->CR1 |= TIM1_CR1_CEN;
2894  0847 72105250      	bset	21072,#0
2896  084b 2004          	jra	L7101
2897  084d               L5101:
2898                     ; 573     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_CEN);
2900  084d 72115250      	bres	21072,#0
2901  0851               L7101:
2902                     ; 575 }
2905  0851 84            	pop	a
2906  0852 81            	ret
2943                     ; 583 void TIM1_CtrlPWMOutputs(FunctionalState NewState)
2943                     ; 584 {
2944                     	switch	.text
2945  0853               _TIM1_CtrlPWMOutputs:
2947  0853 88            	push	a
2948       00000000      OFST:	set	0
2951                     ; 586   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2953  0854 4d            	tnz	a
2954  0855 2704          	jreq	L024
2955  0857 a101          	cp	a,#1
2956  0859 2603          	jrne	L614
2957  085b               L024:
2958  085b 4f            	clr	a
2959  085c 2010          	jra	L224
2960  085e               L614:
2961  085e ae024a        	ldw	x,#586
2962  0861 89            	pushw	x
2963  0862 ae0000        	ldw	x,#0
2964  0865 89            	pushw	x
2965  0866 ae0000        	ldw	x,#L101
2966  0869 cd0000        	call	_assert_failed
2968  086c 5b04          	addw	sp,#4
2969  086e               L224:
2970                     ; 590   if (NewState != DISABLE)
2972  086e 0d01          	tnz	(OFST+1,sp)
2973  0870 2706          	jreq	L7301
2974                     ; 592     TIM1->BKR |= TIM1_BKR_MOE;
2976  0872 721e526d      	bset	21101,#7
2978  0876 2004          	jra	L1401
2979  0878               L7301:
2980                     ; 596     TIM1->BKR &= (uint8_t)(~TIM1_BKR_MOE);
2982  0878 721f526d      	bres	21101,#7
2983  087c               L1401:
2984                     ; 598 }
2987  087c 84            	pop	a
2988  087d 81            	ret
3096                     ; 617 void TIM1_ITConfig(TIM1_IT_TypeDef  TIM1_IT, FunctionalState NewState)
3096                     ; 618 {
3097                     	switch	.text
3098  087e               _TIM1_ITConfig:
3100  087e 89            	pushw	x
3101       00000000      OFST:	set	0
3104                     ; 620   assert_param(IS_TIM1_IT_OK(TIM1_IT));
3106  087f 9e            	ld	a,xh
3107  0880 4d            	tnz	a
3108  0881 2703          	jreq	L624
3109  0883 4f            	clr	a
3110  0884 2010          	jra	L034
3111  0886               L624:
3112  0886 ae026c        	ldw	x,#620
3113  0889 89            	pushw	x
3114  088a ae0000        	ldw	x,#0
3115  088d 89            	pushw	x
3116  088e ae0000        	ldw	x,#L101
3117  0891 cd0000        	call	_assert_failed
3119  0894 5b04          	addw	sp,#4
3120  0896               L034:
3121                     ; 621   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3123  0896 0d02          	tnz	(OFST+2,sp)
3124  0898 2706          	jreq	L434
3125  089a 7b02          	ld	a,(OFST+2,sp)
3126  089c a101          	cp	a,#1
3127  089e 2603          	jrne	L234
3128  08a0               L434:
3129  08a0 4f            	clr	a
3130  08a1 2010          	jra	L634
3131  08a3               L234:
3132  08a3 ae026d        	ldw	x,#621
3133  08a6 89            	pushw	x
3134  08a7 ae0000        	ldw	x,#0
3135  08aa 89            	pushw	x
3136  08ab ae0000        	ldw	x,#L101
3137  08ae cd0000        	call	_assert_failed
3139  08b1 5b04          	addw	sp,#4
3140  08b3               L634:
3141                     ; 623   if (NewState != DISABLE)
3143  08b3 0d02          	tnz	(OFST+2,sp)
3144  08b5 270a          	jreq	L1111
3145                     ; 626     TIM1->IER |= (uint8_t)TIM1_IT;
3147  08b7 c65254        	ld	a,21076
3148  08ba 1a01          	or	a,(OFST+1,sp)
3149  08bc c75254        	ld	21076,a
3151  08bf 2009          	jra	L3111
3152  08c1               L1111:
3153                     ; 631     TIM1->IER &= (uint8_t)(~(uint8_t)TIM1_IT);
3155  08c1 7b01          	ld	a,(OFST+1,sp)
3156  08c3 43            	cpl	a
3157  08c4 c45254        	and	a,21076
3158  08c7 c75254        	ld	21076,a
3159  08ca               L3111:
3160                     ; 633 }
3163  08ca 85            	popw	x
3164  08cb 81            	ret
3188                     ; 640 void TIM1_InternalClockConfig(void)
3188                     ; 641 {
3189                     	switch	.text
3190  08cc               _TIM1_InternalClockConfig:
3194                     ; 643   TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_SMS);
3196  08cc c65252        	ld	a,21074
3197  08cf a4f8          	and	a,#248
3198  08d1 c75252        	ld	21074,a
3199                     ; 644 }
3202  08d4 81            	ret
3320                     ; 662 void TIM1_ETRClockMode1Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3320                     ; 663                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3320                     ; 664                               uint8_t ExtTRGFilter)
3320                     ; 665 {
3321                     	switch	.text
3322  08d5               _TIM1_ETRClockMode1Config:
3324  08d5 89            	pushw	x
3325       00000000      OFST:	set	0
3328                     ; 667   assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
3330  08d6 9e            	ld	a,xh
3331  08d7 4d            	tnz	a
3332  08d8 270f          	jreq	L644
3333  08da 9e            	ld	a,xh
3334  08db a110          	cp	a,#16
3335  08dd 270a          	jreq	L644
3336  08df 9e            	ld	a,xh
3337  08e0 a120          	cp	a,#32
3338  08e2 2705          	jreq	L644
3339  08e4 9e            	ld	a,xh
3340  08e5 a130          	cp	a,#48
3341  08e7 2603          	jrne	L444
3342  08e9               L644:
3343  08e9 4f            	clr	a
3344  08ea 2010          	jra	L054
3345  08ec               L444:
3346  08ec ae029b        	ldw	x,#667
3347  08ef 89            	pushw	x
3348  08f0 ae0000        	ldw	x,#0
3349  08f3 89            	pushw	x
3350  08f4 ae0000        	ldw	x,#L101
3351  08f7 cd0000        	call	_assert_failed
3353  08fa 5b04          	addw	sp,#4
3354  08fc               L054:
3355                     ; 668   assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
3357  08fc 7b02          	ld	a,(OFST+2,sp)
3358  08fe a180          	cp	a,#128
3359  0900 2704          	jreq	L454
3360  0902 0d02          	tnz	(OFST+2,sp)
3361  0904 2603          	jrne	L254
3362  0906               L454:
3363  0906 4f            	clr	a
3364  0907 2010          	jra	L654
3365  0909               L254:
3366  0909 ae029c        	ldw	x,#668
3367  090c 89            	pushw	x
3368  090d ae0000        	ldw	x,#0
3369  0910 89            	pushw	x
3370  0911 ae0000        	ldw	x,#L101
3371  0914 cd0000        	call	_assert_failed
3373  0917 5b04          	addw	sp,#4
3374  0919               L654:
3375                     ; 671   TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
3377  0919 7b05          	ld	a,(OFST+5,sp)
3378  091b 88            	push	a
3379  091c 7b03          	ld	a,(OFST+3,sp)
3380  091e 97            	ld	xl,a
3381  091f 7b02          	ld	a,(OFST+2,sp)
3382  0921 95            	ld	xh,a
3383  0922 ad63          	call	_TIM1_ETRConfig
3385  0924 84            	pop	a
3386                     ; 674   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~(uint8_t)(TIM1_SMCR_SMS | TIM1_SMCR_TS )))
3386                     ; 675                          | (uint8_t)((uint8_t)TIM1_SLAVEMODE_EXTERNAL1 | TIM1_TS_ETRF ));
3388  0925 c65252        	ld	a,21074
3389  0928 a488          	and	a,#136
3390  092a aa77          	or	a,#119
3391  092c c75252        	ld	21074,a
3392                     ; 676 }
3395  092f 85            	popw	x
3396  0930 81            	ret
3455                     ; 694 void TIM1_ETRClockMode2Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3455                     ; 695                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3455                     ; 696                               uint8_t ExtTRGFilter)
3455                     ; 697 {
3456                     	switch	.text
3457  0931               _TIM1_ETRClockMode2Config:
3459  0931 89            	pushw	x
3460       00000000      OFST:	set	0
3463                     ; 699   assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
3465  0932 9e            	ld	a,xh
3466  0933 4d            	tnz	a
3467  0934 270f          	jreq	L464
3468  0936 9e            	ld	a,xh
3469  0937 a110          	cp	a,#16
3470  0939 270a          	jreq	L464
3471  093b 9e            	ld	a,xh
3472  093c a120          	cp	a,#32
3473  093e 2705          	jreq	L464
3474  0940 9e            	ld	a,xh
3475  0941 a130          	cp	a,#48
3476  0943 2603          	jrne	L264
3477  0945               L464:
3478  0945 4f            	clr	a
3479  0946 2010          	jra	L664
3480  0948               L264:
3481  0948 ae02bb        	ldw	x,#699
3482  094b 89            	pushw	x
3483  094c ae0000        	ldw	x,#0
3484  094f 89            	pushw	x
3485  0950 ae0000        	ldw	x,#L101
3486  0953 cd0000        	call	_assert_failed
3488  0956 5b04          	addw	sp,#4
3489  0958               L664:
3490                     ; 700   assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
3492  0958 7b02          	ld	a,(OFST+2,sp)
3493  095a a180          	cp	a,#128
3494  095c 2704          	jreq	L274
3495  095e 0d02          	tnz	(OFST+2,sp)
3496  0960 2603          	jrne	L074
3497  0962               L274:
3498  0962 4f            	clr	a
3499  0963 2010          	jra	L474
3500  0965               L074:
3501  0965 ae02bc        	ldw	x,#700
3502  0968 89            	pushw	x
3503  0969 ae0000        	ldw	x,#0
3504  096c 89            	pushw	x
3505  096d ae0000        	ldw	x,#L101
3506  0970 cd0000        	call	_assert_failed
3508  0973 5b04          	addw	sp,#4
3509  0975               L474:
3510                     ; 703   TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
3512  0975 7b05          	ld	a,(OFST+5,sp)
3513  0977 88            	push	a
3514  0978 7b03          	ld	a,(OFST+3,sp)
3515  097a 97            	ld	xl,a
3516  097b 7b02          	ld	a,(OFST+2,sp)
3517  097d 95            	ld	xh,a
3518  097e ad07          	call	_TIM1_ETRConfig
3520  0980 84            	pop	a
3521                     ; 706   TIM1->ETR |= TIM1_ETR_ECE;
3523  0981 721c5253      	bset	21075,#6
3524                     ; 707 }
3527  0985 85            	popw	x
3528  0986 81            	ret
3585                     ; 725 void TIM1_ETRConfig(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3585                     ; 726                     TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3585                     ; 727                     uint8_t ExtTRGFilter)
3585                     ; 728 {
3586                     	switch	.text
3587  0987               _TIM1_ETRConfig:
3589  0987 89            	pushw	x
3590       00000000      OFST:	set	0
3593                     ; 730   assert_param(IS_TIM1_EXT_TRG_FILTER_OK(ExtTRGFilter));
3595  0988 7b05          	ld	a,(OFST+5,sp)
3596  098a a110          	cp	a,#16
3597  098c 2403          	jruge	L005
3598  098e 4f            	clr	a
3599  098f 2010          	jra	L205
3600  0991               L005:
3601  0991 ae02da        	ldw	x,#730
3602  0994 89            	pushw	x
3603  0995 ae0000        	ldw	x,#0
3604  0998 89            	pushw	x
3605  0999 ae0000        	ldw	x,#L101
3606  099c cd0000        	call	_assert_failed
3608  099f 5b04          	addw	sp,#4
3609  09a1               L205:
3610                     ; 732   TIM1->ETR |= (uint8_t)((uint8_t)(TIM1_ExtTRGPrescaler | (uint8_t)TIM1_ExtTRGPolarity )|
3610                     ; 733                          (uint8_t)ExtTRGFilter );
3612  09a1 7b01          	ld	a,(OFST+1,sp)
3613  09a3 1a02          	or	a,(OFST+2,sp)
3614  09a5 1a05          	or	a,(OFST+5,sp)
3615  09a7 ca5253        	or	a,21075
3616  09aa c75253        	ld	21075,a
3617                     ; 734 }
3620  09ad 85            	popw	x
3621  09ae 81            	ret
3711                     ; 751 void TIM1_TIxExternalClockConfig(TIM1_TIxExternalCLK1Source_TypeDef TIM1_TIxExternalCLKSource,
3711                     ; 752                                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
3711                     ; 753                                  uint8_t ICFilter)
3711                     ; 754 {
3712                     	switch	.text
3713  09af               _TIM1_TIxExternalClockConfig:
3715  09af 89            	pushw	x
3716       00000000      OFST:	set	0
3719                     ; 756   assert_param(IS_TIM1_TIXCLK_SOURCE_OK(TIM1_TIxExternalCLKSource));
3721  09b0 9e            	ld	a,xh
3722  09b1 a140          	cp	a,#64
3723  09b3 270a          	jreq	L015
3724  09b5 9e            	ld	a,xh
3725  09b6 a160          	cp	a,#96
3726  09b8 2705          	jreq	L015
3727  09ba 9e            	ld	a,xh
3728  09bb a150          	cp	a,#80
3729  09bd 2603          	jrne	L605
3730  09bf               L015:
3731  09bf 4f            	clr	a
3732  09c0 2010          	jra	L215
3733  09c2               L605:
3734  09c2 ae02f4        	ldw	x,#756
3735  09c5 89            	pushw	x
3736  09c6 ae0000        	ldw	x,#0
3737  09c9 89            	pushw	x
3738  09ca ae0000        	ldw	x,#L101
3739  09cd cd0000        	call	_assert_failed
3741  09d0 5b04          	addw	sp,#4
3742  09d2               L215:
3743                     ; 757   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
3745  09d2 0d02          	tnz	(OFST+2,sp)
3746  09d4 2706          	jreq	L615
3747  09d6 7b02          	ld	a,(OFST+2,sp)
3748  09d8 a101          	cp	a,#1
3749  09da 2603          	jrne	L415
3750  09dc               L615:
3751  09dc 4f            	clr	a
3752  09dd 2010          	jra	L025
3753  09df               L415:
3754  09df ae02f5        	ldw	x,#757
3755  09e2 89            	pushw	x
3756  09e3 ae0000        	ldw	x,#0
3757  09e6 89            	pushw	x
3758  09e7 ae0000        	ldw	x,#L101
3759  09ea cd0000        	call	_assert_failed
3761  09ed 5b04          	addw	sp,#4
3762  09ef               L025:
3763                     ; 758   assert_param(IS_TIM1_IC_FILTER_OK(ICFilter));
3765  09ef 7b05          	ld	a,(OFST+5,sp)
3766  09f1 a110          	cp	a,#16
3767  09f3 2403          	jruge	L225
3768  09f5 4f            	clr	a
3769  09f6 2010          	jra	L425
3770  09f8               L225:
3771  09f8 ae02f6        	ldw	x,#758
3772  09fb 89            	pushw	x
3773  09fc ae0000        	ldw	x,#0
3774  09ff 89            	pushw	x
3775  0a00 ae0000        	ldw	x,#L101
3776  0a03 cd0000        	call	_assert_failed
3778  0a06 5b04          	addw	sp,#4
3779  0a08               L425:
3780                     ; 761   if (TIM1_TIxExternalCLKSource == TIM1_TIXEXTERNALCLK1SOURCE_TI2)
3782  0a08 7b01          	ld	a,(OFST+1,sp)
3783  0a0a a160          	cp	a,#96
3784  0a0c 260f          	jrne	L3131
3785                     ; 763     TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
3787  0a0e 7b05          	ld	a,(OFST+5,sp)
3788  0a10 88            	push	a
3789  0a11 7b03          	ld	a,(OFST+3,sp)
3790  0a13 ae0001        	ldw	x,#1
3791  0a16 95            	ld	xh,a
3792  0a17 cd153c        	call	L5_TI2_Config
3794  0a1a 84            	pop	a
3796  0a1b 200d          	jra	L5131
3797  0a1d               L3131:
3798                     ; 767     TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
3800  0a1d 7b05          	ld	a,(OFST+5,sp)
3801  0a1f 88            	push	a
3802  0a20 7b03          	ld	a,(OFST+3,sp)
3803  0a22 ae0001        	ldw	x,#1
3804  0a25 95            	ld	xh,a
3805  0a26 cd150c        	call	L3_TI1_Config
3807  0a29 84            	pop	a
3808  0a2a               L5131:
3809                     ; 771   TIM1_SelectInputTrigger((TIM1_TS_TypeDef)TIM1_TIxExternalCLKSource);
3811  0a2a 7b01          	ld	a,(OFST+1,sp)
3812  0a2c ad0a          	call	_TIM1_SelectInputTrigger
3814                     ; 774   TIM1->SMCR |= (uint8_t)(TIM1_SLAVEMODE_EXTERNAL1);
3816  0a2e c65252        	ld	a,21074
3817  0a31 aa07          	or	a,#7
3818  0a33 c75252        	ld	21074,a
3819                     ; 775 }
3822  0a36 85            	popw	x
3823  0a37 81            	ret
3909                     ; 787 void TIM1_SelectInputTrigger(TIM1_TS_TypeDef TIM1_InputTriggerSource)
3909                     ; 788 {
3910                     	switch	.text
3911  0a38               _TIM1_SelectInputTrigger:
3913  0a38 88            	push	a
3914       00000000      OFST:	set	0
3917                     ; 790   assert_param(IS_TIM1_TRIGGER_SELECTION_OK(TIM1_InputTriggerSource));
3919  0a39 a140          	cp	a,#64
3920  0a3b 2713          	jreq	L235
3921  0a3d a150          	cp	a,#80
3922  0a3f 270f          	jreq	L235
3923  0a41 a160          	cp	a,#96
3924  0a43 270b          	jreq	L235
3925  0a45 a170          	cp	a,#112
3926  0a47 2707          	jreq	L235
3927  0a49 a130          	cp	a,#48
3928  0a4b 2703          	jreq	L235
3929  0a4d 4d            	tnz	a
3930  0a4e 2603          	jrne	L035
3931  0a50               L235:
3932  0a50 4f            	clr	a
3933  0a51 2010          	jra	L435
3934  0a53               L035:
3935  0a53 ae0316        	ldw	x,#790
3936  0a56 89            	pushw	x
3937  0a57 ae0000        	ldw	x,#0
3938  0a5a 89            	pushw	x
3939  0a5b ae0000        	ldw	x,#L101
3940  0a5e cd0000        	call	_assert_failed
3942  0a61 5b04          	addw	sp,#4
3943  0a63               L435:
3944                     ; 793   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_TS)) | (uint8_t)TIM1_InputTriggerSource);
3946  0a63 c65252        	ld	a,21074
3947  0a66 a48f          	and	a,#143
3948  0a68 1a01          	or	a,(OFST+1,sp)
3949  0a6a c75252        	ld	21074,a
3950                     ; 794 }
3953  0a6d 84            	pop	a
3954  0a6e 81            	ret
3991                     ; 803 void TIM1_UpdateDisableConfig(FunctionalState NewState)
3991                     ; 804 {
3992                     	switch	.text
3993  0a6f               _TIM1_UpdateDisableConfig:
3995  0a6f 88            	push	a
3996       00000000      OFST:	set	0
3999                     ; 806   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4001  0a70 4d            	tnz	a
4002  0a71 2704          	jreq	L245
4003  0a73 a101          	cp	a,#1
4004  0a75 2603          	jrne	L045
4005  0a77               L245:
4006  0a77 4f            	clr	a
4007  0a78 2010          	jra	L445
4008  0a7a               L045:
4009  0a7a ae0326        	ldw	x,#806
4010  0a7d 89            	pushw	x
4011  0a7e ae0000        	ldw	x,#0
4012  0a81 89            	pushw	x
4013  0a82 ae0000        	ldw	x,#L101
4014  0a85 cd0000        	call	_assert_failed
4016  0a88 5b04          	addw	sp,#4
4017  0a8a               L445:
4018                     ; 809   if (NewState != DISABLE)
4020  0a8a 0d01          	tnz	(OFST+1,sp)
4021  0a8c 2706          	jreq	L3731
4022                     ; 811     TIM1->CR1 |= TIM1_CR1_UDIS;
4024  0a8e 72125250      	bset	21072,#1
4026  0a92 2004          	jra	L5731
4027  0a94               L3731:
4028                     ; 815     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_UDIS);
4030  0a94 72135250      	bres	21072,#1
4031  0a98               L5731:
4032                     ; 817 }
4035  0a98 84            	pop	a
4036  0a99 81            	ret
4095                     ; 827 void TIM1_UpdateRequestConfig(TIM1_UpdateSource_TypeDef TIM1_UpdateSource)
4095                     ; 828 {
4096                     	switch	.text
4097  0a9a               _TIM1_UpdateRequestConfig:
4099  0a9a 88            	push	a
4100       00000000      OFST:	set	0
4103                     ; 830   assert_param(IS_TIM1_UPDATE_SOURCE_OK(TIM1_UpdateSource));
4105  0a9b 4d            	tnz	a
4106  0a9c 2704          	jreq	L255
4107  0a9e a101          	cp	a,#1
4108  0aa0 2603          	jrne	L055
4109  0aa2               L255:
4110  0aa2 4f            	clr	a
4111  0aa3 2010          	jra	L455
4112  0aa5               L055:
4113  0aa5 ae033e        	ldw	x,#830
4114  0aa8 89            	pushw	x
4115  0aa9 ae0000        	ldw	x,#0
4116  0aac 89            	pushw	x
4117  0aad ae0000        	ldw	x,#L101
4118  0ab0 cd0000        	call	_assert_failed
4120  0ab3 5b04          	addw	sp,#4
4121  0ab5               L455:
4122                     ; 833   if (TIM1_UpdateSource != TIM1_UPDATESOURCE_GLOBAL)
4124  0ab5 0d01          	tnz	(OFST+1,sp)
4125  0ab7 2706          	jreq	L5241
4126                     ; 835     TIM1->CR1 |= TIM1_CR1_URS;
4128  0ab9 72145250      	bset	21072,#2
4130  0abd 2004          	jra	L7241
4131  0abf               L5241:
4132                     ; 839     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_URS);
4134  0abf 72155250      	bres	21072,#2
4135  0ac3               L7241:
4136                     ; 841 }
4139  0ac3 84            	pop	a
4140  0ac4 81            	ret
4177                     ; 849 void TIM1_SelectHallSensor(FunctionalState NewState)
4177                     ; 850 {
4178                     	switch	.text
4179  0ac5               _TIM1_SelectHallSensor:
4181  0ac5 88            	push	a
4182       00000000      OFST:	set	0
4185                     ; 852   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4187  0ac6 4d            	tnz	a
4188  0ac7 2704          	jreq	L265
4189  0ac9 a101          	cp	a,#1
4190  0acb 2603          	jrne	L065
4191  0acd               L265:
4192  0acd 4f            	clr	a
4193  0ace 2010          	jra	L465
4194  0ad0               L065:
4195  0ad0 ae0354        	ldw	x,#852
4196  0ad3 89            	pushw	x
4197  0ad4 ae0000        	ldw	x,#0
4198  0ad7 89            	pushw	x
4199  0ad8 ae0000        	ldw	x,#L101
4200  0adb cd0000        	call	_assert_failed
4202  0ade 5b04          	addw	sp,#4
4203  0ae0               L465:
4204                     ; 855   if (NewState != DISABLE)
4206  0ae0 0d01          	tnz	(OFST+1,sp)
4207  0ae2 2706          	jreq	L7441
4208                     ; 857     TIM1->CR2 |= TIM1_CR2_TI1S;
4210  0ae4 721e5251      	bset	21073,#7
4212  0ae8 2004          	jra	L1541
4213  0aea               L7441:
4214                     ; 861     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_TI1S);
4216  0aea 721f5251      	bres	21073,#7
4217  0aee               L1541:
4218                     ; 863 }
4221  0aee 84            	pop	a
4222  0aef 81            	ret
4280                     ; 873 void TIM1_SelectOnePulseMode(TIM1_OPMode_TypeDef TIM1_OPMode)
4280                     ; 874 {
4281                     	switch	.text
4282  0af0               _TIM1_SelectOnePulseMode:
4284  0af0 88            	push	a
4285       00000000      OFST:	set	0
4288                     ; 876   assert_param(IS_TIM1_OPM_MODE_OK(TIM1_OPMode));
4290  0af1 a101          	cp	a,#1
4291  0af3 2703          	jreq	L275
4292  0af5 4d            	tnz	a
4293  0af6 2603          	jrne	L075
4294  0af8               L275:
4295  0af8 4f            	clr	a
4296  0af9 2010          	jra	L475
4297  0afb               L075:
4298  0afb ae036c        	ldw	x,#876
4299  0afe 89            	pushw	x
4300  0aff ae0000        	ldw	x,#0
4301  0b02 89            	pushw	x
4302  0b03 ae0000        	ldw	x,#L101
4303  0b06 cd0000        	call	_assert_failed
4305  0b09 5b04          	addw	sp,#4
4306  0b0b               L475:
4307                     ; 879   if (TIM1_OPMode != TIM1_OPMODE_REPETITIVE)
4309  0b0b 0d01          	tnz	(OFST+1,sp)
4310  0b0d 2706          	jreq	L1051
4311                     ; 881     TIM1->CR1 |= TIM1_CR1_OPM;
4313  0b0f 72165250      	bset	21072,#3
4315  0b13 2004          	jra	L3051
4316  0b15               L1051:
4317                     ; 885     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_OPM);
4319  0b15 72175250      	bres	21072,#3
4320  0b19               L3051:
4321                     ; 888 }
4324  0b19 84            	pop	a
4325  0b1a 81            	ret
4424                     ; 903 void TIM1_SelectOutputTrigger(TIM1_TRGOSource_TypeDef TIM1_TRGOSource)
4424                     ; 904 {
4425                     	switch	.text
4426  0b1b               _TIM1_SelectOutputTrigger:
4428  0b1b 88            	push	a
4429       00000000      OFST:	set	0
4432                     ; 906   assert_param(IS_TIM1_TRGO_SOURCE_OK(TIM1_TRGOSource));
4434  0b1c 4d            	tnz	a
4435  0b1d 2718          	jreq	L206
4436  0b1f a110          	cp	a,#16
4437  0b21 2714          	jreq	L206
4438  0b23 a120          	cp	a,#32
4439  0b25 2710          	jreq	L206
4440  0b27 a130          	cp	a,#48
4441  0b29 270c          	jreq	L206
4442  0b2b a140          	cp	a,#64
4443  0b2d 2708          	jreq	L206
4444  0b2f a150          	cp	a,#80
4445  0b31 2704          	jreq	L206
4446  0b33 a160          	cp	a,#96
4447  0b35 2603          	jrne	L006
4448  0b37               L206:
4449  0b37 4f            	clr	a
4450  0b38 2010          	jra	L406
4451  0b3a               L006:
4452  0b3a ae038a        	ldw	x,#906
4453  0b3d 89            	pushw	x
4454  0b3e ae0000        	ldw	x,#0
4455  0b41 89            	pushw	x
4456  0b42 ae0000        	ldw	x,#L101
4457  0b45 cd0000        	call	_assert_failed
4459  0b48 5b04          	addw	sp,#4
4460  0b4a               L406:
4461                     ; 909   TIM1->CR2 = (uint8_t)((uint8_t)(TIM1->CR2 & (uint8_t)(~TIM1_CR2_MMS)) | 
4461                     ; 910                         (uint8_t) TIM1_TRGOSource);
4463  0b4a c65251        	ld	a,21073
4464  0b4d a48f          	and	a,#143
4465  0b4f 1a01          	or	a,(OFST+1,sp)
4466  0b51 c75251        	ld	21073,a
4467                     ; 911 }
4470  0b54 84            	pop	a
4471  0b55 81            	ret
4546                     ; 923 void TIM1_SelectSlaveMode(TIM1_SlaveMode_TypeDef TIM1_SlaveMode)
4546                     ; 924 {
4547                     	switch	.text
4548  0b56               _TIM1_SelectSlaveMode:
4550  0b56 88            	push	a
4551       00000000      OFST:	set	0
4554                     ; 926   assert_param(IS_TIM1_SLAVE_MODE_OK(TIM1_SlaveMode));
4556  0b57 a104          	cp	a,#4
4557  0b59 270c          	jreq	L216
4558  0b5b a105          	cp	a,#5
4559  0b5d 2708          	jreq	L216
4560  0b5f a106          	cp	a,#6
4561  0b61 2704          	jreq	L216
4562  0b63 a107          	cp	a,#7
4563  0b65 2603          	jrne	L016
4564  0b67               L216:
4565  0b67 4f            	clr	a
4566  0b68 2010          	jra	L416
4567  0b6a               L016:
4568  0b6a ae039e        	ldw	x,#926
4569  0b6d 89            	pushw	x
4570  0b6e ae0000        	ldw	x,#0
4571  0b71 89            	pushw	x
4572  0b72 ae0000        	ldw	x,#L101
4573  0b75 cd0000        	call	_assert_failed
4575  0b78 5b04          	addw	sp,#4
4576  0b7a               L416:
4577                     ; 929   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_SMS)) |
4577                     ; 930                          (uint8_t)TIM1_SlaveMode);
4579  0b7a c65252        	ld	a,21074
4580  0b7d a4f8          	and	a,#248
4581  0b7f 1a01          	or	a,(OFST+1,sp)
4582  0b81 c75252        	ld	21074,a
4583                     ; 931 }
4586  0b84 84            	pop	a
4587  0b85 81            	ret
4624                     ; 939 void TIM1_SelectMasterSlaveMode(FunctionalState NewState)
4624                     ; 940 {
4625                     	switch	.text
4626  0b86               _TIM1_SelectMasterSlaveMode:
4628  0b86 88            	push	a
4629       00000000      OFST:	set	0
4632                     ; 942   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4634  0b87 4d            	tnz	a
4635  0b88 2704          	jreq	L226
4636  0b8a a101          	cp	a,#1
4637  0b8c 2603          	jrne	L026
4638  0b8e               L226:
4639  0b8e 4f            	clr	a
4640  0b8f 2010          	jra	L426
4641  0b91               L026:
4642  0b91 ae03ae        	ldw	x,#942
4643  0b94 89            	pushw	x
4644  0b95 ae0000        	ldw	x,#0
4645  0b98 89            	pushw	x
4646  0b99 ae0000        	ldw	x,#L101
4647  0b9c cd0000        	call	_assert_failed
4649  0b9f 5b04          	addw	sp,#4
4650  0ba1               L426:
4651                     ; 945   if (NewState != DISABLE)
4653  0ba1 0d01          	tnz	(OFST+1,sp)
4654  0ba3 2706          	jreq	L5161
4655                     ; 947     TIM1->SMCR |= TIM1_SMCR_MSM;
4657  0ba5 721e5252      	bset	21074,#7
4659  0ba9 2004          	jra	L7161
4660  0bab               L5161:
4661                     ; 951     TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_MSM);
4663  0bab 721f5252      	bres	21074,#7
4664  0baf               L7161:
4665                     ; 953 }
4668  0baf 84            	pop	a
4669  0bb0 81            	ret
4756                     ; 975 void TIM1_EncoderInterfaceConfig(TIM1_EncoderMode_TypeDef TIM1_EncoderMode,
4756                     ; 976                                  TIM1_ICPolarity_TypeDef TIM1_IC1Polarity,
4756                     ; 977                                  TIM1_ICPolarity_TypeDef TIM1_IC2Polarity)
4756                     ; 978 {
4757                     	switch	.text
4758  0bb1               _TIM1_EncoderInterfaceConfig:
4760  0bb1 89            	pushw	x
4761       00000000      OFST:	set	0
4764                     ; 980   assert_param(IS_TIM1_ENCODER_MODE_OK(TIM1_EncoderMode));
4766  0bb2 9e            	ld	a,xh
4767  0bb3 a101          	cp	a,#1
4768  0bb5 270a          	jreq	L236
4769  0bb7 9e            	ld	a,xh
4770  0bb8 a102          	cp	a,#2
4771  0bba 2705          	jreq	L236
4772  0bbc 9e            	ld	a,xh
4773  0bbd a103          	cp	a,#3
4774  0bbf 2603          	jrne	L036
4775  0bc1               L236:
4776  0bc1 4f            	clr	a
4777  0bc2 2010          	jra	L436
4778  0bc4               L036:
4779  0bc4 ae03d4        	ldw	x,#980
4780  0bc7 89            	pushw	x
4781  0bc8 ae0000        	ldw	x,#0
4782  0bcb 89            	pushw	x
4783  0bcc ae0000        	ldw	x,#L101
4784  0bcf cd0000        	call	_assert_failed
4786  0bd2 5b04          	addw	sp,#4
4787  0bd4               L436:
4788                     ; 981   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC1Polarity));
4790  0bd4 0d02          	tnz	(OFST+2,sp)
4791  0bd6 2706          	jreq	L046
4792  0bd8 7b02          	ld	a,(OFST+2,sp)
4793  0bda a101          	cp	a,#1
4794  0bdc 2603          	jrne	L636
4795  0bde               L046:
4796  0bde 4f            	clr	a
4797  0bdf 2010          	jra	L246
4798  0be1               L636:
4799  0be1 ae03d5        	ldw	x,#981
4800  0be4 89            	pushw	x
4801  0be5 ae0000        	ldw	x,#0
4802  0be8 89            	pushw	x
4803  0be9 ae0000        	ldw	x,#L101
4804  0bec cd0000        	call	_assert_failed
4806  0bef 5b04          	addw	sp,#4
4807  0bf1               L246:
4808                     ; 982   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC2Polarity));
4810  0bf1 0d05          	tnz	(OFST+5,sp)
4811  0bf3 2706          	jreq	L646
4812  0bf5 7b05          	ld	a,(OFST+5,sp)
4813  0bf7 a101          	cp	a,#1
4814  0bf9 2603          	jrne	L446
4815  0bfb               L646:
4816  0bfb 4f            	clr	a
4817  0bfc 2010          	jra	L056
4818  0bfe               L446:
4819  0bfe ae03d6        	ldw	x,#982
4820  0c01 89            	pushw	x
4821  0c02 ae0000        	ldw	x,#0
4822  0c05 89            	pushw	x
4823  0c06 ae0000        	ldw	x,#L101
4824  0c09 cd0000        	call	_assert_failed
4826  0c0c 5b04          	addw	sp,#4
4827  0c0e               L056:
4828                     ; 985   if (TIM1_IC1Polarity != TIM1_ICPOLARITY_RISING)
4830  0c0e 0d02          	tnz	(OFST+2,sp)
4831  0c10 2706          	jreq	L1661
4832                     ; 987     TIM1->CCER1 |= TIM1_CCER1_CC1P;
4834  0c12 7212525c      	bset	21084,#1
4836  0c16 2004          	jra	L3661
4837  0c18               L1661:
4838                     ; 991     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
4840  0c18 7213525c      	bres	21084,#1
4841  0c1c               L3661:
4842                     ; 994   if (TIM1_IC2Polarity != TIM1_ICPOLARITY_RISING)
4844  0c1c 0d05          	tnz	(OFST+5,sp)
4845  0c1e 2706          	jreq	L5661
4846                     ; 996     TIM1->CCER1 |= TIM1_CCER1_CC2P;
4848  0c20 721a525c      	bset	21084,#5
4850  0c24 2004          	jra	L7661
4851  0c26               L5661:
4852                     ; 1000     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
4854  0c26 721b525c      	bres	21084,#5
4855  0c2a               L7661:
4856                     ; 1003   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(TIM1_SMCR_MSM | TIM1_SMCR_TS))
4856                     ; 1004                          | (uint8_t) TIM1_EncoderMode);
4858  0c2a c65252        	ld	a,21074
4859  0c2d a4f0          	and	a,#240
4860  0c2f 1a01          	or	a,(OFST+1,sp)
4861  0c31 c75252        	ld	21074,a
4862                     ; 1007   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_CCxS)) 
4862                     ; 1008                           | (uint8_t) CCMR_TIxDirect_Set);
4864  0c34 c65258        	ld	a,21080
4865  0c37 a4fc          	and	a,#252
4866  0c39 aa01          	or	a,#1
4867  0c3b c75258        	ld	21080,a
4868                     ; 1009   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_CCxS))
4868                     ; 1010                           | (uint8_t) CCMR_TIxDirect_Set);
4870  0c3e c65259        	ld	a,21081
4871  0c41 a4fc          	and	a,#252
4872  0c43 aa01          	or	a,#1
4873  0c45 c75259        	ld	21081,a
4874                     ; 1011 }
4877  0c48 85            	popw	x
4878  0c49 81            	ret
4946                     ; 1023 void TIM1_PrescalerConfig(uint16_t Prescaler,
4946                     ; 1024                           TIM1_PSCReloadMode_TypeDef TIM1_PSCReloadMode)
4946                     ; 1025 {
4947                     	switch	.text
4948  0c4a               _TIM1_PrescalerConfig:
4950  0c4a 89            	pushw	x
4951       00000000      OFST:	set	0
4954                     ; 1027   assert_param(IS_TIM1_PRESCALER_RELOAD_OK(TIM1_PSCReloadMode));
4956  0c4b 0d05          	tnz	(OFST+5,sp)
4957  0c4d 2706          	jreq	L656
4958  0c4f 7b05          	ld	a,(OFST+5,sp)
4959  0c51 a101          	cp	a,#1
4960  0c53 2603          	jrne	L456
4961  0c55               L656:
4962  0c55 4f            	clr	a
4963  0c56 2010          	jra	L066
4964  0c58               L456:
4965  0c58 ae0403        	ldw	x,#1027
4966  0c5b 89            	pushw	x
4967  0c5c ae0000        	ldw	x,#0
4968  0c5f 89            	pushw	x
4969  0c60 ae0000        	ldw	x,#L101
4970  0c63 cd0000        	call	_assert_failed
4972  0c66 5b04          	addw	sp,#4
4973  0c68               L066:
4974                     ; 1030   TIM1->PSCRH = (uint8_t)(Prescaler >> 8);
4976  0c68 7b01          	ld	a,(OFST+1,sp)
4977  0c6a c75260        	ld	21088,a
4978                     ; 1031   TIM1->PSCRL = (uint8_t)(Prescaler);
4980  0c6d 7b02          	ld	a,(OFST+2,sp)
4981  0c6f c75261        	ld	21089,a
4982                     ; 1034   TIM1->EGR = (uint8_t)TIM1_PSCReloadMode;
4984  0c72 7b05          	ld	a,(OFST+5,sp)
4985  0c74 c75257        	ld	21079,a
4986                     ; 1035 }
4989  0c77 85            	popw	x
4990  0c78 81            	ret
5027                     ; 1048 void TIM1_CounterModeConfig(TIM1_CounterMode_TypeDef TIM1_CounterMode)
5027                     ; 1049 {
5028                     	switch	.text
5029  0c79               _TIM1_CounterModeConfig:
5031  0c79 88            	push	a
5032       00000000      OFST:	set	0
5035                     ; 1051   assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
5037  0c7a 4d            	tnz	a
5038  0c7b 2710          	jreq	L666
5039  0c7d a110          	cp	a,#16
5040  0c7f 270c          	jreq	L666
5041  0c81 a120          	cp	a,#32
5042  0c83 2708          	jreq	L666
5043  0c85 a140          	cp	a,#64
5044  0c87 2704          	jreq	L666
5045  0c89 a160          	cp	a,#96
5046  0c8b 2603          	jrne	L466
5047  0c8d               L666:
5048  0c8d 4f            	clr	a
5049  0c8e 2010          	jra	L076
5050  0c90               L466:
5051  0c90 ae041b        	ldw	x,#1051
5052  0c93 89            	pushw	x
5053  0c94 ae0000        	ldw	x,#0
5054  0c97 89            	pushw	x
5055  0c98 ae0000        	ldw	x,#L101
5056  0c9b cd0000        	call	_assert_failed
5058  0c9e 5b04          	addw	sp,#4
5059  0ca0               L076:
5060                     ; 1055   TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)((uint8_t)(~TIM1_CR1_CMS) & (uint8_t)(~TIM1_CR1_DIR)))
5060                     ; 1056                         | (uint8_t)TIM1_CounterMode);
5062  0ca0 c65250        	ld	a,21072
5063  0ca3 a48f          	and	a,#143
5064  0ca5 1a01          	or	a,(OFST+1,sp)
5065  0ca7 c75250        	ld	21072,a
5066                     ; 1057 }
5069  0caa 84            	pop	a
5070  0cab 81            	ret
5129                     ; 1067 void TIM1_ForcedOC1Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
5129                     ; 1068 {
5130                     	switch	.text
5131  0cac               _TIM1_ForcedOC1Config:
5133  0cac 88            	push	a
5134       00000000      OFST:	set	0
5137                     ; 1070   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
5139  0cad a150          	cp	a,#80
5140  0caf 2704          	jreq	L676
5141  0cb1 a140          	cp	a,#64
5142  0cb3 2603          	jrne	L476
5143  0cb5               L676:
5144  0cb5 4f            	clr	a
5145  0cb6 2010          	jra	L007
5146  0cb8               L476:
5147  0cb8 ae042e        	ldw	x,#1070
5148  0cbb 89            	pushw	x
5149  0cbc ae0000        	ldw	x,#0
5150  0cbf 89            	pushw	x
5151  0cc0 ae0000        	ldw	x,#L101
5152  0cc3 cd0000        	call	_assert_failed
5154  0cc6 5b04          	addw	sp,#4
5155  0cc8               L007:
5156                     ; 1073   TIM1->CCMR1 =  (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM))|
5156                     ; 1074                            (uint8_t)TIM1_ForcedAction);
5158  0cc8 c65258        	ld	a,21080
5159  0ccb a48f          	and	a,#143
5160  0ccd 1a01          	or	a,(OFST+1,sp)
5161  0ccf c75258        	ld	21080,a
5162                     ; 1075 }
5165  0cd2 84            	pop	a
5166  0cd3 81            	ret
5203                     ; 1085 void TIM1_ForcedOC2Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
5203                     ; 1086 {
5204                     	switch	.text
5205  0cd4               _TIM1_ForcedOC2Config:
5207  0cd4 88            	push	a
5208       00000000      OFST:	set	0
5211                     ; 1088   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
5213  0cd5 a150          	cp	a,#80
5214  0cd7 2704          	jreq	L607
5215  0cd9 a140          	cp	a,#64
5216  0cdb 2603          	jrne	L407
5217  0cdd               L607:
5218  0cdd 4f            	clr	a
5219  0cde 2010          	jra	L017
5220  0ce0               L407:
5221  0ce0 ae0440        	ldw	x,#1088
5222  0ce3 89            	pushw	x
5223  0ce4 ae0000        	ldw	x,#0
5224  0ce7 89            	pushw	x
5225  0ce8 ae0000        	ldw	x,#L101
5226  0ceb cd0000        	call	_assert_failed
5228  0cee 5b04          	addw	sp,#4
5229  0cf0               L017:
5230                     ; 1091   TIM1->CCMR2  =  (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
5230                     ; 1092                             | (uint8_t)TIM1_ForcedAction);
5232  0cf0 c65259        	ld	a,21081
5233  0cf3 a48f          	and	a,#143
5234  0cf5 1a01          	or	a,(OFST+1,sp)
5235  0cf7 c75259        	ld	21081,a
5236                     ; 1093 }
5239  0cfa 84            	pop	a
5240  0cfb 81            	ret
5277                     ; 1104 void TIM1_ForcedOC3Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
5277                     ; 1105 {
5278                     	switch	.text
5279  0cfc               _TIM1_ForcedOC3Config:
5281  0cfc 88            	push	a
5282       00000000      OFST:	set	0
5285                     ; 1107   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
5287  0cfd a150          	cp	a,#80
5288  0cff 2704          	jreq	L617
5289  0d01 a140          	cp	a,#64
5290  0d03 2603          	jrne	L417
5291  0d05               L617:
5292  0d05 4f            	clr	a
5293  0d06 2010          	jra	L027
5294  0d08               L417:
5295  0d08 ae0453        	ldw	x,#1107
5296  0d0b 89            	pushw	x
5297  0d0c ae0000        	ldw	x,#0
5298  0d0f 89            	pushw	x
5299  0d10 ae0000        	ldw	x,#L101
5300  0d13 cd0000        	call	_assert_failed
5302  0d16 5b04          	addw	sp,#4
5303  0d18               L027:
5304                     ; 1110   TIM1->CCMR3  =  (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM))  
5304                     ; 1111                             | (uint8_t)TIM1_ForcedAction);
5306  0d18 c6525a        	ld	a,21082
5307  0d1b a48f          	and	a,#143
5308  0d1d 1a01          	or	a,(OFST+1,sp)
5309  0d1f c7525a        	ld	21082,a
5310                     ; 1112 }
5313  0d22 84            	pop	a
5314  0d23 81            	ret
5351                     ; 1123 void TIM1_ForcedOC4Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
5351                     ; 1124 {
5352                     	switch	.text
5353  0d24               _TIM1_ForcedOC4Config:
5355  0d24 88            	push	a
5356       00000000      OFST:	set	0
5359                     ; 1126   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
5361  0d25 a150          	cp	a,#80
5362  0d27 2704          	jreq	L627
5363  0d29 a140          	cp	a,#64
5364  0d2b 2603          	jrne	L427
5365  0d2d               L627:
5366  0d2d 4f            	clr	a
5367  0d2e 2010          	jra	L037
5368  0d30               L427:
5369  0d30 ae0466        	ldw	x,#1126
5370  0d33 89            	pushw	x
5371  0d34 ae0000        	ldw	x,#0
5372  0d37 89            	pushw	x
5373  0d38 ae0000        	ldw	x,#L101
5374  0d3b cd0000        	call	_assert_failed
5376  0d3e 5b04          	addw	sp,#4
5377  0d40               L037:
5378                     ; 1129   TIM1->CCMR4  =  (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
5378                     ; 1130                             | (uint8_t)TIM1_ForcedAction);
5380  0d40 c6525b        	ld	a,21083
5381  0d43 a48f          	and	a,#143
5382  0d45 1a01          	or	a,(OFST+1,sp)
5383  0d47 c7525b        	ld	21083,a
5384                     ; 1131 }
5387  0d4a 84            	pop	a
5388  0d4b 81            	ret
5425                     ; 1139 void TIM1_ARRPreloadConfig(FunctionalState NewState)
5425                     ; 1140 {
5426                     	switch	.text
5427  0d4c               _TIM1_ARRPreloadConfig:
5429  0d4c 88            	push	a
5430       00000000      OFST:	set	0
5433                     ; 1142   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5435  0d4d 4d            	tnz	a
5436  0d4e 2704          	jreq	L637
5437  0d50 a101          	cp	a,#1
5438  0d52 2603          	jrne	L437
5439  0d54               L637:
5440  0d54 4f            	clr	a
5441  0d55 2010          	jra	L047
5442  0d57               L437:
5443  0d57 ae0476        	ldw	x,#1142
5444  0d5a 89            	pushw	x
5445  0d5b ae0000        	ldw	x,#0
5446  0d5e 89            	pushw	x
5447  0d5f ae0000        	ldw	x,#L101
5448  0d62 cd0000        	call	_assert_failed
5450  0d65 5b04          	addw	sp,#4
5451  0d67               L047:
5452                     ; 1145   if (NewState != DISABLE)
5454  0d67 0d01          	tnz	(OFST+1,sp)
5455  0d69 2706          	jreq	L7502
5456                     ; 1147     TIM1->CR1 |= TIM1_CR1_ARPE;
5458  0d6b 721e5250      	bset	21072,#7
5460  0d6f 2004          	jra	L1602
5461  0d71               L7502:
5462                     ; 1151     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_ARPE);
5464  0d71 721f5250      	bres	21072,#7
5465  0d75               L1602:
5466                     ; 1153 }
5469  0d75 84            	pop	a
5470  0d76 81            	ret
5506                     ; 1161 void TIM1_SelectCOM(FunctionalState NewState)
5506                     ; 1162 {
5507                     	switch	.text
5508  0d77               _TIM1_SelectCOM:
5510  0d77 88            	push	a
5511       00000000      OFST:	set	0
5514                     ; 1164   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5516  0d78 4d            	tnz	a
5517  0d79 2704          	jreq	L647
5518  0d7b a101          	cp	a,#1
5519  0d7d 2603          	jrne	L447
5520  0d7f               L647:
5521  0d7f 4f            	clr	a
5522  0d80 2010          	jra	L057
5523  0d82               L447:
5524  0d82 ae048c        	ldw	x,#1164
5525  0d85 89            	pushw	x
5526  0d86 ae0000        	ldw	x,#0
5527  0d89 89            	pushw	x
5528  0d8a ae0000        	ldw	x,#L101
5529  0d8d cd0000        	call	_assert_failed
5531  0d90 5b04          	addw	sp,#4
5532  0d92               L057:
5533                     ; 1167   if (NewState != DISABLE)
5535  0d92 0d01          	tnz	(OFST+1,sp)
5536  0d94 2706          	jreq	L1012
5537                     ; 1169     TIM1->CR2 |= TIM1_CR2_COMS;
5539  0d96 72145251      	bset	21073,#2
5541  0d9a 2004          	jra	L3012
5542  0d9c               L1012:
5543                     ; 1173     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_COMS);
5545  0d9c 72155251      	bres	21073,#2
5546  0da0               L3012:
5547                     ; 1175 }
5550  0da0 84            	pop	a
5551  0da1 81            	ret
5588                     ; 1183 void TIM1_CCPreloadControl(FunctionalState NewState)
5588                     ; 1184 {
5589                     	switch	.text
5590  0da2               _TIM1_CCPreloadControl:
5592  0da2 88            	push	a
5593       00000000      OFST:	set	0
5596                     ; 1186   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5598  0da3 4d            	tnz	a
5599  0da4 2704          	jreq	L657
5600  0da6 a101          	cp	a,#1
5601  0da8 2603          	jrne	L457
5602  0daa               L657:
5603  0daa 4f            	clr	a
5604  0dab 2010          	jra	L067
5605  0dad               L457:
5606  0dad ae04a2        	ldw	x,#1186
5607  0db0 89            	pushw	x
5608  0db1 ae0000        	ldw	x,#0
5609  0db4 89            	pushw	x
5610  0db5 ae0000        	ldw	x,#L101
5611  0db8 cd0000        	call	_assert_failed
5613  0dbb 5b04          	addw	sp,#4
5614  0dbd               L067:
5615                     ; 1189   if (NewState != DISABLE)
5617  0dbd 0d01          	tnz	(OFST+1,sp)
5618  0dbf 2706          	jreq	L3212
5619                     ; 1191     TIM1->CR2 |= TIM1_CR2_CCPC;
5621  0dc1 72105251      	bset	21073,#0
5623  0dc5 2004          	jra	L5212
5624  0dc7               L3212:
5625                     ; 1195     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_CCPC);
5627  0dc7 72115251      	bres	21073,#0
5628  0dcb               L5212:
5629                     ; 1197 }
5632  0dcb 84            	pop	a
5633  0dcc 81            	ret
5670                     ; 1205 void TIM1_OC1PreloadConfig(FunctionalState NewState)
5670                     ; 1206 {
5671                     	switch	.text
5672  0dcd               _TIM1_OC1PreloadConfig:
5674  0dcd 88            	push	a
5675       00000000      OFST:	set	0
5678                     ; 1208   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5680  0dce 4d            	tnz	a
5681  0dcf 2704          	jreq	L667
5682  0dd1 a101          	cp	a,#1
5683  0dd3 2603          	jrne	L467
5684  0dd5               L667:
5685  0dd5 4f            	clr	a
5686  0dd6 2010          	jra	L077
5687  0dd8               L467:
5688  0dd8 ae04b8        	ldw	x,#1208
5689  0ddb 89            	pushw	x
5690  0ddc ae0000        	ldw	x,#0
5691  0ddf 89            	pushw	x
5692  0de0 ae0000        	ldw	x,#L101
5693  0de3 cd0000        	call	_assert_failed
5695  0de6 5b04          	addw	sp,#4
5696  0de8               L077:
5697                     ; 1211   if (NewState != DISABLE)
5699  0de8 0d01          	tnz	(OFST+1,sp)
5700  0dea 2706          	jreq	L5412
5701                     ; 1213     TIM1->CCMR1 |= TIM1_CCMR_OCxPE;
5703  0dec 72165258      	bset	21080,#3
5705  0df0 2004          	jra	L7412
5706  0df2               L5412:
5707                     ; 1217     TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5709  0df2 72175258      	bres	21080,#3
5710  0df6               L7412:
5711                     ; 1219 }
5714  0df6 84            	pop	a
5715  0df7 81            	ret
5752                     ; 1227 void TIM1_OC2PreloadConfig(FunctionalState NewState)
5752                     ; 1228 {
5753                     	switch	.text
5754  0df8               _TIM1_OC2PreloadConfig:
5756  0df8 88            	push	a
5757       00000000      OFST:	set	0
5760                     ; 1230   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5762  0df9 4d            	tnz	a
5763  0dfa 2704          	jreq	L677
5764  0dfc a101          	cp	a,#1
5765  0dfe 2603          	jrne	L477
5766  0e00               L677:
5767  0e00 4f            	clr	a
5768  0e01 2010          	jra	L0001
5769  0e03               L477:
5770  0e03 ae04ce        	ldw	x,#1230
5771  0e06 89            	pushw	x
5772  0e07 ae0000        	ldw	x,#0
5773  0e0a 89            	pushw	x
5774  0e0b ae0000        	ldw	x,#L101
5775  0e0e cd0000        	call	_assert_failed
5777  0e11 5b04          	addw	sp,#4
5778  0e13               L0001:
5779                     ; 1233   if (NewState != DISABLE)
5781  0e13 0d01          	tnz	(OFST+1,sp)
5782  0e15 2706          	jreq	L7612
5783                     ; 1235     TIM1->CCMR2 |= TIM1_CCMR_OCxPE;
5785  0e17 72165259      	bset	21081,#3
5787  0e1b 2004          	jra	L1712
5788  0e1d               L7612:
5789                     ; 1239     TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5791  0e1d 72175259      	bres	21081,#3
5792  0e21               L1712:
5793                     ; 1241 }
5796  0e21 84            	pop	a
5797  0e22 81            	ret
5834                     ; 1249 void TIM1_OC3PreloadConfig(FunctionalState NewState)
5834                     ; 1250 {
5835                     	switch	.text
5836  0e23               _TIM1_OC3PreloadConfig:
5838  0e23 88            	push	a
5839       00000000      OFST:	set	0
5842                     ; 1252   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5844  0e24 4d            	tnz	a
5845  0e25 2704          	jreq	L6001
5846  0e27 a101          	cp	a,#1
5847  0e29 2603          	jrne	L4001
5848  0e2b               L6001:
5849  0e2b 4f            	clr	a
5850  0e2c 2010          	jra	L0101
5851  0e2e               L4001:
5852  0e2e ae04e4        	ldw	x,#1252
5853  0e31 89            	pushw	x
5854  0e32 ae0000        	ldw	x,#0
5855  0e35 89            	pushw	x
5856  0e36 ae0000        	ldw	x,#L101
5857  0e39 cd0000        	call	_assert_failed
5859  0e3c 5b04          	addw	sp,#4
5860  0e3e               L0101:
5861                     ; 1255   if (NewState != DISABLE)
5863  0e3e 0d01          	tnz	(OFST+1,sp)
5864  0e40 2706          	jreq	L1122
5865                     ; 1257     TIM1->CCMR3 |= TIM1_CCMR_OCxPE;
5867  0e42 7216525a      	bset	21082,#3
5869  0e46 2004          	jra	L3122
5870  0e48               L1122:
5871                     ; 1261     TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5873  0e48 7217525a      	bres	21082,#3
5874  0e4c               L3122:
5875                     ; 1263 }
5878  0e4c 84            	pop	a
5879  0e4d 81            	ret
5916                     ; 1271 void TIM1_OC4PreloadConfig(FunctionalState NewState)
5916                     ; 1272 {
5917                     	switch	.text
5918  0e4e               _TIM1_OC4PreloadConfig:
5920  0e4e 88            	push	a
5921       00000000      OFST:	set	0
5924                     ; 1274   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5926  0e4f 4d            	tnz	a
5927  0e50 2704          	jreq	L6101
5928  0e52 a101          	cp	a,#1
5929  0e54 2603          	jrne	L4101
5930  0e56               L6101:
5931  0e56 4f            	clr	a
5932  0e57 2010          	jra	L0201
5933  0e59               L4101:
5934  0e59 ae04fa        	ldw	x,#1274
5935  0e5c 89            	pushw	x
5936  0e5d ae0000        	ldw	x,#0
5937  0e60 89            	pushw	x
5938  0e61 ae0000        	ldw	x,#L101
5939  0e64 cd0000        	call	_assert_failed
5941  0e67 5b04          	addw	sp,#4
5942  0e69               L0201:
5943                     ; 1277   if (NewState != DISABLE)
5945  0e69 0d01          	tnz	(OFST+1,sp)
5946  0e6b 2706          	jreq	L3322
5947                     ; 1279     TIM1->CCMR4 |= TIM1_CCMR_OCxPE;
5949  0e6d 7216525b      	bset	21083,#3
5951  0e71 2004          	jra	L5322
5952  0e73               L3322:
5953                     ; 1283     TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5955  0e73 7217525b      	bres	21083,#3
5956  0e77               L5322:
5957                     ; 1285 }
5960  0e77 84            	pop	a
5961  0e78 81            	ret
5997                     ; 1293 void TIM1_OC1FastConfig(FunctionalState NewState)
5997                     ; 1294 {
5998                     	switch	.text
5999  0e79               _TIM1_OC1FastConfig:
6001  0e79 88            	push	a
6002       00000000      OFST:	set	0
6005                     ; 1296   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6007  0e7a 4d            	tnz	a
6008  0e7b 2704          	jreq	L6201
6009  0e7d a101          	cp	a,#1
6010  0e7f 2603          	jrne	L4201
6011  0e81               L6201:
6012  0e81 4f            	clr	a
6013  0e82 2010          	jra	L0301
6014  0e84               L4201:
6015  0e84 ae0510        	ldw	x,#1296
6016  0e87 89            	pushw	x
6017  0e88 ae0000        	ldw	x,#0
6018  0e8b 89            	pushw	x
6019  0e8c ae0000        	ldw	x,#L101
6020  0e8f cd0000        	call	_assert_failed
6022  0e92 5b04          	addw	sp,#4
6023  0e94               L0301:
6024                     ; 1299   if (NewState != DISABLE)
6026  0e94 0d01          	tnz	(OFST+1,sp)
6027  0e96 2706          	jreq	L5522
6028                     ; 1301     TIM1->CCMR1 |= TIM1_CCMR_OCxFE;
6030  0e98 72145258      	bset	21080,#2
6032  0e9c 2004          	jra	L7522
6033  0e9e               L5522:
6034                     ; 1305     TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxFE);
6036  0e9e 72155258      	bres	21080,#2
6037  0ea2               L7522:
6038                     ; 1307 }
6041  0ea2 84            	pop	a
6042  0ea3 81            	ret
6078                     ; 1315 void TIM1_OC2FastConfig(FunctionalState NewState)
6078                     ; 1316 {
6079                     	switch	.text
6080  0ea4               _TIM1_OC2FastConfig:
6082  0ea4 88            	push	a
6083       00000000      OFST:	set	0
6086                     ; 1318   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6088  0ea5 4d            	tnz	a
6089  0ea6 2704          	jreq	L6301
6090  0ea8 a101          	cp	a,#1
6091  0eaa 2603          	jrne	L4301
6092  0eac               L6301:
6093  0eac 4f            	clr	a
6094  0ead 2010          	jra	L0401
6095  0eaf               L4301:
6096  0eaf ae0526        	ldw	x,#1318
6097  0eb2 89            	pushw	x
6098  0eb3 ae0000        	ldw	x,#0
6099  0eb6 89            	pushw	x
6100  0eb7 ae0000        	ldw	x,#L101
6101  0eba cd0000        	call	_assert_failed
6103  0ebd 5b04          	addw	sp,#4
6104  0ebf               L0401:
6105                     ; 1321   if (NewState != DISABLE)
6107  0ebf 0d01          	tnz	(OFST+1,sp)
6108  0ec1 2706          	jreq	L7722
6109                     ; 1323     TIM1->CCMR2 |= TIM1_CCMR_OCxFE;
6111  0ec3 72145259      	bset	21081,#2
6113  0ec7 2004          	jra	L1032
6114  0ec9               L7722:
6115                     ; 1327     TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxFE);
6117  0ec9 72155259      	bres	21081,#2
6118  0ecd               L1032:
6119                     ; 1329 }
6122  0ecd 84            	pop	a
6123  0ece 81            	ret
6159                     ; 1337 void TIM1_OC3FastConfig(FunctionalState NewState)
6159                     ; 1338 {
6160                     	switch	.text
6161  0ecf               _TIM1_OC3FastConfig:
6163  0ecf 88            	push	a
6164       00000000      OFST:	set	0
6167                     ; 1340   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6169  0ed0 4d            	tnz	a
6170  0ed1 2704          	jreq	L6401
6171  0ed3 a101          	cp	a,#1
6172  0ed5 2603          	jrne	L4401
6173  0ed7               L6401:
6174  0ed7 4f            	clr	a
6175  0ed8 2010          	jra	L0501
6176  0eda               L4401:
6177  0eda ae053c        	ldw	x,#1340
6178  0edd 89            	pushw	x
6179  0ede ae0000        	ldw	x,#0
6180  0ee1 89            	pushw	x
6181  0ee2 ae0000        	ldw	x,#L101
6182  0ee5 cd0000        	call	_assert_failed
6184  0ee8 5b04          	addw	sp,#4
6185  0eea               L0501:
6186                     ; 1343   if (NewState != DISABLE)
6188  0eea 0d01          	tnz	(OFST+1,sp)
6189  0eec 2706          	jreq	L1232
6190                     ; 1345     TIM1->CCMR3 |= TIM1_CCMR_OCxFE;
6192  0eee 7214525a      	bset	21082,#2
6194  0ef2 2004          	jra	L3232
6195  0ef4               L1232:
6196                     ; 1349     TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxFE);
6198  0ef4 7215525a      	bres	21082,#2
6199  0ef8               L3232:
6200                     ; 1351 }
6203  0ef8 84            	pop	a
6204  0ef9 81            	ret
6240                     ; 1359 void TIM1_OC4FastConfig(FunctionalState NewState)
6240                     ; 1360 {
6241                     	switch	.text
6242  0efa               _TIM1_OC4FastConfig:
6244  0efa 88            	push	a
6245       00000000      OFST:	set	0
6248                     ; 1362   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6250  0efb 4d            	tnz	a
6251  0efc 2704          	jreq	L6501
6252  0efe a101          	cp	a,#1
6253  0f00 2603          	jrne	L4501
6254  0f02               L6501:
6255  0f02 4f            	clr	a
6256  0f03 2010          	jra	L0601
6257  0f05               L4501:
6258  0f05 ae0552        	ldw	x,#1362
6259  0f08 89            	pushw	x
6260  0f09 ae0000        	ldw	x,#0
6261  0f0c 89            	pushw	x
6262  0f0d ae0000        	ldw	x,#L101
6263  0f10 cd0000        	call	_assert_failed
6265  0f13 5b04          	addw	sp,#4
6266  0f15               L0601:
6267                     ; 1365   if (NewState != DISABLE)
6269  0f15 0d01          	tnz	(OFST+1,sp)
6270  0f17 2706          	jreq	L3432
6271                     ; 1367     TIM1->CCMR4 |= TIM1_CCMR_OCxFE;
6273  0f19 7214525b      	bset	21083,#2
6275  0f1d 2004          	jra	L5432
6276  0f1f               L3432:
6277                     ; 1371     TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxFE);
6279  0f1f 7215525b      	bres	21083,#2
6280  0f23               L5432:
6281                     ; 1373 }
6284  0f23 84            	pop	a
6285  0f24 81            	ret
6391                     ; 1389 void TIM1_GenerateEvent(TIM1_EventSource_TypeDef TIM1_EventSource)
6391                     ; 1390 {
6392                     	switch	.text
6393  0f25               _TIM1_GenerateEvent:
6395  0f25 88            	push	a
6396       00000000      OFST:	set	0
6399                     ; 1392   assert_param(IS_TIM1_EVENT_SOURCE_OK(TIM1_EventSource));
6401  0f26 4d            	tnz	a
6402  0f27 2703          	jreq	L4601
6403  0f29 4f            	clr	a
6404  0f2a 2010          	jra	L6601
6405  0f2c               L4601:
6406  0f2c ae0570        	ldw	x,#1392
6407  0f2f 89            	pushw	x
6408  0f30 ae0000        	ldw	x,#0
6409  0f33 89            	pushw	x
6410  0f34 ae0000        	ldw	x,#L101
6411  0f37 cd0000        	call	_assert_failed
6413  0f3a 5b04          	addw	sp,#4
6414  0f3c               L6601:
6415                     ; 1395   TIM1->EGR = (uint8_t)TIM1_EventSource;
6417  0f3c 7b01          	ld	a,(OFST+1,sp)
6418  0f3e c75257        	ld	21079,a
6419                     ; 1396 }
6422  0f41 84            	pop	a
6423  0f42 81            	ret
6460                     ; 1406 void TIM1_OC1PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6460                     ; 1407 {
6461                     	switch	.text
6462  0f43               _TIM1_OC1PolarityConfig:
6464  0f43 88            	push	a
6465       00000000      OFST:	set	0
6468                     ; 1409   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6470  0f44 4d            	tnz	a
6471  0f45 2704          	jreq	L4701
6472  0f47 a122          	cp	a,#34
6473  0f49 2603          	jrne	L2701
6474  0f4b               L4701:
6475  0f4b 4f            	clr	a
6476  0f4c 2010          	jra	L6701
6477  0f4e               L2701:
6478  0f4e ae0581        	ldw	x,#1409
6479  0f51 89            	pushw	x
6480  0f52 ae0000        	ldw	x,#0
6481  0f55 89            	pushw	x
6482  0f56 ae0000        	ldw	x,#L101
6483  0f59 cd0000        	call	_assert_failed
6485  0f5c 5b04          	addw	sp,#4
6486  0f5e               L6701:
6487                     ; 1412   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6489  0f5e 0d01          	tnz	(OFST+1,sp)
6490  0f60 2706          	jreq	L7242
6491                     ; 1414     TIM1->CCER1 |= TIM1_CCER1_CC1P;
6493  0f62 7212525c      	bset	21084,#1
6495  0f66 2004          	jra	L1342
6496  0f68               L7242:
6497                     ; 1418     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
6499  0f68 7213525c      	bres	21084,#1
6500  0f6c               L1342:
6501                     ; 1420 }
6504  0f6c 84            	pop	a
6505  0f6d 81            	ret
6542                     ; 1430 void TIM1_OC1NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6542                     ; 1431 {
6543                     	switch	.text
6544  0f6e               _TIM1_OC1NPolarityConfig:
6546  0f6e 88            	push	a
6547       00000000      OFST:	set	0
6550                     ; 1433   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6552  0f6f 4d            	tnz	a
6553  0f70 2704          	jreq	L4011
6554  0f72 a188          	cp	a,#136
6555  0f74 2603          	jrne	L2011
6556  0f76               L4011:
6557  0f76 4f            	clr	a
6558  0f77 2010          	jra	L6011
6559  0f79               L2011:
6560  0f79 ae0599        	ldw	x,#1433
6561  0f7c 89            	pushw	x
6562  0f7d ae0000        	ldw	x,#0
6563  0f80 89            	pushw	x
6564  0f81 ae0000        	ldw	x,#L101
6565  0f84 cd0000        	call	_assert_failed
6567  0f87 5b04          	addw	sp,#4
6568  0f89               L6011:
6569                     ; 1436   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6571  0f89 0d01          	tnz	(OFST+1,sp)
6572  0f8b 2706          	jreq	L1542
6573                     ; 1438     TIM1->CCER1 |= TIM1_CCER1_CC1NP;
6575  0f8d 7216525c      	bset	21084,#3
6577  0f91 2004          	jra	L3542
6578  0f93               L1542:
6579                     ; 1442     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NP);
6581  0f93 7217525c      	bres	21084,#3
6582  0f97               L3542:
6583                     ; 1444 }
6586  0f97 84            	pop	a
6587  0f98 81            	ret
6624                     ; 1454 void TIM1_OC2PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6624                     ; 1455 {
6625                     	switch	.text
6626  0f99               _TIM1_OC2PolarityConfig:
6628  0f99 88            	push	a
6629       00000000      OFST:	set	0
6632                     ; 1457   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6634  0f9a 4d            	tnz	a
6635  0f9b 2704          	jreq	L4111
6636  0f9d a122          	cp	a,#34
6637  0f9f 2603          	jrne	L2111
6638  0fa1               L4111:
6639  0fa1 4f            	clr	a
6640  0fa2 2010          	jra	L6111
6641  0fa4               L2111:
6642  0fa4 ae05b1        	ldw	x,#1457
6643  0fa7 89            	pushw	x
6644  0fa8 ae0000        	ldw	x,#0
6645  0fab 89            	pushw	x
6646  0fac ae0000        	ldw	x,#L101
6647  0faf cd0000        	call	_assert_failed
6649  0fb2 5b04          	addw	sp,#4
6650  0fb4               L6111:
6651                     ; 1460   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6653  0fb4 0d01          	tnz	(OFST+1,sp)
6654  0fb6 2706          	jreq	L3742
6655                     ; 1462     TIM1->CCER1 |= TIM1_CCER1_CC2P;
6657  0fb8 721a525c      	bset	21084,#5
6659  0fbc 2004          	jra	L5742
6660  0fbe               L3742:
6661                     ; 1466     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
6663  0fbe 721b525c      	bres	21084,#5
6664  0fc2               L5742:
6665                     ; 1468 }
6668  0fc2 84            	pop	a
6669  0fc3 81            	ret
6706                     ; 1478 void TIM1_OC2NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6706                     ; 1479 {
6707                     	switch	.text
6708  0fc4               _TIM1_OC2NPolarityConfig:
6710  0fc4 88            	push	a
6711       00000000      OFST:	set	0
6714                     ; 1481   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6716  0fc5 4d            	tnz	a
6717  0fc6 2704          	jreq	L4211
6718  0fc8 a188          	cp	a,#136
6719  0fca 2603          	jrne	L2211
6720  0fcc               L4211:
6721  0fcc 4f            	clr	a
6722  0fcd 2010          	jra	L6211
6723  0fcf               L2211:
6724  0fcf ae05c9        	ldw	x,#1481
6725  0fd2 89            	pushw	x
6726  0fd3 ae0000        	ldw	x,#0
6727  0fd6 89            	pushw	x
6728  0fd7 ae0000        	ldw	x,#L101
6729  0fda cd0000        	call	_assert_failed
6731  0fdd 5b04          	addw	sp,#4
6732  0fdf               L6211:
6733                     ; 1484   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6735  0fdf 0d01          	tnz	(OFST+1,sp)
6736  0fe1 2706          	jreq	L5152
6737                     ; 1486     TIM1->CCER1 |= TIM1_CCER1_CC2NP;
6739  0fe3 721e525c      	bset	21084,#7
6741  0fe7 2004          	jra	L7152
6742  0fe9               L5152:
6743                     ; 1490     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NP);
6745  0fe9 721f525c      	bres	21084,#7
6746  0fed               L7152:
6747                     ; 1492 }
6750  0fed 84            	pop	a
6751  0fee 81            	ret
6788                     ; 1502 void TIM1_OC3PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6788                     ; 1503 {
6789                     	switch	.text
6790  0fef               _TIM1_OC3PolarityConfig:
6792  0fef 88            	push	a
6793       00000000      OFST:	set	0
6796                     ; 1505   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6798  0ff0 4d            	tnz	a
6799  0ff1 2704          	jreq	L4311
6800  0ff3 a122          	cp	a,#34
6801  0ff5 2603          	jrne	L2311
6802  0ff7               L4311:
6803  0ff7 4f            	clr	a
6804  0ff8 2010          	jra	L6311
6805  0ffa               L2311:
6806  0ffa ae05e1        	ldw	x,#1505
6807  0ffd 89            	pushw	x
6808  0ffe ae0000        	ldw	x,#0
6809  1001 89            	pushw	x
6810  1002 ae0000        	ldw	x,#L101
6811  1005 cd0000        	call	_assert_failed
6813  1008 5b04          	addw	sp,#4
6814  100a               L6311:
6815                     ; 1508   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6817  100a 0d01          	tnz	(OFST+1,sp)
6818  100c 2706          	jreq	L7352
6819                     ; 1510     TIM1->CCER2 |= TIM1_CCER2_CC3P;
6821  100e 7212525d      	bset	21085,#1
6823  1012 2004          	jra	L1452
6824  1014               L7352:
6825                     ; 1514     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
6827  1014 7213525d      	bres	21085,#1
6828  1018               L1452:
6829                     ; 1516 }
6832  1018 84            	pop	a
6833  1019 81            	ret
6870                     ; 1527 void TIM1_OC3NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6870                     ; 1528 {
6871                     	switch	.text
6872  101a               _TIM1_OC3NPolarityConfig:
6874  101a 88            	push	a
6875       00000000      OFST:	set	0
6878                     ; 1530   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6880  101b 4d            	tnz	a
6881  101c 2704          	jreq	L4411
6882  101e a188          	cp	a,#136
6883  1020 2603          	jrne	L2411
6884  1022               L4411:
6885  1022 4f            	clr	a
6886  1023 2010          	jra	L6411
6887  1025               L2411:
6888  1025 ae05fa        	ldw	x,#1530
6889  1028 89            	pushw	x
6890  1029 ae0000        	ldw	x,#0
6891  102c 89            	pushw	x
6892  102d ae0000        	ldw	x,#L101
6893  1030 cd0000        	call	_assert_failed
6895  1033 5b04          	addw	sp,#4
6896  1035               L6411:
6897                     ; 1533   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6899  1035 0d01          	tnz	(OFST+1,sp)
6900  1037 2706          	jreq	L1652
6901                     ; 1535     TIM1->CCER2 |= TIM1_CCER2_CC3NP;
6903  1039 7216525d      	bset	21085,#3
6905  103d 2004          	jra	L3652
6906  103f               L1652:
6907                     ; 1539     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NP);
6909  103f 7217525d      	bres	21085,#3
6910  1043               L3652:
6911                     ; 1541 }
6914  1043 84            	pop	a
6915  1044 81            	ret
6952                     ; 1551 void TIM1_OC4PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6952                     ; 1552 {
6953                     	switch	.text
6954  1045               _TIM1_OC4PolarityConfig:
6956  1045 88            	push	a
6957       00000000      OFST:	set	0
6960                     ; 1554   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6962  1046 4d            	tnz	a
6963  1047 2704          	jreq	L4511
6964  1049 a122          	cp	a,#34
6965  104b 2603          	jrne	L2511
6966  104d               L4511:
6967  104d 4f            	clr	a
6968  104e 2010          	jra	L6511
6969  1050               L2511:
6970  1050 ae0612        	ldw	x,#1554
6971  1053 89            	pushw	x
6972  1054 ae0000        	ldw	x,#0
6973  1057 89            	pushw	x
6974  1058 ae0000        	ldw	x,#L101
6975  105b cd0000        	call	_assert_failed
6977  105e 5b04          	addw	sp,#4
6978  1060               L6511:
6979                     ; 1557   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6981  1060 0d01          	tnz	(OFST+1,sp)
6982  1062 2706          	jreq	L3062
6983                     ; 1559     TIM1->CCER2 |= TIM1_CCER2_CC4P;
6985  1064 721a525d      	bset	21085,#5
6987  1068 2004          	jra	L5062
6988  106a               L3062:
6989                     ; 1563     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
6991  106a 721b525d      	bres	21085,#5
6992  106e               L5062:
6993                     ; 1565 }
6996  106e 84            	pop	a
6997  106f 81            	ret
7043                     ; 1579 void TIM1_CCxCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
7043                     ; 1580 {
7044                     	switch	.text
7045  1070               _TIM1_CCxCmd:
7047  1070 89            	pushw	x
7048       00000000      OFST:	set	0
7051                     ; 1582   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
7053  1071 9e            	ld	a,xh
7054  1072 4d            	tnz	a
7055  1073 270f          	jreq	L4611
7056  1075 9e            	ld	a,xh
7057  1076 a101          	cp	a,#1
7058  1078 270a          	jreq	L4611
7059  107a 9e            	ld	a,xh
7060  107b a102          	cp	a,#2
7061  107d 2705          	jreq	L4611
7062  107f 9e            	ld	a,xh
7063  1080 a103          	cp	a,#3
7064  1082 2603          	jrne	L2611
7065  1084               L4611:
7066  1084 4f            	clr	a
7067  1085 2010          	jra	L6611
7068  1087               L2611:
7069  1087 ae062e        	ldw	x,#1582
7070  108a 89            	pushw	x
7071  108b ae0000        	ldw	x,#0
7072  108e 89            	pushw	x
7073  108f ae0000        	ldw	x,#L101
7074  1092 cd0000        	call	_assert_failed
7076  1095 5b04          	addw	sp,#4
7077  1097               L6611:
7078                     ; 1583   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
7080  1097 0d02          	tnz	(OFST+2,sp)
7081  1099 2706          	jreq	L2711
7082  109b 7b02          	ld	a,(OFST+2,sp)
7083  109d a101          	cp	a,#1
7084  109f 2603          	jrne	L0711
7085  10a1               L2711:
7086  10a1 4f            	clr	a
7087  10a2 2010          	jra	L4711
7088  10a4               L0711:
7089  10a4 ae062f        	ldw	x,#1583
7090  10a7 89            	pushw	x
7091  10a8 ae0000        	ldw	x,#0
7092  10ab 89            	pushw	x
7093  10ac ae0000        	ldw	x,#L101
7094  10af cd0000        	call	_assert_failed
7096  10b2 5b04          	addw	sp,#4
7097  10b4               L4711:
7098                     ; 1585   if (TIM1_Channel == TIM1_CHANNEL_1)
7100  10b4 0d01          	tnz	(OFST+1,sp)
7101  10b6 2610          	jrne	L1362
7102                     ; 1588     if (NewState != DISABLE)
7104  10b8 0d02          	tnz	(OFST+2,sp)
7105  10ba 2706          	jreq	L3362
7106                     ; 1590       TIM1->CCER1 |= TIM1_CCER1_CC1E;
7108  10bc 7210525c      	bset	21084,#0
7110  10c0 2040          	jra	L7362
7111  10c2               L3362:
7112                     ; 1594       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
7114  10c2 7211525c      	bres	21084,#0
7115  10c6 203a          	jra	L7362
7116  10c8               L1362:
7117                     ; 1598   else if (TIM1_Channel == TIM1_CHANNEL_2)
7119  10c8 7b01          	ld	a,(OFST+1,sp)
7120  10ca a101          	cp	a,#1
7121  10cc 2610          	jrne	L1462
7122                     ; 1601     if (NewState != DISABLE)
7124  10ce 0d02          	tnz	(OFST+2,sp)
7125  10d0 2706          	jreq	L3462
7126                     ; 1603       TIM1->CCER1 |= TIM1_CCER1_CC2E;
7128  10d2 7218525c      	bset	21084,#4
7130  10d6 202a          	jra	L7362
7131  10d8               L3462:
7132                     ; 1607       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
7134  10d8 7219525c      	bres	21084,#4
7135  10dc 2024          	jra	L7362
7136  10de               L1462:
7137                     ; 1610   else if (TIM1_Channel == TIM1_CHANNEL_3)
7139  10de 7b01          	ld	a,(OFST+1,sp)
7140  10e0 a102          	cp	a,#2
7141  10e2 2610          	jrne	L1562
7142                     ; 1613     if (NewState != DISABLE)
7144  10e4 0d02          	tnz	(OFST+2,sp)
7145  10e6 2706          	jreq	L3562
7146                     ; 1615       TIM1->CCER2 |= TIM1_CCER2_CC3E;
7148  10e8 7210525d      	bset	21085,#0
7150  10ec 2014          	jra	L7362
7151  10ee               L3562:
7152                     ; 1619       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
7154  10ee 7211525d      	bres	21085,#0
7155  10f2 200e          	jra	L7362
7156  10f4               L1562:
7157                     ; 1625     if (NewState != DISABLE)
7159  10f4 0d02          	tnz	(OFST+2,sp)
7160  10f6 2706          	jreq	L1662
7161                     ; 1627       TIM1->CCER2 |= TIM1_CCER2_CC4E;
7163  10f8 7218525d      	bset	21085,#4
7165  10fc 2004          	jra	L7362
7166  10fe               L1662:
7167                     ; 1631       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
7169  10fe 7219525d      	bres	21085,#4
7170  1102               L7362:
7171                     ; 1634 }
7174  1102 85            	popw	x
7175  1103 81            	ret
7221                     ; 1647 void TIM1_CCxNCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
7221                     ; 1648 {
7222                     	switch	.text
7223  1104               _TIM1_CCxNCmd:
7225  1104 89            	pushw	x
7226       00000000      OFST:	set	0
7229                     ; 1650   assert_param(IS_TIM1_COMPLEMENTARY_CHANNEL_OK(TIM1_Channel));
7231  1105 9e            	ld	a,xh
7232  1106 4d            	tnz	a
7233  1107 270a          	jreq	L2021
7234  1109 9e            	ld	a,xh
7235  110a a101          	cp	a,#1
7236  110c 2705          	jreq	L2021
7237  110e 9e            	ld	a,xh
7238  110f a102          	cp	a,#2
7239  1111 2603          	jrne	L0021
7240  1113               L2021:
7241  1113 4f            	clr	a
7242  1114 2010          	jra	L4021
7243  1116               L0021:
7244  1116 ae0672        	ldw	x,#1650
7245  1119 89            	pushw	x
7246  111a ae0000        	ldw	x,#0
7247  111d 89            	pushw	x
7248  111e ae0000        	ldw	x,#L101
7249  1121 cd0000        	call	_assert_failed
7251  1124 5b04          	addw	sp,#4
7252  1126               L4021:
7253                     ; 1651   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
7255  1126 0d02          	tnz	(OFST+2,sp)
7256  1128 2706          	jreq	L0121
7257  112a 7b02          	ld	a,(OFST+2,sp)
7258  112c a101          	cp	a,#1
7259  112e 2603          	jrne	L6021
7260  1130               L0121:
7261  1130 4f            	clr	a
7262  1131 2010          	jra	L2121
7263  1133               L6021:
7264  1133 ae0673        	ldw	x,#1651
7265  1136 89            	pushw	x
7266  1137 ae0000        	ldw	x,#0
7267  113a 89            	pushw	x
7268  113b ae0000        	ldw	x,#L101
7269  113e cd0000        	call	_assert_failed
7271  1141 5b04          	addw	sp,#4
7272  1143               L2121:
7273                     ; 1653   if (TIM1_Channel == TIM1_CHANNEL_1)
7275  1143 0d01          	tnz	(OFST+1,sp)
7276  1145 2610          	jrne	L7072
7277                     ; 1656     if (NewState != DISABLE)
7279  1147 0d02          	tnz	(OFST+2,sp)
7280  1149 2706          	jreq	L1172
7281                     ; 1658       TIM1->CCER1 |= TIM1_CCER1_CC1NE;
7283  114b 7214525c      	bset	21084,#2
7285  114f 202a          	jra	L5172
7286  1151               L1172:
7287                     ; 1662       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NE);
7289  1151 7215525c      	bres	21084,#2
7290  1155 2024          	jra	L5172
7291  1157               L7072:
7292                     ; 1665   else if (TIM1_Channel == TIM1_CHANNEL_2)
7294  1157 7b01          	ld	a,(OFST+1,sp)
7295  1159 a101          	cp	a,#1
7296  115b 2610          	jrne	L7172
7297                     ; 1668     if (NewState != DISABLE)
7299  115d 0d02          	tnz	(OFST+2,sp)
7300  115f 2706          	jreq	L1272
7301                     ; 1670       TIM1->CCER1 |= TIM1_CCER1_CC2NE;
7303  1161 721c525c      	bset	21084,#6
7305  1165 2014          	jra	L5172
7306  1167               L1272:
7307                     ; 1674       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NE);
7309  1167 721d525c      	bres	21084,#6
7310  116b 200e          	jra	L5172
7311  116d               L7172:
7312                     ; 1680     if (NewState != DISABLE)
7314  116d 0d02          	tnz	(OFST+2,sp)
7315  116f 2706          	jreq	L7272
7316                     ; 1682       TIM1->CCER2 |= TIM1_CCER2_CC3NE;
7318  1171 7214525d      	bset	21085,#2
7320  1175 2004          	jra	L5172
7321  1177               L7272:
7322                     ; 1686       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NE);
7324  1177 7215525d      	bres	21085,#2
7325  117b               L5172:
7326                     ; 1689 }
7329  117b 85            	popw	x
7330  117c 81            	ret
7376                     ; 1712 void TIM1_SelectOCxM(TIM1_Channel_TypeDef TIM1_Channel, TIM1_OCMode_TypeDef TIM1_OCMode)
7376                     ; 1713 {
7377                     	switch	.text
7378  117d               _TIM1_SelectOCxM:
7380  117d 89            	pushw	x
7381       00000000      OFST:	set	0
7384                     ; 1715   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
7386  117e 9e            	ld	a,xh
7387  117f 4d            	tnz	a
7388  1180 270f          	jreq	L0221
7389  1182 9e            	ld	a,xh
7390  1183 a101          	cp	a,#1
7391  1185 270a          	jreq	L0221
7392  1187 9e            	ld	a,xh
7393  1188 a102          	cp	a,#2
7394  118a 2705          	jreq	L0221
7395  118c 9e            	ld	a,xh
7396  118d a103          	cp	a,#3
7397  118f 2603          	jrne	L6121
7398  1191               L0221:
7399  1191 4f            	clr	a
7400  1192 2010          	jra	L2221
7401  1194               L6121:
7402  1194 ae06b3        	ldw	x,#1715
7403  1197 89            	pushw	x
7404  1198 ae0000        	ldw	x,#0
7405  119b 89            	pushw	x
7406  119c ae0000        	ldw	x,#L101
7407  119f cd0000        	call	_assert_failed
7409  11a2 5b04          	addw	sp,#4
7410  11a4               L2221:
7411                     ; 1716   assert_param(IS_TIM1_OCM_OK(TIM1_OCMode));
7413  11a4 0d02          	tnz	(OFST+2,sp)
7414  11a6 272a          	jreq	L6221
7415  11a8 7b02          	ld	a,(OFST+2,sp)
7416  11aa a110          	cp	a,#16
7417  11ac 2724          	jreq	L6221
7418  11ae 7b02          	ld	a,(OFST+2,sp)
7419  11b0 a120          	cp	a,#32
7420  11b2 271e          	jreq	L6221
7421  11b4 7b02          	ld	a,(OFST+2,sp)
7422  11b6 a130          	cp	a,#48
7423  11b8 2718          	jreq	L6221
7424  11ba 7b02          	ld	a,(OFST+2,sp)
7425  11bc a160          	cp	a,#96
7426  11be 2712          	jreq	L6221
7427  11c0 7b02          	ld	a,(OFST+2,sp)
7428  11c2 a170          	cp	a,#112
7429  11c4 270c          	jreq	L6221
7430  11c6 7b02          	ld	a,(OFST+2,sp)
7431  11c8 a150          	cp	a,#80
7432  11ca 2706          	jreq	L6221
7433  11cc 7b02          	ld	a,(OFST+2,sp)
7434  11ce a140          	cp	a,#64
7435  11d0 2603          	jrne	L4221
7436  11d2               L6221:
7437  11d2 4f            	clr	a
7438  11d3 2010          	jra	L0321
7439  11d5               L4221:
7440  11d5 ae06b4        	ldw	x,#1716
7441  11d8 89            	pushw	x
7442  11d9 ae0000        	ldw	x,#0
7443  11dc 89            	pushw	x
7444  11dd ae0000        	ldw	x,#L101
7445  11e0 cd0000        	call	_assert_failed
7447  11e3 5b04          	addw	sp,#4
7448  11e5               L0321:
7449                     ; 1718   if (TIM1_Channel == TIM1_CHANNEL_1)
7451  11e5 0d01          	tnz	(OFST+1,sp)
7452  11e7 2610          	jrne	L5572
7453                     ; 1721     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
7455  11e9 7211525c      	bres	21084,#0
7456                     ; 1724     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) 
7456                     ; 1725                             | (uint8_t)TIM1_OCMode);
7458  11ed c65258        	ld	a,21080
7459  11f0 a48f          	and	a,#143
7460  11f2 1a02          	or	a,(OFST+2,sp)
7461  11f4 c75258        	ld	21080,a
7463  11f7 203a          	jra	L7572
7464  11f9               L5572:
7465                     ; 1727   else if (TIM1_Channel == TIM1_CHANNEL_2)
7467  11f9 7b01          	ld	a,(OFST+1,sp)
7468  11fb a101          	cp	a,#1
7469  11fd 2610          	jrne	L1672
7470                     ; 1730     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
7472  11ff 7219525c      	bres	21084,#4
7473                     ; 1733     TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
7473                     ; 1734                             | (uint8_t)TIM1_OCMode);
7475  1203 c65259        	ld	a,21081
7476  1206 a48f          	and	a,#143
7477  1208 1a02          	or	a,(OFST+2,sp)
7478  120a c75259        	ld	21081,a
7480  120d 2024          	jra	L7572
7481  120f               L1672:
7482                     ; 1736   else if (TIM1_Channel == TIM1_CHANNEL_3)
7484  120f 7b01          	ld	a,(OFST+1,sp)
7485  1211 a102          	cp	a,#2
7486  1213 2610          	jrne	L5672
7487                     ; 1739     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
7489  1215 7211525d      	bres	21085,#0
7490                     ; 1742     TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) 
7490                     ; 1743                             | (uint8_t)TIM1_OCMode);
7492  1219 c6525a        	ld	a,21082
7493  121c a48f          	and	a,#143
7494  121e 1a02          	or	a,(OFST+2,sp)
7495  1220 c7525a        	ld	21082,a
7497  1223 200e          	jra	L7572
7498  1225               L5672:
7499                     ; 1748     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
7501  1225 7219525d      	bres	21085,#4
7502                     ; 1751     TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
7502                     ; 1752                             | (uint8_t)TIM1_OCMode);
7504  1229 c6525b        	ld	a,21083
7505  122c a48f          	and	a,#143
7506  122e 1a02          	or	a,(OFST+2,sp)
7507  1230 c7525b        	ld	21083,a
7508  1233               L7572:
7509                     ; 1754 }
7512  1233 85            	popw	x
7513  1234 81            	ret
7547                     ; 1762 void TIM1_SetCounter(uint16_t Counter)
7547                     ; 1763 {
7548                     	switch	.text
7549  1235               _TIM1_SetCounter:
7553                     ; 1765   TIM1->CNTRH = (uint8_t)(Counter >> 8);
7555  1235 9e            	ld	a,xh
7556  1236 c7525e        	ld	21086,a
7557                     ; 1766   TIM1->CNTRL = (uint8_t)(Counter);
7559  1239 9f            	ld	a,xl
7560  123a c7525f        	ld	21087,a
7561                     ; 1767 }
7564  123d 81            	ret
7598                     ; 1775 void TIM1_SetAutoreload(uint16_t Autoreload)
7598                     ; 1776 {
7599                     	switch	.text
7600  123e               _TIM1_SetAutoreload:
7604                     ; 1778   TIM1->ARRH = (uint8_t)(Autoreload >> 8);
7606  123e 9e            	ld	a,xh
7607  123f c75262        	ld	21090,a
7608                     ; 1779   TIM1->ARRL = (uint8_t)(Autoreload);
7610  1242 9f            	ld	a,xl
7611  1243 c75263        	ld	21091,a
7612                     ; 1780  }
7615  1246 81            	ret
7649                     ; 1788 void TIM1_SetCompare1(uint16_t Compare1)
7649                     ; 1789 {
7650                     	switch	.text
7651  1247               _TIM1_SetCompare1:
7655                     ; 1791   TIM1->CCR1H = (uint8_t)(Compare1 >> 8);
7657  1247 9e            	ld	a,xh
7658  1248 c75265        	ld	21093,a
7659                     ; 1792   TIM1->CCR1L = (uint8_t)(Compare1);
7661  124b 9f            	ld	a,xl
7662  124c c75266        	ld	21094,a
7663                     ; 1793 }
7666  124f 81            	ret
7700                     ; 1801 void TIM1_SetCompare2(uint16_t Compare2)
7700                     ; 1802 {
7701                     	switch	.text
7702  1250               _TIM1_SetCompare2:
7706                     ; 1804   TIM1->CCR2H = (uint8_t)(Compare2 >> 8);
7708  1250 9e            	ld	a,xh
7709  1251 c75267        	ld	21095,a
7710                     ; 1805   TIM1->CCR2L = (uint8_t)(Compare2);
7712  1254 9f            	ld	a,xl
7713  1255 c75268        	ld	21096,a
7714                     ; 1806 }
7717  1258 81            	ret
7751                     ; 1814 void TIM1_SetCompare3(uint16_t Compare3)
7751                     ; 1815 {
7752                     	switch	.text
7753  1259               _TIM1_SetCompare3:
7757                     ; 1817   TIM1->CCR3H = (uint8_t)(Compare3 >> 8);
7759  1259 9e            	ld	a,xh
7760  125a c75269        	ld	21097,a
7761                     ; 1818   TIM1->CCR3L = (uint8_t)(Compare3);
7763  125d 9f            	ld	a,xl
7764  125e c7526a        	ld	21098,a
7765                     ; 1819 }
7768  1261 81            	ret
7802                     ; 1827 void TIM1_SetCompare4(uint16_t Compare4)
7802                     ; 1828 {
7803                     	switch	.text
7804  1262               _TIM1_SetCompare4:
7808                     ; 1830   TIM1->CCR4H = (uint8_t)(Compare4 >> 8);
7810  1262 9e            	ld	a,xh
7811  1263 c7526b        	ld	21099,a
7812                     ; 1831   TIM1->CCR4L = (uint8_t)(Compare4);
7814  1266 9f            	ld	a,xl
7815  1267 c7526c        	ld	21100,a
7816                     ; 1832 }
7819  126a 81            	ret
7856                     ; 1844 void TIM1_SetIC1Prescaler(TIM1_ICPSC_TypeDef TIM1_IC1Prescaler)
7856                     ; 1845 {
7857                     	switch	.text
7858  126b               _TIM1_SetIC1Prescaler:
7860  126b 88            	push	a
7861       00000000      OFST:	set	0
7864                     ; 1847   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC1Prescaler));
7866  126c 4d            	tnz	a
7867  126d 270c          	jreq	L2521
7868  126f a104          	cp	a,#4
7869  1271 2708          	jreq	L2521
7870  1273 a108          	cp	a,#8
7871  1275 2704          	jreq	L2521
7872  1277 a10c          	cp	a,#12
7873  1279 2603          	jrne	L0521
7874  127b               L2521:
7875  127b 4f            	clr	a
7876  127c 2010          	jra	L4521
7877  127e               L0521:
7878  127e ae0737        	ldw	x,#1847
7879  1281 89            	pushw	x
7880  1282 ae0000        	ldw	x,#0
7881  1285 89            	pushw	x
7882  1286 ae0000        	ldw	x,#L101
7883  1289 cd0000        	call	_assert_failed
7885  128c 5b04          	addw	sp,#4
7886  128e               L4521:
7887                     ; 1850   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_ICxPSC)) 
7887                     ; 1851                           | (uint8_t)TIM1_IC1Prescaler);
7889  128e c65258        	ld	a,21080
7890  1291 a4f3          	and	a,#243
7891  1293 1a01          	or	a,(OFST+1,sp)
7892  1295 c75258        	ld	21080,a
7893                     ; 1852 }
7896  1298 84            	pop	a
7897  1299 81            	ret
7934                     ; 1864 void TIM1_SetIC2Prescaler(TIM1_ICPSC_TypeDef TIM1_IC2Prescaler)
7934                     ; 1865 {
7935                     	switch	.text
7936  129a               _TIM1_SetIC2Prescaler:
7938  129a 88            	push	a
7939       00000000      OFST:	set	0
7942                     ; 1868   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC2Prescaler));
7944  129b 4d            	tnz	a
7945  129c 270c          	jreq	L2621
7946  129e a104          	cp	a,#4
7947  12a0 2708          	jreq	L2621
7948  12a2 a108          	cp	a,#8
7949  12a4 2704          	jreq	L2621
7950  12a6 a10c          	cp	a,#12
7951  12a8 2603          	jrne	L0621
7952  12aa               L2621:
7953  12aa 4f            	clr	a
7954  12ab 2010          	jra	L4621
7955  12ad               L0621:
7956  12ad ae074c        	ldw	x,#1868
7957  12b0 89            	pushw	x
7958  12b1 ae0000        	ldw	x,#0
7959  12b4 89            	pushw	x
7960  12b5 ae0000        	ldw	x,#L101
7961  12b8 cd0000        	call	_assert_failed
7963  12bb 5b04          	addw	sp,#4
7964  12bd               L4621:
7965                     ; 1871   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_ICxPSC))
7965                     ; 1872                           | (uint8_t)TIM1_IC2Prescaler);
7967  12bd c65259        	ld	a,21081
7968  12c0 a4f3          	and	a,#243
7969  12c2 1a01          	or	a,(OFST+1,sp)
7970  12c4 c75259        	ld	21081,a
7971                     ; 1873 }
7974  12c7 84            	pop	a
7975  12c8 81            	ret
8012                     ; 1885 void TIM1_SetIC3Prescaler(TIM1_ICPSC_TypeDef TIM1_IC3Prescaler)
8012                     ; 1886 {
8013                     	switch	.text
8014  12c9               _TIM1_SetIC3Prescaler:
8016  12c9 88            	push	a
8017       00000000      OFST:	set	0
8020                     ; 1889   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC3Prescaler));
8022  12ca 4d            	tnz	a
8023  12cb 270c          	jreq	L2721
8024  12cd a104          	cp	a,#4
8025  12cf 2708          	jreq	L2721
8026  12d1 a108          	cp	a,#8
8027  12d3 2704          	jreq	L2721
8028  12d5 a10c          	cp	a,#12
8029  12d7 2603          	jrne	L0721
8030  12d9               L2721:
8031  12d9 4f            	clr	a
8032  12da 2010          	jra	L4721
8033  12dc               L0721:
8034  12dc ae0761        	ldw	x,#1889
8035  12df 89            	pushw	x
8036  12e0 ae0000        	ldw	x,#0
8037  12e3 89            	pushw	x
8038  12e4 ae0000        	ldw	x,#L101
8039  12e7 cd0000        	call	_assert_failed
8041  12ea 5b04          	addw	sp,#4
8042  12ec               L4721:
8043                     ; 1892   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_ICxPSC)) | 
8043                     ; 1893                           (uint8_t)TIM1_IC3Prescaler);
8045  12ec c6525a        	ld	a,21082
8046  12ef a4f3          	and	a,#243
8047  12f1 1a01          	or	a,(OFST+1,sp)
8048  12f3 c7525a        	ld	21082,a
8049                     ; 1894 }
8052  12f6 84            	pop	a
8053  12f7 81            	ret
8090                     ; 1906 void TIM1_SetIC4Prescaler(TIM1_ICPSC_TypeDef TIM1_IC4Prescaler)
8090                     ; 1907 {
8091                     	switch	.text
8092  12f8               _TIM1_SetIC4Prescaler:
8094  12f8 88            	push	a
8095       00000000      OFST:	set	0
8098                     ; 1910   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC4Prescaler));
8100  12f9 4d            	tnz	a
8101  12fa 270c          	jreq	L2031
8102  12fc a104          	cp	a,#4
8103  12fe 2708          	jreq	L2031
8104  1300 a108          	cp	a,#8
8105  1302 2704          	jreq	L2031
8106  1304 a10c          	cp	a,#12
8107  1306 2603          	jrne	L0031
8108  1308               L2031:
8109  1308 4f            	clr	a
8110  1309 2010          	jra	L4031
8111  130b               L0031:
8112  130b ae0776        	ldw	x,#1910
8113  130e 89            	pushw	x
8114  130f ae0000        	ldw	x,#0
8115  1312 89            	pushw	x
8116  1313 ae0000        	ldw	x,#L101
8117  1316 cd0000        	call	_assert_failed
8119  1319 5b04          	addw	sp,#4
8120  131b               L4031:
8121                     ; 1913   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_ICxPSC)) |
8121                     ; 1914                           (uint8_t)TIM1_IC4Prescaler);
8123  131b c6525b        	ld	a,21083
8124  131e a4f3          	and	a,#243
8125  1320 1a01          	or	a,(OFST+1,sp)
8126  1322 c7525b        	ld	21083,a
8127                     ; 1915 }
8130  1325 84            	pop	a
8131  1326 81            	ret
8183                     ; 1922 uint16_t TIM1_GetCapture1(void)
8183                     ; 1923 {
8184                     	switch	.text
8185  1327               _TIM1_GetCapture1:
8187  1327 5204          	subw	sp,#4
8188       00000004      OFST:	set	4
8191                     ; 1926   uint16_t tmpccr1 = 0;
8193                     ; 1927   uint8_t tmpccr1l=0, tmpccr1h=0;
8197                     ; 1929   tmpccr1h = TIM1->CCR1H;
8199  1329 c65265        	ld	a,21093
8200  132c 6b02          	ld	(OFST-2,sp),a
8202                     ; 1930   tmpccr1l = TIM1->CCR1L;
8204  132e c65266        	ld	a,21094
8205  1331 6b01          	ld	(OFST-3,sp),a
8207                     ; 1932   tmpccr1 = (uint16_t)(tmpccr1l);
8209  1333 7b01          	ld	a,(OFST-3,sp)
8210  1335 5f            	clrw	x
8211  1336 97            	ld	xl,a
8212  1337 1f03          	ldw	(OFST-1,sp),x
8214                     ; 1933   tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
8216  1339 7b02          	ld	a,(OFST-2,sp)
8217  133b 5f            	clrw	x
8218  133c 97            	ld	xl,a
8219  133d 4f            	clr	a
8220  133e 02            	rlwa	x,a
8221  133f 01            	rrwa	x,a
8222  1340 1a04          	or	a,(OFST+0,sp)
8223  1342 01            	rrwa	x,a
8224  1343 1a03          	or	a,(OFST-1,sp)
8225  1345 01            	rrwa	x,a
8226  1346 1f03          	ldw	(OFST-1,sp),x
8228                     ; 1935   return (uint16_t)tmpccr1;
8230  1348 1e03          	ldw	x,(OFST-1,sp)
8233  134a 5b04          	addw	sp,#4
8234  134c 81            	ret
8286                     ; 1943 uint16_t TIM1_GetCapture2(void)
8286                     ; 1944 {
8287                     	switch	.text
8288  134d               _TIM1_GetCapture2:
8290  134d 5204          	subw	sp,#4
8291       00000004      OFST:	set	4
8294                     ; 1947   uint16_t tmpccr2 = 0;
8296                     ; 1948   uint8_t tmpccr2l=0, tmpccr2h=0;
8300                     ; 1950   tmpccr2h = TIM1->CCR2H;
8302  134f c65267        	ld	a,21095
8303  1352 6b02          	ld	(OFST-2,sp),a
8305                     ; 1951   tmpccr2l = TIM1->CCR2L;
8307  1354 c65268        	ld	a,21096
8308  1357 6b01          	ld	(OFST-3,sp),a
8310                     ; 1953   tmpccr2 = (uint16_t)(tmpccr2l);
8312  1359 7b01          	ld	a,(OFST-3,sp)
8313  135b 5f            	clrw	x
8314  135c 97            	ld	xl,a
8315  135d 1f03          	ldw	(OFST-1,sp),x
8317                     ; 1954   tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
8319  135f 7b02          	ld	a,(OFST-2,sp)
8320  1361 5f            	clrw	x
8321  1362 97            	ld	xl,a
8322  1363 4f            	clr	a
8323  1364 02            	rlwa	x,a
8324  1365 01            	rrwa	x,a
8325  1366 1a04          	or	a,(OFST+0,sp)
8326  1368 01            	rrwa	x,a
8327  1369 1a03          	or	a,(OFST-1,sp)
8328  136b 01            	rrwa	x,a
8329  136c 1f03          	ldw	(OFST-1,sp),x
8331                     ; 1956   return (uint16_t)tmpccr2;
8333  136e 1e03          	ldw	x,(OFST-1,sp)
8336  1370 5b04          	addw	sp,#4
8337  1372 81            	ret
8389                     ; 1964 uint16_t TIM1_GetCapture3(void)
8389                     ; 1965 {
8390                     	switch	.text
8391  1373               _TIM1_GetCapture3:
8393  1373 5204          	subw	sp,#4
8394       00000004      OFST:	set	4
8397                     ; 1967   uint16_t tmpccr3 = 0;
8399                     ; 1968   uint8_t tmpccr3l=0, tmpccr3h=0;
8403                     ; 1970   tmpccr3h = TIM1->CCR3H;
8405  1375 c65269        	ld	a,21097
8406  1378 6b02          	ld	(OFST-2,sp),a
8408                     ; 1971   tmpccr3l = TIM1->CCR3L;
8410  137a c6526a        	ld	a,21098
8411  137d 6b01          	ld	(OFST-3,sp),a
8413                     ; 1973   tmpccr3 = (uint16_t)(tmpccr3l);
8415  137f 7b01          	ld	a,(OFST-3,sp)
8416  1381 5f            	clrw	x
8417  1382 97            	ld	xl,a
8418  1383 1f03          	ldw	(OFST-1,sp),x
8420                     ; 1974   tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
8422  1385 7b02          	ld	a,(OFST-2,sp)
8423  1387 5f            	clrw	x
8424  1388 97            	ld	xl,a
8425  1389 4f            	clr	a
8426  138a 02            	rlwa	x,a
8427  138b 01            	rrwa	x,a
8428  138c 1a04          	or	a,(OFST+0,sp)
8429  138e 01            	rrwa	x,a
8430  138f 1a03          	or	a,(OFST-1,sp)
8431  1391 01            	rrwa	x,a
8432  1392 1f03          	ldw	(OFST-1,sp),x
8434                     ; 1976   return (uint16_t)tmpccr3;
8436  1394 1e03          	ldw	x,(OFST-1,sp)
8439  1396 5b04          	addw	sp,#4
8440  1398 81            	ret
8492                     ; 1984 uint16_t TIM1_GetCapture4(void)
8492                     ; 1985 {
8493                     	switch	.text
8494  1399               _TIM1_GetCapture4:
8496  1399 5204          	subw	sp,#4
8497       00000004      OFST:	set	4
8500                     ; 1987   uint16_t tmpccr4 = 0;
8502                     ; 1988   uint8_t tmpccr4l=0, tmpccr4h=0;
8506                     ; 1990   tmpccr4h = TIM1->CCR4H;
8508  139b c6526b        	ld	a,21099
8509  139e 6b02          	ld	(OFST-2,sp),a
8511                     ; 1991   tmpccr4l = TIM1->CCR4L;
8513  13a0 c6526c        	ld	a,21100
8514  13a3 6b01          	ld	(OFST-3,sp),a
8516                     ; 1993   tmpccr4 = (uint16_t)(tmpccr4l);
8518  13a5 7b01          	ld	a,(OFST-3,sp)
8519  13a7 5f            	clrw	x
8520  13a8 97            	ld	xl,a
8521  13a9 1f03          	ldw	(OFST-1,sp),x
8523                     ; 1994   tmpccr4 |= (uint16_t)((uint16_t)tmpccr4h << 8);
8525  13ab 7b02          	ld	a,(OFST-2,sp)
8526  13ad 5f            	clrw	x
8527  13ae 97            	ld	xl,a
8528  13af 4f            	clr	a
8529  13b0 02            	rlwa	x,a
8530  13b1 01            	rrwa	x,a
8531  13b2 1a04          	or	a,(OFST+0,sp)
8532  13b4 01            	rrwa	x,a
8533  13b5 1a03          	or	a,(OFST-1,sp)
8534  13b7 01            	rrwa	x,a
8535  13b8 1f03          	ldw	(OFST-1,sp),x
8537                     ; 1996   return (uint16_t)tmpccr4;
8539  13ba 1e03          	ldw	x,(OFST-1,sp)
8542  13bc 5b04          	addw	sp,#4
8543  13be 81            	ret
8577                     ; 2004 uint16_t TIM1_GetCounter(void)
8577                     ; 2005 {
8578                     	switch	.text
8579  13bf               _TIM1_GetCounter:
8581  13bf 89            	pushw	x
8582       00000002      OFST:	set	2
8585                     ; 2006   uint16_t tmpcntr = 0;
8587                     ; 2008   tmpcntr = ((uint16_t)TIM1->CNTRH << 8);
8589  13c0 c6525e        	ld	a,21086
8590  13c3 5f            	clrw	x
8591  13c4 97            	ld	xl,a
8592  13c5 4f            	clr	a
8593  13c6 02            	rlwa	x,a
8594  13c7 1f01          	ldw	(OFST-1,sp),x
8596                     ; 2011   return (uint16_t)(tmpcntr | (uint16_t)(TIM1->CNTRL));
8598  13c9 c6525f        	ld	a,21087
8599  13cc 5f            	clrw	x
8600  13cd 97            	ld	xl,a
8601  13ce 01            	rrwa	x,a
8602  13cf 1a02          	or	a,(OFST+0,sp)
8603  13d1 01            	rrwa	x,a
8604  13d2 1a01          	or	a,(OFST-1,sp)
8605  13d4 01            	rrwa	x,a
8608  13d5 5b02          	addw	sp,#2
8609  13d7 81            	ret
8643                     ; 2019 uint16_t TIM1_GetPrescaler(void)
8643                     ; 2020 {
8644                     	switch	.text
8645  13d8               _TIM1_GetPrescaler:
8647  13d8 89            	pushw	x
8648       00000002      OFST:	set	2
8651                     ; 2021   uint16_t temp = 0;
8653                     ; 2023   temp = ((uint16_t)TIM1->PSCRH << 8);
8655  13d9 c65260        	ld	a,21088
8656  13dc 5f            	clrw	x
8657  13dd 97            	ld	xl,a
8658  13de 4f            	clr	a
8659  13df 02            	rlwa	x,a
8660  13e0 1f01          	ldw	(OFST-1,sp),x
8662                     ; 2026   return (uint16_t)( temp | (uint16_t)(TIM1->PSCRL));
8664  13e2 c65261        	ld	a,21089
8665  13e5 5f            	clrw	x
8666  13e6 97            	ld	xl,a
8667  13e7 01            	rrwa	x,a
8668  13e8 1a02          	or	a,(OFST+0,sp)
8669  13ea 01            	rrwa	x,a
8670  13eb 1a01          	or	a,(OFST-1,sp)
8671  13ed 01            	rrwa	x,a
8674  13ee 5b02          	addw	sp,#2
8675  13f0 81            	ret
8850                     ; 2047 FlagStatus TIM1_GetFlagStatus(TIM1_FLAG_TypeDef TIM1_FLAG)
8850                     ; 2048 {
8851                     	switch	.text
8852  13f1               _TIM1_GetFlagStatus:
8854  13f1 89            	pushw	x
8855  13f2 89            	pushw	x
8856       00000002      OFST:	set	2
8859                     ; 2049   FlagStatus bitstatus = RESET;
8861                     ; 2050   uint8_t tim1_flag_l = 0, tim1_flag_h = 0;
8865                     ; 2053   assert_param(IS_TIM1_GET_FLAG_OK(TIM1_FLAG));
8867  13f3 a30001        	cpw	x,#1
8868  13f6 2737          	jreq	L6231
8869  13f8 a30002        	cpw	x,#2
8870  13fb 2732          	jreq	L6231
8871  13fd a30004        	cpw	x,#4
8872  1400 272d          	jreq	L6231
8873  1402 a30008        	cpw	x,#8
8874  1405 2728          	jreq	L6231
8875  1407 a30010        	cpw	x,#16
8876  140a 2723          	jreq	L6231
8877  140c a30020        	cpw	x,#32
8878  140f 271e          	jreq	L6231
8879  1411 a30040        	cpw	x,#64
8880  1414 2719          	jreq	L6231
8881  1416 a30080        	cpw	x,#128
8882  1419 2714          	jreq	L6231
8883  141b a30200        	cpw	x,#512
8884  141e 270f          	jreq	L6231
8885  1420 a30400        	cpw	x,#1024
8886  1423 270a          	jreq	L6231
8887  1425 a30800        	cpw	x,#2048
8888  1428 2705          	jreq	L6231
8889  142a a31000        	cpw	x,#4096
8890  142d 2603          	jrne	L4231
8891  142f               L6231:
8892  142f 4f            	clr	a
8893  1430 2010          	jra	L0331
8894  1432               L4231:
8895  1432 ae0805        	ldw	x,#2053
8896  1435 89            	pushw	x
8897  1436 ae0000        	ldw	x,#0
8898  1439 89            	pushw	x
8899  143a ae0000        	ldw	x,#L101
8900  143d cd0000        	call	_assert_failed
8902  1440 5b04          	addw	sp,#4
8903  1442               L0331:
8904                     ; 2055   tim1_flag_l = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_FLAG);
8906  1442 c65255        	ld	a,21077
8907  1445 1404          	and	a,(OFST+2,sp)
8908  1447 6b01          	ld	(OFST-1,sp),a
8910                     ; 2056   tim1_flag_h = (uint8_t)((uint16_t)TIM1_FLAG >> 8);
8912  1449 7b03          	ld	a,(OFST+1,sp)
8913  144b 6b02          	ld	(OFST+0,sp),a
8915                     ; 2058   if ((tim1_flag_l | (uint8_t)(TIM1->SR2 & tim1_flag_h)) != 0)
8917  144d c65256        	ld	a,21078
8918  1450 1402          	and	a,(OFST+0,sp)
8919  1452 1a01          	or	a,(OFST-1,sp)
8920  1454 2706          	jreq	L7643
8921                     ; 2060     bitstatus = SET;
8923  1456 a601          	ld	a,#1
8924  1458 6b02          	ld	(OFST+0,sp),a
8927  145a 2002          	jra	L1743
8928  145c               L7643:
8929                     ; 2064     bitstatus = RESET;
8931  145c 0f02          	clr	(OFST+0,sp)
8933  145e               L1743:
8934                     ; 2066   return (FlagStatus)(bitstatus);
8936  145e 7b02          	ld	a,(OFST+0,sp)
8939  1460 5b04          	addw	sp,#4
8940  1462 81            	ret
8976                     ; 2087 void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
8976                     ; 2088 {
8977                     	switch	.text
8978  1463               _TIM1_ClearFlag:
8980  1463 89            	pushw	x
8981       00000000      OFST:	set	0
8984                     ; 2090   assert_param(IS_TIM1_CLEAR_FLAG_OK(TIM1_FLAG));
8986  1464 01            	rrwa	x,a
8987  1465 9f            	ld	a,xl
8988  1466 a4e1          	and	a,#225
8989  1468 97            	ld	xl,a
8990  1469 4f            	clr	a
8991  146a 02            	rlwa	x,a
8992  146b 5d            	tnzw	x
8993  146c 2607          	jrne	L4331
8994  146e 1e01          	ldw	x,(OFST+1,sp)
8995  1470 2703          	jreq	L4331
8996  1472 4f            	clr	a
8997  1473 2010          	jra	L6331
8998  1475               L4331:
8999  1475 ae082a        	ldw	x,#2090
9000  1478 89            	pushw	x
9001  1479 ae0000        	ldw	x,#0
9002  147c 89            	pushw	x
9003  147d ae0000        	ldw	x,#L101
9004  1480 cd0000        	call	_assert_failed
9006  1483 5b04          	addw	sp,#4
9007  1485               L6331:
9008                     ; 2093   TIM1->SR1 = (uint8_t)(~(uint8_t)(TIM1_FLAG));
9010  1485 7b02          	ld	a,(OFST+2,sp)
9011  1487 43            	cpl	a
9012  1488 c75255        	ld	21077,a
9013                     ; 2094   TIM1->SR2 = (uint8_t)((uint8_t)(~((uint8_t)((uint16_t)TIM1_FLAG >> 8))) & 
9013                     ; 2095                         (uint8_t)0x1E);
9015  148b 7b01          	ld	a,(OFST+1,sp)
9016  148d 43            	cpl	a
9017  148e a41e          	and	a,#30
9018  1490 c75256        	ld	21078,a
9019                     ; 2096 }
9022  1493 85            	popw	x
9023  1494 81            	ret
9088                     ; 2112 ITStatus TIM1_GetITStatus(TIM1_IT_TypeDef TIM1_IT)
9088                     ; 2113 {
9089                     	switch	.text
9090  1495               _TIM1_GetITStatus:
9092  1495 88            	push	a
9093  1496 89            	pushw	x
9094       00000002      OFST:	set	2
9097                     ; 2114   ITStatus bitstatus = RESET;
9099                     ; 2115   uint8_t TIM1_itStatus = 0, TIM1_itEnable = 0;
9103                     ; 2118   assert_param(IS_TIM1_GET_IT_OK(TIM1_IT));
9105  1497 a101          	cp	a,#1
9106  1499 271c          	jreq	L4431
9107  149b a102          	cp	a,#2
9108  149d 2718          	jreq	L4431
9109  149f a104          	cp	a,#4
9110  14a1 2714          	jreq	L4431
9111  14a3 a108          	cp	a,#8
9112  14a5 2710          	jreq	L4431
9113  14a7 a110          	cp	a,#16
9114  14a9 270c          	jreq	L4431
9115  14ab a120          	cp	a,#32
9116  14ad 2708          	jreq	L4431
9117  14af a140          	cp	a,#64
9118  14b1 2704          	jreq	L4431
9119  14b3 a180          	cp	a,#128
9120  14b5 2603          	jrne	L2431
9121  14b7               L4431:
9122  14b7 4f            	clr	a
9123  14b8 2010          	jra	L6431
9124  14ba               L2431:
9125  14ba ae0846        	ldw	x,#2118
9126  14bd 89            	pushw	x
9127  14be ae0000        	ldw	x,#0
9128  14c1 89            	pushw	x
9129  14c2 ae0000        	ldw	x,#L101
9130  14c5 cd0000        	call	_assert_failed
9132  14c8 5b04          	addw	sp,#4
9133  14ca               L6431:
9134                     ; 2120   TIM1_itStatus = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_IT);
9136  14ca c65255        	ld	a,21077
9137  14cd 1403          	and	a,(OFST+1,sp)
9138  14cf 6b01          	ld	(OFST-1,sp),a
9140                     ; 2122   TIM1_itEnable = (uint8_t)(TIM1->IER & (uint8_t)TIM1_IT);
9142  14d1 c65254        	ld	a,21076
9143  14d4 1403          	and	a,(OFST+1,sp)
9144  14d6 6b02          	ld	(OFST+0,sp),a
9146                     ; 2124   if ((TIM1_itStatus != (uint8_t)RESET ) && (TIM1_itEnable != (uint8_t)RESET ))
9148  14d8 0d01          	tnz	(OFST-1,sp)
9149  14da 270a          	jreq	L3453
9151  14dc 0d02          	tnz	(OFST+0,sp)
9152  14de 2706          	jreq	L3453
9153                     ; 2126     bitstatus = SET;
9155  14e0 a601          	ld	a,#1
9156  14e2 6b02          	ld	(OFST+0,sp),a
9159  14e4 2002          	jra	L5453
9160  14e6               L3453:
9161                     ; 2130     bitstatus = RESET;
9163  14e6 0f02          	clr	(OFST+0,sp)
9165  14e8               L5453:
9166                     ; 2132   return (ITStatus)(bitstatus);
9168  14e8 7b02          	ld	a,(OFST+0,sp)
9171  14ea 5b03          	addw	sp,#3
9172  14ec 81            	ret
9209                     ; 2149 void TIM1_ClearITPendingBit(TIM1_IT_TypeDef TIM1_IT)
9209                     ; 2150 {
9210                     	switch	.text
9211  14ed               _TIM1_ClearITPendingBit:
9213  14ed 88            	push	a
9214       00000000      OFST:	set	0
9217                     ; 2152   assert_param(IS_TIM1_IT_OK(TIM1_IT));
9219  14ee 4d            	tnz	a
9220  14ef 2703          	jreq	L2531
9221  14f1 4f            	clr	a
9222  14f2 2010          	jra	L4531
9223  14f4               L2531:
9224  14f4 ae0868        	ldw	x,#2152
9225  14f7 89            	pushw	x
9226  14f8 ae0000        	ldw	x,#0
9227  14fb 89            	pushw	x
9228  14fc ae0000        	ldw	x,#L101
9229  14ff cd0000        	call	_assert_failed
9231  1502 5b04          	addw	sp,#4
9232  1504               L4531:
9233                     ; 2155   TIM1->SR1 = (uint8_t)(~(uint8_t)TIM1_IT);
9235  1504 7b01          	ld	a,(OFST+1,sp)
9236  1506 43            	cpl	a
9237  1507 c75255        	ld	21077,a
9238                     ; 2156 }
9241  150a 84            	pop	a
9242  150b 81            	ret
9294                     ; 2174 static void TI1_Config(uint8_t TIM1_ICPolarity,
9294                     ; 2175                        uint8_t TIM1_ICSelection,
9294                     ; 2176                        uint8_t TIM1_ICFilter)
9294                     ; 2177 {
9295                     	switch	.text
9296  150c               L3_TI1_Config:
9298  150c 89            	pushw	x
9299  150d 88            	push	a
9300       00000001      OFST:	set	1
9303                     ; 2179   TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
9305  150e 7211525c      	bres	21084,#0
9306                     ; 2182   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) | 
9306                     ; 2183                           (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
9308  1512 7b06          	ld	a,(OFST+5,sp)
9309  1514 97            	ld	xl,a
9310  1515 a610          	ld	a,#16
9311  1517 42            	mul	x,a
9312  1518 9f            	ld	a,xl
9313  1519 1a03          	or	a,(OFST+2,sp)
9314  151b 6b01          	ld	(OFST+0,sp),a
9316  151d c65258        	ld	a,21080
9317  1520 a40c          	and	a,#12
9318  1522 1a01          	or	a,(OFST+0,sp)
9319  1524 c75258        	ld	21080,a
9320                     ; 2186   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
9322  1527 0d02          	tnz	(OFST+1,sp)
9323  1529 2706          	jreq	L3163
9324                     ; 2188     TIM1->CCER1 |= TIM1_CCER1_CC1P;
9326  152b 7212525c      	bset	21084,#1
9328  152f 2004          	jra	L5163
9329  1531               L3163:
9330                     ; 2192     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
9332  1531 7213525c      	bres	21084,#1
9333  1535               L5163:
9334                     ; 2196   TIM1->CCER1 |=  TIM1_CCER1_CC1E;
9336  1535 7210525c      	bset	21084,#0
9337                     ; 2197 }
9340  1539 5b03          	addw	sp,#3
9341  153b 81            	ret
9393                     ; 2215 static void TI2_Config(uint8_t TIM1_ICPolarity,
9393                     ; 2216                        uint8_t TIM1_ICSelection,
9393                     ; 2217                        uint8_t TIM1_ICFilter)
9393                     ; 2218 {
9394                     	switch	.text
9395  153c               L5_TI2_Config:
9397  153c 89            	pushw	x
9398  153d 88            	push	a
9399       00000001      OFST:	set	1
9402                     ; 2220   TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
9404  153e 7219525c      	bres	21084,#4
9405                     ; 2223   TIM1->CCMR2  = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) 
9405                     ; 2224                            | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
9407  1542 7b06          	ld	a,(OFST+5,sp)
9408  1544 97            	ld	xl,a
9409  1545 a610          	ld	a,#16
9410  1547 42            	mul	x,a
9411  1548 9f            	ld	a,xl
9412  1549 1a03          	or	a,(OFST+2,sp)
9413  154b 6b01          	ld	(OFST+0,sp),a
9415  154d c65259        	ld	a,21081
9416  1550 a40c          	and	a,#12
9417  1552 1a01          	or	a,(OFST+0,sp)
9418  1554 c75259        	ld	21081,a
9419                     ; 2226   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
9421  1557 0d02          	tnz	(OFST+1,sp)
9422  1559 2706          	jreq	L5463
9423                     ; 2228     TIM1->CCER1 |= TIM1_CCER1_CC2P;
9425  155b 721a525c      	bset	21084,#5
9427  155f 2004          	jra	L7463
9428  1561               L5463:
9429                     ; 2232     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
9431  1561 721b525c      	bres	21084,#5
9432  1565               L7463:
9433                     ; 2235   TIM1->CCER1 |=  TIM1_CCER1_CC2E;
9435  1565 7218525c      	bset	21084,#4
9436                     ; 2236 }
9439  1569 5b03          	addw	sp,#3
9440  156b 81            	ret
9492                     ; 2254 static void TI3_Config(uint8_t TIM1_ICPolarity,
9492                     ; 2255                        uint8_t TIM1_ICSelection,
9492                     ; 2256                        uint8_t TIM1_ICFilter)
9492                     ; 2257 {
9493                     	switch	.text
9494  156c               L7_TI3_Config:
9496  156c 89            	pushw	x
9497  156d 88            	push	a
9498       00000001      OFST:	set	1
9501                     ; 2259   TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
9503  156e 7211525d      	bres	21085,#0
9504                     ; 2262   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) 
9504                     ; 2263                           | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
9506  1572 7b06          	ld	a,(OFST+5,sp)
9507  1574 97            	ld	xl,a
9508  1575 a610          	ld	a,#16
9509  1577 42            	mul	x,a
9510  1578 9f            	ld	a,xl
9511  1579 1a03          	or	a,(OFST+2,sp)
9512  157b 6b01          	ld	(OFST+0,sp),a
9514  157d c6525a        	ld	a,21082
9515  1580 a40c          	and	a,#12
9516  1582 1a01          	or	a,(OFST+0,sp)
9517  1584 c7525a        	ld	21082,a
9518                     ; 2266   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
9520  1587 0d02          	tnz	(OFST+1,sp)
9521  1589 2706          	jreq	L7763
9522                     ; 2268     TIM1->CCER2 |= TIM1_CCER2_CC3P;
9524  158b 7212525d      	bset	21085,#1
9526  158f 2004          	jra	L1073
9527  1591               L7763:
9528                     ; 2272     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
9530  1591 7213525d      	bres	21085,#1
9531  1595               L1073:
9532                     ; 2275   TIM1->CCER2 |=  TIM1_CCER2_CC3E;
9534  1595 7210525d      	bset	21085,#0
9535                     ; 2276 }
9538  1599 5b03          	addw	sp,#3
9539  159b 81            	ret
9591                     ; 2294 static void TI4_Config(uint8_t TIM1_ICPolarity,
9591                     ; 2295                        uint8_t TIM1_ICSelection,
9591                     ; 2296                        uint8_t TIM1_ICFilter)
9591                     ; 2297 {
9592                     	switch	.text
9593  159c               L11_TI4_Config:
9595  159c 89            	pushw	x
9596  159d 88            	push	a
9597       00000001      OFST:	set	1
9600                     ; 2299   TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
9602  159e 7219525d      	bres	21085,#4
9603                     ; 2302   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF )))
9603                     ; 2303                           | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
9605  15a2 7b06          	ld	a,(OFST+5,sp)
9606  15a4 97            	ld	xl,a
9607  15a5 a610          	ld	a,#16
9608  15a7 42            	mul	x,a
9609  15a8 9f            	ld	a,xl
9610  15a9 1a03          	or	a,(OFST+2,sp)
9611  15ab 6b01          	ld	(OFST+0,sp),a
9613  15ad c6525b        	ld	a,21083
9614  15b0 a40c          	and	a,#12
9615  15b2 1a01          	or	a,(OFST+0,sp)
9616  15b4 c7525b        	ld	21083,a
9617                     ; 2306   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
9619  15b7 0d02          	tnz	(OFST+1,sp)
9620  15b9 2706          	jreq	L1373
9621                     ; 2308     TIM1->CCER2 |= TIM1_CCER2_CC4P;
9623  15bb 721a525d      	bset	21085,#5
9625  15bf 2004          	jra	L3373
9626  15c1               L1373:
9627                     ; 2312     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
9629  15c1 721b525d      	bres	21085,#5
9630  15c5               L3373:
9631                     ; 2316   TIM1->CCER2 |=  TIM1_CCER2_CC4E;
9633  15c5 7218525d      	bset	21085,#4
9634                     ; 2317 }
9637  15c9 5b03          	addw	sp,#3
9638  15cb 81            	ret
9651                     	xdef	_TIM1_ClearITPendingBit
9652                     	xdef	_TIM1_GetITStatus
9653                     	xdef	_TIM1_ClearFlag
9654                     	xdef	_TIM1_GetFlagStatus
9655                     	xdef	_TIM1_GetPrescaler
9656                     	xdef	_TIM1_GetCounter
9657                     	xdef	_TIM1_GetCapture4
9658                     	xdef	_TIM1_GetCapture3
9659                     	xdef	_TIM1_GetCapture2
9660                     	xdef	_TIM1_GetCapture1
9661                     	xdef	_TIM1_SetIC4Prescaler
9662                     	xdef	_TIM1_SetIC3Prescaler
9663                     	xdef	_TIM1_SetIC2Prescaler
9664                     	xdef	_TIM1_SetIC1Prescaler
9665                     	xdef	_TIM1_SetCompare4
9666                     	xdef	_TIM1_SetCompare3
9667                     	xdef	_TIM1_SetCompare2
9668                     	xdef	_TIM1_SetCompare1
9669                     	xdef	_TIM1_SetAutoreload
9670                     	xdef	_TIM1_SetCounter
9671                     	xdef	_TIM1_SelectOCxM
9672                     	xdef	_TIM1_CCxNCmd
9673                     	xdef	_TIM1_CCxCmd
9674                     	xdef	_TIM1_OC4PolarityConfig
9675                     	xdef	_TIM1_OC3NPolarityConfig
9676                     	xdef	_TIM1_OC3PolarityConfig
9677                     	xdef	_TIM1_OC2NPolarityConfig
9678                     	xdef	_TIM1_OC2PolarityConfig
9679                     	xdef	_TIM1_OC1NPolarityConfig
9680                     	xdef	_TIM1_OC1PolarityConfig
9681                     	xdef	_TIM1_GenerateEvent
9682                     	xdef	_TIM1_OC4FastConfig
9683                     	xdef	_TIM1_OC3FastConfig
9684                     	xdef	_TIM1_OC2FastConfig
9685                     	xdef	_TIM1_OC1FastConfig
9686                     	xdef	_TIM1_OC4PreloadConfig
9687                     	xdef	_TIM1_OC3PreloadConfig
9688                     	xdef	_TIM1_OC2PreloadConfig
9689                     	xdef	_TIM1_OC1PreloadConfig
9690                     	xdef	_TIM1_CCPreloadControl
9691                     	xdef	_TIM1_SelectCOM
9692                     	xdef	_TIM1_ARRPreloadConfig
9693                     	xdef	_TIM1_ForcedOC4Config
9694                     	xdef	_TIM1_ForcedOC3Config
9695                     	xdef	_TIM1_ForcedOC2Config
9696                     	xdef	_TIM1_ForcedOC1Config
9697                     	xdef	_TIM1_CounterModeConfig
9698                     	xdef	_TIM1_PrescalerConfig
9699                     	xdef	_TIM1_EncoderInterfaceConfig
9700                     	xdef	_TIM1_SelectMasterSlaveMode
9701                     	xdef	_TIM1_SelectSlaveMode
9702                     	xdef	_TIM1_SelectOutputTrigger
9703                     	xdef	_TIM1_SelectOnePulseMode
9704                     	xdef	_TIM1_SelectHallSensor
9705                     	xdef	_TIM1_UpdateRequestConfig
9706                     	xdef	_TIM1_UpdateDisableConfig
9707                     	xdef	_TIM1_SelectInputTrigger
9708                     	xdef	_TIM1_TIxExternalClockConfig
9709                     	xdef	_TIM1_ETRConfig
9710                     	xdef	_TIM1_ETRClockMode2Config
9711                     	xdef	_TIM1_ETRClockMode1Config
9712                     	xdef	_TIM1_InternalClockConfig
9713                     	xdef	_TIM1_ITConfig
9714                     	xdef	_TIM1_CtrlPWMOutputs
9715                     	xdef	_TIM1_Cmd
9716                     	xdef	_TIM1_PWMIConfig
9717                     	xdef	_TIM1_ICInit
9718                     	xdef	_TIM1_BDTRConfig
9719                     	xdef	_TIM1_OC4Init
9720                     	xdef	_TIM1_OC3Init
9721                     	xdef	_TIM1_OC2Init
9722                     	xdef	_TIM1_OC1Init
9723                     	xdef	_TIM1_TimeBaseInit
9724                     	xdef	_TIM1_DeInit
9725                     	xref	_assert_failed
9726                     .const:	section	.text
9727  0000               L101:
9728  0000 2e2e5c6c6962  	dc.b	"..\libs\src\stm8s_"
9729  0012 74696d312e63  	dc.b	"tim1.c",0
9749                     	end
