;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module buffer
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main_menu
	.globl _get_number
	.globl _getchar
	.globl _putchar
	.globl _free
	.globl _malloc
	.globl _printf
	.globl _buffers_array
	.globl _program_stats
	.globl _user_interface_heap
	.globl _at_clear_all_buffers
	.globl _delete_buffer
	.globl _print_heap_menu
	.globl _create_new_buffer
	.globl _create_initial_buffers
	.globl _buffer_input_loop
	.globl _dump_buff_zero_ascii
	.globl _dump_buff_zero_hex
	.globl _print_heap_stats
	.globl _print_all_buffers
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
_delete_buffer_sloc0_1_0:
	.ds 2
_delete_buffer_sloc1_1_0:
	.ds 2
_delete_buffer_sloc2_1_0:
	.ds 3
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
_program_stats::
	.ds 10
_buffers_array::
	.ds 300
_create_new_buffer_buff_65536_57:
	.ds 12
_create_initial_buffers_buff_65537_63:
	.ds 12
_create_initial_buffers_buff1_65537_63:
	.ds 12
_dump_buff_zero_ascii_j_65536_79:
	.ds 2
_dump_buff_zero_hex_j_131073_87:
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
;Allocation info for local variables in function 'user_interface_heap'
;------------------------------------------------------------
;	buffer.c:45: void user_interface_heap()
;	-----------------------------------------
;	 function user_interface_heap
;	-----------------------------------------
_user_interface_heap:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	buffer.c:47: create_initial_buffers();
	lcall	_create_initial_buffers
;	buffer.c:48: print_all_buffers();
	lcall	_print_all_buffers
;	buffer.c:49: buffer_input_loop();
;	buffer.c:50: }
	ljmp	_buffer_input_loop
;------------------------------------------------------------
;Allocation info for local variables in function 'at_clear_all_buffers'
;------------------------------------------------------------
;i                         Allocated with name '_at_clear_all_buffers_i_131072_48'
;------------------------------------------------------------
;	buffer.c:58: void at_clear_all_buffers()
;	-----------------------------------------
;	 function at_clear_all_buffers
;	-----------------------------------------
_at_clear_all_buffers:
;	buffer.c:60: for (int i = 0; i < program_stats.total_buffers; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00103$:
	mov	dptr,#(_program_stats + 0x0008)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r6
	subb	a,r4
	mov	a,r7
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00101$
;	buffer.c:62: free(buffers_array[i].buffer_start);
	mov	dptr,#__mulint_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x000c
	push	ar7
	push	ar6
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	mov	a,r4
	add	a,#_buffers_array
	mov	r4,a
	mov	a,r5
	addc	a,#(_buffers_array >> 8)
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_free
	pop	ar6
	pop	ar7
;	buffer.c:63: printf("Buffer %d Freed ....\n\r", i);
	push	ar7
	push	ar6
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
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
;	buffer.c:60: for (int i = 0; i < program_stats.total_buffers; i++)
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
	sjmp	00103$
00101$:
;	buffer.c:65: printf("Let's begin again..\n\r");
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
;	buffer.c:66: user_interface_heap();
;	buffer.c:67: }
	ljmp	_user_interface_heap
;------------------------------------------------------------
;Allocation info for local variables in function 'delete_buffer'
;------------------------------------------------------------
;sloc0                     Allocated with name '_delete_buffer_sloc0_1_0'
;sloc1                     Allocated with name '_delete_buffer_sloc1_1_0'
;sloc2                     Allocated with name '_delete_buffer_sloc2_1_0'
;buff_number               Allocated with name '_delete_buffer_buff_number_65536_50'
;buff_to_free              Allocated with name '_delete_buffer_buff_to_free_65536_50'
;buffer_freed_size         Allocated with name '_delete_buffer_buffer_freed_size_65536_50'
;i                         Allocated with name '_delete_buffer_i_196608_52'
;------------------------------------------------------------
;	buffer.c:74: int delete_buffer()
;	-----------------------------------------
;	 function delete_buffer
;	-----------------------------------------
_delete_buffer:
;	buffer.c:79: get_del_num:
00101$:
;	buffer.c:80: printf("\n\rGive Valid Buffer Number to delete(1-%d) in 3 digits\n\r", (program_stats.total_buffers - 1));
	mov	dptr,#(_program_stats + 0x0008)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	dec	r6
	cjne	r6,#0xff,00139$
	dec	r7
00139$:
	push	ar6
	push	ar7
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	buffer.c:81: buff_number = get_number(3);
	mov	dptr,#0x0003
	lcall	_get_number
	mov	r6,dpl
	mov	r7,dph
