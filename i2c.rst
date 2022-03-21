                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module i2c
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _i2c_read_val
                                     12 	.globl _i2c_read_init
                                     13 	.globl _i2c_write_val
                                     14 	.globl _i2c_addr
                                     15 	.globl _i2c_write_init
                                     16 	.globl _i2c_read_random_PARM_2
                                     17 	.globl _i2c_write_random_PARM_3
                                     18 	.globl _i2c_write_random_PARM_2
                                     19 	.globl _i2c_write_random
                                     20 	.globl _i2c_read_random
                                     21 ;--------------------------------------------------------
                                     22 ; special function registers
                                     23 ;--------------------------------------------------------
                                     24 	.area RSEG    (ABS,DATA)
      000000                         25 	.org 0x0000
                                     26 ;--------------------------------------------------------
                                     27 ; special function bits
                                     28 ;--------------------------------------------------------
                                     29 	.area RSEG    (ABS,DATA)
      000000                         30 	.org 0x0000
                                     31 ;--------------------------------------------------------
                                     32 ; overlayable register banks
                                     33 ;--------------------------------------------------------
                                     34 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         35 	.ds 8
                                     36 ;--------------------------------------------------------
                                     37 ; internal ram data
                                     38 ;--------------------------------------------------------
                                     39 	.area DSEG    (DATA)
                                     40 ;--------------------------------------------------------
                                     41 ; overlayable items in internal ram 
                                     42 ;--------------------------------------------------------
                                     43 ;--------------------------------------------------------
                                     44 ; indirectly addressable internal ram data
                                     45 ;--------------------------------------------------------
                                     46 	.area ISEG    (DATA)
                                     47 ;--------------------------------------------------------
                                     48 ; absolute internal ram data
                                     49 ;--------------------------------------------------------
                                     50 	.area IABS    (ABS,DATA)
                                     51 	.area IABS    (ABS,DATA)
                                     52 ;--------------------------------------------------------
                                     53 ; bit data
                                     54 ;--------------------------------------------------------
                                     55 	.area BSEG    (BIT)
                                     56 ;--------------------------------------------------------
                                     57 ; paged external ram data
                                     58 ;--------------------------------------------------------
                                     59 	.area PSEG    (PAG,XDATA)
                                     60 ;--------------------------------------------------------
                                     61 ; external ram data
                                     62 ;--------------------------------------------------------
                                     63 	.area XSEG    (XDATA)
      000002                         64 _i2c_write_random_PARM_2:
      000002                         65 	.ds 1
      000003                         66 _i2c_write_random_PARM_3:
      000003                         67 	.ds 1
      000004                         68 _i2c_write_random_block_65536_8:
      000004                         69 	.ds 1
      000005                         70 _i2c_read_random_PARM_2:
      000005                         71 	.ds 1
      000006                         72 _i2c_read_random_block_65536_14:
      000006                         73 	.ds 1
                                     74 ;--------------------------------------------------------
                                     75 ; absolute external ram data
                                     76 ;--------------------------------------------------------
                                     77 	.area XABS    (ABS,XDATA)
                                     78 ;--------------------------------------------------------
                                     79 ; external initialized ram data
                                     80 ;--------------------------------------------------------
                                     81 	.area XISEG   (XDATA)
                                     82 	.area HOME    (CODE)
                                     83 	.area GSINIT0 (CODE)
                                     84 	.area GSINIT1 (CODE)
                                     85 	.area GSINIT2 (CODE)
                                     86 	.area GSINIT3 (CODE)
                                     87 	.area GSINIT4 (CODE)
                                     88 	.area GSINIT5 (CODE)
                                     89 	.area GSINIT  (CODE)
                                     90 	.area GSFINAL (CODE)
                                     91 	.area CSEG    (CODE)
                                     92 ;--------------------------------------------------------
                                     93 ; global & static initialisations
                                     94 ;--------------------------------------------------------
                                     95 	.area HOME    (CODE)
                                     96 	.area GSINIT  (CODE)
                                     97 	.area GSFINAL (CODE)
                                     98 	.area GSINIT  (CODE)
                                     99 ;--------------------------------------------------------
                                    100 ; Home
                                    101 ;--------------------------------------------------------
                                    102 	.area HOME    (CODE)
                                    103 	.area HOME    (CODE)
                                    104 ;--------------------------------------------------------
                                    105 ; code
                                    106 ;--------------------------------------------------------
                                    107 	.area CSEG    (CODE)
                                    108 ;------------------------------------------------------------
                                    109 ;Allocation info for local variables in function 'i2c_write_random'
                                    110 ;------------------------------------------------------------
                                    111 ;address                   Allocated with name '_i2c_write_random_PARM_2'
                                    112 ;value                     Allocated with name '_i2c_write_random_PARM_3'
                                    113 ;block                     Allocated with name '_i2c_write_random_block_65536_8'
                                    114 ;k                         Allocated with name '_i2c_write_random_k_131072_10'
                                    115 ;l                         Allocated with name '_i2c_write_random_l_262144_12'
                                    116 ;------------------------------------------------------------
                                    117 ;	i2c.c:25: void i2c_write_random(unsigned char block, unsigned char address, unsigned char value)
                                    118 ;	-----------------------------------------
                                    119 ;	 function i2c_write_random
                                    120 ;	-----------------------------------------
      0002AE                        121 _i2c_write_random:
                           000007   122 	ar7 = 0x07
                           000006   123 	ar6 = 0x06
                           000005   124 	ar5 = 0x05
                           000004   125 	ar4 = 0x04
                           000003   126 	ar3 = 0x03
                           000002   127 	ar2 = 0x02
                           000001   128 	ar1 = 0x01
                           000000   129 	ar0 = 0x00
      0002AE E5 82            [12]  130 	mov	a,dpl
      0002B0 90 00 04         [24]  131 	mov	dptr,#_i2c_write_random_block_65536_8
      0002B3 F0               [24]  132 	movx	@dptr,a
                                    133 ;	i2c.c:27: i2c_write_init(block);
      0002B4 E0               [24]  134 	movx	a,@dptr
      0002B5 F5 82            [12]  135 	mov	dpl,a
      0002B7 12 03 45         [24]  136 	lcall	_i2c_write_init
                                    137 ;	i2c.c:28: i2c_addr(address);
      0002BA 90 00 02         [24]  138 	mov	dptr,#_i2c_write_random_PARM_2
      0002BD E0               [24]  139 	movx	a,@dptr
      0002BE F5 82            [12]  140 	mov	dpl,a
      0002C0 12 03 87         [24]  141 	lcall	_i2c_addr
                                    142 ;	i2c.c:29: i2c_write_val(value);
      0002C3 90 00 03         [24]  143 	mov	dptr,#_i2c_write_random_PARM_3
      0002C6 E0               [24]  144 	movx	a,@dptr
      0002C7 F5 82            [12]  145 	mov	dpl,a
      0002C9 12 03 8F         [24]  146 	lcall	_i2c_write_val
                                    147 ;	i2c.c:31: for (int k = 0; k < 90; k++)
      0002CC 7E 00            [12]  148 	mov	r6,#0x00
      0002CE 7F 00            [12]  149 	mov	r7,#0x00
      0002D0                        150 00107$:
      0002D0 C3               [12]  151 	clr	c
      0002D1 EE               [12]  152 	mov	a,r6
      0002D2 94 5A            [12]  153 	subb	a,#0x5a
      0002D4 EF               [12]  154 	mov	a,r7
      0002D5 64 80            [12]  155 	xrl	a,#0x80
      0002D7 94 80            [12]  156 	subb	a,#0x80
      0002D9 50 1D            [24]  157 	jnc	00109$
                                    158 ;	i2c.c:33: for (int l = 0; l < 10; l++)
      0002DB 7C 00            [12]  159 	mov	r4,#0x00
      0002DD 7D 00            [12]  160 	mov	r5,#0x00
      0002DF                        161 00104$:
      0002DF C3               [12]  162 	clr	c
      0002E0 EC               [12]  163 	mov	a,r4
      0002E1 94 0A            [12]  164 	subb	a,#0x0a
      0002E3 ED               [12]  165 	mov	a,r5
      0002E4 64 80            [12]  166 	xrl	a,#0x80
      0002E6 94 80            [12]  167 	subb	a,#0x80
      0002E8 50 07            [24]  168 	jnc	00108$
      0002EA 0C               [12]  169 	inc	r4
      0002EB BC 00 F1         [24]  170 	cjne	r4,#0x00,00104$
      0002EE 0D               [12]  171 	inc	r5
      0002EF 80 EE            [24]  172 	sjmp	00104$
      0002F1                        173 00108$:
                                    174 ;	i2c.c:31: for (int k = 0; k < 90; k++)
      0002F1 0E               [12]  175 	inc	r6
      0002F2 BE 00 DB         [24]  176 	cjne	r6,#0x00,00107$
      0002F5 0F               [12]  177 	inc	r7
      0002F6 80 D8            [24]  178 	sjmp	00107$
      0002F8                        179 00109$:
                                    180 ;	i2c.c:37: }
      0002F8 22               [24]  181 	ret
                                    182 ;------------------------------------------------------------
                                    183 ;Allocation info for local variables in function 'i2c_read_random'
                                    184 ;------------------------------------------------------------
                                    185 ;address                   Allocated with name '_i2c_read_random_PARM_2'
                                    186 ;block                     Allocated with name '_i2c_read_random_block_65536_14'
                                    187 ;a                         Allocated with name '_i2c_read_random_a_65537_16'
                                    188 ;------------------------------------------------------------
                                    189 ;	i2c.c:44: unsigned char i2c_read_random(unsigned char block, unsigned char address)
                                    190 ;	-----------------------------------------
                                    191 ;	 function i2c_read_random
                                    192 ;	-----------------------------------------
      0002F9                        193 _i2c_read_random:
      0002F9 E5 82            [12]  194 	mov	a,dpl
      0002FB 90 00 06         [24]  195 	mov	dptr,#_i2c_read_random_block_65536_14
      0002FE F0               [24]  196 	movx	@dptr,a
                                    197 ;	i2c.c:46: i2c_write_init(block);
      0002FF E0               [24]  198 	movx	a,@dptr
      000300 FF               [12]  199 	mov	r7,a
      000301 F5 82            [12]  200 	mov	dpl,a
      000303 C0 07            [24]  201 	push	ar7
      000305 12 03 45         [24]  202 	lcall	_i2c_write_init
                                    203 ;	i2c.c:47: i2c_addr(address);
      000308 90 00 05         [24]  204 	mov	dptr,#_i2c_read_random_PARM_2
      00030B E0               [24]  205 	movx	a,@dptr
      00030C F5 82            [12]  206 	mov	dpl,a
      00030E 12 03 87         [24]  207 	lcall	_i2c_addr
      000311 D0 07            [24]  208 	pop	ar7
                                    209 ;	i2c.c:48: i2c_read_init(block);
      000313 8F 82            [24]  210 	mov	dpl,r7
      000315 12 03 53         [24]  211 	lcall	_i2c_read_init
                                    212 ;	i2c.c:49: unsigned char a = i2c_read_val();
                                    213 ;	i2c.c:50: return a;
                                    214 ;	i2c.c:51: }
      000318 02 03 61         [24]  215 	ljmp	_i2c_read_val
                                    216 	.area CSEG    (CODE)
                                    217 	.area CONST   (CODE)
                                    218 	.area XINIT   (CODE)
                                    219 	.area CABS    (ABS,CODE)
