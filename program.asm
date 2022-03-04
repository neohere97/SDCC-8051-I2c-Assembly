;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module program
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __sdcc_external_startup
	.globl _main
	.globl _printf
	.globl _free
	.globl _malloc
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD0
	.globl _TXD
	.globl _RXD0
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _BREG_F7
	.globl _BREG_F6
	.globl _BREG_F5
	.globl _BREG_F4
	.globl _BREG_F3
	.globl _BREG_F2
	.globl _BREG_F1
	.globl _BREG_F0
	.globl _P5_7
	.globl _P5_6
	.globl _P5_5
	.globl _P5_4
	.globl _P5_3
	.globl _P5_2
	.globl _P5_1
	.globl _P5_0
	.globl _P4_7
	.globl _P4_6
	.globl _P4_5
	.globl _P4_4
	.globl _P4_3
	.globl _P4_2
	.globl _P4_1
	.globl _P4_0
	.globl _PX0L
	.globl _PT0L
	.globl _PX1L
	.globl _PT1L
	.globl _PSL
	.globl _PT2L
	.globl _PPCL
	.globl _EC
	.globl _CCF0
	.globl _CCF1
	.globl _CCF2
	.globl _CCF3
	.globl _CCF4
	.globl _CR
	.globl _CF
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _ET2
	.globl __AUXR
	.globl _TMOD
	.globl _TL1
	.globl _TL0
	.globl _TH1
	.globl _TH0
	.globl _TCON
	.globl _SP
	.globl _SCON
	.globl _SBUF0
	.globl _SBUF
	.globl _PSW
	.globl _PCON
	.globl _P3
	.globl _P2
	.globl _P1
	.globl _P0
	.globl _IP
	.globl _IE
	.globl _DP0L
	.globl _DPL
	.globl _DP0H
	.globl _DPH
	.globl _B
	.globl _ACC
	.globl _EECON
	.globl _KBF
	.globl _KBE
	.globl _KBLS
	.globl _BRL
	.globl _BDRCON
	.globl _T2MOD
	.globl _SPDAT
	.globl _SPSTA
	.globl _SPCON
	.globl _SADEN
	.globl _SADDR
	.globl _WDTPRG
	.globl _WDTRST
	.globl _P5
	.globl _P4
	.globl _IPH1
	.globl _IPL1
	.globl _IPH0
	.globl _IPL0
	.globl _IEN1
	.globl _IEN0
	.globl _CMOD
	.globl _CL
	.globl _CH
	.globl _CCON
	.globl _CCAPM4
	.globl _CCAPM3
	.globl _CCAPM2
	.globl _CCAPM1
	.globl _CCAPM0
	.globl _CCAP4L
	.globl _CCAP3L
	.globl _CCAP2L
	.globl _CCAP1L
	.globl _CCAP0L
	.globl _CCAP4H
	.globl _CCAP3H
	.globl _CCAP2H
	.globl _CCAP1H
	.globl _CCAP0H
	.globl _CKCON1
	.globl _CKCON0
	.globl _CKRL
	.globl _AUXR1
	.globl _AUXR
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _debug_loc
	.globl _buffers_array
	.globl _program_stats
	.globl _user_interface
	.globl _at_clear_all_buffers
	.globl _delete_buffer
	.globl _print_menu
	.globl _create_new_buffer
	.globl _create_initial_buffers
	.globl _enter_chars
	.globl _dump_buff_zero_ascii
	.globl _dump_buff_zero_hex
	.globl _print_heap_stats
	.globl _print_all_buffers
	.globl _get_number
	.globl _get_num_helper
	.globl _putchar
	.globl _getchar
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_AUXR	=	0x008e
_AUXR1	=	0x00a2
_CKRL	=	0x0097
_CKCON0	=	0x008f
_CKCON1	=	0x00af
_CCAP0H	=	0x00fa
_CCAP1H	=	0x00fb
_CCAP2H	=	0x00fc
_CCAP3H	=	0x00fd
_CCAP4H	=	0x00fe
_CCAP0L	=	0x00ea
_CCAP1L	=	0x00eb
_CCAP2L	=	0x00ec
_CCAP3L	=	0x00ed
_CCAP4L	=	0x00ee
_CCAPM0	=	0x00da
_CCAPM1	=	0x00db
_CCAPM2	=	0x00dc
_CCAPM3	=	0x00dd
_CCAPM4	=	0x00de
_CCON	=	0x00d8
_CH	=	0x00f9
_CL	=	0x00e9
_CMOD	=	0x00d9
_IEN0	=	0x00a8
_IEN1	=	0x00b1
_IPL0	=	0x00b8
_IPH0	=	0x00b7
_IPL1	=	0x00b2
_IPH1	=	0x00b3
_P4	=	0x00c0
_P5	=	0x00e8
_WDTRST	=	0x00a6
_WDTPRG	=	0x00a7
_SADDR	=	0x00a9
_SADEN	=	0x00b9
_SPCON	=	0x00c3
_SPSTA	=	0x00c4
_SPDAT	=	0x00c5
_T2MOD	=	0x00c9
_BDRCON	=	0x009b
_BRL	=	0x009a
_KBLS	=	0x009c
_KBE	=	0x009d
_KBF	=	0x009e
_EECON	=	0x00d2
_ACC	=	0x00e0
_B	=	0x00f0
_DPH	=	0x0083
_DP0H	=	0x0083
_DPL	=	0x0082
_DP0L	=	0x0082
_IE	=	0x00a8
_IP	=	0x00b8
_P0	=	0x0080
_P1	=	0x0090
_P2	=	0x00a0
_P3	=	0x00b0
_PCON	=	0x0087
_PSW	=	0x00d0
_SBUF	=	0x0099
_SBUF0	=	0x0099
_SCON	=	0x0098
_SP	=	0x0081
_TCON	=	0x0088
_TH0	=	0x008c
_TH1	=	0x008d
_TL0	=	0x008a
_TL1	=	0x008b
_TMOD	=	0x0089
__AUXR	=	0x008e
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_ET2	=	0x00ad
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_CF	=	0x00df
_CR	=	0x00de
_CCF4	=	0x00dc
_CCF3	=	0x00db
_CCF2	=	0x00da
_CCF1	=	0x00d9
_CCF0	=	0x00d8
_EC	=	0x00ae
_PPCL	=	0x00be
_PT2L	=	0x00bd
_PSL	=	0x00bc
_PT1L	=	0x00bb
_PX1L	=	0x00ba
_PT0L	=	0x00b9
_PX0L	=	0x00b8
_P4_0	=	0x00c0
_P4_1	=	0x00c1
_P4_2	=	0x00c2
_P4_3	=	0x00c3
_P4_4	=	0x00c4
_P4_5	=	0x00c5
_P4_6	=	0x00c6
_P4_7	=	0x00c7
_P5_0	=	0x00e8
_P5_1	=	0x00e9
_P5_2	=	0x00ea
_P5_3	=	0x00eb
_P5_4	=	0x00ec
_P5_5	=	0x00ed
_P5_6	=	0x00ee
_P5_7	=	0x00ef
_BREG_F0	=	0x00f0
_BREG_F1	=	0x00f1
_BREG_F2	=	0x00f2
_BREG_F3	=	0x00f3
_BREG_F4	=	0x00f4
_BREG_F5	=	0x00f5
_BREG_F6	=	0x00f6
_BREG_F7	=	0x00f7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_RXD0	=	0x00b0
_TXD	=	0x00b1
_TXD0	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
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
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

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
_debug_loc::
	.ds 2
