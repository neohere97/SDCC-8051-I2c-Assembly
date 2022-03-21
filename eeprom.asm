;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module eeprom
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _eeprom_menu
	.globl _i2c_write_random
	.globl _i2c_read_random
	.globl _getchar
	.globl _printf
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
;Allocation info for local variables in function 'eeprom_menu'
;------------------------------------------------------------
;i                         Allocated with name '_eeprom_menu_i_131072_49'
;r                         Allocated with name '_eeprom_menu_r_65537_51'
;k                         Allocated with name '_eeprom_menu_k_131073_52'
;a                         Allocated with name '_eeprom_menu_a_196609_53'
;------------------------------------------------------------
;	eeprom.c:6: void eeprom_menu()
;	-----------------------------------------
;	 function eeprom_menu
;	-----------------------------------------
_eeprom_menu:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	eeprom.c:8: for (int i = 0; i < 256; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00107$:
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x81
	jnc	00101$
;	eeprom.c:10: i2c_write_random(0, i, i);
	mov	ar5,r6
	mov	dptr,#_i2c_write_random_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	dptr,#_i2c_write_random_PARM_3
	mov	a,r5
	movx	@dptr,a
	mov	dpl,#0x00
	push	ar7
	push	ar6
	lcall	_i2c_write_random
	pop	ar6
	pop	ar7
;	eeprom.c:8: for (int i = 0; i < 256; i++)
	inc	r6
	cjne	r6,#0x00,00107$
	inc	r7
	sjmp	00107$
00101$:
;	eeprom.c:13: unsigned char r = getchar();
	lcall	_getchar
;	eeprom.c:15: for (int k = 0; k < 256; k++)
	mov	r6,#0x00
	mov	r7,#0x00
00110$:
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x81
	jnc	00104$
;	eeprom.c:17: unsigned char a = i2c_read_random(0, k);
	mov	dptr,#_i2c_read_random_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dpl,#0x00
	push	ar7
	push	ar6
	lcall	_i2c_read_random
	mov	r5,dpl
	pop	ar6
	pop	ar7
;	eeprom.c:18: printf("loc ->%d val is -> %x \n\r", k, a);
	mov	r4,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar6
	push	ar7
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar6
	pop	ar7
;	eeprom.c:15: for (int k = 0; k < 256; k++)
	inc	r6
;	eeprom.c:21: while (1)
	cjne	r6,#0x00,00110$
	inc	r7
	sjmp	00110$
00104$:
;	eeprom.c:24: }
	sjmp	00104$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "loc ->%d val is -> %x "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
