   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
  44                     ; 53 INTERRUPT_HANDLER(NonHandledInterrupt, 25)
  44                     ; 54 {
  45                     	switch	.text
  46  0000               f_NonHandledInterrupt:
  50                     ; 58 }
  53  0000 80            	iret
  75                     ; 66 INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
  75                     ; 67 {
  76                     	switch	.text
  77  0001               f_TRAP_IRQHandler:
  81                     ; 71 }
  84  0001 80            	iret
 106                     ; 78 INTERRUPT_HANDLER(TLI_IRQHandler, 0)
 106                     ; 79 
 106                     ; 80 {
 107                     	switch	.text
 108  0002               f_TLI_IRQHandler:
 112                     ; 84 }
 115  0002 80            	iret
 137                     ; 91 INTERRUPT_HANDLER(AWU_IRQHandler, 1)
 137                     ; 92 {
 138                     	switch	.text
 139  0003               f_AWU_IRQHandler:
 143                     ; 96 }
 146  0003 80            	iret
 168                     ; 103 INTERRUPT_HANDLER(CLK_IRQHandler, 2)
 168                     ; 104 {
 169                     	switch	.text
 170  0004               f_CLK_IRQHandler:
 174                     ; 108 }
 177  0004 80            	iret
 201                     ; 115 INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
 201                     ; 116 {
 202                     	switch	.text
 203  0005               f_EXTI_PORTA_IRQHandler:
 205  0005 8a            	push	cc
 206  0006 84            	pop	a
 207  0007 a4bf          	and	a,#191
 208  0009 88            	push	a
 209  000a 86            	pop	cc
 210  000b 3b0002        	push	c_x+2
 211  000e be00          	ldw	x,c_x
 212  0010 89            	pushw	x
 213  0011 3b0002        	push	c_y+2
 214  0014 be00          	ldw	x,c_y
 215  0016 89            	pushw	x
 218                     ; 120 	GPIO_WriteReverse(GPIOB, GPIO_PIN_5);
 220  0017 4b20          	push	#32
 221  0019 ae5005        	ldw	x,#20485
 222  001c cd0000        	call	_GPIO_WriteReverse
 224  001f 84            	pop	a
 225                     ; 122 }
 228  0020 85            	popw	x
 229  0021 bf00          	ldw	c_y,x
 230  0023 320002        	pop	c_y+2
 231  0026 85            	popw	x
 232  0027 bf00          	ldw	c_x,x
 233  0029 320002        	pop	c_x+2
 234  002c 80            	iret
 257                     ; 129 INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
 257                     ; 130 {
 258                     	switch	.text
 259  002d               f_EXTI_PORTB_IRQHandler:
 263                     ; 135 }
 266  002d 80            	iret
 289                     ; 142 INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
 289                     ; 143 {
 290                     	switch	.text
 291  002e               f_EXTI_PORTC_IRQHandler:
 295                     ; 148 }
 298  002e 80            	iret
 321                     ; 155 INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
 321                     ; 156 {
 322                     	switch	.text
 323  002f               f_EXTI_PORTD_IRQHandler:
 327                     ; 160 }
 330  002f 80            	iret
 353                     ; 167 INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
 353                     ; 168 {
 354                     	switch	.text
 355  0030               f_EXTI_PORTE_IRQHandler:
 359                     ; 172 }
 362  0030 80            	iret
 384                     ; 219 INTERRUPT_HANDLER(SPI_IRQHandler, 10)
 384                     ; 220 {
 385                     	switch	.text
 386  0031               f_SPI_IRQHandler:
 390                     ; 224 }
 393  0031 80            	iret
 416                     ; 231 INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
 416                     ; 232 {
 417                     	switch	.text
 418  0032               f_TIM1_UPD_OVF_TRG_BRK_IRQHandler:
 422                     ; 236 }
 425  0032 80            	iret
 448                     ; 243 INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
 448                     ; 244 {
 449                     	switch	.text
 450  0033               f_TIM1_CAP_COM_IRQHandler:
 454                     ; 248 }
 457  0033 80            	iret
 480                     ; 281  INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
 480                     ; 282  {
 481                     	switch	.text
 482  0034               f_TIM2_UPD_OVF_BRK_IRQHandler:
 486                     ; 286  }
 489  0034 80            	iret
 512                     ; 293  INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
 512                     ; 294  {
 513                     	switch	.text
 514  0035               f_TIM2_CAP_COM_IRQHandler:
 518                     ; 298  }
 521  0035 80            	iret
 544                     ; 335  INTERRUPT_HANDLER(UART1_TX_IRQHandler, 17)
 544                     ; 336  {
 545                     	switch	.text
 546  0036               f_UART1_TX_IRQHandler:
 550                     ; 340  }
 553  0036 80            	iret
 576                     ; 347  INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
 576                     ; 348  {
 577                     	switch	.text
 578  0037               f_UART1_RX_IRQHandler:
 582                     ; 352  }
 585  0037 80            	iret
 607                     ; 386 INTERRUPT_HANDLER(I2C_IRQHandler, 19)
 607                     ; 387 {
 608                     	switch	.text
 609  0038               f_I2C_IRQHandler:
 613                     ; 391 }
 616  0038 80            	iret
 638                     ; 465  INTERRUPT_HANDLER(ADC1_IRQHandler, 22)
 638                     ; 466  {
 639                     	switch	.text
 640  0039               f_ADC1_IRQHandler:
 644                     ; 470  }
 647  0039 80            	iret
 670                     ; 491  INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
 670                     ; 492  {
 671                     	switch	.text
 672  003a               f_TIM4_UPD_OVF_IRQHandler:
 676                     ; 496  }
 679  003a 80            	iret
 702                     ; 504 INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
 702                     ; 505 {
 703                     	switch	.text
 704  003b               f_EEPROM_EEC_IRQHandler:
 708                     ; 509 }
 711  003b 80            	iret
 723                     	xdef	f_EEPROM_EEC_IRQHandler
 724                     	xdef	f_TIM4_UPD_OVF_IRQHandler
 725                     	xdef	f_ADC1_IRQHandler
 726                     	xdef	f_I2C_IRQHandler
 727                     	xdef	f_UART1_RX_IRQHandler
 728                     	xdef	f_UART1_TX_IRQHandler
 729                     	xdef	f_TIM2_CAP_COM_IRQHandler
 730                     	xdef	f_TIM2_UPD_OVF_BRK_IRQHandler
 731                     	xdef	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
 732                     	xdef	f_TIM1_CAP_COM_IRQHandler
 733                     	xdef	f_SPI_IRQHandler
 734                     	xdef	f_EXTI_PORTE_IRQHandler
 735                     	xdef	f_EXTI_PORTD_IRQHandler
 736                     	xdef	f_EXTI_PORTC_IRQHandler
 737                     	xdef	f_EXTI_PORTB_IRQHandler
 738                     	xdef	f_EXTI_PORTA_IRQHandler
 739                     	xdef	f_CLK_IRQHandler
 740                     	xdef	f_AWU_IRQHandler
 741                     	xdef	f_TLI_IRQHandler
 742                     	xdef	f_TRAP_IRQHandler
 743                     	xdef	f_NonHandledInterrupt
 744                     	xref	_GPIO_WriteReverse
 745                     	xref.b	c_x
 746                     	xref.b	c_y
 765                     	end
