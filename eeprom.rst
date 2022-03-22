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
                                    117 ;	eeprom.c:42: void eeprom_menu()
                                    118 ;	-----------------------------------------
                                    119 ;	 function eeprom_menu
                                    120 ;	-----------------------------------------
      001738                        121 _eeprom_menu:
                           000007   122 	ar7 = 0x07
                           000006   123 	ar6 = 0x06
                           000005   124 	ar5 = 0x05
                           000004   125 	ar4 = 0x04
                           000003   126 	ar3 = 0x03
                           000002   127 	ar2 = 0x02
                           000001   128 	ar1 = 0x01
                           000000   129 	ar0 = 0x00
                                    130 ;	eeprom.c:44: printf(" \n\r Hello, In EEPROM Demo mode");
      001738 74 BB            [12]  131 	mov	a,#___str_0
      00173A C0 E0            [24]  132 	push	acc
      00173C 74 37            [12]  133 	mov	a,#(___str_0 >> 8)
      00173E C0 E0            [24]  134 	push	acc
      001740 74 80            [12]  135 	mov	a,#0x80
      001742 C0 E0            [24]  136 	push	acc
      001744 12 22 58         [24]  137 	lcall	_printf
      001747 15 81            [12]  138 	dec	sp
      001749 15 81            [12]  139 	dec	sp
      00174B 15 81            [12]  140 	dec	sp
                                    141 ;	eeprom.c:45: print_eeprom_menu();
      00174D 12 1B EB         [24]  142 	lcall	_print_eeprom_menu
                                    143 ;	eeprom.c:48: wrong_choice_pca:
      001750                        144 00101$:
                                    145 ;	eeprom.c:49: printf("Please make a valid choice\n\r");
      001750 74 DA            [12]  146 	mov	a,#___str_1
      001752 C0 E0            [24]  147 	push	acc
      001754 74 37            [12]  148 	mov	a,#(___str_1 >> 8)
      001756 C0 E0            [24]  149 	push	acc
      001758 74 80            [12]  150 	mov	a,#0x80
      00175A C0 E0            [24]  151 	push	acc
      00175C 12 22 58         [24]  152 	lcall	_printf
      00175F 15 81            [12]  153 	dec	sp
      001761 15 81            [12]  154 	dec	sp
      001763 15 81            [12]  155 	dec	sp
                                    156 ;	eeprom.c:50: inp = getchar();
      001765 12 07 88         [24]  157 	lcall	_getchar
      001768 AE 82            [24]  158 	mov	r6,dpl
      00176A AF 83            [24]  159 	mov	r7,dph
                                    160 ;	eeprom.c:51: if (inp == 0x52)
      00176C BE 52 08         [24]  161 	cjne	r6,#0x52,00115$
      00176F BF 00 05         [24]  162 	cjne	r7,#0x00,00115$
                                    163 ;	eeprom.c:52: read_random_byte();
      001772 12 17 DB         [24]  164 	lcall	_read_random_byte
      001775 80 3F            [24]  165 	sjmp	00129$
      001777                        166 00115$:
                                    167 ;	eeprom.c:53: else if (inp == 0x57)
      001777 BE 57 08         [24]  168 	cjne	r6,#0x57,00112$
      00177A BF 00 05         [24]  169 	cjne	r7,#0x00,00112$
                                    170 ;	eeprom.c:54: write_random_byte();
      00177D 12 18 82         [24]  171 	lcall	_write_random_byte
      001780 80 34            [24]  172 	sjmp	00129$
      001782                        173 00112$:
                                    174 ;	eeprom.c:55: else if (inp == 0x44)
      001782 BE 44 08         [24]  175 	cjne	r6,#0x44,00109$
      001785 BF 00 05         [24]  176 	cjne	r7,#0x00,00109$
                                    177 ;	eeprom.c:56: hexdump_eeprom();
      001788 12 19 18         [24]  178 	lcall	_hexdump_eeprom
      00178B 80 29            [24]  179 	sjmp	00129$
      00178D                        180 00109$:
                                    181 ;	eeprom.c:57: else if (inp == 0x42)
      00178D BE 42 08         [24]  182 	cjne	r6,#0x42,00106$
      001790 BF 00 05         [24]  183 	cjne	r7,#0x00,00106$
                                    184 ;	eeprom.c:58: blockfill_eeprom();
      001793 12 1A CE         [24]  185 	lcall	_blockfill_eeprom
      001796 80 1E            [24]  186 	sjmp	00129$
      001798                        187 00106$:
                                    188 ;	eeprom.c:59: else if (inp == 0x46)
      001798 BE 46 B5         [24]  189 	cjne	r6,#0x46,00101$
      00179B BF 00 B2         [24]  190 	cjne	r7,#0x00,00101$
                                    191 ;	eeprom.c:61: i2c_eeprom_reset();
      00179E 12 03 5E         [24]  192 	lcall	_i2c_eeprom_reset
                                    193 ;	eeprom.c:62: printf("\n\rI2C Reset has been performed \n\r");
      0017A1 74 F7            [12]  194 	mov	a,#___str_2
      0017A3 C0 E0            [24]  195 	push	acc
      0017A5 74 37            [12]  196 	mov	a,#(___str_2 >> 8)
      0017A7 C0 E0            [24]  197 	push	acc
      0017A9 74 80            [12]  198 	mov	a,#0x80
      0017AB C0 E0            [24]  199 	push	acc
      0017AD 12 22 58         [24]  200 	lcall	_printf
      0017B0 15 81            [12]  201 	dec	sp
      0017B2 15 81            [12]  202 	dec	sp
      0017B4 15 81            [12]  203 	dec	sp
                                    204 ;	eeprom.c:67: exit_choice:
      0017B6                        205 00129$:
      0017B6                        206 00117$:
                                    207 ;	eeprom.c:68: printf("\n\rPlease 'E' to go to EEPROM Menu \n\r");
      0017B6 74 19            [12]  208 	mov	a,#___str_3
      0017B8 C0 E0            [24]  209 	push	acc
      0017BA 74 38            [12]  210 	mov	a,#(___str_3 >> 8)
      0017BC C0 E0            [24]  211 	push	acc
      0017BE 74 80            [12]  212 	mov	a,#0x80
      0017C0 C0 E0            [24]  213 	push	acc
      0017C2 12 22 58         [24]  214 	lcall	_printf
      0017C5 15 81            [12]  215 	dec	sp
      0017C7 15 81            [12]  216 	dec	sp
      0017C9 15 81            [12]  217 	dec	sp
                                    218 ;	eeprom.c:69: inp = getchar();
      0017CB 12 07 88         [24]  219 	lcall	_getchar
      0017CE AE 82            [24]  220 	mov	r6,dpl
      0017D0 AF 83            [24]  221 	mov	r7,dph
                                    222 ;	eeprom.c:70: if (inp == 0x45)
      0017D2 BE 45 E1         [24]  223 	cjne	r6,#0x45,00117$
      0017D5 BF 00 DE         [24]  224 	cjne	r7,#0x00,00117$
                                    225 ;	eeprom.c:71: eeprom_menu();
                                    226 ;	eeprom.c:73: goto exit_choice;
                                    227 ;	eeprom.c:74: }
      0017D8 02 17 38         [24]  228 	ljmp	_eeprom_menu
                                    229 ;------------------------------------------------------------
                                    230 ;Allocation info for local variables in function 'read_random_byte'
                                    231 ;------------------------------------------------------------
                                    232 ;block                     Allocated with name '_read_random_byte_block_65536_53'
                                    233 ;address                   Allocated with name '_read_random_byte_address_65536_53'
                                    234 ;a                         Allocated with name '_read_random_byte_a_65536_53'
                                    235 ;------------------------------------------------------------
                                    236 ;	eeprom.c:82: void read_random_byte()
                                    237 ;	-----------------------------------------
                                    238 ;	 function read_random_byte
                                    239 ;	-----------------------------------------
      0017DB                        240 _read_random_byte:
                                    241 ;	eeprom.c:87: get_valid_hex:
      0017DB                        242 00101$:
                                    243 ;	eeprom.c:88: printf("\n\r Please give a valid address to read from (0x000 - 0x7FF) \n\r");
      0017DB 74 3E            [12]  244 	mov	a,#___str_4
      0017DD C0 E0            [24]  245 	push	acc
      0017DF 74 38            [12]  246 	mov	a,#(___str_4 >> 8)
      0017E1 C0 E0            [24]  247 	push	acc
      0017E3 74 80            [12]  248 	mov	a,#0x80
      0017E5 C0 E0            [24]  249 	push	acc
      0017E7 12 22 58         [24]  250 	lcall	_printf
      0017EA 15 81            [12]  251 	dec	sp
      0017EC 15 81            [12]  252 	dec	sp
      0017EE 15 81            [12]  253 	dec	sp
                                    254 ;	eeprom.c:89: a = get_number_hex(3);
      0017F0 90 00 03         [24]  255 	mov	dptr,#0x0003
      0017F3 12 05 84         [24]  256 	lcall	_get_number_hex
      0017F6 AE 82            [24]  257 	mov	r6,dpl
                                    258 ;	eeprom.c:91: if (a >= 0 && a <= 2047)
      0017F8 E5 83            [12]  259 	mov	a,dph
      0017FA FF               [12]  260 	mov	r7,a
      0017FB 20 E7 DD         [24]  261 	jb	acc.7,00101$
      0017FE C3               [12]  262 	clr	c
      0017FF 74 FF            [12]  263 	mov	a,#0xff
      001801 9E               [12]  264 	subb	a,r6
      001802 74 87            [12]  265 	mov	a,#(0x07 ^ 0x80)
      001804 8F F0            [24]  266 	mov	b,r7
      001806 63 F0 80         [24]  267 	xrl	b,#0x80
      001809 95 F0            [12]  268 	subb	a,b
      00180B 40 CE            [24]  269 	jc	00101$
                                    270 ;	eeprom.c:93: block = (a & 0xF00) >> 8;
      00180D 74 0F            [12]  271 	mov	a,#0x0f
      00180F 5F               [12]  272 	anl	a,r7
                                    273 ;	eeprom.c:94: address = a & 0x0FF;
                                    274 ;	eeprom.c:101: printf("Block is is %x \n\r", block);
      001810 FC               [12]  275 	mov	r4,a
      001811 FD               [12]  276 	mov	r5,a
      001812 7F 00            [12]  277 	mov	r7,#0x00
      001814 C0 06            [24]  278 	push	ar6
      001816 C0 04            [24]  279 	push	ar4
      001818 C0 05            [24]  280 	push	ar5
      00181A C0 07            [24]  281 	push	ar7
      00181C 74 7D            [12]  282 	mov	a,#___str_5
      00181E C0 E0            [24]  283 	push	acc
      001820 74 38            [12]  284 	mov	a,#(___str_5 >> 8)
      001822 C0 E0            [24]  285 	push	acc
      001824 74 80            [12]  286 	mov	a,#0x80
      001826 C0 E0            [24]  287 	push	acc
      001828 12 22 58         [24]  288 	lcall	_printf
      00182B E5 81            [12]  289 	mov	a,sp
      00182D 24 FB            [12]  290 	add	a,#0xfb
      00182F F5 81            [12]  291 	mov	sp,a
      001831 D0 04            [24]  292 	pop	ar4
      001833 D0 06            [24]  293 	pop	ar6
                                    294 ;	eeprom.c:102: printf("Address is 0x%X \n\r", address);
      001835 8E 05            [24]  295 	mov	ar5,r6
      001837 7F 00            [12]  296 	mov	r7,#0x00
      001839 C0 06            [24]  297 	push	ar6
      00183B C0 04            [24]  298 	push	ar4
      00183D C0 05            [24]  299 	push	ar5
      00183F C0 07            [24]  300 	push	ar7
      001841 74 8F            [12]  301 	mov	a,#___str_6
      001843 C0 E0            [24]  302 	push	acc
      001845 74 38            [12]  303 	mov	a,#(___str_6 >> 8)
      001847 C0 E0            [24]  304 	push	acc
      001849 74 80            [12]  305 	mov	a,#0x80
      00184B C0 E0            [24]  306 	push	acc
      00184D 12 22 58         [24]  307 	lcall	_printf
      001850 E5 81            [12]  308 	mov	a,sp
      001852 24 FB            [12]  309 	add	a,#0xfb
      001854 F5 81            [12]  310 	mov	sp,a
      001856 D0 04            [24]  311 	pop	ar4
      001858 D0 06            [24]  312 	pop	ar6
                                    313 ;	eeprom.c:103: printf("\n\r The value at the address is -> 0x%X \n\r", i2c_read_random(block, address));
      00185A 90 00 05         [24]  314 	mov	dptr,#_i2c_read_random_PARM_2
      00185D EE               [12]  315 	mov	a,r6
      00185E F0               [24]  316 	movx	@dptr,a
      00185F 8C 82            [24]  317 	mov	dpl,r4
      001861 12 03 C8         [24]  318 	lcall	_i2c_read_random
      001864 AF 82            [24]  319 	mov	r7,dpl
      001866 7E 00            [12]  320 	mov	r6,#0x00
      001868 C0 07            [24]  321 	push	ar7
      00186A C0 06            [24]  322 	push	ar6
      00186C 74 A2            [12]  323 	mov	a,#___str_7
      00186E C0 E0            [24]  324 	push	acc
      001870 74 38            [12]  325 	mov	a,#(___str_7 >> 8)
      001872 C0 E0            [24]  326 	push	acc
      001874 74 80            [12]  327 	mov	a,#0x80
      001876 C0 E0            [24]  328 	push	acc
      001878 12 22 58         [24]  329 	lcall	_printf
      00187B E5 81            [12]  330 	mov	a,sp
      00187D 24 FB            [12]  331 	add	a,#0xfb
      00187F F5 81            [12]  332 	mov	sp,a
                                    333 ;	eeprom.c:104: }
      001881 22               [24]  334 	ret
                                    335 ;------------------------------------------------------------
                                    336 ;Allocation info for local variables in function 'write_random_byte'
                                    337 ;------------------------------------------------------------
                                    338 ;block                     Allocated with name '_write_random_byte_block_65536_56'
                                    339 ;address                   Allocated with name '_write_random_byte_address_65536_56'
                                    340 ;a                         Allocated with name '_write_random_byte_a_65536_56'
                                    341 ;------------------------------------------------------------
                                    342 ;	eeprom.c:111: void write_random_byte()
                                    343 ;	-----------------------------------------
                                    344 ;	 function write_random_byte
                                    345 ;	-----------------------------------------
      001882                        346 _write_random_byte:
                                    347 ;	eeprom.c:116: get_valid_hex_address:
      001882                        348 00101$:
                                    349 ;	eeprom.c:117: printf("Please give a valid address to write to (0x000 - 0x7FF) \n\r");
      001882 74 CC            [12]  350 	mov	a,#___str_8
      001884 C0 E0            [24]  351 	push	acc
      001886 74 38            [12]  352 	mov	a,#(___str_8 >> 8)
      001888 C0 E0            [24]  353 	push	acc
      00188A 74 80            [12]  354 	mov	a,#0x80
      00188C C0 E0            [24]  355 	push	acc
      00188E 12 22 58         [24]  356 	lcall	_printf
      001891 15 81            [12]  357 	dec	sp
      001893 15 81            [12]  358 	dec	sp
      001895 15 81            [12]  359 	dec	sp
                                    360 ;	eeprom.c:118: a = get_number_hex(3);
      001897 90 00 03         [24]  361 	mov	dptr,#0x0003
      00189A 12 05 84         [24]  362 	lcall	_get_number_hex
      00189D AE 82            [24]  363 	mov	r6,dpl
                                    364 ;	eeprom.c:120: if (a >= 0 && a <= 2047)
      00189F E5 83            [12]  365 	mov	a,dph
      0018A1 FF               [12]  366 	mov	r7,a
      0018A2 20 E7 DD         [24]  367 	jb	acc.7,00101$
      0018A5 C3               [12]  368 	clr	c
      0018A6 74 FF            [12]  369 	mov	a,#0xff
      0018A8 9E               [12]  370 	subb	a,r6
      0018A9 74 87            [12]  371 	mov	a,#(0x07 ^ 0x80)
      0018AB 8F F0            [24]  372 	mov	b,r7
      0018AD 63 F0 80         [24]  373 	xrl	b,#0x80
      0018B0 95 F0            [12]  374 	subb	a,b
      0018B2 40 CE            [24]  375 	jc	00101$
                                    376 ;	eeprom.c:122: block = (a & 0xF00) >> 8;
      0018B4 7C 00            [12]  377 	mov	r4,#0x00
      0018B6 74 0F            [12]  378 	mov	a,#0x0f
      0018B8 5F               [12]  379 	anl	a,r7
      0018B9 FD               [12]  380 	mov	r5,a
                                    381 ;	eeprom.c:123: address = a & 0x0FF;
                                    382 ;	eeprom.c:130: get_valid_hex_value:
      0018BA                        383 00106$:
                                    384 ;	eeprom.c:131: printf("\n\rPlease give a valid data to write (0x00 - 0xFF) \n\r");
      0018BA C0 06            [24]  385 	push	ar6
      0018BC C0 05            [24]  386 	push	ar5
      0018BE 74 07            [12]  387 	mov	a,#___str_9
      0018C0 C0 E0            [24]  388 	push	acc
      0018C2 74 39            [12]  389 	mov	a,#(___str_9 >> 8)
      0018C4 C0 E0            [24]  390 	push	acc
      0018C6 74 80            [12]  391 	mov	a,#0x80
      0018C8 C0 E0            [24]  392 	push	acc
      0018CA 12 22 58         [24]  393 	lcall	_printf
      0018CD 15 81            [12]  394 	dec	sp
      0018CF 15 81            [12]  395 	dec	sp
      0018D1 15 81            [12]  396 	dec	sp
                                    397 ;	eeprom.c:132: a = get_number_hex(2);
      0018D3 90 00 02         [24]  398 	mov	dptr,#0x0002
      0018D6 12 05 84         [24]  399 	lcall	_get_number_hex
      0018D9 AC 82            [24]  400 	mov	r4,dpl
      0018DB AF 83            [24]  401 	mov	r7,dph
      0018DD D0 05            [24]  402 	pop	ar5
      0018DF D0 06            [24]  403 	pop	ar6
                                    404 ;	eeprom.c:134: if (a >= 0)
      0018E1 EF               [12]  405 	mov	a,r7
      0018E2 20 E7 D5         [24]  406 	jb	acc.7,00106$
                                    407 ;	eeprom.c:136: i2c_write_random(block, address, (unsigned char)a);
      0018E5 8C 03            [24]  408 	mov	ar3,r4
      0018E7 90 00 02         [24]  409 	mov	dptr,#_i2c_write_random_PARM_2
      0018EA EE               [12]  410 	mov	a,r6
      0018EB F0               [24]  411 	movx	@dptr,a
      0018EC 90 00 03         [24]  412 	mov	dptr,#_i2c_write_random_PARM_3
      0018EF EB               [12]  413 	mov	a,r3
      0018F0 F0               [24]  414 	movx	@dptr,a
      0018F1 8D 82            [24]  415 	mov	dpl,r5
      0018F3 C0 07            [24]  416 	push	ar7
      0018F5 C0 04            [24]  417 	push	ar4
      0018F7 12 03 6F         [24]  418 	lcall	_i2c_write_random
      0018FA D0 04            [24]  419 	pop	ar4
      0018FC D0 07            [24]  420 	pop	ar7
                                    421 ;	eeprom.c:143: printf("\n\rThe data has been successfully written at the address 0x%X \n\r", a);
      0018FE C0 04            [24]  422 	push	ar4
      001900 C0 07            [24]  423 	push	ar7
      001902 74 3C            [12]  424 	mov	a,#___str_10
      001904 C0 E0            [24]  425 	push	acc
      001906 74 39            [12]  426 	mov	a,#(___str_10 >> 8)
      001908 C0 E0            [24]  427 	push	acc
      00190A 74 80            [12]  428 	mov	a,#0x80
      00190C C0 E0            [24]  429 	push	acc
      00190E 12 22 58         [24]  430 	lcall	_printf
      001911 E5 81            [12]  431 	mov	a,sp
      001913 24 FB            [12]  432 	add	a,#0xfb
      001915 F5 81            [12]  433 	mov	sp,a
                                    434 ;	eeprom.c:144: }
      001917 22               [24]  435 	ret
                                    436 ;------------------------------------------------------------
                                    437 ;Allocation info for local variables in function 'hexdump_eeprom'
                                    438 ;------------------------------------------------------------
                                    439 ;sloc0                     Allocated with name '_hexdump_eeprom_sloc0_1_0'
                                    440 ;a                         Allocated with name '_hexdump_eeprom_a_65536_61'
                                    441 ;b                         Allocated with name '_hexdump_eeprom_b_65536_61'
                                    442 ;data                      Allocated with name '_hexdump_eeprom_data_65537_64'
                                    443 ;l                         Allocated with name '_hexdump_eeprom_l_131073_65'
                                    444 ;------------------------------------------------------------
                                    445 ;	eeprom.c:151: void hexdump_eeprom()
                                    446 ;	-----------------------------------------
                                    447 ;	 function hexdump_eeprom
                                    448 ;	-----------------------------------------
      001918                        449 _hexdump_eeprom:
                                    450 ;	eeprom.c:155: get_valid_from_address:
      001918                        451 00101$:
                                    452 ;	eeprom.c:156: printf("Please give a valid starting address (0x000 - 0x7FF) \n\r");
      001918 74 7C            [12]  453 	mov	a,#___str_11
      00191A C0 E0            [24]  454 	push	acc
      00191C 74 39            [12]  455 	mov	a,#(___str_11 >> 8)
      00191E C0 E0            [24]  456 	push	acc
      001920 74 80            [12]  457 	mov	a,#0x80
      001922 C0 E0            [24]  458 	push	acc
      001924 12 22 58         [24]  459 	lcall	_printf
      001927 15 81            [12]  460 	dec	sp
      001929 15 81            [12]  461 	dec	sp
      00192B 15 81            [12]  462 	dec	sp
                                    463 ;	eeprom.c:157: a = get_number_hex(3);
      00192D 90 00 03         [24]  464 	mov	dptr,#0x0003
      001930 12 05 84         [24]  465 	lcall	_get_number_hex
      001933 AE 82            [24]  466 	mov	r6,dpl
                                    467 ;	eeprom.c:159: if (a < 0 || a > 2047)
      001935 E5 83            [12]  468 	mov	a,dph
      001937 FF               [12]  469 	mov	r7,a
      001938 20 E7 DD         [24]  470 	jb	acc.7,00101$
      00193B C3               [12]  471 	clr	c
      00193C 74 FF            [12]  472 	mov	a,#0xff
      00193E 9E               [12]  473 	subb	a,r6
      00193F 74 87            [12]  474 	mov	a,#(0x07 ^ 0x80)
      001941 8F F0            [24]  475 	mov	b,r7
      001943 63 F0 80         [24]  476 	xrl	b,#0x80
      001946 95 F0            [12]  477 	subb	a,b
      001948 40 CE            [24]  478 	jc	00101$
                                    479 ;	eeprom.c:164: get_valid_to_address:
      00194A                        480 00105$:
                                    481 ;	eeprom.c:165: printf("Please give a valid ending address (0x%X - 0x7FF) \n\r", a);
      00194A C0 07            [24]  482 	push	ar7
      00194C C0 06            [24]  483 	push	ar6
      00194E C0 06            [24]  484 	push	ar6
      001950 C0 07            [24]  485 	push	ar7
      001952 74 B4            [12]  486 	mov	a,#___str_12
      001954 C0 E0            [24]  487 	push	acc
      001956 74 39            [12]  488 	mov	a,#(___str_12 >> 8)
      001958 C0 E0            [24]  489 	push	acc
      00195A 74 80            [12]  490 	mov	a,#0x80
      00195C C0 E0            [24]  491 	push	acc
      00195E 12 22 58         [24]  492 	lcall	_printf
      001961 E5 81            [12]  493 	mov	a,sp
      001963 24 FB            [12]  494 	add	a,#0xfb
      001965 F5 81            [12]  495 	mov	sp,a
                                    496 ;	eeprom.c:166: b = get_number_hex(3);
      001967 90 00 03         [24]  497 	mov	dptr,#0x0003
      00196A 12 05 84         [24]  498 	lcall	_get_number_hex
      00196D AC 82            [24]  499 	mov	r4,dpl
      00196F AD 83            [24]  500 	mov	r5,dph
      001971 D0 06            [24]  501 	pop	ar6
      001973 D0 07            [24]  502 	pop	ar7
                                    503 ;	eeprom.c:168: if (b < a || b > 2047)
      001975 C3               [12]  504 	clr	c
      001976 EC               [12]  505 	mov	a,r4
      001977 9E               [12]  506 	subb	a,r6
      001978 ED               [12]  507 	mov	a,r5
      001979 64 80            [12]  508 	xrl	a,#0x80
      00197B 8F F0            [24]  509 	mov	b,r7
      00197D 63 F0 80         [24]  510 	xrl	b,#0x80
      001980 95 F0            [12]  511 	subb	a,b
      001982 40 C6            [24]  512 	jc	00105$
      001984 74 FF            [12]  513 	mov	a,#0xff
      001986 9C               [12]  514 	subb	a,r4
      001987 74 87            [12]  515 	mov	a,#(0x07 ^ 0x80)
      001989 8D F0            [24]  516 	mov	b,r5
      00198B 63 F0 80         [24]  517 	xrl	b,#0x80
      00198E 95 F0            [12]  518 	subb	a,b
      001990 40 B8            [24]  519 	jc	00105$
                                    520 ;	eeprom.c:173: eeprom_buffer.buffer_start = malloc((b - a) + 5);
      001992 EC               [12]  521 	mov	a,r4
      001993 C3               [12]  522 	clr	c
      001994 9E               [12]  523 	subb	a,r6
      001995 FA               [12]  524 	mov	r2,a
      001996 ED               [12]  525 	mov	a,r5
      001997 9F               [12]  526 	subb	a,r7
      001998 FB               [12]  527 	mov	r3,a
      001999 74 05            [12]  528 	mov	a,#0x05
      00199B 2A               [12]  529 	add	a,r2
      00199C F5 17            [12]  530 	mov	_hexdump_eeprom_sloc0_1_0,a
      00199E E4               [12]  531 	clr	a
      00199F 3B               [12]  532 	addc	a,r3
      0019A0 F5 18            [12]  533 	mov	(_hexdump_eeprom_sloc0_1_0 + 1),a
      0019A2 85 17 82         [24]  534 	mov	dpl,_hexdump_eeprom_sloc0_1_0
      0019A5 85 18 83         [24]  535 	mov	dph,(_hexdump_eeprom_sloc0_1_0 + 1)
      0019A8 C0 07            [24]  536 	push	ar7
      0019AA C0 06            [24]  537 	push	ar6
      0019AC C0 05            [24]  538 	push	ar5
      0019AE C0 04            [24]  539 	push	ar4
      0019B0 C0 03            [24]  540 	push	ar3
      0019B2 C0 02            [24]  541 	push	ar2
      0019B4 12 20 81         [24]  542 	lcall	_malloc
      0019B7 A8 82            [24]  543 	mov	r0,dpl
      0019B9 A9 83            [24]  544 	mov	r1,dph
      0019BB D0 02            [24]  545 	pop	ar2
      0019BD D0 03            [24]  546 	pop	ar3
      0019BF D0 04            [24]  547 	pop	ar4
      0019C1 D0 05            [24]  548 	pop	ar5
      0019C3 D0 06            [24]  549 	pop	ar6
      0019C5 D0 07            [24]  550 	pop	ar7
      0019C7 C0 04            [24]  551 	push	ar4
      0019C9 C0 05            [24]  552 	push	ar5
      0019CB 7D 00            [12]  553 	mov	r5,#0x00
      0019CD 90 01 7C         [24]  554 	mov	dptr,#(_eeprom_buffer + 0x0002)
      0019D0 E8               [12]  555 	mov	a,r0
      0019D1 F0               [24]  556 	movx	@dptr,a
      0019D2 E9               [12]  557 	mov	a,r1
      0019D3 A3               [24]  558 	inc	dptr
      0019D4 F0               [24]  559 	movx	@dptr,a
      0019D5 ED               [12]  560 	mov	a,r5
      0019D6 A3               [24]  561 	inc	dptr
      0019D7 F0               [24]  562 	movx	@dptr,a
                                    563 ;	eeprom.c:175: eeprom_buffer.buff_size = (b - a) + 5;
      0019D8 90 01 82         [24]  564 	mov	dptr,#(_eeprom_buffer + 0x0008)
      0019DB E5 17            [12]  565 	mov	a,_hexdump_eeprom_sloc0_1_0
      0019DD F0               [24]  566 	movx	@dptr,a
      0019DE E5 18            [12]  567 	mov	a,(_hexdump_eeprom_sloc0_1_0 + 1)
      0019E0 A3               [24]  568 	inc	dptr
      0019E1 F0               [24]  569 	movx	@dptr,a
                                    570 ;	eeprom.c:176: eeprom_buffer.buffer_num = 0;
      0019E2 90 01 7A         [24]  571 	mov	dptr,#_eeprom_buffer
      0019E5 E4               [12]  572 	clr	a
      0019E6 F0               [24]  573 	movx	@dptr,a
      0019E7 A3               [24]  574 	inc	dptr
      0019E8 F0               [24]  575 	movx	@dptr,a
                                    576 ;	eeprom.c:177: eeprom_buffer.buffer_end = eeprom_buffer.buffer_start + (b - a) + 5;
      0019E9 EA               [12]  577 	mov	a,r2
      0019EA 28               [12]  578 	add	a,r0
      0019EB FA               [12]  579 	mov	r2,a
      0019EC EB               [12]  580 	mov	a,r3
      0019ED 39               [12]  581 	addc	a,r1
      0019EE FB               [12]  582 	mov	r3,a
      0019EF 8D 04            [24]  583 	mov	ar4,r5
      0019F1 74 05            [12]  584 	mov	a,#0x05
      0019F3 2A               [12]  585 	add	a,r2
      0019F4 FA               [12]  586 	mov	r2,a
      0019F5 E4               [12]  587 	clr	a
      0019F6 3B               [12]  588 	addc	a,r3
      0019F7 FB               [12]  589 	mov	r3,a
      0019F8 90 01 7F         [24]  590 	mov	dptr,#(_eeprom_buffer + 0x0005)
      0019FB EA               [12]  591 	mov	a,r2
      0019FC F0               [24]  592 	movx	@dptr,a
      0019FD EB               [12]  593 	mov	a,r3
      0019FE A3               [24]  594 	inc	dptr
      0019FF F0               [24]  595 	movx	@dptr,a
      001A00 EC               [12]  596 	mov	a,r4
      001A01 A3               [24]  597 	inc	dptr
      001A02 F0               [24]  598 	movx	@dptr,a
                                    599 ;	eeprom.c:178: eeprom_buffer.num_char = 0;
      001A03 90 01 84         [24]  600 	mov	dptr,#(_eeprom_buffer + 0x000a)
      001A06 F0               [24]  601 	movx	@dptr,a
      001A07 A3               [24]  602 	inc	dptr
      001A08 F0               [24]  603 	movx	@dptr,a
                                    604 ;	eeprom.c:180: printf("Reading EEPROM...\n\r");
      001A09 C0 07            [24]  605 	push	ar7
      001A0B C0 06            [24]  606 	push	ar6
      001A0D C0 05            [24]  607 	push	ar5
      001A0F C0 04            [24]  608 	push	ar4
      001A11 74 E9            [12]  609 	mov	a,#___str_13
      001A13 C0 E0            [24]  610 	push	acc
      001A15 74 39            [12]  611 	mov	a,#(___str_13 >> 8)
      001A17 C0 E0            [24]  612 	push	acc
      001A19 74 80            [12]  613 	mov	a,#0x80
      001A1B C0 E0            [24]  614 	push	acc
      001A1D 12 22 58         [24]  615 	lcall	_printf
      001A20 15 81            [12]  616 	dec	sp
      001A22 15 81            [12]  617 	dec	sp
      001A24 15 81            [12]  618 	dec	sp
      001A26 D0 04            [24]  619 	pop	ar4
      001A28 D0 05            [24]  620 	pop	ar5
      001A2A D0 06            [24]  621 	pop	ar6
      001A2C D0 07            [24]  622 	pop	ar7
                                    623 ;	eeprom.c:182: for (int l = a; l <= b; l++)
      001A2E 8E 17            [24]  624 	mov	_hexdump_eeprom_sloc0_1_0,r6
      001A30 8F 18            [24]  625 	mov	(_hexdump_eeprom_sloc0_1_0 + 1),r7
                                    626 ;	eeprom.c:191: free(eeprom_buffer.buffer_start);
      001A32 D0 05            [24]  627 	pop	ar5
      001A34 D0 04            [24]  628 	pop	ar4
                                    629 ;	eeprom.c:182: for (int l = a; l <= b; l++)
      001A36                        630 00111$:
      001A36 C3               [12]  631 	clr	c
      001A37 EC               [12]  632 	mov	a,r4
      001A38 95 17            [12]  633 	subb	a,_hexdump_eeprom_sloc0_1_0
      001A3A ED               [12]  634 	mov	a,r5
      001A3B 64 80            [12]  635 	xrl	a,#0x80
      001A3D 85 18 F0         [24]  636 	mov	b,(_hexdump_eeprom_sloc0_1_0 + 1)
      001A40 63 F0 80         [24]  637 	xrl	b,#0x80
      001A43 95 F0            [12]  638 	subb	a,b
      001A45 40 6C            [24]  639 	jc	00109$
                                    640 ;	eeprom.c:185: data = i2c_read_random((l & 0xF00) >> 8, (l & 0x0FF));
      001A47 C0 04            [24]  641 	push	ar4
      001A49 C0 05            [24]  642 	push	ar5
      001A4B 74 0F            [12]  643 	mov	a,#0x0f
      001A4D 55 18            [12]  644 	anl	a,(_hexdump_eeprom_sloc0_1_0 + 1)
      001A4F FA               [12]  645 	mov	r2,a
      001A50 90 00 05         [24]  646 	mov	dptr,#_i2c_read_random_PARM_2
      001A53 E5 17            [12]  647 	mov	a,_hexdump_eeprom_sloc0_1_0
      001A55 F0               [24]  648 	movx	@dptr,a
      001A56 8A 82            [24]  649 	mov	dpl,r2
      001A58 C0 07            [24]  650 	push	ar7
      001A5A C0 06            [24]  651 	push	ar6
      001A5C C0 05            [24]  652 	push	ar5
      001A5E C0 04            [24]  653 	push	ar4
      001A60 12 03 C8         [24]  654 	lcall	_i2c_read_random
      001A63 AB 82            [24]  655 	mov	r3,dpl
      001A65 D0 04            [24]  656 	pop	ar4
      001A67 D0 05            [24]  657 	pop	ar5
      001A69 D0 06            [24]  658 	pop	ar6
      001A6B D0 07            [24]  659 	pop	ar7
                                    660 ;	eeprom.c:186: *(eeprom_buffer.buffer_start + eeprom_buffer.num_char) = data;
      001A6D 90 01 7C         [24]  661 	mov	dptr,#(_eeprom_buffer + 0x0002)
      001A70 E0               [24]  662 	movx	a,@dptr
      001A71 F8               [12]  663 	mov	r0,a
      001A72 A3               [24]  664 	inc	dptr
      001A73 E0               [24]  665 	movx	a,@dptr
      001A74 F9               [12]  666 	mov	r1,a
      001A75 A3               [24]  667 	inc	dptr
      001A76 E0               [24]  668 	movx	a,@dptr
      001A77 FA               [12]  669 	mov	r2,a
      001A78 90 01 84         [24]  670 	mov	dptr,#(_eeprom_buffer + 0x000a)
      001A7B E0               [24]  671 	movx	a,@dptr
      001A7C FC               [12]  672 	mov	r4,a
      001A7D A3               [24]  673 	inc	dptr
      001A7E E0               [24]  674 	movx	a,@dptr
      001A7F FD               [12]  675 	mov	r5,a
      001A80 EC               [12]  676 	mov	a,r4
      001A81 28               [12]  677 	add	a,r0
      001A82 F8               [12]  678 	mov	r0,a
      001A83 ED               [12]  679 	mov	a,r5
      001A84 39               [12]  680 	addc	a,r1
      001A85 F9               [12]  681 	mov	r1,a
      001A86 88 82            [24]  682 	mov	dpl,r0
      001A88 89 83            [24]  683 	mov	dph,r1
      001A8A 8A F0            [24]  684 	mov	b,r2
      001A8C EB               [12]  685 	mov	a,r3
      001A8D 12 20 2A         [24]  686 	lcall	__gptrput
                                    687 ;	eeprom.c:187: eeprom_buffer.num_char += 1;
      001A90 90 01 84         [24]  688 	mov	dptr,#(_eeprom_buffer + 0x000a)
      001A93 E0               [24]  689 	movx	a,@dptr
      001A94 FC               [12]  690 	mov	r4,a
      001A95 A3               [24]  691 	inc	dptr
      001A96 E0               [24]  692 	movx	a,@dptr
      001A97 FD               [12]  693 	mov	r5,a
      001A98 0C               [12]  694 	inc	r4
      001A99 BC 00 01         [24]  695 	cjne	r4,#0x00,00152$
      001A9C 0D               [12]  696 	inc	r5
      001A9D                        697 00152$:
      001A9D 90 01 84         [24]  698 	mov	dptr,#(_eeprom_buffer + 0x000a)
      001AA0 EC               [12]  699 	mov	a,r4
      001AA1 F0               [24]  700 	movx	@dptr,a
      001AA2 ED               [12]  701 	mov	a,r5
      001AA3 A3               [24]  702 	inc	dptr
      001AA4 F0               [24]  703 	movx	@dptr,a
                                    704 ;	eeprom.c:182: for (int l = a; l <= b; l++)
      001AA5 05 17            [12]  705 	inc	_hexdump_eeprom_sloc0_1_0
      001AA7 E4               [12]  706 	clr	a
      001AA8 B5 17 02         [24]  707 	cjne	a,_hexdump_eeprom_sloc0_1_0,00153$
      001AAB 05 18            [12]  708 	inc	(_hexdump_eeprom_sloc0_1_0 + 1)
      001AAD                        709 00153$:
      001AAD D0 05            [24]  710 	pop	ar5
      001AAF D0 04            [24]  711 	pop	ar4
      001AB1 80 83            [24]  712 	sjmp	00111$
      001AB3                        713 00109$:
                                    714 ;	eeprom.c:190: dump_eeprom_buffer(a);
      001AB3 8E 82            [24]  715 	mov	dpl,r6
      001AB5 8F 83            [24]  716 	mov	dph,r7
      001AB7 12 1C 6A         [24]  717 	lcall	_dump_eeprom_buffer
                                    718 ;	eeprom.c:191: free(eeprom_buffer.buffer_start);
      001ABA 90 01 7C         [24]  719 	mov	dptr,#(_eeprom_buffer + 0x0002)
      001ABD E0               [24]  720 	movx	a,@dptr
      001ABE FD               [12]  721 	mov	r5,a
      001ABF A3               [24]  722 	inc	dptr
      001AC0 E0               [24]  723 	movx	a,@dptr
      001AC1 FE               [12]  724 	mov	r6,a
      001AC2 A3               [24]  725 	inc	dptr
      001AC3 E0               [24]  726 	movx	a,@dptr
      001AC4 FF               [12]  727 	mov	r7,a
      001AC5 8D 82            [24]  728 	mov	dpl,r5
      001AC7 8E 83            [24]  729 	mov	dph,r6
      001AC9 8F F0            [24]  730 	mov	b,r7
                                    731 ;	eeprom.c:192: }
      001ACB 02 1E 5F         [24]  732 	ljmp	_free
                                    733 ;------------------------------------------------------------
                                    734 ;Allocation info for local variables in function 'blockfill_eeprom'
                                    735 ;------------------------------------------------------------
                                    736 ;a                         Allocated with name '_blockfill_eeprom_a_65536_67'
                                    737 ;b                         Allocated with name '_blockfill_eeprom_b_65536_67'
                                    738 ;c                         Allocated with name '_blockfill_eeprom_c_65536_67'
                                    739 ;l                         Allocated with name '_blockfill_eeprom_l_131072_70'
                                    740 ;------------------------------------------------------------
                                    741 ;	eeprom.c:199: void blockfill_eeprom()
                                    742 ;	-----------------------------------------
                                    743 ;	 function blockfill_eeprom
                                    744 ;	-----------------------------------------
      001ACE                        745 _blockfill_eeprom:
                                    746 ;	eeprom.c:203: get_blockfill_from_address:
      001ACE                        747 00101$:
                                    748 ;	eeprom.c:204: printf("Please give a valid starting address (0x000 - 0x7FF) \n\r");
      001ACE 74 7C            [12]  749 	mov	a,#___str_11
      001AD0 C0 E0            [24]  750 	push	acc
      001AD2 74 39            [12]  751 	mov	a,#(___str_11 >> 8)
      001AD4 C0 E0            [24]  752 	push	acc
      001AD6 74 80            [12]  753 	mov	a,#0x80
      001AD8 C0 E0            [24]  754 	push	acc
      001ADA 12 22 58         [24]  755 	lcall	_printf
      001ADD 15 81            [12]  756 	dec	sp
      001ADF 15 81            [12]  757 	dec	sp
      001AE1 15 81            [12]  758 	dec	sp
                                    759 ;	eeprom.c:205: a = get_number_hex(3);
      001AE3 90 00 03         [24]  760 	mov	dptr,#0x0003
      001AE6 12 05 84         [24]  761 	lcall	_get_number_hex
      001AE9 AE 82            [24]  762 	mov	r6,dpl
                                    763 ;	eeprom.c:207: if (a < 0 || a > 2047)
      001AEB E5 83            [12]  764 	mov	a,dph
      001AED FF               [12]  765 	mov	r7,a
      001AEE 20 E7 DD         [24]  766 	jb	acc.7,00101$
      001AF1 C3               [12]  767 	clr	c
      001AF2 74 FF            [12]  768 	mov	a,#0xff
      001AF4 9E               [12]  769 	subb	a,r6
      001AF5 74 87            [12]  770 	mov	a,#(0x07 ^ 0x80)
      001AF7 8F F0            [24]  771 	mov	b,r7
      001AF9 63 F0 80         [24]  772 	xrl	b,#0x80
      001AFC 95 F0            [12]  773 	subb	a,b
      001AFE 40 CE            [24]  774 	jc	00101$
                                    775 ;	eeprom.c:212: get_blockfill_to_address:
      001B00                        776 00105$:
                                    777 ;	eeprom.c:213: printf("Please give a valid ending address (0x%X - 0x7FF) \n\r", a);
      001B00 C0 07            [24]  778 	push	ar7
      001B02 C0 06            [24]  779 	push	ar6
      001B04 C0 06            [24]  780 	push	ar6
      001B06 C0 07            [24]  781 	push	ar7
      001B08 74 B4            [12]  782 	mov	a,#___str_12
      001B0A C0 E0            [24]  783 	push	acc
      001B0C 74 39            [12]  784 	mov	a,#(___str_12 >> 8)
      001B0E C0 E0            [24]  785 	push	acc
      001B10 74 80            [12]  786 	mov	a,#0x80
      001B12 C0 E0            [24]  787 	push	acc
      001B14 12 22 58         [24]  788 	lcall	_printf
      001B17 E5 81            [12]  789 	mov	a,sp
      001B19 24 FB            [12]  790 	add	a,#0xfb
      001B1B F5 81            [12]  791 	mov	sp,a
                                    792 ;	eeprom.c:214: b = get_number_hex(3);
      001B1D 90 00 03         [24]  793 	mov	dptr,#0x0003
      001B20 12 05 84         [24]  794 	lcall	_get_number_hex
      001B23 AC 82            [24]  795 	mov	r4,dpl
      001B25 AD 83            [24]  796 	mov	r5,dph
      001B27 D0 06            [24]  797 	pop	ar6
      001B29 D0 07            [24]  798 	pop	ar7
                                    799 ;	eeprom.c:216: if (b < a || b > 2047)
      001B2B C3               [12]  800 	clr	c
      001B2C EC               [12]  801 	mov	a,r4
      001B2D 9E               [12]  802 	subb	a,r6
      001B2E ED               [12]  803 	mov	a,r5
      001B2F 64 80            [12]  804 	xrl	a,#0x80
      001B31 8F F0            [24]  805 	mov	b,r7
      001B33 63 F0 80         [24]  806 	xrl	b,#0x80
      001B36 95 F0            [12]  807 	subb	a,b
      001B38 40 C6            [24]  808 	jc	00105$
      001B3A 74 FF            [12]  809 	mov	a,#0xff
      001B3C 9C               [12]  810 	subb	a,r4
      001B3D 74 87            [12]  811 	mov	a,#(0x07 ^ 0x80)
      001B3F 8D F0            [24]  812 	mov	b,r5
      001B41 63 F0 80         [24]  813 	xrl	b,#0x80
      001B44 95 F0            [12]  814 	subb	a,b
      001B46 40 B8            [24]  815 	jc	00105$
                                    816 ;	eeprom.c:222: printf("\n\rPlease give a valid data for blockfill (0x00 - 0xFF) \n\r");
      001B48 C0 07            [24]  817 	push	ar7
      001B4A C0 06            [24]  818 	push	ar6
      001B4C C0 05            [24]  819 	push	ar5
      001B4E C0 04            [24]  820 	push	ar4
      001B50 74 FD            [12]  821 	mov	a,#___str_14
      001B52 C0 E0            [24]  822 	push	acc
      001B54 74 39            [12]  823 	mov	a,#(___str_14 >> 8)
      001B56 C0 E0            [24]  824 	push	acc
      001B58 74 80            [12]  825 	mov	a,#0x80
      001B5A C0 E0            [24]  826 	push	acc
      001B5C 12 22 58         [24]  827 	lcall	_printf
      001B5F 15 81            [12]  828 	dec	sp
      001B61 15 81            [12]  829 	dec	sp
      001B63 15 81            [12]  830 	dec	sp
                                    831 ;	eeprom.c:223: c = get_number_hex(2);
      001B65 90 00 02         [24]  832 	mov	dptr,#0x0002
      001B68 12 05 84         [24]  833 	lcall	_get_number_hex
      001B6B AA 82            [24]  834 	mov	r2,dpl
      001B6D AB 83            [24]  835 	mov	r3,dph
                                    836 ;	eeprom.c:225: printf("Writing EEPROM...\n\r");
      001B6F C0 03            [24]  837 	push	ar3
      001B71 C0 02            [24]  838 	push	ar2
      001B73 74 37            [12]  839 	mov	a,#___str_15
      001B75 C0 E0            [24]  840 	push	acc
      001B77 74 3A            [12]  841 	mov	a,#(___str_15 >> 8)
      001B79 C0 E0            [24]  842 	push	acc
      001B7B 74 80            [12]  843 	mov	a,#0x80
      001B7D C0 E0            [24]  844 	push	acc
      001B7F 12 22 58         [24]  845 	lcall	_printf
      001B82 15 81            [12]  846 	dec	sp
      001B84 15 81            [12]  847 	dec	sp
      001B86 15 81            [12]  848 	dec	sp
      001B88 D0 02            [24]  849 	pop	ar2
      001B8A D0 03            [24]  850 	pop	ar3
      001B8C D0 04            [24]  851 	pop	ar4
      001B8E D0 05            [24]  852 	pop	ar5
      001B90 D0 06            [24]  853 	pop	ar6
      001B92 D0 07            [24]  854 	pop	ar7
                                    855 ;	eeprom.c:226: for (int l = a; l <= b; l++)
      001B94                        856 00112$:
      001B94 C3               [12]  857 	clr	c
      001B95 EC               [12]  858 	mov	a,r4
      001B96 9E               [12]  859 	subb	a,r6
      001B97 ED               [12]  860 	mov	a,r5
      001B98 64 80            [12]  861 	xrl	a,#0x80
      001B9A 8F F0            [24]  862 	mov	b,r7
      001B9C 63 F0 80         [24]  863 	xrl	b,#0x80
      001B9F 95 F0            [12]  864 	subb	a,b
      001BA1 40 32            [24]  865 	jc	00110$
                                    866 ;	eeprom.c:228: i2c_write_random((l & 0xF00) >> 8, (l & 0x0FF), (unsigned char)c);
      001BA3 74 0F            [12]  867 	mov	a,#0x0f
      001BA5 5F               [12]  868 	anl	a,r7
      001BA6 F8               [12]  869 	mov	r0,a
      001BA7 90 00 02         [24]  870 	mov	dptr,#_i2c_write_random_PARM_2
      001BAA EE               [12]  871 	mov	a,r6
      001BAB F0               [24]  872 	movx	@dptr,a
      001BAC 90 00 03         [24]  873 	mov	dptr,#_i2c_write_random_PARM_3
      001BAF EA               [12]  874 	mov	a,r2
      001BB0 F0               [24]  875 	movx	@dptr,a
      001BB1 88 82            [24]  876 	mov	dpl,r0
      001BB3 C0 07            [24]  877 	push	ar7
      001BB5 C0 06            [24]  878 	push	ar6
      001BB7 C0 05            [24]  879 	push	ar5
      001BB9 C0 04            [24]  880 	push	ar4
      001BBB C0 03            [24]  881 	push	ar3
      001BBD C0 02            [24]  882 	push	ar2
      001BBF 12 03 6F         [24]  883 	lcall	_i2c_write_random
      001BC2 D0 02            [24]  884 	pop	ar2
      001BC4 D0 03            [24]  885 	pop	ar3
      001BC6 D0 04            [24]  886 	pop	ar4
      001BC8 D0 05            [24]  887 	pop	ar5
      001BCA D0 06            [24]  888 	pop	ar6
      001BCC D0 07            [24]  889 	pop	ar7
                                    890 ;	eeprom.c:226: for (int l = a; l <= b; l++)
      001BCE 0E               [12]  891 	inc	r6
      001BCF BE 00 C2         [24]  892 	cjne	r6,#0x00,00112$
      001BD2 0F               [12]  893 	inc	r7
      001BD3 80 BF            [24]  894 	sjmp	00112$
      001BD5                        895 00110$:
                                    896 ;	eeprom.c:231: printf("\n\rBlockfill finished...\n\r");
      001BD5 74 4B            [12]  897 	mov	a,#___str_16
      001BD7 C0 E0            [24]  898 	push	acc
      001BD9 74 3A            [12]  899 	mov	a,#(___str_16 >> 8)
      001BDB C0 E0            [24]  900 	push	acc
      001BDD 74 80            [12]  901 	mov	a,#0x80
      001BDF C0 E0            [24]  902 	push	acc
      001BE1 12 22 58         [24]  903 	lcall	_printf
      001BE4 15 81            [12]  904 	dec	sp
      001BE6 15 81            [12]  905 	dec	sp
      001BE8 15 81            [12]  906 	dec	sp
                                    907 ;	eeprom.c:232: }
      001BEA 22               [24]  908 	ret
                                    909 ;------------------------------------------------------------
                                    910 ;Allocation info for local variables in function 'print_eeprom_menu'
                                    911 ;------------------------------------------------------------
                                    912 ;	eeprom.c:239: void print_eeprom_menu()
                                    913 ;	-----------------------------------------
                                    914 ;	 function print_eeprom_menu
                                    915 ;	-----------------------------------------
      001BEB                        916 _print_eeprom_menu:
                                    917 ;	eeprom.c:241: printf("\n\n\r^^^^^^^^^^^^^^^^^^^-EEPROM-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ \n\n\r");
      001BEB 74 65            [12]  918 	mov	a,#___str_17
      001BED C0 E0            [24]  919 	push	acc
      001BEF 74 3A            [12]  920 	mov	a,#(___str_17 >> 8)
      001BF1 C0 E0            [24]  921 	push	acc
      001BF3 74 80            [12]  922 	mov	a,#0x80
      001BF5 C0 E0            [24]  923 	push	acc
      001BF7 12 22 58         [24]  924 	lcall	_printf
      001BFA 15 81            [12]  925 	dec	sp
      001BFC 15 81            [12]  926 	dec	sp
      001BFE 15 81            [12]  927 	dec	sp
                                    928 ;	eeprom.c:242: printf("'R' -> Read Random Byte\n\r");
      001C00 74 A7            [12]  929 	mov	a,#___str_18
      001C02 C0 E0            [24]  930 	push	acc
      001C04 74 3A            [12]  931 	mov	a,#(___str_18 >> 8)
      001C06 C0 E0            [24]  932 	push	acc
      001C08 74 80            [12]  933 	mov	a,#0x80
      001C0A C0 E0            [24]  934 	push	acc
      001C0C 12 22 58         [24]  935 	lcall	_printf
      001C0F 15 81            [12]  936 	dec	sp
      001C11 15 81            [12]  937 	dec	sp
      001C13 15 81            [12]  938 	dec	sp
                                    939 ;	eeprom.c:243: printf("'W' -> Write Random Byte\n\r");
      001C15 74 C1            [12]  940 	mov	a,#___str_19
      001C17 C0 E0            [24]  941 	push	acc
      001C19 74 3A            [12]  942 	mov	a,#(___str_19 >> 8)
      001C1B C0 E0            [24]  943 	push	acc
      001C1D 74 80            [12]  944 	mov	a,#0x80
      001C1F C0 E0            [24]  945 	push	acc
      001C21 12 22 58         [24]  946 	lcall	_printf
      001C24 15 81            [12]  947 	dec	sp
      001C26 15 81            [12]  948 	dec	sp
      001C28 15 81            [12]  949 	dec	sp
                                    950 ;	eeprom.c:244: printf("'D' -> Hexdump\n\r");
      001C2A 74 DC            [12]  951 	mov	a,#___str_20
      001C2C C0 E0            [24]  952 	push	acc
      001C2E 74 3A            [12]  953 	mov	a,#(___str_20 >> 8)
      001C30 C0 E0            [24]  954 	push	acc
      001C32 74 80            [12]  955 	mov	a,#0x80
      001C34 C0 E0            [24]  956 	push	acc
      001C36 12 22 58         [24]  957 	lcall	_printf
      001C39 15 81            [12]  958 	dec	sp
      001C3B 15 81            [12]  959 	dec	sp
      001C3D 15 81            [12]  960 	dec	sp
                                    961 ;	eeprom.c:245: printf("'B' -> Block Fill\n\r");
      001C3F 74 ED            [12]  962 	mov	a,#___str_21
      001C41 C0 E0            [24]  963 	push	acc
      001C43 74 3A            [12]  964 	mov	a,#(___str_21 >> 8)
      001C45 C0 E0            [24]  965 	push	acc
      001C47 74 80            [12]  966 	mov	a,#0x80
      001C49 C0 E0            [24]  967 	push	acc
      001C4B 12 22 58         [24]  968 	lcall	_printf
      001C4E 15 81            [12]  969 	dec	sp
      001C50 15 81            [12]  970 	dec	sp
      001C52 15 81            [12]  971 	dec	sp
                                    972 ;	eeprom.c:246: printf("'F' -> Reset EEPROM \n\r");
      001C54 74 01            [12]  973 	mov	a,#___str_22
      001C56 C0 E0            [24]  974 	push	acc
      001C58 74 3B            [12]  975 	mov	a,#(___str_22 >> 8)
      001C5A C0 E0            [24]  976 	push	acc
      001C5C 74 80            [12]  977 	mov	a,#0x80
      001C5E C0 E0            [24]  978 	push	acc
      001C60 12 22 58         [24]  979 	lcall	_printf
      001C63 15 81            [12]  980 	dec	sp
      001C65 15 81            [12]  981 	dec	sp
      001C67 15 81            [12]  982 	dec	sp
                                    983 ;	eeprom.c:247: }
      001C69 22               [24]  984 	ret
                                    985 ;------------------------------------------------------------
                                    986 ;Allocation info for local variables in function 'dump_eeprom_buffer'
                                    987 ;------------------------------------------------------------
                                    988 ;from                      Allocated with name '_dump_eeprom_buffer_from_65536_73'
                                    989 ;j                         Allocated with name '_dump_eeprom_buffer_j_65537_75'
                                    990 ;i                         Allocated with name '_dump_eeprom_buffer_i_131073_76'
                                    991 ;------------------------------------------------------------
                                    992 ;	eeprom.c:254: void dump_eeprom_buffer(int from)
                                    993 ;	-----------------------------------------
                                    994 ;	 function dump_eeprom_buffer
                                    995 ;	-----------------------------------------
      001C6A                        996 _dump_eeprom_buffer:
      001C6A AF 83            [24]  997 	mov	r7,dph
      001C6C E5 82            [12]  998 	mov	a,dpl
      001C6E 90 01 86         [24]  999 	mov	dptr,#_dump_eeprom_buffer_from_65536_73
      001C71 F0               [24] 1000 	movx	@dptr,a
      001C72 EF               [12] 1001 	mov	a,r7
      001C73 A3               [24] 1002 	inc	dptr
      001C74 F0               [24] 1003 	movx	@dptr,a
                                   1004 ;	eeprom.c:257: printf("\n\r-------------------------HEXDUMP--------------------------------");
      001C75 74 18            [12] 1005 	mov	a,#___str_23
      001C77 C0 E0            [24] 1006 	push	acc
      001C79 74 3B            [12] 1007 	mov	a,#(___str_23 >> 8)
      001C7B C0 E0            [24] 1008 	push	acc
      001C7D 74 80            [12] 1009 	mov	a,#0x80
      001C7F C0 E0            [24] 1010 	push	acc
      001C81 12 22 58         [24] 1011 	lcall	_printf
      001C84 15 81            [12] 1012 	dec	sp
      001C86 15 81            [12] 1013 	dec	sp
      001C88 15 81            [12] 1014 	dec	sp
                                   1015 ;	eeprom.c:258: printf("\n\r ADDR: +0 +1 +2 +3 +4 +5 +6 +7 +8 +9 +A +B +C +D +E +F \n\r");
      001C8A 74 5B            [12] 1016 	mov	a,#___str_24
      001C8C C0 E0            [24] 1017 	push	acc
      001C8E 74 3B            [12] 1018 	mov	a,#(___str_24 >> 8)
      001C90 C0 E0            [24] 1019 	push	acc
      001C92 74 80            [12] 1020 	mov	a,#0x80
      001C94 C0 E0            [24] 1021 	push	acc
      001C96 12 22 58         [24] 1022 	lcall	_printf
      001C99 15 81            [12] 1023 	dec	sp
      001C9B 15 81            [12] 1024 	dec	sp
      001C9D 15 81            [12] 1025 	dec	sp
                                   1026 ;	eeprom.c:259: int j = 16;
      001C9F 90 01 88         [24] 1027 	mov	dptr,#_dump_eeprom_buffer_j_65537_75
      001CA2 74 10            [12] 1028 	mov	a,#0x10
      001CA4 F0               [24] 1029 	movx	@dptr,a
      001CA5 E4               [12] 1030 	clr	a
      001CA6 A3               [24] 1031 	inc	dptr
      001CA7 F0               [24] 1032 	movx	@dptr,a
                                   1033 ;	eeprom.c:261: for (int i = 0; i < eeprom_buffer.num_char; i++)
      001CA8 90 01 86         [24] 1034 	mov	dptr,#_dump_eeprom_buffer_from_65536_73
      001CAB E0               [24] 1035 	movx	a,@dptr
      001CAC FE               [12] 1036 	mov	r6,a
      001CAD A3               [24] 1037 	inc	dptr
      001CAE E0               [24] 1038 	movx	a,@dptr
      001CAF FF               [12] 1039 	mov	r7,a
      001CB0 7C 00            [12] 1040 	mov	r4,#0x00
      001CB2 7D 00            [12] 1041 	mov	r5,#0x00
      001CB4                       1042 00107$:
      001CB4 90 01 84         [24] 1043 	mov	dptr,#(_eeprom_buffer + 0x000a)
      001CB7 E0               [24] 1044 	movx	a,@dptr
      001CB8 FA               [12] 1045 	mov	r2,a
      001CB9 A3               [24] 1046 	inc	dptr
      001CBA E0               [24] 1047 	movx	a,@dptr
      001CBB FB               [12] 1048 	mov	r3,a
      001CBC C3               [12] 1049 	clr	c
      001CBD EC               [12] 1050 	mov	a,r4
      001CBE 9A               [12] 1051 	subb	a,r2
      001CBF ED               [12] 1052 	mov	a,r5
      001CC0 64 80            [12] 1053 	xrl	a,#0x80
      001CC2 8B F0            [24] 1054 	mov	b,r3
      001CC4 63 F0 80         [24] 1055 	xrl	b,#0x80
      001CC7 95 F0            [12] 1056 	subb	a,b
      001CC9 40 03            [24] 1057 	jc	00128$
      001CCB 02 1D 82         [24] 1058 	ljmp	00105$
      001CCE                       1059 00128$:
                                   1060 ;	eeprom.c:263: if (j == 16)
      001CCE 90 01 88         [24] 1061 	mov	dptr,#_dump_eeprom_buffer_j_65537_75
      001CD1 E0               [24] 1062 	movx	a,@dptr
      001CD2 FA               [12] 1063 	mov	r2,a
      001CD3 A3               [24] 1064 	inc	dptr
      001CD4 E0               [24] 1065 	movx	a,@dptr
      001CD5 FB               [12] 1066 	mov	r3,a
      001CD6 BA 10 32         [24] 1067 	cjne	r2,#0x10,00102$
      001CD9 BB 00 2F         [24] 1068 	cjne	r3,#0x00,00102$
                                   1069 ;	eeprom.c:265: printf("\n\r0x%03X: ", (from + i));
      001CDC EC               [12] 1070 	mov	a,r4
      001CDD 2E               [12] 1071 	add	a,r6
      001CDE FA               [12] 1072 	mov	r2,a
      001CDF ED               [12] 1073 	mov	a,r5
      001CE0 3F               [12] 1074 	addc	a,r7
      001CE1 FB               [12] 1075 	mov	r3,a
      001CE2 C0 07            [24] 1076 	push	ar7
      001CE4 C0 06            [24] 1077 	push	ar6
      001CE6 C0 05            [24] 1078 	push	ar5
      001CE8 C0 04            [24] 1079 	push	ar4
      001CEA C0 02            [24] 1080 	push	ar2
      001CEC C0 03            [24] 1081 	push	ar3
      001CEE 74 97            [12] 1082 	mov	a,#___str_25
      001CF0 C0 E0            [24] 1083 	push	acc
      001CF2 74 3B            [12] 1084 	mov	a,#(___str_25 >> 8)
      001CF4 C0 E0            [24] 1085 	push	acc
      001CF6 74 80            [12] 1086 	mov	a,#0x80
      001CF8 C0 E0            [24] 1087 	push	acc
      001CFA 12 22 58         [24] 1088 	lcall	_printf
      001CFD E5 81            [12] 1089 	mov	a,sp
      001CFF 24 FB            [12] 1090 	add	a,#0xfb
      001D01 F5 81            [12] 1091 	mov	sp,a
      001D03 D0 04            [24] 1092 	pop	ar4
      001D05 D0 05            [24] 1093 	pop	ar5
      001D07 D0 06            [24] 1094 	pop	ar6
      001D09 D0 07            [24] 1095 	pop	ar7
      001D0B                       1096 00102$:
                                   1097 ;	eeprom.c:267: printf("%02X ", *(eeprom_buffer.buffer_start + i));
      001D0B 90 01 7C         [24] 1098 	mov	dptr,#(_eeprom_buffer + 0x0002)
      001D0E E0               [24] 1099 	movx	a,@dptr
      001D0F F9               [12] 1100 	mov	r1,a
      001D10 A3               [24] 1101 	inc	dptr
      001D11 E0               [24] 1102 	movx	a,@dptr
      001D12 FA               [12] 1103 	mov	r2,a
      001D13 A3               [24] 1104 	inc	dptr
      001D14 E0               [24] 1105 	movx	a,@dptr
      001D15 FB               [12] 1106 	mov	r3,a
      001D16 EC               [12] 1107 	mov	a,r4
      001D17 29               [12] 1108 	add	a,r1
      001D18 F9               [12] 1109 	mov	r1,a
      001D19 ED               [12] 1110 	mov	a,r5
      001D1A 3A               [12] 1111 	addc	a,r2
      001D1B FA               [12] 1112 	mov	r2,a
      001D1C 89 82            [24] 1113 	mov	dpl,r1
      001D1E 8A 83            [24] 1114 	mov	dph,r2
      001D20 8B F0            [24] 1115 	mov	b,r3
      001D22 12 2C 77         [24] 1116 	lcall	__gptrget
      001D25 F9               [12] 1117 	mov	r1,a
      001D26 7B 00            [12] 1118 	mov	r3,#0x00
      001D28 C0 07            [24] 1119 	push	ar7
      001D2A C0 06            [24] 1120 	push	ar6
      001D2C C0 05            [24] 1121 	push	ar5
      001D2E C0 04            [24] 1122 	push	ar4
      001D30 C0 01            [24] 1123 	push	ar1
      001D32 C0 03            [24] 1124 	push	ar3
      001D34 74 A2            [12] 1125 	mov	a,#___str_26
      001D36 C0 E0            [24] 1126 	push	acc
      001D38 74 3B            [12] 1127 	mov	a,#(___str_26 >> 8)
      001D3A C0 E0            [24] 1128 	push	acc
      001D3C 74 80            [12] 1129 	mov	a,#0x80
      001D3E C0 E0            [24] 1130 	push	acc
      001D40 12 22 58         [24] 1131 	lcall	_printf
      001D43 E5 81            [12] 1132 	mov	a,sp
      001D45 24 FB            [12] 1133 	add	a,#0xfb
      001D47 F5 81            [12] 1134 	mov	sp,a
      001D49 D0 04            [24] 1135 	pop	ar4
      001D4B D0 05            [24] 1136 	pop	ar5
      001D4D D0 06            [24] 1137 	pop	ar6
      001D4F D0 07            [24] 1138 	pop	ar7
                                   1139 ;	eeprom.c:268: j--;
      001D51 90 01 88         [24] 1140 	mov	dptr,#_dump_eeprom_buffer_j_65537_75
      001D54 E0               [24] 1141 	movx	a,@dptr
      001D55 24 FF            [12] 1142 	add	a,#0xff
      001D57 FA               [12] 1143 	mov	r2,a
      001D58 A3               [24] 1144 	inc	dptr
      001D59 E0               [24] 1145 	movx	a,@dptr
      001D5A 34 FF            [12] 1146 	addc	a,#0xff
      001D5C FB               [12] 1147 	mov	r3,a
      001D5D 90 01 88         [24] 1148 	mov	dptr,#_dump_eeprom_buffer_j_65537_75
      001D60 EA               [12] 1149 	mov	a,r2
      001D61 F0               [24] 1150 	movx	@dptr,a
      001D62 EB               [12] 1151 	mov	a,r3
      001D63 A3               [24] 1152 	inc	dptr
      001D64 F0               [24] 1153 	movx	@dptr,a
                                   1154 ;	eeprom.c:269: if (j == 0)
      001D65 90 01 88         [24] 1155 	mov	dptr,#_dump_eeprom_buffer_j_65537_75
      001D68 E0               [24] 1156 	movx	a,@dptr
      001D69 F5 F0            [12] 1157 	mov	b,a
      001D6B A3               [24] 1158 	inc	dptr
      001D6C E0               [24] 1159 	movx	a,@dptr
      001D6D 45 F0            [12] 1160 	orl	a,b
      001D6F 70 09            [24] 1161 	jnz	00108$
                                   1162 ;	eeprom.c:270: j = 16;
      001D71 90 01 88         [24] 1163 	mov	dptr,#_dump_eeprom_buffer_j_65537_75
      001D74 74 10            [12] 1164 	mov	a,#0x10
      001D76 F0               [24] 1165 	movx	@dptr,a
      001D77 E4               [12] 1166 	clr	a
      001D78 A3               [24] 1167 	inc	dptr
      001D79 F0               [24] 1168 	movx	@dptr,a
      001D7A                       1169 00108$:
                                   1170 ;	eeprom.c:261: for (int i = 0; i < eeprom_buffer.num_char; i++)
      001D7A 0C               [12] 1171 	inc	r4
      001D7B BC 00 01         [24] 1172 	cjne	r4,#0x00,00132$
      001D7E 0D               [12] 1173 	inc	r5
      001D7F                       1174 00132$:
      001D7F 02 1C B4         [24] 1175 	ljmp	00107$
      001D82                       1176 00105$:
                                   1177 ;	eeprom.c:272: printf("\n\n\r");
      001D82 74 A8            [12] 1178 	mov	a,#___str_27
      001D84 C0 E0            [24] 1179 	push	acc
      001D86 74 3B            [12] 1180 	mov	a,#(___str_27 >> 8)
      001D88 C0 E0            [24] 1181 	push	acc
      001D8A 74 80            [12] 1182 	mov	a,#0x80
      001D8C C0 E0            [24] 1183 	push	acc
      001D8E 12 22 58         [24] 1184 	lcall	_printf
      001D91 15 81            [12] 1185 	dec	sp
      001D93 15 81            [12] 1186 	dec	sp
      001D95 15 81            [12] 1187 	dec	sp
                                   1188 ;	eeprom.c:273: }
      001D97 22               [24] 1189 	ret
                                   1190 	.area CSEG    (CODE)
                                   1191 	.area CONST   (CODE)
                                   1192 	.area CONST   (CODE)
      0037BB                       1193 ___str_0:
      0037BB 20                    1194 	.ascii " "
      0037BC 0A                    1195 	.db 0x0a
      0037BD 0D                    1196 	.db 0x0d
      0037BE 20 48 65 6C 6C 6F 2C  1197 	.ascii " Hello, In EEPROM Demo mode"
             20 49 6E 20 45 45 50
             52 4F 4D 20 44 65 6D
             6F 20 6D 6F 64 65
      0037D9 00                    1198 	.db 0x00
                                   1199 	.area CSEG    (CODE)
                                   1200 	.area CONST   (CODE)
      0037DA                       1201 ___str_1:
      0037DA 50 6C 65 61 73 65 20  1202 	.ascii "Please make a valid choice"
             6D 61 6B 65 20 61 20
             76 61 6C 69 64 20 63
             68 6F 69 63 65
      0037F4 0A                    1203 	.db 0x0a
      0037F5 0D                    1204 	.db 0x0d
      0037F6 00                    1205 	.db 0x00
                                   1206 	.area CSEG    (CODE)
                                   1207 	.area CONST   (CODE)
      0037F7                       1208 ___str_2:
      0037F7 0A                    1209 	.db 0x0a
      0037F8 0D                    1210 	.db 0x0d
      0037F9 49 32 43 20 52 65 73  1211 	.ascii "I2C Reset has been performed "
             65 74 20 68 61 73 20
             62 65 65 6E 20 70 65
             72 66 6F 72 6D 65 64
             20
      003816 0A                    1212 	.db 0x0a
      003817 0D                    1213 	.db 0x0d
      003818 00                    1214 	.db 0x00
                                   1215 	.area CSEG    (CODE)
                                   1216 	.area CONST   (CODE)
      003819                       1217 ___str_3:
      003819 0A                    1218 	.db 0x0a
      00381A 0D                    1219 	.db 0x0d
      00381B 50 6C 65 61 73 65 20  1220 	.ascii "Please 'E' to go to EEPROM Menu "
             27 45 27 20 74 6F 20
             67 6F 20 74 6F 20 45
             45 50 52 4F 4D 20 4D
             65 6E 75 20
      00383B 0A                    1221 	.db 0x0a
      00383C 0D                    1222 	.db 0x0d
      00383D 00                    1223 	.db 0x00
                                   1224 	.area CSEG    (CODE)
                                   1225 	.area CONST   (CODE)
      00383E                       1226 ___str_4:
      00383E 0A                    1227 	.db 0x0a
      00383F 0D                    1228 	.db 0x0d
      003840 20 50 6C 65 61 73 65  1229 	.ascii " Please give a valid address to read from (0x000 - 0x7FF) "
             20 67 69 76 65 20 61
             20 76 61 6C 69 64 20
             61 64 64 72 65 73 73
             20 74 6F 20 72 65 61
             64 20 66 72 6F 6D 20
             28 30 78 30 30 30 20
             2D 20 30 78 37 46 46
             29 20
      00387A 0A                    1230 	.db 0x0a
      00387B 0D                    1231 	.db 0x0d
      00387C 00                    1232 	.db 0x00
                                   1233 	.area CSEG    (CODE)
                                   1234 	.area CONST   (CODE)
      00387D                       1235 ___str_5:
      00387D 42 6C 6F 63 6B 20 69  1236 	.ascii "Block is is %x "
             73 20 69 73 20 25 78
             20
      00388C 0A                    1237 	.db 0x0a
      00388D 0D                    1238 	.db 0x0d
      00388E 00                    1239 	.db 0x00
                                   1240 	.area CSEG    (CODE)
                                   1241 	.area CONST   (CODE)
      00388F                       1242 ___str_6:
      00388F 41 64 64 72 65 73 73  1243 	.ascii "Address is 0x%X "
             20 69 73 20 30 78 25
             58 20
      00389F 0A                    1244 	.db 0x0a
      0038A0 0D                    1245 	.db 0x0d
      0038A1 00                    1246 	.db 0x00
                                   1247 	.area CSEG    (CODE)
                                   1248 	.area CONST   (CODE)
      0038A2                       1249 ___str_7:
      0038A2 0A                    1250 	.db 0x0a
      0038A3 0D                    1251 	.db 0x0d
      0038A4 20 54 68 65 20 76 61  1252 	.ascii " The value at the address is -> 0x%X "
             6C 75 65 20 61 74 20
             74 68 65 20 61 64 64
             72 65 73 73 20 69 73
             20 2D 3E 20 30 78 25
             58 20
      0038C9 0A                    1253 	.db 0x0a
      0038CA 0D                    1254 	.db 0x0d
      0038CB 00                    1255 	.db 0x00
                                   1256 	.area CSEG    (CODE)
                                   1257 	.area CONST   (CODE)
      0038CC                       1258 ___str_8:
      0038CC 50 6C 65 61 73 65 20  1259 	.ascii "Please give a valid address to write to (0x000 - 0x7FF) "
             67 69 76 65 20 61 20
             76 61 6C 69 64 20 61
             64 64 72 65 73 73 20
             74 6F 20 77 72 69 74
             65 20 74 6F 20 28 30
             78 30 30 30 20 2D 20
             30 78 37 46 46 29 20
      003904 0A                    1260 	.db 0x0a
      003905 0D                    1261 	.db 0x0d
      003906 00                    1262 	.db 0x00
                                   1263 	.area CSEG    (CODE)
                                   1264 	.area CONST   (CODE)
      003907                       1265 ___str_9:
      003907 0A                    1266 	.db 0x0a
      003908 0D                    1267 	.db 0x0d
      003909 50 6C 65 61 73 65 20  1268 	.ascii "Please give a valid data to write (0x00 - 0xFF) "
             67 69 76 65 20 61 20
             76 61 6C 69 64 20 64
             61 74 61 20 74 6F 20
             77 72 69 74 65 20 28
             30 78 30 30 20 2D 20
             30 78 46 46 29 20
      003939 0A                    1269 	.db 0x0a
      00393A 0D                    1270 	.db 0x0d
      00393B 00                    1271 	.db 0x00
                                   1272 	.area CSEG    (CODE)
                                   1273 	.area CONST   (CODE)
      00393C                       1274 ___str_10:
      00393C 0A                    1275 	.db 0x0a
      00393D 0D                    1276 	.db 0x0d
      00393E 54 68 65 20 64 61 74  1277 	.ascii "The data has been successfully written at the address 0x%X "
             61 20 68 61 73 20 62
             65 65 6E 20 73 75 63
             63 65 73 73 66 75 6C
             6C 79 20 77 72 69 74
             74 65 6E 20 61 74 20
             74 68 65 20 61 64 64
             72 65 73 73 20 30 78
             25 58 20
      003979 0A                    1278 	.db 0x0a
      00397A 0D                    1279 	.db 0x0d
      00397B 00                    1280 	.db 0x00
                                   1281 	.area CSEG    (CODE)
                                   1282 	.area CONST   (CODE)
      00397C                       1283 ___str_11:
      00397C 50 6C 65 61 73 65 20  1284 	.ascii "Please give a valid starting address (0x000 - 0x7FF) "
             67 69 76 65 20 61 20
             76 61 6C 69 64 20 73
             74 61 72 74 69 6E 67
             20 61 64 64 72 65 73
             73 20 28 30 78 30 30
             30 20 2D 20 30 78 37
             46 46 29 20
      0039B1 0A                    1285 	.db 0x0a
      0039B2 0D                    1286 	.db 0x0d
      0039B3 00                    1287 	.db 0x00
                                   1288 	.area CSEG    (CODE)
                                   1289 	.area CONST   (CODE)
      0039B4                       1290 ___str_12:
      0039B4 50 6C 65 61 73 65 20  1291 	.ascii "Please give a valid ending address (0x%X - 0x7FF) "
             67 69 76 65 20 61 20
             76 61 6C 69 64 20 65
             6E 64 69 6E 67 20 61
             64 64 72 65 73 73 20
             28 30 78 25 58 20 2D
             20 30 78 37 46 46 29
             20
      0039E6 0A                    1292 	.db 0x0a
      0039E7 0D                    1293 	.db 0x0d
      0039E8 00                    1294 	.db 0x00
                                   1295 	.area CSEG    (CODE)
                                   1296 	.area CONST   (CODE)
      0039E9                       1297 ___str_13:
      0039E9 52 65 61 64 69 6E 67  1298 	.ascii "Reading EEPROM..."
             20 45 45 50 52 4F 4D
             2E 2E 2E
      0039FA 0A                    1299 	.db 0x0a
      0039FB 0D                    1300 	.db 0x0d
      0039FC 00                    1301 	.db 0x00
                                   1302 	.area CSEG    (CODE)
                                   1303 	.area CONST   (CODE)
      0039FD                       1304 ___str_14:
      0039FD 0A                    1305 	.db 0x0a
      0039FE 0D                    1306 	.db 0x0d
      0039FF 50 6C 65 61 73 65 20  1307 	.ascii "Please give a valid data for blockfill (0x00 - 0xFF) "
             67 69 76 65 20 61 20
             76 61 6C 69 64 20 64
             61 74 61 20 66 6F 72
             20 62 6C 6F 63 6B 66
             69 6C 6C 20 28 30 78
             30 30 20 2D 20 30 78
             46 46 29 20
      003A34 0A                    1308 	.db 0x0a
      003A35 0D                    1309 	.db 0x0d
      003A36 00                    1310 	.db 0x00
                                   1311 	.area CSEG    (CODE)
                                   1312 	.area CONST   (CODE)
      003A37                       1313 ___str_15:
      003A37 57 72 69 74 69 6E 67  1314 	.ascii "Writing EEPROM..."
             20 45 45 50 52 4F 4D
             2E 2E 2E
      003A48 0A                    1315 	.db 0x0a
      003A49 0D                    1316 	.db 0x0d
      003A4A 00                    1317 	.db 0x00
                                   1318 	.area CSEG    (CODE)
                                   1319 	.area CONST   (CODE)
      003A4B                       1320 ___str_16:
      003A4B 0A                    1321 	.db 0x0a
      003A4C 0D                    1322 	.db 0x0d
      003A4D 42 6C 6F 63 6B 66 69  1323 	.ascii "Blockfill finished..."
             6C 6C 20 66 69 6E 69
             73 68 65 64 2E 2E 2E
      003A62 0A                    1324 	.db 0x0a
      003A63 0D                    1325 	.db 0x0d
      003A64 00                    1326 	.db 0x00
                                   1327 	.area CSEG    (CODE)
                                   1328 	.area CONST   (CODE)
      003A65                       1329 ___str_17:
      003A65 0A                    1330 	.db 0x0a
      003A66 0A                    1331 	.db 0x0a
      003A67 0D                    1332 	.db 0x0d
      003A68 5E 5E 5E 5E 5E 5E 5E  1333 	.ascii "^^^^^^^^^^^^^^^^^^^-EEPROM-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ "
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 2D 45
             45 50 52 4F 4D 2D 4D
             45 4E 55 2D 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 20
      003AA3 0A                    1334 	.db 0x0a
      003AA4 0A                    1335 	.db 0x0a
      003AA5 0D                    1336 	.db 0x0d
      003AA6 00                    1337 	.db 0x00
                                   1338 	.area CSEG    (CODE)
                                   1339 	.area CONST   (CODE)
      003AA7                       1340 ___str_18:
      003AA7 27 52 27 20 2D 3E 20  1341 	.ascii "'R' -> Read Random Byte"
             52 65 61 64 20 52 61
             6E 64 6F 6D 20 42 79
             74 65
      003ABE 0A                    1342 	.db 0x0a
      003ABF 0D                    1343 	.db 0x0d
      003AC0 00                    1344 	.db 0x00
                                   1345 	.area CSEG    (CODE)
                                   1346 	.area CONST   (CODE)
      003AC1                       1347 ___str_19:
      003AC1 27 57 27 20 2D 3E 20  1348 	.ascii "'W' -> Write Random Byte"
             57 72 69 74 65 20 52
             61 6E 64 6F 6D 20 42
             79 74 65
      003AD9 0A                    1349 	.db 0x0a
      003ADA 0D                    1350 	.db 0x0d
      003ADB 00                    1351 	.db 0x00
                                   1352 	.area CSEG    (CODE)
                                   1353 	.area CONST   (CODE)
      003ADC                       1354 ___str_20:
      003ADC 27 44 27 20 2D 3E 20  1355 	.ascii "'D' -> Hexdump"
             48 65 78 64 75 6D 70
      003AEA 0A                    1356 	.db 0x0a
      003AEB 0D                    1357 	.db 0x0d
      003AEC 00                    1358 	.db 0x00
                                   1359 	.area CSEG    (CODE)
                                   1360 	.area CONST   (CODE)
      003AED                       1361 ___str_21:
      003AED 27 42 27 20 2D 3E 20  1362 	.ascii "'B' -> Block Fill"
             42 6C 6F 63 6B 20 46
             69 6C 6C
      003AFE 0A                    1363 	.db 0x0a
      003AFF 0D                    1364 	.db 0x0d
      003B00 00                    1365 	.db 0x00
                                   1366 	.area CSEG    (CODE)
                                   1367 	.area CONST   (CODE)
      003B01                       1368 ___str_22:
      003B01 27 46 27 20 2D 3E 20  1369 	.ascii "'F' -> Reset EEPROM "
             52 65 73 65 74 20 45
             45 50 52 4F 4D 20
      003B15 0A                    1370 	.db 0x0a
      003B16 0D                    1371 	.db 0x0d
      003B17 00                    1372 	.db 0x00
                                   1373 	.area CSEG    (CODE)
                                   1374 	.area CONST   (CODE)
      003B18                       1375 ___str_23:
      003B18 0A                    1376 	.db 0x0a
      003B19 0D                    1377 	.db 0x0d
      003B1A 2D 2D 2D 2D 2D 2D 2D  1378 	.ascii "-------------------------HEXDUMP----------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 48 45 58
             44 55 4D 50 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D
      003B56 2D 2D 2D 2D           1379 	.ascii "----"
      003B5A 00                    1380 	.db 0x00
                                   1381 	.area CSEG    (CODE)
                                   1382 	.area CONST   (CODE)
      003B5B                       1383 ___str_24:
      003B5B 0A                    1384 	.db 0x0a
      003B5C 0D                    1385 	.db 0x0d
      003B5D 20 41 44 44 52 3A 20  1386 	.ascii " ADDR: +0 +1 +2 +3 +4 +5 +6 +7 +8 +9 +A +B +C +D +E +F "
             2B 30 20 2B 31 20 2B
             32 20 2B 33 20 2B 34
             20 2B 35 20 2B 36 20
             2B 37 20 2B 38 20 2B
             39 20 2B 41 20 2B 42
             20 2B 43 20 2B 44 20
             2B 45 20 2B 46 20
      003B94 0A                    1387 	.db 0x0a
      003B95 0D                    1388 	.db 0x0d
      003B96 00                    1389 	.db 0x00
                                   1390 	.area CSEG    (CODE)
                                   1391 	.area CONST   (CODE)
      003B97                       1392 ___str_25:
      003B97 0A                    1393 	.db 0x0a
      003B98 0D                    1394 	.db 0x0d
      003B99 30 78 25 30 33 58 3A  1395 	.ascii "0x%03X: "
             20
      003BA1 00                    1396 	.db 0x00
                                   1397 	.area CSEG    (CODE)
                                   1398 	.area CONST   (CODE)
      003BA2                       1399 ___str_26:
      003BA2 25 30 32 58 20        1400 	.ascii "%02X "
      003BA7 00                    1401 	.db 0x00
                                   1402 	.area CSEG    (CODE)
                                   1403 	.area CONST   (CODE)
      003BA8                       1404 ___str_27:
      003BA8 0A                    1405 	.db 0x0a
      003BA9 0A                    1406 	.db 0x0a
      003BAA 0D                    1407 	.db 0x0d
      003BAB 00                    1408 	.db 0x00
                                   1409 	.area CSEG    (CODE)
                                   1410 	.area XINIT   (CODE)
                                   1411 	.area CABS    (ABS,CODE)
