   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
  16                     .const:	section	.text
  17  0000               _HSIDivFactor:
  18  0000 01            	dc.b	1
  19  0001 02            	dc.b	2
  20  0002 04            	dc.b	4
  21  0003 08            	dc.b	8
  22  0004               _CLKPrescTable:
  23  0004 01            	dc.b	1
  24  0005 02            	dc.b	2
  25  0006 04            	dc.b	4
  26  0007 08            	dc.b	8
  27  0008 0a            	dc.b	10
  28  0009 10            	dc.b	16
  29  000a 14            	dc.b	20
  30  000b 28            	dc.b	40
  59                     ; 72 void CLK_DeInit(void)
  59                     ; 73 {
  61                     .text:	section	.text,new
  62  0000               _CLK_DeInit:
  66                     ; 74   CLK->ICKR = CLK_ICKR_RESET_VALUE;
  68  0000 350150c0      	mov	20672,#1
  69                     ; 75   CLK->ECKR = CLK_ECKR_RESET_VALUE;
  71  0004 725f50c1      	clr	20673
  72                     ; 76   CLK->SWR  = CLK_SWR_RESET_VALUE;
  74  0008 35e150c4      	mov	20676,#225
  75                     ; 77   CLK->SWCR = CLK_SWCR_RESET_VALUE;
  77  000c 725f50c5      	clr	20677
  78                     ; 78   CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
  80  0010 351850c6      	mov	20678,#24
  81                     ; 79   CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
  83  0014 35ff50c7      	mov	20679,#255
  84                     ; 80   CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
  86  0018 35ff50ca      	mov	20682,#255
  87                     ; 81   CLK->CSSR = CLK_CSSR_RESET_VALUE;
  89  001c 725f50c8      	clr	20680
  90                     ; 82   CLK->CCOR = CLK_CCOR_RESET_VALUE;
  92  0020 725f50c9      	clr	20681
  94  0024               L52:
  95                     ; 83   while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
  97  0024 c650c9        	ld	a,20681
  98  0027 a501          	bcp	a,#1
  99  0029 26f9          	jrne	L52
 100                     ; 85   CLK->CCOR = CLK_CCOR_RESET_VALUE;
 102  002b 725f50c9      	clr	20681
 103                     ; 86   CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
 105  002f 725f50cc      	clr	20684
 106                     ; 87   CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
 108  0033 725f50cd      	clr	20685
 109                     ; 88 }
 112  0037 81            	ret
 169                     ; 99 void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
 169                     ; 100 {
 170                     .text:	section	.text,new
 171  0000               _CLK_FastHaltWakeUpCmd:
 173  0000 88            	push	a
 174       00000000      OFST:	set	0
 177                     ; 102   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 179  0001 4d            	tnz	a
 180  0002 2704          	jreq	L21
 181  0004 a101          	cp	a,#1
 182  0006 2603          	jrne	L01
 183  0008               L21:
 184  0008 4f            	clr	a
 185  0009 2010          	jra	L41
 186  000b               L01:
 187  000b ae0066        	ldw	x,#102
 188  000e 89            	pushw	x
 189  000f ae0000        	ldw	x,#0
 190  0012 89            	pushw	x
 191  0013 ae000c        	ldw	x,#L75
 192  0016 cd0000        	call	_assert_failed
 194  0019 5b04          	addw	sp,#4
 195  001b               L41:
 196                     ; 104   if (NewState != DISABLE)
 198  001b 0d01          	tnz	(OFST+1,sp)
 199  001d 2706          	jreq	L16
 200                     ; 107     CLK->ICKR |= CLK_ICKR_FHWU;
 202  001f 721450c0      	bset	20672,#2
 204  0023 2004          	jra	L36
 205  0025               L16:
 206                     ; 112     CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
 208  0025 721550c0      	bres	20672,#2
 209  0029               L36:
 210                     ; 114 }
 213  0029 84            	pop	a
 214  002a 81            	ret
 250                     ; 121 void CLK_HSECmd(FunctionalState NewState)
 250                     ; 122 {
 251                     .text:	section	.text,new
 252  0000               _CLK_HSECmd:
 254  0000 88            	push	a
 255       00000000      OFST:	set	0
 258                     ; 124   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 260  0001 4d            	tnz	a
 261  0002 2704          	jreq	L22
 262  0004 a101          	cp	a,#1
 263  0006 2603          	jrne	L02
 264  0008               L22:
 265  0008 4f            	clr	a
 266  0009 2010          	jra	L42
 267  000b               L02:
 268  000b ae007c        	ldw	x,#124
 269  000e 89            	pushw	x
 270  000f ae0000        	ldw	x,#0
 271  0012 89            	pushw	x
 272  0013 ae000c        	ldw	x,#L75
 273  0016 cd0000        	call	_assert_failed
 275  0019 5b04          	addw	sp,#4
 276  001b               L42:
 277                     ; 126   if (NewState != DISABLE)
 279  001b 0d01          	tnz	(OFST+1,sp)
 280  001d 2706          	jreq	L301
 281                     ; 129     CLK->ECKR |= CLK_ECKR_HSEEN;
 283  001f 721050c1      	bset	20673,#0
 285  0023 2004          	jra	L501
 286  0025               L301:
 287                     ; 134     CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
 289  0025 721150c1      	bres	20673,#0
 290  0029               L501:
 291                     ; 136 }
 294  0029 84            	pop	a
 295  002a 81            	ret
 331                     ; 143 void CLK_HSICmd(FunctionalState NewState)
 331                     ; 144 {
 332                     .text:	section	.text,new
 333  0000               _CLK_HSICmd:
 335  0000 88            	push	a
 336       00000000      OFST:	set	0
 339                     ; 146   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 341  0001 4d            	tnz	a
 342  0002 2704          	jreq	L23
 343  0004 a101          	cp	a,#1
 344  0006 2603          	jrne	L03
 345  0008               L23:
 346  0008 4f            	clr	a
 347  0009 2010          	jra	L43
 348  000b               L03:
 349  000b ae0092        	ldw	x,#146
 350  000e 89            	pushw	x
 351  000f ae0000        	ldw	x,#0
 352  0012 89            	pushw	x
 353  0013 ae000c        	ldw	x,#L75
 354  0016 cd0000        	call	_assert_failed
 356  0019 5b04          	addw	sp,#4
 357  001b               L43:
 358                     ; 148   if (NewState != DISABLE)
 360  001b 0d01          	tnz	(OFST+1,sp)
 361  001d 2706          	jreq	L521
 362                     ; 151     CLK->ICKR |= CLK_ICKR_HSIEN;
 364  001f 721050c0      	bset	20672,#0
 366  0023 2004          	jra	L721
 367  0025               L521:
 368                     ; 156     CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
 370  0025 721150c0      	bres	20672,#0
 371  0029               L721:
 372                     ; 158 }
 375  0029 84            	pop	a
 376  002a 81            	ret
 412                     ; 166 void CLK_LSICmd(FunctionalState NewState)
 412                     ; 167 {
 413                     .text:	section	.text,new
 414  0000               _CLK_LSICmd:
 416  0000 88            	push	a
 417       00000000      OFST:	set	0
 420                     ; 169   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 422  0001 4d            	tnz	a
 423  0002 2704          	jreq	L24
 424  0004 a101          	cp	a,#1
 425  0006 2603          	jrne	L04
 426  0008               L24:
 427  0008 4f            	clr	a
 428  0009 2010          	jra	L44
 429  000b               L04:
 430  000b ae00a9        	ldw	x,#169
 431  000e 89            	pushw	x
 432  000f ae0000        	ldw	x,#0
 433  0012 89            	pushw	x
 434  0013 ae000c        	ldw	x,#L75
 435  0016 cd0000        	call	_assert_failed
 437  0019 5b04          	addw	sp,#4
 438  001b               L44:
 439                     ; 171   if (NewState != DISABLE)
 441  001b 0d01          	tnz	(OFST+1,sp)
 442  001d 2706          	jreq	L741
 443                     ; 174     CLK->ICKR |= CLK_ICKR_LSIEN;
 445  001f 721650c0      	bset	20672,#3
 447  0023 2004          	jra	L151
 448  0025               L741:
 449                     ; 179     CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
 451  0025 721750c0      	bres	20672,#3
 452  0029               L151:
 453                     ; 181 }
 456  0029 84            	pop	a
 457  002a 81            	ret
 493                     ; 189 void CLK_CCOCmd(FunctionalState NewState)
 493                     ; 190 {
 494                     .text:	section	.text,new
 495  0000               _CLK_CCOCmd:
 497  0000 88            	push	a
 498       00000000      OFST:	set	0
 501                     ; 192   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 503  0001 4d            	tnz	a
 504  0002 2704          	jreq	L25
 505  0004 a101          	cp	a,#1
 506  0006 2603          	jrne	L05
 507  0008               L25:
 508  0008 4f            	clr	a
 509  0009 2010          	jra	L45
 510  000b               L05:
 511  000b ae00c0        	ldw	x,#192
 512  000e 89            	pushw	x
 513  000f ae0000        	ldw	x,#0
 514  0012 89            	pushw	x
 515  0013 ae000c        	ldw	x,#L75
 516  0016 cd0000        	call	_assert_failed
 518  0019 5b04          	addw	sp,#4
 519  001b               L45:
 520                     ; 194   if (NewState != DISABLE)
 522  001b 0d01          	tnz	(OFST+1,sp)
 523  001d 2706          	jreq	L171
 524                     ; 197     CLK->CCOR |= CLK_CCOR_CCOEN;
 526  001f 721050c9      	bset	20681,#0
 528  0023 2004          	jra	L371
 529  0025               L171:
 530                     ; 202     CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
 532  0025 721150c9      	bres	20681,#0
 533  0029               L371:
 534                     ; 204 }
 537  0029 84            	pop	a
 538  002a 81            	ret
 574                     ; 213 void CLK_ClockSwitchCmd(FunctionalState NewState)
 574                     ; 214 {
 575                     .text:	section	.text,new
 576  0000               _CLK_ClockSwitchCmd:
 578  0000 88            	push	a
 579       00000000      OFST:	set	0
 582                     ; 216   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 584  0001 4d            	tnz	a
 585  0002 2704          	jreq	L26
 586  0004 a101          	cp	a,#1
 587  0006 2603          	jrne	L06
 588  0008               L26:
 589  0008 4f            	clr	a
 590  0009 2010          	jra	L46
 591  000b               L06:
 592  000b ae00d8        	ldw	x,#216
 593  000e 89            	pushw	x
 594  000f ae0000        	ldw	x,#0
 595  0012 89            	pushw	x
 596  0013 ae000c        	ldw	x,#L75
 597  0016 cd0000        	call	_assert_failed
 599  0019 5b04          	addw	sp,#4
 600  001b               L46:
 601                     ; 218   if (NewState != DISABLE )
 603  001b 0d01          	tnz	(OFST+1,sp)
 604  001d 2706          	jreq	L312
 605                     ; 221     CLK->SWCR |= CLK_SWCR_SWEN;
 607  001f 721250c5      	bset	20677,#1
 609  0023 2004          	jra	L512
 610  0025               L312:
 611                     ; 226     CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
 613  0025 721350c5      	bres	20677,#1
 614  0029               L512:
 615                     ; 228 }
 618  0029 84            	pop	a
 619  002a 81            	ret
 656                     ; 238 void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
 656                     ; 239 {
 657                     .text:	section	.text,new
 658  0000               _CLK_SlowActiveHaltWakeUpCmd:
 660  0000 88            	push	a
 661       00000000      OFST:	set	0
 664                     ; 241   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 666  0001 4d            	tnz	a
 667  0002 2704          	jreq	L27
 668  0004 a101          	cp	a,#1
 669  0006 2603          	jrne	L07
 670  0008               L27:
 671  0008 4f            	clr	a
 672  0009 2010          	jra	L47
 673  000b               L07:
 674  000b ae00f1        	ldw	x,#241
 675  000e 89            	pushw	x
 676  000f ae0000        	ldw	x,#0
 677  0012 89            	pushw	x
 678  0013 ae000c        	ldw	x,#L75
 679  0016 cd0000        	call	_assert_failed
 681  0019 5b04          	addw	sp,#4
 682  001b               L47:
 683                     ; 243   if (NewState != DISABLE)
 685  001b 0d01          	tnz	(OFST+1,sp)
 686  001d 2706          	jreq	L532
 687                     ; 246     CLK->ICKR |= CLK_ICKR_SWUAH;
 689  001f 721a50c0      	bset	20672,#5
 691  0023 2004          	jra	L732
 692  0025               L532:
 693                     ; 251     CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
 695  0025 721b50c0      	bres	20672,#5
 696  0029               L732:
 697                     ; 253 }
 700  0029 84            	pop	a
 701  002a 81            	ret
 861                     ; 263 void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
 861                     ; 264 {
 862                     .text:	section	.text,new
 863  0000               _CLK_PeripheralClockConfig:
 865  0000 89            	pushw	x
 866       00000000      OFST:	set	0
 869                     ; 266   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 871  0001 9f            	ld	a,xl
 872  0002 4d            	tnz	a
 873  0003 2705          	jreq	L201
 874  0005 9f            	ld	a,xl
 875  0006 a101          	cp	a,#1
 876  0008 2603          	jrne	L001
 877  000a               L201:
 878  000a 4f            	clr	a
 879  000b 2010          	jra	L401
 880  000d               L001:
 881  000d ae010a        	ldw	x,#266
 882  0010 89            	pushw	x
 883  0011 ae0000        	ldw	x,#0
 884  0014 89            	pushw	x
 885  0015 ae000c        	ldw	x,#L75
 886  0018 cd0000        	call	_assert_failed
 888  001b 5b04          	addw	sp,#4
 889  001d               L401:
 890                     ; 267   assert_param(IS_CLK_PERIPHERAL_OK(CLK_Peripheral));
 892  001d 0d01          	tnz	(OFST+1,sp)
 893  001f 274e          	jreq	L011
 894  0021 7b01          	ld	a,(OFST+1,sp)
 895  0023 a101          	cp	a,#1
 896  0025 2748          	jreq	L011
 897  0027 7b01          	ld	a,(OFST+1,sp)
 898  0029 a103          	cp	a,#3
 899  002b 2742          	jreq	L011
 900  002d 7b01          	ld	a,(OFST+1,sp)
 901  002f a103          	cp	a,#3
 902  0031 273c          	jreq	L011
 903  0033 7b01          	ld	a,(OFST+1,sp)
 904  0035 a103          	cp	a,#3
 905  0037 2736          	jreq	L011
 906  0039 7b01          	ld	a,(OFST+1,sp)
 907  003b a104          	cp	a,#4
 908  003d 2730          	jreq	L011
 909  003f 7b01          	ld	a,(OFST+1,sp)
 910  0041 a105          	cp	a,#5
 911  0043 272a          	jreq	L011
 912  0045 7b01          	ld	a,(OFST+1,sp)
 913  0047 a105          	cp	a,#5
 914  0049 2724          	jreq	L011
 915  004b 7b01          	ld	a,(OFST+1,sp)
 916  004d a104          	cp	a,#4
 917  004f 271e          	jreq	L011
 918  0051 7b01          	ld	a,(OFST+1,sp)
 919  0053 a106          	cp	a,#6
 920  0055 2718          	jreq	L011
 921  0057 7b01          	ld	a,(OFST+1,sp)
 922  0059 a107          	cp	a,#7
 923  005b 2712          	jreq	L011
 924  005d 7b01          	ld	a,(OFST+1,sp)
 925  005f a117          	cp	a,#23
 926  0061 270c          	jreq	L011
 927  0063 7b01          	ld	a,(OFST+1,sp)
 928  0065 a113          	cp	a,#19
 929  0067 2706          	jreq	L011
 930  0069 7b01          	ld	a,(OFST+1,sp)
 931  006b a112          	cp	a,#18
 932  006d 2603          	jrne	L601
 933  006f               L011:
 934  006f 4f            	clr	a
 935  0070 2010          	jra	L211
 936  0072               L601:
 937  0072 ae010b        	ldw	x,#267
 938  0075 89            	pushw	x
 939  0076 ae0000        	ldw	x,#0
 940  0079 89            	pushw	x
 941  007a ae000c        	ldw	x,#L75
 942  007d cd0000        	call	_assert_failed
 944  0080 5b04          	addw	sp,#4
 945  0082               L211:
 946                     ; 269   if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
 948  0082 7b01          	ld	a,(OFST+1,sp)
 949  0084 a510          	bcp	a,#16
 950  0086 2633          	jrne	L323
 951                     ; 271     if (NewState != DISABLE)
 953  0088 0d02          	tnz	(OFST+2,sp)
 954  008a 2717          	jreq	L523
 955                     ; 274       CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 957  008c 7b01          	ld	a,(OFST+1,sp)
 958  008e a40f          	and	a,#15
 959  0090 5f            	clrw	x
 960  0091 97            	ld	xl,a
 961  0092 a601          	ld	a,#1
 962  0094 5d            	tnzw	x
 963  0095 2704          	jreq	L411
 964  0097               L611:
 965  0097 48            	sll	a
 966  0098 5a            	decw	x
 967  0099 26fc          	jrne	L611
 968  009b               L411:
 969  009b ca50c7        	or	a,20679
 970  009e c750c7        	ld	20679,a
 972  00a1 2049          	jra	L133
 973  00a3               L523:
 974                     ; 279       CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
 976  00a3 7b01          	ld	a,(OFST+1,sp)
 977  00a5 a40f          	and	a,#15
 978  00a7 5f            	clrw	x
 979  00a8 97            	ld	xl,a
 980  00a9 a601          	ld	a,#1
 981  00ab 5d            	tnzw	x
 982  00ac 2704          	jreq	L021
 983  00ae               L221:
 984  00ae 48            	sll	a
 985  00af 5a            	decw	x
 986  00b0 26fc          	jrne	L221
 987  00b2               L021:
 988  00b2 43            	cpl	a
 989  00b3 c450c7        	and	a,20679
 990  00b6 c750c7        	ld	20679,a
 991  00b9 2031          	jra	L133
 992  00bb               L323:
 993                     ; 284     if (NewState != DISABLE)
 995  00bb 0d02          	tnz	(OFST+2,sp)
 996  00bd 2717          	jreq	L333
 997                     ; 287       CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 999  00bf 7b01          	ld	a,(OFST+1,sp)
1000  00c1 a40f          	and	a,#15
1001  00c3 5f            	clrw	x
1002  00c4 97            	ld	xl,a
1003  00c5 a601          	ld	a,#1
1004  00c7 5d            	tnzw	x
1005  00c8 2704          	jreq	L421
1006  00ca               L621:
1007  00ca 48            	sll	a
1008  00cb 5a            	decw	x
1009  00cc 26fc          	jrne	L621
1010  00ce               L421:
1011  00ce ca50ca        	or	a,20682
1012  00d1 c750ca        	ld	20682,a
1014  00d4 2016          	jra	L133
1015  00d6               L333:
1016                     ; 292       CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
1018  00d6 7b01          	ld	a,(OFST+1,sp)
1019  00d8 a40f          	and	a,#15
1020  00da 5f            	clrw	x
1021  00db 97            	ld	xl,a
1022  00dc a601          	ld	a,#1
1023  00de 5d            	tnzw	x
1024  00df 2704          	jreq	L031
1025  00e1               L231:
1026  00e1 48            	sll	a
1027  00e2 5a            	decw	x
1028  00e3 26fc          	jrne	L231
1029  00e5               L031:
1030  00e5 43            	cpl	a
1031  00e6 c450ca        	and	a,20682
1032  00e9 c750ca        	ld	20682,a
1033  00ec               L133:
1034                     ; 295 }
1037  00ec 85            	popw	x
1038  00ed 81            	ret
1227                     ; 309 ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
1227                     ; 310 {
1228                     .text:	section	.text,new
1229  0000               _CLK_ClockSwitchConfig:
1231  0000 89            	pushw	x
1232  0001 5204          	subw	sp,#4
1233       00000004      OFST:	set	4
1236                     ; 312   uint16_t DownCounter = CLK_TIMEOUT;
1238  0003 aeffff        	ldw	x,#65535
1239  0006 1f03          	ldw	(OFST-1,sp),x
1241                     ; 313   ErrorStatus Swif = ERROR;
1243                     ; 316   assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
1245  0008 7b06          	ld	a,(OFST+2,sp)
1246  000a a1e1          	cp	a,#225
1247  000c 270c          	jreq	L041
1248  000e 7b06          	ld	a,(OFST+2,sp)
1249  0010 a1d2          	cp	a,#210
1250  0012 2706          	jreq	L041
1251  0014 7b06          	ld	a,(OFST+2,sp)
1252  0016 a1b4          	cp	a,#180
1253  0018 2603          	jrne	L631
1254  001a               L041:
1255  001a 4f            	clr	a
1256  001b 2010          	jra	L241
1257  001d               L631:
1258  001d ae013c        	ldw	x,#316
1259  0020 89            	pushw	x
1260  0021 ae0000        	ldw	x,#0
1261  0024 89            	pushw	x
1262  0025 ae000c        	ldw	x,#L75
1263  0028 cd0000        	call	_assert_failed
1265  002b 5b04          	addw	sp,#4
1266  002d               L241:
1267                     ; 317   assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
1269  002d 0d05          	tnz	(OFST+1,sp)
1270  002f 2706          	jreq	L641
1271  0031 7b05          	ld	a,(OFST+1,sp)
1272  0033 a101          	cp	a,#1
1273  0035 2603          	jrne	L441
1274  0037               L641:
1275  0037 4f            	clr	a
1276  0038 2010          	jra	L051
1277  003a               L441:
1278  003a ae013d        	ldw	x,#317
1279  003d 89            	pushw	x
1280  003e ae0000        	ldw	x,#0
1281  0041 89            	pushw	x
1282  0042 ae000c        	ldw	x,#L75
1283  0045 cd0000        	call	_assert_failed
1285  0048 5b04          	addw	sp,#4
1286  004a               L051:
1287                     ; 318   assert_param(IS_FUNCTIONALSTATE_OK(ITState));
1289  004a 0d09          	tnz	(OFST+5,sp)
1290  004c 2706          	jreq	L451
1291  004e 7b09          	ld	a,(OFST+5,sp)
1292  0050 a101          	cp	a,#1
1293  0052 2603          	jrne	L251
1294  0054               L451:
1295  0054 4f            	clr	a
1296  0055 2010          	jra	L651
1297  0057               L251:
1298  0057 ae013e        	ldw	x,#318
1299  005a 89            	pushw	x
1300  005b ae0000        	ldw	x,#0
1301  005e 89            	pushw	x
1302  005f ae000c        	ldw	x,#L75
1303  0062 cd0000        	call	_assert_failed
1305  0065 5b04          	addw	sp,#4
1306  0067               L651:
1307                     ; 319   assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
1309  0067 0d0a          	tnz	(OFST+6,sp)
1310  0069 2706          	jreq	L261
1311  006b 7b0a          	ld	a,(OFST+6,sp)
1312  006d a101          	cp	a,#1
1313  006f 2603          	jrne	L061
1314  0071               L261:
1315  0071 4f            	clr	a
1316  0072 2010          	jra	L461
1317  0074               L061:
1318  0074 ae013f        	ldw	x,#319
1319  0077 89            	pushw	x
1320  0078 ae0000        	ldw	x,#0
1321  007b 89            	pushw	x
1322  007c ae000c        	ldw	x,#L75
1323  007f cd0000        	call	_assert_failed
1325  0082 5b04          	addw	sp,#4
1326  0084               L461:
1327                     ; 322   clock_master = (CLK_Source_TypeDef)CLK->CMSR;
1329  0084 c650c3        	ld	a,20675
1330  0087 6b01          	ld	(OFST-3,sp),a
1332                     ; 325   if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
1334  0089 7b05          	ld	a,(OFST+1,sp)
1335  008b a101          	cp	a,#1
1336  008d 264b          	jrne	L744
1337                     ; 328     CLK->SWCR |= CLK_SWCR_SWEN;
1339  008f 721250c5      	bset	20677,#1
1340                     ; 331     if (ITState != DISABLE)
1342  0093 0d09          	tnz	(OFST+5,sp)
1343  0095 2706          	jreq	L154
1344                     ; 333       CLK->SWCR |= CLK_SWCR_SWIEN;
1346  0097 721450c5      	bset	20677,#2
1348  009b 2004          	jra	L354
1349  009d               L154:
1350                     ; 337       CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1352  009d 721550c5      	bres	20677,#2
1353  00a1               L354:
1354                     ; 341     CLK->SWR = (uint8_t)CLK_NewClock;
1356  00a1 7b06          	ld	a,(OFST+2,sp)
1357  00a3 c750c4        	ld	20676,a
1359  00a6 2007          	jra	L164
1360  00a8               L554:
1361                     ; 346       DownCounter--;
1363  00a8 1e03          	ldw	x,(OFST-1,sp)
1364  00aa 1d0001        	subw	x,#1
1365  00ad 1f03          	ldw	(OFST-1,sp),x
1367  00af               L164:
1368                     ; 344     while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
1370  00af c650c5        	ld	a,20677
1371  00b2 a501          	bcp	a,#1
1372  00b4 2704          	jreq	L564
1374  00b6 1e03          	ldw	x,(OFST-1,sp)
1375  00b8 26ee          	jrne	L554
1376  00ba               L564:
1377                     ; 349     if(DownCounter != 0)
1379  00ba 1e03          	ldw	x,(OFST-1,sp)
1380  00bc 2706          	jreq	L764
1381                     ; 351       Swif = SUCCESS;
1383  00be a601          	ld	a,#1
1384  00c0 6b02          	ld	(OFST-2,sp),a
1387  00c2 2002          	jra	L374
1388  00c4               L764:
1389                     ; 355       Swif = ERROR;
1391  00c4 0f02          	clr	(OFST-2,sp)
1393  00c6               L374:
1394                     ; 390   if(Swif != ERROR)
1396  00c6 0d02          	tnz	(OFST-2,sp)
1397  00c8 2767          	jreq	L715
1398                     ; 393     if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
1400  00ca 0d0a          	tnz	(OFST+6,sp)
1401  00cc 2645          	jrne	L125
1403  00ce 7b01          	ld	a,(OFST-3,sp)
1404  00d0 a1e1          	cp	a,#225
1405  00d2 263f          	jrne	L125
1406                     ; 395       CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
1408  00d4 721150c0      	bres	20672,#0
1410  00d8 2057          	jra	L715
1411  00da               L744:
1412                     ; 361     if (ITState != DISABLE)
1414  00da 0d09          	tnz	(OFST+5,sp)
1415  00dc 2706          	jreq	L574
1416                     ; 363       CLK->SWCR |= CLK_SWCR_SWIEN;
1418  00de 721450c5      	bset	20677,#2
1420  00e2 2004          	jra	L774
1421  00e4               L574:
1422                     ; 367       CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1424  00e4 721550c5      	bres	20677,#2
1425  00e8               L774:
1426                     ; 371     CLK->SWR = (uint8_t)CLK_NewClock;
1428  00e8 7b06          	ld	a,(OFST+2,sp)
1429  00ea c750c4        	ld	20676,a
1431  00ed 2007          	jra	L505
1432  00ef               L105:
1433                     ; 376       DownCounter--;
1435  00ef 1e03          	ldw	x,(OFST-1,sp)
1436  00f1 1d0001        	subw	x,#1
1437  00f4 1f03          	ldw	(OFST-1,sp),x
1439  00f6               L505:
1440                     ; 374     while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
1442  00f6 c650c5        	ld	a,20677
1443  00f9 a508          	bcp	a,#8
1444  00fb 2704          	jreq	L115
1446  00fd 1e03          	ldw	x,(OFST-1,sp)
1447  00ff 26ee          	jrne	L105
1448  0101               L115:
1449                     ; 379     if(DownCounter != 0)
1451  0101 1e03          	ldw	x,(OFST-1,sp)
1452  0103 270a          	jreq	L315
1453                     ; 382       CLK->SWCR |= CLK_SWCR_SWEN;
1455  0105 721250c5      	bset	20677,#1
1456                     ; 383       Swif = SUCCESS;
1458  0109 a601          	ld	a,#1
1459  010b 6b02          	ld	(OFST-2,sp),a
1462  010d 20b7          	jra	L374
1463  010f               L315:
1464                     ; 387       Swif = ERROR;
1466  010f 0f02          	clr	(OFST-2,sp)
1468  0111 20b3          	jra	L374
1469  0113               L125:
1470                     ; 397     else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
1472  0113 0d0a          	tnz	(OFST+6,sp)
1473  0115 260c          	jrne	L525
1475  0117 7b01          	ld	a,(OFST-3,sp)
1476  0119 a1d2          	cp	a,#210
1477  011b 2606          	jrne	L525
1478                     ; 399       CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
1480  011d 721750c0      	bres	20672,#3
1482  0121 200e          	jra	L715
1483  0123               L525:
1484                     ; 401     else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
1486  0123 0d0a          	tnz	(OFST+6,sp)
1487  0125 260a          	jrne	L715
1489  0127 7b01          	ld	a,(OFST-3,sp)
1490  0129 a1b4          	cp	a,#180
1491  012b 2604          	jrne	L715
1492                     ; 403       CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
1494  012d 721150c1      	bres	20673,#0
1495  0131               L715:
1496                     ; 406   return(Swif);
1498  0131 7b02          	ld	a,(OFST-2,sp)
1501  0133 5b06          	addw	sp,#6
1502  0135 81            	ret
1641                     ; 415 void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
1641                     ; 416 {
1642                     .text:	section	.text,new
1643  0000               _CLK_HSIPrescalerConfig:
1645  0000 88            	push	a
1646       00000000      OFST:	set	0
1649                     ; 418   assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
1651  0001 4d            	tnz	a
1652  0002 270c          	jreq	L271
1653  0004 a108          	cp	a,#8
1654  0006 2708          	jreq	L271
1655  0008 a110          	cp	a,#16
1656  000a 2704          	jreq	L271
1657  000c a118          	cp	a,#24
1658  000e 2603          	jrne	L071
1659  0010               L271:
1660  0010 4f            	clr	a
1661  0011 2010          	jra	L471
1662  0013               L071:
1663  0013 ae01a2        	ldw	x,#418
1664  0016 89            	pushw	x
1665  0017 ae0000        	ldw	x,#0
1666  001a 89            	pushw	x
1667  001b ae000c        	ldw	x,#L75
1668  001e cd0000        	call	_assert_failed
1670  0021 5b04          	addw	sp,#4
1671  0023               L471:
1672                     ; 421   CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
1674  0023 c650c6        	ld	a,20678
1675  0026 a4e7          	and	a,#231
1676  0028 c750c6        	ld	20678,a
1677                     ; 424   CLK->CKDIVR |= (uint8_t)HSIPrescaler;
1679  002b c650c6        	ld	a,20678
1680  002e 1a01          	or	a,(OFST+1,sp)
1681  0030 c750c6        	ld	20678,a
1682                     ; 425 }
1685  0033 84            	pop	a
1686  0034 81            	ret
1822                     ; 436 void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
1822                     ; 437 {
1823                     .text:	section	.text,new
1824  0000               _CLK_CCOConfig:
1826  0000 88            	push	a
1827       00000000      OFST:	set	0
1830                     ; 439   assert_param(IS_CLK_OUTPUT_OK(CLK_CCO));
1832  0001 4d            	tnz	a
1833  0002 2730          	jreq	L202
1834  0004 a104          	cp	a,#4
1835  0006 272c          	jreq	L202
1836  0008 a102          	cp	a,#2
1837  000a 2728          	jreq	L202
1838  000c a108          	cp	a,#8
1839  000e 2724          	jreq	L202
1840  0010 a10a          	cp	a,#10
1841  0012 2720          	jreq	L202
1842  0014 a10c          	cp	a,#12
1843  0016 271c          	jreq	L202
1844  0018 a10e          	cp	a,#14
1845  001a 2718          	jreq	L202
1846  001c a110          	cp	a,#16
1847  001e 2714          	jreq	L202
1848  0020 a112          	cp	a,#18
1849  0022 2710          	jreq	L202
1850  0024 a114          	cp	a,#20
1851  0026 270c          	jreq	L202
1852  0028 a116          	cp	a,#22
1853  002a 2708          	jreq	L202
1854  002c a118          	cp	a,#24
1855  002e 2704          	jreq	L202
1856  0030 a11a          	cp	a,#26
1857  0032 2603          	jrne	L002
1858  0034               L202:
1859  0034 4f            	clr	a
1860  0035 2010          	jra	L402
1861  0037               L002:
1862  0037 ae01b7        	ldw	x,#439
1863  003a 89            	pushw	x
1864  003b ae0000        	ldw	x,#0
1865  003e 89            	pushw	x
1866  003f ae000c        	ldw	x,#L75
1867  0042 cd0000        	call	_assert_failed
1869  0045 5b04          	addw	sp,#4
1870  0047               L402:
1871                     ; 442   CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
1873  0047 c650c9        	ld	a,20681
1874  004a a4e1          	and	a,#225
1875  004c c750c9        	ld	20681,a
1876                     ; 445   CLK->CCOR |= (uint8_t)CLK_CCO;
1878  004f c650c9        	ld	a,20681
1879  0052 1a01          	or	a,(OFST+1,sp)
1880  0054 c750c9        	ld	20681,a
1881                     ; 448   CLK->CCOR |= CLK_CCOR_CCOEN;
1883  0057 721050c9      	bset	20681,#0
1884                     ; 449 }
1887  005b 84            	pop	a
1888  005c 81            	ret
1954                     ; 459 void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
1954                     ; 460 {
1955                     .text:	section	.text,new
1956  0000               _CLK_ITConfig:
1958  0000 89            	pushw	x
1959       00000000      OFST:	set	0
1962                     ; 462   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1964  0001 9f            	ld	a,xl
1965  0002 4d            	tnz	a
1966  0003 2705          	jreq	L212
1967  0005 9f            	ld	a,xl
1968  0006 a101          	cp	a,#1
1969  0008 2603          	jrne	L012
1970  000a               L212:
1971  000a 4f            	clr	a
1972  000b 2010          	jra	L412
1973  000d               L012:
1974  000d ae01ce        	ldw	x,#462
1975  0010 89            	pushw	x
1976  0011 ae0000        	ldw	x,#0
1977  0014 89            	pushw	x
1978  0015 ae000c        	ldw	x,#L75
1979  0018 cd0000        	call	_assert_failed
1981  001b 5b04          	addw	sp,#4
1982  001d               L412:
1983                     ; 463   assert_param(IS_CLK_IT_OK(CLK_IT));
1985  001d 7b01          	ld	a,(OFST+1,sp)
1986  001f a10c          	cp	a,#12
1987  0021 2706          	jreq	L022
1988  0023 7b01          	ld	a,(OFST+1,sp)
1989  0025 a11c          	cp	a,#28
1990  0027 2603          	jrne	L612
1991  0029               L022:
1992  0029 4f            	clr	a
1993  002a 2010          	jra	L222
1994  002c               L612:
1995  002c ae01cf        	ldw	x,#463
1996  002f 89            	pushw	x
1997  0030 ae0000        	ldw	x,#0
1998  0033 89            	pushw	x
1999  0034 ae000c        	ldw	x,#L75
2000  0037 cd0000        	call	_assert_failed
2002  003a 5b04          	addw	sp,#4
2003  003c               L222:
2004                     ; 465   if (NewState != DISABLE)
2006  003c 0d02          	tnz	(OFST+2,sp)
2007  003e 271a          	jreq	L727
2008                     ; 467     switch (CLK_IT)
2010  0040 7b01          	ld	a,(OFST+1,sp)
2012                     ; 475     default:
2012                     ; 476       break;
2013  0042 a00c          	sub	a,#12
2014  0044 270a          	jreq	L366
2015  0046 a010          	sub	a,#16
2016  0048 2624          	jrne	L537
2017                     ; 469     case CLK_IT_SWIF: /* Enable the clock switch interrupt */
2017                     ; 470       CLK->SWCR |= CLK_SWCR_SWIEN;
2019  004a 721450c5      	bset	20677,#2
2020                     ; 471       break;
2022  004e 201e          	jra	L537
2023  0050               L366:
2024                     ; 472     case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
2024                     ; 473       CLK->CSSR |= CLK_CSSR_CSSDIE;
2026  0050 721450c8      	bset	20680,#2
2027                     ; 474       break;
2029  0054 2018          	jra	L537
2030  0056               L566:
2031                     ; 475     default:
2031                     ; 476       break;
2033  0056 2016          	jra	L537
2034  0058               L337:
2036  0058 2014          	jra	L537
2037  005a               L727:
2038                     ; 481     switch (CLK_IT)
2040  005a 7b01          	ld	a,(OFST+1,sp)
2042                     ; 489     default:
2042                     ; 490       break;
2043  005c a00c          	sub	a,#12
2044  005e 270a          	jreq	L176
2045  0060 a010          	sub	a,#16
2046  0062 260a          	jrne	L537
2047                     ; 483     case CLK_IT_SWIF: /* Disable the clock switch interrupt */
2047                     ; 484       CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
2049  0064 721550c5      	bres	20677,#2
2050                     ; 485       break;
2052  0068 2004          	jra	L537
2053  006a               L176:
2054                     ; 486     case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
2054                     ; 487       CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
2056  006a 721550c8      	bres	20680,#2
2057                     ; 488       break;
2058  006e               L537:
2059                     ; 493 }
2062  006e 85            	popw	x
2063  006f 81            	ret
2064  0070               L376:
2065                     ; 489     default:
2065                     ; 490       break;
2067  0070 20fc          	jra	L537
2068  0072               L147:
2069  0072 20fa          	jra	L537
2105                     ; 500 void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
2105                     ; 501 {
2106                     .text:	section	.text,new
2107  0000               _CLK_SYSCLKConfig:
2109  0000 88            	push	a
2110       00000000      OFST:	set	0
2113                     ; 503   assert_param(IS_CLK_PRESCALER_OK(CLK_Prescaler));
2115  0001 4d            	tnz	a
2116  0002 272c          	jreq	L032
2117  0004 a108          	cp	a,#8
2118  0006 2728          	jreq	L032
2119  0008 a110          	cp	a,#16
2120  000a 2724          	jreq	L032
2121  000c a118          	cp	a,#24
2122  000e 2720          	jreq	L032
2123  0010 a180          	cp	a,#128
2124  0012 271c          	jreq	L032
2125  0014 a181          	cp	a,#129
2126  0016 2718          	jreq	L032
2127  0018 a182          	cp	a,#130
2128  001a 2714          	jreq	L032
2129  001c a183          	cp	a,#131
2130  001e 2710          	jreq	L032
2131  0020 a184          	cp	a,#132
2132  0022 270c          	jreq	L032
2133  0024 a185          	cp	a,#133
2134  0026 2708          	jreq	L032
2135  0028 a186          	cp	a,#134
2136  002a 2704          	jreq	L032
2137  002c a187          	cp	a,#135
2138  002e 2603          	jrne	L622
2139  0030               L032:
2140  0030 4f            	clr	a
2141  0031 2010          	jra	L232
2142  0033               L622:
2143  0033 ae01f7        	ldw	x,#503
2144  0036 89            	pushw	x
2145  0037 ae0000        	ldw	x,#0
2146  003a 89            	pushw	x
2147  003b ae000c        	ldw	x,#L75
2148  003e cd0000        	call	_assert_failed
2150  0041 5b04          	addw	sp,#4
2151  0043               L232:
2152                     ; 505   if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
2154  0043 7b01          	ld	a,(OFST+1,sp)
2155  0045 a580          	bcp	a,#128
2156  0047 2614          	jrne	L167
2157                     ; 507     CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
2159  0049 c650c6        	ld	a,20678
2160  004c a4e7          	and	a,#231
2161  004e c750c6        	ld	20678,a
2162                     ; 508     CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
2164  0051 7b01          	ld	a,(OFST+1,sp)
2165  0053 a418          	and	a,#24
2166  0055 ca50c6        	or	a,20678
2167  0058 c750c6        	ld	20678,a
2169  005b 2012          	jra	L367
2170  005d               L167:
2171                     ; 512     CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
2173  005d c650c6        	ld	a,20678
2174  0060 a4f8          	and	a,#248
2175  0062 c750c6        	ld	20678,a
2176                     ; 513     CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
2178  0065 7b01          	ld	a,(OFST+1,sp)
2179  0067 a407          	and	a,#7
2180  0069 ca50c6        	or	a,20678
2181  006c c750c6        	ld	20678,a
2182  006f               L367:
2183                     ; 515 }
2186  006f 84            	pop	a
2187  0070 81            	ret
2244                     ; 523 void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
2244                     ; 524 {
2245                     .text:	section	.text,new
2246  0000               _CLK_SWIMConfig:
2248  0000 88            	push	a
2249       00000000      OFST:	set	0
2252                     ; 526   assert_param(IS_CLK_SWIMDIVIDER_OK(CLK_SWIMDivider));
2254  0001 4d            	tnz	a
2255  0002 2704          	jreq	L042
2256  0004 a101          	cp	a,#1
2257  0006 2603          	jrne	L632
2258  0008               L042:
2259  0008 4f            	clr	a
2260  0009 2010          	jra	L242
2261  000b               L632:
2262  000b ae020e        	ldw	x,#526
2263  000e 89            	pushw	x
2264  000f ae0000        	ldw	x,#0
2265  0012 89            	pushw	x
2266  0013 ae000c        	ldw	x,#L75
2267  0016 cd0000        	call	_assert_failed
2269  0019 5b04          	addw	sp,#4
2270  001b               L242:
2271                     ; 528   if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
2273  001b 0d01          	tnz	(OFST+1,sp)
2274  001d 2706          	jreq	L3101
2275                     ; 531     CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
2277  001f 721050cd      	bset	20685,#0
2279  0023 2004          	jra	L5101
2280  0025               L3101:
2281                     ; 536     CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
2283  0025 721150cd      	bres	20685,#0
2284  0029               L5101:
2285                     ; 538 }
2288  0029 84            	pop	a
2289  002a 81            	ret
2313                     ; 547 void CLK_ClockSecuritySystemEnable(void)
2313                     ; 548 {
2314                     .text:	section	.text,new
2315  0000               _CLK_ClockSecuritySystemEnable:
2319                     ; 550   CLK->CSSR |= CLK_CSSR_CSSEN;
2321  0000 721050c8      	bset	20680,#0
2322                     ; 551 }
2325  0004 81            	ret
2350                     ; 559 CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
2350                     ; 560 {
2351                     .text:	section	.text,new
2352  0000               _CLK_GetSYSCLKSource:
2356                     ; 561   return((CLK_Source_TypeDef)CLK->CMSR);
2358  0000 c650c3        	ld	a,20675
2361  0003 81            	ret
2424                     ; 569 uint32_t CLK_GetClockFreq(void)
2424                     ; 570 {
2425                     .text:	section	.text,new
2426  0000               _CLK_GetClockFreq:
2428  0000 5209          	subw	sp,#9
2429       00000009      OFST:	set	9
2432                     ; 571   uint32_t clockfrequency = 0;
2434                     ; 572   CLK_Source_TypeDef clocksource = CLK_SOURCE_HSI;
2436                     ; 573   uint8_t tmp = 0, presc = 0;
2440                     ; 576   clocksource = (CLK_Source_TypeDef)CLK->CMSR;
2442  0002 c650c3        	ld	a,20675
2443  0005 6b09          	ld	(OFST+0,sp),a
2445                     ; 578   if (clocksource == CLK_SOURCE_HSI)
2447  0007 7b09          	ld	a,(OFST+0,sp)
2448  0009 a1e1          	cp	a,#225
2449  000b 2641          	jrne	L1701
2450                     ; 580     tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
2452  000d c650c6        	ld	a,20678
2453  0010 a418          	and	a,#24
2454  0012 6b09          	ld	(OFST+0,sp),a
2456                     ; 581     tmp = (uint8_t)(tmp >> 3);
2458  0014 0409          	srl	(OFST+0,sp)
2459  0016 0409          	srl	(OFST+0,sp)
2460  0018 0409          	srl	(OFST+0,sp)
2462                     ; 582     presc = HSIDivFactor[tmp];
2464  001a 7b09          	ld	a,(OFST+0,sp)
2465  001c 5f            	clrw	x
2466  001d 97            	ld	xl,a
2467  001e d60000        	ld	a,(_HSIDivFactor,x)
2468  0021 6b09          	ld	(OFST+0,sp),a
2470                     ; 583     clockfrequency = HSI_VALUE / presc;
2472  0023 7b09          	ld	a,(OFST+0,sp)
2473  0025 b703          	ld	c_lreg+3,a
2474  0027 3f02          	clr	c_lreg+2
2475  0029 3f01          	clr	c_lreg+1
2476  002b 3f00          	clr	c_lreg
2477  002d 96            	ldw	x,sp
2478  002e 1c0001        	addw	x,#OFST-8
2479  0031 cd0000        	call	c_rtol
2482  0034 ae2400        	ldw	x,#9216
2483  0037 bf02          	ldw	c_lreg+2,x
2484  0039 ae00f4        	ldw	x,#244
2485  003c bf00          	ldw	c_lreg,x
2486  003e 96            	ldw	x,sp
2487  003f 1c0001        	addw	x,#OFST-8
2488  0042 cd0000        	call	c_ludv
2490  0045 96            	ldw	x,sp
2491  0046 1c0005        	addw	x,#OFST-4
2492  0049 cd0000        	call	c_rtol
2496  004c 201c          	jra	L3701
2497  004e               L1701:
2498                     ; 585   else if ( clocksource == CLK_SOURCE_LSI)
2500  004e 7b09          	ld	a,(OFST+0,sp)
2501  0050 a1d2          	cp	a,#210
2502  0052 260c          	jrne	L5701
2503                     ; 587     clockfrequency = LSI_VALUE;
2505  0054 aef400        	ldw	x,#62464
2506  0057 1f07          	ldw	(OFST-2,sp),x
2507  0059 ae0001        	ldw	x,#1
2508  005c 1f05          	ldw	(OFST-4,sp),x
2511  005e 200a          	jra	L3701
2512  0060               L5701:
2513                     ; 591     clockfrequency = HSE_VALUE;
2515  0060 ae2400        	ldw	x,#9216
2516  0063 1f07          	ldw	(OFST-2,sp),x
2517  0065 ae00f4        	ldw	x,#244
2518  0068 1f05          	ldw	(OFST-4,sp),x
2520  006a               L3701:
2521                     ; 594   return((uint32_t)clockfrequency);
2523  006a 96            	ldw	x,sp
2524  006b 1c0005        	addw	x,#OFST-4
2525  006e cd0000        	call	c_ltor
2529  0071 5b09          	addw	sp,#9
2530  0073 81            	ret
2630                     ; 604 void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
2630                     ; 605 {
2631                     .text:	section	.text,new
2632  0000               _CLK_AdjustHSICalibrationValue:
2634  0000 88            	push	a
2635       00000000      OFST:	set	0
2638                     ; 607   assert_param(IS_CLK_HSITRIMVALUE_OK(CLK_HSICalibrationValue));
2640  0001 4d            	tnz	a
2641  0002 271c          	jreq	L652
2642  0004 a101          	cp	a,#1
2643  0006 2718          	jreq	L652
2644  0008 a102          	cp	a,#2
2645  000a 2714          	jreq	L652
2646  000c a103          	cp	a,#3
2647  000e 2710          	jreq	L652
2648  0010 a104          	cp	a,#4
2649  0012 270c          	jreq	L652
2650  0014 a105          	cp	a,#5
2651  0016 2708          	jreq	L652
2652  0018 a106          	cp	a,#6
2653  001a 2704          	jreq	L652
2654  001c a107          	cp	a,#7
2655  001e 2603          	jrne	L452
2656  0020               L652:
2657  0020 4f            	clr	a
2658  0021 2010          	jra	L062
2659  0023               L452:
2660  0023 ae025f        	ldw	x,#607
2661  0026 89            	pushw	x
2662  0027 ae0000        	ldw	x,#0
2663  002a 89            	pushw	x
2664  002b ae000c        	ldw	x,#L75
2665  002e cd0000        	call	_assert_failed
2667  0031 5b04          	addw	sp,#4
2668  0033               L062:
2669                     ; 610   CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
2671  0033 c650cc        	ld	a,20684
2672  0036 a4f8          	and	a,#248
2673  0038 1a01          	or	a,(OFST+1,sp)
2674  003a c750cc        	ld	20684,a
2675                     ; 611 }
2678  003d 84            	pop	a
2679  003e 81            	ret
2703                     ; 622 void CLK_SYSCLKEmergencyClear(void)
2703                     ; 623 {
2704                     .text:	section	.text,new
2705  0000               _CLK_SYSCLKEmergencyClear:
2709                     ; 624   CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
2711  0000 721150c5      	bres	20677,#0
2712                     ; 625 }
2715  0004 81            	ret
2869                     ; 634 FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
2869                     ; 635 {
2870                     .text:	section	.text,new
2871  0000               _CLK_GetFlagStatus:
2873  0000 89            	pushw	x
2874  0001 5203          	subw	sp,#3
2875       00000003      OFST:	set	3
2878                     ; 636   uint16_t statusreg = 0;
2880                     ; 637   uint8_t tmpreg = 0;
2882                     ; 638   FlagStatus bitstatus = RESET;
2884                     ; 641   assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
2886  0003 a30110        	cpw	x,#272
2887  0006 2728          	jreq	L072
2888  0008 a30102        	cpw	x,#258
2889  000b 2723          	jreq	L072
2890  000d a30202        	cpw	x,#514
2891  0010 271e          	jreq	L072
2892  0012 a30308        	cpw	x,#776
2893  0015 2719          	jreq	L072
2894  0017 a30301        	cpw	x,#769
2895  001a 2714          	jreq	L072
2896  001c a30408        	cpw	x,#1032
2897  001f 270f          	jreq	L072
2898  0021 a30402        	cpw	x,#1026
2899  0024 270a          	jreq	L072
2900  0026 a30504        	cpw	x,#1284
2901  0029 2705          	jreq	L072
2902  002b a30502        	cpw	x,#1282
2903  002e 2603          	jrne	L662
2904  0030               L072:
2905  0030 4f            	clr	a
2906  0031 2010          	jra	L272
2907  0033               L662:
2908  0033 ae0281        	ldw	x,#641
2909  0036 89            	pushw	x
2910  0037 ae0000        	ldw	x,#0
2911  003a 89            	pushw	x
2912  003b ae000c        	ldw	x,#L75
2913  003e cd0000        	call	_assert_failed
2915  0041 5b04          	addw	sp,#4
2916  0043               L272:
2917                     ; 644   statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
2919  0043 7b04          	ld	a,(OFST+1,sp)
2920  0045 97            	ld	xl,a
2921  0046 7b05          	ld	a,(OFST+2,sp)
2922  0048 9f            	ld	a,xl
2923  0049 a4ff          	and	a,#255
2924  004b 97            	ld	xl,a
2925  004c 4f            	clr	a
2926  004d 02            	rlwa	x,a
2927  004e 1f01          	ldw	(OFST-2,sp),x
2928  0050 01            	rrwa	x,a
2930                     ; 647   if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
2932  0051 1e01          	ldw	x,(OFST-2,sp)
2933  0053 a30100        	cpw	x,#256
2934  0056 2607          	jrne	L3421
2935                     ; 649     tmpreg = CLK->ICKR;
2937  0058 c650c0        	ld	a,20672
2938  005b 6b03          	ld	(OFST+0,sp),a
2941  005d 202f          	jra	L5421
2942  005f               L3421:
2943                     ; 651   else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
2945  005f 1e01          	ldw	x,(OFST-2,sp)
2946  0061 a30200        	cpw	x,#512
2947  0064 2607          	jrne	L7421
2948                     ; 653     tmpreg = CLK->ECKR;
2950  0066 c650c1        	ld	a,20673
2951  0069 6b03          	ld	(OFST+0,sp),a
2954  006b 2021          	jra	L5421
2955  006d               L7421:
2956                     ; 655   else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
2958  006d 1e01          	ldw	x,(OFST-2,sp)
2959  006f a30300        	cpw	x,#768
2960  0072 2607          	jrne	L3521
2961                     ; 657     tmpreg = CLK->SWCR;
2963  0074 c650c5        	ld	a,20677
2964  0077 6b03          	ld	(OFST+0,sp),a
2967  0079 2013          	jra	L5421
2968  007b               L3521:
2969                     ; 659   else if (statusreg == 0x0400) /* The flag to check is in CSS register */
2971  007b 1e01          	ldw	x,(OFST-2,sp)
2972  007d a30400        	cpw	x,#1024
2973  0080 2607          	jrne	L7521
2974                     ; 661     tmpreg = CLK->CSSR;
2976  0082 c650c8        	ld	a,20680
2977  0085 6b03          	ld	(OFST+0,sp),a
2980  0087 2005          	jra	L5421
2981  0089               L7521:
2982                     ; 665     tmpreg = CLK->CCOR;
2984  0089 c650c9        	ld	a,20681
2985  008c 6b03          	ld	(OFST+0,sp),a
2987  008e               L5421:
2988                     ; 668   if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
2990  008e 7b05          	ld	a,(OFST+2,sp)
2991  0090 1503          	bcp	a,(OFST+0,sp)
2992  0092 2706          	jreq	L3621
2993                     ; 670     bitstatus = SET;
2995  0094 a601          	ld	a,#1
2996  0096 6b03          	ld	(OFST+0,sp),a
2999  0098 2002          	jra	L5621
3000  009a               L3621:
3001                     ; 674     bitstatus = RESET;
3003  009a 0f03          	clr	(OFST+0,sp)
3005  009c               L5621:
3006                     ; 678   return((FlagStatus)bitstatus);
3008  009c 7b03          	ld	a,(OFST+0,sp)
3011  009e 5b05          	addw	sp,#5
3012  00a0 81            	ret
3059                     ; 687 ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
3059                     ; 688 {
3060                     .text:	section	.text,new
3061  0000               _CLK_GetITStatus:
3063  0000 88            	push	a
3064  0001 88            	push	a
3065       00000001      OFST:	set	1
3068                     ; 689   ITStatus bitstatus = RESET;
3070                     ; 692   assert_param(IS_CLK_IT_OK(CLK_IT));
3072  0002 a10c          	cp	a,#12
3073  0004 2704          	jreq	L003
3074  0006 a11c          	cp	a,#28
3075  0008 2603          	jrne	L672
3076  000a               L003:
3077  000a 4f            	clr	a
3078  000b 2010          	jra	L203
3079  000d               L672:
3080  000d ae02b4        	ldw	x,#692
3081  0010 89            	pushw	x
3082  0011 ae0000        	ldw	x,#0
3083  0014 89            	pushw	x
3084  0015 ae000c        	ldw	x,#L75
3085  0018 cd0000        	call	_assert_failed
3087  001b 5b04          	addw	sp,#4
3088  001d               L203:
3089                     ; 694   if (CLK_IT == CLK_IT_SWIF)
3091  001d 7b02          	ld	a,(OFST+1,sp)
3092  001f a11c          	cp	a,#28
3093  0021 2613          	jrne	L1131
3094                     ; 697     if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
3096  0023 c650c5        	ld	a,20677
3097  0026 1402          	and	a,(OFST+1,sp)
3098  0028 a10c          	cp	a,#12
3099  002a 2606          	jrne	L3131
3100                     ; 699       bitstatus = SET;
3102  002c a601          	ld	a,#1
3103  002e 6b01          	ld	(OFST+0,sp),a
3106  0030 2015          	jra	L7131
3107  0032               L3131:
3108                     ; 703       bitstatus = RESET;
3110  0032 0f01          	clr	(OFST+0,sp)
3112  0034 2011          	jra	L7131
3113  0036               L1131:
3114                     ; 709     if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
3116  0036 c650c8        	ld	a,20680
3117  0039 1402          	and	a,(OFST+1,sp)
3118  003b a10c          	cp	a,#12
3119  003d 2606          	jrne	L1231
3120                     ; 711       bitstatus = SET;
3122  003f a601          	ld	a,#1
3123  0041 6b01          	ld	(OFST+0,sp),a
3126  0043 2002          	jra	L7131
3127  0045               L1231:
3128                     ; 715       bitstatus = RESET;
3130  0045 0f01          	clr	(OFST+0,sp)
3132  0047               L7131:
3133                     ; 720   return bitstatus;
3135  0047 7b01          	ld	a,(OFST+0,sp)
3138  0049 85            	popw	x
3139  004a 81            	ret
3176                     ; 729 void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
3176                     ; 730 {
3177                     .text:	section	.text,new
3178  0000               _CLK_ClearITPendingBit:
3180  0000 88            	push	a
3181       00000000      OFST:	set	0
3184                     ; 732   assert_param(IS_CLK_IT_OK(CLK_IT));
3186  0001 a10c          	cp	a,#12
3187  0003 2704          	jreq	L013
3188  0005 a11c          	cp	a,#28
3189  0007 2603          	jrne	L603
3190  0009               L013:
3191  0009 4f            	clr	a
3192  000a 2010          	jra	L213
3193  000c               L603:
3194  000c ae02dc        	ldw	x,#732
3195  000f 89            	pushw	x
3196  0010 ae0000        	ldw	x,#0
3197  0013 89            	pushw	x
3198  0014 ae000c        	ldw	x,#L75
3199  0017 cd0000        	call	_assert_failed
3201  001a 5b04          	addw	sp,#4
3202  001c               L213:
3203                     ; 734   if (CLK_IT == (uint8_t)CLK_IT_CSSD)
3205  001c 7b01          	ld	a,(OFST+1,sp)
3206  001e a10c          	cp	a,#12
3207  0020 2606          	jrne	L3431
3208                     ; 737     CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
3210  0022 721750c8      	bres	20680,#3
3212  0026 2004          	jra	L5431
3213  0028               L3431:
3214                     ; 742     CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
3216  0028 721750c5      	bres	20677,#3
3217  002c               L5431:
3218                     ; 745 }
3221  002c 84            	pop	a
3222  002d 81            	ret
3257                     	xdef	_CLKPrescTable
3258                     	xdef	_HSIDivFactor
3259                     	xdef	_CLK_ClearITPendingBit
3260                     	xdef	_CLK_GetITStatus
3261                     	xdef	_CLK_GetFlagStatus
3262                     	xdef	_CLK_GetSYSCLKSource
3263                     	xdef	_CLK_GetClockFreq
3264                     	xdef	_CLK_AdjustHSICalibrationValue
3265                     	xdef	_CLK_SYSCLKEmergencyClear
3266                     	xdef	_CLK_ClockSecuritySystemEnable
3267                     	xdef	_CLK_SWIMConfig
3268                     	xdef	_CLK_SYSCLKConfig
3269                     	xdef	_CLK_ITConfig
3270                     	xdef	_CLK_CCOConfig
3271                     	xdef	_CLK_HSIPrescalerConfig
3272                     	xdef	_CLK_ClockSwitchConfig
3273                     	xdef	_CLK_PeripheralClockConfig
3274                     	xdef	_CLK_SlowActiveHaltWakeUpCmd
3275                     	xdef	_CLK_FastHaltWakeUpCmd
3276                     	xdef	_CLK_ClockSwitchCmd
3277                     	xdef	_CLK_CCOCmd
3278                     	xdef	_CLK_LSICmd
3279                     	xdef	_CLK_HSICmd
3280                     	xdef	_CLK_HSECmd
3281                     	xdef	_CLK_DeInit
3282                     	xref	_assert_failed
3283                     	switch	.const
3284  000c               L75:
3285  000c 2e2e5c6c6962  	dc.b	"..\libs\src\stm8s_"
3286  001e 636c6b2e6300  	dc.b	"clk.c",0
3287                     	xref.b	c_lreg
3288                     	xref.b	c_x
3308                     	xref	c_ltor
3309                     	xref	c_ludv
3310                     	xref	c_rtol
3311                     	end
