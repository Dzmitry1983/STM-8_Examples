   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
  45                     ; 56 INTERRUPT_HANDLER(NonHandledInterrupt, 25)
  45                     ; 57 {
  46                     .text:	section	.text,new
  47  0000               f_NonHandledInterrupt:
  51                     ; 61 }
  54  0000 80            	iret
  76                     ; 69 INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
  76                     ; 70 {
  77                     .text:	section	.text,new
  78  0000               f_TRAP_IRQHandler:
  82                     ; 74 }
  85  0000 80            	iret
 107                     ; 81 INTERRUPT_HANDLER(TLI_IRQHandler, 0)
 107                     ; 82 
 107                     ; 83 {
 108                     .text:	section	.text,new
 109  0000               f_TLI_IRQHandler:
 113                     ; 87 }
 116  0000 80            	iret
 138                     ; 94 INTERRUPT_HANDLER(AWU_IRQHandler, 1)
 138                     ; 95 {
 139                     .text:	section	.text,new
 140  0000               f_AWU_IRQHandler:
 144                     ; 99 }
 147  0000 80            	iret
 169                     ; 106 INTERRUPT_HANDLER(CLK_IRQHandler, 2)
 169                     ; 107 {
 170                     .text:	section	.text,new
 171  0000               f_CLK_IRQHandler:
 175                     ; 111 }
 178  0000 80            	iret
 201                     ; 118 INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
 201                     ; 119 {
 202                     .text:	section	.text,new
 203  0000               f_EXTI_PORTA_IRQHandler:
 207                     ; 123 }
 210  0000 80            	iret
 233                     ; 130 INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
 233                     ; 131 {
 234                     .text:	section	.text,new
 235  0000               f_EXTI_PORTB_IRQHandler:
 239                     ; 135 }
 242  0000 80            	iret
 265                     ; 142 INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
 265                     ; 143 {
 266                     .text:	section	.text,new
 267  0000               f_EXTI_PORTC_IRQHandler:
 271                     ; 147 }
 274  0000 80            	iret
 297                     ; 154 INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
 297                     ; 155 {
 298                     .text:	section	.text,new
 299  0000               f_EXTI_PORTD_IRQHandler:
 303                     ; 159 }
 306  0000 80            	iret
 329                     ; 166 INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
 329                     ; 167 {
 330                     .text:	section	.text,new
 331  0000               f_EXTI_PORTE_IRQHandler:
 335                     ; 171 }
 338  0000 80            	iret
 375                     ; 218 INTERRUPT_HANDLER(SPI_IRQHandler, 10)
 375                     ; 219 {
 376                     .text:	section	.text,new
 377  0000               f_SPI_IRQHandler:
 379  0000 8a            	push	cc
 380  0001 84            	pop	a
 381  0002 a4bf          	and	a,#191
 382  0004 88            	push	a
 383  0005 86            	pop	cc
 384       00000001      OFST:	set	1
 385  0006 3b0002        	push	c_x+2
 386  0009 be00          	ldw	x,c_x
 387  000b 89            	pushw	x
 388  000c 3b0002        	push	c_y+2
 389  000f be00          	ldw	x,c_y
 390  0011 89            	pushw	x
 391  0012 88            	push	a
 394                     ; 226 	res = SPI_ReceiveData();
 396  0013 cd0000        	call	_SPI_ReceiveData
 398  0016 6b01          	ld	(OFST+0,sp),a
 400                     ; 228 	bufferSPI[offsetSPI] = res;
 402  0018 b600          	ld	a,_offsetSPI
 403  001a 5f            	clrw	x
 404  001b 97            	ld	xl,a
 405  001c 7b01          	ld	a,(OFST+0,sp)
 406  001e e700          	ld	(_bufferSPI,x),a
 407                     ; 229 	offsetSPI++;
 409  0020 3c00          	inc	_offsetSPI
 410                     ; 230 	if (res != 0) {
 412  0022 0d01          	tnz	(OFST+0,sp)
 413  0024 2707          	jreq	L741
 414                     ; 231 		countValueSPI++;
 416  0026 be00          	ldw	x,_countValueSPI
 417  0028 1c0001        	addw	x,#1
 418  002b bf00          	ldw	_countValueSPI,x
 419  002d               L741:
 420                     ; 235 }
 423  002d 84            	pop	a
 424  002e 85            	popw	x
 425  002f bf00          	ldw	c_y,x
 426  0031 320002        	pop	c_y+2
 427  0034 85            	popw	x
 428  0035 bf00          	ldw	c_x,x
 429  0037 320002        	pop	c_x+2
 430  003a 80            	iret
 453                     ; 242 INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
 453                     ; 243 {
 454                     .text:	section	.text,new
 455  0000               f_TIM1_UPD_OVF_TRG_BRK_IRQHandler:
 459                     ; 247 }
 462  0000 80            	iret
 485                     ; 254 INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
 485                     ; 255 {
 486                     .text:	section	.text,new
 487  0000               f_TIM1_CAP_COM_IRQHandler:
 491                     ; 259 }
 494  0000 80            	iret
 517                     ; 292  INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
 517                     ; 293  {
 518                     .text:	section	.text,new
 519  0000               f_TIM2_UPD_OVF_BRK_IRQHandler:
 523                     ; 297  }
 526  0000 80            	iret
 549                     ; 304  INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
 549                     ; 305  {
 550                     .text:	section	.text,new
 551  0000               f_TIM2_CAP_COM_IRQHandler:
 555                     ; 309  }
 558  0000 80            	iret
 581                     ; 346  INTERRUPT_HANDLER(UART1_TX_IRQHandler, 17)
 581                     ; 347  {
 582                     .text:	section	.text,new
 583  0000               f_UART1_TX_IRQHandler:
 587                     ; 351  }
 590  0000 80            	iret
 613                     ; 358  INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
 613                     ; 359  {
 614                     .text:	section	.text,new
 615  0000               f_UART1_RX_IRQHandler:
 619                     ; 363  }
 622  0000 80            	iret
 644                     ; 397 INTERRUPT_HANDLER(I2C_IRQHandler, 19)
 644                     ; 398 {
 645                     .text:	section	.text,new
 646  0000               f_I2C_IRQHandler:
 650                     ; 402 }
 653  0000 80            	iret
 675                     ; 476  INTERRUPT_HANDLER(ADC1_IRQHandler, 22)
 675                     ; 477  {
 676                     .text:	section	.text,new
 677  0000               f_ADC1_IRQHandler:
 681                     ; 481  }
 684  0000 80            	iret
 707                     ; 502  INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
 707                     ; 503  {
 708                     .text:	section	.text,new
 709  0000               f_TIM4_UPD_OVF_IRQHandler:
 713                     ; 507  }
 716  0000 80            	iret
 739                     ; 515 INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
 739                     ; 516 {
 740                     .text:	section	.text,new
 741  0000               f_EEPROM_EEC_IRQHandler:
 745                     ; 520 }
 748  0000 80            	iret
 760                     	xref.b	_countValueSPI
 761                     	xref.b	_offsetSPI
 762                     	xref.b	_bufferSPI
 763                     	xdef	f_EEPROM_EEC_IRQHandler
 764                     	xdef	f_TIM4_UPD_OVF_IRQHandler
 765                     	xdef	f_ADC1_IRQHandler
 766                     	xdef	f_I2C_IRQHandler
 767                     	xdef	f_UART1_RX_IRQHandler
 768                     	xdef	f_UART1_TX_IRQHandler
 769                     	xdef	f_TIM2_CAP_COM_IRQHandler
 770                     	xdef	f_TIM2_UPD_OVF_BRK_IRQHandler
 771                     	xdef	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
 772                     	xdef	f_TIM1_CAP_COM_IRQHandler
 773                     	xdef	f_SPI_IRQHandler
 774                     	xdef	f_EXTI_PORTE_IRQHandler
 775                     	xdef	f_EXTI_PORTD_IRQHandler
 776                     	xdef	f_EXTI_PORTC_IRQHandler
 777                     	xdef	f_EXTI_PORTB_IRQHandler
 778                     	xdef	f_EXTI_PORTA_IRQHandler
 779                     	xdef	f_CLK_IRQHandler
 780                     	xdef	f_AWU_IRQHandler
 781                     	xdef	f_TLI_IRQHandler
 782                     	xdef	f_TRAP_IRQHandler
 783                     	xdef	f_NonHandledInterrupt
 784                     	xref	_SPI_ReceiveData
 785                     	xref.b	c_x
 786                     	xref.b	c_y
 805                     	end
