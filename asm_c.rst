                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module asm_c
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _asmtest
                                     12 	.globl _main_menu
                                     13 	.globl _get_number
                                     14 	.globl _printf
                                     15 	.globl _asm_clang
                                     16 	.globl _asm_call
                                     17 ;--------------------------------------------------------
                                     18 ; special function registers
                                     19 ;--------------------------------------------------------
                                     20 	.area RSEG    (ABS,DATA)
      000000                         21 	.org 0x0000
                                     22 ;--------------------------------------------------------
                                     23 ; special function bits
                                     24 ;--------------------------------------------------------
                                     25 	.area RSEG    (ABS,DATA)
      000000                         26 	.org 0x0000
                                     27 ;--------------------------------------------------------
                                     28 ; overlayable register banks
                                     29 ;--------------------------------------------------------
                                     30 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         31 	.ds 8
                                     32 ;--------------------------------------------------------
                                     33 ; internal ram data
                                     34 ;--------------------------------------------------------
                                     35 	.area DSEG    (DATA)
                                     36 ;--------------------------------------------------------
                                     37 ; overlayable items in internal ram 
                                     38 ;--------------------------------------------------------
                                     39 ;--------------------------------------------------------
                                     40 ; indirectly addressable internal ram data
                                     41 ;--------------------------------------------------------
                                     42 	.area ISEG    (DATA)
                                     43 ;--------------------------------------------------------
                                     44 ; absolute internal ram data
                                     45 ;--------------------------------------------------------
                                     46 	.area IABS    (ABS,DATA)
                                     47 	.area IABS    (ABS,DATA)
                                     48 ;--------------------------------------------------------
                                     49 ; bit data
                                     50 ;--------------------------------------------------------
                                     51 	.area BSEG    (BIT)
                                     52 ;--------------------------------------------------------
                                     53 ; paged external ram data
                                     54 ;--------------------------------------------------------
                                     55 	.area PSEG    (PAG,XDATA)
                                     56 ;--------------------------------------------------------
                                     57 ; external ram data
                                     58 ;--------------------------------------------------------
                                     59 	.area XSEG    (XDATA)
      00018A                         60 _asm_call_sent_from_asm_65536_52:
      00018A                         61 	.ds 1
                                     62 ;--------------------------------------------------------
                                     63 ; absolute external ram data
                                     64 ;--------------------------------------------------------
                                     65 	.area XABS    (ABS,XDATA)
                                     66 ;--------------------------------------------------------
                                     67 ; external initialized ram data
                                     68 ;--------------------------------------------------------
                                     69 	.area XISEG   (XDATA)
                                     70 	.area HOME    (CODE)
                                     71 	.area GSINIT0 (CODE)
                                     72 	.area GSINIT1 (CODE)
                                     73 	.area GSINIT2 (CODE)
                                     74 	.area GSINIT3 (CODE)
                                     75 	.area GSINIT4 (CODE)
                                     76 	.area GSINIT5 (CODE)
                                     77 	.area GSINIT  (CODE)
                                     78 	.area GSFINAL (CODE)
                                     79 	.area CSEG    (CODE)
                                     80 ;--------------------------------------------------------
                                     81 ; global & static initialisations
                                     82 ;--------------------------------------------------------
                                     83 	.area HOME    (CODE)
                                     84 	.area GSINIT  (CODE)
                                     85 	.area GSFINAL (CODE)
                                     86 	.area GSINIT  (CODE)
                                     87 ;--------------------------------------------------------
                                     88 ; Home
                                     89 ;--------------------------------------------------------
                                     90 	.area HOME    (CODE)
                                     91 	.area HOME    (CODE)
                                     92 ;--------------------------------------------------------
                                     93 ; code
                                     94 ;--------------------------------------------------------
                                     95 	.area CSEG    (CODE)
                                     96 ;------------------------------------------------------------
                                     97 ;Allocation info for local variables in function 'asm_clang'
                                     98 ;------------------------------------------------------------
                                     99 ;num1                      Allocated with name '_asm_clang_num1_65537_49'
                                    100 ;num2                      Allocated with name '_asm_clang_num2_65538_50'
                                    101 ;num3                      Allocated with name '_asm_clang_num3_65539_51'
                                    102 ;------------------------------------------------------------
                                    103 ;	asm_c.c:19: void asm_clang()
                                    104 ;	-----------------------------------------
                                    105 ;	 function asm_clang
                                    106 ;	-----------------------------------------
      001D6E                        107 _asm_clang:
                           000007   108 	ar7 = 0x07
                           000006   109 	ar6 = 0x06
                           000005   110 	ar5 = 0x05
                           000004   111 	ar4 = 0x04
                           000003   112 	ar3 = 0x03
                           000002   113 	ar2 = 0x02
                           000001   114 	ar1 = 0x01
                           000000   115 	ar0 = 0x00
                                    116 ;	asm_c.c:21: printf("\n\r Give param 1, 8bit \n\r");
      001D6E 74 55            [12]  117 	mov	a,#___str_0
      001D70 C0 E0            [24]  118 	push	acc
      001D72 74 3B            [12]  119 	mov	a,#(___str_0 >> 8)
      001D74 C0 E0            [24]  120 	push	acc
      001D76 74 80            [12]  121 	mov	a,#0x80
      001D78 C0 E0            [24]  122 	push	acc
      001D7A 12 22 2E         [24]  123 	lcall	_printf
      001D7D 15 81            [12]  124 	dec	sp
      001D7F 15 81            [12]  125 	dec	sp
      001D81 15 81            [12]  126 	dec	sp
                                    127 ;	asm_c.c:22: unsigned char num1 = get_number(3);
      001D83 90 00 03         [24]  128 	mov	dptr,#0x0003
      001D86 12 04 0B         [24]  129 	lcall	_get_number
      001D89 AE 82            [24]  130 	mov	r6,dpl
                                    131 ;	asm_c.c:23: printf("\n\r Give param 2, 8bit \n\r");
      001D8B C0 06            [24]  132 	push	ar6
      001D8D 74 6E            [12]  133 	mov	a,#___str_1
      001D8F C0 E0            [24]  134 	push	acc
      001D91 74 3B            [12]  135 	mov	a,#(___str_1 >> 8)
      001D93 C0 E0            [24]  136 	push	acc
      001D95 74 80            [12]  137 	mov	a,#0x80
      001D97 C0 E0            [24]  138 	push	acc
      001D99 12 22 2E         [24]  139 	lcall	_printf
      001D9C 15 81            [12]  140 	dec	sp
      001D9E 15 81            [12]  141 	dec	sp
      001DA0 15 81            [12]  142 	dec	sp
                                    143 ;	asm_c.c:24: unsigned char num2 = get_number(3);
      001DA2 90 00 03         [24]  144 	mov	dptr,#0x0003
      001DA5 12 04 0B         [24]  145 	lcall	_get_number
      001DA8 AD 82            [24]  146 	mov	r5,dpl
                                    147 ;	asm_c.c:25: printf("\n\r Give param 3, 8bit \n\r");
      001DAA C0 05            [24]  148 	push	ar5
      001DAC 74 87            [12]  149 	mov	a,#___str_2
      001DAE C0 E0            [24]  150 	push	acc
      001DB0 74 3B            [12]  151 	mov	a,#(___str_2 >> 8)
      001DB2 C0 E0            [24]  152 	push	acc
      001DB4 74 80            [12]  153 	mov	a,#0x80
      001DB6 C0 E0            [24]  154 	push	acc
      001DB8 12 22 2E         [24]  155 	lcall	_printf
      001DBB 15 81            [12]  156 	dec	sp
      001DBD 15 81            [12]  157 	dec	sp
      001DBF 15 81            [12]  158 	dec	sp
                                    159 ;	asm_c.c:26: unsigned char num3 = get_number(3);
      001DC1 90 00 03         [24]  160 	mov	dptr,#0x0003
      001DC4 12 04 0B         [24]  161 	lcall	_get_number
      001DC7 AC 82            [24]  162 	mov	r4,dpl
      001DC9 D0 05            [24]  163 	pop	ar5
      001DCB D0 06            [24]  164 	pop	ar6
                                    165 ;	asm_c.c:28: printf("\n\r RESULT-> param3<Mod>param2 * param1 = %d \n\r", asmtest(num1, num2, num3));
      001DCD 90 00 2B         [24]  166 	mov	dptr,#_asmtest_PARM_2
      001DD0 ED               [12]  167 	mov	a,r5
      001DD1 F0               [24]  168 	movx	@dptr,a
      001DD2 90 00 2C         [24]  169 	mov	dptr,#_asmtest_PARM_3
      001DD5 EC               [12]  170 	mov	a,r4
      001DD6 F0               [24]  171 	movx	@dptr,a
      001DD7 8E 82            [24]  172 	mov	dpl,r6
      001DD9 12 03 E8         [24]  173 	lcall	_asmtest
      001DDC AF 82            [24]  174 	mov	r7,dpl
      001DDE 7E 00            [12]  175 	mov	r6,#0x00
      001DE0 C0 07            [24]  176 	push	ar7
      001DE2 C0 06            [24]  177 	push	ar6
      001DE4 74 A0            [12]  178 	mov	a,#___str_3
      001DE6 C0 E0            [24]  179 	push	acc
      001DE8 74 3B            [12]  180 	mov	a,#(___str_3 >> 8)
      001DEA C0 E0            [24]  181 	push	acc
      001DEC 74 80            [12]  182 	mov	a,#0x80
      001DEE C0 E0            [24]  183 	push	acc
      001DF0 12 22 2E         [24]  184 	lcall	_printf
      001DF3 E5 81            [12]  185 	mov	a,sp
      001DF5 24 FB            [12]  186 	add	a,#0xfb
      001DF7 F5 81            [12]  187 	mov	sp,a
                                    188 ;	asm_c.c:29: printf("\n\r Going back to main menu.. \n\r");
      001DF9 74 CF            [12]  189 	mov	a,#___str_4
      001DFB C0 E0            [24]  190 	push	acc
      001DFD 74 3B            [12]  191 	mov	a,#(___str_4 >> 8)
      001DFF C0 E0            [24]  192 	push	acc
      001E01 74 80            [12]  193 	mov	a,#0x80
      001E03 C0 E0            [24]  194 	push	acc
      001E05 12 22 2E         [24]  195 	lcall	_printf
      001E08 15 81            [12]  196 	dec	sp
      001E0A 15 81            [12]  197 	dec	sp
      001E0C 15 81            [12]  198 	dec	sp
                                    199 ;	asm_c.c:30: main_menu();
                                    200 ;	asm_c.c:31: }
      001E0E 02 00 B5         [24]  201 	ljmp	_main_menu
                                    202 ;------------------------------------------------------------
                                    203 ;Allocation info for local variables in function 'asm_call'
                                    204 ;------------------------------------------------------------
                                    205 ;sent_from_asm             Allocated with name '_asm_call_sent_from_asm_65536_52'
                                    206 ;------------------------------------------------------------
                                    207 ;	asm_c.c:34: void asm_call(unsigned char sent_from_asm)
                                    208 ;	-----------------------------------------
                                    209 ;	 function asm_call
                                    210 ;	-----------------------------------------
      001E11                        211 _asm_call:
      001E11 E5 82            [12]  212 	mov	a,dpl
      001E13 90 01 8A         [24]  213 	mov	dptr,#_asm_call_sent_from_asm_65536_52
      001E16 F0               [24]  214 	movx	@dptr,a
                                    215 ;	asm_c.c:36: printf("\n\n\r This function was called from assembly, character sent from there -> %c\n\r", sent_from_asm);
      001E17 E0               [24]  216 	movx	a,@dptr
      001E18 FF               [12]  217 	mov	r7,a
      001E19 7E 00            [12]  218 	mov	r6,#0x00
      001E1B C0 07            [24]  219 	push	ar7
      001E1D C0 06            [24]  220 	push	ar6
      001E1F 74 EF            [12]  221 	mov	a,#___str_5
      001E21 C0 E0            [24]  222 	push	acc
      001E23 74 3B            [12]  223 	mov	a,#(___str_5 >> 8)
      001E25 C0 E0            [24]  224 	push	acc
      001E27 74 80            [12]  225 	mov	a,#0x80
      001E29 C0 E0            [24]  226 	push	acc
      001E2B 12 22 2E         [24]  227 	lcall	_printf
      001E2E E5 81            [12]  228 	mov	a,sp
      001E30 24 FB            [12]  229 	add	a,#0xfb
      001E32 F5 81            [12]  230 	mov	sp,a
                                    231 ;	asm_c.c:37: }
      001E34 22               [24]  232 	ret
                                    233 	.area CSEG    (CODE)
                                    234 	.area CONST   (CODE)
                                    235 	.area CONST   (CODE)
      003B55                        236 ___str_0:
      003B55 0A                     237 	.db 0x0a
      003B56 0D                     238 	.db 0x0d
      003B57 20 47 69 76 65 20 70   239 	.ascii " Give param 1, 8bit "
             61 72 61 6D 20 31 2C
             20 38 62 69 74 20
      003B6B 0A                     240 	.db 0x0a
      003B6C 0D                     241 	.db 0x0d
      003B6D 00                     242 	.db 0x00
                                    243 	.area CSEG    (CODE)
                                    244 	.area CONST   (CODE)
      003B6E                        245 ___str_1:
      003B6E 0A                     246 	.db 0x0a
      003B6F 0D                     247 	.db 0x0d
      003B70 20 47 69 76 65 20 70   248 	.ascii " Give param 2, 8bit "
             61 72 61 6D 20 32 2C
             20 38 62 69 74 20
      003B84 0A                     249 	.db 0x0a
      003B85 0D                     250 	.db 0x0d
      003B86 00                     251 	.db 0x00
                                    252 	.area CSEG    (CODE)
                                    253 	.area CONST   (CODE)
      003B87                        254 ___str_2:
      003B87 0A                     255 	.db 0x0a
      003B88 0D                     256 	.db 0x0d
      003B89 20 47 69 76 65 20 70   257 	.ascii " Give param 3, 8bit "
             61 72 61 6D 20 33 2C
             20 38 62 69 74 20
      003B9D 0A                     258 	.db 0x0a
      003B9E 0D                     259 	.db 0x0d
      003B9F 00                     260 	.db 0x00
                                    261 	.area CSEG    (CODE)
                                    262 	.area CONST   (CODE)
      003BA0                        263 ___str_3:
      003BA0 0A                     264 	.db 0x0a
      003BA1 0D                     265 	.db 0x0d
      003BA2 20 52 45 53 55 4C 54   266 	.ascii " RESULT-> param3<Mod>param2 * param1 = %d "
             2D 3E 20 70 61 72 61
             6D 33 3C 4D 6F 64 3E
             70 61 72 61 6D 32 20
             2A 20 70 61 72 61 6D
             31 20 3D 20 25 64 20
      003BCC 0A                     267 	.db 0x0a
      003BCD 0D                     268 	.db 0x0d
      003BCE 00                     269 	.db 0x00
                                    270 	.area CSEG    (CODE)
                                    271 	.area CONST   (CODE)
      003BCF                        272 ___str_4:
      003BCF 0A                     273 	.db 0x0a
      003BD0 0D                     274 	.db 0x0d
      003BD1 20 47 6F 69 6E 67 20   275 	.ascii " Going back to main menu.. "
             62 61 63 6B 20 74 6F
             20 6D 61 69 6E 20 6D
             65 6E 75 2E 2E 20
      003BEC 0A                     276 	.db 0x0a
      003BED 0D                     277 	.db 0x0d
      003BEE 00                     278 	.db 0x00
                                    279 	.area CSEG    (CODE)
                                    280 	.area CONST   (CODE)
      003BEF                        281 ___str_5:
      003BEF 0A                     282 	.db 0x0a
      003BF0 0A                     283 	.db 0x0a
      003BF1 0D                     284 	.db 0x0d
      003BF2 20 54 68 69 73 20 66   285 	.ascii " This function was called from assembly, character sent from"
             75 6E 63 74 69 6F 6E
             20 77 61 73 20 63 61
             6C 6C 65 64 20 66 72
             6F 6D 20 61 73 73 65
             6D 62 6C 79 2C 20 63
             68 61 72 61 63 74 65
             72 20 73 65 6E 74 20
             66 72 6F 6D
      003C2E 20 74 68 65 72 65 20   286 	.ascii " there -> %c"
             2D 3E 20 25 63
      003C3A 0A                     287 	.db 0x0a
      003C3B 0D                     288 	.db 0x0d
      003C3C 00                     289 	.db 0x00
                                    290 	.area CSEG    (CODE)
                                    291 	.area XINIT   (CODE)
                                    292 	.area CABS    (ABS,CODE)
