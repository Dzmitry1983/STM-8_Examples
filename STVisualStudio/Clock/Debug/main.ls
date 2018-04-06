   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
 112                     ; 33 void main(void)
 112                     ; 34 {
 114                     	switch	.text
 115  0000               _main:
 117  0000 89            	pushw	x
 118       00000002      OFST:	set	2
 121                     ; 35 	bool ButtonPressed = FALSE;	
 123  0001 0f02          	clr	(OFST+0,sp)
 125                     ; 36 	ErrorStatus status = FALSE;
 127                     ; 38 	GPIO_DeInit(LED_GPIO_PORT);
 129  0003 ae5005        	ldw	x,#20485
 130  0006 cd0000        	call	_GPIO_DeInit
 132                     ; 39 	GPIO_DeInit(BUTTON_GPIO_PORT);
 134  0009 ae5000        	ldw	x,#20480
 135  000c cd0000        	call	_GPIO_DeInit
 137                     ; 40 	GPIO_Init(LED_GPIO_PORT, (GPIO_Pin_TypeDef)LED_GPIO_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
 139  000f 4be0          	push	#224
 140  0011 4b20          	push	#32
 141  0013 ae5005        	ldw	x,#20485
 142  0016 cd0000        	call	_GPIO_Init
 144  0019 85            	popw	x
 145                     ; 41 	GPIO_Init(BUTTON_GPIO_PORT, BUTTON_GPIO_PIN, GPIO_MODE_IN_FL_NO_IT);
 147  001a 4b00          	push	#0
 148  001c 4b08          	push	#8
 149  001e ae5000        	ldw	x,#20480
 150  0021 cd0000        	call	_GPIO_Init
 152  0024 85            	popw	x
 153                     ; 44     enableInterrupts();    
 156  0025 9a            rim
 158                     ; 49     CLK_DeInit();
 161  0026 cd0000        	call	_CLK_DeInit
 163                     ; 51     CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV1);
 165  0029 a680          	ld	a,#128
 166  002b cd0000        	call	_CLK_SYSCLKConfig
 168                     ; 54     CLK_SYSCLKConfig(CLK_PRESCALER_HSIDIV1);
 170  002e 4f            	clr	a
 171  002f cd0000        	call	_CLK_SYSCLKConfig
 173                     ; 57     CLK_CCOConfig(CLK_OUTPUT_CPU);
 175  0032 a608          	ld	a,#8
 176  0034 cd0000        	call	_CLK_CCOConfig
 178                     ; 60     status = CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO, CLK_SOURCE_HSE, DISABLE, CLK_CURRENTCLOCKSTATE_DISABLE);
 180  0037 4b00          	push	#0
 181  0039 4b00          	push	#0
 182  003b ae01b4        	ldw	x,#436
 183  003e cd0000        	call	_CLK_ClockSwitchConfig
 185  0041 85            	popw	x
 187  0042               L55:
 188                     ; 62     while (ButtonPressed == FALSE)
 190  0042 0d02          	tnz	(OFST+0,sp)
 191  0044 27fc          	jreq	L55
 192                     ; 66     status = CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO, CLK_SOURCE_HSI, DISABLE, CLK_CURRENTCLOCKSTATE_DISABLE);    
 194  0046 4b00          	push	#0
 195  0048 4b00          	push	#0
 196  004a ae01e1        	ldw	x,#481
 197  004d cd0000        	call	_CLK_ClockSwitchConfig
 199  0050 85            	popw	x
 200  0051               L16:
 202  0051 20fe          	jra	L16
 237                     ; 92 void assert_failed(uint8_t* file, uint32_t line)
 237                     ; 93 { 
 238                     	switch	.text
 239  0053               _assert_failed:
 243  0053               L301:
 244  0053 20fe          	jra	L301
 257                     	xdef	_main
 258                     	xdef	_assert_failed
 259                     	xref	_GPIO_Init
 260                     	xref	_GPIO_DeInit
 261                     	xref	_CLK_SYSCLKConfig
 262                     	xref	_CLK_CCOConfig
 263                     	xref	_CLK_ClockSwitchConfig
 264                     	xref	_CLK_DeInit
 283                     	end
