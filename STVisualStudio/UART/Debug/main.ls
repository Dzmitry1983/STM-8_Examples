   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
 114                     ; 38 void main(void)
 114                     ; 39 {
 116                     .text:	section	.text,new
 117  0000               _main:
 119  0000 520c          	subw	sp,#12
 120       0000000c      OFST:	set	12
 123                     ; 41 	int number = 0;
 125  0002 5f            	clrw	x
 126  0003 1f0b          	ldw	(OFST-1,sp),x
 128                     ; 42 	int lastButton = 0;
 130  0005 5f            	clrw	x
 131  0006 1f09          	ldw	(OFST-3,sp),x
 133                     ; 43 	uint32_t speedUart = 115200;
 135  0008 aec200        	ldw	x,#49664
 136  000b 1f06          	ldw	(OFST-6,sp),x
 137  000d ae0001        	ldw	x,#1
 138  0010 1f04          	ldw	(OFST-8,sp),x
 140                     ; 44 	char c = 'a';
 142                     ; 47 	GPIO_DeInit(LED_GPIO_PORT);
 144  0012 ae5005        	ldw	x,#20485
 145  0015 cd0000        	call	_GPIO_DeInit
 147                     ; 48 	GPIO_DeInit(BUTTON_GPIO_PORT);
 149  0018 ae5000        	ldw	x,#20480
 150  001b cd0000        	call	_GPIO_DeInit
 152                     ; 49 	GPIO_Init(LED_GPIO_PORT, (GPIO_Pin_TypeDef)LED_GPIO_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
 154  001e 4be0          	push	#224
 155  0020 4b20          	push	#32
 156  0022 ae5005        	ldw	x,#20485
 157  0025 cd0000        	call	_GPIO_Init
 159  0028 85            	popw	x
 160                     ; 50 	GPIO_Init(BUTTON_GPIO_PORT, BUTTON_GPIO_PIN, GPIO_MODE_IN_FL_NO_IT);
 162  0029 4b00          	push	#0
 163  002b 4b08          	push	#8
 164  002d ae5000        	ldw	x,#20480
 165  0030 cd0000        	call	_GPIO_Init
 167  0033 85            	popw	x
 168                     ; 52 	CLK_DeInit();
 170  0034 cd0000        	call	_CLK_DeInit
 172                     ; 53 	TIM1_DeInit();
 174  0037 cd0000        	call	_TIM1_DeInit
 176                     ; 54 	CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
 178  003a 4f            	clr	a
 179  003b cd0000        	call	_CLK_HSIPrescalerConfig
 181                     ; 55 	CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV1);
 183  003e a680          	ld	a,#128
 184  0040 cd0000        	call	_CLK_SYSCLKConfig
 186                     ; 59 	UART1_DeInit();
 188  0043 cd0000        	call	_UART1_DeInit
 190                     ; 60 	UART1_Init(speedUart, UART1_WORDLENGTH_8D, UART1_STOPBITS_1, UART1_PARITY_NO, UART1_SYNCMODE_CLOCK_DISABLE, UART1_MODE_TXRX_ENABLE);
 192  0046 4b0c          	push	#12
 193  0048 4b80          	push	#128
 194  004a 4b00          	push	#0
 195  004c 4b00          	push	#0
 196  004e 4b00          	push	#0
 197  0050 1e0b          	ldw	x,(OFST-1,sp)
 198  0052 89            	pushw	x
 199  0053 1e0b          	ldw	x,(OFST-1,sp)
 200  0055 89            	pushw	x
 201  0056 cd0000        	call	_UART1_Init
 203  0059 5b09          	addw	sp,#9
 204  005b               L35:
 205                     ; 65 		char sendData = '0';
 207  005b a630          	ld	a,#48
 208  005d 6b01          	ld	(OFST-11,sp),a
 210                     ; 68 		int ButtonPressed = GPIO_ReadInputPin(BUTTON_GPIO_PORT, BUTTON_GPIO_PIN) != 0;
 212  005f 4b08          	push	#8
 213  0061 ae5000        	ldw	x,#20480
 214  0064 cd0000        	call	_GPIO_ReadInputPin
 216  0067 5b01          	addw	sp,#1
 217  0069 4d            	tnz	a
 218  006a 2705          	jreq	L6
 219  006c ae0001        	ldw	x,#1
 220  006f 2001          	jra	L01
 221  0071               L6:
 222  0071 5f            	clrw	x
 223  0072               L01:
 224  0072 1f02          	ldw	(OFST-10,sp),x
 226                     ; 69 		if (lastButton != ButtonPressed) {
 228  0074 1e09          	ldw	x,(OFST-3,sp)
 229  0076 1302          	cpw	x,(OFST-10,sp)
 230  0078 2745          	jreq	L57
 231                     ; 70 			if (ButtonPressed) {
 233  007a 1e02          	ldw	x,(OFST-10,sp)
 234  007c 272f          	jreq	L16
 235                     ; 71 				GPIO_WriteReverse(LED_GPIO_PORT, (GPIO_Pin_TypeDef)LED_GPIO_PIN);
 237  007e 4b20          	push	#32
 238  0080 ae5005        	ldw	x,#20485
 239  0083 cd0000        	call	_GPIO_WriteReverse
 241  0086 84            	pop	a
 242                     ; 72 				number++;
 244  0087 1e0b          	ldw	x,(OFST-1,sp)
 245  0089 1c0001        	addw	x,#1
 246  008c 1f0b          	ldw	(OFST-1,sp),x
 248                     ; 73 				if (number >= 9) {
 250  008e 9c            	rvf
 251  008f 1e0b          	ldw	x,(OFST-1,sp)
 252  0091 a30009        	cpw	x,#9
 253  0094 2f03          	jrslt	L36
 254                     ; 74 					number = 0;
 256  0096 5f            	clrw	x
 257  0097 1f0b          	ldw	(OFST-1,sp),x
 259  0099               L36:
 260                     ; 77 				sendData += number;
 262  0099 7b01          	ld	a,(OFST-11,sp)
 263  009b 1b0c          	add	a,(OFST+0,sp)
 264  009d 6b01          	ld	(OFST-11,sp),a
 266                     ; 79 				UART1_SendData8(sendData);
 268  009f 7b01          	ld	a,(OFST-11,sp)
 269  00a1 cd0000        	call	_UART1_SendData8
 272  00a4               L76:
 273                     ; 81 				while (UART1_GetFlagStatus(UART1_FLAG_TXE) == RESET);
 275  00a4 ae0080        	ldw	x,#128
 276  00a7 cd0000        	call	_UART1_GetFlagStatus
 278  00aa 4d            	tnz	a
 279  00ab 27f7          	jreq	L76
 280  00ad               L16:
 281                     ; 83 			lastButton = ButtonPressed;
 283  00ad 1e02          	ldw	x,(OFST-10,sp)
 284  00af 1f09          	ldw	(OFST-3,sp),x
 286  00b1 200c          	jra	L57
 287  00b3               L37:
 288                     ; 89 			c = UART1_ReceiveData8();
 290  00b3 cd0000        	call	_UART1_ReceiveData8
 292                     ; 90 			GPIO_WriteReverse(LED_GPIO_PORT, (GPIO_Pin_TypeDef)LED_GPIO_PIN);
 294  00b6 4b20          	push	#32
 295  00b8 ae5005        	ldw	x,#20485
 296  00bb cd0000        	call	_GPIO_WriteReverse
 298  00be 84            	pop	a
 299  00bf               L57:
 300                     ; 88 		while (UART1_GetFlagStatus(UART1_FLAG_RXNE) == SET) {
 302  00bf ae0020        	ldw	x,#32
 303  00c2 cd0000        	call	_UART1_GetFlagStatus
 305  00c5 a101          	cp	a,#1
 306  00c7 27ea          	jreq	L37
 307                     ; 95 		if (ButtonPressed == TRUE) {
 309  00c9 1e02          	ldw	x,(OFST-10,sp)
 310  00cb a30001        	cpw	x,#1
 312  00ce               L301:
 313                     ; 106 	Delay(600);
 315  00ce ae0258        	ldw	x,#600
 316  00d1 89            	pushw	x
 317  00d2 ae0000        	ldw	x,#0
 318  00d5 89            	pushw	x
 319  00d6 cd0000        	call	_Delay
 321  00d9 5b04          	addw	sp,#4
 323  00db cc005b        	jra	L35
 357                     ; 116 void Delay(uint32_t nCount)
 357                     ; 117 {
 358                     .text:	section	.text,new
 359  0000               _Delay:
 361       00000000      OFST:	set	0
 364  0000 2009          	jra	L521
 365  0002               L321:
 366                     ; 121     nCount--;
 368  0002 96            	ldw	x,sp
 369  0003 1c0003        	addw	x,#OFST+3
 370  0006 a601          	ld	a,#1
 371  0008 cd0000        	call	c_lgsbc
 373  000b               L521:
 374                     ; 119   while (nCount != 0)
 376  000b 96            	ldw	x,sp
 377  000c 1c0003        	addw	x,#OFST+3
 378  000f cd0000        	call	c_lzmp
 380  0012 26ee          	jrne	L321
 381                     ; 123 }
 384  0014 81            	ret
 419                     ; 134 void assert_failed(uint8_t* file, uint32_t line)
 419                     ; 135 { 
 420                     .text:	section	.text,new
 421  0000               _assert_failed:
 425  0000               L741:
 426  0000 20fe          	jra	L741
 439                     	xdef	_main
 440                     	xdef	_Delay
 441                     	xdef	_assert_failed
 442                     	xref	_UART1_GetFlagStatus
 443                     	xref	_UART1_SendData8
 444                     	xref	_UART1_ReceiveData8
 445                     	xref	_UART1_Init
 446                     	xref	_UART1_DeInit
 447                     	xref	_TIM1_DeInit
 448                     	xref	_GPIO_ReadInputPin
 449                     	xref	_GPIO_WriteReverse
 450                     	xref	_GPIO_Init
 451                     	xref	_GPIO_DeInit
 452                     	xref	_CLK_SYSCLKConfig
 453                     	xref	_CLK_HSIPrescalerConfig
 454                     	xref	_CLK_DeInit
 473                     	xref	c_lzmp
 474                     	xref	c_lgsbc
 475                     	end