_create_new_buffer_buff_65536_58:
	.ds 12
_create_initial_buffers_buff_65537_64:
	.ds 12
_create_initial_buffers_buff1_65537_64:
	.ds 12
_dump_buff_zero_ascii_j_65536_79:
	.ds 2
_dump_buff_zero_hex_j_131073_87:
	.ds 2
_get_number_total_chars_65536_96:
	.ds 2
_get_number_num_65536_97:
	.ds 2
_get_num_helper_times_65536_102:
	.ds 2
_get_num_helper_num_65536_103:
	.ds 2
_putchar_c_65536_106:
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
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	program.c:70: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	program.c:72: printf("HELLO! \n\r");
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
;	program.c:73: user_interface();
;	program.c:74: }
	ljmp	_user_interface
;------------------------------------------------------------
;Allocation info for local variables in function 'user_interface'
;------------------------------------------------------------
;	program.c:81: void user_interface()
;	-----------------------------------------
;	 function user_interface
;	-----------------------------------------
_user_interface:
;	program.c:83: create_initial_buffers();
	lcall	_create_initial_buffers
;	program.c:84: print_all_buffers();
	lcall	_print_all_buffers
;	program.c:85: enter_chars();
;	program.c:86: }
	ljmp	_enter_chars
;------------------------------------------------------------
;Allocation info for local variables in function 'at_clear_all_buffers'
;------------------------------------------------------------
;i                         Allocated with name '_at_clear_all_buffers_i_131072_49'
;------------------------------------------------------------
;	program.c:94: void at_clear_all_buffers()
;	-----------------------------------------
;	 function at_clear_all_buffers
;	-----------------------------------------
_at_clear_all_buffers:
;	program.c:96: for (int i = 0; i < program_stats.total_buffers; i++)
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
;	program.c:98: free(buffers_array[i].buffer_start);
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
;	program.c:99: printf("Buffer %d Freed ....\n\r", i);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
;	program.c:96: for (int i = 0; i < program_stats.total_buffers; i++)
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
	sjmp	00103$
