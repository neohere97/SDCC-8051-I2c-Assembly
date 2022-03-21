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
	.globl _idle_interrupt
	.globl _pca_interrupt
	.globl _main
	.globl _i2c_read_val
	.globl _i2c_read_init
	.globl _i2c_write_val
	.globl _i2c_addr
	.globl _i2c_write_init
	.globl _asmtest
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
	.globl _watchdog_flag
	.globl _global_var_test
	.globl _i2c_read_random_PARM_2
	.globl _i2c_write_random_PARM_3
	.globl _i2c_write_random_PARM_2
	.globl _buffers_array
	.globl _program_stats
	.globl _DEBUG_LOC
	.globl _user_interface_heap
	.globl _user_interface_PCA
	.globl _pca_falling_edge
	.globl _pca_software_timer
	.globl _pca_high_speed
	.globl _pca_pwm
	.globl _pca_watchdog
	.globl _hardware_watchdog
	.globl _pca_idle
	.globl _pca_pdown
	.globl _fclk_lowest
	.globl _main_menu
	.globl _i2c_write_random
	.globl _i2c_read_random
	.globl _i2c_testasm
	.globl _asm_clang
	.globl _at_clear_all_buffers
	.globl _delete_buffer
	.globl _print_pca_menu
	.globl _print_heap_menu
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
	.globl _dataout
	.globl _asm_call
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
	.area REG_BANK_1	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
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
_DEBUG_LOC	=	0x8000
_program_stats::
	.ds 10
_buffers_array::
	.ds 300
_i2c_write_random_PARM_2:
	.ds 1
_i2c_write_random_PARM_3:
	.ds 1
_i2c_write_random_block_65536_80:
	.ds 1
_i2c_read_random_PARM_2:
	.ds 1
_i2c_read_random_block_65536_86:
	.ds 1
_create_new_buffer_buff_65537_113:
	.ds 12
_create_initial_buffers_buff_65538_120:
	.ds 12
_create_initial_buffers_buff1_65538_120:
	.ds 12
_dump_buff_zero_ascii_j_65537_137:
	.ds 2
_dump_buff_zero_hex_j_131073_145:
	.ds 2
_get_number_total_chars_65536_154:
	.ds 2
_get_number_num_65537_156:
	.ds 2
_get_num_helper_times_65536_161:
	.ds 2
_get_num_helper_num_65536_162:
	.ds 2
_putchar_c_65536_165:
	.ds 2
_dataout_data_65536_168:
	.ds 1
_asm_call_sent_from_asm_65536_170:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_global_var_test::
	.ds 1
_watchdog_flag::
	.ds 2
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
	ljmp	_idle_interrupt
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_pca_interrupt
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
;	program.c:97: void main(void)
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
;	program.c:99: printf("\n\r HELLO! Started in X2 Mode \n\r");
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
;	program.c:100: DEBUGPORT(0x01);
	mov	dpl,#0x01
	lcall	_dataout
;	program.c:101: P1_1 = 0;
;	assignBit
	clr	_P1_1
;	program.c:103: main_menu(); 
;	program.c:104: }
	ljmp	_main_menu
;------------------------------------------------------------
;Allocation info for local variables in function 'user_interface_heap'
;------------------------------------------------------------
;	program.c:111: void user_interface_heap()
;	-----------------------------------------
;	 function user_interface_heap
;	-----------------------------------------
_user_interface_heap:
;	program.c:113: DEBUGPORT(0x02);
	mov	dpl,#0x02
	lcall	_dataout
;	program.c:114: create_initial_buffers();
	lcall	_create_initial_buffers
;	program.c:115: print_all_buffers();
	lcall	_print_all_buffers
;	program.c:116: enter_chars();
;	program.c:117: }
	ljmp	_enter_chars
;------------------------------------------------------------
;Allocation info for local variables in function 'user_interface_PCA'
;------------------------------------------------------------
;inp                       Allocated with name '_user_interface_PCA_inp_65537_59'
;------------------------------------------------------------
;	program.c:124: void user_interface_PCA()
;	-----------------------------------------
;	 function user_interface_PCA
;	-----------------------------------------
_user_interface_PCA:
;	program.c:126: DEBUGPORT(0xAA);
	mov	dpl,#0xaa
	lcall	_dataout
;	program.c:127: printf("Hello, In PCA Demo mode \n\r");
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
;	program.c:128: print_pca_menu();
	lcall	_print_pca_menu
;	program.c:131: wrong_choice_pca:
00101$:
;	program.c:132: printf("Please make a valid choice \n\r");
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
;	program.c:133: inp = getchar();
	lcall	_getchar
	mov	r6,dpl
	mov	r7,dph
;	program.c:134: if (inp == 0x46)
	cjne	r6,#0x46,00127$
	cjne	r7,#0x00,00127$
;	program.c:135: pca_falling_edge();
	lcall	_pca_falling_edge
	ljmp	00145$
00127$:
;	program.c:136: else if (inp == 0x53)
	cjne	r6,#0x53,00124$
	cjne	r7,#0x00,00124$
;	program.c:137: pca_software_timer();
	lcall	_pca_software_timer
	sjmp	00145$
00124$:
;	program.c:138: else if (inp == 0x48)
	cjne	r6,#0x48,00121$
	cjne	r7,#0x00,00121$
;	program.c:139: pca_high_speed();
	lcall	_pca_high_speed
	sjmp	00145$
00121$:
;	program.c:140: else if (inp == 0x50)
	cjne	r6,#0x50,00118$
	cjne	r7,#0x00,00118$
;	program.c:141: pca_pwm();
	lcall	_pca_pwm
	sjmp	00145$
00118$:
;	program.c:142: else if (inp == 0x57)
	cjne	r6,#0x57,00115$
	cjne	r7,#0x00,00115$
;	program.c:143: pca_watchdog();
	lcall	_pca_watchdog
	sjmp	00145$
00115$:
;	program.c:144: else if (inp == 0x49)
	cjne	r6,#0x49,00112$
	cjne	r7,#0x00,00112$
;	program.c:145: pca_idle();
	lcall	_pca_idle
	sjmp	00145$
00112$:
;	program.c:146: else if (inp == 0x44)
	cjne	r6,#0x44,00109$
	cjne	r7,#0x00,00109$
;	program.c:147: pca_pdown();
	lcall	_pca_pdown
	sjmp	00145$
00109$:
;	program.c:148: else if (inp == 0x4C)
	cjne	r6,#0x4c,00106$
	cjne	r7,#0x00,00106$
;	program.c:149: fclk_lowest();
	lcall	_fclk_lowest
	sjmp	00145$
00106$:
;	program.c:150: else if (inp == 0x55)
	cjne	r6,#0x55,00199$
	cjne	r7,#0x00,00199$
	sjmp	00200$
00199$:
	ljmp	00101$
00200$:
;	program.c:151: hardware_watchdog();
	lcall	_hardware_watchdog
;	program.c:155: exit_choice:
00145$:
00129$:
;	program.c:156: printf("Please 'E' to exit or Reset \n\r");
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
;	program.c:157: inp = getchar();
	lcall	_getchar
	mov	r6,dpl
	mov	r7,dph
;	program.c:158: if (inp == 0x45)
	cjne	r6,#0x45,00129$
	cjne	r7,#0x00,00129$
;	program.c:159: user_interface_PCA();
;	program.c:161: goto exit_choice;
;	program.c:162: }
	ljmp	_user_interface_PCA
;------------------------------------------------------------
;Allocation info for local variables in function 'pca_interrupt'
;------------------------------------------------------------
;	program.c:169: void pca_interrupt() __interrupt(6) __using(1)
;	-----------------------------------------
;	 function pca_interrupt
;	-----------------------------------------
_pca_interrupt:
	ar7 = 0x0f
	ar6 = 0x0e
	ar5 = 0x0d
	ar4 = 0x0c
	ar3 = 0x0b
	ar2 = 0x0a
	ar1 = 0x09
	ar0 = 0x08
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x08
;	program.c:171: if (CCF0)
	jnb	_CCF0,00102$
;	program.c:173: printf("Captured Value CCPL -> %d CCPH -> %d \n\r", CCAP0L, CCAP0H);
	mov	r6,_CCAP0H
	mov	r7,#0x00
	mov	r4,_CCAP0L
	mov	r5,#0x00
	push	ar6
	push	ar7
	push	ar4
	push	ar5
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	psw,#0x00
	lcall	_printf
	mov	psw,#0x08
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	program.c:175: CCF0 = 0;
;	assignBit
	clr	_CCF0
00102$:
;	program.c:177: if (CCF1)
;	program.c:179: CCF1 = 0;
;	assignBit
	jbc	_CCF1,00128$
	sjmp	00104$
