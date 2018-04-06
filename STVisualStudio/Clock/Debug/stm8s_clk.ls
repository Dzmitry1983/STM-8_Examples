   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
  15                     .const:	section	.text
  16  0000               _HSIDivFactor:
  17  0000 01            	dc.b	1
  18  0001 02            	dc.b	2
  19  0002 04            	dc.b	4
  20  0003 08            	dc.b	8
  21  0004               _CLKPrescTable:
  22  0004 01            	dc.b	1
  23  0005 02            	dc.b	2
  24  0006 04            	dc.b	4
  25  0007 08            	dc.b	8
  26  0008 0a            	dc.b	10
  27  0009 10            	dc.b	16
  28  000a 14            	dc.b	20
  29  000b 28            	dc.b	40
  58                     ; 72 void CLK_DeInit(void)
  58                     ; 73 {
  60                     	switch	.text
  61  0000               _CLK_DeInit:
  65                     ; 74   CLK->ICKR = CLK_ICKR_RESET_VALUE;
  67  0000 350150c0      	mov	20672,#1
  68                     ; 75   CLK->ECKR = CLK_ECKR_RESET_VALUE;
  70  0004 725f50c1      	clr	20673
  71                     ; 76   CLK->SWR  = CLK_SWR_RESET_VALUE;
  73  0008 35e150c4      	mov	20676,#225
  74                     ; 77   CLK->SWCR = CLK_SWCR_RESET_VALUE;
  76  000c 725f50c5      	clr	20677
  77                     ; 78   CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
  79  0010 351850c6      	mov	20678,#24
  80                     ; 79   CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
  82  0014 35ff50c7      	mov	20679,#255
  83                     ; 80   CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
  85  0018 35ff50ca      	mov	20682,#255
  86                     ; 81   CLK->CSSR = CLK_CSSR_RESET_VALUE;
  88  001c 725f50c8      	clr	20680
  89                     ; 82   CLK->CCOR = CLK_CCOR_RESET_VALUE;
  91  0020 725f50c9      	clr	20681
  93  0024               L52:
  94                     ; 83   while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
  96  0024 c650c9        	ld	a,20681
  97  0027 a501          	bcp	a,#1
  98  0029 26f9          	jrne	L52
  99                     ; 85   CLK->CCOR = CLK_CCOR_RESET_VALUE;
 101  002b 725f50c9      	clr	20681
 102                     ; 86   CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
 104  002f 725f50cc      	clr	20684
 105                     ; 87   CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
 107  0033 725f50cd      	clr	20685
 108                     ; 88 }
 111  0037 81            	ret
 168                     ; 99 void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
 168                     ; 100 {
 169                     	switch	.text
 170  0038               _CLK_FastHaltWakeUpCmd:
 172  0038 88            	push	a
 173       00000000      OFST:	set	0
 176                     ; 102   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 178  0039 4d            	tnz	a
 179  003a 2704          	jreq	L21
 180  003c a101          	cp	a,#1
 181  003e 2603          	jrne	L01
 182  0040               L21:
 183  0040 4f            	clr	a
 184  0041 2010          	jra	L41
 185  0043               L01:
 186  0043 ae0066        	ldw	x,#102
 187  0046 89            	pushw	x
 188  0047 ae0000        	ldw	x,#0
 189  004a 89            	pushw	x
 190  004b ae000c        	ldw	x,#L75
 191  004e cd0000        	call	_assert_failed
 193  0051 5b04          	addw	sp,#4
 194  0053               L41:
 195                     ; 104   if (NewState != DISABLE)
 197  0053 0d01          	tnz	(OFST+1,sp)
 198  0055 2706          	jreq	L16
 199                     ; 107     CLK->ICKR |= CLK_ICKR_FHWU;
 201  0057 721450c0      	bset	20672,#2
 203  005b 2004          	jra	L36
 204  005d               L16:
 205                     ; 112     CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
 207  005d 721550c0      	bres	20672,#2
 208  0061               L36:
 209                     ; 114 }
 212  0061 84            	pop	a
 213  0062 81            	ret
 249                     ; 121 void CLK_HSECmd(FunctionalState NewState)
 249                     ; 122 {
 250                     	switch	.text
 251  0063               _CLK_HSECmd:
 253  0063 88            	push	a
 254       00000000      OFST:	set	0
 257                     ; 124   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 259  0064 4d            	tnz	a
 260  0065 2704          	jreq	L22
 261  0067 a101          	cp	a,#1
 262  0069 2603          	jrne	L02
 263  006b               L22:
 264  006b 4f            	clr	a
 265  006c 2010          	jra	L42
 266  006e               L02:
 267  006e ae007c        	ldw	x,#124
 268  0071 89            	pushw	x
 269  0072 ae0000        	ldw	x,#0
 270  0075 89            	pushw	x
 271  0076 ae000c        	ldw	x,#L75
 272  0079 cd0000        	call	_assert_failed
 274  007c 5b04          	addw	sp,#4
 275  007e               L42:
 276                     ; 126   if (NewState != DISABLE)
 278  007e 0d01          	tnz	(OFST+1,sp)
 279  0080 2706          	jreq	L301
 280                     ; 129     CLK->ECKR |= CLK_ECKR_HSEEN;
 282  0082 721050c1      	bset	20673,#0
 284  0086 2004          	jra	L501
 285  0088               L301:
 286                     ; 134     CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
 288  0088 721150c1      	bres	20673,#0
 289  008c               L501:
 290                     ; 136 }
 293  008c 84            	pop	a
 294  008d 81            	ret
 330                     ; 143 void CLK_HSICmd(FunctionalState NewState)
 330                     ; 144 {
 331                     	switch	.text
 332  008e               _CLK_HSICmd:
 334  008e 88            	push	a
 335       00000000      OFST:	set	0
 338                     ; 146   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 340  008f 4d            	tnz	a
 341  0090 2704          	jreq	L23
 342  0092 a101          	cp	a,#1
 343  0094 2603          	jrne	L03
 344  0096               L23:
 345  0096 4f            	clr	a
 346  0097 2010          	jra	L43
 347  0099               L03:
 348  0099 ae0092        	ldw	x,#146
 349  009c 89            	pushw	x
 350  009d ae0000        	ldw	x,#0
 351  00a0 89            	pushw	x
 352  00a1 ae000c        	ldw	x,#L75
 353  00a4 cd0000        	call	_assert_failed
 355  00a7 5b04          	addw	sp,#4
 356  00a9               L43:
 357                     ; 148   if (NewState != DISABLE)
 359  00a9 0d01          	tnz	(OFST+1,sp)
 360  00ab 2706          	jreq	L521
 361                     ; 151     CLK->ICKR |= CLK_ICKR_HSIEN;
 363  00ad 721050c0      	bset	20672,#0
 365  00b1 2004          	jra	L721
 366  00b3               L521:
 367                     ; 156     CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
 369  00b3 721150c0      	bres	20672,#0
 370  00b7               L721:
 371                     ; 158 }
 374  00b7 84            	pop	a
 375  00b8 81            	ret
 411                     ; 166 void CLK_LSICmd(FunctionalState NewState)
 411                     ; 167 {
 412                     	switch	.text
 413  00b9               _CLK_LSICmd:
 415  00b9 88            	push	a
 416       00000000      OFST:	set	0
 419                     ; 169   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 421  00ba 4d            	tnz	a
 422  00bb 2704          	jreq	L24
 423  00bd a101          	cp	a,#1
 424  00bf 2603          	jrne	L04
 425  00c1               L24:
 426  00c1 4f            	clr	a
 427  00c2 2010          	jra	L44
 428  00c4               L04:
 429  00c4 ae00a9        	ldw	x,#169
 430  00c7 89            	pushw	x
 431  00c8 ae0000        	ldw	x,#0
 432  00cb 89            	pushw	x
 433  00cc ae000c        	ldw	x,#L75
 434  00cf cd0000        	call	_assert_failed
 436  00d2 5b04          	addw	sp,#4
 437  00d4               L44:
 438                     ; 171   if (NewState != DISABLE)
 440  00d4 0d01          	tnz	(OFST+1,sp)
 441  00d6 2706          	jreq	L741
 442                     ; 174     CLK->ICKR |= CLK_ICKR_LSIEN;
 444  00d8 721650c0      	bset	20672,#3
 446  00dc 2004          	jra	L151
 447  00de               L741:
 448                     ; 179     CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
 450  00de 721750c0      	bres	20672,#3
 451  00e2               L151:
 452                     ; 181 }
 455  00e2 84            	pop	a
 456  00e3 81            	ret
 492                     ; 189 void CLK_CCOCmd(FunctionalState NewState)
 492                     ; 190 {
 493                     	switch	.text
 494  00e4               _CLK_CCOCmd:
 496  00e4 88            	push	a
 497       00000000      OFST:	set	0
 500                     ; 192   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 502  00e5 4d            	tnz	a
 503  00e6 2704          	jreq	L25
 504  00e8 a101          	cp	a,#1
 505  00ea 2603          	jrne	L05
 506  00ec               L25:
 507  00ec 4f            	clr	a
 508  00ed 2010          	jra	L45
 509  00ef               L05:
 510  00ef ae00c0        	ldw	x,#192
 511  00f2 89            	pushw	x
 512  00f3 ae0000        	ldw	x,#0
 513  00f6 89            	pushw	x
 514  00f7 ae000c        	ldw	x,#L75
 515  00fa cd0000        	call	_assert_failed
 517  00fd 5b04          	addw	sp,#4
 518  00ff               L45:
 519                     ; 194   if (NewState != DISABLE)
 521  00ff 0d01          	tnz	(OFST+1,sp)
 522  0101 2706          	jreq	L171
 523                     ; 197     CLK->CCOR |= CLK_CCOR_CCOEN;
 525  0103 721050c9      	bset	20681,#0
 527  0107 2004          	jra	L371
 528  0109               L171:
 529                     ; 202     CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
 531  0109 721150c9      	bres	20681,#0
 532  010d               L371:
 533                     ; 204 }
 536  010d 84            	pop	a
 537  010e 81            	ret
 573                     ; 213 void CLK_ClockSwitchCmd(FunctionalState NewState)
 573                     ; 214 {
 574                     	switch	.text
 575  010f               _CLK_ClockSwitchCmd:
 577  010f 88            	push	a
 578       00000000      OFST:	set	0
 581                     ; 216   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 583  0110 4d            	tnz	a
 584  0111 2704          	jreq	L26
 585  0113 a101          	cp	a,#1
 586  0115 2603          	jrne	L06
 587  0117               L26:
 588  0117 4f            	clr	a
 589  0118 2010          	jra	L46
 590  011a               L06:
 591  011a ae00d8        	ldw	x,#216
 592  011d 89            	pushw	x
 593  011e ae0000        	ldw	x,#0
 594  0121 89            	pushw	x
 595  0122 ae000c        	ldw	x,#L75
 596  0125 cd0000        	call	_assert_failed
 598  0128 5b04          	addw	sp,#4
 599  012a               L46:
 600                     ; 218   if (NewState != DISABLE )
 602  012a 0d01          	tnz	(OFST+1,sp)
 603  012c 2706          	jreq	L312
 604                     ; 221     CLK->SWCR |= CLK_SWCR_SWEN;
 606  012e 721250c5      	bset	20677,#1
 608  0132 2004          	jra	L512
 609  0134               L312:
 610                     ; 226     CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
 612  0134 721350c5      	bres	20677,#1
 613  0138               L512:
 614                     ; 228 }
 617  0138 84            	pop	a
 618  0139 81            	ret
 655                     ; 238 void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
 655                     ; 239 {
 656                     	switch	.text
 657  013a               _CLK_SlowActiveHaltWakeUpCmd:
 659  013a 88            	push	a
 660       00000000      OFST:	set	0
 663                     ; 241   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 665  013b 4d            	tnz	a
 666  013c 2704          	jreq	L27
 667  013e a101          	cp	a,#1
 668  0140 2603          	jrne	L07
 669  0142               L27:
 670  0142 4f            	clr	a
 671  0143 2010          	jra	L47
 672  0145               L07:
 673  0145 ae00f1        	ldw	x,#241
 674  0148 89            	pushw	x
 675  0149 ae0000        	ldw	x,#0
 676  014c 89            	pushw	x
 677  014d ae000c        	ldw	x,#L75
 678  0150 cd0000        	call	_assert_failed
 680  0153 5b04          	addw	sp,#4
 681  0155               L47:
 682                     ; 243   if (NewState != DISABLE)
 684  0155 0d01          	tnz	(OFST+1,sp)
 685  0157 2706          	jreq	L532
 686                     ; 246     CLK->ICKR |= CLK_ICKR_SWUAH;
 688  0159 721a50c0      	bset	20672,#5
 690  015d 2004          	jra	L732
 691  015f               L532:
 692                     ; 251     CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
 694  015f 721b50c0      	bres	20672,#5
 695  0163               L732:
 696                     ; 253 }
 699  0163 84            	pop	a
 700  0164 81            	ret
 860                     ; 263 void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
 860                     ; 264 {
 861                     	switch	.text
 862  0165               _CLK_PeripheralClockConfig:
 864  0165 89            	pushw	x
 865       00000000      OFST:	set	0
 868                     ; 266   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 870  0166 9f            	ld	a,xl
 871  0167 4d            	tnz	a
 872  0168 2705          	jreq	L201
 873  016a 9f            	ld	a,xl
 874  016b a101          	cp	a,#1
 875  016d 2603          	jrne	L001
 876  016f               L201:
 877  016f 4f            	clr	a
 878  0170 2010          	jra	L401
 879  0172               L001:
 880  0172 ae010a        	ldw	x,#266
 881  0175 89            	pushw	x
 882  0176 ae0000        	ldw	x,#0
 883  0179 89            	pushw	x
 884  017a ae000c        	ldw	x,#L75
 885  017d cd0000        	call	_assert_failed
 887  0180 5b04          	addw	sp,#4
 888  0182               L401:
 889                     ; 267   assert_param(IS_CLK_PERIPHERAL_OK(CLK_Peripheral));
 891  0182 0d01          	tnz	(OFST+1,sp)
 892  0184 274e          	jreq	L011
 893  0186 7b01          	ld	a,(OFST+1,sp)
 894  0188 a101          	cp	a,#1
 895  018a 2748          	jreq	L011
 896  018c 7b01          	ld	a,(OFST+1,sp)
 897  018e a103          	cp	a,#3
 898  0190 2742          	jreq	L011
 899  0192 7b01          	ld	a,(OFST+1,sp)
 900  0194 a103          	cp	a,#3
 901  0196 273c          	jreq	L011
 902  0198 7b01          	ld	a,(OFST+1,sp)
 903  019a a103          	cp	a,#3
 904  019c 2736          	jreq	L011
 905  019e 7b01          	ld	a,(OFST+1,sp)
 906  01a0 a104          	cp	a,#4
 907  01a2 2730          	jreq	L011
 908  01a4 7b01          	ld	a,(OFST+1,sp)
 909  01a6 a105          	cp	a,#5
 910  01a8 272a          	jreq	L011
 911  01aa 7b01          	ld	a,(OFST+1,sp)
 912  01ac a105          	cp	a,#5
 913  01ae 2724          	jreq	L011
 914  01b0 7b01          	ld	a,(OFST+1,sp)
 915  01b2 a104          	cp	a,#4
 916  01b4 271e          	jreq	L011
 917  01b6 7b01          	ld	a,(OFST+1,sp)
 918  01b8 a106          	cp	a,#6
 919  01ba 2718          	jreq	L011
 920  01bc 7b01          	ld	a,(OFST+1,sp)
 921  01be a107          	cp	a,#7
 922  01c0 2712          	jreq	L011
 923  01c2 7b01          	ld	a,(OFST+1,sp)
 924  01c4 a117          	cp	a,#23
 925  01c6 270c          	jreq	L011
 926  01c8 7b01          	ld	a,(OFST+1,sp)
 927  01ca a113          	cp	a,#19
 928  01cc 2706          	jreq	L011
 929  01ce 7b01          	ld	a,(OFST+1,sp)
 930  01d0 a112          	cp	a,#18
 931  01d2 2603          	jrne	L601
 932  01d4               L011:
 933  01d4 4f            	clr	a
 934  01d5 2010          	jra	L211
 935  01d7               L601:
 936  01d7 ae010b        	ldw	x,#267
 937  01da 89            	pushw	x
 938  01db ae0000        	ldw	x,#0
 939  01de 89            	pushw	x
 940  01df ae000c        	ldw	x,#L75
 941  01e2 cd0000        	call	_assert_failed
 943  01e5 5b04          	addw	sp,#4
 944  01e7               L211:
 945                     ; 269   if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
 947  01e7 7b01          	ld	a,(OFST+1,sp)
 948  01e9 a510          	bcp	a,#16
 949  01eb 2633          	jrne	L323
 950                     ; 271     if (NewState != DISABLE)
 952  01ed 0d02          	tnz	(OFST+2,sp)
 953  01ef 2717          	jreq	L523
 954                     ; 274       CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 956  01f1 7b01          	ld	a,(OFST+1,sp)
 957  01f3 a40f          	and	a,#15
 958  01f5 5f            	clrw	x
 959  01f6 97            	ld	xl,a
 960  01f7 a601          	ld	a,#1
 961  01f9 5d            	tnzw	x
 962  01fa 2704          	jreq	L411
 963  01fc               L611:
 964  01fc 48            	sll	a
 965  01fd 5a            	decw	x
 966  01fe 26fc          	jrne	L611
 967  0200               L411:
 968  0200 ca50c7        	or	a,20679
 969  0203 c750c7        	ld	20679,a
 971  0206 2049          	jra	L133
 972  0208               L523:
 973                     ; 279       CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
 975  0208 7b01          	ld	a,(OFST+1,sp)
 976  020a a40f          	and	a,#15
 977  020c 5f            	clrw	x
 978  020d 97            	ld	xl,a
 979  020e a601          	ld	a,#1
 980  0210 5d            	tnzw	x
 981  0211 2704          	jreq	L021
 982  0213               L221:
 983  0213 48            	sll	a
 984  0214 5a            	decw	x
 985  0215 26fc          	jrne	L221
 986  0217               L021:
 987  0217 43            	cpl	a
 988  0218 c450c7        	and	a,20679
 989  021b c750c7        	ld	20679,a
 990  021e 2031          	jra	L133
 991  0220               L323:
 992                     ; 284     if (NewState != DISABLE)
 994  0220 0d02          	tnz	(OFST+2,sp)
 995  0222 2717          	jreq	L333
 996                     ; 287       CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 998  0224 7b01          	ld	a,(OFST+1,sp)
 999  0226 a40f          	and	a,#15
1000  0228 5f            	clrw	x
1001  0229 97            	ld	xl,a
1002  022a a601          	ld	a,#1
1003  022c 5d            	tnzw	x
1004  022d 2704          	jreq	L421
1005  022f               L621:
1006  022f 48            	sll	a
1007  0230 5a            	decw	x
1008  0231 26fc          	jrne	L621
1009  0233               L421:
1010  0233 ca50ca        	or	a,20682
1011  0236 c750ca        	ld	20682,a
1013  0239 2016          	jra	L133
1014  023b               L333:
1015                     ; 292       CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
1017  023b 7b01          	ld	a,(OFST+1,sp)
1018  023d a40f          	and	a,#15
1019  023f 5f            	clrw	x
1020  0240 97            	ld	xl,a
1021  0241 a601          	ld	a,#1
1022  0243 5d            	tnzw	x
1023  0244 2704          	jreq	L031
1024  0246               L231:
1025  0246 48            	sll	a
1026  0247 5a            	decw	x
1027  0248 26fc          	jrne	L231
1028  024a               L031:
1029  024a 43            	cpl	a
1030  024b c450ca        	and	a,20682
1031  024e c750ca        	ld	20682,a
1032  0251               L133:
1033                     ; 295 }
1036  0251 85            	popw	x
1037  0252 81            	ret
1226                     ; 309 ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
1226                     ; 310 {
1227                     	switch	.text
1228  0253               _CLK_ClockSwitchConfig:
1230  0253 89            	pushw	x
1231  0254 5204          	subw	sp,#4
1232       00000004      OFST:	set	4
1235                     ; 312   uint16_t DownCounter = CLK_TIMEOUT;
1237  0256 aeffff        	ldw	x,#65535
1238  0259 1f03          	ldw	(OFST-1,sp),x
1240                     ; 313   ErrorStatus Swif = ERROR;
1242                     ; 316   assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
1244  025b 7b06          	ld	a,(OFST+2,sp)
1245  025d a1e1          	cp	a,#225
1246  025f 270c          	jreq	L041
1247  0261 7b06          	ld	a,(OFST+2,sp)
1248  0263 a1d2          	cp	a,#210
1249  0265 2706          	jreq	L041
1250  0267 7b06          	ld	a,(OFST+2,sp)
1251  0269 a1b4          	cp	a,#180
1252  026b 2603          	jrne	L631
1253  026d               L041:
1254  026d 4f            	clr	a
1255  026e 2010          	jra	L241
1256  0270               L631:
1257  0270 ae013c        	ldw	x,#316
1258  0273 89            	pushw	x
1259  0274 ae0000        	ldw	x,#0
1260  0277 89            	pushw	x
1261  0278 ae000c        	ldw	x,#L75
1262  027b cd0000        	call	_assert_failed
1264  027e 5b04          	addw	sp,#4
1265  0280               L241:
1266                     ; 317   assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
1268  0280 0d05          	tnz	(OFST+1,sp)
1269  0282 2706          	jreq	L641
1270  0284 7b05          	ld	a,(OFST+1,sp)
1271  0286 a101          	cp	a,#1
1272  0288 2603          	jrne	L441
1273  028a               L641:
1274  028a 4f            	clr	a
1275  028b 2010          	jra	L051
1276  028d               L441:
1277  028d ae013d        	ldw	x,#317
1278  0290 89            	pushw	x
1279  0291 ae0000        	ldw	x,#0
1280  0294 89            	pushw	x
1281  0295 ae000c        	ldw	x,#L75
1282  0298 cd0000        	call	_assert_failed
1284  029b 5b04          	addw	sp,#4
1285  029d               L051:
1286                     ; 318   assert_param(IS_FUNCTIONALSTATE_OK(ITState));
1288  029d 0d09          	tnz	(OFST+5,sp)
1289  029f 2706          	jreq	L451
1290  02a1 7b09          	ld	a,(OFST+5,sp)
1291  02a3 a101          	cp	a,#1
1292  02a5 2603          	jrne	L251
1293  02a7               L451:
1294  02a7 4f            	clr	a
1295  02a8 2010          	jra	L651
1296  02aa               L251:
1297  02aa ae013e        	ldw	x,#318
1298  02ad 89            	pushw	x
1299  02ae ae0000        	ldw	x,#0
1300  02b1 89            	pushw	x
1301  02b2 ae000c        	ldw	x,#L75
1302  02b5 cd0000        	call	_assert_failed
1304  02b8 5b04          	addw	sp,#4
1305  02ba               L651:
1306                     ; 319   assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
1308  02ba 0d0a          	tnz	(OFST+6,sp)
1309  02bc 2706          	jreq	L261
1310  02be 7b0a          	ld	a,(OFST+6,sp)
1311  02c0 a101          	cp	a,#1
1312  02c2 2603          	jrne	L061
1313  02c4               L261:
1314  02c4 4f            	clr	a
1315  02c5 2010          	jra	L461
1316  02c7               L061:
1317  02c7 ae013f        	ldw	x,#319
1318  02ca 89            	pushw	x
1319  02cb ae0000        	ldw	x,#0
1320  02ce 89            	pushw	x
1321  02cf ae000c        	ldw	x,#L75
1322  02d2 cd0000        	call	_assert_failed
1324  02d5 5b04          	addw	sp,#4
1325  02d7               L461:
1326                     ; 322   clock_master = (CLK_Source_TypeDef)CLK->CMSR;
1328  02d7 c650c3        	ld	a,20675
1329  02da 6b01          	ld	(OFST-3,sp),a
1331                     ; 325   if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
1333  02dc 7b05          	ld	a,(OFST+1,sp)
1334  02de a101          	cp	a,#1
1335  02e0 264b          	jrne	L744
1336                     ; 328     CLK->SWCR |= CLK_SWCR_SWEN;
1338  02e2 721250c5      	bset	20677,#1
1339                     ; 331     if (ITState != DISABLE)
1341  02e6 0d09          	tnz	(OFST+5,sp)
1342  02e8 2706          	jreq	L154
1343                     ; 333       CLK->SWCR |= CLK_SWCR_SWIEN;
1345  02ea 721450c5      	bset	20677,#2
1347  02ee 2004          	jra	L354
1348  02f0               L154:
1349                     ; 337       CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1351  02f0 721550c5      	bres	20677,#2
1352  02f4               L354:
1353                     ; 341     CLK->SWR = (uint8_t)CLK_NewClock;
1355  02f4 7b06          	ld	a,(OFST+2,sp)
1356  02f6 c750c4        	ld	20676,a
1358  02f9 2007          	jra	L164
1359  02fb               L554:
1360                     ; 346       DownCounter--;
1362  02fb 1e03          	ldw	x,(OFST-1,sp)
1363  02fd 1d0001        	subw	x,#1
1364  0300 1f03          	ldw	(OFST-1,sp),x
1366  0302               L164:
1367                     ; 344     while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
1369  0302 c650c5        	ld	a,20677
1370  0305 a501          	bcp	a,#1
1371  0307 2704          	jreq	L564
1373  0309 1e03          	ldw	x,(OFST-1,sp)
1374  030b 26ee          	jrne	L554
1375  030d               L564:
1376                     ; 349     if(DownCounter != 0)
1378  030d 1e03          	ldw	x,(OFST-1,sp)
1379  030f 2706          	jreq	L764
1380                     ; 351       Swif = SUCCESS;
1382  0311 a601          	ld	a,#1
1383  0313 6b02          	ld	(OFST-2,sp),a
1386  0315 2002          	jra	L374
1387  0317               L764:
1388                     ; 355       Swif = ERROR;
1390  0317 0f02          	clr	(OFST-2,sp)
1392  0319               L374:
1393                     ; 390   if(Swif != ERROR)
1395  0319 0d02          	tnz	(OFST-2,sp)
1396  031b 2767          	jreq	L715
1397                     ; 393     if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
1399  031d 0d0a          	tnz	(OFST+6,sp)
1400  031f 2645          	jrne	L125
1402  0321 7b01          	ld	a,(OFST-3,sp)
1403  0323 a1e1          	cp	a,#225
1404  0325 263f          	jrne	L125
1405                     ; 395       CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
1407  0327 721150c0      	bres	20672,#0
1409  032b 2057          	jra	L715
1410  032d               L744:
1411                     ; 361     if (ITState != DISABLE)
1413  032d 0d09          	tnz	(OFST+5,sp)
1414  032f 2706          	jreq	L574
1415                     ; 363       CLK->SWCR |= CLK_SWCR_SWIEN;
1417  0331 721450c5      	bset	20677,#2
1419  0335 2004          	jra	L774
1420  0337               L574:
1421                     ; 367       CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1423  0337 721550c5      	bres	20677,#2
1424  033b               L774:
1425                     ; 371     CLK->SWR = (uint8_t)CLK_NewClock;
1427  033b 7b06          	ld	a,(OFST+2,sp)
1428  033d c750c4        	ld	20676,a
1430  0340 2007          	jra	L505
1431  0342               L105:
1432                     ; 376       DownCounter--;
1434  0342 1e03          	ldw	x,(OFST-1,sp)
1435  0344 1d0001        	subw	x,#1
1436  0347 1f03          	ldw	(OFST-1,sp),x
1438  0349               L505:
1439                     ; 374     while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
1441  0349 c650c5        	ld	a,20677
1442  034c a508          	bcp	a,#8
1443  034e 2704          	jreq	L115
1445  0350 1e03          	ldw	x,(OFST-1,sp)
1446  0352 26ee          	jrne	L105
1447  0354               L115:
1448                     ; 379     if(DownCounter != 0)
1450  0354 1e03          	ldw	x,(OFST-1,sp)
1451  0356 270a          	jreq	L315
1452                     ; 382       CLK->SWCR |= CLK_SWCR_SWEN;
1454  0358 721250c5      	bset	20677,#1
1455                     ; 383       Swif = SUCCESS;
1457  035c a601          	ld	a,#1
1458  035e 6b02          	ld	(OFST-2,sp),a
1461  0360 20b7          	jra	L374
1462  0362               L315:
1463                     ; 387       Swif = ERROR;
1465  0362 0f02          	clr	(OFST-2,sp)
1467  0364 20b3          	jra	L374
1468  0366               L125:
1469                     ; 397     else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
1471  0366 0d0a          	tnz	(OFST+6,sp)
1472  0368 260c          	jrne	L525
1474  036a 7b01          	ld	a,(OFST-3,sp)
1475  036c a1d2          	cp	a,#210
1476  036e 2606          	jrne	L525
1477                     ; 399       CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
1479  0370 721750c0      	bres	20672,#3
1481  0374 200e          	jra	L715
1482  0376               L525:
1483                     ; 401     else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
1485  0376 0d0a          	tnz	(OFST+6,sp)
1486  0378 260a          	jrne	L715
1488  037a 7b01          	ld	a,(OFST-3,sp)
1489  037c a1b4          	cp	a,#180
1490  037e 2604          	jrne	L715
1491                     ; 403       CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
1493  0380 721150c1      	bres	20673,#0
1494  0384               L715:
1495                     ; 406   return(Swif);
1497  0384 7b02          	ld	a,(OFST-2,sp)
1500  0386 5b06          	addw	sp,#6
1501  0388 81            	ret
1640                     ; 415 void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
1640                     ; 416 {
1641                     	switch	.text
1642  0389               _CLK_HSIPrescalerConfig:
1644  0389 88            	push	a
1645       00000000      OFST:	set	0
1648                     ; 418   assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
1650  038a 4d            	tnz	a
1651  038b 270c          	jreq	L271
1652  038d a108          	cp	a,#8
1653  038f 2708          	jreq	L271
1654  0391 a110          	cp	a,#16
1655  0393 2704          	jreq	L271
1656  0395 a118          	cp	a,#24
1657  0397 2603          	jrne	L071
1658  0399               L271:
1659  0399 4f            	clr	a
1660  039a 2010          	jra	L471
1661  039c               L071:
1662  039c ae01a2        	ldw	x,#418
1663  039f 89            	pushw	x
1664  03a0 ae0000        	ldw	x,#0
1665  03a3 89            	pushw	x
1666  03a4 ae000c        	ldw	x,#L75
1667  03a7 cd0000        	call	_assert_failed
1669  03aa 5b04          	addw	sp,#4
1670  03ac               L471:
1671                     ; 421   CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
1673  03ac c650c6        	ld	a,20678
1674  03af a4e7          	and	a,#231
1675  03b1 c750c6        	ld	20678,a
1676                     ; 424   CLK->CKDIVR |= (uint8_t)HSIPrescaler;
1678  03b4 c650c6        	ld	a,20678
1679  03b7 1a01          	or	a,(OFST+1,sp)
1680  03b9 c750c6        	ld	20678,a
1681                     ; 425 }
1684  03bc 84            	pop	a
1685  03bd 81            	ret
1821                     ; 436 void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
1821                     ; 437 {
1822                     	switch	.text
1823  03be               _CLK_CCOConfig:
1825  03be 88            	push	a
1826       00000000      OFST:	set	0
1829                     ; 439   assert_param(IS_CLK_OUTPUT_OK(CLK_CCO));
1831  03bf 4d            	tnz	a
1832  03c0 2730          	jreq	L202
1833  03c2 a104          	cp	a,#4
1834  03c4 272c          	jreq	L202
1835  03c6 a102          	cp	a,#2
1836  03c8 2728          	jreq	L202
1837  03ca a108          	cp	a,#8
1838  03cc 2724          	jreq	L202
1839  03ce a10a          	cp	a,#10
1840  03d0 2720          	jreq	L202
1841  03d2 a10c          	cp	a,#12
1842  03d4 271c          	jreq	L202
1843  03d6 a10e          	cp	a,#14
1844  03d8 2718          	jreq	L202
1845  03da a110          	cp	a,#16
1846  03dc 2714          	jreq	L202
1847  03de a112          	cp	a,#18
1848  03e0 2710          	jreq	L202
1849  03e2 a114          	cp	a,#20
1850  03e4 270c          	jreq	L202
1851  03e6 a116          	cp	a,#22
1852  03e8 2708          	jreq	L202
1853  03ea a118          	cp	a,#24
1854  03ec 2704          	jreq	L202
1855  03ee a11a          	cp	a,#26
1856  03f0 2603          	jrne	L002
1857  03f2               L202:
1858  03f2 4f            	clr	a
1859  03f3 2010          	jra	L402
1860  03f5               L002:
1861  03f5 ae01b7        	ldw	x,#439
1862  03f8 89            	pushw	x
1863  03f9 ae0000        	ldw	x,#0
1864  03fc 89            	pushw	x
1865  03fd ae000c        	ldw	x,#L75
1866  0400 cd0000        	call	_assert_failed
1868  0403 5b04          	addw	sp,#4
1869  0405               L402:
1870                     ; 442   CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
1872  0405 c650c9        	ld	a,20681
1873  0408 a4e1          	and	a,#225
1874  040a c750c9        	ld	20681,a
1875                     ; 445   CLK->CCOR |= (uint8_t)CLK_CCO;
1877  040d c650c9        	ld	a,20681
1878  0410 1a01          	or	a,(OFST+1,sp)
1879  0412 c750c9        	ld	20681,a
1880                     ; 448   CLK->CCOR |= CLK_CCOR_CCOEN;
1882  0415 721050c9      	bset	20681,#0
1883                     ; 449 }
1886  0419 84            	pop	a
1887  041a 81            	ret
1953                     ; 459 void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
1953                     ; 460 {
1954                     	switch	.text
1955  041b               _CLK_ITConfig:
1957  041b 89            	pushw	x
1958       00000000      OFST:	set	0
1961                     ; 462   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1963  041c 9f            	ld	a,xl
1964  041d 4d            	tnz	a
1965  041e 2705          	jreq	L212
1966  0420 9f            	ld	a,xl
1967  0421 a101          	cp	a,#1
1968  0423 2603          	jrne	L012
1969  0425               L212:
1970  0425 4f            	clr	a
1971  0426 2010          	jra	L412
1972  0428               L012:
1973  0428 ae01ce        	ldw	x,#462
1974  042b 89            	pushw	x
1975  042c ae0000        	ldw	x,#0
1976  042f 89            	pushw	x
1977  0430 ae000c        	ldw	x,#L75
1978  0433 cd0000        	call	_assert_failed
1980  0436 5b04          	addw	sp,#4
1981  0438               L412:
1982                     ; 463   assert_param(IS_CLK_IT_OK(CLK_IT));
1984  0438 7b01          	ld	a,(OFST+1,sp)
1985  043a a10c          	cp	a,#12
1986  043c 2706          	jreq	L022
1987  043e 7b01          	ld	a,(OFST+1,sp)
1988  0440 a11c          	cp	a,#28
1989  0442 2603          	jrne	L612
1990  0444               L022:
1991  0444 4f            	clr	a
1992  0445 2010          	jra	L222
1993  0447               L612:
1994  0447 ae01cf        	ldw	x,#463
1995  044a 89            	pushw	x
1996  044b ae0000        	ldw	x,#0
1997  044e 89            	pushw	x
1998  044f ae000c        	ldw	x,#L75
1999  0452 cd0000        	call	_assert_failed
2001  0455 5b04          	addw	sp,#4
2002  0457               L222:
2003                     ; 465   if (NewState != DISABLE)
2005  0457 0d02          	tnz	(OFST+2,sp)
2006  0459 271a          	jreq	L727
2007                     ; 467     switch (CLK_IT)
2009  045b 7b01          	ld	a,(OFST+1,sp)
2011                     ; 475     default:
2011                     ; 476       break;
2012  045d a00c          	sub	a,#12
2013  045f 270a          	jreq	L366
2014  0461 a010          	sub	a,#16
2015  0463 2624          	jrne	L537
2016                     ; 469     case CLK_IT_SWIF: /* Enable the clock switch interrupt */
2016                     ; 470       CLK->SWCR |= CLK_SWCR_SWIEN;
2018  0465 721450c5      	bset	20677,#2
2019                     ; 471       break;
2021  0469 201e          	jra	L537
2022  046b               L366:
2023                     ; 472     case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
2023                     ; 473       CLK->CSSR |= CLK_CSSR_CSSDIE;
2025  046b 721450c8      	bset	20680,#2
2026                     ; 474       break;
2028  046f 2018          	jra	L537
2029  0471               L566:
2030                     ; 475     default:
2030                     ; 476       break;
2032  0471 2016          	jra	L537
2033  0473               L337:
2035  0473 2014          	jra	L537
2036  0475               L727:
2037                     ; 481     switch (CLK_IT)
2039  0475 7b01          	ld	a,(OFST+1,sp)
2041                     ; 489     default:
2041                     ; 490       break;
2042  0477 a00c          	sub	a,#12
2043  0479 270a          	jreq	L176
2044  047b a010          	sub	a,#16
2045  047d 260a          	jrne	L537
2046                     ; 483     case CLK_IT_SWIF: /* Disable the clock switch interrupt */
2046                     ; 484       CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
2048  047f 721550c5      	bres	20677,#2
2049                     ; 485       break;
2051  0483 2004          	jra	L537
2052  0485               L176:
2053                     ; 486     case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
2053                     ; 487       CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
2055  0485 721550c8      	bres	20680,#2
2056                     ; 488       break;
2057  0489               L537:
2058                     ; 493 }
2061  0489 85            	popw	x
2062  048a 81            	ret
2063  048b               L376:
2064                     ; 489     default:
2064                     ; 490       break;
2066  048b 20fc          	jra	L537
2067  048d               L147:
2068  048d 20fa          	jra	L537
2104                     ; 500 void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
2104                     ; 501 {
2105                     	switch	.text
2106  048f               _CLK_SYSCLKConfig:
2108  048f 88            	push	a
2109       00000000      OFST:	set	0
2112                     ; 503   assert_param(IS_CLK_PRESCALER_OK(CLK_Prescaler));
2114  0490 4d            	tnz	a
2115  0491 272c          	jreq	L032
2116  0493 a108          	cp	a,#8
2117  0495 2728          	jreq	L032
2118  0497 a110          	cp	a,#16
2119  0499 2724          	jreq	L032
2120  049b a118          	cp	a,#24
2121  049d 2720          	jreq	L032
2122  049f a180          	cp	a,#128
2123  04a1 271c          	jreq	L032
2124  04a3 a181          	cp	a,#129
2125  04a5 2718          	jreq	L032
2126  04a7 a182          	cp	a,#130
2127  04a9 2714          	jreq	L032
2128  04ab a183          	cp	a,#131
2129  04ad 2710          	jreq	L032
2130  04af a184          	cp	a,#132
2131  04b1 270c          	jreq	L032
2132  04b3 a185          	cp	a,#133
2133  04b5 2708          	jreq	L032
2134  04b7 a186          	cp	a,#134
2135  04b9 2704          	jreq	L032
2136  04bb a187          	cp	a,#135
2137  04bd 2603          	jrne	L622
2138  04bf               L032:
2139  04bf 4f            	clr	a
2140  04c0 2010          	jra	L232
2141  04c2               L622:
2142  04c2 ae01f7        	ldw	x,#503
2143  04c5 89            	pushw	x
2144  04c6 ae0000        	ldw	x,#0
2145  04c9 89            	pushw	x
2146  04ca ae000c        	ldw	x,#L75
2147  04cd cd0000        	call	_assert_failed
2149  04d0 5b04          	addw	sp,#4
2150  04d2               L232:
2151                     ; 505   if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
2153  04d2 7b01          	ld	a,(OFST+1,sp)
2154  04d4 a580          	bcp	a,#128
2155  04d6 2614          	jrne	L167
2156                     ; 507     CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
2158  04d8 c650c6        	ld	a,20678
2159  04db a4e7          	and	a,#231
2160  04dd c750c6        	ld	20678,a
2161                     ; 508     CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
2163  04e0 7b01          	ld	a,(OFST+1,sp)
2164  04e2 a418          	and	a,#24
2165  04e4 ca50c6        	or	a,20678
2166  04e7 c750c6        	ld	20678,a
2168  04ea 2012          	jra	L367
2169  04ec               L167:
2170                     ; 512     CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
2172  04ec c650c6        	ld	a,20678
2173  04ef a4f8          	and	a,#248
2174  04f1 c750c6        	ld	20678,a
2175                     ; 513     CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
2177  04f4 7b01          	ld	a,(OFST+1,sp)
2178  04f6 a407          	and	a,#7
2179  04f8 ca50c6        	or	a,20678
2180  04fb c750c6        	ld	20678,a
2181  04fe               L367:
2182                     ; 515 }
2185  04fe 84            	pop	a
2186  04ff 81            	ret
2243                     ; 523 void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
2243                     ; 524 {
2244                     	switch	.text
2245  0500               _CLK_SWIMConfig:
2247  0500 88            	push	a
2248       00000000      OFST:	set	0
2251                     ; 526   assert_param(IS_CLK_SWIMDIVIDER_OK(CLK_SWIMDivider));
2253  0501 4d            	tnz	a
2254  0502 2704          	jreq	L042
2255  0504 a101          	cp	a,#1
2256  0506 2603          	jrne	L632
2257  0508               L042:
2258  0508 4f            	clr	a
2259  0509 2010          	jra	L242
2260  050b               L632:
2261  050b ae020e        	ldw	x,#526
2262  050e 89            	pushw	x
2263  050f ae0000        	ldw	x,#0
2264  0512 89            	pushw	x
2265  0513 ae000c        	ldw	x,#L75
2266  0516 cd0000        	call	_assert_failed
2268  0519 5b04          	addw	sp,#4
2269  051b               L242:
2270                     ; 528   if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
2272  051b 0d01          	tnz	(OFST+1,sp)
2273  051d 2706          	jreq	L3101
2274                     ; 531     CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
2276  051f 721050cd      	bset	20685,#0
2278  0523 2004          	jra	L5101
2279  0525               L3101:
2280                     ; 536     CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
2282  0525 721150cd      	bres	20685,#0
2283  0529               L5101:
2284                     ; 538 }
2287  0529 84            	pop	a
2288  052a 81            	ret
2312                     ; 547 void CLK_ClockSecuritySystemEnable(void)
2312                     ; 548 {
2313                     	switch	.text
2314  052b               _CLK_ClockSecuritySystemEnable:
2318                     ; 550   CLK->CSSR |= CLK_CSSR_CSSEN;
2320  052b 721050c8      	bset	20680,#0
2321                     ; 551 }
2324  052f 81            	ret
2349                     ; 559 CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
2349                     ; 560 {
2350                     	switch	.text
2351  0530               _CLK_GetSYSCLKSource:
2355                     ; 561   return((CLK_Source_TypeDef)CLK->CMSR);
2357  0530 c650c3        	ld	a,20675
2360  0533 81            	ret
2423                     ; 569 uint32_t CLK_GetClockFreq(void)
2423                     ; 570 {
2424                     	switch	.text
2425  0534               _CLK_GetClockFreq:
2427  0534 5209          	subw	sp,#9
2428       00000009      OFST:	set	9
2431                     ; 571   uint32_t clockfrequency = 0;
2433                     ; 572   CLK_Source_TypeDef clocksource = CLK_SOURCE_HSI;
2435                     ; 573   uint8_t tmp = 0, presc = 0;
2439                     ; 576   clocksource = (CLK_Source_TypeDef)CLK->CMSR;
2441  0536 c650c3        	ld	a,20675
2442  0539 6b09          	ld	(OFST+0,sp),a
2444                     ; 578   if (clocksource == CLK_SOURCE_HSI)
2446  053b 7b09          	ld	a,(OFST+0,sp)
2447  053d a1e1          	cp	a,#225
2448  053f 2641          	jrne	L1701
2449                     ; 580     tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
2451  0541 c650c6        	ld	a,20678
2452  0544 a418          	and	a,#24
2453  0546 6b09          	ld	(OFST+0,sp),a
2455                     ; 581     tmp = (uint8_t)(tmp >> 3);
2457  0548 0409          	srl	(OFST+0,sp)
2458  054a 0409          	srl	(OFST+0,sp)
2459  054c 0409          	srl	(OFST+0,sp)
2461                     ; 582     presc = HSIDivFactor[tmp];
2463  054e 7b09          	ld	a,(OFST+0,sp)
2464  0550 5f            	clrw	x
2465  0551 97            	ld	xl,a
2466  0552 d60000        	ld	a,(_HSIDivFactor,x)
2467  0555 6b09          	ld	(OFST+0,sp),a
2469                     ; 583     clockfrequency = HSI_VALUE / presc;
2471  0557 7b09          	ld	a,(OFST+0,sp)
2472  0559 b703          	ld	c_lreg+3,a
2473  055b 3f02          	clr	c_lreg+2
2474  055d 3f01          	clr	c_lreg+1
2475  055f 3f00          	clr	c_lreg
2476  0561 96            	ldw	x,sp
2477  0562 1c0001        	addw	x,#OFST-8
2478  0565 cd0000        	call	c_rtol
2481  0568 ae2400        	ldw	x,#9216
2482  056b bf02          	ldw	c_lreg+2,x
2483  056d ae00f4        	ldw	x,#244
2484  0570 bf00          	ldw	c_lreg,x
2485  0572 96            	ldw	x,sp
2486  0573 1c0001        	addw	x,#OFST-8
2487  0576 cd0000        	call	c_ludv
2489  0579 96            	ldw	x,sp
2490  057a 1c0005        	addw	x,#OFST-4
2491  057d cd0000        	call	c_rtol
2495  0580 201c          	jra	L3701
2496  0582               L1701:
2497                     ; 585   else if ( clocksource == CLK_SOURCE_LSI)
2499  0582 7b09          	ld	a,(OFST+0,sp)
2500  0584 a1d2          	cp	a,#210
2501  0586 260c          	jrne	L5701
2502                     ; 587     clockfrequency = LSI_VALUE;
2504  0588 aef400        	ldw	x,#62464
2505  058b 1f07          	ldw	(OFST-2,sp),x
2506  058d ae0001        	ldw	x,#1
2507  0590 1f05          	ldw	(OFST-4,sp),x
2510  0592 200a          	jra	L3701
2511  0594               L5701:
2512                     ; 591     clockfrequency = HSE_VALUE;
2514  0594 ae2400        	ldw	x,#9216
2515  0597 1f07          	ldw	(OFST-2,sp),x
2516  0599 ae00f4        	ldw	x,#244
2517  059c 1f05          	ldw	(OFST-4,sp),x
2519  059e               L3701:
2520                     ; 594   return((uint32_t)clockfrequency);
2522  059e 96            	ldw	x,sp
2523  059f 1c0005        	addw	x,#OFST-4
2524  05a2 cd0000        	call	c_ltor
2528  05a5 5b09          	addw	sp,#9
2529  05a7 81            	ret
2629                     ; 604 void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
2629                     ; 605 {
2630                     	switch	.text
2631  05a8               _CLK_AdjustHSICalibrationValue:
2633  05a8 88            	push	a
2634       00000000      OFST:	set	0
2637                     ; 607   assert_param(IS_CLK_HSITRIMVALUE_OK(CLK_HSICalibrationValue));
2639  05a9 4d            	tnz	a
2640  05aa 271c          	jreq	L652
2641  05ac a101          	cp	a,#1
2642  05ae 2718          	jreq	L652
2643  05b0 a102          	cp	a,#2
2644  05b2 2714          	jreq	L652
2645  05b4 a103          	cp	a,#3
2646  05b6 2710          	jreq	L652
2647  05b8 a104          	cp	a,#4
2648  05ba 270c          	jreq	L652
2649  05bc a105          	cp	a,#5
2650  05be 2708          	jreq	L652
2651  05c0 a106          	cp	a,#6
2652  05c2 2704          	jreq	L652
2653  05c4 a107          	cp	a,#7
2654  05c6 2603          	jrne	L452
2655  05c8               L652:
2656  05c8 4f            	clr	a
2657  05c9 2010          	jra	L062
2658  05cb               L452:
2659  05cb ae025f        	ldw	x,#607
2660  05ce 89            	pushw	x
2661  05cf ae0000        	ldw	x,#0
2662  05d2 89            	pushw	x
2663  05d3 ae000c        	ldw	x,#L75
2664  05d6 cd0000        	call	_assert_failed
2666  05d9 5b04          	addw	sp,#4
2667  05db               L062:
2668                     ; 610   CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
2670  05db c650cc        	ld	a,20684
2671  05de a4f8          	and	a,#248
2672  05e0 1a01          	or	a,(OFST+1,sp)
2673  05e2 c750cc        	ld	20684,a
2674                     ; 611 }
2677  05e5 84            	pop	a
2678  05e6 81            	ret
2702                     ; 622 void CLK_SYSCLKEmergencyClear(void)
2702                     ; 623 {
2703                     	switch	.text
2704  05e7               _CLK_SYSCLKEmergencyClear:
2708                     ; 624   CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
2710  05e7 721150c5      	bres	20677,#0
2711                     ; 625 }
2714  05eb 81            	ret
2868                     ; 634 FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
2868                     ; 635 {
2869                     	switch	.text
2870  05ec               _CLK_GetFlagStatus:
2872  05ec 89            	pushw	x
2873  05ed 5203          	subw	sp,#3
2874       00000003      OFST:	set	3
2877                     ; 636   uint16_t statusreg = 0;
2879                     ; 637   uint8_t tmpreg = 0;
2881                     ; 638   FlagStatus bitstatus = RESET;
2883                     ; 641   assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
2885  05ef a30110        	cpw	x,#272
2886  05f2 2728          	jreq	L072
2887  05f4 a30102        	cpw	x,#258
2888  05f7 2723          	jreq	L072
2889  05f9 a30202        	cpw	x,#514
2890  05fc 271e          	jreq	L072
2891  05fe a30308        	cpw	x,#776
2892  0601 2719          	jreq	L072
2893  0603 a30301        	cpw	x,#769
2894  0606 2714          	jreq	L072
2895  0608 a30408        	cpw	x,#1032
2896  060b 270f          	jreq	L072
2897  060d a30402        	cpw	x,#1026
2898  0610 270a          	jreq	L072
2899  0612 a30504        	cpw	x,#1284
2900  0615 2705          	jreq	L072
2901  0617 a30502        	cpw	x,#1282
2902  061a 2603          	jrne	L662
2903  061c               L072:
2904  061c 4f            	clr	a
2905  061d 2010          	jra	L272
2906  061f               L662:
2907  061f ae0281        	ldw	x,#641
2908  0622 89            	pushw	x
2909  0623 ae0000        	ldw	x,#0
2910  0626 89            	pushw	x
2911  0627 ae000c        	ldw	x,#L75
2912  062a cd0000        	call	_assert_failed
2914  062d 5b04          	addw	sp,#4
2915  062f               L272:
2916                     ; 644   statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
2918  062f 7b04          	ld	a,(OFST+1,sp)
2919  0631 97            	ld	xl,a
2920  0632 7b05          	ld	a,(OFST+2,sp)
2921  0634 9f            	ld	a,xl
2922  0635 a4ff          	and	a,#255
2923  0637 97            	ld	xl,a
2924  0638 4f            	clr	a
2925  0639 02            	rlwa	x,a
2926  063a 1f01          	ldw	(OFST-2,sp),x
2927  063c 01            	rrwa	x,a
2929                     ; 647   if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
2931  063d 1e01          	ldw	x,(OFST-2,sp)
2932  063f a30100        	cpw	x,#256
2933  0642 2607          	jrne	L3421
2934                     ; 649     tmpreg = CLK->ICKR;
2936  0644 c650c0        	ld	a,20672
2937  0647 6b03          	ld	(OFST+0,sp),a
2940  0649 202f          	jra	L5421
2941  064b               L3421:
2942                     ; 651   else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
2944  064b 1e01          	ldw	x,(OFST-2,sp)
2945  064d a30200        	cpw	x,#512
2946  0650 2607          	jrne	L7421
2947                     ; 653     tmpreg = CLK->ECKR;
2949  0652 c650c1        	ld	a,20673
2950  0655 6b03          	ld	(OFST+0,sp),a
2953  0657 2021          	jra	L5421
2954  0659               L7421:
2955                     ; 655   else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
2957  0659 1e01          	ldw	x,(OFST-2,sp)
2958  065b a30300        	cpw	x,#768
2959  065e 2607          	jrne	L3521
2960                     ; 657     tmpreg = CLK->SWCR;
2962  0660 c650c5        	ld	a,20677
2963  0663 6b03          	ld	(OFST+0,sp),a
2966  0665 2013          	jra	L5421
2967  0667               L3521:
2968                     ; 659   else if (statusreg == 0x0400) /* The flag to check is in CSS register */
2970  0667 1e01          	ldw	x,(OFST-2,sp)
2971  0669 a30400        	cpw	x,#1024
2972  066c 2607          	jrne	L7521
2973                     ; 661     tmpreg = CLK->CSSR;
2975  066e c650c8        	ld	a,20680
2976  0671 6b03          	ld	(OFST+0,sp),a
2979  0673 2005          	jra	L5421
2980  0675               L7521:
2981                     ; 665     tmpreg = CLK->CCOR;
2983  0675 c650c9        	ld	a,20681
2984  0678 6b03          	ld	(OFST+0,sp),a
2986  067a               L5421:
2987                     ; 668   if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
2989  067a 7b05          	ld	a,(OFST+2,sp)
2990  067c 1503          	bcp	a,(OFST+0,sp)
2991  067e 2706          	jreq	L3621
2992                     ; 670     bitstatus = SET;
2994  0680 a601          	ld	a,#1
2995  0682 6b03          	ld	(OFST+0,sp),a
2998  0684 2002          	jra	L5621
2999  0686               L3621:
3000                     ; 674     bitstatus = RESET;
3002  0686 0f03          	clr	(OFST+0,sp)
3004  0688               L5621:
3005                     ; 678   return((FlagStatus)bitstatus);
3007  0688 7b03          	ld	a,(OFST+0,sp)
3010  068a 5b05          	addw	sp,#5
3011  068c 81            	ret
3058                     ; 687 ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
3058                     ; 688 {
3059                     	switch	.text
3060  068d               _CLK_GetITStatus:
3062  068d 88            	push	a
3063  068e 88            	push	a
3064       00000001      OFST:	set	1
3067                     ; 689   ITStatus bitstatus = RESET;
3069                     ; 692   assert_param(IS_CLK_IT_OK(CLK_IT));
3071  068f a10c          	cp	a,#12
3072  0691 2704          	jreq	L003
3073  0693 a11c          	cp	a,#28
3074  0695 2603          	jrne	L672
3075  0697               L003:
3076  0697 4f            	clr	a
3077  0698 2010          	jra	L203
3078  069a               L672:
3079  069a ae02b4        	ldw	x,#692
3080  069d 89            	pushw	x
3081  069e ae0000        	ldw	x,#0
3082  06a1 89            	pushw	x
3083  06a2 ae000c        	ldw	x,#L75
3084  06a5 cd0000        	call	_assert_failed
3086  06a8 5b04          	addw	sp,#4
3087  06aa               L203:
3088                     ; 694   if (CLK_IT == CLK_IT_SWIF)
3090  06aa 7b02          	ld	a,(OFST+1,sp)
3091  06ac a11c          	cp	a,#28
3092  06ae 2613          	jrne	L1131
3093                     ; 697     if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
3095  06b0 c650c5        	ld	a,20677
3096  06b3 1402          	and	a,(OFST+1,sp)
3097  06b5 a10c          	cp	a,#12
3098  06b7 2606          	jrne	L3131
3099                     ; 699       bitstatus = SET;
3101  06b9 a601          	ld	a,#1
3102  06bb 6b01          	ld	(OFST+0,sp),a
3105  06bd 2015          	jra	L7131
3106  06bf               L3131:
3107                     ; 703       bitstatus = RESET;
3109  06bf 0f01          	clr	(OFST+0,sp)
3111  06c1 2011          	jra	L7131
3112  06c3               L1131:
3113                     ; 709     if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
3115  06c3 c650c8        	ld	a,20680
3116  06c6 1402          	and	a,(OFST+1,sp)
3117  06c8 a10c          	cp	a,#12
3118  06ca 2606          	jrne	L1231
3119                     ; 711       bitstatus = SET;
3121  06cc a601          	ld	a,#1
3122  06ce 6b01          	ld	(OFST+0,sp),a
3125  06d0 2002          	jra	L7131
3126  06d2               L1231:
3127                     ; 715       bitstatus = RESET;
3129  06d2 0f01          	clr	(OFST+0,sp)
3131  06d4               L7131:
3132                     ; 720   return bitstatus;
3134  06d4 7b01          	ld	a,(OFST+0,sp)
3137  06d6 85            	popw	x
3138  06d7 81            	ret
3175                     ; 729 void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
3175                     ; 730 {
3176                     	switch	.text
3177  06d8               _CLK_ClearITPendingBit:
3179  06d8 88            	push	a
3180       00000000      OFST:	set	0
3183                     ; 732   assert_param(IS_CLK_IT_OK(CLK_IT));
3185  06d9 a10c          	cp	a,#12
3186  06db 2704          	jreq	L013
3187  06dd a11c          	cp	a,#28
3188  06df 2603          	jrne	L603
3189  06e1               L013:
3190  06e1 4f            	clr	a
3191  06e2 2010          	jra	L213
3192  06e4               L603:
3193  06e4 ae02dc        	ldw	x,#732
3194  06e7 89            	pushw	x
3195  06e8 ae0000        	ldw	x,#0
3196  06eb 89            	pushw	x
3197  06ec ae000c        	ldw	x,#L75
3198  06ef cd0000        	call	_assert_failed
3200  06f2 5b04          	addw	sp,#4
3201  06f4               L213:
3202                     ; 734   if (CLK_IT == (uint8_t)CLK_IT_CSSD)
3204  06f4 7b01          	ld	a,(OFST+1,sp)
3205  06f6 a10c          	cp	a,#12
3206  06f8 2606          	jrne	L3431
3207                     ; 737     CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
3209  06fa 721750c8      	bres	20680,#3
3211  06fe 2004          	jra	L5431
3212  0700               L3431:
3213                     ; 742     CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
3215  0700 721750c5      	bres	20677,#3
3216  0704               L5431:
3217                     ; 745 }
3220  0704 84            	pop	a
3221  0705 81            	ret
3256                     	xdef	_CLKPrescTable
3257                     	xdef	_HSIDivFactor
3258                     	xdef	_CLK_ClearITPendingBit
3259                     	xdef	_CLK_GetITStatus
3260                     	xdef	_CLK_GetFlagStatus
3261                     	xdef	_CLK_GetSYSCLKSource
3262                     	xdef	_CLK_GetClockFreq
3263                     	xdef	_CLK_AdjustHSICalibrationValue
3264                     	xdef	_CLK_SYSCLKEmergencyClear
3265                     	xdef	_CLK_ClockSecuritySystemEnable
3266                     	xdef	_CLK_SWIMConfig
3267                     	xdef	_CLK_SYSCLKConfig
3268                     	xdef	_CLK_ITConfig
3269                     	xdef	_CLK_CCOConfig
3270                     	xdef	_CLK_HSIPrescalerConfig
3271                     	xdef	_CLK_ClockSwitchConfig
3272                     	xdef	_CLK_PeripheralClockConfig
3273                     	xdef	_CLK_SlowActiveHaltWakeUpCmd
3274                     	xdef	_CLK_FastHaltWakeUpCmd
3275                     	xdef	_CLK_ClockSwitchCmd
3276                     	xdef	_CLK_CCOCmd
3277                     	xdef	_CLK_LSICmd
3278                     	xdef	_CLK_HSICmd
3279                     	xdef	_CLK_HSECmd
3280                     	xdef	_CLK_DeInit
3281                     	xref	_assert_failed
3282                     	switch	.const
3283  000c               L75:
3284  000c 2e2e5c6c6962  	dc.b	"..\libs\src\stm8s_"
3285  001e 636c6b2e6300  	dc.b	"clk.c",0
3286                     	xref.b	c_lreg
3287                     	xref.b	c_x
3307                     	xref	c_ltor
3308                     	xref	c_ludv
3309                     	xref	c_rtol
3310                     	end
