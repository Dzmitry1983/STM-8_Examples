   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
  43                     ; 52 void ADC1_DeInit(void)
  43                     ; 53 {
  45                     	switch	.text
  46  0000               _ADC1_DeInit:
  50                     ; 54   ADC1->CSR  = ADC1_CSR_RESET_VALUE;
  52  0000 725f5400      	clr	21504
  53                     ; 55   ADC1->CR1  = ADC1_CR1_RESET_VALUE;
  55  0004 725f5401      	clr	21505
  56                     ; 56   ADC1->CR2  = ADC1_CR2_RESET_VALUE;
  58  0008 725f5402      	clr	21506
  59                     ; 57   ADC1->CR3  = ADC1_CR3_RESET_VALUE;
  61  000c 725f5403      	clr	21507
  62                     ; 58   ADC1->TDRH = ADC1_TDRH_RESET_VALUE;
  64  0010 725f5406      	clr	21510
  65                     ; 59   ADC1->TDRL = ADC1_TDRL_RESET_VALUE;
  67  0014 725f5407      	clr	21511
  68                     ; 60   ADC1->HTRH = ADC1_HTRH_RESET_VALUE;
  70  0018 35ff5408      	mov	21512,#255
  71                     ; 61   ADC1->HTRL = ADC1_HTRL_RESET_VALUE;
  73  001c 35035409      	mov	21513,#3
  74                     ; 62   ADC1->LTRH = ADC1_LTRH_RESET_VALUE;
  76  0020 725f540a      	clr	21514
  77                     ; 63   ADC1->LTRL = ADC1_LTRL_RESET_VALUE;
  79  0024 725f540b      	clr	21515
  80                     ; 64   ADC1->AWCRH = ADC1_AWCRH_RESET_VALUE;
  82  0028 725f540e      	clr	21518
  83                     ; 65   ADC1->AWCRL = ADC1_AWCRL_RESET_VALUE;
  85  002c 725f540f      	clr	21519
  86                     ; 66 }
  89  0030 81            	ret
 541                     ; 88 void ADC1_Init(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_PresSel_TypeDef ADC1_PrescalerSelection, ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState ADC1_ExtTriggerState, ADC1_Align_TypeDef ADC1_Align, ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState ADC1_SchmittTriggerState)
 541                     ; 89 {
 542                     	switch	.text
 543  0031               _ADC1_Init:
 545  0031 89            	pushw	x
 546       00000000      OFST:	set	0
 549                     ; 91   assert_param(IS_ADC1_CONVERSIONMODE_OK(ADC1_ConversionMode));
 551  0032 9e            	ld	a,xh
 552  0033 4d            	tnz	a
 553  0034 2705          	jreq	L21
 554  0036 9e            	ld	a,xh
 555  0037 a101          	cp	a,#1
 556  0039 2603          	jrne	L01
 557  003b               L21:
 558  003b 4f            	clr	a
 559  003c 2010          	jra	L41
 560  003e               L01:
 561  003e ae005b        	ldw	x,#91
 562  0041 89            	pushw	x
 563  0042 ae0000        	ldw	x,#0
 564  0045 89            	pushw	x
 565  0046 ae0000        	ldw	x,#L542
 566  0049 cd0000        	call	_assert_failed
 568  004c 5b04          	addw	sp,#4
 569  004e               L41:
 570                     ; 92   assert_param(IS_ADC1_CHANNEL_OK(ADC1_Channel));
 572  004e 0d02          	tnz	(OFST+2,sp)
 573  0050 273c          	jreq	L02
 574  0052 7b02          	ld	a,(OFST+2,sp)
 575  0054 a101          	cp	a,#1
 576  0056 2736          	jreq	L02
 577  0058 7b02          	ld	a,(OFST+2,sp)
 578  005a a102          	cp	a,#2
 579  005c 2730          	jreq	L02
 580  005e 7b02          	ld	a,(OFST+2,sp)
 581  0060 a103          	cp	a,#3
 582  0062 272a          	jreq	L02
 583  0064 7b02          	ld	a,(OFST+2,sp)
 584  0066 a104          	cp	a,#4
 585  0068 2724          	jreq	L02
 586  006a 7b02          	ld	a,(OFST+2,sp)
 587  006c a105          	cp	a,#5
 588  006e 271e          	jreq	L02
 589  0070 7b02          	ld	a,(OFST+2,sp)
 590  0072 a106          	cp	a,#6
 591  0074 2718          	jreq	L02
 592  0076 7b02          	ld	a,(OFST+2,sp)
 593  0078 a107          	cp	a,#7
 594  007a 2712          	jreq	L02
 595  007c 7b02          	ld	a,(OFST+2,sp)
 596  007e a108          	cp	a,#8
 597  0080 270c          	jreq	L02
 598  0082 7b02          	ld	a,(OFST+2,sp)
 599  0084 a10c          	cp	a,#12
 600  0086 2706          	jreq	L02
 601  0088 7b02          	ld	a,(OFST+2,sp)
 602  008a a109          	cp	a,#9
 603  008c 2603          	jrne	L61
 604  008e               L02:
 605  008e 4f            	clr	a
 606  008f 2010          	jra	L22
 607  0091               L61:
 608  0091 ae005c        	ldw	x,#92
 609  0094 89            	pushw	x
 610  0095 ae0000        	ldw	x,#0
 611  0098 89            	pushw	x
 612  0099 ae0000        	ldw	x,#L542
 613  009c cd0000        	call	_assert_failed
 615  009f 5b04          	addw	sp,#4
 616  00a1               L22:
 617                     ; 93   assert_param(IS_ADC1_PRESSEL_OK(ADC1_PrescalerSelection));
 619  00a1 0d05          	tnz	(OFST+5,sp)
 620  00a3 272a          	jreq	L62
 621  00a5 7b05          	ld	a,(OFST+5,sp)
 622  00a7 a110          	cp	a,#16
 623  00a9 2724          	jreq	L62
 624  00ab 7b05          	ld	a,(OFST+5,sp)
 625  00ad a120          	cp	a,#32
 626  00af 271e          	jreq	L62
 627  00b1 7b05          	ld	a,(OFST+5,sp)
 628  00b3 a130          	cp	a,#48
 629  00b5 2718          	jreq	L62
 630  00b7 7b05          	ld	a,(OFST+5,sp)
 631  00b9 a140          	cp	a,#64
 632  00bb 2712          	jreq	L62
 633  00bd 7b05          	ld	a,(OFST+5,sp)
 634  00bf a150          	cp	a,#80
 635  00c1 270c          	jreq	L62
 636  00c3 7b05          	ld	a,(OFST+5,sp)
 637  00c5 a160          	cp	a,#96
 638  00c7 2706          	jreq	L62
 639  00c9 7b05          	ld	a,(OFST+5,sp)
 640  00cb a170          	cp	a,#112
 641  00cd 2603          	jrne	L42
 642  00cf               L62:
 643  00cf 4f            	clr	a
 644  00d0 2010          	jra	L03
 645  00d2               L42:
 646  00d2 ae005d        	ldw	x,#93
 647  00d5 89            	pushw	x
 648  00d6 ae0000        	ldw	x,#0
 649  00d9 89            	pushw	x
 650  00da ae0000        	ldw	x,#L542
 651  00dd cd0000        	call	_assert_failed
 653  00e0 5b04          	addw	sp,#4
 654  00e2               L03:
 655                     ; 94   assert_param(IS_ADC1_EXTTRIG_OK(ADC1_ExtTrigger));
 657  00e2 0d06          	tnz	(OFST+6,sp)
 658  00e4 2706          	jreq	L43
 659  00e6 7b06          	ld	a,(OFST+6,sp)
 660  00e8 a110          	cp	a,#16
 661  00ea 2603          	jrne	L23
 662  00ec               L43:
 663  00ec 4f            	clr	a
 664  00ed 2010          	jra	L63
 665  00ef               L23:
 666  00ef ae005e        	ldw	x,#94
 667  00f2 89            	pushw	x
 668  00f3 ae0000        	ldw	x,#0
 669  00f6 89            	pushw	x
 670  00f7 ae0000        	ldw	x,#L542
 671  00fa cd0000        	call	_assert_failed
 673  00fd 5b04          	addw	sp,#4
 674  00ff               L63:
 675                     ; 95   assert_param(IS_FUNCTIONALSTATE_OK(((ADC1_ExtTriggerState))));
 677  00ff 0d07          	tnz	(OFST+7,sp)
 678  0101 2706          	jreq	L24
 679  0103 7b07          	ld	a,(OFST+7,sp)
 680  0105 a101          	cp	a,#1
 681  0107 2603          	jrne	L04
 682  0109               L24:
 683  0109 4f            	clr	a
 684  010a 2010          	jra	L44
 685  010c               L04:
 686  010c ae005f        	ldw	x,#95
 687  010f 89            	pushw	x
 688  0110 ae0000        	ldw	x,#0
 689  0113 89            	pushw	x
 690  0114 ae0000        	ldw	x,#L542
 691  0117 cd0000        	call	_assert_failed
 693  011a 5b04          	addw	sp,#4
 694  011c               L44:
 695                     ; 96   assert_param(IS_ADC1_ALIGN_OK(ADC1_Align));
 697  011c 0d08          	tnz	(OFST+8,sp)
 698  011e 2706          	jreq	L05
 699  0120 7b08          	ld	a,(OFST+8,sp)
 700  0122 a108          	cp	a,#8
 701  0124 2603          	jrne	L64
 702  0126               L05:
 703  0126 4f            	clr	a
 704  0127 2010          	jra	L25
 705  0129               L64:
 706  0129 ae0060        	ldw	x,#96
 707  012c 89            	pushw	x
 708  012d ae0000        	ldw	x,#0
 709  0130 89            	pushw	x
 710  0131 ae0000        	ldw	x,#L542
 711  0134 cd0000        	call	_assert_failed
 713  0137 5b04          	addw	sp,#4
 714  0139               L25:
 715                     ; 97   assert_param(IS_ADC1_SCHMITTTRIG_OK(ADC1_SchmittTriggerChannel));
 717  0139 0d09          	tnz	(OFST+9,sp)
 718  013b 2742          	jreq	L65
 719  013d 7b09          	ld	a,(OFST+9,sp)
 720  013f a101          	cp	a,#1
 721  0141 273c          	jreq	L65
 722  0143 7b09          	ld	a,(OFST+9,sp)
 723  0145 a102          	cp	a,#2
 724  0147 2736          	jreq	L65
 725  0149 7b09          	ld	a,(OFST+9,sp)
 726  014b a103          	cp	a,#3
 727  014d 2730          	jreq	L65
 728  014f 7b09          	ld	a,(OFST+9,sp)
 729  0151 a104          	cp	a,#4
 730  0153 272a          	jreq	L65
 731  0155 7b09          	ld	a,(OFST+9,sp)
 732  0157 a105          	cp	a,#5
 733  0159 2724          	jreq	L65
 734  015b 7b09          	ld	a,(OFST+9,sp)
 735  015d a106          	cp	a,#6
 736  015f 271e          	jreq	L65
 737  0161 7b09          	ld	a,(OFST+9,sp)
 738  0163 a107          	cp	a,#7
 739  0165 2718          	jreq	L65
 740  0167 7b09          	ld	a,(OFST+9,sp)
 741  0169 a108          	cp	a,#8
 742  016b 2712          	jreq	L65
 743  016d 7b09          	ld	a,(OFST+9,sp)
 744  016f a10c          	cp	a,#12
 745  0171 270c          	jreq	L65
 746  0173 7b09          	ld	a,(OFST+9,sp)
 747  0175 a1ff          	cp	a,#255
 748  0177 2706          	jreq	L65
 749  0179 7b09          	ld	a,(OFST+9,sp)
 750  017b a109          	cp	a,#9
 751  017d 2603          	jrne	L45
 752  017f               L65:
 753  017f 4f            	clr	a
 754  0180 2010          	jra	L06
 755  0182               L45:
 756  0182 ae0061        	ldw	x,#97
 757  0185 89            	pushw	x
 758  0186 ae0000        	ldw	x,#0
 759  0189 89            	pushw	x
 760  018a ae0000        	ldw	x,#L542
 761  018d cd0000        	call	_assert_failed
 763  0190 5b04          	addw	sp,#4
 764  0192               L06:
 765                     ; 98   assert_param(IS_FUNCTIONALSTATE_OK(ADC1_SchmittTriggerState));
 767  0192 0d0a          	tnz	(OFST+10,sp)
 768  0194 2706          	jreq	L46
 769  0196 7b0a          	ld	a,(OFST+10,sp)
 770  0198 a101          	cp	a,#1
 771  019a 2603          	jrne	L26
 772  019c               L46:
 773  019c 4f            	clr	a
 774  019d 2010          	jra	L66
 775  019f               L26:
 776  019f ae0062        	ldw	x,#98
 777  01a2 89            	pushw	x
 778  01a3 ae0000        	ldw	x,#0
 779  01a6 89            	pushw	x
 780  01a7 ae0000        	ldw	x,#L542
 781  01aa cd0000        	call	_assert_failed
 783  01ad 5b04          	addw	sp,#4
 784  01af               L66:
 785                     ; 103   ADC1_ConversionConfig(ADC1_ConversionMode, ADC1_Channel, ADC1_Align);
 787  01af 7b08          	ld	a,(OFST+8,sp)
 788  01b1 88            	push	a
 789  01b2 7b03          	ld	a,(OFST+3,sp)
 790  01b4 97            	ld	xl,a
 791  01b5 7b02          	ld	a,(OFST+2,sp)
 792  01b7 95            	ld	xh,a
 793  01b8 cd03ed        	call	_ADC1_ConversionConfig
 795  01bb 84            	pop	a
 796                     ; 105   ADC1_PrescalerConfig(ADC1_PrescalerSelection);
 798  01bc 7b05          	ld	a,(OFST+5,sp)
 799  01be cd02ae        	call	_ADC1_PrescalerConfig
 801                     ; 110   ADC1_ExternalTriggerConfig(ADC1_ExtTrigger, ADC1_ExtTriggerState);
 803  01c1 7b07          	ld	a,(OFST+7,sp)
 804  01c3 97            	ld	xl,a
 805  01c4 7b06          	ld	a,(OFST+6,sp)
 806  01c6 95            	ld	xh,a
 807  01c7 cd04a8        	call	_ADC1_ExternalTriggerConfig
 809                     ; 115   ADC1_SchmittTriggerConfig(ADC1_SchmittTriggerChannel, ADC1_SchmittTriggerState);
 811  01ca 7b0a          	ld	a,(OFST+10,sp)
 812  01cc 97            	ld	xl,a
 813  01cd 7b09          	ld	a,(OFST+9,sp)
 814  01cf 95            	ld	xh,a
 815  01d0 cd02f3        	call	_ADC1_SchmittTriggerConfig
 817                     ; 118   ADC1->CR1 |= ADC1_CR1_ADON;
 819  01d3 72105401      	bset	21505,#0
 820                     ; 119 }
 823  01d7 85            	popw	x
 824  01d8 81            	ret
 860                     ; 126 void ADC1_Cmd(FunctionalState NewState)
 860                     ; 127 {
 861                     	switch	.text
 862  01d9               _ADC1_Cmd:
 864  01d9 88            	push	a
 865       00000000      OFST:	set	0
 868                     ; 129   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 870  01da 4d            	tnz	a
 871  01db 2704          	jreq	L47
 872  01dd a101          	cp	a,#1
 873  01df 2603          	jrne	L27
 874  01e1               L47:
 875  01e1 4f            	clr	a
 876  01e2 2010          	jra	L67
 877  01e4               L27:
 878  01e4 ae0081        	ldw	x,#129
 879  01e7 89            	pushw	x
 880  01e8 ae0000        	ldw	x,#0
 881  01eb 89            	pushw	x
 882  01ec ae0000        	ldw	x,#L542
 883  01ef cd0000        	call	_assert_failed
 885  01f2 5b04          	addw	sp,#4
 886  01f4               L67:
 887                     ; 131   if (NewState != DISABLE)
 889  01f4 0d01          	tnz	(OFST+1,sp)
 890  01f6 2706          	jreq	L562
 891                     ; 133     ADC1->CR1 |= ADC1_CR1_ADON;
 893  01f8 72105401      	bset	21505,#0
 895  01fc 2004          	jra	L762
 896  01fe               L562:
 897                     ; 137     ADC1->CR1 &= (uint8_t)(~ADC1_CR1_ADON);
 899  01fe 72115401      	bres	21505,#0
 900  0202               L762:
 901                     ; 139 }
 904  0202 84            	pop	a
 905  0203 81            	ret
 941                     ; 146 void ADC1_ScanModeCmd(FunctionalState NewState)
 941                     ; 147 {
 942                     	switch	.text
 943  0204               _ADC1_ScanModeCmd:
 945  0204 88            	push	a
 946       00000000      OFST:	set	0
 949                     ; 149   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 951  0205 4d            	tnz	a
 952  0206 2704          	jreq	L401
 953  0208 a101          	cp	a,#1
 954  020a 2603          	jrne	L201
 955  020c               L401:
 956  020c 4f            	clr	a
 957  020d 2010          	jra	L601
 958  020f               L201:
 959  020f ae0095        	ldw	x,#149
 960  0212 89            	pushw	x
 961  0213 ae0000        	ldw	x,#0
 962  0216 89            	pushw	x
 963  0217 ae0000        	ldw	x,#L542
 964  021a cd0000        	call	_assert_failed
 966  021d 5b04          	addw	sp,#4
 967  021f               L601:
 968                     ; 151   if (NewState != DISABLE)
 970  021f 0d01          	tnz	(OFST+1,sp)
 971  0221 2706          	jreq	L703
 972                     ; 153     ADC1->CR2 |= ADC1_CR2_SCAN;
 974  0223 72125402      	bset	21506,#1
 976  0227 2004          	jra	L113
 977  0229               L703:
 978                     ; 157     ADC1->CR2 &= (uint8_t)(~ADC1_CR2_SCAN);
 980  0229 72135402      	bres	21506,#1
 981  022d               L113:
 982                     ; 159 }
 985  022d 84            	pop	a
 986  022e 81            	ret