00128$:
;	program.c:180: CH = 0;
	mov	_CH,#0x00
;	program.c:181: CL = 0;
	mov	_CL,#0x00
00104$:
;	program.c:183: if (CCF2)
;	program.c:185: CCF2 = 0;
;	assignBit
	jbc	_CCF2,00129$
	sjmp	00106$
00129$:
;	program.c:186: CH = 0;
	mov	_CH,#0x00
;	program.c:187: CL = 0;
	mov	_CL,#0x00
;	program.c:188: WDTRST = 0x01E;
	mov	_WDTRST,#0x1e
;	program.c:189: WDTRST = 0x0E1;
	mov	_WDTRST,#0xe1
00106$:
;	program.c:191: if (CCF3)
;	program.c:193: CCF3 = 0;
;	assignBit
	jbc	_CCF3,00130$
	sjmp	00109$
00130$:
;	program.c:194: printf("Timer Interrupt\n\r");
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	psw,#0x00
	lcall	_printf
	mov	psw,#0x08
	dec	sp
	dec	sp
	dec	sp
00109$:
;	program.c:196: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'idle_interrupt'
;------------------------------------------------------------
;	program.c:203: void idle_interrupt() __interrupt(0) __using(1)
;	-----------------------------------------
;	 function idle_interrupt
;	-----------------------------------------
_idle_interrupt:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x08
;	program.c:205: EX0 = 0;
;	assignBit
	clr	_EX0
;	program.c:206: PCON = 0x80;
	mov	_PCON,#0x80
;	program.c:207: CR = 0;
;	assignBit
	clr	_CR
;	program.c:208: CKRL = 255;
	mov	_CKRL,#0xff
;	program.c:209: CCAPM0 = 0;
;	program.c:210: CCAPM1 = 0;
;	program.c:211: CCAPM2 = 0;
;	program.c:212: CCAPM3 = 0;
;	program.c:213: CCAPM4 = 0;
;	program.c:214: printf("Going to main menu.. \n\r");
	clr	a
	mov	_CCAPM0,a
	mov	_CCAPM1,a
	mov	_CCAPM2,a
	mov	_CCAPM3,a
	mov	_CCAPM4,a
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	psw,#0x00
	lcall	_printf
	mov	psw,#0x08
	dec	sp
	dec	sp
	dec	sp
;	program.c:215: main_menu();
	mov	psw,#0x00
	lcall	_main_menu
	mov	psw,#0x08
;	program.c:216: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'pca_falling_edge'
;------------------------------------------------------------
;	program.c:223: void pca_falling_edge()
;	-----------------------------------------
;	 function pca_falling_edge
;	-----------------------------------------
_pca_falling_edge:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	program.c:225: printf("Setting P1.3 as falling edge detector, enabling PCA interrupt \n\r");
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
;	program.c:226: CCAPM0 = 0x21;
	mov	_CCAPM0,#0x21
;	program.c:227: CR = 1;
;	assignBit
	setb	_CR
;	program.c:228: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pca_software_timer'
;------------------------------------------------------------
;rec                       Allocated with name '_pca_software_timer_rec_65537_68'
;------------------------------------------------------------
;	program.c:235: void pca_software_timer()
;	-----------------------------------------
;	 function pca_software_timer
;	-----------------------------------------
_pca_software_timer:
;	program.c:237: printf("Entering Software Timer Mode \n\r");
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
;	program.c:238: CCAP3L = 255;
	mov	_CCAP3L,#0xff
;	program.c:239: CCAP3H = 255;
	mov	_CCAP3H,#0xff
;	program.c:240: CCAPM3 = 0x49;
	mov	_CCAPM3,#0x49
;	program.c:241: CR = 1;
;	assignBit
	setb	_CR
;	program.c:243: get_f:
00101$:
;	program.c:244: rec = getchar();
	lcall	_getchar
	mov	r6,dpl
	mov	r7,dph
;	program.c:246: if (rec == 0x53)
	cjne	r6,#0x53,00101$
	cjne	r7,#0x00,00101$
;	program.c:247: CCAPM3 = 0;
	mov	_CCAPM3,#0x00
;	program.c:249: goto get_f;
;	program.c:250: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pca_high_speed'
;------------------------------------------------------------
;	program.c:257: void pca_high_speed()
;	-----------------------------------------
;	 function pca_high_speed
;	-----------------------------------------
_pca_high_speed:
;	program.c:260: printf("Entering High Speed Toggle Mode, P1.5 \n\r");
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
;	program.c:261: CCAP2L = 255;
	mov	_CCAP2L,#0xff
;	program.c:262: CCAP2H = 2;
	mov	_CCAP2H,#0x02
;	program.c:263: CCAPM2 = 0x4D;
	mov	_CCAPM2,#0x4d
;	program.c:264: CMOD = CPS0;
	mov	_CMOD,#0x02
;	program.c:265: CR = 1;
;	assignBit
	setb	_CR
;	program.c:266: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pca_pwm'
;------------------------------------------------------------
;	program.c:273: void pca_pwm()
;	-----------------------------------------
;	 function pca_pwm
;	-----------------------------------------
_pca_pwm:
;	program.c:275: printf("Entering PWM Mode, 25 percent Duty Cycle P1.6\n\r");
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
;	program.c:276: CCAP3L = 192;
	mov	_CCAP3L,#0xc0
;	program.c:277: CCAP3H = 192;
	mov	_CCAP3H,#0xc0
;	program.c:278: CCAPM3 = 0x42;
	mov	_CCAPM3,#0x42
;	program.c:279: CMOD = CPS0;
	mov	_CMOD,#0x02
;	program.c:280: CR = 1;
;	assignBit
	setb	_CR
;	program.c:281: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pca_watchdog'
;------------------------------------------------------------
;rec                       Allocated with name '_pca_watchdog_rec_65537_72'
;------------------------------------------------------------
;	program.c:288: void pca_watchdog()
;	-----------------------------------------
;	 function pca_watchdog
;	-----------------------------------------
_pca_watchdog:
;	program.c:290: CCAP1L = 255;
	mov	_CCAP1L,#0xff
;	program.c:291: CCAP1H = 128;
	mov	_CCAP1H,#0x80
;	program.c:292: CCAPM1 = 0x49;
	mov	_CCAPM1,#0x49
;	program.c:293: watchdog_flag = 1;
	mov	dptr,#_watchdog_flag
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	program.c:294: printf("Enabling Watchdog Timer..\n\r");
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
;	program.c:295: CCAP4L = 255;
	mov	_CCAP4L,#0xff
;	program.c:296: CCAP4H = 255;
	mov	_CCAP4H,#0xff
;	program.c:297: CMOD = WDTE;
	mov	_CMOD,#0x40
;	program.c:298: CCAPM4 = 0x48;
	mov	_CCAPM4,#0x48
;	program.c:299: CR = 1;
;	assignBit
	setb	_CR
;	program.c:301: printf("Currently Watchdog is being serviced\n\rPress 'S' to stop and generate a reset \n\r");
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
;	program.c:303: get_e:
00101$:
;	program.c:304: rec = getchar();
	lcall	_getchar
	mov	r6,dpl
	mov	r7,dph
;	program.c:306: if (rec == 0x53)
	cjne	r6,#0x53,00101$
	cjne	r7,#0x00,00101$
;	program.c:307: CCAPM1 = 0;
	mov	_CCAPM1,#0x00
;	program.c:309: goto get_e;
;	program.c:310: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'hardware_watchdog'
;------------------------------------------------------------
;rec                       Allocated with name '_hardware_watchdog_rec_65537_74'
;------------------------------------------------------------
;	program.c:317: void hardware_watchdog()
;	-----------------------------------------
;	 function hardware_watchdog
;	-----------------------------------------
_hardware_watchdog:
;	program.c:319: CCAP2L = 255;
	mov	_CCAP2L,#0xff
;	program.c:320: CCAP2H = 255;
	mov	_CCAP2H,#0xff
;	program.c:321: CCAPM2 = 0x49;
	mov	_CCAPM2,#0x49
;	program.c:322: printf("Enabling Hardware Watchdog Timer..\n\r");
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
;	program.c:323: WDTPRG = 0x7;
	mov	_WDTPRG,#0x07
;	program.c:324: CR = 1;
;	assignBit
	setb	_CR
;	program.c:326: printf("Currently Hardware Watchdog is being serviced\n\rPress 'S' to stop watchdog service and generate a reset in ~1s \n\r");
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
;	program.c:328: get_e:
00101$:
;	program.c:329: rec = getchar();
	lcall	_getchar
	mov	r6,dpl
	mov	r7,dph
;	program.c:331: if (rec == 0x53)
	cjne	r6,#0x53,00101$
	cjne	r7,#0x00,00101$