00101$:
;	program.c:101: printf("Let's begin again..\n\r");
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
;	program.c:102: user_interface();
;	program.c:103: }
	ljmp	_user_interface
;------------------------------------------------------------
;Allocation info for local variables in function 'delete_buffer'
;------------------------------------------------------------
;sloc0                     Allocated with name '_delete_buffer_sloc0_1_0'
;sloc1                     Allocated with name '_delete_buffer_sloc1_1_0'
;sloc2                     Allocated with name '_delete_buffer_sloc2_1_0'
;buff_number               Allocated with name '_delete_buffer_buff_number_65536_51'
;buff_to_free              Allocated with name '_delete_buffer_buff_to_free_65536_51'
;buffer_freed_size         Allocated with name '_delete_buffer_buffer_freed_size_65536_51'
;i                         Allocated with name '_delete_buffer_i_196608_53'
;------------------------------------------------------------
;	program.c:110: int delete_buffer()
;	-----------------------------------------
;	 function delete_buffer
;	-----------------------------------------
_delete_buffer:
;	program.c:115: get_del_num:
00101$:
;	program.c:116: printf("\n\rGive Valid Buffer Number to delete(1-%d) in 3 digits\n\r", (program_stats.total_buffers - 1));
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
;	program.c:117: buff_number = get_number(3);
	mov	dptr,#0x0003
	lcall	_get_number
	mov	r6,dpl
	mov	r7,dph
;	program.c:119: if (buff_number > 0 && buff_number < program_stats.total_buffers)
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
;	program.c:121: buff_to_free = buffers_array[buff_number].buffer_start;
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
;	program.c:122: buffer_freed_size = buffers_array[buff_number].buff_size;
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
;	program.c:123: for (int i = 0; i < (program_stats.total_buffers - 1); i++)
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
;	program.c:125: if (i >= buff_number)
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
;	program.c:127: buffers_array[i + 1].buffer_num = i;
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
;	program.c:128: buffers_array[i] = buffers_array[i + 1];
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
;	program.c:139: goto get_del_num;
	pop	ar5
	pop	ar4
;	program.c:128: buffers_array[i] = buffers_array[i + 1];
00111$:
;	program.c:123: for (int i = 0; i < (program_stats.total_buffers - 1); i++)
	inc	_delete_buffer_sloc0_1_0
	clr	a
	cjne	a,_delete_buffer_sloc0_1_0,00144$
	inc	(_delete_buffer_sloc0_1_0 + 1)
00144$:
	ljmp	00110$
00104$:
;	program.c:131: program_stats.total_buffers -= 1;
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
;	program.c:132: program_stats.allocated_heap -= buffer_freed_size;
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
;	program.c:133: free(buff_to_free);
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
;	program.c:134: printf("Buffer %d Successfully Deleted.. \n\r", buff_number);
	push	ar6
	push	ar7
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	program.c:135: return 0;
	mov	dptr,#0x0000
;	program.c:139: goto get_del_num;
;	program.c:141: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print_menu'
;------------------------------------------------------------
;	program.c:148: void print_menu()
;	-----------------------------------------
;	 function print_menu
;	-----------------------------------------
_print_menu:
;	program.c:150: printf("\n\n\r^^^^^^^^^^^^^^^^^^^-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ \n\n\r");
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
;	program.c:151: printf("You can enter characters or use commands from below \n\r");
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
;	program.c:152: printf("'?' -> Show heap status, dump & clear Buffer 0 \n\r");
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
;	program.c:153: printf("'+' -> Add a new Buffer\n\r");
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
;	program.c:154: printf("'-' -> Delete existing Buffer\n\r");
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
;	program.c:155: printf("'=' -> Dump Buffer 0 in hex\n\r");
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
;	program.c:156: printf("'@' -> Free all Heap & begin again\n\n\r");    
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
;	program.c:157: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'create_new_buffer'
;------------------------------------------------------------
;buff_size                 Allocated with name '_create_new_buffer_buff_size_65536_58'
;buff                      Allocated with name '_create_new_buffer_buff_65536_58'
;------------------------------------------------------------
;	program.c:165: int create_new_buffer()
;	-----------------------------------------
;	 function create_new_buffer
;	-----------------------------------------
_create_new_buffer:
;	program.c:169: if (program_stats.allocated_heap == program_stats.total_heap_size)
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
;	program.c:172: get_new_buff:
00103$:
;	program.c:173: printf("\n\rGive Valid Buffer Size(030-300):");
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
;	program.c:174: buff_size = get_number(3);
	mov	dptr,#0x0003
	lcall	_get_number
	mov	r6,dpl
	mov	r7,dph
;	program.c:175: if (buff_size >= 30 && buff_size <= 300)
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
;	program.c:177: buff.buffer_start = malloc(buff_size);
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
	mov	dptr,#(_create_new_buffer_buff_65536_58 + 0x0002)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	program.c:178: if (buff.buffer_start == NULL)
	mov	a,r4
	orl	a,r5
	jnz	00105$
