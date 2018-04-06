   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
  44                     ; 52 void ADC1_DeInit(void)
  44                     ; 53 {
  46                     .text:	section	.text,new
  47  0000               _ADC1_DeInit:
  51                     ; 54   ADC1->CSR  = ADC1_CSR_RESET_VALUE;
  53  0000 725f5400      	clr	21504
  54                     ; 55   ADC1->CR1  = ADC1_CR1_RESET_VALUE;
  56  0004 725f5401      	clr	21505
  57                     ; 56   ADC1->CR2  = ADC1_CR2_RESET_VALUE;
  59  0008 725f5402      	clr	21506
  60                     ; 57   ADC1->CR3  = ADC1_CR3_RESET_VALUE;
  62  000c 725f5403      	clr	21507
  63                     ; 58   ADC1->TDRH = ADC1_TDRH_RESET_VALUE;
  65  0010 725f5406      	clr	21510
  66                     ; 59   ADC1->TDRL = ADC1_TDRL_RESET_VALUE;
  68  0014 725f5407      	clr	21511
  69                     ; 60   ADC1->HTRH = ADC1_HTRH_RESET_VALUE;
  71  0018 35ff5408      	mov	21512,#255
  72                     ; 61   ADC1->HTRL = ADC1_HTRL_RESET_VALUE;
  74  001c 35035409      	mov	21513,#3
  75                     ; 62   ADC1->LTRH = ADC1_LTRH_RESET_VALUE;
  77  0020 725f540a      	clr	21514
  78                     ; 63   ADC1->LTRL = ADC1_LTRL_RESET_VALUE;
  80  0024 725f540b      	clr	21515
  81                     ; 64   ADC1->AWCRH = ADC1_AWCRH_RESET_VALUE;
  83  0028 725f540e      	clr	21518
  84                     ; 65   ADC1->AWCRL = ADC1_AWCRL_RESET_VALUE;
  86  002c 725f540f      	clr	21519
  87                     ; 66 }
  90  0030 81            	ret
 542                     ; 88 void ADC1_Init(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_PresSel_TypeDef ADC1_PrescalerSelection, ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState ADC1_ExtTriggerState, ADC1_Align_TypeDef ADC1_Align, ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState ADC1_SchmittTriggerState)
 542                     ; 89 {
 543                     .text:	section	.text,new
 544  0000               _ADC1_Init:
 546  0000 89            	pushw	x
 547       00000000      OFST:	set	0
 550                     ; 91   assert_param(IS_ADC1_CONVERSIONMODE_OK(ADC1_ConversionMode));
 552  0001 9e            	ld	a,xh
 553  0002 4d            	tnz	a
 554  0003 2705          	jreq	L21
 555  0005 9e            	ld	a,xh
 556  0006 a101          	cp	a,#1
 557  0008 2603          	jrne	L01
 558  000a               L21:
 559  000a 4f            	clr	a
 560  000b 2010          	jra	L41
 561  000d               L01:
 562  000d ae005b        	ldw	x,#91
 563  0010 89            	pushw	x
 564  0011 ae0000        	ldw	x,#0
 565  0014 89            	pushw	x
 566  0015 ae0000        	ldw	x,#L542
 567  0018 cd0000        	call	_assert_failed
 569  001b 5b04          	addw	sp,#4
 570  001d               L41:
 571                     ; 92   assert_param(IS_ADC1_CHANNEL_OK(ADC1_Channel));
 573  001d 0d02          	tnz	(OFST+2,sp)
 574  001f 273c          	jreq	L02
 575  0021 7b02          	ld	a,(OFST+2,sp)
 576  0023 a101          	cp	a,#1
 577  0025 2736          	jreq	L02
 578  0027 7b02          	ld	a,(OFST+2,sp)
 579  0029 a102          	cp	a,#2
 580  002b 2730          	jreq	L02
 581  002d 7b02          	ld	a,(OFST+2,sp)
 582  002f a103          	cp	a,#3
 583  0031 272a          	jreq	L02
 584  0033 7b02          	ld	a,(OFST+2,sp)
 585  0035 a104          	cp	a,#4
 586  0037 2724          	jreq	L02
 587  0039 7b02          	ld	a,(OFST+2,sp)
 588  003b a105          	cp	a,#5
 589  003d 271e          	jreq	L02
 590  003f 7b02          	ld	a,(OFST+2,sp)
 591  0041 a106          	cp	a,#6
 592  0043 2718          	jreq	L02
 593  0045 7b02          	ld	a,(OFST+2,sp)
 594  0047 a107          	cp	a,#7
 595  0049 2712          	jreq	L02
 596  004b 7b02          	ld	a,(OFST+2,sp)
 597  004d a108          	cp	a,#8
 598  004f 270c          	jreq	L02
 599  0051 7b02          	ld	a,(OFST+2,sp)
 600  0053 a10c          	cp	a,#12
 601  0055 2706          	jreq	L02
 602  0057 7b02          	ld	a,(OFST+2,sp)
 603  0059 a109          	cp	a,#9
 604  005b 2603          	jrne	L61
 605  005d               L02:
 606  005d 4f            	clr	a
 607  005e 2010          	jra	L22
 608  0060               L61:
 609  0060 ae005c        	ldw	x,#92
 610  0063 89            	pushw	x
 611  0064 ae0000        	ldw	x,#0
 612  0067 89            	pushw	x
 613  0068 ae0000        	ldw	x,#L542
 614  006b cd0000        	call	_assert_failed
 616  006e 5b04          	addw	sp,#4
 617  0070               L22:
 618                     ; 93   assert_param(IS_ADC1_PRESSEL_OK(ADC1_PrescalerSelection));
 620  0070 0d05          	tnz	(OFST+5,sp)
 621  0072 272a          	jreq	L62
 622  0074 7b05          	ld	a,(OFST+5,sp)
 623  0076 a110          	cp	a,#16
 624  0078 2724          	jreq	L62
 625  007a 7b05          	ld	a,(OFST+5,sp)
 626  007c a120          	cp	a,#32
 627  007e 271e          	jreq	L62
 628  0080 7b05          	ld	a,(OFST+5,sp)
 629  0082 a130          	cp	a,#48
 630  0084 2718          	jreq	L62
 631  0086 7b05          	ld	a,(OFST+5,sp)
 632  0088 a140          	cp	a,#64
 633  008a 2712          	jreq	L62
 634  008c 7b05          	ld	a,(OFST+5,sp)
 635  008e a150          	cp	a,#80
 636  0090 270c          	jreq	L62
 637  0092 7b05          	ld	a,(OFST+5,sp)
 638  0094 a160          	cp	a,#96
 639  0096 2706          	jreq	L62
 640  0098 7b05          	ld	a,(OFST+5,sp)
 641  009a a170          	cp	a,#112
 642  009c 2603          	jrne	L42
 643  009e               L62:
 644  009e 4f            	clr	a
 645  009f 2010          	jra	L03
 646  00a1               L42:
 647  00a1 ae005d        	ldw	x,#93
 648  00a4 89            	pushw	x
 649  00a5 ae0000        	ldw	x,#0
 650  00a8 89            	pushw	x
 651  00a9 ae0000        	ldw	x,#L542
 652  00ac cd0000        	call	_assert_failed
 654  00af 5b04          	addw	sp,#4
 655  00b1               L03:
 656                     ; 94   assert_param(IS_ADC1_EXTTRIG_OK(ADC1_ExtTrigger));
 658  00b1 0d06          	tnz	(OFST+6,sp)
 659  00b3 2706          	jreq	L43
 660  00b5 7b06          	ld	a,(OFST+6,sp)
 661  00b7 a110          	cp	a,#16
 662  00b9 2603          	jrne	L23
 663  00bb               L43:
 664  00bb 4f            	clr	a
 665  00bc 2010          	jra	L63
 666  00be               L23:
 667  00be ae005e        	ldw	x,#94
 668  00c1 89            	pushw	x
 669  00c2 ae0000        	ldw	x,#0
 670  00c5 89            	pushw	x
 671  00c6 ae0000        	ldw	x,#L542
 672  00c9 cd0000        	call	_assert_failed
 674  00cc 5b04          	addw	sp,#4
 675  00ce               L63:
 676                     ; 95   assert_param(IS_FUNCTIONALSTATE_OK(((ADC1_ExtTriggerState))));
 678  00ce 0d07          	tnz	(OFST+7,sp)
 679  00d0 2706          	jreq	L24
 680  00d2 7b07          	ld	a,(OFST+7,sp)
 681  00d4 a101          	cp	a,#1
 682  00d6 2603          	jrne	L04
 683  00d8               L24:
 684  00d8 4f            	clr	a
 685  00d9 2010          	jra	L44
 686  00db               L04:
 687  00db ae005f        	ldw	x,#95
 688  00de 89            	pushw	x
 689  00df ae0000        	ldw	x,#0
 690  00e2 89            	pushw	x
 691  00e3 ae0000        	ldw	x,#L542
 692  00e6 cd0000        	call	_assert_failed
 694  00e9 5b04          	addw	sp,#4
 695  00eb               L44:
 696                     ; 96   assert_param(IS_ADC1_ALIGN_OK(ADC1_Align));
 698  00eb 0d08          	tnz	(OFST+8,sp)
 699  00ed 2706          	jreq	L05
 700  00ef 7b08          	ld	a,(OFST+8,sp)
 701  00f1 a108          	cp	a,#8
 702  00f3 2603          	jrne	L64
 703  00f5               L05:
 704  00f5 4f            	clr	a
 705  00f6 2010          	jra	L25
 706  00f8               L64:
 707  00f8 ae0060        	ldw	x,#96
 708  00fb 89            	pushw	x
 709  00fc ae0000        	ldw	x,#0
 710  00ff 89            	pushw	x
 711  0100 ae0000        	ldw	x,#L542
 712  0103 cd0000        	call	_assert_failed
 714  0106 5b04          	addw	sp,#4
 715  0108               L25:
 716                     ; 97   assert_param(IS_ADC1_SCHMITTTRIG_OK(ADC1_SchmittTriggerChannel));
 718  0108 0d09          	tnz	(OFST+9,sp)
 719  010a 2742          	jreq	L65
 720  010c 7b09          	ld	a,(OFST+9,sp)
 721  010e a101          	cp	a,#1
 722  0110 273c          	jreq	L65
 723  0112 7b09          	ld	a,(OFST+9,sp)
 724  0114 a102          	cp	a,#2
 725  0116 2736          	jreq	L65
 726  0118 7b09          	ld	a,(OFST+9,sp)
 727  011a a103          	cp	a,#3
 728  011c 2730          	jreq	L65
 729  011e 7b09          	ld	a,(OFST+9,sp)
 730  0120 a104          	cp	a,#4
 731  0122 272a          	jreq	L65
 732  0124 7b09          	ld	a,(OFST+9,sp)
 733  0126 a105          	cp	a,#5
 734  0128 2724          	jreq	L65
 735  012a 7b09          	ld	a,(OFST+9,sp)
 736  012c a106          	cp	a,#6
 737  012e 271e          	jreq	L65
 738  0130 7b09          	ld	a,(OFST+9,sp)
 739  0132 a107          	cp	a,#7
 740  0134 2718          	jreq	L65
 741  0136 7b09          	ld	a,(OFST+9,sp)
 742  0138 a108          	cp	a,#8
 743  013a 2712          	jreq	L65
 744  013c 7b09          	ld	a,(OFST+9,sp)
 745  013e a10c          	cp	a,#12
 746  0140 270c          	jreq	L65
 747  0142 7b09          	ld	a,(OFST+9,sp)
 748  0144 a1ff          	cp	a,#255
 749  0146 2706          	jreq	L65
 750  0148 7b09          	ld	a,(OFST+9,sp)
 751  014a a109          	cp	a,#9
 752  014c 2603          	jrne	L45
 753  014e               L65:
 754  014e 4f            	clr	a
 755  014f 2010          	jra	L06
 756  0151               L45:
 757  0151 ae0061        	ldw	x,#97
 758  0154 89            	pushw	x
 759  0155 ae0000        	ldw	x,#0
 760  0158 89            	pushw	x
 761  0159 ae0000        	ldw	x,#L542
 762  015c cd0000        	call	_assert_failed
 764  015f 5b04          	addw	sp,#4
 765  0161               L06:
 766                     ; 98   assert_param(IS_FUNCTIONALSTATE_OK(ADC1_SchmittTriggerState));
 768  0161 0d0a          	tnz	(OFST+10,sp)
 769  0163 2706          	jreq	L46
 770  0165 7b0a          	ld	a,(OFST+10,sp)
 771  0167 a101          	cp	a,#1
 772  0169 2603          	jrne	L26
 773  016b               L46:
 774  016b 4f            	clr	a
 775  016c 2010          	jra	L66
 776  016e               L26:
 777  016e ae0062        	ldw	x,#98
 778  0171 89            	pushw	x
 779  0172 ae0000        	ldw	x,#0
 780  0175 89            	pushw	x
 781  0176 ae0000        	ldw	x,#L542
 782  0179 cd0000        	call	_assert_failed
 784  017c 5b04          	addw	sp,#4
 785  017e               L66:
 786                     ; 103   ADC1_ConversionConfig(ADC1_ConversionMode, ADC1_Channel, ADC1_Align);
 788  017e 7b08          	ld	a,(OFST+8,sp)
 789  0180 88            	push	a
 790  0181 7b03          	ld	a,(OFST+3,sp)
 791  0183 97            	ld	xl,a
 792  0184 7b02          	ld	a,(OFST+2,sp)
 793  0186 95            	ld	xh,a
 794  0187 cd0000        	call	_ADC1_ConversionConfig
 796  018a 84            	pop	a
 797                     ; 105   ADC1_PrescalerConfig(ADC1_PrescalerSelection);
 799  018b 7b05          	ld	a,(OFST+5,sp)
 800  018d cd0000        	call	_ADC1_PrescalerConfig
 802                     ; 110   ADC1_ExternalTriggerConfig(ADC1_ExtTrigger, ADC1_ExtTriggerState);
 804  0190 7b07          	ld	a,(OFST+7,sp)
 805  0192 97            	ld	xl,a
 806  0193 7b06          	ld	a,(OFST+6,sp)
 807  0195 95            	ld	xh,a
 808  0196 cd0000        	call	_ADC1_ExternalTriggerConfig
 810                     ; 115   ADC1_SchmittTriggerConfig(ADC1_SchmittTriggerChannel, ADC1_SchmittTriggerState);
 812  0199 7b0a          	ld	a,(OFST+10,sp)
 813  019b 97            	ld	xl,a
 814  019c 7b09          	ld	a,(OFST+9,sp)
 815  019e 95            	ld	xh,a
 816  019f cd0000        	call	_ADC1_SchmittTriggerConfig
 818                     ; 118   ADC1->CR1 |= ADC1_CR1_ADON;
 820  01a2 72105401      	bset	21505,#0
 821                     ; 119 }
 824  01a6 85            	popw	x
 825  01a7 81            	ret
 861                     ; 126 void ADC1_Cmd(FunctionalState NewState)
 861                     ; 127 {
 862                     .text:	section	.text,new
 863  0000               _ADC1_Cmd:
 865  0000 88            	push	a
 866       00000000      OFST:	set	0
 869                     ; 129   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 871  0001 4d            	tnz	a
 872  0002 2704          	jreq	L47
 873  0004 a101          	cp	a,#1
 874  0006 2603          	jrne	L27
 875  0008               L47:
 876  0008 4f            	clr	a
 877  0009 2010          	jra	L67
 878  000b               L27:
 879  000b ae0081        	ldw	x,#129
 880  000e 89            	pushw	x
 881  000f ae0000        	ldw	x,#0
 882  0012 89            	pushw	x
 883  0013 ae0000        	ldw	x,#L542
 884  0016 cd0000        	call	_assert_failed
 886  0019 5b04          	addw	sp,#4
 887  001b               L67:
 888                     ; 131   if (NewState != DISABLE)
 890  001b 0d01          	tnz	(OFST+1,sp)
 891  001d 2706          	jreq	L562
 892                     ; 133     ADC1->CR1 |= ADC1_CR1_ADON;
 894  001f 72105401      	bset	21505,#0
 896  0023 2004          	jra	L762
 897  0025               L562:
 898                     ; 137     ADC1->CR1 &= (uint8_t)(~ADC1_CR1_ADON);
 900  0025 72115401      	bres	21505,#0
 901  0029               L762:
 902                     ; 139 }
 905  0029 84            	pop	a
 906  002a 81            	ret
 942                     ; 146 void ADC1_ScanModeCmd(FunctionalState NewState)
 942                     ; 147 {
 943                     .text:	section	.text,new
 944  0000               _ADC1_ScanModeCmd:
 946  0000 88            	push	a
 947       00000000      OFST:	set	0
 950                     ; 149   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 952  0001 4d            	tnz	a
 953  0002 2704          	jreq	L401
 954  0004 a101          	cp	a,#1
 955  0006 2603          	jrne	L201
 956  0008               L401:
 957  0008 4f            	clr	a
 958  0009 2010          	jra	L601
 959  000b               L201:
 960  000b ae0095        	ldw	x,#149
 961  000e 89            	pushw	x
 962  000f ae0000        	ldw	x,#0
 963  0012 89            	pushw	x
 964  0013 ae0000        	ldw	x,#L542
 965  0016 cd0000        	call	_assert_failed
 967  0019 5b04          	addw	sp,#4
 968  001b               L601:
 969                     ; 151   if (NewState != DISABLE)
 971  001b 0d01          	tnz	(OFST+1,sp)
 972  001d 2706          	jreq	L703
 973                     ; 153     ADC1->CR2 |= ADC1_CR2_SCAN;
 975  001f 72125402      	bset	21506,#1
 977  0023 2004          	jra	L113
 978  0025               L703:
 979                     ; 157     ADC1->CR2 &= (uint8_t)(~ADC1_CR2_SCAN);
 981  0025 72135402      	bres	21506,#1
 982  0029               L113:
 983                     ; 159 }
 986  0029 84            	pop	a
 987  002a 81            	ret