;	program.c:332: CCAPM2 = 0;
	mov	_CCAPM2,#0x00
;	program.c:334: goto get_e;
;	program.c:335: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pca_idle'
;------------------------------------------------------------
;	program.c:342: void pca_idle()
;	-----------------------------------------
;	 function pca_idle
;	-----------------------------------------
_pca_idle:
;	program.c:344: pca_pwm();
	lcall	_pca_pwm
;	program.c:345: printf("Entering Idle, Will Exit on external interrupt 0\n\r");
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
;	program.c:346: EX0 = 1;
;	assignBit
	setb	_EX0
;	program.c:347: PCON = IDL;
	mov	_PCON,#0x01
;	program.c:348: printf("Woke up from Idle/Power down, going to main menu \n\r");
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
;	program.c:349: main_menu();
;	program.c:350: }
	ljmp	_main_menu
;------------------------------------------------------------
;Allocation info for local variables in function 'pca_pdown'
;------------------------------------------------------------
;	program.c:357: void pca_pdown()
;	-----------------------------------------
;	 function pca_pdown
;	-----------------------------------------
_pca_pdown:
;	program.c:359: pca_pwm();
	lcall	_pca_pwm
;	program.c:360: printf("Entering power down, Will Exit on external interrupt 0\n\r");
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
;	program.c:361: EX0 = 1;
;	assignBit
	setb	_EX0
;	program.c:362: PCON = PD;
	mov	_PCON,#0x02
;	program.c:363: printf("Woke up from Idle/Power down, going to main menu \n\r");
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
;	program.c:364: main_menu();
;	program.c:365: }
	ljmp	_main_menu
;------------------------------------------------------------
;Allocation info for local variables in function 'fclk_lowest'
;------------------------------------------------------------
;	program.c:372: void fclk_lowest()
;	-----------------------------------------
;	 function fclk_lowest
;	-----------------------------------------
_fclk_lowest:
;	program.c:374: printf("Changing Clock prescalar to go to lowest frequency in X2 Mode..\n\r");
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
;	program.c:375: printf("This UART Session will stop working...\n\r");
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
;	program.c:376: EX0 = 1;
;	assignBit
	setb	_EX0
;	program.c:377: CKRL = 0;
	mov	_CKRL,#0x00
;	program.c:378: main_menu();
;	program.c:379: }
	ljmp	_main_menu
;------------------------------------------------------------
;Allocation info for local variables in function 'main_menu'
;------------------------------------------------------------
;inp                       Allocated with name '_main_menu_inp_65537_79'
;------------------------------------------------------------
;	program.c:386: void main_menu()
;	-----------------------------------------
;	 function main_menu
;	-----------------------------------------
_main_menu:
;	program.c:388: printf("\n\n\r^^^^^^^^^^^^^^^^^^^-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ \n\n\r");
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
;	program.c:389: printf("'H' -> Enter Heap Demo Mode \n\r");
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
;	program.c:390: printf("'P' -> Enter PCA Demo Mode \n\r");
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
;	program.c:391: printf("'A' -> Assembly C Mix \n\r");
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
;	program.c:392: printf("'E' -> EEPROM Mode \n\r");
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
;	program.c:395: wrong_choice:
00101$:
;	program.c:396: printf("Please make a valid choice \n\r");
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
;	program.c:397: inp = getchar();
	lcall	_getchar
	mov	r6,dpl
	mov	r7,dph
;	program.c:398: if (inp == 0x48)
	cjne	r6,#0x48,00112$
	cjne	r7,#0x00,00112$
;	program.c:399: user_interface_heap();
	ljmp	_user_interface_heap
00112$:
;	program.c:400: else if (inp == 0x50)
	cjne	r6,#0x50,00109$
	cjne	r7,#0x00,00109$
;	program.c:401: user_interface_PCA();
	ljmp	_user_interface_PCA
00109$:
;	program.c:402: else if (inp == 0x41)
	cjne	r6,#0x41,00106$
	cjne	r7,#0x00,00106$
;	program.c:403: asm_clang();
	ljmp	_asm_clang
00106$:
;	program.c:404: else if (inp == 0x45)
	cjne	r6,#0x45,00101$
	cjne	r7,#0x00,00101$
;	program.c:405: i2c_testasm();
;	program.c:407: goto wrong_choice;
;	program.c:408: }
	ljmp	_i2c_testasm
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_write_random'
;------------------------------------------------------------
;address                   Allocated with name '_i2c_write_random_PARM_2'
;value                     Allocated with name '_i2c_write_random_PARM_3'
;block                     Allocated with name '_i2c_write_random_block_65536_80'
;k                         Allocated with name '_i2c_write_random_k_131072_82'
;l                         Allocated with name '_i2c_write_random_l_262144_84'
;------------------------------------------------------------
;	program.c:410: void i2c_write_random(unsigned char block, unsigned char address, unsigned char value)
;	-----------------------------------------
;	 function i2c_write_random
;	-----------------------------------------
_i2c_write_random:
	mov	a,dpl
	mov	dptr,#_i2c_write_random_block_65536_80
	movx	@dptr,a
;	program.c:412: i2c_write_init(block);
	movx	a,@dptr
	mov	dpl,a
	lcall	_i2c_write_init
;	program.c:413: i2c_addr(address);
	mov	dptr,#_i2c_write_random_PARM_2
	movx	a,@dptr
	mov	dpl,a
	lcall	_i2c_addr
;	program.c:414: i2c_write_val(value);
	mov	dptr,#_i2c_write_random_PARM_3
	movx	a,@dptr
	mov	dpl,a
	lcall	_i2c_write_val
;	program.c:415: for (int k = 0; k < 90; k++)
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
;	program.c:417: for (int l = 0; l < 10; l++)
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
;	program.c:415: for (int k = 0; k < 90; k++)
	inc	r6
	cjne	r6,#0x00,00107$
	inc	r7
	sjmp	00107$
00109$:
;	program.c:421: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_read_random'
;------------------------------------------------------------
;address                   Allocated with name '_i2c_read_random_PARM_2'
;block                     Allocated with name '_i2c_read_random_block_65536_86'
;a                         Allocated with name '_i2c_read_random_a_65537_88'
;------------------------------------------------------------
;	program.c:423: unsigned char i2c_read_random(unsigned char block, unsigned char address)
;	-----------------------------------------
;	 function i2c_read_random
;	-----------------------------------------
_i2c_read_random:
	mov	a,dpl
	mov	dptr,#_i2c_read_random_block_65536_86
	movx	@dptr,a
;	program.c:425: i2c_write_init(block);
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
	push	ar7
	lcall	_i2c_write_init
;	program.c:426: i2c_addr(address);
	mov	dptr,#_i2c_read_random_PARM_2
	movx	a,@dptr
	mov	dpl,a
	lcall	_i2c_addr
	pop	ar7
;	program.c:427: i2c_read_init(block);
	mov	dpl,r7
	lcall	_i2c_read_init
