   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
  44                     ; 58 void TIM1_DeInit(void)
  44                     ; 59 {
  46                     .text:	section	.text,new
  47  0000               _TIM1_DeInit:
  51                     ; 60   TIM1->CR1  = TIM1_CR1_RESET_VALUE;
  53  0000 725f5250      	clr	21072
  54                     ; 61   TIM1->CR2  = TIM1_CR2_RESET_VALUE;
  56  0004 725f5251      	clr	21073
  57                     ; 62   TIM1->SMCR = TIM1_SMCR_RESET_VALUE;
  59  0008 725f5252      	clr	21074
  60                     ; 63   TIM1->ETR  = TIM1_ETR_RESET_VALUE;
  62  000c 725f5253      	clr	21075
  63                     ; 64   TIM1->IER  = TIM1_IER_RESET_VALUE;
  65  0010 725f5254      	clr	21076
  66                     ; 65   TIM1->SR2  = TIM1_SR2_RESET_VALUE;
  68  0014 725f5256      	clr	21078
  69                     ; 67   TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  71  0018 725f525c      	clr	21084
  72                     ; 68   TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  74  001c 725f525d      	clr	21085
  75                     ; 70   TIM1->CCMR1 = 0x01;
  77  0020 35015258      	mov	21080,#1
  78                     ; 71   TIM1->CCMR2 = 0x01;
  80  0024 35015259      	mov	21081,#1
  81                     ; 72   TIM1->CCMR3 = 0x01;
  83  0028 3501525a      	mov	21082,#1
  84                     ; 73   TIM1->CCMR4 = 0x01;
  86  002c 3501525b      	mov	21083,#1
  87                     ; 75   TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  89  0030 725f525c      	clr	21084
  90                     ; 76   TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  92  0034 725f525d      	clr	21085
  93                     ; 77   TIM1->CCMR1 = TIM1_CCMR1_RESET_VALUE;
  95  0038 725f5258      	clr	21080
  96                     ; 78   TIM1->CCMR2 = TIM1_CCMR2_RESET_VALUE;
  98  003c 725f5259      	clr	21081
  99                     ; 79   TIM1->CCMR3 = TIM1_CCMR3_RESET_VALUE;
 101  0040 725f525a      	clr	21082
 102                     ; 80   TIM1->CCMR4 = TIM1_CCMR4_RESET_VALUE;
 104  0044 725f525b      	clr	21083
 105                     ; 81   TIM1->CNTRH = TIM1_CNTRH_RESET_VALUE;
 107  0048 725f525e      	clr	21086
 108                     ; 82   TIM1->CNTRL = TIM1_CNTRL_RESET_VALUE;
 110  004c 725f525f      	clr	21087
 111                     ; 83   TIM1->PSCRH = TIM1_PSCRH_RESET_VALUE;
 113  0050 725f5260      	clr	21088
 114                     ; 84   TIM1->PSCRL = TIM1_PSCRL_RESET_VALUE;
 116  0054 725f5261      	clr	21089
 117                     ; 85   TIM1->ARRH  = TIM1_ARRH_RESET_VALUE;
 119  0058 35ff5262      	mov	21090,#255
 120                     ; 86   TIM1->ARRL  = TIM1_ARRL_RESET_VALUE;
 122  005c 35ff5263      	mov	21091,#255
 123                     ; 87   TIM1->CCR1H = TIM1_CCR1H_RESET_VALUE;
 125  0060 725f5265      	clr	21093
 126                     ; 88   TIM1->CCR1L = TIM1_CCR1L_RESET_VALUE;
 128  0064 725f5266      	clr	21094
 129                     ; 89   TIM1->CCR2H = TIM1_CCR2H_RESET_VALUE;
 131  0068 725f5267      	clr	21095
 132                     ; 90   TIM1->CCR2L = TIM1_CCR2L_RESET_VALUE;
 134  006c 725f5268      	clr	21096
 135                     ; 91   TIM1->CCR3H = TIM1_CCR3H_RESET_VALUE;
 137  0070 725f5269      	clr	21097
 138                     ; 92   TIM1->CCR3L = TIM1_CCR3L_RESET_VALUE;
 140  0074 725f526a      	clr	21098
 141                     ; 93   TIM1->CCR4H = TIM1_CCR4H_RESET_VALUE;
 143  0078 725f526b      	clr	21099
 144                     ; 94   TIM1->CCR4L = TIM1_CCR4L_RESET_VALUE;
 146  007c 725f526c      	clr	21100
 147                     ; 95   TIM1->OISR  = TIM1_OISR_RESET_VALUE;
 149  0080 725f526f      	clr	21103
 150                     ; 96   TIM1->EGR   = 0x01; /* TIM1_EGR_UG */
 152  0084 35015257      	mov	21079,#1
 153                     ; 97   TIM1->DTR   = TIM1_DTR_RESET_VALUE;
 155  0088 725f526e      	clr	21102
 156                     ; 98   TIM1->BKR   = TIM1_BKR_RESET_VALUE;
 158  008c 725f526d      	clr	21101
 159                     ; 99   TIM1->RCR   = TIM1_RCR_RESET_VALUE;
 161  0090 725f5264      	clr	21092
 162                     ; 100   TIM1->SR1   = TIM1_SR1_RESET_VALUE;
 164  0094 725f5255      	clr	21077
 165                     ; 101 }
 168  0098 81            	ret
 278                     ; 111 void TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
 278                     ; 112                        TIM1_CounterMode_TypeDef TIM1_CounterMode,
 278                     ; 113                        uint16_t TIM1_Period,
 278                     ; 114                        uint8_t TIM1_RepetitionCounter)
 278                     ; 115 {
 279                     .text:	section	.text,new
 280  0000               _TIM1_TimeBaseInit:
 282  0000 89            	pushw	x
 283       00000000      OFST:	set	0
 286                     ; 117   assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
 288  0001 0d05          	tnz	(OFST+5,sp)
 289  0003 2718          	jreq	L21
 290  0005 7b05          	ld	a,(OFST+5,sp)
 291  0007 a110          	cp	a,#16
 292  0009 2712          	jreq	L21
 293  000b 7b05          	ld	a,(OFST+5,sp)
 294  000d a120          	cp	a,#32
 295  000f 270c          	jreq	L21
 296  0011 7b05          	ld	a,(OFST+5,sp)
 297  0013 a140          	cp	a,#64
 298  0015 2706          	jreq	L21
 299  0017 7b05          	ld	a,(OFST+5,sp)
 300  0019 a160          	cp	a,#96
 301  001b 2603          	jrne	L01
 302  001d               L21:
 303  001d 4f            	clr	a
 304  001e 2010          	jra	L41
 305  0020               L01:
 306  0020 ae0075        	ldw	x,#117
 307  0023 89            	pushw	x
 308  0024 ae0000        	ldw	x,#0
 309  0027 89            	pushw	x
 310  0028 ae0000        	ldw	x,#L101
 311  002b cd0000        	call	_assert_failed
 313  002e 5b04          	addw	sp,#4
 314  0030               L41:
 315                     ; 120   TIM1->ARRH = (uint8_t)(TIM1_Period >> 8);
 317  0030 7b06          	ld	a,(OFST+6,sp)
 318  0032 c75262        	ld	21090,a
 319                     ; 121   TIM1->ARRL = (uint8_t)(TIM1_Period);
 321  0035 7b07          	ld	a,(OFST+7,sp)
 322  0037 c75263        	ld	21091,a
 323                     ; 124   TIM1->PSCRH = (uint8_t)(TIM1_Prescaler >> 8);
 325  003a 7b01          	ld	a,(OFST+1,sp)
 326  003c c75260        	ld	21088,a
 327                     ; 125   TIM1->PSCRL = (uint8_t)(TIM1_Prescaler);
 329  003f 7b02          	ld	a,(OFST+2,sp)
 330  0041 c75261        	ld	21089,a
 331                     ; 128   TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)(~(TIM1_CR1_CMS | TIM1_CR1_DIR)))
 331                     ; 129                         | (uint8_t)(TIM1_CounterMode));
 333  0044 c65250        	ld	a,21072
 334  0047 a48f          	and	a,#143
 335  0049 1a05          	or	a,(OFST+5,sp)
 336  004b c75250        	ld	21072,a
 337                     ; 132   TIM1->RCR = TIM1_RepetitionCounter;
 339  004e 7b08          	ld	a,(OFST+8,sp)
 340  0050 c75264        	ld	21092,a
 341                     ; 133 }
 344  0053 85            	popw	x
 345  0054 81            	ret
 631                     ; 154 void TIM1_OC1Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 631                     ; 155                   TIM1_OutputState_TypeDef TIM1_OutputState,
 631                     ; 156                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 631                     ; 157                   uint16_t TIM1_Pulse,
 631                     ; 158                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 631                     ; 159                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 631                     ; 160                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 631                     ; 161                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 631                     ; 162 {
 632                     .text:	section	.text,new
 633  0000               _TIM1_OC1Init:
 635  0000 89            	pushw	x
 636  0001 5203          	subw	sp,#3
 637       00000003      OFST:	set	3
 640                     ; 164   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 642  0003 9e            	ld	a,xh
 643  0004 4d            	tnz	a
 644  0005 2719          	jreq	L22
 645  0007 9e            	ld	a,xh
 646  0008 a110          	cp	a,#16
 647  000a 2714          	jreq	L22
 648  000c 9e            	ld	a,xh
 649  000d a120          	cp	a,#32
 650  000f 270f          	jreq	L22
 651  0011 9e            	ld	a,xh
 652  0012 a130          	cp	a,#48
 653  0014 270a          	jreq	L22
 654  0016 9e            	ld	a,xh
 655  0017 a160          	cp	a,#96
 656  0019 2705          	jreq	L22
 657  001b 9e            	ld	a,xh
 658  001c a170          	cp	a,#112
 659  001e 2603          	jrne	L02
 660  0020               L22:
 661  0020 4f            	clr	a
 662  0021 2010          	jra	L42
 663  0023               L02:
 664  0023 ae00a4        	ldw	x,#164
 665  0026 89            	pushw	x
 666  0027 ae0000        	ldw	x,#0
 667  002a 89            	pushw	x
 668  002b ae0000        	ldw	x,#L101
 669  002e cd0000        	call	_assert_failed
 671  0031 5b04          	addw	sp,#4
 672  0033               L42:
 673                     ; 165   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 675  0033 0d05          	tnz	(OFST+2,sp)
 676  0035 2706          	jreq	L03
 677  0037 7b05          	ld	a,(OFST+2,sp)
 678  0039 a111          	cp	a,#17
 679  003b 2603          	jrne	L62
 680  003d               L03:
 681  003d 4f            	clr	a
 682  003e 2010          	jra	L23
 683  0040               L62:
 684  0040 ae00a5        	ldw	x,#165
 685  0043 89            	pushw	x
 686  0044 ae0000        	ldw	x,#0
 687  0047 89            	pushw	x
 688  0048 ae0000        	ldw	x,#L101
 689  004b cd0000        	call	_assert_failed
 691  004e 5b04          	addw	sp,#4
 692  0050               L23:
 693                     ; 166   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 695  0050 0d08          	tnz	(OFST+5,sp)
 696  0052 2706          	jreq	L63
 697  0054 7b08          	ld	a,(OFST+5,sp)
 698  0056 a144          	cp	a,#68
 699  0058 2603          	jrne	L43
 700  005a               L63:
 701  005a 4f            	clr	a
 702  005b 2010          	jra	L04
 703  005d               L43:
 704  005d ae00a6        	ldw	x,#166
 705  0060 89            	pushw	x
 706  0061 ae0000        	ldw	x,#0
 707  0064 89            	pushw	x
 708  0065 ae0000        	ldw	x,#L101
 709  0068 cd0000        	call	_assert_failed
 711  006b 5b04          	addw	sp,#4
 712  006d               L04:
 713                     ; 167   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 715  006d 0d0b          	tnz	(OFST+8,sp)
 716  006f 2706          	jreq	L44
 717  0071 7b0b          	ld	a,(OFST+8,sp)
 718  0073 a122          	cp	a,#34
 719  0075 2603          	jrne	L24
 720  0077               L44:
 721  0077 4f            	clr	a
 722  0078 2010          	jra	L64
 723  007a               L24:
 724  007a ae00a7        	ldw	x,#167
 725  007d 89            	pushw	x
 726  007e ae0000        	ldw	x,#0
 727  0081 89            	pushw	x
 728  0082 ae0000        	ldw	x,#L101
 729  0085 cd0000        	call	_assert_failed
 731  0088 5b04          	addw	sp,#4
 732  008a               L64:
 733                     ; 168   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 735  008a 0d0c          	tnz	(OFST+9,sp)
 736  008c 2706          	jreq	L25
 737  008e 7b0c          	ld	a,(OFST+9,sp)
 738  0090 a188          	cp	a,#136
 739  0092 2603          	jrne	L05
 740  0094               L25:
 741  0094 4f            	clr	a
 742  0095 2010          	jra	L45
 743  0097               L05:
 744  0097 ae00a8        	ldw	x,#168
 745  009a 89            	pushw	x
 746  009b ae0000        	ldw	x,#0
 747  009e 89            	pushw	x
 748  009f ae0000        	ldw	x,#L101
 749  00a2 cd0000        	call	_assert_failed
 751  00a5 5b04          	addw	sp,#4
 752  00a7               L45:
 753                     ; 169   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 755  00a7 7b0d          	ld	a,(OFST+10,sp)
 756  00a9 a155          	cp	a,#85
 757  00ab 2704          	jreq	L06
 758  00ad 0d0d          	tnz	(OFST+10,sp)
 759  00af 2603          	jrne	L65
 760  00b1               L06:
 761  00b1 4f            	clr	a
 762  00b2 2010          	jra	L26
 763  00b4               L65:
 764  00b4 ae00a9        	ldw	x,#169
 765  00b7 89            	pushw	x
 766  00b8 ae0000        	ldw	x,#0
 767  00bb 89            	pushw	x
 768  00bc ae0000        	ldw	x,#L101
 769  00bf cd0000        	call	_assert_failed
 771  00c2 5b04          	addw	sp,#4
 772  00c4               L26:
 773                     ; 170   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 775  00c4 7b0e          	ld	a,(OFST+11,sp)
 776  00c6 a12a          	cp	a,#42
 777  00c8 2704          	jreq	L66
 778  00ca 0d0e          	tnz	(OFST+11,sp)
 779  00cc 2603          	jrne	L46
 780  00ce               L66:
 781  00ce 4f            	clr	a
 782  00cf 2010          	jra	L07
 783  00d1               L46:
 784  00d1 ae00aa        	ldw	x,#170
 785  00d4 89            	pushw	x
 786  00d5 ae0000        	ldw	x,#0
 787  00d8 89            	pushw	x
 788  00d9 ae0000        	ldw	x,#L101
 789  00dc cd0000        	call	_assert_failed
 791  00df 5b04          	addw	sp,#4
 792  00e1               L07:
 793                     ; 174   TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC1E | TIM1_CCER1_CC1NE 
 793                     ; 175                              | TIM1_CCER1_CC1P | TIM1_CCER1_CC1NP));
 795  00e1 c6525c        	ld	a,21084
 796  00e4 a4f0          	and	a,#240
 797  00e6 c7525c        	ld	21084,a
 798                     ; 178   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC1E)
 798                     ; 179                                      | (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC1NE))
 798                     ; 180                            | (uint8_t)( (uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC1P)
 798                     ; 181                                        | (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC1NP)));
 800  00e9 7b0c          	ld	a,(OFST+9,sp)
 801  00eb a408          	and	a,#8
 802  00ed 6b03          	ld	(OFST+0,sp),a
 804  00ef 7b0b          	ld	a,(OFST+8,sp)
 805  00f1 a402          	and	a,#2
 806  00f3 1a03          	or	a,(OFST+0,sp)
 807  00f5 6b02          	ld	(OFST-1,sp),a
 809  00f7 7b08          	ld	a,(OFST+5,sp)
 810  00f9 a404          	and	a,#4
 811  00fb 6b01          	ld	(OFST-2,sp),a
 813  00fd 7b05          	ld	a,(OFST+2,sp)
 814  00ff a401          	and	a,#1
 815  0101 1a01          	or	a,(OFST-2,sp)
 816  0103 1a02          	or	a,(OFST-1,sp)
 817  0105 ca525c        	or	a,21084
 818  0108 c7525c        	ld	21084,a
 819                     ; 184   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) | 
 819                     ; 185                           (uint8_t)TIM1_OCMode);
 821  010b c65258        	ld	a,21080
 822  010e a48f          	and	a,#143
 823  0110 1a04          	or	a,(OFST+1,sp)
 824  0112 c75258        	ld	21080,a
 825                     ; 188   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS1 | TIM1_OISR_OIS1N));
 827  0115 c6526f        	ld	a,21103
 828  0118 a4fc          	and	a,#252
 829  011a c7526f        	ld	21103,a
 830                     ; 190   TIM1->OISR |= (uint8_t)((uint8_t)( TIM1_OCIdleState & TIM1_OISR_OIS1 ) | 
 830                     ; 191                           (uint8_t)( TIM1_OCNIdleState & TIM1_OISR_OIS1N ));
 832  011d 7b0e          	ld	a,(OFST+11,sp)
 833  011f a402          	and	a,#2
 834  0121 6b03          	ld	(OFST+0,sp),a
 836  0123 7b0d          	ld	a,(OFST+10,sp)
 837  0125 a401          	and	a,#1
 838  0127 1a03          	or	a,(OFST+0,sp)
 839  0129 ca526f        	or	a,21103
 840  012c c7526f        	ld	21103,a
 841                     ; 194   TIM1->CCR1H = (uint8_t)(TIM1_Pulse >> 8);
 843  012f 7b09          	ld	a,(OFST+6,sp)
 844  0131 c75265        	ld	21093,a
 845                     ; 195   TIM1->CCR1L = (uint8_t)(TIM1_Pulse);
 847  0134 7b0a          	ld	a,(OFST+7,sp)
 848  0136 c75266        	ld	21094,a
 849                     ; 196 }
 852  0139 5b05          	addw	sp,#5
 853  013b 81            	ret
 958                     ; 217 void TIM1_OC2Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 958                     ; 218                   TIM1_OutputState_TypeDef TIM1_OutputState,
 958                     ; 219                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 958                     ; 220                   uint16_t TIM1_Pulse,
 958                     ; 221                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 958                     ; 222                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 958                     ; 223                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 958                     ; 224                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 958                     ; 225 {
 959                     .text:	section	.text,new
 960  0000               _TIM1_OC2Init:
 962  0000 89            	pushw	x
 963  0001 5203          	subw	sp,#3
 964       00000003      OFST:	set	3
 967                     ; 227   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 969  0003 9e            	ld	a,xh
 970  0004 4d            	tnz	a
 971  0005 2719          	jreq	L67
 972  0007 9e            	ld	a,xh
 973  0008 a110          	cp	a,#16
 974  000a 2714          	jreq	L67
 975  000c 9e            	ld	a,xh
 976  000d a120          	cp	a,#32
 977  000f 270f          	jreq	L67
 978  0011 9e            	ld	a,xh
 979  0012 a130          	cp	a,#48
 980  0014 270a          	jreq	L67
 981  0016 9e            	ld	a,xh
 982  0017 a160          	cp	a,#96
 983  0019 2705          	jreq	L67
 984  001b 9e            	ld	a,xh
 985  001c a170          	cp	a,#112
 986  001e 2603          	jrne	L47
 987  0020               L67:
 988  0020 4f            	clr	a
 989  0021 2010          	jra	L001
 990  0023               L47:
 991  0023 ae00e3        	ldw	x,#227
 992  0026 89            	pushw	x
 993  0027 ae0000        	ldw	x,#0
 994  002a 89            	pushw	x
 995  002b ae0000        	ldw	x,#L101
 996  002e cd0000        	call	_assert_failed
 998  0031 5b04          	addw	sp,#4
 999  0033               L001:
1000                     ; 228   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1002  0033 0d05          	tnz	(OFST+2,sp)
1003  0035 2706          	jreq	L401
1004  0037 7b05          	ld	a,(OFST+2,sp)
1005  0039 a111          	cp	a,#17
1006  003b 2603          	jrne	L201
1007  003d               L401:
1008  003d 4f            	clr	a
1009  003e 2010          	jra	L601
1010  0040               L201:
1011  0040 ae00e4        	ldw	x,#228
1012  0043 89            	pushw	x
1013  0044 ae0000        	ldw	x,#0
1014  0047 89            	pushw	x
1015  0048 ae0000        	ldw	x,#L101
1016  004b cd0000        	call	_assert_failed
1018  004e 5b04          	addw	sp,#4
1019  0050               L601:
1020                     ; 229   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
1022  0050 0d08          	tnz	(OFST+5,sp)
1023  0052 2706          	jreq	L211
1024  0054 7b08          	ld	a,(OFST+5,sp)
1025  0056 a144          	cp	a,#68
1026  0058 2603          	jrne	L011
1027  005a               L211:
1028  005a 4f            	clr	a
1029  005b 2010          	jra	L411
1030  005d               L011:
1031  005d ae00e5        	ldw	x,#229
1032  0060 89            	pushw	x
1033  0061 ae0000        	ldw	x,#0
1034  0064 89            	pushw	x
1035  0065 ae0000        	ldw	x,#L101
1036  0068 cd0000        	call	_assert_failed
1038  006b 5b04          	addw	sp,#4
1039  006d               L411:
1040                     ; 230   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1042  006d 0d0b          	tnz	(OFST+8,sp)
1043  006f 2706          	jreq	L021
1044  0071 7b0b          	ld	a,(OFST+8,sp)
1045  0073 a122          	cp	a,#34
1046  0075 2603          	jrne	L611
1047  0077               L021:
1048  0077 4f            	clr	a
1049  0078 2010          	jra	L221
1050  007a               L611:
1051  007a ae00e6        	ldw	x,#230
1052  007d 89            	pushw	x
1053  007e ae0000        	ldw	x,#0
1054  0081 89            	pushw	x
1055  0082 ae0000        	ldw	x,#L101
1056  0085 cd0000        	call	_assert_failed
1058  0088 5b04          	addw	sp,#4
1059  008a               L221:
1060                     ; 231   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
1062  008a 0d0c          	tnz	(OFST+9,sp)
1063  008c 2706          	jreq	L621
1064  008e 7b0c          	ld	a,(OFST+9,sp)
1065  0090 a188          	cp	a,#136
1066  0092 2603          	jrne	L421
1067  0094               L621:
1068  0094 4f            	clr	a
1069  0095 2010          	jra	L031
1070  0097               L421:
1071  0097 ae00e7        	ldw	x,#231
1072  009a 89            	pushw	x
1073  009b ae0000        	ldw	x,#0
1074  009e 89            	pushw	x
1075  009f ae0000        	ldw	x,#L101
1076  00a2 cd0000        	call	_assert_failed
1078  00a5 5b04          	addw	sp,#4
1079  00a7               L031:
1080                     ; 232   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1082  00a7 7b0d          	ld	a,(OFST+10,sp)
1083  00a9 a155          	cp	a,#85
1084  00ab 2704          	jreq	L431
1085  00ad 0d0d          	tnz	(OFST+10,sp)
1086  00af 2603          	jrne	L231
1087  00b1               L431:
1088  00b1 4f            	clr	a
1089  00b2 2010          	jra	L631
1090  00b4               L231:
1091  00b4 ae00e8        	ldw	x,#232
1092  00b7 89            	pushw	x
1093  00b8 ae0000        	ldw	x,#0
1094  00bb 89            	pushw	x
1095  00bc ae0000        	ldw	x,#L101
1096  00bf cd0000        	call	_assert_failed
1098  00c2 5b04          	addw	sp,#4
1099  00c4               L631:
1100                     ; 233   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
1102  00c4 7b0e          	ld	a,(OFST+11,sp)
1103  00c6 a12a          	cp	a,#42
1104  00c8 2704          	jreq	L241
1105  00ca 0d0e          	tnz	(OFST+11,sp)
1106  00cc 2603          	jrne	L041
1107  00ce               L241:
1108  00ce 4f            	clr	a
1109  00cf 2010          	jra	L441
1110  00d1               L041:
1111  00d1 ae00e9        	ldw	x,#233
1112  00d4 89            	pushw	x
1113  00d5 ae0000        	ldw	x,#0
1114  00d8 89            	pushw	x
1115  00d9 ae0000        	ldw	x,#L101
1116  00dc cd0000        	call	_assert_failed
1118  00df 5b04          	addw	sp,#4
1119  00e1               L441:
1120                     ; 237   TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC2E | TIM1_CCER1_CC2NE | 
1120                     ; 238                              TIM1_CCER1_CC2P | TIM1_CCER1_CC2NP));
1122  00e1 c6525c        	ld	a,21084
1123  00e4 a40f          	and	a,#15
1124  00e6 c7525c        	ld	21084,a
1125                     ; 242   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC2E  ) | 
1125                     ; 243                                      (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC2NE )) | 
1125                     ; 244                            (uint8_t)((uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC2P  ) | 
1125                     ; 245                                      (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC2NP )));
1127  00e9 7b0c          	ld	a,(OFST+9,sp)
1128  00eb a480          	and	a,#128
1129  00ed 6b03          	ld	(OFST+0,sp),a
1131  00ef 7b0b          	ld	a,(OFST+8,sp)
1132  00f1 a420          	and	a,#32
1133  00f3 1a03          	or	a,(OFST+0,sp)
1134  00f5 6b02          	ld	(OFST-1,sp),a
1136  00f7 7b08          	ld	a,(OFST+5,sp)
1137  00f9 a440          	and	a,#64
1138  00fb 6b01          	ld	(OFST-2,sp),a
1140  00fd 7b05          	ld	a,(OFST+2,sp)
1141  00ff a410          	and	a,#16
1142  0101 1a01          	or	a,(OFST-2,sp)
1143  0103 1a02          	or	a,(OFST-1,sp)
1144  0105 ca525c        	or	a,21084
1145  0108 c7525c        	ld	21084,a
1146                     ; 248   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1146                     ; 249                           (uint8_t)TIM1_OCMode);
1148  010b c65259        	ld	a,21081
1149  010e a48f          	and	a,#143
1150  0110 1a04          	or	a,(OFST+1,sp)
1151  0112 c75259        	ld	21081,a
1152                     ; 252   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS2 | TIM1_OISR_OIS2N));
1154  0115 c6526f        	ld	a,21103
1155  0118 a4f3          	and	a,#243
1156  011a c7526f        	ld	21103,a
1157                     ; 254   TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS2 & TIM1_OCIdleState) | 
1157                     ; 255                           (uint8_t)(TIM1_OISR_OIS2N & TIM1_OCNIdleState));
1159  011d 7b0e          	ld	a,(OFST+11,sp)
1160  011f a408          	and	a,#8
1161  0121 6b03          	ld	(OFST+0,sp),a
1163  0123 7b0d          	ld	a,(OFST+10,sp)
1164  0125 a404          	and	a,#4
1165  0127 1a03          	or	a,(OFST+0,sp)
1166  0129 ca526f        	or	a,21103
1167  012c c7526f        	ld	21103,a
1168                     ; 258   TIM1->CCR2H = (uint8_t)(TIM1_Pulse >> 8);
1170  012f 7b09          	ld	a,(OFST+6,sp)
1171  0131 c75267        	ld	21095,a
1172                     ; 259   TIM1->CCR2L = (uint8_t)(TIM1_Pulse);
1174  0134 7b0a          	ld	a,(OFST+7,sp)
1175  0136 c75268        	ld	21096,a
1176                     ; 260 }
1179  0139 5b05          	addw	sp,#5
1180  013b 81            	ret
1285                     ; 281 void TIM1_OC3Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1285                     ; 282                   TIM1_OutputState_TypeDef TIM1_OutputState,
1285                     ; 283                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
1285                     ; 284                   uint16_t TIM1_Pulse,
1285                     ; 285                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1285                     ; 286                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
1285                     ; 287                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
1285                     ; 288                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
1285                     ; 289 {
1286                     .text:	section	.text,new
1287  0000               _TIM1_OC3Init:
1289  0000 89            	pushw	x
1290  0001 5203          	subw	sp,#3
1291       00000003      OFST:	set	3
1294                     ; 291   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1296  0003 9e            	ld	a,xh
1297  0004 4d            	tnz	a
1298  0005 2719          	jreq	L251
1299  0007 9e            	ld	a,xh
1300  0008 a110          	cp	a,#16
1301  000a 2714          	jreq	L251
1302  000c 9e            	ld	a,xh
1303  000d a120          	cp	a,#32
1304  000f 270f          	jreq	L251
1305  0011 9e            	ld	a,xh
1306  0012 a130          	cp	a,#48
1307  0014 270a          	jreq	L251
1308  0016 9e            	ld	a,xh
1309  0017 a160          	cp	a,#96
1310  0019 2705          	jreq	L251
1311  001b 9e            	ld	a,xh
1312  001c a170          	cp	a,#112
1313  001e 2603          	jrne	L051
1314  0020               L251:
1315  0020 4f            	clr	a
1316  0021 2010          	jra	L451
1317  0023               L051:
1318  0023 ae0123        	ldw	x,#291
1319  0026 89            	pushw	x
1320  0027 ae0000        	ldw	x,#0
1321  002a 89            	pushw	x
1322  002b ae0000        	ldw	x,#L101
1323  002e cd0000        	call	_assert_failed
1325  0031 5b04          	addw	sp,#4
1326  0033               L451:
1327                     ; 292   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1329  0033 0d05          	tnz	(OFST+2,sp)
1330  0035 2706          	jreq	L061
1331  0037 7b05          	ld	a,(OFST+2,sp)
1332  0039 a111          	cp	a,#17
1333  003b 2603          	jrne	L651
1334  003d               L061:
1335  003d 4f            	clr	a
1336  003e 2010          	jra	L261
1337  0040               L651:
1338  0040 ae0124        	ldw	x,#292
1339  0043 89            	pushw	x
1340  0044 ae0000        	ldw	x,#0
1341  0047 89            	pushw	x
1342  0048 ae0000        	ldw	x,#L101
1343  004b cd0000        	call	_assert_failed
1345  004e 5b04          	addw	sp,#4
1346  0050               L261:
1347                     ; 293   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
1349  0050 0d08          	tnz	(OFST+5,sp)
1350  0052 2706          	jreq	L661
1351  0054 7b08          	ld	a,(OFST+5,sp)
1352  0056 a144          	cp	a,#68
1353  0058 2603          	jrne	L461
1354  005a               L661:
1355  005a 4f            	clr	a
1356  005b 2010          	jra	L071
1357  005d               L461:
1358  005d ae0125        	ldw	x,#293
1359  0060 89            	pushw	x
1360  0061 ae0000        	ldw	x,#0
1361  0064 89            	pushw	x
1362  0065 ae0000        	ldw	x,#L101
1363  0068 cd0000        	call	_assert_failed
1365  006b 5b04          	addw	sp,#4
1366  006d               L071:
1367                     ; 294   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1369  006d 0d0b          	tnz	(OFST+8,sp)
1370  006f 2706          	jreq	L471
1371  0071 7b0b          	ld	a,(OFST+8,sp)
1372  0073 a122          	cp	a,#34
1373  0075 2603          	jrne	L271
1374  0077               L471:
1375  0077 4f            	clr	a
1376  0078 2010          	jra	L671
1377  007a               L271:
1378  007a ae0126        	ldw	x,#294
1379  007d 89            	pushw	x
1380  007e ae0000        	ldw	x,#0
1381  0081 89            	pushw	x
1382  0082 ae0000        	ldw	x,#L101
1383  0085 cd0000        	call	_assert_failed
1385  0088 5b04          	addw	sp,#4
1386  008a               L671:
1387                     ; 295   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
1389  008a 0d0c          	tnz	(OFST+9,sp)
1390  008c 2706          	jreq	L202
1391  008e 7b0c          	ld	a,(OFST+9,sp)
1392  0090 a188          	cp	a,#136
1393  0092 2603          	jrne	L002
1394  0094               L202:
1395  0094 4f            	clr	a
1396  0095 2010          	jra	L402
1397  0097               L002:
1398  0097 ae0127        	ldw	x,#295
1399  009a 89            	pushw	x
1400  009b ae0000        	ldw	x,#0
1401  009e 89            	pushw	x
1402  009f ae0000        	ldw	x,#L101
1403  00a2 cd0000        	call	_assert_failed
1405  00a5 5b04          	addw	sp,#4
1406  00a7               L402:
1407                     ; 296   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1409  00a7 7b0d          	ld	a,(OFST+10,sp)
1410  00a9 a155          	cp	a,#85
1411  00ab 2704          	jreq	L012
1412  00ad 0d0d          	tnz	(OFST+10,sp)
1413  00af 2603          	jrne	L602
1414  00b1               L012:
1415  00b1 4f            	clr	a
1416  00b2 2010          	jra	L212
1417  00b4               L602:
1418  00b4 ae0128        	ldw	x,#296
1419  00b7 89            	pushw	x
1420  00b8 ae0000        	ldw	x,#0
1421  00bb 89            	pushw	x
1422  00bc ae0000        	ldw	x,#L101
1423  00bf cd0000        	call	_assert_failed
1425  00c2 5b04          	addw	sp,#4
1426  00c4               L212:
1427                     ; 297   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
1429  00c4 7b0e          	ld	a,(OFST+11,sp)
1430  00c6 a12a          	cp	a,#42
1431  00c8 2704          	jreq	L612
1432  00ca 0d0e          	tnz	(OFST+11,sp)
1433  00cc 2603          	jrne	L412
1434  00ce               L612:
1435  00ce 4f            	clr	a
1436  00cf 2010          	jra	L022
1437  00d1               L412:
1438  00d1 ae0129        	ldw	x,#297
1439  00d4 89            	pushw	x
1440  00d5 ae0000        	ldw	x,#0
1441  00d8 89            	pushw	x
1442  00d9 ae0000        	ldw	x,#L101
1443  00dc cd0000        	call	_assert_failed
1445  00df 5b04          	addw	sp,#4
1446  00e1               L022:
1447                     ; 301   TIM1->CCER2 &= (uint8_t)(~( TIM1_CCER2_CC3E | TIM1_CCER2_CC3NE | 
1447                     ; 302                              TIM1_CCER2_CC3P | TIM1_CCER2_CC3NP));
1449  00e1 c6525d        	ld	a,21085
1450  00e4 a4f0          	and	a,#240
1451  00e6 c7525d        	ld	21085,a
1452                     ; 305   TIM1->CCER2 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState  & TIM1_CCER2_CC3E   ) |
1452                     ; 306                                      (uint8_t)(TIM1_OutputNState & TIM1_CCER2_CC3NE  )) | 
1452                     ; 307                            (uint8_t)((uint8_t)(TIM1_OCPolarity   & TIM1_CCER2_CC3P   ) | 
1452                     ; 308                                      (uint8_t)(TIM1_OCNPolarity  & TIM1_CCER2_CC3NP  )));
1454  00e9 7b0c          	ld	a,(OFST+9,sp)
1455  00eb a408          	and	a,#8
1456  00ed 6b03          	ld	(OFST+0,sp),a
1458  00ef 7b0b          	ld	a,(OFST+8,sp)
1459  00f1 a402          	and	a,#2
1460  00f3 1a03          	or	a,(OFST+0,sp)
1461  00f5 6b02          	ld	(OFST-1,sp),a
1463  00f7 7b08          	ld	a,(OFST+5,sp)
1464  00f9 a404          	and	a,#4
1465  00fb 6b01          	ld	(OFST-2,sp),a
1467  00fd 7b05          	ld	a,(OFST+2,sp)
1468  00ff a401          	and	a,#1
1469  0101 1a01          	or	a,(OFST-2,sp)
1470  0103 1a02          	or	a,(OFST-1,sp)
1471  0105 ca525d        	or	a,21085
1472  0108 c7525d        	ld	21085,a
1473                     ; 311   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1473                     ; 312                           (uint8_t)TIM1_OCMode);
1475  010b c6525a        	ld	a,21082
1476  010e a48f          	and	a,#143
1477  0110 1a04          	or	a,(OFST+1,sp)
1478  0112 c7525a        	ld	21082,a
1479                     ; 315   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS3 | TIM1_OISR_OIS3N));
1481  0115 c6526f        	ld	a,21103
1482  0118 a4cf          	and	a,#207
1483  011a c7526f        	ld	21103,a
1484                     ; 317   TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS3 & TIM1_OCIdleState) | 
1484                     ; 318                           (uint8_t)(TIM1_OISR_OIS3N & TIM1_OCNIdleState));
1486  011d 7b0e          	ld	a,(OFST+11,sp)
1487  011f a420          	and	a,#32
1488  0121 6b03          	ld	(OFST+0,sp),a
1490  0123 7b0d          	ld	a,(OFST+10,sp)
1491  0125 a410          	and	a,#16
1492  0127 1a03          	or	a,(OFST+0,sp)
1493  0129 ca526f        	or	a,21103
1494  012c c7526f        	ld	21103,a
1495                     ; 321   TIM1->CCR3H = (uint8_t)(TIM1_Pulse >> 8);
1497  012f 7b09          	ld	a,(OFST+6,sp)
1498  0131 c75269        	ld	21097,a
1499                     ; 322   TIM1->CCR3L = (uint8_t)(TIM1_Pulse);
1501  0134 7b0a          	ld	a,(OFST+7,sp)
1502  0136 c7526a        	ld	21098,a
1503                     ; 323 }
1506  0139 5b05          	addw	sp,#5
1507  013b 81            	ret
1582                     ; 338 void TIM1_OC4Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1582                     ; 339                   TIM1_OutputState_TypeDef TIM1_OutputState,
1582                     ; 340                   uint16_t TIM1_Pulse,
1582                     ; 341                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1582                     ; 342                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState)
1582                     ; 343 {
1583                     .text:	section	.text,new
1584  0000               _TIM1_OC4Init:
1586  0000 89            	pushw	x
1587  0001 88            	push	a
1588       00000001      OFST:	set	1
1591                     ; 345   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1593  0002 9e            	ld	a,xh
1594  0003 4d            	tnz	a
1595  0004 2719          	jreq	L622
1596  0006 9e            	ld	a,xh
1597  0007 a110          	cp	a,#16
1598  0009 2714          	jreq	L622
1599  000b 9e            	ld	a,xh
1600  000c a120          	cp	a,#32
1601  000e 270f          	jreq	L622
1602  0010 9e            	ld	a,xh
1603  0011 a130          	cp	a,#48
1604  0013 270a          	jreq	L622
1605  0015 9e            	ld	a,xh
1606  0016 a160          	cp	a,#96
1607  0018 2705          	jreq	L622
1608  001a 9e            	ld	a,xh
1609  001b a170          	cp	a,#112
1610  001d 2603          	jrne	L422
1611  001f               L622:
1612  001f 4f            	clr	a
1613  0020 2010          	jra	L032
1614  0022               L422:
1615  0022 ae0159        	ldw	x,#345
1616  0025 89            	pushw	x
1617  0026 ae0000        	ldw	x,#0
1618  0029 89            	pushw	x
1619  002a ae0000        	ldw	x,#L101
1620  002d cd0000        	call	_assert_failed
1622  0030 5b04          	addw	sp,#4
1623  0032               L032:
1624                     ; 346   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1626  0032 0d03          	tnz	(OFST+2,sp)
1627  0034 2706          	jreq	L432
1628  0036 7b03          	ld	a,(OFST+2,sp)
1629  0038 a111          	cp	a,#17
1630  003a 2603          	jrne	L232
1631  003c               L432:
1632  003c 4f            	clr	a
1633  003d 2010          	jra	L632
1634  003f               L232:
1635  003f ae015a        	ldw	x,#346
1636  0042 89            	pushw	x
1637  0043 ae0000        	ldw	x,#0
1638  0046 89            	pushw	x
1639  0047 ae0000        	ldw	x,#L101
1640  004a cd0000        	call	_assert_failed
1642  004d 5b04          	addw	sp,#4
1643  004f               L632:
1644                     ; 347   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1646  004f 0d08          	tnz	(OFST+7,sp)
1647  0051 2706          	jreq	L242
1648  0053 7b08          	ld	a,(OFST+7,sp)
1649  0055 a122          	cp	a,#34
1650  0057 2603          	jrne	L042
1651  0059               L242:
1652  0059 4f            	clr	a
1653  005a 2010          	jra	L442
1654  005c               L042:
1655  005c ae015b        	ldw	x,#347
1656  005f 89            	pushw	x
1657  0060 ae0000        	ldw	x,#0
1658  0063 89            	pushw	x
1659  0064 ae0000        	ldw	x,#L101
1660  0067 cd0000        	call	_assert_failed
1662  006a 5b04          	addw	sp,#4
1663  006c               L442:
1664                     ; 348   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1666  006c 7b09          	ld	a,(OFST+8,sp)
1667  006e a155          	cp	a,#85
1668  0070 2704          	jreq	L052
1669  0072 0d09          	tnz	(OFST+8,sp)
1670  0074 2603          	jrne	L642
1671  0076               L052:
1672  0076 4f            	clr	a
1673  0077 2010          	jra	L252
1674  0079               L642:
1675  0079 ae015c        	ldw	x,#348
1676  007c 89            	pushw	x
1677  007d ae0000        	ldw	x,#0
1678  0080 89            	pushw	x
1679  0081 ae0000        	ldw	x,#L101
1680  0084 cd0000        	call	_assert_failed
1682  0087 5b04          	addw	sp,#4
1683  0089               L252:
1684                     ; 351   TIM1->CCER2 &= (uint8_t)(~(TIM1_CCER2_CC4E | TIM1_CCER2_CC4P));
1686  0089 c6525d        	ld	a,21085
1687  008c a4cf          	and	a,#207
1688  008e c7525d        	ld	21085,a
1689                     ; 353   TIM1->CCER2 |= (uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER2_CC4E ) |  
1689                     ; 354                            (uint8_t)(TIM1_OCPolarity  & TIM1_CCER2_CC4P ));
1691  0091 7b08          	ld	a,(OFST+7,sp)
1692  0093 a420          	and	a,#32
1693  0095 6b01          	ld	(OFST+0,sp),a
1695  0097 7b03          	ld	a,(OFST+2,sp)
1696  0099 a410          	and	a,#16
1697  009b 1a01          	or	a,(OFST+0,sp)
1698  009d ca525d        	or	a,21085
1699  00a0 c7525d        	ld	21085,a
1700                     ; 357   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1700                     ; 358                           TIM1_OCMode);
1702  00a3 c6525b        	ld	a,21083
1703  00a6 a48f          	and	a,#143
1704  00a8 1a02          	or	a,(OFST+1,sp)
1705  00aa c7525b        	ld	21083,a
1706                     ; 361   if (TIM1_OCIdleState != TIM1_OCIDLESTATE_RESET)
1708  00ad 0d09          	tnz	(OFST+8,sp)
1709  00af 270a          	jreq	L734
1710                     ; 363     TIM1->OISR |= (uint8_t)(~TIM1_CCER2_CC4P);
1712  00b1 c6526f        	ld	a,21103
1713  00b4 aadf          	or	a,#223
1714  00b6 c7526f        	ld	21103,a
1716  00b9 2004          	jra	L144
1717  00bb               L734:
1718                     ; 367     TIM1->OISR &= (uint8_t)(~TIM1_OISR_OIS4);
1720  00bb 721d526f      	bres	21103,#6
1721  00bf               L144:
1722                     ; 371   TIM1->CCR4H = (uint8_t)(TIM1_Pulse >> 8);
1724  00bf 7b06          	ld	a,(OFST+5,sp)
1725  00c1 c7526b        	ld	21099,a
1726                     ; 372   TIM1->CCR4L = (uint8_t)(TIM1_Pulse);
1728  00c4 7b07          	ld	a,(OFST+6,sp)
1729  00c6 c7526c        	ld	21100,a
1730                     ; 373 }
1733  00c9 5b03          	addw	sp,#3
1734  00cb 81            	ret
1940                     ; 388 void TIM1_BDTRConfig(TIM1_OSSIState_TypeDef TIM1_OSSIState,
1940                     ; 389                      TIM1_LockLevel_TypeDef TIM1_LockLevel,
1940                     ; 390                      uint8_t TIM1_DeadTime,
1940                     ; 391                      TIM1_BreakState_TypeDef TIM1_Break,
1940                     ; 392                      TIM1_BreakPolarity_TypeDef TIM1_BreakPolarity,
1940                     ; 393                      TIM1_AutomaticOutput_TypeDef TIM1_AutomaticOutput)
1940                     ; 394 {
1941                     .text:	section	.text,new
1942  0000               _TIM1_BDTRConfig:
1944  0000 89            	pushw	x
1945  0001 88            	push	a
1946       00000001      OFST:	set	1
1949                     ; 396   assert_param(IS_TIM1_OSSI_STATE_OK(TIM1_OSSIState));
1951  0002 9e            	ld	a,xh
1952  0003 a104          	cp	a,#4
1953  0005 2704          	jreq	L062
1954  0007 9e            	ld	a,xh
1955  0008 4d            	tnz	a
1956  0009 2603          	jrne	L652
1957  000b               L062:
1958  000b 4f            	clr	a
1959  000c 2010          	jra	L262
1960  000e               L652:
1961  000e ae018c        	ldw	x,#396
1962  0011 89            	pushw	x
1963  0012 ae0000        	ldw	x,#0
1964  0015 89            	pushw	x
1965  0016 ae0000        	ldw	x,#L101
1966  0019 cd0000        	call	_assert_failed
1968  001c 5b04          	addw	sp,#4
1969  001e               L262:
1970                     ; 397   assert_param(IS_TIM1_LOCK_LEVEL_OK(TIM1_LockLevel));
1972  001e 0d03          	tnz	(OFST+2,sp)
1973  0020 2712          	jreq	L662
1974  0022 7b03          	ld	a,(OFST+2,sp)
1975  0024 a101          	cp	a,#1
1976  0026 270c          	jreq	L662
1977  0028 7b03          	ld	a,(OFST+2,sp)
1978  002a a102          	cp	a,#2
1979  002c 2706          	jreq	L662
1980  002e 7b03          	ld	a,(OFST+2,sp)
1981  0030 a103          	cp	a,#3
1982  0032 2603          	jrne	L462
1983  0034               L662:
1984  0034 4f            	clr	a
1985  0035 2010          	jra	L072
1986  0037               L462:
1987  0037 ae018d        	ldw	x,#397
1988  003a 89            	pushw	x
1989  003b ae0000        	ldw	x,#0
1990  003e 89            	pushw	x
1991  003f ae0000        	ldw	x,#L101
1992  0042 cd0000        	call	_assert_failed
1994  0045 5b04          	addw	sp,#4
1995  0047               L072:
1996                     ; 398   assert_param(IS_TIM1_BREAK_STATE_OK(TIM1_Break));
1998  0047 7b07          	ld	a,(OFST+6,sp)
1999  0049 a110          	cp	a,#16
2000  004b 2704          	jreq	L472
2001  004d 0d07          	tnz	(OFST+6,sp)
2002  004f 2603          	jrne	L272
2003  0051               L472:
2004  0051 4f            	clr	a
2005  0052 2010          	jra	L672
2006  0054               L272:
2007  0054 ae018e        	ldw	x,#398
2008  0057 89            	pushw	x
2009  0058 ae0000        	ldw	x,#0
2010  005b 89            	pushw	x
2011  005c ae0000        	ldw	x,#L101
2012  005f cd0000        	call	_assert_failed
2014  0062 5b04          	addw	sp,#4
2015  0064               L672:
2016                     ; 399   assert_param(IS_TIM1_BREAK_POLARITY_OK(TIM1_BreakPolarity));
2018  0064 0d08          	tnz	(OFST+7,sp)
2019  0066 2706          	jreq	L203
2020  0068 7b08          	ld	a,(OFST+7,sp)
2021  006a a120          	cp	a,#32
2022  006c 2603          	jrne	L003
2023  006e               L203:
2024  006e 4f            	clr	a
2025  006f 2010          	jra	L403
2026  0071               L003:
2027  0071 ae018f        	ldw	x,#399
2028  0074 89            	pushw	x
2029  0075 ae0000        	ldw	x,#0
2030  0078 89            	pushw	x
2031  0079 ae0000        	ldw	x,#L101
2032  007c cd0000        	call	_assert_failed
2034  007f 5b04          	addw	sp,#4
2035  0081               L403:
2036                     ; 400   assert_param(IS_TIM1_AUTOMATIC_OUTPUT_STATE_OK(TIM1_AutomaticOutput));
2038  0081 7b09          	ld	a,(OFST+8,sp)
2039  0083 a140          	cp	a,#64
2040  0085 2704          	jreq	L013
2041  0087 0d09          	tnz	(OFST+8,sp)
2042  0089 2603          	jrne	L603
2043  008b               L013:
2044  008b 4f            	clr	a
2045  008c 2010          	jra	L213
2046  008e               L603:
2047  008e ae0190        	ldw	x,#400
2048  0091 89            	pushw	x
2049  0092 ae0000        	ldw	x,#0
2050  0095 89            	pushw	x
2051  0096 ae0000        	ldw	x,#L101
2052  0099 cd0000        	call	_assert_failed
2054  009c 5b04          	addw	sp,#4
2055  009e               L213:
2056                     ; 402   TIM1->DTR = (uint8_t)(TIM1_DeadTime);
2058  009e 7b06          	ld	a,(OFST+5,sp)
2059  00a0 c7526e        	ld	21102,a
2060                     ; 406   TIM1->BKR  =  (uint8_t)((uint8_t)(TIM1_OSSIState | (uint8_t)TIM1_LockLevel)  | 
2060                     ; 407                           (uint8_t)((uint8_t)(TIM1_Break | (uint8_t)TIM1_BreakPolarity)  | 
2060                     ; 408                           (uint8_t)TIM1_AutomaticOutput));
2062  00a3 7b07          	ld	a,(OFST+6,sp)
2063  00a5 1a08          	or	a,(OFST+7,sp)
2064  00a7 1a09          	or	a,(OFST+8,sp)
2065  00a9 6b01          	ld	(OFST+0,sp),a
2067  00ab 7b02          	ld	a,(OFST+1,sp)
2068  00ad 1a03          	or	a,(OFST+2,sp)
2069  00af 1a01          	or	a,(OFST+0,sp)
2070  00b1 c7526d        	ld	21101,a
2071                     ; 409 }
2074  00b4 5b03          	addw	sp,#3
2075  00b6 81            	ret
2278                     ; 423 void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel,
2278                     ; 424                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
2278                     ; 425                  TIM1_ICSelection_TypeDef TIM1_ICSelection,
2278                     ; 426                  TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
2278                     ; 427                  uint8_t TIM1_ICFilter)
2278                     ; 428 {
2279                     .text:	section	.text,new
2280  0000               _TIM1_ICInit:
2282  0000 89            	pushw	x
2283       00000000      OFST:	set	0
2286                     ; 430   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
2288  0001 9e            	ld	a,xh
2289  0002 4d            	tnz	a
2290  0003 270f          	jreq	L023
2291  0005 9e            	ld	a,xh
2292  0006 a101          	cp	a,#1
2293  0008 270a          	jreq	L023
2294  000a 9e            	ld	a,xh
2295  000b a102          	cp	a,#2
2296  000d 2705          	jreq	L023
2297  000f 9e            	ld	a,xh
2298  0010 a103          	cp	a,#3
2299  0012 2603          	jrne	L613
2300  0014               L023:
2301  0014 4f            	clr	a
2302  0015 2010          	jra	L223
2303  0017               L613:
2304  0017 ae01ae        	ldw	x,#430
2305  001a 89            	pushw	x
2306  001b ae0000        	ldw	x,#0
2307  001e 89            	pushw	x
2308  001f ae0000        	ldw	x,#L101
2309  0022 cd0000        	call	_assert_failed
2311  0025 5b04          	addw	sp,#4
2312  0027               L223:
2313                     ; 431   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2315  0027 0d02          	tnz	(OFST+2,sp)
2316  0029 2706          	jreq	L623
2317  002b 7b02          	ld	a,(OFST+2,sp)
2318  002d a101          	cp	a,#1
2319  002f 2603          	jrne	L423
2320  0031               L623:
2321  0031 4f            	clr	a
2322  0032 2010          	jra	L033
2323  0034               L423:
2324  0034 ae01af        	ldw	x,#431
2325  0037 89            	pushw	x
2326  0038 ae0000        	ldw	x,#0
2327  003b 89            	pushw	x
2328  003c ae0000        	ldw	x,#L101
2329  003f cd0000        	call	_assert_failed
2331  0042 5b04          	addw	sp,#4
2332  0044               L033:
2333                     ; 432   assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
2335  0044 7b05          	ld	a,(OFST+5,sp)
2336  0046 a101          	cp	a,#1
2337  0048 270c          	jreq	L433
2338  004a 7b05          	ld	a,(OFST+5,sp)
2339  004c a102          	cp	a,#2
2340  004e 2706          	jreq	L433
2341  0050 7b05          	ld	a,(OFST+5,sp)
2342  0052 a103          	cp	a,#3
2343  0054 2603          	jrne	L233
2344  0056               L433:
2345  0056 4f            	clr	a
2346  0057 2010          	jra	L633
2347  0059               L233:
2348  0059 ae01b0        	ldw	x,#432
2349  005c 89            	pushw	x
2350  005d ae0000        	ldw	x,#0
2351  0060 89            	pushw	x
2352  0061 ae0000        	ldw	x,#L101
2353  0064 cd0000        	call	_assert_failed
2355  0067 5b04          	addw	sp,#4
2356  0069               L633:
2357                     ; 433   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
2359  0069 0d06          	tnz	(OFST+6,sp)
2360  006b 2712          	jreq	L243
2361  006d 7b06          	ld	a,(OFST+6,sp)
2362  006f a104          	cp	a,#4
2363  0071 270c          	jreq	L243
2364  0073 7b06          	ld	a,(OFST+6,sp)
2365  0075 a108          	cp	a,#8
2366  0077 2706          	jreq	L243
2367  0079 7b06          	ld	a,(OFST+6,sp)
2368  007b a10c          	cp	a,#12
2369  007d 2603          	jrne	L043
2370  007f               L243:
2371  007f 4f            	clr	a
2372  0080 2010          	jra	L443
2373  0082               L043:
2374  0082 ae01b1        	ldw	x,#433
2375  0085 89            	pushw	x
2376  0086 ae0000        	ldw	x,#0
2377  0089 89            	pushw	x
2378  008a ae0000        	ldw	x,#L101
2379  008d cd0000        	call	_assert_failed
2381  0090 5b04          	addw	sp,#4
2382  0092               L443:
2383                     ; 434   assert_param(IS_TIM1_IC_FILTER_OK(TIM1_ICFilter));
2385  0092 7b07          	ld	a,(OFST+7,sp)
2386  0094 a110          	cp	a,#16
2387  0096 2403          	jruge	L643
2388  0098 4f            	clr	a
2389  0099 2010          	jra	L053
2390  009b               L643:
2391  009b ae01b2        	ldw	x,#434
2392  009e 89            	pushw	x
2393  009f ae0000        	ldw	x,#0
2394  00a2 89            	pushw	x
2395  00a3 ae0000        	ldw	x,#L101
2396  00a6 cd0000        	call	_assert_failed
2398  00a9 5b04          	addw	sp,#4
2399  00ab               L053:
2400                     ; 436   if (TIM1_Channel == TIM1_CHANNEL_1)
2402  00ab 0d01          	tnz	(OFST+1,sp)
2403  00ad 2614          	jrne	L176
2404                     ; 439     TI1_Config((uint8_t)TIM1_ICPolarity,
2404                     ; 440                (uint8_t)TIM1_ICSelection,
2404                     ; 441                (uint8_t)TIM1_ICFilter);
2406  00af 7b07          	ld	a,(OFST+7,sp)
2407  00b1 88            	push	a
2408  00b2 7b06          	ld	a,(OFST+6,sp)
2409  00b4 97            	ld	xl,a
2410  00b5 7b03          	ld	a,(OFST+3,sp)
2411  00b7 95            	ld	xh,a
2412  00b8 cd0000        	call	L3_TI1_Config
2414  00bb 84            	pop	a
2415                     ; 443     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2417  00bc 7b06          	ld	a,(OFST+6,sp)
2418  00be cd0000        	call	_TIM1_SetIC1Prescaler
2421  00c1 2046          	jra	L376
2422  00c3               L176:
2423                     ; 445   else if (TIM1_Channel == TIM1_CHANNEL_2)
2425  00c3 7b01          	ld	a,(OFST+1,sp)
2426  00c5 a101          	cp	a,#1
2427  00c7 2614          	jrne	L576
2428                     ; 448     TI2_Config((uint8_t)TIM1_ICPolarity,
2428                     ; 449                (uint8_t)TIM1_ICSelection,
2428                     ; 450                (uint8_t)TIM1_ICFilter);
2430  00c9 7b07          	ld	a,(OFST+7,sp)
2431  00cb 88            	push	a
2432  00cc 7b06          	ld	a,(OFST+6,sp)
2433  00ce 97            	ld	xl,a
2434  00cf 7b03          	ld	a,(OFST+3,sp)
2435  00d1 95            	ld	xh,a
2436  00d2 cd0000        	call	L5_TI2_Config
2438  00d5 84            	pop	a
2439                     ; 452     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2441  00d6 7b06          	ld	a,(OFST+6,sp)
2442  00d8 cd0000        	call	_TIM1_SetIC2Prescaler
2445  00db 202c          	jra	L376
2446  00dd               L576:
2447                     ; 454   else if (TIM1_Channel == TIM1_CHANNEL_3)
2449  00dd 7b01          	ld	a,(OFST+1,sp)
2450  00df a102          	cp	a,#2
2451  00e1 2614          	jrne	L107
2452                     ; 457     TI3_Config((uint8_t)TIM1_ICPolarity,
2452                     ; 458                (uint8_t)TIM1_ICSelection,
2452                     ; 459                (uint8_t)TIM1_ICFilter);
2454  00e3 7b07          	ld	a,(OFST+7,sp)
2455  00e5 88            	push	a
2456  00e6 7b06          	ld	a,(OFST+6,sp)
2457  00e8 97            	ld	xl,a
2458  00e9 7b03          	ld	a,(OFST+3,sp)
2459  00eb 95            	ld	xh,a
2460  00ec cd0000        	call	L7_TI3_Config
2462  00ef 84            	pop	a
2463                     ; 461     TIM1_SetIC3Prescaler(TIM1_ICPrescaler);
2465  00f0 7b06          	ld	a,(OFST+6,sp)
2466  00f2 cd0000        	call	_TIM1_SetIC3Prescaler
2469  00f5 2012          	jra	L376
2470  00f7               L107:
2471                     ; 466     TI4_Config((uint8_t)TIM1_ICPolarity,
2471                     ; 467                (uint8_t)TIM1_ICSelection,
2471                     ; 468                (uint8_t)TIM1_ICFilter);
2473  00f7 7b07          	ld	a,(OFST+7,sp)
2474  00f9 88            	push	a
2475  00fa 7b06          	ld	a,(OFST+6,sp)
2476  00fc 97            	ld	xl,a
2477  00fd 7b03          	ld	a,(OFST+3,sp)
2478  00ff 95            	ld	xh,a
2479  0100 cd0000        	call	L11_TI4_Config
2481  0103 84            	pop	a
2482                     ; 470     TIM1_SetIC4Prescaler(TIM1_ICPrescaler);
2484  0104 7b06          	ld	a,(OFST+6,sp)
2485  0106 cd0000        	call	_TIM1_SetIC4Prescaler
2487  0109               L376:
2488                     ; 472 }
2491  0109 85            	popw	x
2492  010a 81            	ret
2589                     ; 488 void TIM1_PWMIConfig(TIM1_Channel_TypeDef TIM1_Channel,
2589                     ; 489                      TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
2589                     ; 490                      TIM1_ICSelection_TypeDef TIM1_ICSelection,
2589                     ; 491                      TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
2589                     ; 492                      uint8_t TIM1_ICFilter)
2589                     ; 493 {
2590                     .text:	section	.text,new
2591  0000               _TIM1_PWMIConfig:
2593  0000 89            	pushw	x
2594  0001 89            	pushw	x
2595       00000002      OFST:	set	2
2598                     ; 494   uint8_t icpolarity = TIM1_ICPOLARITY_RISING;
2600                     ; 495   uint8_t icselection = TIM1_ICSELECTION_DIRECTTI;
2602                     ; 498   assert_param(IS_TIM1_PWMI_CHANNEL_OK(TIM1_Channel));
2604  0002 9e            	ld	a,xh
2605  0003 4d            	tnz	a
2606  0004 2705          	jreq	L653
2607  0006 9e            	ld	a,xh
2608  0007 a101          	cp	a,#1
2609  0009 2603          	jrne	L453
2610  000b               L653:
2611  000b 4f            	clr	a
2612  000c 2010          	jra	L063
2613  000e               L453:
2614  000e ae01f2        	ldw	x,#498
2615  0011 89            	pushw	x
2616  0012 ae0000        	ldw	x,#0
2617  0015 89            	pushw	x
2618  0016 ae0000        	ldw	x,#L101
2619  0019 cd0000        	call	_assert_failed
2621  001c 5b04          	addw	sp,#4
2622  001e               L063:
2623                     ; 499   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2625  001e 0d04          	tnz	(OFST+2,sp)
2626  0020 2706          	jreq	L463
2627  0022 7b04          	ld	a,(OFST+2,sp)
2628  0024 a101          	cp	a,#1
2629  0026 2603          	jrne	L263
2630  0028               L463:
2631  0028 4f            	clr	a
2632  0029 2010          	jra	L663
2633  002b               L263:
2634  002b ae01f3        	ldw	x,#499
2635  002e 89            	pushw	x
2636  002f ae0000        	ldw	x,#0
2637  0032 89            	pushw	x
2638  0033 ae0000        	ldw	x,#L101
2639  0036 cd0000        	call	_assert_failed
2641  0039 5b04          	addw	sp,#4
2642  003b               L663:
2643                     ; 500   assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
2645  003b 7b07          	ld	a,(OFST+5,sp)
2646  003d a101          	cp	a,#1
2647  003f 270c          	jreq	L273
2648  0041 7b07          	ld	a,(OFST+5,sp)
2649  0043 a102          	cp	a,#2
2650  0045 2706          	jreq	L273
2651  0047 7b07          	ld	a,(OFST+5,sp)
2652  0049 a103          	cp	a,#3
2653  004b 2603          	jrne	L073
2654  004d               L273:
2655  004d 4f            	clr	a
2656  004e 2010          	jra	L473
2657  0050               L073:
2658  0050 ae01f4        	ldw	x,#500
2659  0053 89            	pushw	x
2660  0054 ae0000        	ldw	x,#0
2661  0057 89            	pushw	x
2662  0058 ae0000        	ldw	x,#L101
2663  005b cd0000        	call	_assert_failed
2665  005e 5b04          	addw	sp,#4
2666  0060               L473:
2667                     ; 501   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
2669  0060 0d08          	tnz	(OFST+6,sp)
2670  0062 2712          	jreq	L004
2671  0064 7b08          	ld	a,(OFST+6,sp)
2672  0066 a104          	cp	a,#4
2673  0068 270c          	jreq	L004
2674  006a 7b08          	ld	a,(OFST+6,sp)
2675  006c a108          	cp	a,#8
2676  006e 2706          	jreq	L004
2677  0070 7b08          	ld	a,(OFST+6,sp)
2678  0072 a10c          	cp	a,#12
2679  0074 2603          	jrne	L673
2680  0076               L004:
2681  0076 4f            	clr	a
2682  0077 2010          	jra	L204
2683  0079               L673:
2684  0079 ae01f5        	ldw	x,#501
2685  007c 89            	pushw	x
2686  007d ae0000        	ldw	x,#0
2687  0080 89            	pushw	x
2688  0081 ae0000        	ldw	x,#L101
2689  0084 cd0000        	call	_assert_failed
2691  0087 5b04          	addw	sp,#4
2692  0089               L204:
2693                     ; 504   if (TIM1_ICPolarity != TIM1_ICPOLARITY_FALLING)
2695  0089 7b04          	ld	a,(OFST+2,sp)
2696  008b a101          	cp	a,#1
2697  008d 2706          	jreq	L357
2698                     ; 506     icpolarity = TIM1_ICPOLARITY_FALLING;
2700  008f a601          	ld	a,#1
2701  0091 6b01          	ld	(OFST-1,sp),a
2704  0093 2002          	jra	L557
2705  0095               L357:
2706                     ; 510     icpolarity = TIM1_ICPOLARITY_RISING;
2708  0095 0f01          	clr	(OFST-1,sp)
2710  0097               L557:
2711                     ; 514   if (TIM1_ICSelection == TIM1_ICSELECTION_DIRECTTI)
2713  0097 7b07          	ld	a,(OFST+5,sp)
2714  0099 a101          	cp	a,#1
2715  009b 2606          	jrne	L757
2716                     ; 516     icselection = TIM1_ICSELECTION_INDIRECTTI;
2718  009d a602          	ld	a,#2
2719  009f 6b02          	ld	(OFST+0,sp),a
2722  00a1 2004          	jra	L167
2723  00a3               L757:
2724                     ; 520     icselection = TIM1_ICSELECTION_DIRECTTI;
2726  00a3 a601          	ld	a,#1
2727  00a5 6b02          	ld	(OFST+0,sp),a
2729  00a7               L167:
2730                     ; 523   if (TIM1_Channel == TIM1_CHANNEL_1)
2732  00a7 0d03          	tnz	(OFST+1,sp)
2733  00a9 2626          	jrne	L367
2734                     ; 526     TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
2734                     ; 527                (uint8_t)TIM1_ICFilter);
2736  00ab 7b09          	ld	a,(OFST+7,sp)
2737  00ad 88            	push	a
2738  00ae 7b08          	ld	a,(OFST+6,sp)
2739  00b0 97            	ld	xl,a
2740  00b1 7b05          	ld	a,(OFST+3,sp)
2741  00b3 95            	ld	xh,a
2742  00b4 cd0000        	call	L3_TI1_Config
2744  00b7 84            	pop	a
2745                     ; 530     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2747  00b8 7b08          	ld	a,(OFST+6,sp)
2748  00ba cd0000        	call	_TIM1_SetIC1Prescaler
2750                     ; 533     TI2_Config(icpolarity, icselection, TIM1_ICFilter);
2752  00bd 7b09          	ld	a,(OFST+7,sp)
2753  00bf 88            	push	a
2754  00c0 7b03          	ld	a,(OFST+1,sp)
2755  00c2 97            	ld	xl,a
2756  00c3 7b02          	ld	a,(OFST+0,sp)
2757  00c5 95            	ld	xh,a
2758  00c6 cd0000        	call	L5_TI2_Config
2760  00c9 84            	pop	a
2761                     ; 536     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2763  00ca 7b08          	ld	a,(OFST+6,sp)
2764  00cc cd0000        	call	_TIM1_SetIC2Prescaler
2767  00cf 2024          	jra	L567
2768  00d1               L367:
2769                     ; 541     TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
2769                     ; 542                (uint8_t)TIM1_ICFilter);
2771  00d1 7b09          	ld	a,(OFST+7,sp)
2772  00d3 88            	push	a
2773  00d4 7b08          	ld	a,(OFST+6,sp)
2774  00d6 97            	ld	xl,a
2775  00d7 7b05          	ld	a,(OFST+3,sp)
2776  00d9 95            	ld	xh,a
2777  00da cd0000        	call	L5_TI2_Config
2779  00dd 84            	pop	a
2780                     ; 545     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2782  00de 7b08          	ld	a,(OFST+6,sp)
2783  00e0 cd0000        	call	_TIM1_SetIC2Prescaler
2785                     ; 548     TI1_Config(icpolarity, icselection, TIM1_ICFilter);
2787  00e3 7b09          	ld	a,(OFST+7,sp)
2788  00e5 88            	push	a
2789  00e6 7b03          	ld	a,(OFST+1,sp)
2790  00e8 97            	ld	xl,a
2791  00e9 7b02          	ld	a,(OFST+0,sp)
2792  00eb 95            	ld	xh,a
2793  00ec cd0000        	call	L3_TI1_Config
2795  00ef 84            	pop	a
2796                     ; 551     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2798  00f0 7b08          	ld	a,(OFST+6,sp)
2799  00f2 cd0000        	call	_TIM1_SetIC1Prescaler
2801  00f5               L567:
2802                     ; 553 }
2805  00f5 5b04          	addw	sp,#4
2806  00f7 81            	ret
2862                     ; 561 void TIM1_Cmd(FunctionalState NewState)
2862                     ; 562 {
2863                     .text:	section	.text,new
2864  0000               _TIM1_Cmd:
2866  0000 88            	push	a
2867       00000000      OFST:	set	0
2870                     ; 564   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2872  0001 4d            	tnz	a
2873  0002 2704          	jreq	L014
2874  0004 a101          	cp	a,#1
2875  0006 2603          	jrne	L604
2876  0008               L014:
2877  0008 4f            	clr	a
2878  0009 2010          	jra	L214
2879  000b               L604:
2880  000b ae0234        	ldw	x,#564
2881  000e 89            	pushw	x
2882  000f ae0000        	ldw	x,#0
2883  0012 89            	pushw	x
2884  0013 ae0000        	ldw	x,#L101
2885  0016 cd0000        	call	_assert_failed
2887  0019 5b04          	addw	sp,#4
2888  001b               L214:
2889                     ; 567   if (NewState != DISABLE)
2891  001b 0d01          	tnz	(OFST+1,sp)
2892  001d 2706          	jreq	L5101
2893                     ; 569     TIM1->CR1 |= TIM1_CR1_CEN;
2895  001f 72105250      	bset	21072,#0
2897  0023 2004          	jra	L7101
2898  0025               L5101:
2899                     ; 573     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_CEN);
2901  0025 72115250      	bres	21072,#0
2902  0029               L7101:
2903                     ; 575 }
2906  0029 84            	pop	a
2907  002a 81            	ret
2944                     ; 583 void TIM1_CtrlPWMOutputs(FunctionalState NewState)
2944                     ; 584 {
2945                     .text:	section	.text,new
2946  0000               _TIM1_CtrlPWMOutputs:
2948  0000 88            	push	a
2949       00000000      OFST:	set	0
2952                     ; 586   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2954  0001 4d            	tnz	a
2955  0002 2704          	jreq	L024
2956  0004 a101          	cp	a,#1
2957  0006 2603          	jrne	L614
2958  0008               L024:
2959  0008 4f            	clr	a
2960  0009 2010          	jra	L224
2961  000b               L614:
2962  000b ae024a        	ldw	x,#586
2963  000e 89            	pushw	x
2964  000f ae0000        	ldw	x,#0
2965  0012 89            	pushw	x
2966  0013 ae0000        	ldw	x,#L101
2967  0016 cd0000        	call	_assert_failed
2969  0019 5b04          	addw	sp,#4
2970  001b               L224:
2971                     ; 590   if (NewState != DISABLE)
2973  001b 0d01          	tnz	(OFST+1,sp)
2974  001d 2706          	jreq	L7301
2975                     ; 592     TIM1->BKR |= TIM1_BKR_MOE;
2977  001f 721e526d      	bset	21101,#7
2979  0023 2004          	jra	L1401
2980  0025               L7301:
2981                     ; 596     TIM1->BKR &= (uint8_t)(~TIM1_BKR_MOE);
2983  0025 721f526d      	bres	21101,#7
2984  0029               L1401:
2985                     ; 598 }
2988  0029 84            	pop	a
2989  002a 81            	ret
3097                     ; 617 void TIM1_ITConfig(TIM1_IT_TypeDef  TIM1_IT, FunctionalState NewState)
3097                     ; 618 {
3098                     .text:	section	.text,new
3099  0000               _TIM1_ITConfig:
3101  0000 89            	pushw	x
3102       00000000      OFST:	set	0
3105                     ; 620   assert_param(IS_TIM1_IT_OK(TIM1_IT));
3107  0001 9e            	ld	a,xh
3108  0002 4d            	tnz	a
3109  0003 2703          	jreq	L624
3110  0005 4f            	clr	a
3111  0006 2010          	jra	L034
3112  0008               L624:
3113  0008 ae026c        	ldw	x,#620
3114  000b 89            	pushw	x
3115  000c ae0000        	ldw	x,#0
3116  000f 89            	pushw	x
3117  0010 ae0000        	ldw	x,#L101
3118  0013 cd0000        	call	_assert_failed
3120  0016 5b04          	addw	sp,#4
3121  0018               L034:
3122                     ; 621   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3124  0018 0d02          	tnz	(OFST+2,sp)
3125  001a 2706          	jreq	L434
3126  001c 7b02          	ld	a,(OFST+2,sp)
3127  001e a101          	cp	a,#1
3128  0020 2603          	jrne	L234
3129  0022               L434:
3130  0022 4f            	clr	a
3131  0023 2010          	jra	L634
3132  0025               L234:
3133  0025 ae026d        	ldw	x,#621
3134  0028 89            	pushw	x
3135  0029 ae0000        	ldw	x,#0
3136  002c 89            	pushw	x
3137  002d ae0000        	ldw	x,#L101
3138  0030 cd0000        	call	_assert_failed
3140  0033 5b04          	addw	sp,#4
3141  0035               L634:
3142                     ; 623   if (NewState != DISABLE)
3144  0035 0d02          	tnz	(OFST+2,sp)
3145  0037 270a          	jreq	L1111
3146                     ; 626     TIM1->IER |= (uint8_t)TIM1_IT;
3148  0039 c65254        	ld	a,21076
3149  003c 1a01          	or	a,(OFST+1,sp)
3150  003e c75254        	ld	21076,a
3152  0041 2009          	jra	L3111
3153  0043               L1111:
3154                     ; 631     TIM1->IER &= (uint8_t)(~(uint8_t)TIM1_IT);
3156  0043 7b01          	ld	a,(OFST+1,sp)
3157  0045 43            	cpl	a
3158  0046 c45254        	and	a,21076
3159  0049 c75254        	ld	21076,a
3160  004c               L3111:
3161                     ; 633 }
3164  004c 85            	popw	x
3165  004d 81            	ret
3189                     ; 640 void TIM1_InternalClockConfig(void)
3189                     ; 641 {
3190                     .text:	section	.text,new
3191  0000               _TIM1_InternalClockConfig:
3195                     ; 643   TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_SMS);
3197  0000 c65252        	ld	a,21074
3198  0003 a4f8          	and	a,#248
3199  0005 c75252        	ld	21074,a
3200                     ; 644 }
3203  0008 81            	ret
3321                     ; 662 void TIM1_ETRClockMode1Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3321                     ; 663                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3321                     ; 664                               uint8_t ExtTRGFilter)
3321                     ; 665 {
3322                     .text:	section	.text,new
3323  0000               _TIM1_ETRClockMode1Config:
3325  0000 89            	pushw	x
3326       00000000      OFST:	set	0
3329                     ; 667   assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
3331  0001 9e            	ld	a,xh
3332  0002 4d            	tnz	a
3333  0003 270f          	jreq	L644
3334  0005 9e            	ld	a,xh
3335  0006 a110          	cp	a,#16
3336  0008 270a          	jreq	L644
3337  000a 9e            	ld	a,xh
3338  000b a120          	cp	a,#32
3339  000d 2705          	jreq	L644
3340  000f 9e            	ld	a,xh
3341  0010 a130          	cp	a,#48
3342  0012 2603          	jrne	L444
3343  0014               L644:
3344  0014 4f            	clr	a
3345  0015 2010          	jra	L054
3346  0017               L444:
3347  0017 ae029b        	ldw	x,#667
3348  001a 89            	pushw	x
3349  001b ae0000        	ldw	x,#0
3350  001e 89            	pushw	x
3351  001f ae0000        	ldw	x,#L101
3352  0022 cd0000        	call	_assert_failed
3354  0025 5b04          	addw	sp,#4
3355  0027               L054:
3356                     ; 668   assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
3358  0027 7b02          	ld	a,(OFST+2,sp)
3359  0029 a180          	cp	a,#128
3360  002b 2704          	jreq	L454
3361  002d 0d02          	tnz	(OFST+2,sp)
3362  002f 2603          	jrne	L254
3363  0031               L454:
3364  0031 4f            	clr	a
3365  0032 2010          	jra	L654
3366  0034               L254:
3367  0034 ae029c        	ldw	x,#668
3368  0037 89            	pushw	x
3369  0038 ae0000        	ldw	x,#0
3370  003b 89            	pushw	x
3371  003c ae0000        	ldw	x,#L101
3372  003f cd0000        	call	_assert_failed
3374  0042 5b04          	addw	sp,#4
3375  0044               L654:
3376                     ; 671   TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
3378  0044 7b05          	ld	a,(OFST+5,sp)
3379  0046 88            	push	a
3380  0047 7b03          	ld	a,(OFST+3,sp)
3381  0049 97            	ld	xl,a
3382  004a 7b02          	ld	a,(OFST+2,sp)
3383  004c 95            	ld	xh,a
3384  004d cd0000        	call	_TIM1_ETRConfig
3386  0050 84            	pop	a
3387                     ; 674   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~(uint8_t)(TIM1_SMCR_SMS | TIM1_SMCR_TS )))
3387                     ; 675                          | (uint8_t)((uint8_t)TIM1_SLAVEMODE_EXTERNAL1 | TIM1_TS_ETRF ));
3389  0051 c65252        	ld	a,21074
3390  0054 a488          	and	a,#136
3391  0056 aa77          	or	a,#119
3392  0058 c75252        	ld	21074,a
3393                     ; 676 }
3396  005b 85            	popw	x
3397  005c 81            	ret
3456                     ; 694 void TIM1_ETRClockMode2Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3456                     ; 695                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3456                     ; 696                               uint8_t ExtTRGFilter)
3456                     ; 697 {
3457                     .text:	section	.text,new
3458  0000               _TIM1_ETRClockMode2Config:
3460  0000 89            	pushw	x
3461       00000000      OFST:	set	0
3464                     ; 699   assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
3466  0001 9e            	ld	a,xh
3467  0002 4d            	tnz	a
3468  0003 270f          	jreq	L464
3469  0005 9e            	ld	a,xh
3470  0006 a110          	cp	a,#16
3471  0008 270a          	jreq	L464
3472  000a 9e            	ld	a,xh
3473  000b a120          	cp	a,#32
3474  000d 2705          	jreq	L464
3475  000f 9e            	ld	a,xh
3476  0010 a130          	cp	a,#48
3477  0012 2603          	jrne	L264
3478  0014               L464:
3479  0014 4f            	clr	a
3480  0015 2010          	jra	L664
3481  0017               L264:
3482  0017 ae02bb        	ldw	x,#699
3483  001a 89            	pushw	x
3484  001b ae0000        	ldw	x,#0
3485  001e 89            	pushw	x
3486  001f ae0000        	ldw	x,#L101
3487  0022 cd0000        	call	_assert_failed
3489  0025 5b04          	addw	sp,#4
3490  0027               L664:
3491                     ; 700   assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
3493  0027 7b02          	ld	a,(OFST+2,sp)
3494  0029 a180          	cp	a,#128
3495  002b 2704          	jreq	L274
3496  002d 0d02          	tnz	(OFST+2,sp)
3497  002f 2603          	jrne	L074
3498  0031               L274:
3499  0031 4f            	clr	a
3500  0032 2010          	jra	L474
3501  0034               L074:
3502  0034 ae02bc        	ldw	x,#700
3503  0037 89            	pushw	x
3504  0038 ae0000        	ldw	x,#0
3505  003b 89            	pushw	x
3506  003c ae0000        	ldw	x,#L101
3507  003f cd0000        	call	_assert_failed
3509  0042 5b04          	addw	sp,#4
3510  0044               L474:
3511                     ; 703   TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
3513  0044 7b05          	ld	a,(OFST+5,sp)
3514  0046 88            	push	a
3515  0047 7b03          	ld	a,(OFST+3,sp)
3516  0049 97            	ld	xl,a
3517  004a 7b02          	ld	a,(OFST+2,sp)
3518  004c 95            	ld	xh,a
3519  004d cd0000        	call	_TIM1_ETRConfig
3521  0050 84            	pop	a
3522                     ; 706   TIM1->ETR |= TIM1_ETR_ECE;
3524  0051 721c5253      	bset	21075,#6
3525                     ; 707 }
3528  0055 85            	popw	x
3529  0056 81            	ret
3586                     ; 725 void TIM1_ETRConfig(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3586                     ; 726                     TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3586                     ; 727                     uint8_t ExtTRGFilter)
3586                     ; 728 {
3587                     .text:	section	.text,new
3588  0000               _TIM1_ETRConfig:
3590  0000 89            	pushw	x
3591       00000000      OFST:	set	0
3594                     ; 730   assert_param(IS_TIM1_EXT_TRG_FILTER_OK(ExtTRGFilter));
3596  0001 7b05          	ld	a,(OFST+5,sp)
3597  0003 a110          	cp	a,#16
3598  0005 2403          	jruge	L005
3599  0007 4f            	clr	a
3600  0008 2010          	jra	L205
3601  000a               L005:
3602  000a ae02da        	ldw	x,#730
3603  000d 89            	pushw	x
3604  000e ae0000        	ldw	x,#0
3605  0011 89            	pushw	x
3606  0012 ae0000        	ldw	x,#L101
3607  0015 cd0000        	call	_assert_failed
3609  0018 5b04          	addw	sp,#4
3610  001a               L205:
3611                     ; 732   TIM1->ETR |= (uint8_t)((uint8_t)(TIM1_ExtTRGPrescaler | (uint8_t)TIM1_ExtTRGPolarity )|
3611                     ; 733                          (uint8_t)ExtTRGFilter );
3613  001a 7b01          	ld	a,(OFST+1,sp)
3614  001c 1a02          	or	a,(OFST+2,sp)
3615  001e 1a05          	or	a,(OFST+5,sp)
3616  0020 ca5253        	or	a,21075
3617  0023 c75253        	ld	21075,a
3618                     ; 734 }
3621  0026 85            	popw	x
3622  0027 81            	ret
3712                     ; 751 void TIM1_TIxExternalClockConfig(TIM1_TIxExternalCLK1Source_TypeDef TIM1_TIxExternalCLKSource,
3712                     ; 752                                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
3712                     ; 753                                  uint8_t ICFilter)
3712                     ; 754 {
3713                     .text:	section	.text,new
3714  0000               _TIM1_TIxExternalClockConfig:
3716  0000 89            	pushw	x
3717       00000000      OFST:	set	0
3720                     ; 756   assert_param(IS_TIM1_TIXCLK_SOURCE_OK(TIM1_TIxExternalCLKSource));
3722  0001 9e            	ld	a,xh
3723  0002 a140          	cp	a,#64
3724  0004 270a          	jreq	L015
3725  0006 9e            	ld	a,xh
3726  0007 a160          	cp	a,#96
3727  0009 2705          	jreq	L015
3728  000b 9e            	ld	a,xh
3729  000c a150          	cp	a,#80
3730  000e 2603          	jrne	L605
3731  0010               L015:
3732  0010 4f            	clr	a
3733  0011 2010          	jra	L215
3734  0013               L605:
3735  0013 ae02f4        	ldw	x,#756
3736  0016 89            	pushw	x
3737  0017 ae0000        	ldw	x,#0
3738  001a 89            	pushw	x
3739  001b ae0000        	ldw	x,#L101
3740  001e cd0000        	call	_assert_failed
3742  0021 5b04          	addw	sp,#4
3743  0023               L215:
3744                     ; 757   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
3746  0023 0d02          	tnz	(OFST+2,sp)
3747  0025 2706          	jreq	L615
3748  0027 7b02          	ld	a,(OFST+2,sp)
3749  0029 a101          	cp	a,#1
3750  002b 2603          	jrne	L415
3751  002d               L615:
3752  002d 4f            	clr	a
3753  002e 2010          	jra	L025
3754  0030               L415:
3755  0030 ae02f5        	ldw	x,#757
3756  0033 89            	pushw	x
3757  0034 ae0000        	ldw	x,#0
3758  0037 89            	pushw	x
3759  0038 ae0000        	ldw	x,#L101
3760  003b cd0000        	call	_assert_failed
3762  003e 5b04          	addw	sp,#4
3763  0040               L025:
3764                     ; 758   assert_param(IS_TIM1_IC_FILTER_OK(ICFilter));
3766  0040 7b05          	ld	a,(OFST+5,sp)
3767  0042 a110          	cp	a,#16
3768  0044 2403          	jruge	L225
3769  0046 4f            	clr	a
3770  0047 2010          	jra	L425
3771  0049               L225:
3772  0049 ae02f6        	ldw	x,#758
3773  004c 89            	pushw	x
3774  004d ae0000        	ldw	x,#0
3775  0050 89            	pushw	x
3776  0051 ae0000        	ldw	x,#L101
3777  0054 cd0000        	call	_assert_failed
3779  0057 5b04          	addw	sp,#4
3780  0059               L425:
3781                     ; 761   if (TIM1_TIxExternalCLKSource == TIM1_TIXEXTERNALCLK1SOURCE_TI2)
3783  0059 7b01          	ld	a,(OFST+1,sp)
3784  005b a160          	cp	a,#96
3785  005d 260f          	jrne	L3131
3786                     ; 763     TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
3788  005f 7b05          	ld	a,(OFST+5,sp)
3789  0061 88            	push	a
3790  0062 7b03          	ld	a,(OFST+3,sp)
3791  0064 ae0001        	ldw	x,#1
3792  0067 95            	ld	xh,a
3793  0068 cd0000        	call	L5_TI2_Config
3795  006b 84            	pop	a
3797  006c 200d          	jra	L5131
3798  006e               L3131:
3799                     ; 767     TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
3801  006e 7b05          	ld	a,(OFST+5,sp)
3802  0070 88            	push	a
3803  0071 7b03          	ld	a,(OFST+3,sp)
3804  0073 ae0001        	ldw	x,#1
3805  0076 95            	ld	xh,a
3806  0077 cd0000        	call	L3_TI1_Config
3808  007a 84            	pop	a
3809  007b               L5131:
3810                     ; 771   TIM1_SelectInputTrigger((TIM1_TS_TypeDef)TIM1_TIxExternalCLKSource);
3812  007b 7b01          	ld	a,(OFST+1,sp)
3813  007d cd0000        	call	_TIM1_SelectInputTrigger
3815                     ; 774   TIM1->SMCR |= (uint8_t)(TIM1_SLAVEMODE_EXTERNAL1);
3817  0080 c65252        	ld	a,21074
3818  0083 aa07          	or	a,#7
3819  0085 c75252        	ld	21074,a
3820                     ; 775 }
3823  0088 85            	popw	x
3824  0089 81            	ret
3910                     ; 787 void TIM1_SelectInputTrigger(TIM1_TS_TypeDef TIM1_InputTriggerSource)
3910                     ; 788 {
3911                     .text:	section	.text,new
3912  0000               _TIM1_SelectInputTrigger:
3914  0000 88            	push	a
3915       00000000      OFST:	set	0
3918                     ; 790   assert_param(IS_TIM1_TRIGGER_SELECTION_OK(TIM1_InputTriggerSource));
3920  0001 a140          	cp	a,#64
3921  0003 2713          	jreq	L235
3922  0005 a150          	cp	a,#80
3923  0007 270f          	jreq	L235
3924  0009 a160          	cp	a,#96
3925  000b 270b          	jreq	L235
3926  000d a170          	cp	a,#112
3927  000f 2707          	jreq	L235
3928  0011 a130          	cp	a,#48
3929  0013 2703          	jreq	L235
3930  0015 4d            	tnz	a
3931  0016 2603          	jrne	L035
3932  0018               L235:
3933  0018 4f            	clr	a
3934  0019 2010          	jra	L435
3935  001b               L035:
3936  001b ae0316        	ldw	x,#790
3937  001e 89            	pushw	x
3938  001f ae0000        	ldw	x,#0
3939  0022 89            	pushw	x
3940  0023 ae0000        	ldw	x,#L101
3941  0026 cd0000        	call	_assert_failed
3943  0029 5b04          	addw	sp,#4
3944  002b               L435:
3945                     ; 793   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_TS)) | (uint8_t)TIM1_InputTriggerSource);
3947  002b c65252        	ld	a,21074
3948  002e a48f          	and	a,#143
3949  0030 1a01          	or	a,(OFST+1,sp)
3950  0032 c75252        	ld	21074,a
3951                     ; 794 }
3954  0035 84            	pop	a
3955  0036 81            	ret
3992                     ; 803 void TIM1_UpdateDisableConfig(FunctionalState NewState)
3992                     ; 804 {
3993                     .text:	section	.text,new
3994  0000               _TIM1_UpdateDisableConfig:
3996  0000 88            	push	a
3997       00000000      OFST:	set	0
4000                     ; 806   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4002  0001 4d            	tnz	a
4003  0002 2704          	jreq	L245
4004  0004 a101          	cp	a,#1
4005  0006 2603          	jrne	L045
4006  0008               L245:
4007  0008 4f            	clr	a
4008  0009 2010          	jra	L445
4009  000b               L045:
4010  000b ae0326        	ldw	x,#806
4011  000e 89            	pushw	x
4012  000f ae0000        	ldw	x,#0
4013  0012 89            	pushw	x
4014  0013 ae0000        	ldw	x,#L101
4015  0016 cd0000        	call	_assert_failed
4017  0019 5b04          	addw	sp,#4
4018  001b               L445:
4019                     ; 809   if (NewState != DISABLE)
4021  001b 0d01          	tnz	(OFST+1,sp)
4022  001d 2706          	jreq	L3731
4023                     ; 811     TIM1->CR1 |= TIM1_CR1_UDIS;
4025  001f 72125250      	bset	21072,#1
4027  0023 2004          	jra	L5731
4028  0025               L3731:
4029                     ; 815     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_UDIS);
4031  0025 72135250      	bres	21072,#1
4032  0029               L5731:
4033                     ; 817 }
4036  0029 84            	pop	a
4037  002a 81            	ret
4096                     ; 827 void TIM1_UpdateRequestConfig(TIM1_UpdateSource_TypeDef TIM1_UpdateSource)
4096                     ; 828 {
4097                     .text:	section	.text,new
4098  0000               _TIM1_UpdateRequestConfig:
4100  0000 88            	push	a
4101       00000000      OFST:	set	0
4104                     ; 830   assert_param(IS_TIM1_UPDATE_SOURCE_OK(TIM1_UpdateSource));
4106  0001 4d            	tnz	a
4107  0002 2704          	jreq	L255
4108  0004 a101          	cp	a,#1
4109  0006 2603          	jrne	L055
4110  0008               L255:
4111  0008 4f            	clr	a
4112  0009 2010          	jra	L455
4113  000b               L055:
4114  000b ae033e        	ldw	x,#830
4115  000e 89            	pushw	x
4116  000f ae0000        	ldw	x,#0
4117  0012 89            	pushw	x
4118  0013 ae0000        	ldw	x,#L101
4119  0016 cd0000        	call	_assert_failed
4121  0019 5b04          	addw	sp,#4
4122  001b               L455:
4123                     ; 833   if (TIM1_UpdateSource != TIM1_UPDATESOURCE_GLOBAL)
4125  001b 0d01          	tnz	(OFST+1,sp)
4126  001d 2706          	jreq	L5241
4127                     ; 835     TIM1->CR1 |= TIM1_CR1_URS;
4129  001f 72145250      	bset	21072,#2
4131  0023 2004          	jra	L7241
4132  0025               L5241:
4133                     ; 839     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_URS);
4135  0025 72155250      	bres	21072,#2
4136  0029               L7241:
4137                     ; 841 }
4140  0029 84            	pop	a
4141  002a 81            	ret
4178                     ; 849 void TIM1_SelectHallSensor(FunctionalState NewState)
4178                     ; 850 {
4179                     .text:	section	.text,new
4180  0000               _TIM1_SelectHallSensor:
4182  0000 88            	push	a
4183       00000000      OFST:	set	0
4186                     ; 852   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4188  0001 4d            	tnz	a
4189  0002 2704          	jreq	L265
4190  0004 a101          	cp	a,#1
4191  0006 2603          	jrne	L065
4192  0008               L265:
4193  0008 4f            	clr	a
4194  0009 2010          	jra	L465
4195  000b               L065:
4196  000b ae0354        	ldw	x,#852
4197  000e 89            	pushw	x
4198  000f ae0000        	ldw	x,#0
4199  0012 89            	pushw	x
4200  0013 ae0000        	ldw	x,#L101
4201  0016 cd0000        	call	_assert_failed
4203  0019 5b04          	addw	sp,#4
4204  001b               L465:
4205                     ; 855   if (NewState != DISABLE)
4207  001b 0d01          	tnz	(OFST+1,sp)
4208  001d 2706          	jreq	L7441
4209                     ; 857     TIM1->CR2 |= TIM1_CR2_TI1S;
4211  001f 721e5251      	bset	21073,#7
4213  0023 2004          	jra	L1541
4214  0025               L7441:
4215                     ; 861     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_TI1S);
4217  0025 721f5251      	bres	21073,#7
4218  0029               L1541:
4219                     ; 863 }
4222  0029 84            	pop	a
4223  002a 81            	ret
4281                     ; 873 void TIM1_SelectOnePulseMode(TIM1_OPMode_TypeDef TIM1_OPMode)
4281                     ; 874 {
4282                     .text:	section	.text,new
4283  0000               _TIM1_SelectOnePulseMode:
4285  0000 88            	push	a
4286       00000000      OFST:	set	0
4289                     ; 876   assert_param(IS_TIM1_OPM_MODE_OK(TIM1_OPMode));
4291  0001 a101          	cp	a,#1
4292  0003 2703          	jreq	L275
4293  0005 4d            	tnz	a
4294  0006 2603          	jrne	L075
4295  0008               L275:
4296  0008 4f            	clr	a
4297  0009 2010          	jra	L475
4298  000b               L075:
4299  000b ae036c        	ldw	x,#876
4300  000e 89            	pushw	x
4301  000f ae0000        	ldw	x,#0
4302  0012 89            	pushw	x
4303  0013 ae0000        	ldw	x,#L101
4304  0016 cd0000        	call	_assert_failed
4306  0019 5b04          	addw	sp,#4
4307  001b               L475:
4308                     ; 879   if (TIM1_OPMode != TIM1_OPMODE_REPETITIVE)
4310  001b 0d01          	tnz	(OFST+1,sp)
4311  001d 2706          	jreq	L1051
4312                     ; 881     TIM1->CR1 |= TIM1_CR1_OPM;
4314  001f 72165250      	bset	21072,#3
4316  0023 2004          	jra	L3051
4317  0025               L1051:
4318                     ; 885     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_OPM);
4320  0025 72175250      	bres	21072,#3
4321  0029               L3051:
4322                     ; 888 }
4325  0029 84            	pop	a
4326  002a 81            	ret
4425                     ; 903 void TIM1_SelectOutputTrigger(TIM1_TRGOSource_TypeDef TIM1_TRGOSource)
4425                     ; 904 {
4426                     .text:	section	.text,new
4427  0000               _TIM1_SelectOutputTrigger:
4429  0000 88            	push	a
4430       00000000      OFST:	set	0
4433                     ; 906   assert_param(IS_TIM1_TRGO_SOURCE_OK(TIM1_TRGOSource));
4435  0001 4d            	tnz	a
4436  0002 2718          	jreq	L206
4437  0004 a110          	cp	a,#16
4438  0006 2714          	jreq	L206
4439  0008 a120          	cp	a,#32
4440  000a 2710          	jreq	L206
4441  000c a130          	cp	a,#48
4442  000e 270c          	jreq	L206
4443  0010 a140          	cp	a,#64
4444  0012 2708          	jreq	L206
4445  0014 a150          	cp	a,#80
4446  0016 2704          	jreq	L206
4447  0018 a160          	cp	a,#96
4448  001a 2603          	jrne	L006
4449  001c               L206:
4450  001c 4f            	clr	a
4451  001d 2010          	jra	L406
4452  001f               L006:
4453  001f ae038a        	ldw	x,#906
4454  0022 89            	pushw	x
4455  0023 ae0000        	ldw	x,#0
4456  0026 89            	pushw	x
4457  0027 ae0000        	ldw	x,#L101
4458  002a cd0000        	call	_assert_failed
4460  002d 5b04          	addw	sp,#4
4461  002f               L406:
4462                     ; 909   TIM1->CR2 = (uint8_t)((uint8_t)(TIM1->CR2 & (uint8_t)(~TIM1_CR2_MMS)) | 
4462                     ; 910                         (uint8_t) TIM1_TRGOSource);
4464  002f c65251        	ld	a,21073
4465  0032 a48f          	and	a,#143
4466  0034 1a01          	or	a,(OFST+1,sp)
4467  0036 c75251        	ld	21073,a
4468                     ; 911 }
4471  0039 84            	pop	a
4472  003a 81            	ret
4547                     ; 923 void TIM1_SelectSlaveMode(TIM1_SlaveMode_TypeDef TIM1_SlaveMode)
4547                     ; 924 {
4548                     .text:	section	.text,new
4549  0000               _TIM1_SelectSlaveMode:
4551  0000 88            	push	a
4552       00000000      OFST:	set	0
4555                     ; 926   assert_param(IS_TIM1_SLAVE_MODE_OK(TIM1_SlaveMode));
4557  0001 a104          	cp	a,#4
4558  0003 270c          	jreq	L216
4559  0005 a105          	cp	a,#5
4560  0007 2708          	jreq	L216
4561  0009 a106          	cp	a,#6
4562  000b 2704          	jreq	L216
4563  000d a107          	cp	a,#7
4564  000f 2603          	jrne	L016
4565  0011               L216:
4566  0011 4f            	clr	a
4567  0012 2010          	jra	L416
4568  0014               L016:
4569  0014 ae039e        	ldw	x,#926
4570  0017 89            	pushw	x
4571  0018 ae0000        	ldw	x,#0
4572  001b 89            	pushw	x
4573  001c ae0000        	ldw	x,#L101
4574  001f cd0000        	call	_assert_failed
4576  0022 5b04          	addw	sp,#4
4577  0024               L416:
4578                     ; 929   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_SMS)) |
4578                     ; 930                          (uint8_t)TIM1_SlaveMode);
4580  0024 c65252        	ld	a,21074
4581  0027 a4f8          	and	a,#248
4582  0029 1a01          	or	a,(OFST+1,sp)
4583  002b c75252        	ld	21074,a
4584                     ; 931 }
4587  002e 84            	pop	a
4588  002f 81            	ret
4625                     ; 939 void TIM1_SelectMasterSlaveMode(FunctionalState NewState)
4625                     ; 940 {
4626                     .text:	section	.text,new
4627  0000               _TIM1_SelectMasterSlaveMode:
4629  0000 88            	push	a
4630       00000000      OFST:	set	0
4633                     ; 942   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4635  0001 4d            	tnz	a
4636  0002 2704          	jreq	L226
4637  0004 a101          	cp	a,#1
4638  0006 2603          	jrne	L026
4639  0008               L226:
4640  0008 4f            	clr	a
4641  0009 2010          	jra	L426
4642  000b               L026:
4643  000b ae03ae        	ldw	x,#942
4644  000e 89            	pushw	x
4645  000f ae0000        	ldw	x,#0
4646  0012 89            	pushw	x
4647  0013 ae0000        	ldw	x,#L101
4648  0016 cd0000        	call	_assert_failed
4650  0019 5b04          	addw	sp,#4
4651  001b               L426:
4652                     ; 945   if (NewState != DISABLE)
4654  001b 0d01          	tnz	(OFST+1,sp)
4655  001d 2706          	jreq	L5161
4656                     ; 947     TIM1->SMCR |= TIM1_SMCR_MSM;
4658  001f 721e5252      	bset	21074,#7
4660  0023 2004          	jra	L7161
4661  0025               L5161:
4662                     ; 951     TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_MSM);
4664  0025 721f5252      	bres	21074,#7
4665  0029               L7161:
4666                     ; 953 }
4669  0029 84            	pop	a
4670  002a 81            	ret
4757                     ; 975 void TIM1_EncoderInterfaceConfig(TIM1_EncoderMode_TypeDef TIM1_EncoderMode,
4757                     ; 976                                  TIM1_ICPolarity_TypeDef TIM1_IC1Polarity,
4757                     ; 977                                  TIM1_ICPolarity_TypeDef TIM1_IC2Polarity)
4757                     ; 978 {
4758                     .text:	section	.text,new
4759  0000               _TIM1_EncoderInterfaceConfig:
4761  0000 89            	pushw	x
4762       00000000      OFST:	set	0
4765                     ; 980   assert_param(IS_TIM1_ENCODER_MODE_OK(TIM1_EncoderMode));
4767  0001 9e            	ld	a,xh
4768  0002 a101          	cp	a,#1
4769  0004 270a          	jreq	L236
4770  0006 9e            	ld	a,xh
4771  0007 a102          	cp	a,#2
4772  0009 2705          	jreq	L236
4773  000b 9e            	ld	a,xh
4774  000c a103          	cp	a,#3
4775  000e 2603          	jrne	L036
4776  0010               L236:
4777  0010 4f            	clr	a
4778  0011 2010          	jra	L436
4779  0013               L036:
4780  0013 ae03d4        	ldw	x,#980
4781  0016 89            	pushw	x
4782  0017 ae0000        	ldw	x,#0
4783  001a 89            	pushw	x
4784  001b ae0000        	ldw	x,#L101
4785  001e cd0000        	call	_assert_failed
4787  0021 5b04          	addw	sp,#4
4788  0023               L436:
4789                     ; 981   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC1Polarity));
4791  0023 0d02          	tnz	(OFST+2,sp)
4792  0025 2706          	jreq	L046
4793  0027 7b02          	ld	a,(OFST+2,sp)
4794  0029 a101          	cp	a,#1
4795  002b 2603          	jrne	L636
4796  002d               L046:
4797  002d 4f            	clr	a
4798  002e 2010          	jra	L246
4799  0030               L636:
4800  0030 ae03d5        	ldw	x,#981
4801  0033 89            	pushw	x
4802  0034 ae0000        	ldw	x,#0
4803  0037 89            	pushw	x
4804  0038 ae0000        	ldw	x,#L101
4805  003b cd0000        	call	_assert_failed
4807  003e 5b04          	addw	sp,#4
4808  0040               L246:
4809                     ; 982   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC2Polarity));
4811  0040 0d05          	tnz	(OFST+5,sp)
4812  0042 2706          	jreq	L646
4813  0044 7b05          	ld	a,(OFST+5,sp)
4814  0046 a101          	cp	a,#1
4815  0048 2603          	jrne	L446
4816  004a               L646:
4817  004a 4f            	clr	a
4818  004b 2010          	jra	L056
4819  004d               L446:
4820  004d ae03d6        	ldw	x,#982
4821  0050 89            	pushw	x
4822  0051 ae0000        	ldw	x,#0
4823  0054 89            	pushw	x
4824  0055 ae0000        	ldw	x,#L101
4825  0058 cd0000        	call	_assert_failed
4827  005b 5b04          	addw	sp,#4
4828  005d               L056:
4829                     ; 985   if (TIM1_IC1Polarity != TIM1_ICPOLARITY_RISING)
4831  005d 0d02          	tnz	(OFST+2,sp)
4832  005f 2706          	jreq	L1661
4833                     ; 987     TIM1->CCER1 |= TIM1_CCER1_CC1P;
4835  0061 7212525c      	bset	21084,#1
4837  0065 2004          	jra	L3661
4838  0067               L1661:
4839                     ; 991     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
4841  0067 7213525c      	bres	21084,#1
4842  006b               L3661:
4843                     ; 994   if (TIM1_IC2Polarity != TIM1_ICPOLARITY_RISING)
4845  006b 0d05          	tnz	(OFST+5,sp)
4846  006d 2706          	jreq	L5661
4847                     ; 996     TIM1->CCER1 |= TIM1_CCER1_CC2P;
4849  006f 721a525c      	bset	21084,#5
4851  0073 2004          	jra	L7661
4852  0075               L5661:
4853                     ; 1000     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
4855  0075 721b525c      	bres	21084,#5
4856  0079               L7661:
4857                     ; 1003   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(TIM1_SMCR_MSM | TIM1_SMCR_TS))
4857                     ; 1004                          | (uint8_t) TIM1_EncoderMode);
4859  0079 c65252        	ld	a,21074
4860  007c a4f0          	and	a,#240
4861  007e 1a01          	or	a,(OFST+1,sp)
4862  0080 c75252        	ld	21074,a
4863                     ; 1007   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_CCxS)) 
4863                     ; 1008                           | (uint8_t) CCMR_TIxDirect_Set);
4865  0083 c65258        	ld	a,21080
4866  0086 a4fc          	and	a,#252
4867  0088 aa01          	or	a,#1
4868  008a c75258        	ld	21080,a
4869                     ; 1009   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_CCxS))
4869                     ; 1010                           | (uint8_t) CCMR_TIxDirect_Set);
4871  008d c65259        	ld	a,21081
4872  0090 a4fc          	and	a,#252
4873  0092 aa01          	or	a,#1
4874  0094 c75259        	ld	21081,a
4875                     ; 1011 }
4878  0097 85            	popw	x
4879  0098 81            	ret
4947                     ; 1023 void TIM1_PrescalerConfig(uint16_t Prescaler,
4947                     ; 1024                           TIM1_PSCReloadMode_TypeDef TIM1_PSCReloadMode)
4947                     ; 1025 {
4948                     .text:	section	.text,new
4949  0000               _TIM1_PrescalerConfig:
4951  0000 89            	pushw	x
4952       00000000      OFST:	set	0
4955                     ; 1027   assert_param(IS_TIM1_PRESCALER_RELOAD_OK(TIM1_PSCReloadMode));
4957  0001 0d05          	tnz	(OFST+5,sp)
4958  0003 2706          	jreq	L656
4959  0005 7b05          	ld	a,(OFST+5,sp)
4960  0007 a101          	cp	a,#1
4961  0009 2603          	jrne	L456
4962  000b               L656:
4963  000b 4f            	clr	a
4964  000c 2010          	jra	L066
4965  000e               L456:
4966  000e ae0403        	ldw	x,#1027
4967  0011 89            	pushw	x
4968  0012 ae0000        	ldw	x,#0
4969  0015 89            	pushw	x
4970  0016 ae0000        	ldw	x,#L101
4971  0019 cd0000        	call	_assert_failed
4973  001c 5b04          	addw	sp,#4
4974  001e               L066:
4975                     ; 1030   TIM1->PSCRH = (uint8_t)(Prescaler >> 8);
4977  001e 7b01          	ld	a,(OFST+1,sp)
4978  0020 c75260        	ld	21088,a
4979                     ; 1031   TIM1->PSCRL = (uint8_t)(Prescaler);
4981  0023 7b02          	ld	a,(OFST+2,sp)
4982  0025 c75261        	ld	21089,a
4983                     ; 1034   TIM1->EGR = (uint8_t)TIM1_PSCReloadMode;
4985  0028 7b05          	ld	a,(OFST+5,sp)
4986  002a c75257        	ld	21079,a
4987                     ; 1035 }
4990  002d 85            	popw	x
4991  002e 81            	ret
5028                     ; 1048 void TIM1_CounterModeConfig(TIM1_CounterMode_TypeDef TIM1_CounterMode)
5028                     ; 1049 {
5029                     .text:	section	.text,new
5030  0000               _TIM1_CounterModeConfig:
5032  0000 88            	push	a
5033       00000000      OFST:	set	0
5036                     ; 1051   assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
5038  0001 4d            	tnz	a
5039  0002 2710          	jreq	L666
5040  0004 a110          	cp	a,#16
5041  0006 270c          	jreq	L666
5042  0008 a120          	cp	a,#32
5043  000a 2708          	jreq	L666
5044  000c a140          	cp	a,#64
5045  000e 2704          	jreq	L666
5046  0010 a160          	cp	a,#96
5047  0012 2603          	jrne	L466
5048  0014               L666:
5049  0014 4f            	clr	a
5050  0015 2010          	jra	L076
5051  0017               L466:
5052  0017 ae041b        	ldw	x,#1051
5053  001a 89            	pushw	x
5054  001b ae0000        	ldw	x,#0
5055  001e 89            	pushw	x
5056  001f ae0000        	ldw	x,#L101
5057  0022 cd0000        	call	_assert_failed
5059  0025 5b04          	addw	sp,#4
5060  0027               L076:
5061                     ; 1055   TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)((uint8_t)(~TIM1_CR1_CMS) & (uint8_t)(~TIM1_CR1_DIR)))
5061                     ; 1056                         | (uint8_t)TIM1_CounterMode);
5063  0027 c65250        	ld	a,21072
5064  002a a48f          	and	a,#143
5065  002c 1a01          	or	a,(OFST+1,sp)
5066  002e c75250        	ld	21072,a
5067                     ; 1057 }
5070  0031 84            	pop	a
5071  0032 81            	ret
5130                     ; 1067 void TIM1_ForcedOC1Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
5130                     ; 1068 {
5131                     .text:	section	.text,new
5132  0000               _TIM1_ForcedOC1Config:
5134  0000 88            	push	a
5135       00000000      OFST:	set	0
5138                     ; 1070   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
5140  0001 a150          	cp	a,#80
5141  0003 2704          	jreq	L676
5142  0005 a140          	cp	a,#64
5143  0007 2603          	jrne	L476
5144  0009               L676:
5145  0009 4f            	clr	a
5146  000a 2010          	jra	L007
5147  000c               L476:
5148  000c ae042e        	ldw	x,#1070
5149  000f 89            	pushw	x
5150  0010 ae0000        	ldw	x,#0
5151  0013 89            	pushw	x
5152  0014 ae0000        	ldw	x,#L101
5153  0017 cd0000        	call	_assert_failed
5155  001a 5b04          	addw	sp,#4
5156  001c               L007:
5157                     ; 1073   TIM1->CCMR1 =  (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM))|
5157                     ; 1074                            (uint8_t)TIM1_ForcedAction);
5159  001c c65258        	ld	a,21080
5160  001f a48f          	and	a,#143
5161  0021 1a01          	or	a,(OFST+1,sp)
5162  0023 c75258        	ld	21080,a
5163                     ; 1075 }
5166  0026 84            	pop	a
5167  0027 81            	ret
5204                     ; 1085 void TIM1_ForcedOC2Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
5204                     ; 1086 {
5205                     .text:	section	.text,new
5206  0000               _TIM1_ForcedOC2Config:
5208  0000 88            	push	a
5209       00000000      OFST:	set	0
5212                     ; 1088   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
5214  0001 a150          	cp	a,#80
5215  0003 2704          	jreq	L607
5216  0005 a140          	cp	a,#64
5217  0007 2603          	jrne	L407
5218  0009               L607:
5219  0009 4f            	clr	a
5220  000a 2010          	jra	L017
5221  000c               L407:
5222  000c ae0440        	ldw	x,#1088
5223  000f 89            	pushw	x
5224  0010 ae0000        	ldw	x,#0
5225  0013 89            	pushw	x
5226  0014 ae0000        	ldw	x,#L101
5227  0017 cd0000        	call	_assert_failed
5229  001a 5b04          	addw	sp,#4
5230  001c               L017:
5231                     ; 1091   TIM1->CCMR2  =  (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
5231                     ; 1092                             | (uint8_t)TIM1_ForcedAction);
5233  001c c65259        	ld	a,21081
5234  001f a48f          	and	a,#143
5235  0021 1a01          	or	a,(OFST+1,sp)
5236  0023 c75259        	ld	21081,a
5237                     ; 1093 }
5240  0026 84            	pop	a
5241  0027 81            	ret
5278                     ; 1104 void TIM1_ForcedOC3Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
5278                     ; 1105 {
5279                     .text:	section	.text,new
5280  0000               _TIM1_ForcedOC3Config:
5282  0000 88            	push	a
5283       00000000      OFST:	set	0
5286                     ; 1107   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
5288  0001 a150          	cp	a,#80
5289  0003 2704          	jreq	L617
5290  0005 a140          	cp	a,#64
5291  0007 2603          	jrne	L417
5292  0009               L617:
5293  0009 4f            	clr	a
5294  000a 2010          	jra	L027
5295  000c               L417:
5296  000c ae0453        	ldw	x,#1107
5297  000f 89            	pushw	x
5298  0010 ae0000        	ldw	x,#0
5299  0013 89            	pushw	x
5300  0014 ae0000        	ldw	x,#L101
5301  0017 cd0000        	call	_assert_failed
5303  001a 5b04          	addw	sp,#4
5304  001c               L027:
5305                     ; 1110   TIM1->CCMR3  =  (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM))  
5305                     ; 1111                             | (uint8_t)TIM1_ForcedAction);
5307  001c c6525a        	ld	a,21082
5308  001f a48f          	and	a,#143
5309  0021 1a01          	or	a,(OFST+1,sp)
5310  0023 c7525a        	ld	21082,a
5311                     ; 1112 }
5314  0026 84            	pop	a
5315  0027 81            	ret
5352                     ; 1123 void TIM1_ForcedOC4Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
5352                     ; 1124 {
5353                     .text:	section	.text,new
5354  0000               _TIM1_ForcedOC4Config:
5356  0000 88            	push	a
5357       00000000      OFST:	set	0
5360                     ; 1126   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
5362  0001 a150          	cp	a,#80
5363  0003 2704          	jreq	L627
5364  0005 a140          	cp	a,#64
5365  0007 2603          	jrne	L427
5366  0009               L627:
5367  0009 4f            	clr	a
5368  000a 2010          	jra	L037
5369  000c               L427:
5370  000c ae0466        	ldw	x,#1126
5371  000f 89            	pushw	x
5372  0010 ae0000        	ldw	x,#0
5373  0013 89            	pushw	x
5374  0014 ae0000        	ldw	x,#L101
5375  0017 cd0000        	call	_assert_failed
5377  001a 5b04          	addw	sp,#4
5378  001c               L037:
5379                     ; 1129   TIM1->CCMR4  =  (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
5379                     ; 1130                             | (uint8_t)TIM1_ForcedAction);
5381  001c c6525b        	ld	a,21083
5382  001f a48f          	and	a,#143
5383  0021 1a01          	or	a,(OFST+1,sp)
5384  0023 c7525b        	ld	21083,a
5385                     ; 1131 }
5388  0026 84            	pop	a
5389  0027 81            	ret
5426                     ; 1139 void TIM1_ARRPreloadConfig(FunctionalState NewState)
5426                     ; 1140 {
5427                     .text:	section	.text,new
5428  0000               _TIM1_ARRPreloadConfig:
5430  0000 88            	push	a
5431       00000000      OFST:	set	0
5434                     ; 1142   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5436  0001 4d            	tnz	a
5437  0002 2704          	jreq	L637
5438  0004 a101          	cp	a,#1
5439  0006 2603          	jrne	L437
5440  0008               L637:
5441  0008 4f            	clr	a
5442  0009 2010          	jra	L047
5443  000b               L437:
5444  000b ae0476        	ldw	x,#1142
5445  000e 89            	pushw	x
5446  000f ae0000        	ldw	x,#0
5447  0012 89            	pushw	x
5448  0013 ae0000        	ldw	x,#L101
5449  0016 cd0000        	call	_assert_failed
5451  0019 5b04          	addw	sp,#4
5452  001b               L047:
5453                     ; 1145   if (NewState != DISABLE)
5455  001b 0d01          	tnz	(OFST+1,sp)
5456  001d 2706          	jreq	L7502
5457                     ; 1147     TIM1->CR1 |= TIM1_CR1_ARPE;
5459  001f 721e5250      	bset	21072,#7
5461  0023 2004          	jra	L1602
5462  0025               L7502:
5463                     ; 1151     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_ARPE);
5465  0025 721f5250      	bres	21072,#7
5466  0029               L1602:
5467                     ; 1153 }
5470  0029 84            	pop	a
5471  002a 81            	ret
5507                     ; 1161 void TIM1_SelectCOM(FunctionalState NewState)
5507                     ; 1162 {
5508                     .text:	section	.text,new
5509  0000               _TIM1_SelectCOM:
5511  0000 88            	push	a
5512       00000000      OFST:	set	0
5515                     ; 1164   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5517  0001 4d            	tnz	a
5518  0002 2704          	jreq	L647
5519  0004 a101          	cp	a,#1
5520  0006 2603          	jrne	L447
5521  0008               L647:
5522  0008 4f            	clr	a
5523  0009 2010          	jra	L057
5524  000b               L447:
5525  000b ae048c        	ldw	x,#1164
5526  000e 89            	pushw	x
5527  000f ae0000        	ldw	x,#0
5528  0012 89            	pushw	x
5529  0013 ae0000        	ldw	x,#L101
5530  0016 cd0000        	call	_assert_failed
5532  0019 5b04          	addw	sp,#4
5533  001b               L057:
5534                     ; 1167   if (NewState != DISABLE)
5536  001b 0d01          	tnz	(OFST+1,sp)
5537  001d 2706          	jreq	L1012
5538                     ; 1169     TIM1->CR2 |= TIM1_CR2_COMS;
5540  001f 72145251      	bset	21073,#2
5542  0023 2004          	jra	L3012
5543  0025               L1012:
5544                     ; 1173     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_COMS);
5546  0025 72155251      	bres	21073,#2
5547  0029               L3012:
5548                     ; 1175 }
5551  0029 84            	pop	a
5552  002a 81            	ret
5589                     ; 1183 void TIM1_CCPreloadControl(FunctionalState NewState)
5589                     ; 1184 {
5590                     .text:	section	.text,new
5591  0000               _TIM1_CCPreloadControl:
5593  0000 88            	push	a
5594       00000000      OFST:	set	0
5597                     ; 1186   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5599  0001 4d            	tnz	a
5600  0002 2704          	jreq	L657
5601  0004 a101          	cp	a,#1
5602  0006 2603          	jrne	L457
5603  0008               L657:
5604  0008 4f            	clr	a
5605  0009 2010          	jra	L067
5606  000b               L457:
5607  000b ae04a2        	ldw	x,#1186
5608  000e 89            	pushw	x
5609  000f ae0000        	ldw	x,#0
5610  0012 89            	pushw	x
5611  0013 ae0000        	ldw	x,#L101
5612  0016 cd0000        	call	_assert_failed
5614  0019 5b04          	addw	sp,#4
5615  001b               L067:
5616                     ; 1189   if (NewState != DISABLE)
5618  001b 0d01          	tnz	(OFST+1,sp)
5619  001d 2706          	jreq	L3212
5620                     ; 1191     TIM1->CR2 |= TIM1_CR2_CCPC;
5622  001f 72105251      	bset	21073,#0
5624  0023 2004          	jra	L5212
5625  0025               L3212:
5626                     ; 1195     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_CCPC);
5628  0025 72115251      	bres	21073,#0
5629  0029               L5212:
5630                     ; 1197 }
5633  0029 84            	pop	a
5634  002a 81            	ret
5671                     ; 1205 void TIM1_OC1PreloadConfig(FunctionalState NewState)
5671                     ; 1206 {
5672                     .text:	section	.text,new
5673  0000               _TIM1_OC1PreloadConfig:
5675  0000 88            	push	a
5676       00000000      OFST:	set	0
5679                     ; 1208   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5681  0001 4d            	tnz	a
5682  0002 2704          	jreq	L667
5683  0004 a101          	cp	a,#1
5684  0006 2603          	jrne	L467
5685  0008               L667:
5686  0008 4f            	clr	a
5687  0009 2010          	jra	L077
5688  000b               L467:
5689  000b ae04b8        	ldw	x,#1208
5690  000e 89            	pushw	x
5691  000f ae0000        	ldw	x,#0
5692  0012 89            	pushw	x
5693  0013 ae0000        	ldw	x,#L101
5694  0016 cd0000        	call	_assert_failed
5696  0019 5b04          	addw	sp,#4
5697  001b               L077:
5698                     ; 1211   if (NewState != DISABLE)
5700  001b 0d01          	tnz	(OFST+1,sp)
5701  001d 2706          	jreq	L5412
5702                     ; 1213     TIM1->CCMR1 |= TIM1_CCMR_OCxPE;
5704  001f 72165258      	bset	21080,#3
5706  0023 2004          	jra	L7412
5707  0025               L5412:
5708                     ; 1217     TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5710  0025 72175258      	bres	21080,#3
5711  0029               L7412:
5712                     ; 1219 }
5715  0029 84            	pop	a
5716  002a 81            	ret
5753                     ; 1227 void TIM1_OC2PreloadConfig(FunctionalState NewState)
5753                     ; 1228 {
5754                     .text:	section	.text,new
5755  0000               _TIM1_OC2PreloadConfig:
5757  0000 88            	push	a
5758       00000000      OFST:	set	0
5761                     ; 1230   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5763  0001 4d            	tnz	a
5764  0002 2704          	jreq	L677
5765  0004 a101          	cp	a,#1
5766  0006 2603          	jrne	L477
5767  0008               L677:
5768  0008 4f            	clr	a
5769  0009 2010          	jra	L0001
5770  000b               L477:
5771  000b ae04ce        	ldw	x,#1230
5772  000e 89            	pushw	x
5773  000f ae0000        	ldw	x,#0
5774  0012 89            	pushw	x
5775  0013 ae0000        	ldw	x,#L101
5776  0016 cd0000        	call	_assert_failed
5778  0019 5b04          	addw	sp,#4
5779  001b               L0001:
5780                     ; 1233   if (NewState != DISABLE)
5782  001b 0d01          	tnz	(OFST+1,sp)
5783  001d 2706          	jreq	L7612
5784                     ; 1235     TIM1->CCMR2 |= TIM1_CCMR_OCxPE;
5786  001f 72165259      	bset	21081,#3
5788  0023 2004          	jra	L1712
5789  0025               L7612:
5790                     ; 1239     TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5792  0025 72175259      	bres	21081,#3
5793  0029               L1712:
5794                     ; 1241 }
5797  0029 84            	pop	a
5798  002a 81            	ret
5835                     ; 1249 void TIM1_OC3PreloadConfig(FunctionalState NewState)
5835                     ; 1250 {
5836                     .text:	section	.text,new
5837  0000               _TIM1_OC3PreloadConfig:
5839  0000 88            	push	a
5840       00000000      OFST:	set	0
5843                     ; 1252   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5845  0001 4d            	tnz	a
5846  0002 2704          	jreq	L6001
5847  0004 a101          	cp	a,#1
5848  0006 2603          	jrne	L4001
5849  0008               L6001:
5850  0008 4f            	clr	a
5851  0009 2010          	jra	L0101
5852  000b               L4001:
5853  000b ae04e4        	ldw	x,#1252
5854  000e 89            	pushw	x
5855  000f ae0000        	ldw	x,#0
5856  0012 89            	pushw	x
5857  0013 ae0000        	ldw	x,#L101
5858  0016 cd0000        	call	_assert_failed
5860  0019 5b04          	addw	sp,#4
5861  001b               L0101:
5862                     ; 1255   if (NewState != DISABLE)
5864  001b 0d01          	tnz	(OFST+1,sp)
5865  001d 2706          	jreq	L1122
5866                     ; 1257     TIM1->CCMR3 |= TIM1_CCMR_OCxPE;
5868  001f 7216525a      	bset	21082,#3
5870  0023 2004          	jra	L3122
5871  0025               L1122:
5872                     ; 1261     TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5874  0025 7217525a      	bres	21082,#3
5875  0029               L3122:
5876                     ; 1263 }
5879  0029 84            	pop	a
5880  002a 81            	ret
5917                     ; 1271 void TIM1_OC4PreloadConfig(FunctionalState NewState)
5917                     ; 1272 {
5918                     .text:	section	.text,new
5919  0000               _TIM1_OC4PreloadConfig:
5921  0000 88            	push	a
5922       00000000      OFST:	set	0
5925                     ; 1274   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5927  0001 4d            	tnz	a
5928  0002 2704          	jreq	L6101
5929  0004 a101          	cp	a,#1
5930  0006 2603          	jrne	L4101
5931  0008               L6101:
5932  0008 4f            	clr	a
5933  0009 2010          	jra	L0201
5934  000b               L4101:
5935  000b ae04fa        	ldw	x,#1274
5936  000e 89            	pushw	x
5937  000f ae0000        	ldw	x,#0
5938  0012 89            	pushw	x
5939  0013 ae0000        	ldw	x,#L101
5940  0016 cd0000        	call	_assert_failed
5942  0019 5b04          	addw	sp,#4
5943  001b               L0201:
5944                     ; 1277   if (NewState != DISABLE)
5946  001b 0d01          	tnz	(OFST+1,sp)
5947  001d 2706          	jreq	L3322
5948                     ; 1279     TIM1->CCMR4 |= TIM1_CCMR_OCxPE;
5950  001f 7216525b      	bset	21083,#3
5952  0023 2004          	jra	L5322
5953  0025               L3322:
5954                     ; 1283     TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5956  0025 7217525b      	bres	21083,#3
5957  0029               L5322:
5958                     ; 1285 }
5961  0029 84            	pop	a
5962  002a 81            	ret
5998                     ; 1293 void TIM1_OC1FastConfig(FunctionalState NewState)
5998                     ; 1294 {
5999                     .text:	section	.text,new
6000  0000               _TIM1_OC1FastConfig:
6002  0000 88            	push	a
6003       00000000      OFST:	set	0
6006                     ; 1296   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6008  0001 4d            	tnz	a
6009  0002 2704          	jreq	L6201
6010  0004 a101          	cp	a,#1
6011  0006 2603          	jrne	L4201
6012  0008               L6201:
6013  0008 4f            	clr	a
6014  0009 2010          	jra	L0301
6015  000b               L4201:
6016  000b ae0510        	ldw	x,#1296
6017  000e 89            	pushw	x
6018  000f ae0000        	ldw	x,#0
6019  0012 89            	pushw	x
6020  0013 ae0000        	ldw	x,#L101
6021  0016 cd0000        	call	_assert_failed
6023  0019 5b04          	addw	sp,#4
6024  001b               L0301:
6025                     ; 1299   if (NewState != DISABLE)
6027  001b 0d01          	tnz	(OFST+1,sp)
6028  001d 2706          	jreq	L5522
6029                     ; 1301     TIM1->CCMR1 |= TIM1_CCMR_OCxFE;
6031  001f 72145258      	bset	21080,#2
6033  0023 2004          	jra	L7522
6034  0025               L5522:
6035                     ; 1305     TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxFE);
6037  0025 72155258      	bres	21080,#2
6038  0029               L7522:
6039                     ; 1307 }
6042  0029 84            	pop	a
6043  002a 81            	ret
6079                     ; 1315 void TIM1_OC2FastConfig(FunctionalState NewState)
6079                     ; 1316 {
6080                     .text:	section	.text,new
6081  0000               _TIM1_OC2FastConfig:
6083  0000 88            	push	a
6084       00000000      OFST:	set	0
6087                     ; 1318   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6089  0001 4d            	tnz	a
6090  0002 2704          	jreq	L6301
6091  0004 a101          	cp	a,#1
6092  0006 2603          	jrne	L4301
6093  0008               L6301:
6094  0008 4f            	clr	a
6095  0009 2010          	jra	L0401
6096  000b               L4301:
6097  000b ae0526        	ldw	x,#1318
6098  000e 89            	pushw	x
6099  000f ae0000        	ldw	x,#0
6100  0012 89            	pushw	x
6101  0013 ae0000        	ldw	x,#L101
6102  0016 cd0000        	call	_assert_failed
6104  0019 5b04          	addw	sp,#4
6105  001b               L0401:
6106                     ; 1321   if (NewState != DISABLE)
6108  001b 0d01          	tnz	(OFST+1,sp)
6109  001d 2706          	jreq	L7722
6110                     ; 1323     TIM1->CCMR2 |= TIM1_CCMR_OCxFE;
6112  001f 72145259      	bset	21081,#2
6114  0023 2004          	jra	L1032
6115  0025               L7722:
6116                     ; 1327     TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxFE);
6118  0025 72155259      	bres	21081,#2
6119  0029               L1032:
6120                     ; 1329 }
6123  0029 84            	pop	a
6124  002a 81            	ret
6160                     ; 1337 void TIM1_OC3FastConfig(FunctionalState NewState)
6160                     ; 1338 {
6161                     .text:	section	.text,new
6162  0000               _TIM1_OC3FastConfig:
6164  0000 88            	push	a
6165       00000000      OFST:	set	0
6168                     ; 1340   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6170  0001 4d            	tnz	a
6171  0002 2704          	jreq	L6401
6172  0004 a101          	cp	a,#1
6173  0006 2603          	jrne	L4401
6174  0008               L6401:
6175  0008 4f            	clr	a
6176  0009 2010          	jra	L0501
6177  000b               L4401:
6178  000b ae053c        	ldw	x,#1340
6179  000e 89            	pushw	x
6180  000f ae0000        	ldw	x,#0
6181  0012 89            	pushw	x
6182  0013 ae0000        	ldw	x,#L101
6183  0016 cd0000        	call	_assert_failed
6185  0019 5b04          	addw	sp,#4
6186  001b               L0501:
6187                     ; 1343   if (NewState != DISABLE)
6189  001b 0d01          	tnz	(OFST+1,sp)
6190  001d 2706          	jreq	L1232
6191                     ; 1345     TIM1->CCMR3 |= TIM1_CCMR_OCxFE;
6193  001f 7214525a      	bset	21082,#2
6195  0023 2004          	jra	L3232
6196  0025               L1232:
6197                     ; 1349     TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxFE);
6199  0025 7215525a      	bres	21082,#2
6200  0029               L3232:
6201                     ; 1351 }
6204  0029 84            	pop	a
6205  002a 81            	ret
6241                     ; 1359 void TIM1_OC4FastConfig(FunctionalState NewState)
6241                     ; 1360 {
6242                     .text:	section	.text,new
6243  0000               _TIM1_OC4FastConfig:
6245  0000 88            	push	a
6246       00000000      OFST:	set	0
6249                     ; 1362   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6251  0001 4d            	tnz	a
6252  0002 2704          	jreq	L6501
6253  0004 a101          	cp	a,#1
6254  0006 2603          	jrne	L4501
6255  0008               L6501:
6256  0008 4f            	clr	a
6257  0009 2010          	jra	L0601
6258  000b               L4501:
6259  000b ae0552        	ldw	x,#1362
6260  000e 89            	pushw	x
6261  000f ae0000        	ldw	x,#0
6262  0012 89            	pushw	x
6263  0013 ae0000        	ldw	x,#L101
6264  0016 cd0000        	call	_assert_failed
6266  0019 5b04          	addw	sp,#4
6267  001b               L0601:
6268                     ; 1365   if (NewState != DISABLE)
6270  001b 0d01          	tnz	(OFST+1,sp)
6271  001d 2706          	jreq	L3432
6272                     ; 1367     TIM1->CCMR4 |= TIM1_CCMR_OCxFE;
6274  001f 7214525b      	bset	21083,#2
6276  0023 2004          	jra	L5432
6277  0025               L3432:
6278                     ; 1371     TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxFE);
6280  0025 7215525b      	bres	21083,#2
6281  0029               L5432:
6282                     ; 1373 }
6285  0029 84            	pop	a
6286  002a 81            	ret
6392                     ; 1389 void TIM1_GenerateEvent(TIM1_EventSource_TypeDef TIM1_EventSource)
6392                     ; 1390 {
6393                     .text:	section	.text,new
6394  0000               _TIM1_GenerateEvent:
6396  0000 88            	push	a
6397       00000000      OFST:	set	0
6400                     ; 1392   assert_param(IS_TIM1_EVENT_SOURCE_OK(TIM1_EventSource));
6402  0001 4d            	tnz	a
6403  0002 2703          	jreq	L4601
6404  0004 4f            	clr	a
6405  0005 2010          	jra	L6601
6406  0007               L4601:
6407  0007 ae0570        	ldw	x,#1392
6408  000a 89            	pushw	x
6409  000b ae0000        	ldw	x,#0
6410  000e 89            	pushw	x
6411  000f ae0000        	ldw	x,#L101
6412  0012 cd0000        	call	_assert_failed
6414  0015 5b04          	addw	sp,#4
6415  0017               L6601:
6416                     ; 1395   TIM1->EGR = (uint8_t)TIM1_EventSource;
6418  0017 7b01          	ld	a,(OFST+1,sp)
6419  0019 c75257        	ld	21079,a
6420                     ; 1396 }
6423  001c 84            	pop	a
6424  001d 81            	ret
6461                     ; 1406 void TIM1_OC1PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6461                     ; 1407 {
6462                     .text:	section	.text,new
6463  0000               _TIM1_OC1PolarityConfig:
6465  0000 88            	push	a
6466       00000000      OFST:	set	0
6469                     ; 1409   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6471  0001 4d            	tnz	a
6472  0002 2704          	jreq	L4701
6473  0004 a122          	cp	a,#34
6474  0006 2603          	jrne	L2701
6475  0008               L4701:
6476  0008 4f            	clr	a
6477  0009 2010          	jra	L6701
6478  000b               L2701:
6479  000b ae0581        	ldw	x,#1409
6480  000e 89            	pushw	x
6481  000f ae0000        	ldw	x,#0
6482  0012 89            	pushw	x
6483  0013 ae0000        	ldw	x,#L101
6484  0016 cd0000        	call	_assert_failed
6486  0019 5b04          	addw	sp,#4
6487  001b               L6701:
6488                     ; 1412   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6490  001b 0d01          	tnz	(OFST+1,sp)
6491  001d 2706          	jreq	L7242
6492                     ; 1414     TIM1->CCER1 |= TIM1_CCER1_CC1P;
6494  001f 7212525c      	bset	21084,#1
6496  0023 2004          	jra	L1342
6497  0025               L7242:
6498                     ; 1418     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
6500  0025 7213525c      	bres	21084,#1
6501  0029               L1342:
6502                     ; 1420 }
6505  0029 84            	pop	a
6506  002a 81            	ret
6543                     ; 1430 void TIM1_OC1NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6543                     ; 1431 {
6544                     .text:	section	.text,new
6545  0000               _TIM1_OC1NPolarityConfig:
6547  0000 88            	push	a
6548       00000000      OFST:	set	0
6551                     ; 1433   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6553  0001 4d            	tnz	a
6554  0002 2704          	jreq	L4011
6555  0004 a188          	cp	a,#136
6556  0006 2603          	jrne	L2011
6557  0008               L4011:
6558  0008 4f            	clr	a
6559  0009 2010          	jra	L6011
6560  000b               L2011:
6561  000b ae0599        	ldw	x,#1433
6562  000e 89            	pushw	x
6563  000f ae0000        	ldw	x,#0
6564  0012 89            	pushw	x
6565  0013 ae0000        	ldw	x,#L101
6566  0016 cd0000        	call	_assert_failed
6568  0019 5b04          	addw	sp,#4
6569  001b               L6011:
6570                     ; 1436   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6572  001b 0d01          	tnz	(OFST+1,sp)
6573  001d 2706          	jreq	L1542
6574                     ; 1438     TIM1->CCER1 |= TIM1_CCER1_CC1NP;
6576  001f 7216525c      	bset	21084,#3
6578  0023 2004          	jra	L3542
6579  0025               L1542:
6580                     ; 1442     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NP);
6582  0025 7217525c      	bres	21084,#3
6583  0029               L3542:
6584                     ; 1444 }
6587  0029 84            	pop	a
6588  002a 81            	ret
6625                     ; 1454 void TIM1_OC2PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6625                     ; 1455 {
6626                     .text:	section	.text,new
6627  0000               _TIM1_OC2PolarityConfig:
6629  0000 88            	push	a
6630       00000000      OFST:	set	0
6633                     ; 1457   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6635  0001 4d            	tnz	a
6636  0002 2704          	jreq	L4111
6637  0004 a122          	cp	a,#34
6638  0006 2603          	jrne	L2111
6639  0008               L4111:
6640  0008 4f            	clr	a
6641  0009 2010          	jra	L6111
6642  000b               L2111:
6643  000b ae05b1        	ldw	x,#1457
6644  000e 89            	pushw	x
6645  000f ae0000        	ldw	x,#0
6646  0012 89            	pushw	x
6647  0013 ae0000        	ldw	x,#L101
6648  0016 cd0000        	call	_assert_failed
6650  0019 5b04          	addw	sp,#4
6651  001b               L6111:
6652                     ; 1460   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6654  001b 0d01          	tnz	(OFST+1,sp)
6655  001d 2706          	jreq	L3742
6656                     ; 1462     TIM1->CCER1 |= TIM1_CCER1_CC2P;
6658  001f 721a525c      	bset	21084,#5
6660  0023 2004          	jra	L5742
6661  0025               L3742:
6662                     ; 1466     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
6664  0025 721b525c      	bres	21084,#5
6665  0029               L5742:
6666                     ; 1468 }
6669  0029 84            	pop	a
6670  002a 81            	ret
6707                     ; 1478 void TIM1_OC2NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6707                     ; 1479 {
6708                     .text:	section	.text,new
6709  0000               _TIM1_OC2NPolarityConfig:
6711  0000 88            	push	a
6712       00000000      OFST:	set	0
6715                     ; 1481   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6717  0001 4d            	tnz	a
6718  0002 2704          	jreq	L4211
6719  0004 a188          	cp	a,#136
6720  0006 2603          	jrne	L2211
6721  0008               L4211:
6722  0008 4f            	clr	a
6723  0009 2010          	jra	L6211
6724  000b               L2211:
6725  000b ae05c9        	ldw	x,#1481
6726  000e 89            	pushw	x
6727  000f ae0000        	ldw	x,#0
6728  0012 89            	pushw	x
6729  0013 ae0000        	ldw	x,#L101
6730  0016 cd0000        	call	_assert_failed
6732  0019 5b04          	addw	sp,#4
6733  001b               L6211:
6734                     ; 1484   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6736  001b 0d01          	tnz	(OFST+1,sp)
6737  001d 2706          	jreq	L5152
6738                     ; 1486     TIM1->CCER1 |= TIM1_CCER1_CC2NP;
6740  001f 721e525c      	bset	21084,#7
6742  0023 2004          	jra	L7152
6743  0025               L5152:
6744                     ; 1490     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NP);
6746  0025 721f525c      	bres	21084,#7
6747  0029               L7152:
6748                     ; 1492 }
6751  0029 84            	pop	a
6752  002a 81            	ret
6789                     ; 1502 void TIM1_OC3PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6789                     ; 1503 {
6790                     .text:	section	.text,new
6791  0000               _TIM1_OC3PolarityConfig:
6793  0000 88            	push	a
6794       00000000      OFST:	set	0
6797                     ; 1505   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6799  0001 4d            	tnz	a
6800  0002 2704          	jreq	L4311
6801  0004 a122          	cp	a,#34
6802  0006 2603          	jrne	L2311
6803  0008               L4311:
6804  0008 4f            	clr	a
6805  0009 2010          	jra	L6311
6806  000b               L2311:
6807  000b ae05e1        	ldw	x,#1505
6808  000e 89            	pushw	x
6809  000f ae0000        	ldw	x,#0
6810  0012 89            	pushw	x
6811  0013 ae0000        	ldw	x,#L101
6812  0016 cd0000        	call	_assert_failed
6814  0019 5b04          	addw	sp,#4
6815  001b               L6311:
6816                     ; 1508   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6818  001b 0d01          	tnz	(OFST+1,sp)
6819  001d 2706          	jreq	L7352
6820                     ; 1510     TIM1->CCER2 |= TIM1_CCER2_CC3P;
6822  001f 7212525d      	bset	21085,#1
6824  0023 2004          	jra	L1452
6825  0025               L7352:
6826                     ; 1514     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
6828  0025 7213525d      	bres	21085,#1
6829  0029               L1452:
6830                     ; 1516 }
6833  0029 84            	pop	a
6834  002a 81            	ret
6871                     ; 1527 void TIM1_OC3NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6871                     ; 1528 {
6872                     .text:	section	.text,new
6873  0000               _TIM1_OC3NPolarityConfig:
6875  0000 88            	push	a
6876       00000000      OFST:	set	0
6879                     ; 1530   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6881  0001 4d            	tnz	a
6882  0002 2704          	jreq	L4411
6883  0004 a188          	cp	a,#136
6884  0006 2603          	jrne	L2411
6885  0008               L4411:
6886  0008 4f            	clr	a
6887  0009 2010          	jra	L6411
6888  000b               L2411:
6889  000b ae05fa        	ldw	x,#1530
6890  000e 89            	pushw	x
6891  000f ae0000        	ldw	x,#0
6892  0012 89            	pushw	x
6893  0013 ae0000        	ldw	x,#L101
6894  0016 cd0000        	call	_assert_failed
6896  0019 5b04          	addw	sp,#4
6897  001b               L6411:
6898                     ; 1533   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6900  001b 0d01          	tnz	(OFST+1,sp)
6901  001d 2706          	jreq	L1652
6902                     ; 1535     TIM1->CCER2 |= TIM1_CCER2_CC3NP;
6904  001f 7216525d      	bset	21085,#3
6906  0023 2004          	jra	L3652
6907  0025               L1652:
6908                     ; 1539     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NP);
6910  0025 7217525d      	bres	21085,#3
6911  0029               L3652:
6912                     ; 1541 }
6915  0029 84            	pop	a
6916  002a 81            	ret
6953                     ; 1551 void TIM1_OC4PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6953                     ; 1552 {
6954                     .text:	section	.text,new
6955  0000               _TIM1_OC4PolarityConfig:
6957  0000 88            	push	a
6958       00000000      OFST:	set	0
6961                     ; 1554   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6963  0001 4d            	tnz	a
6964  0002 2704          	jreq	L4511
6965  0004 a122          	cp	a,#34
6966  0006 2603          	jrne	L2511
6967  0008               L4511:
6968  0008 4f            	clr	a
6969  0009 2010          	jra	L6511
6970  000b               L2511:
6971  000b ae0612        	ldw	x,#1554
6972  000e 89            	pushw	x
6973  000f ae0000        	ldw	x,#0
6974  0012 89            	pushw	x
6975  0013 ae0000        	ldw	x,#L101
6976  0016 cd0000        	call	_assert_failed
6978  0019 5b04          	addw	sp,#4
6979  001b               L6511:
6980                     ; 1557   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6982  001b 0d01          	tnz	(OFST+1,sp)
6983  001d 2706          	jreq	L3062
6984                     ; 1559     TIM1->CCER2 |= TIM1_CCER2_CC4P;
6986  001f 721a525d      	bset	21085,#5
6988  0023 2004          	jra	L5062
6989  0025               L3062:
6990                     ; 1563     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
6992  0025 721b525d      	bres	21085,#5
6993  0029               L5062:
6994                     ; 1565 }
6997  0029 84            	pop	a
6998  002a 81            	ret
7044                     ; 1579 void TIM1_CCxCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
7044                     ; 1580 {
7045                     .text:	section	.text,new
7046  0000               _TIM1_CCxCmd:
7048  0000 89            	pushw	x
7049       00000000      OFST:	set	0
7052                     ; 1582   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
7054  0001 9e            	ld	a,xh
7055  0002 4d            	tnz	a
7056  0003 270f          	jreq	L4611
7057  0005 9e            	ld	a,xh
7058  0006 a101          	cp	a,#1
7059  0008 270a          	jreq	L4611
7060  000a 9e            	ld	a,xh
7061  000b a102          	cp	a,#2
7062  000d 2705          	jreq	L4611
7063  000f 9e            	ld	a,xh
7064  0010 a103          	cp	a,#3
7065  0012 2603          	jrne	L2611
7066  0014               L4611:
7067  0014 4f            	clr	a
7068  0015 2010          	jra	L6611
7069  0017               L2611:
7070  0017 ae062e        	ldw	x,#1582
7071  001a 89            	pushw	x
7072  001b ae0000        	ldw	x,#0
7073  001e 89            	pushw	x
7074  001f ae0000        	ldw	x,#L101
7075  0022 cd0000        	call	_assert_failed
7077  0025 5b04          	addw	sp,#4
7078  0027               L6611:
7079                     ; 1583   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
7081  0027 0d02          	tnz	(OFST+2,sp)
7082  0029 2706          	jreq	L2711
7083  002b 7b02          	ld	a,(OFST+2,sp)
7084  002d a101          	cp	a,#1
7085  002f 2603          	jrne	L0711
7086  0031               L2711:
7087  0031 4f            	clr	a
7088  0032 2010          	jra	L4711
7089  0034               L0711:
7090  0034 ae062f        	ldw	x,#1583
7091  0037 89            	pushw	x
7092  0038 ae0000        	ldw	x,#0
7093  003b 89            	pushw	x
7094  003c ae0000        	ldw	x,#L101
7095  003f cd0000        	call	_assert_failed
7097  0042 5b04          	addw	sp,#4
7098  0044               L4711:
7099                     ; 1585   if (TIM1_Channel == TIM1_CHANNEL_1)
7101  0044 0d01          	tnz	(OFST+1,sp)
7102  0046 2610          	jrne	L1362
7103                     ; 1588     if (NewState != DISABLE)
7105  0048 0d02          	tnz	(OFST+2,sp)
7106  004a 2706          	jreq	L3362
7107                     ; 1590       TIM1->CCER1 |= TIM1_CCER1_CC1E;
7109  004c 7210525c      	bset	21084,#0
7111  0050 2040          	jra	L7362
7112  0052               L3362:
7113                     ; 1594       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
7115  0052 7211525c      	bres	21084,#0
7116  0056 203a          	jra	L7362
7117  0058               L1362:
7118                     ; 1598   else if (TIM1_Channel == TIM1_CHANNEL_2)
7120  0058 7b01          	ld	a,(OFST+1,sp)
7121  005a a101          	cp	a,#1
7122  005c 2610          	jrne	L1462
7123                     ; 1601     if (NewState != DISABLE)
7125  005e 0d02          	tnz	(OFST+2,sp)
7126  0060 2706          	jreq	L3462
7127                     ; 1603       TIM1->CCER1 |= TIM1_CCER1_CC2E;
7129  0062 7218525c      	bset	21084,#4
7131  0066 202a          	jra	L7362
7132  0068               L3462:
7133                     ; 1607       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
7135  0068 7219525c      	bres	21084,#4
7136  006c 2024          	jra	L7362
7137  006e               L1462:
7138                     ; 1610   else if (TIM1_Channel == TIM1_CHANNEL_3)
7140  006e 7b01          	ld	a,(OFST+1,sp)
7141  0070 a102          	cp	a,#2
7142  0072 2610          	jrne	L1562
7143                     ; 1613     if (NewState != DISABLE)
7145  0074 0d02          	tnz	(OFST+2,sp)
7146  0076 2706          	jreq	L3562
7147                     ; 1615       TIM1->CCER2 |= TIM1_CCER2_CC3E;
7149  0078 7210525d      	bset	21085,#0
7151  007c 2014          	jra	L7362
7152  007e               L3562:
7153                     ; 1619       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
7155  007e 7211525d      	bres	21085,#0
7156  0082 200e          	jra	L7362
7157  0084               L1562:
7158                     ; 1625     if (NewState != DISABLE)
7160  0084 0d02          	tnz	(OFST+2,sp)
7161  0086 2706          	jreq	L1662
7162                     ; 1627       TIM1->CCER2 |= TIM1_CCER2_CC4E;
7164  0088 7218525d      	bset	21085,#4
7166  008c 2004          	jra	L7362
7167  008e               L1662:
7168                     ; 1631       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
7170  008e 7219525d      	bres	21085,#4
7171  0092               L7362:
7172                     ; 1634 }
7175  0092 85            	popw	x
7176  0093 81            	ret
7222                     ; 1647 void TIM1_CCxNCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
7222                     ; 1648 {
7223                     .text:	section	.text,new
7224  0000               _TIM1_CCxNCmd:
7226  0000 89            	pushw	x
7227       00000000      OFST:	set	0
7230                     ; 1650   assert_param(IS_TIM1_COMPLEMENTARY_CHANNEL_OK(TIM1_Channel));
7232  0001 9e            	ld	a,xh
7233  0002 4d            	tnz	a
7234  0003 270a          	jreq	L2021
7235  0005 9e            	ld	a,xh
7236  0006 a101          	cp	a,#1
7237  0008 2705          	jreq	L2021
7238  000a 9e            	ld	a,xh
7239  000b a102          	cp	a,#2
7240  000d 2603          	jrne	L0021
7241  000f               L2021:
7242  000f 4f            	clr	a
7243  0010 2010          	jra	L4021
7244  0012               L0021:
7245  0012 ae0672        	ldw	x,#1650
7246  0015 89            	pushw	x
7247  0016 ae0000        	ldw	x,#0
7248  0019 89            	pushw	x
7249  001a ae0000        	ldw	x,#L101
7250  001d cd0000        	call	_assert_failed
7252  0020 5b04          	addw	sp,#4
7253  0022               L4021:
7254                     ; 1651   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
7256  0022 0d02          	tnz	(OFST+2,sp)
7257  0024 2706          	jreq	L0121
7258  0026 7b02          	ld	a,(OFST+2,sp)
7259  0028 a101          	cp	a,#1
7260  002a 2603          	jrne	L6021
7261  002c               L0121:
7262  002c 4f            	clr	a
7263  002d 2010          	jra	L2121
7264  002f               L6021:
7265  002f ae0673        	ldw	x,#1651
7266  0032 89            	pushw	x
7267  0033 ae0000        	ldw	x,#0
7268  0036 89            	pushw	x
7269  0037 ae0000        	ldw	x,#L101
7270  003a cd0000        	call	_assert_failed
7272  003d 5b04          	addw	sp,#4
7273  003f               L2121:
7274                     ; 1653   if (TIM1_Channel == TIM1_CHANNEL_1)
7276  003f 0d01          	tnz	(OFST+1,sp)
7277  0041 2610          	jrne	L7072
7278                     ; 1656     if (NewState != DISABLE)
7280  0043 0d02          	tnz	(OFST+2,sp)
7281  0045 2706          	jreq	L1172
7282                     ; 1658       TIM1->CCER1 |= TIM1_CCER1_CC1NE;
7284  0047 7214525c      	bset	21084,#2
7286  004b 202a          	jra	L5172
7287  004d               L1172:
7288                     ; 1662       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NE);
7290  004d 7215525c      	bres	21084,#2
7291  0051 2024          	jra	L5172
7292  0053               L7072:
7293                     ; 1665   else if (TIM1_Channel == TIM1_CHANNEL_2)
7295  0053 7b01          	ld	a,(OFST+1,sp)
7296  0055 a101          	cp	a,#1
7297  0057 2610          	jrne	L7172
7298                     ; 1668     if (NewState != DISABLE)
7300  0059 0d02          	tnz	(OFST+2,sp)
7301  005b 2706          	jreq	L1272
7302                     ; 1670       TIM1->CCER1 |= TIM1_CCER1_CC2NE;
7304  005d 721c525c      	bset	21084,#6
7306  0061 2014          	jra	L5172
7307  0063               L1272:
7308                     ; 1674       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NE);
7310  0063 721d525c      	bres	21084,#6
7311  0067 200e          	jra	L5172
7312  0069               L7172:
7313                     ; 1680     if (NewState != DISABLE)
7315  0069 0d02          	tnz	(OFST+2,sp)
7316  006b 2706          	jreq	L7272
7317                     ; 1682       TIM1->CCER2 |= TIM1_CCER2_CC3NE;
7319  006d 7214525d      	bset	21085,#2
7321  0071 2004          	jra	L5172
7322  0073               L7272:
7323                     ; 1686       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NE);
7325  0073 7215525d      	bres	21085,#2
7326  0077               L5172:
7327                     ; 1689 }
7330  0077 85            	popw	x
7331  0078 81            	ret
7377                     ; 1712 void TIM1_SelectOCxM(TIM1_Channel_TypeDef TIM1_Channel, TIM1_OCMode_TypeDef TIM1_OCMode)
7377                     ; 1713 {
7378                     .text:	section	.text,new
7379  0000               _TIM1_SelectOCxM:
7381  0000 89            	pushw	x
7382       00000000      OFST:	set	0
7385                     ; 1715   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
7387  0001 9e            	ld	a,xh
7388  0002 4d            	tnz	a
7389  0003 270f          	jreq	L0221
7390  0005 9e            	ld	a,xh
7391  0006 a101          	cp	a,#1
7392  0008 270a          	jreq	L0221
7393  000a 9e            	ld	a,xh
7394  000b a102          	cp	a,#2
7395  000d 2705          	jreq	L0221
7396  000f 9e            	ld	a,xh
7397  0010 a103          	cp	a,#3
7398  0012 2603          	jrne	L6121
7399  0014               L0221:
7400  0014 4f            	clr	a
7401  0015 2010          	jra	L2221
7402  0017               L6121:
7403  0017 ae06b3        	ldw	x,#1715
7404  001a 89            	pushw	x
7405  001b ae0000        	ldw	x,#0
7406  001e 89            	pushw	x
7407  001f ae0000        	ldw	x,#L101
7408  0022 cd0000        	call	_assert_failed
7410  0025 5b04          	addw	sp,#4
7411  0027               L2221:
7412                     ; 1716   assert_param(IS_TIM1_OCM_OK(TIM1_OCMode));
7414  0027 0d02          	tnz	(OFST+2,sp)
7415  0029 272a          	jreq	L6221
7416  002b 7b02          	ld	a,(OFST+2,sp)
7417  002d a110          	cp	a,#16
7418  002f 2724          	jreq	L6221
7419  0031 7b02          	ld	a,(OFST+2,sp)
7420  0033 a120          	cp	a,#32
7421  0035 271e          	jreq	L6221
7422  0037 7b02          	ld	a,(OFST+2,sp)
7423  0039 a130          	cp	a,#48
7424  003b 2718          	jreq	L6221
7425  003d 7b02          	ld	a,(OFST+2,sp)
7426  003f a160          	cp	a,#96
7427  0041 2712          	jreq	L6221
7428  0043 7b02          	ld	a,(OFST+2,sp)
7429  0045 a170          	cp	a,#112
7430  0047 270c          	jreq	L6221
7431  0049 7b02          	ld	a,(OFST+2,sp)
7432  004b a150          	cp	a,#80
7433  004d 2706          	jreq	L6221
7434  004f 7b02          	ld	a,(OFST+2,sp)
7435  0051 a140          	cp	a,#64
7436  0053 2603          	jrne	L4221
7437  0055               L6221:
7438  0055 4f            	clr	a
7439  0056 2010          	jra	L0321
7440  0058               L4221:
7441  0058 ae06b4        	ldw	x,#1716
7442  005b 89            	pushw	x
7443  005c ae0000        	ldw	x,#0
7444  005f 89            	pushw	x
7445  0060 ae0000        	ldw	x,#L101
7446  0063 cd0000        	call	_assert_failed
7448  0066 5b04          	addw	sp,#4
7449  0068               L0321:
7450                     ; 1718   if (TIM1_Channel == TIM1_CHANNEL_1)
7452  0068 0d01          	tnz	(OFST+1,sp)
7453  006a 2610          	jrne	L5572
7454                     ; 1721     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
7456  006c 7211525c      	bres	21084,#0
7457                     ; 1724     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) 
7457                     ; 1725                             | (uint8_t)TIM1_OCMode);
7459  0070 c65258        	ld	a,21080
7460  0073 a48f          	and	a,#143
7461  0075 1a02          	or	a,(OFST+2,sp)
7462  0077 c75258        	ld	21080,a
7464  007a 203a          	jra	L7572
7465  007c               L5572:
7466                     ; 1727   else if (TIM1_Channel == TIM1_CHANNEL_2)
7468  007c 7b01          	ld	a,(OFST+1,sp)
7469  007e a101          	cp	a,#1
7470  0080 2610          	jrne	L1672
7471                     ; 1730     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
7473  0082 7219525c      	bres	21084,#4
7474                     ; 1733     TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
7474                     ; 1734                             | (uint8_t)TIM1_OCMode);
7476  0086 c65259        	ld	a,21081
7477  0089 a48f          	and	a,#143
7478  008b 1a02          	or	a,(OFST+2,sp)
7479  008d c75259        	ld	21081,a
7481  0090 2024          	jra	L7572
7482  0092               L1672:
7483                     ; 1736   else if (TIM1_Channel == TIM1_CHANNEL_3)
7485  0092 7b01          	ld	a,(OFST+1,sp)
7486  0094 a102          	cp	a,#2
7487  0096 2610          	jrne	L5672
7488                     ; 1739     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
7490  0098 7211525d      	bres	21085,#0
7491                     ; 1742     TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) 
7491                     ; 1743                             | (uint8_t)TIM1_OCMode);
7493  009c c6525a        	ld	a,21082
7494  009f a48f          	and	a,#143
7495  00a1 1a02          	or	a,(OFST+2,sp)
7496  00a3 c7525a        	ld	21082,a
7498  00a6 200e          	jra	L7572
7499  00a8               L5672:
7500                     ; 1748     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
7502  00a8 7219525d      	bres	21085,#4
7503                     ; 1751     TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
7503                     ; 1752                             | (uint8_t)TIM1_OCMode);
7505  00ac c6525b        	ld	a,21083
7506  00af a48f          	and	a,#143
7507  00b1 1a02          	or	a,(OFST+2,sp)
7508  00b3 c7525b        	ld	21083,a
7509  00b6               L7572:
7510                     ; 1754 }
7513  00b6 85            	popw	x
7514  00b7 81            	ret
7548                     ; 1762 void TIM1_SetCounter(uint16_t Counter)
7548                     ; 1763 {
7549                     .text:	section	.text,new
7550  0000               _TIM1_SetCounter:
7554                     ; 1765   TIM1->CNTRH = (uint8_t)(Counter >> 8);
7556  0000 9e            	ld	a,xh
7557  0001 c7525e        	ld	21086,a
7558                     ; 1766   TIM1->CNTRL = (uint8_t)(Counter);
7560  0004 9f            	ld	a,xl
7561  0005 c7525f        	ld	21087,a
7562                     ; 1767 }
7565  0008 81            	ret
7599                     ; 1775 void TIM1_SetAutoreload(uint16_t Autoreload)
7599                     ; 1776 {
7600                     .text:	section	.text,new
7601  0000               _TIM1_SetAutoreload:
7605                     ; 1778   TIM1->ARRH = (uint8_t)(Autoreload >> 8);
7607  0000 9e            	ld	a,xh
7608  0001 c75262        	ld	21090,a
7609                     ; 1779   TIM1->ARRL = (uint8_t)(Autoreload);
7611  0004 9f            	ld	a,xl
7612  0005 c75263        	ld	21091,a
7613                     ; 1780  }
7616  0008 81            	ret
7650                     ; 1788 void TIM1_SetCompare1(uint16_t Compare1)
7650                     ; 1789 {
7651                     .text:	section	.text,new
7652  0000               _TIM1_SetCompare1:
7656                     ; 1791   TIM1->CCR1H = (uint8_t)(Compare1 >> 8);
7658  0000 9e            	ld	a,xh
7659  0001 c75265        	ld	21093,a
7660                     ; 1792   TIM1->CCR1L = (uint8_t)(Compare1);
7662  0004 9f            	ld	a,xl
7663  0005 c75266        	ld	21094,a
7664                     ; 1793 }
7667  0008 81            	ret
7701                     ; 1801 void TIM1_SetCompare2(uint16_t Compare2)
7701                     ; 1802 {
7702                     .text:	section	.text,new
7703  0000               _TIM1_SetCompare2:
7707                     ; 1804   TIM1->CCR2H = (uint8_t)(Compare2 >> 8);
7709  0000 9e            	ld	a,xh
7710  0001 c75267        	ld	21095,a
7711                     ; 1805   TIM1->CCR2L = (uint8_t)(Compare2);
7713  0004 9f            	ld	a,xl
7714  0005 c75268        	ld	21096,a
7715                     ; 1806 }
7718  0008 81            	ret
7752                     ; 1814 void TIM1_SetCompare3(uint16_t Compare3)
7752                     ; 1815 {
7753                     .text:	section	.text,new
7754  0000               _TIM1_SetCompare3:
7758                     ; 1817   TIM1->CCR3H = (uint8_t)(Compare3 >> 8);
7760  0000 9e            	ld	a,xh
7761  0001 c75269        	ld	21097,a
7762                     ; 1818   TIM1->CCR3L = (uint8_t)(Compare3);
7764  0004 9f            	ld	a,xl
7765  0005 c7526a        	ld	21098,a
7766                     ; 1819 }
7769  0008 81            	ret
7803                     ; 1827 void TIM1_SetCompare4(uint16_t Compare4)
7803                     ; 1828 {
7804                     .text:	section	.text,new
7805  0000               _TIM1_SetCompare4:
7809                     ; 1830   TIM1->CCR4H = (uint8_t)(Compare4 >> 8);
7811  0000 9e            	ld	a,xh
7812  0001 c7526b        	ld	21099,a
7813                     ; 1831   TIM1->CCR4L = (uint8_t)(Compare4);
7815  0004 9f            	ld	a,xl
7816  0005 c7526c        	ld	21100,a
7817                     ; 1832 }
7820  0008 81            	ret
7857                     ; 1844 void TIM1_SetIC1Prescaler(TIM1_ICPSC_TypeDef TIM1_IC1Prescaler)
7857                     ; 1845 {
7858                     .text:	section	.text,new
7859  0000               _TIM1_SetIC1Prescaler:
7861  0000 88            	push	a
7862       00000000      OFST:	set	0
7865                     ; 1847   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC1Prescaler));
7867  0001 4d            	tnz	a
7868  0002 270c          	jreq	L2521
7869  0004 a104          	cp	a,#4
7870  0006 2708          	jreq	L2521
7871  0008 a108          	cp	a,#8
7872  000a 2704          	jreq	L2521
7873  000c a10c          	cp	a,#12
7874  000e 2603          	jrne	L0521
7875  0010               L2521:
7876  0010 4f            	clr	a
7877  0011 2010          	jra	L4521
7878  0013               L0521:
7879  0013 ae0737        	ldw	x,#1847
7880  0016 89            	pushw	x
7881  0017 ae0000        	ldw	x,#0
7882  001a 89            	pushw	x
7883  001b ae0000        	ldw	x,#L101
7884  001e cd0000        	call	_assert_failed
7886  0021 5b04          	addw	sp,#4
7887  0023               L4521:
7888                     ; 1850   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_ICxPSC)) 
7888                     ; 1851                           | (uint8_t)TIM1_IC1Prescaler);
7890  0023 c65258        	ld	a,21080
7891  0026 a4f3          	and	a,#243
7892  0028 1a01          	or	a,(OFST+1,sp)
7893  002a c75258        	ld	21080,a
7894                     ; 1852 }
7897  002d 84            	pop	a
7898  002e 81            	ret
7935                     ; 1864 void TIM1_SetIC2Prescaler(TIM1_ICPSC_TypeDef TIM1_IC2Prescaler)
7935                     ; 1865 {
7936                     .text:	section	.text,new
7937  0000               _TIM1_SetIC2Prescaler:
7939  0000 88            	push	a
7940       00000000      OFST:	set	0
7943                     ; 1868   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC2Prescaler));
7945  0001 4d            	tnz	a
7946  0002 270c          	jreq	L2621
7947  0004 a104          	cp	a,#4
7948  0006 2708          	jreq	L2621
7949  0008 a108          	cp	a,#8
7950  000a 2704          	jreq	L2621
7951  000c a10c          	cp	a,#12
7952  000e 2603          	jrne	L0621
7953  0010               L2621:
7954  0010 4f            	clr	a
7955  0011 2010          	jra	L4621
7956  0013               L0621:
7957  0013 ae074c        	ldw	x,#1868
7958  0016 89            	pushw	x
7959  0017 ae0000        	ldw	x,#0
7960  001a 89            	pushw	x
7961  001b ae0000        	ldw	x,#L101
7962  001e cd0000        	call	_assert_failed
7964  0021 5b04          	addw	sp,#4
7965  0023               L4621:
7966                     ; 1871   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_ICxPSC))
7966                     ; 1872                           | (uint8_t)TIM1_IC2Prescaler);
7968  0023 c65259        	ld	a,21081
7969  0026 a4f3          	and	a,#243
7970  0028 1a01          	or	a,(OFST+1,sp)
7971  002a c75259        	ld	21081,a
7972                     ; 1873 }
7975  002d 84            	pop	a
7976  002e 81            	ret
8013                     ; 1885 void TIM1_SetIC3Prescaler(TIM1_ICPSC_TypeDef TIM1_IC3Prescaler)
8013                     ; 1886 {
8014                     .text:	section	.text,new
8015  0000               _TIM1_SetIC3Prescaler:
8017  0000 88            	push	a
8018       00000000      OFST:	set	0
8021                     ; 1889   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC3Prescaler));
8023  0001 4d            	tnz	a
8024  0002 270c          	jreq	L2721
8025  0004 a104          	cp	a,#4
8026  0006 2708          	jreq	L2721
8027  0008 a108          	cp	a,#8
8028  000a 2704          	jreq	L2721
8029  000c a10c          	cp	a,#12
8030  000e 2603          	jrne	L0721
8031  0010               L2721:
8032  0010 4f            	clr	a
8033  0011 2010          	jra	L4721
8034  0013               L0721:
8035  0013 ae0761        	ldw	x,#1889
8036  0016 89            	pushw	x
8037  0017 ae0000        	ldw	x,#0
8038  001a 89            	pushw	x
8039  001b ae0000        	ldw	x,#L101
8040  001e cd0000        	call	_assert_failed
8042  0021 5b04          	addw	sp,#4
8043  0023               L4721:
8044                     ; 1892   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_ICxPSC)) | 
8044                     ; 1893                           (uint8_t)TIM1_IC3Prescaler);
8046  0023 c6525a        	ld	a,21082
8047  0026 a4f3          	and	a,#243
8048  0028 1a01          	or	a,(OFST+1,sp)
8049  002a c7525a        	ld	21082,a
8050                     ; 1894 }
8053  002d 84            	pop	a
8054  002e 81            	ret
8091                     ; 1906 void TIM1_SetIC4Prescaler(TIM1_ICPSC_TypeDef TIM1_IC4Prescaler)
8091                     ; 1907 {
8092                     .text:	section	.text,new
8093  0000               _TIM1_SetIC4Prescaler:
8095  0000 88            	push	a
8096       00000000      OFST:	set	0
8099                     ; 1910   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC4Prescaler));
8101  0001 4d            	tnz	a
8102  0002 270c          	jreq	L2031
8103  0004 a104          	cp	a,#4
8104  0006 2708          	jreq	L2031
8105  0008 a108          	cp	a,#8
8106  000a 2704          	jreq	L2031
8107  000c a10c          	cp	a,#12
8108  000e 2603          	jrne	L0031
8109  0010               L2031:
8110  0010 4f            	clr	a
8111  0011 2010          	jra	L4031
8112  0013               L0031:
8113  0013 ae0776        	ldw	x,#1910
8114  0016 89            	pushw	x
8115  0017 ae0000        	ldw	x,#0
8116  001a 89            	pushw	x
8117  001b ae0000        	ldw	x,#L101
8118  001e cd0000        	call	_assert_failed
8120  0021 5b04          	addw	sp,#4
8121  0023               L4031:
8122                     ; 1913   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_ICxPSC)) |
8122                     ; 1914                           (uint8_t)TIM1_IC4Prescaler);
8124  0023 c6525b        	ld	a,21083
8125  0026 a4f3          	and	a,#243
8126  0028 1a01          	or	a,(OFST+1,sp)
8127  002a c7525b        	ld	21083,a
8128                     ; 1915 }
8131  002d 84            	pop	a
8132  002e 81            	ret
8184                     ; 1922 uint16_t TIM1_GetCapture1(void)
8184                     ; 1923 {
8185                     .text:	section	.text,new
8186  0000               _TIM1_GetCapture1:
8188  0000 5204          	subw	sp,#4
8189       00000004      OFST:	set	4
8192                     ; 1926   uint16_t tmpccr1 = 0;
8194                     ; 1927   uint8_t tmpccr1l=0, tmpccr1h=0;
8198                     ; 1929   tmpccr1h = TIM1->CCR1H;
8200  0002 c65265        	ld	a,21093
8201  0005 6b02          	ld	(OFST-2,sp),a
8203                     ; 1930   tmpccr1l = TIM1->CCR1L;
8205  0007 c65266        	ld	a,21094
8206  000a 6b01          	ld	(OFST-3,sp),a
8208                     ; 1932   tmpccr1 = (uint16_t)(tmpccr1l);
8210  000c 7b01          	ld	a,(OFST-3,sp)
8211  000e 5f            	clrw	x
8212  000f 97            	ld	xl,a
8213  0010 1f03          	ldw	(OFST-1,sp),x
8215                     ; 1933   tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
8217  0012 7b02          	ld	a,(OFST-2,sp)
8218  0014 5f            	clrw	x
8219  0015 97            	ld	xl,a
8220  0016 4f            	clr	a
8221  0017 02            	rlwa	x,a
8222  0018 01            	rrwa	x,a
8223  0019 1a04          	or	a,(OFST+0,sp)
8224  001b 01            	rrwa	x,a
8225  001c 1a03          	or	a,(OFST-1,sp)
8226  001e 01            	rrwa	x,a
8227  001f 1f03          	ldw	(OFST-1,sp),x
8229                     ; 1935   return (uint16_t)tmpccr1;
8231  0021 1e03          	ldw	x,(OFST-1,sp)
8234  0023 5b04          	addw	sp,#4
8235  0025 81            	ret
8287                     ; 1943 uint16_t TIM1_GetCapture2(void)
8287                     ; 1944 {
8288                     .text:	section	.text,new
8289  0000               _TIM1_GetCapture2:
8291  0000 5204          	subw	sp,#4
8292       00000004      OFST:	set	4
8295                     ; 1947   uint16_t tmpccr2 = 0;
8297                     ; 1948   uint8_t tmpccr2l=0, tmpccr2h=0;
8301                     ; 1950   tmpccr2h = TIM1->CCR2H;
8303  0002 c65267        	ld	a,21095
8304  0005 6b02          	ld	(OFST-2,sp),a
8306                     ; 1951   tmpccr2l = TIM1->CCR2L;
8308  0007 c65268        	ld	a,21096
8309  000a 6b01          	ld	(OFST-3,sp),a
8311                     ; 1953   tmpccr2 = (uint16_t)(tmpccr2l);
8313  000c 7b01          	ld	a,(OFST-3,sp)
8314  000e 5f            	clrw	x
8315  000f 97            	ld	xl,a
8316  0010 1f03          	ldw	(OFST-1,sp),x
8318                     ; 1954   tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
8320  0012 7b02          	ld	a,(OFST-2,sp)
8321  0014 5f            	clrw	x
8322  0015 97            	ld	xl,a
8323  0016 4f            	clr	a
8324  0017 02            	rlwa	x,a
8325  0018 01            	rrwa	x,a
8326  0019 1a04          	or	a,(OFST+0,sp)
8327  001b 01            	rrwa	x,a
8328  001c 1a03          	or	a,(OFST-1,sp)
8329  001e 01            	rrwa	x,a
8330  001f 1f03          	ldw	(OFST-1,sp),x
8332                     ; 1956   return (uint16_t)tmpccr2;
8334  0021 1e03          	ldw	x,(OFST-1,sp)
8337  0023 5b04          	addw	sp,#4
8338  0025 81            	ret
8390                     ; 1964 uint16_t TIM1_GetCapture3(void)
8390                     ; 1965 {
8391                     .text:	section	.text,new
8392  0000               _TIM1_GetCapture3:
8394  0000 5204          	subw	sp,#4
8395       00000004      OFST:	set	4
8398                     ; 1967   uint16_t tmpccr3 = 0;
8400                     ; 1968   uint8_t tmpccr3l=0, tmpccr3h=0;
8404                     ; 1970   tmpccr3h = TIM1->CCR3H;
8406  0002 c65269        	ld	a,21097
8407  0005 6b02          	ld	(OFST-2,sp),a
8409                     ; 1971   tmpccr3l = TIM1->CCR3L;
8411  0007 c6526a        	ld	a,21098
8412  000a 6b01          	ld	(OFST-3,sp),a
8414                     ; 1973   tmpccr3 = (uint16_t)(tmpccr3l);
8416  000c 7b01          	ld	a,(OFST-3,sp)
8417  000e 5f            	clrw	x
8418  000f 97            	ld	xl,a
8419  0010 1f03          	ldw	(OFST-1,sp),x
8421                     ; 1974   tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
8423  0012 7b02          	ld	a,(OFST-2,sp)
8424  0014 5f            	clrw	x
8425  0015 97            	ld	xl,a
8426  0016 4f            	clr	a
8427  0017 02            	rlwa	x,a
8428  0018 01            	rrwa	x,a
8429  0019 1a04          	or	a,(OFST+0,sp)
8430  001b 01            	rrwa	x,a
8431  001c 1a03          	or	a,(OFST-1,sp)
8432  001e 01            	rrwa	x,a
8433  001f 1f03          	ldw	(OFST-1,sp),x
8435                     ; 1976   return (uint16_t)tmpccr3;
8437  0021 1e03          	ldw	x,(OFST-1,sp)
8440  0023 5b04          	addw	sp,#4
8441  0025 81            	ret
8493                     ; 1984 uint16_t TIM1_GetCapture4(void)
8493                     ; 1985 {
8494                     .text:	section	.text,new
8495  0000               _TIM1_GetCapture4:
8497  0000 5204          	subw	sp,#4
8498       00000004      OFST:	set	4
8501                     ; 1987   uint16_t tmpccr4 = 0;
8503                     ; 1988   uint8_t tmpccr4l=0, tmpccr4h=0;
8507                     ; 1990   tmpccr4h = TIM1->CCR4H;
8509  0002 c6526b        	ld	a,21099
8510  0005 6b02          	ld	(OFST-2,sp),a
8512                     ; 1991   tmpccr4l = TIM1->CCR4L;
8514  0007 c6526c        	ld	a,21100
8515  000a 6b01          	ld	(OFST-3,sp),a
8517                     ; 1993   tmpccr4 = (uint16_t)(tmpccr4l);
8519  000c 7b01          	ld	a,(OFST-3,sp)
8520  000e 5f            	clrw	x
8521  000f 97            	ld	xl,a
8522  0010 1f03          	ldw	(OFST-1,sp),x
8524                     ; 1994   tmpccr4 |= (uint16_t)((uint16_t)tmpccr4h << 8);
8526  0012 7b02          	ld	a,(OFST-2,sp)
8527  0014 5f            	clrw	x
8528  0015 97            	ld	xl,a
8529  0016 4f            	clr	a
8530  0017 02            	rlwa	x,a
8531  0018 01            	rrwa	x,a
8532  0019 1a04          	or	a,(OFST+0,sp)
8533  001b 01            	rrwa	x,a
8534  001c 1a03          	or	a,(OFST-1,sp)
8535  001e 01            	rrwa	x,a
8536  001f 1f03          	ldw	(OFST-1,sp),x
8538                     ; 1996   return (uint16_t)tmpccr4;
8540  0021 1e03          	ldw	x,(OFST-1,sp)
8543  0023 5b04          	addw	sp,#4
8544  0025 81            	ret
8578                     ; 2004 uint16_t TIM1_GetCounter(void)
8578                     ; 2005 {
8579                     .text:	section	.text,new
8580  0000               _TIM1_GetCounter:
8582  0000 89            	pushw	x
8583       00000002      OFST:	set	2
8586                     ; 2006   uint16_t tmpcntr = 0;
8588                     ; 2008   tmpcntr = ((uint16_t)TIM1->CNTRH << 8);
8590  0001 c6525e        	ld	a,21086
8591  0004 5f            	clrw	x
8592  0005 97            	ld	xl,a
8593  0006 4f            	clr	a
8594  0007 02            	rlwa	x,a
8595  0008 1f01          	ldw	(OFST-1,sp),x
8597                     ; 2011   return (uint16_t)(tmpcntr | (uint16_t)(TIM1->CNTRL));
8599  000a c6525f        	ld	a,21087
8600  000d 5f            	clrw	x
8601  000e 97            	ld	xl,a
8602  000f 01            	rrwa	x,a
8603  0010 1a02          	or	a,(OFST+0,sp)
8604  0012 01            	rrwa	x,a
8605  0013 1a01          	or	a,(OFST-1,sp)
8606  0015 01            	rrwa	x,a
8609  0016 5b02          	addw	sp,#2
8610  0018 81            	ret
8644                     ; 2019 uint16_t TIM1_GetPrescaler(void)
8644                     ; 2020 {
8645                     .text:	section	.text,new
8646  0000               _TIM1_GetPrescaler:
8648  0000 89            	pushw	x
8649       00000002      OFST:	set	2
8652                     ; 2021   uint16_t temp = 0;
8654                     ; 2023   temp = ((uint16_t)TIM1->PSCRH << 8);
8656  0001 c65260        	ld	a,21088
8657  0004 5f            	clrw	x
8658  0005 97            	ld	xl,a
8659  0006 4f            	clr	a
8660  0007 02            	rlwa	x,a
8661  0008 1f01          	ldw	(OFST-1,sp),x
8663                     ; 2026   return (uint16_t)( temp | (uint16_t)(TIM1->PSCRL));
8665  000a c65261        	ld	a,21089
8666  000d 5f            	clrw	x
8667  000e 97            	ld	xl,a
8668  000f 01            	rrwa	x,a
8669  0010 1a02          	or	a,(OFST+0,sp)
8670  0012 01            	rrwa	x,a
8671  0013 1a01          	or	a,(OFST-1,sp)
8672  0015 01            	rrwa	x,a
8675  0016 5b02          	addw	sp,#2
8676  0018 81            	ret
8851                     ; 2047 FlagStatus TIM1_GetFlagStatus(TIM1_FLAG_TypeDef TIM1_FLAG)
8851                     ; 2048 {
8852                     .text:	section	.text,new
8853  0000               _TIM1_GetFlagStatus:
8855  0000 89            	pushw	x
8856  0001 89            	pushw	x
8857       00000002      OFST:	set	2
8860                     ; 2049   FlagStatus bitstatus = RESET;
8862                     ; 2050   uint8_t tim1_flag_l = 0, tim1_flag_h = 0;
8866                     ; 2053   assert_param(IS_TIM1_GET_FLAG_OK(TIM1_FLAG));
8868  0002 a30001        	cpw	x,#1
8869  0005 2737          	jreq	L6231
8870  0007 a30002        	cpw	x,#2
8871  000a 2732          	jreq	L6231
8872  000c a30004        	cpw	x,#4
8873  000f 272d          	jreq	L6231
8874  0011 a30008        	cpw	x,#8
8875  0014 2728          	jreq	L6231
8876  0016 a30010        	cpw	x,#16
8877  0019 2723          	jreq	L6231
8878  001b a30020        	cpw	x,#32
8879  001e 271e          	jreq	L6231
8880  0020 a30040        	cpw	x,#64
8881  0023 2719          	jreq	L6231
8882  0025 a30080        	cpw	x,#128
8883  0028 2714          	jreq	L6231
8884  002a a30200        	cpw	x,#512
8885  002d 270f          	jreq	L6231
8886  002f a30400        	cpw	x,#1024
8887  0032 270a          	jreq	L6231
8888  0034 a30800        	cpw	x,#2048
8889  0037 2705          	jreq	L6231
8890  0039 a31000        	cpw	x,#4096
8891  003c 2603          	jrne	L4231
8892  003e               L6231:
8893  003e 4f            	clr	a
8894  003f 2010          	jra	L0331
8895  0041               L4231:
8896  0041 ae0805        	ldw	x,#2053
8897  0044 89            	pushw	x
8898  0045 ae0000        	ldw	x,#0
8899  0048 89            	pushw	x
8900  0049 ae0000        	ldw	x,#L101
8901  004c cd0000        	call	_assert_failed
8903  004f 5b04          	addw	sp,#4
8904  0051               L0331:
8905                     ; 2055   tim1_flag_l = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_FLAG);
8907  0051 c65255        	ld	a,21077
8908  0054 1404          	and	a,(OFST+2,sp)
8909  0056 6b01          	ld	(OFST-1,sp),a
8911                     ; 2056   tim1_flag_h = (uint8_t)((uint16_t)TIM1_FLAG >> 8);
8913  0058 7b03          	ld	a,(OFST+1,sp)
8914  005a 6b02          	ld	(OFST+0,sp),a
8916                     ; 2058   if ((tim1_flag_l | (uint8_t)(TIM1->SR2 & tim1_flag_h)) != 0)
8918  005c c65256        	ld	a,21078
8919  005f 1402          	and	a,(OFST+0,sp)
8920  0061 1a01          	or	a,(OFST-1,sp)
8921  0063 2706          	jreq	L7643
8922                     ; 2060     bitstatus = SET;
8924  0065 a601          	ld	a,#1
8925  0067 6b02          	ld	(OFST+0,sp),a
8928  0069 2002          	jra	L1743
8929  006b               L7643:
8930                     ; 2064     bitstatus = RESET;
8932  006b 0f02          	clr	(OFST+0,sp)
8934  006d               L1743:
8935                     ; 2066   return (FlagStatus)(bitstatus);
8937  006d 7b02          	ld	a,(OFST+0,sp)
8940  006f 5b04          	addw	sp,#4
8941  0071 81            	ret
8977                     ; 2087 void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
8977                     ; 2088 {
8978                     .text:	section	.text,new
8979  0000               _TIM1_ClearFlag:
8981  0000 89            	pushw	x
8982       00000000      OFST:	set	0
8985                     ; 2090   assert_param(IS_TIM1_CLEAR_FLAG_OK(TIM1_FLAG));
8987  0001 01            	rrwa	x,a
8988  0002 9f            	ld	a,xl
8989  0003 a4e1          	and	a,#225
8990  0005 97            	ld	xl,a
8991  0006 4f            	clr	a
8992  0007 02            	rlwa	x,a
8993  0008 5d            	tnzw	x
8994  0009 2607          	jrne	L4331
8995  000b 1e01          	ldw	x,(OFST+1,sp)
8996  000d 2703          	jreq	L4331
8997  000f 4f            	clr	a
8998  0010 2010          	jra	L6331
8999  0012               L4331:
9000  0012 ae082a        	ldw	x,#2090
9001  0015 89            	pushw	x
9002  0016 ae0000        	ldw	x,#0
9003  0019 89            	pushw	x
9004  001a ae0000        	ldw	x,#L101
9005  001d cd0000        	call	_assert_failed
9007  0020 5b04          	addw	sp,#4
9008  0022               L6331:
9009                     ; 2093   TIM1->SR1 = (uint8_t)(~(uint8_t)(TIM1_FLAG));
9011  0022 7b02          	ld	a,(OFST+2,sp)
9012  0024 43            	cpl	a
9013  0025 c75255        	ld	21077,a
9014                     ; 2094   TIM1->SR2 = (uint8_t)((uint8_t)(~((uint8_t)((uint16_t)TIM1_FLAG >> 8))) & 
9014                     ; 2095                         (uint8_t)0x1E);
9016  0028 7b01          	ld	a,(OFST+1,sp)
9017  002a 43            	cpl	a
9018  002b a41e          	and	a,#30
9019  002d c75256        	ld	21078,a
9020                     ; 2096 }
9023  0030 85            	popw	x
9024  0031 81            	ret
9089                     ; 2112 ITStatus TIM1_GetITStatus(TIM1_IT_TypeDef TIM1_IT)
9089                     ; 2113 {
9090                     .text:	section	.text,new
9091  0000               _TIM1_GetITStatus:
9093  0000 88            	push	a
9094  0001 89            	pushw	x
9095       00000002      OFST:	set	2
9098                     ; 2114   ITStatus bitstatus = RESET;
9100                     ; 2115   uint8_t TIM1_itStatus = 0, TIM1_itEnable = 0;
9104                     ; 2118   assert_param(IS_TIM1_GET_IT_OK(TIM1_IT));
9106  0002 a101          	cp	a,#1
9107  0004 271c          	jreq	L4431
9108  0006 a102          	cp	a,#2
9109  0008 2718          	jreq	L4431
9110  000a a104          	cp	a,#4
9111  000c 2714          	jreq	L4431
9112  000e a108          	cp	a,#8
9113  0010 2710          	jreq	L4431
9114  0012 a110          	cp	a,#16
9115  0014 270c          	jreq	L4431
9116  0016 a120          	cp	a,#32
9117  0018 2708          	jreq	L4431
9118  001a a140          	cp	a,#64
9119  001c 2704          	jreq	L4431
9120  001e a180          	cp	a,#128
9121  0020 2603          	jrne	L2431
9122  0022               L4431:
9123  0022 4f            	clr	a
9124  0023 2010          	jra	L6431
9125  0025               L2431:
9126  0025 ae0846        	ldw	x,#2118
9127  0028 89            	pushw	x
9128  0029 ae0000        	ldw	x,#0
9129  002c 89            	pushw	x
9130  002d ae0000        	ldw	x,#L101
9131  0030 cd0000        	call	_assert_failed
9133  0033 5b04          	addw	sp,#4
9134  0035               L6431:
9135                     ; 2120   TIM1_itStatus = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_IT);
9137  0035 c65255        	ld	a,21077
9138  0038 1403          	and	a,(OFST+1,sp)
9139  003a 6b01          	ld	(OFST-1,sp),a
9141                     ; 2122   TIM1_itEnable = (uint8_t)(TIM1->IER & (uint8_t)TIM1_IT);
9143  003c c65254        	ld	a,21076
9144  003f 1403          	and	a,(OFST+1,sp)
9145  0041 6b02          	ld	(OFST+0,sp),a
9147                     ; 2124   if ((TIM1_itStatus != (uint8_t)RESET ) && (TIM1_itEnable != (uint8_t)RESET ))
9149  0043 0d01          	tnz	(OFST-1,sp)
9150  0045 270a          	jreq	L3453
9152  0047 0d02          	tnz	(OFST+0,sp)
9153  0049 2706          	jreq	L3453
9154                     ; 2126     bitstatus = SET;
9156  004b a601          	ld	a,#1
9157  004d 6b02          	ld	(OFST+0,sp),a
9160  004f 2002          	jra	L5453
9161  0051               L3453:
9162                     ; 2130     bitstatus = RESET;
9164  0051 0f02          	clr	(OFST+0,sp)
9166  0053               L5453:
9167                     ; 2132   return (ITStatus)(bitstatus);
9169  0053 7b02          	ld	a,(OFST+0,sp)
9172  0055 5b03          	addw	sp,#3
9173  0057 81            	ret
9210                     ; 2149 void TIM1_ClearITPendingBit(TIM1_IT_TypeDef TIM1_IT)
9210                     ; 2150 {
9211                     .text:	section	.text,new
9212  0000               _TIM1_ClearITPendingBit:
9214  0000 88            	push	a
9215       00000000      OFST:	set	0
9218                     ; 2152   assert_param(IS_TIM1_IT_OK(TIM1_IT));
9220  0001 4d            	tnz	a
9221  0002 2703          	jreq	L2531
9222  0004 4f            	clr	a
9223  0005 2010          	jra	L4531
9224  0007               L2531:
9225  0007 ae0868        	ldw	x,#2152
9226  000a 89            	pushw	x
9227  000b ae0000        	ldw	x,#0
9228  000e 89            	pushw	x
9229  000f ae0000        	ldw	x,#L101
9230  0012 cd0000        	call	_assert_failed
9232  0015 5b04          	addw	sp,#4
9233  0017               L4531:
9234                     ; 2155   TIM1->SR1 = (uint8_t)(~(uint8_t)TIM1_IT);
9236  0017 7b01          	ld	a,(OFST+1,sp)
9237  0019 43            	cpl	a
9238  001a c75255        	ld	21077,a
9239                     ; 2156 }
9242  001d 84            	pop	a
9243  001e 81            	ret
9295                     ; 2174 static void TI1_Config(uint8_t TIM1_ICPolarity,
9295                     ; 2175                        uint8_t TIM1_ICSelection,
9295                     ; 2176                        uint8_t TIM1_ICFilter)
9295                     ; 2177 {
9296                     .text:	section	.text,new
9297  0000               L3_TI1_Config:
9299  0000 89            	pushw	x
9300  0001 88            	push	a
9301       00000001      OFST:	set	1
9304                     ; 2179   TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
9306  0002 7211525c      	bres	21084,#0
9307                     ; 2182   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) | 
9307                     ; 2183                           (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
9309  0006 7b06          	ld	a,(OFST+5,sp)
9310  0008 97            	ld	xl,a
9311  0009 a610          	ld	a,#16
9312  000b 42            	mul	x,a
9313  000c 9f            	ld	a,xl
9314  000d 1a03          	or	a,(OFST+2,sp)
9315  000f 6b01          	ld	(OFST+0,sp),a
9317  0011 c65258        	ld	a,21080
9318  0014 a40c          	and	a,#12
9319  0016 1a01          	or	a,(OFST+0,sp)
9320  0018 c75258        	ld	21080,a
9321                     ; 2186   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
9323  001b 0d02          	tnz	(OFST+1,sp)
9324  001d 2706          	jreq	L3163
9325                     ; 2188     TIM1->CCER1 |= TIM1_CCER1_CC1P;
9327  001f 7212525c      	bset	21084,#1
9329  0023 2004          	jra	L5163
9330  0025               L3163:
9331                     ; 2192     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
9333  0025 7213525c      	bres	21084,#1
9334  0029               L5163:
9335                     ; 2196   TIM1->CCER1 |=  TIM1_CCER1_CC1E;
9337  0029 7210525c      	bset	21084,#0
9338                     ; 2197 }
9341  002d 5b03          	addw	sp,#3
9342  002f 81            	ret
9394                     ; 2215 static void TI2_Config(uint8_t TIM1_ICPolarity,
9394                     ; 2216                        uint8_t TIM1_ICSelection,
9394                     ; 2217                        uint8_t TIM1_ICFilter)
9394                     ; 2218 {
9395                     .text:	section	.text,new
9396  0000               L5_TI2_Config:
9398  0000 89            	pushw	x
9399  0001 88            	push	a
9400       00000001      OFST:	set	1
9403                     ; 2220   TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
9405  0002 7219525c      	bres	21084,#4
9406                     ; 2223   TIM1->CCMR2  = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) 
9406                     ; 2224                            | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
9408  0006 7b06          	ld	a,(OFST+5,sp)
9409  0008 97            	ld	xl,a
9410  0009 a610          	ld	a,#16
9411  000b 42            	mul	x,a
9412  000c 9f            	ld	a,xl
9413  000d 1a03          	or	a,(OFST+2,sp)
9414  000f 6b01          	ld	(OFST+0,sp),a
9416  0011 c65259        	ld	a,21081
9417  0014 a40c          	and	a,#12
9418  0016 1a01          	or	a,(OFST+0,sp)
9419  0018 c75259        	ld	21081,a
9420                     ; 2226   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
9422  001b 0d02          	tnz	(OFST+1,sp)
9423  001d 2706          	jreq	L5463
9424                     ; 2228     TIM1->CCER1 |= TIM1_CCER1_CC2P;
9426  001f 721a525c      	bset	21084,#5
9428  0023 2004          	jra	L7463
9429  0025               L5463:
9430                     ; 2232     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
9432  0025 721b525c      	bres	21084,#5
9433  0029               L7463:
9434                     ; 2235   TIM1->CCER1 |=  TIM1_CCER1_CC2E;
9436  0029 7218525c      	bset	21084,#4
9437                     ; 2236 }
9440  002d 5b03          	addw	sp,#3
9441  002f 81            	ret
9493                     ; 2254 static void TI3_Config(uint8_t TIM1_ICPolarity,
9493                     ; 2255                        uint8_t TIM1_ICSelection,
9493                     ; 2256                        uint8_t TIM1_ICFilter)
9493                     ; 2257 {
9494                     .text:	section	.text,new
9495  0000               L7_TI3_Config:
9497  0000 89            	pushw	x
9498  0001 88            	push	a
9499       00000001      OFST:	set	1
9502                     ; 2259   TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
9504  0002 7211525d      	bres	21085,#0
9505                     ; 2262   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) 
9505                     ; 2263                           | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
9507  0006 7b06          	ld	a,(OFST+5,sp)
9508  0008 97            	ld	xl,a
9509  0009 a610          	ld	a,#16
9510  000b 42            	mul	x,a
9511  000c 9f            	ld	a,xl
9512  000d 1a03          	or	a,(OFST+2,sp)
9513  000f 6b01          	ld	(OFST+0,sp),a
9515  0011 c6525a        	ld	a,21082
9516  0014 a40c          	and	a,#12
9517  0016 1a01          	or	a,(OFST+0,sp)
9518  0018 c7525a        	ld	21082,a
9519                     ; 2266   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
9521  001b 0d02          	tnz	(OFST+1,sp)
9522  001d 2706          	jreq	L7763
9523                     ; 2268     TIM1->CCER2 |= TIM1_CCER2_CC3P;
9525  001f 7212525d      	bset	21085,#1
9527  0023 2004          	jra	L1073
9528  0025               L7763:
9529                     ; 2272     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
9531  0025 7213525d      	bres	21085,#1
9532  0029               L1073:
9533                     ; 2275   TIM1->CCER2 |=  TIM1_CCER2_CC3E;
9535  0029 7210525d      	bset	21085,#0
9536                     ; 2276 }
9539  002d 5b03          	addw	sp,#3
9540  002f 81            	ret
9592                     ; 2294 static void TI4_Config(uint8_t TIM1_ICPolarity,
9592                     ; 2295                        uint8_t TIM1_ICSelection,
9592                     ; 2296                        uint8_t TIM1_ICFilter)
9592                     ; 2297 {
9593                     .text:	section	.text,new
9594  0000               L11_TI4_Config:
9596  0000 89            	pushw	x
9597  0001 88            	push	a
9598       00000001      OFST:	set	1
9601                     ; 2299   TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
9603  0002 7219525d      	bres	21085,#4
9604                     ; 2302   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF )))
9604                     ; 2303                           | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
9606  0006 7b06          	ld	a,(OFST+5,sp)
9607  0008 97            	ld	xl,a
9608  0009 a610          	ld	a,#16
9609  000b 42            	mul	x,a
9610  000c 9f            	ld	a,xl
9611  000d 1a03          	or	a,(OFST+2,sp)
9612  000f 6b01          	ld	(OFST+0,sp),a
9614  0011 c6525b        	ld	a,21083
9615  0014 a40c          	and	a,#12
9616  0016 1a01          	or	a,(OFST+0,sp)
9617  0018 c7525b        	ld	21083,a
9618                     ; 2306   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
9620  001b 0d02          	tnz	(OFST+1,sp)
9621  001d 2706          	jreq	L1373
9622                     ; 2308     TIM1->CCER2 |= TIM1_CCER2_CC4P;
9624  001f 721a525d      	bset	21085,#5
9626  0023 2004          	jra	L3373
9627  0025               L1373:
9628                     ; 2312     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
9630  0025 721b525d      	bres	21085,#5
9631  0029               L3373:
9632                     ; 2316   TIM1->CCER2 |=  TIM1_CCER2_CC4E;
9634  0029 7218525d      	bset	21085,#4
9635                     ; 2317 }
9638  002d 5b03          	addw	sp,#3
9639  002f 81            	ret
9652                     	xdef	_TIM1_ClearITPendingBit
9653                     	xdef	_TIM1_GetITStatus
9654                     	xdef	_TIM1_ClearFlag
9655                     	xdef	_TIM1_GetFlagStatus
9656                     	xdef	_TIM1_GetPrescaler
9657                     	xdef	_TIM1_GetCounter
9658                     	xdef	_TIM1_GetCapture4
9659                     	xdef	_TIM1_GetCapture3
9660                     	xdef	_TIM1_GetCapture2
9661                     	xdef	_TIM1_GetCapture1
9662                     	xdef	_TIM1_SetIC4Prescaler
9663                     	xdef	_TIM1_SetIC3Prescaler
9664                     	xdef	_TIM1_SetIC2Prescaler
9665                     	xdef	_TIM1_SetIC1Prescaler
9666                     	xdef	_TIM1_SetCompare4
9667                     	xdef	_TIM1_SetCompare3
9668                     	xdef	_TIM1_SetCompare2
9669                     	xdef	_TIM1_SetCompare1
9670                     	xdef	_TIM1_SetAutoreload
9671                     	xdef	_TIM1_SetCounter
9672                     	xdef	_TIM1_SelectOCxM
9673                     	xdef	_TIM1_CCxNCmd
9674                     	xdef	_TIM1_CCxCmd
9675                     	xdef	_TIM1_OC4PolarityConfig
9676                     	xdef	_TIM1_OC3NPolarityConfig
9677                     	xdef	_TIM1_OC3PolarityConfig
9678                     	xdef	_TIM1_OC2NPolarityConfig
9679                     	xdef	_TIM1_OC2PolarityConfig
9680                     	xdef	_TIM1_OC1NPolarityConfig
9681                     	xdef	_TIM1_OC1PolarityConfig
9682                     	xdef	_TIM1_GenerateEvent
9683                     	xdef	_TIM1_OC4FastConfig
9684                     	xdef	_TIM1_OC3FastConfig
9685                     	xdef	_TIM1_OC2FastConfig
9686                     	xdef	_TIM1_OC1FastConfig
9687                     	xdef	_TIM1_OC4PreloadConfig
9688                     	xdef	_TIM1_OC3PreloadConfig
9689                     	xdef	_TIM1_OC2PreloadConfig
9690                     	xdef	_TIM1_OC1PreloadConfig
9691                     	xdef	_TIM1_CCPreloadControl
9692                     	xdef	_TIM1_SelectCOM
9693                     	xdef	_TIM1_ARRPreloadConfig
9694                     	xdef	_TIM1_ForcedOC4Config
9695                     	xdef	_TIM1_ForcedOC3Config
9696                     	xdef	_TIM1_ForcedOC2Config
9697                     	xdef	_TIM1_ForcedOC1Config
9698                     	xdef	_TIM1_CounterModeConfig
9699                     	xdef	_TIM1_PrescalerConfig
9700                     	xdef	_TIM1_EncoderInterfaceConfig
9701                     	xdef	_TIM1_SelectMasterSlaveMode
9702                     	xdef	_TIM1_SelectSlaveMode
9703                     	xdef	_TIM1_SelectOutputTrigger
9704                     	xdef	_TIM1_SelectOnePulseMode
9705                     	xdef	_TIM1_SelectHallSensor
9706                     	xdef	_TIM1_UpdateRequestConfig
9707                     	xdef	_TIM1_UpdateDisableConfig
9708                     	xdef	_TIM1_SelectInputTrigger
9709                     	xdef	_TIM1_TIxExternalClockConfig
9710                     	xdef	_TIM1_ETRConfig
9711                     	xdef	_TIM1_ETRClockMode2Config
9712                     	xdef	_TIM1_ETRClockMode1Config
9713                     	xdef	_TIM1_InternalClockConfig
9714                     	xdef	_TIM1_ITConfig
9715                     	xdef	_TIM1_CtrlPWMOutputs
9716                     	xdef	_TIM1_Cmd
9717                     	xdef	_TIM1_PWMIConfig
9718                     	xdef	_TIM1_ICInit
9719                     	xdef	_TIM1_BDTRConfig
9720                     	xdef	_TIM1_OC4Init
9721                     	xdef	_TIM1_OC3Init
9722                     	xdef	_TIM1_OC2Init
9723                     	xdef	_TIM1_OC1Init
9724                     	xdef	_TIM1_TimeBaseInit
9725                     	xdef	_TIM1_DeInit
9726                     	xref	_assert_failed
9727                     .const:	section	.text
9728  0000               L101:
9729  0000 2e2e5c6c6962  	dc.b	"..\libs\src\stm8s_"
9730  0012 74696d312e63  	dc.b	"tim1.c",0
9750                     	end