1023                     ; 166 void ADC1_DataBufferCmd(FunctionalState NewState)
1023                     ; 167 {
1024                     .text:	section	.text,new
1025  0000               _ADC1_DataBufferCmd:
1027  0000 88            	push	a
1028       00000000      OFST:	set	0
1031                     ; 169   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1033  0001 4d            	tnz	a
1034  0002 2704          	jreq	L411
1035  0004 a101          	cp	a,#1
1036  0006 2603          	jrne	L211
1037  0008               L411:
1038  0008 4f            	clr	a
1039  0009 2010          	jra	L611
1040  000b               L211:
1041  000b ae00a9        	ldw	x,#169
1042  000e 89            	pushw	x
1043  000f ae0000        	ldw	x,#0
1044  0012 89            	pushw	x
1045  0013 ae0000        	ldw	x,#L542
1046  0016 cd0000        	call	_assert_failed
1048  0019 5b04          	addw	sp,#4
1049  001b               L611:
1050                     ; 171   if (NewState != DISABLE)
1052  001b 0d01          	tnz	(OFST+1,sp)
1053  001d 2706          	jreq	L133
1054                     ; 173     ADC1->CR3 |= ADC1_CR3_DBUF;
1056  001f 721e5403      	bset	21507,#7
1058  0023 2004          	jra	L333
1059  0025               L133:
1060                     ; 177     ADC1->CR3 &= (uint8_t)(~ADC1_CR3_DBUF);
1062  0025 721f5403      	bres	21507,#7
1063  0029               L333:
1064                     ; 179 }
1067  0029 84            	pop	a
1068  002a 81            	ret
1225                     ; 190 void ADC1_ITConfig(ADC1_IT_TypeDef ADC1_IT, FunctionalState NewState)
1225                     ; 191 {
1226                     .text:	section	.text,new
1227  0000               _ADC1_ITConfig:
1229  0000 89            	pushw	x
1230       00000000      OFST:	set	0
1233                     ; 193   assert_param(IS_ADC1_IT_OK(ADC1_IT));
1235  0001 a30020        	cpw	x,#32
1236  0004 2705          	jreq	L421
1237  0006 a30010        	cpw	x,#16
1238  0009 2603          	jrne	L221
1239  000b               L421:
1240  000b 4f            	clr	a
1241  000c 2010          	jra	L621
1242  000e               L221:
1243  000e ae00c1        	ldw	x,#193
1244  0011 89            	pushw	x
1245  0012 ae0000        	ldw	x,#0
1246  0015 89            	pushw	x
1247  0016 ae0000        	ldw	x,#L542
1248  0019 cd0000        	call	_assert_failed
1250  001c 5b04          	addw	sp,#4
1251  001e               L621:
1252                     ; 194   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1254  001e 0d05          	tnz	(OFST+5,sp)
1255  0020 2706          	jreq	L231
1256  0022 7b05          	ld	a,(OFST+5,sp)
1257  0024 a101          	cp	a,#1
1258  0026 2603          	jrne	L031
1259  0028               L231:
1260  0028 4f            	clr	a
1261  0029 2010          	jra	L431
1262  002b               L031:
1263  002b ae00c2        	ldw	x,#194
1264  002e 89            	pushw	x
1265  002f ae0000        	ldw	x,#0
1266  0032 89            	pushw	x
1267  0033 ae0000        	ldw	x,#L542
1268  0036 cd0000        	call	_assert_failed
1270  0039 5b04          	addw	sp,#4
1271  003b               L431:
1272                     ; 196   if (NewState != DISABLE)
1274  003b 0d05          	tnz	(OFST+5,sp)
1275  003d 270a          	jreq	L124
1276                     ; 199     ADC1->CSR |= (uint8_t)ADC1_IT;
1278  003f c65400        	ld	a,21504
1279  0042 1a02          	or	a,(OFST+2,sp)
1280  0044 c75400        	ld	21504,a
1282  0047 2009          	jra	L324
1283  0049               L124:
1284                     ; 204     ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ADC1_IT);
1286  0049 7b02          	ld	a,(OFST+2,sp)
1287  004b 43            	cpl	a
1288  004c c45400        	and	a,21504
1289  004f c75400        	ld	21504,a
1290  0052               L324:
1291                     ; 206 }
1294  0052 85            	popw	x
1295  0053 81            	ret
1332                     ; 214 void ADC1_PrescalerConfig(ADC1_PresSel_TypeDef ADC1_Prescaler)
1332                     ; 215 {
1333                     .text:	section	.text,new
1334  0000               _ADC1_PrescalerConfig:
1336  0000 88            	push	a
1337       00000000      OFST:	set	0
1340                     ; 217   assert_param(IS_ADC1_PRESSEL_OK(ADC1_Prescaler));
1342  0001 4d            	tnz	a
1343  0002 271c          	jreq	L241
1344  0004 a110          	cp	a,#16
1345  0006 2718          	jreq	L241
1346  0008 a120          	cp	a,#32
1347  000a 2714          	jreq	L241
1348  000c a130          	cp	a,#48
1349  000e 2710          	jreq	L241
1350  0010 a140          	cp	a,#64
1351  0012 270c          	jreq	L241
1352  0014 a150          	cp	a,#80
1353  0016 2708          	jreq	L241
1354  0018 a160          	cp	a,#96
1355  001a 2704          	jreq	L241
1356  001c a170          	cp	a,#112
1357  001e 2603          	jrne	L041
1358  0020               L241:
1359  0020 4f            	clr	a
1360  0021 2010          	jra	L441
1361  0023               L041:
1362  0023 ae00d9        	ldw	x,#217
1363  0026 89            	pushw	x
1364  0027 ae0000        	ldw	x,#0
1365  002a 89            	pushw	x
1366  002b ae0000        	ldw	x,#L542
1367  002e cd0000        	call	_assert_failed
1369  0031 5b04          	addw	sp,#4
1370  0033               L441:
1371                     ; 220   ADC1->CR1 &= (uint8_t)(~ADC1_CR1_SPSEL);
1373  0033 c65401        	ld	a,21505
1374  0036 a48f          	and	a,#143
1375  0038 c75401        	ld	21505,a
1376                     ; 222   ADC1->CR1 |= (uint8_t)(ADC1_Prescaler);
1378  003b c65401        	ld	a,21505
1379  003e 1a01          	or	a,(OFST+1,sp)
1380  0040 c75401        	ld	21505,a
1381                     ; 223 }
1384  0043 84            	pop	a
1385  0044 81            	ret
1433                     ; 233 void ADC1_SchmittTriggerConfig(ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState NewState)
1433                     ; 234 {
1434                     .text:	section	.text,new
1435  0000               _ADC1_SchmittTriggerConfig:
1437  0000 89            	pushw	x
1438       00000000      OFST:	set	0
1441                     ; 236   assert_param(IS_ADC1_SCHMITTTRIG_OK(ADC1_SchmittTriggerChannel));
1443  0001 9e            	ld	a,xh
1444  0002 4d            	tnz	a
1445  0003 2737          	jreq	L251
1446  0005 9e            	ld	a,xh
1447  0006 a101          	cp	a,#1
1448  0008 2732          	jreq	L251
1449  000a 9e            	ld	a,xh
1450  000b a102          	cp	a,#2
1451  000d 272d          	jreq	L251
1452  000f 9e            	ld	a,xh
1453  0010 a103          	cp	a,#3
1454  0012 2728          	jreq	L251
1455  0014 9e            	ld	a,xh
1456  0015 a104          	cp	a,#4
1457  0017 2723          	jreq	L251
1458  0019 9e            	ld	a,xh
1459  001a a105          	cp	a,#5
1460  001c 271e          	jreq	L251
1461  001e 9e            	ld	a,xh
1462  001f a106          	cp	a,#6
1463  0021 2719          	jreq	L251
1464  0023 9e            	ld	a,xh
1465  0024 a107          	cp	a,#7
1466  0026 2714          	jreq	L251
1467  0028 9e            	ld	a,xh
1468  0029 a108          	cp	a,#8
1469  002b 270f          	jreq	L251
1470  002d 9e            	ld	a,xh
1471  002e a10c          	cp	a,#12
1472  0030 270a          	jreq	L251
1473  0032 9e            	ld	a,xh
1474  0033 a1ff          	cp	a,#255
1475  0035 2705          	jreq	L251
1476  0037 9e            	ld	a,xh
1477  0038 a109          	cp	a,#9
1478  003a 2603          	jrne	L051
1479  003c               L251:
1480  003c 4f            	clr	a
1481  003d 2010          	jra	L451
1482  003f               L051:
1483  003f ae00ec        	ldw	x,#236
1484  0042 89            	pushw	x
1485  0043 ae0000        	ldw	x,#0
1486  0046 89            	pushw	x
1487  0047 ae0000        	ldw	x,#L542
1488  004a cd0000        	call	_assert_failed
1490  004d 5b04          	addw	sp,#4
1491  004f               L451:
1492                     ; 237   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1494  004f 0d02          	tnz	(OFST+2,sp)
1495  0051 2706          	jreq	L061
1496  0053 7b02          	ld	a,(OFST+2,sp)
1497  0055 a101          	cp	a,#1
1498  0057 2603          	jrne	L651
1499  0059               L061:
1500  0059 4f            	clr	a
1501  005a 2010          	jra	L261
1502  005c               L651:
1503  005c ae00ed        	ldw	x,#237
1504  005f 89            	pushw	x
1505  0060 ae0000        	ldw	x,#0
1506  0063 89            	pushw	x
1507  0064 ae0000        	ldw	x,#L542
1508  0067 cd0000        	call	_assert_failed
1510  006a 5b04          	addw	sp,#4
1511  006c               L261:
1512                     ; 239   if (ADC1_SchmittTriggerChannel == ADC1_SCHMITTTRIG_ALL)
1514  006c 7b01          	ld	a,(OFST+1,sp)
1515  006e a1ff          	cp	a,#255
1516  0070 2620          	jrne	L564
1517                     ; 241     if (NewState != DISABLE)
1519  0072 0d02          	tnz	(OFST+2,sp)
1520  0074 270a          	jreq	L764
1521                     ; 243       ADC1->TDRL &= (uint8_t)0x0;
1523  0076 725f5407      	clr	21511
1524                     ; 244       ADC1->TDRH &= (uint8_t)0x0;
1526  007a 725f5406      	clr	21510
1528  007e 2078          	jra	L374
1529  0080               L764:
1530                     ; 248       ADC1->TDRL |= (uint8_t)0xFF;
1532  0080 c65407        	ld	a,21511
1533  0083 aaff          	or	a,#255
1534  0085 c75407        	ld	21511,a
1535                     ; 249       ADC1->TDRH |= (uint8_t)0xFF;
1537  0088 c65406        	ld	a,21510
1538  008b aaff          	or	a,#255
1539  008d c75406        	ld	21510,a
1540  0090 2066          	jra	L374
1541  0092               L564:
1542                     ; 252   else if (ADC1_SchmittTriggerChannel < ADC1_SCHMITTTRIG_CHANNEL8)
1544  0092 7b01          	ld	a,(OFST+1,sp)
1545  0094 a108          	cp	a,#8
1546  0096 242f          	jruge	L574
1547                     ; 254     if (NewState != DISABLE)
1549  0098 0d02          	tnz	(OFST+2,sp)
1550  009a 2716          	jreq	L774
1551                     ; 256       ADC1->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel));
1553  009c 7b01          	ld	a,(OFST+1,sp)
1554  009e 5f            	clrw	x
1555  009f 97            	ld	xl,a
1556  00a0 a601          	ld	a,#1
1557  00a2 5d            	tnzw	x
1558  00a3 2704          	jreq	L461
1559  00a5               L661:
1560  00a5 48            	sll	a
1561  00a6 5a            	decw	x
1562  00a7 26fc          	jrne	L661
1563  00a9               L461:
1564  00a9 43            	cpl	a
1565  00aa c45407        	and	a,21511
1566  00ad c75407        	ld	21511,a
1568  00b0 2046          	jra	L374
1569  00b2               L774:
1570                     ; 260       ADC1->TDRL |= (uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel);
1572  00b2 7b01          	ld	a,(OFST+1,sp)
1573  00b4 5f            	clrw	x
1574  00b5 97            	ld	xl,a
1575  00b6 a601          	ld	a,#1
1576  00b8 5d            	tnzw	x
1577  00b9 2704          	jreq	L071
1578  00bb               L271:
1579  00bb 48            	sll	a
1580  00bc 5a            	decw	x
1581  00bd 26fc          	jrne	L271
1582  00bf               L071:
1583  00bf ca5407        	or	a,21511
1584  00c2 c75407        	ld	21511,a
1585  00c5 2031          	jra	L374
1586  00c7               L574:
1587                     ; 265     if (NewState != DISABLE)
1589  00c7 0d02          	tnz	(OFST+2,sp)
1590  00c9 2718          	jreq	L505
1591                     ; 267       ADC1->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8)));
1593  00cb 7b01          	ld	a,(OFST+1,sp)
1594  00cd a008          	sub	a,#8
1595  00cf 5f            	clrw	x
1596  00d0 97            	ld	xl,a
1597  00d1 a601          	ld	a,#1
1598  00d3 5d            	tnzw	x
1599  00d4 2704          	jreq	L471
1600  00d6               L671:
1601  00d6 48            	sll	a
1602  00d7 5a            	decw	x
1603  00d8 26fc          	jrne	L671
1604  00da               L471:
1605  00da 43            	cpl	a
1606  00db c45406        	and	a,21510
1607  00de c75406        	ld	21510,a
1609  00e1 2015          	jra	L374
1610  00e3               L505:
1611                     ; 271       ADC1->TDRH |= (uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8));
1613  00e3 7b01          	ld	a,(OFST+1,sp)
1614  00e5 a008          	sub	a,#8
1615  00e7 5f            	clrw	x
1616  00e8 97            	ld	xl,a
1617  00e9 a601          	ld	a,#1
1618  00eb 5d            	tnzw	x
1619  00ec 2704          	jreq	L002
1620  00ee               L202:
1621  00ee 48            	sll	a
1622  00ef 5a            	decw	x
1623  00f0 26fc          	jrne	L202
1624  00f2               L002:
1625  00f2 ca5406        	or	a,21510
1626  00f5 c75406        	ld	21510,a
1627  00f8               L374:
1628                     ; 274 }
1631  00f8 85            	popw	x
1632  00f9 81            	ret
1690                     ; 286 void ADC1_ConversionConfig(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_Align_TypeDef ADC1_Align)
1690                     ; 287 {
1691                     .text:	section	.text,new
1692  0000               _ADC1_ConversionConfig:
1694  0000 89            	pushw	x
1695       00000000      OFST:	set	0
1698                     ; 289   assert_param(IS_ADC1_CONVERSIONMODE_OK(ADC1_ConversionMode));
1700  0001 9e            	ld	a,xh
1701  0002 4d            	tnz	a
1702  0003 2705          	jreq	L012
1703  0005 9e            	ld	a,xh
1704  0006 a101          	cp	a,#1
1705  0008 2603          	jrne	L602
1706  000a               L012:
1707  000a 4f            	clr	a
1708  000b 2010          	jra	L212
1709  000d               L602:
1710  000d ae0121        	ldw	x,#289
1711  0010 89            	pushw	x
1712  0011 ae0000        	ldw	x,#0
1713  0014 89            	pushw	x
1714  0015 ae0000        	ldw	x,#L542
1715  0018 cd0000        	call	_assert_failed
1717  001b 5b04          	addw	sp,#4
1718  001d               L212:
1719                     ; 290   assert_param(IS_ADC1_CHANNEL_OK(ADC1_Channel));
1721  001d 0d02          	tnz	(OFST+2,sp)
1722  001f 273c          	jreq	L612
1723  0021 7b02          	ld	a,(OFST+2,sp)
1724  0023 a101          	cp	a,#1
1725  0025 2736          	jreq	L612
1726  0027 7b02          	ld	a,(OFST+2,sp)
1727  0029 a102          	cp	a,#2
1728  002b 2730          	jreq	L612
1729  002d 7b02          	ld	a,(OFST+2,sp)
1730  002f a103          	cp	a,#3
1731  0031 272a          	jreq	L612
1732  0033 7b02          	ld	a,(OFST+2,sp)
1733  0035 a104          	cp	a,#4
1734  0037 2724          	jreq	L612
1735  0039 7b02          	ld	a,(OFST+2,sp)
1736  003b a105          	cp	a,#5
1737  003d 271e          	jreq	L612
1738  003f 7b02          	ld	a,(OFST+2,sp)
1739  0041 a106          	cp	a,#6
1740  0043 2718          	jreq	L612
1741  0045 7b02          	ld	a,(OFST+2,sp)
1742  0047 a107          	cp	a,#7
1743  0049 2712          	jreq	L612
1744  004b 7b02          	ld	a,(OFST+2,sp)
1745  004d a108          	cp	a,#8
1746  004f 270c          	jreq	L612
1747  0051 7b02          	ld	a,(OFST+2,sp)
1748  0053 a10c          	cp	a,#12
1749  0055 2706          	jreq	L612
1750  0057 7b02          	ld	a,(OFST+2,sp)
1751  0059 a109          	cp	a,#9
1752  005b 2603          	jrne	L412
1753  005d               L612:
1754  005d 4f            	clr	a
1755  005e 2010          	jra	L022
1756  0060               L412:
1757  0060 ae0122        	ldw	x,#290
1758  0063 89            	pushw	x
1759  0064 ae0000        	ldw	x,#0
1760  0067 89            	pushw	x
1761  0068 ae0000        	ldw	x,#L542
1762  006b cd0000        	call	_assert_failed
1764  006e 5b04          	addw	sp,#4
1765  0070               L022:
1766                     ; 291   assert_param(IS_ADC1_ALIGN_OK(ADC1_Align));
1768  0070 0d05          	tnz	(OFST+5,sp)
1769  0072 2706          	jreq	L422
1770  0074 7b05          	ld	a,(OFST+5,sp)
1771  0076 a108          	cp	a,#8
1772  0078 2603          	jrne	L222
1773  007a               L422:
1774  007a 4f            	clr	a
1775  007b 2010          	jra	L622
1776  007d               L222:
1777  007d ae0123        	ldw	x,#291
1778  0080 89            	pushw	x
1779  0081 ae0000        	ldw	x,#0
1780  0084 89            	pushw	x
1781  0085 ae0000        	ldw	x,#L542
1782  0088 cd0000        	call	_assert_failed
1784  008b 5b04          	addw	sp,#4
1785  008d               L622:
1786                     ; 294   ADC1->CR2 &= (uint8_t)(~ADC1_CR2_ALIGN);
1788  008d 72175402      	bres	21506,#3
1789                     ; 296   ADC1->CR2 |= (uint8_t)(ADC1_Align);
1791  0091 c65402        	ld	a,21506
1792  0094 1a05          	or	a,(OFST+5,sp)
1793  0096 c75402        	ld	21506,a
1794                     ; 298   if (ADC1_ConversionMode == ADC1_CONVERSIONMODE_CONTINUOUS)
1796  0099 7b01          	ld	a,(OFST+1,sp)
1797  009b a101          	cp	a,#1
1798  009d 2606          	jrne	L735
1799                     ; 301     ADC1->CR1 |= ADC1_CR1_CONT;
1801  009f 72125401      	bset	21505,#1
1803  00a3 2004          	jra	L145
1804  00a5               L735:
1805                     ; 306     ADC1->CR1 &= (uint8_t)(~ADC1_CR1_CONT);
1807  00a5 72135401      	bres	21505,#1
1808  00a9               L145:
1809                     ; 310   ADC1->CSR &= (uint8_t)(~ADC1_CSR_CH);
1811  00a9 c65400        	ld	a,21504
1812  00ac a4f0          	and	a,#240
1813  00ae c75400        	ld	21504,a
1814                     ; 312   ADC1->CSR |= (uint8_t)(ADC1_Channel);
1816  00b1 c65400        	ld	a,21504
1817  00b4 1a02          	or	a,(OFST+2,sp)
1818  00b6 c75400        	ld	21504,a
1819                     ; 313 }
1822  00b9 85            	popw	x
1823  00ba 81            	ret
1870                     ; 325 void ADC1_ExternalTriggerConfig(ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState NewState)
1870                     ; 326 {
1871                     .text:	section	.text,new
1872  0000               _ADC1_ExternalTriggerConfig:
1874  0000 89            	pushw	x
1875       00000000      OFST:	set	0
1878                     ; 328   assert_param(IS_ADC1_EXTTRIG_OK(ADC1_ExtTrigger));
1880  0001 9e            	ld	a,xh
1881  0002 4d            	tnz	a
1882  0003 2705          	jreq	L432
1883  0005 9e            	ld	a,xh
1884  0006 a110          	cp	a,#16
1885  0008 2603          	jrne	L232
1886  000a               L432:
1887  000a 4f            	clr	a
1888  000b 2010          	jra	L632
1889  000d               L232:
1890  000d ae0148        	ldw	x,#328
1891  0010 89            	pushw	x
1892  0011 ae0000        	ldw	x,#0
1893  0014 89            	pushw	x
1894  0015 ae0000        	ldw	x,#L542
1895  0018 cd0000        	call	_assert_failed
1897  001b 5b04          	addw	sp,#4
1898  001d               L632:
1899                     ; 329   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1901  001d 0d02          	tnz	(OFST+2,sp)
1902  001f 2706          	jreq	L242
1903  0021 7b02          	ld	a,(OFST+2,sp)
1904  0023 a101          	cp	a,#1
1905  0025 2603          	jrne	L042
1906  0027               L242:
1907  0027 4f            	clr	a
1908  0028 2010          	jra	L442
1909  002a               L042:
1910  002a ae0149        	ldw	x,#329
1911  002d 89            	pushw	x
1912  002e ae0000        	ldw	x,#0
1913  0031 89            	pushw	x
1914  0032 ae0000        	ldw	x,#L542
1915  0035 cd0000        	call	_assert_failed
1917  0038 5b04          	addw	sp,#4
1918  003a               L442:
1919                     ; 332   ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTSEL);
1921  003a c65402        	ld	a,21506
1922  003d a4cf          	and	a,#207
1923  003f c75402        	ld	21506,a
1924                     ; 334   if (NewState != DISABLE)
1926  0042 0d02          	tnz	(OFST+2,sp)
1927  0044 2706          	jreq	L565
1928                     ; 337     ADC1->CR2 |= (uint8_t)(ADC1_CR2_EXTTRIG);
1930  0046 721c5402      	bset	21506,#6
1932  004a 2004          	jra	L765
1933  004c               L565:
1934                     ; 342     ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTTRIG);
1936  004c 721d5402      	bres	21506,#6
1937  0050               L765:
1938                     ; 346   ADC1->CR2 |= (uint8_t)(ADC1_ExtTrigger);
1940  0050 c65402        	ld	a,21506
1941  0053 1a01          	or	a,(OFST+1,sp)
1942  0055 c75402        	ld	21506,a
1943                     ; 347 }
1946  0058 85            	popw	x
1947  0059 81            	ret
1971                     ; 358 void ADC1_StartConversion(void)
1971                     ; 359 {
1972                     .text:	section	.text,new
1973  0000               _ADC1_StartConversion:
1977                     ; 360   ADC1->CR1 |= ADC1_CR1_ADON;
1979  0000 72105401      	bset	21505,#0
1980                     ; 361 }
1983  0004 81            	ret
2027                     ; 370 uint16_t ADC1_GetConversionValue(void)
2027                     ; 371 {
2028                     .text:	section	.text,new
2029  0000               _ADC1_GetConversionValue:
2031  0000 5205          	subw	sp,#5
2032       00000005      OFST:	set	5
2035                     ; 372   uint16_t temph = 0;
2037                     ; 373   uint8_t templ = 0;
2039                     ; 375   if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
2041  0002 c65402        	ld	a,21506
2042  0005 a508          	bcp	a,#8
2043  0007 2715          	jreq	L326
2044                     ; 378     templ = ADC1->DRL;
2046  0009 c65405        	ld	a,21509
2047  000c 6b03          	ld	(OFST-2,sp),a
2049                     ; 380     temph = ADC1->DRH;
2051  000e c65404        	ld	a,21508
2052  0011 5f            	clrw	x
2053  0012 97            	ld	xl,a
2054  0013 1f04          	ldw	(OFST-1,sp),x
2056                     ; 382     temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
2058  0015 1e04          	ldw	x,(OFST-1,sp)
2059  0017 7b03          	ld	a,(OFST-2,sp)
2060  0019 02            	rlwa	x,a
2061  001a 1f04          	ldw	(OFST-1,sp),x
2064  001c 2021          	jra	L526
2065  001e               L326:
2066                     ; 387     temph = ADC1->DRH;
2068  001e c65404        	ld	a,21508
2069  0021 5f            	clrw	x
2070  0022 97            	ld	xl,a
2071  0023 1f04          	ldw	(OFST-1,sp),x
2073                     ; 389     templ = ADC1->DRL;
2075  0025 c65405        	ld	a,21509
2076  0028 6b03          	ld	(OFST-2,sp),a
2078                     ; 391     temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)((uint16_t)temph << 8));
2080  002a 1e04          	ldw	x,(OFST-1,sp)
2081  002c 4f            	clr	a
2082  002d 02            	rlwa	x,a
2083  002e 1f01          	ldw	(OFST-4,sp),x
2085  0030 7b03          	ld	a,(OFST-2,sp)
2086  0032 97            	ld	xl,a
2087  0033 a640          	ld	a,#64
2088  0035 42            	mul	x,a
2089  0036 01            	rrwa	x,a
2090  0037 1a02          	or	a,(OFST-3,sp)
2091  0039 01            	rrwa	x,a
2092  003a 1a01          	or	a,(OFST-4,sp)
2093  003c 01            	rrwa	x,a
2094  003d 1f04          	ldw	(OFST-1,sp),x
2096  003f               L526:
2097                     ; 394   return ((uint16_t)temph);
2099  003f 1e04          	ldw	x,(OFST-1,sp)
2102  0041 5b05          	addw	sp,#5
2103  0043 81            	ret
2150                     ; 405 void ADC1_AWDChannelConfig(ADC1_Channel_TypeDef Channel, FunctionalState NewState)
2150                     ; 406 {
2151                     .text:	section	.text,new
2152  0000               _ADC1_AWDChannelConfig:
2154  0000 89            	pushw	x
2155       00000000      OFST:	set	0
2158                     ; 408   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2160  0001 9f            	ld	a,xl
2161  0002 4d            	tnz	a
2162  0003 2705          	jreq	L652
2163  0005 9f            	ld	a,xl
2164  0006 a101          	cp	a,#1
2165  0008 2603          	jrne	L452
2166  000a               L652:
2167  000a 4f            	clr	a
2168  000b 2010          	jra	L062
2169  000d               L452:
2170  000d ae0198        	ldw	x,#408
2171  0010 89            	pushw	x
2172  0011 ae0000        	ldw	x,#0
2173  0014 89            	pushw	x
2174  0015 ae0000        	ldw	x,#L542
2175  0018 cd0000        	call	_assert_failed
2177  001b 5b04          	addw	sp,#4
2178  001d               L062:
2179                     ; 409   assert_param(IS_ADC1_CHANNEL_OK(Channel));
2181  001d 0d01          	tnz	(OFST+1,sp)
2182  001f 273c          	jreq	L462
2183  0021 7b01          	ld	a,(OFST+1,sp)
2184  0023 a101          	cp	a,#1
2185  0025 2736          	jreq	L462
2186  0027 7b01          	ld	a,(OFST+1,sp)
2187  0029 a102          	cp	a,#2
2188  002b 2730          	jreq	L462
2189  002d 7b01          	ld	a,(OFST+1,sp)
2190  002f a103          	cp	a,#3
2191  0031 272a          	jreq	L462
2192  0033 7b01          	ld	a,(OFST+1,sp)
2193  0035 a104          	cp	a,#4
2194  0037 2724          	jreq	L462
2195  0039 7b01          	ld	a,(OFST+1,sp)
2196  003b a105          	cp	a,#5
2197  003d 271e          	jreq	L462
2198  003f 7b01          	ld	a,(OFST+1,sp)
2199  0041 a106          	cp	a,#6
2200  0043 2718          	jreq	L462
2201  0045 7b01          	ld	a,(OFST+1,sp)
2202  0047 a107          	cp	a,#7
2203  0049 2712          	jreq	L462
2204  004b 7b01          	ld	a,(OFST+1,sp)
2205  004d a108          	cp	a,#8
2206  004f 270c          	jreq	L462
2207  0051 7b01          	ld	a,(OFST+1,sp)
2208  0053 a10c          	cp	a,#12
2209  0055 2706          	jreq	L462
2210  0057 7b01          	ld	a,(OFST+1,sp)
2211  0059 a109          	cp	a,#9
2212  005b 2603          	jrne	L262
2213  005d               L462:
2214  005d 4f            	clr	a
2215  005e 2010          	jra	L662
2216  0060               L262:
2217  0060 ae0199        	ldw	x,#409
2218  0063 89            	pushw	x
2219  0064 ae0000        	ldw	x,#0
2220  0067 89            	pushw	x
2221  0068 ae0000        	ldw	x,#L542
2222  006b cd0000        	call	_assert_failed
2224  006e 5b04          	addw	sp,#4
2225  0070               L662:
2226                     ; 411   if (Channel < (uint8_t)8)
2228  0070 7b01          	ld	a,(OFST+1,sp)
2229  0072 a108          	cp	a,#8
2230  0074 242f          	jruge	L156
2231                     ; 413     if (NewState != DISABLE)
2233  0076 0d02          	tnz	(OFST+2,sp)
2234  0078 2715          	jreq	L356
2235                     ; 415       ADC1->AWCRL |= (uint8_t)((uint8_t)1 << Channel);
2237  007a 7b01          	ld	a,(OFST+1,sp)
2238  007c 5f            	clrw	x
2239  007d 97            	ld	xl,a
2240  007e a601          	ld	a,#1
2241  0080 5d            	tnzw	x
2242  0081 2704          	jreq	L072
2243  0083               L272:
2244  0083 48            	sll	a
2245  0084 5a            	decw	x
2246  0085 26fc          	jrne	L272
2247  0087               L072:
2248  0087 ca540f        	or	a,21519
2249  008a c7540f        	ld	21519,a
2251  008d 2047          	jra	L756
2252  008f               L356:
2253                     ; 419       ADC1->AWCRL &= (uint8_t)~(uint8_t)((uint8_t)1 << Channel);
2255  008f 7b01          	ld	a,(OFST+1,sp)
2256  0091 5f            	clrw	x
2257  0092 97            	ld	xl,a
2258  0093 a601          	ld	a,#1
2259  0095 5d            	tnzw	x
2260  0096 2704          	jreq	L472
2261  0098               L672:
2262  0098 48            	sll	a
2263  0099 5a            	decw	x
2264  009a 26fc          	jrne	L672
2265  009c               L472:
2266  009c 43            	cpl	a
2267  009d c4540f        	and	a,21519
2268  00a0 c7540f        	ld	21519,a
2269  00a3 2031          	jra	L756
2270  00a5               L156:
2271                     ; 424     if (NewState != DISABLE)
2273  00a5 0d02          	tnz	(OFST+2,sp)
2274  00a7 2717          	jreq	L166
2275                     ; 426       ADC1->AWCRH |= (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8));
2277  00a9 7b01          	ld	a,(OFST+1,sp)
2278  00ab a008          	sub	a,#8
2279  00ad 5f            	clrw	x
2280  00ae 97            	ld	xl,a
2281  00af a601          	ld	a,#1
2282  00b1 5d            	tnzw	x
2283  00b2 2704          	jreq	L003
2284  00b4               L203:
2285  00b4 48            	sll	a
2286  00b5 5a            	decw	x
2287  00b6 26fc          	jrne	L203
2288  00b8               L003:
2289  00b8 ca540e        	or	a,21518
2290  00bb c7540e        	ld	21518,a
2292  00be 2016          	jra	L756
2293  00c0               L166:
2294                     ; 430       ADC1->AWCRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (uint8_t)(Channel - (uint8_t)8));
2296  00c0 7b01          	ld	a,(OFST+1,sp)
2297  00c2 a008          	sub	a,#8
2298  00c4 5f            	clrw	x
2299  00c5 97            	ld	xl,a
2300  00c6 a601          	ld	a,#1
2301  00c8 5d            	tnzw	x
2302  00c9 2704          	jreq	L403
2303  00cb               L603:
2304  00cb 48            	sll	a
2305  00cc 5a            	decw	x
2306  00cd 26fc          	jrne	L603
2307  00cf               L403:
2308  00cf 43            	cpl	a
2309  00d0 c4540e        	and	a,21518
2310  00d3 c7540e        	ld	21518,a
2311  00d6               L756:
2312                     ; 433 }
2315  00d6 85            	popw	x
2316  00d7 81            	ret
2351                     ; 441 void ADC1_SetHighThreshold(uint16_t Threshold)
2351                     ; 442 {
2352                     .text:	section	.text,new
2353  0000               _ADC1_SetHighThreshold:
2355  0000 89            	pushw	x
2356       00000000      OFST:	set	0
2359                     ; 443   ADC1->HTRH = (uint8_t)(Threshold >> (uint8_t)2);
2361  0001 54            	srlw	x
2362  0002 54            	srlw	x
2363  0003 9f            	ld	a,xl
2364  0004 c75408        	ld	21512,a
2365                     ; 444   ADC1->HTRL = (uint8_t)Threshold;
2367  0007 7b02          	ld	a,(OFST+2,sp)
2368  0009 c75409        	ld	21513,a
2369                     ; 445 }
2372  000c 85            	popw	x
2373  000d 81            	ret
2408                     ; 453 void ADC1_SetLowThreshold(uint16_t Threshold)
2408                     ; 454 {
2409                     .text:	section	.text,new
2410  0000               _ADC1_SetLowThreshold:
2414                     ; 455   ADC1->LTRL = (uint8_t)Threshold;
2416  0000 9f            	ld	a,xl
2417  0001 c7540b        	ld	21515,a
2418                     ; 456   ADC1->LTRH = (uint8_t)(Threshold >> (uint8_t)2);
2420  0004 54            	srlw	x
2421  0005 54            	srlw	x
2422  0006 9f            	ld	a,xl
2423  0007 c7540a        	ld	21514,a
2424                     ; 457 }
2427  000a 81            	ret
2481                     ; 466 uint16_t ADC1_GetBufferValue(uint8_t Buffer)
2481                     ; 467 {
2482                     .text:	section	.text,new
2483  0000               _ADC1_GetBufferValue:
2485  0000 88            	push	a
2486  0001 5205          	subw	sp,#5
2487       00000005      OFST:	set	5
2490                     ; 468   uint16_t temph = 0;
2492                     ; 469   uint8_t templ = 0;
2494                     ; 472   assert_param(IS_ADC1_BUFFER_OK(Buffer));
2496  0003 a10a          	cp	a,#10
2497  0005 2403          	jruge	L613
2498  0007 4f            	clr	a
2499  0008 2010          	jra	L023
2500  000a               L613:
2501  000a ae01d8        	ldw	x,#472
2502  000d 89            	pushw	x
2503  000e ae0000        	ldw	x,#0
2504  0011 89            	pushw	x
2505  0012 ae0000        	ldw	x,#L542
2506  0015 cd0000        	call	_assert_failed
2508  0018 5b04          	addw	sp,#4
2509  001a               L023:
2510                     ; 474   if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
2512  001a c65402        	ld	a,21506
2513  001d a508          	bcp	a,#8
2514  001f 271f          	jreq	L747
2515                     ; 477     templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
2517  0021 7b06          	ld	a,(OFST+1,sp)
2518  0023 48            	sll	a
2519  0024 5f            	clrw	x
2520  0025 97            	ld	xl,a
2521  0026 d653e1        	ld	a,(21473,x)
2522  0029 6b03          	ld	(OFST-2,sp),a
2524                     ; 479     temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
2526  002b 7b06          	ld	a,(OFST+1,sp)
2527  002d 48            	sll	a
2528  002e 5f            	clrw	x
2529  002f 97            	ld	xl,a
2530  0030 d653e0        	ld	a,(21472,x)
2531  0033 5f            	clrw	x
2532  0034 97            	ld	xl,a
2533  0035 1f04          	ldw	(OFST-1,sp),x
2535                     ; 481     temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
2537  0037 1e04          	ldw	x,(OFST-1,sp)
2538  0039 7b03          	ld	a,(OFST-2,sp)
2539  003b 02            	rlwa	x,a
2540  003c 1f04          	ldw	(OFST-1,sp),x
2543  003e 202b          	jra	L157
2544  0040               L747:
2545                     ; 486     temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
2547  0040 7b06          	ld	a,(OFST+1,sp)
2548  0042 48            	sll	a
2549  0043 5f            	clrw	x
2550  0044 97            	ld	xl,a
2551  0045 d653e0        	ld	a,(21472,x)
2552  0048 5f            	clrw	x
2553  0049 97            	ld	xl,a
2554  004a 1f04          	ldw	(OFST-1,sp),x
2556                     ; 488     templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
2558  004c 7b06          	ld	a,(OFST+1,sp)
2559  004e 48            	sll	a
2560  004f 5f            	clrw	x
2561  0050 97            	ld	xl,a
2562  0051 d653e1        	ld	a,(21473,x)
2563  0054 6b03          	ld	(OFST-2,sp),a
2565                     ; 490     temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)(temph << 8));
2567  0056 1e04          	ldw	x,(OFST-1,sp)
2568  0058 4f            	clr	a
2569  0059 02            	rlwa	x,a
2570  005a 1f01          	ldw	(OFST-4,sp),x
2572  005c 7b03          	ld	a,(OFST-2,sp)
2573  005e 97            	ld	xl,a
2574  005f a640          	ld	a,#64
2575  0061 42            	mul	x,a
2576  0062 01            	rrwa	x,a
2577  0063 1a02          	or	a,(OFST-3,sp)
2578  0065 01            	rrwa	x,a
2579  0066 1a01          	or	a,(OFST-4,sp)
2580  0068 01            	rrwa	x,a
2581  0069 1f04          	ldw	(OFST-1,sp),x
2583  006b               L157:
2584                     ; 493   return ((uint16_t)temph);
2586  006b 1e04          	ldw	x,(OFST-1,sp)
2589  006d 5b06          	addw	sp,#6
2590  006f 81            	ret
2657                     ; 502 FlagStatus ADC1_GetAWDChannelStatus(ADC1_Channel_TypeDef Channel)
2657                     ; 503 {
2658                     .text:	section	.text,new
2659  0000               _ADC1_GetAWDChannelStatus:
2661  0000 88            	push	a
2662  0001 88            	push	a
2663       00000001      OFST:	set	1
2666                     ; 504   uint8_t status = 0;
2668                     ; 507   assert_param(IS_ADC1_CHANNEL_OK(Channel));
2670  0002 4d            	tnz	a
2671  0003 2728          	jreq	L623
2672  0005 a101          	cp	a,#1
2673  0007 2724          	jreq	L623
2674  0009 a102          	cp	a,#2
2675  000b 2720          	jreq	L623
2676  000d a103          	cp	a,#3
2677  000f 271c          	jreq	L623
2678  0011 a104          	cp	a,#4
2679  0013 2718          	jreq	L623
2680  0015 a105          	cp	a,#5
2681  0017 2714          	jreq	L623
2682  0019 a106          	cp	a,#6
2683  001b 2710          	jreq	L623
2684  001d a107          	cp	a,#7
2685  001f 270c          	jreq	L623
2686  0021 a108          	cp	a,#8
2687  0023 2708          	jreq	L623
2688  0025 a10c          	cp	a,#12
2689  0027 2704          	jreq	L623
2690  0029 a109          	cp	a,#9
2691  002b 2603          	jrne	L423
2692  002d               L623:
2693  002d 4f            	clr	a
2694  002e 2010          	jra	L033
2695  0030               L423:
2696  0030 ae01fb        	ldw	x,#507
2697  0033 89            	pushw	x
2698  0034 ae0000        	ldw	x,#0
2699  0037 89            	pushw	x
2700  0038 ae0000        	ldw	x,#L542
2701  003b cd0000        	call	_assert_failed
2703  003e 5b04          	addw	sp,#4
2704  0040               L033:
2705                     ; 509   if (Channel < (uint8_t)8)
2707  0040 7b02          	ld	a,(OFST+1,sp)
2708  0042 a108          	cp	a,#8
2709  0044 2414          	jruge	L5001
2710                     ; 511     status = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << Channel));
2712  0046 7b02          	ld	a,(OFST+1,sp)
2713  0048 5f            	clrw	x
2714  0049 97            	ld	xl,a
2715  004a a601          	ld	a,#1
2716  004c 5d            	tnzw	x
2717  004d 2704          	jreq	L233
2718  004f               L433:
2719  004f 48            	sll	a
2720  0050 5a            	decw	x
2721  0051 26fc          	jrne	L433
2722  0053               L233:
2723  0053 c4540d        	and	a,21517
2724  0056 6b01          	ld	(OFST+0,sp),a
2727  0058 2014          	jra	L7001
2728  005a               L5001:
2729                     ; 515     status = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8)));
2731  005a 7b02          	ld	a,(OFST+1,sp)
2732  005c a008          	sub	a,#8
2733  005e 5f            	clrw	x
2734  005f 97            	ld	xl,a
2735  0060 a601          	ld	a,#1
2736  0062 5d            	tnzw	x
2737  0063 2704          	jreq	L633
2738  0065               L043:
2739  0065 48            	sll	a
2740  0066 5a            	decw	x
2741  0067 26fc          	jrne	L043
2742  0069               L633:
2743  0069 c4540c        	and	a,21516
2744  006c 6b01          	ld	(OFST+0,sp),a
2746  006e               L7001:
2747                     ; 518   return ((FlagStatus)status);
2749  006e 7b01          	ld	a,(OFST+0,sp)
2752  0070 85            	popw	x
2753  0071 81            	ret
2912                     ; 527 FlagStatus ADC1_GetFlagStatus(ADC1_Flag_TypeDef Flag)
2912                     ; 528 {
2913                     .text:	section	.text,new
2914  0000               _ADC1_GetFlagStatus:
2916  0000 88            	push	a
2917  0001 88            	push	a
2918       00000001      OFST:	set	1
2921                     ; 529   uint8_t flagstatus = 0;
2923                     ; 530   uint8_t temp = 0;
2925                     ; 533   assert_param(IS_ADC1_FLAG_OK(Flag));
2927  0002 a180          	cp	a,#128
2928  0004 2730          	jreq	L643
2929  0006 a141          	cp	a,#65
2930  0008 272c          	jreq	L643
2931  000a a140          	cp	a,#64
2932  000c 2728          	jreq	L643
2933  000e a110          	cp	a,#16
2934  0010 2724          	jreq	L643
2935  0012 a111          	cp	a,#17
2936  0014 2720          	jreq	L643
2937  0016 a112          	cp	a,#18
2938  0018 271c          	jreq	L643
2939  001a a113          	cp	a,#19
2940  001c 2718          	jreq	L643
2941  001e a114          	cp	a,#20
2942  0020 2714          	jreq	L643
2943  0022 a115          	cp	a,#21
2944  0024 2710          	jreq	L643
2945  0026 a116          	cp	a,#22
2946  0028 270c          	jreq	L643
2947  002a a117          	cp	a,#23
2948  002c 2708          	jreq	L643
2949  002e a118          	cp	a,#24
2950  0030 2704          	jreq	L643
2951  0032 a119          	cp	a,#25
2952  0034 2603          	jrne	L443
2953  0036               L643:
2954  0036 4f            	clr	a
2955  0037 2010          	jra	L053
2956  0039               L443:
2957  0039 ae0215        	ldw	x,#533
2958  003c 89            	pushw	x
2959  003d ae0000        	ldw	x,#0
2960  0040 89            	pushw	x
2961  0041 ae0000        	ldw	x,#L542
2962  0044 cd0000        	call	_assert_failed
2964  0047 5b04          	addw	sp,#4
2965  0049               L053:
2966                     ; 535   if ((Flag & 0x0F) == 0x01)
2968  0049 7b02          	ld	a,(OFST+1,sp)
2969  004b a40f          	and	a,#15
2970  004d a101          	cp	a,#1
2971  004f 2609          	jrne	L7701
2972                     ; 538     flagstatus = (uint8_t)(ADC1->CR3 & ADC1_CR3_OVR);
2974  0051 c65403        	ld	a,21507
2975  0054 a440          	and	a,#64
2976  0056 6b01          	ld	(OFST+0,sp),a
2979  0058 2045          	jra	L1011
2980  005a               L7701:
2981                     ; 540   else if ((Flag & 0xF0) == 0x10)
2983  005a 7b02          	ld	a,(OFST+1,sp)
2984  005c a4f0          	and	a,#240
2985  005e a110          	cp	a,#16
2986  0060 2636          	jrne	L3011
2987                     ; 543     temp = (uint8_t)(Flag & (uint8_t)0x0F);
2989  0062 7b02          	ld	a,(OFST+1,sp)
2990  0064 a40f          	and	a,#15
2991  0066 6b01          	ld	(OFST+0,sp),a
2993                     ; 544     if (temp < 8)
2995  0068 7b01          	ld	a,(OFST+0,sp)
2996  006a a108          	cp	a,#8
2997  006c 2414          	jruge	L5011
2998                     ; 546       flagstatus = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
3000  006e 7b01          	ld	a,(OFST+0,sp)
3001  0070 5f            	clrw	x
3002  0071 97            	ld	xl,a
3003  0072 a601          	ld	a,#1
3004  0074 5d            	tnzw	x
3005  0075 2704          	jreq	L253
3006  0077               L453:
3007  0077 48            	sll	a
3008  0078 5a            	decw	x
3009  0079 26fc          	jrne	L453
3010  007b               L253:
3011  007b c4540d        	and	a,21517
3012  007e 6b01          	ld	(OFST+0,sp),a
3015  0080 201d          	jra	L1011
3016  0082               L5011:
3017                     ; 550       flagstatus = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
3019  0082 7b01          	ld	a,(OFST+0,sp)
3020  0084 a008          	sub	a,#8
3021  0086 5f            	clrw	x
3022  0087 97            	ld	xl,a
3023  0088 a601          	ld	a,#1
3024  008a 5d            	tnzw	x
3025  008b 2704          	jreq	L653
3026  008d               L063:
3027  008d 48            	sll	a
3028  008e 5a            	decw	x
3029  008f 26fc          	jrne	L063
3030  0091               L653:
3031  0091 c4540c        	and	a,21516
3032  0094 6b01          	ld	(OFST+0,sp),a
3034  0096 2007          	jra	L1011
3035  0098               L3011:
3036                     ; 555     flagstatus = (uint8_t)(ADC1->CSR & Flag);
3038  0098 c65400        	ld	a,21504
3039  009b 1402          	and	a,(OFST+1,sp)
3040  009d 6b01          	ld	(OFST+0,sp),a
3042  009f               L1011:
3043                     ; 557   return ((FlagStatus)flagstatus);
3045  009f 7b01          	ld	a,(OFST+0,sp)
3048  00a1 85            	popw	x
3049  00a2 81            	ret
3094                     ; 567 void ADC1_ClearFlag(ADC1_Flag_TypeDef Flag)
3094                     ; 568 {
3095                     .text:	section	.text,new
3096  0000               _ADC1_ClearFlag:
3098  0000 88            	push	a
3099  0001 88            	push	a
3100       00000001      OFST:	set	1
3103                     ; 569   uint8_t temp = 0;
3105                     ; 572   assert_param(IS_ADC1_FLAG_OK(Flag));
3107  0002 a180          	cp	a,#128
3108  0004 2730          	jreq	L663
3109  0006 a141          	cp	a,#65
3110  0008 272c          	jreq	L663
3111  000a a140          	cp	a,#64
3112  000c 2728          	jreq	L663
3113  000e a110          	cp	a,#16
3114  0010 2724          	jreq	L663
3115  0012 a111          	cp	a,#17
3116  0014 2720          	jreq	L663
3117  0016 a112          	cp	a,#18
3118  0018 271c          	jreq	L663
3119  001a a113          	cp	a,#19
3120  001c 2718          	jreq	L663
3121  001e a114          	cp	a,#20
3122  0020 2714          	jreq	L663
3123  0022 a115          	cp	a,#21
3124  0024 2710          	jreq	L663
3125  0026 a116          	cp	a,#22
3126  0028 270c          	jreq	L663
3127  002a a117          	cp	a,#23
3128  002c 2708          	jreq	L663
3129  002e a118          	cp	a,#24
3130  0030 2704          	jreq	L663
3131  0032 a119          	cp	a,#25
3132  0034 2603          	jrne	L463
3133  0036               L663:
3134  0036 4f            	clr	a
3135  0037 2010          	jra	L073
3136  0039               L463:
3137  0039 ae023c        	ldw	x,#572
3138  003c 89            	pushw	x
3139  003d ae0000        	ldw	x,#0
3140  0040 89            	pushw	x
3141  0041 ae0000        	ldw	x,#L542
3142  0044 cd0000        	call	_assert_failed
3144  0047 5b04          	addw	sp,#4
3145  0049               L073:
3146                     ; 574   if ((Flag & 0x0F) == 0x01)
3148  0049 7b02          	ld	a,(OFST+1,sp)
3149  004b a40f          	and	a,#15
3150  004d a101          	cp	a,#1
3151  004f 2606          	jrne	L5311
3152                     ; 577     ADC1->CR3 &= (uint8_t)(~ADC1_CR3_OVR);
3154  0051 721d5403      	bres	21507,#6
3156  0055 204b          	jra	L7311
3157  0057               L5311:
3158                     ; 579   else if ((Flag & 0xF0) == 0x10)
3160  0057 7b02          	ld	a,(OFST+1,sp)
3161  0059 a4f0          	and	a,#240
3162  005b a110          	cp	a,#16
3163  005d 263a          	jrne	L1411
3164                     ; 582     temp = (uint8_t)(Flag & (uint8_t)0x0F);
3166  005f 7b02          	ld	a,(OFST+1,sp)
3167  0061 a40f          	and	a,#15
3168  0063 6b01          	ld	(OFST+0,sp),a
3170                     ; 583     if (temp < 8)
3172  0065 7b01          	ld	a,(OFST+0,sp)
3173  0067 a108          	cp	a,#8
3174  0069 2416          	jruge	L3411
3175                     ; 585       ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
3177  006b 7b01          	ld	a,(OFST+0,sp)
3178  006d 5f            	clrw	x
3179  006e 97            	ld	xl,a
3180  006f a601          	ld	a,#1
3181  0071 5d            	tnzw	x
3182  0072 2704          	jreq	L273
3183  0074               L473:
3184  0074 48            	sll	a
3185  0075 5a            	decw	x
3186  0076 26fc          	jrne	L473
3187  0078               L273:
3188  0078 43            	cpl	a
3189  0079 c4540d        	and	a,21517
3190  007c c7540d        	ld	21517,a
3192  007f 2021          	jra	L7311
3193  0081               L3411:
3194                     ; 589       ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
3196  0081 7b01          	ld	a,(OFST+0,sp)
3197  0083 a008          	sub	a,#8
3198  0085 5f            	clrw	x
3199  0086 97            	ld	xl,a
3200  0087 a601          	ld	a,#1
3201  0089 5d            	tnzw	x
3202  008a 2704          	jreq	L673
3203  008c               L004:
3204  008c 48            	sll	a
3205  008d 5a            	decw	x
3206  008e 26fc          	jrne	L004
3207  0090               L673:
3208  0090 43            	cpl	a
3209  0091 c4540c        	and	a,21516
3210  0094 c7540c        	ld	21516,a
3211  0097 2009          	jra	L7311
3212  0099               L1411:
3213                     ; 594     ADC1->CSR &= (uint8_t) (~Flag);
3215  0099 7b02          	ld	a,(OFST+1,sp)
3216  009b 43            	cpl	a
3217  009c c45400        	and	a,21504
3218  009f c75400        	ld	21504,a
3219  00a2               L7311:
3220                     ; 596 }
3223  00a2 85            	popw	x
3224  00a3 81            	ret
3280                     ; 616 ITStatus ADC1_GetITStatus(ADC1_IT_TypeDef ITPendingBit)
3280                     ; 617 {
3281                     .text:	section	.text,new
3282  0000               _ADC1_GetITStatus:
3284  0000 89            	pushw	x
3285  0001 88            	push	a
3286       00000001      OFST:	set	1
3289                     ; 618   ITStatus itstatus = RESET;
3291                     ; 619   uint8_t temp = 0;
3293                     ; 622   assert_param(IS_ADC1_ITPENDINGBIT_OK(ITPendingBit));
3295  0002 a30080        	cpw	x,#128
3296  0005 273c          	jreq	L604
3297  0007 a30140        	cpw	x,#320
3298  000a 2737          	jreq	L604
3299  000c a30110        	cpw	x,#272
3300  000f 2732          	jreq	L604
3301  0011 a30111        	cpw	x,#273
3302  0014 272d          	jreq	L604
3303  0016 a30112        	cpw	x,#274
3304  0019 2728          	jreq	L604
3305  001b a30113        	cpw	x,#275
3306  001e 2723          	jreq	L604
3307  0020 a30114        	cpw	x,#276
3308  0023 271e          	jreq	L604
3309  0025 a30115        	cpw	x,#277
3310  0028 2719          	jreq	L604
3311  002a a30116        	cpw	x,#278
3312  002d 2714          	jreq	L604
3313  002f a30117        	cpw	x,#279
3314  0032 270f          	jreq	L604
3315  0034 a30118        	cpw	x,#280
3316  0037 270a          	jreq	L604
3317  0039 a3011c        	cpw	x,#284
3318  003c 2705          	jreq	L604
3319  003e a30119        	cpw	x,#281
3320  0041 2603          	jrne	L404
3321  0043               L604:
3322  0043 4f            	clr	a
3323  0044 2010          	jra	L014
3324  0046               L404:
3325  0046 ae026e        	ldw	x,#622
3326  0049 89            	pushw	x
3327  004a ae0000        	ldw	x,#0
3328  004d 89            	pushw	x
3329  004e ae0000        	ldw	x,#L542
3330  0051 cd0000        	call	_assert_failed
3332  0054 5b04          	addw	sp,#4
3333  0056               L014:
3334                     ; 624   if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
3336  0056 7b02          	ld	a,(OFST+1,sp)
3337  0058 97            	ld	xl,a
3338  0059 7b03          	ld	a,(OFST+2,sp)
3339  005b a4f0          	and	a,#240
3340  005d 5f            	clrw	x
3341  005e 02            	rlwa	x,a
3342  005f a30010        	cpw	x,#16
3343  0062 2636          	jrne	L7711
3344                     ; 627     temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
3346  0064 7b03          	ld	a,(OFST+2,sp)
3347  0066 a40f          	and	a,#15
3348  0068 6b01          	ld	(OFST+0,sp),a
3350                     ; 628     if (temp < 8)
3352  006a 7b01          	ld	a,(OFST+0,sp)
3353  006c a108          	cp	a,#8
3354  006e 2414          	jruge	L1021
3355                     ; 630       itstatus = (ITStatus)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
3357  0070 7b01          	ld	a,(OFST+0,sp)
3358  0072 5f            	clrw	x
3359  0073 97            	ld	xl,a
3360  0074 a601          	ld	a,#1
3361  0076 5d            	tnzw	x
3362  0077 2704          	jreq	L214
3363  0079               L414:
3364  0079 48            	sll	a
3365  007a 5a            	decw	x
3366  007b 26fc          	jrne	L414
3367  007d               L214:
3368  007d c4540d        	and	a,21517
3369  0080 6b01          	ld	(OFST+0,sp),a
3372  0082 201d          	jra	L5021
3373  0084               L1021:
3374                     ; 634       itstatus = (ITStatus)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
3376  0084 7b01          	ld	a,(OFST+0,sp)
3377  0086 a008          	sub	a,#8
3378  0088 5f            	clrw	x
3379  0089 97            	ld	xl,a
3380  008a a601          	ld	a,#1
3381  008c 5d            	tnzw	x
3382  008d 2704          	jreq	L614
3383  008f               L024:
3384  008f 48            	sll	a
3385  0090 5a            	decw	x
3386  0091 26fc          	jrne	L024
3387  0093               L614:
3388  0093 c4540c        	and	a,21516
3389  0096 6b01          	ld	(OFST+0,sp),a
3391  0098 2007          	jra	L5021
3392  009a               L7711:
3393                     ; 639     itstatus = (ITStatus)(ADC1->CSR & (uint8_t)ITPendingBit);
3395  009a c65400        	ld	a,21504
3396  009d 1403          	and	a,(OFST+2,sp)
3397  009f 6b01          	ld	(OFST+0,sp),a
3399  00a1               L5021:
3400                     ; 641   return ((ITStatus)itstatus);
3402  00a1 7b01          	ld	a,(OFST+0,sp)
3405  00a3 5b03          	addw	sp,#3
3406  00a5 81            	ret
3452                     ; 662 void ADC1_ClearITPendingBit(ADC1_IT_TypeDef ITPendingBit)
3452                     ; 663 {
3453                     .text:	section	.text,new
3454  0000               _ADC1_ClearITPendingBit:
3456  0000 89            	pushw	x
3457  0001 88            	push	a
3458       00000001      OFST:	set	1
3461                     ; 664   uint8_t temp = 0;
3463                     ; 667   assert_param(IS_ADC1_ITPENDINGBIT_OK(ITPendingBit));
3465  0002 a30080        	cpw	x,#128
3466  0005 273c          	jreq	L624
3467  0007 a30140        	cpw	x,#320
3468  000a 2737          	jreq	L624
3469  000c a30110        	cpw	x,#272
3470  000f 2732          	jreq	L624
3471  0011 a30111        	cpw	x,#273
3472  0014 272d          	jreq	L624
3473  0016 a30112        	cpw	x,#274
3474  0019 2728          	jreq	L624
3475  001b a30113        	cpw	x,#275
3476  001e 2723          	jreq	L624
3477  0020 a30114        	cpw	x,#276
3478  0023 271e          	jreq	L624
3479  0025 a30115        	cpw	x,#277
3480  0028 2719          	jreq	L624
3481  002a a30116        	cpw	x,#278
3482  002d 2714          	jreq	L624
3483  002f a30117        	cpw	x,#279
3484  0032 270f          	jreq	L624
3485  0034 a30118        	cpw	x,#280
3486  0037 270a          	jreq	L624
3487  0039 a3011c        	cpw	x,#284
3488  003c 2705          	jreq	L624
3489  003e a30119        	cpw	x,#281
3490  0041 2603          	jrne	L424
3491  0043               L624:
3492  0043 4f            	clr	a
3493  0044 2010          	jra	L034
3494  0046               L424:
3495  0046 ae029b        	ldw	x,#667
3496  0049 89            	pushw	x
3497  004a ae0000        	ldw	x,#0
3498  004d 89            	pushw	x
3499  004e ae0000        	ldw	x,#L542
3500  0051 cd0000        	call	_assert_failed
3502  0054 5b04          	addw	sp,#4
3503  0056               L034:
3504                     ; 669   if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
3506  0056 7b02          	ld	a,(OFST+1,sp)
3507  0058 97            	ld	xl,a
3508  0059 7b03          	ld	a,(OFST+2,sp)
3509  005b a4f0          	and	a,#240
3510  005d 5f            	clrw	x
3511  005e 02            	rlwa	x,a
3512  005f a30010        	cpw	x,#16
3513  0062 263a          	jrne	L1321
3514                     ; 672     temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
3516  0064 7b03          	ld	a,(OFST+2,sp)
3517  0066 a40f          	and	a,#15
3518  0068 6b01          	ld	(OFST+0,sp),a
3520                     ; 673     if (temp < 8)
3522  006a 7b01          	ld	a,(OFST+0,sp)
3523  006c a108          	cp	a,#8
3524  006e 2416          	jruge	L3321
3525                     ; 675       ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
3527  0070 7b01          	ld	a,(OFST+0,sp)
3528  0072 5f            	clrw	x
3529  0073 97            	ld	xl,a
3530  0074 a601          	ld	a,#1
3531  0076 5d            	tnzw	x
3532  0077 2704          	jreq	L234
3533  0079               L434:
3534  0079 48            	sll	a
3535  007a 5a            	decw	x
3536  007b 26fc          	jrne	L434
3537  007d               L234:
3538  007d 43            	cpl	a
3539  007e c4540d        	and	a,21517
3540  0081 c7540d        	ld	21517,a
3542  0084 2021          	jra	L7321
3543  0086               L3321:
3544                     ; 679       ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
3546  0086 7b01          	ld	a,(OFST+0,sp)
3547  0088 a008          	sub	a,#8
3548  008a 5f            	clrw	x
3549  008b 97            	ld	xl,a
3550  008c a601          	ld	a,#1
3551  008e 5d            	tnzw	x
3552  008f 2704          	jreq	L634
3553  0091               L044:
3554  0091 48            	sll	a
3555  0092 5a            	decw	x
3556  0093 26fc          	jrne	L044
3557  0095               L634:
3558  0095 43            	cpl	a
3559  0096 c4540c        	and	a,21516
3560  0099 c7540c        	ld	21516,a
3561  009c 2009          	jra	L7321
3562  009e               L1321:
3563                     ; 684     ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ITPendingBit);
3565  009e 7b03          	ld	a,(OFST+2,sp)
3566  00a0 43            	cpl	a
3567  00a1 c45400        	and	a,21504
3568  00a4 c75400        	ld	21504,a
3569  00a7               L7321:
3570                     ; 686 }
3573  00a7 5b03          	addw	sp,#3
3574  00a9 81            	ret
3587                     	xdef	_ADC1_ClearITPendingBit
3588                     	xdef	_ADC1_GetITStatus
3589                     	xdef	_ADC1_ClearFlag
3590                     	xdef	_ADC1_GetFlagStatus
3591                     	xdef	_ADC1_GetAWDChannelStatus
3592                     	xdef	_ADC1_GetBufferValue
3593                     	xdef	_ADC1_SetLowThreshold
3594                     	xdef	_ADC1_SetHighThreshold
3595                     	xdef	_ADC1_GetConversionValue
3596                     	xdef	_ADC1_StartConversion
3597                     	xdef	_ADC1_AWDChannelConfig
3598                     	xdef	_ADC1_ExternalTriggerConfig
3599                     	xdef	_ADC1_ConversionConfig
3600                     	xdef	_ADC1_SchmittTriggerConfig
3601                     	xdef	_ADC1_PrescalerConfig
3602                     	xdef	_ADC1_ITConfig
3603                     	xdef	_ADC1_DataBufferCmd
3604                     	xdef	_ADC1_ScanModeCmd
3605                     	xdef	_ADC1_Cmd
3606                     	xdef	_ADC1_Init
3607                     	xdef	_ADC1_DeInit
3608                     	xref	_assert_failed
3609                     .const:	section	.text
3610  0000               L542:
3611  0000 2e2e5c6c6962  	dc.b	"..\libs\src\stm8s_"
3612  0012 616463312e63  	dc.b	"adc1.c",0
3632                     	end
