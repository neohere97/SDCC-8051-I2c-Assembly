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
                                     15 	.globl _i2c_read_val
                                     16 	.globl _i2c_read_init
                                     17 	.globl _i2c_write_val
                                     18 	.globl _i2c_addr
                                     19 	.globl _i2c_write_init
                                     20 	.globl _i2c_stop
                                     21 	.globl _i2c_init
                                     22 	.globl _asmtest
                                     23 	.globl _printf
                                     24 	.globl _free
                                     25 	.globl _malloc
                                     26 	.globl _TF1
                                     27 	.globl _TR1
                                     28 	.globl _TF0
                                     29 	.globl _TR0
                                     30 	.globl _IE1
                                     31 	.globl _IT1
                                     32 	.globl _IE0
                                     33 	.globl _IT0
                                     34 	.globl _SM0
                                     35 	.globl _SM1
                                     36 	.globl _SM2
                                     37 	.globl _REN
                                     38 	.globl _TB8
                                     39 	.globl _RB8
                                     40 	.globl _TI
                                     41 	.globl _RI
                                     42 	.globl _CY
                                     43 	.globl _AC
                                     44 	.globl _F0
                                     45 	.globl _RS1
                                     46 	.globl _RS0
                                     47 	.globl _OV
                                     48 	.globl _F1
                                     49 	.globl _P
                                     50 	.globl _RD
                                     51 	.globl _WR
                                     52 	.globl _T1
                                     53 	.globl _T0
                                     54 	.globl _INT1
                                     55 	.globl _INT0
                                     56 	.globl _TXD0
                                     57 	.globl _TXD
                                     58 	.globl _RXD0
                                     59 	.globl _RXD
                                     60 	.globl _P3_7
                                     61 	.globl _P3_6
                                     62 	.globl _P3_5
                                     63 	.globl _P3_4
                                     64 	.globl _P3_3
                                     65 	.globl _P3_2
                                     66 	.globl _P3_1
                                     67 	.globl _P3_0
                                     68 	.globl _P2_7
                                     69 	.globl _P2_6
                                     70 	.globl _P2_5
                                     71 	.globl _P2_4
                                     72 	.globl _P2_3
                                     73 	.globl _P2_2
                                     74 	.globl _P2_1
                                     75 	.globl _P2_0
                                     76 	.globl _P1_7
                                     77 	.globl _P1_6
                                     78 	.globl _P1_5
                                     79 	.globl _P1_4
                                     80 	.globl _P1_3
                                     81 	.globl _P1_2
                                     82 	.globl _P1_1
                                     83 	.globl _P1_0
                                     84 	.globl _P0_7
                                     85 	.globl _P0_6
                                     86 	.globl _P0_5
                                     87 	.globl _P0_4
                                     88 	.globl _P0_3
                                     89 	.globl _P0_2
                                     90 	.globl _P0_1
                                     91 	.globl _P0_0
                                     92 	.globl _PS
                                     93 	.globl _PT1
                                     94 	.globl _PX1
                                     95 	.globl _PT0
                                     96 	.globl _PX0
                                     97 	.globl _EA
                                     98 	.globl _ES
                                     99 	.globl _ET1
                                    100 	.globl _EX1
                                    101 	.globl _ET0
                                    102 	.globl _EX0
                                    103 	.globl _BREG_F7
                                    104 	.globl _BREG_F6
                                    105 	.globl _BREG_F5
                                    106 	.globl _BREG_F4
                                    107 	.globl _BREG_F3
                                    108 	.globl _BREG_F2
                                    109 	.globl _BREG_F1
                                    110 	.globl _BREG_F0
                                    111 	.globl _P5_7
                                    112 	.globl _P5_6
                                    113 	.globl _P5_5
                                    114 	.globl _P5_4
                                    115 	.globl _P5_3
                                    116 	.globl _P5_2
                                    117 	.globl _P5_1
                                    118 	.globl _P5_0
                                    119 	.globl _P4_7
                                    120 	.globl _P4_6
                                    121 	.globl _P4_5
                                    122 	.globl _P4_4
                                    123 	.globl _P4_3
                                    124 	.globl _P4_2
                                    125 	.globl _P4_1
                                    126 	.globl _P4_0
                                    127 	.globl _PX0L
                                    128 	.globl _PT0L
                                    129 	.globl _PX1L
                                    130 	.globl _PT1L
                                    131 	.globl _PSL
                                    132 	.globl _PT2L
                                    133 	.globl _PPCL
                                    134 	.globl _EC
                                    135 	.globl _CCF0
                                    136 	.globl _CCF1
                                    137 	.globl _CCF2
                                    138 	.globl _CCF3
                                    139 	.globl _CCF4
                                    140 	.globl _CR
                                    141 	.globl _CF
                                    142 	.globl _TF2
                                    143 	.globl _EXF2
                                    144 	.globl _RCLK
                                    145 	.globl _TCLK
                                    146 	.globl _EXEN2
                                    147 	.globl _TR2
                                    148 	.globl _C_T2
                                    149 	.globl _CP_RL2
                                    150 	.globl _T2CON_7
                                    151 	.globl _T2CON_6
                                    152 	.globl _T2CON_5
                                    153 	.globl _T2CON_4
                                    154 	.globl _T2CON_3
                                    155 	.globl _T2CON_2
                                    156 	.globl _T2CON_1
                                    157 	.globl _T2CON_0
                                    158 	.globl _PT2
                                    159 	.globl _ET2
                                    160 	.globl __AUXR
                                    161 	.globl _TMOD
                                    162 	.globl _TL1
                                    163 	.globl _TL0
                                    164 	.globl _TH1
                                    165 	.globl _TH0
                                    166 	.globl _TCON
                                    167 	.globl _SP
                                    168 	.globl _SCON
                                    169 	.globl _SBUF0
                                    170 	.globl _SBUF
                                    171 	.globl _PSW
                                    172 	.globl _PCON
                                    173 	.globl _P3
                                    174 	.globl _P2
                                    175 	.globl _P1
                                    176 	.globl _P0
                                    177 	.globl _IP
                                    178 	.globl _IE
                                    179 	.globl _DP0L
                                    180 	.globl _DPL
                                    181 	.globl _DP0H
                                    182 	.globl _DPH
                                    183 	.globl _B
                                    184 	.globl _ACC
                                    185 	.globl _EECON
                                    186 	.globl _KBF
                                    187 	.globl _KBE
                                    188 	.globl _KBLS
                                    189 	.globl _BRL
                                    190 	.globl _BDRCON
                                    191 	.globl _T2MOD
                                    192 	.globl _SPDAT
                                    193 	.globl _SPSTA
                                    194 	.globl _SPCON
                                    195 	.globl _SADEN
                                    196 	.globl _SADDR
                                    197 	.globl _WDTPRG
                                    198 	.globl _WDTRST
                                    199 	.globl _P5
                                    200 	.globl _P4
                                    201 	.globl _IPH1
                                    202 	.globl _IPL1
                                    203 	.globl _IPH0
                                    204 	.globl _IPL0
                                    205 	.globl _IEN1
                                    206 	.globl _IEN0
                                    207 	.globl _CMOD
                                    208 	.globl _CL
                                    209 	.globl _CH
                                    210 	.globl _CCON
                                    211 	.globl _CCAPM4
                                    212 	.globl _CCAPM3
                                    213 	.globl _CCAPM2
                                    214 	.globl _CCAPM1
                                    215 	.globl _CCAPM0
                                    216 	.globl _CCAP4L
                                    217 	.globl _CCAP3L
                                    218 	.globl _CCAP2L
                                    219 	.globl _CCAP1L
                                    220 	.globl _CCAP0L
                                    221 	.globl _CCAP4H
                                    222 	.globl _CCAP3H
                                    223 	.globl _CCAP2H
                                    224 	.globl _CCAP1H
                                    225 	.globl _CCAP0H
                                    226 	.globl _CKCON1
                                    227 	.globl _CKCON0
                                    228 	.globl _CKRL
                                    229 	.globl _AUXR1
                                    230 	.globl _AUXR
                                    231 	.globl _TH2
                                    232 	.globl _TL2
                                    233 	.globl _RCAP2H
                                    234 	.globl _RCAP2L
                                    235 	.globl _T2CON
                                    236 	.globl _watchdog_flag
                                    237 	.globl _global_var_test
                                    238 	.globl _buffers_array
                                    239 	.globl _program_stats
                                    240 	.globl _DEBUG_LOC
                                    241 	.globl _user_interface_heap
                                    242 	.globl _user_interface_PCA
                                    243 	.globl _pca_falling_edge
                                    244 	.globl _pca_software_timer
                                    245 	.globl _pca_high_speed
                                    246 	.globl _pca_pwm
                                    247 	.globl _pca_watchdog
                                    248 	.globl _hardware_watchdog
                                    249 	.globl _pca_idle
                                    250 	.globl _pca_pdown
                                    251 	.globl _fclk_lowest
                                    252 	.globl _main_menu
                                    253 	.globl _i2c_testasm
                                    254 	.globl _asm_clang
                                    255 	.globl _at_clear_all_buffers
                                    256 	.globl _delete_buffer
                                    257 	.globl _print_pca_menu
                                    258 	.globl _print_heap_menu
                                    259 	.globl _create_new_buffer
                                    260 	.globl _create_initial_buffers
                                    261 	.globl _enter_chars
                                    262 	.globl _dump_buff_zero_ascii
                                    263 	.globl _dump_buff_zero_hex
                                    264 	.globl _print_heap_stats
                                    265 	.globl _print_all_buffers
                                    266 	.globl _get_number
                                    267 	.globl _get_num_helper
                                    268 	.globl _putchar
                                    269 	.globl _getchar
                                    270 	.globl _dataout
                                    271 	.globl _asm_call
                                    272 ;--------------------------------------------------------
                                    273 ; special function registers
                                    274 ;--------------------------------------------------------
                                    275 	.area RSEG    (ABS,DATA)
      000000                        276 	.org 0x0000
                           0000C8   277 _T2CON	=	0x00c8
                           0000CA   278 _RCAP2L	=	0x00ca
                           0000CB   279 _RCAP2H	=	0x00cb
                           0000CC   280 _TL2	=	0x00cc
                           0000CD   281 _TH2	=	0x00cd
                           00008E   282 _AUXR	=	0x008e
                           0000A2   283 _AUXR1	=	0x00a2
                           000097   284 _CKRL	=	0x0097
                           00008F   285 _CKCON0	=	0x008f
                           0000AF   286 _CKCON1	=	0x00af
                           0000FA   287 _CCAP0H	=	0x00fa
                           0000FB   288 _CCAP1H	=	0x00fb
                           0000FC   289 _CCAP2H	=	0x00fc
                           0000FD   290 _CCAP3H	=	0x00fd
                           0000FE   291 _CCAP4H	=	0x00fe
                           0000EA   292 _CCAP0L	=	0x00ea
                           0000EB   293 _CCAP1L	=	0x00eb
                           0000EC   294 _CCAP2L	=	0x00ec
                           0000ED   295 _CCAP3L	=	0x00ed
                           0000EE   296 _CCAP4L	=	0x00ee
                           0000DA   297 _CCAPM0	=	0x00da
                           0000DB   298 _CCAPM1	=	0x00db
                           0000DC   299 _CCAPM2	=	0x00dc
                           0000DD   300 _CCAPM3	=	0x00dd
                           0000DE   301 _CCAPM4	=	0x00de
                           0000D8   302 _CCON	=	0x00d8
                           0000F9   303 _CH	=	0x00f9
                           0000E9   304 _CL	=	0x00e9
                           0000D9   305 _CMOD	=	0x00d9
                           0000A8   306 _IEN0	=	0x00a8
                           0000B1   307 _IEN1	=	0x00b1
                           0000B8   308 _IPL0	=	0x00b8
                           0000B7   309 _IPH0	=	0x00b7
                           0000B2   310 _IPL1	=	0x00b2
                           0000B3   311 _IPH1	=	0x00b3
                           0000C0   312 _P4	=	0x00c0
                           0000E8   313 _P5	=	0x00e8
                           0000A6   314 _WDTRST	=	0x00a6
                           0000A7   315 _WDTPRG	=	0x00a7
                           0000A9   316 _SADDR	=	0x00a9
                           0000B9   317 _SADEN	=	0x00b9
                           0000C3   318 _SPCON	=	0x00c3
                           0000C4   319 _SPSTA	=	0x00c4
                           0000C5   320 _SPDAT	=	0x00c5
                           0000C9   321 _T2MOD	=	0x00c9
                           00009B   322 _BDRCON	=	0x009b
                           00009A   323 _BRL	=	0x009a
                           00009C   324 _KBLS	=	0x009c
                           00009D   325 _KBE	=	0x009d
                           00009E   326 _KBF	=	0x009e
                           0000D2   327 _EECON	=	0x00d2
                           0000E0   328 _ACC	=	0x00e0
                           0000F0   329 _B	=	0x00f0
                           000083   330 _DPH	=	0x0083
                           000083   331 _DP0H	=	0x0083
                           000082   332 _DPL	=	0x0082
                           000082   333 _DP0L	=	0x0082
                           0000A8   334 _IE	=	0x00a8
                           0000B8   335 _IP	=	0x00b8
                           000080   336 _P0	=	0x0080
                           000090   337 _P1	=	0x0090
                           0000A0   338 _P2	=	0x00a0
                           0000B0   339 _P3	=	0x00b0
                           000087   340 _PCON	=	0x0087
                           0000D0   341 _PSW	=	0x00d0
                           000099   342 _SBUF	=	0x0099
                           000099   343 _SBUF0	=	0x0099
                           000098   344 _SCON	=	0x0098
                           000081   345 _SP	=	0x0081
                           000088   346 _TCON	=	0x0088
                           00008C   347 _TH0	=	0x008c
                           00008D   348 _TH1	=	0x008d
                           00008A   349 _TL0	=	0x008a
                           00008B   350 _TL1	=	0x008b
                           000089   351 _TMOD	=	0x0089
                           00008E   352 __AUXR	=	0x008e
                                    353 ;--------------------------------------------------------
                                    354 ; special function bits
                                    355 ;--------------------------------------------------------
                                    356 	.area RSEG    (ABS,DATA)
      000000                        357 	.org 0x0000
                           0000AD   358 _ET2	=	0x00ad
                           0000BD   359 _PT2	=	0x00bd
                           0000C8   360 _T2CON_0	=	0x00c8
                           0000C9   361 _T2CON_1	=	0x00c9
                           0000CA   362 _T2CON_2	=	0x00ca
                           0000CB   363 _T2CON_3	=	0x00cb
                           0000CC   364 _T2CON_4	=	0x00cc
                           0000CD   365 _T2CON_5	=	0x00cd
                           0000CE   366 _T2CON_6	=	0x00ce
                           0000CF   367 _T2CON_7	=	0x00cf
                           0000C8   368 _CP_RL2	=	0x00c8
                           0000C9   369 _C_T2	=	0x00c9
                           0000CA   370 _TR2	=	0x00ca
                           0000CB   371 _EXEN2	=	0x00cb
                           0000CC   372 _TCLK	=	0x00cc
                           0000CD   373 _RCLK	=	0x00cd
                           0000CE   374 _EXF2	=	0x00ce
                           0000CF   375 _TF2	=	0x00cf
                           0000DF   376 _CF	=	0x00df
                           0000DE   377 _CR	=	0x00de
                           0000DC   378 _CCF4	=	0x00dc
                           0000DB   379 _CCF3	=	0x00db
                           0000DA   380 _CCF2	=	0x00da
                           0000D9   381 _CCF1	=	0x00d9
                           0000D8   382 _CCF0	=	0x00d8
                           0000AE   383 _EC	=	0x00ae
                           0000BE   384 _PPCL	=	0x00be
                           0000BD   385 _PT2L	=	0x00bd
                           0000BC   386 _PSL	=	0x00bc
                           0000BB   387 _PT1L	=	0x00bb
                           0000BA   388 _PX1L	=	0x00ba
                           0000B9   389 _PT0L	=	0x00b9
                           0000B8   390 _PX0L	=	0x00b8
                           0000C0   391 _P4_0	=	0x00c0
                           0000C1   392 _P4_1	=	0x00c1
                           0000C2   393 _P4_2	=	0x00c2
                           0000C3   394 _P4_3	=	0x00c3
                           0000C4   395 _P4_4	=	0x00c4
                           0000C5   396 _P4_5	=	0x00c5
                           0000C6   397 _P4_6	=	0x00c6
                           0000C7   398 _P4_7	=	0x00c7
                           0000E8   399 _P5_0	=	0x00e8
                           0000E9   400 _P5_1	=	0x00e9
                           0000EA   401 _P5_2	=	0x00ea
                           0000EB   402 _P5_3	=	0x00eb
                           0000EC   403 _P5_4	=	0x00ec
                           0000ED   404 _P5_5	=	0x00ed
                           0000EE   405 _P5_6	=	0x00ee
                           0000EF   406 _P5_7	=	0x00ef
                           0000F0   407 _BREG_F0	=	0x00f0
                           0000F1   408 _BREG_F1	=	0x00f1
                           0000F2   409 _BREG_F2	=	0x00f2
                           0000F3   410 _BREG_F3	=	0x00f3
                           0000F4   411 _BREG_F4	=	0x00f4
                           0000F5   412 _BREG_F5	=	0x00f5
                           0000F6   413 _BREG_F6	=	0x00f6
                           0000F7   414 _BREG_F7	=	0x00f7
                           0000A8   415 _EX0	=	0x00a8
                           0000A9   416 _ET0	=	0x00a9
                           0000AA   417 _EX1	=	0x00aa
                           0000AB   418 _ET1	=	0x00ab
                           0000AC   419 _ES	=	0x00ac
                           0000AF   420 _EA	=	0x00af
                           0000B8   421 _PX0	=	0x00b8
                           0000B9   422 _PT0	=	0x00b9
                           0000BA   423 _PX1	=	0x00ba
                           0000BB   424 _PT1	=	0x00bb
                           0000BC   425 _PS	=	0x00bc
                           000080   426 _P0_0	=	0x0080
                           000081   427 _P0_1	=	0x0081
                           000082   428 _P0_2	=	0x0082
                           000083   429 _P0_3	=	0x0083
                           000084   430 _P0_4	=	0x0084
                           000085   431 _P0_5	=	0x0085
                           000086   432 _P0_6	=	0x0086
                           000087   433 _P0_7	=	0x0087
                           000090   434 _P1_0	=	0x0090
                           000091   435 _P1_1	=	0x0091
                           000092   436 _P1_2	=	0x0092
                           000093   437 _P1_3	=	0x0093
                           000094   438 _P1_4	=	0x0094
                           000095   439 _P1_5	=	0x0095
                           000096   440 _P1_6	=	0x0096
                           000097   441 _P1_7	=	0x0097
                           0000A0   442 _P2_0	=	0x00a0
                           0000A1   443 _P2_1	=	0x00a1
                           0000A2   444 _P2_2	=	0x00a2
                           0000A3   445 _P2_3	=	0x00a3
                           0000A4   446 _P2_4	=	0x00a4
                           0000A5   447 _P2_5	=	0x00a5
                           0000A6   448 _P2_6	=	0x00a6
                           0000A7   449 _P2_7	=	0x00a7
                           0000B0   450 _P3_0	=	0x00b0
                           0000B1   451 _P3_1	=	0x00b1
                           0000B2   452 _P3_2	=	0x00b2
                           0000B3   453 _P3_3	=	0x00b3
                           0000B4   454 _P3_4	=	0x00b4
                           0000B5   455 _P3_5	=	0x00b5
                           0000B6   456 _P3_6	=	0x00b6
                           0000B7   457 _P3_7	=	0x00b7
                           0000B0   458 _RXD	=	0x00b0
                           0000B0   459 _RXD0	=	0x00b0
                           0000B1   460 _TXD	=	0x00b1
                           0000B1   461 _TXD0	=	0x00b1
                           0000B2   462 _INT0	=	0x00b2
                           0000B3   463 _INT1	=	0x00b3
                           0000B4   464 _T0	=	0x00b4
                           0000B5   465 _T1	=	0x00b5
                           0000B6   466 _WR	=	0x00b6
                           0000B7   467 _RD	=	0x00b7
                           0000D0   468 _P	=	0x00d0
                           0000D1   469 _F1	=	0x00d1
                           0000D2   470 _OV	=	0x00d2
                           0000D3   471 _RS0	=	0x00d3
                           0000D4   472 _RS1	=	0x00d4
                           0000D5   473 _F0	=	0x00d5
                           0000D6   474 _AC	=	0x00d6
                           0000D7   475 _CY	=	0x00d7
                           000098   476 _RI	=	0x0098
                           000099   477 _TI	=	0x0099
                           00009A   478 _RB8	=	0x009a
                           00009B   479 _TB8	=	0x009b
                           00009C   480 _REN	=	0x009c
                           00009D   481 _SM2	=	0x009d
                           00009E   482 _SM1	=	0x009e
                           00009F   483 _SM0	=	0x009f
                           000088   484 _IT0	=	0x0088
                           000089   485 _IE0	=	0x0089
                           00008A   486 _IT1	=	0x008a
                           00008B   487 _IE1	=	0x008b
                           00008C   488 _TR0	=	0x008c
                           00008D   489 _TF0	=	0x008d
                           00008E   490 _TR1	=	0x008e
                           00008F   491 _TF1	=	0x008f
                                    492 ;--------------------------------------------------------
                                    493 ; overlayable register banks
                                    494 ;--------------------------------------------------------
                                    495 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        496 	.ds 8
                                    497 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        498 	.ds 8
                                    499 ;--------------------------------------------------------
                                    500 ; overlayable bit register bank
                                    501 ;--------------------------------------------------------
                                    502 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        503 bits:
      000020                        504 	.ds 1
                           008000   505 	b0 = bits[0]
                           008100   506 	b1 = bits[1]
                           008200   507 	b2 = bits[2]
                           008300   508 	b3 = bits[3]
                           008400   509 	b4 = bits[4]
                           008500   510 	b5 = bits[5]
                           008600   511 	b6 = bits[6]
                           008700   512 	b7 = bits[7]
                                    513 ;--------------------------------------------------------
                                    514 ; internal ram data
                                    515 ;--------------------------------------------------------
                                    516 	.area DSEG    (DATA)
      000010                        517 _delete_buffer_sloc0_1_0:
      000010                        518 	.ds 2
      000012                        519 _delete_buffer_sloc1_1_0:
      000012                        520 	.ds 2
      000014                        521 _delete_buffer_sloc2_1_0:
      000014                        522 	.ds 3
                                    523 ;--------------------------------------------------------
                                    524 ; overlayable items in internal ram 
                                    525 ;--------------------------------------------------------
                                    526 ;--------------------------------------------------------
                                    527 ; Stack segment in internal ram 
                                    528 ;--------------------------------------------------------
                                    529 	.area	SSEG
      00002B                        530 __start__stack:
      00002B                        531 	.ds	1
                                    532 
                                    533 ;--------------------------------------------------------
                                    534 ; indirectly addressable internal ram data
                                    535 ;--------------------------------------------------------
                                    536 	.area ISEG    (DATA)
                                    537 ;--------------------------------------------------------
                                    538 ; absolute internal ram data
                                    539 ;--------------------------------------------------------
                                    540 	.area IABS    (ABS,DATA)
                                    541 	.area IABS    (ABS,DATA)
                                    542 ;--------------------------------------------------------
                                    543 ; bit data
                                    544 ;--------------------------------------------------------
                                    545 	.area BSEG    (BIT)
                                    546 ;--------------------------------------------------------
                                    547 ; paged external ram data
                                    548 ;--------------------------------------------------------
                                    549 	.area PSEG    (PAG,XDATA)
                                    550 ;--------------------------------------------------------
                                    551 ; external ram data
                                    552 ;--------------------------------------------------------
                                    553 	.area XSEG    (XDATA)
                           008000   554 _DEBUG_LOC	=	0x8000
      000001                        555 _program_stats::
      000001                        556 	.ds 10
      00000B                        557 _buffers_array::
      00000B                        558 	.ds 300
      000137                        559 _create_new_buffer_buff_65537_103:
      000137                        560 	.ds 12
      000143                        561 _create_initial_buffers_buff_65538_110:
      000143                        562 	.ds 12
      00014F                        563 _create_initial_buffers_buff1_65538_110:
      00014F                        564 	.ds 12
      00015B                        565 _dump_buff_zero_ascii_j_65537_127:
      00015B                        566 	.ds 2
      00015D                        567 _dump_buff_zero_hex_j_131073_135:
      00015D                        568 	.ds 2
      00015F                        569 _get_number_total_chars_65536_144:
      00015F                        570 	.ds 2
      000161                        571 _get_number_num_65537_146:
      000161                        572 	.ds 2
      000163                        573 _get_num_helper_times_65536_151:
      000163                        574 	.ds 2
      000165                        575 _get_num_helper_num_65536_152:
      000165                        576 	.ds 2
      000167                        577 _putchar_c_65536_155:
      000167                        578 	.ds 2
      000169                        579 _dataout_data_65536_158:
      000169                        580 	.ds 1
      00016A                        581 _asm_call_sent_from_asm_65536_160:
      00016A                        582 	.ds 1
                                    583 ;--------------------------------------------------------
                                    584 ; absolute external ram data
                                    585 ;--------------------------------------------------------
                                    586 	.area XABS    (ABS,XDATA)
                                    587 ;--------------------------------------------------------
                                    588 ; external initialized ram data
                                    589 ;--------------------------------------------------------
                                    590 	.area XISEG   (XDATA)
      001548                        591 _global_var_test::
      001548                        592 	.ds 1
      001549                        593 _watchdog_flag::
      001549                        594 	.ds 2
                                    595 	.area HOME    (CODE)
                                    596 	.area GSINIT0 (CODE)
                                    597 	.area GSINIT1 (CODE)
                                    598 	.area GSINIT2 (CODE)
                                    599 	.area GSINIT3 (CODE)
                                    600 	.area GSINIT4 (CODE)
                                    601 	.area GSINIT5 (CODE)
                                    602 	.area GSINIT  (CODE)
                                    603 	.area GSFINAL (CODE)
                                    604 	.area CSEG    (CODE)
                                    605 ;--------------------------------------------------------
                                    606 ; interrupt vector 
                                    607 ;--------------------------------------------------------
                                    608 	.area HOME    (CODE)
      000000                        609 __interrupt_vect:
      000000 02 00 39         [24]  610 	ljmp	__sdcc_gsinit_startup
      000003 02 02 15         [24]  611 	ljmp	_idle_interrupt
      000006                        612 	.ds	5
      00000B 32               [24]  613 	reti
      00000C                        614 	.ds	7
      000013 32               [24]  615 	reti
      000014                        616 	.ds	7
      00001B 32               [24]  617 	reti
      00001C                        618 	.ds	7
      000023 32               [24]  619 	reti
      000024                        620 	.ds	7
      00002B 32               [24]  621 	reti
      00002C                        622 	.ds	7
      000033 02 01 6D         [24]  623 	ljmp	_pca_interrupt
                                    624 ;--------------------------------------------------------
                                    625 ; global & static initialisations
                                    626 ;--------------------------------------------------------
                                    627 	.area HOME    (CODE)
                                    628 	.area GSINIT  (CODE)
                                    629 	.area GSFINAL (CODE)
                                    630 	.area GSINIT  (CODE)
                                    631 	.globl __sdcc_gsinit_startup
                                    632 	.globl __sdcc_program_startup
                                    633 	.globl __start__stack
                                    634 	.globl __mcs51_genXINIT
                                    635 	.globl __mcs51_genXRAMCLEAR
                                    636 	.globl __mcs51_genRAMCLEAR
                                    637 	.area GSFINAL (CODE)
      000092 02 00 36         [24]  638 	ljmp	__sdcc_program_startup
                                    639 ;--------------------------------------------------------
                                    640 ; Home
                                    641 ;--------------------------------------------------------
                                    642 	.area HOME    (CODE)
                                    643 	.area HOME    (CODE)
      000036                        644 __sdcc_program_startup:
      000036 02 00 95         [24]  645 	ljmp	_main
                                    646 ;	return from main will return to caller
                                    647 ;--------------------------------------------------------
                                    648 ; code
                                    649 ;--------------------------------------------------------
                                    650 	.area CSEG    (CODE)
                                    651 ;------------------------------------------------------------
                                    652 ;Allocation info for local variables in function 'main'
                                    653 ;------------------------------------------------------------
                                    654 ;	program.c:97: void main(void)
                                    655 ;	-----------------------------------------
                                    656 ;	 function main
                                    657 ;	-----------------------------------------
      000095                        658 _main:
                           000007   659 	ar7 = 0x07
                           000006   660 	ar6 = 0x06
                           000005   661 	ar5 = 0x05
                           000004   662 	ar4 = 0x04
                           000003   663 	ar3 = 0x03
                           000002   664 	ar2 = 0x02
                           000001   665 	ar1 = 0x01
                           000000   666 	ar0 = 0x00
                                    667 ;	program.c:104: i2c_testasm();
                                    668 ;	program.c:105: }
      000095 02 05 07         [24]  669 	ljmp	_i2c_testasm
                                    670 ;------------------------------------------------------------
                                    671 ;Allocation info for local variables in function 'user_interface_heap'
                                    672 ;------------------------------------------------------------
                                    673 ;	program.c:112: void user_interface_heap()
                                    674 ;	-----------------------------------------
                                    675 ;	 function user_interface_heap
                                    676 ;	-----------------------------------------
      000098                        677 _user_interface_heap:
                                    678 ;	program.c:114: DEBUGPORT(0x02);
      000098 75 82 02         [24]  679 	mov	dpl,#0x02
      00009B 12 15 04         [24]  680 	lcall	_dataout
                                    681 ;	program.c:115: create_initial_buffers();
      00009E 12 0B B3         [24]  682 	lcall	_create_initial_buffers
                                    683 ;	program.c:116: print_all_buffers();
      0000A1 12 11 E4         [24]  684 	lcall	_print_all_buffers
                                    685 ;	program.c:117: enter_chars();
                                    686 ;	program.c:118: }
      0000A4 02 0D 90         [24]  687 	ljmp	_enter_chars
                                    688 ;------------------------------------------------------------
                                    689 ;Allocation info for local variables in function 'user_interface_PCA'
                                    690 ;------------------------------------------------------------
                                    691 ;inp                       Allocated with name '_user_interface_PCA_inp_65537_58'
                                    692 ;------------------------------------------------------------
                                    693 ;	program.c:125: void user_interface_PCA()
                                    694 ;	-----------------------------------------
                                    695 ;	 function user_interface_PCA
                                    696 ;	-----------------------------------------
      0000A7                        697 _user_interface_PCA:
                                    698 ;	program.c:127: DEBUGPORT(0xAA);
      0000A7 75 82 AA         [24]  699 	mov	dpl,#0xaa
      0000AA 12 15 04         [24]  700 	lcall	_dataout
                                    701 ;	program.c:128: printf("Hello, In PCA Demo mode \n\r");
      0000AD 74 72            [12]  702 	mov	a,#___str_0
      0000AF C0 E0            [24]  703 	push	acc
      0000B1 74 24            [12]  704 	mov	a,#(___str_0 >> 8)
      0000B3 C0 E0            [24]  705 	push	acc
      0000B5 74 80            [12]  706 	mov	a,#0x80
      0000B7 C0 E0            [24]  707 	push	acc
      0000B9 12 1A 37         [24]  708 	lcall	_printf
      0000BC 15 81            [12]  709 	dec	sp
      0000BE 15 81            [12]  710 	dec	sp
      0000C0 15 81            [12]  711 	dec	sp
                                    712 ;	program.c:129: print_pca_menu();
      0000C2 12 08 9C         [24]  713 	lcall	_print_pca_menu
                                    714 ;	program.c:132: wrong_choice_pca:
      0000C5                        715 00101$:
                                    716 ;	program.c:133: printf("Please make a valid choice \n\r");
      0000C5 74 8D            [12]  717 	mov	a,#___str_1
      0000C7 C0 E0            [24]  718 	push	acc
      0000C9 74 24            [12]  719 	mov	a,#(___str_1 >> 8)
      0000CB C0 E0            [24]  720 	push	acc
      0000CD 74 80            [12]  721 	mov	a,#0x80
      0000CF C0 E0            [24]  722 	push	acc
      0000D1 12 1A 37         [24]  723 	lcall	_printf
      0000D4 15 81            [12]  724 	dec	sp
      0000D6 15 81            [12]  725 	dec	sp
      0000D8 15 81            [12]  726 	dec	sp
                                    727 ;	program.c:134: inp = getchar();
      0000DA 12 14 C8         [24]  728 	lcall	_getchar
      0000DD AE 82            [24]  729 	mov	r6,dpl
      0000DF AF 83            [24]  730 	mov	r7,dph
                                    731 ;	program.c:135: if (inp == 0x46)
      0000E1 BE 46 09         [24]  732 	cjne	r6,#0x46,00127$
      0000E4 BF 00 06         [24]  733 	cjne	r7,#0x00,00127$
                                    734 ;	program.c:136: pca_falling_edge();
      0000E7 12 02 8A         [24]  735 	lcall	_pca_falling_edge
      0000EA 02 01 48         [24]  736 	ljmp	00145$
      0000ED                        737 00127$:
                                    738 ;	program.c:137: else if (inp == 0x53)
      0000ED BE 53 08         [24]  739 	cjne	r6,#0x53,00124$
      0000F0 BF 00 05         [24]  740 	cjne	r7,#0x00,00124$
                                    741 ;	program.c:138: pca_software_timer();
      0000F3 12 02 A5         [24]  742 	lcall	_pca_software_timer
      0000F6 80 50            [24]  743 	sjmp	00145$
      0000F8                        744 00124$:
                                    745 ;	program.c:139: else if (inp == 0x48)
      0000F8 BE 48 08         [24]  746 	cjne	r6,#0x48,00121$
      0000FB BF 00 05         [24]  747 	cjne	r7,#0x00,00121$
                                    748 ;	program.c:140: pca_high_speed();
      0000FE 12 02 D6         [24]  749 	lcall	_pca_high_speed
      000101 80 45            [24]  750 	sjmp	00145$
      000103                        751 00121$:
                                    752 ;	program.c:141: else if (inp == 0x50)
      000103 BE 50 08         [24]  753 	cjne	r6,#0x50,00118$
      000106 BF 00 05         [24]  754 	cjne	r7,#0x00,00118$
                                    755 ;	program.c:142: pca_pwm();
      000109 12 02 FA         [24]  756 	lcall	_pca_pwm
      00010C 80 3A            [24]  757 	sjmp	00145$
      00010E                        758 00118$:
                                    759 ;	program.c:143: else if (inp == 0x57)
      00010E BE 57 08         [24]  760 	cjne	r6,#0x57,00115$
      000111 BF 00 05         [24]  761 	cjne	r7,#0x00,00115$
                                    762 ;	program.c:144: pca_watchdog();
      000114 12 03 1E         [24]  763 	lcall	_pca_watchdog
      000117 80 2F            [24]  764 	sjmp	00145$
      000119                        765 00115$:
                                    766 ;	program.c:145: else if (inp == 0x49)
      000119 BE 49 08         [24]  767 	cjne	r6,#0x49,00112$
      00011C BF 00 05         [24]  768 	cjne	r7,#0x00,00112$
                                    769 ;	program.c:146: pca_idle();
      00011F 12 03 C2         [24]  770 	lcall	_pca_idle
      000122 80 24            [24]  771 	sjmp	00145$
      000124                        772 00112$:
                                    773 ;	program.c:147: else if (inp == 0x44)
      000124 BE 44 08         [24]  774 	cjne	r6,#0x44,00109$
      000127 BF 00 05         [24]  775 	cjne	r7,#0x00,00109$
                                    776 ;	program.c:148: pca_pdown();
      00012A 12 03 F7         [24]  777 	lcall	_pca_pdown
      00012D 80 19            [24]  778 	sjmp	00145$
      00012F                        779 00109$:
                                    780 ;	program.c:149: else if (inp == 0x4C)
      00012F BE 4C 08         [24]  781 	cjne	r6,#0x4c,00106$
      000132 BF 00 05         [24]  782 	cjne	r7,#0x00,00106$
                                    783 ;	program.c:150: fclk_lowest();
      000135 12 04 2C         [24]  784 	lcall	_fclk_lowest
      000138 80 0E            [24]  785 	sjmp	00145$
      00013A                        786 00106$:
                                    787 ;	program.c:151: else if (inp == 0x55)
      00013A BE 55 05         [24]  788 	cjne	r6,#0x55,00199$
      00013D BF 00 02         [24]  789 	cjne	r7,#0x00,00199$
      000140 80 03            [24]  790 	sjmp	00200$
      000142                        791 00199$:
      000142 02 00 C5         [24]  792 	ljmp	00101$
      000145                        793 00200$:
                                    794 ;	program.c:152: hardware_watchdog();
      000145 12 03 79         [24]  795 	lcall	_hardware_watchdog
                                    796 ;	program.c:156: exit_choice:
      000148                        797 00145$:
      000148                        798 00129$:
                                    799 ;	program.c:157: printf("Please 'E' to exit or Reset \n\r");
      000148 74 AB            [12]  800 	mov	a,#___str_2
      00014A C0 E0            [24]  801 	push	acc
      00014C 74 24            [12]  802 	mov	a,#(___str_2 >> 8)
      00014E C0 E0            [24]  803 	push	acc
      000150 74 80            [12]  804 	mov	a,#0x80
      000152 C0 E0            [24]  805 	push	acc
      000154 12 1A 37         [24]  806 	lcall	_printf
      000157 15 81            [12]  807 	dec	sp
      000159 15 81            [12]  808 	dec	sp
      00015B 15 81            [12]  809 	dec	sp
                                    810 ;	program.c:158: inp = getchar();
      00015D 12 14 C8         [24]  811 	lcall	_getchar
      000160 AE 82            [24]  812 	mov	r6,dpl
      000162 AF 83            [24]  813 	mov	r7,dph
                                    814 ;	program.c:159: if (inp == 0x45)
      000164 BE 45 E1         [24]  815 	cjne	r6,#0x45,00129$
      000167 BF 00 DE         [24]  816 	cjne	r7,#0x00,00129$
                                    817 ;	program.c:160: user_interface_PCA();
                                    818 ;	program.c:162: goto exit_choice;
                                    819 ;	program.c:163: }
      00016A 02 00 A7         [24]  820 	ljmp	_user_interface_PCA
                                    821 ;------------------------------------------------------------
                                    822 ;Allocation info for local variables in function 'pca_interrupt'
                                    823 ;------------------------------------------------------------
                                    824 ;	program.c:170: void pca_interrupt() __interrupt(6) __using(1)
                                    825 ;	-----------------------------------------
                                    826 ;	 function pca_interrupt
                                    827 ;	-----------------------------------------
      00016D                        828 _pca_interrupt:
                           00000F   829 	ar7 = 0x0f
                           00000E   830 	ar6 = 0x0e
                           00000D   831 	ar5 = 0x0d
                           00000C   832 	ar4 = 0x0c
                           00000B   833 	ar3 = 0x0b
                           00000A   834 	ar2 = 0x0a
                           000009   835 	ar1 = 0x09
                           000008   836 	ar0 = 0x08
      00016D C0 20            [24]  837 	push	bits
      00016F C0 E0            [24]  838 	push	acc
      000171 C0 F0            [24]  839 	push	b
      000173 C0 82            [24]  840 	push	dpl
      000175 C0 83            [24]  841 	push	dph
      000177 C0 07            [24]  842 	push	(0+7)
      000179 C0 06            [24]  843 	push	(0+6)
      00017B C0 05            [24]  844 	push	(0+5)
      00017D C0 04            [24]  845 	push	(0+4)
      00017F C0 03            [24]  846 	push	(0+3)
      000181 C0 02            [24]  847 	push	(0+2)
      000183 C0 01            [24]  848 	push	(0+1)
      000185 C0 00            [24]  849 	push	(0+0)
      000187 C0 D0            [24]  850 	push	psw
      000189 75 D0 08         [24]  851 	mov	psw,#0x08
                                    852 ;	program.c:172: if (CCF0)
      00018C 30 D8 2D         [24]  853 	jnb	_CCF0,00102$
                                    854 ;	program.c:174: printf("Captured Value CCPL -> %d CCPH -> %d \n\r", CCAP0L, CCAP0H);
      00018F AE FA            [24]  855 	mov	r6,_CCAP0H
      000191 7F 00            [12]  856 	mov	r7,#0x00
      000193 AC EA            [24]  857 	mov	r4,_CCAP0L
      000195 7D 00            [12]  858 	mov	r5,#0x00
      000197 C0 0E            [24]  859 	push	ar6
      000199 C0 0F            [24]  860 	push	ar7
      00019B C0 0C            [24]  861 	push	ar4
      00019D C0 0D            [24]  862 	push	ar5
      00019F 74 CA            [12]  863 	mov	a,#___str_3
      0001A1 C0 E0            [24]  864 	push	acc
      0001A3 74 24            [12]  865 	mov	a,#(___str_3 >> 8)
      0001A5 C0 E0            [24]  866 	push	acc
      0001A7 74 80            [12]  867 	mov	a,#0x80
      0001A9 C0 E0            [24]  868 	push	acc
      0001AB 75 D0 00         [24]  869 	mov	psw,#0x00
      0001AE 12 1A 37         [24]  870 	lcall	_printf
      0001B1 75 D0 08         [24]  871 	mov	psw,#0x08
      0001B4 E5 81            [12]  872 	mov	a,sp
      0001B6 24 F9            [12]  873 	add	a,#0xf9
      0001B8 F5 81            [12]  874 	mov	sp,a
                                    875 ;	program.c:176: CCF0 = 0;
                                    876 ;	assignBit
      0001BA C2 D8            [12]  877 	clr	_CCF0
      0001BC                        878 00102$:
                                    879 ;	program.c:178: if (CCF1)
                                    880 ;	program.c:180: CCF1 = 0;
                                    881 ;	assignBit
      0001BC 10 D9 02         [24]  882 	jbc	_CCF1,00128$
      0001BF 80 06            [24]  883 	sjmp	00104$
      0001C1                        884 00128$:
                                    885 ;	program.c:181: CH = 0;
      0001C1 75 F9 00         [24]  886 	mov	_CH,#0x00
                                    887 ;	program.c:182: CL = 0;
      0001C4 75 E9 00         [24]  888 	mov	_CL,#0x00
      0001C7                        889 00104$:
                                    890 ;	program.c:185: if (CCF2)
                                    891 ;	program.c:187: CCF2 = 0;
                                    892 ;	assignBit
      0001C7 10 DA 02         [24]  893 	jbc	_CCF2,00129$
      0001CA 80 0C            [24]  894 	sjmp	00106$
      0001CC                        895 00129$:
                                    896 ;	program.c:188: CH = 0;
      0001CC 75 F9 00         [24]  897 	mov	_CH,#0x00
                                    898 ;	program.c:189: CL = 0;
      0001CF 75 E9 00         [24]  899 	mov	_CL,#0x00
                                    900 ;	program.c:190: WDTRST = 0x01E;
      0001D2 75 A6 1E         [24]  901 	mov	_WDTRST,#0x1e
                                    902 ;	program.c:191: WDTRST = 0x0E1;
      0001D5 75 A6 E1         [24]  903 	mov	_WDTRST,#0xe1
      0001D8                        904 00106$:
                                    905 ;	program.c:193: if (CCF3)
                                    906 ;	program.c:195: CCF3 = 0;
                                    907 ;	assignBit
      0001D8 10 DB 02         [24]  908 	jbc	_CCF3,00130$
      0001DB 80 1B            [24]  909 	sjmp	00109$
      0001DD                        910 00130$:
                                    911 ;	program.c:196: printf("Timer Interrupt\n\r");
      0001DD 74 F2            [12]  912 	mov	a,#___str_4
      0001DF C0 E0            [24]  913 	push	acc
      0001E1 74 24            [12]  914 	mov	a,#(___str_4 >> 8)
      0001E3 C0 E0            [24]  915 	push	acc
      0001E5 74 80            [12]  916 	mov	a,#0x80
      0001E7 C0 E0            [24]  917 	push	acc
      0001E9 75 D0 00         [24]  918 	mov	psw,#0x00
      0001EC 12 1A 37         [24]  919 	lcall	_printf
      0001EF 75 D0 08         [24]  920 	mov	psw,#0x08
      0001F2 15 81            [12]  921 	dec	sp
      0001F4 15 81            [12]  922 	dec	sp
      0001F6 15 81            [12]  923 	dec	sp
      0001F8                        924 00109$:
                                    925 ;	program.c:198: }
      0001F8 D0 D0            [24]  926 	pop	psw
      0001FA D0 00            [24]  927 	pop	(0+0)
      0001FC D0 01            [24]  928 	pop	(0+1)
      0001FE D0 02            [24]  929 	pop	(0+2)
      000200 D0 03            [24]  930 	pop	(0+3)
      000202 D0 04            [24]  931 	pop	(0+4)
      000204 D0 05            [24]  932 	pop	(0+5)
      000206 D0 06            [24]  933 	pop	(0+6)
      000208 D0 07            [24]  934 	pop	(0+7)
      00020A D0 83            [24]  935 	pop	dph
      00020C D0 82            [24]  936 	pop	dpl
      00020E D0 F0            [24]  937 	pop	b
      000210 D0 E0            [24]  938 	pop	acc
      000212 D0 20            [24]  939 	pop	bits
      000214 32               [24]  940 	reti
                                    941 ;------------------------------------------------------------
                                    942 ;Allocation info for local variables in function 'idle_interrupt'
                                    943 ;------------------------------------------------------------
                                    944 ;	program.c:205: void idle_interrupt() __interrupt(0) __using(1)
                                    945 ;	-----------------------------------------
                                    946 ;	 function idle_interrupt
                                    947 ;	-----------------------------------------
      000215                        948 _idle_interrupt:
      000215 C0 20            [24]  949 	push	bits
      000217 C0 E0            [24]  950 	push	acc
      000219 C0 F0            [24]  951 	push	b
      00021B C0 82            [24]  952 	push	dpl
      00021D C0 83            [24]  953 	push	dph
      00021F C0 07            [24]  954 	push	(0+7)
      000221 C0 06            [24]  955 	push	(0+6)
      000223 C0 05            [24]  956 	push	(0+5)
      000225 C0 04            [24]  957 	push	(0+4)
      000227 C0 03            [24]  958 	push	(0+3)
      000229 C0 02            [24]  959 	push	(0+2)
      00022B C0 01            [24]  960 	push	(0+1)
      00022D C0 00            [24]  961 	push	(0+0)
      00022F C0 D0            [24]  962 	push	psw
      000231 75 D0 08         [24]  963 	mov	psw,#0x08
                                    964 ;	program.c:207: EX0 = 0;
                                    965 ;	assignBit
      000234 C2 A8            [12]  966 	clr	_EX0
                                    967 ;	program.c:208: PCON = 0x80;
      000236 75 87 80         [24]  968 	mov	_PCON,#0x80
                                    969 ;	program.c:209: CR = 0;
                                    970 ;	assignBit
      000239 C2 DE            [12]  971 	clr	_CR
                                    972 ;	program.c:210: CKRL = 255;
      00023B 75 97 FF         [24]  973 	mov	_CKRL,#0xff
                                    974 ;	program.c:211: CCAPM0 = 0;
                                    975 ;	program.c:212: CCAPM1 = 0;
                                    976 ;	program.c:213: CCAPM2 = 0;
                                    977 ;	program.c:214: CCAPM3 = 0;
                                    978 ;	program.c:215: CCAPM4 = 0;
                                    979 ;	program.c:216: printf("Going to main menu.. \n\r");
      00023E E4               [12]  980 	clr	a
      00023F F5 DA            [12]  981 	mov	_CCAPM0,a
      000241 F5 DB            [12]  982 	mov	_CCAPM1,a
      000243 F5 DC            [12]  983 	mov	_CCAPM2,a
      000245 F5 DD            [12]  984 	mov	_CCAPM3,a
      000247 F5 DE            [12]  985 	mov	_CCAPM4,a
      000249 74 04            [12]  986 	mov	a,#___str_5
      00024B C0 E0            [24]  987 	push	acc
      00024D 74 25            [12]  988 	mov	a,#(___str_5 >> 8)
      00024F C0 E0            [24]  989 	push	acc
      000251 74 80            [12]  990 	mov	a,#0x80
      000253 C0 E0            [24]  991 	push	acc
      000255 75 D0 00         [24]  992 	mov	psw,#0x00
      000258 12 1A 37         [24]  993 	lcall	_printf
      00025B 75 D0 08         [24]  994 	mov	psw,#0x08
      00025E 15 81            [12]  995 	dec	sp
      000260 15 81            [12]  996 	dec	sp
      000262 15 81            [12]  997 	dec	sp
                                    998 ;	program.c:217: main_menu();
      000264 75 D0 00         [24]  999 	mov	psw,#0x00
      000267 12 04 5E         [24] 1000 	lcall	_main_menu
      00026A 75 D0 08         [24] 1001 	mov	psw,#0x08
                                   1002 ;	program.c:218: }
      00026D D0 D0            [24] 1003 	pop	psw
      00026F D0 00            [24] 1004 	pop	(0+0)
      000271 D0 01            [24] 1005 	pop	(0+1)
      000273 D0 02            [24] 1006 	pop	(0+2)
      000275 D0 03            [24] 1007 	pop	(0+3)
      000277 D0 04            [24] 1008 	pop	(0+4)
      000279 D0 05            [24] 1009 	pop	(0+5)
      00027B D0 06            [24] 1010 	pop	(0+6)
      00027D D0 07            [24] 1011 	pop	(0+7)
      00027F D0 83            [24] 1012 	pop	dph
      000281 D0 82            [24] 1013 	pop	dpl
      000283 D0 F0            [24] 1014 	pop	b
      000285 D0 E0            [24] 1015 	pop	acc
      000287 D0 20            [24] 1016 	pop	bits
      000289 32               [24] 1017 	reti
                                   1018 ;------------------------------------------------------------
                                   1019 ;Allocation info for local variables in function 'pca_falling_edge'
                                   1020 ;------------------------------------------------------------
                                   1021 ;	program.c:225: void pca_falling_edge()
                                   1022 ;	-----------------------------------------
                                   1023 ;	 function pca_falling_edge
                                   1024 ;	-----------------------------------------
      00028A                       1025 _pca_falling_edge:
                           000007  1026 	ar7 = 0x07
                           000006  1027 	ar6 = 0x06
                           000005  1028 	ar5 = 0x05
                           000004  1029 	ar4 = 0x04
                           000003  1030 	ar3 = 0x03
                           000002  1031 	ar2 = 0x02
                           000001  1032 	ar1 = 0x01
                           000000  1033 	ar0 = 0x00
                                   1034 ;	program.c:227: printf("Setting P1.3 as falling edge detector, enabling PCA interrupt \n\r");
      00028A 74 1C            [12] 1035 	mov	a,#___str_6
      00028C C0 E0            [24] 1036 	push	acc
      00028E 74 25            [12] 1037 	mov	a,#(___str_6 >> 8)
      000290 C0 E0            [24] 1038 	push	acc
      000292 74 80            [12] 1039 	mov	a,#0x80
      000294 C0 E0            [24] 1040 	push	acc
      000296 12 1A 37         [24] 1041 	lcall	_printf
      000299 15 81            [12] 1042 	dec	sp
      00029B 15 81            [12] 1043 	dec	sp
      00029D 15 81            [12] 1044 	dec	sp
                                   1045 ;	program.c:228: CCAPM0 = 0x21;
      00029F 75 DA 21         [24] 1046 	mov	_CCAPM0,#0x21
                                   1047 ;	program.c:229: CR = 1;
                                   1048 ;	assignBit
      0002A2 D2 DE            [12] 1049 	setb	_CR
                                   1050 ;	program.c:230: }
      0002A4 22               [24] 1051 	ret
                                   1052 ;------------------------------------------------------------
                                   1053 ;Allocation info for local variables in function 'pca_software_timer'
                                   1054 ;------------------------------------------------------------
                                   1055 ;rec                       Allocated with name '_pca_software_timer_rec_65537_67'
                                   1056 ;------------------------------------------------------------
                                   1057 ;	program.c:237: void pca_software_timer()
                                   1058 ;	-----------------------------------------
                                   1059 ;	 function pca_software_timer
                                   1060 ;	-----------------------------------------
      0002A5                       1061 _pca_software_timer:
                                   1062 ;	program.c:239: printf("Entering Software Timer Mode \n\r");
      0002A5 74 5D            [12] 1063 	mov	a,#___str_7
      0002A7 C0 E0            [24] 1064 	push	acc
      0002A9 74 25            [12] 1065 	mov	a,#(___str_7 >> 8)
      0002AB C0 E0            [24] 1066 	push	acc
      0002AD 74 80            [12] 1067 	mov	a,#0x80
      0002AF C0 E0            [24] 1068 	push	acc
      0002B1 12 1A 37         [24] 1069 	lcall	_printf
      0002B4 15 81            [12] 1070 	dec	sp
      0002B6 15 81            [12] 1071 	dec	sp
      0002B8 15 81            [12] 1072 	dec	sp
                                   1073 ;	program.c:240: CCAP3L = 255;
      0002BA 75 ED FF         [24] 1074 	mov	_CCAP3L,#0xff
                                   1075 ;	program.c:241: CCAP3H = 255;
      0002BD 75 FD FF         [24] 1076 	mov	_CCAP3H,#0xff
                                   1077 ;	program.c:242: CCAPM3 = 0x49;
      0002C0 75 DD 49         [24] 1078 	mov	_CCAPM3,#0x49
                                   1079 ;	program.c:243: CR = 1;
                                   1080 ;	assignBit
      0002C3 D2 DE            [12] 1081 	setb	_CR
                                   1082 ;	program.c:245: get_f:
      0002C5                       1083 00101$:
                                   1084 ;	program.c:246: rec = getchar();
      0002C5 12 14 C8         [24] 1085 	lcall	_getchar
      0002C8 AE 82            [24] 1086 	mov	r6,dpl
      0002CA AF 83            [24] 1087 	mov	r7,dph
                                   1088 ;	program.c:248: if (rec == 0x53)
      0002CC BE 53 F6         [24] 1089 	cjne	r6,#0x53,00101$
      0002CF BF 00 F3         [24] 1090 	cjne	r7,#0x00,00101$
                                   1091 ;	program.c:249: CCAPM3 = 0;
      0002D2 75 DD 00         [24] 1092 	mov	_CCAPM3,#0x00
                                   1093 ;	program.c:251: goto get_f;
                                   1094 ;	program.c:252: }
      0002D5 22               [24] 1095 	ret
                                   1096 ;------------------------------------------------------------
                                   1097 ;Allocation info for local variables in function 'pca_high_speed'
                                   1098 ;------------------------------------------------------------
                                   1099 ;	program.c:259: void pca_high_speed()
                                   1100 ;	-----------------------------------------
                                   1101 ;	 function pca_high_speed
                                   1102 ;	-----------------------------------------
      0002D6                       1103 _pca_high_speed:
                                   1104 ;	program.c:262: printf("Entering High Speed Toggle Mode, P1.5 \n\r");
      0002D6 74 7D            [12] 1105 	mov	a,#___str_8
      0002D8 C0 E0            [24] 1106 	push	acc
      0002DA 74 25            [12] 1107 	mov	a,#(___str_8 >> 8)
      0002DC C0 E0            [24] 1108 	push	acc
      0002DE 74 80            [12] 1109 	mov	a,#0x80
      0002E0 C0 E0            [24] 1110 	push	acc
      0002E2 12 1A 37         [24] 1111 	lcall	_printf
      0002E5 15 81            [12] 1112 	dec	sp
      0002E7 15 81            [12] 1113 	dec	sp
      0002E9 15 81            [12] 1114 	dec	sp
                                   1115 ;	program.c:263: CCAP2L = 255;
      0002EB 75 EC FF         [24] 1116 	mov	_CCAP2L,#0xff
                                   1117 ;	program.c:264: CCAP2H = 2;
      0002EE 75 FC 02         [24] 1118 	mov	_CCAP2H,#0x02
                                   1119 ;	program.c:265: CCAPM2 = 0x4D;
      0002F1 75 DC 4D         [24] 1120 	mov	_CCAPM2,#0x4d
                                   1121 ;	program.c:266: CMOD = CPS0;
      0002F4 75 D9 02         [24] 1122 	mov	_CMOD,#0x02
                                   1123 ;	program.c:267: CR = 1;
                                   1124 ;	assignBit
      0002F7 D2 DE            [12] 1125 	setb	_CR
                                   1126 ;	program.c:268: }
      0002F9 22               [24] 1127 	ret
                                   1128 ;------------------------------------------------------------
                                   1129 ;Allocation info for local variables in function 'pca_pwm'
                                   1130 ;------------------------------------------------------------
                                   1131 ;	program.c:275: void pca_pwm()
                                   1132 ;	-----------------------------------------
                                   1133 ;	 function pca_pwm
                                   1134 ;	-----------------------------------------
      0002FA                       1135 _pca_pwm:
                                   1136 ;	program.c:277: printf("Entering PWM Mode, 25 percent Duty Cycle P1.6\n\r");
      0002FA 74 A6            [12] 1137 	mov	a,#___str_9
      0002FC C0 E0            [24] 1138 	push	acc
      0002FE 74 25            [12] 1139 	mov	a,#(___str_9 >> 8)
      000300 C0 E0            [24] 1140 	push	acc
      000302 74 80            [12] 1141 	mov	a,#0x80
      000304 C0 E0            [24] 1142 	push	acc
      000306 12 1A 37         [24] 1143 	lcall	_printf
      000309 15 81            [12] 1144 	dec	sp
      00030B 15 81            [12] 1145 	dec	sp
      00030D 15 81            [12] 1146 	dec	sp
                                   1147 ;	program.c:278: CCAP3L = 192;
      00030F 75 ED C0         [24] 1148 	mov	_CCAP3L,#0xc0
                                   1149 ;	program.c:279: CCAP3H = 192;
      000312 75 FD C0         [24] 1150 	mov	_CCAP3H,#0xc0
                                   1151 ;	program.c:280: CCAPM3 = 0x42;
      000315 75 DD 42         [24] 1152 	mov	_CCAPM3,#0x42
                                   1153 ;	program.c:281: CMOD = CPS0;
      000318 75 D9 02         [24] 1154 	mov	_CMOD,#0x02
                                   1155 ;	program.c:282: CR = 1;
                                   1156 ;	assignBit
      00031B D2 DE            [12] 1157 	setb	_CR
                                   1158 ;	program.c:283: }
      00031D 22               [24] 1159 	ret
                                   1160 ;------------------------------------------------------------
                                   1161 ;Allocation info for local variables in function 'pca_watchdog'
                                   1162 ;------------------------------------------------------------
                                   1163 ;rec                       Allocated with name '_pca_watchdog_rec_65537_71'
                                   1164 ;------------------------------------------------------------
                                   1165 ;	program.c:290: void pca_watchdog()
                                   1166 ;	-----------------------------------------
                                   1167 ;	 function pca_watchdog
                                   1168 ;	-----------------------------------------
      00031E                       1169 _pca_watchdog:
                                   1170 ;	program.c:292: CCAP1L = 255;
      00031E 75 EB FF         [24] 1171 	mov	_CCAP1L,#0xff
                                   1172 ;	program.c:293: CCAP1H = 128;
      000321 75 FB 80         [24] 1173 	mov	_CCAP1H,#0x80
                                   1174 ;	program.c:294: CCAPM1 = 0x49;
      000324 75 DB 49         [24] 1175 	mov	_CCAPM1,#0x49
                                   1176 ;	program.c:295: watchdog_flag = 1;
      000327 90 15 49         [24] 1177 	mov	dptr,#_watchdog_flag
      00032A 74 01            [12] 1178 	mov	a,#0x01
      00032C F0               [24] 1179 	movx	@dptr,a
      00032D E4               [12] 1180 	clr	a
      00032E A3               [24] 1181 	inc	dptr
      00032F F0               [24] 1182 	movx	@dptr,a
                                   1183 ;	program.c:296: printf("Enabling Watchdog Timer..\n\r");
      000330 74 D6            [12] 1184 	mov	a,#___str_10
      000332 C0 E0            [24] 1185 	push	acc
      000334 74 25            [12] 1186 	mov	a,#(___str_10 >> 8)
      000336 C0 E0            [24] 1187 	push	acc
      000338 74 80            [12] 1188 	mov	a,#0x80
      00033A C0 E0            [24] 1189 	push	acc
      00033C 12 1A 37         [24] 1190 	lcall	_printf
      00033F 15 81            [12] 1191 	dec	sp
      000341 15 81            [12] 1192 	dec	sp
      000343 15 81            [12] 1193 	dec	sp
                                   1194 ;	program.c:297: CCAP4L = 255;
      000345 75 EE FF         [24] 1195 	mov	_CCAP4L,#0xff
                                   1196 ;	program.c:298: CCAP4H = 255;
      000348 75 FE FF         [24] 1197 	mov	_CCAP4H,#0xff
                                   1198 ;	program.c:299: CMOD = WDTE;
      00034B 75 D9 40         [24] 1199 	mov	_CMOD,#0x40
                                   1200 ;	program.c:300: CCAPM4 = 0x48;
      00034E 75 DE 48         [24] 1201 	mov	_CCAPM4,#0x48
                                   1202 ;	program.c:301: CR = 1;
                                   1203 ;	assignBit
      000351 D2 DE            [12] 1204 	setb	_CR
                                   1205 ;	program.c:303: printf("Currently Watchdog is being serviced\n\rPress 'S' to stop and generate a reset \n\r");
      000353 74 F2            [12] 1206 	mov	a,#___str_11
      000355 C0 E0            [24] 1207 	push	acc
      000357 74 25            [12] 1208 	mov	a,#(___str_11 >> 8)
      000359 C0 E0            [24] 1209 	push	acc
      00035B 74 80            [12] 1210 	mov	a,#0x80
      00035D C0 E0            [24] 1211 	push	acc
      00035F 12 1A 37         [24] 1212 	lcall	_printf
      000362 15 81            [12] 1213 	dec	sp
      000364 15 81            [12] 1214 	dec	sp
      000366 15 81            [12] 1215 	dec	sp
                                   1216 ;	program.c:305: get_e:
      000368                       1217 00101$:
                                   1218 ;	program.c:306: rec = getchar();
      000368 12 14 C8         [24] 1219 	lcall	_getchar
      00036B AE 82            [24] 1220 	mov	r6,dpl
      00036D AF 83            [24] 1221 	mov	r7,dph
                                   1222 ;	program.c:308: if (rec == 0x53)
      00036F BE 53 F6         [24] 1223 	cjne	r6,#0x53,00101$
      000372 BF 00 F3         [24] 1224 	cjne	r7,#0x00,00101$
                                   1225 ;	program.c:309: CCAPM1 = 0;
      000375 75 DB 00         [24] 1226 	mov	_CCAPM1,#0x00
                                   1227 ;	program.c:311: goto get_e;
                                   1228 ;	program.c:312: }
      000378 22               [24] 1229 	ret
                                   1230 ;------------------------------------------------------------
                                   1231 ;Allocation info for local variables in function 'hardware_watchdog'
                                   1232 ;------------------------------------------------------------
                                   1233 ;rec                       Allocated with name '_hardware_watchdog_rec_65537_73'
                                   1234 ;------------------------------------------------------------
                                   1235 ;	program.c:319: void hardware_watchdog()
                                   1236 ;	-----------------------------------------
                                   1237 ;	 function hardware_watchdog
                                   1238 ;	-----------------------------------------
      000379                       1239 _hardware_watchdog:
                                   1240 ;	program.c:321: CCAP2L = 255;
      000379 75 EC FF         [24] 1241 	mov	_CCAP2L,#0xff
                                   1242 ;	program.c:322: CCAP2H = 255;
      00037C 75 FC FF         [24] 1243 	mov	_CCAP2H,#0xff
                                   1244 ;	program.c:323: CCAPM2 = 0x49;
      00037F 75 DC 49         [24] 1245 	mov	_CCAPM2,#0x49
                                   1246 ;	program.c:324: printf("Enabling Hardware Watchdog Timer..\n\r");
      000382 74 42            [12] 1247 	mov	a,#___str_12
      000384 C0 E0            [24] 1248 	push	acc
      000386 74 26            [12] 1249 	mov	a,#(___str_12 >> 8)
      000388 C0 E0            [24] 1250 	push	acc
      00038A 74 80            [12] 1251 	mov	a,#0x80
      00038C C0 E0            [24] 1252 	push	acc
      00038E 12 1A 37         [24] 1253 	lcall	_printf
      000391 15 81            [12] 1254 	dec	sp
      000393 15 81            [12] 1255 	dec	sp
      000395 15 81            [12] 1256 	dec	sp
                                   1257 ;	program.c:325: WDTPRG = 0x7;
      000397 75 A7 07         [24] 1258 	mov	_WDTPRG,#0x07
                                   1259 ;	program.c:326: CR = 1;
                                   1260 ;	assignBit
      00039A D2 DE            [12] 1261 	setb	_CR
                                   1262 ;	program.c:328: printf("Currently Hardware Watchdog is being serviced\n\rPress 'S' to stop watchdog service and generate a reset in ~1s \n\r");
      00039C 74 67            [12] 1263 	mov	a,#___str_13
      00039E C0 E0            [24] 1264 	push	acc
      0003A0 74 26            [12] 1265 	mov	a,#(___str_13 >> 8)
      0003A2 C0 E0            [24] 1266 	push	acc
      0003A4 74 80            [12] 1267 	mov	a,#0x80
      0003A6 C0 E0            [24] 1268 	push	acc
      0003A8 12 1A 37         [24] 1269 	lcall	_printf
      0003AB 15 81            [12] 1270 	dec	sp
      0003AD 15 81            [12] 1271 	dec	sp
      0003AF 15 81            [12] 1272 	dec	sp
                                   1273 ;	program.c:330: get_e:
      0003B1                       1274 00101$:
                                   1275 ;	program.c:331: rec = getchar();
      0003B1 12 14 C8         [24] 1276 	lcall	_getchar
      0003B4 AE 82            [24] 1277 	mov	r6,dpl
      0003B6 AF 83            [24] 1278 	mov	r7,dph
                                   1279 ;	program.c:333: if (rec == 0x53)
      0003B8 BE 53 F6         [24] 1280 	cjne	r6,#0x53,00101$
      0003BB BF 00 F3         [24] 1281 	cjne	r7,#0x00,00101$
                                   1282 ;	program.c:334: CCAPM2 = 0;
      0003BE 75 DC 00         [24] 1283 	mov	_CCAPM2,#0x00
                                   1284 ;	program.c:336: goto get_e;
                                   1285 ;	program.c:337: }
      0003C1 22               [24] 1286 	ret
                                   1287 ;------------------------------------------------------------
                                   1288 ;Allocation info for local variables in function 'pca_idle'
                                   1289 ;------------------------------------------------------------
                                   1290 ;	program.c:344: void pca_idle()
                                   1291 ;	-----------------------------------------
                                   1292 ;	 function pca_idle
                                   1293 ;	-----------------------------------------
      0003C2                       1294 _pca_idle:
                                   1295 ;	program.c:346: pca_pwm();
      0003C2 12 02 FA         [24] 1296 	lcall	_pca_pwm
                                   1297 ;	program.c:347: printf("Entering Idle, Will Exit on external interrupt 0\n\r");
      0003C5 74 D8            [12] 1298 	mov	a,#___str_14
      0003C7 C0 E0            [24] 1299 	push	acc
      0003C9 74 26            [12] 1300 	mov	a,#(___str_14 >> 8)
      0003CB C0 E0            [24] 1301 	push	acc
      0003CD 74 80            [12] 1302 	mov	a,#0x80
      0003CF C0 E0            [24] 1303 	push	acc
      0003D1 12 1A 37         [24] 1304 	lcall	_printf
      0003D4 15 81            [12] 1305 	dec	sp
      0003D6 15 81            [12] 1306 	dec	sp
      0003D8 15 81            [12] 1307 	dec	sp
                                   1308 ;	program.c:348: EX0 = 1;
                                   1309 ;	assignBit
      0003DA D2 A8            [12] 1310 	setb	_EX0
                                   1311 ;	program.c:349: PCON = IDL;
      0003DC 75 87 01         [24] 1312 	mov	_PCON,#0x01
                                   1313 ;	program.c:350: printf("Woke up from Idle/Power down, going to main menu \n\r");
      0003DF 74 0B            [12] 1314 	mov	a,#___str_15
      0003E1 C0 E0            [24] 1315 	push	acc
      0003E3 74 27            [12] 1316 	mov	a,#(___str_15 >> 8)
      0003E5 C0 E0            [24] 1317 	push	acc
      0003E7 74 80            [12] 1318 	mov	a,#0x80
      0003E9 C0 E0            [24] 1319 	push	acc
      0003EB 12 1A 37         [24] 1320 	lcall	_printf
      0003EE 15 81            [12] 1321 	dec	sp
      0003F0 15 81            [12] 1322 	dec	sp
      0003F2 15 81            [12] 1323 	dec	sp
                                   1324 ;	program.c:351: main_menu();
                                   1325 ;	program.c:352: }
      0003F4 02 04 5E         [24] 1326 	ljmp	_main_menu
                                   1327 ;------------------------------------------------------------
                                   1328 ;Allocation info for local variables in function 'pca_pdown'
                                   1329 ;------------------------------------------------------------
                                   1330 ;	program.c:359: void pca_pdown()
                                   1331 ;	-----------------------------------------
                                   1332 ;	 function pca_pdown
                                   1333 ;	-----------------------------------------
      0003F7                       1334 _pca_pdown:
                                   1335 ;	program.c:361: pca_pwm();
      0003F7 12 02 FA         [24] 1336 	lcall	_pca_pwm
                                   1337 ;	program.c:362: printf("Entering power down, Will Exit on external interrupt 0\n\r");
      0003FA 74 3F            [12] 1338 	mov	a,#___str_16
      0003FC C0 E0            [24] 1339 	push	acc
      0003FE 74 27            [12] 1340 	mov	a,#(___str_16 >> 8)
      000400 C0 E0            [24] 1341 	push	acc
      000402 74 80            [12] 1342 	mov	a,#0x80
      000404 C0 E0            [24] 1343 	push	acc
      000406 12 1A 37         [24] 1344 	lcall	_printf
      000409 15 81            [12] 1345 	dec	sp
      00040B 15 81            [12] 1346 	dec	sp
      00040D 15 81            [12] 1347 	dec	sp
                                   1348 ;	program.c:363: EX0 = 1;
                                   1349 ;	assignBit
      00040F D2 A8            [12] 1350 	setb	_EX0
                                   1351 ;	program.c:364: PCON = PD;
      000411 75 87 02         [24] 1352 	mov	_PCON,#0x02
                                   1353 ;	program.c:365: printf("Woke up from Idle/Power down, going to main menu \n\r");
      000414 74 0B            [12] 1354 	mov	a,#___str_15
      000416 C0 E0            [24] 1355 	push	acc
      000418 74 27            [12] 1356 	mov	a,#(___str_15 >> 8)
      00041A C0 E0            [24] 1357 	push	acc
      00041C 74 80            [12] 1358 	mov	a,#0x80
      00041E C0 E0            [24] 1359 	push	acc
      000420 12 1A 37         [24] 1360 	lcall	_printf
      000423 15 81            [12] 1361 	dec	sp
      000425 15 81            [12] 1362 	dec	sp
      000427 15 81            [12] 1363 	dec	sp
                                   1364 ;	program.c:366: main_menu();
                                   1365 ;	program.c:367: }
      000429 02 04 5E         [24] 1366 	ljmp	_main_menu
                                   1367 ;------------------------------------------------------------
                                   1368 ;Allocation info for local variables in function 'fclk_lowest'
                                   1369 ;------------------------------------------------------------
                                   1370 ;	program.c:374: void fclk_lowest()
                                   1371 ;	-----------------------------------------
                                   1372 ;	 function fclk_lowest
                                   1373 ;	-----------------------------------------
      00042C                       1374 _fclk_lowest:
                                   1375 ;	program.c:376: printf("Changing Clock prescalar to go to lowest frequency in X2 Mode..\n\r");
      00042C 74 78            [12] 1376 	mov	a,#___str_17
      00042E C0 E0            [24] 1377 	push	acc
      000430 74 27            [12] 1378 	mov	a,#(___str_17 >> 8)
      000432 C0 E0            [24] 1379 	push	acc
      000434 74 80            [12] 1380 	mov	a,#0x80
      000436 C0 E0            [24] 1381 	push	acc
      000438 12 1A 37         [24] 1382 	lcall	_printf
      00043B 15 81            [12] 1383 	dec	sp
      00043D 15 81            [12] 1384 	dec	sp
      00043F 15 81            [12] 1385 	dec	sp
                                   1386 ;	program.c:377: printf("This UART Session will stop working...\n\r");
      000441 74 BA            [12] 1387 	mov	a,#___str_18
      000443 C0 E0            [24] 1388 	push	acc
      000445 74 27            [12] 1389 	mov	a,#(___str_18 >> 8)
      000447 C0 E0            [24] 1390 	push	acc
      000449 74 80            [12] 1391 	mov	a,#0x80
      00044B C0 E0            [24] 1392 	push	acc
      00044D 12 1A 37         [24] 1393 	lcall	_printf
      000450 15 81            [12] 1394 	dec	sp
      000452 15 81            [12] 1395 	dec	sp
      000454 15 81            [12] 1396 	dec	sp
                                   1397 ;	program.c:378: EX0 = 1;
                                   1398 ;	assignBit
      000456 D2 A8            [12] 1399 	setb	_EX0
                                   1400 ;	program.c:379: CKRL = 0;
      000458 75 97 00         [24] 1401 	mov	_CKRL,#0x00
                                   1402 ;	program.c:380: main_menu();
                                   1403 ;	program.c:381: }
      00045B 02 04 5E         [24] 1404 	ljmp	_main_menu
                                   1405 ;------------------------------------------------------------
                                   1406 ;Allocation info for local variables in function 'main_menu'
                                   1407 ;------------------------------------------------------------
                                   1408 ;inp                       Allocated with name '_main_menu_inp_65537_78'
                                   1409 ;------------------------------------------------------------
                                   1410 ;	program.c:388: void main_menu()
                                   1411 ;	-----------------------------------------
                                   1412 ;	 function main_menu
                                   1413 ;	-----------------------------------------
      00045E                       1414 _main_menu:
                                   1415 ;	program.c:390: printf("\n\n\r^^^^^^^^^^^^^^^^^^^-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ \n\n\r");
      00045E 74 E3            [12] 1416 	mov	a,#___str_19
      000460 C0 E0            [24] 1417 	push	acc
      000462 74 27            [12] 1418 	mov	a,#(___str_19 >> 8)
      000464 C0 E0            [24] 1419 	push	acc
      000466 74 80            [12] 1420 	mov	a,#0x80
      000468 C0 E0            [24] 1421 	push	acc
      00046A 12 1A 37         [24] 1422 	lcall	_printf
      00046D 15 81            [12] 1423 	dec	sp
      00046F 15 81            [12] 1424 	dec	sp
      000471 15 81            [12] 1425 	dec	sp
                                   1426 ;	program.c:391: printf("'H' -> Enter Heap Demo Mode \n\r");
      000473 74 1E            [12] 1427 	mov	a,#___str_20
      000475 C0 E0            [24] 1428 	push	acc
      000477 74 28            [12] 1429 	mov	a,#(___str_20 >> 8)
      000479 C0 E0            [24] 1430 	push	acc
      00047B 74 80            [12] 1431 	mov	a,#0x80
      00047D C0 E0            [24] 1432 	push	acc
      00047F 12 1A 37         [24] 1433 	lcall	_printf
      000482 15 81            [12] 1434 	dec	sp
      000484 15 81            [12] 1435 	dec	sp
      000486 15 81            [12] 1436 	dec	sp
                                   1437 ;	program.c:392: printf("'P' -> Enter PCA Demo Mode \n\r");
      000488 74 3D            [12] 1438 	mov	a,#___str_21
      00048A C0 E0            [24] 1439 	push	acc
      00048C 74 28            [12] 1440 	mov	a,#(___str_21 >> 8)
      00048E C0 E0            [24] 1441 	push	acc
      000490 74 80            [12] 1442 	mov	a,#0x80
      000492 C0 E0            [24] 1443 	push	acc
      000494 12 1A 37         [24] 1444 	lcall	_printf
      000497 15 81            [12] 1445 	dec	sp
      000499 15 81            [12] 1446 	dec	sp
      00049B 15 81            [12] 1447 	dec	sp
                                   1448 ;	program.c:393: printf("'A' -> Assembly C Mix \n\r");
      00049D 74 5B            [12] 1449 	mov	a,#___str_22
      00049F C0 E0            [24] 1450 	push	acc
      0004A1 74 28            [12] 1451 	mov	a,#(___str_22 >> 8)
      0004A3 C0 E0            [24] 1452 	push	acc
      0004A5 74 80            [12] 1453 	mov	a,#0x80
      0004A7 C0 E0            [24] 1454 	push	acc
      0004A9 12 1A 37         [24] 1455 	lcall	_printf
      0004AC 15 81            [12] 1456 	dec	sp
      0004AE 15 81            [12] 1457 	dec	sp
      0004B0 15 81            [12] 1458 	dec	sp
                                   1459 ;	program.c:394: printf("'E' -> EEPROM Mode \n\r");
      0004B2 74 74            [12] 1460 	mov	a,#___str_23
      0004B4 C0 E0            [24] 1461 	push	acc
      0004B6 74 28            [12] 1462 	mov	a,#(___str_23 >> 8)
      0004B8 C0 E0            [24] 1463 	push	acc
      0004BA 74 80            [12] 1464 	mov	a,#0x80
      0004BC C0 E0            [24] 1465 	push	acc
      0004BE 12 1A 37         [24] 1466 	lcall	_printf
      0004C1 15 81            [12] 1467 	dec	sp
      0004C3 15 81            [12] 1468 	dec	sp
      0004C5 15 81            [12] 1469 	dec	sp
                                   1470 ;	program.c:397: wrong_choice:
      0004C7                       1471 00101$:
                                   1472 ;	program.c:398: printf("Please make a valid choice \n\r");
      0004C7 74 8D            [12] 1473 	mov	a,#___str_1
      0004C9 C0 E0            [24] 1474 	push	acc
      0004CB 74 24            [12] 1475 	mov	a,#(___str_1 >> 8)
      0004CD C0 E0            [24] 1476 	push	acc
      0004CF 74 80            [12] 1477 	mov	a,#0x80
      0004D1 C0 E0            [24] 1478 	push	acc
      0004D3 12 1A 37         [24] 1479 	lcall	_printf
      0004D6 15 81            [12] 1480 	dec	sp
      0004D8 15 81            [12] 1481 	dec	sp
      0004DA 15 81            [12] 1482 	dec	sp
                                   1483 ;	program.c:399: inp = getchar();
      0004DC 12 14 C8         [24] 1484 	lcall	_getchar
      0004DF AE 82            [24] 1485 	mov	r6,dpl
      0004E1 AF 83            [24] 1486 	mov	r7,dph
                                   1487 ;	program.c:400: if (inp == 0x48)
      0004E3 BE 48 06         [24] 1488 	cjne	r6,#0x48,00112$
      0004E6 BF 00 03         [24] 1489 	cjne	r7,#0x00,00112$
                                   1490 ;	program.c:401: user_interface_heap();
      0004E9 02 00 98         [24] 1491 	ljmp	_user_interface_heap
      0004EC                       1492 00112$:
                                   1493 ;	program.c:402: else if (inp == 0x50)
      0004EC BE 50 06         [24] 1494 	cjne	r6,#0x50,00109$
      0004EF BF 00 03         [24] 1495 	cjne	r7,#0x00,00109$
                                   1496 ;	program.c:403: user_interface_PCA();
      0004F2 02 00 A7         [24] 1497 	ljmp	_user_interface_PCA
      0004F5                       1498 00109$:
                                   1499 ;	program.c:404: else if (inp == 0x41)
      0004F5 BE 41 06         [24] 1500 	cjne	r6,#0x41,00106$
      0004F8 BF 00 03         [24] 1501 	cjne	r7,#0x00,00106$
                                   1502 ;	program.c:405: asm_clang();
      0004FB 02 05 83         [24] 1503 	ljmp	_asm_clang
      0004FE                       1504 00106$:
                                   1505 ;	program.c:406: else if (inp == 0x45)
      0004FE BE 45 C6         [24] 1506 	cjne	r6,#0x45,00101$
      000501 BF 00 C3         [24] 1507 	cjne	r7,#0x00,00101$
                                   1508 ;	program.c:407: i2c_testasm();
                                   1509 ;	program.c:409: goto wrong_choice;
                                   1510 ;	program.c:410: }
      000504 02 05 07         [24] 1511 	ljmp	_i2c_testasm
                                   1512 ;------------------------------------------------------------
                                   1513 ;Allocation info for local variables in function 'i2c_testasm'
                                   1514 ;------------------------------------------------------------
                                   1515 ;i                         Allocated with name '_i2c_testasm_i_131072_80'
                                   1516 ;j                         Allocated with name '_i2c_testasm_j_262144_82'
                                   1517 ;r                         Allocated with name '_i2c_testasm_r_65537_84'
                                   1518 ;------------------------------------------------------------
                                   1519 ;	program.c:412: void i2c_testasm(){
                                   1520 ;	-----------------------------------------
                                   1521 ;	 function i2c_testasm
                                   1522 ;	-----------------------------------------
      000507                       1523 _i2c_testasm:
                                   1524 ;	program.c:413: i2c_init();
      000507 12 15 78         [24] 1525 	lcall	_i2c_init
                                   1526 ;	program.c:414: i2c_write_init(0);
      00050A 75 82 00         [24] 1527 	mov	dpl,#0x00
      00050D 12 15 85         [24] 1528 	lcall	_i2c_write_init
                                   1529 ;	program.c:415: i2c_addr(0x44);
      000510 75 82 44         [24] 1530 	mov	dpl,#0x44
      000513 12 15 CB         [24] 1531 	lcall	_i2c_addr
                                   1532 ;	program.c:416: i2c_write_val(0x77);
      000516 75 82 77         [24] 1533 	mov	dpl,#0x77
      000519 12 15 D3         [24] 1534 	lcall	_i2c_write_val
                                   1535 ;	program.c:417: i2c_stop();
      00051C 12 15 DB         [24] 1536 	lcall	_i2c_stop
                                   1537 ;	program.c:418: for(int i = 0; i<5000; i++){
      00051F 7E 00            [12] 1538 	mov	r6,#0x00
      000521 7F 00            [12] 1539 	mov	r7,#0x00
      000523                       1540 00110$:
      000523 C3               [12] 1541 	clr	c
      000524 EE               [12] 1542 	mov	a,r6
      000525 94 88            [12] 1543 	subb	a,#0x88
      000527 EF               [12] 1544 	mov	a,r7
      000528 64 80            [12] 1545 	xrl	a,#0x80
      00052A 94 93            [12] 1546 	subb	a,#0x93
      00052C 50 1D            [24] 1547 	jnc	00102$
                                   1548 ;	program.c:419: for(int j=0; j<500;j++){
      00052E 7C 00            [12] 1549 	mov	r4,#0x00
      000530 7D 00            [12] 1550 	mov	r5,#0x00
      000532                       1551 00107$:
      000532 C3               [12] 1552 	clr	c
      000533 EC               [12] 1553 	mov	a,r4
      000534 94 F4            [12] 1554 	subb	a,#0xf4
      000536 ED               [12] 1555 	mov	a,r5
      000537 64 80            [12] 1556 	xrl	a,#0x80
      000539 94 81            [12] 1557 	subb	a,#0x81
      00053B 50 07            [24] 1558 	jnc	00111$
      00053D 0C               [12] 1559 	inc	r4
      00053E BC 00 F1         [24] 1560 	cjne	r4,#0x00,00107$
      000541 0D               [12] 1561 	inc	r5
      000542 80 EE            [24] 1562 	sjmp	00107$
      000544                       1563 00111$:
                                   1564 ;	program.c:418: for(int i = 0; i<5000; i++){
      000544 0E               [12] 1565 	inc	r6
      000545 BE 00 DB         [24] 1566 	cjne	r6,#0x00,00110$
      000548 0F               [12] 1567 	inc	r7
      000549 80 D8            [24] 1568 	sjmp	00110$
      00054B                       1569 00102$:
                                   1570 ;	program.c:424: int r = getchar();    
      00054B 12 14 C8         [24] 1571 	lcall	_getchar
                                   1572 ;	program.c:426: i2c_init();
      00054E 12 15 78         [24] 1573 	lcall	_i2c_init
                                   1574 ;	program.c:427: i2c_write_init(0);
      000551 75 82 00         [24] 1575 	mov	dpl,#0x00
      000554 12 15 85         [24] 1576 	lcall	_i2c_write_init
                                   1577 ;	program.c:428: i2c_addr(0x44);
      000557 75 82 44         [24] 1578 	mov	dpl,#0x44
      00055A 12 15 CB         [24] 1579 	lcall	_i2c_addr
                                   1580 ;	program.c:429: i2c_init();
      00055D 12 15 78         [24] 1581 	lcall	_i2c_init
                                   1582 ;	program.c:430: i2c_read_init(0);
      000560 75 82 00         [24] 1583 	mov	dpl,#0x00
      000563 12 15 90         [24] 1584 	lcall	_i2c_read_init
                                   1585 ;	program.c:431: i2c_read_val();
      000566 12 15 9B         [24] 1586 	lcall	_i2c_read_val
                                   1587 ;	program.c:432: i2c_stop();
      000569 12 15 DB         [24] 1588 	lcall	_i2c_stop
                                   1589 ;	program.c:433: printf("Maybe byte has been written \n\r");
      00056C 74 8A            [12] 1590 	mov	a,#___str_24
      00056E C0 E0            [24] 1591 	push	acc
      000570 74 28            [12] 1592 	mov	a,#(___str_24 >> 8)
      000572 C0 E0            [24] 1593 	push	acc
      000574 74 80            [12] 1594 	mov	a,#0x80
      000576 C0 E0            [24] 1595 	push	acc
      000578 12 1A 37         [24] 1596 	lcall	_printf
      00057B 15 81            [12] 1597 	dec	sp
      00057D 15 81            [12] 1598 	dec	sp
      00057F 15 81            [12] 1599 	dec	sp
                                   1600 ;	program.c:434: while(1){
      000581                       1601 00104$:
                                   1602 ;	program.c:438: }
      000581 80 FE            [24] 1603 	sjmp	00104$
                                   1604 ;------------------------------------------------------------
                                   1605 ;Allocation info for local variables in function 'asm_clang'
                                   1606 ;------------------------------------------------------------
                                   1607 ;num1                      Allocated with name '_asm_clang_num1_65537_87'
                                   1608 ;num2                      Allocated with name '_asm_clang_num2_65538_88'
                                   1609 ;num3                      Allocated with name '_asm_clang_num3_65539_89'
                                   1610 ;------------------------------------------------------------
                                   1611 ;	program.c:445: void asm_clang()
                                   1612 ;	-----------------------------------------
                                   1613 ;	 function asm_clang
                                   1614 ;	-----------------------------------------
      000583                       1615 _asm_clang:
                                   1616 ;	program.c:447: printf("\n\r Give param 1, 8bit \n\r");
      000583 74 A9            [12] 1617 	mov	a,#___str_25
      000585 C0 E0            [24] 1618 	push	acc
      000587 74 28            [12] 1619 	mov	a,#(___str_25 >> 8)
      000589 C0 E0            [24] 1620 	push	acc
      00058B 74 80            [12] 1621 	mov	a,#0x80
      00058D C0 E0            [24] 1622 	push	acc
      00058F 12 1A 37         [24] 1623 	lcall	_printf
      000592 15 81            [12] 1624 	dec	sp
      000594 15 81            [12] 1625 	dec	sp
      000596 15 81            [12] 1626 	dec	sp
                                   1627 ;	program.c:448: unsigned char num1 = get_number(3);
      000598 90 00 03         [24] 1628 	mov	dptr,#0x0003
      00059B 12 13 54         [24] 1629 	lcall	_get_number
      00059E AE 82            [24] 1630 	mov	r6,dpl
                                   1631 ;	program.c:449: printf("\n\r Give param 2, 8bit \n\r");
      0005A0 C0 06            [24] 1632 	push	ar6
      0005A2 74 C2            [12] 1633 	mov	a,#___str_26
      0005A4 C0 E0            [24] 1634 	push	acc
      0005A6 74 28            [12] 1635 	mov	a,#(___str_26 >> 8)
      0005A8 C0 E0            [24] 1636 	push	acc
      0005AA 74 80            [12] 1637 	mov	a,#0x80
      0005AC C0 E0            [24] 1638 	push	acc
      0005AE 12 1A 37         [24] 1639 	lcall	_printf
      0005B1 15 81            [12] 1640 	dec	sp
      0005B3 15 81            [12] 1641 	dec	sp
      0005B5 15 81            [12] 1642 	dec	sp
                                   1643 ;	program.c:450: unsigned char num2 = get_number(3);
      0005B7 90 00 03         [24] 1644 	mov	dptr,#0x0003
      0005BA 12 13 54         [24] 1645 	lcall	_get_number
      0005BD AD 82            [24] 1646 	mov	r5,dpl
                                   1647 ;	program.c:451: printf("\n\r Give param 3, 8bit \n\r");
      0005BF C0 05            [24] 1648 	push	ar5
      0005C1 74 DB            [12] 1649 	mov	a,#___str_27
      0005C3 C0 E0            [24] 1650 	push	acc
      0005C5 74 28            [12] 1651 	mov	a,#(___str_27 >> 8)
      0005C7 C0 E0            [24] 1652 	push	acc
      0005C9 74 80            [12] 1653 	mov	a,#0x80
      0005CB C0 E0            [24] 1654 	push	acc
      0005CD 12 1A 37         [24] 1655 	lcall	_printf
      0005D0 15 81            [12] 1656 	dec	sp
      0005D2 15 81            [12] 1657 	dec	sp
      0005D4 15 81            [12] 1658 	dec	sp
                                   1659 ;	program.c:452: unsigned char num3 = get_number(3);
      0005D6 90 00 03         [24] 1660 	mov	dptr,#0x0003
      0005D9 12 13 54         [24] 1661 	lcall	_get_number
      0005DC AC 82            [24] 1662 	mov	r4,dpl
      0005DE D0 05            [24] 1663 	pop	ar5
      0005E0 D0 06            [24] 1664 	pop	ar6
                                   1665 ;	program.c:454: printf("\n\r RESULT-> param3<Mod>param2 * param1 = %d \n\r", asmtest(num1, num2, num3));
      0005E2 90 00 1A         [24] 1666 	mov	dptr,#_asmtest_PARM_2
      0005E5 ED               [12] 1667 	mov	a,r5
      0005E6 F0               [24] 1668 	movx	@dptr,a
      0005E7 90 00 1B         [24] 1669 	mov	dptr,#_asmtest_PARM_3
      0005EA EC               [12] 1670 	mov	a,r4
      0005EB F0               [24] 1671 	movx	@dptr,a
      0005EC 8E 82            [24] 1672 	mov	dpl,r6
      0005EE 12 15 55         [24] 1673 	lcall	_asmtest
      0005F1 AF 82            [24] 1674 	mov	r7,dpl
      0005F3 7E 00            [12] 1675 	mov	r6,#0x00
      0005F5 C0 07            [24] 1676 	push	ar7
      0005F7 C0 06            [24] 1677 	push	ar6
      0005F9 74 F4            [12] 1678 	mov	a,#___str_28
      0005FB C0 E0            [24] 1679 	push	acc
      0005FD 74 28            [12] 1680 	mov	a,#(___str_28 >> 8)
      0005FF C0 E0            [24] 1681 	push	acc
      000601 74 80            [12] 1682 	mov	a,#0x80
      000603 C0 E0            [24] 1683 	push	acc
      000605 12 1A 37         [24] 1684 	lcall	_printf
      000608 E5 81            [12] 1685 	mov	a,sp
      00060A 24 FB            [12] 1686 	add	a,#0xfb
      00060C F5 81            [12] 1687 	mov	sp,a
                                   1688 ;	program.c:455: printf("\n\r Going back to main menu.. \n\r");
      00060E 74 23            [12] 1689 	mov	a,#___str_29
      000610 C0 E0            [24] 1690 	push	acc
      000612 74 29            [12] 1691 	mov	a,#(___str_29 >> 8)
      000614 C0 E0            [24] 1692 	push	acc
      000616 74 80            [12] 1693 	mov	a,#0x80
      000618 C0 E0            [24] 1694 	push	acc
      00061A 12 1A 37         [24] 1695 	lcall	_printf
      00061D 15 81            [12] 1696 	dec	sp
      00061F 15 81            [12] 1697 	dec	sp
      000621 15 81            [12] 1698 	dec	sp
                                   1699 ;	program.c:456: main_menu();
                                   1700 ;	program.c:457: }
      000623 02 04 5E         [24] 1701 	ljmp	_main_menu
                                   1702 ;------------------------------------------------------------
                                   1703 ;Allocation info for local variables in function 'at_clear_all_buffers'
                                   1704 ;------------------------------------------------------------
                                   1705 ;i                         Allocated with name '_at_clear_all_buffers_i_131072_91'
                                   1706 ;------------------------------------------------------------
                                   1707 ;	program.c:465: void at_clear_all_buffers()
                                   1708 ;	-----------------------------------------
                                   1709 ;	 function at_clear_all_buffers
                                   1710 ;	-----------------------------------------
      000626                       1711 _at_clear_all_buffers:
                                   1712 ;	program.c:467: DEBUGPORT(0x03);
      000626 75 82 03         [24] 1713 	mov	dpl,#0x03
      000629 12 15 04         [24] 1714 	lcall	_dataout
                                   1715 ;	program.c:468: for (int i = 0; i < program_stats.total_buffers; i++)
      00062C 7E 00            [12] 1716 	mov	r6,#0x00
      00062E 7F 00            [12] 1717 	mov	r7,#0x00
      000630                       1718 00103$:
      000630 90 00 09         [24] 1719 	mov	dptr,#(_program_stats + 0x0008)
      000633 E0               [24] 1720 	movx	a,@dptr
      000634 FC               [12] 1721 	mov	r4,a
      000635 A3               [24] 1722 	inc	dptr
      000636 E0               [24] 1723 	movx	a,@dptr
      000637 FD               [12] 1724 	mov	r5,a
      000638 C3               [12] 1725 	clr	c
      000639 EE               [12] 1726 	mov	a,r6
      00063A 9C               [12] 1727 	subb	a,r4
      00063B EF               [12] 1728 	mov	a,r7
      00063C 64 80            [12] 1729 	xrl	a,#0x80
      00063E 8D F0            [24] 1730 	mov	b,r5
      000640 63 F0 80         [24] 1731 	xrl	b,#0x80
      000643 95 F0            [12] 1732 	subb	a,b
      000645 50 61            [24] 1733 	jnc	00101$
                                   1734 ;	program.c:470: free(buffers_array[i].buffer_start);
      000647 90 15 0F         [24] 1735 	mov	dptr,#__mulint_PARM_2
      00064A EE               [12] 1736 	mov	a,r6
      00064B F0               [24] 1737 	movx	@dptr,a
      00064C EF               [12] 1738 	mov	a,r7
      00064D A3               [24] 1739 	inc	dptr
      00064E F0               [24] 1740 	movx	@dptr,a
      00064F 90 00 0C         [24] 1741 	mov	dptr,#0x000c
      000652 C0 07            [24] 1742 	push	ar7
      000654 C0 06            [24] 1743 	push	ar6
      000656 12 19 C9         [24] 1744 	lcall	__mulint
      000659 AC 82            [24] 1745 	mov	r4,dpl
      00065B AD 83            [24] 1746 	mov	r5,dph
      00065D EC               [12] 1747 	mov	a,r4
      00065E 24 0B            [12] 1748 	add	a,#_buffers_array
      000660 FC               [12] 1749 	mov	r4,a
      000661 ED               [12] 1750 	mov	a,r5
      000662 34 00            [12] 1751 	addc	a,#(_buffers_array >> 8)
      000664 FD               [12] 1752 	mov	r5,a
      000665 8C 82            [24] 1753 	mov	dpl,r4
      000667 8D 83            [24] 1754 	mov	dph,r5
      000669 A3               [24] 1755 	inc	dptr
      00066A A3               [24] 1756 	inc	dptr
      00066B E0               [24] 1757 	movx	a,@dptr
      00066C FB               [12] 1758 	mov	r3,a
      00066D A3               [24] 1759 	inc	dptr
      00066E E0               [24] 1760 	movx	a,@dptr
      00066F FC               [12] 1761 	mov	r4,a
      000670 A3               [24] 1762 	inc	dptr
      000671 E0               [24] 1763 	movx	a,@dptr
      000672 FD               [12] 1764 	mov	r5,a
      000673 8B 82            [24] 1765 	mov	dpl,r3
      000675 8C 83            [24] 1766 	mov	dph,r4
      000677 8D F0            [24] 1767 	mov	b,r5
      000679 12 16 3E         [24] 1768 	lcall	_free
      00067C D0 06            [24] 1769 	pop	ar6
      00067E D0 07            [24] 1770 	pop	ar7
                                   1771 ;	program.c:471: printf("Buffer %d Freed ....\n\r", i);
      000680 C0 07            [24] 1772 	push	ar7
      000682 C0 06            [24] 1773 	push	ar6
      000684 C0 06            [24] 1774 	push	ar6
      000686 C0 07            [24] 1775 	push	ar7
      000688 74 43            [12] 1776 	mov	a,#___str_30
      00068A C0 E0            [24] 1777 	push	acc
      00068C 74 29            [12] 1778 	mov	a,#(___str_30 >> 8)
      00068E C0 E0            [24] 1779 	push	acc
      000690 74 80            [12] 1780 	mov	a,#0x80
      000692 C0 E0            [24] 1781 	push	acc
      000694 12 1A 37         [24] 1782 	lcall	_printf
      000697 E5 81            [12] 1783 	mov	a,sp
      000699 24 FB            [12] 1784 	add	a,#0xfb
      00069B F5 81            [12] 1785 	mov	sp,a
      00069D D0 06            [24] 1786 	pop	ar6
      00069F D0 07            [24] 1787 	pop	ar7
                                   1788 ;	program.c:468: for (int i = 0; i < program_stats.total_buffers; i++)
      0006A1 0E               [12] 1789 	inc	r6
      0006A2 BE 00 8B         [24] 1790 	cjne	r6,#0x00,00103$
      0006A5 0F               [12] 1791 	inc	r7
      0006A6 80 88            [24] 1792 	sjmp	00103$
      0006A8                       1793 00101$:
                                   1794 ;	program.c:473: printf("Let's begin again..\n\r");
      0006A8 74 5A            [12] 1795 	mov	a,#___str_31
      0006AA C0 E0            [24] 1796 	push	acc
      0006AC 74 29            [12] 1797 	mov	a,#(___str_31 >> 8)
      0006AE C0 E0            [24] 1798 	push	acc
      0006B0 74 80            [12] 1799 	mov	a,#0x80
      0006B2 C0 E0            [24] 1800 	push	acc
      0006B4 12 1A 37         [24] 1801 	lcall	_printf
      0006B7 15 81            [12] 1802 	dec	sp
      0006B9 15 81            [12] 1803 	dec	sp
      0006BB 15 81            [12] 1804 	dec	sp
                                   1805 ;	program.c:474: user_interface_heap();
                                   1806 ;	program.c:475: }
      0006BD 02 00 98         [24] 1807 	ljmp	_user_interface_heap
                                   1808 ;------------------------------------------------------------
                                   1809 ;Allocation info for local variables in function 'delete_buffer'
                                   1810 ;------------------------------------------------------------
                                   1811 ;sloc0                     Allocated with name '_delete_buffer_sloc0_1_0'
                                   1812 ;sloc1                     Allocated with name '_delete_buffer_sloc1_1_0'
                                   1813 ;sloc2                     Allocated with name '_delete_buffer_sloc2_1_0'
                                   1814 ;buff_number               Allocated with name '_delete_buffer_buff_number_65537_94'
                                   1815 ;buff_to_free              Allocated with name '_delete_buffer_buff_to_free_65537_94'
                                   1816 ;buffer_freed_size         Allocated with name '_delete_buffer_buffer_freed_size_65537_94'
                                   1817 ;i                         Allocated with name '_delete_buffer_i_196609_96'
                                   1818 ;------------------------------------------------------------
                                   1819 ;	program.c:482: int delete_buffer()
                                   1820 ;	-----------------------------------------
                                   1821 ;	 function delete_buffer
                                   1822 ;	-----------------------------------------
      0006C0                       1823 _delete_buffer:
                                   1824 ;	program.c:484: DEBUGPORT(0x04);
      0006C0 75 82 04         [24] 1825 	mov	dpl,#0x04
      0006C3 12 15 04         [24] 1826 	lcall	_dataout
                                   1827 ;	program.c:488: get_del_num:
      0006C6                       1828 00101$:
                                   1829 ;	program.c:489: printf("\n\rGive Valid Buffer Number to delete(1-%d) in 3 digits\n\r", (program_stats.total_buffers - 1));
      0006C6 90 00 09         [24] 1830 	mov	dptr,#(_program_stats + 0x0008)
      0006C9 E0               [24] 1831 	movx	a,@dptr
      0006CA FE               [12] 1832 	mov	r6,a
      0006CB A3               [24] 1833 	inc	dptr
      0006CC E0               [24] 1834 	movx	a,@dptr
      0006CD FF               [12] 1835 	mov	r7,a
      0006CE 1E               [12] 1836 	dec	r6
      0006CF BE FF 01         [24] 1837 	cjne	r6,#0xff,00139$
      0006D2 1F               [12] 1838 	dec	r7
      0006D3                       1839 00139$:
      0006D3 C0 06            [24] 1840 	push	ar6
      0006D5 C0 07            [24] 1841 	push	ar7
      0006D7 74 70            [12] 1842 	mov	a,#___str_32
      0006D9 C0 E0            [24] 1843 	push	acc
      0006DB 74 29            [12] 1844 	mov	a,#(___str_32 >> 8)
      0006DD C0 E0            [24] 1845 	push	acc
      0006DF 74 80            [12] 1846 	mov	a,#0x80
      0006E1 C0 E0            [24] 1847 	push	acc
      0006E3 12 1A 37         [24] 1848 	lcall	_printf
      0006E6 E5 81            [12] 1849 	mov	a,sp
      0006E8 24 FB            [12] 1850 	add	a,#0xfb
      0006EA F5 81            [12] 1851 	mov	sp,a
                                   1852 ;	program.c:490: buff_number = get_number(3);
      0006EC 90 00 03         [24] 1853 	mov	dptr,#0x0003
      0006EF 12 13 54         [24] 1854 	lcall	_get_number
      0006F2 AE 82            [24] 1855 	mov	r6,dpl
      0006F4 AF 83            [24] 1856 	mov	r7,dph
                                   1857 ;	program.c:492: if (buff_number > 0 && buff_number < program_stats.total_buffers)
      0006F6 C3               [12] 1858 	clr	c
      0006F7 E4               [12] 1859 	clr	a
      0006F8 9E               [12] 1860 	subb	a,r6
      0006F9 74 80            [12] 1861 	mov	a,#(0x00 ^ 0x80)
      0006FB 8F F0            [24] 1862 	mov	b,r7
      0006FD 63 F0 80         [24] 1863 	xrl	b,#0x80
      000700 95 F0            [12] 1864 	subb	a,b
      000702 50 C2            [24] 1865 	jnc	00101$
      000704 90 00 09         [24] 1866 	mov	dptr,#(_program_stats + 0x0008)
      000707 E0               [24] 1867 	movx	a,@dptr
      000708 FC               [12] 1868 	mov	r4,a
      000709 A3               [24] 1869 	inc	dptr
      00070A E0               [24] 1870 	movx	a,@dptr
      00070B FD               [12] 1871 	mov	r5,a
      00070C C3               [12] 1872 	clr	c
      00070D EE               [12] 1873 	mov	a,r6
      00070E 9C               [12] 1874 	subb	a,r4
      00070F EF               [12] 1875 	mov	a,r7
      000710 64 80            [12] 1876 	xrl	a,#0x80
      000712 8D F0            [24] 1877 	mov	b,r5
      000714 63 F0 80         [24] 1878 	xrl	b,#0x80
      000717 95 F0            [12] 1879 	subb	a,b
      000719 50 AB            [24] 1880 	jnc	00101$
                                   1881 ;	program.c:496: buff_to_free = buffers_array[buff_number].buffer_start;
      00071B 90 15 0F         [24] 1882 	mov	dptr,#__mulint_PARM_2
      00071E EE               [12] 1883 	mov	a,r6
      00071F F0               [24] 1884 	movx	@dptr,a
      000720 EF               [12] 1885 	mov	a,r7
      000721 A3               [24] 1886 	inc	dptr
      000722 F0               [24] 1887 	movx	@dptr,a
      000723 90 00 0C         [24] 1888 	mov	dptr,#0x000c
      000726 C0 07            [24] 1889 	push	ar7
      000728 C0 06            [24] 1890 	push	ar6
      00072A 12 19 C9         [24] 1891 	lcall	__mulint
      00072D AC 82            [24] 1892 	mov	r4,dpl
      00072F AD 83            [24] 1893 	mov	r5,dph
      000731 D0 06            [24] 1894 	pop	ar6
      000733 D0 07            [24] 1895 	pop	ar7
      000735 EC               [12] 1896 	mov	a,r4
      000736 24 0B            [12] 1897 	add	a,#_buffers_array
      000738 FC               [12] 1898 	mov	r4,a
      000739 ED               [12] 1899 	mov	a,r5
      00073A 34 00            [12] 1900 	addc	a,#(_buffers_array >> 8)
      00073C FD               [12] 1901 	mov	r5,a
      00073D 8C 82            [24] 1902 	mov	dpl,r4
      00073F 8D 83            [24] 1903 	mov	dph,r5
      000741 A3               [24] 1904 	inc	dptr
      000742 A3               [24] 1905 	inc	dptr
      000743 E0               [24] 1906 	movx	a,@dptr
      000744 F5 14            [12] 1907 	mov	_delete_buffer_sloc2_1_0,a
      000746 A3               [24] 1908 	inc	dptr
      000747 E0               [24] 1909 	movx	a,@dptr
      000748 F5 15            [12] 1910 	mov	(_delete_buffer_sloc2_1_0 + 1),a
      00074A A3               [24] 1911 	inc	dptr
      00074B E0               [24] 1912 	movx	a,@dptr
      00074C F5 16            [12] 1913 	mov	(_delete_buffer_sloc2_1_0 + 2),a
                                   1914 ;	program.c:497: buffer_freed_size = buffers_array[buff_number].buff_size;
      00074E 74 08            [12] 1915 	mov	a,#0x08
      000750 2C               [12] 1916 	add	a,r4
      000751 F5 82            [12] 1917 	mov	dpl,a
      000753 E4               [12] 1918 	clr	a
      000754 3D               [12] 1919 	addc	a,r5
      000755 F5 83            [12] 1920 	mov	dph,a
      000757 E0               [24] 1921 	movx	a,@dptr
      000758 FC               [12] 1922 	mov	r4,a
      000759 A3               [24] 1923 	inc	dptr
      00075A E0               [24] 1924 	movx	a,@dptr
      00075B FD               [12] 1925 	mov	r5,a
                                   1926 ;	program.c:499: for (int i = 0; i < (program_stats.total_buffers - 1); i++)
      00075C E4               [12] 1927 	clr	a
      00075D F5 10            [12] 1928 	mov	_delete_buffer_sloc0_1_0,a
      00075F F5 11            [12] 1929 	mov	(_delete_buffer_sloc0_1_0 + 1),a
      000761                       1930 00110$:
      000761 C0 04            [24] 1931 	push	ar4
      000763 C0 05            [24] 1932 	push	ar5
      000765 90 00 09         [24] 1933 	mov	dptr,#(_program_stats + 0x0008)
      000768 E0               [24] 1934 	movx	a,@dptr
      000769 F5 12            [12] 1935 	mov	_delete_buffer_sloc1_1_0,a
      00076B A3               [24] 1936 	inc	dptr
      00076C E0               [24] 1937 	movx	a,@dptr
      00076D F5 13            [12] 1938 	mov	(_delete_buffer_sloc1_1_0 + 1),a
      00076F E5 12            [12] 1939 	mov	a,_delete_buffer_sloc1_1_0
      000771 24 FF            [12] 1940 	add	a,#0xff
      000773 F8               [12] 1941 	mov	r0,a
      000774 E5 13            [12] 1942 	mov	a,(_delete_buffer_sloc1_1_0 + 1)
      000776 34 FF            [12] 1943 	addc	a,#0xff
      000778 FD               [12] 1944 	mov	r5,a
      000779 C3               [12] 1945 	clr	c
      00077A E5 10            [12] 1946 	mov	a,_delete_buffer_sloc0_1_0
      00077C 98               [12] 1947 	subb	a,r0
      00077D E5 11            [12] 1948 	mov	a,(_delete_buffer_sloc0_1_0 + 1)
      00077F 64 80            [12] 1949 	xrl	a,#0x80
      000781 8D F0            [24] 1950 	mov	b,r5
      000783 63 F0 80         [24] 1951 	xrl	b,#0x80
      000786 95 F0            [12] 1952 	subb	a,b
      000788 D0 05            [24] 1953 	pop	ar5
      00078A D0 04            [24] 1954 	pop	ar4
      00078C 40 03            [24] 1955 	jc	00142$
      00078E 02 08 3F         [24] 1956 	ljmp	00104$
      000791                       1957 00142$:
                                   1958 ;	program.c:501: if (i >= buff_number)
      000791 C3               [12] 1959 	clr	c
      000792 E5 10            [12] 1960 	mov	a,_delete_buffer_sloc0_1_0
      000794 9E               [12] 1961 	subb	a,r6
      000795 E5 11            [12] 1962 	mov	a,(_delete_buffer_sloc0_1_0 + 1)
      000797 64 80            [12] 1963 	xrl	a,#0x80
      000799 8F F0            [24] 1964 	mov	b,r7
      00079B 63 F0 80         [24] 1965 	xrl	b,#0x80
      00079E 95 F0            [12] 1966 	subb	a,b
      0007A0 50 03            [24] 1967 	jnc	00143$
      0007A2 02 08 34         [24] 1968 	ljmp	00111$
      0007A5                       1969 00143$:
                                   1970 ;	program.c:503: buffers_array[i + 1].buffer_num = i;
      0007A5 C0 04            [24] 1971 	push	ar4
      0007A7 C0 05            [24] 1972 	push	ar5
      0007A9 90 15 0F         [24] 1973 	mov	dptr,#__mulint_PARM_2
      0007AC 74 01            [12] 1974 	mov	a,#0x01
      0007AE 25 10            [12] 1975 	add	a,_delete_buffer_sloc0_1_0
      0007B0 F0               [24] 1976 	movx	@dptr,a
      0007B1 E4               [12] 1977 	clr	a
      0007B2 35 11            [12] 1978 	addc	a,(_delete_buffer_sloc0_1_0 + 1)
      0007B4 A3               [24] 1979 	inc	dptr
      0007B5 F0               [24] 1980 	movx	@dptr,a
      0007B6 90 00 0C         [24] 1981 	mov	dptr,#0x000c
      0007B9 C0 07            [24] 1982 	push	ar7
      0007BB C0 06            [24] 1983 	push	ar6
      0007BD C0 04            [24] 1984 	push	ar4
      0007BF 12 19 C9         [24] 1985 	lcall	__mulint
      0007C2 A8 82            [24] 1986 	mov	r0,dpl
      0007C4 AD 83            [24] 1987 	mov	r5,dph
      0007C6 D0 04            [24] 1988 	pop	ar4
      0007C8 E8               [12] 1989 	mov	a,r0
      0007C9 24 0B            [12] 1990 	add	a,#_buffers_array
      0007CB F5 82            [12] 1991 	mov	dpl,a
      0007CD ED               [12] 1992 	mov	a,r5
      0007CE 34 00            [12] 1993 	addc	a,#(_buffers_array >> 8)
      0007D0 F5 83            [12] 1994 	mov	dph,a
      0007D2 E5 10            [12] 1995 	mov	a,_delete_buffer_sloc0_1_0
      0007D4 F0               [24] 1996 	movx	@dptr,a
      0007D5 E5 11            [12] 1997 	mov	a,(_delete_buffer_sloc0_1_0 + 1)
      0007D7 A3               [24] 1998 	inc	dptr
      0007D8 F0               [24] 1999 	movx	@dptr,a
                                   2000 ;	program.c:504: buffers_array[i] = buffers_array[i + 1];
      0007D9 90 15 0F         [24] 2001 	mov	dptr,#__mulint_PARM_2
      0007DC E5 10            [12] 2002 	mov	a,_delete_buffer_sloc0_1_0
      0007DE F0               [24] 2003 	movx	@dptr,a
      0007DF E5 11            [12] 2004 	mov	a,(_delete_buffer_sloc0_1_0 + 1)
      0007E1 A3               [24] 2005 	inc	dptr
      0007E2 F0               [24] 2006 	movx	@dptr,a
      0007E3 90 00 0C         [24] 2007 	mov	dptr,#0x000c
      0007E6 C0 05            [24] 2008 	push	ar5
      0007E8 C0 00            [24] 2009 	push	ar0
      0007EA 12 19 C9         [24] 2010 	lcall	__mulint
      0007ED AB 82            [24] 2011 	mov	r3,dpl
      0007EF AC 83            [24] 2012 	mov	r4,dph
      0007F1 D0 00            [24] 2013 	pop	ar0
      0007F3 D0 05            [24] 2014 	pop	ar5
      0007F5 EB               [12] 2015 	mov	a,r3
      0007F6 24 0B            [12] 2016 	add	a,#_buffers_array
      0007F8 FB               [12] 2017 	mov	r3,a
      0007F9 EC               [12] 2018 	mov	a,r4
      0007FA 34 00            [12] 2019 	addc	a,#(_buffers_array >> 8)
      0007FC FC               [12] 2020 	mov	r4,a
      0007FD 7A 00            [12] 2021 	mov	r2,#0x00
      0007FF E8               [12] 2022 	mov	a,r0
      000800 24 0B            [12] 2023 	add	a,#_buffers_array
      000802 F8               [12] 2024 	mov	r0,a
      000803 ED               [12] 2025 	mov	a,r5
      000804 34 00            [12] 2026 	addc	a,#(_buffers_array >> 8)
      000806 FD               [12] 2027 	mov	r5,a
      000807 90 14 FE         [24] 2028 	mov	dptr,#___memcpy_PARM_2
      00080A E8               [12] 2029 	mov	a,r0
      00080B F0               [24] 2030 	movx	@dptr,a
      00080C ED               [12] 2031 	mov	a,r5
      00080D A3               [24] 2032 	inc	dptr
      00080E F0               [24] 2033 	movx	@dptr,a
      00080F E4               [12] 2034 	clr	a
      000810 A3               [24] 2035 	inc	dptr
      000811 F0               [24] 2036 	movx	@dptr,a
      000812 90 15 01         [24] 2037 	mov	dptr,#___memcpy_PARM_3
      000815 74 0C            [12] 2038 	mov	a,#0x0c
      000817 F0               [24] 2039 	movx	@dptr,a
      000818 E4               [12] 2040 	clr	a
      000819 A3               [24] 2041 	inc	dptr
      00081A F0               [24] 2042 	movx	@dptr,a
      00081B 8B 82            [24] 2043 	mov	dpl,r3
      00081D 8C 83            [24] 2044 	mov	dph,r4
      00081F 8A F0            [24] 2045 	mov	b,r2
      000821 C0 05            [24] 2046 	push	ar5
      000823 C0 04            [24] 2047 	push	ar4
      000825 12 17 95         [24] 2048 	lcall	___memcpy
      000828 D0 04            [24] 2049 	pop	ar4
      00082A D0 05            [24] 2050 	pop	ar5
      00082C D0 06            [24] 2051 	pop	ar6
      00082E D0 07            [24] 2052 	pop	ar7
                                   2053 ;	program.c:517: goto get_del_num;
      000830 D0 05            [24] 2054 	pop	ar5
      000832 D0 04            [24] 2055 	pop	ar4
                                   2056 ;	program.c:504: buffers_array[i] = buffers_array[i + 1];
      000834                       2057 00111$:
                                   2058 ;	program.c:499: for (int i = 0; i < (program_stats.total_buffers - 1); i++)
      000834 05 10            [12] 2059 	inc	_delete_buffer_sloc0_1_0
      000836 E4               [12] 2060 	clr	a
      000837 B5 10 02         [24] 2061 	cjne	a,_delete_buffer_sloc0_1_0,00144$
      00083A 05 11            [12] 2062 	inc	(_delete_buffer_sloc0_1_0 + 1)
      00083C                       2063 00144$:
      00083C 02 07 61         [24] 2064 	ljmp	00110$
      00083F                       2065 00104$:
                                   2066 ;	program.c:508: program_stats.total_buffers -= 1;
      00083F E5 12            [12] 2067 	mov	a,_delete_buffer_sloc1_1_0
      000841 24 FF            [12] 2068 	add	a,#0xff
      000843 FA               [12] 2069 	mov	r2,a
      000844 E5 13            [12] 2070 	mov	a,(_delete_buffer_sloc1_1_0 + 1)
      000846 34 FF            [12] 2071 	addc	a,#0xff
      000848 FB               [12] 2072 	mov	r3,a
      000849 90 00 09         [24] 2073 	mov	dptr,#(_program_stats + 0x0008)
      00084C EA               [12] 2074 	mov	a,r2
      00084D F0               [24] 2075 	movx	@dptr,a
      00084E EB               [12] 2076 	mov	a,r3
      00084F A3               [24] 2077 	inc	dptr
      000850 F0               [24] 2078 	movx	@dptr,a
                                   2079 ;	program.c:509: program_stats.allocated_heap -= buffer_freed_size;
      000851 90 00 03         [24] 2080 	mov	dptr,#(_program_stats + 0x0002)
      000854 E0               [24] 2081 	movx	a,@dptr
      000855 FA               [12] 2082 	mov	r2,a
      000856 A3               [24] 2083 	inc	dptr
      000857 E0               [24] 2084 	movx	a,@dptr
      000858 FB               [12] 2085 	mov	r3,a
      000859 EA               [12] 2086 	mov	a,r2
      00085A C3               [12] 2087 	clr	c
      00085B 9C               [12] 2088 	subb	a,r4
      00085C FC               [12] 2089 	mov	r4,a
      00085D EB               [12] 2090 	mov	a,r3
      00085E 9D               [12] 2091 	subb	a,r5
      00085F FD               [12] 2092 	mov	r5,a
      000860 90 00 03         [24] 2093 	mov	dptr,#(_program_stats + 0x0002)
      000863 EC               [12] 2094 	mov	a,r4
      000864 F0               [24] 2095 	movx	@dptr,a
      000865 ED               [12] 2096 	mov	a,r5
      000866 A3               [24] 2097 	inc	dptr
      000867 F0               [24] 2098 	movx	@dptr,a
                                   2099 ;	program.c:511: free(buff_to_free);
      000868 AB 14            [24] 2100 	mov	r3,_delete_buffer_sloc2_1_0
      00086A AC 15            [24] 2101 	mov	r4,(_delete_buffer_sloc2_1_0 + 1)
      00086C AD 16            [24] 2102 	mov	r5,(_delete_buffer_sloc2_1_0 + 2)
      00086E 8B 82            [24] 2103 	mov	dpl,r3
      000870 8C 83            [24] 2104 	mov	dph,r4
      000872 8D F0            [24] 2105 	mov	b,r5
      000874 C0 07            [24] 2106 	push	ar7
      000876 C0 06            [24] 2107 	push	ar6
      000878 12 16 3E         [24] 2108 	lcall	_free
      00087B D0 06            [24] 2109 	pop	ar6
      00087D D0 07            [24] 2110 	pop	ar7
                                   2111 ;	program.c:512: printf("Buffer %d Successfully Deleted.. \n\r", buff_number);
      00087F C0 06            [24] 2112 	push	ar6
      000881 C0 07            [24] 2113 	push	ar7
      000883 74 A9            [12] 2114 	mov	a,#___str_33
      000885 C0 E0            [24] 2115 	push	acc
      000887 74 29            [12] 2116 	mov	a,#(___str_33 >> 8)
      000889 C0 E0            [24] 2117 	push	acc
      00088B 74 80            [12] 2118 	mov	a,#0x80
      00088D C0 E0            [24] 2119 	push	acc
      00088F 12 1A 37         [24] 2120 	lcall	_printf
      000892 E5 81            [12] 2121 	mov	a,sp
      000894 24 FB            [12] 2122 	add	a,#0xfb
      000896 F5 81            [12] 2123 	mov	sp,a
                                   2124 ;	program.c:513: return 0;
      000898 90 00 00         [24] 2125 	mov	dptr,#0x0000
                                   2126 ;	program.c:517: goto get_del_num;
                                   2127 ;	program.c:519: }
      00089B 22               [24] 2128 	ret
                                   2129 ;------------------------------------------------------------
                                   2130 ;Allocation info for local variables in function 'print_pca_menu'
                                   2131 ;------------------------------------------------------------
                                   2132 ;	program.c:526: void print_pca_menu()
                                   2133 ;	-----------------------------------------
                                   2134 ;	 function print_pca_menu
                                   2135 ;	-----------------------------------------
      00089C                       2136 _print_pca_menu:
                                   2137 ;	program.c:528: DEBUGPORT(0x55);
      00089C 75 82 55         [24] 2138 	mov	dpl,#0x55
      00089F 12 15 04         [24] 2139 	lcall	_dataout
                                   2140 ;	program.c:529: printf("\n\n\r^^^^^^^^^^^^^^^^^^^-PCA-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ \n\n\r");
      0008A2 74 CD            [12] 2141 	mov	a,#___str_34
      0008A4 C0 E0            [24] 2142 	push	acc
      0008A6 74 29            [12] 2143 	mov	a,#(___str_34 >> 8)
      0008A8 C0 E0            [24] 2144 	push	acc
      0008AA 74 80            [12] 2145 	mov	a,#0x80
      0008AC C0 E0            [24] 2146 	push	acc
      0008AE 12 1A 37         [24] 2147 	lcall	_printf
      0008B1 15 81            [12] 2148 	dec	sp
      0008B3 15 81            [12] 2149 	dec	sp
      0008B5 15 81            [12] 2150 	dec	sp
                                   2151 ;	program.c:530: printf("'F' -> Falling Edge Capture Mode\n\r");
      0008B7 74 0C            [12] 2152 	mov	a,#___str_35
      0008B9 C0 E0            [24] 2153 	push	acc
      0008BB 74 2A            [12] 2154 	mov	a,#(___str_35 >> 8)
      0008BD C0 E0            [24] 2155 	push	acc
      0008BF 74 80            [12] 2156 	mov	a,#0x80
      0008C1 C0 E0            [24] 2157 	push	acc
      0008C3 12 1A 37         [24] 2158 	lcall	_printf
      0008C6 15 81            [12] 2159 	dec	sp
      0008C8 15 81            [12] 2160 	dec	sp
      0008CA 15 81            [12] 2161 	dec	sp
                                   2162 ;	program.c:531: printf("'S' -> Software Timer Mode\n\r");
      0008CC 74 2F            [12] 2163 	mov	a,#___str_36
      0008CE C0 E0            [24] 2164 	push	acc
      0008D0 74 2A            [12] 2165 	mov	a,#(___str_36 >> 8)
      0008D2 C0 E0            [24] 2166 	push	acc
      0008D4 74 80            [12] 2167 	mov	a,#0x80
      0008D6 C0 E0            [24] 2168 	push	acc
      0008D8 12 1A 37         [24] 2169 	lcall	_printf
      0008DB 15 81            [12] 2170 	dec	sp
      0008DD 15 81            [12] 2171 	dec	sp
      0008DF 15 81            [12] 2172 	dec	sp
                                   2173 ;	program.c:532: printf("'H' -> High Speed Output Mode\n\r");
      0008E1 74 4C            [12] 2174 	mov	a,#___str_37
      0008E3 C0 E0            [24] 2175 	push	acc
      0008E5 74 2A            [12] 2176 	mov	a,#(___str_37 >> 8)
      0008E7 C0 E0            [24] 2177 	push	acc
      0008E9 74 80            [12] 2178 	mov	a,#0x80
      0008EB C0 E0            [24] 2179 	push	acc
      0008ED 12 1A 37         [24] 2180 	lcall	_printf
      0008F0 15 81            [12] 2181 	dec	sp
      0008F2 15 81            [12] 2182 	dec	sp
      0008F4 15 81            [12] 2183 	dec	sp
                                   2184 ;	program.c:533: printf("'P' -> PWM Mode \n\r");
      0008F6 74 6C            [12] 2185 	mov	a,#___str_38
      0008F8 C0 E0            [24] 2186 	push	acc
      0008FA 74 2A            [12] 2187 	mov	a,#(___str_38 >> 8)
      0008FC C0 E0            [24] 2188 	push	acc
      0008FE 74 80            [12] 2189 	mov	a,#0x80
      000900 C0 E0            [24] 2190 	push	acc
      000902 12 1A 37         [24] 2191 	lcall	_printf
      000905 15 81            [12] 2192 	dec	sp
      000907 15 81            [12] 2193 	dec	sp
      000909 15 81            [12] 2194 	dec	sp
                                   2195 ;	program.c:534: printf("'W' -> Watchdog Timer Mode\n\r");
      00090B 74 7F            [12] 2196 	mov	a,#___str_39
      00090D C0 E0            [24] 2197 	push	acc
      00090F 74 2A            [12] 2198 	mov	a,#(___str_39 >> 8)
      000911 C0 E0            [24] 2199 	push	acc
      000913 74 80            [12] 2200 	mov	a,#0x80
      000915 C0 E0            [24] 2201 	push	acc
      000917 12 1A 37         [24] 2202 	lcall	_printf
      00091A 15 81            [12] 2203 	dec	sp
      00091C 15 81            [12] 2204 	dec	sp
      00091E 15 81            [12] 2205 	dec	sp
                                   2206 ;	program.c:535: printf("'I' -> Idle Mode with PWM\n\r");
      000920 74 9C            [12] 2207 	mov	a,#___str_40
      000922 C0 E0            [24] 2208 	push	acc
      000924 74 2A            [12] 2209 	mov	a,#(___str_40 >> 8)
      000926 C0 E0            [24] 2210 	push	acc
      000928 74 80            [12] 2211 	mov	a,#0x80
      00092A C0 E0            [24] 2212 	push	acc
      00092C 12 1A 37         [24] 2213 	lcall	_printf
      00092F 15 81            [12] 2214 	dec	sp
      000931 15 81            [12] 2215 	dec	sp
      000933 15 81            [12] 2216 	dec	sp
                                   2217 ;	program.c:536: printf("'L' -> Change Prescalar to lowest frequency\n\r");
      000935 74 B8            [12] 2218 	mov	a,#___str_41
      000937 C0 E0            [24] 2219 	push	acc
      000939 74 2A            [12] 2220 	mov	a,#(___str_41 >> 8)
      00093B C0 E0            [24] 2221 	push	acc
      00093D 74 80            [12] 2222 	mov	a,#0x80
      00093F C0 E0            [24] 2223 	push	acc
      000941 12 1A 37         [24] 2224 	lcall	_printf
      000944 15 81            [12] 2225 	dec	sp
      000946 15 81            [12] 2226 	dec	sp
      000948 15 81            [12] 2227 	dec	sp
                                   2228 ;	program.c:537: printf("'U' -> Hardware Watchdog Timer\n\r");
      00094A 74 E6            [12] 2229 	mov	a,#___str_42
      00094C C0 E0            [24] 2230 	push	acc
      00094E 74 2A            [12] 2231 	mov	a,#(___str_42 >> 8)
      000950 C0 E0            [24] 2232 	push	acc
      000952 74 80            [12] 2233 	mov	a,#0x80
      000954 C0 E0            [24] 2234 	push	acc
      000956 12 1A 37         [24] 2235 	lcall	_printf
      000959 15 81            [12] 2236 	dec	sp
      00095B 15 81            [12] 2237 	dec	sp
      00095D 15 81            [12] 2238 	dec	sp
                                   2239 ;	program.c:538: printf("'D' -> Power Down Mode\n\n\r");
      00095F 74 07            [12] 2240 	mov	a,#___str_43
      000961 C0 E0            [24] 2241 	push	acc
      000963 74 2B            [12] 2242 	mov	a,#(___str_43 >> 8)
      000965 C0 E0            [24] 2243 	push	acc
      000967 74 80            [12] 2244 	mov	a,#0x80
      000969 C0 E0            [24] 2245 	push	acc
      00096B 12 1A 37         [24] 2246 	lcall	_printf
      00096E 15 81            [12] 2247 	dec	sp
      000970 15 81            [12] 2248 	dec	sp
      000972 15 81            [12] 2249 	dec	sp
                                   2250 ;	program.c:540: printf("'M' -> Go to Main Menu \n\n\r");
      000974 74 21            [12] 2251 	mov	a,#___str_44
      000976 C0 E0            [24] 2252 	push	acc
      000978 74 2B            [12] 2253 	mov	a,#(___str_44 >> 8)
      00097A C0 E0            [24] 2254 	push	acc
      00097C 74 80            [12] 2255 	mov	a,#0x80
      00097E C0 E0            [24] 2256 	push	acc
      000980 12 1A 37         [24] 2257 	lcall	_printf
      000983 15 81            [12] 2258 	dec	sp
      000985 15 81            [12] 2259 	dec	sp
      000987 15 81            [12] 2260 	dec	sp
                                   2261 ;	program.c:541: }
      000989 22               [24] 2262 	ret
                                   2263 ;------------------------------------------------------------
                                   2264 ;Allocation info for local variables in function 'print_heap_menu'
                                   2265 ;------------------------------------------------------------
                                   2266 ;	program.c:548: void print_heap_menu()
                                   2267 ;	-----------------------------------------
                                   2268 ;	 function print_heap_menu
                                   2269 ;	-----------------------------------------
      00098A                       2270 _print_heap_menu:
                                   2271 ;	program.c:550: DEBUGPORT(0x05);
      00098A 75 82 05         [24] 2272 	mov	dpl,#0x05
      00098D 12 15 04         [24] 2273 	lcall	_dataout
                                   2274 ;	program.c:551: printf("\n\n\r^^^^^^^^^^^^^^^^^^^-HEAP-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ \n\n\r");
      000990 74 3C            [12] 2275 	mov	a,#___str_45
      000992 C0 E0            [24] 2276 	push	acc
      000994 74 2B            [12] 2277 	mov	a,#(___str_45 >> 8)
      000996 C0 E0            [24] 2278 	push	acc
      000998 74 80            [12] 2279 	mov	a,#0x80
      00099A C0 E0            [24] 2280 	push	acc
      00099C 12 1A 37         [24] 2281 	lcall	_printf
      00099F 15 81            [12] 2282 	dec	sp
      0009A1 15 81            [12] 2283 	dec	sp
      0009A3 15 81            [12] 2284 	dec	sp
                                   2285 ;	program.c:552: printf("You can enter characters or use commands from below \n\r");
      0009A5 74 7C            [12] 2286 	mov	a,#___str_46
      0009A7 C0 E0            [24] 2287 	push	acc
      0009A9 74 2B            [12] 2288 	mov	a,#(___str_46 >> 8)
      0009AB C0 E0            [24] 2289 	push	acc
      0009AD 74 80            [12] 2290 	mov	a,#0x80
      0009AF C0 E0            [24] 2291 	push	acc
      0009B1 12 1A 37         [24] 2292 	lcall	_printf
      0009B4 15 81            [12] 2293 	dec	sp
      0009B6 15 81            [12] 2294 	dec	sp
      0009B8 15 81            [12] 2295 	dec	sp
                                   2296 ;	program.c:553: printf("'?' -> Show heap status, dump & clear Buffer 0 \n\r");
      0009BA 74 B3            [12] 2297 	mov	a,#___str_47
      0009BC C0 E0            [24] 2298 	push	acc
      0009BE 74 2B            [12] 2299 	mov	a,#(___str_47 >> 8)
      0009C0 C0 E0            [24] 2300 	push	acc
      0009C2 74 80            [12] 2301 	mov	a,#0x80
      0009C4 C0 E0            [24] 2302 	push	acc
      0009C6 12 1A 37         [24] 2303 	lcall	_printf
      0009C9 15 81            [12] 2304 	dec	sp
      0009CB 15 81            [12] 2305 	dec	sp
      0009CD 15 81            [12] 2306 	dec	sp
                                   2307 ;	program.c:554: printf("'+' -> Add a new Buffer\n\r");
      0009CF 74 E5            [12] 2308 	mov	a,#___str_48
      0009D1 C0 E0            [24] 2309 	push	acc
      0009D3 74 2B            [12] 2310 	mov	a,#(___str_48 >> 8)
      0009D5 C0 E0            [24] 2311 	push	acc
      0009D7 74 80            [12] 2312 	mov	a,#0x80
      0009D9 C0 E0            [24] 2313 	push	acc
      0009DB 12 1A 37         [24] 2314 	lcall	_printf
      0009DE 15 81            [12] 2315 	dec	sp
      0009E0 15 81            [12] 2316 	dec	sp
      0009E2 15 81            [12] 2317 	dec	sp
                                   2318 ;	program.c:555: printf("'-' -> Delete existing Buffer\n\r");
      0009E4 74 FF            [12] 2319 	mov	a,#___str_49
      0009E6 C0 E0            [24] 2320 	push	acc
      0009E8 74 2B            [12] 2321 	mov	a,#(___str_49 >> 8)
      0009EA C0 E0            [24] 2322 	push	acc
      0009EC 74 80            [12] 2323 	mov	a,#0x80
      0009EE C0 E0            [24] 2324 	push	acc
      0009F0 12 1A 37         [24] 2325 	lcall	_printf
      0009F3 15 81            [12] 2326 	dec	sp
      0009F5 15 81            [12] 2327 	dec	sp
      0009F7 15 81            [12] 2328 	dec	sp
                                   2329 ;	program.c:556: printf("'=' -> Dump Buffer 0 in hex\n\r");
      0009F9 74 1F            [12] 2330 	mov	a,#___str_50
      0009FB C0 E0            [24] 2331 	push	acc
      0009FD 74 2C            [12] 2332 	mov	a,#(___str_50 >> 8)
      0009FF C0 E0            [24] 2333 	push	acc
      000A01 74 80            [12] 2334 	mov	a,#0x80
      000A03 C0 E0            [24] 2335 	push	acc
      000A05 12 1A 37         [24] 2336 	lcall	_printf
      000A08 15 81            [12] 2337 	dec	sp
      000A0A 15 81            [12] 2338 	dec	sp
      000A0C 15 81            [12] 2339 	dec	sp
                                   2340 ;	program.c:557: printf("'@' -> Free all Heap & begin again\n\n\r");
      000A0E 74 3D            [12] 2341 	mov	a,#___str_51
      000A10 C0 E0            [24] 2342 	push	acc
      000A12 74 2C            [12] 2343 	mov	a,#(___str_51 >> 8)
      000A14 C0 E0            [24] 2344 	push	acc
      000A16 74 80            [12] 2345 	mov	a,#0x80
      000A18 C0 E0            [24] 2346 	push	acc
      000A1A 12 1A 37         [24] 2347 	lcall	_printf
      000A1D 15 81            [12] 2348 	dec	sp
      000A1F 15 81            [12] 2349 	dec	sp
      000A21 15 81            [12] 2350 	dec	sp
                                   2351 ;	program.c:558: printf("'M' -> Go to Main Menu \n\n\r");
      000A23 74 21            [12] 2352 	mov	a,#___str_44
      000A25 C0 E0            [24] 2353 	push	acc
      000A27 74 2B            [12] 2354 	mov	a,#(___str_44 >> 8)
      000A29 C0 E0            [24] 2355 	push	acc
      000A2B 74 80            [12] 2356 	mov	a,#0x80
      000A2D C0 E0            [24] 2357 	push	acc
      000A2F 12 1A 37         [24] 2358 	lcall	_printf
      000A32 15 81            [12] 2359 	dec	sp
      000A34 15 81            [12] 2360 	dec	sp
      000A36 15 81            [12] 2361 	dec	sp
                                   2362 ;	program.c:559: }
      000A38 22               [24] 2363 	ret
                                   2364 ;------------------------------------------------------------
                                   2365 ;Allocation info for local variables in function 'create_new_buffer'
                                   2366 ;------------------------------------------------------------
                                   2367 ;buff_size                 Allocated with name '_create_new_buffer_buff_size_65537_103'
                                   2368 ;buff                      Allocated with name '_create_new_buffer_buff_65537_103'
                                   2369 ;------------------------------------------------------------
                                   2370 ;	program.c:567: int create_new_buffer()
                                   2371 ;	-----------------------------------------
                                   2372 ;	 function create_new_buffer
                                   2373 ;	-----------------------------------------
      000A39                       2374 _create_new_buffer:
                                   2375 ;	program.c:569: DEBUGPORT(0x06);
      000A39 75 82 06         [24] 2376 	mov	dpl,#0x06
      000A3C 12 15 04         [24] 2377 	lcall	_dataout
                                   2378 ;	program.c:572: if (program_stats.allocated_heap == program_stats.total_heap_size)
      000A3F 90 00 03         [24] 2379 	mov	dptr,#(_program_stats + 0x0002)
      000A42 E0               [24] 2380 	movx	a,@dptr
      000A43 FE               [12] 2381 	mov	r6,a
      000A44 A3               [24] 2382 	inc	dptr
      000A45 E0               [24] 2383 	movx	a,@dptr
      000A46 FF               [12] 2384 	mov	r7,a
      000A47 90 00 01         [24] 2385 	mov	dptr,#_program_stats
      000A4A E0               [24] 2386 	movx	a,@dptr
      000A4B FC               [12] 2387 	mov	r4,a
      000A4C A3               [24] 2388 	inc	dptr
      000A4D E0               [24] 2389 	movx	a,@dptr
      000A4E FD               [12] 2390 	mov	r5,a
      000A4F EE               [12] 2391 	mov	a,r6
      000A50 B5 04 07         [24] 2392 	cjne	a,ar4,00133$
      000A53 EF               [12] 2393 	mov	a,r7
      000A54 B5 05 03         [24] 2394 	cjne	a,ar5,00133$
      000A57 02 0B 9A         [24] 2395 	ljmp	00111$
      000A5A                       2396 00133$:
                                   2397 ;	program.c:575: get_new_buff:
      000A5A                       2398 00103$:
                                   2399 ;	program.c:576: printf("\n\rGive Valid Buffer Size(030-300):");
      000A5A 74 63            [12] 2400 	mov	a,#___str_52
      000A5C C0 E0            [24] 2401 	push	acc
      000A5E 74 2C            [12] 2402 	mov	a,#(___str_52 >> 8)
      000A60 C0 E0            [24] 2403 	push	acc
      000A62 74 80            [12] 2404 	mov	a,#0x80
      000A64 C0 E0            [24] 2405 	push	acc
      000A66 12 1A 37         [24] 2406 	lcall	_printf
      000A69 15 81            [12] 2407 	dec	sp
      000A6B 15 81            [12] 2408 	dec	sp
      000A6D 15 81            [12] 2409 	dec	sp
                                   2410 ;	program.c:577: buff_size = get_number(3);
      000A6F 90 00 03         [24] 2411 	mov	dptr,#0x0003
      000A72 12 13 54         [24] 2412 	lcall	_get_number
      000A75 AE 82            [24] 2413 	mov	r6,dpl
      000A77 AF 83            [24] 2414 	mov	r7,dph
                                   2415 ;	program.c:578: if (buff_size >= 30 && buff_size <= 300)
      000A79 C3               [12] 2416 	clr	c
      000A7A EE               [12] 2417 	mov	a,r6
      000A7B 94 1E            [12] 2418 	subb	a,#0x1e
      000A7D EF               [12] 2419 	mov	a,r7
      000A7E 64 80            [12] 2420 	xrl	a,#0x80
      000A80 94 80            [12] 2421 	subb	a,#0x80
      000A82 40 D6            [24] 2422 	jc	00103$
      000A84 74 2C            [12] 2423 	mov	a,#0x2c
      000A86 9E               [12] 2424 	subb	a,r6
      000A87 74 81            [12] 2425 	mov	a,#(0x01 ^ 0x80)
      000A89 8F F0            [24] 2426 	mov	b,r7
      000A8B 63 F0 80         [24] 2427 	xrl	b,#0x80
      000A8E 95 F0            [12] 2428 	subb	a,b
      000A90 40 C8            [24] 2429 	jc	00103$
                                   2430 ;	program.c:580: buff.buffer_start = malloc(buff_size);
      000A92 8E 82            [24] 2431 	mov	dpl,r6
      000A94 8F 83            [24] 2432 	mov	dph,r7
      000A96 C0 07            [24] 2433 	push	ar7
      000A98 C0 06            [24] 2434 	push	ar6
      000A9A 12 18 60         [24] 2435 	lcall	_malloc
      000A9D AC 82            [24] 2436 	mov	r4,dpl
      000A9F AD 83            [24] 2437 	mov	r5,dph
      000AA1 D0 06            [24] 2438 	pop	ar6
      000AA3 D0 07            [24] 2439 	pop	ar7
      000AA5 7B 00            [12] 2440 	mov	r3,#0x00
      000AA7 90 01 39         [24] 2441 	mov	dptr,#(_create_new_buffer_buff_65537_103 + 0x0002)
      000AAA EC               [12] 2442 	mov	a,r4
      000AAB F0               [24] 2443 	movx	@dptr,a
      000AAC ED               [12] 2444 	mov	a,r5
      000AAD A3               [24] 2445 	inc	dptr
      000AAE F0               [24] 2446 	movx	@dptr,a
      000AAF EB               [12] 2447 	mov	a,r3
      000AB0 A3               [24] 2448 	inc	dptr
      000AB1 F0               [24] 2449 	movx	@dptr,a
                                   2450 ;	program.c:581: if (buff.buffer_start == NULL)
      000AB2 EC               [12] 2451 	mov	a,r4
      000AB3 4D               [12] 2452 	orl	a,r5
      000AB4 70 18            [24] 2453 	jnz	00105$
                                   2454 ;	program.c:583: printf("Failed, give smaller buffer\n\r");
      000AB6 74 86            [12] 2455 	mov	a,#___str_53
      000AB8 C0 E0            [24] 2456 	push	acc
      000ABA 74 2C            [12] 2457 	mov	a,#(___str_53 >> 8)
      000ABC C0 E0            [24] 2458 	push	acc
      000ABE 74 80            [12] 2459 	mov	a,#0x80
      000AC0 C0 E0            [24] 2460 	push	acc
      000AC2 12 1A 37         [24] 2461 	lcall	_printf
      000AC5 15 81            [12] 2462 	dec	sp
      000AC7 15 81            [12] 2463 	dec	sp
      000AC9 15 81            [12] 2464 	dec	sp
      000ACB 02 0B 96         [24] 2465 	ljmp	00106$
      000ACE                       2466 00105$:
                                   2467 ;	program.c:587: printf("\n\n\r####SUCCESS, BUFFER Created####\n\n\r");
      000ACE C0 07            [24] 2468 	push	ar7
      000AD0 C0 06            [24] 2469 	push	ar6
      000AD2 74 A4            [12] 2470 	mov	a,#___str_54
      000AD4 C0 E0            [24] 2471 	push	acc
      000AD6 74 2C            [12] 2472 	mov	a,#(___str_54 >> 8)
      000AD8 C0 E0            [24] 2473 	push	acc
      000ADA 74 80            [12] 2474 	mov	a,#0x80
      000ADC C0 E0            [24] 2475 	push	acc
      000ADE 12 1A 37         [24] 2476 	lcall	_printf
      000AE1 15 81            [12] 2477 	dec	sp
      000AE3 15 81            [12] 2478 	dec	sp
      000AE5 15 81            [12] 2479 	dec	sp
      000AE7 D0 06            [24] 2480 	pop	ar6
      000AE9 D0 07            [24] 2481 	pop	ar7
                                   2482 ;	program.c:589: program_stats.allocated_heap += buff_size;
      000AEB 90 00 03         [24] 2483 	mov	dptr,#(_program_stats + 0x0002)
      000AEE E0               [24] 2484 	movx	a,@dptr
      000AEF FC               [12] 2485 	mov	r4,a
      000AF0 A3               [24] 2486 	inc	dptr
      000AF1 E0               [24] 2487 	movx	a,@dptr
      000AF2 FD               [12] 2488 	mov	r5,a
      000AF3 EE               [12] 2489 	mov	a,r6
      000AF4 2C               [12] 2490 	add	a,r4
      000AF5 FC               [12] 2491 	mov	r4,a
      000AF6 EF               [12] 2492 	mov	a,r7
      000AF7 3D               [12] 2493 	addc	a,r5
      000AF8 FD               [12] 2494 	mov	r5,a
      000AF9 90 00 03         [24] 2495 	mov	dptr,#(_program_stats + 0x0002)
      000AFC EC               [12] 2496 	mov	a,r4
      000AFD F0               [24] 2497 	movx	@dptr,a
      000AFE ED               [12] 2498 	mov	a,r5
      000AFF A3               [24] 2499 	inc	dptr
      000B00 F0               [24] 2500 	movx	@dptr,a
                                   2501 ;	program.c:590: buff.buff_size = buff_size;
      000B01 90 01 3F         [24] 2502 	mov	dptr,#(_create_new_buffer_buff_65537_103 + 0x0008)
      000B04 EE               [12] 2503 	mov	a,r6
      000B05 F0               [24] 2504 	movx	@dptr,a
      000B06 EF               [12] 2505 	mov	a,r7
      000B07 A3               [24] 2506 	inc	dptr
      000B08 F0               [24] 2507 	movx	@dptr,a
                                   2508 ;	program.c:591: buff.buffer_num = program_stats.total_buffers;
      000B09 90 00 09         [24] 2509 	mov	dptr,#(_program_stats + 0x0008)
      000B0C E0               [24] 2510 	movx	a,@dptr
      000B0D FC               [12] 2511 	mov	r4,a
      000B0E A3               [24] 2512 	inc	dptr
      000B0F E0               [24] 2513 	movx	a,@dptr
      000B10 FD               [12] 2514 	mov	r5,a
      000B11 90 01 37         [24] 2515 	mov	dptr,#_create_new_buffer_buff_65537_103
      000B14 EC               [12] 2516 	mov	a,r4
      000B15 F0               [24] 2517 	movx	@dptr,a
      000B16 ED               [12] 2518 	mov	a,r5
      000B17 A3               [24] 2519 	inc	dptr
      000B18 F0               [24] 2520 	movx	@dptr,a
                                   2521 ;	program.c:592: buff.buffer_end = buff.buffer_start + buff_size;
      000B19 90 01 39         [24] 2522 	mov	dptr,#(_create_new_buffer_buff_65537_103 + 0x0002)
      000B1C E0               [24] 2523 	movx	a,@dptr
      000B1D FB               [12] 2524 	mov	r3,a
      000B1E A3               [24] 2525 	inc	dptr
      000B1F E0               [24] 2526 	movx	a,@dptr
      000B20 FC               [12] 2527 	mov	r4,a
      000B21 A3               [24] 2528 	inc	dptr
      000B22 E0               [24] 2529 	movx	a,@dptr
      000B23 FD               [12] 2530 	mov	r5,a
      000B24 EE               [12] 2531 	mov	a,r6
      000B25 2B               [12] 2532 	add	a,r3
      000B26 FE               [12] 2533 	mov	r6,a
      000B27 EF               [12] 2534 	mov	a,r7
      000B28 3C               [12] 2535 	addc	a,r4
      000B29 FF               [12] 2536 	mov	r7,a
      000B2A 8D 02            [24] 2537 	mov	ar2,r5
      000B2C 90 01 3C         [24] 2538 	mov	dptr,#(_create_new_buffer_buff_65537_103 + 0x0005)
      000B2F EE               [12] 2539 	mov	a,r6
      000B30 F0               [24] 2540 	movx	@dptr,a
      000B31 EF               [12] 2541 	mov	a,r7
      000B32 A3               [24] 2542 	inc	dptr
      000B33 F0               [24] 2543 	movx	@dptr,a
      000B34 EA               [12] 2544 	mov	a,r2
      000B35 A3               [24] 2545 	inc	dptr
      000B36 F0               [24] 2546 	movx	@dptr,a
                                   2547 ;	program.c:593: buff.num_char = 0;
      000B37 90 01 41         [24] 2548 	mov	dptr,#(_create_new_buffer_buff_65537_103 + 0x000a)
      000B3A E4               [12] 2549 	clr	a
      000B3B F0               [24] 2550 	movx	@dptr,a
      000B3C A3               [24] 2551 	inc	dptr
      000B3D F0               [24] 2552 	movx	@dptr,a
                                   2553 ;	program.c:595: buffers_array[program_stats.total_buffers] = buff;
      000B3E 90 00 09         [24] 2554 	mov	dptr,#(_program_stats + 0x0008)
      000B41 E0               [24] 2555 	movx	a,@dptr
      000B42 FE               [12] 2556 	mov	r6,a
      000B43 A3               [24] 2557 	inc	dptr
      000B44 E0               [24] 2558 	movx	a,@dptr
      000B45 FF               [12] 2559 	mov	r7,a
      000B46 90 15 0F         [24] 2560 	mov	dptr,#__mulint_PARM_2
      000B49 EE               [12] 2561 	mov	a,r6
      000B4A F0               [24] 2562 	movx	@dptr,a
      000B4B EF               [12] 2563 	mov	a,r7
      000B4C A3               [24] 2564 	inc	dptr
      000B4D F0               [24] 2565 	movx	@dptr,a
      000B4E 90 00 0C         [24] 2566 	mov	dptr,#0x000c
      000B51 12 19 C9         [24] 2567 	lcall	__mulint
      000B54 AE 82            [24] 2568 	mov	r6,dpl
      000B56 AF 83            [24] 2569 	mov	r7,dph
      000B58 EE               [12] 2570 	mov	a,r6
      000B59 24 0B            [12] 2571 	add	a,#_buffers_array
      000B5B FE               [12] 2572 	mov	r6,a
      000B5C EF               [12] 2573 	mov	a,r7
      000B5D 34 00            [12] 2574 	addc	a,#(_buffers_array >> 8)
      000B5F FF               [12] 2575 	mov	r7,a
      000B60 7D 00            [12] 2576 	mov	r5,#0x00
      000B62 90 14 FE         [24] 2577 	mov	dptr,#___memcpy_PARM_2
      000B65 74 37            [12] 2578 	mov	a,#_create_new_buffer_buff_65537_103
      000B67 F0               [24] 2579 	movx	@dptr,a
      000B68 74 01            [12] 2580 	mov	a,#(_create_new_buffer_buff_65537_103 >> 8)
      000B6A A3               [24] 2581 	inc	dptr
      000B6B F0               [24] 2582 	movx	@dptr,a
      000B6C E4               [12] 2583 	clr	a
      000B6D A3               [24] 2584 	inc	dptr
      000B6E F0               [24] 2585 	movx	@dptr,a
      000B6F 90 15 01         [24] 2586 	mov	dptr,#___memcpy_PARM_3
      000B72 74 0C            [12] 2587 	mov	a,#0x0c
      000B74 F0               [24] 2588 	movx	@dptr,a
      000B75 E4               [12] 2589 	clr	a
      000B76 A3               [24] 2590 	inc	dptr
      000B77 F0               [24] 2591 	movx	@dptr,a
      000B78 8E 82            [24] 2592 	mov	dpl,r6
      000B7A 8F 83            [24] 2593 	mov	dph,r7
      000B7C 8D F0            [24] 2594 	mov	b,r5
      000B7E 12 17 95         [24] 2595 	lcall	___memcpy
                                   2596 ;	program.c:596: program_stats.total_buffers += 1;
      000B81 90 00 09         [24] 2597 	mov	dptr,#(_program_stats + 0x0008)
      000B84 E0               [24] 2598 	movx	a,@dptr
      000B85 FE               [12] 2599 	mov	r6,a
      000B86 A3               [24] 2600 	inc	dptr
      000B87 E0               [24] 2601 	movx	a,@dptr
      000B88 FF               [12] 2602 	mov	r7,a
      000B89 0E               [12] 2603 	inc	r6
      000B8A BE 00 01         [24] 2604 	cjne	r6,#0x00,00137$
      000B8D 0F               [12] 2605 	inc	r7
      000B8E                       2606 00137$:
      000B8E 90 00 09         [24] 2607 	mov	dptr,#(_program_stats + 0x0008)
      000B91 EE               [12] 2608 	mov	a,r6
      000B92 F0               [24] 2609 	movx	@dptr,a
      000B93 EF               [12] 2610 	mov	a,r7
      000B94 A3               [24] 2611 	inc	dptr
      000B95 F0               [24] 2612 	movx	@dptr,a
      000B96                       2613 00106$:
                                   2614 ;	program.c:598: return 0;
      000B96 90 00 00         [24] 2615 	mov	dptr,#0x0000
                                   2616 ;	program.c:604: no_heap_left:
      000B99 22               [24] 2617 	ret
      000B9A                       2618 00111$:
                                   2619 ;	program.c:605: printf("No Heap Memory Left, Delete some buffers...\n\r");
      000B9A 74 CA            [12] 2620 	mov	a,#___str_55
      000B9C C0 E0            [24] 2621 	push	acc
      000B9E 74 2C            [12] 2622 	mov	a,#(___str_55 >> 8)
      000BA0 C0 E0            [24] 2623 	push	acc
      000BA2 74 80            [12] 2624 	mov	a,#0x80
      000BA4 C0 E0            [24] 2625 	push	acc
      000BA6 12 1A 37         [24] 2626 	lcall	_printf
      000BA9 15 81            [12] 2627 	dec	sp
      000BAB 15 81            [12] 2628 	dec	sp
      000BAD 15 81            [12] 2629 	dec	sp
                                   2630 ;	program.c:606: return 0;
      000BAF 90 00 00         [24] 2631 	mov	dptr,#0x0000
                                   2632 ;	program.c:607: }
      000BB2 22               [24] 2633 	ret
                                   2634 ;------------------------------------------------------------
                                   2635 ;Allocation info for local variables in function 'create_initial_buffers'
                                   2636 ;------------------------------------------------------------
                                   2637 ;buff_size                 Allocated with name '_create_initial_buffers_buff_size_65537_109'
                                   2638 ;buff                      Allocated with name '_create_initial_buffers_buff_65538_110'
                                   2639 ;buff1                     Allocated with name '_create_initial_buffers_buff1_65538_110'
                                   2640 ;------------------------------------------------------------
                                   2641 ;	program.c:615: void create_initial_buffers()
                                   2642 ;	-----------------------------------------
                                   2643 ;	 function create_initial_buffers
                                   2644 ;	-----------------------------------------
      000BB3                       2645 _create_initial_buffers:
                                   2646 ;	program.c:617: DEBUGPORT(0x07);
      000BB3 75 82 07         [24] 2647 	mov	dpl,#0x07
      000BB6 12 15 04         [24] 2648 	lcall	_dataout
                                   2649 ;	program.c:620: get_buff:
      000BB9                       2650 00101$:
                                   2651 ;	program.c:621: printf("\n\rGive Valid Initial Buffer Size(0048-4800):");
      000BB9 74 F8            [12] 2652 	mov	a,#___str_56
      000BBB C0 E0            [24] 2653 	push	acc
      000BBD 74 2C            [12] 2654 	mov	a,#(___str_56 >> 8)
      000BBF C0 E0            [24] 2655 	push	acc
      000BC1 74 80            [12] 2656 	mov	a,#0x80
      000BC3 C0 E0            [24] 2657 	push	acc
      000BC5 12 1A 37         [24] 2658 	lcall	_printf
      000BC8 15 81            [12] 2659 	dec	sp
      000BCA 15 81            [12] 2660 	dec	sp
      000BCC 15 81            [12] 2661 	dec	sp
                                   2662 ;	program.c:622: buff_size = get_number(4);
      000BCE 90 00 04         [24] 2663 	mov	dptr,#0x0004
      000BD1 12 13 54         [24] 2664 	lcall	_get_number
      000BD4 AE 82            [24] 2665 	mov	r6,dpl
      000BD6 AF 83            [24] 2666 	mov	r7,dph
                                   2667 ;	program.c:626: if (buff_size >= 48 && buff_size <= 4800)
      000BD8 C3               [12] 2668 	clr	c
      000BD9 EE               [12] 2669 	mov	a,r6
      000BDA 94 30            [12] 2670 	subb	a,#0x30
      000BDC EF               [12] 2671 	mov	a,r7
      000BDD 64 80            [12] 2672 	xrl	a,#0x80
      000BDF 94 80            [12] 2673 	subb	a,#0x80
      000BE1 40 D6            [24] 2674 	jc	00101$
      000BE3 74 C0            [12] 2675 	mov	a,#0xc0
      000BE5 9E               [12] 2676 	subb	a,r6
      000BE6 74 92            [12] 2677 	mov	a,#(0x12 ^ 0x80)
      000BE8 8F F0            [24] 2678 	mov	b,r7
      000BEA 63 F0 80         [24] 2679 	xrl	b,#0x80
      000BED 95 F0            [12] 2680 	subb	a,b
      000BEF 40 C8            [24] 2681 	jc	00101$
                                   2682 ;	program.c:628: buff.buffer_start = malloc(buff_size);
      000BF1 8E 82            [24] 2683 	mov	dpl,r6
      000BF3 8F 83            [24] 2684 	mov	dph,r7
      000BF5 C0 07            [24] 2685 	push	ar7
      000BF7 C0 06            [24] 2686 	push	ar6
      000BF9 12 18 60         [24] 2687 	lcall	_malloc
      000BFC AC 82            [24] 2688 	mov	r4,dpl
      000BFE AD 83            [24] 2689 	mov	r5,dph
      000C00 D0 06            [24] 2690 	pop	ar6
      000C02 D0 07            [24] 2691 	pop	ar7
      000C04 7B 00            [12] 2692 	mov	r3,#0x00
      000C06 90 01 45         [24] 2693 	mov	dptr,#(_create_initial_buffers_buff_65538_110 + 0x0002)
      000C09 EC               [12] 2694 	mov	a,r4
      000C0A F0               [24] 2695 	movx	@dptr,a
      000C0B ED               [12] 2696 	mov	a,r5
      000C0C A3               [24] 2697 	inc	dptr
      000C0D F0               [24] 2698 	movx	@dptr,a
      000C0E EB               [12] 2699 	mov	a,r3
      000C0F A3               [24] 2700 	inc	dptr
      000C10 F0               [24] 2701 	movx	@dptr,a
                                   2702 ;	program.c:629: buff1.buffer_start = malloc(buff_size);
      000C11 8E 82            [24] 2703 	mov	dpl,r6
      000C13 8F 83            [24] 2704 	mov	dph,r7
      000C15 C0 07            [24] 2705 	push	ar7
      000C17 C0 06            [24] 2706 	push	ar6
      000C19 12 18 60         [24] 2707 	lcall	_malloc
      000C1C AC 82            [24] 2708 	mov	r4,dpl
      000C1E AD 83            [24] 2709 	mov	r5,dph
      000C20 D0 06            [24] 2710 	pop	ar6
      000C22 D0 07            [24] 2711 	pop	ar7
      000C24 7B 00            [12] 2712 	mov	r3,#0x00
      000C26 90 01 51         [24] 2713 	mov	dptr,#(_create_initial_buffers_buff1_65538_110 + 0x0002)
      000C29 EC               [12] 2714 	mov	a,r4
      000C2A F0               [24] 2715 	movx	@dptr,a
      000C2B ED               [12] 2716 	mov	a,r5
      000C2C A3               [24] 2717 	inc	dptr
      000C2D F0               [24] 2718 	movx	@dptr,a
      000C2E EB               [12] 2719 	mov	a,r3
      000C2F A3               [24] 2720 	inc	dptr
      000C30 F0               [24] 2721 	movx	@dptr,a
                                   2722 ;	program.c:631: if (buff.buffer_start == NULL || buff1.buffer_start == NULL)
      000C31 90 01 45         [24] 2723 	mov	dptr,#(_create_initial_buffers_buff_65538_110 + 0x0002)
      000C34 E0               [24] 2724 	movx	a,@dptr
      000C35 FB               [12] 2725 	mov	r3,a
      000C36 A3               [24] 2726 	inc	dptr
      000C37 E0               [24] 2727 	movx	a,@dptr
      000C38 FC               [12] 2728 	mov	r4,a
      000C39 A3               [24] 2729 	inc	dptr
      000C3A E0               [24] 2730 	movx	a,@dptr
      000C3B EB               [12] 2731 	mov	a,r3
      000C3C 4C               [12] 2732 	orl	a,r4
      000C3D 60 0F            [24] 2733 	jz	00106$
      000C3F 90 01 51         [24] 2734 	mov	dptr,#(_create_initial_buffers_buff1_65538_110 + 0x0002)
      000C42 E0               [24] 2735 	movx	a,@dptr
      000C43 FB               [12] 2736 	mov	r3,a
      000C44 A3               [24] 2737 	inc	dptr
      000C45 E0               [24] 2738 	movx	a,@dptr
      000C46 FC               [12] 2739 	mov	r4,a
      000C47 A3               [24] 2740 	inc	dptr
      000C48 E0               [24] 2741 	movx	a,@dptr
      000C49 FD               [12] 2742 	mov	r5,a
      000C4A EB               [12] 2743 	mov	a,r3
      000C4B 4C               [12] 2744 	orl	a,r4
      000C4C 70 60            [24] 2745 	jnz	00107$
      000C4E                       2746 00106$:
                                   2747 ;	program.c:633: printf("\n\r####FAIL, Please give a smaller buffer size####\n\n\r");
      000C4E 74 25            [12] 2748 	mov	a,#___str_57
      000C50 C0 E0            [24] 2749 	push	acc
      000C52 74 2D            [12] 2750 	mov	a,#(___str_57 >> 8)
      000C54 C0 E0            [24] 2751 	push	acc
      000C56 74 80            [12] 2752 	mov	a,#0x80
      000C58 C0 E0            [24] 2753 	push	acc
      000C5A 12 1A 37         [24] 2754 	lcall	_printf
      000C5D 15 81            [12] 2755 	dec	sp
      000C5F 15 81            [12] 2756 	dec	sp
      000C61 15 81            [12] 2757 	dec	sp
                                   2758 ;	program.c:635: if (buff.buffer_start != NULL)
      000C63 90 01 45         [24] 2759 	mov	dptr,#(_create_initial_buffers_buff_65538_110 + 0x0002)
      000C66 E0               [24] 2760 	movx	a,@dptr
      000C67 FB               [12] 2761 	mov	r3,a
      000C68 A3               [24] 2762 	inc	dptr
      000C69 E0               [24] 2763 	movx	a,@dptr
      000C6A FC               [12] 2764 	mov	r4,a
      000C6B A3               [24] 2765 	inc	dptr
      000C6C E0               [24] 2766 	movx	a,@dptr
      000C6D EB               [12] 2767 	mov	a,r3
      000C6E 4C               [12] 2768 	orl	a,r4
      000C6F 60 14            [24] 2769 	jz	00103$
                                   2770 ;	program.c:636: free(buff.buffer_start);
      000C71 90 01 45         [24] 2771 	mov	dptr,#(_create_initial_buffers_buff_65538_110 + 0x0002)
      000C74 E0               [24] 2772 	movx	a,@dptr
      000C75 FB               [12] 2773 	mov	r3,a
      000C76 A3               [24] 2774 	inc	dptr
      000C77 E0               [24] 2775 	movx	a,@dptr
      000C78 FC               [12] 2776 	mov	r4,a
      000C79 A3               [24] 2777 	inc	dptr
      000C7A E0               [24] 2778 	movx	a,@dptr
      000C7B FD               [12] 2779 	mov	r5,a
      000C7C 8B 82            [24] 2780 	mov	dpl,r3
      000C7E 8C 83            [24] 2781 	mov	dph,r4
      000C80 8D F0            [24] 2782 	mov	b,r5
      000C82 12 16 3E         [24] 2783 	lcall	_free
      000C85                       2784 00103$:
                                   2785 ;	program.c:637: if (buff1.buffer_start != NULL)
      000C85 90 01 51         [24] 2786 	mov	dptr,#(_create_initial_buffers_buff1_65538_110 + 0x0002)
      000C88 E0               [24] 2787 	movx	a,@dptr
      000C89 FB               [12] 2788 	mov	r3,a
      000C8A A3               [24] 2789 	inc	dptr
      000C8B E0               [24] 2790 	movx	a,@dptr
      000C8C FC               [12] 2791 	mov	r4,a
      000C8D A3               [24] 2792 	inc	dptr
      000C8E E0               [24] 2793 	movx	a,@dptr
      000C8F FD               [12] 2794 	mov	r5,a
      000C90 EB               [12] 2795 	mov	a,r3
      000C91 4C               [12] 2796 	orl	a,r4
      000C92 70 03            [24] 2797 	jnz	00145$
      000C94 02 0B B9         [24] 2798 	ljmp	00101$
      000C97                       2799 00145$:
                                   2800 ;	program.c:638: free(buff1.buffer_start);
      000C97 90 01 51         [24] 2801 	mov	dptr,#(_create_initial_buffers_buff1_65538_110 + 0x0002)
      000C9A E0               [24] 2802 	movx	a,@dptr
      000C9B FB               [12] 2803 	mov	r3,a
      000C9C A3               [24] 2804 	inc	dptr
      000C9D E0               [24] 2805 	movx	a,@dptr
      000C9E FC               [12] 2806 	mov	r4,a
      000C9F A3               [24] 2807 	inc	dptr
      000CA0 E0               [24] 2808 	movx	a,@dptr
      000CA1 FD               [12] 2809 	mov	r5,a
      000CA2 8B 82            [24] 2810 	mov	dpl,r3
      000CA4 8C 83            [24] 2811 	mov	dph,r4
      000CA6 8D F0            [24] 2812 	mov	b,r5
      000CA8 12 16 3E         [24] 2813 	lcall	_free
                                   2814 ;	program.c:640: goto get_buff;
      000CAB 02 0B B9         [24] 2815 	ljmp	00101$
      000CAE                       2816 00107$:
                                   2817 ;	program.c:645: printf("\n\n\r####SUCCESS, INITIAL BUFFERS Created####\n\n\r");
      000CAE C0 07            [24] 2818 	push	ar7
      000CB0 C0 06            [24] 2819 	push	ar6
      000CB2 74 5A            [12] 2820 	mov	a,#___str_58
      000CB4 C0 E0            [24] 2821 	push	acc
      000CB6 74 2D            [12] 2822 	mov	a,#(___str_58 >> 8)
      000CB8 C0 E0            [24] 2823 	push	acc
      000CBA 74 80            [12] 2824 	mov	a,#0x80
      000CBC C0 E0            [24] 2825 	push	acc
      000CBE 12 1A 37         [24] 2826 	lcall	_printf
      000CC1 15 81            [12] 2827 	dec	sp
      000CC3 15 81            [12] 2828 	dec	sp
      000CC5 15 81            [12] 2829 	dec	sp
      000CC7 D0 06            [24] 2830 	pop	ar6
      000CC9 D0 07            [24] 2831 	pop	ar7
                                   2832 ;	program.c:646: program_stats.allocated_heap = 2 * buff_size;
      000CCB EE               [12] 2833 	mov	a,r6
      000CCC 2E               [12] 2834 	add	a,r6
      000CCD FC               [12] 2835 	mov	r4,a
      000CCE EF               [12] 2836 	mov	a,r7
      000CCF 33               [12] 2837 	rlc	a
      000CD0 FD               [12] 2838 	mov	r5,a
      000CD1 90 00 03         [24] 2839 	mov	dptr,#(_program_stats + 0x0002)
      000CD4 EC               [12] 2840 	mov	a,r4
      000CD5 F0               [24] 2841 	movx	@dptr,a
      000CD6 ED               [12] 2842 	mov	a,r5
      000CD7 A3               [24] 2843 	inc	dptr
      000CD8 F0               [24] 2844 	movx	@dptr,a
                                   2845 ;	program.c:647: program_stats.total_heap_size = 4996;
      000CD9 90 00 01         [24] 2846 	mov	dptr,#_program_stats
      000CDC 74 84            [12] 2847 	mov	a,#0x84
      000CDE F0               [24] 2848 	movx	@dptr,a
      000CDF 74 13            [12] 2849 	mov	a,#0x13
      000CE1 A3               [24] 2850 	inc	dptr
      000CE2 F0               [24] 2851 	movx	@dptr,a
                                   2852 ;	program.c:648: program_stats.total_buffers = 2;
      000CE3 90 00 09         [24] 2853 	mov	dptr,#(_program_stats + 0x0008)
      000CE6 74 02            [12] 2854 	mov	a,#0x02
      000CE8 F0               [24] 2855 	movx	@dptr,a
      000CE9 E4               [12] 2856 	clr	a
      000CEA A3               [24] 2857 	inc	dptr
      000CEB F0               [24] 2858 	movx	@dptr,a
                                   2859 ;	program.c:650: buff.buff_size = buff_size;
      000CEC 90 01 4B         [24] 2860 	mov	dptr,#(_create_initial_buffers_buff_65538_110 + 0x0008)
      000CEF EE               [12] 2861 	mov	a,r6
      000CF0 F0               [24] 2862 	movx	@dptr,a
      000CF1 EF               [12] 2863 	mov	a,r7
      000CF2 A3               [24] 2864 	inc	dptr
      000CF3 F0               [24] 2865 	movx	@dptr,a
                                   2866 ;	program.c:651: buff1.buff_size = buff_size;
      000CF4 90 01 57         [24] 2867 	mov	dptr,#(_create_initial_buffers_buff1_65538_110 + 0x0008)
      000CF7 EE               [12] 2868 	mov	a,r6
      000CF8 F0               [24] 2869 	movx	@dptr,a
      000CF9 EF               [12] 2870 	mov	a,r7
      000CFA A3               [24] 2871 	inc	dptr
      000CFB F0               [24] 2872 	movx	@dptr,a
                                   2873 ;	program.c:652: buff.buffer_num = 0;
      000CFC 90 01 43         [24] 2874 	mov	dptr,#_create_initial_buffers_buff_65538_110
      000CFF E4               [12] 2875 	clr	a
      000D00 F0               [24] 2876 	movx	@dptr,a
      000D01 A3               [24] 2877 	inc	dptr
      000D02 F0               [24] 2878 	movx	@dptr,a
                                   2879 ;	program.c:653: buff1.buffer_num = 1;
      000D03 90 01 4F         [24] 2880 	mov	dptr,#_create_initial_buffers_buff1_65538_110
      000D06 04               [12] 2881 	inc	a
      000D07 F0               [24] 2882 	movx	@dptr,a
      000D08 E4               [12] 2883 	clr	a
      000D09 A3               [24] 2884 	inc	dptr
      000D0A F0               [24] 2885 	movx	@dptr,a
                                   2886 ;	program.c:654: buff1.buffer_end = buff1.buffer_start + buff_size;
      000D0B 90 01 51         [24] 2887 	mov	dptr,#(_create_initial_buffers_buff1_65538_110 + 0x0002)
      000D0E E0               [24] 2888 	movx	a,@dptr
      000D0F FB               [12] 2889 	mov	r3,a
      000D10 A3               [24] 2890 	inc	dptr
      000D11 E0               [24] 2891 	movx	a,@dptr
      000D12 FC               [12] 2892 	mov	r4,a
      000D13 A3               [24] 2893 	inc	dptr
      000D14 E0               [24] 2894 	movx	a,@dptr
      000D15 FD               [12] 2895 	mov	r5,a
      000D16 EE               [12] 2896 	mov	a,r6
      000D17 2B               [12] 2897 	add	a,r3
      000D18 FB               [12] 2898 	mov	r3,a
      000D19 EF               [12] 2899 	mov	a,r7
      000D1A 3C               [12] 2900 	addc	a,r4
      000D1B FC               [12] 2901 	mov	r4,a
      000D1C 90 01 54         [24] 2902 	mov	dptr,#(_create_initial_buffers_buff1_65538_110 + 0x0005)
      000D1F EB               [12] 2903 	mov	a,r3
      000D20 F0               [24] 2904 	movx	@dptr,a
      000D21 EC               [12] 2905 	mov	a,r4
      000D22 A3               [24] 2906 	inc	dptr
      000D23 F0               [24] 2907 	movx	@dptr,a
      000D24 ED               [12] 2908 	mov	a,r5
      000D25 A3               [24] 2909 	inc	dptr
      000D26 F0               [24] 2910 	movx	@dptr,a
                                   2911 ;	program.c:655: buff.buffer_end = buff.buffer_start + buff_size;
      000D27 90 01 45         [24] 2912 	mov	dptr,#(_create_initial_buffers_buff_65538_110 + 0x0002)
      000D2A E0               [24] 2913 	movx	a,@dptr
      000D2B FB               [12] 2914 	mov	r3,a
      000D2C A3               [24] 2915 	inc	dptr
      000D2D E0               [24] 2916 	movx	a,@dptr
      000D2E FC               [12] 2917 	mov	r4,a
      000D2F A3               [24] 2918 	inc	dptr
      000D30 E0               [24] 2919 	movx	a,@dptr
      000D31 FD               [12] 2920 	mov	r5,a
      000D32 EE               [12] 2921 	mov	a,r6
      000D33 2B               [12] 2922 	add	a,r3
      000D34 FE               [12] 2923 	mov	r6,a
      000D35 EF               [12] 2924 	mov	a,r7
      000D36 3C               [12] 2925 	addc	a,r4
      000D37 FF               [12] 2926 	mov	r7,a
      000D38 8D 02            [24] 2927 	mov	ar2,r5
      000D3A 90 01 48         [24] 2928 	mov	dptr,#(_create_initial_buffers_buff_65538_110 + 0x0005)
      000D3D EE               [12] 2929 	mov	a,r6
      000D3E F0               [24] 2930 	movx	@dptr,a
      000D3F EF               [12] 2931 	mov	a,r7
      000D40 A3               [24] 2932 	inc	dptr
      000D41 F0               [24] 2933 	movx	@dptr,a
      000D42 EA               [12] 2934 	mov	a,r2
      000D43 A3               [24] 2935 	inc	dptr
      000D44 F0               [24] 2936 	movx	@dptr,a
                                   2937 ;	program.c:656: buff.num_char = 0;
      000D45 90 01 4D         [24] 2938 	mov	dptr,#(_create_initial_buffers_buff_65538_110 + 0x000a)
      000D48 E4               [12] 2939 	clr	a
      000D49 F0               [24] 2940 	movx	@dptr,a
      000D4A A3               [24] 2941 	inc	dptr
      000D4B F0               [24] 2942 	movx	@dptr,a
                                   2943 ;	program.c:657: buff1.num_char = 0;
      000D4C 90 01 59         [24] 2944 	mov	dptr,#(_create_initial_buffers_buff1_65538_110 + 0x000a)
      000D4F F0               [24] 2945 	movx	@dptr,a
      000D50 A3               [24] 2946 	inc	dptr
      000D51 F0               [24] 2947 	movx	@dptr,a
                                   2948 ;	program.c:659: buffers_array[0] = buff;
      000D52 90 14 FE         [24] 2949 	mov	dptr,#___memcpy_PARM_2
      000D55 74 43            [12] 2950 	mov	a,#_create_initial_buffers_buff_65538_110
      000D57 F0               [24] 2951 	movx	@dptr,a
      000D58 74 01            [12] 2952 	mov	a,#(_create_initial_buffers_buff_65538_110 >> 8)
      000D5A A3               [24] 2953 	inc	dptr
      000D5B F0               [24] 2954 	movx	@dptr,a
      000D5C E4               [12] 2955 	clr	a
      000D5D A3               [24] 2956 	inc	dptr
      000D5E F0               [24] 2957 	movx	@dptr,a
      000D5F 90 15 01         [24] 2958 	mov	dptr,#___memcpy_PARM_3
      000D62 74 0C            [12] 2959 	mov	a,#0x0c
      000D64 F0               [24] 2960 	movx	@dptr,a
      000D65 E4               [12] 2961 	clr	a
      000D66 A3               [24] 2962 	inc	dptr
      000D67 F0               [24] 2963 	movx	@dptr,a
      000D68 90 00 0B         [24] 2964 	mov	dptr,#_buffers_array
      000D6B 75 F0 00         [24] 2965 	mov	b,#0x00
      000D6E 12 17 95         [24] 2966 	lcall	___memcpy
                                   2967 ;	program.c:660: buffers_array[1] = buff1;
      000D71 90 14 FE         [24] 2968 	mov	dptr,#___memcpy_PARM_2
      000D74 74 4F            [12] 2969 	mov	a,#_create_initial_buffers_buff1_65538_110
      000D76 F0               [24] 2970 	movx	@dptr,a
      000D77 74 01            [12] 2971 	mov	a,#(_create_initial_buffers_buff1_65538_110 >> 8)
      000D79 A3               [24] 2972 	inc	dptr
      000D7A F0               [24] 2973 	movx	@dptr,a
      000D7B E4               [12] 2974 	clr	a
      000D7C A3               [24] 2975 	inc	dptr
      000D7D F0               [24] 2976 	movx	@dptr,a
      000D7E 90 15 01         [24] 2977 	mov	dptr,#___memcpy_PARM_3
      000D81 74 0C            [12] 2978 	mov	a,#0x0c
      000D83 F0               [24] 2979 	movx	@dptr,a
      000D84 E4               [12] 2980 	clr	a
      000D85 A3               [24] 2981 	inc	dptr
      000D86 F0               [24] 2982 	movx	@dptr,a
      000D87 90 00 17         [24] 2983 	mov	dptr,#(_buffers_array + 0x000c)
      000D8A 75 F0 00         [24] 2984 	mov	b,#0x00
                                   2985 ;	program.c:664: goto get_buff;
                                   2986 ;	program.c:665: }
      000D8D 02 17 95         [24] 2987 	ljmp	___memcpy
                                   2988 ;------------------------------------------------------------
                                   2989 ;Allocation info for local variables in function 'enter_chars'
                                   2990 ;------------------------------------------------------------
                                   2991 ;rec                       Allocated with name '_enter_chars_rec_65537_115'
                                   2992 ;------------------------------------------------------------
                                   2993 ;	program.c:673: void enter_chars()
                                   2994 ;	-----------------------------------------
                                   2995 ;	 function enter_chars
                                   2996 ;	-----------------------------------------
      000D90                       2997 _enter_chars:
                                   2998 ;	program.c:675: DEBUGPORT(0x08);
      000D90 75 82 08         [24] 2999 	mov	dpl,#0x08
      000D93 12 15 04         [24] 3000 	lcall	_dataout
                                   3001 ;	program.c:676: print_heap_menu();
      000D96 12 09 8A         [24] 3002 	lcall	_print_heap_menu
                                   3003 ;	program.c:678: while (1)
      000D99                       3004 00126$:
                                   3005 ;	program.c:680: rec = getchar();
      000D99 12 14 C8         [24] 3006 	lcall	_getchar
      000D9C AE 82            [24] 3007 	mov	r6,dpl
      000D9E AF 83            [24] 3008 	mov	r7,dph
                                   3009 ;	program.c:681: if (rec > 0x60 && rec < 0x7B)
      000DA0 C3               [12] 3010 	clr	c
      000DA1 74 60            [12] 3011 	mov	a,#0x60
      000DA3 9E               [12] 3012 	subb	a,r6
      000DA4 74 80            [12] 3013 	mov	a,#(0x00 ^ 0x80)
      000DA6 8F F0            [24] 3014 	mov	b,r7
      000DA8 63 F0 80         [24] 3015 	xrl	b,#0x80
      000DAB 95 F0            [12] 3016 	subb	a,b
      000DAD 40 03            [24] 3017 	jc	00170$
      000DAF 02 0E 3E         [24] 3018 	ljmp	00122$
      000DB2                       3019 00170$:
      000DB2 C3               [12] 3020 	clr	c
      000DB3 EE               [12] 3021 	mov	a,r6
      000DB4 94 7B            [12] 3022 	subb	a,#0x7b
      000DB6 EF               [12] 3023 	mov	a,r7
      000DB7 64 80            [12] 3024 	xrl	a,#0x80
      000DB9 94 80            [12] 3025 	subb	a,#0x80
      000DBB 40 03            [24] 3026 	jc	00171$
      000DBD 02 0E 3E         [24] 3027 	ljmp	00122$
      000DC0                       3028 00171$:
                                   3029 ;	program.c:685: if (buffers_array[0].num_char < buffers_array[0].buff_size)
      000DC0 90 00 15         [24] 3030 	mov	dptr,#(_buffers_array + 0x000a)
      000DC3 E0               [24] 3031 	movx	a,@dptr
      000DC4 FC               [12] 3032 	mov	r4,a
      000DC5 A3               [24] 3033 	inc	dptr
      000DC6 E0               [24] 3034 	movx	a,@dptr
      000DC7 FD               [12] 3035 	mov	r5,a
      000DC8 90 00 13         [24] 3036 	mov	dptr,#(_buffers_array + 0x0008)
      000DCB E0               [24] 3037 	movx	a,@dptr
      000DCC FA               [12] 3038 	mov	r2,a
      000DCD A3               [24] 3039 	inc	dptr
      000DCE E0               [24] 3040 	movx	a,@dptr
      000DCF FB               [12] 3041 	mov	r3,a
      000DD0 C3               [12] 3042 	clr	c
      000DD1 EC               [12] 3043 	mov	a,r4
      000DD2 9A               [12] 3044 	subb	a,r2
      000DD3 ED               [12] 3045 	mov	a,r5
      000DD4 64 80            [12] 3046 	xrl	a,#0x80
      000DD6 8B F0            [24] 3047 	mov	b,r3
      000DD8 63 F0 80         [24] 3048 	xrl	b,#0x80
      000DDB 95 F0            [12] 3049 	subb	a,b
      000DDD 50 32            [24] 3050 	jnc	00102$
                                   3051 ;	program.c:687: *(buffers_array[0].buffer_start + buffers_array[0].num_char) = rec;
      000DDF 90 00 0D         [24] 3052 	mov	dptr,#(_buffers_array + 0x0002)
      000DE2 E0               [24] 3053 	movx	a,@dptr
      000DE3 F9               [12] 3054 	mov	r1,a
      000DE4 A3               [24] 3055 	inc	dptr
      000DE5 E0               [24] 3056 	movx	a,@dptr
      000DE6 FA               [12] 3057 	mov	r2,a
      000DE7 A3               [24] 3058 	inc	dptr
      000DE8 E0               [24] 3059 	movx	a,@dptr
      000DE9 FB               [12] 3060 	mov	r3,a
      000DEA EC               [12] 3061 	mov	a,r4
      000DEB 29               [12] 3062 	add	a,r1
      000DEC F9               [12] 3063 	mov	r1,a
      000DED ED               [12] 3064 	mov	a,r5
      000DEE 3A               [12] 3065 	addc	a,r2
      000DEF FA               [12] 3066 	mov	r2,a
      000DF0 8E 05            [24] 3067 	mov	ar5,r6
      000DF2 89 82            [24] 3068 	mov	dpl,r1
      000DF4 8A 83            [24] 3069 	mov	dph,r2
      000DF6 8B F0            [24] 3070 	mov	b,r3
      000DF8 ED               [12] 3071 	mov	a,r5
      000DF9 12 18 09         [24] 3072 	lcall	__gptrput
                                   3073 ;	program.c:688: buffers_array[0].num_char += 1;
      000DFC 90 00 15         [24] 3074 	mov	dptr,#(_buffers_array + 0x000a)
      000DFF E0               [24] 3075 	movx	a,@dptr
      000E00 FC               [12] 3076 	mov	r4,a
      000E01 A3               [24] 3077 	inc	dptr
      000E02 E0               [24] 3078 	movx	a,@dptr
      000E03 FD               [12] 3079 	mov	r5,a
      000E04 0C               [12] 3080 	inc	r4
      000E05 BC 00 01         [24] 3081 	cjne	r4,#0x00,00173$
      000E08 0D               [12] 3082 	inc	r5
      000E09                       3083 00173$:
      000E09 90 00 15         [24] 3084 	mov	dptr,#(_buffers_array + 0x000a)
      000E0C EC               [12] 3085 	mov	a,r4
      000E0D F0               [24] 3086 	movx	@dptr,a
      000E0E ED               [12] 3087 	mov	a,r5
      000E0F A3               [24] 3088 	inc	dptr
      000E10 F0               [24] 3089 	movx	@dptr,a
      000E11                       3090 00102$:
                                   3091 ;	program.c:690: program_stats.all_char_count += 1;
      000E11 90 00 05         [24] 3092 	mov	dptr,#(_program_stats + 0x0004)
      000E14 E0               [24] 3093 	movx	a,@dptr
      000E15 FC               [12] 3094 	mov	r4,a
      000E16 A3               [24] 3095 	inc	dptr
      000E17 E0               [24] 3096 	movx	a,@dptr
      000E18 FD               [12] 3097 	mov	r5,a
      000E19 0C               [12] 3098 	inc	r4
      000E1A BC 00 01         [24] 3099 	cjne	r4,#0x00,00174$
      000E1D 0D               [12] 3100 	inc	r5
      000E1E                       3101 00174$:
      000E1E 90 00 05         [24] 3102 	mov	dptr,#(_program_stats + 0x0004)
      000E21 EC               [12] 3103 	mov	a,r4
      000E22 F0               [24] 3104 	movx	@dptr,a
      000E23 ED               [12] 3105 	mov	a,r5
      000E24 A3               [24] 3106 	inc	dptr
      000E25 F0               [24] 3107 	movx	@dptr,a
                                   3108 ;	program.c:691: program_stats.storage_char_count += 1;
      000E26 90 00 07         [24] 3109 	mov	dptr,#(_program_stats + 0x0006)
      000E29 E0               [24] 3110 	movx	a,@dptr
      000E2A FC               [12] 3111 	mov	r4,a
      000E2B A3               [24] 3112 	inc	dptr
      000E2C E0               [24] 3113 	movx	a,@dptr
      000E2D FD               [12] 3114 	mov	r5,a
      000E2E 0C               [12] 3115 	inc	r4
      000E2F BC 00 01         [24] 3116 	cjne	r4,#0x00,00175$
      000E32 0D               [12] 3117 	inc	r5
      000E33                       3118 00175$:
      000E33 90 00 07         [24] 3119 	mov	dptr,#(_program_stats + 0x0006)
      000E36 EC               [12] 3120 	mov	a,r4
      000E37 F0               [24] 3121 	movx	@dptr,a
      000E38 ED               [12] 3122 	mov	a,r5
      000E39 A3               [24] 3123 	inc	dptr
      000E3A F0               [24] 3124 	movx	@dptr,a
      000E3B 02 0D 99         [24] 3125 	ljmp	00126$
      000E3E                       3126 00122$:
                                   3127 ;	program.c:693: else if (rec == 0x3F)
      000E3E BE 3F 1F         [24] 3128 	cjne	r6,#0x3f,00119$
      000E41 BF 00 1C         [24] 3129 	cjne	r7,#0x00,00119$
                                   3130 ;	program.c:696: print_heap_stats();
      000E44 12 11 23         [24] 3131 	lcall	_print_heap_stats
                                   3132 ;	program.c:697: print_all_buffers();
      000E47 12 11 E4         [24] 3133 	lcall	_print_all_buffers
                                   3134 ;	program.c:698: dump_buff_zero_ascii();
      000E4A 12 0E C0         [24] 3135 	lcall	_dump_buff_zero_ascii
                                   3136 ;	program.c:699: program_stats.all_char_count = 0;
      000E4D 90 00 05         [24] 3137 	mov	dptr,#(_program_stats + 0x0004)
      000E50 E4               [12] 3138 	clr	a
      000E51 F0               [24] 3139 	movx	@dptr,a
      000E52 A3               [24] 3140 	inc	dptr
      000E53 F0               [24] 3141 	movx	@dptr,a
                                   3142 ;	program.c:700: program_stats.storage_char_count = 0;
      000E54 90 00 07         [24] 3143 	mov	dptr,#(_program_stats + 0x0006)
      000E57 F0               [24] 3144 	movx	@dptr,a
      000E58 A3               [24] 3145 	inc	dptr
      000E59 F0               [24] 3146 	movx	@dptr,a
                                   3147 ;	program.c:701: print_heap_menu();
      000E5A 12 09 8A         [24] 3148 	lcall	_print_heap_menu
      000E5D 02 0D 99         [24] 3149 	ljmp	00126$
      000E60                       3150 00119$:
                                   3151 ;	program.c:703: else if (rec == 0x3D)
      000E60 BE 3D 0C         [24] 3152 	cjne	r6,#0x3d,00116$
      000E63 BF 00 09         [24] 3153 	cjne	r7,#0x00,00116$
                                   3154 ;	program.c:706: dump_buff_zero_hex();
      000E66 12 0F D6         [24] 3155 	lcall	_dump_buff_zero_hex
                                   3156 ;	program.c:707: print_heap_menu();
      000E69 12 09 8A         [24] 3157 	lcall	_print_heap_menu
      000E6C 02 0D 99         [24] 3158 	ljmp	00126$
      000E6F                       3159 00116$:
                                   3160 ;	program.c:709: else if (rec == 0x40)
      000E6F BE 40 0C         [24] 3161 	cjne	r6,#0x40,00113$
      000E72 BF 00 09         [24] 3162 	cjne	r7,#0x00,00113$
                                   3163 ;	program.c:712: at_clear_all_buffers();
      000E75 12 06 26         [24] 3164 	lcall	_at_clear_all_buffers
                                   3165 ;	program.c:713: print_heap_menu();
      000E78 12 09 8A         [24] 3166 	lcall	_print_heap_menu
      000E7B 02 0D 99         [24] 3167 	ljmp	00126$
      000E7E                       3168 00113$:
                                   3169 ;	program.c:715: else if (rec == 0x2B)
      000E7E BE 2B 0C         [24] 3170 	cjne	r6,#0x2b,00110$
      000E81 BF 00 09         [24] 3171 	cjne	r7,#0x00,00110$
                                   3172 ;	program.c:718: create_new_buffer();
      000E84 12 0A 39         [24] 3173 	lcall	_create_new_buffer
                                   3174 ;	program.c:719: print_heap_menu();
      000E87 12 09 8A         [24] 3175 	lcall	_print_heap_menu
      000E8A 02 0D 99         [24] 3176 	ljmp	00126$
      000E8D                       3177 00110$:
                                   3178 ;	program.c:721: else if (rec == 0x2D)
      000E8D BE 2D 0C         [24] 3179 	cjne	r6,#0x2d,00107$
      000E90 BF 00 09         [24] 3180 	cjne	r7,#0x00,00107$
                                   3181 ;	program.c:724: delete_buffer();
      000E93 12 06 C0         [24] 3182 	lcall	_delete_buffer
                                   3183 ;	program.c:725: print_heap_menu();
      000E96 12 09 8A         [24] 3184 	lcall	_print_heap_menu
      000E99 02 0D 99         [24] 3185 	ljmp	00126$
      000E9C                       3186 00107$:
                                   3187 ;	program.c:727: else if (rec == 0x4D)
      000E9C BE 4D 09         [24] 3188 	cjne	r6,#0x4d,00104$
      000E9F BF 00 06         [24] 3189 	cjne	r7,#0x00,00104$
                                   3190 ;	program.c:729: main_menu();
      000EA2 12 04 5E         [24] 3191 	lcall	_main_menu
      000EA5 02 0D 99         [24] 3192 	ljmp	00126$
      000EA8                       3193 00104$:
                                   3194 ;	program.c:733: program_stats.all_char_count += 1;
      000EA8 90 00 05         [24] 3195 	mov	dptr,#(_program_stats + 0x0004)
      000EAB E0               [24] 3196 	movx	a,@dptr
      000EAC FE               [12] 3197 	mov	r6,a
      000EAD A3               [24] 3198 	inc	dptr
      000EAE E0               [24] 3199 	movx	a,@dptr
      000EAF FF               [12] 3200 	mov	r7,a
      000EB0 0E               [12] 3201 	inc	r6
      000EB1 BE 00 01         [24] 3202 	cjne	r6,#0x00,00188$
      000EB4 0F               [12] 3203 	inc	r7
      000EB5                       3204 00188$:
      000EB5 90 00 05         [24] 3205 	mov	dptr,#(_program_stats + 0x0004)
      000EB8 EE               [12] 3206 	mov	a,r6
      000EB9 F0               [24] 3207 	movx	@dptr,a
      000EBA EF               [12] 3208 	mov	a,r7
      000EBB A3               [24] 3209 	inc	dptr
      000EBC F0               [24] 3210 	movx	@dptr,a
                                   3211 ;	program.c:736: }
      000EBD 02 0D 99         [24] 3212 	ljmp	00126$
                                   3213 ;------------------------------------------------------------
                                   3214 ;Allocation info for local variables in function 'dump_buff_zero_ascii'
                                   3215 ;------------------------------------------------------------
                                   3216 ;j                         Allocated with name '_dump_buff_zero_ascii_j_65537_127'
                                   3217 ;i                         Allocated with name '_dump_buff_zero_ascii_i_196609_129'
                                   3218 ;------------------------------------------------------------
                                   3219 ;	program.c:744: void dump_buff_zero_ascii()
                                   3220 ;	-----------------------------------------
                                   3221 ;	 function dump_buff_zero_ascii
                                   3222 ;	-----------------------------------------
      000EC0                       3223 _dump_buff_zero_ascii:
                                   3224 ;	program.c:746: DEBUGPORT(0x09);
      000EC0 75 82 09         [24] 3225 	mov	dpl,#0x09
      000EC3 12 15 04         [24] 3226 	lcall	_dataout
                                   3227 ;	program.c:747: int j = 64;
      000EC6 90 01 5B         [24] 3228 	mov	dptr,#_dump_buff_zero_ascii_j_65537_127
      000EC9 74 40            [12] 3229 	mov	a,#0x40
      000ECB F0               [24] 3230 	movx	@dptr,a
      000ECC E4               [12] 3231 	clr	a
      000ECD A3               [24] 3232 	inc	dptr
      000ECE F0               [24] 3233 	movx	@dptr,a
                                   3234 ;	program.c:748: if (buffers_array[0].num_char > 0)
      000ECF 90 00 15         [24] 3235 	mov	dptr,#(_buffers_array + 0x000a)
      000ED2 E0               [24] 3236 	movx	a,@dptr
      000ED3 FE               [12] 3237 	mov	r6,a
      000ED4 A3               [24] 3238 	inc	dptr
      000ED5 E0               [24] 3239 	movx	a,@dptr
      000ED6 FF               [12] 3240 	mov	r7,a
      000ED7 C3               [12] 3241 	clr	c
      000ED8 E4               [12] 3242 	clr	a
      000ED9 9E               [12] 3243 	subb	a,r6
      000EDA 74 80            [12] 3244 	mov	a,#(0x00 ^ 0x80)
      000EDC 8F F0            [24] 3245 	mov	b,r7
      000EDE 63 F0 80         [24] 3246 	xrl	b,#0x80
      000EE1 95 F0            [12] 3247 	subb	a,b
      000EE3 40 03            [24] 3248 	jc	00135$
      000EE5 02 0F C0         [24] 3249 	ljmp	00107$
      000EE8                       3250 00135$:
                                   3251 ;	program.c:750: printf("\n\n\r***********Buffer-0-Contents*********** \n\r");
      000EE8 74 89            [12] 3252 	mov	a,#___str_59
      000EEA C0 E0            [24] 3253 	push	acc
      000EEC 74 2D            [12] 3254 	mov	a,#(___str_59 >> 8)
      000EEE C0 E0            [24] 3255 	push	acc
      000EF0 74 80            [12] 3256 	mov	a,#0x80
      000EF2 C0 E0            [24] 3257 	push	acc
      000EF4 12 1A 37         [24] 3258 	lcall	_printf
      000EF7 15 81            [12] 3259 	dec	sp
      000EF9 15 81            [12] 3260 	dec	sp
      000EFB 15 81            [12] 3261 	dec	sp
                                   3262 ;	program.c:751: for (int i = 0; i < buffers_array[0].num_char; i++)
      000EFD 7E 00            [12] 3263 	mov	r6,#0x00
      000EFF 7F 00            [12] 3264 	mov	r7,#0x00
      000F01                       3265 00110$:
      000F01 90 00 15         [24] 3266 	mov	dptr,#(_buffers_array + 0x000a)
      000F04 E0               [24] 3267 	movx	a,@dptr
      000F05 FC               [12] 3268 	mov	r4,a
      000F06 A3               [24] 3269 	inc	dptr
      000F07 E0               [24] 3270 	movx	a,@dptr
      000F08 FD               [12] 3271 	mov	r5,a
      000F09 C3               [12] 3272 	clr	c
      000F0A EE               [12] 3273 	mov	a,r6
      000F0B 9C               [12] 3274 	subb	a,r4
      000F0C EF               [12] 3275 	mov	a,r7
      000F0D 64 80            [12] 3276 	xrl	a,#0x80
      000F0F 8D F0            [24] 3277 	mov	b,r5
      000F11 63 F0 80         [24] 3278 	xrl	b,#0x80
      000F14 95 F0            [12] 3279 	subb	a,b
      000F16 40 03            [24] 3280 	jc	00136$
      000F18 02 0F A3         [24] 3281 	ljmp	00105$
      000F1B                       3282 00136$:
                                   3283 ;	program.c:753: if (j == 64)
      000F1B 90 01 5B         [24] 3284 	mov	dptr,#_dump_buff_zero_ascii_j_65537_127
      000F1E E0               [24] 3285 	movx	a,@dptr
      000F1F FC               [12] 3286 	mov	r4,a
      000F20 A3               [24] 3287 	inc	dptr
      000F21 E0               [24] 3288 	movx	a,@dptr
      000F22 FD               [12] 3289 	mov	r5,a
      000F23 BC 40 20         [24] 3290 	cjne	r4,#0x40,00102$
      000F26 BD 00 1D         [24] 3291 	cjne	r5,#0x00,00102$
                                   3292 ;	program.c:755: printf("\n\r");
      000F29 C0 07            [24] 3293 	push	ar7
      000F2B C0 06            [24] 3294 	push	ar6
      000F2D 74 B7            [12] 3295 	mov	a,#___str_60
      000F2F C0 E0            [24] 3296 	push	acc
      000F31 74 2D            [12] 3297 	mov	a,#(___str_60 >> 8)
      000F33 C0 E0            [24] 3298 	push	acc
      000F35 74 80            [12] 3299 	mov	a,#0x80
      000F37 C0 E0            [24] 3300 	push	acc
      000F39 12 1A 37         [24] 3301 	lcall	_printf
      000F3C 15 81            [12] 3302 	dec	sp
      000F3E 15 81            [12] 3303 	dec	sp
      000F40 15 81            [12] 3304 	dec	sp
      000F42 D0 06            [24] 3305 	pop	ar6
      000F44 D0 07            [24] 3306 	pop	ar7
      000F46                       3307 00102$:
                                   3308 ;	program.c:757: putchar(*(buffers_array[0].buffer_start + i));
      000F46 90 00 0D         [24] 3309 	mov	dptr,#(_buffers_array + 0x0002)
      000F49 E0               [24] 3310 	movx	a,@dptr
      000F4A FB               [12] 3311 	mov	r3,a
      000F4B A3               [24] 3312 	inc	dptr
      000F4C E0               [24] 3313 	movx	a,@dptr
      000F4D FC               [12] 3314 	mov	r4,a
      000F4E A3               [24] 3315 	inc	dptr
      000F4F E0               [24] 3316 	movx	a,@dptr
      000F50 FD               [12] 3317 	mov	r5,a
      000F51 EE               [12] 3318 	mov	a,r6
      000F52 2B               [12] 3319 	add	a,r3
      000F53 FB               [12] 3320 	mov	r3,a
      000F54 EF               [12] 3321 	mov	a,r7
      000F55 3C               [12] 3322 	addc	a,r4
      000F56 FC               [12] 3323 	mov	r4,a
      000F57 8B 82            [24] 3324 	mov	dpl,r3
      000F59 8C 83            [24] 3325 	mov	dph,r4
      000F5B 8D F0            [24] 3326 	mov	b,r5
      000F5D 12 24 56         [24] 3327 	lcall	__gptrget
      000F60 FB               [12] 3328 	mov	r3,a
      000F61 7D 00            [12] 3329 	mov	r5,#0x00
      000F63 8B 82            [24] 3330 	mov	dpl,r3
      000F65 8D 83            [24] 3331 	mov	dph,r5
      000F67 C0 07            [24] 3332 	push	ar7
      000F69 C0 06            [24] 3333 	push	ar6
      000F6B 12 14 A9         [24] 3334 	lcall	_putchar
      000F6E D0 06            [24] 3335 	pop	ar6
      000F70 D0 07            [24] 3336 	pop	ar7
                                   3337 ;	program.c:758: j--;
      000F72 90 01 5B         [24] 3338 	mov	dptr,#_dump_buff_zero_ascii_j_65537_127
      000F75 E0               [24] 3339 	movx	a,@dptr
      000F76 24 FF            [12] 3340 	add	a,#0xff
      000F78 FC               [12] 3341 	mov	r4,a
      000F79 A3               [24] 3342 	inc	dptr
      000F7A E0               [24] 3343 	movx	a,@dptr
      000F7B 34 FF            [12] 3344 	addc	a,#0xff
      000F7D FD               [12] 3345 	mov	r5,a
      000F7E 90 01 5B         [24] 3346 	mov	dptr,#_dump_buff_zero_ascii_j_65537_127
      000F81 EC               [12] 3347 	mov	a,r4
      000F82 F0               [24] 3348 	movx	@dptr,a
      000F83 ED               [12] 3349 	mov	a,r5
      000F84 A3               [24] 3350 	inc	dptr
      000F85 F0               [24] 3351 	movx	@dptr,a
                                   3352 ;	program.c:759: if (j == 0)
      000F86 90 01 5B         [24] 3353 	mov	dptr,#_dump_buff_zero_ascii_j_65537_127
      000F89 E0               [24] 3354 	movx	a,@dptr
      000F8A F5 F0            [12] 3355 	mov	b,a
      000F8C A3               [24] 3356 	inc	dptr
      000F8D E0               [24] 3357 	movx	a,@dptr
      000F8E 45 F0            [12] 3358 	orl	a,b
      000F90 70 09            [24] 3359 	jnz	00111$
                                   3360 ;	program.c:760: j = 64;
      000F92 90 01 5B         [24] 3361 	mov	dptr,#_dump_buff_zero_ascii_j_65537_127
      000F95 74 40            [12] 3362 	mov	a,#0x40
      000F97 F0               [24] 3363 	movx	@dptr,a
      000F98 E4               [12] 3364 	clr	a
      000F99 A3               [24] 3365 	inc	dptr
      000F9A F0               [24] 3366 	movx	@dptr,a
      000F9B                       3367 00111$:
                                   3368 ;	program.c:751: for (int i = 0; i < buffers_array[0].num_char; i++)
      000F9B 0E               [12] 3369 	inc	r6
      000F9C BE 00 01         [24] 3370 	cjne	r6,#0x00,00140$
      000F9F 0F               [12] 3371 	inc	r7
      000FA0                       3372 00140$:
      000FA0 02 0F 01         [24] 3373 	ljmp	00110$
      000FA3                       3374 00105$:
                                   3375 ;	program.c:762: buffers_array[0].num_char = 0;
      000FA3 90 00 15         [24] 3376 	mov	dptr,#(_buffers_array + 0x000a)
      000FA6 E4               [12] 3377 	clr	a
      000FA7 F0               [24] 3378 	movx	@dptr,a
      000FA8 A3               [24] 3379 	inc	dptr
      000FA9 F0               [24] 3380 	movx	@dptr,a
                                   3381 ;	program.c:763: printf("\n\n\r");
      000FAA 74 BA            [12] 3382 	mov	a,#___str_61
      000FAC C0 E0            [24] 3383 	push	acc
      000FAE 74 2D            [12] 3384 	mov	a,#(___str_61 >> 8)
      000FB0 C0 E0            [24] 3385 	push	acc
      000FB2 74 80            [12] 3386 	mov	a,#0x80
      000FB4 C0 E0            [24] 3387 	push	acc
      000FB6 12 1A 37         [24] 3388 	lcall	_printf
      000FB9 15 81            [12] 3389 	dec	sp
      000FBB 15 81            [12] 3390 	dec	sp
      000FBD 15 81            [12] 3391 	dec	sp
      000FBF 22               [24] 3392 	ret
      000FC0                       3393 00107$:
                                   3394 ;	program.c:767: printf("Buffer0 is Empty....\n\r");
      000FC0 74 BE            [12] 3395 	mov	a,#___str_62
      000FC2 C0 E0            [24] 3396 	push	acc
      000FC4 74 2D            [12] 3397 	mov	a,#(___str_62 >> 8)
      000FC6 C0 E0            [24] 3398 	push	acc
      000FC8 74 80            [12] 3399 	mov	a,#0x80
      000FCA C0 E0            [24] 3400 	push	acc
      000FCC 12 1A 37         [24] 3401 	lcall	_printf
      000FCF 15 81            [12] 3402 	dec	sp
      000FD1 15 81            [12] 3403 	dec	sp
      000FD3 15 81            [12] 3404 	dec	sp
                                   3405 ;	program.c:769: }
      000FD5 22               [24] 3406 	ret
                                   3407 ;------------------------------------------------------------
                                   3408 ;Allocation info for local variables in function 'dump_buff_zero_hex'
                                   3409 ;------------------------------------------------------------
                                   3410 ;j                         Allocated with name '_dump_buff_zero_hex_j_131073_135'
                                   3411 ;i                         Allocated with name '_dump_buff_zero_hex_i_196609_136'
                                   3412 ;------------------------------------------------------------
                                   3413 ;	program.c:776: void dump_buff_zero_hex()
                                   3414 ;	-----------------------------------------
                                   3415 ;	 function dump_buff_zero_hex
                                   3416 ;	-----------------------------------------
      000FD6                       3417 _dump_buff_zero_hex:
                                   3418 ;	program.c:778: DEBUGPORT(0xA);
      000FD6 75 82 0A         [24] 3419 	mov	dpl,#0x0a
      000FD9 12 15 04         [24] 3420 	lcall	_dataout
                                   3421 ;	program.c:779: if (buffers_array[0].num_char > 0)
      000FDC 90 00 15         [24] 3422 	mov	dptr,#(_buffers_array + 0x000a)
      000FDF E0               [24] 3423 	movx	a,@dptr
      000FE0 FE               [12] 3424 	mov	r6,a
      000FE1 A3               [24] 3425 	inc	dptr
      000FE2 E0               [24] 3426 	movx	a,@dptr
      000FE3 FF               [12] 3427 	mov	r7,a
      000FE4 C3               [12] 3428 	clr	c
      000FE5 E4               [12] 3429 	clr	a
      000FE6 9E               [12] 3430 	subb	a,r6
      000FE7 74 80            [12] 3431 	mov	a,#(0x00 ^ 0x80)
      000FE9 8F F0            [24] 3432 	mov	b,r7
      000FEB 63 F0 80         [24] 3433 	xrl	b,#0x80
      000FEE 95 F0            [12] 3434 	subb	a,b
      000FF0 40 03            [24] 3435 	jc	00135$
      000FF2 02 11 0D         [24] 3436 	ljmp	00107$
      000FF5                       3437 00135$:
                                   3438 ;	program.c:781: printf("\n\r-------------------------HEXDUMP--------------------------------");
      000FF5 74 D5            [12] 3439 	mov	a,#___str_63
      000FF7 C0 E0            [24] 3440 	push	acc
      000FF9 74 2D            [12] 3441 	mov	a,#(___str_63 >> 8)
      000FFB C0 E0            [24] 3442 	push	acc
      000FFD 74 80            [12] 3443 	mov	a,#0x80
      000FFF C0 E0            [24] 3444 	push	acc
      001001 12 1A 37         [24] 3445 	lcall	_printf
      001004 15 81            [12] 3446 	dec	sp
      001006 15 81            [12] 3447 	dec	sp
      001008 15 81            [12] 3448 	dec	sp
                                   3449 ;	program.c:782: printf("\n\r    ADDR: +0 +1 +2 +3 +4 +5 +6 +7 +8 +9 +A +B +C +D +E +F \n\r");
      00100A 74 18            [12] 3450 	mov	a,#___str_64
      00100C C0 E0            [24] 3451 	push	acc
      00100E 74 2E            [12] 3452 	mov	a,#(___str_64 >> 8)
      001010 C0 E0            [24] 3453 	push	acc
      001012 74 80            [12] 3454 	mov	a,#0x80
      001014 C0 E0            [24] 3455 	push	acc
      001016 12 1A 37         [24] 3456 	lcall	_printf
      001019 15 81            [12] 3457 	dec	sp
      00101B 15 81            [12] 3458 	dec	sp
      00101D 15 81            [12] 3459 	dec	sp
                                   3460 ;	program.c:783: int j = 16;
      00101F 90 01 5D         [24] 3461 	mov	dptr,#_dump_buff_zero_hex_j_131073_135
      001022 74 10            [12] 3462 	mov	a,#0x10
      001024 F0               [24] 3463 	movx	@dptr,a
      001025 E4               [12] 3464 	clr	a
      001026 A3               [24] 3465 	inc	dptr
      001027 F0               [24] 3466 	movx	@dptr,a
                                   3467 ;	program.c:785: for (int i = 0; i < buffers_array[0].num_char; i++)
      001028 7E 00            [12] 3468 	mov	r6,#0x00
      00102A 7F 00            [12] 3469 	mov	r7,#0x00
      00102C                       3470 00110$:
      00102C 90 00 15         [24] 3471 	mov	dptr,#(_buffers_array + 0x000a)
      00102F E0               [24] 3472 	movx	a,@dptr
      001030 FC               [12] 3473 	mov	r4,a
      001031 A3               [24] 3474 	inc	dptr
      001032 E0               [24] 3475 	movx	a,@dptr
      001033 FD               [12] 3476 	mov	r5,a
      001034 C3               [12] 3477 	clr	c
      001035 EE               [12] 3478 	mov	a,r6
      001036 9C               [12] 3479 	subb	a,r4
      001037 EF               [12] 3480 	mov	a,r7
      001038 64 80            [12] 3481 	xrl	a,#0x80
      00103A 8D F0            [24] 3482 	mov	b,r5
      00103C 63 F0 80         [24] 3483 	xrl	b,#0x80
      00103F 95 F0            [12] 3484 	subb	a,b
      001041 40 03            [24] 3485 	jc	00136$
      001043 02 10 F7         [24] 3486 	ljmp	00105$
      001046                       3487 00136$:
                                   3488 ;	program.c:787: if (j == 16)
      001046 90 01 5D         [24] 3489 	mov	dptr,#_dump_buff_zero_hex_j_131073_135
      001049 E0               [24] 3490 	movx	a,@dptr
      00104A FC               [12] 3491 	mov	r4,a
      00104B A3               [24] 3492 	inc	dptr
      00104C E0               [24] 3493 	movx	a,@dptr
      00104D FD               [12] 3494 	mov	r5,a
      00104E BC 10 37         [24] 3495 	cjne	r4,#0x10,00102$
      001051 BD 00 34         [24] 3496 	cjne	r5,#0x00,00102$
                                   3497 ;	program.c:789: printf("\n\r%p: ", (buffers_array[0].buffer_start + i));
      001054 90 00 0D         [24] 3498 	mov	dptr,#(_buffers_array + 0x0002)
      001057 E0               [24] 3499 	movx	a,@dptr
      001058 FB               [12] 3500 	mov	r3,a
      001059 A3               [24] 3501 	inc	dptr
      00105A E0               [24] 3502 	movx	a,@dptr
      00105B FC               [12] 3503 	mov	r4,a
      00105C A3               [24] 3504 	inc	dptr
      00105D E0               [24] 3505 	movx	a,@dptr
      00105E FD               [12] 3506 	mov	r5,a
      00105F EE               [12] 3507 	mov	a,r6
      001060 2B               [12] 3508 	add	a,r3
      001061 FB               [12] 3509 	mov	r3,a
      001062 EF               [12] 3510 	mov	a,r7
      001063 3C               [12] 3511 	addc	a,r4
      001064 FC               [12] 3512 	mov	r4,a
      001065 C0 07            [24] 3513 	push	ar7
      001067 C0 06            [24] 3514 	push	ar6
      001069 C0 03            [24] 3515 	push	ar3
      00106B C0 04            [24] 3516 	push	ar4
      00106D C0 05            [24] 3517 	push	ar5
      00106F 74 57            [12] 3518 	mov	a,#___str_65
      001071 C0 E0            [24] 3519 	push	acc
      001073 74 2E            [12] 3520 	mov	a,#(___str_65 >> 8)
      001075 C0 E0            [24] 3521 	push	acc
      001077 74 80            [12] 3522 	mov	a,#0x80
      001079 C0 E0            [24] 3523 	push	acc
      00107B 12 1A 37         [24] 3524 	lcall	_printf
      00107E E5 81            [12] 3525 	mov	a,sp
      001080 24 FA            [12] 3526 	add	a,#0xfa
      001082 F5 81            [12] 3527 	mov	sp,a
      001084 D0 06            [24] 3528 	pop	ar6
      001086 D0 07            [24] 3529 	pop	ar7
      001088                       3530 00102$:
                                   3531 ;	program.c:791: printf("%x ", *(buffers_array[0].buffer_start + i));
      001088 90 00 0D         [24] 3532 	mov	dptr,#(_buffers_array + 0x0002)
      00108B E0               [24] 3533 	movx	a,@dptr
      00108C FB               [12] 3534 	mov	r3,a
      00108D A3               [24] 3535 	inc	dptr
      00108E E0               [24] 3536 	movx	a,@dptr
      00108F FC               [12] 3537 	mov	r4,a
      001090 A3               [24] 3538 	inc	dptr
      001091 E0               [24] 3539 	movx	a,@dptr
      001092 FD               [12] 3540 	mov	r5,a
      001093 EE               [12] 3541 	mov	a,r6
      001094 2B               [12] 3542 	add	a,r3
      001095 FB               [12] 3543 	mov	r3,a
      001096 EF               [12] 3544 	mov	a,r7
      001097 3C               [12] 3545 	addc	a,r4
      001098 FC               [12] 3546 	mov	r4,a
      001099 8B 82            [24] 3547 	mov	dpl,r3
      00109B 8C 83            [24] 3548 	mov	dph,r4
      00109D 8D F0            [24] 3549 	mov	b,r5
      00109F 12 24 56         [24] 3550 	lcall	__gptrget
      0010A2 FB               [12] 3551 	mov	r3,a
      0010A3 7D 00            [12] 3552 	mov	r5,#0x00
      0010A5 C0 07            [24] 3553 	push	ar7
      0010A7 C0 06            [24] 3554 	push	ar6
      0010A9 C0 03            [24] 3555 	push	ar3
      0010AB C0 05            [24] 3556 	push	ar5
      0010AD 74 5E            [12] 3557 	mov	a,#___str_66
      0010AF C0 E0            [24] 3558 	push	acc
      0010B1 74 2E            [12] 3559 	mov	a,#(___str_66 >> 8)
      0010B3 C0 E0            [24] 3560 	push	acc
      0010B5 74 80            [12] 3561 	mov	a,#0x80
      0010B7 C0 E0            [24] 3562 	push	acc
      0010B9 12 1A 37         [24] 3563 	lcall	_printf
      0010BC E5 81            [12] 3564 	mov	a,sp
      0010BE 24 FB            [12] 3565 	add	a,#0xfb
      0010C0 F5 81            [12] 3566 	mov	sp,a
      0010C2 D0 06            [24] 3567 	pop	ar6
      0010C4 D0 07            [24] 3568 	pop	ar7
                                   3569 ;	program.c:792: j--;
      0010C6 90 01 5D         [24] 3570 	mov	dptr,#_dump_buff_zero_hex_j_131073_135
      0010C9 E0               [24] 3571 	movx	a,@dptr
      0010CA 24 FF            [12] 3572 	add	a,#0xff
      0010CC FC               [12] 3573 	mov	r4,a
      0010CD A3               [24] 3574 	inc	dptr
      0010CE E0               [24] 3575 	movx	a,@dptr
      0010CF 34 FF            [12] 3576 	addc	a,#0xff
      0010D1 FD               [12] 3577 	mov	r5,a
      0010D2 90 01 5D         [24] 3578 	mov	dptr,#_dump_buff_zero_hex_j_131073_135
      0010D5 EC               [12] 3579 	mov	a,r4
      0010D6 F0               [24] 3580 	movx	@dptr,a
      0010D7 ED               [12] 3581 	mov	a,r5
      0010D8 A3               [24] 3582 	inc	dptr
      0010D9 F0               [24] 3583 	movx	@dptr,a
                                   3584 ;	program.c:793: if (j == 0)
      0010DA 90 01 5D         [24] 3585 	mov	dptr,#_dump_buff_zero_hex_j_131073_135
      0010DD E0               [24] 3586 	movx	a,@dptr
      0010DE F5 F0            [12] 3587 	mov	b,a
      0010E0 A3               [24] 3588 	inc	dptr
      0010E1 E0               [24] 3589 	movx	a,@dptr
      0010E2 45 F0            [12] 3590 	orl	a,b
      0010E4 70 09            [24] 3591 	jnz	00111$
                                   3592 ;	program.c:794: j = 16;
      0010E6 90 01 5D         [24] 3593 	mov	dptr,#_dump_buff_zero_hex_j_131073_135
      0010E9 74 10            [12] 3594 	mov	a,#0x10
      0010EB F0               [24] 3595 	movx	@dptr,a
      0010EC E4               [12] 3596 	clr	a
      0010ED A3               [24] 3597 	inc	dptr
      0010EE F0               [24] 3598 	movx	@dptr,a
      0010EF                       3599 00111$:
                                   3600 ;	program.c:785: for (int i = 0; i < buffers_array[0].num_char; i++)
      0010EF 0E               [12] 3601 	inc	r6
      0010F0 BE 00 01         [24] 3602 	cjne	r6,#0x00,00140$
      0010F3 0F               [12] 3603 	inc	r7
      0010F4                       3604 00140$:
      0010F4 02 10 2C         [24] 3605 	ljmp	00110$
      0010F7                       3606 00105$:
                                   3607 ;	program.c:796: printf("\n\n\r");
      0010F7 74 BA            [12] 3608 	mov	a,#___str_61
      0010F9 C0 E0            [24] 3609 	push	acc
      0010FB 74 2D            [12] 3610 	mov	a,#(___str_61 >> 8)
      0010FD C0 E0            [24] 3611 	push	acc
      0010FF 74 80            [12] 3612 	mov	a,#0x80
      001101 C0 E0            [24] 3613 	push	acc
      001103 12 1A 37         [24] 3614 	lcall	_printf
      001106 15 81            [12] 3615 	dec	sp
      001108 15 81            [12] 3616 	dec	sp
      00110A 15 81            [12] 3617 	dec	sp
      00110C 22               [24] 3618 	ret
      00110D                       3619 00107$:
                                   3620 ;	program.c:800: printf("Buffer 0 is empty...\n\r");
      00110D 74 62            [12] 3621 	mov	a,#___str_67
      00110F C0 E0            [24] 3622 	push	acc
      001111 74 2E            [12] 3623 	mov	a,#(___str_67 >> 8)
      001113 C0 E0            [24] 3624 	push	acc
      001115 74 80            [12] 3625 	mov	a,#0x80
      001117 C0 E0            [24] 3626 	push	acc
      001119 12 1A 37         [24] 3627 	lcall	_printf
      00111C 15 81            [12] 3628 	dec	sp
      00111E 15 81            [12] 3629 	dec	sp
      001120 15 81            [12] 3630 	dec	sp
                                   3631 ;	program.c:802: }
      001122 22               [24] 3632 	ret
                                   3633 ;------------------------------------------------------------
                                   3634 ;Allocation info for local variables in function 'print_heap_stats'
                                   3635 ;------------------------------------------------------------
                                   3636 ;	program.c:809: void print_heap_stats()
                                   3637 ;	-----------------------------------------
                                   3638 ;	 function print_heap_stats
                                   3639 ;	-----------------------------------------
      001123                       3640 _print_heap_stats:
                                   3641 ;	program.c:811: DEBUGPORT(0xB);
      001123 75 82 0B         [24] 3642 	mov	dpl,#0x0b
      001126 12 15 04         [24] 3643 	lcall	_dataout
                                   3644 ;	program.c:812: printf("\n\r****************HEAP*STATS*************\n\r");
      001129 74 79            [12] 3645 	mov	a,#___str_68
      00112B C0 E0            [24] 3646 	push	acc
      00112D 74 2E            [12] 3647 	mov	a,#(___str_68 >> 8)
      00112F C0 E0            [24] 3648 	push	acc
      001131 74 80            [12] 3649 	mov	a,#0x80
      001133 C0 E0            [24] 3650 	push	acc
      001135 12 1A 37         [24] 3651 	lcall	_printf
      001138 15 81            [12] 3652 	dec	sp
      00113A 15 81            [12] 3653 	dec	sp
      00113C 15 81            [12] 3654 	dec	sp
                                   3655 ;	program.c:813: printf("Total Heap Size: %d \n\r", program_stats.total_heap_size);
      00113E 90 00 01         [24] 3656 	mov	dptr,#_program_stats
      001141 E0               [24] 3657 	movx	a,@dptr
      001142 FE               [12] 3658 	mov	r6,a
      001143 A3               [24] 3659 	inc	dptr
      001144 E0               [24] 3660 	movx	a,@dptr
      001145 FF               [12] 3661 	mov	r7,a
      001146 C0 06            [24] 3662 	push	ar6
      001148 C0 07            [24] 3663 	push	ar7
      00114A 74 A5            [12] 3664 	mov	a,#___str_69
      00114C C0 E0            [24] 3665 	push	acc
      00114E 74 2E            [12] 3666 	mov	a,#(___str_69 >> 8)
      001150 C0 E0            [24] 3667 	push	acc
      001152 74 80            [12] 3668 	mov	a,#0x80
      001154 C0 E0            [24] 3669 	push	acc
      001156 12 1A 37         [24] 3670 	lcall	_printf
      001159 E5 81            [12] 3671 	mov	a,sp
      00115B 24 FB            [12] 3672 	add	a,#0xfb
      00115D F5 81            [12] 3673 	mov	sp,a
                                   3674 ;	program.c:814: printf("Allocated Heap Size: %d \n\r", program_stats.allocated_heap);
      00115F 90 00 03         [24] 3675 	mov	dptr,#(_program_stats + 0x0002)
      001162 E0               [24] 3676 	movx	a,@dptr
      001163 FE               [12] 3677 	mov	r6,a
      001164 A3               [24] 3678 	inc	dptr
      001165 E0               [24] 3679 	movx	a,@dptr
      001166 FF               [12] 3680 	mov	r7,a
      001167 C0 06            [24] 3681 	push	ar6
      001169 C0 07            [24] 3682 	push	ar7
      00116B 74 BC            [12] 3683 	mov	a,#___str_70
      00116D C0 E0            [24] 3684 	push	acc
      00116F 74 2E            [12] 3685 	mov	a,#(___str_70 >> 8)
      001171 C0 E0            [24] 3686 	push	acc
      001173 74 80            [12] 3687 	mov	a,#0x80
      001175 C0 E0            [24] 3688 	push	acc
      001177 12 1A 37         [24] 3689 	lcall	_printf
      00117A E5 81            [12] 3690 	mov	a,sp
      00117C 24 FB            [12] 3691 	add	a,#0xfb
      00117E F5 81            [12] 3692 	mov	sp,a
                                   3693 ;	program.c:815: printf("All Chars: %d \n\r", program_stats.all_char_count);
      001180 90 00 05         [24] 3694 	mov	dptr,#(_program_stats + 0x0004)
      001183 E0               [24] 3695 	movx	a,@dptr
      001184 FE               [12] 3696 	mov	r6,a
      001185 A3               [24] 3697 	inc	dptr
      001186 E0               [24] 3698 	movx	a,@dptr
      001187 FF               [12] 3699 	mov	r7,a
      001188 C0 06            [24] 3700 	push	ar6
      00118A C0 07            [24] 3701 	push	ar7
      00118C 74 D7            [12] 3702 	mov	a,#___str_71
      00118E C0 E0            [24] 3703 	push	acc
      001190 74 2E            [12] 3704 	mov	a,#(___str_71 >> 8)
      001192 C0 E0            [24] 3705 	push	acc
      001194 74 80            [12] 3706 	mov	a,#0x80
      001196 C0 E0            [24] 3707 	push	acc
      001198 12 1A 37         [24] 3708 	lcall	_printf
      00119B E5 81            [12] 3709 	mov	a,sp
      00119D 24 FB            [12] 3710 	add	a,#0xfb
      00119F F5 81            [12] 3711 	mov	sp,a
                                   3712 ;	program.c:816: printf("Storage Chars: %d \n\r", program_stats.storage_char_count);
      0011A1 90 00 07         [24] 3713 	mov	dptr,#(_program_stats + 0x0006)
      0011A4 E0               [24] 3714 	movx	a,@dptr
      0011A5 FE               [12] 3715 	mov	r6,a
      0011A6 A3               [24] 3716 	inc	dptr
      0011A7 E0               [24] 3717 	movx	a,@dptr
      0011A8 FF               [12] 3718 	mov	r7,a
      0011A9 C0 06            [24] 3719 	push	ar6
      0011AB C0 07            [24] 3720 	push	ar7
      0011AD 74 E8            [12] 3721 	mov	a,#___str_72
      0011AF C0 E0            [24] 3722 	push	acc
      0011B1 74 2E            [12] 3723 	mov	a,#(___str_72 >> 8)
      0011B3 C0 E0            [24] 3724 	push	acc
      0011B5 74 80            [12] 3725 	mov	a,#0x80
      0011B7 C0 E0            [24] 3726 	push	acc
      0011B9 12 1A 37         [24] 3727 	lcall	_printf
      0011BC E5 81            [12] 3728 	mov	a,sp
      0011BE 24 FB            [12] 3729 	add	a,#0xfb
      0011C0 F5 81            [12] 3730 	mov	sp,a
                                   3731 ;	program.c:817: printf("Total Buffers: %d \n\r", program_stats.total_buffers);
      0011C2 90 00 09         [24] 3732 	mov	dptr,#(_program_stats + 0x0008)
      0011C5 E0               [24] 3733 	movx	a,@dptr
      0011C6 FE               [12] 3734 	mov	r6,a
      0011C7 A3               [24] 3735 	inc	dptr
      0011C8 E0               [24] 3736 	movx	a,@dptr
      0011C9 FF               [12] 3737 	mov	r7,a
      0011CA C0 06            [24] 3738 	push	ar6
      0011CC C0 07            [24] 3739 	push	ar7
      0011CE 74 FD            [12] 3740 	mov	a,#___str_73
      0011D0 C0 E0            [24] 3741 	push	acc
      0011D2 74 2E            [12] 3742 	mov	a,#(___str_73 >> 8)
      0011D4 C0 E0            [24] 3743 	push	acc
      0011D6 74 80            [12] 3744 	mov	a,#0x80
      0011D8 C0 E0            [24] 3745 	push	acc
      0011DA 12 1A 37         [24] 3746 	lcall	_printf
      0011DD E5 81            [12] 3747 	mov	a,sp
      0011DF 24 FB            [12] 3748 	add	a,#0xfb
      0011E1 F5 81            [12] 3749 	mov	sp,a
                                   3750 ;	program.c:818: }
      0011E3 22               [24] 3751 	ret
                                   3752 ;------------------------------------------------------------
                                   3753 ;Allocation info for local variables in function 'print_all_buffers'
                                   3754 ;------------------------------------------------------------
                                   3755 ;i                         Allocated with name '_print_all_buffers_i_131072_142'
                                   3756 ;------------------------------------------------------------
                                   3757 ;	program.c:825: void print_all_buffers()
                                   3758 ;	-----------------------------------------
                                   3759 ;	 function print_all_buffers
                                   3760 ;	-----------------------------------------
      0011E4                       3761 _print_all_buffers:
                                   3762 ;	program.c:827: DEBUGPORT(0xC)
      0011E4 75 82 0C         [24] 3763 	mov	dpl,#0x0c
      0011E7 12 15 04         [24] 3764 	lcall	_dataout
                                   3765 ;	program.c:828: for (int i = 0; i < program_stats.total_buffers; i++)
      0011EA 7E 00            [12] 3766 	mov	r6,#0x00
      0011EC 7F 00            [12] 3767 	mov	r7,#0x00
      0011EE                       3768 00103$:
      0011EE 90 00 09         [24] 3769 	mov	dptr,#(_program_stats + 0x0008)
      0011F1 E0               [24] 3770 	movx	a,@dptr
      0011F2 FC               [12] 3771 	mov	r4,a
      0011F3 A3               [24] 3772 	inc	dptr
      0011F4 E0               [24] 3773 	movx	a,@dptr
      0011F5 FD               [12] 3774 	mov	r5,a
      0011F6 C3               [12] 3775 	clr	c
      0011F7 EE               [12] 3776 	mov	a,r6
      0011F8 9C               [12] 3777 	subb	a,r4
      0011F9 EF               [12] 3778 	mov	a,r7
      0011FA 64 80            [12] 3779 	xrl	a,#0x80
      0011FC 8D F0            [24] 3780 	mov	b,r5
      0011FE 63 F0 80         [24] 3781 	xrl	b,#0x80
      001201 95 F0            [12] 3782 	subb	a,b
      001203 40 03            [24] 3783 	jc	00116$
      001205 02 13 3E         [24] 3784 	ljmp	00101$
      001208                       3785 00116$:
                                   3786 ;	program.c:830: printf("****************BUFFER*%d***************\n\r", i);
      001208 C0 07            [24] 3787 	push	ar7
      00120A C0 06            [24] 3788 	push	ar6
      00120C C0 06            [24] 3789 	push	ar6
      00120E C0 07            [24] 3790 	push	ar7
      001210 74 12            [12] 3791 	mov	a,#___str_74
      001212 C0 E0            [24] 3792 	push	acc
      001214 74 2F            [12] 3793 	mov	a,#(___str_74 >> 8)
      001216 C0 E0            [24] 3794 	push	acc
      001218 74 80            [12] 3795 	mov	a,#0x80
      00121A C0 E0            [24] 3796 	push	acc
      00121C 12 1A 37         [24] 3797 	lcall	_printf
      00121F E5 81            [12] 3798 	mov	a,sp
      001221 24 FB            [12] 3799 	add	a,#0xfb
      001223 F5 81            [12] 3800 	mov	sp,a
      001225 D0 06            [24] 3801 	pop	ar6
      001227 D0 07            [24] 3802 	pop	ar7
                                   3803 ;	program.c:831: printf("Buffer#: %d \n\r", buffers_array[i].buffer_num);
      001229 90 15 0F         [24] 3804 	mov	dptr,#__mulint_PARM_2
      00122C EE               [12] 3805 	mov	a,r6
      00122D F0               [24] 3806 	movx	@dptr,a
      00122E EF               [12] 3807 	mov	a,r7
      00122F A3               [24] 3808 	inc	dptr
      001230 F0               [24] 3809 	movx	@dptr,a
      001231 90 00 0C         [24] 3810 	mov	dptr,#0x000c
      001234 C0 07            [24] 3811 	push	ar7
      001236 C0 06            [24] 3812 	push	ar6
      001238 12 19 C9         [24] 3813 	lcall	__mulint
      00123B AC 82            [24] 3814 	mov	r4,dpl
      00123D AD 83            [24] 3815 	mov	r5,dph
      00123F EC               [12] 3816 	mov	a,r4
      001240 24 0B            [12] 3817 	add	a,#_buffers_array
      001242 F5 82            [12] 3818 	mov	dpl,a
      001244 ED               [12] 3819 	mov	a,r5
      001245 34 00            [12] 3820 	addc	a,#(_buffers_array >> 8)
      001247 F5 83            [12] 3821 	mov	dph,a
      001249 E0               [24] 3822 	movx	a,@dptr
      00124A FA               [12] 3823 	mov	r2,a
      00124B A3               [24] 3824 	inc	dptr
      00124C E0               [24] 3825 	movx	a,@dptr
      00124D FB               [12] 3826 	mov	r3,a
      00124E C0 05            [24] 3827 	push	ar5
      001250 C0 04            [24] 3828 	push	ar4
      001252 C0 02            [24] 3829 	push	ar2
      001254 C0 03            [24] 3830 	push	ar3
      001256 74 3D            [12] 3831 	mov	a,#___str_75
      001258 C0 E0            [24] 3832 	push	acc
      00125A 74 2F            [12] 3833 	mov	a,#(___str_75 >> 8)
      00125C C0 E0            [24] 3834 	push	acc
      00125E 74 80            [12] 3835 	mov	a,#0x80
      001260 C0 E0            [24] 3836 	push	acc
      001262 12 1A 37         [24] 3837 	lcall	_printf
      001265 E5 81            [12] 3838 	mov	a,sp
      001267 24 FB            [12] 3839 	add	a,#0xfb
      001269 F5 81            [12] 3840 	mov	sp,a
      00126B D0 04            [24] 3841 	pop	ar4
      00126D D0 05            [24] 3842 	pop	ar5
                                   3843 ;	program.c:832: printf("BufferStart: %p \n\r", buffers_array[i].buffer_start);
      00126F EC               [12] 3844 	mov	a,r4
      001270 24 0B            [12] 3845 	add	a,#_buffers_array
      001272 FC               [12] 3846 	mov	r4,a
      001273 ED               [12] 3847 	mov	a,r5
      001274 34 00            [12] 3848 	addc	a,#(_buffers_array >> 8)
      001276 FD               [12] 3849 	mov	r5,a
      001277 8C 82            [24] 3850 	mov	dpl,r4
      001279 8D 83            [24] 3851 	mov	dph,r5
      00127B A3               [24] 3852 	inc	dptr
      00127C A3               [24] 3853 	inc	dptr
      00127D E0               [24] 3854 	movx	a,@dptr
      00127E F9               [12] 3855 	mov	r1,a
      00127F A3               [24] 3856 	inc	dptr
      001280 E0               [24] 3857 	movx	a,@dptr
      001281 FA               [12] 3858 	mov	r2,a
      001282 A3               [24] 3859 	inc	dptr
      001283 E0               [24] 3860 	movx	a,@dptr
      001284 FB               [12] 3861 	mov	r3,a
      001285 C0 05            [24] 3862 	push	ar5
      001287 C0 04            [24] 3863 	push	ar4
      001289 C0 01            [24] 3864 	push	ar1
      00128B C0 02            [24] 3865 	push	ar2
      00128D C0 03            [24] 3866 	push	ar3
      00128F 74 4C            [12] 3867 	mov	a,#___str_76
      001291 C0 E0            [24] 3868 	push	acc
      001293 74 2F            [12] 3869 	mov	a,#(___str_76 >> 8)
      001295 C0 E0            [24] 3870 	push	acc
      001297 74 80            [12] 3871 	mov	a,#0x80
      001299 C0 E0            [24] 3872 	push	acc
      00129B 12 1A 37         [24] 3873 	lcall	_printf
      00129E E5 81            [12] 3874 	mov	a,sp
      0012A0 24 FA            [12] 3875 	add	a,#0xfa
      0012A2 F5 81            [12] 3876 	mov	sp,a
      0012A4 D0 04            [24] 3877 	pop	ar4
      0012A6 D0 05            [24] 3878 	pop	ar5
                                   3879 ;	program.c:833: printf("BufferEnd: %p \n\r", buffers_array[i].buffer_end);
      0012A8 8C 82            [24] 3880 	mov	dpl,r4
      0012AA 8D 83            [24] 3881 	mov	dph,r5
      0012AC A3               [24] 3882 	inc	dptr
      0012AD A3               [24] 3883 	inc	dptr
      0012AE A3               [24] 3884 	inc	dptr
      0012AF A3               [24] 3885 	inc	dptr
      0012B0 A3               [24] 3886 	inc	dptr
      0012B1 E0               [24] 3887 	movx	a,@dptr
      0012B2 F9               [12] 3888 	mov	r1,a
      0012B3 A3               [24] 3889 	inc	dptr
      0012B4 E0               [24] 3890 	movx	a,@dptr
      0012B5 FA               [12] 3891 	mov	r2,a
      0012B6 A3               [24] 3892 	inc	dptr
      0012B7 E0               [24] 3893 	movx	a,@dptr
      0012B8 FB               [12] 3894 	mov	r3,a
      0012B9 C0 05            [24] 3895 	push	ar5
      0012BB C0 04            [24] 3896 	push	ar4
      0012BD C0 01            [24] 3897 	push	ar1
      0012BF C0 02            [24] 3898 	push	ar2
      0012C1 C0 03            [24] 3899 	push	ar3
      0012C3 74 5F            [12] 3900 	mov	a,#___str_77
      0012C5 C0 E0            [24] 3901 	push	acc
      0012C7 74 2F            [12] 3902 	mov	a,#(___str_77 >> 8)
      0012C9 C0 E0            [24] 3903 	push	acc
      0012CB 74 80            [12] 3904 	mov	a,#0x80
      0012CD C0 E0            [24] 3905 	push	acc
      0012CF 12 1A 37         [24] 3906 	lcall	_printf
      0012D2 E5 81            [12] 3907 	mov	a,sp
      0012D4 24 FA            [12] 3908 	add	a,#0xfa
      0012D6 F5 81            [12] 3909 	mov	sp,a
      0012D8 D0 04            [24] 3910 	pop	ar4
      0012DA D0 05            [24] 3911 	pop	ar5
                                   3912 ;	program.c:834: printf("BufferSize: %d \n\r", buffers_array[i].buff_size);
      0012DC 74 08            [12] 3913 	mov	a,#0x08
      0012DE 2C               [12] 3914 	add	a,r4
      0012DF F5 82            [12] 3915 	mov	dpl,a
      0012E1 E4               [12] 3916 	clr	a
      0012E2 3D               [12] 3917 	addc	a,r5
      0012E3 F5 83            [12] 3918 	mov	dph,a
      0012E5 E0               [24] 3919 	movx	a,@dptr
      0012E6 FA               [12] 3920 	mov	r2,a
      0012E7 A3               [24] 3921 	inc	dptr
      0012E8 E0               [24] 3922 	movx	a,@dptr
      0012E9 FB               [12] 3923 	mov	r3,a
      0012EA C0 05            [24] 3924 	push	ar5
      0012EC C0 04            [24] 3925 	push	ar4
      0012EE C0 02            [24] 3926 	push	ar2
      0012F0 C0 03            [24] 3927 	push	ar3
      0012F2 74 70            [12] 3928 	mov	a,#___str_78
      0012F4 C0 E0            [24] 3929 	push	acc
      0012F6 74 2F            [12] 3930 	mov	a,#(___str_78 >> 8)
      0012F8 C0 E0            [24] 3931 	push	acc
      0012FA 74 80            [12] 3932 	mov	a,#0x80
      0012FC C0 E0            [24] 3933 	push	acc
      0012FE 12 1A 37         [24] 3934 	lcall	_printf
      001301 E5 81            [12] 3935 	mov	a,sp
      001303 24 FB            [12] 3936 	add	a,#0xfb
      001305 F5 81            [12] 3937 	mov	sp,a
      001307 D0 04            [24] 3938 	pop	ar4
      001309 D0 05            [24] 3939 	pop	ar5
                                   3940 ;	program.c:835: printf("TotalUsed: %d \n\r", buffers_array[i].num_char);
      00130B 74 0A            [12] 3941 	mov	a,#0x0a
      00130D 2C               [12] 3942 	add	a,r4
      00130E F5 82            [12] 3943 	mov	dpl,a
      001310 E4               [12] 3944 	clr	a
      001311 3D               [12] 3945 	addc	a,r5
      001312 F5 83            [12] 3946 	mov	dph,a
      001314 E0               [24] 3947 	movx	a,@dptr
      001315 FC               [12] 3948 	mov	r4,a
      001316 A3               [24] 3949 	inc	dptr
      001317 E0               [24] 3950 	movx	a,@dptr
      001318 FD               [12] 3951 	mov	r5,a
      001319 C0 04            [24] 3952 	push	ar4
      00131B C0 05            [24] 3953 	push	ar5
      00131D 74 82            [12] 3954 	mov	a,#___str_79
      00131F C0 E0            [24] 3955 	push	acc
      001321 74 2F            [12] 3956 	mov	a,#(___str_79 >> 8)
      001323 C0 E0            [24] 3957 	push	acc
      001325 74 80            [12] 3958 	mov	a,#0x80
      001327 C0 E0            [24] 3959 	push	acc
      001329 12 1A 37         [24] 3960 	lcall	_printf
      00132C E5 81            [12] 3961 	mov	a,sp
      00132E 24 FB            [12] 3962 	add	a,#0xfb
      001330 F5 81            [12] 3963 	mov	sp,a
      001332 D0 06            [24] 3964 	pop	ar6
      001334 D0 07            [24] 3965 	pop	ar7
                                   3966 ;	program.c:828: for (int i = 0; i < program_stats.total_buffers; i++)
      001336 0E               [12] 3967 	inc	r6
      001337 BE 00 01         [24] 3968 	cjne	r6,#0x00,00117$
      00133A 0F               [12] 3969 	inc	r7
      00133B                       3970 00117$:
      00133B 02 11 EE         [24] 3971 	ljmp	00103$
      00133E                       3972 00101$:
                                   3973 ;	program.c:837: printf("***************************************\n\r");
      00133E 74 93            [12] 3974 	mov	a,#___str_80
      001340 C0 E0            [24] 3975 	push	acc
      001342 74 2F            [12] 3976 	mov	a,#(___str_80 >> 8)
      001344 C0 E0            [24] 3977 	push	acc
      001346 74 80            [12] 3978 	mov	a,#0x80
      001348 C0 E0            [24] 3979 	push	acc
      00134A 12 1A 37         [24] 3980 	lcall	_printf
      00134D 15 81            [12] 3981 	dec	sp
      00134F 15 81            [12] 3982 	dec	sp
      001351 15 81            [12] 3983 	dec	sp
                                   3984 ;	program.c:838: }
      001353 22               [24] 3985 	ret
                                   3986 ;------------------------------------------------------------
                                   3987 ;Allocation info for local variables in function 'get_number'
                                   3988 ;------------------------------------------------------------
                                   3989 ;total_chars               Allocated with name '_get_number_total_chars_65536_144'
                                   3990 ;rec                       Allocated with name '_get_number_rec_65537_146'
                                   3991 ;num                       Allocated with name '_get_number_num_65537_146'
                                   3992 ;i                         Allocated with name '_get_number_i_131073_147'
                                   3993 ;------------------------------------------------------------
                                   3994 ;	program.c:845: int get_number(int total_chars)
                                   3995 ;	-----------------------------------------
                                   3996 ;	 function get_number
                                   3997 ;	-----------------------------------------
      001354                       3998 _get_number:
      001354 AF 83            [24] 3999 	mov	r7,dph
      001356 E5 82            [12] 4000 	mov	a,dpl
      001358 90 01 5F         [24] 4001 	mov	dptr,#_get_number_total_chars_65536_144
      00135B F0               [24] 4002 	movx	@dptr,a
      00135C EF               [12] 4003 	mov	a,r7
      00135D A3               [24] 4004 	inc	dptr
      00135E F0               [24] 4005 	movx	@dptr,a
                                   4006 ;	program.c:847: DEBUGPORT(0xD);
      00135F 75 82 0D         [24] 4007 	mov	dpl,#0x0d
      001362 12 15 04         [24] 4008 	lcall	_dataout
                                   4009 ;	program.c:849: int num = 0;
      001365 90 01 61         [24] 4010 	mov	dptr,#_get_number_num_65537_146
      001368 E4               [12] 4011 	clr	a
      001369 F0               [24] 4012 	movx	@dptr,a
      00136A A3               [24] 4013 	inc	dptr
      00136B F0               [24] 4014 	movx	@dptr,a
                                   4015 ;	program.c:850: for (int i = total_chars; i > 0; i--)
      00136C 90 01 5F         [24] 4016 	mov	dptr,#_get_number_total_chars_65536_144
      00136F E0               [24] 4017 	movx	a,@dptr
      001370 FE               [12] 4018 	mov	r6,a
      001371 A3               [24] 4019 	inc	dptr
      001372 E0               [24] 4020 	movx	a,@dptr
      001373 FF               [12] 4021 	mov	r7,a
      001374                       4022 00107$:
      001374 C3               [12] 4023 	clr	c
      001375 E4               [12] 4024 	clr	a
      001376 9E               [12] 4025 	subb	a,r6
      001377 74 80            [12] 4026 	mov	a,#(0x00 ^ 0x80)
      001379 8F F0            [24] 4027 	mov	b,r7
      00137B 63 F0 80         [24] 4028 	xrl	b,#0x80
      00137E 95 F0            [12] 4029 	subb	a,b
      001380 40 03            [24] 4030 	jc	00127$
      001382 02 14 20         [24] 4031 	ljmp	00105$
      001385                       4032 00127$:
                                   4033 ;	program.c:852: rec = getchar();
      001385 C0 07            [24] 4034 	push	ar7
      001387 C0 06            [24] 4035 	push	ar6
      001389 12 14 C8         [24] 4036 	lcall	_getchar
      00138C AC 82            [24] 4037 	mov	r4,dpl
      00138E AD 83            [24] 4038 	mov	r5,dph
      001390 D0 06            [24] 4039 	pop	ar6
      001392 D0 07            [24] 4040 	pop	ar7
                                   4041 ;	program.c:854: if (rec <= 0x39 && rec >= 0x30)
      001394 C3               [12] 4042 	clr	c
      001395 74 39            [12] 4043 	mov	a,#0x39
      001397 9C               [12] 4044 	subb	a,r4
      001398 74 80            [12] 4045 	mov	a,#(0x00 ^ 0x80)
      00139A 8D F0            [24] 4046 	mov	b,r5
      00139C 63 F0 80         [24] 4047 	xrl	b,#0x80
      00139F 95 F0            [12] 4048 	subb	a,b
      0013A1 40 5C            [24] 4049 	jc	00102$
      0013A3 EC               [12] 4050 	mov	a,r4
      0013A4 94 30            [12] 4051 	subb	a,#0x30
      0013A6 ED               [12] 4052 	mov	a,r5
      0013A7 64 80            [12] 4053 	xrl	a,#0x80
      0013A9 94 80            [12] 4054 	subb	a,#0x80
      0013AB 40 52            [24] 4055 	jc	00102$
                                   4056 ;	program.c:856: num += ((rec - 0x30) * get_num_helper(i - 1));
      0013AD EC               [12] 4057 	mov	a,r4
      0013AE 24 D0            [12] 4058 	add	a,#0xd0
      0013B0 FC               [12] 4059 	mov	r4,a
      0013B1 ED               [12] 4060 	mov	a,r5
      0013B2 34 FF            [12] 4061 	addc	a,#0xff
      0013B4 FD               [12] 4062 	mov	r5,a
      0013B5 EE               [12] 4063 	mov	a,r6
      0013B6 24 FF            [12] 4064 	add	a,#0xff
      0013B8 FA               [12] 4065 	mov	r2,a
      0013B9 EF               [12] 4066 	mov	a,r7
      0013BA 34 FF            [12] 4067 	addc	a,#0xff
      0013BC FB               [12] 4068 	mov	r3,a
      0013BD 8A 82            [24] 4069 	mov	dpl,r2
      0013BF 8B 83            [24] 4070 	mov	dph,r3
      0013C1 C0 07            [24] 4071 	push	ar7
      0013C3 C0 06            [24] 4072 	push	ar6
      0013C5 C0 05            [24] 4073 	push	ar5
      0013C7 C0 04            [24] 4074 	push	ar4
      0013C9 12 14 2C         [24] 4075 	lcall	_get_num_helper
      0013CC AA 82            [24] 4076 	mov	r2,dpl
      0013CE AB 83            [24] 4077 	mov	r3,dph
      0013D0 D0 04            [24] 4078 	pop	ar4
      0013D2 D0 05            [24] 4079 	pop	ar5
      0013D4 90 15 0F         [24] 4080 	mov	dptr,#__mulint_PARM_2
      0013D7 EA               [12] 4081 	mov	a,r2
      0013D8 F0               [24] 4082 	movx	@dptr,a
      0013D9 EB               [12] 4083 	mov	a,r3
      0013DA A3               [24] 4084 	inc	dptr
      0013DB F0               [24] 4085 	movx	@dptr,a
      0013DC 8C 82            [24] 4086 	mov	dpl,r4
      0013DE 8D 83            [24] 4087 	mov	dph,r5
      0013E0 12 19 C9         [24] 4088 	lcall	__mulint
      0013E3 AC 82            [24] 4089 	mov	r4,dpl
      0013E5 AD 83            [24] 4090 	mov	r5,dph
      0013E7 D0 06            [24] 4091 	pop	ar6
      0013E9 D0 07            [24] 4092 	pop	ar7
      0013EB 90 01 61         [24] 4093 	mov	dptr,#_get_number_num_65537_146
      0013EE E0               [24] 4094 	movx	a,@dptr
      0013EF FA               [12] 4095 	mov	r2,a
      0013F0 A3               [24] 4096 	inc	dptr
      0013F1 E0               [24] 4097 	movx	a,@dptr
      0013F2 FB               [12] 4098 	mov	r3,a
      0013F3 90 01 61         [24] 4099 	mov	dptr,#_get_number_num_65537_146
      0013F6 EC               [12] 4100 	mov	a,r4
      0013F7 2A               [12] 4101 	add	a,r2
      0013F8 F0               [24] 4102 	movx	@dptr,a
      0013F9 ED               [12] 4103 	mov	a,r5
      0013FA 3B               [12] 4104 	addc	a,r3
      0013FB A3               [24] 4105 	inc	dptr
      0013FC F0               [24] 4106 	movx	@dptr,a
      0013FD 80 19            [24] 4107 	sjmp	00108$
      0013FF                       4108 00102$:
                                   4109 ;	program.c:860: printf("ERR,Numbers ONLY!\n\r");
      0013FF 74 BD            [12] 4110 	mov	a,#___str_81
      001401 C0 E0            [24] 4111 	push	acc
      001403 74 2F            [12] 4112 	mov	a,#(___str_81 >> 8)
      001405 C0 E0            [24] 4113 	push	acc
      001407 74 80            [12] 4114 	mov	a,#0x80
      001409 C0 E0            [24] 4115 	push	acc
      00140B 12 1A 37         [24] 4116 	lcall	_printf
      00140E 15 81            [12] 4117 	dec	sp
      001410 15 81            [12] 4118 	dec	sp
      001412 15 81            [12] 4119 	dec	sp
                                   4120 ;	program.c:861: return -1;
      001414 90 FF FF         [24] 4121 	mov	dptr,#0xffff
      001417 22               [24] 4122 	ret
      001418                       4123 00108$:
                                   4124 ;	program.c:850: for (int i = total_chars; i > 0; i--)
      001418 1E               [12] 4125 	dec	r6
      001419 BE FF 01         [24] 4126 	cjne	r6,#0xff,00130$
      00141C 1F               [12] 4127 	dec	r7
      00141D                       4128 00130$:
      00141D 02 13 74         [24] 4129 	ljmp	00107$
      001420                       4130 00105$:
                                   4131 ;	program.c:864: return num;
      001420 90 01 61         [24] 4132 	mov	dptr,#_get_number_num_65537_146
      001423 E0               [24] 4133 	movx	a,@dptr
      001424 FE               [12] 4134 	mov	r6,a
      001425 A3               [24] 4135 	inc	dptr
      001426 E0               [24] 4136 	movx	a,@dptr
                                   4137 ;	program.c:865: }
      001427 8E 82            [24] 4138 	mov	dpl,r6
      001429 F5 83            [12] 4139 	mov	dph,a
      00142B 22               [24] 4140 	ret
                                   4141 ;------------------------------------------------------------
                                   4142 ;Allocation info for local variables in function 'get_num_helper'
                                   4143 ;------------------------------------------------------------
                                   4144 ;times                     Allocated with name '_get_num_helper_times_65536_151'
                                   4145 ;num                       Allocated with name '_get_num_helper_num_65536_152'
                                   4146 ;i                         Allocated with name '_get_num_helper_i_131072_153'
                                   4147 ;------------------------------------------------------------
                                   4148 ;	program.c:872: int get_num_helper(int times)
                                   4149 ;	-----------------------------------------
                                   4150 ;	 function get_num_helper
                                   4151 ;	-----------------------------------------
      00142C                       4152 _get_num_helper:
      00142C AF 83            [24] 4153 	mov	r7,dph
      00142E E5 82            [12] 4154 	mov	a,dpl
      001430 90 01 63         [24] 4155 	mov	dptr,#_get_num_helper_times_65536_151
      001433 F0               [24] 4156 	movx	@dptr,a
      001434 EF               [12] 4157 	mov	a,r7
      001435 A3               [24] 4158 	inc	dptr
      001436 F0               [24] 4159 	movx	@dptr,a
                                   4160 ;	program.c:874: int num = 1;
      001437 90 01 65         [24] 4161 	mov	dptr,#_get_num_helper_num_65536_152
      00143A 74 01            [12] 4162 	mov	a,#0x01
      00143C F0               [24] 4163 	movx	@dptr,a
      00143D E4               [12] 4164 	clr	a
      00143E A3               [24] 4165 	inc	dptr
      00143F F0               [24] 4166 	movx	@dptr,a
                                   4167 ;	program.c:876: for (int i = 0; i < times; i++)
      001440 90 01 63         [24] 4168 	mov	dptr,#_get_num_helper_times_65536_151
      001443 E0               [24] 4169 	movx	a,@dptr
      001444 FE               [12] 4170 	mov	r6,a
      001445 A3               [24] 4171 	inc	dptr
      001446 E0               [24] 4172 	movx	a,@dptr
      001447 FF               [12] 4173 	mov	r7,a
      001448 7C 00            [12] 4174 	mov	r4,#0x00
      00144A 7D 00            [12] 4175 	mov	r5,#0x00
      00144C                       4176 00106$:
      00144C C3               [12] 4177 	clr	c
      00144D EC               [12] 4178 	mov	a,r4
      00144E 9E               [12] 4179 	subb	a,r6
      00144F ED               [12] 4180 	mov	a,r5
      001450 64 80            [12] 4181 	xrl	a,#0x80
      001452 8F F0            [24] 4182 	mov	b,r7
      001454 63 F0 80         [24] 4183 	xrl	b,#0x80
      001457 95 F0            [12] 4184 	subb	a,b
      001459 50 3A            [24] 4185 	jnc	00101$
                                   4186 ;	program.c:878: num = num * 10;
      00145B 90 01 65         [24] 4187 	mov	dptr,#_get_num_helper_num_65536_152
      00145E E0               [24] 4188 	movx	a,@dptr
      00145F FA               [12] 4189 	mov	r2,a
      001460 A3               [24] 4190 	inc	dptr
      001461 E0               [24] 4191 	movx	a,@dptr
      001462 FB               [12] 4192 	mov	r3,a
      001463 90 15 0F         [24] 4193 	mov	dptr,#__mulint_PARM_2
      001466 EA               [12] 4194 	mov	a,r2
      001467 F0               [24] 4195 	movx	@dptr,a
      001468 EB               [12] 4196 	mov	a,r3
      001469 A3               [24] 4197 	inc	dptr
      00146A F0               [24] 4198 	movx	@dptr,a
      00146B 90 00 0A         [24] 4199 	mov	dptr,#0x000a
      00146E C0 07            [24] 4200 	push	ar7
      001470 C0 06            [24] 4201 	push	ar6
      001472 C0 05            [24] 4202 	push	ar5
      001474 C0 04            [24] 4203 	push	ar4
      001476 12 19 C9         [24] 4204 	lcall	__mulint
      001479 E5 82            [12] 4205 	mov	a,dpl
      00147B 85 83 F0         [24] 4206 	mov	b,dph
      00147E D0 04            [24] 4207 	pop	ar4
      001480 D0 05            [24] 4208 	pop	ar5
      001482 D0 06            [24] 4209 	pop	ar6
      001484 D0 07            [24] 4210 	pop	ar7
      001486 90 01 65         [24] 4211 	mov	dptr,#_get_num_helper_num_65536_152
      001489 F0               [24] 4212 	movx	@dptr,a
      00148A E5 F0            [12] 4213 	mov	a,b
      00148C A3               [24] 4214 	inc	dptr
      00148D F0               [24] 4215 	movx	@dptr,a
                                   4216 ;	program.c:876: for (int i = 0; i < times; i++)
      00148E 0C               [12] 4217 	inc	r4
      00148F BC 00 BA         [24] 4218 	cjne	r4,#0x00,00106$
      001492 0D               [12] 4219 	inc	r5
      001493 80 B7            [24] 4220 	sjmp	00106$
      001495                       4221 00101$:
                                   4222 ;	program.c:880: if (times == 0)
      001495 EE               [12] 4223 	mov	a,r6
      001496 4F               [12] 4224 	orl	a,r7
      001497 70 04            [24] 4225 	jnz	00103$
                                   4226 ;	program.c:881: return 1;
      001499 90 00 01         [24] 4227 	mov	dptr,#0x0001
      00149C 22               [24] 4228 	ret
      00149D                       4229 00103$:
                                   4230 ;	program.c:883: return num;
      00149D 90 01 65         [24] 4231 	mov	dptr,#_get_num_helper_num_65536_152
      0014A0 E0               [24] 4232 	movx	a,@dptr
      0014A1 FE               [12] 4233 	mov	r6,a
      0014A2 A3               [24] 4234 	inc	dptr
      0014A3 E0               [24] 4235 	movx	a,@dptr
                                   4236 ;	program.c:884: }
      0014A4 8E 82            [24] 4237 	mov	dpl,r6
      0014A6 F5 83            [12] 4238 	mov	dph,a
      0014A8 22               [24] 4239 	ret
                                   4240 ;------------------------------------------------------------
                                   4241 ;Allocation info for local variables in function 'putchar'
                                   4242 ;------------------------------------------------------------
                                   4243 ;c                         Allocated with name '_putchar_c_65536_155'
                                   4244 ;------------------------------------------------------------
                                   4245 ;	program.c:897: int putchar(int c)
                                   4246 ;	-----------------------------------------
                                   4247 ;	 function putchar
                                   4248 ;	-----------------------------------------
      0014A9                       4249 _putchar:
      0014A9 AF 83            [24] 4250 	mov	r7,dph
      0014AB E5 82            [12] 4251 	mov	a,dpl
      0014AD 90 01 67         [24] 4252 	mov	dptr,#_putchar_c_65536_155
      0014B0 F0               [24] 4253 	movx	@dptr,a
      0014B1 EF               [12] 4254 	mov	a,r7
      0014B2 A3               [24] 4255 	inc	dptr
      0014B3 F0               [24] 4256 	movx	@dptr,a
                                   4257 ;	program.c:899: while ((SCON & 0x02) == 0)
      0014B4                       4258 00101$:
      0014B4 E5 98            [12] 4259 	mov	a,_SCON
      0014B6 30 E1 FB         [24] 4260 	jnb	acc.1,00101$
                                   4261 ;	program.c:901: TI = 0;
                                   4262 ;	assignBit
      0014B9 C2 99            [12] 4263 	clr	_TI
                                   4264 ;	program.c:902: SBUF = c;
      0014BB 90 01 67         [24] 4265 	mov	dptr,#_putchar_c_65536_155
      0014BE E0               [24] 4266 	movx	a,@dptr
      0014BF FE               [12] 4267 	mov	r6,a
      0014C0 A3               [24] 4268 	inc	dptr
      0014C1 E0               [24] 4269 	movx	a,@dptr
      0014C2 8E 99            [24] 4270 	mov	_SBUF,r6
                                   4271 ;	program.c:903: return 0;
      0014C4 90 00 00         [24] 4272 	mov	dptr,#0x0000
                                   4273 ;	program.c:904: }
      0014C7 22               [24] 4274 	ret
                                   4275 ;------------------------------------------------------------
                                   4276 ;Allocation info for local variables in function 'getchar'
                                   4277 ;------------------------------------------------------------
                                   4278 ;	program.c:911: int getchar()
                                   4279 ;	-----------------------------------------
                                   4280 ;	 function getchar
                                   4281 ;	-----------------------------------------
      0014C8                       4282 _getchar:
                                   4283 ;	program.c:913: while (RI == 0)
      0014C8                       4284 00101$:
                                   4285 ;	program.c:915: RI = 0;
                                   4286 ;	assignBit
      0014C8 10 98 02         [24] 4287 	jbc	_RI,00140$
      0014CB 80 FB            [24] 4288 	sjmp	00101$
      0014CD                       4289 00140$:
                                   4290 ;	program.c:917: if (SBUF != 0x3F && SBUF != 0x3D && SBUF != 0x40 && SBUF != 0x2B && SBUF != 0x2D)
      0014CD 74 3F            [12] 4291 	mov	a,#0x3f
      0014CF B5 99 02         [24] 4292 	cjne	a,_SBUF,00141$
      0014D2 80 27            [24] 4293 	sjmp	00105$
      0014D4                       4294 00141$:
      0014D4 74 3D            [12] 4295 	mov	a,#0x3d
      0014D6 B5 99 02         [24] 4296 	cjne	a,_SBUF,00142$
      0014D9 80 20            [24] 4297 	sjmp	00105$
      0014DB                       4298 00142$:
      0014DB 74 40            [12] 4299 	mov	a,#0x40
      0014DD B5 99 02         [24] 4300 	cjne	a,_SBUF,00143$
      0014E0 80 19            [24] 4301 	sjmp	00105$
      0014E2                       4302 00143$:
      0014E2 74 2B            [12] 4303 	mov	a,#0x2b
      0014E4 B5 99 02         [24] 4304 	cjne	a,_SBUF,00144$
      0014E7 80 12            [24] 4305 	sjmp	00105$
      0014E9                       4306 00144$:
      0014E9 74 2D            [12] 4307 	mov	a,#0x2d
      0014EB B5 99 02         [24] 4308 	cjne	a,_SBUF,00145$
      0014EE 80 0B            [24] 4309 	sjmp	00105$
      0014F0                       4310 00145$:
                                   4311 ;	program.c:918: putchar(SBUF);
      0014F0 AE 99            [24] 4312 	mov	r6,_SBUF
      0014F2 7F 00            [12] 4313 	mov	r7,#0x00
      0014F4 8E 82            [24] 4314 	mov	dpl,r6
      0014F6 8F 83            [24] 4315 	mov	dph,r7
      0014F8 12 14 A9         [24] 4316 	lcall	_putchar
      0014FB                       4317 00105$:
                                   4318 ;	program.c:919: return SBUF;
      0014FB AE 99            [24] 4319 	mov	r6,_SBUF
      0014FD 7F 00            [12] 4320 	mov	r7,#0x00
      0014FF 8E 82            [24] 4321 	mov	dpl,r6
      001501 8F 83            [24] 4322 	mov	dph,r7
                                   4323 ;	program.c:920: }
      001503 22               [24] 4324 	ret
                                   4325 ;------------------------------------------------------------
                                   4326 ;Allocation info for local variables in function 'dataout'
                                   4327 ;------------------------------------------------------------
                                   4328 ;data                      Allocated with name '_dataout_data_65536_158'
                                   4329 ;------------------------------------------------------------
                                   4330 ;	program.c:927: void dataout(unsigned char data)
                                   4331 ;	-----------------------------------------
                                   4332 ;	 function dataout
                                   4333 ;	-----------------------------------------
      001504                       4334 _dataout:
      001504 E5 82            [12] 4335 	mov	a,dpl
      001506 90 01 69         [24] 4336 	mov	dptr,#_dataout_data_65536_158
      001509 F0               [24] 4337 	movx	@dptr,a
                                   4338 ;	program.c:929: DEBUG_LOC = data;
      00150A E0               [24] 4339 	movx	a,@dptr
      00150B 90 80 00         [24] 4340 	mov	dptr,#_DEBUG_LOC
      00150E F0               [24] 4341 	movx	@dptr,a
                                   4342 ;	program.c:930: }
      00150F 22               [24] 4343 	ret
                                   4344 ;------------------------------------------------------------
                                   4345 ;Allocation info for local variables in function 'asm_call'
                                   4346 ;------------------------------------------------------------
                                   4347 ;sent_from_asm             Allocated with name '_asm_call_sent_from_asm_65536_160'
                                   4348 ;------------------------------------------------------------
                                   4349 ;	program.c:932: void asm_call(unsigned char sent_from_asm)
                                   4350 ;	-----------------------------------------
                                   4351 ;	 function asm_call
                                   4352 ;	-----------------------------------------
      001510                       4353 _asm_call:
      001510 E5 82            [12] 4354 	mov	a,dpl
      001512 90 01 6A         [24] 4355 	mov	dptr,#_asm_call_sent_from_asm_65536_160
      001515 F0               [24] 4356 	movx	@dptr,a
                                   4357 ;	program.c:934: printf("\n\n\r This function was called from assembly, character sent from there -> %c\n\r", sent_from_asm);
      001516 E0               [24] 4358 	movx	a,@dptr
      001517 FF               [12] 4359 	mov	r7,a
      001518 7E 00            [12] 4360 	mov	r6,#0x00
      00151A C0 07            [24] 4361 	push	ar7
      00151C C0 06            [24] 4362 	push	ar6
      00151E 74 D1            [12] 4363 	mov	a,#___str_82
      001520 C0 E0            [24] 4364 	push	acc
      001522 74 2F            [12] 4365 	mov	a,#(___str_82 >> 8)
      001524 C0 E0            [24] 4366 	push	acc
      001526 74 80            [12] 4367 	mov	a,#0x80
      001528 C0 E0            [24] 4368 	push	acc
      00152A 12 1A 37         [24] 4369 	lcall	_printf
      00152D E5 81            [12] 4370 	mov	a,sp
      00152F 24 FB            [12] 4371 	add	a,#0xfb
      001531 F5 81            [12] 4372 	mov	sp,a
                                   4373 ;	program.c:935: }
      001533 22               [24] 4374 	ret
                                   4375 ;------------------------------------------------------------
                                   4376 ;Allocation info for local variables in function '_sdcc_external_startup'
                                   4377 ;------------------------------------------------------------
                                   4378 ;	program.c:942: _sdcc_external_startup()
                                   4379 ;	-----------------------------------------
                                   4380 ;	 function _sdcc_external_startup
                                   4381 ;	-----------------------------------------
      001534                       4382 __sdcc_external_startup:
                                   4383 ;	program.c:944: CKCON0 |= 0x1;
      001534 43 8F 01         [24] 4384 	orl	_CKCON0,#0x01
                                   4385 ;	program.c:946: _AUXR = 0xC;
      001537 75 8E 0C         [24] 4386 	mov	__AUXR,#0x0c
                                   4387 ;	program.c:948: SCON = 0x42;
      00153A 75 98 42         [24] 4388 	mov	_SCON,#0x42
                                   4389 ;	program.c:950: PCON = 0x80;
      00153D 75 87 80         [24] 4390 	mov	_PCON,#0x80
                                   4391 ;	program.c:952: TH1 = 255;
      001540 75 8D FF         [24] 4392 	mov	_TH1,#0xff
                                   4393 ;	program.c:953: TL1 = 255;
      001543 75 8B FF         [24] 4394 	mov	_TL1,#0xff
                                   4395 ;	program.c:955: TMOD = 0x20;
      001546 75 89 20         [24] 4396 	mov	_TMOD,#0x20
                                   4397 ;	program.c:957: REN = 1;
                                   4398 ;	assignBit
      001549 D2 9C            [12] 4399 	setb	_REN
                                   4400 ;	program.c:959: TR1 = 1;
                                   4401 ;	assignBit
      00154B D2 8E            [12] 4402 	setb	_TR1
                                   4403 ;	program.c:961: EA = 1;
                                   4404 ;	assignBit
      00154D D2 AF            [12] 4405 	setb	_EA
                                   4406 ;	program.c:963: EC = 1;
                                   4407 ;	assignBit
      00154F D2 AE            [12] 4408 	setb	_EC
                                   4409 ;	program.c:964: return 0;
      001551 90 00 00         [24] 4410 	mov	dptr,#0x0000
                                   4411 ;	program.c:965: }
      001554 22               [24] 4412 	ret
                                   4413 	.area CSEG    (CODE)
                                   4414 	.area CONST   (CODE)
                                   4415 	.area CONST   (CODE)
      002472                       4416 ___str_0:
      002472 48 65 6C 6C 6F 2C 20  4417 	.ascii "Hello, In PCA Demo mode "
             49 6E 20 50 43 41 20
             44 65 6D 6F 20 6D 6F
             64 65 20
      00248A 0A                    4418 	.db 0x0a
      00248B 0D                    4419 	.db 0x0d
      00248C 00                    4420 	.db 0x00
                                   4421 	.area CSEG    (CODE)
                                   4422 	.area CONST   (CODE)
      00248D                       4423 ___str_1:
      00248D 50 6C 65 61 73 65 20  4424 	.ascii "Please make a valid choice "
             6D 61 6B 65 20 61 20
             76 61 6C 69 64 20 63
             68 6F 69 63 65 20
      0024A8 0A                    4425 	.db 0x0a
      0024A9 0D                    4426 	.db 0x0d
      0024AA 00                    4427 	.db 0x00
                                   4428 	.area CSEG    (CODE)
                                   4429 	.area CONST   (CODE)
      0024AB                       4430 ___str_2:
      0024AB 50 6C 65 61 73 65 20  4431 	.ascii "Please 'E' to exit or Reset "
             27 45 27 20 74 6F 20
             65 78 69 74 20 6F 72
             20 52 65 73 65 74 20
      0024C7 0A                    4432 	.db 0x0a
      0024C8 0D                    4433 	.db 0x0d
      0024C9 00                    4434 	.db 0x00
                                   4435 	.area CSEG    (CODE)
                                   4436 	.area CONST   (CODE)
      0024CA                       4437 ___str_3:
      0024CA 43 61 70 74 75 72 65  4438 	.ascii "Captured Value CCPL -> %d CCPH -> %d "
             64 20 56 61 6C 75 65
             20 43 43 50 4C 20 2D
             3E 20 25 64 20 43 43
             50 48 20 2D 3E 20 25
             64 20
      0024EF 0A                    4439 	.db 0x0a
      0024F0 0D                    4440 	.db 0x0d
      0024F1 00                    4441 	.db 0x00
                                   4442 	.area CSEG    (CODE)
                                   4443 	.area CONST   (CODE)
      0024F2                       4444 ___str_4:
      0024F2 54 69 6D 65 72 20 49  4445 	.ascii "Timer Interrupt"
             6E 74 65 72 72 75 70
             74
      002501 0A                    4446 	.db 0x0a
      002502 0D                    4447 	.db 0x0d
      002503 00                    4448 	.db 0x00
                                   4449 	.area CSEG    (CODE)
                                   4450 	.area CONST   (CODE)
      002504                       4451 ___str_5:
      002504 47 6F 69 6E 67 20 74  4452 	.ascii "Going to main menu.. "
             6F 20 6D 61 69 6E 20
             6D 65 6E 75 2E 2E 20
      002519 0A                    4453 	.db 0x0a
      00251A 0D                    4454 	.db 0x0d
      00251B 00                    4455 	.db 0x00
                                   4456 	.area CSEG    (CODE)
                                   4457 	.area CONST   (CODE)
      00251C                       4458 ___str_6:
      00251C 53 65 74 74 69 6E 67  4459 	.ascii "Setting P1.3 as falling edge detector, enabling PCA interrup"
             20 50 31 2E 33 20 61
             73 20 66 61 6C 6C 69
             6E 67 20 65 64 67 65
             20 64 65 74 65 63 74
             6F 72 2C 20 65 6E 61
             62 6C 69 6E 67 20 50
             43 41 20 69 6E 74 65
             72 72 75 70
      002558 74 20                 4460 	.ascii "t "
      00255A 0A                    4461 	.db 0x0a
      00255B 0D                    4462 	.db 0x0d
      00255C 00                    4463 	.db 0x00
                                   4464 	.area CSEG    (CODE)
                                   4465 	.area CONST   (CODE)
      00255D                       4466 ___str_7:
      00255D 45 6E 74 65 72 69 6E  4467 	.ascii "Entering Software Timer Mode "
             67 20 53 6F 66 74 77
             61 72 65 20 54 69 6D
             65 72 20 4D 6F 64 65
             20
      00257A 0A                    4468 	.db 0x0a
      00257B 0D                    4469 	.db 0x0d
      00257C 00                    4470 	.db 0x00
                                   4471 	.area CSEG    (CODE)
                                   4472 	.area CONST   (CODE)
      00257D                       4473 ___str_8:
      00257D 45 6E 74 65 72 69 6E  4474 	.ascii "Entering High Speed Toggle Mode, P1.5 "
             67 20 48 69 67 68 20
             53 70 65 65 64 20 54
             6F 67 67 6C 65 20 4D
             6F 64 65 2C 20 50 31
             2E 35 20
      0025A3 0A                    4475 	.db 0x0a
      0025A4 0D                    4476 	.db 0x0d
      0025A5 00                    4477 	.db 0x00
                                   4478 	.area CSEG    (CODE)
                                   4479 	.area CONST   (CODE)
      0025A6                       4480 ___str_9:
      0025A6 45 6E 74 65 72 69 6E  4481 	.ascii "Entering PWM Mode, 25 percent Duty Cycle P1.6"
             67 20 50 57 4D 20 4D
             6F 64 65 2C 20 32 35
             20 70 65 72 63 65 6E
             74 20 44 75 74 79 20
             43 79 63 6C 65 20 50
             31 2E 36
      0025D3 0A                    4482 	.db 0x0a
      0025D4 0D                    4483 	.db 0x0d
      0025D5 00                    4484 	.db 0x00
                                   4485 	.area CSEG    (CODE)
                                   4486 	.area CONST   (CODE)
      0025D6                       4487 ___str_10:
      0025D6 45 6E 61 62 6C 69 6E  4488 	.ascii "Enabling Watchdog Timer.."
             67 20 57 61 74 63 68
             64 6F 67 20 54 69 6D
             65 72 2E 2E
      0025EF 0A                    4489 	.db 0x0a
      0025F0 0D                    4490 	.db 0x0d
      0025F1 00                    4491 	.db 0x00
                                   4492 	.area CSEG    (CODE)
                                   4493 	.area CONST   (CODE)
      0025F2                       4494 ___str_11:
      0025F2 43 75 72 72 65 6E 74  4495 	.ascii "Currently Watchdog is being serviced"
             6C 79 20 57 61 74 63
             68 64 6F 67 20 69 73
             20 62 65 69 6E 67 20
             73 65 72 76 69 63 65
             64
      002616 0A                    4496 	.db 0x0a
      002617 0D                    4497 	.db 0x0d
      002618 50 72 65 73 73 20 27  4498 	.ascii "Press 'S' to stop and generate a reset "
             53 27 20 74 6F 20 73
             74 6F 70 20 61 6E 64
             20 67 65 6E 65 72 61
             74 65 20 61 20 72 65
             73 65 74 20
      00263F 0A                    4499 	.db 0x0a
      002640 0D                    4500 	.db 0x0d
      002641 00                    4501 	.db 0x00
                                   4502 	.area CSEG    (CODE)
                                   4503 	.area CONST   (CODE)
      002642                       4504 ___str_12:
      002642 45 6E 61 62 6C 69 6E  4505 	.ascii "Enabling Hardware Watchdog Timer.."
             67 20 48 61 72 64 77
             61 72 65 20 57 61 74
             63 68 64 6F 67 20 54
             69 6D 65 72 2E 2E
      002664 0A                    4506 	.db 0x0a
      002665 0D                    4507 	.db 0x0d
      002666 00                    4508 	.db 0x00
                                   4509 	.area CSEG    (CODE)
                                   4510 	.area CONST   (CODE)
      002667                       4511 ___str_13:
      002667 43 75 72 72 65 6E 74  4512 	.ascii "Currently Hardware Watchdog is being serviced"
             6C 79 20 48 61 72 64
             77 61 72 65 20 57 61
             74 63 68 64 6F 67 20
             69 73 20 62 65 69 6E
             67 20 73 65 72 76 69
             63 65 64
      002694 0A                    4513 	.db 0x0a
      002695 0D                    4514 	.db 0x0d
      002696 50 72 65 73 73 20 27  4515 	.ascii "Press 'S' to stop watchdog service and generate a reset in ~"
             53 27 20 74 6F 20 73
             74 6F 70 20 77 61 74
             63 68 64 6F 67 20 73
             65 72 76 69 63 65 20
             61 6E 64 20 67 65 6E
             65 72 61 74 65 20 61
             20 72 65 73 65 74 20
             69 6E 20 7E
      0026D2 31 73 20              4516 	.ascii "1s "
      0026D5 0A                    4517 	.db 0x0a
      0026D6 0D                    4518 	.db 0x0d
      0026D7 00                    4519 	.db 0x00
                                   4520 	.area CSEG    (CODE)
                                   4521 	.area CONST   (CODE)
      0026D8                       4522 ___str_14:
      0026D8 45 6E 74 65 72 69 6E  4523 	.ascii "Entering Idle, Will Exit on external interrupt 0"
             67 20 49 64 6C 65 2C
             20 57 69 6C 6C 20 45
             78 69 74 20 6F 6E 20
             65 78 74 65 72 6E 61
             6C 20 69 6E 74 65 72
             72 75 70 74 20 30
      002708 0A                    4524 	.db 0x0a
      002709 0D                    4525 	.db 0x0d
      00270A 00                    4526 	.db 0x00
                                   4527 	.area CSEG    (CODE)
                                   4528 	.area CONST   (CODE)
      00270B                       4529 ___str_15:
      00270B 57 6F 6B 65 20 75 70  4530 	.ascii "Woke up from Idle/Power down, going to main menu "
             20 66 72 6F 6D 20 49
             64 6C 65 2F 50 6F 77
             65 72 20 64 6F 77 6E
             2C 20 67 6F 69 6E 67
             20 74 6F 20 6D 61 69
             6E 20 6D 65 6E 75 20
      00273C 0A                    4531 	.db 0x0a
      00273D 0D                    4532 	.db 0x0d
      00273E 00                    4533 	.db 0x00
                                   4534 	.area CSEG    (CODE)
                                   4535 	.area CONST   (CODE)
      00273F                       4536 ___str_16:
      00273F 45 6E 74 65 72 69 6E  4537 	.ascii "Entering power down, Will Exit on external interrupt 0"
             67 20 70 6F 77 65 72
             20 64 6F 77 6E 2C 20
             57 69 6C 6C 20 45 78
             69 74 20 6F 6E 20 65
             78 74 65 72 6E 61 6C
             20 69 6E 74 65 72 72
             75 70 74 20 30
      002775 0A                    4538 	.db 0x0a
      002776 0D                    4539 	.db 0x0d
      002777 00                    4540 	.db 0x00
                                   4541 	.area CSEG    (CODE)
                                   4542 	.area CONST   (CODE)
      002778                       4543 ___str_17:
      002778 43 68 61 6E 67 69 6E  4544 	.ascii "Changing Clock prescalar to go to lowest frequency in X2 Mod"
             67 20 43 6C 6F 63 6B
             20 70 72 65 73 63 61
             6C 61 72 20 74 6F 20
             67 6F 20 74 6F 20 6C
             6F 77 65 73 74 20 66
             72 65 71 75 65 6E 63
             79 20 69 6E 20 58 32
             20 4D 6F 64
      0027B4 65 2E 2E              4545 	.ascii "e.."
      0027B7 0A                    4546 	.db 0x0a
      0027B8 0D                    4547 	.db 0x0d
      0027B9 00                    4548 	.db 0x00
                                   4549 	.area CSEG    (CODE)
                                   4550 	.area CONST   (CODE)
      0027BA                       4551 ___str_18:
      0027BA 54 68 69 73 20 55 41  4552 	.ascii "This UART Session will stop working..."
             52 54 20 53 65 73 73
             69 6F 6E 20 77 69 6C
             6C 20 73 74 6F 70 20
             77 6F 72 6B 69 6E 67
             2E 2E 2E
      0027E0 0A                    4553 	.db 0x0a
      0027E1 0D                    4554 	.db 0x0d
      0027E2 00                    4555 	.db 0x00
                                   4556 	.area CSEG    (CODE)
                                   4557 	.area CONST   (CODE)
      0027E3                       4558 ___str_19:
      0027E3 0A                    4559 	.db 0x0a
      0027E4 0A                    4560 	.db 0x0a
      0027E5 0D                    4561 	.db 0x0d
      0027E6 5E 5E 5E 5E 5E 5E 5E  4562 	.ascii "^^^^^^^^^^^^^^^^^^^-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ "
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 2D 4D
             45 4E 55 2D 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 20
      00281A 0A                    4563 	.db 0x0a
      00281B 0A                    4564 	.db 0x0a
      00281C 0D                    4565 	.db 0x0d
      00281D 00                    4566 	.db 0x00
                                   4567 	.area CSEG    (CODE)
                                   4568 	.area CONST   (CODE)
      00281E                       4569 ___str_20:
      00281E 27 48 27 20 2D 3E 20  4570 	.ascii "'H' -> Enter Heap Demo Mode "
             45 6E 74 65 72 20 48
             65 61 70 20 44 65 6D
             6F 20 4D 6F 64 65 20
      00283A 0A                    4571 	.db 0x0a
      00283B 0D                    4572 	.db 0x0d
      00283C 00                    4573 	.db 0x00
                                   4574 	.area CSEG    (CODE)
                                   4575 	.area CONST   (CODE)
      00283D                       4576 ___str_21:
      00283D 27 50 27 20 2D 3E 20  4577 	.ascii "'P' -> Enter PCA Demo Mode "
             45 6E 74 65 72 20 50
             43 41 20 44 65 6D 6F
             20 4D 6F 64 65 20
      002858 0A                    4578 	.db 0x0a
      002859 0D                    4579 	.db 0x0d
      00285A 00                    4580 	.db 0x00
                                   4581 	.area CSEG    (CODE)
                                   4582 	.area CONST   (CODE)
      00285B                       4583 ___str_22:
      00285B 27 41 27 20 2D 3E 20  4584 	.ascii "'A' -> Assembly C Mix "
             41 73 73 65 6D 62 6C
             79 20 43 20 4D 69 78
             20
      002871 0A                    4585 	.db 0x0a
      002872 0D                    4586 	.db 0x0d
      002873 00                    4587 	.db 0x00
                                   4588 	.area CSEG    (CODE)
                                   4589 	.area CONST   (CODE)
      002874                       4590 ___str_23:
      002874 27 45 27 20 2D 3E 20  4591 	.ascii "'E' -> EEPROM Mode "
             45 45 50 52 4F 4D 20
             4D 6F 64 65 20
      002887 0A                    4592 	.db 0x0a
      002888 0D                    4593 	.db 0x0d
      002889 00                    4594 	.db 0x00
                                   4595 	.area CSEG    (CODE)
                                   4596 	.area CONST   (CODE)
      00288A                       4597 ___str_24:
      00288A 4D 61 79 62 65 20 62  4598 	.ascii "Maybe byte has been written "
             79 74 65 20 68 61 73
             20 62 65 65 6E 20 77
             72 69 74 74 65 6E 20
      0028A6 0A                    4599 	.db 0x0a
      0028A7 0D                    4600 	.db 0x0d
      0028A8 00                    4601 	.db 0x00
                                   4602 	.area CSEG    (CODE)
                                   4603 	.area CONST   (CODE)
      0028A9                       4604 ___str_25:
      0028A9 0A                    4605 	.db 0x0a
      0028AA 0D                    4606 	.db 0x0d
      0028AB 20 47 69 76 65 20 70  4607 	.ascii " Give param 1, 8bit "
             61 72 61 6D 20 31 2C
             20 38 62 69 74 20
      0028BF 0A                    4608 	.db 0x0a
      0028C0 0D                    4609 	.db 0x0d
      0028C1 00                    4610 	.db 0x00
                                   4611 	.area CSEG    (CODE)
                                   4612 	.area CONST   (CODE)
      0028C2                       4613 ___str_26:
      0028C2 0A                    4614 	.db 0x0a
      0028C3 0D                    4615 	.db 0x0d
      0028C4 20 47 69 76 65 20 70  4616 	.ascii " Give param 2, 8bit "
             61 72 61 6D 20 32 2C
             20 38 62 69 74 20
      0028D8 0A                    4617 	.db 0x0a
      0028D9 0D                    4618 	.db 0x0d
      0028DA 00                    4619 	.db 0x00
                                   4620 	.area CSEG    (CODE)
                                   4621 	.area CONST   (CODE)
      0028DB                       4622 ___str_27:
      0028DB 0A                    4623 	.db 0x0a
      0028DC 0D                    4624 	.db 0x0d
      0028DD 20 47 69 76 65 20 70  4625 	.ascii " Give param 3, 8bit "
             61 72 61 6D 20 33 2C
             20 38 62 69 74 20
      0028F1 0A                    4626 	.db 0x0a
      0028F2 0D                    4627 	.db 0x0d
      0028F3 00                    4628 	.db 0x00
                                   4629 	.area CSEG    (CODE)
                                   4630 	.area CONST   (CODE)
      0028F4                       4631 ___str_28:
      0028F4 0A                    4632 	.db 0x0a
      0028F5 0D                    4633 	.db 0x0d
      0028F6 20 52 45 53 55 4C 54  4634 	.ascii " RESULT-> param3<Mod>param2 * param1 = %d "
             2D 3E 20 70 61 72 61
             6D 33 3C 4D 6F 64 3E
             70 61 72 61 6D 32 20
             2A 20 70 61 72 61 6D
             31 20 3D 20 25 64 20
      002920 0A                    4635 	.db 0x0a
      002921 0D                    4636 	.db 0x0d
      002922 00                    4637 	.db 0x00
                                   4638 	.area CSEG    (CODE)
                                   4639 	.area CONST   (CODE)
      002923                       4640 ___str_29:
      002923 0A                    4641 	.db 0x0a
      002924 0D                    4642 	.db 0x0d
      002925 20 47 6F 69 6E 67 20  4643 	.ascii " Going back to main menu.. "
             62 61 63 6B 20 74 6F
             20 6D 61 69 6E 20 6D
             65 6E 75 2E 2E 20
      002940 0A                    4644 	.db 0x0a
      002941 0D                    4645 	.db 0x0d
      002942 00                    4646 	.db 0x00
                                   4647 	.area CSEG    (CODE)
                                   4648 	.area CONST   (CODE)
      002943                       4649 ___str_30:
      002943 42 75 66 66 65 72 20  4650 	.ascii "Buffer %d Freed ...."
             25 64 20 46 72 65 65
             64 20 2E 2E 2E 2E
      002957 0A                    4651 	.db 0x0a
      002958 0D                    4652 	.db 0x0d
      002959 00                    4653 	.db 0x00
                                   4654 	.area CSEG    (CODE)
                                   4655 	.area CONST   (CODE)
      00295A                       4656 ___str_31:
      00295A 4C 65 74 27 73 20 62  4657 	.ascii "Let's begin again.."
             65 67 69 6E 20 61 67
             61 69 6E 2E 2E
      00296D 0A                    4658 	.db 0x0a
      00296E 0D                    4659 	.db 0x0d
      00296F 00                    4660 	.db 0x00
                                   4661 	.area CSEG    (CODE)
                                   4662 	.area CONST   (CODE)
      002970                       4663 ___str_32:
      002970 0A                    4664 	.db 0x0a
      002971 0D                    4665 	.db 0x0d
      002972 47 69 76 65 20 56 61  4666 	.ascii "Give Valid Buffer Number to delete(1-%d) in 3 digits"
             6C 69 64 20 42 75 66
             66 65 72 20 4E 75 6D
             62 65 72 20 74 6F 20
             64 65 6C 65 74 65 28
             31 2D 25 64 29 20 69
             6E 20 33 20 64 69 67
             69 74 73
      0029A6 0A                    4667 	.db 0x0a
      0029A7 0D                    4668 	.db 0x0d
      0029A8 00                    4669 	.db 0x00
                                   4670 	.area CSEG    (CODE)
                                   4671 	.area CONST   (CODE)
      0029A9                       4672 ___str_33:
      0029A9 42 75 66 66 65 72 20  4673 	.ascii "Buffer %d Successfully Deleted.. "
             25 64 20 53 75 63 63
             65 73 73 66 75 6C 6C
             79 20 44 65 6C 65 74
             65 64 2E 2E 20
      0029CA 0A                    4674 	.db 0x0a
      0029CB 0D                    4675 	.db 0x0d
      0029CC 00                    4676 	.db 0x00
                                   4677 	.area CSEG    (CODE)
                                   4678 	.area CONST   (CODE)
      0029CD                       4679 ___str_34:
      0029CD 0A                    4680 	.db 0x0a
      0029CE 0A                    4681 	.db 0x0a
      0029CF 0D                    4682 	.db 0x0d
      0029D0 5E 5E 5E 5E 5E 5E 5E  4683 	.ascii "^^^^^^^^^^^^^^^^^^^-PCA-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ "
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 2D 50
             43 41 2D 4D 45 4E 55
             2D 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 5E 20
      002A08 0A                    4684 	.db 0x0a
      002A09 0A                    4685 	.db 0x0a
      002A0A 0D                    4686 	.db 0x0d
      002A0B 00                    4687 	.db 0x00
                                   4688 	.area CSEG    (CODE)
                                   4689 	.area CONST   (CODE)
      002A0C                       4690 ___str_35:
      002A0C 27 46 27 20 2D 3E 20  4691 	.ascii "'F' -> Falling Edge Capture Mode"
             46 61 6C 6C 69 6E 67
             20 45 64 67 65 20 43
             61 70 74 75 72 65 20
             4D 6F 64 65
      002A2C 0A                    4692 	.db 0x0a
      002A2D 0D                    4693 	.db 0x0d
      002A2E 00                    4694 	.db 0x00
                                   4695 	.area CSEG    (CODE)
                                   4696 	.area CONST   (CODE)
      002A2F                       4697 ___str_36:
      002A2F 27 53 27 20 2D 3E 20  4698 	.ascii "'S' -> Software Timer Mode"
             53 6F 66 74 77 61 72
             65 20 54 69 6D 65 72
             20 4D 6F 64 65
      002A49 0A                    4699 	.db 0x0a
      002A4A 0D                    4700 	.db 0x0d
      002A4B 00                    4701 	.db 0x00
                                   4702 	.area CSEG    (CODE)
                                   4703 	.area CONST   (CODE)
      002A4C                       4704 ___str_37:
      002A4C 27 48 27 20 2D 3E 20  4705 	.ascii "'H' -> High Speed Output Mode"
             48 69 67 68 20 53 70
             65 65 64 20 4F 75 74
             70 75 74 20 4D 6F 64
             65
      002A69 0A                    4706 	.db 0x0a
      002A6A 0D                    4707 	.db 0x0d
      002A6B 00                    4708 	.db 0x00
                                   4709 	.area CSEG    (CODE)
                                   4710 	.area CONST   (CODE)
      002A6C                       4711 ___str_38:
      002A6C 27 50 27 20 2D 3E 20  4712 	.ascii "'P' -> PWM Mode "
             50 57 4D 20 4D 6F 64
             65 20
      002A7C 0A                    4713 	.db 0x0a
      002A7D 0D                    4714 	.db 0x0d
      002A7E 00                    4715 	.db 0x00
                                   4716 	.area CSEG    (CODE)
                                   4717 	.area CONST   (CODE)
      002A7F                       4718 ___str_39:
      002A7F 27 57 27 20 2D 3E 20  4719 	.ascii "'W' -> Watchdog Timer Mode"
             57 61 74 63 68 64 6F
             67 20 54 69 6D 65 72
             20 4D 6F 64 65
      002A99 0A                    4720 	.db 0x0a
      002A9A 0D                    4721 	.db 0x0d
      002A9B 00                    4722 	.db 0x00
                                   4723 	.area CSEG    (CODE)
                                   4724 	.area CONST   (CODE)
      002A9C                       4725 ___str_40:
      002A9C 27 49 27 20 2D 3E 20  4726 	.ascii "'I' -> Idle Mode with PWM"
             49 64 6C 65 20 4D 6F
             64 65 20 77 69 74 68
             20 50 57 4D
      002AB5 0A                    4727 	.db 0x0a
      002AB6 0D                    4728 	.db 0x0d
      002AB7 00                    4729 	.db 0x00
                                   4730 	.area CSEG    (CODE)
                                   4731 	.area CONST   (CODE)
      002AB8                       4732 ___str_41:
      002AB8 27 4C 27 20 2D 3E 20  4733 	.ascii "'L' -> Change Prescalar to lowest frequency"
             43 68 61 6E 67 65 20
             50 72 65 73 63 61 6C
             61 72 20 74 6F 20 6C
             6F 77 65 73 74 20 66
             72 65 71 75 65 6E 63
             79
      002AE3 0A                    4734 	.db 0x0a
      002AE4 0D                    4735 	.db 0x0d
      002AE5 00                    4736 	.db 0x00
                                   4737 	.area CSEG    (CODE)
                                   4738 	.area CONST   (CODE)
      002AE6                       4739 ___str_42:
      002AE6 27 55 27 20 2D 3E 20  4740 	.ascii "'U' -> Hardware Watchdog Timer"
             48 61 72 64 77 61 72
             65 20 57 61 74 63 68
             64 6F 67 20 54 69 6D
             65 72
      002B04 0A                    4741 	.db 0x0a
      002B05 0D                    4742 	.db 0x0d
      002B06 00                    4743 	.db 0x00
                                   4744 	.area CSEG    (CODE)
                                   4745 	.area CONST   (CODE)
      002B07                       4746 ___str_43:
      002B07 27 44 27 20 2D 3E 20  4747 	.ascii "'D' -> Power Down Mode"
             50 6F 77 65 72 20 44
             6F 77 6E 20 4D 6F 64
             65
      002B1D 0A                    4748 	.db 0x0a
      002B1E 0A                    4749 	.db 0x0a
      002B1F 0D                    4750 	.db 0x0d
      002B20 00                    4751 	.db 0x00
                                   4752 	.area CSEG    (CODE)
                                   4753 	.area CONST   (CODE)
      002B21                       4754 ___str_44:
      002B21 27 4D 27 20 2D 3E 20  4755 	.ascii "'M' -> Go to Main Menu "
             47 6F 20 74 6F 20 4D
             61 69 6E 20 4D 65 6E
             75 20
      002B38 0A                    4756 	.db 0x0a
      002B39 0A                    4757 	.db 0x0a
      002B3A 0D                    4758 	.db 0x0d
      002B3B 00                    4759 	.db 0x00
                                   4760 	.area CSEG    (CODE)
                                   4761 	.area CONST   (CODE)
      002B3C                       4762 ___str_45:
      002B3C 0A                    4763 	.db 0x0a
      002B3D 0A                    4764 	.db 0x0a
      002B3E 0D                    4765 	.db 0x0d
      002B3F 5E 5E 5E 5E 5E 5E 5E  4766 	.ascii "^^^^^^^^^^^^^^^^^^^-HEAP-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ "
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 2D 48
             45 41 50 2D 4D 45 4E
             55 2D 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             20
      002B78 0A                    4767 	.db 0x0a
      002B79 0A                    4768 	.db 0x0a
      002B7A 0D                    4769 	.db 0x0d
      002B7B 00                    4770 	.db 0x00
                                   4771 	.area CSEG    (CODE)
                                   4772 	.area CONST   (CODE)
      002B7C                       4773 ___str_46:
      002B7C 59 6F 75 20 63 61 6E  4774 	.ascii "You can enter characters or use commands from below "
             20 65 6E 74 65 72 20
             63 68 61 72 61 63 74
             65 72 73 20 6F 72 20
             75 73 65 20 63 6F 6D
             6D 61 6E 64 73 20 66
             72 6F 6D 20 62 65 6C
             6F 77 20
      002BB0 0A                    4775 	.db 0x0a
      002BB1 0D                    4776 	.db 0x0d
      002BB2 00                    4777 	.db 0x00
                                   4778 	.area CSEG    (CODE)
                                   4779 	.area CONST   (CODE)
      002BB3                       4780 ___str_47:
      002BB3 27 3F 27 20 2D 3E 20  4781 	.ascii "'?' -> Show heap status, dump & clear Buffer 0 "
             53 68 6F 77 20 68 65
             61 70 20 73 74 61 74
             75 73 2C 20 64 75 6D
             70 20 26 20 63 6C 65
             61 72 20 42 75 66 66
             65 72 20 30 20
      002BE2 0A                    4782 	.db 0x0a
      002BE3 0D                    4783 	.db 0x0d
      002BE4 00                    4784 	.db 0x00
                                   4785 	.area CSEG    (CODE)
                                   4786 	.area CONST   (CODE)
      002BE5                       4787 ___str_48:
      002BE5 27 2B 27 20 2D 3E 20  4788 	.ascii "'+' -> Add a new Buffer"
             41 64 64 20 61 20 6E
             65 77 20 42 75 66 66
             65 72
      002BFC 0A                    4789 	.db 0x0a
      002BFD 0D                    4790 	.db 0x0d
      002BFE 00                    4791 	.db 0x00
                                   4792 	.area CSEG    (CODE)
                                   4793 	.area CONST   (CODE)
      002BFF                       4794 ___str_49:
      002BFF 27 2D 27 20 2D 3E 20  4795 	.ascii "'-' -> Delete existing Buffer"
             44 65 6C 65 74 65 20
             65 78 69 73 74 69 6E
             67 20 42 75 66 66 65
             72
      002C1C 0A                    4796 	.db 0x0a
      002C1D 0D                    4797 	.db 0x0d
      002C1E 00                    4798 	.db 0x00
                                   4799 	.area CSEG    (CODE)
                                   4800 	.area CONST   (CODE)
      002C1F                       4801 ___str_50:
      002C1F 27 3D 27 20 2D 3E 20  4802 	.ascii "'=' -> Dump Buffer 0 in hex"
             44 75 6D 70 20 42 75
             66 66 65 72 20 30 20
             69 6E 20 68 65 78
      002C3A 0A                    4803 	.db 0x0a
      002C3B 0D                    4804 	.db 0x0d
      002C3C 00                    4805 	.db 0x00
                                   4806 	.area CSEG    (CODE)
                                   4807 	.area CONST   (CODE)
      002C3D                       4808 ___str_51:
      002C3D 27 40 27 20 2D 3E 20  4809 	.ascii "'@' -> Free all Heap & begin again"
             46 72 65 65 20 61 6C
             6C 20 48 65 61 70 20
             26 20 62 65 67 69 6E
             20 61 67 61 69 6E
      002C5F 0A                    4810 	.db 0x0a
      002C60 0A                    4811 	.db 0x0a
      002C61 0D                    4812 	.db 0x0d
      002C62 00                    4813 	.db 0x00
                                   4814 	.area CSEG    (CODE)
                                   4815 	.area CONST   (CODE)
      002C63                       4816 ___str_52:
      002C63 0A                    4817 	.db 0x0a
      002C64 0D                    4818 	.db 0x0d
      002C65 47 69 76 65 20 56 61  4819 	.ascii "Give Valid Buffer Size(030-300):"
             6C 69 64 20 42 75 66
             66 65 72 20 53 69 7A
             65 28 30 33 30 2D 33
             30 30 29 3A
      002C85 00                    4820 	.db 0x00
                                   4821 	.area CSEG    (CODE)
                                   4822 	.area CONST   (CODE)
      002C86                       4823 ___str_53:
      002C86 46 61 69 6C 65 64 2C  4824 	.ascii "Failed, give smaller buffer"
             20 67 69 76 65 20 73
             6D 61 6C 6C 65 72 20
             62 75 66 66 65 72
      002CA1 0A                    4825 	.db 0x0a
      002CA2 0D                    4826 	.db 0x0d
      002CA3 00                    4827 	.db 0x00
                                   4828 	.area CSEG    (CODE)
                                   4829 	.area CONST   (CODE)
      002CA4                       4830 ___str_54:
      002CA4 0A                    4831 	.db 0x0a
      002CA5 0A                    4832 	.db 0x0a
      002CA6 0D                    4833 	.db 0x0d
      002CA7 23 23 23 23 53 55 43  4834 	.ascii "####SUCCESS, BUFFER Created####"
             43 45 53 53 2C 20 42
             55 46 46 45 52 20 43
             72 65 61 74 65 64 23
             23 23 23
      002CC6 0A                    4835 	.db 0x0a
      002CC7 0A                    4836 	.db 0x0a
      002CC8 0D                    4837 	.db 0x0d
      002CC9 00                    4838 	.db 0x00
                                   4839 	.area CSEG    (CODE)
                                   4840 	.area CONST   (CODE)
      002CCA                       4841 ___str_55:
      002CCA 4E 6F 20 48 65 61 70  4842 	.ascii "No Heap Memory Left, Delete some buffers..."
             20 4D 65 6D 6F 72 79
             20 4C 65 66 74 2C 20
             44 65 6C 65 74 65 20
             73 6F 6D 65 20 62 75
             66 66 65 72 73 2E 2E
             2E
      002CF5 0A                    4843 	.db 0x0a
      002CF6 0D                    4844 	.db 0x0d
      002CF7 00                    4845 	.db 0x00
                                   4846 	.area CSEG    (CODE)
                                   4847 	.area CONST   (CODE)
      002CF8                       4848 ___str_56:
      002CF8 0A                    4849 	.db 0x0a
      002CF9 0D                    4850 	.db 0x0d
      002CFA 47 69 76 65 20 56 61  4851 	.ascii "Give Valid Initial Buffer Size(0048-4800):"
             6C 69 64 20 49 6E 69
             74 69 61 6C 20 42 75
             66 66 65 72 20 53 69
             7A 65 28 30 30 34 38
             2D 34 38 30 30 29 3A
      002D24 00                    4852 	.db 0x00
                                   4853 	.area CSEG    (CODE)
                                   4854 	.area CONST   (CODE)
      002D25                       4855 ___str_57:
      002D25 0A                    4856 	.db 0x0a
      002D26 0D                    4857 	.db 0x0d
      002D27 23 23 23 23 46 41 49  4858 	.ascii "####FAIL, Please give a smaller buffer size####"
             4C 2C 20 50 6C 65 61
             73 65 20 67 69 76 65
             20 61 20 73 6D 61 6C
             6C 65 72 20 62 75 66
             66 65 72 20 73 69 7A
             65 23 23 23 23
      002D56 0A                    4859 	.db 0x0a
      002D57 0A                    4860 	.db 0x0a
      002D58 0D                    4861 	.db 0x0d
      002D59 00                    4862 	.db 0x00
                                   4863 	.area CSEG    (CODE)
                                   4864 	.area CONST   (CODE)
      002D5A                       4865 ___str_58:
      002D5A 0A                    4866 	.db 0x0a
      002D5B 0A                    4867 	.db 0x0a
      002D5C 0D                    4868 	.db 0x0d
      002D5D 23 23 23 23 53 55 43  4869 	.ascii "####SUCCESS, INITIAL BUFFERS Created####"
             43 45 53 53 2C 20 49
             4E 49 54 49 41 4C 20
             42 55 46 46 45 52 53
             20 43 72 65 61 74 65
             64 23 23 23 23
      002D85 0A                    4870 	.db 0x0a
      002D86 0A                    4871 	.db 0x0a
      002D87 0D                    4872 	.db 0x0d
      002D88 00                    4873 	.db 0x00
                                   4874 	.area CSEG    (CODE)
                                   4875 	.area CONST   (CODE)
      002D89                       4876 ___str_59:
      002D89 0A                    4877 	.db 0x0a
      002D8A 0A                    4878 	.db 0x0a
      002D8B 0D                    4879 	.db 0x0d
      002D8C 2A 2A 2A 2A 2A 2A 2A  4880 	.ascii "***********Buffer-0-Contents*********** "
             2A 2A 2A 2A 42 75 66
             66 65 72 2D 30 2D 43
             6F 6E 74 65 6E 74 73
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 20
      002DB4 0A                    4881 	.db 0x0a
      002DB5 0D                    4882 	.db 0x0d
      002DB6 00                    4883 	.db 0x00
                                   4884 	.area CSEG    (CODE)
                                   4885 	.area CONST   (CODE)
      002DB7                       4886 ___str_60:
      002DB7 0A                    4887 	.db 0x0a
      002DB8 0D                    4888 	.db 0x0d
      002DB9 00                    4889 	.db 0x00
                                   4890 	.area CSEG    (CODE)
                                   4891 	.area CONST   (CODE)
      002DBA                       4892 ___str_61:
      002DBA 0A                    4893 	.db 0x0a
      002DBB 0A                    4894 	.db 0x0a
      002DBC 0D                    4895 	.db 0x0d
      002DBD 00                    4896 	.db 0x00
                                   4897 	.area CSEG    (CODE)
                                   4898 	.area CONST   (CODE)
      002DBE                       4899 ___str_62:
      002DBE 42 75 66 66 65 72 30  4900 	.ascii "Buffer0 is Empty...."
             20 69 73 20 45 6D 70
             74 79 2E 2E 2E 2E
      002DD2 0A                    4901 	.db 0x0a
      002DD3 0D                    4902 	.db 0x0d
      002DD4 00                    4903 	.db 0x00
                                   4904 	.area CSEG    (CODE)
                                   4905 	.area CONST   (CODE)
      002DD5                       4906 ___str_63:
      002DD5 0A                    4907 	.db 0x0a
      002DD6 0D                    4908 	.db 0x0d
      002DD7 2D 2D 2D 2D 2D 2D 2D  4909 	.ascii "-------------------------HEXDUMP----------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 48 45 58
             44 55 4D 50 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D
      002E13 2D 2D 2D 2D           4910 	.ascii "----"
      002E17 00                    4911 	.db 0x00
                                   4912 	.area CSEG    (CODE)
                                   4913 	.area CONST   (CODE)
      002E18                       4914 ___str_64:
      002E18 0A                    4915 	.db 0x0a
      002E19 0D                    4916 	.db 0x0d
      002E1A 20 20 20 20 41 44 44  4917 	.ascii "    ADDR: +0 +1 +2 +3 +4 +5 +6 +7 +8 +9 +A +B +C +D +E +F "
             52 3A 20 2B 30 20 2B
             31 20 2B 32 20 2B 33
             20 2B 34 20 2B 35 20
             2B 36 20 2B 37 20 2B
             38 20 2B 39 20 2B 41
             20 2B 42 20 2B 43 20
             2B 44 20 2B 45 20 2B
             46 20
      002E54 0A                    4918 	.db 0x0a
      002E55 0D                    4919 	.db 0x0d
      002E56 00                    4920 	.db 0x00
                                   4921 	.area CSEG    (CODE)
                                   4922 	.area CONST   (CODE)
      002E57                       4923 ___str_65:
      002E57 0A                    4924 	.db 0x0a
      002E58 0D                    4925 	.db 0x0d
      002E59 25 70 3A 20           4926 	.ascii "%p: "
      002E5D 00                    4927 	.db 0x00
                                   4928 	.area CSEG    (CODE)
                                   4929 	.area CONST   (CODE)
      002E5E                       4930 ___str_66:
      002E5E 25 78 20              4931 	.ascii "%x "
      002E61 00                    4932 	.db 0x00
                                   4933 	.area CSEG    (CODE)
                                   4934 	.area CONST   (CODE)
      002E62                       4935 ___str_67:
      002E62 42 75 66 66 65 72 20  4936 	.ascii "Buffer 0 is empty..."
             30 20 69 73 20 65 6D
             70 74 79 2E 2E 2E
      002E76 0A                    4937 	.db 0x0a
      002E77 0D                    4938 	.db 0x0d
      002E78 00                    4939 	.db 0x00
                                   4940 	.area CSEG    (CODE)
                                   4941 	.area CONST   (CODE)
      002E79                       4942 ___str_68:
      002E79 0A                    4943 	.db 0x0a
      002E7A 0D                    4944 	.db 0x0d
      002E7B 2A 2A 2A 2A 2A 2A 2A  4945 	.ascii "****************HEAP*STATS*************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 48 45 41 50 2A
             53 54 41 54 53 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A
      002EA2 0A                    4946 	.db 0x0a
      002EA3 0D                    4947 	.db 0x0d
      002EA4 00                    4948 	.db 0x00
                                   4949 	.area CSEG    (CODE)
                                   4950 	.area CONST   (CODE)
      002EA5                       4951 ___str_69:
      002EA5 54 6F 74 61 6C 20 48  4952 	.ascii "Total Heap Size: %d "
             65 61 70 20 53 69 7A
             65 3A 20 25 64 20
      002EB9 0A                    4953 	.db 0x0a
      002EBA 0D                    4954 	.db 0x0d
      002EBB 00                    4955 	.db 0x00
                                   4956 	.area CSEG    (CODE)
                                   4957 	.area CONST   (CODE)
      002EBC                       4958 ___str_70:
      002EBC 41 6C 6C 6F 63 61 74  4959 	.ascii "Allocated Heap Size: %d "
             65 64 20 48 65 61 70
             20 53 69 7A 65 3A 20
             25 64 20
      002ED4 0A                    4960 	.db 0x0a
      002ED5 0D                    4961 	.db 0x0d
      002ED6 00                    4962 	.db 0x00
                                   4963 	.area CSEG    (CODE)
                                   4964 	.area CONST   (CODE)
      002ED7                       4965 ___str_71:
      002ED7 41 6C 6C 20 43 68 61  4966 	.ascii "All Chars: %d "
             72 73 3A 20 25 64 20
      002EE5 0A                    4967 	.db 0x0a
      002EE6 0D                    4968 	.db 0x0d
      002EE7 00                    4969 	.db 0x00
                                   4970 	.area CSEG    (CODE)
                                   4971 	.area CONST   (CODE)
      002EE8                       4972 ___str_72:
      002EE8 53 74 6F 72 61 67 65  4973 	.ascii "Storage Chars: %d "
             20 43 68 61 72 73 3A
             20 25 64 20
      002EFA 0A                    4974 	.db 0x0a
      002EFB 0D                    4975 	.db 0x0d
      002EFC 00                    4976 	.db 0x00
                                   4977 	.area CSEG    (CODE)
                                   4978 	.area CONST   (CODE)
      002EFD                       4979 ___str_73:
      002EFD 54 6F 74 61 6C 20 42  4980 	.ascii "Total Buffers: %d "
             75 66 66 65 72 73 3A
             20 25 64 20
      002F0F 0A                    4981 	.db 0x0a
      002F10 0D                    4982 	.db 0x0d
      002F11 00                    4983 	.db 0x00
                                   4984 	.area CSEG    (CODE)
                                   4985 	.area CONST   (CODE)
      002F12                       4986 ___str_74:
      002F12 2A 2A 2A 2A 2A 2A 2A  4987 	.ascii "****************BUFFER*%d***************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 42 55 46 46 45
             52 2A 25 64 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A
      002F3A 0A                    4988 	.db 0x0a
      002F3B 0D                    4989 	.db 0x0d
      002F3C 00                    4990 	.db 0x00
                                   4991 	.area CSEG    (CODE)
                                   4992 	.area CONST   (CODE)
      002F3D                       4993 ___str_75:
      002F3D 42 75 66 66 65 72 23  4994 	.ascii "Buffer#: %d "
             3A 20 25 64 20
      002F49 0A                    4995 	.db 0x0a
      002F4A 0D                    4996 	.db 0x0d
      002F4B 00                    4997 	.db 0x00
                                   4998 	.area CSEG    (CODE)
                                   4999 	.area CONST   (CODE)
      002F4C                       5000 ___str_76:
      002F4C 42 75 66 66 65 72 53  5001 	.ascii "BufferStart: %p "
             74 61 72 74 3A 20 25
             70 20
      002F5C 0A                    5002 	.db 0x0a
      002F5D 0D                    5003 	.db 0x0d
      002F5E 00                    5004 	.db 0x00
                                   5005 	.area CSEG    (CODE)
                                   5006 	.area CONST   (CODE)
      002F5F                       5007 ___str_77:
      002F5F 42 75 66 66 65 72 45  5008 	.ascii "BufferEnd: %p "
             6E 64 3A 20 25 70 20
      002F6D 0A                    5009 	.db 0x0a
      002F6E 0D                    5010 	.db 0x0d
      002F6F 00                    5011 	.db 0x00
                                   5012 	.area CSEG    (CODE)
                                   5013 	.area CONST   (CODE)
      002F70                       5014 ___str_78:
      002F70 42 75 66 66 65 72 53  5015 	.ascii "BufferSize: %d "
             69 7A 65 3A 20 25 64
             20
      002F7F 0A                    5016 	.db 0x0a
      002F80 0D                    5017 	.db 0x0d
      002F81 00                    5018 	.db 0x00
                                   5019 	.area CSEG    (CODE)
                                   5020 	.area CONST   (CODE)
      002F82                       5021 ___str_79:
      002F82 54 6F 74 61 6C 55 73  5022 	.ascii "TotalUsed: %d "
             65 64 3A 20 25 64 20
      002F90 0A                    5023 	.db 0x0a
      002F91 0D                    5024 	.db 0x0d
      002F92 00                    5025 	.db 0x00
                                   5026 	.area CSEG    (CODE)
                                   5027 	.area CONST   (CODE)
      002F93                       5028 ___str_80:
      002F93 2A 2A 2A 2A 2A 2A 2A  5029 	.ascii "***************************************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A
      002FBA 0A                    5030 	.db 0x0a
      002FBB 0D                    5031 	.db 0x0d
      002FBC 00                    5032 	.db 0x00
                                   5033 	.area CSEG    (CODE)
                                   5034 	.area CONST   (CODE)
      002FBD                       5035 ___str_81:
      002FBD 45 52 52 2C 4E 75 6D  5036 	.ascii "ERR,Numbers ONLY!"
             62 65 72 73 20 4F 4E
             4C 59 21
      002FCE 0A                    5037 	.db 0x0a
      002FCF 0D                    5038 	.db 0x0d
      002FD0 00                    5039 	.db 0x00
                                   5040 	.area CSEG    (CODE)
                                   5041 	.area CONST   (CODE)
      002FD1                       5042 ___str_82:
      002FD1 0A                    5043 	.db 0x0a
      002FD2 0A                    5044 	.db 0x0a
      002FD3 0D                    5045 	.db 0x0d
      002FD4 20 54 68 69 73 20 66  5046 	.ascii " This function was called from assembly, character sent from"
             75 6E 63 74 69 6F 6E
             20 77 61 73 20 63 61
             6C 6C 65 64 20 66 72
             6F 6D 20 61 73 73 65
             6D 62 6C 79 2C 20 63
             68 61 72 61 63 74 65
             72 20 73 65 6E 74 20
             66 72 6F 6D
      003010 20 74 68 65 72 65 20  5047 	.ascii " there -> %c"
             2D 3E 20 25 63
      00301C 0A                    5048 	.db 0x0a
      00301D 0D                    5049 	.db 0x0d
      00301E 00                    5050 	.db 0x00
                                   5051 	.area CSEG    (CODE)
                                   5052 	.area XINIT   (CODE)
      00302C                       5053 __xinit__global_var_test:
      00302C 02                    5054 	.db #0x02	; 2
      00302D                       5055 __xinit__watchdog_flag:
      00302D 00 00                 5056 	.byte #0x00, #0x00	;  0
                                   5057 	.area CABS    (ABS,CODE)
