                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module program
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl __sdcc_external_startup
                                     12 	.globl _idle_interrupt
                                     13 	.globl _pca_interrupt
                                     14 	.globl _main
                                     15 	.globl _asmtest
                                     16 	.globl _printf
                                     17 	.globl _free
                                     18 	.globl _malloc
                                     19 	.globl _TF1
                                     20 	.globl _TR1
                                     21 	.globl _TF0
                                     22 	.globl _TR0
                                     23 	.globl _IE1
                                     24 	.globl _IT1
                                     25 	.globl _IE0
                                     26 	.globl _IT0
                                     27 	.globl _SM0
                                     28 	.globl _SM1
                                     29 	.globl _SM2
                                     30 	.globl _REN
                                     31 	.globl _TB8
                                     32 	.globl _RB8
                                     33 	.globl _TI
                                     34 	.globl _RI
                                     35 	.globl _CY
                                     36 	.globl _AC
                                     37 	.globl _F0
                                     38 	.globl _RS1
                                     39 	.globl _RS0
                                     40 	.globl _OV
                                     41 	.globl _F1
                                     42 	.globl _P
                                     43 	.globl _RD
                                     44 	.globl _WR
                                     45 	.globl _T1
                                     46 	.globl _T0
                                     47 	.globl _INT1
                                     48 	.globl _INT0
                                     49 	.globl _TXD0
                                     50 	.globl _TXD
                                     51 	.globl _RXD0
                                     52 	.globl _RXD
                                     53 	.globl _P3_7
                                     54 	.globl _P3_6
                                     55 	.globl _P3_5
                                     56 	.globl _P3_4
                                     57 	.globl _P3_3
                                     58 	.globl _P3_2
                                     59 	.globl _P3_1
                                     60 	.globl _P3_0
                                     61 	.globl _P2_7
                                     62 	.globl _P2_6
                                     63 	.globl _P2_5
                                     64 	.globl _P2_4
                                     65 	.globl _P2_3
                                     66 	.globl _P2_2
                                     67 	.globl _P2_1
                                     68 	.globl _P2_0
                                     69 	.globl _P1_7
                                     70 	.globl _P1_6
                                     71 	.globl _P1_5
                                     72 	.globl _P1_4
                                     73 	.globl _P1_3
                                     74 	.globl _P1_2
                                     75 	.globl _P1_1
                                     76 	.globl _P1_0
                                     77 	.globl _P0_7
                                     78 	.globl _P0_6
                                     79 	.globl _P0_5
                                     80 	.globl _P0_4
                                     81 	.globl _P0_3
                                     82 	.globl _P0_2
                                     83 	.globl _P0_1
                                     84 	.globl _P0_0
                                     85 	.globl _PS
                                     86 	.globl _PT1
                                     87 	.globl _PX1
                                     88 	.globl _PT0
                                     89 	.globl _PX0
                                     90 	.globl _EA
                                     91 	.globl _ES
                                     92 	.globl _ET1
                                     93 	.globl _EX1
                                     94 	.globl _ET0
                                     95 	.globl _EX0
                                     96 	.globl _BREG_F7
                                     97 	.globl _BREG_F6
                                     98 	.globl _BREG_F5
                                     99 	.globl _BREG_F4
                                    100 	.globl _BREG_F3
                                    101 	.globl _BREG_F2
                                    102 	.globl _BREG_F1
                                    103 	.globl _BREG_F0
                                    104 	.globl _P5_7
                                    105 	.globl _P5_6
                                    106 	.globl _P5_5
                                    107 	.globl _P5_4
                                    108 	.globl _P5_3
                                    109 	.globl _P5_2
                                    110 	.globl _P5_1
                                    111 	.globl _P5_0
                                    112 	.globl _P4_7
                                    113 	.globl _P4_6
                                    114 	.globl _P4_5
                                    115 	.globl _P4_4
                                    116 	.globl _P4_3
                                    117 	.globl _P4_2
                                    118 	.globl _P4_1
                                    119 	.globl _P4_0
                                    120 	.globl _PX0L
                                    121 	.globl _PT0L
                                    122 	.globl _PX1L
                                    123 	.globl _PT1L
                                    124 	.globl _PSL
                                    125 	.globl _PT2L
                                    126 	.globl _PPCL
                                    127 	.globl _EC
                                    128 	.globl _CCF0
                                    129 	.globl _CCF1
                                    130 	.globl _CCF2
                                    131 	.globl _CCF3
                                    132 	.globl _CCF4
                                    133 	.globl _CR
                                    134 	.globl _CF
                                    135 	.globl _TF2
                                    136 	.globl _EXF2
                                    137 	.globl _RCLK
                                    138 	.globl _TCLK
                                    139 	.globl _EXEN2
                                    140 	.globl _TR2
                                    141 	.globl _C_T2
                                    142 	.globl _CP_RL2
                                    143 	.globl _T2CON_7
                                    144 	.globl _T2CON_6
                                    145 	.globl _T2CON_5
                                    146 	.globl _T2CON_4
                                    147 	.globl _T2CON_3
                                    148 	.globl _T2CON_2
                                    149 	.globl _T2CON_1
                                    150 	.globl _T2CON_0
                                    151 	.globl _PT2
                                    152 	.globl _ET2
                                    153 	.globl __AUXR
                                    154 	.globl _TMOD
                                    155 	.globl _TL1
                                    156 	.globl _TL0
                                    157 	.globl _TH1
                                    158 	.globl _TH0
                                    159 	.globl _TCON
                                    160 	.globl _SP
                                    161 	.globl _SCON
                                    162 	.globl _SBUF0
                                    163 	.globl _SBUF
                                    164 	.globl _PSW
                                    165 	.globl _PCON
                                    166 	.globl _P3
                                    167 	.globl _P2
                                    168 	.globl _P1
                                    169 	.globl _P0
                                    170 	.globl _IP
                                    171 	.globl _IE
                                    172 	.globl _DP0L
                                    173 	.globl _DPL
                                    174 	.globl _DP0H
                                    175 	.globl _DPH
                                    176 	.globl _B
                                    177 	.globl _ACC
                                    178 	.globl _EECON
                                    179 	.globl _KBF
                                    180 	.globl _KBE
                                    181 	.globl _KBLS
                                    182 	.globl _BRL
                                    183 	.globl _BDRCON
                                    184 	.globl _T2MOD
                                    185 	.globl _SPDAT
                                    186 	.globl _SPSTA
                                    187 	.globl _SPCON
                                    188 	.globl _SADEN
                                    189 	.globl _SADDR
                                    190 	.globl _WDTPRG
                                    191 	.globl _WDTRST
                                    192 	.globl _P5
                                    193 	.globl _P4
                                    194 	.globl _IPH1
                                    195 	.globl _IPL1
                                    196 	.globl _IPH0
                                    197 	.globl _IPL0
                                    198 	.globl _IEN1
                                    199 	.globl _IEN0
                                    200 	.globl _CMOD
                                    201 	.globl _CL
                                    202 	.globl _CH
                                    203 	.globl _CCON
                                    204 	.globl _CCAPM4
                                    205 	.globl _CCAPM3
                                    206 	.globl _CCAPM2
                                    207 	.globl _CCAPM1
                                    208 	.globl _CCAPM0
                                    209 	.globl _CCAP4L
                                    210 	.globl _CCAP3L
                                    211 	.globl _CCAP2L
                                    212 	.globl _CCAP1L
                                    213 	.globl _CCAP0L
                                    214 	.globl _CCAP4H
                                    215 	.globl _CCAP3H
                                    216 	.globl _CCAP2H
                                    217 	.globl _CCAP1H
                                    218 	.globl _CCAP0H
                                    219 	.globl _CKCON1
                                    220 	.globl _CKCON0
                                    221 	.globl _CKRL
                                    222 	.globl _AUXR1
                                    223 	.globl _AUXR
                                    224 	.globl _TH2
                                    225 	.globl _TL2
                                    226 	.globl _RCAP2H
                                    227 	.globl _RCAP2L
                                    228 	.globl _T2CON
                                    229 	.globl _watchdog_flag
                                    230 	.globl _global_var_test
                                    231 	.globl _buffers_array
                                    232 	.globl _program_stats
                                    233 	.globl _DEBUG_LOC
                                    234 	.globl _user_interface_heap
                                    235 	.globl _user_interface_PCA
                                    236 	.globl _pca_falling_edge
                                    237 	.globl _pca_software_timer
                                    238 	.globl _pca_high_speed
                                    239 	.globl _pca_pwm
                                    240 	.globl _pca_watchdog
                                    241 	.globl _pca_idle
                                    242 	.globl _pca_pdown
                                    243 	.globl _fclk_lowest
                                    244 	.globl _main_menu
                                    245 	.globl _asm_clang
                                    246 	.globl _at_clear_all_buffers
                                    247 	.globl _delete_buffer
                                    248 	.globl _print_pca_menu
                                    249 	.globl _print_heap_menu
                                    250 	.globl _create_new_buffer
                                    251 	.globl _create_initial_buffers
                                    252 	.globl _enter_chars
                                    253 	.globl _dump_buff_zero_ascii
                                    254 	.globl _dump_buff_zero_hex
                                    255 	.globl _print_heap_stats
                                    256 	.globl _print_all_buffers
                                    257 	.globl _get_number
                                    258 	.globl _get_num_helper
                                    259 	.globl _putchar
                                    260 	.globl _getchar
                                    261 	.globl _dataout
                                    262 ;--------------------------------------------------------
                                    263 ; special function registers
                                    264 ;--------------------------------------------------------
                                    265 	.area RSEG    (ABS,DATA)
      000000                        266 	.org 0x0000
                           0000C8   267 _T2CON	=	0x00c8
                           0000CA   268 _RCAP2L	=	0x00ca
                           0000CB   269 _RCAP2H	=	0x00cb
                           0000CC   270 _TL2	=	0x00cc
                           0000CD   271 _TH2	=	0x00cd
                           00008E   272 _AUXR	=	0x008e
                           0000A2   273 _AUXR1	=	0x00a2
                           000097   274 _CKRL	=	0x0097
                           00008F   275 _CKCON0	=	0x008f
                           0000AF   276 _CKCON1	=	0x00af
                           0000FA   277 _CCAP0H	=	0x00fa
                           0000FB   278 _CCAP1H	=	0x00fb
                           0000FC   279 _CCAP2H	=	0x00fc
                           0000FD   280 _CCAP3H	=	0x00fd
                           0000FE   281 _CCAP4H	=	0x00fe
                           0000EA   282 _CCAP0L	=	0x00ea
                           0000EB   283 _CCAP1L	=	0x00eb
                           0000EC   284 _CCAP2L	=	0x00ec
                           0000ED   285 _CCAP3L	=	0x00ed
                           0000EE   286 _CCAP4L	=	0x00ee
                           0000DA   287 _CCAPM0	=	0x00da
                           0000DB   288 _CCAPM1	=	0x00db
                           0000DC   289 _CCAPM2	=	0x00dc
                           0000DD   290 _CCAPM3	=	0x00dd
                           0000DE   291 _CCAPM4	=	0x00de
                           0000D8   292 _CCON	=	0x00d8
                           0000F9   293 _CH	=	0x00f9
                           0000E9   294 _CL	=	0x00e9
                           0000D9   295 _CMOD	=	0x00d9
                           0000A8   296 _IEN0	=	0x00a8
                           0000B1   297 _IEN1	=	0x00b1
                           0000B8   298 _IPL0	=	0x00b8
                           0000B7   299 _IPH0	=	0x00b7
                           0000B2   300 _IPL1	=	0x00b2
                           0000B3   301 _IPH1	=	0x00b3
                           0000C0   302 _P4	=	0x00c0
                           0000E8   303 _P5	=	0x00e8
                           0000A6   304 _WDTRST	=	0x00a6
                           0000A7   305 _WDTPRG	=	0x00a7
                           0000A9   306 _SADDR	=	0x00a9
                           0000B9   307 _SADEN	=	0x00b9
                           0000C3   308 _SPCON	=	0x00c3
                           0000C4   309 _SPSTA	=	0x00c4
                           0000C5   310 _SPDAT	=	0x00c5
                           0000C9   311 _T2MOD	=	0x00c9
                           00009B   312 _BDRCON	=	0x009b
                           00009A   313 _BRL	=	0x009a
                           00009C   314 _KBLS	=	0x009c
                           00009D   315 _KBE	=	0x009d
                           00009E   316 _KBF	=	0x009e
                           0000D2   317 _EECON	=	0x00d2
                           0000E0   318 _ACC	=	0x00e0
                           0000F0   319 _B	=	0x00f0
                           000083   320 _DPH	=	0x0083
                           000083   321 _DP0H	=	0x0083
                           000082   322 _DPL	=	0x0082
                           000082   323 _DP0L	=	0x0082
                           0000A8   324 _IE	=	0x00a8
                           0000B8   325 _IP	=	0x00b8
                           000080   326 _P0	=	0x0080
                           000090   327 _P1	=	0x0090
                           0000A0   328 _P2	=	0x00a0
                           0000B0   329 _P3	=	0x00b0
                           000087   330 _PCON	=	0x0087
                           0000D0   331 _PSW	=	0x00d0
                           000099   332 _SBUF	=	0x0099
                           000099   333 _SBUF0	=	0x0099
                           000098   334 _SCON	=	0x0098
                           000081   335 _SP	=	0x0081
                           000088   336 _TCON	=	0x0088
                           00008C   337 _TH0	=	0x008c
                           00008D   338 _TH1	=	0x008d
                           00008A   339 _TL0	=	0x008a
                           00008B   340 _TL1	=	0x008b
                           000089   341 _TMOD	=	0x0089
                           00008E   342 __AUXR	=	0x008e
                                    343 ;--------------------------------------------------------
                                    344 ; special function bits
                                    345 ;--------------------------------------------------------
                                    346 	.area RSEG    (ABS,DATA)
      000000                        347 	.org 0x0000
                           0000AD   348 _ET2	=	0x00ad
                           0000BD   349 _PT2	=	0x00bd
                           0000C8   350 _T2CON_0	=	0x00c8
                           0000C9   351 _T2CON_1	=	0x00c9
                           0000CA   352 _T2CON_2	=	0x00ca
                           0000CB   353 _T2CON_3	=	0x00cb
                           0000CC   354 _T2CON_4	=	0x00cc
                           0000CD   355 _T2CON_5	=	0x00cd
                           0000CE   356 _T2CON_6	=	0x00ce
                           0000CF   357 _T2CON_7	=	0x00cf
                           0000C8   358 _CP_RL2	=	0x00c8
                           0000C9   359 _C_T2	=	0x00c9
                           0000CA   360 _TR2	=	0x00ca
                           0000CB   361 _EXEN2	=	0x00cb
                           0000CC   362 _TCLK	=	0x00cc
                           0000CD   363 _RCLK	=	0x00cd
                           0000CE   364 _EXF2	=	0x00ce
                           0000CF   365 _TF2	=	0x00cf
                           0000DF   366 _CF	=	0x00df
                           0000DE   367 _CR	=	0x00de
                           0000DC   368 _CCF4	=	0x00dc
                           0000DB   369 _CCF3	=	0x00db
                           0000DA   370 _CCF2	=	0x00da
                           0000D9   371 _CCF1	=	0x00d9
                           0000D8   372 _CCF0	=	0x00d8
                           0000AE   373 _EC	=	0x00ae
                           0000BE   374 _PPCL	=	0x00be
                           0000BD   375 _PT2L	=	0x00bd
                           0000BC   376 _PSL	=	0x00bc
                           0000BB   377 _PT1L	=	0x00bb
                           0000BA   378 _PX1L	=	0x00ba
                           0000B9   379 _PT0L	=	0x00b9
                           0000B8   380 _PX0L	=	0x00b8
                           0000C0   381 _P4_0	=	0x00c0
                           0000C1   382 _P4_1	=	0x00c1
                           0000C2   383 _P4_2	=	0x00c2
                           0000C3   384 _P4_3	=	0x00c3
                           0000C4   385 _P4_4	=	0x00c4
                           0000C5   386 _P4_5	=	0x00c5
                           0000C6   387 _P4_6	=	0x00c6
                           0000C7   388 _P4_7	=	0x00c7
                           0000E8   389 _P5_0	=	0x00e8
                           0000E9   390 _P5_1	=	0x00e9
                           0000EA   391 _P5_2	=	0x00ea
                           0000EB   392 _P5_3	=	0x00eb
                           0000EC   393 _P5_4	=	0x00ec
                           0000ED   394 _P5_5	=	0x00ed
                           0000EE   395 _P5_6	=	0x00ee
                           0000EF   396 _P5_7	=	0x00ef
                           0000F0   397 _BREG_F0	=	0x00f0
                           0000F1   398 _BREG_F1	=	0x00f1
                           0000F2   399 _BREG_F2	=	0x00f2
                           0000F3   400 _BREG_F3	=	0x00f3
                           0000F4   401 _BREG_F4	=	0x00f4
                           0000F5   402 _BREG_F5	=	0x00f5
                           0000F6   403 _BREG_F6	=	0x00f6
                           0000F7   404 _BREG_F7	=	0x00f7
                           0000A8   405 _EX0	=	0x00a8
                           0000A9   406 _ET0	=	0x00a9
                           0000AA   407 _EX1	=	0x00aa
                           0000AB   408 _ET1	=	0x00ab
                           0000AC   409 _ES	=	0x00ac
                           0000AF   410 _EA	=	0x00af
                           0000B8   411 _PX0	=	0x00b8
                           0000B9   412 _PT0	=	0x00b9
                           0000BA   413 _PX1	=	0x00ba
                           0000BB   414 _PT1	=	0x00bb
                           0000BC   415 _PS	=	0x00bc
                           000080   416 _P0_0	=	0x0080
                           000081   417 _P0_1	=	0x0081
                           000082   418 _P0_2	=	0x0082
                           000083   419 _P0_3	=	0x0083
                           000084   420 _P0_4	=	0x0084
                           000085   421 _P0_5	=	0x0085
                           000086   422 _P0_6	=	0x0086
                           000087   423 _P0_7	=	0x0087
                           000090   424 _P1_0	=	0x0090
                           000091   425 _P1_1	=	0x0091
                           000092   426 _P1_2	=	0x0092
                           000093   427 _P1_3	=	0x0093
                           000094   428 _P1_4	=	0x0094
                           000095   429 _P1_5	=	0x0095
                           000096   430 _P1_6	=	0x0096
                           000097   431 _P1_7	=	0x0097
                           0000A0   432 _P2_0	=	0x00a0
                           0000A1   433 _P2_1	=	0x00a1
                           0000A2   434 _P2_2	=	0x00a2
                           0000A3   435 _P2_3	=	0x00a3
                           0000A4   436 _P2_4	=	0x00a4
                           0000A5   437 _P2_5	=	0x00a5
                           0000A6   438 _P2_6	=	0x00a6
                           0000A7   439 _P2_7	=	0x00a7
                           0000B0   440 _P3_0	=	0x00b0
                           0000B1   441 _P3_1	=	0x00b1
                           0000B2   442 _P3_2	=	0x00b2
                           0000B3   443 _P3_3	=	0x00b3
                           0000B4   444 _P3_4	=	0x00b4
                           0000B5   445 _P3_5	=	0x00b5
                           0000B6   446 _P3_6	=	0x00b6
                           0000B7   447 _P3_7	=	0x00b7
                           0000B0   448 _RXD	=	0x00b0
                           0000B0   449 _RXD0	=	0x00b0
                           0000B1   450 _TXD	=	0x00b1
                           0000B1   451 _TXD0	=	0x00b1
                           0000B2   452 _INT0	=	0x00b2
                           0000B3   453 _INT1	=	0x00b3
                           0000B4   454 _T0	=	0x00b4
                           0000B5   455 _T1	=	0x00b5
                           0000B6   456 _WR	=	0x00b6
                           0000B7   457 _RD	=	0x00b7
                           0000D0   458 _P	=	0x00d0
                           0000D1   459 _F1	=	0x00d1
                           0000D2   460 _OV	=	0x00d2
                           0000D3   461 _RS0	=	0x00d3
                           0000D4   462 _RS1	=	0x00d4
                           0000D5   463 _F0	=	0x00d5
                           0000D6   464 _AC	=	0x00d6
                           0000D7   465 _CY	=	0x00d7
                           000098   466 _RI	=	0x0098
                           000099   467 _TI	=	0x0099
                           00009A   468 _RB8	=	0x009a
                           00009B   469 _TB8	=	0x009b
                           00009C   470 _REN	=	0x009c
                           00009D   471 _SM2	=	0x009d
                           00009E   472 _SM1	=	0x009e
                           00009F   473 _SM0	=	0x009f
                           000088   474 _IT0	=	0x0088
                           000089   475 _IE0	=	0x0089
                           00008A   476 _IT1	=	0x008a
                           00008B   477 _IE1	=	0x008b
                           00008C   478 _TR0	=	0x008c
                           00008D   479 _TF0	=	0x008d
                           00008E   480 _TR1	=	0x008e
                           00008F   481 _TF1	=	0x008f
                                    482 ;--------------------------------------------------------
                                    483 ; overlayable register banks
                                    484 ;--------------------------------------------------------
                                    485 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        486 	.ds 8
                                    487 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        488 	.ds 8
                                    489 ;--------------------------------------------------------
                                    490 ; overlayable bit register bank
                                    491 ;--------------------------------------------------------
                                    492 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        493 bits:
      000020                        494 	.ds 1
                           008000   495 	b0 = bits[0]
                           008100   496 	b1 = bits[1]
                           008200   497 	b2 = bits[2]
                           008300   498 	b3 = bits[3]
                           008400   499 	b4 = bits[4]
                           008500   500 	b5 = bits[5]
                           008600   501 	b6 = bits[6]
                           008700   502 	b7 = bits[7]
                                    503 ;--------------------------------------------------------
                                    504 ; internal ram data
                                    505 ;--------------------------------------------------------
                                    506 	.area DSEG    (DATA)
      000010                        507 _delete_buffer_sloc0_1_0:
      000010                        508 	.ds 2
      000012                        509 _delete_buffer_sloc1_1_0:
      000012                        510 	.ds 2
      000014                        511 _delete_buffer_sloc2_1_0:
      000014                        512 	.ds 3
                                    513 ;--------------------------------------------------------
                                    514 ; overlayable items in internal ram 
                                    515 ;--------------------------------------------------------
                                    516 ;--------------------------------------------------------
                                    517 ; Stack segment in internal ram 
                                    518 ;--------------------------------------------------------
                                    519 	.area	SSEG
      00002B                        520 __start__stack:
      00002B                        521 	.ds	1
                                    522 
                                    523 ;--------------------------------------------------------
                                    524 ; indirectly addressable internal ram data
                                    525 ;--------------------------------------------------------
                                    526 	.area ISEG    (DATA)
                                    527 ;--------------------------------------------------------
                                    528 ; absolute internal ram data
                                    529 ;--------------------------------------------------------
                                    530 	.area IABS    (ABS,DATA)
                                    531 	.area IABS    (ABS,DATA)
                                    532 ;--------------------------------------------------------
                                    533 ; bit data
                                    534 ;--------------------------------------------------------
                                    535 	.area BSEG    (BIT)
                                    536 ;--------------------------------------------------------
                                    537 ; paged external ram data
                                    538 ;--------------------------------------------------------
                                    539 	.area PSEG    (PAG,XDATA)
                                    540 ;--------------------------------------------------------
                                    541 ; external ram data
                                    542 ;--------------------------------------------------------
                                    543 	.area XSEG    (XDATA)
                           008000   544 _DEBUG_LOC	=	0x8000
      000001                        545 _program_stats::
      000001                        546 	.ds 10
      00000B                        547 _buffers_array::
      00000B                        548 	.ds 300
      000137                        549 _create_new_buffer_buff_65537_84:
      000137                        550 	.ds 12
      000143                        551 _create_initial_buffers_buff_65538_91:
      000143                        552 	.ds 12
      00014F                        553 _create_initial_buffers_buff1_65538_91:
      00014F                        554 	.ds 12
      00015B                        555 _dump_buff_zero_ascii_j_65537_108:
      00015B                        556 	.ds 2
      00015D                        557 _dump_buff_zero_hex_j_131073_116:
      00015D                        558 	.ds 2
      00015F                        559 _get_number_total_chars_65536_125:
      00015F                        560 	.ds 2
      000161                        561 _get_number_num_65537_127:
      000161                        562 	.ds 2
      000163                        563 _get_num_helper_times_65536_132:
      000163                        564 	.ds 2
      000165                        565 _get_num_helper_num_65536_133:
      000165                        566 	.ds 2
      000167                        567 _putchar_c_65536_136:
      000167                        568 	.ds 2
      000169                        569 _dataout_data_65536_139:
      000169                        570 	.ds 1
                                    571 ;--------------------------------------------------------
                                    572 ; absolute external ram data
                                    573 ;--------------------------------------------------------
                                    574 	.area XABS    (ABS,XDATA)
                                    575 ;--------------------------------------------------------
                                    576 ; external initialized ram data
                                    577 ;--------------------------------------------------------
                                    578 	.area XISEG   (XDATA)
      001547                        579 _global_var_test::
      001547                        580 	.ds 1
      001548                        581 _watchdog_flag::
      001548                        582 	.ds 1
                                    583 	.area HOME    (CODE)
                                    584 	.area GSINIT0 (CODE)
                                    585 	.area GSINIT1 (CODE)
                                    586 	.area GSINIT2 (CODE)
                                    587 	.area GSINIT3 (CODE)
                                    588 	.area GSINIT4 (CODE)
                                    589 	.area GSINIT5 (CODE)
                                    590 	.area GSINIT  (CODE)
                                    591 	.area GSFINAL (CODE)
                                    592 	.area CSEG    (CODE)
                                    593 ;--------------------------------------------------------
                                    594 ; interrupt vector 
                                    595 ;--------------------------------------------------------
                                    596 	.area HOME    (CODE)
      000000                        597 __interrupt_vect:
      000000 02 00 39         [24]  598 	ljmp	__sdcc_gsinit_startup
      000003 02 02 16         [24]  599 	ljmp	_idle_interrupt
      000006                        600 	.ds	5
      00000B 32               [24]  601 	reti
      00000C                        602 	.ds	7
      000013 32               [24]  603 	reti
      000014                        604 	.ds	7
      00001B 32               [24]  605 	reti
      00001C                        606 	.ds	7
      000023 32               [24]  607 	reti
      000024                        608 	.ds	7
      00002B 32               [24]  609 	reti
      00002C                        610 	.ds	7
      000033 02 01 7E         [24]  611 	ljmp	_pca_interrupt
                                    612 ;--------------------------------------------------------
                                    613 ; global & static initialisations
                                    614 ;--------------------------------------------------------
                                    615 	.area HOME    (CODE)
                                    616 	.area GSINIT  (CODE)
                                    617 	.area GSFINAL (CODE)
                                    618 	.area GSINIT  (CODE)
                                    619 	.globl __sdcc_gsinit_startup
                                    620 	.globl __sdcc_program_startup
                                    621 	.globl __start__stack
                                    622 	.globl __mcs51_genXINIT
                                    623 	.globl __mcs51_genXRAMCLEAR
                                    624 	.globl __mcs51_genRAMCLEAR
                                    625 	.area GSFINAL (CODE)
      000092 02 00 36         [24]  626 	ljmp	__sdcc_program_startup
                                    627 ;--------------------------------------------------------
                                    628 ; Home
                                    629 ;--------------------------------------------------------
                                    630 	.area HOME    (CODE)
                                    631 	.area HOME    (CODE)
      000036                        632 __sdcc_program_startup:
      000036 02 00 95         [24]  633 	ljmp	_main
                                    634 ;	return from main will return to caller
                                    635 ;--------------------------------------------------------
                                    636 ; code
                                    637 ;--------------------------------------------------------
                                    638 	.area CSEG    (CODE)
                                    639 ;------------------------------------------------------------
                                    640 ;Allocation info for local variables in function 'main'
                                    641 ;------------------------------------------------------------
                                    642 ;	program.c:85: void main(void)
                                    643 ;	-----------------------------------------
                                    644 ;	 function main
                                    645 ;	-----------------------------------------
      000095                        646 _main:
                           000007   647 	ar7 = 0x07
                           000006   648 	ar6 = 0x06
                           000005   649 	ar5 = 0x05
                           000004   650 	ar4 = 0x04
                           000003   651 	ar3 = 0x03
                           000002   652 	ar2 = 0x02
                           000001   653 	ar1 = 0x01
                           000000   654 	ar0 = 0x00
                                    655 ;	program.c:87: printf("\n\r HELLO! Started in X2 Mode \n\r");
      000095 74 6E            [12]  656 	mov	a,#___str_0
      000097 C0 E0            [24]  657 	push	acc
      000099 74 22            [12]  658 	mov	a,#(___str_0 >> 8)
      00009B C0 E0            [24]  659 	push	acc
      00009D 74 80            [12]  660 	mov	a,#0x80
      00009F C0 E0            [24]  661 	push	acc
      0000A1 12 18 33         [24]  662 	lcall	_printf
      0000A4 15 81            [12]  663 	dec	sp
      0000A6 15 81            [12]  664 	dec	sp
      0000A8 15 81            [12]  665 	dec	sp
                                    666 ;	program.c:88: DEBUGPORT(0x01);
      0000AA 75 82 01         [24]  667 	mov	dpl,#0x01
      0000AD 12 13 FA         [24]  668 	lcall	_dataout
                                    669 ;	program.c:89: P1_1 = 0;
                                    670 ;	assignBit
      0000B0 C2 91            [12]  671 	clr	_P1_1
                                    672 ;	program.c:91: main_menu();
                                    673 ;	program.c:92: }
      0000B2 02 04 03         [24]  674 	ljmp	_main_menu
                                    675 ;------------------------------------------------------------
                                    676 ;Allocation info for local variables in function 'user_interface_heap'
                                    677 ;------------------------------------------------------------
                                    678 ;	program.c:99: void user_interface_heap()
                                    679 ;	-----------------------------------------
                                    680 ;	 function user_interface_heap
                                    681 ;	-----------------------------------------
      0000B5                        682 _user_interface_heap:
                                    683 ;	program.c:101: DEBUGPORT(0x02);
      0000B5 75 82 02         [24]  684 	mov	dpl,#0x02
      0000B8 12 13 FA         [24]  685 	lcall	_dataout
                                    686 ;	program.c:102: create_initial_buffers();
      0000BB 12 0A A9         [24]  687 	lcall	_create_initial_buffers
                                    688 ;	program.c:103: print_all_buffers();
      0000BE 12 10 DA         [24]  689 	lcall	_print_all_buffers
                                    690 ;	program.c:104: enter_chars();
                                    691 ;	program.c:105: }
      0000C1 02 0C 86         [24]  692 	ljmp	_enter_chars
                                    693 ;------------------------------------------------------------
                                    694 ;Allocation info for local variables in function 'user_interface_PCA'
                                    695 ;------------------------------------------------------------
                                    696 ;inp                       Allocated with name '_user_interface_PCA_inp_65537_51'
                                    697 ;------------------------------------------------------------
                                    698 ;	program.c:112: void user_interface_PCA()
                                    699 ;	-----------------------------------------
                                    700 ;	 function user_interface_PCA
                                    701 ;	-----------------------------------------
      0000C4                        702 _user_interface_PCA:
                                    703 ;	program.c:114: DEBUGPORT(0xAA);
      0000C4 75 82 AA         [24]  704 	mov	dpl,#0xaa
      0000C7 12 13 FA         [24]  705 	lcall	_dataout
                                    706 ;	program.c:115: printf("Hello, In PCA Demo mode \n\r");
      0000CA 74 8E            [12]  707 	mov	a,#___str_1
      0000CC C0 E0            [24]  708 	push	acc
      0000CE 74 22            [12]  709 	mov	a,#(___str_1 >> 8)
      0000D0 C0 E0            [24]  710 	push	acc
      0000D2 74 80            [12]  711 	mov	a,#0x80
      0000D4 C0 E0            [24]  712 	push	acc
      0000D6 12 18 33         [24]  713 	lcall	_printf
      0000D9 15 81            [12]  714 	dec	sp
      0000DB 15 81            [12]  715 	dec	sp
      0000DD 15 81            [12]  716 	dec	sp
                                    717 ;	program.c:116: print_pca_menu();
      0000DF 12 07 A7         [24]  718 	lcall	_print_pca_menu
                                    719 ;	program.c:119: wrong_choice_pca:
      0000E2                        720 00101$:
                                    721 ;	program.c:120: printf("Please make a valid choice \n\r");
      0000E2 74 A9            [12]  722 	mov	a,#___str_2
      0000E4 C0 E0            [24]  723 	push	acc
      0000E6 74 22            [12]  724 	mov	a,#(___str_2 >> 8)
      0000E8 C0 E0            [24]  725 	push	acc
      0000EA 74 80            [12]  726 	mov	a,#0x80
      0000EC C0 E0            [24]  727 	push	acc
      0000EE 12 18 33         [24]  728 	lcall	_printf
      0000F1 15 81            [12]  729 	dec	sp
      0000F3 15 81            [12]  730 	dec	sp
      0000F5 15 81            [12]  731 	dec	sp
                                    732 ;	program.c:121: inp = getchar();
      0000F7 12 13 BE         [24]  733 	lcall	_getchar
      0000FA AE 82            [24]  734 	mov	r6,dpl
      0000FC AF 83            [24]  735 	mov	r7,dph
                                    736 ;	program.c:122: if (inp == 0x46)
      0000FE BE 46 08         [24]  737 	cjne	r6,#0x46,00124$
      000101 BF 00 05         [24]  738 	cjne	r7,#0x00,00124$
                                    739 ;	program.c:123: pca_falling_edge();
      000104 12 02 8B         [24]  740 	lcall	_pca_falling_edge
      000107 80 50            [24]  741 	sjmp	00141$
      000109                        742 00124$:
                                    743 ;	program.c:124: else if (inp == 0x53)
      000109 BE 53 08         [24]  744 	cjne	r6,#0x53,00121$
      00010C BF 00 05         [24]  745 	cjne	r7,#0x00,00121$
                                    746 ;	program.c:125: pca_software_timer();
      00010F 12 02 A6         [24]  747 	lcall	_pca_software_timer
      000112 80 45            [24]  748 	sjmp	00141$
      000114                        749 00121$:
                                    750 ;	program.c:126: else if (inp == 0x48)
      000114 BE 48 08         [24]  751 	cjne	r6,#0x48,00118$
      000117 BF 00 05         [24]  752 	cjne	r7,#0x00,00118$
                                    753 ;	program.c:127: pca_high_speed();
      00011A 12 02 C7         [24]  754 	lcall	_pca_high_speed
      00011D 80 3A            [24]  755 	sjmp	00141$
      00011F                        756 00118$:
                                    757 ;	program.c:128: else if (inp == 0x50)
      00011F BE 50 08         [24]  758 	cjne	r6,#0x50,00115$
      000122 BF 00 05         [24]  759 	cjne	r7,#0x00,00115$
                                    760 ;	program.c:129: pca_pwm();
      000125 12 02 EB         [24]  761 	lcall	_pca_pwm
      000128 80 2F            [24]  762 	sjmp	00141$
      00012A                        763 00115$:
                                    764 ;	program.c:130: else if (inp == 0x57)
      00012A BE 57 08         [24]  765 	cjne	r6,#0x57,00112$
      00012D BF 00 05         [24]  766 	cjne	r7,#0x00,00112$
                                    767 ;	program.c:131: pca_watchdog();
      000130 12 03 0F         [24]  768 	lcall	_pca_watchdog
      000133 80 24            [24]  769 	sjmp	00141$
      000135                        770 00112$:
                                    771 ;	program.c:132: else if (inp == 0x49)
      000135 BE 49 08         [24]  772 	cjne	r6,#0x49,00109$
      000138 BF 00 05         [24]  773 	cjne	r7,#0x00,00109$
                                    774 ;	program.c:133: pca_idle();
      00013B 12 03 67         [24]  775 	lcall	_pca_idle
      00013E 80 19            [24]  776 	sjmp	00141$
      000140                        777 00109$:
                                    778 ;	program.c:134: else if (inp == 0x44)
      000140 BE 44 08         [24]  779 	cjne	r6,#0x44,00106$
      000143 BF 00 05         [24]  780 	cjne	r7,#0x00,00106$
                                    781 ;	program.c:135: pca_pdown();
      000146 12 03 9C         [24]  782 	lcall	_pca_pdown
      000149 80 0E            [24]  783 	sjmp	00141$
      00014B                        784 00106$:
                                    785 ;	program.c:136: else if (inp == 0x4C)
      00014B BE 4C 05         [24]  786 	cjne	r6,#0x4c,00190$
      00014E BF 00 02         [24]  787 	cjne	r7,#0x00,00190$
      000151 80 03            [24]  788 	sjmp	00191$
      000153                        789 00190$:
      000153 02 00 E2         [24]  790 	ljmp	00101$
      000156                        791 00191$:
                                    792 ;	program.c:137: fclk_lowest();
      000156 12 03 D1         [24]  793 	lcall	_fclk_lowest
                                    794 ;	program.c:141: exit_choice:
      000159                        795 00141$:
      000159                        796 00126$:
                                    797 ;	program.c:142: printf("Please 'E' to exit or Reset \n\r");
      000159 74 C7            [12]  798 	mov	a,#___str_3
      00015B C0 E0            [24]  799 	push	acc
      00015D 74 22            [12]  800 	mov	a,#(___str_3 >> 8)
      00015F C0 E0            [24]  801 	push	acc
      000161 74 80            [12]  802 	mov	a,#0x80
      000163 C0 E0            [24]  803 	push	acc
      000165 12 18 33         [24]  804 	lcall	_printf
      000168 15 81            [12]  805 	dec	sp
      00016A 15 81            [12]  806 	dec	sp
      00016C 15 81            [12]  807 	dec	sp
                                    808 ;	program.c:143: inp = getchar();
      00016E 12 13 BE         [24]  809 	lcall	_getchar
      000171 AE 82            [24]  810 	mov	r6,dpl
      000173 AF 83            [24]  811 	mov	r7,dph
                                    812 ;	program.c:144: if(inp == 0x45)
      000175 BE 45 E1         [24]  813 	cjne	r6,#0x45,00126$
      000178 BF 00 DE         [24]  814 	cjne	r7,#0x00,00126$
                                    815 ;	program.c:145: user_interface_PCA();
                                    816 ;	program.c:147: goto exit_choice;
                                    817 ;	program.c:148: }
      00017B 02 00 C4         [24]  818 	ljmp	_user_interface_PCA
                                    819 ;------------------------------------------------------------
                                    820 ;Allocation info for local variables in function 'pca_interrupt'
                                    821 ;------------------------------------------------------------
                                    822 ;	program.c:150: void pca_interrupt() __interrupt(6) __using(1)
                                    823 ;	-----------------------------------------
                                    824 ;	 function pca_interrupt
                                    825 ;	-----------------------------------------
      00017E                        826 _pca_interrupt:
                           00000F   827 	ar7 = 0x0f
                           00000E   828 	ar6 = 0x0e
                           00000D   829 	ar5 = 0x0d
                           00000C   830 	ar4 = 0x0c
                           00000B   831 	ar3 = 0x0b
                           00000A   832 	ar2 = 0x0a
                           000009   833 	ar1 = 0x09
                           000008   834 	ar0 = 0x08
      00017E C0 20            [24]  835 	push	bits
      000180 C0 E0            [24]  836 	push	acc
      000182 C0 F0            [24]  837 	push	b
      000184 C0 82            [24]  838 	push	dpl
      000186 C0 83            [24]  839 	push	dph
      000188 C0 07            [24]  840 	push	(0+7)
      00018A C0 06            [24]  841 	push	(0+6)
      00018C C0 05            [24]  842 	push	(0+5)
      00018E C0 04            [24]  843 	push	(0+4)
      000190 C0 03            [24]  844 	push	(0+3)
      000192 C0 02            [24]  845 	push	(0+2)
      000194 C0 01            [24]  846 	push	(0+1)
      000196 C0 00            [24]  847 	push	(0+0)
      000198 C0 D0            [24]  848 	push	psw
      00019A 75 D0 08         [24]  849 	mov	psw,#0x08
                                    850 ;	program.c:152: if (CCF0)
      00019D 30 D8 2D         [24]  851 	jnb	_CCF0,00102$
                                    852 ;	program.c:154: printf("Captured Value CCPL -> %d CCPH -> %d \n\r", CCAP0L, CCAP0H);
      0001A0 AE FA            [24]  853 	mov	r6,_CCAP0H
      0001A2 7F 00            [12]  854 	mov	r7,#0x00
      0001A4 AC EA            [24]  855 	mov	r4,_CCAP0L
      0001A6 7D 00            [12]  856 	mov	r5,#0x00
      0001A8 C0 0E            [24]  857 	push	ar6
      0001AA C0 0F            [24]  858 	push	ar7
      0001AC C0 0C            [24]  859 	push	ar4
      0001AE C0 0D            [24]  860 	push	ar5
      0001B0 74 E6            [12]  861 	mov	a,#___str_4
      0001B2 C0 E0            [24]  862 	push	acc
      0001B4 74 22            [12]  863 	mov	a,#(___str_4 >> 8)
      0001B6 C0 E0            [24]  864 	push	acc
      0001B8 74 80            [12]  865 	mov	a,#0x80
      0001BA C0 E0            [24]  866 	push	acc
      0001BC 75 D0 00         [24]  867 	mov	psw,#0x00
      0001BF 12 18 33         [24]  868 	lcall	_printf
      0001C2 75 D0 08         [24]  869 	mov	psw,#0x08
      0001C5 E5 81            [12]  870 	mov	a,sp
      0001C7 24 F9            [12]  871 	add	a,#0xf9
      0001C9 F5 81            [12]  872 	mov	sp,a
                                    873 ;	program.c:156: CCF0 = 0;
                                    874 ;	assignBit
      0001CB C2 D8            [12]  875 	clr	_CCF0
      0001CD                        876 00102$:
                                    877 ;	program.c:158: if (CCF1)
                                    878 ;	program.c:160: CCF1 = 0;
                                    879 ;	assignBit
      0001CD 10 D9 02         [24]  880 	jbc	_CCF1,00122$
      0001D0 80 27            [24]  881 	sjmp	00107$
      0001D2                        882 00122$:
                                    883 ;	program.c:161: CH = 0;
      0001D2 75 F9 00         [24]  884 	mov	_CH,#0x00
                                    885 ;	program.c:162: CL = 0;
      0001D5 75 E9 00         [24]  886 	mov	_CL,#0x00
                                    887 ;	program.c:163: if(!watchdog_flag)
      0001D8 90 15 48         [24]  888 	mov	dptr,#_watchdog_flag
      0001DB E0               [24]  889 	movx	a,@dptr
      0001DC 70 1B            [24]  890 	jnz	00107$
                                    891 ;	program.c:164: printf("Timer Interrupt\n\r");        
      0001DE 74 0E            [12]  892 	mov	a,#___str_5
      0001E0 C0 E0            [24]  893 	push	acc
      0001E2 74 23            [12]  894 	mov	a,#(___str_5 >> 8)
      0001E4 C0 E0            [24]  895 	push	acc
      0001E6 74 80            [12]  896 	mov	a,#0x80
      0001E8 C0 E0            [24]  897 	push	acc
      0001EA 75 D0 00         [24]  898 	mov	psw,#0x00
      0001ED 12 18 33         [24]  899 	lcall	_printf
      0001F0 75 D0 08         [24]  900 	mov	psw,#0x08
      0001F3 15 81            [12]  901 	dec	sp
      0001F5 15 81            [12]  902 	dec	sp
      0001F7 15 81            [12]  903 	dec	sp
      0001F9                        904 00107$:
                                    905 ;	program.c:167: }
      0001F9 D0 D0            [24]  906 	pop	psw
      0001FB D0 00            [24]  907 	pop	(0+0)
      0001FD D0 01            [24]  908 	pop	(0+1)
      0001FF D0 02            [24]  909 	pop	(0+2)
      000201 D0 03            [24]  910 	pop	(0+3)
      000203 D0 04            [24]  911 	pop	(0+4)
      000205 D0 05            [24]  912 	pop	(0+5)
      000207 D0 06            [24]  913 	pop	(0+6)
      000209 D0 07            [24]  914 	pop	(0+7)
      00020B D0 83            [24]  915 	pop	dph
      00020D D0 82            [24]  916 	pop	dpl
      00020F D0 F0            [24]  917 	pop	b
      000211 D0 E0            [24]  918 	pop	acc
      000213 D0 20            [24]  919 	pop	bits
      000215 32               [24]  920 	reti
                                    921 ;------------------------------------------------------------
                                    922 ;Allocation info for local variables in function 'idle_interrupt'
                                    923 ;------------------------------------------------------------
                                    924 ;	program.c:169: void idle_interrupt() __interrupt(0) __using(1)
                                    925 ;	-----------------------------------------
                                    926 ;	 function idle_interrupt
                                    927 ;	-----------------------------------------
      000216                        928 _idle_interrupt:
      000216 C0 20            [24]  929 	push	bits
      000218 C0 E0            [24]  930 	push	acc
      00021A C0 F0            [24]  931 	push	b
      00021C C0 82            [24]  932 	push	dpl
      00021E C0 83            [24]  933 	push	dph
      000220 C0 07            [24]  934 	push	(0+7)
      000222 C0 06            [24]  935 	push	(0+6)
      000224 C0 05            [24]  936 	push	(0+5)
      000226 C0 04            [24]  937 	push	(0+4)
      000228 C0 03            [24]  938 	push	(0+3)
      00022A C0 02            [24]  939 	push	(0+2)
      00022C C0 01            [24]  940 	push	(0+1)
      00022E C0 00            [24]  941 	push	(0+0)
      000230 C0 D0            [24]  942 	push	psw
      000232 75 D0 08         [24]  943 	mov	psw,#0x08
                                    944 ;	program.c:171: EX0 = 0;
                                    945 ;	assignBit
      000235 C2 A8            [12]  946 	clr	_EX0
                                    947 ;	program.c:172: PCON = 0x80;
      000237 75 87 80         [24]  948 	mov	_PCON,#0x80
                                    949 ;	program.c:173: CR = 0;
                                    950 ;	assignBit
      00023A C2 DE            [12]  951 	clr	_CR
                                    952 ;	program.c:174: CKRL = 255;
      00023C 75 97 FF         [24]  953 	mov	_CKRL,#0xff
                                    954 ;	program.c:175: CCAPM0 = 0;
                                    955 ;	program.c:176: CCAPM1 = 0;
                                    956 ;	program.c:177: CCAPM2 = 0;
                                    957 ;	program.c:178: CCAPM3 = 0;
                                    958 ;	program.c:179: CCAPM4 = 0;   
                                    959 ;	program.c:180: printf("Going to main menu.. \n\r");
      00023F E4               [12]  960 	clr	a
      000240 F5 DA            [12]  961 	mov	_CCAPM0,a
      000242 F5 DB            [12]  962 	mov	_CCAPM1,a
      000244 F5 DC            [12]  963 	mov	_CCAPM2,a
      000246 F5 DD            [12]  964 	mov	_CCAPM3,a
      000248 F5 DE            [12]  965 	mov	_CCAPM4,a
      00024A 74 20            [12]  966 	mov	a,#___str_6
      00024C C0 E0            [24]  967 	push	acc
      00024E 74 23            [12]  968 	mov	a,#(___str_6 >> 8)
      000250 C0 E0            [24]  969 	push	acc
      000252 74 80            [12]  970 	mov	a,#0x80
      000254 C0 E0            [24]  971 	push	acc
      000256 75 D0 00         [24]  972 	mov	psw,#0x00
      000259 12 18 33         [24]  973 	lcall	_printf
      00025C 75 D0 08         [24]  974 	mov	psw,#0x08
      00025F 15 81            [12]  975 	dec	sp
      000261 15 81            [12]  976 	dec	sp
      000263 15 81            [12]  977 	dec	sp
                                    978 ;	program.c:181: main_menu();
      000265 75 D0 00         [24]  979 	mov	psw,#0x00
      000268 12 04 03         [24]  980 	lcall	_main_menu
      00026B 75 D0 08         [24]  981 	mov	psw,#0x08
                                    982 ;	program.c:182: }
      00026E D0 D0            [24]  983 	pop	psw
      000270 D0 00            [24]  984 	pop	(0+0)
      000272 D0 01            [24]  985 	pop	(0+1)
      000274 D0 02            [24]  986 	pop	(0+2)
      000276 D0 03            [24]  987 	pop	(0+3)
      000278 D0 04            [24]  988 	pop	(0+4)
      00027A D0 05            [24]  989 	pop	(0+5)
      00027C D0 06            [24]  990 	pop	(0+6)
      00027E D0 07            [24]  991 	pop	(0+7)
      000280 D0 83            [24]  992 	pop	dph
      000282 D0 82            [24]  993 	pop	dpl
      000284 D0 F0            [24]  994 	pop	b
      000286 D0 E0            [24]  995 	pop	acc
      000288 D0 20            [24]  996 	pop	bits
      00028A 32               [24]  997 	reti
                                    998 ;------------------------------------------------------------
                                    999 ;Allocation info for local variables in function 'pca_falling_edge'
                                   1000 ;------------------------------------------------------------
                                   1001 ;	program.c:184: void pca_falling_edge()
                                   1002 ;	-----------------------------------------
                                   1003 ;	 function pca_falling_edge
                                   1004 ;	-----------------------------------------
      00028B                       1005 _pca_falling_edge:
                           000007  1006 	ar7 = 0x07
                           000006  1007 	ar6 = 0x06
                           000005  1008 	ar5 = 0x05
                           000004  1009 	ar4 = 0x04
                           000003  1010 	ar3 = 0x03
                           000002  1011 	ar2 = 0x02
                           000001  1012 	ar1 = 0x01
                           000000  1013 	ar0 = 0x00
                                   1014 ;	program.c:186: printf("Setting P1.3 as falling edge detector, enabling PCA interrupt \n\r");
      00028B 74 38            [12] 1015 	mov	a,#___str_7
      00028D C0 E0            [24] 1016 	push	acc
      00028F 74 23            [12] 1017 	mov	a,#(___str_7 >> 8)
      000291 C0 E0            [24] 1018 	push	acc
      000293 74 80            [12] 1019 	mov	a,#0x80
      000295 C0 E0            [24] 1020 	push	acc
      000297 12 18 33         [24] 1021 	lcall	_printf
      00029A 15 81            [12] 1022 	dec	sp
      00029C 15 81            [12] 1023 	dec	sp
      00029E 15 81            [12] 1024 	dec	sp
                                   1025 ;	program.c:187: CCAPM0 = 0x21;
      0002A0 75 DA 21         [24] 1026 	mov	_CCAPM0,#0x21
                                   1027 ;	program.c:188: CR = 1;
                                   1028 ;	assignBit
      0002A3 D2 DE            [12] 1029 	setb	_CR
                                   1030 ;	program.c:190: }
      0002A5 22               [24] 1031 	ret
                                   1032 ;------------------------------------------------------------
                                   1033 ;Allocation info for local variables in function 'pca_software_timer'
                                   1034 ;------------------------------------------------------------
                                   1035 ;	program.c:192: void pca_software_timer()
                                   1036 ;	-----------------------------------------
                                   1037 ;	 function pca_software_timer
                                   1038 ;	-----------------------------------------
      0002A6                       1039 _pca_software_timer:
                                   1040 ;	program.c:194: printf("Entering Software Timer Mode \n\r");
      0002A6 74 79            [12] 1041 	mov	a,#___str_8
      0002A8 C0 E0            [24] 1042 	push	acc
      0002AA 74 23            [12] 1043 	mov	a,#(___str_8 >> 8)
      0002AC C0 E0            [24] 1044 	push	acc
      0002AE 74 80            [12] 1045 	mov	a,#0x80
      0002B0 C0 E0            [24] 1046 	push	acc
      0002B2 12 18 33         [24] 1047 	lcall	_printf
      0002B5 15 81            [12] 1048 	dec	sp
      0002B7 15 81            [12] 1049 	dec	sp
      0002B9 15 81            [12] 1050 	dec	sp
                                   1051 ;	program.c:195: CCAP1L = 255;
      0002BB 75 EB FF         [24] 1052 	mov	_CCAP1L,#0xff
                                   1053 ;	program.c:196: CCAP1H = 255;
      0002BE 75 FB FF         [24] 1054 	mov	_CCAP1H,#0xff
                                   1055 ;	program.c:197: CCAPM1 = 0x49;    
      0002C1 75 DB 49         [24] 1056 	mov	_CCAPM1,#0x49
                                   1057 ;	program.c:198: CR = 1;
                                   1058 ;	assignBit
      0002C4 D2 DE            [12] 1059 	setb	_CR
                                   1060 ;	program.c:200: }
      0002C6 22               [24] 1061 	ret
                                   1062 ;------------------------------------------------------------
                                   1063 ;Allocation info for local variables in function 'pca_high_speed'
                                   1064 ;------------------------------------------------------------
                                   1065 ;	program.c:202: void pca_high_speed()
                                   1066 ;	-----------------------------------------
                                   1067 ;	 function pca_high_speed
                                   1068 ;	-----------------------------------------
      0002C7                       1069 _pca_high_speed:
                                   1070 ;	program.c:205: printf("Entering High Speed Toggle Mode, P1.5 \n\r");   
      0002C7 74 99            [12] 1071 	mov	a,#___str_9
      0002C9 C0 E0            [24] 1072 	push	acc
      0002CB 74 23            [12] 1073 	mov	a,#(___str_9 >> 8)
      0002CD C0 E0            [24] 1074 	push	acc
      0002CF 74 80            [12] 1075 	mov	a,#0x80
      0002D1 C0 E0            [24] 1076 	push	acc
      0002D3 12 18 33         [24] 1077 	lcall	_printf
      0002D6 15 81            [12] 1078 	dec	sp
      0002D8 15 81            [12] 1079 	dec	sp
      0002DA 15 81            [12] 1080 	dec	sp
                                   1081 ;	program.c:206: CCAP2L = 255;
      0002DC 75 EC FF         [24] 1082 	mov	_CCAP2L,#0xff
                                   1083 ;	program.c:207: CCAP2H = 2;
      0002DF 75 FC 02         [24] 1084 	mov	_CCAP2H,#0x02
                                   1085 ;	program.c:208: CCAPM2 = 0x4D;
      0002E2 75 DC 4D         [24] 1086 	mov	_CCAPM2,#0x4d
                                   1087 ;	program.c:209: CMOD = CPS0;
      0002E5 75 D9 02         [24] 1088 	mov	_CMOD,#0x02
                                   1089 ;	program.c:210: CR = 1;
                                   1090 ;	assignBit
      0002E8 D2 DE            [12] 1091 	setb	_CR
                                   1092 ;	program.c:212: }
      0002EA 22               [24] 1093 	ret
                                   1094 ;------------------------------------------------------------
                                   1095 ;Allocation info for local variables in function 'pca_pwm'
                                   1096 ;------------------------------------------------------------
                                   1097 ;	program.c:214: void pca_pwm()
                                   1098 ;	-----------------------------------------
                                   1099 ;	 function pca_pwm
                                   1100 ;	-----------------------------------------
      0002EB                       1101 _pca_pwm:
                                   1102 ;	program.c:216: printf("Entering PWM Mode, 25 percent Duty Cycle P1.6\n\r");
      0002EB 74 C2            [12] 1103 	mov	a,#___str_10
      0002ED C0 E0            [24] 1104 	push	acc
      0002EF 74 23            [12] 1105 	mov	a,#(___str_10 >> 8)
      0002F1 C0 E0            [24] 1106 	push	acc
      0002F3 74 80            [12] 1107 	mov	a,#0x80
      0002F5 C0 E0            [24] 1108 	push	acc
      0002F7 12 18 33         [24] 1109 	lcall	_printf
      0002FA 15 81            [12] 1110 	dec	sp
      0002FC 15 81            [12] 1111 	dec	sp
      0002FE 15 81            [12] 1112 	dec	sp
                                   1113 ;	program.c:217: CCAP3L = 192;
      000300 75 ED C0         [24] 1114 	mov	_CCAP3L,#0xc0
                                   1115 ;	program.c:218: CCAP3H = 192;
      000303 75 FD C0         [24] 1116 	mov	_CCAP3H,#0xc0
                                   1117 ;	program.c:219: CCAPM3 = 0x42;
      000306 75 DD 42         [24] 1118 	mov	_CCAPM3,#0x42
                                   1119 ;	program.c:220: CMOD = CPS0;
      000309 75 D9 02         [24] 1120 	mov	_CMOD,#0x02
                                   1121 ;	program.c:221: CR = 1;
                                   1122 ;	assignBit
      00030C D2 DE            [12] 1123 	setb	_CR
                                   1124 ;	program.c:223: }
      00030E 22               [24] 1125 	ret
                                   1126 ;------------------------------------------------------------
                                   1127 ;Allocation info for local variables in function 'pca_watchdog'
                                   1128 ;------------------------------------------------------------
                                   1129 ;rec                       Allocated with name '_pca_watchdog_rec_65537_61'
                                   1130 ;------------------------------------------------------------
                                   1131 ;	program.c:225: void pca_watchdog()
                                   1132 ;	-----------------------------------------
                                   1133 ;	 function pca_watchdog
                                   1134 ;	-----------------------------------------
      00030F                       1135 _pca_watchdog:
                                   1136 ;	program.c:227: CCAP1L = 255;
      00030F 75 EB FF         [24] 1137 	mov	_CCAP1L,#0xff
                                   1138 ;	program.c:228: CCAP1H = 128;
      000312 75 FB 80         [24] 1139 	mov	_CCAP1H,#0x80
                                   1140 ;	program.c:229: CCAPM1 = 0x49;    
      000315 75 DB 49         [24] 1141 	mov	_CCAPM1,#0x49
                                   1142 ;	program.c:230: watchdog_flag = 1;
      000318 90 15 48         [24] 1143 	mov	dptr,#_watchdog_flag
      00031B 74 01            [12] 1144 	mov	a,#0x01
      00031D F0               [24] 1145 	movx	@dptr,a
                                   1146 ;	program.c:231: printf("Enabling Watchdog Timer..\n\r");
      00031E 74 F2            [12] 1147 	mov	a,#___str_11
      000320 C0 E0            [24] 1148 	push	acc
      000322 74 23            [12] 1149 	mov	a,#(___str_11 >> 8)
      000324 C0 E0            [24] 1150 	push	acc
      000326 74 80            [12] 1151 	mov	a,#0x80
      000328 C0 E0            [24] 1152 	push	acc
      00032A 12 18 33         [24] 1153 	lcall	_printf
      00032D 15 81            [12] 1154 	dec	sp
      00032F 15 81            [12] 1155 	dec	sp
      000331 15 81            [12] 1156 	dec	sp
                                   1157 ;	program.c:232: CCAP4L = 255;
      000333 75 EE FF         [24] 1158 	mov	_CCAP4L,#0xff
                                   1159 ;	program.c:233: CCAP4H = 255;
      000336 75 FE FF         [24] 1160 	mov	_CCAP4H,#0xff
                                   1161 ;	program.c:234: CMOD = WDTE;
      000339 75 D9 40         [24] 1162 	mov	_CMOD,#0x40
                                   1163 ;	program.c:235: CCAPM4 = 0x48;        
      00033C 75 DE 48         [24] 1164 	mov	_CCAPM4,#0x48
                                   1165 ;	program.c:236: CR = 1;
                                   1166 ;	assignBit
      00033F D2 DE            [12] 1167 	setb	_CR
                                   1168 ;	program.c:238: printf("Currently Watchdog is being serviced\n\rPress 'S' to stop and generate a reset \n\r");
      000341 74 0E            [12] 1169 	mov	a,#___str_12
      000343 C0 E0            [24] 1170 	push	acc
      000345 74 24            [12] 1171 	mov	a,#(___str_12 >> 8)
      000347 C0 E0            [24] 1172 	push	acc
      000349 74 80            [12] 1173 	mov	a,#0x80
      00034B C0 E0            [24] 1174 	push	acc
      00034D 12 18 33         [24] 1175 	lcall	_printf
      000350 15 81            [12] 1176 	dec	sp
      000352 15 81            [12] 1177 	dec	sp
      000354 15 81            [12] 1178 	dec	sp
                                   1179 ;	program.c:240: get_e:    
      000356                       1180 00101$:
                                   1181 ;	program.c:241: rec = getchar();
      000356 12 13 BE         [24] 1182 	lcall	_getchar
      000359 AE 82            [24] 1183 	mov	r6,dpl
      00035B AF 83            [24] 1184 	mov	r7,dph
                                   1185 ;	program.c:243: if(rec == 0x53)
      00035D BE 53 F6         [24] 1186 	cjne	r6,#0x53,00101$
      000360 BF 00 F3         [24] 1187 	cjne	r7,#0x00,00101$
                                   1188 ;	program.c:244: CCAPM1 = 0;
      000363 75 DB 00         [24] 1189 	mov	_CCAPM1,#0x00
                                   1190 ;	program.c:246: goto get_e;
                                   1191 ;	program.c:249: }
      000366 22               [24] 1192 	ret
                                   1193 ;------------------------------------------------------------
                                   1194 ;Allocation info for local variables in function 'pca_idle'
                                   1195 ;------------------------------------------------------------
                                   1196 ;	program.c:250: void pca_idle()
                                   1197 ;	-----------------------------------------
                                   1198 ;	 function pca_idle
                                   1199 ;	-----------------------------------------
      000367                       1200 _pca_idle:
                                   1201 ;	program.c:252: pca_pwm();
      000367 12 02 EB         [24] 1202 	lcall	_pca_pwm
                                   1203 ;	program.c:253: printf("Entering Idle, Will Exit on external interrupt 0\n\r");   
      00036A 74 5E            [12] 1204 	mov	a,#___str_13
      00036C C0 E0            [24] 1205 	push	acc
      00036E 74 24            [12] 1206 	mov	a,#(___str_13 >> 8)
      000370 C0 E0            [24] 1207 	push	acc
      000372 74 80            [12] 1208 	mov	a,#0x80
      000374 C0 E0            [24] 1209 	push	acc
      000376 12 18 33         [24] 1210 	lcall	_printf
      000379 15 81            [12] 1211 	dec	sp
      00037B 15 81            [12] 1212 	dec	sp
      00037D 15 81            [12] 1213 	dec	sp
                                   1214 ;	program.c:254: EX0 = 1;
                                   1215 ;	assignBit
      00037F D2 A8            [12] 1216 	setb	_EX0
                                   1217 ;	program.c:255: PCON = IDL; 
      000381 75 87 01         [24] 1218 	mov	_PCON,#0x01
                                   1219 ;	program.c:256: printf("Woke up from Idle/Power down, going to main menu \n\r");
      000384 74 91            [12] 1220 	mov	a,#___str_14
      000386 C0 E0            [24] 1221 	push	acc
      000388 74 24            [12] 1222 	mov	a,#(___str_14 >> 8)
      00038A C0 E0            [24] 1223 	push	acc
      00038C 74 80            [12] 1224 	mov	a,#0x80
      00038E C0 E0            [24] 1225 	push	acc
      000390 12 18 33         [24] 1226 	lcall	_printf
      000393 15 81            [12] 1227 	dec	sp
      000395 15 81            [12] 1228 	dec	sp
      000397 15 81            [12] 1229 	dec	sp
                                   1230 ;	program.c:257: main_menu();
                                   1231 ;	program.c:258: }
      000399 02 04 03         [24] 1232 	ljmp	_main_menu
                                   1233 ;------------------------------------------------------------
                                   1234 ;Allocation info for local variables in function 'pca_pdown'
                                   1235 ;------------------------------------------------------------
                                   1236 ;	program.c:260: void pca_pdown()
                                   1237 ;	-----------------------------------------
                                   1238 ;	 function pca_pdown
                                   1239 ;	-----------------------------------------
      00039C                       1240 _pca_pdown:
                                   1241 ;	program.c:262: pca_pwm();
      00039C 12 02 EB         [24] 1242 	lcall	_pca_pwm
                                   1243 ;	program.c:263: printf("Entering power down, Will Exit on external interrupt 0\n\r");   
      00039F 74 C5            [12] 1244 	mov	a,#___str_15
      0003A1 C0 E0            [24] 1245 	push	acc
      0003A3 74 24            [12] 1246 	mov	a,#(___str_15 >> 8)
      0003A5 C0 E0            [24] 1247 	push	acc
      0003A7 74 80            [12] 1248 	mov	a,#0x80
      0003A9 C0 E0            [24] 1249 	push	acc
      0003AB 12 18 33         [24] 1250 	lcall	_printf
      0003AE 15 81            [12] 1251 	dec	sp
      0003B0 15 81            [12] 1252 	dec	sp
      0003B2 15 81            [12] 1253 	dec	sp
                                   1254 ;	program.c:264: EX0 = 1;
                                   1255 ;	assignBit
      0003B4 D2 A8            [12] 1256 	setb	_EX0
                                   1257 ;	program.c:265: PCON = PD; 
      0003B6 75 87 02         [24] 1258 	mov	_PCON,#0x02
                                   1259 ;	program.c:266: printf("Woke up from Idle/Power down, going to main menu \n\r");
      0003B9 74 91            [12] 1260 	mov	a,#___str_14
      0003BB C0 E0            [24] 1261 	push	acc
      0003BD 74 24            [12] 1262 	mov	a,#(___str_14 >> 8)
      0003BF C0 E0            [24] 1263 	push	acc
      0003C1 74 80            [12] 1264 	mov	a,#0x80
      0003C3 C0 E0            [24] 1265 	push	acc
      0003C5 12 18 33         [24] 1266 	lcall	_printf
      0003C8 15 81            [12] 1267 	dec	sp
      0003CA 15 81            [12] 1268 	dec	sp
      0003CC 15 81            [12] 1269 	dec	sp
                                   1270 ;	program.c:267: main_menu();
                                   1271 ;	program.c:268: }
      0003CE 02 04 03         [24] 1272 	ljmp	_main_menu
                                   1273 ;------------------------------------------------------------
                                   1274 ;Allocation info for local variables in function 'fclk_lowest'
                                   1275 ;------------------------------------------------------------
                                   1276 ;	program.c:270: void fclk_lowest(){
                                   1277 ;	-----------------------------------------
                                   1278 ;	 function fclk_lowest
                                   1279 ;	-----------------------------------------
      0003D1                       1280 _fclk_lowest:
                                   1281 ;	program.c:271: printf("Changing Clock prescalar to go to lowest frequency in X2 Mode..\n\r");
      0003D1 74 FE            [12] 1282 	mov	a,#___str_16
      0003D3 C0 E0            [24] 1283 	push	acc
      0003D5 74 24            [12] 1284 	mov	a,#(___str_16 >> 8)
      0003D7 C0 E0            [24] 1285 	push	acc
      0003D9 74 80            [12] 1286 	mov	a,#0x80
      0003DB C0 E0            [24] 1287 	push	acc
      0003DD 12 18 33         [24] 1288 	lcall	_printf
      0003E0 15 81            [12] 1289 	dec	sp
      0003E2 15 81            [12] 1290 	dec	sp
      0003E4 15 81            [12] 1291 	dec	sp
                                   1292 ;	program.c:272: printf("This UART Session will stop working...\n\r");
      0003E6 74 40            [12] 1293 	mov	a,#___str_17
      0003E8 C0 E0            [24] 1294 	push	acc
      0003EA 74 25            [12] 1295 	mov	a,#(___str_17 >> 8)
      0003EC C0 E0            [24] 1296 	push	acc
      0003EE 74 80            [12] 1297 	mov	a,#0x80
      0003F0 C0 E0            [24] 1298 	push	acc
      0003F2 12 18 33         [24] 1299 	lcall	_printf
      0003F5 15 81            [12] 1300 	dec	sp
      0003F7 15 81            [12] 1301 	dec	sp
      0003F9 15 81            [12] 1302 	dec	sp
                                   1303 ;	program.c:273: EX0 = 1;
                                   1304 ;	assignBit
      0003FB D2 A8            [12] 1305 	setb	_EX0
                                   1306 ;	program.c:274: CKRL = 0 ;
      0003FD 75 97 00         [24] 1307 	mov	_CKRL,#0x00
                                   1308 ;	program.c:275: main_menu();
                                   1309 ;	program.c:276: }
      000400 02 04 03         [24] 1310 	ljmp	_main_menu
                                   1311 ;------------------------------------------------------------
                                   1312 ;Allocation info for local variables in function 'main_menu'
                                   1313 ;------------------------------------------------------------
                                   1314 ;inp                       Allocated with name '_main_menu_inp_65537_66'
                                   1315 ;------------------------------------------------------------
                                   1316 ;	program.c:278: void main_menu()
                                   1317 ;	-----------------------------------------
                                   1318 ;	 function main_menu
                                   1319 ;	-----------------------------------------
      000403                       1320 _main_menu:
                                   1321 ;	program.c:280: printf("\n\n\r^^^^^^^^^^^^^^^^^^^-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ \n\n\r");
      000403 74 69            [12] 1322 	mov	a,#___str_18
      000405 C0 E0            [24] 1323 	push	acc
      000407 74 25            [12] 1324 	mov	a,#(___str_18 >> 8)
      000409 C0 E0            [24] 1325 	push	acc
      00040B 74 80            [12] 1326 	mov	a,#0x80
      00040D C0 E0            [24] 1327 	push	acc
      00040F 12 18 33         [24] 1328 	lcall	_printf
      000412 15 81            [12] 1329 	dec	sp
      000414 15 81            [12] 1330 	dec	sp
      000416 15 81            [12] 1331 	dec	sp
                                   1332 ;	program.c:281: printf("'H' -> Enter Heap Demo Mode \n\r");
      000418 74 A4            [12] 1333 	mov	a,#___str_19
      00041A C0 E0            [24] 1334 	push	acc
      00041C 74 25            [12] 1335 	mov	a,#(___str_19 >> 8)
      00041E C0 E0            [24] 1336 	push	acc
      000420 74 80            [12] 1337 	mov	a,#0x80
      000422 C0 E0            [24] 1338 	push	acc
      000424 12 18 33         [24] 1339 	lcall	_printf
      000427 15 81            [12] 1340 	dec	sp
      000429 15 81            [12] 1341 	dec	sp
      00042B 15 81            [12] 1342 	dec	sp
                                   1343 ;	program.c:282: printf("'P' -> Enter PCA Demo Mode \n\r");
      00042D 74 C3            [12] 1344 	mov	a,#___str_20
      00042F C0 E0            [24] 1345 	push	acc
      000431 74 25            [12] 1346 	mov	a,#(___str_20 >> 8)
      000433 C0 E0            [24] 1347 	push	acc
      000435 74 80            [12] 1348 	mov	a,#0x80
      000437 C0 E0            [24] 1349 	push	acc
      000439 12 18 33         [24] 1350 	lcall	_printf
      00043C 15 81            [12] 1351 	dec	sp
      00043E 15 81            [12] 1352 	dec	sp
      000440 15 81            [12] 1353 	dec	sp
                                   1354 ;	program.c:283: printf("'A' -> Assembly C Mix \n\r");
      000442 74 E1            [12] 1355 	mov	a,#___str_21
      000444 C0 E0            [24] 1356 	push	acc
      000446 74 25            [12] 1357 	mov	a,#(___str_21 >> 8)
      000448 C0 E0            [24] 1358 	push	acc
      00044A 74 80            [12] 1359 	mov	a,#0x80
      00044C C0 E0            [24] 1360 	push	acc
      00044E 12 18 33         [24] 1361 	lcall	_printf
      000451 15 81            [12] 1362 	dec	sp
      000453 15 81            [12] 1363 	dec	sp
      000455 15 81            [12] 1364 	dec	sp
                                   1365 ;	program.c:286: wrong_choice:
      000457                       1366 00101$:
                                   1367 ;	program.c:287: printf("Please make a valid choice \n\r");
      000457 74 A9            [12] 1368 	mov	a,#___str_2
      000459 C0 E0            [24] 1369 	push	acc
      00045B 74 22            [12] 1370 	mov	a,#(___str_2 >> 8)
      00045D C0 E0            [24] 1371 	push	acc
      00045F 74 80            [12] 1372 	mov	a,#0x80
      000461 C0 E0            [24] 1373 	push	acc
      000463 12 18 33         [24] 1374 	lcall	_printf
      000466 15 81            [12] 1375 	dec	sp
      000468 15 81            [12] 1376 	dec	sp
      00046A 15 81            [12] 1377 	dec	sp
                                   1378 ;	program.c:288: inp = getchar();
      00046C 12 13 BE         [24] 1379 	lcall	_getchar
      00046F AE 82            [24] 1380 	mov	r6,dpl
      000471 AF 83            [24] 1381 	mov	r7,dph
                                   1382 ;	program.c:289: if (inp == 0x48)
      000473 BE 48 06         [24] 1383 	cjne	r6,#0x48,00109$
      000476 BF 00 03         [24] 1384 	cjne	r7,#0x00,00109$
                                   1385 ;	program.c:290: user_interface_heap();
      000479 02 00 B5         [24] 1386 	ljmp	_user_interface_heap
      00047C                       1387 00109$:
                                   1388 ;	program.c:291: else if (inp == 0x50)
      00047C BE 50 06         [24] 1389 	cjne	r6,#0x50,00106$
      00047F BF 00 03         [24] 1390 	cjne	r7,#0x00,00106$
                                   1391 ;	program.c:292: user_interface_PCA();
      000482 02 00 C4         [24] 1392 	ljmp	_user_interface_PCA
      000485                       1393 00106$:
                                   1394 ;	program.c:293: else if (inp == 0x41)
      000485 BE 41 CF         [24] 1395 	cjne	r6,#0x41,00101$
      000488 BF 00 CC         [24] 1396 	cjne	r7,#0x00,00101$
                                   1397 ;	program.c:294: asm_clang();
                                   1398 ;	program.c:296: goto wrong_choice;
                                   1399 ;	program.c:297: }
      00048B 02 04 8E         [24] 1400 	ljmp	_asm_clang
                                   1401 ;------------------------------------------------------------
                                   1402 ;Allocation info for local variables in function 'asm_clang'
                                   1403 ;------------------------------------------------------------
                                   1404 ;num1                      Allocated with name '_asm_clang_num1_65537_68'
                                   1405 ;num2                      Allocated with name '_asm_clang_num2_65538_69'
                                   1406 ;num3                      Allocated with name '_asm_clang_num3_65539_70'
                                   1407 ;------------------------------------------------------------
                                   1408 ;	program.c:299: void asm_clang(){
                                   1409 ;	-----------------------------------------
                                   1410 ;	 function asm_clang
                                   1411 ;	-----------------------------------------
      00048E                       1412 _asm_clang:
                                   1413 ;	program.c:300: printf("\n\r Give param 1, 8bit \n\r");
      00048E 74 FA            [12] 1414 	mov	a,#___str_22
      000490 C0 E0            [24] 1415 	push	acc
      000492 74 25            [12] 1416 	mov	a,#(___str_22 >> 8)
      000494 C0 E0            [24] 1417 	push	acc
      000496 74 80            [12] 1418 	mov	a,#0x80
      000498 C0 E0            [24] 1419 	push	acc
      00049A 12 18 33         [24] 1420 	lcall	_printf
      00049D 15 81            [12] 1421 	dec	sp
      00049F 15 81            [12] 1422 	dec	sp
      0004A1 15 81            [12] 1423 	dec	sp
                                   1424 ;	program.c:301: unsigned char num1 = get_number(3);
      0004A3 90 00 03         [24] 1425 	mov	dptr,#0x0003
      0004A6 12 12 4A         [24] 1426 	lcall	_get_number
      0004A9 AE 82            [24] 1427 	mov	r6,dpl
                                   1428 ;	program.c:302: printf("\n\r Give param 2, 8bit \n\r");
      0004AB C0 06            [24] 1429 	push	ar6
      0004AD 74 13            [12] 1430 	mov	a,#___str_23
      0004AF C0 E0            [24] 1431 	push	acc
      0004B1 74 26            [12] 1432 	mov	a,#(___str_23 >> 8)
      0004B3 C0 E0            [24] 1433 	push	acc
      0004B5 74 80            [12] 1434 	mov	a,#0x80
      0004B7 C0 E0            [24] 1435 	push	acc
      0004B9 12 18 33         [24] 1436 	lcall	_printf
      0004BC 15 81            [12] 1437 	dec	sp
      0004BE 15 81            [12] 1438 	dec	sp
      0004C0 15 81            [12] 1439 	dec	sp
                                   1440 ;	program.c:303: unsigned char num2 = get_number(3);
      0004C2 90 00 03         [24] 1441 	mov	dptr,#0x0003
      0004C5 12 12 4A         [24] 1442 	lcall	_get_number
      0004C8 AD 82            [24] 1443 	mov	r5,dpl
                                   1444 ;	program.c:304: printf("\n\r Give param 3, 8bit \n\r");
      0004CA C0 05            [24] 1445 	push	ar5
      0004CC 74 2C            [12] 1446 	mov	a,#___str_24
      0004CE C0 E0            [24] 1447 	push	acc
      0004D0 74 26            [12] 1448 	mov	a,#(___str_24 >> 8)
      0004D2 C0 E0            [24] 1449 	push	acc
      0004D4 74 80            [12] 1450 	mov	a,#0x80
      0004D6 C0 E0            [24] 1451 	push	acc
      0004D8 12 18 33         [24] 1452 	lcall	_printf
      0004DB 15 81            [12] 1453 	dec	sp
      0004DD 15 81            [12] 1454 	dec	sp
      0004DF 15 81            [12] 1455 	dec	sp
                                   1456 ;	program.c:305: unsigned char num3 = get_number(3);
      0004E1 90 00 03         [24] 1457 	mov	dptr,#0x0003
      0004E4 12 12 4A         [24] 1458 	lcall	_get_number
      0004E7 AC 82            [24] 1459 	mov	r4,dpl
      0004E9 D0 05            [24] 1460 	pop	ar5
      0004EB D0 06            [24] 1461 	pop	ar6
                                   1462 ;	program.c:307: printf("\n\r RESULT-> param3<Mod>param2 * param1 = %d \n\r", asmtest(num1,num2,num3));
      0004ED 90 00 1A         [24] 1463 	mov	dptr,#_asmtest_PARM_2
      0004F0 ED               [12] 1464 	mov	a,r5
      0004F1 F0               [24] 1465 	movx	@dptr,a
      0004F2 90 00 1B         [24] 1466 	mov	dptr,#_asmtest_PARM_3
      0004F5 EC               [12] 1467 	mov	a,r4
      0004F6 F0               [24] 1468 	movx	@dptr,a
      0004F7 8E 82            [24] 1469 	mov	dpl,r6
      0004F9 12 14 27         [24] 1470 	lcall	_asmtest
      0004FC AF 82            [24] 1471 	mov	r7,dpl
      0004FE 7E 00            [12] 1472 	mov	r6,#0x00
      000500 C0 07            [24] 1473 	push	ar7
      000502 C0 06            [24] 1474 	push	ar6
      000504 74 45            [12] 1475 	mov	a,#___str_25
      000506 C0 E0            [24] 1476 	push	acc
      000508 74 26            [12] 1477 	mov	a,#(___str_25 >> 8)
      00050A C0 E0            [24] 1478 	push	acc
      00050C 74 80            [12] 1479 	mov	a,#0x80
      00050E C0 E0            [24] 1480 	push	acc
      000510 12 18 33         [24] 1481 	lcall	_printf
      000513 E5 81            [12] 1482 	mov	a,sp
      000515 24 FB            [12] 1483 	add	a,#0xfb
      000517 F5 81            [12] 1484 	mov	sp,a
                                   1485 ;	program.c:308: printf("\n\r Going back to main menu.. \n\r");
      000519 74 74            [12] 1486 	mov	a,#___str_26
      00051B C0 E0            [24] 1487 	push	acc
      00051D 74 26            [12] 1488 	mov	a,#(___str_26 >> 8)
      00051F C0 E0            [24] 1489 	push	acc
      000521 74 80            [12] 1490 	mov	a,#0x80
      000523 C0 E0            [24] 1491 	push	acc
      000525 12 18 33         [24] 1492 	lcall	_printf
      000528 15 81            [12] 1493 	dec	sp
      00052A 15 81            [12] 1494 	dec	sp
      00052C 15 81            [12] 1495 	dec	sp
                                   1496 ;	program.c:309: main_menu();
                                   1497 ;	program.c:310: }
      00052E 02 04 03         [24] 1498 	ljmp	_main_menu
                                   1499 ;------------------------------------------------------------
                                   1500 ;Allocation info for local variables in function 'at_clear_all_buffers'
                                   1501 ;------------------------------------------------------------
                                   1502 ;i                         Allocated with name '_at_clear_all_buffers_i_131072_72'
                                   1503 ;------------------------------------------------------------
                                   1504 ;	program.c:318: void at_clear_all_buffers()
                                   1505 ;	-----------------------------------------
                                   1506 ;	 function at_clear_all_buffers
                                   1507 ;	-----------------------------------------
      000531                       1508 _at_clear_all_buffers:
                                   1509 ;	program.c:320: DEBUGPORT(0x03);
      000531 75 82 03         [24] 1510 	mov	dpl,#0x03
      000534 12 13 FA         [24] 1511 	lcall	_dataout
                                   1512 ;	program.c:321: for (int i = 0; i < program_stats.total_buffers; i++)
      000537 7E 00            [12] 1513 	mov	r6,#0x00
      000539 7F 00            [12] 1514 	mov	r7,#0x00
      00053B                       1515 00103$:
      00053B 90 00 09         [24] 1516 	mov	dptr,#(_program_stats + 0x0008)
      00053E E0               [24] 1517 	movx	a,@dptr
      00053F FC               [12] 1518 	mov	r4,a
      000540 A3               [24] 1519 	inc	dptr
      000541 E0               [24] 1520 	movx	a,@dptr
      000542 FD               [12] 1521 	mov	r5,a
      000543 C3               [12] 1522 	clr	c
      000544 EE               [12] 1523 	mov	a,r6
      000545 9C               [12] 1524 	subb	a,r4
      000546 EF               [12] 1525 	mov	a,r7
      000547 64 80            [12] 1526 	xrl	a,#0x80
      000549 8D F0            [24] 1527 	mov	b,r5
      00054B 63 F0 80         [24] 1528 	xrl	b,#0x80
      00054E 95 F0            [12] 1529 	subb	a,b
      000550 50 61            [24] 1530 	jnc	00101$
                                   1531 ;	program.c:323: free(buffers_array[i].buffer_start);
      000552 90 15 0E         [24] 1532 	mov	dptr,#__mulint_PARM_2
      000555 EE               [12] 1533 	mov	a,r6
      000556 F0               [24] 1534 	movx	@dptr,a
      000557 EF               [12] 1535 	mov	a,r7
      000558 A3               [24] 1536 	inc	dptr
      000559 F0               [24] 1537 	movx	@dptr,a
      00055A 90 00 0C         [24] 1538 	mov	dptr,#0x000c
      00055D C0 07            [24] 1539 	push	ar7
      00055F C0 06            [24] 1540 	push	ar6
      000561 12 17 C5         [24] 1541 	lcall	__mulint
      000564 AC 82            [24] 1542 	mov	r4,dpl
      000566 AD 83            [24] 1543 	mov	r5,dph
      000568 EC               [12] 1544 	mov	a,r4
      000569 24 0B            [12] 1545 	add	a,#_buffers_array
      00056B FC               [12] 1546 	mov	r4,a
      00056C ED               [12] 1547 	mov	a,r5
      00056D 34 00            [12] 1548 	addc	a,#(_buffers_array >> 8)
      00056F FD               [12] 1549 	mov	r5,a
      000570 8C 82            [24] 1550 	mov	dpl,r4
      000572 8D 83            [24] 1551 	mov	dph,r5
      000574 A3               [24] 1552 	inc	dptr
      000575 A3               [24] 1553 	inc	dptr
      000576 E0               [24] 1554 	movx	a,@dptr
      000577 FB               [12] 1555 	mov	r3,a
      000578 A3               [24] 1556 	inc	dptr
      000579 E0               [24] 1557 	movx	a,@dptr
      00057A FC               [12] 1558 	mov	r4,a
      00057B A3               [24] 1559 	inc	dptr
      00057C E0               [24] 1560 	movx	a,@dptr
      00057D FD               [12] 1561 	mov	r5,a
      00057E 8B 82            [24] 1562 	mov	dpl,r3
      000580 8C 83            [24] 1563 	mov	dph,r4
      000582 8D F0            [24] 1564 	mov	b,r5
      000584 12 14 3A         [24] 1565 	lcall	_free
      000587 D0 06            [24] 1566 	pop	ar6
      000589 D0 07            [24] 1567 	pop	ar7
                                   1568 ;	program.c:324: printf("Buffer %d Freed ....\n\r", i);
      00058B C0 07            [24] 1569 	push	ar7
      00058D C0 06            [24] 1570 	push	ar6
      00058F C0 06            [24] 1571 	push	ar6
      000591 C0 07            [24] 1572 	push	ar7
      000593 74 94            [12] 1573 	mov	a,#___str_27
      000595 C0 E0            [24] 1574 	push	acc
      000597 74 26            [12] 1575 	mov	a,#(___str_27 >> 8)
      000599 C0 E0            [24] 1576 	push	acc
      00059B 74 80            [12] 1577 	mov	a,#0x80
      00059D C0 E0            [24] 1578 	push	acc
      00059F 12 18 33         [24] 1579 	lcall	_printf
      0005A2 E5 81            [12] 1580 	mov	a,sp
      0005A4 24 FB            [12] 1581 	add	a,#0xfb
      0005A6 F5 81            [12] 1582 	mov	sp,a
      0005A8 D0 06            [24] 1583 	pop	ar6
      0005AA D0 07            [24] 1584 	pop	ar7
                                   1585 ;	program.c:321: for (int i = 0; i < program_stats.total_buffers; i++)
      0005AC 0E               [12] 1586 	inc	r6
      0005AD BE 00 8B         [24] 1587 	cjne	r6,#0x00,00103$
      0005B0 0F               [12] 1588 	inc	r7
      0005B1 80 88            [24] 1589 	sjmp	00103$
      0005B3                       1590 00101$:
                                   1591 ;	program.c:326: printf("Let's begin again..\n\r");
      0005B3 74 AB            [12] 1592 	mov	a,#___str_28
      0005B5 C0 E0            [24] 1593 	push	acc
      0005B7 74 26            [12] 1594 	mov	a,#(___str_28 >> 8)
      0005B9 C0 E0            [24] 1595 	push	acc
      0005BB 74 80            [12] 1596 	mov	a,#0x80
      0005BD C0 E0            [24] 1597 	push	acc
      0005BF 12 18 33         [24] 1598 	lcall	_printf
      0005C2 15 81            [12] 1599 	dec	sp
      0005C4 15 81            [12] 1600 	dec	sp
      0005C6 15 81            [12] 1601 	dec	sp
                                   1602 ;	program.c:327: user_interface_heap();
                                   1603 ;	program.c:328: }
      0005C8 02 00 B5         [24] 1604 	ljmp	_user_interface_heap
                                   1605 ;------------------------------------------------------------
                                   1606 ;Allocation info for local variables in function 'delete_buffer'
                                   1607 ;------------------------------------------------------------
                                   1608 ;sloc0                     Allocated with name '_delete_buffer_sloc0_1_0'
                                   1609 ;sloc1                     Allocated with name '_delete_buffer_sloc1_1_0'
                                   1610 ;sloc2                     Allocated with name '_delete_buffer_sloc2_1_0'
                                   1611 ;buff_number               Allocated with name '_delete_buffer_buff_number_65537_75'
                                   1612 ;buff_to_free              Allocated with name '_delete_buffer_buff_to_free_65537_75'
                                   1613 ;buffer_freed_size         Allocated with name '_delete_buffer_buffer_freed_size_65537_75'
                                   1614 ;i                         Allocated with name '_delete_buffer_i_196609_77'
                                   1615 ;------------------------------------------------------------
                                   1616 ;	program.c:335: int delete_buffer()
                                   1617 ;	-----------------------------------------
                                   1618 ;	 function delete_buffer
                                   1619 ;	-----------------------------------------
      0005CB                       1620 _delete_buffer:
                                   1621 ;	program.c:337: DEBUGPORT(0x04);
      0005CB 75 82 04         [24] 1622 	mov	dpl,#0x04
      0005CE 12 13 FA         [24] 1623 	lcall	_dataout
                                   1624 ;	program.c:341: get_del_num:
      0005D1                       1625 00101$:
                                   1626 ;	program.c:342: printf("\n\rGive Valid Buffer Number to delete(1-%d) in 3 digits\n\r", (program_stats.total_buffers - 1));
      0005D1 90 00 09         [24] 1627 	mov	dptr,#(_program_stats + 0x0008)
      0005D4 E0               [24] 1628 	movx	a,@dptr
      0005D5 FE               [12] 1629 	mov	r6,a
      0005D6 A3               [24] 1630 	inc	dptr
      0005D7 E0               [24] 1631 	movx	a,@dptr
      0005D8 FF               [12] 1632 	mov	r7,a
      0005D9 1E               [12] 1633 	dec	r6
      0005DA BE FF 01         [24] 1634 	cjne	r6,#0xff,00139$
      0005DD 1F               [12] 1635 	dec	r7
      0005DE                       1636 00139$:
      0005DE C0 06            [24] 1637 	push	ar6
      0005E0 C0 07            [24] 1638 	push	ar7
      0005E2 74 C1            [12] 1639 	mov	a,#___str_29
      0005E4 C0 E0            [24] 1640 	push	acc
      0005E6 74 26            [12] 1641 	mov	a,#(___str_29 >> 8)
      0005E8 C0 E0            [24] 1642 	push	acc
      0005EA 74 80            [12] 1643 	mov	a,#0x80
      0005EC C0 E0            [24] 1644 	push	acc
      0005EE 12 18 33         [24] 1645 	lcall	_printf
      0005F1 E5 81            [12] 1646 	mov	a,sp
      0005F3 24 FB            [12] 1647 	add	a,#0xfb
      0005F5 F5 81            [12] 1648 	mov	sp,a
                                   1649 ;	program.c:343: buff_number = get_number(3);
      0005F7 90 00 03         [24] 1650 	mov	dptr,#0x0003
      0005FA 12 12 4A         [24] 1651 	lcall	_get_number
      0005FD AE 82            [24] 1652 	mov	r6,dpl
      0005FF AF 83            [24] 1653 	mov	r7,dph
                                   1654 ;	program.c:345: if (buff_number > 0 && buff_number < program_stats.total_buffers)
      000601 C3               [12] 1655 	clr	c
      000602 E4               [12] 1656 	clr	a
      000603 9E               [12] 1657 	subb	a,r6
      000604 74 80            [12] 1658 	mov	a,#(0x00 ^ 0x80)
      000606 8F F0            [24] 1659 	mov	b,r7
      000608 63 F0 80         [24] 1660 	xrl	b,#0x80
      00060B 95 F0            [12] 1661 	subb	a,b
      00060D 50 C2            [24] 1662 	jnc	00101$
      00060F 90 00 09         [24] 1663 	mov	dptr,#(_program_stats + 0x0008)
      000612 E0               [24] 1664 	movx	a,@dptr
      000613 FC               [12] 1665 	mov	r4,a
      000614 A3               [24] 1666 	inc	dptr
      000615 E0               [24] 1667 	movx	a,@dptr
      000616 FD               [12] 1668 	mov	r5,a
      000617 C3               [12] 1669 	clr	c
      000618 EE               [12] 1670 	mov	a,r6
      000619 9C               [12] 1671 	subb	a,r4
      00061A EF               [12] 1672 	mov	a,r7
      00061B 64 80            [12] 1673 	xrl	a,#0x80
      00061D 8D F0            [24] 1674 	mov	b,r5
      00061F 63 F0 80         [24] 1675 	xrl	b,#0x80
      000622 95 F0            [12] 1676 	subb	a,b
      000624 50 AB            [24] 1677 	jnc	00101$
                                   1678 ;	program.c:349: buff_to_free = buffers_array[buff_number].buffer_start;
      000626 90 15 0E         [24] 1679 	mov	dptr,#__mulint_PARM_2
      000629 EE               [12] 1680 	mov	a,r6
      00062A F0               [24] 1681 	movx	@dptr,a
      00062B EF               [12] 1682 	mov	a,r7
      00062C A3               [24] 1683 	inc	dptr
      00062D F0               [24] 1684 	movx	@dptr,a
      00062E 90 00 0C         [24] 1685 	mov	dptr,#0x000c
      000631 C0 07            [24] 1686 	push	ar7
      000633 C0 06            [24] 1687 	push	ar6
      000635 12 17 C5         [24] 1688 	lcall	__mulint
      000638 AC 82            [24] 1689 	mov	r4,dpl
      00063A AD 83            [24] 1690 	mov	r5,dph
      00063C D0 06            [24] 1691 	pop	ar6
      00063E D0 07            [24] 1692 	pop	ar7
      000640 EC               [12] 1693 	mov	a,r4
      000641 24 0B            [12] 1694 	add	a,#_buffers_array
      000643 FC               [12] 1695 	mov	r4,a
      000644 ED               [12] 1696 	mov	a,r5
      000645 34 00            [12] 1697 	addc	a,#(_buffers_array >> 8)
      000647 FD               [12] 1698 	mov	r5,a
      000648 8C 82            [24] 1699 	mov	dpl,r4
      00064A 8D 83            [24] 1700 	mov	dph,r5
      00064C A3               [24] 1701 	inc	dptr
      00064D A3               [24] 1702 	inc	dptr
      00064E E0               [24] 1703 	movx	a,@dptr
      00064F F5 14            [12] 1704 	mov	_delete_buffer_sloc2_1_0,a
      000651 A3               [24] 1705 	inc	dptr
      000652 E0               [24] 1706 	movx	a,@dptr
      000653 F5 15            [12] 1707 	mov	(_delete_buffer_sloc2_1_0 + 1),a
      000655 A3               [24] 1708 	inc	dptr
      000656 E0               [24] 1709 	movx	a,@dptr
      000657 F5 16            [12] 1710 	mov	(_delete_buffer_sloc2_1_0 + 2),a
                                   1711 ;	program.c:350: buffer_freed_size = buffers_array[buff_number].buff_size;
      000659 74 08            [12] 1712 	mov	a,#0x08
      00065B 2C               [12] 1713 	add	a,r4
      00065C F5 82            [12] 1714 	mov	dpl,a
      00065E E4               [12] 1715 	clr	a
      00065F 3D               [12] 1716 	addc	a,r5
      000660 F5 83            [12] 1717 	mov	dph,a
      000662 E0               [24] 1718 	movx	a,@dptr
      000663 FC               [12] 1719 	mov	r4,a
      000664 A3               [24] 1720 	inc	dptr
      000665 E0               [24] 1721 	movx	a,@dptr
      000666 FD               [12] 1722 	mov	r5,a
                                   1723 ;	program.c:352: for (int i = 0; i < (program_stats.total_buffers - 1); i++)
      000667 E4               [12] 1724 	clr	a
      000668 F5 10            [12] 1725 	mov	_delete_buffer_sloc0_1_0,a
      00066A F5 11            [12] 1726 	mov	(_delete_buffer_sloc0_1_0 + 1),a
      00066C                       1727 00110$:
      00066C C0 04            [24] 1728 	push	ar4
      00066E C0 05            [24] 1729 	push	ar5
      000670 90 00 09         [24] 1730 	mov	dptr,#(_program_stats + 0x0008)
      000673 E0               [24] 1731 	movx	a,@dptr
      000674 F5 12            [12] 1732 	mov	_delete_buffer_sloc1_1_0,a
      000676 A3               [24] 1733 	inc	dptr
      000677 E0               [24] 1734 	movx	a,@dptr
      000678 F5 13            [12] 1735 	mov	(_delete_buffer_sloc1_1_0 + 1),a
      00067A E5 12            [12] 1736 	mov	a,_delete_buffer_sloc1_1_0
      00067C 24 FF            [12] 1737 	add	a,#0xff
      00067E F8               [12] 1738 	mov	r0,a
      00067F E5 13            [12] 1739 	mov	a,(_delete_buffer_sloc1_1_0 + 1)
      000681 34 FF            [12] 1740 	addc	a,#0xff
      000683 FD               [12] 1741 	mov	r5,a
      000684 C3               [12] 1742 	clr	c
      000685 E5 10            [12] 1743 	mov	a,_delete_buffer_sloc0_1_0
      000687 98               [12] 1744 	subb	a,r0
      000688 E5 11            [12] 1745 	mov	a,(_delete_buffer_sloc0_1_0 + 1)
      00068A 64 80            [12] 1746 	xrl	a,#0x80
      00068C 8D F0            [24] 1747 	mov	b,r5
      00068E 63 F0 80         [24] 1748 	xrl	b,#0x80
      000691 95 F0            [12] 1749 	subb	a,b
      000693 D0 05            [24] 1750 	pop	ar5
      000695 D0 04            [24] 1751 	pop	ar4
      000697 40 03            [24] 1752 	jc	00142$
      000699 02 07 4A         [24] 1753 	ljmp	00104$
      00069C                       1754 00142$:
                                   1755 ;	program.c:354: if (i >= buff_number)
      00069C C3               [12] 1756 	clr	c
      00069D E5 10            [12] 1757 	mov	a,_delete_buffer_sloc0_1_0
      00069F 9E               [12] 1758 	subb	a,r6
      0006A0 E5 11            [12] 1759 	mov	a,(_delete_buffer_sloc0_1_0 + 1)
      0006A2 64 80            [12] 1760 	xrl	a,#0x80
      0006A4 8F F0            [24] 1761 	mov	b,r7
      0006A6 63 F0 80         [24] 1762 	xrl	b,#0x80
      0006A9 95 F0            [12] 1763 	subb	a,b
      0006AB 50 03            [24] 1764 	jnc	00143$
      0006AD 02 07 3F         [24] 1765 	ljmp	00111$
      0006B0                       1766 00143$:
                                   1767 ;	program.c:356: buffers_array[i + 1].buffer_num = i;
      0006B0 C0 04            [24] 1768 	push	ar4
      0006B2 C0 05            [24] 1769 	push	ar5
      0006B4 90 15 0E         [24] 1770 	mov	dptr,#__mulint_PARM_2
      0006B7 74 01            [12] 1771 	mov	a,#0x01
      0006B9 25 10            [12] 1772 	add	a,_delete_buffer_sloc0_1_0
      0006BB F0               [24] 1773 	movx	@dptr,a
      0006BC E4               [12] 1774 	clr	a
      0006BD 35 11            [12] 1775 	addc	a,(_delete_buffer_sloc0_1_0 + 1)
      0006BF A3               [24] 1776 	inc	dptr
      0006C0 F0               [24] 1777 	movx	@dptr,a
      0006C1 90 00 0C         [24] 1778 	mov	dptr,#0x000c
      0006C4 C0 07            [24] 1779 	push	ar7
      0006C6 C0 06            [24] 1780 	push	ar6
      0006C8 C0 04            [24] 1781 	push	ar4
      0006CA 12 17 C5         [24] 1782 	lcall	__mulint
      0006CD A8 82            [24] 1783 	mov	r0,dpl
      0006CF AD 83            [24] 1784 	mov	r5,dph
      0006D1 D0 04            [24] 1785 	pop	ar4
      0006D3 E8               [12] 1786 	mov	a,r0
      0006D4 24 0B            [12] 1787 	add	a,#_buffers_array
      0006D6 F5 82            [12] 1788 	mov	dpl,a
      0006D8 ED               [12] 1789 	mov	a,r5
      0006D9 34 00            [12] 1790 	addc	a,#(_buffers_array >> 8)
      0006DB F5 83            [12] 1791 	mov	dph,a
      0006DD E5 10            [12] 1792 	mov	a,_delete_buffer_sloc0_1_0
      0006DF F0               [24] 1793 	movx	@dptr,a
      0006E0 E5 11            [12] 1794 	mov	a,(_delete_buffer_sloc0_1_0 + 1)
      0006E2 A3               [24] 1795 	inc	dptr
      0006E3 F0               [24] 1796 	movx	@dptr,a
                                   1797 ;	program.c:357: buffers_array[i] = buffers_array[i + 1];
      0006E4 90 15 0E         [24] 1798 	mov	dptr,#__mulint_PARM_2
      0006E7 E5 10            [12] 1799 	mov	a,_delete_buffer_sloc0_1_0
      0006E9 F0               [24] 1800 	movx	@dptr,a
      0006EA E5 11            [12] 1801 	mov	a,(_delete_buffer_sloc0_1_0 + 1)
      0006EC A3               [24] 1802 	inc	dptr
      0006ED F0               [24] 1803 	movx	@dptr,a
      0006EE 90 00 0C         [24] 1804 	mov	dptr,#0x000c
      0006F1 C0 05            [24] 1805 	push	ar5
      0006F3 C0 00            [24] 1806 	push	ar0
      0006F5 12 17 C5         [24] 1807 	lcall	__mulint
      0006F8 AB 82            [24] 1808 	mov	r3,dpl
      0006FA AC 83            [24] 1809 	mov	r4,dph
      0006FC D0 00            [24] 1810 	pop	ar0
      0006FE D0 05            [24] 1811 	pop	ar5
      000700 EB               [12] 1812 	mov	a,r3
      000701 24 0B            [12] 1813 	add	a,#_buffers_array
      000703 FB               [12] 1814 	mov	r3,a
      000704 EC               [12] 1815 	mov	a,r4
      000705 34 00            [12] 1816 	addc	a,#(_buffers_array >> 8)
      000707 FC               [12] 1817 	mov	r4,a
      000708 7A 00            [12] 1818 	mov	r2,#0x00
      00070A E8               [12] 1819 	mov	a,r0
      00070B 24 0B            [12] 1820 	add	a,#_buffers_array
      00070D F8               [12] 1821 	mov	r0,a
      00070E ED               [12] 1822 	mov	a,r5
      00070F 34 00            [12] 1823 	addc	a,#(_buffers_array >> 8)
      000711 FD               [12] 1824 	mov	r5,a
      000712 90 14 FD         [24] 1825 	mov	dptr,#___memcpy_PARM_2
      000715 E8               [12] 1826 	mov	a,r0
      000716 F0               [24] 1827 	movx	@dptr,a
      000717 ED               [12] 1828 	mov	a,r5
      000718 A3               [24] 1829 	inc	dptr
      000719 F0               [24] 1830 	movx	@dptr,a
      00071A E4               [12] 1831 	clr	a
      00071B A3               [24] 1832 	inc	dptr
      00071C F0               [24] 1833 	movx	@dptr,a
      00071D 90 15 00         [24] 1834 	mov	dptr,#___memcpy_PARM_3
      000720 74 0C            [12] 1835 	mov	a,#0x0c
      000722 F0               [24] 1836 	movx	@dptr,a
      000723 E4               [12] 1837 	clr	a
      000724 A3               [24] 1838 	inc	dptr
      000725 F0               [24] 1839 	movx	@dptr,a
      000726 8B 82            [24] 1840 	mov	dpl,r3
      000728 8C 83            [24] 1841 	mov	dph,r4
      00072A 8A F0            [24] 1842 	mov	b,r2
      00072C C0 05            [24] 1843 	push	ar5
      00072E C0 04            [24] 1844 	push	ar4
      000730 12 15 91         [24] 1845 	lcall	___memcpy
      000733 D0 04            [24] 1846 	pop	ar4
      000735 D0 05            [24] 1847 	pop	ar5
      000737 D0 06            [24] 1848 	pop	ar6
      000739 D0 07            [24] 1849 	pop	ar7
                                   1850 ;	program.c:370: goto get_del_num;
      00073B D0 05            [24] 1851 	pop	ar5
      00073D D0 04            [24] 1852 	pop	ar4
                                   1853 ;	program.c:357: buffers_array[i] = buffers_array[i + 1];
      00073F                       1854 00111$:
                                   1855 ;	program.c:352: for (int i = 0; i < (program_stats.total_buffers - 1); i++)
      00073F 05 10            [12] 1856 	inc	_delete_buffer_sloc0_1_0
      000741 E4               [12] 1857 	clr	a
      000742 B5 10 02         [24] 1858 	cjne	a,_delete_buffer_sloc0_1_0,00144$
      000745 05 11            [12] 1859 	inc	(_delete_buffer_sloc0_1_0 + 1)
      000747                       1860 00144$:
      000747 02 06 6C         [24] 1861 	ljmp	00110$
      00074A                       1862 00104$:
                                   1863 ;	program.c:361: program_stats.total_buffers -= 1;
      00074A E5 12            [12] 1864 	mov	a,_delete_buffer_sloc1_1_0
      00074C 24 FF            [12] 1865 	add	a,#0xff
      00074E FA               [12] 1866 	mov	r2,a
      00074F E5 13            [12] 1867 	mov	a,(_delete_buffer_sloc1_1_0 + 1)
      000751 34 FF            [12] 1868 	addc	a,#0xff
      000753 FB               [12] 1869 	mov	r3,a
      000754 90 00 09         [24] 1870 	mov	dptr,#(_program_stats + 0x0008)
      000757 EA               [12] 1871 	mov	a,r2
      000758 F0               [24] 1872 	movx	@dptr,a
      000759 EB               [12] 1873 	mov	a,r3
      00075A A3               [24] 1874 	inc	dptr
      00075B F0               [24] 1875 	movx	@dptr,a
                                   1876 ;	program.c:362: program_stats.allocated_heap -= buffer_freed_size;
      00075C 90 00 03         [24] 1877 	mov	dptr,#(_program_stats + 0x0002)
      00075F E0               [24] 1878 	movx	a,@dptr
      000760 FA               [12] 1879 	mov	r2,a
      000761 A3               [24] 1880 	inc	dptr
      000762 E0               [24] 1881 	movx	a,@dptr
      000763 FB               [12] 1882 	mov	r3,a
      000764 EA               [12] 1883 	mov	a,r2
      000765 C3               [12] 1884 	clr	c
      000766 9C               [12] 1885 	subb	a,r4
      000767 FC               [12] 1886 	mov	r4,a
      000768 EB               [12] 1887 	mov	a,r3
      000769 9D               [12] 1888 	subb	a,r5
      00076A FD               [12] 1889 	mov	r5,a
      00076B 90 00 03         [24] 1890 	mov	dptr,#(_program_stats + 0x0002)
      00076E EC               [12] 1891 	mov	a,r4
      00076F F0               [24] 1892 	movx	@dptr,a
      000770 ED               [12] 1893 	mov	a,r5
      000771 A3               [24] 1894 	inc	dptr
      000772 F0               [24] 1895 	movx	@dptr,a
                                   1896 ;	program.c:364: free(buff_to_free);
      000773 AB 14            [24] 1897 	mov	r3,_delete_buffer_sloc2_1_0
      000775 AC 15            [24] 1898 	mov	r4,(_delete_buffer_sloc2_1_0 + 1)
      000777 AD 16            [24] 1899 	mov	r5,(_delete_buffer_sloc2_1_0 + 2)
      000779 8B 82            [24] 1900 	mov	dpl,r3
      00077B 8C 83            [24] 1901 	mov	dph,r4
      00077D 8D F0            [24] 1902 	mov	b,r5
      00077F C0 07            [24] 1903 	push	ar7
      000781 C0 06            [24] 1904 	push	ar6
      000783 12 14 3A         [24] 1905 	lcall	_free
      000786 D0 06            [24] 1906 	pop	ar6
      000788 D0 07            [24] 1907 	pop	ar7
                                   1908 ;	program.c:365: printf("Buffer %d Successfully Deleted.. \n\r", buff_number);
      00078A C0 06            [24] 1909 	push	ar6
      00078C C0 07            [24] 1910 	push	ar7
      00078E 74 FA            [12] 1911 	mov	a,#___str_30
      000790 C0 E0            [24] 1912 	push	acc
      000792 74 26            [12] 1913 	mov	a,#(___str_30 >> 8)
      000794 C0 E0            [24] 1914 	push	acc
      000796 74 80            [12] 1915 	mov	a,#0x80
      000798 C0 E0            [24] 1916 	push	acc
      00079A 12 18 33         [24] 1917 	lcall	_printf
      00079D E5 81            [12] 1918 	mov	a,sp
      00079F 24 FB            [12] 1919 	add	a,#0xfb
      0007A1 F5 81            [12] 1920 	mov	sp,a
                                   1921 ;	program.c:366: return 0;
      0007A3 90 00 00         [24] 1922 	mov	dptr,#0x0000
                                   1923 ;	program.c:370: goto get_del_num;
                                   1924 ;	program.c:372: }
      0007A6 22               [24] 1925 	ret
                                   1926 ;------------------------------------------------------------
                                   1927 ;Allocation info for local variables in function 'print_pca_menu'
                                   1928 ;------------------------------------------------------------
                                   1929 ;	program.c:379: void print_pca_menu()
                                   1930 ;	-----------------------------------------
                                   1931 ;	 function print_pca_menu
                                   1932 ;	-----------------------------------------
      0007A7                       1933 _print_pca_menu:
                                   1934 ;	program.c:381: DEBUGPORT(0x55);
      0007A7 75 82 55         [24] 1935 	mov	dpl,#0x55
      0007AA 12 13 FA         [24] 1936 	lcall	_dataout
                                   1937 ;	program.c:382: printf("\n\n\r^^^^^^^^^^^^^^^^^^^-PCA-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ \n\n\r");
      0007AD 74 1E            [12] 1938 	mov	a,#___str_31
      0007AF C0 E0            [24] 1939 	push	acc
      0007B1 74 27            [12] 1940 	mov	a,#(___str_31 >> 8)
      0007B3 C0 E0            [24] 1941 	push	acc
      0007B5 74 80            [12] 1942 	mov	a,#0x80
      0007B7 C0 E0            [24] 1943 	push	acc
      0007B9 12 18 33         [24] 1944 	lcall	_printf
      0007BC 15 81            [12] 1945 	dec	sp
      0007BE 15 81            [12] 1946 	dec	sp
      0007C0 15 81            [12] 1947 	dec	sp
                                   1948 ;	program.c:383: printf("'F' -> Falling Edge Capture Mode\n\r");
      0007C2 74 5D            [12] 1949 	mov	a,#___str_32
      0007C4 C0 E0            [24] 1950 	push	acc
      0007C6 74 27            [12] 1951 	mov	a,#(___str_32 >> 8)
      0007C8 C0 E0            [24] 1952 	push	acc
      0007CA 74 80            [12] 1953 	mov	a,#0x80
      0007CC C0 E0            [24] 1954 	push	acc
      0007CE 12 18 33         [24] 1955 	lcall	_printf
      0007D1 15 81            [12] 1956 	dec	sp
      0007D3 15 81            [12] 1957 	dec	sp
      0007D5 15 81            [12] 1958 	dec	sp
                                   1959 ;	program.c:384: printf("'S' -> Software Timer Mode\n\r");
      0007D7 74 80            [12] 1960 	mov	a,#___str_33
      0007D9 C0 E0            [24] 1961 	push	acc
      0007DB 74 27            [12] 1962 	mov	a,#(___str_33 >> 8)
      0007DD C0 E0            [24] 1963 	push	acc
      0007DF 74 80            [12] 1964 	mov	a,#0x80
      0007E1 C0 E0            [24] 1965 	push	acc
      0007E3 12 18 33         [24] 1966 	lcall	_printf
      0007E6 15 81            [12] 1967 	dec	sp
      0007E8 15 81            [12] 1968 	dec	sp
      0007EA 15 81            [12] 1969 	dec	sp
                                   1970 ;	program.c:385: printf("'H' -> High Speed Output Mode\n\r");
      0007EC 74 9D            [12] 1971 	mov	a,#___str_34
      0007EE C0 E0            [24] 1972 	push	acc
      0007F0 74 27            [12] 1973 	mov	a,#(___str_34 >> 8)
      0007F2 C0 E0            [24] 1974 	push	acc
      0007F4 74 80            [12] 1975 	mov	a,#0x80
      0007F6 C0 E0            [24] 1976 	push	acc
      0007F8 12 18 33         [24] 1977 	lcall	_printf
      0007FB 15 81            [12] 1978 	dec	sp
      0007FD 15 81            [12] 1979 	dec	sp
      0007FF 15 81            [12] 1980 	dec	sp
                                   1981 ;	program.c:386: printf("'P' -> PWM Mode \n\r");
      000801 74 BD            [12] 1982 	mov	a,#___str_35
      000803 C0 E0            [24] 1983 	push	acc
      000805 74 27            [12] 1984 	mov	a,#(___str_35 >> 8)
      000807 C0 E0            [24] 1985 	push	acc
      000809 74 80            [12] 1986 	mov	a,#0x80
      00080B C0 E0            [24] 1987 	push	acc
      00080D 12 18 33         [24] 1988 	lcall	_printf
      000810 15 81            [12] 1989 	dec	sp
      000812 15 81            [12] 1990 	dec	sp
      000814 15 81            [12] 1991 	dec	sp
                                   1992 ;	program.c:387: printf("'W' -> Watchdog Timer Mode\n\r");
      000816 74 D0            [12] 1993 	mov	a,#___str_36
      000818 C0 E0            [24] 1994 	push	acc
      00081A 74 27            [12] 1995 	mov	a,#(___str_36 >> 8)
      00081C C0 E0            [24] 1996 	push	acc
      00081E 74 80            [12] 1997 	mov	a,#0x80
      000820 C0 E0            [24] 1998 	push	acc
      000822 12 18 33         [24] 1999 	lcall	_printf
      000825 15 81            [12] 2000 	dec	sp
      000827 15 81            [12] 2001 	dec	sp
      000829 15 81            [12] 2002 	dec	sp
                                   2003 ;	program.c:388: printf("'I' -> Idle Mode with PWM\n\r");
      00082B 74 ED            [12] 2004 	mov	a,#___str_37
      00082D C0 E0            [24] 2005 	push	acc
      00082F 74 27            [12] 2006 	mov	a,#(___str_37 >> 8)
      000831 C0 E0            [24] 2007 	push	acc
      000833 74 80            [12] 2008 	mov	a,#0x80
      000835 C0 E0            [24] 2009 	push	acc
      000837 12 18 33         [24] 2010 	lcall	_printf
      00083A 15 81            [12] 2011 	dec	sp
      00083C 15 81            [12] 2012 	dec	sp
      00083E 15 81            [12] 2013 	dec	sp
                                   2014 ;	program.c:389: printf("'L' -> Change Prescalar to lowest frequency\n\r");
      000840 74 09            [12] 2015 	mov	a,#___str_38
      000842 C0 E0            [24] 2016 	push	acc
      000844 74 28            [12] 2017 	mov	a,#(___str_38 >> 8)
      000846 C0 E0            [24] 2018 	push	acc
      000848 74 80            [12] 2019 	mov	a,#0x80
      00084A C0 E0            [24] 2020 	push	acc
      00084C 12 18 33         [24] 2021 	lcall	_printf
      00084F 15 81            [12] 2022 	dec	sp
      000851 15 81            [12] 2023 	dec	sp
      000853 15 81            [12] 2024 	dec	sp
                                   2025 ;	program.c:390: printf("'D' -> Power Down Mode\n\n\r");
      000855 74 37            [12] 2026 	mov	a,#___str_39
      000857 C0 E0            [24] 2027 	push	acc
      000859 74 28            [12] 2028 	mov	a,#(___str_39 >> 8)
      00085B C0 E0            [24] 2029 	push	acc
      00085D 74 80            [12] 2030 	mov	a,#0x80
      00085F C0 E0            [24] 2031 	push	acc
      000861 12 18 33         [24] 2032 	lcall	_printf
      000864 15 81            [12] 2033 	dec	sp
      000866 15 81            [12] 2034 	dec	sp
      000868 15 81            [12] 2035 	dec	sp
                                   2036 ;	program.c:392: printf("'M' -> Go to Main Menu \n\n\r");
      00086A 74 51            [12] 2037 	mov	a,#___str_40
      00086C C0 E0            [24] 2038 	push	acc
      00086E 74 28            [12] 2039 	mov	a,#(___str_40 >> 8)
      000870 C0 E0            [24] 2040 	push	acc
      000872 74 80            [12] 2041 	mov	a,#0x80
      000874 C0 E0            [24] 2042 	push	acc
      000876 12 18 33         [24] 2043 	lcall	_printf
      000879 15 81            [12] 2044 	dec	sp
      00087B 15 81            [12] 2045 	dec	sp
      00087D 15 81            [12] 2046 	dec	sp
                                   2047 ;	program.c:393: }
      00087F 22               [24] 2048 	ret
                                   2049 ;------------------------------------------------------------
                                   2050 ;Allocation info for local variables in function 'print_heap_menu'
                                   2051 ;------------------------------------------------------------
                                   2052 ;	program.c:400: void print_heap_menu()
                                   2053 ;	-----------------------------------------
                                   2054 ;	 function print_heap_menu
                                   2055 ;	-----------------------------------------
      000880                       2056 _print_heap_menu:
                                   2057 ;	program.c:402: DEBUGPORT(0x05);
      000880 75 82 05         [24] 2058 	mov	dpl,#0x05
      000883 12 13 FA         [24] 2059 	lcall	_dataout
                                   2060 ;	program.c:403: printf("\n\n\r^^^^^^^^^^^^^^^^^^^-HEAP-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ \n\n\r");
      000886 74 6C            [12] 2061 	mov	a,#___str_41
      000888 C0 E0            [24] 2062 	push	acc
      00088A 74 28            [12] 2063 	mov	a,#(___str_41 >> 8)
      00088C C0 E0            [24] 2064 	push	acc
      00088E 74 80            [12] 2065 	mov	a,#0x80
      000890 C0 E0            [24] 2066 	push	acc
      000892 12 18 33         [24] 2067 	lcall	_printf
      000895 15 81            [12] 2068 	dec	sp
      000897 15 81            [12] 2069 	dec	sp
      000899 15 81            [12] 2070 	dec	sp
                                   2071 ;	program.c:404: printf("You can enter characters or use commands from below \n\r");
      00089B 74 AC            [12] 2072 	mov	a,#___str_42
      00089D C0 E0            [24] 2073 	push	acc
      00089F 74 28            [12] 2074 	mov	a,#(___str_42 >> 8)
      0008A1 C0 E0            [24] 2075 	push	acc
      0008A3 74 80            [12] 2076 	mov	a,#0x80
      0008A5 C0 E0            [24] 2077 	push	acc
      0008A7 12 18 33         [24] 2078 	lcall	_printf
      0008AA 15 81            [12] 2079 	dec	sp
      0008AC 15 81            [12] 2080 	dec	sp
      0008AE 15 81            [12] 2081 	dec	sp
                                   2082 ;	program.c:405: printf("'?' -> Show heap status, dump & clear Buffer 0 \n\r");
      0008B0 74 E3            [12] 2083 	mov	a,#___str_43
      0008B2 C0 E0            [24] 2084 	push	acc
      0008B4 74 28            [12] 2085 	mov	a,#(___str_43 >> 8)
      0008B6 C0 E0            [24] 2086 	push	acc
      0008B8 74 80            [12] 2087 	mov	a,#0x80
      0008BA C0 E0            [24] 2088 	push	acc
      0008BC 12 18 33         [24] 2089 	lcall	_printf
      0008BF 15 81            [12] 2090 	dec	sp
      0008C1 15 81            [12] 2091 	dec	sp
      0008C3 15 81            [12] 2092 	dec	sp
                                   2093 ;	program.c:406: printf("'+' -> Add a new Buffer\n\r");
      0008C5 74 15            [12] 2094 	mov	a,#___str_44
      0008C7 C0 E0            [24] 2095 	push	acc
      0008C9 74 29            [12] 2096 	mov	a,#(___str_44 >> 8)
      0008CB C0 E0            [24] 2097 	push	acc
      0008CD 74 80            [12] 2098 	mov	a,#0x80
      0008CF C0 E0            [24] 2099 	push	acc
      0008D1 12 18 33         [24] 2100 	lcall	_printf
      0008D4 15 81            [12] 2101 	dec	sp
      0008D6 15 81            [12] 2102 	dec	sp
      0008D8 15 81            [12] 2103 	dec	sp
                                   2104 ;	program.c:407: printf("'-' -> Delete existing Buffer\n\r");
      0008DA 74 2F            [12] 2105 	mov	a,#___str_45
      0008DC C0 E0            [24] 2106 	push	acc
      0008DE 74 29            [12] 2107 	mov	a,#(___str_45 >> 8)
      0008E0 C0 E0            [24] 2108 	push	acc
      0008E2 74 80            [12] 2109 	mov	a,#0x80
      0008E4 C0 E0            [24] 2110 	push	acc
      0008E6 12 18 33         [24] 2111 	lcall	_printf
      0008E9 15 81            [12] 2112 	dec	sp
      0008EB 15 81            [12] 2113 	dec	sp
      0008ED 15 81            [12] 2114 	dec	sp
                                   2115 ;	program.c:408: printf("'=' -> Dump Buffer 0 in hex\n\r");
      0008EF 74 4F            [12] 2116 	mov	a,#___str_46
      0008F1 C0 E0            [24] 2117 	push	acc
      0008F3 74 29            [12] 2118 	mov	a,#(___str_46 >> 8)
      0008F5 C0 E0            [24] 2119 	push	acc
      0008F7 74 80            [12] 2120 	mov	a,#0x80
      0008F9 C0 E0            [24] 2121 	push	acc
      0008FB 12 18 33         [24] 2122 	lcall	_printf
      0008FE 15 81            [12] 2123 	dec	sp
      000900 15 81            [12] 2124 	dec	sp
      000902 15 81            [12] 2125 	dec	sp
                                   2126 ;	program.c:409: printf("'@' -> Free all Heap & begin again\n\n\r");
      000904 74 6D            [12] 2127 	mov	a,#___str_47
      000906 C0 E0            [24] 2128 	push	acc
      000908 74 29            [12] 2129 	mov	a,#(___str_47 >> 8)
      00090A C0 E0            [24] 2130 	push	acc
      00090C 74 80            [12] 2131 	mov	a,#0x80
      00090E C0 E0            [24] 2132 	push	acc
      000910 12 18 33         [24] 2133 	lcall	_printf
      000913 15 81            [12] 2134 	dec	sp
      000915 15 81            [12] 2135 	dec	sp
      000917 15 81            [12] 2136 	dec	sp
                                   2137 ;	program.c:410: printf("'M' -> Go to Main Menu \n\n\r");
      000919 74 51            [12] 2138 	mov	a,#___str_40
      00091B C0 E0            [24] 2139 	push	acc
      00091D 74 28            [12] 2140 	mov	a,#(___str_40 >> 8)
      00091F C0 E0            [24] 2141 	push	acc
      000921 74 80            [12] 2142 	mov	a,#0x80
      000923 C0 E0            [24] 2143 	push	acc
      000925 12 18 33         [24] 2144 	lcall	_printf
      000928 15 81            [12] 2145 	dec	sp
      00092A 15 81            [12] 2146 	dec	sp
      00092C 15 81            [12] 2147 	dec	sp
                                   2148 ;	program.c:411: }
      00092E 22               [24] 2149 	ret
                                   2150 ;------------------------------------------------------------
                                   2151 ;Allocation info for local variables in function 'create_new_buffer'
                                   2152 ;------------------------------------------------------------
                                   2153 ;buff_size                 Allocated with name '_create_new_buffer_buff_size_65537_84'
                                   2154 ;buff                      Allocated with name '_create_new_buffer_buff_65537_84'
                                   2155 ;------------------------------------------------------------
                                   2156 ;	program.c:419: int create_new_buffer()
                                   2157 ;	-----------------------------------------
                                   2158 ;	 function create_new_buffer
                                   2159 ;	-----------------------------------------
      00092F                       2160 _create_new_buffer:
                                   2161 ;	program.c:421: DEBUGPORT(0x06);
      00092F 75 82 06         [24] 2162 	mov	dpl,#0x06
      000932 12 13 FA         [24] 2163 	lcall	_dataout
                                   2164 ;	program.c:424: if (program_stats.allocated_heap == program_stats.total_heap_size)
      000935 90 00 03         [24] 2165 	mov	dptr,#(_program_stats + 0x0002)
      000938 E0               [24] 2166 	movx	a,@dptr
      000939 FE               [12] 2167 	mov	r6,a
      00093A A3               [24] 2168 	inc	dptr
      00093B E0               [24] 2169 	movx	a,@dptr
      00093C FF               [12] 2170 	mov	r7,a
      00093D 90 00 01         [24] 2171 	mov	dptr,#_program_stats
      000940 E0               [24] 2172 	movx	a,@dptr
      000941 FC               [12] 2173 	mov	r4,a
      000942 A3               [24] 2174 	inc	dptr
      000943 E0               [24] 2175 	movx	a,@dptr
      000944 FD               [12] 2176 	mov	r5,a
      000945 EE               [12] 2177 	mov	a,r6
      000946 B5 04 07         [24] 2178 	cjne	a,ar4,00133$
      000949 EF               [12] 2179 	mov	a,r7
      00094A B5 05 03         [24] 2180 	cjne	a,ar5,00133$
      00094D 02 0A 90         [24] 2181 	ljmp	00111$
      000950                       2182 00133$:
                                   2183 ;	program.c:427: get_new_buff:
      000950                       2184 00103$:
                                   2185 ;	program.c:428: printf("\n\rGive Valid Buffer Size(030-300):");
      000950 74 93            [12] 2186 	mov	a,#___str_48
      000952 C0 E0            [24] 2187 	push	acc
      000954 74 29            [12] 2188 	mov	a,#(___str_48 >> 8)
      000956 C0 E0            [24] 2189 	push	acc
      000958 74 80            [12] 2190 	mov	a,#0x80
      00095A C0 E0            [24] 2191 	push	acc
      00095C 12 18 33         [24] 2192 	lcall	_printf
      00095F 15 81            [12] 2193 	dec	sp
      000961 15 81            [12] 2194 	dec	sp
      000963 15 81            [12] 2195 	dec	sp
                                   2196 ;	program.c:429: buff_size = get_number(3);
      000965 90 00 03         [24] 2197 	mov	dptr,#0x0003
      000968 12 12 4A         [24] 2198 	lcall	_get_number
      00096B AE 82            [24] 2199 	mov	r6,dpl
      00096D AF 83            [24] 2200 	mov	r7,dph
                                   2201 ;	program.c:430: if (buff_size >= 30 && buff_size <= 300)
      00096F C3               [12] 2202 	clr	c
      000970 EE               [12] 2203 	mov	a,r6
      000971 94 1E            [12] 2204 	subb	a,#0x1e
      000973 EF               [12] 2205 	mov	a,r7
      000974 64 80            [12] 2206 	xrl	a,#0x80
      000976 94 80            [12] 2207 	subb	a,#0x80
      000978 40 D6            [24] 2208 	jc	00103$
      00097A 74 2C            [12] 2209 	mov	a,#0x2c
      00097C 9E               [12] 2210 	subb	a,r6
      00097D 74 81            [12] 2211 	mov	a,#(0x01 ^ 0x80)
      00097F 8F F0            [24] 2212 	mov	b,r7
      000981 63 F0 80         [24] 2213 	xrl	b,#0x80
      000984 95 F0            [12] 2214 	subb	a,b
      000986 40 C8            [24] 2215 	jc	00103$
                                   2216 ;	program.c:432: buff.buffer_start = malloc(buff_size);
      000988 8E 82            [24] 2217 	mov	dpl,r6
      00098A 8F 83            [24] 2218 	mov	dph,r7
      00098C C0 07            [24] 2219 	push	ar7
      00098E C0 06            [24] 2220 	push	ar6
      000990 12 16 5C         [24] 2221 	lcall	_malloc
      000993 AC 82            [24] 2222 	mov	r4,dpl
      000995 AD 83            [24] 2223 	mov	r5,dph
      000997 D0 06            [24] 2224 	pop	ar6
      000999 D0 07            [24] 2225 	pop	ar7
      00099B 7B 00            [12] 2226 	mov	r3,#0x00
      00099D 90 01 39         [24] 2227 	mov	dptr,#(_create_new_buffer_buff_65537_84 + 0x0002)
      0009A0 EC               [12] 2228 	mov	a,r4
      0009A1 F0               [24] 2229 	movx	@dptr,a
      0009A2 ED               [12] 2230 	mov	a,r5
      0009A3 A3               [24] 2231 	inc	dptr
      0009A4 F0               [24] 2232 	movx	@dptr,a
      0009A5 EB               [12] 2233 	mov	a,r3
      0009A6 A3               [24] 2234 	inc	dptr
      0009A7 F0               [24] 2235 	movx	@dptr,a
                                   2236 ;	program.c:433: if (buff.buffer_start == NULL)
      0009A8 EC               [12] 2237 	mov	a,r4
      0009A9 4D               [12] 2238 	orl	a,r5
      0009AA 70 18            [24] 2239 	jnz	00105$
                                   2240 ;	program.c:435: printf("Failed, give smaller buffer\n\r");
      0009AC 74 B6            [12] 2241 	mov	a,#___str_49
      0009AE C0 E0            [24] 2242 	push	acc
      0009B0 74 29            [12] 2243 	mov	a,#(___str_49 >> 8)
      0009B2 C0 E0            [24] 2244 	push	acc
      0009B4 74 80            [12] 2245 	mov	a,#0x80
      0009B6 C0 E0            [24] 2246 	push	acc
      0009B8 12 18 33         [24] 2247 	lcall	_printf
      0009BB 15 81            [12] 2248 	dec	sp
      0009BD 15 81            [12] 2249 	dec	sp
      0009BF 15 81            [12] 2250 	dec	sp
      0009C1 02 0A 8C         [24] 2251 	ljmp	00106$
      0009C4                       2252 00105$:
                                   2253 ;	program.c:439: printf("\n\n\r####SUCCESS, BUFFER Created####\n\n\r");
      0009C4 C0 07            [24] 2254 	push	ar7
      0009C6 C0 06            [24] 2255 	push	ar6
      0009C8 74 D4            [12] 2256 	mov	a,#___str_50
      0009CA C0 E0            [24] 2257 	push	acc
      0009CC 74 29            [12] 2258 	mov	a,#(___str_50 >> 8)
      0009CE C0 E0            [24] 2259 	push	acc
      0009D0 74 80            [12] 2260 	mov	a,#0x80
      0009D2 C0 E0            [24] 2261 	push	acc
      0009D4 12 18 33         [24] 2262 	lcall	_printf
      0009D7 15 81            [12] 2263 	dec	sp
      0009D9 15 81            [12] 2264 	dec	sp
      0009DB 15 81            [12] 2265 	dec	sp
      0009DD D0 06            [24] 2266 	pop	ar6
      0009DF D0 07            [24] 2267 	pop	ar7
                                   2268 ;	program.c:441: program_stats.allocated_heap += buff_size;
      0009E1 90 00 03         [24] 2269 	mov	dptr,#(_program_stats + 0x0002)
      0009E4 E0               [24] 2270 	movx	a,@dptr
      0009E5 FC               [12] 2271 	mov	r4,a
      0009E6 A3               [24] 2272 	inc	dptr
      0009E7 E0               [24] 2273 	movx	a,@dptr
      0009E8 FD               [12] 2274 	mov	r5,a
      0009E9 EE               [12] 2275 	mov	a,r6
      0009EA 2C               [12] 2276 	add	a,r4
      0009EB FC               [12] 2277 	mov	r4,a
      0009EC EF               [12] 2278 	mov	a,r7
      0009ED 3D               [12] 2279 	addc	a,r5
      0009EE FD               [12] 2280 	mov	r5,a
      0009EF 90 00 03         [24] 2281 	mov	dptr,#(_program_stats + 0x0002)
      0009F2 EC               [12] 2282 	mov	a,r4
      0009F3 F0               [24] 2283 	movx	@dptr,a
      0009F4 ED               [12] 2284 	mov	a,r5
      0009F5 A3               [24] 2285 	inc	dptr
      0009F6 F0               [24] 2286 	movx	@dptr,a
                                   2287 ;	program.c:442: buff.buff_size = buff_size;
      0009F7 90 01 3F         [24] 2288 	mov	dptr,#(_create_new_buffer_buff_65537_84 + 0x0008)
      0009FA EE               [12] 2289 	mov	a,r6
      0009FB F0               [24] 2290 	movx	@dptr,a
      0009FC EF               [12] 2291 	mov	a,r7
      0009FD A3               [24] 2292 	inc	dptr
      0009FE F0               [24] 2293 	movx	@dptr,a
                                   2294 ;	program.c:443: buff.buffer_num = program_stats.total_buffers;
      0009FF 90 00 09         [24] 2295 	mov	dptr,#(_program_stats + 0x0008)
      000A02 E0               [24] 2296 	movx	a,@dptr
      000A03 FC               [12] 2297 	mov	r4,a
      000A04 A3               [24] 2298 	inc	dptr
      000A05 E0               [24] 2299 	movx	a,@dptr
      000A06 FD               [12] 2300 	mov	r5,a
      000A07 90 01 37         [24] 2301 	mov	dptr,#_create_new_buffer_buff_65537_84
      000A0A EC               [12] 2302 	mov	a,r4
      000A0B F0               [24] 2303 	movx	@dptr,a
      000A0C ED               [12] 2304 	mov	a,r5
      000A0D A3               [24] 2305 	inc	dptr
      000A0E F0               [24] 2306 	movx	@dptr,a
                                   2307 ;	program.c:444: buff.buffer_end = buff.buffer_start + buff_size;
      000A0F 90 01 39         [24] 2308 	mov	dptr,#(_create_new_buffer_buff_65537_84 + 0x0002)
      000A12 E0               [24] 2309 	movx	a,@dptr
      000A13 FB               [12] 2310 	mov	r3,a
      000A14 A3               [24] 2311 	inc	dptr
      000A15 E0               [24] 2312 	movx	a,@dptr
      000A16 FC               [12] 2313 	mov	r4,a
      000A17 A3               [24] 2314 	inc	dptr
      000A18 E0               [24] 2315 	movx	a,@dptr
      000A19 FD               [12] 2316 	mov	r5,a
      000A1A EE               [12] 2317 	mov	a,r6
      000A1B 2B               [12] 2318 	add	a,r3
      000A1C FE               [12] 2319 	mov	r6,a
      000A1D EF               [12] 2320 	mov	a,r7
      000A1E 3C               [12] 2321 	addc	a,r4
      000A1F FF               [12] 2322 	mov	r7,a
      000A20 8D 02            [24] 2323 	mov	ar2,r5
      000A22 90 01 3C         [24] 2324 	mov	dptr,#(_create_new_buffer_buff_65537_84 + 0x0005)
      000A25 EE               [12] 2325 	mov	a,r6
      000A26 F0               [24] 2326 	movx	@dptr,a
      000A27 EF               [12] 2327 	mov	a,r7
      000A28 A3               [24] 2328 	inc	dptr
      000A29 F0               [24] 2329 	movx	@dptr,a
      000A2A EA               [12] 2330 	mov	a,r2
      000A2B A3               [24] 2331 	inc	dptr
      000A2C F0               [24] 2332 	movx	@dptr,a
                                   2333 ;	program.c:445: buff.num_char = 0;
      000A2D 90 01 41         [24] 2334 	mov	dptr,#(_create_new_buffer_buff_65537_84 + 0x000a)
      000A30 E4               [12] 2335 	clr	a
      000A31 F0               [24] 2336 	movx	@dptr,a
      000A32 A3               [24] 2337 	inc	dptr
      000A33 F0               [24] 2338 	movx	@dptr,a
                                   2339 ;	program.c:447: buffers_array[program_stats.total_buffers] = buff;
      000A34 90 00 09         [24] 2340 	mov	dptr,#(_program_stats + 0x0008)
      000A37 E0               [24] 2341 	movx	a,@dptr
      000A38 FE               [12] 2342 	mov	r6,a
      000A39 A3               [24] 2343 	inc	dptr
      000A3A E0               [24] 2344 	movx	a,@dptr
      000A3B FF               [12] 2345 	mov	r7,a
      000A3C 90 15 0E         [24] 2346 	mov	dptr,#__mulint_PARM_2
      000A3F EE               [12] 2347 	mov	a,r6
      000A40 F0               [24] 2348 	movx	@dptr,a
      000A41 EF               [12] 2349 	mov	a,r7
      000A42 A3               [24] 2350 	inc	dptr
      000A43 F0               [24] 2351 	movx	@dptr,a
      000A44 90 00 0C         [24] 2352 	mov	dptr,#0x000c
      000A47 12 17 C5         [24] 2353 	lcall	__mulint
      000A4A AE 82            [24] 2354 	mov	r6,dpl
      000A4C AF 83            [24] 2355 	mov	r7,dph
      000A4E EE               [12] 2356 	mov	a,r6
      000A4F 24 0B            [12] 2357 	add	a,#_buffers_array
      000A51 FE               [12] 2358 	mov	r6,a
      000A52 EF               [12] 2359 	mov	a,r7
      000A53 34 00            [12] 2360 	addc	a,#(_buffers_array >> 8)
      000A55 FF               [12] 2361 	mov	r7,a
      000A56 7D 00            [12] 2362 	mov	r5,#0x00
      000A58 90 14 FD         [24] 2363 	mov	dptr,#___memcpy_PARM_2
      000A5B 74 37            [12] 2364 	mov	a,#_create_new_buffer_buff_65537_84
      000A5D F0               [24] 2365 	movx	@dptr,a
      000A5E 74 01            [12] 2366 	mov	a,#(_create_new_buffer_buff_65537_84 >> 8)
      000A60 A3               [24] 2367 	inc	dptr
      000A61 F0               [24] 2368 	movx	@dptr,a
      000A62 E4               [12] 2369 	clr	a
      000A63 A3               [24] 2370 	inc	dptr
      000A64 F0               [24] 2371 	movx	@dptr,a
      000A65 90 15 00         [24] 2372 	mov	dptr,#___memcpy_PARM_3
      000A68 74 0C            [12] 2373 	mov	a,#0x0c
      000A6A F0               [24] 2374 	movx	@dptr,a
      000A6B E4               [12] 2375 	clr	a
      000A6C A3               [24] 2376 	inc	dptr
      000A6D F0               [24] 2377 	movx	@dptr,a
      000A6E 8E 82            [24] 2378 	mov	dpl,r6
      000A70 8F 83            [24] 2379 	mov	dph,r7
      000A72 8D F0            [24] 2380 	mov	b,r5
      000A74 12 15 91         [24] 2381 	lcall	___memcpy
                                   2382 ;	program.c:448: program_stats.total_buffers += 1;
      000A77 90 00 09         [24] 2383 	mov	dptr,#(_program_stats + 0x0008)
      000A7A E0               [24] 2384 	movx	a,@dptr
      000A7B FE               [12] 2385 	mov	r6,a
      000A7C A3               [24] 2386 	inc	dptr
      000A7D E0               [24] 2387 	movx	a,@dptr
      000A7E FF               [12] 2388 	mov	r7,a
      000A7F 0E               [12] 2389 	inc	r6
      000A80 BE 00 01         [24] 2390 	cjne	r6,#0x00,00137$
      000A83 0F               [12] 2391 	inc	r7
      000A84                       2392 00137$:
      000A84 90 00 09         [24] 2393 	mov	dptr,#(_program_stats + 0x0008)
      000A87 EE               [12] 2394 	mov	a,r6
      000A88 F0               [24] 2395 	movx	@dptr,a
      000A89 EF               [12] 2396 	mov	a,r7
      000A8A A3               [24] 2397 	inc	dptr
      000A8B F0               [24] 2398 	movx	@dptr,a
      000A8C                       2399 00106$:
                                   2400 ;	program.c:450: return 0;
      000A8C 90 00 00         [24] 2401 	mov	dptr,#0x0000
                                   2402 ;	program.c:456: no_heap_left:
      000A8F 22               [24] 2403 	ret
      000A90                       2404 00111$:
                                   2405 ;	program.c:457: printf("No Heap Memory Left, Delete some buffers...\n\r");
      000A90 74 FA            [12] 2406 	mov	a,#___str_51
      000A92 C0 E0            [24] 2407 	push	acc
      000A94 74 29            [12] 2408 	mov	a,#(___str_51 >> 8)
      000A96 C0 E0            [24] 2409 	push	acc
      000A98 74 80            [12] 2410 	mov	a,#0x80
      000A9A C0 E0            [24] 2411 	push	acc
      000A9C 12 18 33         [24] 2412 	lcall	_printf
      000A9F 15 81            [12] 2413 	dec	sp
      000AA1 15 81            [12] 2414 	dec	sp
      000AA3 15 81            [12] 2415 	dec	sp
                                   2416 ;	program.c:458: return 0;
      000AA5 90 00 00         [24] 2417 	mov	dptr,#0x0000
                                   2418 ;	program.c:459: }
      000AA8 22               [24] 2419 	ret
                                   2420 ;------------------------------------------------------------
                                   2421 ;Allocation info for local variables in function 'create_initial_buffers'
                                   2422 ;------------------------------------------------------------
                                   2423 ;buff_size                 Allocated with name '_create_initial_buffers_buff_size_65537_90'
                                   2424 ;buff                      Allocated with name '_create_initial_buffers_buff_65538_91'
                                   2425 ;buff1                     Allocated with name '_create_initial_buffers_buff1_65538_91'
                                   2426 ;------------------------------------------------------------
                                   2427 ;	program.c:467: void create_initial_buffers()
                                   2428 ;	-----------------------------------------
                                   2429 ;	 function create_initial_buffers
                                   2430 ;	-----------------------------------------
      000AA9                       2431 _create_initial_buffers:
                                   2432 ;	program.c:469: DEBUGPORT(0x07);
      000AA9 75 82 07         [24] 2433 	mov	dpl,#0x07
      000AAC 12 13 FA         [24] 2434 	lcall	_dataout
                                   2435 ;	program.c:472: get_buff:
      000AAF                       2436 00101$:
                                   2437 ;	program.c:473: printf("\n\rGive Valid Initial Buffer Size(0048-4800):");
      000AAF 74 28            [12] 2438 	mov	a,#___str_52
      000AB1 C0 E0            [24] 2439 	push	acc
      000AB3 74 2A            [12] 2440 	mov	a,#(___str_52 >> 8)
      000AB5 C0 E0            [24] 2441 	push	acc
      000AB7 74 80            [12] 2442 	mov	a,#0x80
      000AB9 C0 E0            [24] 2443 	push	acc
      000ABB 12 18 33         [24] 2444 	lcall	_printf
      000ABE 15 81            [12] 2445 	dec	sp
      000AC0 15 81            [12] 2446 	dec	sp
      000AC2 15 81            [12] 2447 	dec	sp
                                   2448 ;	program.c:474: buff_size = get_number(4);
      000AC4 90 00 04         [24] 2449 	mov	dptr,#0x0004
      000AC7 12 12 4A         [24] 2450 	lcall	_get_number
      000ACA AE 82            [24] 2451 	mov	r6,dpl
      000ACC AF 83            [24] 2452 	mov	r7,dph
                                   2453 ;	program.c:478: if (buff_size >= 48 && buff_size <= 4800)
      000ACE C3               [12] 2454 	clr	c
      000ACF EE               [12] 2455 	mov	a,r6
      000AD0 94 30            [12] 2456 	subb	a,#0x30
      000AD2 EF               [12] 2457 	mov	a,r7
      000AD3 64 80            [12] 2458 	xrl	a,#0x80
      000AD5 94 80            [12] 2459 	subb	a,#0x80
      000AD7 40 D6            [24] 2460 	jc	00101$
      000AD9 74 C0            [12] 2461 	mov	a,#0xc0
      000ADB 9E               [12] 2462 	subb	a,r6
      000ADC 74 92            [12] 2463 	mov	a,#(0x12 ^ 0x80)
      000ADE 8F F0            [24] 2464 	mov	b,r7
      000AE0 63 F0 80         [24] 2465 	xrl	b,#0x80
      000AE3 95 F0            [12] 2466 	subb	a,b
      000AE5 40 C8            [24] 2467 	jc	00101$
                                   2468 ;	program.c:480: buff.buffer_start = malloc(buff_size);
      000AE7 8E 82            [24] 2469 	mov	dpl,r6
      000AE9 8F 83            [24] 2470 	mov	dph,r7
      000AEB C0 07            [24] 2471 	push	ar7
      000AED C0 06            [24] 2472 	push	ar6
      000AEF 12 16 5C         [24] 2473 	lcall	_malloc
      000AF2 AC 82            [24] 2474 	mov	r4,dpl
      000AF4 AD 83            [24] 2475 	mov	r5,dph
      000AF6 D0 06            [24] 2476 	pop	ar6
      000AF8 D0 07            [24] 2477 	pop	ar7
      000AFA 7B 00            [12] 2478 	mov	r3,#0x00
      000AFC 90 01 45         [24] 2479 	mov	dptr,#(_create_initial_buffers_buff_65538_91 + 0x0002)
      000AFF EC               [12] 2480 	mov	a,r4
      000B00 F0               [24] 2481 	movx	@dptr,a
      000B01 ED               [12] 2482 	mov	a,r5
      000B02 A3               [24] 2483 	inc	dptr
      000B03 F0               [24] 2484 	movx	@dptr,a
      000B04 EB               [12] 2485 	mov	a,r3
      000B05 A3               [24] 2486 	inc	dptr
      000B06 F0               [24] 2487 	movx	@dptr,a
                                   2488 ;	program.c:481: buff1.buffer_start = malloc(buff_size);
      000B07 8E 82            [24] 2489 	mov	dpl,r6
      000B09 8F 83            [24] 2490 	mov	dph,r7
      000B0B C0 07            [24] 2491 	push	ar7
      000B0D C0 06            [24] 2492 	push	ar6
      000B0F 12 16 5C         [24] 2493 	lcall	_malloc
      000B12 AC 82            [24] 2494 	mov	r4,dpl
      000B14 AD 83            [24] 2495 	mov	r5,dph
      000B16 D0 06            [24] 2496 	pop	ar6
      000B18 D0 07            [24] 2497 	pop	ar7
      000B1A 7B 00            [12] 2498 	mov	r3,#0x00
      000B1C 90 01 51         [24] 2499 	mov	dptr,#(_create_initial_buffers_buff1_65538_91 + 0x0002)
      000B1F EC               [12] 2500 	mov	a,r4
      000B20 F0               [24] 2501 	movx	@dptr,a
      000B21 ED               [12] 2502 	mov	a,r5
      000B22 A3               [24] 2503 	inc	dptr
      000B23 F0               [24] 2504 	movx	@dptr,a
      000B24 EB               [12] 2505 	mov	a,r3
      000B25 A3               [24] 2506 	inc	dptr
      000B26 F0               [24] 2507 	movx	@dptr,a
                                   2508 ;	program.c:483: if (buff.buffer_start == NULL || buff1.buffer_start == NULL)
      000B27 90 01 45         [24] 2509 	mov	dptr,#(_create_initial_buffers_buff_65538_91 + 0x0002)
      000B2A E0               [24] 2510 	movx	a,@dptr
      000B2B FB               [12] 2511 	mov	r3,a
      000B2C A3               [24] 2512 	inc	dptr
      000B2D E0               [24] 2513 	movx	a,@dptr
      000B2E FC               [12] 2514 	mov	r4,a
      000B2F A3               [24] 2515 	inc	dptr
      000B30 E0               [24] 2516 	movx	a,@dptr
      000B31 EB               [12] 2517 	mov	a,r3
      000B32 4C               [12] 2518 	orl	a,r4
      000B33 60 0F            [24] 2519 	jz	00106$
      000B35 90 01 51         [24] 2520 	mov	dptr,#(_create_initial_buffers_buff1_65538_91 + 0x0002)
      000B38 E0               [24] 2521 	movx	a,@dptr
      000B39 FB               [12] 2522 	mov	r3,a
      000B3A A3               [24] 2523 	inc	dptr
      000B3B E0               [24] 2524 	movx	a,@dptr
      000B3C FC               [12] 2525 	mov	r4,a
      000B3D A3               [24] 2526 	inc	dptr
      000B3E E0               [24] 2527 	movx	a,@dptr
      000B3F FD               [12] 2528 	mov	r5,a
      000B40 EB               [12] 2529 	mov	a,r3
      000B41 4C               [12] 2530 	orl	a,r4
      000B42 70 60            [24] 2531 	jnz	00107$
      000B44                       2532 00106$:
                                   2533 ;	program.c:485: printf("\n\r####FAIL, Please give a smaller buffer size####\n\n\r");
      000B44 74 55            [12] 2534 	mov	a,#___str_53
      000B46 C0 E0            [24] 2535 	push	acc
      000B48 74 2A            [12] 2536 	mov	a,#(___str_53 >> 8)
      000B4A C0 E0            [24] 2537 	push	acc
      000B4C 74 80            [12] 2538 	mov	a,#0x80
      000B4E C0 E0            [24] 2539 	push	acc
      000B50 12 18 33         [24] 2540 	lcall	_printf
      000B53 15 81            [12] 2541 	dec	sp
      000B55 15 81            [12] 2542 	dec	sp
      000B57 15 81            [12] 2543 	dec	sp
                                   2544 ;	program.c:487: if (buff.buffer_start != NULL)
      000B59 90 01 45         [24] 2545 	mov	dptr,#(_create_initial_buffers_buff_65538_91 + 0x0002)
      000B5C E0               [24] 2546 	movx	a,@dptr
      000B5D FB               [12] 2547 	mov	r3,a
      000B5E A3               [24] 2548 	inc	dptr
      000B5F E0               [24] 2549 	movx	a,@dptr
      000B60 FC               [12] 2550 	mov	r4,a
      000B61 A3               [24] 2551 	inc	dptr
      000B62 E0               [24] 2552 	movx	a,@dptr
      000B63 EB               [12] 2553 	mov	a,r3
      000B64 4C               [12] 2554 	orl	a,r4
      000B65 60 14            [24] 2555 	jz	00103$
                                   2556 ;	program.c:488: free(buff.buffer_start);
      000B67 90 01 45         [24] 2557 	mov	dptr,#(_create_initial_buffers_buff_65538_91 + 0x0002)
      000B6A E0               [24] 2558 	movx	a,@dptr
      000B6B FB               [12] 2559 	mov	r3,a
      000B6C A3               [24] 2560 	inc	dptr
      000B6D E0               [24] 2561 	movx	a,@dptr
      000B6E FC               [12] 2562 	mov	r4,a
      000B6F A3               [24] 2563 	inc	dptr
      000B70 E0               [24] 2564 	movx	a,@dptr
      000B71 FD               [12] 2565 	mov	r5,a
      000B72 8B 82            [24] 2566 	mov	dpl,r3
      000B74 8C 83            [24] 2567 	mov	dph,r4
      000B76 8D F0            [24] 2568 	mov	b,r5
      000B78 12 14 3A         [24] 2569 	lcall	_free
      000B7B                       2570 00103$:
                                   2571 ;	program.c:489: if (buff1.buffer_start != NULL)
      000B7B 90 01 51         [24] 2572 	mov	dptr,#(_create_initial_buffers_buff1_65538_91 + 0x0002)
      000B7E E0               [24] 2573 	movx	a,@dptr
      000B7F FB               [12] 2574 	mov	r3,a
      000B80 A3               [24] 2575 	inc	dptr
      000B81 E0               [24] 2576 	movx	a,@dptr
      000B82 FC               [12] 2577 	mov	r4,a
      000B83 A3               [24] 2578 	inc	dptr
      000B84 E0               [24] 2579 	movx	a,@dptr
      000B85 FD               [12] 2580 	mov	r5,a
      000B86 EB               [12] 2581 	mov	a,r3
      000B87 4C               [12] 2582 	orl	a,r4
      000B88 70 03            [24] 2583 	jnz	00145$
      000B8A 02 0A AF         [24] 2584 	ljmp	00101$
      000B8D                       2585 00145$:
                                   2586 ;	program.c:490: free(buff1.buffer_start);
      000B8D 90 01 51         [24] 2587 	mov	dptr,#(_create_initial_buffers_buff1_65538_91 + 0x0002)
      000B90 E0               [24] 2588 	movx	a,@dptr
      000B91 FB               [12] 2589 	mov	r3,a
      000B92 A3               [24] 2590 	inc	dptr
      000B93 E0               [24] 2591 	movx	a,@dptr
      000B94 FC               [12] 2592 	mov	r4,a
      000B95 A3               [24] 2593 	inc	dptr
      000B96 E0               [24] 2594 	movx	a,@dptr
      000B97 FD               [12] 2595 	mov	r5,a
      000B98 8B 82            [24] 2596 	mov	dpl,r3
      000B9A 8C 83            [24] 2597 	mov	dph,r4
      000B9C 8D F0            [24] 2598 	mov	b,r5
      000B9E 12 14 3A         [24] 2599 	lcall	_free
                                   2600 ;	program.c:492: goto get_buff;
      000BA1 02 0A AF         [24] 2601 	ljmp	00101$
      000BA4                       2602 00107$:
                                   2603 ;	program.c:497: printf("\n\n\r####SUCCESS, INITIAL BUFFERS Created####\n\n\r");
      000BA4 C0 07            [24] 2604 	push	ar7
      000BA6 C0 06            [24] 2605 	push	ar6
      000BA8 74 8A            [12] 2606 	mov	a,#___str_54
      000BAA C0 E0            [24] 2607 	push	acc
      000BAC 74 2A            [12] 2608 	mov	a,#(___str_54 >> 8)
      000BAE C0 E0            [24] 2609 	push	acc
      000BB0 74 80            [12] 2610 	mov	a,#0x80
      000BB2 C0 E0            [24] 2611 	push	acc
      000BB4 12 18 33         [24] 2612 	lcall	_printf
      000BB7 15 81            [12] 2613 	dec	sp
      000BB9 15 81            [12] 2614 	dec	sp
      000BBB 15 81            [12] 2615 	dec	sp
      000BBD D0 06            [24] 2616 	pop	ar6
      000BBF D0 07            [24] 2617 	pop	ar7
                                   2618 ;	program.c:498: program_stats.allocated_heap = 2 * buff_size;
      000BC1 EE               [12] 2619 	mov	a,r6
      000BC2 2E               [12] 2620 	add	a,r6
      000BC3 FC               [12] 2621 	mov	r4,a
      000BC4 EF               [12] 2622 	mov	a,r7
      000BC5 33               [12] 2623 	rlc	a
      000BC6 FD               [12] 2624 	mov	r5,a
      000BC7 90 00 03         [24] 2625 	mov	dptr,#(_program_stats + 0x0002)
      000BCA EC               [12] 2626 	mov	a,r4
      000BCB F0               [24] 2627 	movx	@dptr,a
      000BCC ED               [12] 2628 	mov	a,r5
      000BCD A3               [24] 2629 	inc	dptr
      000BCE F0               [24] 2630 	movx	@dptr,a
                                   2631 ;	program.c:499: program_stats.total_heap_size = 4996;
      000BCF 90 00 01         [24] 2632 	mov	dptr,#_program_stats
      000BD2 74 84            [12] 2633 	mov	a,#0x84
      000BD4 F0               [24] 2634 	movx	@dptr,a
      000BD5 74 13            [12] 2635 	mov	a,#0x13
      000BD7 A3               [24] 2636 	inc	dptr
      000BD8 F0               [24] 2637 	movx	@dptr,a
                                   2638 ;	program.c:500: program_stats.total_buffers = 2;
      000BD9 90 00 09         [24] 2639 	mov	dptr,#(_program_stats + 0x0008)
      000BDC 74 02            [12] 2640 	mov	a,#0x02
      000BDE F0               [24] 2641 	movx	@dptr,a
      000BDF E4               [12] 2642 	clr	a
      000BE0 A3               [24] 2643 	inc	dptr
      000BE1 F0               [24] 2644 	movx	@dptr,a
                                   2645 ;	program.c:502: buff.buff_size = buff_size;
      000BE2 90 01 4B         [24] 2646 	mov	dptr,#(_create_initial_buffers_buff_65538_91 + 0x0008)
      000BE5 EE               [12] 2647 	mov	a,r6
      000BE6 F0               [24] 2648 	movx	@dptr,a
      000BE7 EF               [12] 2649 	mov	a,r7
      000BE8 A3               [24] 2650 	inc	dptr
      000BE9 F0               [24] 2651 	movx	@dptr,a
                                   2652 ;	program.c:503: buff1.buff_size = buff_size;
      000BEA 90 01 57         [24] 2653 	mov	dptr,#(_create_initial_buffers_buff1_65538_91 + 0x0008)
      000BED EE               [12] 2654 	mov	a,r6
      000BEE F0               [24] 2655 	movx	@dptr,a
      000BEF EF               [12] 2656 	mov	a,r7
      000BF0 A3               [24] 2657 	inc	dptr
      000BF1 F0               [24] 2658 	movx	@dptr,a
                                   2659 ;	program.c:504: buff.buffer_num = 0;
      000BF2 90 01 43         [24] 2660 	mov	dptr,#_create_initial_buffers_buff_65538_91
      000BF5 E4               [12] 2661 	clr	a
      000BF6 F0               [24] 2662 	movx	@dptr,a
      000BF7 A3               [24] 2663 	inc	dptr
      000BF8 F0               [24] 2664 	movx	@dptr,a
                                   2665 ;	program.c:505: buff1.buffer_num = 1;
      000BF9 90 01 4F         [24] 2666 	mov	dptr,#_create_initial_buffers_buff1_65538_91
      000BFC 04               [12] 2667 	inc	a
      000BFD F0               [24] 2668 	movx	@dptr,a
      000BFE E4               [12] 2669 	clr	a
      000BFF A3               [24] 2670 	inc	dptr
      000C00 F0               [24] 2671 	movx	@dptr,a
                                   2672 ;	program.c:506: buff1.buffer_end = buff1.buffer_start + buff_size;
      000C01 90 01 51         [24] 2673 	mov	dptr,#(_create_initial_buffers_buff1_65538_91 + 0x0002)
      000C04 E0               [24] 2674 	movx	a,@dptr
      000C05 FB               [12] 2675 	mov	r3,a
      000C06 A3               [24] 2676 	inc	dptr
      000C07 E0               [24] 2677 	movx	a,@dptr
      000C08 FC               [12] 2678 	mov	r4,a
      000C09 A3               [24] 2679 	inc	dptr
      000C0A E0               [24] 2680 	movx	a,@dptr
      000C0B FD               [12] 2681 	mov	r5,a
      000C0C EE               [12] 2682 	mov	a,r6
      000C0D 2B               [12] 2683 	add	a,r3
      000C0E FB               [12] 2684 	mov	r3,a
      000C0F EF               [12] 2685 	mov	a,r7
      000C10 3C               [12] 2686 	addc	a,r4
      000C11 FC               [12] 2687 	mov	r4,a
      000C12 90 01 54         [24] 2688 	mov	dptr,#(_create_initial_buffers_buff1_65538_91 + 0x0005)
      000C15 EB               [12] 2689 	mov	a,r3
      000C16 F0               [24] 2690 	movx	@dptr,a
      000C17 EC               [12] 2691 	mov	a,r4
      000C18 A3               [24] 2692 	inc	dptr
      000C19 F0               [24] 2693 	movx	@dptr,a
      000C1A ED               [12] 2694 	mov	a,r5
      000C1B A3               [24] 2695 	inc	dptr
      000C1C F0               [24] 2696 	movx	@dptr,a
                                   2697 ;	program.c:507: buff.buffer_end = buff.buffer_start + buff_size;
      000C1D 90 01 45         [24] 2698 	mov	dptr,#(_create_initial_buffers_buff_65538_91 + 0x0002)
      000C20 E0               [24] 2699 	movx	a,@dptr
      000C21 FB               [12] 2700 	mov	r3,a
      000C22 A3               [24] 2701 	inc	dptr
      000C23 E0               [24] 2702 	movx	a,@dptr
      000C24 FC               [12] 2703 	mov	r4,a
      000C25 A3               [24] 2704 	inc	dptr
      000C26 E0               [24] 2705 	movx	a,@dptr
      000C27 FD               [12] 2706 	mov	r5,a
      000C28 EE               [12] 2707 	mov	a,r6
      000C29 2B               [12] 2708 	add	a,r3
      000C2A FE               [12] 2709 	mov	r6,a
      000C2B EF               [12] 2710 	mov	a,r7
      000C2C 3C               [12] 2711 	addc	a,r4
      000C2D FF               [12] 2712 	mov	r7,a
      000C2E 8D 02            [24] 2713 	mov	ar2,r5
      000C30 90 01 48         [24] 2714 	mov	dptr,#(_create_initial_buffers_buff_65538_91 + 0x0005)
      000C33 EE               [12] 2715 	mov	a,r6
      000C34 F0               [24] 2716 	movx	@dptr,a
      000C35 EF               [12] 2717 	mov	a,r7
      000C36 A3               [24] 2718 	inc	dptr
      000C37 F0               [24] 2719 	movx	@dptr,a
      000C38 EA               [12] 2720 	mov	a,r2
      000C39 A3               [24] 2721 	inc	dptr
      000C3A F0               [24] 2722 	movx	@dptr,a
                                   2723 ;	program.c:508: buff.num_char = 0;
      000C3B 90 01 4D         [24] 2724 	mov	dptr,#(_create_initial_buffers_buff_65538_91 + 0x000a)
      000C3E E4               [12] 2725 	clr	a
      000C3F F0               [24] 2726 	movx	@dptr,a
      000C40 A3               [24] 2727 	inc	dptr
      000C41 F0               [24] 2728 	movx	@dptr,a
                                   2729 ;	program.c:509: buff1.num_char = 0;
      000C42 90 01 59         [24] 2730 	mov	dptr,#(_create_initial_buffers_buff1_65538_91 + 0x000a)
      000C45 F0               [24] 2731 	movx	@dptr,a
      000C46 A3               [24] 2732 	inc	dptr
      000C47 F0               [24] 2733 	movx	@dptr,a
                                   2734 ;	program.c:511: buffers_array[0] = buff;
      000C48 90 14 FD         [24] 2735 	mov	dptr,#___memcpy_PARM_2
      000C4B 74 43            [12] 2736 	mov	a,#_create_initial_buffers_buff_65538_91
      000C4D F0               [24] 2737 	movx	@dptr,a
      000C4E 74 01            [12] 2738 	mov	a,#(_create_initial_buffers_buff_65538_91 >> 8)
      000C50 A3               [24] 2739 	inc	dptr
      000C51 F0               [24] 2740 	movx	@dptr,a
      000C52 E4               [12] 2741 	clr	a
      000C53 A3               [24] 2742 	inc	dptr
      000C54 F0               [24] 2743 	movx	@dptr,a
      000C55 90 15 00         [24] 2744 	mov	dptr,#___memcpy_PARM_3
      000C58 74 0C            [12] 2745 	mov	a,#0x0c
      000C5A F0               [24] 2746 	movx	@dptr,a
      000C5B E4               [12] 2747 	clr	a
      000C5C A3               [24] 2748 	inc	dptr
      000C5D F0               [24] 2749 	movx	@dptr,a
      000C5E 90 00 0B         [24] 2750 	mov	dptr,#_buffers_array
      000C61 75 F0 00         [24] 2751 	mov	b,#0x00
      000C64 12 15 91         [24] 2752 	lcall	___memcpy
                                   2753 ;	program.c:512: buffers_array[1] = buff1;
      000C67 90 14 FD         [24] 2754 	mov	dptr,#___memcpy_PARM_2
      000C6A 74 4F            [12] 2755 	mov	a,#_create_initial_buffers_buff1_65538_91
      000C6C F0               [24] 2756 	movx	@dptr,a
      000C6D 74 01            [12] 2757 	mov	a,#(_create_initial_buffers_buff1_65538_91 >> 8)
      000C6F A3               [24] 2758 	inc	dptr
      000C70 F0               [24] 2759 	movx	@dptr,a
      000C71 E4               [12] 2760 	clr	a
      000C72 A3               [24] 2761 	inc	dptr
      000C73 F0               [24] 2762 	movx	@dptr,a
      000C74 90 15 00         [24] 2763 	mov	dptr,#___memcpy_PARM_3
      000C77 74 0C            [12] 2764 	mov	a,#0x0c
      000C79 F0               [24] 2765 	movx	@dptr,a
      000C7A E4               [12] 2766 	clr	a
      000C7B A3               [24] 2767 	inc	dptr
      000C7C F0               [24] 2768 	movx	@dptr,a
      000C7D 90 00 17         [24] 2769 	mov	dptr,#(_buffers_array + 0x000c)
      000C80 75 F0 00         [24] 2770 	mov	b,#0x00
                                   2771 ;	program.c:516: goto get_buff;
                                   2772 ;	program.c:517: }
      000C83 02 15 91         [24] 2773 	ljmp	___memcpy
                                   2774 ;------------------------------------------------------------
                                   2775 ;Allocation info for local variables in function 'enter_chars'
                                   2776 ;------------------------------------------------------------
                                   2777 ;rec                       Allocated with name '_enter_chars_rec_65537_96'
                                   2778 ;------------------------------------------------------------
                                   2779 ;	program.c:525: void enter_chars()
                                   2780 ;	-----------------------------------------
                                   2781 ;	 function enter_chars
                                   2782 ;	-----------------------------------------
      000C86                       2783 _enter_chars:
                                   2784 ;	program.c:527: DEBUGPORT(0x08);
      000C86 75 82 08         [24] 2785 	mov	dpl,#0x08
      000C89 12 13 FA         [24] 2786 	lcall	_dataout
                                   2787 ;	program.c:528: print_heap_menu();
      000C8C 12 08 80         [24] 2788 	lcall	_print_heap_menu
                                   2789 ;	program.c:530: while (1)
      000C8F                       2790 00126$:
                                   2791 ;	program.c:532: rec = getchar();
      000C8F 12 13 BE         [24] 2792 	lcall	_getchar
      000C92 AE 82            [24] 2793 	mov	r6,dpl
      000C94 AF 83            [24] 2794 	mov	r7,dph
                                   2795 ;	program.c:533: if (rec > 0x60 && rec < 0x7B)
      000C96 C3               [12] 2796 	clr	c
      000C97 74 60            [12] 2797 	mov	a,#0x60
      000C99 9E               [12] 2798 	subb	a,r6
      000C9A 74 80            [12] 2799 	mov	a,#(0x00 ^ 0x80)
      000C9C 8F F0            [24] 2800 	mov	b,r7
      000C9E 63 F0 80         [24] 2801 	xrl	b,#0x80
      000CA1 95 F0            [12] 2802 	subb	a,b
      000CA3 40 03            [24] 2803 	jc	00170$
      000CA5 02 0D 34         [24] 2804 	ljmp	00122$
      000CA8                       2805 00170$:
      000CA8 C3               [12] 2806 	clr	c
      000CA9 EE               [12] 2807 	mov	a,r6
      000CAA 94 7B            [12] 2808 	subb	a,#0x7b
      000CAC EF               [12] 2809 	mov	a,r7
      000CAD 64 80            [12] 2810 	xrl	a,#0x80
      000CAF 94 80            [12] 2811 	subb	a,#0x80
      000CB1 40 03            [24] 2812 	jc	00171$
      000CB3 02 0D 34         [24] 2813 	ljmp	00122$
      000CB6                       2814 00171$:
                                   2815 ;	program.c:537: if (buffers_array[0].num_char < buffers_array[0].buff_size)
      000CB6 90 00 15         [24] 2816 	mov	dptr,#(_buffers_array + 0x000a)
      000CB9 E0               [24] 2817 	movx	a,@dptr
      000CBA FC               [12] 2818 	mov	r4,a
      000CBB A3               [24] 2819 	inc	dptr
      000CBC E0               [24] 2820 	movx	a,@dptr
      000CBD FD               [12] 2821 	mov	r5,a
      000CBE 90 00 13         [24] 2822 	mov	dptr,#(_buffers_array + 0x0008)
      000CC1 E0               [24] 2823 	movx	a,@dptr
      000CC2 FA               [12] 2824 	mov	r2,a
      000CC3 A3               [24] 2825 	inc	dptr
      000CC4 E0               [24] 2826 	movx	a,@dptr
      000CC5 FB               [12] 2827 	mov	r3,a
      000CC6 C3               [12] 2828 	clr	c
      000CC7 EC               [12] 2829 	mov	a,r4
      000CC8 9A               [12] 2830 	subb	a,r2
      000CC9 ED               [12] 2831 	mov	a,r5
      000CCA 64 80            [12] 2832 	xrl	a,#0x80
      000CCC 8B F0            [24] 2833 	mov	b,r3
      000CCE 63 F0 80         [24] 2834 	xrl	b,#0x80
      000CD1 95 F0            [12] 2835 	subb	a,b
      000CD3 50 32            [24] 2836 	jnc	00102$
                                   2837 ;	program.c:539: *(buffers_array[0].buffer_start + buffers_array[0].num_char) = rec;
      000CD5 90 00 0D         [24] 2838 	mov	dptr,#(_buffers_array + 0x0002)
      000CD8 E0               [24] 2839 	movx	a,@dptr
      000CD9 F9               [12] 2840 	mov	r1,a
      000CDA A3               [24] 2841 	inc	dptr
      000CDB E0               [24] 2842 	movx	a,@dptr
      000CDC FA               [12] 2843 	mov	r2,a
      000CDD A3               [24] 2844 	inc	dptr
      000CDE E0               [24] 2845 	movx	a,@dptr
      000CDF FB               [12] 2846 	mov	r3,a
      000CE0 EC               [12] 2847 	mov	a,r4
      000CE1 29               [12] 2848 	add	a,r1
      000CE2 F9               [12] 2849 	mov	r1,a
      000CE3 ED               [12] 2850 	mov	a,r5
      000CE4 3A               [12] 2851 	addc	a,r2
      000CE5 FA               [12] 2852 	mov	r2,a
      000CE6 8E 05            [24] 2853 	mov	ar5,r6
      000CE8 89 82            [24] 2854 	mov	dpl,r1
      000CEA 8A 83            [24] 2855 	mov	dph,r2
      000CEC 8B F0            [24] 2856 	mov	b,r3
      000CEE ED               [12] 2857 	mov	a,r5
      000CEF 12 16 05         [24] 2858 	lcall	__gptrput
                                   2859 ;	program.c:540: buffers_array[0].num_char += 1;
      000CF2 90 00 15         [24] 2860 	mov	dptr,#(_buffers_array + 0x000a)
      000CF5 E0               [24] 2861 	movx	a,@dptr
      000CF6 FC               [12] 2862 	mov	r4,a
      000CF7 A3               [24] 2863 	inc	dptr
      000CF8 E0               [24] 2864 	movx	a,@dptr
      000CF9 FD               [12] 2865 	mov	r5,a
      000CFA 0C               [12] 2866 	inc	r4
      000CFB BC 00 01         [24] 2867 	cjne	r4,#0x00,00173$
      000CFE 0D               [12] 2868 	inc	r5
      000CFF                       2869 00173$:
      000CFF 90 00 15         [24] 2870 	mov	dptr,#(_buffers_array + 0x000a)
      000D02 EC               [12] 2871 	mov	a,r4
      000D03 F0               [24] 2872 	movx	@dptr,a
      000D04 ED               [12] 2873 	mov	a,r5
      000D05 A3               [24] 2874 	inc	dptr
      000D06 F0               [24] 2875 	movx	@dptr,a
      000D07                       2876 00102$:
                                   2877 ;	program.c:542: program_stats.all_char_count += 1;
      000D07 90 00 05         [24] 2878 	mov	dptr,#(_program_stats + 0x0004)
      000D0A E0               [24] 2879 	movx	a,@dptr
      000D0B FC               [12] 2880 	mov	r4,a
      000D0C A3               [24] 2881 	inc	dptr
      000D0D E0               [24] 2882 	movx	a,@dptr
      000D0E FD               [12] 2883 	mov	r5,a
      000D0F 0C               [12] 2884 	inc	r4
      000D10 BC 00 01         [24] 2885 	cjne	r4,#0x00,00174$
      000D13 0D               [12] 2886 	inc	r5
      000D14                       2887 00174$:
      000D14 90 00 05         [24] 2888 	mov	dptr,#(_program_stats + 0x0004)
      000D17 EC               [12] 2889 	mov	a,r4
      000D18 F0               [24] 2890 	movx	@dptr,a
      000D19 ED               [12] 2891 	mov	a,r5
      000D1A A3               [24] 2892 	inc	dptr
      000D1B F0               [24] 2893 	movx	@dptr,a
                                   2894 ;	program.c:543: program_stats.storage_char_count += 1;
      000D1C 90 00 07         [24] 2895 	mov	dptr,#(_program_stats + 0x0006)
      000D1F E0               [24] 2896 	movx	a,@dptr
      000D20 FC               [12] 2897 	mov	r4,a
      000D21 A3               [24] 2898 	inc	dptr
      000D22 E0               [24] 2899 	movx	a,@dptr
      000D23 FD               [12] 2900 	mov	r5,a
      000D24 0C               [12] 2901 	inc	r4
      000D25 BC 00 01         [24] 2902 	cjne	r4,#0x00,00175$
      000D28 0D               [12] 2903 	inc	r5
      000D29                       2904 00175$:
      000D29 90 00 07         [24] 2905 	mov	dptr,#(_program_stats + 0x0006)
      000D2C EC               [12] 2906 	mov	a,r4
      000D2D F0               [24] 2907 	movx	@dptr,a
      000D2E ED               [12] 2908 	mov	a,r5
      000D2F A3               [24] 2909 	inc	dptr
      000D30 F0               [24] 2910 	movx	@dptr,a
      000D31 02 0C 8F         [24] 2911 	ljmp	00126$
      000D34                       2912 00122$:
                                   2913 ;	program.c:545: else if (rec == 0x3F)
      000D34 BE 3F 1F         [24] 2914 	cjne	r6,#0x3f,00119$
      000D37 BF 00 1C         [24] 2915 	cjne	r7,#0x00,00119$
                                   2916 ;	program.c:548: print_heap_stats();
      000D3A 12 10 19         [24] 2917 	lcall	_print_heap_stats
                                   2918 ;	program.c:549: print_all_buffers();
      000D3D 12 10 DA         [24] 2919 	lcall	_print_all_buffers
                                   2920 ;	program.c:550: dump_buff_zero_ascii();
      000D40 12 0D B6         [24] 2921 	lcall	_dump_buff_zero_ascii
                                   2922 ;	program.c:551: program_stats.all_char_count = 0;
      000D43 90 00 05         [24] 2923 	mov	dptr,#(_program_stats + 0x0004)
      000D46 E4               [12] 2924 	clr	a
      000D47 F0               [24] 2925 	movx	@dptr,a
      000D48 A3               [24] 2926 	inc	dptr
      000D49 F0               [24] 2927 	movx	@dptr,a
                                   2928 ;	program.c:552: program_stats.storage_char_count = 0;
      000D4A 90 00 07         [24] 2929 	mov	dptr,#(_program_stats + 0x0006)
      000D4D F0               [24] 2930 	movx	@dptr,a
      000D4E A3               [24] 2931 	inc	dptr
      000D4F F0               [24] 2932 	movx	@dptr,a
                                   2933 ;	program.c:553: print_heap_menu();
      000D50 12 08 80         [24] 2934 	lcall	_print_heap_menu
      000D53 02 0C 8F         [24] 2935 	ljmp	00126$
      000D56                       2936 00119$:
                                   2937 ;	program.c:555: else if (rec == 0x3D)
      000D56 BE 3D 0C         [24] 2938 	cjne	r6,#0x3d,00116$
      000D59 BF 00 09         [24] 2939 	cjne	r7,#0x00,00116$
                                   2940 ;	program.c:558: dump_buff_zero_hex();
      000D5C 12 0E CC         [24] 2941 	lcall	_dump_buff_zero_hex
                                   2942 ;	program.c:559: print_heap_menu();
      000D5F 12 08 80         [24] 2943 	lcall	_print_heap_menu
      000D62 02 0C 8F         [24] 2944 	ljmp	00126$
      000D65                       2945 00116$:
                                   2946 ;	program.c:561: else if (rec == 0x40)
      000D65 BE 40 0C         [24] 2947 	cjne	r6,#0x40,00113$
      000D68 BF 00 09         [24] 2948 	cjne	r7,#0x00,00113$
                                   2949 ;	program.c:564: at_clear_all_buffers();
      000D6B 12 05 31         [24] 2950 	lcall	_at_clear_all_buffers
                                   2951 ;	program.c:565: print_heap_menu();
      000D6E 12 08 80         [24] 2952 	lcall	_print_heap_menu
      000D71 02 0C 8F         [24] 2953 	ljmp	00126$
      000D74                       2954 00113$:
                                   2955 ;	program.c:567: else if (rec == 0x2B)
      000D74 BE 2B 0C         [24] 2956 	cjne	r6,#0x2b,00110$
      000D77 BF 00 09         [24] 2957 	cjne	r7,#0x00,00110$
                                   2958 ;	program.c:570: create_new_buffer();
      000D7A 12 09 2F         [24] 2959 	lcall	_create_new_buffer
                                   2960 ;	program.c:571: print_heap_menu();
      000D7D 12 08 80         [24] 2961 	lcall	_print_heap_menu
      000D80 02 0C 8F         [24] 2962 	ljmp	00126$
      000D83                       2963 00110$:
                                   2964 ;	program.c:573: else if (rec == 0x2D)
      000D83 BE 2D 0C         [24] 2965 	cjne	r6,#0x2d,00107$
      000D86 BF 00 09         [24] 2966 	cjne	r7,#0x00,00107$
                                   2967 ;	program.c:576: delete_buffer();
      000D89 12 05 CB         [24] 2968 	lcall	_delete_buffer
                                   2969 ;	program.c:577: print_heap_menu();
      000D8C 12 08 80         [24] 2970 	lcall	_print_heap_menu
      000D8F 02 0C 8F         [24] 2971 	ljmp	00126$
      000D92                       2972 00107$:
                                   2973 ;	program.c:579: else if (rec == 0x4D)
      000D92 BE 4D 09         [24] 2974 	cjne	r6,#0x4d,00104$
      000D95 BF 00 06         [24] 2975 	cjne	r7,#0x00,00104$
                                   2976 ;	program.c:581: main_menu();
      000D98 12 04 03         [24] 2977 	lcall	_main_menu
      000D9B 02 0C 8F         [24] 2978 	ljmp	00126$
      000D9E                       2979 00104$:
                                   2980 ;	program.c:585: program_stats.all_char_count += 1;
      000D9E 90 00 05         [24] 2981 	mov	dptr,#(_program_stats + 0x0004)
      000DA1 E0               [24] 2982 	movx	a,@dptr
      000DA2 FE               [12] 2983 	mov	r6,a
      000DA3 A3               [24] 2984 	inc	dptr
      000DA4 E0               [24] 2985 	movx	a,@dptr
      000DA5 FF               [12] 2986 	mov	r7,a
      000DA6 0E               [12] 2987 	inc	r6
      000DA7 BE 00 01         [24] 2988 	cjne	r6,#0x00,00188$
      000DAA 0F               [12] 2989 	inc	r7
      000DAB                       2990 00188$:
      000DAB 90 00 05         [24] 2991 	mov	dptr,#(_program_stats + 0x0004)
      000DAE EE               [12] 2992 	mov	a,r6
      000DAF F0               [24] 2993 	movx	@dptr,a
      000DB0 EF               [12] 2994 	mov	a,r7
      000DB1 A3               [24] 2995 	inc	dptr
      000DB2 F0               [24] 2996 	movx	@dptr,a
                                   2997 ;	program.c:588: }
      000DB3 02 0C 8F         [24] 2998 	ljmp	00126$
                                   2999 ;------------------------------------------------------------
                                   3000 ;Allocation info for local variables in function 'dump_buff_zero_ascii'
                                   3001 ;------------------------------------------------------------
                                   3002 ;j                         Allocated with name '_dump_buff_zero_ascii_j_65537_108'
                                   3003 ;i                         Allocated with name '_dump_buff_zero_ascii_i_196609_110'
                                   3004 ;------------------------------------------------------------
                                   3005 ;	program.c:596: void dump_buff_zero_ascii()
                                   3006 ;	-----------------------------------------
                                   3007 ;	 function dump_buff_zero_ascii
                                   3008 ;	-----------------------------------------
      000DB6                       3009 _dump_buff_zero_ascii:
                                   3010 ;	program.c:598: DEBUGPORT(0x09);
      000DB6 75 82 09         [24] 3011 	mov	dpl,#0x09
      000DB9 12 13 FA         [24] 3012 	lcall	_dataout
                                   3013 ;	program.c:599: int j = 64;
      000DBC 90 01 5B         [24] 3014 	mov	dptr,#_dump_buff_zero_ascii_j_65537_108
      000DBF 74 40            [12] 3015 	mov	a,#0x40
      000DC1 F0               [24] 3016 	movx	@dptr,a
      000DC2 E4               [12] 3017 	clr	a
      000DC3 A3               [24] 3018 	inc	dptr
      000DC4 F0               [24] 3019 	movx	@dptr,a
                                   3020 ;	program.c:600: if (buffers_array[0].num_char > 0)
      000DC5 90 00 15         [24] 3021 	mov	dptr,#(_buffers_array + 0x000a)
      000DC8 E0               [24] 3022 	movx	a,@dptr
      000DC9 FE               [12] 3023 	mov	r6,a
      000DCA A3               [24] 3024 	inc	dptr
      000DCB E0               [24] 3025 	movx	a,@dptr
      000DCC FF               [12] 3026 	mov	r7,a
      000DCD C3               [12] 3027 	clr	c
      000DCE E4               [12] 3028 	clr	a
      000DCF 9E               [12] 3029 	subb	a,r6
      000DD0 74 80            [12] 3030 	mov	a,#(0x00 ^ 0x80)
      000DD2 8F F0            [24] 3031 	mov	b,r7
      000DD4 63 F0 80         [24] 3032 	xrl	b,#0x80
      000DD7 95 F0            [12] 3033 	subb	a,b
      000DD9 40 03            [24] 3034 	jc	00135$
      000DDB 02 0E B6         [24] 3035 	ljmp	00107$
      000DDE                       3036 00135$:
                                   3037 ;	program.c:602: printf("\n\n\r***********Buffer-0-Contents*********** \n\r");
      000DDE 74 B9            [12] 3038 	mov	a,#___str_55
      000DE0 C0 E0            [24] 3039 	push	acc
      000DE2 74 2A            [12] 3040 	mov	a,#(___str_55 >> 8)
      000DE4 C0 E0            [24] 3041 	push	acc
      000DE6 74 80            [12] 3042 	mov	a,#0x80
      000DE8 C0 E0            [24] 3043 	push	acc
      000DEA 12 18 33         [24] 3044 	lcall	_printf
      000DED 15 81            [12] 3045 	dec	sp
      000DEF 15 81            [12] 3046 	dec	sp
      000DF1 15 81            [12] 3047 	dec	sp
                                   3048 ;	program.c:603: for (int i = 0; i < buffers_array[0].num_char; i++)
      000DF3 7E 00            [12] 3049 	mov	r6,#0x00
      000DF5 7F 00            [12] 3050 	mov	r7,#0x00
      000DF7                       3051 00110$:
      000DF7 90 00 15         [24] 3052 	mov	dptr,#(_buffers_array + 0x000a)
      000DFA E0               [24] 3053 	movx	a,@dptr
      000DFB FC               [12] 3054 	mov	r4,a
      000DFC A3               [24] 3055 	inc	dptr
      000DFD E0               [24] 3056 	movx	a,@dptr
      000DFE FD               [12] 3057 	mov	r5,a
      000DFF C3               [12] 3058 	clr	c
      000E00 EE               [12] 3059 	mov	a,r6
      000E01 9C               [12] 3060 	subb	a,r4
      000E02 EF               [12] 3061 	mov	a,r7
      000E03 64 80            [12] 3062 	xrl	a,#0x80
      000E05 8D F0            [24] 3063 	mov	b,r5
      000E07 63 F0 80         [24] 3064 	xrl	b,#0x80
      000E0A 95 F0            [12] 3065 	subb	a,b
      000E0C 40 03            [24] 3066 	jc	00136$
      000E0E 02 0E 99         [24] 3067 	ljmp	00105$
      000E11                       3068 00136$:
                                   3069 ;	program.c:605: if (j == 64)
      000E11 90 01 5B         [24] 3070 	mov	dptr,#_dump_buff_zero_ascii_j_65537_108
      000E14 E0               [24] 3071 	movx	a,@dptr
      000E15 FC               [12] 3072 	mov	r4,a
      000E16 A3               [24] 3073 	inc	dptr
      000E17 E0               [24] 3074 	movx	a,@dptr
      000E18 FD               [12] 3075 	mov	r5,a
      000E19 BC 40 20         [24] 3076 	cjne	r4,#0x40,00102$
      000E1C BD 00 1D         [24] 3077 	cjne	r5,#0x00,00102$
                                   3078 ;	program.c:607: printf("\n\r");
      000E1F C0 07            [24] 3079 	push	ar7
      000E21 C0 06            [24] 3080 	push	ar6
      000E23 74 E7            [12] 3081 	mov	a,#___str_56
      000E25 C0 E0            [24] 3082 	push	acc
      000E27 74 2A            [12] 3083 	mov	a,#(___str_56 >> 8)
      000E29 C0 E0            [24] 3084 	push	acc
      000E2B 74 80            [12] 3085 	mov	a,#0x80
      000E2D C0 E0            [24] 3086 	push	acc
      000E2F 12 18 33         [24] 3087 	lcall	_printf
      000E32 15 81            [12] 3088 	dec	sp
      000E34 15 81            [12] 3089 	dec	sp
      000E36 15 81            [12] 3090 	dec	sp
      000E38 D0 06            [24] 3091 	pop	ar6
      000E3A D0 07            [24] 3092 	pop	ar7
      000E3C                       3093 00102$:
                                   3094 ;	program.c:609: putchar(*(buffers_array[0].buffer_start + i));
      000E3C 90 00 0D         [24] 3095 	mov	dptr,#(_buffers_array + 0x0002)
      000E3F E0               [24] 3096 	movx	a,@dptr
      000E40 FB               [12] 3097 	mov	r3,a
      000E41 A3               [24] 3098 	inc	dptr
      000E42 E0               [24] 3099 	movx	a,@dptr
      000E43 FC               [12] 3100 	mov	r4,a
      000E44 A3               [24] 3101 	inc	dptr
      000E45 E0               [24] 3102 	movx	a,@dptr
      000E46 FD               [12] 3103 	mov	r5,a
      000E47 EE               [12] 3104 	mov	a,r6
      000E48 2B               [12] 3105 	add	a,r3
      000E49 FB               [12] 3106 	mov	r3,a
      000E4A EF               [12] 3107 	mov	a,r7
      000E4B 3C               [12] 3108 	addc	a,r4
      000E4C FC               [12] 3109 	mov	r4,a
      000E4D 8B 82            [24] 3110 	mov	dpl,r3
      000E4F 8C 83            [24] 3111 	mov	dph,r4
      000E51 8D F0            [24] 3112 	mov	b,r5
      000E53 12 22 52         [24] 3113 	lcall	__gptrget
      000E56 FB               [12] 3114 	mov	r3,a
      000E57 7D 00            [12] 3115 	mov	r5,#0x00
      000E59 8B 82            [24] 3116 	mov	dpl,r3
      000E5B 8D 83            [24] 3117 	mov	dph,r5
      000E5D C0 07            [24] 3118 	push	ar7
      000E5F C0 06            [24] 3119 	push	ar6
      000E61 12 13 9F         [24] 3120 	lcall	_putchar
      000E64 D0 06            [24] 3121 	pop	ar6
      000E66 D0 07            [24] 3122 	pop	ar7
                                   3123 ;	program.c:610: j--;
      000E68 90 01 5B         [24] 3124 	mov	dptr,#_dump_buff_zero_ascii_j_65537_108
      000E6B E0               [24] 3125 	movx	a,@dptr
      000E6C 24 FF            [12] 3126 	add	a,#0xff
      000E6E FC               [12] 3127 	mov	r4,a
      000E6F A3               [24] 3128 	inc	dptr
      000E70 E0               [24] 3129 	movx	a,@dptr
      000E71 34 FF            [12] 3130 	addc	a,#0xff
      000E73 FD               [12] 3131 	mov	r5,a
      000E74 90 01 5B         [24] 3132 	mov	dptr,#_dump_buff_zero_ascii_j_65537_108
      000E77 EC               [12] 3133 	mov	a,r4
      000E78 F0               [24] 3134 	movx	@dptr,a
      000E79 ED               [12] 3135 	mov	a,r5
      000E7A A3               [24] 3136 	inc	dptr
      000E7B F0               [24] 3137 	movx	@dptr,a
                                   3138 ;	program.c:611: if (j == 0)
      000E7C 90 01 5B         [24] 3139 	mov	dptr,#_dump_buff_zero_ascii_j_65537_108
      000E7F E0               [24] 3140 	movx	a,@dptr
      000E80 F5 F0            [12] 3141 	mov	b,a
      000E82 A3               [24] 3142 	inc	dptr
      000E83 E0               [24] 3143 	movx	a,@dptr
      000E84 45 F0            [12] 3144 	orl	a,b
      000E86 70 09            [24] 3145 	jnz	00111$
                                   3146 ;	program.c:612: j = 64;
      000E88 90 01 5B         [24] 3147 	mov	dptr,#_dump_buff_zero_ascii_j_65537_108
      000E8B 74 40            [12] 3148 	mov	a,#0x40
      000E8D F0               [24] 3149 	movx	@dptr,a
      000E8E E4               [12] 3150 	clr	a
      000E8F A3               [24] 3151 	inc	dptr
      000E90 F0               [24] 3152 	movx	@dptr,a
      000E91                       3153 00111$:
                                   3154 ;	program.c:603: for (int i = 0; i < buffers_array[0].num_char; i++)
      000E91 0E               [12] 3155 	inc	r6
      000E92 BE 00 01         [24] 3156 	cjne	r6,#0x00,00140$
      000E95 0F               [12] 3157 	inc	r7
      000E96                       3158 00140$:
      000E96 02 0D F7         [24] 3159 	ljmp	00110$
      000E99                       3160 00105$:
                                   3161 ;	program.c:614: buffers_array[0].num_char = 0;
      000E99 90 00 15         [24] 3162 	mov	dptr,#(_buffers_array + 0x000a)
      000E9C E4               [12] 3163 	clr	a
      000E9D F0               [24] 3164 	movx	@dptr,a
      000E9E A3               [24] 3165 	inc	dptr
      000E9F F0               [24] 3166 	movx	@dptr,a
                                   3167 ;	program.c:615: printf("\n\n\r");
      000EA0 74 EA            [12] 3168 	mov	a,#___str_57
      000EA2 C0 E0            [24] 3169 	push	acc
      000EA4 74 2A            [12] 3170 	mov	a,#(___str_57 >> 8)
      000EA6 C0 E0            [24] 3171 	push	acc
      000EA8 74 80            [12] 3172 	mov	a,#0x80
      000EAA C0 E0            [24] 3173 	push	acc
      000EAC 12 18 33         [24] 3174 	lcall	_printf
      000EAF 15 81            [12] 3175 	dec	sp
      000EB1 15 81            [12] 3176 	dec	sp
      000EB3 15 81            [12] 3177 	dec	sp
      000EB5 22               [24] 3178 	ret
      000EB6                       3179 00107$:
                                   3180 ;	program.c:619: printf("Buffer0 is Empty....\n\r");
      000EB6 74 EE            [12] 3181 	mov	a,#___str_58
      000EB8 C0 E0            [24] 3182 	push	acc
      000EBA 74 2A            [12] 3183 	mov	a,#(___str_58 >> 8)
      000EBC C0 E0            [24] 3184 	push	acc
      000EBE 74 80            [12] 3185 	mov	a,#0x80
      000EC0 C0 E0            [24] 3186 	push	acc
      000EC2 12 18 33         [24] 3187 	lcall	_printf
      000EC5 15 81            [12] 3188 	dec	sp
      000EC7 15 81            [12] 3189 	dec	sp
      000EC9 15 81            [12] 3190 	dec	sp
                                   3191 ;	program.c:621: }
      000ECB 22               [24] 3192 	ret
                                   3193 ;------------------------------------------------------------
                                   3194 ;Allocation info for local variables in function 'dump_buff_zero_hex'
                                   3195 ;------------------------------------------------------------
                                   3196 ;j                         Allocated with name '_dump_buff_zero_hex_j_131073_116'
                                   3197 ;i                         Allocated with name '_dump_buff_zero_hex_i_196609_117'
                                   3198 ;------------------------------------------------------------
                                   3199 ;	program.c:628: void dump_buff_zero_hex()
                                   3200 ;	-----------------------------------------
                                   3201 ;	 function dump_buff_zero_hex
                                   3202 ;	-----------------------------------------
      000ECC                       3203 _dump_buff_zero_hex:
                                   3204 ;	program.c:630: DEBUGPORT(0xA);
      000ECC 75 82 0A         [24] 3205 	mov	dpl,#0x0a
      000ECF 12 13 FA         [24] 3206 	lcall	_dataout
                                   3207 ;	program.c:631: if (buffers_array[0].num_char > 0)
      000ED2 90 00 15         [24] 3208 	mov	dptr,#(_buffers_array + 0x000a)
      000ED5 E0               [24] 3209 	movx	a,@dptr
      000ED6 FE               [12] 3210 	mov	r6,a
      000ED7 A3               [24] 3211 	inc	dptr
      000ED8 E0               [24] 3212 	movx	a,@dptr
      000ED9 FF               [12] 3213 	mov	r7,a
      000EDA C3               [12] 3214 	clr	c
      000EDB E4               [12] 3215 	clr	a
      000EDC 9E               [12] 3216 	subb	a,r6
      000EDD 74 80            [12] 3217 	mov	a,#(0x00 ^ 0x80)
      000EDF 8F F0            [24] 3218 	mov	b,r7
      000EE1 63 F0 80         [24] 3219 	xrl	b,#0x80
      000EE4 95 F0            [12] 3220 	subb	a,b
      000EE6 40 03            [24] 3221 	jc	00135$
      000EE8 02 10 03         [24] 3222 	ljmp	00107$
      000EEB                       3223 00135$:
                                   3224 ;	program.c:633: printf("\n\r-------------------------HEXDUMP--------------------------------");
      000EEB 74 05            [12] 3225 	mov	a,#___str_59
      000EED C0 E0            [24] 3226 	push	acc
      000EEF 74 2B            [12] 3227 	mov	a,#(___str_59 >> 8)
      000EF1 C0 E0            [24] 3228 	push	acc
      000EF3 74 80            [12] 3229 	mov	a,#0x80
      000EF5 C0 E0            [24] 3230 	push	acc
      000EF7 12 18 33         [24] 3231 	lcall	_printf
      000EFA 15 81            [12] 3232 	dec	sp
      000EFC 15 81            [12] 3233 	dec	sp
      000EFE 15 81            [12] 3234 	dec	sp
                                   3235 ;	program.c:634: printf("\n\r    ADDR: +0 +1 +2 +3 +4 +5 +6 +7 +8 +9 +A +B +C +D +E +F \n\r");
      000F00 74 48            [12] 3236 	mov	a,#___str_60
      000F02 C0 E0            [24] 3237 	push	acc
      000F04 74 2B            [12] 3238 	mov	a,#(___str_60 >> 8)
      000F06 C0 E0            [24] 3239 	push	acc
      000F08 74 80            [12] 3240 	mov	a,#0x80
      000F0A C0 E0            [24] 3241 	push	acc
      000F0C 12 18 33         [24] 3242 	lcall	_printf
      000F0F 15 81            [12] 3243 	dec	sp
      000F11 15 81            [12] 3244 	dec	sp
      000F13 15 81            [12] 3245 	dec	sp
                                   3246 ;	program.c:635: int j = 16;
      000F15 90 01 5D         [24] 3247 	mov	dptr,#_dump_buff_zero_hex_j_131073_116
      000F18 74 10            [12] 3248 	mov	a,#0x10
      000F1A F0               [24] 3249 	movx	@dptr,a
      000F1B E4               [12] 3250 	clr	a
      000F1C A3               [24] 3251 	inc	dptr
      000F1D F0               [24] 3252 	movx	@dptr,a
                                   3253 ;	program.c:637: for (int i = 0; i < buffers_array[0].num_char; i++)
      000F1E 7E 00            [12] 3254 	mov	r6,#0x00
      000F20 7F 00            [12] 3255 	mov	r7,#0x00
      000F22                       3256 00110$:
      000F22 90 00 15         [24] 3257 	mov	dptr,#(_buffers_array + 0x000a)
      000F25 E0               [24] 3258 	movx	a,@dptr
      000F26 FC               [12] 3259 	mov	r4,a
      000F27 A3               [24] 3260 	inc	dptr
      000F28 E0               [24] 3261 	movx	a,@dptr
      000F29 FD               [12] 3262 	mov	r5,a
      000F2A C3               [12] 3263 	clr	c
      000F2B EE               [12] 3264 	mov	a,r6
      000F2C 9C               [12] 3265 	subb	a,r4
      000F2D EF               [12] 3266 	mov	a,r7
      000F2E 64 80            [12] 3267 	xrl	a,#0x80
      000F30 8D F0            [24] 3268 	mov	b,r5
      000F32 63 F0 80         [24] 3269 	xrl	b,#0x80
      000F35 95 F0            [12] 3270 	subb	a,b
      000F37 40 03            [24] 3271 	jc	00136$
      000F39 02 0F ED         [24] 3272 	ljmp	00105$
      000F3C                       3273 00136$:
                                   3274 ;	program.c:639: if (j == 16)
      000F3C 90 01 5D         [24] 3275 	mov	dptr,#_dump_buff_zero_hex_j_131073_116
      000F3F E0               [24] 3276 	movx	a,@dptr
      000F40 FC               [12] 3277 	mov	r4,a
      000F41 A3               [24] 3278 	inc	dptr
      000F42 E0               [24] 3279 	movx	a,@dptr
      000F43 FD               [12] 3280 	mov	r5,a
      000F44 BC 10 37         [24] 3281 	cjne	r4,#0x10,00102$
      000F47 BD 00 34         [24] 3282 	cjne	r5,#0x00,00102$
                                   3283 ;	program.c:641: printf("\n\r%p: ", (buffers_array[0].buffer_start + i));
      000F4A 90 00 0D         [24] 3284 	mov	dptr,#(_buffers_array + 0x0002)
      000F4D E0               [24] 3285 	movx	a,@dptr
      000F4E FB               [12] 3286 	mov	r3,a
      000F4F A3               [24] 3287 	inc	dptr
      000F50 E0               [24] 3288 	movx	a,@dptr
      000F51 FC               [12] 3289 	mov	r4,a
      000F52 A3               [24] 3290 	inc	dptr
      000F53 E0               [24] 3291 	movx	a,@dptr
      000F54 FD               [12] 3292 	mov	r5,a
      000F55 EE               [12] 3293 	mov	a,r6
      000F56 2B               [12] 3294 	add	a,r3
      000F57 FB               [12] 3295 	mov	r3,a
      000F58 EF               [12] 3296 	mov	a,r7
      000F59 3C               [12] 3297 	addc	a,r4
      000F5A FC               [12] 3298 	mov	r4,a
      000F5B C0 07            [24] 3299 	push	ar7
      000F5D C0 06            [24] 3300 	push	ar6
      000F5F C0 03            [24] 3301 	push	ar3
      000F61 C0 04            [24] 3302 	push	ar4
      000F63 C0 05            [24] 3303 	push	ar5
      000F65 74 87            [12] 3304 	mov	a,#___str_61
      000F67 C0 E0            [24] 3305 	push	acc
      000F69 74 2B            [12] 3306 	mov	a,#(___str_61 >> 8)
      000F6B C0 E0            [24] 3307 	push	acc
      000F6D 74 80            [12] 3308 	mov	a,#0x80
      000F6F C0 E0            [24] 3309 	push	acc
      000F71 12 18 33         [24] 3310 	lcall	_printf
      000F74 E5 81            [12] 3311 	mov	a,sp
      000F76 24 FA            [12] 3312 	add	a,#0xfa
      000F78 F5 81            [12] 3313 	mov	sp,a
      000F7A D0 06            [24] 3314 	pop	ar6
      000F7C D0 07            [24] 3315 	pop	ar7
      000F7E                       3316 00102$:
                                   3317 ;	program.c:643: printf("%x ", *(buffers_array[0].buffer_start + i));
      000F7E 90 00 0D         [24] 3318 	mov	dptr,#(_buffers_array + 0x0002)
      000F81 E0               [24] 3319 	movx	a,@dptr
      000F82 FB               [12] 3320 	mov	r3,a
      000F83 A3               [24] 3321 	inc	dptr
      000F84 E0               [24] 3322 	movx	a,@dptr
      000F85 FC               [12] 3323 	mov	r4,a
      000F86 A3               [24] 3324 	inc	dptr
      000F87 E0               [24] 3325 	movx	a,@dptr
      000F88 FD               [12] 3326 	mov	r5,a
      000F89 EE               [12] 3327 	mov	a,r6
      000F8A 2B               [12] 3328 	add	a,r3
      000F8B FB               [12] 3329 	mov	r3,a
      000F8C EF               [12] 3330 	mov	a,r7
      000F8D 3C               [12] 3331 	addc	a,r4
      000F8E FC               [12] 3332 	mov	r4,a
      000F8F 8B 82            [24] 3333 	mov	dpl,r3
      000F91 8C 83            [24] 3334 	mov	dph,r4
      000F93 8D F0            [24] 3335 	mov	b,r5
      000F95 12 22 52         [24] 3336 	lcall	__gptrget
      000F98 FB               [12] 3337 	mov	r3,a
      000F99 7D 00            [12] 3338 	mov	r5,#0x00
      000F9B C0 07            [24] 3339 	push	ar7
      000F9D C0 06            [24] 3340 	push	ar6
      000F9F C0 03            [24] 3341 	push	ar3
      000FA1 C0 05            [24] 3342 	push	ar5
      000FA3 74 8E            [12] 3343 	mov	a,#___str_62
      000FA5 C0 E0            [24] 3344 	push	acc
      000FA7 74 2B            [12] 3345 	mov	a,#(___str_62 >> 8)
      000FA9 C0 E0            [24] 3346 	push	acc
      000FAB 74 80            [12] 3347 	mov	a,#0x80
      000FAD C0 E0            [24] 3348 	push	acc
      000FAF 12 18 33         [24] 3349 	lcall	_printf
      000FB2 E5 81            [12] 3350 	mov	a,sp
      000FB4 24 FB            [12] 3351 	add	a,#0xfb
      000FB6 F5 81            [12] 3352 	mov	sp,a
      000FB8 D0 06            [24] 3353 	pop	ar6
      000FBA D0 07            [24] 3354 	pop	ar7
                                   3355 ;	program.c:644: j--;
      000FBC 90 01 5D         [24] 3356 	mov	dptr,#_dump_buff_zero_hex_j_131073_116
      000FBF E0               [24] 3357 	movx	a,@dptr
      000FC0 24 FF            [12] 3358 	add	a,#0xff
      000FC2 FC               [12] 3359 	mov	r4,a
      000FC3 A3               [24] 3360 	inc	dptr
      000FC4 E0               [24] 3361 	movx	a,@dptr
      000FC5 34 FF            [12] 3362 	addc	a,#0xff
      000FC7 FD               [12] 3363 	mov	r5,a
      000FC8 90 01 5D         [24] 3364 	mov	dptr,#_dump_buff_zero_hex_j_131073_116
      000FCB EC               [12] 3365 	mov	a,r4
      000FCC F0               [24] 3366 	movx	@dptr,a
      000FCD ED               [12] 3367 	mov	a,r5
      000FCE A3               [24] 3368 	inc	dptr
      000FCF F0               [24] 3369 	movx	@dptr,a
                                   3370 ;	program.c:645: if (j == 0)
      000FD0 90 01 5D         [24] 3371 	mov	dptr,#_dump_buff_zero_hex_j_131073_116
      000FD3 E0               [24] 3372 	movx	a,@dptr
      000FD4 F5 F0            [12] 3373 	mov	b,a
      000FD6 A3               [24] 3374 	inc	dptr
      000FD7 E0               [24] 3375 	movx	a,@dptr
      000FD8 45 F0            [12] 3376 	orl	a,b
      000FDA 70 09            [24] 3377 	jnz	00111$
                                   3378 ;	program.c:646: j = 16;
      000FDC 90 01 5D         [24] 3379 	mov	dptr,#_dump_buff_zero_hex_j_131073_116
      000FDF 74 10            [12] 3380 	mov	a,#0x10
      000FE1 F0               [24] 3381 	movx	@dptr,a
      000FE2 E4               [12] 3382 	clr	a
      000FE3 A3               [24] 3383 	inc	dptr
      000FE4 F0               [24] 3384 	movx	@dptr,a
      000FE5                       3385 00111$:
                                   3386 ;	program.c:637: for (int i = 0; i < buffers_array[0].num_char; i++)
      000FE5 0E               [12] 3387 	inc	r6
      000FE6 BE 00 01         [24] 3388 	cjne	r6,#0x00,00140$
      000FE9 0F               [12] 3389 	inc	r7
      000FEA                       3390 00140$:
      000FEA 02 0F 22         [24] 3391 	ljmp	00110$
      000FED                       3392 00105$:
                                   3393 ;	program.c:648: printf("\n\n\r");
      000FED 74 EA            [12] 3394 	mov	a,#___str_57
      000FEF C0 E0            [24] 3395 	push	acc
      000FF1 74 2A            [12] 3396 	mov	a,#(___str_57 >> 8)
      000FF3 C0 E0            [24] 3397 	push	acc
      000FF5 74 80            [12] 3398 	mov	a,#0x80
      000FF7 C0 E0            [24] 3399 	push	acc
      000FF9 12 18 33         [24] 3400 	lcall	_printf
      000FFC 15 81            [12] 3401 	dec	sp
      000FFE 15 81            [12] 3402 	dec	sp
      001000 15 81            [12] 3403 	dec	sp
      001002 22               [24] 3404 	ret
      001003                       3405 00107$:
                                   3406 ;	program.c:652: printf("Buffer 0 is empty...\n\r");
      001003 74 92            [12] 3407 	mov	a,#___str_63
      001005 C0 E0            [24] 3408 	push	acc
      001007 74 2B            [12] 3409 	mov	a,#(___str_63 >> 8)
      001009 C0 E0            [24] 3410 	push	acc
      00100B 74 80            [12] 3411 	mov	a,#0x80
      00100D C0 E0            [24] 3412 	push	acc
      00100F 12 18 33         [24] 3413 	lcall	_printf
      001012 15 81            [12] 3414 	dec	sp
      001014 15 81            [12] 3415 	dec	sp
      001016 15 81            [12] 3416 	dec	sp
                                   3417 ;	program.c:654: }
      001018 22               [24] 3418 	ret
                                   3419 ;------------------------------------------------------------
                                   3420 ;Allocation info for local variables in function 'print_heap_stats'
                                   3421 ;------------------------------------------------------------
                                   3422 ;	program.c:661: void print_heap_stats()
                                   3423 ;	-----------------------------------------
                                   3424 ;	 function print_heap_stats
                                   3425 ;	-----------------------------------------
      001019                       3426 _print_heap_stats:
                                   3427 ;	program.c:663: DEBUGPORT(0xB);
      001019 75 82 0B         [24] 3428 	mov	dpl,#0x0b
      00101C 12 13 FA         [24] 3429 	lcall	_dataout
                                   3430 ;	program.c:664: printf("\n\r****************HEAP*STATS*************\n\r");
      00101F 74 A9            [12] 3431 	mov	a,#___str_64
      001021 C0 E0            [24] 3432 	push	acc
      001023 74 2B            [12] 3433 	mov	a,#(___str_64 >> 8)
      001025 C0 E0            [24] 3434 	push	acc
      001027 74 80            [12] 3435 	mov	a,#0x80
      001029 C0 E0            [24] 3436 	push	acc
      00102B 12 18 33         [24] 3437 	lcall	_printf
      00102E 15 81            [12] 3438 	dec	sp
      001030 15 81            [12] 3439 	dec	sp
      001032 15 81            [12] 3440 	dec	sp
                                   3441 ;	program.c:665: printf("Total Heap Size: %d \n\r", program_stats.total_heap_size);
      001034 90 00 01         [24] 3442 	mov	dptr,#_program_stats
      001037 E0               [24] 3443 	movx	a,@dptr
      001038 FE               [12] 3444 	mov	r6,a
      001039 A3               [24] 3445 	inc	dptr
      00103A E0               [24] 3446 	movx	a,@dptr
      00103B FF               [12] 3447 	mov	r7,a
      00103C C0 06            [24] 3448 	push	ar6
      00103E C0 07            [24] 3449 	push	ar7
      001040 74 D5            [12] 3450 	mov	a,#___str_65
      001042 C0 E0            [24] 3451 	push	acc
      001044 74 2B            [12] 3452 	mov	a,#(___str_65 >> 8)
      001046 C0 E0            [24] 3453 	push	acc
      001048 74 80            [12] 3454 	mov	a,#0x80
      00104A C0 E0            [24] 3455 	push	acc
      00104C 12 18 33         [24] 3456 	lcall	_printf
      00104F E5 81            [12] 3457 	mov	a,sp
      001051 24 FB            [12] 3458 	add	a,#0xfb
      001053 F5 81            [12] 3459 	mov	sp,a
                                   3460 ;	program.c:666: printf("Allocated Heap Size: %d \n\r", program_stats.allocated_heap);
      001055 90 00 03         [24] 3461 	mov	dptr,#(_program_stats + 0x0002)
      001058 E0               [24] 3462 	movx	a,@dptr
      001059 FE               [12] 3463 	mov	r6,a
      00105A A3               [24] 3464 	inc	dptr
      00105B E0               [24] 3465 	movx	a,@dptr
      00105C FF               [12] 3466 	mov	r7,a
      00105D C0 06            [24] 3467 	push	ar6
      00105F C0 07            [24] 3468 	push	ar7
      001061 74 EC            [12] 3469 	mov	a,#___str_66
      001063 C0 E0            [24] 3470 	push	acc
      001065 74 2B            [12] 3471 	mov	a,#(___str_66 >> 8)
      001067 C0 E0            [24] 3472 	push	acc
      001069 74 80            [12] 3473 	mov	a,#0x80
      00106B C0 E0            [24] 3474 	push	acc
      00106D 12 18 33         [24] 3475 	lcall	_printf
      001070 E5 81            [12] 3476 	mov	a,sp
      001072 24 FB            [12] 3477 	add	a,#0xfb
      001074 F5 81            [12] 3478 	mov	sp,a
                                   3479 ;	program.c:667: printf("All Chars: %d \n\r", program_stats.all_char_count);
      001076 90 00 05         [24] 3480 	mov	dptr,#(_program_stats + 0x0004)
      001079 E0               [24] 3481 	movx	a,@dptr
      00107A FE               [12] 3482 	mov	r6,a
      00107B A3               [24] 3483 	inc	dptr
      00107C E0               [24] 3484 	movx	a,@dptr
      00107D FF               [12] 3485 	mov	r7,a
      00107E C0 06            [24] 3486 	push	ar6
      001080 C0 07            [24] 3487 	push	ar7
      001082 74 07            [12] 3488 	mov	a,#___str_67
      001084 C0 E0            [24] 3489 	push	acc
      001086 74 2C            [12] 3490 	mov	a,#(___str_67 >> 8)
      001088 C0 E0            [24] 3491 	push	acc
      00108A 74 80            [12] 3492 	mov	a,#0x80
      00108C C0 E0            [24] 3493 	push	acc
      00108E 12 18 33         [24] 3494 	lcall	_printf
      001091 E5 81            [12] 3495 	mov	a,sp
      001093 24 FB            [12] 3496 	add	a,#0xfb
      001095 F5 81            [12] 3497 	mov	sp,a
                                   3498 ;	program.c:668: printf("Storage Chars: %d \n\r", program_stats.storage_char_count);
      001097 90 00 07         [24] 3499 	mov	dptr,#(_program_stats + 0x0006)
      00109A E0               [24] 3500 	movx	a,@dptr
      00109B FE               [12] 3501 	mov	r6,a
      00109C A3               [24] 3502 	inc	dptr
      00109D E0               [24] 3503 	movx	a,@dptr
      00109E FF               [12] 3504 	mov	r7,a
      00109F C0 06            [24] 3505 	push	ar6
      0010A1 C0 07            [24] 3506 	push	ar7
      0010A3 74 18            [12] 3507 	mov	a,#___str_68
      0010A5 C0 E0            [24] 3508 	push	acc
      0010A7 74 2C            [12] 3509 	mov	a,#(___str_68 >> 8)
      0010A9 C0 E0            [24] 3510 	push	acc
      0010AB 74 80            [12] 3511 	mov	a,#0x80
      0010AD C0 E0            [24] 3512 	push	acc
      0010AF 12 18 33         [24] 3513 	lcall	_printf
      0010B2 E5 81            [12] 3514 	mov	a,sp
      0010B4 24 FB            [12] 3515 	add	a,#0xfb
      0010B6 F5 81            [12] 3516 	mov	sp,a
                                   3517 ;	program.c:669: printf("Total Buffers: %d \n\r", program_stats.total_buffers);
      0010B8 90 00 09         [24] 3518 	mov	dptr,#(_program_stats + 0x0008)
      0010BB E0               [24] 3519 	movx	a,@dptr
      0010BC FE               [12] 3520 	mov	r6,a
      0010BD A3               [24] 3521 	inc	dptr
      0010BE E0               [24] 3522 	movx	a,@dptr
      0010BF FF               [12] 3523 	mov	r7,a
      0010C0 C0 06            [24] 3524 	push	ar6
      0010C2 C0 07            [24] 3525 	push	ar7
      0010C4 74 2D            [12] 3526 	mov	a,#___str_69
      0010C6 C0 E0            [24] 3527 	push	acc
      0010C8 74 2C            [12] 3528 	mov	a,#(___str_69 >> 8)
      0010CA C0 E0            [24] 3529 	push	acc
      0010CC 74 80            [12] 3530 	mov	a,#0x80
      0010CE C0 E0            [24] 3531 	push	acc
      0010D0 12 18 33         [24] 3532 	lcall	_printf
      0010D3 E5 81            [12] 3533 	mov	a,sp
      0010D5 24 FB            [12] 3534 	add	a,#0xfb
      0010D7 F5 81            [12] 3535 	mov	sp,a
                                   3536 ;	program.c:670: }
      0010D9 22               [24] 3537 	ret
                                   3538 ;------------------------------------------------------------
                                   3539 ;Allocation info for local variables in function 'print_all_buffers'
                                   3540 ;------------------------------------------------------------
                                   3541 ;i                         Allocated with name '_print_all_buffers_i_131072_123'
                                   3542 ;------------------------------------------------------------
                                   3543 ;	program.c:677: void print_all_buffers()
                                   3544 ;	-----------------------------------------
                                   3545 ;	 function print_all_buffers
                                   3546 ;	-----------------------------------------
      0010DA                       3547 _print_all_buffers:
                                   3548 ;	program.c:679: DEBUGPORT(0xC)
      0010DA 75 82 0C         [24] 3549 	mov	dpl,#0x0c
      0010DD 12 13 FA         [24] 3550 	lcall	_dataout
                                   3551 ;	program.c:680: for (int i = 0; i < program_stats.total_buffers; i++)
      0010E0 7E 00            [12] 3552 	mov	r6,#0x00
      0010E2 7F 00            [12] 3553 	mov	r7,#0x00
      0010E4                       3554 00103$:
      0010E4 90 00 09         [24] 3555 	mov	dptr,#(_program_stats + 0x0008)
      0010E7 E0               [24] 3556 	movx	a,@dptr
      0010E8 FC               [12] 3557 	mov	r4,a
      0010E9 A3               [24] 3558 	inc	dptr
      0010EA E0               [24] 3559 	movx	a,@dptr
      0010EB FD               [12] 3560 	mov	r5,a
      0010EC C3               [12] 3561 	clr	c
      0010ED EE               [12] 3562 	mov	a,r6
      0010EE 9C               [12] 3563 	subb	a,r4
      0010EF EF               [12] 3564 	mov	a,r7
      0010F0 64 80            [12] 3565 	xrl	a,#0x80
      0010F2 8D F0            [24] 3566 	mov	b,r5
      0010F4 63 F0 80         [24] 3567 	xrl	b,#0x80
      0010F7 95 F0            [12] 3568 	subb	a,b
      0010F9 40 03            [24] 3569 	jc	00116$
      0010FB 02 12 34         [24] 3570 	ljmp	00101$
      0010FE                       3571 00116$:
                                   3572 ;	program.c:682: printf("****************BUFFER*%d***************\n\r", i);
      0010FE C0 07            [24] 3573 	push	ar7
      001100 C0 06            [24] 3574 	push	ar6
      001102 C0 06            [24] 3575 	push	ar6
      001104 C0 07            [24] 3576 	push	ar7
      001106 74 42            [12] 3577 	mov	a,#___str_70
      001108 C0 E0            [24] 3578 	push	acc
      00110A 74 2C            [12] 3579 	mov	a,#(___str_70 >> 8)
      00110C C0 E0            [24] 3580 	push	acc
      00110E 74 80            [12] 3581 	mov	a,#0x80
      001110 C0 E0            [24] 3582 	push	acc
      001112 12 18 33         [24] 3583 	lcall	_printf
      001115 E5 81            [12] 3584 	mov	a,sp
      001117 24 FB            [12] 3585 	add	a,#0xfb
      001119 F5 81            [12] 3586 	mov	sp,a
      00111B D0 06            [24] 3587 	pop	ar6
      00111D D0 07            [24] 3588 	pop	ar7
                                   3589 ;	program.c:683: printf("Buffer#: %d \n\r", buffers_array[i].buffer_num);
      00111F 90 15 0E         [24] 3590 	mov	dptr,#__mulint_PARM_2
      001122 EE               [12] 3591 	mov	a,r6
      001123 F0               [24] 3592 	movx	@dptr,a
      001124 EF               [12] 3593 	mov	a,r7
      001125 A3               [24] 3594 	inc	dptr
      001126 F0               [24] 3595 	movx	@dptr,a
      001127 90 00 0C         [24] 3596 	mov	dptr,#0x000c
      00112A C0 07            [24] 3597 	push	ar7
      00112C C0 06            [24] 3598 	push	ar6
      00112E 12 17 C5         [24] 3599 	lcall	__mulint
      001131 AC 82            [24] 3600 	mov	r4,dpl
      001133 AD 83            [24] 3601 	mov	r5,dph
      001135 EC               [12] 3602 	mov	a,r4
      001136 24 0B            [12] 3603 	add	a,#_buffers_array
      001138 F5 82            [12] 3604 	mov	dpl,a
      00113A ED               [12] 3605 	mov	a,r5
      00113B 34 00            [12] 3606 	addc	a,#(_buffers_array >> 8)
      00113D F5 83            [12] 3607 	mov	dph,a
      00113F E0               [24] 3608 	movx	a,@dptr
      001140 FA               [12] 3609 	mov	r2,a
      001141 A3               [24] 3610 	inc	dptr
      001142 E0               [24] 3611 	movx	a,@dptr
      001143 FB               [12] 3612 	mov	r3,a
      001144 C0 05            [24] 3613 	push	ar5
      001146 C0 04            [24] 3614 	push	ar4
      001148 C0 02            [24] 3615 	push	ar2
      00114A C0 03            [24] 3616 	push	ar3
      00114C 74 6D            [12] 3617 	mov	a,#___str_71
      00114E C0 E0            [24] 3618 	push	acc
      001150 74 2C            [12] 3619 	mov	a,#(___str_71 >> 8)
      001152 C0 E0            [24] 3620 	push	acc
      001154 74 80            [12] 3621 	mov	a,#0x80
      001156 C0 E0            [24] 3622 	push	acc
      001158 12 18 33         [24] 3623 	lcall	_printf
      00115B E5 81            [12] 3624 	mov	a,sp
      00115D 24 FB            [12] 3625 	add	a,#0xfb
      00115F F5 81            [12] 3626 	mov	sp,a
      001161 D0 04            [24] 3627 	pop	ar4
      001163 D0 05            [24] 3628 	pop	ar5
                                   3629 ;	program.c:684: printf("BufferStart: %p \n\r", buffers_array[i].buffer_start);
      001165 EC               [12] 3630 	mov	a,r4
      001166 24 0B            [12] 3631 	add	a,#_buffers_array
      001168 FC               [12] 3632 	mov	r4,a
      001169 ED               [12] 3633 	mov	a,r5
      00116A 34 00            [12] 3634 	addc	a,#(_buffers_array >> 8)
      00116C FD               [12] 3635 	mov	r5,a
      00116D 8C 82            [24] 3636 	mov	dpl,r4
      00116F 8D 83            [24] 3637 	mov	dph,r5
      001171 A3               [24] 3638 	inc	dptr
      001172 A3               [24] 3639 	inc	dptr
      001173 E0               [24] 3640 	movx	a,@dptr
      001174 F9               [12] 3641 	mov	r1,a
      001175 A3               [24] 3642 	inc	dptr
      001176 E0               [24] 3643 	movx	a,@dptr
      001177 FA               [12] 3644 	mov	r2,a
      001178 A3               [24] 3645 	inc	dptr
      001179 E0               [24] 3646 	movx	a,@dptr
      00117A FB               [12] 3647 	mov	r3,a
      00117B C0 05            [24] 3648 	push	ar5
      00117D C0 04            [24] 3649 	push	ar4
      00117F C0 01            [24] 3650 	push	ar1
      001181 C0 02            [24] 3651 	push	ar2
      001183 C0 03            [24] 3652 	push	ar3
      001185 74 7C            [12] 3653 	mov	a,#___str_72
      001187 C0 E0            [24] 3654 	push	acc
      001189 74 2C            [12] 3655 	mov	a,#(___str_72 >> 8)
      00118B C0 E0            [24] 3656 	push	acc
      00118D 74 80            [12] 3657 	mov	a,#0x80
      00118F C0 E0            [24] 3658 	push	acc
      001191 12 18 33         [24] 3659 	lcall	_printf
      001194 E5 81            [12] 3660 	mov	a,sp
      001196 24 FA            [12] 3661 	add	a,#0xfa
      001198 F5 81            [12] 3662 	mov	sp,a
      00119A D0 04            [24] 3663 	pop	ar4
      00119C D0 05            [24] 3664 	pop	ar5
                                   3665 ;	program.c:685: printf("BufferEnd: %p \n\r", buffers_array[i].buffer_end);
      00119E 8C 82            [24] 3666 	mov	dpl,r4
      0011A0 8D 83            [24] 3667 	mov	dph,r5
      0011A2 A3               [24] 3668 	inc	dptr
      0011A3 A3               [24] 3669 	inc	dptr
      0011A4 A3               [24] 3670 	inc	dptr
      0011A5 A3               [24] 3671 	inc	dptr
      0011A6 A3               [24] 3672 	inc	dptr
      0011A7 E0               [24] 3673 	movx	a,@dptr
      0011A8 F9               [12] 3674 	mov	r1,a
      0011A9 A3               [24] 3675 	inc	dptr
      0011AA E0               [24] 3676 	movx	a,@dptr
      0011AB FA               [12] 3677 	mov	r2,a
      0011AC A3               [24] 3678 	inc	dptr
      0011AD E0               [24] 3679 	movx	a,@dptr
      0011AE FB               [12] 3680 	mov	r3,a
      0011AF C0 05            [24] 3681 	push	ar5
      0011B1 C0 04            [24] 3682 	push	ar4
      0011B3 C0 01            [24] 3683 	push	ar1
      0011B5 C0 02            [24] 3684 	push	ar2
      0011B7 C0 03            [24] 3685 	push	ar3
      0011B9 74 8F            [12] 3686 	mov	a,#___str_73
      0011BB C0 E0            [24] 3687 	push	acc
      0011BD 74 2C            [12] 3688 	mov	a,#(___str_73 >> 8)
      0011BF C0 E0            [24] 3689 	push	acc
      0011C1 74 80            [12] 3690 	mov	a,#0x80
      0011C3 C0 E0            [24] 3691 	push	acc
      0011C5 12 18 33         [24] 3692 	lcall	_printf
      0011C8 E5 81            [12] 3693 	mov	a,sp
      0011CA 24 FA            [12] 3694 	add	a,#0xfa
      0011CC F5 81            [12] 3695 	mov	sp,a
      0011CE D0 04            [24] 3696 	pop	ar4
      0011D0 D0 05            [24] 3697 	pop	ar5
                                   3698 ;	program.c:686: printf("BufferSize: %d \n\r", buffers_array[i].buff_size);
      0011D2 74 08            [12] 3699 	mov	a,#0x08
      0011D4 2C               [12] 3700 	add	a,r4
      0011D5 F5 82            [12] 3701 	mov	dpl,a
      0011D7 E4               [12] 3702 	clr	a
      0011D8 3D               [12] 3703 	addc	a,r5
      0011D9 F5 83            [12] 3704 	mov	dph,a
      0011DB E0               [24] 3705 	movx	a,@dptr
      0011DC FA               [12] 3706 	mov	r2,a
      0011DD A3               [24] 3707 	inc	dptr
      0011DE E0               [24] 3708 	movx	a,@dptr
      0011DF FB               [12] 3709 	mov	r3,a
      0011E0 C0 05            [24] 3710 	push	ar5
      0011E2 C0 04            [24] 3711 	push	ar4
      0011E4 C0 02            [24] 3712 	push	ar2
      0011E6 C0 03            [24] 3713 	push	ar3
      0011E8 74 A0            [12] 3714 	mov	a,#___str_74
      0011EA C0 E0            [24] 3715 	push	acc
      0011EC 74 2C            [12] 3716 	mov	a,#(___str_74 >> 8)
      0011EE C0 E0            [24] 3717 	push	acc
      0011F0 74 80            [12] 3718 	mov	a,#0x80
      0011F2 C0 E0            [24] 3719 	push	acc
      0011F4 12 18 33         [24] 3720 	lcall	_printf
      0011F7 E5 81            [12] 3721 	mov	a,sp
      0011F9 24 FB            [12] 3722 	add	a,#0xfb
      0011FB F5 81            [12] 3723 	mov	sp,a
      0011FD D0 04            [24] 3724 	pop	ar4
      0011FF D0 05            [24] 3725 	pop	ar5
                                   3726 ;	program.c:687: printf("TotalUsed: %d \n\r", buffers_array[i].num_char);
      001201 74 0A            [12] 3727 	mov	a,#0x0a
      001203 2C               [12] 3728 	add	a,r4
      001204 F5 82            [12] 3729 	mov	dpl,a
      001206 E4               [12] 3730 	clr	a
      001207 3D               [12] 3731 	addc	a,r5
      001208 F5 83            [12] 3732 	mov	dph,a
      00120A E0               [24] 3733 	movx	a,@dptr
      00120B FC               [12] 3734 	mov	r4,a
      00120C A3               [24] 3735 	inc	dptr
      00120D E0               [24] 3736 	movx	a,@dptr
      00120E FD               [12] 3737 	mov	r5,a
      00120F C0 04            [24] 3738 	push	ar4
      001211 C0 05            [24] 3739 	push	ar5
      001213 74 B2            [12] 3740 	mov	a,#___str_75
      001215 C0 E0            [24] 3741 	push	acc
      001217 74 2C            [12] 3742 	mov	a,#(___str_75 >> 8)
      001219 C0 E0            [24] 3743 	push	acc
      00121B 74 80            [12] 3744 	mov	a,#0x80
      00121D C0 E0            [24] 3745 	push	acc
      00121F 12 18 33         [24] 3746 	lcall	_printf
      001222 E5 81            [12] 3747 	mov	a,sp
      001224 24 FB            [12] 3748 	add	a,#0xfb
      001226 F5 81            [12] 3749 	mov	sp,a
      001228 D0 06            [24] 3750 	pop	ar6
      00122A D0 07            [24] 3751 	pop	ar7
                                   3752 ;	program.c:680: for (int i = 0; i < program_stats.total_buffers; i++)
      00122C 0E               [12] 3753 	inc	r6
      00122D BE 00 01         [24] 3754 	cjne	r6,#0x00,00117$
      001230 0F               [12] 3755 	inc	r7
      001231                       3756 00117$:
      001231 02 10 E4         [24] 3757 	ljmp	00103$
      001234                       3758 00101$:
                                   3759 ;	program.c:689: printf("***************************************\n\r");
      001234 74 C3            [12] 3760 	mov	a,#___str_76
      001236 C0 E0            [24] 3761 	push	acc
      001238 74 2C            [12] 3762 	mov	a,#(___str_76 >> 8)
      00123A C0 E0            [24] 3763 	push	acc
      00123C 74 80            [12] 3764 	mov	a,#0x80
      00123E C0 E0            [24] 3765 	push	acc
      001240 12 18 33         [24] 3766 	lcall	_printf
      001243 15 81            [12] 3767 	dec	sp
      001245 15 81            [12] 3768 	dec	sp
      001247 15 81            [12] 3769 	dec	sp
                                   3770 ;	program.c:690: }
      001249 22               [24] 3771 	ret
                                   3772 ;------------------------------------------------------------
                                   3773 ;Allocation info for local variables in function 'get_number'
                                   3774 ;------------------------------------------------------------
                                   3775 ;total_chars               Allocated with name '_get_number_total_chars_65536_125'
                                   3776 ;rec                       Allocated with name '_get_number_rec_65537_127'
                                   3777 ;num                       Allocated with name '_get_number_num_65537_127'
                                   3778 ;i                         Allocated with name '_get_number_i_131073_128'
                                   3779 ;------------------------------------------------------------
                                   3780 ;	program.c:697: int get_number(int total_chars)
                                   3781 ;	-----------------------------------------
                                   3782 ;	 function get_number
                                   3783 ;	-----------------------------------------
      00124A                       3784 _get_number:
      00124A AF 83            [24] 3785 	mov	r7,dph
      00124C E5 82            [12] 3786 	mov	a,dpl
      00124E 90 01 5F         [24] 3787 	mov	dptr,#_get_number_total_chars_65536_125
      001251 F0               [24] 3788 	movx	@dptr,a
      001252 EF               [12] 3789 	mov	a,r7
      001253 A3               [24] 3790 	inc	dptr
      001254 F0               [24] 3791 	movx	@dptr,a
                                   3792 ;	program.c:699: DEBUGPORT(0xD);
      001255 75 82 0D         [24] 3793 	mov	dpl,#0x0d
      001258 12 13 FA         [24] 3794 	lcall	_dataout
                                   3795 ;	program.c:701: int num = 0;
      00125B 90 01 61         [24] 3796 	mov	dptr,#_get_number_num_65537_127
      00125E E4               [12] 3797 	clr	a
      00125F F0               [24] 3798 	movx	@dptr,a
      001260 A3               [24] 3799 	inc	dptr
      001261 F0               [24] 3800 	movx	@dptr,a
                                   3801 ;	program.c:702: for (int i = total_chars; i > 0; i--)
      001262 90 01 5F         [24] 3802 	mov	dptr,#_get_number_total_chars_65536_125
      001265 E0               [24] 3803 	movx	a,@dptr
      001266 FE               [12] 3804 	mov	r6,a
      001267 A3               [24] 3805 	inc	dptr
      001268 E0               [24] 3806 	movx	a,@dptr
      001269 FF               [12] 3807 	mov	r7,a
      00126A                       3808 00107$:
      00126A C3               [12] 3809 	clr	c
      00126B E4               [12] 3810 	clr	a
      00126C 9E               [12] 3811 	subb	a,r6
      00126D 74 80            [12] 3812 	mov	a,#(0x00 ^ 0x80)
      00126F 8F F0            [24] 3813 	mov	b,r7
      001271 63 F0 80         [24] 3814 	xrl	b,#0x80
      001274 95 F0            [12] 3815 	subb	a,b
      001276 40 03            [24] 3816 	jc	00127$
      001278 02 13 16         [24] 3817 	ljmp	00105$
      00127B                       3818 00127$:
                                   3819 ;	program.c:704: rec = getchar();
      00127B C0 07            [24] 3820 	push	ar7
      00127D C0 06            [24] 3821 	push	ar6
      00127F 12 13 BE         [24] 3822 	lcall	_getchar
      001282 AC 82            [24] 3823 	mov	r4,dpl
      001284 AD 83            [24] 3824 	mov	r5,dph
      001286 D0 06            [24] 3825 	pop	ar6
      001288 D0 07            [24] 3826 	pop	ar7
                                   3827 ;	program.c:706: if (rec <= 0x39 && rec >= 0x30)
      00128A C3               [12] 3828 	clr	c
      00128B 74 39            [12] 3829 	mov	a,#0x39
      00128D 9C               [12] 3830 	subb	a,r4
      00128E 74 80            [12] 3831 	mov	a,#(0x00 ^ 0x80)
      001290 8D F0            [24] 3832 	mov	b,r5
      001292 63 F0 80         [24] 3833 	xrl	b,#0x80
      001295 95 F0            [12] 3834 	subb	a,b
      001297 40 5C            [24] 3835 	jc	00102$
      001299 EC               [12] 3836 	mov	a,r4
      00129A 94 30            [12] 3837 	subb	a,#0x30
      00129C ED               [12] 3838 	mov	a,r5
      00129D 64 80            [12] 3839 	xrl	a,#0x80
      00129F 94 80            [12] 3840 	subb	a,#0x80
      0012A1 40 52            [24] 3841 	jc	00102$
                                   3842 ;	program.c:708: num += ((rec - 0x30) * get_num_helper(i - 1));
      0012A3 EC               [12] 3843 	mov	a,r4
      0012A4 24 D0            [12] 3844 	add	a,#0xd0
      0012A6 FC               [12] 3845 	mov	r4,a
      0012A7 ED               [12] 3846 	mov	a,r5
      0012A8 34 FF            [12] 3847 	addc	a,#0xff
      0012AA FD               [12] 3848 	mov	r5,a
      0012AB EE               [12] 3849 	mov	a,r6
      0012AC 24 FF            [12] 3850 	add	a,#0xff
      0012AE FA               [12] 3851 	mov	r2,a
      0012AF EF               [12] 3852 	mov	a,r7
      0012B0 34 FF            [12] 3853 	addc	a,#0xff
      0012B2 FB               [12] 3854 	mov	r3,a
      0012B3 8A 82            [24] 3855 	mov	dpl,r2
      0012B5 8B 83            [24] 3856 	mov	dph,r3
      0012B7 C0 07            [24] 3857 	push	ar7
      0012B9 C0 06            [24] 3858 	push	ar6
      0012BB C0 05            [24] 3859 	push	ar5
      0012BD C0 04            [24] 3860 	push	ar4
      0012BF 12 13 22         [24] 3861 	lcall	_get_num_helper
      0012C2 AA 82            [24] 3862 	mov	r2,dpl
      0012C4 AB 83            [24] 3863 	mov	r3,dph
      0012C6 D0 04            [24] 3864 	pop	ar4
      0012C8 D0 05            [24] 3865 	pop	ar5
      0012CA 90 15 0E         [24] 3866 	mov	dptr,#__mulint_PARM_2
      0012CD EA               [12] 3867 	mov	a,r2
      0012CE F0               [24] 3868 	movx	@dptr,a
      0012CF EB               [12] 3869 	mov	a,r3
      0012D0 A3               [24] 3870 	inc	dptr
      0012D1 F0               [24] 3871 	movx	@dptr,a
      0012D2 8C 82            [24] 3872 	mov	dpl,r4
      0012D4 8D 83            [24] 3873 	mov	dph,r5
      0012D6 12 17 C5         [24] 3874 	lcall	__mulint
      0012D9 AC 82            [24] 3875 	mov	r4,dpl
      0012DB AD 83            [24] 3876 	mov	r5,dph
      0012DD D0 06            [24] 3877 	pop	ar6
      0012DF D0 07            [24] 3878 	pop	ar7
      0012E1 90 01 61         [24] 3879 	mov	dptr,#_get_number_num_65537_127
      0012E4 E0               [24] 3880 	movx	a,@dptr
      0012E5 FA               [12] 3881 	mov	r2,a
      0012E6 A3               [24] 3882 	inc	dptr
      0012E7 E0               [24] 3883 	movx	a,@dptr
      0012E8 FB               [12] 3884 	mov	r3,a
      0012E9 90 01 61         [24] 3885 	mov	dptr,#_get_number_num_65537_127
      0012EC EC               [12] 3886 	mov	a,r4
      0012ED 2A               [12] 3887 	add	a,r2
      0012EE F0               [24] 3888 	movx	@dptr,a
      0012EF ED               [12] 3889 	mov	a,r5
      0012F0 3B               [12] 3890 	addc	a,r3
      0012F1 A3               [24] 3891 	inc	dptr
      0012F2 F0               [24] 3892 	movx	@dptr,a
      0012F3 80 19            [24] 3893 	sjmp	00108$
      0012F5                       3894 00102$:
                                   3895 ;	program.c:712: printf("ERR,Numbers ONLY!\n\r");
      0012F5 74 ED            [12] 3896 	mov	a,#___str_77
      0012F7 C0 E0            [24] 3897 	push	acc
      0012F9 74 2C            [12] 3898 	mov	a,#(___str_77 >> 8)
      0012FB C0 E0            [24] 3899 	push	acc
      0012FD 74 80            [12] 3900 	mov	a,#0x80
      0012FF C0 E0            [24] 3901 	push	acc
      001301 12 18 33         [24] 3902 	lcall	_printf
      001304 15 81            [12] 3903 	dec	sp
      001306 15 81            [12] 3904 	dec	sp
      001308 15 81            [12] 3905 	dec	sp
                                   3906 ;	program.c:713: return -1;
      00130A 90 FF FF         [24] 3907 	mov	dptr,#0xffff
      00130D 22               [24] 3908 	ret
      00130E                       3909 00108$:
                                   3910 ;	program.c:702: for (int i = total_chars; i > 0; i--)
      00130E 1E               [12] 3911 	dec	r6
      00130F BE FF 01         [24] 3912 	cjne	r6,#0xff,00130$
      001312 1F               [12] 3913 	dec	r7
      001313                       3914 00130$:
      001313 02 12 6A         [24] 3915 	ljmp	00107$
      001316                       3916 00105$:
                                   3917 ;	program.c:716: return num;
      001316 90 01 61         [24] 3918 	mov	dptr,#_get_number_num_65537_127
      001319 E0               [24] 3919 	movx	a,@dptr
      00131A FE               [12] 3920 	mov	r6,a
      00131B A3               [24] 3921 	inc	dptr
      00131C E0               [24] 3922 	movx	a,@dptr
                                   3923 ;	program.c:717: }
      00131D 8E 82            [24] 3924 	mov	dpl,r6
      00131F F5 83            [12] 3925 	mov	dph,a
      001321 22               [24] 3926 	ret
                                   3927 ;------------------------------------------------------------
                                   3928 ;Allocation info for local variables in function 'get_num_helper'
                                   3929 ;------------------------------------------------------------
                                   3930 ;times                     Allocated with name '_get_num_helper_times_65536_132'
                                   3931 ;num                       Allocated with name '_get_num_helper_num_65536_133'
                                   3932 ;i                         Allocated with name '_get_num_helper_i_131072_134'
                                   3933 ;------------------------------------------------------------
                                   3934 ;	program.c:724: int get_num_helper(int times)
                                   3935 ;	-----------------------------------------
                                   3936 ;	 function get_num_helper
                                   3937 ;	-----------------------------------------
      001322                       3938 _get_num_helper:
      001322 AF 83            [24] 3939 	mov	r7,dph
      001324 E5 82            [12] 3940 	mov	a,dpl
      001326 90 01 63         [24] 3941 	mov	dptr,#_get_num_helper_times_65536_132
      001329 F0               [24] 3942 	movx	@dptr,a
      00132A EF               [12] 3943 	mov	a,r7
      00132B A3               [24] 3944 	inc	dptr
      00132C F0               [24] 3945 	movx	@dptr,a
                                   3946 ;	program.c:726: int num = 1;
      00132D 90 01 65         [24] 3947 	mov	dptr,#_get_num_helper_num_65536_133
      001330 74 01            [12] 3948 	mov	a,#0x01
      001332 F0               [24] 3949 	movx	@dptr,a
      001333 E4               [12] 3950 	clr	a
      001334 A3               [24] 3951 	inc	dptr
      001335 F0               [24] 3952 	movx	@dptr,a
                                   3953 ;	program.c:728: for (int i = 0; i < times; i++)
      001336 90 01 63         [24] 3954 	mov	dptr,#_get_num_helper_times_65536_132
      001339 E0               [24] 3955 	movx	a,@dptr
      00133A FE               [12] 3956 	mov	r6,a
      00133B A3               [24] 3957 	inc	dptr
      00133C E0               [24] 3958 	movx	a,@dptr
      00133D FF               [12] 3959 	mov	r7,a
      00133E 7C 00            [12] 3960 	mov	r4,#0x00
      001340 7D 00            [12] 3961 	mov	r5,#0x00
      001342                       3962 00106$:
      001342 C3               [12] 3963 	clr	c
      001343 EC               [12] 3964 	mov	a,r4
      001344 9E               [12] 3965 	subb	a,r6
      001345 ED               [12] 3966 	mov	a,r5
      001346 64 80            [12] 3967 	xrl	a,#0x80
      001348 8F F0            [24] 3968 	mov	b,r7
      00134A 63 F0 80         [24] 3969 	xrl	b,#0x80
      00134D 95 F0            [12] 3970 	subb	a,b
      00134F 50 3A            [24] 3971 	jnc	00101$
                                   3972 ;	program.c:730: num = num * 10;
      001351 90 01 65         [24] 3973 	mov	dptr,#_get_num_helper_num_65536_133
      001354 E0               [24] 3974 	movx	a,@dptr
      001355 FA               [12] 3975 	mov	r2,a
      001356 A3               [24] 3976 	inc	dptr
      001357 E0               [24] 3977 	movx	a,@dptr
      001358 FB               [12] 3978 	mov	r3,a
      001359 90 15 0E         [24] 3979 	mov	dptr,#__mulint_PARM_2
      00135C EA               [12] 3980 	mov	a,r2
      00135D F0               [24] 3981 	movx	@dptr,a
      00135E EB               [12] 3982 	mov	a,r3
      00135F A3               [24] 3983 	inc	dptr
      001360 F0               [24] 3984 	movx	@dptr,a
      001361 90 00 0A         [24] 3985 	mov	dptr,#0x000a
      001364 C0 07            [24] 3986 	push	ar7
      001366 C0 06            [24] 3987 	push	ar6
      001368 C0 05            [24] 3988 	push	ar5
      00136A C0 04            [24] 3989 	push	ar4
      00136C 12 17 C5         [24] 3990 	lcall	__mulint
      00136F E5 82            [12] 3991 	mov	a,dpl
      001371 85 83 F0         [24] 3992 	mov	b,dph
      001374 D0 04            [24] 3993 	pop	ar4
      001376 D0 05            [24] 3994 	pop	ar5
      001378 D0 06            [24] 3995 	pop	ar6
      00137A D0 07            [24] 3996 	pop	ar7
      00137C 90 01 65         [24] 3997 	mov	dptr,#_get_num_helper_num_65536_133
      00137F F0               [24] 3998 	movx	@dptr,a
      001380 E5 F0            [12] 3999 	mov	a,b
      001382 A3               [24] 4000 	inc	dptr
      001383 F0               [24] 4001 	movx	@dptr,a
                                   4002 ;	program.c:728: for (int i = 0; i < times; i++)
      001384 0C               [12] 4003 	inc	r4
      001385 BC 00 BA         [24] 4004 	cjne	r4,#0x00,00106$
      001388 0D               [12] 4005 	inc	r5
      001389 80 B7            [24] 4006 	sjmp	00106$
      00138B                       4007 00101$:
                                   4008 ;	program.c:732: if (times == 0)
      00138B EE               [12] 4009 	mov	a,r6
      00138C 4F               [12] 4010 	orl	a,r7
      00138D 70 04            [24] 4011 	jnz	00103$
                                   4012 ;	program.c:733: return 1;
      00138F 90 00 01         [24] 4013 	mov	dptr,#0x0001
      001392 22               [24] 4014 	ret
      001393                       4015 00103$:
                                   4016 ;	program.c:735: return num;
      001393 90 01 65         [24] 4017 	mov	dptr,#_get_num_helper_num_65536_133
      001396 E0               [24] 4018 	movx	a,@dptr
      001397 FE               [12] 4019 	mov	r6,a
      001398 A3               [24] 4020 	inc	dptr
      001399 E0               [24] 4021 	movx	a,@dptr
                                   4022 ;	program.c:736: }
      00139A 8E 82            [24] 4023 	mov	dpl,r6
      00139C F5 83            [12] 4024 	mov	dph,a
      00139E 22               [24] 4025 	ret
                                   4026 ;------------------------------------------------------------
                                   4027 ;Allocation info for local variables in function 'putchar'
                                   4028 ;------------------------------------------------------------
                                   4029 ;c                         Allocated with name '_putchar_c_65536_136'
                                   4030 ;------------------------------------------------------------
                                   4031 ;	program.c:743: int putchar(int c)
                                   4032 ;	-----------------------------------------
                                   4033 ;	 function putchar
                                   4034 ;	-----------------------------------------
      00139F                       4035 _putchar:
      00139F AF 83            [24] 4036 	mov	r7,dph
      0013A1 E5 82            [12] 4037 	mov	a,dpl
      0013A3 90 01 67         [24] 4038 	mov	dptr,#_putchar_c_65536_136
      0013A6 F0               [24] 4039 	movx	@dptr,a
      0013A7 EF               [12] 4040 	mov	a,r7
      0013A8 A3               [24] 4041 	inc	dptr
      0013A9 F0               [24] 4042 	movx	@dptr,a
                                   4043 ;	program.c:745: while ((SCON & 0x02) == 0)
      0013AA                       4044 00101$:
      0013AA E5 98            [12] 4045 	mov	a,_SCON
      0013AC 30 E1 FB         [24] 4046 	jnb	acc.1,00101$
                                   4047 ;	program.c:747: TI = 0;
                                   4048 ;	assignBit
      0013AF C2 99            [12] 4049 	clr	_TI
                                   4050 ;	program.c:748: SBUF = c;
      0013B1 90 01 67         [24] 4051 	mov	dptr,#_putchar_c_65536_136
      0013B4 E0               [24] 4052 	movx	a,@dptr
      0013B5 FE               [12] 4053 	mov	r6,a
      0013B6 A3               [24] 4054 	inc	dptr
      0013B7 E0               [24] 4055 	movx	a,@dptr
      0013B8 8E 99            [24] 4056 	mov	_SBUF,r6
                                   4057 ;	program.c:749: return 0;
      0013BA 90 00 00         [24] 4058 	mov	dptr,#0x0000
                                   4059 ;	program.c:750: }
      0013BD 22               [24] 4060 	ret
                                   4061 ;------------------------------------------------------------
                                   4062 ;Allocation info for local variables in function 'getchar'
                                   4063 ;------------------------------------------------------------
                                   4064 ;	program.c:757: int getchar()
                                   4065 ;	-----------------------------------------
                                   4066 ;	 function getchar
                                   4067 ;	-----------------------------------------
      0013BE                       4068 _getchar:
                                   4069 ;	program.c:759: while (RI == 0)
      0013BE                       4070 00101$:
                                   4071 ;	program.c:761: RI = 0;
                                   4072 ;	assignBit
      0013BE 10 98 02         [24] 4073 	jbc	_RI,00140$
      0013C1 80 FB            [24] 4074 	sjmp	00101$
      0013C3                       4075 00140$:
                                   4076 ;	program.c:763: if (SBUF != 0x3F && SBUF != 0x3D && SBUF != 0x40 && SBUF != 0x2B && SBUF != 0x2D)
      0013C3 74 3F            [12] 4077 	mov	a,#0x3f
      0013C5 B5 99 02         [24] 4078 	cjne	a,_SBUF,00141$
      0013C8 80 27            [24] 4079 	sjmp	00105$
      0013CA                       4080 00141$:
      0013CA 74 3D            [12] 4081 	mov	a,#0x3d
      0013CC B5 99 02         [24] 4082 	cjne	a,_SBUF,00142$
      0013CF 80 20            [24] 4083 	sjmp	00105$
      0013D1                       4084 00142$:
      0013D1 74 40            [12] 4085 	mov	a,#0x40
      0013D3 B5 99 02         [24] 4086 	cjne	a,_SBUF,00143$
      0013D6 80 19            [24] 4087 	sjmp	00105$
      0013D8                       4088 00143$:
      0013D8 74 2B            [12] 4089 	mov	a,#0x2b
      0013DA B5 99 02         [24] 4090 	cjne	a,_SBUF,00144$
      0013DD 80 12            [24] 4091 	sjmp	00105$
      0013DF                       4092 00144$:
      0013DF 74 2D            [12] 4093 	mov	a,#0x2d
      0013E1 B5 99 02         [24] 4094 	cjne	a,_SBUF,00145$
      0013E4 80 0B            [24] 4095 	sjmp	00105$
      0013E6                       4096 00145$:
                                   4097 ;	program.c:764: putchar(SBUF);
      0013E6 AE 99            [24] 4098 	mov	r6,_SBUF
      0013E8 7F 00            [12] 4099 	mov	r7,#0x00
      0013EA 8E 82            [24] 4100 	mov	dpl,r6
      0013EC 8F 83            [24] 4101 	mov	dph,r7
      0013EE 12 13 9F         [24] 4102 	lcall	_putchar
      0013F1                       4103 00105$:
                                   4104 ;	program.c:765: return SBUF;
      0013F1 AE 99            [24] 4105 	mov	r6,_SBUF
      0013F3 7F 00            [12] 4106 	mov	r7,#0x00
      0013F5 8E 82            [24] 4107 	mov	dpl,r6
      0013F7 8F 83            [24] 4108 	mov	dph,r7
                                   4109 ;	program.c:766: }
      0013F9 22               [24] 4110 	ret
                                   4111 ;------------------------------------------------------------
                                   4112 ;Allocation info for local variables in function 'dataout'
                                   4113 ;------------------------------------------------------------
                                   4114 ;data                      Allocated with name '_dataout_data_65536_139'
                                   4115 ;------------------------------------------------------------
                                   4116 ;	program.c:773: void dataout(unsigned char data)
                                   4117 ;	-----------------------------------------
                                   4118 ;	 function dataout
                                   4119 ;	-----------------------------------------
      0013FA                       4120 _dataout:
      0013FA E5 82            [12] 4121 	mov	a,dpl
      0013FC 90 01 69         [24] 4122 	mov	dptr,#_dataout_data_65536_139
      0013FF F0               [24] 4123 	movx	@dptr,a
                                   4124 ;	program.c:775: DEBUG_LOC = data;
      001400 E0               [24] 4125 	movx	a,@dptr
      001401 90 80 00         [24] 4126 	mov	dptr,#_DEBUG_LOC
      001404 F0               [24] 4127 	movx	@dptr,a
                                   4128 ;	program.c:776: }
      001405 22               [24] 4129 	ret
                                   4130 ;------------------------------------------------------------
                                   4131 ;Allocation info for local variables in function '_sdcc_external_startup'
                                   4132 ;------------------------------------------------------------
                                   4133 ;	program.c:783: _sdcc_external_startup()
                                   4134 ;	-----------------------------------------
                                   4135 ;	 function _sdcc_external_startup
                                   4136 ;	-----------------------------------------
      001406                       4137 __sdcc_external_startup:
                                   4138 ;	program.c:785: CKCON0 |= 0x1;
      001406 43 8F 01         [24] 4139 	orl	_CKCON0,#0x01
                                   4140 ;	program.c:787: _AUXR = 0xC;
      001409 75 8E 0C         [24] 4141 	mov	__AUXR,#0x0c
                                   4142 ;	program.c:789: SCON = 0x42;
      00140C 75 98 42         [24] 4143 	mov	_SCON,#0x42
                                   4144 ;	program.c:791: PCON = 0x80;
      00140F 75 87 80         [24] 4145 	mov	_PCON,#0x80
                                   4146 ;	program.c:793: TH1 = 255;
      001412 75 8D FF         [24] 4147 	mov	_TH1,#0xff
                                   4148 ;	program.c:794: TL1 = 255;
      001415 75 8B FF         [24] 4149 	mov	_TL1,#0xff
                                   4150 ;	program.c:796: TMOD = 0x20;
      001418 75 89 20         [24] 4151 	mov	_TMOD,#0x20
                                   4152 ;	program.c:798: REN = 1;
                                   4153 ;	assignBit
      00141B D2 9C            [12] 4154 	setb	_REN
                                   4155 ;	program.c:800: TR1 = 1;
                                   4156 ;	assignBit
      00141D D2 8E            [12] 4157 	setb	_TR1
                                   4158 ;	program.c:802: EA = 1;
                                   4159 ;	assignBit
      00141F D2 AF            [12] 4160 	setb	_EA
                                   4161 ;	program.c:804: EC = 1;
                                   4162 ;	assignBit
      001421 D2 AE            [12] 4163 	setb	_EC
                                   4164 ;	program.c:805: return 0;
      001423 90 00 00         [24] 4165 	mov	dptr,#0x0000
                                   4166 ;	program.c:806: }
      001426 22               [24] 4167 	ret
                                   4168 	.area CSEG    (CODE)
                                   4169 	.area CONST   (CODE)
                                   4170 	.area CONST   (CODE)
      00226E                       4171 ___str_0:
      00226E 0A                    4172 	.db 0x0a
      00226F 0D                    4173 	.db 0x0d
      002270 20 48 45 4C 4C 4F 21  4174 	.ascii " HELLO! Started in X2 Mode "
             20 53 74 61 72 74 65
             64 20 69 6E 20 58 32
             20 4D 6F 64 65 20
      00228B 0A                    4175 	.db 0x0a
      00228C 0D                    4176 	.db 0x0d
      00228D 00                    4177 	.db 0x00
                                   4178 	.area CSEG    (CODE)
                                   4179 	.area CONST   (CODE)
      00228E                       4180 ___str_1:
      00228E 48 65 6C 6C 6F 2C 20  4181 	.ascii "Hello, In PCA Demo mode "
             49 6E 20 50 43 41 20
             44 65 6D 6F 20 6D 6F
             64 65 20
      0022A6 0A                    4182 	.db 0x0a
      0022A7 0D                    4183 	.db 0x0d
      0022A8 00                    4184 	.db 0x00
                                   4185 	.area CSEG    (CODE)
                                   4186 	.area CONST   (CODE)
      0022A9                       4187 ___str_2:
      0022A9 50 6C 65 61 73 65 20  4188 	.ascii "Please make a valid choice "
             6D 61 6B 65 20 61 20
             76 61 6C 69 64 20 63
             68 6F 69 63 65 20
      0022C4 0A                    4189 	.db 0x0a
      0022C5 0D                    4190 	.db 0x0d
      0022C6 00                    4191 	.db 0x00
                                   4192 	.area CSEG    (CODE)
                                   4193 	.area CONST   (CODE)
      0022C7                       4194 ___str_3:
      0022C7 50 6C 65 61 73 65 20  4195 	.ascii "Please 'E' to exit or Reset "
             27 45 27 20 74 6F 20
             65 78 69 74 20 6F 72
             20 52 65 73 65 74 20
      0022E3 0A                    4196 	.db 0x0a
      0022E4 0D                    4197 	.db 0x0d
      0022E5 00                    4198 	.db 0x00
                                   4199 	.area CSEG    (CODE)
                                   4200 	.area CONST   (CODE)
      0022E6                       4201 ___str_4:
      0022E6 43 61 70 74 75 72 65  4202 	.ascii "Captured Value CCPL -> %d CCPH -> %d "
             64 20 56 61 6C 75 65
             20 43 43 50 4C 20 2D
             3E 20 25 64 20 43 43
             50 48 20 2D 3E 20 25
             64 20
      00230B 0A                    4203 	.db 0x0a
      00230C 0D                    4204 	.db 0x0d
      00230D 00                    4205 	.db 0x00
                                   4206 	.area CSEG    (CODE)
                                   4207 	.area CONST   (CODE)
      00230E                       4208 ___str_5:
      00230E 54 69 6D 65 72 20 49  4209 	.ascii "Timer Interrupt"
             6E 74 65 72 72 75 70
             74
      00231D 0A                    4210 	.db 0x0a
      00231E 0D                    4211 	.db 0x0d
      00231F 00                    4212 	.db 0x00
                                   4213 	.area CSEG    (CODE)
                                   4214 	.area CONST   (CODE)
      002320                       4215 ___str_6:
      002320 47 6F 69 6E 67 20 74  4216 	.ascii "Going to main menu.. "
             6F 20 6D 61 69 6E 20
             6D 65 6E 75 2E 2E 20
      002335 0A                    4217 	.db 0x0a
      002336 0D                    4218 	.db 0x0d
      002337 00                    4219 	.db 0x00
                                   4220 	.area CSEG    (CODE)
                                   4221 	.area CONST   (CODE)
      002338                       4222 ___str_7:
      002338 53 65 74 74 69 6E 67  4223 	.ascii "Setting P1.3 as falling edge detector, enabling PCA interrup"
             20 50 31 2E 33 20 61
             73 20 66 61 6C 6C 69
             6E 67 20 65 64 67 65
             20 64 65 74 65 63 74
             6F 72 2C 20 65 6E 61
             62 6C 69 6E 67 20 50
             43 41 20 69 6E 74 65
             72 72 75 70
      002374 74 20                 4224 	.ascii "t "
      002376 0A                    4225 	.db 0x0a
      002377 0D                    4226 	.db 0x0d
      002378 00                    4227 	.db 0x00
                                   4228 	.area CSEG    (CODE)
                                   4229 	.area CONST   (CODE)
      002379                       4230 ___str_8:
      002379 45 6E 74 65 72 69 6E  4231 	.ascii "Entering Software Timer Mode "
             67 20 53 6F 66 74 77
             61 72 65 20 54 69 6D
             65 72 20 4D 6F 64 65
             20
      002396 0A                    4232 	.db 0x0a
      002397 0D                    4233 	.db 0x0d
      002398 00                    4234 	.db 0x00
                                   4235 	.area CSEG    (CODE)
                                   4236 	.area CONST   (CODE)
      002399                       4237 ___str_9:
      002399 45 6E 74 65 72 69 6E  4238 	.ascii "Entering High Speed Toggle Mode, P1.5 "
             67 20 48 69 67 68 20
             53 70 65 65 64 20 54
             6F 67 67 6C 65 20 4D
             6F 64 65 2C 20 50 31
             2E 35 20
      0023BF 0A                    4239 	.db 0x0a
      0023C0 0D                    4240 	.db 0x0d
      0023C1 00                    4241 	.db 0x00
                                   4242 	.area CSEG    (CODE)
                                   4243 	.area CONST   (CODE)
      0023C2                       4244 ___str_10:
      0023C2 45 6E 74 65 72 69 6E  4245 	.ascii "Entering PWM Mode, 25 percent Duty Cycle P1.6"
             67 20 50 57 4D 20 4D
             6F 64 65 2C 20 32 35
             20 70 65 72 63 65 6E
             74 20 44 75 74 79 20
             43 79 63 6C 65 20 50
             31 2E 36
      0023EF 0A                    4246 	.db 0x0a
      0023F0 0D                    4247 	.db 0x0d
      0023F1 00                    4248 	.db 0x00
                                   4249 	.area CSEG    (CODE)
                                   4250 	.area CONST   (CODE)
      0023F2                       4251 ___str_11:
      0023F2 45 6E 61 62 6C 69 6E  4252 	.ascii "Enabling Watchdog Timer.."
             67 20 57 61 74 63 68
             64 6F 67 20 54 69 6D
             65 72 2E 2E
      00240B 0A                    4253 	.db 0x0a
      00240C 0D                    4254 	.db 0x0d
      00240D 00                    4255 	.db 0x00
                                   4256 	.area CSEG    (CODE)
                                   4257 	.area CONST   (CODE)
      00240E                       4258 ___str_12:
      00240E 43 75 72 72 65 6E 74  4259 	.ascii "Currently Watchdog is being serviced"
             6C 79 20 57 61 74 63
             68 64 6F 67 20 69 73
             20 62 65 69 6E 67 20
             73 65 72 76 69 63 65
             64
      002432 0A                    4260 	.db 0x0a
      002433 0D                    4261 	.db 0x0d
      002434 50 72 65 73 73 20 27  4262 	.ascii "Press 'S' to stop and generate a reset "
             53 27 20 74 6F 20 73
             74 6F 70 20 61 6E 64
             20 67 65 6E 65 72 61
             74 65 20 61 20 72 65
             73 65 74 20
      00245B 0A                    4263 	.db 0x0a
      00245C 0D                    4264 	.db 0x0d
      00245D 00                    4265 	.db 0x00
                                   4266 	.area CSEG    (CODE)
                                   4267 	.area CONST   (CODE)
      00245E                       4268 ___str_13:
      00245E 45 6E 74 65 72 69 6E  4269 	.ascii "Entering Idle, Will Exit on external interrupt 0"
             67 20 49 64 6C 65 2C
             20 57 69 6C 6C 20 45
             78 69 74 20 6F 6E 20
             65 78 74 65 72 6E 61
             6C 20 69 6E 74 65 72
             72 75 70 74 20 30
      00248E 0A                    4270 	.db 0x0a
      00248F 0D                    4271 	.db 0x0d
      002490 00                    4272 	.db 0x00
                                   4273 	.area CSEG    (CODE)
                                   4274 	.area CONST   (CODE)
      002491                       4275 ___str_14:
      002491 57 6F 6B 65 20 75 70  4276 	.ascii "Woke up from Idle/Power down, going to main menu "
             20 66 72 6F 6D 20 49
             64 6C 65 2F 50 6F 77
             65 72 20 64 6F 77 6E
             2C 20 67 6F 69 6E 67
             20 74 6F 20 6D 61 69
             6E 20 6D 65 6E 75 20
      0024C2 0A                    4277 	.db 0x0a
      0024C3 0D                    4278 	.db 0x0d
      0024C4 00                    4279 	.db 0x00
                                   4280 	.area CSEG    (CODE)
                                   4281 	.area CONST   (CODE)
      0024C5                       4282 ___str_15:
      0024C5 45 6E 74 65 72 69 6E  4283 	.ascii "Entering power down, Will Exit on external interrupt 0"
             67 20 70 6F 77 65 72
             20 64 6F 77 6E 2C 20
             57 69 6C 6C 20 45 78
             69 74 20 6F 6E 20 65
             78 74 65 72 6E 61 6C
             20 69 6E 74 65 72 72
             75 70 74 20 30
      0024FB 0A                    4284 	.db 0x0a
      0024FC 0D                    4285 	.db 0x0d
      0024FD 00                    4286 	.db 0x00
                                   4287 	.area CSEG    (CODE)
                                   4288 	.area CONST   (CODE)
      0024FE                       4289 ___str_16:
      0024FE 43 68 61 6E 67 69 6E  4290 	.ascii "Changing Clock prescalar to go to lowest frequency in X2 Mod"
             67 20 43 6C 6F 63 6B
             20 70 72 65 73 63 61
             6C 61 72 20 74 6F 20
             67 6F 20 74 6F 20 6C
             6F 77 65 73 74 20 66
             72 65 71 75 65 6E 63
             79 20 69 6E 20 58 32
             20 4D 6F 64
      00253A 65 2E 2E              4291 	.ascii "e.."
      00253D 0A                    4292 	.db 0x0a
      00253E 0D                    4293 	.db 0x0d
      00253F 00                    4294 	.db 0x00
                                   4295 	.area CSEG    (CODE)
                                   4296 	.area CONST   (CODE)
      002540                       4297 ___str_17:
      002540 54 68 69 73 20 55 41  4298 	.ascii "This UART Session will stop working..."
             52 54 20 53 65 73 73
             69 6F 6E 20 77 69 6C
             6C 20 73 74 6F 70 20
             77 6F 72 6B 69 6E 67
             2E 2E 2E
      002566 0A                    4299 	.db 0x0a
      002567 0D                    4300 	.db 0x0d
      002568 00                    4301 	.db 0x00
                                   4302 	.area CSEG    (CODE)
                                   4303 	.area CONST   (CODE)
      002569                       4304 ___str_18:
      002569 0A                    4305 	.db 0x0a
      00256A 0A                    4306 	.db 0x0a
      00256B 0D                    4307 	.db 0x0d
      00256C 5E 5E 5E 5E 5E 5E 5E  4308 	.ascii "^^^^^^^^^^^^^^^^^^^-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ "
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 2D 4D
             45 4E 55 2D 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 20
      0025A0 0A                    4309 	.db 0x0a
      0025A1 0A                    4310 	.db 0x0a
      0025A2 0D                    4311 	.db 0x0d
      0025A3 00                    4312 	.db 0x00
                                   4313 	.area CSEG    (CODE)
                                   4314 	.area CONST   (CODE)
      0025A4                       4315 ___str_19:
      0025A4 27 48 27 20 2D 3E 20  4316 	.ascii "'H' -> Enter Heap Demo Mode "
             45 6E 74 65 72 20 48
             65 61 70 20 44 65 6D
             6F 20 4D 6F 64 65 20
      0025C0 0A                    4317 	.db 0x0a
      0025C1 0D                    4318 	.db 0x0d
      0025C2 00                    4319 	.db 0x00
                                   4320 	.area CSEG    (CODE)
                                   4321 	.area CONST   (CODE)
      0025C3                       4322 ___str_20:
      0025C3 27 50 27 20 2D 3E 20  4323 	.ascii "'P' -> Enter PCA Demo Mode "
             45 6E 74 65 72 20 50
             43 41 20 44 65 6D 6F
             20 4D 6F 64 65 20
      0025DE 0A                    4324 	.db 0x0a
      0025DF 0D                    4325 	.db 0x0d
      0025E0 00                    4326 	.db 0x00
                                   4327 	.area CSEG    (CODE)
                                   4328 	.area CONST   (CODE)
      0025E1                       4329 ___str_21:
      0025E1 27 41 27 20 2D 3E 20  4330 	.ascii "'A' -> Assembly C Mix "
             41 73 73 65 6D 62 6C
             79 20 43 20 4D 69 78
             20
      0025F7 0A                    4331 	.db 0x0a
      0025F8 0D                    4332 	.db 0x0d
      0025F9 00                    4333 	.db 0x00
                                   4334 	.area CSEG    (CODE)
                                   4335 	.area CONST   (CODE)
      0025FA                       4336 ___str_22:
      0025FA 0A                    4337 	.db 0x0a
      0025FB 0D                    4338 	.db 0x0d
      0025FC 20 47 69 76 65 20 70  4339 	.ascii " Give param 1, 8bit "
             61 72 61 6D 20 31 2C
             20 38 62 69 74 20
      002610 0A                    4340 	.db 0x0a
      002611 0D                    4341 	.db 0x0d
      002612 00                    4342 	.db 0x00
                                   4343 	.area CSEG    (CODE)
                                   4344 	.area CONST   (CODE)
      002613                       4345 ___str_23:
      002613 0A                    4346 	.db 0x0a
      002614 0D                    4347 	.db 0x0d
      002615 20 47 69 76 65 20 70  4348 	.ascii " Give param 2, 8bit "
             61 72 61 6D 20 32 2C
             20 38 62 69 74 20
      002629 0A                    4349 	.db 0x0a
      00262A 0D                    4350 	.db 0x0d
      00262B 00                    4351 	.db 0x00
                                   4352 	.area CSEG    (CODE)
                                   4353 	.area CONST   (CODE)
      00262C                       4354 ___str_24:
      00262C 0A                    4355 	.db 0x0a
      00262D 0D                    4356 	.db 0x0d
      00262E 20 47 69 76 65 20 70  4357 	.ascii " Give param 3, 8bit "
             61 72 61 6D 20 33 2C
             20 38 62 69 74 20
      002642 0A                    4358 	.db 0x0a
      002643 0D                    4359 	.db 0x0d
      002644 00                    4360 	.db 0x00
                                   4361 	.area CSEG    (CODE)
                                   4362 	.area CONST   (CODE)
      002645                       4363 ___str_25:
      002645 0A                    4364 	.db 0x0a
      002646 0D                    4365 	.db 0x0d
      002647 20 52 45 53 55 4C 54  4366 	.ascii " RESULT-> param3<Mod>param2 * param1 = %d "
             2D 3E 20 70 61 72 61
             6D 33 3C 4D 6F 64 3E
             70 61 72 61 6D 32 20
             2A 20 70 61 72 61 6D
             31 20 3D 20 25 64 20
      002671 0A                    4367 	.db 0x0a
      002672 0D                    4368 	.db 0x0d
      002673 00                    4369 	.db 0x00
                                   4370 	.area CSEG    (CODE)
                                   4371 	.area CONST   (CODE)
      002674                       4372 ___str_26:
      002674 0A                    4373 	.db 0x0a
      002675 0D                    4374 	.db 0x0d
      002676 20 47 6F 69 6E 67 20  4375 	.ascii " Going back to main menu.. "
             62 61 63 6B 20 74 6F
             20 6D 61 69 6E 20 6D
             65 6E 75 2E 2E 20
      002691 0A                    4376 	.db 0x0a
      002692 0D                    4377 	.db 0x0d
      002693 00                    4378 	.db 0x00
                                   4379 	.area CSEG    (CODE)
                                   4380 	.area CONST   (CODE)
      002694                       4381 ___str_27:
      002694 42 75 66 66 65 72 20  4382 	.ascii "Buffer %d Freed ...."
             25 64 20 46 72 65 65
             64 20 2E 2E 2E 2E
      0026A8 0A                    4383 	.db 0x0a
      0026A9 0D                    4384 	.db 0x0d
      0026AA 00                    4385 	.db 0x00
                                   4386 	.area CSEG    (CODE)
                                   4387 	.area CONST   (CODE)
      0026AB                       4388 ___str_28:
      0026AB 4C 65 74 27 73 20 62  4389 	.ascii "Let's begin again.."
             65 67 69 6E 20 61 67
             61 69 6E 2E 2E
      0026BE 0A                    4390 	.db 0x0a
      0026BF 0D                    4391 	.db 0x0d
      0026C0 00                    4392 	.db 0x00
                                   4393 	.area CSEG    (CODE)
                                   4394 	.area CONST   (CODE)
      0026C1                       4395 ___str_29:
      0026C1 0A                    4396 	.db 0x0a
      0026C2 0D                    4397 	.db 0x0d
      0026C3 47 69 76 65 20 56 61  4398 	.ascii "Give Valid Buffer Number to delete(1-%d) in 3 digits"
             6C 69 64 20 42 75 66
             66 65 72 20 4E 75 6D
             62 65 72 20 74 6F 20
             64 65 6C 65 74 65 28
             31 2D 25 64 29 20 69
             6E 20 33 20 64 69 67
             69 74 73
      0026F7 0A                    4399 	.db 0x0a
      0026F8 0D                    4400 	.db 0x0d
      0026F9 00                    4401 	.db 0x00
                                   4402 	.area CSEG    (CODE)
                                   4403 	.area CONST   (CODE)
      0026FA                       4404 ___str_30:
      0026FA 42 75 66 66 65 72 20  4405 	.ascii "Buffer %d Successfully Deleted.. "
             25 64 20 53 75 63 63
             65 73 73 66 75 6C 6C
             79 20 44 65 6C 65 74
             65 64 2E 2E 20
      00271B 0A                    4406 	.db 0x0a
      00271C 0D                    4407 	.db 0x0d
      00271D 00                    4408 	.db 0x00
                                   4409 	.area CSEG    (CODE)
                                   4410 	.area CONST   (CODE)
      00271E                       4411 ___str_31:
      00271E 0A                    4412 	.db 0x0a
      00271F 0A                    4413 	.db 0x0a
      002720 0D                    4414 	.db 0x0d
      002721 5E 5E 5E 5E 5E 5E 5E  4415 	.ascii "^^^^^^^^^^^^^^^^^^^-PCA-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ "
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 2D 50
             43 41 2D 4D 45 4E 55
             2D 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 5E 20
      002759 0A                    4416 	.db 0x0a
      00275A 0A                    4417 	.db 0x0a
      00275B 0D                    4418 	.db 0x0d
      00275C 00                    4419 	.db 0x00
                                   4420 	.area CSEG    (CODE)
                                   4421 	.area CONST   (CODE)
      00275D                       4422 ___str_32:
      00275D 27 46 27 20 2D 3E 20  4423 	.ascii "'F' -> Falling Edge Capture Mode"
             46 61 6C 6C 69 6E 67
             20 45 64 67 65 20 43
             61 70 74 75 72 65 20
             4D 6F 64 65
      00277D 0A                    4424 	.db 0x0a
      00277E 0D                    4425 	.db 0x0d
      00277F 00                    4426 	.db 0x00
                                   4427 	.area CSEG    (CODE)
                                   4428 	.area CONST   (CODE)
      002780                       4429 ___str_33:
      002780 27 53 27 20 2D 3E 20  4430 	.ascii "'S' -> Software Timer Mode"
             53 6F 66 74 77 61 72
             65 20 54 69 6D 65 72
             20 4D 6F 64 65
      00279A 0A                    4431 	.db 0x0a
      00279B 0D                    4432 	.db 0x0d
      00279C 00                    4433 	.db 0x00
                                   4434 	.area CSEG    (CODE)
                                   4435 	.area CONST   (CODE)
      00279D                       4436 ___str_34:
      00279D 27 48 27 20 2D 3E 20  4437 	.ascii "'H' -> High Speed Output Mode"
             48 69 67 68 20 53 70
             65 65 64 20 4F 75 74
             70 75 74 20 4D 6F 64
             65
      0027BA 0A                    4438 	.db 0x0a
      0027BB 0D                    4439 	.db 0x0d
      0027BC 00                    4440 	.db 0x00
                                   4441 	.area CSEG    (CODE)
                                   4442 	.area CONST   (CODE)
      0027BD                       4443 ___str_35:
      0027BD 27 50 27 20 2D 3E 20  4444 	.ascii "'P' -> PWM Mode "
             50 57 4D 20 4D 6F 64
             65 20
      0027CD 0A                    4445 	.db 0x0a
      0027CE 0D                    4446 	.db 0x0d
      0027CF 00                    4447 	.db 0x00
                                   4448 	.area CSEG    (CODE)
                                   4449 	.area CONST   (CODE)
      0027D0                       4450 ___str_36:
      0027D0 27 57 27 20 2D 3E 20  4451 	.ascii "'W' -> Watchdog Timer Mode"
             57 61 74 63 68 64 6F
             67 20 54 69 6D 65 72
             20 4D 6F 64 65
      0027EA 0A                    4452 	.db 0x0a
      0027EB 0D                    4453 	.db 0x0d
      0027EC 00                    4454 	.db 0x00
                                   4455 	.area CSEG    (CODE)
                                   4456 	.area CONST   (CODE)
      0027ED                       4457 ___str_37:
      0027ED 27 49 27 20 2D 3E 20  4458 	.ascii "'I' -> Idle Mode with PWM"
             49 64 6C 65 20 4D 6F
             64 65 20 77 69 74 68
             20 50 57 4D
      002806 0A                    4459 	.db 0x0a
      002807 0D                    4460 	.db 0x0d
      002808 00                    4461 	.db 0x00
                                   4462 	.area CSEG    (CODE)
                                   4463 	.area CONST   (CODE)
      002809                       4464 ___str_38:
      002809 27 4C 27 20 2D 3E 20  4465 	.ascii "'L' -> Change Prescalar to lowest frequency"
             43 68 61 6E 67 65 20
             50 72 65 73 63 61 6C
             61 72 20 74 6F 20 6C
             6F 77 65 73 74 20 66
             72 65 71 75 65 6E 63
             79
      002834 0A                    4466 	.db 0x0a
      002835 0D                    4467 	.db 0x0d
      002836 00                    4468 	.db 0x00
                                   4469 	.area CSEG    (CODE)
                                   4470 	.area CONST   (CODE)
      002837                       4471 ___str_39:
      002837 27 44 27 20 2D 3E 20  4472 	.ascii "'D' -> Power Down Mode"
             50 6F 77 65 72 20 44
             6F 77 6E 20 4D 6F 64
             65
      00284D 0A                    4473 	.db 0x0a
      00284E 0A                    4474 	.db 0x0a
      00284F 0D                    4475 	.db 0x0d
      002850 00                    4476 	.db 0x00
                                   4477 	.area CSEG    (CODE)
                                   4478 	.area CONST   (CODE)
      002851                       4479 ___str_40:
      002851 27 4D 27 20 2D 3E 20  4480 	.ascii "'M' -> Go to Main Menu "
             47 6F 20 74 6F 20 4D
             61 69 6E 20 4D 65 6E
             75 20
      002868 0A                    4481 	.db 0x0a
      002869 0A                    4482 	.db 0x0a
      00286A 0D                    4483 	.db 0x0d
      00286B 00                    4484 	.db 0x00
                                   4485 	.area CSEG    (CODE)
                                   4486 	.area CONST   (CODE)
      00286C                       4487 ___str_41:
      00286C 0A                    4488 	.db 0x0a
      00286D 0A                    4489 	.db 0x0a
      00286E 0D                    4490 	.db 0x0d
      00286F 5E 5E 5E 5E 5E 5E 5E  4491 	.ascii "^^^^^^^^^^^^^^^^^^^-HEAP-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ "
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 2D 48
             45 41 50 2D 4D 45 4E
             55 2D 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             20
      0028A8 0A                    4492 	.db 0x0a
      0028A9 0A                    4493 	.db 0x0a
      0028AA 0D                    4494 	.db 0x0d
      0028AB 00                    4495 	.db 0x00
                                   4496 	.area CSEG    (CODE)
                                   4497 	.area CONST   (CODE)
      0028AC                       4498 ___str_42:
      0028AC 59 6F 75 20 63 61 6E  4499 	.ascii "You can enter characters or use commands from below "
             20 65 6E 74 65 72 20
             63 68 61 72 61 63 74
             65 72 73 20 6F 72 20
             75 73 65 20 63 6F 6D
             6D 61 6E 64 73 20 66
             72 6F 6D 20 62 65 6C
             6F 77 20
      0028E0 0A                    4500 	.db 0x0a
      0028E1 0D                    4501 	.db 0x0d
      0028E2 00                    4502 	.db 0x00
                                   4503 	.area CSEG    (CODE)
                                   4504 	.area CONST   (CODE)
      0028E3                       4505 ___str_43:
      0028E3 27 3F 27 20 2D 3E 20  4506 	.ascii "'?' -> Show heap status, dump & clear Buffer 0 "
             53 68 6F 77 20 68 65
             61 70 20 73 74 61 74
             75 73 2C 20 64 75 6D
             70 20 26 20 63 6C 65
             61 72 20 42 75 66 66
             65 72 20 30 20
      002912 0A                    4507 	.db 0x0a
      002913 0D                    4508 	.db 0x0d
      002914 00                    4509 	.db 0x00
                                   4510 	.area CSEG    (CODE)
                                   4511 	.area CONST   (CODE)
      002915                       4512 ___str_44:
      002915 27 2B 27 20 2D 3E 20  4513 	.ascii "'+' -> Add a new Buffer"
             41 64 64 20 61 20 6E
             65 77 20 42 75 66 66
             65 72
      00292C 0A                    4514 	.db 0x0a
      00292D 0D                    4515 	.db 0x0d
      00292E 00                    4516 	.db 0x00
                                   4517 	.area CSEG    (CODE)
                                   4518 	.area CONST   (CODE)
      00292F                       4519 ___str_45:
      00292F 27 2D 27 20 2D 3E 20  4520 	.ascii "'-' -> Delete existing Buffer"
             44 65 6C 65 74 65 20
             65 78 69 73 74 69 6E
             67 20 42 75 66 66 65
             72
      00294C 0A                    4521 	.db 0x0a
      00294D 0D                    4522 	.db 0x0d
      00294E 00                    4523 	.db 0x00
                                   4524 	.area CSEG    (CODE)
                                   4525 	.area CONST   (CODE)
      00294F                       4526 ___str_46:
      00294F 27 3D 27 20 2D 3E 20  4527 	.ascii "'=' -> Dump Buffer 0 in hex"
             44 75 6D 70 20 42 75
             66 66 65 72 20 30 20
             69 6E 20 68 65 78
      00296A 0A                    4528 	.db 0x0a
      00296B 0D                    4529 	.db 0x0d
      00296C 00                    4530 	.db 0x00
                                   4531 	.area CSEG    (CODE)
                                   4532 	.area CONST   (CODE)
      00296D                       4533 ___str_47:
      00296D 27 40 27 20 2D 3E 20  4534 	.ascii "'@' -> Free all Heap & begin again"
             46 72 65 65 20 61 6C
             6C 20 48 65 61 70 20
             26 20 62 65 67 69 6E
             20 61 67 61 69 6E
      00298F 0A                    4535 	.db 0x0a
      002990 0A                    4536 	.db 0x0a
      002991 0D                    4537 	.db 0x0d
      002992 00                    4538 	.db 0x00
                                   4539 	.area CSEG    (CODE)
                                   4540 	.area CONST   (CODE)
      002993                       4541 ___str_48:
      002993 0A                    4542 	.db 0x0a
      002994 0D                    4543 	.db 0x0d
      002995 47 69 76 65 20 56 61  4544 	.ascii "Give Valid Buffer Size(030-300):"
             6C 69 64 20 42 75 66
             66 65 72 20 53 69 7A
             65 28 30 33 30 2D 33
             30 30 29 3A
      0029B5 00                    4545 	.db 0x00
                                   4546 	.area CSEG    (CODE)
                                   4547 	.area CONST   (CODE)
      0029B6                       4548 ___str_49:
      0029B6 46 61 69 6C 65 64 2C  4549 	.ascii "Failed, give smaller buffer"
             20 67 69 76 65 20 73
             6D 61 6C 6C 65 72 20
             62 75 66 66 65 72
      0029D1 0A                    4550 	.db 0x0a
      0029D2 0D                    4551 	.db 0x0d
      0029D3 00                    4552 	.db 0x00
                                   4553 	.area CSEG    (CODE)
                                   4554 	.area CONST   (CODE)
      0029D4                       4555 ___str_50:
      0029D4 0A                    4556 	.db 0x0a
      0029D5 0A                    4557 	.db 0x0a
      0029D6 0D                    4558 	.db 0x0d
      0029D7 23 23 23 23 53 55 43  4559 	.ascii "####SUCCESS, BUFFER Created####"
             43 45 53 53 2C 20 42
             55 46 46 45 52 20 43
             72 65 61 74 65 64 23
             23 23 23
      0029F6 0A                    4560 	.db 0x0a
      0029F7 0A                    4561 	.db 0x0a
      0029F8 0D                    4562 	.db 0x0d
      0029F9 00                    4563 	.db 0x00
                                   4564 	.area CSEG    (CODE)
                                   4565 	.area CONST   (CODE)
      0029FA                       4566 ___str_51:
      0029FA 4E 6F 20 48 65 61 70  4567 	.ascii "No Heap Memory Left, Delete some buffers..."
             20 4D 65 6D 6F 72 79
             20 4C 65 66 74 2C 20
             44 65 6C 65 74 65 20
             73 6F 6D 65 20 62 75
             66 66 65 72 73 2E 2E
             2E
      002A25 0A                    4568 	.db 0x0a
      002A26 0D                    4569 	.db 0x0d
      002A27 00                    4570 	.db 0x00
                                   4571 	.area CSEG    (CODE)
                                   4572 	.area CONST   (CODE)
      002A28                       4573 ___str_52:
      002A28 0A                    4574 	.db 0x0a
      002A29 0D                    4575 	.db 0x0d
      002A2A 47 69 76 65 20 56 61  4576 	.ascii "Give Valid Initial Buffer Size(0048-4800):"
             6C 69 64 20 49 6E 69
             74 69 61 6C 20 42 75
             66 66 65 72 20 53 69
             7A 65 28 30 30 34 38
             2D 34 38 30 30 29 3A
      002A54 00                    4577 	.db 0x00
                                   4578 	.area CSEG    (CODE)
                                   4579 	.area CONST   (CODE)
      002A55                       4580 ___str_53:
      002A55 0A                    4581 	.db 0x0a
      002A56 0D                    4582 	.db 0x0d
      002A57 23 23 23 23 46 41 49  4583 	.ascii "####FAIL, Please give a smaller buffer size####"
             4C 2C 20 50 6C 65 61
             73 65 20 67 69 76 65
             20 61 20 73 6D 61 6C
             6C 65 72 20 62 75 66
             66 65 72 20 73 69 7A
             65 23 23 23 23
      002A86 0A                    4584 	.db 0x0a
      002A87 0A                    4585 	.db 0x0a
      002A88 0D                    4586 	.db 0x0d
      002A89 00                    4587 	.db 0x00
                                   4588 	.area CSEG    (CODE)
                                   4589 	.area CONST   (CODE)
      002A8A                       4590 ___str_54:
      002A8A 0A                    4591 	.db 0x0a
      002A8B 0A                    4592 	.db 0x0a
      002A8C 0D                    4593 	.db 0x0d
      002A8D 23 23 23 23 53 55 43  4594 	.ascii "####SUCCESS, INITIAL BUFFERS Created####"
             43 45 53 53 2C 20 49
             4E 49 54 49 41 4C 20
             42 55 46 46 45 52 53
             20 43 72 65 61 74 65
             64 23 23 23 23
      002AB5 0A                    4595 	.db 0x0a
      002AB6 0A                    4596 	.db 0x0a
      002AB7 0D                    4597 	.db 0x0d
      002AB8 00                    4598 	.db 0x00
                                   4599 	.area CSEG    (CODE)
                                   4600 	.area CONST   (CODE)
      002AB9                       4601 ___str_55:
      002AB9 0A                    4602 	.db 0x0a
      002ABA 0A                    4603 	.db 0x0a
      002ABB 0D                    4604 	.db 0x0d
      002ABC 2A 2A 2A 2A 2A 2A 2A  4605 	.ascii "***********Buffer-0-Contents*********** "
             2A 2A 2A 2A 42 75 66
             66 65 72 2D 30 2D 43
             6F 6E 74 65 6E 74 73
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 20
      002AE4 0A                    4606 	.db 0x0a
      002AE5 0D                    4607 	.db 0x0d
      002AE6 00                    4608 	.db 0x00
                                   4609 	.area CSEG    (CODE)
                                   4610 	.area CONST   (CODE)
      002AE7                       4611 ___str_56:
      002AE7 0A                    4612 	.db 0x0a
      002AE8 0D                    4613 	.db 0x0d
      002AE9 00                    4614 	.db 0x00
                                   4615 	.area CSEG    (CODE)
                                   4616 	.area CONST   (CODE)
      002AEA                       4617 ___str_57:
      002AEA 0A                    4618 	.db 0x0a
      002AEB 0A                    4619 	.db 0x0a
      002AEC 0D                    4620 	.db 0x0d
      002AED 00                    4621 	.db 0x00
                                   4622 	.area CSEG    (CODE)
                                   4623 	.area CONST   (CODE)
      002AEE                       4624 ___str_58:
      002AEE 42 75 66 66 65 72 30  4625 	.ascii "Buffer0 is Empty...."
             20 69 73 20 45 6D 70
             74 79 2E 2E 2E 2E
      002B02 0A                    4626 	.db 0x0a
      002B03 0D                    4627 	.db 0x0d
      002B04 00                    4628 	.db 0x00
                                   4629 	.area CSEG    (CODE)
                                   4630 	.area CONST   (CODE)
      002B05                       4631 ___str_59:
      002B05 0A                    4632 	.db 0x0a
      002B06 0D                    4633 	.db 0x0d
      002B07 2D 2D 2D 2D 2D 2D 2D  4634 	.ascii "-------------------------HEXDUMP----------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 48 45 58
             44 55 4D 50 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D
      002B43 2D 2D 2D 2D           4635 	.ascii "----"
      002B47 00                    4636 	.db 0x00
                                   4637 	.area CSEG    (CODE)
                                   4638 	.area CONST   (CODE)
      002B48                       4639 ___str_60:
      002B48 0A                    4640 	.db 0x0a
      002B49 0D                    4641 	.db 0x0d
      002B4A 20 20 20 20 41 44 44  4642 	.ascii "    ADDR: +0 +1 +2 +3 +4 +5 +6 +7 +8 +9 +A +B +C +D +E +F "
             52 3A 20 2B 30 20 2B
             31 20 2B 32 20 2B 33
             20 2B 34 20 2B 35 20
             2B 36 20 2B 37 20 2B
             38 20 2B 39 20 2B 41
             20 2B 42 20 2B 43 20
             2B 44 20 2B 45 20 2B
             46 20
      002B84 0A                    4643 	.db 0x0a
      002B85 0D                    4644 	.db 0x0d
      002B86 00                    4645 	.db 0x00
                                   4646 	.area CSEG    (CODE)
                                   4647 	.area CONST   (CODE)
      002B87                       4648 ___str_61:
      002B87 0A                    4649 	.db 0x0a
      002B88 0D                    4650 	.db 0x0d
      002B89 25 70 3A 20           4651 	.ascii "%p: "
      002B8D 00                    4652 	.db 0x00
                                   4653 	.area CSEG    (CODE)
                                   4654 	.area CONST   (CODE)
      002B8E                       4655 ___str_62:
      002B8E 25 78 20              4656 	.ascii "%x "
      002B91 00                    4657 	.db 0x00
                                   4658 	.area CSEG    (CODE)
                                   4659 	.area CONST   (CODE)
      002B92                       4660 ___str_63:
      002B92 42 75 66 66 65 72 20  4661 	.ascii "Buffer 0 is empty..."
             30 20 69 73 20 65 6D
             70 74 79 2E 2E 2E
      002BA6 0A                    4662 	.db 0x0a
      002BA7 0D                    4663 	.db 0x0d
      002BA8 00                    4664 	.db 0x00
                                   4665 	.area CSEG    (CODE)
                                   4666 	.area CONST   (CODE)
      002BA9                       4667 ___str_64:
      002BA9 0A                    4668 	.db 0x0a
      002BAA 0D                    4669 	.db 0x0d
      002BAB 2A 2A 2A 2A 2A 2A 2A  4670 	.ascii "****************HEAP*STATS*************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 48 45 41 50 2A
             53 54 41 54 53 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A
      002BD2 0A                    4671 	.db 0x0a
      002BD3 0D                    4672 	.db 0x0d
      002BD4 00                    4673 	.db 0x00
                                   4674 	.area CSEG    (CODE)
                                   4675 	.area CONST   (CODE)
      002BD5                       4676 ___str_65:
      002BD5 54 6F 74 61 6C 20 48  4677 	.ascii "Total Heap Size: %d "
             65 61 70 20 53 69 7A
             65 3A 20 25 64 20
      002BE9 0A                    4678 	.db 0x0a
      002BEA 0D                    4679 	.db 0x0d
      002BEB 00                    4680 	.db 0x00
                                   4681 	.area CSEG    (CODE)
                                   4682 	.area CONST   (CODE)
      002BEC                       4683 ___str_66:
      002BEC 41 6C 6C 6F 63 61 74  4684 	.ascii "Allocated Heap Size: %d "
             65 64 20 48 65 61 70
             20 53 69 7A 65 3A 20
             25 64 20
      002C04 0A                    4685 	.db 0x0a
      002C05 0D                    4686 	.db 0x0d
      002C06 00                    4687 	.db 0x00
                                   4688 	.area CSEG    (CODE)
                                   4689 	.area CONST   (CODE)
      002C07                       4690 ___str_67:
      002C07 41 6C 6C 20 43 68 61  4691 	.ascii "All Chars: %d "
             72 73 3A 20 25 64 20
      002C15 0A                    4692 	.db 0x0a
      002C16 0D                    4693 	.db 0x0d
      002C17 00                    4694 	.db 0x00
                                   4695 	.area CSEG    (CODE)
                                   4696 	.area CONST   (CODE)
      002C18                       4697 ___str_68:
      002C18 53 74 6F 72 61 67 65  4698 	.ascii "Storage Chars: %d "
             20 43 68 61 72 73 3A
             20 25 64 20
      002C2A 0A                    4699 	.db 0x0a
      002C2B 0D                    4700 	.db 0x0d
      002C2C 00                    4701 	.db 0x00
                                   4702 	.area CSEG    (CODE)
                                   4703 	.area CONST   (CODE)
      002C2D                       4704 ___str_69:
      002C2D 54 6F 74 61 6C 20 42  4705 	.ascii "Total Buffers: %d "
             75 66 66 65 72 73 3A
             20 25 64 20
      002C3F 0A                    4706 	.db 0x0a
      002C40 0D                    4707 	.db 0x0d
      002C41 00                    4708 	.db 0x00
                                   4709 	.area CSEG    (CODE)
                                   4710 	.area CONST   (CODE)
      002C42                       4711 ___str_70:
      002C42 2A 2A 2A 2A 2A 2A 2A  4712 	.ascii "****************BUFFER*%d***************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 42 55 46 46 45
             52 2A 25 64 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A
      002C6A 0A                    4713 	.db 0x0a
      002C6B 0D                    4714 	.db 0x0d
      002C6C 00                    4715 	.db 0x00
                                   4716 	.area CSEG    (CODE)
                                   4717 	.area CONST   (CODE)
      002C6D                       4718 ___str_71:
      002C6D 42 75 66 66 65 72 23  4719 	.ascii "Buffer#: %d "
             3A 20 25 64 20
      002C79 0A                    4720 	.db 0x0a
      002C7A 0D                    4721 	.db 0x0d
      002C7B 00                    4722 	.db 0x00
                                   4723 	.area CSEG    (CODE)
                                   4724 	.area CONST   (CODE)
      002C7C                       4725 ___str_72:
      002C7C 42 75 66 66 65 72 53  4726 	.ascii "BufferStart: %p "
             74 61 72 74 3A 20 25
             70 20
      002C8C 0A                    4727 	.db 0x0a
      002C8D 0D                    4728 	.db 0x0d
      002C8E 00                    4729 	.db 0x00
                                   4730 	.area CSEG    (CODE)
                                   4731 	.area CONST   (CODE)
      002C8F                       4732 ___str_73:
      002C8F 42 75 66 66 65 72 45  4733 	.ascii "BufferEnd: %p "
             6E 64 3A 20 25 70 20
      002C9D 0A                    4734 	.db 0x0a
      002C9E 0D                    4735 	.db 0x0d
      002C9F 00                    4736 	.db 0x00
                                   4737 	.area CSEG    (CODE)
                                   4738 	.area CONST   (CODE)
      002CA0                       4739 ___str_74:
      002CA0 42 75 66 66 65 72 53  4740 	.ascii "BufferSize: %d "
             69 7A 65 3A 20 25 64
             20
      002CAF 0A                    4741 	.db 0x0a
      002CB0 0D                    4742 	.db 0x0d
      002CB1 00                    4743 	.db 0x00
                                   4744 	.area CSEG    (CODE)
                                   4745 	.area CONST   (CODE)
      002CB2                       4746 ___str_75:
      002CB2 54 6F 74 61 6C 55 73  4747 	.ascii "TotalUsed: %d "
             65 64 3A 20 25 64 20
      002CC0 0A                    4748 	.db 0x0a
      002CC1 0D                    4749 	.db 0x0d
      002CC2 00                    4750 	.db 0x00
                                   4751 	.area CSEG    (CODE)
                                   4752 	.area CONST   (CODE)
      002CC3                       4753 ___str_76:
      002CC3 2A 2A 2A 2A 2A 2A 2A  4754 	.ascii "***************************************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A
      002CEA 0A                    4755 	.db 0x0a
      002CEB 0D                    4756 	.db 0x0d
      002CEC 00                    4757 	.db 0x00
                                   4758 	.area CSEG    (CODE)
                                   4759 	.area CONST   (CODE)
      002CED                       4760 ___str_77:
      002CED 45 52 52 2C 4E 75 6D  4761 	.ascii "ERR,Numbers ONLY!"
             62 65 72 73 20 4F 4E
             4C 59 21
      002CFE 0A                    4762 	.db 0x0a
      002CFF 0D                    4763 	.db 0x0d
      002D00 00                    4764 	.db 0x00
                                   4765 	.area CSEG    (CODE)
                                   4766 	.area XINIT   (CODE)
      002D0E                       4767 __xinit__global_var_test:
      002D0E 02                    4768 	.db #0x02	; 2
      002D0F                       4769 __xinit__watchdog_flag:
      002D0F 00                    4770 	.db #0x00	; 0
                                   4771 	.area CABS    (ABS,CODE)
