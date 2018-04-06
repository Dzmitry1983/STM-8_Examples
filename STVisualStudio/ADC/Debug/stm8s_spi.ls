   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
  43                     ; 50 void SPI_DeInit(void)
  43                     ; 51 {
  45                     	switch	.text
  46  0000               _SPI_DeInit:
  50                     ; 52   SPI->CR1    = SPI_CR1_RESET_VALUE;
  52  0000 725f5200      	clr	20992
  53                     ; 53   SPI->CR2    = SPI_CR2_RESET_VALUE;
  55  0004 725f5201      	clr	20993
  56                     ; 54   SPI->ICR    = SPI_ICR_RESET_VALUE;
  58  0008 725f5202      	clr	20994
  59                     ; 55   SPI->SR     = SPI_SR_RESET_VALUE;
  61  000c 35025203      	mov	20995,#2
  62                     ; 56   SPI->CRCPR  = SPI_CRCPR_RESET_VALUE;
  64  0010 35075205      	mov	20997,#7
  65                     ; 57 }
  68  0014 81            	ret
 385                     ; 78 void SPI_Init(SPI_FirstBit_TypeDef FirstBit, SPI_BaudRatePrescaler_TypeDef BaudRatePrescaler, SPI_Mode_TypeDef Mode, SPI_ClockPolarity_TypeDef ClockPolarity, SPI_ClockPhase_TypeDef ClockPhase, SPI_DataDirection_TypeDef Data_Direction, SPI_NSS_TypeDef Slave_Management, uint8_t CRCPolynomial)
 385                     ; 79 {
 386                     	switch	.text
 387  0015               _SPI_Init:
 389  0015 89            	pushw	x
 390  0016 88            	push	a
 391       00000001      OFST:	set	1
 394                     ; 81   assert_param(IS_SPI_FIRSTBIT_OK(FirstBit));
 396  0017 9e            	ld	a,xh
 397  0018 4d            	tnz	a
 398  0019 2705          	jreq	L21
 399  001b 9e            	ld	a,xh
 400  001c a180          	cp	a,#128
 401  001e 2603          	jrne	L01
 402  0020               L21:
 403  0020 4f            	clr	a
 404  0021 2010          	jra	L41
 405  0023               L01:
 406  0023 ae0051        	ldw	x,#81
 407  0026 89            	pushw	x
 408  0027 ae0000        	ldw	x,#0
 409  002a 89            	pushw	x
 410  002b ae0000        	ldw	x,#L302
 411  002e cd0000        	call	_assert_failed
 413  0031 5b04          	addw	sp,#4
 414  0033               L41:
 415                     ; 82   assert_param(IS_SPI_BAUDRATE_PRESCALER_OK(BaudRatePrescaler));
 417  0033 0d03          	tnz	(OFST+2,sp)
 418  0035 272a          	jreq	L02
 419  0037 7b03          	ld	a,(OFST+2,sp)
 420  0039 a108          	cp	a,#8
 421  003b 2724          	jreq	L02
 422  003d 7b03          	ld	a,(OFST+2,sp)
 423  003f a110          	cp	a,#16
 424  0041 271e          	jreq	L02
 425  0043 7b03          	ld	a,(OFST+2,sp)
 426  0045 a118          	cp	a,#24
 427  0047 2718          	jreq	L02
 428  0049 7b03          	ld	a,(OFST+2,sp)
 429  004b a120          	cp	a,#32
 430  004d 2712          	jreq	L02
 431  004f 7b03          	ld	a,(OFST+2,sp)
 432  0051 a128          	cp	a,#40
 433  0053 270c          	jreq	L02
 434  0055 7b03          	ld	a,(OFST+2,sp)
 435  0057 a130          	cp	a,#48
 436  0059 2706          	jreq	L02
 437  005b 7b03          	ld	a,(OFST+2,sp)
 438  005d a138          	cp	a,#56
 439  005f 2603          	jrne	L61
 440  0061               L02:
 441  0061 4f            	clr	a
 442  0062 2010          	jra	L22
 443  0064               L61:
 444  0064 ae0052        	ldw	x,#82
 445  0067 89            	pushw	x
 446  0068 ae0000        	ldw	x,#0
 447  006b 89            	pushw	x
 448  006c ae0000        	ldw	x,#L302
 449  006f cd0000        	call	_assert_failed
 451  0072 5b04          	addw	sp,#4
 452  0074               L22:
 453                     ; 83   assert_param(IS_SPI_MODE_OK(Mode));
 455  0074 7b06          	ld	a,(OFST+5,sp)
 456  0076 a104          	cp	a,#4
 457  0078 2704          	jreq	L62
 458  007a 0d06          	tnz	(OFST+5,sp)
 459  007c 2603          	jrne	L42
 460  007e               L62:
 461  007e 4f            	clr	a
 462  007f 2010          	jra	L03
 463  0081               L42:
 464  0081 ae0053        	ldw	x,#83
 465  0084 89            	pushw	x
 466  0085 ae0000        	ldw	x,#0
 467  0088 89            	pushw	x
 468  0089 ae0000        	ldw	x,#L302
 469  008c cd0000        	call	_assert_failed
 471  008f 5b04          	addw	sp,#4
 472  0091               L03:
 473                     ; 84   assert_param(IS_SPI_POLARITY_OK(ClockPolarity));
 475  0091 0d07          	tnz	(OFST+6,sp)
 476  0093 2706          	jreq	L43
 477  0095 7b07          	ld	a,(OFST+6,sp)
 478  0097 a102          	cp	a,#2
 479  0099 2603          	jrne	L23
 480  009b               L43:
 481  009b 4f            	clr	a
 482  009c 2010          	jra	L63
 483  009e               L23:
 484  009e ae0054        	ldw	x,#84
 485  00a1 89            	pushw	x
 486  00a2 ae0000        	ldw	x,#0
 487  00a5 89            	pushw	x
 488  00a6 ae0000        	ldw	x,#L302
 489  00a9 cd0000        	call	_assert_failed
 491  00ac 5b04          	addw	sp,#4
 492  00ae               L63:
 493                     ; 85   assert_param(IS_SPI_PHASE_OK(ClockPhase));
 495  00ae 0d08          	tnz	(OFST+7,sp)
 496  00b0 2706          	jreq	L24
 497  00b2 7b08          	ld	a,(OFST+7,sp)
 498  00b4 a101          	cp	a,#1
 499  00b6 2603          	jrne	L04
 500  00b8               L24:
 501  00b8 4f            	clr	a
 502  00b9 2010          	jra	L44
 503  00bb               L04:
 504  00bb ae0055        	ldw	x,#85
 505  00be 89            	pushw	x
 506  00bf ae0000        	ldw	x,#0
 507  00c2 89            	pushw	x
 508  00c3 ae0000        	ldw	x,#L302
 509  00c6 cd0000        	call	_assert_failed
 511  00c9 5b04          	addw	sp,#4
 512  00cb               L44:
 513                     ; 86   assert_param(IS_SPI_DATA_DIRECTION_OK(Data_Direction));
 515  00cb 0d09          	tnz	(OFST+8,sp)
 516  00cd 2712          	jreq	L05
 517  00cf 7b09          	ld	a,(OFST+8,sp)
 518  00d1 a104          	cp	a,#4
 519  00d3 270c          	jreq	L05
 520  00d5 7b09          	ld	a,(OFST+8,sp)
 521  00d7 a180          	cp	a,#128
 522  00d9 2706          	jreq	L05
 523  00db 7b09          	ld	a,(OFST+8,sp)
 524  00dd a1c0          	cp	a,#192
 525  00df 2603          	jrne	L64
 526  00e1               L05:
 527  00e1 4f            	clr	a
 528  00e2 2010          	jra	L25
 529  00e4               L64:
 530  00e4 ae0056        	ldw	x,#86
 531  00e7 89            	pushw	x
 532  00e8 ae0000        	ldw	x,#0
 533  00eb 89            	pushw	x
 534  00ec ae0000        	ldw	x,#L302
 535  00ef cd0000        	call	_assert_failed
 537  00f2 5b04          	addw	sp,#4
 538  00f4               L25:
 539                     ; 87   assert_param(IS_SPI_SLAVEMANAGEMENT_OK(Slave_Management));
 541  00f4 7b0a          	ld	a,(OFST+9,sp)
 542  00f6 a102          	cp	a,#2
 543  00f8 2704          	jreq	L65
 544  00fa 0d0a          	tnz	(OFST+9,sp)
 545  00fc 2603          	jrne	L45
 546  00fe               L65:
 547  00fe 4f            	clr	a
 548  00ff 2010          	jra	L06
 549  0101               L45:
 550  0101 ae0057        	ldw	x,#87
 551  0104 89            	pushw	x
 552  0105 ae0000        	ldw	x,#0
 553  0108 89            	pushw	x
 554  0109 ae0000        	ldw	x,#L302
 555  010c cd0000        	call	_assert_failed
 557  010f 5b04          	addw	sp,#4
 558  0111               L06:
 559                     ; 88   assert_param(IS_SPI_CRC_POLYNOMIAL_OK(CRCPolynomial));
 561  0111 0d0b          	tnz	(OFST+10,sp)
 562  0113 2703          	jreq	L26
 563  0115 4f            	clr	a
 564  0116 2010          	jra	L46
 565  0118               L26:
 566  0118 ae0058        	ldw	x,#88
 567  011b 89            	pushw	x
 568  011c ae0000        	ldw	x,#0
 569  011f 89            	pushw	x
 570  0120 ae0000        	ldw	x,#L302
 571  0123 cd0000        	call	_assert_failed
 573  0126 5b04          	addw	sp,#4
 574  0128               L46:
 575                     ; 91   SPI->CR1 = (uint8_t)((uint8_t)((uint8_t)FirstBit | BaudRatePrescaler) |
 575                     ; 92                        (uint8_t)((uint8_t)ClockPolarity | ClockPhase));
 577  0128 7b07          	ld	a,(OFST+6,sp)
 578  012a 1a08          	or	a,(OFST+7,sp)
 579  012c 6b01          	ld	(OFST+0,sp),a
 581  012e 7b02          	ld	a,(OFST+1,sp)
 582  0130 1a03          	or	a,(OFST+2,sp)
 583  0132 1a01          	or	a,(OFST+0,sp)
 584  0134 c75200        	ld	20992,a
 585                     ; 95   SPI->CR2 = (uint8_t)((uint8_t)(Data_Direction) | (uint8_t)(Slave_Management));
 587  0137 7b09          	ld	a,(OFST+8,sp)
 588  0139 1a0a          	or	a,(OFST+9,sp)
 589  013b c75201        	ld	20993,a
 590                     ; 97   if (Mode == SPI_MODE_MASTER)
 592  013e 7b06          	ld	a,(OFST+5,sp)
 593  0140 a104          	cp	a,#4
 594  0142 2606          	jrne	L502
 595                     ; 99     SPI->CR2 |= (uint8_t)SPI_CR2_SSI;
 597  0144 72105201      	bset	20993,#0
 599  0148 2004          	jra	L702
 600  014a               L502:
 601                     ; 103     SPI->CR2 &= (uint8_t)~(SPI_CR2_SSI);
 603  014a 72115201      	bres	20993,#0
 604  014e               L702:
 605                     ; 107   SPI->CR1 |= (uint8_t)(Mode);
 607  014e c65200        	ld	a,20992
 608  0151 1a06          	or	a,(OFST+5,sp)
 609  0153 c75200        	ld	20992,a
 610                     ; 110   SPI->CRCPR = (uint8_t)CRCPolynomial;
 612  0156 7b0b          	ld	a,(OFST+10,sp)
 613  0158 c75205        	ld	20997,a
 614                     ; 111 }
 617  015b 5b03          	addw	sp,#3
 618  015d 81            	ret
 674                     ; 119 void SPI_Cmd(FunctionalState NewState)
 674                     ; 120 {
 675                     	switch	.text
 676  015e               _SPI_Cmd:
 678  015e 88            	push	a
 679       00000000      OFST:	set	0
 682                     ; 122   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 684  015f 4d            	tnz	a
 685  0160 2704          	jreq	L27
 686  0162 a101          	cp	a,#1
 687  0164 2603          	jrne	L07
 688  0166               L27:
 689  0166 4f            	clr	a
 690  0167 2010          	jra	L47
 691  0169               L07:
 692  0169 ae007a        	ldw	x,#122
 693  016c 89            	pushw	x
 694  016d ae0000        	ldw	x,#0
 695  0170 89            	pushw	x
 696  0171 ae0000        	ldw	x,#L302
 697  0174 cd0000        	call	_assert_failed
 699  0177 5b04          	addw	sp,#4
 700  0179               L47:
 701                     ; 124   if (NewState != DISABLE)
 703  0179 0d01          	tnz	(OFST+1,sp)
 704  017b 2706          	jreq	L732
 705                     ; 126     SPI->CR1 |= SPI_CR1_SPE; /* Enable the SPI peripheral*/
 707  017d 721c5200      	bset	20992,#6
 709  0181 2004          	jra	L142
 710  0183               L732:
 711                     ; 130     SPI->CR1 &= (uint8_t)(~SPI_CR1_SPE); /* Disable the SPI peripheral*/
 713  0183 721d5200      	bres	20992,#6
 714  0187               L142:
 715                     ; 132 }
 718  0187 84            	pop	a
 719  0188 81            	ret
 829                     ; 141 void SPI_ITConfig(SPI_IT_TypeDef SPI_IT, FunctionalState NewState)
 829                     ; 142 {
 830                     	switch	.text
 831  0189               _SPI_ITConfig:
 833  0189 89            	pushw	x
 834  018a 88            	push	a
 835       00000001      OFST:	set	1
 838                     ; 143   uint8_t itpos = 0;
 840                     ; 145   assert_param(IS_SPI_CONFIG_IT_OK(SPI_IT));
 842  018b 9e            	ld	a,xh
 843  018c a117          	cp	a,#23
 844  018e 270f          	jreq	L201
 845  0190 9e            	ld	a,xh
 846  0191 a106          	cp	a,#6
 847  0193 270a          	jreq	L201
 848  0195 9e            	ld	a,xh
 849  0196 a105          	cp	a,#5
 850  0198 2705          	jreq	L201
 851  019a 9e            	ld	a,xh
 852  019b a134          	cp	a,#52
 853  019d 2603          	jrne	L001
 854  019f               L201:
 855  019f 4f            	clr	a
 856  01a0 2010          	jra	L401
 857  01a2               L001:
 858  01a2 ae0091        	ldw	x,#145
 859  01a5 89            	pushw	x
 860  01a6 ae0000        	ldw	x,#0
 861  01a9 89            	pushw	x
 862  01aa ae0000        	ldw	x,#L302
 863  01ad cd0000        	call	_assert_failed
 865  01b0 5b04          	addw	sp,#4
 866  01b2               L401:
 867                     ; 146   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 869  01b2 0d03          	tnz	(OFST+2,sp)
 870  01b4 2706          	jreq	L011
 871  01b6 7b03          	ld	a,(OFST+2,sp)
 872  01b8 a101          	cp	a,#1
 873  01ba 2603          	jrne	L601
 874  01bc               L011:
 875  01bc 4f            	clr	a
 876  01bd 2010          	jra	L211
 877  01bf               L601:
 878  01bf ae0092        	ldw	x,#146
 879  01c2 89            	pushw	x
 880  01c3 ae0000        	ldw	x,#0
 881  01c6 89            	pushw	x
 882  01c7 ae0000        	ldw	x,#L302
 883  01ca cd0000        	call	_assert_failed
 885  01cd 5b04          	addw	sp,#4
 886  01cf               L211:
 887                     ; 149   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)SPI_IT & (uint8_t)0x0F));
 889  01cf 7b02          	ld	a,(OFST+1,sp)
 890  01d1 a40f          	and	a,#15
 891  01d3 5f            	clrw	x
 892  01d4 97            	ld	xl,a
 893  01d5 a601          	ld	a,#1
 894  01d7 5d            	tnzw	x
 895  01d8 2704          	jreq	L411
 896  01da               L611:
 897  01da 48            	sll	a
 898  01db 5a            	decw	x
 899  01dc 26fc          	jrne	L611
 900  01de               L411:
 901  01de 6b01          	ld	(OFST+0,sp),a
 903                     ; 151   if (NewState != DISABLE)
 905  01e0 0d03          	tnz	(OFST+2,sp)
 906  01e2 270a          	jreq	L313
 907                     ; 153     SPI->ICR |= itpos; /* Enable interrupt*/
 909  01e4 c65202        	ld	a,20994
 910  01e7 1a01          	or	a,(OFST+0,sp)
 911  01e9 c75202        	ld	20994,a
 913  01ec 2009          	jra	L513
 914  01ee               L313:
 915                     ; 157     SPI->ICR &= (uint8_t)(~itpos); /* Disable interrupt*/
 917  01ee 7b01          	ld	a,(OFST+0,sp)
 918  01f0 43            	cpl	a
 919  01f1 c45202        	and	a,20994
 920  01f4 c75202        	ld	20994,a
 921  01f7               L513:
 922                     ; 159 }
 925  01f7 5b03          	addw	sp,#3
 926  01f9 81            	ret
 960                     ; 166 void SPI_SendData(uint8_t Data)
 960                     ; 167 {
 961                     	switch	.text
 962  01fa               _SPI_SendData:
 966                     ; 168   SPI->DR = Data; /* Write in the DR register the data to be sent*/
 968  01fa c75204        	ld	20996,a
 969                     ; 169 }
 972  01fd 81            	ret
 995                     ; 176 uint8_t SPI_ReceiveData(void)
 995                     ; 177 {
 996                     	switch	.text
 997  01fe               _SPI_ReceiveData:
1001                     ; 178   return ((uint8_t)SPI->DR); /* Return the data in the DR register*/
1003  01fe c65204        	ld	a,20996
1006  0201 81            	ret
1043                     ; 187 void SPI_NSSInternalSoftwareCmd(FunctionalState NewState)
1043                     ; 188 {
1044                     	switch	.text
1045  0202               _SPI_NSSInternalSoftwareCmd:
1047  0202 88            	push	a
1048       00000000      OFST:	set	0
1051                     ; 190   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1053  0203 4d            	tnz	a
1054  0204 2704          	jreq	L031
1055  0206 a101          	cp	a,#1
1056  0208 2603          	jrne	L621
1057  020a               L031:
1058  020a 4f            	clr	a
1059  020b 2010          	jra	L231
1060  020d               L621:
1061  020d ae00be        	ldw	x,#190
1062  0210 89            	pushw	x
1063  0211 ae0000        	ldw	x,#0
1064  0214 89            	pushw	x
1065  0215 ae0000        	ldw	x,#L302
1066  0218 cd0000        	call	_assert_failed
1068  021b 5b04          	addw	sp,#4
1069  021d               L231:
1070                     ; 192   if (NewState != DISABLE)
1072  021d 0d01          	tnz	(OFST+1,sp)
1073  021f 2706          	jreq	L363
1074                     ; 194     SPI->CR2 |= SPI_CR2_SSI; /* Set NSS pin internally by software*/
1076  0221 72105201      	bset	20993,#0
1078  0225 2004          	jra	L563
1079  0227               L363:
1080                     ; 198     SPI->CR2 &= (uint8_t)(~SPI_CR2_SSI); /* Reset NSS pin internally by software*/
1082  0227 72115201      	bres	20993,#0
1083  022b               L563:
1084                     ; 200 }
1087  022b 84            	pop	a
1088  022c 81            	ret
1111                     ; 207 void SPI_TransmitCRC(void)
1111                     ; 208 {
1112                     	switch	.text
1113  022d               _SPI_TransmitCRC:
1117                     ; 209   SPI->CR2 |= SPI_CR2_CRCNEXT; /* Enable the CRC transmission*/
1119  022d 72185201      	bset	20993,#4
1120                     ; 210 }
1123  0231 81            	ret
1160                     ; 218 void SPI_CalculateCRCCmd(FunctionalState NewState)
1160                     ; 219 {
1161                     	switch	.text
1162  0232               _SPI_CalculateCRCCmd:
1164  0232 88            	push	a
1165       00000000      OFST:	set	0
1168                     ; 221   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1170  0233 4d            	tnz	a
1171  0234 2704          	jreq	L241
1172  0236 a101          	cp	a,#1
1173  0238 2603          	jrne	L041
1174  023a               L241:
1175  023a 4f            	clr	a
1176  023b 2010          	jra	L441
1177  023d               L041:
1178  023d ae00dd        	ldw	x,#221
1179  0240 89            	pushw	x
1180  0241 ae0000        	ldw	x,#0
1181  0244 89            	pushw	x
1182  0245 ae0000        	ldw	x,#L302
1183  0248 cd0000        	call	_assert_failed
1185  024b 5b04          	addw	sp,#4
1186  024d               L441:
1187                     ; 223   if (NewState != DISABLE)
1189  024d 0d01          	tnz	(OFST+1,sp)
1190  024f 2706          	jreq	L514
1191                     ; 225     SPI->CR2 |= SPI_CR2_CRCEN; /* Enable the CRC calculation*/
1193  0251 721a5201      	bset	20993,#5
1195  0255 2004          	jra	L714
1196  0257               L514:
1197                     ; 229     SPI->CR2 &= (uint8_t)(~SPI_CR2_CRCEN); /* Disable the CRC calculation*/
1199  0257 721b5201      	bres	20993,#5
1200  025b               L714:
1201                     ; 231 }
1204  025b 84            	pop	a
1205  025c 81            	ret
1270                     ; 238 uint8_t SPI_GetCRC(SPI_CRC_TypeDef SPI_CRC)
1270                     ; 239 {
1271                     	switch	.text
1272  025d               _SPI_GetCRC:
1274  025d 88            	push	a
1275  025e 88            	push	a
1276       00000001      OFST:	set	1
1279                     ; 240   uint8_t crcreg = 0;
1281                     ; 243   assert_param(IS_SPI_CRC_OK(SPI_CRC));
1283  025f a101          	cp	a,#1
1284  0261 2703          	jreq	L251
1285  0263 4d            	tnz	a
1286  0264 2603          	jrne	L051
1287  0266               L251:
1288  0266 4f            	clr	a
1289  0267 2010          	jra	L451
1290  0269               L051:
1291  0269 ae00f3        	ldw	x,#243
1292  026c 89            	pushw	x
1293  026d ae0000        	ldw	x,#0
1294  0270 89            	pushw	x
1295  0271 ae0000        	ldw	x,#L302
1296  0274 cd0000        	call	_assert_failed
1298  0277 5b04          	addw	sp,#4
1299  0279               L451:
1300                     ; 245   if (SPI_CRC != SPI_CRC_RX)
1302  0279 0d02          	tnz	(OFST+1,sp)
1303  027b 2707          	jreq	L354
1304                     ; 247     crcreg = SPI->TXCRCR;  /* Get the Tx CRC register*/
1306  027d c65207        	ld	a,20999
1307  0280 6b01          	ld	(OFST+0,sp),a
1310  0282 2005          	jra	L554
1311  0284               L354:
1312                     ; 251     crcreg = SPI->RXCRCR; /* Get the Rx CRC register*/
1314  0284 c65206        	ld	a,20998
1315  0287 6b01          	ld	(OFST+0,sp),a
1317  0289               L554:
1318                     ; 255   return crcreg;
1320  0289 7b01          	ld	a,(OFST+0,sp)
1323  028b 85            	popw	x
1324  028c 81            	ret
1349                     ; 263 void SPI_ResetCRC(void)
1349                     ; 264 {
1350                     	switch	.text
1351  028d               _SPI_ResetCRC:
1355                     ; 267   SPI_CalculateCRCCmd(ENABLE);
1357  028d a601          	ld	a,#1
1358  028f ada1          	call	_SPI_CalculateCRCCmd
1360                     ; 270   SPI_Cmd(ENABLE);
1362  0291 a601          	ld	a,#1
1363  0293 cd015e        	call	_SPI_Cmd
1365                     ; 271 }
1368  0296 81            	ret
1392                     ; 278 uint8_t SPI_GetCRCPolynomial(void)
1392                     ; 279 {
1393                     	switch	.text
1394  0297               _SPI_GetCRCPolynomial:
1398                     ; 280   return SPI->CRCPR; /* Return the CRC polynomial register */
1400  0297 c65205        	ld	a,20997
1403  029a 81            	ret
1460                     ; 288 void SPI_BiDirectionalLineConfig(SPI_Direction_TypeDef SPI_Direction)
1460                     ; 289 {
1461                     	switch	.text
1462  029b               _SPI_BiDirectionalLineConfig:
1464  029b 88            	push	a
1465       00000000      OFST:	set	0
1468                     ; 291   assert_param(IS_SPI_DIRECTION_OK(SPI_Direction));
1470  029c 4d            	tnz	a
1471  029d 2704          	jreq	L661
1472  029f a101          	cp	a,#1
1473  02a1 2603          	jrne	L461
1474  02a3               L661:
1475  02a3 4f            	clr	a
1476  02a4 2010          	jra	L071
1477  02a6               L461:
1478  02a6 ae0123        	ldw	x,#291
1479  02a9 89            	pushw	x
1480  02aa ae0000        	ldw	x,#0
1481  02ad 89            	pushw	x
1482  02ae ae0000        	ldw	x,#L302
1483  02b1 cd0000        	call	_assert_failed
1485  02b4 5b04          	addw	sp,#4
1486  02b6               L071:
1487                     ; 293   if (SPI_Direction != SPI_DIRECTION_RX)
1489  02b6 0d01          	tnz	(OFST+1,sp)
1490  02b8 2706          	jreq	L525
1491                     ; 295     SPI->CR2 |= SPI_CR2_BDOE; /* Set the Tx only mode*/
1493  02ba 721c5201      	bset	20993,#6
1495  02be 2004          	jra	L725
1496  02c0               L525:
1497                     ; 299     SPI->CR2 &= (uint8_t)(~SPI_CR2_BDOE); /* Set the Rx only mode*/
1499  02c0 721d5201      	bres	20993,#6
1500  02c4               L725:
1501                     ; 301 }
1504  02c4 84            	pop	a
1505  02c5 81            	ret
1627                     ; 311 FlagStatus SPI_GetFlagStatus(SPI_Flag_TypeDef SPI_FLAG)
1627                     ; 312 {
1628                     	switch	.text
1629  02c6               _SPI_GetFlagStatus:
1631  02c6 88            	push	a
1632  02c7 88            	push	a
1633       00000001      OFST:	set	1
1636                     ; 313   FlagStatus status = RESET;
1638                     ; 315   assert_param(IS_SPI_FLAGS_OK(SPI_FLAG));
1640  02c8 a140          	cp	a,#64
1641  02ca 2718          	jreq	L671
1642  02cc a120          	cp	a,#32
1643  02ce 2714          	jreq	L671
1644  02d0 a110          	cp	a,#16
1645  02d2 2710          	jreq	L671
1646  02d4 a108          	cp	a,#8
1647  02d6 270c          	jreq	L671
1648  02d8 a102          	cp	a,#2
1649  02da 2708          	jreq	L671
1650  02dc a101          	cp	a,#1
1651  02de 2704          	jreq	L671
1652  02e0 a180          	cp	a,#128
1653  02e2 2603          	jrne	L471
1654  02e4               L671:
1655  02e4 4f            	clr	a
1656  02e5 2010          	jra	L002
1657  02e7               L471:
1658  02e7 ae013b        	ldw	x,#315
1659  02ea 89            	pushw	x
1660  02eb ae0000        	ldw	x,#0
1661  02ee 89            	pushw	x
1662  02ef ae0000        	ldw	x,#L302
1663  02f2 cd0000        	call	_assert_failed
1665  02f5 5b04          	addw	sp,#4
1666  02f7               L002:
1667                     ; 318   if ((SPI->SR & (uint8_t)SPI_FLAG) != (uint8_t)RESET)
1669  02f7 c65203        	ld	a,20995
1670  02fa 1502          	bcp	a,(OFST+1,sp)
1671  02fc 2706          	jreq	L506
1672                     ; 320     status = SET; /* SPI_FLAG is set */
1674  02fe a601          	ld	a,#1
1675  0300 6b01          	ld	(OFST+0,sp),a
1678  0302 2002          	jra	L706
1679  0304               L506:
1680                     ; 324     status = RESET; /* SPI_FLAG is reset*/
1682  0304 0f01          	clr	(OFST+0,sp)
1684  0306               L706:
1685                     ; 328   return status;
1687  0306 7b01          	ld	a,(OFST+0,sp)
1690  0308 85            	popw	x
1691  0309 81            	ret
1727                     ; 346 void SPI_ClearFlag(SPI_Flag_TypeDef SPI_FLAG)
1727                     ; 347 {
1728                     	switch	.text
1729  030a               _SPI_ClearFlag:
1731  030a 88            	push	a
1732       00000000      OFST:	set	0
1735                     ; 348   assert_param(IS_SPI_CLEAR_FLAGS_OK(SPI_FLAG));
1737  030b a110          	cp	a,#16
1738  030d 2704          	jreq	L602
1739  030f a108          	cp	a,#8
1740  0311 2603          	jrne	L402
1741  0313               L602:
1742  0313 4f            	clr	a
1743  0314 2010          	jra	L012
1744  0316               L402:
1745  0316 ae015c        	ldw	x,#348
1746  0319 89            	pushw	x
1747  031a ae0000        	ldw	x,#0
1748  031d 89            	pushw	x
1749  031e ae0000        	ldw	x,#L302
1750  0321 cd0000        	call	_assert_failed
1752  0324 5b04          	addw	sp,#4
1753  0326               L012:
1754                     ; 350   SPI->SR = (uint8_t)(~SPI_FLAG);
1756  0326 7b01          	ld	a,(OFST+1,sp)
1757  0328 43            	cpl	a
1758  0329 c75203        	ld	20995,a
1759                     ; 351 }
1762  032c 84            	pop	a
1763  032d 81            	ret
1846                     ; 366 ITStatus SPI_GetITStatus(SPI_IT_TypeDef SPI_IT)
1846                     ; 367 {
1847                     	switch	.text
1848  032e               _SPI_GetITStatus:
1850  032e 88            	push	a
1851  032f 89            	pushw	x
1852       00000002      OFST:	set	2
1855                     ; 368   ITStatus pendingbitstatus = RESET;
1857                     ; 369   uint8_t itpos = 0;
1859                     ; 370   uint8_t itmask1 = 0;
1861                     ; 371   uint8_t itmask2 = 0;
1863                     ; 372   uint8_t enablestatus = 0;
1865                     ; 373   assert_param(IS_SPI_GET_IT_OK(SPI_IT));
1867  0330 a165          	cp	a,#101
1868  0332 2714          	jreq	L612
1869  0334 a155          	cp	a,#85
1870  0336 2710          	jreq	L612
1871  0338 a145          	cp	a,#69
1872  033a 270c          	jreq	L612
1873  033c a134          	cp	a,#52
1874  033e 2708          	jreq	L612
1875  0340 a117          	cp	a,#23
1876  0342 2704          	jreq	L612
1877  0344 a106          	cp	a,#6
1878  0346 2603          	jrne	L412
1879  0348               L612:
1880  0348 4f            	clr	a
1881  0349 2010          	jra	L022
1882  034b               L412:
1883  034b ae0175        	ldw	x,#373
1884  034e 89            	pushw	x
1885  034f ae0000        	ldw	x,#0
1886  0352 89            	pushw	x
1887  0353 ae0000        	ldw	x,#L302
1888  0356 cd0000        	call	_assert_failed
1890  0359 5b04          	addw	sp,#4
1891  035b               L022:
1892                     ; 375   itpos = (uint8_t)((uint8_t)1 << ((uint8_t)SPI_IT & (uint8_t)0x0F));
1894  035b 7b03          	ld	a,(OFST+1,sp)
1895  035d a40f          	and	a,#15
1896  035f 5f            	clrw	x
1897  0360 97            	ld	xl,a
1898  0361 a601          	ld	a,#1
1899  0363 5d            	tnzw	x
1900  0364 2704          	jreq	L222
1901  0366               L422:
1902  0366 48            	sll	a
1903  0367 5a            	decw	x
1904  0368 26fc          	jrne	L422
1905  036a               L222:
1906  036a 6b01          	ld	(OFST-1,sp),a
1908                     ; 378   itmask1 = (uint8_t)((uint8_t)SPI_IT >> (uint8_t)4);
1910  036c 7b03          	ld	a,(OFST+1,sp)
1911  036e 4e            	swap	a
1912  036f a40f          	and	a,#15
1913  0371 6b02          	ld	(OFST+0,sp),a
1915                     ; 380   itmask2 = (uint8_t)((uint8_t)1 << itmask1);
1917  0373 7b02          	ld	a,(OFST+0,sp)
1918  0375 5f            	clrw	x
1919  0376 97            	ld	xl,a
1920  0377 a601          	ld	a,#1
1921  0379 5d            	tnzw	x
1922  037a 2704          	jreq	L622
1923  037c               L032:
1924  037c 48            	sll	a
1925  037d 5a            	decw	x
1926  037e 26fc          	jrne	L032
1927  0380               L622:
1928  0380 6b02          	ld	(OFST+0,sp),a
1930                     ; 382   enablestatus = (uint8_t)((uint8_t)SPI->SR & itmask2);
1932  0382 c65203        	ld	a,20995
1933  0385 1402          	and	a,(OFST+0,sp)
1934  0387 6b02          	ld	(OFST+0,sp),a
1936                     ; 384   if (((SPI->ICR & itpos) != RESET) && enablestatus)
1938  0389 c65202        	ld	a,20994
1939  038c 1501          	bcp	a,(OFST-1,sp)
1940  038e 270a          	jreq	L176
1942  0390 0d02          	tnz	(OFST+0,sp)
1943  0392 2706          	jreq	L176
1944                     ; 387     pendingbitstatus = SET;
1946  0394 a601          	ld	a,#1
1947  0396 6b02          	ld	(OFST+0,sp),a
1950  0398 2002          	jra	L376
1951  039a               L176:
1952                     ; 392     pendingbitstatus = RESET;
1954  039a 0f02          	clr	(OFST+0,sp)
1956  039c               L376:
1957                     ; 395   return  pendingbitstatus;
1959  039c 7b02          	ld	a,(OFST+0,sp)
1962  039e 5b03          	addw	sp,#3
1963  03a0 81            	ret
2009                     ; 412 void SPI_ClearITPendingBit(SPI_IT_TypeDef SPI_IT)
2009                     ; 413 {
2010                     	switch	.text
2011  03a1               _SPI_ClearITPendingBit:
2013  03a1 88            	push	a
2014  03a2 88            	push	a
2015       00000001      OFST:	set	1
2018                     ; 414   uint8_t itpos = 0;
2020                     ; 415   assert_param(IS_SPI_CLEAR_IT_OK(SPI_IT));
2022  03a3 a145          	cp	a,#69
2023  03a5 2704          	jreq	L632
2024  03a7 a134          	cp	a,#52
2025  03a9 2603          	jrne	L432
2026  03ab               L632:
2027  03ab 4f            	clr	a
2028  03ac 2010          	jra	L042
2029  03ae               L432:
2030  03ae ae019f        	ldw	x,#415
2031  03b1 89            	pushw	x
2032  03b2 ae0000        	ldw	x,#0
2033  03b5 89            	pushw	x
2034  03b6 ae0000        	ldw	x,#L302
2035  03b9 cd0000        	call	_assert_failed
2037  03bc 5b04          	addw	sp,#4
2038  03be               L042:
2039                     ; 420   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)(SPI_IT & (uint8_t)0xF0) >> 4));
2041  03be 7b02          	ld	a,(OFST+1,sp)
2042  03c0 a4f0          	and	a,#240
2043  03c2 4e            	swap	a
2044  03c3 a40f          	and	a,#15
2045  03c5 5f            	clrw	x
2046  03c6 97            	ld	xl,a
2047  03c7 a601          	ld	a,#1
2048  03c9 5d            	tnzw	x
2049  03ca 2704          	jreq	L242
2050  03cc               L442:
2051  03cc 48            	sll	a
2052  03cd 5a            	decw	x
2053  03ce 26fc          	jrne	L442
2054  03d0               L242:
2055  03d0 6b01          	ld	(OFST+0,sp),a
2057                     ; 422   SPI->SR = (uint8_t)(~itpos);
2059  03d2 7b01          	ld	a,(OFST+0,sp)
2060  03d4 43            	cpl	a
2061  03d5 c75203        	ld	20995,a
2062                     ; 424 }
2065  03d8 85            	popw	x
2066  03d9 81            	ret
2079                     	xdef	_SPI_ClearITPendingBit
2080                     	xdef	_SPI_GetITStatus
2081                     	xdef	_SPI_ClearFlag
2082                     	xdef	_SPI_GetFlagStatus
2083                     	xdef	_SPI_BiDirectionalLineConfig
2084                     	xdef	_SPI_GetCRCPolynomial
2085                     	xdef	_SPI_ResetCRC
2086                     	xdef	_SPI_GetCRC
2087                     	xdef	_SPI_CalculateCRCCmd
2088                     	xdef	_SPI_TransmitCRC
2089                     	xdef	_SPI_NSSInternalSoftwareCmd
2090                     	xdef	_SPI_ReceiveData
2091                     	xdef	_SPI_SendData
2092                     	xdef	_SPI_ITConfig
2093                     	xdef	_SPI_Cmd
2094                     	xdef	_SPI_Init
2095                     	xdef	_SPI_DeInit
2096                     	xref	_assert_failed
2097                     .const:	section	.text
2098  0000               L302:
2099  0000 2e2e5c6c6962  	dc.b	"..\libs\src\stm8s_"
2100  0012 7370692e6300  	dc.b	"spi.c",0
2120                     	end
