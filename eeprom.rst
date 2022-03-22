                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module eeprom
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _eeprom_menu
                                     12 	.globl _i2c_eeprom_reset
                                     13 	.globl _i2c_write_random
                                     14 	.globl _i2c_read_random
                                     15 	.globl _get_number_hex
                                     16 	.globl _getchar
                                     17 	.globl _printf
                                     18 	.globl _free
                                     19 	.globl _malloc
                                     20 	.globl _eeprom_buffer
                                     21 	.globl _read_random_byte
                                     22 	.globl _write_random_byte
                                     23 	.globl _hexdump_eeprom
                                     24 	.globl _blockfill_eeprom
                                     25 	.globl _print_eeprom_menu
                                     26 	.globl _dump_eeprom_buffer
                                     27 ;--------------------------------------------------------
                                     28 ; special function registers
                                     29 ;--------------------------------------------------------
                                     30 	.area RSEG    (ABS,DATA)
      000000                         31 	.org 0x0000
                                     32 ;--------------------------------------------------------
                                     33 ; special function bits
                                     34 ;--------------------------------------------------------
                                     35 	.area RSEG    (ABS,DATA)
      000000                         36 	.org 0x0000
                                     37 ;--------------------------------------------------------
                                     38 ; overlayable register banks
                                     39 ;--------------------------------------------------------
                                     40 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         41 	.ds 8
                                     42 ;--------------------------------------------------------
                                     43 ; internal ram data
                                     44 ;--------------------------------------------------------
                                     45 	.area DSEG    (DATA)
      000017                         46 _hexdump_eeprom_sloc0_1_0:
      000017                         47 	.ds 2
                                     48 ;--------------------------------------------------------
                                     49 ; overlayable items in internal ram 
                                     50 ;--------------------------------------------------------
                                     51 ;--------------------------------------------------------
                                     52 ; indirectly addressable internal ram data
                                     53 ;--------------------------------------------------------
                                     54 	.area ISEG    (DATA)
                                     55 ;--------------------------------------------------------
                                     56 ; absolute internal ram data
                                     57 ;--------------------------------------------------------
                                     58 	.area IABS    (ABS,DATA)
                                     59 	.area IABS    (ABS,DATA)
                                     60 ;--------------------------------------------------------
                                     61 ; bit data
                                     62 ;--------------------------------------------------------
                                     63 	.area BSEG    (BIT)
                                     64 ;--------------------------------------------------------
                                     65 ; paged external ram data
                                     66 ;--------------------------------------------------------
                                     67 	.area PSEG    (PAG,XDATA)
                                     68 ;--------------------------------------------------------
                                     69 ; external ram data
                                     70 ;--------------------------------------------------------
                                     71 	.area XSEG    (XDATA)
      00017A                         72 _eeprom_buffer::
      00017A                         73 	.ds 12
      000186                         74 _dump_eeprom_buffer_from_65536_73:
      000186                         75 	.ds 2
      000188                         76 _dump_eeprom_buffer_j_65537_75:
      000188                         77 	.ds 2
                                     78 ;--------------------------------------------------------
                                     79 ; absolute external ram data
                                     80 ;--------------------------------------------------------
                                     81 	.area XABS    (ABS,XDATA)
                                     82 ;--------------------------------------------------------
                                     83 ; external initialized ram data
                                     84 ;--------------------------------------------------------
                                     85 	.area XISEG   (XDATA)
                                     86 	.area HOME    (CODE)
                                     87 	.area GSINIT0 (CODE)
                                     88 	.area GSINIT1 (CODE)
                                     89 	.area GSINIT2 (CODE)
                                     90 	.area GSINIT3 (CODE)
                                     91 	.area GSINIT4 (CODE)
                                     92 	.area GSINIT5 (CODE)
                                     93 	.area GSINIT  (CODE)
                                     94 	.area GSFINAL (CODE)
                                     95 	.area CSEG    (CODE)
                                     96 ;--------------------------------------------------------
                                     97 ; global & static initialisations
                                     98 ;--------------------------------------------------------
                                     99 	.area HOME    (CODE)
                                    100 	.area GSINIT  (CODE)
                                    101 	.area GSFINAL (CODE)
                                    102 	.area GSINIT  (CODE)
                                    103 ;--------------------------------------------------------
                                    104 ; Home
                                    105 ;--------------------------------------------------------
                                    106 	.area HOME    (CODE)
                                    107 	.area HOME    (CODE)
                                    108 ;--------------------------------------------------------
                                    109 ; code
                                    110 ;--------------------------------------------------------
                                    111 	.area CSEG    (CODE)
                                    112 ;------------------------------------------------------------
                                    113 ;Allocation info for local variables in function 'eeprom_menu'
                                    114 ;------------------------------------------------------------
                                    115 ;inp                       Allocated with name '_eeprom_menu_inp_65537_51'
                                    116 ;------------------------------------------------------------
                                    117 ;	eeprom.c:26: void eeprom_menu()
                                    118 ;	-----------------------------------------
                                    119 ;	 function eeprom_menu
                                    120 ;	-----------------------------------------
      00170E                        121 _eeprom_menu:
                           000007   122 	ar7 = 0x07
                           000006   123 	ar6 = 0x06
                           000005   124 	ar5 = 0x05
                           000004   125 	ar4 = 0x04
                           000003   126 	ar3 = 0x03
                           000002   127 	ar2 = 0x02
                           000001   128 	ar1 = 0x01
                           000000   129 	ar0 = 0x00
                                    130 ;	eeprom.c:28: printf(" \n\r Hello, In EEPROM Demo mode");
      00170E 74 64            [12]  131 	mov	a,#___str_0
      001710 C0 E0            [24]  132 	push	acc
      001712 74 37            [12]  133 	mov	a,#(___str_0 >> 8)
      001714 C0 E0            [24]  134 	push	acc
      001716 74 80            [12]  135 	mov	a,#0x80
      001718 C0 E0            [24]  136 	push	acc
      00171A 12 22 2E         [24]  137 	lcall	_printf
      00171D 15 81            [12]  138 	dec	sp
      00171F 15 81            [12]  139 	dec	sp
      001721 15 81            [12]  140 	dec	sp
                                    141 ;	eeprom.c:29: print_eeprom_menu();
      001723 12 1B C1         [24]  142 	lcall	_print_eeprom_menu
                                    143 ;	eeprom.c:32: wrong_choice_pca:
      001726                        144 00101$:
                                    145 ;	eeprom.c:33: printf("Please make a valid choice\n\r");
      001726 74 83            [12]  146 	mov	a,#___str_1
      001728 C0 E0            [24]  147 	push	acc
      00172A 74 37            [12]  148 	mov	a,#(___str_1 >> 8)
      00172C C0 E0            [24]  149 	push	acc
      00172E 74 80            [12]  150 	mov	a,#0x80
      001730 C0 E0            [24]  151 	push	acc
      001732 12 22 2E         [24]  152 	lcall	_printf
      001735 15 81            [12]  153 	dec	sp
      001737 15 81            [12]  154 	dec	sp
      001739 15 81            [12]  155 	dec	sp
                                    156 ;	eeprom.c:34: inp = getchar();
      00173B 12 07 5E         [24]  157 	lcall	_getchar
      00173E AE 82            [24]  158 	mov	r6,dpl
      001740 AF 83            [24]  159 	mov	r7,dph
                                    160 ;	eeprom.c:35: if (inp == 0x52)
      001742 BE 52 08         [24]  161 	cjne	r6,#0x52,00115$
      001745 BF 00 05         [24]  162 	cjne	r7,#0x00,00115$
                                    163 ;	eeprom.c:36: read_random_byte();
      001748 12 17 B1         [24]  164 	lcall	_read_random_byte
      00174B 80 3F            [24]  165 	sjmp	00129$
      00174D                        166 00115$:
                                    167 ;	eeprom.c:37: else if (inp == 0x57)
      00174D BE 57 08         [24]  168 	cjne	r6,#0x57,00112$
      001750 BF 00 05         [24]  169 	cjne	r7,#0x00,00112$
                                    170 ;	eeprom.c:38: write_random_byte();
      001753 12 18 58         [24]  171 	lcall	_write_random_byte
      001756 80 34            [24]  172 	sjmp	00129$
      001758                        173 00112$:
                                    174 ;	eeprom.c:39: else if (inp == 0x44)
      001758 BE 44 08         [24]  175 	cjne	r6,#0x44,00109$
      00175B BF 00 05         [24]  176 	cjne	r7,#0x00,00109$
                                    177 ;	eeprom.c:40: hexdump_eeprom();
      00175E 12 18 EE         [24]  178 	lcall	_hexdump_eeprom
      001761 80 29            [24]  179 	sjmp	00129$
      001763                        180 00109$:
                                    181 ;	eeprom.c:41: else if (inp == 0x42)
      001763 BE 42 08         [24]  182 	cjne	r6,#0x42,00106$
      001766 BF 00 05         [24]  183 	cjne	r7,#0x00,00106$
                                    184 ;	eeprom.c:42: blockfill_eeprom();
      001769 12 1A A4         [24]  185 	lcall	_blockfill_eeprom
      00176C 80 1E            [24]  186 	sjmp	00129$
      00176E                        187 00106$:
                                    188 ;	eeprom.c:43: else if (inp == 0x46)
      00176E BE 46 B5         [24]  189 	cjne	r6,#0x46,00101$
      001771 BF 00 B2         [24]  190 	cjne	r7,#0x00,00101$
                                    191 ;	eeprom.c:45: i2c_eeprom_reset();
      001774 12 03 34         [24]  192 	lcall	_i2c_eeprom_reset
                                    193 ;	eeprom.c:46: printf("\n\rI2C Reset has been performed \n\r");
      001777 74 A0            [12]  194 	mov	a,#___str_2
      001779 C0 E0            [24]  195 	push	acc
      00177B 74 37            [12]  196 	mov	a,#(___str_2 >> 8)
      00177D C0 E0            [24]  197 	push	acc
      00177F 74 80            [12]  198 	mov	a,#0x80
      001781 C0 E0            [24]  199 	push	acc
      001783 12 22 2E         [24]  200 	lcall	_printf
      001786 15 81            [12]  201 	dec	sp
      001788 15 81            [12]  202 	dec	sp
      00178A 15 81            [12]  203 	dec	sp
                                    204 ;	eeprom.c:51: exit_choice:
      00178C                        205 00129$:
      00178C                        206 00117$:
                                    207 ;	eeprom.c:52: printf("\n\rPlease 'E' to go to EEPROM Menu \n\r");
      00178C 74 C2            [12]  208 	mov	a,#___str_3
      00178E C0 E0            [24]  209 	push	acc
      001790 74 37            [12]  210 	mov	a,#(___str_3 >> 8)
      001792 C0 E0            [24]  211 	push	acc
      001794 74 80            [12]  212 	mov	a,#0x80
      001796 C0 E0            [24]  213 	push	acc
      001798 12 22 2E         [24]  214 	lcall	_printf
      00179B 15 81            [12]  215 	dec	sp
      00179D 15 81            [12]  216 	dec	sp
      00179F 15 81            [12]  217 	dec	sp
                                    218 ;	eeprom.c:53: inp = getchar();
      0017A1 12 07 5E         [24]  219 	lcall	_getchar
      0017A4 AE 82            [24]  220 	mov	r6,dpl
      0017A6 AF 83            [24]  221 	mov	r7,dph
                                    222 ;	eeprom.c:54: if (inp == 0x45)
      0017A8 BE 45 E1         [24]  223 	cjne	r6,#0x45,00117$
      0017AB BF 00 DE         [24]  224 	cjne	r7,#0x00,00117$
                                    225 ;	eeprom.c:55: eeprom_menu();
                                    226 ;	eeprom.c:57: goto exit_choice;
                                    227 ;	eeprom.c:58: }
      0017AE 02 17 0E         [24]  228 	ljmp	_eeprom_menu
                                    229 ;------------------------------------------------------------
                                    230 ;Allocation info for local variables in function 'read_random_byte'
                                    231 ;------------------------------------------------------------
                                    232 ;block                     Allocated with name '_read_random_byte_block_65536_53'
                                    233 ;address                   Allocated with name '_read_random_byte_address_65536_53'
                                    234 ;a                         Allocated with name '_read_random_byte_a_65536_53'
                                    235 ;------------------------------------------------------------
                                    236 ;	eeprom.c:60: void read_random_byte()
                                    237 ;	-----------------------------------------
                                    238 ;	 function read_random_byte
                                    239 ;	-----------------------------------------
      0017B1                        240 _read_random_byte:
                                    241 ;	eeprom.c:65: get_valid_hex:
      0017B1                        242 00101$:
                                    243 ;	eeprom.c:66: printf("\n\r Please give a valid address to read from (0x000 - 0x7FF) \n\r");
      0017B1 74 E7            [12]  244 	mov	a,#___str_4
      0017B3 C0 E0            [24]  245 	push	acc
      0017B5 74 37            [12]  246 	mov	a,#(___str_4 >> 8)
      0017B7 C0 E0            [24]  247 	push	acc
      0017B9 74 80            [12]  248 	mov	a,#0x80
      0017BB C0 E0            [24]  249 	push	acc
      0017BD 12 22 2E         [24]  250 	lcall	_printf
      0017C0 15 81            [12]  251 	dec	sp
      0017C2 15 81            [12]  252 	dec	sp
      0017C4 15 81            [12]  253 	dec	sp
                                    254 ;	eeprom.c:67: a = get_number_hex(3);
      0017C6 90 00 03         [24]  255 	mov	dptr,#0x0003
      0017C9 12 05 5A         [24]  256 	lcall	_get_number_hex
      0017CC AE 82            [24]  257 	mov	r6,dpl
                                    258 ;	eeprom.c:69: if (a >= 0 && a <= 2047)
      0017CE E5 83            [12]  259 	mov	a,dph
      0017D0 FF               [12]  260 	mov	r7,a
      0017D1 20 E7 DD         [24]  261 	jb	acc.7,00101$
      0017D4 C3               [12]  262 	clr	c
      0017D5 74 FF            [12]  263 	mov	a,#0xff
      0017D7 9E               [12]  264 	subb	a,r6
      0017D8 74 87            [12]  265 	mov	a,#(0x07 ^ 0x80)
      0017DA 8F F0            [24]  266 	mov	b,r7
      0017DC 63 F0 80         [24]  267 	xrl	b,#0x80
      0017DF 95 F0            [12]  268 	subb	a,b
      0017E1 40 CE            [24]  269 	jc	00101$
                                    270 ;	eeprom.c:71: block = (a & 0xF00) >> 8;
      0017E3 74 0F            [12]  271 	mov	a,#0x0f
      0017E5 5F               [12]  272 	anl	a,r7
                                    273 ;	eeprom.c:72: address = a & 0x0FF;
                                    274 ;	eeprom.c:79: printf("Block is is %x \n\r", block);
      0017E6 FC               [12]  275 	mov	r4,a
      0017E7 FD               [12]  276 	mov	r5,a
      0017E8 7F 00            [12]  277 	mov	r7,#0x00
      0017EA C0 06            [24]  278 	push	ar6
      0017EC C0 04            [24]  279 	push	ar4
      0017EE C0 05            [24]  280 	push	ar5
      0017F0 C0 07            [24]  281 	push	ar7
      0017F2 74 26            [12]  282 	mov	a,#___str_5
      0017F4 C0 E0            [24]  283 	push	acc
      0017F6 74 38            [12]  284 	mov	a,#(___str_5 >> 8)
      0017F8 C0 E0            [24]  285 	push	acc
      0017FA 74 80            [12]  286 	mov	a,#0x80
      0017FC C0 E0            [24]  287 	push	acc
      0017FE 12 22 2E         [24]  288 	lcall	_printf
      001801 E5 81            [12]  289 	mov	a,sp
      001803 24 FB            [12]  290 	add	a,#0xfb
      001805 F5 81            [12]  291 	mov	sp,a
      001807 D0 04            [24]  292 	pop	ar4
      001809 D0 06            [24]  293 	pop	ar6
                                    294 ;	eeprom.c:80: printf("Address is 0x%X \n\r", address);
      00180B 8E 05            [24]  295 	mov	ar5,r6
      00180D 7F 00            [12]  296 	mov	r7,#0x00
      00180F C0 06            [24]  297 	push	ar6
      001811 C0 04            [24]  298 	push	ar4
      001813 C0 05            [24]  299 	push	ar5
      001815 C0 07            [24]  300 	push	ar7
      001817 74 38            [12]  301 	mov	a,#___str_6
      001819 C0 E0            [24]  302 	push	acc
      00181B 74 38            [12]  303 	mov	a,#(___str_6 >> 8)
      00181D C0 E0            [24]  304 	push	acc
      00181F 74 80            [12]  305 	mov	a,#0x80
      001821 C0 E0            [24]  306 	push	acc
      001823 12 22 2E         [24]  307 	lcall	_printf
      001826 E5 81            [12]  308 	mov	a,sp
      001828 24 FB            [12]  309 	add	a,#0xfb
      00182A F5 81            [12]  310 	mov	sp,a
      00182C D0 04            [24]  311 	pop	ar4
      00182E D0 06            [24]  312 	pop	ar6
                                    313 ;	eeprom.c:81: printf("\n\r The value at the address is -> 0x%X \n\r", i2c_read_random(block, address));
      001830 90 00 05         [24]  314 	mov	dptr,#_i2c_read_random_PARM_2
      001833 EE               [12]  315 	mov	a,r6
      001834 F0               [24]  316 	movx	@dptr,a
      001835 8C 82            [24]  317 	mov	dpl,r4
      001837 12 03 9E         [24]  318 	lcall	_i2c_read_random
      00183A AF 82            [24]  319 	mov	r7,dpl
      00183C 7E 00            [12]  320 	mov	r6,#0x00
      00183E C0 07            [24]  321 	push	ar7
      001840 C0 06            [24]  322 	push	ar6
      001842 74 4B            [12]  323 	mov	a,#___str_7
      001844 C0 E0            [24]  324 	push	acc
      001846 74 38            [12]  325 	mov	a,#(___str_7 >> 8)
      001848 C0 E0            [24]  326 	push	acc
      00184A 74 80            [12]  327 	mov	a,#0x80
      00184C C0 E0            [24]  328 	push	acc
      00184E 12 22 2E         [24]  329 	lcall	_printf
      001851 E5 81            [12]  330 	mov	a,sp
      001853 24 FB            [12]  331 	add	a,#0xfb
      001855 F5 81            [12]  332 	mov	sp,a
                                    333 ;	eeprom.c:82: }
      001857 22               [24]  334 	ret
                                    335 ;------------------------------------------------------------
                                    336 ;Allocation info for local variables in function 'write_random_byte'
                                    337 ;------------------------------------------------------------
                                    338 ;block                     Allocated with name '_write_random_byte_block_65536_56'
                                    339 ;address                   Allocated with name '_write_random_byte_address_65536_56'
                                    340 ;a                         Allocated with name '_write_random_byte_a_65536_56'
                                    341 ;------------------------------------------------------------
                                    342 ;	eeprom.c:84: void write_random_byte()
                                    343 ;	-----------------------------------------
                                    344 ;	 function write_random_byte
                                    345 ;	-----------------------------------------
      001858                        346 _write_random_byte:
                                    347 ;	eeprom.c:89: get_valid_hex_address:
      001858                        348 00101$:
                                    349 ;	eeprom.c:90: printf("Please give a valid address to write to (0x000 - 0x7FF) \n\r");
      001858 74 75            [12]  350 	mov	a,#___str_8
      00185A C0 E0            [24]  351 	push	acc
      00185C 74 38            [12]  352 	mov	a,#(___str_8 >> 8)
      00185E C0 E0            [24]  353 	push	acc
      001860 74 80            [12]  354 	mov	a,#0x80
      001862 C0 E0            [24]  355 	push	acc
      001864 12 22 2E         [24]  356 	lcall	_printf
      001867 15 81            [12]  357 	dec	sp
      001869 15 81            [12]  358 	dec	sp
      00186B 15 81            [12]  359 	dec	sp
                                    360 ;	eeprom.c:91: a = get_number_hex(3);
      00186D 90 00 03         [24]  361 	mov	dptr,#0x0003
      001870 12 05 5A         [24]  362 	lcall	_get_number_hex
      001873 AE 82            [24]  363 	mov	r6,dpl
                                    364 ;	eeprom.c:93: if (a >= 0 && a <= 2047)
      001875 E5 83            [12]  365 	mov	a,dph
      001877 FF               [12]  366 	mov	r7,a
      001878 20 E7 DD         [24]  367 	jb	acc.7,00101$
      00187B C3               [12]  368 	clr	c
      00187C 74 FF            [12]  369 	mov	a,#0xff
      00187E 9E               [12]  370 	subb	a,r6
      00187F 74 87            [12]  371 	mov	a,#(0x07 ^ 0x80)
      001881 8F F0            [24]  372 	mov	b,r7
      001883 63 F0 80         [24]  373 	xrl	b,#0x80
      001886 95 F0            [12]  374 	subb	a,b
      001888 40 CE            [24]  375 	jc	00101$
                                    376 ;	eeprom.c:95: block = (a & 0xF00) >> 8;
      00188A 7C 00            [12]  377 	mov	r4,#0x00
      00188C 74 0F            [12]  378 	mov	a,#0x0f
      00188E 5F               [12]  379 	anl	a,r7
      00188F FD               [12]  380 	mov	r5,a
                                    381 ;	eeprom.c:96: address = a & 0x0FF;
                                    382 ;	eeprom.c:103: get_valid_hex_value:
      001890                        383 00106$:
                                    384 ;	eeprom.c:104: printf("\n\rPlease give a valid data to write (0x00 - 0xFF) \n\r");
      001890 C0 06            [24]  385 	push	ar6
      001892 C0 05            [24]  386 	push	ar5
      001894 74 B0            [12]  387 	mov	a,#___str_9
      001896 C0 E0            [24]  388 	push	acc
      001898 74 38            [12]  389 	mov	a,#(___str_9 >> 8)
      00189A C0 E0            [24]  390 	push	acc
      00189C 74 80            [12]  391 	mov	a,#0x80
      00189E C0 E0            [24]  392 	push	acc
      0018A0 12 22 2E         [24]  393 	lcall	_printf
      0018A3 15 81            [12]  394 	dec	sp
      0018A5 15 81            [12]  395 	dec	sp
      0018A7 15 81            [12]  396 	dec	sp
                                    397 ;	eeprom.c:105: a = get_number_hex(2);
      0018A9 90 00 02         [24]  398 	mov	dptr,#0x0002
      0018AC 12 05 5A         [24]  399 	lcall	_get_number_hex
      0018AF AC 82            [24]  400 	mov	r4,dpl
      0018B1 AF 83            [24]  401 	mov	r7,dph
      0018B3 D0 05            [24]  402 	pop	ar5
      0018B5 D0 06            [24]  403 	pop	ar6
                                    404 ;	eeprom.c:107: if (a >= 0)
      0018B7 EF               [12]  405 	mov	a,r7
      0018B8 20 E7 D5         [24]  406 	jb	acc.7,00106$
                                    407 ;	eeprom.c:109: i2c_write_random(block, address, (unsigned char)a);
      0018BB 8C 03            [24]  408 	mov	ar3,r4
      0018BD 90 00 02         [24]  409 	mov	dptr,#_i2c_write_random_PARM_2
      0018C0 EE               [12]  410 	mov	a,r6
      0018C1 F0               [24]  411 	movx	@dptr,a
      0018C2 90 00 03         [24]  412 	mov	dptr,#_i2c_write_random_PARM_3
      0018C5 EB               [12]  413 	mov	a,r3
      0018C6 F0               [24]  414 	movx	@dptr,a
      0018C7 8D 82            [24]  415 	mov	dpl,r5
      0018C9 C0 07            [24]  416 	push	ar7
      0018CB C0 04            [24]  417 	push	ar4
      0018CD 12 03 45         [24]  418 	lcall	_i2c_write_random
      0018D0 D0 04            [24]  419 	pop	ar4
      0018D2 D0 07            [24]  420 	pop	ar7
                                    421 ;	eeprom.c:116: printf("\n\rThe data has been successfully written at the address 0x%X \n\r", a);
      0018D4 C0 04            [24]  422 	push	ar4
      0018D6 C0 07            [24]  423 	push	ar7
      0018D8 74 E5            [12]  424 	mov	a,#___str_10
      0018DA C0 E0            [24]  425 	push	acc
      0018DC 74 38            [12]  426 	mov	a,#(___str_10 >> 8)
      0018DE C0 E0            [24]  427 	push	acc
      0018E0 74 80            [12]  428 	mov	a,#0x80
      0018E2 C0 E0            [24]  429 	push	acc
      0018E4 12 22 2E         [24]  430 	lcall	_printf
      0018E7 E5 81            [12]  431 	mov	a,sp
      0018E9 24 FB            [12]  432 	add	a,#0xfb
      0018EB F5 81            [12]  433 	mov	sp,a
                                    434 ;	eeprom.c:117: }
      0018ED 22               [24]  435 	ret
                                    436 ;------------------------------------------------------------
                                    437 ;Allocation info for local variables in function 'hexdump_eeprom'
                                    438 ;------------------------------------------------------------
                                    439 ;sloc0                     Allocated with name '_hexdump_eeprom_sloc0_1_0'
                                    440 ;a                         Allocated with name '_hexdump_eeprom_a_65536_61'
                                    441 ;b                         Allocated with name '_hexdump_eeprom_b_65536_61'
                                    442 ;data                      Allocated with name '_hexdump_eeprom_data_65537_64'
                                    443 ;l                         Allocated with name '_hexdump_eeprom_l_131073_65'
                                    444 ;------------------------------------------------------------
                                    445 ;	eeprom.c:119: void hexdump_eeprom()
                                    446 ;	-----------------------------------------
                                    447 ;	 function hexdump_eeprom
                                    448 ;	-----------------------------------------
      0018EE                        449 _hexdump_eeprom:
                                    450 ;	eeprom.c:123: get_valid_from_address:
      0018EE                        451 00101$:
                                    452 ;	eeprom.c:124: printf("Please give a valid starting address (0x000 - 0x7FF) \n\r");
      0018EE 74 25            [12]  453 	mov	a,#___str_11
      0018F0 C0 E0            [24]  454 	push	acc
      0018F2 74 39            [12]  455 	mov	a,#(___str_11 >> 8)
      0018F4 C0 E0            [24]  456 	push	acc
      0018F6 74 80            [12]  457 	mov	a,#0x80
      0018F8 C0 E0            [24]  458 	push	acc
      0018FA 12 22 2E         [24]  459 	lcall	_printf
      0018FD 15 81            [12]  460 	dec	sp
      0018FF 15 81            [12]  461 	dec	sp
      001901 15 81            [12]  462 	dec	sp
                                    463 ;	eeprom.c:125: a = get_number_hex(3);
      001903 90 00 03         [24]  464 	mov	dptr,#0x0003
      001906 12 05 5A         [24]  465 	lcall	_get_number_hex
      001909 AE 82            [24]  466 	mov	r6,dpl
                                    467 ;	eeprom.c:127: if (a < 0 || a > 2047)
      00190B E5 83            [12]  468 	mov	a,dph
      00190D FF               [12]  469 	mov	r7,a
      00190E 20 E7 DD         [24]  470 	jb	acc.7,00101$
      001911 C3               [12]  471 	clr	c
      001912 74 FF            [12]  472 	mov	a,#0xff
      001914 9E               [12]  473 	subb	a,r6
      001915 74 87            [12]  474 	mov	a,#(0x07 ^ 0x80)
      001917 8F F0            [24]  475 	mov	b,r7
      001919 63 F0 80         [24]  476 	xrl	b,#0x80
      00191C 95 F0            [12]  477 	subb	a,b
      00191E 40 CE            [24]  478 	jc	00101$
                                    479 ;	eeprom.c:132: get_valid_to_address:
      001920                        480 00105$:
                                    481 ;	eeprom.c:133: printf("Please give a valid ending address (0x%X - 0x7FF) \n\r", a);
      001920 C0 07            [24]  482 	push	ar7
      001922 C0 06            [24]  483 	push	ar6
      001924 C0 06            [24]  484 	push	ar6
      001926 C0 07            [24]  485 	push	ar7
      001928 74 5D            [12]  486 	mov	a,#___str_12
      00192A C0 E0            [24]  487 	push	acc
      00192C 74 39            [12]  488 	mov	a,#(___str_12 >> 8)
      00192E C0 E0            [24]  489 	push	acc
      001930 74 80            [12]  490 	mov	a,#0x80
      001932 C0 E0            [24]  491 	push	acc
      001934 12 22 2E         [24]  492 	lcall	_printf
      001937 E5 81            [12]  493 	mov	a,sp
      001939 24 FB            [12]  494 	add	a,#0xfb
      00193B F5 81            [12]  495 	mov	sp,a
                                    496 ;	eeprom.c:134: b = get_number_hex(3);
      00193D 90 00 03         [24]  497 	mov	dptr,#0x0003
      001940 12 05 5A         [24]  498 	lcall	_get_number_hex
      001943 AC 82            [24]  499 	mov	r4,dpl
      001945 AD 83            [24]  500 	mov	r5,dph
      001947 D0 06            [24]  501 	pop	ar6
      001949 D0 07            [24]  502 	pop	ar7
                                    503 ;	eeprom.c:136: if (b < a || b > 2047)
      00194B C3               [12]  504 	clr	c
      00194C EC               [12]  505 	mov	a,r4
      00194D 9E               [12]  506 	subb	a,r6
      00194E ED               [12]  507 	mov	a,r5
      00194F 64 80            [12]  508 	xrl	a,#0x80
      001951 8F F0            [24]  509 	mov	b,r7
      001953 63 F0 80         [24]  510 	xrl	b,#0x80
      001956 95 F0            [12]  511 	subb	a,b
      001958 40 C6            [24]  512 	jc	00105$
      00195A 74 FF            [12]  513 	mov	a,#0xff
      00195C 9C               [12]  514 	subb	a,r4
      00195D 74 87            [12]  515 	mov	a,#(0x07 ^ 0x80)
      00195F 8D F0            [24]  516 	mov	b,r5
      001961 63 F0 80         [24]  517 	xrl	b,#0x80
      001964 95 F0            [12]  518 	subb	a,b
      001966 40 B8            [24]  519 	jc	00105$
                                    520 ;	eeprom.c:141: eeprom_buffer.buffer_start = malloc((b - a) + 5);
      001968 EC               [12]  521 	mov	a,r4
      001969 C3               [12]  522 	clr	c
      00196A 9E               [12]  523 	subb	a,r6
      00196B FA               [12]  524 	mov	r2,a
      00196C ED               [12]  525 	mov	a,r5
      00196D 9F               [12]  526 	subb	a,r7
      00196E FB               [12]  527 	mov	r3,a
      00196F 74 05            [12]  528 	mov	a,#0x05
      001971 2A               [12]  529 	add	a,r2
      001972 F5 17            [12]  530 	mov	_hexdump_eeprom_sloc0_1_0,a
      001974 E4               [12]  531 	clr	a
      001975 3B               [12]  532 	addc	a,r3
      001976 F5 18            [12]  533 	mov	(_hexdump_eeprom_sloc0_1_0 + 1),a
      001978 85 17 82         [24]  534 	mov	dpl,_hexdump_eeprom_sloc0_1_0
      00197B 85 18 83         [24]  535 	mov	dph,(_hexdump_eeprom_sloc0_1_0 + 1)
      00197E C0 07            [24]  536 	push	ar7
      001980 C0 06            [24]  537 	push	ar6
      001982 C0 05            [24]  538 	push	ar5
      001984 C0 04            [24]  539 	push	ar4
      001986 C0 03            [24]  540 	push	ar3
      001988 C0 02            [24]  541 	push	ar2
      00198A 12 20 57         [24]  542 	lcall	_malloc
      00198D A8 82            [24]  543 	mov	r0,dpl
      00198F A9 83            [24]  544 	mov	r1,dph
      001991 D0 02            [24]  545 	pop	ar2
      001993 D0 03            [24]  546 	pop	ar3
      001995 D0 04            [24]  547 	pop	ar4
      001997 D0 05            [24]  548 	pop	ar5
      001999 D0 06            [24]  549 	pop	ar6
      00199B D0 07            [24]  550 	pop	ar7
      00199D C0 04            [24]  551 	push	ar4
      00199F C0 05            [24]  552 	push	ar5
      0019A1 7D 00            [12]  553 	mov	r5,#0x00
      0019A3 90 01 7C         [24]  554 	mov	dptr,#(_eeprom_buffer + 0x0002)
      0019A6 E8               [12]  555 	mov	a,r0
      0019A7 F0               [24]  556 	movx	@dptr,a
      0019A8 E9               [12]  557 	mov	a,r1
      0019A9 A3               [24]  558 	inc	dptr
      0019AA F0               [24]  559 	movx	@dptr,a
      0019AB ED               [12]  560 	mov	a,r5
      0019AC A3               [24]  561 	inc	dptr
      0019AD F0               [24]  562 	movx	@dptr,a
                                    563 ;	eeprom.c:143: eeprom_buffer.buff_size = (b - a) + 5;
      0019AE 90 01 82         [24]  564 	mov	dptr,#(_eeprom_buffer + 0x0008)
      0019B1 E5 17            [12]  565 	mov	a,_hexdump_eeprom_sloc0_1_0
      0019B3 F0               [24]  566 	movx	@dptr,a
      0019B4 E5 18            [12]  567 	mov	a,(_hexdump_eeprom_sloc0_1_0 + 1)
      0019B6 A3               [24]  568 	inc	dptr
      0019B7 F0               [24]  569 	movx	@dptr,a
                                    570 ;	eeprom.c:144: eeprom_buffer.buffer_num = 0;
      0019B8 90 01 7A         [24]  571 	mov	dptr,#_eeprom_buffer
      0019BB E4               [12]  572 	clr	a
      0019BC F0               [24]  573 	movx	@dptr,a
      0019BD A3               [24]  574 	inc	dptr
      0019BE F0               [24]  575 	movx	@dptr,a
                                    576 ;	eeprom.c:145: eeprom_buffer.buffer_end = eeprom_buffer.buffer_start + (b - a) + 5;
      0019BF EA               [12]  577 	mov	a,r2
      0019C0 28               [12]  578 	add	a,r0
      0019C1 FA               [12]  579 	mov	r2,a
      0019C2 EB               [12]  580 	mov	a,r3
      0019C3 39               [12]  581 	addc	a,r1
      0019C4 FB               [12]  582 	mov	r3,a
      0019C5 8D 04            [24]  583 	mov	ar4,r5
      0019C7 74 05            [12]  584 	mov	a,#0x05
      0019C9 2A               [12]  585 	add	a,r2
      0019CA FA               [12]  586 	mov	r2,a
      0019CB E4               [12]  587 	clr	a
      0019CC 3B               [12]  588 	addc	a,r3
      0019CD FB               [12]  589 	mov	r3,a
      0019CE 90 01 7F         [24]  590 	mov	dptr,#(_eeprom_buffer + 0x0005)
      0019D1 EA               [12]  591 	mov	a,r2
      0019D2 F0               [24]  592 	movx	@dptr,a
      0019D3 EB               [12]  593 	mov	a,r3
      0019D4 A3               [24]  594 	inc	dptr
      0019D5 F0               [24]  595 	movx	@dptr,a
      0019D6 EC               [12]  596 	mov	a,r4
      0019D7 A3               [24]  597 	inc	dptr
      0019D8 F0               [24]  598 	movx	@dptr,a
                                    599 ;	eeprom.c:146: eeprom_buffer.num_char = 0;
      0019D9 90 01 84         [24]  600 	mov	dptr,#(_eeprom_buffer + 0x000a)
      0019DC F0               [24]  601 	movx	@dptr,a
      0019DD A3               [24]  602 	inc	dptr
      0019DE F0               [24]  603 	movx	@dptr,a
                                    604 ;	eeprom.c:148: printf("Reading EEPROM...\n\r");
      0019DF C0 07            [24]  605 	push	ar7
      0019E1 C0 06            [24]  606 	push	ar6
      0019E3 C0 05            [24]  607 	push	ar5
      0019E5 C0 04            [24]  608 	push	ar4
      0019E7 74 92            [12]  609 	mov	a,#___str_13
      0019E9 C0 E0            [24]  610 	push	acc
      0019EB 74 39            [12]  611 	mov	a,#(___str_13 >> 8)
      0019ED C0 E0            [24]  612 	push	acc
      0019EF 74 80            [12]  613 	mov	a,#0x80
      0019F1 C0 E0            [24]  614 	push	acc
      0019F3 12 22 2E         [24]  615 	lcall	_printf
      0019F6 15 81            [12]  616 	dec	sp
      0019F8 15 81            [12]  617 	dec	sp
      0019FA 15 81            [12]  618 	dec	sp
      0019FC D0 04            [24]  619 	pop	ar4
      0019FE D0 05            [24]  620 	pop	ar5
      001A00 D0 06            [24]  621 	pop	ar6
      001A02 D0 07            [24]  622 	pop	ar7
                                    623 ;	eeprom.c:150: for (int l = a; l <= b; l++)
      001A04 8E 17            [24]  624 	mov	_hexdump_eeprom_sloc0_1_0,r6
      001A06 8F 18            [24]  625 	mov	(_hexdump_eeprom_sloc0_1_0 + 1),r7
                                    626 ;	eeprom.c:159: free(eeprom_buffer.buffer_start);
      001A08 D0 05            [24]  627 	pop	ar5
      001A0A D0 04            [24]  628 	pop	ar4
                                    629 ;	eeprom.c:150: for (int l = a; l <= b; l++)
      001A0C                        630 00111$:
      001A0C C3               [12]  631 	clr	c
      001A0D EC               [12]  632 	mov	a,r4
      001A0E 95 17            [12]  633 	subb	a,_hexdump_eeprom_sloc0_1_0
      001A10 ED               [12]  634 	mov	a,r5
      001A11 64 80            [12]  635 	xrl	a,#0x80
      001A13 85 18 F0         [24]  636 	mov	b,(_hexdump_eeprom_sloc0_1_0 + 1)
      001A16 63 F0 80         [24]  637 	xrl	b,#0x80
      001A19 95 F0            [12]  638 	subb	a,b
      001A1B 40 6C            [24]  639 	jc	00109$
                                    640 ;	eeprom.c:153: data = i2c_read_random((l & 0xF00) >> 8, (l & 0x0FF));
      001A1D C0 04            [24]  641 	push	ar4
      001A1F C0 05            [24]  642 	push	ar5
      001A21 74 0F            [12]  643 	mov	a,#0x0f
      001A23 55 18            [12]  644 	anl	a,(_hexdump_eeprom_sloc0_1_0 + 1)
      001A25 FA               [12]  645 	mov	r2,a
      001A26 90 00 05         [24]  646 	mov	dptr,#_i2c_read_random_PARM_2
      001A29 E5 17            [12]  647 	mov	a,_hexdump_eeprom_sloc0_1_0
      001A2B F0               [24]  648 	movx	@dptr,a
      001A2C 8A 82            [24]  649 	mov	dpl,r2
      001A2E C0 07            [24]  650 	push	ar7
      001A30 C0 06            [24]  651 	push	ar6
      001A32 C0 05            [24]  652 	push	ar5
      001A34 C0 04            [24]  653 	push	ar4
      001A36 12 03 9E         [24]  654 	lcall	_i2c_read_random
      001A39 AB 82            [24]  655 	mov	r3,dpl
      001A3B D0 04            [24]  656 	pop	ar4
      001A3D D0 05            [24]  657 	pop	ar5
      001A3F D0 06            [24]  658 	pop	ar6
      001A41 D0 07            [24]  659 	pop	ar7
                                    660 ;	eeprom.c:154: *(eeprom_buffer.buffer_start + eeprom_buffer.num_char) = data;
      001A43 90 01 7C         [24]  661 	mov	dptr,#(_eeprom_buffer + 0x0002)
      001A46 E0               [24]  662 	movx	a,@dptr
      001A47 F8               [12]  663 	mov	r0,a
      001A48 A3               [24]  664 	inc	dptr
      001A49 E0               [24]  665 	movx	a,@dptr
      001A4A F9               [12]  666 	mov	r1,a
      001A4B A3               [24]  667 	inc	dptr
      001A4C E0               [24]  668 	movx	a,@dptr
      001A4D FA               [12]  669 	mov	r2,a
      001A4E 90 01 84         [24]  670 	mov	dptr,#(_eeprom_buffer + 0x000a)
      001A51 E0               [24]  671 	movx	a,@dptr
      001A52 FC               [12]  672 	mov	r4,a
      001A53 A3               [24]  673 	inc	dptr
      001A54 E0               [24]  674 	movx	a,@dptr
      001A55 FD               [12]  675 	mov	r5,a
      001A56 EC               [12]  676 	mov	a,r4
      001A57 28               [12]  677 	add	a,r0
      001A58 F8               [12]  678 	mov	r0,a
      001A59 ED               [12]  679 	mov	a,r5
      001A5A 39               [12]  680 	addc	a,r1
      001A5B F9               [12]  681 	mov	r1,a
      001A5C 88 82            [24]  682 	mov	dpl,r0
      001A5E 89 83            [24]  683 	mov	dph,r1
      001A60 8A F0            [24]  684 	mov	b,r2
      001A62 EB               [12]  685 	mov	a,r3
      001A63 12 20 00         [24]  686 	lcall	__gptrput
                                    687 ;	eeprom.c:155: eeprom_buffer.num_char += 1;
      001A66 90 01 84         [24]  688 	mov	dptr,#(_eeprom_buffer + 0x000a)
      001A69 E0               [24]  689 	movx	a,@dptr
      001A6A FC               [12]  690 	mov	r4,a
      001A6B A3               [24]  691 	inc	dptr
      001A6C E0               [24]  692 	movx	a,@dptr
      001A6D FD               [12]  693 	mov	r5,a
      001A6E 0C               [12]  694 	inc	r4
      001A6F BC 00 01         [24]  695 	cjne	r4,#0x00,00152$
      001A72 0D               [12]  696 	inc	r5
      001A73                        697 00152$:
      001A73 90 01 84         [24]  698 	mov	dptr,#(_eeprom_buffer + 0x000a)
      001A76 EC               [12]  699 	mov	a,r4
      001A77 F0               [24]  700 	movx	@dptr,a
      001A78 ED               [12]  701 	mov	a,r5
      001A79 A3               [24]  702 	inc	dptr
      001A7A F0               [24]  703 	movx	@dptr,a
                                    704 ;	eeprom.c:150: for (int l = a; l <= b; l++)
      001A7B 05 17            [12]  705 	inc	_hexdump_eeprom_sloc0_1_0
      001A7D E4               [12]  706 	clr	a
      001A7E B5 17 02         [24]  707 	cjne	a,_hexdump_eeprom_sloc0_1_0,00153$
      001A81 05 18            [12]  708 	inc	(_hexdump_eeprom_sloc0_1_0 + 1)
      001A83                        709 00153$:
      001A83 D0 05            [24]  710 	pop	ar5
      001A85 D0 04            [24]  711 	pop	ar4
      001A87 80 83            [24]  712 	sjmp	00111$
      001A89                        713 00109$:
                                    714 ;	eeprom.c:158: dump_eeprom_buffer(a);
      001A89 8E 82            [24]  715 	mov	dpl,r6
      001A8B 8F 83            [24]  716 	mov	dph,r7
      001A8D 12 1C 40         [24]  717 	lcall	_dump_eeprom_buffer
                                    718 ;	eeprom.c:159: free(eeprom_buffer.buffer_start);
      001A90 90 01 7C         [24]  719 	mov	dptr,#(_eeprom_buffer + 0x0002)
      001A93 E0               [24]  720 	movx	a,@dptr
      001A94 FD               [12]  721 	mov	r5,a
      001A95 A3               [24]  722 	inc	dptr
      001A96 E0               [24]  723 	movx	a,@dptr
      001A97 FE               [12]  724 	mov	r6,a
      001A98 A3               [24]  725 	inc	dptr
      001A99 E0               [24]  726 	movx	a,@dptr
      001A9A FF               [12]  727 	mov	r7,a
      001A9B 8D 82            [24]  728 	mov	dpl,r5
      001A9D 8E 83            [24]  729 	mov	dph,r6
      001A9F 8F F0            [24]  730 	mov	b,r7
                                    731 ;	eeprom.c:160: }
      001AA1 02 1E 35         [24]  732 	ljmp	_free
                                    733 ;------------------------------------------------------------
                                    734 ;Allocation info for local variables in function 'blockfill_eeprom'
                                    735 ;------------------------------------------------------------
                                    736 ;a                         Allocated with name '_blockfill_eeprom_a_65536_67'
                                    737 ;b                         Allocated with name '_blockfill_eeprom_b_65536_67'
                                    738 ;c                         Allocated with name '_blockfill_eeprom_c_65536_67'
                                    739 ;l                         Allocated with name '_blockfill_eeprom_l_131072_70'
                                    740 ;------------------------------------------------------------
                                    741 ;	eeprom.c:162: void blockfill_eeprom()
                                    742 ;	-----------------------------------------
                                    743 ;	 function blockfill_eeprom
                                    744 ;	-----------------------------------------
      001AA4                        745 _blockfill_eeprom:
                                    746 ;	eeprom.c:166: get_blockfill_from_address:
      001AA4                        747 00101$:
                                    748 ;	eeprom.c:167: printf("Please give a valid starting address (0x000 - 0x7FF) \n\r");
      001AA4 74 25            [12]  749 	mov	a,#___str_11
      001AA6 C0 E0            [24]  750 	push	acc
      001AA8 74 39            [12]  751 	mov	a,#(___str_11 >> 8)
      001AAA C0 E0            [24]  752 	push	acc
      001AAC 74 80            [12]  753 	mov	a,#0x80
      001AAE C0 E0            [24]  754 	push	acc
      001AB0 12 22 2E         [24]  755 	lcall	_printf
      001AB3 15 81            [12]  756 	dec	sp
      001AB5 15 81            [12]  757 	dec	sp
      001AB7 15 81            [12]  758 	dec	sp
                                    759 ;	eeprom.c:168: a = get_number_hex(3);
      001AB9 90 00 03         [24]  760 	mov	dptr,#0x0003
      001ABC 12 05 5A         [24]  761 	lcall	_get_number_hex
      001ABF AE 82            [24]  762 	mov	r6,dpl
                                    763 ;	eeprom.c:170: if (a < 0 || a > 2047)
      001AC1 E5 83            [12]  764 	mov	a,dph
      001AC3 FF               [12]  765 	mov	r7,a
      001AC4 20 E7 DD         [24]  766 	jb	acc.7,00101$
      001AC7 C3               [12]  767 	clr	c
      001AC8 74 FF            [12]  768 	mov	a,#0xff
      001ACA 9E               [12]  769 	subb	a,r6
      001ACB 74 87            [12]  770 	mov	a,#(0x07 ^ 0x80)
      001ACD 8F F0            [24]  771 	mov	b,r7
      001ACF 63 F0 80         [24]  772 	xrl	b,#0x80
      001AD2 95 F0            [12]  773 	subb	a,b
      001AD4 40 CE            [24]  774 	jc	00101$
                                    775 ;	eeprom.c:175: get_blockfill_to_address:
      001AD6                        776 00105$:
                                    777 ;	eeprom.c:176: printf("Please give a valid ending address (0x%X - 0x7FF) \n\r", a);
      001AD6 C0 07            [24]  778 	push	ar7
      001AD8 C0 06            [24]  779 	push	ar6
      001ADA C0 06            [24]  780 	push	ar6
      001ADC C0 07            [24]  781 	push	ar7
      001ADE 74 5D            [12]  782 	mov	a,#___str_12
      001AE0 C0 E0            [24]  783 	push	acc
      001AE2 74 39            [12]  784 	mov	a,#(___str_12 >> 8)
      001AE4 C0 E0            [24]  785 	push	acc
      001AE6 74 80            [12]  786 	mov	a,#0x80
      001AE8 C0 E0            [24]  787 	push	acc
      001AEA 12 22 2E         [24]  788 	lcall	_printf
      001AED E5 81            [12]  789 	mov	a,sp
      001AEF 24 FB            [12]  790 	add	a,#0xfb
      001AF1 F5 81            [12]  791 	mov	sp,a
                                    792 ;	eeprom.c:177: b = get_number_hex(3);
      001AF3 90 00 03         [24]  793 	mov	dptr,#0x0003
      001AF6 12 05 5A         [24]  794 	lcall	_get_number_hex
      001AF9 AC 82            [24]  795 	mov	r4,dpl
      001AFB AD 83            [24]  796 	mov	r5,dph
      001AFD D0 06            [24]  797 	pop	ar6
      001AFF D0 07            [24]  798 	pop	ar7
                                    799 ;	eeprom.c:179: if (b < a || b > 2047)
      001B01 C3               [12]  800 	clr	c
      001B02 EC               [12]  801 	mov	a,r4
      001B03 9E               [12]  802 	subb	a,r6
      001B04 ED               [12]  803 	mov	a,r5
      001B05 64 80            [12]  804 	xrl	a,#0x80
      001B07 8F F0            [24]  805 	mov	b,r7
      001B09 63 F0 80         [24]  806 	xrl	b,#0x80
      001B0C 95 F0            [12]  807 	subb	a,b
      001B0E 40 C6            [24]  808 	jc	00105$
      001B10 74 FF            [12]  809 	mov	a,#0xff
      001B12 9C               [12]  810 	subb	a,r4
      001B13 74 87            [12]  811 	mov	a,#(0x07 ^ 0x80)
      001B15 8D F0            [24]  812 	mov	b,r5
      001B17 63 F0 80         [24]  813 	xrl	b,#0x80
      001B1A 95 F0            [12]  814 	subb	a,b
      001B1C 40 B8            [24]  815 	jc	00105$
                                    816 ;	eeprom.c:185: printf("\n\rPlease give a valid data for blockfill (0x00 - 0xFF) \n\r");
      001B1E C0 07            [24]  817 	push	ar7
      001B20 C0 06            [24]  818 	push	ar6
      001B22 C0 05            [24]  819 	push	ar5
      001B24 C0 04            [24]  820 	push	ar4
      001B26 74 A6            [12]  821 	mov	a,#___str_14
      001B28 C0 E0            [24]  822 	push	acc
      001B2A 74 39            [12]  823 	mov	a,#(___str_14 >> 8)
      001B2C C0 E0            [24]  824 	push	acc
      001B2E 74 80            [12]  825 	mov	a,#0x80
      001B30 C0 E0            [24]  826 	push	acc
      001B32 12 22 2E         [24]  827 	lcall	_printf
      001B35 15 81            [12]  828 	dec	sp
      001B37 15 81            [12]  829 	dec	sp
      001B39 15 81            [12]  830 	dec	sp
                                    831 ;	eeprom.c:186: c = get_number_hex(2);
      001B3B 90 00 02         [24]  832 	mov	dptr,#0x0002
      001B3E 12 05 5A         [24]  833 	lcall	_get_number_hex
      001B41 AA 82            [24]  834 	mov	r2,dpl
      001B43 AB 83            [24]  835 	mov	r3,dph
                                    836 ;	eeprom.c:188: printf("Writing EEPROM...\n\r");
      001B45 C0 03            [24]  837 	push	ar3
      001B47 C0 02            [24]  838 	push	ar2
      001B49 74 E0            [12]  839 	mov	a,#___str_15
      001B4B C0 E0            [24]  840 	push	acc
      001B4D 74 39            [12]  841 	mov	a,#(___str_15 >> 8)
      001B4F C0 E0            [24]  842 	push	acc
      001B51 74 80            [12]  843 	mov	a,#0x80
      001B53 C0 E0            [24]  844 	push	acc
      001B55 12 22 2E         [24]  845 	lcall	_printf
      001B58 15 81            [12]  846 	dec	sp
      001B5A 15 81            [12]  847 	dec	sp
      001B5C 15 81            [12]  848 	dec	sp
      001B5E D0 02            [24]  849 	pop	ar2
      001B60 D0 03            [24]  850 	pop	ar3
      001B62 D0 04            [24]  851 	pop	ar4
      001B64 D0 05            [24]  852 	pop	ar5
      001B66 D0 06            [24]  853 	pop	ar6
      001B68 D0 07            [24]  854 	pop	ar7
                                    855 ;	eeprom.c:189: for (int l = a; l <= b; l++)
      001B6A                        856 00112$:
      001B6A C3               [12]  857 	clr	c
      001B6B EC               [12]  858 	mov	a,r4
      001B6C 9E               [12]  859 	subb	a,r6
      001B6D ED               [12]  860 	mov	a,r5
      001B6E 64 80            [12]  861 	xrl	a,#0x80
      001B70 8F F0            [24]  862 	mov	b,r7
      001B72 63 F0 80         [24]  863 	xrl	b,#0x80
      001B75 95 F0            [12]  864 	subb	a,b
      001B77 40 32            [24]  865 	jc	00110$
                                    866 ;	eeprom.c:191: i2c_write_random((l & 0xF00) >> 8, (l & 0x0FF), (unsigned char)c);
      001B79 74 0F            [12]  867 	mov	a,#0x0f
      001B7B 5F               [12]  868 	anl	a,r7
      001B7C F8               [12]  869 	mov	r0,a
      001B7D 90 00 02         [24]  870 	mov	dptr,#_i2c_write_random_PARM_2
      001B80 EE               [12]  871 	mov	a,r6
      001B81 F0               [24]  872 	movx	@dptr,a
      001B82 90 00 03         [24]  873 	mov	dptr,#_i2c_write_random_PARM_3
      001B85 EA               [12]  874 	mov	a,r2
      001B86 F0               [24]  875 	movx	@dptr,a
      001B87 88 82            [24]  876 	mov	dpl,r0
      001B89 C0 07            [24]  877 	push	ar7
      001B8B C0 06            [24]  878 	push	ar6
      001B8D C0 05            [24]  879 	push	ar5
      001B8F C0 04            [24]  880 	push	ar4
      001B91 C0 03            [24]  881 	push	ar3
      001B93 C0 02            [24]  882 	push	ar2
      001B95 12 03 45         [24]  883 	lcall	_i2c_write_random
      001B98 D0 02            [24]  884 	pop	ar2
      001B9A D0 03            [24]  885 	pop	ar3
      001B9C D0 04            [24]  886 	pop	ar4
      001B9E D0 05            [24]  887 	pop	ar5
      001BA0 D0 06            [24]  888 	pop	ar6
      001BA2 D0 07            [24]  889 	pop	ar7
                                    890 ;	eeprom.c:189: for (int l = a; l <= b; l++)
      001BA4 0E               [12]  891 	inc	r6
      001BA5 BE 00 C2         [24]  892 	cjne	r6,#0x00,00112$
      001BA8 0F               [12]  893 	inc	r7
      001BA9 80 BF            [24]  894 	sjmp	00112$
      001BAB                        895 00110$:
                                    896 ;	eeprom.c:194: printf("\n\rBlockfill finished...\n\r");
      001BAB 74 F4            [12]  897 	mov	a,#___str_16
      001BAD C0 E0            [24]  898 	push	acc
      001BAF 74 39            [12]  899 	mov	a,#(___str_16 >> 8)
      001BB1 C0 E0            [24]  900 	push	acc
      001BB3 74 80            [12]  901 	mov	a,#0x80
      001BB5 C0 E0            [24]  902 	push	acc
      001BB7 12 22 2E         [24]  903 	lcall	_printf
      001BBA 15 81            [12]  904 	dec	sp
      001BBC 15 81            [12]  905 	dec	sp
      001BBE 15 81            [12]  906 	dec	sp
                                    907 ;	eeprom.c:195: }
      001BC0 22               [24]  908 	ret
                                    909 ;------------------------------------------------------------
                                    910 ;Allocation info for local variables in function 'print_eeprom_menu'
                                    911 ;------------------------------------------------------------
                                    912 ;	eeprom.c:197: void print_eeprom_menu()
                                    913 ;	-----------------------------------------
                                    914 ;	 function print_eeprom_menu
                                    915 ;	-----------------------------------------
      001BC1                        916 _print_eeprom_menu:
                                    917 ;	eeprom.c:199: printf("\n\n\r^^^^^^^^^^^^^^^^^^^-EEPROM-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ \n\n\r");
      001BC1 74 0E            [12]  918 	mov	a,#___str_17
      001BC3 C0 E0            [24]  919 	push	acc
      001BC5 74 3A            [12]  920 	mov	a,#(___str_17 >> 8)
      001BC7 C0 E0            [24]  921 	push	acc
      001BC9 74 80            [12]  922 	mov	a,#0x80
      001BCB C0 E0            [24]  923 	push	acc
      001BCD 12 22 2E         [24]  924 	lcall	_printf
      001BD0 15 81            [12]  925 	dec	sp
      001BD2 15 81            [12]  926 	dec	sp
      001BD4 15 81            [12]  927 	dec	sp
                                    928 ;	eeprom.c:200: printf("'R' -> Read Random Byte\n\r");
      001BD6 74 50            [12]  929 	mov	a,#___str_18
      001BD8 C0 E0            [24]  930 	push	acc
      001BDA 74 3A            [12]  931 	mov	a,#(___str_18 >> 8)
      001BDC C0 E0            [24]  932 	push	acc
      001BDE 74 80            [12]  933 	mov	a,#0x80
      001BE0 C0 E0            [24]  934 	push	acc
      001BE2 12 22 2E         [24]  935 	lcall	_printf
      001BE5 15 81            [12]  936 	dec	sp
      001BE7 15 81            [12]  937 	dec	sp
      001BE9 15 81            [12]  938 	dec	sp
                                    939 ;	eeprom.c:201: printf("'W' -> Write Random Byte\n\r");
      001BEB 74 6A            [12]  940 	mov	a,#___str_19
      001BED C0 E0            [24]  941 	push	acc
      001BEF 74 3A            [12]  942 	mov	a,#(___str_19 >> 8)
      001BF1 C0 E0            [24]  943 	push	acc
      001BF3 74 80            [12]  944 	mov	a,#0x80
      001BF5 C0 E0            [24]  945 	push	acc
      001BF7 12 22 2E         [24]  946 	lcall	_printf
      001BFA 15 81            [12]  947 	dec	sp
      001BFC 15 81            [12]  948 	dec	sp
      001BFE 15 81            [12]  949 	dec	sp
                                    950 ;	eeprom.c:202: printf("'D' -> Hexdump\n\r");
      001C00 74 85            [12]  951 	mov	a,#___str_20
      001C02 C0 E0            [24]  952 	push	acc
      001C04 74 3A            [12]  953 	mov	a,#(___str_20 >> 8)
      001C06 C0 E0            [24]  954 	push	acc
      001C08 74 80            [12]  955 	mov	a,#0x80
      001C0A C0 E0            [24]  956 	push	acc
      001C0C 12 22 2E         [24]  957 	lcall	_printf
      001C0F 15 81            [12]  958 	dec	sp
      001C11 15 81            [12]  959 	dec	sp
      001C13 15 81            [12]  960 	dec	sp
                                    961 ;	eeprom.c:203: printf("'B' -> Block Fill\n\r");
      001C15 74 96            [12]  962 	mov	a,#___str_21
      001C17 C0 E0            [24]  963 	push	acc
      001C19 74 3A            [12]  964 	mov	a,#(___str_21 >> 8)
      001C1B C0 E0            [24]  965 	push	acc
      001C1D 74 80            [12]  966 	mov	a,#0x80
      001C1F C0 E0            [24]  967 	push	acc
      001C21 12 22 2E         [24]  968 	lcall	_printf
      001C24 15 81            [12]  969 	dec	sp
      001C26 15 81            [12]  970 	dec	sp
      001C28 15 81            [12]  971 	dec	sp
                                    972 ;	eeprom.c:204: printf("'F' -> Reset EEPROM \n\r");
      001C2A 74 AA            [12]  973 	mov	a,#___str_22
      001C2C C0 E0            [24]  974 	push	acc
      001C2E 74 3A            [12]  975 	mov	a,#(___str_22 >> 8)
      001C30 C0 E0            [24]  976 	push	acc
      001C32 74 80            [12]  977 	mov	a,#0x80
      001C34 C0 E0            [24]  978 	push	acc
      001C36 12 22 2E         [24]  979 	lcall	_printf
      001C39 15 81            [12]  980 	dec	sp
      001C3B 15 81            [12]  981 	dec	sp
      001C3D 15 81            [12]  982 	dec	sp
                                    983 ;	eeprom.c:205: }
      001C3F 22               [24]  984 	ret
                                    985 ;------------------------------------------------------------
                                    986 ;Allocation info for local variables in function 'dump_eeprom_buffer'
                                    987 ;------------------------------------------------------------
                                    988 ;from                      Allocated with name '_dump_eeprom_buffer_from_65536_73'
                                    989 ;j                         Allocated with name '_dump_eeprom_buffer_j_65537_75'
                                    990 ;i                         Allocated with name '_dump_eeprom_buffer_i_131073_76'
                                    991 ;------------------------------------------------------------
                                    992 ;	eeprom.c:207: void dump_eeprom_buffer(int from)
                                    993 ;	-----------------------------------------
                                    994 ;	 function dump_eeprom_buffer
                                    995 ;	-----------------------------------------
      001C40                        996 _dump_eeprom_buffer:
      001C40 AF 83            [24]  997 	mov	r7,dph
      001C42 E5 82            [12]  998 	mov	a,dpl
      001C44 90 01 86         [24]  999 	mov	dptr,#_dump_eeprom_buffer_from_65536_73
      001C47 F0               [24] 1000 	movx	@dptr,a
      001C48 EF               [12] 1001 	mov	a,r7
      001C49 A3               [24] 1002 	inc	dptr
      001C4A F0               [24] 1003 	movx	@dptr,a
                                   1004 ;	eeprom.c:210: printf("\n\r-------------------------HEXDUMP--------------------------------");
      001C4B 74 C1            [12] 1005 	mov	a,#___str_23
      001C4D C0 E0            [24] 1006 	push	acc
      001C4F 74 3A            [12] 1007 	mov	a,#(___str_23 >> 8)
      001C51 C0 E0            [24] 1008 	push	acc
      001C53 74 80            [12] 1009 	mov	a,#0x80
      001C55 C0 E0            [24] 1010 	push	acc
      001C57 12 22 2E         [24] 1011 	lcall	_printf
      001C5A 15 81            [12] 1012 	dec	sp
      001C5C 15 81            [12] 1013 	dec	sp
      001C5E 15 81            [12] 1014 	dec	sp
                                   1015 ;	eeprom.c:211: printf("\n\r ADDR: +0 +1 +2 +3 +4 +5 +6 +7 +8 +9 +A +B +C +D +E +F \n\r");
      001C60 74 04            [12] 1016 	mov	a,#___str_24
      001C62 C0 E0            [24] 1017 	push	acc
      001C64 74 3B            [12] 1018 	mov	a,#(___str_24 >> 8)
      001C66 C0 E0            [24] 1019 	push	acc
      001C68 74 80            [12] 1020 	mov	a,#0x80
      001C6A C0 E0            [24] 1021 	push	acc
      001C6C 12 22 2E         [24] 1022 	lcall	_printf
      001C6F 15 81            [12] 1023 	dec	sp
      001C71 15 81            [12] 1024 	dec	sp
      001C73 15 81            [12] 1025 	dec	sp
                                   1026 ;	eeprom.c:212: int j = 16;
      001C75 90 01 88         [24] 1027 	mov	dptr,#_dump_eeprom_buffer_j_65537_75
      001C78 74 10            [12] 1028 	mov	a,#0x10
      001C7A F0               [24] 1029 	movx	@dptr,a
      001C7B E4               [12] 1030 	clr	a
      001C7C A3               [24] 1031 	inc	dptr
      001C7D F0               [24] 1032 	movx	@dptr,a
                                   1033 ;	eeprom.c:214: for (int i = 0; i < eeprom_buffer.num_char; i++)
      001C7E 90 01 86         [24] 1034 	mov	dptr,#_dump_eeprom_buffer_from_65536_73
      001C81 E0               [24] 1035 	movx	a,@dptr
      001C82 FE               [12] 1036 	mov	r6,a
      001C83 A3               [24] 1037 	inc	dptr
      001C84 E0               [24] 1038 	movx	a,@dptr
      001C85 FF               [12] 1039 	mov	r7,a
      001C86 7C 00            [12] 1040 	mov	r4,#0x00
      001C88 7D 00            [12] 1041 	mov	r5,#0x00
      001C8A                       1042 00107$:
      001C8A 90 01 84         [24] 1043 	mov	dptr,#(_eeprom_buffer + 0x000a)
      001C8D E0               [24] 1044 	movx	a,@dptr
      001C8E FA               [12] 1045 	mov	r2,a
      001C8F A3               [24] 1046 	inc	dptr
      001C90 E0               [24] 1047 	movx	a,@dptr
      001C91 FB               [12] 1048 	mov	r3,a
      001C92 C3               [12] 1049 	clr	c
      001C93 EC               [12] 1050 	mov	a,r4
      001C94 9A               [12] 1051 	subb	a,r2
      001C95 ED               [12] 1052 	mov	a,r5
      001C96 64 80            [12] 1053 	xrl	a,#0x80
      001C98 8B F0            [24] 1054 	mov	b,r3
      001C9A 63 F0 80         [24] 1055 	xrl	b,#0x80
      001C9D 95 F0            [12] 1056 	subb	a,b
      001C9F 40 03            [24] 1057 	jc	00128$
      001CA1 02 1D 58         [24] 1058 	ljmp	00105$
      001CA4                       1059 00128$:
                                   1060 ;	eeprom.c:216: if (j == 16)
      001CA4 90 01 88         [24] 1061 	mov	dptr,#_dump_eeprom_buffer_j_65537_75
      001CA7 E0               [24] 1062 	movx	a,@dptr
      001CA8 FA               [12] 1063 	mov	r2,a
      001CA9 A3               [24] 1064 	inc	dptr
      001CAA E0               [24] 1065 	movx	a,@dptr
      001CAB FB               [12] 1066 	mov	r3,a
      001CAC BA 10 32         [24] 1067 	cjne	r2,#0x10,00102$
      001CAF BB 00 2F         [24] 1068 	cjne	r3,#0x00,00102$
                                   1069 ;	eeprom.c:218: printf("\n\r0x%03X: ", (from + i));
      001CB2 EC               [12] 1070 	mov	a,r4
      001CB3 2E               [12] 1071 	add	a,r6
      001CB4 FA               [12] 1072 	mov	r2,a
      001CB5 ED               [12] 1073 	mov	a,r5
      001CB6 3F               [12] 1074 	addc	a,r7
      001CB7 FB               [12] 1075 	mov	r3,a
      001CB8 C0 07            [24] 1076 	push	ar7
      001CBA C0 06            [24] 1077 	push	ar6
      001CBC C0 05            [24] 1078 	push	ar5
      001CBE C0 04            [24] 1079 	push	ar4
      001CC0 C0 02            [24] 1080 	push	ar2
      001CC2 C0 03            [24] 1081 	push	ar3
      001CC4 74 40            [12] 1082 	mov	a,#___str_25
      001CC6 C0 E0            [24] 1083 	push	acc
      001CC8 74 3B            [12] 1084 	mov	a,#(___str_25 >> 8)
      001CCA C0 E0            [24] 1085 	push	acc
      001CCC 74 80            [12] 1086 	mov	a,#0x80
      001CCE C0 E0            [24] 1087 	push	acc
      001CD0 12 22 2E         [24] 1088 	lcall	_printf
      001CD3 E5 81            [12] 1089 	mov	a,sp
      001CD5 24 FB            [12] 1090 	add	a,#0xfb
      001CD7 F5 81            [12] 1091 	mov	sp,a
      001CD9 D0 04            [24] 1092 	pop	ar4
      001CDB D0 05            [24] 1093 	pop	ar5
      001CDD D0 06            [24] 1094 	pop	ar6
      001CDF D0 07            [24] 1095 	pop	ar7
      001CE1                       1096 00102$:
                                   1097 ;	eeprom.c:220: printf("%02X ", *(eeprom_buffer.buffer_start + i));
      001CE1 90 01 7C         [24] 1098 	mov	dptr,#(_eeprom_buffer + 0x0002)
      001CE4 E0               [24] 1099 	movx	a,@dptr
      001CE5 F9               [12] 1100 	mov	r1,a
      001CE6 A3               [24] 1101 	inc	dptr
      001CE7 E0               [24] 1102 	movx	a,@dptr
      001CE8 FA               [12] 1103 	mov	r2,a
      001CE9 A3               [24] 1104 	inc	dptr
      001CEA E0               [24] 1105 	movx	a,@dptr
      001CEB FB               [12] 1106 	mov	r3,a
      001CEC EC               [12] 1107 	mov	a,r4
      001CED 29               [12] 1108 	add	a,r1
      001CEE F9               [12] 1109 	mov	r1,a
      001CEF ED               [12] 1110 	mov	a,r5
      001CF0 3A               [12] 1111 	addc	a,r2
      001CF1 FA               [12] 1112 	mov	r2,a
      001CF2 89 82            [24] 1113 	mov	dpl,r1
      001CF4 8A 83            [24] 1114 	mov	dph,r2
      001CF6 8B F0            [24] 1115 	mov	b,r3
      001CF8 12 2C 4D         [24] 1116 	lcall	__gptrget
      001CFB F9               [12] 1117 	mov	r1,a
      001CFC 7B 00            [12] 1118 	mov	r3,#0x00
      001CFE C0 07            [24] 1119 	push	ar7
      001D00 C0 06            [24] 1120 	push	ar6
      001D02 C0 05            [24] 1121 	push	ar5
      001D04 C0 04            [24] 1122 	push	ar4
      001D06 C0 01            [24] 1123 	push	ar1
      001D08 C0 03            [24] 1124 	push	ar3
      001D0A 74 4B            [12] 1125 	mov	a,#___str_26
      001D0C C0 E0            [24] 1126 	push	acc
      001D0E 74 3B            [12] 1127 	mov	a,#(___str_26 >> 8)
      001D10 C0 E0            [24] 1128 	push	acc
      001D12 74 80            [12] 1129 	mov	a,#0x80
      001D14 C0 E0            [24] 1130 	push	acc
      001D16 12 22 2E         [24] 1131 	lcall	_printf
      001D19 E5 81            [12] 1132 	mov	a,sp
      001D1B 24 FB            [12] 1133 	add	a,#0xfb
      001D1D F5 81            [12] 1134 	mov	sp,a
      001D1F D0 04            [24] 1135 	pop	ar4
      001D21 D0 05            [24] 1136 	pop	ar5
      001D23 D0 06            [24] 1137 	pop	ar6
      001D25 D0 07            [24] 1138 	pop	ar7
                                   1139 ;	eeprom.c:221: j--;
      001D27 90 01 88         [24] 1140 	mov	dptr,#_dump_eeprom_buffer_j_65537_75
      001D2A E0               [24] 1141 	movx	a,@dptr
      001D2B 24 FF            [12] 1142 	add	a,#0xff
      001D2D FA               [12] 1143 	mov	r2,a
      001D2E A3               [24] 1144 	inc	dptr
      001D2F E0               [24] 1145 	movx	a,@dptr
      001D30 34 FF            [12] 1146 	addc	a,#0xff
      001D32 FB               [12] 1147 	mov	r3,a
      001D33 90 01 88         [24] 1148 	mov	dptr,#_dump_eeprom_buffer_j_65537_75
      001D36 EA               [12] 1149 	mov	a,r2
      001D37 F0               [24] 1150 	movx	@dptr,a
      001D38 EB               [12] 1151 	mov	a,r3
      001D39 A3               [24] 1152 	inc	dptr
      001D3A F0               [24] 1153 	movx	@dptr,a
                                   1154 ;	eeprom.c:222: if (j == 0)
      001D3B 90 01 88         [24] 1155 	mov	dptr,#_dump_eeprom_buffer_j_65537_75
      001D3E E0               [24] 1156 	movx	a,@dptr
      001D3F F5 F0            [12] 1157 	mov	b,a
      001D41 A3               [24] 1158 	inc	dptr
      001D42 E0               [24] 1159 	movx	a,@dptr
      001D43 45 F0            [12] 1160 	orl	a,b
      001D45 70 09            [24] 1161 	jnz	00108$
                                   1162 ;	eeprom.c:223: j = 16;
      001D47 90 01 88         [24] 1163 	mov	dptr,#_dump_eeprom_buffer_j_65537_75
      001D4A 74 10            [12] 1164 	mov	a,#0x10
      001D4C F0               [24] 1165 	movx	@dptr,a
      001D4D E4               [12] 1166 	clr	a
      001D4E A3               [24] 1167 	inc	dptr
      001D4F F0               [24] 1168 	movx	@dptr,a
      001D50                       1169 00108$:
                                   1170 ;	eeprom.c:214: for (int i = 0; i < eeprom_buffer.num_char; i++)
      001D50 0C               [12] 1171 	inc	r4
      001D51 BC 00 01         [24] 1172 	cjne	r4,#0x00,00132$
      001D54 0D               [12] 1173 	inc	r5
      001D55                       1174 00132$:
      001D55 02 1C 8A         [24] 1175 	ljmp	00107$
      001D58                       1176 00105$:
                                   1177 ;	eeprom.c:225: printf("\n\n\r");
      001D58 74 51            [12] 1178 	mov	a,#___str_27
      001D5A C0 E0            [24] 1179 	push	acc
      001D5C 74 3B            [12] 1180 	mov	a,#(___str_27 >> 8)
      001D5E C0 E0            [24] 1181 	push	acc
      001D60 74 80            [12] 1182 	mov	a,#0x80
      001D62 C0 E0            [24] 1183 	push	acc
      001D64 12 22 2E         [24] 1184 	lcall	_printf
      001D67 15 81            [12] 1185 	dec	sp
      001D69 15 81            [12] 1186 	dec	sp
      001D6B 15 81            [12] 1187 	dec	sp
                                   1188 ;	eeprom.c:226: }
      001D6D 22               [24] 1189 	ret
                                   1190 	.area CSEG    (CODE)
                                   1191 	.area CONST   (CODE)
                                   1192 	.area CONST   (CODE)
      003764                       1193 ___str_0:
      003764 20                    1194 	.ascii " "
      003765 0A                    1195 	.db 0x0a
      003766 0D                    1196 	.db 0x0d
      003767 20 48 65 6C 6C 6F 2C  1197 	.ascii " Hello, In EEPROM Demo mode"
             20 49 6E 20 45 45 50
             52 4F 4D 20 44 65 6D
             6F 20 6D 6F 64 65
      003782 00                    1198 	.db 0x00
                                   1199 	.area CSEG    (CODE)
                                   1200 	.area CONST   (CODE)
      003783                       1201 ___str_1:
      003783 50 6C 65 61 73 65 20  1202 	.ascii "Please make a valid choice"
             6D 61 6B 65 20 61 20
             76 61 6C 69 64 20 63
             68 6F 69 63 65
      00379D 0A                    1203 	.db 0x0a
      00379E 0D                    1204 	.db 0x0d
      00379F 00                    1205 	.db 0x00
                                   1206 	.area CSEG    (CODE)
                                   1207 	.area CONST   (CODE)
      0037A0                       1208 ___str_2:
      0037A0 0A                    1209 	.db 0x0a
      0037A1 0D                    1210 	.db 0x0d
      0037A2 49 32 43 20 52 65 73  1211 	.ascii "I2C Reset has been performed "
             65 74 20 68 61 73 20
             62 65 65 6E 20 70 65
             72 66 6F 72 6D 65 64
             20
      0037BF 0A                    1212 	.db 0x0a
      0037C0 0D                    1213 	.db 0x0d
      0037C1 00                    1214 	.db 0x00
                                   1215 	.area CSEG    (CODE)
                                   1216 	.area CONST   (CODE)
      0037C2                       1217 ___str_3:
      0037C2 0A                    1218 	.db 0x0a
      0037C3 0D                    1219 	.db 0x0d
      0037C4 50 6C 65 61 73 65 20  1220 	.ascii "Please 'E' to go to EEPROM Menu "
             27 45 27 20 74 6F 20
             67 6F 20 74 6F 20 45
             45 50 52 4F 4D 20 4D
             65 6E 75 20
      0037E4 0A                    1221 	.db 0x0a
      0037E5 0D                    1222 	.db 0x0d
      0037E6 00                    1223 	.db 0x00
                                   1224 	.area CSEG    (CODE)
                                   1225 	.area CONST   (CODE)
      0037E7                       1226 ___str_4:
      0037E7 0A                    1227 	.db 0x0a
      0037E8 0D                    1228 	.db 0x0d
      0037E9 20 50 6C 65 61 73 65  1229 	.ascii " Please give a valid address to read from (0x000 - 0x7FF) "
             20 67 69 76 65 20 61
             20 76 61 6C 69 64 20
             61 64 64 72 65 73 73
             20 74 6F 20 72 65 61
             64 20 66 72 6F 6D 20
             28 30 78 30 30 30 20
             2D 20 30 78 37 46 46
             29 20
      003823 0A                    1230 	.db 0x0a
      003824 0D                    1231 	.db 0x0d
      003825 00                    1232 	.db 0x00
                                   1233 	.area CSEG    (CODE)
                                   1234 	.area CONST   (CODE)
      003826                       1235 ___str_5:
      003826 42 6C 6F 63 6B 20 69  1236 	.ascii "Block is is %x "
             73 20 69 73 20 25 78
             20
      003835 0A                    1237 	.db 0x0a
      003836 0D                    1238 	.db 0x0d
      003837 00                    1239 	.db 0x00
                                   1240 	.area CSEG    (CODE)
                                   1241 	.area CONST   (CODE)
      003838                       1242 ___str_6:
      003838 41 64 64 72 65 73 73  1243 	.ascii "Address is 0x%X "
             20 69 73 20 30 78 25
             58 20
      003848 0A                    1244 	.db 0x0a
      003849 0D                    1245 	.db 0x0d
      00384A 00                    1246 	.db 0x00
                                   1247 	.area CSEG    (CODE)
                                   1248 	.area CONST   (CODE)
      00384B                       1249 ___str_7:
      00384B 0A                    1250 	.db 0x0a
      00384C 0D                    1251 	.db 0x0d
      00384D 20 54 68 65 20 76 61  1252 	.ascii " The value at the address is -> 0x%X "
             6C 75 65 20 61 74 20
             74 68 65 20 61 64 64
             72 65 73 73 20 69 73
             20 2D 3E 20 30 78 25
             58 20
      003872 0A                    1253 	.db 0x0a
      003873 0D                    1254 	.db 0x0d
      003874 00                    1255 	.db 0x00
                                   1256 	.area CSEG    (CODE)
                                   1257 	.area CONST   (CODE)
      003875                       1258 ___str_8:
      003875 50 6C 65 61 73 65 20  1259 	.ascii "Please give a valid address to write to (0x000 - 0x7FF) "
             67 69 76 65 20 61 20
             76 61 6C 69 64 20 61
             64 64 72 65 73 73 20
             74 6F 20 77 72 69 74
             65 20 74 6F 20 28 30
             78 30 30 30 20 2D 20
             30 78 37 46 46 29 20
      0038AD 0A                    1260 	.db 0x0a
      0038AE 0D                    1261 	.db 0x0d
      0038AF 00                    1262 	.db 0x00
                                   1263 	.area CSEG    (CODE)
                                   1264 	.area CONST   (CODE)
      0038B0                       1265 ___str_9:
      0038B0 0A                    1266 	.db 0x0a
      0038B1 0D                    1267 	.db 0x0d
      0038B2 50 6C 65 61 73 65 20  1268 	.ascii "Please give a valid data to write (0x00 - 0xFF) "
             67 69 76 65 20 61 20
             76 61 6C 69 64 20 64
             61 74 61 20 74 6F 20
             77 72 69 74 65 20 28
             30 78 30 30 20 2D 20
             30 78 46 46 29 20
      0038E2 0A                    1269 	.db 0x0a
      0038E3 0D                    1270 	.db 0x0d
      0038E4 00                    1271 	.db 0x00
                                   1272 	.area CSEG    (CODE)
                                   1273 	.area CONST   (CODE)
      0038E5                       1274 ___str_10:
      0038E5 0A                    1275 	.db 0x0a
      0038E6 0D                    1276 	.db 0x0d
      0038E7 54 68 65 20 64 61 74  1277 	.ascii "The data has been successfully written at the address 0x%X "
             61 20 68 61 73 20 62
             65 65 6E 20 73 75 63
             63 65 73 73 66 75 6C
             6C 79 20 77 72 69 74
             74 65 6E 20 61 74 20
             74 68 65 20 61 64 64
             72 65 73 73 20 30 78
             25 58 20
      003922 0A                    1278 	.db 0x0a
      003923 0D                    1279 	.db 0x0d
      003924 00                    1280 	.db 0x00
                                   1281 	.area CSEG    (CODE)
                                   1282 	.area CONST   (CODE)
      003925                       1283 ___str_11:
      003925 50 6C 65 61 73 65 20  1284 	.ascii "Please give a valid starting address (0x000 - 0x7FF) "
             67 69 76 65 20 61 20
             76 61 6C 69 64 20 73
             74 61 72 74 69 6E 67
             20 61 64 64 72 65 73
             73 20 28 30 78 30 30
             30 20 2D 20 30 78 37
             46 46 29 20
      00395A 0A                    1285 	.db 0x0a
      00395B 0D                    1286 	.db 0x0d
      00395C 00                    1287 	.db 0x00
                                   1288 	.area CSEG    (CODE)
                                   1289 	.area CONST   (CODE)
      00395D                       1290 ___str_12:
      00395D 50 6C 65 61 73 65 20  1291 	.ascii "Please give a valid ending address (0x%X - 0x7FF) "
             67 69 76 65 20 61 20
             76 61 6C 69 64 20 65
             6E 64 69 6E 67 20 61
             64 64 72 65 73 73 20
             28 30 78 25 58 20 2D
             20 30 78 37 46 46 29
             20
      00398F 0A                    1292 	.db 0x0a
      003990 0D                    1293 	.db 0x0d
      003991 00                    1294 	.db 0x00
                                   1295 	.area CSEG    (CODE)
                                   1296 	.area CONST   (CODE)
      003992                       1297 ___str_13:
      003992 52 65 61 64 69 6E 67  1298 	.ascii "Reading EEPROM..."
             20 45 45 50 52 4F 4D
             2E 2E 2E
      0039A3 0A                    1299 	.db 0x0a
      0039A4 0D                    1300 	.db 0x0d
      0039A5 00                    1301 	.db 0x00
                                   1302 	.area CSEG    (CODE)
                                   1303 	.area CONST   (CODE)
      0039A6                       1304 ___str_14:
      0039A6 0A                    1305 	.db 0x0a
      0039A7 0D                    1306 	.db 0x0d
      0039A8 50 6C 65 61 73 65 20  1307 	.ascii "Please give a valid data for blockfill (0x00 - 0xFF) "
             67 69 76 65 20 61 20
             76 61 6C 69 64 20 64
             61 74 61 20 66 6F 72
             20 62 6C 6F 63 6B 66
             69 6C 6C 20 28 30 78
             30 30 20 2D 20 30 78
             46 46 29 20
      0039DD 0A                    1308 	.db 0x0a
      0039DE 0D                    1309 	.db 0x0d
      0039DF 00                    1310 	.db 0x00
                                   1311 	.area CSEG    (CODE)
                                   1312 	.area CONST   (CODE)
      0039E0                       1313 ___str_15:
      0039E0 57 72 69 74 69 6E 67  1314 	.ascii "Writing EEPROM..."
             20 45 45 50 52 4F 4D
             2E 2E 2E
      0039F1 0A                    1315 	.db 0x0a
      0039F2 0D                    1316 	.db 0x0d
      0039F3 00                    1317 	.db 0x00
                                   1318 	.area CSEG    (CODE)
                                   1319 	.area CONST   (CODE)
      0039F4                       1320 ___str_16:
      0039F4 0A                    1321 	.db 0x0a
      0039F5 0D                    1322 	.db 0x0d
      0039F6 42 6C 6F 63 6B 66 69  1323 	.ascii "Blockfill finished..."
             6C 6C 20 66 69 6E 69
             73 68 65 64 2E 2E 2E
      003A0B 0A                    1324 	.db 0x0a
      003A0C 0D                    1325 	.db 0x0d
      003A0D 00                    1326 	.db 0x00
                                   1327 	.area CSEG    (CODE)
                                   1328 	.area CONST   (CODE)
      003A0E                       1329 ___str_17:
      003A0E 0A                    1330 	.db 0x0a
      003A0F 0A                    1331 	.db 0x0a
      003A10 0D                    1332 	.db 0x0d
      003A11 5E 5E 5E 5E 5E 5E 5E  1333 	.ascii "^^^^^^^^^^^^^^^^^^^-EEPROM-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ "
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 2D 45
             45 50 52 4F 4D 2D 4D
             45 4E 55 2D 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 20
      003A4C 0A                    1334 	.db 0x0a
      003A4D 0A                    1335 	.db 0x0a
      003A4E 0D                    1336 	.db 0x0d
      003A4F 00                    1337 	.db 0x00
                                   1338 	.area CSEG    (CODE)
                                   1339 	.area CONST   (CODE)
      003A50                       1340 ___str_18:
      003A50 27 52 27 20 2D 3E 20  1341 	.ascii "'R' -> Read Random Byte"
             52 65 61 64 20 52 61
             6E 64 6F 6D 20 42 79
             74 65
      003A67 0A                    1342 	.db 0x0a
      003A68 0D                    1343 	.db 0x0d
      003A69 00                    1344 	.db 0x00
                                   1345 	.area CSEG    (CODE)
                                   1346 	.area CONST   (CODE)
      003A6A                       1347 ___str_19:
      003A6A 27 57 27 20 2D 3E 20  1348 	.ascii "'W' -> Write Random Byte"
             57 72 69 74 65 20 52
             61 6E 64 6F 6D 20 42
             79 74 65
      003A82 0A                    1349 	.db 0x0a
      003A83 0D                    1350 	.db 0x0d
      003A84 00                    1351 	.db 0x00
                                   1352 	.area CSEG    (CODE)
                                   1353 	.area CONST   (CODE)
      003A85                       1354 ___str_20:
      003A85 27 44 27 20 2D 3E 20  1355 	.ascii "'D' -> Hexdump"
             48 65 78 64 75 6D 70
      003A93 0A                    1356 	.db 0x0a
      003A94 0D                    1357 	.db 0x0d
      003A95 00                    1358 	.db 0x00
                                   1359 	.area CSEG    (CODE)
                                   1360 	.area CONST   (CODE)
      003A96                       1361 ___str_21:
      003A96 27 42 27 20 2D 3E 20  1362 	.ascii "'B' -> Block Fill"
             42 6C 6F 63 6B 20 46
             69 6C 6C
      003AA7 0A                    1363 	.db 0x0a
      003AA8 0D                    1364 	.db 0x0d
      003AA9 00                    1365 	.db 0x00
                                   1366 	.area CSEG    (CODE)
                                   1367 	.area CONST   (CODE)
      003AAA                       1368 ___str_22:
      003AAA 27 46 27 20 2D 3E 20  1369 	.ascii "'F' -> Reset EEPROM "
             52 65 73 65 74 20 45
             45 50 52 4F 4D 20
      003ABE 0A                    1370 	.db 0x0a
      003ABF 0D                    1371 	.db 0x0d
      003AC0 00                    1372 	.db 0x00
                                   1373 	.area CSEG    (CODE)
                                   1374 	.area CONST   (CODE)
      003AC1                       1375 ___str_23:
      003AC1 0A                    1376 	.db 0x0a
      003AC2 0D                    1377 	.db 0x0d
      003AC3 2D 2D 2D 2D 2D 2D 2D  1378 	.ascii "-------------------------HEXDUMP----------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 48 45 58
             44 55 4D 50 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D
      003AFF 2D 2D 2D 2D           1379 	.ascii "----"
      003B03 00                    1380 	.db 0x00
                                   1381 	.area CSEG    (CODE)
                                   1382 	.area CONST   (CODE)
      003B04                       1383 ___str_24:
      003B04 0A                    1384 	.db 0x0a
      003B05 0D                    1385 	.db 0x0d
      003B06 20 41 44 44 52 3A 20  1386 	.ascii " ADDR: +0 +1 +2 +3 +4 +5 +6 +7 +8 +9 +A +B +C +D +E +F "
             2B 30 20 2B 31 20 2B
             32 20 2B 33 20 2B 34
             20 2B 35 20 2B 36 20
             2B 37 20 2B 38 20 2B
             39 20 2B 41 20 2B 42
             20 2B 43 20 2B 44 20
             2B 45 20 2B 46 20
      003B3D 0A                    1387 	.db 0x0a
      003B3E 0D                    1388 	.db 0x0d
      003B3F 00                    1389 	.db 0x00
                                   1390 	.area CSEG    (CODE)
                                   1391 	.area CONST   (CODE)
      003B40                       1392 ___str_25:
      003B40 0A                    1393 	.db 0x0a
      003B41 0D                    1394 	.db 0x0d
      003B42 30 78 25 30 33 58 3A  1395 	.ascii "0x%03X: "
             20
      003B4A 00                    1396 	.db 0x00
                                   1397 	.area CSEG    (CODE)
                                   1398 	.area CONST   (CODE)
      003B4B                       1399 ___str_26:
      003B4B 25 30 32 58 20        1400 	.ascii "%02X "
      003B50 00                    1401 	.db 0x00
                                   1402 	.area CSEG    (CODE)
                                   1403 	.area CONST   (CODE)
      003B51                       1404 ___str_27:
      003B51 0A                    1405 	.db 0x0a
      003B52 0A                    1406 	.db 0x0a
      003B53 0D                    1407 	.db 0x0d
      003B54 00                    1408 	.db 0x00
                                   1409 	.area CSEG    (CODE)
                                   1410 	.area XINIT   (CODE)
                                   1411 	.area CABS    (ABS,CODE)