;	program.c:428: unsigned char a = i2c_read_val();
;	program.c:429: return a;
;	program.c:430: }
	ljmp	_i2c_read_val
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_testasm'
;------------------------------------------------------------
;i                         Allocated with name '_i2c_testasm_i_131072_90'
;r                         Allocated with name '_i2c_testasm_r_65537_92'
;k                         Allocated with name '_i2c_testasm_k_131073_93'
;a                         Allocated with name '_i2c_testasm_a_196609_94'
;------------------------------------------------------------
;	program.c:432: void i2c_testasm()
;	-----------------------------------------
;	 function i2c_testasm
;	-----------------------------------------
_i2c_testasm:
;	program.c:434: for(int i = 0; i <256;i++){
	mov	r6,#0x00
	mov	r7,#0x00
00107$:
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x81
	jnc	00101$
;	program.c:435: i2c_write_random(0, i, i);
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
;	program.c:434: for(int i = 0; i <256;i++){
	inc	r6
	cjne	r6,#0x00,00107$
	inc	r7
	sjmp	00107$
00101$:
;	program.c:439: unsigned char r = getchar();
	lcall	_getchar
;	program.c:441: for(int k = 0; k <256;k++){
	mov	r6,#0x00
	mov	r7,#0x00
00110$:
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x81
	jnc	00104$
;	program.c:442: unsigned char a = i2c_read_random(0, k);
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
;	program.c:443: printf("loc ->%d val is -> %x \n\r", k,a);
	mov	r4,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar6
	push	ar7
	mov	a,#___str_25
	push	acc
	mov	a,#(___str_25 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar6
	pop	ar7
;	program.c:441: for(int k = 0; k <256;k++){
	inc	r6
;	program.c:447: while (1)
	cjne	r6,#0x00,00110$
	inc	r7
	sjmp	00110$
00104$:
;	program.c:450: }
	sjmp	00104$
;------------------------------------------------------------
;Allocation info for local variables in function 'asm_clang'
;------------------------------------------------------------
;num1                      Allocated with name '_asm_clang_num1_65537_97'
;num2                      Allocated with name '_asm_clang_num2_65538_98'
;num3                      Allocated with name '_asm_clang_num3_65539_99'
;------------------------------------------------------------
;	program.c:457: void asm_clang()
;	-----------------------------------------
;	 function asm_clang
;	-----------------------------------------
_asm_clang:
;	program.c:459: printf("\n\r Give param 1, 8bit \n\r");
	mov	a,#___str_26
	push	acc
	mov	a,#(___str_26 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	program.c:460: unsigned char num1 = get_number(3);
	mov	dptr,#0x0003
	lcall	_get_number
	mov	r6,dpl
;	program.c:461: printf("\n\r Give param 2, 8bit \n\r");
	push	ar6
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
;	program.c:462: unsigned char num2 = get_number(3);
	mov	dptr,#0x0003
	lcall	_get_number
	mov	r5,dpl
;	program.c:463: printf("\n\r Give param 3, 8bit \n\r");
	push	ar5
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
;	program.c:464: unsigned char num3 = get_number(3);
	mov	dptr,#0x0003
	lcall	_get_number
	mov	r4,dpl
	pop	ar5
	pop	ar6
;	program.c:466: printf("\n\r RESULT-> param3<Mod>param2 * param1 = %d \n\r", asmtest(num1, num2, num3));
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
;	program.c:467: printf("\n\r Going back to main menu.. \n\r");
	mov	a,#___str_30
	push	acc
	mov	a,#(___str_30 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	program.c:468: main_menu();
;	program.c:469: }
	ljmp	_main_menu
;------------------------------------------------------------
;Allocation info for local variables in function 'at_clear_all_buffers'
;------------------------------------------------------------
;i                         Allocated with name '_at_clear_all_buffers_i_131072_101'
;------------------------------------------------------------
;	program.c:477: void at_clear_all_buffers()
;	-----------------------------------------
;	 function at_clear_all_buffers
;	-----------------------------------------
_at_clear_all_buffers:
;	program.c:479: DEBUGPORT(0x03);
	mov	dpl,#0x03
	lcall	_dataout
;	program.c:480: for (int i = 0; i < program_stats.total_buffers; i++)
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
;	program.c:482: free(buffers_array[i].buffer_start);
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
;	program.c:483: printf("Buffer %d Freed ....\n\r", i);
	push	ar7
	push	ar6
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
	pop	ar6
	pop	ar7
;	program.c:480: for (int i = 0; i < program_stats.total_buffers; i++)
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
	sjmp	00103$
00101$:
;	program.c:485: printf("Let's begin again..\n\r");
	mov	a,#___str_32
	push	acc
	mov	a,#(___str_32 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	program.c:486: user_interface_heap();
;	program.c:487: }
	ljmp	_user_interface_heap
;------------------------------------------------------------
;Allocation info for local variables in function 'delete_buffer'
;------------------------------------------------------------
;sloc0                     Allocated with name '_delete_buffer_sloc0_1_0'
;sloc1                     Allocated with name '_delete_buffer_sloc1_1_0'
;sloc2                     Allocated with name '_delete_buffer_sloc2_1_0'
;buff_number               Allocated with name '_delete_buffer_buff_number_65537_104'
;buff_to_free              Allocated with name '_delete_buffer_buff_to_free_65537_104'
;buffer_freed_size         Allocated with name '_delete_buffer_buffer_freed_size_65537_104'
;i                         Allocated with name '_delete_buffer_i_196609_106'
;------------------------------------------------------------
;	program.c:494: int delete_buffer()
;	-----------------------------------------
;	 function delete_buffer
;	-----------------------------------------
_delete_buffer:
;	program.c:496: DEBUGPORT(0x04);
	mov	dpl,#0x04
	lcall	_dataout
;	program.c:500: get_del_num:
00101$:
;	program.c:501: printf("\n\rGive Valid Buffer Number to delete(1-%d) in 3 digits\n\r", (program_stats.total_buffers - 1));
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
;	program.c:502: buff_number = get_number(3);
	mov	dptr,#0x0003
	lcall	_get_number
	mov	r6,dpl
	mov	r7,dph
;	program.c:504: if (buff_number > 0 && buff_number < program_stats.total_buffers)
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
;	program.c:508: buff_to_free = buffers_array[buff_number].buffer_start;
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
;	program.c:509: buffer_freed_size = buffers_array[buff_number].buff_size;
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
;	program.c:511: for (int i = 0; i < (program_stats.total_buffers - 1); i++)
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
;	program.c:513: if (i >= buff_number)
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
;	program.c:515: buffers_array[i + 1].buffer_num = i;
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
;	program.c:516: buffers_array[i] = buffers_array[i + 1];
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
;	program.c:529: goto get_del_num;
	pop	ar5
	pop	ar4
;	program.c:516: buffers_array[i] = buffers_array[i + 1];
00111$:
;	program.c:511: for (int i = 0; i < (program_stats.total_buffers - 1); i++)
	inc	_delete_buffer_sloc0_1_0
	clr	a
	cjne	a,_delete_buffer_sloc0_1_0,00144$
	inc	(_delete_buffer_sloc0_1_0 + 1)
00144$:
	ljmp	00110$
00104$:
;	program.c:520: program_stats.total_buffers -= 1;
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
;	program.c:521: program_stats.allocated_heap -= buffer_freed_size;
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
;	program.c:523: free(buff_to_free);
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
;	program.c:524: printf("Buffer %d Successfully Deleted.. \n\r", buff_number);
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
;	program.c:525: return 0;
	mov	dptr,#0x0000
;	program.c:529: goto get_del_num;
;	program.c:531: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print_pca_menu'
;------------------------------------------------------------
;	program.c:538: void print_pca_menu()
;	-----------------------------------------
;	 function print_pca_menu
;	-----------------------------------------
_print_pca_menu:
;	program.c:540: DEBUGPORT(0x55);
	mov	dpl,#0x55
	lcall	_dataout
;	program.c:541: printf("\n\n\r^^^^^^^^^^^^^^^^^^^-PCA-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ \n\n\r");
	mov	a,#___str_35
	push	acc
	mov	a,#(___str_35 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	program.c:542: printf("'F' -> Falling Edge Capture Mode\n\r");
	mov	a,#___str_36
	push	acc
	mov	a,#(___str_36 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	program.c:543: printf("'S' -> Software Timer Mode\n\r");
	mov	a,#___str_37
	push	acc
	mov	a,#(___str_37 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	program.c:544: printf("'H' -> High Speed Output Mode\n\r");
	mov	a,#___str_38
	push	acc
	mov	a,#(___str_38 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	program.c:545: printf("'P' -> PWM Mode \n\r");
	mov	a,#___str_39
	push	acc
	mov	a,#(___str_39 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	program.c:546: printf("'W' -> Watchdog Timer Mode\n\r");
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
;	program.c:547: printf("'I' -> Idle Mode with PWM\n\r");
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
;	program.c:548: printf("'L' -> Change Prescalar to lowest frequency\n\r");
	mov	a,#___str_42
	push	acc
	mov	a,#(___str_42 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	program.c:549: printf("'U' -> Hardware Watchdog Timer\n\r");
	mov	a,#___str_43
	push	acc
	mov	a,#(___str_43 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	program.c:550: printf("'D' -> Power Down Mode\n\n\r");
	mov	a,#___str_44
	push	acc
	mov	a,#(___str_44 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	program.c:552: printf("'M' -> Go to Main Menu \n\n\r");
	mov	a,#___str_45
	push	acc
	mov	a,#(___str_45 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	program.c:553: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print_heap_menu'
;------------------------------------------------------------
;	program.c:560: void print_heap_menu()
;	-----------------------------------------
;	 function print_heap_menu
;	-----------------------------------------
_print_heap_menu:
;	program.c:562: DEBUGPORT(0x05);
	mov	dpl,#0x05
	lcall	_dataout
;	program.c:563: printf("\n\n\r^^^^^^^^^^^^^^^^^^^-HEAP-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ \n\n\r");
	mov	a,#___str_46
	push	acc
	mov	a,#(___str_46 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	program.c:564: printf("You can enter characters or use commands from below \n\r");
	mov	a,#___str_47
	push	acc
	mov	a,#(___str_47 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	program.c:565: printf("'?' -> Show heap status, dump & clear Buffer 0 \n\r");
	mov	a,#___str_48
	push	acc
	mov	a,#(___str_48 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	program.c:566: printf("'+' -> Add a new Buffer\n\r");
	mov	a,#___str_49
	push	acc
	mov	a,#(___str_49 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	program.c:567: printf("'-' -> Delete existing Buffer\n\r");
	mov	a,#___str_50
	push	acc
	mov	a,#(___str_50 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	program.c:568: printf("'=' -> Dump Buffer 0 in hex\n\r");
	mov	a,#___str_51
	push	acc
	mov	a,#(___str_51 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	program.c:569: printf("'@' -> Free all Heap & begin again\n\n\r");
	mov	a,#___str_52
	push	acc
	mov	a,#(___str_52 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	program.c:570: printf("'M' -> Go to Main Menu \n\n\r");
	mov	a,#___str_45
	push	acc
	mov	a,#(___str_45 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	program.c:571: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'create_new_buffer'
;------------------------------------------------------------
;buff_size                 Allocated with name '_create_new_buffer_buff_size_65537_113'
;buff                      Allocated with name '_create_new_buffer_buff_65537_113'
;------------------------------------------------------------
;	program.c:579: int create_new_buffer()
;	-----------------------------------------
;	 function create_new_buffer
;	-----------------------------------------
_create_new_buffer:
;	program.c:581: DEBUGPORT(0x06);
	mov	dpl,#0x06
	lcall	_dataout
;	program.c:584: if (program_stats.allocated_heap == program_stats.total_heap_size)
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
;	program.c:587: get_new_buff:
00103$:
;	program.c:588: printf("\n\rGive Valid Buffer Size(030-300):");
	mov	a,#___str_53
	push	acc
	mov	a,#(___str_53 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	program.c:589: buff_size = get_number(3);
	mov	dptr,#0x0003
	lcall	_get_number
	mov	r6,dpl
	mov	r7,dph
;	program.c:590: if (buff_size >= 30 && buff_size <= 300)
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
;	program.c:592: buff.buffer_start = malloc(buff_size);
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
	mov	dptr,#(_create_new_buffer_buff_65537_113 + 0x0002)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	program.c:593: if (buff.buffer_start == NULL)
	mov	a,r4
	orl	a,r5
	jnz	00105$
;	program.c:595: printf("Failed, give smaller buffer\n\r");
	mov	a,#___str_54
	push	acc
	mov	a,#(___str_54 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	ljmp	00106$
00105$:
;	program.c:599: printf("\n\n\r####SUCCESS, BUFFER Created####\n\n\r");
	push	ar7
	push	ar6
	mov	a,#___str_55
	push	acc
	mov	a,#(___str_55 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	program.c:601: program_stats.allocated_heap += buff_size;
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
;	program.c:602: buff.buff_size = buff_size;
	mov	dptr,#(_create_new_buffer_buff_65537_113 + 0x0008)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	program.c:603: buff.buffer_num = program_stats.total_buffers;
	mov	dptr,#(_program_stats + 0x0008)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_create_new_buffer_buff_65537_113
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	program.c:604: buff.buffer_end = buff.buffer_start + buff_size;
	mov	dptr,#(_create_new_buffer_buff_65537_113 + 0x0002)
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
	mov	dptr,#(_create_new_buffer_buff_65537_113 + 0x0005)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
;	program.c:605: buff.num_char = 0;
	mov	dptr,#(_create_new_buffer_buff_65537_113 + 0x000a)
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	program.c:607: buffers_array[program_stats.total_buffers] = buff;
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
	mov	a,#_create_new_buffer_buff_65537_113
	movx	@dptr,a
	mov	a,#(_create_new_buffer_buff_65537_113 >> 8)
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
;	program.c:608: program_stats.total_buffers += 1;
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
;	program.c:610: return 0;
	mov	dptr,#0x0000
;	program.c:616: no_heap_left:
	ret
00111$:
;	program.c:617: printf("No Heap Memory Left, Delete some buffers...\n\r");
	mov	a,#___str_56
	push	acc
	mov	a,#(___str_56 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	program.c:618: return 0;
	mov	dptr,#0x0000
;	program.c:619: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'create_initial_buffers'
;------------------------------------------------------------
;buff_size                 Allocated with name '_create_initial_buffers_buff_size_65537_119'
;buff                      Allocated with name '_create_initial_buffers_buff_65538_120'
;buff1                     Allocated with name '_create_initial_buffers_buff1_65538_120'
;------------------------------------------------------------
;	program.c:627: void create_initial_buffers()
;	-----------------------------------------
;	 function create_initial_buffers
;	-----------------------------------------
_create_initial_buffers:
;	program.c:629: DEBUGPORT(0x07);
	mov	dpl,#0x07
	lcall	_dataout
;	program.c:632: get_buff:
00101$:
;	program.c:633: printf("\n\rGive Valid Initial Buffer Size(0048-4800):");
	mov	a,#___str_57
	push	acc
	mov	a,#(___str_57 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	program.c:634: buff_size = get_number(4);
	mov	dptr,#0x0004
	lcall	_get_number
	mov	r6,dpl
	mov	r7,dph
;	program.c:638: if (buff_size >= 48 && buff_size <= 4800)
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
;	program.c:640: buff.buffer_start = malloc(buff_size);
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
	mov	dptr,#(_create_initial_buffers_buff_65538_120 + 0x0002)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	program.c:641: buff1.buffer_start = malloc(buff_size);
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
	mov	dptr,#(_create_initial_buffers_buff1_65538_120 + 0x0002)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	program.c:643: if (buff.buffer_start == NULL || buff1.buffer_start == NULL)
	mov	dptr,#(_create_initial_buffers_buff_65538_120 + 0x0002)
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
	mov	dptr,#(_create_initial_buffers_buff1_65538_120 + 0x0002)
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
;	program.c:645: printf("\n\r####FAIL, Please give a smaller buffer size####\n\n\r");
	mov	a,#___str_58
	push	acc
	mov	a,#(___str_58 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	program.c:647: if (buff.buffer_start != NULL)
	mov	dptr,#(_create_initial_buffers_buff_65538_120 + 0x0002)
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
;	program.c:648: free(buff.buffer_start);
	mov	dptr,#(_create_initial_buffers_buff_65538_120 + 0x0002)
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
;	program.c:649: if (buff1.buffer_start != NULL)
	mov	dptr,#(_create_initial_buffers_buff1_65538_120 + 0x0002)
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
;	program.c:650: free(buff1.buffer_start);
	mov	dptr,#(_create_initial_buffers_buff1_65538_120 + 0x0002)
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
;	program.c:652: goto get_buff;
	ljmp	00101$
00107$:
;	program.c:657: printf("\n\n\r####SUCCESS, INITIAL BUFFERS Created####\n\n\r");
	push	ar7
	push	ar6
	mov	a,#___str_59
	push	acc
	mov	a,#(___str_59 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	program.c:658: program_stats.allocated_heap = 2 * buff_size;
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
;	program.c:659: program_stats.total_heap_size = 4996;
	mov	dptr,#_program_stats
	mov	a,#0x84
	movx	@dptr,a
	mov	a,#0x13
	inc	dptr
	movx	@dptr,a
;	program.c:660: program_stats.total_buffers = 2;
	mov	dptr,#(_program_stats + 0x0008)
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	program.c:662: buff.buff_size = buff_size;
	mov	dptr,#(_create_initial_buffers_buff_65538_120 + 0x0008)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	program.c:663: buff1.buff_size = buff_size;
	mov	dptr,#(_create_initial_buffers_buff1_65538_120 + 0x0008)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	program.c:664: buff.buffer_num = 0;
	mov	dptr,#_create_initial_buffers_buff_65538_120
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	program.c:665: buff1.buffer_num = 1;
	mov	dptr,#_create_initial_buffers_buff1_65538_120
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	program.c:666: buff1.buffer_end = buff1.buffer_start + buff_size;
	mov	dptr,#(_create_initial_buffers_buff1_65538_120 + 0x0002)
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
	mov	dptr,#(_create_initial_buffers_buff1_65538_120 + 0x0005)
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	program.c:667: buff.buffer_end = buff.buffer_start + buff_size;
	mov	dptr,#(_create_initial_buffers_buff_65538_120 + 0x0002)
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
	mov	dptr,#(_create_initial_buffers_buff_65538_120 + 0x0005)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
;	program.c:668: buff.num_char = 0;
	mov	dptr,#(_create_initial_buffers_buff_65538_120 + 0x000a)
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	program.c:669: buff1.num_char = 0;
	mov	dptr,#(_create_initial_buffers_buff1_65538_120 + 0x000a)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	program.c:671: buffers_array[0] = buff;
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_create_initial_buffers_buff_65538_120
	movx	@dptr,a
	mov	a,#(_create_initial_buffers_buff_65538_120 >> 8)
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
;	program.c:672: buffers_array[1] = buff1;
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_create_initial_buffers_buff1_65538_120
	movx	@dptr,a
	mov	a,#(_create_initial_buffers_buff1_65538_120 >> 8)
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
;	program.c:676: goto get_buff;
;	program.c:677: }
	ljmp	___memcpy
