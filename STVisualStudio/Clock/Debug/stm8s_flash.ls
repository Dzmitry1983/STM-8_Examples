   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
  76                     ; 87 void FLASH_Unlock(FLASH_MemType_TypeDef FLASH_MemType)
  76                     ; 88 {
  78                     	switch	.text
  79  0000               _FLASH_Unlock:
  81  0000 88            	push	a
  82       00000000      OFST:	set	0
  85                     ; 90   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
  87  0001 a1fd          	cp	a,#253
  88  0003 2704          	jreq	L01
  89  0005 a1f7          	cp	a,#247
  90  0007 2603          	jrne	L6
  91  0009               L01:
  92  0009 4f            	clr	a
  93  000a 2010          	jra	L21
  94  000c               L6:
  95  000c ae005a        	ldw	x,#90
  96  000f 89            	pushw	x
  97  0010 ae0000        	ldw	x,#0
  98  0013 89            	pushw	x
  99  0014 ae0010        	ldw	x,#L73
 100  0017 cd0000        	call	_assert_failed
 102  001a 5b04          	addw	sp,#4
 103  001c               L21:
 104                     ; 93   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
 106  001c 7b01          	ld	a,(OFST+1,sp)
 107  001e a1fd          	cp	a,#253
 108  0020 260a          	jrne	L14
 109                     ; 95     FLASH->PUKR = FLASH_RASS_KEY1;
 111  0022 35565062      	mov	20578,#86
 112                     ; 96     FLASH->PUKR = FLASH_RASS_KEY2;
 114  0026 35ae5062      	mov	20578,#174
 116  002a 2008          	jra	L34
 117  002c               L14:
 118                     ; 101     FLASH->DUKR = FLASH_RASS_KEY2; /* Warning: keys are reversed on data memory !!! */
 120  002c 35ae5064      	mov	20580,#174
 121                     ; 102     FLASH->DUKR = FLASH_RASS_KEY1;
 123  0030 35565064      	mov	20580,#86
 124  0034               L34:
 125                     ; 104 }
 128  0034 84            	pop	a
 129  0035 81            	ret
 165                     ; 112 void FLASH_Lock(FLASH_MemType_TypeDef FLASH_MemType)
 165                     ; 113 {
 166                     	switch	.text
 167  0036               _FLASH_Lock:
 169  0036 88            	push	a
 170       00000000      OFST:	set	0
 173                     ; 115   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
 175  0037 a1fd          	cp	a,#253
 176  0039 2704          	jreq	L02
 177  003b a1f7          	cp	a,#247
 178  003d 2603          	jrne	L61
 179  003f               L02:
 180  003f 4f            	clr	a
 181  0040 2010          	jra	L22
 182  0042               L61:
 183  0042 ae0073        	ldw	x,#115
 184  0045 89            	pushw	x
 185  0046 ae0000        	ldw	x,#0
 186  0049 89            	pushw	x
 187  004a ae0010        	ldw	x,#L73
 188  004d cd0000        	call	_assert_failed
 190  0050 5b04          	addw	sp,#4
 191  0052               L22:
 192                     ; 118   FLASH->IAPSR &= (uint8_t)FLASH_MemType;
 194  0052 c6505f        	ld	a,20575
 195  0055 1401          	and	a,(OFST+1,sp)
 196  0057 c7505f        	ld	20575,a
 197                     ; 119 }
 200  005a 84            	pop	a
 201  005b 81            	ret
 224                     ; 126 void FLASH_DeInit(void)
 224                     ; 127 {
 225                     	switch	.text
 226  005c               _FLASH_DeInit:
 230                     ; 128   FLASH->CR1 = FLASH_CR1_RESET_VALUE;
 232  005c 725f505a      	clr	20570
 233                     ; 129   FLASH->CR2 = FLASH_CR2_RESET_VALUE;
 235  0060 725f505b      	clr	20571
 236                     ; 130   FLASH->NCR2 = FLASH_NCR2_RESET_VALUE;
 238  0064 35ff505c      	mov	20572,#255
 239                     ; 131   FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_DUL);
 241  0068 7217505f      	bres	20575,#3
 242                     ; 132   FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_PUL);
 244  006c 7213505f      	bres	20575,#1
 245                     ; 133   (void) FLASH->IAPSR; /* Reading of this register causes the clearing of status flags */
 247  0070 c6505f        	ld	a,20575
 248                     ; 134 }
 251  0073 81            	ret
 307                     ; 142 void FLASH_ITConfig(FunctionalState NewState)
 307                     ; 143 {
 308                     	switch	.text
 309  0074               _FLASH_ITConfig:
 311  0074 88            	push	a
 312       00000000      OFST:	set	0
 315                     ; 145   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 317  0075 4d            	tnz	a
 318  0076 2704          	jreq	L23
 319  0078 a101          	cp	a,#1
 320  007a 2603          	jrne	L03
 321  007c               L23:
 322  007c 4f            	clr	a
 323  007d 2010          	jra	L43
 324  007f               L03:
 325  007f ae0091        	ldw	x,#145
 326  0082 89            	pushw	x
 327  0083 ae0000        	ldw	x,#0
 328  0086 89            	pushw	x
 329  0087 ae0010        	ldw	x,#L73
 330  008a cd0000        	call	_assert_failed
 332  008d 5b04          	addw	sp,#4
 333  008f               L43:
 334                     ; 147   if(NewState != DISABLE)
 336  008f 0d01          	tnz	(OFST+1,sp)
 337  0091 2706          	jreq	L121
 338                     ; 149     FLASH->CR1 |= FLASH_CR1_IE; /* Enables the interrupt sources */
 340  0093 7212505a      	bset	20570,#1
 342  0097 2004          	jra	L321
 343  0099               L121:
 344                     ; 153     FLASH->CR1 &= (uint8_t)(~FLASH_CR1_IE); /* Disables the interrupt sources */
 346  0099 7213505a      	bres	20570,#1
 347  009d               L321:
 348                     ; 155 }
 351  009d 84            	pop	a
 352  009e 81            	ret
 387                     .const:	section	.text
 388  0000               L64:
 389  0000 00008000      	dc.l	32768
 390  0004               L05:
 391  0004 0000a000      	dc.l	40960
 392  0008               L25:
 393  0008 00004000      	dc.l	16384
 394  000c               L45:
 395  000c 00004280      	dc.l	17024
 396                     ; 164 void FLASH_EraseByte(uint32_t Address)
 396                     ; 165 {
 397                     	switch	.text
 398  009f               _FLASH_EraseByte:
 400       00000000      OFST:	set	0
 403                     ; 167   assert_param(IS_FLASH_ADDRESS_OK(Address));
 405  009f 96            	ldw	x,sp
 406  00a0 1c0003        	addw	x,#OFST+3
 407  00a3 cd0000        	call	c_ltor
 409  00a6 ae0000        	ldw	x,#L64
 410  00a9 cd0000        	call	c_lcmp
 412  00ac 250f          	jrult	L44
 413  00ae 96            	ldw	x,sp
 414  00af 1c0003        	addw	x,#OFST+3
 415  00b2 cd0000        	call	c_ltor
 417  00b5 ae0004        	ldw	x,#L05
 418  00b8 cd0000        	call	c_lcmp
 420  00bb 251e          	jrult	L24
 421  00bd               L44:
 422  00bd 96            	ldw	x,sp
 423  00be 1c0003        	addw	x,#OFST+3
 424  00c1 cd0000        	call	c_ltor
 426  00c4 ae0008        	ldw	x,#L25
 427  00c7 cd0000        	call	c_lcmp
 429  00ca 2512          	jrult	L04
 430  00cc 96            	ldw	x,sp
 431  00cd 1c0003        	addw	x,#OFST+3
 432  00d0 cd0000        	call	c_ltor
 434  00d3 ae000c        	ldw	x,#L45
 435  00d6 cd0000        	call	c_lcmp
 437  00d9 2403          	jruge	L04
 438  00db               L24:
 439  00db 4f            	clr	a
 440  00dc 2010          	jra	L65
 441  00de               L04:
 442  00de ae00a7        	ldw	x,#167
 443  00e1 89            	pushw	x
 444  00e2 ae0000        	ldw	x,#0
 445  00e5 89            	pushw	x
 446  00e6 ae0010        	ldw	x,#L73
 447  00e9 cd0000        	call	_assert_failed
 449  00ec 5b04          	addw	sp,#4
 450  00ee               L65:
 451                     ; 170   *(PointerAttr uint8_t*) (MemoryAddressCast)Address = FLASH_CLEAR_BYTE; 
 453  00ee 1e05          	ldw	x,(OFST+5,sp)
 454  00f0 7f            	clr	(x)
 455                     ; 171 }
 458  00f1 81            	ret
 502                     ; 181 void FLASH_ProgramByte(uint32_t Address, uint8_t Data)
 502                     ; 182 {
 503                     	switch	.text
 504  00f2               _FLASH_ProgramByte:
 506       00000000      OFST:	set	0
 509                     ; 184   assert_param(IS_FLASH_ADDRESS_OK(Address));
 511  00f2 96            	ldw	x,sp
 512  00f3 1c0003        	addw	x,#OFST+3
 513  00f6 cd0000        	call	c_ltor
 515  00f9 ae0000        	ldw	x,#L64
 516  00fc cd0000        	call	c_lcmp
 518  00ff 250f          	jrult	L66
 519  0101 96            	ldw	x,sp
 520  0102 1c0003        	addw	x,#OFST+3
 521  0105 cd0000        	call	c_ltor
 523  0108 ae0004        	ldw	x,#L05
 524  010b cd0000        	call	c_lcmp
 526  010e 251e          	jrult	L46
 527  0110               L66:
 528  0110 96            	ldw	x,sp
 529  0111 1c0003        	addw	x,#OFST+3
 530  0114 cd0000        	call	c_ltor
 532  0117 ae0008        	ldw	x,#L25
 533  011a cd0000        	call	c_lcmp
 535  011d 2512          	jrult	L26
 536  011f 96            	ldw	x,sp
 537  0120 1c0003        	addw	x,#OFST+3
 538  0123 cd0000        	call	c_ltor
 540  0126 ae000c        	ldw	x,#L45
 541  0129 cd0000        	call	c_lcmp
 543  012c 2403          	jruge	L26
 544  012e               L46:
 545  012e 4f            	clr	a
 546  012f 2010          	jra	L07
 547  0131               L26:
 548  0131 ae00b8        	ldw	x,#184
 549  0134 89            	pushw	x
 550  0135 ae0000        	ldw	x,#0
 551  0138 89            	pushw	x
 552  0139 ae0010        	ldw	x,#L73
 553  013c cd0000        	call	_assert_failed
 555  013f 5b04          	addw	sp,#4
 556  0141               L07:
 557                     ; 185   *(PointerAttr uint8_t*) (MemoryAddressCast)Address = Data;
 559  0141 7b07          	ld	a,(OFST+7,sp)
 560  0143 1e05          	ldw	x,(OFST+5,sp)
 561  0145 f7            	ld	(x),a
 562                     ; 186 }
 565  0146 81            	ret
 600                     ; 195 uint8_t FLASH_ReadByte(uint32_t Address)
 600                     ; 196 {
 601                     	switch	.text
 602  0147               _FLASH_ReadByte:
 604       00000000      OFST:	set	0
 607                     ; 198   assert_param(IS_FLASH_ADDRESS_OK(Address));
 609  0147 96            	ldw	x,sp
 610  0148 1c0003        	addw	x,#OFST+3
 611  014b cd0000        	call	c_ltor
 613  014e ae0000        	ldw	x,#L64
 614  0151 cd0000        	call	c_lcmp
 616  0154 250f          	jrult	L001
 617  0156 96            	ldw	x,sp
 618  0157 1c0003        	addw	x,#OFST+3
 619  015a cd0000        	call	c_ltor
 621  015d ae0004        	ldw	x,#L05
 622  0160 cd0000        	call	c_lcmp
 624  0163 251e          	jrult	L67
 625  0165               L001:
 626  0165 96            	ldw	x,sp
 627  0166 1c0003        	addw	x,#OFST+3
 628  0169 cd0000        	call	c_ltor
 630  016c ae0008        	ldw	x,#L25
 631  016f cd0000        	call	c_lcmp
 633  0172 2512          	jrult	L47
 634  0174 96            	ldw	x,sp
 635  0175 1c0003        	addw	x,#OFST+3
 636  0178 cd0000        	call	c_ltor
 638  017b ae000c        	ldw	x,#L45
 639  017e cd0000        	call	c_lcmp
 641  0181 2403          	jruge	L47
 642  0183               L67:
 643  0183 4f            	clr	a
 644  0184 2010          	jra	L201
 645  0186               L47:
 646  0186 ae00c6        	ldw	x,#198
 647  0189 89            	pushw	x
 648  018a ae0000        	ldw	x,#0
 649  018d 89            	pushw	x
 650  018e ae0010        	ldw	x,#L73
 651  0191 cd0000        	call	_assert_failed
 653  0194 5b04          	addw	sp,#4
 654  0196               L201:
 655                     ; 201   return(*(PointerAttr uint8_t *) (MemoryAddressCast)Address); 
 657  0196 1e05          	ldw	x,(OFST+5,sp)
 658  0198 f6            	ld	a,(x)
 661  0199 81            	ret
 705                     ; 212 void FLASH_ProgramWord(uint32_t Address, uint32_t Data)
 705                     ; 213 {
 706                     	switch	.text
 707  019a               _FLASH_ProgramWord:
 709       00000000      OFST:	set	0
 712                     ; 215   assert_param(IS_FLASH_ADDRESS_OK(Address));
 714  019a 96            	ldw	x,sp
 715  019b 1c0003        	addw	x,#OFST+3
 716  019e cd0000        	call	c_ltor
 718  01a1 ae0000        	ldw	x,#L64
 719  01a4 cd0000        	call	c_lcmp
 721  01a7 250f          	jrult	L211
 722  01a9 96            	ldw	x,sp
 723  01aa 1c0003        	addw	x,#OFST+3
 724  01ad cd0000        	call	c_ltor
 726  01b0 ae0004        	ldw	x,#L05
 727  01b3 cd0000        	call	c_lcmp
 729  01b6 251e          	jrult	L011
 730  01b8               L211:
 731  01b8 96            	ldw	x,sp
 732  01b9 1c0003        	addw	x,#OFST+3
 733  01bc cd0000        	call	c_ltor
 735  01bf ae0008        	ldw	x,#L25
 736  01c2 cd0000        	call	c_lcmp
 738  01c5 2512          	jrult	L601
 739  01c7 96            	ldw	x,sp
 740  01c8 1c0003        	addw	x,#OFST+3
 741  01cb cd0000        	call	c_ltor
 743  01ce ae000c        	ldw	x,#L45
 744  01d1 cd0000        	call	c_lcmp
 746  01d4 2403          	jruge	L601
 747  01d6               L011:
 748  01d6 4f            	clr	a
 749  01d7 2010          	jra	L411
 750  01d9               L601:
 751  01d9 ae00d7        	ldw	x,#215
 752  01dc 89            	pushw	x
 753  01dd ae0000        	ldw	x,#0
 754  01e0 89            	pushw	x
 755  01e1 ae0010        	ldw	x,#L73
 756  01e4 cd0000        	call	_assert_failed
 758  01e7 5b04          	addw	sp,#4
 759  01e9               L411:
 760                     ; 218   FLASH->CR2 |= FLASH_CR2_WPRG;
 762  01e9 721c505b      	bset	20571,#6
 763                     ; 219   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NWPRG);
 765  01ed 721d505c      	bres	20572,#6
 766                     ; 222   *((PointerAttr uint8_t*)(MemoryAddressCast)Address)       = *((uint8_t*)(&Data));
 768  01f1 7b07          	ld	a,(OFST+7,sp)
 769  01f3 1e05          	ldw	x,(OFST+5,sp)
 770  01f5 f7            	ld	(x),a
 771                     ; 224   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 1) = *((uint8_t*)(&Data)+1); 
 773  01f6 7b08          	ld	a,(OFST+8,sp)
 774  01f8 1e05          	ldw	x,(OFST+5,sp)
 775  01fa e701          	ld	(1,x),a
 776                     ; 226   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 2) = *((uint8_t*)(&Data)+2); 
 778  01fc 7b09          	ld	a,(OFST+9,sp)
 779  01fe 1e05          	ldw	x,(OFST+5,sp)
 780  0200 e702          	ld	(2,x),a
 781                     ; 228   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 3) = *((uint8_t*)(&Data)+3); 
 783  0202 7b0a          	ld	a,(OFST+10,sp)
 784  0204 1e05          	ldw	x,(OFST+5,sp)
 785  0206 e703          	ld	(3,x),a
 786                     ; 229 }
 789  0208 81            	ret
 835                     ; 237 void FLASH_ProgramOptionByte(uint16_t Address, uint8_t Data)
 835                     ; 238 {
 836                     	switch	.text
 837  0209               _FLASH_ProgramOptionByte:
 839  0209 89            	pushw	x
 840       00000000      OFST:	set	0
 843                     ; 240   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 845  020a a34800        	cpw	x,#18432
 846  020d 2508          	jrult	L021
 847  020f a34880        	cpw	x,#18560
 848  0212 2403          	jruge	L021
 849  0214 4f            	clr	a
 850  0215 2010          	jra	L221
 851  0217               L021:
 852  0217 ae00f0        	ldw	x,#240
 853  021a 89            	pushw	x
 854  021b ae0000        	ldw	x,#0
 855  021e 89            	pushw	x
 856  021f ae0010        	ldw	x,#L73
 857  0222 cd0000        	call	_assert_failed
 859  0225 5b04          	addw	sp,#4
 860  0227               L221:
 861                     ; 243   FLASH->CR2 |= FLASH_CR2_OPT;
 863  0227 721e505b      	bset	20571,#7
 864                     ; 244   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
 866  022b 721f505c      	bres	20572,#7
 867                     ; 247   if(Address == 0x4800)
 869  022f 1e01          	ldw	x,(OFST+1,sp)
 870  0231 a34800        	cpw	x,#18432
 871  0234 2607          	jrne	L742
 872                     ; 250     *((NEAR uint8_t*)Address) = Data;
 874  0236 7b05          	ld	a,(OFST+5,sp)
 875  0238 1e01          	ldw	x,(OFST+1,sp)
 876  023a f7            	ld	(x),a
 878  023b 200c          	jra	L152
 879  023d               L742:
 880                     ; 255     *((NEAR uint8_t*)Address) = Data;
 882  023d 7b05          	ld	a,(OFST+5,sp)
 883  023f 1e01          	ldw	x,(OFST+1,sp)
 884  0241 f7            	ld	(x),a
 885                     ; 256     *((NEAR uint8_t*)((uint16_t)(Address + 1))) = (uint8_t)(~Data);
 887  0242 7b05          	ld	a,(OFST+5,sp)
 888  0244 43            	cpl	a
 889  0245 1e01          	ldw	x,(OFST+1,sp)
 890  0247 e701          	ld	(1,x),a
 891  0249               L152:
 892                     ; 258   FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
 894  0249 a6fd          	ld	a,#253
 895  024b cd03dd        	call	_FLASH_WaitForLastOperation
 897                     ; 261   FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
 899  024e 721f505b      	bres	20571,#7
 900                     ; 262   FLASH->NCR2 |= FLASH_NCR2_NOPT;
 902  0252 721e505c      	bset	20572,#7
 903                     ; 263 }
 906  0256 85            	popw	x
 907  0257 81            	ret
 944                     ; 270 void FLASH_EraseOptionByte(uint16_t Address)
 944                     ; 271 {
 945                     	switch	.text
 946  0258               _FLASH_EraseOptionByte:
 948  0258 89            	pushw	x
 949       00000000      OFST:	set	0
 952                     ; 273   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 954  0259 a34800        	cpw	x,#18432
 955  025c 2508          	jrult	L621
 956  025e a34880        	cpw	x,#18560
 957  0261 2403          	jruge	L621
 958  0263 4f            	clr	a
 959  0264 2010          	jra	L031
 960  0266               L621:
 961  0266 ae0111        	ldw	x,#273
 962  0269 89            	pushw	x
 963  026a ae0000        	ldw	x,#0
 964  026d 89            	pushw	x
 965  026e ae0010        	ldw	x,#L73
 966  0271 cd0000        	call	_assert_failed
 968  0274 5b04          	addw	sp,#4
 969  0276               L031:
 970                     ; 276   FLASH->CR2 |= FLASH_CR2_OPT;
 972  0276 721e505b      	bset	20571,#7
 973                     ; 277   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
 975  027a 721f505c      	bres	20572,#7
 976                     ; 280   if(Address == 0x4800)
 978  027e 1e01          	ldw	x,(OFST+1,sp)
 979  0280 a34800        	cpw	x,#18432
 980  0283 2605          	jrne	L172
 981                     ; 283     *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
 983  0285 1e01          	ldw	x,(OFST+1,sp)
 984  0287 7f            	clr	(x)
 986  0288 2009          	jra	L372
 987  028a               L172:
 988                     ; 288     *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
 990  028a 1e01          	ldw	x,(OFST+1,sp)
 991  028c 7f            	clr	(x)
 992                     ; 289     *((NEAR uint8_t*)((uint16_t)(Address + (uint16_t)1 ))) = FLASH_SET_BYTE;
 994  028d 1e01          	ldw	x,(OFST+1,sp)
 995  028f a6ff          	ld	a,#255
 996  0291 e701          	ld	(1,x),a
 997  0293               L372:
 998                     ; 291   FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
1000  0293 a6fd          	ld	a,#253
1001  0295 cd03dd        	call	_FLASH_WaitForLastOperation
1003                     ; 294   FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
1005  0298 721f505b      	bres	20571,#7
1006                     ; 295   FLASH->NCR2 |= FLASH_NCR2_NOPT;
1008  029c 721e505c      	bset	20572,#7
1009                     ; 296 }
1012  02a0 85            	popw	x
1013  02a1 81            	ret
1077                     ; 303 uint16_t FLASH_ReadOptionByte(uint16_t Address)
1077                     ; 304 {
1078                     	switch	.text
1079  02a2               _FLASH_ReadOptionByte:
1081  02a2 89            	pushw	x
1082  02a3 5204          	subw	sp,#4
1083       00000004      OFST:	set	4
1086                     ; 305   uint8_t value_optbyte, value_optbyte_complement = 0;
1088                     ; 306   uint16_t res_value = 0;
1090                     ; 309   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
1092  02a5 a34800        	cpw	x,#18432
1093  02a8 2508          	jrult	L431
1094  02aa a34880        	cpw	x,#18560
1095  02ad 2403          	jruge	L431
1096  02af 4f            	clr	a
1097  02b0 2010          	jra	L631
1098  02b2               L431:
1099  02b2 ae0135        	ldw	x,#309
1100  02b5 89            	pushw	x
1101  02b6 ae0000        	ldw	x,#0
1102  02b9 89            	pushw	x
1103  02ba ae0010        	ldw	x,#L73
1104  02bd cd0000        	call	_assert_failed
1106  02c0 5b04          	addw	sp,#4
1107  02c2               L631:
1108                     ; 311   value_optbyte = *((NEAR uint8_t*)Address); /* Read option byte */
1110  02c2 1e05          	ldw	x,(OFST+1,sp)
1111  02c4 f6            	ld	a,(x)
1112  02c5 6b01          	ld	(OFST-3,sp),a
1114                     ; 312   value_optbyte_complement = *(((NEAR uint8_t*)Address) + 1); /* Read option byte complement */
1116  02c7 1e05          	ldw	x,(OFST+1,sp)
1117  02c9 e601          	ld	a,(1,x)
1118  02cb 6b02          	ld	(OFST-2,sp),a
1120                     ; 315   if(Address == 0x4800)	 
1122  02cd 1e05          	ldw	x,(OFST+1,sp)
1123  02cf a34800        	cpw	x,#18432
1124  02d2 2608          	jrne	L723
1125                     ; 317     res_value =	 value_optbyte;
1127  02d4 7b01          	ld	a,(OFST-3,sp)
1128  02d6 5f            	clrw	x
1129  02d7 97            	ld	xl,a
1130  02d8 1f03          	ldw	(OFST-1,sp),x
1133  02da 2023          	jra	L133
1134  02dc               L723:
1135                     ; 321     if(value_optbyte == (uint8_t)(~value_optbyte_complement))
1137  02dc 7b02          	ld	a,(OFST-2,sp)
1138  02de 43            	cpl	a
1139  02df 1101          	cp	a,(OFST-3,sp)
1140  02e1 2617          	jrne	L333
1141                     ; 323       res_value = (uint16_t)((uint16_t)value_optbyte << 8);
1143  02e3 7b01          	ld	a,(OFST-3,sp)
1144  02e5 5f            	clrw	x
1145  02e6 97            	ld	xl,a
1146  02e7 4f            	clr	a
1147  02e8 02            	rlwa	x,a
1148  02e9 1f03          	ldw	(OFST-1,sp),x
1150                     ; 324       res_value = res_value | (uint16_t)value_optbyte_complement;
1152  02eb 7b02          	ld	a,(OFST-2,sp)
1153  02ed 5f            	clrw	x
1154  02ee 97            	ld	xl,a
1155  02ef 01            	rrwa	x,a
1156  02f0 1a04          	or	a,(OFST+0,sp)
1157  02f2 01            	rrwa	x,a
1158  02f3 1a03          	or	a,(OFST-1,sp)
1159  02f5 01            	rrwa	x,a
1160  02f6 1f03          	ldw	(OFST-1,sp),x
1163  02f8 2005          	jra	L133
1164  02fa               L333:
1165                     ; 328       res_value = FLASH_OPTIONBYTE_ERROR;
1167  02fa ae5555        	ldw	x,#21845
1168  02fd 1f03          	ldw	(OFST-1,sp),x
1170  02ff               L133:
1171                     ; 331   return(res_value);
1173  02ff 1e03          	ldw	x,(OFST-1,sp)
1176  0301 5b06          	addw	sp,#6
1177  0303 81            	ret
1252                     ; 340 void FLASH_SetLowPowerMode(FLASH_LPMode_TypeDef FLASH_LPMode)
1252                     ; 341 {
1253                     	switch	.text
1254  0304               _FLASH_SetLowPowerMode:
1256  0304 88            	push	a
1257       00000000      OFST:	set	0
1260                     ; 343   assert_param(IS_FLASH_LOW_POWER_MODE_OK(FLASH_LPMode));
1262  0305 a104          	cp	a,#4
1263  0307 270b          	jreq	L441
1264  0309 a108          	cp	a,#8
1265  030b 2707          	jreq	L441
1266  030d 4d            	tnz	a
1267  030e 2704          	jreq	L441
1268  0310 a10c          	cp	a,#12
1269  0312 2603          	jrne	L241
1270  0314               L441:
1271  0314 4f            	clr	a
1272  0315 2010          	jra	L641
1273  0317               L241:
1274  0317 ae0157        	ldw	x,#343
1275  031a 89            	pushw	x
1276  031b ae0000        	ldw	x,#0
1277  031e 89            	pushw	x
1278  031f ae0010        	ldw	x,#L73
1279  0322 cd0000        	call	_assert_failed
1281  0325 5b04          	addw	sp,#4
1282  0327               L641:
1283                     ; 346   FLASH->CR1 &= (uint8_t)(~(FLASH_CR1_HALT | FLASH_CR1_AHALT)); 
1285  0327 c6505a        	ld	a,20570
1286  032a a4f3          	and	a,#243
1287  032c c7505a        	ld	20570,a
1288                     ; 349   FLASH->CR1 |= (uint8_t)FLASH_LPMode; 
1290  032f c6505a        	ld	a,20570
1291  0332 1a01          	or	a,(OFST+1,sp)
1292  0334 c7505a        	ld	20570,a
1293                     ; 350 }
1296  0337 84            	pop	a
1297  0338 81            	ret
1356                     ; 358 void FLASH_SetProgrammingTime(FLASH_ProgramTime_TypeDef FLASH_ProgTime)
1356                     ; 359 {
1357                     	switch	.text
1358  0339               _FLASH_SetProgrammingTime:
1360  0339 88            	push	a
1361       00000000      OFST:	set	0
1364                     ; 361   assert_param(IS_FLASH_PROGRAM_TIME_OK(FLASH_ProgTime));
1366  033a 4d            	tnz	a
1367  033b 2704          	jreq	L451
1368  033d a101          	cp	a,#1
1369  033f 2603          	jrne	L251
1370  0341               L451:
1371  0341 4f            	clr	a
1372  0342 2010          	jra	L651
1373  0344               L251:
1374  0344 ae0169        	ldw	x,#361
1375  0347 89            	pushw	x
1376  0348 ae0000        	ldw	x,#0
1377  034b 89            	pushw	x
1378  034c ae0010        	ldw	x,#L73
1379  034f cd0000        	call	_assert_failed
1381  0352 5b04          	addw	sp,#4
1382  0354               L651:
1383                     ; 363   FLASH->CR1 &= (uint8_t)(~FLASH_CR1_FIX);
1385  0354 7211505a      	bres	20570,#0
1386                     ; 364   FLASH->CR1 |= (uint8_t)FLASH_ProgTime;
1388  0358 c6505a        	ld	a,20570
1389  035b 1a01          	or	a,(OFST+1,sp)
1390  035d c7505a        	ld	20570,a
1391                     ; 365 }
1394  0360 84            	pop	a
1395  0361 81            	ret
1420                     ; 372 FLASH_LPMode_TypeDef FLASH_GetLowPowerMode(void)
1420                     ; 373 {
1421                     	switch	.text
1422  0362               _FLASH_GetLowPowerMode:
1426                     ; 374   return((FLASH_LPMode_TypeDef)(FLASH->CR1 & (uint8_t)(FLASH_CR1_HALT | FLASH_CR1_AHALT)));
1428  0362 c6505a        	ld	a,20570
1429  0365 a40c          	and	a,#12
1432  0367 81            	ret
1457                     ; 382 FLASH_ProgramTime_TypeDef FLASH_GetProgrammingTime(void)
1457                     ; 383 {
1458                     	switch	.text
1459  0368               _FLASH_GetProgrammingTime:
1463                     ; 384   return((FLASH_ProgramTime_TypeDef)(FLASH->CR1 & FLASH_CR1_FIX));
1465  0368 c6505a        	ld	a,20570
1466  036b a401          	and	a,#1
1469  036d 81            	ret
1503                     ; 392 uint32_t FLASH_GetBootSize(void)
1503                     ; 393 {
1504                     	switch	.text
1505  036e               _FLASH_GetBootSize:
1507  036e 5204          	subw	sp,#4
1508       00000004      OFST:	set	4
1511                     ; 394   uint32_t temp = 0;
1513                     ; 397   temp = (uint32_t)((uint32_t)FLASH->FPR * (uint32_t)512);
1515  0370 c6505d        	ld	a,20573
1516  0373 5f            	clrw	x
1517  0374 97            	ld	xl,a
1518  0375 90ae0200      	ldw	y,#512
1519  0379 cd0000        	call	c_umul
1521  037c 96            	ldw	x,sp
1522  037d 1c0001        	addw	x,#OFST-3
1523  0380 cd0000        	call	c_rtol
1526                     ; 400   if(FLASH->FPR == 0xFF)
1528  0383 c6505d        	ld	a,20573
1529  0386 a1ff          	cp	a,#255
1530  0388 2611          	jrne	L554
1531                     ; 402     temp += 512;
1533  038a ae0200        	ldw	x,#512
1534  038d bf02          	ldw	c_lreg+2,x
1535  038f ae0000        	ldw	x,#0
1536  0392 bf00          	ldw	c_lreg,x
1537  0394 96            	ldw	x,sp
1538  0395 1c0001        	addw	x,#OFST-3
1539  0398 cd0000        	call	c_lgadd
1542  039b               L554:
1543                     ; 406   return(temp);
1545  039b 96            	ldw	x,sp
1546  039c 1c0001        	addw	x,#OFST-3
1547  039f cd0000        	call	c_ltor
1551  03a2 5b04          	addw	sp,#4
1552  03a4 81            	ret
1655                     ; 417 FlagStatus FLASH_GetFlagStatus(FLASH_Flag_TypeDef FLASH_FLAG)
1655                     ; 418 {
1656                     	switch	.text
1657  03a5               _FLASH_GetFlagStatus:
1659  03a5 88            	push	a
1660  03a6 88            	push	a
1661       00000001      OFST:	set	1
1664                     ; 419   FlagStatus status = RESET;
1666                     ; 421   assert_param(IS_FLASH_FLAGS_OK(FLASH_FLAG));
1668  03a7 a108          	cp	a,#8
1669  03a9 270c          	jreq	L271
1670  03ab a104          	cp	a,#4
1671  03ad 2708          	jreq	L271
1672  03af a102          	cp	a,#2
1673  03b1 2704          	jreq	L271
1674  03b3 a101          	cp	a,#1
1675  03b5 2603          	jrne	L071
1676  03b7               L271:
1677  03b7 4f            	clr	a
1678  03b8 2010          	jra	L471
1679  03ba               L071:
1680  03ba ae01a5        	ldw	x,#421
1681  03bd 89            	pushw	x
1682  03be ae0000        	ldw	x,#0
1683  03c1 89            	pushw	x
1684  03c2 ae0010        	ldw	x,#L73
1685  03c5 cd0000        	call	_assert_failed
1687  03c8 5b04          	addw	sp,#4
1688  03ca               L471:
1689                     ; 424   if((FLASH->IAPSR & (uint8_t)FLASH_FLAG) != (uint8_t)RESET)
1691  03ca c6505f        	ld	a,20575
1692  03cd 1502          	bcp	a,(OFST+1,sp)
1693  03cf 2706          	jreq	L525
1694                     ; 426     status = SET; /* FLASH_FLAG is set */
1696  03d1 a601          	ld	a,#1
1697  03d3 6b01          	ld	(OFST+0,sp),a
1700  03d5 2002          	jra	L725
1701  03d7               L525:
1702                     ; 430     status = RESET; /* FLASH_FLAG is reset*/
1704  03d7 0f01          	clr	(OFST+0,sp)
1706  03d9               L725:
1707                     ; 434   return status;
1709  03d9 7b01          	ld	a,(OFST+0,sp)
1712  03db 85            	popw	x
1713  03dc 81            	ret
1798                     ; 549 IN_RAM(FLASH_Status_TypeDef FLASH_WaitForLastOperation(FLASH_MemType_TypeDef FLASH_MemType)) 
1798                     ; 550 {
1799                     	switch	.text
1800  03dd               _FLASH_WaitForLastOperation:
1802  03dd 5203          	subw	sp,#3
1803       00000003      OFST:	set	3
1806                     ; 551   uint8_t flagstatus = 0x00;
1808  03df 0f03          	clr	(OFST+0,sp)
1810                     ; 552   uint16_t timeout = OPERATION_TIMEOUT;
1812  03e1 aeffff        	ldw	x,#65535
1813  03e4 1f01          	ldw	(OFST-2,sp),x
1816  03e6 200e          	jra	L575
1817  03e8               L175:
1818                     ; 578     flagstatus = (uint8_t)(FLASH->IAPSR & (FLASH_IAPSR_EOP | FLASH_IAPSR_WR_PG_DIS));
1820  03e8 c6505f        	ld	a,20575
1821  03eb a405          	and	a,#5
1822  03ed 6b03          	ld	(OFST+0,sp),a
1824                     ; 579     timeout--;
1826  03ef 1e01          	ldw	x,(OFST-2,sp)
1827  03f1 1d0001        	subw	x,#1
1828  03f4 1f01          	ldw	(OFST-2,sp),x
1830  03f6               L575:
1831                     ; 576   while((flagstatus == 0x00) && (timeout != 0x00))
1833  03f6 0d03          	tnz	(OFST+0,sp)
1834  03f8 2604          	jrne	L106
1836  03fa 1e01          	ldw	x,(OFST-2,sp)
1837  03fc 26ea          	jrne	L175
1838  03fe               L106:
1839                     ; 583   if(timeout == 0x00 )
1841  03fe 1e01          	ldw	x,(OFST-2,sp)
1842  0400 2604          	jrne	L306
1843                     ; 585     flagstatus = FLASH_STATUS_TIMEOUT;
1845  0402 a602          	ld	a,#2
1846  0404 6b03          	ld	(OFST+0,sp),a
1848  0406               L306:
1849                     ; 588   return((FLASH_Status_TypeDef)flagstatus);
1851  0406 7b03          	ld	a,(OFST+0,sp)
1854  0408 5b03          	addw	sp,#3
1855  040a 81            	ret
1919                     ; 598 IN_RAM(void FLASH_EraseBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType))
1919                     ; 599 {
1920                     	switch	.text
1921  040b               _FLASH_EraseBlock:
1923  040b 89            	pushw	x
1924  040c 5206          	subw	sp,#6
1925       00000006      OFST:	set	6
1928                     ; 600   uint32_t startaddress = 0;
1930                     ; 610   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
1932  040e 7b0b          	ld	a,(OFST+5,sp)
1933  0410 a1fd          	cp	a,#253
1934  0412 2706          	jreq	L402
1935  0414 7b0b          	ld	a,(OFST+5,sp)
1936  0416 a1f7          	cp	a,#247
1937  0418 2603          	jrne	L202
1938  041a               L402:
1939  041a 4f            	clr	a
1940  041b 2010          	jra	L602
1941  041d               L202:
1942  041d ae0262        	ldw	x,#610
1943  0420 89            	pushw	x
1944  0421 ae0000        	ldw	x,#0
1945  0424 89            	pushw	x
1946  0425 ae0010        	ldw	x,#L73
1947  0428 cd0000        	call	_assert_failed
1949  042b 5b04          	addw	sp,#4
1950  042d               L602:
1951                     ; 611   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
1953  042d 7b0b          	ld	a,(OFST+5,sp)
1954  042f a1fd          	cp	a,#253
1955  0431 2626          	jrne	L736
1956                     ; 613     assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
1958  0433 1e07          	ldw	x,(OFST+1,sp)
1959  0435 a30080        	cpw	x,#128
1960  0438 2403          	jruge	L012
1961  043a 4f            	clr	a
1962  043b 2010          	jra	L212
1963  043d               L012:
1964  043d ae0265        	ldw	x,#613
1965  0440 89            	pushw	x
1966  0441 ae0000        	ldw	x,#0
1967  0444 89            	pushw	x
1968  0445 ae0010        	ldw	x,#L73
1969  0448 cd0000        	call	_assert_failed
1971  044b 5b04          	addw	sp,#4
1972  044d               L212:
1973                     ; 614     startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
1975  044d ae8000        	ldw	x,#32768
1976  0450 1f05          	ldw	(OFST-1,sp),x
1977  0452 ae0000        	ldw	x,#0
1978  0455 1f03          	ldw	(OFST-3,sp),x
1981  0457 2024          	jra	L146
1982  0459               L736:
1983                     ; 618     assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
1985  0459 1e07          	ldw	x,(OFST+1,sp)
1986  045b a3000a        	cpw	x,#10
1987  045e 2403          	jruge	L412
1988  0460 4f            	clr	a
1989  0461 2010          	jra	L612
1990  0463               L412:
1991  0463 ae026a        	ldw	x,#618
1992  0466 89            	pushw	x
1993  0467 ae0000        	ldw	x,#0
1994  046a 89            	pushw	x
1995  046b ae0010        	ldw	x,#L73
1996  046e cd0000        	call	_assert_failed
1998  0471 5b04          	addw	sp,#4
1999  0473               L612:
2000                     ; 619     startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
2002  0473 ae4000        	ldw	x,#16384
2003  0476 1f05          	ldw	(OFST-1,sp),x
2004  0478 ae0000        	ldw	x,#0
2005  047b 1f03          	ldw	(OFST-3,sp),x
2007  047d               L146:
2008                     ; 627     pwFlash = (PointerAttr uint32_t *)(MemoryAddressCast)(startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE));
2010  047d 1e07          	ldw	x,(OFST+1,sp)
2011  047f a640          	ld	a,#64
2012  0481 cd0000        	call	c_cmulx
2014  0484 96            	ldw	x,sp
2015  0485 1c0003        	addw	x,#OFST-3
2016  0488 cd0000        	call	c_ladd
2018  048b be02          	ldw	x,c_lreg+2
2019  048d 1f01          	ldw	(OFST-5,sp),x
2021                     ; 631   FLASH->CR2 |= FLASH_CR2_ERASE;
2023  048f 721a505b      	bset	20571,#5
2024                     ; 632   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NERASE);
2026  0493 721b505c      	bres	20572,#5
2027                     ; 636     *pwFlash = (uint32_t)0;
2029  0497 1e01          	ldw	x,(OFST-5,sp)
2030  0499 a600          	ld	a,#0
2031  049b e703          	ld	(3,x),a
2032  049d a600          	ld	a,#0
2033  049f e702          	ld	(2,x),a
2034  04a1 a600          	ld	a,#0
2035  04a3 e701          	ld	(1,x),a
2036  04a5 a600          	ld	a,#0
2037  04a7 f7            	ld	(x),a
2038                     ; 644 }
2041  04a8 5b08          	addw	sp,#8
2042  04aa 81            	ret
2147                     ; 655 IN_RAM(void FLASH_ProgramBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType, 
2147                     ; 656                         FLASH_ProgramMode_TypeDef FLASH_ProgMode, uint8_t *Buffer))
2147                     ; 657 {
2148                     	switch	.text
2149  04ab               _FLASH_ProgramBlock:
2151  04ab 89            	pushw	x
2152  04ac 5206          	subw	sp,#6
2153       00000006      OFST:	set	6
2156                     ; 658   uint16_t Count = 0;
2158                     ; 659   uint32_t startaddress = 0;
2160                     ; 662   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
2162  04ae 7b0b          	ld	a,(OFST+5,sp)
2163  04b0 a1fd          	cp	a,#253
2164  04b2 2706          	jreq	L422
2165  04b4 7b0b          	ld	a,(OFST+5,sp)
2166  04b6 a1f7          	cp	a,#247
2167  04b8 2603          	jrne	L222
2168  04ba               L422:
2169  04ba 4f            	clr	a
2170  04bb 2010          	jra	L622
2171  04bd               L222:
2172  04bd ae0296        	ldw	x,#662
2173  04c0 89            	pushw	x
2174  04c1 ae0000        	ldw	x,#0
2175  04c4 89            	pushw	x
2176  04c5 ae0010        	ldw	x,#L73
2177  04c8 cd0000        	call	_assert_failed
2179  04cb 5b04          	addw	sp,#4
2180  04cd               L622:
2181                     ; 663   assert_param(IS_FLASH_PROGRAM_MODE_OK(FLASH_ProgMode));
2183  04cd 0d0c          	tnz	(OFST+6,sp)
2184  04cf 2706          	jreq	L232
2185  04d1 7b0c          	ld	a,(OFST+6,sp)
2186  04d3 a110          	cp	a,#16
2187  04d5 2603          	jrne	L032
2188  04d7               L232:
2189  04d7 4f            	clr	a
2190  04d8 2010          	jra	L432
2191  04da               L032:
2192  04da ae0297        	ldw	x,#663
2193  04dd 89            	pushw	x
2194  04de ae0000        	ldw	x,#0
2195  04e1 89            	pushw	x
2196  04e2 ae0010        	ldw	x,#L73
2197  04e5 cd0000        	call	_assert_failed
2199  04e8 5b04          	addw	sp,#4
2200  04ea               L432:
2201                     ; 664   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
2203  04ea 7b0b          	ld	a,(OFST+5,sp)
2204  04ec a1fd          	cp	a,#253
2205  04ee 2626          	jrne	L517
2206                     ; 666     assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
2208  04f0 1e07          	ldw	x,(OFST+1,sp)
2209  04f2 a30080        	cpw	x,#128
2210  04f5 2403          	jruge	L632
2211  04f7 4f            	clr	a
2212  04f8 2010          	jra	L042
2213  04fa               L632:
2214  04fa ae029a        	ldw	x,#666
2215  04fd 89            	pushw	x
2216  04fe ae0000        	ldw	x,#0
2217  0501 89            	pushw	x
2218  0502 ae0010        	ldw	x,#L73
2219  0505 cd0000        	call	_assert_failed
2221  0508 5b04          	addw	sp,#4
2222  050a               L042:
2223                     ; 667     startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
2225  050a ae8000        	ldw	x,#32768
2226  050d 1f03          	ldw	(OFST-3,sp),x
2227  050f ae0000        	ldw	x,#0
2228  0512 1f01          	ldw	(OFST-5,sp),x
2231  0514 2024          	jra	L717
2232  0516               L517:
2233                     ; 671     assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
2235  0516 1e07          	ldw	x,(OFST+1,sp)
2236  0518 a3000a        	cpw	x,#10
2237  051b 2403          	jruge	L242
2238  051d 4f            	clr	a
2239  051e 2010          	jra	L442
2240  0520               L242:
2241  0520 ae029f        	ldw	x,#671
2242  0523 89            	pushw	x
2243  0524 ae0000        	ldw	x,#0
2244  0527 89            	pushw	x
2245  0528 ae0010        	ldw	x,#L73
2246  052b cd0000        	call	_assert_failed
2248  052e 5b04          	addw	sp,#4
2249  0530               L442:
2250                     ; 672     startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
2252  0530 ae4000        	ldw	x,#16384
2253  0533 1f03          	ldw	(OFST-3,sp),x
2254  0535 ae0000        	ldw	x,#0
2255  0538 1f01          	ldw	(OFST-5,sp),x
2257  053a               L717:
2258                     ; 676   startaddress = startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE);
2260  053a 1e07          	ldw	x,(OFST+1,sp)
2261  053c a640          	ld	a,#64
2262  053e cd0000        	call	c_cmulx
2264  0541 96            	ldw	x,sp
2265  0542 1c0001        	addw	x,#OFST-5
2266  0545 cd0000        	call	c_lgadd
2269                     ; 679   if(FLASH_ProgMode == FLASH_PROGRAMMODE_STANDARD)
2271  0548 0d0c          	tnz	(OFST+6,sp)
2272  054a 260a          	jrne	L127
2273                     ; 682     FLASH->CR2 |= FLASH_CR2_PRG;
2275  054c 7210505b      	bset	20571,#0
2276                     ; 683     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NPRG);
2278  0550 7211505c      	bres	20572,#0
2280  0554 2008          	jra	L327
2281  0556               L127:
2282                     ; 688     FLASH->CR2 |= FLASH_CR2_FPRG;
2284  0556 7218505b      	bset	20571,#4
2285                     ; 689     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NFPRG);
2287  055a 7219505c      	bres	20572,#4
2288  055e               L327:
2289                     ; 693   for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
2291  055e 5f            	clrw	x
2292  055f 1f05          	ldw	(OFST-1,sp),x
2294  0561               L527:
2295                     ; 695     *((PointerAttr uint8_t*) (MemoryAddressCast)startaddress + Count) = ((uint8_t)(Buffer[Count]));
2297  0561 1e0d          	ldw	x,(OFST+7,sp)
2298  0563 72fb05        	addw	x,(OFST-1,sp)
2299  0566 f6            	ld	a,(x)
2300  0567 1e03          	ldw	x,(OFST-3,sp)
2301  0569 72fb05        	addw	x,(OFST-1,sp)
2302  056c f7            	ld	(x),a
2303                     ; 693   for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
2305  056d 1e05          	ldw	x,(OFST-1,sp)
2306  056f 1c0001        	addw	x,#1
2307  0572 1f05          	ldw	(OFST-1,sp),x
2311  0574 1e05          	ldw	x,(OFST-1,sp)
2312  0576 a30040        	cpw	x,#64
2313  0579 25e6          	jrult	L527
2314                     ; 697 }
2317  057b 5b08          	addw	sp,#8
2318  057d 81            	ret
2331                     	xdef	_FLASH_WaitForLastOperation
2332                     	xdef	_FLASH_ProgramBlock
2333                     	xdef	_FLASH_EraseBlock
2334                     	xdef	_FLASH_GetFlagStatus
2335                     	xdef	_FLASH_GetBootSize
2336                     	xdef	_FLASH_GetProgrammingTime
2337                     	xdef	_FLASH_GetLowPowerMode
2338                     	xdef	_FLASH_SetProgrammingTime
2339                     	xdef	_FLASH_SetLowPowerMode
2340                     	xdef	_FLASH_EraseOptionByte
2341                     	xdef	_FLASH_ProgramOptionByte
2342                     	xdef	_FLASH_ReadOptionByte
2343                     	xdef	_FLASH_ProgramWord
2344                     	xdef	_FLASH_ReadByte
2345                     	xdef	_FLASH_ProgramByte
2346                     	xdef	_FLASH_EraseByte
2347                     	xdef	_FLASH_ITConfig
2348                     	xdef	_FLASH_DeInit
2349                     	xdef	_FLASH_Lock
2350                     	xdef	_FLASH_Unlock
2351                     	xref	_assert_failed
2352                     	switch	.const
2353  0010               L73:
2354  0010 2e2e5c6c6962  	dc.b	"..\libs\src\stm8s_"
2355  0022 666c6173682e  	dc.b	"flash.c",0
2356                     	xref.b	c_lreg
2357                     	xref.b	c_x
2358                     	xref.b	c_y
2378                     	xref	c_ladd
2379                     	xref	c_cmulx
2380                     	xref	c_lgadd
2381                     	xref	c_rtol
2382                     	xref	c_umul
2383                     	xref	c_lcmp
2384                     	xref	c_ltor
2385                     	end
