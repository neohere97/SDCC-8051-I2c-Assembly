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
	.globl _transmit_buffer_PARM_2
	.globl _transmit_buffer
	.globl _blink_transmit
	.globl _get_number
	.globl _get_num_helper
	.globl _delay
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
_transmit_buffer_PARM_2:
	.ds 2
_transmit_buffer_c_65536_50:
	.ds 3
_blink_transmit_letter_A_65536_54:
	.ds 2
_get_number_num_65536_57:
	.ds 2
_get_num_helper_times_65536_62:
	.ds 2
_get_num_helper_num_65536_63:
	.ds 2
_putchar_c_65536_70:
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
;rec                       Allocated with name '_main_rec_65536_47'
;p                         Allocated with name '_main_p_65536_47'
;------------------------------------------------------------
;	program.c:21: void main(void)
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
;	program.c:23: int rec = get_number();
	lcall	_get_number
;	program.c:24: unsigned char *p = malloc(rec);
	mov	r6,dpl
	mov  r7,dph
	push	ar7
	push	ar6
	lcall	_malloc
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	ar3,r5
	mov	r5,#0x00
;	program.c:26: if(p == NULL){
	mov	a,r4
	orl	a,r3
	jnz	00102$
;	program.c:27: printf("MALLOC FAILED\n\r");
	push	ar5
	push	ar4
	push	ar3
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
	pop	ar3
	pop	ar4
	pop	ar5
	sjmp	00103$
00102$:
;	program.c:29: *(p+rec) = 0x43;
	mov	a,r6
	add	a,r4
	mov	r6,a
	mov	a,r7
	addc	a,r3
	mov	r7,a
	mov	ar2,r5
	mov	dpl,r6
	mov	dph,r7
	mov	b,r2
	mov	a,#0x43
	lcall	__gptrput
;	program.c:30: putchar(*(p+rec));
	mov	dpl,r6
	mov	dph,r7
	mov	b,r2
	lcall	__gptrget
	mov	r6,a
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar5
	push	ar4
	push	ar3
	lcall	_putchar
;	program.c:31: putchar(0xD);
	mov	dptr,#0x000d
	lcall	_putchar
;	program.c:32: putchar(0xA);
	mov	dptr,#0x000a
	lcall	_putchar
	pop	ar3
	pop	ar4
	pop	ar5
00103$:
;	program.c:36: free(p);    
	mov	dpl,r4
	mov	dph,r3
	mov	b,r5
;	program.c:37: }
	ljmp	_free
;------------------------------------------------------------
;Allocation info for local variables in function 'transmit_buffer'
;------------------------------------------------------------
;len                       Allocated with name '_transmit_buffer_PARM_2'
;c                         Allocated with name '_transmit_buffer_c_65536_50'
;i                         Allocated with name '_transmit_buffer_i_131072_52'
;------------------------------------------------------------
;	program.c:39: void transmit_buffer(unsigned char *c, int len)
;	-----------------------------------------
;	 function transmit_buffer
;	-----------------------------------------
_transmit_buffer:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_transmit_buffer_c_65536_50
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	program.c:42: for (int i = 0; i < len; i++)
	mov	dptr,#_transmit_buffer_c_65536_50
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_transmit_buffer_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	r1,#0x00
	mov	r2,#0x00
00103$:
	clr	c
	mov	a,r1
	subb	a,r3
	mov	a,r2
	xrl	a,#0x80
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00101$
;	program.c:44: putchar(*(c + i));
	push	ar3
	push	ar4
	mov	a,r1
	add	a,r5
	mov	r0,a
	mov	a,r2
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	mov	r4,#0x00
	mov	dpl,r0
	mov	dph,r4
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_putchar
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	program.c:42: for (int i = 0; i < len; i++)
	inc	r1
	cjne	r1,#0x00,00117$
	inc	r2
00117$:
	pop	ar4
	pop	ar3
	sjmp	00103$
00101$:
;	program.c:47: blink_transmit();
;	program.c:48: }
	ljmp	_blink_transmit
