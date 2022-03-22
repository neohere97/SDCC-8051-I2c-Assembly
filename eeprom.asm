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
	.globl _i2c_eeprom_reset
	.globl _i2c_write_random
	.globl _i2c_read_random
	.globl _get_number_hex
	.globl _getchar
	.globl _printf
	.globl _free
	.globl _malloc
	.globl _eeprom_buffer
	.globl _read_random_byte
	.globl _write_random_byte
	.globl _hexdump_eeprom
	.globl _blockfill_eeprom
	.globl _print_eeprom_menu
	.globl _dump_eeprom_buffer
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
_hexdump_eeprom_sloc0_1_0:
	.ds 2
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
_eeprom_buffer::
	.ds 12
_dump_eeprom_buffer_from_65536_73:
	.ds 2
_dump_eeprom_buffer_j_65537_75:
	.ds 2
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
;inp                       Allocated with name '_eeprom_menu_inp_65537_51'
;------------------------------------------------------------
;	eeprom.c:26: void eeprom_menu()
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
;	eeprom.c:28: printf(" \n\r Hello, In EEPROM Demo mode");
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
;	eeprom.c:29: print_eeprom_menu();
	lcall	_print_eeprom_menu
;	eeprom.c:32: wrong_choice_pca:
00101$:
;	eeprom.c:33: printf("Please make a valid choice\n\r");
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
;	eeprom.c:34: inp = getchar();
	lcall	_getchar
	mov	r6,dpl
	mov	r7,dph
;	eeprom.c:35: if (inp == 0x52)
	cjne	r6,#0x52,00115$
	cjne	r7,#0x00,00115$
;	eeprom.c:36: read_random_byte();
	lcall	_read_random_byte
	sjmp	00129$
00115$:
;	eeprom.c:37: else if (inp == 0x57)
	cjne	r6,#0x57,00112$
	cjne	r7,#0x00,00112$
;	eeprom.c:38: write_random_byte();
	lcall	_write_random_byte
	sjmp	00129$
00112$:
;	eeprom.c:39: else if (inp == 0x44)
	cjne	r6,#0x44,00109$
	cjne	r7,#0x00,00109$
;	eeprom.c:40: hexdump_eeprom();
	lcall	_hexdump_eeprom
	sjmp	00129$
00109$:
;	eeprom.c:41: else if (inp == 0x42)
	cjne	r6,#0x42,00106$
	cjne	r7,#0x00,00106$
;	eeprom.c:42: blockfill_eeprom();
	lcall	_blockfill_eeprom
	sjmp	00129$
00106$:
;	eeprom.c:43: else if (inp == 0x46)
	cjne	r6,#0x46,00101$
	cjne	r7,#0x00,00101$
;	eeprom.c:45: i2c_eeprom_reset();
	lcall	_i2c_eeprom_reset
;	eeprom.c:46: printf("\n\rI2C Reset has been performed \n\r");
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
;	eeprom.c:51: exit_choice:
00129$:
00117$:
;	eeprom.c:52: printf("\n\rPlease 'E' to go to EEPROM Menu \n\r");
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	eeprom.c:53: inp = getchar();
	lcall	_getchar
	mov	r6,dpl
	mov	r7,dph
;	eeprom.c:54: if (inp == 0x45)
	cjne	r6,#0x45,00117$
	cjne	r7,#0x00,00117$
;	eeprom.c:55: eeprom_menu();
;	eeprom.c:57: goto exit_choice;
;	eeprom.c:58: }
	ljmp	_eeprom_menu
;------------------------------------------------------------
;Allocation info for local variables in function 'read_random_byte'
;------------------------------------------------------------
;block                     Allocated with name '_read_random_byte_block_65536_53'
;address                   Allocated with name '_read_random_byte_address_65536_53'
;a                         Allocated with name '_read_random_byte_a_65536_53'
;------------------------------------------------------------
;	eeprom.c:60: void read_random_byte()
;	-----------------------------------------
;	 function read_random_byte
;	-----------------------------------------
_read_random_byte:
;	eeprom.c:65: get_valid_hex:
00101$:
;	eeprom.c:66: printf("\n\r Please give a valid address to read from (0x000 - 0x7FF) \n\r");
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
;	eeprom.c:67: a = get_number_hex(3);
	mov	dptr,#0x0003
	lcall	_get_number_hex
	mov	r6,dpl
