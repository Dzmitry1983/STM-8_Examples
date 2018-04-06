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
 392                     ; 227 INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
 392                     ; 228 {
 393                     .text:	section	.text,new
 394  0000               f_TIM1_UPD_OVF_TRG_BRK_IRQHandler:
 398                     ; 232 }
 401  0000 80            	iret
 424                     ; 239 INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
 424                     ; 240 {
 425                     .text:	section	.text,new
 426  0000               f_TIM1_CAP_COM_IRQHandler:
 430                     ; 244 }
 433  0000 80            	iret
 456                     ; 277  INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
 456                     ; 278  {
 457                     .text:	section	.text,new
 458  0000               f_TIM2_UPD_OVF_BRK_IRQHandler:
 462                     ; 282  }
 465  0000 80            	iret
 488                     ; 289  INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
 488                     ; 290  {
 489                     .text:	section	.text,new
 490  0000               f_TIM2_CAP_COM_IRQHandler:
 494                     ; 294  }
 497  0000 80            	iret
 520                     ; 331  INTERRUPT_HANDLER(UART1_TX_IRQHandler, 17)
 520                     ; 332  {
 521                     .text:	section	.text,new
 522  0000               f_UART1_TX_IRQHandler:
 526                     ; 336  }
 529  0000 80            	iret
 552                     ; 343  INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
 552                     ; 344  {
 553                     .text:	section	.text,new
 554  0000               f_UART1_RX_IRQHandler:
 558                     ; 348  }
 561  0000 80            	iret
 583                     ; 382 INTERRUPT_HANDLER(I2C_IRQHandler, 19)
 583                     ; 383 {
 584                     .text:	section	.text,new
 585  0000               f_I2C_IRQHandler:
 589                     ; 387 }
 592  0000 80            	iret
 614                     ; 461  INTERRUPT_HANDLER(ADC1_IRQHandler, 22)
 614                     ; 462  {
 615                     .text:	section	.text,new
 616  0000               f_ADC1_IRQHandler:
 620                     ; 466  }
 623  0000 80            	iret
 646                     ; 487  INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
 646                     ; 488  {
 647                     .text:	section	.text,new
 648  0000               f_TIM4_UPD_OVF_IRQHandler:
 652                     ; 492  }
 655  0000 80            	iret
 678                     ; 500 INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
 678                     ; 501 {
 679                     .text:	section	.text,new
 680  0000               f_EEPROM_EEC_IRQHandler:
 684                     ; 505 }
 687  0000 80            	iret
 699                     	xdef	f_EEPROM_EEC_IRQHandler
 700                     	xdef	f_TIM4_UPD_OVF_IRQHandler
 701                     	xdef	f_ADC1_IRQHandler
 702                     	xdef	f_I2C_IRQHandler
 703                     	xdef	f_UART1_RX_IRQHandler
 704                     	xdef	f_UART1_TX_IRQHandler
 705                     	xdef	f_TIM2_CAP_COM_IRQHandler
 706                     	xdef	f_TIM2_UPD_OVF_BRK_IRQHandler
 707                     	xdef	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
 708                     	xdef	f_TIM1_CAP_COM_IRQHandler
 709                     	xdef	f_SPI_IRQHandler
 710                     	xdef	f_EXTI_PORTE_IRQHandler
 711                     	xdef	f_EXTI_PORTD_IRQHandler
 712                     	xdef	f_EXTI_PORTC_IRQHandler
 713                     	xdef	f_EXTI_PORTB_IRQHandler
 714                     	xdef	f_EXTI_PORTA_IRQHandler
 715                     	xdef	f_CLK_IRQHandler
 716                     	xdef	f_AWU_IRQHandler
 717                     	xdef	f_TLI_IRQHandler
 718                     	xdef	f_TRAP_IRQHandler
 719                     	xdef	f_NonHandledInterrupt
 738                     	end