;	program.c:180: printf("Failed, give smaller buffer\n\r");
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
;	program.c:184: printf("\n\n\r####SUCCESS, BUFFER Created####\n\n\r");
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
;	program.c:185: program_stats.allocated_heap += buff_size;
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
;	program.c:186: buff.buff_size = buff_size;
	mov	dptr,#(_create_new_buffer_buff_65536_58 + 0x0008)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	program.c:187: buff.buffer_num = program_stats.total_buffers;
	mov	dptr,#(_program_stats + 0x0008)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_create_new_buffer_buff_65536_58
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	program.c:188: buff.buffer_end = buff.buffer_start + buff_size;
	mov	dptr,#(_create_new_buffer_buff_65536_58 + 0x0002)
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
	mov	dptr,#(_create_new_buffer_buff_65536_58 + 0x0005)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
;	program.c:189: buff.num_char = 0;
	mov	dptr,#(_create_new_buffer_buff_65536_58 + 0x000a)
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	program.c:190: buffers_array[program_stats.total_buffers] = buff;
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
	mov	a,#_create_new_buffer_buff_65536_58
	movx	@dptr,a
	mov	a,#(_create_new_buffer_buff_65536_58 >> 8)
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
;	program.c:191: program_stats.total_buffers += 1;
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
;	program.c:193: return 0;
	mov	dptr,#0x0000
;	program.c:199: no_heap_left:
	ret
00111$:
;	program.c:200: printf("No Heap Memory Left, Delete some buffers...\n\r");
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
;	program.c:201: return 0;
	mov	dptr,#0x0000
;	program.c:202: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'create_initial_buffers'
;------------------------------------------------------------
;buff_size                 Allocated with name '_create_initial_buffers_buff_size_65536_63'
;buff                      Allocated with name '_create_initial_buffers_buff_65537_64'
;buff1                     Allocated with name '_create_initial_buffers_buff1_65537_64'
;------------------------------------------------------------
;	program.c:210: void create_initial_buffers()
;	-----------------------------------------
;	 function create_initial_buffers
;	-----------------------------------------
_create_initial_buffers:
;	program.c:214: get_buff:
00101$:
;	program.c:215: printf("\n\rGive Valid Initial Buffer Size(0048-4800):");
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
;	program.c:216: buff_size = get_number(4);
	mov	dptr,#0x0004
	lcall	_get_number
	mov	r6,dpl
	mov	r7,dph
;	program.c:219: if (buff_size >= 48 && buff_size <= 4800)
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
;	program.c:221: buff.buffer_start = malloc(buff_size);
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
	mov	dptr,#(_create_initial_buffers_buff_65537_64 + 0x0002)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	program.c:222: buff1.buffer_start = malloc(buff_size);
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
	mov	dptr,#(_create_initial_buffers_buff1_65537_64 + 0x0002)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	program.c:223: if (buff.buffer_start == NULL || buff1.buffer_start == NULL)
	mov	dptr,#(_create_initial_buffers_buff_65537_64 + 0x0002)
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
	mov	dptr,#(_create_initial_buffers_buff1_65537_64 + 0x0002)
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
;	program.c:225: printf("\n\r####FAIL, Please give a smaller buffer size####\n\n\r");
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
;	program.c:227: if (buff.buffer_start != NULL)
	mov	dptr,#(_create_initial_buffers_buff_65537_64 + 0x0002)
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
;	program.c:228: free(buff.buffer_start);
	mov	dptr,#(_create_initial_buffers_buff_65537_64 + 0x0002)
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
;	program.c:229: if (buff1.buffer_start != NULL)
	mov	dptr,#(_create_initial_buffers_buff1_65537_64 + 0x0002)
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
;	program.c:230: free(buff1.buffer_start);
	mov	dptr,#(_create_initial_buffers_buff1_65537_64 + 0x0002)
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
;	program.c:232: goto get_buff;
	ljmp	00101$
00107$:
;	program.c:236: printf("\n\n\r####SUCCESS, INITIAL BUFFERS Created####\n\n\r");
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
;	program.c:237: program_stats.allocated_heap = 2 * buff_size;
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
;	program.c:238: program_stats.total_heap_size = 4996;
	mov	dptr,#_program_stats
	mov	a,#0x84
	movx	@dptr,a
	mov	a,#0x13
	inc	dptr
	movx	@dptr,a