;	eeprom.c:69: if (a >= 0 && a <= 2047)
	mov	a,dph
	mov	r7,a
	jb	acc.7,00101$
	clr	c
	mov	a,#0xff
	subb	a,r6
	mov	a,#(0x07 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00101$
;	eeprom.c:71: block = (a & 0xF00) >> 8;
	mov	a,#0x0f
	anl	a,r7
;	eeprom.c:72: address = a & 0x0FF;
;	eeprom.c:79: printf("Block is is %x \n\r", block);
	mov	r4,a
	mov	r5,a
	mov	r7,#0x00
	push	ar6
	push	ar4
	push	ar5
	push	ar7
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
	pop	ar4
	pop	ar6
;	eeprom.c:80: printf("Address is 0x%X \n\r", address);
	mov	ar5,r6
	mov	r7,#0x00
	push	ar6
	push	ar4
	push	ar5
	push	ar7
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar4
	pop	ar6
;	eeprom.c:81: printf("\n\r The value at the address is -> 0x%X \n\r", i2c_read_random(block, address));
	mov	dptr,#_i2c_read_random_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dpl,r4
	lcall	_i2c_read_random
	mov	r7,dpl
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	eeprom.c:82: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_random_byte'
;------------------------------------------------------------
;block                     Allocated with name '_write_random_byte_block_65536_56'
;address                   Allocated with name '_write_random_byte_address_65536_56'
;a                         Allocated with name '_write_random_byte_a_65536_56'
;------------------------------------------------------------
;	eeprom.c:84: void write_random_byte()
;	-----------------------------------------
;	 function write_random_byte
;	-----------------------------------------
_write_random_byte:
;	eeprom.c:89: get_valid_hex_address:
00101$:
;	eeprom.c:90: printf("Please give a valid address to write to (0x000 - 0x7FF) \n\r");
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	eeprom.c:91: a = get_number_hex(3);
	mov	dptr,#0x0003
	lcall	_get_number_hex
	mov	r6,dpl
;	eeprom.c:93: if (a >= 0 && a <= 2047)
	mov	a,dph
	mov	r7,a
	jb	acc.7,00101$
	clr	c
	mov	a,#0xff
	subb	a,r6
	mov	a,#(0x07 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00101$
;	eeprom.c:95: block = (a & 0xF00) >> 8;
	mov	r4,#0x00
	mov	a,#0x0f
	anl	a,r7
	mov	r5,a
;	eeprom.c:96: address = a & 0x0FF;
;	eeprom.c:103: get_valid_hex_value:
00106$:
;	eeprom.c:104: printf("\n\rPlease give a valid data to write (0x00 - 0xFF) \n\r");
	push	ar6
	push	ar5
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	eeprom.c:105: a = get_number_hex(2);
	mov	dptr,#0x0002
	lcall	_get_number_hex
	mov	r4,dpl
	mov	r7,dph
	pop	ar5
	pop	ar6
;	eeprom.c:107: if (a >= 0)
	mov	a,r7
	jb	acc.7,00106$
;	eeprom.c:109: i2c_write_random(block, address, (unsigned char)a);
	mov	ar3,r4
	mov	dptr,#_i2c_write_random_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#_i2c_write_random_PARM_3
	mov	a,r3
	movx	@dptr,a
	mov	dpl,r5
	push	ar7
	push	ar4
	lcall	_i2c_write_random
	pop	ar4
	pop	ar7
