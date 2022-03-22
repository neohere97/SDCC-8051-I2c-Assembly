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
      00001C                         80 _program_stats::
      00001C                         81 	.ds 10
      000026                         82 _buffers_array::
      000026                         83 	.ds 300
      000152                         84 _create_new_buffer_buff_65536_57:
      000152                         85 	.ds 12
      00015E                         86 _create_initial_buffers_buff_65537_63:
      00015E                         87 	.ds 12
      00016A                         88 _create_initial_buffers_buff1_65537_63:
      00016A                         89 	.ds 12
      000176                         90 _dump_buff_zero_ascii_j_65536_79:
      000176                         91 	.ds 2
      000178                         92 _dump_buff_zero_hex_j_131073_87:
      000178                         93 	.ds 2
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
      00079A                        135 _user_interface_heap:
                           000007   136 	ar7 = 0x07
                           000006   137 	ar6 = 0x06
                           000005   138 	ar5 = 0x05
                           000004   139 	ar4 = 0x04
                           000003   140 	ar3 = 0x03
                           000002   141 	ar2 = 0x02
                           000001   142 	ar1 = 0x01
                           000000   143 	ar0 = 0x00
                                    144 ;	buffer.c:47: create_initial_buffers();
      00079A 12 0C 2A         [24]  145 	lcall	_create_initial_buffers
                                    146 ;	buffer.c:48: print_all_buffers();
      00079D 12 12 3D         [24]  147 	lcall	_print_all_buffers
                                    148 ;	buffer.c:49: buffer_input_loop();
                                    149 ;	buffer.c:50: }
      0007A0 02 0E 01         [24]  150 	ljmp	_buffer_input_loop
                                    151 ;------------------------------------------------------------
                                    152 ;Allocation info for local variables in function 'at_clear_all_buffers'
                                    153 ;------------------------------------------------------------
                                    154 ;i                         Allocated with name '_at_clear_all_buffers_i_131072_48'
                                    155 ;------------------------------------------------------------
                                    156 ;	buffer.c:58: void at_clear_all_buffers()
                                    157 ;	-----------------------------------------
                                    158 ;	 function at_clear_all_buffers
                                    159 ;	-----------------------------------------
      0007A3                        160 _at_clear_all_buffers:
                                    161 ;	buffer.c:60: for (int i = 0; i < program_stats.total_buffers; i++)
      0007A3 7E 00            [12]  162 	mov	r6,#0x00
      0007A5 7F 00            [12]  163 	mov	r7,#0x00
      0007A7                        164 00103$:
      0007A7 90 00 24         [24]  165 	mov	dptr,#(_program_stats + 0x0008)
      0007AA E0               [24]  166 	movx	a,@dptr
      0007AB FC               [12]  167 	mov	r4,a
      0007AC A3               [24]  168 	inc	dptr
      0007AD E0               [24]  169 	movx	a,@dptr
      0007AE FD               [12]  170 	mov	r5,a
      0007AF C3               [12]  171 	clr	c
      0007B0 EE               [12]  172 	mov	a,r6
      0007B1 9C               [12]  173 	subb	a,r4
      0007B2 EF               [12]  174 	mov	a,r7
      0007B3 64 80            [12]  175 	xrl	a,#0x80
      0007B5 8D F0            [24]  176 	mov	b,r5
      0007B7 63 F0 80         [24]  177 	xrl	b,#0x80
      0007BA 95 F0            [12]  178 	subb	a,b
      0007BC 50 61            [24]  179 	jnc	00101$
                                    180 ;	buffer.c:62: free(buffers_array[i].buffer_start);
      0007BE 90 15 2F         [24]  181 	mov	dptr,#__mulint_PARM_2
      0007C1 EE               [12]  182 	mov	a,r6
      0007C2 F0               [24]  183 	movx	@dptr,a
      0007C3 EF               [12]  184 	mov	a,r7
      0007C4 A3               [24]  185 	inc	dptr
      0007C5 F0               [24]  186 	movx	@dptr,a
      0007C6 90 00 0C         [24]  187 	mov	dptr,#0x000c
      0007C9 C0 07            [24]  188 	push	ar7
      0007CB C0 06            [24]  189 	push	ar6
      0007CD 12 21 C0         [24]  190 	lcall	__mulint
      0007D0 AC 82            [24]  191 	mov	r4,dpl
      0007D2 AD 83            [24]  192 	mov	r5,dph
      0007D4 EC               [12]  193 	mov	a,r4
      0007D5 24 26            [12]  194 	add	a,#_buffers_array
      0007D7 FC               [12]  195 	mov	r4,a
      0007D8 ED               [12]  196 	mov	a,r5
      0007D9 34 00            [12]  197 	addc	a,#(_buffers_array >> 8)
      0007DB FD               [12]  198 	mov	r5,a
      0007DC 8C 82            [24]  199 	mov	dpl,r4
      0007DE 8D 83            [24]  200 	mov	dph,r5
      0007E0 A3               [24]  201 	inc	dptr
      0007E1 A3               [24]  202 	inc	dptr
      0007E2 E0               [24]  203 	movx	a,@dptr
      0007E3 FB               [12]  204 	mov	r3,a
      0007E4 A3               [24]  205 	inc	dptr
      0007E5 E0               [24]  206 	movx	a,@dptr
      0007E6 FC               [12]  207 	mov	r4,a
      0007E7 A3               [24]  208 	inc	dptr
      0007E8 E0               [24]  209 	movx	a,@dptr
      0007E9 FD               [12]  210 	mov	r5,a
      0007EA 8B 82            [24]  211 	mov	dpl,r3
      0007EC 8C 83            [24]  212 	mov	dph,r4
      0007EE 8D F0            [24]  213 	mov	b,r5
      0007F0 12 1E 35         [24]  214 	lcall	_free
      0007F3 D0 06            [24]  215 	pop	ar6
      0007F5 D0 07            [24]  216 	pop	ar7
                                    217 ;	buffer.c:63: printf("Buffer %d Freed ....\n\r", i);
      0007F7 C0 07            [24]  218 	push	ar7
      0007F9 C0 06            [24]  219 	push	ar6
      0007FB C0 06            [24]  220 	push	ar6
      0007FD C0 07            [24]  221 	push	ar7
      0007FF 74 CD            [12]  222 	mov	a,#___str_0
      000801 C0 E0            [24]  223 	push	acc
      000803 74 2D            [12]  224 	mov	a,#(___str_0 >> 8)
      000805 C0 E0            [24]  225 	push	acc
      000807 74 80            [12]  226 	mov	a,#0x80
      000809 C0 E0            [24]  227 	push	acc
      00080B 12 22 2E         [24]  228 	lcall	_printf
      00080E E5 81            [12]  229 	mov	a,sp
      000810 24 FB            [12]  230 	add	a,#0xfb
      000812 F5 81            [12]  231 	mov	sp,a
      000814 D0 06            [24]  232 	pop	ar6
      000816 D0 07            [24]  233 	pop	ar7
                                    234 ;	buffer.c:60: for (int i = 0; i < program_stats.total_buffers; i++)
      000818 0E               [12]  235 	inc	r6
      000819 BE 00 8B         [24]  236 	cjne	r6,#0x00,00103$
      00081C 0F               [12]  237 	inc	r7
      00081D 80 88            [24]  238 	sjmp	00103$
      00081F                        239 00101$:
                                    240 ;	buffer.c:65: printf("Let's begin again..\n\r");
      00081F 74 E4            [12]  241 	mov	a,#___str_1
      000821 C0 E0            [24]  242 	push	acc
      000823 74 2D            [12]  243 	mov	a,#(___str_1 >> 8)
      000825 C0 E0            [24]  244 	push	acc
      000827 74 80            [12]  245 	mov	a,#0x80
      000829 C0 E0            [24]  246 	push	acc
      00082B 12 22 2E         [24]  247 	lcall	_printf
      00082E 15 81            [12]  248 	dec	sp
      000830 15 81            [12]  249 	dec	sp
      000832 15 81            [12]  250 	dec	sp
                                    251 ;	buffer.c:66: user_interface_heap();
                                    252 ;	buffer.c:67: }
      000834 02 07 9A         [24]  253 	ljmp	_user_interface_heap
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
      000837                        269 _delete_buffer:
                                    270 ;	buffer.c:79: get_del_num:
      000837                        271 00101$:
                                    272 ;	buffer.c:80: printf("\n\rGive Valid Buffer Number to delete(1-%d) in 3 digits\n\r", (program_stats.total_buffers - 1));
      000837 90 00 24         [24]  273 	mov	dptr,#(_program_stats + 0x0008)
      00083A E0               [24]  274 	movx	a,@dptr
      00083B FE               [12]  275 	mov	r6,a
      00083C A3               [24]  276 	inc	dptr
      00083D E0               [24]  277 	movx	a,@dptr
      00083E FF               [12]  278 	mov	r7,a
      00083F 1E               [12]  279 	dec	r6
      000840 BE FF 01         [24]  280 	cjne	r6,#0xff,00139$
      000843 1F               [12]  281 	dec	r7
      000844                        282 00139$:
      000844 C0 06            [24]  283 	push	ar6
      000846 C0 07            [24]  284 	push	ar7
      000848 74 FA            [12]  285 	mov	a,#___str_2
      00084A C0 E0            [24]  286 	push	acc
      00084C 74 2D            [12]  287 	mov	a,#(___str_2 >> 8)
      00084E C0 E0            [24]  288 	push	acc
      000850 74 80            [12]  289 	mov	a,#0x80
      000852 C0 E0            [24]  290 	push	acc
      000854 12 22 2E         [24]  291 	lcall	_printf
      000857 E5 81            [12]  292 	mov	a,sp
      000859 24 FB            [12]  293 	add	a,#0xfb
      00085B F5 81            [12]  294 	mov	sp,a
                                    295 ;	buffer.c:81: buff_number = get_number(3);
      00085D 90 00 03         [24]  296 	mov	dptr,#0x0003
      000860 12 04 0B         [24]  297 	lcall	_get_number
      000863 AE 82            [24]  298 	mov	r6,dpl
      000865 AF 83            [24]  299 	mov	r7,dph
                                    300 ;	buffer.c:83: if (buff_number > 0 && buff_number < program_stats.total_buffers)
      000867 C3               [12]  301 	clr	c
      000868 E4               [12]  302 	clr	a
      000869 9E               [12]  303 	subb	a,r6
      00086A 74 80            [12]  304 	mov	a,#(0x00 ^ 0x80)
      00086C 8F F0            [24]  305 	mov	b,r7
      00086E 63 F0 80         [24]  306 	xrl	b,#0x80
      000871 95 F0            [12]  307 	subb	a,b
      000873 50 C2            [24]  308 	jnc	00101$
      000875 90 00 24         [24]  309 	mov	dptr,#(_program_stats + 0x0008)
      000878 E0               [24]  310 	movx	a,@dptr
      000879 FC               [12]  311 	mov	r4,a
      00087A A3               [24]  312 	inc	dptr
      00087B E0               [24]  313 	movx	a,@dptr
      00087C FD               [12]  314 	mov	r5,a
      00087D C3               [12]  315 	clr	c
      00087E EE               [12]  316 	mov	a,r6
      00087F 9C               [12]  317 	subb	a,r4
      000880 EF               [12]  318 	mov	a,r7
      000881 64 80            [12]  319 	xrl	a,#0x80
      000883 8D F0            [24]  320 	mov	b,r5
      000885 63 F0 80         [24]  321 	xrl	b,#0x80
      000888 95 F0            [12]  322 	subb	a,b
      00088A 50 AB            [24]  323 	jnc	00101$
                                    324 ;	buffer.c:87: buff_to_free = buffers_array[buff_number].buffer_start;
      00088C 90 15 2F         [24]  325 	mov	dptr,#__mulint_PARM_2
      00088F EE               [12]  326 	mov	a,r6
      000890 F0               [24]  327 	movx	@dptr,a
      000891 EF               [12]  328 	mov	a,r7
      000892 A3               [24]  329 	inc	dptr
      000893 F0               [24]  330 	movx	@dptr,a
      000894 90 00 0C         [24]  331 	mov	dptr,#0x000c
      000897 C0 07            [24]  332 	push	ar7
      000899 C0 06            [24]  333 	push	ar6
      00089B 12 21 C0         [24]  334 	lcall	__mulint
      00089E AC 82            [24]  335 	mov	r4,dpl
      0008A0 AD 83            [24]  336 	mov	r5,dph
      0008A2 D0 06            [24]  337 	pop	ar6
      0008A4 D0 07            [24]  338 	pop	ar7
      0008A6 EC               [12]  339 	mov	a,r4
      0008A7 24 26            [12]  340 	add	a,#_buffers_array
      0008A9 FC               [12]  341 	mov	r4,a
      0008AA ED               [12]  342 	mov	a,r5
      0008AB 34 00            [12]  343 	addc	a,#(_buffers_array >> 8)
      0008AD FD               [12]  344 	mov	r5,a
      0008AE 8C 82            [24]  345 	mov	dpl,r4
      0008B0 8D 83            [24]  346 	mov	dph,r5
      0008B2 A3               [24]  347 	inc	dptr
      0008B3 A3               [24]  348 	inc	dptr
      0008B4 E0               [24]  349 	movx	a,@dptr
      0008B5 F5 14            [12]  350 	mov	_delete_buffer_sloc2_1_0,a
      0008B7 A3               [24]  351 	inc	dptr
      0008B8 E0               [24]  352 	movx	a,@dptr
      0008B9 F5 15            [12]  353 	mov	(_delete_buffer_sloc2_1_0 + 1),a
      0008BB A3               [24]  354 	inc	dptr
      0008BC E0               [24]  355 	movx	a,@dptr
      0008BD F5 16            [12]  356 	mov	(_delete_buffer_sloc2_1_0 + 2),a
                                    357 ;	buffer.c:88: buffer_freed_size = buffers_array[buff_number].buff_size;
      0008BF 74 08            [12]  358 	mov	a,#0x08
      0008C1 2C               [12]  359 	add	a,r4
      0008C2 F5 82            [12]  360 	mov	dpl,a
      0008C4 E4               [12]  361 	clr	a
      0008C5 3D               [12]  362 	addc	a,r5
      0008C6 F5 83            [12]  363 	mov	dph,a
      0008C8 E0               [24]  364 	movx	a,@dptr
      0008C9 FC               [12]  365 	mov	r4,a
      0008CA A3               [24]  366 	inc	dptr
      0008CB E0               [24]  367 	movx	a,@dptr
      0008CC FD               [12]  368 	mov	r5,a
                                    369 ;	buffer.c:90: for (int i = 0; i < (program_stats.total_buffers - 1); i++)
      0008CD E4               [12]  370 	clr	a
      0008CE F5 10            [12]  371 	mov	_delete_buffer_sloc0_1_0,a
      0008D0 F5 11            [12]  372 	mov	(_delete_buffer_sloc0_1_0 + 1),a
      0008D2                        373 00110$:
      0008D2 C0 04            [24]  374 	push	ar4
      0008D4 C0 05            [24]  375 	push	ar5
      0008D6 90 00 24         [24]  376 	mov	dptr,#(_program_stats + 0x0008)
      0008D9 E0               [24]  377 	movx	a,@dptr
      0008DA F5 12            [12]  378 	mov	_delete_buffer_sloc1_1_0,a
      0008DC A3               [24]  379 	inc	dptr
      0008DD E0               [24]  380 	movx	a,@dptr
      0008DE F5 13            [12]  381 	mov	(_delete_buffer_sloc1_1_0 + 1),a
      0008E0 E5 12            [12]  382 	mov	a,_delete_buffer_sloc1_1_0
      0008E2 24 FF            [12]  383 	add	a,#0xff
      0008E4 F8               [12]  384 	mov	r0,a
      0008E5 E5 13            [12]  385 	mov	a,(_delete_buffer_sloc1_1_0 + 1)
      0008E7 34 FF            [12]  386 	addc	a,#0xff
      0008E9 FD               [12]  387 	mov	r5,a
      0008EA C3               [12]  388 	clr	c
      0008EB E5 10            [12]  389 	mov	a,_delete_buffer_sloc0_1_0
      0008ED 98               [12]  390 	subb	a,r0
      0008EE E5 11            [12]  391 	mov	a,(_delete_buffer_sloc0_1_0 + 1)
      0008F0 64 80            [12]  392 	xrl	a,#0x80
      0008F2 8D F0            [24]  393 	mov	b,r5
      0008F4 63 F0 80         [24]  394 	xrl	b,#0x80
      0008F7 95 F0            [12]  395 	subb	a,b
      0008F9 D0 05            [24]  396 	pop	ar5
      0008FB D0 04            [24]  397 	pop	ar4
      0008FD 40 03            [24]  398 	jc	00142$
      0008FF 02 09 B0         [24]  399 	ljmp	00104$
      000902                        400 00142$:
                                    401 ;	buffer.c:92: if (i >= buff_number)
      000902 C3               [12]  402 	clr	c
      000903 E5 10            [12]  403 	mov	a,_delete_buffer_sloc0_1_0
      000905 9E               [12]  404 	subb	a,r6
      000906 E5 11            [12]  405 	mov	a,(_delete_buffer_sloc0_1_0 + 1)
      000908 64 80            [12]  406 	xrl	a,#0x80
      00090A 8F F0            [24]  407 	mov	b,r7
      00090C 63 F0 80         [24]  408 	xrl	b,#0x80
      00090F 95 F0            [12]  409 	subb	a,b
      000911 50 03            [24]  410 	jnc	00143$
      000913 02 09 A5         [24]  411 	ljmp	00111$
      000916                        412 00143$:
                                    413 ;	buffer.c:94: buffers_array[i + 1].buffer_num = i;
      000916 C0 04            [24]  414 	push	ar4
      000918 C0 05            [24]  415 	push	ar5
      00091A 90 15 2F         [24]  416 	mov	dptr,#__mulint_PARM_2
      00091D 74 01            [12]  417 	mov	a,#0x01
      00091F 25 10            [12]  418 	add	a,_delete_buffer_sloc0_1_0
      000921 F0               [24]  419 	movx	@dptr,a
      000922 E4               [12]  420 	clr	a
      000923 35 11            [12]  421 	addc	a,(_delete_buffer_sloc0_1_0 + 1)
      000925 A3               [24]  422 	inc	dptr
      000926 F0               [24]  423 	movx	@dptr,a
      000927 90 00 0C         [24]  424 	mov	dptr,#0x000c
      00092A C0 07            [24]  425 	push	ar7
      00092C C0 06            [24]  426 	push	ar6
      00092E C0 04            [24]  427 	push	ar4
      000930 12 21 C0         [24]  428 	lcall	__mulint
      000933 A8 82            [24]  429 	mov	r0,dpl
      000935 AD 83            [24]  430 	mov	r5,dph
      000937 D0 04            [24]  431 	pop	ar4
      000939 E8               [12]  432 	mov	a,r0
      00093A 24 26            [12]  433 	add	a,#_buffers_array
      00093C F5 82            [12]  434 	mov	dpl,a
      00093E ED               [12]  435 	mov	a,r5
      00093F 34 00            [12]  436 	addc	a,#(_buffers_array >> 8)
      000941 F5 83            [12]  437 	mov	dph,a
      000943 E5 10            [12]  438 	mov	a,_delete_buffer_sloc0_1_0
      000945 F0               [24]  439 	movx	@dptr,a
      000946 E5 11            [12]  440 	mov	a,(_delete_buffer_sloc0_1_0 + 1)
      000948 A3               [24]  441 	inc	dptr
      000949 F0               [24]  442 	movx	@dptr,a
                                    443 ;	buffer.c:95: buffers_array[i] = buffers_array[i + 1];
      00094A 90 15 2F         [24]  444 	mov	dptr,#__mulint_PARM_2
      00094D E5 10            [12]  445 	mov	a,_delete_buffer_sloc0_1_0
      00094F F0               [24]  446 	movx	@dptr,a
      000950 E5 11            [12]  447 	mov	a,(_delete_buffer_sloc0_1_0 + 1)
      000952 A3               [24]  448 	inc	dptr
      000953 F0               [24]  449 	movx	@dptr,a
      000954 90 00 0C         [24]  450 	mov	dptr,#0x000c
      000957 C0 05            [24]  451 	push	ar5
      000959 C0 00            [24]  452 	push	ar0
      00095B 12 21 C0         [24]  453 	lcall	__mulint
      00095E AB 82            [24]  454 	mov	r3,dpl
      000960 AC 83            [24]  455 	mov	r4,dph
      000962 D0 00            [24]  456 	pop	ar0
      000964 D0 05            [24]  457 	pop	ar5
      000966 EB               [12]  458 	mov	a,r3
      000967 24 26            [12]  459 	add	a,#_buffers_array
      000969 FB               [12]  460 	mov	r3,a
      00096A EC               [12]  461 	mov	a,r4
      00096B 34 00            [12]  462 	addc	a,#(_buffers_array >> 8)
      00096D FC               [12]  463 	mov	r4,a
      00096E 7A 00            [12]  464 	mov	r2,#0x00
      000970 E8               [12]  465 	mov	a,r0
      000971 24 26            [12]  466 	add	a,#_buffers_array
      000973 F8               [12]  467 	mov	r0,a
      000974 ED               [12]  468 	mov	a,r5
      000975 34 00            [12]  469 	addc	a,#(_buffers_array >> 8)
      000977 FD               [12]  470 	mov	r5,a
      000978 90 15 1E         [24]  471 	mov	dptr,#___memcpy_PARM_2
      00097B E8               [12]  472 	mov	a,r0
      00097C F0               [24]  473 	movx	@dptr,a
      00097D ED               [12]  474 	mov	a,r5
      00097E A3               [24]  475 	inc	dptr
      00097F F0               [24]  476 	movx	@dptr,a
      000980 E4               [12]  477 	clr	a
      000981 A3               [24]  478 	inc	dptr
      000982 F0               [24]  479 	movx	@dptr,a
      000983 90 15 21         [24]  480 	mov	dptr,#___memcpy_PARM_3
      000986 74 0C            [12]  481 	mov	a,#0x0c
      000988 F0               [24]  482 	movx	@dptr,a
      000989 E4               [12]  483 	clr	a
      00098A A3               [24]  484 	inc	dptr
      00098B F0               [24]  485 	movx	@dptr,a
      00098C 8B 82            [24]  486 	mov	dpl,r3
      00098E 8C 83            [24]  487 	mov	dph,r4
      000990 8A F0            [24]  488 	mov	b,r2
      000992 C0 05            [24]  489 	push	ar5
      000994 C0 04            [24]  490 	push	ar4
      000996 12 1F 8C         [24]  491 	lcall	___memcpy
      000999 D0 04            [24]  492 	pop	ar4
      00099B D0 05            [24]  493 	pop	ar5
      00099D D0 06            [24]  494 	pop	ar6
      00099F D0 07            [24]  495 	pop	ar7
                                    496 ;	buffer.c:108: goto get_del_num;
      0009A1 D0 05            [24]  497 	pop	ar5
      0009A3 D0 04            [24]  498 	pop	ar4
                                    499 ;	buffer.c:95: buffers_array[i] = buffers_array[i + 1];
      0009A5                        500 00111$:
                                    501 ;	buffer.c:90: for (int i = 0; i < (program_stats.total_buffers - 1); i++)
      0009A5 05 10            [12]  502 	inc	_delete_buffer_sloc0_1_0
      0009A7 E4               [12]  503 	clr	a
      0009A8 B5 10 02         [24]  504 	cjne	a,_delete_buffer_sloc0_1_0,00144$
      0009AB 05 11            [12]  505 	inc	(_delete_buffer_sloc0_1_0 + 1)
      0009AD                        506 00144$:
      0009AD 02 08 D2         [24]  507 	ljmp	00110$
      0009B0                        508 00104$:
                                    509 ;	buffer.c:99: program_stats.total_buffers -= 1;
      0009B0 E5 12            [12]  510 	mov	a,_delete_buffer_sloc1_1_0
      0009B2 24 FF            [12]  511 	add	a,#0xff
      0009B4 FA               [12]  512 	mov	r2,a
      0009B5 E5 13            [12]  513 	mov	a,(_delete_buffer_sloc1_1_0 + 1)
      0009B7 34 FF            [12]  514 	addc	a,#0xff
      0009B9 FB               [12]  515 	mov	r3,a
      0009BA 90 00 24         [24]  516 	mov	dptr,#(_program_stats + 0x0008)
      0009BD EA               [12]  517 	mov	a,r2
      0009BE F0               [24]  518 	movx	@dptr,a
      0009BF EB               [12]  519 	mov	a,r3
      0009C0 A3               [24]  520 	inc	dptr
      0009C1 F0               [24]  521 	movx	@dptr,a
                                    522 ;	buffer.c:100: program_stats.allocated_heap -= buffer_freed_size;
      0009C2 90 00 1E         [24]  523 	mov	dptr,#(_program_stats + 0x0002)
      0009C5 E0               [24]  524 	movx	a,@dptr
      0009C6 FA               [12]  525 	mov	r2,a
      0009C7 A3               [24]  526 	inc	dptr
      0009C8 E0               [24]  527 	movx	a,@dptr
      0009C9 FB               [12]  528 	mov	r3,a
      0009CA EA               [12]  529 	mov	a,r2
      0009CB C3               [12]  530 	clr	c
      0009CC 9C               [12]  531 	subb	a,r4
      0009CD FC               [12]  532 	mov	r4,a
      0009CE EB               [12]  533 	mov	a,r3
      0009CF 9D               [12]  534 	subb	a,r5
      0009D0 FD               [12]  535 	mov	r5,a
      0009D1 90 00 1E         [24]  536 	mov	dptr,#(_program_stats + 0x0002)
      0009D4 EC               [12]  537 	mov	a,r4
      0009D5 F0               [24]  538 	movx	@dptr,a
      0009D6 ED               [12]  539 	mov	a,r5
      0009D7 A3               [24]  540 	inc	dptr
      0009D8 F0               [24]  541 	movx	@dptr,a
                                    542 ;	buffer.c:102: free(buff_to_free);
      0009D9 AB 14            [24]  543 	mov	r3,_delete_buffer_sloc2_1_0
      0009DB AC 15            [24]  544 	mov	r4,(_delete_buffer_sloc2_1_0 + 1)
      0009DD AD 16            [24]  545 	mov	r5,(_delete_buffer_sloc2_1_0 + 2)
      0009DF 8B 82            [24]  546 	mov	dpl,r3
      0009E1 8C 83            [24]  547 	mov	dph,r4
      0009E3 8D F0            [24]  548 	mov	b,r5
      0009E5 C0 07            [24]  549 	push	ar7
      0009E7 C0 06            [24]  550 	push	ar6
      0009E9 12 1E 35         [24]  551 	lcall	_free
      0009EC D0 06            [24]  552 	pop	ar6
      0009EE D0 07            [24]  553 	pop	ar7
                                    554 ;	buffer.c:103: printf("Buffer %d Successfully Deleted.. \n\r", buff_number);
      0009F0 C0 06            [24]  555 	push	ar6
      0009F2 C0 07            [24]  556 	push	ar7
      0009F4 74 33            [12]  557 	mov	a,#___str_3
      0009F6 C0 E0            [24]  558 	push	acc
      0009F8 74 2E            [12]  559 	mov	a,#(___str_3 >> 8)
      0009FA C0 E0            [24]  560 	push	acc
      0009FC 74 80            [12]  561 	mov	a,#0x80
      0009FE C0 E0            [24]  562 	push	acc
      000A00 12 22 2E         [24]  563 	lcall	_printf
      000A03 E5 81            [12]  564 	mov	a,sp
      000A05 24 FB            [12]  565 	add	a,#0xfb
      000A07 F5 81            [12]  566 	mov	sp,a
                                    567 ;	buffer.c:104: return 0;
      000A09 90 00 00         [24]  568 	mov	dptr,#0x0000
                                    569 ;	buffer.c:108: goto get_del_num;
                                    570 ;	buffer.c:110: }
      000A0C 22               [24]  571 	ret
                                    572 ;------------------------------------------------------------
                                    573 ;Allocation info for local variables in function 'print_heap_menu'
                                    574 ;------------------------------------------------------------
                                    575 ;	buffer.c:117: void print_heap_menu()
                                    576 ;	-----------------------------------------
                                    577 ;	 function print_heap_menu
                                    578 ;	-----------------------------------------
      000A0D                        579 _print_heap_menu:
                                    580 ;	buffer.c:119: printf("\n\n\r^^^^^^^^^^^^^^^^^^^-HEAP-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ \n\n\r");
      000A0D 74 57            [12]  581 	mov	a,#___str_4
      000A0F C0 E0            [24]  582 	push	acc
      000A11 74 2E            [12]  583 	mov	a,#(___str_4 >> 8)
      000A13 C0 E0            [24]  584 	push	acc
      000A15 74 80            [12]  585 	mov	a,#0x80
      000A17 C0 E0            [24]  586 	push	acc
      000A19 12 22 2E         [24]  587 	lcall	_printf
      000A1C 15 81            [12]  588 	dec	sp
      000A1E 15 81            [12]  589 	dec	sp
      000A20 15 81            [12]  590 	dec	sp
                                    591 ;	buffer.c:120: printf("You can enter characters or use commands from below \n\r");
      000A22 74 97            [12]  592 	mov	a,#___str_5
      000A24 C0 E0            [24]  593 	push	acc
      000A26 74 2E            [12]  594 	mov	a,#(___str_5 >> 8)
      000A28 C0 E0            [24]  595 	push	acc
      000A2A 74 80            [12]  596 	mov	a,#0x80
      000A2C C0 E0            [24]  597 	push	acc
      000A2E 12 22 2E         [24]  598 	lcall	_printf
      000A31 15 81            [12]  599 	dec	sp
      000A33 15 81            [12]  600 	dec	sp
      000A35 15 81            [12]  601 	dec	sp
                                    602 ;	buffer.c:121: printf("'?' -> Show heap status, dump & clear Buffer 0 \n\r");
      000A37 74 CE            [12]  603 	mov	a,#___str_6
      000A39 C0 E0            [24]  604 	push	acc
      000A3B 74 2E            [12]  605 	mov	a,#(___str_6 >> 8)
      000A3D C0 E0            [24]  606 	push	acc
      000A3F 74 80            [12]  607 	mov	a,#0x80
      000A41 C0 E0            [24]  608 	push	acc
      000A43 12 22 2E         [24]  609 	lcall	_printf
      000A46 15 81            [12]  610 	dec	sp
      000A48 15 81            [12]  611 	dec	sp
      000A4A 15 81            [12]  612 	dec	sp
                                    613 ;	buffer.c:122: printf("'+' -> Add a new Buffer\n\r");
      000A4C 74 00            [12]  614 	mov	a,#___str_7
      000A4E C0 E0            [24]  615 	push	acc
      000A50 74 2F            [12]  616 	mov	a,#(___str_7 >> 8)
      000A52 C0 E0            [24]  617 	push	acc
      000A54 74 80            [12]  618 	mov	a,#0x80
      000A56 C0 E0            [24]  619 	push	acc
      000A58 12 22 2E         [24]  620 	lcall	_printf
      000A5B 15 81            [12]  621 	dec	sp
      000A5D 15 81            [12]  622 	dec	sp
      000A5F 15 81            [12]  623 	dec	sp
                                    624 ;	buffer.c:123: printf("'-' -> Delete existing Buffer\n\r");
      000A61 74 1A            [12]  625 	mov	a,#___str_8
      000A63 C0 E0            [24]  626 	push	acc
      000A65 74 2F            [12]  627 	mov	a,#(___str_8 >> 8)
      000A67 C0 E0            [24]  628 	push	acc
      000A69 74 80            [12]  629 	mov	a,#0x80
      000A6B C0 E0            [24]  630 	push	acc
      000A6D 12 22 2E         [24]  631 	lcall	_printf
      000A70 15 81            [12]  632 	dec	sp
      000A72 15 81            [12]  633 	dec	sp
      000A74 15 81            [12]  634 	dec	sp
                                    635 ;	buffer.c:124: printf("'=' -> Dump Buffer 0 in hex\n\r");
      000A76 74 3A            [12]  636 	mov	a,#___str_9
      000A78 C0 E0            [24]  637 	push	acc
      000A7A 74 2F            [12]  638 	mov	a,#(___str_9 >> 8)
      000A7C C0 E0            [24]  639 	push	acc
      000A7E 74 80            [12]  640 	mov	a,#0x80
      000A80 C0 E0            [24]  641 	push	acc
      000A82 12 22 2E         [24]  642 	lcall	_printf
      000A85 15 81            [12]  643 	dec	sp
      000A87 15 81            [12]  644 	dec	sp
      000A89 15 81            [12]  645 	dec	sp
                                    646 ;	buffer.c:125: printf("'@' -> Free all Heap & begin again\n\n\r");
      000A8B 74 58            [12]  647 	mov	a,#___str_10
      000A8D C0 E0            [24]  648 	push	acc
      000A8F 74 2F            [12]  649 	mov	a,#(___str_10 >> 8)
      000A91 C0 E0            [24]  650 	push	acc
      000A93 74 80            [12]  651 	mov	a,#0x80
      000A95 C0 E0            [24]  652 	push	acc
      000A97 12 22 2E         [24]  653 	lcall	_printf
      000A9A 15 81            [12]  654 	dec	sp
      000A9C 15 81            [12]  655 	dec	sp
      000A9E 15 81            [12]  656 	dec	sp
                                    657 ;	buffer.c:126: printf("'M' -> Go to Main Menu \n\n\r");
      000AA0 74 7E            [12]  658 	mov	a,#___str_11
      000AA2 C0 E0            [24]  659 	push	acc
      000AA4 74 2F            [12]  660 	mov	a,#(___str_11 >> 8)
      000AA6 C0 E0            [24]  661 	push	acc
      000AA8 74 80            [12]  662 	mov	a,#0x80
      000AAA C0 E0            [24]  663 	push	acc
      000AAC 12 22 2E         [24]  664 	lcall	_printf
      000AAF 15 81            [12]  665 	dec	sp
      000AB1 15 81            [12]  666 	dec	sp
      000AB3 15 81            [12]  667 	dec	sp
                                    668 ;	buffer.c:127: }
      000AB5 22               [24]  669 	ret
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
      000AB6                        680 _create_new_buffer:
                                    681 ;	buffer.c:139: if (program_stats.allocated_heap == program_stats.total_heap_size)
      000AB6 90 00 1E         [24]  682 	mov	dptr,#(_program_stats + 0x0002)
      000AB9 E0               [24]  683 	movx	a,@dptr
      000ABA FE               [12]  684 	mov	r6,a
      000ABB A3               [24]  685 	inc	dptr
      000ABC E0               [24]  686 	movx	a,@dptr
      000ABD FF               [12]  687 	mov	r7,a
      000ABE 90 00 1C         [24]  688 	mov	dptr,#_program_stats
      000AC1 E0               [24]  689 	movx	a,@dptr
      000AC2 FC               [12]  690 	mov	r4,a
      000AC3 A3               [24]  691 	inc	dptr
      000AC4 E0               [24]  692 	movx	a,@dptr
      000AC5 FD               [12]  693 	mov	r5,a
      000AC6 EE               [12]  694 	mov	a,r6
      000AC7 B5 04 07         [24]  695 	cjne	a,ar4,00133$
      000ACA EF               [12]  696 	mov	a,r7
      000ACB B5 05 03         [24]  697 	cjne	a,ar5,00133$
      000ACE 02 0C 11         [24]  698 	ljmp	00111$
      000AD1                        699 00133$:
                                    700 ;	buffer.c:142: get_new_buff:
      000AD1                        701 00103$:
                                    702 ;	buffer.c:143: printf("\n\rGive Valid Buffer Size(030-300):");
      000AD1 74 99            [12]  703 	mov	a,#___str_12
      000AD3 C0 E0            [24]  704 	push	acc
      000AD5 74 2F            [12]  705 	mov	a,#(___str_12 >> 8)
      000AD7 C0 E0            [24]  706 	push	acc
      000AD9 74 80            [12]  707 	mov	a,#0x80
      000ADB C0 E0            [24]  708 	push	acc
      000ADD 12 22 2E         [24]  709 	lcall	_printf
      000AE0 15 81            [12]  710 	dec	sp
      000AE2 15 81            [12]  711 	dec	sp
      000AE4 15 81            [12]  712 	dec	sp
                                    713 ;	buffer.c:144: buff_size = get_number(3);
      000AE6 90 00 03         [24]  714 	mov	dptr,#0x0003
      000AE9 12 04 0B         [24]  715 	lcall	_get_number
      000AEC AE 82            [24]  716 	mov	r6,dpl
      000AEE AF 83            [24]  717 	mov	r7,dph
                                    718 ;	buffer.c:145: if (buff_size >= 30 && buff_size <= 300)
      000AF0 C3               [12]  719 	clr	c
      000AF1 EE               [12]  720 	mov	a,r6
      000AF2 94 1E            [12]  721 	subb	a,#0x1e
      000AF4 EF               [12]  722 	mov	a,r7
      000AF5 64 80            [12]  723 	xrl	a,#0x80
      000AF7 94 80            [12]  724 	subb	a,#0x80
      000AF9 40 D6            [24]  725 	jc	00103$
      000AFB 74 2C            [12]  726 	mov	a,#0x2c
      000AFD 9E               [12]  727 	subb	a,r6
      000AFE 74 81            [12]  728 	mov	a,#(0x01 ^ 0x80)
      000B00 8F F0            [24]  729 	mov	b,r7
      000B02 63 F0 80         [24]  730 	xrl	b,#0x80
      000B05 95 F0            [12]  731 	subb	a,b
      000B07 40 C8            [24]  732 	jc	00103$
                                    733 ;	buffer.c:147: buff.buffer_start = malloc(buff_size);
      000B09 8E 82            [24]  734 	mov	dpl,r6
      000B0B 8F 83            [24]  735 	mov	dph,r7
      000B0D C0 07            [24]  736 	push	ar7
      000B0F C0 06            [24]  737 	push	ar6
      000B11 12 20 57         [24]  738 	lcall	_malloc
      000B14 AC 82            [24]  739 	mov	r4,dpl
      000B16 AD 83            [24]  740 	mov	r5,dph
      000B18 D0 06            [24]  741 	pop	ar6
      000B1A D0 07            [24]  742 	pop	ar7
      000B1C 7B 00            [12]  743 	mov	r3,#0x00
      000B1E 90 01 54         [24]  744 	mov	dptr,#(_create_new_buffer_buff_65536_57 + 0x0002)
      000B21 EC               [12]  745 	mov	a,r4
      000B22 F0               [24]  746 	movx	@dptr,a
      000B23 ED               [12]  747 	mov	a,r5
      000B24 A3               [24]  748 	inc	dptr
      000B25 F0               [24]  749 	movx	@dptr,a
      000B26 EB               [12]  750 	mov	a,r3
      000B27 A3               [24]  751 	inc	dptr
      000B28 F0               [24]  752 	movx	@dptr,a
                                    753 ;	buffer.c:148: if (buff.buffer_start == NULL)
      000B29 EC               [12]  754 	mov	a,r4
      000B2A 4D               [12]  755 	orl	a,r5
      000B2B 70 18            [24]  756 	jnz	00105$
                                    757 ;	buffer.c:150: printf("Failed, give smaller buffer\n\r");
      000B2D 74 BC            [12]  758 	mov	a,#___str_13
      000B2F C0 E0            [24]  759 	push	acc
      000B31 74 2F            [12]  760 	mov	a,#(___str_13 >> 8)
      000B33 C0 E0            [24]  761 	push	acc
      000B35 74 80            [12]  762 	mov	a,#0x80
      000B37 C0 E0            [24]  763 	push	acc
      000B39 12 22 2E         [24]  764 	lcall	_printf
      000B3C 15 81            [12]  765 	dec	sp
      000B3E 15 81            [12]  766 	dec	sp
      000B40 15 81            [12]  767 	dec	sp
      000B42 02 0C 0D         [24]  768 	ljmp	00106$
      000B45                        769 00105$:
                                    770 ;	buffer.c:154: printf("\n\n\r####SUCCESS, BUFFER Created####\n\n\r");
      000B45 C0 07            [24]  771 	push	ar7
      000B47 C0 06            [24]  772 	push	ar6
      000B49 74 DA            [12]  773 	mov	a,#___str_14
      000B4B C0 E0            [24]  774 	push	acc
      000B4D 74 2F            [12]  775 	mov	a,#(___str_14 >> 8)
      000B4F C0 E0            [24]  776 	push	acc
      000B51 74 80            [12]  777 	mov	a,#0x80
      000B53 C0 E0            [24]  778 	push	acc
      000B55 12 22 2E         [24]  779 	lcall	_printf
      000B58 15 81            [12]  780 	dec	sp
      000B5A 15 81            [12]  781 	dec	sp
      000B5C 15 81            [12]  782 	dec	sp
      000B5E D0 06            [24]  783 	pop	ar6
      000B60 D0 07            [24]  784 	pop	ar7
                                    785 ;	buffer.c:156: program_stats.allocated_heap += buff_size;
      000B62 90 00 1E         [24]  786 	mov	dptr,#(_program_stats + 0x0002)
      000B65 E0               [24]  787 	movx	a,@dptr
      000B66 FC               [12]  788 	mov	r4,a
      000B67 A3               [24]  789 	inc	dptr
      000B68 E0               [24]  790 	movx	a,@dptr
      000B69 FD               [12]  791 	mov	r5,a
      000B6A EE               [12]  792 	mov	a,r6
      000B6B 2C               [12]  793 	add	a,r4
      000B6C FC               [12]  794 	mov	r4,a
      000B6D EF               [12]  795 	mov	a,r7
      000B6E 3D               [12]  796 	addc	a,r5
      000B6F FD               [12]  797 	mov	r5,a
      000B70 90 00 1E         [24]  798 	mov	dptr,#(_program_stats + 0x0002)
      000B73 EC               [12]  799 	mov	a,r4
      000B74 F0               [24]  800 	movx	@dptr,a
      000B75 ED               [12]  801 	mov	a,r5
      000B76 A3               [24]  802 	inc	dptr
      000B77 F0               [24]  803 	movx	@dptr,a
                                    804 ;	buffer.c:157: buff.buff_size = buff_size;
      000B78 90 01 5A         [24]  805 	mov	dptr,#(_create_new_buffer_buff_65536_57 + 0x0008)
      000B7B EE               [12]  806 	mov	a,r6
      000B7C F0               [24]  807 	movx	@dptr,a
      000B7D EF               [12]  808 	mov	a,r7
      000B7E A3               [24]  809 	inc	dptr
      000B7F F0               [24]  810 	movx	@dptr,a
                                    811 ;	buffer.c:158: buff.buffer_num = program_stats.total_buffers;
      000B80 90 00 24         [24]  812 	mov	dptr,#(_program_stats + 0x0008)
      000B83 E0               [24]  813 	movx	a,@dptr
      000B84 FC               [12]  814 	mov	r4,a
      000B85 A3               [24]  815 	inc	dptr
      000B86 E0               [24]  816 	movx	a,@dptr
      000B87 FD               [12]  817 	mov	r5,a
      000B88 90 01 52         [24]  818 	mov	dptr,#_create_new_buffer_buff_65536_57
      000B8B EC               [12]  819 	mov	a,r4
      000B8C F0               [24]  820 	movx	@dptr,a
      000B8D ED               [12]  821 	mov	a,r5
      000B8E A3               [24]  822 	inc	dptr
      000B8F F0               [24]  823 	movx	@dptr,a
                                    824 ;	buffer.c:159: buff.buffer_end = buff.buffer_start + buff_size;
      000B90 90 01 54         [24]  825 	mov	dptr,#(_create_new_buffer_buff_65536_57 + 0x0002)
      000B93 E0               [24]  826 	movx	a,@dptr
      000B94 FB               [12]  827 	mov	r3,a
      000B95 A3               [24]  828 	inc	dptr
      000B96 E0               [24]  829 	movx	a,@dptr
      000B97 FC               [12]  830 	mov	r4,a
      000B98 A3               [24]  831 	inc	dptr
      000B99 E0               [24]  832 	movx	a,@dptr
      000B9A FD               [12]  833 	mov	r5,a
      000B9B EE               [12]  834 	mov	a,r6
      000B9C 2B               [12]  835 	add	a,r3
      000B9D FE               [12]  836 	mov	r6,a
      000B9E EF               [12]  837 	mov	a,r7
      000B9F 3C               [12]  838 	addc	a,r4
      000BA0 FF               [12]  839 	mov	r7,a
      000BA1 8D 02            [24]  840 	mov	ar2,r5
      000BA3 90 01 57         [24]  841 	mov	dptr,#(_create_new_buffer_buff_65536_57 + 0x0005)
      000BA6 EE               [12]  842 	mov	a,r6
      000BA7 F0               [24]  843 	movx	@dptr,a
      000BA8 EF               [12]  844 	mov	a,r7
      000BA9 A3               [24]  845 	inc	dptr
      000BAA F0               [24]  846 	movx	@dptr,a
      000BAB EA               [12]  847 	mov	a,r2
      000BAC A3               [24]  848 	inc	dptr
      000BAD F0               [24]  849 	movx	@dptr,a
                                    850 ;	buffer.c:160: buff.num_char = 0;
      000BAE 90 01 5C         [24]  851 	mov	dptr,#(_create_new_buffer_buff_65536_57 + 0x000a)
      000BB1 E4               [12]  852 	clr	a
      000BB2 F0               [24]  853 	movx	@dptr,a
      000BB3 A3               [24]  854 	inc	dptr
      000BB4 F0               [24]  855 	movx	@dptr,a
                                    856 ;	buffer.c:162: buffers_array[program_stats.total_buffers] = buff;
      000BB5 90 00 24         [24]  857 	mov	dptr,#(_program_stats + 0x0008)
      000BB8 E0               [24]  858 	movx	a,@dptr
      000BB9 FE               [12]  859 	mov	r6,a
      000BBA A3               [24]  860 	inc	dptr
      000BBB E0               [24]  861 	movx	a,@dptr
      000BBC FF               [12]  862 	mov	r7,a
      000BBD 90 15 2F         [24]  863 	mov	dptr,#__mulint_PARM_2
      000BC0 EE               [12]  864 	mov	a,r6
      000BC1 F0               [24]  865 	movx	@dptr,a
      000BC2 EF               [12]  866 	mov	a,r7
      000BC3 A3               [24]  867 	inc	dptr
      000BC4 F0               [24]  868 	movx	@dptr,a
      000BC5 90 00 0C         [24]  869 	mov	dptr,#0x000c
      000BC8 12 21 C0         [24]  870 	lcall	__mulint
      000BCB AE 82            [24]  871 	mov	r6,dpl
      000BCD AF 83            [24]  872 	mov	r7,dph
      000BCF EE               [12]  873 	mov	a,r6
      000BD0 24 26            [12]  874 	add	a,#_buffers_array
      000BD2 FE               [12]  875 	mov	r6,a
      000BD3 EF               [12]  876 	mov	a,r7
      000BD4 34 00            [12]  877 	addc	a,#(_buffers_array >> 8)
      000BD6 FF               [12]  878 	mov	r7,a
      000BD7 7D 00            [12]  879 	mov	r5,#0x00
      000BD9 90 15 1E         [24]  880 	mov	dptr,#___memcpy_PARM_2
      000BDC 74 52            [12]  881 	mov	a,#_create_new_buffer_buff_65536_57
      000BDE F0               [24]  882 	movx	@dptr,a
      000BDF 74 01            [12]  883 	mov	a,#(_create_new_buffer_buff_65536_57 >> 8)
      000BE1 A3               [24]  884 	inc	dptr
      000BE2 F0               [24]  885 	movx	@dptr,a
      000BE3 E4               [12]  886 	clr	a
      000BE4 A3               [24]  887 	inc	dptr
      000BE5 F0               [24]  888 	movx	@dptr,a
      000BE6 90 15 21         [24]  889 	mov	dptr,#___memcpy_PARM_3
      000BE9 74 0C            [12]  890 	mov	a,#0x0c
      000BEB F0               [24]  891 	movx	@dptr,a
      000BEC E4               [12]  892 	clr	a
      000BED A3               [24]  893 	inc	dptr
      000BEE F0               [24]  894 	movx	@dptr,a
      000BEF 8E 82            [24]  895 	mov	dpl,r6
      000BF1 8F 83            [24]  896 	mov	dph,r7
      000BF3 8D F0            [24]  897 	mov	b,r5
      000BF5 12 1F 8C         [24]  898 	lcall	___memcpy
                                    899 ;	buffer.c:163: program_stats.total_buffers += 1;
      000BF8 90 00 24         [24]  900 	mov	dptr,#(_program_stats + 0x0008)
      000BFB E0               [24]  901 	movx	a,@dptr
      000BFC FE               [12]  902 	mov	r6,a
      000BFD A3               [24]  903 	inc	dptr
      000BFE E0               [24]  904 	movx	a,@dptr
      000BFF FF               [12]  905 	mov	r7,a
      000C00 0E               [12]  906 	inc	r6
      000C01 BE 00 01         [24]  907 	cjne	r6,#0x00,00137$
      000C04 0F               [12]  908 	inc	r7
      000C05                        909 00137$:
      000C05 90 00 24         [24]  910 	mov	dptr,#(_program_stats + 0x0008)
      000C08 EE               [12]  911 	mov	a,r6
      000C09 F0               [24]  912 	movx	@dptr,a
      000C0A EF               [12]  913 	mov	a,r7
      000C0B A3               [24]  914 	inc	dptr
      000C0C F0               [24]  915 	movx	@dptr,a
      000C0D                        916 00106$:
                                    917 ;	buffer.c:165: return 0;
      000C0D 90 00 00         [24]  918 	mov	dptr,#0x0000
                                    919 ;	buffer.c:171: no_heap_left:
      000C10 22               [24]  920 	ret
      000C11                        921 00111$:
                                    922 ;	buffer.c:172: printf("No Heap Memory Left, Delete some buffers...\n\r");
      000C11 74 00            [12]  923 	mov	a,#___str_15
      000C13 C0 E0            [24]  924 	push	acc
      000C15 74 30            [12]  925 	mov	a,#(___str_15 >> 8)
      000C17 C0 E0            [24]  926 	push	acc
      000C19 74 80            [12]  927 	mov	a,#0x80
      000C1B C0 E0            [24]  928 	push	acc
      000C1D 12 22 2E         [24]  929 	lcall	_printf
      000C20 15 81            [12]  930 	dec	sp
      000C22 15 81            [12]  931 	dec	sp
      000C24 15 81            [12]  932 	dec	sp
                                    933 ;	buffer.c:173: return 0;
      000C26 90 00 00         [24]  934 	mov	dptr,#0x0000
                                    935 ;	buffer.c:174: }
      000C29 22               [24]  936 	ret
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
      000C2A                        948 _create_initial_buffers:
                                    949 ;	buffer.c:186: get_buff:
      000C2A                        950 00101$:
                                    951 ;	buffer.c:187: printf("\n\rGive Valid Initial Buffer Size(0048-4800):");
      000C2A 74 2E            [12]  952 	mov	a,#___str_16
      000C2C C0 E0            [24]  953 	push	acc
      000C2E 74 30            [12]  954 	mov	a,#(___str_16 >> 8)
      000C30 C0 E0            [24]  955 	push	acc
      000C32 74 80            [12]  956 	mov	a,#0x80
      000C34 C0 E0            [24]  957 	push	acc
      000C36 12 22 2E         [24]  958 	lcall	_printf
      000C39 15 81            [12]  959 	dec	sp
      000C3B 15 81            [12]  960 	dec	sp
      000C3D 15 81            [12]  961 	dec	sp
                                    962 ;	buffer.c:188: buff_size = get_number(4);
      000C3F 90 00 04         [24]  963 	mov	dptr,#0x0004
      000C42 12 04 0B         [24]  964 	lcall	_get_number
      000C45 AE 82            [24]  965 	mov	r6,dpl
      000C47 AF 83            [24]  966 	mov	r7,dph
                                    967 ;	buffer.c:192: if (buff_size >= 48 && buff_size <= 4800)
      000C49 C3               [12]  968 	clr	c
      000C4A EE               [12]  969 	mov	a,r6
      000C4B 94 30            [12]  970 	subb	a,#0x30
      000C4D EF               [12]  971 	mov	a,r7
      000C4E 64 80            [12]  972 	xrl	a,#0x80
      000C50 94 80            [12]  973 	subb	a,#0x80
      000C52 40 D6            [24]  974 	jc	00101$
      000C54 74 C0            [12]  975 	mov	a,#0xc0
      000C56 9E               [12]  976 	subb	a,r6
      000C57 74 92            [12]  977 	mov	a,#(0x12 ^ 0x80)
      000C59 8F F0            [24]  978 	mov	b,r7
      000C5B 63 F0 80         [24]  979 	xrl	b,#0x80
      000C5E 95 F0            [12]  980 	subb	a,b
      000C60 40 C8            [24]  981 	jc	00101$
                                    982 ;	buffer.c:194: buff.buffer_start = malloc(buff_size);
      000C62 8E 82            [24]  983 	mov	dpl,r6
      000C64 8F 83            [24]  984 	mov	dph,r7
      000C66 C0 07            [24]  985 	push	ar7
      000C68 C0 06            [24]  986 	push	ar6
      000C6A 12 20 57         [24]  987 	lcall	_malloc
      000C6D AC 82            [24]  988 	mov	r4,dpl
      000C6F AD 83            [24]  989 	mov	r5,dph
      000C71 D0 06            [24]  990 	pop	ar6
      000C73 D0 07            [24]  991 	pop	ar7
      000C75 7B 00            [12]  992 	mov	r3,#0x00
      000C77 90 01 60         [24]  993 	mov	dptr,#(_create_initial_buffers_buff_65537_63 + 0x0002)
      000C7A EC               [12]  994 	mov	a,r4
      000C7B F0               [24]  995 	movx	@dptr,a
      000C7C ED               [12]  996 	mov	a,r5
      000C7D A3               [24]  997 	inc	dptr
      000C7E F0               [24]  998 	movx	@dptr,a
      000C7F EB               [12]  999 	mov	a,r3
      000C80 A3               [24] 1000 	inc	dptr
      000C81 F0               [24] 1001 	movx	@dptr,a
                                   1002 ;	buffer.c:195: buff1.buffer_start = malloc(buff_size);
      000C82 8E 82            [24] 1003 	mov	dpl,r6
      000C84 8F 83            [24] 1004 	mov	dph,r7
      000C86 C0 07            [24] 1005 	push	ar7
      000C88 C0 06            [24] 1006 	push	ar6
      000C8A 12 20 57         [24] 1007 	lcall	_malloc
      000C8D AC 82            [24] 1008 	mov	r4,dpl
      000C8F AD 83            [24] 1009 	mov	r5,dph
      000C91 D0 06            [24] 1010 	pop	ar6
      000C93 D0 07            [24] 1011 	pop	ar7
      000C95 7B 00            [12] 1012 	mov	r3,#0x00
      000C97 90 01 6C         [24] 1013 	mov	dptr,#(_create_initial_buffers_buff1_65537_63 + 0x0002)
      000C9A EC               [12] 1014 	mov	a,r4
      000C9B F0               [24] 1015 	movx	@dptr,a
      000C9C ED               [12] 1016 	mov	a,r5
      000C9D A3               [24] 1017 	inc	dptr
      000C9E F0               [24] 1018 	movx	@dptr,a
      000C9F EB               [12] 1019 	mov	a,r3
      000CA0 A3               [24] 1020 	inc	dptr
      000CA1 F0               [24] 1021 	movx	@dptr,a
                                   1022 ;	buffer.c:197: if (buff.buffer_start == NULL || buff1.buffer_start == NULL)
      000CA2 90 01 60         [24] 1023 	mov	dptr,#(_create_initial_buffers_buff_65537_63 + 0x0002)
      000CA5 E0               [24] 1024 	movx	a,@dptr
      000CA6 FB               [12] 1025 	mov	r3,a
      000CA7 A3               [24] 1026 	inc	dptr
      000CA8 E0               [24] 1027 	movx	a,@dptr
      000CA9 FC               [12] 1028 	mov	r4,a
      000CAA A3               [24] 1029 	inc	dptr
      000CAB E0               [24] 1030 	movx	a,@dptr
      000CAC EB               [12] 1031 	mov	a,r3
      000CAD 4C               [12] 1032 	orl	a,r4
      000CAE 60 0F            [24] 1033 	jz	00106$
      000CB0 90 01 6C         [24] 1034 	mov	dptr,#(_create_initial_buffers_buff1_65537_63 + 0x0002)
      000CB3 E0               [24] 1035 	movx	a,@dptr
      000CB4 FB               [12] 1036 	mov	r3,a
      000CB5 A3               [24] 1037 	inc	dptr
      000CB6 E0               [24] 1038 	movx	a,@dptr
      000CB7 FC               [12] 1039 	mov	r4,a
      000CB8 A3               [24] 1040 	inc	dptr
      000CB9 E0               [24] 1041 	movx	a,@dptr
      000CBA FD               [12] 1042 	mov	r5,a
      000CBB EB               [12] 1043 	mov	a,r3
      000CBC 4C               [12] 1044 	orl	a,r4
      000CBD 70 60            [24] 1045 	jnz	00107$
      000CBF                       1046 00106$:
                                   1047 ;	buffer.c:199: printf("\n\r####FAIL, Please give a smaller buffer size####\n\n\r");
      000CBF 74 5B            [12] 1048 	mov	a,#___str_17
      000CC1 C0 E0            [24] 1049 	push	acc
      000CC3 74 30            [12] 1050 	mov	a,#(___str_17 >> 8)
      000CC5 C0 E0            [24] 1051 	push	acc
      000CC7 74 80            [12] 1052 	mov	a,#0x80
      000CC9 C0 E0            [24] 1053 	push	acc
      000CCB 12 22 2E         [24] 1054 	lcall	_printf
      000CCE 15 81            [12] 1055 	dec	sp
      000CD0 15 81            [12] 1056 	dec	sp
      000CD2 15 81            [12] 1057 	dec	sp
                                   1058 ;	buffer.c:201: if (buff.buffer_start != NULL)
      000CD4 90 01 60         [24] 1059 	mov	dptr,#(_create_initial_buffers_buff_65537_63 + 0x0002)
      000CD7 E0               [24] 1060 	movx	a,@dptr
      000CD8 FB               [12] 1061 	mov	r3,a
      000CD9 A3               [24] 1062 	inc	dptr
      000CDA E0               [24] 1063 	movx	a,@dptr
      000CDB FC               [12] 1064 	mov	r4,a
      000CDC A3               [24] 1065 	inc	dptr
      000CDD E0               [24] 1066 	movx	a,@dptr
      000CDE EB               [12] 1067 	mov	a,r3
      000CDF 4C               [12] 1068 	orl	a,r4
      000CE0 60 14            [24] 1069 	jz	00103$
                                   1070 ;	buffer.c:202: free(buff.buffer_start);
      000CE2 90 01 60         [24] 1071 	mov	dptr,#(_create_initial_buffers_buff_65537_63 + 0x0002)
      000CE5 E0               [24] 1072 	movx	a,@dptr
      000CE6 FB               [12] 1073 	mov	r3,a
      000CE7 A3               [24] 1074 	inc	dptr
      000CE8 E0               [24] 1075 	movx	a,@dptr
      000CE9 FC               [12] 1076 	mov	r4,a
      000CEA A3               [24] 1077 	inc	dptr
      000CEB E0               [24] 1078 	movx	a,@dptr
      000CEC FD               [12] 1079 	mov	r5,a
      000CED 8B 82            [24] 1080 	mov	dpl,r3
      000CEF 8C 83            [24] 1081 	mov	dph,r4
      000CF1 8D F0            [24] 1082 	mov	b,r5
      000CF3 12 1E 35         [24] 1083 	lcall	_free
      000CF6                       1084 00103$:
                                   1085 ;	buffer.c:203: if (buff1.buffer_start != NULL)
      000CF6 90 01 6C         [24] 1086 	mov	dptr,#(_create_initial_buffers_buff1_65537_63 + 0x0002)
      000CF9 E0               [24] 1087 	movx	a,@dptr
      000CFA FB               [12] 1088 	mov	r3,a
      000CFB A3               [24] 1089 	inc	dptr
      000CFC E0               [24] 1090 	movx	a,@dptr
      000CFD FC               [12] 1091 	mov	r4,a
      000CFE A3               [24] 1092 	inc	dptr
      000CFF E0               [24] 1093 	movx	a,@dptr
      000D00 FD               [12] 1094 	mov	r5,a
      000D01 EB               [12] 1095 	mov	a,r3
      000D02 4C               [12] 1096 	orl	a,r4
      000D03 70 03            [24] 1097 	jnz	00145$
      000D05 02 0C 2A         [24] 1098 	ljmp	00101$
      000D08                       1099 00145$:
                                   1100 ;	buffer.c:204: free(buff1.buffer_start);
      000D08 90 01 6C         [24] 1101 	mov	dptr,#(_create_initial_buffers_buff1_65537_63 + 0x0002)
      000D0B E0               [24] 1102 	movx	a,@dptr
      000D0C FB               [12] 1103 	mov	r3,a
      000D0D A3               [24] 1104 	inc	dptr
      000D0E E0               [24] 1105 	movx	a,@dptr
      000D0F FC               [12] 1106 	mov	r4,a
      000D10 A3               [24] 1107 	inc	dptr
      000D11 E0               [24] 1108 	movx	a,@dptr
      000D12 FD               [12] 1109 	mov	r5,a
      000D13 8B 82            [24] 1110 	mov	dpl,r3
      000D15 8C 83            [24] 1111 	mov	dph,r4
      000D17 8D F0            [24] 1112 	mov	b,r5
      000D19 12 1E 35         [24] 1113 	lcall	_free
                                   1114 ;	buffer.c:206: goto get_buff;
      000D1C 02 0C 2A         [24] 1115 	ljmp	00101$
      000D1F                       1116 00107$:
                                   1117 ;	buffer.c:211: printf("\n\n\r####SUCCESS, INITIAL BUFFERS Created####\n\n\r");
      000D1F C0 07            [24] 1118 	push	ar7
      000D21 C0 06            [24] 1119 	push	ar6
      000D23 74 90            [12] 1120 	mov	a,#___str_18
      000D25 C0 E0            [24] 1121 	push	acc
      000D27 74 30            [12] 1122 	mov	a,#(___str_18 >> 8)
      000D29 C0 E0            [24] 1123 	push	acc
      000D2B 74 80            [12] 1124 	mov	a,#0x80
      000D2D C0 E0            [24] 1125 	push	acc
      000D2F 12 22 2E         [24] 1126 	lcall	_printf
      000D32 15 81            [12] 1127 	dec	sp
      000D34 15 81            [12] 1128 	dec	sp
      000D36 15 81            [12] 1129 	dec	sp
      000D38 D0 06            [24] 1130 	pop	ar6
      000D3A D0 07            [24] 1131 	pop	ar7
                                   1132 ;	buffer.c:212: program_stats.allocated_heap = 2 * buff_size;
      000D3C EE               [12] 1133 	mov	a,r6
      000D3D 2E               [12] 1134 	add	a,r6
      000D3E FC               [12] 1135 	mov	r4,a
      000D3F EF               [12] 1136 	mov	a,r7
      000D40 33               [12] 1137 	rlc	a
      000D41 FD               [12] 1138 	mov	r5,a
      000D42 90 00 1E         [24] 1139 	mov	dptr,#(_program_stats + 0x0002)
      000D45 EC               [12] 1140 	mov	a,r4
      000D46 F0               [24] 1141 	movx	@dptr,a
      000D47 ED               [12] 1142 	mov	a,r5
      000D48 A3               [24] 1143 	inc	dptr
      000D49 F0               [24] 1144 	movx	@dptr,a
                                   1145 ;	buffer.c:213: program_stats.total_heap_size = 4996;
      000D4A 90 00 1C         [24] 1146 	mov	dptr,#_program_stats
      000D4D 74 84            [12] 1147 	mov	a,#0x84
      000D4F F0               [24] 1148 	movx	@dptr,a
      000D50 74 13            [12] 1149 	mov	a,#0x13
      000D52 A3               [24] 1150 	inc	dptr
      000D53 F0               [24] 1151 	movx	@dptr,a
                                   1152 ;	buffer.c:214: program_stats.total_buffers = 2;
      000D54 90 00 24         [24] 1153 	mov	dptr,#(_program_stats + 0x0008)
      000D57 74 02            [12] 1154 	mov	a,#0x02
      000D59 F0               [24] 1155 	movx	@dptr,a
      000D5A E4               [12] 1156 	clr	a
      000D5B A3               [24] 1157 	inc	dptr
      000D5C F0               [24] 1158 	movx	@dptr,a
                                   1159 ;	buffer.c:216: buff.buff_size = buff_size;
      000D5D 90 01 66         [24] 1160 	mov	dptr,#(_create_initial_buffers_buff_65537_63 + 0x0008)
      000D60 EE               [12] 1161 	mov	a,r6
      000D61 F0               [24] 1162 	movx	@dptr,a
      000D62 EF               [12] 1163 	mov	a,r7
      000D63 A3               [24] 1164 	inc	dptr
      000D64 F0               [24] 1165 	movx	@dptr,a
                                   1166 ;	buffer.c:217: buff1.buff_size = buff_size;
      000D65 90 01 72         [24] 1167 	mov	dptr,#(_create_initial_buffers_buff1_65537_63 + 0x0008)
      000D68 EE               [12] 1168 	mov	a,r6
      000D69 F0               [24] 1169 	movx	@dptr,a
      000D6A EF               [12] 1170 	mov	a,r7
      000D6B A3               [24] 1171 	inc	dptr
      000D6C F0               [24] 1172 	movx	@dptr,a
                                   1173 ;	buffer.c:218: buff.buffer_num = 0;
      000D6D 90 01 5E         [24] 1174 	mov	dptr,#_create_initial_buffers_buff_65537_63
      000D70 E4               [12] 1175 	clr	a
      000D71 F0               [24] 1176 	movx	@dptr,a
      000D72 A3               [24] 1177 	inc	dptr
      000D73 F0               [24] 1178 	movx	@dptr,a
                                   1179 ;	buffer.c:219: buff1.buffer_num = 1;
      000D74 90 01 6A         [24] 1180 	mov	dptr,#_create_initial_buffers_buff1_65537_63
      000D77 04               [12] 1181 	inc	a
      000D78 F0               [24] 1182 	movx	@dptr,a
      000D79 E4               [12] 1183 	clr	a
      000D7A A3               [24] 1184 	inc	dptr
      000D7B F0               [24] 1185 	movx	@dptr,a
                                   1186 ;	buffer.c:220: buff1.buffer_end = buff1.buffer_start + buff_size;
      000D7C 90 01 6C         [24] 1187 	mov	dptr,#(_create_initial_buffers_buff1_65537_63 + 0x0002)
      000D7F E0               [24] 1188 	movx	a,@dptr
      000D80 FB               [12] 1189 	mov	r3,a
      000D81 A3               [24] 1190 	inc	dptr
      000D82 E0               [24] 1191 	movx	a,@dptr
      000D83 FC               [12] 1192 	mov	r4,a
      000D84 A3               [24] 1193 	inc	dptr
      000D85 E0               [24] 1194 	movx	a,@dptr
      000D86 FD               [12] 1195 	mov	r5,a
      000D87 EE               [12] 1196 	mov	a,r6
      000D88 2B               [12] 1197 	add	a,r3
      000D89 FB               [12] 1198 	mov	r3,a
      000D8A EF               [12] 1199 	mov	a,r7
      000D8B 3C               [12] 1200 	addc	a,r4
      000D8C FC               [12] 1201 	mov	r4,a
      000D8D 90 01 6F         [24] 1202 	mov	dptr,#(_create_initial_buffers_buff1_65537_63 + 0x0005)
      000D90 EB               [12] 1203 	mov	a,r3
      000D91 F0               [24] 1204 	movx	@dptr,a
      000D92 EC               [12] 1205 	mov	a,r4
      000D93 A3               [24] 1206 	inc	dptr
      000D94 F0               [24] 1207 	movx	@dptr,a
      000D95 ED               [12] 1208 	mov	a,r5
      000D96 A3               [24] 1209 	inc	dptr
      000D97 F0               [24] 1210 	movx	@dptr,a
                                   1211 ;	buffer.c:221: buff.buffer_end = buff.buffer_start + buff_size;
      000D98 90 01 60         [24] 1212 	mov	dptr,#(_create_initial_buffers_buff_65537_63 + 0x0002)
      000D9B E0               [24] 1213 	movx	a,@dptr
      000D9C FB               [12] 1214 	mov	r3,a
      000D9D A3               [24] 1215 	inc	dptr
      000D9E E0               [24] 1216 	movx	a,@dptr
      000D9F FC               [12] 1217 	mov	r4,a
      000DA0 A3               [24] 1218 	inc	dptr
      000DA1 E0               [24] 1219 	movx	a,@dptr
      000DA2 FD               [12] 1220 	mov	r5,a
      000DA3 EE               [12] 1221 	mov	a,r6
      000DA4 2B               [12] 1222 	add	a,r3
      000DA5 FE               [12] 1223 	mov	r6,a
      000DA6 EF               [12] 1224 	mov	a,r7
      000DA7 3C               [12] 1225 	addc	a,r4
      000DA8 FF               [12] 1226 	mov	r7,a
      000DA9 8D 02            [24] 1227 	mov	ar2,r5
      000DAB 90 01 63         [24] 1228 	mov	dptr,#(_create_initial_buffers_buff_65537_63 + 0x0005)
      000DAE EE               [12] 1229 	mov	a,r6
      000DAF F0               [24] 1230 	movx	@dptr,a
      000DB0 EF               [12] 1231 	mov	a,r7
      000DB1 A3               [24] 1232 	inc	dptr
      000DB2 F0               [24] 1233 	movx	@dptr,a
      000DB3 EA               [12] 1234 	mov	a,r2
      000DB4 A3               [24] 1235 	inc	dptr
      000DB5 F0               [24] 1236 	movx	@dptr,a
                                   1237 ;	buffer.c:222: buff.num_char = 0;
      000DB6 90 01 68         [24] 1238 	mov	dptr,#(_create_initial_buffers_buff_65537_63 + 0x000a)
      000DB9 E4               [12] 1239 	clr	a
      000DBA F0               [24] 1240 	movx	@dptr,a
      000DBB A3               [24] 1241 	inc	dptr
      000DBC F0               [24] 1242 	movx	@dptr,a
                                   1243 ;	buffer.c:223: buff1.num_char = 0;
      000DBD 90 01 74         [24] 1244 	mov	dptr,#(_create_initial_buffers_buff1_65537_63 + 0x000a)
      000DC0 F0               [24] 1245 	movx	@dptr,a
      000DC1 A3               [24] 1246 	inc	dptr
      000DC2 F0               [24] 1247 	movx	@dptr,a
                                   1248 ;	buffer.c:225: buffers_array[0] = buff;
      000DC3 90 15 1E         [24] 1249 	mov	dptr,#___memcpy_PARM_2
      000DC6 74 5E            [12] 1250 	mov	a,#_create_initial_buffers_buff_65537_63
      000DC8 F0               [24] 1251 	movx	@dptr,a
      000DC9 74 01            [12] 1252 	mov	a,#(_create_initial_buffers_buff_65537_63 >> 8)
      000DCB A3               [24] 1253 	inc	dptr
      000DCC F0               [24] 1254 	movx	@dptr,a
      000DCD E4               [12] 1255 	clr	a
      000DCE A3               [24] 1256 	inc	dptr
      000DCF F0               [24] 1257 	movx	@dptr,a
      000DD0 90 15 21         [24] 1258 	mov	dptr,#___memcpy_PARM_3
      000DD3 74 0C            [12] 1259 	mov	a,#0x0c
      000DD5 F0               [24] 1260 	movx	@dptr,a
      000DD6 E4               [12] 1261 	clr	a
      000DD7 A3               [24] 1262 	inc	dptr
      000DD8 F0               [24] 1263 	movx	@dptr,a
      000DD9 90 00 26         [24] 1264 	mov	dptr,#_buffers_array
      000DDC 75 F0 00         [24] 1265 	mov	b,#0x00
      000DDF 12 1F 8C         [24] 1266 	lcall	___memcpy
                                   1267 ;	buffer.c:226: buffers_array[1] = buff1;
      000DE2 90 15 1E         [24] 1268 	mov	dptr,#___memcpy_PARM_2
      000DE5 74 6A            [12] 1269 	mov	a,#_create_initial_buffers_buff1_65537_63
      000DE7 F0               [24] 1270 	movx	@dptr,a
      000DE8 74 01            [12] 1271 	mov	a,#(_create_initial_buffers_buff1_65537_63 >> 8)
      000DEA A3               [24] 1272 	inc	dptr
      000DEB F0               [24] 1273 	movx	@dptr,a
      000DEC E4               [12] 1274 	clr	a
      000DED A3               [24] 1275 	inc	dptr
      000DEE F0               [24] 1276 	movx	@dptr,a
      000DEF 90 15 21         [24] 1277 	mov	dptr,#___memcpy_PARM_3
      000DF2 74 0C            [12] 1278 	mov	a,#0x0c
      000DF4 F0               [24] 1279 	movx	@dptr,a
      000DF5 E4               [12] 1280 	clr	a
      000DF6 A3               [24] 1281 	inc	dptr
      000DF7 F0               [24] 1282 	movx	@dptr,a
      000DF8 90 00 32         [24] 1283 	mov	dptr,#(_buffers_array + 0x000c)
      000DFB 75 F0 00         [24] 1284 	mov	b,#0x00
                                   1285 ;	buffer.c:230: goto get_buff;
                                   1286 ;	buffer.c:231: }
      000DFE 02 1F 8C         [24] 1287 	ljmp	___memcpy
                                   1288 ;------------------------------------------------------------
                                   1289 ;Allocation info for local variables in function 'buffer_input_loop'
                                   1290 ;------------------------------------------------------------
                                   1291 ;rec                       Allocated with name '_buffer_input_loop_rec_65537_68'
                                   1292 ;------------------------------------------------------------
                                   1293 ;	buffer.c:239: void buffer_input_loop()
                                   1294 ;	-----------------------------------------
                                   1295 ;	 function buffer_input_loop
                                   1296 ;	-----------------------------------------
      000E01                       1297 _buffer_input_loop:
                                   1298 ;	buffer.c:241: print_heap_menu();
      000E01 12 0A 0D         [24] 1299 	lcall	_print_heap_menu
                                   1300 ;	buffer.c:243: while (1)
      000E04                       1301 00126$:
                                   1302 ;	buffer.c:245: rec = getchar();
      000E04 12 07 5E         [24] 1303 	lcall	_getchar
      000E07 AE 82            [24] 1304 	mov	r6,dpl
      000E09 AF 83            [24] 1305 	mov	r7,dph
                                   1306 ;	buffer.c:246: if (rec > 0x60 && rec < 0x7B)
      000E0B C3               [12] 1307 	clr	c
      000E0C 74 60            [12] 1308 	mov	a,#0x60
      000E0E 9E               [12] 1309 	subb	a,r6
      000E0F 74 80            [12] 1310 	mov	a,#(0x00 ^ 0x80)
      000E11 8F F0            [24] 1311 	mov	b,r7
      000E13 63 F0 80         [24] 1312 	xrl	b,#0x80
      000E16 95 F0            [12] 1313 	subb	a,b
      000E18 40 03            [24] 1314 	jc	00170$
      000E1A 02 0E A9         [24] 1315 	ljmp	00122$
      000E1D                       1316 00170$:
      000E1D C3               [12] 1317 	clr	c
      000E1E EE               [12] 1318 	mov	a,r6
      000E1F 94 7B            [12] 1319 	subb	a,#0x7b
      000E21 EF               [12] 1320 	mov	a,r7
      000E22 64 80            [12] 1321 	xrl	a,#0x80
      000E24 94 80            [12] 1322 	subb	a,#0x80
      000E26 40 03            [24] 1323 	jc	00171$
      000E28 02 0E A9         [24] 1324 	ljmp	00122$
      000E2B                       1325 00171$:
                                   1326 ;	buffer.c:250: if (buffers_array[0].num_char < buffers_array[0].buff_size)
      000E2B 90 00 30         [24] 1327 	mov	dptr,#(_buffers_array + 0x000a)
      000E2E E0               [24] 1328 	movx	a,@dptr
      000E2F FC               [12] 1329 	mov	r4,a
      000E30 A3               [24] 1330 	inc	dptr
      000E31 E0               [24] 1331 	movx	a,@dptr
      000E32 FD               [12] 1332 	mov	r5,a
      000E33 90 00 2E         [24] 1333 	mov	dptr,#(_buffers_array + 0x0008)
      000E36 E0               [24] 1334 	movx	a,@dptr
      000E37 FA               [12] 1335 	mov	r2,a
      000E38 A3               [24] 1336 	inc	dptr
      000E39 E0               [24] 1337 	movx	a,@dptr
      000E3A FB               [12] 1338 	mov	r3,a
      000E3B C3               [12] 1339 	clr	c
      000E3C EC               [12] 1340 	mov	a,r4
      000E3D 9A               [12] 1341 	subb	a,r2
      000E3E ED               [12] 1342 	mov	a,r5
      000E3F 64 80            [12] 1343 	xrl	a,#0x80
      000E41 8B F0            [24] 1344 	mov	b,r3
      000E43 63 F0 80         [24] 1345 	xrl	b,#0x80
      000E46 95 F0            [12] 1346 	subb	a,b
      000E48 50 32            [24] 1347 	jnc	00102$
                                   1348 ;	buffer.c:252: *(buffers_array[0].buffer_start + buffers_array[0].num_char) = rec;
      000E4A 90 00 28         [24] 1349 	mov	dptr,#(_buffers_array + 0x0002)
      000E4D E0               [24] 1350 	movx	a,@dptr
      000E4E F9               [12] 1351 	mov	r1,a
      000E4F A3               [24] 1352 	inc	dptr
      000E50 E0               [24] 1353 	movx	a,@dptr
      000E51 FA               [12] 1354 	mov	r2,a
      000E52 A3               [24] 1355 	inc	dptr
      000E53 E0               [24] 1356 	movx	a,@dptr
      000E54 FB               [12] 1357 	mov	r3,a
      000E55 EC               [12] 1358 	mov	a,r4
      000E56 29               [12] 1359 	add	a,r1
      000E57 F9               [12] 1360 	mov	r1,a
      000E58 ED               [12] 1361 	mov	a,r5
      000E59 3A               [12] 1362 	addc	a,r2
      000E5A FA               [12] 1363 	mov	r2,a
      000E5B 8E 05            [24] 1364 	mov	ar5,r6
      000E5D 89 82            [24] 1365 	mov	dpl,r1
      000E5F 8A 83            [24] 1366 	mov	dph,r2
      000E61 8B F0            [24] 1367 	mov	b,r3
      000E63 ED               [12] 1368 	mov	a,r5
      000E64 12 20 00         [24] 1369 	lcall	__gptrput
                                   1370 ;	buffer.c:253: buffers_array[0].num_char += 1;
      000E67 90 00 30         [24] 1371 	mov	dptr,#(_buffers_array + 0x000a)
      000E6A E0               [24] 1372 	movx	a,@dptr
      000E6B FC               [12] 1373 	mov	r4,a
      000E6C A3               [24] 1374 	inc	dptr
      000E6D E0               [24] 1375 	movx	a,@dptr
      000E6E FD               [12] 1376 	mov	r5,a
      000E6F 0C               [12] 1377 	inc	r4
      000E70 BC 00 01         [24] 1378 	cjne	r4,#0x00,00173$
      000E73 0D               [12] 1379 	inc	r5
      000E74                       1380 00173$:
      000E74 90 00 30         [24] 1381 	mov	dptr,#(_buffers_array + 0x000a)
      000E77 EC               [12] 1382 	mov	a,r4
      000E78 F0               [24] 1383 	movx	@dptr,a
      000E79 ED               [12] 1384 	mov	a,r5
      000E7A A3               [24] 1385 	inc	dptr
      000E7B F0               [24] 1386 	movx	@dptr,a
      000E7C                       1387 00102$:
                                   1388 ;	buffer.c:255: program_stats.all_char_count += 1;
      000E7C 90 00 20         [24] 1389 	mov	dptr,#(_program_stats + 0x0004)
      000E7F E0               [24] 1390 	movx	a,@dptr
      000E80 FC               [12] 1391 	mov	r4,a
      000E81 A3               [24] 1392 	inc	dptr
      000E82 E0               [24] 1393 	movx	a,@dptr
      000E83 FD               [12] 1394 	mov	r5,a
      000E84 0C               [12] 1395 	inc	r4
      000E85 BC 00 01         [24] 1396 	cjne	r4,#0x00,00174$
      000E88 0D               [12] 1397 	inc	r5
      000E89                       1398 00174$:
      000E89 90 00 20         [24] 1399 	mov	dptr,#(_program_stats + 0x0004)
      000E8C EC               [12] 1400 	mov	a,r4
      000E8D F0               [24] 1401 	movx	@dptr,a
      000E8E ED               [12] 1402 	mov	a,r5
      000E8F A3               [24] 1403 	inc	dptr
      000E90 F0               [24] 1404 	movx	@dptr,a
                                   1405 ;	buffer.c:256: program_stats.storage_char_count += 1;
      000E91 90 00 22         [24] 1406 	mov	dptr,#(_program_stats + 0x0006)
      000E94 E0               [24] 1407 	movx	a,@dptr
      000E95 FC               [12] 1408 	mov	r4,a
      000E96 A3               [24] 1409 	inc	dptr
      000E97 E0               [24] 1410 	movx	a,@dptr
      000E98 FD               [12] 1411 	mov	r5,a
      000E99 0C               [12] 1412 	inc	r4
      000E9A BC 00 01         [24] 1413 	cjne	r4,#0x00,00175$
      000E9D 0D               [12] 1414 	inc	r5
      000E9E                       1415 00175$:
      000E9E 90 00 22         [24] 1416 	mov	dptr,#(_program_stats + 0x0006)
      000EA1 EC               [12] 1417 	mov	a,r4
      000EA2 F0               [24] 1418 	movx	@dptr,a
      000EA3 ED               [12] 1419 	mov	a,r5
      000EA4 A3               [24] 1420 	inc	dptr
      000EA5 F0               [24] 1421 	movx	@dptr,a
      000EA6 02 0E 04         [24] 1422 	ljmp	00126$
      000EA9                       1423 00122$:
                                   1424 ;	buffer.c:258: else if (rec == 0x3F)
      000EA9 BE 3F 1F         [24] 1425 	cjne	r6,#0x3f,00119$
      000EAC BF 00 1C         [24] 1426 	cjne	r7,#0x00,00119$
                                   1427 ;	buffer.c:261: print_heap_stats();
      000EAF 12 11 82         [24] 1428 	lcall	_print_heap_stats
                                   1429 ;	buffer.c:262: print_all_buffers();
      000EB2 12 12 3D         [24] 1430 	lcall	_print_all_buffers
                                   1431 ;	buffer.c:263: dump_buff_zero_ascii();
      000EB5 12 0F 2B         [24] 1432 	lcall	_dump_buff_zero_ascii
                                   1433 ;	buffer.c:264: program_stats.all_char_count = 0;
      000EB8 90 00 20         [24] 1434 	mov	dptr,#(_program_stats + 0x0004)
      000EBB E4               [12] 1435 	clr	a
      000EBC F0               [24] 1436 	movx	@dptr,a
      000EBD A3               [24] 1437 	inc	dptr
      000EBE F0               [24] 1438 	movx	@dptr,a
                                   1439 ;	buffer.c:265: program_stats.storage_char_count = 0;
      000EBF 90 00 22         [24] 1440 	mov	dptr,#(_program_stats + 0x0006)
      000EC2 F0               [24] 1441 	movx	@dptr,a
      000EC3 A3               [24] 1442 	inc	dptr
      000EC4 F0               [24] 1443 	movx	@dptr,a
                                   1444 ;	buffer.c:266: print_heap_menu();
      000EC5 12 0A 0D         [24] 1445 	lcall	_print_heap_menu
      000EC8 02 0E 04         [24] 1446 	ljmp	00126$
      000ECB                       1447 00119$:
                                   1448 ;	buffer.c:268: else if (rec == 0x3D)
      000ECB BE 3D 0C         [24] 1449 	cjne	r6,#0x3d,00116$
      000ECE BF 00 09         [24] 1450 	cjne	r7,#0x00,00116$
                                   1451 ;	buffer.c:271: dump_buff_zero_hex();
      000ED1 12 10 3B         [24] 1452 	lcall	_dump_buff_zero_hex
                                   1453 ;	buffer.c:272: print_heap_menu();
      000ED4 12 0A 0D         [24] 1454 	lcall	_print_heap_menu
      000ED7 02 0E 04         [24] 1455 	ljmp	00126$
      000EDA                       1456 00116$:
                                   1457 ;	buffer.c:274: else if (rec == 0x40)
      000EDA BE 40 0C         [24] 1458 	cjne	r6,#0x40,00113$
      000EDD BF 00 09         [24] 1459 	cjne	r7,#0x00,00113$
                                   1460 ;	buffer.c:277: at_clear_all_buffers();
      000EE0 12 07 A3         [24] 1461 	lcall	_at_clear_all_buffers
                                   1462 ;	buffer.c:278: print_heap_menu();
      000EE3 12 0A 0D         [24] 1463 	lcall	_print_heap_menu
      000EE6 02 0E 04         [24] 1464 	ljmp	00126$
      000EE9                       1465 00113$:
                                   1466 ;	buffer.c:280: else if (rec == 0x2B)
      000EE9 BE 2B 0C         [24] 1467 	cjne	r6,#0x2b,00110$
      000EEC BF 00 09         [24] 1468 	cjne	r7,#0x00,00110$
                                   1469 ;	buffer.c:283: create_new_buffer();
      000EEF 12 0A B6         [24] 1470 	lcall	_create_new_buffer
                                   1471 ;	buffer.c:284: print_heap_menu();
      000EF2 12 0A 0D         [24] 1472 	lcall	_print_heap_menu
      000EF5 02 0E 04         [24] 1473 	ljmp	00126$
      000EF8                       1474 00110$:
                                   1475 ;	buffer.c:286: else if (rec == 0x2D)
      000EF8 BE 2D 0C         [24] 1476 	cjne	r6,#0x2d,00107$
      000EFB BF 00 09         [24] 1477 	cjne	r7,#0x00,00107$
                                   1478 ;	buffer.c:289: delete_buffer();
      000EFE 12 08 37         [24] 1479 	lcall	_delete_buffer
                                   1480 ;	buffer.c:290: print_heap_menu();
      000F01 12 0A 0D         [24] 1481 	lcall	_print_heap_menu
      000F04 02 0E 04         [24] 1482 	ljmp	00126$
      000F07                       1483 00107$:
                                   1484 ;	buffer.c:292: else if (rec == 0x4D)
      000F07 BE 4D 09         [24] 1485 	cjne	r6,#0x4d,00104$
      000F0A BF 00 06         [24] 1486 	cjne	r7,#0x00,00104$
                                   1487 ;	buffer.c:294: main_menu();
      000F0D 12 00 B5         [24] 1488 	lcall	_main_menu
      000F10 02 0E 04         [24] 1489 	ljmp	00126$
      000F13                       1490 00104$:
                                   1491 ;	buffer.c:298: program_stats.all_char_count += 1;
      000F13 90 00 20         [24] 1492 	mov	dptr,#(_program_stats + 0x0004)
      000F16 E0               [24] 1493 	movx	a,@dptr
      000F17 FE               [12] 1494 	mov	r6,a
      000F18 A3               [24] 1495 	inc	dptr
      000F19 E0               [24] 1496 	movx	a,@dptr
      000F1A FF               [12] 1497 	mov	r7,a
      000F1B 0E               [12] 1498 	inc	r6
      000F1C BE 00 01         [24] 1499 	cjne	r6,#0x00,00188$
      000F1F 0F               [12] 1500 	inc	r7
      000F20                       1501 00188$:
      000F20 90 00 20         [24] 1502 	mov	dptr,#(_program_stats + 0x0004)
      000F23 EE               [12] 1503 	mov	a,r6
      000F24 F0               [24] 1504 	movx	@dptr,a
      000F25 EF               [12] 1505 	mov	a,r7
      000F26 A3               [24] 1506 	inc	dptr
      000F27 F0               [24] 1507 	movx	@dptr,a
                                   1508 ;	buffer.c:301: }
      000F28 02 0E 04         [24] 1509 	ljmp	00126$
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
      000F2B                       1520 _dump_buff_zero_ascii:
                                   1521 ;	buffer.c:311: int j = 64;
      000F2B 90 01 76         [24] 1522 	mov	dptr,#_dump_buff_zero_ascii_j_65536_79
      000F2E 74 40            [12] 1523 	mov	a,#0x40
      000F30 F0               [24] 1524 	movx	@dptr,a
      000F31 E4               [12] 1525 	clr	a
      000F32 A3               [24] 1526 	inc	dptr
      000F33 F0               [24] 1527 	movx	@dptr,a
                                   1528 ;	buffer.c:312: if (buffers_array[0].num_char > 0)
      000F34 90 00 30         [24] 1529 	mov	dptr,#(_buffers_array + 0x000a)
      000F37 E0               [24] 1530 	movx	a,@dptr
      000F38 FE               [12] 1531 	mov	r6,a
      000F39 A3               [24] 1532 	inc	dptr
      000F3A E0               [24] 1533 	movx	a,@dptr
      000F3B FF               [12] 1534 	mov	r7,a
      000F3C C3               [12] 1535 	clr	c
      000F3D E4               [12] 1536 	clr	a
      000F3E 9E               [12] 1537 	subb	a,r6
      000F3F 74 80            [12] 1538 	mov	a,#(0x00 ^ 0x80)
      000F41 8F F0            [24] 1539 	mov	b,r7
      000F43 63 F0 80         [24] 1540 	xrl	b,#0x80
      000F46 95 F0            [12] 1541 	subb	a,b
      000F48 40 03            [24] 1542 	jc	00135$
      000F4A 02 10 25         [24] 1543 	ljmp	00107$
      000F4D                       1544 00135$:
                                   1545 ;	buffer.c:314: printf("\n\n\r***********Buffer-0-Contents*********** \n\r");
      000F4D 74 BF            [12] 1546 	mov	a,#___str_19
      000F4F C0 E0            [24] 1547 	push	acc
      000F51 74 30            [12] 1548 	mov	a,#(___str_19 >> 8)
      000F53 C0 E0            [24] 1549 	push	acc
      000F55 74 80            [12] 1550 	mov	a,#0x80
      000F57 C0 E0            [24] 1551 	push	acc
      000F59 12 22 2E         [24] 1552 	lcall	_printf
      000F5C 15 81            [12] 1553 	dec	sp
      000F5E 15 81            [12] 1554 	dec	sp
      000F60 15 81            [12] 1555 	dec	sp
                                   1556 ;	buffer.c:315: for (int i = 0; i < buffers_array[0].num_char; i++)
      000F62 7E 00            [12] 1557 	mov	r6,#0x00
      000F64 7F 00            [12] 1558 	mov	r7,#0x00
      000F66                       1559 00110$:
      000F66 90 00 30         [24] 1560 	mov	dptr,#(_buffers_array + 0x000a)
      000F69 E0               [24] 1561 	movx	a,@dptr
      000F6A FC               [12] 1562 	mov	r4,a
      000F6B A3               [24] 1563 	inc	dptr
      000F6C E0               [24] 1564 	movx	a,@dptr
      000F6D FD               [12] 1565 	mov	r5,a
      000F6E C3               [12] 1566 	clr	c
      000F6F EE               [12] 1567 	mov	a,r6
      000F70 9C               [12] 1568 	subb	a,r4
      000F71 EF               [12] 1569 	mov	a,r7
      000F72 64 80            [12] 1570 	xrl	a,#0x80
      000F74 8D F0            [24] 1571 	mov	b,r5
      000F76 63 F0 80         [24] 1572 	xrl	b,#0x80
      000F79 95 F0            [12] 1573 	subb	a,b
      000F7B 40 03            [24] 1574 	jc	00136$
      000F7D 02 10 08         [24] 1575 	ljmp	00105$
      000F80                       1576 00136$:
                                   1577 ;	buffer.c:317: if (j == 64)
      000F80 90 01 76         [24] 1578 	mov	dptr,#_dump_buff_zero_ascii_j_65536_79
      000F83 E0               [24] 1579 	movx	a,@dptr
      000F84 FC               [12] 1580 	mov	r4,a
      000F85 A3               [24] 1581 	inc	dptr
      000F86 E0               [24] 1582 	movx	a,@dptr
      000F87 FD               [12] 1583 	mov	r5,a
      000F88 BC 40 20         [24] 1584 	cjne	r4,#0x40,00102$
      000F8B BD 00 1D         [24] 1585 	cjne	r5,#0x00,00102$
                                   1586 ;	buffer.c:319: printf("\n\r");
      000F8E C0 07            [24] 1587 	push	ar7
      000F90 C0 06            [24] 1588 	push	ar6
      000F92 74 ED            [12] 1589 	mov	a,#___str_20
      000F94 C0 E0            [24] 1590 	push	acc
      000F96 74 30            [12] 1591 	mov	a,#(___str_20 >> 8)
      000F98 C0 E0            [24] 1592 	push	acc
      000F9A 74 80            [12] 1593 	mov	a,#0x80
      000F9C C0 E0            [24] 1594 	push	acc
      000F9E 12 22 2E         [24] 1595 	lcall	_printf
      000FA1 15 81            [12] 1596 	dec	sp
      000FA3 15 81            [12] 1597 	dec	sp
      000FA5 15 81            [12] 1598 	dec	sp
      000FA7 D0 06            [24] 1599 	pop	ar6
      000FA9 D0 07            [24] 1600 	pop	ar7
      000FAB                       1601 00102$:
                                   1602 ;	buffer.c:321: putchar(*(buffers_array[0].buffer_start + i));
      000FAB 90 00 28         [24] 1603 	mov	dptr,#(_buffers_array + 0x0002)
      000FAE E0               [24] 1604 	movx	a,@dptr
      000FAF FB               [12] 1605 	mov	r3,a
      000FB0 A3               [24] 1606 	inc	dptr
      000FB1 E0               [24] 1607 	movx	a,@dptr
      000FB2 FC               [12] 1608 	mov	r4,a
      000FB3 A3               [24] 1609 	inc	dptr
      000FB4 E0               [24] 1610 	movx	a,@dptr
      000FB5 FD               [12] 1611 	mov	r5,a
      000FB6 EE               [12] 1612 	mov	a,r6
      000FB7 2B               [12] 1613 	add	a,r3
      000FB8 FB               [12] 1614 	mov	r3,a
      000FB9 EF               [12] 1615 	mov	a,r7
      000FBA 3C               [12] 1616 	addc	a,r4
      000FBB FC               [12] 1617 	mov	r4,a
      000FBC 8B 82            [24] 1618 	mov	dpl,r3
      000FBE 8C 83            [24] 1619 	mov	dph,r4
      000FC0 8D F0            [24] 1620 	mov	b,r5
      000FC2 12 2C 4D         [24] 1621 	lcall	__gptrget
      000FC5 FB               [12] 1622 	mov	r3,a
      000FC6 7D 00            [12] 1623 	mov	r5,#0x00
      000FC8 8B 82            [24] 1624 	mov	dpl,r3
      000FCA 8D 83            [24] 1625 	mov	dph,r5
      000FCC C0 07            [24] 1626 	push	ar7
      000FCE C0 06            [24] 1627 	push	ar6
      000FD0 12 07 3F         [24] 1628 	lcall	_putchar
      000FD3 D0 06            [24] 1629 	pop	ar6
      000FD5 D0 07            [24] 1630 	pop	ar7
                                   1631 ;	buffer.c:322: j--;
      000FD7 90 01 76         [24] 1632 	mov	dptr,#_dump_buff_zero_ascii_j_65536_79
      000FDA E0               [24] 1633 	movx	a,@dptr
      000FDB 24 FF            [12] 1634 	add	a,#0xff
      000FDD FC               [12] 1635 	mov	r4,a
      000FDE A3               [24] 1636 	inc	dptr
      000FDF E0               [24] 1637 	movx	a,@dptr
      000FE0 34 FF            [12] 1638 	addc	a,#0xff
      000FE2 FD               [12] 1639 	mov	r5,a
      000FE3 90 01 76         [24] 1640 	mov	dptr,#_dump_buff_zero_ascii_j_65536_79
      000FE6 EC               [12] 1641 	mov	a,r4
      000FE7 F0               [24] 1642 	movx	@dptr,a
      000FE8 ED               [12] 1643 	mov	a,r5
      000FE9 A3               [24] 1644 	inc	dptr
      000FEA F0               [24] 1645 	movx	@dptr,a
                                   1646 ;	buffer.c:323: if (j == 0)
      000FEB 90 01 76         [24] 1647 	mov	dptr,#_dump_buff_zero_ascii_j_65536_79
      000FEE E0               [24] 1648 	movx	a,@dptr
      000FEF F5 F0            [12] 1649 	mov	b,a
      000FF1 A3               [24] 1650 	inc	dptr
      000FF2 E0               [24] 1651 	movx	a,@dptr
      000FF3 45 F0            [12] 1652 	orl	a,b
      000FF5 70 09            [24] 1653 	jnz	00111$
                                   1654 ;	buffer.c:324: j = 64;
      000FF7 90 01 76         [24] 1655 	mov	dptr,#_dump_buff_zero_ascii_j_65536_79
      000FFA 74 40            [12] 1656 	mov	a,#0x40
      000FFC F0               [24] 1657 	movx	@dptr,a
      000FFD E4               [12] 1658 	clr	a
      000FFE A3               [24] 1659 	inc	dptr
      000FFF F0               [24] 1660 	movx	@dptr,a
      001000                       1661 00111$:
                                   1662 ;	buffer.c:315: for (int i = 0; i < buffers_array[0].num_char; i++)
      001000 0E               [12] 1663 	inc	r6
      001001 BE 00 01         [24] 1664 	cjne	r6,#0x00,00140$
      001004 0F               [12] 1665 	inc	r7
      001005                       1666 00140$:
      001005 02 0F 66         [24] 1667 	ljmp	00110$
      001008                       1668 00105$:
                                   1669 ;	buffer.c:326: buffers_array[0].num_char = 0;
      001008 90 00 30         [24] 1670 	mov	dptr,#(_buffers_array + 0x000a)
      00100B E4               [12] 1671 	clr	a
      00100C F0               [24] 1672 	movx	@dptr,a
      00100D A3               [24] 1673 	inc	dptr
      00100E F0               [24] 1674 	movx	@dptr,a
                                   1675 ;	buffer.c:327: printf("\n\n\r");
      00100F 74 F0            [12] 1676 	mov	a,#___str_21
      001011 C0 E0            [24] 1677 	push	acc
      001013 74 30            [12] 1678 	mov	a,#(___str_21 >> 8)
      001015 C0 E0            [24] 1679 	push	acc
      001017 74 80            [12] 1680 	mov	a,#0x80
      001019 C0 E0            [24] 1681 	push	acc
      00101B 12 22 2E         [24] 1682 	lcall	_printf
      00101E 15 81            [12] 1683 	dec	sp
      001020 15 81            [12] 1684 	dec	sp
      001022 15 81            [12] 1685 	dec	sp
      001024 22               [24] 1686 	ret
      001025                       1687 00107$:
                                   1688 ;	buffer.c:331: printf("Buffer0 is Empty....\n\r");
      001025 74 F4            [12] 1689 	mov	a,#___str_22
      001027 C0 E0            [24] 1690 	push	acc
      001029 74 30            [12] 1691 	mov	a,#(___str_22 >> 8)
      00102B C0 E0            [24] 1692 	push	acc
      00102D 74 80            [12] 1693 	mov	a,#0x80
      00102F C0 E0            [24] 1694 	push	acc
      001031 12 22 2E         [24] 1695 	lcall	_printf
      001034 15 81            [12] 1696 	dec	sp
      001036 15 81            [12] 1697 	dec	sp
      001038 15 81            [12] 1698 	dec	sp
                                   1699 ;	buffer.c:333: }
      00103A 22               [24] 1700 	ret
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
      00103B                       1711 _dump_buff_zero_hex:
                                   1712 ;	buffer.c:342: if (buffers_array[0].num_char > 0)
      00103B 90 00 30         [24] 1713 	mov	dptr,#(_buffers_array + 0x000a)
      00103E E0               [24] 1714 	movx	a,@dptr
      00103F FE               [12] 1715 	mov	r6,a
      001040 A3               [24] 1716 	inc	dptr
      001041 E0               [24] 1717 	movx	a,@dptr
      001042 FF               [12] 1718 	mov	r7,a
      001043 C3               [12] 1719 	clr	c
      001044 E4               [12] 1720 	clr	a
      001045 9E               [12] 1721 	subb	a,r6
      001046 74 80            [12] 1722 	mov	a,#(0x00 ^ 0x80)
      001048 8F F0            [24] 1723 	mov	b,r7
      00104A 63 F0 80         [24] 1724 	xrl	b,#0x80
      00104D 95 F0            [12] 1725 	subb	a,b
      00104F 40 03            [24] 1726 	jc	00135$
      001051 02 11 6C         [24] 1727 	ljmp	00107$
      001054                       1728 00135$:
                                   1729 ;	buffer.c:344: printf("\n\r-------------------------HEXDUMP--------------------------------");
      001054 74 0B            [12] 1730 	mov	a,#___str_23
      001056 C0 E0            [24] 1731 	push	acc
      001058 74 31            [12] 1732 	mov	a,#(___str_23 >> 8)
      00105A C0 E0            [24] 1733 	push	acc
      00105C 74 80            [12] 1734 	mov	a,#0x80
      00105E C0 E0            [24] 1735 	push	acc
      001060 12 22 2E         [24] 1736 	lcall	_printf
      001063 15 81            [12] 1737 	dec	sp
      001065 15 81            [12] 1738 	dec	sp
      001067 15 81            [12] 1739 	dec	sp
                                   1740 ;	buffer.c:345: printf("\n\r    ADDR: +0 +1 +2 +3 +4 +5 +6 +7 +8 +9 +A +B +C +D +E +F \n\r");
      001069 74 4E            [12] 1741 	mov	a,#___str_24
      00106B C0 E0            [24] 1742 	push	acc
      00106D 74 31            [12] 1743 	mov	a,#(___str_24 >> 8)
      00106F C0 E0            [24] 1744 	push	acc
      001071 74 80            [12] 1745 	mov	a,#0x80
      001073 C0 E0            [24] 1746 	push	acc
      001075 12 22 2E         [24] 1747 	lcall	_printf
      001078 15 81            [12] 1748 	dec	sp
      00107A 15 81            [12] 1749 	dec	sp
      00107C 15 81            [12] 1750 	dec	sp
                                   1751 ;	buffer.c:346: int j = 16;
      00107E 90 01 78         [24] 1752 	mov	dptr,#_dump_buff_zero_hex_j_131073_87
      001081 74 10            [12] 1753 	mov	a,#0x10
      001083 F0               [24] 1754 	movx	@dptr,a
      001084 E4               [12] 1755 	clr	a
      001085 A3               [24] 1756 	inc	dptr
      001086 F0               [24] 1757 	movx	@dptr,a
                                   1758 ;	buffer.c:348: for (int i = 0; i < buffers_array[0].num_char; i++)
      001087 7E 00            [12] 1759 	mov	r6,#0x00
      001089 7F 00            [12] 1760 	mov	r7,#0x00
      00108B                       1761 00110$:
      00108B 90 00 30         [24] 1762 	mov	dptr,#(_buffers_array + 0x000a)
      00108E E0               [24] 1763 	movx	a,@dptr
      00108F FC               [12] 1764 	mov	r4,a
      001090 A3               [24] 1765 	inc	dptr
      001091 E0               [24] 1766 	movx	a,@dptr
      001092 FD               [12] 1767 	mov	r5,a
      001093 C3               [12] 1768 	clr	c
      001094 EE               [12] 1769 	mov	a,r6
      001095 9C               [12] 1770 	subb	a,r4
      001096 EF               [12] 1771 	mov	a,r7
      001097 64 80            [12] 1772 	xrl	a,#0x80
      001099 8D F0            [24] 1773 	mov	b,r5
      00109B 63 F0 80         [24] 1774 	xrl	b,#0x80
      00109E 95 F0            [12] 1775 	subb	a,b
      0010A0 40 03            [24] 1776 	jc	00136$
      0010A2 02 11 56         [24] 1777 	ljmp	00105$
      0010A5                       1778 00136$:
                                   1779 ;	buffer.c:350: if (j == 16)
      0010A5 90 01 78         [24] 1780 	mov	dptr,#_dump_buff_zero_hex_j_131073_87
      0010A8 E0               [24] 1781 	movx	a,@dptr
      0010A9 FC               [12] 1782 	mov	r4,a
      0010AA A3               [24] 1783 	inc	dptr
      0010AB E0               [24] 1784 	movx	a,@dptr
      0010AC FD               [12] 1785 	mov	r5,a
      0010AD BC 10 37         [24] 1786 	cjne	r4,#0x10,00102$
      0010B0 BD 00 34         [24] 1787 	cjne	r5,#0x00,00102$
                                   1788 ;	buffer.c:352: printf("\n\r%p: ", (buffers_array[0].buffer_start + i));
      0010B3 90 00 28         [24] 1789 	mov	dptr,#(_buffers_array + 0x0002)
      0010B6 E0               [24] 1790 	movx	a,@dptr
      0010B7 FB               [12] 1791 	mov	r3,a
      0010B8 A3               [24] 1792 	inc	dptr
      0010B9 E0               [24] 1793 	movx	a,@dptr
      0010BA FC               [12] 1794 	mov	r4,a
      0010BB A3               [24] 1795 	inc	dptr
      0010BC E0               [24] 1796 	movx	a,@dptr
      0010BD FD               [12] 1797 	mov	r5,a
      0010BE EE               [12] 1798 	mov	a,r6
      0010BF 2B               [12] 1799 	add	a,r3
      0010C0 FB               [12] 1800 	mov	r3,a
      0010C1 EF               [12] 1801 	mov	a,r7
      0010C2 3C               [12] 1802 	addc	a,r4
      0010C3 FC               [12] 1803 	mov	r4,a
      0010C4 C0 07            [24] 1804 	push	ar7
      0010C6 C0 06            [24] 1805 	push	ar6
      0010C8 C0 03            [24] 1806 	push	ar3
      0010CA C0 04            [24] 1807 	push	ar4
      0010CC C0 05            [24] 1808 	push	ar5
      0010CE 74 8D            [12] 1809 	mov	a,#___str_25
      0010D0 C0 E0            [24] 1810 	push	acc
      0010D2 74 31            [12] 1811 	mov	a,#(___str_25 >> 8)
      0010D4 C0 E0            [24] 1812 	push	acc
      0010D6 74 80            [12] 1813 	mov	a,#0x80
      0010D8 C0 E0            [24] 1814 	push	acc
      0010DA 12 22 2E         [24] 1815 	lcall	_printf
      0010DD E5 81            [12] 1816 	mov	a,sp
      0010DF 24 FA            [12] 1817 	add	a,#0xfa
      0010E1 F5 81            [12] 1818 	mov	sp,a
      0010E3 D0 06            [24] 1819 	pop	ar6
      0010E5 D0 07            [24] 1820 	pop	ar7
      0010E7                       1821 00102$:
                                   1822 ;	buffer.c:354: printf("%x ", *(buffers_array[0].buffer_start + i));
      0010E7 90 00 28         [24] 1823 	mov	dptr,#(_buffers_array + 0x0002)
      0010EA E0               [24] 1824 	movx	a,@dptr
      0010EB FB               [12] 1825 	mov	r3,a
      0010EC A3               [24] 1826 	inc	dptr
      0010ED E0               [24] 1827 	movx	a,@dptr
      0010EE FC               [12] 1828 	mov	r4,a
      0010EF A3               [24] 1829 	inc	dptr
      0010F0 E0               [24] 1830 	movx	a,@dptr
      0010F1 FD               [12] 1831 	mov	r5,a
      0010F2 EE               [12] 1832 	mov	a,r6
      0010F3 2B               [12] 1833 	add	a,r3
      0010F4 FB               [12] 1834 	mov	r3,a
      0010F5 EF               [12] 1835 	mov	a,r7
      0010F6 3C               [12] 1836 	addc	a,r4
      0010F7 FC               [12] 1837 	mov	r4,a
      0010F8 8B 82            [24] 1838 	mov	dpl,r3
      0010FA 8C 83            [24] 1839 	mov	dph,r4
      0010FC 8D F0            [24] 1840 	mov	b,r5
      0010FE 12 2C 4D         [24] 1841 	lcall	__gptrget
      001101 FB               [12] 1842 	mov	r3,a
      001102 7D 00            [12] 1843 	mov	r5,#0x00
      001104 C0 07            [24] 1844 	push	ar7
      001106 C0 06            [24] 1845 	push	ar6
      001108 C0 03            [24] 1846 	push	ar3
      00110A C0 05            [24] 1847 	push	ar5
      00110C 74 94            [12] 1848 	mov	a,#___str_26
      00110E C0 E0            [24] 1849 	push	acc
      001110 74 31            [12] 1850 	mov	a,#(___str_26 >> 8)
      001112 C0 E0            [24] 1851 	push	acc
      001114 74 80            [12] 1852 	mov	a,#0x80
      001116 C0 E0            [24] 1853 	push	acc
      001118 12 22 2E         [24] 1854 	lcall	_printf
      00111B E5 81            [12] 1855 	mov	a,sp
      00111D 24 FB            [12] 1856 	add	a,#0xfb
      00111F F5 81            [12] 1857 	mov	sp,a
      001121 D0 06            [24] 1858 	pop	ar6
      001123 D0 07            [24] 1859 	pop	ar7
                                   1860 ;	buffer.c:355: j--;
      001125 90 01 78         [24] 1861 	mov	dptr,#_dump_buff_zero_hex_j_131073_87
      001128 E0               [24] 1862 	movx	a,@dptr
      001129 24 FF            [12] 1863 	add	a,#0xff
      00112B FC               [12] 1864 	mov	r4,a
      00112C A3               [24] 1865 	inc	dptr
      00112D E0               [24] 1866 	movx	a,@dptr
      00112E 34 FF            [12] 1867 	addc	a,#0xff
      001130 FD               [12] 1868 	mov	r5,a
      001131 90 01 78         [24] 1869 	mov	dptr,#_dump_buff_zero_hex_j_131073_87
      001134 EC               [12] 1870 	mov	a,r4
      001135 F0               [24] 1871 	movx	@dptr,a
      001136 ED               [12] 1872 	mov	a,r5
      001137 A3               [24] 1873 	inc	dptr
      001138 F0               [24] 1874 	movx	@dptr,a
                                   1875 ;	buffer.c:356: if (j == 0)
      001139 90 01 78         [24] 1876 	mov	dptr,#_dump_buff_zero_hex_j_131073_87
      00113C E0               [24] 1877 	movx	a,@dptr
      00113D F5 F0            [12] 1878 	mov	b,a
      00113F A3               [24] 1879 	inc	dptr
      001140 E0               [24] 1880 	movx	a,@dptr
      001141 45 F0            [12] 1881 	orl	a,b
      001143 70 09            [24] 1882 	jnz	00111$
                                   1883 ;	buffer.c:357: j = 16;
      001145 90 01 78         [24] 1884 	mov	dptr,#_dump_buff_zero_hex_j_131073_87
      001148 74 10            [12] 1885 	mov	a,#0x10
      00114A F0               [24] 1886 	movx	@dptr,a
      00114B E4               [12] 1887 	clr	a
      00114C A3               [24] 1888 	inc	dptr
      00114D F0               [24] 1889 	movx	@dptr,a
      00114E                       1890 00111$:
                                   1891 ;	buffer.c:348: for (int i = 0; i < buffers_array[0].num_char; i++)
      00114E 0E               [12] 1892 	inc	r6
      00114F BE 00 01         [24] 1893 	cjne	r6,#0x00,00140$
      001152 0F               [12] 1894 	inc	r7
      001153                       1895 00140$:
      001153 02 10 8B         [24] 1896 	ljmp	00110$
      001156                       1897 00105$:
                                   1898 ;	buffer.c:359: printf("\n\n\r");
      001156 74 F0            [12] 1899 	mov	a,#___str_21
      001158 C0 E0            [24] 1900 	push	acc
      00115A 74 30            [12] 1901 	mov	a,#(___str_21 >> 8)
      00115C C0 E0            [24] 1902 	push	acc
      00115E 74 80            [12] 1903 	mov	a,#0x80
      001160 C0 E0            [24] 1904 	push	acc
      001162 12 22 2E         [24] 1905 	lcall	_printf
      001165 15 81            [12] 1906 	dec	sp
      001167 15 81            [12] 1907 	dec	sp
      001169 15 81            [12] 1908 	dec	sp
      00116B 22               [24] 1909 	ret
      00116C                       1910 00107$:
                                   1911 ;	buffer.c:363: printf("Buffer is empty...\n\r");
      00116C 74 98            [12] 1912 	mov	a,#___str_27
      00116E C0 E0            [24] 1913 	push	acc
      001170 74 31            [12] 1914 	mov	a,#(___str_27 >> 8)
      001172 C0 E0            [24] 1915 	push	acc
      001174 74 80            [12] 1916 	mov	a,#0x80
      001176 C0 E0            [24] 1917 	push	acc
      001178 12 22 2E         [24] 1918 	lcall	_printf
      00117B 15 81            [12] 1919 	dec	sp
      00117D 15 81            [12] 1920 	dec	sp
      00117F 15 81            [12] 1921 	dec	sp
                                   1922 ;	buffer.c:365: }
      001181 22               [24] 1923 	ret
                                   1924 ;------------------------------------------------------------
                                   1925 ;Allocation info for local variables in function 'print_heap_stats'
                                   1926 ;------------------------------------------------------------
                                   1927 ;	buffer.c:372: void print_heap_stats()
                                   1928 ;	-----------------------------------------
                                   1929 ;	 function print_heap_stats
                                   1930 ;	-----------------------------------------
      001182                       1931 _print_heap_stats:
                                   1932 ;	buffer.c:374: printf("\n\r****************HEAP*STATS*************\n\r");
      001182 74 AD            [12] 1933 	mov	a,#___str_28
      001184 C0 E0            [24] 1934 	push	acc
      001186 74 31            [12] 1935 	mov	a,#(___str_28 >> 8)
      001188 C0 E0            [24] 1936 	push	acc
      00118A 74 80            [12] 1937 	mov	a,#0x80
      00118C C0 E0            [24] 1938 	push	acc
      00118E 12 22 2E         [24] 1939 	lcall	_printf
      001191 15 81            [12] 1940 	dec	sp
      001193 15 81            [12] 1941 	dec	sp
      001195 15 81            [12] 1942 	dec	sp
                                   1943 ;	buffer.c:375: printf("Total Heap Size: %d \n\r", program_stats.total_heap_size);
      001197 90 00 1C         [24] 1944 	mov	dptr,#_program_stats
      00119A E0               [24] 1945 	movx	a,@dptr
      00119B FE               [12] 1946 	mov	r6,a
      00119C A3               [24] 1947 	inc	dptr
      00119D E0               [24] 1948 	movx	a,@dptr
      00119E FF               [12] 1949 	mov	r7,a
      00119F C0 06            [24] 1950 	push	ar6
      0011A1 C0 07            [24] 1951 	push	ar7
      0011A3 74 D9            [12] 1952 	mov	a,#___str_29
      0011A5 C0 E0            [24] 1953 	push	acc
      0011A7 74 31            [12] 1954 	mov	a,#(___str_29 >> 8)
      0011A9 C0 E0            [24] 1955 	push	acc
      0011AB 74 80            [12] 1956 	mov	a,#0x80
      0011AD C0 E0            [24] 1957 	push	acc
      0011AF 12 22 2E         [24] 1958 	lcall	_printf
      0011B2 E5 81            [12] 1959 	mov	a,sp
      0011B4 24 FB            [12] 1960 	add	a,#0xfb
      0011B6 F5 81            [12] 1961 	mov	sp,a
                                   1962 ;	buffer.c:376: printf("Allocated Heap Size: %d \n\r", program_stats.allocated_heap);
      0011B8 90 00 1E         [24] 1963 	mov	dptr,#(_program_stats + 0x0002)
      0011BB E0               [24] 1964 	movx	a,@dptr
      0011BC FE               [12] 1965 	mov	r6,a
      0011BD A3               [24] 1966 	inc	dptr
      0011BE E0               [24] 1967 	movx	a,@dptr
      0011BF FF               [12] 1968 	mov	r7,a
      0011C0 C0 06            [24] 1969 	push	ar6
      0011C2 C0 07            [24] 1970 	push	ar7
      0011C4 74 F0            [12] 1971 	mov	a,#___str_30
      0011C6 C0 E0            [24] 1972 	push	acc
      0011C8 74 31            [12] 1973 	mov	a,#(___str_30 >> 8)
      0011CA C0 E0            [24] 1974 	push	acc
      0011CC 74 80            [12] 1975 	mov	a,#0x80
      0011CE C0 E0            [24] 1976 	push	acc
      0011D0 12 22 2E         [24] 1977 	lcall	_printf
      0011D3 E5 81            [12] 1978 	mov	a,sp
      0011D5 24 FB            [12] 1979 	add	a,#0xfb
      0011D7 F5 81            [12] 1980 	mov	sp,a
                                   1981 ;	buffer.c:377: printf("All Chars: %d \n\r", program_stats.all_char_count);
      0011D9 90 00 20         [24] 1982 	mov	dptr,#(_program_stats + 0x0004)
      0011DC E0               [24] 1983 	movx	a,@dptr
      0011DD FE               [12] 1984 	mov	r6,a
      0011DE A3               [24] 1985 	inc	dptr
      0011DF E0               [24] 1986 	movx	a,@dptr
      0011E0 FF               [12] 1987 	mov	r7,a
      0011E1 C0 06            [24] 1988 	push	ar6
      0011E3 C0 07            [24] 1989 	push	ar7
      0011E5 74 0B            [12] 1990 	mov	a,#___str_31
      0011E7 C0 E0            [24] 1991 	push	acc
      0011E9 74 32            [12] 1992 	mov	a,#(___str_31 >> 8)
      0011EB C0 E0            [24] 1993 	push	acc
      0011ED 74 80            [12] 1994 	mov	a,#0x80
      0011EF C0 E0            [24] 1995 	push	acc
      0011F1 12 22 2E         [24] 1996 	lcall	_printf
      0011F4 E5 81            [12] 1997 	mov	a,sp
      0011F6 24 FB            [12] 1998 	add	a,#0xfb
      0011F8 F5 81            [12] 1999 	mov	sp,a
                                   2000 ;	buffer.c:378: printf("Storage Chars: %d \n\r", program_stats.storage_char_count);
      0011FA 90 00 22         [24] 2001 	mov	dptr,#(_program_stats + 0x0006)
      0011FD E0               [24] 2002 	movx	a,@dptr
      0011FE FE               [12] 2003 	mov	r6,a
      0011FF A3               [24] 2004 	inc	dptr
      001200 E0               [24] 2005 	movx	a,@dptr
      001201 FF               [12] 2006 	mov	r7,a
      001202 C0 06            [24] 2007 	push	ar6
      001204 C0 07            [24] 2008 	push	ar7
      001206 74 1C            [12] 2009 	mov	a,#___str_32
      001208 C0 E0            [24] 2010 	push	acc
      00120A 74 32            [12] 2011 	mov	a,#(___str_32 >> 8)
      00120C C0 E0            [24] 2012 	push	acc
      00120E 74 80            [12] 2013 	mov	a,#0x80
      001210 C0 E0            [24] 2014 	push	acc
      001212 12 22 2E         [24] 2015 	lcall	_printf
      001215 E5 81            [12] 2016 	mov	a,sp
      001217 24 FB            [12] 2017 	add	a,#0xfb
      001219 F5 81            [12] 2018 	mov	sp,a
                                   2019 ;	buffer.c:379: printf("Total Buffers: %d \n\r", program_stats.total_buffers);
      00121B 90 00 24         [24] 2020 	mov	dptr,#(_program_stats + 0x0008)
      00121E E0               [24] 2021 	movx	a,@dptr
      00121F FE               [12] 2022 	mov	r6,a
      001220 A3               [24] 2023 	inc	dptr
      001221 E0               [24] 2024 	movx	a,@dptr
      001222 FF               [12] 2025 	mov	r7,a
      001223 C0 06            [24] 2026 	push	ar6
      001225 C0 07            [24] 2027 	push	ar7
      001227 74 31            [12] 2028 	mov	a,#___str_33
      001229 C0 E0            [24] 2029 	push	acc
      00122B 74 32            [12] 2030 	mov	a,#(___str_33 >> 8)
      00122D C0 E0            [24] 2031 	push	acc
      00122F 74 80            [12] 2032 	mov	a,#0x80
      001231 C0 E0            [24] 2033 	push	acc
      001233 12 22 2E         [24] 2034 	lcall	_printf
      001236 E5 81            [12] 2035 	mov	a,sp
      001238 24 FB            [12] 2036 	add	a,#0xfb
      00123A F5 81            [12] 2037 	mov	sp,a
                                   2038 ;	buffer.c:380: }
      00123C 22               [24] 2039 	ret
                                   2040 ;------------------------------------------------------------
                                   2041 ;Allocation info for local variables in function 'print_all_buffers'
                                   2042 ;------------------------------------------------------------
                                   2043 ;i                         Allocated with name '_print_all_buffers_i_131072_94'
                                   2044 ;------------------------------------------------------------
                                   2045 ;	buffer.c:387: void print_all_buffers()
                                   2046 ;	-----------------------------------------
                                   2047 ;	 function print_all_buffers
                                   2048 ;	-----------------------------------------
      00123D                       2049 _print_all_buffers:
                                   2050 ;	buffer.c:389: for (int i = 0; i < program_stats.total_buffers; i++)
      00123D 7E 00            [12] 2051 	mov	r6,#0x00
      00123F 7F 00            [12] 2052 	mov	r7,#0x00
      001241                       2053 00103$:
      001241 90 00 24         [24] 2054 	mov	dptr,#(_program_stats + 0x0008)
      001244 E0               [24] 2055 	movx	a,@dptr
      001245 FC               [12] 2056 	mov	r4,a
      001246 A3               [24] 2057 	inc	dptr
      001247 E0               [24] 2058 	movx	a,@dptr
      001248 FD               [12] 2059 	mov	r5,a
      001249 C3               [12] 2060 	clr	c
      00124A EE               [12] 2061 	mov	a,r6
      00124B 9C               [12] 2062 	subb	a,r4
      00124C EF               [12] 2063 	mov	a,r7
      00124D 64 80            [12] 2064 	xrl	a,#0x80
      00124F 8D F0            [24] 2065 	mov	b,r5
      001251 63 F0 80         [24] 2066 	xrl	b,#0x80
      001254 95 F0            [12] 2067 	subb	a,b
      001256 40 03            [24] 2068 	jc	00116$
      001258 02 13 91         [24] 2069 	ljmp	00101$
      00125B                       2070 00116$:
                                   2071 ;	buffer.c:391: printf("****************BUFFER*%d***************\n\r", i);
      00125B C0 07            [24] 2072 	push	ar7
      00125D C0 06            [24] 2073 	push	ar6
      00125F C0 06            [24] 2074 	push	ar6
      001261 C0 07            [24] 2075 	push	ar7
      001263 74 46            [12] 2076 	mov	a,#___str_34
      001265 C0 E0            [24] 2077 	push	acc
      001267 74 32            [12] 2078 	mov	a,#(___str_34 >> 8)
      001269 C0 E0            [24] 2079 	push	acc
      00126B 74 80            [12] 2080 	mov	a,#0x80
      00126D C0 E0            [24] 2081 	push	acc
      00126F 12 22 2E         [24] 2082 	lcall	_printf
      001272 E5 81            [12] 2083 	mov	a,sp
      001274 24 FB            [12] 2084 	add	a,#0xfb
      001276 F5 81            [12] 2085 	mov	sp,a
      001278 D0 06            [24] 2086 	pop	ar6
      00127A D0 07            [24] 2087 	pop	ar7
                                   2088 ;	buffer.c:392: printf("Buffer#: %d \n\r", buffers_array[i].buffer_num);
      00127C 90 15 2F         [24] 2089 	mov	dptr,#__mulint_PARM_2
      00127F EE               [12] 2090 	mov	a,r6
      001280 F0               [24] 2091 	movx	@dptr,a
      001281 EF               [12] 2092 	mov	a,r7
      001282 A3               [24] 2093 	inc	dptr
      001283 F0               [24] 2094 	movx	@dptr,a
      001284 90 00 0C         [24] 2095 	mov	dptr,#0x000c
      001287 C0 07            [24] 2096 	push	ar7
      001289 C0 06            [24] 2097 	push	ar6
      00128B 12 21 C0         [24] 2098 	lcall	__mulint
      00128E AC 82            [24] 2099 	mov	r4,dpl
      001290 AD 83            [24] 2100 	mov	r5,dph
      001292 EC               [12] 2101 	mov	a,r4
      001293 24 26            [12] 2102 	add	a,#_buffers_array
      001295 F5 82            [12] 2103 	mov	dpl,a
      001297 ED               [12] 2104 	mov	a,r5
      001298 34 00            [12] 2105 	addc	a,#(_buffers_array >> 8)
      00129A F5 83            [12] 2106 	mov	dph,a
      00129C E0               [24] 2107 	movx	a,@dptr
      00129D FA               [12] 2108 	mov	r2,a
      00129E A3               [24] 2109 	inc	dptr
      00129F E0               [24] 2110 	movx	a,@dptr
      0012A0 FB               [12] 2111 	mov	r3,a
      0012A1 C0 05            [24] 2112 	push	ar5
      0012A3 C0 04            [24] 2113 	push	ar4
      0012A5 C0 02            [24] 2114 	push	ar2
      0012A7 C0 03            [24] 2115 	push	ar3
      0012A9 74 71            [12] 2116 	mov	a,#___str_35
      0012AB C0 E0            [24] 2117 	push	acc
      0012AD 74 32            [12] 2118 	mov	a,#(___str_35 >> 8)
      0012AF C0 E0            [24] 2119 	push	acc
      0012B1 74 80            [12] 2120 	mov	a,#0x80
      0012B3 C0 E0            [24] 2121 	push	acc
      0012B5 12 22 2E         [24] 2122 	lcall	_printf
      0012B8 E5 81            [12] 2123 	mov	a,sp
      0012BA 24 FB            [12] 2124 	add	a,#0xfb
      0012BC F5 81            [12] 2125 	mov	sp,a
      0012BE D0 04            [24] 2126 	pop	ar4
      0012C0 D0 05            [24] 2127 	pop	ar5
                                   2128 ;	buffer.c:393: printf("BufferStart: %p \n\r", buffers_array[i].buffer_start);
      0012C2 EC               [12] 2129 	mov	a,r4
      0012C3 24 26            [12] 2130 	add	a,#_buffers_array
      0012C5 FC               [12] 2131 	mov	r4,a
      0012C6 ED               [12] 2132 	mov	a,r5
      0012C7 34 00            [12] 2133 	addc	a,#(_buffers_array >> 8)
      0012C9 FD               [12] 2134 	mov	r5,a
      0012CA 8C 82            [24] 2135 	mov	dpl,r4
      0012CC 8D 83            [24] 2136 	mov	dph,r5
      0012CE A3               [24] 2137 	inc	dptr
      0012CF A3               [24] 2138 	inc	dptr
      0012D0 E0               [24] 2139 	movx	a,@dptr
      0012D1 F9               [12] 2140 	mov	r1,a
      0012D2 A3               [24] 2141 	inc	dptr
      0012D3 E0               [24] 2142 	movx	a,@dptr
      0012D4 FA               [12] 2143 	mov	r2,a
      0012D5 A3               [24] 2144 	inc	dptr
      0012D6 E0               [24] 2145 	movx	a,@dptr
      0012D7 FB               [12] 2146 	mov	r3,a
      0012D8 C0 05            [24] 2147 	push	ar5
      0012DA C0 04            [24] 2148 	push	ar4
      0012DC C0 01            [24] 2149 	push	ar1
      0012DE C0 02            [24] 2150 	push	ar2
      0012E0 C0 03            [24] 2151 	push	ar3
      0012E2 74 80            [12] 2152 	mov	a,#___str_36
      0012E4 C0 E0            [24] 2153 	push	acc
      0012E6 74 32            [12] 2154 	mov	a,#(___str_36 >> 8)
      0012E8 C0 E0            [24] 2155 	push	acc
      0012EA 74 80            [12] 2156 	mov	a,#0x80
      0012EC C0 E0            [24] 2157 	push	acc
      0012EE 12 22 2E         [24] 2158 	lcall	_printf
      0012F1 E5 81            [12] 2159 	mov	a,sp
      0012F3 24 FA            [12] 2160 	add	a,#0xfa
      0012F5 F5 81            [12] 2161 	mov	sp,a
      0012F7 D0 04            [24] 2162 	pop	ar4
      0012F9 D0 05            [24] 2163 	pop	ar5
                                   2164 ;	buffer.c:394: printf("BufferEnd: %p \n\r", buffers_array[i].buffer_end);
      0012FB 8C 82            [24] 2165 	mov	dpl,r4
      0012FD 8D 83            [24] 2166 	mov	dph,r5
      0012FF A3               [24] 2167 	inc	dptr
      001300 A3               [24] 2168 	inc	dptr
      001301 A3               [24] 2169 	inc	dptr
      001302 A3               [24] 2170 	inc	dptr
      001303 A3               [24] 2171 	inc	dptr
      001304 E0               [24] 2172 	movx	a,@dptr
      001305 F9               [12] 2173 	mov	r1,a
      001306 A3               [24] 2174 	inc	dptr
      001307 E0               [24] 2175 	movx	a,@dptr
      001308 FA               [12] 2176 	mov	r2,a
      001309 A3               [24] 2177 	inc	dptr
      00130A E0               [24] 2178 	movx	a,@dptr
      00130B FB               [12] 2179 	mov	r3,a
      00130C C0 05            [24] 2180 	push	ar5
      00130E C0 04            [24] 2181 	push	ar4
      001310 C0 01            [24] 2182 	push	ar1
      001312 C0 02            [24] 2183 	push	ar2
      001314 C0 03            [24] 2184 	push	ar3
      001316 74 93            [12] 2185 	mov	a,#___str_37
      001318 C0 E0            [24] 2186 	push	acc
      00131A 74 32            [12] 2187 	mov	a,#(___str_37 >> 8)
      00131C C0 E0            [24] 2188 	push	acc
      00131E 74 80            [12] 2189 	mov	a,#0x80
      001320 C0 E0            [24] 2190 	push	acc
      001322 12 22 2E         [24] 2191 	lcall	_printf
      001325 E5 81            [12] 2192 	mov	a,sp
      001327 24 FA            [12] 2193 	add	a,#0xfa
      001329 F5 81            [12] 2194 	mov	sp,a
      00132B D0 04            [24] 2195 	pop	ar4
      00132D D0 05            [24] 2196 	pop	ar5
                                   2197 ;	buffer.c:395: printf("BufferSize: %d \n\r", buffers_array[i].buff_size);
      00132F 74 08            [12] 2198 	mov	a,#0x08
      001331 2C               [12] 2199 	add	a,r4
      001332 F5 82            [12] 2200 	mov	dpl,a
      001334 E4               [12] 2201 	clr	a
      001335 3D               [12] 2202 	addc	a,r5
      001336 F5 83            [12] 2203 	mov	dph,a
      001338 E0               [24] 2204 	movx	a,@dptr
      001339 FA               [12] 2205 	mov	r2,a
      00133A A3               [24] 2206 	inc	dptr
      00133B E0               [24] 2207 	movx	a,@dptr
      00133C FB               [12] 2208 	mov	r3,a
      00133D C0 05            [24] 2209 	push	ar5
      00133F C0 04            [24] 2210 	push	ar4
      001341 C0 02            [24] 2211 	push	ar2
      001343 C0 03            [24] 2212 	push	ar3
      001345 74 A4            [12] 2213 	mov	a,#___str_38
      001347 C0 E0            [24] 2214 	push	acc
      001349 74 32            [12] 2215 	mov	a,#(___str_38 >> 8)
      00134B C0 E0            [24] 2216 	push	acc
      00134D 74 80            [12] 2217 	mov	a,#0x80
      00134F C0 E0            [24] 2218 	push	acc
      001351 12 22 2E         [24] 2219 	lcall	_printf
      001354 E5 81            [12] 2220 	mov	a,sp
      001356 24 FB            [12] 2221 	add	a,#0xfb
      001358 F5 81            [12] 2222 	mov	sp,a
      00135A D0 04            [24] 2223 	pop	ar4
      00135C D0 05            [24] 2224 	pop	ar5
                                   2225 ;	buffer.c:396: printf("TotalUsed: %d \n\r", buffers_array[i].num_char);
      00135E 74 0A            [12] 2226 	mov	a,#0x0a
      001360 2C               [12] 2227 	add	a,r4
      001361 F5 82            [12] 2228 	mov	dpl,a
      001363 E4               [12] 2229 	clr	a
      001364 3D               [12] 2230 	addc	a,r5
      001365 F5 83            [12] 2231 	mov	dph,a
      001367 E0               [24] 2232 	movx	a,@dptr
      001368 FC               [12] 2233 	mov	r4,a
      001369 A3               [24] 2234 	inc	dptr
      00136A E0               [24] 2235 	movx	a,@dptr
      00136B FD               [12] 2236 	mov	r5,a
      00136C C0 04            [24] 2237 	push	ar4
      00136E C0 05            [24] 2238 	push	ar5
      001370 74 B6            [12] 2239 	mov	a,#___str_39
      001372 C0 E0            [24] 2240 	push	acc
      001374 74 32            [12] 2241 	mov	a,#(___str_39 >> 8)
      001376 C0 E0            [24] 2242 	push	acc
      001378 74 80            [12] 2243 	mov	a,#0x80
      00137A C0 E0            [24] 2244 	push	acc
      00137C 12 22 2E         [24] 2245 	lcall	_printf
      00137F E5 81            [12] 2246 	mov	a,sp
      001381 24 FB            [12] 2247 	add	a,#0xfb
      001383 F5 81            [12] 2248 	mov	sp,a
      001385 D0 06            [24] 2249 	pop	ar6
      001387 D0 07            [24] 2250 	pop	ar7
                                   2251 ;	buffer.c:389: for (int i = 0; i < program_stats.total_buffers; i++)
      001389 0E               [12] 2252 	inc	r6
      00138A BE 00 01         [24] 2253 	cjne	r6,#0x00,00117$
      00138D 0F               [12] 2254 	inc	r7
      00138E                       2255 00117$:
      00138E 02 12 41         [24] 2256 	ljmp	00103$
      001391                       2257 00101$:
                                   2258 ;	buffer.c:398: printf("***************************************\n\r");
      001391 74 C7            [12] 2259 	mov	a,#___str_40
      001393 C0 E0            [24] 2260 	push	acc
      001395 74 32            [12] 2261 	mov	a,#(___str_40 >> 8)
      001397 C0 E0            [24] 2262 	push	acc
      001399 74 80            [12] 2263 	mov	a,#0x80
      00139B C0 E0            [24] 2264 	push	acc
      00139D 12 22 2E         [24] 2265 	lcall	_printf
      0013A0 15 81            [12] 2266 	dec	sp
      0013A2 15 81            [12] 2267 	dec	sp
      0013A4 15 81            [12] 2268 	dec	sp
                                   2269 ;	buffer.c:399: }
      0013A6 22               [24] 2270 	ret
                                   2271 	.area CSEG    (CODE)
                                   2272 	.area CONST   (CODE)
                                   2273 	.area CONST   (CODE)
      002DCD                       2274 ___str_0:
      002DCD 42 75 66 66 65 72 20  2275 	.ascii "Buffer %d Freed ...."
             25 64 20 46 72 65 65
             64 20 2E 2E 2E 2E
      002DE1 0A                    2276 	.db 0x0a
      002DE2 0D                    2277 	.db 0x0d
      002DE3 00                    2278 	.db 0x00
                                   2279 	.area CSEG    (CODE)
                                   2280 	.area CONST   (CODE)
      002DE4                       2281 ___str_1:
      002DE4 4C 65 74 27 73 20 62  2282 	.ascii "Let's begin again.."
             65 67 69 6E 20 61 67
             61 69 6E 2E 2E
      002DF7 0A                    2283 	.db 0x0a
      002DF8 0D                    2284 	.db 0x0d
      002DF9 00                    2285 	.db 0x00
                                   2286 	.area CSEG    (CODE)
                                   2287 	.area CONST   (CODE)
      002DFA                       2288 ___str_2:
      002DFA 0A                    2289 	.db 0x0a
      002DFB 0D                    2290 	.db 0x0d
      002DFC 47 69 76 65 20 56 61  2291 	.ascii "Give Valid Buffer Number to delete(1-%d) in 3 digits"
             6C 69 64 20 42 75 66
             66 65 72 20 4E 75 6D
             62 65 72 20 74 6F 20
             64 65 6C 65 74 65 28
             31 2D 25 64 29 20 69
             6E 20 33 20 64 69 67
             69 74 73
      002E30 0A                    2292 	.db 0x0a
      002E31 0D                    2293 	.db 0x0d
      002E32 00                    2294 	.db 0x00
                                   2295 	.area CSEG    (CODE)
                                   2296 	.area CONST   (CODE)
      002E33                       2297 ___str_3:
      002E33 42 75 66 66 65 72 20  2298 	.ascii "Buffer %d Successfully Deleted.. "
             25 64 20 53 75 63 63
             65 73 73 66 75 6C 6C
             79 20 44 65 6C 65 74
             65 64 2E 2E 20
      002E54 0A                    2299 	.db 0x0a
      002E55 0D                    2300 	.db 0x0d
      002E56 00                    2301 	.db 0x00
                                   2302 	.area CSEG    (CODE)
                                   2303 	.area CONST   (CODE)
      002E57                       2304 ___str_4:
      002E57 0A                    2305 	.db 0x0a
      002E58 0A                    2306 	.db 0x0a
      002E59 0D                    2307 	.db 0x0d
      002E5A 5E 5E 5E 5E 5E 5E 5E  2308 	.ascii "^^^^^^^^^^^^^^^^^^^-HEAP-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ "
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 2D 48
             45 41 50 2D 4D 45 4E
             55 2D 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             20
      002E93 0A                    2309 	.db 0x0a
      002E94 0A                    2310 	.db 0x0a
      002E95 0D                    2311 	.db 0x0d
      002E96 00                    2312 	.db 0x00
                                   2313 	.area CSEG    (CODE)
                                   2314 	.area CONST   (CODE)
      002E97                       2315 ___str_5:
      002E97 59 6F 75 20 63 61 6E  2316 	.ascii "You can enter characters or use commands from below "
             20 65 6E 74 65 72 20
             63 68 61 72 61 63 74
             65 72 73 20 6F 72 20
             75 73 65 20 63 6F 6D
             6D 61 6E 64 73 20 66
             72 6F 6D 20 62 65 6C
             6F 77 20
      002ECB 0A                    2317 	.db 0x0a
      002ECC 0D                    2318 	.db 0x0d
      002ECD 00                    2319 	.db 0x00
                                   2320 	.area CSEG    (CODE)
                                   2321 	.area CONST   (CODE)
      002ECE                       2322 ___str_6:
      002ECE 27 3F 27 20 2D 3E 20  2323 	.ascii "'?' -> Show heap status, dump & clear Buffer 0 "
             53 68 6F 77 20 68 65
             61 70 20 73 74 61 74
             75 73 2C 20 64 75 6D
             70 20 26 20 63 6C 65
             61 72 20 42 75 66 66
             65 72 20 30 20
      002EFD 0A                    2324 	.db 0x0a
      002EFE 0D                    2325 	.db 0x0d
      002EFF 00                    2326 	.db 0x00
                                   2327 	.area CSEG    (CODE)
                                   2328 	.area CONST   (CODE)
      002F00                       2329 ___str_7:
      002F00 27 2B 27 20 2D 3E 20  2330 	.ascii "'+' -> Add a new Buffer"
             41 64 64 20 61 20 6E
             65 77 20 42 75 66 66
             65 72
      002F17 0A                    2331 	.db 0x0a
      002F18 0D                    2332 	.db 0x0d
      002F19 00                    2333 	.db 0x00
                                   2334 	.area CSEG    (CODE)
                                   2335 	.area CONST   (CODE)
      002F1A                       2336 ___str_8:
      002F1A 27 2D 27 20 2D 3E 20  2337 	.ascii "'-' -> Delete existing Buffer"
             44 65 6C 65 74 65 20
             65 78 69 73 74 69 6E
             67 20 42 75 66 66 65
             72
      002F37 0A                    2338 	.db 0x0a
      002F38 0D                    2339 	.db 0x0d
      002F39 00                    2340 	.db 0x00
                                   2341 	.area CSEG    (CODE)
                                   2342 	.area CONST   (CODE)
      002F3A                       2343 ___str_9:
      002F3A 27 3D 27 20 2D 3E 20  2344 	.ascii "'=' -> Dump Buffer 0 in hex"
             44 75 6D 70 20 42 75
             66 66 65 72 20 30 20
             69 6E 20 68 65 78
      002F55 0A                    2345 	.db 0x0a
      002F56 0D                    2346 	.db 0x0d
      002F57 00                    2347 	.db 0x00
                                   2348 	.area CSEG    (CODE)
                                   2349 	.area CONST   (CODE)
      002F58                       2350 ___str_10:
      002F58 27 40 27 20 2D 3E 20  2351 	.ascii "'@' -> Free all Heap & begin again"
             46 72 65 65 20 61 6C
             6C 20 48 65 61 70 20
             26 20 62 65 67 69 6E
             20 61 67 61 69 6E
      002F7A 0A                    2352 	.db 0x0a
      002F7B 0A                    2353 	.db 0x0a
      002F7C 0D                    2354 	.db 0x0d
      002F7D 00                    2355 	.db 0x00
                                   2356 	.area CSEG    (CODE)
                                   2357 	.area CONST   (CODE)
      002F7E                       2358 ___str_11:
      002F7E 27 4D 27 20 2D 3E 20  2359 	.ascii "'M' -> Go to Main Menu "
             47 6F 20 74 6F 20 4D
             61 69 6E 20 4D 65 6E
             75 20
      002F95 0A                    2360 	.db 0x0a
      002F96 0A                    2361 	.db 0x0a
      002F97 0D                    2362 	.db 0x0d
      002F98 00                    2363 	.db 0x00
                                   2364 	.area CSEG    (CODE)
                                   2365 	.area CONST   (CODE)
      002F99                       2366 ___str_12:
      002F99 0A                    2367 	.db 0x0a
      002F9A 0D                    2368 	.db 0x0d
      002F9B 47 69 76 65 20 56 61  2369 	.ascii "Give Valid Buffer Size(030-300):"
             6C 69 64 20 42 75 66
             66 65 72 20 53 69 7A
             65 28 30 33 30 2D 33
             30 30 29 3A
      002FBB 00                    2370 	.db 0x00
                                   2371 	.area CSEG    (CODE)
                                   2372 	.area CONST   (CODE)
      002FBC                       2373 ___str_13:
      002FBC 46 61 69 6C 65 64 2C  2374 	.ascii "Failed, give smaller buffer"
             20 67 69 76 65 20 73
             6D 61 6C 6C 65 72 20
             62 75 66 66 65 72
      002FD7 0A                    2375 	.db 0x0a
      002FD8 0D                    2376 	.db 0x0d
      002FD9 00                    2377 	.db 0x00
                                   2378 	.area CSEG    (CODE)
                                   2379 	.area CONST   (CODE)
      002FDA                       2380 ___str_14:
      002FDA 0A                    2381 	.db 0x0a
      002FDB 0A                    2382 	.db 0x0a
      002FDC 0D                    2383 	.db 0x0d
      002FDD 23 23 23 23 53 55 43  2384 	.ascii "####SUCCESS, BUFFER Created####"
             43 45 53 53 2C 20 42
             55 46 46 45 52 20 43
             72 65 61 74 65 64 23
             23 23 23
      002FFC 0A                    2385 	.db 0x0a
      002FFD 0A                    2386 	.db 0x0a
      002FFE 0D                    2387 	.db 0x0d
      002FFF 00                    2388 	.db 0x00
                                   2389 	.area CSEG    (CODE)
                                   2390 	.area CONST   (CODE)
      003000                       2391 ___str_15:
      003000 4E 6F 20 48 65 61 70  2392 	.ascii "No Heap Memory Left, Delete some buffers..."
             20 4D 65 6D 6F 72 79
             20 4C 65 66 74 2C 20
             44 65 6C 65 74 65 20
             73 6F 6D 65 20 62 75
             66 66 65 72 73 2E 2E
             2E
      00302B 0A                    2393 	.db 0x0a
      00302C 0D                    2394 	.db 0x0d
      00302D 00                    2395 	.db 0x00
                                   2396 	.area CSEG    (CODE)
                                   2397 	.area CONST   (CODE)
      00302E                       2398 ___str_16:
      00302E 0A                    2399 	.db 0x0a
      00302F 0D                    2400 	.db 0x0d
      003030 47 69 76 65 20 56 61  2401 	.ascii "Give Valid Initial Buffer Size(0048-4800):"
             6C 69 64 20 49 6E 69
             74 69 61 6C 20 42 75
             66 66 65 72 20 53 69
             7A 65 28 30 30 34 38
             2D 34 38 30 30 29 3A
      00305A 00                    2402 	.db 0x00
                                   2403 	.area CSEG    (CODE)
                                   2404 	.area CONST   (CODE)
      00305B                       2405 ___str_17:
      00305B 0A                    2406 	.db 0x0a
      00305C 0D                    2407 	.db 0x0d
      00305D 23 23 23 23 46 41 49  2408 	.ascii "####FAIL, Please give a smaller buffer size####"
             4C 2C 20 50 6C 65 61
             73 65 20 67 69 76 65
             20 61 20 73 6D 61 6C
             6C 65 72 20 62 75 66
             66 65 72 20 73 69 7A
             65 23 23 23 23
      00308C 0A                    2409 	.db 0x0a
      00308D 0A                    2410 	.db 0x0a
      00308E 0D                    2411 	.db 0x0d
      00308F 00                    2412 	.db 0x00
                                   2413 	.area CSEG    (CODE)
                                   2414 	.area CONST   (CODE)
      003090                       2415 ___str_18:
      003090 0A                    2416 	.db 0x0a
      003091 0A                    2417 	.db 0x0a
      003092 0D                    2418 	.db 0x0d
      003093 23 23 23 23 53 55 43  2419 	.ascii "####SUCCESS, INITIAL BUFFERS Created####"
             43 45 53 53 2C 20 49
             4E 49 54 49 41 4C 20
             42 55 46 46 45 52 53
             20 43 72 65 61 74 65
             64 23 23 23 23
      0030BB 0A                    2420 	.db 0x0a
      0030BC 0A                    2421 	.db 0x0a
      0030BD 0D                    2422 	.db 0x0d
      0030BE 00                    2423 	.db 0x00
                                   2424 	.area CSEG    (CODE)
                                   2425 	.area CONST   (CODE)
      0030BF                       2426 ___str_19:
      0030BF 0A                    2427 	.db 0x0a
      0030C0 0A                    2428 	.db 0x0a
      0030C1 0D                    2429 	.db 0x0d
      0030C2 2A 2A 2A 2A 2A 2A 2A  2430 	.ascii "***********Buffer-0-Contents*********** "
             2A 2A 2A 2A 42 75 66
             66 65 72 2D 30 2D 43
             6F 6E 74 65 6E 74 73
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 20
      0030EA 0A                    2431 	.db 0x0a
      0030EB 0D                    2432 	.db 0x0d
      0030EC 00                    2433 	.db 0x00
                                   2434 	.area CSEG    (CODE)
                                   2435 	.area CONST   (CODE)
      0030ED                       2436 ___str_20:
      0030ED 0A                    2437 	.db 0x0a
      0030EE 0D                    2438 	.db 0x0d
      0030EF 00                    2439 	.db 0x00
                                   2440 	.area CSEG    (CODE)
                                   2441 	.area CONST   (CODE)
      0030F0                       2442 ___str_21:
      0030F0 0A                    2443 	.db 0x0a
      0030F1 0A                    2444 	.db 0x0a
      0030F2 0D                    2445 	.db 0x0d
      0030F3 00                    2446 	.db 0x00
                                   2447 	.area CSEG    (CODE)
                                   2448 	.area CONST   (CODE)
      0030F4                       2449 ___str_22:
      0030F4 42 75 66 66 65 72 30  2450 	.ascii "Buffer0 is Empty...."
             20 69 73 20 45 6D 70
             74 79 2E 2E 2E 2E
      003108 0A                    2451 	.db 0x0a
      003109 0D                    2452 	.db 0x0d
      00310A 00                    2453 	.db 0x00
                                   2454 	.area CSEG    (CODE)
                                   2455 	.area CONST   (CODE)
      00310B                       2456 ___str_23:
      00310B 0A                    2457 	.db 0x0a
      00310C 0D                    2458 	.db 0x0d
      00310D 2D 2D 2D 2D 2D 2D 2D  2459 	.ascii "-------------------------HEXDUMP----------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 48 45 58
             44 55 4D 50 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D
      003149 2D 2D 2D 2D           2460 	.ascii "----"
      00314D 00                    2461 	.db 0x00
                                   2462 	.area CSEG    (CODE)
                                   2463 	.area CONST   (CODE)
      00314E                       2464 ___str_24:
      00314E 0A                    2465 	.db 0x0a
      00314F 0D                    2466 	.db 0x0d
      003150 20 20 20 20 41 44 44  2467 	.ascii "    ADDR: +0 +1 +2 +3 +4 +5 +6 +7 +8 +9 +A +B +C +D +E +F "
             52 3A 20 2B 30 20 2B
             31 20 2B 32 20 2B 33
             20 2B 34 20 2B 35 20
             2B 36 20 2B 37 20 2B
             38 20 2B 39 20 2B 41
             20 2B 42 20 2B 43 20
             2B 44 20 2B 45 20 2B
             46 20
      00318A 0A                    2468 	.db 0x0a
      00318B 0D                    2469 	.db 0x0d
      00318C 00                    2470 	.db 0x00
                                   2471 	.area CSEG    (CODE)
                                   2472 	.area CONST   (CODE)
      00318D                       2473 ___str_25:
      00318D 0A                    2474 	.db 0x0a
      00318E 0D                    2475 	.db 0x0d
      00318F 25 70 3A 20           2476 	.ascii "%p: "
      003193 00                    2477 	.db 0x00
                                   2478 	.area CSEG    (CODE)
                                   2479 	.area CONST   (CODE)
      003194                       2480 ___str_26:
      003194 25 78 20              2481 	.ascii "%x "
      003197 00                    2482 	.db 0x00
                                   2483 	.area CSEG    (CODE)
                                   2484 	.area CONST   (CODE)
      003198                       2485 ___str_27:
      003198 42 75 66 66 65 72 20  2486 	.ascii "Buffer is empty..."
             69 73 20 65 6D 70 74
             79 2E 2E 2E
      0031AA 0A                    2487 	.db 0x0a
      0031AB 0D                    2488 	.db 0x0d
      0031AC 00                    2489 	.db 0x00
                                   2490 	.area CSEG    (CODE)
                                   2491 	.area CONST   (CODE)
      0031AD                       2492 ___str_28:
      0031AD 0A                    2493 	.db 0x0a
      0031AE 0D                    2494 	.db 0x0d
      0031AF 2A 2A 2A 2A 2A 2A 2A  2495 	.ascii "****************HEAP*STATS*************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 48 45 41 50 2A
             53 54 41 54 53 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A
      0031D6 0A                    2496 	.db 0x0a
      0031D7 0D                    2497 	.db 0x0d
      0031D8 00                    2498 	.db 0x00
                                   2499 	.area CSEG    (CODE)
                                   2500 	.area CONST   (CODE)
      0031D9                       2501 ___str_29:
      0031D9 54 6F 74 61 6C 20 48  2502 	.ascii "Total Heap Size: %d "
             65 61 70 20 53 69 7A
             65 3A 20 25 64 20
      0031ED 0A                    2503 	.db 0x0a
      0031EE 0D                    2504 	.db 0x0d
      0031EF 00                    2505 	.db 0x00
                                   2506 	.area CSEG    (CODE)
                                   2507 	.area CONST   (CODE)
      0031F0                       2508 ___str_30:
      0031F0 41 6C 6C 6F 63 61 74  2509 	.ascii "Allocated Heap Size: %d "
             65 64 20 48 65 61 70
             20 53 69 7A 65 3A 20
             25 64 20
      003208 0A                    2510 	.db 0x0a
      003209 0D                    2511 	.db 0x0d
      00320A 00                    2512 	.db 0x00
                                   2513 	.area CSEG    (CODE)
                                   2514 	.area CONST   (CODE)
      00320B                       2515 ___str_31:
      00320B 41 6C 6C 20 43 68 61  2516 	.ascii "All Chars: %d "
             72 73 3A 20 25 64 20
      003219 0A                    2517 	.db 0x0a
      00321A 0D                    2518 	.db 0x0d
      00321B 00                    2519 	.db 0x00
                                   2520 	.area CSEG    (CODE)
                                   2521 	.area CONST   (CODE)
      00321C                       2522 ___str_32:
      00321C 53 74 6F 72 61 67 65  2523 	.ascii "Storage Chars: %d "
             20 43 68 61 72 73 3A
             20 25 64 20
      00322E 0A                    2524 	.db 0x0a
      00322F 0D                    2525 	.db 0x0d
      003230 00                    2526 	.db 0x00
                                   2527 	.area CSEG    (CODE)
                                   2528 	.area CONST   (CODE)
      003231                       2529 ___str_33:
      003231 54 6F 74 61 6C 20 42  2530 	.ascii "Total Buffers: %d "
             75 66 66 65 72 73 3A
             20 25 64 20
      003243 0A                    2531 	.db 0x0a
      003244 0D                    2532 	.db 0x0d
      003245 00                    2533 	.db 0x00
                                   2534 	.area CSEG    (CODE)
                                   2535 	.area CONST   (CODE)
      003246                       2536 ___str_34:
      003246 2A 2A 2A 2A 2A 2A 2A  2537 	.ascii "****************BUFFER*%d***************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 42 55 46 46 45
             52 2A 25 64 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A
      00326E 0A                    2538 	.db 0x0a
      00326F 0D                    2539 	.db 0x0d
      003270 00                    2540 	.db 0x00
                                   2541 	.area CSEG    (CODE)
                                   2542 	.area CONST   (CODE)
      003271                       2543 ___str_35:
      003271 42 75 66 66 65 72 23  2544 	.ascii "Buffer#: %d "
             3A 20 25 64 20
      00327D 0A                    2545 	.db 0x0a
      00327E 0D                    2546 	.db 0x0d
      00327F 00                    2547 	.db 0x00
                                   2548 	.area CSEG    (CODE)
                                   2549 	.area CONST   (CODE)
      003280                       2550 ___str_36:
      003280 42 75 66 66 65 72 53  2551 	.ascii "BufferStart: %p "
             74 61 72 74 3A 20 25
             70 20
      003290 0A                    2552 	.db 0x0a
      003291 0D                    2553 	.db 0x0d
      003292 00                    2554 	.db 0x00
                                   2555 	.area CSEG    (CODE)
                                   2556 	.area CONST   (CODE)
      003293                       2557 ___str_37:
      003293 42 75 66 66 65 72 45  2558 	.ascii "BufferEnd: %p "
             6E 64 3A 20 25 70 20
      0032A1 0A                    2559 	.db 0x0a
      0032A2 0D                    2560 	.db 0x0d
      0032A3 00                    2561 	.db 0x00
                                   2562 	.area CSEG    (CODE)
                                   2563 	.area CONST   (CODE)
      0032A4                       2564 ___str_38:
      0032A4 42 75 66 66 65 72 53  2565 	.ascii "BufferSize: %d "
             69 7A 65 3A 20 25 64
             20
      0032B3 0A                    2566 	.db 0x0a
      0032B4 0D                    2567 	.db 0x0d
      0032B5 00                    2568 	.db 0x00
                                   2569 	.area CSEG    (CODE)
                                   2570 	.area CONST   (CODE)
      0032B6                       2571 ___str_39:
      0032B6 54 6F 74 61 6C 55 73  2572 	.ascii "TotalUsed: %d "
             65 64 3A 20 25 64 20
      0032C4 0A                    2573 	.db 0x0a
      0032C5 0D                    2574 	.db 0x0d
      0032C6 00                    2575 	.db 0x00
                                   2576 	.area CSEG    (CODE)
                                   2577 	.area CONST   (CODE)
      0032C7                       2578 ___str_40:
      0032C7 2A 2A 2A 2A 2A 2A 2A  2579 	.ascii "***************************************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A
      0032EE 0A                    2580 	.db 0x0a
      0032EF 0D                    2581 	.db 0x0d
      0032F0 00                    2582 	.db 0x00
                                   2583 	.area CSEG    (CODE)
                                   2584 	.area XINIT   (CODE)
                                   2585 	.area CABS    (ABS,CODE)
