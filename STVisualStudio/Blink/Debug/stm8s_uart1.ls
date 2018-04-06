   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
  44                     ; 53 void UART1_DeInit(void)
  44                     ; 54 {
  46                     .text:	section	.text,new
  47  0000               _UART1_DeInit:
  51                     ; 57   (void)UART1->SR;
  53  0000 c65230        	ld	a,21040
  54                     ; 58   (void)UART1->DR;
  56  0003 c65231        	ld	a,21041
  57                     ; 60   UART1->BRR2 = UART1_BRR2_RESET_VALUE;  /* Set UART1_BRR2 to reset value 0x00 */
  59  0006 725f5233      	clr	21043
  60                     ; 61   UART1->BRR1 = UART1_BRR1_RESET_VALUE;  /* Set UART1_BRR1 to reset value 0x00 */
  62  000a 725f5232      	clr	21042
  63                     ; 63   UART1->CR1 = UART1_CR1_RESET_VALUE;  /* Set UART1_CR1 to reset value 0x00 */
  65  000e 725f5234      	clr	21044
  66                     ; 64   UART1->CR2 = UART1_CR2_RESET_VALUE;  /* Set UART1_CR2 to reset value 0x00 */
  68  0012 725f5235      	clr	21045
  69                     ; 65   UART1->CR3 = UART1_CR3_RESET_VALUE;  /* Set UART1_CR3 to reset value 0x00 */
  71  0016 725f5236      	clr	21046
  72                     ; 66   UART1->CR4 = UART1_CR4_RESET_VALUE;  /* Set UART1_CR4 to reset value 0x00 */
  74  001a 725f5237      	clr	21047
  75                     ; 67   UART1->CR5 = UART1_CR5_RESET_VALUE;  /* Set UART1_CR5 to reset value 0x00 */
  77  001e 725f5238      	clr	21048
  78                     ; 69   UART1->GTR = UART1_GTR_RESET_VALUE;
  80  0022 725f5239      	clr	21049
  81                     ; 70   UART1->PSCR = UART1_PSCR_RESET_VALUE;
  83  0026 725f523a      	clr	21050
  84                     ; 71 }
  87  002a 81            	ret
 390                     .const:	section	.text
 391  0000               L01:
 392  0000 00000064      	dc.l	100
 393                     ; 90 void UART1_Init(uint32_t BaudRate, UART1_WordLength_TypeDef WordLength, 
 393                     ; 91                 UART1_StopBits_TypeDef StopBits, UART1_Parity_TypeDef Parity, 
 393                     ; 92                 UART1_SyncMode_TypeDef SyncMode, UART1_Mode_TypeDef Mode)
 393                     ; 93 {
 394                     .text:	section	.text,new
 395  0000               _UART1_Init:
 397  0000 520c          	subw	sp,#12
 398       0000000c      OFST:	set	12
 401                     ; 94   uint32_t BaudRate_Mantissa = 0, BaudRate_Mantissa100 = 0;
 405                     ; 97   assert_param(IS_UART1_BAUDRATE_OK(BaudRate));
 407                     ; 98   assert_param(IS_UART1_WORDLENGTH_OK(WordLength));
 409                     ; 99   assert_param(IS_UART1_STOPBITS_OK(StopBits));
 411                     ; 100   assert_param(IS_UART1_PARITY_OK(Parity));
 413                     ; 101   assert_param(IS_UART1_MODE_OK((uint8_t)Mode));
 415                     ; 102   assert_param(IS_UART1_SYNCMODE_OK((uint8_t)SyncMode));
 417                     ; 105   UART1->CR1 &= (uint8_t)(~UART1_CR1_M);  
 419  0002 72195234      	bres	21044,#4
 420                     ; 108   UART1->CR1 |= (uint8_t)WordLength;
 422  0006 c65234        	ld	a,21044
 423  0009 1a13          	or	a,(OFST+7,sp)
 424  000b c75234        	ld	21044,a
 425                     ; 111   UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
 427  000e c65236        	ld	a,21046
 428  0011 a4cf          	and	a,#207
 429  0013 c75236        	ld	21046,a
 430                     ; 113   UART1->CR3 |= (uint8_t)StopBits;  
 432  0016 c65236        	ld	a,21046
 433  0019 1a14          	or	a,(OFST+8,sp)
 434  001b c75236        	ld	21046,a
 435                     ; 116   UART1->CR1 &= (uint8_t)(~(UART1_CR1_PCEN | UART1_CR1_PS  ));  
 437  001e c65234        	ld	a,21044
 438  0021 a4f9          	and	a,#249
 439  0023 c75234        	ld	21044,a
 440                     ; 118   UART1->CR1 |= (uint8_t)Parity;  
 442  0026 c65234        	ld	a,21044
 443  0029 1a15          	or	a,(OFST+9,sp)
 444  002b c75234        	ld	21044,a
 445                     ; 121   UART1->BRR1 &= (uint8_t)(~UART1_BRR1_DIVM);  
 447  002e 725f5232      	clr	21042
 448                     ; 123   UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVM);  
 450  0032 c65233        	ld	a,21043
 451  0035 a40f          	and	a,#15
 452  0037 c75233        	ld	21043,a
 453                     ; 125   UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVF);  
 455  003a c65233        	ld	a,21043
 456  003d a4f0          	and	a,#240
 457  003f c75233        	ld	21043,a
 458                     ; 128   BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
 460  0042 96            	ldw	x,sp
 461  0043 1c000f        	addw	x,#OFST+3
 462  0046 cd0000        	call	c_ltor
 464  0049 a604          	ld	a,#4
 465  004b cd0000        	call	c_llsh
 467  004e 96            	ldw	x,sp
 468  004f 1c0001        	addw	x,#OFST-11
 469  0052 cd0000        	call	c_rtol
 472  0055 cd0000        	call	_CLK_GetClockFreq
 474  0058 96            	ldw	x,sp
 475  0059 1c0001        	addw	x,#OFST-11
 476  005c cd0000        	call	c_ludv
 478  005f 96            	ldw	x,sp
 479  0060 1c0009        	addw	x,#OFST-3
 480  0063 cd0000        	call	c_rtol
 483                     ; 129   BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
 485  0066 96            	ldw	x,sp
 486  0067 1c000f        	addw	x,#OFST+3
 487  006a cd0000        	call	c_ltor
 489  006d a604          	ld	a,#4
 490  006f cd0000        	call	c_llsh
 492  0072 96            	ldw	x,sp
 493  0073 1c0001        	addw	x,#OFST-11
 494  0076 cd0000        	call	c_rtol
 497  0079 cd0000        	call	_CLK_GetClockFreq
 499  007c a664          	ld	a,#100
 500  007e cd0000        	call	c_smul
 502  0081 96            	ldw	x,sp
 503  0082 1c0001        	addw	x,#OFST-11
 504  0085 cd0000        	call	c_ludv
 506  0088 96            	ldw	x,sp
 507  0089 1c0005        	addw	x,#OFST-7
 508  008c cd0000        	call	c_rtol
 511                     ; 131   UART1->BRR2 |= (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100)) << 4) / 100) & (uint8_t)0x0F); 
 513  008f 96            	ldw	x,sp
 514  0090 1c0009        	addw	x,#OFST-3
 515  0093 cd0000        	call	c_ltor
 517  0096 a664          	ld	a,#100
 518  0098 cd0000        	call	c_smul
 520  009b 96            	ldw	x,sp
 521  009c 1c0001        	addw	x,#OFST-11
 522  009f cd0000        	call	c_rtol
 525  00a2 96            	ldw	x,sp
 526  00a3 1c0005        	addw	x,#OFST-7
 527  00a6 cd0000        	call	c_ltor
 529  00a9 96            	ldw	x,sp
 530  00aa 1c0001        	addw	x,#OFST-11
 531  00ad cd0000        	call	c_lsub
 533  00b0 a604          	ld	a,#4
 534  00b2 cd0000        	call	c_llsh
 536  00b5 ae0000        	ldw	x,#L01
 537  00b8 cd0000        	call	c_ludv
 539  00bb b603          	ld	a,c_lreg+3
 540  00bd a40f          	and	a,#15
 541  00bf ca5233        	or	a,21043
 542  00c2 c75233        	ld	21043,a
 543                     ; 133   UART1->BRR2 |= (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0); 
 545  00c5 96            	ldw	x,sp
 546  00c6 1c0009        	addw	x,#OFST-3
 547  00c9 cd0000        	call	c_ltor
 549  00cc a604          	ld	a,#4
 550  00ce cd0000        	call	c_lursh
 552  00d1 b603          	ld	a,c_lreg+3
 553  00d3 a4f0          	and	a,#240
 554  00d5 b703          	ld	c_lreg+3,a
 555  00d7 3f02          	clr	c_lreg+2
 556  00d9 3f01          	clr	c_lreg+1
 557  00db 3f00          	clr	c_lreg
 558  00dd b603          	ld	a,c_lreg+3
 559  00df ca5233        	or	a,21043
 560  00e2 c75233        	ld	21043,a
 561                     ; 135   UART1->BRR1 |= (uint8_t)BaudRate_Mantissa;           
 563  00e5 c65232        	ld	a,21042
 564  00e8 1a0c          	or	a,(OFST+0,sp)
 565  00ea c75232        	ld	21042,a
 566                     ; 138   UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
 568  00ed c65235        	ld	a,21045
 569  00f0 a4f3          	and	a,#243
 570  00f2 c75235        	ld	21045,a
 571                     ; 140   UART1->CR3 &= (uint8_t)~(UART1_CR3_CPOL | UART1_CR3_CPHA | UART1_CR3_LBCL); 
 573  00f5 c65236        	ld	a,21046
 574  00f8 a4f8          	and	a,#248
 575  00fa c75236        	ld	21046,a
 576                     ; 142   UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART1_CR3_CPOL | 
 576                     ; 143                                                         UART1_CR3_CPHA | UART1_CR3_LBCL));  
 578  00fd 7b16          	ld	a,(OFST+10,sp)
 579  00ff a407          	and	a,#7
 580  0101 ca5236        	or	a,21046
 581  0104 c75236        	ld	21046,a
 582                     ; 145   if ((uint8_t)(Mode & UART1_MODE_TX_ENABLE))
 584  0107 7b17          	ld	a,(OFST+11,sp)
 585  0109 a504          	bcp	a,#4
 586  010b 2706          	jreq	L371
 587                     ; 148     UART1->CR2 |= (uint8_t)UART1_CR2_TEN;  
 589  010d 72165235      	bset	21045,#3
 591  0111 2004          	jra	L571
 592  0113               L371:
 593                     ; 153     UART1->CR2 &= (uint8_t)(~UART1_CR2_TEN);  
 595  0113 72175235      	bres	21045,#3
 596  0117               L571:
 597                     ; 155   if ((uint8_t)(Mode & UART1_MODE_RX_ENABLE))
 599  0117 7b17          	ld	a,(OFST+11,sp)
 600  0119 a508          	bcp	a,#8
 601  011b 2706          	jreq	L771
 602                     ; 158     UART1->CR2 |= (uint8_t)UART1_CR2_REN;  
 604  011d 72145235      	bset	21045,#2
 606  0121 2004          	jra	L102
 607  0123               L771:
 608                     ; 163     UART1->CR2 &= (uint8_t)(~UART1_CR2_REN);  
 610  0123 72155235      	bres	21045,#2
 611  0127               L102:
 612                     ; 167   if ((uint8_t)(SyncMode & UART1_SYNCMODE_CLOCK_DISABLE))
 614  0127 7b16          	ld	a,(OFST+10,sp)
 615  0129 a580          	bcp	a,#128
 616  012b 2706          	jreq	L302
 617                     ; 170     UART1->CR3 &= (uint8_t)(~UART1_CR3_CKEN); 
 619  012d 72175236      	bres	21046,#3
 621  0131 200a          	jra	L502
 622  0133               L302:
 623                     ; 174     UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & UART1_CR3_CKEN);
 625  0133 7b16          	ld	a,(OFST+10,sp)
 626  0135 a408          	and	a,#8
 627  0137 ca5236        	or	a,21046
 628  013a c75236        	ld	21046,a
 629  013d               L502:
 630                     ; 176 }
 633  013d 5b0c          	addw	sp,#12
 634  013f 81            	ret
 689                     ; 184 void UART1_Cmd(FunctionalState NewState)
 689                     ; 185 {
 690                     .text:	section	.text,new
 691  0000               _UART1_Cmd:
 695                     ; 186   if (NewState != DISABLE)
 697  0000 4d            	tnz	a
 698  0001 2706          	jreq	L532
 699                     ; 189     UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
 701  0003 721b5234      	bres	21044,#5
 703  0007 2004          	jra	L732
 704  0009               L532:
 705                     ; 194     UART1->CR1 |= UART1_CR1_UARTD;  
 707  0009 721a5234      	bset	21044,#5
 708  000d               L732:
 709                     ; 196 }
 712  000d 81            	ret
 837                     ; 211 void UART1_ITConfig(UART1_IT_TypeDef UART1_IT, FunctionalState NewState)
 837                     ; 212 {
 838                     .text:	section	.text,new
 839  0000               _UART1_ITConfig:
 841  0000 89            	pushw	x
 842  0001 89            	pushw	x
 843       00000002      OFST:	set	2
 846                     ; 213   uint8_t uartreg = 0, itpos = 0x00;
 850                     ; 216   assert_param(IS_UART1_CONFIG_IT_OK(UART1_IT));
 852                     ; 217   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 854                     ; 220   uartreg = (uint8_t)((uint16_t)UART1_IT >> 0x08);
 856  0002 9e            	ld	a,xh
 857  0003 6b01          	ld	(OFST-1,sp),a
 859                     ; 222   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
 861  0005 9f            	ld	a,xl
 862  0006 a40f          	and	a,#15
 863  0008 5f            	clrw	x
 864  0009 97            	ld	xl,a
 865  000a a601          	ld	a,#1
 866  000c 5d            	tnzw	x
 867  000d 2704          	jreq	L61
 868  000f               L02:
 869  000f 48            	sll	a
 870  0010 5a            	decw	x
 871  0011 26fc          	jrne	L02
 872  0013               L61:
 873  0013 6b02          	ld	(OFST+0,sp),a
 875                     ; 224   if (NewState != DISABLE)
 877  0015 0d07          	tnz	(OFST+5,sp)
 878  0017 272a          	jreq	L713
 879                     ; 227     if (uartreg == 0x01)
 881  0019 7b01          	ld	a,(OFST-1,sp)
 882  001b a101          	cp	a,#1
 883  001d 260a          	jrne	L123
 884                     ; 229       UART1->CR1 |= itpos;
 886  001f c65234        	ld	a,21044
 887  0022 1a02          	or	a,(OFST+0,sp)
 888  0024 c75234        	ld	21044,a
 890  0027 2045          	jra	L133
 891  0029               L123:
 892                     ; 231     else if (uartreg == 0x02)
 894  0029 7b01          	ld	a,(OFST-1,sp)
 895  002b a102          	cp	a,#2
 896  002d 260a          	jrne	L523
 897                     ; 233       UART1->CR2 |= itpos;
 899  002f c65235        	ld	a,21045
 900  0032 1a02          	or	a,(OFST+0,sp)
 901  0034 c75235        	ld	21045,a
 903  0037 2035          	jra	L133
 904  0039               L523:
 905                     ; 237       UART1->CR4 |= itpos;
 907  0039 c65237        	ld	a,21047
 908  003c 1a02          	or	a,(OFST+0,sp)
 909  003e c75237        	ld	21047,a
 910  0041 202b          	jra	L133
 911  0043               L713:
 912                     ; 243     if (uartreg == 0x01)
 914  0043 7b01          	ld	a,(OFST-1,sp)
 915  0045 a101          	cp	a,#1
 916  0047 260b          	jrne	L333
 917                     ; 245       UART1->CR1 &= (uint8_t)(~itpos);
 919  0049 7b02          	ld	a,(OFST+0,sp)
 920  004b 43            	cpl	a
 921  004c c45234        	and	a,21044
 922  004f c75234        	ld	21044,a
 924  0052 201a          	jra	L133
 925  0054               L333:
 926                     ; 247     else if (uartreg == 0x02)
 928  0054 7b01          	ld	a,(OFST-1,sp)
 929  0056 a102          	cp	a,#2
 930  0058 260b          	jrne	L733
 931                     ; 249       UART1->CR2 &= (uint8_t)(~itpos);
 933  005a 7b02          	ld	a,(OFST+0,sp)
 934  005c 43            	cpl	a
 935  005d c45235        	and	a,21045
 936  0060 c75235        	ld	21045,a
 938  0063 2009          	jra	L133
 939  0065               L733:
 940                     ; 253       UART1->CR4 &= (uint8_t)(~itpos);
 942  0065 7b02          	ld	a,(OFST+0,sp)
 943  0067 43            	cpl	a
 944  0068 c45237        	and	a,21047
 945  006b c75237        	ld	21047,a
 946  006e               L133:
 947                     ; 257 }
 950  006e 5b04          	addw	sp,#4
 951  0070 81            	ret
 987                     ; 265 void UART1_HalfDuplexCmd(FunctionalState NewState)
 987                     ; 266 {
 988                     .text:	section	.text,new
 989  0000               _UART1_HalfDuplexCmd:
 993                     ; 267   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 995                     ; 269   if (NewState != DISABLE)
 997  0000 4d            	tnz	a
 998  0001 2706          	jreq	L163
 999                     ; 271     UART1->CR5 |= UART1_CR5_HDSEL;  /**< UART1 Half Duplex Enable  */
1001  0003 72165238      	bset	21048,#3
1003  0007 2004          	jra	L363
1004  0009               L163:
1005                     ; 275     UART1->CR5 &= (uint8_t)~UART1_CR5_HDSEL; /**< UART1 Half Duplex Disable */
1007  0009 72175238      	bres	21048,#3
1008  000d               L363:
1009                     ; 277 }
1012  000d 81            	ret
1069                     ; 285 void UART1_IrDAConfig(UART1_IrDAMode_TypeDef UART1_IrDAMode)
1069                     ; 286 {
1070                     .text:	section	.text,new
1071  0000               _UART1_IrDAConfig:
1075                     ; 287   assert_param(IS_UART1_IRDAMODE_OK(UART1_IrDAMode));
1077                     ; 289   if (UART1_IrDAMode != UART1_IRDAMODE_NORMAL)
1079  0000 4d            	tnz	a
1080  0001 2706          	jreq	L314
1081                     ; 291     UART1->CR5 |= UART1_CR5_IRLP;
1083  0003 72145238      	bset	21048,#2
1085  0007 2004          	jra	L514
1086  0009               L314:
1087                     ; 295     UART1->CR5 &= ((uint8_t)~UART1_CR5_IRLP);
1089  0009 72155238      	bres	21048,#2
1090  000d               L514:
1091                     ; 297 }
1094  000d 81            	ret
1129                     ; 305 void UART1_IrDACmd(FunctionalState NewState)
1129                     ; 306 {
1130                     .text:	section	.text,new
1131  0000               _UART1_IrDACmd:
1135                     ; 308   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1137                     ; 310   if (NewState != DISABLE)
1139  0000 4d            	tnz	a
1140  0001 2706          	jreq	L534
1141                     ; 313     UART1->CR5 |= UART1_CR5_IREN;
1143  0003 72125238      	bset	21048,#1
1145  0007 2004          	jra	L734
1146  0009               L534:
1147                     ; 318     UART1->CR5 &= ((uint8_t)~UART1_CR5_IREN);
1149  0009 72135238      	bres	21048,#1
1150  000d               L734:
1151                     ; 320 }
1154  000d 81            	ret
1213                     ; 329 void UART1_LINBreakDetectionConfig(UART1_LINBreakDetectionLength_TypeDef UART1_LINBreakDetectionLength)
1213                     ; 330 {
1214                     .text:	section	.text,new
1215  0000               _UART1_LINBreakDetectionConfig:
1219                     ; 331   assert_param(IS_UART1_LINBREAKDETECTIONLENGTH_OK(UART1_LINBreakDetectionLength));
1221                     ; 333   if (UART1_LINBreakDetectionLength != UART1_LINBREAKDETECTIONLENGTH_10BITS)
1223  0000 4d            	tnz	a
1224  0001 2706          	jreq	L764
1225                     ; 335     UART1->CR4 |= UART1_CR4_LBDL;
1227  0003 721a5237      	bset	21047,#5
1229  0007 2004          	jra	L174
1230  0009               L764:
1231                     ; 339     UART1->CR4 &= ((uint8_t)~UART1_CR4_LBDL);
1233  0009 721b5237      	bres	21047,#5
1234  000d               L174:
1235                     ; 341 }
1238  000d 81            	ret
1273                     ; 349 void UART1_LINCmd(FunctionalState NewState)
1273                     ; 350 {
1274                     .text:	section	.text,new
1275  0000               _UART1_LINCmd:
1279                     ; 351   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1281                     ; 353   if (NewState != DISABLE)
1283  0000 4d            	tnz	a
1284  0001 2706          	jreq	L115
1285                     ; 356     UART1->CR3 |= UART1_CR3_LINEN;
1287  0003 721c5236      	bset	21046,#6
1289  0007 2004          	jra	L315
1290  0009               L115:
1291                     ; 361     UART1->CR3 &= ((uint8_t)~UART1_CR3_LINEN);
1293  0009 721d5236      	bres	21046,#6
1294  000d               L315:
1295                     ; 363 }
1298  000d 81            	ret
1333                     ; 371 void UART1_SmartCardCmd(FunctionalState NewState)
1333                     ; 372 {
1334                     .text:	section	.text,new
1335  0000               _UART1_SmartCardCmd:
1339                     ; 373   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1341                     ; 375   if (NewState != DISABLE)
1343  0000 4d            	tnz	a
1344  0001 2706          	jreq	L335
1345                     ; 378     UART1->CR5 |= UART1_CR5_SCEN;
1347  0003 721a5238      	bset	21048,#5
1349  0007 2004          	jra	L535
1350  0009               L335:
1351                     ; 383     UART1->CR5 &= ((uint8_t)(~UART1_CR5_SCEN));
1353  0009 721b5238      	bres	21048,#5
1354  000d               L535:
1355                     ; 385 }
1358  000d 81            	ret
1394                     ; 394 void UART1_SmartCardNACKCmd(FunctionalState NewState)
1394                     ; 395 {
1395                     .text:	section	.text,new
1396  0000               _UART1_SmartCardNACKCmd:
1400                     ; 396   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1402                     ; 398   if (NewState != DISABLE)
1404  0000 4d            	tnz	a
1405  0001 2706          	jreq	L555
1406                     ; 401     UART1->CR5 |= UART1_CR5_NACK;
1408  0003 72185238      	bset	21048,#4
1410  0007 2004          	jra	L755
1411  0009               L555:
1412                     ; 406     UART1->CR5 &= ((uint8_t)~(UART1_CR5_NACK));
1414  0009 72195238      	bres	21048,#4
1415  000d               L755:
1416                     ; 408 }
1419  000d 81            	ret
1476                     ; 416 void UART1_WakeUpConfig(UART1_WakeUp_TypeDef UART1_WakeUp)
1476                     ; 417 {
1477                     .text:	section	.text,new
1478  0000               _UART1_WakeUpConfig:
1482                     ; 418   assert_param(IS_UART1_WAKEUP_OK(UART1_WakeUp));
1484                     ; 420   UART1->CR1 &= ((uint8_t)~UART1_CR1_WAKE);
1486  0000 72175234      	bres	21044,#3
1487                     ; 421   UART1->CR1 |= (uint8_t)UART1_WakeUp;
1489  0004 ca5234        	or	a,21044
1490  0007 c75234        	ld	21044,a
1491                     ; 422 }
1494  000a 81            	ret
1530                     ; 430 void UART1_ReceiverWakeUpCmd(FunctionalState NewState)
1530                     ; 431 {
1531                     .text:	section	.text,new
1532  0000               _UART1_ReceiverWakeUpCmd:
1536                     ; 432   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1538                     ; 434   if (NewState != DISABLE)
1540  0000 4d            	tnz	a
1541  0001 2706          	jreq	L526
1542                     ; 437     UART1->CR2 |= UART1_CR2_RWU;
1544  0003 72125235      	bset	21045,#1
1546  0007 2004          	jra	L726
1547  0009               L526:
1548                     ; 442     UART1->CR2 &= ((uint8_t)~UART1_CR2_RWU);
1550  0009 72135235      	bres	21045,#1
1551  000d               L726:
1552                     ; 444 }
1555  000d 81            	ret
1578                     ; 451 uint8_t UART1_ReceiveData8(void)
1578                     ; 452 {
1579                     .text:	section	.text,new
1580  0000               _UART1_ReceiveData8:
1584                     ; 453   return ((uint8_t)UART1->DR);
1586  0000 c65231        	ld	a,21041
1589  0003 81            	ret
1623                     ; 461 uint16_t UART1_ReceiveData9(void)
1623                     ; 462 {
1624                     .text:	section	.text,new
1625  0000               _UART1_ReceiveData9:
1627  0000 89            	pushw	x
1628       00000002      OFST:	set	2
1631                     ; 463   uint16_t temp = 0;
1633                     ; 465   temp = (uint16_t)(((uint16_t)( (uint16_t)UART1->CR1 & (uint16_t)UART1_CR1_R8)) << 1);
1635  0001 c65234        	ld	a,21044
1636  0004 5f            	clrw	x
1637  0005 a480          	and	a,#128
1638  0007 5f            	clrw	x
1639  0008 02            	rlwa	x,a
1640  0009 58            	sllw	x
1641  000a 1f01          	ldw	(OFST-1,sp),x
1643                     ; 466   return (uint16_t)( (((uint16_t) UART1->DR) | temp ) & ((uint16_t)0x01FF));
1645  000c c65231        	ld	a,21041
1646  000f 5f            	clrw	x
1647  0010 97            	ld	xl,a
1648  0011 01            	rrwa	x,a
1649  0012 1a02          	or	a,(OFST+0,sp)
1650  0014 01            	rrwa	x,a
1651  0015 1a01          	or	a,(OFST-1,sp)
1652  0017 01            	rrwa	x,a
1653  0018 01            	rrwa	x,a
1654  0019 a4ff          	and	a,#255
1655  001b 01            	rrwa	x,a
1656  001c a401          	and	a,#1
1657  001e 01            	rrwa	x,a
1660  001f 5b02          	addw	sp,#2
1661  0021 81            	ret
1695                     ; 474 void UART1_SendData8(uint8_t Data)
1695                     ; 475 {
1696                     .text:	section	.text,new
1697  0000               _UART1_SendData8:
1701                     ; 477   UART1->DR = Data;
1703  0000 c75231        	ld	21041,a
1704                     ; 478 }
1707  0003 81            	ret
1741                     ; 486 void UART1_SendData9(uint16_t Data)
1741                     ; 487 {
1742                     .text:	section	.text,new
1743  0000               _UART1_SendData9:
1745  0000 89            	pushw	x
1746       00000000      OFST:	set	0
1749                     ; 489   UART1->CR1 &= ((uint8_t)~UART1_CR1_T8);
1751  0001 721d5234      	bres	21044,#6
1752                     ; 491   UART1->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & UART1_CR1_T8);
1754  0005 54            	srlw	x
1755  0006 54            	srlw	x
1756  0007 9f            	ld	a,xl
1757  0008 a440          	and	a,#64
1758  000a ca5234        	or	a,21044
1759  000d c75234        	ld	21044,a
1760                     ; 493   UART1->DR   = (uint8_t)(Data);
1762  0010 7b02          	ld	a,(OFST+2,sp)
1763  0012 c75231        	ld	21041,a
1764                     ; 494 }
1767  0015 85            	popw	x
1768  0016 81            	ret
1791                     ; 501 void UART1_SendBreak(void)
1791                     ; 502 {
1792                     .text:	section	.text,new
1793  0000               _UART1_SendBreak:
1797                     ; 503   UART1->CR2 |= UART1_CR2_SBK;
1799  0000 72105235      	bset	21045,#0
1800                     ; 504 }
1803  0004 81            	ret
1837                     ; 511 void UART1_SetAddress(uint8_t UART1_Address)
1837                     ; 512 {
1838                     .text:	section	.text,new
1839  0000               _UART1_SetAddress:
1841  0000 88            	push	a
1842       00000000      OFST:	set	0
1845                     ; 514   assert_param(IS_UART1_ADDRESS_OK(UART1_Address));
1847                     ; 517   UART1->CR4 &= ((uint8_t)~UART1_CR4_ADD);
1849  0001 c65237        	ld	a,21047
1850  0004 a4f0          	and	a,#240
1851  0006 c75237        	ld	21047,a
1852                     ; 519   UART1->CR4 |= UART1_Address;
1854  0009 c65237        	ld	a,21047
1855  000c 1a01          	or	a,(OFST+1,sp)
1856  000e c75237        	ld	21047,a
1857                     ; 520 }
1860  0011 84            	pop	a
1861  0012 81            	ret
1895                     ; 528 void UART1_SetGuardTime(uint8_t UART1_GuardTime)
1895                     ; 529 {
1896                     .text:	section	.text,new
1897  0000               _UART1_SetGuardTime:
1901                     ; 531   UART1->GTR = UART1_GuardTime;
1903  0000 c75239        	ld	21049,a
1904                     ; 532 }
1907  0003 81            	ret
1941                     ; 556 void UART1_SetPrescaler(uint8_t UART1_Prescaler)
1941                     ; 557 {
1942                     .text:	section	.text,new
1943  0000               _UART1_SetPrescaler:
1947                     ; 559   UART1->PSCR = UART1_Prescaler;
1949  0000 c7523a        	ld	21050,a
1950                     ; 560 }
1953  0003 81            	ret
2096                     ; 568 FlagStatus UART1_GetFlagStatus(UART1_Flag_TypeDef UART1_FLAG)
2096                     ; 569 {
2097                     .text:	section	.text,new
2098  0000               _UART1_GetFlagStatus:
2100  0000 89            	pushw	x
2101  0001 88            	push	a
2102       00000001      OFST:	set	1
2105                     ; 570   FlagStatus status = RESET;
2107                     ; 573   assert_param(IS_UART1_FLAG_OK(UART1_FLAG));
2109                     ; 577   if (UART1_FLAG == UART1_FLAG_LBDF)
2111  0002 a30210        	cpw	x,#528
2112  0005 2610          	jrne	L7501
2113                     ; 579     if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2115  0007 9f            	ld	a,xl
2116  0008 c45237        	and	a,21047
2117  000b 2706          	jreq	L1601
2118                     ; 582       status = SET;
2120  000d a601          	ld	a,#1
2121  000f 6b01          	ld	(OFST+0,sp),a
2124  0011 202b          	jra	L5601
2125  0013               L1601:
2126                     ; 587       status = RESET;
2128  0013 0f01          	clr	(OFST+0,sp)
2130  0015 2027          	jra	L5601
2131  0017               L7501:
2132                     ; 590   else if (UART1_FLAG == UART1_FLAG_SBK)
2134  0017 1e02          	ldw	x,(OFST+1,sp)
2135  0019 a30101        	cpw	x,#257
2136  001c 2611          	jrne	L7601
2137                     ; 592     if ((UART1->CR2 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2139  001e c65235        	ld	a,21045
2140  0021 1503          	bcp	a,(OFST+2,sp)
2141  0023 2706          	jreq	L1701
2142                     ; 595       status = SET;
2144  0025 a601          	ld	a,#1
2145  0027 6b01          	ld	(OFST+0,sp),a
2148  0029 2013          	jra	L5601
2149  002b               L1701:
2150                     ; 600       status = RESET;
2152  002b 0f01          	clr	(OFST+0,sp)
2154  002d 200f          	jra	L5601
2155  002f               L7601:
2156                     ; 605     if ((UART1->SR & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2158  002f c65230        	ld	a,21040
2159  0032 1503          	bcp	a,(OFST+2,sp)
2160  0034 2706          	jreq	L7701
2161                     ; 608       status = SET;
2163  0036 a601          	ld	a,#1
2164  0038 6b01          	ld	(OFST+0,sp),a
2167  003a 2002          	jra	L5601
2168  003c               L7701:
2169                     ; 613       status = RESET;
2171  003c 0f01          	clr	(OFST+0,sp)
2173  003e               L5601:
2174                     ; 617   return status;
2176  003e 7b01          	ld	a,(OFST+0,sp)
2179  0040 5b03          	addw	sp,#3
2180  0042 81            	ret
2215                     ; 646 void UART1_ClearFlag(UART1_Flag_TypeDef UART1_FLAG)
2215                     ; 647 {
2216                     .text:	section	.text,new
2217  0000               _UART1_ClearFlag:
2221                     ; 648   assert_param(IS_UART1_CLEAR_FLAG_OK(UART1_FLAG));
2223                     ; 651   if (UART1_FLAG == UART1_FLAG_RXNE)
2225  0000 a30020        	cpw	x,#32
2226  0003 2606          	jrne	L1211
2227                     ; 653     UART1->SR = (uint8_t)~(UART1_SR_RXNE);
2229  0005 35df5230      	mov	21040,#223
2231  0009 2004          	jra	L3211
2232  000b               L1211:
2233                     ; 658     UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
2235  000b 72195237      	bres	21047,#4
2236  000f               L3211:
2237                     ; 660 }
2240  000f 81            	ret
2322                     ; 675 ITStatus UART1_GetITStatus(UART1_IT_TypeDef UART1_IT)
2322                     ; 676 {
2323                     .text:	section	.text,new
2324  0000               _UART1_GetITStatus:
2326  0000 89            	pushw	x
2327  0001 89            	pushw	x
2328       00000002      OFST:	set	2
2331                     ; 677   ITStatus pendingbitstatus = RESET;
2333                     ; 678   uint8_t itpos = 0;
2335                     ; 679   uint8_t itmask1 = 0;
2337                     ; 680   uint8_t itmask2 = 0;
2339                     ; 681   uint8_t enablestatus = 0;
2341                     ; 684   assert_param(IS_UART1_GET_IT_OK(UART1_IT));
2343                     ; 687   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
2345  0002 9f            	ld	a,xl
2346  0003 a40f          	and	a,#15
2347  0005 5f            	clrw	x
2348  0006 97            	ld	xl,a
2349  0007 a601          	ld	a,#1
2350  0009 5d            	tnzw	x
2351  000a 2704          	jreq	L27
2352  000c               L47:
2353  000c 48            	sll	a
2354  000d 5a            	decw	x
2355  000e 26fc          	jrne	L47
2356  0010               L27:
2357  0010 6b01          	ld	(OFST-1,sp),a
2359                     ; 689   itmask1 = (uint8_t)((uint8_t)UART1_IT >> (uint8_t)4);
2361  0012 7b04          	ld	a,(OFST+2,sp)
2362  0014 4e            	swap	a
2363  0015 a40f          	and	a,#15
2364  0017 6b02          	ld	(OFST+0,sp),a
2366                     ; 691   itmask2 = (uint8_t)((uint8_t)1 << itmask1);
2368  0019 7b02          	ld	a,(OFST+0,sp)
2369  001b 5f            	clrw	x
2370  001c 97            	ld	xl,a
2371  001d a601          	ld	a,#1
2372  001f 5d            	tnzw	x
2373  0020 2704          	jreq	L67
2374  0022               L001:
2375  0022 48            	sll	a
2376  0023 5a            	decw	x
2377  0024 26fc          	jrne	L001
2378  0026               L67:
2379  0026 6b02          	ld	(OFST+0,sp),a
2381                     ; 695   if (UART1_IT == UART1_IT_PE)
2383  0028 1e03          	ldw	x,(OFST+1,sp)
2384  002a a30100        	cpw	x,#256
2385  002d 261c          	jrne	L7611
2386                     ; 698     enablestatus = (uint8_t)((uint8_t)UART1->CR1 & itmask2);
2388  002f c65234        	ld	a,21044
2389  0032 1402          	and	a,(OFST+0,sp)
2390  0034 6b02          	ld	(OFST+0,sp),a
2392                     ; 701     if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
2394  0036 c65230        	ld	a,21040
2395  0039 1501          	bcp	a,(OFST-1,sp)
2396  003b 270a          	jreq	L1711
2398  003d 0d02          	tnz	(OFST+0,sp)
2399  003f 2706          	jreq	L1711
2400                     ; 704       pendingbitstatus = SET;
2402  0041 a601          	ld	a,#1
2403  0043 6b02          	ld	(OFST+0,sp),a
2406  0045 2041          	jra	L5711
2407  0047               L1711:
2408                     ; 709       pendingbitstatus = RESET;
2410  0047 0f02          	clr	(OFST+0,sp)
2412  0049 203d          	jra	L5711
2413  004b               L7611:
2414                     ; 713   else if (UART1_IT == UART1_IT_LBDF)
2416  004b 1e03          	ldw	x,(OFST+1,sp)
2417  004d a30346        	cpw	x,#838
2418  0050 261c          	jrne	L7711
2419                     ; 716     enablestatus = (uint8_t)((uint8_t)UART1->CR4 & itmask2);
2421  0052 c65237        	ld	a,21047
2422  0055 1402          	and	a,(OFST+0,sp)
2423  0057 6b02          	ld	(OFST+0,sp),a
2425                     ; 718     if (((UART1->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
2427  0059 c65237        	ld	a,21047
2428  005c 1501          	bcp	a,(OFST-1,sp)
2429  005e 270a          	jreq	L1021
2431  0060 0d02          	tnz	(OFST+0,sp)
2432  0062 2706          	jreq	L1021
2433                     ; 721       pendingbitstatus = SET;
2435  0064 a601          	ld	a,#1
2436  0066 6b02          	ld	(OFST+0,sp),a
2439  0068 201e          	jra	L5711
2440  006a               L1021:
2441                     ; 726       pendingbitstatus = RESET;
2443  006a 0f02          	clr	(OFST+0,sp)
2445  006c 201a          	jra	L5711
2446  006e               L7711:
2447                     ; 732     enablestatus = (uint8_t)((uint8_t)UART1->CR2 & itmask2);
2449  006e c65235        	ld	a,21045
2450  0071 1402          	and	a,(OFST+0,sp)
2451  0073 6b02          	ld	(OFST+0,sp),a
2453                     ; 734     if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
2455  0075 c65230        	ld	a,21040
2456  0078 1501          	bcp	a,(OFST-1,sp)
2457  007a 270a          	jreq	L7021
2459  007c 0d02          	tnz	(OFST+0,sp)
2460  007e 2706          	jreq	L7021
2461                     ; 737       pendingbitstatus = SET;
2463  0080 a601          	ld	a,#1
2464  0082 6b02          	ld	(OFST+0,sp),a
2467  0084 2002          	jra	L5711
2468  0086               L7021:
2469                     ; 742       pendingbitstatus = RESET;
2471  0086 0f02          	clr	(OFST+0,sp)
2473  0088               L5711:
2474                     ; 747   return  pendingbitstatus;
2476  0088 7b02          	ld	a,(OFST+0,sp)
2479  008a 5b04          	addw	sp,#4
2480  008c 81            	ret
2516                     ; 775 void UART1_ClearITPendingBit(UART1_IT_TypeDef UART1_IT)
2516                     ; 776 {
2517                     .text:	section	.text,new
2518  0000               _UART1_ClearITPendingBit:
2522                     ; 777   assert_param(IS_UART1_CLEAR_IT_OK(UART1_IT));
2524                     ; 780   if (UART1_IT == UART1_IT_RXNE)
2526  0000 a30255        	cpw	x,#597
2527  0003 2606          	jrne	L1321
2528                     ; 782     UART1->SR = (uint8_t)~(UART1_SR_RXNE);
2530  0005 35df5230      	mov	21040,#223
2532  0009 2004          	jra	L3321
2533  000b               L1321:
2534                     ; 787     UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
2536  000b 72195237      	bres	21047,#4
2537  000f               L3321:
2538                     ; 789 }
2541  000f 81            	ret
2554                     	xdef	_UART1_ClearITPendingBit
2555                     	xdef	_UART1_GetITStatus
2556                     	xdef	_UART1_ClearFlag
2557                     	xdef	_UART1_GetFlagStatus
2558                     	xdef	_UART1_SetPrescaler
2559                     	xdef	_UART1_SetGuardTime
2560                     	xdef	_UART1_SetAddress
2561                     	xdef	_UART1_SendBreak
2562                     	xdef	_UART1_SendData9
2563                     	xdef	_UART1_SendData8
2564                     	xdef	_UART1_ReceiveData9
2565                     	xdef	_UART1_ReceiveData8
2566                     	xdef	_UART1_ReceiverWakeUpCmd
2567                     	xdef	_UART1_WakeUpConfig
2568                     	xdef	_UART1_SmartCardNACKCmd
2569                     	xdef	_UART1_SmartCardCmd
2570                     	xdef	_UART1_LINCmd
2571                     	xdef	_UART1_LINBreakDetectionConfig
2572                     	xdef	_UART1_IrDACmd
2573                     	xdef	_UART1_IrDAConfig
2574                     	xdef	_UART1_HalfDuplexCmd
2575                     	xdef	_UART1_ITConfig
2576                     	xdef	_UART1_Cmd
2577                     	xdef	_UART1_Init
2578                     	xdef	_UART1_DeInit
2579                     	xref	_CLK_GetClockFreq
2580                     	xref.b	c_lreg
2581                     	xref.b	c_x
2600                     	xref	c_lursh
2601                     	xref	c_lsub
2602                     	xref	c_smul
2603                     	xref	c_ludv
2604                     	xref	c_rtol
2605                     	xref	c_llsh
2606                     	xref	c_ltor
2607                     	end