;	eeprom.c:116: printf("\n\rThe data has been successfully written at the address 0x%X \n\r", a);
	push	ar4
	push	ar7
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	eeprom.c:117: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'hexdump_eeprom'
;------------------------------------------------------------
;sloc0                     Allocated with name '_hexdump_eeprom_sloc0_1_0'
;a                         Allocated with name '_hexdump_eeprom_a_65536_61'
;b                         Allocated with name '_hexdump_eeprom_b_65536_61'
;data                      Allocated with name '_hexdump_eeprom_data_65537_64'
;l                         Allocated with name '_hexdump_eeprom_l_131073_65'
;------------------------------------------------------------
;	eeprom.c:119: void hexdump_eeprom()
;	-----------------------------------------
;	 function hexdump_eeprom
;	-----------------------------------------
_hexdump_eeprom:
;	eeprom.c:123: get_valid_from_address:
00101$:
;	eeprom.c:124: printf("Please give a valid starting address (0x000 - 0x7FF) \n\r");
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	eeprom.c:125: a = get_number_hex(3);
	mov	dptr,#0x0003
	lcall	_get_number_hex
	mov	r6,dpl
;	eeprom.c:127: if (a < 0 || a > 2047)
	mov	a,dph
	mov	r7,a
	jb	acc.7,00101$
	clr	c
	mov	a,#0xff
	subb	a,r6
	mov	a,#(0x07 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00101$
;	eeprom.c:132: get_valid_to_address:
00105$:
;	eeprom.c:133: printf("Please give a valid ending address (0x%X - 0x7FF) \n\r", a);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	eeprom.c:134: b = get_number_hex(3);
	mov	dptr,#0x0003
	lcall	_get_number_hex
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
;	eeprom.c:136: if (b < a || b > 2047)
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00105$
	mov	a,#0xff
	subb	a,r4
	mov	a,#(0x07 ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jc	00105$
