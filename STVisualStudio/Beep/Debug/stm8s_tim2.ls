   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
  44                     ; 52 void TIM2_DeInit(void)
  44                     ; 53 {
  46                     .text:	section	.text,new
  47  0000               _TIM2_DeInit:
  51                     ; 54   TIM2->CR1 = (uint8_t)TIM2_CR1_RESET_VALUE;
  53  0000 725f5300      	clr	21248
  54                     ; 55   TIM2->IER = (uint8_t)TIM2_IER_RESET_VALUE;
  56  0004 725f5303      	clr	21251
  57                     ; 56   TIM2->SR2 = (uint8_t)TIM2_SR2_RESET_VALUE;
  59  0008 725f5305      	clr	21253
  60                     ; 59   TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  62  000c 725f530a      	clr	21258
  63                     ; 60   TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  65  0010 725f530b      	clr	21259
  66                     ; 64   TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  68  0014 725f530a      	clr	21258
  69                     ; 65   TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  71  0018 725f530b      	clr	21259
  72                     ; 66   TIM2->CCMR1 = (uint8_t)TIM2_CCMR1_RESET_VALUE;
  74  001c 725f5307      	clr	21255
  75                     ; 67   TIM2->CCMR2 = (uint8_t)TIM2_CCMR2_RESET_VALUE;
  77  0020 725f5308      	clr	21256
  78                     ; 68   TIM2->CCMR3 = (uint8_t)TIM2_CCMR3_RESET_VALUE;
  80  0024 725f5309      	clr	21257
  81                     ; 69   TIM2->CNTRH = (uint8_t)TIM2_CNTRH_RESET_VALUE;
  83  0028 725f530c      	clr	21260
  84                     ; 70   TIM2->CNTRL = (uint8_t)TIM2_CNTRL_RESET_VALUE;
  86  002c 725f530d      	clr	21261
  87                     ; 71   TIM2->PSCR = (uint8_t)TIM2_PSCR_RESET_VALUE;
  89  0030 725f530e      	clr	21262
  90                     ; 72   TIM2->ARRH  = (uint8_t)TIM2_ARRH_RESET_VALUE;
  92  0034 35ff530f      	mov	21263,#255
  93                     ; 73   TIM2->ARRL  = (uint8_t)TIM2_ARRL_RESET_VALUE;
  95  0038 35ff5310      	mov	21264,#255
  96                     ; 74   TIM2->CCR1H = (uint8_t)TIM2_CCR1H_RESET_VALUE;
  98  003c 725f5311      	clr	21265
  99                     ; 75   TIM2->CCR1L = (uint8_t)TIM2_CCR1L_RESET_VALUE;
 101  0040 725f5312      	clr	21266
 102                     ; 76   TIM2->CCR2H = (uint8_t)TIM2_CCR2H_RESET_VALUE;
 104  0044 725f5313      	clr	21267
 105                     ; 77   TIM2->CCR2L = (uint8_t)TIM2_CCR2L_RESET_VALUE;
 107  0048 725f5314      	clr	21268
 108                     ; 78   TIM2->CCR3H = (uint8_t)TIM2_CCR3H_RESET_VALUE;
 110  004c 725f5315      	clr	21269
 111                     ; 79   TIM2->CCR3L = (uint8_t)TIM2_CCR3L_RESET_VALUE;
 113  0050 725f5316      	clr	21270
 114                     ; 80   TIM2->SR1 = (uint8_t)TIM2_SR1_RESET_VALUE;
 116  0054 725f5304      	clr	21252
 117                     ; 81 }
 120  0058 81            	ret
 288                     ; 89 void TIM2_TimeBaseInit( TIM2_Prescaler_TypeDef TIM2_Prescaler,
 288                     ; 90                         uint16_t TIM2_Period)
 288                     ; 91 {
 289                     .text:	section	.text,new
 290  0000               _TIM2_TimeBaseInit:
 292  0000 88            	push	a
 293       00000000      OFST:	set	0
 296                     ; 93   TIM2->PSCR = (uint8_t)(TIM2_Prescaler);
 298  0001 c7530e        	ld	21262,a
 299                     ; 95   TIM2->ARRH = (uint8_t)(TIM2_Period >> 8);
 301  0004 7b04          	ld	a,(OFST+4,sp)
 302  0006 c7530f        	ld	21263,a
 303                     ; 96   TIM2->ARRL = (uint8_t)(TIM2_Period);
 305  0009 7b05          	ld	a,(OFST+5,sp)
 306  000b c75310        	ld	21264,a
 307                     ; 97 }
 310  000e 84            	pop	a
 311  000f 81            	ret
 469                     ; 108 void TIM2_OC1Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 469                     ; 109                   TIM2_OutputState_TypeDef TIM2_OutputState,
 469                     ; 110                   uint16_t TIM2_Pulse,
 469                     ; 111                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 469                     ; 112 {
 470                     .text:	section	.text,new
 471  0000               _TIM2_OC1Init:
 473  0000 89            	pushw	x
 474  0001 88            	push	a
 475       00000001      OFST:	set	1
 478                     ; 114   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 480  0002 9e            	ld	a,xh
 481  0003 4d            	tnz	a
 482  0004 2719          	jreq	L41
 483  0006 9e            	ld	a,xh
 484  0007 a110          	cp	a,#16
 485  0009 2714          	jreq	L41
 486  000b 9e            	ld	a,xh
 487  000c a120          	cp	a,#32
 488  000e 270f          	jreq	L41
 489  0010 9e            	ld	a,xh
 490  0011 a130          	cp	a,#48
 491  0013 270a          	jreq	L41
 492  0015 9e            	ld	a,xh
 493  0016 a160          	cp	a,#96
 494  0018 2705          	jreq	L41
 495  001a 9e            	ld	a,xh
 496  001b a170          	cp	a,#112
 497  001d 2603          	jrne	L21
 498  001f               L41:
 499  001f 4f            	clr	a
 500  0020 2010          	jra	L61
 501  0022               L21:
 502  0022 ae0072        	ldw	x,#114
 503  0025 89            	pushw	x
 504  0026 ae0000        	ldw	x,#0
 505  0029 89            	pushw	x
 506  002a ae0000        	ldw	x,#L702
 507  002d cd0000        	call	_assert_failed
 509  0030 5b04          	addw	sp,#4
 510  0032               L61:
 511                     ; 115   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 513  0032 0d03          	tnz	(OFST+2,sp)
 514  0034 2706          	jreq	L22
 515  0036 7b03          	ld	a,(OFST+2,sp)
 516  0038 a111          	cp	a,#17
 517  003a 2603          	jrne	L02
 518  003c               L22:
 519  003c 4f            	clr	a
 520  003d 2010          	jra	L42
 521  003f               L02:
 522  003f ae0073        	ldw	x,#115
 523  0042 89            	pushw	x
 524  0043 ae0000        	ldw	x,#0
 525  0046 89            	pushw	x
 526  0047 ae0000        	ldw	x,#L702
 527  004a cd0000        	call	_assert_failed
 529  004d 5b04          	addw	sp,#4
 530  004f               L42:
 531                     ; 116   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 533  004f 0d08          	tnz	(OFST+7,sp)
 534  0051 2706          	jreq	L03
 535  0053 7b08          	ld	a,(OFST+7,sp)
 536  0055 a122          	cp	a,#34
 537  0057 2603          	jrne	L62
 538  0059               L03:
 539  0059 4f            	clr	a
 540  005a 2010          	jra	L23
 541  005c               L62:
 542  005c ae0074        	ldw	x,#116
 543  005f 89            	pushw	x
 544  0060 ae0000        	ldw	x,#0
 545  0063 89            	pushw	x
 546  0064 ae0000        	ldw	x,#L702
 547  0067 cd0000        	call	_assert_failed
 549  006a 5b04          	addw	sp,#4
 550  006c               L23:
 551                     ; 119   TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC1E | TIM2_CCER1_CC1P));
 553  006c c6530a        	ld	a,21258
 554  006f a4fc          	and	a,#252
 555  0071 c7530a        	ld	21258,a
 556                     ; 121   TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER1_CC1E ) | 
 556                     ; 122                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC1P));
 558  0074 7b08          	ld	a,(OFST+7,sp)
 559  0076 a402          	and	a,#2
 560  0078 6b01          	ld	(OFST+0,sp),a
 562  007a 7b03          	ld	a,(OFST+2,sp)
 563  007c a401          	and	a,#1
 564  007e 1a01          	or	a,(OFST+0,sp)
 565  0080 ca530a        	or	a,21258
 566  0083 c7530a        	ld	21258,a
 567                     ; 125   TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM)) |
 567                     ; 126                           (uint8_t)TIM2_OCMode);
 569  0086 c65307        	ld	a,21255
 570  0089 a48f          	and	a,#143
 571  008b 1a02          	or	a,(OFST+1,sp)
 572  008d c75307        	ld	21255,a
 573                     ; 129   TIM2->CCR1H = (uint8_t)(TIM2_Pulse >> 8);
 575  0090 7b06          	ld	a,(OFST+5,sp)
 576  0092 c75311        	ld	21265,a
 577                     ; 130   TIM2->CCR1L = (uint8_t)(TIM2_Pulse);
 579  0095 7b07          	ld	a,(OFST+6,sp)
 580  0097 c75312        	ld	21266,a
 581                     ; 131 }
 584  009a 5b03          	addw	sp,#3
 585  009c 81            	ret
 650                     ; 142 void TIM2_OC2Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 650                     ; 143                   TIM2_OutputState_TypeDef TIM2_OutputState,
 650                     ; 144                   uint16_t TIM2_Pulse,
 650                     ; 145                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 650                     ; 146 {
 651                     .text:	section	.text,new
 652  0000               _TIM2_OC2Init:
 654  0000 89            	pushw	x
 655  0001 88            	push	a
 656       00000001      OFST:	set	1
 659                     ; 148   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 661  0002 9e            	ld	a,xh
 662  0003 4d            	tnz	a
 663  0004 2719          	jreq	L04
 664  0006 9e            	ld	a,xh
 665  0007 a110          	cp	a,#16
 666  0009 2714          	jreq	L04
 667  000b 9e            	ld	a,xh
 668  000c a120          	cp	a,#32
 669  000e 270f          	jreq	L04
 670  0010 9e            	ld	a,xh
 671  0011 a130          	cp	a,#48
 672  0013 270a          	jreq	L04
 673  0015 9e            	ld	a,xh
 674  0016 a160          	cp	a,#96
 675  0018 2705          	jreq	L04
 676  001a 9e            	ld	a,xh
 677  001b a170          	cp	a,#112
 678  001d 2603          	jrne	L63
 679  001f               L04:
 680  001f 4f            	clr	a
 681  0020 2010          	jra	L24
 682  0022               L63:
 683  0022 ae0094        	ldw	x,#148
 684  0025 89            	pushw	x
 685  0026 ae0000        	ldw	x,#0
 686  0029 89            	pushw	x
 687  002a ae0000        	ldw	x,#L702
 688  002d cd0000        	call	_assert_failed
 690  0030 5b04          	addw	sp,#4
 691  0032               L24:
 692                     ; 149   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 694  0032 0d03          	tnz	(OFST+2,sp)
 695  0034 2706          	jreq	L64
 696  0036 7b03          	ld	a,(OFST+2,sp)
 697  0038 a111          	cp	a,#17
 698  003a 2603          	jrne	L44
 699  003c               L64:
 700  003c 4f            	clr	a
 701  003d 2010          	jra	L05
 702  003f               L44:
 703  003f ae0095        	ldw	x,#149
 704  0042 89            	pushw	x
 705  0043 ae0000        	ldw	x,#0
 706  0046 89            	pushw	x
 707  0047 ae0000        	ldw	x,#L702
 708  004a cd0000        	call	_assert_failed
 710  004d 5b04          	addw	sp,#4
 711  004f               L05:
 712                     ; 150   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 714  004f 0d08          	tnz	(OFST+7,sp)
 715  0051 2706          	jreq	L45
 716  0053 7b08          	ld	a,(OFST+7,sp)
 717  0055 a122          	cp	a,#34
 718  0057 2603          	jrne	L25
 719  0059               L45:
 720  0059 4f            	clr	a
 721  005a 2010          	jra	L65
 722  005c               L25:
 723  005c ae0096        	ldw	x,#150
 724  005f 89            	pushw	x
 725  0060 ae0000        	ldw	x,#0
 726  0063 89            	pushw	x
 727  0064 ae0000        	ldw	x,#L702
 728  0067 cd0000        	call	_assert_failed
 730  006a 5b04          	addw	sp,#4
 731  006c               L65:
 732                     ; 154   TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC2E |  TIM2_CCER1_CC2P ));
 734  006c c6530a        	ld	a,21258
 735  006f a4cf          	and	a,#207
 736  0071 c7530a        	ld	21258,a
 737                     ; 156   TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState  & TIM2_CCER1_CC2E ) |
 737                     ; 157                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC2P));
 739  0074 7b08          	ld	a,(OFST+7,sp)
 740  0076 a420          	and	a,#32
 741  0078 6b01          	ld	(OFST+0,sp),a
 743  007a 7b03          	ld	a,(OFST+2,sp)
 744  007c a410          	and	a,#16
 745  007e 1a01          	or	a,(OFST+0,sp)
 746  0080 ca530a        	or	a,21258
 747  0083 c7530a        	ld	21258,a
 748                     ; 161   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM)) | 
 748                     ; 162                           (uint8_t)TIM2_OCMode);
 750  0086 c65308        	ld	a,21256
 751  0089 a48f          	and	a,#143
 752  008b 1a02          	or	a,(OFST+1,sp)
 753  008d c75308        	ld	21256,a
 754                     ; 166   TIM2->CCR2H = (uint8_t)(TIM2_Pulse >> 8);
 756  0090 7b06          	ld	a,(OFST+5,sp)
 757  0092 c75313        	ld	21267,a
 758                     ; 167   TIM2->CCR2L = (uint8_t)(TIM2_Pulse);
 760  0095 7b07          	ld	a,(OFST+6,sp)
 761  0097 c75314        	ld	21268,a
 762                     ; 168 }
 765  009a 5b03          	addw	sp,#3
 766  009c 81            	ret
 831                     ; 179 void TIM2_OC3Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 831                     ; 180                   TIM2_OutputState_TypeDef TIM2_OutputState,
 831                     ; 181                   uint16_t TIM2_Pulse,
 831                     ; 182                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 831                     ; 183 {
 832                     .text:	section	.text,new
 833  0000               _TIM2_OC3Init:
 835  0000 89            	pushw	x
 836  0001 88            	push	a
 837       00000001      OFST:	set	1
 840                     ; 185   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 842  0002 9e            	ld	a,xh
 843  0003 4d            	tnz	a
 844  0004 2719          	jreq	L46
 845  0006 9e            	ld	a,xh
 846  0007 a110          	cp	a,#16
 847  0009 2714          	jreq	L46
 848  000b 9e            	ld	a,xh
 849  000c a120          	cp	a,#32
 850  000e 270f          	jreq	L46
 851  0010 9e            	ld	a,xh
 852  0011 a130          	cp	a,#48
 853  0013 270a          	jreq	L46
 854  0015 9e            	ld	a,xh
 855  0016 a160          	cp	a,#96
 856  0018 2705          	jreq	L46
 857  001a 9e            	ld	a,xh
 858  001b a170          	cp	a,#112
 859  001d 2603          	jrne	L26
 860  001f               L46:
 861  001f 4f            	clr	a
 862  0020 2010          	jra	L66
 863  0022               L26:
 864  0022 ae00b9        	ldw	x,#185
 865  0025 89            	pushw	x
 866  0026 ae0000        	ldw	x,#0
 867  0029 89            	pushw	x
 868  002a ae0000        	ldw	x,#L702
 869  002d cd0000        	call	_assert_failed
 871  0030 5b04          	addw	sp,#4
 872  0032               L66:
 873                     ; 186   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 875  0032 0d03          	tnz	(OFST+2,sp)
 876  0034 2706          	jreq	L27
 877  0036 7b03          	ld	a,(OFST+2,sp)
 878  0038 a111          	cp	a,#17
 879  003a 2603          	jrne	L07
 880  003c               L27:
 881  003c 4f            	clr	a
 882  003d 2010          	jra	L47
 883  003f               L07:
 884  003f ae00ba        	ldw	x,#186
 885  0042 89            	pushw	x
 886  0043 ae0000        	ldw	x,#0
 887  0046 89            	pushw	x
 888  0047 ae0000        	ldw	x,#L702
 889  004a cd0000        	call	_assert_failed
 891  004d 5b04          	addw	sp,#4
 892  004f               L47:
 893                     ; 187   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 895  004f 0d08          	tnz	(OFST+7,sp)
 896  0051 2706          	jreq	L001
 897  0053 7b08          	ld	a,(OFST+7,sp)
 898  0055 a122          	cp	a,#34
 899  0057 2603          	jrne	L67
 900  0059               L001:
 901  0059 4f            	clr	a
 902  005a 2010          	jra	L201
 903  005c               L67:
 904  005c ae00bb        	ldw	x,#187
 905  005f 89            	pushw	x
 906  0060 ae0000        	ldw	x,#0
 907  0063 89            	pushw	x
 908  0064 ae0000        	ldw	x,#L702
 909  0067 cd0000        	call	_assert_failed
 911  006a 5b04          	addw	sp,#4
 912  006c               L201:
 913                     ; 189   TIM2->CCER2 &= (uint8_t)(~( TIM2_CCER2_CC3E  | TIM2_CCER2_CC3P));
 915  006c c6530b        	ld	a,21259
 916  006f a4fc          	and	a,#252
 917  0071 c7530b        	ld	21259,a
 918                     ; 191   TIM2->CCER2 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER2_CC3E) |  
 918                     ; 192                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER2_CC3P));
 920  0074 7b08          	ld	a,(OFST+7,sp)
 921  0076 a402          	and	a,#2
 922  0078 6b01          	ld	(OFST+0,sp),a
 924  007a 7b03          	ld	a,(OFST+2,sp)
 925  007c a401          	and	a,#1
 926  007e 1a01          	or	a,(OFST+0,sp)
 927  0080 ca530b        	or	a,21259
 928  0083 c7530b        	ld	21259,a
 929                     ; 195   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM)) |
 929                     ; 196                           (uint8_t)TIM2_OCMode);
 931  0086 c65309        	ld	a,21257
 932  0089 a48f          	and	a,#143
 933  008b 1a02          	or	a,(OFST+1,sp)
 934  008d c75309        	ld	21257,a
 935                     ; 199   TIM2->CCR3H = (uint8_t)(TIM2_Pulse >> 8);
 937  0090 7b06          	ld	a,(OFST+5,sp)
 938  0092 c75315        	ld	21269,a
 939                     ; 200   TIM2->CCR3L = (uint8_t)(TIM2_Pulse);
 941  0095 7b07          	ld	a,(OFST+6,sp)
 942  0097 c75316        	ld	21270,a
 943                     ; 201 }
 946  009a 5b03          	addw	sp,#3
 947  009c 81            	ret