;	buffer.c:83: if (buff_number > 0 && buff_number < program_stats.total_buffers)
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00101$
	mov	dptr,#(_program_stats + 0x0008)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r6
	subb	a,r4
	mov	a,r7
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00101$
;	buffer.c:87: buff_to_free = buffers_array[buff_number].buffer_start;
	mov	dptr,#__mulint_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x000c
	push	ar7
	push	ar6
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,r4
	add	a,#_buffers_array
	mov	r4,a
	mov	a,r5
	addc	a,#(_buffers_array >> 8)
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	_delete_buffer_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_delete_buffer_sloc2_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_delete_buffer_sloc2_1_0 + 2),a
;	buffer.c:88: buffer_freed_size = buffers_array[buff_number].buff_size;
	mov	a,#0x08
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	buffer.c:90: for (int i = 0; i < (program_stats.total_buffers - 1); i++)
	clr	a
	mov	_delete_buffer_sloc0_1_0,a
	mov	(_delete_buffer_sloc0_1_0 + 1),a
00110$:
	push	ar4
	push	ar5
	mov	dptr,#(_program_stats + 0x0008)
	movx	a,@dptr
	mov	_delete_buffer_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_delete_buffer_sloc1_1_0 + 1),a
	mov	a,_delete_buffer_sloc1_1_0
	add	a,#0xff
	mov	r0,a
	mov	a,(_delete_buffer_sloc1_1_0 + 1)
	addc	a,#0xff
	mov	r5,a
	clr	c
	mov	a,_delete_buffer_sloc0_1_0
	subb	a,r0
	mov	a,(_delete_buffer_sloc0_1_0 + 1)
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	pop	ar5
	pop	ar4
	jc	00142$
	ljmp	00104$
00142$:
;	buffer.c:92: if (i >= buff_number)
	clr	c
	mov	a,_delete_buffer_sloc0_1_0
	subb	a,r6
	mov	a,(_delete_buffer_sloc0_1_0 + 1)
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00143$
	ljmp	00111$
