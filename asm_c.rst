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
      00016F                         60 _asm_call_sent_from_asm_65536_52:
      00016F                         61 	.ds 1
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
      001563                        107 _asm_clang:
                           000007   108 	ar7 = 0x07
                           000006   109 	ar6 = 0x06
                           000005   110 	ar5 = 0x05
                           000004   111 	ar4 = 0x04
                           000003   112 	ar3 = 0x03
                           000002   113 	ar2 = 0x02
                           000001   114 	ar1 = 0x01
                           000000   115 	ar0 = 0x00
                                    116 ;	asm_c.c:21: printf("\n\r Give param 1, 8bit \n\r");
      001563 74 5B            [12]  117 	mov	a,#___str_0
      001565 C0 E0            [24]  118 	push	acc
      001567 74 2F            [12]  119 	mov	a,#(___str_0 >> 8)
      001569 C0 E0            [24]  120 	push	acc
      00156B 74 80            [12]  121 	mov	a,#0x80
      00156D C0 E0            [24]  122 	push	acc
      00156F 12 1A 23         [24]  123 	lcall	_printf
      001572 15 81            [12]  124 	dec	sp
      001574 15 81            [12]  125 	dec	sp
      001576 15 81            [12]  126 	dec	sp
                                    127 ;	asm_c.c:22: unsigned char num1 = get_number(3);
      001578 90 00 03         [24]  128 	mov	dptr,#0x0003
      00157B 12 03 C4         [24]  129 	lcall	_get_number
      00157E AE 82            [24]  130 	mov	r6,dpl
                                    131 ;	asm_c.c:23: printf("\n\r Give param 2, 8bit \n\r");
      001580 C0 06            [24]  132 	push	ar6
      001582 74 74            [12]  133 	mov	a,#___str_1
      001584 C0 E0            [24]  134 	push	acc
      001586 74 2F            [12]  135 	mov	a,#(___str_1 >> 8)
      001588 C0 E0            [24]  136 	push	acc
      00158A 74 80            [12]  137 	mov	a,#0x80
      00158C C0 E0            [24]  138 	push	acc
      00158E 12 1A 23         [24]  139 	lcall	_printf
      001591 15 81            [12]  140 	dec	sp
      001593 15 81            [12]  141 	dec	sp
      001595 15 81            [12]  142 	dec	sp
                                    143 ;	asm_c.c:24: unsigned char num2 = get_number(3);
      001597 90 00 03         [24]  144 	mov	dptr,#0x0003
      00159A 12 03 C4         [24]  145 	lcall	_get_number
      00159D AD 82            [24]  146 	mov	r5,dpl
                                    147 ;	asm_c.c:25: printf("\n\r Give param 3, 8bit \n\r");
      00159F C0 05            [24]  148 	push	ar5
      0015A1 74 8D            [12]  149 	mov	a,#___str_2
      0015A3 C0 E0            [24]  150 	push	acc
      0015A5 74 2F            [12]  151 	mov	a,#(___str_2 >> 8)
      0015A7 C0 E0            [24]  152 	push	acc
      0015A9 74 80            [12]  153 	mov	a,#0x80
      0015AB C0 E0            [24]  154 	push	acc
      0015AD 12 1A 23         [24]  155 	lcall	_printf
      0015B0 15 81            [12]  156 	dec	sp
      0015B2 15 81            [12]  157 	dec	sp
      0015B4 15 81            [12]  158 	dec	sp
                                    159 ;	asm_c.c:26: unsigned char num3 = get_number(3);
      0015B6 90 00 03         [24]  160 	mov	dptr,#0x0003
      0015B9 12 03 C4         [24]  161 	lcall	_get_number
      0015BC AC 82            [24]  162 	mov	r4,dpl
      0015BE D0 05            [24]  163 	pop	ar5
      0015C0 D0 06            [24]  164 	pop	ar6
                                    165 ;	asm_c.c:28: printf("\n\r RESULT-> param3<Mod>param2 * param1 = %d \n\r", asmtest(num1, num2, num3));
      0015C2 90 00 1A         [24]  166 	mov	dptr,#_asmtest_PARM_2
      0015C5 ED               [12]  167 	mov	a,r5
      0015C6 F0               [24]  168 	movx	@dptr,a
      0015C7 90 00 1B         [24]  169 	mov	dptr,#_asmtest_PARM_3
      0015CA EC               [12]  170 	mov	a,r4
      0015CB F0               [24]  171 	movx	@dptr,a
      0015CC 8E 82            [24]  172 	mov	dpl,r6
      0015CE 12 03 1B         [24]  173 	lcall	_asmtest
      0015D1 AF 82            [24]  174 	mov	r7,dpl
      0015D3 7E 00            [12]  175 	mov	r6,#0x00
      0015D5 C0 07            [24]  176 	push	ar7
      0015D7 C0 06            [24]  177 	push	ar6
      0015D9 74 A6            [12]  178 	mov	a,#___str_3
      0015DB C0 E0            [24]  179 	push	acc
      0015DD 74 2F            [12]  180 	mov	a,#(___str_3 >> 8)
      0015DF C0 E0            [24]  181 	push	acc
      0015E1 74 80            [12]  182 	mov	a,#0x80
      0015E3 C0 E0            [24]  183 	push	acc
      0015E5 12 1A 23         [24]  184 	lcall	_printf
      0015E8 E5 81            [12]  185 	mov	a,sp
      0015EA 24 FB            [12]  186 	add	a,#0xfb
      0015EC F5 81            [12]  187 	mov	sp,a
                                    188 ;	asm_c.c:29: printf("\n\r Going back to main menu.. \n\r");
      0015EE 74 D5            [12]  189 	mov	a,#___str_4
      0015F0 C0 E0            [24]  190 	push	acc
      0015F2 74 2F            [12]  191 	mov	a,#(___str_4 >> 8)
      0015F4 C0 E0            [24]  192 	push	acc
      0015F6 74 80            [12]  193 	mov	a,#0x80
      0015F8 C0 E0            [24]  194 	push	acc
      0015FA 12 1A 23         [24]  195 	lcall	_printf
      0015FD 15 81            [12]  196 	dec	sp
      0015FF 15 81            [12]  197 	dec	sp
      001601 15 81            [12]  198 	dec	sp
                                    199 ;	asm_c.c:30: main_menu();
                                    200 ;	asm_c.c:31: }
      001603 02 00 B5         [24]  201 	ljmp	_main_menu
                                    202 ;------------------------------------------------------------
                                    203 ;Allocation info for local variables in function 'asm_call'
                                    204 ;------------------------------------------------------------
                                    205 ;sent_from_asm             Allocated with name '_asm_call_sent_from_asm_65536_52'
                                    206 ;------------------------------------------------------------
                                    207 ;	asm_c.c:34: void asm_call(unsigned char sent_from_asm)
                                    208 ;	-----------------------------------------
                                    209 ;	 function asm_call
                                    210 ;	-----------------------------------------
      001606                        211 _asm_call:
      001606 E5 82            [12]  212 	mov	a,dpl
      001608 90 01 6F         [24]  213 	mov	dptr,#_asm_call_sent_from_asm_65536_52
      00160B F0               [24]  214 	movx	@dptr,a
                                    215 ;	asm_c.c:36: printf("\n\n\r This function was called from assembly, character sent from there -> %c\n\r", sent_from_asm);
      00160C E0               [24]  216 	movx	a,@dptr
      00160D FF               [12]  217 	mov	r7,a
      00160E 7E 00            [12]  218 	mov	r6,#0x00
      001610 C0 07            [24]  219 	push	ar7
      001612 C0 06            [24]  220 	push	ar6
      001614 74 F5            [12]  221 	mov	a,#___str_5
      001616 C0 E0            [24]  222 	push	acc
      001618 74 2F            [12]  223 	mov	a,#(___str_5 >> 8)
      00161A C0 E0            [24]  224 	push	acc
      00161C 74 80            [12]  225 	mov	a,#0x80
      00161E C0 E0            [24]  226 	push	acc
      001620 12 1A 23         [24]  227 	lcall	_printf
      001623 E5 81            [12]  228 	mov	a,sp
      001625 24 FB            [12]  229 	add	a,#0xfb
      001627 F5 81            [12]  230 	mov	sp,a
                                    231 ;	asm_c.c:37: }
      001629 22               [24]  232 	ret
                                    233 	.area CSEG    (CODE)
                                    234 	.area CONST   (CODE)
                                    235 	.area CONST   (CODE)
      002F5B                        236 ___str_0:
      002F5B 0A                     237 	.db 0x0a
      002F5C 0D                     238 	.db 0x0d
      002F5D 20 47 69 76 65 20 70   239 	.ascii " Give param 1, 8bit "
             61 72 61 6D 20 31 2C
             20 38 62 69 74 20
      002F71 0A                     240 	.db 0x0a
      002F72 0D                     241 	.db 0x0d
      002F73 00                     242 	.db 0x00
                                    243 	.area CSEG    (CODE)
                                    244 	.area CONST   (CODE)
      002F74                        245 ___str_1:
      002F74 0A                     246 	.db 0x0a
      002F75 0D                     247 	.db 0x0d
      002F76 20 47 69 76 65 20 70   248 	.ascii " Give param 2, 8bit "
             61 72 61 6D 20 32 2C
             20 38 62 69 74 20
      002F8A 0A                     249 	.db 0x0a
      002F8B 0D                     250 	.db 0x0d
      002F8C 00                     251 	.db 0x00
                                    252 	.area CSEG    (CODE)
                                    253 	.area CONST   (CODE)
      002F8D                        254 ___str_2:
      002F8D 0A                     255 	.db 0x0a
      002F8E 0D                     256 	.db 0x0d
      002F8F 20 47 69 76 65 20 70   257 	.ascii " Give param 3, 8bit "
             61 72 61 6D 20 33 2C
             20 38 62 69 74 20
      002FA3 0A                     258 	.db 0x0a
      002FA4 0D                     259 	.db 0x0d
      002FA5 00                     260 	.db 0x00
                                    261 	.area CSEG    (CODE)
                                    262 	.area CONST   (CODE)
      002FA6                        263 ___str_3:
      002FA6 0A                     264 	.db 0x0a
      002FA7 0D                     265 	.db 0x0d
      002FA8 20 52 45 53 55 4C 54   266 	.ascii " RESULT-> param3<Mod>param2 * param1 = %d "
             2D 3E 20 70 61 72 61
             6D 33 3C 4D 6F 64 3E
             70 61 72 61 6D 32 20
             2A 20 70 61 72 61 6D
             31 20 3D 20 25 64 20
      002FD2 0A                     267 	.db 0x0a
      002FD3 0D                     268 	.db 0x0d
      002FD4 00                     269 	.db 0x00
                                    270 	.area CSEG    (CODE)
                                    271 	.area CONST   (CODE)
      002FD5                        272 ___str_4:
      002FD5 0A                     273 	.db 0x0a
      002FD6 0D                     274 	.db 0x0d
      002FD7 20 47 6F 69 6E 67 20   275 	.ascii " Going back to main menu.. "
             62 61 63 6B 20 74 6F
             20 6D 61 69 6E 20 6D
             65 6E 75 2E 2E 20
      002FF2 0A                     276 	.db 0x0a
      002FF3 0D                     277 	.db 0x0d
      002FF4 00                     278 	.db 0x00
                                    279 	.area CSEG    (CODE)
                                    280 	.area CONST   (CODE)
      002FF5                        281 ___str_5:
      002FF5 0A                     282 	.db 0x0a
      002FF6 0A                     283 	.db 0x0a
      002FF7 0D                     284 	.db 0x0d
      002FF8 20 54 68 69 73 20 66   285 	.ascii " This function was called from assembly, character sent from"
             75 6E 63 74 69 6F 6E
             20 77 61 73 20 63 61
             6C 6C 65 64 20 66 72
             6F 6D 20 61 73 73 65
             6D 62 6C 79 2C 20 63
             68 61 72 61 63 74 65
             72 20 73 65 6E 74 20
             66 72 6F 6D
      003034 20 74 68 65 72 65 20   286 	.ascii " there -> %c"
             2D 3E 20 25 63
      003040 0A                     287 	.db 0x0a
      003041 0D                     288 	.db 0x0d
      003042 00                     289 	.db 0x00
                                    290 	.area CSEG    (CODE)
                                    291 	.area XINIT   (CODE)
                                    292 	.area CABS    (ABS,CODE)
