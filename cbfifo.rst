                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module cbfifo
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _cbfifo_capacity
                                     12 	.globl _cbfifo_length
                                     13 	.globl _cbfifo_dequeue
                                     14 	.globl _cbfifo_enqueue
                                     15 	.globl _end_index
                                     16 	.globl _write_index
                                     17 	.globl _read_index
                                     18 	.globl _cbfifo_dequeue_PARM_2
                                     19 	.globl _cbfifo_enqueue_PARM_2
                                     20 	.globl _cb_buffer
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
                                     43 	.area	OSEG    (OVR,DATA)
      00001A                         44 _cbfifo_dequeue_sloc0_1_0:
      00001A                         45 	.ds 2
      00001C                         46 _cbfifo_dequeue_sloc1_1_0:
      00001C                         47 	.ds 2
      00001E                         48 _cbfifo_dequeue_sloc2_1_0:
      00001E                         49 	.ds 2
                                     50 ;--------------------------------------------------------
                                     51 ; indirectly addressable internal ram data
                                     52 ;--------------------------------------------------------
                                     53 	.area ISEG    (DATA)
                                     54 ;--------------------------------------------------------
                                     55 ; absolute internal ram data
                                     56 ;--------------------------------------------------------
                                     57 	.area IABS    (ABS,DATA)
                                     58 	.area IABS    (ABS,DATA)
                                     59 ;--------------------------------------------------------
                                     60 ; bit data
                                     61 ;--------------------------------------------------------
                                     62 	.area BSEG    (BIT)
                                     63 ;--------------------------------------------------------
                                     64 ; paged external ram data
                                     65 ;--------------------------------------------------------
                                     66 	.area PSEG    (PAG,XDATA)
                                     67 ;--------------------------------------------------------
                                     68 ; external ram data
                                     69 ;--------------------------------------------------------
                                     70 	.area XSEG    (XDATA)
      0014F5                         71 _cb_buffer::
      0014F5                         72 	.ds 128
      001575                         73 _cbfifo_enqueue_PARM_2:
      001575                         74 	.ds 2
      001577                         75 _cbfifo_enqueue_buf_65536_66:
      001577                         76 	.ds 3
      00157A                         77 _cbfifo_dequeue_PARM_2:
      00157A                         78 	.ds 2
      00157C                         79 _cbfifo_dequeue_buf_65536_71:
      00157C                         80 	.ds 3
      00157F                         81 _cbfifo_dequeue_i_65537_73:
      00157F                         82 	.ds 2
                                     83 ;--------------------------------------------------------
                                     84 ; absolute external ram data
                                     85 ;--------------------------------------------------------
                                     86 	.area XABS    (ABS,XDATA)
                                     87 ;--------------------------------------------------------
                                     88 ; external initialized ram data
                                     89 ;--------------------------------------------------------
                                     90 	.area XISEG   (XDATA)
      0015D6                         91 _read_index::
      0015D6                         92 	.ds 1
      0015D7                         93 _write_index::
      0015D7                         94 	.ds 1
      0015D8                         95 _end_index::
      0015D8                         96 	.ds 1
                                     97 	.area HOME    (CODE)
                                     98 	.area GSINIT0 (CODE)
                                     99 	.area GSINIT1 (CODE)
                                    100 	.area GSINIT2 (CODE)
                                    101 	.area GSINIT3 (CODE)
                                    102 	.area GSINIT4 (CODE)
                                    103 	.area GSINIT5 (CODE)
                                    104 	.area GSINIT  (CODE)
                                    105 	.area GSFINAL (CODE)
                                    106 	.area CSEG    (CODE)
                                    107 ;--------------------------------------------------------
                                    108 ; global & static initialisations
                                    109 ;--------------------------------------------------------
                                    110 	.area HOME    (CODE)
                                    111 	.area GSINIT  (CODE)
                                    112 	.area GSFINAL (CODE)
                                    113 	.area GSINIT  (CODE)
                                    114 ;--------------------------------------------------------
                                    115 ; Home
                                    116 ;--------------------------------------------------------
                                    117 	.area HOME    (CODE)
                                    118 	.area HOME    (CODE)
                                    119 ;--------------------------------------------------------
                                    120 ; code
                                    121 ;--------------------------------------------------------
                                    122 	.area CSEG    (CODE)
                                    123 ;------------------------------------------------------------
                                    124 ;Allocation info for local variables in function 'cbfifo_enqueue'
                                    125 ;------------------------------------------------------------
                                    126 ;nbyte                     Allocated with name '_cbfifo_enqueue_PARM_2'
                                    127 ;buf                       Allocated with name '_cbfifo_enqueue_buf_65536_66'
                                    128 ;data                      Allocated with name '_cbfifo_enqueue_data_65537_68'
                                    129 ;i                         Allocated with name '_cbfifo_enqueue_i_65537_68'
                                    130 ;------------------------------------------------------------
                                    131 ;	cbfifo.c:15: size_t cbfifo_enqueue(void *buf, size_t nbyte)
                                    132 ;	-----------------------------------------
                                    133 ;	 function cbfifo_enqueue
                                    134 ;	-----------------------------------------
      0014E9                        135 _cbfifo_enqueue:
                           000007   136 	ar7 = 0x07
                           000006   137 	ar6 = 0x06
                           000005   138 	ar5 = 0x05
                           000004   139 	ar4 = 0x04
                           000003   140 	ar3 = 0x03
                           000002   141 	ar2 = 0x02
                           000001   142 	ar1 = 0x01
                           000000   143 	ar0 = 0x00
      0014E9 AF F0            [24]  144 	mov	r7,b
      0014EB AE 83            [24]  145 	mov	r6,dph
      0014ED E5 82            [12]  146 	mov	a,dpl
      0014EF 90 15 77         [24]  147 	mov	dptr,#_cbfifo_enqueue_buf_65536_66
      0014F2 F0               [24]  148 	movx	@dptr,a
      0014F3 EE               [12]  149 	mov	a,r6
      0014F4 A3               [24]  150 	inc	dptr
      0014F5 F0               [24]  151 	movx	@dptr,a
      0014F6 EF               [12]  152 	mov	a,r7
      0014F7 A3               [24]  153 	inc	dptr
      0014F8 F0               [24]  154 	movx	@dptr,a
                                    155 ;	cbfifo.c:18: if (buf == NULL)
      0014F9 90 15 77         [24]  156 	mov	dptr,#_cbfifo_enqueue_buf_65536_66
      0014FC E0               [24]  157 	movx	a,@dptr
      0014FD FD               [12]  158 	mov	r5,a
      0014FE A3               [24]  159 	inc	dptr
      0014FF E0               [24]  160 	movx	a,@dptr
      001500 FE               [12]  161 	mov	r6,a
      001501 A3               [24]  162 	inc	dptr
      001502 E0               [24]  163 	movx	a,@dptr
      001503 FF               [12]  164 	mov	r7,a
      001504 90 15 77         [24]  165 	mov	dptr,#_cbfifo_enqueue_buf_65536_66
      001507 E0               [24]  166 	movx	a,@dptr
      001508 F5 F0            [12]  167 	mov	b,a
      00150A A3               [24]  168 	inc	dptr
      00150B E0               [24]  169 	movx	a,@dptr
      00150C 45 F0            [12]  170 	orl	a,b
      00150E 70 04            [24]  171 	jnz	00102$
                                    172 ;	cbfifo.c:19: return -1;
      001510 90 FF FF         [24]  173 	mov	dptr,#0xffff
      001513 22               [24]  174 	ret
      001514                        175 00102$:
                                    176 ;	cbfifo.c:21: uint8_t *data = buf;
                                    177 ;	cbfifo.c:24: for (i = 0; i < nbyte && write_index < end_index; i++)
      001514 90 15 75         [24]  178 	mov	dptr,#_cbfifo_enqueue_PARM_2
      001517 E0               [24]  179 	movx	a,@dptr
      001518 FB               [12]  180 	mov	r3,a
      001519 A3               [24]  181 	inc	dptr
      00151A E0               [24]  182 	movx	a,@dptr
      00151B FC               [12]  183 	mov	r4,a
      00151C 79 00            [12]  184 	mov	r1,#0x00
      00151E 7A 00            [12]  185 	mov	r2,#0x00
      001520                        186 00106$:
      001520 C0 05            [24]  187 	push	ar5
      001522 C0 06            [24]  188 	push	ar6
      001524 C0 07            [24]  189 	push	ar7
      001526 89 00            [24]  190 	mov	ar0,r1
      001528 8A 07            [24]  191 	mov	ar7,r2
      00152A C3               [12]  192 	clr	c
      00152B E8               [12]  193 	mov	a,r0
      00152C 9B               [12]  194 	subb	a,r3
      00152D EF               [12]  195 	mov	a,r7
      00152E 9C               [12]  196 	subb	a,r4
      00152F D0 07            [24]  197 	pop	ar7
      001531 D0 06            [24]  198 	pop	ar6
      001533 D0 05            [24]  199 	pop	ar5
      001535 50 49            [24]  200 	jnc	00103$
      001537 C0 03            [24]  201 	push	ar3
      001539 C0 04            [24]  202 	push	ar4
      00153B 90 15 D7         [24]  203 	mov	dptr,#_write_index
      00153E E0               [24]  204 	movx	a,@dptr
      00153F F8               [12]  205 	mov	r0,a
      001540 90 15 D8         [24]  206 	mov	dptr,#_end_index
      001543 E0               [24]  207 	movx	a,@dptr
      001544 FC               [12]  208 	mov	r4,a
      001545 C3               [12]  209 	clr	c
      001546 E8               [12]  210 	mov	a,r0
      001547 9C               [12]  211 	subb	a,r4
      001548 D0 04            [24]  212 	pop	ar4
      00154A D0 03            [24]  213 	pop	ar3
      00154C 50 32            [24]  214 	jnc	00103$
                                    215 ;	cbfifo.c:26: cb_buffer[write_index++] = *data++;
      00154E C0 03            [24]  216 	push	ar3
      001550 C0 04            [24]  217 	push	ar4
      001552 90 15 D7         [24]  218 	mov	dptr,#_write_index
      001555 E8               [12]  219 	mov	a,r0
      001556 04               [12]  220 	inc	a
      001557 F0               [24]  221 	movx	@dptr,a
      001558 E8               [12]  222 	mov	a,r0
      001559 24 F5            [12]  223 	add	a,#_cb_buffer
      00155B F8               [12]  224 	mov	r0,a
      00155C E4               [12]  225 	clr	a
      00155D 34 14            [12]  226 	addc	a,#(_cb_buffer >> 8)
      00155F FC               [12]  227 	mov	r4,a
      001560 8D 82            [24]  228 	mov	dpl,r5
      001562 8E 83            [24]  229 	mov	dph,r6
      001564 8F F0            [24]  230 	mov	b,r7
      001566 12 24 D1         [24]  231 	lcall	__gptrget
      001569 FB               [12]  232 	mov	r3,a
      00156A A3               [24]  233 	inc	dptr
      00156B AD 82            [24]  234 	mov	r5,dpl
      00156D AE 83            [24]  235 	mov	r6,dph
      00156F 88 82            [24]  236 	mov	dpl,r0
      001571 8C 83            [24]  237 	mov	dph,r4
      001573 EB               [12]  238 	mov	a,r3
      001574 F0               [24]  239 	movx	@dptr,a
                                    240 ;	cbfifo.c:24: for (i = 0; i < nbyte && write_index < end_index; i++)
      001575 09               [12]  241 	inc	r1
      001576 B9 00 01         [24]  242 	cjne	r1,#0x00,00130$
      001579 0A               [12]  243 	inc	r2
      00157A                        244 00130$:
      00157A D0 04            [24]  245 	pop	ar4
      00157C D0 03            [24]  246 	pop	ar3
      00157E 80 A0            [24]  247 	sjmp	00106$
      001580                        248 00103$:
                                    249 ;	cbfifo.c:29: return (size_t)i;
      001580 89 82            [24]  250 	mov	dpl,r1
      001582 8A 83            [24]  251 	mov	dph,r2
                                    252 ;	cbfifo.c:30: }
      001584 22               [24]  253 	ret
                                    254 ;------------------------------------------------------------
                                    255 ;Allocation info for local variables in function 'cbfifo_dequeue'
                                    256 ;------------------------------------------------------------
                                    257 ;nbyte                     Allocated with name '_cbfifo_dequeue_PARM_2'
                                    258 ;buf                       Allocated with name '_cbfifo_dequeue_buf_65536_71'
                                    259 ;data                      Allocated with name '_cbfifo_dequeue_data_65537_73'
                                    260 ;i                         Allocated with name '_cbfifo_dequeue_i_65537_73'
                                    261 ;temp_write_index          Allocated with name '_cbfifo_dequeue_temp_write_index_131073_77'
                                    262 ;j                         Allocated with name '_cbfifo_dequeue_j_196609_78'
                                    263 ;sloc0                     Allocated with name '_cbfifo_dequeue_sloc0_1_0'
                                    264 ;sloc1                     Allocated with name '_cbfifo_dequeue_sloc1_1_0'
                                    265 ;sloc2                     Allocated with name '_cbfifo_dequeue_sloc2_1_0'
                                    266 ;------------------------------------------------------------
                                    267 ;	cbfifo.c:32: size_t cbfifo_dequeue(void *buf, size_t nbyte)
                                    268 ;	-----------------------------------------
                                    269 ;	 function cbfifo_dequeue
                                    270 ;	-----------------------------------------
      001585                        271 _cbfifo_dequeue:
      001585 AF F0            [24]  272 	mov	r7,b
      001587 AE 83            [24]  273 	mov	r6,dph
      001589 E5 82            [12]  274 	mov	a,dpl
      00158B 90 15 7C         [24]  275 	mov	dptr,#_cbfifo_dequeue_buf_65536_71
      00158E F0               [24]  276 	movx	@dptr,a
      00158F EE               [12]  277 	mov	a,r6
      001590 A3               [24]  278 	inc	dptr
      001591 F0               [24]  279 	movx	@dptr,a
      001592 EF               [12]  280 	mov	a,r7
      001593 A3               [24]  281 	inc	dptr
      001594 F0               [24]  282 	movx	@dptr,a
                                    283 ;	cbfifo.c:35: if (buf == NULL)
      001595 90 15 7C         [24]  284 	mov	dptr,#_cbfifo_dequeue_buf_65536_71
      001598 E0               [24]  285 	movx	a,@dptr
      001599 FD               [12]  286 	mov	r5,a
      00159A A3               [24]  287 	inc	dptr
      00159B E0               [24]  288 	movx	a,@dptr
      00159C FE               [12]  289 	mov	r6,a
      00159D A3               [24]  290 	inc	dptr
      00159E E0               [24]  291 	movx	a,@dptr
      00159F FF               [12]  292 	mov	r7,a
      0015A0 90 15 7C         [24]  293 	mov	dptr,#_cbfifo_dequeue_buf_65536_71
      0015A3 E0               [24]  294 	movx	a,@dptr
      0015A4 F5 F0            [12]  295 	mov	b,a
      0015A6 A3               [24]  296 	inc	dptr
      0015A7 E0               [24]  297 	movx	a,@dptr
      0015A8 45 F0            [12]  298 	orl	a,b
      0015AA 70 04            [24]  299 	jnz	00102$
                                    300 ;	cbfifo.c:36: return -1;
      0015AC 90 FF FF         [24]  301 	mov	dptr,#0xffff
      0015AF 22               [24]  302 	ret
      0015B0                        303 00102$:
                                    304 ;	cbfifo.c:38: uint8_t *data = buf;
                                    305 ;	cbfifo.c:42: for (i = 0; i < nbyte; i++)
      0015B0 90 15 7A         [24]  306 	mov	dptr,#_cbfifo_dequeue_PARM_2
      0015B3 E0               [24]  307 	movx	a,@dptr
      0015B4 FB               [12]  308 	mov	r3,a
      0015B5 A3               [24]  309 	inc	dptr
      0015B6 E0               [24]  310 	movx	a,@dptr
      0015B7 FC               [12]  311 	mov	r4,a
      0015B8 79 00            [12]  312 	mov	r1,#0x00
      0015BA 7A 00            [12]  313 	mov	r2,#0x00
      0015BC                        314 00114$:
      0015BC C0 05            [24]  315 	push	ar5
      0015BE C0 06            [24]  316 	push	ar6
      0015C0 C0 07            [24]  317 	push	ar7
      0015C2 89 00            [24]  318 	mov	ar0,r1
      0015C4 8A 07            [24]  319 	mov	ar7,r2
      0015C6 C3               [12]  320 	clr	c
      0015C7 E8               [12]  321 	mov	a,r0
      0015C8 9B               [12]  322 	subb	a,r3
      0015C9 EF               [12]  323 	mov	a,r7
      0015CA 9C               [12]  324 	subb	a,r4
      0015CB D0 07            [24]  325 	pop	ar7
      0015CD D0 06            [24]  326 	pop	ar6
      0015CF D0 05            [24]  327 	pop	ar5
      0015D1 50 43            [24]  328 	jnc	00129$
                                    329 ;	cbfifo.c:45: if (read_index == write_index)
      0015D3 C0 03            [24]  330 	push	ar3
      0015D5 C0 04            [24]  331 	push	ar4
      0015D7 90 15 D6         [24]  332 	mov	dptr,#_read_index
      0015DA E0               [24]  333 	movx	a,@dptr
      0015DB F8               [12]  334 	mov	r0,a
      0015DC 90 15 D7         [24]  335 	mov	dptr,#_write_index
      0015DF E0               [24]  336 	movx	a,@dptr
      0015E0 FC               [12]  337 	mov	r4,a
      0015E1 E8               [12]  338 	mov	a,r0
      0015E2 B5 04 06         [24]  339 	cjne	a,ar4,00157$
      0015E5 D0 04            [24]  340 	pop	ar4
      0015E7 D0 03            [24]  341 	pop	ar3
      0015E9 80 2B            [24]  342 	sjmp	00129$
      0015EB                        343 00157$:
      0015EB D0 04            [24]  344 	pop	ar4
      0015ED D0 03            [24]  345 	pop	ar3
                                    346 ;	cbfifo.c:50: *data++ = cb_buffer[i];
      0015EF E9               [12]  347 	mov	a,r1
      0015F0 24 F5            [12]  348 	add	a,#_cb_buffer
      0015F2 F5 82            [12]  349 	mov	dpl,a
      0015F4 EA               [12]  350 	mov	a,r2
      0015F5 34 14            [12]  351 	addc	a,#(_cb_buffer >> 8)
      0015F7 F5 83            [12]  352 	mov	dph,a
      0015F9 E0               [24]  353 	movx	a,@dptr
      0015FA 8D 82            [24]  354 	mov	dpl,r5
      0015FC 8E 83            [24]  355 	mov	dph,r6
      0015FE 8F F0            [24]  356 	mov	b,r7
      001600 12 18 84         [24]  357 	lcall	__gptrput
      001603 A3               [24]  358 	inc	dptr
      001604 AD 82            [24]  359 	mov	r5,dpl
      001606 AE 83            [24]  360 	mov	r6,dph
                                    361 ;	cbfifo.c:52: read_index++;
      001608 90 15 D6         [24]  362 	mov	dptr,#_read_index
      00160B E0               [24]  363 	movx	a,@dptr
      00160C 24 01            [12]  364 	add	a,#0x01
      00160E F0               [24]  365 	movx	@dptr,a
                                    366 ;	cbfifo.c:42: for (i = 0; i < nbyte; i++)
      00160F 09               [12]  367 	inc	r1
                                    368 ;	cbfifo.c:56: next_step:
      001610 B9 00 A9         [24]  369 	cjne	r1,#0x00,00114$
      001613 0A               [12]  370 	inc	r2
      001614 80 A6            [24]  371 	sjmp	00114$
      001616                        372 00129$:
      001616 90 15 7F         [24]  373 	mov	dptr,#_cbfifo_dequeue_i_65537_73
      001619 E9               [12]  374 	mov	a,r1
      00161A F0               [24]  375 	movx	@dptr,a
      00161B EA               [12]  376 	mov	a,r2
      00161C A3               [24]  377 	inc	dptr
      00161D F0               [24]  378 	movx	@dptr,a
                                    379 ;	cbfifo.c:57: if (write_index > read_index)
      00161E 90 15 D7         [24]  380 	mov	dptr,#_write_index
      001621 E0               [24]  381 	movx	a,@dptr
      001622 FF               [12]  382 	mov	r7,a
      001623 90 15 D6         [24]  383 	mov	dptr,#_read_index
      001626 E0               [24]  384 	movx	a,@dptr
      001627 FE               [12]  385 	mov	r6,a
      001628 C3               [12]  386 	clr	c
      001629 9F               [12]  387 	subb	a,r7
      00162A 50 63            [24]  388 	jnc	00111$
                                    389 ;	cbfifo.c:59: size_t temp_write_index = write_index;
      00162C 8F 1C            [24]  390 	mov	_cbfifo_dequeue_sloc1_1_0,r7
      00162E 75 1D 00         [24]  391 	mov	(_cbfifo_dequeue_sloc1_1_0 + 1),#0x00
                                    392 ;	cbfifo.c:60: for (int j = 0; j < temp_write_index - read_index; j++)
      001631 7A 00            [12]  393 	mov	r2,#0x00
      001633 7B 00            [12]  394 	mov	r3,#0x00
      001635                        395 00117$:
      001635 90 15 D6         [24]  396 	mov	dptr,#_read_index
      001638 E0               [24]  397 	movx	a,@dptr
      001639 F9               [12]  398 	mov	r1,a
      00163A 89 1A            [24]  399 	mov	_cbfifo_dequeue_sloc0_1_0,r1
      00163C 75 1B 00         [24]  400 	mov	(_cbfifo_dequeue_sloc0_1_0 + 1),#0x00
      00163F A8 1A            [24]  401 	mov	r0,_cbfifo_dequeue_sloc0_1_0
      001641 AD 1B            [24]  402 	mov	r5,(_cbfifo_dequeue_sloc0_1_0 + 1)
      001643 E5 1C            [12]  403 	mov	a,_cbfifo_dequeue_sloc1_1_0
      001645 C3               [12]  404 	clr	c
      001646 98               [12]  405 	subb	a,r0
      001647 F5 1E            [12]  406 	mov	_cbfifo_dequeue_sloc2_1_0,a
      001649 E5 1D            [12]  407 	mov	a,(_cbfifo_dequeue_sloc1_1_0 + 1)
      00164B 9D               [12]  408 	subb	a,r5
      00164C F5 1F            [12]  409 	mov	(_cbfifo_dequeue_sloc2_1_0 + 1),a
      00164E 8A 04            [24]  410 	mov	ar4,r2
      001650 8B 05            [24]  411 	mov	ar5,r3
      001652 C3               [12]  412 	clr	c
      001653 EC               [12]  413 	mov	a,r4
      001654 95 1E            [12]  414 	subb	a,_cbfifo_dequeue_sloc2_1_0
      001656 ED               [12]  415 	mov	a,r5
      001657 95 1F            [12]  416 	subb	a,(_cbfifo_dequeue_sloc2_1_0 + 1)
      001659 50 2B            [24]  417 	jnc	00107$
                                    418 ;	cbfifo.c:62: cb_buffer[j] = cb_buffer[j + read_index];
      00165B EA               [12]  419 	mov	a,r2
      00165C 24 F5            [12]  420 	add	a,#_cb_buffer
      00165E F5 1E            [12]  421 	mov	_cbfifo_dequeue_sloc2_1_0,a
      001660 EB               [12]  422 	mov	a,r3
      001661 34 14            [12]  423 	addc	a,#(_cb_buffer >> 8)
      001663 F5 1F            [12]  424 	mov	(_cbfifo_dequeue_sloc2_1_0 + 1),a
      001665 E5 1A            [12]  425 	mov	a,_cbfifo_dequeue_sloc0_1_0
      001667 2A               [12]  426 	add	a,r2
      001668 F8               [12]  427 	mov	r0,a
      001669 E5 1B            [12]  428 	mov	a,(_cbfifo_dequeue_sloc0_1_0 + 1)
      00166B 3B               [12]  429 	addc	a,r3
      00166C FD               [12]  430 	mov	r5,a
      00166D E8               [12]  431 	mov	a,r0
      00166E 24 F5            [12]  432 	add	a,#_cb_buffer
      001670 F5 82            [12]  433 	mov	dpl,a
      001672 ED               [12]  434 	mov	a,r5
      001673 34 14            [12]  435 	addc	a,#(_cb_buffer >> 8)
      001675 F5 83            [12]  436 	mov	dph,a
      001677 E0               [24]  437 	movx	a,@dptr
      001678 85 1E 82         [24]  438 	mov	dpl,_cbfifo_dequeue_sloc2_1_0
      00167B 85 1F 83         [24]  439 	mov	dph,(_cbfifo_dequeue_sloc2_1_0 + 1)
      00167E F0               [24]  440 	movx	@dptr,a
                                    441 ;	cbfifo.c:60: for (int j = 0; j < temp_write_index - read_index; j++)
      00167F 0A               [12]  442 	inc	r2
      001680 BA 00 B2         [24]  443 	cjne	r2,#0x00,00117$
      001683 0B               [12]  444 	inc	r3
      001684 80 AF            [24]  445 	sjmp	00117$
      001686                        446 00107$:
                                    447 ;	cbfifo.c:65: write_index = write_index - read_index;
      001686 90 15 D7         [24]  448 	mov	dptr,#_write_index
      001689 E0               [24]  449 	movx	a,@dptr
      00168A C3               [12]  450 	clr	c
      00168B 99               [12]  451 	subb	a,r1
      00168C F0               [24]  452 	movx	@dptr,a
      00168D 80 09            [24]  453 	sjmp	00112$
      00168F                        454 00111$:
                                    455 ;	cbfifo.c:68: else if (write_index == read_index)
      00168F EF               [12]  456 	mov	a,r7
      001690 B5 06 05         [24]  457 	cjne	a,ar6,00112$
                                    458 ;	cbfifo.c:70: write_index = 0;
      001693 90 15 D7         [24]  459 	mov	dptr,#_write_index
      001696 E4               [12]  460 	clr	a
      001697 F0               [24]  461 	movx	@dptr,a
      001698                        462 00112$:
                                    463 ;	cbfifo.c:73: read_index = 0;
      001698 90 15 D6         [24]  464 	mov	dptr,#_read_index
      00169B E4               [12]  465 	clr	a
      00169C F0               [24]  466 	movx	@dptr,a
                                    467 ;	cbfifo.c:75: return (size_t)i;
      00169D 90 15 7F         [24]  468 	mov	dptr,#_cbfifo_dequeue_i_65537_73
      0016A0 E0               [24]  469 	movx	a,@dptr
      0016A1 FE               [12]  470 	mov	r6,a
      0016A2 A3               [24]  471 	inc	dptr
      0016A3 E0               [24]  472 	movx	a,@dptr
                                    473 ;	cbfifo.c:76: }
      0016A4 8E 82            [24]  474 	mov	dpl,r6
      0016A6 F5 83            [12]  475 	mov	dph,a
      0016A8 22               [24]  476 	ret
                                    477 ;------------------------------------------------------------
                                    478 ;Allocation info for local variables in function 'cbfifo_length'
                                    479 ;------------------------------------------------------------
                                    480 ;	cbfifo.c:78: size_t cbfifo_length()
                                    481 ;	-----------------------------------------
                                    482 ;	 function cbfifo_length
                                    483 ;	-----------------------------------------
      0016A9                        484 _cbfifo_length:
                                    485 ;	cbfifo.c:81: return (size_t)write_index;
      0016A9 90 15 D7         [24]  486 	mov	dptr,#_write_index
      0016AC E0               [24]  487 	movx	a,@dptr
      0016AD FF               [12]  488 	mov	r7,a
      0016AE 7E 00            [12]  489 	mov	r6,#0x00
      0016B0 8F 82            [24]  490 	mov	dpl,r7
      0016B2 8E 83            [24]  491 	mov	dph,r6
                                    492 ;	cbfifo.c:82: }
      0016B4 22               [24]  493 	ret
                                    494 ;------------------------------------------------------------
                                    495 ;Allocation info for local variables in function 'cbfifo_capacity'
                                    496 ;------------------------------------------------------------
                                    497 ;	cbfifo.c:84: size_t cbfifo_capacity()
                                    498 ;	-----------------------------------------
                                    499 ;	 function cbfifo_capacity
                                    500 ;	-----------------------------------------
      0016B5                        501 _cbfifo_capacity:
                                    502 ;	cbfifo.c:87: return (size_t)128;
      0016B5 90 00 80         [24]  503 	mov	dptr,#0x0080
                                    504 ;	cbfifo.c:88: }
      0016B8 22               [24]  505 	ret
                                    506 	.area CSEG    (CODE)
                                    507 	.area CONST   (CODE)
                                    508 	.area XINIT   (CODE)
      003094                        509 __xinit__read_index:
      003094 00                     510 	.db #0x00	; 0
      003095                        511 __xinit__write_index:
      003095 00                     512 	.db #0x00	; 0
      003096                        513 __xinit__end_index:
      003096 80                     514 	.db #0x80	; 128
                                    515 	.area CABS    (ABS,CODE)
