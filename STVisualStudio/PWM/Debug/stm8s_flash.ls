   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
  77                     ; 87 void FLASH_Unlock(FLASH_MemType_TypeDef FLASH_MemType)
  77                     ; 88 {
  79                     .text:	section	.text,new
  80  0000               _FLASH_Unlock:
  82  0000 88            	push	a
  83       00000000      OFST:	set	0
  86                     ; 90   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
  88  0001 a1fd          	cp	a,#253
  89  0003 2704          	jreq	L01
  90  0005 a1f7          	cp	a,#247
  91  0007 2603          	jrne	L6
  92  0009               L01:
  93  0009 4f            	clr	a
  94  000a 2010          	jra	L21
  95  000c               L6:
  96  000c ae005a        	ldw	x,#90
  97  000f 89            	pushw	x
  98  0010 ae0000        	ldw	x,#0
  99  0013 89            	pushw	x
 100  0014 ae0010        	ldw	x,#L73
 101  0017 cd0000        	call	_assert_failed
 103  001a 5b04          	addw	sp,#4
 104  001c               L21:
 105                     ; 93   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
 107  001c 7b01          	ld	a,(OFST+1,sp)
 108  001e a1fd          	cp	a,#253
 109  0020 260a          	jrne	L14
 110                     ; 95     FLASH->PUKR = FLASH_RASS_KEY1;
 112  0022 35565062      	mov	20578,#86
 113                     ; 96     FLASH->PUKR = FLASH_RASS_KEY2;
 115  0026 35ae5062      	mov	20578,#174
 117  002a 2008          	jra	L34
 118  002c               L14:
 119                     ; 101     FLASH->DUKR = FLASH_RASS_KEY2; /* Warning: keys are reversed on data memory !!! */
 121  002c 35ae5064      	mov	20580,#174
 122                     ; 102     FLASH->DUKR = FLASH_RASS_KEY1;
 124  0030 35565064      	mov	20580,#86
 125  0034               L34:
 126                     ; 104 }
 129  0034 84            	pop	a
 130  0035 81            	ret
 166                     ; 112 void FLASH_Lock(FLASH_MemType_TypeDef FLASH_MemType)
 166                     ; 113 {
 167                     .text:	section	.text,new
 168  0000               _FLASH_Lock:
 170  0000 88            	push	a
 171       00000000      OFST:	set	0
 174                     ; 115   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
 176  0001 a1fd          	cp	a,#253
 177  0003 2704          	jreq	L02
 178  0005 a1f7          	cp	a,#247
 179  0007 2603          	jrne	L61
 180  0009               L02:
 181  0009 4f            	clr	a
 182  000a 2010          	jra	L22
 183  000c               L61:
 184  000c ae0073        	ldw	x,#115
 185  000f 89            	pushw	x
 186  0010 ae0000        	ldw	x,#0
 187  0013 89            	pushw	x
 188  0014 ae0010        	ldw	x,#L73
 189  0017 cd0000        	call	_assert_failed
 191  001a 5b04          	addw	sp,#4
 192  001c               L22:
 193                     ; 118   FLASH->IAPSR &= (uint8_t)FLASH_MemType;
 195  001c c6505f        	ld	a,20575
 196  001f 1401          	and	a,(OFST+1,sp)
 197  0021 c7505f        	ld	20575,a
 198                     ; 119 }
 201  0024 84            	pop	a
 202  0025 81            	ret
 225                     ; 126 void FLASH_DeInit(void)
 225                     ; 127 {
 226                     .text:	section	.text,new
 227  0000               _FLASH_DeInit:
 231                     ; 128   FLASH->CR1 = FLASH_CR1_RESET_VALUE;
 233  0000 725f505a      	clr	20570
 234                     ; 129   FLASH->CR2 = FLASH_CR2_RESET_VALUE;
 236  0004 725f505b      	clr	20571
 237                     ; 130   FLASH->NCR2 = FLASH_NCR2_RESET_VALUE;
 239  0008 35ff505c      	mov	20572,#255
 240                     ; 131   FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_DUL);
 242  000c 7217505f      	bres	20575,#3
 243                     ; 132   FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_PUL);
 245  0010 7213505f      	bres	20575,#1
 246                     ; 133   (void) FLASH->IAPSR; /* Reading of this register causes the clearing of status flags */
 248  0014 c6505f        	ld	a,20575
 249                     ; 134 }
 252  0017 81            	ret
 308                     ; 142 void FLASH_ITConfig(FunctionalState NewState)
 308                     ; 143 {
 309                     .text:	section	.text,new
 310  0000               _FLASH_ITConfig:
 312  0000 88            	push	a
 313       00000000      OFST:	set	0
 316                     ; 145   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 318  0001 4d            	tnz	a
 319  0002 2704          	jreq	L23
 320  0004 a101          	cp	a,#1
 321  0006 2603          	jrne	L03
 322  0008               L23:
 323  0008 4f            	clr	a
 324  0009 2010          	jra	L43
 325  000b               L03:
 326  000b ae0091        	ldw	x,#145
 327  000e 89            	pushw	x
 328  000f ae0000        	ldw	x,#0
 329  0012 89            	pushw	x
 330  0013 ae0010        	ldw	x,#L73
 331  0016 cd0000        	call	_assert_failed
 333  0019 5b04          	addw	sp,#4
 334  001b               L43:
 335                     ; 147   if(NewState != DISABLE)
 337  001b 0d01          	tnz	(OFST+1,sp)
 338  001d 2706          	jreq	L121
 339                     ; 149     FLASH->CR1 |= FLASH_CR1_IE; /* Enables the interrupt sources */
 341  001f 7212505a      	bset	20570,#1
 343  0023 2004          	jra	L321
 344  0025               L121:
 345                     ; 153     FLASH->CR1 &= (uint8_t)(~FLASH_CR1_IE); /* Disables the interrupt sources */
 347  0025 7213505a      	bres	20570,#1
 348  0029               L321:
 349                     ; 155 }
 352  0029 84            	pop	a
 353  002a 81            	ret
 388                     .const:	section	.text
 389  0000               L64:
 390  0000 00008000      	dc.l	32768
 391  0004               L05:
 392  0004 0000a000      	dc.l	40960
 393  0008               L25:
 394  0008 00004000      	dc.l	16384
 395  000c               L45:
 396  000c 00004280      	dc.l	17024
 397                     ; 164 void FLASH_EraseByte(uint32_t Address)
 397                     ; 165 {
 398                     .text:	section	.text,new
 399  0000               _FLASH_EraseByte:
 401       00000000      OFST:	set	0
 404                     ; 167   assert_param(IS_FLASH_ADDRESS_OK(Address));
 406  0000 96            	ldw	x,sp
 407  0001 1c0003        	addw	x,#OFST+3
 408  0004 cd0000        	call	c_ltor
 410  0007 ae0000        	ldw	x,#L64
 411  000a cd0000        	call	c_lcmp
 413  000d 250f          	jrult	L44
 414  000f 96            	ldw	x,sp
 415  0010 1c0003        	addw	x,#OFST+3
 416  0013 cd0000        	call	c_ltor
 418  0016 ae0004        	ldw	x,#L05
 419  0019 cd0000        	call	c_lcmp
 421  001c 251e          	jrult	L24
 422  001e               L44:
 423  001e 96            	ldw	x,sp
 424  001f 1c0003        	addw	x,#OFST+3
 425  0022 cd0000        	call	c_ltor
 427  0025 ae0008        	ldw	x,#L25
 428  0028 cd0000        	call	c_lcmp
 430  002b 2512          	jrult	L04
 431  002d 96            	ldw	x,sp
 432  002e 1c0003        	addw	x,#OFST+3
 433  0031 cd0000        	call	c_ltor
 435  0034 ae000c        	ldw	x,#L45
 436  0037 cd0000        	call	c_lcmp
 438  003a 2403          	jruge	L04
 439  003c               L24:
 440  003c 4f            	clr	a
 441  003d 2010          	jra	L65
 442  003f               L04:
 443  003f ae00a7        	ldw	x,#167
 444  0042 89            	pushw	x
 445  0043 ae0000        	ldw	x,#0
 446  0046 89            	pushw	x
 447  0047 ae0010        	ldw	x,#L73
 448  004a cd0000        	call	_assert_failed
 450  004d 5b04          	addw	sp,#4
 451  004f               L65:
 452                     ; 170   *(PointerAttr uint8_t*) (MemoryAddressCast)Address = FLASH_CLEAR_BYTE; 
 454  004f 1e05          	ldw	x,(OFST+5,sp)
 455  0051 7f            	clr	(x)
 456                     ; 171 }
 459  0052 81            	ret
 503                     ; 181 void FLASH_ProgramByte(uint32_t Address, uint8_t Data)
 503                     ; 182 {
 504                     .text:	section	.text,new
 505  0000               _FLASH_ProgramByte:
 507       00000000      OFST:	set	0
 510                     ; 184   assert_param(IS_FLASH_ADDRESS_OK(Address));
 512  0000 96            	ldw	x,sp
 513  0001 1c0003        	addw	x,#OFST+3
 514  0004 cd0000        	call	c_ltor
 516  0007 ae0000        	ldw	x,#L64
 517  000a cd0000        	call	c_lcmp
 519  000d 250f          	jrult	L66
 520  000f 96            	ldw	x,sp
 521  0010 1c0003        	addw	x,#OFST+3
 522  0013 cd0000        	call	c_ltor
 524  0016 ae0004        	ldw	x,#L05
 525  0019 cd0000        	call	c_lcmp
 527  001c 251e          	jrult	L46
 528  001e               L66:
 529  001e 96            	ldw	x,sp
 530  001f 1c0003        	addw	x,#OFST+3
 531  0022 cd0000        	call	c_ltor
 533  0025 ae0008        	ldw	x,#L25
 534  0028 cd0000        	call	c_lcmp
 536  002b 2512          	jrult	L26
 537  002d 96            	ldw	x,sp
 538  002e 1c0003        	addw	x,#OFST+3
 539  0031 cd0000        	call	c_ltor
 541  0034 ae000c        	ldw	x,#L45
 542  0037 cd0000        	call	c_lcmp
 544  003a 2403          	jruge	L26
 545  003c               L46:
 546  003c 4f            	clr	a
 547  003d 2010          	jra	L07
 548  003f               L26:
 549  003f ae00b8        	ldw	x,#184
 550  0042 89            	pushw	x
 551  0043 ae0000        	ldw	x,#0
 552  0046 89            	pushw	x
 553  0047 ae0010        	ldw	x,#L73
 554  004a cd0000        	call	_assert_failed
 556  004d 5b04          	addw	sp,#4
 557  004f               L07:
 558                     ; 185   *(PointerAttr uint8_t*) (MemoryAddressCast)Address = Data;
 560  004f 7b07          	ld	a,(OFST+7,sp)
 561  0051 1e05          	ldw	x,(OFST+5,sp)
 562  0053 f7            	ld	(x),a
 563                     ; 186 }
 566  0054 81            	ret
 601                     ; 195 uint8_t FLASH_ReadByte(uint32_t Address)
 601                     ; 196 {
 602                     .text:	section	.text,new
 603  0000               _FLASH_ReadByte:
 605       00000000      OFST:	set	0
 608                     ; 198   assert_param(IS_FLASH_ADDRESS_OK(Address));
 610  0000 96            	ldw	x,sp
 611  0001 1c0003        	addw	x,#OFST+3
 612  0004 cd0000        	call	c_ltor
 614  0007 ae0000        	ldw	x,#L64
 615  000a cd0000        	call	c_lcmp
 617  000d 250f          	jrult	L001
 618  000f 96            	ldw	x,sp
 619  0010 1c0003        	addw	x,#OFST+3
 620  0013 cd0000        	call	c_ltor
 622  0016 ae0004        	ldw	x,#L05
 623  0019 cd0000        	call	c_lcmp
 625  001c 251e          	jrult	L67
 626  001e               L001:
 627  001e 96            	ldw	x,sp
 628  001f 1c0003        	addw	x,#OFST+3
 629  0022 cd0000        	call	c_ltor
 631  0025 ae0008        	ldw	x,#L25
 632  0028 cd0000        	call	c_lcmp
 634  002b 2512          	jrult	L47
 635  002d 96            	ldw	x,sp
 636  002e 1c0003        	addw	x,#OFST+3
 637  0031 cd0000        	call	c_ltor
 639  0034 ae000c        	ldw	x,#L45
 640  0037 cd0000        	call	c_lcmp
 642  003a 2403          	jruge	L47
 643  003c               L67:
 644  003c 4f            	clr	a
 645  003d 2010          	jra	L201
 646  003f               L47:
 647  003f ae00c6        	ldw	x,#198
 648  0042 89            	pushw	x
 649  0043 ae0000        	ldw	x,#0
 650  0046 89            	pushw	x
 651  0047 ae0010        	ldw	x,#L73
 652  004a cd0000        	call	_assert_failed
 654  004d 5b04          	addw	sp,#4
 655  004f               L201:
 656                     ; 201   return(*(PointerAttr uint8_t *) (MemoryAddressCast)Address); 
 658  004f 1e05          	ldw	x,(OFST+5,sp)
 659  0051 f6            	ld	a,(x)
 662  0052 81            	ret
 706                     ; 212 void FLASH_ProgramWord(uint32_t Address, uint32_t Data)
 706                     ; 213 {
 707                     .text:	section	.text,new
 708  0000               _FLASH_ProgramWord:
 710       00000000      OFST:	set	0
 713                     ; 215   assert_param(IS_FLASH_ADDRESS_OK(Address));
 715  0000 96            	ldw	x,sp
 716  0001 1c0003        	addw	x,#OFST+3
 717  0004 cd0000        	call	c_ltor
 719  0007 ae0000        	ldw	x,#L64
 720  000a cd0000        	call	c_lcmp
 722  000d 250f          	jrult	L211
 723  000f 96            	ldw	x,sp
 724  0010 1c0003        	addw	x,#OFST+3
 725  0013 cd0000        	call	c_ltor
 727  0016 ae0004        	ldw	x,#L05
 728  0019 cd0000        	call	c_lcmp
 730  001c 251e          	jrult	L011
 731  001e               L211:
 732  001e 96            	ldw	x,sp
 733  001f 1c0003        	addw	x,#OFST+3
 734  0022 cd0000        	call	c_ltor
 736  0025 ae0008        	ldw	x,#L25
 737  0028 cd0000        	call	c_lcmp
 739  002b 2512          	jrult	L601
 740  002d 96            	ldw	x,sp
 741  002e 1c0003        	addw	x,#OFST+3
 742  0031 cd0000        	call	c_ltor
 744  0034 ae000c        	ldw	x,#L45
 745  0037 cd0000        	call	c_lcmp
 747  003a 2403          	jruge	L601
 748  003c               L011:
 749  003c 4f            	clr	a
 750  003d 2010          	jra	L411
 751  003f               L601:
 752  003f ae00d7        	ldw	x,#215
 753  0042 89            	pushw	x
 754  0043 ae0000        	ldw	x,#0
 755  0046 89            	pushw	x
 756  0047 ae0010        	ldw	x,#L73
 757  004a cd0000        	call	_assert_failed
 759  004d 5b04          	addw	sp,#4
 760  004f               L411:
 761                     ; 218   FLASH->CR2 |= FLASH_CR2_WPRG;
 763  004f 721c505b      	bset	20571,#6
 764                     ; 219   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NWPRG);
 766  0053 721d505c      	bres	20572,#6
 767                     ; 222   *((PointerAttr uint8_t*)(MemoryAddressCast)Address)       = *((uint8_t*)(&Data));
 769  0057 7b07          	ld	a,(OFST+7,sp)
 770  0059 1e05          	ldw	x,(OFST+5,sp)
 771  005b f7            	ld	(x),a
 772                     ; 224   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 1) = *((uint8_t*)(&Data)+1); 
 774  005c 7b08          	ld	a,(OFST+8,sp)
 775  005e 1e05          	ldw	x,(OFST+5,sp)
 776  0060 e701          	ld	(1,x),a
 777                     ; 226   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 2) = *((uint8_t*)(&Data)+2); 
 779  0062 7b09          	ld	a,(OFST+9,sp)
 780  0064 1e05          	ldw	x,(OFST+5,sp)
 781  0066 e702          	ld	(2,x),a
 782                     ; 228   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 3) = *((uint8_t*)(&Data)+3); 
 784  0068 7b0a          	ld	a,(OFST+10,sp)
 785  006a 1e05          	ldw	x,(OFST+5,sp)
 786  006c e703          	ld	(3,x),a
 787                     ; 229 }
 790  006e 81            	ret
 836                     ; 237 void FLASH_ProgramOptionByte(uint16_t Address, uint8_t Data)
 836                     ; 238 {
 837                     .text:	section	.text,new
 838  0000               _FLASH_ProgramOptionByte:
 840  0000 89            	pushw	x
 841       00000000      OFST:	set	0
 844                     ; 240   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 846  0001 a34800        	cpw	x,#18432
 847  0004 2508          	jrult	L021
 848  0006 a34880        	cpw	x,#18560
 849  0009 2403          	jruge	L021
 850  000b 4f            	clr	a
 851  000c 2010          	jra	L221
 852  000e               L021:
 853  000e ae00f0        	ldw	x,#240
 854  0011 89            	pushw	x
 855  0012 ae0000        	ldw	x,#0
 856  0015 89            	pushw	x
 857  0016 ae0010        	ldw	x,#L73
 858  0019 cd0000        	call	_assert_failed
 860  001c 5b04          	addw	sp,#4
 861  001e               L221:
 862                     ; 243   FLASH->CR2 |= FLASH_CR2_OPT;
 864  001e 721e505b      	bset	20571,#7
 865                     ; 244   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
 867  0022 721f505c      	bres	20572,#7
 868                     ; 247   if(Address == 0x4800)
 870  0026 1e01          	ldw	x,(OFST+1,sp)
 871  0028 a34800        	cpw	x,#18432
 872  002b 2607          	jrne	L742
 873                     ; 250     *((NEAR uint8_t*)Address) = Data;
 875  002d 7b05          	ld	a,(OFST+5,sp)
 876  002f 1e01          	ldw	x,(OFST+1,sp)
 877  0031 f7            	ld	(x),a
 879  0032 200c          	jra	L152
 880  0034               L742:
 881                     ; 255     *((NEAR uint8_t*)Address) = Data;
 883  0034 7b05          	ld	a,(OFST+5,sp)
 884  0036 1e01          	ldw	x,(OFST+1,sp)
 885  0038 f7            	ld	(x),a
 886                     ; 256     *((NEAR uint8_t*)((uint16_t)(Address + 1))) = (uint8_t)(~Data);
 888  0039 7b05          	ld	a,(OFST+5,sp)
 889  003b 43            	cpl	a
 890  003c 1e01          	ldw	x,(OFST+1,sp)
 891  003e e701          	ld	(1,x),a
 892  0040               L152:
 893                     ; 258   FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
 895  0040 a6fd          	ld	a,#253
 896  0042 cd0000        	call	_FLASH_WaitForLastOperation
 898                     ; 261   FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
 900  0045 721f505b      	bres	20571,#7
 901                     ; 262   FLASH->NCR2 |= FLASH_NCR2_NOPT;
 903  0049 721e505c      	bset	20572,#7
 904                     ; 263 }
 907  004d 85            	popw	x
 908  004e 81            	ret
 945                     ; 270 void FLASH_EraseOptionByte(uint16_t Address)
 945                     ; 271 {
 946                     .text:	section	.text,new
 947  0000               _FLASH_EraseOptionByte:
 949  0000 89            	pushw	x
 950       00000000      OFST:	set	0
 953                     ; 273   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 955  0001 a34800        	cpw	x,#18432
 956  0004 2508          	jrult	L621
 957  0006 a34880        	cpw	x,#18560
 958  0009 2403          	jruge	L621
 959  000b 4f            	clr	a
 960  000c 2010          	jra	L031
 961  000e               L621:
 962  000e ae0111        	ldw	x,#273
 963  0011 89            	pushw	x
 964  0012 ae0000        	ldw	x,#0
 965  0015 89            	pushw	x
 966  0016 ae0010        	ldw	x,#L73
 967  0019 cd0000        	call	_assert_failed
 969  001c 5b04          	addw	sp,#4
 970  001e               L031:
 971                     ; 276   FLASH->CR2 |= FLASH_CR2_OPT;
 973  001e 721e505b      	bset	20571,#7
 974                     ; 277   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
 976  0022 721f505c      	bres	20572,#7
 977                     ; 280   if(Address == 0x4800)
 979  0026 1e01          	ldw	x,(OFST+1,sp)
 980  0028 a34800        	cpw	x,#18432
 981  002b 2605          	jrne	L172
 982                     ; 283     *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
 984  002d 1e01          	ldw	x,(OFST+1,sp)
 985  002f 7f            	clr	(x)
 987  0030 2009          	jra	L372
 988  0032               L172:
 989                     ; 288     *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
 991  0032 1e01          	ldw	x,(OFST+1,sp)
 992  0034 7f            	clr	(x)
 993                     ; 289     *((NEAR uint8_t*)((uint16_t)(Address + (uint16_t)1 ))) = FLASH_SET_BYTE;
 995  0035 1e01          	ldw	x,(OFST+1,sp)
 996  0037 a6ff          	ld	a,#255
 997  0039 e701          	ld	(1,x),a
 998  003b               L372:
 999                     ; 291   FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
1001  003b a6fd          	ld	a,#253
1002  003d cd0000        	call	_FLASH_WaitForLastOperation
1004                     ; 294   FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
1006  0040 721f505b      	bres	20571,#7
1007                     ; 295   FLASH->NCR2 |= FLASH_NCR2_NOPT;
1009  0044 721e505c      	bset	20572,#7
1010                     ; 296 }
1013  0048 85            	popw	x
1014  0049 81            	ret
1078                     ; 303 uint16_t FLASH_ReadOptionByte(uint16_t Address)
1078                     ; 304 {
1079                     .text:	section	.text,new
1080  0000               _FLASH_ReadOptionByte:
1082  0000 89            	pushw	x
1083  0001 5204          	subw	sp,#4
1084       00000004      OFST:	set	4
1087                     ; 305   uint8_t value_optbyte, value_optbyte_complement = 0;
1089                     ; 306   uint16_t res_value = 0;
1091                     ; 309   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
1093  0003 a34800        	cpw	x,#18432
1094  0006 2508          	jrult	L431
1095  0008 a34880        	cpw	x,#18560
1096  000b 2403          	jruge	L431
1097  000d 4f            	clr	a
1098  000e 2010          	jra	L631
1099  0010               L431:
1100  0010 ae0135        	ldw	x,#309
1101  0013 89            	pushw	x
1102  0014 ae0000        	ldw	x,#0
1103  0017 89            	pushw	x
1104  0018 ae0010        	ldw	x,#L73
1105  001b cd0000        	call	_assert_failed
1107  001e 5b04          	addw	sp,#4
1108  0020               L631:
1109                     ; 311   value_optbyte = *((NEAR uint8_t*)Address); /* Read option byte */
1111  0020 1e05          	ldw	x,(OFST+1,sp)
1112  0022 f6            	ld	a,(x)
1113  0023 6b01          	ld	(OFST-3,sp),a
1115                     ; 312   value_optbyte_complement = *(((NEAR uint8_t*)Address) + 1); /* Read option byte complement */
1117  0025 1e05          	ldw	x,(OFST+1,sp)
1118  0027 e601          	ld	a,(1,x)
1119  0029 6b02          	ld	(OFST-2,sp),a
1121                     ; 315   if(Address == 0x4800)	 
1123  002b 1e05          	ldw	x,(OFST+1,sp)
1124  002d a34800        	cpw	x,#18432
1125  0030 2608          	jrne	L723
1126                     ; 317     res_value =	 value_optbyte;
1128  0032 7b01          	ld	a,(OFST-3,sp)
1129  0034 5f            	clrw	x
1130  0035 97            	ld	xl,a
1131  0036 1f03          	ldw	(OFST-1,sp),x
1134  0038 2023          	jra	L133
1135  003a               L723:
1136                     ; 321     if(value_optbyte == (uint8_t)(~value_optbyte_complement))
1138  003a 7b02          	ld	a,(OFST-2,sp)
1139  003c 43            	cpl	a
1140  003d 1101          	cp	a,(OFST-3,sp)
1141  003f 2617          	jrne	L333
1142                     ; 323       res_value = (uint16_t)((uint16_t)value_optbyte << 8);
1144  0041 7b01          	ld	a,(OFST-3,sp)
1145  0043 5f            	clrw	x
1146  0044 97            	ld	xl,a
1147  0045 4f            	clr	a
1148  0046 02            	rlwa	x,a
1149  0047 1f03          	ldw	(OFST-1,sp),x
1151                     ; 324       res_value = res_value | (uint16_t)value_optbyte_complement;
1153  0049 7b02          	ld	a,(OFST-2,sp)
1154  004b 5f            	clrw	x
1155  004c 97            	ld	xl,a
1156  004d 01            	rrwa	x,a
1157  004e 1a04          	or	a,(OFST+0,sp)
1158  0050 01            	rrwa	x,a
1159  0051 1a03          	or	a,(OFST-1,sp)
1160  0053 01            	rrwa	x,a
1161  0054 1f03          	ldw	(OFST-1,sp),x
1164  0056 2005          	jra	L133
1165  0058               L333:
1166                     ; 328       res_value = FLASH_OPTIONBYTE_ERROR;
1168  0058 ae5555        	ldw	x,#21845
1169  005b 1f03          	ldw	(OFST-1,sp),x
1171  005d               L133:
1172                     ; 331   return(res_value);
1174  005d 1e03          	ldw	x,(OFST-1,sp)
1177  005f 5b06          	addw	sp,#6
1178  0061 81            	ret
1253                     ; 340 void FLASH_SetLowPowerMode(FLASH_LPMode_TypeDef FLASH_LPMode)
1253                     ; 341 {
1254                     .text:	section	.text,new
1255  0000               _FLASH_SetLowPowerMode:
1257  0000 88            	push	a
1258       00000000      OFST:	set	0
1261                     ; 343   assert_param(IS_FLASH_LOW_POWER_MODE_OK(FLASH_LPMode));
1263  0001 a104          	cp	a,#4
1264  0003 270b          	jreq	L441
1265  0005 a108          	cp	a,#8
1266  0007 2707          	jreq	L441
1267  0009 4d            	tnz	a
1268  000a 2704          	jreq	L441
1269  000c a10c          	cp	a,#12
1270  000e 2603          	jrne	L241
1271  0010               L441:
1272  0010 4f            	clr	a
1273  0011 2010          	jra	L641
1274  0013               L241:
1275  0013 ae0157        	ldw	x,#343
1276  0016 89            	pushw	x
1277  0017 ae0000        	ldw	x,#0
1278  001a 89            	pushw	x
1279  001b ae0010        	ldw	x,#L73
1280  001e cd0000        	call	_assert_failed
1282  0021 5b04          	addw	sp,#4
1283  0023               L641:
1284                     ; 346   FLASH->CR1 &= (uint8_t)(~(FLASH_CR1_HALT | FLASH_CR1_AHALT)); 
1286  0023 c6505a        	ld	a,20570
1287  0026 a4f3          	and	a,#243
1288  0028 c7505a        	ld	20570,a
1289                     ; 349   FLASH->CR1 |= (uint8_t)FLASH_LPMode; 
1291  002b c6505a        	ld	a,20570
1292  002e 1a01          	or	a,(OFST+1,sp)
1293  0030 c7505a        	ld	20570,a
1294                     ; 350 }
1297  0033 84            	pop	a
1298  0034 81            	ret
1357                     ; 358 void FLASH_SetProgrammingTime(FLASH_ProgramTime_TypeDef FLASH_ProgTime)
1357                     ; 359 {
1358                     .text:	section	.text,new
1359  0000               _FLASH_SetProgrammingTime:
1361  0000 88            	push	a
1362       00000000      OFST:	set	0
1365                     ; 361   assert_param(IS_FLASH_PROGRAM_TIME_OK(FLASH_ProgTime));
1367  0001 4d            	tnz	a
1368  0002 2704          	jreq	L451
1369  0004 a101          	cp	a,#1
1370  0006 2603          	jrne	L251
1371  0008               L451:
1372  0008 4f            	clr	a
1373  0009 2010          	jra	L651
1374  000b               L251:
1375  000b ae0169        	ldw	x,#361
1376  000e 89            	pushw	x
1377  000f ae0000        	ldw	x,#0
1378  0012 89            	pushw	x
1379  0013 ae0010        	ldw	x,#L73
1380  0016 cd0000        	call	_assert_failed
1382  0019 5b04          	addw	sp,#4
1383  001b               L651:
1384                     ; 363   FLASH->CR1 &= (uint8_t)(~FLASH_CR1_FIX);
1386  001b 7211505a      	bres	20570,#0
1387                     ; 364   FLASH->CR1 |= (uint8_t)FLASH_ProgTime;
1389  001f c6505a        	ld	a,20570
1390  0022 1a01          	or	a,(OFST+1,sp)
1391  0024 c7505a        	ld	20570,a
1392                     ; 365 }
1395  0027 84            	pop	a
1396  0028 81            	ret
1421                     ; 372 FLASH_LPMode_TypeDef FLASH_GetLowPowerMode(void)
1421                     ; 373 {
1422                     .text:	section	.text,new
1423  0000               _FLASH_GetLowPowerMode:
1427                     ; 374   return((FLASH_LPMode_TypeDef)(FLASH->CR1 & (uint8_t)(FLASH_CR1_HALT | FLASH_CR1_AHALT)));
1429  0000 c6505a        	ld	a,20570
1430  0003 a40c          	and	a,#12
1433  0005 81            	ret
1458                     ; 382 FLASH_ProgramTime_TypeDef FLASH_GetProgrammingTime(void)
1458                     ; 383 {
1459                     .text:	section	.text,new
1460  0000               _FLASH_GetProgrammingTime:
1464                     ; 384   return((FLASH_ProgramTime_TypeDef)(FLASH->CR1 & FLASH_CR1_FIX));
1466  0000 c6505a        	ld	a,20570
1467  0003 a401          	and	a,#1
1470  0005 81            	ret
1504                     ; 392 uint32_t FLASH_GetBootSize(void)
1504                     ; 393 {
1505                     .text:	section	.text,new
1506  0000               _FLASH_GetBootSize:
1508  0000 5204          	subw	sp,#4
1509       00000004      OFST:	set	4
1512                     ; 394   uint32_t temp = 0;
1514                     ; 397   temp = (uint32_t)((uint32_t)FLASH->FPR * (uint32_t)512);
1516  0002 c6505d        	ld	a,20573
1517  0005 5f            	clrw	x
1518  0006 97            	ld	xl,a
1519  0007 90ae0200      	ldw	y,#512
1520  000b cd0000        	call	c_umul
1522  000e 96            	ldw	x,sp
1523  000f 1c0001        	addw	x,#OFST-3
1524  0012 cd0000        	call	c_rtol
1527                     ; 400   if(FLASH->FPR == 0xFF)
1529  0015 c6505d        	ld	a,20573
1530  0018 a1ff          	cp	a,#255
1531  001a 2611          	jrne	L554
1532                     ; 402     temp += 512;
1534  001c ae0200        	ldw	x,#512
1535  001f bf02          	ldw	c_lreg+2,x
1536  0021 ae0000        	ldw	x,#0
1537  0024 bf00          	ldw	c_lreg,x
1538  0026 96            	ldw	x,sp
1539  0027 1c0001        	addw	x,#OFST-3
1540  002a cd0000        	call	c_lgadd
1543  002d               L554:
1544                     ; 406   return(temp);
1546  002d 96            	ldw	x,sp
1547  002e 1c0001        	addw	x,#OFST-3
1548  0031 cd0000        	call	c_ltor
1552  0034 5b04          	addw	sp,#4
1553  0036 81            	ret
1656                     ; 417 FlagStatus FLASH_GetFlagStatus(FLASH_Flag_TypeDef FLASH_FLAG)
1656                     ; 418 {
1657                     .text:	section	.text,new
1658  0000               _FLASH_GetFlagStatus:
1660  0000 88            	push	a
1661  0001 88            	push	a
1662       00000001      OFST:	set	1
1665                     ; 419   FlagStatus status = RESET;
1667                     ; 421   assert_param(IS_FLASH_FLAGS_OK(FLASH_FLAG));
1669  0002 a108          	cp	a,#8
1670  0004 270c          	jreq	L271
1671  0006 a104          	cp	a,#4
1672  0008 2708          	jreq	L271
1673  000a a102          	cp	a,#2
1674  000c 2704          	jreq	L271
1675  000e a101          	cp	a,#1
1676  0010 2603          	jrne	L071
1677  0012               L271:
1678  0012 4f            	clr	a
1679  0013 2010          	jra	L471
1680  0015               L071:
1681  0015 ae01a5        	ldw	x,#421
1682  0018 89            	pushw	x
1683  0019 ae0000        	ldw	x,#0
1684  001c 89            	pushw	x
1685  001d ae0010        	ldw	x,#L73
1686  0020 cd0000        	call	_assert_failed
1688  0023 5b04          	addw	sp,#4
1689  0025               L471:
1690                     ; 424   if((FLASH->IAPSR & (uint8_t)FLASH_FLAG) != (uint8_t)RESET)
1692  0025 c6505f        	ld	a,20575
1693  0028 1502          	bcp	a,(OFST+1,sp)
1694  002a 2706          	jreq	L525
1695                     ; 426     status = SET; /* FLASH_FLAG is set */
1697  002c a601          	ld	a,#1
1698  002e 6b01          	ld	(OFST+0,sp),a
1701  0030 2002          	jra	L725
1702  0032               L525:
1703                     ; 430     status = RESET; /* FLASH_FLAG is reset*/
1705  0032 0f01          	clr	(OFST+0,sp)
1707  0034               L725:
1708                     ; 434   return status;
1710  0034 7b01          	ld	a,(OFST+0,sp)
1713  0036 85            	popw	x
1714  0037 81            	ret
1799                     ; 549 IN_RAM(FLASH_Status_TypeDef FLASH_WaitForLastOperation(FLASH_MemType_TypeDef FLASH_MemType)) 
1799                     ; 550 {
1800                     .text:	section	.text,new
1801  0000               _FLASH_WaitForLastOperation:
1803  0000 5203          	subw	sp,#3
1804       00000003      OFST:	set	3
1807                     ; 551   uint8_t flagstatus = 0x00;
1809  0002 0f03          	clr	(OFST+0,sp)
1811                     ; 552   uint16_t timeout = OPERATION_TIMEOUT;
1813  0004 aeffff        	ldw	x,#65535
1814  0007 1f01          	ldw	(OFST-2,sp),x
1817  0009 200e          	jra	L575
1818  000b               L175:
1819                     ; 578     flagstatus = (uint8_t)(FLASH->IAPSR & (FLASH_IAPSR_EOP | FLASH_IAPSR_WR_PG_DIS));
1821  000b c6505f        	ld	a,20575
1822  000e a405          	and	a,#5
1823  0010 6b03          	ld	(OFST+0,sp),a
1825                     ; 579     timeout--;
1827  0012 1e01          	ldw	x,(OFST-2,sp)
1828  0014 1d0001        	subw	x,#1
1829  0017 1f01          	ldw	(OFST-2,sp),x
1831  0019               L575:
1832                     ; 576   while((flagstatus == 0x00) && (timeout != 0x00))
1834  0019 0d03          	tnz	(OFST+0,sp)
1835  001b 2604          	jrne	L106
1837  001d 1e01          	ldw	x,(OFST-2,sp)
1838  001f 26ea          	jrne	L175
1839  0021               L106:
1840                     ; 583   if(timeout == 0x00 )
1842  0021 1e01          	ldw	x,(OFST-2,sp)
1843  0023 2604          	jrne	L306
1844                     ; 585     flagstatus = FLASH_STATUS_TIMEOUT;
1846  0025 a602          	ld	a,#2
1847  0027 6b03          	ld	(OFST+0,sp),a
1849  0029               L306:
1850                     ; 588   return((FLASH_Status_TypeDef)flagstatus);
1852  0029 7b03          	ld	a,(OFST+0,sp)
1855  002b 5b03          	addw	sp,#3
1856  002d 81            	ret
1920                     ; 598 IN_RAM(void FLASH_EraseBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType))
1920                     ; 599 {
1921                     .text:	section	.text,new
1922  0000               _FLASH_EraseBlock:
1924  0000 89            	pushw	x
1925  0001 5206          	subw	sp,#6
1926       00000006      OFST:	set	6
1929                     ; 600   uint32_t startaddress = 0;
1931                     ; 610   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
1933  0003 7b0b          	ld	a,(OFST+5,sp)
1934  0005 a1fd          	cp	a,#253
1935  0007 2706          	jreq	L402
1936  0009 7b0b          	ld	a,(OFST+5,sp)
1937  000b a1f7          	cp	a,#247
1938  000d 2603          	jrne	L202
1939  000f               L402:
1940  000f 4f            	clr	a
1941  0010 2010          	jra	L602
1942  0012               L202:
1943  0012 ae0262        	ldw	x,#610
1944  0015 89            	pushw	x
1945  0016 ae0000        	ldw	x,#0
1946  0019 89            	pushw	x
1947  001a ae0010        	ldw	x,#L73
1948  001d cd0000        	call	_assert_failed
1950  0020 5b04          	addw	sp,#4
1951  0022               L602:
1952                     ; 611   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
1954  0022 7b0b          	ld	a,(OFST+5,sp)
1955  0024 a1fd          	cp	a,#253
1956  0026 2626          	jrne	L736
1957                     ; 613     assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
1959  0028 1e07          	ldw	x,(OFST+1,sp)
1960  002a a30080        	cpw	x,#128
1961  002d 2403          	jruge	L012
1962  002f 4f            	clr	a
1963  0030 2010          	jra	L212
1964  0032               L012:
1965  0032 ae0265        	ldw	x,#613
1966  0035 89            	pushw	x
1967  0036 ae0000        	ldw	x,#0
1968  0039 89            	pushw	x
1969  003a ae0010        	ldw	x,#L73
1970  003d cd0000        	call	_assert_failed
1972  0040 5b04          	addw	sp,#4
1973  0042               L212:
1974                     ; 614     startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
1976  0042 ae8000        	ldw	x,#32768
1977  0045 1f05          	ldw	(OFST-1,sp),x
1978  0047 ae0000        	ldw	x,#0
1979  004a 1f03          	ldw	(OFST-3,sp),x
1982  004c 2024          	jra	L146
1983  004e               L736:
1984                     ; 618     assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
1986  004e 1e07          	ldw	x,(OFST+1,sp)
1987  0050 a3000a        	cpw	x,#10
1988  0053 2403          	jruge	L412
1989  0055 4f            	clr	a
1990  0056 2010          	jra	L612
1991  0058               L412:
1992  0058 ae026a        	ldw	x,#618
1993  005b 89            	pushw	x
1994  005c ae0000        	ldw	x,#0
1995  005f 89            	pushw	x
1996  0060 ae0010        	ldw	x,#L73
1997  0063 cd0000        	call	_assert_failed
1999  0066 5b04          	addw	sp,#4
2000  0068               L612:
2001                     ; 619     startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
2003  0068 ae4000        	ldw	x,#16384
2004  006b 1f05          	ldw	(OFST-1,sp),x
2005  006d ae0000        	ldw	x,#0
2006  0070 1f03          	ldw	(OFST-3,sp),x
2008  0072               L146:
2009                     ; 627     pwFlash = (PointerAttr uint32_t *)(MemoryAddressCast)(startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE));
2011  0072 1e07          	ldw	x,(OFST+1,sp)
2012  0074 a640          	ld	a,#64
2013  0076 cd0000        	call	c_cmulx
2015  0079 96            	ldw	x,sp
2016  007a 1c0003        	addw	x,#OFST-3
2017  007d cd0000        	call	c_ladd
2019  0080 be02          	ldw	x,c_lreg+2
2020  0082 1f01          	ldw	(OFST-5,sp),x
2022                     ; 631   FLASH->CR2 |= FLASH_CR2_ERASE;
2024  0084 721a505b      	bset	20571,#5
2025                     ; 632   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NERASE);
2027  0088 721b505c      	bres	20572,#5
2028                     ; 636     *pwFlash = (uint32_t)0;
2030  008c 1e01          	ldw	x,(OFST-5,sp)
2031  008e a600          	ld	a,#0
2032  0090 e703          	ld	(3,x),a
2033  0092 a600          	ld	a,#0
2034  0094 e702          	ld	(2,x),a
2035  0096 a600          	ld	a,#0
2036  0098 e701          	ld	(1,x),a
2037  009a a600          	ld	a,#0
2038  009c f7            	ld	(x),a
2039                     ; 644 }
2042  009d 5b08          	addw	sp,#8
2043  009f 81            	ret
2148                     ; 655 IN_RAM(void FLASH_ProgramBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType, 
2148                     ; 656                         FLASH_ProgramMode_TypeDef FLASH_ProgMode, uint8_t *Buffer))
2148                     ; 657 {
2149                     .text:	section	.text,new
2150  0000               _FLASH_ProgramBlock:
2152  0000 89            	pushw	x
2153  0001 5206          	subw	sp,#6
2154       00000006      OFST:	set	6
2157                     ; 658   uint16_t Count = 0;
2159                     ; 659   uint32_t startaddress = 0;
2161                     ; 662   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
2163  0003 7b0b          	ld	a,(OFST+5,sp)
2164  0005 a1fd          	cp	a,#253
2165  0007 2706          	jreq	L422
2166  0009 7b0b          	ld	a,(OFST+5,sp)
2167  000b a1f7          	cp	a,#247
2168  000d 2603          	jrne	L222
2169  000f               L422:
2170  000f 4f            	clr	a
2171  0010 2010          	jra	L622
2172  0012               L222:
2173  0012 ae0296        	ldw	x,#662
2174  0015 89            	pushw	x
2175  0016 ae0000        	ldw	x,#0
2176  0019 89            	pushw	x
2177  001a ae0010        	ldw	x,#L73
2178  001d cd0000        	call	_assert_failed
2180  0020 5b04          	addw	sp,#4
2181  0022               L622:
2182                     ; 663   assert_param(IS_FLASH_PROGRAM_MODE_OK(FLASH_ProgMode));
2184  0022 0d0c          	tnz	(OFST+6,sp)
2185  0024 2706          	jreq	L232
2186  0026 7b0c          	ld	a,(OFST+6,sp)
2187  0028 a110          	cp	a,#16
2188  002a 2603          	jrne	L032
2189  002c               L232:
2190  002c 4f            	clr	a
2191  002d 2010          	jra	L432
2192  002f               L032:
2193  002f ae0297        	ldw	x,#663
2194  0032 89            	pushw	x
2195  0033 ae0000        	ldw	x,#0
2196  0036 89            	pushw	x
2197  0037 ae0010        	ldw	x,#L73
2198  003a cd0000        	call	_assert_failed
2200  003d 5b04          	addw	sp,#4
2201  003f               L432:
2202                     ; 664   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
2204  003f 7b0b          	ld	a,(OFST+5,sp)
2205  0041 a1fd          	cp	a,#253
2206  0043 2626          	jrne	L517
2207                     ; 666     assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
2209  0045 1e07          	ldw	x,(OFST+1,sp)
2210  0047 a30080        	cpw	x,#128
2211  004a 2403          	jruge	L632
2212  004c 4f            	clr	a
2213  004d 2010          	jra	L042
2214  004f               L632:
2215  004f ae029a        	ldw	x,#666
2216  0052 89            	pushw	x
2217  0053 ae0000        	ldw	x,#0
2218  0056 89            	pushw	x
2219  0057 ae0010        	ldw	x,#L73
2220  005a cd0000        	call	_assert_failed
2222  005d 5b04          	addw	sp,#4
2223  005f               L042:
2224                     ; 667     startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
2226  005f ae8000        	ldw	x,#32768
2227  0062 1f03          	ldw	(OFST-3,sp),x
2228  0064 ae0000        	ldw	x,#0
2229  0067 1f01          	ldw	(OFST-5,sp),x
2232  0069 2024          	jra	L717
2233  006b               L517:
2234                     ; 671     assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
2236  006b 1e07          	ldw	x,(OFST+1,sp)
2237  006d a3000a        	cpw	x,#10
2238  0070 2403          	jruge	L242
2239  0072 4f            	clr	a
2240  0073 2010          	jra	L442
2241  0075               L242:
2242  0075 ae029f        	ldw	x,#671
2243  0078 89            	pushw	x
2244  0079 ae0000        	ldw	x,#0
2245  007c 89            	pushw	x
2246  007d ae0010        	ldw	x,#L73
2247  0080 cd0000        	call	_assert_failed
2249  0083 5b04          	addw	sp,#4
2250  0085               L442:
2251                     ; 672     startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
2253  0085 ae4000        	ldw	x,#16384
2254  0088 1f03          	ldw	(OFST-3,sp),x
2255  008a ae0000        	ldw	x,#0
2256  008d 1f01          	ldw	(OFST-5,sp),x
2258  008f               L717:
2259                     ; 676   startaddress = startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE);
2261  008f 1e07          	ldw	x,(OFST+1,sp)
2262  0091 a640          	ld	a,#64
2263  0093 cd0000        	call	c_cmulx
2265  0096 96            	ldw	x,sp
2266  0097 1c0001        	addw	x,#OFST-5
2267  009a cd0000        	call	c_lgadd
2270                     ; 679   if(FLASH_ProgMode == FLASH_PROGRAMMODE_STANDARD)
2272  009d 0d0c          	tnz	(OFST+6,sp)
2273  009f 260a          	jrne	L127
2274                     ; 682     FLASH->CR2 |= FLASH_CR2_PRG;
2276  00a1 7210505b      	bset	20571,#0
2277                     ; 683     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NPRG);
2279  00a5 7211505c      	bres	20572,#0
2281  00a9 2008          	jra	L327
2282  00ab               L127:
2283                     ; 688     FLASH->CR2 |= FLASH_CR2_FPRG;
2285  00ab 7218505b      	bset	20571,#4
2286                     ; 689     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NFPRG);
2288  00af 7219505c      	bres	20572,#4
2289  00b3               L327:
2290                     ; 693   for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
2292  00b3 5f            	clrw	x
2293  00b4 1f05          	ldw	(OFST-1,sp),x
2295  00b6               L527:
2296                     ; 695     *((PointerAttr uint8_t*) (MemoryAddressCast)startaddress + Count) = ((uint8_t)(Buffer[Count]));
2298  00b6 1e0d          	ldw	x,(OFST+7,sp)
2299  00b8 72fb05        	addw	x,(OFST-1,sp)
2300  00bb f6            	ld	a,(x)
2301  00bc 1e03          	ldw	x,(OFST-3,sp)
2302  00be 72fb05        	addw	x,(OFST-1,sp)
2303  00c1 f7            	ld	(x),a
2304                     ; 693   for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
2306  00c2 1e05          	ldw	x,(OFST-1,sp)
2307  00c4 1c0001        	addw	x,#1
2308  00c7 1f05          	ldw	(OFST-1,sp),x
2312  00c9 1e05          	ldw	x,(OFST-1,sp)
2313  00cb a30040        	cpw	x,#64
2314  00ce 25e6          	jrult	L527
2315                     ; 697 }
2318  00d0 5b08          	addw	sp,#8
2319  00d2 81            	ret
2332                     	xdef	_FLASH_WaitForLastOperation
2333                     	xdef	_FLASH_ProgramBlock
2334                     	xdef	_FLASH_EraseBlock
2335                     	xdef	_FLASH_GetFlagStatus
2336                     	xdef	_FLASH_GetBootSize
2337                     	xdef	_FLASH_GetProgrammingTime
2338                     	xdef	_FLASH_GetLowPowerMode
2339                     	xdef	_FLASH_SetProgrammingTime
2340                     	xdef	_FLASH_SetLowPowerMode
2341                     	xdef	_FLASH_EraseOptionByte
2342                     	xdef	_FLASH_ProgramOptionByte
2343                     	xdef	_FLASH_ReadOptionByte
2344                     	xdef	_FLASH_ProgramWord
2345                     	xdef	_FLASH_ReadByte
2346                     	xdef	_FLASH_ProgramByte
2347                     	xdef	_FLASH_EraseByte
2348                     	xdef	_FLASH_ITConfig
2349                     	xdef	_FLASH_DeInit
2350                     	xdef	_FLASH_Lock
2351                     	xdef	_FLASH_Unlock
2352                     	xref	_assert_failed
2353                     	switch	.const
2354  0010               L73:
2355  0010 2e2e5c6c6962  	dc.b	"..\libs\src\stm8s_"
2356  0022 666c6173682e  	dc.b	"flash.c",0
2357                     	xref.b	c_lreg
2358                     	xref.b	c_x
2359                     	xref.b	c_y
2379                     	xref	c_ladd
2380                     	xref	c_cmulx
2381                     	xref	c_lgadd
2382                     	xref	c_rtol
2383                     	xref	c_umul
2384                     	xref	c_lcmp
2385                     	xref	c_ltor
2386                     	end