;	eeprom.c:141: eeprom_buffer.buffer_start = malloc((b - a) + 5);
	mov	a,r4
	clr	c
	subb	a,r6
	mov	r2,a
	mov	a,r5
	subb	a,r7
	mov	r3,a
	mov	a,#0x05
	add	a,r2
	mov	_hexdump_eeprom_sloc0_1_0,a
	clr	a
	addc	a,r3
	mov	(_hexdump_eeprom_sloc0_1_0 + 1),a
	mov	dpl,_hexdump_eeprom_sloc0_1_0
	mov	dph,(_hexdump_eeprom_sloc0_1_0 + 1)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_malloc
	mov	r0,dpl
	mov	r1,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	push	ar4
	push	ar5
	mov	r5,#0x00
	mov	dptr,#(_eeprom_buffer + 0x0002)
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	eeprom.c:143: eeprom_buffer.buff_size = (b - a) + 5;
	mov	dptr,#(_eeprom_buffer + 0x0008)
	mov	a,_hexdump_eeprom_sloc0_1_0
	movx	@dptr,a
	mov	a,(_hexdump_eeprom_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
;	eeprom.c:144: eeprom_buffer.buffer_num = 0;
	mov	dptr,#_eeprom_buffer
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	eeprom.c:145: eeprom_buffer.buffer_end = eeprom_buffer.buffer_start + (b - a) + 5;
	mov	a,r2
	add	a,r0
	mov	r2,a
	mov	a,r3
	addc	a,r1
	mov	r3,a
	mov	ar4,r5
	mov	a,#0x05
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dptr,#(_eeprom_buffer + 0x0005)
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	eeprom.c:146: eeprom_buffer.num_char = 0;
	mov	dptr,#(_eeprom_buffer + 0x000a)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	eeprom.c:148: printf("Reading EEPROM...\n\r");
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	eeprom.c:150: for (int l = a; l <= b; l++)
	mov	_hexdump_eeprom_sloc0_1_0,r6
	mov	(_hexdump_eeprom_sloc0_1_0 + 1),r7
;	eeprom.c:159: free(eeprom_buffer.buffer_start);
	pop	ar5
	pop	ar4
;	eeprom.c:150: for (int l = a; l <= b; l++)
00111$:
	clr	c
	mov	a,r4
	subb	a,_hexdump_eeprom_sloc0_1_0
	mov	a,r5
	xrl	a,#0x80
	mov	b,(_hexdump_eeprom_sloc0_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00109$
;	eeprom.c:153: data = i2c_read_random((l & 0xF00) >> 8, (l & 0x0FF));
	push	ar4
	push	ar5
	mov	a,#0x0f
	anl	a,(_hexdump_eeprom_sloc0_1_0 + 1)
	mov	r2,a
	mov	dptr,#_i2c_read_random_PARM_2
	mov	a,_hexdump_eeprom_sloc0_1_0
	movx	@dptr,a
	mov	dpl,r2
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_i2c_read_random
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	eeprom.c:154: *(eeprom_buffer.buffer_start + eeprom_buffer.num_char) = data;
	mov	dptr,#(_eeprom_buffer + 0x0002)
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#(_eeprom_buffer + 0x000a)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	add	a,r0
	mov	r0,a
	mov	a,r5
	addc	a,r1
	mov	r1,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	__gptrput
;	eeprom.c:155: eeprom_buffer.num_char += 1;
	mov	dptr,#(_eeprom_buffer + 0x000a)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	r4
	cjne	r4,#0x00,00152$
	inc	r5
00152$:
	mov	dptr,#(_eeprom_buffer + 0x000a)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	eeprom.c:150: for (int l = a; l <= b; l++)
	inc	_hexdump_eeprom_sloc0_1_0
	clr	a
	cjne	a,_hexdump_eeprom_sloc0_1_0,00153$
	inc	(_hexdump_eeprom_sloc0_1_0 + 1)
00153$:
	pop	ar5
	pop	ar4
	sjmp	00111$
00109$:
;	eeprom.c:158: dump_eeprom_buffer(a);
	mov	dpl,r6
	mov	dph,r7
	lcall	_dump_eeprom_buffer
;	eeprom.c:159: free(eeprom_buffer.buffer_start);
	mov	dptr,#(_eeprom_buffer + 0x0002)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
;	eeprom.c:160: }
	ljmp	_free
;------------------------------------------------------------
;Allocation info for local variables in function 'blockfill_eeprom'
;------------------------------------------------------------
;a                         Allocated with name '_blockfill_eeprom_a_65536_67'
;b                         Allocated with name '_blockfill_eeprom_b_65536_67'
;c                         Allocated with name '_blockfill_eeprom_c_65536_67'
;l                         Allocated with name '_blockfill_eeprom_l_131072_70'
;------------------------------------------------------------
;	eeprom.c:162: void blockfill_eeprom()
;	-----------------------------------------
;	 function blockfill_eeprom
;	-----------------------------------------
_blockfill_eeprom:
;	eeprom.c:166: get_blockfill_from_address:
00101$:
;	eeprom.c:167: printf("Please give a valid starting address (0x000 - 0x7FF) \n\r");
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	eeprom.c:168: a = get_number_hex(3);
	mov	dptr,#0x0003
	lcall	_get_number_hex
	mov	r6,dpl
;	eeprom.c:170: if (a < 0 || a > 2047)
	mov	a,dph
	mov	r7,a
	jb	acc.7,00101$
	clr	c
	mov	a,#0xff
	subb	a,r6
	mov	a,#(0x07 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00101$
;	eeprom.c:175: get_blockfill_to_address:
00105$:
;	eeprom.c:176: printf("Please give a valid ending address (0x%X - 0x7FF) \n\r", a);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	eeprom.c:177: b = get_number_hex(3);
	mov	dptr,#0x0003
	lcall	_get_number_hex
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
;	eeprom.c:179: if (b < a || b > 2047)
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00105$
	mov	a,#0xff
	subb	a,r4
	mov	a,#(0x07 ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jc	00105$
;	eeprom.c:185: printf("\n\rPlease give a valid data for blockfill (0x00 - 0xFF) \n\r");
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	eeprom.c:186: c = get_number_hex(2);
	mov	dptr,#0x0002
	lcall	_get_number_hex
	mov	r2,dpl
	mov	r3,dph
;	eeprom.c:188: printf("Writing EEPROM...\n\r");
	push	ar3
	push	ar2
	mov	a,#___str_15
	push	acc
	mov	a,#(___str_15 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	eeprom.c:189: for (int l = a; l <= b; l++)
00112$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00110$
;	eeprom.c:191: i2c_write_random((l & 0xF00) >> 8, (l & 0x0FF), (unsigned char)c);
	mov	a,#0x0f
	anl	a,r7
	mov	r0,a
	mov	dptr,#_i2c_write_random_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#_i2c_write_random_PARM_3
	mov	a,r2
	movx	@dptr,a
	mov	dpl,r0
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_i2c_write_random
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	eeprom.c:189: for (int l = a; l <= b; l++)
	inc	r6
	cjne	r6,#0x00,00112$
	inc	r7
	sjmp	00112$
00110$:
;	eeprom.c:194: printf("\n\rBlockfill finished...\n\r");
	mov	a,#___str_16
	push	acc
	mov	a,#(___str_16 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	eeprom.c:195: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print_eeprom_menu'
;------------------------------------------------------------
;	eeprom.c:197: void print_eeprom_menu()
;	-----------------------------------------
;	 function print_eeprom_menu
;	-----------------------------------------
_print_eeprom_menu:
;	eeprom.c:199: printf("\n\n\r^^^^^^^^^^^^^^^^^^^-EEPROM-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ \n\n\r");
	mov	a,#___str_17
	push	acc
	mov	a,#(___str_17 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	eeprom.c:200: printf("'R' -> Read Random Byte\n\r");
	mov	a,#___str_18
	push	acc
	mov	a,#(___str_18 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	eeprom.c:201: printf("'W' -> Write Random Byte\n\r");
	mov	a,#___str_19
	push	acc
	mov	a,#(___str_19 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	eeprom.c:202: printf("'D' -> Hexdump\n\r");
	mov	a,#___str_20
	push	acc
	mov	a,#(___str_20 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	eeprom.c:203: printf("'B' -> Block Fill\n\r");
	mov	a,#___str_21
	push	acc
	mov	a,#(___str_21 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	eeprom.c:204: printf("'F' -> Reset EEPROM \n\r");
	mov	a,#___str_22
	push	acc
	mov	a,#(___str_22 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	eeprom.c:205: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dump_eeprom_buffer'
;------------------------------------------------------------
;from                      Allocated with name '_dump_eeprom_buffer_from_65536_73'
;j                         Allocated with name '_dump_eeprom_buffer_j_65537_75'
;i                         Allocated with name '_dump_eeprom_buffer_i_131073_76'
;------------------------------------------------------------
;	eeprom.c:207: void dump_eeprom_buffer(int from)
;	-----------------------------------------
;	 function dump_eeprom_buffer
;	-----------------------------------------
_dump_eeprom_buffer:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_dump_eeprom_buffer_from_65536_73
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	eeprom.c:210: printf("\n\r-------------------------HEXDUMP--------------------------------");
	mov	a,#___str_23
	push	acc
	mov	a,#(___str_23 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	eeprom.c:211: printf("\n\r ADDR: +0 +1 +2 +3 +4 +5 +6 +7 +8 +9 +A +B +C +D +E +F \n\r");
	mov	a,#___str_24
	push	acc
	mov	a,#(___str_24 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	eeprom.c:212: int j = 16;
	mov	dptr,#_dump_eeprom_buffer_j_65537_75
	mov	a,#0x10
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	eeprom.c:214: for (int i = 0; i < eeprom_buffer.num_char; i++)
	mov	dptr,#_dump_eeprom_buffer_from_65536_73
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r4,#0x00
	mov	r5,#0x00
00107$:
	mov	dptr,#(_eeprom_buffer + 0x000a)
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r5
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jc	00128$
	ljmp	00105$
00128$:
;	eeprom.c:216: if (j == 16)
	mov	dptr,#_dump_eeprom_buffer_j_65537_75
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	cjne	r2,#0x10,00102$
	cjne	r3,#0x00,00102$
;	eeprom.c:218: printf("\n\r0x%03X: ", (from + i));
	mov	a,r4
	add	a,r6
	mov	r2,a
	mov	a,r5
	addc	a,r7
	mov	r3,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar2
	push	ar3
	mov	a,#___str_25
	push	acc
	mov	a,#(___str_25 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00102$:
;	eeprom.c:220: printf("%02X ", *(eeprom_buffer.buffer_start + i));
	mov	dptr,#(_eeprom_buffer + 0x0002)
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r4
	add	a,r1
	mov	r1,a
	mov	a,r5
	addc	a,r2
	mov	r2,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	mov	r3,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar1
	push	ar3
	mov	a,#___str_26
	push	acc
	mov	a,#(___str_26 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	eeprom.c:221: j--;
	mov	dptr,#_dump_eeprom_buffer_j_65537_75
	movx	a,@dptr
	add	a,#0xff
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xff
	mov	r3,a
	mov	dptr,#_dump_eeprom_buffer_j_65537_75
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	eeprom.c:222: if (j == 0)
	mov	dptr,#_dump_eeprom_buffer_j_65537_75
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00108$
;	eeprom.c:223: j = 16;
	mov	dptr,#_dump_eeprom_buffer_j_65537_75
	mov	a,#0x10
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
00108$:
;	eeprom.c:214: for (int i = 0; i < eeprom_buffer.num_char; i++)
	inc	r4
	cjne	r4,#0x00,00132$
	inc	r5
00132$:
	ljmp	00107$
00105$:
;	eeprom.c:225: printf("\n\n\r");
	mov	a,#___str_27
	push	acc
	mov	a,#(___str_27 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	eeprom.c:226: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii " "
	.db 0x0a
	.db 0x0d
	.ascii " Hello, In EEPROM Demo mode"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "Please make a valid choice"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.db 0x0a
	.db 0x0d
	.ascii "I2C Reset has been performed "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.db 0x0a
	.db 0x0d
	.ascii "Please 'E' to go to EEPROM Menu "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.db 0x0a
	.db 0x0d
	.ascii " Please give a valid address to read from (0x000 - 0x7FF) "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "Block is is %x "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "Address is 0x%X "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.db 0x0a
	.db 0x0d
	.ascii " The value at the address is -> 0x%X "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "Please give a valid address to write to (0x000 - 0x7FF) "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.db 0x0a
	.db 0x0d
	.ascii "Please give a valid data to write (0x00 - 0xFF) "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.db 0x0a
	.db 0x0d
	.ascii "The data has been successfully written at the address 0x%X "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii "Please give a valid starting address (0x000 - 0x7FF) "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii "Please give a valid ending address (0x%X - 0x7FF) "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.ascii "Reading EEPROM..."
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.db 0x0a
	.db 0x0d
	.ascii "Please give a valid data for blockfill (0x00 - 0xFF) "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.ascii "Writing EEPROM..."
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.db 0x0a
	.db 0x0d
	.ascii "Blockfill finished..."
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.db 0x0a
	.db 0x0a
	.db 0x0d
	.ascii "^^^^^^^^^^^^^^^^^^^-EEPROM-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ "
	.db 0x0a
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.ascii "'R' -> Read Random Byte"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.ascii "'W' -> Write Random Byte"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.ascii "'D' -> Hexdump"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.ascii "'B' -> Block Fill"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.ascii "'F' -> Reset EEPROM "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.db 0x0a
	.db 0x0d
	.ascii "-------------------------HEXDUMP----------------------------"
	.ascii "----"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_24:
	.db 0x0a
	.db 0x0d
	.ascii " ADDR: +0 +1 +2 +3 +4 +5 +6 +7 +8 +9 +A +B +C +D +E +F "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_25:
	.db 0x0a
	.db 0x0d
	.ascii "0x%03X: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_26:
	.ascii "%02X "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_27:
	.db 0x0a
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
