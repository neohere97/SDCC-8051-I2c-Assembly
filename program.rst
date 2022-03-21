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
                                     20 	.globl _asmtest
                                     21 	.globl _printf
                                     22 	.globl _free
                                     23 	.globl _malloc
                                     24 	.globl _TF1
                                     25 	.globl _TR1
                                     26 	.globl _TF0
                                     27 	.globl _TR0
                                     28 	.globl _IE1
                                     29 	.globl _IT1
                                     30 	.globl _IE0
                                     31 	.globl _IT0
                                     32 	.globl _SM0
                                     33 	.globl _SM1
                                     34 	.globl _SM2
                                     35 	.globl _REN
                                     36 	.globl _TB8
                                     37 	.globl _RB8
                                     38 	.globl _TI
                                     39 	.globl _RI
                                     40 	.globl _CY
                                     41 	.globl _AC
                                     42 	.globl _F0
                                     43 	.globl _RS1
                                     44 	.globl _RS0
                                     45 	.globl _OV
                                     46 	.globl _F1
                                     47 	.globl _P
                                     48 	.globl _RD
                                     49 	.globl _WR
                                     50 	.globl _T1
                                     51 	.globl _T0
                                     52 	.globl _INT1
                                     53 	.globl _INT0
                                     54 	.globl _TXD0
                                     55 	.globl _TXD
                                     56 	.globl _RXD0
                                     57 	.globl _RXD
                                     58 	.globl _P3_7
                                     59 	.globl _P3_6
                                     60 	.globl _P3_5
                                     61 	.globl _P3_4
                                     62 	.globl _P3_3
                                     63 	.globl _P3_2
                                     64 	.globl _P3_1
                                     65 	.globl _P3_0
                                     66 	.globl _P2_7
                                     67 	.globl _P2_6
                                     68 	.globl _P2_5
                                     69 	.globl _P2_4
                                     70 	.globl _P2_3
                                     71 	.globl _P2_2
                                     72 	.globl _P2_1
                                     73 	.globl _P2_0
                                     74 	.globl _P1_7
                                     75 	.globl _P1_6
                                     76 	.globl _P1_5
                                     77 	.globl _P1_4
                                     78 	.globl _P1_3
                                     79 	.globl _P1_2
                                     80 	.globl _P1_1
                                     81 	.globl _P1_0
                                     82 	.globl _P0_7
                                     83 	.globl _P0_6
                                     84 	.globl _P0_5
                                     85 	.globl _P0_4
                                     86 	.globl _P0_3
                                     87 	.globl _P0_2
                                     88 	.globl _P0_1
                                     89 	.globl _P0_0
                                     90 	.globl _PS
                                     91 	.globl _PT1
                                     92 	.globl _PX1
                                     93 	.globl _PT0
                                     94 	.globl _PX0
                                     95 	.globl _EA
                                     96 	.globl _ES
                                     97 	.globl _ET1
                                     98 	.globl _EX1
                                     99 	.globl _ET0
                                    100 	.globl _EX0
                                    101 	.globl _BREG_F7
                                    102 	.globl _BREG_F6
                                    103 	.globl _BREG_F5
                                    104 	.globl _BREG_F4
                                    105 	.globl _BREG_F3
                                    106 	.globl _BREG_F2
                                    107 	.globl _BREG_F1
                                    108 	.globl _BREG_F0
                                    109 	.globl _P5_7
                                    110 	.globl _P5_6
                                    111 	.globl _P5_5
                                    112 	.globl _P5_4
                                    113 	.globl _P5_3
                                    114 	.globl _P5_2
                                    115 	.globl _P5_1
                                    116 	.globl _P5_0
                                    117 	.globl _P4_7
                                    118 	.globl _P4_6
                                    119 	.globl _P4_5
                                    120 	.globl _P4_4
                                    121 	.globl _P4_3
                                    122 	.globl _P4_2
                                    123 	.globl _P4_1
                                    124 	.globl _P4_0
                                    125 	.globl _PX0L
                                    126 	.globl _PT0L
                                    127 	.globl _PX1L
                                    128 	.globl _PT1L
                                    129 	.globl _PSL
                                    130 	.globl _PT2L
                                    131 	.globl _PPCL
                                    132 	.globl _EC
                                    133 	.globl _CCF0
                                    134 	.globl _CCF1
                                    135 	.globl _CCF2
                                    136 	.globl _CCF3
                                    137 	.globl _CCF4
                                    138 	.globl _CR
                                    139 	.globl _CF
                                    140 	.globl _TF2
                                    141 	.globl _EXF2
                                    142 	.globl _RCLK
                                    143 	.globl _TCLK
                                    144 	.globl _EXEN2
                                    145 	.globl _TR2
                                    146 	.globl _C_T2
                                    147 	.globl _CP_RL2
                                    148 	.globl _T2CON_7
                                    149 	.globl _T2CON_6
                                    150 	.globl _T2CON_5
                                    151 	.globl _T2CON_4
                                    152 	.globl _T2CON_3
                                    153 	.globl _T2CON_2
                                    154 	.globl _T2CON_1
                                    155 	.globl _T2CON_0
                                    156 	.globl _PT2
                                    157 	.globl _ET2
                                    158 	.globl __AUXR
                                    159 	.globl _TMOD
                                    160 	.globl _TL1
                                    161 	.globl _TL0
                                    162 	.globl _TH1
                                    163 	.globl _TH0
                                    164 	.globl _TCON
                                    165 	.globl _SP
                                    166 	.globl _SCON
                                    167 	.globl _SBUF0
                                    168 	.globl _SBUF
                                    169 	.globl _PSW
                                    170 	.globl _PCON
                                    171 	.globl _P3
                                    172 	.globl _P2
                                    173 	.globl _P1
                                    174 	.globl _P0
                                    175 	.globl _IP
                                    176 	.globl _IE
                                    177 	.globl _DP0L
                                    178 	.globl _DPL
                                    179 	.globl _DP0H
                                    180 	.globl _DPH
                                    181 	.globl _B
                                    182 	.globl _ACC
                                    183 	.globl _EECON
                                    184 	.globl _KBF
                                    185 	.globl _KBE
                                    186 	.globl _KBLS
                                    187 	.globl _BRL
                                    188 	.globl _BDRCON
                                    189 	.globl _T2MOD
                                    190 	.globl _SPDAT
                                    191 	.globl _SPSTA
                                    192 	.globl _SPCON
                                    193 	.globl _SADEN
                                    194 	.globl _SADDR
                                    195 	.globl _WDTPRG
                                    196 	.globl _WDTRST
                                    197 	.globl _P5
                                    198 	.globl _P4
                                    199 	.globl _IPH1
                                    200 	.globl _IPL1
                                    201 	.globl _IPH0
                                    202 	.globl _IPL0
                                    203 	.globl _IEN1
                                    204 	.globl _IEN0
                                    205 	.globl _CMOD
                                    206 	.globl _CL
                                    207 	.globl _CH
                                    208 	.globl _CCON
                                    209 	.globl _CCAPM4
                                    210 	.globl _CCAPM3
                                    211 	.globl _CCAPM2
                                    212 	.globl _CCAPM1
                                    213 	.globl _CCAPM0
                                    214 	.globl _CCAP4L
                                    215 	.globl _CCAP3L
                                    216 	.globl _CCAP2L
                                    217 	.globl _CCAP1L
                                    218 	.globl _CCAP0L
                                    219 	.globl _CCAP4H
                                    220 	.globl _CCAP3H
                                    221 	.globl _CCAP2H
                                    222 	.globl _CCAP1H
                                    223 	.globl _CCAP0H
                                    224 	.globl _CKCON1
                                    225 	.globl _CKCON0
                                    226 	.globl _CKRL
                                    227 	.globl _AUXR1
                                    228 	.globl _AUXR
                                    229 	.globl _TH2
                                    230 	.globl _TL2
                                    231 	.globl _RCAP2H
                                    232 	.globl _RCAP2L
                                    233 	.globl _T2CON
                                    234 	.globl _watchdog_flag
                                    235 	.globl _global_var_test
                                    236 	.globl _i2c_read_random_PARM_2
                                    237 	.globl _i2c_write_random_PARM_3
                                    238 	.globl _i2c_write_random_PARM_2
                                    239 	.globl _buffers_array
                                    240 	.globl _program_stats
                                    241 	.globl _DEBUG_LOC
                                    242 	.globl _user_interface_heap
                                    243 	.globl _user_interface_PCA
                                    244 	.globl _pca_falling_edge
                                    245 	.globl _pca_software_timer
                                    246 	.globl _pca_high_speed
                                    247 	.globl _pca_pwm
                                    248 	.globl _pca_watchdog
                                    249 	.globl _hardware_watchdog
                                    250 	.globl _pca_idle
                                    251 	.globl _pca_pdown
                                    252 	.globl _fclk_lowest
                                    253 	.globl _main_menu
                                    254 	.globl _i2c_write_random
                                    255 	.globl _i2c_read_random
                                    256 	.globl _i2c_testasm
                                    257 	.globl _asm_clang
                                    258 	.globl _at_clear_all_buffers
                                    259 	.globl _delete_buffer
                                    260 	.globl _print_pca_menu
                                    261 	.globl _print_heap_menu
                                    262 	.globl _create_new_buffer
                                    263 	.globl _create_initial_buffers
                                    264 	.globl _enter_chars
                                    265 	.globl _dump_buff_zero_ascii
                                    266 	.globl _dump_buff_zero_hex
                                    267 	.globl _print_heap_stats
                                    268 	.globl _print_all_buffers
                                    269 	.globl _get_number
                                    270 	.globl _get_num_helper
                                    271 	.globl _putchar
                                    272 	.globl _getchar
                                    273 	.globl _dataout
                                    274 	.globl _asm_call
                                    275 ;--------------------------------------------------------
                                    276 ; special function registers
                                    277 ;--------------------------------------------------------
                                    278 	.area RSEG    (ABS,DATA)
      000000                        279 	.org 0x0000
                           0000C8   280 _T2CON	=	0x00c8
                           0000CA   281 _RCAP2L	=	0x00ca
                           0000CB   282 _RCAP2H	=	0x00cb
                           0000CC   283 _TL2	=	0x00cc
                           0000CD   284 _TH2	=	0x00cd
                           00008E   285 _AUXR	=	0x008e
                           0000A2   286 _AUXR1	=	0x00a2
                           000097   287 _CKRL	=	0x0097
                           00008F   288 _CKCON0	=	0x008f
                           0000AF   289 _CKCON1	=	0x00af
                           0000FA   290 _CCAP0H	=	0x00fa
                           0000FB   291 _CCAP1H	=	0x00fb
                           0000FC   292 _CCAP2H	=	0x00fc
                           0000FD   293 _CCAP3H	=	0x00fd
                           0000FE   294 _CCAP4H	=	0x00fe
                           0000EA   295 _CCAP0L	=	0x00ea
                           0000EB   296 _CCAP1L	=	0x00eb
                           0000EC   297 _CCAP2L	=	0x00ec
                           0000ED   298 _CCAP3L	=	0x00ed
                           0000EE   299 _CCAP4L	=	0x00ee
                           0000DA   300 _CCAPM0	=	0x00da
                           0000DB   301 _CCAPM1	=	0x00db
                           0000DC   302 _CCAPM2	=	0x00dc
                           0000DD   303 _CCAPM3	=	0x00dd
                           0000DE   304 _CCAPM4	=	0x00de
                           0000D8   305 _CCON	=	0x00d8
                           0000F9   306 _CH	=	0x00f9
                           0000E9   307 _CL	=	0x00e9
                           0000D9   308 _CMOD	=	0x00d9
                           0000A8   309 _IEN0	=	0x00a8
                           0000B1   310 _IEN1	=	0x00b1
                           0000B8   311 _IPL0	=	0x00b8
                           0000B7   312 _IPH0	=	0x00b7
                           0000B2   313 _IPL1	=	0x00b2
                           0000B3   314 _IPH1	=	0x00b3
                           0000C0   315 _P4	=	0x00c0
                           0000E8   316 _P5	=	0x00e8
                           0000A6   317 _WDTRST	=	0x00a6
                           0000A7   318 _WDTPRG	=	0x00a7
                           0000A9   319 _SADDR	=	0x00a9
                           0000B9   320 _SADEN	=	0x00b9
                           0000C3   321 _SPCON	=	0x00c3
                           0000C4   322 _SPSTA	=	0x00c4
                           0000C5   323 _SPDAT	=	0x00c5
                           0000C9   324 _T2MOD	=	0x00c9
                           00009B   325 _BDRCON	=	0x009b
                           00009A   326 _BRL	=	0x009a
                           00009C   327 _KBLS	=	0x009c
                           00009D   328 _KBE	=	0x009d
                           00009E   329 _KBF	=	0x009e
                           0000D2   330 _EECON	=	0x00d2
                           0000E0   331 _ACC	=	0x00e0
                           0000F0   332 _B	=	0x00f0
                           000083   333 _DPH	=	0x0083
                           000083   334 _DP0H	=	0x0083
                           000082   335 _DPL	=	0x0082
                           000082   336 _DP0L	=	0x0082
                           0000A8   337 _IE	=	0x00a8
                           0000B8   338 _IP	=	0x00b8
                           000080   339 _P0	=	0x0080
                           000090   340 _P1	=	0x0090
                           0000A0   341 _P2	=	0x00a0
                           0000B0   342 _P3	=	0x00b0
                           000087   343 _PCON	=	0x0087
                           0000D0   344 _PSW	=	0x00d0
                           000099   345 _SBUF	=	0x0099
                           000099   346 _SBUF0	=	0x0099
                           000098   347 _SCON	=	0x0098
                           000081   348 _SP	=	0x0081
                           000088   349 _TCON	=	0x0088
                           00008C   350 _TH0	=	0x008c
                           00008D   351 _TH1	=	0x008d
                           00008A   352 _TL0	=	0x008a
                           00008B   353 _TL1	=	0x008b
                           000089   354 _TMOD	=	0x0089
                           00008E   355 __AUXR	=	0x008e
                                    356 ;--------------------------------------------------------
                                    357 ; special function bits
                                    358 ;--------------------------------------------------------
                                    359 	.area RSEG    (ABS,DATA)
      000000                        360 	.org 0x0000
                           0000AD   361 _ET2	=	0x00ad
                           0000BD   362 _PT2	=	0x00bd
                           0000C8   363 _T2CON_0	=	0x00c8
                           0000C9   364 _T2CON_1	=	0x00c9
                           0000CA   365 _T2CON_2	=	0x00ca
                           0000CB   366 _T2CON_3	=	0x00cb
                           0000CC   367 _T2CON_4	=	0x00cc
                           0000CD   368 _T2CON_5	=	0x00cd
                           0000CE   369 _T2CON_6	=	0x00ce
                           0000CF   370 _T2CON_7	=	0x00cf
                           0000C8   371 _CP_RL2	=	0x00c8
                           0000C9   372 _C_T2	=	0x00c9
                           0000CA   373 _TR2	=	0x00ca
                           0000CB   374 _EXEN2	=	0x00cb
                           0000CC   375 _TCLK	=	0x00cc
                           0000CD   376 _RCLK	=	0x00cd
                           0000CE   377 _EXF2	=	0x00ce
                           0000CF   378 _TF2	=	0x00cf
                           0000DF   379 _CF	=	0x00df
                           0000DE   380 _CR	=	0x00de
                           0000DC   381 _CCF4	=	0x00dc
                           0000DB   382 _CCF3	=	0x00db
                           0000DA   383 _CCF2	=	0x00da
                           0000D9   384 _CCF1	=	0x00d9
                           0000D8   385 _CCF0	=	0x00d8
                           0000AE   386 _EC	=	0x00ae
                           0000BE   387 _PPCL	=	0x00be
                           0000BD   388 _PT2L	=	0x00bd
                           0000BC   389 _PSL	=	0x00bc
                           0000BB   390 _PT1L	=	0x00bb
                           0000BA   391 _PX1L	=	0x00ba
                           0000B9   392 _PT0L	=	0x00b9
                           0000B8   393 _PX0L	=	0x00b8
                           0000C0   394 _P4_0	=	0x00c0
                           0000C1   395 _P4_1	=	0x00c1
                           0000C2   396 _P4_2	=	0x00c2
                           0000C3   397 _P4_3	=	0x00c3
                           0000C4   398 _P4_4	=	0x00c4
                           0000C5   399 _P4_5	=	0x00c5
                           0000C6   400 _P4_6	=	0x00c6
                           0000C7   401 _P4_7	=	0x00c7
                           0000E8   402 _P5_0	=	0x00e8
                           0000E9   403 _P5_1	=	0x00e9
                           0000EA   404 _P5_2	=	0x00ea
                           0000EB   405 _P5_3	=	0x00eb
                           0000EC   406 _P5_4	=	0x00ec
                           0000ED   407 _P5_5	=	0x00ed
                           0000EE   408 _P5_6	=	0x00ee
                           0000EF   409 _P5_7	=	0x00ef
                           0000F0   410 _BREG_F0	=	0x00f0
                           0000F1   411 _BREG_F1	=	0x00f1
                           0000F2   412 _BREG_F2	=	0x00f2
                           0000F3   413 _BREG_F3	=	0x00f3
                           0000F4   414 _BREG_F4	=	0x00f4
                           0000F5   415 _BREG_F5	=	0x00f5
                           0000F6   416 _BREG_F6	=	0x00f6
                           0000F7   417 _BREG_F7	=	0x00f7
                           0000A8   418 _EX0	=	0x00a8
                           0000A9   419 _ET0	=	0x00a9
                           0000AA   420 _EX1	=	0x00aa
                           0000AB   421 _ET1	=	0x00ab
                           0000AC   422 _ES	=	0x00ac
                           0000AF   423 _EA	=	0x00af
                           0000B8   424 _PX0	=	0x00b8
                           0000B9   425 _PT0	=	0x00b9
                           0000BA   426 _PX1	=	0x00ba
                           0000BB   427 _PT1	=	0x00bb
                           0000BC   428 _PS	=	0x00bc
                           000080   429 _P0_0	=	0x0080
                           000081   430 _P0_1	=	0x0081
                           000082   431 _P0_2	=	0x0082
                           000083   432 _P0_3	=	0x0083
                           000084   433 _P0_4	=	0x0084
                           000085   434 _P0_5	=	0x0085
                           000086   435 _P0_6	=	0x0086
                           000087   436 _P0_7	=	0x0087
                           000090   437 _P1_0	=	0x0090
                           000091   438 _P1_1	=	0x0091
                           000092   439 _P1_2	=	0x0092
                           000093   440 _P1_3	=	0x0093
                           000094   441 _P1_4	=	0x0094
                           000095   442 _P1_5	=	0x0095
                           000096   443 _P1_6	=	0x0096
                           000097   444 _P1_7	=	0x0097
                           0000A0   445 _P2_0	=	0x00a0
                           0000A1   446 _P2_1	=	0x00a1
                           0000A2   447 _P2_2	=	0x00a2
                           0000A3   448 _P2_3	=	0x00a3
                           0000A4   449 _P2_4	=	0x00a4
                           0000A5   450 _P2_5	=	0x00a5
                           0000A6   451 _P2_6	=	0x00a6
                           0000A7   452 _P2_7	=	0x00a7
                           0000B0   453 _P3_0	=	0x00b0
                           0000B1   454 _P3_1	=	0x00b1
                           0000B2   455 _P3_2	=	0x00b2
                           0000B3   456 _P3_3	=	0x00b3
                           0000B4   457 _P3_4	=	0x00b4
                           0000B5   458 _P3_5	=	0x00b5
                           0000B6   459 _P3_6	=	0x00b6
                           0000B7   460 _P3_7	=	0x00b7
                           0000B0   461 _RXD	=	0x00b0
                           0000B0   462 _RXD0	=	0x00b0
                           0000B1   463 _TXD	=	0x00b1
                           0000B1   464 _TXD0	=	0x00b1
                           0000B2   465 _INT0	=	0x00b2
                           0000B3   466 _INT1	=	0x00b3
                           0000B4   467 _T0	=	0x00b4
                           0000B5   468 _T1	=	0x00b5
                           0000B6   469 _WR	=	0x00b6
                           0000B7   470 _RD	=	0x00b7
                           0000D0   471 _P	=	0x00d0
                           0000D1   472 _F1	=	0x00d1
                           0000D2   473 _OV	=	0x00d2
                           0000D3   474 _RS0	=	0x00d3
                           0000D4   475 _RS1	=	0x00d4
                           0000D5   476 _F0	=	0x00d5
                           0000D6   477 _AC	=	0x00d6
                           0000D7   478 _CY	=	0x00d7
                           000098   479 _RI	=	0x0098
                           000099   480 _TI	=	0x0099
                           00009A   481 _RB8	=	0x009a
                           00009B   482 _TB8	=	0x009b
                           00009C   483 _REN	=	0x009c
                           00009D   484 _SM2	=	0x009d
                           00009E   485 _SM1	=	0x009e
                           00009F   486 _SM0	=	0x009f
                           000088   487 _IT0	=	0x0088
                           000089   488 _IE0	=	0x0089
                           00008A   489 _IT1	=	0x008a
                           00008B   490 _IE1	=	0x008b
                           00008C   491 _TR0	=	0x008c
                           00008D   492 _TF0	=	0x008d
                           00008E   493 _TR1	=	0x008e
                           00008F   494 _TF1	=	0x008f
                                    495 ;--------------------------------------------------------
                                    496 ; overlayable register banks
                                    497 ;--------------------------------------------------------
                                    498 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        499 	.ds 8
                                    500 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        501 	.ds 8
                                    502 ;--------------------------------------------------------
                                    503 ; overlayable bit register bank
                                    504 ;--------------------------------------------------------
                                    505 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        506 bits:
      000020                        507 	.ds 1
                           008000   508 	b0 = bits[0]
                           008100   509 	b1 = bits[1]
                           008200   510 	b2 = bits[2]
                           008300   511 	b3 = bits[3]
                           008400   512 	b4 = bits[4]
                           008500   513 	b5 = bits[5]
                           008600   514 	b6 = bits[6]
                           008700   515 	b7 = bits[7]
                                    516 ;--------------------------------------------------------
                                    517 ; internal ram data
                                    518 ;--------------------------------------------------------
                                    519 	.area DSEG    (DATA)
      000010                        520 _delete_buffer_sloc0_1_0:
      000010                        521 	.ds 2
      000012                        522 _delete_buffer_sloc1_1_0:
      000012                        523 	.ds 2
      000014                        524 _delete_buffer_sloc2_1_0:
      000014                        525 	.ds 3
                                    526 ;--------------------------------------------------------
                                    527 ; overlayable items in internal ram 
                                    528 ;--------------------------------------------------------
                                    529 ;--------------------------------------------------------
                                    530 ; Stack segment in internal ram 
                                    531 ;--------------------------------------------------------
                                    532 	.area	SSEG
      00002B                        533 __start__stack:
      00002B                        534 	.ds	1
                                    535 
                                    536 ;--------------------------------------------------------
                                    537 ; indirectly addressable internal ram data
                                    538 ;--------------------------------------------------------
                                    539 	.area ISEG    (DATA)
                                    540 ;--------------------------------------------------------
                                    541 ; absolute internal ram data
                                    542 ;--------------------------------------------------------
                                    543 	.area IABS    (ABS,DATA)
                                    544 	.area IABS    (ABS,DATA)
                                    545 ;--------------------------------------------------------
                                    546 ; bit data
                                    547 ;--------------------------------------------------------
                                    548 	.area BSEG    (BIT)
                                    549 ;--------------------------------------------------------
                                    550 ; paged external ram data
                                    551 ;--------------------------------------------------------
                                    552 	.area PSEG    (PAG,XDATA)
                                    553 ;--------------------------------------------------------
                                    554 ; external ram data
                                    555 ;--------------------------------------------------------
                                    556 	.area XSEG    (XDATA)
                           008000   557 _DEBUG_LOC	=	0x8000
      000001                        558 _program_stats::
      000001                        559 	.ds 10
      00000B                        560 _buffers_array::
      00000B                        561 	.ds 300
      000137                        562 _i2c_write_random_PARM_2:
      000137                        563 	.ds 1
      000138                        564 _i2c_write_random_PARM_3:
      000138                        565 	.ds 1
      000139                        566 _i2c_write_random_block_65536_80:
      000139                        567 	.ds 1
      00013A                        568 _i2c_read_random_PARM_2:
      00013A                        569 	.ds 1
      00013B                        570 _i2c_read_random_block_65536_86:
      00013B                        571 	.ds 1
      00013C                        572 _create_new_buffer_buff_65537_113:
      00013C                        573 	.ds 12
      000148                        574 _create_initial_buffers_buff_65538_120:
      000148                        575 	.ds 12
      000154                        576 _create_initial_buffers_buff1_65538_120:
      000154                        577 	.ds 12
      000160                        578 _dump_buff_zero_ascii_j_65537_137:
      000160                        579 	.ds 2
      000162                        580 _dump_buff_zero_hex_j_131073_145:
      000162                        581 	.ds 2
      000164                        582 _get_number_total_chars_65536_154:
      000164                        583 	.ds 2
      000166                        584 _get_number_num_65537_156:
      000166                        585 	.ds 2
      000168                        586 _get_num_helper_times_65536_161:
      000168                        587 	.ds 2
      00016A                        588 _get_num_helper_num_65536_162:
      00016A                        589 	.ds 2
      00016C                        590 _putchar_c_65536_165:
      00016C                        591 	.ds 2
      00016E                        592 _dataout_data_65536_168:
      00016E                        593 	.ds 1
      00016F                        594 _asm_call_sent_from_asm_65536_170:
      00016F                        595 	.ds 1
                                    596 ;--------------------------------------------------------
                                    597 ; absolute external ram data
                                    598 ;--------------------------------------------------------
                                    599 	.area XABS    (ABS,XDATA)
                                    600 ;--------------------------------------------------------
                                    601 ; external initialized ram data
                                    602 ;--------------------------------------------------------
                                    603 	.area XISEG   (XDATA)
      00154D                        604 _global_var_test::
      00154D                        605 	.ds 1
      00154E                        606 _watchdog_flag::
      00154E                        607 	.ds 2
                                    608 	.area HOME    (CODE)
                                    609 	.area GSINIT0 (CODE)
                                    610 	.area GSINIT1 (CODE)
                                    611 	.area GSINIT2 (CODE)
                                    612 	.area GSINIT3 (CODE)
                                    613 	.area GSINIT4 (CODE)
                                    614 	.area GSINIT5 (CODE)
                                    615 	.area GSINIT  (CODE)
                                    616 	.area GSFINAL (CODE)
                                    617 	.area CSEG    (CODE)
                                    618 ;--------------------------------------------------------
                                    619 ; interrupt vector 
                                    620 ;--------------------------------------------------------
                                    621 	.area HOME    (CODE)
      000000                        622 __interrupt_vect:
      000000 02 00 39         [24]  623 	ljmp	__sdcc_gsinit_startup
      000003 02 02 32         [24]  624 	ljmp	_idle_interrupt
      000006                        625 	.ds	5
      00000B 32               [24]  626 	reti
      00000C                        627 	.ds	7
      000013 32               [24]  628 	reti
      000014                        629 	.ds	7
      00001B 32               [24]  630 	reti
      00001C                        631 	.ds	7
      000023 32               [24]  632 	reti
      000024                        633 	.ds	7
      00002B 32               [24]  634 	reti
      00002C                        635 	.ds	7
      000033 02 01 8A         [24]  636 	ljmp	_pca_interrupt
                                    637 ;--------------------------------------------------------
                                    638 ; global & static initialisations
                                    639 ;--------------------------------------------------------
                                    640 	.area HOME    (CODE)
                                    641 	.area GSINIT  (CODE)
                                    642 	.area GSFINAL (CODE)
                                    643 	.area GSINIT  (CODE)
                                    644 	.globl __sdcc_gsinit_startup
                                    645 	.globl __sdcc_program_startup
                                    646 	.globl __start__stack
                                    647 	.globl __mcs51_genXINIT
                                    648 	.globl __mcs51_genXRAMCLEAR
                                    649 	.globl __mcs51_genRAMCLEAR
                                    650 	.area GSFINAL (CODE)
      000092 02 00 36         [24]  651 	ljmp	__sdcc_program_startup
                                    652 ;--------------------------------------------------------
                                    653 ; Home
                                    654 ;--------------------------------------------------------
                                    655 	.area HOME    (CODE)
                                    656 	.area HOME    (CODE)
      000036                        657 __sdcc_program_startup:
      000036 02 00 95         [24]  658 	ljmp	_main
                                    659 ;	return from main will return to caller
                                    660 ;--------------------------------------------------------
                                    661 ; code
                                    662 ;--------------------------------------------------------
                                    663 	.area CSEG    (CODE)
                                    664 ;------------------------------------------------------------
                                    665 ;Allocation info for local variables in function 'main'
                                    666 ;------------------------------------------------------------
                                    667 ;	program.c:97: void main(void)
                                    668 ;	-----------------------------------------
                                    669 ;	 function main
                                    670 ;	-----------------------------------------
      000095                        671 _main:
                           000007   672 	ar7 = 0x07
                           000006   673 	ar6 = 0x06
                           000005   674 	ar5 = 0x05
                           000004   675 	ar4 = 0x04
                           000003   676 	ar3 = 0x03
                           000002   677 	ar2 = 0x02
                           000001   678 	ar1 = 0x01
                           000000   679 	ar0 = 0x00
                                    680 ;	program.c:99: printf("\n\r HELLO! Started in X2 Mode \n\r");
      000095 74 E3            [12]  681 	mov	a,#___str_0
      000097 C0 E0            [24]  682 	push	acc
      000099 74 24            [12]  683 	mov	a,#(___str_0 >> 8)
      00009B C0 E0            [24]  684 	push	acc
      00009D 74 80            [12]  685 	mov	a,#0x80
      00009F C0 E0            [24]  686 	push	acc
      0000A1 12 1A A8         [24]  687 	lcall	_printf
      0000A4 15 81            [12]  688 	dec	sp
      0000A6 15 81            [12]  689 	dec	sp
      0000A8 15 81            [12]  690 	dec	sp
                                    691 ;	program.c:100: DEBUGPORT(0x01);
      0000AA 75 82 01         [24]  692 	mov	dpl,#0x01
      0000AD 12 15 93         [24]  693 	lcall	_dataout
                                    694 ;	program.c:101: P1_1 = 0;
                                    695 ;	assignBit
      0000B0 C2 91            [12]  696 	clr	_P1_1
                                    697 ;	program.c:103: main_menu(); 
                                    698 ;	program.c:104: }
      0000B2 02 04 7B         [24]  699 	ljmp	_main_menu
                                    700 ;------------------------------------------------------------
                                    701 ;Allocation info for local variables in function 'user_interface_heap'
                                    702 ;------------------------------------------------------------
                                    703 ;	program.c:111: void user_interface_heap()
                                    704 ;	-----------------------------------------
                                    705 ;	 function user_interface_heap
                                    706 ;	-----------------------------------------
      0000B5                        707 _user_interface_heap:
                                    708 ;	program.c:113: DEBUGPORT(0x02);
      0000B5 75 82 02         [24]  709 	mov	dpl,#0x02
      0000B8 12 15 93         [24]  710 	lcall	_dataout
                                    711 ;	program.c:114: create_initial_buffers();
      0000BB 12 0C 42         [24]  712 	lcall	_create_initial_buffers
                                    713 ;	program.c:115: print_all_buffers();
      0000BE 12 12 73         [24]  714 	lcall	_print_all_buffers
                                    715 ;	program.c:116: enter_chars();
                                    716 ;	program.c:117: }
      0000C1 02 0E 1F         [24]  717 	ljmp	_enter_chars
                                    718 ;------------------------------------------------------------
                                    719 ;Allocation info for local variables in function 'user_interface_PCA'
                                    720 ;------------------------------------------------------------
                                    721 ;inp                       Allocated with name '_user_interface_PCA_inp_65537_59'
                                    722 ;------------------------------------------------------------
                                    723 ;	program.c:124: void user_interface_PCA()
                                    724 ;	-----------------------------------------
                                    725 ;	 function user_interface_PCA
                                    726 ;	-----------------------------------------
      0000C4                        727 _user_interface_PCA:
                                    728 ;	program.c:126: DEBUGPORT(0xAA);
      0000C4 75 82 AA         [24]  729 	mov	dpl,#0xaa
      0000C7 12 15 93         [24]  730 	lcall	_dataout
                                    731 ;	program.c:127: printf("Hello, In PCA Demo mode \n\r");
      0000CA 74 03            [12]  732 	mov	a,#___str_1
      0000CC C0 E0            [24]  733 	push	acc
      0000CE 74 25            [12]  734 	mov	a,#(___str_1 >> 8)
      0000D0 C0 E0            [24]  735 	push	acc
      0000D2 74 80            [12]  736 	mov	a,#0x80
      0000D4 C0 E0            [24]  737 	push	acc
      0000D6 12 1A A8         [24]  738 	lcall	_printf
      0000D9 15 81            [12]  739 	dec	sp
      0000DB 15 81            [12]  740 	dec	sp
      0000DD 15 81            [12]  741 	dec	sp
                                    742 ;	program.c:128: print_pca_menu();
      0000DF 12 09 2B         [24]  743 	lcall	_print_pca_menu
                                    744 ;	program.c:131: wrong_choice_pca:
      0000E2                        745 00101$:
                                    746 ;	program.c:132: printf("Please make a valid choice \n\r");
      0000E2 74 1E            [12]  747 	mov	a,#___str_2
      0000E4 C0 E0            [24]  748 	push	acc
      0000E6 74 25            [12]  749 	mov	a,#(___str_2 >> 8)
      0000E8 C0 E0            [24]  750 	push	acc
      0000EA 74 80            [12]  751 	mov	a,#0x80
      0000EC C0 E0            [24]  752 	push	acc
      0000EE 12 1A A8         [24]  753 	lcall	_printf
      0000F1 15 81            [12]  754 	dec	sp
      0000F3 15 81            [12]  755 	dec	sp
      0000F5 15 81            [12]  756 	dec	sp
                                    757 ;	program.c:133: inp = getchar();
      0000F7 12 15 57         [24]  758 	lcall	_getchar
      0000FA AE 82            [24]  759 	mov	r6,dpl
      0000FC AF 83            [24]  760 	mov	r7,dph
                                    761 ;	program.c:134: if (inp == 0x46)
      0000FE BE 46 09         [24]  762 	cjne	r6,#0x46,00127$
      000101 BF 00 06         [24]  763 	cjne	r7,#0x00,00127$
                                    764 ;	program.c:135: pca_falling_edge();
      000104 12 02 A7         [24]  765 	lcall	_pca_falling_edge
      000107 02 01 65         [24]  766 	ljmp	00145$
      00010A                        767 00127$:
                                    768 ;	program.c:136: else if (inp == 0x53)
      00010A BE 53 08         [24]  769 	cjne	r6,#0x53,00124$
      00010D BF 00 05         [24]  770 	cjne	r7,#0x00,00124$
                                    771 ;	program.c:137: pca_software_timer();
      000110 12 02 C2         [24]  772 	lcall	_pca_software_timer
      000113 80 50            [24]  773 	sjmp	00145$
      000115                        774 00124$:
                                    775 ;	program.c:138: else if (inp == 0x48)
      000115 BE 48 08         [24]  776 	cjne	r6,#0x48,00121$
      000118 BF 00 05         [24]  777 	cjne	r7,#0x00,00121$
                                    778 ;	program.c:139: pca_high_speed();
      00011B 12 02 F3         [24]  779 	lcall	_pca_high_speed
      00011E 80 45            [24]  780 	sjmp	00145$
      000120                        781 00121$:
                                    782 ;	program.c:140: else if (inp == 0x50)
      000120 BE 50 08         [24]  783 	cjne	r6,#0x50,00118$
      000123 BF 00 05         [24]  784 	cjne	r7,#0x00,00118$
                                    785 ;	program.c:141: pca_pwm();
      000126 12 03 17         [24]  786 	lcall	_pca_pwm
      000129 80 3A            [24]  787 	sjmp	00145$
      00012B                        788 00118$:
                                    789 ;	program.c:142: else if (inp == 0x57)
      00012B BE 57 08         [24]  790 	cjne	r6,#0x57,00115$
      00012E BF 00 05         [24]  791 	cjne	r7,#0x00,00115$
                                    792 ;	program.c:143: pca_watchdog();
      000131 12 03 3B         [24]  793 	lcall	_pca_watchdog
      000134 80 2F            [24]  794 	sjmp	00145$
      000136                        795 00115$:
                                    796 ;	program.c:144: else if (inp == 0x49)
      000136 BE 49 08         [24]  797 	cjne	r6,#0x49,00112$
      000139 BF 00 05         [24]  798 	cjne	r7,#0x00,00112$
                                    799 ;	program.c:145: pca_idle();
      00013C 12 03 DF         [24]  800 	lcall	_pca_idle
      00013F 80 24            [24]  801 	sjmp	00145$
      000141                        802 00112$:
                                    803 ;	program.c:146: else if (inp == 0x44)
      000141 BE 44 08         [24]  804 	cjne	r6,#0x44,00109$
      000144 BF 00 05         [24]  805 	cjne	r7,#0x00,00109$
                                    806 ;	program.c:147: pca_pdown();
      000147 12 04 14         [24]  807 	lcall	_pca_pdown
      00014A 80 19            [24]  808 	sjmp	00145$
      00014C                        809 00109$:
                                    810 ;	program.c:148: else if (inp == 0x4C)
      00014C BE 4C 08         [24]  811 	cjne	r6,#0x4c,00106$
      00014F BF 00 05         [24]  812 	cjne	r7,#0x00,00106$
                                    813 ;	program.c:149: fclk_lowest();
      000152 12 04 49         [24]  814 	lcall	_fclk_lowest
      000155 80 0E            [24]  815 	sjmp	00145$
      000157                        816 00106$:
                                    817 ;	program.c:150: else if (inp == 0x55)
      000157 BE 55 05         [24]  818 	cjne	r6,#0x55,00199$
      00015A BF 00 02         [24]  819 	cjne	r7,#0x00,00199$
      00015D 80 03            [24]  820 	sjmp	00200$
      00015F                        821 00199$:
      00015F 02 00 E2         [24]  822 	ljmp	00101$
      000162                        823 00200$:
                                    824 ;	program.c:151: hardware_watchdog();
      000162 12 03 96         [24]  825 	lcall	_hardware_watchdog
                                    826 ;	program.c:155: exit_choice:
      000165                        827 00145$:
      000165                        828 00129$:
                                    829 ;	program.c:156: printf("Please 'E' to exit or Reset \n\r");
      000165 74 3C            [12]  830 	mov	a,#___str_3
      000167 C0 E0            [24]  831 	push	acc
      000169 74 25            [12]  832 	mov	a,#(___str_3 >> 8)
      00016B C0 E0            [24]  833 	push	acc
      00016D 74 80            [12]  834 	mov	a,#0x80
      00016F C0 E0            [24]  835 	push	acc
      000171 12 1A A8         [24]  836 	lcall	_printf
      000174 15 81            [12]  837 	dec	sp
      000176 15 81            [12]  838 	dec	sp
      000178 15 81            [12]  839 	dec	sp
                                    840 ;	program.c:157: inp = getchar();
      00017A 12 15 57         [24]  841 	lcall	_getchar
      00017D AE 82            [24]  842 	mov	r6,dpl
      00017F AF 83            [24]  843 	mov	r7,dph
                                    844 ;	program.c:158: if (inp == 0x45)
      000181 BE 45 E1         [24]  845 	cjne	r6,#0x45,00129$
      000184 BF 00 DE         [24]  846 	cjne	r7,#0x00,00129$
                                    847 ;	program.c:159: user_interface_PCA();
                                    848 ;	program.c:161: goto exit_choice;
                                    849 ;	program.c:162: }
      000187 02 00 C4         [24]  850 	ljmp	_user_interface_PCA
                                    851 ;------------------------------------------------------------
                                    852 ;Allocation info for local variables in function 'pca_interrupt'
                                    853 ;------------------------------------------------------------
                                    854 ;	program.c:169: void pca_interrupt() __interrupt(6) __using(1)
                                    855 ;	-----------------------------------------
                                    856 ;	 function pca_interrupt
                                    857 ;	-----------------------------------------
      00018A                        858 _pca_interrupt:
                           00000F   859 	ar7 = 0x0f
                           00000E   860 	ar6 = 0x0e
                           00000D   861 	ar5 = 0x0d
                           00000C   862 	ar4 = 0x0c
                           00000B   863 	ar3 = 0x0b
                           00000A   864 	ar2 = 0x0a
                           000009   865 	ar1 = 0x09
                           000008   866 	ar0 = 0x08
      00018A C0 20            [24]  867 	push	bits
      00018C C0 E0            [24]  868 	push	acc
      00018E C0 F0            [24]  869 	push	b
      000190 C0 82            [24]  870 	push	dpl
      000192 C0 83            [24]  871 	push	dph
      000194 C0 07            [24]  872 	push	(0+7)
      000196 C0 06            [24]  873 	push	(0+6)
      000198 C0 05            [24]  874 	push	(0+5)
      00019A C0 04            [24]  875 	push	(0+4)
      00019C C0 03            [24]  876 	push	(0+3)
      00019E C0 02            [24]  877 	push	(0+2)
      0001A0 C0 01            [24]  878 	push	(0+1)
      0001A2 C0 00            [24]  879 	push	(0+0)
      0001A4 C0 D0            [24]  880 	push	psw
      0001A6 75 D0 08         [24]  881 	mov	psw,#0x08
                                    882 ;	program.c:171: if (CCF0)
      0001A9 30 D8 2D         [24]  883 	jnb	_CCF0,00102$
                                    884 ;	program.c:173: printf("Captured Value CCPL -> %d CCPH -> %d \n\r", CCAP0L, CCAP0H);
      0001AC AE FA            [24]  885 	mov	r6,_CCAP0H
      0001AE 7F 00            [12]  886 	mov	r7,#0x00
      0001B0 AC EA            [24]  887 	mov	r4,_CCAP0L
      0001B2 7D 00            [12]  888 	mov	r5,#0x00
      0001B4 C0 0E            [24]  889 	push	ar6
      0001B6 C0 0F            [24]  890 	push	ar7
      0001B8 C0 0C            [24]  891 	push	ar4
      0001BA C0 0D            [24]  892 	push	ar5
      0001BC 74 5B            [12]  893 	mov	a,#___str_4
      0001BE C0 E0            [24]  894 	push	acc
      0001C0 74 25            [12]  895 	mov	a,#(___str_4 >> 8)
      0001C2 C0 E0            [24]  896 	push	acc
      0001C4 74 80            [12]  897 	mov	a,#0x80
      0001C6 C0 E0            [24]  898 	push	acc
      0001C8 75 D0 00         [24]  899 	mov	psw,#0x00
      0001CB 12 1A A8         [24]  900 	lcall	_printf
      0001CE 75 D0 08         [24]  901 	mov	psw,#0x08
      0001D1 E5 81            [12]  902 	mov	a,sp
      0001D3 24 F9            [12]  903 	add	a,#0xf9
      0001D5 F5 81            [12]  904 	mov	sp,a
                                    905 ;	program.c:175: CCF0 = 0;
                                    906 ;	assignBit
      0001D7 C2 D8            [12]  907 	clr	_CCF0
      0001D9                        908 00102$:
                                    909 ;	program.c:177: if (CCF1)
                                    910 ;	program.c:179: CCF1 = 0;
                                    911 ;	assignBit
      0001D9 10 D9 02         [24]  912 	jbc	_CCF1,00128$
      0001DC 80 06            [24]  913 	sjmp	00104$
      0001DE                        914 00128$:
                                    915 ;	program.c:180: CH = 0;
      0001DE 75 F9 00         [24]  916 	mov	_CH,#0x00
                                    917 ;	program.c:181: CL = 0;
      0001E1 75 E9 00         [24]  918 	mov	_CL,#0x00
      0001E4                        919 00104$:
                                    920 ;	program.c:183: if (CCF2)
                                    921 ;	program.c:185: CCF2 = 0;
                                    922 ;	assignBit
      0001E4 10 DA 02         [24]  923 	jbc	_CCF2,00129$
      0001E7 80 0C            [24]  924 	sjmp	00106$
      0001E9                        925 00129$:
                                    926 ;	program.c:186: CH = 0;
      0001E9 75 F9 00         [24]  927 	mov	_CH,#0x00
                                    928 ;	program.c:187: CL = 0;
      0001EC 75 E9 00         [24]  929 	mov	_CL,#0x00
                                    930 ;	program.c:188: WDTRST = 0x01E;
      0001EF 75 A6 1E         [24]  931 	mov	_WDTRST,#0x1e
                                    932 ;	program.c:189: WDTRST = 0x0E1;
      0001F2 75 A6 E1         [24]  933 	mov	_WDTRST,#0xe1
      0001F5                        934 00106$:
                                    935 ;	program.c:191: if (CCF3)
                                    936 ;	program.c:193: CCF3 = 0;
                                    937 ;	assignBit
      0001F5 10 DB 02         [24]  938 	jbc	_CCF3,00130$
      0001F8 80 1B            [24]  939 	sjmp	00109$
      0001FA                        940 00130$:
                                    941 ;	program.c:194: printf("Timer Interrupt\n\r");
      0001FA 74 83            [12]  942 	mov	a,#___str_5
      0001FC C0 E0            [24]  943 	push	acc
      0001FE 74 25            [12]  944 	mov	a,#(___str_5 >> 8)
      000200 C0 E0            [24]  945 	push	acc
      000202 74 80            [12]  946 	mov	a,#0x80
      000204 C0 E0            [24]  947 	push	acc
      000206 75 D0 00         [24]  948 	mov	psw,#0x00
      000209 12 1A A8         [24]  949 	lcall	_printf
      00020C 75 D0 08         [24]  950 	mov	psw,#0x08
      00020F 15 81            [12]  951 	dec	sp
      000211 15 81            [12]  952 	dec	sp
      000213 15 81            [12]  953 	dec	sp
      000215                        954 00109$:
                                    955 ;	program.c:196: }
      000215 D0 D0            [24]  956 	pop	psw
      000217 D0 00            [24]  957 	pop	(0+0)
      000219 D0 01            [24]  958 	pop	(0+1)
      00021B D0 02            [24]  959 	pop	(0+2)
      00021D D0 03            [24]  960 	pop	(0+3)
      00021F D0 04            [24]  961 	pop	(0+4)
      000221 D0 05            [24]  962 	pop	(0+5)
      000223 D0 06            [24]  963 	pop	(0+6)
      000225 D0 07            [24]  964 	pop	(0+7)
      000227 D0 83            [24]  965 	pop	dph
      000229 D0 82            [24]  966 	pop	dpl
      00022B D0 F0            [24]  967 	pop	b
      00022D D0 E0            [24]  968 	pop	acc
      00022F D0 20            [24]  969 	pop	bits
      000231 32               [24]  970 	reti
                                    971 ;------------------------------------------------------------
                                    972 ;Allocation info for local variables in function 'idle_interrupt'
                                    973 ;------------------------------------------------------------
                                    974 ;	program.c:203: void idle_interrupt() __interrupt(0) __using(1)
                                    975 ;	-----------------------------------------
                                    976 ;	 function idle_interrupt
                                    977 ;	-----------------------------------------
      000232                        978 _idle_interrupt:
      000232 C0 20            [24]  979 	push	bits
      000234 C0 E0            [24]  980 	push	acc
      000236 C0 F0            [24]  981 	push	b
      000238 C0 82            [24]  982 	push	dpl
      00023A C0 83            [24]  983 	push	dph
      00023C C0 07            [24]  984 	push	(0+7)
      00023E C0 06            [24]  985 	push	(0+6)
      000240 C0 05            [24]  986 	push	(0+5)
      000242 C0 04            [24]  987 	push	(0+4)
      000244 C0 03            [24]  988 	push	(0+3)
      000246 C0 02            [24]  989 	push	(0+2)
      000248 C0 01            [24]  990 	push	(0+1)
      00024A C0 00            [24]  991 	push	(0+0)
      00024C C0 D0            [24]  992 	push	psw
      00024E 75 D0 08         [24]  993 	mov	psw,#0x08
                                    994 ;	program.c:205: EX0 = 0;
                                    995 ;	assignBit
      000251 C2 A8            [12]  996 	clr	_EX0
                                    997 ;	program.c:206: PCON = 0x80;
      000253 75 87 80         [24]  998 	mov	_PCON,#0x80
                                    999 ;	program.c:207: CR = 0;
                                   1000 ;	assignBit
      000256 C2 DE            [12] 1001 	clr	_CR
                                   1002 ;	program.c:208: CKRL = 255;
      000258 75 97 FF         [24] 1003 	mov	_CKRL,#0xff
                                   1004 ;	program.c:209: CCAPM0 = 0;
                                   1005 ;	program.c:210: CCAPM1 = 0;
                                   1006 ;	program.c:211: CCAPM2 = 0;
                                   1007 ;	program.c:212: CCAPM3 = 0;
                                   1008 ;	program.c:213: CCAPM4 = 0;
                                   1009 ;	program.c:214: printf("Going to main menu.. \n\r");
      00025B E4               [12] 1010 	clr	a
      00025C F5 DA            [12] 1011 	mov	_CCAPM0,a
      00025E F5 DB            [12] 1012 	mov	_CCAPM1,a
      000260 F5 DC            [12] 1013 	mov	_CCAPM2,a
      000262 F5 DD            [12] 1014 	mov	_CCAPM3,a
      000264 F5 DE            [12] 1015 	mov	_CCAPM4,a
      000266 74 95            [12] 1016 	mov	a,#___str_6
      000268 C0 E0            [24] 1017 	push	acc
      00026A 74 25            [12] 1018 	mov	a,#(___str_6 >> 8)
      00026C C0 E0            [24] 1019 	push	acc
      00026E 74 80            [12] 1020 	mov	a,#0x80
      000270 C0 E0            [24] 1021 	push	acc
      000272 75 D0 00         [24] 1022 	mov	psw,#0x00
      000275 12 1A A8         [24] 1023 	lcall	_printf
      000278 75 D0 08         [24] 1024 	mov	psw,#0x08
      00027B 15 81            [12] 1025 	dec	sp
      00027D 15 81            [12] 1026 	dec	sp
      00027F 15 81            [12] 1027 	dec	sp
                                   1028 ;	program.c:215: main_menu();
      000281 75 D0 00         [24] 1029 	mov	psw,#0x00
      000284 12 04 7B         [24] 1030 	lcall	_main_menu
      000287 75 D0 08         [24] 1031 	mov	psw,#0x08
                                   1032 ;	program.c:216: }
      00028A D0 D0            [24] 1033 	pop	psw
      00028C D0 00            [24] 1034 	pop	(0+0)
      00028E D0 01            [24] 1035 	pop	(0+1)
      000290 D0 02            [24] 1036 	pop	(0+2)
      000292 D0 03            [24] 1037 	pop	(0+3)
      000294 D0 04            [24] 1038 	pop	(0+4)
      000296 D0 05            [24] 1039 	pop	(0+5)
      000298 D0 06            [24] 1040 	pop	(0+6)
      00029A D0 07            [24] 1041 	pop	(0+7)
      00029C D0 83            [24] 1042 	pop	dph
      00029E D0 82            [24] 1043 	pop	dpl
      0002A0 D0 F0            [24] 1044 	pop	b
      0002A2 D0 E0            [24] 1045 	pop	acc
      0002A4 D0 20            [24] 1046 	pop	bits
      0002A6 32               [24] 1047 	reti
                                   1048 ;------------------------------------------------------------
                                   1049 ;Allocation info for local variables in function 'pca_falling_edge'
                                   1050 ;------------------------------------------------------------
                                   1051 ;	program.c:223: void pca_falling_edge()
                                   1052 ;	-----------------------------------------
                                   1053 ;	 function pca_falling_edge
                                   1054 ;	-----------------------------------------
      0002A7                       1055 _pca_falling_edge:
                           000007  1056 	ar7 = 0x07
                           000006  1057 	ar6 = 0x06
                           000005  1058 	ar5 = 0x05
                           000004  1059 	ar4 = 0x04
                           000003  1060 	ar3 = 0x03
                           000002  1061 	ar2 = 0x02
                           000001  1062 	ar1 = 0x01
                           000000  1063 	ar0 = 0x00
                                   1064 ;	program.c:225: printf("Setting P1.3 as falling edge detector, enabling PCA interrupt \n\r");
      0002A7 74 AD            [12] 1065 	mov	a,#___str_7
      0002A9 C0 E0            [24] 1066 	push	acc
      0002AB 74 25            [12] 1067 	mov	a,#(___str_7 >> 8)
      0002AD C0 E0            [24] 1068 	push	acc
      0002AF 74 80            [12] 1069 	mov	a,#0x80
      0002B1 C0 E0            [24] 1070 	push	acc
      0002B3 12 1A A8         [24] 1071 	lcall	_printf
      0002B6 15 81            [12] 1072 	dec	sp
      0002B8 15 81            [12] 1073 	dec	sp
      0002BA 15 81            [12] 1074 	dec	sp
                                   1075 ;	program.c:226: CCAPM0 = 0x21;
      0002BC 75 DA 21         [24] 1076 	mov	_CCAPM0,#0x21
                                   1077 ;	program.c:227: CR = 1;
                                   1078 ;	assignBit
      0002BF D2 DE            [12] 1079 	setb	_CR
                                   1080 ;	program.c:228: }
      0002C1 22               [24] 1081 	ret
                                   1082 ;------------------------------------------------------------
                                   1083 ;Allocation info for local variables in function 'pca_software_timer'
                                   1084 ;------------------------------------------------------------
                                   1085 ;rec                       Allocated with name '_pca_software_timer_rec_65537_68'
                                   1086 ;------------------------------------------------------------
                                   1087 ;	program.c:235: void pca_software_timer()
                                   1088 ;	-----------------------------------------
                                   1089 ;	 function pca_software_timer
                                   1090 ;	-----------------------------------------
      0002C2                       1091 _pca_software_timer:
                                   1092 ;	program.c:237: printf("Entering Software Timer Mode \n\r");
      0002C2 74 EE            [12] 1093 	mov	a,#___str_8
      0002C4 C0 E0            [24] 1094 	push	acc
      0002C6 74 25            [12] 1095 	mov	a,#(___str_8 >> 8)
      0002C8 C0 E0            [24] 1096 	push	acc
      0002CA 74 80            [12] 1097 	mov	a,#0x80
      0002CC C0 E0            [24] 1098 	push	acc
      0002CE 12 1A A8         [24] 1099 	lcall	_printf
      0002D1 15 81            [12] 1100 	dec	sp
      0002D3 15 81            [12] 1101 	dec	sp
      0002D5 15 81            [12] 1102 	dec	sp
                                   1103 ;	program.c:238: CCAP3L = 255;
      0002D7 75 ED FF         [24] 1104 	mov	_CCAP3L,#0xff
                                   1105 ;	program.c:239: CCAP3H = 255;
      0002DA 75 FD FF         [24] 1106 	mov	_CCAP3H,#0xff
                                   1107 ;	program.c:240: CCAPM3 = 0x49;
      0002DD 75 DD 49         [24] 1108 	mov	_CCAPM3,#0x49
                                   1109 ;	program.c:241: CR = 1;
                                   1110 ;	assignBit
      0002E0 D2 DE            [12] 1111 	setb	_CR
                                   1112 ;	program.c:243: get_f:
      0002E2                       1113 00101$:
                                   1114 ;	program.c:244: rec = getchar();
      0002E2 12 15 57         [24] 1115 	lcall	_getchar
      0002E5 AE 82            [24] 1116 	mov	r6,dpl
      0002E7 AF 83            [24] 1117 	mov	r7,dph
                                   1118 ;	program.c:246: if (rec == 0x53)
      0002E9 BE 53 F6         [24] 1119 	cjne	r6,#0x53,00101$
      0002EC BF 00 F3         [24] 1120 	cjne	r7,#0x00,00101$
                                   1121 ;	program.c:247: CCAPM3 = 0;
      0002EF 75 DD 00         [24] 1122 	mov	_CCAPM3,#0x00
                                   1123 ;	program.c:249: goto get_f;
                                   1124 ;	program.c:250: }
      0002F2 22               [24] 1125 	ret
                                   1126 ;------------------------------------------------------------
                                   1127 ;Allocation info for local variables in function 'pca_high_speed'
                                   1128 ;------------------------------------------------------------
                                   1129 ;	program.c:257: void pca_high_speed()
                                   1130 ;	-----------------------------------------
                                   1131 ;	 function pca_high_speed
                                   1132 ;	-----------------------------------------
      0002F3                       1133 _pca_high_speed:
                                   1134 ;	program.c:260: printf("Entering High Speed Toggle Mode, P1.5 \n\r");
      0002F3 74 0E            [12] 1135 	mov	a,#___str_9
      0002F5 C0 E0            [24] 1136 	push	acc
      0002F7 74 26            [12] 1137 	mov	a,#(___str_9 >> 8)
      0002F9 C0 E0            [24] 1138 	push	acc
      0002FB 74 80            [12] 1139 	mov	a,#0x80
      0002FD C0 E0            [24] 1140 	push	acc
      0002FF 12 1A A8         [24] 1141 	lcall	_printf
      000302 15 81            [12] 1142 	dec	sp
      000304 15 81            [12] 1143 	dec	sp
      000306 15 81            [12] 1144 	dec	sp
                                   1145 ;	program.c:261: CCAP2L = 255;
      000308 75 EC FF         [24] 1146 	mov	_CCAP2L,#0xff
                                   1147 ;	program.c:262: CCAP2H = 2;
      00030B 75 FC 02         [24] 1148 	mov	_CCAP2H,#0x02
                                   1149 ;	program.c:263: CCAPM2 = 0x4D;
      00030E 75 DC 4D         [24] 1150 	mov	_CCAPM2,#0x4d
                                   1151 ;	program.c:264: CMOD = CPS0;
      000311 75 D9 02         [24] 1152 	mov	_CMOD,#0x02
                                   1153 ;	program.c:265: CR = 1;
                                   1154 ;	assignBit
      000314 D2 DE            [12] 1155 	setb	_CR
                                   1156 ;	program.c:266: }
      000316 22               [24] 1157 	ret
                                   1158 ;------------------------------------------------------------
                                   1159 ;Allocation info for local variables in function 'pca_pwm'
                                   1160 ;------------------------------------------------------------
                                   1161 ;	program.c:273: void pca_pwm()
                                   1162 ;	-----------------------------------------
                                   1163 ;	 function pca_pwm
                                   1164 ;	-----------------------------------------
      000317                       1165 _pca_pwm:
                                   1166 ;	program.c:275: printf("Entering PWM Mode, 25 percent Duty Cycle P1.6\n\r");
      000317 74 37            [12] 1167 	mov	a,#___str_10
      000319 C0 E0            [24] 1168 	push	acc
      00031B 74 26            [12] 1169 	mov	a,#(___str_10 >> 8)
      00031D C0 E0            [24] 1170 	push	acc
      00031F 74 80            [12] 1171 	mov	a,#0x80
      000321 C0 E0            [24] 1172 	push	acc
      000323 12 1A A8         [24] 1173 	lcall	_printf
      000326 15 81            [12] 1174 	dec	sp
      000328 15 81            [12] 1175 	dec	sp
      00032A 15 81            [12] 1176 	dec	sp
                                   1177 ;	program.c:276: CCAP3L = 192;
      00032C 75 ED C0         [24] 1178 	mov	_CCAP3L,#0xc0
                                   1179 ;	program.c:277: CCAP3H = 192;
      00032F 75 FD C0         [24] 1180 	mov	_CCAP3H,#0xc0
                                   1181 ;	program.c:278: CCAPM3 = 0x42;
      000332 75 DD 42         [24] 1182 	mov	_CCAPM3,#0x42
                                   1183 ;	program.c:279: CMOD = CPS0;
      000335 75 D9 02         [24] 1184 	mov	_CMOD,#0x02
                                   1185 ;	program.c:280: CR = 1;
                                   1186 ;	assignBit
      000338 D2 DE            [12] 1187 	setb	_CR
                                   1188 ;	program.c:281: }
      00033A 22               [24] 1189 	ret
                                   1190 ;------------------------------------------------------------
                                   1191 ;Allocation info for local variables in function 'pca_watchdog'
                                   1192 ;------------------------------------------------------------
                                   1193 ;rec                       Allocated with name '_pca_watchdog_rec_65537_72'
                                   1194 ;------------------------------------------------------------
                                   1195 ;	program.c:288: void pca_watchdog()
                                   1196 ;	-----------------------------------------
                                   1197 ;	 function pca_watchdog
                                   1198 ;	-----------------------------------------
      00033B                       1199 _pca_watchdog:
                                   1200 ;	program.c:290: CCAP1L = 255;
      00033B 75 EB FF         [24] 1201 	mov	_CCAP1L,#0xff
                                   1202 ;	program.c:291: CCAP1H = 128;
      00033E 75 FB 80         [24] 1203 	mov	_CCAP1H,#0x80
                                   1204 ;	program.c:292: CCAPM1 = 0x49;
      000341 75 DB 49         [24] 1205 	mov	_CCAPM1,#0x49
                                   1206 ;	program.c:293: watchdog_flag = 1;
      000344 90 15 4E         [24] 1207 	mov	dptr,#_watchdog_flag
      000347 74 01            [12] 1208 	mov	a,#0x01
      000349 F0               [24] 1209 	movx	@dptr,a
      00034A E4               [12] 1210 	clr	a
      00034B A3               [24] 1211 	inc	dptr
      00034C F0               [24] 1212 	movx	@dptr,a
                                   1213 ;	program.c:294: printf("Enabling Watchdog Timer..\n\r");
      00034D 74 67            [12] 1214 	mov	a,#___str_11
      00034F C0 E0            [24] 1215 	push	acc
      000351 74 26            [12] 1216 	mov	a,#(___str_11 >> 8)
      000353 C0 E0            [24] 1217 	push	acc
      000355 74 80            [12] 1218 	mov	a,#0x80
      000357 C0 E0            [24] 1219 	push	acc
      000359 12 1A A8         [24] 1220 	lcall	_printf
      00035C 15 81            [12] 1221 	dec	sp
      00035E 15 81            [12] 1222 	dec	sp
      000360 15 81            [12] 1223 	dec	sp
                                   1224 ;	program.c:295: CCAP4L = 255;
      000362 75 EE FF         [24] 1225 	mov	_CCAP4L,#0xff
                                   1226 ;	program.c:296: CCAP4H = 255;
      000365 75 FE FF         [24] 1227 	mov	_CCAP4H,#0xff
                                   1228 ;	program.c:297: CMOD = WDTE;
      000368 75 D9 40         [24] 1229 	mov	_CMOD,#0x40
                                   1230 ;	program.c:298: CCAPM4 = 0x48;
      00036B 75 DE 48         [24] 1231 	mov	_CCAPM4,#0x48
                                   1232 ;	program.c:299: CR = 1;
                                   1233 ;	assignBit
      00036E D2 DE            [12] 1234 	setb	_CR
                                   1235 ;	program.c:301: printf("Currently Watchdog is being serviced\n\rPress 'S' to stop and generate a reset \n\r");
      000370 74 83            [12] 1236 	mov	a,#___str_12
      000372 C0 E0            [24] 1237 	push	acc
      000374 74 26            [12] 1238 	mov	a,#(___str_12 >> 8)
      000376 C0 E0            [24] 1239 	push	acc
      000378 74 80            [12] 1240 	mov	a,#0x80
      00037A C0 E0            [24] 1241 	push	acc
      00037C 12 1A A8         [24] 1242 	lcall	_printf
      00037F 15 81            [12] 1243 	dec	sp
      000381 15 81            [12] 1244 	dec	sp
      000383 15 81            [12] 1245 	dec	sp
                                   1246 ;	program.c:303: get_e:
      000385                       1247 00101$:
                                   1248 ;	program.c:304: rec = getchar();
      000385 12 15 57         [24] 1249 	lcall	_getchar
      000388 AE 82            [24] 1250 	mov	r6,dpl
      00038A AF 83            [24] 1251 	mov	r7,dph
                                   1252 ;	program.c:306: if (rec == 0x53)
      00038C BE 53 F6         [24] 1253 	cjne	r6,#0x53,00101$
      00038F BF 00 F3         [24] 1254 	cjne	r7,#0x00,00101$
                                   1255 ;	program.c:307: CCAPM1 = 0;
      000392 75 DB 00         [24] 1256 	mov	_CCAPM1,#0x00
                                   1257 ;	program.c:309: goto get_e;
                                   1258 ;	program.c:310: }
      000395 22               [24] 1259 	ret
                                   1260 ;------------------------------------------------------------
                                   1261 ;Allocation info for local variables in function 'hardware_watchdog'
                                   1262 ;------------------------------------------------------------
                                   1263 ;rec                       Allocated with name '_hardware_watchdog_rec_65537_74'
                                   1264 ;------------------------------------------------------------
                                   1265 ;	program.c:317: void hardware_watchdog()
                                   1266 ;	-----------------------------------------
                                   1267 ;	 function hardware_watchdog
                                   1268 ;	-----------------------------------------
      000396                       1269 _hardware_watchdog:
                                   1270 ;	program.c:319: CCAP2L = 255;
      000396 75 EC FF         [24] 1271 	mov	_CCAP2L,#0xff
                                   1272 ;	program.c:320: CCAP2H = 255;
      000399 75 FC FF         [24] 1273 	mov	_CCAP2H,#0xff
                                   1274 ;	program.c:321: CCAPM2 = 0x49;
      00039C 75 DC 49         [24] 1275 	mov	_CCAPM2,#0x49
                                   1276 ;	program.c:322: printf("Enabling Hardware Watchdog Timer..\n\r");
      00039F 74 D3            [12] 1277 	mov	a,#___str_13
      0003A1 C0 E0            [24] 1278 	push	acc
      0003A3 74 26            [12] 1279 	mov	a,#(___str_13 >> 8)
      0003A5 C0 E0            [24] 1280 	push	acc
      0003A7 74 80            [12] 1281 	mov	a,#0x80
      0003A9 C0 E0            [24] 1282 	push	acc
      0003AB 12 1A A8         [24] 1283 	lcall	_printf
      0003AE 15 81            [12] 1284 	dec	sp
      0003B0 15 81            [12] 1285 	dec	sp
      0003B2 15 81            [12] 1286 	dec	sp
                                   1287 ;	program.c:323: WDTPRG = 0x7;
      0003B4 75 A7 07         [24] 1288 	mov	_WDTPRG,#0x07
                                   1289 ;	program.c:324: CR = 1;
                                   1290 ;	assignBit
      0003B7 D2 DE            [12] 1291 	setb	_CR
                                   1292 ;	program.c:326: printf("Currently Hardware Watchdog is being serviced\n\rPress 'S' to stop watchdog service and generate a reset in ~1s \n\r");
      0003B9 74 F8            [12] 1293 	mov	a,#___str_14
      0003BB C0 E0            [24] 1294 	push	acc
      0003BD 74 26            [12] 1295 	mov	a,#(___str_14 >> 8)
      0003BF C0 E0            [24] 1296 	push	acc
      0003C1 74 80            [12] 1297 	mov	a,#0x80
      0003C3 C0 E0            [24] 1298 	push	acc
      0003C5 12 1A A8         [24] 1299 	lcall	_printf
      0003C8 15 81            [12] 1300 	dec	sp
      0003CA 15 81            [12] 1301 	dec	sp
      0003CC 15 81            [12] 1302 	dec	sp
                                   1303 ;	program.c:328: get_e:
      0003CE                       1304 00101$:
                                   1305 ;	program.c:329: rec = getchar();
      0003CE 12 15 57         [24] 1306 	lcall	_getchar
      0003D1 AE 82            [24] 1307 	mov	r6,dpl
      0003D3 AF 83            [24] 1308 	mov	r7,dph
                                   1309 ;	program.c:331: if (rec == 0x53)
      0003D5 BE 53 F6         [24] 1310 	cjne	r6,#0x53,00101$
      0003D8 BF 00 F3         [24] 1311 	cjne	r7,#0x00,00101$
                                   1312 ;	program.c:332: CCAPM2 = 0;
      0003DB 75 DC 00         [24] 1313 	mov	_CCAPM2,#0x00
                                   1314 ;	program.c:334: goto get_e;
                                   1315 ;	program.c:335: }
      0003DE 22               [24] 1316 	ret
                                   1317 ;------------------------------------------------------------
                                   1318 ;Allocation info for local variables in function 'pca_idle'
                                   1319 ;------------------------------------------------------------
                                   1320 ;	program.c:342: void pca_idle()
                                   1321 ;	-----------------------------------------
                                   1322 ;	 function pca_idle
                                   1323 ;	-----------------------------------------
      0003DF                       1324 _pca_idle:
                                   1325 ;	program.c:344: pca_pwm();
      0003DF 12 03 17         [24] 1326 	lcall	_pca_pwm
                                   1327 ;	program.c:345: printf("Entering Idle, Will Exit on external interrupt 0\n\r");
      0003E2 74 69            [12] 1328 	mov	a,#___str_15
      0003E4 C0 E0            [24] 1329 	push	acc
      0003E6 74 27            [12] 1330 	mov	a,#(___str_15 >> 8)
      0003E8 C0 E0            [24] 1331 	push	acc
      0003EA 74 80            [12] 1332 	mov	a,#0x80
      0003EC C0 E0            [24] 1333 	push	acc
      0003EE 12 1A A8         [24] 1334 	lcall	_printf
      0003F1 15 81            [12] 1335 	dec	sp
      0003F3 15 81            [12] 1336 	dec	sp
      0003F5 15 81            [12] 1337 	dec	sp
                                   1338 ;	program.c:346: EX0 = 1;
                                   1339 ;	assignBit
      0003F7 D2 A8            [12] 1340 	setb	_EX0
                                   1341 ;	program.c:347: PCON = IDL;
      0003F9 75 87 01         [24] 1342 	mov	_PCON,#0x01
                                   1343 ;	program.c:348: printf("Woke up from Idle/Power down, going to main menu \n\r");
      0003FC 74 9C            [12] 1344 	mov	a,#___str_16
      0003FE C0 E0            [24] 1345 	push	acc
      000400 74 27            [12] 1346 	mov	a,#(___str_16 >> 8)
      000402 C0 E0            [24] 1347 	push	acc
      000404 74 80            [12] 1348 	mov	a,#0x80
      000406 C0 E0            [24] 1349 	push	acc
      000408 12 1A A8         [24] 1350 	lcall	_printf
      00040B 15 81            [12] 1351 	dec	sp
      00040D 15 81            [12] 1352 	dec	sp
      00040F 15 81            [12] 1353 	dec	sp
                                   1354 ;	program.c:349: main_menu();
                                   1355 ;	program.c:350: }
      000411 02 04 7B         [24] 1356 	ljmp	_main_menu
                                   1357 ;------------------------------------------------------------
                                   1358 ;Allocation info for local variables in function 'pca_pdown'
                                   1359 ;------------------------------------------------------------
                                   1360 ;	program.c:357: void pca_pdown()
                                   1361 ;	-----------------------------------------
                                   1362 ;	 function pca_pdown
                                   1363 ;	-----------------------------------------
      000414                       1364 _pca_pdown:
                                   1365 ;	program.c:359: pca_pwm();
      000414 12 03 17         [24] 1366 	lcall	_pca_pwm
                                   1367 ;	program.c:360: printf("Entering power down, Will Exit on external interrupt 0\n\r");
      000417 74 D0            [12] 1368 	mov	a,#___str_17
      000419 C0 E0            [24] 1369 	push	acc
      00041B 74 27            [12] 1370 	mov	a,#(___str_17 >> 8)
      00041D C0 E0            [24] 1371 	push	acc
      00041F 74 80            [12] 1372 	mov	a,#0x80
      000421 C0 E0            [24] 1373 	push	acc
      000423 12 1A A8         [24] 1374 	lcall	_printf
      000426 15 81            [12] 1375 	dec	sp
      000428 15 81            [12] 1376 	dec	sp
      00042A 15 81            [12] 1377 	dec	sp
                                   1378 ;	program.c:361: EX0 = 1;
                                   1379 ;	assignBit
      00042C D2 A8            [12] 1380 	setb	_EX0
                                   1381 ;	program.c:362: PCON = PD;
      00042E 75 87 02         [24] 1382 	mov	_PCON,#0x02
                                   1383 ;	program.c:363: printf("Woke up from Idle/Power down, going to main menu \n\r");
      000431 74 9C            [12] 1384 	mov	a,#___str_16
      000433 C0 E0            [24] 1385 	push	acc
      000435 74 27            [12] 1386 	mov	a,#(___str_16 >> 8)
      000437 C0 E0            [24] 1387 	push	acc
      000439 74 80            [12] 1388 	mov	a,#0x80
      00043B C0 E0            [24] 1389 	push	acc
      00043D 12 1A A8         [24] 1390 	lcall	_printf
      000440 15 81            [12] 1391 	dec	sp
      000442 15 81            [12] 1392 	dec	sp
      000444 15 81            [12] 1393 	dec	sp
                                   1394 ;	program.c:364: main_menu();
                                   1395 ;	program.c:365: }
      000446 02 04 7B         [24] 1396 	ljmp	_main_menu
                                   1397 ;------------------------------------------------------------
                                   1398 ;Allocation info for local variables in function 'fclk_lowest'
                                   1399 ;------------------------------------------------------------
                                   1400 ;	program.c:372: void fclk_lowest()
                                   1401 ;	-----------------------------------------
                                   1402 ;	 function fclk_lowest
                                   1403 ;	-----------------------------------------
      000449                       1404 _fclk_lowest:
                                   1405 ;	program.c:374: printf("Changing Clock prescalar to go to lowest frequency in X2 Mode..\n\r");
      000449 74 09            [12] 1406 	mov	a,#___str_18
      00044B C0 E0            [24] 1407 	push	acc
      00044D 74 28            [12] 1408 	mov	a,#(___str_18 >> 8)
      00044F C0 E0            [24] 1409 	push	acc
      000451 74 80            [12] 1410 	mov	a,#0x80
      000453 C0 E0            [24] 1411 	push	acc
      000455 12 1A A8         [24] 1412 	lcall	_printf
      000458 15 81            [12] 1413 	dec	sp
      00045A 15 81            [12] 1414 	dec	sp
      00045C 15 81            [12] 1415 	dec	sp
                                   1416 ;	program.c:375: printf("This UART Session will stop working...\n\r");
      00045E 74 4B            [12] 1417 	mov	a,#___str_19
      000460 C0 E0            [24] 1418 	push	acc
      000462 74 28            [12] 1419 	mov	a,#(___str_19 >> 8)
      000464 C0 E0            [24] 1420 	push	acc
      000466 74 80            [12] 1421 	mov	a,#0x80
      000468 C0 E0            [24] 1422 	push	acc
      00046A 12 1A A8         [24] 1423 	lcall	_printf
      00046D 15 81            [12] 1424 	dec	sp
      00046F 15 81            [12] 1425 	dec	sp
      000471 15 81            [12] 1426 	dec	sp
                                   1427 ;	program.c:376: EX0 = 1;
                                   1428 ;	assignBit
      000473 D2 A8            [12] 1429 	setb	_EX0
                                   1430 ;	program.c:377: CKRL = 0;
      000475 75 97 00         [24] 1431 	mov	_CKRL,#0x00
                                   1432 ;	program.c:378: main_menu();
                                   1433 ;	program.c:379: }
      000478 02 04 7B         [24] 1434 	ljmp	_main_menu
                                   1435 ;------------------------------------------------------------
                                   1436 ;Allocation info for local variables in function 'main_menu'
                                   1437 ;------------------------------------------------------------
                                   1438 ;inp                       Allocated with name '_main_menu_inp_65537_79'
                                   1439 ;------------------------------------------------------------
                                   1440 ;	program.c:386: void main_menu()
                                   1441 ;	-----------------------------------------
                                   1442 ;	 function main_menu
                                   1443 ;	-----------------------------------------
      00047B                       1444 _main_menu:
                                   1445 ;	program.c:388: printf("\n\n\r^^^^^^^^^^^^^^^^^^^-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ \n\n\r");
      00047B 74 74            [12] 1446 	mov	a,#___str_20
      00047D C0 E0            [24] 1447 	push	acc
      00047F 74 28            [12] 1448 	mov	a,#(___str_20 >> 8)
      000481 C0 E0            [24] 1449 	push	acc
      000483 74 80            [12] 1450 	mov	a,#0x80
      000485 C0 E0            [24] 1451 	push	acc
      000487 12 1A A8         [24] 1452 	lcall	_printf
      00048A 15 81            [12] 1453 	dec	sp
      00048C 15 81            [12] 1454 	dec	sp
      00048E 15 81            [12] 1455 	dec	sp
                                   1456 ;	program.c:389: printf("'H' -> Enter Heap Demo Mode \n\r");
      000490 74 AF            [12] 1457 	mov	a,#___str_21
      000492 C0 E0            [24] 1458 	push	acc
      000494 74 28            [12] 1459 	mov	a,#(___str_21 >> 8)
      000496 C0 E0            [24] 1460 	push	acc
      000498 74 80            [12] 1461 	mov	a,#0x80
      00049A C0 E0            [24] 1462 	push	acc
      00049C 12 1A A8         [24] 1463 	lcall	_printf
      00049F 15 81            [12] 1464 	dec	sp
      0004A1 15 81            [12] 1465 	dec	sp
      0004A3 15 81            [12] 1466 	dec	sp
                                   1467 ;	program.c:390: printf("'P' -> Enter PCA Demo Mode \n\r");
      0004A5 74 CE            [12] 1468 	mov	a,#___str_22
      0004A7 C0 E0            [24] 1469 	push	acc
      0004A9 74 28            [12] 1470 	mov	a,#(___str_22 >> 8)
      0004AB C0 E0            [24] 1471 	push	acc
      0004AD 74 80            [12] 1472 	mov	a,#0x80
      0004AF C0 E0            [24] 1473 	push	acc
      0004B1 12 1A A8         [24] 1474 	lcall	_printf
      0004B4 15 81            [12] 1475 	dec	sp
      0004B6 15 81            [12] 1476 	dec	sp
      0004B8 15 81            [12] 1477 	dec	sp
                                   1478 ;	program.c:391: printf("'A' -> Assembly C Mix \n\r");
      0004BA 74 EC            [12] 1479 	mov	a,#___str_23
      0004BC C0 E0            [24] 1480 	push	acc
      0004BE 74 28            [12] 1481 	mov	a,#(___str_23 >> 8)
      0004C0 C0 E0            [24] 1482 	push	acc
      0004C2 74 80            [12] 1483 	mov	a,#0x80
      0004C4 C0 E0            [24] 1484 	push	acc
      0004C6 12 1A A8         [24] 1485 	lcall	_printf
      0004C9 15 81            [12] 1486 	dec	sp
      0004CB 15 81            [12] 1487 	dec	sp
      0004CD 15 81            [12] 1488 	dec	sp
                                   1489 ;	program.c:392: printf("'E' -> EEPROM Mode \n\r");
      0004CF 74 05            [12] 1490 	mov	a,#___str_24
      0004D1 C0 E0            [24] 1491 	push	acc
      0004D3 74 29            [12] 1492 	mov	a,#(___str_24 >> 8)
      0004D5 C0 E0            [24] 1493 	push	acc
      0004D7 74 80            [12] 1494 	mov	a,#0x80
      0004D9 C0 E0            [24] 1495 	push	acc
      0004DB 12 1A A8         [24] 1496 	lcall	_printf
      0004DE 15 81            [12] 1497 	dec	sp
      0004E0 15 81            [12] 1498 	dec	sp
      0004E2 15 81            [12] 1499 	dec	sp
                                   1500 ;	program.c:395: wrong_choice:
      0004E4                       1501 00101$:
                                   1502 ;	program.c:396: printf("Please make a valid choice \n\r");
      0004E4 74 1E            [12] 1503 	mov	a,#___str_2
      0004E6 C0 E0            [24] 1504 	push	acc
      0004E8 74 25            [12] 1505 	mov	a,#(___str_2 >> 8)
      0004EA C0 E0            [24] 1506 	push	acc
      0004EC 74 80            [12] 1507 	mov	a,#0x80
      0004EE C0 E0            [24] 1508 	push	acc
      0004F0 12 1A A8         [24] 1509 	lcall	_printf
      0004F3 15 81            [12] 1510 	dec	sp
      0004F5 15 81            [12] 1511 	dec	sp
      0004F7 15 81            [12] 1512 	dec	sp
                                   1513 ;	program.c:397: inp = getchar();
      0004F9 12 15 57         [24] 1514 	lcall	_getchar
      0004FC AE 82            [24] 1515 	mov	r6,dpl
      0004FE AF 83            [24] 1516 	mov	r7,dph
                                   1517 ;	program.c:398: if (inp == 0x48)
      000500 BE 48 06         [24] 1518 	cjne	r6,#0x48,00112$
      000503 BF 00 03         [24] 1519 	cjne	r7,#0x00,00112$
                                   1520 ;	program.c:399: user_interface_heap();
      000506 02 00 B5         [24] 1521 	ljmp	_user_interface_heap
      000509                       1522 00112$:
                                   1523 ;	program.c:400: else if (inp == 0x50)
      000509 BE 50 06         [24] 1524 	cjne	r6,#0x50,00109$
      00050C BF 00 03         [24] 1525 	cjne	r7,#0x00,00109$
                                   1526 ;	program.c:401: user_interface_PCA();
      00050F 02 00 C4         [24] 1527 	ljmp	_user_interface_PCA
      000512                       1528 00109$:
                                   1529 ;	program.c:402: else if (inp == 0x41)
      000512 BE 41 06         [24] 1530 	cjne	r6,#0x41,00106$
      000515 BF 00 03         [24] 1531 	cjne	r7,#0x00,00106$
                                   1532 ;	program.c:403: asm_clang();
      000518 02 06 12         [24] 1533 	ljmp	_asm_clang
      00051B                       1534 00106$:
                                   1535 ;	program.c:404: else if (inp == 0x45)
      00051B BE 45 C6         [24] 1536 	cjne	r6,#0x45,00101$
      00051E BF 00 C3         [24] 1537 	cjne	r7,#0x00,00101$
                                   1538 ;	program.c:405: i2c_testasm();
                                   1539 ;	program.c:407: goto wrong_choice;
                                   1540 ;	program.c:408: }
      000521 02 05 91         [24] 1541 	ljmp	_i2c_testasm
                                   1542 ;------------------------------------------------------------
                                   1543 ;Allocation info for local variables in function 'i2c_write_random'
                                   1544 ;------------------------------------------------------------
                                   1545 ;address                   Allocated with name '_i2c_write_random_PARM_2'
                                   1546 ;value                     Allocated with name '_i2c_write_random_PARM_3'
                                   1547 ;block                     Allocated with name '_i2c_write_random_block_65536_80'
                                   1548 ;k                         Allocated with name '_i2c_write_random_k_131072_82'
                                   1549 ;l                         Allocated with name '_i2c_write_random_l_262144_84'
                                   1550 ;------------------------------------------------------------
                                   1551 ;	program.c:410: void i2c_write_random(unsigned char block, unsigned char address, unsigned char value)
                                   1552 ;	-----------------------------------------
                                   1553 ;	 function i2c_write_random
                                   1554 ;	-----------------------------------------
      000524                       1555 _i2c_write_random:
      000524 E5 82            [12] 1556 	mov	a,dpl
      000526 90 01 39         [24] 1557 	mov	dptr,#_i2c_write_random_block_65536_80
      000529 F0               [24] 1558 	movx	@dptr,a
                                   1559 ;	program.c:412: i2c_write_init(block);
      00052A E0               [24] 1560 	movx	a,@dptr
      00052B F5 82            [12] 1561 	mov	dpl,a
      00052D 12 16 14         [24] 1562 	lcall	_i2c_write_init
                                   1563 ;	program.c:413: i2c_addr(address);
      000530 90 01 37         [24] 1564 	mov	dptr,#_i2c_write_random_PARM_2
      000533 E0               [24] 1565 	movx	a,@dptr
      000534 F5 82            [12] 1566 	mov	dpl,a
      000536 12 16 60         [24] 1567 	lcall	_i2c_addr
                                   1568 ;	program.c:414: i2c_write_val(value);
      000539 90 01 38         [24] 1569 	mov	dptr,#_i2c_write_random_PARM_3
      00053C E0               [24] 1570 	movx	a,@dptr
      00053D F5 82            [12] 1571 	mov	dpl,a
      00053F 12 16 68         [24] 1572 	lcall	_i2c_write_val
                                   1573 ;	program.c:415: for (int k = 0; k < 90; k++)
      000542 7E 00            [12] 1574 	mov	r6,#0x00
      000544 7F 00            [12] 1575 	mov	r7,#0x00
      000546                       1576 00107$:
      000546 C3               [12] 1577 	clr	c
      000547 EE               [12] 1578 	mov	a,r6
      000548 94 5A            [12] 1579 	subb	a,#0x5a
      00054A EF               [12] 1580 	mov	a,r7
      00054B 64 80            [12] 1581 	xrl	a,#0x80
      00054D 94 80            [12] 1582 	subb	a,#0x80
      00054F 50 1D            [24] 1583 	jnc	00109$
                                   1584 ;	program.c:417: for (int l = 0; l < 10; l++)
      000551 7C 00            [12] 1585 	mov	r4,#0x00
      000553 7D 00            [12] 1586 	mov	r5,#0x00
      000555                       1587 00104$:
      000555 C3               [12] 1588 	clr	c
      000556 EC               [12] 1589 	mov	a,r4
      000557 94 0A            [12] 1590 	subb	a,#0x0a
      000559 ED               [12] 1591 	mov	a,r5
      00055A 64 80            [12] 1592 	xrl	a,#0x80
      00055C 94 80            [12] 1593 	subb	a,#0x80
      00055E 50 07            [24] 1594 	jnc	00108$
      000560 0C               [12] 1595 	inc	r4
      000561 BC 00 F1         [24] 1596 	cjne	r4,#0x00,00104$
      000564 0D               [12] 1597 	inc	r5
      000565 80 EE            [24] 1598 	sjmp	00104$
      000567                       1599 00108$:
                                   1600 ;	program.c:415: for (int k = 0; k < 90; k++)
      000567 0E               [12] 1601 	inc	r6
      000568 BE 00 DB         [24] 1602 	cjne	r6,#0x00,00107$
      00056B 0F               [12] 1603 	inc	r7
      00056C 80 D8            [24] 1604 	sjmp	00107$
      00056E                       1605 00109$:
                                   1606 ;	program.c:421: }
      00056E 22               [24] 1607 	ret
                                   1608 ;------------------------------------------------------------
                                   1609 ;Allocation info for local variables in function 'i2c_read_random'
                                   1610 ;------------------------------------------------------------
                                   1611 ;address                   Allocated with name '_i2c_read_random_PARM_2'
                                   1612 ;block                     Allocated with name '_i2c_read_random_block_65536_86'
                                   1613 ;a                         Allocated with name '_i2c_read_random_a_65537_88'
                                   1614 ;------------------------------------------------------------
                                   1615 ;	program.c:423: unsigned char i2c_read_random(unsigned char block, unsigned char address)
                                   1616 ;	-----------------------------------------
                                   1617 ;	 function i2c_read_random
                                   1618 ;	-----------------------------------------
      00056F                       1619 _i2c_read_random:
      00056F E5 82            [12] 1620 	mov	a,dpl
      000571 90 01 3B         [24] 1621 	mov	dptr,#_i2c_read_random_block_65536_86
      000574 F0               [24] 1622 	movx	@dptr,a
                                   1623 ;	program.c:425: i2c_write_init(block);
      000575 E0               [24] 1624 	movx	a,@dptr
      000576 FF               [12] 1625 	mov	r7,a
      000577 F5 82            [12] 1626 	mov	dpl,a
      000579 C0 07            [24] 1627 	push	ar7
      00057B 12 16 14         [24] 1628 	lcall	_i2c_write_init
                                   1629 ;	program.c:426: i2c_addr(address);
      00057E 90 01 3A         [24] 1630 	mov	dptr,#_i2c_read_random_PARM_2
      000581 E0               [24] 1631 	movx	a,@dptr
      000582 F5 82            [12] 1632 	mov	dpl,a
      000584 12 16 60         [24] 1633 	lcall	_i2c_addr
      000587 D0 07            [24] 1634 	pop	ar7
                                   1635 ;	program.c:427: i2c_read_init(block);
      000589 8F 82            [24] 1636 	mov	dpl,r7
      00058B 12 16 22         [24] 1637 	lcall	_i2c_read_init
                                   1638 ;	program.c:428: unsigned char a = i2c_read_val();
                                   1639 ;	program.c:429: return a;
                                   1640 ;	program.c:430: }
      00058E 02 16 30         [24] 1641 	ljmp	_i2c_read_val
                                   1642 ;------------------------------------------------------------
                                   1643 ;Allocation info for local variables in function 'i2c_testasm'
                                   1644 ;------------------------------------------------------------
                                   1645 ;i                         Allocated with name '_i2c_testasm_i_131072_90'
                                   1646 ;r                         Allocated with name '_i2c_testasm_r_65537_92'
                                   1647 ;k                         Allocated with name '_i2c_testasm_k_131073_93'
                                   1648 ;a                         Allocated with name '_i2c_testasm_a_196609_94'
                                   1649 ;------------------------------------------------------------
                                   1650 ;	program.c:432: void i2c_testasm()
                                   1651 ;	-----------------------------------------
                                   1652 ;	 function i2c_testasm
                                   1653 ;	-----------------------------------------
      000591                       1654 _i2c_testasm:
                                   1655 ;	program.c:434: for(int i = 0; i <256;i++){
      000591 7E 00            [12] 1656 	mov	r6,#0x00
      000593 7F 00            [12] 1657 	mov	r7,#0x00
      000595                       1658 00107$:
      000595 C3               [12] 1659 	clr	c
      000596 EF               [12] 1660 	mov	a,r7
      000597 64 80            [12] 1661 	xrl	a,#0x80
      000599 94 81            [12] 1662 	subb	a,#0x81
      00059B 50 21            [24] 1663 	jnc	00101$
                                   1664 ;	program.c:435: i2c_write_random(0, i, i);
      00059D 8E 05            [24] 1665 	mov	ar5,r6
      00059F 90 01 37         [24] 1666 	mov	dptr,#_i2c_write_random_PARM_2
      0005A2 ED               [12] 1667 	mov	a,r5
      0005A3 F0               [24] 1668 	movx	@dptr,a
      0005A4 90 01 38         [24] 1669 	mov	dptr,#_i2c_write_random_PARM_3
      0005A7 ED               [12] 1670 	mov	a,r5
      0005A8 F0               [24] 1671 	movx	@dptr,a
      0005A9 75 82 00         [24] 1672 	mov	dpl,#0x00
      0005AC C0 07            [24] 1673 	push	ar7
      0005AE C0 06            [24] 1674 	push	ar6
      0005B0 12 05 24         [24] 1675 	lcall	_i2c_write_random
      0005B3 D0 06            [24] 1676 	pop	ar6
      0005B5 D0 07            [24] 1677 	pop	ar7
                                   1678 ;	program.c:434: for(int i = 0; i <256;i++){
      0005B7 0E               [12] 1679 	inc	r6
      0005B8 BE 00 DA         [24] 1680 	cjne	r6,#0x00,00107$
      0005BB 0F               [12] 1681 	inc	r7
      0005BC 80 D7            [24] 1682 	sjmp	00107$
      0005BE                       1683 00101$:
                                   1684 ;	program.c:439: unsigned char r = getchar();
      0005BE 12 15 57         [24] 1685 	lcall	_getchar
                                   1686 ;	program.c:441: for(int k = 0; k <256;k++){
      0005C1 7E 00            [12] 1687 	mov	r6,#0x00
      0005C3 7F 00            [12] 1688 	mov	r7,#0x00
      0005C5                       1689 00110$:
      0005C5 C3               [12] 1690 	clr	c
      0005C6 EF               [12] 1691 	mov	a,r7
      0005C7 64 80            [12] 1692 	xrl	a,#0x80
      0005C9 94 81            [12] 1693 	subb	a,#0x81
      0005CB 50 43            [24] 1694 	jnc	00104$
                                   1695 ;	program.c:442: unsigned char a = i2c_read_random(0, k);
      0005CD 90 01 3A         [24] 1696 	mov	dptr,#_i2c_read_random_PARM_2
      0005D0 EE               [12] 1697 	mov	a,r6
      0005D1 F0               [24] 1698 	movx	@dptr,a
      0005D2 75 82 00         [24] 1699 	mov	dpl,#0x00
      0005D5 C0 07            [24] 1700 	push	ar7
      0005D7 C0 06            [24] 1701 	push	ar6
      0005D9 12 05 6F         [24] 1702 	lcall	_i2c_read_random
      0005DC AD 82            [24] 1703 	mov	r5,dpl
      0005DE D0 06            [24] 1704 	pop	ar6
      0005E0 D0 07            [24] 1705 	pop	ar7
                                   1706 ;	program.c:443: printf("loc ->%d val is -> %x \n\r", k,a);
      0005E2 7C 00            [12] 1707 	mov	r4,#0x00
      0005E4 C0 07            [24] 1708 	push	ar7
      0005E6 C0 06            [24] 1709 	push	ar6
      0005E8 C0 05            [24] 1710 	push	ar5
      0005EA C0 04            [24] 1711 	push	ar4
      0005EC C0 06            [24] 1712 	push	ar6
      0005EE C0 07            [24] 1713 	push	ar7
      0005F0 74 1B            [12] 1714 	mov	a,#___str_25
      0005F2 C0 E0            [24] 1715 	push	acc
      0005F4 74 29            [12] 1716 	mov	a,#(___str_25 >> 8)
      0005F6 C0 E0            [24] 1717 	push	acc
      0005F8 74 80            [12] 1718 	mov	a,#0x80
      0005FA C0 E0            [24] 1719 	push	acc
      0005FC 12 1A A8         [24] 1720 	lcall	_printf
      0005FF E5 81            [12] 1721 	mov	a,sp
      000601 24 F9            [12] 1722 	add	a,#0xf9
      000603 F5 81            [12] 1723 	mov	sp,a
      000605 D0 06            [24] 1724 	pop	ar6
      000607 D0 07            [24] 1725 	pop	ar7
                                   1726 ;	program.c:441: for(int k = 0; k <256;k++){
      000609 0E               [12] 1727 	inc	r6
                                   1728 ;	program.c:447: while (1)
      00060A BE 00 B8         [24] 1729 	cjne	r6,#0x00,00110$
      00060D 0F               [12] 1730 	inc	r7
      00060E 80 B5            [24] 1731 	sjmp	00110$
      000610                       1732 00104$:
                                   1733 ;	program.c:450: }
      000610 80 FE            [24] 1734 	sjmp	00104$
                                   1735 ;------------------------------------------------------------
                                   1736 ;Allocation info for local variables in function 'asm_clang'
                                   1737 ;------------------------------------------------------------
                                   1738 ;num1                      Allocated with name '_asm_clang_num1_65537_97'
                                   1739 ;num2                      Allocated with name '_asm_clang_num2_65538_98'
                                   1740 ;num3                      Allocated with name '_asm_clang_num3_65539_99'
                                   1741 ;------------------------------------------------------------
                                   1742 ;	program.c:457: void asm_clang()
                                   1743 ;	-----------------------------------------
                                   1744 ;	 function asm_clang
                                   1745 ;	-----------------------------------------
      000612                       1746 _asm_clang:
                                   1747 ;	program.c:459: printf("\n\r Give param 1, 8bit \n\r");
      000612 74 34            [12] 1748 	mov	a,#___str_26
      000614 C0 E0            [24] 1749 	push	acc
      000616 74 29            [12] 1750 	mov	a,#(___str_26 >> 8)
      000618 C0 E0            [24] 1751 	push	acc
      00061A 74 80            [12] 1752 	mov	a,#0x80
      00061C C0 E0            [24] 1753 	push	acc
      00061E 12 1A A8         [24] 1754 	lcall	_printf
      000621 15 81            [12] 1755 	dec	sp
      000623 15 81            [12] 1756 	dec	sp
      000625 15 81            [12] 1757 	dec	sp
                                   1758 ;	program.c:460: unsigned char num1 = get_number(3);
      000627 90 00 03         [24] 1759 	mov	dptr,#0x0003
      00062A 12 13 E3         [24] 1760 	lcall	_get_number
      00062D AE 82            [24] 1761 	mov	r6,dpl
                                   1762 ;	program.c:461: printf("\n\r Give param 2, 8bit \n\r");
      00062F C0 06            [24] 1763 	push	ar6
      000631 74 4D            [12] 1764 	mov	a,#___str_27
      000633 C0 E0            [24] 1765 	push	acc
      000635 74 29            [12] 1766 	mov	a,#(___str_27 >> 8)
      000637 C0 E0            [24] 1767 	push	acc
      000639 74 80            [12] 1768 	mov	a,#0x80
      00063B C0 E0            [24] 1769 	push	acc
      00063D 12 1A A8         [24] 1770 	lcall	_printf
      000640 15 81            [12] 1771 	dec	sp
      000642 15 81            [12] 1772 	dec	sp
      000644 15 81            [12] 1773 	dec	sp
                                   1774 ;	program.c:462: unsigned char num2 = get_number(3);
      000646 90 00 03         [24] 1775 	mov	dptr,#0x0003
      000649 12 13 E3         [24] 1776 	lcall	_get_number
      00064C AD 82            [24] 1777 	mov	r5,dpl
                                   1778 ;	program.c:463: printf("\n\r Give param 3, 8bit \n\r");
      00064E C0 05            [24] 1779 	push	ar5
      000650 74 66            [12] 1780 	mov	a,#___str_28
      000652 C0 E0            [24] 1781 	push	acc
      000654 74 29            [12] 1782 	mov	a,#(___str_28 >> 8)
      000656 C0 E0            [24] 1783 	push	acc
      000658 74 80            [12] 1784 	mov	a,#0x80
      00065A C0 E0            [24] 1785 	push	acc
      00065C 12 1A A8         [24] 1786 	lcall	_printf
      00065F 15 81            [12] 1787 	dec	sp
      000661 15 81            [12] 1788 	dec	sp
      000663 15 81            [12] 1789 	dec	sp
                                   1790 ;	program.c:464: unsigned char num3 = get_number(3);
      000665 90 00 03         [24] 1791 	mov	dptr,#0x0003
      000668 12 13 E3         [24] 1792 	lcall	_get_number
      00066B AC 82            [24] 1793 	mov	r4,dpl
      00066D D0 05            [24] 1794 	pop	ar5
      00066F D0 06            [24] 1795 	pop	ar6
                                   1796 ;	program.c:466: printf("\n\r RESULT-> param3<Mod>param2 * param1 = %d \n\r", asmtest(num1, num2, num3));
      000671 90 00 1A         [24] 1797 	mov	dptr,#_asmtest_PARM_2
      000674 ED               [12] 1798 	mov	a,r5
      000675 F0               [24] 1799 	movx	@dptr,a
      000676 90 00 1B         [24] 1800 	mov	dptr,#_asmtest_PARM_3
      000679 EC               [12] 1801 	mov	a,r4
      00067A F0               [24] 1802 	movx	@dptr,a
      00067B 8E 82            [24] 1803 	mov	dpl,r6
      00067D 12 15 E4         [24] 1804 	lcall	_asmtest
      000680 AF 82            [24] 1805 	mov	r7,dpl
      000682 7E 00            [12] 1806 	mov	r6,#0x00
      000684 C0 07            [24] 1807 	push	ar7
      000686 C0 06            [24] 1808 	push	ar6
      000688 74 7F            [12] 1809 	mov	a,#___str_29
      00068A C0 E0            [24] 1810 	push	acc
      00068C 74 29            [12] 1811 	mov	a,#(___str_29 >> 8)
      00068E C0 E0            [24] 1812 	push	acc
      000690 74 80            [12] 1813 	mov	a,#0x80
      000692 C0 E0            [24] 1814 	push	acc
      000694 12 1A A8         [24] 1815 	lcall	_printf
      000697 E5 81            [12] 1816 	mov	a,sp
      000699 24 FB            [12] 1817 	add	a,#0xfb
      00069B F5 81            [12] 1818 	mov	sp,a
                                   1819 ;	program.c:467: printf("\n\r Going back to main menu.. \n\r");
      00069D 74 AE            [12] 1820 	mov	a,#___str_30
      00069F C0 E0            [24] 1821 	push	acc
      0006A1 74 29            [12] 1822 	mov	a,#(___str_30 >> 8)
      0006A3 C0 E0            [24] 1823 	push	acc
      0006A5 74 80            [12] 1824 	mov	a,#0x80
      0006A7 C0 E0            [24] 1825 	push	acc
      0006A9 12 1A A8         [24] 1826 	lcall	_printf
      0006AC 15 81            [12] 1827 	dec	sp
      0006AE 15 81            [12] 1828 	dec	sp
      0006B0 15 81            [12] 1829 	dec	sp
                                   1830 ;	program.c:468: main_menu();
                                   1831 ;	program.c:469: }
      0006B2 02 04 7B         [24] 1832 	ljmp	_main_menu
                                   1833 ;------------------------------------------------------------
                                   1834 ;Allocation info for local variables in function 'at_clear_all_buffers'
                                   1835 ;------------------------------------------------------------
                                   1836 ;i                         Allocated with name '_at_clear_all_buffers_i_131072_101'
                                   1837 ;------------------------------------------------------------
                                   1838 ;	program.c:477: void at_clear_all_buffers()
                                   1839 ;	-----------------------------------------
                                   1840 ;	 function at_clear_all_buffers
                                   1841 ;	-----------------------------------------
      0006B5                       1842 _at_clear_all_buffers:
                                   1843 ;	program.c:479: DEBUGPORT(0x03);
      0006B5 75 82 03         [24] 1844 	mov	dpl,#0x03
      0006B8 12 15 93         [24] 1845 	lcall	_dataout
                                   1846 ;	program.c:480: for (int i = 0; i < program_stats.total_buffers; i++)
      0006BB 7E 00            [12] 1847 	mov	r6,#0x00
      0006BD 7F 00            [12] 1848 	mov	r7,#0x00
      0006BF                       1849 00103$:
      0006BF 90 00 09         [24] 1850 	mov	dptr,#(_program_stats + 0x0008)
      0006C2 E0               [24] 1851 	movx	a,@dptr
      0006C3 FC               [12] 1852 	mov	r4,a
      0006C4 A3               [24] 1853 	inc	dptr
      0006C5 E0               [24] 1854 	movx	a,@dptr
      0006C6 FD               [12] 1855 	mov	r5,a
      0006C7 C3               [12] 1856 	clr	c
      0006C8 EE               [12] 1857 	mov	a,r6
      0006C9 9C               [12] 1858 	subb	a,r4
      0006CA EF               [12] 1859 	mov	a,r7
      0006CB 64 80            [12] 1860 	xrl	a,#0x80
      0006CD 8D F0            [24] 1861 	mov	b,r5
      0006CF 63 F0 80         [24] 1862 	xrl	b,#0x80
      0006D2 95 F0            [12] 1863 	subb	a,b
      0006D4 50 61            [24] 1864 	jnc	00101$
                                   1865 ;	program.c:482: free(buffers_array[i].buffer_start);
      0006D6 90 15 14         [24] 1866 	mov	dptr,#__mulint_PARM_2
      0006D9 EE               [12] 1867 	mov	a,r6
      0006DA F0               [24] 1868 	movx	@dptr,a
      0006DB EF               [12] 1869 	mov	a,r7
      0006DC A3               [24] 1870 	inc	dptr
      0006DD F0               [24] 1871 	movx	@dptr,a
      0006DE 90 00 0C         [24] 1872 	mov	dptr,#0x000c
      0006E1 C0 07            [24] 1873 	push	ar7
      0006E3 C0 06            [24] 1874 	push	ar6
      0006E5 12 1A 3A         [24] 1875 	lcall	__mulint
      0006E8 AC 82            [24] 1876 	mov	r4,dpl
      0006EA AD 83            [24] 1877 	mov	r5,dph
      0006EC EC               [12] 1878 	mov	a,r4
      0006ED 24 0B            [12] 1879 	add	a,#_buffers_array
      0006EF FC               [12] 1880 	mov	r4,a
      0006F0 ED               [12] 1881 	mov	a,r5
      0006F1 34 00            [12] 1882 	addc	a,#(_buffers_array >> 8)
      0006F3 FD               [12] 1883 	mov	r5,a
      0006F4 8C 82            [24] 1884 	mov	dpl,r4
      0006F6 8D 83            [24] 1885 	mov	dph,r5
      0006F8 A3               [24] 1886 	inc	dptr
      0006F9 A3               [24] 1887 	inc	dptr
      0006FA E0               [24] 1888 	movx	a,@dptr
      0006FB FB               [12] 1889 	mov	r3,a
      0006FC A3               [24] 1890 	inc	dptr
      0006FD E0               [24] 1891 	movx	a,@dptr
      0006FE FC               [12] 1892 	mov	r4,a
      0006FF A3               [24] 1893 	inc	dptr
      000700 E0               [24] 1894 	movx	a,@dptr
      000701 FD               [12] 1895 	mov	r5,a
      000702 8B 82            [24] 1896 	mov	dpl,r3
      000704 8C 83            [24] 1897 	mov	dph,r4
      000706 8D F0            [24] 1898 	mov	b,r5
      000708 12 16 AF         [24] 1899 	lcall	_free
      00070B D0 06            [24] 1900 	pop	ar6
      00070D D0 07            [24] 1901 	pop	ar7
                                   1902 ;	program.c:483: printf("Buffer %d Freed ....\n\r", i);
      00070F C0 07            [24] 1903 	push	ar7
      000711 C0 06            [24] 1904 	push	ar6
      000713 C0 06            [24] 1905 	push	ar6
      000715 C0 07            [24] 1906 	push	ar7
      000717 74 CE            [12] 1907 	mov	a,#___str_31
      000719 C0 E0            [24] 1908 	push	acc
      00071B 74 29            [12] 1909 	mov	a,#(___str_31 >> 8)
      00071D C0 E0            [24] 1910 	push	acc
      00071F 74 80            [12] 1911 	mov	a,#0x80
      000721 C0 E0            [24] 1912 	push	acc
      000723 12 1A A8         [24] 1913 	lcall	_printf
      000726 E5 81            [12] 1914 	mov	a,sp
      000728 24 FB            [12] 1915 	add	a,#0xfb
      00072A F5 81            [12] 1916 	mov	sp,a
      00072C D0 06            [24] 1917 	pop	ar6
      00072E D0 07            [24] 1918 	pop	ar7
                                   1919 ;	program.c:480: for (int i = 0; i < program_stats.total_buffers; i++)
      000730 0E               [12] 1920 	inc	r6
      000731 BE 00 8B         [24] 1921 	cjne	r6,#0x00,00103$
      000734 0F               [12] 1922 	inc	r7
      000735 80 88            [24] 1923 	sjmp	00103$
      000737                       1924 00101$:
                                   1925 ;	program.c:485: printf("Let's begin again..\n\r");
      000737 74 E5            [12] 1926 	mov	a,#___str_32
      000739 C0 E0            [24] 1927 	push	acc
      00073B 74 29            [12] 1928 	mov	a,#(___str_32 >> 8)
      00073D C0 E0            [24] 1929 	push	acc
      00073F 74 80            [12] 1930 	mov	a,#0x80
      000741 C0 E0            [24] 1931 	push	acc
      000743 12 1A A8         [24] 1932 	lcall	_printf
      000746 15 81            [12] 1933 	dec	sp
      000748 15 81            [12] 1934 	dec	sp
      00074A 15 81            [12] 1935 	dec	sp
                                   1936 ;	program.c:486: user_interface_heap();
                                   1937 ;	program.c:487: }
      00074C 02 00 B5         [24] 1938 	ljmp	_user_interface_heap
                                   1939 ;------------------------------------------------------------
                                   1940 ;Allocation info for local variables in function 'delete_buffer'
                                   1941 ;------------------------------------------------------------
                                   1942 ;sloc0                     Allocated with name '_delete_buffer_sloc0_1_0'
                                   1943 ;sloc1                     Allocated with name '_delete_buffer_sloc1_1_0'
                                   1944 ;sloc2                     Allocated with name '_delete_buffer_sloc2_1_0'
                                   1945 ;buff_number               Allocated with name '_delete_buffer_buff_number_65537_104'
                                   1946 ;buff_to_free              Allocated with name '_delete_buffer_buff_to_free_65537_104'
                                   1947 ;buffer_freed_size         Allocated with name '_delete_buffer_buffer_freed_size_65537_104'
                                   1948 ;i                         Allocated with name '_delete_buffer_i_196609_106'
                                   1949 ;------------------------------------------------------------
                                   1950 ;	program.c:494: int delete_buffer()
                                   1951 ;	-----------------------------------------
                                   1952 ;	 function delete_buffer
                                   1953 ;	-----------------------------------------
      00074F                       1954 _delete_buffer:
                                   1955 ;	program.c:496: DEBUGPORT(0x04);
      00074F 75 82 04         [24] 1956 	mov	dpl,#0x04
      000752 12 15 93         [24] 1957 	lcall	_dataout
                                   1958 ;	program.c:500: get_del_num:
      000755                       1959 00101$:
                                   1960 ;	program.c:501: printf("\n\rGive Valid Buffer Number to delete(1-%d) in 3 digits\n\r", (program_stats.total_buffers - 1));
      000755 90 00 09         [24] 1961 	mov	dptr,#(_program_stats + 0x0008)
      000758 E0               [24] 1962 	movx	a,@dptr
      000759 FE               [12] 1963 	mov	r6,a
      00075A A3               [24] 1964 	inc	dptr
      00075B E0               [24] 1965 	movx	a,@dptr
      00075C FF               [12] 1966 	mov	r7,a
      00075D 1E               [12] 1967 	dec	r6
      00075E BE FF 01         [24] 1968 	cjne	r6,#0xff,00139$
      000761 1F               [12] 1969 	dec	r7
      000762                       1970 00139$:
      000762 C0 06            [24] 1971 	push	ar6
      000764 C0 07            [24] 1972 	push	ar7
      000766 74 FB            [12] 1973 	mov	a,#___str_33
      000768 C0 E0            [24] 1974 	push	acc
      00076A 74 29            [12] 1975 	mov	a,#(___str_33 >> 8)
      00076C C0 E0            [24] 1976 	push	acc
      00076E 74 80            [12] 1977 	mov	a,#0x80
      000770 C0 E0            [24] 1978 	push	acc
      000772 12 1A A8         [24] 1979 	lcall	_printf
      000775 E5 81            [12] 1980 	mov	a,sp
      000777 24 FB            [12] 1981 	add	a,#0xfb
      000779 F5 81            [12] 1982 	mov	sp,a
                                   1983 ;	program.c:502: buff_number = get_number(3);
      00077B 90 00 03         [24] 1984 	mov	dptr,#0x0003
      00077E 12 13 E3         [24] 1985 	lcall	_get_number
      000781 AE 82            [24] 1986 	mov	r6,dpl
      000783 AF 83            [24] 1987 	mov	r7,dph
                                   1988 ;	program.c:504: if (buff_number > 0 && buff_number < program_stats.total_buffers)
      000785 C3               [12] 1989 	clr	c
      000786 E4               [12] 1990 	clr	a
      000787 9E               [12] 1991 	subb	a,r6
      000788 74 80            [12] 1992 	mov	a,#(0x00 ^ 0x80)
      00078A 8F F0            [24] 1993 	mov	b,r7
      00078C 63 F0 80         [24] 1994 	xrl	b,#0x80
      00078F 95 F0            [12] 1995 	subb	a,b
      000791 50 C2            [24] 1996 	jnc	00101$
      000793 90 00 09         [24] 1997 	mov	dptr,#(_program_stats + 0x0008)
      000796 E0               [24] 1998 	movx	a,@dptr
      000797 FC               [12] 1999 	mov	r4,a
      000798 A3               [24] 2000 	inc	dptr
      000799 E0               [24] 2001 	movx	a,@dptr
      00079A FD               [12] 2002 	mov	r5,a
      00079B C3               [12] 2003 	clr	c
      00079C EE               [12] 2004 	mov	a,r6
      00079D 9C               [12] 2005 	subb	a,r4
      00079E EF               [12] 2006 	mov	a,r7
      00079F 64 80            [12] 2007 	xrl	a,#0x80
      0007A1 8D F0            [24] 2008 	mov	b,r5
      0007A3 63 F0 80         [24] 2009 	xrl	b,#0x80
      0007A6 95 F0            [12] 2010 	subb	a,b
      0007A8 50 AB            [24] 2011 	jnc	00101$
                                   2012 ;	program.c:508: buff_to_free = buffers_array[buff_number].buffer_start;
      0007AA 90 15 14         [24] 2013 	mov	dptr,#__mulint_PARM_2
      0007AD EE               [12] 2014 	mov	a,r6
      0007AE F0               [24] 2015 	movx	@dptr,a
      0007AF EF               [12] 2016 	mov	a,r7
      0007B0 A3               [24] 2017 	inc	dptr
      0007B1 F0               [24] 2018 	movx	@dptr,a
      0007B2 90 00 0C         [24] 2019 	mov	dptr,#0x000c
      0007B5 C0 07            [24] 2020 	push	ar7
      0007B7 C0 06            [24] 2021 	push	ar6
      0007B9 12 1A 3A         [24] 2022 	lcall	__mulint
      0007BC AC 82            [24] 2023 	mov	r4,dpl
      0007BE AD 83            [24] 2024 	mov	r5,dph
      0007C0 D0 06            [24] 2025 	pop	ar6
      0007C2 D0 07            [24] 2026 	pop	ar7
      0007C4 EC               [12] 2027 	mov	a,r4
      0007C5 24 0B            [12] 2028 	add	a,#_buffers_array
      0007C7 FC               [12] 2029 	mov	r4,a
      0007C8 ED               [12] 2030 	mov	a,r5
      0007C9 34 00            [12] 2031 	addc	a,#(_buffers_array >> 8)
      0007CB FD               [12] 2032 	mov	r5,a
      0007CC 8C 82            [24] 2033 	mov	dpl,r4
      0007CE 8D 83            [24] 2034 	mov	dph,r5
      0007D0 A3               [24] 2035 	inc	dptr
      0007D1 A3               [24] 2036 	inc	dptr
      0007D2 E0               [24] 2037 	movx	a,@dptr
      0007D3 F5 14            [12] 2038 	mov	_delete_buffer_sloc2_1_0,a
      0007D5 A3               [24] 2039 	inc	dptr
      0007D6 E0               [24] 2040 	movx	a,@dptr
      0007D7 F5 15            [12] 2041 	mov	(_delete_buffer_sloc2_1_0 + 1),a
      0007D9 A3               [24] 2042 	inc	dptr
      0007DA E0               [24] 2043 	movx	a,@dptr
      0007DB F5 16            [12] 2044 	mov	(_delete_buffer_sloc2_1_0 + 2),a
                                   2045 ;	program.c:509: buffer_freed_size = buffers_array[buff_number].buff_size;
      0007DD 74 08            [12] 2046 	mov	a,#0x08
      0007DF 2C               [12] 2047 	add	a,r4
      0007E0 F5 82            [12] 2048 	mov	dpl,a
      0007E2 E4               [12] 2049 	clr	a
      0007E3 3D               [12] 2050 	addc	a,r5
      0007E4 F5 83            [12] 2051 	mov	dph,a
      0007E6 E0               [24] 2052 	movx	a,@dptr
      0007E7 FC               [12] 2053 	mov	r4,a
      0007E8 A3               [24] 2054 	inc	dptr
      0007E9 E0               [24] 2055 	movx	a,@dptr
      0007EA FD               [12] 2056 	mov	r5,a
                                   2057 ;	program.c:511: for (int i = 0; i < (program_stats.total_buffers - 1); i++)
      0007EB E4               [12] 2058 	clr	a
      0007EC F5 10            [12] 2059 	mov	_delete_buffer_sloc0_1_0,a
      0007EE F5 11            [12] 2060 	mov	(_delete_buffer_sloc0_1_0 + 1),a
      0007F0                       2061 00110$:
      0007F0 C0 04            [24] 2062 	push	ar4
      0007F2 C0 05            [24] 2063 	push	ar5
      0007F4 90 00 09         [24] 2064 	mov	dptr,#(_program_stats + 0x0008)
      0007F7 E0               [24] 2065 	movx	a,@dptr
      0007F8 F5 12            [12] 2066 	mov	_delete_buffer_sloc1_1_0,a
      0007FA A3               [24] 2067 	inc	dptr
      0007FB E0               [24] 2068 	movx	a,@dptr
      0007FC F5 13            [12] 2069 	mov	(_delete_buffer_sloc1_1_0 + 1),a
      0007FE E5 12            [12] 2070 	mov	a,_delete_buffer_sloc1_1_0
      000800 24 FF            [12] 2071 	add	a,#0xff
      000802 F8               [12] 2072 	mov	r0,a
      000803 E5 13            [12] 2073 	mov	a,(_delete_buffer_sloc1_1_0 + 1)
      000805 34 FF            [12] 2074 	addc	a,#0xff
      000807 FD               [12] 2075 	mov	r5,a
      000808 C3               [12] 2076 	clr	c
      000809 E5 10            [12] 2077 	mov	a,_delete_buffer_sloc0_1_0
      00080B 98               [12] 2078 	subb	a,r0
      00080C E5 11            [12] 2079 	mov	a,(_delete_buffer_sloc0_1_0 + 1)
      00080E 64 80            [12] 2080 	xrl	a,#0x80
      000810 8D F0            [24] 2081 	mov	b,r5
      000812 63 F0 80         [24] 2082 	xrl	b,#0x80
      000815 95 F0            [12] 2083 	subb	a,b
      000817 D0 05            [24] 2084 	pop	ar5
      000819 D0 04            [24] 2085 	pop	ar4
      00081B 40 03            [24] 2086 	jc	00142$
      00081D 02 08 CE         [24] 2087 	ljmp	00104$
      000820                       2088 00142$:
                                   2089 ;	program.c:513: if (i >= buff_number)
      000820 C3               [12] 2090 	clr	c
      000821 E5 10            [12] 2091 	mov	a,_delete_buffer_sloc0_1_0
      000823 9E               [12] 2092 	subb	a,r6
      000824 E5 11            [12] 2093 	mov	a,(_delete_buffer_sloc0_1_0 + 1)
      000826 64 80            [12] 2094 	xrl	a,#0x80
      000828 8F F0            [24] 2095 	mov	b,r7
      00082A 63 F0 80         [24] 2096 	xrl	b,#0x80
      00082D 95 F0            [12] 2097 	subb	a,b
      00082F 50 03            [24] 2098 	jnc	00143$
      000831 02 08 C3         [24] 2099 	ljmp	00111$
      000834                       2100 00143$:
                                   2101 ;	program.c:515: buffers_array[i + 1].buffer_num = i;
      000834 C0 04            [24] 2102 	push	ar4
      000836 C0 05            [24] 2103 	push	ar5
      000838 90 15 14         [24] 2104 	mov	dptr,#__mulint_PARM_2
      00083B 74 01            [12] 2105 	mov	a,#0x01
      00083D 25 10            [12] 2106 	add	a,_delete_buffer_sloc0_1_0
      00083F F0               [24] 2107 	movx	@dptr,a
      000840 E4               [12] 2108 	clr	a
      000841 35 11            [12] 2109 	addc	a,(_delete_buffer_sloc0_1_0 + 1)
      000843 A3               [24] 2110 	inc	dptr
      000844 F0               [24] 2111 	movx	@dptr,a
      000845 90 00 0C         [24] 2112 	mov	dptr,#0x000c
      000848 C0 07            [24] 2113 	push	ar7
      00084A C0 06            [24] 2114 	push	ar6
      00084C C0 04            [24] 2115 	push	ar4
      00084E 12 1A 3A         [24] 2116 	lcall	__mulint
      000851 A8 82            [24] 2117 	mov	r0,dpl
      000853 AD 83            [24] 2118 	mov	r5,dph
      000855 D0 04            [24] 2119 	pop	ar4
      000857 E8               [12] 2120 	mov	a,r0
      000858 24 0B            [12] 2121 	add	a,#_buffers_array
      00085A F5 82            [12] 2122 	mov	dpl,a
      00085C ED               [12] 2123 	mov	a,r5
      00085D 34 00            [12] 2124 	addc	a,#(_buffers_array >> 8)
      00085F F5 83            [12] 2125 	mov	dph,a
      000861 E5 10            [12] 2126 	mov	a,_delete_buffer_sloc0_1_0
      000863 F0               [24] 2127 	movx	@dptr,a
      000864 E5 11            [12] 2128 	mov	a,(_delete_buffer_sloc0_1_0 + 1)
      000866 A3               [24] 2129 	inc	dptr
      000867 F0               [24] 2130 	movx	@dptr,a
                                   2131 ;	program.c:516: buffers_array[i] = buffers_array[i + 1];
      000868 90 15 14         [24] 2132 	mov	dptr,#__mulint_PARM_2
      00086B E5 10            [12] 2133 	mov	a,_delete_buffer_sloc0_1_0
      00086D F0               [24] 2134 	movx	@dptr,a
      00086E E5 11            [12] 2135 	mov	a,(_delete_buffer_sloc0_1_0 + 1)
      000870 A3               [24] 2136 	inc	dptr
      000871 F0               [24] 2137 	movx	@dptr,a
      000872 90 00 0C         [24] 2138 	mov	dptr,#0x000c
      000875 C0 05            [24] 2139 	push	ar5
      000877 C0 00            [24] 2140 	push	ar0
      000879 12 1A 3A         [24] 2141 	lcall	__mulint
      00087C AB 82            [24] 2142 	mov	r3,dpl
      00087E AC 83            [24] 2143 	mov	r4,dph
      000880 D0 00            [24] 2144 	pop	ar0
      000882 D0 05            [24] 2145 	pop	ar5
      000884 EB               [12] 2146 	mov	a,r3
      000885 24 0B            [12] 2147 	add	a,#_buffers_array
      000887 FB               [12] 2148 	mov	r3,a
      000888 EC               [12] 2149 	mov	a,r4
      000889 34 00            [12] 2150 	addc	a,#(_buffers_array >> 8)
      00088B FC               [12] 2151 	mov	r4,a
      00088C 7A 00            [12] 2152 	mov	r2,#0x00
      00088E E8               [12] 2153 	mov	a,r0
      00088F 24 0B            [12] 2154 	add	a,#_buffers_array
      000891 F8               [12] 2155 	mov	r0,a
      000892 ED               [12] 2156 	mov	a,r5
      000893 34 00            [12] 2157 	addc	a,#(_buffers_array >> 8)
      000895 FD               [12] 2158 	mov	r5,a
      000896 90 15 03         [24] 2159 	mov	dptr,#___memcpy_PARM_2
      000899 E8               [12] 2160 	mov	a,r0
      00089A F0               [24] 2161 	movx	@dptr,a
      00089B ED               [12] 2162 	mov	a,r5
      00089C A3               [24] 2163 	inc	dptr
      00089D F0               [24] 2164 	movx	@dptr,a
      00089E E4               [12] 2165 	clr	a
      00089F A3               [24] 2166 	inc	dptr
      0008A0 F0               [24] 2167 	movx	@dptr,a
      0008A1 90 15 06         [24] 2168 	mov	dptr,#___memcpy_PARM_3
      0008A4 74 0C            [12] 2169 	mov	a,#0x0c
      0008A6 F0               [24] 2170 	movx	@dptr,a
      0008A7 E4               [12] 2171 	clr	a
      0008A8 A3               [24] 2172 	inc	dptr
      0008A9 F0               [24] 2173 	movx	@dptr,a
      0008AA 8B 82            [24] 2174 	mov	dpl,r3
      0008AC 8C 83            [24] 2175 	mov	dph,r4
      0008AE 8A F0            [24] 2176 	mov	b,r2
      0008B0 C0 05            [24] 2177 	push	ar5
      0008B2 C0 04            [24] 2178 	push	ar4
      0008B4 12 18 06         [24] 2179 	lcall	___memcpy
      0008B7 D0 04            [24] 2180 	pop	ar4
      0008B9 D0 05            [24] 2181 	pop	ar5
      0008BB D0 06            [24] 2182 	pop	ar6
      0008BD D0 07            [24] 2183 	pop	ar7
                                   2184 ;	program.c:529: goto get_del_num;
      0008BF D0 05            [24] 2185 	pop	ar5
      0008C1 D0 04            [24] 2186 	pop	ar4
                                   2187 ;	program.c:516: buffers_array[i] = buffers_array[i + 1];
      0008C3                       2188 00111$:
                                   2189 ;	program.c:511: for (int i = 0; i < (program_stats.total_buffers - 1); i++)
      0008C3 05 10            [12] 2190 	inc	_delete_buffer_sloc0_1_0
      0008C5 E4               [12] 2191 	clr	a
      0008C6 B5 10 02         [24] 2192 	cjne	a,_delete_buffer_sloc0_1_0,00144$
      0008C9 05 11            [12] 2193 	inc	(_delete_buffer_sloc0_1_0 + 1)
      0008CB                       2194 00144$:
      0008CB 02 07 F0         [24] 2195 	ljmp	00110$
      0008CE                       2196 00104$:
                                   2197 ;	program.c:520: program_stats.total_buffers -= 1;
      0008CE E5 12            [12] 2198 	mov	a,_delete_buffer_sloc1_1_0
      0008D0 24 FF            [12] 2199 	add	a,#0xff
      0008D2 FA               [12] 2200 	mov	r2,a
      0008D3 E5 13            [12] 2201 	mov	a,(_delete_buffer_sloc1_1_0 + 1)
      0008D5 34 FF            [12] 2202 	addc	a,#0xff
      0008D7 FB               [12] 2203 	mov	r3,a
      0008D8 90 00 09         [24] 2204 	mov	dptr,#(_program_stats + 0x0008)
      0008DB EA               [12] 2205 	mov	a,r2
      0008DC F0               [24] 2206 	movx	@dptr,a
      0008DD EB               [12] 2207 	mov	a,r3
      0008DE A3               [24] 2208 	inc	dptr
      0008DF F0               [24] 2209 	movx	@dptr,a
                                   2210 ;	program.c:521: program_stats.allocated_heap -= buffer_freed_size;
      0008E0 90 00 03         [24] 2211 	mov	dptr,#(_program_stats + 0x0002)
      0008E3 E0               [24] 2212 	movx	a,@dptr
      0008E4 FA               [12] 2213 	mov	r2,a
      0008E5 A3               [24] 2214 	inc	dptr
      0008E6 E0               [24] 2215 	movx	a,@dptr
      0008E7 FB               [12] 2216 	mov	r3,a
      0008E8 EA               [12] 2217 	mov	a,r2
      0008E9 C3               [12] 2218 	clr	c
      0008EA 9C               [12] 2219 	subb	a,r4
      0008EB FC               [12] 2220 	mov	r4,a
      0008EC EB               [12] 2221 	mov	a,r3
      0008ED 9D               [12] 2222 	subb	a,r5
      0008EE FD               [12] 2223 	mov	r5,a
      0008EF 90 00 03         [24] 2224 	mov	dptr,#(_program_stats + 0x0002)
      0008F2 EC               [12] 2225 	mov	a,r4
      0008F3 F0               [24] 2226 	movx	@dptr,a
      0008F4 ED               [12] 2227 	mov	a,r5
      0008F5 A3               [24] 2228 	inc	dptr
      0008F6 F0               [24] 2229 	movx	@dptr,a
                                   2230 ;	program.c:523: free(buff_to_free);
      0008F7 AB 14            [24] 2231 	mov	r3,_delete_buffer_sloc2_1_0
      0008F9 AC 15            [24] 2232 	mov	r4,(_delete_buffer_sloc2_1_0 + 1)
      0008FB AD 16            [24] 2233 	mov	r5,(_delete_buffer_sloc2_1_0 + 2)
      0008FD 8B 82            [24] 2234 	mov	dpl,r3
      0008FF 8C 83            [24] 2235 	mov	dph,r4
      000901 8D F0            [24] 2236 	mov	b,r5
      000903 C0 07            [24] 2237 	push	ar7
      000905 C0 06            [24] 2238 	push	ar6
      000907 12 16 AF         [24] 2239 	lcall	_free
      00090A D0 06            [24] 2240 	pop	ar6
      00090C D0 07            [24] 2241 	pop	ar7
                                   2242 ;	program.c:524: printf("Buffer %d Successfully Deleted.. \n\r", buff_number);
      00090E C0 06            [24] 2243 	push	ar6
      000910 C0 07            [24] 2244 	push	ar7
      000912 74 34            [12] 2245 	mov	a,#___str_34
      000914 C0 E0            [24] 2246 	push	acc
      000916 74 2A            [12] 2247 	mov	a,#(___str_34 >> 8)
      000918 C0 E0            [24] 2248 	push	acc
      00091A 74 80            [12] 2249 	mov	a,#0x80
      00091C C0 E0            [24] 2250 	push	acc
      00091E 12 1A A8         [24] 2251 	lcall	_printf
      000921 E5 81            [12] 2252 	mov	a,sp
      000923 24 FB            [12] 2253 	add	a,#0xfb
      000925 F5 81            [12] 2254 	mov	sp,a
                                   2255 ;	program.c:525: return 0;
      000927 90 00 00         [24] 2256 	mov	dptr,#0x0000
                                   2257 ;	program.c:529: goto get_del_num;
                                   2258 ;	program.c:531: }
      00092A 22               [24] 2259 	ret
                                   2260 ;------------------------------------------------------------
                                   2261 ;Allocation info for local variables in function 'print_pca_menu'
                                   2262 ;------------------------------------------------------------
                                   2263 ;	program.c:538: void print_pca_menu()
                                   2264 ;	-----------------------------------------
                                   2265 ;	 function print_pca_menu
                                   2266 ;	-----------------------------------------
      00092B                       2267 _print_pca_menu:
                                   2268 ;	program.c:540: DEBUGPORT(0x55);
      00092B 75 82 55         [24] 2269 	mov	dpl,#0x55
      00092E 12 15 93         [24] 2270 	lcall	_dataout
                                   2271 ;	program.c:541: printf("\n\n\r^^^^^^^^^^^^^^^^^^^-PCA-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ \n\n\r");
      000931 74 58            [12] 2272 	mov	a,#___str_35
      000933 C0 E0            [24] 2273 	push	acc
      000935 74 2A            [12] 2274 	mov	a,#(___str_35 >> 8)
      000937 C0 E0            [24] 2275 	push	acc
      000939 74 80            [12] 2276 	mov	a,#0x80
      00093B C0 E0            [24] 2277 	push	acc
      00093D 12 1A A8         [24] 2278 	lcall	_printf
      000940 15 81            [12] 2279 	dec	sp
      000942 15 81            [12] 2280 	dec	sp
      000944 15 81            [12] 2281 	dec	sp
                                   2282 ;	program.c:542: printf("'F' -> Falling Edge Capture Mode\n\r");
      000946 74 97            [12] 2283 	mov	a,#___str_36
      000948 C0 E0            [24] 2284 	push	acc
      00094A 74 2A            [12] 2285 	mov	a,#(___str_36 >> 8)
      00094C C0 E0            [24] 2286 	push	acc
      00094E 74 80            [12] 2287 	mov	a,#0x80
      000950 C0 E0            [24] 2288 	push	acc
      000952 12 1A A8         [24] 2289 	lcall	_printf
      000955 15 81            [12] 2290 	dec	sp
      000957 15 81            [12] 2291 	dec	sp
      000959 15 81            [12] 2292 	dec	sp
                                   2293 ;	program.c:543: printf("'S' -> Software Timer Mode\n\r");
      00095B 74 BA            [12] 2294 	mov	a,#___str_37
      00095D C0 E0            [24] 2295 	push	acc
      00095F 74 2A            [12] 2296 	mov	a,#(___str_37 >> 8)
      000961 C0 E0            [24] 2297 	push	acc
      000963 74 80            [12] 2298 	mov	a,#0x80
      000965 C0 E0            [24] 2299 	push	acc
      000967 12 1A A8         [24] 2300 	lcall	_printf
      00096A 15 81            [12] 2301 	dec	sp
      00096C 15 81            [12] 2302 	dec	sp
      00096E 15 81            [12] 2303 	dec	sp
                                   2304 ;	program.c:544: printf("'H' -> High Speed Output Mode\n\r");
      000970 74 D7            [12] 2305 	mov	a,#___str_38
      000972 C0 E0            [24] 2306 	push	acc
      000974 74 2A            [12] 2307 	mov	a,#(___str_38 >> 8)
      000976 C0 E0            [24] 2308 	push	acc
      000978 74 80            [12] 2309 	mov	a,#0x80
      00097A C0 E0            [24] 2310 	push	acc
      00097C 12 1A A8         [24] 2311 	lcall	_printf
      00097F 15 81            [12] 2312 	dec	sp
      000981 15 81            [12] 2313 	dec	sp
      000983 15 81            [12] 2314 	dec	sp
                                   2315 ;	program.c:545: printf("'P' -> PWM Mode \n\r");
      000985 74 F7            [12] 2316 	mov	a,#___str_39
      000987 C0 E0            [24] 2317 	push	acc
      000989 74 2A            [12] 2318 	mov	a,#(___str_39 >> 8)
      00098B C0 E0            [24] 2319 	push	acc
      00098D 74 80            [12] 2320 	mov	a,#0x80
      00098F C0 E0            [24] 2321 	push	acc
      000991 12 1A A8         [24] 2322 	lcall	_printf
      000994 15 81            [12] 2323 	dec	sp
      000996 15 81            [12] 2324 	dec	sp
      000998 15 81            [12] 2325 	dec	sp
                                   2326 ;	program.c:546: printf("'W' -> Watchdog Timer Mode\n\r");
      00099A 74 0A            [12] 2327 	mov	a,#___str_40
      00099C C0 E0            [24] 2328 	push	acc
      00099E 74 2B            [12] 2329 	mov	a,#(___str_40 >> 8)
      0009A0 C0 E0            [24] 2330 	push	acc
      0009A2 74 80            [12] 2331 	mov	a,#0x80
      0009A4 C0 E0            [24] 2332 	push	acc
      0009A6 12 1A A8         [24] 2333 	lcall	_printf
      0009A9 15 81            [12] 2334 	dec	sp
      0009AB 15 81            [12] 2335 	dec	sp
      0009AD 15 81            [12] 2336 	dec	sp
                                   2337 ;	program.c:547: printf("'I' -> Idle Mode with PWM\n\r");
      0009AF 74 27            [12] 2338 	mov	a,#___str_41
      0009B1 C0 E0            [24] 2339 	push	acc
      0009B3 74 2B            [12] 2340 	mov	a,#(___str_41 >> 8)
      0009B5 C0 E0            [24] 2341 	push	acc
      0009B7 74 80            [12] 2342 	mov	a,#0x80
      0009B9 C0 E0            [24] 2343 	push	acc
      0009BB 12 1A A8         [24] 2344 	lcall	_printf
      0009BE 15 81            [12] 2345 	dec	sp
      0009C0 15 81            [12] 2346 	dec	sp
      0009C2 15 81            [12] 2347 	dec	sp
                                   2348 ;	program.c:548: printf("'L' -> Change Prescalar to lowest frequency\n\r");
      0009C4 74 43            [12] 2349 	mov	a,#___str_42
      0009C6 C0 E0            [24] 2350 	push	acc
      0009C8 74 2B            [12] 2351 	mov	a,#(___str_42 >> 8)
      0009CA C0 E0            [24] 2352 	push	acc
      0009CC 74 80            [12] 2353 	mov	a,#0x80
      0009CE C0 E0            [24] 2354 	push	acc
      0009D0 12 1A A8         [24] 2355 	lcall	_printf
      0009D3 15 81            [12] 2356 	dec	sp
      0009D5 15 81            [12] 2357 	dec	sp
      0009D7 15 81            [12] 2358 	dec	sp
                                   2359 ;	program.c:549: printf("'U' -> Hardware Watchdog Timer\n\r");
      0009D9 74 71            [12] 2360 	mov	a,#___str_43
      0009DB C0 E0            [24] 2361 	push	acc
      0009DD 74 2B            [12] 2362 	mov	a,#(___str_43 >> 8)
      0009DF C0 E0            [24] 2363 	push	acc
      0009E1 74 80            [12] 2364 	mov	a,#0x80
      0009E3 C0 E0            [24] 2365 	push	acc
      0009E5 12 1A A8         [24] 2366 	lcall	_printf
      0009E8 15 81            [12] 2367 	dec	sp
      0009EA 15 81            [12] 2368 	dec	sp
      0009EC 15 81            [12] 2369 	dec	sp
                                   2370 ;	program.c:550: printf("'D' -> Power Down Mode\n\n\r");
      0009EE 74 92            [12] 2371 	mov	a,#___str_44
      0009F0 C0 E0            [24] 2372 	push	acc
      0009F2 74 2B            [12] 2373 	mov	a,#(___str_44 >> 8)
      0009F4 C0 E0            [24] 2374 	push	acc
      0009F6 74 80            [12] 2375 	mov	a,#0x80
      0009F8 C0 E0            [24] 2376 	push	acc
      0009FA 12 1A A8         [24] 2377 	lcall	_printf
      0009FD 15 81            [12] 2378 	dec	sp
      0009FF 15 81            [12] 2379 	dec	sp
      000A01 15 81            [12] 2380 	dec	sp
                                   2381 ;	program.c:552: printf("'M' -> Go to Main Menu \n\n\r");
      000A03 74 AC            [12] 2382 	mov	a,#___str_45
      000A05 C0 E0            [24] 2383 	push	acc
      000A07 74 2B            [12] 2384 	mov	a,#(___str_45 >> 8)
      000A09 C0 E0            [24] 2385 	push	acc
      000A0B 74 80            [12] 2386 	mov	a,#0x80
      000A0D C0 E0            [24] 2387 	push	acc
      000A0F 12 1A A8         [24] 2388 	lcall	_printf
      000A12 15 81            [12] 2389 	dec	sp
      000A14 15 81            [12] 2390 	dec	sp
      000A16 15 81            [12] 2391 	dec	sp
                                   2392 ;	program.c:553: }
      000A18 22               [24] 2393 	ret
                                   2394 ;------------------------------------------------------------
                                   2395 ;Allocation info for local variables in function 'print_heap_menu'
                                   2396 ;------------------------------------------------------------
                                   2397 ;	program.c:560: void print_heap_menu()
                                   2398 ;	-----------------------------------------
                                   2399 ;	 function print_heap_menu
                                   2400 ;	-----------------------------------------
      000A19                       2401 _print_heap_menu:
                                   2402 ;	program.c:562: DEBUGPORT(0x05);
      000A19 75 82 05         [24] 2403 	mov	dpl,#0x05
      000A1C 12 15 93         [24] 2404 	lcall	_dataout
                                   2405 ;	program.c:563: printf("\n\n\r^^^^^^^^^^^^^^^^^^^-HEAP-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ \n\n\r");
      000A1F 74 C7            [12] 2406 	mov	a,#___str_46
      000A21 C0 E0            [24] 2407 	push	acc
      000A23 74 2B            [12] 2408 	mov	a,#(___str_46 >> 8)
      000A25 C0 E0            [24] 2409 	push	acc
      000A27 74 80            [12] 2410 	mov	a,#0x80
      000A29 C0 E0            [24] 2411 	push	acc
      000A2B 12 1A A8         [24] 2412 	lcall	_printf
      000A2E 15 81            [12] 2413 	dec	sp
      000A30 15 81            [12] 2414 	dec	sp
      000A32 15 81            [12] 2415 	dec	sp
                                   2416 ;	program.c:564: printf("You can enter characters or use commands from below \n\r");
      000A34 74 07            [12] 2417 	mov	a,#___str_47
      000A36 C0 E0            [24] 2418 	push	acc
      000A38 74 2C            [12] 2419 	mov	a,#(___str_47 >> 8)
      000A3A C0 E0            [24] 2420 	push	acc
      000A3C 74 80            [12] 2421 	mov	a,#0x80
      000A3E C0 E0            [24] 2422 	push	acc
      000A40 12 1A A8         [24] 2423 	lcall	_printf
      000A43 15 81            [12] 2424 	dec	sp
      000A45 15 81            [12] 2425 	dec	sp
      000A47 15 81            [12] 2426 	dec	sp
                                   2427 ;	program.c:565: printf("'?' -> Show heap status, dump & clear Buffer 0 \n\r");
      000A49 74 3E            [12] 2428 	mov	a,#___str_48
      000A4B C0 E0            [24] 2429 	push	acc
      000A4D 74 2C            [12] 2430 	mov	a,#(___str_48 >> 8)
      000A4F C0 E0            [24] 2431 	push	acc
      000A51 74 80            [12] 2432 	mov	a,#0x80
      000A53 C0 E0            [24] 2433 	push	acc
      000A55 12 1A A8         [24] 2434 	lcall	_printf
      000A58 15 81            [12] 2435 	dec	sp
      000A5A 15 81            [12] 2436 	dec	sp
      000A5C 15 81            [12] 2437 	dec	sp
                                   2438 ;	program.c:566: printf("'+' -> Add a new Buffer\n\r");
      000A5E 74 70            [12] 2439 	mov	a,#___str_49
      000A60 C0 E0            [24] 2440 	push	acc
      000A62 74 2C            [12] 2441 	mov	a,#(___str_49 >> 8)
      000A64 C0 E0            [24] 2442 	push	acc
      000A66 74 80            [12] 2443 	mov	a,#0x80
      000A68 C0 E0            [24] 2444 	push	acc
      000A6A 12 1A A8         [24] 2445 	lcall	_printf
      000A6D 15 81            [12] 2446 	dec	sp
      000A6F 15 81            [12] 2447 	dec	sp
      000A71 15 81            [12] 2448 	dec	sp
                                   2449 ;	program.c:567: printf("'-' -> Delete existing Buffer\n\r");
      000A73 74 8A            [12] 2450 	mov	a,#___str_50
      000A75 C0 E0            [24] 2451 	push	acc
      000A77 74 2C            [12] 2452 	mov	a,#(___str_50 >> 8)
      000A79 C0 E0            [24] 2453 	push	acc
      000A7B 74 80            [12] 2454 	mov	a,#0x80
      000A7D C0 E0            [24] 2455 	push	acc
      000A7F 12 1A A8         [24] 2456 	lcall	_printf
      000A82 15 81            [12] 2457 	dec	sp
      000A84 15 81            [12] 2458 	dec	sp
      000A86 15 81            [12] 2459 	dec	sp
                                   2460 ;	program.c:568: printf("'=' -> Dump Buffer 0 in hex\n\r");
      000A88 74 AA            [12] 2461 	mov	a,#___str_51
      000A8A C0 E0            [24] 2462 	push	acc
      000A8C 74 2C            [12] 2463 	mov	a,#(___str_51 >> 8)
      000A8E C0 E0            [24] 2464 	push	acc
      000A90 74 80            [12] 2465 	mov	a,#0x80
      000A92 C0 E0            [24] 2466 	push	acc
      000A94 12 1A A8         [24] 2467 	lcall	_printf
      000A97 15 81            [12] 2468 	dec	sp
      000A99 15 81            [12] 2469 	dec	sp
      000A9B 15 81            [12] 2470 	dec	sp
                                   2471 ;	program.c:569: printf("'@' -> Free all Heap & begin again\n\n\r");
      000A9D 74 C8            [12] 2472 	mov	a,#___str_52
      000A9F C0 E0            [24] 2473 	push	acc
      000AA1 74 2C            [12] 2474 	mov	a,#(___str_52 >> 8)
      000AA3 C0 E0            [24] 2475 	push	acc
      000AA5 74 80            [12] 2476 	mov	a,#0x80
      000AA7 C0 E0            [24] 2477 	push	acc
      000AA9 12 1A A8         [24] 2478 	lcall	_printf
      000AAC 15 81            [12] 2479 	dec	sp
      000AAE 15 81            [12] 2480 	dec	sp
      000AB0 15 81            [12] 2481 	dec	sp
                                   2482 ;	program.c:570: printf("'M' -> Go to Main Menu \n\n\r");
      000AB2 74 AC            [12] 2483 	mov	a,#___str_45
      000AB4 C0 E0            [24] 2484 	push	acc
      000AB6 74 2B            [12] 2485 	mov	a,#(___str_45 >> 8)
      000AB8 C0 E0            [24] 2486 	push	acc
      000ABA 74 80            [12] 2487 	mov	a,#0x80
      000ABC C0 E0            [24] 2488 	push	acc
      000ABE 12 1A A8         [24] 2489 	lcall	_printf
      000AC1 15 81            [12] 2490 	dec	sp
      000AC3 15 81            [12] 2491 	dec	sp
      000AC5 15 81            [12] 2492 	dec	sp
                                   2493 ;	program.c:571: }
      000AC7 22               [24] 2494 	ret
                                   2495 ;------------------------------------------------------------
                                   2496 ;Allocation info for local variables in function 'create_new_buffer'
                                   2497 ;------------------------------------------------------------
                                   2498 ;buff_size                 Allocated with name '_create_new_buffer_buff_size_65537_113'
                                   2499 ;buff                      Allocated with name '_create_new_buffer_buff_65537_113'
                                   2500 ;------------------------------------------------------------
                                   2501 ;	program.c:579: int create_new_buffer()
                                   2502 ;	-----------------------------------------
                                   2503 ;	 function create_new_buffer
                                   2504 ;	-----------------------------------------
      000AC8                       2505 _create_new_buffer:
                                   2506 ;	program.c:581: DEBUGPORT(0x06);
      000AC8 75 82 06         [24] 2507 	mov	dpl,#0x06
      000ACB 12 15 93         [24] 2508 	lcall	_dataout
                                   2509 ;	program.c:584: if (program_stats.allocated_heap == program_stats.total_heap_size)
      000ACE 90 00 03         [24] 2510 	mov	dptr,#(_program_stats + 0x0002)
      000AD1 E0               [24] 2511 	movx	a,@dptr
      000AD2 FE               [12] 2512 	mov	r6,a
      000AD3 A3               [24] 2513 	inc	dptr
      000AD4 E0               [24] 2514 	movx	a,@dptr
      000AD5 FF               [12] 2515 	mov	r7,a
      000AD6 90 00 01         [24] 2516 	mov	dptr,#_program_stats
      000AD9 E0               [24] 2517 	movx	a,@dptr
      000ADA FC               [12] 2518 	mov	r4,a
      000ADB A3               [24] 2519 	inc	dptr
      000ADC E0               [24] 2520 	movx	a,@dptr
      000ADD FD               [12] 2521 	mov	r5,a
      000ADE EE               [12] 2522 	mov	a,r6
      000ADF B5 04 07         [24] 2523 	cjne	a,ar4,00133$
      000AE2 EF               [12] 2524 	mov	a,r7
      000AE3 B5 05 03         [24] 2525 	cjne	a,ar5,00133$
      000AE6 02 0C 29         [24] 2526 	ljmp	00111$
      000AE9                       2527 00133$:
                                   2528 ;	program.c:587: get_new_buff:
      000AE9                       2529 00103$:
                                   2530 ;	program.c:588: printf("\n\rGive Valid Buffer Size(030-300):");
      000AE9 74 EE            [12] 2531 	mov	a,#___str_53
      000AEB C0 E0            [24] 2532 	push	acc
      000AED 74 2C            [12] 2533 	mov	a,#(___str_53 >> 8)
      000AEF C0 E0            [24] 2534 	push	acc
      000AF1 74 80            [12] 2535 	mov	a,#0x80
      000AF3 C0 E0            [24] 2536 	push	acc
      000AF5 12 1A A8         [24] 2537 	lcall	_printf
      000AF8 15 81            [12] 2538 	dec	sp
      000AFA 15 81            [12] 2539 	dec	sp
      000AFC 15 81            [12] 2540 	dec	sp
                                   2541 ;	program.c:589: buff_size = get_number(3);
      000AFE 90 00 03         [24] 2542 	mov	dptr,#0x0003
      000B01 12 13 E3         [24] 2543 	lcall	_get_number
      000B04 AE 82            [24] 2544 	mov	r6,dpl
      000B06 AF 83            [24] 2545 	mov	r7,dph
                                   2546 ;	program.c:590: if (buff_size >= 30 && buff_size <= 300)
      000B08 C3               [12] 2547 	clr	c
      000B09 EE               [12] 2548 	mov	a,r6
      000B0A 94 1E            [12] 2549 	subb	a,#0x1e
      000B0C EF               [12] 2550 	mov	a,r7
      000B0D 64 80            [12] 2551 	xrl	a,#0x80
      000B0F 94 80            [12] 2552 	subb	a,#0x80
      000B11 40 D6            [24] 2553 	jc	00103$
      000B13 74 2C            [12] 2554 	mov	a,#0x2c
      000B15 9E               [12] 2555 	subb	a,r6
      000B16 74 81            [12] 2556 	mov	a,#(0x01 ^ 0x80)
      000B18 8F F0            [24] 2557 	mov	b,r7
      000B1A 63 F0 80         [24] 2558 	xrl	b,#0x80
      000B1D 95 F0            [12] 2559 	subb	a,b
      000B1F 40 C8            [24] 2560 	jc	00103$
                                   2561 ;	program.c:592: buff.buffer_start = malloc(buff_size);
      000B21 8E 82            [24] 2562 	mov	dpl,r6
      000B23 8F 83            [24] 2563 	mov	dph,r7
      000B25 C0 07            [24] 2564 	push	ar7
      000B27 C0 06            [24] 2565 	push	ar6
      000B29 12 18 D1         [24] 2566 	lcall	_malloc
      000B2C AC 82            [24] 2567 	mov	r4,dpl
      000B2E AD 83            [24] 2568 	mov	r5,dph
      000B30 D0 06            [24] 2569 	pop	ar6
      000B32 D0 07            [24] 2570 	pop	ar7
      000B34 7B 00            [12] 2571 	mov	r3,#0x00
      000B36 90 01 3E         [24] 2572 	mov	dptr,#(_create_new_buffer_buff_65537_113 + 0x0002)
      000B39 EC               [12] 2573 	mov	a,r4
      000B3A F0               [24] 2574 	movx	@dptr,a
      000B3B ED               [12] 2575 	mov	a,r5
      000B3C A3               [24] 2576 	inc	dptr
      000B3D F0               [24] 2577 	movx	@dptr,a
      000B3E EB               [12] 2578 	mov	a,r3
      000B3F A3               [24] 2579 	inc	dptr
      000B40 F0               [24] 2580 	movx	@dptr,a
                                   2581 ;	program.c:593: if (buff.buffer_start == NULL)
      000B41 EC               [12] 2582 	mov	a,r4
      000B42 4D               [12] 2583 	orl	a,r5
      000B43 70 18            [24] 2584 	jnz	00105$
                                   2585 ;	program.c:595: printf("Failed, give smaller buffer\n\r");
      000B45 74 11            [12] 2586 	mov	a,#___str_54
      000B47 C0 E0            [24] 2587 	push	acc
      000B49 74 2D            [12] 2588 	mov	a,#(___str_54 >> 8)
      000B4B C0 E0            [24] 2589 	push	acc
      000B4D 74 80            [12] 2590 	mov	a,#0x80
      000B4F C0 E0            [24] 2591 	push	acc
      000B51 12 1A A8         [24] 2592 	lcall	_printf
      000B54 15 81            [12] 2593 	dec	sp
      000B56 15 81            [12] 2594 	dec	sp
      000B58 15 81            [12] 2595 	dec	sp
      000B5A 02 0C 25         [24] 2596 	ljmp	00106$
      000B5D                       2597 00105$:
                                   2598 ;	program.c:599: printf("\n\n\r####SUCCESS, BUFFER Created####\n\n\r");
      000B5D C0 07            [24] 2599 	push	ar7
      000B5F C0 06            [24] 2600 	push	ar6
      000B61 74 2F            [12] 2601 	mov	a,#___str_55
      000B63 C0 E0            [24] 2602 	push	acc
      000B65 74 2D            [12] 2603 	mov	a,#(___str_55 >> 8)
      000B67 C0 E0            [24] 2604 	push	acc
      000B69 74 80            [12] 2605 	mov	a,#0x80
      000B6B C0 E0            [24] 2606 	push	acc
      000B6D 12 1A A8         [24] 2607 	lcall	_printf
      000B70 15 81            [12] 2608 	dec	sp
      000B72 15 81            [12] 2609 	dec	sp
      000B74 15 81            [12] 2610 	dec	sp
      000B76 D0 06            [24] 2611 	pop	ar6
      000B78 D0 07            [24] 2612 	pop	ar7
                                   2613 ;	program.c:601: program_stats.allocated_heap += buff_size;
      000B7A 90 00 03         [24] 2614 	mov	dptr,#(_program_stats + 0x0002)
      000B7D E0               [24] 2615 	movx	a,@dptr
      000B7E FC               [12] 2616 	mov	r4,a
      000B7F A3               [24] 2617 	inc	dptr
      000B80 E0               [24] 2618 	movx	a,@dptr
      000B81 FD               [12] 2619 	mov	r5,a
      000B82 EE               [12] 2620 	mov	a,r6
      000B83 2C               [12] 2621 	add	a,r4
      000B84 FC               [12] 2622 	mov	r4,a
      000B85 EF               [12] 2623 	mov	a,r7
      000B86 3D               [12] 2624 	addc	a,r5
      000B87 FD               [12] 2625 	mov	r5,a
      000B88 90 00 03         [24] 2626 	mov	dptr,#(_program_stats + 0x0002)
      000B8B EC               [12] 2627 	mov	a,r4
      000B8C F0               [24] 2628 	movx	@dptr,a
      000B8D ED               [12] 2629 	mov	a,r5
      000B8E A3               [24] 2630 	inc	dptr
      000B8F F0               [24] 2631 	movx	@dptr,a
                                   2632 ;	program.c:602: buff.buff_size = buff_size;
      000B90 90 01 44         [24] 2633 	mov	dptr,#(_create_new_buffer_buff_65537_113 + 0x0008)
      000B93 EE               [12] 2634 	mov	a,r6
      000B94 F0               [24] 2635 	movx	@dptr,a
      000B95 EF               [12] 2636 	mov	a,r7
      000B96 A3               [24] 2637 	inc	dptr
      000B97 F0               [24] 2638 	movx	@dptr,a
                                   2639 ;	program.c:603: buff.buffer_num = program_stats.total_buffers;
      000B98 90 00 09         [24] 2640 	mov	dptr,#(_program_stats + 0x0008)
      000B9B E0               [24] 2641 	movx	a,@dptr
      000B9C FC               [12] 2642 	mov	r4,a
      000B9D A3               [24] 2643 	inc	dptr
      000B9E E0               [24] 2644 	movx	a,@dptr
      000B9F FD               [12] 2645 	mov	r5,a
      000BA0 90 01 3C         [24] 2646 	mov	dptr,#_create_new_buffer_buff_65537_113
      000BA3 EC               [12] 2647 	mov	a,r4
      000BA4 F0               [24] 2648 	movx	@dptr,a
      000BA5 ED               [12] 2649 	mov	a,r5
      000BA6 A3               [24] 2650 	inc	dptr
      000BA7 F0               [24] 2651 	movx	@dptr,a
                                   2652 ;	program.c:604: buff.buffer_end = buff.buffer_start + buff_size;
      000BA8 90 01 3E         [24] 2653 	mov	dptr,#(_create_new_buffer_buff_65537_113 + 0x0002)
      000BAB E0               [24] 2654 	movx	a,@dptr
      000BAC FB               [12] 2655 	mov	r3,a
      000BAD A3               [24] 2656 	inc	dptr
      000BAE E0               [24] 2657 	movx	a,@dptr
      000BAF FC               [12] 2658 	mov	r4,a
      000BB0 A3               [24] 2659 	inc	dptr
      000BB1 E0               [24] 2660 	movx	a,@dptr
      000BB2 FD               [12] 2661 	mov	r5,a
      000BB3 EE               [12] 2662 	mov	a,r6
      000BB4 2B               [12] 2663 	add	a,r3
      000BB5 FE               [12] 2664 	mov	r6,a
      000BB6 EF               [12] 2665 	mov	a,r7
      000BB7 3C               [12] 2666 	addc	a,r4
      000BB8 FF               [12] 2667 	mov	r7,a
      000BB9 8D 02            [24] 2668 	mov	ar2,r5
      000BBB 90 01 41         [24] 2669 	mov	dptr,#(_create_new_buffer_buff_65537_113 + 0x0005)
      000BBE EE               [12] 2670 	mov	a,r6
      000BBF F0               [24] 2671 	movx	@dptr,a
      000BC0 EF               [12] 2672 	mov	a,r7
      000BC1 A3               [24] 2673 	inc	dptr
      000BC2 F0               [24] 2674 	movx	@dptr,a
      000BC3 EA               [12] 2675 	mov	a,r2
      000BC4 A3               [24] 2676 	inc	dptr
      000BC5 F0               [24] 2677 	movx	@dptr,a
                                   2678 ;	program.c:605: buff.num_char = 0;
      000BC6 90 01 46         [24] 2679 	mov	dptr,#(_create_new_buffer_buff_65537_113 + 0x000a)
      000BC9 E4               [12] 2680 	clr	a
      000BCA F0               [24] 2681 	movx	@dptr,a
      000BCB A3               [24] 2682 	inc	dptr
      000BCC F0               [24] 2683 	movx	@dptr,a
                                   2684 ;	program.c:607: buffers_array[program_stats.total_buffers] = buff;
      000BCD 90 00 09         [24] 2685 	mov	dptr,#(_program_stats + 0x0008)
      000BD0 E0               [24] 2686 	movx	a,@dptr
      000BD1 FE               [12] 2687 	mov	r6,a
      000BD2 A3               [24] 2688 	inc	dptr
      000BD3 E0               [24] 2689 	movx	a,@dptr
      000BD4 FF               [12] 2690 	mov	r7,a
      000BD5 90 15 14         [24] 2691 	mov	dptr,#__mulint_PARM_2
      000BD8 EE               [12] 2692 	mov	a,r6
      000BD9 F0               [24] 2693 	movx	@dptr,a
      000BDA EF               [12] 2694 	mov	a,r7
      000BDB A3               [24] 2695 	inc	dptr
      000BDC F0               [24] 2696 	movx	@dptr,a
      000BDD 90 00 0C         [24] 2697 	mov	dptr,#0x000c
      000BE0 12 1A 3A         [24] 2698 	lcall	__mulint
      000BE3 AE 82            [24] 2699 	mov	r6,dpl
      000BE5 AF 83            [24] 2700 	mov	r7,dph
      000BE7 EE               [12] 2701 	mov	a,r6
      000BE8 24 0B            [12] 2702 	add	a,#_buffers_array
      000BEA FE               [12] 2703 	mov	r6,a
      000BEB EF               [12] 2704 	mov	a,r7
      000BEC 34 00            [12] 2705 	addc	a,#(_buffers_array >> 8)
      000BEE FF               [12] 2706 	mov	r7,a
      000BEF 7D 00            [12] 2707 	mov	r5,#0x00
      000BF1 90 15 03         [24] 2708 	mov	dptr,#___memcpy_PARM_2
      000BF4 74 3C            [12] 2709 	mov	a,#_create_new_buffer_buff_65537_113
      000BF6 F0               [24] 2710 	movx	@dptr,a
      000BF7 74 01            [12] 2711 	mov	a,#(_create_new_buffer_buff_65537_113 >> 8)
      000BF9 A3               [24] 2712 	inc	dptr
      000BFA F0               [24] 2713 	movx	@dptr,a
      000BFB E4               [12] 2714 	clr	a
      000BFC A3               [24] 2715 	inc	dptr
      000BFD F0               [24] 2716 	movx	@dptr,a
      000BFE 90 15 06         [24] 2717 	mov	dptr,#___memcpy_PARM_3
      000C01 74 0C            [12] 2718 	mov	a,#0x0c
      000C03 F0               [24] 2719 	movx	@dptr,a
      000C04 E4               [12] 2720 	clr	a
      000C05 A3               [24] 2721 	inc	dptr
      000C06 F0               [24] 2722 	movx	@dptr,a
      000C07 8E 82            [24] 2723 	mov	dpl,r6
      000C09 8F 83            [24] 2724 	mov	dph,r7
      000C0B 8D F0            [24] 2725 	mov	b,r5
      000C0D 12 18 06         [24] 2726 	lcall	___memcpy
                                   2727 ;	program.c:608: program_stats.total_buffers += 1;
      000C10 90 00 09         [24] 2728 	mov	dptr,#(_program_stats + 0x0008)
      000C13 E0               [24] 2729 	movx	a,@dptr
      000C14 FE               [12] 2730 	mov	r6,a
      000C15 A3               [24] 2731 	inc	dptr
      000C16 E0               [24] 2732 	movx	a,@dptr
      000C17 FF               [12] 2733 	mov	r7,a
      000C18 0E               [12] 2734 	inc	r6
      000C19 BE 00 01         [24] 2735 	cjne	r6,#0x00,00137$
      000C1C 0F               [12] 2736 	inc	r7
      000C1D                       2737 00137$:
      000C1D 90 00 09         [24] 2738 	mov	dptr,#(_program_stats + 0x0008)
      000C20 EE               [12] 2739 	mov	a,r6
      000C21 F0               [24] 2740 	movx	@dptr,a
      000C22 EF               [12] 2741 	mov	a,r7
      000C23 A3               [24] 2742 	inc	dptr
      000C24 F0               [24] 2743 	movx	@dptr,a
      000C25                       2744 00106$:
                                   2745 ;	program.c:610: return 0;
      000C25 90 00 00         [24] 2746 	mov	dptr,#0x0000
                                   2747 ;	program.c:616: no_heap_left:
      000C28 22               [24] 2748 	ret
      000C29                       2749 00111$:
                                   2750 ;	program.c:617: printf("No Heap Memory Left, Delete some buffers...\n\r");
      000C29 74 55            [12] 2751 	mov	a,#___str_56
      000C2B C0 E0            [24] 2752 	push	acc
      000C2D 74 2D            [12] 2753 	mov	a,#(___str_56 >> 8)
      000C2F C0 E0            [24] 2754 	push	acc
      000C31 74 80            [12] 2755 	mov	a,#0x80
      000C33 C0 E0            [24] 2756 	push	acc
      000C35 12 1A A8         [24] 2757 	lcall	_printf
      000C38 15 81            [12] 2758 	dec	sp
      000C3A 15 81            [12] 2759 	dec	sp
      000C3C 15 81            [12] 2760 	dec	sp
                                   2761 ;	program.c:618: return 0;
      000C3E 90 00 00         [24] 2762 	mov	dptr,#0x0000
                                   2763 ;	program.c:619: }
      000C41 22               [24] 2764 	ret
                                   2765 ;------------------------------------------------------------
                                   2766 ;Allocation info for local variables in function 'create_initial_buffers'
                                   2767 ;------------------------------------------------------------
                                   2768 ;buff_size                 Allocated with name '_create_initial_buffers_buff_size_65537_119'
                                   2769 ;buff                      Allocated with name '_create_initial_buffers_buff_65538_120'
                                   2770 ;buff1                     Allocated with name '_create_initial_buffers_buff1_65538_120'
                                   2771 ;------------------------------------------------------------
                                   2772 ;	program.c:627: void create_initial_buffers()
                                   2773 ;	-----------------------------------------
                                   2774 ;	 function create_initial_buffers
                                   2775 ;	-----------------------------------------
      000C42                       2776 _create_initial_buffers:
                                   2777 ;	program.c:629: DEBUGPORT(0x07);
      000C42 75 82 07         [24] 2778 	mov	dpl,#0x07
      000C45 12 15 93         [24] 2779 	lcall	_dataout
                                   2780 ;	program.c:632: get_buff:
      000C48                       2781 00101$:
                                   2782 ;	program.c:633: printf("\n\rGive Valid Initial Buffer Size(0048-4800):");
      000C48 74 83            [12] 2783 	mov	a,#___str_57
      000C4A C0 E0            [24] 2784 	push	acc
      000C4C 74 2D            [12] 2785 	mov	a,#(___str_57 >> 8)
      000C4E C0 E0            [24] 2786 	push	acc
      000C50 74 80            [12] 2787 	mov	a,#0x80
      000C52 C0 E0            [24] 2788 	push	acc
      000C54 12 1A A8         [24] 2789 	lcall	_printf
      000C57 15 81            [12] 2790 	dec	sp
      000C59 15 81            [12] 2791 	dec	sp
      000C5B 15 81            [12] 2792 	dec	sp
                                   2793 ;	program.c:634: buff_size = get_number(4);
      000C5D 90 00 04         [24] 2794 	mov	dptr,#0x0004
      000C60 12 13 E3         [24] 2795 	lcall	_get_number
      000C63 AE 82            [24] 2796 	mov	r6,dpl
      000C65 AF 83            [24] 2797 	mov	r7,dph
                                   2798 ;	program.c:638: if (buff_size >= 48 && buff_size <= 4800)
      000C67 C3               [12] 2799 	clr	c
      000C68 EE               [12] 2800 	mov	a,r6
      000C69 94 30            [12] 2801 	subb	a,#0x30
      000C6B EF               [12] 2802 	mov	a,r7
      000C6C 64 80            [12] 2803 	xrl	a,#0x80
      000C6E 94 80            [12] 2804 	subb	a,#0x80
      000C70 40 D6            [24] 2805 	jc	00101$
      000C72 74 C0            [12] 2806 	mov	a,#0xc0
      000C74 9E               [12] 2807 	subb	a,r6
      000C75 74 92            [12] 2808 	mov	a,#(0x12 ^ 0x80)
      000C77 8F F0            [24] 2809 	mov	b,r7
      000C79 63 F0 80         [24] 2810 	xrl	b,#0x80
      000C7C 95 F0            [12] 2811 	subb	a,b
      000C7E 40 C8            [24] 2812 	jc	00101$
                                   2813 ;	program.c:640: buff.buffer_start = malloc(buff_size);
      000C80 8E 82            [24] 2814 	mov	dpl,r6
      000C82 8F 83            [24] 2815 	mov	dph,r7
      000C84 C0 07            [24] 2816 	push	ar7
      000C86 C0 06            [24] 2817 	push	ar6
      000C88 12 18 D1         [24] 2818 	lcall	_malloc
      000C8B AC 82            [24] 2819 	mov	r4,dpl
      000C8D AD 83            [24] 2820 	mov	r5,dph
      000C8F D0 06            [24] 2821 	pop	ar6
      000C91 D0 07            [24] 2822 	pop	ar7
      000C93 7B 00            [12] 2823 	mov	r3,#0x00
      000C95 90 01 4A         [24] 2824 	mov	dptr,#(_create_initial_buffers_buff_65538_120 + 0x0002)
      000C98 EC               [12] 2825 	mov	a,r4
      000C99 F0               [24] 2826 	movx	@dptr,a
      000C9A ED               [12] 2827 	mov	a,r5
      000C9B A3               [24] 2828 	inc	dptr
      000C9C F0               [24] 2829 	movx	@dptr,a
      000C9D EB               [12] 2830 	mov	a,r3
      000C9E A3               [24] 2831 	inc	dptr
      000C9F F0               [24] 2832 	movx	@dptr,a
                                   2833 ;	program.c:641: buff1.buffer_start = malloc(buff_size);
      000CA0 8E 82            [24] 2834 	mov	dpl,r6
      000CA2 8F 83            [24] 2835 	mov	dph,r7
      000CA4 C0 07            [24] 2836 	push	ar7
      000CA6 C0 06            [24] 2837 	push	ar6
      000CA8 12 18 D1         [24] 2838 	lcall	_malloc
      000CAB AC 82            [24] 2839 	mov	r4,dpl
      000CAD AD 83            [24] 2840 	mov	r5,dph
      000CAF D0 06            [24] 2841 	pop	ar6
      000CB1 D0 07            [24] 2842 	pop	ar7
      000CB3 7B 00            [12] 2843 	mov	r3,#0x00
      000CB5 90 01 56         [24] 2844 	mov	dptr,#(_create_initial_buffers_buff1_65538_120 + 0x0002)
      000CB8 EC               [12] 2845 	mov	a,r4
      000CB9 F0               [24] 2846 	movx	@dptr,a
      000CBA ED               [12] 2847 	mov	a,r5
      000CBB A3               [24] 2848 	inc	dptr
      000CBC F0               [24] 2849 	movx	@dptr,a
      000CBD EB               [12] 2850 	mov	a,r3
      000CBE A3               [24] 2851 	inc	dptr
      000CBF F0               [24] 2852 	movx	@dptr,a
                                   2853 ;	program.c:643: if (buff.buffer_start == NULL || buff1.buffer_start == NULL)
      000CC0 90 01 4A         [24] 2854 	mov	dptr,#(_create_initial_buffers_buff_65538_120 + 0x0002)
      000CC3 E0               [24] 2855 	movx	a,@dptr
      000CC4 FB               [12] 2856 	mov	r3,a
      000CC5 A3               [24] 2857 	inc	dptr
      000CC6 E0               [24] 2858 	movx	a,@dptr
      000CC7 FC               [12] 2859 	mov	r4,a
      000CC8 A3               [24] 2860 	inc	dptr
      000CC9 E0               [24] 2861 	movx	a,@dptr
      000CCA EB               [12] 2862 	mov	a,r3
      000CCB 4C               [12] 2863 	orl	a,r4
      000CCC 60 0F            [24] 2864 	jz	00106$
      000CCE 90 01 56         [24] 2865 	mov	dptr,#(_create_initial_buffers_buff1_65538_120 + 0x0002)
      000CD1 E0               [24] 2866 	movx	a,@dptr
      000CD2 FB               [12] 2867 	mov	r3,a
      000CD3 A3               [24] 2868 	inc	dptr
      000CD4 E0               [24] 2869 	movx	a,@dptr
      000CD5 FC               [12] 2870 	mov	r4,a
      000CD6 A3               [24] 2871 	inc	dptr
      000CD7 E0               [24] 2872 	movx	a,@dptr
      000CD8 FD               [12] 2873 	mov	r5,a
      000CD9 EB               [12] 2874 	mov	a,r3
      000CDA 4C               [12] 2875 	orl	a,r4
      000CDB 70 60            [24] 2876 	jnz	00107$
      000CDD                       2877 00106$:
                                   2878 ;	program.c:645: printf("\n\r####FAIL, Please give a smaller buffer size####\n\n\r");
      000CDD 74 B0            [12] 2879 	mov	a,#___str_58
      000CDF C0 E0            [24] 2880 	push	acc
      000CE1 74 2D            [12] 2881 	mov	a,#(___str_58 >> 8)
      000CE3 C0 E0            [24] 2882 	push	acc
      000CE5 74 80            [12] 2883 	mov	a,#0x80
      000CE7 C0 E0            [24] 2884 	push	acc
      000CE9 12 1A A8         [24] 2885 	lcall	_printf
      000CEC 15 81            [12] 2886 	dec	sp
      000CEE 15 81            [12] 2887 	dec	sp
      000CF0 15 81            [12] 2888 	dec	sp
                                   2889 ;	program.c:647: if (buff.buffer_start != NULL)
      000CF2 90 01 4A         [24] 2890 	mov	dptr,#(_create_initial_buffers_buff_65538_120 + 0x0002)
      000CF5 E0               [24] 2891 	movx	a,@dptr
      000CF6 FB               [12] 2892 	mov	r3,a
      000CF7 A3               [24] 2893 	inc	dptr
      000CF8 E0               [24] 2894 	movx	a,@dptr
      000CF9 FC               [12] 2895 	mov	r4,a
      000CFA A3               [24] 2896 	inc	dptr
      000CFB E0               [24] 2897 	movx	a,@dptr
      000CFC EB               [12] 2898 	mov	a,r3
      000CFD 4C               [12] 2899 	orl	a,r4
      000CFE 60 14            [24] 2900 	jz	00103$
                                   2901 ;	program.c:648: free(buff.buffer_start);
      000D00 90 01 4A         [24] 2902 	mov	dptr,#(_create_initial_buffers_buff_65538_120 + 0x0002)
      000D03 E0               [24] 2903 	movx	a,@dptr
      000D04 FB               [12] 2904 	mov	r3,a
      000D05 A3               [24] 2905 	inc	dptr
      000D06 E0               [24] 2906 	movx	a,@dptr
      000D07 FC               [12] 2907 	mov	r4,a
      000D08 A3               [24] 2908 	inc	dptr
      000D09 E0               [24] 2909 	movx	a,@dptr
      000D0A FD               [12] 2910 	mov	r5,a
      000D0B 8B 82            [24] 2911 	mov	dpl,r3
      000D0D 8C 83            [24] 2912 	mov	dph,r4
      000D0F 8D F0            [24] 2913 	mov	b,r5
      000D11 12 16 AF         [24] 2914 	lcall	_free
      000D14                       2915 00103$:
                                   2916 ;	program.c:649: if (buff1.buffer_start != NULL)
      000D14 90 01 56         [24] 2917 	mov	dptr,#(_create_initial_buffers_buff1_65538_120 + 0x0002)
      000D17 E0               [24] 2918 	movx	a,@dptr
      000D18 FB               [12] 2919 	mov	r3,a
      000D19 A3               [24] 2920 	inc	dptr
      000D1A E0               [24] 2921 	movx	a,@dptr
      000D1B FC               [12] 2922 	mov	r4,a
      000D1C A3               [24] 2923 	inc	dptr
      000D1D E0               [24] 2924 	movx	a,@dptr
      000D1E FD               [12] 2925 	mov	r5,a
      000D1F EB               [12] 2926 	mov	a,r3
      000D20 4C               [12] 2927 	orl	a,r4
      000D21 70 03            [24] 2928 	jnz	00145$
      000D23 02 0C 48         [24] 2929 	ljmp	00101$
      000D26                       2930 00145$:
                                   2931 ;	program.c:650: free(buff1.buffer_start);
      000D26 90 01 56         [24] 2932 	mov	dptr,#(_create_initial_buffers_buff1_65538_120 + 0x0002)
      000D29 E0               [24] 2933 	movx	a,@dptr
      000D2A FB               [12] 2934 	mov	r3,a
      000D2B A3               [24] 2935 	inc	dptr
      000D2C E0               [24] 2936 	movx	a,@dptr
      000D2D FC               [12] 2937 	mov	r4,a
      000D2E A3               [24] 2938 	inc	dptr
      000D2F E0               [24] 2939 	movx	a,@dptr
      000D30 FD               [12] 2940 	mov	r5,a
      000D31 8B 82            [24] 2941 	mov	dpl,r3
      000D33 8C 83            [24] 2942 	mov	dph,r4
      000D35 8D F0            [24] 2943 	mov	b,r5
      000D37 12 16 AF         [24] 2944 	lcall	_free
                                   2945 ;	program.c:652: goto get_buff;
      000D3A 02 0C 48         [24] 2946 	ljmp	00101$
      000D3D                       2947 00107$:
                                   2948 ;	program.c:657: printf("\n\n\r####SUCCESS, INITIAL BUFFERS Created####\n\n\r");
      000D3D C0 07            [24] 2949 	push	ar7
      000D3F C0 06            [24] 2950 	push	ar6
      000D41 74 E5            [12] 2951 	mov	a,#___str_59
      000D43 C0 E0            [24] 2952 	push	acc
      000D45 74 2D            [12] 2953 	mov	a,#(___str_59 >> 8)
      000D47 C0 E0            [24] 2954 	push	acc
      000D49 74 80            [12] 2955 	mov	a,#0x80
      000D4B C0 E0            [24] 2956 	push	acc
      000D4D 12 1A A8         [24] 2957 	lcall	_printf
      000D50 15 81            [12] 2958 	dec	sp
      000D52 15 81            [12] 2959 	dec	sp
      000D54 15 81            [12] 2960 	dec	sp
      000D56 D0 06            [24] 2961 	pop	ar6
      000D58 D0 07            [24] 2962 	pop	ar7
                                   2963 ;	program.c:658: program_stats.allocated_heap = 2 * buff_size;
      000D5A EE               [12] 2964 	mov	a,r6
      000D5B 2E               [12] 2965 	add	a,r6
      000D5C FC               [12] 2966 	mov	r4,a
      000D5D EF               [12] 2967 	mov	a,r7
      000D5E 33               [12] 2968 	rlc	a
      000D5F FD               [12] 2969 	mov	r5,a
      000D60 90 00 03         [24] 2970 	mov	dptr,#(_program_stats + 0x0002)
      000D63 EC               [12] 2971 	mov	a,r4
      000D64 F0               [24] 2972 	movx	@dptr,a
      000D65 ED               [12] 2973 	mov	a,r5
      000D66 A3               [24] 2974 	inc	dptr
      000D67 F0               [24] 2975 	movx	@dptr,a
                                   2976 ;	program.c:659: program_stats.total_heap_size = 4996;
      000D68 90 00 01         [24] 2977 	mov	dptr,#_program_stats
      000D6B 74 84            [12] 2978 	mov	a,#0x84
      000D6D F0               [24] 2979 	movx	@dptr,a
      000D6E 74 13            [12] 2980 	mov	a,#0x13
      000D70 A3               [24] 2981 	inc	dptr
      000D71 F0               [24] 2982 	movx	@dptr,a
                                   2983 ;	program.c:660: program_stats.total_buffers = 2;
      000D72 90 00 09         [24] 2984 	mov	dptr,#(_program_stats + 0x0008)
      000D75 74 02            [12] 2985 	mov	a,#0x02
      000D77 F0               [24] 2986 	movx	@dptr,a
      000D78 E4               [12] 2987 	clr	a
      000D79 A3               [24] 2988 	inc	dptr
      000D7A F0               [24] 2989 	movx	@dptr,a
                                   2990 ;	program.c:662: buff.buff_size = buff_size;
      000D7B 90 01 50         [24] 2991 	mov	dptr,#(_create_initial_buffers_buff_65538_120 + 0x0008)
      000D7E EE               [12] 2992 	mov	a,r6
      000D7F F0               [24] 2993 	movx	@dptr,a
      000D80 EF               [12] 2994 	mov	a,r7
      000D81 A3               [24] 2995 	inc	dptr
      000D82 F0               [24] 2996 	movx	@dptr,a
                                   2997 ;	program.c:663: buff1.buff_size = buff_size;
      000D83 90 01 5C         [24] 2998 	mov	dptr,#(_create_initial_buffers_buff1_65538_120 + 0x0008)
      000D86 EE               [12] 2999 	mov	a,r6
      000D87 F0               [24] 3000 	movx	@dptr,a
      000D88 EF               [12] 3001 	mov	a,r7
      000D89 A3               [24] 3002 	inc	dptr
      000D8A F0               [24] 3003 	movx	@dptr,a
                                   3004 ;	program.c:664: buff.buffer_num = 0;
      000D8B 90 01 48         [24] 3005 	mov	dptr,#_create_initial_buffers_buff_65538_120
      000D8E E4               [12] 3006 	clr	a
      000D8F F0               [24] 3007 	movx	@dptr,a
      000D90 A3               [24] 3008 	inc	dptr
      000D91 F0               [24] 3009 	movx	@dptr,a
                                   3010 ;	program.c:665: buff1.buffer_num = 1;
      000D92 90 01 54         [24] 3011 	mov	dptr,#_create_initial_buffers_buff1_65538_120
      000D95 04               [12] 3012 	inc	a
      000D96 F0               [24] 3013 	movx	@dptr,a
      000D97 E4               [12] 3014 	clr	a
      000D98 A3               [24] 3015 	inc	dptr
      000D99 F0               [24] 3016 	movx	@dptr,a
                                   3017 ;	program.c:666: buff1.buffer_end = buff1.buffer_start + buff_size;
      000D9A 90 01 56         [24] 3018 	mov	dptr,#(_create_initial_buffers_buff1_65538_120 + 0x0002)
      000D9D E0               [24] 3019 	movx	a,@dptr
      000D9E FB               [12] 3020 	mov	r3,a
      000D9F A3               [24] 3021 	inc	dptr
      000DA0 E0               [24] 3022 	movx	a,@dptr
      000DA1 FC               [12] 3023 	mov	r4,a
      000DA2 A3               [24] 3024 	inc	dptr
      000DA3 E0               [24] 3025 	movx	a,@dptr
      000DA4 FD               [12] 3026 	mov	r5,a
      000DA5 EE               [12] 3027 	mov	a,r6
      000DA6 2B               [12] 3028 	add	a,r3
      000DA7 FB               [12] 3029 	mov	r3,a
      000DA8 EF               [12] 3030 	mov	a,r7
      000DA9 3C               [12] 3031 	addc	a,r4
      000DAA FC               [12] 3032 	mov	r4,a
      000DAB 90 01 59         [24] 3033 	mov	dptr,#(_create_initial_buffers_buff1_65538_120 + 0x0005)
      000DAE EB               [12] 3034 	mov	a,r3
      000DAF F0               [24] 3035 	movx	@dptr,a
      000DB0 EC               [12] 3036 	mov	a,r4
      000DB1 A3               [24] 3037 	inc	dptr
      000DB2 F0               [24] 3038 	movx	@dptr,a
      000DB3 ED               [12] 3039 	mov	a,r5
      000DB4 A3               [24] 3040 	inc	dptr
      000DB5 F0               [24] 3041 	movx	@dptr,a
                                   3042 ;	program.c:667: buff.buffer_end = buff.buffer_start + buff_size;
      000DB6 90 01 4A         [24] 3043 	mov	dptr,#(_create_initial_buffers_buff_65538_120 + 0x0002)
      000DB9 E0               [24] 3044 	movx	a,@dptr
      000DBA FB               [12] 3045 	mov	r3,a
      000DBB A3               [24] 3046 	inc	dptr
      000DBC E0               [24] 3047 	movx	a,@dptr
      000DBD FC               [12] 3048 	mov	r4,a
      000DBE A3               [24] 3049 	inc	dptr
      000DBF E0               [24] 3050 	movx	a,@dptr
      000DC0 FD               [12] 3051 	mov	r5,a
      000DC1 EE               [12] 3052 	mov	a,r6
      000DC2 2B               [12] 3053 	add	a,r3
      000DC3 FE               [12] 3054 	mov	r6,a
      000DC4 EF               [12] 3055 	mov	a,r7
      000DC5 3C               [12] 3056 	addc	a,r4
      000DC6 FF               [12] 3057 	mov	r7,a
      000DC7 8D 02            [24] 3058 	mov	ar2,r5
      000DC9 90 01 4D         [24] 3059 	mov	dptr,#(_create_initial_buffers_buff_65538_120 + 0x0005)
      000DCC EE               [12] 3060 	mov	a,r6
      000DCD F0               [24] 3061 	movx	@dptr,a
      000DCE EF               [12] 3062 	mov	a,r7
      000DCF A3               [24] 3063 	inc	dptr
      000DD0 F0               [24] 3064 	movx	@dptr,a
      000DD1 EA               [12] 3065 	mov	a,r2
      000DD2 A3               [24] 3066 	inc	dptr
      000DD3 F0               [24] 3067 	movx	@dptr,a
                                   3068 ;	program.c:668: buff.num_char = 0;
      000DD4 90 01 52         [24] 3069 	mov	dptr,#(_create_initial_buffers_buff_65538_120 + 0x000a)
      000DD7 E4               [12] 3070 	clr	a
      000DD8 F0               [24] 3071 	movx	@dptr,a
      000DD9 A3               [24] 3072 	inc	dptr
      000DDA F0               [24] 3073 	movx	@dptr,a
                                   3074 ;	program.c:669: buff1.num_char = 0;
      000DDB 90 01 5E         [24] 3075 	mov	dptr,#(_create_initial_buffers_buff1_65538_120 + 0x000a)
      000DDE F0               [24] 3076 	movx	@dptr,a
      000DDF A3               [24] 3077 	inc	dptr
      000DE0 F0               [24] 3078 	movx	@dptr,a
                                   3079 ;	program.c:671: buffers_array[0] = buff;
      000DE1 90 15 03         [24] 3080 	mov	dptr,#___memcpy_PARM_2
      000DE4 74 48            [12] 3081 	mov	a,#_create_initial_buffers_buff_65538_120
      000DE6 F0               [24] 3082 	movx	@dptr,a
      000DE7 74 01            [12] 3083 	mov	a,#(_create_initial_buffers_buff_65538_120 >> 8)
      000DE9 A3               [24] 3084 	inc	dptr
      000DEA F0               [24] 3085 	movx	@dptr,a
      000DEB E4               [12] 3086 	clr	a
      000DEC A3               [24] 3087 	inc	dptr
      000DED F0               [24] 3088 	movx	@dptr,a
      000DEE 90 15 06         [24] 3089 	mov	dptr,#___memcpy_PARM_3
      000DF1 74 0C            [12] 3090 	mov	a,#0x0c
      000DF3 F0               [24] 3091 	movx	@dptr,a
      000DF4 E4               [12] 3092 	clr	a
      000DF5 A3               [24] 3093 	inc	dptr
      000DF6 F0               [24] 3094 	movx	@dptr,a
      000DF7 90 00 0B         [24] 3095 	mov	dptr,#_buffers_array
      000DFA 75 F0 00         [24] 3096 	mov	b,#0x00
      000DFD 12 18 06         [24] 3097 	lcall	___memcpy
                                   3098 ;	program.c:672: buffers_array[1] = buff1;
      000E00 90 15 03         [24] 3099 	mov	dptr,#___memcpy_PARM_2
      000E03 74 54            [12] 3100 	mov	a,#_create_initial_buffers_buff1_65538_120
      000E05 F0               [24] 3101 	movx	@dptr,a
      000E06 74 01            [12] 3102 	mov	a,#(_create_initial_buffers_buff1_65538_120 >> 8)
      000E08 A3               [24] 3103 	inc	dptr
      000E09 F0               [24] 3104 	movx	@dptr,a
      000E0A E4               [12] 3105 	clr	a
      000E0B A3               [24] 3106 	inc	dptr
      000E0C F0               [24] 3107 	movx	@dptr,a
      000E0D 90 15 06         [24] 3108 	mov	dptr,#___memcpy_PARM_3
      000E10 74 0C            [12] 3109 	mov	a,#0x0c
      000E12 F0               [24] 3110 	movx	@dptr,a
      000E13 E4               [12] 3111 	clr	a
      000E14 A3               [24] 3112 	inc	dptr
      000E15 F0               [24] 3113 	movx	@dptr,a
      000E16 90 00 17         [24] 3114 	mov	dptr,#(_buffers_array + 0x000c)
      000E19 75 F0 00         [24] 3115 	mov	b,#0x00
                                   3116 ;	program.c:676: goto get_buff;
                                   3117 ;	program.c:677: }
      000E1C 02 18 06         [24] 3118 	ljmp	___memcpy
                                   3119 ;------------------------------------------------------------
                                   3120 ;Allocation info for local variables in function 'enter_chars'
                                   3121 ;------------------------------------------------------------
                                   3122 ;rec                       Allocated with name '_enter_chars_rec_65537_125'
                                   3123 ;------------------------------------------------------------
                                   3124 ;	program.c:685: void enter_chars()
                                   3125 ;	-----------------------------------------
                                   3126 ;	 function enter_chars
                                   3127 ;	-----------------------------------------
      000E1F                       3128 _enter_chars:
                                   3129 ;	program.c:687: DEBUGPORT(0x08);
      000E1F 75 82 08         [24] 3130 	mov	dpl,#0x08
      000E22 12 15 93         [24] 3131 	lcall	_dataout
                                   3132 ;	program.c:688: print_heap_menu();
      000E25 12 0A 19         [24] 3133 	lcall	_print_heap_menu
                                   3134 ;	program.c:690: while (1)
      000E28                       3135 00126$:
                                   3136 ;	program.c:692: rec = getchar();
      000E28 12 15 57         [24] 3137 	lcall	_getchar
      000E2B AE 82            [24] 3138 	mov	r6,dpl
      000E2D AF 83            [24] 3139 	mov	r7,dph
                                   3140 ;	program.c:693: if (rec > 0x60 && rec < 0x7B)
      000E2F C3               [12] 3141 	clr	c
      000E30 74 60            [12] 3142 	mov	a,#0x60
      000E32 9E               [12] 3143 	subb	a,r6
      000E33 74 80            [12] 3144 	mov	a,#(0x00 ^ 0x80)
      000E35 8F F0            [24] 3145 	mov	b,r7
      000E37 63 F0 80         [24] 3146 	xrl	b,#0x80
      000E3A 95 F0            [12] 3147 	subb	a,b
      000E3C 40 03            [24] 3148 	jc	00170$
      000E3E 02 0E CD         [24] 3149 	ljmp	00122$
      000E41                       3150 00170$:
      000E41 C3               [12] 3151 	clr	c
      000E42 EE               [12] 3152 	mov	a,r6
      000E43 94 7B            [12] 3153 	subb	a,#0x7b
      000E45 EF               [12] 3154 	mov	a,r7
      000E46 64 80            [12] 3155 	xrl	a,#0x80
      000E48 94 80            [12] 3156 	subb	a,#0x80
      000E4A 40 03            [24] 3157 	jc	00171$
      000E4C 02 0E CD         [24] 3158 	ljmp	00122$
      000E4F                       3159 00171$:
                                   3160 ;	program.c:697: if (buffers_array[0].num_char < buffers_array[0].buff_size)
      000E4F 90 00 15         [24] 3161 	mov	dptr,#(_buffers_array + 0x000a)
      000E52 E0               [24] 3162 	movx	a,@dptr
      000E53 FC               [12] 3163 	mov	r4,a
      000E54 A3               [24] 3164 	inc	dptr
      000E55 E0               [24] 3165 	movx	a,@dptr
      000E56 FD               [12] 3166 	mov	r5,a
      000E57 90 00 13         [24] 3167 	mov	dptr,#(_buffers_array + 0x0008)
      000E5A E0               [24] 3168 	movx	a,@dptr
      000E5B FA               [12] 3169 	mov	r2,a
      000E5C A3               [24] 3170 	inc	dptr
      000E5D E0               [24] 3171 	movx	a,@dptr
      000E5E FB               [12] 3172 	mov	r3,a
      000E5F C3               [12] 3173 	clr	c
      000E60 EC               [12] 3174 	mov	a,r4
      000E61 9A               [12] 3175 	subb	a,r2
      000E62 ED               [12] 3176 	mov	a,r5
      000E63 64 80            [12] 3177 	xrl	a,#0x80
      000E65 8B F0            [24] 3178 	mov	b,r3
      000E67 63 F0 80         [24] 3179 	xrl	b,#0x80
      000E6A 95 F0            [12] 3180 	subb	a,b
      000E6C 50 32            [24] 3181 	jnc	00102$
                                   3182 ;	program.c:699: *(buffers_array[0].buffer_start + buffers_array[0].num_char) = rec;
      000E6E 90 00 0D         [24] 3183 	mov	dptr,#(_buffers_array + 0x0002)
      000E71 E0               [24] 3184 	movx	a,@dptr
      000E72 F9               [12] 3185 	mov	r1,a
      000E73 A3               [24] 3186 	inc	dptr
      000E74 E0               [24] 3187 	movx	a,@dptr
      000E75 FA               [12] 3188 	mov	r2,a
      000E76 A3               [24] 3189 	inc	dptr
      000E77 E0               [24] 3190 	movx	a,@dptr
      000E78 FB               [12] 3191 	mov	r3,a
      000E79 EC               [12] 3192 	mov	a,r4
      000E7A 29               [12] 3193 	add	a,r1
      000E7B F9               [12] 3194 	mov	r1,a
      000E7C ED               [12] 3195 	mov	a,r5
      000E7D 3A               [12] 3196 	addc	a,r2
      000E7E FA               [12] 3197 	mov	r2,a
      000E7F 8E 05            [24] 3198 	mov	ar5,r6
      000E81 89 82            [24] 3199 	mov	dpl,r1
      000E83 8A 83            [24] 3200 	mov	dph,r2
      000E85 8B F0            [24] 3201 	mov	b,r3
      000E87 ED               [12] 3202 	mov	a,r5
      000E88 12 18 7A         [24] 3203 	lcall	__gptrput
                                   3204 ;	program.c:700: buffers_array[0].num_char += 1;
      000E8B 90 00 15         [24] 3205 	mov	dptr,#(_buffers_array + 0x000a)
      000E8E E0               [24] 3206 	movx	a,@dptr
      000E8F FC               [12] 3207 	mov	r4,a
      000E90 A3               [24] 3208 	inc	dptr
      000E91 E0               [24] 3209 	movx	a,@dptr
      000E92 FD               [12] 3210 	mov	r5,a
      000E93 0C               [12] 3211 	inc	r4
      000E94 BC 00 01         [24] 3212 	cjne	r4,#0x00,00173$
      000E97 0D               [12] 3213 	inc	r5
      000E98                       3214 00173$:
      000E98 90 00 15         [24] 3215 	mov	dptr,#(_buffers_array + 0x000a)
      000E9B EC               [12] 3216 	mov	a,r4
      000E9C F0               [24] 3217 	movx	@dptr,a
      000E9D ED               [12] 3218 	mov	a,r5
      000E9E A3               [24] 3219 	inc	dptr
      000E9F F0               [24] 3220 	movx	@dptr,a
      000EA0                       3221 00102$:
                                   3222 ;	program.c:702: program_stats.all_char_count += 1;
      000EA0 90 00 05         [24] 3223 	mov	dptr,#(_program_stats + 0x0004)
      000EA3 E0               [24] 3224 	movx	a,@dptr
      000EA4 FC               [12] 3225 	mov	r4,a
      000EA5 A3               [24] 3226 	inc	dptr
      000EA6 E0               [24] 3227 	movx	a,@dptr
      000EA7 FD               [12] 3228 	mov	r5,a
      000EA8 0C               [12] 3229 	inc	r4
      000EA9 BC 00 01         [24] 3230 	cjne	r4,#0x00,00174$
      000EAC 0D               [12] 3231 	inc	r5
      000EAD                       3232 00174$:
      000EAD 90 00 05         [24] 3233 	mov	dptr,#(_program_stats + 0x0004)
      000EB0 EC               [12] 3234 	mov	a,r4
      000EB1 F0               [24] 3235 	movx	@dptr,a
      000EB2 ED               [12] 3236 	mov	a,r5
      000EB3 A3               [24] 3237 	inc	dptr
      000EB4 F0               [24] 3238 	movx	@dptr,a
                                   3239 ;	program.c:703: program_stats.storage_char_count += 1;
      000EB5 90 00 07         [24] 3240 	mov	dptr,#(_program_stats + 0x0006)
      000EB8 E0               [24] 3241 	movx	a,@dptr
      000EB9 FC               [12] 3242 	mov	r4,a
      000EBA A3               [24] 3243 	inc	dptr
      000EBB E0               [24] 3244 	movx	a,@dptr
      000EBC FD               [12] 3245 	mov	r5,a
      000EBD 0C               [12] 3246 	inc	r4
      000EBE BC 00 01         [24] 3247 	cjne	r4,#0x00,00175$
      000EC1 0D               [12] 3248 	inc	r5
      000EC2                       3249 00175$:
      000EC2 90 00 07         [24] 3250 	mov	dptr,#(_program_stats + 0x0006)
      000EC5 EC               [12] 3251 	mov	a,r4
      000EC6 F0               [24] 3252 	movx	@dptr,a
      000EC7 ED               [12] 3253 	mov	a,r5
      000EC8 A3               [24] 3254 	inc	dptr
      000EC9 F0               [24] 3255 	movx	@dptr,a
      000ECA 02 0E 28         [24] 3256 	ljmp	00126$
      000ECD                       3257 00122$:
                                   3258 ;	program.c:705: else if (rec == 0x3F)
      000ECD BE 3F 1F         [24] 3259 	cjne	r6,#0x3f,00119$
      000ED0 BF 00 1C         [24] 3260 	cjne	r7,#0x00,00119$
                                   3261 ;	program.c:708: print_heap_stats();
      000ED3 12 11 B2         [24] 3262 	lcall	_print_heap_stats
                                   3263 ;	program.c:709: print_all_buffers();
      000ED6 12 12 73         [24] 3264 	lcall	_print_all_buffers
                                   3265 ;	program.c:710: dump_buff_zero_ascii();
      000ED9 12 0F 4F         [24] 3266 	lcall	_dump_buff_zero_ascii
                                   3267 ;	program.c:711: program_stats.all_char_count = 0;
      000EDC 90 00 05         [24] 3268 	mov	dptr,#(_program_stats + 0x0004)
      000EDF E4               [12] 3269 	clr	a
      000EE0 F0               [24] 3270 	movx	@dptr,a
      000EE1 A3               [24] 3271 	inc	dptr
      000EE2 F0               [24] 3272 	movx	@dptr,a
                                   3273 ;	program.c:712: program_stats.storage_char_count = 0;
      000EE3 90 00 07         [24] 3274 	mov	dptr,#(_program_stats + 0x0006)
      000EE6 F0               [24] 3275 	movx	@dptr,a
      000EE7 A3               [24] 3276 	inc	dptr
      000EE8 F0               [24] 3277 	movx	@dptr,a
                                   3278 ;	program.c:713: print_heap_menu();
      000EE9 12 0A 19         [24] 3279 	lcall	_print_heap_menu
      000EEC 02 0E 28         [24] 3280 	ljmp	00126$
      000EEF                       3281 00119$:
                                   3282 ;	program.c:715: else if (rec == 0x3D)
      000EEF BE 3D 0C         [24] 3283 	cjne	r6,#0x3d,00116$
      000EF2 BF 00 09         [24] 3284 	cjne	r7,#0x00,00116$
                                   3285 ;	program.c:718: dump_buff_zero_hex();
      000EF5 12 10 65         [24] 3286 	lcall	_dump_buff_zero_hex
                                   3287 ;	program.c:719: print_heap_menu();
      000EF8 12 0A 19         [24] 3288 	lcall	_print_heap_menu
      000EFB 02 0E 28         [24] 3289 	ljmp	00126$
      000EFE                       3290 00116$:
                                   3291 ;	program.c:721: else if (rec == 0x40)
      000EFE BE 40 0C         [24] 3292 	cjne	r6,#0x40,00113$
      000F01 BF 00 09         [24] 3293 	cjne	r7,#0x00,00113$
                                   3294 ;	program.c:724: at_clear_all_buffers();
      000F04 12 06 B5         [24] 3295 	lcall	_at_clear_all_buffers
                                   3296 ;	program.c:725: print_heap_menu();
      000F07 12 0A 19         [24] 3297 	lcall	_print_heap_menu
      000F0A 02 0E 28         [24] 3298 	ljmp	00126$
      000F0D                       3299 00113$:
                                   3300 ;	program.c:727: else if (rec == 0x2B)
      000F0D BE 2B 0C         [24] 3301 	cjne	r6,#0x2b,00110$
      000F10 BF 00 09         [24] 3302 	cjne	r7,#0x00,00110$
                                   3303 ;	program.c:730: create_new_buffer();
      000F13 12 0A C8         [24] 3304 	lcall	_create_new_buffer
                                   3305 ;	program.c:731: print_heap_menu();
      000F16 12 0A 19         [24] 3306 	lcall	_print_heap_menu
      000F19 02 0E 28         [24] 3307 	ljmp	00126$
      000F1C                       3308 00110$:
                                   3309 ;	program.c:733: else if (rec == 0x2D)
      000F1C BE 2D 0C         [24] 3310 	cjne	r6,#0x2d,00107$
      000F1F BF 00 09         [24] 3311 	cjne	r7,#0x00,00107$
                                   3312 ;	program.c:736: delete_buffer();
      000F22 12 07 4F         [24] 3313 	lcall	_delete_buffer
                                   3314 ;	program.c:737: print_heap_menu();
      000F25 12 0A 19         [24] 3315 	lcall	_print_heap_menu
      000F28 02 0E 28         [24] 3316 	ljmp	00126$
      000F2B                       3317 00107$:
                                   3318 ;	program.c:739: else if (rec == 0x4D)
      000F2B BE 4D 09         [24] 3319 	cjne	r6,#0x4d,00104$
      000F2E BF 00 06         [24] 3320 	cjne	r7,#0x00,00104$
                                   3321 ;	program.c:741: main_menu();
      000F31 12 04 7B         [24] 3322 	lcall	_main_menu
      000F34 02 0E 28         [24] 3323 	ljmp	00126$
      000F37                       3324 00104$:
                                   3325 ;	program.c:745: program_stats.all_char_count += 1;
      000F37 90 00 05         [24] 3326 	mov	dptr,#(_program_stats + 0x0004)
      000F3A E0               [24] 3327 	movx	a,@dptr
      000F3B FE               [12] 3328 	mov	r6,a
      000F3C A3               [24] 3329 	inc	dptr
      000F3D E0               [24] 3330 	movx	a,@dptr
      000F3E FF               [12] 3331 	mov	r7,a
      000F3F 0E               [12] 3332 	inc	r6
      000F40 BE 00 01         [24] 3333 	cjne	r6,#0x00,00188$
      000F43 0F               [12] 3334 	inc	r7
      000F44                       3335 00188$:
      000F44 90 00 05         [24] 3336 	mov	dptr,#(_program_stats + 0x0004)
      000F47 EE               [12] 3337 	mov	a,r6
      000F48 F0               [24] 3338 	movx	@dptr,a
      000F49 EF               [12] 3339 	mov	a,r7
      000F4A A3               [24] 3340 	inc	dptr
      000F4B F0               [24] 3341 	movx	@dptr,a
                                   3342 ;	program.c:748: }
      000F4C 02 0E 28         [24] 3343 	ljmp	00126$
                                   3344 ;------------------------------------------------------------
                                   3345 ;Allocation info for local variables in function 'dump_buff_zero_ascii'
                                   3346 ;------------------------------------------------------------
                                   3347 ;j                         Allocated with name '_dump_buff_zero_ascii_j_65537_137'
                                   3348 ;i                         Allocated with name '_dump_buff_zero_ascii_i_196609_139'
                                   3349 ;------------------------------------------------------------
                                   3350 ;	program.c:756: void dump_buff_zero_ascii()
                                   3351 ;	-----------------------------------------
                                   3352 ;	 function dump_buff_zero_ascii
                                   3353 ;	-----------------------------------------
      000F4F                       3354 _dump_buff_zero_ascii:
                                   3355 ;	program.c:758: DEBUGPORT(0x09);
      000F4F 75 82 09         [24] 3356 	mov	dpl,#0x09
      000F52 12 15 93         [24] 3357 	lcall	_dataout
                                   3358 ;	program.c:759: int j = 64;
      000F55 90 01 60         [24] 3359 	mov	dptr,#_dump_buff_zero_ascii_j_65537_137
      000F58 74 40            [12] 3360 	mov	a,#0x40
      000F5A F0               [24] 3361 	movx	@dptr,a
      000F5B E4               [12] 3362 	clr	a
      000F5C A3               [24] 3363 	inc	dptr
      000F5D F0               [24] 3364 	movx	@dptr,a
                                   3365 ;	program.c:760: if (buffers_array[0].num_char > 0)
      000F5E 90 00 15         [24] 3366 	mov	dptr,#(_buffers_array + 0x000a)
      000F61 E0               [24] 3367 	movx	a,@dptr
      000F62 FE               [12] 3368 	mov	r6,a
      000F63 A3               [24] 3369 	inc	dptr
      000F64 E0               [24] 3370 	movx	a,@dptr
      000F65 FF               [12] 3371 	mov	r7,a
      000F66 C3               [12] 3372 	clr	c
      000F67 E4               [12] 3373 	clr	a
      000F68 9E               [12] 3374 	subb	a,r6
      000F69 74 80            [12] 3375 	mov	a,#(0x00 ^ 0x80)
      000F6B 8F F0            [24] 3376 	mov	b,r7
      000F6D 63 F0 80         [24] 3377 	xrl	b,#0x80
      000F70 95 F0            [12] 3378 	subb	a,b
      000F72 40 03            [24] 3379 	jc	00135$
      000F74 02 10 4F         [24] 3380 	ljmp	00107$
      000F77                       3381 00135$:
                                   3382 ;	program.c:762: printf("\n\n\r***********Buffer-0-Contents*********** \n\r");
      000F77 74 14            [12] 3383 	mov	a,#___str_60
      000F79 C0 E0            [24] 3384 	push	acc
      000F7B 74 2E            [12] 3385 	mov	a,#(___str_60 >> 8)
      000F7D C0 E0            [24] 3386 	push	acc
      000F7F 74 80            [12] 3387 	mov	a,#0x80
      000F81 C0 E0            [24] 3388 	push	acc
      000F83 12 1A A8         [24] 3389 	lcall	_printf
      000F86 15 81            [12] 3390 	dec	sp
      000F88 15 81            [12] 3391 	dec	sp
      000F8A 15 81            [12] 3392 	dec	sp
                                   3393 ;	program.c:763: for (int i = 0; i < buffers_array[0].num_char; i++)
      000F8C 7E 00            [12] 3394 	mov	r6,#0x00
      000F8E 7F 00            [12] 3395 	mov	r7,#0x00
      000F90                       3396 00110$:
      000F90 90 00 15         [24] 3397 	mov	dptr,#(_buffers_array + 0x000a)
      000F93 E0               [24] 3398 	movx	a,@dptr
      000F94 FC               [12] 3399 	mov	r4,a
      000F95 A3               [24] 3400 	inc	dptr
      000F96 E0               [24] 3401 	movx	a,@dptr
      000F97 FD               [12] 3402 	mov	r5,a
      000F98 C3               [12] 3403 	clr	c
      000F99 EE               [12] 3404 	mov	a,r6
      000F9A 9C               [12] 3405 	subb	a,r4
      000F9B EF               [12] 3406 	mov	a,r7
      000F9C 64 80            [12] 3407 	xrl	a,#0x80
      000F9E 8D F0            [24] 3408 	mov	b,r5
      000FA0 63 F0 80         [24] 3409 	xrl	b,#0x80
      000FA3 95 F0            [12] 3410 	subb	a,b
      000FA5 40 03            [24] 3411 	jc	00136$
      000FA7 02 10 32         [24] 3412 	ljmp	00105$
      000FAA                       3413 00136$:
                                   3414 ;	program.c:765: if (j == 64)
      000FAA 90 01 60         [24] 3415 	mov	dptr,#_dump_buff_zero_ascii_j_65537_137
      000FAD E0               [24] 3416 	movx	a,@dptr
      000FAE FC               [12] 3417 	mov	r4,a
      000FAF A3               [24] 3418 	inc	dptr
      000FB0 E0               [24] 3419 	movx	a,@dptr
      000FB1 FD               [12] 3420 	mov	r5,a
      000FB2 BC 40 20         [24] 3421 	cjne	r4,#0x40,00102$
      000FB5 BD 00 1D         [24] 3422 	cjne	r5,#0x00,00102$
                                   3423 ;	program.c:767: printf("\n\r");
      000FB8 C0 07            [24] 3424 	push	ar7
      000FBA C0 06            [24] 3425 	push	ar6
      000FBC 74 42            [12] 3426 	mov	a,#___str_61
      000FBE C0 E0            [24] 3427 	push	acc
      000FC0 74 2E            [12] 3428 	mov	a,#(___str_61 >> 8)
      000FC2 C0 E0            [24] 3429 	push	acc
      000FC4 74 80            [12] 3430 	mov	a,#0x80
      000FC6 C0 E0            [24] 3431 	push	acc
      000FC8 12 1A A8         [24] 3432 	lcall	_printf
      000FCB 15 81            [12] 3433 	dec	sp
      000FCD 15 81            [12] 3434 	dec	sp
      000FCF 15 81            [12] 3435 	dec	sp
      000FD1 D0 06            [24] 3436 	pop	ar6
      000FD3 D0 07            [24] 3437 	pop	ar7
      000FD5                       3438 00102$:
                                   3439 ;	program.c:769: putchar(*(buffers_array[0].buffer_start + i));
      000FD5 90 00 0D         [24] 3440 	mov	dptr,#(_buffers_array + 0x0002)
      000FD8 E0               [24] 3441 	movx	a,@dptr
      000FD9 FB               [12] 3442 	mov	r3,a
      000FDA A3               [24] 3443 	inc	dptr
      000FDB E0               [24] 3444 	movx	a,@dptr
      000FDC FC               [12] 3445 	mov	r4,a
      000FDD A3               [24] 3446 	inc	dptr
      000FDE E0               [24] 3447 	movx	a,@dptr
      000FDF FD               [12] 3448 	mov	r5,a
      000FE0 EE               [12] 3449 	mov	a,r6
      000FE1 2B               [12] 3450 	add	a,r3
      000FE2 FB               [12] 3451 	mov	r3,a
      000FE3 EF               [12] 3452 	mov	a,r7
      000FE4 3C               [12] 3453 	addc	a,r4
      000FE5 FC               [12] 3454 	mov	r4,a
      000FE6 8B 82            [24] 3455 	mov	dpl,r3
      000FE8 8C 83            [24] 3456 	mov	dph,r4
      000FEA 8D F0            [24] 3457 	mov	b,r5
      000FEC 12 24 C7         [24] 3458 	lcall	__gptrget
      000FEF FB               [12] 3459 	mov	r3,a
      000FF0 7D 00            [12] 3460 	mov	r5,#0x00
      000FF2 8B 82            [24] 3461 	mov	dpl,r3
      000FF4 8D 83            [24] 3462 	mov	dph,r5
      000FF6 C0 07            [24] 3463 	push	ar7
      000FF8 C0 06            [24] 3464 	push	ar6
      000FFA 12 15 38         [24] 3465 	lcall	_putchar
      000FFD D0 06            [24] 3466 	pop	ar6
      000FFF D0 07            [24] 3467 	pop	ar7
                                   3468 ;	program.c:770: j--;
      001001 90 01 60         [24] 3469 	mov	dptr,#_dump_buff_zero_ascii_j_65537_137
      001004 E0               [24] 3470 	movx	a,@dptr
      001005 24 FF            [12] 3471 	add	a,#0xff
      001007 FC               [12] 3472 	mov	r4,a
      001008 A3               [24] 3473 	inc	dptr
      001009 E0               [24] 3474 	movx	a,@dptr
      00100A 34 FF            [12] 3475 	addc	a,#0xff
      00100C FD               [12] 3476 	mov	r5,a
      00100D 90 01 60         [24] 3477 	mov	dptr,#_dump_buff_zero_ascii_j_65537_137
      001010 EC               [12] 3478 	mov	a,r4
      001011 F0               [24] 3479 	movx	@dptr,a
      001012 ED               [12] 3480 	mov	a,r5
      001013 A3               [24] 3481 	inc	dptr
      001014 F0               [24] 3482 	movx	@dptr,a
                                   3483 ;	program.c:771: if (j == 0)
      001015 90 01 60         [24] 3484 	mov	dptr,#_dump_buff_zero_ascii_j_65537_137
      001018 E0               [24] 3485 	movx	a,@dptr
      001019 F5 F0            [12] 3486 	mov	b,a
      00101B A3               [24] 3487 	inc	dptr
      00101C E0               [24] 3488 	movx	a,@dptr
      00101D 45 F0            [12] 3489 	orl	a,b
      00101F 70 09            [24] 3490 	jnz	00111$
                                   3491 ;	program.c:772: j = 64;
      001021 90 01 60         [24] 3492 	mov	dptr,#_dump_buff_zero_ascii_j_65537_137
      001024 74 40            [12] 3493 	mov	a,#0x40
      001026 F0               [24] 3494 	movx	@dptr,a
      001027 E4               [12] 3495 	clr	a
      001028 A3               [24] 3496 	inc	dptr
      001029 F0               [24] 3497 	movx	@dptr,a
      00102A                       3498 00111$:
                                   3499 ;	program.c:763: for (int i = 0; i < buffers_array[0].num_char; i++)
      00102A 0E               [12] 3500 	inc	r6
      00102B BE 00 01         [24] 3501 	cjne	r6,#0x00,00140$
      00102E 0F               [12] 3502 	inc	r7
      00102F                       3503 00140$:
      00102F 02 0F 90         [24] 3504 	ljmp	00110$
      001032                       3505 00105$:
                                   3506 ;	program.c:774: buffers_array[0].num_char = 0;
      001032 90 00 15         [24] 3507 	mov	dptr,#(_buffers_array + 0x000a)
      001035 E4               [12] 3508 	clr	a
      001036 F0               [24] 3509 	movx	@dptr,a
      001037 A3               [24] 3510 	inc	dptr
      001038 F0               [24] 3511 	movx	@dptr,a
                                   3512 ;	program.c:775: printf("\n\n\r");
      001039 74 45            [12] 3513 	mov	a,#___str_62
      00103B C0 E0            [24] 3514 	push	acc
      00103D 74 2E            [12] 3515 	mov	a,#(___str_62 >> 8)
      00103F C0 E0            [24] 3516 	push	acc
      001041 74 80            [12] 3517 	mov	a,#0x80
      001043 C0 E0            [24] 3518 	push	acc
      001045 12 1A A8         [24] 3519 	lcall	_printf
      001048 15 81            [12] 3520 	dec	sp
      00104A 15 81            [12] 3521 	dec	sp
      00104C 15 81            [12] 3522 	dec	sp
      00104E 22               [24] 3523 	ret
      00104F                       3524 00107$:
                                   3525 ;	program.c:779: printf("Buffer0 is Empty....\n\r");
      00104F 74 49            [12] 3526 	mov	a,#___str_63
      001051 C0 E0            [24] 3527 	push	acc
      001053 74 2E            [12] 3528 	mov	a,#(___str_63 >> 8)
      001055 C0 E0            [24] 3529 	push	acc
      001057 74 80            [12] 3530 	mov	a,#0x80
      001059 C0 E0            [24] 3531 	push	acc
      00105B 12 1A A8         [24] 3532 	lcall	_printf
      00105E 15 81            [12] 3533 	dec	sp
      001060 15 81            [12] 3534 	dec	sp
      001062 15 81            [12] 3535 	dec	sp
                                   3536 ;	program.c:781: }
      001064 22               [24] 3537 	ret
                                   3538 ;------------------------------------------------------------
                                   3539 ;Allocation info for local variables in function 'dump_buff_zero_hex'
                                   3540 ;------------------------------------------------------------
                                   3541 ;j                         Allocated with name '_dump_buff_zero_hex_j_131073_145'
                                   3542 ;i                         Allocated with name '_dump_buff_zero_hex_i_196609_146'
                                   3543 ;------------------------------------------------------------
                                   3544 ;	program.c:788: void dump_buff_zero_hex()
                                   3545 ;	-----------------------------------------
                                   3546 ;	 function dump_buff_zero_hex
                                   3547 ;	-----------------------------------------
      001065                       3548 _dump_buff_zero_hex:
                                   3549 ;	program.c:790: DEBUGPORT(0xA);
      001065 75 82 0A         [24] 3550 	mov	dpl,#0x0a
      001068 12 15 93         [24] 3551 	lcall	_dataout
                                   3552 ;	program.c:791: if (buffers_array[0].num_char > 0)
      00106B 90 00 15         [24] 3553 	mov	dptr,#(_buffers_array + 0x000a)
      00106E E0               [24] 3554 	movx	a,@dptr
      00106F FE               [12] 3555 	mov	r6,a
      001070 A3               [24] 3556 	inc	dptr
      001071 E0               [24] 3557 	movx	a,@dptr
      001072 FF               [12] 3558 	mov	r7,a
      001073 C3               [12] 3559 	clr	c
      001074 E4               [12] 3560 	clr	a
      001075 9E               [12] 3561 	subb	a,r6
      001076 74 80            [12] 3562 	mov	a,#(0x00 ^ 0x80)
      001078 8F F0            [24] 3563 	mov	b,r7
      00107A 63 F0 80         [24] 3564 	xrl	b,#0x80
      00107D 95 F0            [12] 3565 	subb	a,b
      00107F 40 03            [24] 3566 	jc	00135$
      001081 02 11 9C         [24] 3567 	ljmp	00107$
      001084                       3568 00135$:
                                   3569 ;	program.c:793: printf("\n\r-------------------------HEXDUMP--------------------------------");
      001084 74 60            [12] 3570 	mov	a,#___str_64
      001086 C0 E0            [24] 3571 	push	acc
      001088 74 2E            [12] 3572 	mov	a,#(___str_64 >> 8)
      00108A C0 E0            [24] 3573 	push	acc
      00108C 74 80            [12] 3574 	mov	a,#0x80
      00108E C0 E0            [24] 3575 	push	acc
      001090 12 1A A8         [24] 3576 	lcall	_printf
      001093 15 81            [12] 3577 	dec	sp
      001095 15 81            [12] 3578 	dec	sp
      001097 15 81            [12] 3579 	dec	sp
                                   3580 ;	program.c:794: printf("\n\r    ADDR: +0 +1 +2 +3 +4 +5 +6 +7 +8 +9 +A +B +C +D +E +F \n\r");
      001099 74 A3            [12] 3581 	mov	a,#___str_65
      00109B C0 E0            [24] 3582 	push	acc
      00109D 74 2E            [12] 3583 	mov	a,#(___str_65 >> 8)
      00109F C0 E0            [24] 3584 	push	acc
      0010A1 74 80            [12] 3585 	mov	a,#0x80
      0010A3 C0 E0            [24] 3586 	push	acc
      0010A5 12 1A A8         [24] 3587 	lcall	_printf
      0010A8 15 81            [12] 3588 	dec	sp
      0010AA 15 81            [12] 3589 	dec	sp
      0010AC 15 81            [12] 3590 	dec	sp
                                   3591 ;	program.c:795: int j = 16;
      0010AE 90 01 62         [24] 3592 	mov	dptr,#_dump_buff_zero_hex_j_131073_145
      0010B1 74 10            [12] 3593 	mov	a,#0x10
      0010B3 F0               [24] 3594 	movx	@dptr,a
      0010B4 E4               [12] 3595 	clr	a
      0010B5 A3               [24] 3596 	inc	dptr
      0010B6 F0               [24] 3597 	movx	@dptr,a
                                   3598 ;	program.c:797: for (int i = 0; i < buffers_array[0].num_char; i++)
      0010B7 7E 00            [12] 3599 	mov	r6,#0x00
      0010B9 7F 00            [12] 3600 	mov	r7,#0x00
      0010BB                       3601 00110$:
      0010BB 90 00 15         [24] 3602 	mov	dptr,#(_buffers_array + 0x000a)
      0010BE E0               [24] 3603 	movx	a,@dptr
      0010BF FC               [12] 3604 	mov	r4,a
      0010C0 A3               [24] 3605 	inc	dptr
      0010C1 E0               [24] 3606 	movx	a,@dptr
      0010C2 FD               [12] 3607 	mov	r5,a
      0010C3 C3               [12] 3608 	clr	c
      0010C4 EE               [12] 3609 	mov	a,r6
      0010C5 9C               [12] 3610 	subb	a,r4
      0010C6 EF               [12] 3611 	mov	a,r7
      0010C7 64 80            [12] 3612 	xrl	a,#0x80
      0010C9 8D F0            [24] 3613 	mov	b,r5
      0010CB 63 F0 80         [24] 3614 	xrl	b,#0x80
      0010CE 95 F0            [12] 3615 	subb	a,b
      0010D0 40 03            [24] 3616 	jc	00136$
      0010D2 02 11 86         [24] 3617 	ljmp	00105$
      0010D5                       3618 00136$:
                                   3619 ;	program.c:799: if (j == 16)
      0010D5 90 01 62         [24] 3620 	mov	dptr,#_dump_buff_zero_hex_j_131073_145
      0010D8 E0               [24] 3621 	movx	a,@dptr
      0010D9 FC               [12] 3622 	mov	r4,a
      0010DA A3               [24] 3623 	inc	dptr
      0010DB E0               [24] 3624 	movx	a,@dptr
      0010DC FD               [12] 3625 	mov	r5,a
      0010DD BC 10 37         [24] 3626 	cjne	r4,#0x10,00102$
      0010E0 BD 00 34         [24] 3627 	cjne	r5,#0x00,00102$
                                   3628 ;	program.c:801: printf("\n\r%p: ", (buffers_array[0].buffer_start + i));
      0010E3 90 00 0D         [24] 3629 	mov	dptr,#(_buffers_array + 0x0002)
      0010E6 E0               [24] 3630 	movx	a,@dptr
      0010E7 FB               [12] 3631 	mov	r3,a
      0010E8 A3               [24] 3632 	inc	dptr
      0010E9 E0               [24] 3633 	movx	a,@dptr
      0010EA FC               [12] 3634 	mov	r4,a
      0010EB A3               [24] 3635 	inc	dptr
      0010EC E0               [24] 3636 	movx	a,@dptr
      0010ED FD               [12] 3637 	mov	r5,a
      0010EE EE               [12] 3638 	mov	a,r6
      0010EF 2B               [12] 3639 	add	a,r3
      0010F0 FB               [12] 3640 	mov	r3,a
      0010F1 EF               [12] 3641 	mov	a,r7
      0010F2 3C               [12] 3642 	addc	a,r4
      0010F3 FC               [12] 3643 	mov	r4,a
      0010F4 C0 07            [24] 3644 	push	ar7
      0010F6 C0 06            [24] 3645 	push	ar6
      0010F8 C0 03            [24] 3646 	push	ar3
      0010FA C0 04            [24] 3647 	push	ar4
      0010FC C0 05            [24] 3648 	push	ar5
      0010FE 74 E2            [12] 3649 	mov	a,#___str_66
      001100 C0 E0            [24] 3650 	push	acc
      001102 74 2E            [12] 3651 	mov	a,#(___str_66 >> 8)
      001104 C0 E0            [24] 3652 	push	acc
      001106 74 80            [12] 3653 	mov	a,#0x80
      001108 C0 E0            [24] 3654 	push	acc
      00110A 12 1A A8         [24] 3655 	lcall	_printf
      00110D E5 81            [12] 3656 	mov	a,sp
      00110F 24 FA            [12] 3657 	add	a,#0xfa
      001111 F5 81            [12] 3658 	mov	sp,a
      001113 D0 06            [24] 3659 	pop	ar6
      001115 D0 07            [24] 3660 	pop	ar7
      001117                       3661 00102$:
                                   3662 ;	program.c:803: printf("%x ", *(buffers_array[0].buffer_start + i));
      001117 90 00 0D         [24] 3663 	mov	dptr,#(_buffers_array + 0x0002)
      00111A E0               [24] 3664 	movx	a,@dptr
      00111B FB               [12] 3665 	mov	r3,a
      00111C A3               [24] 3666 	inc	dptr
      00111D E0               [24] 3667 	movx	a,@dptr
      00111E FC               [12] 3668 	mov	r4,a
      00111F A3               [24] 3669 	inc	dptr
      001120 E0               [24] 3670 	movx	a,@dptr
      001121 FD               [12] 3671 	mov	r5,a
      001122 EE               [12] 3672 	mov	a,r6
      001123 2B               [12] 3673 	add	a,r3
      001124 FB               [12] 3674 	mov	r3,a
      001125 EF               [12] 3675 	mov	a,r7
      001126 3C               [12] 3676 	addc	a,r4
      001127 FC               [12] 3677 	mov	r4,a
      001128 8B 82            [24] 3678 	mov	dpl,r3
      00112A 8C 83            [24] 3679 	mov	dph,r4
      00112C 8D F0            [24] 3680 	mov	b,r5
      00112E 12 24 C7         [24] 3681 	lcall	__gptrget
      001131 FB               [12] 3682 	mov	r3,a
      001132 7D 00            [12] 3683 	mov	r5,#0x00
      001134 C0 07            [24] 3684 	push	ar7
      001136 C0 06            [24] 3685 	push	ar6
      001138 C0 03            [24] 3686 	push	ar3
      00113A C0 05            [24] 3687 	push	ar5
      00113C 74 E9            [12] 3688 	mov	a,#___str_67
      00113E C0 E0            [24] 3689 	push	acc
      001140 74 2E            [12] 3690 	mov	a,#(___str_67 >> 8)
      001142 C0 E0            [24] 3691 	push	acc
      001144 74 80            [12] 3692 	mov	a,#0x80
      001146 C0 E0            [24] 3693 	push	acc
      001148 12 1A A8         [24] 3694 	lcall	_printf
      00114B E5 81            [12] 3695 	mov	a,sp
      00114D 24 FB            [12] 3696 	add	a,#0xfb
      00114F F5 81            [12] 3697 	mov	sp,a
      001151 D0 06            [24] 3698 	pop	ar6
      001153 D0 07            [24] 3699 	pop	ar7
                                   3700 ;	program.c:804: j--;
      001155 90 01 62         [24] 3701 	mov	dptr,#_dump_buff_zero_hex_j_131073_145
      001158 E0               [24] 3702 	movx	a,@dptr
      001159 24 FF            [12] 3703 	add	a,#0xff
      00115B FC               [12] 3704 	mov	r4,a
      00115C A3               [24] 3705 	inc	dptr
      00115D E0               [24] 3706 	movx	a,@dptr
      00115E 34 FF            [12] 3707 	addc	a,#0xff
      001160 FD               [12] 3708 	mov	r5,a
      001161 90 01 62         [24] 3709 	mov	dptr,#_dump_buff_zero_hex_j_131073_145
      001164 EC               [12] 3710 	mov	a,r4
      001165 F0               [24] 3711 	movx	@dptr,a
      001166 ED               [12] 3712 	mov	a,r5
      001167 A3               [24] 3713 	inc	dptr
      001168 F0               [24] 3714 	movx	@dptr,a
                                   3715 ;	program.c:805: if (j == 0)
      001169 90 01 62         [24] 3716 	mov	dptr,#_dump_buff_zero_hex_j_131073_145
      00116C E0               [24] 3717 	movx	a,@dptr
      00116D F5 F0            [12] 3718 	mov	b,a
      00116F A3               [24] 3719 	inc	dptr
      001170 E0               [24] 3720 	movx	a,@dptr
      001171 45 F0            [12] 3721 	orl	a,b
      001173 70 09            [24] 3722 	jnz	00111$
                                   3723 ;	program.c:806: j = 16;
      001175 90 01 62         [24] 3724 	mov	dptr,#_dump_buff_zero_hex_j_131073_145
      001178 74 10            [12] 3725 	mov	a,#0x10
      00117A F0               [24] 3726 	movx	@dptr,a
      00117B E4               [12] 3727 	clr	a
      00117C A3               [24] 3728 	inc	dptr
      00117D F0               [24] 3729 	movx	@dptr,a
      00117E                       3730 00111$:
                                   3731 ;	program.c:797: for (int i = 0; i < buffers_array[0].num_char; i++)
      00117E 0E               [12] 3732 	inc	r6
      00117F BE 00 01         [24] 3733 	cjne	r6,#0x00,00140$
      001182 0F               [12] 3734 	inc	r7
      001183                       3735 00140$:
      001183 02 10 BB         [24] 3736 	ljmp	00110$
      001186                       3737 00105$:
                                   3738 ;	program.c:808: printf("\n\n\r");
      001186 74 45            [12] 3739 	mov	a,#___str_62
      001188 C0 E0            [24] 3740 	push	acc
      00118A 74 2E            [12] 3741 	mov	a,#(___str_62 >> 8)
      00118C C0 E0            [24] 3742 	push	acc
      00118E 74 80            [12] 3743 	mov	a,#0x80
      001190 C0 E0            [24] 3744 	push	acc
      001192 12 1A A8         [24] 3745 	lcall	_printf
      001195 15 81            [12] 3746 	dec	sp
      001197 15 81            [12] 3747 	dec	sp
      001199 15 81            [12] 3748 	dec	sp
      00119B 22               [24] 3749 	ret
      00119C                       3750 00107$:
                                   3751 ;	program.c:812: printf("Buffer 0 is empty...\n\r");
      00119C 74 ED            [12] 3752 	mov	a,#___str_68
      00119E C0 E0            [24] 3753 	push	acc
      0011A0 74 2E            [12] 3754 	mov	a,#(___str_68 >> 8)
      0011A2 C0 E0            [24] 3755 	push	acc
      0011A4 74 80            [12] 3756 	mov	a,#0x80
      0011A6 C0 E0            [24] 3757 	push	acc
      0011A8 12 1A A8         [24] 3758 	lcall	_printf
      0011AB 15 81            [12] 3759 	dec	sp
      0011AD 15 81            [12] 3760 	dec	sp
      0011AF 15 81            [12] 3761 	dec	sp
                                   3762 ;	program.c:814: }
      0011B1 22               [24] 3763 	ret
                                   3764 ;------------------------------------------------------------
                                   3765 ;Allocation info for local variables in function 'print_heap_stats'
                                   3766 ;------------------------------------------------------------
                                   3767 ;	program.c:821: void print_heap_stats()
                                   3768 ;	-----------------------------------------
                                   3769 ;	 function print_heap_stats
                                   3770 ;	-----------------------------------------
      0011B2                       3771 _print_heap_stats:
                                   3772 ;	program.c:823: DEBUGPORT(0xB);
      0011B2 75 82 0B         [24] 3773 	mov	dpl,#0x0b
      0011B5 12 15 93         [24] 3774 	lcall	_dataout
                                   3775 ;	program.c:824: printf("\n\r****************HEAP*STATS*************\n\r");
      0011B8 74 04            [12] 3776 	mov	a,#___str_69
      0011BA C0 E0            [24] 3777 	push	acc
      0011BC 74 2F            [12] 3778 	mov	a,#(___str_69 >> 8)
      0011BE C0 E0            [24] 3779 	push	acc
      0011C0 74 80            [12] 3780 	mov	a,#0x80
      0011C2 C0 E0            [24] 3781 	push	acc
      0011C4 12 1A A8         [24] 3782 	lcall	_printf
      0011C7 15 81            [12] 3783 	dec	sp
      0011C9 15 81            [12] 3784 	dec	sp
      0011CB 15 81            [12] 3785 	dec	sp
                                   3786 ;	program.c:825: printf("Total Heap Size: %d \n\r", program_stats.total_heap_size);
      0011CD 90 00 01         [24] 3787 	mov	dptr,#_program_stats
      0011D0 E0               [24] 3788 	movx	a,@dptr
      0011D1 FE               [12] 3789 	mov	r6,a
      0011D2 A3               [24] 3790 	inc	dptr
      0011D3 E0               [24] 3791 	movx	a,@dptr
      0011D4 FF               [12] 3792 	mov	r7,a
      0011D5 C0 06            [24] 3793 	push	ar6
      0011D7 C0 07            [24] 3794 	push	ar7
      0011D9 74 30            [12] 3795 	mov	a,#___str_70
      0011DB C0 E0            [24] 3796 	push	acc
      0011DD 74 2F            [12] 3797 	mov	a,#(___str_70 >> 8)
      0011DF C0 E0            [24] 3798 	push	acc
      0011E1 74 80            [12] 3799 	mov	a,#0x80
      0011E3 C0 E0            [24] 3800 	push	acc
      0011E5 12 1A A8         [24] 3801 	lcall	_printf
      0011E8 E5 81            [12] 3802 	mov	a,sp
      0011EA 24 FB            [12] 3803 	add	a,#0xfb
      0011EC F5 81            [12] 3804 	mov	sp,a
                                   3805 ;	program.c:826: printf("Allocated Heap Size: %d \n\r", program_stats.allocated_heap);
      0011EE 90 00 03         [24] 3806 	mov	dptr,#(_program_stats + 0x0002)
      0011F1 E0               [24] 3807 	movx	a,@dptr
      0011F2 FE               [12] 3808 	mov	r6,a
      0011F3 A3               [24] 3809 	inc	dptr
      0011F4 E0               [24] 3810 	movx	a,@dptr
      0011F5 FF               [12] 3811 	mov	r7,a
      0011F6 C0 06            [24] 3812 	push	ar6
      0011F8 C0 07            [24] 3813 	push	ar7
      0011FA 74 47            [12] 3814 	mov	a,#___str_71
      0011FC C0 E0            [24] 3815 	push	acc
      0011FE 74 2F            [12] 3816 	mov	a,#(___str_71 >> 8)
      001200 C0 E0            [24] 3817 	push	acc
      001202 74 80            [12] 3818 	mov	a,#0x80
      001204 C0 E0            [24] 3819 	push	acc
      001206 12 1A A8         [24] 3820 	lcall	_printf
      001209 E5 81            [12] 3821 	mov	a,sp
      00120B 24 FB            [12] 3822 	add	a,#0xfb
      00120D F5 81            [12] 3823 	mov	sp,a
                                   3824 ;	program.c:827: printf("All Chars: %d \n\r", program_stats.all_char_count);
      00120F 90 00 05         [24] 3825 	mov	dptr,#(_program_stats + 0x0004)
      001212 E0               [24] 3826 	movx	a,@dptr
      001213 FE               [12] 3827 	mov	r6,a
      001214 A3               [24] 3828 	inc	dptr
      001215 E0               [24] 3829 	movx	a,@dptr
      001216 FF               [12] 3830 	mov	r7,a
      001217 C0 06            [24] 3831 	push	ar6
      001219 C0 07            [24] 3832 	push	ar7
      00121B 74 62            [12] 3833 	mov	a,#___str_72
      00121D C0 E0            [24] 3834 	push	acc
      00121F 74 2F            [12] 3835 	mov	a,#(___str_72 >> 8)
      001221 C0 E0            [24] 3836 	push	acc
      001223 74 80            [12] 3837 	mov	a,#0x80
      001225 C0 E0            [24] 3838 	push	acc
      001227 12 1A A8         [24] 3839 	lcall	_printf
      00122A E5 81            [12] 3840 	mov	a,sp
      00122C 24 FB            [12] 3841 	add	a,#0xfb
      00122E F5 81            [12] 3842 	mov	sp,a
                                   3843 ;	program.c:828: printf("Storage Chars: %d \n\r", program_stats.storage_char_count);
      001230 90 00 07         [24] 3844 	mov	dptr,#(_program_stats + 0x0006)
      001233 E0               [24] 3845 	movx	a,@dptr
      001234 FE               [12] 3846 	mov	r6,a
      001235 A3               [24] 3847 	inc	dptr
      001236 E0               [24] 3848 	movx	a,@dptr
      001237 FF               [12] 3849 	mov	r7,a
      001238 C0 06            [24] 3850 	push	ar6
      00123A C0 07            [24] 3851 	push	ar7
      00123C 74 73            [12] 3852 	mov	a,#___str_73
      00123E C0 E0            [24] 3853 	push	acc
      001240 74 2F            [12] 3854 	mov	a,#(___str_73 >> 8)
      001242 C0 E0            [24] 3855 	push	acc
      001244 74 80            [12] 3856 	mov	a,#0x80
      001246 C0 E0            [24] 3857 	push	acc
      001248 12 1A A8         [24] 3858 	lcall	_printf
      00124B E5 81            [12] 3859 	mov	a,sp
      00124D 24 FB            [12] 3860 	add	a,#0xfb
      00124F F5 81            [12] 3861 	mov	sp,a
                                   3862 ;	program.c:829: printf("Total Buffers: %d \n\r", program_stats.total_buffers);
      001251 90 00 09         [24] 3863 	mov	dptr,#(_program_stats + 0x0008)
      001254 E0               [24] 3864 	movx	a,@dptr
      001255 FE               [12] 3865 	mov	r6,a
      001256 A3               [24] 3866 	inc	dptr
      001257 E0               [24] 3867 	movx	a,@dptr
      001258 FF               [12] 3868 	mov	r7,a
      001259 C0 06            [24] 3869 	push	ar6
      00125B C0 07            [24] 3870 	push	ar7
      00125D 74 88            [12] 3871 	mov	a,#___str_74
      00125F C0 E0            [24] 3872 	push	acc
      001261 74 2F            [12] 3873 	mov	a,#(___str_74 >> 8)
      001263 C0 E0            [24] 3874 	push	acc
      001265 74 80            [12] 3875 	mov	a,#0x80
      001267 C0 E0            [24] 3876 	push	acc
      001269 12 1A A8         [24] 3877 	lcall	_printf
      00126C E5 81            [12] 3878 	mov	a,sp
      00126E 24 FB            [12] 3879 	add	a,#0xfb
      001270 F5 81            [12] 3880 	mov	sp,a
                                   3881 ;	program.c:830: }
      001272 22               [24] 3882 	ret
                                   3883 ;------------------------------------------------------------
                                   3884 ;Allocation info for local variables in function 'print_all_buffers'
                                   3885 ;------------------------------------------------------------
                                   3886 ;i                         Allocated with name '_print_all_buffers_i_131072_152'
                                   3887 ;------------------------------------------------------------
                                   3888 ;	program.c:837: void print_all_buffers()
                                   3889 ;	-----------------------------------------
                                   3890 ;	 function print_all_buffers
                                   3891 ;	-----------------------------------------
      001273                       3892 _print_all_buffers:
                                   3893 ;	program.c:839: DEBUGPORT(0xC)
      001273 75 82 0C         [24] 3894 	mov	dpl,#0x0c
      001276 12 15 93         [24] 3895 	lcall	_dataout
                                   3896 ;	program.c:840: for (int i = 0; i < program_stats.total_buffers; i++)
      001279 7E 00            [12] 3897 	mov	r6,#0x00
      00127B 7F 00            [12] 3898 	mov	r7,#0x00
      00127D                       3899 00103$:
      00127D 90 00 09         [24] 3900 	mov	dptr,#(_program_stats + 0x0008)
      001280 E0               [24] 3901 	movx	a,@dptr
      001281 FC               [12] 3902 	mov	r4,a
      001282 A3               [24] 3903 	inc	dptr
      001283 E0               [24] 3904 	movx	a,@dptr
      001284 FD               [12] 3905 	mov	r5,a
      001285 C3               [12] 3906 	clr	c
      001286 EE               [12] 3907 	mov	a,r6
      001287 9C               [12] 3908 	subb	a,r4
      001288 EF               [12] 3909 	mov	a,r7
      001289 64 80            [12] 3910 	xrl	a,#0x80
      00128B 8D F0            [24] 3911 	mov	b,r5
      00128D 63 F0 80         [24] 3912 	xrl	b,#0x80
      001290 95 F0            [12] 3913 	subb	a,b
      001292 40 03            [24] 3914 	jc	00116$
      001294 02 13 CD         [24] 3915 	ljmp	00101$
      001297                       3916 00116$:
                                   3917 ;	program.c:842: printf("****************BUFFER*%d***************\n\r", i);
      001297 C0 07            [24] 3918 	push	ar7
      001299 C0 06            [24] 3919 	push	ar6
      00129B C0 06            [24] 3920 	push	ar6
      00129D C0 07            [24] 3921 	push	ar7
      00129F 74 9D            [12] 3922 	mov	a,#___str_75
      0012A1 C0 E0            [24] 3923 	push	acc
      0012A3 74 2F            [12] 3924 	mov	a,#(___str_75 >> 8)
      0012A5 C0 E0            [24] 3925 	push	acc
      0012A7 74 80            [12] 3926 	mov	a,#0x80
      0012A9 C0 E0            [24] 3927 	push	acc
      0012AB 12 1A A8         [24] 3928 	lcall	_printf
      0012AE E5 81            [12] 3929 	mov	a,sp
      0012B0 24 FB            [12] 3930 	add	a,#0xfb
      0012B2 F5 81            [12] 3931 	mov	sp,a
      0012B4 D0 06            [24] 3932 	pop	ar6
      0012B6 D0 07            [24] 3933 	pop	ar7
                                   3934 ;	program.c:843: printf("Buffer#: %d \n\r", buffers_array[i].buffer_num);
      0012B8 90 15 14         [24] 3935 	mov	dptr,#__mulint_PARM_2
      0012BB EE               [12] 3936 	mov	a,r6
      0012BC F0               [24] 3937 	movx	@dptr,a
      0012BD EF               [12] 3938 	mov	a,r7
      0012BE A3               [24] 3939 	inc	dptr
      0012BF F0               [24] 3940 	movx	@dptr,a
      0012C0 90 00 0C         [24] 3941 	mov	dptr,#0x000c
      0012C3 C0 07            [24] 3942 	push	ar7
      0012C5 C0 06            [24] 3943 	push	ar6
      0012C7 12 1A 3A         [24] 3944 	lcall	__mulint
      0012CA AC 82            [24] 3945 	mov	r4,dpl
      0012CC AD 83            [24] 3946 	mov	r5,dph
      0012CE EC               [12] 3947 	mov	a,r4
      0012CF 24 0B            [12] 3948 	add	a,#_buffers_array
      0012D1 F5 82            [12] 3949 	mov	dpl,a
      0012D3 ED               [12] 3950 	mov	a,r5
      0012D4 34 00            [12] 3951 	addc	a,#(_buffers_array >> 8)
      0012D6 F5 83            [12] 3952 	mov	dph,a
      0012D8 E0               [24] 3953 	movx	a,@dptr
      0012D9 FA               [12] 3954 	mov	r2,a
      0012DA A3               [24] 3955 	inc	dptr
      0012DB E0               [24] 3956 	movx	a,@dptr
      0012DC FB               [12] 3957 	mov	r3,a
      0012DD C0 05            [24] 3958 	push	ar5
      0012DF C0 04            [24] 3959 	push	ar4
      0012E1 C0 02            [24] 3960 	push	ar2
      0012E3 C0 03            [24] 3961 	push	ar3
      0012E5 74 C8            [12] 3962 	mov	a,#___str_76
      0012E7 C0 E0            [24] 3963 	push	acc
      0012E9 74 2F            [12] 3964 	mov	a,#(___str_76 >> 8)
      0012EB C0 E0            [24] 3965 	push	acc
      0012ED 74 80            [12] 3966 	mov	a,#0x80
      0012EF C0 E0            [24] 3967 	push	acc
      0012F1 12 1A A8         [24] 3968 	lcall	_printf
      0012F4 E5 81            [12] 3969 	mov	a,sp
      0012F6 24 FB            [12] 3970 	add	a,#0xfb
      0012F8 F5 81            [12] 3971 	mov	sp,a
      0012FA D0 04            [24] 3972 	pop	ar4
      0012FC D0 05            [24] 3973 	pop	ar5
                                   3974 ;	program.c:844: printf("BufferStart: %p \n\r", buffers_array[i].buffer_start);
      0012FE EC               [12] 3975 	mov	a,r4
      0012FF 24 0B            [12] 3976 	add	a,#_buffers_array
      001301 FC               [12] 3977 	mov	r4,a
      001302 ED               [12] 3978 	mov	a,r5
      001303 34 00            [12] 3979 	addc	a,#(_buffers_array >> 8)
      001305 FD               [12] 3980 	mov	r5,a
      001306 8C 82            [24] 3981 	mov	dpl,r4
      001308 8D 83            [24] 3982 	mov	dph,r5
      00130A A3               [24] 3983 	inc	dptr
      00130B A3               [24] 3984 	inc	dptr
      00130C E0               [24] 3985 	movx	a,@dptr
      00130D F9               [12] 3986 	mov	r1,a
      00130E A3               [24] 3987 	inc	dptr
      00130F E0               [24] 3988 	movx	a,@dptr
      001310 FA               [12] 3989 	mov	r2,a
      001311 A3               [24] 3990 	inc	dptr
      001312 E0               [24] 3991 	movx	a,@dptr
      001313 FB               [12] 3992 	mov	r3,a
      001314 C0 05            [24] 3993 	push	ar5
      001316 C0 04            [24] 3994 	push	ar4
      001318 C0 01            [24] 3995 	push	ar1
      00131A C0 02            [24] 3996 	push	ar2
      00131C C0 03            [24] 3997 	push	ar3
      00131E 74 D7            [12] 3998 	mov	a,#___str_77
      001320 C0 E0            [24] 3999 	push	acc
      001322 74 2F            [12] 4000 	mov	a,#(___str_77 >> 8)
      001324 C0 E0            [24] 4001 	push	acc
      001326 74 80            [12] 4002 	mov	a,#0x80
      001328 C0 E0            [24] 4003 	push	acc
      00132A 12 1A A8         [24] 4004 	lcall	_printf
      00132D E5 81            [12] 4005 	mov	a,sp
      00132F 24 FA            [12] 4006 	add	a,#0xfa
      001331 F5 81            [12] 4007 	mov	sp,a
      001333 D0 04            [24] 4008 	pop	ar4
      001335 D0 05            [24] 4009 	pop	ar5
                                   4010 ;	program.c:845: printf("BufferEnd: %p \n\r", buffers_array[i].buffer_end);
      001337 8C 82            [24] 4011 	mov	dpl,r4
      001339 8D 83            [24] 4012 	mov	dph,r5
      00133B A3               [24] 4013 	inc	dptr
      00133C A3               [24] 4014 	inc	dptr
      00133D A3               [24] 4015 	inc	dptr
      00133E A3               [24] 4016 	inc	dptr
      00133F A3               [24] 4017 	inc	dptr
      001340 E0               [24] 4018 	movx	a,@dptr
      001341 F9               [12] 4019 	mov	r1,a
      001342 A3               [24] 4020 	inc	dptr
      001343 E0               [24] 4021 	movx	a,@dptr
      001344 FA               [12] 4022 	mov	r2,a
      001345 A3               [24] 4023 	inc	dptr
      001346 E0               [24] 4024 	movx	a,@dptr
      001347 FB               [12] 4025 	mov	r3,a
      001348 C0 05            [24] 4026 	push	ar5
      00134A C0 04            [24] 4027 	push	ar4
      00134C C0 01            [24] 4028 	push	ar1
      00134E C0 02            [24] 4029 	push	ar2
      001350 C0 03            [24] 4030 	push	ar3
      001352 74 EA            [12] 4031 	mov	a,#___str_78
      001354 C0 E0            [24] 4032 	push	acc
      001356 74 2F            [12] 4033 	mov	a,#(___str_78 >> 8)
      001358 C0 E0            [24] 4034 	push	acc
      00135A 74 80            [12] 4035 	mov	a,#0x80
      00135C C0 E0            [24] 4036 	push	acc
      00135E 12 1A A8         [24] 4037 	lcall	_printf
      001361 E5 81            [12] 4038 	mov	a,sp
      001363 24 FA            [12] 4039 	add	a,#0xfa
      001365 F5 81            [12] 4040 	mov	sp,a
      001367 D0 04            [24] 4041 	pop	ar4
      001369 D0 05            [24] 4042 	pop	ar5
                                   4043 ;	program.c:846: printf("BufferSize: %d \n\r", buffers_array[i].buff_size);
      00136B 74 08            [12] 4044 	mov	a,#0x08
      00136D 2C               [12] 4045 	add	a,r4
      00136E F5 82            [12] 4046 	mov	dpl,a
      001370 E4               [12] 4047 	clr	a
      001371 3D               [12] 4048 	addc	a,r5
      001372 F5 83            [12] 4049 	mov	dph,a
      001374 E0               [24] 4050 	movx	a,@dptr
      001375 FA               [12] 4051 	mov	r2,a
      001376 A3               [24] 4052 	inc	dptr
      001377 E0               [24] 4053 	movx	a,@dptr
      001378 FB               [12] 4054 	mov	r3,a
      001379 C0 05            [24] 4055 	push	ar5
      00137B C0 04            [24] 4056 	push	ar4
      00137D C0 02            [24] 4057 	push	ar2
      00137F C0 03            [24] 4058 	push	ar3
      001381 74 FB            [12] 4059 	mov	a,#___str_79
      001383 C0 E0            [24] 4060 	push	acc
      001385 74 2F            [12] 4061 	mov	a,#(___str_79 >> 8)
      001387 C0 E0            [24] 4062 	push	acc
      001389 74 80            [12] 4063 	mov	a,#0x80
      00138B C0 E0            [24] 4064 	push	acc
      00138D 12 1A A8         [24] 4065 	lcall	_printf
      001390 E5 81            [12] 4066 	mov	a,sp
      001392 24 FB            [12] 4067 	add	a,#0xfb
      001394 F5 81            [12] 4068 	mov	sp,a
      001396 D0 04            [24] 4069 	pop	ar4
      001398 D0 05            [24] 4070 	pop	ar5
                                   4071 ;	program.c:847: printf("TotalUsed: %d \n\r", buffers_array[i].num_char);
      00139A 74 0A            [12] 4072 	mov	a,#0x0a
      00139C 2C               [12] 4073 	add	a,r4
      00139D F5 82            [12] 4074 	mov	dpl,a
      00139F E4               [12] 4075 	clr	a
      0013A0 3D               [12] 4076 	addc	a,r5
      0013A1 F5 83            [12] 4077 	mov	dph,a
      0013A3 E0               [24] 4078 	movx	a,@dptr
      0013A4 FC               [12] 4079 	mov	r4,a
      0013A5 A3               [24] 4080 	inc	dptr
      0013A6 E0               [24] 4081 	movx	a,@dptr
      0013A7 FD               [12] 4082 	mov	r5,a
      0013A8 C0 04            [24] 4083 	push	ar4
      0013AA C0 05            [24] 4084 	push	ar5
      0013AC 74 0D            [12] 4085 	mov	a,#___str_80
      0013AE C0 E0            [24] 4086 	push	acc
      0013B0 74 30            [12] 4087 	mov	a,#(___str_80 >> 8)
      0013B2 C0 E0            [24] 4088 	push	acc
      0013B4 74 80            [12] 4089 	mov	a,#0x80
      0013B6 C0 E0            [24] 4090 	push	acc
      0013B8 12 1A A8         [24] 4091 	lcall	_printf
      0013BB E5 81            [12] 4092 	mov	a,sp
      0013BD 24 FB            [12] 4093 	add	a,#0xfb
      0013BF F5 81            [12] 4094 	mov	sp,a
      0013C1 D0 06            [24] 4095 	pop	ar6
      0013C3 D0 07            [24] 4096 	pop	ar7
                                   4097 ;	program.c:840: for (int i = 0; i < program_stats.total_buffers; i++)
      0013C5 0E               [12] 4098 	inc	r6
      0013C6 BE 00 01         [24] 4099 	cjne	r6,#0x00,00117$
      0013C9 0F               [12] 4100 	inc	r7
      0013CA                       4101 00117$:
      0013CA 02 12 7D         [24] 4102 	ljmp	00103$
      0013CD                       4103 00101$:
                                   4104 ;	program.c:849: printf("***************************************\n\r");
      0013CD 74 1E            [12] 4105 	mov	a,#___str_81
      0013CF C0 E0            [24] 4106 	push	acc
      0013D1 74 30            [12] 4107 	mov	a,#(___str_81 >> 8)
      0013D3 C0 E0            [24] 4108 	push	acc
      0013D5 74 80            [12] 4109 	mov	a,#0x80
      0013D7 C0 E0            [24] 4110 	push	acc
      0013D9 12 1A A8         [24] 4111 	lcall	_printf
      0013DC 15 81            [12] 4112 	dec	sp
      0013DE 15 81            [12] 4113 	dec	sp
      0013E0 15 81            [12] 4114 	dec	sp
                                   4115 ;	program.c:850: }
      0013E2 22               [24] 4116 	ret
                                   4117 ;------------------------------------------------------------
                                   4118 ;Allocation info for local variables in function 'get_number'
                                   4119 ;------------------------------------------------------------
                                   4120 ;total_chars               Allocated with name '_get_number_total_chars_65536_154'
                                   4121 ;rec                       Allocated with name '_get_number_rec_65537_156'
                                   4122 ;num                       Allocated with name '_get_number_num_65537_156'
                                   4123 ;i                         Allocated with name '_get_number_i_131073_157'
                                   4124 ;------------------------------------------------------------
                                   4125 ;	program.c:857: int get_number(int total_chars)
                                   4126 ;	-----------------------------------------
                                   4127 ;	 function get_number
                                   4128 ;	-----------------------------------------
      0013E3                       4129 _get_number:
      0013E3 AF 83            [24] 4130 	mov	r7,dph
      0013E5 E5 82            [12] 4131 	mov	a,dpl
      0013E7 90 01 64         [24] 4132 	mov	dptr,#_get_number_total_chars_65536_154
      0013EA F0               [24] 4133 	movx	@dptr,a
      0013EB EF               [12] 4134 	mov	a,r7
      0013EC A3               [24] 4135 	inc	dptr
      0013ED F0               [24] 4136 	movx	@dptr,a
                                   4137 ;	program.c:859: DEBUGPORT(0xD);
      0013EE 75 82 0D         [24] 4138 	mov	dpl,#0x0d
      0013F1 12 15 93         [24] 4139 	lcall	_dataout
                                   4140 ;	program.c:861: int num = 0;
      0013F4 90 01 66         [24] 4141 	mov	dptr,#_get_number_num_65537_156
      0013F7 E4               [12] 4142 	clr	a
      0013F8 F0               [24] 4143 	movx	@dptr,a
      0013F9 A3               [24] 4144 	inc	dptr
      0013FA F0               [24] 4145 	movx	@dptr,a
                                   4146 ;	program.c:862: for (int i = total_chars; i > 0; i--)
      0013FB 90 01 64         [24] 4147 	mov	dptr,#_get_number_total_chars_65536_154
      0013FE E0               [24] 4148 	movx	a,@dptr
      0013FF FE               [12] 4149 	mov	r6,a
      001400 A3               [24] 4150 	inc	dptr
      001401 E0               [24] 4151 	movx	a,@dptr
      001402 FF               [12] 4152 	mov	r7,a
      001403                       4153 00107$:
      001403 C3               [12] 4154 	clr	c
      001404 E4               [12] 4155 	clr	a
      001405 9E               [12] 4156 	subb	a,r6
      001406 74 80            [12] 4157 	mov	a,#(0x00 ^ 0x80)
      001408 8F F0            [24] 4158 	mov	b,r7
      00140A 63 F0 80         [24] 4159 	xrl	b,#0x80
      00140D 95 F0            [12] 4160 	subb	a,b
      00140F 40 03            [24] 4161 	jc	00127$
      001411 02 14 AF         [24] 4162 	ljmp	00105$
      001414                       4163 00127$:
                                   4164 ;	program.c:864: rec = getchar();
      001414 C0 07            [24] 4165 	push	ar7
      001416 C0 06            [24] 4166 	push	ar6
      001418 12 15 57         [24] 4167 	lcall	_getchar
      00141B AC 82            [24] 4168 	mov	r4,dpl
      00141D AD 83            [24] 4169 	mov	r5,dph
      00141F D0 06            [24] 4170 	pop	ar6
      001421 D0 07            [24] 4171 	pop	ar7
                                   4172 ;	program.c:866: if (rec <= 0x39 && rec >= 0x30)
      001423 C3               [12] 4173 	clr	c
      001424 74 39            [12] 4174 	mov	a,#0x39
      001426 9C               [12] 4175 	subb	a,r4
      001427 74 80            [12] 4176 	mov	a,#(0x00 ^ 0x80)
      001429 8D F0            [24] 4177 	mov	b,r5
      00142B 63 F0 80         [24] 4178 	xrl	b,#0x80
      00142E 95 F0            [12] 4179 	subb	a,b
      001430 40 5C            [24] 4180 	jc	00102$
      001432 EC               [12] 4181 	mov	a,r4
      001433 94 30            [12] 4182 	subb	a,#0x30
      001435 ED               [12] 4183 	mov	a,r5
      001436 64 80            [12] 4184 	xrl	a,#0x80
      001438 94 80            [12] 4185 	subb	a,#0x80
      00143A 40 52            [24] 4186 	jc	00102$
                                   4187 ;	program.c:868: num += ((rec - 0x30) * get_num_helper(i - 1));
      00143C EC               [12] 4188 	mov	a,r4
      00143D 24 D0            [12] 4189 	add	a,#0xd0
      00143F FC               [12] 4190 	mov	r4,a
      001440 ED               [12] 4191 	mov	a,r5
      001441 34 FF            [12] 4192 	addc	a,#0xff
      001443 FD               [12] 4193 	mov	r5,a
      001444 EE               [12] 4194 	mov	a,r6
      001445 24 FF            [12] 4195 	add	a,#0xff
      001447 FA               [12] 4196 	mov	r2,a
      001448 EF               [12] 4197 	mov	a,r7
      001449 34 FF            [12] 4198 	addc	a,#0xff
      00144B FB               [12] 4199 	mov	r3,a
      00144C 8A 82            [24] 4200 	mov	dpl,r2
      00144E 8B 83            [24] 4201 	mov	dph,r3
      001450 C0 07            [24] 4202 	push	ar7
      001452 C0 06            [24] 4203 	push	ar6
      001454 C0 05            [24] 4204 	push	ar5
      001456 C0 04            [24] 4205 	push	ar4
      001458 12 14 BB         [24] 4206 	lcall	_get_num_helper
      00145B AA 82            [24] 4207 	mov	r2,dpl
      00145D AB 83            [24] 4208 	mov	r3,dph
      00145F D0 04            [24] 4209 	pop	ar4
      001461 D0 05            [24] 4210 	pop	ar5
      001463 90 15 14         [24] 4211 	mov	dptr,#__mulint_PARM_2
      001466 EA               [12] 4212 	mov	a,r2
      001467 F0               [24] 4213 	movx	@dptr,a
      001468 EB               [12] 4214 	mov	a,r3
      001469 A3               [24] 4215 	inc	dptr
      00146A F0               [24] 4216 	movx	@dptr,a
      00146B 8C 82            [24] 4217 	mov	dpl,r4
      00146D 8D 83            [24] 4218 	mov	dph,r5
      00146F 12 1A 3A         [24] 4219 	lcall	__mulint
      001472 AC 82            [24] 4220 	mov	r4,dpl
      001474 AD 83            [24] 4221 	mov	r5,dph
      001476 D0 06            [24] 4222 	pop	ar6
      001478 D0 07            [24] 4223 	pop	ar7
      00147A 90 01 66         [24] 4224 	mov	dptr,#_get_number_num_65537_156
      00147D E0               [24] 4225 	movx	a,@dptr
      00147E FA               [12] 4226 	mov	r2,a
      00147F A3               [24] 4227 	inc	dptr
      001480 E0               [24] 4228 	movx	a,@dptr
      001481 FB               [12] 4229 	mov	r3,a
      001482 90 01 66         [24] 4230 	mov	dptr,#_get_number_num_65537_156
      001485 EC               [12] 4231 	mov	a,r4
      001486 2A               [12] 4232 	add	a,r2
      001487 F0               [24] 4233 	movx	@dptr,a
      001488 ED               [12] 4234 	mov	a,r5
      001489 3B               [12] 4235 	addc	a,r3
      00148A A3               [24] 4236 	inc	dptr
      00148B F0               [24] 4237 	movx	@dptr,a
      00148C 80 19            [24] 4238 	sjmp	00108$
      00148E                       4239 00102$:
                                   4240 ;	program.c:872: printf("ERR,Numbers ONLY!\n\r");
      00148E 74 48            [12] 4241 	mov	a,#___str_82
      001490 C0 E0            [24] 4242 	push	acc
      001492 74 30            [12] 4243 	mov	a,#(___str_82 >> 8)
      001494 C0 E0            [24] 4244 	push	acc
      001496 74 80            [12] 4245 	mov	a,#0x80
      001498 C0 E0            [24] 4246 	push	acc
      00149A 12 1A A8         [24] 4247 	lcall	_printf
      00149D 15 81            [12] 4248 	dec	sp
      00149F 15 81            [12] 4249 	dec	sp
      0014A1 15 81            [12] 4250 	dec	sp
                                   4251 ;	program.c:873: return -1;
      0014A3 90 FF FF         [24] 4252 	mov	dptr,#0xffff
      0014A6 22               [24] 4253 	ret
      0014A7                       4254 00108$:
                                   4255 ;	program.c:862: for (int i = total_chars; i > 0; i--)
      0014A7 1E               [12] 4256 	dec	r6
      0014A8 BE FF 01         [24] 4257 	cjne	r6,#0xff,00130$
      0014AB 1F               [12] 4258 	dec	r7
      0014AC                       4259 00130$:
      0014AC 02 14 03         [24] 4260 	ljmp	00107$
      0014AF                       4261 00105$:
                                   4262 ;	program.c:876: return num;
      0014AF 90 01 66         [24] 4263 	mov	dptr,#_get_number_num_65537_156
      0014B2 E0               [24] 4264 	movx	a,@dptr
      0014B3 FE               [12] 4265 	mov	r6,a
      0014B4 A3               [24] 4266 	inc	dptr
      0014B5 E0               [24] 4267 	movx	a,@dptr
                                   4268 ;	program.c:877: }
      0014B6 8E 82            [24] 4269 	mov	dpl,r6
      0014B8 F5 83            [12] 4270 	mov	dph,a
      0014BA 22               [24] 4271 	ret
                                   4272 ;------------------------------------------------------------
                                   4273 ;Allocation info for local variables in function 'get_num_helper'
                                   4274 ;------------------------------------------------------------
                                   4275 ;times                     Allocated with name '_get_num_helper_times_65536_161'
                                   4276 ;num                       Allocated with name '_get_num_helper_num_65536_162'
                                   4277 ;i                         Allocated with name '_get_num_helper_i_131072_163'
                                   4278 ;------------------------------------------------------------
                                   4279 ;	program.c:884: int get_num_helper(int times)
                                   4280 ;	-----------------------------------------
                                   4281 ;	 function get_num_helper
                                   4282 ;	-----------------------------------------
      0014BB                       4283 _get_num_helper:
      0014BB AF 83            [24] 4284 	mov	r7,dph
      0014BD E5 82            [12] 4285 	mov	a,dpl
      0014BF 90 01 68         [24] 4286 	mov	dptr,#_get_num_helper_times_65536_161
      0014C2 F0               [24] 4287 	movx	@dptr,a
      0014C3 EF               [12] 4288 	mov	a,r7
      0014C4 A3               [24] 4289 	inc	dptr
      0014C5 F0               [24] 4290 	movx	@dptr,a
                                   4291 ;	program.c:886: int num = 1;
      0014C6 90 01 6A         [24] 4292 	mov	dptr,#_get_num_helper_num_65536_162
      0014C9 74 01            [12] 4293 	mov	a,#0x01
      0014CB F0               [24] 4294 	movx	@dptr,a
      0014CC E4               [12] 4295 	clr	a
      0014CD A3               [24] 4296 	inc	dptr
      0014CE F0               [24] 4297 	movx	@dptr,a
                                   4298 ;	program.c:888: for (int i = 0; i < times; i++)
      0014CF 90 01 68         [24] 4299 	mov	dptr,#_get_num_helper_times_65536_161
      0014D2 E0               [24] 4300 	movx	a,@dptr
      0014D3 FE               [12] 4301 	mov	r6,a
      0014D4 A3               [24] 4302 	inc	dptr
      0014D5 E0               [24] 4303 	movx	a,@dptr
      0014D6 FF               [12] 4304 	mov	r7,a
      0014D7 7C 00            [12] 4305 	mov	r4,#0x00
      0014D9 7D 00            [12] 4306 	mov	r5,#0x00
      0014DB                       4307 00106$:
      0014DB C3               [12] 4308 	clr	c
      0014DC EC               [12] 4309 	mov	a,r4
      0014DD 9E               [12] 4310 	subb	a,r6
      0014DE ED               [12] 4311 	mov	a,r5
      0014DF 64 80            [12] 4312 	xrl	a,#0x80
      0014E1 8F F0            [24] 4313 	mov	b,r7
      0014E3 63 F0 80         [24] 4314 	xrl	b,#0x80
      0014E6 95 F0            [12] 4315 	subb	a,b
      0014E8 50 3A            [24] 4316 	jnc	00101$
                                   4317 ;	program.c:890: num = num * 10;
      0014EA 90 01 6A         [24] 4318 	mov	dptr,#_get_num_helper_num_65536_162
      0014ED E0               [24] 4319 	movx	a,@dptr
      0014EE FA               [12] 4320 	mov	r2,a
      0014EF A3               [24] 4321 	inc	dptr
      0014F0 E0               [24] 4322 	movx	a,@dptr
      0014F1 FB               [12] 4323 	mov	r3,a
      0014F2 90 15 14         [24] 4324 	mov	dptr,#__mulint_PARM_2
      0014F5 EA               [12] 4325 	mov	a,r2
      0014F6 F0               [24] 4326 	movx	@dptr,a
      0014F7 EB               [12] 4327 	mov	a,r3
      0014F8 A3               [24] 4328 	inc	dptr
      0014F9 F0               [24] 4329 	movx	@dptr,a
      0014FA 90 00 0A         [24] 4330 	mov	dptr,#0x000a
      0014FD C0 07            [24] 4331 	push	ar7
      0014FF C0 06            [24] 4332 	push	ar6
      001501 C0 05            [24] 4333 	push	ar5
      001503 C0 04            [24] 4334 	push	ar4
      001505 12 1A 3A         [24] 4335 	lcall	__mulint
      001508 E5 82            [12] 4336 	mov	a,dpl
      00150A 85 83 F0         [24] 4337 	mov	b,dph
      00150D D0 04            [24] 4338 	pop	ar4
      00150F D0 05            [24] 4339 	pop	ar5
      001511 D0 06            [24] 4340 	pop	ar6
      001513 D0 07            [24] 4341 	pop	ar7
      001515 90 01 6A         [24] 4342 	mov	dptr,#_get_num_helper_num_65536_162
      001518 F0               [24] 4343 	movx	@dptr,a
      001519 E5 F0            [12] 4344 	mov	a,b
      00151B A3               [24] 4345 	inc	dptr
      00151C F0               [24] 4346 	movx	@dptr,a
                                   4347 ;	program.c:888: for (int i = 0; i < times; i++)
      00151D 0C               [12] 4348 	inc	r4
      00151E BC 00 BA         [24] 4349 	cjne	r4,#0x00,00106$
      001521 0D               [12] 4350 	inc	r5
      001522 80 B7            [24] 4351 	sjmp	00106$
      001524                       4352 00101$:
                                   4353 ;	program.c:892: if (times == 0)
      001524 EE               [12] 4354 	mov	a,r6
      001525 4F               [12] 4355 	orl	a,r7
      001526 70 04            [24] 4356 	jnz	00103$
                                   4357 ;	program.c:893: return 1;
      001528 90 00 01         [24] 4358 	mov	dptr,#0x0001
      00152B 22               [24] 4359 	ret
      00152C                       4360 00103$:
                                   4361 ;	program.c:895: return num;
      00152C 90 01 6A         [24] 4362 	mov	dptr,#_get_num_helper_num_65536_162
      00152F E0               [24] 4363 	movx	a,@dptr
      001530 FE               [12] 4364 	mov	r6,a
      001531 A3               [24] 4365 	inc	dptr
      001532 E0               [24] 4366 	movx	a,@dptr
                                   4367 ;	program.c:896: }
      001533 8E 82            [24] 4368 	mov	dpl,r6
      001535 F5 83            [12] 4369 	mov	dph,a
      001537 22               [24] 4370 	ret
                                   4371 ;------------------------------------------------------------
                                   4372 ;Allocation info for local variables in function 'putchar'
                                   4373 ;------------------------------------------------------------
                                   4374 ;c                         Allocated with name '_putchar_c_65536_165'
                                   4375 ;------------------------------------------------------------
                                   4376 ;	program.c:909: int putchar(int c)
                                   4377 ;	-----------------------------------------
                                   4378 ;	 function putchar
                                   4379 ;	-----------------------------------------
      001538                       4380 _putchar:
      001538 AF 83            [24] 4381 	mov	r7,dph
      00153A E5 82            [12] 4382 	mov	a,dpl
      00153C 90 01 6C         [24] 4383 	mov	dptr,#_putchar_c_65536_165
      00153F F0               [24] 4384 	movx	@dptr,a
      001540 EF               [12] 4385 	mov	a,r7
      001541 A3               [24] 4386 	inc	dptr
      001542 F0               [24] 4387 	movx	@dptr,a
                                   4388 ;	program.c:911: while ((SCON & 0x02) == 0)
      001543                       4389 00101$:
      001543 E5 98            [12] 4390 	mov	a,_SCON
      001545 30 E1 FB         [24] 4391 	jnb	acc.1,00101$
                                   4392 ;	program.c:913: TI = 0;
                                   4393 ;	assignBit
      001548 C2 99            [12] 4394 	clr	_TI
                                   4395 ;	program.c:914: SBUF = c;
      00154A 90 01 6C         [24] 4396 	mov	dptr,#_putchar_c_65536_165
      00154D E0               [24] 4397 	movx	a,@dptr
      00154E FE               [12] 4398 	mov	r6,a
      00154F A3               [24] 4399 	inc	dptr
      001550 E0               [24] 4400 	movx	a,@dptr
      001551 8E 99            [24] 4401 	mov	_SBUF,r6
                                   4402 ;	program.c:915: return 0;
      001553 90 00 00         [24] 4403 	mov	dptr,#0x0000
                                   4404 ;	program.c:916: }
      001556 22               [24] 4405 	ret
                                   4406 ;------------------------------------------------------------
                                   4407 ;Allocation info for local variables in function 'getchar'
                                   4408 ;------------------------------------------------------------
                                   4409 ;	program.c:923: int getchar()
                                   4410 ;	-----------------------------------------
                                   4411 ;	 function getchar
                                   4412 ;	-----------------------------------------
      001557                       4413 _getchar:
                                   4414 ;	program.c:925: while (RI == 0)
      001557                       4415 00101$:
                                   4416 ;	program.c:927: RI = 0;
                                   4417 ;	assignBit
      001557 10 98 02         [24] 4418 	jbc	_RI,00140$
      00155A 80 FB            [24] 4419 	sjmp	00101$
      00155C                       4420 00140$:
                                   4421 ;	program.c:929: if (SBUF != 0x3F && SBUF != 0x3D && SBUF != 0x40 && SBUF != 0x2B && SBUF != 0x2D)
      00155C 74 3F            [12] 4422 	mov	a,#0x3f
      00155E B5 99 02         [24] 4423 	cjne	a,_SBUF,00141$
      001561 80 27            [24] 4424 	sjmp	00105$
      001563                       4425 00141$:
      001563 74 3D            [12] 4426 	mov	a,#0x3d
      001565 B5 99 02         [24] 4427 	cjne	a,_SBUF,00142$
      001568 80 20            [24] 4428 	sjmp	00105$
      00156A                       4429 00142$:
      00156A 74 40            [12] 4430 	mov	a,#0x40
      00156C B5 99 02         [24] 4431 	cjne	a,_SBUF,00143$
      00156F 80 19            [24] 4432 	sjmp	00105$
      001571                       4433 00143$:
      001571 74 2B            [12] 4434 	mov	a,#0x2b
      001573 B5 99 02         [24] 4435 	cjne	a,_SBUF,00144$
      001576 80 12            [24] 4436 	sjmp	00105$
      001578                       4437 00144$:
      001578 74 2D            [12] 4438 	mov	a,#0x2d
      00157A B5 99 02         [24] 4439 	cjne	a,_SBUF,00145$
      00157D 80 0B            [24] 4440 	sjmp	00105$
      00157F                       4441 00145$:
                                   4442 ;	program.c:930: putchar(SBUF);
      00157F AE 99            [24] 4443 	mov	r6,_SBUF
      001581 7F 00            [12] 4444 	mov	r7,#0x00
      001583 8E 82            [24] 4445 	mov	dpl,r6
      001585 8F 83            [24] 4446 	mov	dph,r7
      001587 12 15 38         [24] 4447 	lcall	_putchar
      00158A                       4448 00105$:
                                   4449 ;	program.c:931: return SBUF;
      00158A AE 99            [24] 4450 	mov	r6,_SBUF
      00158C 7F 00            [12] 4451 	mov	r7,#0x00
      00158E 8E 82            [24] 4452 	mov	dpl,r6
      001590 8F 83            [24] 4453 	mov	dph,r7
                                   4454 ;	program.c:932: }
      001592 22               [24] 4455 	ret
                                   4456 ;------------------------------------------------------------
                                   4457 ;Allocation info for local variables in function 'dataout'
                                   4458 ;------------------------------------------------------------
                                   4459 ;data                      Allocated with name '_dataout_data_65536_168'
                                   4460 ;------------------------------------------------------------
                                   4461 ;	program.c:939: void dataout(unsigned char data)
                                   4462 ;	-----------------------------------------
                                   4463 ;	 function dataout
                                   4464 ;	-----------------------------------------
      001593                       4465 _dataout:
      001593 E5 82            [12] 4466 	mov	a,dpl
      001595 90 01 6E         [24] 4467 	mov	dptr,#_dataout_data_65536_168
      001598 F0               [24] 4468 	movx	@dptr,a
                                   4469 ;	program.c:941: DEBUG_LOC = data;
      001599 E0               [24] 4470 	movx	a,@dptr
      00159A 90 80 00         [24] 4471 	mov	dptr,#_DEBUG_LOC
      00159D F0               [24] 4472 	movx	@dptr,a
                                   4473 ;	program.c:942: }
      00159E 22               [24] 4474 	ret
                                   4475 ;------------------------------------------------------------
                                   4476 ;Allocation info for local variables in function 'asm_call'
                                   4477 ;------------------------------------------------------------
                                   4478 ;sent_from_asm             Allocated with name '_asm_call_sent_from_asm_65536_170'
                                   4479 ;------------------------------------------------------------
                                   4480 ;	program.c:944: void asm_call(unsigned char sent_from_asm)
                                   4481 ;	-----------------------------------------
                                   4482 ;	 function asm_call
                                   4483 ;	-----------------------------------------
      00159F                       4484 _asm_call:
      00159F E5 82            [12] 4485 	mov	a,dpl
      0015A1 90 01 6F         [24] 4486 	mov	dptr,#_asm_call_sent_from_asm_65536_170
      0015A4 F0               [24] 4487 	movx	@dptr,a
                                   4488 ;	program.c:946: printf("\n\n\r This function was called from assembly, character sent from there -> %c\n\r", sent_from_asm);
      0015A5 E0               [24] 4489 	movx	a,@dptr
      0015A6 FF               [12] 4490 	mov	r7,a
      0015A7 7E 00            [12] 4491 	mov	r6,#0x00
      0015A9 C0 07            [24] 4492 	push	ar7
      0015AB C0 06            [24] 4493 	push	ar6
      0015AD 74 5C            [12] 4494 	mov	a,#___str_83
      0015AF C0 E0            [24] 4495 	push	acc
      0015B1 74 30            [12] 4496 	mov	a,#(___str_83 >> 8)
      0015B3 C0 E0            [24] 4497 	push	acc
      0015B5 74 80            [12] 4498 	mov	a,#0x80
      0015B7 C0 E0            [24] 4499 	push	acc
      0015B9 12 1A A8         [24] 4500 	lcall	_printf
      0015BC E5 81            [12] 4501 	mov	a,sp
      0015BE 24 FB            [12] 4502 	add	a,#0xfb
      0015C0 F5 81            [12] 4503 	mov	sp,a
                                   4504 ;	program.c:947: }
      0015C2 22               [24] 4505 	ret
                                   4506 ;------------------------------------------------------------
                                   4507 ;Allocation info for local variables in function '_sdcc_external_startup'
                                   4508 ;------------------------------------------------------------
                                   4509 ;	program.c:954: _sdcc_external_startup()
                                   4510 ;	-----------------------------------------
                                   4511 ;	 function _sdcc_external_startup
                                   4512 ;	-----------------------------------------
      0015C3                       4513 __sdcc_external_startup:
                                   4514 ;	program.c:956: CKCON0 |= 0x1;
      0015C3 43 8F 01         [24] 4515 	orl	_CKCON0,#0x01
                                   4516 ;	program.c:958: _AUXR = 0xC;
      0015C6 75 8E 0C         [24] 4517 	mov	__AUXR,#0x0c
                                   4518 ;	program.c:960: SCON = 0x42;
      0015C9 75 98 42         [24] 4519 	mov	_SCON,#0x42
                                   4520 ;	program.c:962: PCON = 0x80;
      0015CC 75 87 80         [24] 4521 	mov	_PCON,#0x80
                                   4522 ;	program.c:964: TH1 = 255;
      0015CF 75 8D FF         [24] 4523 	mov	_TH1,#0xff
                                   4524 ;	program.c:965: TL1 = 255;
      0015D2 75 8B FF         [24] 4525 	mov	_TL1,#0xff
                                   4526 ;	program.c:967: TMOD = 0x20;
      0015D5 75 89 20         [24] 4527 	mov	_TMOD,#0x20
                                   4528 ;	program.c:969: REN = 1;
                                   4529 ;	assignBit
      0015D8 D2 9C            [12] 4530 	setb	_REN
                                   4531 ;	program.c:971: TR1 = 1;
                                   4532 ;	assignBit
      0015DA D2 8E            [12] 4533 	setb	_TR1
                                   4534 ;	program.c:973: EA = 1;
                                   4535 ;	assignBit
      0015DC D2 AF            [12] 4536 	setb	_EA
                                   4537 ;	program.c:975: EC = 1;
                                   4538 ;	assignBit
      0015DE D2 AE            [12] 4539 	setb	_EC
                                   4540 ;	program.c:976: return 0;
      0015E0 90 00 00         [24] 4541 	mov	dptr,#0x0000
                                   4542 ;	program.c:977: }
      0015E3 22               [24] 4543 	ret
                                   4544 	.area CSEG    (CODE)
                                   4545 	.area CONST   (CODE)
                                   4546 	.area CONST   (CODE)
      0024E3                       4547 ___str_0:
      0024E3 0A                    4548 	.db 0x0a
      0024E4 0D                    4549 	.db 0x0d
      0024E5 20 48 45 4C 4C 4F 21  4550 	.ascii " HELLO! Started in X2 Mode "
             20 53 74 61 72 74 65
             64 20 69 6E 20 58 32
             20 4D 6F 64 65 20
      002500 0A                    4551 	.db 0x0a
      002501 0D                    4552 	.db 0x0d
      002502 00                    4553 	.db 0x00
                                   4554 	.area CSEG    (CODE)
                                   4555 	.area CONST   (CODE)
      002503                       4556 ___str_1:
      002503 48 65 6C 6C 6F 2C 20  4557 	.ascii "Hello, In PCA Demo mode "
             49 6E 20 50 43 41 20
             44 65 6D 6F 20 6D 6F
             64 65 20
      00251B 0A                    4558 	.db 0x0a
      00251C 0D                    4559 	.db 0x0d
      00251D 00                    4560 	.db 0x00
                                   4561 	.area CSEG    (CODE)
                                   4562 	.area CONST   (CODE)
      00251E                       4563 ___str_2:
      00251E 50 6C 65 61 73 65 20  4564 	.ascii "Please make a valid choice "
             6D 61 6B 65 20 61 20
             76 61 6C 69 64 20 63
             68 6F 69 63 65 20
      002539 0A                    4565 	.db 0x0a
      00253A 0D                    4566 	.db 0x0d
      00253B 00                    4567 	.db 0x00
                                   4568 	.area CSEG    (CODE)
                                   4569 	.area CONST   (CODE)
      00253C                       4570 ___str_3:
      00253C 50 6C 65 61 73 65 20  4571 	.ascii "Please 'E' to exit or Reset "
             27 45 27 20 74 6F 20
             65 78 69 74 20 6F 72
             20 52 65 73 65 74 20
      002558 0A                    4572 	.db 0x0a
      002559 0D                    4573 	.db 0x0d
      00255A 00                    4574 	.db 0x00
                                   4575 	.area CSEG    (CODE)
                                   4576 	.area CONST   (CODE)
      00255B                       4577 ___str_4:
      00255B 43 61 70 74 75 72 65  4578 	.ascii "Captured Value CCPL -> %d CCPH -> %d "
             64 20 56 61 6C 75 65
             20 43 43 50 4C 20 2D
             3E 20 25 64 20 43 43
             50 48 20 2D 3E 20 25
             64 20
      002580 0A                    4579 	.db 0x0a
      002581 0D                    4580 	.db 0x0d
      002582 00                    4581 	.db 0x00
                                   4582 	.area CSEG    (CODE)
                                   4583 	.area CONST   (CODE)
      002583                       4584 ___str_5:
      002583 54 69 6D 65 72 20 49  4585 	.ascii "Timer Interrupt"
             6E 74 65 72 72 75 70
             74
      002592 0A                    4586 	.db 0x0a
      002593 0D                    4587 	.db 0x0d
      002594 00                    4588 	.db 0x00
                                   4589 	.area CSEG    (CODE)
                                   4590 	.area CONST   (CODE)
      002595                       4591 ___str_6:
      002595 47 6F 69 6E 67 20 74  4592 	.ascii "Going to main menu.. "
             6F 20 6D 61 69 6E 20
             6D 65 6E 75 2E 2E 20
      0025AA 0A                    4593 	.db 0x0a
      0025AB 0D                    4594 	.db 0x0d
      0025AC 00                    4595 	.db 0x00
                                   4596 	.area CSEG    (CODE)
                                   4597 	.area CONST   (CODE)
      0025AD                       4598 ___str_7:
      0025AD 53 65 74 74 69 6E 67  4599 	.ascii "Setting P1.3 as falling edge detector, enabling PCA interrup"
             20 50 31 2E 33 20 61
             73 20 66 61 6C 6C 69
             6E 67 20 65 64 67 65
             20 64 65 74 65 63 74
             6F 72 2C 20 65 6E 61
             62 6C 69 6E 67 20 50
             43 41 20 69 6E 74 65
             72 72 75 70
      0025E9 74 20                 4600 	.ascii "t "
      0025EB 0A                    4601 	.db 0x0a
      0025EC 0D                    4602 	.db 0x0d
      0025ED 00                    4603 	.db 0x00
                                   4604 	.area CSEG    (CODE)
                                   4605 	.area CONST   (CODE)
      0025EE                       4606 ___str_8:
      0025EE 45 6E 74 65 72 69 6E  4607 	.ascii "Entering Software Timer Mode "
             67 20 53 6F 66 74 77
             61 72 65 20 54 69 6D
             65 72 20 4D 6F 64 65
             20
      00260B 0A                    4608 	.db 0x0a
      00260C 0D                    4609 	.db 0x0d
      00260D 00                    4610 	.db 0x00
                                   4611 	.area CSEG    (CODE)
                                   4612 	.area CONST   (CODE)
      00260E                       4613 ___str_9:
      00260E 45 6E 74 65 72 69 6E  4614 	.ascii "Entering High Speed Toggle Mode, P1.5 "
             67 20 48 69 67 68 20
             53 70 65 65 64 20 54
             6F 67 67 6C 65 20 4D
             6F 64 65 2C 20 50 31
             2E 35 20
      002634 0A                    4615 	.db 0x0a
      002635 0D                    4616 	.db 0x0d
      002636 00                    4617 	.db 0x00
                                   4618 	.area CSEG    (CODE)
                                   4619 	.area CONST   (CODE)
      002637                       4620 ___str_10:
      002637 45 6E 74 65 72 69 6E  4621 	.ascii "Entering PWM Mode, 25 percent Duty Cycle P1.6"
             67 20 50 57 4D 20 4D
             6F 64 65 2C 20 32 35
             20 70 65 72 63 65 6E
             74 20 44 75 74 79 20
             43 79 63 6C 65 20 50
             31 2E 36
      002664 0A                    4622 	.db 0x0a
      002665 0D                    4623 	.db 0x0d
      002666 00                    4624 	.db 0x00
                                   4625 	.area CSEG    (CODE)
                                   4626 	.area CONST   (CODE)
      002667                       4627 ___str_11:
      002667 45 6E 61 62 6C 69 6E  4628 	.ascii "Enabling Watchdog Timer.."
             67 20 57 61 74 63 68
             64 6F 67 20 54 69 6D
             65 72 2E 2E
      002680 0A                    4629 	.db 0x0a
      002681 0D                    4630 	.db 0x0d
      002682 00                    4631 	.db 0x00
                                   4632 	.area CSEG    (CODE)
                                   4633 	.area CONST   (CODE)
      002683                       4634 ___str_12:
      002683 43 75 72 72 65 6E 74  4635 	.ascii "Currently Watchdog is being serviced"
             6C 79 20 57 61 74 63
             68 64 6F 67 20 69 73
             20 62 65 69 6E 67 20
             73 65 72 76 69 63 65
             64
      0026A7 0A                    4636 	.db 0x0a
      0026A8 0D                    4637 	.db 0x0d
      0026A9 50 72 65 73 73 20 27  4638 	.ascii "Press 'S' to stop and generate a reset "
             53 27 20 74 6F 20 73
             74 6F 70 20 61 6E 64
             20 67 65 6E 65 72 61
             74 65 20 61 20 72 65
             73 65 74 20
      0026D0 0A                    4639 	.db 0x0a
      0026D1 0D                    4640 	.db 0x0d
      0026D2 00                    4641 	.db 0x00
                                   4642 	.area CSEG    (CODE)
                                   4643 	.area CONST   (CODE)
      0026D3                       4644 ___str_13:
      0026D3 45 6E 61 62 6C 69 6E  4645 	.ascii "Enabling Hardware Watchdog Timer.."
             67 20 48 61 72 64 77
             61 72 65 20 57 61 74
             63 68 64 6F 67 20 54
             69 6D 65 72 2E 2E
      0026F5 0A                    4646 	.db 0x0a
      0026F6 0D                    4647 	.db 0x0d
      0026F7 00                    4648 	.db 0x00
                                   4649 	.area CSEG    (CODE)
                                   4650 	.area CONST   (CODE)
      0026F8                       4651 ___str_14:
      0026F8 43 75 72 72 65 6E 74  4652 	.ascii "Currently Hardware Watchdog is being serviced"
             6C 79 20 48 61 72 64
             77 61 72 65 20 57 61
             74 63 68 64 6F 67 20
             69 73 20 62 65 69 6E
             67 20 73 65 72 76 69
             63 65 64
      002725 0A                    4653 	.db 0x0a
      002726 0D                    4654 	.db 0x0d
      002727 50 72 65 73 73 20 27  4655 	.ascii "Press 'S' to stop watchdog service and generate a reset in ~"
             53 27 20 74 6F 20 73
             74 6F 70 20 77 61 74
             63 68 64 6F 67 20 73
             65 72 76 69 63 65 20
             61 6E 64 20 67 65 6E
             65 72 61 74 65 20 61
             20 72 65 73 65 74 20
             69 6E 20 7E
      002763 31 73 20              4656 	.ascii "1s "
      002766 0A                    4657 	.db 0x0a
      002767 0D                    4658 	.db 0x0d
      002768 00                    4659 	.db 0x00
                                   4660 	.area CSEG    (CODE)
                                   4661 	.area CONST   (CODE)
      002769                       4662 ___str_15:
      002769 45 6E 74 65 72 69 6E  4663 	.ascii "Entering Idle, Will Exit on external interrupt 0"
             67 20 49 64 6C 65 2C
             20 57 69 6C 6C 20 45
             78 69 74 20 6F 6E 20
             65 78 74 65 72 6E 61
             6C 20 69 6E 74 65 72
             72 75 70 74 20 30
      002799 0A                    4664 	.db 0x0a
      00279A 0D                    4665 	.db 0x0d
      00279B 00                    4666 	.db 0x00
                                   4667 	.area CSEG    (CODE)
                                   4668 	.area CONST   (CODE)
      00279C                       4669 ___str_16:
      00279C 57 6F 6B 65 20 75 70  4670 	.ascii "Woke up from Idle/Power down, going to main menu "
             20 66 72 6F 6D 20 49
             64 6C 65 2F 50 6F 77
             65 72 20 64 6F 77 6E
             2C 20 67 6F 69 6E 67
             20 74 6F 20 6D 61 69
             6E 20 6D 65 6E 75 20
      0027CD 0A                    4671 	.db 0x0a
      0027CE 0D                    4672 	.db 0x0d
      0027CF 00                    4673 	.db 0x00
                                   4674 	.area CSEG    (CODE)
                                   4675 	.area CONST   (CODE)
      0027D0                       4676 ___str_17:
      0027D0 45 6E 74 65 72 69 6E  4677 	.ascii "Entering power down, Will Exit on external interrupt 0"
             67 20 70 6F 77 65 72
             20 64 6F 77 6E 2C 20
             57 69 6C 6C 20 45 78
             69 74 20 6F 6E 20 65
             78 74 65 72 6E 61 6C
             20 69 6E 74 65 72 72
             75 70 74 20 30
      002806 0A                    4678 	.db 0x0a
      002807 0D                    4679 	.db 0x0d
      002808 00                    4680 	.db 0x00
                                   4681 	.area CSEG    (CODE)
                                   4682 	.area CONST   (CODE)
      002809                       4683 ___str_18:
      002809 43 68 61 6E 67 69 6E  4684 	.ascii "Changing Clock prescalar to go to lowest frequency in X2 Mod"
             67 20 43 6C 6F 63 6B
             20 70 72 65 73 63 61
             6C 61 72 20 74 6F 20
             67 6F 20 74 6F 20 6C
             6F 77 65 73 74 20 66
             72 65 71 75 65 6E 63
             79 20 69 6E 20 58 32
             20 4D 6F 64
      002845 65 2E 2E              4685 	.ascii "e.."
      002848 0A                    4686 	.db 0x0a
      002849 0D                    4687 	.db 0x0d
      00284A 00                    4688 	.db 0x00
                                   4689 	.area CSEG    (CODE)
                                   4690 	.area CONST   (CODE)
      00284B                       4691 ___str_19:
      00284B 54 68 69 73 20 55 41  4692 	.ascii "This UART Session will stop working..."
             52 54 20 53 65 73 73
             69 6F 6E 20 77 69 6C
             6C 20 73 74 6F 70 20
             77 6F 72 6B 69 6E 67
             2E 2E 2E
      002871 0A                    4693 	.db 0x0a
      002872 0D                    4694 	.db 0x0d
      002873 00                    4695 	.db 0x00
                                   4696 	.area CSEG    (CODE)
                                   4697 	.area CONST   (CODE)
      002874                       4698 ___str_20:
      002874 0A                    4699 	.db 0x0a
      002875 0A                    4700 	.db 0x0a
      002876 0D                    4701 	.db 0x0d
      002877 5E 5E 5E 5E 5E 5E 5E  4702 	.ascii "^^^^^^^^^^^^^^^^^^^-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ "
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 2D 4D
             45 4E 55 2D 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 20
      0028AB 0A                    4703 	.db 0x0a
      0028AC 0A                    4704 	.db 0x0a
      0028AD 0D                    4705 	.db 0x0d
      0028AE 00                    4706 	.db 0x00
                                   4707 	.area CSEG    (CODE)
                                   4708 	.area CONST   (CODE)
      0028AF                       4709 ___str_21:
      0028AF 27 48 27 20 2D 3E 20  4710 	.ascii "'H' -> Enter Heap Demo Mode "
             45 6E 74 65 72 20 48
             65 61 70 20 44 65 6D
             6F 20 4D 6F 64 65 20
      0028CB 0A                    4711 	.db 0x0a
      0028CC 0D                    4712 	.db 0x0d
      0028CD 00                    4713 	.db 0x00
                                   4714 	.area CSEG    (CODE)
                                   4715 	.area CONST   (CODE)
      0028CE                       4716 ___str_22:
      0028CE 27 50 27 20 2D 3E 20  4717 	.ascii "'P' -> Enter PCA Demo Mode "
             45 6E 74 65 72 20 50
             43 41 20 44 65 6D 6F
             20 4D 6F 64 65 20
      0028E9 0A                    4718 	.db 0x0a
      0028EA 0D                    4719 	.db 0x0d
      0028EB 00                    4720 	.db 0x00
                                   4721 	.area CSEG    (CODE)
                                   4722 	.area CONST   (CODE)
      0028EC                       4723 ___str_23:
      0028EC 27 41 27 20 2D 3E 20  4724 	.ascii "'A' -> Assembly C Mix "
             41 73 73 65 6D 62 6C
             79 20 43 20 4D 69 78
             20
      002902 0A                    4725 	.db 0x0a
      002903 0D                    4726 	.db 0x0d
      002904 00                    4727 	.db 0x00
                                   4728 	.area CSEG    (CODE)
                                   4729 	.area CONST   (CODE)
      002905                       4730 ___str_24:
      002905 27 45 27 20 2D 3E 20  4731 	.ascii "'E' -> EEPROM Mode "
             45 45 50 52 4F 4D 20
             4D 6F 64 65 20
      002918 0A                    4732 	.db 0x0a
      002919 0D                    4733 	.db 0x0d
      00291A 00                    4734 	.db 0x00
                                   4735 	.area CSEG    (CODE)
                                   4736 	.area CONST   (CODE)
      00291B                       4737 ___str_25:
      00291B 6C 6F 63 20 2D 3E 25  4738 	.ascii "loc ->%d val is -> %x "
             64 20 76 61 6C 20 69
             73 20 2D 3E 20 25 78
             20
      002931 0A                    4739 	.db 0x0a
      002932 0D                    4740 	.db 0x0d
      002933 00                    4741 	.db 0x00
                                   4742 	.area CSEG    (CODE)
                                   4743 	.area CONST   (CODE)
      002934                       4744 ___str_26:
      002934 0A                    4745 	.db 0x0a
      002935 0D                    4746 	.db 0x0d
      002936 20 47 69 76 65 20 70  4747 	.ascii " Give param 1, 8bit "
             61 72 61 6D 20 31 2C
             20 38 62 69 74 20
      00294A 0A                    4748 	.db 0x0a
      00294B 0D                    4749 	.db 0x0d
      00294C 00                    4750 	.db 0x00
                                   4751 	.area CSEG    (CODE)
                                   4752 	.area CONST   (CODE)
      00294D                       4753 ___str_27:
      00294D 0A                    4754 	.db 0x0a
      00294E 0D                    4755 	.db 0x0d
      00294F 20 47 69 76 65 20 70  4756 	.ascii " Give param 2, 8bit "
             61 72 61 6D 20 32 2C
             20 38 62 69 74 20
      002963 0A                    4757 	.db 0x0a
      002964 0D                    4758 	.db 0x0d
      002965 00                    4759 	.db 0x00
                                   4760 	.area CSEG    (CODE)
                                   4761 	.area CONST   (CODE)
      002966                       4762 ___str_28:
      002966 0A                    4763 	.db 0x0a
      002967 0D                    4764 	.db 0x0d
      002968 20 47 69 76 65 20 70  4765 	.ascii " Give param 3, 8bit "
             61 72 61 6D 20 33 2C
             20 38 62 69 74 20
      00297C 0A                    4766 	.db 0x0a
      00297D 0D                    4767 	.db 0x0d
      00297E 00                    4768 	.db 0x00
                                   4769 	.area CSEG    (CODE)
                                   4770 	.area CONST   (CODE)
      00297F                       4771 ___str_29:
      00297F 0A                    4772 	.db 0x0a
      002980 0D                    4773 	.db 0x0d
      002981 20 52 45 53 55 4C 54  4774 	.ascii " RESULT-> param3<Mod>param2 * param1 = %d "
             2D 3E 20 70 61 72 61
             6D 33 3C 4D 6F 64 3E
             70 61 72 61 6D 32 20
             2A 20 70 61 72 61 6D
             31 20 3D 20 25 64 20
      0029AB 0A                    4775 	.db 0x0a
      0029AC 0D                    4776 	.db 0x0d
      0029AD 00                    4777 	.db 0x00
                                   4778 	.area CSEG    (CODE)
                                   4779 	.area CONST   (CODE)
      0029AE                       4780 ___str_30:
      0029AE 0A                    4781 	.db 0x0a
      0029AF 0D                    4782 	.db 0x0d
      0029B0 20 47 6F 69 6E 67 20  4783 	.ascii " Going back to main menu.. "
             62 61 63 6B 20 74 6F
             20 6D 61 69 6E 20 6D
             65 6E 75 2E 2E 20
      0029CB 0A                    4784 	.db 0x0a
      0029CC 0D                    4785 	.db 0x0d
      0029CD 00                    4786 	.db 0x00
                                   4787 	.area CSEG    (CODE)
                                   4788 	.area CONST   (CODE)
      0029CE                       4789 ___str_31:
      0029CE 42 75 66 66 65 72 20  4790 	.ascii "Buffer %d Freed ...."
             25 64 20 46 72 65 65
             64 20 2E 2E 2E 2E
      0029E2 0A                    4791 	.db 0x0a
      0029E3 0D                    4792 	.db 0x0d
      0029E4 00                    4793 	.db 0x00
                                   4794 	.area CSEG    (CODE)
                                   4795 	.area CONST   (CODE)
      0029E5                       4796 ___str_32:
      0029E5 4C 65 74 27 73 20 62  4797 	.ascii "Let's begin again.."
             65 67 69 6E 20 61 67
             61 69 6E 2E 2E
      0029F8 0A                    4798 	.db 0x0a
      0029F9 0D                    4799 	.db 0x0d
      0029FA 00                    4800 	.db 0x00
                                   4801 	.area CSEG    (CODE)
                                   4802 	.area CONST   (CODE)
      0029FB                       4803 ___str_33:
      0029FB 0A                    4804 	.db 0x0a
      0029FC 0D                    4805 	.db 0x0d
      0029FD 47 69 76 65 20 56 61  4806 	.ascii "Give Valid Buffer Number to delete(1-%d) in 3 digits"
             6C 69 64 20 42 75 66
             66 65 72 20 4E 75 6D
             62 65 72 20 74 6F 20
             64 65 6C 65 74 65 28
             31 2D 25 64 29 20 69
             6E 20 33 20 64 69 67
             69 74 73
      002A31 0A                    4807 	.db 0x0a
      002A32 0D                    4808 	.db 0x0d
      002A33 00                    4809 	.db 0x00
                                   4810 	.area CSEG    (CODE)
                                   4811 	.area CONST   (CODE)
      002A34                       4812 ___str_34:
      002A34 42 75 66 66 65 72 20  4813 	.ascii "Buffer %d Successfully Deleted.. "
             25 64 20 53 75 63 63
             65 73 73 66 75 6C 6C
             79 20 44 65 6C 65 74
             65 64 2E 2E 20
      002A55 0A                    4814 	.db 0x0a
      002A56 0D                    4815 	.db 0x0d
      002A57 00                    4816 	.db 0x00
                                   4817 	.area CSEG    (CODE)
                                   4818 	.area CONST   (CODE)
      002A58                       4819 ___str_35:
      002A58 0A                    4820 	.db 0x0a
      002A59 0A                    4821 	.db 0x0a
      002A5A 0D                    4822 	.db 0x0d
      002A5B 5E 5E 5E 5E 5E 5E 5E  4823 	.ascii "^^^^^^^^^^^^^^^^^^^-PCA-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ "
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 2D 50
             43 41 2D 4D 45 4E 55
             2D 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 5E 20
      002A93 0A                    4824 	.db 0x0a
      002A94 0A                    4825 	.db 0x0a
      002A95 0D                    4826 	.db 0x0d
      002A96 00                    4827 	.db 0x00
                                   4828 	.area CSEG    (CODE)
                                   4829 	.area CONST   (CODE)
      002A97                       4830 ___str_36:
      002A97 27 46 27 20 2D 3E 20  4831 	.ascii "'F' -> Falling Edge Capture Mode"
             46 61 6C 6C 69 6E 67
             20 45 64 67 65 20 43
             61 70 74 75 72 65 20
             4D 6F 64 65
      002AB7 0A                    4832 	.db 0x0a
      002AB8 0D                    4833 	.db 0x0d
      002AB9 00                    4834 	.db 0x00
                                   4835 	.area CSEG    (CODE)
                                   4836 	.area CONST   (CODE)
      002ABA                       4837 ___str_37:
      002ABA 27 53 27 20 2D 3E 20  4838 	.ascii "'S' -> Software Timer Mode"
             53 6F 66 74 77 61 72
             65 20 54 69 6D 65 72
             20 4D 6F 64 65
      002AD4 0A                    4839 	.db 0x0a
      002AD5 0D                    4840 	.db 0x0d
      002AD6 00                    4841 	.db 0x00
                                   4842 	.area CSEG    (CODE)
                                   4843 	.area CONST   (CODE)
      002AD7                       4844 ___str_38:
      002AD7 27 48 27 20 2D 3E 20  4845 	.ascii "'H' -> High Speed Output Mode"
             48 69 67 68 20 53 70
             65 65 64 20 4F 75 74
             70 75 74 20 4D 6F 64
             65
      002AF4 0A                    4846 	.db 0x0a
      002AF5 0D                    4847 	.db 0x0d
      002AF6 00                    4848 	.db 0x00
                                   4849 	.area CSEG    (CODE)
                                   4850 	.area CONST   (CODE)
      002AF7                       4851 ___str_39:
      002AF7 27 50 27 20 2D 3E 20  4852 	.ascii "'P' -> PWM Mode "
             50 57 4D 20 4D 6F 64
             65 20
      002B07 0A                    4853 	.db 0x0a
      002B08 0D                    4854 	.db 0x0d
      002B09 00                    4855 	.db 0x00
                                   4856 	.area CSEG    (CODE)
                                   4857 	.area CONST   (CODE)
      002B0A                       4858 ___str_40:
      002B0A 27 57 27 20 2D 3E 20  4859 	.ascii "'W' -> Watchdog Timer Mode"
             57 61 74 63 68 64 6F
             67 20 54 69 6D 65 72
             20 4D 6F 64 65
      002B24 0A                    4860 	.db 0x0a
      002B25 0D                    4861 	.db 0x0d
      002B26 00                    4862 	.db 0x00
                                   4863 	.area CSEG    (CODE)
                                   4864 	.area CONST   (CODE)
      002B27                       4865 ___str_41:
      002B27 27 49 27 20 2D 3E 20  4866 	.ascii "'I' -> Idle Mode with PWM"
             49 64 6C 65 20 4D 6F
             64 65 20 77 69 74 68
             20 50 57 4D
      002B40 0A                    4867 	.db 0x0a
      002B41 0D                    4868 	.db 0x0d
      002B42 00                    4869 	.db 0x00
                                   4870 	.area CSEG    (CODE)
                                   4871 	.area CONST   (CODE)
      002B43                       4872 ___str_42:
      002B43 27 4C 27 20 2D 3E 20  4873 	.ascii "'L' -> Change Prescalar to lowest frequency"
             43 68 61 6E 67 65 20
             50 72 65 73 63 61 6C
             61 72 20 74 6F 20 6C
             6F 77 65 73 74 20 66
             72 65 71 75 65 6E 63
             79
      002B6E 0A                    4874 	.db 0x0a
      002B6F 0D                    4875 	.db 0x0d
      002B70 00                    4876 	.db 0x00
                                   4877 	.area CSEG    (CODE)
                                   4878 	.area CONST   (CODE)
      002B71                       4879 ___str_43:
      002B71 27 55 27 20 2D 3E 20  4880 	.ascii "'U' -> Hardware Watchdog Timer"
             48 61 72 64 77 61 72
             65 20 57 61 74 63 68
             64 6F 67 20 54 69 6D
             65 72
      002B8F 0A                    4881 	.db 0x0a
      002B90 0D                    4882 	.db 0x0d
      002B91 00                    4883 	.db 0x00
                                   4884 	.area CSEG    (CODE)
                                   4885 	.area CONST   (CODE)
      002B92                       4886 ___str_44:
      002B92 27 44 27 20 2D 3E 20  4887 	.ascii "'D' -> Power Down Mode"
             50 6F 77 65 72 20 44
             6F 77 6E 20 4D 6F 64
             65
      002BA8 0A                    4888 	.db 0x0a
      002BA9 0A                    4889 	.db 0x0a
      002BAA 0D                    4890 	.db 0x0d
      002BAB 00                    4891 	.db 0x00
                                   4892 	.area CSEG    (CODE)
                                   4893 	.area CONST   (CODE)
      002BAC                       4894 ___str_45:
      002BAC 27 4D 27 20 2D 3E 20  4895 	.ascii "'M' -> Go to Main Menu "
             47 6F 20 74 6F 20 4D
             61 69 6E 20 4D 65 6E
             75 20
      002BC3 0A                    4896 	.db 0x0a
      002BC4 0A                    4897 	.db 0x0a
      002BC5 0D                    4898 	.db 0x0d
      002BC6 00                    4899 	.db 0x00
                                   4900 	.area CSEG    (CODE)
                                   4901 	.area CONST   (CODE)
      002BC7                       4902 ___str_46:
      002BC7 0A                    4903 	.db 0x0a
      002BC8 0A                    4904 	.db 0x0a
      002BC9 0D                    4905 	.db 0x0d
      002BCA 5E 5E 5E 5E 5E 5E 5E  4906 	.ascii "^^^^^^^^^^^^^^^^^^^-HEAP-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ "
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 2D 48
             45 41 50 2D 4D 45 4E
             55 2D 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             20
      002C03 0A                    4907 	.db 0x0a
      002C04 0A                    4908 	.db 0x0a
      002C05 0D                    4909 	.db 0x0d
      002C06 00                    4910 	.db 0x00
                                   4911 	.area CSEG    (CODE)
                                   4912 	.area CONST   (CODE)
      002C07                       4913 ___str_47:
      002C07 59 6F 75 20 63 61 6E  4914 	.ascii "You can enter characters or use commands from below "
             20 65 6E 74 65 72 20
             63 68 61 72 61 63 74
             65 72 73 20 6F 72 20
             75 73 65 20 63 6F 6D
             6D 61 6E 64 73 20 66
             72 6F 6D 20 62 65 6C
             6F 77 20
      002C3B 0A                    4915 	.db 0x0a
      002C3C 0D                    4916 	.db 0x0d
      002C3D 00                    4917 	.db 0x00
                                   4918 	.area CSEG    (CODE)
                                   4919 	.area CONST   (CODE)
      002C3E                       4920 ___str_48:
      002C3E 27 3F 27 20 2D 3E 20  4921 	.ascii "'?' -> Show heap status, dump & clear Buffer 0 "
             53 68 6F 77 20 68 65
             61 70 20 73 74 61 74
             75 73 2C 20 64 75 6D
             70 20 26 20 63 6C 65
             61 72 20 42 75 66 66
             65 72 20 30 20
      002C6D 0A                    4922 	.db 0x0a
      002C6E 0D                    4923 	.db 0x0d
      002C6F 00                    4924 	.db 0x00
                                   4925 	.area CSEG    (CODE)
                                   4926 	.area CONST   (CODE)
      002C70                       4927 ___str_49:
      002C70 27 2B 27 20 2D 3E 20  4928 	.ascii "'+' -> Add a new Buffer"
             41 64 64 20 61 20 6E
             65 77 20 42 75 66 66
             65 72
      002C87 0A                    4929 	.db 0x0a
      002C88 0D                    4930 	.db 0x0d
      002C89 00                    4931 	.db 0x00
                                   4932 	.area CSEG    (CODE)
                                   4933 	.area CONST   (CODE)
      002C8A                       4934 ___str_50:
      002C8A 27 2D 27 20 2D 3E 20  4935 	.ascii "'-' -> Delete existing Buffer"
             44 65 6C 65 74 65 20
             65 78 69 73 74 69 6E
             67 20 42 75 66 66 65
             72
      002CA7 0A                    4936 	.db 0x0a
      002CA8 0D                    4937 	.db 0x0d
      002CA9 00                    4938 	.db 0x00
                                   4939 	.area CSEG    (CODE)
                                   4940 	.area CONST   (CODE)
      002CAA                       4941 ___str_51:
      002CAA 27 3D 27 20 2D 3E 20  4942 	.ascii "'=' -> Dump Buffer 0 in hex"
             44 75 6D 70 20 42 75
             66 66 65 72 20 30 20
             69 6E 20 68 65 78
      002CC5 0A                    4943 	.db 0x0a
      002CC6 0D                    4944 	.db 0x0d
      002CC7 00                    4945 	.db 0x00
                                   4946 	.area CSEG    (CODE)
                                   4947 	.area CONST   (CODE)
      002CC8                       4948 ___str_52:
      002CC8 27 40 27 20 2D 3E 20  4949 	.ascii "'@' -> Free all Heap & begin again"
             46 72 65 65 20 61 6C
             6C 20 48 65 61 70 20
             26 20 62 65 67 69 6E
             20 61 67 61 69 6E
      002CEA 0A                    4950 	.db 0x0a
      002CEB 0A                    4951 	.db 0x0a
      002CEC 0D                    4952 	.db 0x0d
      002CED 00                    4953 	.db 0x00
                                   4954 	.area CSEG    (CODE)
                                   4955 	.area CONST   (CODE)
      002CEE                       4956 ___str_53:
      002CEE 0A                    4957 	.db 0x0a
      002CEF 0D                    4958 	.db 0x0d
      002CF0 47 69 76 65 20 56 61  4959 	.ascii "Give Valid Buffer Size(030-300):"
             6C 69 64 20 42 75 66
             66 65 72 20 53 69 7A
             65 28 30 33 30 2D 33
             30 30 29 3A
      002D10 00                    4960 	.db 0x00
                                   4961 	.area CSEG    (CODE)
                                   4962 	.area CONST   (CODE)
      002D11                       4963 ___str_54:
      002D11 46 61 69 6C 65 64 2C  4964 	.ascii "Failed, give smaller buffer"
             20 67 69 76 65 20 73
             6D 61 6C 6C 65 72 20
             62 75 66 66 65 72
      002D2C 0A                    4965 	.db 0x0a
      002D2D 0D                    4966 	.db 0x0d
      002D2E 00                    4967 	.db 0x00
                                   4968 	.area CSEG    (CODE)
                                   4969 	.area CONST   (CODE)
      002D2F                       4970 ___str_55:
      002D2F 0A                    4971 	.db 0x0a
      002D30 0A                    4972 	.db 0x0a
      002D31 0D                    4973 	.db 0x0d
      002D32 23 23 23 23 53 55 43  4974 	.ascii "####SUCCESS, BUFFER Created####"
             43 45 53 53 2C 20 42
             55 46 46 45 52 20 43
             72 65 61 74 65 64 23
             23 23 23
      002D51 0A                    4975 	.db 0x0a
      002D52 0A                    4976 	.db 0x0a
      002D53 0D                    4977 	.db 0x0d
      002D54 00                    4978 	.db 0x00
                                   4979 	.area CSEG    (CODE)
                                   4980 	.area CONST   (CODE)
      002D55                       4981 ___str_56:
      002D55 4E 6F 20 48 65 61 70  4982 	.ascii "No Heap Memory Left, Delete some buffers..."
             20 4D 65 6D 6F 72 79
             20 4C 65 66 74 2C 20
             44 65 6C 65 74 65 20
             73 6F 6D 65 20 62 75
             66 66 65 72 73 2E 2E
             2E
      002D80 0A                    4983 	.db 0x0a
      002D81 0D                    4984 	.db 0x0d
      002D82 00                    4985 	.db 0x00
                                   4986 	.area CSEG    (CODE)
                                   4987 	.area CONST   (CODE)
      002D83                       4988 ___str_57:
      002D83 0A                    4989 	.db 0x0a
      002D84 0D                    4990 	.db 0x0d
      002D85 47 69 76 65 20 56 61  4991 	.ascii "Give Valid Initial Buffer Size(0048-4800):"
             6C 69 64 20 49 6E 69
             74 69 61 6C 20 42 75
             66 66 65 72 20 53 69
             7A 65 28 30 30 34 38
             2D 34 38 30 30 29 3A
      002DAF 00                    4992 	.db 0x00
                                   4993 	.area CSEG    (CODE)
                                   4994 	.area CONST   (CODE)
      002DB0                       4995 ___str_58:
      002DB0 0A                    4996 	.db 0x0a
      002DB1 0D                    4997 	.db 0x0d
      002DB2 23 23 23 23 46 41 49  4998 	.ascii "####FAIL, Please give a smaller buffer size####"
             4C 2C 20 50 6C 65 61
             73 65 20 67 69 76 65
             20 61 20 73 6D 61 6C
             6C 65 72 20 62 75 66
             66 65 72 20 73 69 7A
             65 23 23 23 23
      002DE1 0A                    4999 	.db 0x0a
      002DE2 0A                    5000 	.db 0x0a
      002DE3 0D                    5001 	.db 0x0d
      002DE4 00                    5002 	.db 0x00
                                   5003 	.area CSEG    (CODE)
                                   5004 	.area CONST   (CODE)
      002DE5                       5005 ___str_59:
      002DE5 0A                    5006 	.db 0x0a
      002DE6 0A                    5007 	.db 0x0a
      002DE7 0D                    5008 	.db 0x0d
      002DE8 23 23 23 23 53 55 43  5009 	.ascii "####SUCCESS, INITIAL BUFFERS Created####"
             43 45 53 53 2C 20 49
             4E 49 54 49 41 4C 20
             42 55 46 46 45 52 53
             20 43 72 65 61 74 65
             64 23 23 23 23
      002E10 0A                    5010 	.db 0x0a
      002E11 0A                    5011 	.db 0x0a
      002E12 0D                    5012 	.db 0x0d
      002E13 00                    5013 	.db 0x00
                                   5014 	.area CSEG    (CODE)
                                   5015 	.area CONST   (CODE)
      002E14                       5016 ___str_60:
      002E14 0A                    5017 	.db 0x0a
      002E15 0A                    5018 	.db 0x0a
      002E16 0D                    5019 	.db 0x0d
      002E17 2A 2A 2A 2A 2A 2A 2A  5020 	.ascii "***********Buffer-0-Contents*********** "
             2A 2A 2A 2A 42 75 66
             66 65 72 2D 30 2D 43
             6F 6E 74 65 6E 74 73
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 20
      002E3F 0A                    5021 	.db 0x0a
      002E40 0D                    5022 	.db 0x0d
      002E41 00                    5023 	.db 0x00
                                   5024 	.area CSEG    (CODE)
                                   5025 	.area CONST   (CODE)
      002E42                       5026 ___str_61:
      002E42 0A                    5027 	.db 0x0a
      002E43 0D                    5028 	.db 0x0d
      002E44 00                    5029 	.db 0x00
                                   5030 	.area CSEG    (CODE)
                                   5031 	.area CONST   (CODE)
      002E45                       5032 ___str_62:
      002E45 0A                    5033 	.db 0x0a
      002E46 0A                    5034 	.db 0x0a
      002E47 0D                    5035 	.db 0x0d
      002E48 00                    5036 	.db 0x00
                                   5037 	.area CSEG    (CODE)
                                   5038 	.area CONST   (CODE)
      002E49                       5039 ___str_63:
      002E49 42 75 66 66 65 72 30  5040 	.ascii "Buffer0 is Empty...."
             20 69 73 20 45 6D 70
             74 79 2E 2E 2E 2E
      002E5D 0A                    5041 	.db 0x0a
      002E5E 0D                    5042 	.db 0x0d
      002E5F 00                    5043 	.db 0x00
                                   5044 	.area CSEG    (CODE)
                                   5045 	.area CONST   (CODE)
      002E60                       5046 ___str_64:
      002E60 0A                    5047 	.db 0x0a
      002E61 0D                    5048 	.db 0x0d
      002E62 2D 2D 2D 2D 2D 2D 2D  5049 	.ascii "-------------------------HEXDUMP----------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 48 45 58
             44 55 4D 50 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D
      002E9E 2D 2D 2D 2D           5050 	.ascii "----"
      002EA2 00                    5051 	.db 0x00
                                   5052 	.area CSEG    (CODE)
                                   5053 	.area CONST   (CODE)
      002EA3                       5054 ___str_65:
      002EA3 0A                    5055 	.db 0x0a
      002EA4 0D                    5056 	.db 0x0d
      002EA5 20 20 20 20 41 44 44  5057 	.ascii "    ADDR: +0 +1 +2 +3 +4 +5 +6 +7 +8 +9 +A +B +C +D +E +F "
             52 3A 20 2B 30 20 2B
             31 20 2B 32 20 2B 33
             20 2B 34 20 2B 35 20
             2B 36 20 2B 37 20 2B
             38 20 2B 39 20 2B 41
             20 2B 42 20 2B 43 20
             2B 44 20 2B 45 20 2B
             46 20
      002EDF 0A                    5058 	.db 0x0a
      002EE0 0D                    5059 	.db 0x0d
      002EE1 00                    5060 	.db 0x00
                                   5061 	.area CSEG    (CODE)
                                   5062 	.area CONST   (CODE)
      002EE2                       5063 ___str_66:
      002EE2 0A                    5064 	.db 0x0a
      002EE3 0D                    5065 	.db 0x0d
      002EE4 25 70 3A 20           5066 	.ascii "%p: "
      002EE8 00                    5067 	.db 0x00
                                   5068 	.area CSEG    (CODE)
                                   5069 	.area CONST   (CODE)
      002EE9                       5070 ___str_67:
      002EE9 25 78 20              5071 	.ascii "%x "
      002EEC 00                    5072 	.db 0x00
                                   5073 	.area CSEG    (CODE)
                                   5074 	.area CONST   (CODE)
      002EED                       5075 ___str_68:
      002EED 42 75 66 66 65 72 20  5076 	.ascii "Buffer 0 is empty..."
             30 20 69 73 20 65 6D
             70 74 79 2E 2E 2E
      002F01 0A                    5077 	.db 0x0a
      002F02 0D                    5078 	.db 0x0d
      002F03 00                    5079 	.db 0x00
                                   5080 	.area CSEG    (CODE)
                                   5081 	.area CONST   (CODE)
      002F04                       5082 ___str_69:
      002F04 0A                    5083 	.db 0x0a
      002F05 0D                    5084 	.db 0x0d
      002F06 2A 2A 2A 2A 2A 2A 2A  5085 	.ascii "****************HEAP*STATS*************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 48 45 41 50 2A
             53 54 41 54 53 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A
      002F2D 0A                    5086 	.db 0x0a
      002F2E 0D                    5087 	.db 0x0d
      002F2F 00                    5088 	.db 0x00
                                   5089 	.area CSEG    (CODE)
                                   5090 	.area CONST   (CODE)
      002F30                       5091 ___str_70:
      002F30 54 6F 74 61 6C 20 48  5092 	.ascii "Total Heap Size: %d "
             65 61 70 20 53 69 7A
             65 3A 20 25 64 20
      002F44 0A                    5093 	.db 0x0a
      002F45 0D                    5094 	.db 0x0d
      002F46 00                    5095 	.db 0x00
                                   5096 	.area CSEG    (CODE)
                                   5097 	.area CONST   (CODE)
      002F47                       5098 ___str_71:
      002F47 41 6C 6C 6F 63 61 74  5099 	.ascii "Allocated Heap Size: %d "
             65 64 20 48 65 61 70
             20 53 69 7A 65 3A 20
             25 64 20
      002F5F 0A                    5100 	.db 0x0a
      002F60 0D                    5101 	.db 0x0d
      002F61 00                    5102 	.db 0x00
                                   5103 	.area CSEG    (CODE)
                                   5104 	.area CONST   (CODE)
      002F62                       5105 ___str_72:
      002F62 41 6C 6C 20 43 68 61  5106 	.ascii "All Chars: %d "
             72 73 3A 20 25 64 20
      002F70 0A                    5107 	.db 0x0a
      002F71 0D                    5108 	.db 0x0d
      002F72 00                    5109 	.db 0x00
                                   5110 	.area CSEG    (CODE)
                                   5111 	.area CONST   (CODE)
      002F73                       5112 ___str_73:
      002F73 53 74 6F 72 61 67 65  5113 	.ascii "Storage Chars: %d "
             20 43 68 61 72 73 3A
             20 25 64 20
      002F85 0A                    5114 	.db 0x0a
      002F86 0D                    5115 	.db 0x0d
      002F87 00                    5116 	.db 0x00
                                   5117 	.area CSEG    (CODE)
                                   5118 	.area CONST   (CODE)
      002F88                       5119 ___str_74:
      002F88 54 6F 74 61 6C 20 42  5120 	.ascii "Total Buffers: %d "
             75 66 66 65 72 73 3A
             20 25 64 20
      002F9A 0A                    5121 	.db 0x0a
      002F9B 0D                    5122 	.db 0x0d
      002F9C 00                    5123 	.db 0x00
                                   5124 	.area CSEG    (CODE)
                                   5125 	.area CONST   (CODE)
      002F9D                       5126 ___str_75:
      002F9D 2A 2A 2A 2A 2A 2A 2A  5127 	.ascii "****************BUFFER*%d***************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 42 55 46 46 45
             52 2A 25 64 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A
      002FC5 0A                    5128 	.db 0x0a
      002FC6 0D                    5129 	.db 0x0d
      002FC7 00                    5130 	.db 0x00
                                   5131 	.area CSEG    (CODE)
                                   5132 	.area CONST   (CODE)
      002FC8                       5133 ___str_76:
      002FC8 42 75 66 66 65 72 23  5134 	.ascii "Buffer#: %d "
             3A 20 25 64 20
      002FD4 0A                    5135 	.db 0x0a
      002FD5 0D                    5136 	.db 0x0d
      002FD6 00                    5137 	.db 0x00
                                   5138 	.area CSEG    (CODE)
                                   5139 	.area CONST   (CODE)
      002FD7                       5140 ___str_77:
      002FD7 42 75 66 66 65 72 53  5141 	.ascii "BufferStart: %p "
             74 61 72 74 3A 20 25
             70 20
      002FE7 0A                    5142 	.db 0x0a
      002FE8 0D                    5143 	.db 0x0d
      002FE9 00                    5144 	.db 0x00
                                   5145 	.area CSEG    (CODE)
                                   5146 	.area CONST   (CODE)
      002FEA                       5147 ___str_78:
      002FEA 42 75 66 66 65 72 45  5148 	.ascii "BufferEnd: %p "
             6E 64 3A 20 25 70 20
      002FF8 0A                    5149 	.db 0x0a
      002FF9 0D                    5150 	.db 0x0d
      002FFA 00                    5151 	.db 0x00
                                   5152 	.area CSEG    (CODE)
                                   5153 	.area CONST   (CODE)
      002FFB                       5154 ___str_79:
      002FFB 42 75 66 66 65 72 53  5155 	.ascii "BufferSize: %d "
             69 7A 65 3A 20 25 64
             20
      00300A 0A                    5156 	.db 0x0a
      00300B 0D                    5157 	.db 0x0d
      00300C 00                    5158 	.db 0x00
                                   5159 	.area CSEG    (CODE)
                                   5160 	.area CONST   (CODE)
      00300D                       5161 ___str_80:
      00300D 54 6F 74 61 6C 55 73  5162 	.ascii "TotalUsed: %d "
             65 64 3A 20 25 64 20
      00301B 0A                    5163 	.db 0x0a
      00301C 0D                    5164 	.db 0x0d
      00301D 00                    5165 	.db 0x00
                                   5166 	.area CSEG    (CODE)
                                   5167 	.area CONST   (CODE)
      00301E                       5168 ___str_81:
      00301E 2A 2A 2A 2A 2A 2A 2A  5169 	.ascii "***************************************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A
      003045 0A                    5170 	.db 0x0a
      003046 0D                    5171 	.db 0x0d
      003047 00                    5172 	.db 0x00
                                   5173 	.area CSEG    (CODE)
                                   5174 	.area CONST   (CODE)
      003048                       5175 ___str_82:
      003048 45 52 52 2C 4E 75 6D  5176 	.ascii "ERR,Numbers ONLY!"
             62 65 72 73 20 4F 4E
             4C 59 21
      003059 0A                    5177 	.db 0x0a
      00305A 0D                    5178 	.db 0x0d
      00305B 00                    5179 	.db 0x00
                                   5180 	.area CSEG    (CODE)
                                   5181 	.area CONST   (CODE)
      00305C                       5182 ___str_83:
      00305C 0A                    5183 	.db 0x0a
      00305D 0A                    5184 	.db 0x0a
      00305E 0D                    5185 	.db 0x0d
      00305F 20 54 68 69 73 20 66  5186 	.ascii " This function was called from assembly, character sent from"
             75 6E 63 74 69 6F 6E
             20 77 61 73 20 63 61
             6C 6C 65 64 20 66 72
             6F 6D 20 61 73 73 65
             6D 62 6C 79 2C 20 63
             68 61 72 61 63 74 65
             72 20 73 65 6E 74 20
             66 72 6F 6D
      00309B 20 74 68 65 72 65 20  5187 	.ascii " there -> %c"
             2D 3E 20 25 63
      0030A7 0A                    5188 	.db 0x0a
      0030A8 0D                    5189 	.db 0x0d
      0030A9 00                    5190 	.db 0x00
                                   5191 	.area CSEG    (CODE)
                                   5192 	.area XINIT   (CODE)
      0030B7                       5193 __xinit__global_var_test:
      0030B7 02                    5194 	.db #0x02	; 2
      0030B8                       5195 __xinit__watchdog_flag:
      0030B8 00 00                 5196 	.byte #0x00, #0x00	;  0
                                   5197 	.area CABS    (ABS,CODE)