;	program.c:239: program_stats.total_buffers = 2;
	mov	dptr,#(_program_stats + 0x0008)
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	program.c:241: buff.buff_size = buff_size;
	mov	dptr,#(_create_initial_buffers_buff_65537_64 + 0x0008)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	program.c:242: buff1.buff_size = buff_size;
	mov	dptr,#(_create_initial_buffers_buff1_65537_64 + 0x0008)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	program.c:243: buff.buffer_num = 0;
	mov	dptr,#_create_initial_buffers_buff_65537_64
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	program.c:244: buff1.buffer_num = 1;
	mov	dptr,#_create_initial_buffers_buff1_65537_64
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	program.c:245: buff1.buffer_end = buff1.buffer_start + buff_size;
	mov	dptr,#(_create_initial_buffers_buff1_65537_64 + 0x0002)
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
	mov	dptr,#(_create_initial_buffers_buff1_65537_64 + 0x0005)
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	program.c:246: buff.buffer_end = buff.buffer_start + buff_size;
	mov	dptr,#(_create_initial_buffers_buff_65537_64 + 0x0002)
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
	mov	dptr,#(_create_initial_buffers_buff_65537_64 + 0x0005)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
;	program.c:247: buff.num_char = 0;
	mov	dptr,#(_create_initial_buffers_buff_65537_64 + 0x000a)
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	program.c:248: buff1.num_char = 0;
	mov	dptr,#(_create_initial_buffers_buff1_65537_64 + 0x000a)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	program.c:250: buffers_array[0] = buff;
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_create_initial_buffers_buff_65537_64
	movx	@dptr,a
	mov	a,#(_create_initial_buffers_buff_65537_64 >> 8)
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
;	program.c:251: buffers_array[1] = buff1;
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_create_initial_buffers_buff1_65537_64
	movx	@dptr,a
	mov	a,#(_create_initial_buffers_buff1_65537_64 >> 8)
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
;	program.c:255: goto get_buff;
;	program.c:256: }
	ljmp	___memcpy
;------------------------------------------------------------
;Allocation info for local variables in function 'enter_chars'
;------------------------------------------------------------
;rec                       Allocated with name '_enter_chars_rec_65537_69'
;------------------------------------------------------------
;	program.c:264: void enter_chars()
;	-----------------------------------------
;	 function enter_chars
;	-----------------------------------------
_enter_chars:
;	program.c:266: print_menu();
	lcall	_print_menu
;	program.c:268: while (1)
00123$:
;	program.c:270: rec = getchar();
	lcall	_getchar
	mov	r6,dpl
	mov	r7,dph
;	program.c:271: if (rec > 0x60 && rec < 0x7B)
	clr	c
	mov	a,#0x60
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00163$
	ljmp	00119$
00163$:
	clr	c
	mov	a,r6
	subb	a,#0x7b
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00164$
	ljmp	00119$
00164$:
;	program.c:273: if (buffers_array[0].num_char < buffers_array[0].buff_size)
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
;	program.c:275: *(buffers_array[0].buffer_start + buffers_array[0].num_char) = rec;
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
;	program.c:276: buffers_array[0].num_char += 1;
	mov	dptr,#(_buffers_array + 0x000a)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	r4
	cjne	r4,#0x00,00166$
	inc	r5
00166$:
	mov	dptr,#(_buffers_array + 0x000a)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
00102$:
;	program.c:278: program_stats.all_char_count += 1;
	mov	dptr,#(_program_stats + 0x0004)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	r4
	cjne	r4,#0x00,00167$
	inc	r5
00167$:
	mov	dptr,#(_program_stats + 0x0004)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	program.c:279: program_stats.storage_char_count += 1;
	mov	dptr,#(_program_stats + 0x0006)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	r4
	cjne	r4,#0x00,00168$
	inc	r5
00168$:
	mov	dptr,#(_program_stats + 0x0006)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	ljmp	00123$
00119$:
;	program.c:281: else if (rec == 0x3F)
	cjne	r6,#0x3f,00116$
	cjne	r7,#0x00,00116$
;	program.c:283: print_heap_stats();
	lcall	_print_heap_stats
;	program.c:284: print_all_buffers();
	lcall	_print_all_buffers
;	program.c:285: dump_buff_zero_ascii();
	lcall	_dump_buff_zero_ascii
;	program.c:286: program_stats.all_char_count = 0;
	mov	dptr,#(_program_stats + 0x0004)
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	program.c:287: program_stats.storage_char_count = 0;
	mov	dptr,#(_program_stats + 0x0006)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	program.c:288: print_menu();
	lcall	_print_menu
	ljmp	00123$
00116$:
;	program.c:290: else if (rec == 0x3D)
	cjne	r6,#0x3d,00113$
	cjne	r7,#0x00,00113$
;	program.c:292: dump_buff_zero_hex();
	lcall	_dump_buff_zero_hex
;	program.c:293: print_menu();
	lcall	_print_menu
	ljmp	00123$
00113$:
;	program.c:295: else if (rec == 0x40)
	cjne	r6,#0x40,00110$
	cjne	r7,#0x00,00110$
;	program.c:297: at_clear_all_buffers();
	lcall	_at_clear_all_buffers
;	program.c:298: print_menu();
	lcall	_print_menu
	ljmp	00123$
