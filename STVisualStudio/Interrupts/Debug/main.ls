   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
  51                     ; 17 void main(void)
  51                     ; 18 {
  53                     	switch	.text
  54  0000               _main:
  58                     ; 21 	GPIO_DeInit(LED_GPIO_PORT);
  60  0000 ae5005        	ldw	x,#20485
  61  0003 cd0000        	call	_GPIO_DeInit
  63                     ; 22 	GPIO_DeInit(BUTTON_GPIO_PORT);
  65  0006 ae5000        	ldw	x,#20480
  66  0009 cd0000        	call	_GPIO_DeInit
  68                     ; 23 	GPIO_Init(LED_GPIO_PORT, LED_GPIO_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
  70  000c 4be0          	push	#224
  71  000e 4b20          	push	#32
  72  0010 ae5005        	ldw	x,#20485
  73  0013 cd0000        	call	_GPIO_Init
  75  0016 85            	popw	x
  76                     ; 24 	GPIO_Init(BUTTON_GPIO_PORT, BUTTON_GPIO_PIN, GPIO_MODE_IN_FL_IT);
  78  0017 4b20          	push	#32
  79  0019 4b08          	push	#8
  80  001b ae5000        	ldw	x,#20480
  81  001e cd0000        	call	_GPIO_Init
  83  0021 85            	popw	x
  84                     ; 28 	EXTI_DeInit();
  86  0022 cd0000        	call	_EXTI_DeInit
  88                     ; 33 	EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOA, EXTI_SENSITIVITY_RISE_FALL);
  90  0025 ae0003        	ldw	x,#3
  91  0028 cd0000        	call	_EXTI_SetExtIntSensitivity
  93                     ; 35 	enableInterrupts();
  96  002b 9a            rim
  98  002c               L12:
  99                     ; 38 		halt();
 102  002c 8e            halt
 104                     ; 40 		Delay(6000);
 107  002d ae1770        	ldw	x,#6000
 108  0030 89            	pushw	x
 109  0031 ae0000        	ldw	x,#0
 110  0034 89            	pushw	x
 111  0035 ad0d          	call	_Delay
 113  0037 5b04          	addw	sp,#4
 114                     ; 41 		GPIO_WriteReverse(GPIOB, GPIO_PIN_5);
 116  0039 4b20          	push	#32
 117  003b ae5005        	ldw	x,#20485
 118  003e cd0000        	call	_GPIO_WriteReverse
 120  0041 84            	pop	a
 122  0042 20e8          	jra	L12
 156                     ; 46 void Delay(uint32_t nCount)
 156                     ; 47 {
 157                     	switch	.text
 158  0044               _Delay:
 160       00000000      OFST:	set	0
 163  0044 2009          	jra	L54
 164  0046               L34:
 165                     ; 51     nCount--;
 167  0046 96            	ldw	x,sp
 168  0047 1c0003        	addw	x,#OFST+3
 169  004a a601          	ld	a,#1
 170  004c cd0000        	call	c_lgsbc
 172  004f               L54:
 173                     ; 49   while (nCount != 0)
 175  004f 96            	ldw	x,sp
 176  0050 1c0003        	addw	x,#OFST+3
 177  0053 cd0000        	call	c_lzmp
 179  0056 26ee          	jrne	L34
 180                     ; 53 }
 183  0058 81            	ret
 218                     ; 56 void assert_failed(uint8_t* file, uint32_t line)
 218                     ; 57 {
 219                     	switch	.text
 220  0059               _assert_failed:
 224  0059               L76:
 225  0059 20fe          	jra	L76
 238                     	xdef	_main
 239                     	xdef	_Delay
 240                     	xdef	_assert_failed
 241                     	xref	_GPIO_WriteReverse
 242                     	xref	_GPIO_Init
 243                     	xref	_GPIO_DeInit
 244                     	xref	_EXTI_SetExtIntSensitivity
 245                     	xref	_EXTI_DeInit
 264                     	xref	c_lzmp
 265                     	xref	c_lgsbc
 266                     	end