;------------------------------------------------------------
;Allocation info for local variables in function 'blink_transmit'
;------------------------------------------------------------
;letter_A                  Allocated with name '_blink_transmit_letter_A_65536_54'
;------------------------------------------------------------
;	program.c:50: void blink_transmit()
;	-----------------------------------------
;	 function blink_transmit
;	-----------------------------------------
_blink_transmit:
;	program.c:52: int letter_A = 0x41;
	mov	dptr,#_blink_transmit_letter_A_65536_54
	mov	a,#0x41
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	program.c:53: while (1)
00104$:
;	program.c:55: P1 = 0xff; // Turn ON all LED's connected to Port1
	mov	_P1,#0xff
;	program.c:56: putchar(letter_A++);
	mov	dptr,#_blink_transmit_letter_A_65536_54
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_blink_transmit_letter_A_65536_54
	mov	a,#0x01
	add	a,r6
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_putchar
;	program.c:57: putchar(0x20);
	mov	dptr,#0x0020
	lcall	_putchar
;	program.c:58: delay();
	lcall	_delay
;	program.c:59: P1 = 0x00; // Turn OFF all LED's connected to Port1
	mov	_P1,#0x00
;	program.c:60: putchar(letter_A++);
	mov	dptr,#_blink_transmit_letter_A_65536_54
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_blink_transmit_letter_A_65536_54
	mov	a,#0x01
	add	a,r6
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_putchar
;	program.c:61: putchar(0x20);
	mov	dptr,#0x0020
	lcall	_putchar
;	program.c:62: delay();
	lcall	_delay
;	program.c:63: if (letter_A >= 0x5A)
	mov	dptr,#_blink_transmit_letter_A_65536_54
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x5a
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00104$
;	program.c:65: letter_A = 0x41;
	mov	dptr,#_blink_transmit_letter_A_65536_54
	mov	a,#0x41
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	program.c:66: putchar(0xD);
	mov	dptr,#0x000d
	lcall	_putchar
;	program.c:67: putchar(0xA);
	mov	dptr,#0x000a
	lcall	_putchar
;	program.c:70: }
	ljmp	00104$
;------------------------------------------------------------
;Allocation info for local variables in function 'get_number'
;------------------------------------------------------------
;rec                       Allocated with name '_get_number_rec_65536_57'
;i                         Allocated with name '_get_number_i_65536_57'
;num                       Allocated with name '_get_number_num_65536_57'
;------------------------------------------------------------
;	program.c:72: int get_number()
;	-----------------------------------------
;	 function get_number
;	-----------------------------------------
_get_number:
;	program.c:76: int num = 0;   
	mov	dptr,#_get_number_num_65536_57
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	program.c:77: for (i = 4; i > 0; i--)
	mov	r6,#0x04
	mov	r7,#0x00
00106$:
;	program.c:79: rec = getchar();
	push	ar7
	push	ar6
	lcall	_getchar
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
;	program.c:80: if (rec <= 0x39 && rec >= 0x30)
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
;	program.c:82: num += ((rec - 0x30) * get_num_helper(i-1));
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
	mov	dptr,#_get_number_num_65536_57
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_get_number_num_65536_57
	mov	a,r4
	add	a,r2
	movx	@dptr,a
	mov	a,r5
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	sjmp	00107$
00102$:
;	program.c:86: printf("ERR,Enter only Number\n\r");
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
;	program.c:87: return -1;
	mov	dptr,#0xffff
	ret
00107$:
;	program.c:77: for (i = 4; i > 0; i--)
	dec	r6
	cjne	r6,#0xff,00128$
	dec	r7
00128$:
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00129$
	ljmp	00106$
