   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
  43                     ; 53 void UART1_DeInit(void)
  43                     ; 54 {
  45                     	switch	.text
  46  0000               _UART1_DeInit:
  50                     ; 57   (void)UART1->SR;
  52  0000 c65230        	ld	a,21040
  53                     ; 58   (void)UART1->DR;
  55  0003 c65231        	ld	a,21041
  56                     ; 60   UART1->BRR2 = UART1_BRR2_RESET_VALUE;  /* Set UART1_BRR2 to reset value 0x00 */
  58  0006 725f5233      	clr	21043
  59                     ; 61   UART1->BRR1 = UART1_BRR1_RESET_VALUE;  /* Set UART1_BRR1 to reset value 0x00 */
  61  000a 725f5232      	clr	21042
  62                     ; 63   UART1->CR1 = UART1_CR1_RESET_VALUE;  /* Set UART1_CR1 to reset value 0x00 */
  64  000e 725f5234      	clr	21044
  65                     ; 64   UART1->CR2 = UART1_CR2_RESET_VALUE;  /* Set UART1_CR2 to reset value 0x00 */
  67  0012 725f5235      	clr	21045
  68                     ; 65   UART1->CR3 = UART1_CR3_RESET_VALUE;  /* Set UART1_CR3 to reset value 0x00 */
  70  0016 725f5236      	clr	21046
  71                     ; 66   UART1->CR4 = UART1_CR4_RESET_VALUE;  /* Set UART1_CR4 to reset value 0x00 */
  73  001a 725f5237      	clr	21047
  74                     ; 67   UART1->CR5 = UART1_CR5_RESET_VALUE;  /* Set UART1_CR5 to reset value 0x00 */
  76  001e 725f5238      	clr	21048
  77                     ; 69   UART1->GTR = UART1_GTR_RESET_VALUE;
  79  0022 725f5239      	clr	21049
  80                     ; 70   UART1->PSCR = UART1_PSCR_RESET_VALUE;
  82  0026 725f523a      	clr	21050
  83                     ; 71 }
  86  002a 81            	ret
 390                     .const:	section	.text
 391  0000               L21:
 392  0000 00098969      	dc.l	625001
 393  0004               L25:
 394  0004 00000064      	dc.l	100
 395                     ; 90 void UART1_Init(uint32_t BaudRate, UART1_WordLength_TypeDef WordLength, 
 395                     ; 91                 UART1_StopBits_TypeDef StopBits, UART1_Parity_TypeDef Parity, 
 395                     ; 92                 UART1_SyncMode_TypeDef SyncMode, UART1_Mode_TypeDef Mode)
 395                     ; 93 {
 396                     	switch	.text
 397  002b               _UART1_Init:
 399  002b 520c          	subw	sp,#12
 400       0000000c      OFST:	set	12
 403                     ; 94   uint32_t BaudRate_Mantissa = 0, BaudRate_Mantissa100 = 0;
 407                     ; 97   assert_param(IS_UART1_BAUDRATE_OK(BaudRate));
 409  002d 96            	ldw	x,sp
 410  002e 1c000f        	addw	x,#OFST+3
 411  0031 cd0000        	call	c_ltor
 413  0034 ae0000        	ldw	x,#L21
 414  0037 cd0000        	call	c_lcmp
 416  003a 2403          	jruge	L01
 417  003c 4f            	clr	a
 418  003d 2010          	jra	L41
 419  003f               L01:
 420  003f ae0061        	ldw	x,#97
 421  0042 89            	pushw	x
 422  0043 ae0000        	ldw	x,#0
 423  0046 89            	pushw	x
 424  0047 ae0008        	ldw	x,#L371
 425  004a cd0000        	call	_assert_failed
 427  004d 5b04          	addw	sp,#4
 428  004f               L41:
 429                     ; 98   assert_param(IS_UART1_WORDLENGTH_OK(WordLength));
 431  004f 0d13          	tnz	(OFST+7,sp)
 432  0051 2706          	jreq	L02
 433  0053 7b13          	ld	a,(OFST+7,sp)
 434  0055 a110          	cp	a,#16
 435  0057 2603          	jrne	L61
 436  0059               L02:
 437  0059 4f            	clr	a
 438  005a 2010          	jra	L22
 439  005c               L61:
 440  005c ae0062        	ldw	x,#98
 441  005f 89            	pushw	x
 442  0060 ae0000        	ldw	x,#0
 443  0063 89            	pushw	x
 444  0064 ae0008        	ldw	x,#L371
 445  0067 cd0000        	call	_assert_failed
 447  006a 5b04          	addw	sp,#4
 448  006c               L22:
 449                     ; 99   assert_param(IS_UART1_STOPBITS_OK(StopBits));
 451  006c 0d14          	tnz	(OFST+8,sp)
 452  006e 2712          	jreq	L62
 453  0070 7b14          	ld	a,(OFST+8,sp)
 454  0072 a110          	cp	a,#16
 455  0074 270c          	jreq	L62
 456  0076 7b14          	ld	a,(OFST+8,sp)
 457  0078 a120          	cp	a,#32
 458  007a 2706          	jreq	L62
 459  007c 7b14          	ld	a,(OFST+8,sp)
 460  007e a130          	cp	a,#48
 461  0080 2603          	jrne	L42
 462  0082               L62:
 463  0082 4f            	clr	a
 464  0083 2010          	jra	L03
 465  0085               L42:
 466  0085 ae0063        	ldw	x,#99
 467  0088 89            	pushw	x
 468  0089 ae0000        	ldw	x,#0
 469  008c 89            	pushw	x
 470  008d ae0008        	ldw	x,#L371
 471  0090 cd0000        	call	_assert_failed
 473  0093 5b04          	addw	sp,#4
 474  0095               L03:
 475                     ; 100   assert_param(IS_UART1_PARITY_OK(Parity));
 477  0095 0d15          	tnz	(OFST+9,sp)
 478  0097 270c          	jreq	L43
 479  0099 7b15          	ld	a,(OFST+9,sp)
 480  009b a104          	cp	a,#4
 481  009d 2706          	jreq	L43
 482  009f 7b15          	ld	a,(OFST+9,sp)
 483  00a1 a106          	cp	a,#6
 484  00a3 2603          	jrne	L23
 485  00a5               L43:
 486  00a5 4f            	clr	a
 487  00a6 2010          	jra	L63
 488  00a8               L23:
 489  00a8 ae0064        	ldw	x,#100
 490  00ab 89            	pushw	x
 491  00ac ae0000        	ldw	x,#0
 492  00af 89            	pushw	x
 493  00b0 ae0008        	ldw	x,#L371
 494  00b3 cd0000        	call	_assert_failed
 496  00b6 5b04          	addw	sp,#4
 497  00b8               L63:
 498                     ; 101   assert_param(IS_UART1_MODE_OK((uint8_t)Mode));
 500  00b8 7b17          	ld	a,(OFST+11,sp)
 501  00ba a108          	cp	a,#8
 502  00bc 2730          	jreq	L24
 503  00be 7b17          	ld	a,(OFST+11,sp)
 504  00c0 a140          	cp	a,#64
 505  00c2 272a          	jreq	L24
 506  00c4 7b17          	ld	a,(OFST+11,sp)
 507  00c6 a104          	cp	a,#4
 508  00c8 2724          	jreq	L24
 509  00ca 7b17          	ld	a,(OFST+11,sp)
 510  00cc a180          	cp	a,#128
 511  00ce 271e          	jreq	L24
 512  00d0 7b17          	ld	a,(OFST+11,sp)
 513  00d2 a10c          	cp	a,#12
 514  00d4 2718          	jreq	L24
 515  00d6 7b17          	ld	a,(OFST+11,sp)
 516  00d8 a10c          	cp	a,#12
 517  00da 2712          	jreq	L24
 518  00dc 7b17          	ld	a,(OFST+11,sp)
 519  00de a144          	cp	a,#68
 520  00e0 270c          	jreq	L24
 521  00e2 7b17          	ld	a,(OFST+11,sp)
 522  00e4 a1c0          	cp	a,#192
 523  00e6 2706          	jreq	L24
 524  00e8 7b17          	ld	a,(OFST+11,sp)
 525  00ea a188          	cp	a,#136
 526  00ec 2603          	jrne	L04
 527  00ee               L24:
 528  00ee 4f            	clr	a
 529  00ef 2010          	jra	L44
 530  00f1               L04:
 531  00f1 ae0065        	ldw	x,#101
 532  00f4 89            	pushw	x
 533  00f5 ae0000        	ldw	x,#0
 534  00f8 89            	pushw	x
 535  00f9 ae0008        	ldw	x,#L371
 536  00fc cd0000        	call	_assert_failed
 538  00ff 5b04          	addw	sp,#4
 539  0101               L44:
 540                     ; 102   assert_param(IS_UART1_SYNCMODE_OK((uint8_t)SyncMode));
 542  0101 7b16          	ld	a,(OFST+10,sp)
 543  0103 a488          	and	a,#136
 544  0105 a188          	cp	a,#136
 545  0107 271b          	jreq	L64
 546  0109 7b16          	ld	a,(OFST+10,sp)
 547  010b a444          	and	a,#68
 548  010d a144          	cp	a,#68
 549  010f 2713          	jreq	L64
 550  0111 7b16          	ld	a,(OFST+10,sp)
 551  0113 a422          	and	a,#34
 552  0115 a122          	cp	a,#34
 553  0117 270b          	jreq	L64
 554  0119 7b16          	ld	a,(OFST+10,sp)
 555  011b a411          	and	a,#17
 556  011d a111          	cp	a,#17
 557  011f 2703          	jreq	L64
 558  0121 4f            	clr	a
 559  0122 2010          	jra	L05
 560  0124               L64:
 561  0124 ae0066        	ldw	x,#102
 562  0127 89            	pushw	x
 563  0128 ae0000        	ldw	x,#0
 564  012b 89            	pushw	x
 565  012c ae0008        	ldw	x,#L371
 566  012f cd0000        	call	_assert_failed
 568  0132 5b04          	addw	sp,#4
 569  0134               L05:
 570                     ; 105   UART1->CR1 &= (uint8_t)(~UART1_CR1_M);  
 572  0134 72195234      	bres	21044,#4
 573                     ; 108   UART1->CR1 |= (uint8_t)WordLength;
 575  0138 c65234        	ld	a,21044
 576  013b 1a13          	or	a,(OFST+7,sp)
 577  013d c75234        	ld	21044,a
 578                     ; 111   UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
 580  0140 c65236        	ld	a,21046
 581  0143 a4cf          	and	a,#207
 582  0145 c75236        	ld	21046,a
 583                     ; 113   UART1->CR3 |= (uint8_t)StopBits;  
 585  0148 c65236        	ld	a,21046
 586  014b 1a14          	or	a,(OFST+8,sp)
 587  014d c75236        	ld	21046,a
 588                     ; 116   UART1->CR1 &= (uint8_t)(~(UART1_CR1_PCEN | UART1_CR1_PS  ));  
 590  0150 c65234        	ld	a,21044
 591  0153 a4f9          	and	a,#249
 592  0155 c75234        	ld	21044,a
 593                     ; 118   UART1->CR1 |= (uint8_t)Parity;  
 595  0158 c65234        	ld	a,21044
 596  015b 1a15          	or	a,(OFST+9,sp)
 597  015d c75234        	ld	21044,a
 598                     ; 121   UART1->BRR1 &= (uint8_t)(~UART1_BRR1_DIVM);  
 600  0160 725f5232      	clr	21042
 601                     ; 123   UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVM);  
 603  0164 c65233        	ld	a,21043
 604  0167 a40f          	and	a,#15
 605  0169 c75233        	ld	21043,a
 606                     ; 125   UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVF);  
 608  016c c65233        	ld	a,21043
 609  016f a4f0          	and	a,#240
 610  0171 c75233        	ld	21043,a
 611                     ; 128   BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
 613  0174 96            	ldw	x,sp
 614  0175 1c000f        	addw	x,#OFST+3
 615  0178 cd0000        	call	c_ltor
 617  017b a604          	ld	a,#4
 618  017d cd0000        	call	c_llsh
 620  0180 96            	ldw	x,sp
 621  0181 1c0001        	addw	x,#OFST-11
 622  0184 cd0000        	call	c_rtol
 625  0187 cd0000        	call	_CLK_GetClockFreq
 627  018a 96            	ldw	x,sp
 628  018b 1c0001        	addw	x,#OFST-11
 629  018e cd0000        	call	c_ludv
 631  0191 96            	ldw	x,sp
 632  0192 1c0009        	addw	x,#OFST-3
 633  0195 cd0000        	call	c_rtol
 636                     ; 129   BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
 638  0198 96            	ldw	x,sp
 639  0199 1c000f        	addw	x,#OFST+3
 640  019c cd0000        	call	c_ltor
 642  019f a604          	ld	a,#4
 643  01a1 cd0000        	call	c_llsh
 645  01a4 96            	ldw	x,sp
 646  01a5 1c0001        	addw	x,#OFST-11
 647  01a8 cd0000        	call	c_rtol
 650  01ab cd0000        	call	_CLK_GetClockFreq
 652  01ae a664          	ld	a,#100
 653  01b0 cd0000        	call	c_smul
 655  01b3 96            	ldw	x,sp
 656  01b4 1c0001        	addw	x,#OFST-11
 657  01b7 cd0000        	call	c_ludv
 659  01ba 96            	ldw	x,sp
 660  01bb 1c0005        	addw	x,#OFST-7
 661  01be cd0000        	call	c_rtol
 664                     ; 131   UART1->BRR2 |= (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100)) << 4) / 100) & (uint8_t)0x0F); 
 666  01c1 96            	ldw	x,sp
 667  01c2 1c0009        	addw	x,#OFST-3
 668  01c5 cd0000        	call	c_ltor
 670  01c8 a664          	ld	a,#100
 671  01ca cd0000        	call	c_smul
 673  01cd 96            	ldw	x,sp
 674  01ce 1c0001        	addw	x,#OFST-11
 675  01d1 cd0000        	call	c_rtol
 678  01d4 96            	ldw	x,sp
 679  01d5 1c0005        	addw	x,#OFST-7
 680  01d8 cd0000        	call	c_ltor
 682  01db 96            	ldw	x,sp
 683  01dc 1c0001        	addw	x,#OFST-11
 684  01df cd0000        	call	c_lsub
 686  01e2 a604          	ld	a,#4
 687  01e4 cd0000        	call	c_llsh
 689  01e7 ae0004        	ldw	x,#L25
 690  01ea cd0000        	call	c_ludv
 692  01ed b603          	ld	a,c_lreg+3
 693  01ef a40f          	and	a,#15
 694  01f1 ca5233        	or	a,21043
 695  01f4 c75233        	ld	21043,a
 696                     ; 133   UART1->BRR2 |= (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0); 
 698  01f7 96            	ldw	x,sp
 699  01f8 1c0009        	addw	x,#OFST-3
 700  01fb cd0000        	call	c_ltor
 702  01fe a604          	ld	a,#4
 703  0200 cd0000        	call	c_lursh
 705  0203 b603          	ld	a,c_lreg+3
 706  0205 a4f0          	and	a,#240
 707  0207 b703          	ld	c_lreg+3,a
 708  0209 3f02          	clr	c_lreg+2
 709  020b 3f01          	clr	c_lreg+1
 710  020d 3f00          	clr	c_lreg
 711  020f b603          	ld	a,c_lreg+3
 712  0211 ca5233        	or	a,21043
 713  0214 c75233        	ld	21043,a
 714                     ; 135   UART1->BRR1 |= (uint8_t)BaudRate_Mantissa;           
 716  0217 c65232        	ld	a,21042
 717  021a 1a0c          	or	a,(OFST+0,sp)
 718  021c c75232        	ld	21042,a
 719                     ; 138   UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
 721  021f c65235        	ld	a,21045
 722  0222 a4f3          	and	a,#243
 723  0224 c75235        	ld	21045,a
 724                     ; 140   UART1->CR3 &= (uint8_t)~(UART1_CR3_CPOL | UART1_CR3_CPHA | UART1_CR3_LBCL); 
 726  0227 c65236        	ld	a,21046
 727  022a a4f8          	and	a,#248
 728  022c c75236        	ld	21046,a
 729                     ; 142   UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART1_CR3_CPOL | 
 729                     ; 143                                                         UART1_CR3_CPHA | UART1_CR3_LBCL));  
 731  022f 7b16          	ld	a,(OFST+10,sp)
 732  0231 a407          	and	a,#7
 733  0233 ca5236        	or	a,21046
 734  0236 c75236        	ld	21046,a
 735                     ; 145   if ((uint8_t)(Mode & UART1_MODE_TX_ENABLE))
 737  0239 7b17          	ld	a,(OFST+11,sp)
 738  023b a504          	bcp	a,#4
 739  023d 2706          	jreq	L571
 740                     ; 148     UART1->CR2 |= (uint8_t)UART1_CR2_TEN;  
 742  023f 72165235      	bset	21045,#3
 744  0243 2004          	jra	L771
 745  0245               L571:
 746                     ; 153     UART1->CR2 &= (uint8_t)(~UART1_CR2_TEN);  
 748  0245 72175235      	bres	21045,#3
 749  0249               L771:
 750                     ; 155   if ((uint8_t)(Mode & UART1_MODE_RX_ENABLE))
 752  0249 7b17          	ld	a,(OFST+11,sp)
 753  024b a508          	bcp	a,#8
 754  024d 2706          	jreq	L102
 755                     ; 158     UART1->CR2 |= (uint8_t)UART1_CR2_REN;  
 757  024f 72145235      	bset	21045,#2
 759  0253 2004          	jra	L302
 760  0255               L102:
 761                     ; 163     UART1->CR2 &= (uint8_t)(~UART1_CR2_REN);  
 763  0255 72155235      	bres	21045,#2
 764  0259               L302:
 765                     ; 167   if ((uint8_t)(SyncMode & UART1_SYNCMODE_CLOCK_DISABLE))
 767  0259 7b16          	ld	a,(OFST+10,sp)
 768  025b a580          	bcp	a,#128
 769  025d 2706          	jreq	L502
 770                     ; 170     UART1->CR3 &= (uint8_t)(~UART1_CR3_CKEN); 
 772  025f 72175236      	bres	21046,#3
 774  0263 200a          	jra	L702
 775  0265               L502:
 776                     ; 174     UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & UART1_CR3_CKEN);
 778  0265 7b16          	ld	a,(OFST+10,sp)
 779  0267 a408          	and	a,#8
 780  0269 ca5236        	or	a,21046
 781  026c c75236        	ld	21046,a
 782  026f               L702:
 783                     ; 176 }
 786  026f 5b0c          	addw	sp,#12
 787  0271 81            	ret
 842                     ; 184 void UART1_Cmd(FunctionalState NewState)
 842                     ; 185 {
 843                     	switch	.text
 844  0272               _UART1_Cmd:
 848                     ; 186   if (NewState != DISABLE)
 850  0272 4d            	tnz	a
 851  0273 2706          	jreq	L732
 852                     ; 189     UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
 854  0275 721b5234      	bres	21044,#5
 856  0279 2004          	jra	L142
 857  027b               L732:
 858                     ; 194     UART1->CR1 |= UART1_CR1_UARTD;  
 860  027b 721a5234      	bset	21044,#5
 861  027f               L142:
 862                     ; 196 }
 865  027f 81            	ret
 991                     ; 211 void UART1_ITConfig(UART1_IT_TypeDef UART1_IT, FunctionalState NewState)
 991                     ; 212 {
 992                     	switch	.text
 993  0280               _UART1_ITConfig:
 995  0280 89            	pushw	x
 996  0281 89            	pushw	x
 997       00000002      OFST:	set	2
1000                     ; 213   uint8_t uartreg = 0, itpos = 0x00;
1004                     ; 216   assert_param(IS_UART1_CONFIG_IT_OK(UART1_IT));
1006  0282 a30100        	cpw	x,#256
1007  0285 2719          	jreq	L26
1008  0287 a30277        	cpw	x,#631
1009  028a 2714          	jreq	L26
1010  028c a30266        	cpw	x,#614
1011  028f 270f          	jreq	L26
1012  0291 a30205        	cpw	x,#517
1013  0294 270a          	jreq	L26
1014  0296 a30244        	cpw	x,#580
1015  0299 2705          	jreq	L26
1016  029b a30346        	cpw	x,#838
1017  029e 2603          	jrne	L06
1018  02a0               L26:
1019  02a0 4f            	clr	a
1020  02a1 2010          	jra	L46
1021  02a3               L06:
1022  02a3 ae00d8        	ldw	x,#216
1023  02a6 89            	pushw	x
1024  02a7 ae0000        	ldw	x,#0
1025  02aa 89            	pushw	x
1026  02ab ae0008        	ldw	x,#L371
1027  02ae cd0000        	call	_assert_failed
1029  02b1 5b04          	addw	sp,#4
1030  02b3               L46:
1031                     ; 217   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1033  02b3 0d07          	tnz	(OFST+5,sp)
1034  02b5 2706          	jreq	L07
1035  02b7 7b07          	ld	a,(OFST+5,sp)
1036  02b9 a101          	cp	a,#1
1037  02bb 2603          	jrne	L66
1038  02bd               L07:
1039  02bd 4f            	clr	a
1040  02be 2010          	jra	L27
1041  02c0               L66:
1042  02c0 ae00d9        	ldw	x,#217
1043  02c3 89            	pushw	x
1044  02c4 ae0000        	ldw	x,#0
1045  02c7 89            	pushw	x
1046  02c8 ae0008        	ldw	x,#L371
1047  02cb cd0000        	call	_assert_failed
1049  02ce 5b04          	addw	sp,#4
1050  02d0               L27:
1051                     ; 220   uartreg = (uint8_t)((uint16_t)UART1_IT >> 0x08);
1053  02d0 7b03          	ld	a,(OFST+1,sp)
1054  02d2 6b01          	ld	(OFST-1,sp),a
1056                     ; 222   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
1058  02d4 7b04          	ld	a,(OFST+2,sp)
1059  02d6 a40f          	and	a,#15
1060  02d8 5f            	clrw	x
1061  02d9 97            	ld	xl,a
1062  02da a601          	ld	a,#1
1063  02dc 5d            	tnzw	x
1064  02dd 2704          	jreq	L47
1065  02df               L67:
1066  02df 48            	sll	a
1067  02e0 5a            	decw	x
1068  02e1 26fc          	jrne	L67
1069  02e3               L47:
1070  02e3 6b02          	ld	(OFST+0,sp),a
1072                     ; 224   if (NewState != DISABLE)
1074  02e5 0d07          	tnz	(OFST+5,sp)
1075  02e7 272a          	jreq	L123
1076                     ; 227     if (uartreg == 0x01)
1078  02e9 7b01          	ld	a,(OFST-1,sp)
1079  02eb a101          	cp	a,#1
1080  02ed 260a          	jrne	L323
1081                     ; 229       UART1->CR1 |= itpos;
1083  02ef c65234        	ld	a,21044
1084  02f2 1a02          	or	a,(OFST+0,sp)
1085  02f4 c75234        	ld	21044,a
1087  02f7 2045          	jra	L333
1088  02f9               L323:
1089                     ; 231     else if (uartreg == 0x02)
1091  02f9 7b01          	ld	a,(OFST-1,sp)
1092  02fb a102          	cp	a,#2
1093  02fd 260a          	jrne	L723
1094                     ; 233       UART1->CR2 |= itpos;
1096  02ff c65235        	ld	a,21045
1097  0302 1a02          	or	a,(OFST+0,sp)
1098  0304 c75235        	ld	21045,a
1100  0307 2035          	jra	L333
1101  0309               L723:
1102                     ; 237       UART1->CR4 |= itpos;
1104  0309 c65237        	ld	a,21047
1105  030c 1a02          	or	a,(OFST+0,sp)
1106  030e c75237        	ld	21047,a
1107  0311 202b          	jra	L333
1108  0313               L123:
1109                     ; 243     if (uartreg == 0x01)
1111  0313 7b01          	ld	a,(OFST-1,sp)
1112  0315 a101          	cp	a,#1
1113  0317 260b          	jrne	L533
1114                     ; 245       UART1->CR1 &= (uint8_t)(~itpos);
1116  0319 7b02          	ld	a,(OFST+0,sp)
1117  031b 43            	cpl	a
1118  031c c45234        	and	a,21044
1119  031f c75234        	ld	21044,a
1121  0322 201a          	jra	L333
1122  0324               L533:
1123                     ; 247     else if (uartreg == 0x02)
1125  0324 7b01          	ld	a,(OFST-1,sp)
1126  0326 a102          	cp	a,#2
1127  0328 260b          	jrne	L143
1128                     ; 249       UART1->CR2 &= (uint8_t)(~itpos);
1130  032a 7b02          	ld	a,(OFST+0,sp)
1131  032c 43            	cpl	a
1132  032d c45235        	and	a,21045
1133  0330 c75235        	ld	21045,a
1135  0333 2009          	jra	L333
1136  0335               L143:
1137                     ; 253       UART1->CR4 &= (uint8_t)(~itpos);
1139  0335 7b02          	ld	a,(OFST+0,sp)
1140  0337 43            	cpl	a
1141  0338 c45237        	and	a,21047
1142  033b c75237        	ld	21047,a
1143  033e               L333:
1144                     ; 257 }
1147  033e 5b04          	addw	sp,#4
1148  0340 81            	ret
1185                     ; 265 void UART1_HalfDuplexCmd(FunctionalState NewState)
1185                     ; 266 {
1186                     	switch	.text
1187  0341               _UART1_HalfDuplexCmd:
1189  0341 88            	push	a
1190       00000000      OFST:	set	0
1193                     ; 267   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1195  0342 4d            	tnz	a
1196  0343 2704          	jreq	L401
1197  0345 a101          	cp	a,#1
1198  0347 2603          	jrne	L201
1199  0349               L401:
1200  0349 4f            	clr	a
1201  034a 2010          	jra	L601
1202  034c               L201:
1203  034c ae010b        	ldw	x,#267
1204  034f 89            	pushw	x
1205  0350 ae0000        	ldw	x,#0
1206  0353 89            	pushw	x
1207  0354 ae0008        	ldw	x,#L371
1208  0357 cd0000        	call	_assert_failed
1210  035a 5b04          	addw	sp,#4
1211  035c               L601:
1212                     ; 269   if (NewState != DISABLE)
1214  035c 0d01          	tnz	(OFST+1,sp)
1215  035e 2706          	jreq	L363
1216                     ; 271     UART1->CR5 |= UART1_CR5_HDSEL;  /**< UART1 Half Duplex Enable  */
1218  0360 72165238      	bset	21048,#3
1220  0364 2004          	jra	L563
1221  0366               L363:
1222                     ; 275     UART1->CR5 &= (uint8_t)~UART1_CR5_HDSEL; /**< UART1 Half Duplex Disable */
1224  0366 72175238      	bres	21048,#3
1225  036a               L563:
1226                     ; 277 }
1229  036a 84            	pop	a
1230  036b 81            	ret
1288                     ; 285 void UART1_IrDAConfig(UART1_IrDAMode_TypeDef UART1_IrDAMode)
1288                     ; 286 {
1289                     	switch	.text
1290  036c               _UART1_IrDAConfig:
1292  036c 88            	push	a
1293       00000000      OFST:	set	0
1296                     ; 287   assert_param(IS_UART1_IRDAMODE_OK(UART1_IrDAMode));
1298  036d a101          	cp	a,#1
1299  036f 2703          	jreq	L411
1300  0371 4d            	tnz	a
1301  0372 2603          	jrne	L211
1302  0374               L411:
1303  0374 4f            	clr	a
1304  0375 2010          	jra	L611
1305  0377               L211:
1306  0377 ae011f        	ldw	x,#287
1307  037a 89            	pushw	x
1308  037b ae0000        	ldw	x,#0
1309  037e 89            	pushw	x
1310  037f ae0008        	ldw	x,#L371
1311  0382 cd0000        	call	_assert_failed
1313  0385 5b04          	addw	sp,#4
1314  0387               L611:
1315                     ; 289   if (UART1_IrDAMode != UART1_IRDAMODE_NORMAL)
1317  0387 0d01          	tnz	(OFST+1,sp)
1318  0389 2706          	jreq	L514
1319                     ; 291     UART1->CR5 |= UART1_CR5_IRLP;
1321  038b 72145238      	bset	21048,#2
1323  038f 2004          	jra	L714
1324  0391               L514:
1325                     ; 295     UART1->CR5 &= ((uint8_t)~UART1_CR5_IRLP);
1327  0391 72155238      	bres	21048,#2
1328  0395               L714:
1329                     ; 297 }
1332  0395 84            	pop	a
1333  0396 81            	ret
1369                     ; 305 void UART1_IrDACmd(FunctionalState NewState)
1369                     ; 306 {
1370                     	switch	.text
1371  0397               _UART1_IrDACmd:
1373  0397 88            	push	a
1374       00000000      OFST:	set	0
1377                     ; 308   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1379  0398 4d            	tnz	a
1380  0399 2704          	jreq	L421
1381  039b a101          	cp	a,#1
1382  039d 2603          	jrne	L221
1383  039f               L421:
1384  039f 4f            	clr	a
1385  03a0 2010          	jra	L621
1386  03a2               L221:
1387  03a2 ae0134        	ldw	x,#308
1388  03a5 89            	pushw	x
1389  03a6 ae0000        	ldw	x,#0
1390  03a9 89            	pushw	x
1391  03aa ae0008        	ldw	x,#L371
1392  03ad cd0000        	call	_assert_failed
1394  03b0 5b04          	addw	sp,#4
1395  03b2               L621:
1396                     ; 310   if (NewState != DISABLE)
1398  03b2 0d01          	tnz	(OFST+1,sp)
1399  03b4 2706          	jreq	L734
1400                     ; 313     UART1->CR5 |= UART1_CR5_IREN;
1402  03b6 72125238      	bset	21048,#1
1404  03ba 2004          	jra	L144
1405  03bc               L734:
1406                     ; 318     UART1->CR5 &= ((uint8_t)~UART1_CR5_IREN);
1408  03bc 72135238      	bres	21048,#1
1409  03c0               L144:
1410                     ; 320 }
1413  03c0 84            	pop	a
1414  03c1 81            	ret
1474                     ; 329 void UART1_LINBreakDetectionConfig(UART1_LINBreakDetectionLength_TypeDef UART1_LINBreakDetectionLength)
1474                     ; 330 {
1475                     	switch	.text
1476  03c2               _UART1_LINBreakDetectionConfig:
1478  03c2 88            	push	a
1479       00000000      OFST:	set	0
1482                     ; 331   assert_param(IS_UART1_LINBREAKDETECTIONLENGTH_OK(UART1_LINBreakDetectionLength));
1484  03c3 4d            	tnz	a
1485  03c4 2704          	jreq	L431
1486  03c6 a101          	cp	a,#1
1487  03c8 2603          	jrne	L231
1488  03ca               L431:
1489  03ca 4f            	clr	a
1490  03cb 2010          	jra	L631
1491  03cd               L231:
1492  03cd ae014b        	ldw	x,#331
1493  03d0 89            	pushw	x
1494  03d1 ae0000        	ldw	x,#0
1495  03d4 89            	pushw	x
1496  03d5 ae0008        	ldw	x,#L371
1497  03d8 cd0000        	call	_assert_failed
1499  03db 5b04          	addw	sp,#4
1500  03dd               L631:
1501                     ; 333   if (UART1_LINBreakDetectionLength != UART1_LINBREAKDETECTIONLENGTH_10BITS)
1503  03dd 0d01          	tnz	(OFST+1,sp)
1504  03df 2706          	jreq	L174
1505                     ; 335     UART1->CR4 |= UART1_CR4_LBDL;
1507  03e1 721a5237      	bset	21047,#5
1509  03e5 2004          	jra	L374
1510  03e7               L174:
1511                     ; 339     UART1->CR4 &= ((uint8_t)~UART1_CR4_LBDL);
1513  03e7 721b5237      	bres	21047,#5
1514  03eb               L374:
1515                     ; 341 }
1518  03eb 84            	pop	a
1519  03ec 81            	ret
1555                     ; 349 void UART1_LINCmd(FunctionalState NewState)
1555                     ; 350 {
1556                     	switch	.text
1557  03ed               _UART1_LINCmd:
1559  03ed 88            	push	a
1560       00000000      OFST:	set	0
1563                     ; 351   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1565  03ee 4d            	tnz	a
1566  03ef 2704          	jreq	L441
1567  03f1 a101          	cp	a,#1
1568  03f3 2603          	jrne	L241
1569  03f5               L441:
1570  03f5 4f            	clr	a
1571  03f6 2010          	jra	L641
1572  03f8               L241:
1573  03f8 ae015f        	ldw	x,#351
1574  03fb 89            	pushw	x
1575  03fc ae0000        	ldw	x,#0
1576  03ff 89            	pushw	x
1577  0400 ae0008        	ldw	x,#L371
1578  0403 cd0000        	call	_assert_failed
1580  0406 5b04          	addw	sp,#4
1581  0408               L641:
1582                     ; 353   if (NewState != DISABLE)
1584  0408 0d01          	tnz	(OFST+1,sp)
1585  040a 2706          	jreq	L315
1586                     ; 356     UART1->CR3 |= UART1_CR3_LINEN;
1588  040c 721c5236      	bset	21046,#6
1590  0410 2004          	jra	L515
1591  0412               L315:
1592                     ; 361     UART1->CR3 &= ((uint8_t)~UART1_CR3_LINEN);
1594  0412 721d5236      	bres	21046,#6
1595  0416               L515:
1596                     ; 363 }
1599  0416 84            	pop	a
1600  0417 81            	ret
1636                     ; 371 void UART1_SmartCardCmd(FunctionalState NewState)
1636                     ; 372 {
1637                     	switch	.text
1638  0418               _UART1_SmartCardCmd:
1640  0418 88            	push	a
1641       00000000      OFST:	set	0
1644                     ; 373   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1646  0419 4d            	tnz	a
1647  041a 2704          	jreq	L451
1648  041c a101          	cp	a,#1
1649  041e 2603          	jrne	L251
1650  0420               L451:
1651  0420 4f            	clr	a
1652  0421 2010          	jra	L651
1653  0423               L251:
1654  0423 ae0175        	ldw	x,#373
1655  0426 89            	pushw	x
1656  0427 ae0000        	ldw	x,#0
1657  042a 89            	pushw	x
1658  042b ae0008        	ldw	x,#L371
1659  042e cd0000        	call	_assert_failed
1661  0431 5b04          	addw	sp,#4
1662  0433               L651:
1663                     ; 375   if (NewState != DISABLE)
1665  0433 0d01          	tnz	(OFST+1,sp)
1666  0435 2706          	jreq	L535
1667                     ; 378     UART1->CR5 |= UART1_CR5_SCEN;
1669  0437 721a5238      	bset	21048,#5
1671  043b 2004          	jra	L735
1672  043d               L535:
1673                     ; 383     UART1->CR5 &= ((uint8_t)(~UART1_CR5_SCEN));
1675  043d 721b5238      	bres	21048,#5
1676  0441               L735:
1677                     ; 385 }
1680  0441 84            	pop	a
1681  0442 81            	ret
1718                     ; 394 void UART1_SmartCardNACKCmd(FunctionalState NewState)
1718                     ; 395 {
1719                     	switch	.text
1720  0443               _UART1_SmartCardNACKCmd:
1722  0443 88            	push	a
1723       00000000      OFST:	set	0
1726                     ; 396   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1728  0444 4d            	tnz	a
1729  0445 2704          	jreq	L461
1730  0447 a101          	cp	a,#1
1731  0449 2603          	jrne	L261
1732  044b               L461:
1733  044b 4f            	clr	a
1734  044c 2010          	jra	L661
1735  044e               L261:
1736  044e ae018c        	ldw	x,#396
1737  0451 89            	pushw	x
1738  0452 ae0000        	ldw	x,#0
1739  0455 89            	pushw	x
1740  0456 ae0008        	ldw	x,#L371
1741  0459 cd0000        	call	_assert_failed
1743  045c 5b04          	addw	sp,#4
1744  045e               L661:
1745                     ; 398   if (NewState != DISABLE)
1747  045e 0d01          	tnz	(OFST+1,sp)
1748  0460 2706          	jreq	L755
1749                     ; 401     UART1->CR5 |= UART1_CR5_NACK;
1751  0462 72185238      	bset	21048,#4
1753  0466 2004          	jra	L165
1754  0468               L755:
1755                     ; 406     UART1->CR5 &= ((uint8_t)~(UART1_CR5_NACK));
1757  0468 72195238      	bres	21048,#4
1758  046c               L165:
1759                     ; 408 }
1762  046c 84            	pop	a
1763  046d 81            	ret
1821                     ; 416 void UART1_WakeUpConfig(UART1_WakeUp_TypeDef UART1_WakeUp)
1821                     ; 417 {
1822                     	switch	.text
1823  046e               _UART1_WakeUpConfig:
1825  046e 88            	push	a
1826       00000000      OFST:	set	0
1829                     ; 418   assert_param(IS_UART1_WAKEUP_OK(UART1_WakeUp));
1831  046f 4d            	tnz	a
1832  0470 2704          	jreq	L471
1833  0472 a108          	cp	a,#8
1834  0474 2603          	jrne	L271
1835  0476               L471:
1836  0476 4f            	clr	a
1837  0477 2010          	jra	L671
1838  0479               L271:
1839  0479 ae01a2        	ldw	x,#418
1840  047c 89            	pushw	x
1841  047d ae0000        	ldw	x,#0
1842  0480 89            	pushw	x
1843  0481 ae0008        	ldw	x,#L371
1844  0484 cd0000        	call	_assert_failed
1846  0487 5b04          	addw	sp,#4
1847  0489               L671:
1848                     ; 420   UART1->CR1 &= ((uint8_t)~UART1_CR1_WAKE);
1850  0489 72175234      	bres	21044,#3
1851                     ; 421   UART1->CR1 |= (uint8_t)UART1_WakeUp;
1853  048d c65234        	ld	a,21044
1854  0490 1a01          	or	a,(OFST+1,sp)
1855  0492 c75234        	ld	21044,a
1856                     ; 422 }
1859  0495 84            	pop	a
1860  0496 81            	ret
1897                     ; 430 void UART1_ReceiverWakeUpCmd(FunctionalState NewState)
1897                     ; 431 {
1898                     	switch	.text
1899  0497               _UART1_ReceiverWakeUpCmd:
1901  0497 88            	push	a
1902       00000000      OFST:	set	0
1905                     ; 432   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1907  0498 4d            	tnz	a
1908  0499 2704          	jreq	L402
1909  049b a101          	cp	a,#1
1910  049d 2603          	jrne	L202
1911  049f               L402:
1912  049f 4f            	clr	a
1913  04a0 2010          	jra	L602
1914  04a2               L202:
1915  04a2 ae01b0        	ldw	x,#432
1916  04a5 89            	pushw	x
1917  04a6 ae0000        	ldw	x,#0
1918  04a9 89            	pushw	x
1919  04aa ae0008        	ldw	x,#L371
1920  04ad cd0000        	call	_assert_failed
1922  04b0 5b04          	addw	sp,#4
1923  04b2               L602:
1924                     ; 434   if (NewState != DISABLE)
1926  04b2 0d01          	tnz	(OFST+1,sp)
1927  04b4 2706          	jreq	L726
1928                     ; 437     UART1->CR2 |= UART1_CR2_RWU;
1930  04b6 72125235      	bset	21045,#1
1932  04ba 2004          	jra	L136
1933  04bc               L726:
1934                     ; 442     UART1->CR2 &= ((uint8_t)~UART1_CR2_RWU);
1936  04bc 72135235      	bres	21045,#1
1937  04c0               L136:
1938                     ; 444 }
1941  04c0 84            	pop	a
1942  04c1 81            	ret
1965                     ; 451 uint8_t UART1_ReceiveData8(void)
1965                     ; 452 {
1966                     	switch	.text
1967  04c2               _UART1_ReceiveData8:
1971                     ; 453   return ((uint8_t)UART1->DR);
1973  04c2 c65231        	ld	a,21041
1976  04c5 81            	ret
2010                     ; 461 uint16_t UART1_ReceiveData9(void)
2010                     ; 462 {
2011                     	switch	.text
2012  04c6               _UART1_ReceiveData9:
2014  04c6 89            	pushw	x
2015       00000002      OFST:	set	2
2018                     ; 463   uint16_t temp = 0;
2020                     ; 465   temp = (uint16_t)(((uint16_t)( (uint16_t)UART1->CR1 & (uint16_t)UART1_CR1_R8)) << 1);
2022  04c7 c65234        	ld	a,21044
2023  04ca 5f            	clrw	x
2024  04cb a480          	and	a,#128
2025  04cd 5f            	clrw	x
2026  04ce 02            	rlwa	x,a
2027  04cf 58            	sllw	x
2028  04d0 1f01          	ldw	(OFST-1,sp),x
2030                     ; 466   return (uint16_t)( (((uint16_t) UART1->DR) | temp ) & ((uint16_t)0x01FF));
2032  04d2 c65231        	ld	a,21041
2033  04d5 5f            	clrw	x
2034  04d6 97            	ld	xl,a
2035  04d7 01            	rrwa	x,a
2036  04d8 1a02          	or	a,(OFST+0,sp)
2037  04da 01            	rrwa	x,a
2038  04db 1a01          	or	a,(OFST-1,sp)
2039  04dd 01            	rrwa	x,a
2040  04de 01            	rrwa	x,a
2041  04df a4ff          	and	a,#255
2042  04e1 01            	rrwa	x,a
2043  04e2 a401          	and	a,#1
2044  04e4 01            	rrwa	x,a
2047  04e5 5b02          	addw	sp,#2
2048  04e7 81            	ret
2082                     ; 474 void UART1_SendData8(uint8_t Data)
2082                     ; 475 {
2083                     	switch	.text
2084  04e8               _UART1_SendData8:
2088                     ; 477   UART1->DR = Data;
2090  04e8 c75231        	ld	21041,a
2091                     ; 478 }
2094  04eb 81            	ret
2128                     ; 486 void UART1_SendData9(uint16_t Data)
2128                     ; 487 {
2129                     	switch	.text
2130  04ec               _UART1_SendData9:
2132  04ec 89            	pushw	x
2133       00000000      OFST:	set	0
2136                     ; 489   UART1->CR1 &= ((uint8_t)~UART1_CR1_T8);
2138  04ed 721d5234      	bres	21044,#6
2139                     ; 491   UART1->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & UART1_CR1_T8);
2141  04f1 54            	srlw	x
2142  04f2 54            	srlw	x
2143  04f3 9f            	ld	a,xl
2144  04f4 a440          	and	a,#64
2145  04f6 ca5234        	or	a,21044
2146  04f9 c75234        	ld	21044,a
2147                     ; 493   UART1->DR   = (uint8_t)(Data);
2149  04fc 7b02          	ld	a,(OFST+2,sp)
2150  04fe c75231        	ld	21041,a
2151                     ; 494 }
2154  0501 85            	popw	x
2155  0502 81            	ret
2178                     ; 501 void UART1_SendBreak(void)
2178                     ; 502 {
2179                     	switch	.text
2180  0503               _UART1_SendBreak:
2184                     ; 503   UART1->CR2 |= UART1_CR2_SBK;
2186  0503 72105235      	bset	21045,#0
2187                     ; 504 }
2190  0507 81            	ret
2225                     ; 511 void UART1_SetAddress(uint8_t UART1_Address)
2225                     ; 512 {
2226                     	switch	.text
2227  0508               _UART1_SetAddress:
2229  0508 88            	push	a
2230       00000000      OFST:	set	0
2233                     ; 514   assert_param(IS_UART1_ADDRESS_OK(UART1_Address));
2235  0509 a110          	cp	a,#16
2236  050b 2403          	jruge	L422
2237  050d 4f            	clr	a
2238  050e 2010          	jra	L622
2239  0510               L422:
2240  0510 ae0202        	ldw	x,#514
2241  0513 89            	pushw	x
2242  0514 ae0000        	ldw	x,#0
2243  0517 89            	pushw	x
2244  0518 ae0008        	ldw	x,#L371
2245  051b cd0000        	call	_assert_failed
2247  051e 5b04          	addw	sp,#4
2248  0520               L622:
2249                     ; 517   UART1->CR4 &= ((uint8_t)~UART1_CR4_ADD);
2251  0520 c65237        	ld	a,21047
2252  0523 a4f0          	and	a,#240
2253  0525 c75237        	ld	21047,a
2254                     ; 519   UART1->CR4 |= UART1_Address;
2256  0528 c65237        	ld	a,21047
2257  052b 1a01          	or	a,(OFST+1,sp)
2258  052d c75237        	ld	21047,a
2259                     ; 520 }
2262  0530 84            	pop	a
2263  0531 81            	ret
2297                     ; 528 void UART1_SetGuardTime(uint8_t UART1_GuardTime)
2297                     ; 529 {
2298                     	switch	.text
2299  0532               _UART1_SetGuardTime:
2303                     ; 531   UART1->GTR = UART1_GuardTime;
2305  0532 c75239        	ld	21049,a
2306                     ; 532 }
2309  0535 81            	ret
2343                     ; 556 void UART1_SetPrescaler(uint8_t UART1_Prescaler)
2343                     ; 557 {
2344                     	switch	.text
2345  0536               _UART1_SetPrescaler:
2349                     ; 559   UART1->PSCR = UART1_Prescaler;
2351  0536 c7523a        	ld	21050,a
2352                     ; 560 }
2355  0539 81            	ret
2499                     ; 568 FlagStatus UART1_GetFlagStatus(UART1_Flag_TypeDef UART1_FLAG)
2499                     ; 569 {
2500                     	switch	.text
2501  053a               _UART1_GetFlagStatus:
2503  053a 89            	pushw	x
2504  053b 88            	push	a
2505       00000001      OFST:	set	1
2508                     ; 570   FlagStatus status = RESET;
2510                     ; 573   assert_param(IS_UART1_FLAG_OK(UART1_FLAG));
2512  053c a30080        	cpw	x,#128
2513  053f 272d          	jreq	L042
2514  0541 a30040        	cpw	x,#64
2515  0544 2728          	jreq	L042
2516  0546 a30020        	cpw	x,#32
2517  0549 2723          	jreq	L042
2518  054b a30010        	cpw	x,#16
2519  054e 271e          	jreq	L042
2520  0550 a30008        	cpw	x,#8
2521  0553 2719          	jreq	L042
2522  0555 a30004        	cpw	x,#4
2523  0558 2714          	jreq	L042
2524  055a a30002        	cpw	x,#2
2525  055d 270f          	jreq	L042
2526  055f a30001        	cpw	x,#1
2527  0562 270a          	jreq	L042
2528  0564 a30101        	cpw	x,#257
2529  0567 2705          	jreq	L042
2530  0569 a30210        	cpw	x,#528
2531  056c 2603          	jrne	L632
2532  056e               L042:
2533  056e 4f            	clr	a
2534  056f 2010          	jra	L242
2535  0571               L632:
2536  0571 ae023d        	ldw	x,#573
2537  0574 89            	pushw	x
2538  0575 ae0000        	ldw	x,#0
2539  0578 89            	pushw	x
2540  0579 ae0008        	ldw	x,#L371
2541  057c cd0000        	call	_assert_failed
2543  057f 5b04          	addw	sp,#4
2544  0581               L242:
2545                     ; 577   if (UART1_FLAG == UART1_FLAG_LBDF)
2547  0581 1e02          	ldw	x,(OFST+1,sp)
2548  0583 a30210        	cpw	x,#528
2549  0586 2611          	jrne	L1601
2550                     ; 579     if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2552  0588 c65237        	ld	a,21047
2553  058b 1503          	bcp	a,(OFST+2,sp)
2554  058d 2706          	jreq	L3601
2555                     ; 582       status = SET;
2557  058f a601          	ld	a,#1
2558  0591 6b01          	ld	(OFST+0,sp),a
2561  0593 202b          	jra	L7601
2562  0595               L3601:
2563                     ; 587       status = RESET;
2565  0595 0f01          	clr	(OFST+0,sp)
2567  0597 2027          	jra	L7601
2568  0599               L1601:
2569                     ; 590   else if (UART1_FLAG == UART1_FLAG_SBK)
2571  0599 1e02          	ldw	x,(OFST+1,sp)
2572  059b a30101        	cpw	x,#257
2573  059e 2611          	jrne	L1701
2574                     ; 592     if ((UART1->CR2 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2576  05a0 c65235        	ld	a,21045
2577  05a3 1503          	bcp	a,(OFST+2,sp)
2578  05a5 2706          	jreq	L3701
2579                     ; 595       status = SET;
2581  05a7 a601          	ld	a,#1
2582  05a9 6b01          	ld	(OFST+0,sp),a
2585  05ab 2013          	jra	L7601
2586  05ad               L3701:
2587                     ; 600       status = RESET;
2589  05ad 0f01          	clr	(OFST+0,sp)
2591  05af 200f          	jra	L7601
2592  05b1               L1701:
2593                     ; 605     if ((UART1->SR & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2595  05b1 c65230        	ld	a,21040
2596  05b4 1503          	bcp	a,(OFST+2,sp)
2597  05b6 2706          	jreq	L1011
2598                     ; 608       status = SET;
2600  05b8 a601          	ld	a,#1
2601  05ba 6b01          	ld	(OFST+0,sp),a
2604  05bc 2002          	jra	L7601
2605  05be               L1011:
2606                     ; 613       status = RESET;
2608  05be 0f01          	clr	(OFST+0,sp)
2610  05c0               L7601:
2611                     ; 617   return status;
2613  05c0 7b01          	ld	a,(OFST+0,sp)
2616  05c2 5b03          	addw	sp,#3
2617  05c4 81            	ret
2653                     ; 646 void UART1_ClearFlag(UART1_Flag_TypeDef UART1_FLAG)
2653                     ; 647 {
2654                     	switch	.text
2655  05c5               _UART1_ClearFlag:
2657  05c5 89            	pushw	x
2658       00000000      OFST:	set	0
2661                     ; 648   assert_param(IS_UART1_CLEAR_FLAG_OK(UART1_FLAG));
2663  05c6 a30020        	cpw	x,#32
2664  05c9 2705          	jreq	L052
2665  05cb a30210        	cpw	x,#528
2666  05ce 2603          	jrne	L642
2667  05d0               L052:
2668  05d0 4f            	clr	a
2669  05d1 2010          	jra	L252
2670  05d3               L642:
2671  05d3 ae0288        	ldw	x,#648
2672  05d6 89            	pushw	x
2673  05d7 ae0000        	ldw	x,#0
2674  05da 89            	pushw	x
2675  05db ae0008        	ldw	x,#L371
2676  05de cd0000        	call	_assert_failed
2678  05e1 5b04          	addw	sp,#4
2679  05e3               L252:
2680                     ; 651   if (UART1_FLAG == UART1_FLAG_RXNE)
2682  05e3 1e01          	ldw	x,(OFST+1,sp)
2683  05e5 a30020        	cpw	x,#32
2684  05e8 2606          	jrne	L3211
2685                     ; 653     UART1->SR = (uint8_t)~(UART1_SR_RXNE);
2687  05ea 35df5230      	mov	21040,#223
2689  05ee 2004          	jra	L5211
2690  05f0               L3211:
2691                     ; 658     UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
2693  05f0 72195237      	bres	21047,#4
2694  05f4               L5211:
2695                     ; 660 }
2698  05f4 85            	popw	x
2699  05f5 81            	ret
2782                     ; 675 ITStatus UART1_GetITStatus(UART1_IT_TypeDef UART1_IT)
2782                     ; 676 {
2783                     	switch	.text
2784  05f6               _UART1_GetITStatus:
2786  05f6 89            	pushw	x
2787  05f7 89            	pushw	x
2788       00000002      OFST:	set	2
2791                     ; 677   ITStatus pendingbitstatus = RESET;
2793                     ; 678   uint8_t itpos = 0;
2795                     ; 679   uint8_t itmask1 = 0;
2797                     ; 680   uint8_t itmask2 = 0;
2799                     ; 681   uint8_t enablestatus = 0;
2801                     ; 684   assert_param(IS_UART1_GET_IT_OK(UART1_IT));
2803  05f8 a30277        	cpw	x,#631
2804  05fb 271e          	jreq	L062
2805  05fd a30266        	cpw	x,#614
2806  0600 2719          	jreq	L062
2807  0602 a30255        	cpw	x,#597
2808  0605 2714          	jreq	L062
2809  0607 a30244        	cpw	x,#580
2810  060a 270f          	jreq	L062
2811  060c a30235        	cpw	x,#565
2812  060f 270a          	jreq	L062
2813  0611 a30346        	cpw	x,#838
2814  0614 2705          	jreq	L062
2815  0616 a30100        	cpw	x,#256
2816  0619 2603          	jrne	L652
2817  061b               L062:
2818  061b 4f            	clr	a
2819  061c 2010          	jra	L262
2820  061e               L652:
2821  061e ae02ac        	ldw	x,#684
2822  0621 89            	pushw	x
2823  0622 ae0000        	ldw	x,#0
2824  0625 89            	pushw	x
2825  0626 ae0008        	ldw	x,#L371
2826  0629 cd0000        	call	_assert_failed
2828  062c 5b04          	addw	sp,#4
2829  062e               L262:
2830                     ; 687   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
2832  062e 7b04          	ld	a,(OFST+2,sp)
2833  0630 a40f          	and	a,#15
2834  0632 5f            	clrw	x
2835  0633 97            	ld	xl,a
2836  0634 a601          	ld	a,#1
2837  0636 5d            	tnzw	x
2838  0637 2704          	jreq	L462
2839  0639               L662:
2840  0639 48            	sll	a
2841  063a 5a            	decw	x
2842  063b 26fc          	jrne	L662
2843  063d               L462:
2844  063d 6b01          	ld	(OFST-1,sp),a
2846                     ; 689   itmask1 = (uint8_t)((uint8_t)UART1_IT >> (uint8_t)4);
2848  063f 7b04          	ld	a,(OFST+2,sp)
2849  0641 4e            	swap	a
2850  0642 a40f          	and	a,#15
2851  0644 6b02          	ld	(OFST+0,sp),a
2853                     ; 691   itmask2 = (uint8_t)((uint8_t)1 << itmask1);
2855  0646 7b02          	ld	a,(OFST+0,sp)
2856  0648 5f            	clrw	x
2857  0649 97            	ld	xl,a
2858  064a a601          	ld	a,#1
2859  064c 5d            	tnzw	x
2860  064d 2704          	jreq	L072
2861  064f               L272:
2862  064f 48            	sll	a
2863  0650 5a            	decw	x
2864  0651 26fc          	jrne	L272
2865  0653               L072:
2866  0653 6b02          	ld	(OFST+0,sp),a
2868                     ; 695   if (UART1_IT == UART1_IT_PE)
2870  0655 1e03          	ldw	x,(OFST+1,sp)
2871  0657 a30100        	cpw	x,#256
2872  065a 261c          	jrne	L1711
2873                     ; 698     enablestatus = (uint8_t)((uint8_t)UART1->CR1 & itmask2);
2875  065c c65234        	ld	a,21044
2876  065f 1402          	and	a,(OFST+0,sp)
2877  0661 6b02          	ld	(OFST+0,sp),a
2879                     ; 701     if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
2881  0663 c65230        	ld	a,21040
2882  0666 1501          	bcp	a,(OFST-1,sp)
2883  0668 270a          	jreq	L3711
2885  066a 0d02          	tnz	(OFST+0,sp)
2886  066c 2706          	jreq	L3711
2887                     ; 704       pendingbitstatus = SET;
2889  066e a601          	ld	a,#1
2890  0670 6b02          	ld	(OFST+0,sp),a
2893  0672 2041          	jra	L7711
2894  0674               L3711:
2895                     ; 709       pendingbitstatus = RESET;
2897  0674 0f02          	clr	(OFST+0,sp)
2899  0676 203d          	jra	L7711
2900  0678               L1711:
2901                     ; 713   else if (UART1_IT == UART1_IT_LBDF)
2903  0678 1e03          	ldw	x,(OFST+1,sp)
2904  067a a30346        	cpw	x,#838
2905  067d 261c          	jrne	L1021
2906                     ; 716     enablestatus = (uint8_t)((uint8_t)UART1->CR4 & itmask2);
2908  067f c65237        	ld	a,21047
2909  0682 1402          	and	a,(OFST+0,sp)
2910  0684 6b02          	ld	(OFST+0,sp),a
2912                     ; 718     if (((UART1->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
2914  0686 c65237        	ld	a,21047
2915  0689 1501          	bcp	a,(OFST-1,sp)
2916  068b 270a          	jreq	L3021
2918  068d 0d02          	tnz	(OFST+0,sp)
2919  068f 2706          	jreq	L3021
2920                     ; 721       pendingbitstatus = SET;
2922  0691 a601          	ld	a,#1
2923  0693 6b02          	ld	(OFST+0,sp),a
2926  0695 201e          	jra	L7711
2927  0697               L3021:
2928                     ; 726       pendingbitstatus = RESET;
2930  0697 0f02          	clr	(OFST+0,sp)
2932  0699 201a          	jra	L7711
2933  069b               L1021:
2934                     ; 732     enablestatus = (uint8_t)((uint8_t)UART1->CR2 & itmask2);
2936  069b c65235        	ld	a,21045
2937  069e 1402          	and	a,(OFST+0,sp)
2938  06a0 6b02          	ld	(OFST+0,sp),a
2940                     ; 734     if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
2942  06a2 c65230        	ld	a,21040
2943  06a5 1501          	bcp	a,(OFST-1,sp)
2944  06a7 270a          	jreq	L1121
2946  06a9 0d02          	tnz	(OFST+0,sp)
2947  06ab 2706          	jreq	L1121
2948                     ; 737       pendingbitstatus = SET;
2950  06ad a601          	ld	a,#1
2951  06af 6b02          	ld	(OFST+0,sp),a
2954  06b1 2002          	jra	L7711
2955  06b3               L1121:
2956                     ; 742       pendingbitstatus = RESET;
2958  06b3 0f02          	clr	(OFST+0,sp)
2960  06b5               L7711:
2961                     ; 747   return  pendingbitstatus;
2963  06b5 7b02          	ld	a,(OFST+0,sp)
2966  06b7 5b04          	addw	sp,#4
2967  06b9 81            	ret
3004                     ; 775 void UART1_ClearITPendingBit(UART1_IT_TypeDef UART1_IT)
3004                     ; 776 {
3005                     	switch	.text
3006  06ba               _UART1_ClearITPendingBit:
3008  06ba 89            	pushw	x
3009       00000000      OFST:	set	0
3012                     ; 777   assert_param(IS_UART1_CLEAR_IT_OK(UART1_IT));
3014  06bb a30255        	cpw	x,#597
3015  06be 2705          	jreq	L003
3016  06c0 a30346        	cpw	x,#838
3017  06c3 2603          	jrne	L672
3018  06c5               L003:
3019  06c5 4f            	clr	a
3020  06c6 2010          	jra	L203
3021  06c8               L672:
3022  06c8 ae0309        	ldw	x,#777
3023  06cb 89            	pushw	x
3024  06cc ae0000        	ldw	x,#0
3025  06cf 89            	pushw	x
3026  06d0 ae0008        	ldw	x,#L371
3027  06d3 cd0000        	call	_assert_failed
3029  06d6 5b04          	addw	sp,#4
3030  06d8               L203:
3031                     ; 780   if (UART1_IT == UART1_IT_RXNE)
3033  06d8 1e01          	ldw	x,(OFST+1,sp)
3034  06da a30255        	cpw	x,#597
3035  06dd 2606          	jrne	L3321
3036                     ; 782     UART1->SR = (uint8_t)~(UART1_SR_RXNE);
3038  06df 35df5230      	mov	21040,#223
3040  06e3 2004          	jra	L5321
3041  06e5               L3321:
3042                     ; 787     UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
3044  06e5 72195237      	bres	21047,#4
3045  06e9               L5321:
3046                     ; 789 }
3049  06e9 85            	popw	x
3050  06ea 81            	ret
3063                     	xdef	_UART1_ClearITPendingBit
3064                     	xdef	_UART1_GetITStatus
3065                     	xdef	_UART1_ClearFlag
3066                     	xdef	_UART1_GetFlagStatus
3067                     	xdef	_UART1_SetPrescaler
3068                     	xdef	_UART1_SetGuardTime
3069                     	xdef	_UART1_SetAddress
3070                     	xdef	_UART1_SendBreak
3071                     	xdef	_UART1_SendData9
3072                     	xdef	_UART1_SendData8
3073                     	xdef	_UART1_ReceiveData9
3074                     	xdef	_UART1_ReceiveData8
3075                     	xdef	_UART1_ReceiverWakeUpCmd
3076                     	xdef	_UART1_WakeUpConfig
3077                     	xdef	_UART1_SmartCardNACKCmd
3078                     	xdef	_UART1_SmartCardCmd
3079                     	xdef	_UART1_LINCmd
3080                     	xdef	_UART1_LINBreakDetectionConfig
3081                     	xdef	_UART1_IrDACmd
3082                     	xdef	_UART1_IrDAConfig
3083                     	xdef	_UART1_HalfDuplexCmd
3084                     	xdef	_UART1_ITConfig
3085                     	xdef	_UART1_Cmd
3086                     	xdef	_UART1_Init
3087                     	xdef	_UART1_DeInit
3088                     	xref	_assert_failed
3089                     	xref	_CLK_GetClockFreq
3090                     	switch	.const
3091  0008               L371:
3092  0008 2e2e5c6c6962  	dc.b	"..\libs\src\stm8s_"
3093  001a 75617274312e  	dc.b	"uart1.c",0
3094                     	xref.b	c_lreg
3095                     	xref.b	c_x
3115                     	xref	c_lursh
3116                     	xref	c_lsub
3117                     	xref	c_smul
3118                     	xref	c_ludv
3119                     	xref	c_rtol
3120                     	xref	c_llsh
3121                     	xref	c_lcmp
3122                     	xref	c_ltor
3123                     	end