1141                     ; 212 void TIM2_ICInit(TIM2_Channel_TypeDef TIM2_Channel,
1141                     ; 213                  TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
1141                     ; 214                  TIM2_ICSelection_TypeDef TIM2_ICSelection,
1141                     ; 215                  TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
1141                     ; 216                  uint8_t TIM2_ICFilter)
1141                     ; 217 {
1142                     .text:	section	.text,new
1143  0000               _TIM2_ICInit:
1145  0000 89            	pushw	x
1146       00000000      OFST:	set	0
1149                     ; 219   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
1151  0001 9e            	ld	a,xh
1152  0002 4d            	tnz	a
1153  0003 270a          	jreq	L011
1154  0005 9e            	ld	a,xh
1155  0006 a101          	cp	a,#1
1156  0008 2705          	jreq	L011
1157  000a 9e            	ld	a,xh
1158  000b a102          	cp	a,#2
1159  000d 2603          	jrne	L601
1160  000f               L011:
1161  000f 4f            	clr	a
1162  0010 2010          	jra	L211
1163  0012               L601:
1164  0012 ae00db        	ldw	x,#219
1165  0015 89            	pushw	x
1166  0016 ae0000        	ldw	x,#0
1167  0019 89            	pushw	x
1168  001a ae0000        	ldw	x,#L702
1169  001d cd0000        	call	_assert_failed
1171  0020 5b04          	addw	sp,#4
1172  0022               L211:
1173                     ; 220   assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
1175  0022 0d02          	tnz	(OFST+2,sp)
1176  0024 2706          	jreq	L611
1177  0026 7b02          	ld	a,(OFST+2,sp)
1178  0028 a144          	cp	a,#68
1179  002a 2603          	jrne	L411
1180  002c               L611:
1181  002c 4f            	clr	a
1182  002d 2010          	jra	L021
1183  002f               L411:
1184  002f ae00dc        	ldw	x,#220
1185  0032 89            	pushw	x
1186  0033 ae0000        	ldw	x,#0
1187  0036 89            	pushw	x
1188  0037 ae0000        	ldw	x,#L702
1189  003a cd0000        	call	_assert_failed
1191  003d 5b04          	addw	sp,#4
1192  003f               L021:
1193                     ; 221   assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
1195  003f 7b05          	ld	a,(OFST+5,sp)
1196  0041 a101          	cp	a,#1
1197  0043 270c          	jreq	L421
1198  0045 7b05          	ld	a,(OFST+5,sp)
1199  0047 a102          	cp	a,#2
1200  0049 2706          	jreq	L421
1201  004b 7b05          	ld	a,(OFST+5,sp)
1202  004d a103          	cp	a,#3
1203  004f 2603          	jrne	L221
1204  0051               L421:
1205  0051 4f            	clr	a
1206  0052 2010          	jra	L621
1207  0054               L221:
1208  0054 ae00dd        	ldw	x,#221
1209  0057 89            	pushw	x
1210  0058 ae0000        	ldw	x,#0
1211  005b 89            	pushw	x
1212  005c ae0000        	ldw	x,#L702
1213  005f cd0000        	call	_assert_failed
1215  0062 5b04          	addw	sp,#4
1216  0064               L621:
1217                     ; 222   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
1219  0064 0d06          	tnz	(OFST+6,sp)
1220  0066 2712          	jreq	L231
1221  0068 7b06          	ld	a,(OFST+6,sp)
1222  006a a104          	cp	a,#4
1223  006c 270c          	jreq	L231
1224  006e 7b06          	ld	a,(OFST+6,sp)
1225  0070 a108          	cp	a,#8
1226  0072 2706          	jreq	L231
1227  0074 7b06          	ld	a,(OFST+6,sp)
1228  0076 a10c          	cp	a,#12
1229  0078 2603          	jrne	L031
1230  007a               L231:
1231  007a 4f            	clr	a
1232  007b 2010          	jra	L431
1233  007d               L031:
1234  007d ae00de        	ldw	x,#222
1235  0080 89            	pushw	x
1236  0081 ae0000        	ldw	x,#0
1237  0084 89            	pushw	x
1238  0085 ae0000        	ldw	x,#L702
1239  0088 cd0000        	call	_assert_failed
1241  008b 5b04          	addw	sp,#4
1242  008d               L431:
1243                     ; 223   assert_param(IS_TIM2_IC_FILTER_OK(TIM2_ICFilter));
1245  008d 7b07          	ld	a,(OFST+7,sp)
1246  008f a110          	cp	a,#16
1247  0091 2403          	jruge	L631
1248  0093 4f            	clr	a
1249  0094 2010          	jra	L041
1250  0096               L631:
1251  0096 ae00df        	ldw	x,#223
1252  0099 89            	pushw	x
1253  009a ae0000        	ldw	x,#0
1254  009d 89            	pushw	x
1255  009e ae0000        	ldw	x,#L702
1256  00a1 cd0000        	call	_assert_failed
1258  00a4 5b04          	addw	sp,#4
1259  00a6               L041:
1260                     ; 225   if (TIM2_Channel == TIM2_CHANNEL_1)
1262  00a6 0d01          	tnz	(OFST+1,sp)
1263  00a8 2614          	jrne	L304
1264                     ; 228     TI1_Config((uint8_t)TIM2_ICPolarity,
1264                     ; 229                (uint8_t)TIM2_ICSelection,
1264                     ; 230                (uint8_t)TIM2_ICFilter);
1266  00aa 7b07          	ld	a,(OFST+7,sp)
1267  00ac 88            	push	a
1268  00ad 7b06          	ld	a,(OFST+6,sp)
1269  00af 97            	ld	xl,a
1270  00b0 7b03          	ld	a,(OFST+3,sp)
1271  00b2 95            	ld	xh,a
1272  00b3 cd0000        	call	L3_TI1_Config
1274  00b6 84            	pop	a
1275                     ; 233     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1277  00b7 7b06          	ld	a,(OFST+6,sp)
1278  00b9 cd0000        	call	_TIM2_SetIC1Prescaler
1281  00bc 202c          	jra	L504
1282  00be               L304:
1283                     ; 235   else if (TIM2_Channel == TIM2_CHANNEL_2)
1285  00be 7b01          	ld	a,(OFST+1,sp)
1286  00c0 a101          	cp	a,#1
1287  00c2 2614          	jrne	L704
1288                     ; 238     TI2_Config((uint8_t)TIM2_ICPolarity,
1288                     ; 239                (uint8_t)TIM2_ICSelection,
1288                     ; 240                (uint8_t)TIM2_ICFilter);
1290  00c4 7b07          	ld	a,(OFST+7,sp)
1291  00c6 88            	push	a
1292  00c7 7b06          	ld	a,(OFST+6,sp)
1293  00c9 97            	ld	xl,a
1294  00ca 7b03          	ld	a,(OFST+3,sp)
1295  00cc 95            	ld	xh,a
1296  00cd cd0000        	call	L5_TI2_Config
1298  00d0 84            	pop	a
1299                     ; 243     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1301  00d1 7b06          	ld	a,(OFST+6,sp)
1302  00d3 cd0000        	call	_TIM2_SetIC2Prescaler
1305  00d6 2012          	jra	L504
1306  00d8               L704:
1307                     ; 248     TI3_Config((uint8_t)TIM2_ICPolarity,
1307                     ; 249                (uint8_t)TIM2_ICSelection,
1307                     ; 250                (uint8_t)TIM2_ICFilter);
1309  00d8 7b07          	ld	a,(OFST+7,sp)
1310  00da 88            	push	a
1311  00db 7b06          	ld	a,(OFST+6,sp)
1312  00dd 97            	ld	xl,a
1313  00de 7b03          	ld	a,(OFST+3,sp)
1314  00e0 95            	ld	xh,a
1315  00e1 cd0000        	call	L7_TI3_Config
1317  00e4 84            	pop	a
1318                     ; 253     TIM2_SetIC3Prescaler(TIM2_ICPrescaler);
1320  00e5 7b06          	ld	a,(OFST+6,sp)
1321  00e7 cd0000        	call	_TIM2_SetIC3Prescaler
1323  00ea               L504:
1324                     ; 255 }
1327  00ea 85            	popw	x
1328  00eb 81            	ret
1425                     ; 266 void TIM2_PWMIConfig(TIM2_Channel_TypeDef TIM2_Channel,
1425                     ; 267                      TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
1425                     ; 268                      TIM2_ICSelection_TypeDef TIM2_ICSelection,
1425                     ; 269                      TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
1425                     ; 270                      uint8_t TIM2_ICFilter)
1425                     ; 271 {
1426                     .text:	section	.text,new
1427  0000               _TIM2_PWMIConfig:
1429  0000 89            	pushw	x
1430  0001 89            	pushw	x
1431       00000002      OFST:	set	2
1434                     ; 272   uint8_t icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1436                     ; 273   uint8_t icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1438                     ; 276   assert_param(IS_TIM2_PWMI_CHANNEL_OK(TIM2_Channel));
1440  0002 9e            	ld	a,xh
1441  0003 4d            	tnz	a
1442  0004 2705          	jreq	L641
1443  0006 9e            	ld	a,xh
1444  0007 a101          	cp	a,#1
1445  0009 2603          	jrne	L441
1446  000b               L641:
1447  000b 4f            	clr	a
1448  000c 2010          	jra	L051
1449  000e               L441:
1450  000e ae0114        	ldw	x,#276
1451  0011 89            	pushw	x
1452  0012 ae0000        	ldw	x,#0
1453  0015 89            	pushw	x
1454  0016 ae0000        	ldw	x,#L702
1455  0019 cd0000        	call	_assert_failed
1457  001c 5b04          	addw	sp,#4
1458  001e               L051:
1459                     ; 277   assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
1461  001e 0d04          	tnz	(OFST+2,sp)
1462  0020 2706          	jreq	L451
1463  0022 7b04          	ld	a,(OFST+2,sp)
1464  0024 a144          	cp	a,#68
1465  0026 2603          	jrne	L251
1466  0028               L451:
1467  0028 4f            	clr	a
1468  0029 2010          	jra	L651
1469  002b               L251:
1470  002b ae0115        	ldw	x,#277
1471  002e 89            	pushw	x
1472  002f ae0000        	ldw	x,#0
1473  0032 89            	pushw	x
1474  0033 ae0000        	ldw	x,#L702
1475  0036 cd0000        	call	_assert_failed
1477  0039 5b04          	addw	sp,#4
1478  003b               L651:
1479                     ; 278   assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
1481  003b 7b07          	ld	a,(OFST+5,sp)
1482  003d a101          	cp	a,#1
1483  003f 270c          	jreq	L261
1484  0041 7b07          	ld	a,(OFST+5,sp)
1485  0043 a102          	cp	a,#2
1486  0045 2706          	jreq	L261
1487  0047 7b07          	ld	a,(OFST+5,sp)
1488  0049 a103          	cp	a,#3
1489  004b 2603          	jrne	L061
1490  004d               L261:
1491  004d 4f            	clr	a
1492  004e 2010          	jra	L461
1493  0050               L061:
1494  0050 ae0116        	ldw	x,#278
1495  0053 89            	pushw	x
1496  0054 ae0000        	ldw	x,#0
1497  0057 89            	pushw	x
1498  0058 ae0000        	ldw	x,#L702
1499  005b cd0000        	call	_assert_failed
1501  005e 5b04          	addw	sp,#4
1502  0060               L461:
1503                     ; 279   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
1505  0060 0d08          	tnz	(OFST+6,sp)
1506  0062 2712          	jreq	L071
1507  0064 7b08          	ld	a,(OFST+6,sp)
1508  0066 a104          	cp	a,#4
1509  0068 270c          	jreq	L071
1510  006a 7b08          	ld	a,(OFST+6,sp)
1511  006c a108          	cp	a,#8
1512  006e 2706          	jreq	L071
1513  0070 7b08          	ld	a,(OFST+6,sp)
1514  0072 a10c          	cp	a,#12
1515  0074 2603          	jrne	L661
1516  0076               L071:
1517  0076 4f            	clr	a
1518  0077 2010          	jra	L271
1519  0079               L661:
1520  0079 ae0117        	ldw	x,#279
1521  007c 89            	pushw	x
1522  007d ae0000        	ldw	x,#0
1523  0080 89            	pushw	x
1524  0081 ae0000        	ldw	x,#L702
1525  0084 cd0000        	call	_assert_failed
1527  0087 5b04          	addw	sp,#4
1528  0089               L271:
1529                     ; 282   if (TIM2_ICPolarity != TIM2_ICPOLARITY_FALLING)
1531  0089 7b04          	ld	a,(OFST+2,sp)
1532  008b a144          	cp	a,#68
1533  008d 2706          	jreq	L164
1534                     ; 284     icpolarity = (uint8_t)TIM2_ICPOLARITY_FALLING;
1536  008f a644          	ld	a,#68
1537  0091 6b01          	ld	(OFST-1,sp),a
1540  0093 2002          	jra	L364
1541  0095               L164:
1542                     ; 288     icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1544  0095 0f01          	clr	(OFST-1,sp)
1546  0097               L364:
1547                     ; 292   if (TIM2_ICSelection == TIM2_ICSELECTION_DIRECTTI)
1549  0097 7b07          	ld	a,(OFST+5,sp)
1550  0099 a101          	cp	a,#1
1551  009b 2606          	jrne	L564
1552                     ; 294     icselection = (uint8_t)TIM2_ICSELECTION_INDIRECTTI;
1554  009d a602          	ld	a,#2
1555  009f 6b02          	ld	(OFST+0,sp),a
1558  00a1 2004          	jra	L764
1559  00a3               L564:
1560                     ; 298     icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1562  00a3 a601          	ld	a,#1
1563  00a5 6b02          	ld	(OFST+0,sp),a
1565  00a7               L764:
1566                     ; 301   if (TIM2_Channel == TIM2_CHANNEL_1)
1568  00a7 0d03          	tnz	(OFST+1,sp)
1569  00a9 2626          	jrne	L174
1570                     ; 304     TI1_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1570                     ; 305                (uint8_t)TIM2_ICFilter);
1572  00ab 7b09          	ld	a,(OFST+7,sp)
1573  00ad 88            	push	a
1574  00ae 7b08          	ld	a,(OFST+6,sp)
1575  00b0 97            	ld	xl,a
1576  00b1 7b05          	ld	a,(OFST+3,sp)
1577  00b3 95            	ld	xh,a
1578  00b4 cd0000        	call	L3_TI1_Config
1580  00b7 84            	pop	a
1581                     ; 308     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1583  00b8 7b08          	ld	a,(OFST+6,sp)
1584  00ba cd0000        	call	_TIM2_SetIC1Prescaler
1586                     ; 311     TI2_Config(icpolarity, icselection, TIM2_ICFilter);
1588  00bd 7b09          	ld	a,(OFST+7,sp)
1589  00bf 88            	push	a
1590  00c0 7b03          	ld	a,(OFST+1,sp)
1591  00c2 97            	ld	xl,a
1592  00c3 7b02          	ld	a,(OFST+0,sp)
1593  00c5 95            	ld	xh,a
1594  00c6 cd0000        	call	L5_TI2_Config
1596  00c9 84            	pop	a
1597                     ; 314     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1599  00ca 7b08          	ld	a,(OFST+6,sp)
1600  00cc cd0000        	call	_TIM2_SetIC2Prescaler
1603  00cf 2024          	jra	L374
1604  00d1               L174:
1605                     ; 319     TI2_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1605                     ; 320                (uint8_t)TIM2_ICFilter);
1607  00d1 7b09          	ld	a,(OFST+7,sp)
1608  00d3 88            	push	a
1609  00d4 7b08          	ld	a,(OFST+6,sp)
1610  00d6 97            	ld	xl,a
1611  00d7 7b05          	ld	a,(OFST+3,sp)
1612  00d9 95            	ld	xh,a
1613  00da cd0000        	call	L5_TI2_Config
1615  00dd 84            	pop	a
1616                     ; 323     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1618  00de 7b08          	ld	a,(OFST+6,sp)
1619  00e0 cd0000        	call	_TIM2_SetIC2Prescaler
1621                     ; 326     TI1_Config((uint8_t)icpolarity, icselection, (uint8_t)TIM2_ICFilter);
1623  00e3 7b09          	ld	a,(OFST+7,sp)
1624  00e5 88            	push	a
1625  00e6 7b03          	ld	a,(OFST+1,sp)
1626  00e8 97            	ld	xl,a
1627  00e9 7b02          	ld	a,(OFST+0,sp)
1628  00eb 95            	ld	xh,a
1629  00ec cd0000        	call	L3_TI1_Config
1631  00ef 84            	pop	a
1632                     ; 329     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1634  00f0 7b08          	ld	a,(OFST+6,sp)
1635  00f2 cd0000        	call	_TIM2_SetIC1Prescaler
1637  00f5               L374:
1638                     ; 331 }
1641  00f5 5b04          	addw	sp,#4
1642  00f7 81            	ret
1698                     ; 339 void TIM2_Cmd(FunctionalState NewState)
1698                     ; 340 {
1699                     .text:	section	.text,new
1700  0000               _TIM2_Cmd:
1702  0000 88            	push	a
1703       00000000      OFST:	set	0
1706                     ; 342   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1708  0001 4d            	tnz	a
1709  0002 2704          	jreq	L002
1710  0004 a101          	cp	a,#1
1711  0006 2603          	jrne	L671
1712  0008               L002:
1713  0008 4f            	clr	a
1714  0009 2010          	jra	L202
1715  000b               L671:
1716  000b ae0156        	ldw	x,#342
1717  000e 89            	pushw	x
1718  000f ae0000        	ldw	x,#0
1719  0012 89            	pushw	x
1720  0013 ae0000        	ldw	x,#L702
1721  0016 cd0000        	call	_assert_failed
1723  0019 5b04          	addw	sp,#4
1724  001b               L202:
1725                     ; 345   if (NewState != DISABLE)
1727  001b 0d01          	tnz	(OFST+1,sp)
1728  001d 2706          	jreq	L325
1729                     ; 347     TIM2->CR1 |= (uint8_t)TIM2_CR1_CEN;
1731  001f 72105300      	bset	21248,#0
1733  0023 2004          	jra	L525
1734  0025               L325:
1735                     ; 351     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_CEN);
1737  0025 72115300      	bres	21248,#0
1738  0029               L525:
1739                     ; 353 }
1742  0029 84            	pop	a
1743  002a 81            	ret
1823                     ; 368 void TIM2_ITConfig(TIM2_IT_TypeDef TIM2_IT, FunctionalState NewState)
1823                     ; 369 {
1824                     .text:	section	.text,new
1825  0000               _TIM2_ITConfig:
1827  0000 89            	pushw	x
1828       00000000      OFST:	set	0
1831                     ; 371   assert_param(IS_TIM2_IT_OK(TIM2_IT));
1833  0001 9e            	ld	a,xh
1834  0002 4d            	tnz	a
1835  0003 2708          	jreq	L602
1836  0005 9e            	ld	a,xh
1837  0006 a110          	cp	a,#16
1838  0008 2403          	jruge	L602
1839  000a 4f            	clr	a
1840  000b 2010          	jra	L012
1841  000d               L602:
1842  000d ae0173        	ldw	x,#371
1843  0010 89            	pushw	x
1844  0011 ae0000        	ldw	x,#0
1845  0014 89            	pushw	x
1846  0015 ae0000        	ldw	x,#L702
1847  0018 cd0000        	call	_assert_failed
1849  001b 5b04          	addw	sp,#4
1850  001d               L012:
1851                     ; 372   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1853  001d 0d02          	tnz	(OFST+2,sp)
1854  001f 2706          	jreq	L412
1855  0021 7b02          	ld	a,(OFST+2,sp)
1856  0023 a101          	cp	a,#1
1857  0025 2603          	jrne	L212
1858  0027               L412:
1859  0027 4f            	clr	a
1860  0028 2010          	jra	L612
1861  002a               L212:
1862  002a ae0174        	ldw	x,#372
1863  002d 89            	pushw	x
1864  002e ae0000        	ldw	x,#0
1865  0031 89            	pushw	x
1866  0032 ae0000        	ldw	x,#L702
1867  0035 cd0000        	call	_assert_failed
1869  0038 5b04          	addw	sp,#4
1870  003a               L612:
1871                     ; 374   if (NewState != DISABLE)
1873  003a 0d02          	tnz	(OFST+2,sp)
1874  003c 270a          	jreq	L565
1875                     ; 377     TIM2->IER |= (uint8_t)TIM2_IT;
1877  003e c65303        	ld	a,21251
1878  0041 1a01          	or	a,(OFST+1,sp)
1879  0043 c75303        	ld	21251,a
1881  0046 2009          	jra	L765
1882  0048               L565:
1883                     ; 382     TIM2->IER &= (uint8_t)(~TIM2_IT);
1885  0048 7b01          	ld	a,(OFST+1,sp)
1886  004a 43            	cpl	a
1887  004b c45303        	and	a,21251
1888  004e c75303        	ld	21251,a
1889  0051               L765:
1890                     ; 384 }
1893  0051 85            	popw	x
1894  0052 81            	ret
1931                     ; 392 void TIM2_UpdateDisableConfig(FunctionalState NewState)
1931                     ; 393 {
1932                     .text:	section	.text,new
1933  0000               _TIM2_UpdateDisableConfig:
1935  0000 88            	push	a
1936       00000000      OFST:	set	0
1939                     ; 395   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1941  0001 4d            	tnz	a
1942  0002 2704          	jreq	L422
1943  0004 a101          	cp	a,#1
1944  0006 2603          	jrne	L222
1945  0008               L422:
1946  0008 4f            	clr	a
1947  0009 2010          	jra	L622
1948  000b               L222:
1949  000b ae018b        	ldw	x,#395
1950  000e 89            	pushw	x
1951  000f ae0000        	ldw	x,#0
1952  0012 89            	pushw	x
1953  0013 ae0000        	ldw	x,#L702
1954  0016 cd0000        	call	_assert_failed
1956  0019 5b04          	addw	sp,#4
1957  001b               L622:
1958                     ; 398   if (NewState != DISABLE)
1960  001b 0d01          	tnz	(OFST+1,sp)
1961  001d 2706          	jreq	L706
1962                     ; 400     TIM2->CR1 |= (uint8_t)TIM2_CR1_UDIS;
1964  001f 72125300      	bset	21248,#1
1966  0023 2004          	jra	L116
1967  0025               L706:
1968                     ; 404     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_UDIS);
1970  0025 72135300      	bres	21248,#1
1971  0029               L116:
1972                     ; 406 }
1975  0029 84            	pop	a
1976  002a 81            	ret
2035                     ; 416 void TIM2_UpdateRequestConfig(TIM2_UpdateSource_TypeDef TIM2_UpdateSource)
2035                     ; 417 {
2036                     .text:	section	.text,new
2037  0000               _TIM2_UpdateRequestConfig:
2039  0000 88            	push	a
2040       00000000      OFST:	set	0
2043                     ; 419   assert_param(IS_TIM2_UPDATE_SOURCE_OK(TIM2_UpdateSource));
2045  0001 4d            	tnz	a
2046  0002 2704          	jreq	L432
2047  0004 a101          	cp	a,#1
2048  0006 2603          	jrne	L232
2049  0008               L432:
2050  0008 4f            	clr	a
2051  0009 2010          	jra	L632
2052  000b               L232:
2053  000b ae01a3        	ldw	x,#419
2054  000e 89            	pushw	x
2055  000f ae0000        	ldw	x,#0
2056  0012 89            	pushw	x
2057  0013 ae0000        	ldw	x,#L702
2058  0016 cd0000        	call	_assert_failed
2060  0019 5b04          	addw	sp,#4
2061  001b               L632:
2062                     ; 422   if (TIM2_UpdateSource != TIM2_UPDATESOURCE_GLOBAL)
2064  001b 0d01          	tnz	(OFST+1,sp)
2065  001d 2706          	jreq	L146
2066                     ; 424     TIM2->CR1 |= (uint8_t)TIM2_CR1_URS;
2068  001f 72145300      	bset	21248,#2
2070  0023 2004          	jra	L346
2071  0025               L146:
2072                     ; 428     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_URS);
2074  0025 72155300      	bres	21248,#2
2075  0029               L346:
2076                     ; 430 }
2079  0029 84            	pop	a
2080  002a 81            	ret
2138                     ; 440 void TIM2_SelectOnePulseMode(TIM2_OPMode_TypeDef TIM2_OPMode)
2138                     ; 441 {
2139                     .text:	section	.text,new
2140  0000               _TIM2_SelectOnePulseMode:
2142  0000 88            	push	a
2143       00000000      OFST:	set	0
2146                     ; 443   assert_param(IS_TIM2_OPM_MODE_OK(TIM2_OPMode));
2148  0001 a101          	cp	a,#1
2149  0003 2703          	jreq	L442
2150  0005 4d            	tnz	a
2151  0006 2603          	jrne	L242
2152  0008               L442:
2153  0008 4f            	clr	a
2154  0009 2010          	jra	L642
2155  000b               L242:
2156  000b ae01bb        	ldw	x,#443
2157  000e 89            	pushw	x
2158  000f ae0000        	ldw	x,#0
2159  0012 89            	pushw	x
2160  0013 ae0000        	ldw	x,#L702
2161  0016 cd0000        	call	_assert_failed
2163  0019 5b04          	addw	sp,#4
2164  001b               L642:
2165                     ; 446   if (TIM2_OPMode != TIM2_OPMODE_REPETITIVE)
2167  001b 0d01          	tnz	(OFST+1,sp)
2168  001d 2706          	jreq	L376
2169                     ; 448     TIM2->CR1 |= (uint8_t)TIM2_CR1_OPM;
2171  001f 72165300      	bset	21248,#3
2173  0023 2004          	jra	L576
2174  0025               L376:
2175                     ; 452     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_OPM);
2177  0025 72175300      	bres	21248,#3
2178  0029               L576:
2179                     ; 454 }
2182  0029 84            	pop	a
2183  002a 81            	ret
2252                     ; 484 void TIM2_PrescalerConfig(TIM2_Prescaler_TypeDef Prescaler,
2252                     ; 485                           TIM2_PSCReloadMode_TypeDef TIM2_PSCReloadMode)
2252                     ; 486 {
2253                     .text:	section	.text,new
2254  0000               _TIM2_PrescalerConfig:
2256  0000 89            	pushw	x
2257       00000000      OFST:	set	0
2260                     ; 488   assert_param(IS_TIM2_PRESCALER_RELOAD_OK(TIM2_PSCReloadMode));
2262  0001 9f            	ld	a,xl
2263  0002 4d            	tnz	a
2264  0003 2705          	jreq	L452
2265  0005 9f            	ld	a,xl
2266  0006 a101          	cp	a,#1
2267  0008 2603          	jrne	L252
2268  000a               L452:
2269  000a 4f            	clr	a
2270  000b 2010          	jra	L652
2271  000d               L252:
2272  000d ae01e8        	ldw	x,#488
2273  0010 89            	pushw	x
2274  0011 ae0000        	ldw	x,#0
2275  0014 89            	pushw	x
2276  0015 ae0000        	ldw	x,#L702
2277  0018 cd0000        	call	_assert_failed
2279  001b 5b04          	addw	sp,#4
2280  001d               L652:
2281                     ; 489   assert_param(IS_TIM2_PRESCALER_OK(Prescaler));
2283  001d 0d01          	tnz	(OFST+1,sp)
2284  001f 275a          	jreq	L262
2285  0021 7b01          	ld	a,(OFST+1,sp)
2286  0023 a101          	cp	a,#1
2287  0025 2754          	jreq	L262
2288  0027 7b01          	ld	a,(OFST+1,sp)
2289  0029 a102          	cp	a,#2
2290  002b 274e          	jreq	L262
2291  002d 7b01          	ld	a,(OFST+1,sp)
2292  002f a103          	cp	a,#3
2293  0031 2748          	jreq	L262
2294  0033 7b01          	ld	a,(OFST+1,sp)
2295  0035 a104          	cp	a,#4
2296  0037 2742          	jreq	L262
2297  0039 7b01          	ld	a,(OFST+1,sp)
2298  003b a105          	cp	a,#5
2299  003d 273c          	jreq	L262
2300  003f 7b01          	ld	a,(OFST+1,sp)
2301  0041 a106          	cp	a,#6
2302  0043 2736          	jreq	L262
2303  0045 7b01          	ld	a,(OFST+1,sp)
2304  0047 a107          	cp	a,#7
2305  0049 2730          	jreq	L262
2306  004b 7b01          	ld	a,(OFST+1,sp)
2307  004d a108          	cp	a,#8
2308  004f 272a          	jreq	L262
2309  0051 7b01          	ld	a,(OFST+1,sp)
2310  0053 a109          	cp	a,#9
2311  0055 2724          	jreq	L262
2312  0057 7b01          	ld	a,(OFST+1,sp)
2313  0059 a10a          	cp	a,#10
2314  005b 271e          	jreq	L262
2315  005d 7b01          	ld	a,(OFST+1,sp)
2316  005f a10b          	cp	a,#11
2317  0061 2718          	jreq	L262
2318  0063 7b01          	ld	a,(OFST+1,sp)
2319  0065 a10c          	cp	a,#12
2320  0067 2712          	jreq	L262
2321  0069 7b01          	ld	a,(OFST+1,sp)
2322  006b a10d          	cp	a,#13
2323  006d 270c          	jreq	L262
2324  006f 7b01          	ld	a,(OFST+1,sp)
2325  0071 a10e          	cp	a,#14
2326  0073 2706          	jreq	L262
2327  0075 7b01          	ld	a,(OFST+1,sp)
2328  0077 a10f          	cp	a,#15
2329  0079 2603          	jrne	L062
2330  007b               L262:
2331  007b 4f            	clr	a
2332  007c 2010          	jra	L462
2333  007e               L062:
2334  007e ae01e9        	ldw	x,#489
2335  0081 89            	pushw	x
2336  0082 ae0000        	ldw	x,#0
2337  0085 89            	pushw	x
2338  0086 ae0000        	ldw	x,#L702
2339  0089 cd0000        	call	_assert_failed
2341  008c 5b04          	addw	sp,#4
2342  008e               L462:
2343                     ; 492   TIM2->PSCR = (uint8_t)Prescaler;
2345  008e 7b01          	ld	a,(OFST+1,sp)
2346  0090 c7530e        	ld	21262,a
2347                     ; 495   TIM2->EGR = (uint8_t)TIM2_PSCReloadMode;
2349  0093 7b02          	ld	a,(OFST+2,sp)
2350  0095 c75306        	ld	21254,a
2351                     ; 496 }
2354  0098 85            	popw	x
2355  0099 81            	ret
2414                     ; 507 void TIM2_ForcedOC1Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2414                     ; 508 {
2415                     .text:	section	.text,new
2416  0000               _TIM2_ForcedOC1Config:
2418  0000 88            	push	a
2419       00000000      OFST:	set	0
2422                     ; 510   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2424  0001 a150          	cp	a,#80
2425  0003 2704          	jreq	L272
2426  0005 a140          	cp	a,#64
2427  0007 2603          	jrne	L072
2428  0009               L272:
2429  0009 4f            	clr	a
2430  000a 2010          	jra	L472
2431  000c               L072:
2432  000c ae01fe        	ldw	x,#510
2433  000f 89            	pushw	x
2434  0010 ae0000        	ldw	x,#0
2435  0013 89            	pushw	x
2436  0014 ae0000        	ldw	x,#L702
2437  0017 cd0000        	call	_assert_failed
2439  001a 5b04          	addw	sp,#4
2440  001c               L472:
2441                     ; 513   TIM2->CCMR1  =  (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))  
2441                     ; 514                             | (uint8_t)TIM2_ForcedAction);
2443  001c c65307        	ld	a,21255
2444  001f a48f          	and	a,#143
2445  0021 1a01          	or	a,(OFST+1,sp)
2446  0023 c75307        	ld	21255,a
2447                     ; 515 }
2450  0026 84            	pop	a
2451  0027 81            	ret
2488                     ; 526 void TIM2_ForcedOC2Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2488                     ; 527 {
2489                     .text:	section	.text,new
2490  0000               _TIM2_ForcedOC2Config:
2492  0000 88            	push	a
2493       00000000      OFST:	set	0
2496                     ; 529   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2498  0001 a150          	cp	a,#80
2499  0003 2704          	jreq	L203
2500  0005 a140          	cp	a,#64
2501  0007 2603          	jrne	L003
2502  0009               L203:
2503  0009 4f            	clr	a
2504  000a 2010          	jra	L403
2505  000c               L003:
2506  000c ae0211        	ldw	x,#529
2507  000f 89            	pushw	x
2508  0010 ae0000        	ldw	x,#0
2509  0013 89            	pushw	x
2510  0014 ae0000        	ldw	x,#L702
2511  0017 cd0000        	call	_assert_failed
2513  001a 5b04          	addw	sp,#4
2514  001c               L403:
2515                     ; 532   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))  
2515                     ; 533                           | (uint8_t)TIM2_ForcedAction);
2517  001c c65308        	ld	a,21256
2518  001f a48f          	and	a,#143
2519  0021 1a01          	or	a,(OFST+1,sp)
2520  0023 c75308        	ld	21256,a
2521                     ; 534 }
2524  0026 84            	pop	a
2525  0027 81            	ret
2562                     ; 545 void TIM2_ForcedOC3Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2562                     ; 546 {
2563                     .text:	section	.text,new
2564  0000               _TIM2_ForcedOC3Config:
2566  0000 88            	push	a
2567       00000000      OFST:	set	0
2570                     ; 548   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2572  0001 a150          	cp	a,#80
2573  0003 2704          	jreq	L213
2574  0005 a140          	cp	a,#64
2575  0007 2603          	jrne	L013
2576  0009               L213:
2577  0009 4f            	clr	a
2578  000a 2010          	jra	L413
2579  000c               L013:
2580  000c ae0224        	ldw	x,#548
2581  000f 89            	pushw	x
2582  0010 ae0000        	ldw	x,#0
2583  0013 89            	pushw	x
2584  0014 ae0000        	ldw	x,#L702
2585  0017 cd0000        	call	_assert_failed
2587  001a 5b04          	addw	sp,#4
2588  001c               L413:
2589                     ; 551   TIM2->CCMR3  =  (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
2589                     ; 552                             | (uint8_t)TIM2_ForcedAction);
2591  001c c65309        	ld	a,21257
2592  001f a48f          	and	a,#143
2593  0021 1a01          	or	a,(OFST+1,sp)
2594  0023 c75309        	ld	21257,a
2595                     ; 553 }
2598  0026 84            	pop	a
2599  0027 81            	ret
2636                     ; 561 void TIM2_ARRPreloadConfig(FunctionalState NewState)
2636                     ; 562 {
2637                     .text:	section	.text,new
2638  0000               _TIM2_ARRPreloadConfig:
2640  0000 88            	push	a
2641       00000000      OFST:	set	0
2644                     ; 564   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2646  0001 4d            	tnz	a
2647  0002 2704          	jreq	L223
2648  0004 a101          	cp	a,#1
2649  0006 2603          	jrne	L023
2650  0008               L223:
2651  0008 4f            	clr	a
2652  0009 2010          	jra	L423
2653  000b               L023:
2654  000b ae0234        	ldw	x,#564
2655  000e 89            	pushw	x
2656  000f ae0000        	ldw	x,#0
2657  0012 89            	pushw	x
2658  0013 ae0000        	ldw	x,#L702
2659  0016 cd0000        	call	_assert_failed
2661  0019 5b04          	addw	sp,#4
2662  001b               L423:
2663                     ; 567   if (NewState != DISABLE)
2665  001b 0d01          	tnz	(OFST+1,sp)
2666  001d 2706          	jreq	L1301
2667                     ; 569     TIM2->CR1 |= (uint8_t)TIM2_CR1_ARPE;
2669  001f 721e5300      	bset	21248,#7
2671  0023 2004          	jra	L3301
2672  0025               L1301:
2673                     ; 573     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_ARPE);
2675  0025 721f5300      	bres	21248,#7
2676  0029               L3301:
2677                     ; 575 }
2680  0029 84            	pop	a
2681  002a 81            	ret
2718                     ; 583 void TIM2_OC1PreloadConfig(FunctionalState NewState)
2718                     ; 584 {
2719                     .text:	section	.text,new
2720  0000               _TIM2_OC1PreloadConfig:
2722  0000 88            	push	a
2723       00000000      OFST:	set	0
2726                     ; 586   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2728  0001 4d            	tnz	a
2729  0002 2704          	jreq	L233
2730  0004 a101          	cp	a,#1
2731  0006 2603          	jrne	L033
2732  0008               L233:
2733  0008 4f            	clr	a
2734  0009 2010          	jra	L433
2735  000b               L033:
2736  000b ae024a        	ldw	x,#586
2737  000e 89            	pushw	x
2738  000f ae0000        	ldw	x,#0
2739  0012 89            	pushw	x
2740  0013 ae0000        	ldw	x,#L702
2741  0016 cd0000        	call	_assert_failed
2743  0019 5b04          	addw	sp,#4
2744  001b               L433:
2745                     ; 589   if (NewState != DISABLE)
2747  001b 0d01          	tnz	(OFST+1,sp)
2748  001d 2706          	jreq	L3501
2749                     ; 591     TIM2->CCMR1 |= (uint8_t)TIM2_CCMR_OCxPE;
2751  001f 72165307      	bset	21255,#3
2753  0023 2004          	jra	L5501
2754  0025               L3501:
2755                     ; 595     TIM2->CCMR1 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2757  0025 72175307      	bres	21255,#3
2758  0029               L5501:
2759                     ; 597 }
2762  0029 84            	pop	a
2763  002a 81            	ret
2800                     ; 605 void TIM2_OC2PreloadConfig(FunctionalState NewState)
2800                     ; 606 {
2801                     .text:	section	.text,new
2802  0000               _TIM2_OC2PreloadConfig:
2804  0000 88            	push	a
2805       00000000      OFST:	set	0
2808                     ; 608   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2810  0001 4d            	tnz	a
2811  0002 2704          	jreq	L243
2812  0004 a101          	cp	a,#1
2813  0006 2603          	jrne	L043
2814  0008               L243:
2815  0008 4f            	clr	a
2816  0009 2010          	jra	L443
2817  000b               L043:
2818  000b ae0260        	ldw	x,#608
2819  000e 89            	pushw	x
2820  000f ae0000        	ldw	x,#0
2821  0012 89            	pushw	x
2822  0013 ae0000        	ldw	x,#L702
2823  0016 cd0000        	call	_assert_failed
2825  0019 5b04          	addw	sp,#4
2826  001b               L443:
2827                     ; 611   if (NewState != DISABLE)
2829  001b 0d01          	tnz	(OFST+1,sp)
2830  001d 2706          	jreq	L5701
2831                     ; 613     TIM2->CCMR2 |= (uint8_t)TIM2_CCMR_OCxPE;
2833  001f 72165308      	bset	21256,#3
2835  0023 2004          	jra	L7701
2836  0025               L5701:
2837                     ; 617     TIM2->CCMR2 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2839  0025 72175308      	bres	21256,#3
2840  0029               L7701:
2841                     ; 619 }
2844  0029 84            	pop	a
2845  002a 81            	ret
2882                     ; 627 void TIM2_OC3PreloadConfig(FunctionalState NewState)
2882                     ; 628 {
2883                     .text:	section	.text,new
2884  0000               _TIM2_OC3PreloadConfig:
2886  0000 88            	push	a
2887       00000000      OFST:	set	0
2890                     ; 630   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2892  0001 4d            	tnz	a
2893  0002 2704          	jreq	L253
2894  0004 a101          	cp	a,#1
2895  0006 2603          	jrne	L053
2896  0008               L253:
2897  0008 4f            	clr	a
2898  0009 2010          	jra	L453
2899  000b               L053:
2900  000b ae0276        	ldw	x,#630
2901  000e 89            	pushw	x
2902  000f ae0000        	ldw	x,#0
2903  0012 89            	pushw	x
2904  0013 ae0000        	ldw	x,#L702
2905  0016 cd0000        	call	_assert_failed
2907  0019 5b04          	addw	sp,#4
2908  001b               L453:
2909                     ; 633   if (NewState != DISABLE)
2911  001b 0d01          	tnz	(OFST+1,sp)
2912  001d 2706          	jreq	L7111
2913                     ; 635     TIM2->CCMR3 |= (uint8_t)TIM2_CCMR_OCxPE;
2915  001f 72165309      	bset	21257,#3
2917  0023 2004          	jra	L1211
2918  0025               L7111:
2919                     ; 639     TIM2->CCMR3 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2921  0025 72175309      	bres	21257,#3
2922  0029               L1211:
2923                     ; 641 }
2926  0029 84            	pop	a
2927  002a 81            	ret
3001                     ; 653 void TIM2_GenerateEvent(TIM2_EventSource_TypeDef TIM2_EventSource)
3001                     ; 654 {
3002                     .text:	section	.text,new
3003  0000               _TIM2_GenerateEvent:
3005  0000 88            	push	a
3006       00000000      OFST:	set	0
3009                     ; 656   assert_param(IS_TIM2_EVENT_SOURCE_OK(TIM2_EventSource));
3011  0001 4d            	tnz	a
3012  0002 2703          	jreq	L063
3013  0004 4f            	clr	a
3014  0005 2010          	jra	L263
3015  0007               L063:
3016  0007 ae0290        	ldw	x,#656
3017  000a 89            	pushw	x
3018  000b ae0000        	ldw	x,#0
3019  000e 89            	pushw	x
3020  000f ae0000        	ldw	x,#L702
3021  0012 cd0000        	call	_assert_failed
3023  0015 5b04          	addw	sp,#4
3024  0017               L263:
3025                     ; 659   TIM2->EGR = (uint8_t)TIM2_EventSource;
3027  0017 7b01          	ld	a,(OFST+1,sp)
3028  0019 c75306        	ld	21254,a
3029                     ; 660 }
3032  001c 84            	pop	a
3033  001d 81            	ret
3070                     ; 670 void TIM2_OC1PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
3070                     ; 671 {
3071                     .text:	section	.text,new
3072  0000               _TIM2_OC1PolarityConfig:
3074  0000 88            	push	a
3075       00000000      OFST:	set	0
3078                     ; 673   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
3080  0001 4d            	tnz	a
3081  0002 2704          	jreq	L073
3082  0004 a122          	cp	a,#34
3083  0006 2603          	jrne	L663
3084  0008               L073:
3085  0008 4f            	clr	a
3086  0009 2010          	jra	L273
3087  000b               L663:
3088  000b ae02a1        	ldw	x,#673
3089  000e 89            	pushw	x
3090  000f ae0000        	ldw	x,#0
3091  0012 89            	pushw	x
3092  0013 ae0000        	ldw	x,#L702
3093  0016 cd0000        	call	_assert_failed
3095  0019 5b04          	addw	sp,#4
3096  001b               L273:
3097                     ; 676   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
3099  001b 0d01          	tnz	(OFST+1,sp)
3100  001d 2706          	jreq	L3711
3101                     ; 678     TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1P;
3103  001f 7212530a      	bset	21258,#1
3105  0023 2004          	jra	L5711
3106  0025               L3711:
3107                     ; 682     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
3109  0025 7213530a      	bres	21258,#1
3110  0029               L5711:
3111                     ; 684 }
3114  0029 84            	pop	a
3115  002a 81            	ret
3152                     ; 694 void TIM2_OC2PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
3152                     ; 695 {
3153                     .text:	section	.text,new
3154  0000               _TIM2_OC2PolarityConfig:
3156  0000 88            	push	a
3157       00000000      OFST:	set	0
3160                     ; 697   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
3162  0001 4d            	tnz	a
3163  0002 2704          	jreq	L004
3164  0004 a122          	cp	a,#34
3165  0006 2603          	jrne	L673
3166  0008               L004:
3167  0008 4f            	clr	a
3168  0009 2010          	jra	L204
3169  000b               L673:
3170  000b ae02b9        	ldw	x,#697
3171  000e 89            	pushw	x
3172  000f ae0000        	ldw	x,#0
3173  0012 89            	pushw	x
3174  0013 ae0000        	ldw	x,#L702
3175  0016 cd0000        	call	_assert_failed
3177  0019 5b04          	addw	sp,#4
3178  001b               L204:
3179                     ; 700   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
3181  001b 0d01          	tnz	(OFST+1,sp)
3182  001d 2706          	jreq	L5121
3183                     ; 702     TIM2->CCER1 |= TIM2_CCER1_CC2P;
3185  001f 721a530a      	bset	21258,#5
3187  0023 2004          	jra	L7121
3188  0025               L5121:
3189                     ; 706     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
3191  0025 721b530a      	bres	21258,#5
3192  0029               L7121:
3193                     ; 708 }
3196  0029 84            	pop	a
3197  002a 81            	ret
3234                     ; 718 void TIM2_OC3PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
3234                     ; 719 {
3235                     .text:	section	.text,new
3236  0000               _TIM2_OC3PolarityConfig:
3238  0000 88            	push	a
3239       00000000      OFST:	set	0
3242                     ; 721   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
3244  0001 4d            	tnz	a
3245  0002 2704          	jreq	L014
3246  0004 a122          	cp	a,#34
3247  0006 2603          	jrne	L604
3248  0008               L014:
3249  0008 4f            	clr	a
3250  0009 2010          	jra	L214
3251  000b               L604:
3252  000b ae02d1        	ldw	x,#721
3253  000e 89            	pushw	x
3254  000f ae0000        	ldw	x,#0
3255  0012 89            	pushw	x
3256  0013 ae0000        	ldw	x,#L702
3257  0016 cd0000        	call	_assert_failed
3259  0019 5b04          	addw	sp,#4
3260  001b               L214:
3261                     ; 724   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
3263  001b 0d01          	tnz	(OFST+1,sp)
3264  001d 2706          	jreq	L7321
3265                     ; 726     TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3P;
3267  001f 7212530b      	bset	21259,#1
3269  0023 2004          	jra	L1421
3270  0025               L7321:
3271                     ; 730     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
3273  0025 7213530b      	bres	21259,#1
3274  0029               L1421:
3275                     ; 732 }
3278  0029 84            	pop	a
3279  002a 81            	ret
3325                     ; 745 void TIM2_CCxCmd(TIM2_Channel_TypeDef TIM2_Channel, FunctionalState NewState)
3325                     ; 746 {
3326                     .text:	section	.text,new
3327  0000               _TIM2_CCxCmd:
3329  0000 89            	pushw	x
3330       00000000      OFST:	set	0
3333                     ; 748   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
3335  0001 9e            	ld	a,xh
3336  0002 4d            	tnz	a
3337  0003 270a          	jreq	L024
3338  0005 9e            	ld	a,xh
3339  0006 a101          	cp	a,#1
3340  0008 2705          	jreq	L024
3341  000a 9e            	ld	a,xh
3342  000b a102          	cp	a,#2
3343  000d 2603          	jrne	L614
3344  000f               L024:
3345  000f 4f            	clr	a
3346  0010 2010          	jra	L224
3347  0012               L614:
3348  0012 ae02ec        	ldw	x,#748
3349  0015 89            	pushw	x
3350  0016 ae0000        	ldw	x,#0
3351  0019 89            	pushw	x
3352  001a ae0000        	ldw	x,#L702
3353  001d cd0000        	call	_assert_failed
3355  0020 5b04          	addw	sp,#4
3356  0022               L224:
3357                     ; 749   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3359  0022 0d02          	tnz	(OFST+2,sp)
3360  0024 2706          	jreq	L624
3361  0026 7b02          	ld	a,(OFST+2,sp)
3362  0028 a101          	cp	a,#1
3363  002a 2603          	jrne	L424
3364  002c               L624:
3365  002c 4f            	clr	a
3366  002d 2010          	jra	L034
3367  002f               L424:
3368  002f ae02ed        	ldw	x,#749
3369  0032 89            	pushw	x
3370  0033 ae0000        	ldw	x,#0
3371  0036 89            	pushw	x
3372  0037 ae0000        	ldw	x,#L702
3373  003a cd0000        	call	_assert_failed
3375  003d 5b04          	addw	sp,#4
3376  003f               L034:
3377                     ; 751   if (TIM2_Channel == TIM2_CHANNEL_1)
3379  003f 0d01          	tnz	(OFST+1,sp)
3380  0041 2610          	jrne	L5621
3381                     ; 754     if (NewState != DISABLE)
3383  0043 0d02          	tnz	(OFST+2,sp)
3384  0045 2706          	jreq	L7621
3385                     ; 756       TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
3387  0047 7210530a      	bset	21258,#0
3389  004b 202a          	jra	L3721
3390  004d               L7621:
3391                     ; 760       TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
3393  004d 7211530a      	bres	21258,#0
3394  0051 2024          	jra	L3721
3395  0053               L5621:
3396                     ; 764   else if (TIM2_Channel == TIM2_CHANNEL_2)
3398  0053 7b01          	ld	a,(OFST+1,sp)
3399  0055 a101          	cp	a,#1
3400  0057 2610          	jrne	L5721
3401                     ; 767     if (NewState != DISABLE)
3403  0059 0d02          	tnz	(OFST+2,sp)
3404  005b 2706          	jreq	L7721
3405                     ; 769       TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC2E;
3407  005d 7218530a      	bset	21258,#4
3409  0061 2014          	jra	L3721
3410  0063               L7721:
3411                     ; 773       TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
3413  0063 7219530a      	bres	21258,#4
3414  0067 200e          	jra	L3721
3415  0069               L5721:
3416                     ; 779     if (NewState != DISABLE)
3418  0069 0d02          	tnz	(OFST+2,sp)
3419  006b 2706          	jreq	L5031
3420                     ; 781       TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3E;
3422  006d 7210530b      	bset	21259,#0
3424  0071 2004          	jra	L3721
3425  0073               L5031:
3426                     ; 785       TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
3428  0073 7211530b      	bres	21259,#0
3429  0077               L3721:
3430                     ; 788 }
3433  0077 85            	popw	x
3434  0078 81            	ret
3480                     ; 810 void TIM2_SelectOCxM(TIM2_Channel_TypeDef TIM2_Channel, TIM2_OCMode_TypeDef TIM2_OCMode)
3480                     ; 811 {
3481                     .text:	section	.text,new
3482  0000               _TIM2_SelectOCxM:
3484  0000 89            	pushw	x
3485       00000000      OFST:	set	0
3488                     ; 813   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
3490  0001 9e            	ld	a,xh
3491  0002 4d            	tnz	a
3492  0003 270a          	jreq	L634
3493  0005 9e            	ld	a,xh
3494  0006 a101          	cp	a,#1
3495  0008 2705          	jreq	L634
3496  000a 9e            	ld	a,xh
3497  000b a102          	cp	a,#2
3498  000d 2603          	jrne	L434
3499  000f               L634:
3500  000f 4f            	clr	a
3501  0010 2010          	jra	L044
3502  0012               L434:
3503  0012 ae032d        	ldw	x,#813
3504  0015 89            	pushw	x
3505  0016 ae0000        	ldw	x,#0
3506  0019 89            	pushw	x
3507  001a ae0000        	ldw	x,#L702
3508  001d cd0000        	call	_assert_failed
3510  0020 5b04          	addw	sp,#4
3511  0022               L044:
3512                     ; 814   assert_param(IS_TIM2_OCM_OK(TIM2_OCMode));
3514  0022 0d02          	tnz	(OFST+2,sp)
3515  0024 272a          	jreq	L444
3516  0026 7b02          	ld	a,(OFST+2,sp)
3517  0028 a110          	cp	a,#16
3518  002a 2724          	jreq	L444
3519  002c 7b02          	ld	a,(OFST+2,sp)
3520  002e a120          	cp	a,#32
3521  0030 271e          	jreq	L444
3522  0032 7b02          	ld	a,(OFST+2,sp)
3523  0034 a130          	cp	a,#48
3524  0036 2718          	jreq	L444
3525  0038 7b02          	ld	a,(OFST+2,sp)
3526  003a a160          	cp	a,#96
3527  003c 2712          	jreq	L444
3528  003e 7b02          	ld	a,(OFST+2,sp)
3529  0040 a170          	cp	a,#112
3530  0042 270c          	jreq	L444
3531  0044 7b02          	ld	a,(OFST+2,sp)
3532  0046 a150          	cp	a,#80
3533  0048 2706          	jreq	L444
3534  004a 7b02          	ld	a,(OFST+2,sp)
3535  004c a140          	cp	a,#64
3536  004e 2603          	jrne	L244
3537  0050               L444:
3538  0050 4f            	clr	a
3539  0051 2010          	jra	L644
3540  0053               L244:
3541  0053 ae032e        	ldw	x,#814
3542  0056 89            	pushw	x
3543  0057 ae0000        	ldw	x,#0
3544  005a 89            	pushw	x
3545  005b ae0000        	ldw	x,#L702
3546  005e cd0000        	call	_assert_failed
3548  0061 5b04          	addw	sp,#4
3549  0063               L644:
3550                     ; 816   if (TIM2_Channel == TIM2_CHANNEL_1)
3552  0063 0d01          	tnz	(OFST+1,sp)
3553  0065 2610          	jrne	L3331
3554                     ; 819     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
3556  0067 7211530a      	bres	21258,#0
3557                     ; 822     TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))
3557                     ; 823                             | (uint8_t)TIM2_OCMode);
3559  006b c65307        	ld	a,21255
3560  006e a48f          	and	a,#143
3561  0070 1a02          	or	a,(OFST+2,sp)
3562  0072 c75307        	ld	21255,a
3564  0075 2024          	jra	L5331
3565  0077               L3331:
3566                     ; 825   else if (TIM2_Channel == TIM2_CHANNEL_2)
3568  0077 7b01          	ld	a,(OFST+1,sp)
3569  0079 a101          	cp	a,#1
3570  007b 2610          	jrne	L7331
3571                     ; 828     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
3573  007d 7219530a      	bres	21258,#4
3574                     ; 831     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))
3574                     ; 832                             | (uint8_t)TIM2_OCMode);
3576  0081 c65308        	ld	a,21256
3577  0084 a48f          	and	a,#143
3578  0086 1a02          	or	a,(OFST+2,sp)
3579  0088 c75308        	ld	21256,a
3581  008b 200e          	jra	L5331
3582  008d               L7331:
3583                     ; 837     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
3585  008d 7211530b      	bres	21259,#0
3586                     ; 840     TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
3586                     ; 841                             | (uint8_t)TIM2_OCMode);
3588  0091 c65309        	ld	a,21257
3589  0094 a48f          	and	a,#143
3590  0096 1a02          	or	a,(OFST+2,sp)
3591  0098 c75309        	ld	21257,a
3592  009b               L5331:
3593                     ; 843 }
3596  009b 85            	popw	x
3597  009c 81            	ret
3631                     ; 851 void TIM2_SetCounter(uint16_t Counter)
3631                     ; 852 {
3632                     .text:	section	.text,new
3633  0000               _TIM2_SetCounter:
3637                     ; 854   TIM2->CNTRH = (uint8_t)(Counter >> 8);
3639  0000 9e            	ld	a,xh
3640  0001 c7530c        	ld	21260,a
3641                     ; 855   TIM2->CNTRL = (uint8_t)(Counter);
3643  0004 9f            	ld	a,xl
3644  0005 c7530d        	ld	21261,a
3645                     ; 856 }
3648  0008 81            	ret
3682                     ; 864 void TIM2_SetAutoreload(uint16_t Autoreload)
3682                     ; 865 {
3683                     .text:	section	.text,new
3684  0000               _TIM2_SetAutoreload:
3688                     ; 867   TIM2->ARRH = (uint8_t)(Autoreload >> 8);
3690  0000 9e            	ld	a,xh
3691  0001 c7530f        	ld	21263,a
3692                     ; 868   TIM2->ARRL = (uint8_t)(Autoreload);
3694  0004 9f            	ld	a,xl
3695  0005 c75310        	ld	21264,a
3696                     ; 869 }
3699  0008 81            	ret
3733                     ; 877 void TIM2_SetCompare1(uint16_t Compare1)
3733                     ; 878 {
3734                     .text:	section	.text,new
3735  0000               _TIM2_SetCompare1:
3739                     ; 880   TIM2->CCR1H = (uint8_t)(Compare1 >> 8);
3741  0000 9e            	ld	a,xh
3742  0001 c75311        	ld	21265,a
3743                     ; 881   TIM2->CCR1L = (uint8_t)(Compare1);
3745  0004 9f            	ld	a,xl
3746  0005 c75312        	ld	21266,a
3747                     ; 882 }
3750  0008 81            	ret
3784                     ; 890 void TIM2_SetCompare2(uint16_t Compare2)
3784                     ; 891 {
3785                     .text:	section	.text,new
3786  0000               _TIM2_SetCompare2:
3790                     ; 893   TIM2->CCR2H = (uint8_t)(Compare2 >> 8);
3792  0000 9e            	ld	a,xh
3793  0001 c75313        	ld	21267,a
3794                     ; 894   TIM2->CCR2L = (uint8_t)(Compare2);
3796  0004 9f            	ld	a,xl
3797  0005 c75314        	ld	21268,a
3798                     ; 895 }
3801  0008 81            	ret
3835                     ; 903 void TIM2_SetCompare3(uint16_t Compare3)
3835                     ; 904 {
3836                     .text:	section	.text,new
3837  0000               _TIM2_SetCompare3:
3841                     ; 906   TIM2->CCR3H = (uint8_t)(Compare3 >> 8);
3843  0000 9e            	ld	a,xh
3844  0001 c75315        	ld	21269,a
3845                     ; 907   TIM2->CCR3L = (uint8_t)(Compare3);
3847  0004 9f            	ld	a,xl
3848  0005 c75316        	ld	21270,a
3849                     ; 908 }
3852  0008 81            	ret
3889                     ; 920 void TIM2_SetIC1Prescaler(TIM2_ICPSC_TypeDef TIM2_IC1Prescaler)
3889                     ; 921 {
3890                     .text:	section	.text,new
3891  0000               _TIM2_SetIC1Prescaler:
3893  0000 88            	push	a
3894       00000000      OFST:	set	0
3897                     ; 923   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC1Prescaler));
3899  0001 4d            	tnz	a
3900  0002 270c          	jreq	L664
3901  0004 a104          	cp	a,#4
3902  0006 2708          	jreq	L664
3903  0008 a108          	cp	a,#8
3904  000a 2704          	jreq	L664
3905  000c a10c          	cp	a,#12
3906  000e 2603          	jrne	L464
3907  0010               L664:
3908  0010 4f            	clr	a
3909  0011 2010          	jra	L074
3910  0013               L464:
3911  0013 ae039b        	ldw	x,#923
3912  0016 89            	pushw	x
3913  0017 ae0000        	ldw	x,#0
3914  001a 89            	pushw	x
3915  001b ae0000        	ldw	x,#L702
3916  001e cd0000        	call	_assert_failed
3918  0021 5b04          	addw	sp,#4
3919  0023               L074:
3920                     ; 926   TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3920                     ; 927                           | (uint8_t)TIM2_IC1Prescaler);
3922  0023 c65307        	ld	a,21255
3923  0026 a4f3          	and	a,#243
3924  0028 1a01          	or	a,(OFST+1,sp)
3925  002a c75307        	ld	21255,a
3926                     ; 928 }
3929  002d 84            	pop	a
3930  002e 81            	ret
3967                     ; 940 void TIM2_SetIC2Prescaler(TIM2_ICPSC_TypeDef TIM2_IC2Prescaler)
3967                     ; 941 {
3968                     .text:	section	.text,new
3969  0000               _TIM2_SetIC2Prescaler:
3971  0000 88            	push	a
3972       00000000      OFST:	set	0
3975                     ; 943   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC2Prescaler));
3977  0001 4d            	tnz	a
3978  0002 270c          	jreq	L674
3979  0004 a104          	cp	a,#4
3980  0006 2708          	jreq	L674
3981  0008 a108          	cp	a,#8
3982  000a 2704          	jreq	L674
3983  000c a10c          	cp	a,#12
3984  000e 2603          	jrne	L474
3985  0010               L674:
3986  0010 4f            	clr	a
3987  0011 2010          	jra	L005
3988  0013               L474:
3989  0013 ae03af        	ldw	x,#943
3990  0016 89            	pushw	x
3991  0017 ae0000        	ldw	x,#0
3992  001a 89            	pushw	x
3993  001b ae0000        	ldw	x,#L702
3994  001e cd0000        	call	_assert_failed
3996  0021 5b04          	addw	sp,#4
3997  0023               L005:
3998                     ; 946   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3998                     ; 947                           | (uint8_t)TIM2_IC2Prescaler);
4000  0023 c65308        	ld	a,21256
4001  0026 a4f3          	and	a,#243
4002  0028 1a01          	or	a,(OFST+1,sp)
4003  002a c75308        	ld	21256,a
4004                     ; 948 }
4007  002d 84            	pop	a
4008  002e 81            	ret
4045                     ; 960 void TIM2_SetIC3Prescaler(TIM2_ICPSC_TypeDef TIM2_IC3Prescaler)
4045                     ; 961 {
4046                     .text:	section	.text,new
4047  0000               _TIM2_SetIC3Prescaler:
4049  0000 88            	push	a
4050       00000000      OFST:	set	0
4053                     ; 964   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC3Prescaler));
4055  0001 4d            	tnz	a
4056  0002 270c          	jreq	L605
4057  0004 a104          	cp	a,#4
4058  0006 2708          	jreq	L605
4059  0008 a108          	cp	a,#8
4060  000a 2704          	jreq	L605
4061  000c a10c          	cp	a,#12
4062  000e 2603          	jrne	L405
4063  0010               L605:
4064  0010 4f            	clr	a
4065  0011 2010          	jra	L015
4066  0013               L405:
4067  0013 ae03c4        	ldw	x,#964
4068  0016 89            	pushw	x
4069  0017 ae0000        	ldw	x,#0
4070  001a 89            	pushw	x
4071  001b ae0000        	ldw	x,#L702
4072  001e cd0000        	call	_assert_failed
4074  0021 5b04          	addw	sp,#4
4075  0023               L015:
4076                     ; 966   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_ICxPSC))
4076                     ; 967                           | (uint8_t)TIM2_IC3Prescaler);
4078  0023 c65309        	ld	a,21257
4079  0026 a4f3          	and	a,#243
4080  0028 1a01          	or	a,(OFST+1,sp)
4081  002a c75309        	ld	21257,a
4082                     ; 968 }
4085  002d 84            	pop	a
4086  002e 81            	ret
4138                     ; 975 uint16_t TIM2_GetCapture1(void)
4138                     ; 976 {
4139                     .text:	section	.text,new
4140  0000               _TIM2_GetCapture1:
4142  0000 5204          	subw	sp,#4
4143       00000004      OFST:	set	4
4146                     ; 978   uint16_t tmpccr1 = 0;
4148                     ; 979   uint8_t tmpccr1l=0, tmpccr1h=0;
4152                     ; 981   tmpccr1h = TIM2->CCR1H;
4154  0002 c65311        	ld	a,21265
4155  0005 6b02          	ld	(OFST-2,sp),a
4157                     ; 982   tmpccr1l = TIM2->CCR1L;
4159  0007 c65312        	ld	a,21266
4160  000a 6b01          	ld	(OFST-3,sp),a
4162                     ; 984   tmpccr1 = (uint16_t)(tmpccr1l);
4164  000c 7b01          	ld	a,(OFST-3,sp)
4165  000e 5f            	clrw	x
4166  000f 97            	ld	xl,a
4167  0010 1f03          	ldw	(OFST-1,sp),x
4169                     ; 985   tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
4171  0012 7b02          	ld	a,(OFST-2,sp)
4172  0014 5f            	clrw	x
4173  0015 97            	ld	xl,a
4174  0016 4f            	clr	a
4175  0017 02            	rlwa	x,a
4176  0018 01            	rrwa	x,a
4177  0019 1a04          	or	a,(OFST+0,sp)
4178  001b 01            	rrwa	x,a
4179  001c 1a03          	or	a,(OFST-1,sp)
4180  001e 01            	rrwa	x,a
4181  001f 1f03          	ldw	(OFST-1,sp),x
4183                     ; 987   return (uint16_t)tmpccr1;
4185  0021 1e03          	ldw	x,(OFST-1,sp)
4188  0023 5b04          	addw	sp,#4
4189  0025 81            	ret
4241                     ; 995 uint16_t TIM2_GetCapture2(void)
4241                     ; 996 {
4242                     .text:	section	.text,new
4243  0000               _TIM2_GetCapture2:
4245  0000 5204          	subw	sp,#4
4246       00000004      OFST:	set	4
4249                     ; 998   uint16_t tmpccr2 = 0;
4251                     ; 999   uint8_t tmpccr2l=0, tmpccr2h=0;
4255                     ; 1001   tmpccr2h = TIM2->CCR2H;
4257  0002 c65313        	ld	a,21267
4258  0005 6b02          	ld	(OFST-2,sp),a
4260                     ; 1002   tmpccr2l = TIM2->CCR2L;
4262  0007 c65314        	ld	a,21268
4263  000a 6b01          	ld	(OFST-3,sp),a
4265                     ; 1004   tmpccr2 = (uint16_t)(tmpccr2l);
4267  000c 7b01          	ld	a,(OFST-3,sp)
4268  000e 5f            	clrw	x
4269  000f 97            	ld	xl,a
4270  0010 1f03          	ldw	(OFST-1,sp),x
4272                     ; 1005   tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
4274  0012 7b02          	ld	a,(OFST-2,sp)
4275  0014 5f            	clrw	x
4276  0015 97            	ld	xl,a
4277  0016 4f            	clr	a
4278  0017 02            	rlwa	x,a
4279  0018 01            	rrwa	x,a
4280  0019 1a04          	or	a,(OFST+0,sp)
4281  001b 01            	rrwa	x,a
4282  001c 1a03          	or	a,(OFST-1,sp)
4283  001e 01            	rrwa	x,a
4284  001f 1f03          	ldw	(OFST-1,sp),x
4286                     ; 1007   return (uint16_t)tmpccr2;
4288  0021 1e03          	ldw	x,(OFST-1,sp)
4291  0023 5b04          	addw	sp,#4
4292  0025 81            	ret
4344                     ; 1015 uint16_t TIM2_GetCapture3(void)
4344                     ; 1016 {
4345                     .text:	section	.text,new
4346  0000               _TIM2_GetCapture3:
4348  0000 5204          	subw	sp,#4
4349       00000004      OFST:	set	4
4352                     ; 1018   uint16_t tmpccr3 = 0;
4354                     ; 1019   uint8_t tmpccr3l=0, tmpccr3h=0;
4358                     ; 1021   tmpccr3h = TIM2->CCR3H;
4360  0002 c65315        	ld	a,21269
4361  0005 6b02          	ld	(OFST-2,sp),a
4363                     ; 1022   tmpccr3l = TIM2->CCR3L;
4365  0007 c65316        	ld	a,21270
4366  000a 6b01          	ld	(OFST-3,sp),a
4368                     ; 1024   tmpccr3 = (uint16_t)(tmpccr3l);
4370  000c 7b01          	ld	a,(OFST-3,sp)
4371  000e 5f            	clrw	x
4372  000f 97            	ld	xl,a
4373  0010 1f03          	ldw	(OFST-1,sp),x
4375                     ; 1025   tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
4377  0012 7b02          	ld	a,(OFST-2,sp)
4378  0014 5f            	clrw	x
4379  0015 97            	ld	xl,a
4380  0016 4f            	clr	a
4381  0017 02            	rlwa	x,a
4382  0018 01            	rrwa	x,a
4383  0019 1a04          	or	a,(OFST+0,sp)
4384  001b 01            	rrwa	x,a
4385  001c 1a03          	or	a,(OFST-1,sp)
4386  001e 01            	rrwa	x,a
4387  001f 1f03          	ldw	(OFST-1,sp),x
4389                     ; 1027   return (uint16_t)tmpccr3;
4391  0021 1e03          	ldw	x,(OFST-1,sp)
4394  0023 5b04          	addw	sp,#4
4395  0025 81            	ret
4429                     ; 1035 uint16_t TIM2_GetCounter(void)
4429                     ; 1036 {
4430                     .text:	section	.text,new
4431  0000               _TIM2_GetCounter:
4433  0000 89            	pushw	x
4434       00000002      OFST:	set	2
4437                     ; 1037   uint16_t tmpcntr = 0;
4439                     ; 1039   tmpcntr =  ((uint16_t)TIM2->CNTRH << 8);
4441  0001 c6530c        	ld	a,21260
4442  0004 5f            	clrw	x
4443  0005 97            	ld	xl,a
4444  0006 4f            	clr	a
4445  0007 02            	rlwa	x,a
4446  0008 1f01          	ldw	(OFST-1,sp),x
4448                     ; 1041   return (uint16_t)( tmpcntr| (uint16_t)(TIM2->CNTRL));
4450  000a c6530d        	ld	a,21261
4451  000d 5f            	clrw	x
4452  000e 97            	ld	xl,a
4453  000f 01            	rrwa	x,a
4454  0010 1a02          	or	a,(OFST+0,sp)
4455  0012 01            	rrwa	x,a
4456  0013 1a01          	or	a,(OFST-1,sp)
4457  0015 01            	rrwa	x,a
4460  0016 5b02          	addw	sp,#2
4461  0018 81            	ret
4485                     ; 1049 TIM2_Prescaler_TypeDef TIM2_GetPrescaler(void)
4485                     ; 1050 {
4486                     .text:	section	.text,new
4487  0000               _TIM2_GetPrescaler:
4491                     ; 1052   return (TIM2_Prescaler_TypeDef)(TIM2->PSCR);
4493  0000 c6530e        	ld	a,21262
4496  0003 81            	ret
4636                     ; 1068 FlagStatus TIM2_GetFlagStatus(TIM2_FLAG_TypeDef TIM2_FLAG)
4636                     ; 1069 {
4637                     .text:	section	.text,new
4638  0000               _TIM2_GetFlagStatus:
4640  0000 89            	pushw	x
4641  0001 89            	pushw	x
4642       00000002      OFST:	set	2
4645                     ; 1070   FlagStatus bitstatus = RESET;
4647                     ; 1071   uint8_t tim2_flag_l = 0, tim2_flag_h = 0;
4651                     ; 1074   assert_param(IS_TIM2_GET_FLAG_OK(TIM2_FLAG));
4653  0002 a30001        	cpw	x,#1
4654  0005 271e          	jreq	L035
4655  0007 a30002        	cpw	x,#2
4656  000a 2719          	jreq	L035
4657  000c a30004        	cpw	x,#4
4658  000f 2714          	jreq	L035
4659  0011 a30008        	cpw	x,#8
4660  0014 270f          	jreq	L035
4661  0016 a30200        	cpw	x,#512
4662  0019 270a          	jreq	L035
4663  001b a30400        	cpw	x,#1024
4664  001e 2705          	jreq	L035
4665  0020 a30800        	cpw	x,#2048
4666  0023 2603          	jrne	L625
4667  0025               L035:
4668  0025 4f            	clr	a
4669  0026 2010          	jra	L235
4670  0028               L625:
4671  0028 ae0432        	ldw	x,#1074
4672  002b 89            	pushw	x
4673  002c ae0000        	ldw	x,#0
4674  002f 89            	pushw	x
4675  0030 ae0000        	ldw	x,#L702
4676  0033 cd0000        	call	_assert_failed
4678  0036 5b04          	addw	sp,#4
4679  0038               L235:
4680                     ; 1076   tim2_flag_l = (uint8_t)(TIM2->SR1 & (uint8_t)TIM2_FLAG);
4682  0038 c65304        	ld	a,21252
4683  003b 1404          	and	a,(OFST+2,sp)
4684  003d 6b01          	ld	(OFST-1,sp),a
4686                     ; 1077   tim2_flag_h = (uint8_t)((uint16_t)TIM2_FLAG >> 8);
4688  003f 7b03          	ld	a,(OFST+1,sp)
4689  0041 6b02          	ld	(OFST+0,sp),a
4691                     ; 1079   if ((tim2_flag_l | (uint8_t)(TIM2->SR2 & tim2_flag_h)) != (uint8_t)RESET )
4693  0043 c65305        	ld	a,21253
4694  0046 1402          	and	a,(OFST+0,sp)
4695  0048 1a01          	or	a,(OFST-1,sp)
4696  004a 2706          	jreq	L7371
4697                     ; 1081     bitstatus = SET;
4699  004c a601          	ld	a,#1
4700  004e 6b02          	ld	(OFST+0,sp),a
4703  0050 2002          	jra	L1471
4704  0052               L7371:
4705                     ; 1085     bitstatus = RESET;
4707  0052 0f02          	clr	(OFST+0,sp)
4709  0054               L1471:
4710                     ; 1087   return (FlagStatus)bitstatus;
4712  0054 7b02          	ld	a,(OFST+0,sp)
4715  0056 5b04          	addw	sp,#4
4716  0058 81            	ret
4752                     ; 1103 void TIM2_ClearFlag(TIM2_FLAG_TypeDef TIM2_FLAG)
4752                     ; 1104 {
4753                     .text:	section	.text,new
4754  0000               _TIM2_ClearFlag:
4756  0000 89            	pushw	x
4757       00000000      OFST:	set	0
4760                     ; 1106   assert_param(IS_TIM2_CLEAR_FLAG_OK(TIM2_FLAG));
4762  0001 01            	rrwa	x,a
4763  0002 a4f0          	and	a,#240
4764  0004 01            	rrwa	x,a
4765  0005 a4f1          	and	a,#241
4766  0007 01            	rrwa	x,a
4767  0008 a30000        	cpw	x,#0
4768  000b 2607          	jrne	L635
4769  000d 1e01          	ldw	x,(OFST+1,sp)
4770  000f 2703          	jreq	L635
4771  0011 4f            	clr	a
4772  0012 2010          	jra	L045
4773  0014               L635:
4774  0014 ae0452        	ldw	x,#1106
4775  0017 89            	pushw	x
4776  0018 ae0000        	ldw	x,#0
4777  001b 89            	pushw	x
4778  001c ae0000        	ldw	x,#L702
4779  001f cd0000        	call	_assert_failed
4781  0022 5b04          	addw	sp,#4
4782  0024               L045:
4783                     ; 1109   TIM2->SR1 = (uint8_t)(~((uint8_t)(TIM2_FLAG)));
4785  0024 7b02          	ld	a,(OFST+2,sp)
4786  0026 43            	cpl	a
4787  0027 c75304        	ld	21252,a
4788                     ; 1110   TIM2->SR2 = (uint8_t)(~((uint8_t)((uint8_t)TIM2_FLAG >> 8)));
4790  002a 35ff5305      	mov	21253,#255
4791                     ; 1111 }
4794  002e 85            	popw	x
4795  002f 81            	ret
4860                     ; 1123 ITStatus TIM2_GetITStatus(TIM2_IT_TypeDef TIM2_IT)
4860                     ; 1124 {
4861                     .text:	section	.text,new
4862  0000               _TIM2_GetITStatus:
4864  0000 88            	push	a
4865  0001 89            	pushw	x
4866       00000002      OFST:	set	2
4869                     ; 1125   ITStatus bitstatus = RESET;
4871                     ; 1126   uint8_t TIM2_itStatus = 0, TIM2_itEnable = 0;
4875                     ; 1129   assert_param(IS_TIM2_GET_IT_OK(TIM2_IT));
4877  0002 a101          	cp	a,#1
4878  0004 270c          	jreq	L645
4879  0006 a102          	cp	a,#2
4880  0008 2708          	jreq	L645
4881  000a a104          	cp	a,#4
4882  000c 2704          	jreq	L645
4883  000e a108          	cp	a,#8
4884  0010 2603          	jrne	L445
4885  0012               L645:
4886  0012 4f            	clr	a
4887  0013 2010          	jra	L055
4888  0015               L445:
4889  0015 ae0469        	ldw	x,#1129
4890  0018 89            	pushw	x
4891  0019 ae0000        	ldw	x,#0
4892  001c 89            	pushw	x
4893  001d ae0000        	ldw	x,#L702
4894  0020 cd0000        	call	_assert_failed
4896  0023 5b04          	addw	sp,#4
4897  0025               L055:
4898                     ; 1131   TIM2_itStatus = (uint8_t)(TIM2->SR1 & TIM2_IT);
4900  0025 c65304        	ld	a,21252
4901  0028 1403          	and	a,(OFST+1,sp)
4902  002a 6b01          	ld	(OFST-1,sp),a
4904                     ; 1133   TIM2_itEnable = (uint8_t)(TIM2->IER & TIM2_IT);
4906  002c c65303        	ld	a,21251
4907  002f 1403          	and	a,(OFST+1,sp)
4908  0031 6b02          	ld	(OFST+0,sp),a
4910                     ; 1135   if ((TIM2_itStatus != (uint8_t)RESET ) && (TIM2_itEnable != (uint8_t)RESET ))
4912  0033 0d01          	tnz	(OFST-1,sp)
4913  0035 270a          	jreq	L3102
4915  0037 0d02          	tnz	(OFST+0,sp)
4916  0039 2706          	jreq	L3102
4917                     ; 1137     bitstatus = SET;
4919  003b a601          	ld	a,#1
4920  003d 6b02          	ld	(OFST+0,sp),a
4923  003f 2002          	jra	L5102
4924  0041               L3102:
4925                     ; 1141     bitstatus = RESET;
4927  0041 0f02          	clr	(OFST+0,sp)
4929  0043               L5102:
4930                     ; 1143   return (ITStatus)(bitstatus);
4932  0043 7b02          	ld	a,(OFST+0,sp)
4935  0045 5b03          	addw	sp,#3
4936  0047 81            	ret
4973                     ; 1156 void TIM2_ClearITPendingBit(TIM2_IT_TypeDef TIM2_IT)
4973                     ; 1157 {
4974                     .text:	section	.text,new
4975  0000               _TIM2_ClearITPendingBit:
4977  0000 88            	push	a
4978       00000000      OFST:	set	0
4981                     ; 1159   assert_param(IS_TIM2_IT_OK(TIM2_IT));
4983  0001 4d            	tnz	a
4984  0002 2707          	jreq	L455
4985  0004 a110          	cp	a,#16
4986  0006 2403          	jruge	L455
4987  0008 4f            	clr	a
4988  0009 2010          	jra	L655
4989  000b               L455:
4990  000b ae0487        	ldw	x,#1159
4991  000e 89            	pushw	x
4992  000f ae0000        	ldw	x,#0
4993  0012 89            	pushw	x
4994  0013 ae0000        	ldw	x,#L702
4995  0016 cd0000        	call	_assert_failed
4997  0019 5b04          	addw	sp,#4
4998  001b               L655:
4999                     ; 1162   TIM2->SR1 = (uint8_t)(~TIM2_IT);
5001  001b 7b01          	ld	a,(OFST+1,sp)
5002  001d 43            	cpl	a
5003  001e c75304        	ld	21252,a
5004                     ; 1163 }
5007  0021 84            	pop	a
5008  0022 81            	ret
5060                     ; 1181 static void TI1_Config(uint8_t TIM2_ICPolarity,
5060                     ; 1182                        uint8_t TIM2_ICSelection,
5060                     ; 1183                        uint8_t TIM2_ICFilter)
5060                     ; 1184 {
5061                     .text:	section	.text,new
5062  0000               L3_TI1_Config:
5064  0000 89            	pushw	x
5065  0001 88            	push	a
5066       00000001      OFST:	set	1
5069                     ; 1186   TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
5071  0002 7211530a      	bres	21258,#0
5072                     ; 1189   TIM2->CCMR1  = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF )))
5072                     ; 1190                            | (uint8_t)(((TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
5074  0006 7b06          	ld	a,(OFST+5,sp)
5075  0008 97            	ld	xl,a
5076  0009 a610          	ld	a,#16
5077  000b 42            	mul	x,a
5078  000c 9f            	ld	a,xl
5079  000d 1a03          	or	a,(OFST+2,sp)
5080  000f 6b01          	ld	(OFST+0,sp),a
5082  0011 c65307        	ld	a,21255
5083  0014 a40c          	and	a,#12
5084  0016 1a01          	or	a,(OFST+0,sp)
5085  0018 c75307        	ld	21255,a
5086                     ; 1193   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
5088  001b 0d02          	tnz	(OFST+1,sp)
5089  001d 2706          	jreq	L3602
5090                     ; 1195     TIM2->CCER1 |= TIM2_CCER1_CC1P;
5092  001f 7212530a      	bset	21258,#1
5094  0023 2004          	jra	L5602
5095  0025               L3602:
5096                     ; 1199     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
5098  0025 7213530a      	bres	21258,#1
5099  0029               L5602:
5100                     ; 1202   TIM2->CCER1 |= TIM2_CCER1_CC1E;
5102  0029 7210530a      	bset	21258,#0
5103                     ; 1203 }
5106  002d 5b03          	addw	sp,#3
5107  002f 81            	ret
5159                     ; 1221 static void TI2_Config(uint8_t TIM2_ICPolarity,
5159                     ; 1222                        uint8_t TIM2_ICSelection,
5159                     ; 1223                        uint8_t TIM2_ICFilter)
5159                     ; 1224 {
5160                     .text:	section	.text,new
5161  0000               L5_TI2_Config:
5163  0000 89            	pushw	x
5164  0001 88            	push	a
5165       00000001      OFST:	set	1
5168                     ; 1226   TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
5170  0002 7219530a      	bres	21258,#4
5171                     ; 1229   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF ))) 
5171                     ; 1230                           | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
5173  0006 7b06          	ld	a,(OFST+5,sp)
5174  0008 97            	ld	xl,a
5175  0009 a610          	ld	a,#16
5176  000b 42            	mul	x,a
5177  000c 9f            	ld	a,xl
5178  000d 1a03          	or	a,(OFST+2,sp)
5179  000f 6b01          	ld	(OFST+0,sp),a
5181  0011 c65308        	ld	a,21256
5182  0014 a40c          	and	a,#12
5183  0016 1a01          	or	a,(OFST+0,sp)
5184  0018 c75308        	ld	21256,a
5185                     ; 1234   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
5187  001b 0d02          	tnz	(OFST+1,sp)
5188  001d 2706          	jreq	L5112
5189                     ; 1236     TIM2->CCER1 |= TIM2_CCER1_CC2P;
5191  001f 721a530a      	bset	21258,#5
5193  0023 2004          	jra	L7112
5194  0025               L5112:
5195                     ; 1240     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
5197  0025 721b530a      	bres	21258,#5
5198  0029               L7112:
5199                     ; 1244   TIM2->CCER1 |= TIM2_CCER1_CC2E;
5201  0029 7218530a      	bset	21258,#4
5202                     ; 1245 }
5205  002d 5b03          	addw	sp,#3
5206  002f 81            	ret
5258                     ; 1261 static void TI3_Config(uint8_t TIM2_ICPolarity, uint8_t TIM2_ICSelection,
5258                     ; 1262                        uint8_t TIM2_ICFilter)
5258                     ; 1263 {
5259                     .text:	section	.text,new
5260  0000               L7_TI3_Config:
5262  0000 89            	pushw	x
5263  0001 88            	push	a
5264       00000001      OFST:	set	1
5267                     ; 1265   TIM2->CCER2 &=  (uint8_t)(~TIM2_CCER2_CC3E);
5269  0002 7211530b      	bres	21259,#0
5270                     ; 1268   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF))) 
5270                     ; 1269                           | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
5272  0006 7b06          	ld	a,(OFST+5,sp)
5273  0008 97            	ld	xl,a
5274  0009 a610          	ld	a,#16
5275  000b 42            	mul	x,a
5276  000c 9f            	ld	a,xl
5277  000d 1a03          	or	a,(OFST+2,sp)
5278  000f 6b01          	ld	(OFST+0,sp),a
5280  0011 c65309        	ld	a,21257
5281  0014 a40c          	and	a,#12
5282  0016 1a01          	or	a,(OFST+0,sp)
5283  0018 c75309        	ld	21257,a
5284                     ; 1273   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
5286  001b 0d02          	tnz	(OFST+1,sp)
5287  001d 2706          	jreq	L7412
5288                     ; 1275     TIM2->CCER2 |= TIM2_CCER2_CC3P;
5290  001f 7212530b      	bset	21259,#1
5292  0023 2004          	jra	L1512
5293  0025               L7412:
5294                     ; 1279     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
5296  0025 7213530b      	bres	21259,#1
5297  0029               L1512:
5298                     ; 1282   TIM2->CCER2 |= TIM2_CCER2_CC3E;
5300  0029 7210530b      	bset	21259,#0
5301                     ; 1283 }
5304  002d 5b03          	addw	sp,#3
5305  002f 81            	ret
5318                     	xdef	_TIM2_ClearITPendingBit
5319                     	xdef	_TIM2_GetITStatus
5320                     	xdef	_TIM2_ClearFlag
5321                     	xdef	_TIM2_GetFlagStatus
5322                     	xdef	_TIM2_GetPrescaler
5323                     	xdef	_TIM2_GetCounter
5324                     	xdef	_TIM2_GetCapture3
5325                     	xdef	_TIM2_GetCapture2
5326                     	xdef	_TIM2_GetCapture1
5327                     	xdef	_TIM2_SetIC3Prescaler
5328                     	xdef	_TIM2_SetIC2Prescaler
5329                     	xdef	_TIM2_SetIC1Prescaler
5330                     	xdef	_TIM2_SetCompare3
5331                     	xdef	_TIM2_SetCompare2
5332                     	xdef	_TIM2_SetCompare1
5333                     	xdef	_TIM2_SetAutoreload
5334                     	xdef	_TIM2_SetCounter
5335                     	xdef	_TIM2_SelectOCxM
5336                     	xdef	_TIM2_CCxCmd
5337                     	xdef	_TIM2_OC3PolarityConfig
5338                     	xdef	_TIM2_OC2PolarityConfig
5339                     	xdef	_TIM2_OC1PolarityConfig
5340                     	xdef	_TIM2_GenerateEvent
5341                     	xdef	_TIM2_OC3PreloadConfig
5342                     	xdef	_TIM2_OC2PreloadConfig
5343                     	xdef	_TIM2_OC1PreloadConfig
5344                     	xdef	_TIM2_ARRPreloadConfig
5345                     	xdef	_TIM2_ForcedOC3Config
5346                     	xdef	_TIM2_ForcedOC2Config
5347                     	xdef	_TIM2_ForcedOC1Config
5348                     	xdef	_TIM2_PrescalerConfig
5349                     	xdef	_TIM2_SelectOnePulseMode
5350                     	xdef	_TIM2_UpdateRequestConfig
5351                     	xdef	_TIM2_UpdateDisableConfig
5352                     	xdef	_TIM2_ITConfig
5353                     	xdef	_TIM2_Cmd
5354                     	xdef	_TIM2_PWMIConfig
5355                     	xdef	_TIM2_ICInit
5356                     	xdef	_TIM2_OC3Init
5357                     	xdef	_TIM2_OC2Init
5358                     	xdef	_TIM2_OC1Init
5359                     	xdef	_TIM2_TimeBaseInit
5360                     	xdef	_TIM2_DeInit
5361                     	xref	_assert_failed
5362                     .const:	section	.text
5363  0000               L702:
5364  0000 2e2e5c6c6962  	dc.b	"..\libs\src\stm8s_"
5365  0012 74696d322e63  	dc.b	"tim2.c",0
5385                     	end
