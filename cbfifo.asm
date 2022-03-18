;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module cbfifo
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _cbfifo_capacity
	.globl _cbfifo_length
	.globl _cbfifo_dequeue
	.globl _cbfifo_enqueue
	.globl _end_index
	.globl _write_index
	.globl _read_index
	.globl _cbfifo_dequeue_PARM_2
	.globl _cbfifo_enqueue_PARM_2
	.globl _cb_buffer
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
	.area	OSEG    (OVR,DATA)
_cbfifo_dequeue_sloc0_1_0:
	.ds 2
_cbfifo_dequeue_sloc1_1_0:
	.ds 2
_cbfifo_dequeue_sloc2_1_0:
	.ds 2
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
_cb_buffer::
	.ds 128
_cbfifo_enqueue_PARM_2:
	.ds 2
_cbfifo_enqueue_buf_65536_66:
	.ds 3
_cbfifo_dequeue_PARM_2:
	.ds 2
_cbfifo_dequeue_buf_65536_71:
	.ds 3
_cbfifo_dequeue_i_65537_73:
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_read_index::
	.ds 1
_write_index::
	.ds 1
_end_index::
	.ds 1
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
;Allocation info for local variables in function 'cbfifo_enqueue'
;------------------------------------------------------------
;nbyte                     Allocated with name '_cbfifo_enqueue_PARM_2'
;buf                       Allocated with name '_cbfifo_enqueue_buf_65536_66'
;data                      Allocated with name '_cbfifo_enqueue_data_65537_68'
;i                         Allocated with name '_cbfifo_enqueue_i_65537_68'
;------------------------------------------------------------
;	cbfifo.c:15: size_t cbfifo_enqueue(void *buf, size_t nbyte)
;	-----------------------------------------
;	 function cbfifo_enqueue
;	-----------------------------------------
_cbfifo_enqueue:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_cbfifo_enqueue_buf_65536_66
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	cbfifo.c:18: if (buf == NULL)
	mov	dptr,#_cbfifo_enqueue_buf_65536_66
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_cbfifo_enqueue_buf_65536_66
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00102$
;	cbfifo.c:19: return -1;
	mov	dptr,#0xffff
	ret
00102$:
;	cbfifo.c:21: uint8_t *data = buf;
;	cbfifo.c:24: for (i = 0; i < nbyte && write_index < end_index; i++)
	mov	dptr,#_cbfifo_enqueue_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	r1,#0x00
	mov	r2,#0x00
00106$:
	push	ar5
	push	ar6
	push	ar7
	mov	ar0,r1
	mov	ar7,r2
	clr	c
	mov	a,r0
	subb	a,r3
	mov	a,r7
	subb	a,r4
	pop	ar7
	pop	ar6
	pop	ar5
	jnc	00103$
	push	ar3
	push	ar4
	mov	dptr,#_write_index
	movx	a,@dptr
	mov	r0,a
	mov	dptr,#_end_index
	movx	a,@dptr
	mov	r4,a
	clr	c
	mov	a,r0
	subb	a,r4
	pop	ar4
	pop	ar3
	jnc	00103$
;	cbfifo.c:26: cb_buffer[write_index++] = *data++;
	push	ar3
	push	ar4
	mov	dptr,#_write_index
	mov	a,r0
	inc	a
	movx	@dptr,a
	mov	a,r0
	add	a,#_cb_buffer
	mov	r0,a
	clr	a
	addc	a,#(_cb_buffer >> 8)
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	dpl,r0
	mov	dph,r4
	mov	a,r3
	movx	@dptr,a
;	cbfifo.c:24: for (i = 0; i < nbyte && write_index < end_index; i++)
	inc	r1
	cjne	r1,#0x00,00130$
	inc	r2
00130$:
	pop	ar4
	pop	ar3
	sjmp	00106$
00103$:
;	cbfifo.c:29: return (size_t)i;
	mov	dpl,r1
	mov	dph,r2
;	cbfifo.c:30: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cbfifo_dequeue'
;------------------------------------------------------------
;nbyte                     Allocated with name '_cbfifo_dequeue_PARM_2'
;buf                       Allocated with name '_cbfifo_dequeue_buf_65536_71'
;data                      Allocated with name '_cbfifo_dequeue_data_65537_73'
;i                         Allocated with name '_cbfifo_dequeue_i_65537_73'
;temp_write_index          Allocated with name '_cbfifo_dequeue_temp_write_index_131073_77'
;j                         Allocated with name '_cbfifo_dequeue_j_196609_78'
;sloc0                     Allocated with name '_cbfifo_dequeue_sloc0_1_0'
;sloc1                     Allocated with name '_cbfifo_dequeue_sloc1_1_0'
;sloc2                     Allocated with name '_cbfifo_dequeue_sloc2_1_0'
;------------------------------------------------------------
;	cbfifo.c:32: size_t cbfifo_dequeue(void *buf, size_t nbyte)
;	-----------------------------------------
;	 function cbfifo_dequeue
;	-----------------------------------------
_cbfifo_dequeue:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_cbfifo_dequeue_buf_65536_71
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	cbfifo.c:35: if (buf == NULL)
	mov	dptr,#_cbfifo_dequeue_buf_65536_71
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_cbfifo_dequeue_buf_65536_71
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00102$
;	cbfifo.c:36: return -1;
	mov	dptr,#0xffff
	ret
00102$:
;	cbfifo.c:38: uint8_t *data = buf;
;	cbfifo.c:42: for (i = 0; i < nbyte; i++)
	mov	dptr,#_cbfifo_dequeue_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	r1,#0x00
	mov	r2,#0x00
