   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
  44                     ; 50 uint8_t ITC_GetCPUCC(void)
  44                     ; 51 {
  46                     .text:	section	.text,new
  47  0000               _ITC_GetCPUCC:
  51                     ; 53   _asm("push cc");
  54  0000 8a            push cc
  56                     ; 54   _asm("pop a");
  59  0001 84            pop a
  61                     ; 55   return; /* Ignore compiler warning, the returned value is in A register */
  64  0002 81            	ret
  87                     ; 80 void ITC_DeInit(void)
  87                     ; 81 {
  88                     .text:	section	.text,new
  89  0000               _ITC_DeInit:
  93                     ; 82   ITC->ISPR1 = ITC_SPRX_RESET_VALUE;
  95  0000 35ff7f70      	mov	32624,#255
  96                     ; 83   ITC->ISPR2 = ITC_SPRX_RESET_VALUE;
  98  0004 35ff7f71      	mov	32625,#255
  99                     ; 84   ITC->ISPR3 = ITC_SPRX_RESET_VALUE;
 101  0008 35ff7f72      	mov	32626,#255
 102                     ; 85   ITC->ISPR4 = ITC_SPRX_RESET_VALUE;
 104  000c 35ff7f73      	mov	32627,#255
 105                     ; 86   ITC->ISPR5 = ITC_SPRX_RESET_VALUE;
 107  0010 35ff7f74      	mov	32628,#255
 108                     ; 87   ITC->ISPR6 = ITC_SPRX_RESET_VALUE;
 110  0014 35ff7f75      	mov	32629,#255
 111                     ; 88   ITC->ISPR7 = ITC_SPRX_RESET_VALUE;
 113  0018 35ff7f76      	mov	32630,#255
 114                     ; 89   ITC->ISPR8 = ITC_SPRX_RESET_VALUE;
 116  001c 35ff7f77      	mov	32631,#255
 117                     ; 90 }
 120  0020 81            	ret
 145                     ; 97 uint8_t ITC_GetSoftIntStatus(void)
 145                     ; 98 {
 146                     .text:	section	.text,new
 147  0000               _ITC_GetSoftIntStatus:
 151                     ; 99   return (uint8_t)(ITC_GetCPUCC() & CPU_CC_I1I0);
 153  0000 cd0000        	call	_ITC_GetCPUCC
 155  0003 a428          	and	a,#40
 158  0005 81            	ret
 408                     .const:	section	.text
 409  0000               L62:
 410  0000 003c          	dc.w	L14
 411  0002 003c          	dc.w	L14
 412  0004 003c          	dc.w	L14
 413  0006 003c          	dc.w	L14
 414  0008 0045          	dc.w	L34
 415  000a 0045          	dc.w	L34
 416  000c 0045          	dc.w	L34
 417  000e 0045          	dc.w	L34
 418  0010 0079          	dc.w	L502
 419  0012 0079          	dc.w	L502
 420  0014 004e          	dc.w	L54
 421  0016 004e          	dc.w	L54
 422  0018 0057          	dc.w	L74
 423  001a 0057          	dc.w	L74
 424  001c 0057          	dc.w	L74
 425  001e 0057          	dc.w	L74
 426  0020 0060          	dc.w	L15
 427  0022 0060          	dc.w	L15
 428  0024 0060          	dc.w	L15
 429  0026 0060          	dc.w	L15
 430  0028 0079          	dc.w	L502
 431  002a 0079          	dc.w	L502
 432  002c 0069          	dc.w	L35
 433  002e 0069          	dc.w	L35
 434  0030 0072          	dc.w	L55
 435                     ; 107 ITC_PriorityLevel_TypeDef ITC_GetSoftwarePriority(ITC_Irq_TypeDef IrqNum)
 435                     ; 108 {
 436                     .text:	section	.text,new
 437  0000               _ITC_GetSoftwarePriority:
 439  0000 88            	push	a
 440  0001 89            	pushw	x
 441       00000002      OFST:	set	2
 444                     ; 109   uint8_t Value = 0;
 446  0002 0f02          	clr	(OFST+0,sp)
 448                     ; 110   uint8_t Mask = 0;
 450                     ; 113   assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
 452  0004 a119          	cp	a,#25
 453  0006 2403          	jruge	L41
 454  0008 4f            	clr	a
 455  0009 2010          	jra	L61
 456  000b               L41:
 457  000b ae0071        	ldw	x,#113
 458  000e 89            	pushw	x
 459  000f ae0000        	ldw	x,#0
 460  0012 89            	pushw	x
 461  0013 ae0064        	ldw	x,#L102
 462  0016 cd0000        	call	_assert_failed
 464  0019 5b04          	addw	sp,#4
 465  001b               L61:
 466                     ; 116   Mask = (uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U));
 468  001b 7b03          	ld	a,(OFST+1,sp)
 469  001d a403          	and	a,#3
 470  001f 48            	sll	a
 471  0020 5f            	clrw	x
 472  0021 97            	ld	xl,a
 473  0022 a603          	ld	a,#3
 474  0024 5d            	tnzw	x
 475  0025 2704          	jreq	L02
 476  0027               L22:
 477  0027 48            	sll	a
 478  0028 5a            	decw	x
 479  0029 26fc          	jrne	L22
 480  002b               L02:
 481  002b 6b01          	ld	(OFST-1,sp),a
 483                     ; 118   switch (IrqNum)
 485  002d 7b03          	ld	a,(OFST+1,sp)
 487                     ; 198   default:
 487                     ; 199     break;
 488  002f a119          	cp	a,#25
 489  0031 2407          	jruge	L42
 490  0033 5f            	clrw	x
 491  0034 97            	ld	xl,a
 492  0035 58            	sllw	x
 493  0036 de0000        	ldw	x,(L62,x)
 494  0039 fc            	jp	(x)
 495  003a               L42:
 496  003a 203d          	jra	L502
 497  003c               L14:
 498                     ; 120   case ITC_IRQ_TLI: /* TLI software priority can be read but has no meaning */
 498                     ; 121   case ITC_IRQ_AWU:
 498                     ; 122   case ITC_IRQ_CLK:
 498                     ; 123   case ITC_IRQ_PORTA:
 498                     ; 124     Value = (uint8_t)(ITC->ISPR1 & Mask); /* Read software priority */
 500  003c c67f70        	ld	a,32624
 501  003f 1401          	and	a,(OFST-1,sp)
 502  0041 6b02          	ld	(OFST+0,sp),a
 504                     ; 125     break;
 506  0043 2034          	jra	L502
 507  0045               L34:
 508                     ; 127   case ITC_IRQ_PORTB:
 508                     ; 128   case ITC_IRQ_PORTC:
 508                     ; 129   case ITC_IRQ_PORTD:
 508                     ; 130   case ITC_IRQ_PORTE:
 508                     ; 131     Value = (uint8_t)(ITC->ISPR2 & Mask); /* Read software priority */
 510  0045 c67f71        	ld	a,32625
 511  0048 1401          	and	a,(OFST-1,sp)
 512  004a 6b02          	ld	(OFST+0,sp),a
 514                     ; 132     break;
 516  004c 202b          	jra	L502
 517  004e               L54:
 518                     ; 141   case ITC_IRQ_SPI:
 518                     ; 142   case ITC_IRQ_TIM1_OVF:
 518                     ; 143     Value = (uint8_t)(ITC->ISPR3 & Mask); /* Read software priority */
 520  004e c67f72        	ld	a,32626
 521  0051 1401          	and	a,(OFST-1,sp)
 522  0053 6b02          	ld	(OFST+0,sp),a
 524                     ; 144     break;
 526  0055 2022          	jra	L502
 527  0057               L74:
 528                     ; 146   case ITC_IRQ_TIM1_CAPCOM:
 528                     ; 147 #if defined (STM8S903) || defined (STM8AF622x)
 528                     ; 148   case ITC_IRQ_TIM5_OVFTRI:
 528                     ; 149   case ITC_IRQ_TIM5_CAPCOM:
 528                     ; 150 #else
 528                     ; 151   case ITC_IRQ_TIM2_OVF:
 528                     ; 152   case ITC_IRQ_TIM2_CAPCOM:
 528                     ; 153 #endif /* STM8S903 or STM8AF622x*/
 528                     ; 154   case ITC_IRQ_TIM3_OVF:
 528                     ; 155     Value = (uint8_t)(ITC->ISPR4 & Mask); /* Read software priority */
 530  0057 c67f73        	ld	a,32627
 531  005a 1401          	and	a,(OFST-1,sp)
 532  005c 6b02          	ld	(OFST+0,sp),a
 534                     ; 156     break;
 536  005e 2019          	jra	L502
 537  0060               L15:
 538                     ; 158   case ITC_IRQ_TIM3_CAPCOM:
 538                     ; 159 #if defined(STM8S208) ||defined(STM8S207) || defined (STM8S007) || defined(STM8S103) || \
 538                     ; 160     defined(STM8S003) ||defined(STM8S903) || defined (STM8AF52Ax) || defined (STM8AF62Ax)
 538                     ; 161   case ITC_IRQ_UART1_TX:
 538                     ; 162   case ITC_IRQ_UART1_RX:
 538                     ; 163 #endif /*STM8S208 or STM8S207 or STM8S007 or STM8S103 or STM8S003 or STM8S903 or STM8AF52Ax or STM8AF62Ax */ 
 538                     ; 164 #if defined(STM8AF622x)
 538                     ; 165   case ITC_IRQ_UART4_TX:
 538                     ; 166   case ITC_IRQ_UART4_RX:
 538                     ; 167 #endif /*STM8AF622x */
 538                     ; 168   case ITC_IRQ_I2C:
 538                     ; 169     Value = (uint8_t)(ITC->ISPR5 & Mask); /* Read software priority */
 540  0060 c67f74        	ld	a,32628
 541  0063 1401          	and	a,(OFST-1,sp)
 542  0065 6b02          	ld	(OFST+0,sp),a
 544                     ; 170     break;
 546  0067 2010          	jra	L502
 547  0069               L35:
 548                     ; 184   case ITC_IRQ_ADC1:
 548                     ; 185 #endif /*STM8S105, STM8S005, STM8S103 or STM8S003 or STM8S903 or STM8AF626x or STM8AF622x */
 548                     ; 186 #if defined (STM8S903) || defined (STM8AF622x)
 548                     ; 187   case ITC_IRQ_TIM6_OVFTRI:
 548                     ; 188 #else
 548                     ; 189   case ITC_IRQ_TIM4_OVF:
 548                     ; 190 #endif /*STM8S903 or STM8AF622x */
 548                     ; 191     Value = (uint8_t)(ITC->ISPR6 & Mask); /* Read software priority */
 550  0069 c67f75        	ld	a,32629
 551  006c 1401          	and	a,(OFST-1,sp)
 552  006e 6b02          	ld	(OFST+0,sp),a
 554                     ; 192     break;
 556  0070 2007          	jra	L502
 557  0072               L55:
 558                     ; 194   case ITC_IRQ_EEPROM_EEC:
 558                     ; 195     Value = (uint8_t)(ITC->ISPR7 & Mask); /* Read software priority */
 560  0072 c67f76        	ld	a,32630
 561  0075 1401          	and	a,(OFST-1,sp)
 562  0077 6b02          	ld	(OFST+0,sp),a
 564                     ; 196     break;
 566  0079               L75:
 567                     ; 198   default:
 567                     ; 199     break;
 569  0079               L502:
 570                     ; 202   Value >>= (uint8_t)(((uint8_t)IrqNum % 4u) * 2u);
 572  0079 7b03          	ld	a,(OFST+1,sp)
 573  007b a403          	and	a,#3
 574  007d 48            	sll	a
 575  007e 5f            	clrw	x
 576  007f 97            	ld	xl,a
 577  0080 7b02          	ld	a,(OFST+0,sp)
 578  0082 5d            	tnzw	x
 579  0083 2704          	jreq	L03
 580  0085               L23:
 581  0085 44            	srl	a
 582  0086 5a            	decw	x
 583  0087 26fc          	jrne	L23
 584  0089               L03:
 585  0089 6b02          	ld	(OFST+0,sp),a
 587                     ; 204   return((ITC_PriorityLevel_TypeDef)Value);
 589  008b 7b02          	ld	a,(OFST+0,sp)
 592  008d 5b03          	addw	sp,#3
 593  008f 81            	ret
 659                     	switch	.const
 660  0032               L66:
 661  0032 0091          	dc.w	L702
 662  0034 0091          	dc.w	L702
 663  0036 0091          	dc.w	L702
 664  0038 0091          	dc.w	L702
 665  003a 00a3          	dc.w	L112
 666  003c 00a3          	dc.w	L112
 667  003e 00a3          	dc.w	L112
 668  0040 00a3          	dc.w	L112
 669  0042 010d          	dc.w	L362
 670  0044 010d          	dc.w	L362
 671  0046 00b5          	dc.w	L312
 672  0048 00b5          	dc.w	L312
 673  004a 00c7          	dc.w	L512
 674  004c 00c7          	dc.w	L512
 675  004e 00c7          	dc.w	L512
 676  0050 00c7          	dc.w	L512
 677  0052 00d9          	dc.w	L712
 678  0054 00d9          	dc.w	L712
 679  0056 00d9          	dc.w	L712
 680  0058 00d9          	dc.w	L712
 681  005a 010d          	dc.w	L362
 682  005c 010d          	dc.w	L362
 683  005e 00eb          	dc.w	L122
 684  0060 00eb          	dc.w	L122
 685  0062 00fd          	dc.w	L322
 686                     ; 220 void ITC_SetSoftwarePriority(ITC_Irq_TypeDef IrqNum, ITC_PriorityLevel_TypeDef PriorityValue)
 686                     ; 221 {
 687                     .text:	section	.text,new
 688  0000               _ITC_SetSoftwarePriority:
 690  0000 89            	pushw	x
 691  0001 89            	pushw	x
 692       00000002      OFST:	set	2
 695                     ; 222   uint8_t Mask = 0;
 697                     ; 223   uint8_t NewPriority = 0;
 699                     ; 226   assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
 701  0002 9e            	ld	a,xh
 702  0003 a119          	cp	a,#25
 703  0005 2403          	jruge	L63
 704  0007 4f            	clr	a
 705  0008 2010          	jra	L04
 706  000a               L63:
 707  000a ae00e2        	ldw	x,#226
 708  000d 89            	pushw	x
 709  000e ae0000        	ldw	x,#0
 710  0011 89            	pushw	x
 711  0012 ae0064        	ldw	x,#L102
 712  0015 cd0000        	call	_assert_failed
 714  0018 5b04          	addw	sp,#4
 715  001a               L04:
 716                     ; 227   assert_param(IS_ITC_PRIORITY_OK(PriorityValue));
 718  001a 7b04          	ld	a,(OFST+2,sp)
 719  001c a102          	cp	a,#2
 720  001e 2710          	jreq	L44
 721  0020 7b04          	ld	a,(OFST+2,sp)
 722  0022 a101          	cp	a,#1
 723  0024 270a          	jreq	L44
 724  0026 0d04          	tnz	(OFST+2,sp)
 725  0028 2706          	jreq	L44
 726  002a 7b04          	ld	a,(OFST+2,sp)
 727  002c a103          	cp	a,#3
 728  002e 2603          	jrne	L24
 729  0030               L44:
 730  0030 4f            	clr	a
 731  0031 2010          	jra	L64
 732  0033               L24:
 733  0033 ae00e3        	ldw	x,#227
 734  0036 89            	pushw	x
 735  0037 ae0000        	ldw	x,#0
 736  003a 89            	pushw	x
 737  003b ae0064        	ldw	x,#L102
 738  003e cd0000        	call	_assert_failed
 740  0041 5b04          	addw	sp,#4
 741  0043               L64:
 742                     ; 230   assert_param(IS_ITC_INTERRUPTS_DISABLED);
 744  0043 cd0000        	call	_ITC_GetSoftIntStatus
 746  0046 a128          	cp	a,#40
 747  0048 2603          	jrne	L05
 748  004a 4f            	clr	a
 749  004b 2010          	jra	L25
 750  004d               L05:
 751  004d ae00e6        	ldw	x,#230
 752  0050 89            	pushw	x
 753  0051 ae0000        	ldw	x,#0
 754  0054 89            	pushw	x
 755  0055 ae0064        	ldw	x,#L102
 756  0058 cd0000        	call	_assert_failed
 758  005b 5b04          	addw	sp,#4
 759  005d               L25:
 760                     ; 234   Mask = (uint8_t)(~(uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U)));
 762  005d 7b03          	ld	a,(OFST+1,sp)
 763  005f a403          	and	a,#3
 764  0061 48            	sll	a
 765  0062 5f            	clrw	x
 766  0063 97            	ld	xl,a
 767  0064 a603          	ld	a,#3
 768  0066 5d            	tnzw	x
 769  0067 2704          	jreq	L45
 770  0069               L65:
 771  0069 48            	sll	a
 772  006a 5a            	decw	x
 773  006b 26fc          	jrne	L65
 774  006d               L45:
 775  006d 43            	cpl	a
 776  006e 6b01          	ld	(OFST-1,sp),a
 778                     ; 237   NewPriority = (uint8_t)((uint8_t)(PriorityValue) << (((uint8_t)IrqNum % 4U) * 2U));
 780  0070 7b03          	ld	a,(OFST+1,sp)
 781  0072 a403          	and	a,#3
 782  0074 48            	sll	a
 783  0075 5f            	clrw	x
 784  0076 97            	ld	xl,a
 785  0077 7b04          	ld	a,(OFST+2,sp)
 786  0079 5d            	tnzw	x
 787  007a 2704          	jreq	L06
 788  007c               L26:
 789  007c 48            	sll	a
 790  007d 5a            	decw	x
 791  007e 26fc          	jrne	L26
 792  0080               L06:
 793  0080 6b02          	ld	(OFST+0,sp),a
 795                     ; 239   switch (IrqNum)
 797  0082 7b03          	ld	a,(OFST+1,sp)
 799                     ; 329   default:
 799                     ; 330     break;
 800  0084 a119          	cp	a,#25
 801  0086 2407          	jruge	L46
 802  0088 5f            	clrw	x
 803  0089 97            	ld	xl,a
 804  008a 58            	sllw	x
 805  008b de0032        	ldw	x,(L66,x)
 806  008e fc            	jp	(x)
 807  008f               L46:
 808  008f 207c          	jra	L362
 809  0091               L702:
 810                     ; 241   case ITC_IRQ_TLI: /* TLI software priority can be written but has no meaning */
 810                     ; 242   case ITC_IRQ_AWU:
 810                     ; 243   case ITC_IRQ_CLK:
 810                     ; 244   case ITC_IRQ_PORTA:
 810                     ; 245     ITC->ISPR1 &= Mask;
 812  0091 c67f70        	ld	a,32624
 813  0094 1401          	and	a,(OFST-1,sp)
 814  0096 c77f70        	ld	32624,a
 815                     ; 246     ITC->ISPR1 |= NewPriority;
 817  0099 c67f70        	ld	a,32624
 818  009c 1a02          	or	a,(OFST+0,sp)
 819  009e c77f70        	ld	32624,a
 820                     ; 247     break;
 822  00a1 206a          	jra	L362
 823  00a3               L112:
 824                     ; 249   case ITC_IRQ_PORTB:
 824                     ; 250   case ITC_IRQ_PORTC:
 824                     ; 251   case ITC_IRQ_PORTD:
 824                     ; 252   case ITC_IRQ_PORTE:
 824                     ; 253     ITC->ISPR2 &= Mask;
 826  00a3 c67f71        	ld	a,32625
 827  00a6 1401          	and	a,(OFST-1,sp)
 828  00a8 c77f71        	ld	32625,a
 829                     ; 254     ITC->ISPR2 |= NewPriority;
 831  00ab c67f71        	ld	a,32625
 832  00ae 1a02          	or	a,(OFST+0,sp)
 833  00b0 c77f71        	ld	32625,a
 834                     ; 255     break;
 836  00b3 2058          	jra	L362
 837  00b5               L312:
 838                     ; 264   case ITC_IRQ_SPI:
 838                     ; 265   case ITC_IRQ_TIM1_OVF:
 838                     ; 266     ITC->ISPR3 &= Mask;
 840  00b5 c67f72        	ld	a,32626
 841  00b8 1401          	and	a,(OFST-1,sp)
 842  00ba c77f72        	ld	32626,a
 843                     ; 267     ITC->ISPR3 |= NewPriority;
 845  00bd c67f72        	ld	a,32626
 846  00c0 1a02          	or	a,(OFST+0,sp)
 847  00c2 c77f72        	ld	32626,a
 848                     ; 268     break;
 850  00c5 2046          	jra	L362
 851  00c7               L512:
 852                     ; 270   case ITC_IRQ_TIM1_CAPCOM:
 852                     ; 271 #if defined(STM8S903) || defined(STM8AF622x) 
 852                     ; 272   case ITC_IRQ_TIM5_OVFTRI:
 852                     ; 273   case ITC_IRQ_TIM5_CAPCOM:
 852                     ; 274 #else
 852                     ; 275   case ITC_IRQ_TIM2_OVF:
 852                     ; 276   case ITC_IRQ_TIM2_CAPCOM:
 852                     ; 277 #endif /*STM8S903 or STM8AF622x */
 852                     ; 278   case ITC_IRQ_TIM3_OVF:
 852                     ; 279     ITC->ISPR4 &= Mask;
 854  00c7 c67f73        	ld	a,32627
 855  00ca 1401          	and	a,(OFST-1,sp)
 856  00cc c77f73        	ld	32627,a
 857                     ; 280     ITC->ISPR4 |= NewPriority;
 859  00cf c67f73        	ld	a,32627
 860  00d2 1a02          	or	a,(OFST+0,sp)
 861  00d4 c77f73        	ld	32627,a
 862                     ; 281     break;
 864  00d7 2034          	jra	L362
 865  00d9               L712:
 866                     ; 283   case ITC_IRQ_TIM3_CAPCOM:
 866                     ; 284 #if defined(STM8S208) ||defined(STM8S207) || defined (STM8S007) || defined(STM8S103) || \
 866                     ; 285     defined(STM8S003) ||defined(STM8S903) || defined (STM8AF52Ax) || defined (STM8AF62Ax)
 866                     ; 286   case ITC_IRQ_UART1_TX:
 866                     ; 287   case ITC_IRQ_UART1_RX:
 866                     ; 288 #endif /*STM8S208 or STM8S207 or STM8S007 or STM8S103 or STM8S003 or STM8S903 or STM8AF52Ax or STM8AF62Ax */ 
 866                     ; 289 #if defined(STM8AF622x)
 866                     ; 290   case ITC_IRQ_UART4_TX:
 866                     ; 291   case ITC_IRQ_UART4_RX:
 866                     ; 292 #endif /*STM8AF622x */
 866                     ; 293   case ITC_IRQ_I2C:
 866                     ; 294     ITC->ISPR5 &= Mask;
 868  00d9 c67f74        	ld	a,32628
 869  00dc 1401          	and	a,(OFST-1,sp)
 870  00de c77f74        	ld	32628,a
 871                     ; 295     ITC->ISPR5 |= NewPriority;
 873  00e1 c67f74        	ld	a,32628
 874  00e4 1a02          	or	a,(OFST+0,sp)
 875  00e6 c77f74        	ld	32628,a
 876                     ; 296     break;
 878  00e9 2022          	jra	L362
 879  00eb               L122:
 880                     ; 312   case ITC_IRQ_ADC1:
 880                     ; 313 #endif /*STM8S105, STM8S005, STM8S103 or STM8S003 or STM8S903 or STM8AF626x or STM8AF622x */
 880                     ; 314     
 880                     ; 315 #if defined (STM8S903) || defined (STM8AF622x)
 880                     ; 316   case ITC_IRQ_TIM6_OVFTRI:
 880                     ; 317 #else
 880                     ; 318   case ITC_IRQ_TIM4_OVF:
 880                     ; 319 #endif /* STM8S903 or STM8AF622x */
 880                     ; 320     ITC->ISPR6 &= Mask;
 882  00eb c67f75        	ld	a,32629
 883  00ee 1401          	and	a,(OFST-1,sp)
 884  00f0 c77f75        	ld	32629,a
 885                     ; 321     ITC->ISPR6 |= NewPriority;
 887  00f3 c67f75        	ld	a,32629
 888  00f6 1a02          	or	a,(OFST+0,sp)
 889  00f8 c77f75        	ld	32629,a
 890                     ; 322     break;
 892  00fb 2010          	jra	L362
 893  00fd               L322:
 894                     ; 324   case ITC_IRQ_EEPROM_EEC:
 894                     ; 325     ITC->ISPR7 &= Mask;
 896  00fd c67f76        	ld	a,32630
 897  0100 1401          	and	a,(OFST-1,sp)
 898  0102 c77f76        	ld	32630,a
 899                     ; 326     ITC->ISPR7 |= NewPriority;
 901  0105 c67f76        	ld	a,32630
 902  0108 1a02          	or	a,(OFST+0,sp)
 903  010a c77f76        	ld	32630,a
 904                     ; 327     break;
 906  010d               L522:
 907                     ; 329   default:
 907                     ; 330     break;
 909  010d               L362:
 910                     ; 332 }
 913  010d 5b04          	addw	sp,#4
 914  010f 81            	ret
 927                     	xdef	_ITC_GetSoftwarePriority
 928                     	xdef	_ITC_SetSoftwarePriority
 929                     	xdef	_ITC_GetSoftIntStatus
 930                     	xdef	_ITC_DeInit
 931                     	xdef	_ITC_GetCPUCC
 932                     	xref	_assert_failed
 933                     	switch	.const
 934  0064               L102:
 935  0064 2e2e5c6c6962  	dc.b	"..\libs\src\stm8s_"
 936  0076 6974632e6300  	dc.b	"itc.c",0
 956                     	end
