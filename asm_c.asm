;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module asm_c
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _asmtest
	.globl _main_menu
	.globl _get_number
	.globl _printf
	.globl _asm_clang
	.globl _asm_call
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_asm_call_sent_from_asm_65536_52:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'asm_clang'
;------------------------------------------------------------
;num1                      Allocated with name '_asm_clang_num1_65537_49'
;num2                      Allocated with name '_asm_clang_num2_65538_50'
;num3                      Allocated with name '_asm_clang_num3_65539_51'
;------------------------------------------------------------
;	asm_c.c:19: void asm_clang()
;	-----------------------------------------
;	 function asm_clang
;	-----------------------------------------
_asm_clang:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	asm_c.c:21: printf("\n\r Give param 1, 8bit \n\r");
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	asm_c.c:22: unsigned char num1 = get_number(3);
	mov	dptr,#0x0003
	lcall	_get_number
	mov	r6,dpl
;	asm_c.c:23: printf("\n\r Give param 2, 8bit \n\r");
	push	ar6
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	asm_c.c:24: unsigned char num2 = get_number(3);
	mov	dptr,#0x0003
	lcall	_get_number
	mov	r5,dpl
;	asm_c.c:25: printf("\n\r Give param 3, 8bit \n\r");
	push	ar5
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	asm_c.c:26: unsigned char num3 = get_number(3);
	mov	dptr,#0x0003
	lcall	_get_number
	mov	r4,dpl
	pop	ar5
	pop	ar6
;	asm_c.c:28: printf("\n\r RESULT-> param3<Mod>param2 * param1 = %d \n\r", asmtest(num1, num2, num3));
	mov	dptr,#_asmtest_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	dptr,#_asmtest_PARM_3
	mov	a,r4
	movx	@dptr,a
	mov	dpl,r6
	lcall	_asmtest
	mov	r7,dpl
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	asm_c.c:29: printf("\n\r Going back to main menu.. \n\r");
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	asm_c.c:30: main_menu();
;	asm_c.c:31: }
	ljmp	_main_menu
;------------------------------------------------------------
;Allocation info for local variables in function 'asm_call'
;------------------------------------------------------------
;sent_from_asm             Allocated with name '_asm_call_sent_from_asm_65536_52'
;------------------------------------------------------------
;	asm_c.c:34: void asm_call(unsigned char sent_from_asm)
;	-----------------------------------------
;	 function asm_call
;	-----------------------------------------
_asm_call:
	mov	a,dpl
	mov	dptr,#_asm_call_sent_from_asm_65536_52
	movx	@dptr,a
;	asm_c.c:36: printf("\n\n\r This function was called from assembly, character sent from there -> %c\n\r", sent_from_asm);
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	asm_c.c:37: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x0a
	.db 0x0d
	.ascii " Give param 1, 8bit "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.db 0x0a
	.db 0x0d
	.ascii " Give param 2, 8bit "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.db 0x0a
	.db 0x0d
	.ascii " Give param 3, 8bit "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.db 0x0a
	.db 0x0d
	.ascii " RESULT-> param3<Mod>param2 * param1 = %d "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.db 0x0a
	.db 0x0d
	.ascii " Going back to main menu.. "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.db 0x0a
	.db 0x0a
	.db 0x0d
	.ascii " This function was called from assembly, character sent from"
	.ascii " there -> %c"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
