   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
  16                     	bsct
  17  0000               _offsetSPI:
  18  0000 00            	dc.b	0
  19  0001               _countValueSPI:
  20  0001 0000          	dc.w	0
  21  0003               L3_lastCount:
  22  0003 0000          	dc.w	0
 129                     ; 45 void main(void)
 129                     ; 46 {
 131                     .text:	section	.text,new
 132  0000               _main:
 134  0000 5204          	subw	sp,#4
 135       00000004      OFST:	set	4
 138                     ; 47 	int countN = 0;
 140                     ; 51 	init();
 142  0002 cd0000        	call	_init
 144                     ; 52 	GPIO_WriteHigh(LED_GPIO_PORT, LED_GPIO_PIN);
 146  0005 4b20          	push	#32
 147  0007 ae5005        	ldw	x,#20485
 148  000a cd0000        	call	_GPIO_WriteHigh
 150  000d 84            	pop	a
 151  000e               L16:
 152                     ; 60 	  uint8_t send = 0;
 154                     ; 62 	  bool isNeedSend = FALSE;
 156  000e 0f01          	clr	(OFST-3,sp)
 158                     ; 63 	  SPI_ITConfig(SPI_IT_RXNE, DISABLE);
 160  0010 ae0600        	ldw	x,#1536
 161  0013 cd0000        	call	_SPI_ITConfig
 164  0016 2012          	jra	L76
 165  0018               L56:
 166                     ; 66 			offsetSPI--;
 168  0018 3a00          	dec	_offsetSPI
 169                     ; 67 			res = bufferSPI[offsetSPI];
 171  001a b600          	ld	a,_offsetSPI
 172  001c 5f            	clrw	x
 173  001d 97            	ld	xl,a
 174  001e e600          	ld	a,(_bufferSPI,x)
 175  0020 6b02          	ld	(OFST-2,sp),a
 177                     ; 69 			if (res == 0) {
 179  0022 0d02          	tnz	(OFST-2,sp)
 180  0024 2604          	jrne	L76
 181                     ; 70 				isNeedSend = TRUE;
 183  0026 a601          	ld	a,#1
 184  0028 6b01          	ld	(OFST-3,sp),a
 186  002a               L76:
 187                     ; 65 		while (offsetSPI > 0) {
 189  002a 3d00          	tnz	_offsetSPI
 190  002c 26ea          	jrne	L56
 191                     ; 79 	if (isNeedSend) {
 193  002e 0d01          	tnz	(OFST-3,sp)
 194  0030 271b          	jreq	L57
 195                     ; 80 		isNeedSend = FALSE;
 197                     ; 83 			send = countValueSPI;
 199  0032 b602          	ld	a,_countValueSPI+1
 200  0034 6b02          	ld	(OFST-2,sp),a
 202                     ; 84 			if (SPI_GetFlagStatus(SPI_FLAG_TXE) == SET) {
 204  0036 a602          	ld	a,#2
 205  0038 cd0000        	call	_SPI_GetFlagStatus
 207  003b a101          	cp	a,#1
 208  003d 260e          	jrne	L57
 209                     ; 85 				SPI_SendData(send);
 211  003f 7b02          	ld	a,(OFST-2,sp)
 212  0041 cd0000        	call	_SPI_SendData
 214                     ; 86 				GPIO_WriteReverse(LED_GPIO_PORT, LED_GPIO_PIN);
 216  0044 4b20          	push	#32
 217  0046 ae5005        	ldw	x,#20485
 218  0049 cd0000        	call	_GPIO_WriteReverse
 220  004c 84            	pop	a
 221  004d               L57:
 222                     ; 94 	SPI_ITConfig(SPI_IT_RXNE, ENABLE);
 224  004d ae0601        	ldw	x,#1537
 225  0050 cd0000        	call	_SPI_ITConfig
 227                     ; 95 	Delay(6000);
 229  0053 ae1770        	ldw	x,#6000
 230  0056 89            	pushw	x
 231  0057 ae0000        	ldw	x,#0
 232  005a 89            	pushw	x
 233  005b cd0000        	call	_Delay
 235  005e 5b04          	addw	sp,#4
 237  0060 20ac          	jra	L16
 271                     ; 105 void Delay(uint32_t nCount)
 271                     ; 106 {
 272                     .text:	section	.text,new
 273  0000               _Delay:
 275       00000000      OFST:	set	0
 278  0000 2009          	jra	L121
 279  0002               L711:
 280                     ; 110     nCount--;
 282  0002 96            	ldw	x,sp
 283  0003 1c0003        	addw	x,#OFST+3
 284  0006 a601          	ld	a,#1
 285  0008 cd0000        	call	c_lgsbc
 287  000b               L121:
 288                     ; 108   while (nCount != 0)
 290  000b 96            	ldw	x,sp
 291  000c 1c0003        	addw	x,#OFST+3
 292  000f cd0000        	call	c_lzmp
 294  0012 26ee          	jrne	L711
 295                     ; 112 }
 298  0014 81            	ret
 330                     ; 114 void init(void)
 330                     ; 115 {
 331                     .text:	section	.text,new
 332  0000               _init:
 336                     ; 117 	CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
 338  0000 4f            	clr	a
 339  0001 cd0000        	call	_CLK_HSIPrescalerConfig
 341                     ; 118 	CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV1);
 343  0004 a680          	ld	a,#128
 344  0006 cd0000        	call	_CLK_SYSCLKConfig
 346                     ; 121 	GPIO_DeInit(LED_GPIO_PORT);
 348  0009 ae5005        	ldw	x,#20485
 349  000c cd0000        	call	_GPIO_DeInit
 351                     ; 122 	GPIO_Init(LED_GPIO_PORT, (GPIO_Pin_TypeDef)LED_GPIO_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
 353  000f 4be0          	push	#224
 354  0011 4b20          	push	#32
 355  0013 ae5005        	ldw	x,#20485
 356  0016 cd0000        	call	_GPIO_Init
 358  0019 85            	popw	x
 359                     ; 125 	SPI_DeInit();
 361  001a cd0000        	call	_SPI_DeInit
 363                     ; 127 	SPI_Init(SPI_FIRSTBIT_MSB, SPI_BAUDRATEPRESCALER_2, SPI_MODE_SLAVE, SPI_CLOCKPOLARITY_LOW, SPI_CLOCKPHASE_1EDGE, SPI_DATADIRECTION_2LINES_FULLDUPLEX, SPI_NSS_SOFT, 1);
 365  001d 4b01          	push	#1
 366  001f 4b02          	push	#2
 367  0021 4b00          	push	#0
 368  0023 4b00          	push	#0
 369  0025 4b00          	push	#0
 370  0027 4b00          	push	#0
 371  0029 5f            	clrw	x
 372  002a cd0000        	call	_SPI_Init
 374  002d 5b06          	addw	sp,#6
 375                     ; 128 	SPI->CRCPR = (uint8_t)0;
 377  002f 725f5205      	clr	20997
 378                     ; 130 	SPI_ITConfig(SPI_IT_RXNE, ENABLE);
 380  0033 ae0601        	ldw	x,#1537
 381  0036 cd0000        	call	_SPI_ITConfig
 383                     ; 131 	SPI_Cmd(ENABLE);
 385  0039 a601          	ld	a,#1
 386  003b cd0000        	call	_SPI_Cmd
 388                     ; 133 	enableInterrupts();
 391  003e 9a            rim
 393                     ; 134 }
 397  003f 81            	ret
 432                     ; 145 void assert_failed(uint8_t* file, uint32_t line)
 432                     ; 146 { 
 433                     .text:	section	.text,new
 434  0000               _assert_failed:
 438  0000               L351:
 439  0000 20fe          	jra	L351
 482                     	xdef	_main
 483                     	xdef	_init
 484                     	xdef	_Delay
 485                     	xdef	_countValueSPI
 486                     	xdef	_offsetSPI
 487                     	switch	.ubsct
 488  0000               _bufferSPI:
 489  0000 000000000000  	ds.b	100
 490                     	xdef	_bufferSPI
 491                     	xdef	_assert_failed
 492                     	xref	_SPI_GetFlagStatus
 493                     	xref	_SPI_SendData
 494                     	xref	_SPI_ITConfig
 495                     	xref	_SPI_Cmd
 496                     	xref	_SPI_Init
 497                     	xref	_SPI_DeInit
 498                     	xref	_GPIO_WriteReverse
 499                     	xref	_GPIO_WriteHigh
 500                     	xref	_GPIO_Init
 501                     	xref	_GPIO_DeInit
 502                     	xref	_CLK_SYSCLKConfig
 503                     	xref	_CLK_HSIPrescalerConfig
 523                     	xref	c_lzmp
 524                     	xref	c_lgsbc
 525                     	end
