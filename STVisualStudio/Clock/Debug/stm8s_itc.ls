   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
  43                     ; 50 uint8_t ITC_GetCPUCC(void)
  43                     ; 51 {
  45                     	switch	.text
  46  0000               _ITC_GetCPUCC:
  50                     ; 53   _asm("push cc");
  53  0000 8a            push cc
  55                     ; 54   _asm("pop a");
  58  0001 84            pop a
  60                     ; 55   return; /* Ignore compiler warning, the returned value is in A register */
  63  0002 81            	ret
  86                     ; 80 void ITC_DeInit(void)
  86                     ; 81 {
  87                     	switch	.text
  88  0003               _ITC_DeInit:
  92                     ; 82   ITC->ISPR1 = ITC_SPRX_RESET_VALUE;
  94  0003 35ff7f70      	mov	32624,#255
  95                     ; 83   ITC->ISPR2 = ITC_SPRX_RESET_VALUE;
  97  0007 35ff7f71      	mov	32625,#255
  98                     ; 84   ITC->ISPR3 = ITC_SPRX_RESET_VALUE;
 100  000b 35ff7f72      	mov	32626,#255
 101                     ; 85   ITC->ISPR4 = ITC_SPRX_RESET_VALUE;
 103  000f 35ff7f73      	mov	32627,#255
 104                     ; 86   ITC->ISPR5 = ITC_SPRX_RESET_VALUE;
 106  0013 35ff7f74      	mov	32628,#255
 107                     ; 87   ITC->ISPR6 = ITC_SPRX_RESET_VALUE;
 109  0017 35ff7f75      	mov	32629,#255
 110                     ; 88   ITC->ISPR7 = ITC_SPRX_RESET_VALUE;
 112  001b 35ff7f76      	mov	32630,#255
 113                     ; 89   ITC->ISPR8 = ITC_SPRX_RESET_VALUE;
 115  001f 35ff7f77      	mov	32631,#255
 116                     ; 90 }
 119  0023 81            	ret
 144                     ; 97 uint8_t ITC_GetSoftIntStatus(void)
 144                     ; 98 {
 145                     	switch	.text
 146  0024               _ITC_GetSoftIntStatus:
 150                     ; 99   return (uint8_t)(ITC_GetCPUCC() & CPU_CC_I1I0);
 152  0024 adda          	call	_ITC_GetCPUCC
 154  0026 a428          	and	a,#40
 157  0028 81            	ret
 407                     .const:	section	.text
 408  0000               L62:
 409  0000 0065          	dc.w	L14
 410  0002 0065          	dc.w	L14
 411  0004 0065          	dc.w	L14
 412  0006 0065          	dc.w	L14
 413  0008 006e          	dc.w	L34
 414  000a 006e          	dc.w	L34
 415  000c 006e          	dc.w	L34
 416  000e 006e          	dc.w	L34
 417  0010 00a2          	dc.w	L502
 418  0012 00a2          	dc.w	L502
 419  0014 0077          	dc.w	L54
 420  0016 0077          	dc.w	L54
 421  0018 0080          	dc.w	L74
 422  001a 0080          	dc.w	L74
 423  001c 0080          	dc.w	L74
 424  001e 0080          	dc.w	L74
 425  0020 0089          	dc.w	L15
 426  0022 0089          	dc.w	L15
 427  0024 0089          	dc.w	L15
 428  0026 0089          	dc.w	L15
 429  0028 00a2          	dc.w	L502
 430  002a 00a2          	dc.w	L502
 431  002c 0092          	dc.w	L35
 432  002e 0092          	dc.w	L35
 433  0030 009b          	dc.w	L55
 434                     ; 107 ITC_PriorityLevel_TypeDef ITC_GetSoftwarePriority(ITC_Irq_TypeDef IrqNum)
 434                     ; 108 {
 435                     	switch	.text
 436  0029               _ITC_GetSoftwarePriority:
 438  0029 88            	push	a
 439  002a 89            	pushw	x
 440       00000002      OFST:	set	2
 443                     ; 109   uint8_t Value = 0;
 445  002b 0f02          	clr	(OFST+0,sp)
 447                     ; 110   uint8_t Mask = 0;
 449                     ; 113   assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
 451  002d a119          	cp	a,#25
 452  002f 2403          	jruge	L41
 453  0031 4f            	clr	a
 454  0032 2010          	jra	L61
 455  0034               L41:
 456  0034 ae0071        	ldw	x,#113
 457  0037 89            	pushw	x
 458  0038 ae0000        	ldw	x,#0
 459  003b 89            	pushw	x
 460  003c ae0064        	ldw	x,#L102
 461  003f cd0000        	call	_assert_failed
 463  0042 5b04          	addw	sp,#4
 464  0044               L61:
 465                     ; 116   Mask = (uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U));
 467  0044 7b03          	ld	a,(OFST+1,sp)
 468  0046 a403          	and	a,#3
 469  0048 48            	sll	a
 470  0049 5f            	clrw	x
 471  004a 97            	ld	xl,a
 472  004b a603          	ld	a,#3
 473  004d 5d            	tnzw	x
 474  004e 2704          	jreq	L02
 475  0050               L22:
 476  0050 48            	sll	a
 477  0051 5a            	decw	x
 478  0052 26fc          	jrne	L22
 479  0054               L02:
 480  0054 6b01          	ld	(OFST-1,sp),a
 482                     ; 118   switch (IrqNum)
 484  0056 7b03          	ld	a,(OFST+1,sp)
 486                     ; 198   default:
 486                     ; 199     break;
 487  0058 a119          	cp	a,#25
 488  005a 2407          	jruge	L42
 489  005c 5f            	clrw	x
 490  005d 97            	ld	xl,a
 491  005e 58            	sllw	x
 492  005f de0000        	ldw	x,(L62,x)
 493  0062 fc            	jp	(x)
 494  0063               L42:
 495  0063 203d          	jra	L502
 496  0065               L14:
 497                     ; 120   case ITC_IRQ_TLI: /* TLI software priority can be read but has no meaning */
 497                     ; 121   case ITC_IRQ_AWU:
 497                     ; 122   case ITC_IRQ_CLK:
 497                     ; 123   case ITC_IRQ_PORTA:
 497                     ; 124     Value = (uint8_t)(ITC->ISPR1 & Mask); /* Read software priority */
 499  0065 c67f70        	ld	a,32624
 500  0068 1401          	and	a,(OFST-1,sp)
 501  006a 6b02          	ld	(OFST+0,sp),a
 503                     ; 125     break;
 505  006c 2034          	jra	L502
 506  006e               L34:
 507                     ; 127   case ITC_IRQ_PORTB:
 507                     ; 128   case ITC_IRQ_PORTC:
 507                     ; 129   case ITC_IRQ_PORTD:
 507                     ; 130   case ITC_IRQ_PORTE:
 507                     ; 131     Value = (uint8_t)(ITC->ISPR2 & Mask); /* Read software priority */
 509  006e c67f71        	ld	a,32625
 510  0071 1401          	and	a,(OFST-1,sp)
 511  0073 6b02          	ld	(OFST+0,sp),a
 513                     ; 132     break;
 515  0075 202b          	jra	L502
 516  0077               L54:
 517                     ; 141   case ITC_IRQ_SPI:
 517                     ; 142   case ITC_IRQ_TIM1_OVF:
 517                     ; 143     Value = (uint8_t)(ITC->ISPR3 & Mask); /* Read software priority */
 519  0077 c67f72        	ld	a,32626
 520  007a 1401          	and	a,(OFST-1,sp)
 521  007c 6b02          	ld	(OFST+0,sp),a
 523                     ; 144     break;
 525  007e 2022          	jra	L502
 526  0080               L74:
 527                     ; 146   case ITC_IRQ_TIM1_CAPCOM:
 527                     ; 147 #if defined (STM8S903) || defined (STM8AF622x)
 527                     ; 148   case ITC_IRQ_TIM5_OVFTRI:
 527                     ; 149   case ITC_IRQ_TIM5_CAPCOM:
 527                     ; 150 #else
 527                     ; 151   case ITC_IRQ_TIM2_OVF:
 527                     ; 152   case ITC_IRQ_TIM2_CAPCOM:
 527                     ; 153 #endif /* STM8S903 or STM8AF622x*/
 527                     ; 154   case ITC_IRQ_TIM3_OVF:
 527                     ; 155     Value = (uint8_t)(ITC->ISPR4 & Mask); /* Read software priority */
 529  0080 c67f73        	ld	a,32627
 530  0083 1401          	and	a,(OFST-1,sp)
 531  0085 6b02          	ld	(OFST+0,sp),a
 533                     ; 156     break;
 535  0087 2019          	jra	L502
 536  0089               L15:
 537                     ; 158   case ITC_IRQ_TIM3_CAPCOM:
 537                     ; 159 #if defined(STM8S208) ||defined(STM8S207) || defined (STM8S007) || defined(STM8S103) || \
 537                     ; 160     defined(STM8S003) ||defined(STM8S903) || defined (STM8AF52Ax) || defined (STM8AF62Ax)
 537                     ; 161   case ITC_IRQ_UART1_TX:
 537                     ; 162   case ITC_IRQ_UART1_RX:
 537                     ; 163 #endif /*STM8S208 or STM8S207 or STM8S007 or STM8S103 or STM8S003 or STM8S903 or STM8AF52Ax or STM8AF62Ax */ 
 537                     ; 164 #if defined(STM8AF622x)
 537                     ; 165   case ITC_IRQ_UART4_TX:
 537                     ; 166   case ITC_IRQ_UART4_RX:
 537                     ; 167 #endif /*STM8AF622x */
 537                     ; 168   case ITC_IRQ_I2C:
 537                     ; 169     Value = (uint8_t)(ITC->ISPR5 & Mask); /* Read software priority */
 539  0089 c67f74        	ld	a,32628
 540  008c 1401          	and	a,(OFST-1,sp)
 541  008e 6b02          	ld	(OFST+0,sp),a
 543                     ; 170     break;
 545  0090 2010          	jra	L502
 546  0092               L35:
 547                     ; 184   case ITC_IRQ_ADC1:
 547                     ; 185 #endif /*STM8S105, STM8S005, STM8S103 or STM8S003 or STM8S903 or STM8AF626x or STM8AF622x */
 547                     ; 186 #if defined (STM8S903) || defined (STM8AF622x)
 547                     ; 187   case ITC_IRQ_TIM6_OVFTRI:
 547                     ; 188 #else
 547                     ; 189   case ITC_IRQ_TIM4_OVF:
 547                     ; 190 #endif /*STM8S903 or STM8AF622x */
 547                     ; 191     Value = (uint8_t)(ITC->ISPR6 & Mask); /* Read software priority */
 549  0092 c67f75        	ld	a,32629
 550  0095 1401          	and	a,(OFST-1,sp)
 551  0097 6b02          	ld	(OFST+0,sp),a
 553                     ; 192     break;
 555  0099 2007          	jra	L502
 556  009b               L55:
 557                     ; 194   case ITC_IRQ_EEPROM_EEC:
 557                     ; 195     Value = (uint8_t)(ITC->ISPR7 & Mask); /* Read software priority */
 559  009b c67f76        	ld	a,32630
 560  009e 1401          	and	a,(OFST-1,sp)
 561  00a0 6b02          	ld	(OFST+0,sp),a
 563                     ; 196     break;
 565  00a2               L75:
 566                     ; 198   default:
 566                     ; 199     break;
 568  00a2               L502:
 569                     ; 202   Value >>= (uint8_t)(((uint8_t)IrqNum % 4u) * 2u);
 571  00a2 7b03          	ld	a,(OFST+1,sp)
 572  00a4 a403          	and	a,#3
 573  00a6 48            	sll	a
 574  00a7 5f            	clrw	x
 575  00a8 97            	ld	xl,a
 576  00a9 7b02          	ld	a,(OFST+0,sp)
 577  00ab 5d            	tnzw	x
 578  00ac 2704          	jreq	L03
 579  00ae               L23:
 580  00ae 44            	srl	a
 581  00af 5a            	decw	x
 582  00b0 26fc          	jrne	L23
 583  00b2               L03:
 584  00b2 6b02          	ld	(OFST+0,sp),a
 586                     ; 204   return((ITC_PriorityLevel_TypeDef)Value);
 588  00b4 7b02          	ld	a,(OFST+0,sp)
 591  00b6 5b03          	addw	sp,#3
 592  00b8 81            	ret
 658                     	switch	.const
 659  0032               L66:
 660  0032 014a          	dc.w	L702
 661  0034 014a          	dc.w	L702
 662  0036 014a          	dc.w	L702
 663  0038 014a          	dc.w	L702
 664  003a 015c          	dc.w	L112
 665  003c 015c          	dc.w	L112
 666  003e 015c          	dc.w	L112
 667  0040 015c          	dc.w	L112
 668  0042 01c6          	dc.w	L362
 669  0044 01c6          	dc.w	L362
 670  0046 016e          	dc.w	L312
 671  0048 016e          	dc.w	L312
 672  004a 0180          	dc.w	L512
 673  004c 0180          	dc.w	L512
 674  004e 0180          	dc.w	L512
 675  0050 0180          	dc.w	L512
 676  0052 0192          	dc.w	L712
 677  0054 0192          	dc.w	L712
 678  0056 0192          	dc.w	L712
 679  0058 0192          	dc.w	L712
 680  005a 01c6          	dc.w	L362
 681  005c 01c6          	dc.w	L362
 682  005e 01a4          	dc.w	L122
 683  0060 01a4          	dc.w	L122
 684  0062 01b6          	dc.w	L322
 685                     ; 220 void ITC_SetSoftwarePriority(ITC_Irq_TypeDef IrqNum, ITC_PriorityLevel_TypeDef PriorityValue)
 685                     ; 221 {
 686                     	switch	.text
 687  00b9               _ITC_SetSoftwarePriority:
 689  00b9 89            	pushw	x
 690  00ba 89            	pushw	x
 691       00000002      OFST:	set	2
 694                     ; 222   uint8_t Mask = 0;
 696                     ; 223   uint8_t NewPriority = 0;
 698                     ; 226   assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
 700  00bb 9e            	ld	a,xh
 701  00bc a119          	cp	a,#25
 702  00be 2403          	jruge	L63
 703  00c0 4f            	clr	a
 704  00c1 2010          	jra	L04
 705  00c3               L63:
 706  00c3 ae00e2        	ldw	x,#226
 707  00c6 89            	pushw	x
 708  00c7 ae0000        	ldw	x,#0
 709  00ca 89            	pushw	x
 710  00cb ae0064        	ldw	x,#L102
 711  00ce cd0000        	call	_assert_failed
 713  00d1 5b04          	addw	sp,#4
 714  00d3               L04:
 715                     ; 227   assert_param(IS_ITC_PRIORITY_OK(PriorityValue));
 717  00d3 7b04          	ld	a,(OFST+2,sp)
 718  00d5 a102          	cp	a,#2
 719  00d7 2710          	jreq	L44
 720  00d9 7b04          	ld	a,(OFST+2,sp)
 721  00db a101          	cp	a,#1
 722  00dd 270a          	jreq	L44
 723  00df 0d04          	tnz	(OFST+2,sp)
 724  00e1 2706          	jreq	L44
 725  00e3 7b04          	ld	a,(OFST+2,sp)
 726  00e5 a103          	cp	a,#3
 727  00e7 2603          	jrne	L24
 728  00e9               L44:
 729  00e9 4f            	clr	a
 730  00ea 2010          	jra	L64
 731  00ec               L24:
 732  00ec ae00e3        	ldw	x,#227
 733  00ef 89            	pushw	x
 734  00f0 ae0000        	ldw	x,#0
 735  00f3 89            	pushw	x
 736  00f4 ae0064        	ldw	x,#L102
 737  00f7 cd0000        	call	_assert_failed
 739  00fa 5b04          	addw	sp,#4
 740  00fc               L64:
 741                     ; 230   assert_param(IS_ITC_INTERRUPTS_DISABLED);
 743  00fc cd0024        	call	_ITC_GetSoftIntStatus
 745  00ff a128          	cp	a,#40
 746  0101 2603          	jrne	L05
 747  0103 4f            	clr	a
 748  0104 2010          	jra	L25
 749  0106               L05:
 750  0106 ae00e6        	ldw	x,#230
 751  0109 89            	pushw	x
 752  010a ae0000        	ldw	x,#0
 753  010d 89            	pushw	x
 754  010e ae0064        	ldw	x,#L102
 755  0111 cd0000        	call	_assert_failed
 757  0114 5b04          	addw	sp,#4
 758  0116               L25:
 759                     ; 234   Mask = (uint8_t)(~(uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U)));
 761  0116 7b03          	ld	a,(OFST+1,sp)
 762  0118 a403          	and	a,#3
 763  011a 48            	sll	a
 764  011b 5f            	clrw	x
 765  011c 97            	ld	xl,a
 766  011d a603          	ld	a,#3
 767  011f 5d            	tnzw	x
 768  0120 2704          	jreq	L45
 769  0122               L65:
 770  0122 48            	sll	a
 771  0123 5a            	decw	x
 772  0124 26fc          	jrne	L65
 773  0126               L45:
 774  0126 43            	cpl	a
 775  0127 6b01          	ld	(OFST-1,sp),a
 777                     ; 237   NewPriority = (uint8_t)((uint8_t)(PriorityValue) << (((uint8_t)IrqNum % 4U) * 2U));
 779  0129 7b03          	ld	a,(OFST+1,sp)
 780  012b a403          	and	a,#3
 781  012d 48            	sll	a
 782  012e 5f            	clrw	x
 783  012f 97            	ld	xl,a
 784  0130 7b04          	ld	a,(OFST+2,sp)
 785  0132 5d            	tnzw	x
 786  0133 2704          	jreq	L06
 787  0135               L26:
 788  0135 48            	sll	a
 789  0136 5a            	decw	x
 790  0137 26fc          	jrne	L26
 791  0139               L06:
 792  0139 6b02          	ld	(OFST+0,sp),a
 794                     ; 239   switch (IrqNum)
 796  013b 7b03          	ld	a,(OFST+1,sp)
 798                     ; 329   default:
 798                     ; 330     break;
 799  013d a119          	cp	a,#25
 800  013f 2407          	jruge	L46
 801  0141 5f            	clrw	x
 802  0142 97            	ld	xl,a
 803  0143 58            	sllw	x
 804  0144 de0032        	ldw	x,(L66,x)
 805  0147 fc            	jp	(x)
 806  0148               L46:
 807  0148 207c          	jra	L362
 808  014a               L702:
 809                     ; 241   case ITC_IRQ_TLI: /* TLI software priority can be written but has no meaning */
 809                     ; 242   case ITC_IRQ_AWU:
 809                     ; 243   case ITC_IRQ_CLK:
 809                     ; 244   case ITC_IRQ_PORTA:
 809                     ; 245     ITC->ISPR1 &= Mask;
 811  014a c67f70        	ld	a,32624
 812  014d 1401          	and	a,(OFST-1,sp)
 813  014f c77f70        	ld	32624,a
 814                     ; 246     ITC->ISPR1 |= NewPriority;
 816  0152 c67f70        	ld	a,32624
 817  0155 1a02          	or	a,(OFST+0,sp)
 818  0157 c77f70        	ld	32624,a
 819                     ; 247     break;
 821  015a 206a          	jra	L362
 822  015c               L112:
 823                     ; 249   case ITC_IRQ_PORTB:
 823                     ; 250   case ITC_IRQ_PORTC:
 823                     ; 251   case ITC_IRQ_PORTD:
 823                     ; 252   case ITC_IRQ_PORTE:
 823                     ; 253     ITC->ISPR2 &= Mask;
 825  015c c67f71        	ld	a,32625
 826  015f 1401          	and	a,(OFST-1,sp)
 827  0161 c77f71        	ld	32625,a
 828                     ; 254     ITC->ISPR2 |= NewPriority;
 830  0164 c67f71        	ld	a,32625
 831  0167 1a02          	or	a,(OFST+0,sp)
 832  0169 c77f71        	ld	32625,a
 833                     ; 255     break;
 835  016c 2058          	jra	L362
 836  016e               L312:
 837                     ; 264   case ITC_IRQ_SPI:
 837                     ; 265   case ITC_IRQ_TIM1_OVF:
 837                     ; 266     ITC->ISPR3 &= Mask;
 839  016e c67f72        	ld	a,32626
 840  0171 1401          	and	a,(OFST-1,sp)
 841  0173 c77f72        	ld	32626,a
 842                     ; 267     ITC->ISPR3 |= NewPriority;
 844  0176 c67f72        	ld	a,32626
 845  0179 1a02          	or	a,(OFST+0,sp)
 846  017b c77f72        	ld	32626,a
 847                     ; 268     break;
 849  017e 2046          	jra	L362
 850  0180               L512:
 851                     ; 270   case ITC_IRQ_TIM1_CAPCOM:
 851                     ; 271 #if defined(STM8S903) || defined(STM8AF622x) 
 851                     ; 272   case ITC_IRQ_TIM5_OVFTRI:
 851                     ; 273   case ITC_IRQ_TIM5_CAPCOM:
 851                     ; 274 #else
 851                     ; 275   case ITC_IRQ_TIM2_OVF:
 851                     ; 276   case ITC_IRQ_TIM2_CAPCOM:
 851                     ; 277 #endif /*STM8S903 or STM8AF622x */
 851                     ; 278   case ITC_IRQ_TIM3_OVF:
 851                     ; 279     ITC->ISPR4 &= Mask;
 853  0180 c67f73        	ld	a,32627
 854  0183 1401          	and	a,(OFST-1,sp)
 855  0185 c77f73        	ld	32627,a
 856                     ; 280     ITC->ISPR4 |= NewPriority;
 858  0188 c67f73        	ld	a,32627
 859  018b 1a02          	or	a,(OFST+0,sp)
 860  018d c77f73        	ld	32627,a
 861                     ; 281     break;
 863  0190 2034          	jra	L362
 864  0192               L712:
 865                     ; 283   case ITC_IRQ_TIM3_CAPCOM:
 865                     ; 284 #if defined(STM8S208) ||defined(STM8S207) || defined (STM8S007) || defined(STM8S103) || \
 865                     ; 285     defined(STM8S003) ||defined(STM8S903) || defined (STM8AF52Ax) || defined (STM8AF62Ax)
 865                     ; 286   case ITC_IRQ_UART1_TX:
 865                     ; 287   case ITC_IRQ_UART1_RX:
 865                     ; 288 #endif /*STM8S208 or STM8S207 or STM8S007 or STM8S103 or STM8S003 or STM8S903 or STM8AF52Ax or STM8AF62Ax */ 
 865                     ; 289 #if defined(STM8AF622x)
 865                     ; 290   case ITC_IRQ_UART4_TX:
 865                     ; 291   case ITC_IRQ_UART4_RX:
 865                     ; 292 #endif /*STM8AF622x */
 865                     ; 293   case ITC_IRQ_I2C:
 865                     ; 294     ITC->ISPR5 &= Mask;
 867  0192 c67f74        	ld	a,32628
 868  0195 1401          	and	a,(OFST-1,sp)
 869  0197 c77f74        	ld	32628,a
 870                     ; 295     ITC->ISPR5 |= NewPriority;
 872  019a c67f74        	ld	a,32628
 873  019d 1a02          	or	a,(OFST+0,sp)
 874  019f c77f74        	ld	32628,a
 875                     ; 296     break;
 877  01a2 2022          	jra	L362
 878  01a4               L122:
 879                     ; 312   case ITC_IRQ_ADC1:
 879                     ; 313 #endif /*STM8S105, STM8S005, STM8S103 or STM8S003 or STM8S903 or STM8AF626x or STM8AF622x */
 879                     ; 314     
 879                     ; 315 #if defined (STM8S903) || defined (STM8AF622x)
 879                     ; 316   case ITC_IRQ_TIM6_OVFTRI:
 879                     ; 317 #else
 879                     ; 318   case ITC_IRQ_TIM4_OVF:
 879                     ; 319 #endif /* STM8S903 or STM8AF622x */
 879                     ; 320     ITC->ISPR6 &= Mask;
 881  01a4 c67f75        	ld	a,32629
 882  01a7 1401          	and	a,(OFST-1,sp)
 883  01a9 c77f75        	ld	32629,a
 884                     ; 321     ITC->ISPR6 |= NewPriority;
 886  01ac c67f75        	ld	a,32629
 887  01af 1a02          	or	a,(OFST+0,sp)
 888  01b1 c77f75        	ld	32629,a
 889                     ; 322     break;
 891  01b4 2010          	jra	L362
 892  01b6               L322:
 893                     ; 324   case ITC_IRQ_EEPROM_EEC:
 893                     ; 325     ITC->ISPR7 &= Mask;
 895  01b6 c67f76        	ld	a,32630
 896  01b9 1401          	and	a,(OFST-1,sp)
 897  01bb c77f76        	ld	32630,a
 898                     ; 326     ITC->ISPR7 |= NewPriority;
 900  01be c67f76        	ld	a,32630
 901  01c1 1a02          	or	a,(OFST+0,sp)
 902  01c3 c77f76        	ld	32630,a
 903                     ; 327     break;
 905  01c6               L522:
 906                     ; 329   default:
 906                     ; 330     break;
 908  01c6               L362:
 909                     ; 332 }
 912  01c6 5b04          	addw	sp,#4
 913  01c8 81            	ret
 926                     	xdef	_ITC_GetSoftwarePriority
 927                     	xdef	_ITC_SetSoftwarePriority
 928                     	xdef	_ITC_GetSoftIntStatus
 929                     	xdef	_ITC_DeInit
 930                     	xdef	_ITC_GetCPUCC
 931                     	xref	_assert_failed
 932                     	switch	.const
 933  0064               L102:
 934  0064 2e2e5c6c6962  	dc.b	"..\libs\src\stm8s_"
 935  0076 6974632e6300  	dc.b	"itc.c",0
 955                     	end