00110$:
;	program.c:300: else if (rec == 0x2B)
	cjne	r6,#0x2b,00107$
	cjne	r7,#0x00,00107$
;	program.c:302: create_new_buffer();
	lcall	_create_new_buffer
;	program.c:303: print_menu();
	lcall	_print_menu
	ljmp	00123$
00107$:
;	program.c:305: else if (rec == 0x2D)
	cjne	r6,#0x2d,00104$
	cjne	r7,#0x00,00104$
;	program.c:307: delete_buffer();
	lcall	_delete_buffer
;	program.c:308: print_menu();
	lcall	_print_menu
	ljmp	00123$
00104$:
;	program.c:312: program_stats.all_char_count += 1;
	mov	dptr,#(_program_stats + 0x0004)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r6
	cjne	r6,#0x00,00179$
	inc	r7
00179$:
	mov	dptr,#(_program_stats + 0x0004)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	program.c:315: }
	ljmp	00123$
;------------------------------------------------------------
;Allocation info for local variables in function 'dump_buff_zero_ascii'
;------------------------------------------------------------
;j                         Allocated with name '_dump_buff_zero_ascii_j_65536_79'
;i                         Allocated with name '_dump_buff_zero_ascii_i_196608_81'
;------------------------------------------------------------
;	program.c:323: void dump_buff_zero_ascii()
;	-----------------------------------------
;	 function dump_buff_zero_ascii
;	-----------------------------------------
_dump_buff_zero_ascii:
;	program.c:325: int j = 64;
	mov	dptr,#_dump_buff_zero_ascii_j_65536_79
	mov	a,#0x40
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	program.c:326: if (buffers_array[0].num_char > 0)
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
;	program.c:328: printf("\n\n\r***********Buffer-0-Contents*********** \n\r");
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
;	program.c:329: for (int i = 0; i < buffers_array[0].num_char; i++)
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
;	program.c:331: if (j == 64)
	mov	dptr,#_dump_buff_zero_ascii_j_65536_79
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	cjne	r4,#0x40,00102$
	cjne	r5,#0x00,00102$
;	program.c:333: printf("\n\r");
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
;	program.c:335: putchar(*(buffers_array[0].buffer_start + i));
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
;	program.c:336: j--;
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
;	program.c:337: if (j == 0)
	mov	dptr,#_dump_buff_zero_ascii_j_65536_79
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00111$
;	program.c:338: j = 64;
	mov	dptr,#_dump_buff_zero_ascii_j_65536_79
	mov	a,#0x40
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
00111$:
;	program.c:329: for (int i = 0; i < buffers_array[0].num_char; i++)
	inc	r6
	cjne	r6,#0x00,00140$
	inc	r7
00140$:
	ljmp	00110$
00105$:
;	program.c:340: buffers_array[0].num_char = 0;
	mov	dptr,#(_buffers_array + 0x000a)
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	program.c:341: printf("\n\n\r");
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
;	program.c:345: printf("Buffer0 is Empty....\n\r");
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
;	program.c:347: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dump_buff_zero_hex'
;------------------------------------------------------------
;j                         Allocated with name '_dump_buff_zero_hex_j_131073_87'
;i                         Allocated with name '_dump_buff_zero_hex_i_196609_88'
;------------------------------------------------------------
;	program.c:354: void dump_buff_zero_hex()
;	-----------------------------------------
;	 function dump_buff_zero_hex
;	-----------------------------------------
_dump_buff_zero_hex:
;	program.c:356: if (buffers_array[0].num_char > 0)
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
;	program.c:358: printf("\n\r-------------------------HEXDUMP--------------------------------");
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
;	program.c:359: printf("\n\r    ADDR: +0 +1 +2 +3 +4 +5 +6 +7 +8 +9 +A +B +C +D +E +F \n\r");
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
;	program.c:360: int j = 16;
	mov	dptr,#_dump_buff_zero_hex_j_131073_87
	mov	a,#0x10
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	program.c:361: for (int i = 0; i < buffers_array[0].num_char; i++)
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
;	program.c:363: if (j == 16)
	mov	dptr,#_dump_buff_zero_hex_j_131073_87
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	cjne	r4,#0x10,00102$
	cjne	r5,#0x00,00102$
;	program.c:365: printf("\n\r%p: ", (buffers_array[0].buffer_start + i));
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
;	program.c:367: printf("%x ", *(buffers_array[0].buffer_start + i));
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
;	program.c:368: j--;
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
;	program.c:369: if (j == 0)
	mov	dptr,#_dump_buff_zero_hex_j_131073_87
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00111$
;	program.c:370: j = 16;
	mov	dptr,#_dump_buff_zero_hex_j_131073_87
	mov	a,#0x10
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
00111$:
;	program.c:361: for (int i = 0; i < buffers_array[0].num_char; i++)
	inc	r6
	cjne	r6,#0x00,00140$
	inc	r7
