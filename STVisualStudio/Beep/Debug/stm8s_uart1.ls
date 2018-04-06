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
 391                     .const:	section	.text
 392  0000               L21:
 393  0000 00098969      	dc.l	625001
 394  0004               L25:
 395  0004 00000064      	dc.l	100
 396                     ; 90 void UART1_Init(uint32_t BaudRate, UART1_WordLength_TypeDef WordLength, 
 396                     ; 91                 UART1_StopBits_TypeDef StopBits, UART1_Parity_TypeDef Parity, 
 396                     ; 92                 UART1_SyncMode_TypeDef SyncMode, UART1_Mode_TypeDef Mode)
 396                     ; 93 {
 397                     .text:	section	.text,new
 398  0000               _UART1_Init:
 400  0000 520c          	subw	sp,#12
 401       0000000c      OFST:	set	12
 404                     ; 94   uint32_t BaudRate_Mantissa = 0, BaudRate_Mantissa100 = 0;
 408                     ; 97   assert_param(IS_UART1_BAUDRATE_OK(BaudRate));
 410  0002 96            	ldw	x,sp
 411  0003 1c000f        	addw	x,#OFST+3
 412  0006 cd0000        	call	c_ltor
 414  0009 ae0000        	ldw	x,#L21
 415  000c cd0000        	call	c_lcmp
 417  000f 2403          	jruge	L01
 418  0011 4f            	clr	a
 419  0012 2010          	jra	L41
 420  0014               L01:
 421  0014 ae0061        	ldw	x,#97
 422  0017 89            	pushw	x
 423  0018 ae0000        	ldw	x,#0
 424  001b 89            	pushw	x
 425  001c ae0008        	ldw	x,#L371
 426  001f cd0000        	call	_assert_failed
 428  0022 5b04          	addw	sp,#4
 429  0024               L41:
 430                     ; 98   assert_param(IS_UART1_WORDLENGTH_OK(WordLength));
 432  0024 0d13          	tnz	(OFST+7,sp)
 433  0026 2706          	jreq	L02
 434  0028 7b13          	ld	a,(OFST+7,sp)
 435  002a a110          	cp	a,#16
 436  002c 2603          	jrne	L61
 437  002e               L02:
 438  002e 4f            	clr	a
 439  002f 2010          	jra	L22
 440  0031               L61:
 441  0031 ae0062        	ldw	x,#98
 442  0034 89            	pushw	x
 443  0035 ae0000        	ldw	x,#0
 444  0038 89            	pushw	x
 445  0039 ae0008        	ldw	x,#L371
 446  003c cd0000        	call	_assert_failed
 448  003f 5b04          	addw	sp,#4
 449  0041               L22:
 450                     ; 99   assert_param(IS_UART1_STOPBITS_OK(StopBits));
 452  0041 0d14          	tnz	(OFST+8,sp)
 453  0043 2712          	jreq	L62
 454  0045 7b14          	ld	a,(OFST+8,sp)
 455  0047 a110          	cp	a,#16
 456  0049 270c          	jreq	L62
 457  004b 7b14          	ld	a,(OFST+8,sp)
 458  004d a120          	cp	a,#32
 459  004f 2706          	jreq	L62
 460  0051 7b14          	ld	a,(OFST+8,sp)
 461  0053 a130          	cp	a,#48
 462  0055 2603          	jrne	L42
 463  0057               L62:
 464  0057 4f            	clr	a
 465  0058 2010          	jra	L03
 466  005a               L42:
 467  005a ae0063        	ldw	x,#99
 468  005d 89            	pushw	x
 469  005e ae0000        	ldw	x,#0
 470  0061 89            	pushw	x
 471  0062 ae0008        	ldw	x,#L371
 472  0065 cd0000        	call	_assert_failed
 474  0068 5b04          	addw	sp,#4
 475  006a               L03:
 476                     ; 100   assert_param(IS_UART1_PARITY_OK(Parity));
 478  006a 0d15          	tnz	(OFST+9,sp)
 479  006c 270c          	jreq	L43
 480  006e 7b15          	ld	a,(OFST+9,sp)
 481  0070 a104          	cp	a,#4
 482  0072 2706          	jreq	L43
 483  0074 7b15          	ld	a,(OFST+9,sp)
 484  0076 a106          	cp	a,#6
 485  0078 2603          	jrne	L23
 486  007a               L43:
 487  007a 4f            	clr	a
 488  007b 2010          	jra	L63
 489  007d               L23:
 490  007d ae0064        	ldw	x,#100
 491  0080 89            	pushw	x
 492  0081 ae0000        	ldw	x,#0
 493  0084 89            	pushw	x
 494  0085 ae0008        	ldw	x,#L371
 495  0088 cd0000        	call	_assert_failed
 497  008b 5b04          	addw	sp,#4
 498  008d               L63:
 499                     ; 101   assert_param(IS_UART1_MODE_OK((uint8_t)Mode));
 501  008d 7b17          	ld	a,(OFST+11,sp)
 502  008f a108          	cp	a,#8
 503  0091 2730          	jreq	L24
 504  0093 7b17          	ld	a,(OFST+11,sp)
 505  0095 a140          	cp	a,#64
 506  0097 272a          	jreq	L24
 507  0099 7b17          	ld	a,(OFST+11,sp)
 508  009b a104          	cp	a,#4
 509  009d 2724          	jreq	L24
 510  009f 7b17          	ld	a,(OFST+11,sp)
 511  00a1 a180          	cp	a,#128
 512  00a3 271e          	jreq	L24
 513  00a5 7b17          	ld	a,(OFST+11,sp)
 514  00a7 a10c          	cp	a,#12
 515  00a9 2718          	jreq	L24
 516  00ab 7b17          	ld	a,(OFST+11,sp)
 517  00ad a10c          	cp	a,#12
 518  00af 2712          	jreq	L24
 519  00b1 7b17          	ld	a,(OFST+11,sp)
 520  00b3 a144          	cp	a,#68
 521  00b5 270c          	jreq	L24
 522  00b7 7b17          	ld	a,(OFST+11,sp)
 523  00b9 a1c0          	cp	a,#192
 524  00bb 2706          	jreq	L24
 525  00bd 7b17          	ld	a,(OFST+11,sp)
 526  00bf a188          	cp	a,#136
 527  00c1 2603          	jrne	L04
 528  00c3               L24:
 529  00c3 4f            	clr	a
 530  00c4 2010          	jra	L44
 531  00c6               L04:
 532  00c6 ae0065        	ldw	x,#101
 533  00c9 89            	pushw	x
 534  00ca ae0000        	ldw	x,#0
 535  00cd 89            	pushw	x
 536  00ce ae0008        	ldw	x,#L371
 537  00d1 cd0000        	call	_assert_failed
 539  00d4 5b04          	addw	sp,#4
 540  00d6               L44:
 541                     ; 102   assert_param(IS_UART1_SYNCMODE_OK((uint8_t)SyncMode));
 543  00d6 7b16          	ld	a,(OFST+10,sp)
 544  00d8 a488          	and	a,#136
 545  00da a188          	cp	a,#136
 546  00dc 271b          	jreq	L64
 547  00de 7b16          	ld	a,(OFST+10,sp)
 548  00e0 a444          	and	a,#68
 549  00e2 a144          	cp	a,#68
 550  00e4 2713          	jreq	L64
 551  00e6 7b16          	ld	a,(OFST+10,sp)
 552  00e8 a422          	and	a,#34
 553  00ea a122          	cp	a,#34
 554  00ec 270b          	jreq	L64
 555  00ee 7b16          	ld	a,(OFST+10,sp)
 556  00f0 a411          	and	a,#17
 557  00f2 a111          	cp	a,#17
 558  00f4 2703          	jreq	L64
 559  00f6 4f            	clr	a
 560  00f7 2010          	jra	L05
 561  00f9               L64:
 562  00f9 ae0066        	ldw	x,#102
 563  00fc 89            	pushw	x
 564  00fd ae0000        	ldw	x,#0
 565  0100 89            	pushw	x
 566  0101 ae0008        	ldw	x,#L371
 567  0104 cd0000        	call	_assert_failed
 569  0107 5b04          	addw	sp,#4
 570  0109               L05:
 571                     ; 105   UART1->CR1 &= (uint8_t)(~UART1_CR1_M);  
 573  0109 72195234      	bres	21044,#4
 574                     ; 108   UART1->CR1 |= (uint8_t)WordLength;
 576  010d c65234        	ld	a,21044
 577  0110 1a13          	or	a,(OFST+7,sp)
 578  0112 c75234        	ld	21044,a
 579                     ; 111   UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
 581  0115 c65236        	ld	a,21046
 582  0118 a4cf          	and	a,#207
 583  011a c75236        	ld	21046,a
 584                     ; 113   UART1->CR3 |= (uint8_t)StopBits;  
 586  011d c65236        	ld	a,21046
 587  0120 1a14          	or	a,(OFST+8,sp)
 588  0122 c75236        	ld	21046,a
 589                     ; 116   UART1->CR1 &= (uint8_t)(~(UART1_CR1_PCEN | UART1_CR1_PS  ));  
 591  0125 c65234        	ld	a,21044
 592  0128 a4f9          	and	a,#249
 593  012a c75234        	ld	21044,a
 594                     ; 118   UART1->CR1 |= (uint8_t)Parity;  
 596  012d c65234        	ld	a,21044
 597  0130 1a15          	or	a,(OFST+9,sp)
 598  0132 c75234        	ld	21044,a
 599                     ; 121   UART1->BRR1 &= (uint8_t)(~UART1_BRR1_DIVM);  
 601  0135 725f5232      	clr	21042
 602                     ; 123   UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVM);  
 604  0139 c65233        	ld	a,21043
 605  013c a40f          	and	a,#15
 606  013e c75233        	ld	21043,a
 607                     ; 125   UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVF);  
 609  0141 c65233        	ld	a,21043
 610  0144 a4f0          	and	a,#240
 611  0146 c75233        	ld	21043,a
 612                     ; 128   BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
 614  0149 96            	ldw	x,sp
 615  014a 1c000f        	addw	x,#OFST+3
 616  014d cd0000        	call	c_ltor
 618  0150 a604          	ld	a,#4
 619  0152 cd0000        	call	c_llsh
 621  0155 96            	ldw	x,sp
 622  0156 1c0001        	addw	x,#OFST-11
 623  0159 cd0000        	call	c_rtol
 626  015c cd0000        	call	_CLK_GetClockFreq
 628  015f 96            	ldw	x,sp
 629  0160 1c0001        	addw	x,#OFST-11
 630  0163 cd0000        	call	c_ludv
 632  0166 96            	ldw	x,sp
 633  0167 1c0009        	addw	x,#OFST-3
 634  016a cd0000        	call	c_rtol
 637                     ; 129   BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
 639  016d 96            	ldw	x,sp
 640  016e 1c000f        	addw	x,#OFST+3
 641  0171 cd0000        	call	c_ltor
 643  0174 a604          	ld	a,#4
 644  0176 cd0000        	call	c_llsh
 646  0179 96            	ldw	x,sp
 647  017a 1c0001        	addw	x,#OFST-11
 648  017d cd0000        	call	c_rtol
 651  0180 cd0000        	call	_CLK_GetClockFreq
 653  0183 a664          	ld	a,#100
 654  0185 cd0000        	call	c_smul
 656  0188 96            	ldw	x,sp
 657  0189 1c0001        	addw	x,#OFST-11
 658  018c cd0000        	call	c_ludv
 660  018f 96            	ldw	x,sp
 661  0190 1c0005        	addw	x,#OFST-7
 662  0193 cd0000        	call	c_rtol
 665                     ; 131   UART1->BRR2 |= (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100)) << 4) / 100) & (uint8_t)0x0F); 
 667  0196 96            	ldw	x,sp
 668  0197 1c0009        	addw	x,#OFST-3
 669  019a cd0000        	call	c_ltor
 671  019d a664          	ld	a,#100
 672  019f cd0000        	call	c_smul
 674  01a2 96            	ldw	x,sp
 675  01a3 1c0001        	addw	x,#OFST-11
 676  01a6 cd0000        	call	c_rtol
 679  01a9 96            	ldw	x,sp
 680  01aa 1c0005        	addw	x,#OFST-7
 681  01ad cd0000        	call	c_ltor
 683  01b0 96            	ldw	x,sp
 684  01b1 1c0001        	addw	x,#OFST-11
 685  01b4 cd0000        	call	c_lsub
 687  01b7 a604          	ld	a,#4
 688  01b9 cd0000        	call	c_llsh
 690  01bc ae0004        	ldw	x,#L25
 691  01bf cd0000        	call	c_ludv
 693  01c2 b603          	ld	a,c_lreg+3
 694  01c4 a40f          	and	a,#15
 695  01c6 ca5233        	or	a,21043
 696  01c9 c75233        	ld	21043,a
 697                     ; 133   UART1->BRR2 |= (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0); 
 699  01cc 96            	ldw	x,sp
 700  01cd 1c0009        	addw	x,#OFST-3
 701  01d0 cd0000        	call	c_ltor
 703  01d3 a604          	ld	a,#4
 704  01d5 cd0000        	call	c_lursh
 706  01d8 b603          	ld	a,c_lreg+3
 707  01da a4f0          	and	a,#240
 708  01dc b703          	ld	c_lreg+3,a
 709  01de 3f02          	clr	c_lreg+2
 710  01e0 3f01          	clr	c_lreg+1
 711  01e2 3f00          	clr	c_lreg
 712  01e4 b603          	ld	a,c_lreg+3
 713  01e6 ca5233        	or	a,21043
 714  01e9 c75233        	ld	21043,a
 715                     ; 135   UART1->BRR1 |= (uint8_t)BaudRate_Mantissa;           
 717  01ec c65232        	ld	a,21042
 718  01ef 1a0c          	or	a,(OFST+0,sp)
 719  01f1 c75232        	ld	21042,a
 720                     ; 138   UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
 722  01f4 c65235        	ld	a,21045
 723  01f7 a4f3          	and	a,#243
 724  01f9 c75235        	ld	21045,a
 725                     ; 140   UART1->CR3 &= (uint8_t)~(UART1_CR3_CPOL | UART1_CR3_CPHA | UART1_CR3_LBCL); 
 727  01fc c65236        	ld	a,21046
 728  01ff a4f8          	and	a,#248
 729  0201 c75236        	ld	21046,a
 730                     ; 142   UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART1_CR3_CPOL | 
 730                     ; 143                                                         UART1_CR3_CPHA | UART1_CR3_LBCL));  
 732  0204 7b16          	ld	a,(OFST+10,sp)
 733  0206 a407          	and	a,#7
 734  0208 ca5236        	or	a,21046
 735  020b c75236        	ld	21046,a
 736                     ; 145   if ((uint8_t)(Mode & UART1_MODE_TX_ENABLE))
 738  020e 7b17          	ld	a,(OFST+11,sp)
 739  0210 a504          	bcp	a,#4
 740  0212 2706          	jreq	L571
 741                     ; 148     UART1->CR2 |= (uint8_t)UART1_CR2_TEN;  
 743  0214 72165235      	bset	21045,#3
 745  0218 2004          	jra	L771
 746  021a               L571:
 747                     ; 153     UART1->CR2 &= (uint8_t)(~UART1_CR2_TEN);  
 749  021a 72175235      	bres	21045,#3
 750  021e               L771:
 751                     ; 155   if ((uint8_t)(Mode & UART1_MODE_RX_ENABLE))
 753  021e 7b17          	ld	a,(OFST+11,sp)
 754  0220 a508          	bcp	a,#8
 755  0222 2706          	jreq	L102
 756                     ; 158     UART1->CR2 |= (uint8_t)UART1_CR2_REN;  
 758  0224 72145235      	bset	21045,#2
 760  0228 2004          	jra	L302
 761  022a               L102:
 762                     ; 163     UART1->CR2 &= (uint8_t)(~UART1_CR2_REN);  
 764  022a 72155235      	bres	21045,#2
 765  022e               L302:
 766                     ; 167   if ((uint8_t)(SyncMode & UART1_SYNCMODE_CLOCK_DISABLE))
 768  022e 7b16          	ld	a,(OFST+10,sp)
 769  0230 a580          	bcp	a,#128
 770  0232 2706          	jreq	L502
 771                     ; 170     UART1->CR3 &= (uint8_t)(~UART1_CR3_CKEN); 
 773  0234 72175236      	bres	21046,#3
 775  0238 200a          	jra	L702
 776  023a               L502:
 777                     ; 174     UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & UART1_CR3_CKEN);
 779  023a 7b16          	ld	a,(OFST+10,sp)
 780  023c a408          	and	a,#8
 781  023e ca5236        	or	a,21046
 782  0241 c75236        	ld	21046,a
 783  0244               L702:
 784                     ; 176 }
 787  0244 5b0c          	addw	sp,#12
 788  0246 81            	ret
 843                     ; 184 void UART1_Cmd(FunctionalState NewState)
 843                     ; 185 {
 844                     .text:	section	.text,new
 845  0000               _UART1_Cmd:
 849                     ; 186   if (NewState != DISABLE)
 851  0000 4d            	tnz	a
 852  0001 2706          	jreq	L732
 853                     ; 189     UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
 855  0003 721b5234      	bres	21044,#5
 857  0007 2004          	jra	L142
 858  0009               L732:
 859                     ; 194     UART1->CR1 |= UART1_CR1_UARTD;  
 861  0009 721a5234      	bset	21044,#5
 862  000d               L142:
 863                     ; 196 }
 866  000d 81            	ret
 992                     ; 211 void UART1_ITConfig(UART1_IT_TypeDef UART1_IT, FunctionalState NewState)
 992                     ; 212 {
 993                     .text:	section	.text,new
 994  0000               _UART1_ITConfig:
 996  0000 89            	pushw	x
 997  0001 89            	pushw	x
 998       00000002      OFST:	set	2
1001                     ; 213   uint8_t uartreg = 0, itpos = 0x00;
1005                     ; 216   assert_param(IS_UART1_CONFIG_IT_OK(UART1_IT));
1007  0002 a30100        	cpw	x,#256
1008  0005 2719          	jreq	L26
1009  0007 a30277        	cpw	x,#631
1010  000a 2714          	jreq	L26
1011  000c a30266        	cpw	x,#614
1012  000f 270f          	jreq	L26
1013  0011 a30205        	cpw	x,#517
1014  0014 270a          	jreq	L26
1015  0016 a30244        	cpw	x,#580
1016  0019 2705          	jreq	L26
1017  001b a30346        	cpw	x,#838
1018  001e 2603          	jrne	L06
1019  0020               L26:
1020  0020 4f            	clr	a
1021  0021 2010          	jra	L46
1022  0023               L06:
1023  0023 ae00d8        	ldw	x,#216
1024  0026 89            	pushw	x
1025  0027 ae0000        	ldw	x,#0
1026  002a 89            	pushw	x
1027  002b ae0008        	ldw	x,#L371
1028  002e cd0000        	call	_assert_failed
1030  0031 5b04          	addw	sp,#4
1031  0033               L46:
1032                     ; 217   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1034  0033 0d07          	tnz	(OFST+5,sp)
1035  0035 2706          	jreq	L07
1036  0037 7b07          	ld	a,(OFST+5,sp)
1037  0039 a101          	cp	a,#1
1038  003b 2603          	jrne	L66
1039  003d               L07:
1040  003d 4f            	clr	a
1041  003e 2010          	jra	L27
1042  0040               L66:
1043  0040 ae00d9        	ldw	x,#217
1044  0043 89            	pushw	x
1045  0044 ae0000        	ldw	x,#0
1046  0047 89            	pushw	x
1047  0048 ae0008        	ldw	x,#L371
1048  004b cd0000        	call	_assert_failed
1050  004e 5b04          	addw	sp,#4
1051  0050               L27:
1052                     ; 220   uartreg = (uint8_t)((uint16_t)UART1_IT >> 0x08);
1054  0050 7b03          	ld	a,(OFST+1,sp)
1055  0052 6b01          	ld	(OFST-1,sp),a
1057                     ; 222   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
1059  0054 7b04          	ld	a,(OFST+2,sp)
1060  0056 a40f          	and	a,#15
1061  0058 5f            	clrw	x
1062  0059 97            	ld	xl,a
1063  005a a601          	ld	a,#1
1064  005c 5d            	tnzw	x
1065  005d 2704          	jreq	L47
1066  005f               L67:
1067  005f 48            	sll	a
1068  0060 5a            	decw	x
1069  0061 26fc          	jrne	L67
1070  0063               L47:
1071  0063 6b02          	ld	(OFST+0,sp),a
1073                     ; 224   if (NewState != DISABLE)
1075  0065 0d07          	tnz	(OFST+5,sp)
1076  0067 272a          	jreq	L123
1077                     ; 227     if (uartreg == 0x01)
1079  0069 7b01          	ld	a,(OFST-1,sp)
1080  006b a101          	cp	a,#1
1081  006d 260a          	jrne	L323
1082                     ; 229       UART1->CR1 |= itpos;
1084  006f c65234        	ld	a,21044
1085  0072 1a02          	or	a,(OFST+0,sp)
1086  0074 c75234        	ld	21044,a
1088  0077 2045          	jra	L333
1089  0079               L323:
1090                     ; 231     else if (uartreg == 0x02)
1092  0079 7b01          	ld	a,(OFST-1,sp)
1093  007b a102          	cp	a,#2
1094  007d 260a          	jrne	L723
1095                     ; 233       UART1->CR2 |= itpos;
1097  007f c65235        	ld	a,21045
1098  0082 1a02          	or	a,(OFST+0,sp)
1099  0084 c75235        	ld	21045,a
1101  0087 2035          	jra	L333
1102  0089               L723:
1103                     ; 237       UART1->CR4 |= itpos;
1105  0089 c65237        	ld	a,21047
1106  008c 1a02          	or	a,(OFST+0,sp)
1107  008e c75237        	ld	21047,a
1108  0091 202b          	jra	L333
1109  0093               L123:
1110                     ; 243     if (uartreg == 0x01)
1112  0093 7b01          	ld	a,(OFST-1,sp)
1113  0095 a101          	cp	a,#1
1114  0097 260b          	jrne	L533
1115                     ; 245       UART1->CR1 &= (uint8_t)(~itpos);
1117  0099 7b02          	ld	a,(OFST+0,sp)
1118  009b 43            	cpl	a
1119  009c c45234        	and	a,21044
1120  009f c75234        	ld	21044,a
1122  00a2 201a          	jra	L333
1123  00a4               L533:
1124                     ; 247     else if (uartreg == 0x02)
1126  00a4 7b01          	ld	a,(OFST-1,sp)
1127  00a6 a102          	cp	a,#2
1128  00a8 260b          	jrne	L143
1129                     ; 249       UART1->CR2 &= (uint8_t)(~itpos);
1131  00aa 7b02          	ld	a,(OFST+0,sp)
1132  00ac 43            	cpl	a
1133  00ad c45235        	and	a,21045
1134  00b0 c75235        	ld	21045,a
1136  00b3 2009          	jra	L333
1137  00b5               L143:
1138                     ; 253       UART1->CR4 &= (uint8_t)(~itpos);
1140  00b5 7b02          	ld	a,(OFST+0,sp)
1141  00b7 43            	cpl	a
1142  00b8 c45237        	and	a,21047
1143  00bb c75237        	ld	21047,a
1144  00be               L333:
1145                     ; 257 }
1148  00be 5b04          	addw	sp,#4
1149  00c0 81            	ret
1186                     ; 265 void UART1_HalfDuplexCmd(FunctionalState NewState)
1186                     ; 266 {
1187                     .text:	section	.text,new
1188  0000               _UART1_HalfDuplexCmd:
1190  0000 88            	push	a
1191       00000000      OFST:	set	0
1194                     ; 267   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1196  0001 4d            	tnz	a
1197  0002 2704          	jreq	L401
1198  0004 a101          	cp	a,#1
1199  0006 2603          	jrne	L201
1200  0008               L401:
1201  0008 4f            	clr	a
1202  0009 2010          	jra	L601
1203  000b               L201:
1204  000b ae010b        	ldw	x,#267
1205  000e 89            	pushw	x
1206  000f ae0000        	ldw	x,#0
1207  0012 89            	pushw	x
1208  0013 ae0008        	ldw	x,#L371
1209  0016 cd0000        	call	_assert_failed
1211  0019 5b04          	addw	sp,#4
1212  001b               L601:
1213                     ; 269   if (NewState != DISABLE)
1215  001b 0d01          	tnz	(OFST+1,sp)
1216  001d 2706          	jreq	L363
1217                     ; 271     UART1->CR5 |= UART1_CR5_HDSEL;  /**< UART1 Half Duplex Enable  */
1219  001f 72165238      	bset	21048,#3
1221  0023 2004          	jra	L563
1222  0025               L363:
1223                     ; 275     UART1->CR5 &= (uint8_t)~UART1_CR5_HDSEL; /**< UART1 Half Duplex Disable */
1225  0025 72175238      	bres	21048,#3
1226  0029               L563:
1227                     ; 277 }
1230  0029 84            	pop	a
1231  002a 81            	ret
1289                     ; 285 void UART1_IrDAConfig(UART1_IrDAMode_TypeDef UART1_IrDAMode)
1289                     ; 286 {
1290                     .text:	section	.text,new
1291  0000               _UART1_IrDAConfig:
1293  0000 88            	push	a
1294       00000000      OFST:	set	0
1297                     ; 287   assert_param(IS_UART1_IRDAMODE_OK(UART1_IrDAMode));
1299  0001 a101          	cp	a,#1
1300  0003 2703          	jreq	L411
1301  0005 4d            	tnz	a
1302  0006 2603          	jrne	L211
1303  0008               L411:
1304  0008 4f            	clr	a
1305  0009 2010          	jra	L611
1306  000b               L211:
1307  000b ae011f        	ldw	x,#287
1308  000e 89            	pushw	x
1309  000f ae0000        	ldw	x,#0
1310  0012 89            	pushw	x
1311  0013 ae0008        	ldw	x,#L371
1312  0016 cd0000        	call	_assert_failed
1314  0019 5b04          	addw	sp,#4
1315  001b               L611:
1316                     ; 289   if (UART1_IrDAMode != UART1_IRDAMODE_NORMAL)
1318  001b 0d01          	tnz	(OFST+1,sp)
1319  001d 2706          	jreq	L514
1320                     ; 291     UART1->CR5 |= UART1_CR5_IRLP;
1322  001f 72145238      	bset	21048,#2
1324  0023 2004          	jra	L714
1325  0025               L514:
1326                     ; 295     UART1->CR5 &= ((uint8_t)~UART1_CR5_IRLP);
1328  0025 72155238      	bres	21048,#2
1329  0029               L714:
1330                     ; 297 }
1333  0029 84            	pop	a
1334  002a 81            	ret
1370                     ; 305 void UART1_IrDACmd(FunctionalState NewState)
1370                     ; 306 {
1371                     .text:	section	.text,new
1372  0000               _UART1_IrDACmd:
1374  0000 88            	push	a
1375       00000000      OFST:	set	0
1378                     ; 308   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1380  0001 4d            	tnz	a
1381  0002 2704          	jreq	L421
1382  0004 a101          	cp	a,#1
1383  0006 2603          	jrne	L221
1384  0008               L421:
1385  0008 4f            	clr	a
1386  0009 2010          	jra	L621
1387  000b               L221:
1388  000b ae0134        	ldw	x,#308
1389  000e 89            	pushw	x
1390  000f ae0000        	ldw	x,#0
1391  0012 89            	pushw	x
1392  0013 ae0008        	ldw	x,#L371
1393  0016 cd0000        	call	_assert_failed
1395  0019 5b04          	addw	sp,#4
1396  001b               L621:
1397                     ; 310   if (NewState != DISABLE)
1399  001b 0d01          	tnz	(OFST+1,sp)
1400  001d 2706          	jreq	L734
1401                     ; 313     UART1->CR5 |= UART1_CR5_IREN;
1403  001f 72125238      	bset	21048,#1
1405  0023 2004          	jra	L144
1406  0025               L734:
1407                     ; 318     UART1->CR5 &= ((uint8_t)~UART1_CR5_IREN);
1409  0025 72135238      	bres	21048,#1
1410  0029               L144:
1411                     ; 320 }
1414  0029 84            	pop	a
1415  002a 81            	ret
1475                     ; 329 void UART1_LINBreakDetectionConfig(UART1_LINBreakDetectionLength_TypeDef UART1_LINBreakDetectionLength)
1475                     ; 330 {
1476                     .text:	section	.text,new
1477  0000               _UART1_LINBreakDetectionConfig:
1479  0000 88            	push	a
1480       00000000      OFST:	set	0
1483                     ; 331   assert_param(IS_UART1_LINBREAKDETECTIONLENGTH_OK(UART1_LINBreakDetectionLength));
1485  0001 4d            	tnz	a
1486  0002 2704          	jreq	L431
1487  0004 a101          	cp	a,#1
1488  0006 2603          	jrne	L231
1489  0008               L431:
1490  0008 4f            	clr	a
1491  0009 2010          	jra	L631
1492  000b               L231:
1493  000b ae014b        	ldw	x,#331
1494  000e 89            	pushw	x
1495  000f ae0000        	ldw	x,#0
1496  0012 89            	pushw	x
1497  0013 ae0008        	ldw	x,#L371
1498  0016 cd0000        	call	_assert_failed
1500  0019 5b04          	addw	sp,#4
1501  001b               L631:
1502                     ; 333   if (UART1_LINBreakDetectionLength != UART1_LINBREAKDETECTIONLENGTH_10BITS)
1504  001b 0d01          	tnz	(OFST+1,sp)
1505  001d 2706          	jreq	L174
1506                     ; 335     UART1->CR4 |= UART1_CR4_LBDL;
1508  001f 721a5237      	bset	21047,#5
1510  0023 2004          	jra	L374
1511  0025               L174:
1512                     ; 339     UART1->CR4 &= ((uint8_t)~UART1_CR4_LBDL);
1514  0025 721b5237      	bres	21047,#5
1515  0029               L374:
1516                     ; 341 }
1519  0029 84            	pop	a
1520  002a 81            	ret
1556                     ; 349 void UART1_LINCmd(FunctionalState NewState)
1556                     ; 350 {
1557                     .text:	section	.text,new
1558  0000               _UART1_LINCmd:
1560  0000 88            	push	a
1561       00000000      OFST:	set	0
1564                     ; 351   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1566  0001 4d            	tnz	a
1567  0002 2704          	jreq	L441
1568  0004 a101          	cp	a,#1
1569  0006 2603          	jrne	L241
1570  0008               L441:
1571  0008 4f            	clr	a
1572  0009 2010          	jra	L641
1573  000b               L241:
1574  000b ae015f        	ldw	x,#351
1575  000e 89            	pushw	x
1576  000f ae0000        	ldw	x,#0
1577  0012 89            	pushw	x
1578  0013 ae0008        	ldw	x,#L371
1579  0016 cd0000        	call	_assert_failed
1581  0019 5b04          	addw	sp,#4
1582  001b               L641:
1583                     ; 353   if (NewState != DISABLE)
1585  001b 0d01          	tnz	(OFST+1,sp)
1586  001d 2706          	jreq	L315
1587                     ; 356     UART1->CR3 |= UART1_CR3_LINEN;
1589  001f 721c5236      	bset	21046,#6
1591  0023 2004          	jra	L515
1592  0025               L315:
1593                     ; 361     UART1->CR3 &= ((uint8_t)~UART1_CR3_LINEN);
1595  0025 721d5236      	bres	21046,#6
1596  0029               L515:
1597                     ; 363 }
1600  0029 84            	pop	a
1601  002a 81            	ret
1637                     ; 371 void UART1_SmartCardCmd(FunctionalState NewState)
1637                     ; 372 {
1638                     .text:	section	.text,new
1639  0000               _UART1_SmartCardCmd:
1641  0000 88            	push	a
1642       00000000      OFST:	set	0
1645                     ; 373   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1647  0001 4d            	tnz	a
1648  0002 2704          	jreq	L451
1649  0004 a101          	cp	a,#1
1650  0006 2603          	jrne	L251
1651  0008               L451:
1652  0008 4f            	clr	a
1653  0009 2010          	jra	L651
1654  000b               L251:
1655  000b ae0175        	ldw	x,#373
1656  000e 89            	pushw	x
1657  000f ae0000        	ldw	x,#0
1658  0012 89            	pushw	x
1659  0013 ae0008        	ldw	x,#L371
1660  0016 cd0000        	call	_assert_failed
1662  0019 5b04          	addw	sp,#4
1663  001b               L651:
1664                     ; 375   if (NewState != DISABLE)
1666  001b 0d01          	tnz	(OFST+1,sp)
1667  001d 2706          	jreq	L535
1668                     ; 378     UART1->CR5 |= UART1_CR5_SCEN;
1670  001f 721a5238      	bset	21048,#5
1672  0023 2004          	jra	L735
1673  0025               L535:
1674                     ; 383     UART1->CR5 &= ((uint8_t)(~UART1_CR5_SCEN));
1676  0025 721b5238      	bres	21048,#5
1677  0029               L735:
1678                     ; 385 }
1681  0029 84            	pop	a
1682  002a 81            	ret
1719                     ; 394 void UART1_SmartCardNACKCmd(FunctionalState NewState)
1719                     ; 395 {
1720                     .text:	section	.text,new
1721  0000               _UART1_SmartCardNACKCmd:
1723  0000 88            	push	a
1724       00000000      OFST:	set	0
1727                     ; 396   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1729  0001 4d            	tnz	a
1730  0002 2704          	jreq	L461
1731  0004 a101          	cp	a,#1
1732  0006 2603          	jrne	L261
1733  0008               L461:
1734  0008 4f            	clr	a
1735  0009 2010          	jra	L661
1736  000b               L261:
1737  000b ae018c        	ldw	x,#396
1738  000e 89            	pushw	x
1739  000f ae0000        	ldw	x,#0
1740  0012 89            	pushw	x
1741  0013 ae0008        	ldw	x,#L371
1742  0016 cd0000        	call	_assert_failed
1744  0019 5b04          	addw	sp,#4
1745  001b               L661:
1746                     ; 398   if (NewState != DISABLE)
1748  001b 0d01          	tnz	(OFST+1,sp)
1749  001d 2706          	jreq	L755
1750                     ; 401     UART1->CR5 |= UART1_CR5_NACK;
1752  001f 72185238      	bset	21048,#4
1754  0023 2004          	jra	L165
1755  0025               L755:
1756                     ; 406     UART1->CR5 &= ((uint8_t)~(UART1_CR5_NACK));
1758  0025 72195238      	bres	21048,#4
1759  0029               L165:
1760                     ; 408 }
1763  0029 84            	pop	a
1764  002a 81            	ret
1822                     ; 416 void UART1_WakeUpConfig(UART1_WakeUp_TypeDef UART1_WakeUp)
1822                     ; 417 {
1823                     .text:	section	.text,new
1824  0000               _UART1_WakeUpConfig:
1826  0000 88            	push	a
1827       00000000      OFST:	set	0
1830                     ; 418   assert_param(IS_UART1_WAKEUP_OK(UART1_WakeUp));
1832  0001 4d            	tnz	a
1833  0002 2704          	jreq	L471
1834  0004 a108          	cp	a,#8
1835  0006 2603          	jrne	L271
1836  0008               L471:
1837  0008 4f            	clr	a
1838  0009 2010          	jra	L671
1839  000b               L271:
1840  000b ae01a2        	ldw	x,#418
1841  000e 89            	pushw	x
1842  000f ae0000        	ldw	x,#0
1843  0012 89            	pushw	x
1844  0013 ae0008        	ldw	x,#L371
1845  0016 cd0000        	call	_assert_failed
1847  0019 5b04          	addw	sp,#4
1848  001b               L671:
1849                     ; 420   UART1->CR1 &= ((uint8_t)~UART1_CR1_WAKE);
1851  001b 72175234      	bres	21044,#3
1852                     ; 421   UART1->CR1 |= (uint8_t)UART1_WakeUp;
1854  001f c65234        	ld	a,21044
1855  0022 1a01          	or	a,(OFST+1,sp)
1856  0024 c75234        	ld	21044,a
1857                     ; 422 }
1860  0027 84            	pop	a
1861  0028 81            	ret
1898                     ; 430 void UART1_ReceiverWakeUpCmd(FunctionalState NewState)
1898                     ; 431 {
1899                     .text:	section	.text,new
1900  0000               _UART1_ReceiverWakeUpCmd:
1902  0000 88            	push	a
1903       00000000      OFST:	set	0
1906                     ; 432   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1908  0001 4d            	tnz	a
1909  0002 2704          	jreq	L402
1910  0004 a101          	cp	a,#1
1911  0006 2603          	jrne	L202
1912  0008               L402:
1913  0008 4f            	clr	a
1914  0009 2010          	jra	L602
1915  000b               L202:
1916  000b ae01b0        	ldw	x,#432
1917  000e 89            	pushw	x
1918  000f ae0000        	ldw	x,#0
1919  0012 89            	pushw	x
1920  0013 ae0008        	ldw	x,#L371
1921  0016 cd0000        	call	_assert_failed
1923  0019 5b04          	addw	sp,#4
1924  001b               L602:
1925                     ; 434   if (NewState != DISABLE)
1927  001b 0d01          	tnz	(OFST+1,sp)
1928  001d 2706          	jreq	L726
1929                     ; 437     UART1->CR2 |= UART1_CR2_RWU;
1931  001f 72125235      	bset	21045,#1
1933  0023 2004          	jra	L136
1934  0025               L726:
1935                     ; 442     UART1->CR2 &= ((uint8_t)~UART1_CR2_RWU);
1937  0025 72135235      	bres	21045,#1
1938  0029               L136:
1939                     ; 444 }
1942  0029 84            	pop	a
1943  002a 81            	ret
1966                     ; 451 uint8_t UART1_ReceiveData8(void)
1966                     ; 452 {
1967                     .text:	section	.text,new
1968  0000               _UART1_ReceiveData8:
1972                     ; 453   return ((uint8_t)UART1->DR);
1974  0000 c65231        	ld	a,21041
1977  0003 81            	ret
2011                     ; 461 uint16_t UART1_ReceiveData9(void)
2011                     ; 462 {
2012                     .text:	section	.text,new
2013  0000               _UART1_ReceiveData9:
2015  0000 89            	pushw	x
2016       00000002      OFST:	set	2
2019                     ; 463   uint16_t temp = 0;
2021                     ; 465   temp = (uint16_t)(((uint16_t)( (uint16_t)UART1->CR1 & (uint16_t)UART1_CR1_R8)) << 1);
2023  0001 c65234        	ld	a,21044
2024  0004 5f            	clrw	x
2025  0005 a480          	and	a,#128
2026  0007 5f            	clrw	x
2027  0008 02            	rlwa	x,a
2028  0009 58            	sllw	x
2029  000a 1f01          	ldw	(OFST-1,sp),x
2031                     ; 466   return (uint16_t)( (((uint16_t) UART1->DR) | temp ) & ((uint16_t)0x01FF));
2033  000c c65231        	ld	a,21041
2034  000f 5f            	clrw	x
2035  0010 97            	ld	xl,a
2036  0011 01            	rrwa	x,a
2037  0012 1a02          	or	a,(OFST+0,sp)
2038  0014 01            	rrwa	x,a
2039  0015 1a01          	or	a,(OFST-1,sp)
2040  0017 01            	rrwa	x,a
2041  0018 01            	rrwa	x,a
2042  0019 a4ff          	and	a,#255
2043  001b 01            	rrwa	x,a
2044  001c a401          	and	a,#1
2045  001e 01            	rrwa	x,a
2048  001f 5b02          	addw	sp,#2
2049  0021 81            	ret
2083                     ; 474 void UART1_SendData8(uint8_t Data)
2083                     ; 475 {
2084                     .text:	section	.text,new
2085  0000               _UART1_SendData8:
2089                     ; 477   UART1->DR = Data;
2091  0000 c75231        	ld	21041,a
2092                     ; 478 }
2095  0003 81            	ret
2129                     ; 486 void UART1_SendData9(uint16_t Data)
2129                     ; 487 {
2130                     .text:	section	.text,new
2131  0000               _UART1_SendData9:
2133  0000 89            	pushw	x
2134       00000000      OFST:	set	0
2137                     ; 489   UART1->CR1 &= ((uint8_t)~UART1_CR1_T8);
2139  0001 721d5234      	bres	21044,#6
2140                     ; 491   UART1->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & UART1_CR1_T8);
2142  0005 54            	srlw	x
2143  0006 54            	srlw	x
2144  0007 9f            	ld	a,xl
2145  0008 a440          	and	a,#64
2146  000a ca5234        	or	a,21044
2147  000d c75234        	ld	21044,a
2148                     ; 493   UART1->DR   = (uint8_t)(Data);
2150  0010 7b02          	ld	a,(OFST+2,sp)
2151  0012 c75231        	ld	21041,a
2152                     ; 494 }
2155  0015 85            	popw	x
2156  0016 81            	ret
2179                     ; 501 void UART1_SendBreak(void)
2179                     ; 502 {
2180                     .text:	section	.text,new
2181  0000               _UART1_SendBreak:
2185                     ; 503   UART1->CR2 |= UART1_CR2_SBK;
2187  0000 72105235      	bset	21045,#0
2188                     ; 504 }
2191  0004 81            	ret
2226                     ; 511 void UART1_SetAddress(uint8_t UART1_Address)
2226                     ; 512 {
2227                     .text:	section	.text,new
2228  0000               _UART1_SetAddress:
2230  0000 88            	push	a
2231       00000000      OFST:	set	0
2234                     ; 514   assert_param(IS_UART1_ADDRESS_OK(UART1_Address));
2236  0001 a110          	cp	a,#16
2237  0003 2403          	jruge	L422
2238  0005 4f            	clr	a
2239  0006 2010          	jra	L622
2240  0008               L422:
2241  0008 ae0202        	ldw	x,#514
2242  000b 89            	pushw	x
2243  000c ae0000        	ldw	x,#0
2244  000f 89            	pushw	x
2245  0010 ae0008        	ldw	x,#L371
2246  0013 cd0000        	call	_assert_failed
2248  0016 5b04          	addw	sp,#4
2249  0018               L622:
2250                     ; 517   UART1->CR4 &= ((uint8_t)~UART1_CR4_ADD);
2252  0018 c65237        	ld	a,21047
2253  001b a4f0          	and	a,#240
2254  001d c75237        	ld	21047,a
2255                     ; 519   UART1->CR4 |= UART1_Address;
2257  0020 c65237        	ld	a,21047
2258  0023 1a01          	or	a,(OFST+1,sp)
2259  0025 c75237        	ld	21047,a
2260                     ; 520 }
2263  0028 84            	pop	a
2264  0029 81            	ret
2298                     ; 528 void UART1_SetGuardTime(uint8_t UART1_GuardTime)
2298                     ; 529 {
2299                     .text:	section	.text,new
2300  0000               _UART1_SetGuardTime:
2304                     ; 531   UART1->GTR = UART1_GuardTime;
2306  0000 c75239        	ld	21049,a
2307                     ; 532 }
2310  0003 81            	ret
2344                     ; 556 void UART1_SetPrescaler(uint8_t UART1_Prescaler)
2344                     ; 557 {
2345                     .text:	section	.text,new
2346  0000               _UART1_SetPrescaler:
2350                     ; 559   UART1->PSCR = UART1_Prescaler;
2352  0000 c7523a        	ld	21050,a
2353                     ; 560 }
2356  0003 81            	ret
2500                     ; 568 FlagStatus UART1_GetFlagStatus(UART1_Flag_TypeDef UART1_FLAG)
2500                     ; 569 {
2501                     .text:	section	.text,new
2502  0000               _UART1_GetFlagStatus:
2504  0000 89            	pushw	x
2505  0001 88            	push	a
2506       00000001      OFST:	set	1
2509                     ; 570   FlagStatus status = RESET;
2511                     ; 573   assert_param(IS_UART1_FLAG_OK(UART1_FLAG));
2513  0002 a30080        	cpw	x,#128
2514  0005 272d          	jreq	L042
2515  0007 a30040        	cpw	x,#64
2516  000a 2728          	jreq	L042
2517  000c a30020        	cpw	x,#32
2518  000f 2723          	jreq	L042
2519  0011 a30010        	cpw	x,#16
2520  0014 271e          	jreq	L042
2521  0016 a30008        	cpw	x,#8
2522  0019 2719          	jreq	L042
2523  001b a30004        	cpw	x,#4
2524  001e 2714          	jreq	L042
2525  0020 a30002        	cpw	x,#2
2526  0023 270f          	jreq	L042
2527  0025 a30001        	cpw	x,#1
2528  0028 270a          	jreq	L042
2529  002a a30101        	cpw	x,#257
2530  002d 2705          	jreq	L042
2531  002f a30210        	cpw	x,#528
2532  0032 2603          	jrne	L632
2533  0034               L042:
2534  0034 4f            	clr	a
2535  0035 2010          	jra	L242
2536  0037               L632:
2537  0037 ae023d        	ldw	x,#573
2538  003a 89            	pushw	x
2539  003b ae0000        	ldw	x,#0
2540  003e 89            	pushw	x
2541  003f ae0008        	ldw	x,#L371
2542  0042 cd0000        	call	_assert_failed
2544  0045 5b04          	addw	sp,#4
2545  0047               L242:
2546                     ; 577   if (UART1_FLAG == UART1_FLAG_LBDF)
2548  0047 1e02          	ldw	x,(OFST+1,sp)
2549  0049 a30210        	cpw	x,#528
2550  004c 2611          	jrne	L1601
2551                     ; 579     if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2553  004e c65237        	ld	a,21047
2554  0051 1503          	bcp	a,(OFST+2,sp)
2555  0053 2706          	jreq	L3601
2556                     ; 582       status = SET;
2558  0055 a601          	ld	a,#1
2559  0057 6b01          	ld	(OFST+0,sp),a
2562  0059 202b          	jra	L7601
2563  005b               L3601:
2564                     ; 587       status = RESET;
2566  005b 0f01          	clr	(OFST+0,sp)
2568  005d 2027          	jra	L7601
2569  005f               L1601:
2570                     ; 590   else if (UART1_FLAG == UART1_FLAG_SBK)
2572  005f 1e02          	ldw	x,(OFST+1,sp)
2573  0061 a30101        	cpw	x,#257
2574  0064 2611          	jrne	L1701
2575                     ; 592     if ((UART1->CR2 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2577  0066 c65235        	ld	a,21045
2578  0069 1503          	bcp	a,(OFST+2,sp)
2579  006b 2706          	jreq	L3701
2580                     ; 595       status = SET;
2582  006d a601          	ld	a,#1
2583  006f 6b01          	ld	(OFST+0,sp),a
2586  0071 2013          	jra	L7601
2587  0073               L3701:
2588                     ; 600       status = RESET;
2590  0073 0f01          	clr	(OFST+0,sp)
2592  0075 200f          	jra	L7601
2593  0077               L1701:
2594                     ; 605     if ((UART1->SR & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2596  0077 c65230        	ld	a,21040
2597  007a 1503          	bcp	a,(OFST+2,sp)
2598  007c 2706          	jreq	L1011
2599                     ; 608       status = SET;
2601  007e a601          	ld	a,#1
2602  0080 6b01          	ld	(OFST+0,sp),a
2605  0082 2002          	jra	L7601
2606  0084               L1011:
2607                     ; 613       status = RESET;
2609  0084 0f01          	clr	(OFST+0,sp)
2611  0086               L7601:
2612                     ; 617   return status;
2614  0086 7b01          	ld	a,(OFST+0,sp)
2617  0088 5b03          	addw	sp,#3
2618  008a 81            	ret
2654                     ; 646 void UART1_ClearFlag(UART1_Flag_TypeDef UART1_FLAG)
2654                     ; 647 {
2655                     .text:	section	.text,new
2656  0000               _UART1_ClearFlag:
2658  0000 89            	pushw	x
2659       00000000      OFST:	set	0
2662                     ; 648   assert_param(IS_UART1_CLEAR_FLAG_OK(UART1_FLAG));
2664  0001 a30020        	cpw	x,#32
2665  0004 2705          	jreq	L052
2666  0006 a30210        	cpw	x,#528
2667  0009 2603          	jrne	L642
2668  000b               L052:
2669  000b 4f            	clr	a
2670  000c 2010          	jra	L252
2671  000e               L642:
2672  000e ae0288        	ldw	x,#648
2673  0011 89            	pushw	x
2674  0012 ae0000        	ldw	x,#0
2675  0015 89            	pushw	x
2676  0016 ae0008        	ldw	x,#L371
2677  0019 cd0000        	call	_assert_failed
2679  001c 5b04          	addw	sp,#4
2680  001e               L252:
2681                     ; 651   if (UART1_FLAG == UART1_FLAG_RXNE)
2683  001e 1e01          	ldw	x,(OFST+1,sp)
2684  0020 a30020        	cpw	x,#32
2685  0023 2606          	jrne	L3211
2686                     ; 653     UART1->SR = (uint8_t)~(UART1_SR_RXNE);
2688  0025 35df5230      	mov	21040,#223
2690  0029 2004          	jra	L5211
2691  002b               L3211:
2692                     ; 658     UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
2694  002b 72195237      	bres	21047,#4
2695  002f               L5211:
2696                     ; 660 }
2699  002f 85            	popw	x
2700  0030 81            	ret
2783                     ; 675 ITStatus UART1_GetITStatus(UART1_IT_TypeDef UART1_IT)
2783                     ; 676 {
2784                     .text:	section	.text,new
2785  0000               _UART1_GetITStatus:
2787  0000 89            	pushw	x
2788  0001 89            	pushw	x
2789       00000002      OFST:	set	2
2792                     ; 677   ITStatus pendingbitstatus = RESET;
2794                     ; 678   uint8_t itpos = 0;
2796                     ; 679   uint8_t itmask1 = 0;
2798                     ; 680   uint8_t itmask2 = 0;
2800                     ; 681   uint8_t enablestatus = 0;
2802                     ; 684   assert_param(IS_UART1_GET_IT_OK(UART1_IT));
2804  0002 a30277        	cpw	x,#631
2805  0005 271e          	jreq	L062
2806  0007 a30266        	cpw	x,#614
2807  000a 2719          	jreq	L062
2808  000c a30255        	cpw	x,#597
2809  000f 2714          	jreq	L062
2810  0011 a30244        	cpw	x,#580
2811  0014 270f          	jreq	L062
2812  0016 a30235        	cpw	x,#565
2813  0019 270a          	jreq	L062
2814  001b a30346        	cpw	x,#838
2815  001e 2705          	jreq	L062
2816  0020 a30100        	cpw	x,#256
2817  0023 2603          	jrne	L652
2818  0025               L062:
2819  0025 4f            	clr	a
2820  0026 2010          	jra	L262
2821  0028               L652:
2822  0028 ae02ac        	ldw	x,#684
2823  002b 89            	pushw	x
2824  002c ae0000        	ldw	x,#0
2825  002f 89            	pushw	x
2826  0030 ae0008        	ldw	x,#L371
2827  0033 cd0000        	call	_assert_failed
2829  0036 5b04          	addw	sp,#4
2830  0038               L262:
2831                     ; 687   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
2833  0038 7b04          	ld	a,(OFST+2,sp)
2834  003a a40f          	and	a,#15
2835  003c 5f            	clrw	x
2836  003d 97            	ld	xl,a
2837  003e a601          	ld	a,#1
2838  0040 5d            	tnzw	x
2839  0041 2704          	jreq	L462
2840  0043               L662:
2841  0043 48            	sll	a
2842  0044 5a            	decw	x
2843  0045 26fc          	jrne	L662
2844  0047               L462:
2845  0047 6b01          	ld	(OFST-1,sp),a
2847                     ; 689   itmask1 = (uint8_t)((uint8_t)UART1_IT >> (uint8_t)4);
2849  0049 7b04          	ld	a,(OFST+2,sp)
2850  004b 4e            	swap	a
2851  004c a40f          	and	a,#15
2852  004e 6b02          	ld	(OFST+0,sp),a
2854                     ; 691   itmask2 = (uint8_t)((uint8_t)1 << itmask1);
2856  0050 7b02          	ld	a,(OFST+0,sp)
2857  0052 5f            	clrw	x
2858  0053 97            	ld	xl,a
2859  0054 a601          	ld	a,#1
2860  0056 5d            	tnzw	x
2861  0057 2704          	jreq	L072
2862  0059               L272:
2863  0059 48            	sll	a
2864  005a 5a            	decw	x
2865  005b 26fc          	jrne	L272
2866  005d               L072:
2867  005d 6b02          	ld	(OFST+0,sp),a
2869                     ; 695   if (UART1_IT == UART1_IT_PE)
2871  005f 1e03          	ldw	x,(OFST+1,sp)
2872  0061 a30100        	cpw	x,#256
2873  0064 261c          	jrne	L1711
2874                     ; 698     enablestatus = (uint8_t)((uint8_t)UART1->CR1 & itmask2);
2876  0066 c65234        	ld	a,21044
2877  0069 1402          	and	a,(OFST+0,sp)
2878  006b 6b02          	ld	(OFST+0,sp),a
2880                     ; 701     if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
2882  006d c65230        	ld	a,21040
2883  0070 1501          	bcp	a,(OFST-1,sp)
2884  0072 270a          	jreq	L3711
2886  0074 0d02          	tnz	(OFST+0,sp)
2887  0076 2706          	jreq	L3711
2888                     ; 704       pendingbitstatus = SET;
2890  0078 a601          	ld	a,#1
2891  007a 6b02          	ld	(OFST+0,sp),a
2894  007c 2041          	jra	L7711
2895  007e               L3711:
2896                     ; 709       pendingbitstatus = RESET;
2898  007e 0f02          	clr	(OFST+0,sp)
2900  0080 203d          	jra	L7711
2901  0082               L1711:
2902                     ; 713   else if (UART1_IT == UART1_IT_LBDF)
2904  0082 1e03          	ldw	x,(OFST+1,sp)
2905  0084 a30346        	cpw	x,#838
2906  0087 261c          	jrne	L1021
2907                     ; 716     enablestatus = (uint8_t)((uint8_t)UART1->CR4 & itmask2);
2909  0089 c65237        	ld	a,21047
2910  008c 1402          	and	a,(OFST+0,sp)
2911  008e 6b02          	ld	(OFST+0,sp),a
2913                     ; 718     if (((UART1->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
2915  0090 c65237        	ld	a,21047
2916  0093 1501          	bcp	a,(OFST-1,sp)
2917  0095 270a          	jreq	L3021
2919  0097 0d02          	tnz	(OFST+0,sp)
2920  0099 2706          	jreq	L3021
2921                     ; 721       pendingbitstatus = SET;
2923  009b a601          	ld	a,#1
2924  009d 6b02          	ld	(OFST+0,sp),a
2927  009f 201e          	jra	L7711
2928  00a1               L3021:
2929                     ; 726       pendingbitstatus = RESET;
2931  00a1 0f02          	clr	(OFST+0,sp)
2933  00a3 201a          	jra	L7711
2934  00a5               L1021:
2935                     ; 732     enablestatus = (uint8_t)((uint8_t)UART1->CR2 & itmask2);
2937  00a5 c65235        	ld	a,21045
2938  00a8 1402          	and	a,(OFST+0,sp)
2939  00aa 6b02          	ld	(OFST+0,sp),a
2941                     ; 734     if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
2943  00ac c65230        	ld	a,21040
2944  00af 1501          	bcp	a,(OFST-1,sp)
2945  00b1 270a          	jreq	L1121
2947  00b3 0d02          	tnz	(OFST+0,sp)
2948  00b5 2706          	jreq	L1121
2949                     ; 737       pendingbitstatus = SET;
2951  00b7 a601          	ld	a,#1
2952  00b9 6b02          	ld	(OFST+0,sp),a
2955  00bb 2002          	jra	L7711
2956  00bd               L1121:
2957                     ; 742       pendingbitstatus = RESET;
2959  00bd 0f02          	clr	(OFST+0,sp)
2961  00bf               L7711:
2962                     ; 747   return  pendingbitstatus;
2964  00bf 7b02          	ld	a,(OFST+0,sp)
2967  00c1 5b04          	addw	sp,#4
2968  00c3 81            	ret
3005                     ; 775 void UART1_ClearITPendingBit(UART1_IT_TypeDef UART1_IT)
3005                     ; 776 {
3006                     .text:	section	.text,new
3007  0000               _UART1_ClearITPendingBit:
3009  0000 89            	pushw	x
3010       00000000      OFST:	set	0
3013                     ; 777   assert_param(IS_UART1_CLEAR_IT_OK(UART1_IT));
3015  0001 a30255        	cpw	x,#597
3016  0004 2705          	jreq	L003
3017  0006 a30346        	cpw	x,#838
3018  0009 2603          	jrne	L672
3019  000b               L003:
3020  000b 4f            	clr	a
3021  000c 2010          	jra	L203
3022  000e               L672:
3023  000e ae0309        	ldw	x,#777
3024  0011 89            	pushw	x
3025  0012 ae0000        	ldw	x,#0
3026  0015 89            	pushw	x
3027  0016 ae0008        	ldw	x,#L371
3028  0019 cd0000        	call	_assert_failed
3030  001c 5b04          	addw	sp,#4
3031  001e               L203:
3032                     ; 780   if (UART1_IT == UART1_IT_RXNE)
3034  001e 1e01          	ldw	x,(OFST+1,sp)
3035  0020 a30255        	cpw	x,#597
3036  0023 2606          	jrne	L3321
3037                     ; 782     UART1->SR = (uint8_t)~(UART1_SR_RXNE);
3039  0025 35df5230      	mov	21040,#223
3041  0029 2004          	jra	L5321
3042  002b               L3321:
3043                     ; 787     UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
3045  002b 72195237      	bres	21047,#4
3046  002f               L5321:
3047                     ; 789 }
3050  002f 85            	popw	x
3051  0030 81            	ret
3064                     	xdef	_UART1_ClearITPendingBit
3065                     	xdef	_UART1_GetITStatus
3066                     	xdef	_UART1_ClearFlag
3067                     	xdef	_UART1_GetFlagStatus
3068                     	xdef	_UART1_SetPrescaler
3069                     	xdef	_UART1_SetGuardTime
3070                     	xdef	_UART1_SetAddress
3071                     	xdef	_UART1_SendBreak
3072                     	xdef	_UART1_SendData9
3073                     	xdef	_UART1_SendData8
3074                     	xdef	_UART1_ReceiveData9
3075                     	xdef	_UART1_ReceiveData8
3076                     	xdef	_UART1_ReceiverWakeUpCmd
3077                     	xdef	_UART1_WakeUpConfig
3078                     	xdef	_UART1_SmartCardNACKCmd
3079                     	xdef	_UART1_SmartCardCmd
3080                     	xdef	_UART1_LINCmd
3081                     	xdef	_UART1_LINBreakDetectionConfig
3082                     	xdef	_UART1_IrDACmd
3083                     	xdef	_UART1_IrDAConfig
3084                     	xdef	_UART1_HalfDuplexCmd
3085                     	xdef	_UART1_ITConfig
3086                     	xdef	_UART1_Cmd
3087                     	xdef	_UART1_Init
3088                     	xdef	_UART1_DeInit
3089                     	xref	_assert_failed
3090                     	xref	_CLK_GetClockFreq
3091                     	switch	.const
3092  0008               L371:
3093  0008 2e2e5c6c6962  	dc.b	"..\libs\src\stm8s_"
3094  001a 75617274312e  	dc.b	"uart1.c",0
3095                     	xref.b	c_lreg
3096                     	xref.b	c_x
3116                     	xref	c_lursh
3117                     	xref	c_lsub
3118                     	xref	c_smul
3119                     	xref	c_ludv
3120                     	xref	c_rtol
3121                     	xref	c_llsh
3122                     	xref	c_lcmp
3123                     	xref	c_ltor
3124                     	end
