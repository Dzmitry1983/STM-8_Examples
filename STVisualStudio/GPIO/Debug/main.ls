   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
  60                     ; 38 void main(void)
  60                     ; 39 {
  62                     	switch	.text
  63  0000               _main:
  65  0000 89            	pushw	x
  66       00000002      OFST:	set	2
  69                     ; 42 	GPIO_DeInit(LED_GPIO_PORT);
  71  0001 ae5005        	ldw	x,#20485
  72  0004 cd0000        	call	_GPIO_DeInit
  74                     ; 43 	GPIO_DeInit(BUTTON_GPIO_PORT);
  76  0007 ae5000        	ldw	x,#20480
  77  000a cd0000        	call	_GPIO_DeInit
  79                     ; 44 	GPIO_Init(LED_GPIO_PORT, (GPIO_Pin_TypeDef)LED_GPIO_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
  81  000d 4be0          	push	#224
  82  000f 4b20          	push	#32
  83  0011 ae5005        	ldw	x,#20485
  84  0014 cd0000        	call	_GPIO_Init
  86  0017 85            	popw	x
  87                     ; 45 	GPIO_Init(BUTTON_GPIO_PORT, BUTTON_GPIO_PIN, GPIO_MODE_IN_FL_NO_IT);
  89  0018 4b00          	push	#0
  90  001a 4b08          	push	#8
  91  001c ae5000        	ldw	x,#20480
  92  001f cd0000        	call	_GPIO_Init
  94  0022 85            	popw	x
  95  0023               L72:
  96                     ; 50 		int ButtonPressed = GPIO_ReadInputPin(BUTTON_GPIO_PORT, BUTTON_GPIO_PIN) != 0;
  98  0023 4b08          	push	#8
  99  0025 ae5000        	ldw	x,#20480
 100  0028 cd0000        	call	_GPIO_ReadInputPin
 102  002b 5b01          	addw	sp,#1
 103  002d 4d            	tnz	a
 104  002e 2705          	jreq	L6
 105  0030 ae0001        	ldw	x,#1
 106  0033 2001          	jra	L01
 107  0035               L6:
 108  0035 5f            	clrw	x
 109  0036               L01:
 110  0036 1f01          	ldw	(OFST-1,sp),x
 112                     ; 52 		if (ButtonPressed == TRUE) {
 114  0038 1e01          	ldw	x,(OFST-1,sp)
 115  003a a30001        	cpw	x,#1
 116  003d 260b          	jrne	L33
 117                     ; 53 			GPIO_WriteReverse(LED_GPIO_PORT, (GPIO_Pin_TypeDef)LED_GPIO_PIN);
 119  003f 4b20          	push	#32
 120  0041 ae5005        	ldw	x,#20485
 121  0044 cd0000        	call	_GPIO_WriteReverse
 123  0047 84            	pop	a
 125  0048 2009          	jra	L53
 126  004a               L33:
 127                     ; 57 			GPIO_WriteLow(LED_GPIO_PORT, LED_GPIO_PIN);
 129  004a 4b20          	push	#32
 130  004c ae5005        	ldw	x,#20485
 131  004f cd0000        	call	_GPIO_WriteLow
 133  0052 84            	pop	a
 134  0053               L53:
 135                     ; 63 	Delay(6000);
 137  0053 ae1770        	ldw	x,#6000
 138  0056 89            	pushw	x
 139  0057 ae0000        	ldw	x,#0
 140  005a 89            	pushw	x
 141  005b ad04          	call	_Delay
 143  005d 5b04          	addw	sp,#4
 145  005f 20c2          	jra	L72
 179                     ; 73 void Delay(uint32_t nCount)
 179                     ; 74 {
 180                     	switch	.text
 181  0061               _Delay:
 183       00000000      OFST:	set	0
 186  0061 2009          	jra	L75
 187  0063               L55:
 188                     ; 78     nCount--;
 190  0063 96            	ldw	x,sp
 191  0064 1c0003        	addw	x,#OFST+3
 192  0067 a601          	ld	a,#1
 193  0069 cd0000        	call	c_lgsbc
 195  006c               L75:
 196                     ; 76   while (nCount != 0)
 198  006c 96            	ldw	x,sp
 199  006d 1c0003        	addw	x,#OFST+3
 200  0070 cd0000        	call	c_lzmp
 202  0073 26ee          	jrne	L55
 203                     ; 80 }
 206  0075 81            	ret
 241                     ; 91 void assert_failed(uint8_t* file, uint32_t line)
 241                     ; 92 { 
 242                     	switch	.text
 243  0076               _assert_failed:
 247  0076               L101:
 248  0076 20fe          	jra	L101
 261                     	xdef	_main
 262                     	xdef	_Delay
 263                     	xdef	_assert_failed
 264                     	xref	_GPIO_ReadInputPin
 265                     	xref	_GPIO_WriteReverse
 266                     	xref	_GPIO_WriteLow
 267                     	xref	_GPIO_Init
 268                     	xref	_GPIO_DeInit
 287                     	xref	c_lzmp
 288                     	xref	c_lgsbc
 289                     	end
