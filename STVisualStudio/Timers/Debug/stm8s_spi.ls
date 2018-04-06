   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
  44                     ; 50 void SPI_DeInit(void)
  44                     ; 51 {
  46                     .text:	section	.text,new
  47  0000               _SPI_DeInit:
  51                     ; 52   SPI->CR1    = SPI_CR1_RESET_VALUE;
  53  0000 725f5200      	clr	20992
  54                     ; 53   SPI->CR2    = SPI_CR2_RESET_VALUE;
  56  0004 725f5201      	clr	20993
  57                     ; 54   SPI->ICR    = SPI_ICR_RESET_VALUE;
  59  0008 725f5202      	clr	20994
  60                     ; 55   SPI->SR     = SPI_SR_RESET_VALUE;
  62  000c 35025203      	mov	20995,#2
  63                     ; 56   SPI->CRCPR  = SPI_CRCPR_RESET_VALUE;
  65  0010 35075205      	mov	20997,#7
  66                     ; 57 }
  69  0014 81            	ret
 386                     ; 78 void SPI_Init(SPI_FirstBit_TypeDef FirstBit, SPI_BaudRatePrescaler_TypeDef BaudRatePrescaler, SPI_Mode_TypeDef Mode, SPI_ClockPolarity_TypeDef ClockPolarity, SPI_ClockPhase_TypeDef ClockPhase, SPI_DataDirection_TypeDef Data_Direction, SPI_NSS_TypeDef Slave_Management, uint8_t CRCPolynomial)
 386                     ; 79 {
 387                     .text:	section	.text,new
 388  0000               _SPI_Init:
 390  0000 89            	pushw	x
 391  0001 88            	push	a
 392       00000001      OFST:	set	1
 395                     ; 81   assert_param(IS_SPI_FIRSTBIT_OK(FirstBit));
 397  0002 9e            	ld	a,xh
 398  0003 4d            	tnz	a
 399  0004 2705          	jreq	L21
 400  0006 9e            	ld	a,xh
 401  0007 a180          	cp	a,#128
 402  0009 2603          	jrne	L01
 403  000b               L21:
 404  000b 4f            	clr	a
 405  000c 2010          	jra	L41
 406  000e               L01:
 407  000e ae0051        	ldw	x,#81
 408  0011 89            	pushw	x
 409  0012 ae0000        	ldw	x,#0
 410  0015 89            	pushw	x
 411  0016 ae0000        	ldw	x,#L302
 412  0019 cd0000        	call	_assert_failed
 414  001c 5b04          	addw	sp,#4
 415  001e               L41:
 416                     ; 82   assert_param(IS_SPI_BAUDRATE_PRESCALER_OK(BaudRatePrescaler));
 418  001e 0d03          	tnz	(OFST+2,sp)
 419  0020 272a          	jreq	L02
 420  0022 7b03          	ld	a,(OFST+2,sp)
 421  0024 a108          	cp	a,#8
 422  0026 2724          	jreq	L02
 423  0028 7b03          	ld	a,(OFST+2,sp)
 424  002a a110          	cp	a,#16
 425  002c 271e          	jreq	L02
 426  002e 7b03          	ld	a,(OFST+2,sp)
 427  0030 a118          	cp	a,#24
 428  0032 2718          	jreq	L02
 429  0034 7b03          	ld	a,(OFST+2,sp)
 430  0036 a120          	cp	a,#32
 431  0038 2712          	jreq	L02
 432  003a 7b03          	ld	a,(OFST+2,sp)
 433  003c a128          	cp	a,#40
 434  003e 270c          	jreq	L02
 435  0040 7b03          	ld	a,(OFST+2,sp)
 436  0042 a130          	cp	a,#48
 437  0044 2706          	jreq	L02
 438  0046 7b03          	ld	a,(OFST+2,sp)
 439  0048 a138          	cp	a,#56
 440  004a 2603          	jrne	L61
 441  004c               L02:
 442  004c 4f            	clr	a
 443  004d 2010          	jra	L22
 444  004f               L61:
 445  004f ae0052        	ldw	x,#82
 446  0052 89            	pushw	x
 447  0053 ae0000        	ldw	x,#0
 448  0056 89            	pushw	x
 449  0057 ae0000        	ldw	x,#L302
 450  005a cd0000        	call	_assert_failed
 452  005d 5b04          	addw	sp,#4
 453  005f               L22:
 454                     ; 83   assert_param(IS_SPI_MODE_OK(Mode));
 456  005f 7b06          	ld	a,(OFST+5,sp)
 457  0061 a104          	cp	a,#4
 458  0063 2704          	jreq	L62
 459  0065 0d06          	tnz	(OFST+5,sp)
 460  0067 2603          	jrne	L42
 461  0069               L62:
 462  0069 4f            	clr	a
 463  006a 2010          	jra	L03
 464  006c               L42:
 465  006c ae0053        	ldw	x,#83
 466  006f 89            	pushw	x
 467  0070 ae0000        	ldw	x,#0
 468  0073 89            	pushw	x
 469  0074 ae0000        	ldw	x,#L302
 470  0077 cd0000        	call	_assert_failed
 472  007a 5b04          	addw	sp,#4
 473  007c               L03:
 474                     ; 84   assert_param(IS_SPI_POLARITY_OK(ClockPolarity));
 476  007c 0d07          	tnz	(OFST+6,sp)
 477  007e 2706          	jreq	L43
 478  0080 7b07          	ld	a,(OFST+6,sp)
 479  0082 a102          	cp	a,#2
 480  0084 2603          	jrne	L23
 481  0086               L43:
 482  0086 4f            	clr	a
 483  0087 2010          	jra	L63
 484  0089               L23:
 485  0089 ae0054        	ldw	x,#84
 486  008c 89            	pushw	x
 487  008d ae0000        	ldw	x,#0
 488  0090 89            	pushw	x
 489  0091 ae0000        	ldw	x,#L302
 490  0094 cd0000        	call	_assert_failed
 492  0097 5b04          	addw	sp,#4
 493  0099               L63:
 494                     ; 85   assert_param(IS_SPI_PHASE_OK(ClockPhase));
 496  0099 0d08          	tnz	(OFST+7,sp)
 497  009b 2706          	jreq	L24
 498  009d 7b08          	ld	a,(OFST+7,sp)
 499  009f a101          	cp	a,#1
 500  00a1 2603          	jrne	L04
 501  00a3               L24:
 502  00a3 4f            	clr	a
 503  00a4 2010          	jra	L44
 504  00a6               L04:
 505  00a6 ae0055        	ldw	x,#85
 506  00a9 89            	pushw	x
 507  00aa ae0000        	ldw	x,#0
 508  00ad 89            	pushw	x
 509  00ae ae0000        	ldw	x,#L302
 510  00b1 cd0000        	call	_assert_failed
 512  00b4 5b04          	addw	sp,#4
 513  00b6               L44:
 514                     ; 86   assert_param(IS_SPI_DATA_DIRECTION_OK(Data_Direction));
 516  00b6 0d09          	tnz	(OFST+8,sp)
 517  00b8 2712          	jreq	L05
 518  00ba 7b09          	ld	a,(OFST+8,sp)
 519  00bc a104          	cp	a,#4
 520  00be 270c          	jreq	L05
 521  00c0 7b09          	ld	a,(OFST+8,sp)
 522  00c2 a180          	cp	a,#128
 523  00c4 2706          	jreq	L05
 524  00c6 7b09          	ld	a,(OFST+8,sp)
 525  00c8 a1c0          	cp	a,#192
 526  00ca 2603          	jrne	L64
 527  00cc               L05:
 528  00cc 4f            	clr	a
 529  00cd 2010          	jra	L25
 530  00cf               L64:
 531  00cf ae0056        	ldw	x,#86
 532  00d2 89            	pushw	x
 533  00d3 ae0000        	ldw	x,#0
 534  00d6 89            	pushw	x
 535  00d7 ae0000        	ldw	x,#L302
 536  00da cd0000        	call	_assert_failed
 538  00dd 5b04          	addw	sp,#4
 539  00df               L25:
 540                     ; 87   assert_param(IS_SPI_SLAVEMANAGEMENT_OK(Slave_Management));
 542  00df 7b0a          	ld	a,(OFST+9,sp)
 543  00e1 a102          	cp	a,#2
 544  00e3 2704          	jreq	L65
 545  00e5 0d0a          	tnz	(OFST+9,sp)
 546  00e7 2603          	jrne	L45
 547  00e9               L65:
 548  00e9 4f            	clr	a
 549  00ea 2010          	jra	L06
 550  00ec               L45:
 551  00ec ae0057        	ldw	x,#87
 552  00ef 89            	pushw	x
 553  00f0 ae0000        	ldw	x,#0
 554  00f3 89            	pushw	x
 555  00f4 ae0000        	ldw	x,#L302
 556  00f7 cd0000        	call	_assert_failed
 558  00fa 5b04          	addw	sp,#4
 559  00fc               L06:
 560                     ; 88   assert_param(IS_SPI_CRC_POLYNOMIAL_OK(CRCPolynomial));
 562  00fc 0d0b          	tnz	(OFST+10,sp)
 563  00fe 2703          	jreq	L26
 564  0100 4f            	clr	a
 565  0101 2010          	jra	L46
 566  0103               L26:
 567  0103 ae0058        	ldw	x,#88
 568  0106 89            	pushw	x
 569  0107 ae0000        	ldw	x,#0
 570  010a 89            	pushw	x
 571  010b ae0000        	ldw	x,#L302
 572  010e cd0000        	call	_assert_failed
 574  0111 5b04          	addw	sp,#4
 575  0113               L46:
 576                     ; 91   SPI->CR1 = (uint8_t)((uint8_t)((uint8_t)FirstBit | BaudRatePrescaler) |
 576                     ; 92                        (uint8_t)((uint8_t)ClockPolarity | ClockPhase));
 578  0113 7b07          	ld	a,(OFST+6,sp)
 579  0115 1a08          	or	a,(OFST+7,sp)
 580  0117 6b01          	ld	(OFST+0,sp),a
 582  0119 7b02          	ld	a,(OFST+1,sp)
 583  011b 1a03          	or	a,(OFST+2,sp)
 584  011d 1a01          	or	a,(OFST+0,sp)
 585  011f c75200        	ld	20992,a
 586                     ; 95   SPI->CR2 = (uint8_t)((uint8_t)(Data_Direction) | (uint8_t)(Slave_Management));
 588  0122 7b09          	ld	a,(OFST+8,sp)
 589  0124 1a0a          	or	a,(OFST+9,sp)
 590  0126 c75201        	ld	20993,a
 591                     ; 97   if (Mode == SPI_MODE_MASTER)
 593  0129 7b06          	ld	a,(OFST+5,sp)
 594  012b a104          	cp	a,#4
 595  012d 2606          	jrne	L502
 596                     ; 99     SPI->CR2 |= (uint8_t)SPI_CR2_SSI;
 598  012f 72105201      	bset	20993,#0
 600  0133 2004          	jra	L702
 601  0135               L502:
 602                     ; 103     SPI->CR2 &= (uint8_t)~(SPI_CR2_SSI);
 604  0135 72115201      	bres	20993,#0
 605  0139               L702:
 606                     ; 107   SPI->CR1 |= (uint8_t)(Mode);
 608  0139 c65200        	ld	a,20992
 609  013c 1a06          	or	a,(OFST+5,sp)
 610  013e c75200        	ld	20992,a
 611                     ; 110   SPI->CRCPR = (uint8_t)CRCPolynomial;
 613  0141 7b0b          	ld	a,(OFST+10,sp)
 614  0143 c75205        	ld	20997,a
 615                     ; 111 }
 618  0146 5b03          	addw	sp,#3
 619  0148 81            	ret
 675                     ; 119 void SPI_Cmd(FunctionalState NewState)
 675                     ; 120 {
 676                     .text:	section	.text,new
 677  0000               _SPI_Cmd:
 679  0000 88            	push	a
 680       00000000      OFST:	set	0
 683                     ; 122   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 685  0001 4d            	tnz	a
 686  0002 2704          	jreq	L27
 687  0004 a101          	cp	a,#1
 688  0006 2603          	jrne	L07
 689  0008               L27:
 690  0008 4f            	clr	a
 691  0009 2010          	jra	L47
 692  000b               L07:
 693  000b ae007a        	ldw	x,#122
 694  000e 89            	pushw	x
 695  000f ae0000        	ldw	x,#0
 696  0012 89            	pushw	x
 697  0013 ae0000        	ldw	x,#L302
 698  0016 cd0000        	call	_assert_failed
 700  0019 5b04          	addw	sp,#4
 701  001b               L47:
 702                     ; 124   if (NewState != DISABLE)
 704  001b 0d01          	tnz	(OFST+1,sp)
 705  001d 2706          	jreq	L732
 706                     ; 126     SPI->CR1 |= SPI_CR1_SPE; /* Enable the SPI peripheral*/
 708  001f 721c5200      	bset	20992,#6
 710  0023 2004          	jra	L142
 711  0025               L732:
 712                     ; 130     SPI->CR1 &= (uint8_t)(~SPI_CR1_SPE); /* Disable the SPI peripheral*/
 714  0025 721d5200      	bres	20992,#6
 715  0029               L142:
 716                     ; 132 }
 719  0029 84            	pop	a
 720  002a 81            	ret
 830                     ; 141 void SPI_ITConfig(SPI_IT_TypeDef SPI_IT, FunctionalState NewState)
 830                     ; 142 {
 831                     .text:	section	.text,new
 832  0000               _SPI_ITConfig:
 834  0000 89            	pushw	x
 835  0001 88            	push	a
 836       00000001      OFST:	set	1
 839                     ; 143   uint8_t itpos = 0;
 841                     ; 145   assert_param(IS_SPI_CONFIG_IT_OK(SPI_IT));
 843  0002 9e            	ld	a,xh
 844  0003 a117          	cp	a,#23
 845  0005 270f          	jreq	L201
 846  0007 9e            	ld	a,xh
 847  0008 a106          	cp	a,#6
 848  000a 270a          	jreq	L201
 849  000c 9e            	ld	a,xh
 850  000d a105          	cp	a,#5
 851  000f 2705          	jreq	L201
 852  0011 9e            	ld	a,xh
 853  0012 a134          	cp	a,#52
 854  0014 2603          	jrne	L001
 855  0016               L201:
 856  0016 4f            	clr	a
 857  0017 2010          	jra	L401
 858  0019               L001:
 859  0019 ae0091        	ldw	x,#145
 860  001c 89            	pushw	x
 861  001d ae0000        	ldw	x,#0
 862  0020 89            	pushw	x
 863  0021 ae0000        	ldw	x,#L302
 864  0024 cd0000        	call	_assert_failed
 866  0027 5b04          	addw	sp,#4
 867  0029               L401:
 868                     ; 146   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 870  0029 0d03          	tnz	(OFST+2,sp)
 871  002b 2706          	jreq	L011
 872  002d 7b03          	ld	a,(OFST+2,sp)
 873  002f a101          	cp	a,#1
 874  0031 2603          	jrne	L601
 875  0033               L011:
 876  0033 4f            	clr	a
 877  0034 2010          	jra	L211
 878  0036               L601:
 879  0036 ae0092        	ldw	x,#146
 880  0039 89            	pushw	x
 881  003a ae0000        	ldw	x,#0
 882  003d 89            	pushw	x
 883  003e ae0000        	ldw	x,#L302
 884  0041 cd0000        	call	_assert_failed
 886  0044 5b04          	addw	sp,#4
 887  0046               L211:
 888                     ; 149   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)SPI_IT & (uint8_t)0x0F));
 890  0046 7b02          	ld	a,(OFST+1,sp)
 891  0048 a40f          	and	a,#15
 892  004a 5f            	clrw	x
 893  004b 97            	ld	xl,a
 894  004c a601          	ld	a,#1
 895  004e 5d            	tnzw	x
 896  004f 2704          	jreq	L411
 897  0051               L611:
 898  0051 48            	sll	a
 899  0052 5a            	decw	x
 900  0053 26fc          	jrne	L611
 901  0055               L411:
 902  0055 6b01          	ld	(OFST+0,sp),a
 904                     ; 151   if (NewState != DISABLE)
 906  0057 0d03          	tnz	(OFST+2,sp)
 907  0059 270a          	jreq	L313
 908                     ; 153     SPI->ICR |= itpos; /* Enable interrupt*/
 910  005b c65202        	ld	a,20994
 911  005e 1a01          	or	a,(OFST+0,sp)
 912  0060 c75202        	ld	20994,a
 914  0063 2009          	jra	L513
 915  0065               L313:
 916                     ; 157     SPI->ICR &= (uint8_t)(~itpos); /* Disable interrupt*/
 918  0065 7b01          	ld	a,(OFST+0,sp)
 919  0067 43            	cpl	a
 920  0068 c45202        	and	a,20994
 921  006b c75202        	ld	20994,a
 922  006e               L513:
 923                     ; 159 }
 926  006e 5b03          	addw	sp,#3
 927  0070 81            	ret
 961                     ; 166 void SPI_SendData(uint8_t Data)
 961                     ; 167 {
 962                     .text:	section	.text,new
 963  0000               _SPI_SendData:
 967                     ; 168   SPI->DR = Data; /* Write in the DR register the data to be sent*/
 969  0000 c75204        	ld	20996,a
 970                     ; 169 }
 973  0003 81            	ret
 996                     ; 176 uint8_t SPI_ReceiveData(void)
 996                     ; 177 {
 997                     .text:	section	.text,new
 998  0000               _SPI_ReceiveData:
1002                     ; 178   return ((uint8_t)SPI->DR); /* Return the data in the DR register*/
1004  0000 c65204        	ld	a,20996
1007  0003 81            	ret
1044                     ; 187 void SPI_NSSInternalSoftwareCmd(FunctionalState NewState)
1044                     ; 188 {
1045                     .text:	section	.text,new
1046  0000               _SPI_NSSInternalSoftwareCmd:
1048  0000 88            	push	a
1049       00000000      OFST:	set	0
1052                     ; 190   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1054  0001 4d            	tnz	a
1055  0002 2704          	jreq	L031
1056  0004 a101          	cp	a,#1
1057  0006 2603          	jrne	L621
1058  0008               L031:
1059  0008 4f            	clr	a
1060  0009 2010          	jra	L231
1061  000b               L621:
1062  000b ae00be        	ldw	x,#190
1063  000e 89            	pushw	x
1064  000f ae0000        	ldw	x,#0
1065  0012 89            	pushw	x
1066  0013 ae0000        	ldw	x,#L302
1067  0016 cd0000        	call	_assert_failed
1069  0019 5b04          	addw	sp,#4
1070  001b               L231:
1071                     ; 192   if (NewState != DISABLE)
1073  001b 0d01          	tnz	(OFST+1,sp)
1074  001d 2706          	jreq	L363
1075                     ; 194     SPI->CR2 |= SPI_CR2_SSI; /* Set NSS pin internally by software*/
1077  001f 72105201      	bset	20993,#0
1079  0023 2004          	jra	L563
1080  0025               L363:
1081                     ; 198     SPI->CR2 &= (uint8_t)(~SPI_CR2_SSI); /* Reset NSS pin internally by software*/
1083  0025 72115201      	bres	20993,#0
1084  0029               L563:
1085                     ; 200 }
1088  0029 84            	pop	a
1089  002a 81            	ret
1112                     ; 207 void SPI_TransmitCRC(void)
1112                     ; 208 {
1113                     .text:	section	.text,new
1114  0000               _SPI_TransmitCRC:
1118                     ; 209   SPI->CR2 |= SPI_CR2_CRCNEXT; /* Enable the CRC transmission*/
1120  0000 72185201      	bset	20993,#4
1121                     ; 210 }
1124  0004 81            	ret
1161                     ; 218 void SPI_CalculateCRCCmd(FunctionalState NewState)
1161                     ; 219 {
1162                     .text:	section	.text,new
1163  0000               _SPI_CalculateCRCCmd:
1165  0000 88            	push	a
1166       00000000      OFST:	set	0
1169                     ; 221   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1171  0001 4d            	tnz	a
1172  0002 2704          	jreq	L241
1173  0004 a101          	cp	a,#1
1174  0006 2603          	jrne	L041
1175  0008               L241:
1176  0008 4f            	clr	a
1177  0009 2010          	jra	L441
1178  000b               L041:
1179  000b ae00dd        	ldw	x,#221
1180  000e 89            	pushw	x
1181  000f ae0000        	ldw	x,#0
1182  0012 89            	pushw	x
1183  0013 ae0000        	ldw	x,#L302
1184  0016 cd0000        	call	_assert_failed
1186  0019 5b04          	addw	sp,#4
1187  001b               L441:
1188                     ; 223   if (NewState != DISABLE)
1190  001b 0d01          	tnz	(OFST+1,sp)
1191  001d 2706          	jreq	L514
1192                     ; 225     SPI->CR2 |= SPI_CR2_CRCEN; /* Enable the CRC calculation*/
1194  001f 721a5201      	bset	20993,#5
1196  0023 2004          	jra	L714
1197  0025               L514:
1198                     ; 229     SPI->CR2 &= (uint8_t)(~SPI_CR2_CRCEN); /* Disable the CRC calculation*/
1200  0025 721b5201      	bres	20993,#5
1201  0029               L714:
1202                     ; 231 }
1205  0029 84            	pop	a
1206  002a 81            	ret
1271                     ; 238 uint8_t SPI_GetCRC(SPI_CRC_TypeDef SPI_CRC)
1271                     ; 239 {
1272                     .text:	section	.text,new
1273  0000               _SPI_GetCRC:
1275  0000 88            	push	a
1276  0001 88            	push	a
1277       00000001      OFST:	set	1
1280                     ; 240   uint8_t crcreg = 0;
1282                     ; 243   assert_param(IS_SPI_CRC_OK(SPI_CRC));
1284  0002 a101          	cp	a,#1
1285  0004 2703          	jreq	L251
1286  0006 4d            	tnz	a
1287  0007 2603          	jrne	L051
1288  0009               L251:
1289  0009 4f            	clr	a
1290  000a 2010          	jra	L451
1291  000c               L051:
1292  000c ae00f3        	ldw	x,#243
1293  000f 89            	pushw	x
1294  0010 ae0000        	ldw	x,#0
1295  0013 89            	pushw	x
1296  0014 ae0000        	ldw	x,#L302
1297  0017 cd0000        	call	_assert_failed
1299  001a 5b04          	addw	sp,#4
1300  001c               L451:
1301                     ; 245   if (SPI_CRC != SPI_CRC_RX)
1303  001c 0d02          	tnz	(OFST+1,sp)
1304  001e 2707          	jreq	L354
1305                     ; 247     crcreg = SPI->TXCRCR;  /* Get the Tx CRC register*/
1307  0020 c65207        	ld	a,20999
1308  0023 6b01          	ld	(OFST+0,sp),a
1311  0025 2005          	jra	L554
1312  0027               L354:
1313                     ; 251     crcreg = SPI->RXCRCR; /* Get the Rx CRC register*/
1315  0027 c65206        	ld	a,20998
1316  002a 6b01          	ld	(OFST+0,sp),a
1318  002c               L554:
1319                     ; 255   return crcreg;
1321  002c 7b01          	ld	a,(OFST+0,sp)
1324  002e 85            	popw	x
1325  002f 81            	ret
1350                     ; 263 void SPI_ResetCRC(void)
1350                     ; 264 {
1351                     .text:	section	.text,new
1352  0000               _SPI_ResetCRC:
1356                     ; 267   SPI_CalculateCRCCmd(ENABLE);
1358  0000 a601          	ld	a,#1
1359  0002 cd0000        	call	_SPI_CalculateCRCCmd
1361                     ; 270   SPI_Cmd(ENABLE);
1363  0005 a601          	ld	a,#1
1364  0007 cd0000        	call	_SPI_Cmd
1366                     ; 271 }
1369  000a 81            	ret
1393                     ; 278 uint8_t SPI_GetCRCPolynomial(void)
1393                     ; 279 {
1394                     .text:	section	.text,new
1395  0000               _SPI_GetCRCPolynomial:
1399                     ; 280   return SPI->CRCPR; /* Return the CRC polynomial register */
1401  0000 c65205        	ld	a,20997
1404  0003 81            	ret
1461                     ; 288 void SPI_BiDirectionalLineConfig(SPI_Direction_TypeDef SPI_Direction)
1461                     ; 289 {
1462                     .text:	section	.text,new
1463  0000               _SPI_BiDirectionalLineConfig:
1465  0000 88            	push	a
1466       00000000      OFST:	set	0
1469                     ; 291   assert_param(IS_SPI_DIRECTION_OK(SPI_Direction));
1471  0001 4d            	tnz	a
1472  0002 2704          	jreq	L661
1473  0004 a101          	cp	a,#1
1474  0006 2603          	jrne	L461
1475  0008               L661:
1476  0008 4f            	clr	a
1477  0009 2010          	jra	L071
1478  000b               L461:
1479  000b ae0123        	ldw	x,#291
1480  000e 89            	pushw	x
1481  000f ae0000        	ldw	x,#0
1482  0012 89            	pushw	x
1483  0013 ae0000        	ldw	x,#L302
1484  0016 cd0000        	call	_assert_failed
1486  0019 5b04          	addw	sp,#4
1487  001b               L071:
1488                     ; 293   if (SPI_Direction != SPI_DIRECTION_RX)
1490  001b 0d01          	tnz	(OFST+1,sp)
1491  001d 2706          	jreq	L525
1492                     ; 295     SPI->CR2 |= SPI_CR2_BDOE; /* Set the Tx only mode*/
1494  001f 721c5201      	bset	20993,#6
1496  0023 2004          	jra	L725
1497  0025               L525:
1498                     ; 299     SPI->CR2 &= (uint8_t)(~SPI_CR2_BDOE); /* Set the Rx only mode*/
1500  0025 721d5201      	bres	20993,#6
1501  0029               L725:
1502                     ; 301 }
1505  0029 84            	pop	a
1506  002a 81            	ret
1628                     ; 311 FlagStatus SPI_GetFlagStatus(SPI_Flag_TypeDef SPI_FLAG)
1628                     ; 312 {
1629                     .text:	section	.text,new
1630  0000               _SPI_GetFlagStatus:
1632  0000 88            	push	a
1633  0001 88            	push	a
1634       00000001      OFST:	set	1
1637                     ; 313   FlagStatus status = RESET;
1639                     ; 315   assert_param(IS_SPI_FLAGS_OK(SPI_FLAG));
1641  0002 a140          	cp	a,#64
1642  0004 2718          	jreq	L671
1643  0006 a120          	cp	a,#32
1644  0008 2714          	jreq	L671
1645  000a a110          	cp	a,#16
1646  000c 2710          	jreq	L671
1647  000e a108          	cp	a,#8
1648  0010 270c          	jreq	L671
1649  0012 a102          	cp	a,#2
1650  0014 2708          	jreq	L671
1651  0016 a101          	cp	a,#1
1652  0018 2704          	jreq	L671
1653  001a a180          	cp	a,#128
1654  001c 2603          	jrne	L471
1655  001e               L671:
1656  001e 4f            	clr	a
1657  001f 2010          	jra	L002
1658  0021               L471:
1659  0021 ae013b        	ldw	x,#315
1660  0024 89            	pushw	x
1661  0025 ae0000        	ldw	x,#0
1662  0028 89            	pushw	x
1663  0029 ae0000        	ldw	x,#L302
1664  002c cd0000        	call	_assert_failed
1666  002f 5b04          	addw	sp,#4
1667  0031               L002:
1668                     ; 318   if ((SPI->SR & (uint8_t)SPI_FLAG) != (uint8_t)RESET)
1670  0031 c65203        	ld	a,20995
1671  0034 1502          	bcp	a,(OFST+1,sp)
1672  0036 2706          	jreq	L506
1673                     ; 320     status = SET; /* SPI_FLAG is set */
1675  0038 a601          	ld	a,#1
1676  003a 6b01          	ld	(OFST+0,sp),a
1679  003c 2002          	jra	L706
1680  003e               L506:
1681                     ; 324     status = RESET; /* SPI_FLAG is reset*/
1683  003e 0f01          	clr	(OFST+0,sp)
1685  0040               L706:
1686                     ; 328   return status;
1688  0040 7b01          	ld	a,(OFST+0,sp)
1691  0042 85            	popw	x
1692  0043 81            	ret
1728                     ; 346 void SPI_ClearFlag(SPI_Flag_TypeDef SPI_FLAG)
1728                     ; 347 {
1729                     .text:	section	.text,new
1730  0000               _SPI_ClearFlag:
1732  0000 88            	push	a
1733       00000000      OFST:	set	0
1736                     ; 348   assert_param(IS_SPI_CLEAR_FLAGS_OK(SPI_FLAG));
1738  0001 a110          	cp	a,#16
1739  0003 2704          	jreq	L602
1740  0005 a108          	cp	a,#8
1741  0007 2603          	jrne	L402
1742  0009               L602:
1743  0009 4f            	clr	a
1744  000a 2010          	jra	L012
1745  000c               L402:
1746  000c ae015c        	ldw	x,#348
1747  000f 89            	pushw	x
1748  0010 ae0000        	ldw	x,#0
1749  0013 89            	pushw	x
1750  0014 ae0000        	ldw	x,#L302
1751  0017 cd0000        	call	_assert_failed
1753  001a 5b04          	addw	sp,#4
1754  001c               L012:
1755                     ; 350   SPI->SR = (uint8_t)(~SPI_FLAG);
1757  001c 7b01          	ld	a,(OFST+1,sp)
1758  001e 43            	cpl	a
1759  001f c75203        	ld	20995,a
1760                     ; 351 }
1763  0022 84            	pop	a
1764  0023 81            	ret
1847                     ; 366 ITStatus SPI_GetITStatus(SPI_IT_TypeDef SPI_IT)
1847                     ; 367 {
1848                     .text:	section	.text,new
1849  0000               _SPI_GetITStatus:
1851  0000 88            	push	a
1852  0001 89            	pushw	x
1853       00000002      OFST:	set	2
1856                     ; 368   ITStatus pendingbitstatus = RESET;
1858                     ; 369   uint8_t itpos = 0;
1860                     ; 370   uint8_t itmask1 = 0;
1862                     ; 371   uint8_t itmask2 = 0;
1864                     ; 372   uint8_t enablestatus = 0;
1866                     ; 373   assert_param(IS_SPI_GET_IT_OK(SPI_IT));
1868  0002 a165          	cp	a,#101
1869  0004 2714          	jreq	L612
1870  0006 a155          	cp	a,#85
1871  0008 2710          	jreq	L612
1872  000a a145          	cp	a,#69
1873  000c 270c          	jreq	L612
1874  000e a134          	cp	a,#52
1875  0010 2708          	jreq	L612
1876  0012 a117          	cp	a,#23
1877  0014 2704          	jreq	L612
1878  0016 a106          	cp	a,#6
1879  0018 2603          	jrne	L412
1880  001a               L612:
1881  001a 4f            	clr	a
1882  001b 2010          	jra	L022
1883  001d               L412:
1884  001d ae0175        	ldw	x,#373
1885  0020 89            	pushw	x
1886  0021 ae0000        	ldw	x,#0
1887  0024 89            	pushw	x
1888  0025 ae0000        	ldw	x,#L302
1889  0028 cd0000        	call	_assert_failed
1891  002b 5b04          	addw	sp,#4
1892  002d               L022:
1893                     ; 375   itpos = (uint8_t)((uint8_t)1 << ((uint8_t)SPI_IT & (uint8_t)0x0F));
1895  002d 7b03          	ld	a,(OFST+1,sp)
1896  002f a40f          	and	a,#15
1897  0031 5f            	clrw	x
1898  0032 97            	ld	xl,a
1899  0033 a601          	ld	a,#1
1900  0035 5d            	tnzw	x
1901  0036 2704          	jreq	L222
1902  0038               L422:
1903  0038 48            	sll	a
1904  0039 5a            	decw	x
1905  003a 26fc          	jrne	L422
1906  003c               L222:
1907  003c 6b01          	ld	(OFST-1,sp),a
1909                     ; 378   itmask1 = (uint8_t)((uint8_t)SPI_IT >> (uint8_t)4);
1911  003e 7b03          	ld	a,(OFST+1,sp)
1912  0040 4e            	swap	a
1913  0041 a40f          	and	a,#15
1914  0043 6b02          	ld	(OFST+0,sp),a
1916                     ; 380   itmask2 = (uint8_t)((uint8_t)1 << itmask1);
1918  0045 7b02          	ld	a,(OFST+0,sp)
1919  0047 5f            	clrw	x
1920  0048 97            	ld	xl,a
1921  0049 a601          	ld	a,#1
1922  004b 5d            	tnzw	x
1923  004c 2704          	jreq	L622
1924  004e               L032:
1925  004e 48            	sll	a
1926  004f 5a            	decw	x
1927  0050 26fc          	jrne	L032
1928  0052               L622:
1929  0052 6b02          	ld	(OFST+0,sp),a
1931                     ; 382   enablestatus = (uint8_t)((uint8_t)SPI->SR & itmask2);
1933  0054 c65203        	ld	a,20995
1934  0057 1402          	and	a,(OFST+0,sp)
1935  0059 6b02          	ld	(OFST+0,sp),a
1937                     ; 384   if (((SPI->ICR & itpos) != RESET) && enablestatus)
1939  005b c65202        	ld	a,20994
1940  005e 1501          	bcp	a,(OFST-1,sp)
1941  0060 270a          	jreq	L176
1943  0062 0d02          	tnz	(OFST+0,sp)
1944  0064 2706          	jreq	L176
1945                     ; 387     pendingbitstatus = SET;
1947  0066 a601          	ld	a,#1
1948  0068 6b02          	ld	(OFST+0,sp),a
1951  006a 2002          	jra	L376
1952  006c               L176:
1953                     ; 392     pendingbitstatus = RESET;
1955  006c 0f02          	clr	(OFST+0,sp)
1957  006e               L376:
1958                     ; 395   return  pendingbitstatus;
1960  006e 7b02          	ld	a,(OFST+0,sp)
1963  0070 5b03          	addw	sp,#3
1964  0072 81            	ret
2010                     ; 412 void SPI_ClearITPendingBit(SPI_IT_TypeDef SPI_IT)
2010                     ; 413 {
2011                     .text:	section	.text,new
2012  0000               _SPI_ClearITPendingBit:
2014  0000 88            	push	a
2015  0001 88            	push	a
2016       00000001      OFST:	set	1
2019                     ; 414   uint8_t itpos = 0;
2021                     ; 415   assert_param(IS_SPI_CLEAR_IT_OK(SPI_IT));
2023  0002 a145          	cp	a,#69
2024  0004 2704          	jreq	L632
2025  0006 a134          	cp	a,#52
2026  0008 2603          	jrne	L432
2027  000a               L632:
2028  000a 4f            	clr	a
2029  000b 2010          	jra	L042
2030  000d               L432:
2031  000d ae019f        	ldw	x,#415
2032  0010 89            	pushw	x
2033  0011 ae0000        	ldw	x,#0
2034  0014 89            	pushw	x
2035  0015 ae0000        	ldw	x,#L302
2036  0018 cd0000        	call	_assert_failed
2038  001b 5b04          	addw	sp,#4
2039  001d               L042:
2040                     ; 420   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)(SPI_IT & (uint8_t)0xF0) >> 4));
2042  001d 7b02          	ld	a,(OFST+1,sp)
2043  001f a4f0          	and	a,#240
2044  0021 4e            	swap	a
2045  0022 a40f          	and	a,#15
2046  0024 5f            	clrw	x
2047  0025 97            	ld	xl,a
2048  0026 a601          	ld	a,#1
2049  0028 5d            	tnzw	x
2050  0029 2704          	jreq	L242
2051  002b               L442:
2052  002b 48            	sll	a
2053  002c 5a            	decw	x
2054  002d 26fc          	jrne	L442
2055  002f               L242:
2056  002f 6b01          	ld	(OFST+0,sp),a
2058                     ; 422   SPI->SR = (uint8_t)(~itpos);
2060  0031 7b01          	ld	a,(OFST+0,sp)
2061  0033 43            	cpl	a
2062  0034 c75203        	ld	20995,a
2063                     ; 424 }
2066  0037 85            	popw	x
2067  0038 81            	ret
2080                     	xdef	_SPI_ClearITPendingBit
2081                     	xdef	_SPI_GetITStatus
2082                     	xdef	_SPI_ClearFlag
2083                     	xdef	_SPI_GetFlagStatus
2084                     	xdef	_SPI_BiDirectionalLineConfig
2085                     	xdef	_SPI_GetCRCPolynomial
2086                     	xdef	_SPI_ResetCRC
2087                     	xdef	_SPI_GetCRC
2088                     	xdef	_SPI_CalculateCRCCmd
2089                     	xdef	_SPI_TransmitCRC
2090                     	xdef	_SPI_NSSInternalSoftwareCmd
2091                     	xdef	_SPI_ReceiveData
2092                     	xdef	_SPI_SendData
2093                     	xdef	_SPI_ITConfig
2094                     	xdef	_SPI_Cmd
2095                     	xdef	_SPI_Init
2096                     	xdef	_SPI_DeInit
2097                     	xref	_assert_failed
2098                     .const:	section	.text
2099  0000               L302:
2100  0000 2e2e5c6c6962  	dc.b	"..\libs\src\stm8s_"
2101  0012 7370692e6300  	dc.b	"spi.c",0
2121                     	end
