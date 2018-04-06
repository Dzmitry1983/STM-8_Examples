   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
 117                     ; 33 void main(void)
 117                     ; 34 {
 119                     .text:	section	.text,new
 120  0000               _main:
 122  0000 5207          	subw	sp,#7
 123       00000007      OFST:	set	7
 126                     ; 35     uint8_t i = 0;
 128  0002 0f06          	clr	(OFST-1,sp)
 130                     ; 36 	uint32_t timHZ = 0;
 132                     ; 37     bool prevStatus = FALSE;
 134  0004 0f05          	clr	(OFST-2,sp)
 136                     ; 38 	bool buttonPressed = FALSE;
 138                     ; 40 	GPIO_DeInit(LED_GPIO_PORT);
 140  0006 ae5005        	ldw	x,#20485
 141  0009 cd0000        	call	_GPIO_DeInit
 143                     ; 41 	GPIO_DeInit(BUTTON_GPIO_PORT);
 145  000c ae5000        	ldw	x,#20480
 146  000f cd0000        	call	_GPIO_DeInit
 148                     ; 42 	GPIO_Init(LED_GPIO_PORT, (GPIO_Pin_TypeDef)LED_GPIO_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
 150  0012 4be0          	push	#224
 151  0014 4b20          	push	#32
 152  0016 ae5005        	ldw	x,#20485
 153  0019 cd0000        	call	_GPIO_Init
 155  001c 85            	popw	x
 156                     ; 43 	GPIO_Init(BUTTON_GPIO_PORT, BUTTON_GPIO_PIN, GPIO_MODE_IN_FL_NO_IT);
 158  001d 4b00          	push	#0
 159  001f 4b08          	push	#8
 160  0021 ae5000        	ldw	x,#20480
 161  0024 cd0000        	call	_GPIO_Init
 163  0027 85            	popw	x
 164                     ; 46 	CLK_DeInit();
 166  0028 cd0000        	call	_CLK_DeInit
 168                     ; 47     CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV1);
 170  002b a680          	ld	a,#128
 171  002d cd0000        	call	_CLK_SYSCLKConfig
 173                     ; 48     CLK_SYSCLKConfig(CLK_PRESCALER_HSIDIV1); // set 16 MHz for CPU
 175  0030 4f            	clr	a
 176  0031 cd0000        	call	_CLK_SYSCLKConfig
 178                     ; 49     TIM4_DeInit();
 180  0034 cd0000        	call	_TIM4_DeInit
 182                     ; 51 	timHZ = LSIMeasurment();
 184  0037 cd0000        	call	_LSIMeasurment
 186  003a 96            	ldw	x,sp
 187  003b 1c0001        	addw	x,#OFST-6
 188  003e cd0000        	call	c_rtol
 191                     ; 52 	BEEP_LSICalibrationConfig(timHZ);
 193  0041 1e03          	ldw	x,(OFST-4,sp)
 194  0043 89            	pushw	x
 195  0044 1e03          	ldw	x,(OFST-4,sp)
 196  0046 89            	pushw	x
 197  0047 cd0000        	call	_BEEP_LSICalibrationConfig
 199  004a 5b04          	addw	sp,#4
 200  004c               L76:
 201                     ; 56 		buttonPressed = GPIO_ReadInputPin(BUTTON_GPIO_PORT, BUTTON_GPIO_PIN) != 0;
 203  004c 4b08          	push	#8
 204  004e ae5000        	ldw	x,#20480
 205  0051 cd0000        	call	_GPIO_ReadInputPin
 207  0054 5b01          	addw	sp,#1
 208  0056 4d            	tnz	a
 209  0057 2704          	jreq	L6
 210  0059 a601          	ld	a,#1
 211  005b 2001          	jra	L01
 212  005d               L6:
 213  005d 4f            	clr	a
 214  005e               L01:
 215  005e 6b07          	ld	(OFST+0,sp),a
 217                     ; 57 		Delay(500);
 219  0060 ae01f4        	ldw	x,#500
 220  0063 cd0000        	call	_Delay
 222                     ; 58 		if (buttonPressed == TRUE) 
 224  0066 7b07          	ld	a,(OFST+0,sp)
 225  0068 a101          	cp	a,#1
 226  006a 260b          	jrne	L37
 227                     ; 60 			GPIO_WriteHigh(LED_GPIO_PORT, LED_GPIO_PIN);
 229  006c 4b20          	push	#32
 230  006e ae5005        	ldw	x,#20485
 231  0071 cd0000        	call	_GPIO_WriteHigh
 233  0074 84            	pop	a
 235  0075 2009          	jra	L57
 236  0077               L37:
 237                     ; 64 			GPIO_WriteLow(LED_GPIO_PORT, LED_GPIO_PIN);
 239  0077 4b20          	push	#32
 240  0079 ae5005        	ldw	x,#20485
 241  007c cd0000        	call	_GPIO_WriteLow
 243  007f 84            	pop	a
 244  0080               L57:
 245                     ; 67 		if (prevStatus == buttonPressed) {
 247  0080 7b05          	ld	a,(OFST-2,sp)
 248  0082 1107          	cp	a,(OFST+0,sp)
 249  0084 27c6          	jreq	L76
 250                     ; 69 			continue;
 252                     ; 71 		prevStatus = buttonPressed;
 254  0086 7b07          	ld	a,(OFST+0,sp)
 255  0088 6b05          	ld	(OFST-2,sp),a
 257                     ; 73         if (buttonPressed == TRUE)
 259  008a 7b07          	ld	a,(OFST+0,sp)
 260  008c a101          	cp	a,#1
 261  008e 26bc          	jrne	L76
 262                     ; 75             switch (i)
 264  0090 7b06          	ld	a,(OFST-1,sp)
 266                     ; 102 						default:
 266                     ; 103 						    break;
 267  0092 4d            	tnz	a
 268  0093 270b          	jreq	L5
 269  0095 4a            	dec	a
 270  0096 2721          	jreq	L7
 271  0098 4a            	dec	a
 272  0099 273a          	jreq	L11
 273  009b 4a            	dec	a
 274  009c 2753          	jreq	L31
 275  009e 20ac          	jra	L76
 276  00a0               L5:
 277                     ; 77             case 0:
 277                     ; 78                 BEEP_Cmd(DISABLE);
 279  00a0 4f            	clr	a
 280  00a1 cd0000        	call	_BEEP_Cmd
 282                     ; 79                 Delay(100);
 284  00a4 ae0064        	ldw	x,#100
 285  00a7 cd0000        	call	_Delay
 287                     ; 80                 BEEP_Init(BEEP_FREQUENCY_1KHZ);
 289  00aa 4f            	clr	a
 290  00ab cd0000        	call	_BEEP_Init
 292                     ; 81                 BEEP_Cmd(ENABLE);
 294  00ae a601          	ld	a,#1
 295  00b0 cd0000        	call	_BEEP_Cmd
 297                     ; 82                 i = 1;
 299  00b3 a601          	ld	a,#1
 300  00b5 6b06          	ld	(OFST-1,sp),a
 302                     ; 83                 break;
 304  00b7 2093          	jra	L76
 305  00b9               L7:
 306                     ; 84             case 1:
 306                     ; 85                 BEEP_Cmd(DISABLE);
 308  00b9 4f            	clr	a
 309  00ba cd0000        	call	_BEEP_Cmd
 311                     ; 86                 Delay(100);
 313  00bd ae0064        	ldw	x,#100
 314  00c0 cd0000        	call	_Delay
 316                     ; 87                 BEEP_Init(BEEP_FREQUENCY_2KHZ);
 318  00c3 a640          	ld	a,#64
 319  00c5 cd0000        	call	_BEEP_Init
 321                     ; 88                 BEEP_Cmd(ENABLE);
 323  00c8 a601          	ld	a,#1
 324  00ca cd0000        	call	_BEEP_Cmd
 326                     ; 89                 i = 2;
 328  00cd a602          	ld	a,#2
 329  00cf 6b06          	ld	(OFST-1,sp),a
 331                     ; 90                 break;
 333  00d1 ac4c004c      	jpf	L76
 334  00d5               L11:
 335                     ; 91             case 2:
 335                     ; 92                 BEEP_Cmd(DISABLE);
 337  00d5 4f            	clr	a
 338  00d6 cd0000        	call	_BEEP_Cmd
 340                     ; 93                 Delay(100);
 342  00d9 ae0064        	ldw	x,#100
 343  00dc cd0000        	call	_Delay
 345                     ; 94                 BEEP_Init(BEEP_FREQUENCY_4KHZ);
 347  00df a680          	ld	a,#128
 348  00e1 cd0000        	call	_BEEP_Init
 350                     ; 95                 BEEP_Cmd(ENABLE);
 352  00e4 a601          	ld	a,#1
 353  00e6 cd0000        	call	_BEEP_Cmd
 355                     ; 96                 i = 3;
 357  00e9 a603          	ld	a,#3
 358  00eb 6b06          	ld	(OFST-1,sp),a
 360                     ; 97                 break;
 362  00ed ac4c004c      	jpf	L76
 363  00f1               L31:
 364                     ; 98             case 3:
 364                     ; 99                 BEEP_Cmd(DISABLE);
 366  00f1 4f            	clr	a
 367  00f2 cd0000        	call	_BEEP_Cmd
 369                     ; 100                 i = 0;
 371  00f5 0f06          	clr	(OFST-1,sp)
 373                     ; 101                 break;
 375  00f7 ac4c004c      	jpf	L76
 376  00fb               L51:
 377                     ; 102 						default:
 377                     ; 103 						    break;
 379  00fb ac4c004c      	jpf	L76
 380  00ff               L501:
 381  00ff ac4c004c      	jpf	L76
 447                     ; 118 uint32_t LSIMeasurment(void)
 447                     ; 119 {
 448                     .text:	section	.text,new
 449  0000               _LSIMeasurment:
 451  0000 520c          	subw	sp,#12
 452       0000000c      OFST:	set	12
 455                     ; 121  uint32_t lsi_freq_hz = 0x0;
 457                     ; 122   uint32_t fmaster = 0x0;
 459                     ; 123   uint16_t ICValue1 = 0x0;
 461                     ; 124   uint16_t ICValue2 = 0x0;
 463                     ; 127   fmaster = CLK_GetClockFreq();
 465  0002 cd0000        	call	_CLK_GetClockFreq
 467  0005 96            	ldw	x,sp
 468  0006 1c0009        	addw	x,#OFST-3
 469  0009 cd0000        	call	c_rtol
 472                     ; 131   AWU->CSR |= AWU_CSR_MSR;
 474  000c 721050f0      	bset	20720,#0
 475                     ; 137   TIM1_ICInit(TIM1_CHANNEL_1, TIM1_ICPOLARITY_RISING, TIM1_ICSELECTION_DIRECTTI, TIM1_ICPSC_DIV8, 0);
 477  0010 4b00          	push	#0
 478  0012 4b0c          	push	#12
 479  0014 4b01          	push	#1
 480  0016 5f            	clrw	x
 481  0017 cd0000        	call	_TIM1_ICInit
 483  001a 5b03          	addw	sp,#3
 484                     ; 140   TIM1_Cmd(ENABLE);
 486  001c a601          	ld	a,#1
 487  001e cd0000        	call	_TIM1_Cmd
 490  0021               L341:
 491                     ; 143   while((TIM1->SR1 & TIM1_FLAG_CC1) != TIM1_FLAG_CC1);
 493  0021 c65255        	ld	a,21077
 494  0024 a402          	and	a,#2
 495  0026 a102          	cp	a,#2
 496  0028 26f7          	jrne	L341
 497                     ; 145   ICValue1 = TIM1_GetCapture1();
 499  002a cd0000        	call	_TIM1_GetCapture1
 501  002d 1f05          	ldw	(OFST-7,sp),x
 503                     ; 146   TIM1_ClearFlag(TIM1_FLAG_CC1);
 505  002f ae0002        	ldw	x,#2
 506  0032 cd0000        	call	_TIM1_ClearFlag
 509  0035               L151:
 510                     ; 150   while((TIM1->SR1 & TIM1_FLAG_CC1) != TIM1_FLAG_CC1);
 512  0035 c65255        	ld	a,21077
 513  0038 a402          	and	a,#2
 514  003a a102          	cp	a,#2
 515  003c 26f7          	jrne	L151
 516                     ; 152   ICValue2 = TIM1_GetCapture1();
 518  003e cd0000        	call	_TIM1_GetCapture1
 520  0041 1f07          	ldw	(OFST-5,sp),x
 522                     ; 153   TIM1_ClearFlag(TIM1_FLAG_CC1);
 524  0043 ae0002        	ldw	x,#2
 525  0046 cd0000        	call	_TIM1_ClearFlag
 527                     ; 156   TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
 529  0049 7211525c      	bres	21084,#0
 530                     ; 158   TIM1_Cmd(DISABLE);
 532  004d 4f            	clr	a
 533  004e cd0000        	call	_TIM1_Cmd
 535                     ; 160   lsi_freq_hz = (8 * fmaster) / (ICValue2 - ICValue1);
 537  0051 1e07          	ldw	x,(OFST-5,sp)
 538  0053 72f005        	subw	x,(OFST-7,sp)
 539  0056 cd0000        	call	c_uitolx
 541  0059 96            	ldw	x,sp
 542  005a 1c0001        	addw	x,#OFST-11
 543  005d cd0000        	call	c_rtol
 546  0060 96            	ldw	x,sp
 547  0061 1c0009        	addw	x,#OFST-3
 548  0064 cd0000        	call	c_ltor
 550  0067 a603          	ld	a,#3
 551  0069 cd0000        	call	c_llsh
 553  006c 96            	ldw	x,sp
 554  006d 1c0001        	addw	x,#OFST-11
 555  0070 cd0000        	call	c_ludv
 557  0073 96            	ldw	x,sp
 558  0074 1c0009        	addw	x,#OFST-3
 559  0077 cd0000        	call	c_rtol
 562                     ; 163   AWU->CSR &= (uint8_t)(~AWU_CSR_MSR);
 564  007a 721150f0      	bres	20720,#0
 565                     ; 164  return (lsi_freq_hz);
 567  007e 96            	ldw	x,sp
 568  007f 1c0009        	addw	x,#OFST-3
 569  0082 cd0000        	call	c_ltor
 573  0085 5b0c          	addw	sp,#12
 574  0087 81            	ret
 608                     ; 167 void Delay(uint16_t nCount)
 608                     ; 168 {
 609                     .text:	section	.text,new
 610  0000               _Delay:
 612  0000 89            	pushw	x
 613       00000000      OFST:	set	0
 616  0001 2007          	jra	L571
 617  0003               L371:
 618                     ; 172         nCount--;
 620  0003 1e01          	ldw	x,(OFST+1,sp)
 621  0005 1d0001        	subw	x,#1
 622  0008 1f01          	ldw	(OFST+1,sp),x
 623  000a               L571:
 624                     ; 170     while (nCount != 0)
 626  000a 1e01          	ldw	x,(OFST+1,sp)
 627  000c 26f5          	jrne	L371
 628                     ; 174 }
 631  000e 85            	popw	x
 632  000f 81            	ret
 667                     ; 185 void assert_failed(uint8_t* file, uint32_t line)
 667                     ; 186 { 
 668                     .text:	section	.text,new
 669  0000               _assert_failed:
 673  0000               L712:
 674  0000 20fe          	jra	L712
 687                     	xdef	_main
 688                     	xdef	_LSIMeasurment
 689                     	xdef	_Delay
 690                     	xdef	_assert_failed
 691                     	xref	_TIM4_DeInit
 692                     	xref	_TIM1_ClearFlag
 693                     	xref	_TIM1_GetCapture1
 694                     	xref	_TIM1_Cmd
 695                     	xref	_TIM1_ICInit
 696                     	xref	_GPIO_ReadInputPin
 697                     	xref	_GPIO_WriteLow
 698                     	xref	_GPIO_WriteHigh
 699                     	xref	_GPIO_Init
 700                     	xref	_GPIO_DeInit
 701                     	xref	_CLK_GetClockFreq
 702                     	xref	_CLK_SYSCLKConfig
 703                     	xref	_CLK_DeInit
 704                     	xref	_BEEP_LSICalibrationConfig
 705                     	xref	_BEEP_Cmd
 706                     	xref	_BEEP_Init
 707                     	xref.b	c_x
 726                     	xref	c_ludv
 727                     	xref	c_uitolx
 728                     	xref	c_llsh
 729                     	xref	c_ltor
 730                     	xref	c_rtol
 731                     	end