;------------------------------------------------------------
;Allocation info for local variables in function 'enter_chars'
;------------------------------------------------------------
;rec                       Allocated with name '_enter_chars_rec_65537_125'
;------------------------------------------------------------
;	program.c:685: void enter_chars()
;	-----------------------------------------
;	 function enter_chars
;	-----------------------------------------
_enter_chars:
;	program.c:687: DEBUGPORT(0x08);
	mov	dpl,#0x08
	lcall	_dataout
;	program.c:688: print_heap_menu();
	lcall	_print_heap_menu
;	program.c:690: while (1)
00126$:
;	program.c:692: rec = getchar();
	lcall	_getchar
	mov	r6,dpl
	mov	r7,dph
;	program.c:693: if (rec > 0x60 && rec < 0x7B)
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
;	program.c:697: if (buffers_array[0].num_char < buffers_array[0].buff_size)
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
;	program.c:699: *(buffers_array[0].buffer_start + buffers_array[0].num_char) = rec;
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
;	program.c:700: buffers_array[0].num_char += 1;
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
;	program.c:702: program_stats.all_char_count += 1;
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
;	program.c:703: program_stats.storage_char_count += 1;
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
;	program.c:705: else if (rec == 0x3F)
	cjne	r6,#0x3f,00119$
	cjne	r7,#0x00,00119$