00129$:
;	program.c:90: return num;
	mov	dptr,#_get_number_num_65536_57
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
;	program.c:91: }
	mov	dpl,r6
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_num_helper'
;------------------------------------------------------------
;times                     Allocated with name '_get_num_helper_times_65536_62'
;num                       Allocated with name '_get_num_helper_num_65536_63'
;i                         Allocated with name '_get_num_helper_i_131072_64'
;------------------------------------------------------------
;	program.c:93: int get_num_helper(int times)
;	-----------------------------------------
;	 function get_num_helper
;	-----------------------------------------
_get_num_helper:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_get_num_helper_times_65536_62
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	program.c:95: int num=1;
	mov	dptr,#_get_num_helper_num_65536_63
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	program.c:96: for (int i = 0; i < times; i++)
	mov	dptr,#_get_num_helper_times_65536_62
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
;	program.c:98: num = num * 10;
	mov	dptr,#_get_num_helper_num_65536_63
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
	mov	dptr,#_get_num_helper_num_65536_63
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
;	program.c:96: for (int i = 0; i < times; i++)
	inc	r4
	cjne	r4,#0x00,00106$
	inc	r5
	sjmp	00106$
00101$:
;	program.c:100: if (times == 0)
	mov	a,r6
	orl	a,r7
	jnz	00103$
;	program.c:101: return 1;
	mov	dptr,#0x0001
	ret
00103$:
;	program.c:103: return num;
	mov	dptr,#_get_num_helper_num_65536_63
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
;	program.c:104: }
	mov	dpl,r6
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;i                         Allocated with name '_delay_i_65536_67'
;j                         Allocated with name '_delay_j_65536_67'
;------------------------------------------------------------
;	program.c:106: void delay(void)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
;	program.c:109: for (i = 0; i < 0xcc; i++)
	mov	r6,#0x00
	mov	r7,#0x00
;	program.c:110: for (j = 0; j < 0xff; j++)
00110$:
	mov	r4,#0xff
	mov	r5,#0x00
00105$:
	dec	r4
	cjne	r4,#0xff,00124$
	dec	r5
00124$:
	mov	a,r4
	orl	a,r5
	jnz	00105$
;	program.c:109: for (i = 0; i < 0xcc; i++)
	inc	r6
	cjne	r6,#0x00,00126$
	inc	r7
00126$:
	clr	c
	mov	a,r6
	subb	a,#0xcc
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00110$
;	program.c:112: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated with name '_putchar_c_65536_70'
;------------------------------------------------------------
;	program.c:114: int putchar(int c)
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_putchar_c_65536_70
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	program.c:116: while ((SCON & 0x02) == 0)
00101$:
	mov	a,_SCON
	jnb	acc.1,00101$
;	program.c:118: TI = 0;
;	assignBit
	clr	_TI
;	program.c:119: SBUF = c;
	mov	dptr,#_putchar_c_65536_70
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	_SBUF,r6
;	program.c:120: return 0;
	mov	dptr,#0x0000
;	program.c:121: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;	program.c:123: int getchar()
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	program.c:125: while (RI == 0)
00101$:
;	program.c:127: RI = 0;
;	assignBit
	jbc	_RI,00114$
	sjmp	00101$
00114$:
;	program.c:128: putchar(SBUF);
	mov	r6,_SBUF
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	_putchar
;	program.c:129: return SBUF;
	mov	r6,_SBUF
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
;	program.c:130: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_sdcc_external_startup'
;------------------------------------------------------------
;	program.c:132: _sdcc_external_startup()
;	-----------------------------------------
;	 function _sdcc_external_startup
;	-----------------------------------------
__sdcc_external_startup:
;	program.c:134: _AUXR = 0xC;
	mov	__AUXR,#0x0c
;	program.c:136: SCON = 0x42;
	mov	_SCON,#0x42
;	program.c:138: PCON = 0x80;
	mov	_PCON,#0x80
;	program.c:140: TH1 = 255;
	mov	_TH1,#0xff
;	program.c:141: TL1 = 255;
	mov	_TL1,#0xff
;	program.c:143: TMOD = 0x20;
	mov	_TMOD,#0x20
;	program.c:145: REN = 1;
;	assignBit
	setb	_REN
;	program.c:147: TR1 = 1;
;	assignBit
	setb	_TR1
;	program.c:149: return 0;
	mov	dptr,#0x0000
;	program.c:150: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "MALLOC FAILED"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "ERR,Enter only Number"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
