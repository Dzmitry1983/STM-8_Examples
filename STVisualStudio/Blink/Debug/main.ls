   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
  48                     ; 12 void main(void)
  48                     ; 13 {
  50                     .text:	section	.text,new
  51  0000               _main:
  55                     ; 15 	GPIO_DeInit(LED_GPIO_PORT);
  57  0000 ae5005        	ldw	x,#20485
  58  0003 cd0000        	call	_GPIO_DeInit
  60                     ; 16 	GPIO_Init(LED_GPIO_PORT, (GPIO_Pin_TypeDef)LED_GPIO_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
  62  0006 4be0          	push	#224
  63  0008 4b20          	push	#32
  64  000a ae5005        	ldw	x,#20485
  65  000d cd0000        	call	_GPIO_Init
  67  0010 85            	popw	x
  68  0011               L12:
  69                     ; 20 	GPIO_WriteReverse(LED_GPIO_PORT, (GPIO_Pin_TypeDef)LED_GPIO_PIN);
  71  0011 4b20          	push	#32
  72  0013 ae5005        	ldw	x,#20485
  73  0016 cd0000        	call	_GPIO_WriteReverse
  75  0019 84            	pop	a
  76                     ; 21 	Delay(6000);
  78  001a ae1770        	ldw	x,#6000
  79  001d 89            	pushw	x
  80  001e ae0000        	ldw	x,#0
  81  0021 89            	pushw	x
  82  0022 cd0000        	call	_Delay
  84  0025 5b04          	addw	sp,#4
  86  0027 20e8          	jra	L12
 120                     ; 26 void Delay(uint32_t nCount)
 120                     ; 27 {
 121                     .text:	section	.text,new
 122  0000               _Delay:
 124       00000000      OFST:	set	0
 127  0000 2009          	jra	L54
 128  0002               L34:
 129                     ; 31     nCount--;
 131  0002 96            	ldw	x,sp
 132  0003 1c0003        	addw	x,#OFST+3
 133  0006 a601          	ld	a,#1
 134  0008 cd0000        	call	c_lgsbc
 136  000b               L54:
 137                     ; 29   while (nCount != 0)
 139  000b 96            	ldw	x,sp
 140  000c 1c0003        	addw	x,#OFST+3
 141  000f cd0000        	call	c_lzmp
 143  0012 26ee          	jrne	L34
 144                     ; 33 }
 147  0014 81            	ret
 160                     	xdef	_main
 161                     	xdef	_Delay
 162                     	xref	_GPIO_WriteReverse
 163                     	xref	_GPIO_Init
 164                     	xref	_GPIO_DeInit
 183                     	xref	c_lzmp
 184                     	xref	c_lgsbc
 185                     	end