;	program.c:708: print_heap_stats();
	lcall	_print_heap_stats
;	program.c:709: print_all_buffers();
	lcall	_print_all_buffers
;	program.c:710: dump_buff_zero_ascii();
	lcall	_dump_buff_zero_ascii
;	program.c:711: program_stats.all_char_count = 0;
	mov	dptr,#(_program_stats + 0x0004)
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	program.c:712: program_stats.storage_char_count = 0;
	mov	dptr,#(_program_stats + 0x0006)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	program.c:713: print_heap_menu();
	lcall	_print_heap_menu
	ljmp	00126$
00119$:
;	program.c:715: else if (rec == 0x3D)
	cjne	r6,#0x3d,00116$
	cjne	r7,#0x00,00116$
;	program.c:718: dump_buff_zero_hex();
	lcall	_dump_buff_zero_hex
;	program.c:719: print_heap_menu();
	lcall	_print_heap_menu
	ljmp	00126$
00116$:
;	program.c:721: else if (rec == 0x40)
	cjne	r6,#0x40,00113$
	cjne	r7,#0x00,00113$
;	program.c:724: at_clear_all_buffers();
	lcall	_at_clear_all_buffers
;	program.c:725: print_heap_menu();
	lcall	_print_heap_menu
	ljmp	00126$
00113$:
;	program.c:727: else if (rec == 0x2B)
	cjne	r6,#0x2b,00110$
	cjne	r7,#0x00,00110$
;	program.c:730: create_new_buffer();
	lcall	_create_new_buffer
;	program.c:731: print_heap_menu();
	lcall	_print_heap_menu
	ljmp	00126$
00110$:
;	program.c:733: else if (rec == 0x2D)
	cjne	r6,#0x2d,00107$
	cjne	r7,#0x00,00107$
;	program.c:736: delete_buffer();
	lcall	_delete_buffer
;	program.c:737: print_heap_menu();
	lcall	_print_heap_menu
	ljmp	00126$
00107$:
;	program.c:739: else if (rec == 0x4D)
	cjne	r6,#0x4d,00104$
	cjne	r7,#0x00,00104$
;	program.c:741: main_menu();
	lcall	_main_menu
	ljmp	00126$
00104$:
;	program.c:745: program_stats.all_char_count += 1;
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
;	program.c:748: }
	ljmp	00126$
;------------------------------------------------------------
;Allocation info for local variables in function 'dump_buff_zero_ascii'
;------------------------------------------------------------
;j                         Allocated with name '_dump_buff_zero_ascii_j_65537_137'
;i                         Allocated with name '_dump_buff_zero_ascii_i_196609_139'
;------------------------------------------------------------
;	program.c:756: void dump_buff_zero_ascii()
;	-----------------------------------------
;	 function dump_buff_zero_ascii
;	-----------------------------------------
_dump_buff_zero_ascii:
;	program.c:758: DEBUGPORT(0x09);
	mov	dpl,#0x09
	lcall	_dataout
;	program.c:759: int j = 64;
	mov	dptr,#_dump_buff_zero_ascii_j_65537_137
	mov	a,#0x40
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	program.c:760: if (buffers_array[0].num_char > 0)
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
;	program.c:762: printf("\n\n\r***********Buffer-0-Contents*********** \n\r");
	mov	a,#___str_60
	push	acc
	mov	a,#(___str_60 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	program.c:763: for (int i = 0; i < buffers_array[0].num_char; i++)
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
;	program.c:765: if (j == 64)
	mov	dptr,#_dump_buff_zero_ascii_j_65537_137
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	cjne	r4,#0x40,00102$
	cjne	r5,#0x00,00102$
;	program.c:767: printf("\n\r");
	push	ar7
	push	ar6
	mov	a,#___str_61
	push	acc
	mov	a,#(___str_61 >> 8)
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
;	program.c:769: putchar(*(buffers_array[0].buffer_start + i));
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
;	program.c:770: j--;
	mov	dptr,#_dump_buff_zero_ascii_j_65537_137
	movx	a,@dptr
	add	a,#0xff
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xff
	mov	r5,a
	mov	dptr,#_dump_buff_zero_ascii_j_65537_137
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	program.c:771: if (j == 0)
	mov	dptr,#_dump_buff_zero_ascii_j_65537_137
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00111$
;	program.c:772: j = 64;
	mov	dptr,#_dump_buff_zero_ascii_j_65537_137
	mov	a,#0x40
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
00111$:
;	program.c:763: for (int i = 0; i < buffers_array[0].num_char; i++)
	inc	r6
	cjne	r6,#0x00,00140$
	inc	r7
00140$:
	ljmp	00110$
00105$:
;	program.c:774: buffers_array[0].num_char = 0;
	mov	dptr,#(_buffers_array + 0x000a)
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	program.c:775: printf("\n\n\r");
	mov	a,#___str_62
	push	acc
	mov	a,#(___str_62 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	ret
00107$:
;	program.c:779: printf("Buffer0 is Empty....\n\r");
	mov	a,#___str_63
	push	acc
	mov	a,#(___str_63 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	program.c:781: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dump_buff_zero_hex'
;------------------------------------------------------------
;j                         Allocated with name '_dump_buff_zero_hex_j_131073_145'
;i                         Allocated with name '_dump_buff_zero_hex_i_196609_146'
;------------------------------------------------------------
;	program.c:788: void dump_buff_zero_hex()
;	-----------------------------------------
;	 function dump_buff_zero_hex
;	-----------------------------------------
_dump_buff_zero_hex:
;	program.c:790: DEBUGPORT(0xA);
	mov	dpl,#0x0a
	lcall	_dataout
;	program.c:791: if (buffers_array[0].num_char > 0)
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
;	program.c:793: printf("\n\r-------------------------HEXDUMP--------------------------------");
	mov	a,#___str_64
	push	acc
	mov	a,#(___str_64 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	program.c:794: printf("\n\r    ADDR: +0 +1 +2 +3 +4 +5 +6 +7 +8 +9 +A +B +C +D +E +F \n\r");
	mov	a,#___str_65
	push	acc
	mov	a,#(___str_65 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	program.c:795: int j = 16;
	mov	dptr,#_dump_buff_zero_hex_j_131073_145
	mov	a,#0x10
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	program.c:797: for (int i = 0; i < buffers_array[0].num_char; i++)
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
;	program.c:799: if (j == 16)
	mov	dptr,#_dump_buff_zero_hex_j_131073_145
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	cjne	r4,#0x10,00102$
	cjne	r5,#0x00,00102$
;	program.c:801: printf("\n\r%p: ", (buffers_array[0].buffer_start + i));
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
	mov	a,#___str_66
	push	acc
	mov	a,#(___str_66 >> 8)
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
;	program.c:803: printf("%x ", *(buffers_array[0].buffer_start + i));
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
	mov	a,#___str_67
	push	acc
	mov	a,#(___str_67 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
;	program.c:804: j--;
	mov	dptr,#_dump_buff_zero_hex_j_131073_145
	movx	a,@dptr
	add	a,#0xff
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xff
	mov	r5,a
	mov	dptr,#_dump_buff_zero_hex_j_131073_145
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	program.c:805: if (j == 0)
	mov	dptr,#_dump_buff_zero_hex_j_131073_145
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00111$
;	program.c:806: j = 16;
	mov	dptr,#_dump_buff_zero_hex_j_131073_145
	mov	a,#0x10
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
00111$:
;	program.c:797: for (int i = 0; i < buffers_array[0].num_char; i++)
	inc	r6
	cjne	r6,#0x00,00140$
	inc	r7