1022                     ; 166 void ADC1_DataBufferCmd(FunctionalState NewState)
1022                     ; 167 {
1023                     	switch	.text
1024  022f               _ADC1_DataBufferCmd:
1026  022f 88            	push	a
1027       00000000      OFST:	set	0
1030                     ; 169   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1032  0230 4d            	tnz	a
1033  0231 2704          	jreq	L411
1034  0233 a101          	cp	a,#1
1035  0235 2603          	jrne	L211
1036  0237               L411:
1037  0237 4f            	clr	a
1038  0238 2010          	jra	L611
1039  023a               L211:
1040  023a ae00a9        	ldw	x,#169
1041  023d 89            	pushw	x
1042  023e ae0000        	ldw	x,#0
1043  0241 89            	pushw	x
1044  0242 ae0000        	ldw	x,#L542
1045  0245 cd0000        	call	_assert_failed
1047  0248 5b04          	addw	sp,#4
1048  024a               L611:
1049                     ; 171   if (NewState != DISABLE)
1051  024a 0d01          	tnz	(OFST+1,sp)
1052  024c 2706          	jreq	L133
1053                     ; 173     ADC1->CR3 |= ADC1_CR3_DBUF;
1055  024e 721e5403      	bset	21507,#7
1057  0252 2004          	jra	L333
1058  0254               L133:
1059                     ; 177     ADC1->CR3 &= (uint8_t)(~ADC1_CR3_DBUF);
1061  0254 721f5403      	bres	21507,#7
1062  0258               L333:
1063                     ; 179 }
1066  0258 84            	pop	a
1067  0259 81            	ret
1224                     ; 190 void ADC1_ITConfig(ADC1_IT_TypeDef ADC1_IT, FunctionalState NewState)
1224                     ; 191 {
1225                     	switch	.text
1226  025a               _ADC1_ITConfig:
1228  025a 89            	pushw	x
1229       00000000      OFST:	set	0
1232                     ; 193   assert_param(IS_ADC1_IT_OK(ADC1_IT));
1234  025b a30020        	cpw	x,#32
1235  025e 2705          	jreq	L421
1236  0260 a30010        	cpw	x,#16
1237  0263 2603          	jrne	L221
1238  0265               L421:
1239  0265 4f            	clr	a
1240  0266 2010          	jra	L621
1241  0268               L221:
1242  0268 ae00c1        	ldw	x,#193
1243  026b 89            	pushw	x
1244  026c ae0000        	ldw	x,#0
1245  026f 89            	pushw	x
1246  0270 ae0000        	ldw	x,#L542
1247  0273 cd0000        	call	_assert_failed
1249  0276 5b04          	addw	sp,#4
1250  0278               L621:
1251                     ; 194   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1253  0278 0d05          	tnz	(OFST+5,sp)
1254  027a 2706          	jreq	L231
1255  027c 7b05          	ld	a,(OFST+5,sp)
1256  027e a101          	cp	a,#1
1257  0280 2603          	jrne	L031
1258  0282               L231:
1259  0282 4f            	clr	a
1260  0283 2010          	jra	L431
1261  0285               L031:
1262  0285 ae00c2        	ldw	x,#194
1263  0288 89            	pushw	x
1264  0289 ae0000        	ldw	x,#0
1265  028c 89            	pushw	x
1266  028d ae0000        	ldw	x,#L542
1267  0290 cd0000        	call	_assert_failed
1269  0293 5b04          	addw	sp,#4
1270  0295               L431:
1271                     ; 196   if (NewState != DISABLE)
1273  0295 0d05          	tnz	(OFST+5,sp)
1274  0297 270a          	jreq	L124
1275                     ; 199     ADC1->CSR |= (uint8_t)ADC1_IT;
1277  0299 c65400        	ld	a,21504
1278  029c 1a02          	or	a,(OFST+2,sp)
1279  029e c75400        	ld	21504,a
1281  02a1 2009          	jra	L324
1282  02a3               L124:
1283                     ; 204     ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ADC1_IT);
1285  02a3 7b02          	ld	a,(OFST+2,sp)
1286  02a5 43            	cpl	a
1287  02a6 c45400        	and	a,21504
1288  02a9 c75400        	ld	21504,a
1289  02ac               L324:
1290                     ; 206 }
1293  02ac 85            	popw	x
1294  02ad 81            	ret
1331                     ; 214 void ADC1_PrescalerConfig(ADC1_PresSel_TypeDef ADC1_Prescaler)
1331                     ; 215 {
1332                     	switch	.text
1333  02ae               _ADC1_PrescalerConfig:
1335  02ae 88            	push	a
1336       00000000      OFST:	set	0
1339                     ; 217   assert_param(IS_ADC1_PRESSEL_OK(ADC1_Prescaler));
1341  02af 4d            	tnz	a
1342  02b0 271c          	jreq	L241
1343  02b2 a110          	cp	a,#16
1344  02b4 2718          	jreq	L241
1345  02b6 a120          	cp	a,#32
1346  02b8 2714          	jreq	L241
1347  02ba a130          	cp	a,#48
1348  02bc 2710          	jreq	L241
1349  02be a140          	cp	a,#64
1350  02c0 270c          	jreq	L241
1351  02c2 a150          	cp	a,#80
1352  02c4 2708          	jreq	L241
1353  02c6 a160          	cp	a,#96
1354  02c8 2704          	jreq	L241
1355  02ca a170          	cp	a,#112
1356  02cc 2603          	jrne	L041
1357  02ce               L241:
1358  02ce 4f            	clr	a
1359  02cf 2010          	jra	L441
1360  02d1               L041:
1361  02d1 ae00d9        	ldw	x,#217
1362  02d4 89            	pushw	x
1363  02d5 ae0000        	ldw	x,#0
1364  02d8 89            	pushw	x
1365  02d9 ae0000        	ldw	x,#L542
1366  02dc cd0000        	call	_assert_failed
1368  02df 5b04          	addw	sp,#4
1369  02e1               L441:
1370                     ; 220   ADC1->CR1 &= (uint8_t)(~ADC1_CR1_SPSEL);
1372  02e1 c65401        	ld	a,21505
1373  02e4 a48f          	and	a,#143
1374  02e6 c75401        	ld	21505,a
1375                     ; 222   ADC1->CR1 |= (uint8_t)(ADC1_Prescaler);
1377  02e9 c65401        	ld	a,21505
1378  02ec 1a01          	or	a,(OFST+1,sp)
1379  02ee c75401        	ld	21505,a
1380                     ; 223 }
1383  02f1 84            	pop	a
1384  02f2 81            	ret
1432                     ; 233 void ADC1_SchmittTriggerConfig(ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState NewState)
1432                     ; 234 {
1433                     	switch	.text
1434  02f3               _ADC1_SchmittTriggerConfig:
1436  02f3 89            	pushw	x
1437       00000000      OFST:	set	0
1440                     ; 236   assert_param(IS_ADC1_SCHMITTTRIG_OK(ADC1_SchmittTriggerChannel));
1442  02f4 9e            	ld	a,xh
1443  02f5 4d            	tnz	a
1444  02f6 2737          	jreq	L251
1445  02f8 9e            	ld	a,xh
1446  02f9 a101          	cp	a,#1
1447  02fb 2732          	jreq	L251
1448  02fd 9e            	ld	a,xh
1449  02fe a102          	cp	a,#2
1450  0300 272d          	jreq	L251
1451  0302 9e            	ld	a,xh
1452  0303 a103          	cp	a,#3
1453  0305 2728          	jreq	L251
1454  0307 9e            	ld	a,xh
1455  0308 a104          	cp	a,#4
1456  030a 2723          	jreq	L251
1457  030c 9e            	ld	a,xh
1458  030d a105          	cp	a,#5
1459  030f 271e          	jreq	L251
1460  0311 9e            	ld	a,xh
1461  0312 a106          	cp	a,#6
1462  0314 2719          	jreq	L251
1463  0316 9e            	ld	a,xh
1464  0317 a107          	cp	a,#7
1465  0319 2714          	jreq	L251
1466  031b 9e            	ld	a,xh
1467  031c a108          	cp	a,#8
1468  031e 270f          	jreq	L251
1469  0320 9e            	ld	a,xh
1470  0321 a10c          	cp	a,#12
1471  0323 270a          	jreq	L251
1472  0325 9e            	ld	a,xh
1473  0326 a1ff          	cp	a,#255
1474  0328 2705          	jreq	L251
1475  032a 9e            	ld	a,xh
1476  032b a109          	cp	a,#9
1477  032d 2603          	jrne	L051
1478  032f               L251:
1479  032f 4f            	clr	a
1480  0330 2010          	jra	L451
1481  0332               L051:
1482  0332 ae00ec        	ldw	x,#236
1483  0335 89            	pushw	x
1484  0336 ae0000        	ldw	x,#0
1485  0339 89            	pushw	x
1486  033a ae0000        	ldw	x,#L542
1487  033d cd0000        	call	_assert_failed
1489  0340 5b04          	addw	sp,#4
1490  0342               L451:
1491                     ; 237   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1493  0342 0d02          	tnz	(OFST+2,sp)
1494  0344 2706          	jreq	L061
1495  0346 7b02          	ld	a,(OFST+2,sp)
1496  0348 a101          	cp	a,#1
1497  034a 2603          	jrne	L651
1498  034c               L061:
1499  034c 4f            	clr	a
1500  034d 2010          	jra	L261
1501  034f               L651:
1502  034f ae00ed        	ldw	x,#237
1503  0352 89            	pushw	x
1504  0353 ae0000        	ldw	x,#0
1505  0356 89            	pushw	x
1506  0357 ae0000        	ldw	x,#L542
1507  035a cd0000        	call	_assert_failed
1509  035d 5b04          	addw	sp,#4
1510  035f               L261:
1511                     ; 239   if (ADC1_SchmittTriggerChannel == ADC1_SCHMITTTRIG_ALL)
1513  035f 7b01          	ld	a,(OFST+1,sp)
1514  0361 a1ff          	cp	a,#255
1515  0363 2620          	jrne	L564
1516                     ; 241     if (NewState != DISABLE)
1518  0365 0d02          	tnz	(OFST+2,sp)
1519  0367 270a          	jreq	L764
1520                     ; 243       ADC1->TDRL &= (uint8_t)0x0;
1522  0369 725f5407      	clr	21511
1523                     ; 244       ADC1->TDRH &= (uint8_t)0x0;
1525  036d 725f5406      	clr	21510
1527  0371 2078          	jra	L374
1528  0373               L764:
1529                     ; 248       ADC1->TDRL |= (uint8_t)0xFF;
1531  0373 c65407        	ld	a,21511
1532  0376 aaff          	or	a,#255
1533  0378 c75407        	ld	21511,a
1534                     ; 249       ADC1->TDRH |= (uint8_t)0xFF;
1536  037b c65406        	ld	a,21510
1537  037e aaff          	or	a,#255
1538  0380 c75406        	ld	21510,a
1539  0383 2066          	jra	L374
1540  0385               L564:
1541                     ; 252   else if (ADC1_SchmittTriggerChannel < ADC1_SCHMITTTRIG_CHANNEL8)
1543  0385 7b01          	ld	a,(OFST+1,sp)
1544  0387 a108          	cp	a,#8
1545  0389 242f          	jruge	L574
1546                     ; 254     if (NewState != DISABLE)
1548  038b 0d02          	tnz	(OFST+2,sp)
1549  038d 2716          	jreq	L774
1550                     ; 256       ADC1->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel));
1552  038f 7b01          	ld	a,(OFST+1,sp)
1553  0391 5f            	clrw	x
1554  0392 97            	ld	xl,a
1555  0393 a601          	ld	a,#1
1556  0395 5d            	tnzw	x
1557  0396 2704          	jreq	L461
1558  0398               L661:
1559  0398 48            	sll	a
1560  0399 5a            	decw	x
1561  039a 26fc          	jrne	L661
1562  039c               L461:
1563  039c 43            	cpl	a
1564  039d c45407        	and	a,21511
1565  03a0 c75407        	ld	21511,a
1567  03a3 2046          	jra	L374
1568  03a5               L774:
1569                     ; 260       ADC1->TDRL |= (uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel);
1571  03a5 7b01          	ld	a,(OFST+1,sp)
1572  03a7 5f            	clrw	x
1573  03a8 97            	ld	xl,a
1574  03a9 a601          	ld	a,#1
1575  03ab 5d            	tnzw	x
1576  03ac 2704          	jreq	L071
1577  03ae               L271:
1578  03ae 48            	sll	a
1579  03af 5a            	decw	x
1580  03b0 26fc          	jrne	L271
1581  03b2               L071:
1582  03b2 ca5407        	or	a,21511
1583  03b5 c75407        	ld	21511,a
1584  03b8 2031          	jra	L374
1585  03ba               L574:
1586                     ; 265     if (NewState != DISABLE)
1588  03ba 0d02          	tnz	(OFST+2,sp)
1589  03bc 2718          	jreq	L505
1590                     ; 267       ADC1->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8)));
1592  03be 7b01          	ld	a,(OFST+1,sp)
1593  03c0 a008          	sub	a,#8
1594  03c2 5f            	clrw	x
1595  03c3 97            	ld	xl,a
1596  03c4 a601          	ld	a,#1
1597  03c6 5d            	tnzw	x
1598  03c7 2704          	jreq	L471
1599  03c9               L671:
1600  03c9 48            	sll	a
1601  03ca 5a            	decw	x
1602  03cb 26fc          	jrne	L671
1603  03cd               L471:
1604  03cd 43            	cpl	a
1605  03ce c45406        	and	a,21510
1606  03d1 c75406        	ld	21510,a
1608  03d4 2015          	jra	L374
1609  03d6               L505:
1610                     ; 271       ADC1->TDRH |= (uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8));
1612  03d6 7b01          	ld	a,(OFST+1,sp)
1613  03d8 a008          	sub	a,#8
1614  03da 5f            	clrw	x
1615  03db 97            	ld	xl,a
1616  03dc a601          	ld	a,#1
1617  03de 5d            	tnzw	x
1618  03df 2704          	jreq	L002
1619  03e1               L202:
1620  03e1 48            	sll	a
1621  03e2 5a            	decw	x
1622  03e3 26fc          	jrne	L202
1623  03e5               L002:
1624  03e5 ca5406        	or	a,21510
1625  03e8 c75406        	ld	21510,a
1626  03eb               L374:
1627                     ; 274 }
1630  03eb 85            	popw	x
1631  03ec 81            	ret
1689                     ; 286 void ADC1_ConversionConfig(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_Align_TypeDef ADC1_Align)
1689                     ; 287 {
1690                     	switch	.text
1691  03ed               _ADC1_ConversionConfig:
1693  03ed 89            	pushw	x
1694       00000000      OFST:	set	0
1697                     ; 289   assert_param(IS_ADC1_CONVERSIONMODE_OK(ADC1_ConversionMode));
1699  03ee 9e            	ld	a,xh
1700  03ef 4d            	tnz	a
1701  03f0 2705          	jreq	L012
1702  03f2 9e            	ld	a,xh
1703  03f3 a101          	cp	a,#1
1704  03f5 2603          	jrne	L602
1705  03f7               L012:
1706  03f7 4f            	clr	a
1707  03f8 2010          	jra	L212
1708  03fa               L602:
1709  03fa ae0121        	ldw	x,#289
1710  03fd 89            	pushw	x
1711  03fe ae0000        	ldw	x,#0
1712  0401 89            	pushw	x
1713  0402 ae0000        	ldw	x,#L542
1714  0405 cd0000        	call	_assert_failed
1716  0408 5b04          	addw	sp,#4
1717  040a               L212:
1718                     ; 290   assert_param(IS_ADC1_CHANNEL_OK(ADC1_Channel));
1720  040a 0d02          	tnz	(OFST+2,sp)
1721  040c 273c          	jreq	L612
1722  040e 7b02          	ld	a,(OFST+2,sp)
1723  0410 a101          	cp	a,#1
1724  0412 2736          	jreq	L612
1725  0414 7b02          	ld	a,(OFST+2,sp)
1726  0416 a102          	cp	a,#2
1727  0418 2730          	jreq	L612
1728  041a 7b02          	ld	a,(OFST+2,sp)
1729  041c a103          	cp	a,#3
1730  041e 272a          	jreq	L612
1731  0420 7b02          	ld	a,(OFST+2,sp)
1732  0422 a104          	cp	a,#4
1733  0424 2724          	jreq	L612
1734  0426 7b02          	ld	a,(OFST+2,sp)
1735  0428 a105          	cp	a,#5
1736  042a 271e          	jreq	L612
1737  042c 7b02          	ld	a,(OFST+2,sp)
1738  042e a106          	cp	a,#6
1739  0430 2718          	jreq	L612
1740  0432 7b02          	ld	a,(OFST+2,sp)
1741  0434 a107          	cp	a,#7
1742  0436 2712          	jreq	L612
1743  0438 7b02          	ld	a,(OFST+2,sp)
1744  043a a108          	cp	a,#8
1745  043c 270c          	jreq	L612
1746  043e 7b02          	ld	a,(OFST+2,sp)
1747  0440 a10c          	cp	a,#12
1748  0442 2706          	jreq	L612
1749  0444 7b02          	ld	a,(OFST+2,sp)
1750  0446 a109          	cp	a,#9
1751  0448 2603          	jrne	L412
1752  044a               L612:
1753  044a 4f            	clr	a
1754  044b 2010          	jra	L022
1755  044d               L412:
1756  044d ae0122        	ldw	x,#290
1757  0450 89            	pushw	x
1758  0451 ae0000        	ldw	x,#0
1759  0454 89            	pushw	x
1760  0455 ae0000        	ldw	x,#L542
1761  0458 cd0000        	call	_assert_failed
1763  045b 5b04          	addw	sp,#4
1764  045d               L022:
1765                     ; 291   assert_param(IS_ADC1_ALIGN_OK(ADC1_Align));
1767  045d 0d05          	tnz	(OFST+5,sp)
1768  045f 2706          	jreq	L422
1769  0461 7b05          	ld	a,(OFST+5,sp)
1770  0463 a108          	cp	a,#8
1771  0465 2603          	jrne	L222
1772  0467               L422:
1773  0467 4f            	clr	a
1774  0468 2010          	jra	L622
1775  046a               L222:
1776  046a ae0123        	ldw	x,#291
1777  046d 89            	pushw	x
1778  046e ae0000        	ldw	x,#0
1779  0471 89            	pushw	x
1780  0472 ae0000        	ldw	x,#L542
1781  0475 cd0000        	call	_assert_failed
1783  0478 5b04          	addw	sp,#4
1784  047a               L622:
1785                     ; 294   ADC1->CR2 &= (uint8_t)(~ADC1_CR2_ALIGN);
1787  047a 72175402      	bres	21506,#3
1788                     ; 296   ADC1->CR2 |= (uint8_t)(ADC1_Align);
1790  047e c65402        	ld	a,21506
1791  0481 1a05          	or	a,(OFST+5,sp)
1792  0483 c75402        	ld	21506,a
1793                     ; 298   if (ADC1_ConversionMode == ADC1_CONVERSIONMODE_CONTINUOUS)
1795  0486 7b01          	ld	a,(OFST+1,sp)
1796  0488 a101          	cp	a,#1
1797  048a 2606          	jrne	L735
1798                     ; 301     ADC1->CR1 |= ADC1_CR1_CONT;
1800  048c 72125401      	bset	21505,#1
1802  0490 2004          	jra	L145
1803  0492               L735:
1804                     ; 306     ADC1->CR1 &= (uint8_t)(~ADC1_CR1_CONT);
1806  0492 72135401      	bres	21505,#1
1807  0496               L145:
1808                     ; 310   ADC1->CSR &= (uint8_t)(~ADC1_CSR_CH);
1810  0496 c65400        	ld	a,21504
1811  0499 a4f0          	and	a,#240
1812  049b c75400        	ld	21504,a
1813                     ; 312   ADC1->CSR |= (uint8_t)(ADC1_Channel);
1815  049e c65400        	ld	a,21504
1816  04a1 1a02          	or	a,(OFST+2,sp)
1817  04a3 c75400        	ld	21504,a
1818                     ; 313 }
1821  04a6 85            	popw	x
1822  04a7 81            	ret
1869                     ; 325 void ADC1_ExternalTriggerConfig(ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState NewState)
1869                     ; 326 {
1870                     	switch	.text
1871  04a8               _ADC1_ExternalTriggerConfig:
1873  04a8 89            	pushw	x
1874       00000000      OFST:	set	0
1877                     ; 328   assert_param(IS_ADC1_EXTTRIG_OK(ADC1_ExtTrigger));
1879  04a9 9e            	ld	a,xh
1880  04aa 4d            	tnz	a
1881  04ab 2705          	jreq	L432
1882  04ad 9e            	ld	a,xh
1883  04ae a110          	cp	a,#16
1884  04b0 2603          	jrne	L232
1885  04b2               L432:
1886  04b2 4f            	clr	a
1887  04b3 2010          	jra	L632
1888  04b5               L232:
1889  04b5 ae0148        	ldw	x,#328
1890  04b8 89            	pushw	x
1891  04b9 ae0000        	ldw	x,#0
1892  04bc 89            	pushw	x
1893  04bd ae0000        	ldw	x,#L542
1894  04c0 cd0000        	call	_assert_failed
1896  04c3 5b04          	addw	sp,#4
1897  04c5               L632:
1898                     ; 329   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1900  04c5 0d02          	tnz	(OFST+2,sp)
1901  04c7 2706          	jreq	L242
1902  04c9 7b02          	ld	a,(OFST+2,sp)
1903  04cb a101          	cp	a,#1
1904  04cd 2603          	jrne	L042
1905  04cf               L242:
1906  04cf 4f            	clr	a
1907  04d0 2010          	jra	L442
1908  04d2               L042:
1909  04d2 ae0149        	ldw	x,#329
1910  04d5 89            	pushw	x
1911  04d6 ae0000        	ldw	x,#0
1912  04d9 89            	pushw	x
1913  04da ae0000        	ldw	x,#L542
1914  04dd cd0000        	call	_assert_failed
1916  04e0 5b04          	addw	sp,#4
1917  04e2               L442:
1918                     ; 332   ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTSEL);
1920  04e2 c65402        	ld	a,21506
1921  04e5 a4cf          	and	a,#207
1922  04e7 c75402        	ld	21506,a
1923                     ; 334   if (NewState != DISABLE)
1925  04ea 0d02          	tnz	(OFST+2,sp)
1926  04ec 2706          	jreq	L565
1927                     ; 337     ADC1->CR2 |= (uint8_t)(ADC1_CR2_EXTTRIG);
1929  04ee 721c5402      	bset	21506,#6
1931  04f2 2004          	jra	L765
1932  04f4               L565:
1933                     ; 342     ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTTRIG);
1935  04f4 721d5402      	bres	21506,#6
1936  04f8               L765:
1937                     ; 346   ADC1->CR2 |= (uint8_t)(ADC1_ExtTrigger);
1939  04f8 c65402        	ld	a,21506
1940  04fb 1a01          	or	a,(OFST+1,sp)
1941  04fd c75402        	ld	21506,a
1942                     ; 347 }
1945  0500 85            	popw	x
1946  0501 81            	ret
1970                     ; 358 void ADC1_StartConversion(void)
1970                     ; 359 {
1971                     	switch	.text
1972  0502               _ADC1_StartConversion:
1976                     ; 360   ADC1->CR1 |= ADC1_CR1_ADON;
1978  0502 72105401      	bset	21505,#0
1979                     ; 361 }
1982  0506 81            	ret
2026                     ; 370 uint16_t ADC1_GetConversionValue(void)
2026                     ; 371 {
2027                     	switch	.text
2028  0507               _ADC1_GetConversionValue:
2030  0507 5205          	subw	sp,#5
2031       00000005      OFST:	set	5
2034                     ; 372   uint16_t temph = 0;
2036                     ; 373   uint8_t templ = 0;
2038                     ; 375   if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
2040  0509 c65402        	ld	a,21506
2041  050c a508          	bcp	a,#8
2042  050e 2715          	jreq	L326
2043                     ; 378     templ = ADC1->DRL;
2045  0510 c65405        	ld	a,21509
2046  0513 6b03          	ld	(OFST-2,sp),a
2048                     ; 380     temph = ADC1->DRH;
2050  0515 c65404        	ld	a,21508
2051  0518 5f            	clrw	x
2052  0519 97            	ld	xl,a
2053  051a 1f04          	ldw	(OFST-1,sp),x
2055                     ; 382     temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
2057  051c 1e04          	ldw	x,(OFST-1,sp)
2058  051e 7b03          	ld	a,(OFST-2,sp)
2059  0520 02            	rlwa	x,a
2060  0521 1f04          	ldw	(OFST-1,sp),x
2063  0523 2021          	jra	L526
2064  0525               L326:
2065                     ; 387     temph = ADC1->DRH;
2067  0525 c65404        	ld	a,21508
2068  0528 5f            	clrw	x
2069  0529 97            	ld	xl,a
2070  052a 1f04          	ldw	(OFST-1,sp),x
2072                     ; 389     templ = ADC1->DRL;
2074  052c c65405        	ld	a,21509
2075  052f 6b03          	ld	(OFST-2,sp),a
2077                     ; 391     temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)((uint16_t)temph << 8));
2079  0531 1e04          	ldw	x,(OFST-1,sp)
2080  0533 4f            	clr	a
2081  0534 02            	rlwa	x,a
2082  0535 1f01          	ldw	(OFST-4,sp),x
2084  0537 7b03          	ld	a,(OFST-2,sp)
2085  0539 97            	ld	xl,a
2086  053a a640          	ld	a,#64
2087  053c 42            	mul	x,a
2088  053d 01            	rrwa	x,a
2089  053e 1a02          	or	a,(OFST-3,sp)
2090  0540 01            	rrwa	x,a
2091  0541 1a01          	or	a,(OFST-4,sp)
2092  0543 01            	rrwa	x,a
2093  0544 1f04          	ldw	(OFST-1,sp),x
2095  0546               L526:
2096                     ; 394   return ((uint16_t)temph);
2098  0546 1e04          	ldw	x,(OFST-1,sp)
2101  0548 5b05          	addw	sp,#5
2102  054a 81            	ret
2149                     ; 405 void ADC1_AWDChannelConfig(ADC1_Channel_TypeDef Channel, FunctionalState NewState)
2149                     ; 406 {
2150                     	switch	.text
2151  054b               _ADC1_AWDChannelConfig:
2153  054b 89            	pushw	x
2154       00000000      OFST:	set	0
2157                     ; 408   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2159  054c 9f            	ld	a,xl
2160  054d 4d            	tnz	a
2161  054e 2705          	jreq	L652
2162  0550 9f            	ld	a,xl
2163  0551 a101          	cp	a,#1
2164  0553 2603          	jrne	L452
2165  0555               L652:
2166  0555 4f            	clr	a
2167  0556 2010          	jra	L062
2168  0558               L452:
2169  0558 ae0198        	ldw	x,#408
2170  055b 89            	pushw	x
2171  055c ae0000        	ldw	x,#0
2172  055f 89            	pushw	x
2173  0560 ae0000        	ldw	x,#L542
2174  0563 cd0000        	call	_assert_failed
2176  0566 5b04          	addw	sp,#4
2177  0568               L062:
2178                     ; 409   assert_param(IS_ADC1_CHANNEL_OK(Channel));
2180  0568 0d01          	tnz	(OFST+1,sp)
2181  056a 273c          	jreq	L462
2182  056c 7b01          	ld	a,(OFST+1,sp)
2183  056e a101          	cp	a,#1
2184  0570 2736          	jreq	L462
2185  0572 7b01          	ld	a,(OFST+1,sp)
2186  0574 a102          	cp	a,#2
2187  0576 2730          	jreq	L462
2188  0578 7b01          	ld	a,(OFST+1,sp)
2189  057a a103          	cp	a,#3
2190  057c 272a          	jreq	L462
2191  057e 7b01          	ld	a,(OFST+1,sp)
2192  0580 a104          	cp	a,#4
2193  0582 2724          	jreq	L462
2194  0584 7b01          	ld	a,(OFST+1,sp)
2195  0586 a105          	cp	a,#5
2196  0588 271e          	jreq	L462
2197  058a 7b01          	ld	a,(OFST+1,sp)
2198  058c a106          	cp	a,#6
2199  058e 2718          	jreq	L462
2200  0590 7b01          	ld	a,(OFST+1,sp)
2201  0592 a107          	cp	a,#7
2202  0594 2712          	jreq	L462
2203  0596 7b01          	ld	a,(OFST+1,sp)
2204  0598 a108          	cp	a,#8
2205  059a 270c          	jreq	L462
2206  059c 7b01          	ld	a,(OFST+1,sp)
2207  059e a10c          	cp	a,#12
2208  05a0 2706          	jreq	L462
2209  05a2 7b01          	ld	a,(OFST+1,sp)
2210  05a4 a109          	cp	a,#9
2211  05a6 2603          	jrne	L262
2212  05a8               L462:
2213  05a8 4f            	clr	a
2214  05a9 2010          	jra	L662
2215  05ab               L262:
2216  05ab ae0199        	ldw	x,#409
2217  05ae 89            	pushw	x
2218  05af ae0000        	ldw	x,#0
2219  05b2 89            	pushw	x
2220  05b3 ae0000        	ldw	x,#L542
2221  05b6 cd0000        	call	_assert_failed
2223  05b9 5b04          	addw	sp,#4
2224  05bb               L662:
2225                     ; 411   if (Channel < (uint8_t)8)
2227  05bb 7b01          	ld	a,(OFST+1,sp)
2228  05bd a108          	cp	a,#8
2229  05bf 242f          	jruge	L156
2230                     ; 413     if (NewState != DISABLE)
2232  05c1 0d02          	tnz	(OFST+2,sp)
2233  05c3 2715          	jreq	L356
2234                     ; 415       ADC1->AWCRL |= (uint8_t)((uint8_t)1 << Channel);
2236  05c5 7b01          	ld	a,(OFST+1,sp)
2237  05c7 5f            	clrw	x
2238  05c8 97            	ld	xl,a
2239  05c9 a601          	ld	a,#1
2240  05cb 5d            	tnzw	x
2241  05cc 2704          	jreq	L072
2242  05ce               L272:
2243  05ce 48            	sll	a
2244  05cf 5a            	decw	x
2245  05d0 26fc          	jrne	L272
2246  05d2               L072:
2247  05d2 ca540f        	or	a,21519
2248  05d5 c7540f        	ld	21519,a
2250  05d8 2047          	jra	L756
2251  05da               L356:
2252                     ; 419       ADC1->AWCRL &= (uint8_t)~(uint8_t)((uint8_t)1 << Channel);
2254  05da 7b01          	ld	a,(OFST+1,sp)
2255  05dc 5f            	clrw	x
2256  05dd 97            	ld	xl,a
2257  05de a601          	ld	a,#1
2258  05e0 5d            	tnzw	x
2259  05e1 2704          	jreq	L472
2260  05e3               L672:
2261  05e3 48            	sll	a
2262  05e4 5a            	decw	x
2263  05e5 26fc          	jrne	L672
2264  05e7               L472:
2265  05e7 43            	cpl	a
2266  05e8 c4540f        	and	a,21519
2267  05eb c7540f        	ld	21519,a
2268  05ee 2031          	jra	L756
2269  05f0               L156:
2270                     ; 424     if (NewState != DISABLE)
2272  05f0 0d02          	tnz	(OFST+2,sp)
2273  05f2 2717          	jreq	L166
2274                     ; 426       ADC1->AWCRH |= (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8));
2276  05f4 7b01          	ld	a,(OFST+1,sp)
2277  05f6 a008          	sub	a,#8
2278  05f8 5f            	clrw	x
2279  05f9 97            	ld	xl,a
2280  05fa a601          	ld	a,#1
2281  05fc 5d            	tnzw	x
2282  05fd 2704          	jreq	L003
2283  05ff               L203:
2284  05ff 48            	sll	a
2285  0600 5a            	decw	x
2286  0601 26fc          	jrne	L203
2287  0603               L003:
2288  0603 ca540e        	or	a,21518
2289  0606 c7540e        	ld	21518,a
2291  0609 2016          	jra	L756
2292  060b               L166:
2293                     ; 430       ADC1->AWCRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (uint8_t)(Channel - (uint8_t)8));
2295  060b 7b01          	ld	a,(OFST+1,sp)
2296  060d a008          	sub	a,#8
2297  060f 5f            	clrw	x
2298  0610 97            	ld	xl,a
2299  0611 a601          	ld	a,#1
2300  0613 5d            	tnzw	x
2301  0614 2704          	jreq	L403
2302  0616               L603:
2303  0616 48            	sll	a
2304  0617 5a            	decw	x
2305  0618 26fc          	jrne	L603
2306  061a               L403:
2307  061a 43            	cpl	a
2308  061b c4540e        	and	a,21518
2309  061e c7540e        	ld	21518,a
2310  0621               L756:
2311                     ; 433 }
2314  0621 85            	popw	x
2315  0622 81            	ret
2350                     ; 441 void ADC1_SetHighThreshold(uint16_t Threshold)
2350                     ; 442 {
2351                     	switch	.text
2352  0623               _ADC1_SetHighThreshold:
2354  0623 89            	pushw	x
2355       00000000      OFST:	set	0
2358                     ; 443   ADC1->HTRH = (uint8_t)(Threshold >> (uint8_t)2);
2360  0624 54            	srlw	x
2361  0625 54            	srlw	x
2362  0626 9f            	ld	a,xl
2363  0627 c75408        	ld	21512,a
2364                     ; 444   ADC1->HTRL = (uint8_t)Threshold;
2366  062a 7b02          	ld	a,(OFST+2,sp)
2367  062c c75409        	ld	21513,a
2368                     ; 445 }
2371  062f 85            	popw	x
2372  0630 81            	ret
2407                     ; 453 void ADC1_SetLowThreshold(uint16_t Threshold)
2407                     ; 454 {
2408                     	switch	.text
2409  0631               _ADC1_SetLowThreshold:
2413                     ; 455   ADC1->LTRL = (uint8_t)Threshold;
2415  0631 9f            	ld	a,xl
2416  0632 c7540b        	ld	21515,a
2417                     ; 456   ADC1->LTRH = (uint8_t)(Threshold >> (uint8_t)2);
2419  0635 54            	srlw	x
2420  0636 54            	srlw	x
2421  0637 9f            	ld	a,xl
2422  0638 c7540a        	ld	21514,a
2423                     ; 457 }
2426  063b 81            	ret
2480                     ; 466 uint16_t ADC1_GetBufferValue(uint8_t Buffer)
2480                     ; 467 {
2481                     	switch	.text
2482  063c               _ADC1_GetBufferValue:
2484  063c 88            	push	a
2485  063d 5205          	subw	sp,#5
2486       00000005      OFST:	set	5
2489                     ; 468   uint16_t temph = 0;
2491                     ; 469   uint8_t templ = 0;
2493                     ; 472   assert_param(IS_ADC1_BUFFER_OK(Buffer));
2495  063f a10a          	cp	a,#10
2496  0641 2403          	jruge	L613
2497  0643 4f            	clr	a
2498  0644 2010          	jra	L023
2499  0646               L613:
2500  0646 ae01d8        	ldw	x,#472
2501  0649 89            	pushw	x
2502  064a ae0000        	ldw	x,#0
2503  064d 89            	pushw	x
2504  064e ae0000        	ldw	x,#L542
2505  0651 cd0000        	call	_assert_failed
2507  0654 5b04          	addw	sp,#4
2508  0656               L023:
2509                     ; 474   if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
2511  0656 c65402        	ld	a,21506
2512  0659 a508          	bcp	a,#8
2513  065b 271f          	jreq	L747
2514                     ; 477     templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
2516  065d 7b06          	ld	a,(OFST+1,sp)
2517  065f 48            	sll	a
2518  0660 5f            	clrw	x
2519  0661 97            	ld	xl,a
2520  0662 d653e1        	ld	a,(21473,x)
2521  0665 6b03          	ld	(OFST-2,sp),a
2523                     ; 479     temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
2525  0667 7b06          	ld	a,(OFST+1,sp)
2526  0669 48            	sll	a
2527  066a 5f            	clrw	x
2528  066b 97            	ld	xl,a
2529  066c d653e0        	ld	a,(21472,x)
2530  066f 5f            	clrw	x
2531  0670 97            	ld	xl,a
2532  0671 1f04          	ldw	(OFST-1,sp),x
2534                     ; 481     temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
2536  0673 1e04          	ldw	x,(OFST-1,sp)
2537  0675 7b03          	ld	a,(OFST-2,sp)
2538  0677 02            	rlwa	x,a
2539  0678 1f04          	ldw	(OFST-1,sp),x
2542  067a 202b          	jra	L157
2543  067c               L747:
2544                     ; 486     temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
2546  067c 7b06          	ld	a,(OFST+1,sp)
2547  067e 48            	sll	a
2548  067f 5f            	clrw	x
2549  0680 97            	ld	xl,a
2550  0681 d653e0        	ld	a,(21472,x)
2551  0684 5f            	clrw	x
2552  0685 97            	ld	xl,a
2553  0686 1f04          	ldw	(OFST-1,sp),x
2555                     ; 488     templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
2557  0688 7b06          	ld	a,(OFST+1,sp)
2558  068a 48            	sll	a
2559  068b 5f            	clrw	x
2560  068c 97            	ld	xl,a
2561  068d d653e1        	ld	a,(21473,x)
2562  0690 6b03          	ld	(OFST-2,sp),a
2564                     ; 490     temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)(temph << 8));
2566  0692 1e04          	ldw	x,(OFST-1,sp)
2567  0694 4f            	clr	a
2568  0695 02            	rlwa	x,a
2569  0696 1f01          	ldw	(OFST-4,sp),x
2571  0698 7b03          	ld	a,(OFST-2,sp)
2572  069a 97            	ld	xl,a
2573  069b a640          	ld	a,#64
2574  069d 42            	mul	x,a
2575  069e 01            	rrwa	x,a
2576  069f 1a02          	or	a,(OFST-3,sp)
2577  06a1 01            	rrwa	x,a
2578  06a2 1a01          	or	a,(OFST-4,sp)
2579  06a4 01            	rrwa	x,a
2580  06a5 1f04          	ldw	(OFST-1,sp),x
2582  06a7               L157:
2583                     ; 493   return ((uint16_t)temph);
2585  06a7 1e04          	ldw	x,(OFST-1,sp)
2588  06a9 5b06          	addw	sp,#6
2589  06ab 81            	ret
2656                     ; 502 FlagStatus ADC1_GetAWDChannelStatus(ADC1_Channel_TypeDef Channel)
2656                     ; 503 {
2657                     	switch	.text
2658  06ac               _ADC1_GetAWDChannelStatus:
2660  06ac 88            	push	a
2661  06ad 88            	push	a
2662       00000001      OFST:	set	1
2665                     ; 504   uint8_t status = 0;
2667                     ; 507   assert_param(IS_ADC1_CHANNEL_OK(Channel));
2669  06ae 4d            	tnz	a
2670  06af 2728          	jreq	L623
2671  06b1 a101          	cp	a,#1
2672  06b3 2724          	jreq	L623
2673  06b5 a102          	cp	a,#2
2674  06b7 2720          	jreq	L623
2675  06b9 a103          	cp	a,#3
2676  06bb 271c          	jreq	L623
2677  06bd a104          	cp	a,#4
2678  06bf 2718          	jreq	L623
2679  06c1 a105          	cp	a,#5
2680  06c3 2714          	jreq	L623
2681  06c5 a106          	cp	a,#6
2682  06c7 2710          	jreq	L623
2683  06c9 a107          	cp	a,#7
2684  06cb 270c          	jreq	L623
2685  06cd a108          	cp	a,#8
2686  06cf 2708          	jreq	L623
2687  06d1 a10c          	cp	a,#12
2688  06d3 2704          	jreq	L623
2689  06d5 a109          	cp	a,#9
2690  06d7 2603          	jrne	L423
2691  06d9               L623:
2692  06d9 4f            	clr	a
2693  06da 2010          	jra	L033
2694  06dc               L423:
2695  06dc ae01fb        	ldw	x,#507
2696  06df 89            	pushw	x
2697  06e0 ae0000        	ldw	x,#0
2698  06e3 89            	pushw	x
2699  06e4 ae0000        	ldw	x,#L542
2700  06e7 cd0000        	call	_assert_failed
2702  06ea 5b04          	addw	sp,#4
2703  06ec               L033:
2704                     ; 509   if (Channel < (uint8_t)8)
2706  06ec 7b02          	ld	a,(OFST+1,sp)
2707  06ee a108          	cp	a,#8
2708  06f0 2414          	jruge	L5001
2709                     ; 511     status = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << Channel));
2711  06f2 7b02          	ld	a,(OFST+1,sp)
2712  06f4 5f            	clrw	x
2713  06f5 97            	ld	xl,a
2714  06f6 a601          	ld	a,#1
2715  06f8 5d            	tnzw	x
2716  06f9 2704          	jreq	L233
2717  06fb               L433:
2718  06fb 48            	sll	a
2719  06fc 5a            	decw	x
2720  06fd 26fc          	jrne	L433
2721  06ff               L233:
2722  06ff c4540d        	and	a,21517
2723  0702 6b01          	ld	(OFST+0,sp),a
2726  0704 2014          	jra	L7001
2727  0706               L5001:
2728                     ; 515     status = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8)));
2730  0706 7b02          	ld	a,(OFST+1,sp)
2731  0708 a008          	sub	a,#8
2732  070a 5f            	clrw	x
2733  070b 97            	ld	xl,a
2734  070c a601          	ld	a,#1
2735  070e 5d            	tnzw	x
2736  070f 2704          	jreq	L633
2737  0711               L043:
2738  0711 48            	sll	a
2739  0712 5a            	decw	x
2740  0713 26fc          	jrne	L043
2741  0715               L633:
2742  0715 c4540c        	and	a,21516
2743  0718 6b01          	ld	(OFST+0,sp),a
2745  071a               L7001:
2746                     ; 518   return ((FlagStatus)status);
2748  071a 7b01          	ld	a,(OFST+0,sp)
2751  071c 85            	popw	x
2752  071d 81            	ret
2911                     ; 527 FlagStatus ADC1_GetFlagStatus(ADC1_Flag_TypeDef Flag)
2911                     ; 528 {
2912                     	switch	.text
2913  071e               _ADC1_GetFlagStatus:
2915  071e 88            	push	a
2916  071f 88            	push	a
2917       00000001      OFST:	set	1
2920                     ; 529   uint8_t flagstatus = 0;
2922                     ; 530   uint8_t temp = 0;
2924                     ; 533   assert_param(IS_ADC1_FLAG_OK(Flag));
2926  0720 a180          	cp	a,#128
2927  0722 2730          	jreq	L643
2928  0724 a141          	cp	a,#65
2929  0726 272c          	jreq	L643
2930  0728 a140          	cp	a,#64
2931  072a 2728          	jreq	L643
2932  072c a110          	cp	a,#16
2933  072e 2724          	jreq	L643
2934  0730 a111          	cp	a,#17
2935  0732 2720          	jreq	L643
2936  0734 a112          	cp	a,#18
2937  0736 271c          	jreq	L643
2938  0738 a113          	cp	a,#19
2939  073a 2718          	jreq	L643
2940  073c a114          	cp	a,#20
2941  073e 2714          	jreq	L643
2942  0740 a115          	cp	a,#21
2943  0742 2710          	jreq	L643
2944  0744 a116          	cp	a,#22
2945  0746 270c          	jreq	L643
2946  0748 a117          	cp	a,#23
2947  074a 2708          	jreq	L643
2948  074c a118          	cp	a,#24
2949  074e 2704          	jreq	L643
2950  0750 a119          	cp	a,#25
2951  0752 2603          	jrne	L443
2952  0754               L643:
2953  0754 4f            	clr	a
2954  0755 2010          	jra	L053
2955  0757               L443:
2956  0757 ae0215        	ldw	x,#533
2957  075a 89            	pushw	x
2958  075b ae0000        	ldw	x,#0
2959  075e 89            	pushw	x
2960  075f ae0000        	ldw	x,#L542
2961  0762 cd0000        	call	_assert_failed
2963  0765 5b04          	addw	sp,#4
2964  0767               L053:
2965                     ; 535   if ((Flag & 0x0F) == 0x01)
2967  0767 7b02          	ld	a,(OFST+1,sp)
2968  0769 a40f          	and	a,#15
2969  076b a101          	cp	a,#1
2970  076d 2609          	jrne	L7701
2971                     ; 538     flagstatus = (uint8_t)(ADC1->CR3 & ADC1_CR3_OVR);
2973  076f c65403        	ld	a,21507
2974  0772 a440          	and	a,#64
2975  0774 6b01          	ld	(OFST+0,sp),a
2978  0776 2045          	jra	L1011
2979  0778               L7701:
2980                     ; 540   else if ((Flag & 0xF0) == 0x10)
2982  0778 7b02          	ld	a,(OFST+1,sp)
2983  077a a4f0          	and	a,#240
2984  077c a110          	cp	a,#16
2985  077e 2636          	jrne	L3011
2986                     ; 543     temp = (uint8_t)(Flag & (uint8_t)0x0F);
2988  0780 7b02          	ld	a,(OFST+1,sp)
2989  0782 a40f          	and	a,#15
2990  0784 6b01          	ld	(OFST+0,sp),a
2992                     ; 544     if (temp < 8)
2994  0786 7b01          	ld	a,(OFST+0,sp)
2995  0788 a108          	cp	a,#8
2996  078a 2414          	jruge	L5011
2997                     ; 546       flagstatus = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
2999  078c 7b01          	ld	a,(OFST+0,sp)
3000  078e 5f            	clrw	x
3001  078f 97            	ld	xl,a
3002  0790 a601          	ld	a,#1
3003  0792 5d            	tnzw	x
3004  0793 2704          	jreq	L253
3005  0795               L453:
3006  0795 48            	sll	a
3007  0796 5a            	decw	x
3008  0797 26fc          	jrne	L453
3009  0799               L253:
3010  0799 c4540d        	and	a,21517
3011  079c 6b01          	ld	(OFST+0,sp),a
3014  079e 201d          	jra	L1011
3015  07a0               L5011:
3016                     ; 550       flagstatus = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
3018  07a0 7b01          	ld	a,(OFST+0,sp)
3019  07a2 a008          	sub	a,#8
3020  07a4 5f            	clrw	x
3021  07a5 97            	ld	xl,a
3022  07a6 a601          	ld	a,#1
3023  07a8 5d            	tnzw	x
3024  07a9 2704          	jreq	L653
3025  07ab               L063:
3026  07ab 48            	sll	a
3027  07ac 5a            	decw	x
3028  07ad 26fc          	jrne	L063
3029  07af               L653:
3030  07af c4540c        	and	a,21516
3031  07b2 6b01          	ld	(OFST+0,sp),a
3033  07b4 2007          	jra	L1011
3034  07b6               L3011:
3035                     ; 555     flagstatus = (uint8_t)(ADC1->CSR & Flag);
3037  07b6 c65400        	ld	a,21504
3038  07b9 1402          	and	a,(OFST+1,sp)
3039  07bb 6b01          	ld	(OFST+0,sp),a
3041  07bd               L1011:
3042                     ; 557   return ((FlagStatus)flagstatus);
3044  07bd 7b01          	ld	a,(OFST+0,sp)
3047  07bf 85            	popw	x
3048  07c0 81            	ret
3093                     ; 567 void ADC1_ClearFlag(ADC1_Flag_TypeDef Flag)
3093                     ; 568 {
3094                     	switch	.text
3095  07c1               _ADC1_ClearFlag:
3097  07c1 88            	push	a
3098  07c2 88            	push	a
3099       00000001      OFST:	set	1
3102                     ; 569   uint8_t temp = 0;
3104                     ; 572   assert_param(IS_ADC1_FLAG_OK(Flag));
3106  07c3 a180          	cp	a,#128
3107  07c5 2730          	jreq	L663
3108  07c7 a141          	cp	a,#65
3109  07c9 272c          	jreq	L663
3110  07cb a140          	cp	a,#64
3111  07cd 2728          	jreq	L663
3112  07cf a110          	cp	a,#16
3113  07d1 2724          	jreq	L663
3114  07d3 a111          	cp	a,#17
3115  07d5 2720          	jreq	L663
3116  07d7 a112          	cp	a,#18
3117  07d9 271c          	jreq	L663
3118  07db a113          	cp	a,#19
3119  07dd 2718          	jreq	L663
3120  07df a114          	cp	a,#20
3121  07e1 2714          	jreq	L663
3122  07e3 a115          	cp	a,#21
3123  07e5 2710          	jreq	L663
3124  07e7 a116          	cp	a,#22
3125  07e9 270c          	jreq	L663
3126  07eb a117          	cp	a,#23
3127  07ed 2708          	jreq	L663
3128  07ef a118          	cp	a,#24
3129  07f1 2704          	jreq	L663
3130  07f3 a119          	cp	a,#25
3131  07f5 2603          	jrne	L463
3132  07f7               L663:
3133  07f7 4f            	clr	a
3134  07f8 2010          	jra	L073
3135  07fa               L463:
3136  07fa ae023c        	ldw	x,#572
3137  07fd 89            	pushw	x
3138  07fe ae0000        	ldw	x,#0
3139  0801 89            	pushw	x
3140  0802 ae0000        	ldw	x,#L542
3141  0805 cd0000        	call	_assert_failed
3143  0808 5b04          	addw	sp,#4
3144  080a               L073:
3145                     ; 574   if ((Flag & 0x0F) == 0x01)
3147  080a 7b02          	ld	a,(OFST+1,sp)
3148  080c a40f          	and	a,#15
3149  080e a101          	cp	a,#1
3150  0810 2606          	jrne	L5311
3151                     ; 577     ADC1->CR3 &= (uint8_t)(~ADC1_CR3_OVR);
3153  0812 721d5403      	bres	21507,#6
3155  0816 204b          	jra	L7311
3156  0818               L5311:
3157                     ; 579   else if ((Flag & 0xF0) == 0x10)
3159  0818 7b02          	ld	a,(OFST+1,sp)
3160  081a a4f0          	and	a,#240
3161  081c a110          	cp	a,#16
3162  081e 263a          	jrne	L1411
3163                     ; 582     temp = (uint8_t)(Flag & (uint8_t)0x0F);
3165  0820 7b02          	ld	a,(OFST+1,sp)
3166  0822 a40f          	and	a,#15
3167  0824 6b01          	ld	(OFST+0,sp),a
3169                     ; 583     if (temp < 8)
3171  0826 7b01          	ld	a,(OFST+0,sp)
3172  0828 a108          	cp	a,#8
3173  082a 2416          	jruge	L3411
3174                     ; 585       ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
3176  082c 7b01          	ld	a,(OFST+0,sp)
3177  082e 5f            	clrw	x
3178  082f 97            	ld	xl,a
3179  0830 a601          	ld	a,#1
3180  0832 5d            	tnzw	x
3181  0833 2704          	jreq	L273
3182  0835               L473:
3183  0835 48            	sll	a
3184  0836 5a            	decw	x
3185  0837 26fc          	jrne	L473
3186  0839               L273:
3187  0839 43            	cpl	a
3188  083a c4540d        	and	a,21517
3189  083d c7540d        	ld	21517,a
3191  0840 2021          	jra	L7311
3192  0842               L3411:
3193                     ; 589       ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
3195  0842 7b01          	ld	a,(OFST+0,sp)
3196  0844 a008          	sub	a,#8
3197  0846 5f            	clrw	x
3198  0847 97            	ld	xl,a
3199  0848 a601          	ld	a,#1
3200  084a 5d            	tnzw	x
3201  084b 2704          	jreq	L673
3202  084d               L004:
3203  084d 48            	sll	a
3204  084e 5a            	decw	x
3205  084f 26fc          	jrne	L004
3206  0851               L673:
3207  0851 43            	cpl	a
3208  0852 c4540c        	and	a,21516
3209  0855 c7540c        	ld	21516,a
3210  0858 2009          	jra	L7311
3211  085a               L1411:
3212                     ; 594     ADC1->CSR &= (uint8_t) (~Flag);
3214  085a 7b02          	ld	a,(OFST+1,sp)
3215  085c 43            	cpl	a
3216  085d c45400        	and	a,21504
3217  0860 c75400        	ld	21504,a
3218  0863               L7311:
3219                     ; 596 }
3222  0863 85            	popw	x
3223  0864 81            	ret
3279                     ; 616 ITStatus ADC1_GetITStatus(ADC1_IT_TypeDef ITPendingBit)
3279                     ; 617 {
3280                     	switch	.text
3281  0865               _ADC1_GetITStatus:
3283  0865 89            	pushw	x
3284  0866 88            	push	a
3285       00000001      OFST:	set	1
3288                     ; 618   ITStatus itstatus = RESET;
3290                     ; 619   uint8_t temp = 0;
3292                     ; 622   assert_param(IS_ADC1_ITPENDINGBIT_OK(ITPendingBit));
3294  0867 a30080        	cpw	x,#128
3295  086a 273c          	jreq	L604
3296  086c a30140        	cpw	x,#320
3297  086f 2737          	jreq	L604
3298  0871 a30110        	cpw	x,#272
3299  0874 2732          	jreq	L604
3300  0876 a30111        	cpw	x,#273
3301  0879 272d          	jreq	L604
3302  087b a30112        	cpw	x,#274
3303  087e 2728          	jreq	L604
3304  0880 a30113        	cpw	x,#275
3305  0883 2723          	jreq	L604
3306  0885 a30114        	cpw	x,#276
3307  0888 271e          	jreq	L604
3308  088a a30115        	cpw	x,#277
3309  088d 2719          	jreq	L604
3310  088f a30116        	cpw	x,#278
3311  0892 2714          	jreq	L604
3312  0894 a30117        	cpw	x,#279
3313  0897 270f          	jreq	L604
3314  0899 a30118        	cpw	x,#280
3315  089c 270a          	jreq	L604
3316  089e a3011c        	cpw	x,#284
3317  08a1 2705          	jreq	L604
3318  08a3 a30119        	cpw	x,#281
3319  08a6 2603          	jrne	L404
3320  08a8               L604:
3321  08a8 4f            	clr	a
3322  08a9 2010          	jra	L014
3323  08ab               L404:
3324  08ab ae026e        	ldw	x,#622
3325  08ae 89            	pushw	x
3326  08af ae0000        	ldw	x,#0
3327  08b2 89            	pushw	x
3328  08b3 ae0000        	ldw	x,#L542
3329  08b6 cd0000        	call	_assert_failed
3331  08b9 5b04          	addw	sp,#4
3332  08bb               L014:
3333                     ; 624   if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
3335  08bb 7b02          	ld	a,(OFST+1,sp)
3336  08bd 97            	ld	xl,a
3337  08be 7b03          	ld	a,(OFST+2,sp)
3338  08c0 a4f0          	and	a,#240
3339  08c2 5f            	clrw	x
3340  08c3 02            	rlwa	x,a
3341  08c4 a30010        	cpw	x,#16
3342  08c7 2636          	jrne	L7711
3343                     ; 627     temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
3345  08c9 7b03          	ld	a,(OFST+2,sp)
3346  08cb a40f          	and	a,#15
3347  08cd 6b01          	ld	(OFST+0,sp),a
3349                     ; 628     if (temp < 8)
3351  08cf 7b01          	ld	a,(OFST+0,sp)
3352  08d1 a108          	cp	a,#8
3353  08d3 2414          	jruge	L1021
3354                     ; 630       itstatus = (ITStatus)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
3356  08d5 7b01          	ld	a,(OFST+0,sp)
3357  08d7 5f            	clrw	x
3358  08d8 97            	ld	xl,a
3359  08d9 a601          	ld	a,#1
3360  08db 5d            	tnzw	x
3361  08dc 2704          	jreq	L214
3362  08de               L414:
3363  08de 48            	sll	a
3364  08df 5a            	decw	x
3365  08e0 26fc          	jrne	L414
3366  08e2               L214:
3367  08e2 c4540d        	and	a,21517
3368  08e5 6b01          	ld	(OFST+0,sp),a
3371  08e7 201d          	jra	L5021
3372  08e9               L1021:
3373                     ; 634       itstatus = (ITStatus)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
3375  08e9 7b01          	ld	a,(OFST+0,sp)
3376  08eb a008          	sub	a,#8
3377  08ed 5f            	clrw	x
3378  08ee 97            	ld	xl,a
3379  08ef a601          	ld	a,#1
3380  08f1 5d            	tnzw	x
3381  08f2 2704          	jreq	L614
3382  08f4               L024:
3383  08f4 48            	sll	a
3384  08f5 5a            	decw	x
3385  08f6 26fc          	jrne	L024
3386  08f8               L614:
3387  08f8 c4540c        	and	a,21516
3388  08fb 6b01          	ld	(OFST+0,sp),a
3390  08fd 2007          	jra	L5021
3391  08ff               L7711:
3392                     ; 639     itstatus = (ITStatus)(ADC1->CSR & (uint8_t)ITPendingBit);
3394  08ff c65400        	ld	a,21504
3395  0902 1403          	and	a,(OFST+2,sp)
3396  0904 6b01          	ld	(OFST+0,sp),a
3398  0906               L5021:
3399                     ; 641   return ((ITStatus)itstatus);
3401  0906 7b01          	ld	a,(OFST+0,sp)
3404  0908 5b03          	addw	sp,#3
3405  090a 81            	ret
3451                     ; 662 void ADC1_ClearITPendingBit(ADC1_IT_TypeDef ITPendingBit)
3451                     ; 663 {
3452                     	switch	.text
3453  090b               _ADC1_ClearITPendingBit:
3455  090b 89            	pushw	x
3456  090c 88            	push	a
3457       00000001      OFST:	set	1
3460                     ; 664   uint8_t temp = 0;
3462                     ; 667   assert_param(IS_ADC1_ITPENDINGBIT_OK(ITPendingBit));
3464  090d a30080        	cpw	x,#128
3465  0910 273c          	jreq	L624
3466  0912 a30140        	cpw	x,#320
3467  0915 2737          	jreq	L624
3468  0917 a30110        	cpw	x,#272
3469  091a 2732          	jreq	L624
3470  091c a30111        	cpw	x,#273
3471  091f 272d          	jreq	L624
3472  0921 a30112        	cpw	x,#274
3473  0924 2728          	jreq	L624
3474  0926 a30113        	cpw	x,#275
3475  0929 2723          	jreq	L624
3476  092b a30114        	cpw	x,#276
3477  092e 271e          	jreq	L624
3478  0930 a30115        	cpw	x,#277
3479  0933 2719          	jreq	L624
3480  0935 a30116        	cpw	x,#278
3481  0938 2714          	jreq	L624
3482  093a a30117        	cpw	x,#279
3483  093d 270f          	jreq	L624
3484  093f a30118        	cpw	x,#280
3485  0942 270a          	jreq	L624
3486  0944 a3011c        	cpw	x,#284
3487  0947 2705          	jreq	L624
3488  0949 a30119        	cpw	x,#281
3489  094c 2603          	jrne	L424
3490  094e               L624:
3491  094e 4f            	clr	a
3492  094f 2010          	jra	L034
3493  0951               L424:
3494  0951 ae029b        	ldw	x,#667
3495  0954 89            	pushw	x
3496  0955 ae0000        	ldw	x,#0
3497  0958 89            	pushw	x
3498  0959 ae0000        	ldw	x,#L542
3499  095c cd0000        	call	_assert_failed
3501  095f 5b04          	addw	sp,#4
3502  0961               L034:
3503                     ; 669   if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
3505  0961 7b02          	ld	a,(OFST+1,sp)
3506  0963 97            	ld	xl,a
3507  0964 7b03          	ld	a,(OFST+2,sp)
3508  0966 a4f0          	and	a,#240
3509  0968 5f            	clrw	x
3510  0969 02            	rlwa	x,a
3511  096a a30010        	cpw	x,#16
3512  096d 263a          	jrne	L1321
3513                     ; 672     temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
3515  096f 7b03          	ld	a,(OFST+2,sp)
3516  0971 a40f          	and	a,#15
3517  0973 6b01          	ld	(OFST+0,sp),a
3519                     ; 673     if (temp < 8)
3521  0975 7b01          	ld	a,(OFST+0,sp)
3522  0977 a108          	cp	a,#8
3523  0979 2416          	jruge	L3321
3524                     ; 675       ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
3526  097b 7b01          	ld	a,(OFST+0,sp)
3527  097d 5f            	clrw	x
3528  097e 97            	ld	xl,a
3529  097f a601          	ld	a,#1
3530  0981 5d            	tnzw	x
3531  0982 2704          	jreq	L234
3532  0984               L434:
3533  0984 48            	sll	a
3534  0985 5a            	decw	x
3535  0986 26fc          	jrne	L434
3536  0988               L234:
3537  0988 43            	cpl	a
3538  0989 c4540d        	and	a,21517
3539  098c c7540d        	ld	21517,a
3541  098f 2021          	jra	L7321
3542  0991               L3321:
3543                     ; 679       ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
3545  0991 7b01          	ld	a,(OFST+0,sp)
3546  0993 a008          	sub	a,#8
3547  0995 5f            	clrw	x
3548  0996 97            	ld	xl,a
3549  0997 a601          	ld	a,#1
3550  0999 5d            	tnzw	x
3551  099a 2704          	jreq	L634
3552  099c               L044:
3553  099c 48            	sll	a
3554  099d 5a            	decw	x
3555  099e 26fc          	jrne	L044
3556  09a0               L634:
3557  09a0 43            	cpl	a
3558  09a1 c4540c        	and	a,21516
3559  09a4 c7540c        	ld	21516,a
3560  09a7 2009          	jra	L7321
3561  09a9               L1321:
3562                     ; 684     ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ITPendingBit);
3564  09a9 7b03          	ld	a,(OFST+2,sp)
3565  09ab 43            	cpl	a
3566  09ac c45400        	and	a,21504
3567  09af c75400        	ld	21504,a
3568  09b2               L7321:
3569                     ; 686 }
3572  09b2 5b03          	addw	sp,#3
3573  09b4 81            	ret
3586                     	xdef	_ADC1_ClearITPendingBit
3587                     	xdef	_ADC1_GetITStatus
3588                     	xdef	_ADC1_ClearFlag
3589                     	xdef	_ADC1_GetFlagStatus
3590                     	xdef	_ADC1_GetAWDChannelStatus
3591                     	xdef	_ADC1_GetBufferValue
3592                     	xdef	_ADC1_SetLowThreshold
3593                     	xdef	_ADC1_SetHighThreshold
3594                     	xdef	_ADC1_GetConversionValue
3595                     	xdef	_ADC1_StartConversion
3596                     	xdef	_ADC1_AWDChannelConfig
3597                     	xdef	_ADC1_ExternalTriggerConfig
3598                     	xdef	_ADC1_ConversionConfig
3599                     	xdef	_ADC1_SchmittTriggerConfig
3600                     	xdef	_ADC1_PrescalerConfig
3601                     	xdef	_ADC1_ITConfig
3602                     	xdef	_ADC1_DataBufferCmd
3603                     	xdef	_ADC1_ScanModeCmd
3604                     	xdef	_ADC1_Cmd
3605                     	xdef	_ADC1_Init
3606                     	xdef	_ADC1_DeInit
3607                     	xref	_assert_failed
3608                     .const:	section	.text
3609  0000               L542:
3610  0000 2e2e5c6c6962  	dc.b	"..\libs\src\stm8s_"
3611  0012 616463312e63  	dc.b	"adc1.c",0
3631                     	end
