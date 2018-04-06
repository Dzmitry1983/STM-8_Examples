   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
 110                     ; 53 void GPIO_DeInit(GPIO_TypeDef* GPIOx)
 110                     ; 54 {
 112                     .text:	section	.text,new
 113  0000               _GPIO_DeInit:
 117                     ; 55   GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
 119  0000 7f            	clr	(x)
 120                     ; 56   GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
 122  0001 6f02          	clr	(2,x)
 123                     ; 57   GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
 125  0003 6f03          	clr	(3,x)
 126                     ; 58   GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
 128  0005 6f04          	clr	(4,x)
 129                     ; 59 }
 132  0007 81            	ret
 373                     ; 71 void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
 373                     ; 72 {
 374                     .text:	section	.text,new
 375  0000               _GPIO_Init:
 377  0000 89            	pushw	x
 378       00000000      OFST:	set	0
 381                     ; 77   assert_param(IS_GPIO_MODE_OK(GPIO_Mode));
 383  0001 0d06          	tnz	(OFST+6,sp)
 384  0003 2742          	jreq	L21
 385  0005 7b06          	ld	a,(OFST+6,sp)
 386  0007 a140          	cp	a,#64
 387  0009 273c          	jreq	L21
 388  000b 7b06          	ld	a,(OFST+6,sp)
 389  000d a120          	cp	a,#32
 390  000f 2736          	jreq	L21
 391  0011 7b06          	ld	a,(OFST+6,sp)
 392  0013 a160          	cp	a,#96
 393  0015 2730          	jreq	L21
 394  0017 7b06          	ld	a,(OFST+6,sp)
 395  0019 a1a0          	cp	a,#160
 396  001b 272a          	jreq	L21
 397  001d 7b06          	ld	a,(OFST+6,sp)
 398  001f a1e0          	cp	a,#224
 399  0021 2724          	jreq	L21
 400  0023 7b06          	ld	a,(OFST+6,sp)
 401  0025 a180          	cp	a,#128
 402  0027 271e          	jreq	L21
 403  0029 7b06          	ld	a,(OFST+6,sp)
 404  002b a1c0          	cp	a,#192
 405  002d 2718          	jreq	L21
 406  002f 7b06          	ld	a,(OFST+6,sp)
 407  0031 a1b0          	cp	a,#176
 408  0033 2712          	jreq	L21
 409  0035 7b06          	ld	a,(OFST+6,sp)
 410  0037 a1f0          	cp	a,#240
 411  0039 270c          	jreq	L21
 412  003b 7b06          	ld	a,(OFST+6,sp)
 413  003d a190          	cp	a,#144
 414  003f 2706          	jreq	L21
 415  0041 7b06          	ld	a,(OFST+6,sp)
 416  0043 a1d0          	cp	a,#208
 417  0045 2603          	jrne	L01
 418  0047               L21:
 419  0047 4f            	clr	a
 420  0048 2010          	jra	L41
 421  004a               L01:
 422  004a ae004d        	ldw	x,#77
 423  004d 89            	pushw	x
 424  004e ae0000        	ldw	x,#0
 425  0051 89            	pushw	x
 426  0052 ae0000        	ldw	x,#L771
 427  0055 cd0000        	call	_assert_failed
 429  0058 5b04          	addw	sp,#4
 430  005a               L41:
 431                     ; 78   assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
 433  005a 0d05          	tnz	(OFST+5,sp)
 434  005c 2703          	jreq	L61
 435  005e 4f            	clr	a
 436  005f 2010          	jra	L02
 437  0061               L61:
 438  0061 ae004e        	ldw	x,#78
 439  0064 89            	pushw	x
 440  0065 ae0000        	ldw	x,#0
 441  0068 89            	pushw	x
 442  0069 ae0000        	ldw	x,#L771
 443  006c cd0000        	call	_assert_failed
 445  006f 5b04          	addw	sp,#4
 446  0071               L02:
 447                     ; 81   GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
 449  0071 1e01          	ldw	x,(OFST+1,sp)
 450  0073 7b05          	ld	a,(OFST+5,sp)
 451  0075 43            	cpl	a
 452  0076 e404          	and	a,(4,x)
 453  0078 e704          	ld	(4,x),a
 454                     ; 87   if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
 456  007a 7b06          	ld	a,(OFST+6,sp)
 457  007c a580          	bcp	a,#128
 458  007e 271f          	jreq	L102
 459                     ; 89     if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
 461  0080 7b06          	ld	a,(OFST+6,sp)
 462  0082 a510          	bcp	a,#16
 463  0084 2708          	jreq	L302
 464                     ; 91       GPIOx->ODR |= (uint8_t)GPIO_Pin;
 466  0086 1e01          	ldw	x,(OFST+1,sp)
 467  0088 f6            	ld	a,(x)
 468  0089 1a05          	or	a,(OFST+5,sp)
 469  008b f7            	ld	(x),a
 471  008c 2007          	jra	L502
 472  008e               L302:
 473                     ; 95       GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
 475  008e 1e01          	ldw	x,(OFST+1,sp)
 476  0090 7b05          	ld	a,(OFST+5,sp)
 477  0092 43            	cpl	a
 478  0093 f4            	and	a,(x)
 479  0094 f7            	ld	(x),a
 480  0095               L502:
 481                     ; 98     GPIOx->DDR |= (uint8_t)GPIO_Pin;
 483  0095 1e01          	ldw	x,(OFST+1,sp)
 484  0097 e602          	ld	a,(2,x)
 485  0099 1a05          	or	a,(OFST+5,sp)
 486  009b e702          	ld	(2,x),a
 488  009d 2009          	jra	L702
 489  009f               L102:
 490                     ; 103     GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
 492  009f 1e01          	ldw	x,(OFST+1,sp)
 493  00a1 7b05          	ld	a,(OFST+5,sp)
 494  00a3 43            	cpl	a
 495  00a4 e402          	and	a,(2,x)
 496  00a6 e702          	ld	(2,x),a
 497  00a8               L702:
 498                     ; 110   if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
 500  00a8 7b06          	ld	a,(OFST+6,sp)
 501  00aa a540          	bcp	a,#64
 502  00ac 270a          	jreq	L112
 503                     ; 112     GPIOx->CR1 |= (uint8_t)GPIO_Pin;
 505  00ae 1e01          	ldw	x,(OFST+1,sp)
 506  00b0 e603          	ld	a,(3,x)
 507  00b2 1a05          	or	a,(OFST+5,sp)
 508  00b4 e703          	ld	(3,x),a
 510  00b6 2009          	jra	L312
 511  00b8               L112:
 512                     ; 116     GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
 514  00b8 1e01          	ldw	x,(OFST+1,sp)
 515  00ba 7b05          	ld	a,(OFST+5,sp)
 516  00bc 43            	cpl	a
 517  00bd e403          	and	a,(3,x)
 518  00bf e703          	ld	(3,x),a
 519  00c1               L312:
 520                     ; 123   if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
 522  00c1 7b06          	ld	a,(OFST+6,sp)
 523  00c3 a520          	bcp	a,#32
 524  00c5 270a          	jreq	L512
 525                     ; 125     GPIOx->CR2 |= (uint8_t)GPIO_Pin;
 527  00c7 1e01          	ldw	x,(OFST+1,sp)
 528  00c9 e604          	ld	a,(4,x)
 529  00cb 1a05          	or	a,(OFST+5,sp)
 530  00cd e704          	ld	(4,x),a
 532  00cf 2009          	jra	L712
 533  00d1               L512:
 534                     ; 129     GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
 536  00d1 1e01          	ldw	x,(OFST+1,sp)
 537  00d3 7b05          	ld	a,(OFST+5,sp)
 538  00d5 43            	cpl	a
 539  00d6 e404          	and	a,(4,x)
 540  00d8 e704          	ld	(4,x),a
 541  00da               L712:
 542                     ; 131 }
 545  00da 85            	popw	x
 546  00db 81            	ret
 592                     ; 141 void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t PortVal)
 592                     ; 142 {
 593                     .text:	section	.text,new
 594  0000               _GPIO_Write:
 596  0000 89            	pushw	x
 597       00000000      OFST:	set	0
 600                     ; 143   GPIOx->ODR = PortVal;
 602  0001 7b05          	ld	a,(OFST+5,sp)
 603  0003 1e01          	ldw	x,(OFST+1,sp)
 604  0005 f7            	ld	(x),a
 605                     ; 144 }
 608  0006 85            	popw	x
 609  0007 81            	ret
 656                     ; 154 void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 656                     ; 155 {
 657                     .text:	section	.text,new
 658  0000               _GPIO_WriteHigh:
 660  0000 89            	pushw	x
 661       00000000      OFST:	set	0
 664                     ; 156   GPIOx->ODR |= (uint8_t)PortPins;
 666  0001 f6            	ld	a,(x)
 667  0002 1a05          	or	a,(OFST+5,sp)
 668  0004 f7            	ld	(x),a
 669                     ; 157 }
 672  0005 85            	popw	x
 673  0006 81            	ret
 720                     ; 167 void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 720                     ; 168 {
 721                     .text:	section	.text,new
 722  0000               _GPIO_WriteLow:
 724  0000 89            	pushw	x
 725       00000000      OFST:	set	0
 728                     ; 169   GPIOx->ODR &= (uint8_t)(~PortPins);
 730  0001 7b05          	ld	a,(OFST+5,sp)
 731  0003 43            	cpl	a
 732  0004 f4            	and	a,(x)
 733  0005 f7            	ld	(x),a
 734                     ; 170 }
 737  0006 85            	popw	x
 738  0007 81            	ret
 785                     ; 180 void GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 785                     ; 181 {
 786                     .text:	section	.text,new
 787  0000               _GPIO_WriteReverse:
 789  0000 89            	pushw	x
 790       00000000      OFST:	set	0
 793                     ; 182   GPIOx->ODR ^= (uint8_t)PortPins;
 795  0001 f6            	ld	a,(x)
 796  0002 1805          	xor	a,	(OFST+5,sp)
 797  0004 f7            	ld	(x),a
 798                     ; 183 }
 801  0005 85            	popw	x
 802  0006 81            	ret
 840                     ; 191 uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
 840                     ; 192 {
 841                     .text:	section	.text,new
 842  0000               _GPIO_ReadOutputData:
 846                     ; 193   return ((uint8_t)GPIOx->ODR);
 848  0000 f6            	ld	a,(x)
 851  0001 81            	ret
 888                     ; 202 uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
 888                     ; 203 {
 889                     .text:	section	.text,new
 890  0000               _GPIO_ReadInputData:
 894                     ; 204   return ((uint8_t)GPIOx->IDR);
 896  0000 e601          	ld	a,(1,x)
 899  0002 81            	ret
 967                     ; 213 BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
 967                     ; 214 {
 968                     .text:	section	.text,new
 969  0000               _GPIO_ReadInputPin:
 971  0000 89            	pushw	x
 972       00000000      OFST:	set	0
 975                     ; 215   return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
 977  0001 e601          	ld	a,(1,x)
 978  0003 1405          	and	a,(OFST+5,sp)
 981  0005 85            	popw	x
 982  0006 81            	ret
1061                     ; 225 void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, FunctionalState NewState)
1061                     ; 226 {
1062                     .text:	section	.text,new
1063  0000               _GPIO_ExternalPullUpConfig:
1065  0000 89            	pushw	x
1066       00000000      OFST:	set	0
1069                     ; 228   assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
1071  0001 0d05          	tnz	(OFST+5,sp)
1072  0003 2703          	jreq	L24
1073  0005 4f            	clr	a
1074  0006 2010          	jra	L44
1075  0008               L24:
1076  0008 ae00e4        	ldw	x,#228
1077  000b 89            	pushw	x
1078  000c ae0000        	ldw	x,#0
1079  000f 89            	pushw	x
1080  0010 ae0000        	ldw	x,#L771
1081  0013 cd0000        	call	_assert_failed
1083  0016 5b04          	addw	sp,#4
1084  0018               L44:
1085                     ; 229   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1087  0018 0d06          	tnz	(OFST+6,sp)
1088  001a 2706          	jreq	L05
1089  001c 7b06          	ld	a,(OFST+6,sp)
1090  001e a101          	cp	a,#1
1091  0020 2603          	jrne	L64
1092  0022               L05:
1093  0022 4f            	clr	a
1094  0023 2010          	jra	L25
1095  0025               L64:
1096  0025 ae00e5        	ldw	x,#229
1097  0028 89            	pushw	x
1098  0029 ae0000        	ldw	x,#0
1099  002c 89            	pushw	x
1100  002d ae0000        	ldw	x,#L771
1101  0030 cd0000        	call	_assert_failed
1103  0033 5b04          	addw	sp,#4
1104  0035               L25:
1105                     ; 231   if (NewState != DISABLE) /* External Pull-Up Set*/
1107  0035 0d06          	tnz	(OFST+6,sp)
1108  0037 270a          	jreq	L574
1109                     ; 233     GPIOx->CR1 |= (uint8_t)GPIO_Pin;
1111  0039 1e01          	ldw	x,(OFST+1,sp)
1112  003b e603          	ld	a,(3,x)
1113  003d 1a05          	or	a,(OFST+5,sp)
1114  003f e703          	ld	(3,x),a
1116  0041 2009          	jra	L774
1117  0043               L574:
1118                     ; 236     GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
1120  0043 1e01          	ldw	x,(OFST+1,sp)
1121  0045 7b05          	ld	a,(OFST+5,sp)
1122  0047 43            	cpl	a
1123  0048 e403          	and	a,(3,x)
1124  004a e703          	ld	(3,x),a
1125  004c               L774:
1126                     ; 238 }
1129  004c 85            	popw	x
1130  004d 81            	ret
1143                     	xdef	_GPIO_ExternalPullUpConfig
1144                     	xdef	_GPIO_ReadInputPin
1145                     	xdef	_GPIO_ReadOutputData
1146                     	xdef	_GPIO_ReadInputData
1147                     	xdef	_GPIO_WriteReverse
1148                     	xdef	_GPIO_WriteLow
1149                     	xdef	_GPIO_WriteHigh
1150                     	xdef	_GPIO_Write
1151                     	xdef	_GPIO_Init
1152                     	xdef	_GPIO_DeInit
1153                     	xref	_assert_failed
1154                     .const:	section	.text
1155  0000               L771:
1156  0000 2e2e5c6c6962  	dc.b	"..\libs\src\stm8s_"
1157  0012 6770696f2e63  	dc.b	"gpio.c",0
1177                     	end