00140$:
	ljmp	00110$
00105$:
;	program.c:808: printf("\n\n\r");
	mov	a,#___str_62
	push	acc
	mov	a,#(___str_62 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	ret
00107$:
;	program.c:812: printf("Buffer 0 is empty...\n\r");
	mov	a,#___str_68
	push	acc
	mov	a,#(___str_68 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	program.c:814: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print_heap_stats'
;------------------------------------------------------------
;	program.c:821: void print_heap_stats()
;	-----------------------------------------
;	 function print_heap_stats
;	-----------------------------------------
_print_heap_stats:
;	program.c:823: DEBUGPORT(0xB);
	mov	dpl,#0x0b
	lcall	_dataout
;	program.c:824: printf("\n\r****************HEAP*STATS*************\n\r");
	mov	a,#___str_69
	push	acc
	mov	a,#(___str_69 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	program.c:825: printf("Total Heap Size: %d \n\r", program_stats.total_heap_size);
	mov	dptr,#_program_stats
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar6
	push	ar7
	mov	a,#___str_70
	push	acc
	mov	a,#(___str_70 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	program.c:826: printf("Allocated Heap Size: %d \n\r", program_stats.allocated_heap);
	mov	dptr,#(_program_stats + 0x0002)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar6
	push	ar7
	mov	a,#___str_71
	push	acc
	mov	a,#(___str_71 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	program.c:827: printf("All Chars: %d \n\r", program_stats.all_char_count);
	mov	dptr,#(_program_stats + 0x0004)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar6
	push	ar7
	mov	a,#___str_72
	push	acc
	mov	a,#(___str_72 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	program.c:828: printf("Storage Chars: %d \n\r", program_stats.storage_char_count);
	mov	dptr,#(_program_stats + 0x0006)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar6
	push	ar7
	mov	a,#___str_73
	push	acc
	mov	a,#(___str_73 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	program.c:829: printf("Total Buffers: %d \n\r", program_stats.total_buffers);
	mov	dptr,#(_program_stats + 0x0008)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar6
	push	ar7
	mov	a,#___str_74
	push	acc
	mov	a,#(___str_74 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	program.c:830: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print_all_buffers'
;------------------------------------------------------------
;i                         Allocated with name '_print_all_buffers_i_131072_152'
;------------------------------------------------------------
;	program.c:837: void print_all_buffers()
;	-----------------------------------------
;	 function print_all_buffers
;	-----------------------------------------
_print_all_buffers:
;	program.c:839: DEBUGPORT(0xC)
	mov	dpl,#0x0c
	lcall	_dataout
;	program.c:840: for (int i = 0; i < program_stats.total_buffers; i++)
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
;	program.c:842: printf("****************BUFFER*%d***************\n\r", i);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_75
	push	acc
	mov	a,#(___str_75 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
;	program.c:843: printf("Buffer#: %d \n\r", buffers_array[i].buffer_num);
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
	mov	a,#___str_76
	push	acc
	mov	a,#(___str_76 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar4
	pop	ar5
;	program.c:844: printf("BufferStart: %p \n\r", buffers_array[i].buffer_start);
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
	mov	a,#___str_77
	push	acc
	mov	a,#(___str_77 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar4
	pop	ar5
;	program.c:845: printf("BufferEnd: %p \n\r", buffers_array[i].buffer_end);
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
	mov	a,#___str_78
	push	acc
	mov	a,#(___str_78 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar4
	pop	ar5
;	program.c:846: printf("BufferSize: %d \n\r", buffers_array[i].buff_size);
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
	mov	a,#___str_79
	push	acc
	mov	a,#(___str_79 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar4
	pop	ar5
;	program.c:847: printf("TotalUsed: %d \n\r", buffers_array[i].num_char);
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
	mov	a,#___str_80
	push	acc
	mov	a,#(___str_80 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
;	program.c:840: for (int i = 0; i < program_stats.total_buffers; i++)
	inc	r6
	cjne	r6,#0x00,00117$
	inc	r7
00117$:
	ljmp	00103$
00101$:
;	program.c:849: printf("***************************************\n\r");
	mov	a,#___str_81
	push	acc
	mov	a,#(___str_81 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	program.c:850: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_number'
;------------------------------------------------------------
;total_chars               Allocated with name '_get_number_total_chars_65536_154'
;rec                       Allocated with name '_get_number_rec_65537_156'
;num                       Allocated with name '_get_number_num_65537_156'
;i                         Allocated with name '_get_number_i_131073_157'
;------------------------------------------------------------
;	program.c:857: int get_number(int total_chars)
;	-----------------------------------------
;	 function get_number
;	-----------------------------------------
_get_number:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_get_number_total_chars_65536_154
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	program.c:859: DEBUGPORT(0xD);
	mov	dpl,#0x0d
	lcall	_dataout
;	program.c:861: int num = 0;
	mov	dptr,#_get_number_num_65537_156
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	program.c:862: for (int i = total_chars; i > 0; i--)
	mov	dptr,#_get_number_total_chars_65536_154
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
;	program.c:864: rec = getchar();
	push	ar7
	push	ar6
	lcall	_getchar
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
;	program.c:866: if (rec <= 0x39 && rec >= 0x30)
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
;	program.c:868: num += ((rec - 0x30) * get_num_helper(i - 1));
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
	mov	dptr,#_get_number_num_65537_156
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_get_number_num_65537_156
	mov	a,r4
	add	a,r2
	movx	@dptr,a
	mov	a,r5
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	sjmp	00108$
00102$:
;	program.c:872: printf("ERR,Numbers ONLY!\n\r");
	mov	a,#___str_82
	push	acc
	mov	a,#(___str_82 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	program.c:873: return -1;
	mov	dptr,#0xffff
	ret
00108$:
;	program.c:862: for (int i = total_chars; i > 0; i--)
	dec	r6
	cjne	r6,#0xff,00130$
	dec	r7
00130$:
	ljmp	00107$
00105$:
;	program.c:876: return num;
	mov	dptr,#_get_number_num_65537_156
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
;	program.c:877: }
	mov	dpl,r6
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_num_helper'
;------------------------------------------------------------
;times                     Allocated with name '_get_num_helper_times_65536_161'
;num                       Allocated with name '_get_num_helper_num_65536_162'
;i                         Allocated with name '_get_num_helper_i_131072_163'
;------------------------------------------------------------
;	program.c:884: int get_num_helper(int times)
;	-----------------------------------------
;	 function get_num_helper
;	-----------------------------------------
_get_num_helper:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_get_num_helper_times_65536_161
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	program.c:886: int num = 1;
	mov	dptr,#_get_num_helper_num_65536_162
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	program.c:888: for (int i = 0; i < times; i++)
	mov	dptr,#_get_num_helper_times_65536_161
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
;	program.c:890: num = num * 10;
	mov	dptr,#_get_num_helper_num_65536_162
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
	mov	dptr,#_get_num_helper_num_65536_162
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
;	program.c:888: for (int i = 0; i < times; i++)
	inc	r4
	cjne	r4,#0x00,00106$
	inc	r5
	sjmp	00106$
00101$:
;	program.c:892: if (times == 0)
	mov	a,r6
	orl	a,r7
	jnz	00103$
;	program.c:893: return 1;
	mov	dptr,#0x0001
	ret
00103$:
;	program.c:895: return num;
	mov	dptr,#_get_num_helper_num_65536_162
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
;	program.c:896: }
	mov	dpl,r6
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated with name '_putchar_c_65536_165'
;------------------------------------------------------------
;	program.c:909: int putchar(int c)
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_putchar_c_65536_165
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	program.c:911: while ((SCON & 0x02) == 0)
00101$:
	mov	a,_SCON
	jnb	acc.1,00101$
;	program.c:913: TI = 0;
;	assignBit
	clr	_TI
;	program.c:914: SBUF = c;
	mov	dptr,#_putchar_c_65536_165
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	_SBUF,r6
;	program.c:915: return 0;
	mov	dptr,#0x0000
;	program.c:916: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;	program.c:923: int getchar()
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	program.c:925: while (RI == 0)
00101$:
;	program.c:927: RI = 0;
;	assignBit
	jbc	_RI,00140$
	sjmp	00101$
