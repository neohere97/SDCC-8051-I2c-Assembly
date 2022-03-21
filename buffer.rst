                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module buffer
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main_menu
                                     12 	.globl _get_number
                                     13 	.globl _getchar
                                     14 	.globl _putchar
                                     15 	.globl _free
                                     16 	.globl _malloc
                                     17 	.globl _printf
                                     18 	.globl _buffers_array
                                     19 	.globl _program_stats
                                     20 	.globl _user_interface_heap
                                     21 	.globl _at_clear_all_buffers
                                     22 	.globl _delete_buffer
                                     23 	.globl _print_heap_menu
                                     24 	.globl _create_new_buffer
                                     25 	.globl _create_initial_buffers
                                     26 	.globl _buffer_input_loop
                                     27 	.globl _dump_buff_zero_ascii
                                     28 	.globl _dump_buff_zero_hex
                                     29 	.globl _print_heap_stats
                                     30 	.globl _print_all_buffers
                                     31 ;--------------------------------------------------------
                                     32 ; special function registers
                                     33 ;--------------------------------------------------------
                                     34 	.area RSEG    (ABS,DATA)
      000000                         35 	.org 0x0000
                                     36 ;--------------------------------------------------------
                                     37 ; special function bits
                                     38 ;--------------------------------------------------------
                                     39 	.area RSEG    (ABS,DATA)
      000000                         40 	.org 0x0000
                                     41 ;--------------------------------------------------------
                                     42 ; overlayable register banks
                                     43 ;--------------------------------------------------------
                                     44 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         45 	.ds 8
                                     46 ;--------------------------------------------------------
                                     47 ; internal ram data
                                     48 ;--------------------------------------------------------
                                     49 	.area DSEG    (DATA)
      000010                         50 _delete_buffer_sloc0_1_0:
      000010                         51 	.ds 2
      000012                         52 _delete_buffer_sloc1_1_0:
      000012                         53 	.ds 2
      000014                         54 _delete_buffer_sloc2_1_0:
      000014                         55 	.ds 3
                                     56 ;--------------------------------------------------------
                                     57 ; overlayable items in internal ram 
                                     58 ;--------------------------------------------------------
                                     59 ;--------------------------------------------------------
                                     60 ; indirectly addressable internal ram data
                                     61 ;--------------------------------------------------------
                                     62 	.area ISEG    (DATA)
                                     63 ;--------------------------------------------------------
                                     64 ; absolute internal ram data
                                     65 ;--------------------------------------------------------
                                     66 	.area IABS    (ABS,DATA)
                                     67 	.area IABS    (ABS,DATA)
                                     68 ;--------------------------------------------------------
                                     69 ; bit data
                                     70 ;--------------------------------------------------------
                                     71 	.area BSEG    (BIT)
                                     72 ;--------------------------------------------------------
                                     73 ; paged external ram data
                                     74 ;--------------------------------------------------------
                                     75 	.area PSEG    (PAG,XDATA)
                                     76 ;--------------------------------------------------------
                                     77 ; external ram data
                                     78 ;--------------------------------------------------------
                                     79 	.area XSEG    (XDATA)
      000011                         80 _program_stats::
      000011                         81 	.ds 10
      00001B                         82 _buffers_array::
      00001B                         83 	.ds 300
      000147                         84 _create_new_buffer_buff_65536_57:
      000147                         85 	.ds 12
      000153                         86 _create_initial_buffers_buff_65537_63:
      000153                         87 	.ds 12
      00015F                         88 _create_initial_buffers_buff1_65537_63:
      00015F                         89 	.ds 12
      00016B                         90 _dump_buff_zero_ascii_j_65536_79:
      00016B                         91 	.ds 2
      00016D                         92 _dump_buff_zero_hex_j_131073_87:
      00016D                         93 	.ds 2
                                     94 ;--------------------------------------------------------
                                     95 ; absolute external ram data
                                     96 ;--------------------------------------------------------
                                     97 	.area XABS    (ABS,XDATA)
                                     98 ;--------------------------------------------------------
                                     99 ; external initialized ram data
                                    100 ;--------------------------------------------------------
                                    101 	.area XISEG   (XDATA)
                                    102 	.area HOME    (CODE)
                                    103 	.area GSINIT0 (CODE)
                                    104 	.area GSINIT1 (CODE)
                                    105 	.area GSINIT2 (CODE)
                                    106 	.area GSINIT3 (CODE)
                                    107 	.area GSINIT4 (CODE)
                                    108 	.area GSINIT5 (CODE)
                                    109 	.area GSINIT  (CODE)
                                    110 	.area GSFINAL (CODE)
                                    111 	.area CSEG    (CODE)
                                    112 ;--------------------------------------------------------
                                    113 ; global & static initialisations
                                    114 ;--------------------------------------------------------
                                    115 	.area HOME    (CODE)
                                    116 	.area GSINIT  (CODE)
                                    117 	.area GSFINAL (CODE)
                                    118 	.area GSINIT  (CODE)
                                    119 ;--------------------------------------------------------
                                    120 ; Home
                                    121 ;--------------------------------------------------------
                                    122 	.area HOME    (CODE)
                                    123 	.area HOME    (CODE)
                                    124 ;--------------------------------------------------------
                                    125 ; code
                                    126 ;--------------------------------------------------------
                                    127 	.area CSEG    (CODE)
                                    128 ;------------------------------------------------------------
                                    129 ;Allocation info for local variables in function 'user_interface_heap'
                                    130 ;------------------------------------------------------------
                                    131 ;	buffer.c:45: void user_interface_heap()
                                    132 ;	-----------------------------------------
                                    133 ;	 function user_interface_heap
                                    134 ;	-----------------------------------------
      00056E                        135 _user_interface_heap:
                           000007   136 	ar7 = 0x07
                           000006   137 	ar6 = 0x06
                           000005   138 	ar5 = 0x05
                           000004   139 	ar4 = 0x04
                           000003   140 	ar3 = 0x03
                           000002   141 	ar2 = 0x02
                           000001   142 	ar1 = 0x01
                           000000   143 	ar0 = 0x00
                                    144 ;	buffer.c:47: create_initial_buffers();
      00056E 12 09 FE         [24]  145 	lcall	_create_initial_buffers
                                    146 ;	buffer.c:48: print_all_buffers();
      000571 12 10 11         [24]  147 	lcall	_print_all_buffers
                                    148 ;	buffer.c:49: buffer_input_loop();
                                    149 ;	buffer.c:50: }
      000574 02 0B D5         [24]  150 	ljmp	_buffer_input_loop
                                    151 ;------------------------------------------------------------
                                    152 ;Allocation info for local variables in function 'at_clear_all_buffers'
                                    153 ;------------------------------------------------------------
                                    154 ;i                         Allocated with name '_at_clear_all_buffers_i_131072_48'
                                    155 ;------------------------------------------------------------
                                    156 ;	buffer.c:58: void at_clear_all_buffers()
                                    157 ;	-----------------------------------------
                                    158 ;	 function at_clear_all_buffers
                                    159 ;	-----------------------------------------
      000577                        160 _at_clear_all_buffers:
                                    161 ;	buffer.c:60: for (int i = 0; i < program_stats.total_buffers; i++)
      000577 7E 00            [12]  162 	mov	r6,#0x00
      000579 7F 00            [12]  163 	mov	r7,#0x00
      00057B                        164 00103$:
      00057B 90 00 19         [24]  165 	mov	dptr,#(_program_stats + 0x0008)
      00057E E0               [24]  166 	movx	a,@dptr
      00057F FC               [12]  167 	mov	r4,a
      000580 A3               [24]  168 	inc	dptr
      000581 E0               [24]  169 	movx	a,@dptr
      000582 FD               [12]  170 	mov	r5,a
      000583 C3               [12]  171 	clr	c
      000584 EE               [12]  172 	mov	a,r6
      000585 9C               [12]  173 	subb	a,r4
      000586 EF               [12]  174 	mov	a,r7
      000587 64 80            [12]  175 	xrl	a,#0x80
      000589 8D F0            [24]  176 	mov	b,r5
      00058B 63 F0 80         [24]  177 	xrl	b,#0x80
      00058E 95 F0            [12]  178 	subb	a,b
      000590 50 61            [24]  179 	jnc	00101$
                                    180 ;	buffer.c:62: free(buffers_array[i].buffer_start);
      000592 90 15 14         [24]  181 	mov	dptr,#__mulint_PARM_2
      000595 EE               [12]  182 	mov	a,r6
      000596 F0               [24]  183 	movx	@dptr,a
      000597 EF               [12]  184 	mov	a,r7
      000598 A3               [24]  185 	inc	dptr
      000599 F0               [24]  186 	movx	@dptr,a
      00059A 90 00 0C         [24]  187 	mov	dptr,#0x000c
      00059D C0 07            [24]  188 	push	ar7
      00059F C0 06            [24]  189 	push	ar6
      0005A1 12 19 B5         [24]  190 	lcall	__mulint
      0005A4 AC 82            [24]  191 	mov	r4,dpl
      0005A6 AD 83            [24]  192 	mov	r5,dph
      0005A8 EC               [12]  193 	mov	a,r4
      0005A9 24 1B            [12]  194 	add	a,#_buffers_array
      0005AB FC               [12]  195 	mov	r4,a
      0005AC ED               [12]  196 	mov	a,r5
      0005AD 34 00            [12]  197 	addc	a,#(_buffers_array >> 8)
      0005AF FD               [12]  198 	mov	r5,a
      0005B0 8C 82            [24]  199 	mov	dpl,r4
      0005B2 8D 83            [24]  200 	mov	dph,r5
      0005B4 A3               [24]  201 	inc	dptr
      0005B5 A3               [24]  202 	inc	dptr
      0005B6 E0               [24]  203 	movx	a,@dptr
      0005B7 FB               [12]  204 	mov	r3,a
      0005B8 A3               [24]  205 	inc	dptr
      0005B9 E0               [24]  206 	movx	a,@dptr
      0005BA FC               [12]  207 	mov	r4,a
      0005BB A3               [24]  208 	inc	dptr
      0005BC E0               [24]  209 	movx	a,@dptr
      0005BD FD               [12]  210 	mov	r5,a
      0005BE 8B 82            [24]  211 	mov	dpl,r3
      0005C0 8C 83            [24]  212 	mov	dph,r4
      0005C2 8D F0            [24]  213 	mov	b,r5
      0005C4 12 16 2A         [24]  214 	lcall	_free
      0005C7 D0 06            [24]  215 	pop	ar6
      0005C9 D0 07            [24]  216 	pop	ar7
                                    217 ;	buffer.c:63: printf("Buffer %d Freed ....\n\r", i);
      0005CB C0 07            [24]  218 	push	ar7
      0005CD C0 06            [24]  219 	push	ar6
      0005CF C0 06            [24]  220 	push	ar6
      0005D1 C0 07            [24]  221 	push	ar7
      0005D3 74 A9            [12]  222 	mov	a,#___str_0
      0005D5 C0 E0            [24]  223 	push	acc
      0005D7 74 25            [12]  224 	mov	a,#(___str_0 >> 8)
      0005D9 C0 E0            [24]  225 	push	acc
      0005DB 74 80            [12]  226 	mov	a,#0x80
      0005DD C0 E0            [24]  227 	push	acc
      0005DF 12 1A 23         [24]  228 	lcall	_printf
      0005E2 E5 81            [12]  229 	mov	a,sp
      0005E4 24 FB            [12]  230 	add	a,#0xfb
      0005E6 F5 81            [12]  231 	mov	sp,a
      0005E8 D0 06            [24]  232 	pop	ar6
      0005EA D0 07            [24]  233 	pop	ar7
                                    234 ;	buffer.c:60: for (int i = 0; i < program_stats.total_buffers; i++)
      0005EC 0E               [12]  235 	inc	r6
      0005ED BE 00 8B         [24]  236 	cjne	r6,#0x00,00103$
      0005F0 0F               [12]  237 	inc	r7
      0005F1 80 88            [24]  238 	sjmp	00103$
      0005F3                        239 00101$:
                                    240 ;	buffer.c:65: printf("Let's begin again..\n\r");
      0005F3 74 C0            [12]  241 	mov	a,#___str_1
      0005F5 C0 E0            [24]  242 	push	acc
      0005F7 74 25            [12]  243 	mov	a,#(___str_1 >> 8)
      0005F9 C0 E0            [24]  244 	push	acc
      0005FB 74 80            [12]  245 	mov	a,#0x80
      0005FD C0 E0            [24]  246 	push	acc
      0005FF 12 1A 23         [24]  247 	lcall	_printf
      000602 15 81            [12]  248 	dec	sp
      000604 15 81            [12]  249 	dec	sp
      000606 15 81            [12]  250 	dec	sp
                                    251 ;	buffer.c:66: user_interface_heap();
                                    252 ;	buffer.c:67: }
      000608 02 05 6E         [24]  253 	ljmp	_user_interface_heap
                                    254 ;------------------------------------------------------------
                                    255 ;Allocation info for local variables in function 'delete_buffer'
                                    256 ;------------------------------------------------------------
                                    257 ;sloc0                     Allocated with name '_delete_buffer_sloc0_1_0'
                                    258 ;sloc1                     Allocated with name '_delete_buffer_sloc1_1_0'
                                    259 ;sloc2                     Allocated with name '_delete_buffer_sloc2_1_0'
                                    260 ;buff_number               Allocated with name '_delete_buffer_buff_number_65536_50'
                                    261 ;buff_to_free              Allocated with name '_delete_buffer_buff_to_free_65536_50'
                                    262 ;buffer_freed_size         Allocated with name '_delete_buffer_buffer_freed_size_65536_50'
                                    263 ;i                         Allocated with name '_delete_buffer_i_196608_52'
                                    264 ;------------------------------------------------------------
                                    265 ;	buffer.c:74: int delete_buffer()
                                    266 ;	-----------------------------------------
                                    267 ;	 function delete_buffer
                                    268 ;	-----------------------------------------
      00060B                        269 _delete_buffer:
                                    270 ;	buffer.c:79: get_del_num:
      00060B                        271 00101$:
                                    272 ;	buffer.c:80: printf("\n\rGive Valid Buffer Number to delete(1-%d) in 3 digits\n\r", (program_stats.total_buffers - 1));
      00060B 90 00 19         [24]  273 	mov	dptr,#(_program_stats + 0x0008)
      00060E E0               [24]  274 	movx	a,@dptr
      00060F FE               [12]  275 	mov	r6,a
      000610 A3               [24]  276 	inc	dptr
      000611 E0               [24]  277 	movx	a,@dptr
      000612 FF               [12]  278 	mov	r7,a
      000613 1E               [12]  279 	dec	r6
      000614 BE FF 01         [24]  280 	cjne	r6,#0xff,00139$
      000617 1F               [12]  281 	dec	r7
      000618                        282 00139$:
      000618 C0 06            [24]  283 	push	ar6
      00061A C0 07            [24]  284 	push	ar7
      00061C 74 D6            [12]  285 	mov	a,#___str_2
      00061E C0 E0            [24]  286 	push	acc
      000620 74 25            [12]  287 	mov	a,#(___str_2 >> 8)
      000622 C0 E0            [24]  288 	push	acc
      000624 74 80            [12]  289 	mov	a,#0x80
      000626 C0 E0            [24]  290 	push	acc
      000628 12 1A 23         [24]  291 	lcall	_printf
      00062B E5 81            [12]  292 	mov	a,sp
      00062D 24 FB            [12]  293 	add	a,#0xfb
      00062F F5 81            [12]  294 	mov	sp,a
                                    295 ;	buffer.c:81: buff_number = get_number(3);
      000631 90 00 03         [24]  296 	mov	dptr,#0x0003
      000634 12 03 C4         [24]  297 	lcall	_get_number
      000637 AE 82            [24]  298 	mov	r6,dpl
      000639 AF 83            [24]  299 	mov	r7,dph
                                    300 ;	buffer.c:83: if (buff_number > 0 && buff_number < program_stats.total_buffers)
      00063B C3               [12]  301 	clr	c
      00063C E4               [12]  302 	clr	a
      00063D 9E               [12]  303 	subb	a,r6
      00063E 74 80            [12]  304 	mov	a,#(0x00 ^ 0x80)
      000640 8F F0            [24]  305 	mov	b,r7
      000642 63 F0 80         [24]  306 	xrl	b,#0x80
      000645 95 F0            [12]  307 	subb	a,b
      000647 50 C2            [24]  308 	jnc	00101$
      000649 90 00 19         [24]  309 	mov	dptr,#(_program_stats + 0x0008)
      00064C E0               [24]  310 	movx	a,@dptr
      00064D FC               [12]  311 	mov	r4,a
      00064E A3               [24]  312 	inc	dptr
      00064F E0               [24]  313 	movx	a,@dptr
      000650 FD               [12]  314 	mov	r5,a
      000651 C3               [12]  315 	clr	c
      000652 EE               [12]  316 	mov	a,r6
      000653 9C               [12]  317 	subb	a,r4
      000654 EF               [12]  318 	mov	a,r7
      000655 64 80            [12]  319 	xrl	a,#0x80
      000657 8D F0            [24]  320 	mov	b,r5
      000659 63 F0 80         [24]  321 	xrl	b,#0x80
      00065C 95 F0            [12]  322 	subb	a,b
      00065E 50 AB            [24]  323 	jnc	00101$
                                    324 ;	buffer.c:87: buff_to_free = buffers_array[buff_number].buffer_start;
      000660 90 15 14         [24]  325 	mov	dptr,#__mulint_PARM_2
      000663 EE               [12]  326 	mov	a,r6
      000664 F0               [24]  327 	movx	@dptr,a
      000665 EF               [12]  328 	mov	a,r7
      000666 A3               [24]  329 	inc	dptr
      000667 F0               [24]  330 	movx	@dptr,a
      000668 90 00 0C         [24]  331 	mov	dptr,#0x000c
      00066B C0 07            [24]  332 	push	ar7
      00066D C0 06            [24]  333 	push	ar6
      00066F 12 19 B5         [24]  334 	lcall	__mulint
      000672 AC 82            [24]  335 	mov	r4,dpl
      000674 AD 83            [24]  336 	mov	r5,dph
      000676 D0 06            [24]  337 	pop	ar6
      000678 D0 07            [24]  338 	pop	ar7
      00067A EC               [12]  339 	mov	a,r4
      00067B 24 1B            [12]  340 	add	a,#_buffers_array
      00067D FC               [12]  341 	mov	r4,a
      00067E ED               [12]  342 	mov	a,r5
      00067F 34 00            [12]  343 	addc	a,#(_buffers_array >> 8)
      000681 FD               [12]  344 	mov	r5,a
      000682 8C 82            [24]  345 	mov	dpl,r4
      000684 8D 83            [24]  346 	mov	dph,r5
      000686 A3               [24]  347 	inc	dptr
      000687 A3               [24]  348 	inc	dptr
      000688 E0               [24]  349 	movx	a,@dptr
      000689 F5 14            [12]  350 	mov	_delete_buffer_sloc2_1_0,a
      00068B A3               [24]  351 	inc	dptr
      00068C E0               [24]  352 	movx	a,@dptr
      00068D F5 15            [12]  353 	mov	(_delete_buffer_sloc2_1_0 + 1),a
      00068F A3               [24]  354 	inc	dptr
      000690 E0               [24]  355 	movx	a,@dptr
      000691 F5 16            [12]  356 	mov	(_delete_buffer_sloc2_1_0 + 2),a
                                    357 ;	buffer.c:88: buffer_freed_size = buffers_array[buff_number].buff_size;
      000693 74 08            [12]  358 	mov	a,#0x08
      000695 2C               [12]  359 	add	a,r4
      000696 F5 82            [12]  360 	mov	dpl,a
      000698 E4               [12]  361 	clr	a
      000699 3D               [12]  362 	addc	a,r5
      00069A F5 83            [12]  363 	mov	dph,a
      00069C E0               [24]  364 	movx	a,@dptr
      00069D FC               [12]  365 	mov	r4,a
      00069E A3               [24]  366 	inc	dptr
      00069F E0               [24]  367 	movx	a,@dptr
      0006A0 FD               [12]  368 	mov	r5,a
                                    369 ;	buffer.c:90: for (int i = 0; i < (program_stats.total_buffers - 1); i++)
      0006A1 E4               [12]  370 	clr	a
      0006A2 F5 10            [12]  371 	mov	_delete_buffer_sloc0_1_0,a
      0006A4 F5 11            [12]  372 	mov	(_delete_buffer_sloc0_1_0 + 1),a
      0006A6                        373 00110$:
      0006A6 C0 04            [24]  374 	push	ar4
      0006A8 C0 05            [24]  375 	push	ar5
      0006AA 90 00 19         [24]  376 	mov	dptr,#(_program_stats + 0x0008)
      0006AD E0               [24]  377 	movx	a,@dptr
      0006AE F5 12            [12]  378 	mov	_delete_buffer_sloc1_1_0,a
      0006B0 A3               [24]  379 	inc	dptr
      0006B1 E0               [24]  380 	movx	a,@dptr
      0006B2 F5 13            [12]  381 	mov	(_delete_buffer_sloc1_1_0 + 1),a
      0006B4 E5 12            [12]  382 	mov	a,_delete_buffer_sloc1_1_0
      0006B6 24 FF            [12]  383 	add	a,#0xff
      0006B8 F8               [12]  384 	mov	r0,a
      0006B9 E5 13            [12]  385 	mov	a,(_delete_buffer_sloc1_1_0 + 1)
      0006BB 34 FF            [12]  386 	addc	a,#0xff
      0006BD FD               [12]  387 	mov	r5,a
      0006BE C3               [12]  388 	clr	c
      0006BF E5 10            [12]  389 	mov	a,_delete_buffer_sloc0_1_0
      0006C1 98               [12]  390 	subb	a,r0
      0006C2 E5 11            [12]  391 	mov	a,(_delete_buffer_sloc0_1_0 + 1)
      0006C4 64 80            [12]  392 	xrl	a,#0x80
      0006C6 8D F0            [24]  393 	mov	b,r5
      0006C8 63 F0 80         [24]  394 	xrl	b,#0x80
      0006CB 95 F0            [12]  395 	subb	a,b
      0006CD D0 05            [24]  396 	pop	ar5
      0006CF D0 04            [24]  397 	pop	ar4
      0006D1 40 03            [24]  398 	jc	00142$
      0006D3 02 07 84         [24]  399 	ljmp	00104$
      0006D6                        400 00142$:
                                    401 ;	buffer.c:92: if (i >= buff_number)
      0006D6 C3               [12]  402 	clr	c
      0006D7 E5 10            [12]  403 	mov	a,_delete_buffer_sloc0_1_0
      0006D9 9E               [12]  404 	subb	a,r6
      0006DA E5 11            [12]  405 	mov	a,(_delete_buffer_sloc0_1_0 + 1)
      0006DC 64 80            [12]  406 	xrl	a,#0x80
      0006DE 8F F0            [24]  407 	mov	b,r7
      0006E0 63 F0 80         [24]  408 	xrl	b,#0x80
      0006E3 95 F0            [12]  409 	subb	a,b
      0006E5 50 03            [24]  410 	jnc	00143$
      0006E7 02 07 79         [24]  411 	ljmp	00111$
      0006EA                        412 00143$:
                                    413 ;	buffer.c:94: buffers_array[i + 1].buffer_num = i;
      0006EA C0 04            [24]  414 	push	ar4
      0006EC C0 05            [24]  415 	push	ar5
      0006EE 90 15 14         [24]  416 	mov	dptr,#__mulint_PARM_2
      0006F1 74 01            [12]  417 	mov	a,#0x01
      0006F3 25 10            [12]  418 	add	a,_delete_buffer_sloc0_1_0
      0006F5 F0               [24]  419 	movx	@dptr,a
      0006F6 E4               [12]  420 	clr	a
      0006F7 35 11            [12]  421 	addc	a,(_delete_buffer_sloc0_1_0 + 1)
      0006F9 A3               [24]  422 	inc	dptr
      0006FA F0               [24]  423 	movx	@dptr,a
      0006FB 90 00 0C         [24]  424 	mov	dptr,#0x000c
      0006FE C0 07            [24]  425 	push	ar7
      000700 C0 06            [24]  426 	push	ar6
      000702 C0 04            [24]  427 	push	ar4
      000704 12 19 B5         [24]  428 	lcall	__mulint
      000707 A8 82            [24]  429 	mov	r0,dpl
      000709 AD 83            [24]  430 	mov	r5,dph
      00070B D0 04            [24]  431 	pop	ar4
      00070D E8               [12]  432 	mov	a,r0
      00070E 24 1B            [12]  433 	add	a,#_buffers_array
      000710 F5 82            [12]  434 	mov	dpl,a
      000712 ED               [12]  435 	mov	a,r5
      000713 34 00            [12]  436 	addc	a,#(_buffers_array >> 8)
      000715 F5 83            [12]  437 	mov	dph,a
      000717 E5 10            [12]  438 	mov	a,_delete_buffer_sloc0_1_0
      000719 F0               [24]  439 	movx	@dptr,a
      00071A E5 11            [12]  440 	mov	a,(_delete_buffer_sloc0_1_0 + 1)
      00071C A3               [24]  441 	inc	dptr
      00071D F0               [24]  442 	movx	@dptr,a
                                    443 ;	buffer.c:95: buffers_array[i] = buffers_array[i + 1];
      00071E 90 15 14         [24]  444 	mov	dptr,#__mulint_PARM_2
      000721 E5 10            [12]  445 	mov	a,_delete_buffer_sloc0_1_0
      000723 F0               [24]  446 	movx	@dptr,a
      000724 E5 11            [12]  447 	mov	a,(_delete_buffer_sloc0_1_0 + 1)
      000726 A3               [24]  448 	inc	dptr
      000727 F0               [24]  449 	movx	@dptr,a
      000728 90 00 0C         [24]  450 	mov	dptr,#0x000c
      00072B C0 05            [24]  451 	push	ar5
      00072D C0 00            [24]  452 	push	ar0
      00072F 12 19 B5         [24]  453 	lcall	__mulint
      000732 AB 82            [24]  454 	mov	r3,dpl
      000734 AC 83            [24]  455 	mov	r4,dph
      000736 D0 00            [24]  456 	pop	ar0
      000738 D0 05            [24]  457 	pop	ar5
      00073A EB               [12]  458 	mov	a,r3
      00073B 24 1B            [12]  459 	add	a,#_buffers_array
      00073D FB               [12]  460 	mov	r3,a
      00073E EC               [12]  461 	mov	a,r4
      00073F 34 00            [12]  462 	addc	a,#(_buffers_array >> 8)
      000741 FC               [12]  463 	mov	r4,a
      000742 7A 00            [12]  464 	mov	r2,#0x00
      000744 E8               [12]  465 	mov	a,r0
      000745 24 1B            [12]  466 	add	a,#_buffers_array
      000747 F8               [12]  467 	mov	r0,a
      000748 ED               [12]  468 	mov	a,r5
      000749 34 00            [12]  469 	addc	a,#(_buffers_array >> 8)
      00074B FD               [12]  470 	mov	r5,a
      00074C 90 15 03         [24]  471 	mov	dptr,#___memcpy_PARM_2
      00074F E8               [12]  472 	mov	a,r0
      000750 F0               [24]  473 	movx	@dptr,a
      000751 ED               [12]  474 	mov	a,r5
      000752 A3               [24]  475 	inc	dptr
      000753 F0               [24]  476 	movx	@dptr,a
      000754 E4               [12]  477 	clr	a
      000755 A3               [24]  478 	inc	dptr
      000756 F0               [24]  479 	movx	@dptr,a
      000757 90 15 06         [24]  480 	mov	dptr,#___memcpy_PARM_3
      00075A 74 0C            [12]  481 	mov	a,#0x0c
      00075C F0               [24]  482 	movx	@dptr,a
      00075D E4               [12]  483 	clr	a
      00075E A3               [24]  484 	inc	dptr
      00075F F0               [24]  485 	movx	@dptr,a
      000760 8B 82            [24]  486 	mov	dpl,r3
      000762 8C 83            [24]  487 	mov	dph,r4
      000764 8A F0            [24]  488 	mov	b,r2
      000766 C0 05            [24]  489 	push	ar5
      000768 C0 04            [24]  490 	push	ar4
      00076A 12 17 81         [24]  491 	lcall	___memcpy
      00076D D0 04            [24]  492 	pop	ar4
      00076F D0 05            [24]  493 	pop	ar5
      000771 D0 06            [24]  494 	pop	ar6
      000773 D0 07            [24]  495 	pop	ar7
                                    496 ;	buffer.c:108: goto get_del_num;
      000775 D0 05            [24]  497 	pop	ar5
      000777 D0 04            [24]  498 	pop	ar4
                                    499 ;	buffer.c:95: buffers_array[i] = buffers_array[i + 1];
      000779                        500 00111$:
                                    501 ;	buffer.c:90: for (int i = 0; i < (program_stats.total_buffers - 1); i++)
      000779 05 10            [12]  502 	inc	_delete_buffer_sloc0_1_0
      00077B E4               [12]  503 	clr	a
      00077C B5 10 02         [24]  504 	cjne	a,_delete_buffer_sloc0_1_0,00144$
      00077F 05 11            [12]  505 	inc	(_delete_buffer_sloc0_1_0 + 1)
      000781                        506 00144$:
      000781 02 06 A6         [24]  507 	ljmp	00110$
      000784                        508 00104$:
                                    509 ;	buffer.c:99: program_stats.total_buffers -= 1;
      000784 E5 12            [12]  510 	mov	a,_delete_buffer_sloc1_1_0
      000786 24 FF            [12]  511 	add	a,#0xff
      000788 FA               [12]  512 	mov	r2,a
      000789 E5 13            [12]  513 	mov	a,(_delete_buffer_sloc1_1_0 + 1)
      00078B 34 FF            [12]  514 	addc	a,#0xff
      00078D FB               [12]  515 	mov	r3,a
      00078E 90 00 19         [24]  516 	mov	dptr,#(_program_stats + 0x0008)
      000791 EA               [12]  517 	mov	a,r2
      000792 F0               [24]  518 	movx	@dptr,a
      000793 EB               [12]  519 	mov	a,r3
      000794 A3               [24]  520 	inc	dptr
      000795 F0               [24]  521 	movx	@dptr,a
                                    522 ;	buffer.c:100: program_stats.allocated_heap -= buffer_freed_size;
      000796 90 00 13         [24]  523 	mov	dptr,#(_program_stats + 0x0002)
      000799 E0               [24]  524 	movx	a,@dptr
      00079A FA               [12]  525 	mov	r2,a
      00079B A3               [24]  526 	inc	dptr
      00079C E0               [24]  527 	movx	a,@dptr
      00079D FB               [12]  528 	mov	r3,a
      00079E EA               [12]  529 	mov	a,r2
      00079F C3               [12]  530 	clr	c
      0007A0 9C               [12]  531 	subb	a,r4
      0007A1 FC               [12]  532 	mov	r4,a
      0007A2 EB               [12]  533 	mov	a,r3
      0007A3 9D               [12]  534 	subb	a,r5
      0007A4 FD               [12]  535 	mov	r5,a
      0007A5 90 00 13         [24]  536 	mov	dptr,#(_program_stats + 0x0002)
      0007A8 EC               [12]  537 	mov	a,r4
      0007A9 F0               [24]  538 	movx	@dptr,a
      0007AA ED               [12]  539 	mov	a,r5
      0007AB A3               [24]  540 	inc	dptr
      0007AC F0               [24]  541 	movx	@dptr,a
                                    542 ;	buffer.c:102: free(buff_to_free);
      0007AD AB 14            [24]  543 	mov	r3,_delete_buffer_sloc2_1_0
      0007AF AC 15            [24]  544 	mov	r4,(_delete_buffer_sloc2_1_0 + 1)
      0007B1 AD 16            [24]  545 	mov	r5,(_delete_buffer_sloc2_1_0 + 2)
      0007B3 8B 82            [24]  546 	mov	dpl,r3
      0007B5 8C 83            [24]  547 	mov	dph,r4
      0007B7 8D F0            [24]  548 	mov	b,r5
      0007B9 C0 07            [24]  549 	push	ar7
      0007BB C0 06            [24]  550 	push	ar6
      0007BD 12 16 2A         [24]  551 	lcall	_free
      0007C0 D0 06            [24]  552 	pop	ar6
      0007C2 D0 07            [24]  553 	pop	ar7
                                    554 ;	buffer.c:103: printf("Buffer %d Successfully Deleted.. \n\r", buff_number);
      0007C4 C0 06            [24]  555 	push	ar6
      0007C6 C0 07            [24]  556 	push	ar7
      0007C8 74 0F            [12]  557 	mov	a,#___str_3
      0007CA C0 E0            [24]  558 	push	acc
      0007CC 74 26            [12]  559 	mov	a,#(___str_3 >> 8)
      0007CE C0 E0            [24]  560 	push	acc
      0007D0 74 80            [12]  561 	mov	a,#0x80
      0007D2 C0 E0            [24]  562 	push	acc
      0007D4 12 1A 23         [24]  563 	lcall	_printf
      0007D7 E5 81            [12]  564 	mov	a,sp
      0007D9 24 FB            [12]  565 	add	a,#0xfb
      0007DB F5 81            [12]  566 	mov	sp,a
                                    567 ;	buffer.c:104: return 0;
      0007DD 90 00 00         [24]  568 	mov	dptr,#0x0000
                                    569 ;	buffer.c:108: goto get_del_num;
                                    570 ;	buffer.c:110: }
      0007E0 22               [24]  571 	ret
                                    572 ;------------------------------------------------------------
                                    573 ;Allocation info for local variables in function 'print_heap_menu'
                                    574 ;------------------------------------------------------------
                                    575 ;	buffer.c:117: void print_heap_menu()
                                    576 ;	-----------------------------------------
                                    577 ;	 function print_heap_menu
                                    578 ;	-----------------------------------------
      0007E1                        579 _print_heap_menu:
                                    580 ;	buffer.c:119: printf("\n\n\r^^^^^^^^^^^^^^^^^^^-HEAP-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ \n\n\r");
      0007E1 74 33            [12]  581 	mov	a,#___str_4
      0007E3 C0 E0            [24]  582 	push	acc
      0007E5 74 26            [12]  583 	mov	a,#(___str_4 >> 8)
      0007E7 C0 E0            [24]  584 	push	acc
      0007E9 74 80            [12]  585 	mov	a,#0x80
      0007EB C0 E0            [24]  586 	push	acc
      0007ED 12 1A 23         [24]  587 	lcall	_printf
      0007F0 15 81            [12]  588 	dec	sp
      0007F2 15 81            [12]  589 	dec	sp
      0007F4 15 81            [12]  590 	dec	sp
                                    591 ;	buffer.c:120: printf("You can enter characters or use commands from below \n\r");
      0007F6 74 73            [12]  592 	mov	a,#___str_5
      0007F8 C0 E0            [24]  593 	push	acc
      0007FA 74 26            [12]  594 	mov	a,#(___str_5 >> 8)
      0007FC C0 E0            [24]  595 	push	acc
      0007FE 74 80            [12]  596 	mov	a,#0x80
      000800 C0 E0            [24]  597 	push	acc
      000802 12 1A 23         [24]  598 	lcall	_printf
      000805 15 81            [12]  599 	dec	sp
      000807 15 81            [12]  600 	dec	sp
      000809 15 81            [12]  601 	dec	sp
                                    602 ;	buffer.c:121: printf("'?' -> Show heap status, dump & clear Buffer 0 \n\r");
      00080B 74 AA            [12]  603 	mov	a,#___str_6
      00080D C0 E0            [24]  604 	push	acc
      00080F 74 26            [12]  605 	mov	a,#(___str_6 >> 8)
      000811 C0 E0            [24]  606 	push	acc
      000813 74 80            [12]  607 	mov	a,#0x80
      000815 C0 E0            [24]  608 	push	acc
      000817 12 1A 23         [24]  609 	lcall	_printf
      00081A 15 81            [12]  610 	dec	sp
      00081C 15 81            [12]  611 	dec	sp
      00081E 15 81            [12]  612 	dec	sp
                                    613 ;	buffer.c:122: printf("'+' -> Add a new Buffer\n\r");
      000820 74 DC            [12]  614 	mov	a,#___str_7
      000822 C0 E0            [24]  615 	push	acc
      000824 74 26            [12]  616 	mov	a,#(___str_7 >> 8)
      000826 C0 E0            [24]  617 	push	acc
      000828 74 80            [12]  618 	mov	a,#0x80
      00082A C0 E0            [24]  619 	push	acc
      00082C 12 1A 23         [24]  620 	lcall	_printf
      00082F 15 81            [12]  621 	dec	sp
      000831 15 81            [12]  622 	dec	sp
      000833 15 81            [12]  623 	dec	sp
                                    624 ;	buffer.c:123: printf("'-' -> Delete existing Buffer\n\r");
      000835 74 F6            [12]  625 	mov	a,#___str_8
      000837 C0 E0            [24]  626 	push	acc
      000839 74 26            [12]  627 	mov	a,#(___str_8 >> 8)
      00083B C0 E0            [24]  628 	push	acc
      00083D 74 80            [12]  629 	mov	a,#0x80
      00083F C0 E0            [24]  630 	push	acc
      000841 12 1A 23         [24]  631 	lcall	_printf
      000844 15 81            [12]  632 	dec	sp
      000846 15 81            [12]  633 	dec	sp
      000848 15 81            [12]  634 	dec	sp
                                    635 ;	buffer.c:124: printf("'=' -> Dump Buffer 0 in hex\n\r");
      00084A 74 16            [12]  636 	mov	a,#___str_9
      00084C C0 E0            [24]  637 	push	acc
      00084E 74 27            [12]  638 	mov	a,#(___str_9 >> 8)
      000850 C0 E0            [24]  639 	push	acc
      000852 74 80            [12]  640 	mov	a,#0x80
      000854 C0 E0            [24]  641 	push	acc
      000856 12 1A 23         [24]  642 	lcall	_printf
      000859 15 81            [12]  643 	dec	sp
      00085B 15 81            [12]  644 	dec	sp
      00085D 15 81            [12]  645 	dec	sp
                                    646 ;	buffer.c:125: printf("'@' -> Free all Heap & begin again\n\n\r");
      00085F 74 34            [12]  647 	mov	a,#___str_10
      000861 C0 E0            [24]  648 	push	acc
      000863 74 27            [12]  649 	mov	a,#(___str_10 >> 8)
      000865 C0 E0            [24]  650 	push	acc
      000867 74 80            [12]  651 	mov	a,#0x80
      000869 C0 E0            [24]  652 	push	acc
      00086B 12 1A 23         [24]  653 	lcall	_printf
      00086E 15 81            [12]  654 	dec	sp
      000870 15 81            [12]  655 	dec	sp
      000872 15 81            [12]  656 	dec	sp
                                    657 ;	buffer.c:126: printf("'M' -> Go to Main Menu \n\n\r");
      000874 74 5A            [12]  658 	mov	a,#___str_11
      000876 C0 E0            [24]  659 	push	acc
      000878 74 27            [12]  660 	mov	a,#(___str_11 >> 8)
      00087A C0 E0            [24]  661 	push	acc
      00087C 74 80            [12]  662 	mov	a,#0x80
      00087E C0 E0            [24]  663 	push	acc
      000880 12 1A 23         [24]  664 	lcall	_printf
      000883 15 81            [12]  665 	dec	sp
      000885 15 81            [12]  666 	dec	sp
      000887 15 81            [12]  667 	dec	sp
                                    668 ;	buffer.c:127: }
      000889 22               [24]  669 	ret
                                    670 ;------------------------------------------------------------
                                    671 ;Allocation info for local variables in function 'create_new_buffer'
                                    672 ;------------------------------------------------------------
                                    673 ;buff_size                 Allocated with name '_create_new_buffer_buff_size_65536_57'
                                    674 ;buff                      Allocated with name '_create_new_buffer_buff_65536_57'
                                    675 ;------------------------------------------------------------
                                    676 ;	buffer.c:135: int create_new_buffer()
                                    677 ;	-----------------------------------------
                                    678 ;	 function create_new_buffer
                                    679 ;	-----------------------------------------
      00088A                        680 _create_new_buffer:
                                    681 ;	buffer.c:139: if (program_stats.allocated_heap == program_stats.total_heap_size)
      00088A 90 00 13         [24]  682 	mov	dptr,#(_program_stats + 0x0002)
      00088D E0               [24]  683 	movx	a,@dptr
      00088E FE               [12]  684 	mov	r6,a
      00088F A3               [24]  685 	inc	dptr
      000890 E0               [24]  686 	movx	a,@dptr
      000891 FF               [12]  687 	mov	r7,a
      000892 90 00 11         [24]  688 	mov	dptr,#_program_stats
      000895 E0               [24]  689 	movx	a,@dptr
      000896 FC               [12]  690 	mov	r4,a
      000897 A3               [24]  691 	inc	dptr
      000898 E0               [24]  692 	movx	a,@dptr
      000899 FD               [12]  693 	mov	r5,a
      00089A EE               [12]  694 	mov	a,r6
      00089B B5 04 07         [24]  695 	cjne	a,ar4,00133$
      00089E EF               [12]  696 	mov	a,r7
      00089F B5 05 03         [24]  697 	cjne	a,ar5,00133$
      0008A2 02 09 E5         [24]  698 	ljmp	00111$
      0008A5                        699 00133$:
                                    700 ;	buffer.c:142: get_new_buff:
      0008A5                        701 00103$:
                                    702 ;	buffer.c:143: printf("\n\rGive Valid Buffer Size(030-300):");
      0008A5 74 75            [12]  703 	mov	a,#___str_12
      0008A7 C0 E0            [24]  704 	push	acc
      0008A9 74 27            [12]  705 	mov	a,#(___str_12 >> 8)
      0008AB C0 E0            [24]  706 	push	acc
      0008AD 74 80            [12]  707 	mov	a,#0x80
      0008AF C0 E0            [24]  708 	push	acc
      0008B1 12 1A 23         [24]  709 	lcall	_printf
      0008B4 15 81            [12]  710 	dec	sp
      0008B6 15 81            [12]  711 	dec	sp
      0008B8 15 81            [12]  712 	dec	sp
                                    713 ;	buffer.c:144: buff_size = get_number(3);
      0008BA 90 00 03         [24]  714 	mov	dptr,#0x0003
      0008BD 12 03 C4         [24]  715 	lcall	_get_number
      0008C0 AE 82            [24]  716 	mov	r6,dpl
      0008C2 AF 83            [24]  717 	mov	r7,dph
                                    718 ;	buffer.c:145: if (buff_size >= 30 && buff_size <= 300)
      0008C4 C3               [12]  719 	clr	c
      0008C5 EE               [12]  720 	mov	a,r6
      0008C6 94 1E            [12]  721 	subb	a,#0x1e
      0008C8 EF               [12]  722 	mov	a,r7
      0008C9 64 80            [12]  723 	xrl	a,#0x80
      0008CB 94 80            [12]  724 	subb	a,#0x80
      0008CD 40 D6            [24]  725 	jc	00103$
      0008CF 74 2C            [12]  726 	mov	a,#0x2c
      0008D1 9E               [12]  727 	subb	a,r6
      0008D2 74 81            [12]  728 	mov	a,#(0x01 ^ 0x80)
      0008D4 8F F0            [24]  729 	mov	b,r7
      0008D6 63 F0 80         [24]  730 	xrl	b,#0x80
      0008D9 95 F0            [12]  731 	subb	a,b
      0008DB 40 C8            [24]  732 	jc	00103$
                                    733 ;	buffer.c:147: buff.buffer_start = malloc(buff_size);
      0008DD 8E 82            [24]  734 	mov	dpl,r6
      0008DF 8F 83            [24]  735 	mov	dph,r7
      0008E1 C0 07            [24]  736 	push	ar7
      0008E3 C0 06            [24]  737 	push	ar6
      0008E5 12 18 4C         [24]  738 	lcall	_malloc
      0008E8 AC 82            [24]  739 	mov	r4,dpl
      0008EA AD 83            [24]  740 	mov	r5,dph
      0008EC D0 06            [24]  741 	pop	ar6
      0008EE D0 07            [24]  742 	pop	ar7
      0008F0 7B 00            [12]  743 	mov	r3,#0x00
      0008F2 90 01 49         [24]  744 	mov	dptr,#(_create_new_buffer_buff_65536_57 + 0x0002)
      0008F5 EC               [12]  745 	mov	a,r4
      0008F6 F0               [24]  746 	movx	@dptr,a
      0008F7 ED               [12]  747 	mov	a,r5
      0008F8 A3               [24]  748 	inc	dptr
      0008F9 F0               [24]  749 	movx	@dptr,a
      0008FA EB               [12]  750 	mov	a,r3
      0008FB A3               [24]  751 	inc	dptr
      0008FC F0               [24]  752 	movx	@dptr,a
                                    753 ;	buffer.c:148: if (buff.buffer_start == NULL)
      0008FD EC               [12]  754 	mov	a,r4
      0008FE 4D               [12]  755 	orl	a,r5
      0008FF 70 18            [24]  756 	jnz	00105$
                                    757 ;	buffer.c:150: printf("Failed, give smaller buffer\n\r");
      000901 74 98            [12]  758 	mov	a,#___str_13
      000903 C0 E0            [24]  759 	push	acc
      000905 74 27            [12]  760 	mov	a,#(___str_13 >> 8)
      000907 C0 E0            [24]  761 	push	acc
      000909 74 80            [12]  762 	mov	a,#0x80
      00090B C0 E0            [24]  763 	push	acc
      00090D 12 1A 23         [24]  764 	lcall	_printf
      000910 15 81            [12]  765 	dec	sp
      000912 15 81            [12]  766 	dec	sp
      000914 15 81            [12]  767 	dec	sp
      000916 02 09 E1         [24]  768 	ljmp	00106$
      000919                        769 00105$:
                                    770 ;	buffer.c:154: printf("\n\n\r####SUCCESS, BUFFER Created####\n\n\r");
      000919 C0 07            [24]  771 	push	ar7
      00091B C0 06            [24]  772 	push	ar6
      00091D 74 B6            [12]  773 	mov	a,#___str_14
      00091F C0 E0            [24]  774 	push	acc
      000921 74 27            [12]  775 	mov	a,#(___str_14 >> 8)
      000923 C0 E0            [24]  776 	push	acc
      000925 74 80            [12]  777 	mov	a,#0x80
      000927 C0 E0            [24]  778 	push	acc
      000929 12 1A 23         [24]  779 	lcall	_printf
      00092C 15 81            [12]  780 	dec	sp
      00092E 15 81            [12]  781 	dec	sp
      000930 15 81            [12]  782 	dec	sp
      000932 D0 06            [24]  783 	pop	ar6
      000934 D0 07            [24]  784 	pop	ar7
                                    785 ;	buffer.c:156: program_stats.allocated_heap += buff_size;
      000936 90 00 13         [24]  786 	mov	dptr,#(_program_stats + 0x0002)
      000939 E0               [24]  787 	movx	a,@dptr
      00093A FC               [12]  788 	mov	r4,a
      00093B A3               [24]  789 	inc	dptr
      00093C E0               [24]  790 	movx	a,@dptr
      00093D FD               [12]  791 	mov	r5,a
      00093E EE               [12]  792 	mov	a,r6
      00093F 2C               [12]  793 	add	a,r4
      000940 FC               [12]  794 	mov	r4,a
      000941 EF               [12]  795 	mov	a,r7
      000942 3D               [12]  796 	addc	a,r5
      000943 FD               [12]  797 	mov	r5,a
      000944 90 00 13         [24]  798 	mov	dptr,#(_program_stats + 0x0002)
      000947 EC               [12]  799 	mov	a,r4
      000948 F0               [24]  800 	movx	@dptr,a
      000949 ED               [12]  801 	mov	a,r5
      00094A A3               [24]  802 	inc	dptr
      00094B F0               [24]  803 	movx	@dptr,a
                                    804 ;	buffer.c:157: buff.buff_size = buff_size;
      00094C 90 01 4F         [24]  805 	mov	dptr,#(_create_new_buffer_buff_65536_57 + 0x0008)
      00094F EE               [12]  806 	mov	a,r6
      000950 F0               [24]  807 	movx	@dptr,a
      000951 EF               [12]  808 	mov	a,r7
      000952 A3               [24]  809 	inc	dptr
      000953 F0               [24]  810 	movx	@dptr,a
                                    811 ;	buffer.c:158: buff.buffer_num = program_stats.total_buffers;
      000954 90 00 19         [24]  812 	mov	dptr,#(_program_stats + 0x0008)
      000957 E0               [24]  813 	movx	a,@dptr
      000958 FC               [12]  814 	mov	r4,a
      000959 A3               [24]  815 	inc	dptr
      00095A E0               [24]  816 	movx	a,@dptr
      00095B FD               [12]  817 	mov	r5,a
      00095C 90 01 47         [24]  818 	mov	dptr,#_create_new_buffer_buff_65536_57
      00095F EC               [12]  819 	mov	a,r4
      000960 F0               [24]  820 	movx	@dptr,a
      000961 ED               [12]  821 	mov	a,r5
      000962 A3               [24]  822 	inc	dptr
      000963 F0               [24]  823 	movx	@dptr,a
                                    824 ;	buffer.c:159: buff.buffer_end = buff.buffer_start + buff_size;
      000964 90 01 49         [24]  825 	mov	dptr,#(_create_new_buffer_buff_65536_57 + 0x0002)
      000967 E0               [24]  826 	movx	a,@dptr
      000968 FB               [12]  827 	mov	r3,a
      000969 A3               [24]  828 	inc	dptr
      00096A E0               [24]  829 	movx	a,@dptr
      00096B FC               [12]  830 	mov	r4,a
      00096C A3               [24]  831 	inc	dptr
      00096D E0               [24]  832 	movx	a,@dptr
      00096E FD               [12]  833 	mov	r5,a
      00096F EE               [12]  834 	mov	a,r6
      000970 2B               [12]  835 	add	a,r3
      000971 FE               [12]  836 	mov	r6,a
      000972 EF               [12]  837 	mov	a,r7
      000973 3C               [12]  838 	addc	a,r4
      000974 FF               [12]  839 	mov	r7,a
      000975 8D 02            [24]  840 	mov	ar2,r5
      000977 90 01 4C         [24]  841 	mov	dptr,#(_create_new_buffer_buff_65536_57 + 0x0005)
      00097A EE               [12]  842 	mov	a,r6
      00097B F0               [24]  843 	movx	@dptr,a
      00097C EF               [12]  844 	mov	a,r7
      00097D A3               [24]  845 	inc	dptr
      00097E F0               [24]  846 	movx	@dptr,a
      00097F EA               [12]  847 	mov	a,r2
      000980 A3               [24]  848 	inc	dptr
      000981 F0               [24]  849 	movx	@dptr,a
                                    850 ;	buffer.c:160: buff.num_char = 0;
      000982 90 01 51         [24]  851 	mov	dptr,#(_create_new_buffer_buff_65536_57 + 0x000a)
      000985 E4               [12]  852 	clr	a
      000986 F0               [24]  853 	movx	@dptr,a
      000987 A3               [24]  854 	inc	dptr
      000988 F0               [24]  855 	movx	@dptr,a
                                    856 ;	buffer.c:162: buffers_array[program_stats.total_buffers] = buff;
      000989 90 00 19         [24]  857 	mov	dptr,#(_program_stats + 0x0008)
      00098C E0               [24]  858 	movx	a,@dptr
      00098D FE               [12]  859 	mov	r6,a
      00098E A3               [24]  860 	inc	dptr
      00098F E0               [24]  861 	movx	a,@dptr
      000990 FF               [12]  862 	mov	r7,a
      000991 90 15 14         [24]  863 	mov	dptr,#__mulint_PARM_2
      000994 EE               [12]  864 	mov	a,r6
      000995 F0               [24]  865 	movx	@dptr,a
      000996 EF               [12]  866 	mov	a,r7
      000997 A3               [24]  867 	inc	dptr
      000998 F0               [24]  868 	movx	@dptr,a
      000999 90 00 0C         [24]  869 	mov	dptr,#0x000c
      00099C 12 19 B5         [24]  870 	lcall	__mulint
      00099F AE 82            [24]  871 	mov	r6,dpl
      0009A1 AF 83            [24]  872 	mov	r7,dph
      0009A3 EE               [12]  873 	mov	a,r6
      0009A4 24 1B            [12]  874 	add	a,#_buffers_array
      0009A6 FE               [12]  875 	mov	r6,a
      0009A7 EF               [12]  876 	mov	a,r7
      0009A8 34 00            [12]  877 	addc	a,#(_buffers_array >> 8)
      0009AA FF               [12]  878 	mov	r7,a
      0009AB 7D 00            [12]  879 	mov	r5,#0x00
      0009AD 90 15 03         [24]  880 	mov	dptr,#___memcpy_PARM_2
      0009B0 74 47            [12]  881 	mov	a,#_create_new_buffer_buff_65536_57
      0009B2 F0               [24]  882 	movx	@dptr,a
      0009B3 74 01            [12]  883 	mov	a,#(_create_new_buffer_buff_65536_57 >> 8)
      0009B5 A3               [24]  884 	inc	dptr
      0009B6 F0               [24]  885 	movx	@dptr,a
      0009B7 E4               [12]  886 	clr	a
      0009B8 A3               [24]  887 	inc	dptr
      0009B9 F0               [24]  888 	movx	@dptr,a
      0009BA 90 15 06         [24]  889 	mov	dptr,#___memcpy_PARM_3
      0009BD 74 0C            [12]  890 	mov	a,#0x0c
      0009BF F0               [24]  891 	movx	@dptr,a
      0009C0 E4               [12]  892 	clr	a
      0009C1 A3               [24]  893 	inc	dptr
      0009C2 F0               [24]  894 	movx	@dptr,a
      0009C3 8E 82            [24]  895 	mov	dpl,r6
      0009C5 8F 83            [24]  896 	mov	dph,r7
      0009C7 8D F0            [24]  897 	mov	b,r5
      0009C9 12 17 81         [24]  898 	lcall	___memcpy
                                    899 ;	buffer.c:163: program_stats.total_buffers += 1;
      0009CC 90 00 19         [24]  900 	mov	dptr,#(_program_stats + 0x0008)
      0009CF E0               [24]  901 	movx	a,@dptr
      0009D0 FE               [12]  902 	mov	r6,a
      0009D1 A3               [24]  903 	inc	dptr
      0009D2 E0               [24]  904 	movx	a,@dptr
      0009D3 FF               [12]  905 	mov	r7,a
      0009D4 0E               [12]  906 	inc	r6
      0009D5 BE 00 01         [24]  907 	cjne	r6,#0x00,00137$
      0009D8 0F               [12]  908 	inc	r7
      0009D9                        909 00137$:
      0009D9 90 00 19         [24]  910 	mov	dptr,#(_program_stats + 0x0008)
      0009DC EE               [12]  911 	mov	a,r6
      0009DD F0               [24]  912 	movx	@dptr,a
      0009DE EF               [12]  913 	mov	a,r7
      0009DF A3               [24]  914 	inc	dptr
      0009E0 F0               [24]  915 	movx	@dptr,a
      0009E1                        916 00106$:
                                    917 ;	buffer.c:165: return 0;
      0009E1 90 00 00         [24]  918 	mov	dptr,#0x0000
                                    919 ;	buffer.c:171: no_heap_left:
      0009E4 22               [24]  920 	ret
      0009E5                        921 00111$:
                                    922 ;	buffer.c:172: printf("No Heap Memory Left, Delete some buffers...\n\r");
      0009E5 74 DC            [12]  923 	mov	a,#___str_15
      0009E7 C0 E0            [24]  924 	push	acc
      0009E9 74 27            [12]  925 	mov	a,#(___str_15 >> 8)
      0009EB C0 E0            [24]  926 	push	acc
      0009ED 74 80            [12]  927 	mov	a,#0x80
      0009EF C0 E0            [24]  928 	push	acc
      0009F1 12 1A 23         [24]  929 	lcall	_printf
      0009F4 15 81            [12]  930 	dec	sp
      0009F6 15 81            [12]  931 	dec	sp
      0009F8 15 81            [12]  932 	dec	sp
                                    933 ;	buffer.c:173: return 0;
      0009FA 90 00 00         [24]  934 	mov	dptr,#0x0000
                                    935 ;	buffer.c:174: }
      0009FD 22               [24]  936 	ret
                                    937 ;------------------------------------------------------------
                                    938 ;Allocation info for local variables in function 'create_initial_buffers'
                                    939 ;------------------------------------------------------------
                                    940 ;buff_size                 Allocated with name '_create_initial_buffers_buff_size_65536_62'
                                    941 ;buff                      Allocated with name '_create_initial_buffers_buff_65537_63'
                                    942 ;buff1                     Allocated with name '_create_initial_buffers_buff1_65537_63'
                                    943 ;------------------------------------------------------------
                                    944 ;	buffer.c:182: void create_initial_buffers()
                                    945 ;	-----------------------------------------
                                    946 ;	 function create_initial_buffers
                                    947 ;	-----------------------------------------
      0009FE                        948 _create_initial_buffers:
                                    949 ;	buffer.c:186: get_buff:
      0009FE                        950 00101$:
                                    951 ;	buffer.c:187: printf("\n\rGive Valid Initial Buffer Size(0048-4800):");
      0009FE 74 0A            [12]  952 	mov	a,#___str_16
      000A00 C0 E0            [24]  953 	push	acc
      000A02 74 28            [12]  954 	mov	a,#(___str_16 >> 8)
      000A04 C0 E0            [24]  955 	push	acc
      000A06 74 80            [12]  956 	mov	a,#0x80
      000A08 C0 E0            [24]  957 	push	acc
      000A0A 12 1A 23         [24]  958 	lcall	_printf
      000A0D 15 81            [12]  959 	dec	sp
      000A0F 15 81            [12]  960 	dec	sp
      000A11 15 81            [12]  961 	dec	sp
                                    962 ;	buffer.c:188: buff_size = get_number(4);
      000A13 90 00 04         [24]  963 	mov	dptr,#0x0004
      000A16 12 03 C4         [24]  964 	lcall	_get_number
      000A19 AE 82            [24]  965 	mov	r6,dpl
      000A1B AF 83            [24]  966 	mov	r7,dph
                                    967 ;	buffer.c:192: if (buff_size >= 48 && buff_size <= 4800)
      000A1D C3               [12]  968 	clr	c
      000A1E EE               [12]  969 	mov	a,r6
      000A1F 94 30            [12]  970 	subb	a,#0x30
      000A21 EF               [12]  971 	mov	a,r7
      000A22 64 80            [12]  972 	xrl	a,#0x80
      000A24 94 80            [12]  973 	subb	a,#0x80
      000A26 40 D6            [24]  974 	jc	00101$
      000A28 74 C0            [12]  975 	mov	a,#0xc0
      000A2A 9E               [12]  976 	subb	a,r6
      000A2B 74 92            [12]  977 	mov	a,#(0x12 ^ 0x80)
      000A2D 8F F0            [24]  978 	mov	b,r7
      000A2F 63 F0 80         [24]  979 	xrl	b,#0x80
      000A32 95 F0            [12]  980 	subb	a,b
      000A34 40 C8            [24]  981 	jc	00101$
                                    982 ;	buffer.c:194: buff.buffer_start = malloc(buff_size);
      000A36 8E 82            [24]  983 	mov	dpl,r6
      000A38 8F 83            [24]  984 	mov	dph,r7
      000A3A C0 07            [24]  985 	push	ar7
      000A3C C0 06            [24]  986 	push	ar6
      000A3E 12 18 4C         [24]  987 	lcall	_malloc
      000A41 AC 82            [24]  988 	mov	r4,dpl
      000A43 AD 83            [24]  989 	mov	r5,dph
      000A45 D0 06            [24]  990 	pop	ar6
      000A47 D0 07            [24]  991 	pop	ar7
      000A49 7B 00            [12]  992 	mov	r3,#0x00
      000A4B 90 01 55         [24]  993 	mov	dptr,#(_create_initial_buffers_buff_65537_63 + 0x0002)
      000A4E EC               [12]  994 	mov	a,r4
      000A4F F0               [24]  995 	movx	@dptr,a
      000A50 ED               [12]  996 	mov	a,r5
      000A51 A3               [24]  997 	inc	dptr
      000A52 F0               [24]  998 	movx	@dptr,a
      000A53 EB               [12]  999 	mov	a,r3
      000A54 A3               [24] 1000 	inc	dptr
      000A55 F0               [24] 1001 	movx	@dptr,a
                                   1002 ;	buffer.c:195: buff1.buffer_start = malloc(buff_size);
      000A56 8E 82            [24] 1003 	mov	dpl,r6
      000A58 8F 83            [24] 1004 	mov	dph,r7
      000A5A C0 07            [24] 1005 	push	ar7
      000A5C C0 06            [24] 1006 	push	ar6
      000A5E 12 18 4C         [24] 1007 	lcall	_malloc
      000A61 AC 82            [24] 1008 	mov	r4,dpl
      000A63 AD 83            [24] 1009 	mov	r5,dph
      000A65 D0 06            [24] 1010 	pop	ar6
      000A67 D0 07            [24] 1011 	pop	ar7
      000A69 7B 00            [12] 1012 	mov	r3,#0x00
      000A6B 90 01 61         [24] 1013 	mov	dptr,#(_create_initial_buffers_buff1_65537_63 + 0x0002)
      000A6E EC               [12] 1014 	mov	a,r4
      000A6F F0               [24] 1015 	movx	@dptr,a
      000A70 ED               [12] 1016 	mov	a,r5
      000A71 A3               [24] 1017 	inc	dptr
      000A72 F0               [24] 1018 	movx	@dptr,a
      000A73 EB               [12] 1019 	mov	a,r3
      000A74 A3               [24] 1020 	inc	dptr
      000A75 F0               [24] 1021 	movx	@dptr,a
                                   1022 ;	buffer.c:197: if (buff.buffer_start == NULL || buff1.buffer_start == NULL)
      000A76 90 01 55         [24] 1023 	mov	dptr,#(_create_initial_buffers_buff_65537_63 + 0x0002)
      000A79 E0               [24] 1024 	movx	a,@dptr
      000A7A FB               [12] 1025 	mov	r3,a
      000A7B A3               [24] 1026 	inc	dptr
      000A7C E0               [24] 1027 	movx	a,@dptr
      000A7D FC               [12] 1028 	mov	r4,a
      000A7E A3               [24] 1029 	inc	dptr
      000A7F E0               [24] 1030 	movx	a,@dptr
      000A80 EB               [12] 1031 	mov	a,r3
      000A81 4C               [12] 1032 	orl	a,r4
      000A82 60 0F            [24] 1033 	jz	00106$
      000A84 90 01 61         [24] 1034 	mov	dptr,#(_create_initial_buffers_buff1_65537_63 + 0x0002)
      000A87 E0               [24] 1035 	movx	a,@dptr
      000A88 FB               [12] 1036 	mov	r3,a
      000A89 A3               [24] 1037 	inc	dptr
      000A8A E0               [24] 1038 	movx	a,@dptr
      000A8B FC               [12] 1039 	mov	r4,a
      000A8C A3               [24] 1040 	inc	dptr
      000A8D E0               [24] 1041 	movx	a,@dptr
      000A8E FD               [12] 1042 	mov	r5,a
      000A8F EB               [12] 1043 	mov	a,r3
      000A90 4C               [12] 1044 	orl	a,r4
      000A91 70 60            [24] 1045 	jnz	00107$
      000A93                       1046 00106$:
                                   1047 ;	buffer.c:199: printf("\n\r####FAIL, Please give a smaller buffer size####\n\n\r");
      000A93 74 37            [12] 1048 	mov	a,#___str_17
      000A95 C0 E0            [24] 1049 	push	acc
      000A97 74 28            [12] 1050 	mov	a,#(___str_17 >> 8)
      000A99 C0 E0            [24] 1051 	push	acc
      000A9B 74 80            [12] 1052 	mov	a,#0x80
      000A9D C0 E0            [24] 1053 	push	acc
      000A9F 12 1A 23         [24] 1054 	lcall	_printf
      000AA2 15 81            [12] 1055 	dec	sp
      000AA4 15 81            [12] 1056 	dec	sp
      000AA6 15 81            [12] 1057 	dec	sp
                                   1058 ;	buffer.c:201: if (buff.buffer_start != NULL)
      000AA8 90 01 55         [24] 1059 	mov	dptr,#(_create_initial_buffers_buff_65537_63 + 0x0002)
      000AAB E0               [24] 1060 	movx	a,@dptr
      000AAC FB               [12] 1061 	mov	r3,a
      000AAD A3               [24] 1062 	inc	dptr
      000AAE E0               [24] 1063 	movx	a,@dptr
      000AAF FC               [12] 1064 	mov	r4,a
      000AB0 A3               [24] 1065 	inc	dptr
      000AB1 E0               [24] 1066 	movx	a,@dptr
      000AB2 EB               [12] 1067 	mov	a,r3
      000AB3 4C               [12] 1068 	orl	a,r4
      000AB4 60 14            [24] 1069 	jz	00103$
                                   1070 ;	buffer.c:202: free(buff.buffer_start);
      000AB6 90 01 55         [24] 1071 	mov	dptr,#(_create_initial_buffers_buff_65537_63 + 0x0002)
      000AB9 E0               [24] 1072 	movx	a,@dptr
      000ABA FB               [12] 1073 	mov	r3,a
      000ABB A3               [24] 1074 	inc	dptr
      000ABC E0               [24] 1075 	movx	a,@dptr
      000ABD FC               [12] 1076 	mov	r4,a
      000ABE A3               [24] 1077 	inc	dptr
      000ABF E0               [24] 1078 	movx	a,@dptr
      000AC0 FD               [12] 1079 	mov	r5,a
      000AC1 8B 82            [24] 1080 	mov	dpl,r3
      000AC3 8C 83            [24] 1081 	mov	dph,r4
      000AC5 8D F0            [24] 1082 	mov	b,r5
      000AC7 12 16 2A         [24] 1083 	lcall	_free
      000ACA                       1084 00103$:
                                   1085 ;	buffer.c:203: if (buff1.buffer_start != NULL)
      000ACA 90 01 61         [24] 1086 	mov	dptr,#(_create_initial_buffers_buff1_65537_63 + 0x0002)
      000ACD E0               [24] 1087 	movx	a,@dptr
      000ACE FB               [12] 1088 	mov	r3,a
      000ACF A3               [24] 1089 	inc	dptr
      000AD0 E0               [24] 1090 	movx	a,@dptr
      000AD1 FC               [12] 1091 	mov	r4,a
      000AD2 A3               [24] 1092 	inc	dptr
      000AD3 E0               [24] 1093 	movx	a,@dptr
      000AD4 FD               [12] 1094 	mov	r5,a
      000AD5 EB               [12] 1095 	mov	a,r3
      000AD6 4C               [12] 1096 	orl	a,r4
      000AD7 70 03            [24] 1097 	jnz	00145$
      000AD9 02 09 FE         [24] 1098 	ljmp	00101$
      000ADC                       1099 00145$:
                                   1100 ;	buffer.c:204: free(buff1.buffer_start);
      000ADC 90 01 61         [24] 1101 	mov	dptr,#(_create_initial_buffers_buff1_65537_63 + 0x0002)
      000ADF E0               [24] 1102 	movx	a,@dptr
      000AE0 FB               [12] 1103 	mov	r3,a
      000AE1 A3               [24] 1104 	inc	dptr
      000AE2 E0               [24] 1105 	movx	a,@dptr
      000AE3 FC               [12] 1106 	mov	r4,a
      000AE4 A3               [24] 1107 	inc	dptr
      000AE5 E0               [24] 1108 	movx	a,@dptr
      000AE6 FD               [12] 1109 	mov	r5,a
      000AE7 8B 82            [24] 1110 	mov	dpl,r3
      000AE9 8C 83            [24] 1111 	mov	dph,r4
      000AEB 8D F0            [24] 1112 	mov	b,r5
      000AED 12 16 2A         [24] 1113 	lcall	_free
                                   1114 ;	buffer.c:206: goto get_buff;
      000AF0 02 09 FE         [24] 1115 	ljmp	00101$
      000AF3                       1116 00107$:
                                   1117 ;	buffer.c:211: printf("\n\n\r####SUCCESS, INITIAL BUFFERS Created####\n\n\r");
      000AF3 C0 07            [24] 1118 	push	ar7
      000AF5 C0 06            [24] 1119 	push	ar6
      000AF7 74 6C            [12] 1120 	mov	a,#___str_18
      000AF9 C0 E0            [24] 1121 	push	acc
      000AFB 74 28            [12] 1122 	mov	a,#(___str_18 >> 8)
      000AFD C0 E0            [24] 1123 	push	acc
      000AFF 74 80            [12] 1124 	mov	a,#0x80
      000B01 C0 E0            [24] 1125 	push	acc
      000B03 12 1A 23         [24] 1126 	lcall	_printf
      000B06 15 81            [12] 1127 	dec	sp
      000B08 15 81            [12] 1128 	dec	sp
      000B0A 15 81            [12] 1129 	dec	sp
      000B0C D0 06            [24] 1130 	pop	ar6
      000B0E D0 07            [24] 1131 	pop	ar7
                                   1132 ;	buffer.c:212: program_stats.allocated_heap = 2 * buff_size;
      000B10 EE               [12] 1133 	mov	a,r6
      000B11 2E               [12] 1134 	add	a,r6
      000B12 FC               [12] 1135 	mov	r4,a
      000B13 EF               [12] 1136 	mov	a,r7
      000B14 33               [12] 1137 	rlc	a
      000B15 FD               [12] 1138 	mov	r5,a
      000B16 90 00 13         [24] 1139 	mov	dptr,#(_program_stats + 0x0002)
      000B19 EC               [12] 1140 	mov	a,r4
      000B1A F0               [24] 1141 	movx	@dptr,a
      000B1B ED               [12] 1142 	mov	a,r5
      000B1C A3               [24] 1143 	inc	dptr
      000B1D F0               [24] 1144 	movx	@dptr,a
                                   1145 ;	buffer.c:213: program_stats.total_heap_size = 4996;
      000B1E 90 00 11         [24] 1146 	mov	dptr,#_program_stats
      000B21 74 84            [12] 1147 	mov	a,#0x84
      000B23 F0               [24] 1148 	movx	@dptr,a
      000B24 74 13            [12] 1149 	mov	a,#0x13
      000B26 A3               [24] 1150 	inc	dptr
      000B27 F0               [24] 1151 	movx	@dptr,a
                                   1152 ;	buffer.c:214: program_stats.total_buffers = 2;
      000B28 90 00 19         [24] 1153 	mov	dptr,#(_program_stats + 0x0008)
      000B2B 74 02            [12] 1154 	mov	a,#0x02
      000B2D F0               [24] 1155 	movx	@dptr,a
      000B2E E4               [12] 1156 	clr	a
      000B2F A3               [24] 1157 	inc	dptr
      000B30 F0               [24] 1158 	movx	@dptr,a
                                   1159 ;	buffer.c:216: buff.buff_size = buff_size;
      000B31 90 01 5B         [24] 1160 	mov	dptr,#(_create_initial_buffers_buff_65537_63 + 0x0008)
      000B34 EE               [12] 1161 	mov	a,r6
      000B35 F0               [24] 1162 	movx	@dptr,a
      000B36 EF               [12] 1163 	mov	a,r7
      000B37 A3               [24] 1164 	inc	dptr
      000B38 F0               [24] 1165 	movx	@dptr,a
                                   1166 ;	buffer.c:217: buff1.buff_size = buff_size;
      000B39 90 01 67         [24] 1167 	mov	dptr,#(_create_initial_buffers_buff1_65537_63 + 0x0008)
      000B3C EE               [12] 1168 	mov	a,r6
      000B3D F0               [24] 1169 	movx	@dptr,a
      000B3E EF               [12] 1170 	mov	a,r7
      000B3F A3               [24] 1171 	inc	dptr
      000B40 F0               [24] 1172 	movx	@dptr,a
                                   1173 ;	buffer.c:218: buff.buffer_num = 0;
      000B41 90 01 53         [24] 1174 	mov	dptr,#_create_initial_buffers_buff_65537_63
      000B44 E4               [12] 1175 	clr	a
      000B45 F0               [24] 1176 	movx	@dptr,a
      000B46 A3               [24] 1177 	inc	dptr
      000B47 F0               [24] 1178 	movx	@dptr,a
                                   1179 ;	buffer.c:219: buff1.buffer_num = 1;
      000B48 90 01 5F         [24] 1180 	mov	dptr,#_create_initial_buffers_buff1_65537_63
      000B4B 04               [12] 1181 	inc	a
      000B4C F0               [24] 1182 	movx	@dptr,a
      000B4D E4               [12] 1183 	clr	a
      000B4E A3               [24] 1184 	inc	dptr
      000B4F F0               [24] 1185 	movx	@dptr,a
                                   1186 ;	buffer.c:220: buff1.buffer_end = buff1.buffer_start + buff_size;
      000B50 90 01 61         [24] 1187 	mov	dptr,#(_create_initial_buffers_buff1_65537_63 + 0x0002)
      000B53 E0               [24] 1188 	movx	a,@dptr
      000B54 FB               [12] 1189 	mov	r3,a
      000B55 A3               [24] 1190 	inc	dptr
      000B56 E0               [24] 1191 	movx	a,@dptr
      000B57 FC               [12] 1192 	mov	r4,a
      000B58 A3               [24] 1193 	inc	dptr
      000B59 E0               [24] 1194 	movx	a,@dptr
      000B5A FD               [12] 1195 	mov	r5,a
      000B5B EE               [12] 1196 	mov	a,r6
      000B5C 2B               [12] 1197 	add	a,r3
      000B5D FB               [12] 1198 	mov	r3,a
      000B5E EF               [12] 1199 	mov	a,r7
      000B5F 3C               [12] 1200 	addc	a,r4
      000B60 FC               [12] 1201 	mov	r4,a
      000B61 90 01 64         [24] 1202 	mov	dptr,#(_create_initial_buffers_buff1_65537_63 + 0x0005)
      000B64 EB               [12] 1203 	mov	a,r3
      000B65 F0               [24] 1204 	movx	@dptr,a
      000B66 EC               [12] 1205 	mov	a,r4
      000B67 A3               [24] 1206 	inc	dptr
      000B68 F0               [24] 1207 	movx	@dptr,a
      000B69 ED               [12] 1208 	mov	a,r5
      000B6A A3               [24] 1209 	inc	dptr
      000B6B F0               [24] 1210 	movx	@dptr,a
                                   1211 ;	buffer.c:221: buff.buffer_end = buff.buffer_start + buff_size;
      000B6C 90 01 55         [24] 1212 	mov	dptr,#(_create_initial_buffers_buff_65537_63 + 0x0002)
      000B6F E0               [24] 1213 	movx	a,@dptr
      000B70 FB               [12] 1214 	mov	r3,a
      000B71 A3               [24] 1215 	inc	dptr
      000B72 E0               [24] 1216 	movx	a,@dptr
      000B73 FC               [12] 1217 	mov	r4,a
      000B74 A3               [24] 1218 	inc	dptr
      000B75 E0               [24] 1219 	movx	a,@dptr
      000B76 FD               [12] 1220 	mov	r5,a
      000B77 EE               [12] 1221 	mov	a,r6
      000B78 2B               [12] 1222 	add	a,r3
      000B79 FE               [12] 1223 	mov	r6,a
      000B7A EF               [12] 1224 	mov	a,r7
      000B7B 3C               [12] 1225 	addc	a,r4
      000B7C FF               [12] 1226 	mov	r7,a
      000B7D 8D 02            [24] 1227 	mov	ar2,r5
      000B7F 90 01 58         [24] 1228 	mov	dptr,#(_create_initial_buffers_buff_65537_63 + 0x0005)
      000B82 EE               [12] 1229 	mov	a,r6
      000B83 F0               [24] 1230 	movx	@dptr,a
      000B84 EF               [12] 1231 	mov	a,r7
      000B85 A3               [24] 1232 	inc	dptr
      000B86 F0               [24] 1233 	movx	@dptr,a
      000B87 EA               [12] 1234 	mov	a,r2
      000B88 A3               [24] 1235 	inc	dptr
      000B89 F0               [24] 1236 	movx	@dptr,a
                                   1237 ;	buffer.c:222: buff.num_char = 0;
      000B8A 90 01 5D         [24] 1238 	mov	dptr,#(_create_initial_buffers_buff_65537_63 + 0x000a)
      000B8D E4               [12] 1239 	clr	a
      000B8E F0               [24] 1240 	movx	@dptr,a
      000B8F A3               [24] 1241 	inc	dptr
      000B90 F0               [24] 1242 	movx	@dptr,a
                                   1243 ;	buffer.c:223: buff1.num_char = 0;
      000B91 90 01 69         [24] 1244 	mov	dptr,#(_create_initial_buffers_buff1_65537_63 + 0x000a)
      000B94 F0               [24] 1245 	movx	@dptr,a
      000B95 A3               [24] 1246 	inc	dptr
      000B96 F0               [24] 1247 	movx	@dptr,a
                                   1248 ;	buffer.c:225: buffers_array[0] = buff;
      000B97 90 15 03         [24] 1249 	mov	dptr,#___memcpy_PARM_2
      000B9A 74 53            [12] 1250 	mov	a,#_create_initial_buffers_buff_65537_63
      000B9C F0               [24] 1251 	movx	@dptr,a
      000B9D 74 01            [12] 1252 	mov	a,#(_create_initial_buffers_buff_65537_63 >> 8)
      000B9F A3               [24] 1253 	inc	dptr
      000BA0 F0               [24] 1254 	movx	@dptr,a
      000BA1 E4               [12] 1255 	clr	a
      000BA2 A3               [24] 1256 	inc	dptr
      000BA3 F0               [24] 1257 	movx	@dptr,a
      000BA4 90 15 06         [24] 1258 	mov	dptr,#___memcpy_PARM_3
      000BA7 74 0C            [12] 1259 	mov	a,#0x0c
      000BA9 F0               [24] 1260 	movx	@dptr,a
      000BAA E4               [12] 1261 	clr	a
      000BAB A3               [24] 1262 	inc	dptr
      000BAC F0               [24] 1263 	movx	@dptr,a
      000BAD 90 00 1B         [24] 1264 	mov	dptr,#_buffers_array
      000BB0 75 F0 00         [24] 1265 	mov	b,#0x00
      000BB3 12 17 81         [24] 1266 	lcall	___memcpy
                                   1267 ;	buffer.c:226: buffers_array[1] = buff1;
      000BB6 90 15 03         [24] 1268 	mov	dptr,#___memcpy_PARM_2
      000BB9 74 5F            [12] 1269 	mov	a,#_create_initial_buffers_buff1_65537_63
      000BBB F0               [24] 1270 	movx	@dptr,a
      000BBC 74 01            [12] 1271 	mov	a,#(_create_initial_buffers_buff1_65537_63 >> 8)
      000BBE A3               [24] 1272 	inc	dptr
      000BBF F0               [24] 1273 	movx	@dptr,a
      000BC0 E4               [12] 1274 	clr	a
      000BC1 A3               [24] 1275 	inc	dptr
      000BC2 F0               [24] 1276 	movx	@dptr,a
      000BC3 90 15 06         [24] 1277 	mov	dptr,#___memcpy_PARM_3
      000BC6 74 0C            [12] 1278 	mov	a,#0x0c
      000BC8 F0               [24] 1279 	movx	@dptr,a
      000BC9 E4               [12] 1280 	clr	a
      000BCA A3               [24] 1281 	inc	dptr
      000BCB F0               [24] 1282 	movx	@dptr,a
      000BCC 90 00 27         [24] 1283 	mov	dptr,#(_buffers_array + 0x000c)
      000BCF 75 F0 00         [24] 1284 	mov	b,#0x00
                                   1285 ;	buffer.c:230: goto get_buff;
                                   1286 ;	buffer.c:231: }
      000BD2 02 17 81         [24] 1287 	ljmp	___memcpy
                                   1288 ;------------------------------------------------------------
                                   1289 ;Allocation info for local variables in function 'buffer_input_loop'
                                   1290 ;------------------------------------------------------------
                                   1291 ;rec                       Allocated with name '_buffer_input_loop_rec_65537_68'
                                   1292 ;------------------------------------------------------------
                                   1293 ;	buffer.c:239: void buffer_input_loop()
                                   1294 ;	-----------------------------------------
                                   1295 ;	 function buffer_input_loop
                                   1296 ;	-----------------------------------------
      000BD5                       1297 _buffer_input_loop:
                                   1298 ;	buffer.c:241: print_heap_menu();
      000BD5 12 07 E1         [24] 1299 	lcall	_print_heap_menu
                                   1300 ;	buffer.c:243: while (1)
      000BD8                       1301 00126$:
                                   1302 ;	buffer.c:245: rec = getchar();
      000BD8 12 05 32         [24] 1303 	lcall	_getchar
      000BDB AE 82            [24] 1304 	mov	r6,dpl
      000BDD AF 83            [24] 1305 	mov	r7,dph
                                   1306 ;	buffer.c:246: if (rec > 0x60 && rec < 0x7B)
      000BDF C3               [12] 1307 	clr	c
      000BE0 74 60            [12] 1308 	mov	a,#0x60
      000BE2 9E               [12] 1309 	subb	a,r6
      000BE3 74 80            [12] 1310 	mov	a,#(0x00 ^ 0x80)
      000BE5 8F F0            [24] 1311 	mov	b,r7
      000BE7 63 F0 80         [24] 1312 	xrl	b,#0x80
      000BEA 95 F0            [12] 1313 	subb	a,b
      000BEC 40 03            [24] 1314 	jc	00170$
      000BEE 02 0C 7D         [24] 1315 	ljmp	00122$
      000BF1                       1316 00170$:
      000BF1 C3               [12] 1317 	clr	c
      000BF2 EE               [12] 1318 	mov	a,r6
      000BF3 94 7B            [12] 1319 	subb	a,#0x7b
      000BF5 EF               [12] 1320 	mov	a,r7
      000BF6 64 80            [12] 1321 	xrl	a,#0x80
      000BF8 94 80            [12] 1322 	subb	a,#0x80
      000BFA 40 03            [24] 1323 	jc	00171$
      000BFC 02 0C 7D         [24] 1324 	ljmp	00122$
      000BFF                       1325 00171$:
                                   1326 ;	buffer.c:250: if (buffers_array[0].num_char < buffers_array[0].buff_size)
      000BFF 90 00 25         [24] 1327 	mov	dptr,#(_buffers_array + 0x000a)
      000C02 E0               [24] 1328 	movx	a,@dptr
      000C03 FC               [12] 1329 	mov	r4,a
      000C04 A3               [24] 1330 	inc	dptr
      000C05 E0               [24] 1331 	movx	a,@dptr
      000C06 FD               [12] 1332 	mov	r5,a
      000C07 90 00 23         [24] 1333 	mov	dptr,#(_buffers_array + 0x0008)
      000C0A E0               [24] 1334 	movx	a,@dptr
      000C0B FA               [12] 1335 	mov	r2,a
      000C0C A3               [24] 1336 	inc	dptr
      000C0D E0               [24] 1337 	movx	a,@dptr
      000C0E FB               [12] 1338 	mov	r3,a
      000C0F C3               [12] 1339 	clr	c
      000C10 EC               [12] 1340 	mov	a,r4
      000C11 9A               [12] 1341 	subb	a,r2
      000C12 ED               [12] 1342 	mov	a,r5
      000C13 64 80            [12] 1343 	xrl	a,#0x80
      000C15 8B F0            [24] 1344 	mov	b,r3
      000C17 63 F0 80         [24] 1345 	xrl	b,#0x80
      000C1A 95 F0            [12] 1346 	subb	a,b
      000C1C 50 32            [24] 1347 	jnc	00102$
                                   1348 ;	buffer.c:252: *(buffers_array[0].buffer_start + buffers_array[0].num_char) = rec;
      000C1E 90 00 1D         [24] 1349 	mov	dptr,#(_buffers_array + 0x0002)
      000C21 E0               [24] 1350 	movx	a,@dptr
      000C22 F9               [12] 1351 	mov	r1,a
      000C23 A3               [24] 1352 	inc	dptr
      000C24 E0               [24] 1353 	movx	a,@dptr
      000C25 FA               [12] 1354 	mov	r2,a
      000C26 A3               [24] 1355 	inc	dptr
      000C27 E0               [24] 1356 	movx	a,@dptr
      000C28 FB               [12] 1357 	mov	r3,a
      000C29 EC               [12] 1358 	mov	a,r4
      000C2A 29               [12] 1359 	add	a,r1
      000C2B F9               [12] 1360 	mov	r1,a
      000C2C ED               [12] 1361 	mov	a,r5
      000C2D 3A               [12] 1362 	addc	a,r2
      000C2E FA               [12] 1363 	mov	r2,a
      000C2F 8E 05            [24] 1364 	mov	ar5,r6
      000C31 89 82            [24] 1365 	mov	dpl,r1
      000C33 8A 83            [24] 1366 	mov	dph,r2
      000C35 8B F0            [24] 1367 	mov	b,r3
      000C37 ED               [12] 1368 	mov	a,r5
      000C38 12 17 F5         [24] 1369 	lcall	__gptrput
                                   1370 ;	buffer.c:253: buffers_array[0].num_char += 1;
      000C3B 90 00 25         [24] 1371 	mov	dptr,#(_buffers_array + 0x000a)
      000C3E E0               [24] 1372 	movx	a,@dptr
      000C3F FC               [12] 1373 	mov	r4,a
      000C40 A3               [24] 1374 	inc	dptr
      000C41 E0               [24] 1375 	movx	a,@dptr
      000C42 FD               [12] 1376 	mov	r5,a
      000C43 0C               [12] 1377 	inc	r4
      000C44 BC 00 01         [24] 1378 	cjne	r4,#0x00,00173$
      000C47 0D               [12] 1379 	inc	r5
      000C48                       1380 00173$:
      000C48 90 00 25         [24] 1381 	mov	dptr,#(_buffers_array + 0x000a)
      000C4B EC               [12] 1382 	mov	a,r4
      000C4C F0               [24] 1383 	movx	@dptr,a
      000C4D ED               [12] 1384 	mov	a,r5
      000C4E A3               [24] 1385 	inc	dptr
      000C4F F0               [24] 1386 	movx	@dptr,a
      000C50                       1387 00102$:
                                   1388 ;	buffer.c:255: program_stats.all_char_count += 1;
      000C50 90 00 15         [24] 1389 	mov	dptr,#(_program_stats + 0x0004)
      000C53 E0               [24] 1390 	movx	a,@dptr
      000C54 FC               [12] 1391 	mov	r4,a
      000C55 A3               [24] 1392 	inc	dptr
      000C56 E0               [24] 1393 	movx	a,@dptr
      000C57 FD               [12] 1394 	mov	r5,a
      000C58 0C               [12] 1395 	inc	r4
      000C59 BC 00 01         [24] 1396 	cjne	r4,#0x00,00174$
      000C5C 0D               [12] 1397 	inc	r5
      000C5D                       1398 00174$:
      000C5D 90 00 15         [24] 1399 	mov	dptr,#(_program_stats + 0x0004)
      000C60 EC               [12] 1400 	mov	a,r4
      000C61 F0               [24] 1401 	movx	@dptr,a
      000C62 ED               [12] 1402 	mov	a,r5
      000C63 A3               [24] 1403 	inc	dptr
      000C64 F0               [24] 1404 	movx	@dptr,a
                                   1405 ;	buffer.c:256: program_stats.storage_char_count += 1;
      000C65 90 00 17         [24] 1406 	mov	dptr,#(_program_stats + 0x0006)
      000C68 E0               [24] 1407 	movx	a,@dptr
      000C69 FC               [12] 1408 	mov	r4,a
      000C6A A3               [24] 1409 	inc	dptr
      000C6B E0               [24] 1410 	movx	a,@dptr
      000C6C FD               [12] 1411 	mov	r5,a
      000C6D 0C               [12] 1412 	inc	r4
      000C6E BC 00 01         [24] 1413 	cjne	r4,#0x00,00175$
      000C71 0D               [12] 1414 	inc	r5
      000C72                       1415 00175$:
      000C72 90 00 17         [24] 1416 	mov	dptr,#(_program_stats + 0x0006)
      000C75 EC               [12] 1417 	mov	a,r4
      000C76 F0               [24] 1418 	movx	@dptr,a
      000C77 ED               [12] 1419 	mov	a,r5
      000C78 A3               [24] 1420 	inc	dptr
      000C79 F0               [24] 1421 	movx	@dptr,a
      000C7A 02 0B D8         [24] 1422 	ljmp	00126$
      000C7D                       1423 00122$:
                                   1424 ;	buffer.c:258: else if (rec == 0x3F)
      000C7D BE 3F 1F         [24] 1425 	cjne	r6,#0x3f,00119$
      000C80 BF 00 1C         [24] 1426 	cjne	r7,#0x00,00119$
                                   1427 ;	buffer.c:261: print_heap_stats();
      000C83 12 0F 56         [24] 1428 	lcall	_print_heap_stats
                                   1429 ;	buffer.c:262: print_all_buffers();
      000C86 12 10 11         [24] 1430 	lcall	_print_all_buffers
                                   1431 ;	buffer.c:263: dump_buff_zero_ascii();
      000C89 12 0C FF         [24] 1432 	lcall	_dump_buff_zero_ascii
                                   1433 ;	buffer.c:264: program_stats.all_char_count = 0;
      000C8C 90 00 15         [24] 1434 	mov	dptr,#(_program_stats + 0x0004)
      000C8F E4               [12] 1435 	clr	a
      000C90 F0               [24] 1436 	movx	@dptr,a
      000C91 A3               [24] 1437 	inc	dptr
      000C92 F0               [24] 1438 	movx	@dptr,a
                                   1439 ;	buffer.c:265: program_stats.storage_char_count = 0;
      000C93 90 00 17         [24] 1440 	mov	dptr,#(_program_stats + 0x0006)
      000C96 F0               [24] 1441 	movx	@dptr,a
      000C97 A3               [24] 1442 	inc	dptr
      000C98 F0               [24] 1443 	movx	@dptr,a
                                   1444 ;	buffer.c:266: print_heap_menu();
      000C99 12 07 E1         [24] 1445 	lcall	_print_heap_menu
      000C9C 02 0B D8         [24] 1446 	ljmp	00126$
      000C9F                       1447 00119$:
                                   1448 ;	buffer.c:268: else if (rec == 0x3D)
      000C9F BE 3D 0C         [24] 1449 	cjne	r6,#0x3d,00116$
      000CA2 BF 00 09         [24] 1450 	cjne	r7,#0x00,00116$
                                   1451 ;	buffer.c:271: dump_buff_zero_hex();
      000CA5 12 0E 0F         [24] 1452 	lcall	_dump_buff_zero_hex
                                   1453 ;	buffer.c:272: print_heap_menu();
      000CA8 12 07 E1         [24] 1454 	lcall	_print_heap_menu
      000CAB 02 0B D8         [24] 1455 	ljmp	00126$
      000CAE                       1456 00116$:
                                   1457 ;	buffer.c:274: else if (rec == 0x40)
      000CAE BE 40 0C         [24] 1458 	cjne	r6,#0x40,00113$
      000CB1 BF 00 09         [24] 1459 	cjne	r7,#0x00,00113$
                                   1460 ;	buffer.c:277: at_clear_all_buffers();
      000CB4 12 05 77         [24] 1461 	lcall	_at_clear_all_buffers
                                   1462 ;	buffer.c:278: print_heap_menu();
      000CB7 12 07 E1         [24] 1463 	lcall	_print_heap_menu
      000CBA 02 0B D8         [24] 1464 	ljmp	00126$
      000CBD                       1465 00113$:
                                   1466 ;	buffer.c:280: else if (rec == 0x2B)
      000CBD BE 2B 0C         [24] 1467 	cjne	r6,#0x2b,00110$
      000CC0 BF 00 09         [24] 1468 	cjne	r7,#0x00,00110$
                                   1469 ;	buffer.c:283: create_new_buffer();
      000CC3 12 08 8A         [24] 1470 	lcall	_create_new_buffer
                                   1471 ;	buffer.c:284: print_heap_menu();
      000CC6 12 07 E1         [24] 1472 	lcall	_print_heap_menu
      000CC9 02 0B D8         [24] 1473 	ljmp	00126$
      000CCC                       1474 00110$:
                                   1475 ;	buffer.c:286: else if (rec == 0x2D)
      000CCC BE 2D 0C         [24] 1476 	cjne	r6,#0x2d,00107$
      000CCF BF 00 09         [24] 1477 	cjne	r7,#0x00,00107$
                                   1478 ;	buffer.c:289: delete_buffer();
      000CD2 12 06 0B         [24] 1479 	lcall	_delete_buffer
                                   1480 ;	buffer.c:290: print_heap_menu();
      000CD5 12 07 E1         [24] 1481 	lcall	_print_heap_menu
      000CD8 02 0B D8         [24] 1482 	ljmp	00126$
      000CDB                       1483 00107$:
                                   1484 ;	buffer.c:292: else if (rec == 0x4D)
      000CDB BE 4D 09         [24] 1485 	cjne	r6,#0x4d,00104$
      000CDE BF 00 06         [24] 1486 	cjne	r7,#0x00,00104$
                                   1487 ;	buffer.c:294: main_menu();
      000CE1 12 00 B5         [24] 1488 	lcall	_main_menu
      000CE4 02 0B D8         [24] 1489 	ljmp	00126$
      000CE7                       1490 00104$:
                                   1491 ;	buffer.c:298: program_stats.all_char_count += 1;
      000CE7 90 00 15         [24] 1492 	mov	dptr,#(_program_stats + 0x0004)
      000CEA E0               [24] 1493 	movx	a,@dptr
      000CEB FE               [12] 1494 	mov	r6,a
      000CEC A3               [24] 1495 	inc	dptr
      000CED E0               [24] 1496 	movx	a,@dptr
      000CEE FF               [12] 1497 	mov	r7,a
      000CEF 0E               [12] 1498 	inc	r6
      000CF0 BE 00 01         [24] 1499 	cjne	r6,#0x00,00188$
      000CF3 0F               [12] 1500 	inc	r7
      000CF4                       1501 00188$:
      000CF4 90 00 15         [24] 1502 	mov	dptr,#(_program_stats + 0x0004)
      000CF7 EE               [12] 1503 	mov	a,r6
      000CF8 F0               [24] 1504 	movx	@dptr,a
      000CF9 EF               [12] 1505 	mov	a,r7
      000CFA A3               [24] 1506 	inc	dptr
      000CFB F0               [24] 1507 	movx	@dptr,a
                                   1508 ;	buffer.c:301: }
      000CFC 02 0B D8         [24] 1509 	ljmp	00126$
                                   1510 ;------------------------------------------------------------
                                   1511 ;Allocation info for local variables in function 'dump_buff_zero_ascii'
                                   1512 ;------------------------------------------------------------
                                   1513 ;j                         Allocated with name '_dump_buff_zero_ascii_j_65536_79'
                                   1514 ;i                         Allocated with name '_dump_buff_zero_ascii_i_196608_81'
                                   1515 ;------------------------------------------------------------
                                   1516 ;	buffer.c:309: void dump_buff_zero_ascii()
                                   1517 ;	-----------------------------------------
                                   1518 ;	 function dump_buff_zero_ascii
                                   1519 ;	-----------------------------------------
      000CFF                       1520 _dump_buff_zero_ascii:
                                   1521 ;	buffer.c:311: int j = 64;
      000CFF 90 01 6B         [24] 1522 	mov	dptr,#_dump_buff_zero_ascii_j_65536_79
      000D02 74 40            [12] 1523 	mov	a,#0x40
      000D04 F0               [24] 1524 	movx	@dptr,a
      000D05 E4               [12] 1525 	clr	a
      000D06 A3               [24] 1526 	inc	dptr
      000D07 F0               [24] 1527 	movx	@dptr,a
                                   1528 ;	buffer.c:312: if (buffers_array[0].num_char > 0)
      000D08 90 00 25         [24] 1529 	mov	dptr,#(_buffers_array + 0x000a)
      000D0B E0               [24] 1530 	movx	a,@dptr
      000D0C FE               [12] 1531 	mov	r6,a
      000D0D A3               [24] 1532 	inc	dptr
      000D0E E0               [24] 1533 	movx	a,@dptr
      000D0F FF               [12] 1534 	mov	r7,a
      000D10 C3               [12] 1535 	clr	c
      000D11 E4               [12] 1536 	clr	a
      000D12 9E               [12] 1537 	subb	a,r6
      000D13 74 80            [12] 1538 	mov	a,#(0x00 ^ 0x80)
      000D15 8F F0            [24] 1539 	mov	b,r7
      000D17 63 F0 80         [24] 1540 	xrl	b,#0x80
      000D1A 95 F0            [12] 1541 	subb	a,b
      000D1C 40 03            [24] 1542 	jc	00135$
      000D1E 02 0D F9         [24] 1543 	ljmp	00107$
      000D21                       1544 00135$:
                                   1545 ;	buffer.c:314: printf("\n\n\r***********Buffer-0-Contents*********** \n\r");
      000D21 74 9B            [12] 1546 	mov	a,#___str_19
      000D23 C0 E0            [24] 1547 	push	acc
      000D25 74 28            [12] 1548 	mov	a,#(___str_19 >> 8)
      000D27 C0 E0            [24] 1549 	push	acc
      000D29 74 80            [12] 1550 	mov	a,#0x80
      000D2B C0 E0            [24] 1551 	push	acc
      000D2D 12 1A 23         [24] 1552 	lcall	_printf
      000D30 15 81            [12] 1553 	dec	sp
      000D32 15 81            [12] 1554 	dec	sp
      000D34 15 81            [12] 1555 	dec	sp
                                   1556 ;	buffer.c:315: for (int i = 0; i < buffers_array[0].num_char; i++)
      000D36 7E 00            [12] 1557 	mov	r6,#0x00
      000D38 7F 00            [12] 1558 	mov	r7,#0x00
      000D3A                       1559 00110$:
      000D3A 90 00 25         [24] 1560 	mov	dptr,#(_buffers_array + 0x000a)
      000D3D E0               [24] 1561 	movx	a,@dptr
      000D3E FC               [12] 1562 	mov	r4,a
      000D3F A3               [24] 1563 	inc	dptr
      000D40 E0               [24] 1564 	movx	a,@dptr
      000D41 FD               [12] 1565 	mov	r5,a
      000D42 C3               [12] 1566 	clr	c
      000D43 EE               [12] 1567 	mov	a,r6
      000D44 9C               [12] 1568 	subb	a,r4
      000D45 EF               [12] 1569 	mov	a,r7
      000D46 64 80            [12] 1570 	xrl	a,#0x80
      000D48 8D F0            [24] 1571 	mov	b,r5
      000D4A 63 F0 80         [24] 1572 	xrl	b,#0x80
      000D4D 95 F0            [12] 1573 	subb	a,b
      000D4F 40 03            [24] 1574 	jc	00136$
      000D51 02 0D DC         [24] 1575 	ljmp	00105$
      000D54                       1576 00136$:
                                   1577 ;	buffer.c:317: if (j == 64)
      000D54 90 01 6B         [24] 1578 	mov	dptr,#_dump_buff_zero_ascii_j_65536_79
      000D57 E0               [24] 1579 	movx	a,@dptr
      000D58 FC               [12] 1580 	mov	r4,a
      000D59 A3               [24] 1581 	inc	dptr
      000D5A E0               [24] 1582 	movx	a,@dptr
      000D5B FD               [12] 1583 	mov	r5,a
      000D5C BC 40 20         [24] 1584 	cjne	r4,#0x40,00102$
      000D5F BD 00 1D         [24] 1585 	cjne	r5,#0x00,00102$
                                   1586 ;	buffer.c:319: printf("\n\r");
      000D62 C0 07            [24] 1587 	push	ar7
      000D64 C0 06            [24] 1588 	push	ar6
      000D66 74 C9            [12] 1589 	mov	a,#___str_20
      000D68 C0 E0            [24] 1590 	push	acc
      000D6A 74 28            [12] 1591 	mov	a,#(___str_20 >> 8)
      000D6C C0 E0            [24] 1592 	push	acc
      000D6E 74 80            [12] 1593 	mov	a,#0x80
      000D70 C0 E0            [24] 1594 	push	acc
      000D72 12 1A 23         [24] 1595 	lcall	_printf
      000D75 15 81            [12] 1596 	dec	sp
      000D77 15 81            [12] 1597 	dec	sp
      000D79 15 81            [12] 1598 	dec	sp
      000D7B D0 06            [24] 1599 	pop	ar6
      000D7D D0 07            [24] 1600 	pop	ar7
      000D7F                       1601 00102$:
                                   1602 ;	buffer.c:321: putchar(*(buffers_array[0].buffer_start + i));
      000D7F 90 00 1D         [24] 1603 	mov	dptr,#(_buffers_array + 0x0002)
      000D82 E0               [24] 1604 	movx	a,@dptr
      000D83 FB               [12] 1605 	mov	r3,a
      000D84 A3               [24] 1606 	inc	dptr
      000D85 E0               [24] 1607 	movx	a,@dptr
      000D86 FC               [12] 1608 	mov	r4,a
      000D87 A3               [24] 1609 	inc	dptr
      000D88 E0               [24] 1610 	movx	a,@dptr
      000D89 FD               [12] 1611 	mov	r5,a
      000D8A EE               [12] 1612 	mov	a,r6
      000D8B 2B               [12] 1613 	add	a,r3
      000D8C FB               [12] 1614 	mov	r3,a
      000D8D EF               [12] 1615 	mov	a,r7
      000D8E 3C               [12] 1616 	addc	a,r4
      000D8F FC               [12] 1617 	mov	r4,a
      000D90 8B 82            [24] 1618 	mov	dpl,r3
      000D92 8C 83            [24] 1619 	mov	dph,r4
      000D94 8D F0            [24] 1620 	mov	b,r5
      000D96 12 24 42         [24] 1621 	lcall	__gptrget
      000D99 FB               [12] 1622 	mov	r3,a
      000D9A 7D 00            [12] 1623 	mov	r5,#0x00
      000D9C 8B 82            [24] 1624 	mov	dpl,r3
      000D9E 8D 83            [24] 1625 	mov	dph,r5
      000DA0 C0 07            [24] 1626 	push	ar7
      000DA2 C0 06            [24] 1627 	push	ar6
      000DA4 12 05 13         [24] 1628 	lcall	_putchar
      000DA7 D0 06            [24] 1629 	pop	ar6
      000DA9 D0 07            [24] 1630 	pop	ar7
                                   1631 ;	buffer.c:322: j--;
      000DAB 90 01 6B         [24] 1632 	mov	dptr,#_dump_buff_zero_ascii_j_65536_79
      000DAE E0               [24] 1633 	movx	a,@dptr
      000DAF 24 FF            [12] 1634 	add	a,#0xff
      000DB1 FC               [12] 1635 	mov	r4,a
      000DB2 A3               [24] 1636 	inc	dptr
      000DB3 E0               [24] 1637 	movx	a,@dptr
      000DB4 34 FF            [12] 1638 	addc	a,#0xff
      000DB6 FD               [12] 1639 	mov	r5,a
      000DB7 90 01 6B         [24] 1640 	mov	dptr,#_dump_buff_zero_ascii_j_65536_79
      000DBA EC               [12] 1641 	mov	a,r4
      000DBB F0               [24] 1642 	movx	@dptr,a
      000DBC ED               [12] 1643 	mov	a,r5
      000DBD A3               [24] 1644 	inc	dptr
      000DBE F0               [24] 1645 	movx	@dptr,a
                                   1646 ;	buffer.c:323: if (j == 0)
      000DBF 90 01 6B         [24] 1647 	mov	dptr,#_dump_buff_zero_ascii_j_65536_79
      000DC2 E0               [24] 1648 	movx	a,@dptr
      000DC3 F5 F0            [12] 1649 	mov	b,a
      000DC5 A3               [24] 1650 	inc	dptr
      000DC6 E0               [24] 1651 	movx	a,@dptr
      000DC7 45 F0            [12] 1652 	orl	a,b
      000DC9 70 09            [24] 1653 	jnz	00111$
                                   1654 ;	buffer.c:324: j = 64;
      000DCB 90 01 6B         [24] 1655 	mov	dptr,#_dump_buff_zero_ascii_j_65536_79
      000DCE 74 40            [12] 1656 	mov	a,#0x40
      000DD0 F0               [24] 1657 	movx	@dptr,a
      000DD1 E4               [12] 1658 	clr	a
      000DD2 A3               [24] 1659 	inc	dptr
      000DD3 F0               [24] 1660 	movx	@dptr,a
      000DD4                       1661 00111$:
                                   1662 ;	buffer.c:315: for (int i = 0; i < buffers_array[0].num_char; i++)
      000DD4 0E               [12] 1663 	inc	r6
      000DD5 BE 00 01         [24] 1664 	cjne	r6,#0x00,00140$
      000DD8 0F               [12] 1665 	inc	r7
      000DD9                       1666 00140$:
      000DD9 02 0D 3A         [24] 1667 	ljmp	00110$
      000DDC                       1668 00105$:
                                   1669 ;	buffer.c:326: buffers_array[0].num_char = 0;
      000DDC 90 00 25         [24] 1670 	mov	dptr,#(_buffers_array + 0x000a)
      000DDF E4               [12] 1671 	clr	a
      000DE0 F0               [24] 1672 	movx	@dptr,a
      000DE1 A3               [24] 1673 	inc	dptr
      000DE2 F0               [24] 1674 	movx	@dptr,a
                                   1675 ;	buffer.c:327: printf("\n\n\r");
      000DE3 74 CC            [12] 1676 	mov	a,#___str_21
      000DE5 C0 E0            [24] 1677 	push	acc
      000DE7 74 28            [12] 1678 	mov	a,#(___str_21 >> 8)
      000DE9 C0 E0            [24] 1679 	push	acc
      000DEB 74 80            [12] 1680 	mov	a,#0x80
      000DED C0 E0            [24] 1681 	push	acc
      000DEF 12 1A 23         [24] 1682 	lcall	_printf
      000DF2 15 81            [12] 1683 	dec	sp
      000DF4 15 81            [12] 1684 	dec	sp
      000DF6 15 81            [12] 1685 	dec	sp
      000DF8 22               [24] 1686 	ret
      000DF9                       1687 00107$:
                                   1688 ;	buffer.c:331: printf("Buffer0 is Empty....\n\r");
      000DF9 74 D0            [12] 1689 	mov	a,#___str_22
      000DFB C0 E0            [24] 1690 	push	acc
      000DFD 74 28            [12] 1691 	mov	a,#(___str_22 >> 8)
      000DFF C0 E0            [24] 1692 	push	acc
      000E01 74 80            [12] 1693 	mov	a,#0x80
      000E03 C0 E0            [24] 1694 	push	acc
      000E05 12 1A 23         [24] 1695 	lcall	_printf
      000E08 15 81            [12] 1696 	dec	sp
      000E0A 15 81            [12] 1697 	dec	sp
      000E0C 15 81            [12] 1698 	dec	sp
                                   1699 ;	buffer.c:333: }
      000E0E 22               [24] 1700 	ret
                                   1701 ;------------------------------------------------------------
                                   1702 ;Allocation info for local variables in function 'dump_buff_zero_hex'
                                   1703 ;------------------------------------------------------------
                                   1704 ;j                         Allocated with name '_dump_buff_zero_hex_j_131073_87'
                                   1705 ;i                         Allocated with name '_dump_buff_zero_hex_i_196609_88'
                                   1706 ;------------------------------------------------------------
                                   1707 ;	buffer.c:340: void dump_buff_zero_hex()
                                   1708 ;	-----------------------------------------
                                   1709 ;	 function dump_buff_zero_hex
                                   1710 ;	-----------------------------------------
      000E0F                       1711 _dump_buff_zero_hex:
                                   1712 ;	buffer.c:342: if (buffers_array[0].num_char > 0)
      000E0F 90 00 25         [24] 1713 	mov	dptr,#(_buffers_array + 0x000a)
      000E12 E0               [24] 1714 	movx	a,@dptr
      000E13 FE               [12] 1715 	mov	r6,a
      000E14 A3               [24] 1716 	inc	dptr
      000E15 E0               [24] 1717 	movx	a,@dptr
      000E16 FF               [12] 1718 	mov	r7,a
      000E17 C3               [12] 1719 	clr	c
      000E18 E4               [12] 1720 	clr	a
      000E19 9E               [12] 1721 	subb	a,r6
      000E1A 74 80            [12] 1722 	mov	a,#(0x00 ^ 0x80)
      000E1C 8F F0            [24] 1723 	mov	b,r7
      000E1E 63 F0 80         [24] 1724 	xrl	b,#0x80
      000E21 95 F0            [12] 1725 	subb	a,b
      000E23 40 03            [24] 1726 	jc	00135$
      000E25 02 0F 40         [24] 1727 	ljmp	00107$
      000E28                       1728 00135$:
                                   1729 ;	buffer.c:344: printf("\n\r-------------------------HEXDUMP--------------------------------");
      000E28 74 E7            [12] 1730 	mov	a,#___str_23
      000E2A C0 E0            [24] 1731 	push	acc
      000E2C 74 28            [12] 1732 	mov	a,#(___str_23 >> 8)
      000E2E C0 E0            [24] 1733 	push	acc
      000E30 74 80            [12] 1734 	mov	a,#0x80
      000E32 C0 E0            [24] 1735 	push	acc
      000E34 12 1A 23         [24] 1736 	lcall	_printf
      000E37 15 81            [12] 1737 	dec	sp
      000E39 15 81            [12] 1738 	dec	sp
      000E3B 15 81            [12] 1739 	dec	sp
                                   1740 ;	buffer.c:345: printf("\n\r    ADDR: +0 +1 +2 +3 +4 +5 +6 +7 +8 +9 +A +B +C +D +E +F \n\r");
      000E3D 74 2A            [12] 1741 	mov	a,#___str_24
      000E3F C0 E0            [24] 1742 	push	acc
      000E41 74 29            [12] 1743 	mov	a,#(___str_24 >> 8)
      000E43 C0 E0            [24] 1744 	push	acc
      000E45 74 80            [12] 1745 	mov	a,#0x80
      000E47 C0 E0            [24] 1746 	push	acc
      000E49 12 1A 23         [24] 1747 	lcall	_printf
      000E4C 15 81            [12] 1748 	dec	sp
      000E4E 15 81            [12] 1749 	dec	sp
      000E50 15 81            [12] 1750 	dec	sp
                                   1751 ;	buffer.c:346: int j = 16;
      000E52 90 01 6D         [24] 1752 	mov	dptr,#_dump_buff_zero_hex_j_131073_87
      000E55 74 10            [12] 1753 	mov	a,#0x10
      000E57 F0               [24] 1754 	movx	@dptr,a
      000E58 E4               [12] 1755 	clr	a
      000E59 A3               [24] 1756 	inc	dptr
      000E5A F0               [24] 1757 	movx	@dptr,a
                                   1758 ;	buffer.c:348: for (int i = 0; i < buffers_array[0].num_char; i++)
      000E5B 7E 00            [12] 1759 	mov	r6,#0x00
      000E5D 7F 00            [12] 1760 	mov	r7,#0x00
      000E5F                       1761 00110$:
      000E5F 90 00 25         [24] 1762 	mov	dptr,#(_buffers_array + 0x000a)
      000E62 E0               [24] 1763 	movx	a,@dptr
      000E63 FC               [12] 1764 	mov	r4,a
      000E64 A3               [24] 1765 	inc	dptr
      000E65 E0               [24] 1766 	movx	a,@dptr
      000E66 FD               [12] 1767 	mov	r5,a
      000E67 C3               [12] 1768 	clr	c
      000E68 EE               [12] 1769 	mov	a,r6
      000E69 9C               [12] 1770 	subb	a,r4
      000E6A EF               [12] 1771 	mov	a,r7
      000E6B 64 80            [12] 1772 	xrl	a,#0x80
      000E6D 8D F0            [24] 1773 	mov	b,r5
      000E6F 63 F0 80         [24] 1774 	xrl	b,#0x80
      000E72 95 F0            [12] 1775 	subb	a,b
      000E74 40 03            [24] 1776 	jc	00136$
      000E76 02 0F 2A         [24] 1777 	ljmp	00105$
      000E79                       1778 00136$:
                                   1779 ;	buffer.c:350: if (j == 16)
      000E79 90 01 6D         [24] 1780 	mov	dptr,#_dump_buff_zero_hex_j_131073_87
      000E7C E0               [24] 1781 	movx	a,@dptr
      000E7D FC               [12] 1782 	mov	r4,a
      000E7E A3               [24] 1783 	inc	dptr
      000E7F E0               [24] 1784 	movx	a,@dptr
      000E80 FD               [12] 1785 	mov	r5,a
      000E81 BC 10 37         [24] 1786 	cjne	r4,#0x10,00102$
      000E84 BD 00 34         [24] 1787 	cjne	r5,#0x00,00102$
                                   1788 ;	buffer.c:352: printf("\n\r%p: ", (buffers_array[0].buffer_start + i));
      000E87 90 00 1D         [24] 1789 	mov	dptr,#(_buffers_array + 0x0002)
      000E8A E0               [24] 1790 	movx	a,@dptr
      000E8B FB               [12] 1791 	mov	r3,a
      000E8C A3               [24] 1792 	inc	dptr
      000E8D E0               [24] 1793 	movx	a,@dptr
      000E8E FC               [12] 1794 	mov	r4,a
      000E8F A3               [24] 1795 	inc	dptr
      000E90 E0               [24] 1796 	movx	a,@dptr
      000E91 FD               [12] 1797 	mov	r5,a
      000E92 EE               [12] 1798 	mov	a,r6
      000E93 2B               [12] 1799 	add	a,r3
      000E94 FB               [12] 1800 	mov	r3,a
      000E95 EF               [12] 1801 	mov	a,r7
      000E96 3C               [12] 1802 	addc	a,r4
      000E97 FC               [12] 1803 	mov	r4,a
      000E98 C0 07            [24] 1804 	push	ar7
      000E9A C0 06            [24] 1805 	push	ar6
      000E9C C0 03            [24] 1806 	push	ar3
      000E9E C0 04            [24] 1807 	push	ar4
      000EA0 C0 05            [24] 1808 	push	ar5
      000EA2 74 69            [12] 1809 	mov	a,#___str_25
      000EA4 C0 E0            [24] 1810 	push	acc
      000EA6 74 29            [12] 1811 	mov	a,#(___str_25 >> 8)
      000EA8 C0 E0            [24] 1812 	push	acc
      000EAA 74 80            [12] 1813 	mov	a,#0x80
      000EAC C0 E0            [24] 1814 	push	acc
      000EAE 12 1A 23         [24] 1815 	lcall	_printf
      000EB1 E5 81            [12] 1816 	mov	a,sp
      000EB3 24 FA            [12] 1817 	add	a,#0xfa
      000EB5 F5 81            [12] 1818 	mov	sp,a
      000EB7 D0 06            [24] 1819 	pop	ar6
      000EB9 D0 07            [24] 1820 	pop	ar7
      000EBB                       1821 00102$:
                                   1822 ;	buffer.c:354: printf("%x ", *(buffers_array[0].buffer_start + i));
      000EBB 90 00 1D         [24] 1823 	mov	dptr,#(_buffers_array + 0x0002)
      000EBE E0               [24] 1824 	movx	a,@dptr
      000EBF FB               [12] 1825 	mov	r3,a
      000EC0 A3               [24] 1826 	inc	dptr
      000EC1 E0               [24] 1827 	movx	a,@dptr
      000EC2 FC               [12] 1828 	mov	r4,a
      000EC3 A3               [24] 1829 	inc	dptr
      000EC4 E0               [24] 1830 	movx	a,@dptr
      000EC5 FD               [12] 1831 	mov	r5,a
      000EC6 EE               [12] 1832 	mov	a,r6
      000EC7 2B               [12] 1833 	add	a,r3
      000EC8 FB               [12] 1834 	mov	r3,a
      000EC9 EF               [12] 1835 	mov	a,r7
      000ECA 3C               [12] 1836 	addc	a,r4
      000ECB FC               [12] 1837 	mov	r4,a
      000ECC 8B 82            [24] 1838 	mov	dpl,r3
      000ECE 8C 83            [24] 1839 	mov	dph,r4
      000ED0 8D F0            [24] 1840 	mov	b,r5
      000ED2 12 24 42         [24] 1841 	lcall	__gptrget
      000ED5 FB               [12] 1842 	mov	r3,a
      000ED6 7D 00            [12] 1843 	mov	r5,#0x00
      000ED8 C0 07            [24] 1844 	push	ar7
      000EDA C0 06            [24] 1845 	push	ar6
      000EDC C0 03            [24] 1846 	push	ar3
      000EDE C0 05            [24] 1847 	push	ar5
      000EE0 74 70            [12] 1848 	mov	a,#___str_26
      000EE2 C0 E0            [24] 1849 	push	acc
      000EE4 74 29            [12] 1850 	mov	a,#(___str_26 >> 8)
      000EE6 C0 E0            [24] 1851 	push	acc
      000EE8 74 80            [12] 1852 	mov	a,#0x80
      000EEA C0 E0            [24] 1853 	push	acc
      000EEC 12 1A 23         [24] 1854 	lcall	_printf
      000EEF E5 81            [12] 1855 	mov	a,sp
      000EF1 24 FB            [12] 1856 	add	a,#0xfb
      000EF3 F5 81            [12] 1857 	mov	sp,a
      000EF5 D0 06            [24] 1858 	pop	ar6
      000EF7 D0 07            [24] 1859 	pop	ar7
                                   1860 ;	buffer.c:355: j--;
      000EF9 90 01 6D         [24] 1861 	mov	dptr,#_dump_buff_zero_hex_j_131073_87
      000EFC E0               [24] 1862 	movx	a,@dptr
      000EFD 24 FF            [12] 1863 	add	a,#0xff
      000EFF FC               [12] 1864 	mov	r4,a
      000F00 A3               [24] 1865 	inc	dptr
      000F01 E0               [24] 1866 	movx	a,@dptr
      000F02 34 FF            [12] 1867 	addc	a,#0xff
      000F04 FD               [12] 1868 	mov	r5,a
      000F05 90 01 6D         [24] 1869 	mov	dptr,#_dump_buff_zero_hex_j_131073_87
      000F08 EC               [12] 1870 	mov	a,r4
      000F09 F0               [24] 1871 	movx	@dptr,a
      000F0A ED               [12] 1872 	mov	a,r5
      000F0B A3               [24] 1873 	inc	dptr
      000F0C F0               [24] 1874 	movx	@dptr,a
                                   1875 ;	buffer.c:356: if (j == 0)
      000F0D 90 01 6D         [24] 1876 	mov	dptr,#_dump_buff_zero_hex_j_131073_87
      000F10 E0               [24] 1877 	movx	a,@dptr
      000F11 F5 F0            [12] 1878 	mov	b,a
      000F13 A3               [24] 1879 	inc	dptr
      000F14 E0               [24] 1880 	movx	a,@dptr
      000F15 45 F0            [12] 1881 	orl	a,b
      000F17 70 09            [24] 1882 	jnz	00111$
                                   1883 ;	buffer.c:357: j = 16;
      000F19 90 01 6D         [24] 1884 	mov	dptr,#_dump_buff_zero_hex_j_131073_87
      000F1C 74 10            [12] 1885 	mov	a,#0x10
      000F1E F0               [24] 1886 	movx	@dptr,a
      000F1F E4               [12] 1887 	clr	a
      000F20 A3               [24] 1888 	inc	dptr
      000F21 F0               [24] 1889 	movx	@dptr,a
      000F22                       1890 00111$:
                                   1891 ;	buffer.c:348: for (int i = 0; i < buffers_array[0].num_char; i++)
      000F22 0E               [12] 1892 	inc	r6
      000F23 BE 00 01         [24] 1893 	cjne	r6,#0x00,00140$
      000F26 0F               [12] 1894 	inc	r7
      000F27                       1895 00140$:
      000F27 02 0E 5F         [24] 1896 	ljmp	00110$
      000F2A                       1897 00105$:
                                   1898 ;	buffer.c:359: printf("\n\n\r");
      000F2A 74 CC            [12] 1899 	mov	a,#___str_21
      000F2C C0 E0            [24] 1900 	push	acc
      000F2E 74 28            [12] 1901 	mov	a,#(___str_21 >> 8)
      000F30 C0 E0            [24] 1902 	push	acc
      000F32 74 80            [12] 1903 	mov	a,#0x80
      000F34 C0 E0            [24] 1904 	push	acc
      000F36 12 1A 23         [24] 1905 	lcall	_printf
      000F39 15 81            [12] 1906 	dec	sp
      000F3B 15 81            [12] 1907 	dec	sp
      000F3D 15 81            [12] 1908 	dec	sp
      000F3F 22               [24] 1909 	ret
      000F40                       1910 00107$:
                                   1911 ;	buffer.c:363: printf("Buffer 0 is empty...\n\r");
      000F40 74 74            [12] 1912 	mov	a,#___str_27
      000F42 C0 E0            [24] 1913 	push	acc
      000F44 74 29            [12] 1914 	mov	a,#(___str_27 >> 8)
      000F46 C0 E0            [24] 1915 	push	acc
      000F48 74 80            [12] 1916 	mov	a,#0x80
      000F4A C0 E0            [24] 1917 	push	acc
      000F4C 12 1A 23         [24] 1918 	lcall	_printf
      000F4F 15 81            [12] 1919 	dec	sp
      000F51 15 81            [12] 1920 	dec	sp
      000F53 15 81            [12] 1921 	dec	sp
                                   1922 ;	buffer.c:365: }
      000F55 22               [24] 1923 	ret
                                   1924 ;------------------------------------------------------------
                                   1925 ;Allocation info for local variables in function 'print_heap_stats'
                                   1926 ;------------------------------------------------------------
                                   1927 ;	buffer.c:372: void print_heap_stats()
                                   1928 ;	-----------------------------------------
                                   1929 ;	 function print_heap_stats
                                   1930 ;	-----------------------------------------
      000F56                       1931 _print_heap_stats:
                                   1932 ;	buffer.c:374: printf("\n\r****************HEAP*STATS*************\n\r");
      000F56 74 8B            [12] 1933 	mov	a,#___str_28
      000F58 C0 E0            [24] 1934 	push	acc
      000F5A 74 29            [12] 1935 	mov	a,#(___str_28 >> 8)
      000F5C C0 E0            [24] 1936 	push	acc
      000F5E 74 80            [12] 1937 	mov	a,#0x80
      000F60 C0 E0            [24] 1938 	push	acc
      000F62 12 1A 23         [24] 1939 	lcall	_printf
      000F65 15 81            [12] 1940 	dec	sp
      000F67 15 81            [12] 1941 	dec	sp
      000F69 15 81            [12] 1942 	dec	sp
                                   1943 ;	buffer.c:375: printf("Total Heap Size: %d \n\r", program_stats.total_heap_size);
      000F6B 90 00 11         [24] 1944 	mov	dptr,#_program_stats
      000F6E E0               [24] 1945 	movx	a,@dptr
      000F6F FE               [12] 1946 	mov	r6,a
      000F70 A3               [24] 1947 	inc	dptr
      000F71 E0               [24] 1948 	movx	a,@dptr
      000F72 FF               [12] 1949 	mov	r7,a
      000F73 C0 06            [24] 1950 	push	ar6
      000F75 C0 07            [24] 1951 	push	ar7
      000F77 74 B7            [12] 1952 	mov	a,#___str_29
      000F79 C0 E0            [24] 1953 	push	acc
      000F7B 74 29            [12] 1954 	mov	a,#(___str_29 >> 8)
      000F7D C0 E0            [24] 1955 	push	acc
      000F7F 74 80            [12] 1956 	mov	a,#0x80
      000F81 C0 E0            [24] 1957 	push	acc
      000F83 12 1A 23         [24] 1958 	lcall	_printf
      000F86 E5 81            [12] 1959 	mov	a,sp
      000F88 24 FB            [12] 1960 	add	a,#0xfb
      000F8A F5 81            [12] 1961 	mov	sp,a
                                   1962 ;	buffer.c:376: printf("Allocated Heap Size: %d \n\r", program_stats.allocated_heap);
      000F8C 90 00 13         [24] 1963 	mov	dptr,#(_program_stats + 0x0002)
      000F8F E0               [24] 1964 	movx	a,@dptr
      000F90 FE               [12] 1965 	mov	r6,a
      000F91 A3               [24] 1966 	inc	dptr
      000F92 E0               [24] 1967 	movx	a,@dptr
      000F93 FF               [12] 1968 	mov	r7,a
      000F94 C0 06            [24] 1969 	push	ar6
      000F96 C0 07            [24] 1970 	push	ar7
      000F98 74 CE            [12] 1971 	mov	a,#___str_30
      000F9A C0 E0            [24] 1972 	push	acc
      000F9C 74 29            [12] 1973 	mov	a,#(___str_30 >> 8)
      000F9E C0 E0            [24] 1974 	push	acc
      000FA0 74 80            [12] 1975 	mov	a,#0x80
      000FA2 C0 E0            [24] 1976 	push	acc
      000FA4 12 1A 23         [24] 1977 	lcall	_printf
      000FA7 E5 81            [12] 1978 	mov	a,sp
      000FA9 24 FB            [12] 1979 	add	a,#0xfb
      000FAB F5 81            [12] 1980 	mov	sp,a
                                   1981 ;	buffer.c:377: printf("All Chars: %d \n\r", program_stats.all_char_count);
      000FAD 90 00 15         [24] 1982 	mov	dptr,#(_program_stats + 0x0004)
      000FB0 E0               [24] 1983 	movx	a,@dptr
      000FB1 FE               [12] 1984 	mov	r6,a
      000FB2 A3               [24] 1985 	inc	dptr
      000FB3 E0               [24] 1986 	movx	a,@dptr
      000FB4 FF               [12] 1987 	mov	r7,a
      000FB5 C0 06            [24] 1988 	push	ar6
      000FB7 C0 07            [24] 1989 	push	ar7
      000FB9 74 E9            [12] 1990 	mov	a,#___str_31
      000FBB C0 E0            [24] 1991 	push	acc
      000FBD 74 29            [12] 1992 	mov	a,#(___str_31 >> 8)
      000FBF C0 E0            [24] 1993 	push	acc
      000FC1 74 80            [12] 1994 	mov	a,#0x80
      000FC3 C0 E0            [24] 1995 	push	acc
      000FC5 12 1A 23         [24] 1996 	lcall	_printf
      000FC8 E5 81            [12] 1997 	mov	a,sp
      000FCA 24 FB            [12] 1998 	add	a,#0xfb
      000FCC F5 81            [12] 1999 	mov	sp,a
                                   2000 ;	buffer.c:378: printf("Storage Chars: %d \n\r", program_stats.storage_char_count);
      000FCE 90 00 17         [24] 2001 	mov	dptr,#(_program_stats + 0x0006)
      000FD1 E0               [24] 2002 	movx	a,@dptr
      000FD2 FE               [12] 2003 	mov	r6,a
      000FD3 A3               [24] 2004 	inc	dptr
      000FD4 E0               [24] 2005 	movx	a,@dptr
      000FD5 FF               [12] 2006 	mov	r7,a
      000FD6 C0 06            [24] 2007 	push	ar6
      000FD8 C0 07            [24] 2008 	push	ar7
      000FDA 74 FA            [12] 2009 	mov	a,#___str_32
      000FDC C0 E0            [24] 2010 	push	acc
      000FDE 74 29            [12] 2011 	mov	a,#(___str_32 >> 8)
      000FE0 C0 E0            [24] 2012 	push	acc
      000FE2 74 80            [12] 2013 	mov	a,#0x80
      000FE4 C0 E0            [24] 2014 	push	acc
      000FE6 12 1A 23         [24] 2015 	lcall	_printf
      000FE9 E5 81            [12] 2016 	mov	a,sp
      000FEB 24 FB            [12] 2017 	add	a,#0xfb
      000FED F5 81            [12] 2018 	mov	sp,a
                                   2019 ;	buffer.c:379: printf("Total Buffers: %d \n\r", program_stats.total_buffers);
      000FEF 90 00 19         [24] 2020 	mov	dptr,#(_program_stats + 0x0008)
      000FF2 E0               [24] 2021 	movx	a,@dptr
      000FF3 FE               [12] 2022 	mov	r6,a
      000FF4 A3               [24] 2023 	inc	dptr
      000FF5 E0               [24] 2024 	movx	a,@dptr
      000FF6 FF               [12] 2025 	mov	r7,a
      000FF7 C0 06            [24] 2026 	push	ar6
      000FF9 C0 07            [24] 2027 	push	ar7
      000FFB 74 0F            [12] 2028 	mov	a,#___str_33
      000FFD C0 E0            [24] 2029 	push	acc
      000FFF 74 2A            [12] 2030 	mov	a,#(___str_33 >> 8)
      001001 C0 E0            [24] 2031 	push	acc
      001003 74 80            [12] 2032 	mov	a,#0x80
      001005 C0 E0            [24] 2033 	push	acc
      001007 12 1A 23         [24] 2034 	lcall	_printf
      00100A E5 81            [12] 2035 	mov	a,sp
      00100C 24 FB            [12] 2036 	add	a,#0xfb
      00100E F5 81            [12] 2037 	mov	sp,a
                                   2038 ;	buffer.c:380: }
      001010 22               [24] 2039 	ret
                                   2040 ;------------------------------------------------------------
                                   2041 ;Allocation info for local variables in function 'print_all_buffers'
                                   2042 ;------------------------------------------------------------
                                   2043 ;i                         Allocated with name '_print_all_buffers_i_131072_94'
                                   2044 ;------------------------------------------------------------
                                   2045 ;	buffer.c:387: void print_all_buffers()
                                   2046 ;	-----------------------------------------
                                   2047 ;	 function print_all_buffers
                                   2048 ;	-----------------------------------------
      001011                       2049 _print_all_buffers:
                                   2050 ;	buffer.c:389: for (int i = 0; i < program_stats.total_buffers; i++)
      001011 7E 00            [12] 2051 	mov	r6,#0x00
      001013 7F 00            [12] 2052 	mov	r7,#0x00
      001015                       2053 00103$:
      001015 90 00 19         [24] 2054 	mov	dptr,#(_program_stats + 0x0008)
      001018 E0               [24] 2055 	movx	a,@dptr
      001019 FC               [12] 2056 	mov	r4,a
      00101A A3               [24] 2057 	inc	dptr
      00101B E0               [24] 2058 	movx	a,@dptr
      00101C FD               [12] 2059 	mov	r5,a
      00101D C3               [12] 2060 	clr	c
      00101E EE               [12] 2061 	mov	a,r6
      00101F 9C               [12] 2062 	subb	a,r4
      001020 EF               [12] 2063 	mov	a,r7
      001021 64 80            [12] 2064 	xrl	a,#0x80
      001023 8D F0            [24] 2065 	mov	b,r5
      001025 63 F0 80         [24] 2066 	xrl	b,#0x80
      001028 95 F0            [12] 2067 	subb	a,b
      00102A 40 03            [24] 2068 	jc	00116$
      00102C 02 11 65         [24] 2069 	ljmp	00101$
      00102F                       2070 00116$:
                                   2071 ;	buffer.c:391: printf("****************BUFFER*%d***************\n\r", i);
      00102F C0 07            [24] 2072 	push	ar7
      001031 C0 06            [24] 2073 	push	ar6
      001033 C0 06            [24] 2074 	push	ar6
      001035 C0 07            [24] 2075 	push	ar7
      001037 74 24            [12] 2076 	mov	a,#___str_34
      001039 C0 E0            [24] 2077 	push	acc
      00103B 74 2A            [12] 2078 	mov	a,#(___str_34 >> 8)
      00103D C0 E0            [24] 2079 	push	acc
      00103F 74 80            [12] 2080 	mov	a,#0x80
      001041 C0 E0            [24] 2081 	push	acc
      001043 12 1A 23         [24] 2082 	lcall	_printf
      001046 E5 81            [12] 2083 	mov	a,sp
      001048 24 FB            [12] 2084 	add	a,#0xfb
      00104A F5 81            [12] 2085 	mov	sp,a
      00104C D0 06            [24] 2086 	pop	ar6
      00104E D0 07            [24] 2087 	pop	ar7
                                   2088 ;	buffer.c:392: printf("Buffer#: %d \n\r", buffers_array[i].buffer_num);
      001050 90 15 14         [24] 2089 	mov	dptr,#__mulint_PARM_2
      001053 EE               [12] 2090 	mov	a,r6
      001054 F0               [24] 2091 	movx	@dptr,a
      001055 EF               [12] 2092 	mov	a,r7
      001056 A3               [24] 2093 	inc	dptr
      001057 F0               [24] 2094 	movx	@dptr,a
      001058 90 00 0C         [24] 2095 	mov	dptr,#0x000c
      00105B C0 07            [24] 2096 	push	ar7
      00105D C0 06            [24] 2097 	push	ar6
      00105F 12 19 B5         [24] 2098 	lcall	__mulint
      001062 AC 82            [24] 2099 	mov	r4,dpl
      001064 AD 83            [24] 2100 	mov	r5,dph
      001066 EC               [12] 2101 	mov	a,r4
      001067 24 1B            [12] 2102 	add	a,#_buffers_array
      001069 F5 82            [12] 2103 	mov	dpl,a
      00106B ED               [12] 2104 	mov	a,r5
      00106C 34 00            [12] 2105 	addc	a,#(_buffers_array >> 8)
      00106E F5 83            [12] 2106 	mov	dph,a
      001070 E0               [24] 2107 	movx	a,@dptr
      001071 FA               [12] 2108 	mov	r2,a
      001072 A3               [24] 2109 	inc	dptr
      001073 E0               [24] 2110 	movx	a,@dptr
      001074 FB               [12] 2111 	mov	r3,a
      001075 C0 05            [24] 2112 	push	ar5
      001077 C0 04            [24] 2113 	push	ar4
      001079 C0 02            [24] 2114 	push	ar2
      00107B C0 03            [24] 2115 	push	ar3
      00107D 74 4F            [12] 2116 	mov	a,#___str_35
      00107F C0 E0            [24] 2117 	push	acc
      001081 74 2A            [12] 2118 	mov	a,#(___str_35 >> 8)
      001083 C0 E0            [24] 2119 	push	acc
      001085 74 80            [12] 2120 	mov	a,#0x80
      001087 C0 E0            [24] 2121 	push	acc
      001089 12 1A 23         [24] 2122 	lcall	_printf
      00108C E5 81            [12] 2123 	mov	a,sp
      00108E 24 FB            [12] 2124 	add	a,#0xfb
      001090 F5 81            [12] 2125 	mov	sp,a
      001092 D0 04            [24] 2126 	pop	ar4
      001094 D0 05            [24] 2127 	pop	ar5
                                   2128 ;	buffer.c:393: printf("BufferStart: %p \n\r", buffers_array[i].buffer_start);
      001096 EC               [12] 2129 	mov	a,r4
      001097 24 1B            [12] 2130 	add	a,#_buffers_array
      001099 FC               [12] 2131 	mov	r4,a
      00109A ED               [12] 2132 	mov	a,r5
      00109B 34 00            [12] 2133 	addc	a,#(_buffers_array >> 8)
      00109D FD               [12] 2134 	mov	r5,a
      00109E 8C 82            [24] 2135 	mov	dpl,r4
      0010A0 8D 83            [24] 2136 	mov	dph,r5
      0010A2 A3               [24] 2137 	inc	dptr
      0010A3 A3               [24] 2138 	inc	dptr
      0010A4 E0               [24] 2139 	movx	a,@dptr
      0010A5 F9               [12] 2140 	mov	r1,a
      0010A6 A3               [24] 2141 	inc	dptr
      0010A7 E0               [24] 2142 	movx	a,@dptr
      0010A8 FA               [12] 2143 	mov	r2,a
      0010A9 A3               [24] 2144 	inc	dptr
      0010AA E0               [24] 2145 	movx	a,@dptr
      0010AB FB               [12] 2146 	mov	r3,a
      0010AC C0 05            [24] 2147 	push	ar5
      0010AE C0 04            [24] 2148 	push	ar4
      0010B0 C0 01            [24] 2149 	push	ar1
      0010B2 C0 02            [24] 2150 	push	ar2
      0010B4 C0 03            [24] 2151 	push	ar3
      0010B6 74 5E            [12] 2152 	mov	a,#___str_36
      0010B8 C0 E0            [24] 2153 	push	acc
      0010BA 74 2A            [12] 2154 	mov	a,#(___str_36 >> 8)
      0010BC C0 E0            [24] 2155 	push	acc
      0010BE 74 80            [12] 2156 	mov	a,#0x80
      0010C0 C0 E0            [24] 2157 	push	acc
      0010C2 12 1A 23         [24] 2158 	lcall	_printf
      0010C5 E5 81            [12] 2159 	mov	a,sp
      0010C7 24 FA            [12] 2160 	add	a,#0xfa
      0010C9 F5 81            [12] 2161 	mov	sp,a
      0010CB D0 04            [24] 2162 	pop	ar4
      0010CD D0 05            [24] 2163 	pop	ar5
                                   2164 ;	buffer.c:394: printf("BufferEnd: %p \n\r", buffers_array[i].buffer_end);
      0010CF 8C 82            [24] 2165 	mov	dpl,r4
      0010D1 8D 83            [24] 2166 	mov	dph,r5
      0010D3 A3               [24] 2167 	inc	dptr
      0010D4 A3               [24] 2168 	inc	dptr
      0010D5 A3               [24] 2169 	inc	dptr
      0010D6 A3               [24] 2170 	inc	dptr
      0010D7 A3               [24] 2171 	inc	dptr
      0010D8 E0               [24] 2172 	movx	a,@dptr
      0010D9 F9               [12] 2173 	mov	r1,a
      0010DA A3               [24] 2174 	inc	dptr
      0010DB E0               [24] 2175 	movx	a,@dptr
      0010DC FA               [12] 2176 	mov	r2,a
      0010DD A3               [24] 2177 	inc	dptr
      0010DE E0               [24] 2178 	movx	a,@dptr
      0010DF FB               [12] 2179 	mov	r3,a
      0010E0 C0 05            [24] 2180 	push	ar5
      0010E2 C0 04            [24] 2181 	push	ar4
      0010E4 C0 01            [24] 2182 	push	ar1
      0010E6 C0 02            [24] 2183 	push	ar2
      0010E8 C0 03            [24] 2184 	push	ar3
      0010EA 74 71            [12] 2185 	mov	a,#___str_37
      0010EC C0 E0            [24] 2186 	push	acc
      0010EE 74 2A            [12] 2187 	mov	a,#(___str_37 >> 8)
      0010F0 C0 E0            [24] 2188 	push	acc
      0010F2 74 80            [12] 2189 	mov	a,#0x80
      0010F4 C0 E0            [24] 2190 	push	acc
      0010F6 12 1A 23         [24] 2191 	lcall	_printf
      0010F9 E5 81            [12] 2192 	mov	a,sp
      0010FB 24 FA            [12] 2193 	add	a,#0xfa
      0010FD F5 81            [12] 2194 	mov	sp,a
      0010FF D0 04            [24] 2195 	pop	ar4
      001101 D0 05            [24] 2196 	pop	ar5
                                   2197 ;	buffer.c:395: printf("BufferSize: %d \n\r", buffers_array[i].buff_size);
      001103 74 08            [12] 2198 	mov	a,#0x08
      001105 2C               [12] 2199 	add	a,r4
      001106 F5 82            [12] 2200 	mov	dpl,a
      001108 E4               [12] 2201 	clr	a
      001109 3D               [12] 2202 	addc	a,r5
      00110A F5 83            [12] 2203 	mov	dph,a
      00110C E0               [24] 2204 	movx	a,@dptr
      00110D FA               [12] 2205 	mov	r2,a
      00110E A3               [24] 2206 	inc	dptr
      00110F E0               [24] 2207 	movx	a,@dptr
      001110 FB               [12] 2208 	mov	r3,a
      001111 C0 05            [24] 2209 	push	ar5
      001113 C0 04            [24] 2210 	push	ar4
      001115 C0 02            [24] 2211 	push	ar2
      001117 C0 03            [24] 2212 	push	ar3
      001119 74 82            [12] 2213 	mov	a,#___str_38
      00111B C0 E0            [24] 2214 	push	acc
      00111D 74 2A            [12] 2215 	mov	a,#(___str_38 >> 8)
      00111F C0 E0            [24] 2216 	push	acc
      001121 74 80            [12] 2217 	mov	a,#0x80
      001123 C0 E0            [24] 2218 	push	acc
      001125 12 1A 23         [24] 2219 	lcall	_printf
      001128 E5 81            [12] 2220 	mov	a,sp
      00112A 24 FB            [12] 2221 	add	a,#0xfb
      00112C F5 81            [12] 2222 	mov	sp,a
      00112E D0 04            [24] 2223 	pop	ar4
      001130 D0 05            [24] 2224 	pop	ar5
                                   2225 ;	buffer.c:396: printf("TotalUsed: %d \n\r", buffers_array[i].num_char);
      001132 74 0A            [12] 2226 	mov	a,#0x0a
      001134 2C               [12] 2227 	add	a,r4
      001135 F5 82            [12] 2228 	mov	dpl,a
      001137 E4               [12] 2229 	clr	a
      001138 3D               [12] 2230 	addc	a,r5
      001139 F5 83            [12] 2231 	mov	dph,a
      00113B E0               [24] 2232 	movx	a,@dptr
      00113C FC               [12] 2233 	mov	r4,a
      00113D A3               [24] 2234 	inc	dptr
      00113E E0               [24] 2235 	movx	a,@dptr
      00113F FD               [12] 2236 	mov	r5,a
      001140 C0 04            [24] 2237 	push	ar4
      001142 C0 05            [24] 2238 	push	ar5
      001144 74 94            [12] 2239 	mov	a,#___str_39
      001146 C0 E0            [24] 2240 	push	acc
      001148 74 2A            [12] 2241 	mov	a,#(___str_39 >> 8)
      00114A C0 E0            [24] 2242 	push	acc
      00114C 74 80            [12] 2243 	mov	a,#0x80
      00114E C0 E0            [24] 2244 	push	acc
      001150 12 1A 23         [24] 2245 	lcall	_printf
      001153 E5 81            [12] 2246 	mov	a,sp
      001155 24 FB            [12] 2247 	add	a,#0xfb
      001157 F5 81            [12] 2248 	mov	sp,a
      001159 D0 06            [24] 2249 	pop	ar6
      00115B D0 07            [24] 2250 	pop	ar7
                                   2251 ;	buffer.c:389: for (int i = 0; i < program_stats.total_buffers; i++)
      00115D 0E               [12] 2252 	inc	r6
      00115E BE 00 01         [24] 2253 	cjne	r6,#0x00,00117$
      001161 0F               [12] 2254 	inc	r7
      001162                       2255 00117$:
      001162 02 10 15         [24] 2256 	ljmp	00103$
      001165                       2257 00101$:
                                   2258 ;	buffer.c:398: printf("***************************************\n\r");
      001165 74 A5            [12] 2259 	mov	a,#___str_40
      001167 C0 E0            [24] 2260 	push	acc
      001169 74 2A            [12] 2261 	mov	a,#(___str_40 >> 8)
      00116B C0 E0            [24] 2262 	push	acc
      00116D 74 80            [12] 2263 	mov	a,#0x80
      00116F C0 E0            [24] 2264 	push	acc
      001171 12 1A 23         [24] 2265 	lcall	_printf
      001174 15 81            [12] 2266 	dec	sp
      001176 15 81            [12] 2267 	dec	sp
      001178 15 81            [12] 2268 	dec	sp
                                   2269 ;	buffer.c:399: }
      00117A 22               [24] 2270 	ret
                                   2271 	.area CSEG    (CODE)
                                   2272 	.area CONST   (CODE)
                                   2273 	.area CONST   (CODE)
      0025A9                       2274 ___str_0:
      0025A9 42 75 66 66 65 72 20  2275 	.ascii "Buffer %d Freed ...."
             25 64 20 46 72 65 65
             64 20 2E 2E 2E 2E
      0025BD 0A                    2276 	.db 0x0a
      0025BE 0D                    2277 	.db 0x0d
      0025BF 00                    2278 	.db 0x00
                                   2279 	.area CSEG    (CODE)
                                   2280 	.area CONST   (CODE)
      0025C0                       2281 ___str_1:
      0025C0 4C 65 74 27 73 20 62  2282 	.ascii "Let's begin again.."
             65 67 69 6E 20 61 67
             61 69 6E 2E 2E
      0025D3 0A                    2283 	.db 0x0a
      0025D4 0D                    2284 	.db 0x0d
      0025D5 00                    2285 	.db 0x00
                                   2286 	.area CSEG    (CODE)
                                   2287 	.area CONST   (CODE)
      0025D6                       2288 ___str_2:
      0025D6 0A                    2289 	.db 0x0a
      0025D7 0D                    2290 	.db 0x0d
      0025D8 47 69 76 65 20 56 61  2291 	.ascii "Give Valid Buffer Number to delete(1-%d) in 3 digits"
             6C 69 64 20 42 75 66
             66 65 72 20 4E 75 6D
             62 65 72 20 74 6F 20
             64 65 6C 65 74 65 28
             31 2D 25 64 29 20 69
             6E 20 33 20 64 69 67
             69 74 73
      00260C 0A                    2292 	.db 0x0a
      00260D 0D                    2293 	.db 0x0d
      00260E 00                    2294 	.db 0x00
                                   2295 	.area CSEG    (CODE)
                                   2296 	.area CONST   (CODE)
      00260F                       2297 ___str_3:
      00260F 42 75 66 66 65 72 20  2298 	.ascii "Buffer %d Successfully Deleted.. "
             25 64 20 53 75 63 63
             65 73 73 66 75 6C 6C
             79 20 44 65 6C 65 74
             65 64 2E 2E 20
      002630 0A                    2299 	.db 0x0a
      002631 0D                    2300 	.db 0x0d
      002632 00                    2301 	.db 0x00
                                   2302 	.area CSEG    (CODE)
                                   2303 	.area CONST   (CODE)
      002633                       2304 ___str_4:
      002633 0A                    2305 	.db 0x0a
      002634 0A                    2306 	.db 0x0a
      002635 0D                    2307 	.db 0x0d
      002636 5E 5E 5E 5E 5E 5E 5E  2308 	.ascii "^^^^^^^^^^^^^^^^^^^-HEAP-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ "
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 2D 48
             45 41 50 2D 4D 45 4E
             55 2D 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             20
      00266F 0A                    2309 	.db 0x0a
      002670 0A                    2310 	.db 0x0a
      002671 0D                    2311 	.db 0x0d
      002672 00                    2312 	.db 0x00
                                   2313 	.area CSEG    (CODE)
                                   2314 	.area CONST   (CODE)
      002673                       2315 ___str_5:
      002673 59 6F 75 20 63 61 6E  2316 	.ascii "You can enter characters or use commands from below "
             20 65 6E 74 65 72 20
             63 68 61 72 61 63 74
             65 72 73 20 6F 72 20
             75 73 65 20 63 6F 6D
             6D 61 6E 64 73 20 66
             72 6F 6D 20 62 65 6C
             6F 77 20
      0026A7 0A                    2317 	.db 0x0a
      0026A8 0D                    2318 	.db 0x0d
      0026A9 00                    2319 	.db 0x00
                                   2320 	.area CSEG    (CODE)
                                   2321 	.area CONST   (CODE)
      0026AA                       2322 ___str_6:
      0026AA 27 3F 27 20 2D 3E 20  2323 	.ascii "'?' -> Show heap status, dump & clear Buffer 0 "
             53 68 6F 77 20 68 65
             61 70 20 73 74 61 74
             75 73 2C 20 64 75 6D
             70 20 26 20 63 6C 65
             61 72 20 42 75 66 66
             65 72 20 30 20
      0026D9 0A                    2324 	.db 0x0a
      0026DA 0D                    2325 	.db 0x0d
      0026DB 00                    2326 	.db 0x00
                                   2327 	.area CSEG    (CODE)
                                   2328 	.area CONST   (CODE)
      0026DC                       2329 ___str_7:
      0026DC 27 2B 27 20 2D 3E 20  2330 	.ascii "'+' -> Add a new Buffer"
             41 64 64 20 61 20 6E
             65 77 20 42 75 66 66
             65 72
      0026F3 0A                    2331 	.db 0x0a
      0026F4 0D                    2332 	.db 0x0d
      0026F5 00                    2333 	.db 0x00
                                   2334 	.area CSEG    (CODE)
                                   2335 	.area CONST   (CODE)
      0026F6                       2336 ___str_8:
      0026F6 27 2D 27 20 2D 3E 20  2337 	.ascii "'-' -> Delete existing Buffer"
             44 65 6C 65 74 65 20
             65 78 69 73 74 69 6E
             67 20 42 75 66 66 65
             72
      002713 0A                    2338 	.db 0x0a
      002714 0D                    2339 	.db 0x0d
      002715 00                    2340 	.db 0x00
                                   2341 	.area CSEG    (CODE)
                                   2342 	.area CONST   (CODE)
      002716                       2343 ___str_9:
      002716 27 3D 27 20 2D 3E 20  2344 	.ascii "'=' -> Dump Buffer 0 in hex"
             44 75 6D 70 20 42 75
             66 66 65 72 20 30 20
             69 6E 20 68 65 78
      002731 0A                    2345 	.db 0x0a
      002732 0D                    2346 	.db 0x0d
      002733 00                    2347 	.db 0x00
                                   2348 	.area CSEG    (CODE)
                                   2349 	.area CONST   (CODE)
      002734                       2350 ___str_10:
      002734 27 40 27 20 2D 3E 20  2351 	.ascii "'@' -> Free all Heap & begin again"
             46 72 65 65 20 61 6C
             6C 20 48 65 61 70 20
             26 20 62 65 67 69 6E
             20 61 67 61 69 6E
      002756 0A                    2352 	.db 0x0a
      002757 0A                    2353 	.db 0x0a
      002758 0D                    2354 	.db 0x0d
      002759 00                    2355 	.db 0x00
                                   2356 	.area CSEG    (CODE)
                                   2357 	.area CONST   (CODE)
      00275A                       2358 ___str_11:
      00275A 27 4D 27 20 2D 3E 20  2359 	.ascii "'M' -> Go to Main Menu "
             47 6F 20 74 6F 20 4D
             61 69 6E 20 4D 65 6E
             75 20
      002771 0A                    2360 	.db 0x0a
      002772 0A                    2361 	.db 0x0a
      002773 0D                    2362 	.db 0x0d
      002774 00                    2363 	.db 0x00
                                   2364 	.area CSEG    (CODE)
                                   2365 	.area CONST   (CODE)
      002775                       2366 ___str_12:
      002775 0A                    2367 	.db 0x0a
      002776 0D                    2368 	.db 0x0d
      002777 47 69 76 65 20 56 61  2369 	.ascii "Give Valid Buffer Size(030-300):"
             6C 69 64 20 42 75 66
             66 65 72 20 53 69 7A
             65 28 30 33 30 2D 33
             30 30 29 3A
      002797 00                    2370 	.db 0x00
                                   2371 	.area CSEG    (CODE)
                                   2372 	.area CONST   (CODE)
      002798                       2373 ___str_13:
      002798 46 61 69 6C 65 64 2C  2374 	.ascii "Failed, give smaller buffer"
             20 67 69 76 65 20 73
             6D 61 6C 6C 65 72 20
             62 75 66 66 65 72
      0027B3 0A                    2375 	.db 0x0a
      0027B4 0D                    2376 	.db 0x0d
      0027B5 00                    2377 	.db 0x00
                                   2378 	.area CSEG    (CODE)
                                   2379 	.area CONST   (CODE)
      0027B6                       2380 ___str_14:
      0027B6 0A                    2381 	.db 0x0a
      0027B7 0A                    2382 	.db 0x0a
      0027B8 0D                    2383 	.db 0x0d
      0027B9 23 23 23 23 53 55 43  2384 	.ascii "####SUCCESS, BUFFER Created####"
             43 45 53 53 2C 20 42
             55 46 46 45 52 20 43
             72 65 61 74 65 64 23
             23 23 23
      0027D8 0A                    2385 	.db 0x0a
      0027D9 0A                    2386 	.db 0x0a
      0027DA 0D                    2387 	.db 0x0d
      0027DB 00                    2388 	.db 0x00
                                   2389 	.area CSEG    (CODE)
                                   2390 	.area CONST   (CODE)
      0027DC                       2391 ___str_15:
      0027DC 4E 6F 20 48 65 61 70  2392 	.ascii "No Heap Memory Left, Delete some buffers..."
             20 4D 65 6D 6F 72 79
             20 4C 65 66 74 2C 20
             44 65 6C 65 74 65 20
             73 6F 6D 65 20 62 75
             66 66 65 72 73 2E 2E
             2E
      002807 0A                    2393 	.db 0x0a
      002808 0D                    2394 	.db 0x0d
      002809 00                    2395 	.db 0x00
                                   2396 	.area CSEG    (CODE)
                                   2397 	.area CONST   (CODE)
      00280A                       2398 ___str_16:
      00280A 0A                    2399 	.db 0x0a
      00280B 0D                    2400 	.db 0x0d
      00280C 47 69 76 65 20 56 61  2401 	.ascii "Give Valid Initial Buffer Size(0048-4800):"
             6C 69 64 20 49 6E 69
             74 69 61 6C 20 42 75
             66 66 65 72 20 53 69
             7A 65 28 30 30 34 38
             2D 34 38 30 30 29 3A
      002836 00                    2402 	.db 0x00
                                   2403 	.area CSEG    (CODE)
                                   2404 	.area CONST   (CODE)
      002837                       2405 ___str_17:
      002837 0A                    2406 	.db 0x0a
      002838 0D                    2407 	.db 0x0d
      002839 23 23 23 23 46 41 49  2408 	.ascii "####FAIL, Please give a smaller buffer size####"
             4C 2C 20 50 6C 65 61
             73 65 20 67 69 76 65
             20 61 20 73 6D 61 6C
             6C 65 72 20 62 75 66
             66 65 72 20 73 69 7A
             65 23 23 23 23
      002868 0A                    2409 	.db 0x0a
      002869 0A                    2410 	.db 0x0a
      00286A 0D                    2411 	.db 0x0d
      00286B 00                    2412 	.db 0x00
                                   2413 	.area CSEG    (CODE)
                                   2414 	.area CONST   (CODE)
      00286C                       2415 ___str_18:
      00286C 0A                    2416 	.db 0x0a
      00286D 0A                    2417 	.db 0x0a
      00286E 0D                    2418 	.db 0x0d
      00286F 23 23 23 23 53 55 43  2419 	.ascii "####SUCCESS, INITIAL BUFFERS Created####"
             43 45 53 53 2C 20 49
             4E 49 54 49 41 4C 20
             42 55 46 46 45 52 53
             20 43 72 65 61 74 65
             64 23 23 23 23
      002897 0A                    2420 	.db 0x0a
      002898 0A                    2421 	.db 0x0a
      002899 0D                    2422 	.db 0x0d
      00289A 00                    2423 	.db 0x00
                                   2424 	.area CSEG    (CODE)
                                   2425 	.area CONST   (CODE)
      00289B                       2426 ___str_19:
      00289B 0A                    2427 	.db 0x0a
      00289C 0A                    2428 	.db 0x0a
      00289D 0D                    2429 	.db 0x0d
      00289E 2A 2A 2A 2A 2A 2A 2A  2430 	.ascii "***********Buffer-0-Contents*********** "
             2A 2A 2A 2A 42 75 66
             66 65 72 2D 30 2D 43
             6F 6E 74 65 6E 74 73
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 20
      0028C6 0A                    2431 	.db 0x0a
      0028C7 0D                    2432 	.db 0x0d
      0028C8 00                    2433 	.db 0x00
                                   2434 	.area CSEG    (CODE)
                                   2435 	.area CONST   (CODE)
      0028C9                       2436 ___str_20:
      0028C9 0A                    2437 	.db 0x0a
      0028CA 0D                    2438 	.db 0x0d
      0028CB 00                    2439 	.db 0x00
                                   2440 	.area CSEG    (CODE)
                                   2441 	.area CONST   (CODE)
      0028CC                       2442 ___str_21:
      0028CC 0A                    2443 	.db 0x0a
      0028CD 0A                    2444 	.db 0x0a
      0028CE 0D                    2445 	.db 0x0d
      0028CF 00                    2446 	.db 0x00
                                   2447 	.area CSEG    (CODE)
                                   2448 	.area CONST   (CODE)
      0028D0                       2449 ___str_22:
      0028D0 42 75 66 66 65 72 30  2450 	.ascii "Buffer0 is Empty...."
             20 69 73 20 45 6D 70
             74 79 2E 2E 2E 2E
      0028E4 0A                    2451 	.db 0x0a
      0028E5 0D                    2452 	.db 0x0d
      0028E6 00                    2453 	.db 0x00
                                   2454 	.area CSEG    (CODE)
                                   2455 	.area CONST   (CODE)
      0028E7                       2456 ___str_23:
      0028E7 0A                    2457 	.db 0x0a
      0028E8 0D                    2458 	.db 0x0d
      0028E9 2D 2D 2D 2D 2D 2D 2D  2459 	.ascii "-------------------------HEXDUMP----------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 48 45 58
             44 55 4D 50 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D
      002925 2D 2D 2D 2D           2460 	.ascii "----"
      002929 00                    2461 	.db 0x00
                                   2462 	.area CSEG    (CODE)
                                   2463 	.area CONST   (CODE)
      00292A                       2464 ___str_24:
      00292A 0A                    2465 	.db 0x0a
      00292B 0D                    2466 	.db 0x0d
      00292C 20 20 20 20 41 44 44  2467 	.ascii "    ADDR: +0 +1 +2 +3 +4 +5 +6 +7 +8 +9 +A +B +C +D +E +F "
             52 3A 20 2B 30 20 2B
             31 20 2B 32 20 2B 33
             20 2B 34 20 2B 35 20
             2B 36 20 2B 37 20 2B
             38 20 2B 39 20 2B 41
             20 2B 42 20 2B 43 20
             2B 44 20 2B 45 20 2B
             46 20
      002966 0A                    2468 	.db 0x0a
      002967 0D                    2469 	.db 0x0d
      002968 00                    2470 	.db 0x00
                                   2471 	.area CSEG    (CODE)
                                   2472 	.area CONST   (CODE)
      002969                       2473 ___str_25:
      002969 0A                    2474 	.db 0x0a
      00296A 0D                    2475 	.db 0x0d
      00296B 25 70 3A 20           2476 	.ascii "%p: "
      00296F 00                    2477 	.db 0x00
                                   2478 	.area CSEG    (CODE)
                                   2479 	.area CONST   (CODE)
      002970                       2480 ___str_26:
      002970 25 78 20              2481 	.ascii "%x "
      002973 00                    2482 	.db 0x00
                                   2483 	.area CSEG    (CODE)
                                   2484 	.area CONST   (CODE)
      002974                       2485 ___str_27:
      002974 42 75 66 66 65 72 20  2486 	.ascii "Buffer 0 is empty..."
             30 20 69 73 20 65 6D
             70 74 79 2E 2E 2E
      002988 0A                    2487 	.db 0x0a
      002989 0D                    2488 	.db 0x0d
      00298A 00                    2489 	.db 0x00
                                   2490 	.area CSEG    (CODE)
                                   2491 	.area CONST   (CODE)
      00298B                       2492 ___str_28:
      00298B 0A                    2493 	.db 0x0a
      00298C 0D                    2494 	.db 0x0d
      00298D 2A 2A 2A 2A 2A 2A 2A  2495 	.ascii "****************HEAP*STATS*************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 48 45 41 50 2A
             53 54 41 54 53 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A
      0029B4 0A                    2496 	.db 0x0a
      0029B5 0D                    2497 	.db 0x0d
      0029B6 00                    2498 	.db 0x00
                                   2499 	.area CSEG    (CODE)
                                   2500 	.area CONST   (CODE)
      0029B7                       2501 ___str_29:
      0029B7 54 6F 74 61 6C 20 48  2502 	.ascii "Total Heap Size: %d "
             65 61 70 20 53 69 7A
             65 3A 20 25 64 20
      0029CB 0A                    2503 	.db 0x0a
      0029CC 0D                    2504 	.db 0x0d
      0029CD 00                    2505 	.db 0x00
                                   2506 	.area CSEG    (CODE)
                                   2507 	.area CONST   (CODE)
      0029CE                       2508 ___str_30:
      0029CE 41 6C 6C 6F 63 61 74  2509 	.ascii "Allocated Heap Size: %d "
             65 64 20 48 65 61 70
             20 53 69 7A 65 3A 20
             25 64 20
      0029E6 0A                    2510 	.db 0x0a
      0029E7 0D                    2511 	.db 0x0d
      0029E8 00                    2512 	.db 0x00
                                   2513 	.area CSEG    (CODE)
                                   2514 	.area CONST   (CODE)
      0029E9                       2515 ___str_31:
      0029E9 41 6C 6C 20 43 68 61  2516 	.ascii "All Chars: %d "
             72 73 3A 20 25 64 20
      0029F7 0A                    2517 	.db 0x0a
      0029F8 0D                    2518 	.db 0x0d
      0029F9 00                    2519 	.db 0x00
                                   2520 	.area CSEG    (CODE)
                                   2521 	.area CONST   (CODE)
      0029FA                       2522 ___str_32:
      0029FA 53 74 6F 72 61 67 65  2523 	.ascii "Storage Chars: %d "
             20 43 68 61 72 73 3A
             20 25 64 20
      002A0C 0A                    2524 	.db 0x0a
      002A0D 0D                    2525 	.db 0x0d
      002A0E 00                    2526 	.db 0x00
                                   2527 	.area CSEG    (CODE)
                                   2528 	.area CONST   (CODE)
      002A0F                       2529 ___str_33:
      002A0F 54 6F 74 61 6C 20 42  2530 	.ascii "Total Buffers: %d "
             75 66 66 65 72 73 3A
             20 25 64 20
      002A21 0A                    2531 	.db 0x0a
      002A22 0D                    2532 	.db 0x0d
      002A23 00                    2533 	.db 0x00
                                   2534 	.area CSEG    (CODE)
                                   2535 	.area CONST   (CODE)
      002A24                       2536 ___str_34:
      002A24 2A 2A 2A 2A 2A 2A 2A  2537 	.ascii "****************BUFFER*%d***************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 42 55 46 46 45
             52 2A 25 64 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A
      002A4C 0A                    2538 	.db 0x0a
      002A4D 0D                    2539 	.db 0x0d
      002A4E 00                    2540 	.db 0x00
                                   2541 	.area CSEG    (CODE)
                                   2542 	.area CONST   (CODE)
      002A4F                       2543 ___str_35:
      002A4F 42 75 66 66 65 72 23  2544 	.ascii "Buffer#: %d "
             3A 20 25 64 20
      002A5B 0A                    2545 	.db 0x0a
      002A5C 0D                    2546 	.db 0x0d
      002A5D 00                    2547 	.db 0x00
                                   2548 	.area CSEG    (CODE)
                                   2549 	.area CONST   (CODE)
      002A5E                       2550 ___str_36:
      002A5E 42 75 66 66 65 72 53  2551 	.ascii "BufferStart: %p "
             74 61 72 74 3A 20 25
             70 20
      002A6E 0A                    2552 	.db 0x0a
      002A6F 0D                    2553 	.db 0x0d
      002A70 00                    2554 	.db 0x00
                                   2555 	.area CSEG    (CODE)
                                   2556 	.area CONST   (CODE)
      002A71                       2557 ___str_37:
      002A71 42 75 66 66 65 72 45  2558 	.ascii "BufferEnd: %p "
             6E 64 3A 20 25 70 20
      002A7F 0A                    2559 	.db 0x0a
      002A80 0D                    2560 	.db 0x0d
      002A81 00                    2561 	.db 0x00
                                   2562 	.area CSEG    (CODE)
                                   2563 	.area CONST   (CODE)
      002A82                       2564 ___str_38:
      002A82 42 75 66 66 65 72 53  2565 	.ascii "BufferSize: %d "
             69 7A 65 3A 20 25 64
             20
      002A91 0A                    2566 	.db 0x0a
      002A92 0D                    2567 	.db 0x0d
      002A93 00                    2568 	.db 0x00
                                   2569 	.area CSEG    (CODE)
                                   2570 	.area CONST   (CODE)
      002A94                       2571 ___str_39:
      002A94 54 6F 74 61 6C 55 73  2572 	.ascii "TotalUsed: %d "
             65 64 3A 20 25 64 20
      002AA2 0A                    2573 	.db 0x0a
      002AA3 0D                    2574 	.db 0x0d
      002AA4 00                    2575 	.db 0x00
                                   2576 	.area CSEG    (CODE)
                                   2577 	.area CONST   (CODE)
      002AA5                       2578 ___str_40:
      002AA5 2A 2A 2A 2A 2A 2A 2A  2579 	.ascii "***************************************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A
      002ACC 0A                    2580 	.db 0x0a
      002ACD 0D                    2581 	.db 0x0d
      002ACE 00                    2582 	.db 0x00
                                   2583 	.area CSEG    (CODE)
                                   2584 	.area XINIT   (CODE)
                                   2585 	.area CABS    (ABS,CODE)