00143$:
;	buffer.c:94: buffers_array[i + 1].buffer_num = i;
	push	ar4
	push	ar5
	mov	dptr,#__mulint_PARM_2
	mov	a,#0x01
	add	a,_delete_buffer_sloc0_1_0
	movx	@dptr,a
	clr	a
	addc	a,(_delete_buffer_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x000c
	push	ar7
	push	ar6
	push	ar4
	lcall	__mulint
	mov	r0,dpl
	mov	r5,dph
	pop	ar4
	mov	a,r0
	add	a,#_buffers_array
	mov	dpl,a
	mov	a,r5
	addc	a,#(_buffers_array >> 8)
	mov	dph,a
	mov	a,_delete_buffer_sloc0_1_0
	movx	@dptr,a
	mov	a,(_delete_buffer_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
;	buffer.c:95: buffers_array[i] = buffers_array[i + 1];
	mov	dptr,#__mulint_PARM_2
	mov	a,_delete_buffer_sloc0_1_0
	movx	@dptr,a
	mov	a,(_delete_buffer_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x000c
	push	ar5
	push	ar0
	lcall	__mulint
	mov	r3,dpl
	mov	r4,dph
	pop	ar0
	pop	ar5
	mov	a,r3
	add	a,#_buffers_array
	mov	r3,a
	mov	a,r4
	addc	a,#(_buffers_array >> 8)
	mov	r4,a
	mov	r2,#0x00
	mov	a,r0
	add	a,#_buffers_array
	mov	r0,a
	mov	a,r5
	addc	a,#(_buffers_array >> 8)
	mov	r5,a
	mov	dptr,#___memcpy_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x0c
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	push	ar5
	push	ar4
	lcall	___memcpy
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	buffer.c:108: goto get_del_num;
	pop	ar5
	pop	ar4
;	buffer.c:95: buffers_array[i] = buffers_array[i + 1];
00111$:
;	buffer.c:90: for (int i = 0; i < (program_stats.total_buffers - 1); i++)
	inc	_delete_buffer_sloc0_1_0
	clr	a
	cjne	a,_delete_buffer_sloc0_1_0,00144$
	inc	(_delete_buffer_sloc0_1_0 + 1)
00144$:
	ljmp	00110$
00104$:
;	buffer.c:99: program_stats.total_buffers -= 1;
	mov	a,_delete_buffer_sloc1_1_0
	add	a,#0xff
	mov	r2,a
	mov	a,(_delete_buffer_sloc1_1_0 + 1)
	addc	a,#0xff
	mov	r3,a
	mov	dptr,#(_program_stats + 0x0008)
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	buffer.c:100: program_stats.allocated_heap -= buffer_freed_size;
	mov	dptr,#(_program_stats + 0x0002)
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r2
	clr	c
	subb	a,r4
	mov	r4,a
	mov	a,r3
	subb	a,r5
	mov	r5,a
	mov	dptr,#(_program_stats + 0x0002)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	buffer.c:102: free(buff_to_free);
	mov	r3,_delete_buffer_sloc2_1_0
	mov	r4,(_delete_buffer_sloc2_1_0 + 1)
	mov	r5,(_delete_buffer_sloc2_1_0 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	push	ar7
	push	ar6
	lcall	_free
	pop	ar6
	pop	ar7
;	buffer.c:103: printf("Buffer %d Successfully Deleted.. \n\r", buff_number);
	push	ar6
	push	ar7
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
;	buffer.c:104: return 0;
	mov	dptr,#0x0000
;	buffer.c:108: goto get_del_num;
;	buffer.c:110: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print_heap_menu'
;------------------------------------------------------------
;	buffer.c:117: void print_heap_menu()
;	-----------------------------------------
;	 function print_heap_menu
;	-----------------------------------------
_print_heap_menu:
;	buffer.c:119: printf("\n\n\r^^^^^^^^^^^^^^^^^^^-HEAP-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ \n\n\r");
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
;	buffer.c:120: printf("You can enter characters or use commands from below \n\r");
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	buffer.c:121: printf("'?' -> Show heap status, dump & clear Buffer 0 \n\r");
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	buffer.c:122: printf("'+' -> Add a new Buffer\n\r");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	buffer.c:123: printf("'-' -> Delete existing Buffer\n\r");
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
;	buffer.c:124: printf("'=' -> Dump Buffer 0 in hex\n\r");
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
;	buffer.c:125: printf("'@' -> Free all Heap & begin again\n\n\r");
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	buffer.c:126: printf("'M' -> Go to Main Menu \n\n\r");
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
;	buffer.c:127: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'create_new_buffer'
;------------------------------------------------------------
;buff_size                 Allocated with name '_create_new_buffer_buff_size_65536_57'
;buff                      Allocated with name '_create_new_buffer_buff_65536_57'
;------------------------------------------------------------
;	buffer.c:135: int create_new_buffer()
;	-----------------------------------------
;	 function create_new_buffer
;	-----------------------------------------
_create_new_buffer:
;	buffer.c:139: if (program_stats.allocated_heap == program_stats.total_heap_size)
	mov	dptr,#(_program_stats + 0x0002)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_program_stats
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	cjne	a,ar4,00133$
	mov	a,r7
	cjne	a,ar5,00133$
	ljmp	00111$
00133$:
;	buffer.c:142: get_new_buff:
00103$:
;	buffer.c:143: printf("\n\rGive Valid Buffer Size(030-300):");
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	buffer.c:144: buff_size = get_number(3);
	mov	dptr,#0x0003
	lcall	_get_number
	mov	r6,dpl
	mov	r7,dph
;	buffer.c:145: if (buff_size >= 30 && buff_size <= 300)
	clr	c
	mov	a,r6
	subb	a,#0x1e
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00103$
	mov	a,#0x2c
	subb	a,r6
	mov	a,#(0x01 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00103$
;	buffer.c:147: buff.buffer_start = malloc(buff_size);
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	_malloc
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	r3,#0x00
	mov	dptr,#(_create_new_buffer_buff_65536_57 + 0x0002)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	buffer.c:148: if (buff.buffer_start == NULL)
	mov	a,r4
	orl	a,r5
	jnz	00105$
;	buffer.c:150: printf("Failed, give smaller buffer\n\r");
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
	ljmp	00106$
00105$:
;	buffer.c:154: printf("\n\n\r####SUCCESS, BUFFER Created####\n\n\r");
	push	ar7
	push	ar6
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
	pop	ar6
	pop	ar7
;	buffer.c:156: program_stats.allocated_heap += buff_size;
	mov	dptr,#(_program_stats + 0x0002)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	add	a,r4
	mov	r4,a
	mov	a,r7
	addc	a,r5
	mov	r5,a
	mov	dptr,#(_program_stats + 0x0002)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	buffer.c:157: buff.buff_size = buff_size;
	mov	dptr,#(_create_new_buffer_buff_65536_57 + 0x0008)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	buffer.c:158: buff.buffer_num = program_stats.total_buffers;
	mov	dptr,#(_program_stats + 0x0008)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_create_new_buffer_buff_65536_57
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	buffer.c:159: buff.buffer_end = buff.buffer_start + buff_size;
	mov	dptr,#(_create_new_buffer_buff_65536_57 + 0x0002)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	add	a,r3
	mov	r6,a
	mov	a,r7
	addc	a,r4
	mov	r7,a
	mov	ar2,r5
	mov	dptr,#(_create_new_buffer_buff_65536_57 + 0x0005)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
;	buffer.c:160: buff.num_char = 0;
	mov	dptr,#(_create_new_buffer_buff_65536_57 + 0x000a)
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	buffer.c:162: buffers_array[program_stats.total_buffers] = buff;
	mov	dptr,#(_program_stats + 0x0008)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__mulint_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x000c
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	a,r6
	add	a,#_buffers_array
	mov	r6,a
	mov	a,r7
	addc	a,#(_buffers_array >> 8)
	mov	r7,a
	mov	r5,#0x00
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_create_new_buffer_buff_65536_57
	movx	@dptr,a
	mov	a,#(_create_new_buffer_buff_65536_57 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x0c
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	___memcpy
;	buffer.c:163: program_stats.total_buffers += 1;
	mov	dptr,#(_program_stats + 0x0008)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r6
	cjne	r6,#0x00,00137$
	inc	r7
00137$:
	mov	dptr,#(_program_stats + 0x0008)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00106$:
;	buffer.c:165: return 0;
	mov	dptr,#0x0000
;	buffer.c:171: no_heap_left:
	ret
00111$:
;	buffer.c:172: printf("No Heap Memory Left, Delete some buffers...\n\r");
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
;	buffer.c:173: return 0;
	mov	dptr,#0x0000
;	buffer.c:174: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'create_initial_buffers'
;------------------------------------------------------------
;buff_size                 Allocated with name '_create_initial_buffers_buff_size_65536_62'
;buff                      Allocated with name '_create_initial_buffers_buff_65537_63'
;buff1                     Allocated with name '_create_initial_buffers_buff1_65537_63'
;------------------------------------------------------------
;	buffer.c:182: void create_initial_buffers()
;	-----------------------------------------
;	 function create_initial_buffers
;	-----------------------------------------
_create_initial_buffers:
;	buffer.c:186: get_buff:
00101$:
;	buffer.c:187: printf("\n\rGive Valid Initial Buffer Size(0048-4800):");
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
;	buffer.c:188: buff_size = get_number(4);
	mov	dptr,#0x0004
	lcall	_get_number
	mov	r6,dpl
	mov	r7,dph
;	buffer.c:192: if (buff_size >= 48 && buff_size <= 4800)
	clr	c
	mov	a,r6
	subb	a,#0x30
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00101$
	mov	a,#0xc0
	subb	a,r6
	mov	a,#(0x12 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00101$
;	buffer.c:194: buff.buffer_start = malloc(buff_size);
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	_malloc
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	r3,#0x00
	mov	dptr,#(_create_initial_buffers_buff_65537_63 + 0x0002)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	buffer.c:195: buff1.buffer_start = malloc(buff_size);
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	_malloc
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	r3,#0x00
	mov	dptr,#(_create_initial_buffers_buff1_65537_63 + 0x0002)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	buffer.c:197: if (buff.buffer_start == NULL || buff1.buffer_start == NULL)
	mov	dptr,#(_create_initial_buffers_buff_65537_63 + 0x0002)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	a,r3
	orl	a,r4
	jz	00106$
	mov	dptr,#(_create_initial_buffers_buff1_65537_63 + 0x0002)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r3
	orl	a,r4
	jnz	00107$
00106$:
;	buffer.c:199: printf("\n\r####FAIL, Please give a smaller buffer size####\n\n\r");
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
;	buffer.c:201: if (buff.buffer_start != NULL)
	mov	dptr,#(_create_initial_buffers_buff_65537_63 + 0x0002)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	a,r3
	orl	a,r4
	jz	00103$
;	buffer.c:202: free(buff.buffer_start);
	mov	dptr,#(_create_initial_buffers_buff_65537_63 + 0x0002)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_free
00103$:
;	buffer.c:203: if (buff1.buffer_start != NULL)
	mov	dptr,#(_create_initial_buffers_buff1_65537_63 + 0x0002)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r3
	orl	a,r4
	jnz	00145$
	ljmp	00101$
00145$:
;	buffer.c:204: free(buff1.buffer_start);
	mov	dptr,#(_create_initial_buffers_buff1_65537_63 + 0x0002)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_free
;	buffer.c:206: goto get_buff;
	ljmp	00101$
00107$:
;	buffer.c:211: printf("\n\n\r####SUCCESS, INITIAL BUFFERS Created####\n\n\r");
	push	ar7
	push	ar6
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
	pop	ar6
	pop	ar7
;	buffer.c:212: program_stats.allocated_heap = 2 * buff_size;
	mov	a,r6
	add	a,r6
	mov	r4,a
	mov	a,r7
	rlc	a
	mov	r5,a
	mov	dptr,#(_program_stats + 0x0002)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	buffer.c:213: program_stats.total_heap_size = 4996;
	mov	dptr,#_program_stats
	mov	a,#0x84
	movx	@dptr,a
	mov	a,#0x13
	inc	dptr
	movx	@dptr,a
;	buffer.c:214: program_stats.total_buffers = 2;
	mov	dptr,#(_program_stats + 0x0008)
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	buffer.c:216: buff.buff_size = buff_size;
	mov	dptr,#(_create_initial_buffers_buff_65537_63 + 0x0008)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	buffer.c:217: buff1.buff_size = buff_size;
	mov	dptr,#(_create_initial_buffers_buff1_65537_63 + 0x0008)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	buffer.c:218: buff.buffer_num = 0;
	mov	dptr,#_create_initial_buffers_buff_65537_63
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	buffer.c:219: buff1.buffer_num = 1;
	mov	dptr,#_create_initial_buffers_buff1_65537_63
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	buffer.c:220: buff1.buffer_end = buff1.buffer_start + buff_size;
	mov	dptr,#(_create_initial_buffers_buff1_65537_63 + 0x0002)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	add	a,r3
	mov	r3,a
	mov	a,r7
	addc	a,r4
	mov	r4,a
	mov	dptr,#(_create_initial_buffers_buff1_65537_63 + 0x0005)
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	buffer.c:221: buff.buffer_end = buff.buffer_start + buff_size;
	mov	dptr,#(_create_initial_buffers_buff_65537_63 + 0x0002)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	add	a,r3
	mov	r6,a
	mov	a,r7
	addc	a,r4
	mov	r7,a
	mov	ar2,r5
	mov	dptr,#(_create_initial_buffers_buff_65537_63 + 0x0005)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
;	buffer.c:222: buff.num_char = 0;
	mov	dptr,#(_create_initial_buffers_buff_65537_63 + 0x000a)
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	buffer.c:223: buff1.num_char = 0;
	mov	dptr,#(_create_initial_buffers_buff1_65537_63 + 0x000a)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	buffer.c:225: buffers_array[0] = buff;
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_create_initial_buffers_buff_65537_63
	movx	@dptr,a
	mov	a,#(_create_initial_buffers_buff_65537_63 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x0c
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_buffers_array
	mov	b,#0x00
	lcall	___memcpy
;	buffer.c:226: buffers_array[1] = buff1;
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_create_initial_buffers_buff1_65537_63
	movx	@dptr,a
	mov	a,#(_create_initial_buffers_buff1_65537_63 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x0c
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffers_array + 0x000c)
	mov	b,#0x00
;	buffer.c:230: goto get_buff;
;	buffer.c:231: }
	ljmp	___memcpy
;------------------------------------------------------------
;Allocation info for local variables in function 'buffer_input_loop'
;------------------------------------------------------------
;rec                       Allocated with name '_buffer_input_loop_rec_65537_68'
;------------------------------------------------------------
;	buffer.c:239: void buffer_input_loop()
;	-----------------------------------------
;	 function buffer_input_loop
;	-----------------------------------------
_buffer_input_loop:
;	buffer.c:241: print_heap_menu();
	lcall	_print_heap_menu
;	buffer.c:243: while (1)
00126$:
;	buffer.c:245: rec = getchar();
	lcall	_getchar
	mov	r6,dpl
	mov	r7,dph
;	buffer.c:246: if (rec > 0x60 && rec < 0x7B)
	clr	c
	mov	a,#0x60
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00170$
	ljmp	00122$
00170$:
	clr	c
	mov	a,r6
	subb	a,#0x7b
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00171$
	ljmp	00122$
00171$:
;	buffer.c:250: if (buffers_array[0].num_char < buffers_array[0].buff_size)
	mov	dptr,#(_buffers_array + 0x000a)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#(_buffers_array + 0x0008)
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
	jnc	00102$
;	buffer.c:252: *(buffers_array[0].buffer_start + buffers_array[0].num_char) = rec;
	mov	dptr,#(_buffers_array + 0x0002)
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
	mov	ar5,r6
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,r5
	lcall	__gptrput
;	buffer.c:253: buffers_array[0].num_char += 1;
	mov	dptr,#(_buffers_array + 0x000a)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	r4
	cjne	r4,#0x00,00173$
	inc	r5
00173$:
	mov	dptr,#(_buffers_array + 0x000a)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
00102$:
;	buffer.c:255: program_stats.all_char_count += 1;
	mov	dptr,#(_program_stats + 0x0004)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	r4
	cjne	r4,#0x00,00174$
	inc	r5
00174$:
	mov	dptr,#(_program_stats + 0x0004)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	buffer.c:256: program_stats.storage_char_count += 1;
	mov	dptr,#(_program_stats + 0x0006)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	r4
	cjne	r4,#0x00,00175$
	inc	r5
00175$:
	mov	dptr,#(_program_stats + 0x0006)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	ljmp	00126$
00122$:
;	buffer.c:258: else if (rec == 0x3F)
	cjne	r6,#0x3f,00119$
	cjne	r7,#0x00,00119$
;	buffer.c:261: print_heap_stats();
	lcall	_print_heap_stats
;	buffer.c:262: print_all_buffers();
	lcall	_print_all_buffers
;	buffer.c:263: dump_buff_zero_ascii();
	lcall	_dump_buff_zero_ascii
;	buffer.c:264: program_stats.all_char_count = 0;
	mov	dptr,#(_program_stats + 0x0004)
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	buffer.c:265: program_stats.storage_char_count = 0;
	mov	dptr,#(_program_stats + 0x0006)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	buffer.c:266: print_heap_menu();
	lcall	_print_heap_menu
	ljmp	00126$
00119$:
;	buffer.c:268: else if (rec == 0x3D)
	cjne	r6,#0x3d,00116$
	cjne	r7,#0x00,00116$
;	buffer.c:271: dump_buff_zero_hex();
	lcall	_dump_buff_zero_hex
;	buffer.c:272: print_heap_menu();
	lcall	_print_heap_menu
	ljmp	00126$
00116$:
;	buffer.c:274: else if (rec == 0x40)
	cjne	r6,#0x40,00113$
	cjne	r7,#0x00,00113$
;	buffer.c:277: at_clear_all_buffers();
	lcall	_at_clear_all_buffers
;	buffer.c:278: print_heap_menu();
	lcall	_print_heap_menu
	ljmp	00126$
00113$:
;	buffer.c:280: else if (rec == 0x2B)
	cjne	r6,#0x2b,00110$
	cjne	r7,#0x00,00110$
;	buffer.c:283: create_new_buffer();
	lcall	_create_new_buffer
;	buffer.c:284: print_heap_menu();
	lcall	_print_heap_menu
	ljmp	00126$
00110$:
;	buffer.c:286: else if (rec == 0x2D)
	cjne	r6,#0x2d,00107$
	cjne	r7,#0x00,00107$
;	buffer.c:289: delete_buffer();
	lcall	_delete_buffer
;	buffer.c:290: print_heap_menu();
	lcall	_print_heap_menu
	ljmp	00126$
00107$:
;	buffer.c:292: else if (rec == 0x4D)
	cjne	r6,#0x4d,00104$
	cjne	r7,#0x00,00104$
;	buffer.c:294: main_menu();
	lcall	_main_menu
	ljmp	00126$
00104$:
;	buffer.c:298: program_stats.all_char_count += 1;
	mov	dptr,#(_program_stats + 0x0004)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r6
	cjne	r6,#0x00,00188$
	inc	r7
00188$:
	mov	dptr,#(_program_stats + 0x0004)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	buffer.c:301: }
	ljmp	00126$
;------------------------------------------------------------
;Allocation info for local variables in function 'dump_buff_zero_ascii'
;------------------------------------------------------------
;j                         Allocated with name '_dump_buff_zero_ascii_j_65536_79'
;i                         Allocated with name '_dump_buff_zero_ascii_i_196608_81'
;------------------------------------------------------------
;	buffer.c:309: void dump_buff_zero_ascii()
;	-----------------------------------------
;	 function dump_buff_zero_ascii
;	-----------------------------------------
_dump_buff_zero_ascii:
;	buffer.c:311: int j = 64;
	mov	dptr,#_dump_buff_zero_ascii_j_65536_79
	mov	a,#0x40
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	buffer.c:312: if (buffers_array[0].num_char > 0)
	mov	dptr,#(_buffers_array + 0x000a)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00135$
	ljmp	00107$
00135$:
;	buffer.c:314: printf("\n\n\r***********Buffer-0-Contents*********** \n\r");
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
;	buffer.c:315: for (int i = 0; i < buffers_array[0].num_char; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00110$:
	mov	dptr,#(_buffers_array + 0x000a)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r6
	subb	a,r4
	mov	a,r7
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jc	00136$
	ljmp	00105$
00136$:
;	buffer.c:317: if (j == 64)
	mov	dptr,#_dump_buff_zero_ascii_j_65536_79
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	cjne	r4,#0x40,00102$
	cjne	r5,#0x00,00102$
;	buffer.c:319: printf("\n\r");
	push	ar7
	push	ar6
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
	pop	ar6
	pop	ar7
00102$:
;	buffer.c:321: putchar(*(buffers_array[0].buffer_start + i));
	mov	dptr,#(_buffers_array + 0x0002)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	add	a,r3
	mov	r3,a
	mov	a,r7
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	mov	r5,#0x00
	mov	dpl,r3
	mov	dph,r5
	push	ar7
	push	ar6
	lcall	_putchar
	pop	ar6
	pop	ar7
;	buffer.c:322: j--;
	mov	dptr,#_dump_buff_zero_ascii_j_65536_79
	movx	a,@dptr
	add	a,#0xff
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xff
	mov	r5,a
	mov	dptr,#_dump_buff_zero_ascii_j_65536_79
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	buffer.c:323: if (j == 0)
	mov	dptr,#_dump_buff_zero_ascii_j_65536_79
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00111$
;	buffer.c:324: j = 64;
	mov	dptr,#_dump_buff_zero_ascii_j_65536_79
	mov	a,#0x40
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
00111$:
;	buffer.c:315: for (int i = 0; i < buffers_array[0].num_char; i++)
	inc	r6
	cjne	r6,#0x00,00140$
	inc	r7
00140$:
	ljmp	00110$
00105$:
;	buffer.c:326: buffers_array[0].num_char = 0;
	mov	dptr,#(_buffers_array + 0x000a)
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	buffer.c:327: printf("\n\n\r");
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
	ret
00107$:
;	buffer.c:331: printf("Buffer0 is Empty....\n\r");
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
;	buffer.c:333: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dump_buff_zero_hex'
;------------------------------------------------------------
;j                         Allocated with name '_dump_buff_zero_hex_j_131073_87'
;i                         Allocated with name '_dump_buff_zero_hex_i_196609_88'
;------------------------------------------------------------
;	buffer.c:340: void dump_buff_zero_hex()
;	-----------------------------------------
;	 function dump_buff_zero_hex
;	-----------------------------------------
_dump_buff_zero_hex:
;	buffer.c:342: if (buffers_array[0].num_char > 0)
	mov	dptr,#(_buffers_array + 0x000a)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00135$
	ljmp	00107$
00135$:
;	buffer.c:344: printf("\n\r-------------------------HEXDUMP--------------------------------");
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
;	buffer.c:345: printf("\n\r    ADDR: +0 +1 +2 +3 +4 +5 +6 +7 +8 +9 +A +B +C +D +E +F \n\r");
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
;	buffer.c:346: int j = 16;
	mov	dptr,#_dump_buff_zero_hex_j_131073_87
	mov	a,#0x10
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	buffer.c:348: for (int i = 0; i < buffers_array[0].num_char; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00110$:
	mov	dptr,#(_buffers_array + 0x000a)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r6
	subb	a,r4
	mov	a,r7
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jc	00136$
	ljmp	00105$
00136$:
;	buffer.c:350: if (j == 16)
	mov	dptr,#_dump_buff_zero_hex_j_131073_87
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	cjne	r4,#0x10,00102$
	cjne	r5,#0x00,00102$
;	buffer.c:352: printf("\n\r%p: ", (buffers_array[0].buffer_start + i));
	mov	dptr,#(_buffers_array + 0x0002)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	add	a,r3
	mov	r3,a
	mov	a,r7
	addc	a,r4
	mov	r4,a
	push	ar7
	push	ar6
	push	ar3
	push	ar4
	push	ar5
	mov	a,#___str_25
	push	acc
	mov	a,#(___str_25 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar6
	pop	ar7
00102$:
;	buffer.c:354: printf("%x ", *(buffers_array[0].buffer_start + i));
	mov	dptr,#(_buffers_array + 0x0002)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	add	a,r3
	mov	r3,a
	mov	a,r7
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	mov	r5,#0x00
	push	ar7
	push	ar6
	push	ar3
	push	ar5
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
	pop	ar6
	pop	ar7
;	buffer.c:355: j--;
	mov	dptr,#_dump_buff_zero_hex_j_131073_87
	movx	a,@dptr
	add	a,#0xff
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xff
	mov	r5,a
	mov	dptr,#_dump_buff_zero_hex_j_131073_87
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	buffer.c:356: if (j == 0)
	mov	dptr,#_dump_buff_zero_hex_j_131073_87
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00111$
;	buffer.c:357: j = 16;
	mov	dptr,#_dump_buff_zero_hex_j_131073_87
	mov	a,#0x10
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
00111$:
;	buffer.c:348: for (int i = 0; i < buffers_array[0].num_char; i++)
	inc	r6
	cjne	r6,#0x00,00140$
	inc	r7
00140$:
	ljmp	00110$
00105$:
;	buffer.c:359: printf("\n\n\r");
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
	ret
00107$:
;	buffer.c:363: printf("Buffer 0 is empty...\n\r");
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
;	buffer.c:365: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print_heap_stats'
;------------------------------------------------------------
;	buffer.c:372: void print_heap_stats()
;	-----------------------------------------
;	 function print_heap_stats
;	-----------------------------------------
_print_heap_stats:
;	buffer.c:374: printf("\n\r****************HEAP*STATS*************\n\r");
	mov	a,#___str_28
	push	acc
	mov	a,#(___str_28 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	buffer.c:375: printf("Total Heap Size: %d \n\r", program_stats.total_heap_size);
	mov	dptr,#_program_stats
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar6
	push	ar7
	mov	a,#___str_29
	push	acc
	mov	a,#(___str_29 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	buffer.c:376: printf("Allocated Heap Size: %d \n\r", program_stats.allocated_heap);
	mov	dptr,#(_program_stats + 0x0002)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar6
	push	ar7
	mov	a,#___str_30
	push	acc
	mov	a,#(___str_30 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	buffer.c:377: printf("All Chars: %d \n\r", program_stats.all_char_count);
	mov	dptr,#(_program_stats + 0x0004)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar6
	push	ar7
	mov	a,#___str_31
	push	acc
	mov	a,#(___str_31 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	buffer.c:378: printf("Storage Chars: %d \n\r", program_stats.storage_char_count);
	mov	dptr,#(_program_stats + 0x0006)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar6
	push	ar7
	mov	a,#___str_32
	push	acc
	mov	a,#(___str_32 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	buffer.c:379: printf("Total Buffers: %d \n\r", program_stats.total_buffers);
	mov	dptr,#(_program_stats + 0x0008)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar6
	push	ar7
	mov	a,#___str_33
	push	acc
	mov	a,#(___str_33 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	buffer.c:380: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print_all_buffers'
;------------------------------------------------------------
;i                         Allocated with name '_print_all_buffers_i_131072_94'
;------------------------------------------------------------
;	buffer.c:387: void print_all_buffers()
;	-----------------------------------------
;	 function print_all_buffers
;	-----------------------------------------
_print_all_buffers:
;	buffer.c:389: for (int i = 0; i < program_stats.total_buffers; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00103$:
	mov	dptr,#(_program_stats + 0x0008)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r6
	subb	a,r4
	mov	a,r7
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jc	00116$
	ljmp	00101$
00116$:
;	buffer.c:391: printf("****************BUFFER*%d***************\n\r", i);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_34
	push	acc
	mov	a,#(___str_34 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
;	buffer.c:392: printf("Buffer#: %d \n\r", buffers_array[i].buffer_num);
	mov	dptr,#__mulint_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x000c
	push	ar7
	push	ar6
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	mov	a,r4
	add	a,#_buffers_array
	mov	dpl,a
	mov	a,r5
	addc	a,#(_buffers_array >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	push	ar5
	push	ar4
	push	ar2
	push	ar3
	mov	a,#___str_35
	push	acc
	mov	a,#(___str_35 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar4
	pop	ar5
;	buffer.c:393: printf("BufferStart: %p \n\r", buffers_array[i].buffer_start);
	mov	a,r4
	add	a,#_buffers_array
	mov	r4,a
	mov	a,r5
	addc	a,#(_buffers_array >> 8)
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	push	ar5
	push	ar4
	push	ar1
	push	ar2
	push	ar3
	mov	a,#___str_36
	push	acc
	mov	a,#(___str_36 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar4
	pop	ar5
;	buffer.c:394: printf("BufferEnd: %p \n\r", buffers_array[i].buffer_end);
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	push	ar5
	push	ar4
	push	ar1
	push	ar2
	push	ar3
	mov	a,#___str_37
	push	acc
	mov	a,#(___str_37 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar4
	pop	ar5
;	buffer.c:395: printf("BufferSize: %d \n\r", buffers_array[i].buff_size);
	mov	a,#0x08
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	push	ar5
	push	ar4
	push	ar2
	push	ar3
	mov	a,#___str_38
	push	acc
	mov	a,#(___str_38 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar4
	pop	ar5
;	buffer.c:396: printf("TotalUsed: %d \n\r", buffers_array[i].num_char);
	mov	a,#0x0a
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	push	ar4
	push	ar5
	mov	a,#___str_39
	push	acc
	mov	a,#(___str_39 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
;	buffer.c:389: for (int i = 0; i < program_stats.total_buffers; i++)
	inc	r6
	cjne	r6,#0x00,00117$
	inc	r7
00117$:
	ljmp	00103$
00101$:
;	buffer.c:398: printf("***************************************\n\r");
	mov	a,#___str_40
	push	acc
	mov	a,#(___str_40 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	buffer.c:399: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "Buffer %d Freed ...."
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "Let's begin again.."
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.db 0x0a
	.db 0x0d
	.ascii "Give Valid Buffer Number to delete(1-%d) in 3 digits"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "Buffer %d Successfully Deleted.. "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.db 0x0a
	.db 0x0a
	.db 0x0d
	.ascii "^^^^^^^^^^^^^^^^^^^-HEAP-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ "
	.db 0x0a
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "You can enter characters or use commands from below "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "'?' -> Show heap status, dump & clear Buffer 0 "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "'+' -> Add a new Buffer"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "'-' -> Delete existing Buffer"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "'=' -> Dump Buffer 0 in hex"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "'@' -> Free all Heap & begin again"
	.db 0x0a
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii "'M' -> Go to Main Menu "
	.db 0x0a
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.db 0x0a
	.db 0x0d
	.ascii "Give Valid Buffer Size(030-300):"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.ascii "Failed, give smaller buffer"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.db 0x0a
	.db 0x0a
	.db 0x0d
	.ascii "####SUCCESS, BUFFER Created####"
	.db 0x0a
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.ascii "No Heap Memory Left, Delete some buffers..."
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.db 0x0a
	.db 0x0d
	.ascii "Give Valid Initial Buffer Size(0048-4800):"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.db 0x0a
	.db 0x0d
	.ascii "####FAIL, Please give a smaller buffer size####"
	.db 0x0a
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.db 0x0a
	.db 0x0a
	.db 0x0d
	.ascii "####SUCCESS, INITIAL BUFFERS Created####"
	.db 0x0a
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.db 0x0a
	.db 0x0a
	.db 0x0d
	.ascii "***********Buffer-0-Contents*********** "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.db 0x0a
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.ascii "Buffer0 is Empty...."
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
	.ascii "    ADDR: +0 +1 +2 +3 +4 +5 +6 +7 +8 +9 +A +B +C +D +E +F "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_25:
	.db 0x0a
	.db 0x0d
	.ascii "%p: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_26:
	.ascii "%x "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_27:
	.ascii "Buffer 0 is empty..."
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_28:
	.db 0x0a
	.db 0x0d
	.ascii "****************HEAP*STATS*************"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_29:
	.ascii "Total Heap Size: %d "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_30:
	.ascii "Allocated Heap Size: %d "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_31:
	.ascii "All Chars: %d "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_32:
	.ascii "Storage Chars: %d "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_33:
	.ascii "Total Buffers: %d "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_34:
	.ascii "****************BUFFER*%d***************"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_35:
	.ascii "Buffer#: %d "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_36:
	.ascii "BufferStart: %p "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_37:
	.ascii "BufferEnd: %p "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_38:
	.ascii "BufferSize: %d "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_39:
	.ascii "TotalUsed: %d "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_40:
	.ascii "***************************************"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
