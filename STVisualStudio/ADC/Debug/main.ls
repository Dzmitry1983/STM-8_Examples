   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
  43                     ; 7 main()
  43                     ; 8 {
  45                     	switch	.text
  46  0000               _main:
  50  0000               L12:
  51                     ; 9 	while (1);
  53  0000 20fe          	jra	L12
  88                     ; 22 void assert_failed(u8* file, u32 line)
  88                     ; 23 { 
  89                     	switch	.text
  90  0002               _assert_failed:
  94  0002               L34:
  95  0002 20fe          	jra	L34
 108                     	xdef	_main
 109                     	xdef	_assert_failed
 128                     	end
