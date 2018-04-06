   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
  44                     ; 49 void TIM4_DeInit(void)
  44                     ; 50 {
  46                     .text:	section	.text,new
  47  0000               _TIM4_DeInit:
  51                     ; 51   TIM4->CR1 = TIM4_CR1_RESET_VALUE;
  53  0000 725f5340      	clr	21312
  54                     ; 52   TIM4->IER = TIM4_IER_RESET_VALUE;
  56  0004 725f5343      	clr	21315
  57                     ; 53   TIM4->CNTR = TIM4_CNTR_RESET_VALUE;
  59  0008 725f5346      	clr	21318
  60                     ; 54   TIM4->PSCR = TIM4_PSCR_RESET_VALUE;
  62  000c 725f5347      	clr	21319
  63                     ; 55   TIM4->ARR = TIM4_ARR_RESET_VALUE;
  65  0010 35ff5348      	mov	21320,#255
  66                     ; 56   TIM4->SR1 = TIM4_SR1_RESET_VALUE;
  68  0014 725f5344      	clr	21316
  69                     ; 57 }
  72  0018 81            	ret
 179                     ; 65 void TIM4_TimeBaseInit(TIM4_Prescaler_TypeDef TIM4_Prescaler, uint8_t TIM4_Period)
 179                     ; 66 {
 180                     .text:	section	.text,new
 181  0000               _TIM4_TimeBaseInit:
 183  0000 89            	pushw	x
 184       00000000      OFST:	set	0
 187                     ; 68   assert_param(IS_TIM4_PRESCALER_OK(TIM4_Prescaler));
 189  0001 9e            	ld	a,xh
 190  0002 4d            	tnz	a
 191  0003 2723          	jreq	L21
 192  0005 9e            	ld	a,xh
 193  0006 a101          	cp	a,#1
 194  0008 271e          	jreq	L21
 195  000a 9e            	ld	a,xh
 196  000b a102          	cp	a,#2
 197  000d 2719          	jreq	L21
 198  000f 9e            	ld	a,xh
 199  0010 a103          	cp	a,#3
 200  0012 2714          	jreq	L21
 201  0014 9e            	ld	a,xh
 202  0015 a104          	cp	a,#4
 203  0017 270f          	jreq	L21
 204  0019 9e            	ld	a,xh
 205  001a a105          	cp	a,#5
 206  001c 270a          	jreq	L21
 207  001e 9e            	ld	a,xh
 208  001f a106          	cp	a,#6
 209  0021 2705          	jreq	L21
 210  0023 9e            	ld	a,xh
 211  0024 a107          	cp	a,#7
 212  0026 2603          	jrne	L01
 213  0028               L21:
 214  0028 4f            	clr	a
 215  0029 2010          	jra	L41
 216  002b               L01:
 217  002b ae0044        	ldw	x,#68
 218  002e 89            	pushw	x
 219  002f ae0000        	ldw	x,#0
 220  0032 89            	pushw	x
 221  0033 ae0000        	ldw	x,#L76
 222  0036 cd0000        	call	_assert_failed
 224  0039 5b04          	addw	sp,#4
 225  003b               L41:
 226                     ; 70   TIM4->PSCR = (uint8_t)(TIM4_Prescaler);
 228  003b 7b01          	ld	a,(OFST+1,sp)
 229  003d c75347        	ld	21319,a
 230                     ; 72   TIM4->ARR = (uint8_t)(TIM4_Period);
 232  0040 7b02          	ld	a,(OFST+2,sp)
 233  0042 c75348        	ld	21320,a
 234                     ; 73 }
 237  0045 85            	popw	x
 238  0046 81            	ret
 294                     ; 81 void TIM4_Cmd(FunctionalState NewState)
 294                     ; 82 {
 295                     .text:	section	.text,new
 296  0000               _TIM4_Cmd:
 298  0000 88            	push	a
 299       00000000      OFST:	set	0
 302                     ; 84   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 304  0001 4d            	tnz	a
 305  0002 2704          	jreq	L22
 306  0004 a101          	cp	a,#1
 307  0006 2603          	jrne	L02
 308  0008               L22:
 309  0008 4f            	clr	a
 310  0009 2010          	jra	L42
 311  000b               L02:
 312  000b ae0054        	ldw	x,#84
 313  000e 89            	pushw	x
 314  000f ae0000        	ldw	x,#0
 315  0012 89            	pushw	x
 316  0013 ae0000        	ldw	x,#L76
 317  0016 cd0000        	call	_assert_failed
 319  0019 5b04          	addw	sp,#4
 320  001b               L42:
 321                     ; 87   if (NewState != DISABLE)
 323  001b 0d01          	tnz	(OFST+1,sp)
 324  001d 2706          	jreq	L711
 325                     ; 89     TIM4->CR1 |= TIM4_CR1_CEN;
 327  001f 72105340      	bset	21312,#0
 329  0023 2004          	jra	L121
 330  0025               L711:
 331                     ; 93     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_CEN);
 333  0025 72115340      	bres	21312,#0
 334  0029               L121:
 335                     ; 95 }
 338  0029 84            	pop	a
 339  002a 81            	ret
 398                     ; 107 void TIM4_ITConfig(TIM4_IT_TypeDef TIM4_IT, FunctionalState NewState)
 398                     ; 108 {
 399                     .text:	section	.text,new
 400  0000               _TIM4_ITConfig:
 402  0000 89            	pushw	x
 403       00000000      OFST:	set	0
 406                     ; 110   assert_param(IS_TIM4_IT_OK(TIM4_IT));
 408  0001 9e            	ld	a,xh
 409  0002 a101          	cp	a,#1
 410  0004 2603          	jrne	L03
 411  0006 4f            	clr	a
 412  0007 2010          	jra	L23
 413  0009               L03:
 414  0009 ae006e        	ldw	x,#110
 415  000c 89            	pushw	x
 416  000d ae0000        	ldw	x,#0
 417  0010 89            	pushw	x
 418  0011 ae0000        	ldw	x,#L76
 419  0014 cd0000        	call	_assert_failed
 421  0017 5b04          	addw	sp,#4
 422  0019               L23:
 423                     ; 111   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 425  0019 0d02          	tnz	(OFST+2,sp)
 426  001b 2706          	jreq	L63
 427  001d 7b02          	ld	a,(OFST+2,sp)
 428  001f a101          	cp	a,#1
 429  0021 2603          	jrne	L43
 430  0023               L63:
 431  0023 4f            	clr	a
 432  0024 2010          	jra	L04
 433  0026               L43:
 434  0026 ae006f        	ldw	x,#111
 435  0029 89            	pushw	x
 436  002a ae0000        	ldw	x,#0
 437  002d 89            	pushw	x
 438  002e ae0000        	ldw	x,#L76
 439  0031 cd0000        	call	_assert_failed
 441  0034 5b04          	addw	sp,#4
 442  0036               L04:
 443                     ; 113   if (NewState != DISABLE)
 445  0036 0d02          	tnz	(OFST+2,sp)
 446  0038 270a          	jreq	L351
 447                     ; 116     TIM4->IER |= (uint8_t)TIM4_IT;
 449  003a c65343        	ld	a,21315
 450  003d 1a01          	or	a,(OFST+1,sp)
 451  003f c75343        	ld	21315,a
 453  0042 2009          	jra	L551
 454  0044               L351:
 455                     ; 121     TIM4->IER &= (uint8_t)(~TIM4_IT);
 457  0044 7b01          	ld	a,(OFST+1,sp)
 458  0046 43            	cpl	a
 459  0047 c45343        	and	a,21315
 460  004a c75343        	ld	21315,a
 461  004d               L551:
 462                     ; 123 }
 465  004d 85            	popw	x
 466  004e 81            	ret
 503                     ; 131 void TIM4_UpdateDisableConfig(FunctionalState NewState)
 503                     ; 132 {
 504                     .text:	section	.text,new
 505  0000               _TIM4_UpdateDisableConfig:
 507  0000 88            	push	a
 508       00000000      OFST:	set	0
 511                     ; 134   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 513  0001 4d            	tnz	a
 514  0002 2704          	jreq	L64
 515  0004 a101          	cp	a,#1
 516  0006 2603          	jrne	L44
 517  0008               L64:
 518  0008 4f            	clr	a
 519  0009 2010          	jra	L05
 520  000b               L44:
 521  000b ae0086        	ldw	x,#134
 522  000e 89            	pushw	x
 523  000f ae0000        	ldw	x,#0
 524  0012 89            	pushw	x
 525  0013 ae0000        	ldw	x,#L76
 526  0016 cd0000        	call	_assert_failed
 528  0019 5b04          	addw	sp,#4
 529  001b               L05:
 530                     ; 137   if (NewState != DISABLE)
 532  001b 0d01          	tnz	(OFST+1,sp)
 533  001d 2706          	jreq	L571
 534                     ; 139     TIM4->CR1 |= TIM4_CR1_UDIS;
 536  001f 72125340      	bset	21312,#1
 538  0023 2004          	jra	L771
 539  0025               L571:
 540                     ; 143     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_UDIS);
 542  0025 72135340      	bres	21312,#1
 543  0029               L771:
 544                     ; 145 }
 547  0029 84            	pop	a
 548  002a 81            	ret
 607                     ; 155 void TIM4_UpdateRequestConfig(TIM4_UpdateSource_TypeDef TIM4_UpdateSource)
 607                     ; 156 {
 608                     .text:	section	.text,new
 609  0000               _TIM4_UpdateRequestConfig:
 611  0000 88            	push	a
 612       00000000      OFST:	set	0
 615                     ; 158   assert_param(IS_TIM4_UPDATE_SOURCE_OK(TIM4_UpdateSource));
 617  0001 4d            	tnz	a
 618  0002 2704          	jreq	L65
 619  0004 a101          	cp	a,#1
 620  0006 2603          	jrne	L45
 621  0008               L65:
 622  0008 4f            	clr	a
 623  0009 2010          	jra	L06
 624  000b               L45:
 625  000b ae009e        	ldw	x,#158
 626  000e 89            	pushw	x
 627  000f ae0000        	ldw	x,#0
 628  0012 89            	pushw	x
 629  0013 ae0000        	ldw	x,#L76
 630  0016 cd0000        	call	_assert_failed
 632  0019 5b04          	addw	sp,#4
 633  001b               L06:
 634                     ; 161   if (TIM4_UpdateSource != TIM4_UPDATESOURCE_GLOBAL)
 636  001b 0d01          	tnz	(OFST+1,sp)
 637  001d 2706          	jreq	L722
 638                     ; 163     TIM4->CR1 |= TIM4_CR1_URS;
 640  001f 72145340      	bset	21312,#2
 642  0023 2004          	jra	L132
 643  0025               L722:
 644                     ; 167     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_URS);
 646  0025 72155340      	bres	21312,#2
 647  0029               L132:
 648                     ; 169 }
 651  0029 84            	pop	a
 652  002a 81            	ret
 710                     ; 179 void TIM4_SelectOnePulseMode(TIM4_OPMode_TypeDef TIM4_OPMode)
 710                     ; 180 {
 711                     .text:	section	.text,new
 712  0000               _TIM4_SelectOnePulseMode:
 714  0000 88            	push	a
 715       00000000      OFST:	set	0
 718                     ; 182   assert_param(IS_TIM4_OPM_MODE_OK(TIM4_OPMode));
 720  0001 a101          	cp	a,#1
 721  0003 2703          	jreq	L66
 722  0005 4d            	tnz	a
 723  0006 2603          	jrne	L46
 724  0008               L66:
 725  0008 4f            	clr	a
 726  0009 2010          	jra	L07
 727  000b               L46:
 728  000b ae00b6        	ldw	x,#182
 729  000e 89            	pushw	x
 730  000f ae0000        	ldw	x,#0
 731  0012 89            	pushw	x
 732  0013 ae0000        	ldw	x,#L76
 733  0016 cd0000        	call	_assert_failed
 735  0019 5b04          	addw	sp,#4
 736  001b               L07:
 737                     ; 185   if (TIM4_OPMode != TIM4_OPMODE_REPETITIVE)
 739  001b 0d01          	tnz	(OFST+1,sp)
 740  001d 2706          	jreq	L162
 741                     ; 187     TIM4->CR1 |= TIM4_CR1_OPM;
 743  001f 72165340      	bset	21312,#3
 745  0023 2004          	jra	L362
 746  0025               L162:
 747                     ; 191     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_OPM);
 749  0025 72175340      	bres	21312,#3
 750  0029               L362:
 751                     ; 193 }
 754  0029 84            	pop	a
 755  002a 81            	ret
 824                     ; 215 void TIM4_PrescalerConfig(TIM4_Prescaler_TypeDef Prescaler, TIM4_PSCReloadMode_TypeDef TIM4_PSCReloadMode)
 824                     ; 216 {
 825                     .text:	section	.text,new
 826  0000               _TIM4_PrescalerConfig:
 828  0000 89            	pushw	x
 829       00000000      OFST:	set	0
 832                     ; 218   assert_param(IS_TIM4_PRESCALER_RELOAD_OK(TIM4_PSCReloadMode));
 834  0001 9f            	ld	a,xl
 835  0002 4d            	tnz	a
 836  0003 2705          	jreq	L67
 837  0005 9f            	ld	a,xl
 838  0006 a101          	cp	a,#1
 839  0008 2603          	jrne	L47
 840  000a               L67:
 841  000a 4f            	clr	a
 842  000b 2010          	jra	L001
 843  000d               L47:
 844  000d ae00da        	ldw	x,#218
 845  0010 89            	pushw	x
 846  0011 ae0000        	ldw	x,#0
 847  0014 89            	pushw	x
 848  0015 ae0000        	ldw	x,#L76
 849  0018 cd0000        	call	_assert_failed
 851  001b 5b04          	addw	sp,#4
 852  001d               L001:
 853                     ; 219   assert_param(IS_TIM4_PRESCALER_OK(Prescaler));
 855  001d 0d01          	tnz	(OFST+1,sp)
 856  001f 272a          	jreq	L401
 857  0021 7b01          	ld	a,(OFST+1,sp)
 858  0023 a101          	cp	a,#1
 859  0025 2724          	jreq	L401
 860  0027 7b01          	ld	a,(OFST+1,sp)
 861  0029 a102          	cp	a,#2
 862  002b 271e          	jreq	L401
 863  002d 7b01          	ld	a,(OFST+1,sp)
 864  002f a103          	cp	a,#3
 865  0031 2718          	jreq	L401
 866  0033 7b01          	ld	a,(OFST+1,sp)
 867  0035 a104          	cp	a,#4
 868  0037 2712          	jreq	L401
 869  0039 7b01          	ld	a,(OFST+1,sp)
 870  003b a105          	cp	a,#5
 871  003d 270c          	jreq	L401
 872  003f 7b01          	ld	a,(OFST+1,sp)
 873  0041 a106          	cp	a,#6
 874  0043 2706          	jreq	L401
 875  0045 7b01          	ld	a,(OFST+1,sp)
 876  0047 a107          	cp	a,#7
 877  0049 2603          	jrne	L201
 878  004b               L401:
 879  004b 4f            	clr	a
 880  004c 2010          	jra	L601
 881  004e               L201:
 882  004e ae00db        	ldw	x,#219
 883  0051 89            	pushw	x
 884  0052 ae0000        	ldw	x,#0
 885  0055 89            	pushw	x
 886  0056 ae0000        	ldw	x,#L76
 887  0059 cd0000        	call	_assert_failed
 889  005c 5b04          	addw	sp,#4
 890  005e               L601:
 891                     ; 222   TIM4->PSCR = (uint8_t)Prescaler;
 893  005e 7b01          	ld	a,(OFST+1,sp)
 894  0060 c75347        	ld	21319,a
 895                     ; 225   TIM4->EGR = (uint8_t)TIM4_PSCReloadMode;
 897  0063 7b02          	ld	a,(OFST+2,sp)
 898  0065 c75345        	ld	21317,a
 899                     ; 226 }
 902  0068 85            	popw	x
 903  0069 81            	ret
 940                     ; 234 void TIM4_ARRPreloadConfig(FunctionalState NewState)
 940                     ; 235 {
 941                     .text:	section	.text,new
 942  0000               _TIM4_ARRPreloadConfig:
 944  0000 88            	push	a
 945       00000000      OFST:	set	0
 948                     ; 237   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 950  0001 4d            	tnz	a
 951  0002 2704          	jreq	L411
 952  0004 a101          	cp	a,#1
 953  0006 2603          	jrne	L211
 954  0008               L411:
 955  0008 4f            	clr	a
 956  0009 2010          	jra	L611
 957  000b               L211:
 958  000b ae00ed        	ldw	x,#237
 959  000e 89            	pushw	x
 960  000f ae0000        	ldw	x,#0
 961  0012 89            	pushw	x
 962  0013 ae0000        	ldw	x,#L76
 963  0016 cd0000        	call	_assert_failed
 965  0019 5b04          	addw	sp,#4
 966  001b               L611:
 967                     ; 240   if (NewState != DISABLE)
 969  001b 0d01          	tnz	(OFST+1,sp)
 970  001d 2706          	jreq	L533
 971                     ; 242     TIM4->CR1 |= TIM4_CR1_ARPE;
 973  001f 721e5340      	bset	21312,#7
 975  0023 2004          	jra	L733
 976  0025               L533:
 977                     ; 246     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_ARPE);
 979  0025 721f5340      	bres	21312,#7
 980  0029               L733:
 981                     ; 248 }
 984  0029 84            	pop	a
 985  002a 81            	ret
