;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module i2c
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _i2c_read_val
	.globl _i2c_read_init
	.globl _i2c_write_val
	.globl _i2c_addr
	.globl _i2c_write_init
	.globl _i2c_read_random_PARM_2
	.globl _i2c_write_random_PARM_3
	.globl _i2c_write_random_PARM_2
	.globl _i2c_write_random
	.globl _i2c_read_random
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
_i2c_write_random_PARM_2:
	.ds 1
_i2c_write_random_PARM_3:
	.ds 1
_i2c_write_random_block_65536_8:
	.ds 1
_i2c_read_random_PARM_2:
	.ds 1
_i2c_read_random_block_65536_14:
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
;Allocation info for local variables in function 'i2c_write_random'
;------------------------------------------------------------
;address                   Allocated with name '_i2c_write_random_PARM_2'
;value                     Allocated with name '_i2c_write_random_PARM_3'
;block                     Allocated with name '_i2c_write_random_block_65536_8'
;k                         Allocated with name '_i2c_write_random_k_131072_10'
;l                         Allocated with name '_i2c_write_random_l_262144_12'
;------------------------------------------------------------
;	i2c.c:25: void i2c_write_random(unsigned char block, unsigned char address, unsigned char value)
;	-----------------------------------------
;	 function i2c_write_random
;	-----------------------------------------
_i2c_write_random:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	a,dpl
	mov	dptr,#_i2c_write_random_block_65536_8
	movx	@dptr,a
;	i2c.c:27: i2c_write_init(block);
	movx	a,@dptr
	mov	dpl,a
	lcall	_i2c_write_init
;	i2c.c:28: i2c_addr(address);
	mov	dptr,#_i2c_write_random_PARM_2
	movx	a,@dptr
	mov	dpl,a
	lcall	_i2c_addr
;	i2c.c:29: i2c_write_val(value);
	mov	dptr,#_i2c_write_random_PARM_3
	movx	a,@dptr
	mov	dpl,a
	lcall	_i2c_write_val
;	i2c.c:31: for (int k = 0; k < 90; k++)
	mov	r6,#0x00
	mov	r7,#0x00
00107$:
	clr	c
	mov	a,r6
	subb	a,#0x5a
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00109$
;	i2c.c:33: for (int l = 0; l < 10; l++)
	mov	r4,#0x00
	mov	r5,#0x00
00104$:
	clr	c
	mov	a,r4
	subb	a,#0x0a
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00108$
	inc	r4
	cjne	r4,#0x00,00104$
	inc	r5
	sjmp	00104$
00108$:
;	i2c.c:31: for (int k = 0; k < 90; k++)
	inc	r6
	cjne	r6,#0x00,00107$
	inc	r7
	sjmp	00107$
00109$:
;	i2c.c:37: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_read_random'
;------------------------------------------------------------
;address                   Allocated with name '_i2c_read_random_PARM_2'
;block                     Allocated with name '_i2c_read_random_block_65536_14'
;a                         Allocated with name '_i2c_read_random_a_65537_16'
;------------------------------------------------------------
;	i2c.c:44: unsigned char i2c_read_random(unsigned char block, unsigned char address)
;	-----------------------------------------
;	 function i2c_read_random
;	-----------------------------------------
_i2c_read_random:
	mov	a,dpl
	mov	dptr,#_i2c_read_random_block_65536_14
	movx	@dptr,a
;	i2c.c:46: i2c_write_init(block);
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
	push	ar7
	lcall	_i2c_write_init
;	i2c.c:47: i2c_addr(address);
	mov	dptr,#_i2c_read_random_PARM_2
	movx	a,@dptr
	mov	dpl,a
	lcall	_i2c_addr
	pop	ar7
;	i2c.c:48: i2c_read_init(block);
	mov	dpl,r7
	lcall	_i2c_read_init
;	i2c.c:49: unsigned char a = i2c_read_val();
;	i2c.c:50: return a;
;	i2c.c:51: }
	ljmp	_i2c_read_val
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