00140$:
;	program.c:929: if (SBUF != 0x3F && SBUF != 0x3D && SBUF != 0x40 && SBUF != 0x2B && SBUF != 0x2D)
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
;	program.c:930: putchar(SBUF);
	mov	r6,_SBUF
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	_putchar
00105$:
;	program.c:931: return SBUF;
	mov	r6,_SBUF
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
;	program.c:932: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dataout'
;------------------------------------------------------------
;data                      Allocated with name '_dataout_data_65536_168'
;------------------------------------------------------------
;	program.c:939: void dataout(unsigned char data)
;	-----------------------------------------
;	 function dataout
;	-----------------------------------------
_dataout:
	mov	a,dpl
	mov	dptr,#_dataout_data_65536_168
	movx	@dptr,a
;	program.c:941: DEBUG_LOC = data;
	movx	a,@dptr
	mov	dptr,#_DEBUG_LOC
	movx	@dptr,a
;	program.c:942: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'asm_call'
;------------------------------------------------------------
;sent_from_asm             Allocated with name '_asm_call_sent_from_asm_65536_170'
;------------------------------------------------------------
;	program.c:944: void asm_call(unsigned char sent_from_asm)
;	-----------------------------------------
;	 function asm_call
;	-----------------------------------------
_asm_call:
	mov	a,dpl
	mov	dptr,#_asm_call_sent_from_asm_65536_170
	movx	@dptr,a
;	program.c:946: printf("\n\n\r This function was called from assembly, character sent from there -> %c\n\r", sent_from_asm);
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	a,#___str_83
	push	acc
	mov	a,#(___str_83 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	program.c:947: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_sdcc_external_startup'
;------------------------------------------------------------
;	program.c:954: _sdcc_external_startup()
;	-----------------------------------------
;	 function _sdcc_external_startup
;	-----------------------------------------
__sdcc_external_startup:
;	program.c:956: CKCON0 |= 0x1;
	orl	_CKCON0,#0x01
;	program.c:958: _AUXR = 0xC;
	mov	__AUXR,#0x0c
;	program.c:960: SCON = 0x42;
	mov	_SCON,#0x42
;	program.c:962: PCON = 0x80;
	mov	_PCON,#0x80
;	program.c:964: TH1 = 255;
	mov	_TH1,#0xff
;	program.c:965: TL1 = 255;
	mov	_TL1,#0xff
;	program.c:967: TMOD = 0x20;
	mov	_TMOD,#0x20
;	program.c:969: REN = 1;
;	assignBit
	setb	_REN
;	program.c:971: TR1 = 1;
;	assignBit
	setb	_TR1
;	program.c:973: EA = 1;
;	assignBit
	setb	_EA
;	program.c:975: EC = 1;
;	assignBit
	setb	_EC
;	program.c:976: return 0;
	mov	dptr,#0x0000
;	program.c:977: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x0a
	.db 0x0d
	.ascii " HELLO! Started in X2 Mode "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "Hello, In PCA Demo mode "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "Please make a valid choice "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "Please 'E' to exit or Reset "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "Captured Value CCPL -> %d CCPH -> %d "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "Timer Interrupt"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "Going to main menu.. "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "Setting P1.3 as falling edge detector, enabling PCA interrup"
	.ascii "t "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "Entering Software Timer Mode "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "Entering High Speed Toggle Mode, P1.5 "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "Entering PWM Mode, 25 percent Duty Cycle P1.6"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii "Enabling Watchdog Timer.."
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii "Currently Watchdog is being serviced"
	.db 0x0a
	.db 0x0d
	.ascii "Press 'S' to stop and generate a reset "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.ascii "Enabling Hardware Watchdog Timer.."
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii "Currently Hardware Watchdog is being serviced"
	.db 0x0a
	.db 0x0d
	.ascii "Press 'S' to stop watchdog service and generate a reset in ~"
	.ascii "1s "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.ascii "Entering Idle, Will Exit on external interrupt 0"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.ascii "Woke up from Idle/Power down, going to main menu "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.ascii "Entering power down, Will Exit on external interrupt 0"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.ascii "Changing Clock prescalar to go to lowest frequency in X2 Mod"
	.ascii "e.."
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.ascii "This UART Session will stop working..."
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
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
___str_21:
	.ascii "'H' -> Enter Heap Demo Mode "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.ascii "'P' -> Enter PCA Demo Mode "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.ascii "'A' -> Assembly C Mix "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_24:
	.ascii "'E' -> EEPROM Mode "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_25:
	.ascii "loc ->%d val is -> %x "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_26:
	.db 0x0a
	.db 0x0d
	.ascii " Give param 1, 8bit "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_27:
	.db 0x0a
	.db 0x0d
	.ascii " Give param 2, 8bit "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_28:
	.db 0x0a
	.db 0x0d
	.ascii " Give param 3, 8bit "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_29:
	.db 0x0a
	.db 0x0d
	.ascii " RESULT-> param3<Mod>param2 * param1 = %d "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_30:
	.db 0x0a
	.db 0x0d
	.ascii " Going back to main menu.. "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_31:
	.ascii "Buffer %d Freed ...."
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_32:
	.ascii "Let's begin again.."
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_33:
	.db 0x0a
	.db 0x0d
	.ascii "Give Valid Buffer Number to delete(1-%d) in 3 digits"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_34:
	.ascii "Buffer %d Successfully Deleted.. "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_35:
	.db 0x0a
	.db 0x0a
	.db 0x0d
	.ascii "^^^^^^^^^^^^^^^^^^^-PCA-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ "
	.db 0x0a
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_36:
	.ascii "'F' -> Falling Edge Capture Mode"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_37:
	.ascii "'S' -> Software Timer Mode"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_38:
	.ascii "'H' -> High Speed Output Mode"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_39:
	.ascii "'P' -> PWM Mode "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_40:
	.ascii "'W' -> Watchdog Timer Mode"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_41:
	.ascii "'I' -> Idle Mode with PWM"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_42:
	.ascii "'L' -> Change Prescalar to lowest frequency"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_43:
	.ascii "'U' -> Hardware Watchdog Timer"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_44:
	.ascii "'D' -> Power Down Mode"
	.db 0x0a
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_45:
	.ascii "'M' -> Go to Main Menu "
	.db 0x0a
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_46:
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
___str_47:
	.ascii "You can enter characters or use commands from below "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_48:
	.ascii "'?' -> Show heap status, dump & clear Buffer 0 "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_49:
	.ascii "'+' -> Add a new Buffer"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_50:
	.ascii "'-' -> Delete existing Buffer"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_51:
	.ascii "'=' -> Dump Buffer 0 in hex"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_52:
	.ascii "'@' -> Free all Heap & begin again"
	.db 0x0a
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_53:
	.db 0x0a
	.db 0x0d
	.ascii "Give Valid Buffer Size(030-300):"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_54:
	.ascii "Failed, give smaller buffer"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_55:
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
___str_56:
	.ascii "No Heap Memory Left, Delete some buffers..."
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_57:
	.db 0x0a
	.db 0x0d
	.ascii "Give Valid Initial Buffer Size(0048-4800):"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_58:
	.db 0x0a
	.db 0x0d
	.ascii "####FAIL, Please give a smaller buffer size####"
	.db 0x0a
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_59:
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
___str_60:
	.db 0x0a
	.db 0x0a
	.db 0x0d
	.ascii "***********Buffer-0-Contents*********** "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_61:
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_62:
	.db 0x0a
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_63:
	.ascii "Buffer0 is Empty...."
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_64:
	.db 0x0a
	.db 0x0d
	.ascii "-------------------------HEXDUMP----------------------------"
	.ascii "----"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_65:
	.db 0x0a
	.db 0x0d
	.ascii "    ADDR: +0 +1 +2 +3 +4 +5 +6 +7 +8 +9 +A +B +C +D +E +F "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_66:
	.db 0x0a
	.db 0x0d
	.ascii "%p: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_67:
	.ascii "%x "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_68:
	.ascii "Buffer 0 is empty..."
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_69:
	.db 0x0a
	.db 0x0d
	.ascii "****************HEAP*STATS*************"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_70:
	.ascii "Total Heap Size: %d "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_71:
	.ascii "Allocated Heap Size: %d "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_72:
	.ascii "All Chars: %d "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_73:
	.ascii "Storage Chars: %d "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_74:
	.ascii "Total Buffers: %d "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_75:
	.ascii "****************BUFFER*%d***************"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_76:
	.ascii "Buffer#: %d "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_77:
	.ascii "BufferStart: %p "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_78:
	.ascii "BufferEnd: %p "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_79:
	.ascii "BufferSize: %d "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_80:
	.ascii "TotalUsed: %d "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_81:
	.ascii "***************************************"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_82:
	.ascii "ERR,Numbers ONLY!"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_83:
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
__xinit__global_var_test:
	.db #0x02	; 2
__xinit__watchdog_flag:
	.byte #0x00, #0x00	;  0
	.area CABS    (ABS,CODE)