1035                     ; 257 void TIM4_GenerateEvent(TIM4_EventSource_TypeDef TIM4_EventSource)
1035                     ; 258 {
1036                     .text:	section	.text,new
1037  0000               _TIM4_GenerateEvent:
1039  0000 88            	push	a
1040       00000000      OFST:	set	0
1043                     ; 260   assert_param(IS_TIM4_EVENT_SOURCE_OK(TIM4_EventSource));
1045  0001 a101          	cp	a,#1
1046  0003 2603          	jrne	L221
1047  0005 4f            	clr	a
1048  0006 2010          	jra	L421
1049  0008               L221:
1050  0008 ae0104        	ldw	x,#260
1051  000b 89            	pushw	x
1052  000c ae0000        	ldw	x,#0
1053  000f 89            	pushw	x
1054  0010 ae0000        	ldw	x,#L76
1055  0013 cd0000        	call	_assert_failed
1057  0016 5b04          	addw	sp,#4
1058  0018               L421:
1059                     ; 263   TIM4->EGR = (uint8_t)(TIM4_EventSource);
1061  0018 7b01          	ld	a,(OFST+1,sp)
1062  001a c75345        	ld	21317,a
1063                     ; 264 }
1066  001d 84            	pop	a
1067  001e 81            	ret
1101                     ; 272 void TIM4_SetCounter(uint8_t Counter)
1101                     ; 273 {
1102                     .text:	section	.text,new
1103  0000               _TIM4_SetCounter:
1107                     ; 275   TIM4->CNTR = (uint8_t)(Counter);
1109  0000 c75346        	ld	21318,a
1110                     ; 276 }
1113  0003 81            	ret
1147                     ; 284 void TIM4_SetAutoreload(uint8_t Autoreload)
1147                     ; 285 {
1148                     .text:	section	.text,new
1149  0000               _TIM4_SetAutoreload:
1153                     ; 287   TIM4->ARR = (uint8_t)(Autoreload);
1155  0000 c75348        	ld	21320,a
1156                     ; 288 }
1159  0003 81            	ret
1182                     ; 295 uint8_t TIM4_GetCounter(void)
1182                     ; 296 {
1183                     .text:	section	.text,new
1184  0000               _TIM4_GetCounter:
1188                     ; 298   return (uint8_t)(TIM4->CNTR);
1190  0000 c65346        	ld	a,21318
1193  0003 81            	ret
1217                     ; 306 TIM4_Prescaler_TypeDef TIM4_GetPrescaler(void)
1217                     ; 307 {
1218                     .text:	section	.text,new
1219  0000               _TIM4_GetPrescaler:
1223                     ; 309   return (TIM4_Prescaler_TypeDef)(TIM4->PSCR);
1225  0000 c65347        	ld	a,21319
1228  0003 81            	ret
1308                     ; 319 FlagStatus TIM4_GetFlagStatus(TIM4_FLAG_TypeDef TIM4_FLAG)
1308                     ; 320 {
1309                     .text:	section	.text,new
1310  0000               _TIM4_GetFlagStatus:
1312  0000 88            	push	a
1313  0001 88            	push	a
1314       00000001      OFST:	set	1
1317                     ; 321   FlagStatus bitstatus = RESET;
1319                     ; 324   assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));
1321  0002 a101          	cp	a,#1
1322  0004 2603          	jrne	L041
1323  0006 4f            	clr	a
1324  0007 2010          	jra	L241
1325  0009               L041:
1326  0009 ae0144        	ldw	x,#324
1327  000c 89            	pushw	x
1328  000d ae0000        	ldw	x,#0
1329  0010 89            	pushw	x
1330  0011 ae0000        	ldw	x,#L76
1331  0014 cd0000        	call	_assert_failed
1333  0017 5b04          	addw	sp,#4
1334  0019               L241:
1335                     ; 326   if ((TIM4->SR1 & (uint8_t)TIM4_FLAG)  != 0)
1337  0019 c65344        	ld	a,21316
1338  001c 1502          	bcp	a,(OFST+1,sp)
1339  001e 2706          	jreq	L105
1340                     ; 328     bitstatus = SET;
1342  0020 a601          	ld	a,#1
1343  0022 6b01          	ld	(OFST+0,sp),a
1346  0024 2002          	jra	L305
1347  0026               L105:
1348                     ; 332     bitstatus = RESET;
1350  0026 0f01          	clr	(OFST+0,sp)
1352  0028               L305:
1353                     ; 334   return ((FlagStatus)bitstatus);
1355  0028 7b01          	ld	a,(OFST+0,sp)
1358  002a 85            	popw	x
1359  002b 81            	ret
1395                     ; 344 void TIM4_ClearFlag(TIM4_FLAG_TypeDef TIM4_FLAG)
1395                     ; 345 {
1396                     .text:	section	.text,new
1397  0000               _TIM4_ClearFlag:
1399  0000 88            	push	a
1400       00000000      OFST:	set	0
1403                     ; 347   assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));
1405  0001 a101          	cp	a,#1
1406  0003 2603          	jrne	L641
1407  0005 4f            	clr	a
1408  0006 2010          	jra	L051
1409  0008               L641:
1410  0008 ae015b        	ldw	x,#347
1411  000b 89            	pushw	x
1412  000c ae0000        	ldw	x,#0
1413  000f 89            	pushw	x
1414  0010 ae0000        	ldw	x,#L76
1415  0013 cd0000        	call	_assert_failed
1417  0016 5b04          	addw	sp,#4
1418  0018               L051:
1419                     ; 350   TIM4->SR1 = (uint8_t)(~TIM4_FLAG);
1421  0018 7b01          	ld	a,(OFST+1,sp)
1422  001a 43            	cpl	a
1423  001b c75344        	ld	21316,a
1424                     ; 351 }
1427  001e 84            	pop	a
1428  001f 81            	ret
1493                     ; 360 ITStatus TIM4_GetITStatus(TIM4_IT_TypeDef TIM4_IT)
1493                     ; 361 {
1494                     .text:	section	.text,new
1495  0000               _TIM4_GetITStatus:
1497  0000 88            	push	a
1498  0001 89            	pushw	x
1499       00000002      OFST:	set	2
1502                     ; 362   ITStatus bitstatus = RESET;
1504                     ; 364   uint8_t itstatus = 0x0, itenable = 0x0;
1508                     ; 367   assert_param(IS_TIM4_IT_OK(TIM4_IT));
1510  0002 a101          	cp	a,#1
1511  0004 2603          	jrne	L451
1512  0006 4f            	clr	a
1513  0007 2010          	jra	L651
1514  0009               L451:
1515  0009 ae016f        	ldw	x,#367
1516  000c 89            	pushw	x
1517  000d ae0000        	ldw	x,#0
1518  0010 89            	pushw	x
1519  0011 ae0000        	ldw	x,#L76
1520  0014 cd0000        	call	_assert_failed
1522  0017 5b04          	addw	sp,#4
1523  0019               L651:
1524                     ; 369   itstatus = (uint8_t)(TIM4->SR1 & (uint8_t)TIM4_IT);
1526  0019 c65344        	ld	a,21316
1527  001c 1403          	and	a,(OFST+1,sp)
1528  001e 6b01          	ld	(OFST-1,sp),a
1530                     ; 371   itenable = (uint8_t)(TIM4->IER & (uint8_t)TIM4_IT);
1532  0020 c65343        	ld	a,21315
1533  0023 1403          	and	a,(OFST+1,sp)
1534  0025 6b02          	ld	(OFST+0,sp),a
1536                     ; 373   if ((itstatus != (uint8_t)RESET ) && (itenable != (uint8_t)RESET ))
1538  0027 0d01          	tnz	(OFST-1,sp)
1539  0029 270a          	jreq	L555
1541  002b 0d02          	tnz	(OFST+0,sp)
1542  002d 2706          	jreq	L555
1543                     ; 375     bitstatus = (ITStatus)SET;
1545  002f a601          	ld	a,#1
1546  0031 6b02          	ld	(OFST+0,sp),a
1549  0033 2002          	jra	L755
1550  0035               L555:
1551                     ; 379     bitstatus = (ITStatus)RESET;
1553  0035 0f02          	clr	(OFST+0,sp)
1555  0037               L755:
1556                     ; 381   return ((ITStatus)bitstatus);
1558  0037 7b02          	ld	a,(OFST+0,sp)
1561  0039 5b03          	addw	sp,#3
1562  003b 81            	ret
1599                     ; 391 void TIM4_ClearITPendingBit(TIM4_IT_TypeDef TIM4_IT)
1599                     ; 392 {
1600                     .text:	section	.text,new
1601  0000               _TIM4_ClearITPendingBit:
1603  0000 88            	push	a
1604       00000000      OFST:	set	0
1607                     ; 394   assert_param(IS_TIM4_IT_OK(TIM4_IT));
1609  0001 a101          	cp	a,#1
1610  0003 2603          	jrne	L261
1611  0005 4f            	clr	a
1612  0006 2010          	jra	L461
1613  0008               L261:
1614  0008 ae018a        	ldw	x,#394
1615  000b 89            	pushw	x
1616  000c ae0000        	ldw	x,#0
1617  000f 89            	pushw	x
1618  0010 ae0000        	ldw	x,#L76
1619  0013 cd0000        	call	_assert_failed
1621  0016 5b04          	addw	sp,#4
1622  0018               L461:
1623                     ; 397   TIM4->SR1 = (uint8_t)(~TIM4_IT);
1625  0018 7b01          	ld	a,(OFST+1,sp)
1626  001a 43            	cpl	a
1627  001b c75344        	ld	21316,a
1628                     ; 398 }
1631  001e 84            	pop	a
1632  001f 81            	ret
1645                     	xdef	_TIM4_ClearITPendingBit
1646                     	xdef	_TIM4_GetITStatus
1647                     	xdef	_TIM4_ClearFlag
1648                     	xdef	_TIM4_GetFlagStatus
1649                     	xdef	_TIM4_GetPrescaler
1650                     	xdef	_TIM4_GetCounter
1651                     	xdef	_TIM4_SetAutoreload
1652                     	xdef	_TIM4_SetCounter
1653                     	xdef	_TIM4_GenerateEvent
1654                     	xdef	_TIM4_ARRPreloadConfig
1655                     	xdef	_TIM4_PrescalerConfig
1656                     	xdef	_TIM4_SelectOnePulseMode
1657                     	xdef	_TIM4_UpdateRequestConfig
1658                     	xdef	_TIM4_UpdateDisableConfig
1659                     	xdef	_TIM4_ITConfig
1660                     	xdef	_TIM4_Cmd
1661                     	xdef	_TIM4_TimeBaseInit
1662                     	xdef	_TIM4_DeInit
1663                     	xref	_assert_failed
1664                     .const:	section	.text
1665  0000               L76:
1666  0000 2e2e5c6c6962  	dc.b	"..\libs\src\stm8s_"
1667  0012 74696d342e63  	dc.b	"tim4.c",0
1687                     	end