00114$:
	push	ar5
	push	ar6
	push	ar7
	mov	ar0,r1
	mov	ar7,r2
	clr	c
	mov	a,r0
	subb	a,r3
	mov	a,r7
	subb	a,r4
	pop	ar7
	pop	ar6
	pop	ar5
	jnc	00129$
;	cbfifo.c:45: if (read_index == write_index)
	push	ar3
	push	ar4
	mov	dptr,#_read_index
	movx	a,@dptr
	mov	r0,a
	mov	dptr,#_write_index
	movx	a,@dptr
	mov	r4,a
	mov	a,r0
	cjne	a,ar4,00157$
	pop	ar4
	pop	ar3
	sjmp	00129$
00157$:
	pop	ar4
	pop	ar3
;	cbfifo.c:50: *data++ = cb_buffer[i];
	mov	a,r1
	add	a,#_cb_buffer
	mov	dpl,a
	mov	a,r2
	addc	a,#(_cb_buffer >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
;	cbfifo.c:52: read_index++;
	mov	dptr,#_read_index
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	cbfifo.c:42: for (i = 0; i < nbyte; i++)
	inc	r1
;	cbfifo.c:56: next_step:
	cjne	r1,#0x00,00114$
	inc	r2
	sjmp	00114$
00129$:
	mov	dptr,#_cbfifo_dequeue_i_65537_73
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
;	cbfifo.c:57: if (write_index > read_index)
	mov	dptr,#_write_index
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_read_index
	movx	a,@dptr
	mov	r6,a
	clr	c
	subb	a,r7
	jnc	00111$
;	cbfifo.c:59: size_t temp_write_index = write_index;
	mov	_cbfifo_dequeue_sloc1_1_0,r7
	mov	(_cbfifo_dequeue_sloc1_1_0 + 1),#0x00
;	cbfifo.c:60: for (int j = 0; j < temp_write_index - read_index; j++)
	mov	r2,#0x00
	mov	r3,#0x00
00117$:
	mov	dptr,#_read_index
	movx	a,@dptr
	mov	r1,a
	mov	_cbfifo_dequeue_sloc0_1_0,r1
	mov	(_cbfifo_dequeue_sloc0_1_0 + 1),#0x00
	mov	r0,_cbfifo_dequeue_sloc0_1_0
	mov	r5,(_cbfifo_dequeue_sloc0_1_0 + 1)
	mov	a,_cbfifo_dequeue_sloc1_1_0
	clr	c
	subb	a,r0
	mov	_cbfifo_dequeue_sloc2_1_0,a
	mov	a,(_cbfifo_dequeue_sloc1_1_0 + 1)
	subb	a,r5
	mov	(_cbfifo_dequeue_sloc2_1_0 + 1),a
	mov	ar4,r2
	mov	ar5,r3
	clr	c
	mov	a,r4
	subb	a,_cbfifo_dequeue_sloc2_1_0
	mov	a,r5
	subb	a,(_cbfifo_dequeue_sloc2_1_0 + 1)
	jnc	00107$
;	cbfifo.c:62: cb_buffer[j] = cb_buffer[j + read_index];
	mov	a,r2
	add	a,#_cb_buffer
	mov	_cbfifo_dequeue_sloc2_1_0,a
	mov	a,r3
	addc	a,#(_cb_buffer >> 8)
	mov	(_cbfifo_dequeue_sloc2_1_0 + 1),a
	mov	a,_cbfifo_dequeue_sloc0_1_0
	add	a,r2
	mov	r0,a
	mov	a,(_cbfifo_dequeue_sloc0_1_0 + 1)
	addc	a,r3
	mov	r5,a
	mov	a,r0
	add	a,#_cb_buffer
	mov	dpl,a
	mov	a,r5
	addc	a,#(_cb_buffer >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,_cbfifo_dequeue_sloc2_1_0
	mov	dph,(_cbfifo_dequeue_sloc2_1_0 + 1)
	movx	@dptr,a
;	cbfifo.c:60: for (int j = 0; j < temp_write_index - read_index; j++)
	inc	r2
	cjne	r2,#0x00,00117$
	inc	r3
	sjmp	00117$
00107$:
;	cbfifo.c:65: write_index = write_index - read_index;
	mov	dptr,#_write_index
	movx	a,@dptr
	clr	c
	subb	a,r1
	movx	@dptr,a
	sjmp	00112$
00111$:
;	cbfifo.c:68: else if (write_index == read_index)
	mov	a,r7
	cjne	a,ar6,00112$
;	cbfifo.c:70: write_index = 0;
	mov	dptr,#_write_index
	clr	a
	movx	@dptr,a
00112$:
;	cbfifo.c:73: read_index = 0;
	mov	dptr,#_read_index
	clr	a
	movx	@dptr,a
;	cbfifo.c:75: return (size_t)i;
	mov	dptr,#_cbfifo_dequeue_i_65537_73
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
;	cbfifo.c:76: }
	mov	dpl,r6
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cbfifo_length'
;------------------------------------------------------------
;	cbfifo.c:78: size_t cbfifo_length()
;	-----------------------------------------
;	 function cbfifo_length
;	-----------------------------------------
_cbfifo_length:
;	cbfifo.c:81: return (size_t)write_index;
	mov	dptr,#_write_index
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
;	cbfifo.c:82: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cbfifo_capacity'
;------------------------------------------------------------
;	cbfifo.c:84: size_t cbfifo_capacity()
;	-----------------------------------------
;	 function cbfifo_capacity
;	-----------------------------------------
_cbfifo_capacity:
;	cbfifo.c:87: return (size_t)128;
	mov	dptr,#0x0080
;	cbfifo.c:88: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit__read_index:
	.db #0x00	; 0
__xinit__write_index:
	.db #0x00	; 0
__xinit__end_index:
	.db #0x80	; 128
	.area CABS    (ABS,CODE)
