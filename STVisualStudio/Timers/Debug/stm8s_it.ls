   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
  45                     ; 53 INTERRUPT_HANDLER(NonHandledInterrupt, 25)
  45                     ; 54 {
  46                     .text:	section	.text,new
  47  0000               f_NonHandledInterrupt:
  51                     ; 58 }
  54  0000 80            	iret
  76                     ; 66 INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
  76                     ; 67 {
  77                     .text:	section	.text,new
  78  0000               f_TRAP_IRQHandler:
  82                     ; 71 }
  85  0000 80            	iret
 107                     ; 78 INTERRUPT_HANDLER(TLI_IRQHandler, 0)
 107                     ; 79 
 107                     ; 80 {
 108                     .text:	section	.text,new
 109  0000               f_TLI_IRQHandler:
 113                     ; 84 }
 116  0000 80            	iret
 138                     ; 91 INTERRUPT_HANDLER(AWU_IRQHandler, 1)
 138                     ; 92 {
 139                     .text:	section	.text,new
 140  0000               f_AWU_IRQHandler:
 144                     ; 96 }
 147  0000 80            	iret
 169                     ; 103 INTERRUPT_HANDLER(CLK_IRQHandler, 2)
 169                     ; 104 {
 170                     .text:	section	.text,new
 171  0000               f_CLK_IRQHandler:
 175                     ; 108 }
 178  0000 80            	iret
 201                     ; 115 INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
 201                     ; 116 {
 202                     .text:	section	.text,new
 203  0000               f_EXTI_PORTA_IRQHandler:
 207                     ; 120 }
 210  0000 80            	iret
 233                     ; 127 INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
 233                     ; 128 {
 234                     .text:	section	.text,new
 235  0000               f_EXTI_PORTB_IRQHandler:
 239                     ; 132 }
 242  0000 80            	iret
 265                     ; 139 INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
 265                     ; 140 {
 266                     .text:	section	.text,new
 267  0000               f_EXTI_PORTC_IRQHandler:
 271                     ; 144 }
 274  0000 80            	iret
 297                     ; 151 INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
 297                     ; 152 {
 298                     .text:	section	.text,new
 299  0000               f_EXTI_PORTD_IRQHandler:
 303                     ; 156 }
 306  0000 80            	iret
 329                     ; 163 INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
 329                     ; 164 {
 330                     .text:	section	.text,new
 331  0000               f_EXTI_PORTE_IRQHandler:
 335                     ; 168 }
 338  0000 80            	iret
 360                     ; 215 INTERRUPT_HANDLER(SPI_IRQHandler, 10)
 360                     ; 216 {
 361                     .text:	section	.text,new
 362  0000               f_SPI_IRQHandler:
 366                     ; 220 }
 369  0000 80            	iret
 395                     ; 227 INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
 395                     ; 228 {
 396                     .text:	section	.text,new
 397  0000               f_TIM1_UPD_OVF_TRG_BRK_IRQHandler:
 399  0000 8a            	push	cc
 400  0001 84            	pop	a
 401  0002 a4bf          	and	a,#191
 402  0004 88            	push	a
 403  0005 86            	pop	cc
 404  0006 3b0002        	push	c_x+2
 405  0009 be00          	ldw	x,c_x
 406  000b 89            	pushw	x
 407  000c 3b0002        	push	c_y+2
 408  000f be00          	ldw	x,c_y
 409  0011 89            	pushw	x
 412                     ; 232   if (TIM1_GetITStatus(TIM1_IT_UPDATE)) {
 414  0012 a601          	ld	a,#1
 415  0014 cd0000        	call	_TIM1_GetITStatus
 417  0017 4d            	tnz	a
 418  0018 270e          	jreq	L151
 419                     ; 233 	  TIM1_ClearITPendingBit(TIM1_IT_UPDATE);
 421  001a a601          	ld	a,#1
 422  001c cd0000        	call	_TIM1_ClearITPendingBit
 424                     ; 234 	  GPIO_WriteReverse(GPIOB, GPIO_PIN_5);
 426  001f 4b20          	push	#32
 427  0021 ae5005        	ldw	x,#20485
 428  0024 cd0000        	call	_GPIO_WriteReverse
 430  0027 84            	pop	a
 431  0028               L151:
 432                     ; 236 }
 435  0028 85            	popw	x
 436  0029 bf00          	ldw	c_y,x
 437  002b 320002        	pop	c_y+2
 438  002e 85            	popw	x
 439  002f bf00          	ldw	c_x,x
 440  0031 320002        	pop	c_x+2
 441  0034 80            	iret
 464                     ; 243 INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
 464                     ; 244 {
 465                     .text:	section	.text,new
 466  0000               f_TIM1_CAP_COM_IRQHandler:
 470                     ; 248 }
 473  0000 80            	iret
 496                     ; 281  INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
 496                     ; 282  {
 497                     .text:	section	.text,new
 498  0000               f_TIM2_UPD_OVF_BRK_IRQHandler:
 502                     ; 286  }
 505  0000 80            	iret
 528                     ; 293  INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
 528                     ; 294  {
 529                     .text:	section	.text,new
 530  0000               f_TIM2_CAP_COM_IRQHandler:
 534                     ; 298  }
 537  0000 80            	iret
 560                     ; 335  INTERRUPT_HANDLER(UART1_TX_IRQHandler, 17)
 560                     ; 336  {
 561                     .text:	section	.text,new
 562  0000               f_UART1_TX_IRQHandler:
 566                     ; 340  }
 569  0000 80            	iret
 592                     ; 347  INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
 592                     ; 348  {
 593                     .text:	section	.text,new
 594  0000               f_UART1_RX_IRQHandler:
 598                     ; 352  }
 601  0000 80            	iret
 623                     ; 386 INTERRUPT_HANDLER(I2C_IRQHandler, 19)
 623                     ; 387 {
 624                     .text:	section	.text,new
 625  0000               f_I2C_IRQHandler:
 629                     ; 391 }
 632  0000 80            	iret
 654                     ; 465  INTERRUPT_HANDLER(ADC1_IRQHandler, 22)
 654                     ; 466  {
 655                     .text:	section	.text,new
 656  0000               f_ADC1_IRQHandler:
 660                     ; 470  }
 663  0000 80            	iret
 686                     ; 491  INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
 686                     ; 492  {
 687                     .text:	section	.text,new
 688  0000               f_TIM4_UPD_OVF_IRQHandler:
 692                     ; 496  }
 695  0000 80            	iret
 718                     ; 504 INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
 718                     ; 505 {
 719                     .text:	section	.text,new
 720  0000               f_EEPROM_EEC_IRQHandler:
 724                     ; 509 }
 727  0000 80            	iret
 739                     	xdef	f_EEPROM_EEC_IRQHandler
 740                     	xdef	f_TIM4_UPD_OVF_IRQHandler
 741                     	xdef	f_ADC1_IRQHandler
 742                     	xdef	f_I2C_IRQHandler
 743                     	xdef	f_UART1_RX_IRQHandler
 744                     	xdef	f_UART1_TX_IRQHandler
 745                     	xdef	f_TIM2_CAP_COM_IRQHandler
 746                     	xdef	f_TIM2_UPD_OVF_BRK_IRQHandler
 747                     	xdef	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
 748                     	xdef	f_TIM1_CAP_COM_IRQHandler
 749                     	xdef	f_SPI_IRQHandler
 750                     	xdef	f_EXTI_PORTE_IRQHandler
 751                     	xdef	f_EXTI_PORTD_IRQHandler
 752                     	xdef	f_EXTI_PORTC_IRQHandler
 753                     	xdef	f_EXTI_PORTB_IRQHandler
 754                     	xdef	f_EXTI_PORTA_IRQHandler
 755                     	xdef	f_CLK_IRQHandler
 756                     	xdef	f_AWU_IRQHandler
 757                     	xdef	f_TLI_IRQHandler
 758                     	xdef	f_TRAP_IRQHandler
 759                     	xdef	f_NonHandledInterrupt
 760                     	xref	_TIM1_ClearITPendingBit
 761                     	xref	_TIM1_GetITStatus
 762                     	xref	_GPIO_WriteReverse
 763                     	xref.b	c_x
 764                     	xref.b	c_y
 783                     	end