00140$:
	ljmp	00110$
00105$:
;	program.c:372: printf("\n\n\r");
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
;	program.c:376: printf("Buffer 0 is empty...\n\r");
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
;	program.c:378: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print_heap_stats'
;------------------------------------------------------------
;	program.c:385: void print_heap_stats()
;	-----------------------------------------
;	 function print_heap_stats
;	-----------------------------------------
_print_heap_stats:
;	program.c:387: printf("\n\r****************HEAP*STATS*************\n\r");
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
;	program.c:388: printf("Total Heap Size: %d \n\r", program_stats.total_heap_size);
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
;	program.c:389: printf("Allocated Heap Size: %d \n\r", program_stats.allocated_heap);
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
;	program.c:390: printf("All Chars: %d \n\r", program_stats.all_char_count);
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
;	program.c:391: printf("Storage Chars: %d \n\r", program_stats.storage_char_count);
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
;	program.c:392: printf("Total Buffers: %d \n\r", program_stats.total_buffers);
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
;	program.c:393: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print_all_buffers'
;------------------------------------------------------------
;i                         Allocated with name '_print_all_buffers_i_131072_94'
;------------------------------------------------------------
;	program.c:400: void print_all_buffers()
;	-----------------------------------------
;	 function print_all_buffers
;	-----------------------------------------
_print_all_buffers:
;	program.c:402: for (int i = 0; i < program_stats.total_buffers; i++)
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
;	program.c:404: printf("****************BUFFER*%d***************\n\r", i);
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
;	program.c:405: printf("Buffer#: %d \n\r", buffers_array[i].buffer_num);
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
;	program.c:406: printf("BufferStart: %p \n\r", buffers_array[i].buffer_start);
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
;	program.c:407: printf("BufferEnd: %p \n\r", buffers_array[i].buffer_end);
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
;	program.c:408: printf("BufferSize: %d \n\r", buffers_array[i].buff_size);
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
;	program.c:409: printf("TotalUsed: %d \n\r", buffers_array[i].num_char);
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
;	program.c:402: for (int i = 0; i < program_stats.total_buffers; i++)
	inc	r6
	cjne	r6,#0x00,00117$
	inc	r7
00117$:
	ljmp	00103$
00101$:
;	program.c:411: printf("***************************************\n\r");
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
;	program.c:412: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_number'
;------------------------------------------------------------
;total_chars               Allocated with name '_get_number_total_chars_65536_96'
;rec                       Allocated with name '_get_number_rec_65536_97'
;num                       Allocated with name '_get_number_num_65536_97'
;i                         Allocated with name '_get_number_i_131072_98'
;------------------------------------------------------------
;	program.c:419: int get_number(int total_chars)
;	-----------------------------------------
;	 function get_number
;	-----------------------------------------
_get_number:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_get_number_total_chars_65536_96
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	program.c:422: int num = 0;
	mov	dptr,#_get_number_num_65536_97
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	program.c:423: for (int i = total_chars; i > 0; i--)
	mov	dptr,#_get_number_total_chars_65536_96
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00107$:
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00127$
	ljmp	00105$
00127$:
;	program.c:426: rec = getchar();
	push	ar7
	push	ar6
	lcall	_getchar
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
;	program.c:427: if (rec <= 0x39 && rec >= 0x30)
	clr	c
	mov	a,#0x39
	subb	a,r4
	mov	a,#(0x00 ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jc	00102$
	mov	a,r4
	subb	a,#0x30
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
	jc	00102$
;	program.c:430: num += ((rec - 0x30) * get_num_helper(i - 1));
	mov	a,r4
	add	a,#0xd0
	mov	r4,a
	mov	a,r5
	addc	a,#0xff
	mov	r5,a
	mov	a,r6
	add	a,#0xff
	mov	r2,a
	mov	a,r7
	addc	a,#0xff
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_get_num_helper
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	mov	dptr,#__mulint_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	dptr,#_get_number_num_65536_97
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_get_number_num_65536_97
	mov	a,r4
	add	a,r2
	movx	@dptr,a
	mov	a,r5
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	sjmp	00108$
00102$:
;	program.c:434: printf("ERR,Numbers ONLY!\n\r");
	mov	a,#___str_41
	push	acc
	mov	a,#(___str_41 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	program.c:435: return -1;
	mov	dptr,#0xffff
	ret
00108$:
;	program.c:423: for (int i = total_chars; i > 0; i--)
	dec	r6
	cjne	r6,#0xff,00130$
	dec	r7
00130$:
	ljmp	00107$
