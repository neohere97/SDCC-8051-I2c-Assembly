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
                                    131 ;	buffer.c:54: void user_interface_heap()
                                    132 ;	-----------------------------------------
                                    133 ;	 function user_interface_heap
                                    134 ;	-----------------------------------------
      0007C4                        135 _user_interface_heap:
                           000007   136 	ar7 = 0x07
                           000006   137 	ar6 = 0x06
                           000005   138 	ar5 = 0x05
                           000004   139 	ar4 = 0x04
                           000003   140 	ar3 = 0x03
                           000002   141 	ar2 = 0x02
                           000001   142 	ar1 = 0x01
                           000000   143 	ar0 = 0x00
                                    144 ;	buffer.c:56: create_initial_buffers();
      0007C4 12 0C 54         [24]  145 	lcall	_create_initial_buffers
                                    146 ;	buffer.c:57: print_all_buffers();
      0007C7 12 12 67         [24]  147 	lcall	_print_all_buffers
                                    148 ;	buffer.c:58: buffer_input_loop();
                                    149 ;	buffer.c:59: }
      0007CA 02 0E 2B         [24]  150 	ljmp	_buffer_input_loop
                                    151 ;------------------------------------------------------------
                                    152 ;Allocation info for local variables in function 'at_clear_all_buffers'
                                    153 ;------------------------------------------------------------
                                    154 ;i                         Allocated with name '_at_clear_all_buffers_i_131072_48'
                                    155 ;------------------------------------------------------------
                                    156 ;	buffer.c:67: void at_clear_all_buffers()
                                    157 ;	-----------------------------------------
                                    158 ;	 function at_clear_all_buffers
                                    159 ;	-----------------------------------------
      0007CD                        160 _at_clear_all_buffers:
                                    161 ;	buffer.c:69: for (int i = 0; i < program_stats.total_buffers; i++)
      0007CD 7E 00            [12]  162 	mov	r6,#0x00
      0007CF 7F 00            [12]  163 	mov	r7,#0x00
      0007D1                        164 00103$:
      0007D1 90 00 24         [24]  165 	mov	dptr,#(_program_stats + 0x0008)
      0007D4 E0               [24]  166 	movx	a,@dptr
      0007D5 FC               [12]  167 	mov	r4,a
      0007D6 A3               [24]  168 	inc	dptr
      0007D7 E0               [24]  169 	movx	a,@dptr
      0007D8 FD               [12]  170 	mov	r5,a
      0007D9 C3               [12]  171 	clr	c
      0007DA EE               [12]  172 	mov	a,r6
      0007DB 9C               [12]  173 	subb	a,r4
      0007DC EF               [12]  174 	mov	a,r7
      0007DD 64 80            [12]  175 	xrl	a,#0x80
      0007DF 8D F0            [24]  176 	mov	b,r5
      0007E1 63 F0 80         [24]  177 	xrl	b,#0x80
      0007E4 95 F0            [12]  178 	subb	a,b
      0007E6 50 61            [24]  179 	jnc	00101$
                                    180 ;	buffer.c:71: free(buffers_array[i].buffer_start);
      0007E8 90 15 2F         [24]  181 	mov	dptr,#__mulint_PARM_2
      0007EB EE               [12]  182 	mov	a,r6
      0007EC F0               [24]  183 	movx	@dptr,a
      0007ED EF               [12]  184 	mov	a,r7
      0007EE A3               [24]  185 	inc	dptr
      0007EF F0               [24]  186 	movx	@dptr,a
      0007F0 90 00 0C         [24]  187 	mov	dptr,#0x000c
      0007F3 C0 07            [24]  188 	push	ar7
      0007F5 C0 06            [24]  189 	push	ar6
      0007F7 12 21 EA         [24]  190 	lcall	__mulint
      0007FA AC 82            [24]  191 	mov	r4,dpl
      0007FC AD 83            [24]  192 	mov	r5,dph
      0007FE EC               [12]  193 	mov	a,r4
      0007FF 24 26            [12]  194 	add	a,#_buffers_array
      000801 FC               [12]  195 	mov	r4,a
      000802 ED               [12]  196 	mov	a,r5
      000803 34 00            [12]  197 	addc	a,#(_buffers_array >> 8)
      000805 FD               [12]  198 	mov	r5,a
      000806 8C 82            [24]  199 	mov	dpl,r4
      000808 8D 83            [24]  200 	mov	dph,r5
      00080A A3               [24]  201 	inc	dptr
      00080B A3               [24]  202 	inc	dptr
      00080C E0               [24]  203 	movx	a,@dptr
      00080D FB               [12]  204 	mov	r3,a
      00080E A3               [24]  205 	inc	dptr
      00080F E0               [24]  206 	movx	a,@dptr
      000810 FC               [12]  207 	mov	r4,a
      000811 A3               [24]  208 	inc	dptr
      000812 E0               [24]  209 	movx	a,@dptr
      000813 FD               [12]  210 	mov	r5,a
      000814 8B 82            [24]  211 	mov	dpl,r3
      000816 8C 83            [24]  212 	mov	dph,r4
      000818 8D F0            [24]  213 	mov	b,r5
      00081A 12 1E 5F         [24]  214 	lcall	_free
      00081D D0 06            [24]  215 	pop	ar6
      00081F D0 07            [24]  216 	pop	ar7
                                    217 ;	buffer.c:72: printf("Buffer %d Freed ....\n\r", i);
      000821 C0 07            [24]  218 	push	ar7
      000823 C0 06            [24]  219 	push	ar6
      000825 C0 06            [24]  220 	push	ar6
      000827 C0 07            [24]  221 	push	ar7
      000829 74 24            [12]  222 	mov	a,#___str_0
      00082B C0 E0            [24]  223 	push	acc
      00082D 74 2E            [12]  224 	mov	a,#(___str_0 >> 8)
      00082F C0 E0            [24]  225 	push	acc
      000831 74 80            [12]  226 	mov	a,#0x80
      000833 C0 E0            [24]  227 	push	acc
      000835 12 22 58         [24]  228 	lcall	_printf
      000838 E5 81            [12]  229 	mov	a,sp
      00083A 24 FB            [12]  230 	add	a,#0xfb
      00083C F5 81            [12]  231 	mov	sp,a
      00083E D0 06            [24]  232 	pop	ar6
      000840 D0 07            [24]  233 	pop	ar7
                                    234 ;	buffer.c:69: for (int i = 0; i < program_stats.total_buffers; i++)
      000842 0E               [12]  235 	inc	r6
      000843 BE 00 8B         [24]  236 	cjne	r6,#0x00,00103$
      000846 0F               [12]  237 	inc	r7
      000847 80 88            [24]  238 	sjmp	00103$
      000849                        239 00101$:
                                    240 ;	buffer.c:74: printf("Let's begin again..\n\r");
      000849 74 3B            [12]  241 	mov	a,#___str_1
      00084B C0 E0            [24]  242 	push	acc
      00084D 74 2E            [12]  243 	mov	a,#(___str_1 >> 8)
      00084F C0 E0            [24]  244 	push	acc
      000851 74 80            [12]  245 	mov	a,#0x80
      000853 C0 E0            [24]  246 	push	acc
      000855 12 22 58         [24]  247 	lcall	_printf
      000858 15 81            [12]  248 	dec	sp
      00085A 15 81            [12]  249 	dec	sp
      00085C 15 81            [12]  250 	dec	sp
                                    251 ;	buffer.c:75: user_interface_heap();
                                    252 ;	buffer.c:76: }
      00085E 02 07 C4         [24]  253 	ljmp	_user_interface_heap
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
                                    265 ;	buffer.c:83: int delete_buffer()
                                    266 ;	-----------------------------------------
                                    267 ;	 function delete_buffer
                                    268 ;	-----------------------------------------
      000861                        269 _delete_buffer:
                                    270 ;	buffer.c:88: get_del_num:
      000861                        271 00101$:
                                    272 ;	buffer.c:89: printf("\n\rGive Valid Buffer Number to delete(1-%d) in 3 digits\n\r", (program_stats.total_buffers - 1));
      000861 90 00 24         [24]  273 	mov	dptr,#(_program_stats + 0x0008)
      000864 E0               [24]  274 	movx	a,@dptr
      000865 FE               [12]  275 	mov	r6,a
      000866 A3               [24]  276 	inc	dptr
      000867 E0               [24]  277 	movx	a,@dptr
      000868 FF               [12]  278 	mov	r7,a
      000869 1E               [12]  279 	dec	r6
      00086A BE FF 01         [24]  280 	cjne	r6,#0xff,00139$
      00086D 1F               [12]  281 	dec	r7
      00086E                        282 00139$:
      00086E C0 06            [24]  283 	push	ar6
      000870 C0 07            [24]  284 	push	ar7
      000872 74 51            [12]  285 	mov	a,#___str_2
      000874 C0 E0            [24]  286 	push	acc
      000876 74 2E            [12]  287 	mov	a,#(___str_2 >> 8)
      000878 C0 E0            [24]  288 	push	acc
      00087A 74 80            [12]  289 	mov	a,#0x80
      00087C C0 E0            [24]  290 	push	acc
      00087E 12 22 58         [24]  291 	lcall	_printf
      000881 E5 81            [12]  292 	mov	a,sp
      000883 24 FB            [12]  293 	add	a,#0xfb
      000885 F5 81            [12]  294 	mov	sp,a
                                    295 ;	buffer.c:90: buff_number = get_number(3);
      000887 90 00 03         [24]  296 	mov	dptr,#0x0003
      00088A 12 04 35         [24]  297 	lcall	_get_number
      00088D AE 82            [24]  298 	mov	r6,dpl
      00088F AF 83            [24]  299 	mov	r7,dph
                                    300 ;	buffer.c:92: if (buff_number > 0 && buff_number < program_stats.total_buffers)
      000891 C3               [12]  301 	clr	c
      000892 E4               [12]  302 	clr	a
      000893 9E               [12]  303 	subb	a,r6
      000894 74 80            [12]  304 	mov	a,#(0x00 ^ 0x80)
      000896 8F F0            [24]  305 	mov	b,r7
      000898 63 F0 80         [24]  306 	xrl	b,#0x80
      00089B 95 F0            [12]  307 	subb	a,b
      00089D 50 C2            [24]  308 	jnc	00101$
      00089F 90 00 24         [24]  309 	mov	dptr,#(_program_stats + 0x0008)
      0008A2 E0               [24]  310 	movx	a,@dptr
      0008A3 FC               [12]  311 	mov	r4,a
      0008A4 A3               [24]  312 	inc	dptr
      0008A5 E0               [24]  313 	movx	a,@dptr
      0008A6 FD               [12]  314 	mov	r5,a
      0008A7 C3               [12]  315 	clr	c
      0008A8 EE               [12]  316 	mov	a,r6
      0008A9 9C               [12]  317 	subb	a,r4
      0008AA EF               [12]  318 	mov	a,r7
      0008AB 64 80            [12]  319 	xrl	a,#0x80
      0008AD 8D F0            [24]  320 	mov	b,r5
      0008AF 63 F0 80         [24]  321 	xrl	b,#0x80
      0008B2 95 F0            [12]  322 	subb	a,b
      0008B4 50 AB            [24]  323 	jnc	00101$
                                    324 ;	buffer.c:96: buff_to_free = buffers_array[buff_number].buffer_start;
      0008B6 90 15 2F         [24]  325 	mov	dptr,#__mulint_PARM_2
      0008B9 EE               [12]  326 	mov	a,r6
      0008BA F0               [24]  327 	movx	@dptr,a
      0008BB EF               [12]  328 	mov	a,r7
      0008BC A3               [24]  329 	inc	dptr
      0008BD F0               [24]  330 	movx	@dptr,a
      0008BE 90 00 0C         [24]  331 	mov	dptr,#0x000c
      0008C1 C0 07            [24]  332 	push	ar7
      0008C3 C0 06            [24]  333 	push	ar6
      0008C5 12 21 EA         [24]  334 	lcall	__mulint
      0008C8 AC 82            [24]  335 	mov	r4,dpl
      0008CA AD 83            [24]  336 	mov	r5,dph
      0008CC D0 06            [24]  337 	pop	ar6
      0008CE D0 07            [24]  338 	pop	ar7
      0008D0 EC               [12]  339 	mov	a,r4
      0008D1 24 26            [12]  340 	add	a,#_buffers_array
      0008D3 FC               [12]  341 	mov	r4,a
      0008D4 ED               [12]  342 	mov	a,r5
      0008D5 34 00            [12]  343 	addc	a,#(_buffers_array >> 8)
      0008D7 FD               [12]  344 	mov	r5,a
      0008D8 8C 82            [24]  345 	mov	dpl,r4
      0008DA 8D 83            [24]  346 	mov	dph,r5
      0008DC A3               [24]  347 	inc	dptr
      0008DD A3               [24]  348 	inc	dptr
      0008DE E0               [24]  349 	movx	a,@dptr
      0008DF F5 14            [12]  350 	mov	_delete_buffer_sloc2_1_0,a
      0008E1 A3               [24]  351 	inc	dptr
      0008E2 E0               [24]  352 	movx	a,@dptr
      0008E3 F5 15            [12]  353 	mov	(_delete_buffer_sloc2_1_0 + 1),a
      0008E5 A3               [24]  354 	inc	dptr
      0008E6 E0               [24]  355 	movx	a,@dptr
      0008E7 F5 16            [12]  356 	mov	(_delete_buffer_sloc2_1_0 + 2),a
                                    357 ;	buffer.c:97: buffer_freed_size = buffers_array[buff_number].buff_size;
      0008E9 74 08            [12]  358 	mov	a,#0x08
      0008EB 2C               [12]  359 	add	a,r4
      0008EC F5 82            [12]  360 	mov	dpl,a
      0008EE E4               [12]  361 	clr	a
      0008EF 3D               [12]  362 	addc	a,r5
      0008F0 F5 83            [12]  363 	mov	dph,a
      0008F2 E0               [24]  364 	movx	a,@dptr
      0008F3 FC               [12]  365 	mov	r4,a
      0008F4 A3               [24]  366 	inc	dptr
      0008F5 E0               [24]  367 	movx	a,@dptr
      0008F6 FD               [12]  368 	mov	r5,a
                                    369 ;	buffer.c:99: for (int i = 0; i < (program_stats.total_buffers - 1); i++)
      0008F7 E4               [12]  370 	clr	a
      0008F8 F5 10            [12]  371 	mov	_delete_buffer_sloc0_1_0,a
      0008FA F5 11            [12]  372 	mov	(_delete_buffer_sloc0_1_0 + 1),a
      0008FC                        373 00110$:
      0008FC C0 04            [24]  374 	push	ar4
      0008FE C0 05            [24]  375 	push	ar5
      000900 90 00 24         [24]  376 	mov	dptr,#(_program_stats + 0x0008)
      000903 E0               [24]  377 	movx	a,@dptr
      000904 F5 12            [12]  378 	mov	_delete_buffer_sloc1_1_0,a
      000906 A3               [24]  379 	inc	dptr
      000907 E0               [24]  380 	movx	a,@dptr
      000908 F5 13            [12]  381 	mov	(_delete_buffer_sloc1_1_0 + 1),a
      00090A E5 12            [12]  382 	mov	a,_delete_buffer_sloc1_1_0
      00090C 24 FF            [12]  383 	add	a,#0xff
      00090E F8               [12]  384 	mov	r0,a
      00090F E5 13            [12]  385 	mov	a,(_delete_buffer_sloc1_1_0 + 1)
      000911 34 FF            [12]  386 	addc	a,#0xff
      000913 FD               [12]  387 	mov	r5,a
      000914 C3               [12]  388 	clr	c
      000915 E5 10            [12]  389 	mov	a,_delete_buffer_sloc0_1_0
      000917 98               [12]  390 	subb	a,r0
      000918 E5 11            [12]  391 	mov	a,(_delete_buffer_sloc0_1_0 + 1)
      00091A 64 80            [12]  392 	xrl	a,#0x80
      00091C 8D F0            [24]  393 	mov	b,r5
      00091E 63 F0 80         [24]  394 	xrl	b,#0x80
      000921 95 F0            [12]  395 	subb	a,b
      000923 D0 05            [24]  396 	pop	ar5
      000925 D0 04            [24]  397 	pop	ar4
      000927 40 03            [24]  398 	jc	00142$
      000929 02 09 DA         [24]  399 	ljmp	00104$
      00092C                        400 00142$:
                                    401 ;	buffer.c:101: if (i >= buff_number)
      00092C C3               [12]  402 	clr	c
      00092D E5 10            [12]  403 	mov	a,_delete_buffer_sloc0_1_0
      00092F 9E               [12]  404 	subb	a,r6
      000930 E5 11            [12]  405 	mov	a,(_delete_buffer_sloc0_1_0 + 1)
      000932 64 80            [12]  406 	xrl	a,#0x80
      000934 8F F0            [24]  407 	mov	b,r7
      000936 63 F0 80         [24]  408 	xrl	b,#0x80
      000939 95 F0            [12]  409 	subb	a,b
      00093B 50 03            [24]  410 	jnc	00143$
      00093D 02 09 CF         [24]  411 	ljmp	00111$
      000940                        412 00143$:
                                    413 ;	buffer.c:103: buffers_array[i + 1].buffer_num = i;
      000940 C0 04            [24]  414 	push	ar4
      000942 C0 05            [24]  415 	push	ar5
      000944 90 15 2F         [24]  416 	mov	dptr,#__mulint_PARM_2
      000947 74 01            [12]  417 	mov	a,#0x01
      000949 25 10            [12]  418 	add	a,_delete_buffer_sloc0_1_0
      00094B F0               [24]  419 	movx	@dptr,a
      00094C E4               [12]  420 	clr	a
      00094D 35 11            [12]  421 	addc	a,(_delete_buffer_sloc0_1_0 + 1)
      00094F A3               [24]  422 	inc	dptr
      000950 F0               [24]  423 	movx	@dptr,a
      000951 90 00 0C         [24]  424 	mov	dptr,#0x000c
      000954 C0 07            [24]  425 	push	ar7
      000956 C0 06            [24]  426 	push	ar6
      000958 C0 04            [24]  427 	push	ar4
      00095A 12 21 EA         [24]  428 	lcall	__mulint
      00095D A8 82            [24]  429 	mov	r0,dpl
      00095F AD 83            [24]  430 	mov	r5,dph
      000961 D0 04            [24]  431 	pop	ar4
      000963 E8               [12]  432 	mov	a,r0
      000964 24 26            [12]  433 	add	a,#_buffers_array
      000966 F5 82            [12]  434 	mov	dpl,a
      000968 ED               [12]  435 	mov	a,r5
      000969 34 00            [12]  436 	addc	a,#(_buffers_array >> 8)
      00096B F5 83            [12]  437 	mov	dph,a
      00096D E5 10            [12]  438 	mov	a,_delete_buffer_sloc0_1_0
      00096F F0               [24]  439 	movx	@dptr,a
      000970 E5 11            [12]  440 	mov	a,(_delete_buffer_sloc0_1_0 + 1)
      000972 A3               [24]  441 	inc	dptr
      000973 F0               [24]  442 	movx	@dptr,a
                                    443 ;	buffer.c:104: buffers_array[i] = buffers_array[i + 1];
      000974 90 15 2F         [24]  444 	mov	dptr,#__mulint_PARM_2
      000977 E5 10            [12]  445 	mov	a,_delete_buffer_sloc0_1_0
      000979 F0               [24]  446 	movx	@dptr,a
      00097A E5 11            [12]  447 	mov	a,(_delete_buffer_sloc0_1_0 + 1)
      00097C A3               [24]  448 	inc	dptr
      00097D F0               [24]  449 	movx	@dptr,a
      00097E 90 00 0C         [24]  450 	mov	dptr,#0x000c
      000981 C0 05            [24]  451 	push	ar5
      000983 C0 00            [24]  452 	push	ar0
      000985 12 21 EA         [24]  453 	lcall	__mulint
      000988 AB 82            [24]  454 	mov	r3,dpl
      00098A AC 83            [24]  455 	mov	r4,dph
      00098C D0 00            [24]  456 	pop	ar0
      00098E D0 05            [24]  457 	pop	ar5
      000990 EB               [12]  458 	mov	a,r3
      000991 24 26            [12]  459 	add	a,#_buffers_array
      000993 FB               [12]  460 	mov	r3,a
      000994 EC               [12]  461 	mov	a,r4
      000995 34 00            [12]  462 	addc	a,#(_buffers_array >> 8)
      000997 FC               [12]  463 	mov	r4,a
      000998 7A 00            [12]  464 	mov	r2,#0x00
      00099A E8               [12]  465 	mov	a,r0
      00099B 24 26            [12]  466 	add	a,#_buffers_array
      00099D F8               [12]  467 	mov	r0,a
      00099E ED               [12]  468 	mov	a,r5
      00099F 34 00            [12]  469 	addc	a,#(_buffers_array >> 8)
      0009A1 FD               [12]  470 	mov	r5,a
      0009A2 90 15 1E         [24]  471 	mov	dptr,#___memcpy_PARM_2
      0009A5 E8               [12]  472 	mov	a,r0
      0009A6 F0               [24]  473 	movx	@dptr,a
      0009A7 ED               [12]  474 	mov	a,r5
      0009A8 A3               [24]  475 	inc	dptr
      0009A9 F0               [24]  476 	movx	@dptr,a
      0009AA E4               [12]  477 	clr	a
      0009AB A3               [24]  478 	inc	dptr
      0009AC F0               [24]  479 	movx	@dptr,a
      0009AD 90 15 21         [24]  480 	mov	dptr,#___memcpy_PARM_3
      0009B0 74 0C            [12]  481 	mov	a,#0x0c
      0009B2 F0               [24]  482 	movx	@dptr,a
      0009B3 E4               [12]  483 	clr	a
      0009B4 A3               [24]  484 	inc	dptr
      0009B5 F0               [24]  485 	movx	@dptr,a
      0009B6 8B 82            [24]  486 	mov	dpl,r3
      0009B8 8C 83            [24]  487 	mov	dph,r4
      0009BA 8A F0            [24]  488 	mov	b,r2
      0009BC C0 05            [24]  489 	push	ar5
      0009BE C0 04            [24]  490 	push	ar4
      0009C0 12 1F B6         [24]  491 	lcall	___memcpy
      0009C3 D0 04            [24]  492 	pop	ar4
      0009C5 D0 05            [24]  493 	pop	ar5
      0009C7 D0 06            [24]  494 	pop	ar6
      0009C9 D0 07            [24]  495 	pop	ar7
                                    496 ;	buffer.c:117: goto get_del_num;
      0009CB D0 05            [24]  497 	pop	ar5
      0009CD D0 04            [24]  498 	pop	ar4
                                    499 ;	buffer.c:104: buffers_array[i] = buffers_array[i + 1];
      0009CF                        500 00111$:
                                    501 ;	buffer.c:99: for (int i = 0; i < (program_stats.total_buffers - 1); i++)
      0009CF 05 10            [12]  502 	inc	_delete_buffer_sloc0_1_0
      0009D1 E4               [12]  503 	clr	a
      0009D2 B5 10 02         [24]  504 	cjne	a,_delete_buffer_sloc0_1_0,00144$
      0009D5 05 11            [12]  505 	inc	(_delete_buffer_sloc0_1_0 + 1)
      0009D7                        506 00144$:
      0009D7 02 08 FC         [24]  507 	ljmp	00110$
      0009DA                        508 00104$:
                                    509 ;	buffer.c:108: program_stats.total_buffers -= 1;
      0009DA E5 12            [12]  510 	mov	a,_delete_buffer_sloc1_1_0
      0009DC 24 FF            [12]  511 	add	a,#0xff
      0009DE FA               [12]  512 	mov	r2,a
      0009DF E5 13            [12]  513 	mov	a,(_delete_buffer_sloc1_1_0 + 1)
      0009E1 34 FF            [12]  514 	addc	a,#0xff
      0009E3 FB               [12]  515 	mov	r3,a
      0009E4 90 00 24         [24]  516 	mov	dptr,#(_program_stats + 0x0008)
      0009E7 EA               [12]  517 	mov	a,r2
      0009E8 F0               [24]  518 	movx	@dptr,a
      0009E9 EB               [12]  519 	mov	a,r3
      0009EA A3               [24]  520 	inc	dptr
      0009EB F0               [24]  521 	movx	@dptr,a
                                    522 ;	buffer.c:109: program_stats.allocated_heap -= buffer_freed_size;
      0009EC 90 00 1E         [24]  523 	mov	dptr,#(_program_stats + 0x0002)
      0009EF E0               [24]  524 	movx	a,@dptr
      0009F0 FA               [12]  525 	mov	r2,a
      0009F1 A3               [24]  526 	inc	dptr
      0009F2 E0               [24]  527 	movx	a,@dptr
      0009F3 FB               [12]  528 	mov	r3,a
      0009F4 EA               [12]  529 	mov	a,r2
      0009F5 C3               [12]  530 	clr	c
      0009F6 9C               [12]  531 	subb	a,r4
      0009F7 FC               [12]  532 	mov	r4,a
      0009F8 EB               [12]  533 	mov	a,r3
      0009F9 9D               [12]  534 	subb	a,r5
      0009FA FD               [12]  535 	mov	r5,a
      0009FB 90 00 1E         [24]  536 	mov	dptr,#(_program_stats + 0x0002)
      0009FE EC               [12]  537 	mov	a,r4
      0009FF F0               [24]  538 	movx	@dptr,a
      000A00 ED               [12]  539 	mov	a,r5
      000A01 A3               [24]  540 	inc	dptr
      000A02 F0               [24]  541 	movx	@dptr,a
                                    542 ;	buffer.c:111: free(buff_to_free);
      000A03 AB 14            [24]  543 	mov	r3,_delete_buffer_sloc2_1_0
      000A05 AC 15            [24]  544 	mov	r4,(_delete_buffer_sloc2_1_0 + 1)
      000A07 AD 16            [24]  545 	mov	r5,(_delete_buffer_sloc2_1_0 + 2)
      000A09 8B 82            [24]  546 	mov	dpl,r3
      000A0B 8C 83            [24]  547 	mov	dph,r4
      000A0D 8D F0            [24]  548 	mov	b,r5
      000A0F C0 07            [24]  549 	push	ar7
      000A11 C0 06            [24]  550 	push	ar6
      000A13 12 1E 5F         [24]  551 	lcall	_free
      000A16 D0 06            [24]  552 	pop	ar6
      000A18 D0 07            [24]  553 	pop	ar7
                                    554 ;	buffer.c:112: printf("Buffer %d Successfully Deleted.. \n\r", buff_number);
      000A1A C0 06            [24]  555 	push	ar6
      000A1C C0 07            [24]  556 	push	ar7
      000A1E 74 8A            [12]  557 	mov	a,#___str_3
      000A20 C0 E0            [24]  558 	push	acc
      000A22 74 2E            [12]  559 	mov	a,#(___str_3 >> 8)
      000A24 C0 E0            [24]  560 	push	acc
      000A26 74 80            [12]  561 	mov	a,#0x80
      000A28 C0 E0            [24]  562 	push	acc
      000A2A 12 22 58         [24]  563 	lcall	_printf
      000A2D E5 81            [12]  564 	mov	a,sp
      000A2F 24 FB            [12]  565 	add	a,#0xfb
      000A31 F5 81            [12]  566 	mov	sp,a
                                    567 ;	buffer.c:113: return 0;
      000A33 90 00 00         [24]  568 	mov	dptr,#0x0000
                                    569 ;	buffer.c:117: goto get_del_num;
                                    570 ;	buffer.c:119: }
      000A36 22               [24]  571 	ret
                                    572 ;------------------------------------------------------------
                                    573 ;Allocation info for local variables in function 'print_heap_menu'
                                    574 ;------------------------------------------------------------
                                    575 ;	buffer.c:126: void print_heap_menu()
                                    576 ;	-----------------------------------------
                                    577 ;	 function print_heap_menu
                                    578 ;	-----------------------------------------
      000A37                        579 _print_heap_menu:
                                    580 ;	buffer.c:128: printf("\n\n\r^^^^^^^^^^^^^^^^^^^-HEAP-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ \n\n\r");
      000A37 74 AE            [12]  581 	mov	a,#___str_4
      000A39 C0 E0            [24]  582 	push	acc
      000A3B 74 2E            [12]  583 	mov	a,#(___str_4 >> 8)
      000A3D C0 E0            [24]  584 	push	acc
      000A3F 74 80            [12]  585 	mov	a,#0x80
      000A41 C0 E0            [24]  586 	push	acc
      000A43 12 22 58         [24]  587 	lcall	_printf
      000A46 15 81            [12]  588 	dec	sp
      000A48 15 81            [12]  589 	dec	sp
      000A4A 15 81            [12]  590 	dec	sp
                                    591 ;	buffer.c:129: printf("You can enter characters or use commands from below \n\r");
      000A4C 74 EE            [12]  592 	mov	a,#___str_5
      000A4E C0 E0            [24]  593 	push	acc
      000A50 74 2E            [12]  594 	mov	a,#(___str_5 >> 8)
      000A52 C0 E0            [24]  595 	push	acc
      000A54 74 80            [12]  596 	mov	a,#0x80
      000A56 C0 E0            [24]  597 	push	acc
      000A58 12 22 58         [24]  598 	lcall	_printf
      000A5B 15 81            [12]  599 	dec	sp
      000A5D 15 81            [12]  600 	dec	sp
      000A5F 15 81            [12]  601 	dec	sp
                                    602 ;	buffer.c:130: printf("'?' -> Show heap status, dump & clear Buffer 0 \n\r");
      000A61 74 25            [12]  603 	mov	a,#___str_6
      000A63 C0 E0            [24]  604 	push	acc
      000A65 74 2F            [12]  605 	mov	a,#(___str_6 >> 8)
      000A67 C0 E0            [24]  606 	push	acc
      000A69 74 80            [12]  607 	mov	a,#0x80
      000A6B C0 E0            [24]  608 	push	acc
      000A6D 12 22 58         [24]  609 	lcall	_printf
      000A70 15 81            [12]  610 	dec	sp
      000A72 15 81            [12]  611 	dec	sp
      000A74 15 81            [12]  612 	dec	sp
                                    613 ;	buffer.c:131: printf("'+' -> Add a new Buffer\n\r");
      000A76 74 57            [12]  614 	mov	a,#___str_7
      000A78 C0 E0            [24]  615 	push	acc
      000A7A 74 2F            [12]  616 	mov	a,#(___str_7 >> 8)
      000A7C C0 E0            [24]  617 	push	acc
      000A7E 74 80            [12]  618 	mov	a,#0x80
      000A80 C0 E0            [24]  619 	push	acc
      000A82 12 22 58         [24]  620 	lcall	_printf
      000A85 15 81            [12]  621 	dec	sp
      000A87 15 81            [12]  622 	dec	sp
      000A89 15 81            [12]  623 	dec	sp
                                    624 ;	buffer.c:132: printf("'-' -> Delete existing Buffer\n\r");
      000A8B 74 71            [12]  625 	mov	a,#___str_8
      000A8D C0 E0            [24]  626 	push	acc
      000A8F 74 2F            [12]  627 	mov	a,#(___str_8 >> 8)
      000A91 C0 E0            [24]  628 	push	acc
      000A93 74 80            [12]  629 	mov	a,#0x80
      000A95 C0 E0            [24]  630 	push	acc
      000A97 12 22 58         [24]  631 	lcall	_printf
      000A9A 15 81            [12]  632 	dec	sp
      000A9C 15 81            [12]  633 	dec	sp
      000A9E 15 81            [12]  634 	dec	sp
                                    635 ;	buffer.c:133: printf("'=' -> Dump Buffer 0 in hex\n\r");
      000AA0 74 91            [12]  636 	mov	a,#___str_9
      000AA2 C0 E0            [24]  637 	push	acc
      000AA4 74 2F            [12]  638 	mov	a,#(___str_9 >> 8)
      000AA6 C0 E0            [24]  639 	push	acc
      000AA8 74 80            [12]  640 	mov	a,#0x80
      000AAA C0 E0            [24]  641 	push	acc
      000AAC 12 22 58         [24]  642 	lcall	_printf
      000AAF 15 81            [12]  643 	dec	sp
      000AB1 15 81            [12]  644 	dec	sp
      000AB3 15 81            [12]  645 	dec	sp
                                    646 ;	buffer.c:134: printf("'@' -> Free all Heap & begin again\n\n\r");
      000AB5 74 AF            [12]  647 	mov	a,#___str_10
      000AB7 C0 E0            [24]  648 	push	acc
      000AB9 74 2F            [12]  649 	mov	a,#(___str_10 >> 8)
      000ABB C0 E0            [24]  650 	push	acc
      000ABD 74 80            [12]  651 	mov	a,#0x80
      000ABF C0 E0            [24]  652 	push	acc
      000AC1 12 22 58         [24]  653 	lcall	_printf
      000AC4 15 81            [12]  654 	dec	sp
      000AC6 15 81            [12]  655 	dec	sp
      000AC8 15 81            [12]  656 	dec	sp
                                    657 ;	buffer.c:135: printf("'M' -> Go to Main Menu \n\n\r");
      000ACA 74 D5            [12]  658 	mov	a,#___str_11
      000ACC C0 E0            [24]  659 	push	acc
      000ACE 74 2F            [12]  660 	mov	a,#(___str_11 >> 8)
      000AD0 C0 E0            [24]  661 	push	acc
      000AD2 74 80            [12]  662 	mov	a,#0x80
      000AD4 C0 E0            [24]  663 	push	acc
      000AD6 12 22 58         [24]  664 	lcall	_printf
      000AD9 15 81            [12]  665 	dec	sp
      000ADB 15 81            [12]  666 	dec	sp
      000ADD 15 81            [12]  667 	dec	sp
                                    668 ;	buffer.c:136: }
      000ADF 22               [24]  669 	ret
                                    670 ;------------------------------------------------------------
                                    671 ;Allocation info for local variables in function 'create_new_buffer'
                                    672 ;------------------------------------------------------------
                                    673 ;buff_size                 Allocated with name '_create_new_buffer_buff_size_65536_57'
                                    674 ;buff                      Allocated with name '_create_new_buffer_buff_65536_57'
                                    675 ;------------------------------------------------------------
                                    676 ;	buffer.c:144: int create_new_buffer()
                                    677 ;	-----------------------------------------
                                    678 ;	 function create_new_buffer
                                    679 ;	-----------------------------------------
      000AE0                        680 _create_new_buffer:
                                    681 ;	buffer.c:148: if (program_stats.allocated_heap == program_stats.total_heap_size)
      000AE0 90 00 1E         [24]  682 	mov	dptr,#(_program_stats + 0x0002)
      000AE3 E0               [24]  683 	movx	a,@dptr
      000AE4 FE               [12]  684 	mov	r6,a
      000AE5 A3               [24]  685 	inc	dptr
      000AE6 E0               [24]  686 	movx	a,@dptr
      000AE7 FF               [12]  687 	mov	r7,a
      000AE8 90 00 1C         [24]  688 	mov	dptr,#_program_stats
      000AEB E0               [24]  689 	movx	a,@dptr
      000AEC FC               [12]  690 	mov	r4,a
      000AED A3               [24]  691 	inc	dptr
      000AEE E0               [24]  692 	movx	a,@dptr
      000AEF FD               [12]  693 	mov	r5,a
      000AF0 EE               [12]  694 	mov	a,r6
      000AF1 B5 04 07         [24]  695 	cjne	a,ar4,00133$
      000AF4 EF               [12]  696 	mov	a,r7
      000AF5 B5 05 03         [24]  697 	cjne	a,ar5,00133$
      000AF8 02 0C 3B         [24]  698 	ljmp	00111$
      000AFB                        699 00133$:
                                    700 ;	buffer.c:151: get_new_buff:
      000AFB                        701 00103$:
                                    702 ;	buffer.c:152: printf("\n\rGive Valid Buffer Size(030-300):");
      000AFB 74 F0            [12]  703 	mov	a,#___str_12
      000AFD C0 E0            [24]  704 	push	acc
      000AFF 74 2F            [12]  705 	mov	a,#(___str_12 >> 8)
      000B01 C0 E0            [24]  706 	push	acc
      000B03 74 80            [12]  707 	mov	a,#0x80
      000B05 C0 E0            [24]  708 	push	acc
      000B07 12 22 58         [24]  709 	lcall	_printf
      000B0A 15 81            [12]  710 	dec	sp
      000B0C 15 81            [12]  711 	dec	sp
      000B0E 15 81            [12]  712 	dec	sp
                                    713 ;	buffer.c:153: buff_size = get_number(3);
      000B10 90 00 03         [24]  714 	mov	dptr,#0x0003
      000B13 12 04 35         [24]  715 	lcall	_get_number
      000B16 AE 82            [24]  716 	mov	r6,dpl
      000B18 AF 83            [24]  717 	mov	r7,dph
                                    718 ;	buffer.c:154: if (buff_size >= 30 && buff_size <= 300)
      000B1A C3               [12]  719 	clr	c
      000B1B EE               [12]  720 	mov	a,r6
      000B1C 94 1E            [12]  721 	subb	a,#0x1e
      000B1E EF               [12]  722 	mov	a,r7
      000B1F 64 80            [12]  723 	xrl	a,#0x80
      000B21 94 80            [12]  724 	subb	a,#0x80
      000B23 40 D6            [24]  725 	jc	00103$
      000B25 74 2C            [12]  726 	mov	a,#0x2c
      000B27 9E               [12]  727 	subb	a,r6
      000B28 74 81            [12]  728 	mov	a,#(0x01 ^ 0x80)
      000B2A 8F F0            [24]  729 	mov	b,r7
      000B2C 63 F0 80         [24]  730 	xrl	b,#0x80
      000B2F 95 F0            [12]  731 	subb	a,b
      000B31 40 C8            [24]  732 	jc	00103$
                                    733 ;	buffer.c:156: buff.buffer_start = malloc(buff_size);
      000B33 8E 82            [24]  734 	mov	dpl,r6
      000B35 8F 83            [24]  735 	mov	dph,r7
      000B37 C0 07            [24]  736 	push	ar7
      000B39 C0 06            [24]  737 	push	ar6
      000B3B 12 20 81         [24]  738 	lcall	_malloc
      000B3E AC 82            [24]  739 	mov	r4,dpl
      000B40 AD 83            [24]  740 	mov	r5,dph
      000B42 D0 06            [24]  741 	pop	ar6
      000B44 D0 07            [24]  742 	pop	ar7
      000B46 7B 00            [12]  743 	mov	r3,#0x00
      000B48 90 01 54         [24]  744 	mov	dptr,#(_create_new_buffer_buff_65536_57 + 0x0002)
      000B4B EC               [12]  745 	mov	a,r4
      000B4C F0               [24]  746 	movx	@dptr,a
      000B4D ED               [12]  747 	mov	a,r5
      000B4E A3               [24]  748 	inc	dptr
      000B4F F0               [24]  749 	movx	@dptr,a
      000B50 EB               [12]  750 	mov	a,r3
      000B51 A3               [24]  751 	inc	dptr
      000B52 F0               [24]  752 	movx	@dptr,a
                                    753 ;	buffer.c:157: if (buff.buffer_start == NULL)
      000B53 EC               [12]  754 	mov	a,r4
      000B54 4D               [12]  755 	orl	a,r5
      000B55 70 18            [24]  756 	jnz	00105$
                                    757 ;	buffer.c:159: printf("Failed, give smaller buffer\n\r");
      000B57 74 13            [12]  758 	mov	a,#___str_13
      000B59 C0 E0            [24]  759 	push	acc
      000B5B 74 30            [12]  760 	mov	a,#(___str_13 >> 8)
      000B5D C0 E0            [24]  761 	push	acc
      000B5F 74 80            [12]  762 	mov	a,#0x80
      000B61 C0 E0            [24]  763 	push	acc
      000B63 12 22 58         [24]  764 	lcall	_printf
      000B66 15 81            [12]  765 	dec	sp
      000B68 15 81            [12]  766 	dec	sp
      000B6A 15 81            [12]  767 	dec	sp
      000B6C 02 0C 37         [24]  768 	ljmp	00106$
      000B6F                        769 00105$:
                                    770 ;	buffer.c:163: printf("\n\n\r####SUCCESS, BUFFER Created####\n\n\r");
      000B6F C0 07            [24]  771 	push	ar7
      000B71 C0 06            [24]  772 	push	ar6
      000B73 74 31            [12]  773 	mov	a,#___str_14
      000B75 C0 E0            [24]  774 	push	acc
      000B77 74 30            [12]  775 	mov	a,#(___str_14 >> 8)
      000B79 C0 E0            [24]  776 	push	acc
      000B7B 74 80            [12]  777 	mov	a,#0x80
      000B7D C0 E0            [24]  778 	push	acc
      000B7F 12 22 58         [24]  779 	lcall	_printf
      000B82 15 81            [12]  780 	dec	sp
      000B84 15 81            [12]  781 	dec	sp
      000B86 15 81            [12]  782 	dec	sp
      000B88 D0 06            [24]  783 	pop	ar6
      000B8A D0 07            [24]  784 	pop	ar7
                                    785 ;	buffer.c:165: program_stats.allocated_heap += buff_size;
      000B8C 90 00 1E         [24]  786 	mov	dptr,#(_program_stats + 0x0002)
      000B8F E0               [24]  787 	movx	a,@dptr
      000B90 FC               [12]  788 	mov	r4,a
      000B91 A3               [24]  789 	inc	dptr
      000B92 E0               [24]  790 	movx	a,@dptr
      000B93 FD               [12]  791 	mov	r5,a
      000B94 EE               [12]  792 	mov	a,r6
      000B95 2C               [12]  793 	add	a,r4
      000B96 FC               [12]  794 	mov	r4,a
      000B97 EF               [12]  795 	mov	a,r7
      000B98 3D               [12]  796 	addc	a,r5
      000B99 FD               [12]  797 	mov	r5,a
      000B9A 90 00 1E         [24]  798 	mov	dptr,#(_program_stats + 0x0002)
      000B9D EC               [12]  799 	mov	a,r4
      000B9E F0               [24]  800 	movx	@dptr,a
      000B9F ED               [12]  801 	mov	a,r5
      000BA0 A3               [24]  802 	inc	dptr
      000BA1 F0               [24]  803 	movx	@dptr,a
                                    804 ;	buffer.c:166: buff.buff_size = buff_size;
      000BA2 90 01 5A         [24]  805 	mov	dptr,#(_create_new_buffer_buff_65536_57 + 0x0008)
      000BA5 EE               [12]  806 	mov	a,r6
      000BA6 F0               [24]  807 	movx	@dptr,a
      000BA7 EF               [12]  808 	mov	a,r7
      000BA8 A3               [24]  809 	inc	dptr
      000BA9 F0               [24]  810 	movx	@dptr,a
                                    811 ;	buffer.c:167: buff.buffer_num = program_stats.total_buffers;
      000BAA 90 00 24         [24]  812 	mov	dptr,#(_program_stats + 0x0008)
      000BAD E0               [24]  813 	movx	a,@dptr
      000BAE FC               [12]  814 	mov	r4,a
      000BAF A3               [24]  815 	inc	dptr
      000BB0 E0               [24]  816 	movx	a,@dptr
      000BB1 FD               [12]  817 	mov	r5,a
      000BB2 90 01 52         [24]  818 	mov	dptr,#_create_new_buffer_buff_65536_57
      000BB5 EC               [12]  819 	mov	a,r4
      000BB6 F0               [24]  820 	movx	@dptr,a
      000BB7 ED               [12]  821 	mov	a,r5
      000BB8 A3               [24]  822 	inc	dptr
      000BB9 F0               [24]  823 	movx	@dptr,a
                                    824 ;	buffer.c:168: buff.buffer_end = buff.buffer_start + buff_size;
      000BBA 90 01 54         [24]  825 	mov	dptr,#(_create_new_buffer_buff_65536_57 + 0x0002)
      000BBD E0               [24]  826 	movx	a,@dptr
      000BBE FB               [12]  827 	mov	r3,a
      000BBF A3               [24]  828 	inc	dptr
      000BC0 E0               [24]  829 	movx	a,@dptr
      000BC1 FC               [12]  830 	mov	r4,a
      000BC2 A3               [24]  831 	inc	dptr
      000BC3 E0               [24]  832 	movx	a,@dptr
      000BC4 FD               [12]  833 	mov	r5,a
      000BC5 EE               [12]  834 	mov	a,r6
      000BC6 2B               [12]  835 	add	a,r3
      000BC7 FE               [12]  836 	mov	r6,a
      000BC8 EF               [12]  837 	mov	a,r7
      000BC9 3C               [12]  838 	addc	a,r4
      000BCA FF               [12]  839 	mov	r7,a
      000BCB 8D 02            [24]  840 	mov	ar2,r5
      000BCD 90 01 57         [24]  841 	mov	dptr,#(_create_new_buffer_buff_65536_57 + 0x0005)
      000BD0 EE               [12]  842 	mov	a,r6
      000BD1 F0               [24]  843 	movx	@dptr,a
      000BD2 EF               [12]  844 	mov	a,r7
      000BD3 A3               [24]  845 	inc	dptr
      000BD4 F0               [24]  846 	movx	@dptr,a
      000BD5 EA               [12]  847 	mov	a,r2
      000BD6 A3               [24]  848 	inc	dptr
      000BD7 F0               [24]  849 	movx	@dptr,a
                                    850 ;	buffer.c:169: buff.num_char = 0;
      000BD8 90 01 5C         [24]  851 	mov	dptr,#(_create_new_buffer_buff_65536_57 + 0x000a)
      000BDB E4               [12]  852 	clr	a
      000BDC F0               [24]  853 	movx	@dptr,a
      000BDD A3               [24]  854 	inc	dptr
      000BDE F0               [24]  855 	movx	@dptr,a
                                    856 ;	buffer.c:171: buffers_array[program_stats.total_buffers] = buff;
      000BDF 90 00 24         [24]  857 	mov	dptr,#(_program_stats + 0x0008)
      000BE2 E0               [24]  858 	movx	a,@dptr
      000BE3 FE               [12]  859 	mov	r6,a
      000BE4 A3               [24]  860 	inc	dptr
      000BE5 E0               [24]  861 	movx	a,@dptr
      000BE6 FF               [12]  862 	mov	r7,a
      000BE7 90 15 2F         [24]  863 	mov	dptr,#__mulint_PARM_2
      000BEA EE               [12]  864 	mov	a,r6
      000BEB F0               [24]  865 	movx	@dptr,a
      000BEC EF               [12]  866 	mov	a,r7
      000BED A3               [24]  867 	inc	dptr
      000BEE F0               [24]  868 	movx	@dptr,a
      000BEF 90 00 0C         [24]  869 	mov	dptr,#0x000c
      000BF2 12 21 EA         [24]  870 	lcall	__mulint
      000BF5 AE 82            [24]  871 	mov	r6,dpl
      000BF7 AF 83            [24]  872 	mov	r7,dph
      000BF9 EE               [12]  873 	mov	a,r6
      000BFA 24 26            [12]  874 	add	a,#_buffers_array
      000BFC FE               [12]  875 	mov	r6,a
      000BFD EF               [12]  876 	mov	a,r7
      000BFE 34 00            [12]  877 	addc	a,#(_buffers_array >> 8)
      000C00 FF               [12]  878 	mov	r7,a
      000C01 7D 00            [12]  879 	mov	r5,#0x00
      000C03 90 15 1E         [24]  880 	mov	dptr,#___memcpy_PARM_2
      000C06 74 52            [12]  881 	mov	a,#_create_new_buffer_buff_65536_57
      000C08 F0               [24]  882 	movx	@dptr,a
      000C09 74 01            [12]  883 	mov	a,#(_create_new_buffer_buff_65536_57 >> 8)
      000C0B A3               [24]  884 	inc	dptr
      000C0C F0               [24]  885 	movx	@dptr,a
      000C0D E4               [12]  886 	clr	a
      000C0E A3               [24]  887 	inc	dptr
      000C0F F0               [24]  888 	movx	@dptr,a
      000C10 90 15 21         [24]  889 	mov	dptr,#___memcpy_PARM_3
      000C13 74 0C            [12]  890 	mov	a,#0x0c
      000C15 F0               [24]  891 	movx	@dptr,a
      000C16 E4               [12]  892 	clr	a
      000C17 A3               [24]  893 	inc	dptr
      000C18 F0               [24]  894 	movx	@dptr,a
      000C19 8E 82            [24]  895 	mov	dpl,r6
      000C1B 8F 83            [24]  896 	mov	dph,r7
      000C1D 8D F0            [24]  897 	mov	b,r5
      000C1F 12 1F B6         [24]  898 	lcall	___memcpy
                                    899 ;	buffer.c:172: program_stats.total_buffers += 1;
      000C22 90 00 24         [24]  900 	mov	dptr,#(_program_stats + 0x0008)
      000C25 E0               [24]  901 	movx	a,@dptr
      000C26 FE               [12]  902 	mov	r6,a
      000C27 A3               [24]  903 	inc	dptr
      000C28 E0               [24]  904 	movx	a,@dptr
      000C29 FF               [12]  905 	mov	r7,a
      000C2A 0E               [12]  906 	inc	r6
      000C2B BE 00 01         [24]  907 	cjne	r6,#0x00,00137$
      000C2E 0F               [12]  908 	inc	r7
      000C2F                        909 00137$:
      000C2F 90 00 24         [24]  910 	mov	dptr,#(_program_stats + 0x0008)
      000C32 EE               [12]  911 	mov	a,r6
      000C33 F0               [24]  912 	movx	@dptr,a
      000C34 EF               [12]  913 	mov	a,r7
      000C35 A3               [24]  914 	inc	dptr
      000C36 F0               [24]  915 	movx	@dptr,a
      000C37                        916 00106$:
                                    917 ;	buffer.c:174: return 0;
      000C37 90 00 00         [24]  918 	mov	dptr,#0x0000
                                    919 ;	buffer.c:180: no_heap_left:
      000C3A 22               [24]  920 	ret
      000C3B                        921 00111$:
                                    922 ;	buffer.c:181: printf("No Heap Memory Left, Delete some buffers...\n\r");
      000C3B 74 57            [12]  923 	mov	a,#___str_15
      000C3D C0 E0            [24]  924 	push	acc
      000C3F 74 30            [12]  925 	mov	a,#(___str_15 >> 8)
      000C41 C0 E0            [24]  926 	push	acc
      000C43 74 80            [12]  927 	mov	a,#0x80
      000C45 C0 E0            [24]  928 	push	acc
      000C47 12 22 58         [24]  929 	lcall	_printf
      000C4A 15 81            [12]  930 	dec	sp
      000C4C 15 81            [12]  931 	dec	sp
      000C4E 15 81            [12]  932 	dec	sp
                                    933 ;	buffer.c:182: return 0;
      000C50 90 00 00         [24]  934 	mov	dptr,#0x0000
                                    935 ;	buffer.c:183: }
      000C53 22               [24]  936 	ret
                                    937 ;------------------------------------------------------------
                                    938 ;Allocation info for local variables in function 'create_initial_buffers'
                                    939 ;------------------------------------------------------------
                                    940 ;buff_size                 Allocated with name '_create_initial_buffers_buff_size_65536_62'
                                    941 ;buff                      Allocated with name '_create_initial_buffers_buff_65537_63'
                                    942 ;buff1                     Allocated with name '_create_initial_buffers_buff1_65537_63'
                                    943 ;------------------------------------------------------------
                                    944 ;	buffer.c:191: void create_initial_buffers()
                                    945 ;	-----------------------------------------
                                    946 ;	 function create_initial_buffers
                                    947 ;	-----------------------------------------
      000C54                        948 _create_initial_buffers:
                                    949 ;	buffer.c:195: get_buff:
      000C54                        950 00101$:
                                    951 ;	buffer.c:196: printf("\n\rGive Valid Initial Buffer Size(0048-4800):");
      000C54 74 85            [12]  952 	mov	a,#___str_16
      000C56 C0 E0            [24]  953 	push	acc
      000C58 74 30            [12]  954 	mov	a,#(___str_16 >> 8)
      000C5A C0 E0            [24]  955 	push	acc
      000C5C 74 80            [12]  956 	mov	a,#0x80
      000C5E C0 E0            [24]  957 	push	acc
      000C60 12 22 58         [24]  958 	lcall	_printf
      000C63 15 81            [12]  959 	dec	sp
      000C65 15 81            [12]  960 	dec	sp
      000C67 15 81            [12]  961 	dec	sp
                                    962 ;	buffer.c:197: buff_size = get_number(4);
      000C69 90 00 04         [24]  963 	mov	dptr,#0x0004
      000C6C 12 04 35         [24]  964 	lcall	_get_number
      000C6F AE 82            [24]  965 	mov	r6,dpl
      000C71 AF 83            [24]  966 	mov	r7,dph
                                    967 ;	buffer.c:201: if (buff_size >= 48 && buff_size <= 4800)
      000C73 C3               [12]  968 	clr	c
      000C74 EE               [12]  969 	mov	a,r6
      000C75 94 30            [12]  970 	subb	a,#0x30
      000C77 EF               [12]  971 	mov	a,r7
      000C78 64 80            [12]  972 	xrl	a,#0x80
      000C7A 94 80            [12]  973 	subb	a,#0x80
      000C7C 40 D6            [24]  974 	jc	00101$
      000C7E 74 C0            [12]  975 	mov	a,#0xc0
      000C80 9E               [12]  976 	subb	a,r6
      000C81 74 92            [12]  977 	mov	a,#(0x12 ^ 0x80)
      000C83 8F F0            [24]  978 	mov	b,r7
      000C85 63 F0 80         [24]  979 	xrl	b,#0x80
      000C88 95 F0            [12]  980 	subb	a,b
      000C8A 40 C8            [24]  981 	jc	00101$
                                    982 ;	buffer.c:203: buff.buffer_start = malloc(buff_size);
      000C8C 8E 82            [24]  983 	mov	dpl,r6
      000C8E 8F 83            [24]  984 	mov	dph,r7
      000C90 C0 07            [24]  985 	push	ar7
      000C92 C0 06            [24]  986 	push	ar6
      000C94 12 20 81         [24]  987 	lcall	_malloc
      000C97 AC 82            [24]  988 	mov	r4,dpl
      000C99 AD 83            [24]  989 	mov	r5,dph
      000C9B D0 06            [24]  990 	pop	ar6
      000C9D D0 07            [24]  991 	pop	ar7
      000C9F 7B 00            [12]  992 	mov	r3,#0x00
      000CA1 90 01 60         [24]  993 	mov	dptr,#(_create_initial_buffers_buff_65537_63 + 0x0002)
      000CA4 EC               [12]  994 	mov	a,r4
      000CA5 F0               [24]  995 	movx	@dptr,a
      000CA6 ED               [12]  996 	mov	a,r5
      000CA7 A3               [24]  997 	inc	dptr
      000CA8 F0               [24]  998 	movx	@dptr,a
      000CA9 EB               [12]  999 	mov	a,r3
      000CAA A3               [24] 1000 	inc	dptr
      000CAB F0               [24] 1001 	movx	@dptr,a
                                   1002 ;	buffer.c:204: buff1.buffer_start = malloc(buff_size);
      000CAC 8E 82            [24] 1003 	mov	dpl,r6
      000CAE 8F 83            [24] 1004 	mov	dph,r7
      000CB0 C0 07            [24] 1005 	push	ar7
      000CB2 C0 06            [24] 1006 	push	ar6
      000CB4 12 20 81         [24] 1007 	lcall	_malloc
      000CB7 AC 82            [24] 1008 	mov	r4,dpl
      000CB9 AD 83            [24] 1009 	mov	r5,dph
      000CBB D0 06            [24] 1010 	pop	ar6
      000CBD D0 07            [24] 1011 	pop	ar7
      000CBF 7B 00            [12] 1012 	mov	r3,#0x00
      000CC1 90 01 6C         [24] 1013 	mov	dptr,#(_create_initial_buffers_buff1_65537_63 + 0x0002)
      000CC4 EC               [12] 1014 	mov	a,r4
      000CC5 F0               [24] 1015 	movx	@dptr,a
      000CC6 ED               [12] 1016 	mov	a,r5
      000CC7 A3               [24] 1017 	inc	dptr
      000CC8 F0               [24] 1018 	movx	@dptr,a
      000CC9 EB               [12] 1019 	mov	a,r3
      000CCA A3               [24] 1020 	inc	dptr
      000CCB F0               [24] 1021 	movx	@dptr,a
                                   1022 ;	buffer.c:206: if (buff.buffer_start == NULL || buff1.buffer_start == NULL)
      000CCC 90 01 60         [24] 1023 	mov	dptr,#(_create_initial_buffers_buff_65537_63 + 0x0002)
      000CCF E0               [24] 1024 	movx	a,@dptr
      000CD0 FB               [12] 1025 	mov	r3,a
      000CD1 A3               [24] 1026 	inc	dptr
      000CD2 E0               [24] 1027 	movx	a,@dptr
      000CD3 FC               [12] 1028 	mov	r4,a
      000CD4 A3               [24] 1029 	inc	dptr
      000CD5 E0               [24] 1030 	movx	a,@dptr
      000CD6 EB               [12] 1031 	mov	a,r3
      000CD7 4C               [12] 1032 	orl	a,r4
      000CD8 60 0F            [24] 1033 	jz	00106$
      000CDA 90 01 6C         [24] 1034 	mov	dptr,#(_create_initial_buffers_buff1_65537_63 + 0x0002)
      000CDD E0               [24] 1035 	movx	a,@dptr
      000CDE FB               [12] 1036 	mov	r3,a
      000CDF A3               [24] 1037 	inc	dptr
      000CE0 E0               [24] 1038 	movx	a,@dptr
      000CE1 FC               [12] 1039 	mov	r4,a
      000CE2 A3               [24] 1040 	inc	dptr
      000CE3 E0               [24] 1041 	movx	a,@dptr
      000CE4 FD               [12] 1042 	mov	r5,a
      000CE5 EB               [12] 1043 	mov	a,r3
      000CE6 4C               [12] 1044 	orl	a,r4
      000CE7 70 60            [24] 1045 	jnz	00107$
      000CE9                       1046 00106$:
                                   1047 ;	buffer.c:208: printf("\n\r####FAIL, Please give a smaller buffer size####\n\n\r");
      000CE9 74 B2            [12] 1048 	mov	a,#___str_17
      000CEB C0 E0            [24] 1049 	push	acc
      000CED 74 30            [12] 1050 	mov	a,#(___str_17 >> 8)
      000CEF C0 E0            [24] 1051 	push	acc
      000CF1 74 80            [12] 1052 	mov	a,#0x80
      000CF3 C0 E0            [24] 1053 	push	acc
      000CF5 12 22 58         [24] 1054 	lcall	_printf
      000CF8 15 81            [12] 1055 	dec	sp
      000CFA 15 81            [12] 1056 	dec	sp
      000CFC 15 81            [12] 1057 	dec	sp
                                   1058 ;	buffer.c:210: if (buff.buffer_start != NULL)
      000CFE 90 01 60         [24] 1059 	mov	dptr,#(_create_initial_buffers_buff_65537_63 + 0x0002)
      000D01 E0               [24] 1060 	movx	a,@dptr
      000D02 FB               [12] 1061 	mov	r3,a
      000D03 A3               [24] 1062 	inc	dptr
      000D04 E0               [24] 1063 	movx	a,@dptr
      000D05 FC               [12] 1064 	mov	r4,a
      000D06 A3               [24] 1065 	inc	dptr
      000D07 E0               [24] 1066 	movx	a,@dptr
      000D08 EB               [12] 1067 	mov	a,r3
      000D09 4C               [12] 1068 	orl	a,r4
      000D0A 60 14            [24] 1069 	jz	00103$
                                   1070 ;	buffer.c:211: free(buff.buffer_start);
      000D0C 90 01 60         [24] 1071 	mov	dptr,#(_create_initial_buffers_buff_65537_63 + 0x0002)
      000D0F E0               [24] 1072 	movx	a,@dptr
      000D10 FB               [12] 1073 	mov	r3,a
      000D11 A3               [24] 1074 	inc	dptr
      000D12 E0               [24] 1075 	movx	a,@dptr
      000D13 FC               [12] 1076 	mov	r4,a
      000D14 A3               [24] 1077 	inc	dptr
      000D15 E0               [24] 1078 	movx	a,@dptr
      000D16 FD               [12] 1079 	mov	r5,a
      000D17 8B 82            [24] 1080 	mov	dpl,r3
      000D19 8C 83            [24] 1081 	mov	dph,r4
      000D1B 8D F0            [24] 1082 	mov	b,r5
      000D1D 12 1E 5F         [24] 1083 	lcall	_free
      000D20                       1084 00103$:
                                   1085 ;	buffer.c:212: if (buff1.buffer_start != NULL)
      000D20 90 01 6C         [24] 1086 	mov	dptr,#(_create_initial_buffers_buff1_65537_63 + 0x0002)
      000D23 E0               [24] 1087 	movx	a,@dptr
      000D24 FB               [12] 1088 	mov	r3,a
      000D25 A3               [24] 1089 	inc	dptr
      000D26 E0               [24] 1090 	movx	a,@dptr
      000D27 FC               [12] 1091 	mov	r4,a
      000D28 A3               [24] 1092 	inc	dptr
      000D29 E0               [24] 1093 	movx	a,@dptr
      000D2A FD               [12] 1094 	mov	r5,a
      000D2B EB               [12] 1095 	mov	a,r3
      000D2C 4C               [12] 1096 	orl	a,r4
      000D2D 70 03            [24] 1097 	jnz	00145$
      000D2F 02 0C 54         [24] 1098 	ljmp	00101$
      000D32                       1099 00145$:
                                   1100 ;	buffer.c:213: free(buff1.buffer_start);
      000D32 90 01 6C         [24] 1101 	mov	dptr,#(_create_initial_buffers_buff1_65537_63 + 0x0002)
      000D35 E0               [24] 1102 	movx	a,@dptr
      000D36 FB               [12] 1103 	mov	r3,a
      000D37 A3               [24] 1104 	inc	dptr
      000D38 E0               [24] 1105 	movx	a,@dptr
      000D39 FC               [12] 1106 	mov	r4,a
      000D3A A3               [24] 1107 	inc	dptr
      000D3B E0               [24] 1108 	movx	a,@dptr
      000D3C FD               [12] 1109 	mov	r5,a
      000D3D 8B 82            [24] 1110 	mov	dpl,r3
      000D3F 8C 83            [24] 1111 	mov	dph,r4
      000D41 8D F0            [24] 1112 	mov	b,r5
      000D43 12 1E 5F         [24] 1113 	lcall	_free
                                   1114 ;	buffer.c:215: goto get_buff;
      000D46 02 0C 54         [24] 1115 	ljmp	00101$
      000D49                       1116 00107$:
                                   1117 ;	buffer.c:220: printf("\n\n\r####SUCCESS, INITIAL BUFFERS Created####\n\n\r");
      000D49 C0 07            [24] 1118 	push	ar7
      000D4B C0 06            [24] 1119 	push	ar6
      000D4D 74 E7            [12] 1120 	mov	a,#___str_18
      000D4F C0 E0            [24] 1121 	push	acc
      000D51 74 30            [12] 1122 	mov	a,#(___str_18 >> 8)
      000D53 C0 E0            [24] 1123 	push	acc
      000D55 74 80            [12] 1124 	mov	a,#0x80
      000D57 C0 E0            [24] 1125 	push	acc
      000D59 12 22 58         [24] 1126 	lcall	_printf
      000D5C 15 81            [12] 1127 	dec	sp
      000D5E 15 81            [12] 1128 	dec	sp
      000D60 15 81            [12] 1129 	dec	sp
      000D62 D0 06            [24] 1130 	pop	ar6
      000D64 D0 07            [24] 1131 	pop	ar7
                                   1132 ;	buffer.c:221: program_stats.allocated_heap = 2 * buff_size;
      000D66 EE               [12] 1133 	mov	a,r6
      000D67 2E               [12] 1134 	add	a,r6
      000D68 FC               [12] 1135 	mov	r4,a
      000D69 EF               [12] 1136 	mov	a,r7
      000D6A 33               [12] 1137 	rlc	a
      000D6B FD               [12] 1138 	mov	r5,a
      000D6C 90 00 1E         [24] 1139 	mov	dptr,#(_program_stats + 0x0002)
      000D6F EC               [12] 1140 	mov	a,r4
      000D70 F0               [24] 1141 	movx	@dptr,a
      000D71 ED               [12] 1142 	mov	a,r5
      000D72 A3               [24] 1143 	inc	dptr
      000D73 F0               [24] 1144 	movx	@dptr,a
                                   1145 ;	buffer.c:222: program_stats.total_heap_size = 4996;
      000D74 90 00 1C         [24] 1146 	mov	dptr,#_program_stats
      000D77 74 84            [12] 1147 	mov	a,#0x84
      000D79 F0               [24] 1148 	movx	@dptr,a
      000D7A 74 13            [12] 1149 	mov	a,#0x13
      000D7C A3               [24] 1150 	inc	dptr
      000D7D F0               [24] 1151 	movx	@dptr,a
                                   1152 ;	buffer.c:223: program_stats.total_buffers = 2;
      000D7E 90 00 24         [24] 1153 	mov	dptr,#(_program_stats + 0x0008)
      000D81 74 02            [12] 1154 	mov	a,#0x02
      000D83 F0               [24] 1155 	movx	@dptr,a
      000D84 E4               [12] 1156 	clr	a
      000D85 A3               [24] 1157 	inc	dptr
      000D86 F0               [24] 1158 	movx	@dptr,a
                                   1159 ;	buffer.c:225: buff.buff_size = buff_size;
      000D87 90 01 66         [24] 1160 	mov	dptr,#(_create_initial_buffers_buff_65537_63 + 0x0008)
      000D8A EE               [12] 1161 	mov	a,r6
      000D8B F0               [24] 1162 	movx	@dptr,a
      000D8C EF               [12] 1163 	mov	a,r7
      000D8D A3               [24] 1164 	inc	dptr
      000D8E F0               [24] 1165 	movx	@dptr,a
                                   1166 ;	buffer.c:226: buff1.buff_size = buff_size;
      000D8F 90 01 72         [24] 1167 	mov	dptr,#(_create_initial_buffers_buff1_65537_63 + 0x0008)
      000D92 EE               [12] 1168 	mov	a,r6
      000D93 F0               [24] 1169 	movx	@dptr,a
      000D94 EF               [12] 1170 	mov	a,r7
      000D95 A3               [24] 1171 	inc	dptr
      000D96 F0               [24] 1172 	movx	@dptr,a
                                   1173 ;	buffer.c:227: buff.buffer_num = 0;
      000D97 90 01 5E         [24] 1174 	mov	dptr,#_create_initial_buffers_buff_65537_63
      000D9A E4               [12] 1175 	clr	a
      000D9B F0               [24] 1176 	movx	@dptr,a
      000D9C A3               [24] 1177 	inc	dptr
      000D9D F0               [24] 1178 	movx	@dptr,a
                                   1179 ;	buffer.c:228: buff1.buffer_num = 1;
      000D9E 90 01 6A         [24] 1180 	mov	dptr,#_create_initial_buffers_buff1_65537_63
      000DA1 04               [12] 1181 	inc	a
      000DA2 F0               [24] 1182 	movx	@dptr,a
      000DA3 E4               [12] 1183 	clr	a
      000DA4 A3               [24] 1184 	inc	dptr
      000DA5 F0               [24] 1185 	movx	@dptr,a
                                   1186 ;	buffer.c:229: buff1.buffer_end = buff1.buffer_start + buff_size;
      000DA6 90 01 6C         [24] 1187 	mov	dptr,#(_create_initial_buffers_buff1_65537_63 + 0x0002)
      000DA9 E0               [24] 1188 	movx	a,@dptr
      000DAA FB               [12] 1189 	mov	r3,a
      000DAB A3               [24] 1190 	inc	dptr
      000DAC E0               [24] 1191 	movx	a,@dptr
      000DAD FC               [12] 1192 	mov	r4,a
      000DAE A3               [24] 1193 	inc	dptr
      000DAF E0               [24] 1194 	movx	a,@dptr
      000DB0 FD               [12] 1195 	mov	r5,a
      000DB1 EE               [12] 1196 	mov	a,r6
      000DB2 2B               [12] 1197 	add	a,r3
      000DB3 FB               [12] 1198 	mov	r3,a
      000DB4 EF               [12] 1199 	mov	a,r7
      000DB5 3C               [12] 1200 	addc	a,r4
      000DB6 FC               [12] 1201 	mov	r4,a
      000DB7 90 01 6F         [24] 1202 	mov	dptr,#(_create_initial_buffers_buff1_65537_63 + 0x0005)
      000DBA EB               [12] 1203 	mov	a,r3
      000DBB F0               [24] 1204 	movx	@dptr,a
      000DBC EC               [12] 1205 	mov	a,r4
      000DBD A3               [24] 1206 	inc	dptr
      000DBE F0               [24] 1207 	movx	@dptr,a
      000DBF ED               [12] 1208 	mov	a,r5
      000DC0 A3               [24] 1209 	inc	dptr
      000DC1 F0               [24] 1210 	movx	@dptr,a
                                   1211 ;	buffer.c:230: buff.buffer_end = buff.buffer_start + buff_size;
      000DC2 90 01 60         [24] 1212 	mov	dptr,#(_create_initial_buffers_buff_65537_63 + 0x0002)
      000DC5 E0               [24] 1213 	movx	a,@dptr
      000DC6 FB               [12] 1214 	mov	r3,a
      000DC7 A3               [24] 1215 	inc	dptr
      000DC8 E0               [24] 1216 	movx	a,@dptr
      000DC9 FC               [12] 1217 	mov	r4,a
      000DCA A3               [24] 1218 	inc	dptr
      000DCB E0               [24] 1219 	movx	a,@dptr
      000DCC FD               [12] 1220 	mov	r5,a
      000DCD EE               [12] 1221 	mov	a,r6
      000DCE 2B               [12] 1222 	add	a,r3
      000DCF FE               [12] 1223 	mov	r6,a
      000DD0 EF               [12] 1224 	mov	a,r7
      000DD1 3C               [12] 1225 	addc	a,r4
      000DD2 FF               [12] 1226 	mov	r7,a
      000DD3 8D 02            [24] 1227 	mov	ar2,r5
      000DD5 90 01 63         [24] 1228 	mov	dptr,#(_create_initial_buffers_buff_65537_63 + 0x0005)
      000DD8 EE               [12] 1229 	mov	a,r6
      000DD9 F0               [24] 1230 	movx	@dptr,a
      000DDA EF               [12] 1231 	mov	a,r7
      000DDB A3               [24] 1232 	inc	dptr
      000DDC F0               [24] 1233 	movx	@dptr,a
      000DDD EA               [12] 1234 	mov	a,r2
      000DDE A3               [24] 1235 	inc	dptr
      000DDF F0               [24] 1236 	movx	@dptr,a
                                   1237 ;	buffer.c:231: buff.num_char = 0;
      000DE0 90 01 68         [24] 1238 	mov	dptr,#(_create_initial_buffers_buff_65537_63 + 0x000a)
      000DE3 E4               [12] 1239 	clr	a
      000DE4 F0               [24] 1240 	movx	@dptr,a
      000DE5 A3               [24] 1241 	inc	dptr
      000DE6 F0               [24] 1242 	movx	@dptr,a
                                   1243 ;	buffer.c:232: buff1.num_char = 0;
      000DE7 90 01 74         [24] 1244 	mov	dptr,#(_create_initial_buffers_buff1_65537_63 + 0x000a)
      000DEA F0               [24] 1245 	movx	@dptr,a
      000DEB A3               [24] 1246 	inc	dptr
      000DEC F0               [24] 1247 	movx	@dptr,a
                                   1248 ;	buffer.c:234: buffers_array[0] = buff;
      000DED 90 15 1E         [24] 1249 	mov	dptr,#___memcpy_PARM_2
      000DF0 74 5E            [12] 1250 	mov	a,#_create_initial_buffers_buff_65537_63
      000DF2 F0               [24] 1251 	movx	@dptr,a
      000DF3 74 01            [12] 1252 	mov	a,#(_create_initial_buffers_buff_65537_63 >> 8)
      000DF5 A3               [24] 1253 	inc	dptr
      000DF6 F0               [24] 1254 	movx	@dptr,a
      000DF7 E4               [12] 1255 	clr	a
      000DF8 A3               [24] 1256 	inc	dptr
      000DF9 F0               [24] 1257 	movx	@dptr,a
      000DFA 90 15 21         [24] 1258 	mov	dptr,#___memcpy_PARM_3
      000DFD 74 0C            [12] 1259 	mov	a,#0x0c
      000DFF F0               [24] 1260 	movx	@dptr,a
      000E00 E4               [12] 1261 	clr	a
      000E01 A3               [24] 1262 	inc	dptr
      000E02 F0               [24] 1263 	movx	@dptr,a
      000E03 90 00 26         [24] 1264 	mov	dptr,#_buffers_array
      000E06 75 F0 00         [24] 1265 	mov	b,#0x00
      000E09 12 1F B6         [24] 1266 	lcall	___memcpy
                                   1267 ;	buffer.c:235: buffers_array[1] = buff1;
      000E0C 90 15 1E         [24] 1268 	mov	dptr,#___memcpy_PARM_2
      000E0F 74 6A            [12] 1269 	mov	a,#_create_initial_buffers_buff1_65537_63
      000E11 F0               [24] 1270 	movx	@dptr,a
      000E12 74 01            [12] 1271 	mov	a,#(_create_initial_buffers_buff1_65537_63 >> 8)
      000E14 A3               [24] 1272 	inc	dptr
      000E15 F0               [24] 1273 	movx	@dptr,a
      000E16 E4               [12] 1274 	clr	a
      000E17 A3               [24] 1275 	inc	dptr
      000E18 F0               [24] 1276 	movx	@dptr,a
      000E19 90 15 21         [24] 1277 	mov	dptr,#___memcpy_PARM_3
      000E1C 74 0C            [12] 1278 	mov	a,#0x0c
      000E1E F0               [24] 1279 	movx	@dptr,a
      000E1F E4               [12] 1280 	clr	a
      000E20 A3               [24] 1281 	inc	dptr
      000E21 F0               [24] 1282 	movx	@dptr,a
      000E22 90 00 32         [24] 1283 	mov	dptr,#(_buffers_array + 0x000c)
      000E25 75 F0 00         [24] 1284 	mov	b,#0x00
                                   1285 ;	buffer.c:239: goto get_buff;
                                   1286 ;	buffer.c:240: }
      000E28 02 1F B6         [24] 1287 	ljmp	___memcpy
                                   1288 ;------------------------------------------------------------
                                   1289 ;Allocation info for local variables in function 'buffer_input_loop'
                                   1290 ;------------------------------------------------------------
                                   1291 ;rec                       Allocated with name '_buffer_input_loop_rec_65537_68'
                                   1292 ;------------------------------------------------------------
                                   1293 ;	buffer.c:248: void buffer_input_loop()
                                   1294 ;	-----------------------------------------
                                   1295 ;	 function buffer_input_loop
                                   1296 ;	-----------------------------------------
      000E2B                       1297 _buffer_input_loop:
                                   1298 ;	buffer.c:250: print_heap_menu();
      000E2B 12 0A 37         [24] 1299 	lcall	_print_heap_menu
                                   1300 ;	buffer.c:252: while (1)
      000E2E                       1301 00126$:
                                   1302 ;	buffer.c:254: rec = getchar();
      000E2E 12 07 88         [24] 1303 	lcall	_getchar
      000E31 AE 82            [24] 1304 	mov	r6,dpl
      000E33 AF 83            [24] 1305 	mov	r7,dph
                                   1306 ;	buffer.c:255: if (rec > 0x60 && rec < 0x7B)
      000E35 C3               [12] 1307 	clr	c
      000E36 74 60            [12] 1308 	mov	a,#0x60
      000E38 9E               [12] 1309 	subb	a,r6
      000E39 74 80            [12] 1310 	mov	a,#(0x00 ^ 0x80)
      000E3B 8F F0            [24] 1311 	mov	b,r7
      000E3D 63 F0 80         [24] 1312 	xrl	b,#0x80
      000E40 95 F0            [12] 1313 	subb	a,b
      000E42 40 03            [24] 1314 	jc	00170$
      000E44 02 0E D3         [24] 1315 	ljmp	00122$
      000E47                       1316 00170$:
      000E47 C3               [12] 1317 	clr	c
      000E48 EE               [12] 1318 	mov	a,r6
      000E49 94 7B            [12] 1319 	subb	a,#0x7b
      000E4B EF               [12] 1320 	mov	a,r7
      000E4C 64 80            [12] 1321 	xrl	a,#0x80
      000E4E 94 80            [12] 1322 	subb	a,#0x80
      000E50 40 03            [24] 1323 	jc	00171$
      000E52 02 0E D3         [24] 1324 	ljmp	00122$
      000E55                       1325 00171$:
                                   1326 ;	buffer.c:259: if (buffers_array[0].num_char < buffers_array[0].buff_size)
      000E55 90 00 30         [24] 1327 	mov	dptr,#(_buffers_array + 0x000a)
      000E58 E0               [24] 1328 	movx	a,@dptr
      000E59 FC               [12] 1329 	mov	r4,a
      000E5A A3               [24] 1330 	inc	dptr
      000E5B E0               [24] 1331 	movx	a,@dptr
      000E5C FD               [12] 1332 	mov	r5,a
      000E5D 90 00 2E         [24] 1333 	mov	dptr,#(_buffers_array + 0x0008)
      000E60 E0               [24] 1334 	movx	a,@dptr
      000E61 FA               [12] 1335 	mov	r2,a
      000E62 A3               [24] 1336 	inc	dptr
      000E63 E0               [24] 1337 	movx	a,@dptr
      000E64 FB               [12] 1338 	mov	r3,a
      000E65 C3               [12] 1339 	clr	c
      000E66 EC               [12] 1340 	mov	a,r4
      000E67 9A               [12] 1341 	subb	a,r2
      000E68 ED               [12] 1342 	mov	a,r5
      000E69 64 80            [12] 1343 	xrl	a,#0x80
      000E6B 8B F0            [24] 1344 	mov	b,r3
      000E6D 63 F0 80         [24] 1345 	xrl	b,#0x80
      000E70 95 F0            [12] 1346 	subb	a,b
      000E72 50 32            [24] 1347 	jnc	00102$
                                   1348 ;	buffer.c:261: *(buffers_array[0].buffer_start + buffers_array[0].num_char) = rec;
      000E74 90 00 28         [24] 1349 	mov	dptr,#(_buffers_array + 0x0002)
      000E77 E0               [24] 1350 	movx	a,@dptr
      000E78 F9               [12] 1351 	mov	r1,a
      000E79 A3               [24] 1352 	inc	dptr
      000E7A E0               [24] 1353 	movx	a,@dptr
      000E7B FA               [12] 1354 	mov	r2,a
      000E7C A3               [24] 1355 	inc	dptr
      000E7D E0               [24] 1356 	movx	a,@dptr
      000E7E FB               [12] 1357 	mov	r3,a
      000E7F EC               [12] 1358 	mov	a,r4
      000E80 29               [12] 1359 	add	a,r1
      000E81 F9               [12] 1360 	mov	r1,a
      000E82 ED               [12] 1361 	mov	a,r5
      000E83 3A               [12] 1362 	addc	a,r2
      000E84 FA               [12] 1363 	mov	r2,a
      000E85 8E 05            [24] 1364 	mov	ar5,r6
      000E87 89 82            [24] 1365 	mov	dpl,r1
      000E89 8A 83            [24] 1366 	mov	dph,r2
      000E8B 8B F0            [24] 1367 	mov	b,r3
      000E8D ED               [12] 1368 	mov	a,r5
      000E8E 12 20 2A         [24] 1369 	lcall	__gptrput
                                   1370 ;	buffer.c:262: buffers_array[0].num_char += 1;
      000E91 90 00 30         [24] 1371 	mov	dptr,#(_buffers_array + 0x000a)
      000E94 E0               [24] 1372 	movx	a,@dptr
      000E95 FC               [12] 1373 	mov	r4,a
      000E96 A3               [24] 1374 	inc	dptr
      000E97 E0               [24] 1375 	movx	a,@dptr
      000E98 FD               [12] 1376 	mov	r5,a
      000E99 0C               [12] 1377 	inc	r4
      000E9A BC 00 01         [24] 1378 	cjne	r4,#0x00,00173$
      000E9D 0D               [12] 1379 	inc	r5
      000E9E                       1380 00173$:
      000E9E 90 00 30         [24] 1381 	mov	dptr,#(_buffers_array + 0x000a)
      000EA1 EC               [12] 1382 	mov	a,r4
      000EA2 F0               [24] 1383 	movx	@dptr,a
      000EA3 ED               [12] 1384 	mov	a,r5
      000EA4 A3               [24] 1385 	inc	dptr
      000EA5 F0               [24] 1386 	movx	@dptr,a
      000EA6                       1387 00102$:
                                   1388 ;	buffer.c:264: program_stats.all_char_count += 1;
      000EA6 90 00 20         [24] 1389 	mov	dptr,#(_program_stats + 0x0004)
      000EA9 E0               [24] 1390 	movx	a,@dptr
      000EAA FC               [12] 1391 	mov	r4,a
      000EAB A3               [24] 1392 	inc	dptr
      000EAC E0               [24] 1393 	movx	a,@dptr
      000EAD FD               [12] 1394 	mov	r5,a
      000EAE 0C               [12] 1395 	inc	r4
      000EAF BC 00 01         [24] 1396 	cjne	r4,#0x00,00174$
      000EB2 0D               [12] 1397 	inc	r5
      000EB3                       1398 00174$:
      000EB3 90 00 20         [24] 1399 	mov	dptr,#(_program_stats + 0x0004)
      000EB6 EC               [12] 1400 	mov	a,r4
      000EB7 F0               [24] 1401 	movx	@dptr,a
      000EB8 ED               [12] 1402 	mov	a,r5
      000EB9 A3               [24] 1403 	inc	dptr
      000EBA F0               [24] 1404 	movx	@dptr,a
                                   1405 ;	buffer.c:265: program_stats.storage_char_count += 1;
      000EBB 90 00 22         [24] 1406 	mov	dptr,#(_program_stats + 0x0006)
      000EBE E0               [24] 1407 	movx	a,@dptr
      000EBF FC               [12] 1408 	mov	r4,a
      000EC0 A3               [24] 1409 	inc	dptr
      000EC1 E0               [24] 1410 	movx	a,@dptr
      000EC2 FD               [12] 1411 	mov	r5,a
      000EC3 0C               [12] 1412 	inc	r4
      000EC4 BC 00 01         [24] 1413 	cjne	r4,#0x00,00175$
      000EC7 0D               [12] 1414 	inc	r5
      000EC8                       1415 00175$:
      000EC8 90 00 22         [24] 1416 	mov	dptr,#(_program_stats + 0x0006)
      000ECB EC               [12] 1417 	mov	a,r4
      000ECC F0               [24] 1418 	movx	@dptr,a
      000ECD ED               [12] 1419 	mov	a,r5
      000ECE A3               [24] 1420 	inc	dptr
      000ECF F0               [24] 1421 	movx	@dptr,a
      000ED0 02 0E 2E         [24] 1422 	ljmp	00126$
      000ED3                       1423 00122$:
                                   1424 ;	buffer.c:267: else if (rec == 0x3F)
      000ED3 BE 3F 1F         [24] 1425 	cjne	r6,#0x3f,00119$
      000ED6 BF 00 1C         [24] 1426 	cjne	r7,#0x00,00119$
                                   1427 ;	buffer.c:270: print_heap_stats();
      000ED9 12 11 AC         [24] 1428 	lcall	_print_heap_stats
                                   1429 ;	buffer.c:271: print_all_buffers();
      000EDC 12 12 67         [24] 1430 	lcall	_print_all_buffers
                                   1431 ;	buffer.c:272: dump_buff_zero_ascii();
      000EDF 12 0F 55         [24] 1432 	lcall	_dump_buff_zero_ascii
                                   1433 ;	buffer.c:273: program_stats.all_char_count = 0;
      000EE2 90 00 20         [24] 1434 	mov	dptr,#(_program_stats + 0x0004)
      000EE5 E4               [12] 1435 	clr	a
      000EE6 F0               [24] 1436 	movx	@dptr,a
      000EE7 A3               [24] 1437 	inc	dptr
      000EE8 F0               [24] 1438 	movx	@dptr,a
                                   1439 ;	buffer.c:274: program_stats.storage_char_count = 0;
      000EE9 90 00 22         [24] 1440 	mov	dptr,#(_program_stats + 0x0006)
      000EEC F0               [24] 1441 	movx	@dptr,a
      000EED A3               [24] 1442 	inc	dptr
      000EEE F0               [24] 1443 	movx	@dptr,a
                                   1444 ;	buffer.c:275: print_heap_menu();
      000EEF 12 0A 37         [24] 1445 	lcall	_print_heap_menu
      000EF2 02 0E 2E         [24] 1446 	ljmp	00126$
      000EF5                       1447 00119$:
                                   1448 ;	buffer.c:277: else if (rec == 0x3D)
      000EF5 BE 3D 0C         [24] 1449 	cjne	r6,#0x3d,00116$
      000EF8 BF 00 09         [24] 1450 	cjne	r7,#0x00,00116$
                                   1451 ;	buffer.c:280: dump_buff_zero_hex();
      000EFB 12 10 65         [24] 1452 	lcall	_dump_buff_zero_hex
                                   1453 ;	buffer.c:281: print_heap_menu();
      000EFE 12 0A 37         [24] 1454 	lcall	_print_heap_menu
      000F01 02 0E 2E         [24] 1455 	ljmp	00126$
      000F04                       1456 00116$:
                                   1457 ;	buffer.c:283: else if (rec == 0x40)
      000F04 BE 40 0C         [24] 1458 	cjne	r6,#0x40,00113$
      000F07 BF 00 09         [24] 1459 	cjne	r7,#0x00,00113$
                                   1460 ;	buffer.c:286: at_clear_all_buffers();
      000F0A 12 07 CD         [24] 1461 	lcall	_at_clear_all_buffers
                                   1462 ;	buffer.c:287: print_heap_menu();
      000F0D 12 0A 37         [24] 1463 	lcall	_print_heap_menu
      000F10 02 0E 2E         [24] 1464 	ljmp	00126$
      000F13                       1465 00113$:
                                   1466 ;	buffer.c:289: else if (rec == 0x2B)
      000F13 BE 2B 0C         [24] 1467 	cjne	r6,#0x2b,00110$
      000F16 BF 00 09         [24] 1468 	cjne	r7,#0x00,00110$
                                   1469 ;	buffer.c:292: create_new_buffer();
      000F19 12 0A E0         [24] 1470 	lcall	_create_new_buffer
                                   1471 ;	buffer.c:293: print_heap_menu();
      000F1C 12 0A 37         [24] 1472 	lcall	_print_heap_menu
      000F1F 02 0E 2E         [24] 1473 	ljmp	00126$
      000F22                       1474 00110$:
                                   1475 ;	buffer.c:295: else if (rec == 0x2D)
      000F22 BE 2D 0C         [24] 1476 	cjne	r6,#0x2d,00107$
      000F25 BF 00 09         [24] 1477 	cjne	r7,#0x00,00107$
                                   1478 ;	buffer.c:298: delete_buffer();
      000F28 12 08 61         [24] 1479 	lcall	_delete_buffer
                                   1480 ;	buffer.c:299: print_heap_menu();
      000F2B 12 0A 37         [24] 1481 	lcall	_print_heap_menu
      000F2E 02 0E 2E         [24] 1482 	ljmp	00126$
      000F31                       1483 00107$:
                                   1484 ;	buffer.c:301: else if (rec == 0x4D)
      000F31 BE 4D 09         [24] 1485 	cjne	r6,#0x4d,00104$
      000F34 BF 00 06         [24] 1486 	cjne	r7,#0x00,00104$
                                   1487 ;	buffer.c:303: main_menu();
      000F37 12 00 B5         [24] 1488 	lcall	_main_menu
      000F3A 02 0E 2E         [24] 1489 	ljmp	00126$
      000F3D                       1490 00104$:
                                   1491 ;	buffer.c:307: program_stats.all_char_count += 1;
      000F3D 90 00 20         [24] 1492 	mov	dptr,#(_program_stats + 0x0004)
      000F40 E0               [24] 1493 	movx	a,@dptr
      000F41 FE               [12] 1494 	mov	r6,a
      000F42 A3               [24] 1495 	inc	dptr
      000F43 E0               [24] 1496 	movx	a,@dptr
      000F44 FF               [12] 1497 	mov	r7,a
      000F45 0E               [12] 1498 	inc	r6
      000F46 BE 00 01         [24] 1499 	cjne	r6,#0x00,00188$
      000F49 0F               [12] 1500 	inc	r7
      000F4A                       1501 00188$:
      000F4A 90 00 20         [24] 1502 	mov	dptr,#(_program_stats + 0x0004)
      000F4D EE               [12] 1503 	mov	a,r6
      000F4E F0               [24] 1504 	movx	@dptr,a
      000F4F EF               [12] 1505 	mov	a,r7
      000F50 A3               [24] 1506 	inc	dptr
      000F51 F0               [24] 1507 	movx	@dptr,a
                                   1508 ;	buffer.c:310: }
      000F52 02 0E 2E         [24] 1509 	ljmp	00126$
                                   1510 ;------------------------------------------------------------
                                   1511 ;Allocation info for local variables in function 'dump_buff_zero_ascii'
                                   1512 ;------------------------------------------------------------
                                   1513 ;j                         Allocated with name '_dump_buff_zero_ascii_j_65536_79'
                                   1514 ;i                         Allocated with name '_dump_buff_zero_ascii_i_196608_81'
                                   1515 ;------------------------------------------------------------
                                   1516 ;	buffer.c:318: void dump_buff_zero_ascii()
                                   1517 ;	-----------------------------------------
                                   1518 ;	 function dump_buff_zero_ascii
                                   1519 ;	-----------------------------------------
      000F55                       1520 _dump_buff_zero_ascii:
                                   1521 ;	buffer.c:320: int j = 64;
      000F55 90 01 76         [24] 1522 	mov	dptr,#_dump_buff_zero_ascii_j_65536_79
      000F58 74 40            [12] 1523 	mov	a,#0x40
      000F5A F0               [24] 1524 	movx	@dptr,a
      000F5B E4               [12] 1525 	clr	a
      000F5C A3               [24] 1526 	inc	dptr
      000F5D F0               [24] 1527 	movx	@dptr,a
                                   1528 ;	buffer.c:321: if (buffers_array[0].num_char > 0)
      000F5E 90 00 30         [24] 1529 	mov	dptr,#(_buffers_array + 0x000a)
      000F61 E0               [24] 1530 	movx	a,@dptr
      000F62 FE               [12] 1531 	mov	r6,a
      000F63 A3               [24] 1532 	inc	dptr
      000F64 E0               [24] 1533 	movx	a,@dptr
      000F65 FF               [12] 1534 	mov	r7,a
      000F66 C3               [12] 1535 	clr	c
      000F67 E4               [12] 1536 	clr	a
      000F68 9E               [12] 1537 	subb	a,r6
      000F69 74 80            [12] 1538 	mov	a,#(0x00 ^ 0x80)
      000F6B 8F F0            [24] 1539 	mov	b,r7
      000F6D 63 F0 80         [24] 1540 	xrl	b,#0x80
      000F70 95 F0            [12] 1541 	subb	a,b
      000F72 40 03            [24] 1542 	jc	00135$
      000F74 02 10 4F         [24] 1543 	ljmp	00107$
      000F77                       1544 00135$:
                                   1545 ;	buffer.c:323: printf("\n\n\r***********Buffer-0-Contents*********** \n\r");
      000F77 74 16            [12] 1546 	mov	a,#___str_19
      000F79 C0 E0            [24] 1547 	push	acc
      000F7B 74 31            [12] 1548 	mov	a,#(___str_19 >> 8)
      000F7D C0 E0            [24] 1549 	push	acc
      000F7F 74 80            [12] 1550 	mov	a,#0x80
      000F81 C0 E0            [24] 1551 	push	acc
      000F83 12 22 58         [24] 1552 	lcall	_printf
      000F86 15 81            [12] 1553 	dec	sp
      000F88 15 81            [12] 1554 	dec	sp
      000F8A 15 81            [12] 1555 	dec	sp
                                   1556 ;	buffer.c:324: for (int i = 0; i < buffers_array[0].num_char; i++)
      000F8C 7E 00            [12] 1557 	mov	r6,#0x00
      000F8E 7F 00            [12] 1558 	mov	r7,#0x00
      000F90                       1559 00110$:
      000F90 90 00 30         [24] 1560 	mov	dptr,#(_buffers_array + 0x000a)
      000F93 E0               [24] 1561 	movx	a,@dptr
      000F94 FC               [12] 1562 	mov	r4,a
      000F95 A3               [24] 1563 	inc	dptr
      000F96 E0               [24] 1564 	movx	a,@dptr
      000F97 FD               [12] 1565 	mov	r5,a
      000F98 C3               [12] 1566 	clr	c
      000F99 EE               [12] 1567 	mov	a,r6
      000F9A 9C               [12] 1568 	subb	a,r4
      000F9B EF               [12] 1569 	mov	a,r7
      000F9C 64 80            [12] 1570 	xrl	a,#0x80
      000F9E 8D F0            [24] 1571 	mov	b,r5
      000FA0 63 F0 80         [24] 1572 	xrl	b,#0x80
      000FA3 95 F0            [12] 1573 	subb	a,b
      000FA5 40 03            [24] 1574 	jc	00136$
      000FA7 02 10 32         [24] 1575 	ljmp	00105$
      000FAA                       1576 00136$:
                                   1577 ;	buffer.c:326: if (j == 64)
      000FAA 90 01 76         [24] 1578 	mov	dptr,#_dump_buff_zero_ascii_j_65536_79
      000FAD E0               [24] 1579 	movx	a,@dptr
      000FAE FC               [12] 1580 	mov	r4,a
      000FAF A3               [24] 1581 	inc	dptr
      000FB0 E0               [24] 1582 	movx	a,@dptr
      000FB1 FD               [12] 1583 	mov	r5,a
      000FB2 BC 40 20         [24] 1584 	cjne	r4,#0x40,00102$
      000FB5 BD 00 1D         [24] 1585 	cjne	r5,#0x00,00102$
                                   1586 ;	buffer.c:328: printf("\n\r");
      000FB8 C0 07            [24] 1587 	push	ar7
      000FBA C0 06            [24] 1588 	push	ar6
      000FBC 74 44            [12] 1589 	mov	a,#___str_20
      000FBE C0 E0            [24] 1590 	push	acc
      000FC0 74 31            [12] 1591 	mov	a,#(___str_20 >> 8)
      000FC2 C0 E0            [24] 1592 	push	acc
      000FC4 74 80            [12] 1593 	mov	a,#0x80
      000FC6 C0 E0            [24] 1594 	push	acc
      000FC8 12 22 58         [24] 1595 	lcall	_printf
      000FCB 15 81            [12] 1596 	dec	sp
      000FCD 15 81            [12] 1597 	dec	sp
      000FCF 15 81            [12] 1598 	dec	sp
      000FD1 D0 06            [24] 1599 	pop	ar6
      000FD3 D0 07            [24] 1600 	pop	ar7
      000FD5                       1601 00102$:
                                   1602 ;	buffer.c:330: putchar(*(buffers_array[0].buffer_start + i));
      000FD5 90 00 28         [24] 1603 	mov	dptr,#(_buffers_array + 0x0002)
      000FD8 E0               [24] 1604 	movx	a,@dptr
      000FD9 FB               [12] 1605 	mov	r3,a
      000FDA A3               [24] 1606 	inc	dptr
      000FDB E0               [24] 1607 	movx	a,@dptr
      000FDC FC               [12] 1608 	mov	r4,a
      000FDD A3               [24] 1609 	inc	dptr
      000FDE E0               [24] 1610 	movx	a,@dptr
      000FDF FD               [12] 1611 	mov	r5,a
      000FE0 EE               [12] 1612 	mov	a,r6
      000FE1 2B               [12] 1613 	add	a,r3
      000FE2 FB               [12] 1614 	mov	r3,a
      000FE3 EF               [12] 1615 	mov	a,r7
      000FE4 3C               [12] 1616 	addc	a,r4
      000FE5 FC               [12] 1617 	mov	r4,a
      000FE6 8B 82            [24] 1618 	mov	dpl,r3
      000FE8 8C 83            [24] 1619 	mov	dph,r4
      000FEA 8D F0            [24] 1620 	mov	b,r5
      000FEC 12 2C 77         [24] 1621 	lcall	__gptrget
      000FEF FB               [12] 1622 	mov	r3,a
      000FF0 7D 00            [12] 1623 	mov	r5,#0x00
      000FF2 8B 82            [24] 1624 	mov	dpl,r3
      000FF4 8D 83            [24] 1625 	mov	dph,r5
      000FF6 C0 07            [24] 1626 	push	ar7
      000FF8 C0 06            [24] 1627 	push	ar6
      000FFA 12 07 69         [24] 1628 	lcall	_putchar
      000FFD D0 06            [24] 1629 	pop	ar6
      000FFF D0 07            [24] 1630 	pop	ar7
                                   1631 ;	buffer.c:331: j--;
      001001 90 01 76         [24] 1632 	mov	dptr,#_dump_buff_zero_ascii_j_65536_79
      001004 E0               [24] 1633 	movx	a,@dptr
      001005 24 FF            [12] 1634 	add	a,#0xff
      001007 FC               [12] 1635 	mov	r4,a
      001008 A3               [24] 1636 	inc	dptr
      001009 E0               [24] 1637 	movx	a,@dptr
      00100A 34 FF            [12] 1638 	addc	a,#0xff
      00100C FD               [12] 1639 	mov	r5,a
      00100D 90 01 76         [24] 1640 	mov	dptr,#_dump_buff_zero_ascii_j_65536_79
      001010 EC               [12] 1641 	mov	a,r4
      001011 F0               [24] 1642 	movx	@dptr,a
      001012 ED               [12] 1643 	mov	a,r5
      001013 A3               [24] 1644 	inc	dptr
      001014 F0               [24] 1645 	movx	@dptr,a
                                   1646 ;	buffer.c:332: if (j == 0)
      001015 90 01 76         [24] 1647 	mov	dptr,#_dump_buff_zero_ascii_j_65536_79
      001018 E0               [24] 1648 	movx	a,@dptr
      001019 F5 F0            [12] 1649 	mov	b,a
      00101B A3               [24] 1650 	inc	dptr
      00101C E0               [24] 1651 	movx	a,@dptr
      00101D 45 F0            [12] 1652 	orl	a,b
      00101F 70 09            [24] 1653 	jnz	00111$
                                   1654 ;	buffer.c:333: j = 64;
      001021 90 01 76         [24] 1655 	mov	dptr,#_dump_buff_zero_ascii_j_65536_79
      001024 74 40            [12] 1656 	mov	a,#0x40
      001026 F0               [24] 1657 	movx	@dptr,a
      001027 E4               [12] 1658 	clr	a
      001028 A3               [24] 1659 	inc	dptr
      001029 F0               [24] 1660 	movx	@dptr,a
      00102A                       1661 00111$:
                                   1662 ;	buffer.c:324: for (int i = 0; i < buffers_array[0].num_char; i++)
      00102A 0E               [12] 1663 	inc	r6
      00102B BE 00 01         [24] 1664 	cjne	r6,#0x00,00140$
      00102E 0F               [12] 1665 	inc	r7
      00102F                       1666 00140$:
      00102F 02 0F 90         [24] 1667 	ljmp	00110$
      001032                       1668 00105$:
                                   1669 ;	buffer.c:335: buffers_array[0].num_char = 0;
      001032 90 00 30         [24] 1670 	mov	dptr,#(_buffers_array + 0x000a)
      001035 E4               [12] 1671 	clr	a
      001036 F0               [24] 1672 	movx	@dptr,a
      001037 A3               [24] 1673 	inc	dptr
      001038 F0               [24] 1674 	movx	@dptr,a
                                   1675 ;	buffer.c:336: printf("\n\n\r");
      001039 74 47            [12] 1676 	mov	a,#___str_21
      00103B C0 E0            [24] 1677 	push	acc
      00103D 74 31            [12] 1678 	mov	a,#(___str_21 >> 8)
      00103F C0 E0            [24] 1679 	push	acc
      001041 74 80            [12] 1680 	mov	a,#0x80
      001043 C0 E0            [24] 1681 	push	acc
      001045 12 22 58         [24] 1682 	lcall	_printf
      001048 15 81            [12] 1683 	dec	sp
      00104A 15 81            [12] 1684 	dec	sp
      00104C 15 81            [12] 1685 	dec	sp
      00104E 22               [24] 1686 	ret
      00104F                       1687 00107$:
                                   1688 ;	buffer.c:340: printf("Buffer0 is Empty....\n\r");
      00104F 74 4B            [12] 1689 	mov	a,#___str_22
      001051 C0 E0            [24] 1690 	push	acc
      001053 74 31            [12] 1691 	mov	a,#(___str_22 >> 8)
      001055 C0 E0            [24] 1692 	push	acc
      001057 74 80            [12] 1693 	mov	a,#0x80
      001059 C0 E0            [24] 1694 	push	acc
      00105B 12 22 58         [24] 1695 	lcall	_printf
      00105E 15 81            [12] 1696 	dec	sp
      001060 15 81            [12] 1697 	dec	sp
      001062 15 81            [12] 1698 	dec	sp
                                   1699 ;	buffer.c:342: }
      001064 22               [24] 1700 	ret
                                   1701 ;------------------------------------------------------------
                                   1702 ;Allocation info for local variables in function 'dump_buff_zero_hex'
                                   1703 ;------------------------------------------------------------
                                   1704 ;j                         Allocated with name '_dump_buff_zero_hex_j_131073_87'
                                   1705 ;i                         Allocated with name '_dump_buff_zero_hex_i_196609_88'
                                   1706 ;------------------------------------------------------------
                                   1707 ;	buffer.c:349: void dump_buff_zero_hex()
                                   1708 ;	-----------------------------------------
                                   1709 ;	 function dump_buff_zero_hex
                                   1710 ;	-----------------------------------------
      001065                       1711 _dump_buff_zero_hex:
                                   1712 ;	buffer.c:351: if (buffers_array[0].num_char > 0)
      001065 90 00 30         [24] 1713 	mov	dptr,#(_buffers_array + 0x000a)
      001068 E0               [24] 1714 	movx	a,@dptr
      001069 FE               [12] 1715 	mov	r6,a
      00106A A3               [24] 1716 	inc	dptr
      00106B E0               [24] 1717 	movx	a,@dptr
      00106C FF               [12] 1718 	mov	r7,a
      00106D C3               [12] 1719 	clr	c
      00106E E4               [12] 1720 	clr	a
      00106F 9E               [12] 1721 	subb	a,r6
      001070 74 80            [12] 1722 	mov	a,#(0x00 ^ 0x80)
      001072 8F F0            [24] 1723 	mov	b,r7
      001074 63 F0 80         [24] 1724 	xrl	b,#0x80
      001077 95 F0            [12] 1725 	subb	a,b
      001079 40 03            [24] 1726 	jc	00135$
      00107B 02 11 96         [24] 1727 	ljmp	00107$
      00107E                       1728 00135$:
                                   1729 ;	buffer.c:353: printf("\n\r-------------------------HEXDUMP--------------------------------");
      00107E 74 62            [12] 1730 	mov	a,#___str_23
      001080 C0 E0            [24] 1731 	push	acc
      001082 74 31            [12] 1732 	mov	a,#(___str_23 >> 8)
      001084 C0 E0            [24] 1733 	push	acc
      001086 74 80            [12] 1734 	mov	a,#0x80
      001088 C0 E0            [24] 1735 	push	acc
      00108A 12 22 58         [24] 1736 	lcall	_printf
      00108D 15 81            [12] 1737 	dec	sp
      00108F 15 81            [12] 1738 	dec	sp
      001091 15 81            [12] 1739 	dec	sp
                                   1740 ;	buffer.c:354: printf("\n\r    ADDR: +0 +1 +2 +3 +4 +5 +6 +7 +8 +9 +A +B +C +D +E +F \n\r");
      001093 74 A5            [12] 1741 	mov	a,#___str_24
      001095 C0 E0            [24] 1742 	push	acc
      001097 74 31            [12] 1743 	mov	a,#(___str_24 >> 8)
      001099 C0 E0            [24] 1744 	push	acc
      00109B 74 80            [12] 1745 	mov	a,#0x80
      00109D C0 E0            [24] 1746 	push	acc
      00109F 12 22 58         [24] 1747 	lcall	_printf
      0010A2 15 81            [12] 1748 	dec	sp
      0010A4 15 81            [12] 1749 	dec	sp
      0010A6 15 81            [12] 1750 	dec	sp
                                   1751 ;	buffer.c:355: int j = 16;
      0010A8 90 01 78         [24] 1752 	mov	dptr,#_dump_buff_zero_hex_j_131073_87
      0010AB 74 10            [12] 1753 	mov	a,#0x10
      0010AD F0               [24] 1754 	movx	@dptr,a
      0010AE E4               [12] 1755 	clr	a
      0010AF A3               [24] 1756 	inc	dptr
      0010B0 F0               [24] 1757 	movx	@dptr,a
                                   1758 ;	buffer.c:357: for (int i = 0; i < buffers_array[0].num_char; i++)
      0010B1 7E 00            [12] 1759 	mov	r6,#0x00
      0010B3 7F 00            [12] 1760 	mov	r7,#0x00
      0010B5                       1761 00110$:
      0010B5 90 00 30         [24] 1762 	mov	dptr,#(_buffers_array + 0x000a)
      0010B8 E0               [24] 1763 	movx	a,@dptr
      0010B9 FC               [12] 1764 	mov	r4,a
      0010BA A3               [24] 1765 	inc	dptr
      0010BB E0               [24] 1766 	movx	a,@dptr
      0010BC FD               [12] 1767 	mov	r5,a
      0010BD C3               [12] 1768 	clr	c
      0010BE EE               [12] 1769 	mov	a,r6
      0010BF 9C               [12] 1770 	subb	a,r4
      0010C0 EF               [12] 1771 	mov	a,r7
      0010C1 64 80            [12] 1772 	xrl	a,#0x80
      0010C3 8D F0            [24] 1773 	mov	b,r5
      0010C5 63 F0 80         [24] 1774 	xrl	b,#0x80
      0010C8 95 F0            [12] 1775 	subb	a,b
      0010CA 40 03            [24] 1776 	jc	00136$
      0010CC 02 11 80         [24] 1777 	ljmp	00105$
      0010CF                       1778 00136$:
                                   1779 ;	buffer.c:359: if (j == 16)
      0010CF 90 01 78         [24] 1780 	mov	dptr,#_dump_buff_zero_hex_j_131073_87
      0010D2 E0               [24] 1781 	movx	a,@dptr
      0010D3 FC               [12] 1782 	mov	r4,a
      0010D4 A3               [24] 1783 	inc	dptr
      0010D5 E0               [24] 1784 	movx	a,@dptr
      0010D6 FD               [12] 1785 	mov	r5,a
      0010D7 BC 10 37         [24] 1786 	cjne	r4,#0x10,00102$
      0010DA BD 00 34         [24] 1787 	cjne	r5,#0x00,00102$
                                   1788 ;	buffer.c:361: printf("\n\r%p: ", (buffers_array[0].buffer_start + i));
      0010DD 90 00 28         [24] 1789 	mov	dptr,#(_buffers_array + 0x0002)
      0010E0 E0               [24] 1790 	movx	a,@dptr
      0010E1 FB               [12] 1791 	mov	r3,a
      0010E2 A3               [24] 1792 	inc	dptr
      0010E3 E0               [24] 1793 	movx	a,@dptr
      0010E4 FC               [12] 1794 	mov	r4,a
      0010E5 A3               [24] 1795 	inc	dptr
      0010E6 E0               [24] 1796 	movx	a,@dptr
      0010E7 FD               [12] 1797 	mov	r5,a
      0010E8 EE               [12] 1798 	mov	a,r6
      0010E9 2B               [12] 1799 	add	a,r3
      0010EA FB               [12] 1800 	mov	r3,a
      0010EB EF               [12] 1801 	mov	a,r7
      0010EC 3C               [12] 1802 	addc	a,r4
      0010ED FC               [12] 1803 	mov	r4,a
      0010EE C0 07            [24] 1804 	push	ar7
      0010F0 C0 06            [24] 1805 	push	ar6
      0010F2 C0 03            [24] 1806 	push	ar3
      0010F4 C0 04            [24] 1807 	push	ar4
      0010F6 C0 05            [24] 1808 	push	ar5
      0010F8 74 E4            [12] 1809 	mov	a,#___str_25
      0010FA C0 E0            [24] 1810 	push	acc
      0010FC 74 31            [12] 1811 	mov	a,#(___str_25 >> 8)
      0010FE C0 E0            [24] 1812 	push	acc
      001100 74 80            [12] 1813 	mov	a,#0x80
      001102 C0 E0            [24] 1814 	push	acc
      001104 12 22 58         [24] 1815 	lcall	_printf
      001107 E5 81            [12] 1816 	mov	a,sp
      001109 24 FA            [12] 1817 	add	a,#0xfa
      00110B F5 81            [12] 1818 	mov	sp,a
      00110D D0 06            [24] 1819 	pop	ar6
      00110F D0 07            [24] 1820 	pop	ar7
      001111                       1821 00102$:
                                   1822 ;	buffer.c:363: printf("%x ", *(buffers_array[0].buffer_start + i));
      001111 90 00 28         [24] 1823 	mov	dptr,#(_buffers_array + 0x0002)
      001114 E0               [24] 1824 	movx	a,@dptr
      001115 FB               [12] 1825 	mov	r3,a
      001116 A3               [24] 1826 	inc	dptr
      001117 E0               [24] 1827 	movx	a,@dptr
      001118 FC               [12] 1828 	mov	r4,a
      001119 A3               [24] 1829 	inc	dptr
      00111A E0               [24] 1830 	movx	a,@dptr
      00111B FD               [12] 1831 	mov	r5,a
      00111C EE               [12] 1832 	mov	a,r6
      00111D 2B               [12] 1833 	add	a,r3
      00111E FB               [12] 1834 	mov	r3,a
      00111F EF               [12] 1835 	mov	a,r7
      001120 3C               [12] 1836 	addc	a,r4
      001121 FC               [12] 1837 	mov	r4,a
      001122 8B 82            [24] 1838 	mov	dpl,r3
      001124 8C 83            [24] 1839 	mov	dph,r4
      001126 8D F0            [24] 1840 	mov	b,r5
      001128 12 2C 77         [24] 1841 	lcall	__gptrget
      00112B FB               [12] 1842 	mov	r3,a
      00112C 7D 00            [12] 1843 	mov	r5,#0x00
      00112E C0 07            [24] 1844 	push	ar7
      001130 C0 06            [24] 1845 	push	ar6
      001132 C0 03            [24] 1846 	push	ar3
      001134 C0 05            [24] 1847 	push	ar5
      001136 74 EB            [12] 1848 	mov	a,#___str_26
      001138 C0 E0            [24] 1849 	push	acc
      00113A 74 31            [12] 1850 	mov	a,#(___str_26 >> 8)
      00113C C0 E0            [24] 1851 	push	acc
      00113E 74 80            [12] 1852 	mov	a,#0x80
      001140 C0 E0            [24] 1853 	push	acc
      001142 12 22 58         [24] 1854 	lcall	_printf
      001145 E5 81            [12] 1855 	mov	a,sp
      001147 24 FB            [12] 1856 	add	a,#0xfb
      001149 F5 81            [12] 1857 	mov	sp,a
      00114B D0 06            [24] 1858 	pop	ar6
      00114D D0 07            [24] 1859 	pop	ar7
                                   1860 ;	buffer.c:364: j--;
      00114F 90 01 78         [24] 1861 	mov	dptr,#_dump_buff_zero_hex_j_131073_87
      001152 E0               [24] 1862 	movx	a,@dptr
      001153 24 FF            [12] 1863 	add	a,#0xff
      001155 FC               [12] 1864 	mov	r4,a
      001156 A3               [24] 1865 	inc	dptr
      001157 E0               [24] 1866 	movx	a,@dptr
      001158 34 FF            [12] 1867 	addc	a,#0xff
      00115A FD               [12] 1868 	mov	r5,a
      00115B 90 01 78         [24] 1869 	mov	dptr,#_dump_buff_zero_hex_j_131073_87
      00115E EC               [12] 1870 	mov	a,r4
      00115F F0               [24] 1871 	movx	@dptr,a
      001160 ED               [12] 1872 	mov	a,r5
      001161 A3               [24] 1873 	inc	dptr
      001162 F0               [24] 1874 	movx	@dptr,a
                                   1875 ;	buffer.c:365: if (j == 0)
      001163 90 01 78         [24] 1876 	mov	dptr,#_dump_buff_zero_hex_j_131073_87
      001166 E0               [24] 1877 	movx	a,@dptr
      001167 F5 F0            [12] 1878 	mov	b,a
      001169 A3               [24] 1879 	inc	dptr
      00116A E0               [24] 1880 	movx	a,@dptr
      00116B 45 F0            [12] 1881 	orl	a,b
      00116D 70 09            [24] 1882 	jnz	00111$
                                   1883 ;	buffer.c:366: j = 16;
      00116F 90 01 78         [24] 1884 	mov	dptr,#_dump_buff_zero_hex_j_131073_87
      001172 74 10            [12] 1885 	mov	a,#0x10
      001174 F0               [24] 1886 	movx	@dptr,a
      001175 E4               [12] 1887 	clr	a
      001176 A3               [24] 1888 	inc	dptr
      001177 F0               [24] 1889 	movx	@dptr,a
      001178                       1890 00111$:
                                   1891 ;	buffer.c:357: for (int i = 0; i < buffers_array[0].num_char; i++)
      001178 0E               [12] 1892 	inc	r6
      001179 BE 00 01         [24] 1893 	cjne	r6,#0x00,00140$
      00117C 0F               [12] 1894 	inc	r7
      00117D                       1895 00140$:
      00117D 02 10 B5         [24] 1896 	ljmp	00110$
      001180                       1897 00105$:
                                   1898 ;	buffer.c:368: printf("\n\n\r");
      001180 74 47            [12] 1899 	mov	a,#___str_21
      001182 C0 E0            [24] 1900 	push	acc
      001184 74 31            [12] 1901 	mov	a,#(___str_21 >> 8)
      001186 C0 E0            [24] 1902 	push	acc
      001188 74 80            [12] 1903 	mov	a,#0x80
      00118A C0 E0            [24] 1904 	push	acc
      00118C 12 22 58         [24] 1905 	lcall	_printf
      00118F 15 81            [12] 1906 	dec	sp
      001191 15 81            [12] 1907 	dec	sp
      001193 15 81            [12] 1908 	dec	sp
      001195 22               [24] 1909 	ret
      001196                       1910 00107$:
                                   1911 ;	buffer.c:372: printf("Buffer is empty...\n\r");
      001196 74 EF            [12] 1912 	mov	a,#___str_27
      001198 C0 E0            [24] 1913 	push	acc
      00119A 74 31            [12] 1914 	mov	a,#(___str_27 >> 8)
      00119C C0 E0            [24] 1915 	push	acc
      00119E 74 80            [12] 1916 	mov	a,#0x80
      0011A0 C0 E0            [24] 1917 	push	acc
      0011A2 12 22 58         [24] 1918 	lcall	_printf
      0011A5 15 81            [12] 1919 	dec	sp
      0011A7 15 81            [12] 1920 	dec	sp
      0011A9 15 81            [12] 1921 	dec	sp
                                   1922 ;	buffer.c:374: }
      0011AB 22               [24] 1923 	ret
                                   1924 ;------------------------------------------------------------
                                   1925 ;Allocation info for local variables in function 'print_heap_stats'
                                   1926 ;------------------------------------------------------------
                                   1927 ;	buffer.c:381: void print_heap_stats()
                                   1928 ;	-----------------------------------------
                                   1929 ;	 function print_heap_stats
                                   1930 ;	-----------------------------------------
      0011AC                       1931 _print_heap_stats:
                                   1932 ;	buffer.c:383: printf("\n\r****************HEAP*STATS*************\n\r");
      0011AC 74 04            [12] 1933 	mov	a,#___str_28
      0011AE C0 E0            [24] 1934 	push	acc
      0011B0 74 32            [12] 1935 	mov	a,#(___str_28 >> 8)
      0011B2 C0 E0            [24] 1936 	push	acc
      0011B4 74 80            [12] 1937 	mov	a,#0x80
      0011B6 C0 E0            [24] 1938 	push	acc
      0011B8 12 22 58         [24] 1939 	lcall	_printf
      0011BB 15 81            [12] 1940 	dec	sp
      0011BD 15 81            [12] 1941 	dec	sp
      0011BF 15 81            [12] 1942 	dec	sp
                                   1943 ;	buffer.c:384: printf("Total Heap Size: %d \n\r", program_stats.total_heap_size);
      0011C1 90 00 1C         [24] 1944 	mov	dptr,#_program_stats
      0011C4 E0               [24] 1945 	movx	a,@dptr
      0011C5 FE               [12] 1946 	mov	r6,a
      0011C6 A3               [24] 1947 	inc	dptr
      0011C7 E0               [24] 1948 	movx	a,@dptr
      0011C8 FF               [12] 1949 	mov	r7,a
      0011C9 C0 06            [24] 1950 	push	ar6
      0011CB C0 07            [24] 1951 	push	ar7
      0011CD 74 30            [12] 1952 	mov	a,#___str_29
      0011CF C0 E0            [24] 1953 	push	acc
      0011D1 74 32            [12] 1954 	mov	a,#(___str_29 >> 8)
      0011D3 C0 E0            [24] 1955 	push	acc
      0011D5 74 80            [12] 1956 	mov	a,#0x80
      0011D7 C0 E0            [24] 1957 	push	acc
      0011D9 12 22 58         [24] 1958 	lcall	_printf
      0011DC E5 81            [12] 1959 	mov	a,sp
      0011DE 24 FB            [12] 1960 	add	a,#0xfb
      0011E0 F5 81            [12] 1961 	mov	sp,a
                                   1962 ;	buffer.c:385: printf("Allocated Heap Size: %d \n\r", program_stats.allocated_heap);
      0011E2 90 00 1E         [24] 1963 	mov	dptr,#(_program_stats + 0x0002)
      0011E5 E0               [24] 1964 	movx	a,@dptr
      0011E6 FE               [12] 1965 	mov	r6,a
      0011E7 A3               [24] 1966 	inc	dptr
      0011E8 E0               [24] 1967 	movx	a,@dptr
      0011E9 FF               [12] 1968 	mov	r7,a
      0011EA C0 06            [24] 1969 	push	ar6
      0011EC C0 07            [24] 1970 	push	ar7
      0011EE 74 47            [12] 1971 	mov	a,#___str_30
      0011F0 C0 E0            [24] 1972 	push	acc
      0011F2 74 32            [12] 1973 	mov	a,#(___str_30 >> 8)
      0011F4 C0 E0            [24] 1974 	push	acc
      0011F6 74 80            [12] 1975 	mov	a,#0x80
      0011F8 C0 E0            [24] 1976 	push	acc
      0011FA 12 22 58         [24] 1977 	lcall	_printf
      0011FD E5 81            [12] 1978 	mov	a,sp
      0011FF 24 FB            [12] 1979 	add	a,#0xfb
      001201 F5 81            [12] 1980 	mov	sp,a
                                   1981 ;	buffer.c:386: printf("All Chars: %d \n\r", program_stats.all_char_count);
      001203 90 00 20         [24] 1982 	mov	dptr,#(_program_stats + 0x0004)
      001206 E0               [24] 1983 	movx	a,@dptr
      001207 FE               [12] 1984 	mov	r6,a
      001208 A3               [24] 1985 	inc	dptr
      001209 E0               [24] 1986 	movx	a,@dptr
      00120A FF               [12] 1987 	mov	r7,a
      00120B C0 06            [24] 1988 	push	ar6
      00120D C0 07            [24] 1989 	push	ar7
      00120F 74 62            [12] 1990 	mov	a,#___str_31
      001211 C0 E0            [24] 1991 	push	acc
      001213 74 32            [12] 1992 	mov	a,#(___str_31 >> 8)
      001215 C0 E0            [24] 1993 	push	acc
      001217 74 80            [12] 1994 	mov	a,#0x80
      001219 C0 E0            [24] 1995 	push	acc
      00121B 12 22 58         [24] 1996 	lcall	_printf
      00121E E5 81            [12] 1997 	mov	a,sp
      001220 24 FB            [12] 1998 	add	a,#0xfb
      001222 F5 81            [12] 1999 	mov	sp,a
                                   2000 ;	buffer.c:387: printf("Storage Chars: %d \n\r", program_stats.storage_char_count);
      001224 90 00 22         [24] 2001 	mov	dptr,#(_program_stats + 0x0006)
      001227 E0               [24] 2002 	movx	a,@dptr
      001228 FE               [12] 2003 	mov	r6,a
      001229 A3               [24] 2004 	inc	dptr
      00122A E0               [24] 2005 	movx	a,@dptr
      00122B FF               [12] 2006 	mov	r7,a
      00122C C0 06            [24] 2007 	push	ar6
      00122E C0 07            [24] 2008 	push	ar7
      001230 74 73            [12] 2009 	mov	a,#___str_32
      001232 C0 E0            [24] 2010 	push	acc
      001234 74 32            [12] 2011 	mov	a,#(___str_32 >> 8)
      001236 C0 E0            [24] 2012 	push	acc
      001238 74 80            [12] 2013 	mov	a,#0x80
      00123A C0 E0            [24] 2014 	push	acc
      00123C 12 22 58         [24] 2015 	lcall	_printf
      00123F E5 81            [12] 2016 	mov	a,sp
      001241 24 FB            [12] 2017 	add	a,#0xfb
      001243 F5 81            [12] 2018 	mov	sp,a
                                   2019 ;	buffer.c:388: printf("Total Buffers: %d \n\r", program_stats.total_buffers);
      001245 90 00 24         [24] 2020 	mov	dptr,#(_program_stats + 0x0008)
      001248 E0               [24] 2021 	movx	a,@dptr
      001249 FE               [12] 2022 	mov	r6,a
      00124A A3               [24] 2023 	inc	dptr
      00124B E0               [24] 2024 	movx	a,@dptr
      00124C FF               [12] 2025 	mov	r7,a
      00124D C0 06            [24] 2026 	push	ar6
      00124F C0 07            [24] 2027 	push	ar7
      001251 74 88            [12] 2028 	mov	a,#___str_33
      001253 C0 E0            [24] 2029 	push	acc
      001255 74 32            [12] 2030 	mov	a,#(___str_33 >> 8)
      001257 C0 E0            [24] 2031 	push	acc
      001259 74 80            [12] 2032 	mov	a,#0x80
      00125B C0 E0            [24] 2033 	push	acc
      00125D 12 22 58         [24] 2034 	lcall	_printf
      001260 E5 81            [12] 2035 	mov	a,sp
      001262 24 FB            [12] 2036 	add	a,#0xfb
      001264 F5 81            [12] 2037 	mov	sp,a
                                   2038 ;	buffer.c:389: }
      001266 22               [24] 2039 	ret
                                   2040 ;------------------------------------------------------------
                                   2041 ;Allocation info for local variables in function 'print_all_buffers'
                                   2042 ;------------------------------------------------------------
                                   2043 ;i                         Allocated with name '_print_all_buffers_i_131072_94'
                                   2044 ;------------------------------------------------------------
                                   2045 ;	buffer.c:396: void print_all_buffers()
                                   2046 ;	-----------------------------------------
                                   2047 ;	 function print_all_buffers
                                   2048 ;	-----------------------------------------
      001267                       2049 _print_all_buffers:
                                   2050 ;	buffer.c:398: for (int i = 0; i < program_stats.total_buffers; i++)
      001267 7E 00            [12] 2051 	mov	r6,#0x00
      001269 7F 00            [12] 2052 	mov	r7,#0x00
      00126B                       2053 00103$:
      00126B 90 00 24         [24] 2054 	mov	dptr,#(_program_stats + 0x0008)
      00126E E0               [24] 2055 	movx	a,@dptr
      00126F FC               [12] 2056 	mov	r4,a
      001270 A3               [24] 2057 	inc	dptr
      001271 E0               [24] 2058 	movx	a,@dptr
      001272 FD               [12] 2059 	mov	r5,a
      001273 C3               [12] 2060 	clr	c
      001274 EE               [12] 2061 	mov	a,r6
      001275 9C               [12] 2062 	subb	a,r4
      001276 EF               [12] 2063 	mov	a,r7
      001277 64 80            [12] 2064 	xrl	a,#0x80
      001279 8D F0            [24] 2065 	mov	b,r5
      00127B 63 F0 80         [24] 2066 	xrl	b,#0x80
      00127E 95 F0            [12] 2067 	subb	a,b
      001280 40 03            [24] 2068 	jc	00116$
      001282 02 13 BB         [24] 2069 	ljmp	00101$
      001285                       2070 00116$:
                                   2071 ;	buffer.c:400: printf("****************BUFFER*%d***************\n\r", i);
      001285 C0 07            [24] 2072 	push	ar7
      001287 C0 06            [24] 2073 	push	ar6
      001289 C0 06            [24] 2074 	push	ar6
      00128B C0 07            [24] 2075 	push	ar7
      00128D 74 9D            [12] 2076 	mov	a,#___str_34
      00128F C0 E0            [24] 2077 	push	acc
      001291 74 32            [12] 2078 	mov	a,#(___str_34 >> 8)
      001293 C0 E0            [24] 2079 	push	acc
      001295 74 80            [12] 2080 	mov	a,#0x80
      001297 C0 E0            [24] 2081 	push	acc
      001299 12 22 58         [24] 2082 	lcall	_printf
      00129C E5 81            [12] 2083 	mov	a,sp
      00129E 24 FB            [12] 2084 	add	a,#0xfb
      0012A0 F5 81            [12] 2085 	mov	sp,a
      0012A2 D0 06            [24] 2086 	pop	ar6
      0012A4 D0 07            [24] 2087 	pop	ar7
                                   2088 ;	buffer.c:401: printf("Buffer#: %d \n\r", buffers_array[i].buffer_num);
      0012A6 90 15 2F         [24] 2089 	mov	dptr,#__mulint_PARM_2
      0012A9 EE               [12] 2090 	mov	a,r6
      0012AA F0               [24] 2091 	movx	@dptr,a
      0012AB EF               [12] 2092 	mov	a,r7
      0012AC A3               [24] 2093 	inc	dptr
      0012AD F0               [24] 2094 	movx	@dptr,a
      0012AE 90 00 0C         [24] 2095 	mov	dptr,#0x000c
      0012B1 C0 07            [24] 2096 	push	ar7
      0012B3 C0 06            [24] 2097 	push	ar6
      0012B5 12 21 EA         [24] 2098 	lcall	__mulint
      0012B8 AC 82            [24] 2099 	mov	r4,dpl
      0012BA AD 83            [24] 2100 	mov	r5,dph
      0012BC EC               [12] 2101 	mov	a,r4
      0012BD 24 26            [12] 2102 	add	a,#_buffers_array
      0012BF F5 82            [12] 2103 	mov	dpl,a
      0012C1 ED               [12] 2104 	mov	a,r5
      0012C2 34 00            [12] 2105 	addc	a,#(_buffers_array >> 8)
      0012C4 F5 83            [12] 2106 	mov	dph,a
      0012C6 E0               [24] 2107 	movx	a,@dptr
      0012C7 FA               [12] 2108 	mov	r2,a
      0012C8 A3               [24] 2109 	inc	dptr
      0012C9 E0               [24] 2110 	movx	a,@dptr
      0012CA FB               [12] 2111 	mov	r3,a
      0012CB C0 05            [24] 2112 	push	ar5
      0012CD C0 04            [24] 2113 	push	ar4
      0012CF C0 02            [24] 2114 	push	ar2
      0012D1 C0 03            [24] 2115 	push	ar3
      0012D3 74 C8            [12] 2116 	mov	a,#___str_35
      0012D5 C0 E0            [24] 2117 	push	acc
      0012D7 74 32            [12] 2118 	mov	a,#(___str_35 >> 8)
      0012D9 C0 E0            [24] 2119 	push	acc
      0012DB 74 80            [12] 2120 	mov	a,#0x80
      0012DD C0 E0            [24] 2121 	push	acc
      0012DF 12 22 58         [24] 2122 	lcall	_printf
      0012E2 E5 81            [12] 2123 	mov	a,sp
      0012E4 24 FB            [12] 2124 	add	a,#0xfb
      0012E6 F5 81            [12] 2125 	mov	sp,a
      0012E8 D0 04            [24] 2126 	pop	ar4
      0012EA D0 05            [24] 2127 	pop	ar5
                                   2128 ;	buffer.c:402: printf("BufferStart: %p \n\r", buffers_array[i].buffer_start);
      0012EC EC               [12] 2129 	mov	a,r4
      0012ED 24 26            [12] 2130 	add	a,#_buffers_array
      0012EF FC               [12] 2131 	mov	r4,a
      0012F0 ED               [12] 2132 	mov	a,r5
      0012F1 34 00            [12] 2133 	addc	a,#(_buffers_array >> 8)
      0012F3 FD               [12] 2134 	mov	r5,a
      0012F4 8C 82            [24] 2135 	mov	dpl,r4
      0012F6 8D 83            [24] 2136 	mov	dph,r5
      0012F8 A3               [24] 2137 	inc	dptr
      0012F9 A3               [24] 2138 	inc	dptr
      0012FA E0               [24] 2139 	movx	a,@dptr
      0012FB F9               [12] 2140 	mov	r1,a
      0012FC A3               [24] 2141 	inc	dptr
      0012FD E0               [24] 2142 	movx	a,@dptr
      0012FE FA               [12] 2143 	mov	r2,a
      0012FF A3               [24] 2144 	inc	dptr
      001300 E0               [24] 2145 	movx	a,@dptr
      001301 FB               [12] 2146 	mov	r3,a
      001302 C0 05            [24] 2147 	push	ar5
      001304 C0 04            [24] 2148 	push	ar4
      001306 C0 01            [24] 2149 	push	ar1
      001308 C0 02            [24] 2150 	push	ar2
      00130A C0 03            [24] 2151 	push	ar3
      00130C 74 D7            [12] 2152 	mov	a,#___str_36
      00130E C0 E0            [24] 2153 	push	acc
      001310 74 32            [12] 2154 	mov	a,#(___str_36 >> 8)
      001312 C0 E0            [24] 2155 	push	acc
      001314 74 80            [12] 2156 	mov	a,#0x80
      001316 C0 E0            [24] 2157 	push	acc
      001318 12 22 58         [24] 2158 	lcall	_printf
      00131B E5 81            [12] 2159 	mov	a,sp
      00131D 24 FA            [12] 2160 	add	a,#0xfa
      00131F F5 81            [12] 2161 	mov	sp,a
      001321 D0 04            [24] 2162 	pop	ar4
      001323 D0 05            [24] 2163 	pop	ar5
                                   2164 ;	buffer.c:403: printf("BufferEnd: %p \n\r", buffers_array[i].buffer_end);
      001325 8C 82            [24] 2165 	mov	dpl,r4
      001327 8D 83            [24] 2166 	mov	dph,r5
      001329 A3               [24] 2167 	inc	dptr
      00132A A3               [24] 2168 	inc	dptr
      00132B A3               [24] 2169 	inc	dptr
      00132C A3               [24] 2170 	inc	dptr
      00132D A3               [24] 2171 	inc	dptr
      00132E E0               [24] 2172 	movx	a,@dptr
      00132F F9               [12] 2173 	mov	r1,a
      001330 A3               [24] 2174 	inc	dptr
      001331 E0               [24] 2175 	movx	a,@dptr
      001332 FA               [12] 2176 	mov	r2,a
      001333 A3               [24] 2177 	inc	dptr
      001334 E0               [24] 2178 	movx	a,@dptr
      001335 FB               [12] 2179 	mov	r3,a
      001336 C0 05            [24] 2180 	push	ar5
      001338 C0 04            [24] 2181 	push	ar4
      00133A C0 01            [24] 2182 	push	ar1
      00133C C0 02            [24] 2183 	push	ar2
      00133E C0 03            [24] 2184 	push	ar3
      001340 74 EA            [12] 2185 	mov	a,#___str_37
      001342 C0 E0            [24] 2186 	push	acc
      001344 74 32            [12] 2187 	mov	a,#(___str_37 >> 8)
      001346 C0 E0            [24] 2188 	push	acc
      001348 74 80            [12] 2189 	mov	a,#0x80
      00134A C0 E0            [24] 2190 	push	acc
      00134C 12 22 58         [24] 2191 	lcall	_printf
      00134F E5 81            [12] 2192 	mov	a,sp
      001351 24 FA            [12] 2193 	add	a,#0xfa
      001353 F5 81            [12] 2194 	mov	sp,a
      001355 D0 04            [24] 2195 	pop	ar4
      001357 D0 05            [24] 2196 	pop	ar5
                                   2197 ;	buffer.c:404: printf("BufferSize: %d \n\r", buffers_array[i].buff_size);
      001359 74 08            [12] 2198 	mov	a,#0x08
      00135B 2C               [12] 2199 	add	a,r4
      00135C F5 82            [12] 2200 	mov	dpl,a
      00135E E4               [12] 2201 	clr	a
      00135F 3D               [12] 2202 	addc	a,r5
      001360 F5 83            [12] 2203 	mov	dph,a
      001362 E0               [24] 2204 	movx	a,@dptr
      001363 FA               [12] 2205 	mov	r2,a
      001364 A3               [24] 2206 	inc	dptr
      001365 E0               [24] 2207 	movx	a,@dptr
      001366 FB               [12] 2208 	mov	r3,a
      001367 C0 05            [24] 2209 	push	ar5
      001369 C0 04            [24] 2210 	push	ar4
      00136B C0 02            [24] 2211 	push	ar2
      00136D C0 03            [24] 2212 	push	ar3
      00136F 74 FB            [12] 2213 	mov	a,#___str_38
      001371 C0 E0            [24] 2214 	push	acc
      001373 74 32            [12] 2215 	mov	a,#(___str_38 >> 8)
      001375 C0 E0            [24] 2216 	push	acc
      001377 74 80            [12] 2217 	mov	a,#0x80
      001379 C0 E0            [24] 2218 	push	acc
      00137B 12 22 58         [24] 2219 	lcall	_printf
      00137E E5 81            [12] 2220 	mov	a,sp
      001380 24 FB            [12] 2221 	add	a,#0xfb
      001382 F5 81            [12] 2222 	mov	sp,a
      001384 D0 04            [24] 2223 	pop	ar4
      001386 D0 05            [24] 2224 	pop	ar5
                                   2225 ;	buffer.c:405: printf("TotalUsed: %d \n\r", buffers_array[i].num_char);
      001388 74 0A            [12] 2226 	mov	a,#0x0a
      00138A 2C               [12] 2227 	add	a,r4
      00138B F5 82            [12] 2228 	mov	dpl,a
      00138D E4               [12] 2229 	clr	a
      00138E 3D               [12] 2230 	addc	a,r5
      00138F F5 83            [12] 2231 	mov	dph,a
      001391 E0               [24] 2232 	movx	a,@dptr
      001392 FC               [12] 2233 	mov	r4,a
      001393 A3               [24] 2234 	inc	dptr
      001394 E0               [24] 2235 	movx	a,@dptr
      001395 FD               [12] 2236 	mov	r5,a
      001396 C0 04            [24] 2237 	push	ar4
      001398 C0 05            [24] 2238 	push	ar5
      00139A 74 0D            [12] 2239 	mov	a,#___str_39
      00139C C0 E0            [24] 2240 	push	acc
      00139E 74 33            [12] 2241 	mov	a,#(___str_39 >> 8)
      0013A0 C0 E0            [24] 2242 	push	acc
      0013A2 74 80            [12] 2243 	mov	a,#0x80
      0013A4 C0 E0            [24] 2244 	push	acc
      0013A6 12 22 58         [24] 2245 	lcall	_printf
      0013A9 E5 81            [12] 2246 	mov	a,sp
      0013AB 24 FB            [12] 2247 	add	a,#0xfb
      0013AD F5 81            [12] 2248 	mov	sp,a
      0013AF D0 06            [24] 2249 	pop	ar6
      0013B1 D0 07            [24] 2250 	pop	ar7
                                   2251 ;	buffer.c:398: for (int i = 0; i < program_stats.total_buffers; i++)
      0013B3 0E               [12] 2252 	inc	r6
      0013B4 BE 00 01         [24] 2253 	cjne	r6,#0x00,00117$
      0013B7 0F               [12] 2254 	inc	r7
      0013B8                       2255 00117$:
      0013B8 02 12 6B         [24] 2256 	ljmp	00103$
      0013BB                       2257 00101$:
                                   2258 ;	buffer.c:407: printf("***************************************\n\r");
      0013BB 74 1E            [12] 2259 	mov	a,#___str_40
      0013BD C0 E0            [24] 2260 	push	acc
      0013BF 74 33            [12] 2261 	mov	a,#(___str_40 >> 8)
      0013C1 C0 E0            [24] 2262 	push	acc
      0013C3 74 80            [12] 2263 	mov	a,#0x80
      0013C5 C0 E0            [24] 2264 	push	acc
      0013C7 12 22 58         [24] 2265 	lcall	_printf
      0013CA 15 81            [12] 2266 	dec	sp
      0013CC 15 81            [12] 2267 	dec	sp
      0013CE 15 81            [12] 2268 	dec	sp
                                   2269 ;	buffer.c:408: }
      0013D0 22               [24] 2270 	ret
                                   2271 	.area CSEG    (CODE)
                                   2272 	.area CONST   (CODE)
                                   2273 	.area CONST   (CODE)
      002E24                       2274 ___str_0:
      002E24 42 75 66 66 65 72 20  2275 	.ascii "Buffer %d Freed ...."
             25 64 20 46 72 65 65
             64 20 2E 2E 2E 2E
      002E38 0A                    2276 	.db 0x0a
      002E39 0D                    2277 	.db 0x0d
      002E3A 00                    2278 	.db 0x00
                                   2279 	.area CSEG    (CODE)
                                   2280 	.area CONST   (CODE)
      002E3B                       2281 ___str_1:
      002E3B 4C 65 74 27 73 20 62  2282 	.ascii "Let's begin again.."
             65 67 69 6E 20 61 67
             61 69 6E 2E 2E
      002E4E 0A                    2283 	.db 0x0a
      002E4F 0D                    2284 	.db 0x0d
      002E50 00                    2285 	.db 0x00
                                   2286 	.area CSEG    (CODE)
                                   2287 	.area CONST   (CODE)
      002E51                       2288 ___str_2:
      002E51 0A                    2289 	.db 0x0a
      002E52 0D                    2290 	.db 0x0d
      002E53 47 69 76 65 20 56 61  2291 	.ascii "Give Valid Buffer Number to delete(1-%d) in 3 digits"
             6C 69 64 20 42 75 66
             66 65 72 20 4E 75 6D
             62 65 72 20 74 6F 20
             64 65 6C 65 74 65 28
             31 2D 25 64 29 20 69
             6E 20 33 20 64 69 67
             69 74 73
      002E87 0A                    2292 	.db 0x0a
      002E88 0D                    2293 	.db 0x0d
      002E89 00                    2294 	.db 0x00
                                   2295 	.area CSEG    (CODE)
                                   2296 	.area CONST   (CODE)
      002E8A                       2297 ___str_3:
      002E8A 42 75 66 66 65 72 20  2298 	.ascii "Buffer %d Successfully Deleted.. "
             25 64 20 53 75 63 63
             65 73 73 66 75 6C 6C
             79 20 44 65 6C 65 74
             65 64 2E 2E 20
      002EAB 0A                    2299 	.db 0x0a
      002EAC 0D                    2300 	.db 0x0d
      002EAD 00                    2301 	.db 0x00
                                   2302 	.area CSEG    (CODE)
                                   2303 	.area CONST   (CODE)
      002EAE                       2304 ___str_4:
      002EAE 0A                    2305 	.db 0x0a
      002EAF 0A                    2306 	.db 0x0a
      002EB0 0D                    2307 	.db 0x0d
      002EB1 5E 5E 5E 5E 5E 5E 5E  2308 	.ascii "^^^^^^^^^^^^^^^^^^^-HEAP-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ "
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 2D 48
             45 41 50 2D 4D 45 4E
             55 2D 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             20
      002EEA 0A                    2309 	.db 0x0a
      002EEB 0A                    2310 	.db 0x0a
      002EEC 0D                    2311 	.db 0x0d
      002EED 00                    2312 	.db 0x00
                                   2313 	.area CSEG    (CODE)
                                   2314 	.area CONST   (CODE)
      002EEE                       2315 ___str_5:
      002EEE 59 6F 75 20 63 61 6E  2316 	.ascii "You can enter characters or use commands from below "
             20 65 6E 74 65 72 20
             63 68 61 72 61 63 74
             65 72 73 20 6F 72 20
             75 73 65 20 63 6F 6D
             6D 61 6E 64 73 20 66
             72 6F 6D 20 62 65 6C
             6F 77 20
      002F22 0A                    2317 	.db 0x0a
      002F23 0D                    2318 	.db 0x0d
      002F24 00                    2319 	.db 0x00
                                   2320 	.area CSEG    (CODE)
                                   2321 	.area CONST   (CODE)
      002F25                       2322 ___str_6:
      002F25 27 3F 27 20 2D 3E 20  2323 	.ascii "'?' -> Show heap status, dump & clear Buffer 0 "
             53 68 6F 77 20 68 65
             61 70 20 73 74 61 74
             75 73 2C 20 64 75 6D
             70 20 26 20 63 6C 65
             61 72 20 42 75 66 66
             65 72 20 30 20
      002F54 0A                    2324 	.db 0x0a
      002F55 0D                    2325 	.db 0x0d
      002F56 00                    2326 	.db 0x00
                                   2327 	.area CSEG    (CODE)
                                   2328 	.area CONST   (CODE)
      002F57                       2329 ___str_7:
      002F57 27 2B 27 20 2D 3E 20  2330 	.ascii "'+' -> Add a new Buffer"
             41 64 64 20 61 20 6E
             65 77 20 42 75 66 66
             65 72
      002F6E 0A                    2331 	.db 0x0a
      002F6F 0D                    2332 	.db 0x0d
      002F70 00                    2333 	.db 0x00
                                   2334 	.area CSEG    (CODE)
                                   2335 	.area CONST   (CODE)
      002F71                       2336 ___str_8:
      002F71 27 2D 27 20 2D 3E 20  2337 	.ascii "'-' -> Delete existing Buffer"
             44 65 6C 65 74 65 20
             65 78 69 73 74 69 6E
             67 20 42 75 66 66 65
             72
      002F8E 0A                    2338 	.db 0x0a
      002F8F 0D                    2339 	.db 0x0d
      002F90 00                    2340 	.db 0x00
                                   2341 	.area CSEG    (CODE)
                                   2342 	.area CONST   (CODE)
      002F91                       2343 ___str_9:
      002F91 27 3D 27 20 2D 3E 20  2344 	.ascii "'=' -> Dump Buffer 0 in hex"
             44 75 6D 70 20 42 75
             66 66 65 72 20 30 20
             69 6E 20 68 65 78
      002FAC 0A                    2345 	.db 0x0a
      002FAD 0D                    2346 	.db 0x0d
      002FAE 00                    2347 	.db 0x00
                                   2348 	.area CSEG    (CODE)
                                   2349 	.area CONST   (CODE)
      002FAF                       2350 ___str_10:
      002FAF 27 40 27 20 2D 3E 20  2351 	.ascii "'@' -> Free all Heap & begin again"
             46 72 65 65 20 61 6C
             6C 20 48 65 61 70 20
             26 20 62 65 67 69 6E
             20 61 67 61 69 6E
      002FD1 0A                    2352 	.db 0x0a
      002FD2 0A                    2353 	.db 0x0a
      002FD3 0D                    2354 	.db 0x0d
      002FD4 00                    2355 	.db 0x00
                                   2356 	.area CSEG    (CODE)
                                   2357 	.area CONST   (CODE)
      002FD5                       2358 ___str_11:
      002FD5 27 4D 27 20 2D 3E 20  2359 	.ascii "'M' -> Go to Main Menu "
             47 6F 20 74 6F 20 4D
             61 69 6E 20 4D 65 6E
             75 20
      002FEC 0A                    2360 	.db 0x0a
      002FED 0A                    2361 	.db 0x0a
      002FEE 0D                    2362 	.db 0x0d
      002FEF 00                    2363 	.db 0x00
                                   2364 	.area CSEG    (CODE)
                                   2365 	.area CONST   (CODE)
      002FF0                       2366 ___str_12:
      002FF0 0A                    2367 	.db 0x0a
      002FF1 0D                    2368 	.db 0x0d
      002FF2 47 69 76 65 20 56 61  2369 	.ascii "Give Valid Buffer Size(030-300):"
             6C 69 64 20 42 75 66
             66 65 72 20 53 69 7A
             65 28 30 33 30 2D 33
             30 30 29 3A
      003012 00                    2370 	.db 0x00
                                   2371 	.area CSEG    (CODE)
                                   2372 	.area CONST   (CODE)
      003013                       2373 ___str_13:
      003013 46 61 69 6C 65 64 2C  2374 	.ascii "Failed, give smaller buffer"
             20 67 69 76 65 20 73
             6D 61 6C 6C 65 72 20
             62 75 66 66 65 72
      00302E 0A                    2375 	.db 0x0a
      00302F 0D                    2376 	.db 0x0d
      003030 00                    2377 	.db 0x00
                                   2378 	.area CSEG    (CODE)
                                   2379 	.area CONST   (CODE)
      003031                       2380 ___str_14:
      003031 0A                    2381 	.db 0x0a
      003032 0A                    2382 	.db 0x0a
      003033 0D                    2383 	.db 0x0d
      003034 23 23 23 23 53 55 43  2384 	.ascii "####SUCCESS, BUFFER Created####"
             43 45 53 53 2C 20 42
             55 46 46 45 52 20 43
             72 65 61 74 65 64 23
             23 23 23
      003053 0A                    2385 	.db 0x0a
      003054 0A                    2386 	.db 0x0a
      003055 0D                    2387 	.db 0x0d
      003056 00                    2388 	.db 0x00
                                   2389 	.area CSEG    (CODE)
                                   2390 	.area CONST   (CODE)
      003057                       2391 ___str_15:
      003057 4E 6F 20 48 65 61 70  2392 	.ascii "No Heap Memory Left, Delete some buffers..."
             20 4D 65 6D 6F 72 79
             20 4C 65 66 74 2C 20
             44 65 6C 65 74 65 20
             73 6F 6D 65 20 62 75
             66 66 65 72 73 2E 2E
             2E
      003082 0A                    2393 	.db 0x0a
      003083 0D                    2394 	.db 0x0d
      003084 00                    2395 	.db 0x00
                                   2396 	.area CSEG    (CODE)
                                   2397 	.area CONST   (CODE)
      003085                       2398 ___str_16:
      003085 0A                    2399 	.db 0x0a
      003086 0D                    2400 	.db 0x0d
      003087 47 69 76 65 20 56 61  2401 	.ascii "Give Valid Initial Buffer Size(0048-4800):"
             6C 69 64 20 49 6E 69
             74 69 61 6C 20 42 75
             66 66 65 72 20 53 69
             7A 65 28 30 30 34 38
             2D 34 38 30 30 29 3A
      0030B1 00                    2402 	.db 0x00
                                   2403 	.area CSEG    (CODE)
                                   2404 	.area CONST   (CODE)
      0030B2                       2405 ___str_17:
      0030B2 0A                    2406 	.db 0x0a
      0030B3 0D                    2407 	.db 0x0d
      0030B4 23 23 23 23 46 41 49  2408 	.ascii "####FAIL, Please give a smaller buffer size####"
             4C 2C 20 50 6C 65 61
             73 65 20 67 69 76 65
             20 61 20 73 6D 61 6C
             6C 65 72 20 62 75 66
             66 65 72 20 73 69 7A
             65 23 23 23 23
      0030E3 0A                    2409 	.db 0x0a
      0030E4 0A                    2410 	.db 0x0a
      0030E5 0D                    2411 	.db 0x0d
      0030E6 00                    2412 	.db 0x00
                                   2413 	.area CSEG    (CODE)
                                   2414 	.area CONST   (CODE)
      0030E7                       2415 ___str_18:
      0030E7 0A                    2416 	.db 0x0a
      0030E8 0A                    2417 	.db 0x0a
      0030E9 0D                    2418 	.db 0x0d
      0030EA 23 23 23 23 53 55 43  2419 	.ascii "####SUCCESS, INITIAL BUFFERS Created####"
             43 45 53 53 2C 20 49
             4E 49 54 49 41 4C 20
             42 55 46 46 45 52 53
             20 43 72 65 61 74 65
             64 23 23 23 23
      003112 0A                    2420 	.db 0x0a
      003113 0A                    2421 	.db 0x0a
      003114 0D                    2422 	.db 0x0d
      003115 00                    2423 	.db 0x00
                                   2424 	.area CSEG    (CODE)
                                   2425 	.area CONST   (CODE)
      003116                       2426 ___str_19:
      003116 0A                    2427 	.db 0x0a
      003117 0A                    2428 	.db 0x0a
      003118 0D                    2429 	.db 0x0d
      003119 2A 2A 2A 2A 2A 2A 2A  2430 	.ascii "***********Buffer-0-Contents*********** "
             2A 2A 2A 2A 42 75 66
             66 65 72 2D 30 2D 43
             6F 6E 74 65 6E 74 73
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 20
      003141 0A                    2431 	.db 0x0a
      003142 0D                    2432 	.db 0x0d
      003143 00                    2433 	.db 0x00
                                   2434 	.area CSEG    (CODE)
                                   2435 	.area CONST   (CODE)
      003144                       2436 ___str_20:
      003144 0A                    2437 	.db 0x0a
      003145 0D                    2438 	.db 0x0d
      003146 00                    2439 	.db 0x00
                                   2440 	.area CSEG    (CODE)
                                   2441 	.area CONST   (CODE)
      003147                       2442 ___str_21:
      003147 0A                    2443 	.db 0x0a
      003148 0A                    2444 	.db 0x0a
      003149 0D                    2445 	.db 0x0d
      00314A 00                    2446 	.db 0x00
                                   2447 	.area CSEG    (CODE)
                                   2448 	.area CONST   (CODE)
      00314B                       2449 ___str_22:
      00314B 42 75 66 66 65 72 30  2450 	.ascii "Buffer0 is Empty...."
             20 69 73 20 45 6D 70
             74 79 2E 2E 2E 2E
      00315F 0A                    2451 	.db 0x0a
      003160 0D                    2452 	.db 0x0d
      003161 00                    2453 	.db 0x00
                                   2454 	.area CSEG    (CODE)
                                   2455 	.area CONST   (CODE)
      003162                       2456 ___str_23:
      003162 0A                    2457 	.db 0x0a
      003163 0D                    2458 	.db 0x0d
      003164 2D 2D 2D 2D 2D 2D 2D  2459 	.ascii "-------------------------HEXDUMP----------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 48 45 58
             44 55 4D 50 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D
      0031A0 2D 2D 2D 2D           2460 	.ascii "----"
      0031A4 00                    2461 	.db 0x00
                                   2462 	.area CSEG    (CODE)
                                   2463 	.area CONST   (CODE)
      0031A5                       2464 ___str_24:
      0031A5 0A                    2465 	.db 0x0a
      0031A6 0D                    2466 	.db 0x0d
      0031A7 20 20 20 20 41 44 44  2467 	.ascii "    ADDR: +0 +1 +2 +3 +4 +5 +6 +7 +8 +9 +A +B +C +D +E +F "
             52 3A 20 2B 30 20 2B
             31 20 2B 32 20 2B 33
             20 2B 34 20 2B 35 20
             2B 36 20 2B 37 20 2B
             38 20 2B 39 20 2B 41
             20 2B 42 20 2B 43 20
             2B 44 20 2B 45 20 2B
             46 20
      0031E1 0A                    2468 	.db 0x0a
      0031E2 0D                    2469 	.db 0x0d
      0031E3 00                    2470 	.db 0x00
                                   2471 	.area CSEG    (CODE)
                                   2472 	.area CONST   (CODE)
      0031E4                       2473 ___str_25:
      0031E4 0A                    2474 	.db 0x0a
      0031E5 0D                    2475 	.db 0x0d
      0031E6 25 70 3A 20           2476 	.ascii "%p: "
      0031EA 00                    2477 	.db 0x00
                                   2478 	.area CSEG    (CODE)
                                   2479 	.area CONST   (CODE)
      0031EB                       2480 ___str_26:
      0031EB 25 78 20              2481 	.ascii "%x "
      0031EE 00                    2482 	.db 0x00
                                   2483 	.area CSEG    (CODE)
                                   2484 	.area CONST   (CODE)
      0031EF                       2485 ___str_27:
      0031EF 42 75 66 66 65 72 20  2486 	.ascii "Buffer is empty..."
             69 73 20 65 6D 70 74
             79 2E 2E 2E
      003201 0A                    2487 	.db 0x0a
      003202 0D                    2488 	.db 0x0d
      003203 00                    2489 	.db 0x00
                                   2490 	.area CSEG    (CODE)
                                   2491 	.area CONST   (CODE)
      003204                       2492 ___str_28:
      003204 0A                    2493 	.db 0x0a
      003205 0D                    2494 	.db 0x0d
      003206 2A 2A 2A 2A 2A 2A 2A  2495 	.ascii "****************HEAP*STATS*************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 48 45 41 50 2A
             53 54 41 54 53 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A
      00322D 0A                    2496 	.db 0x0a
      00322E 0D                    2497 	.db 0x0d
      00322F 00                    2498 	.db 0x00
                                   2499 	.area CSEG    (CODE)
                                   2500 	.area CONST   (CODE)
      003230                       2501 ___str_29:
      003230 54 6F 74 61 6C 20 48  2502 	.ascii "Total Heap Size: %d "
             65 61 70 20 53 69 7A
             65 3A 20 25 64 20
      003244 0A                    2503 	.db 0x0a
      003245 0D                    2504 	.db 0x0d
      003246 00                    2505 	.db 0x00
                                   2506 	.area CSEG    (CODE)
                                   2507 	.area CONST   (CODE)
      003247                       2508 ___str_30:
      003247 41 6C 6C 6F 63 61 74  2509 	.ascii "Allocated Heap Size: %d "
             65 64 20 48 65 61 70
             20 53 69 7A 65 3A 20
             25 64 20
      00325F 0A                    2510 	.db 0x0a
      003260 0D                    2511 	.db 0x0d
      003261 00                    2512 	.db 0x00
                                   2513 	.area CSEG    (CODE)
                                   2514 	.area CONST   (CODE)
      003262                       2515 ___str_31:
      003262 41 6C 6C 20 43 68 61  2516 	.ascii "All Chars: %d "
             72 73 3A 20 25 64 20
      003270 0A                    2517 	.db 0x0a
      003271 0D                    2518 	.db 0x0d
      003272 00                    2519 	.db 0x00
                                   2520 	.area CSEG    (CODE)
                                   2521 	.area CONST   (CODE)
      003273                       2522 ___str_32:
      003273 53 74 6F 72 61 67 65  2523 	.ascii "Storage Chars: %d "
             20 43 68 61 72 73 3A
             20 25 64 20
      003285 0A                    2524 	.db 0x0a
      003286 0D                    2525 	.db 0x0d
      003287 00                    2526 	.db 0x00
                                   2527 	.area CSEG    (CODE)
                                   2528 	.area CONST   (CODE)
      003288                       2529 ___str_33:
      003288 54 6F 74 61 6C 20 42  2530 	.ascii "Total Buffers: %d "
             75 66 66 65 72 73 3A
             20 25 64 20
      00329A 0A                    2531 	.db 0x0a
      00329B 0D                    2532 	.db 0x0d
      00329C 00                    2533 	.db 0x00
                                   2534 	.area CSEG    (CODE)
                                   2535 	.area CONST   (CODE)
      00329D                       2536 ___str_34:
      00329D 2A 2A 2A 2A 2A 2A 2A  2537 	.ascii "****************BUFFER*%d***************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 42 55 46 46 45
             52 2A 25 64 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A
      0032C5 0A                    2538 	.db 0x0a
      0032C6 0D                    2539 	.db 0x0d
      0032C7 00                    2540 	.db 0x00
                                   2541 	.area CSEG    (CODE)
                                   2542 	.area CONST   (CODE)
      0032C8                       2543 ___str_35:
      0032C8 42 75 66 66 65 72 23  2544 	.ascii "Buffer#: %d "
             3A 20 25 64 20
      0032D4 0A                    2545 	.db 0x0a
      0032D5 0D                    2546 	.db 0x0d
      0032D6 00                    2547 	.db 0x00
                                   2548 	.area CSEG    (CODE)
                                   2549 	.area CONST   (CODE)
      0032D7                       2550 ___str_36:
      0032D7 42 75 66 66 65 72 53  2551 	.ascii "BufferStart: %p "
             74 61 72 74 3A 20 25
             70 20
      0032E7 0A                    2552 	.db 0x0a
      0032E8 0D                    2553 	.db 0x0d
      0032E9 00                    2554 	.db 0x00
                                   2555 	.area CSEG    (CODE)
                                   2556 	.area CONST   (CODE)
      0032EA                       2557 ___str_37:
      0032EA 42 75 66 66 65 72 45  2558 	.ascii "BufferEnd: %p "
             6E 64 3A 20 25 70 20
      0032F8 0A                    2559 	.db 0x0a
      0032F9 0D                    2560 	.db 0x0d
      0032FA 00                    2561 	.db 0x00
                                   2562 	.area CSEG    (CODE)
                                   2563 	.area CONST   (CODE)
      0032FB                       2564 ___str_38:
      0032FB 42 75 66 66 65 72 53  2565 	.ascii "BufferSize: %d "
             69 7A 65 3A 20 25 64
             20
      00330A 0A                    2566 	.db 0x0a
      00330B 0D                    2567 	.db 0x0d
      00330C 00                    2568 	.db 0x00
                                   2569 	.area CSEG    (CODE)
                                   2570 	.area CONST   (CODE)
      00330D                       2571 ___str_39:
      00330D 54 6F 74 61 6C 55 73  2572 	.ascii "TotalUsed: %d "
             65 64 3A 20 25 64 20
      00331B 0A                    2573 	.db 0x0a
      00331C 0D                    2574 	.db 0x0d
      00331D 00                    2575 	.db 0x00
                                   2576 	.area CSEG    (CODE)
                                   2577 	.area CONST   (CODE)
      00331E                       2578 ___str_40:
      00331E 2A 2A 2A 2A 2A 2A 2A  2579 	.ascii "***************************************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A
      003345 0A                    2580 	.db 0x0a
      003346 0D                    2581 	.db 0x0d
      003347 00                    2582 	.db 0x00
                                   2583 	.area CSEG    (CODE)
                                   2584 	.area XINIT   (CODE)
                                   2585 	.area CABS    (ABS,CODE)
