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
                                     12 	.globl _i2c_write_random
                                     13 	.globl _i2c_read_random
                                     14 	.globl _getchar
                                     15 	.globl _printf
                                     16 ;--------------------------------------------------------
                                     17 ; special function registers
                                     18 ;--------------------------------------------------------
                                     19 	.area RSEG    (ABS,DATA)
      000000                         20 	.org 0x0000
                                     21 ;--------------------------------------------------------
                                     22 ; special function bits
                                     23 ;--------------------------------------------------------
                                     24 	.area RSEG    (ABS,DATA)
      000000                         25 	.org 0x0000
                                     26 ;--------------------------------------------------------
                                     27 ; overlayable register banks
                                     28 ;--------------------------------------------------------
                                     29 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         30 	.ds 8
                                     31 ;--------------------------------------------------------
                                     32 ; internal ram data
                                     33 ;--------------------------------------------------------
                                     34 	.area DSEG    (DATA)
                                     35 ;--------------------------------------------------------
                                     36 ; overlayable items in internal ram 
                                     37 ;--------------------------------------------------------
                                     38 ;--------------------------------------------------------
                                     39 ; indirectly addressable internal ram data
                                     40 ;--------------------------------------------------------
                                     41 	.area ISEG    (DATA)
                                     42 ;--------------------------------------------------------
                                     43 ; absolute internal ram data
                                     44 ;--------------------------------------------------------
                                     45 	.area IABS    (ABS,DATA)
                                     46 	.area IABS    (ABS,DATA)
                                     47 ;--------------------------------------------------------
                                     48 ; bit data
                                     49 ;--------------------------------------------------------
                                     50 	.area BSEG    (BIT)
                                     51 ;--------------------------------------------------------
                                     52 ; paged external ram data
                                     53 ;--------------------------------------------------------
                                     54 	.area PSEG    (PAG,XDATA)
                                     55 ;--------------------------------------------------------
                                     56 ; external ram data
                                     57 ;--------------------------------------------------------
                                     58 	.area XSEG    (XDATA)
                                     59 ;--------------------------------------------------------
                                     60 ; absolute external ram data
                                     61 ;--------------------------------------------------------
                                     62 	.area XABS    (ABS,XDATA)
                                     63 ;--------------------------------------------------------
                                     64 ; external initialized ram data
                                     65 ;--------------------------------------------------------
                                     66 	.area XISEG   (XDATA)
                                     67 	.area HOME    (CODE)
                                     68 	.area GSINIT0 (CODE)
                                     69 	.area GSINIT1 (CODE)
                                     70 	.area GSINIT2 (CODE)
                                     71 	.area GSINIT3 (CODE)
                                     72 	.area GSINIT4 (CODE)
                                     73 	.area GSINIT5 (CODE)
                                     74 	.area GSINIT  (CODE)
                                     75 	.area GSFINAL (CODE)
                                     76 	.area CSEG    (CODE)
                                     77 ;--------------------------------------------------------
                                     78 ; global & static initialisations
                                     79 ;--------------------------------------------------------
                                     80 	.area HOME    (CODE)
                                     81 	.area GSINIT  (CODE)
                                     82 	.area GSFINAL (CODE)
                                     83 	.area GSINIT  (CODE)
                                     84 ;--------------------------------------------------------
                                     85 ; Home
                                     86 ;--------------------------------------------------------
                                     87 	.area HOME    (CODE)
                                     88 	.area HOME    (CODE)
                                     89 ;--------------------------------------------------------
                                     90 ; code
                                     91 ;--------------------------------------------------------
                                     92 	.area CSEG    (CODE)
                                     93 ;------------------------------------------------------------
                                     94 ;Allocation info for local variables in function 'eeprom_menu'
                                     95 ;------------------------------------------------------------
                                     96 ;i                         Allocated with name '_eeprom_menu_i_131072_49'
                                     97 ;r                         Allocated with name '_eeprom_menu_r_65537_51'
                                     98 ;k                         Allocated with name '_eeprom_menu_k_131073_52'
                                     99 ;a                         Allocated with name '_eeprom_menu_a_196609_53'
                                    100 ;------------------------------------------------------------
                                    101 ;	eeprom.c:6: void eeprom_menu()
                                    102 ;	-----------------------------------------
                                    103 ;	 function eeprom_menu
                                    104 ;	-----------------------------------------
      0014E2                        105 _eeprom_menu:
                           000007   106 	ar7 = 0x07
                           000006   107 	ar6 = 0x06
                           000005   108 	ar5 = 0x05
                           000004   109 	ar4 = 0x04
                           000003   110 	ar3 = 0x03
                           000002   111 	ar2 = 0x02
                           000001   112 	ar1 = 0x01
                           000000   113 	ar0 = 0x00
                                    114 ;	eeprom.c:8: for (int i = 0; i < 256; i++)
      0014E2 7E 00            [12]  115 	mov	r6,#0x00
      0014E4 7F 00            [12]  116 	mov	r7,#0x00
      0014E6                        117 00107$:
      0014E6 C3               [12]  118 	clr	c
      0014E7 EF               [12]  119 	mov	a,r7
      0014E8 64 80            [12]  120 	xrl	a,#0x80
      0014EA 94 81            [12]  121 	subb	a,#0x81
      0014EC 50 21            [24]  122 	jnc	00101$
                                    123 ;	eeprom.c:10: i2c_write_random(0, i, i);
      0014EE 8E 05            [24]  124 	mov	ar5,r6
      0014F0 90 00 02         [24]  125 	mov	dptr,#_i2c_write_random_PARM_2
      0014F3 ED               [12]  126 	mov	a,r5
      0014F4 F0               [24]  127 	movx	@dptr,a
      0014F5 90 00 03         [24]  128 	mov	dptr,#_i2c_write_random_PARM_3
      0014F8 ED               [12]  129 	mov	a,r5
      0014F9 F0               [24]  130 	movx	@dptr,a
      0014FA 75 82 00         [24]  131 	mov	dpl,#0x00
      0014FD C0 07            [24]  132 	push	ar7
      0014FF C0 06            [24]  133 	push	ar6
      001501 12 02 AE         [24]  134 	lcall	_i2c_write_random
      001504 D0 06            [24]  135 	pop	ar6
      001506 D0 07            [24]  136 	pop	ar7
                                    137 ;	eeprom.c:8: for (int i = 0; i < 256; i++)
      001508 0E               [12]  138 	inc	r6
      001509 BE 00 DA         [24]  139 	cjne	r6,#0x00,00107$
      00150C 0F               [12]  140 	inc	r7
      00150D 80 D7            [24]  141 	sjmp	00107$
      00150F                        142 00101$:
                                    143 ;	eeprom.c:13: unsigned char r = getchar();
      00150F 12 05 32         [24]  144 	lcall	_getchar
                                    145 ;	eeprom.c:15: for (int k = 0; k < 256; k++)
      001512 7E 00            [12]  146 	mov	r6,#0x00
      001514 7F 00            [12]  147 	mov	r7,#0x00
      001516                        148 00110$:
      001516 C3               [12]  149 	clr	c
      001517 EF               [12]  150 	mov	a,r7
      001518 64 80            [12]  151 	xrl	a,#0x80
      00151A 94 81            [12]  152 	subb	a,#0x81
      00151C 50 43            [24]  153 	jnc	00104$
                                    154 ;	eeprom.c:17: unsigned char a = i2c_read_random(0, k);
      00151E 90 00 05         [24]  155 	mov	dptr,#_i2c_read_random_PARM_2
      001521 EE               [12]  156 	mov	a,r6
      001522 F0               [24]  157 	movx	@dptr,a
      001523 75 82 00         [24]  158 	mov	dpl,#0x00
      001526 C0 07            [24]  159 	push	ar7
      001528 C0 06            [24]  160 	push	ar6
      00152A 12 02 F9         [24]  161 	lcall	_i2c_read_random
      00152D AD 82            [24]  162 	mov	r5,dpl
      00152F D0 06            [24]  163 	pop	ar6
      001531 D0 07            [24]  164 	pop	ar7
                                    165 ;	eeprom.c:18: printf("loc ->%d val is -> %x \n\r", k, a);
      001533 7C 00            [12]  166 	mov	r4,#0x00
      001535 C0 07            [24]  167 	push	ar7
      001537 C0 06            [24]  168 	push	ar6
      001539 C0 05            [24]  169 	push	ar5
      00153B C0 04            [24]  170 	push	ar4
      00153D C0 06            [24]  171 	push	ar6
      00153F C0 07            [24]  172 	push	ar7
      001541 74 42            [12]  173 	mov	a,#___str_0
      001543 C0 E0            [24]  174 	push	acc
      001545 74 2F            [12]  175 	mov	a,#(___str_0 >> 8)
      001547 C0 E0            [24]  176 	push	acc
      001549 74 80            [12]  177 	mov	a,#0x80
      00154B C0 E0            [24]  178 	push	acc
      00154D 12 1A 23         [24]  179 	lcall	_printf
      001550 E5 81            [12]  180 	mov	a,sp
      001552 24 F9            [12]  181 	add	a,#0xf9
      001554 F5 81            [12]  182 	mov	sp,a
      001556 D0 06            [24]  183 	pop	ar6
      001558 D0 07            [24]  184 	pop	ar7
                                    185 ;	eeprom.c:15: for (int k = 0; k < 256; k++)
      00155A 0E               [12]  186 	inc	r6
                                    187 ;	eeprom.c:21: while (1)
      00155B BE 00 B8         [24]  188 	cjne	r6,#0x00,00110$
      00155E 0F               [12]  189 	inc	r7
      00155F 80 B5            [24]  190 	sjmp	00110$
      001561                        191 00104$:
                                    192 ;	eeprom.c:24: }
      001561 80 FE            [24]  193 	sjmp	00104$
                                    194 	.area CSEG    (CODE)
                                    195 	.area CONST   (CODE)
                                    196 	.area CONST   (CODE)
      002F42                        197 ___str_0:
      002F42 6C 6F 63 20 2D 3E 25   198 	.ascii "loc ->%d val is -> %x "
             64 20 76 61 6C 20 69
             73 20 2D 3E 20 25 78
             20
      002F58 0A                     199 	.db 0x0a
      002F59 0D                     200 	.db 0x0d
      002F5A 00                     201 	.db 0x00
                                    202 	.area CSEG    (CODE)
                                    203 	.area XINIT   (CODE)
                                    204 	.area CABS    (ABS,CODE)