00105$:
;	program.c:438: return num;
	mov	dptr,#_get_number_num_65536_97
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
;	program.c:439: }
	mov	dpl,r6
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_num_helper'
;------------------------------------------------------------
;times                     Allocated with name '_get_num_helper_times_65536_102'
;num                       Allocated with name '_get_num_helper_num_65536_103'
;i                         Allocated with name '_get_num_helper_i_131072_104'
;------------------------------------------------------------
;	program.c:446: int get_num_helper(int times)
;	-----------------------------------------
;	 function get_num_helper
;	-----------------------------------------
_get_num_helper:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_get_num_helper_times_65536_102
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	program.c:448: int num = 1;
	mov	dptr,#_get_num_helper_num_65536_103
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	program.c:449: for (int i = 0; i < times; i++)
	mov	dptr,#_get_num_helper_times_65536_102
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r4,#0x00
	mov	r5,#0x00
00106$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00101$
;	program.c:451: num = num * 10;
	mov	dptr,#_get_num_helper_num_65536_103
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#__mulint_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x000a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__mulint
	mov	a,dpl
	mov	b,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_get_num_helper_num_65536_103
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
;	program.c:449: for (int i = 0; i < times; i++)
	inc	r4
	cjne	r4,#0x00,00106$
	inc	r5
	sjmp	00106$
00101$:
;	program.c:453: if (times == 0)
	mov	a,r6
	orl	a,r7
	jnz	00103$
;	program.c:454: return 1;
	mov	dptr,#0x0001
	ret
00103$:
;	program.c:456: return num;
	mov	dptr,#_get_num_helper_num_65536_103
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
;	program.c:457: }
	mov	dpl,r6
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated with name '_putchar_c_65536_106'
;------------------------------------------------------------
;	program.c:464: int putchar(int c)
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_putchar_c_65536_106
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	program.c:466: while ((SCON & 0x02) == 0)
00101$:
	mov	a,_SCON
	jnb	acc.1,00101$
;	program.c:468: TI = 0;
;	assignBit
	clr	_TI
;	program.c:469: SBUF = c;
	mov	dptr,#_putchar_c_65536_106
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	_SBUF,r6
;	program.c:470: return 0;
	mov	dptr,#0x0000
;	program.c:471: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;	program.c:478: int getchar()
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	program.c:480: while (RI == 0)
00101$:
;	program.c:482: RI = 0;
;	assignBit
	jbc	_RI,00140$
	sjmp	00101$
00140$:
;	program.c:483: if (SBUF != 0x3F && SBUF != 0x3D && SBUF != 0x40 && SBUF != 0x2B && SBUF != 0x2D)
	mov	a,#0x3f
	cjne	a,_SBUF,00141$
	sjmp	00105$
00141$:
	mov	a,#0x3d
	cjne	a,_SBUF,00142$
	sjmp	00105$
00142$:
	mov	a,#0x40
	cjne	a,_SBUF,00143$
	sjmp	00105$
00143$:
	mov	a,#0x2b
	cjne	a,_SBUF,00144$
	sjmp	00105$
00144$:
	mov	a,#0x2d
	cjne	a,_SBUF,00145$
	sjmp	00105$
00145$:
;	program.c:484: putchar(SBUF);
	mov	r6,_SBUF
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	_putchar
00105$:
;	program.c:485: return SBUF;
	mov	r6,_SBUF
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
;	program.c:486: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_sdcc_external_startup'
;------------------------------------------------------------
;	program.c:494: _sdcc_external_startup()
;	-----------------------------------------
;	 function _sdcc_external_startup
;	-----------------------------------------
__sdcc_external_startup:
;	program.c:496: _AUXR = 0xC;
	mov	__AUXR,#0x0c
;	program.c:498: SCON = 0x42;
	mov	_SCON,#0x42
;	program.c:500: PCON = 0x80;
	mov	_PCON,#0x80
;	program.c:502: TH1 = 255;
	mov	_TH1,#0xff
;	program.c:503: TL1 = 255;
	mov	_TL1,#0xff
;	program.c:505: TMOD = 0x20;
	mov	_TMOD,#0x20
;	program.c:507: REN = 1;
;	assignBit
	setb	_REN
;	program.c:509: TR1 = 1;
;	assignBit
	setb	_TR1
;	program.c:511: return 0;
	mov	dptr,#0x0000
;	program.c:512: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "HELLO! "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "Buffer %d Freed ...."
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "Let's begin again.."
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.db 0x0a
	.db 0x0d
	.ascii "Give Valid Buffer Number to delete(1-%d) in 3 digits"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "Buffer %d Successfully Deleted.. "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.db 0x0a
	.db 0x0a
	.db 0x0d
	.ascii "^^^^^^^^^^^^^^^^^^^-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ "
	.db 0x0a
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "You can enter characters or use commands from below "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "'?' -> Show heap status, dump & clear Buffer 0 "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "'+' -> Add a new Buffer"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "'-' -> Delete existing Buffer"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "'=' -> Dump Buffer 0 in hex"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii "'@' -> Free all Heap & begin again"
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
	.area CONST   (CODE)
___str_41:
	.ascii "ERR,Numbers ONLY!"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
