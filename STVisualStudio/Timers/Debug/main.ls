   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
  64                     ; 38 void main(void)
  64                     ; 39 {	
  66                     .text:	section	.text,new
  67  0000               _main:
  69  0000 89            	pushw	x
  70       00000002      OFST:	set	2
  73                     ; 41 	uint16_t t1 = 0;
  75                     ; 42 	GPIO_DeInit(LED_GPIO_PORT);
  77  0001 ae5005        	ldw	x,#20485
  78  0004 cd0000        	call	_GPIO_DeInit
  80                     ; 43 	GPIO_DeInit(BUTTON_GPIO_PORT);
  82  0007 ae5000        	ldw	x,#20480
  83  000a cd0000        	call	_GPIO_DeInit
  85                     ; 44 	GPIO_Init(LED_GPIO_PORT, (GPIO_Pin_TypeDef)LED_GPIO_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
  87  000d 4be0          	push	#224
  88  000f 4b20          	push	#32
  89  0011 ae5005        	ldw	x,#20485
  90  0014 cd0000        	call	_GPIO_Init
  92  0017 85            	popw	x
  93                     ; 45 	GPIO_Init(BUTTON_GPIO_PORT, BUTTON_GPIO_PIN, GPIO_MODE_IN_FL_NO_IT);
  95  0018 4b00          	push	#0
  96  001a 4b08          	push	#8
  97  001c ae5000        	ldw	x,#20480
  98  001f cd0000        	call	_GPIO_Init
 100  0022 85            	popw	x
 101                     ; 49 	CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
 103  0023 4f            	clr	a
 104  0024 cd0000        	call	_CLK_HSIPrescalerConfig
 106                     ; 50 	CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV1);
 108  0027 a680          	ld	a,#128
 109  0029 cd0000        	call	_CLK_SYSCLKConfig
 111                     ; 51 	TIM1_TimeBaseInit(999, TIM1_COUNTERMODE_UP, 15999, 0);
 113  002c 4b00          	push	#0
 114  002e ae3e7f        	ldw	x,#15999
 115  0031 89            	pushw	x
 116  0032 4b00          	push	#0
 117  0034 ae03e7        	ldw	x,#999
 118  0037 cd0000        	call	_TIM1_TimeBaseInit
 120  003a 5b04          	addw	sp,#4
 121                     ; 52 	TIM1_ITConfig(TIM1_IT_UPDATE, ENABLE);
 123  003c ae0101        	ldw	x,#257
 124  003f cd0000        	call	_TIM1_ITConfig
 126                     ; 53 	TIM1_Cmd(ENABLE);
 128  0042 a601          	ld	a,#1
 129  0044 cd0000        	call	_TIM1_Cmd
 131                     ; 54 	enableInterrupts();
 134  0047 9a            rim
 136  0048               L72:
 137                     ; 61 		Delay(1540);
 139  0048 ae0604        	ldw	x,#1540
 140  004b 89            	pushw	x
 141  004c ae0000        	ldw	x,#0
 142  004f 89            	pushw	x
 143  0050 cd0000        	call	_Delay
 145  0053 5b04          	addw	sp,#4
 147  0055 20f1          	jra	L72
 181                     ; 72 void Delay(uint32_t nCount)
 181                     ; 73 {
 182                     .text:	section	.text,new
 183  0000               _Delay:
 185       00000000      OFST:	set	0
 188  0000 2009          	jra	L35
 189  0002               L15:
 190                     ; 77     nCount--;
 192  0002 96            	ldw	x,sp
 193  0003 1c0003        	addw	x,#OFST+3
 194  0006 a601          	ld	a,#1
 195  0008 cd0000        	call	c_lgsbc
 197  000b               L35:
 198                     ; 75   while (nCount != 0)
 200  000b 96            	ldw	x,sp
 201  000c 1c0003        	addw	x,#OFST+3
 202  000f cd0000        	call	c_lzmp
 204  0012 26ee          	jrne	L15
 205                     ; 79 }
 208  0014 81            	ret
 248                     ; 90 void assert_failed(uint8_t* file, uint32_t line)
 248                     ; 91 { 
 249                     .text:	section	.text,new
 250  0000               _assert_failed:
 254                     ; 92 	GPIO_DeInit(LED_GPIO_PORT);
 256  0000 ae5005        	ldw	x,#20485
 257  0003 cd0000        	call	_GPIO_DeInit
 259                     ; 93 	GPIO_Init(LED_GPIO_PORT, (GPIO_Pin_TypeDef)LED_GPIO_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
 261  0006 4be0          	push	#224
 262  0008 4b20          	push	#32
 263  000a ae5005        	ldw	x,#20485
 264  000d cd0000        	call	_GPIO_Init
 266  0010 85            	popw	x
 267                     ; 94 	GPIO_WriteLow(GPIOB, GPIO_PIN_5);
 269  0011 4b20          	push	#32
 270  0013 ae5005        	ldw	x,#20485
 271  0016 cd0000        	call	_GPIO_WriteLow
 273  0019 84            	pop	a
 274  001a               L57:
 275                     ; 101 		GPIO_WriteReverse(GPIOB, GPIO_PIN_5);
 277  001a 4b20          	push	#32
 278  001c ae5005        	ldw	x,#20485
 279  001f cd0000        	call	_GPIO_WriteReverse
 281  0022 84            	pop	a
 282                     ; 102 		Delay(2000);
 284  0023 ae07d0        	ldw	x,#2000
 285  0026 89            	pushw	x
 286  0027 ae0000        	ldw	x,#0
 287  002a 89            	pushw	x
 288  002b cd0000        	call	_Delay
 290  002e 5b04          	addw	sp,#4
 292  0030 20e8          	jra	L57
 305                     	xdef	_main
 306                     	xdef	_Delay
 307                     	xdef	_assert_failed
 308                     	xref	_TIM1_ITConfig
 309                     	xref	_TIM1_Cmd
 310                     	xref	_TIM1_TimeBaseInit
 311                     	xref	_GPIO_WriteReverse
 312                     	xref	_GPIO_WriteLow
 313                     	xref	_GPIO_Init
 314                     	xref	_GPIO_DeInit
 315                     	xref	_CLK_SYSCLKConfig
 316                     	xref	_CLK_HSIPrescalerConfig
 335                     	xref	c_lzmp
 336                     	xref	c_lgsbc
 337                     	end
