   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
  76                     ; 87 void FLASH_Unlock(FLASH_MemType_TypeDef FLASH_MemType)
  76                     ; 88 {
  78                     .text:	section	.text,new
  79  0000               _FLASH_Unlock:
  83                     ; 90   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
  85                     ; 93   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
  87  0000 a1fd          	cp	a,#253
  88  0002 260a          	jrne	L73
  89                     ; 95     FLASH->PUKR = FLASH_RASS_KEY1;
  91  0004 35565062      	mov	20578,#86
  92                     ; 96     FLASH->PUKR = FLASH_RASS_KEY2;
  94  0008 35ae5062      	mov	20578,#174
  96  000c 2008          	jra	L14
  97  000e               L73:
  98                     ; 101     FLASH->DUKR = FLASH_RASS_KEY2; /* Warning: keys are reversed on data memory !!! */
 100  000e 35ae5064      	mov	20580,#174
 101                     ; 102     FLASH->DUKR = FLASH_RASS_KEY1;
 103  0012 35565064      	mov	20580,#86
 104  0016               L14:
 105                     ; 104 }
 108  0016 81            	ret
 143                     ; 112 void FLASH_Lock(FLASH_MemType_TypeDef FLASH_MemType)
 143                     ; 113 {
 144                     .text:	section	.text,new
 145  0000               _FLASH_Lock:
 149                     ; 115   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
 151                     ; 118   FLASH->IAPSR &= (uint8_t)FLASH_MemType;
 153  0000 c4505f        	and	a,20575
 154  0003 c7505f        	ld	20575,a
 155                     ; 119 }
 158  0006 81            	ret
 181                     ; 126 void FLASH_DeInit(void)
 181                     ; 127 {
 182                     .text:	section	.text,new
 183  0000               _FLASH_DeInit:
 187                     ; 128   FLASH->CR1 = FLASH_CR1_RESET_VALUE;
 189  0000 725f505a      	clr	20570
 190                     ; 129   FLASH->CR2 = FLASH_CR2_RESET_VALUE;
 192  0004 725f505b      	clr	20571
 193                     ; 130   FLASH->NCR2 = FLASH_NCR2_RESET_VALUE;
 195  0008 35ff505c      	mov	20572,#255
 196                     ; 131   FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_DUL);
 198  000c 7217505f      	bres	20575,#3
 199                     ; 132   FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_PUL);
 201  0010 7213505f      	bres	20575,#1
 202                     ; 133   (void) FLASH->IAPSR; /* Reading of this register causes the clearing of status flags */
 204  0014 c6505f        	ld	a,20575
 205                     ; 134 }
 208  0017 81            	ret
 263                     ; 142 void FLASH_ITConfig(FunctionalState NewState)
 263                     ; 143 {
 264                     .text:	section	.text,new
 265  0000               _FLASH_ITConfig:
 269                     ; 145   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 271                     ; 147   if(NewState != DISABLE)
 273  0000 4d            	tnz	a
 274  0001 2706          	jreq	L711
 275                     ; 149     FLASH->CR1 |= FLASH_CR1_IE; /* Enables the interrupt sources */
 277  0003 7212505a      	bset	20570,#1
 279  0007 2004          	jra	L121
 280  0009               L711:
 281                     ; 153     FLASH->CR1 &= (uint8_t)(~FLASH_CR1_IE); /* Disables the interrupt sources */
 283  0009 7213505a      	bres	20570,#1
 284  000d               L121:
 285                     ; 155 }
 288  000d 81            	ret
 322                     ; 164 void FLASH_EraseByte(uint32_t Address)
 322                     ; 165 {
 323                     .text:	section	.text,new
 324  0000               _FLASH_EraseByte:
 326       00000000      OFST:	set	0
 329                     ; 167   assert_param(IS_FLASH_ADDRESS_OK(Address));
 331                     ; 170   *(PointerAttr uint8_t*) (MemoryAddressCast)Address = FLASH_CLEAR_BYTE; 
 333  0000 1e05          	ldw	x,(OFST+5,sp)
 334  0002 7f            	clr	(x)
 335                     ; 171 }
 338  0003 81            	ret
 381                     ; 181 void FLASH_ProgramByte(uint32_t Address, uint8_t Data)
 381                     ; 182 {
 382                     .text:	section	.text,new
 383  0000               _FLASH_ProgramByte:
 385       00000000      OFST:	set	0
 388                     ; 184   assert_param(IS_FLASH_ADDRESS_OK(Address));
 390                     ; 185   *(PointerAttr uint8_t*) (MemoryAddressCast)Address = Data;
 392  0000 7b07          	ld	a,(OFST+7,sp)
 393  0002 1e05          	ldw	x,(OFST+5,sp)
 394  0004 f7            	ld	(x),a
 395                     ; 186 }
 398  0005 81            	ret
 432                     ; 195 uint8_t FLASH_ReadByte(uint32_t Address)
 432                     ; 196 {
 433                     .text:	section	.text,new
 434  0000               _FLASH_ReadByte:
 436       00000000      OFST:	set	0
 439                     ; 198   assert_param(IS_FLASH_ADDRESS_OK(Address));
 441                     ; 201   return(*(PointerAttr uint8_t *) (MemoryAddressCast)Address); 
 443  0000 1e05          	ldw	x,(OFST+5,sp)
 444  0002 f6            	ld	a,(x)
 447  0003 81            	ret
 490                     ; 212 void FLASH_ProgramWord(uint32_t Address, uint32_t Data)
 490                     ; 213 {
 491                     .text:	section	.text,new
 492  0000               _FLASH_ProgramWord:
 494       00000000      OFST:	set	0
 497                     ; 215   assert_param(IS_FLASH_ADDRESS_OK(Address));
 499                     ; 218   FLASH->CR2 |= FLASH_CR2_WPRG;
 501  0000 721c505b      	bset	20571,#6
 502                     ; 219   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NWPRG);
 504  0004 721d505c      	bres	20572,#6
 505                     ; 222   *((PointerAttr uint8_t*)(MemoryAddressCast)Address)       = *((uint8_t*)(&Data));
 507  0008 7b07          	ld	a,(OFST+7,sp)
 508  000a 1e05          	ldw	x,(OFST+5,sp)
 509  000c f7            	ld	(x),a
 510                     ; 224   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 1) = *((uint8_t*)(&Data)+1); 
 512  000d 7b08          	ld	a,(OFST+8,sp)
 513  000f 1e05          	ldw	x,(OFST+5,sp)
 514  0011 e701          	ld	(1,x),a
 515                     ; 226   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 2) = *((uint8_t*)(&Data)+2); 
 517  0013 7b09          	ld	a,(OFST+9,sp)
 518  0015 1e05          	ldw	x,(OFST+5,sp)
 519  0017 e702          	ld	(2,x),a
 520                     ; 228   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 3) = *((uint8_t*)(&Data)+3); 
 522  0019 7b0a          	ld	a,(OFST+10,sp)
 523  001b 1e05          	ldw	x,(OFST+5,sp)
 524  001d e703          	ld	(3,x),a
 525                     ; 229 }
 528  001f 81            	ret
 573                     ; 237 void FLASH_ProgramOptionByte(uint16_t Address, uint8_t Data)
 573                     ; 238 {
 574                     .text:	section	.text,new
 575  0000               _FLASH_ProgramOptionByte:
 577  0000 89            	pushw	x
 578       00000000      OFST:	set	0
 581                     ; 240   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 583                     ; 243   FLASH->CR2 |= FLASH_CR2_OPT;
 585  0001 721e505b      	bset	20571,#7
 586                     ; 244   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
 588  0005 721f505c      	bres	20572,#7
 589                     ; 247   if(Address == 0x4800)
 591  0009 a34800        	cpw	x,#18432
 592  000c 2607          	jrne	L542
 593                     ; 250     *((NEAR uint8_t*)Address) = Data;
 595  000e 7b05          	ld	a,(OFST+5,sp)
 596  0010 1e01          	ldw	x,(OFST+1,sp)
 597  0012 f7            	ld	(x),a
 599  0013 200c          	jra	L742
 600  0015               L542:
 601                     ; 255     *((NEAR uint8_t*)Address) = Data;
 603  0015 7b05          	ld	a,(OFST+5,sp)
 604  0017 1e01          	ldw	x,(OFST+1,sp)
 605  0019 f7            	ld	(x),a
 606                     ; 256     *((NEAR uint8_t*)((uint16_t)(Address + 1))) = (uint8_t)(~Data);
 608  001a 7b05          	ld	a,(OFST+5,sp)
 609  001c 43            	cpl	a
 610  001d 1e01          	ldw	x,(OFST+1,sp)
 611  001f e701          	ld	(1,x),a
 612  0021               L742:
 613                     ; 258   FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
 615  0021 a6fd          	ld	a,#253
 616  0023 cd0000        	call	_FLASH_WaitForLastOperation
 618                     ; 261   FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
 620  0026 721f505b      	bres	20571,#7
 621                     ; 262   FLASH->NCR2 |= FLASH_NCR2_NOPT;
 623  002a 721e505c      	bset	20572,#7
 624                     ; 263 }
 627  002e 85            	popw	x
 628  002f 81            	ret
 664                     ; 270 void FLASH_EraseOptionByte(uint16_t Address)
 664                     ; 271 {
 665                     .text:	section	.text,new
 666  0000               _FLASH_EraseOptionByte:
 668  0000 89            	pushw	x
 669       00000000      OFST:	set	0
 672                     ; 273   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 674                     ; 276   FLASH->CR2 |= FLASH_CR2_OPT;
 676  0001 721e505b      	bset	20571,#7
 677                     ; 277   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
 679  0005 721f505c      	bres	20572,#7
 680                     ; 280   if(Address == 0x4800)
 682  0009 a34800        	cpw	x,#18432
 683  000c 2603          	jrne	L762
 684                     ; 283     *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
 686  000e 7f            	clr	(x)
 688  000f 2009          	jra	L172
 689  0011               L762:
 690                     ; 288     *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
 692  0011 1e01          	ldw	x,(OFST+1,sp)
 693  0013 7f            	clr	(x)
 694                     ; 289     *((NEAR uint8_t*)((uint16_t)(Address + (uint16_t)1 ))) = FLASH_SET_BYTE;
 696  0014 1e01          	ldw	x,(OFST+1,sp)
 697  0016 a6ff          	ld	a,#255
 698  0018 e701          	ld	(1,x),a
 699  001a               L172:
 700                     ; 291   FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
 702  001a a6fd          	ld	a,#253
 703  001c cd0000        	call	_FLASH_WaitForLastOperation
 705                     ; 294   FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
 707  001f 721f505b      	bres	20571,#7
 708                     ; 295   FLASH->NCR2 |= FLASH_NCR2_NOPT;
 710  0023 721e505c      	bset	20572,#7
 711                     ; 296 }
 714  0027 85            	popw	x
 715  0028 81            	ret
 778                     ; 303 uint16_t FLASH_ReadOptionByte(uint16_t Address)
 778                     ; 304 {
 779                     .text:	section	.text,new
 780  0000               _FLASH_ReadOptionByte:
 782  0000 5204          	subw	sp,#4
 783       00000004      OFST:	set	4
 786                     ; 305   uint8_t value_optbyte, value_optbyte_complement = 0;
 788                     ; 306   uint16_t res_value = 0;
 790                     ; 309   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 792                     ; 311   value_optbyte = *((NEAR uint8_t*)Address); /* Read option byte */
 794  0002 f6            	ld	a,(x)
 795  0003 6b01          	ld	(OFST-3,sp),a
 797                     ; 312   value_optbyte_complement = *(((NEAR uint8_t*)Address) + 1); /* Read option byte complement */
 799  0005 e601          	ld	a,(1,x)
 800  0007 6b02          	ld	(OFST-2,sp),a
 802                     ; 315   if(Address == 0x4800)	 
 804  0009 a34800        	cpw	x,#18432
 805  000c 2608          	jrne	L523
 806                     ; 317     res_value =	 value_optbyte;
 808  000e 7b01          	ld	a,(OFST-3,sp)
 809  0010 5f            	clrw	x
 810  0011 97            	ld	xl,a
 811  0012 1f03          	ldw	(OFST-1,sp),x
 814  0014 2023          	jra	L723
 815  0016               L523:
 816                     ; 321     if(value_optbyte == (uint8_t)(~value_optbyte_complement))
 818  0016 7b02          	ld	a,(OFST-2,sp)
 819  0018 43            	cpl	a
 820  0019 1101          	cp	a,(OFST-3,sp)
 821  001b 2617          	jrne	L133
 822                     ; 323       res_value = (uint16_t)((uint16_t)value_optbyte << 8);
 824  001d 7b01          	ld	a,(OFST-3,sp)
 825  001f 5f            	clrw	x
 826  0020 97            	ld	xl,a
 827  0021 4f            	clr	a
 828  0022 02            	rlwa	x,a
 829  0023 1f03          	ldw	(OFST-1,sp),x
 831                     ; 324       res_value = res_value | (uint16_t)value_optbyte_complement;
 833  0025 7b02          	ld	a,(OFST-2,sp)
 834  0027 5f            	clrw	x
 835  0028 97            	ld	xl,a
 836  0029 01            	rrwa	x,a
 837  002a 1a04          	or	a,(OFST+0,sp)
 838  002c 01            	rrwa	x,a
 839  002d 1a03          	or	a,(OFST-1,sp)
 840  002f 01            	rrwa	x,a
 841  0030 1f03          	ldw	(OFST-1,sp),x
 844  0032 2005          	jra	L723
 845  0034               L133:
 846                     ; 328       res_value = FLASH_OPTIONBYTE_ERROR;
 848  0034 ae5555        	ldw	x,#21845
 849  0037 1f03          	ldw	(OFST-1,sp),x
 851  0039               L723:
 852                     ; 331   return(res_value);
 854  0039 1e03          	ldw	x,(OFST-1,sp)
 857  003b 5b04          	addw	sp,#4
 858  003d 81            	ret
 932                     ; 340 void FLASH_SetLowPowerMode(FLASH_LPMode_TypeDef FLASH_LPMode)
 932                     ; 341 {
 933                     .text:	section	.text,new
 934  0000               _FLASH_SetLowPowerMode:
 936  0000 88            	push	a
 937       00000000      OFST:	set	0
 940                     ; 343   assert_param(IS_FLASH_LOW_POWER_MODE_OK(FLASH_LPMode));
 942                     ; 346   FLASH->CR1 &= (uint8_t)(~(FLASH_CR1_HALT | FLASH_CR1_AHALT)); 
 944  0001 c6505a        	ld	a,20570
 945  0004 a4f3          	and	a,#243
 946  0006 c7505a        	ld	20570,a
 947                     ; 349   FLASH->CR1 |= (uint8_t)FLASH_LPMode; 
 949  0009 c6505a        	ld	a,20570
 950  000c 1a01          	or	a,(OFST+1,sp)
 951  000e c7505a        	ld	20570,a
 952                     ; 350 }
 955  0011 84            	pop	a
 956  0012 81            	ret
1014                     ; 358 void FLASH_SetProgrammingTime(FLASH_ProgramTime_TypeDef FLASH_ProgTime)
1014                     ; 359 {
1015                     .text:	section	.text,new
1016  0000               _FLASH_SetProgrammingTime:
1020                     ; 361   assert_param(IS_FLASH_PROGRAM_TIME_OK(FLASH_ProgTime));
1022                     ; 363   FLASH->CR1 &= (uint8_t)(~FLASH_CR1_FIX);
1024  0000 7211505a      	bres	20570,#0
1025                     ; 364   FLASH->CR1 |= (uint8_t)FLASH_ProgTime;
1027  0004 ca505a        	or	a,20570
1028  0007 c7505a        	ld	20570,a
1029                     ; 365 }
1032  000a 81            	ret
1057                     ; 372 FLASH_LPMode_TypeDef FLASH_GetLowPowerMode(void)
1057                     ; 373 {
1058                     .text:	section	.text,new
1059  0000               _FLASH_GetLowPowerMode:
1063                     ; 374   return((FLASH_LPMode_TypeDef)(FLASH->CR1 & (uint8_t)(FLASH_CR1_HALT | FLASH_CR1_AHALT)));
1065  0000 c6505a        	ld	a,20570
1066  0003 a40c          	and	a,#12
1069  0005 81            	ret
1094                     ; 382 FLASH_ProgramTime_TypeDef FLASH_GetProgrammingTime(void)
1094                     ; 383 {
1095                     .text:	section	.text,new
1096  0000               _FLASH_GetProgrammingTime:
1100                     ; 384   return((FLASH_ProgramTime_TypeDef)(FLASH->CR1 & FLASH_CR1_FIX));
1102  0000 c6505a        	ld	a,20570
1103  0003 a401          	and	a,#1
1106  0005 81            	ret
1140                     ; 392 uint32_t FLASH_GetBootSize(void)
1140                     ; 393 {
1141                     .text:	section	.text,new
1142  0000               _FLASH_GetBootSize:
1144  0000 5204          	subw	sp,#4
1145       00000004      OFST:	set	4
1148                     ; 394   uint32_t temp = 0;
1150                     ; 397   temp = (uint32_t)((uint32_t)FLASH->FPR * (uint32_t)512);
1152  0002 c6505d        	ld	a,20573
1153  0005 5f            	clrw	x
1154  0006 97            	ld	xl,a
1155  0007 90ae0200      	ldw	y,#512
1156  000b cd0000        	call	c_umul
1158  000e 96            	ldw	x,sp
1159  000f 1c0001        	addw	x,#OFST-3
1160  0012 cd0000        	call	c_rtol
1163                     ; 400   if(FLASH->FPR == 0xFF)
1165  0015 c6505d        	ld	a,20573
1166  0018 a1ff          	cp	a,#255
1167  001a 2611          	jrne	L354
1168                     ; 402     temp += 512;
1170  001c ae0200        	ldw	x,#512
1171  001f bf02          	ldw	c_lreg+2,x
1172  0021 ae0000        	ldw	x,#0
1173  0024 bf00          	ldw	c_lreg,x
1174  0026 96            	ldw	x,sp
1175  0027 1c0001        	addw	x,#OFST-3
1176  002a cd0000        	call	c_lgadd
1179  002d               L354:
1180                     ; 406   return(temp);
1182  002d 96            	ldw	x,sp
1183  002e 1c0001        	addw	x,#OFST-3
1184  0031 cd0000        	call	c_ltor
1188  0034 5b04          	addw	sp,#4
1189  0036 81            	ret
1291                     ; 417 FlagStatus FLASH_GetFlagStatus(FLASH_Flag_TypeDef FLASH_FLAG)
1291                     ; 418 {
1292                     .text:	section	.text,new
1293  0000               _FLASH_GetFlagStatus:
1295  0000 88            	push	a
1296       00000001      OFST:	set	1
1299                     ; 419   FlagStatus status = RESET;
1301                     ; 421   assert_param(IS_FLASH_FLAGS_OK(FLASH_FLAG));
1303                     ; 424   if((FLASH->IAPSR & (uint8_t)FLASH_FLAG) != (uint8_t)RESET)
1305  0001 c4505f        	and	a,20575
1306  0004 2706          	jreq	L325
1307                     ; 426     status = SET; /* FLASH_FLAG is set */
1309  0006 a601          	ld	a,#1
1310  0008 6b01          	ld	(OFST+0,sp),a
1313  000a 2002          	jra	L525
1314  000c               L325:
1315                     ; 430     status = RESET; /* FLASH_FLAG is reset*/
1317  000c 0f01          	clr	(OFST+0,sp)
1319  000e               L525:
1320                     ; 434   return status;
1322  000e 7b01          	ld	a,(OFST+0,sp)
1325  0010 5b01          	addw	sp,#1
1326  0012 81            	ret
1411                     ; 549 IN_RAM(FLASH_Status_TypeDef FLASH_WaitForLastOperation(FLASH_MemType_TypeDef FLASH_MemType)) 
1411                     ; 550 {
1412                     .text:	section	.text,new
1413  0000               _FLASH_WaitForLastOperation:
1415  0000 5203          	subw	sp,#3
1416       00000003      OFST:	set	3
1419                     ; 551   uint8_t flagstatus = 0x00;
1421  0002 0f03          	clr	(OFST+0,sp)
1423                     ; 552   uint16_t timeout = OPERATION_TIMEOUT;
1425  0004 aeffff        	ldw	x,#65535
1426  0007 1f01          	ldw	(OFST-2,sp),x
1429  0009 200e          	jra	L375
1430  000b               L765:
1431                     ; 578     flagstatus = (uint8_t)(FLASH->IAPSR & (FLASH_IAPSR_EOP | FLASH_IAPSR_WR_PG_DIS));
1433  000b c6505f        	ld	a,20575
1434  000e a405          	and	a,#5
1435  0010 6b03          	ld	(OFST+0,sp),a
1437                     ; 579     timeout--;
1439  0012 1e01          	ldw	x,(OFST-2,sp)
1440  0014 1d0001        	subw	x,#1
1441  0017 1f01          	ldw	(OFST-2,sp),x
1443  0019               L375:
1444                     ; 576   while((flagstatus == 0x00) && (timeout != 0x00))
1446  0019 0d03          	tnz	(OFST+0,sp)
1447  001b 2604          	jrne	L775
1449  001d 1e01          	ldw	x,(OFST-2,sp)
1450  001f 26ea          	jrne	L765
1451  0021               L775:
1452                     ; 583   if(timeout == 0x00 )
1454  0021 1e01          	ldw	x,(OFST-2,sp)
1455  0023 2604          	jrne	L106
1456                     ; 585     flagstatus = FLASH_STATUS_TIMEOUT;
1458  0025 a602          	ld	a,#2
1459  0027 6b03          	ld	(OFST+0,sp),a
1461  0029               L106:
1462                     ; 588   return((FLASH_Status_TypeDef)flagstatus);
1464  0029 7b03          	ld	a,(OFST+0,sp)
1467  002b 5b03          	addw	sp,#3
1468  002d 81            	ret
1531                     ; 598 IN_RAM(void FLASH_EraseBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType))
1531                     ; 599 {
1532                     .text:	section	.text,new
1533  0000               _FLASH_EraseBlock:
1535  0000 89            	pushw	x
1536  0001 5206          	subw	sp,#6
1537       00000006      OFST:	set	6
1540                     ; 600   uint32_t startaddress = 0;
1542                     ; 610   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
1544                     ; 611   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
1546  0003 7b0b          	ld	a,(OFST+5,sp)
1547  0005 a1fd          	cp	a,#253
1548  0007 260c          	jrne	L536
1549                     ; 613     assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
1551                     ; 614     startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
1553  0009 ae8000        	ldw	x,#32768
1554  000c 1f05          	ldw	(OFST-1,sp),x
1555  000e ae0000        	ldw	x,#0
1556  0011 1f03          	ldw	(OFST-3,sp),x
1559  0013 200a          	jra	L736
1560  0015               L536:
1561                     ; 618     assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
1563                     ; 619     startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
1565  0015 ae4000        	ldw	x,#16384
1566  0018 1f05          	ldw	(OFST-1,sp),x
1567  001a ae0000        	ldw	x,#0
1568  001d 1f03          	ldw	(OFST-3,sp),x
1570  001f               L736:
1571                     ; 627     pwFlash = (PointerAttr uint32_t *)(MemoryAddressCast)(startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE));
1573  001f 1e07          	ldw	x,(OFST+1,sp)
1574  0021 a640          	ld	a,#64
1575  0023 cd0000        	call	c_cmulx
1577  0026 96            	ldw	x,sp
1578  0027 1c0003        	addw	x,#OFST-3
1579  002a cd0000        	call	c_ladd
1581  002d be02          	ldw	x,c_lreg+2
1582  002f 1f01          	ldw	(OFST-5,sp),x
1584                     ; 631   FLASH->CR2 |= FLASH_CR2_ERASE;
1586  0031 721a505b      	bset	20571,#5
1587                     ; 632   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NERASE);
1589  0035 721b505c      	bres	20572,#5
1590                     ; 636     *pwFlash = (uint32_t)0;
1592  0039 1e01          	ldw	x,(OFST-5,sp)
1593  003b a600          	ld	a,#0
1594  003d e703          	ld	(3,x),a
1595  003f a600          	ld	a,#0
1596  0041 e702          	ld	(2,x),a
1597  0043 a600          	ld	a,#0
1598  0045 e701          	ld	(1,x),a
1599  0047 a600          	ld	a,#0
1600  0049 f7            	ld	(x),a
1601                     ; 644 }
1604  004a 5b08          	addw	sp,#8
1605  004c 81            	ret
1709                     ; 655 IN_RAM(void FLASH_ProgramBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType, 
1709                     ; 656                         FLASH_ProgramMode_TypeDef FLASH_ProgMode, uint8_t *Buffer))
1709                     ; 657 {
1710                     .text:	section	.text,new
1711  0000               _FLASH_ProgramBlock:
1713  0000 89            	pushw	x
1714  0001 5206          	subw	sp,#6
1715       00000006      OFST:	set	6
1718                     ; 658   uint16_t Count = 0;
1720                     ; 659   uint32_t startaddress = 0;
1722                     ; 662   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
1724                     ; 663   assert_param(IS_FLASH_PROGRAM_MODE_OK(FLASH_ProgMode));
1726                     ; 664   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
1728  0003 7b0b          	ld	a,(OFST+5,sp)
1729  0005 a1fd          	cp	a,#253
1730  0007 260c          	jrne	L317
1731                     ; 666     assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
1733                     ; 667     startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
1735  0009 ae8000        	ldw	x,#32768
1736  000c 1f03          	ldw	(OFST-3,sp),x
1737  000e ae0000        	ldw	x,#0
1738  0011 1f01          	ldw	(OFST-5,sp),x
1741  0013 200a          	jra	L517
1742  0015               L317:
1743                     ; 671     assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
1745                     ; 672     startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
1747  0015 ae4000        	ldw	x,#16384
1748  0018 1f03          	ldw	(OFST-3,sp),x
1749  001a ae0000        	ldw	x,#0
1750  001d 1f01          	ldw	(OFST-5,sp),x
1752  001f               L517:
1753                     ; 676   startaddress = startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE);
1755  001f 1e07          	ldw	x,(OFST+1,sp)
1756  0021 a640          	ld	a,#64
1757  0023 cd0000        	call	c_cmulx
1759  0026 96            	ldw	x,sp
1760  0027 1c0001        	addw	x,#OFST-5
1761  002a cd0000        	call	c_lgadd
1764                     ; 679   if(FLASH_ProgMode == FLASH_PROGRAMMODE_STANDARD)
1766  002d 0d0c          	tnz	(OFST+6,sp)
1767  002f 260a          	jrne	L717
1768                     ; 682     FLASH->CR2 |= FLASH_CR2_PRG;
1770  0031 7210505b      	bset	20571,#0
1771                     ; 683     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NPRG);
1773  0035 7211505c      	bres	20572,#0
1775  0039 2008          	jra	L127
1776  003b               L717:
1777                     ; 688     FLASH->CR2 |= FLASH_CR2_FPRG;
1779  003b 7218505b      	bset	20571,#4
1780                     ; 689     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NFPRG);
1782  003f 7219505c      	bres	20572,#4
1783  0043               L127:
1784                     ; 693   for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
1786  0043 5f            	clrw	x
1787  0044 1f05          	ldw	(OFST-1,sp),x
1789  0046               L327:
1790                     ; 695     *((PointerAttr uint8_t*) (MemoryAddressCast)startaddress + Count) = ((uint8_t)(Buffer[Count]));
1792  0046 1e0d          	ldw	x,(OFST+7,sp)
1793  0048 72fb05        	addw	x,(OFST-1,sp)
1794  004b f6            	ld	a,(x)
1795  004c 1e03          	ldw	x,(OFST-3,sp)
1796  004e 72fb05        	addw	x,(OFST-1,sp)
1797  0051 f7            	ld	(x),a
1798                     ; 693   for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
1800  0052 1e05          	ldw	x,(OFST-1,sp)
1801  0054 1c0001        	addw	x,#1
1802  0057 1f05          	ldw	(OFST-1,sp),x
1806  0059 1e05          	ldw	x,(OFST-1,sp)
1807  005b a30040        	cpw	x,#64
1808  005e 25e6          	jrult	L327
1809                     ; 697 }
1812  0060 5b08          	addw	sp,#8
1813  0062 81            	ret
1826                     	xdef	_FLASH_WaitForLastOperation
1827                     	xdef	_FLASH_ProgramBlock
1828                     	xdef	_FLASH_EraseBlock
1829                     	xdef	_FLASH_GetFlagStatus
1830                     	xdef	_FLASH_GetBootSize
1831                     	xdef	_FLASH_GetProgrammingTime
1832                     	xdef	_FLASH_GetLowPowerMode
1833                     	xdef	_FLASH_SetProgrammingTime
1834                     	xdef	_FLASH_SetLowPowerMode
1835                     	xdef	_FLASH_EraseOptionByte
1836                     	xdef	_FLASH_ProgramOptionByte
1837                     	xdef	_FLASH_ReadOptionByte
1838                     	xdef	_FLASH_ProgramWord
1839                     	xdef	_FLASH_ReadByte
1840                     	xdef	_FLASH_ProgramByte
1841                     	xdef	_FLASH_EraseByte
1842                     	xdef	_FLASH_ITConfig
1843                     	xdef	_FLASH_DeInit
1844                     	xdef	_FLASH_Lock
1845                     	xdef	_FLASH_Unlock
1846                     	xref.b	c_lreg
1847                     	xref.b	c_x
1848                     	xref.b	c_y
1867                     	xref	c_ladd
1868                     	xref	c_cmulx
1869                     	xref	c_ltor
1870                     	xref	c_lgadd
1871                     	xref	c_rtol
1872                     	xref	c_umul
1873                     	end
