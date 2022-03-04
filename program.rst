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
                                     12 	.globl _main
                                     13 	.globl _printf
                                     14 	.globl _free
                                     15 	.globl _malloc
                                     16 	.globl _TF1
                                     17 	.globl _TR1
                                     18 	.globl _TF0
                                     19 	.globl _TR0
                                     20 	.globl _IE1
                                     21 	.globl _IT1
                                     22 	.globl _IE0
                                     23 	.globl _IT0
                                     24 	.globl _SM0
                                     25 	.globl _SM1
                                     26 	.globl _SM2
                                     27 	.globl _REN
                                     28 	.globl _TB8
                                     29 	.globl _RB8
                                     30 	.globl _TI
                                     31 	.globl _RI
                                     32 	.globl _CY
                                     33 	.globl _AC
                                     34 	.globl _F0
                                     35 	.globl _RS1
                                     36 	.globl _RS0
                                     37 	.globl _OV
                                     38 	.globl _F1
                                     39 	.globl _P
                                     40 	.globl _RD
                                     41 	.globl _WR
                                     42 	.globl _T1
                                     43 	.globl _T0
                                     44 	.globl _INT1
                                     45 	.globl _INT0
                                     46 	.globl _TXD0
                                     47 	.globl _TXD
                                     48 	.globl _RXD0
                                     49 	.globl _RXD
                                     50 	.globl _P3_7
                                     51 	.globl _P3_6
                                     52 	.globl _P3_5
                                     53 	.globl _P3_4
                                     54 	.globl _P3_3
                                     55 	.globl _P3_2
                                     56 	.globl _P3_1
                                     57 	.globl _P3_0
                                     58 	.globl _P2_7
                                     59 	.globl _P2_6
                                     60 	.globl _P2_5
                                     61 	.globl _P2_4
                                     62 	.globl _P2_3
                                     63 	.globl _P2_2
                                     64 	.globl _P2_1
                                     65 	.globl _P2_0
                                     66 	.globl _P1_7
                                     67 	.globl _P1_6
                                     68 	.globl _P1_5
                                     69 	.globl _P1_4
                                     70 	.globl _P1_3
                                     71 	.globl _P1_2
                                     72 	.globl _P1_1
                                     73 	.globl _P1_0
                                     74 	.globl _P0_7
                                     75 	.globl _P0_6
                                     76 	.globl _P0_5
                                     77 	.globl _P0_4
                                     78 	.globl _P0_3
                                     79 	.globl _P0_2
                                     80 	.globl _P0_1
                                     81 	.globl _P0_0
                                     82 	.globl _PS
                                     83 	.globl _PT1
                                     84 	.globl _PX1
                                     85 	.globl _PT0
                                     86 	.globl _PX0
                                     87 	.globl _EA
                                     88 	.globl _ES
                                     89 	.globl _ET1
                                     90 	.globl _EX1
                                     91 	.globl _ET0
                                     92 	.globl _EX0
                                     93 	.globl _BREG_F7
                                     94 	.globl _BREG_F6
                                     95 	.globl _BREG_F5
                                     96 	.globl _BREG_F4
                                     97 	.globl _BREG_F3
                                     98 	.globl _BREG_F2
                                     99 	.globl _BREG_F1
                                    100 	.globl _BREG_F0
                                    101 	.globl _P5_7
                                    102 	.globl _P5_6
                                    103 	.globl _P5_5
                                    104 	.globl _P5_4
                                    105 	.globl _P5_3
                                    106 	.globl _P5_2
                                    107 	.globl _P5_1
                                    108 	.globl _P5_0
                                    109 	.globl _P4_7
                                    110 	.globl _P4_6
                                    111 	.globl _P4_5
                                    112 	.globl _P4_4
                                    113 	.globl _P4_3
                                    114 	.globl _P4_2
                                    115 	.globl _P4_1
                                    116 	.globl _P4_0
                                    117 	.globl _PX0L
                                    118 	.globl _PT0L
                                    119 	.globl _PX1L
                                    120 	.globl _PT1L
                                    121 	.globl _PSL
                                    122 	.globl _PT2L
                                    123 	.globl _PPCL
                                    124 	.globl _EC
                                    125 	.globl _CCF0
                                    126 	.globl _CCF1
                                    127 	.globl _CCF2
                                    128 	.globl _CCF3
                                    129 	.globl _CCF4
                                    130 	.globl _CR
                                    131 	.globl _CF
                                    132 	.globl _TF2
                                    133 	.globl _EXF2
                                    134 	.globl _RCLK
                                    135 	.globl _TCLK
                                    136 	.globl _EXEN2
                                    137 	.globl _TR2
                                    138 	.globl _C_T2
                                    139 	.globl _CP_RL2
                                    140 	.globl _T2CON_7
                                    141 	.globl _T2CON_6
                                    142 	.globl _T2CON_5
                                    143 	.globl _T2CON_4
                                    144 	.globl _T2CON_3
                                    145 	.globl _T2CON_2
                                    146 	.globl _T2CON_1
                                    147 	.globl _T2CON_0
                                    148 	.globl _PT2
                                    149 	.globl _ET2
                                    150 	.globl __AUXR
                                    151 	.globl _TMOD
                                    152 	.globl _TL1
                                    153 	.globl _TL0
                                    154 	.globl _TH1
                                    155 	.globl _TH0
                                    156 	.globl _TCON
                                    157 	.globl _SP
                                    158 	.globl _SCON
                                    159 	.globl _SBUF0
                                    160 	.globl _SBUF
                                    161 	.globl _PSW
                                    162 	.globl _PCON
                                    163 	.globl _P3
                                    164 	.globl _P2
                                    165 	.globl _P1
                                    166 	.globl _P0
                                    167 	.globl _IP
                                    168 	.globl _IE
                                    169 	.globl _DP0L
                                    170 	.globl _DPL
                                    171 	.globl _DP0H
                                    172 	.globl _DPH
                                    173 	.globl _B
                                    174 	.globl _ACC
                                    175 	.globl _EECON
                                    176 	.globl _KBF
                                    177 	.globl _KBE
                                    178 	.globl _KBLS
                                    179 	.globl _BRL
                                    180 	.globl _BDRCON
                                    181 	.globl _T2MOD
                                    182 	.globl _SPDAT
                                    183 	.globl _SPSTA
                                    184 	.globl _SPCON
                                    185 	.globl _SADEN
                                    186 	.globl _SADDR
                                    187 	.globl _WDTPRG
                                    188 	.globl _WDTRST
                                    189 	.globl _P5
                                    190 	.globl _P4
                                    191 	.globl _IPH1
                                    192 	.globl _IPL1
                                    193 	.globl _IPH0
                                    194 	.globl _IPL0
                                    195 	.globl _IEN1
                                    196 	.globl _IEN0
                                    197 	.globl _CMOD
                                    198 	.globl _CL
                                    199 	.globl _CH
                                    200 	.globl _CCON
                                    201 	.globl _CCAPM4
                                    202 	.globl _CCAPM3
                                    203 	.globl _CCAPM2
                                    204 	.globl _CCAPM1
                                    205 	.globl _CCAPM0
                                    206 	.globl _CCAP4L
                                    207 	.globl _CCAP3L
                                    208 	.globl _CCAP2L
                                    209 	.globl _CCAP1L
                                    210 	.globl _CCAP0L
                                    211 	.globl _CCAP4H
                                    212 	.globl _CCAP3H
                                    213 	.globl _CCAP2H
                                    214 	.globl _CCAP1H
                                    215 	.globl _CCAP0H
                                    216 	.globl _CKCON1
                                    217 	.globl _CKCON0
                                    218 	.globl _CKRL
                                    219 	.globl _AUXR1
                                    220 	.globl _AUXR
                                    221 	.globl _TH2
                                    222 	.globl _TL2
                                    223 	.globl _RCAP2H
                                    224 	.globl _RCAP2L
                                    225 	.globl _T2CON
                                    226 	.globl _debug_loc
                                    227 	.globl _buffers_array
                                    228 	.globl _program_stats
                                    229 	.globl _user_interface
                                    230 	.globl _at_clear_all_buffers
                                    231 	.globl _delete_buffer
                                    232 	.globl _print_menu
                                    233 	.globl _create_new_buffer
                                    234 	.globl _create_initial_buffers
                                    235 	.globl _enter_chars
                                    236 	.globl _dump_buff_zero_ascii
                                    237 	.globl _dump_buff_zero_hex
                                    238 	.globl _print_heap_stats
                                    239 	.globl _print_all_buffers
                                    240 	.globl _get_number
                                    241 	.globl _get_num_helper
                                    242 	.globl _putchar
                                    243 	.globl _getchar
                                    244 ;--------------------------------------------------------
                                    245 ; special function registers
                                    246 ;--------------------------------------------------------
                                    247 	.area RSEG    (ABS,DATA)
      000000                        248 	.org 0x0000
                           0000C8   249 _T2CON	=	0x00c8
                           0000CA   250 _RCAP2L	=	0x00ca
                           0000CB   251 _RCAP2H	=	0x00cb
                           0000CC   252 _TL2	=	0x00cc
                           0000CD   253 _TH2	=	0x00cd
                           00008E   254 _AUXR	=	0x008e
                           0000A2   255 _AUXR1	=	0x00a2
                           000097   256 _CKRL	=	0x0097
                           00008F   257 _CKCON0	=	0x008f
                           0000AF   258 _CKCON1	=	0x00af
                           0000FA   259 _CCAP0H	=	0x00fa
                           0000FB   260 _CCAP1H	=	0x00fb
                           0000FC   261 _CCAP2H	=	0x00fc
                           0000FD   262 _CCAP3H	=	0x00fd
                           0000FE   263 _CCAP4H	=	0x00fe
                           0000EA   264 _CCAP0L	=	0x00ea
                           0000EB   265 _CCAP1L	=	0x00eb
                           0000EC   266 _CCAP2L	=	0x00ec
                           0000ED   267 _CCAP3L	=	0x00ed
                           0000EE   268 _CCAP4L	=	0x00ee
                           0000DA   269 _CCAPM0	=	0x00da
                           0000DB   270 _CCAPM1	=	0x00db
                           0000DC   271 _CCAPM2	=	0x00dc
                           0000DD   272 _CCAPM3	=	0x00dd
                           0000DE   273 _CCAPM4	=	0x00de
                           0000D8   274 _CCON	=	0x00d8
                           0000F9   275 _CH	=	0x00f9
                           0000E9   276 _CL	=	0x00e9
                           0000D9   277 _CMOD	=	0x00d9
                           0000A8   278 _IEN0	=	0x00a8
                           0000B1   279 _IEN1	=	0x00b1
                           0000B8   280 _IPL0	=	0x00b8
                           0000B7   281 _IPH0	=	0x00b7
                           0000B2   282 _IPL1	=	0x00b2
                           0000B3   283 _IPH1	=	0x00b3
                           0000C0   284 _P4	=	0x00c0
                           0000E8   285 _P5	=	0x00e8
                           0000A6   286 _WDTRST	=	0x00a6
                           0000A7   287 _WDTPRG	=	0x00a7
                           0000A9   288 _SADDR	=	0x00a9
                           0000B9   289 _SADEN	=	0x00b9
                           0000C3   290 _SPCON	=	0x00c3
                           0000C4   291 _SPSTA	=	0x00c4
                           0000C5   292 _SPDAT	=	0x00c5
                           0000C9   293 _T2MOD	=	0x00c9
                           00009B   294 _BDRCON	=	0x009b
                           00009A   295 _BRL	=	0x009a
                           00009C   296 _KBLS	=	0x009c
                           00009D   297 _KBE	=	0x009d
                           00009E   298 _KBF	=	0x009e
                           0000D2   299 _EECON	=	0x00d2
                           0000E0   300 _ACC	=	0x00e0
                           0000F0   301 _B	=	0x00f0
                           000083   302 _DPH	=	0x0083
                           000083   303 _DP0H	=	0x0083
                           000082   304 _DPL	=	0x0082
                           000082   305 _DP0L	=	0x0082
                           0000A8   306 _IE	=	0x00a8
                           0000B8   307 _IP	=	0x00b8
                           000080   308 _P0	=	0x0080
                           000090   309 _P1	=	0x0090
                           0000A0   310 _P2	=	0x00a0
                           0000B0   311 _P3	=	0x00b0
                           000087   312 _PCON	=	0x0087
                           0000D0   313 _PSW	=	0x00d0
                           000099   314 _SBUF	=	0x0099
                           000099   315 _SBUF0	=	0x0099
                           000098   316 _SCON	=	0x0098
                           000081   317 _SP	=	0x0081
                           000088   318 _TCON	=	0x0088
                           00008C   319 _TH0	=	0x008c
                           00008D   320 _TH1	=	0x008d
                           00008A   321 _TL0	=	0x008a
                           00008B   322 _TL1	=	0x008b
                           000089   323 _TMOD	=	0x0089
                           00008E   324 __AUXR	=	0x008e
                                    325 ;--------------------------------------------------------
                                    326 ; special function bits
                                    327 ;--------------------------------------------------------
                                    328 	.area RSEG    (ABS,DATA)
      000000                        329 	.org 0x0000
                           0000AD   330 _ET2	=	0x00ad
                           0000BD   331 _PT2	=	0x00bd
                           0000C8   332 _T2CON_0	=	0x00c8
                           0000C9   333 _T2CON_1	=	0x00c9
                           0000CA   334 _T2CON_2	=	0x00ca
                           0000CB   335 _T2CON_3	=	0x00cb
                           0000CC   336 _T2CON_4	=	0x00cc
                           0000CD   337 _T2CON_5	=	0x00cd
                           0000CE   338 _T2CON_6	=	0x00ce
                           0000CF   339 _T2CON_7	=	0x00cf
                           0000C8   340 _CP_RL2	=	0x00c8
                           0000C9   341 _C_T2	=	0x00c9
                           0000CA   342 _TR2	=	0x00ca
                           0000CB   343 _EXEN2	=	0x00cb
                           0000CC   344 _TCLK	=	0x00cc
                           0000CD   345 _RCLK	=	0x00cd
                           0000CE   346 _EXF2	=	0x00ce
                           0000CF   347 _TF2	=	0x00cf
                           0000DF   348 _CF	=	0x00df
                           0000DE   349 _CR	=	0x00de
                           0000DC   350 _CCF4	=	0x00dc
                           0000DB   351 _CCF3	=	0x00db
                           0000DA   352 _CCF2	=	0x00da
                           0000D9   353 _CCF1	=	0x00d9
                           0000D8   354 _CCF0	=	0x00d8
                           0000AE   355 _EC	=	0x00ae
                           0000BE   356 _PPCL	=	0x00be
                           0000BD   357 _PT2L	=	0x00bd
                           0000BC   358 _PSL	=	0x00bc
                           0000BB   359 _PT1L	=	0x00bb
                           0000BA   360 _PX1L	=	0x00ba
                           0000B9   361 _PT0L	=	0x00b9
                           0000B8   362 _PX0L	=	0x00b8
                           0000C0   363 _P4_0	=	0x00c0
                           0000C1   364 _P4_1	=	0x00c1
                           0000C2   365 _P4_2	=	0x00c2
                           0000C3   366 _P4_3	=	0x00c3
                           0000C4   367 _P4_4	=	0x00c4
                           0000C5   368 _P4_5	=	0x00c5
                           0000C6   369 _P4_6	=	0x00c6
                           0000C7   370 _P4_7	=	0x00c7
                           0000E8   371 _P5_0	=	0x00e8
                           0000E9   372 _P5_1	=	0x00e9
                           0000EA   373 _P5_2	=	0x00ea
                           0000EB   374 _P5_3	=	0x00eb
                           0000EC   375 _P5_4	=	0x00ec
                           0000ED   376 _P5_5	=	0x00ed
                           0000EE   377 _P5_6	=	0x00ee
                           0000EF   378 _P5_7	=	0x00ef
                           0000F0   379 _BREG_F0	=	0x00f0
                           0000F1   380 _BREG_F1	=	0x00f1
                           0000F2   381 _BREG_F2	=	0x00f2
                           0000F3   382 _BREG_F3	=	0x00f3
                           0000F4   383 _BREG_F4	=	0x00f4
                           0000F5   384 _BREG_F5	=	0x00f5
                           0000F6   385 _BREG_F6	=	0x00f6
                           0000F7   386 _BREG_F7	=	0x00f7
                           0000A8   387 _EX0	=	0x00a8
                           0000A9   388 _ET0	=	0x00a9
                           0000AA   389 _EX1	=	0x00aa
                           0000AB   390 _ET1	=	0x00ab
                           0000AC   391 _ES	=	0x00ac
                           0000AF   392 _EA	=	0x00af
                           0000B8   393 _PX0	=	0x00b8
                           0000B9   394 _PT0	=	0x00b9
                           0000BA   395 _PX1	=	0x00ba
                           0000BB   396 _PT1	=	0x00bb
                           0000BC   397 _PS	=	0x00bc
                           000080   398 _P0_0	=	0x0080
                           000081   399 _P0_1	=	0x0081
                           000082   400 _P0_2	=	0x0082
                           000083   401 _P0_3	=	0x0083
                           000084   402 _P0_4	=	0x0084
                           000085   403 _P0_5	=	0x0085
                           000086   404 _P0_6	=	0x0086
                           000087   405 _P0_7	=	0x0087
                           000090   406 _P1_0	=	0x0090
                           000091   407 _P1_1	=	0x0091
                           000092   408 _P1_2	=	0x0092
                           000093   409 _P1_3	=	0x0093
                           000094   410 _P1_4	=	0x0094
                           000095   411 _P1_5	=	0x0095
                           000096   412 _P1_6	=	0x0096
                           000097   413 _P1_7	=	0x0097
                           0000A0   414 _P2_0	=	0x00a0
                           0000A1   415 _P2_1	=	0x00a1
                           0000A2   416 _P2_2	=	0x00a2
                           0000A3   417 _P2_3	=	0x00a3
                           0000A4   418 _P2_4	=	0x00a4
                           0000A5   419 _P2_5	=	0x00a5
                           0000A6   420 _P2_6	=	0x00a6
                           0000A7   421 _P2_7	=	0x00a7
                           0000B0   422 _P3_0	=	0x00b0
                           0000B1   423 _P3_1	=	0x00b1
                           0000B2   424 _P3_2	=	0x00b2
                           0000B3   425 _P3_3	=	0x00b3
                           0000B4   426 _P3_4	=	0x00b4
                           0000B5   427 _P3_5	=	0x00b5
                           0000B6   428 _P3_6	=	0x00b6
                           0000B7   429 _P3_7	=	0x00b7
                           0000B0   430 _RXD	=	0x00b0
                           0000B0   431 _RXD0	=	0x00b0
                           0000B1   432 _TXD	=	0x00b1
                           0000B1   433 _TXD0	=	0x00b1
                           0000B2   434 _INT0	=	0x00b2
                           0000B3   435 _INT1	=	0x00b3
                           0000B4   436 _T0	=	0x00b4
                           0000B5   437 _T1	=	0x00b5
                           0000B6   438 _WR	=	0x00b6
                           0000B7   439 _RD	=	0x00b7
                           0000D0   440 _P	=	0x00d0
                           0000D1   441 _F1	=	0x00d1
                           0000D2   442 _OV	=	0x00d2
                           0000D3   443 _RS0	=	0x00d3
                           0000D4   444 _RS1	=	0x00d4
                           0000D5   445 _F0	=	0x00d5
                           0000D6   446 _AC	=	0x00d6
                           0000D7   447 _CY	=	0x00d7
                           000098   448 _RI	=	0x0098
                           000099   449 _TI	=	0x0099
                           00009A   450 _RB8	=	0x009a
                           00009B   451 _TB8	=	0x009b
                           00009C   452 _REN	=	0x009c
                           00009D   453 _SM2	=	0x009d
                           00009E   454 _SM1	=	0x009e
                           00009F   455 _SM0	=	0x009f
                           000088   456 _IT0	=	0x0088
                           000089   457 _IE0	=	0x0089
                           00008A   458 _IT1	=	0x008a
                           00008B   459 _IE1	=	0x008b
                           00008C   460 _TR0	=	0x008c
                           00008D   461 _TF0	=	0x008d
                           00008E   462 _TR1	=	0x008e
                           00008F   463 _TF1	=	0x008f
                                    464 ;--------------------------------------------------------
                                    465 ; overlayable register banks
                                    466 ;--------------------------------------------------------
                                    467 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        468 	.ds 8
                                    469 ;--------------------------------------------------------
                                    470 ; internal ram data
                                    471 ;--------------------------------------------------------
                                    472 	.area DSEG    (DATA)
      000008                        473 _delete_buffer_sloc0_1_0:
      000008                        474 	.ds 2
      00000A                        475 _delete_buffer_sloc1_1_0:
      00000A                        476 	.ds 2
      00000C                        477 _delete_buffer_sloc2_1_0:
      00000C                        478 	.ds 3
                                    479 ;--------------------------------------------------------
                                    480 ; overlayable items in internal ram 
                                    481 ;--------------------------------------------------------
                                    482 ;--------------------------------------------------------
                                    483 ; Stack segment in internal ram 
                                    484 ;--------------------------------------------------------
                                    485 	.area	SSEG
      000021                        486 __start__stack:
      000021                        487 	.ds	1
                                    488 
                                    489 ;--------------------------------------------------------
                                    490 ; indirectly addressable internal ram data
                                    491 ;--------------------------------------------------------
                                    492 	.area ISEG    (DATA)
                                    493 ;--------------------------------------------------------
                                    494 ; absolute internal ram data
                                    495 ;--------------------------------------------------------
                                    496 	.area IABS    (ABS,DATA)
                                    497 	.area IABS    (ABS,DATA)
                                    498 ;--------------------------------------------------------
                                    499 ; bit data
                                    500 ;--------------------------------------------------------
                                    501 	.area BSEG    (BIT)
                                    502 ;--------------------------------------------------------
                                    503 ; paged external ram data
                                    504 ;--------------------------------------------------------
                                    505 	.area PSEG    (PAG,XDATA)
                                    506 ;--------------------------------------------------------
                                    507 ; external ram data
                                    508 ;--------------------------------------------------------
                                    509 	.area XSEG    (XDATA)
      000001                        510 _program_stats::
      000001                        511 	.ds 10
      00000B                        512 _buffers_array::
      00000B                        513 	.ds 300
      000137                        514 _debug_loc::
      000137                        515 	.ds 2
      000139                        516 _create_new_buffer_buff_65536_58:
      000139                        517 	.ds 12
      000145                        518 _create_initial_buffers_buff_65537_64:
      000145                        519 	.ds 12
      000151                        520 _create_initial_buffers_buff1_65537_64:
      000151                        521 	.ds 12
      00015D                        522 _dump_buff_zero_ascii_j_65536_79:
      00015D                        523 	.ds 2
      00015F                        524 _dump_buff_zero_hex_j_131073_87:
      00015F                        525 	.ds 2
      000161                        526 _get_number_total_chars_65536_96:
      000161                        527 	.ds 2
      000163                        528 _get_number_num_65536_97:
      000163                        529 	.ds 2
      000165                        530 _get_num_helper_times_65536_102:
      000165                        531 	.ds 2
      000167                        532 _get_num_helper_num_65536_103:
      000167                        533 	.ds 2
      000169                        534 _putchar_c_65536_106:
      000169                        535 	.ds 2
                                    536 ;--------------------------------------------------------
                                    537 ; absolute external ram data
                                    538 ;--------------------------------------------------------
                                    539 	.area XABS    (ABS,XDATA)
                                    540 ;--------------------------------------------------------
                                    541 ; external initialized ram data
                                    542 ;--------------------------------------------------------
                                    543 	.area XISEG   (XDATA)
                                    544 	.area HOME    (CODE)
                                    545 	.area GSINIT0 (CODE)
                                    546 	.area GSINIT1 (CODE)
                                    547 	.area GSINIT2 (CODE)
                                    548 	.area GSINIT3 (CODE)
                                    549 	.area GSINIT4 (CODE)
                                    550 	.area GSINIT5 (CODE)
                                    551 	.area GSINIT  (CODE)
                                    552 	.area GSFINAL (CODE)
                                    553 	.area CSEG    (CODE)
                                    554 ;--------------------------------------------------------
                                    555 ; interrupt vector 
                                    556 ;--------------------------------------------------------
                                    557 	.area HOME    (CODE)
      000000                        558 __interrupt_vect:
      000000 02 00 06         [24]  559 	ljmp	__sdcc_gsinit_startup
                                    560 ;--------------------------------------------------------
                                    561 ; global & static initialisations
                                    562 ;--------------------------------------------------------
                                    563 	.area HOME    (CODE)
                                    564 	.area GSINIT  (CODE)
                                    565 	.area GSFINAL (CODE)
                                    566 	.area GSINIT  (CODE)
                                    567 	.globl __sdcc_gsinit_startup
                                    568 	.globl __sdcc_program_startup
                                    569 	.globl __start__stack
                                    570 	.globl __mcs51_genXINIT
                                    571 	.globl __mcs51_genXRAMCLEAR
                                    572 	.globl __mcs51_genRAMCLEAR
                                    573 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  574 	ljmp	__sdcc_program_startup
                                    575 ;--------------------------------------------------------
                                    576 ; Home
                                    577 ;--------------------------------------------------------
                                    578 	.area HOME    (CODE)
                                    579 	.area HOME    (CODE)
      000003                        580 __sdcc_program_startup:
      000003 02 00 62         [24]  581 	ljmp	_main
                                    582 ;	return from main will return to caller
                                    583 ;--------------------------------------------------------
                                    584 ; code
                                    585 ;--------------------------------------------------------
                                    586 	.area CSEG    (CODE)
                                    587 ;------------------------------------------------------------
                                    588 ;Allocation info for local variables in function 'main'
                                    589 ;------------------------------------------------------------
                                    590 ;	program.c:70: void main(void)
                                    591 ;	-----------------------------------------
                                    592 ;	 function main
                                    593 ;	-----------------------------------------
      000062                        594 _main:
                           000007   595 	ar7 = 0x07
                           000006   596 	ar6 = 0x06
                           000005   597 	ar5 = 0x05
                           000004   598 	ar4 = 0x04
                           000003   599 	ar3 = 0x03
                           000002   600 	ar2 = 0x02
                           000001   601 	ar1 = 0x01
                           000000   602 	ar0 = 0x00
                                    603 ;	program.c:72: printf("HELLO! \n\r");
      000062 74 5E            [12]  604 	mov	a,#___str_0
      000064 C0 E0            [24]  605 	push	acc
      000066 74 1C            [12]  606 	mov	a,#(___str_0 >> 8)
      000068 C0 E0            [24]  607 	push	acc
      00006A 74 80            [12]  608 	mov	a,#0x80
      00006C C0 E0            [24]  609 	push	acc
      00006E 12 12 23         [24]  610 	lcall	_printf
      000071 15 81            [12]  611 	dec	sp
      000073 15 81            [12]  612 	dec	sp
      000075 15 81            [12]  613 	dec	sp
                                    614 ;	program.c:73: user_interface();
                                    615 ;	program.c:74: }
      000077 02 00 7A         [24]  616 	ljmp	_user_interface
                                    617 ;------------------------------------------------------------
                                    618 ;Allocation info for local variables in function 'user_interface'
                                    619 ;------------------------------------------------------------
                                    620 ;	program.c:81: void user_interface()
                                    621 ;	-----------------------------------------
                                    622 ;	 function user_interface
                                    623 ;	-----------------------------------------
      00007A                        624 _user_interface:
                                    625 ;	program.c:83: create_initial_buffers();
      00007A 12 04 F5         [24]  626 	lcall	_create_initial_buffers
                                    627 ;	program.c:84: print_all_buffers();
      00007D 12 0A FC         [24]  628 	lcall	_print_all_buffers
                                    629 ;	program.c:85: enter_chars();
                                    630 ;	program.c:86: }
      000080 02 06 CC         [24]  631 	ljmp	_enter_chars
                                    632 ;------------------------------------------------------------
                                    633 ;Allocation info for local variables in function 'at_clear_all_buffers'
                                    634 ;------------------------------------------------------------
                                    635 ;i                         Allocated with name '_at_clear_all_buffers_i_131072_49'
                                    636 ;------------------------------------------------------------
                                    637 ;	program.c:94: void at_clear_all_buffers()
                                    638 ;	-----------------------------------------
                                    639 ;	 function at_clear_all_buffers
                                    640 ;	-----------------------------------------
      000083                        641 _at_clear_all_buffers:
                                    642 ;	program.c:96: for (int i = 0; i < program_stats.total_buffers; i++)
      000083 7E 00            [12]  643 	mov	r6,#0x00
      000085 7F 00            [12]  644 	mov	r7,#0x00
      000087                        645 00103$:
      000087 90 00 09         [24]  646 	mov	dptr,#(_program_stats + 0x0008)
      00008A E0               [24]  647 	movx	a,@dptr
      00008B FC               [12]  648 	mov	r4,a
      00008C A3               [24]  649 	inc	dptr
      00008D E0               [24]  650 	movx	a,@dptr
      00008E FD               [12]  651 	mov	r5,a
      00008F C3               [12]  652 	clr	c
      000090 EE               [12]  653 	mov	a,r6
      000091 9C               [12]  654 	subb	a,r4
      000092 EF               [12]  655 	mov	a,r7
      000093 64 80            [12]  656 	xrl	a,#0x80
      000095 8D F0            [24]  657 	mov	b,r5
      000097 63 F0 80         [24]  658 	xrl	b,#0x80
      00009A 95 F0            [12]  659 	subb	a,b
      00009C 50 61            [24]  660 	jnc	00101$
                                    661 ;	program.c:98: free(buffers_array[i].buffer_start);
      00009E 90 15 0F         [24]  662 	mov	dptr,#__mulint_PARM_2
      0000A1 EE               [12]  663 	mov	a,r6
      0000A2 F0               [24]  664 	movx	@dptr,a
      0000A3 EF               [12]  665 	mov	a,r7
      0000A4 A3               [24]  666 	inc	dptr
      0000A5 F0               [24]  667 	movx	@dptr,a
      0000A6 90 00 0C         [24]  668 	mov	dptr,#0x000c
      0000A9 C0 07            [24]  669 	push	ar7
      0000AB C0 06            [24]  670 	push	ar6
      0000AD 12 11 B5         [24]  671 	lcall	__mulint
      0000B0 AC 82            [24]  672 	mov	r4,dpl
      0000B2 AD 83            [24]  673 	mov	r5,dph
      0000B4 EC               [12]  674 	mov	a,r4
      0000B5 24 0B            [12]  675 	add	a,#_buffers_array
      0000B7 FC               [12]  676 	mov	r4,a
      0000B8 ED               [12]  677 	mov	a,r5
      0000B9 34 00            [12]  678 	addc	a,#(_buffers_array >> 8)
      0000BB FD               [12]  679 	mov	r5,a
      0000BC 8C 82            [24]  680 	mov	dpl,r4
      0000BE 8D 83            [24]  681 	mov	dph,r5
      0000C0 A3               [24]  682 	inc	dptr
      0000C1 A3               [24]  683 	inc	dptr
      0000C2 E0               [24]  684 	movx	a,@dptr
      0000C3 FB               [12]  685 	mov	r3,a
      0000C4 A3               [24]  686 	inc	dptr
      0000C5 E0               [24]  687 	movx	a,@dptr
      0000C6 FC               [12]  688 	mov	r4,a
      0000C7 A3               [24]  689 	inc	dptr
      0000C8 E0               [24]  690 	movx	a,@dptr
      0000C9 FD               [12]  691 	mov	r5,a
      0000CA 8B 82            [24]  692 	mov	dpl,r3
      0000CC 8C 83            [24]  693 	mov	dph,r4
      0000CE 8D F0            [24]  694 	mov	b,r5
      0000D0 12 0E 2A         [24]  695 	lcall	_free
      0000D3 D0 06            [24]  696 	pop	ar6
      0000D5 D0 07            [24]  697 	pop	ar7
                                    698 ;	program.c:99: printf("Buffer %d Freed ....\n\r", i);
      0000D7 C0 07            [24]  699 	push	ar7
      0000D9 C0 06            [24]  700 	push	ar6
      0000DB C0 06            [24]  701 	push	ar6
      0000DD C0 07            [24]  702 	push	ar7
      0000DF 74 68            [12]  703 	mov	a,#___str_1
      0000E1 C0 E0            [24]  704 	push	acc
      0000E3 74 1C            [12]  705 	mov	a,#(___str_1 >> 8)
      0000E5 C0 E0            [24]  706 	push	acc
      0000E7 74 80            [12]  707 	mov	a,#0x80
      0000E9 C0 E0            [24]  708 	push	acc
      0000EB 12 12 23         [24]  709 	lcall	_printf
      0000EE E5 81            [12]  710 	mov	a,sp
      0000F0 24 FB            [12]  711 	add	a,#0xfb
      0000F2 F5 81            [12]  712 	mov	sp,a
      0000F4 D0 06            [24]  713 	pop	ar6
      0000F6 D0 07            [24]  714 	pop	ar7
                                    715 ;	program.c:96: for (int i = 0; i < program_stats.total_buffers; i++)
      0000F8 0E               [12]  716 	inc	r6
      0000F9 BE 00 8B         [24]  717 	cjne	r6,#0x00,00103$
      0000FC 0F               [12]  718 	inc	r7
      0000FD 80 88            [24]  719 	sjmp	00103$
      0000FF                        720 00101$:
                                    721 ;	program.c:101: printf("Let's begin again..\n\r");
      0000FF 74 7F            [12]  722 	mov	a,#___str_2
      000101 C0 E0            [24]  723 	push	acc
      000103 74 1C            [12]  724 	mov	a,#(___str_2 >> 8)
      000105 C0 E0            [24]  725 	push	acc
      000107 74 80            [12]  726 	mov	a,#0x80
      000109 C0 E0            [24]  727 	push	acc
      00010B 12 12 23         [24]  728 	lcall	_printf
      00010E 15 81            [12]  729 	dec	sp
      000110 15 81            [12]  730 	dec	sp
      000112 15 81            [12]  731 	dec	sp
                                    732 ;	program.c:102: user_interface();
                                    733 ;	program.c:103: }
      000114 02 00 7A         [24]  734 	ljmp	_user_interface
                                    735 ;------------------------------------------------------------
                                    736 ;Allocation info for local variables in function 'delete_buffer'
                                    737 ;------------------------------------------------------------
                                    738 ;sloc0                     Allocated with name '_delete_buffer_sloc0_1_0'
                                    739 ;sloc1                     Allocated with name '_delete_buffer_sloc1_1_0'
                                    740 ;sloc2                     Allocated with name '_delete_buffer_sloc2_1_0'
                                    741 ;buff_number               Allocated with name '_delete_buffer_buff_number_65536_51'
                                    742 ;buff_to_free              Allocated with name '_delete_buffer_buff_to_free_65536_51'
                                    743 ;buffer_freed_size         Allocated with name '_delete_buffer_buffer_freed_size_65536_51'
                                    744 ;i                         Allocated with name '_delete_buffer_i_196608_53'
                                    745 ;------------------------------------------------------------
                                    746 ;	program.c:110: int delete_buffer()
                                    747 ;	-----------------------------------------
                                    748 ;	 function delete_buffer
                                    749 ;	-----------------------------------------
      000117                        750 _delete_buffer:
                                    751 ;	program.c:115: get_del_num:
      000117                        752 00101$:
                                    753 ;	program.c:116: printf("\n\rGive Valid Buffer Number to delete(1-%d) in 3 digits\n\r", (program_stats.total_buffers - 1));
      000117 90 00 09         [24]  754 	mov	dptr,#(_program_stats + 0x0008)
      00011A E0               [24]  755 	movx	a,@dptr
      00011B FE               [12]  756 	mov	r6,a
      00011C A3               [24]  757 	inc	dptr
      00011D E0               [24]  758 	movx	a,@dptr
      00011E FF               [12]  759 	mov	r7,a
      00011F 1E               [12]  760 	dec	r6
      000120 BE FF 01         [24]  761 	cjne	r6,#0xff,00139$
      000123 1F               [12]  762 	dec	r7
      000124                        763 00139$:
      000124 C0 06            [24]  764 	push	ar6
      000126 C0 07            [24]  765 	push	ar7
      000128 74 95            [12]  766 	mov	a,#___str_3
      00012A C0 E0            [24]  767 	push	acc
      00012C 74 1C            [12]  768 	mov	a,#(___str_3 >> 8)
      00012E C0 E0            [24]  769 	push	acc
      000130 74 80            [12]  770 	mov	a,#0x80
      000132 C0 E0            [24]  771 	push	acc
      000134 12 12 23         [24]  772 	lcall	_printf
      000137 E5 81            [12]  773 	mov	a,sp
      000139 24 FB            [12]  774 	add	a,#0xfb
      00013B F5 81            [12]  775 	mov	sp,a
                                    776 ;	program.c:117: buff_number = get_number(3);
      00013D 90 00 03         [24]  777 	mov	dptr,#0x0003
      000140 12 0C 66         [24]  778 	lcall	_get_number
      000143 AE 82            [24]  779 	mov	r6,dpl
      000145 AF 83            [24]  780 	mov	r7,dph
                                    781 ;	program.c:119: if (buff_number > 0 && buff_number < program_stats.total_buffers)
      000147 C3               [12]  782 	clr	c
      000148 E4               [12]  783 	clr	a
      000149 9E               [12]  784 	subb	a,r6
      00014A 74 80            [12]  785 	mov	a,#(0x00 ^ 0x80)
      00014C 8F F0            [24]  786 	mov	b,r7
      00014E 63 F0 80         [24]  787 	xrl	b,#0x80
      000151 95 F0            [12]  788 	subb	a,b
      000153 50 C2            [24]  789 	jnc	00101$
      000155 90 00 09         [24]  790 	mov	dptr,#(_program_stats + 0x0008)
      000158 E0               [24]  791 	movx	a,@dptr
      000159 FC               [12]  792 	mov	r4,a
      00015A A3               [24]  793 	inc	dptr
      00015B E0               [24]  794 	movx	a,@dptr
      00015C FD               [12]  795 	mov	r5,a
      00015D C3               [12]  796 	clr	c
      00015E EE               [12]  797 	mov	a,r6
      00015F 9C               [12]  798 	subb	a,r4
      000160 EF               [12]  799 	mov	a,r7
      000161 64 80            [12]  800 	xrl	a,#0x80
      000163 8D F0            [24]  801 	mov	b,r5
      000165 63 F0 80         [24]  802 	xrl	b,#0x80
      000168 95 F0            [12]  803 	subb	a,b
      00016A 50 AB            [24]  804 	jnc	00101$
                                    805 ;	program.c:121: buff_to_free = buffers_array[buff_number].buffer_start;
      00016C 90 15 0F         [24]  806 	mov	dptr,#__mulint_PARM_2
      00016F EE               [12]  807 	mov	a,r6
      000170 F0               [24]  808 	movx	@dptr,a
      000171 EF               [12]  809 	mov	a,r7
      000172 A3               [24]  810 	inc	dptr
      000173 F0               [24]  811 	movx	@dptr,a
      000174 90 00 0C         [24]  812 	mov	dptr,#0x000c
      000177 C0 07            [24]  813 	push	ar7
      000179 C0 06            [24]  814 	push	ar6
      00017B 12 11 B5         [24]  815 	lcall	__mulint
      00017E AC 82            [24]  816 	mov	r4,dpl
      000180 AD 83            [24]  817 	mov	r5,dph
      000182 D0 06            [24]  818 	pop	ar6
      000184 D0 07            [24]  819 	pop	ar7
      000186 EC               [12]  820 	mov	a,r4
      000187 24 0B            [12]  821 	add	a,#_buffers_array
      000189 FC               [12]  822 	mov	r4,a
      00018A ED               [12]  823 	mov	a,r5
      00018B 34 00            [12]  824 	addc	a,#(_buffers_array >> 8)
      00018D FD               [12]  825 	mov	r5,a
      00018E 8C 82            [24]  826 	mov	dpl,r4
      000190 8D 83            [24]  827 	mov	dph,r5
      000192 A3               [24]  828 	inc	dptr
      000193 A3               [24]  829 	inc	dptr
      000194 E0               [24]  830 	movx	a,@dptr
      000195 F5 0C            [12]  831 	mov	_delete_buffer_sloc2_1_0,a
      000197 A3               [24]  832 	inc	dptr
      000198 E0               [24]  833 	movx	a,@dptr
      000199 F5 0D            [12]  834 	mov	(_delete_buffer_sloc2_1_0 + 1),a
      00019B A3               [24]  835 	inc	dptr
      00019C E0               [24]  836 	movx	a,@dptr
      00019D F5 0E            [12]  837 	mov	(_delete_buffer_sloc2_1_0 + 2),a
                                    838 ;	program.c:122: buffer_freed_size = buffers_array[buff_number].buff_size;
      00019F 74 08            [12]  839 	mov	a,#0x08
      0001A1 2C               [12]  840 	add	a,r4
      0001A2 F5 82            [12]  841 	mov	dpl,a
      0001A4 E4               [12]  842 	clr	a
      0001A5 3D               [12]  843 	addc	a,r5
      0001A6 F5 83            [12]  844 	mov	dph,a
      0001A8 E0               [24]  845 	movx	a,@dptr
      0001A9 FC               [12]  846 	mov	r4,a
      0001AA A3               [24]  847 	inc	dptr
      0001AB E0               [24]  848 	movx	a,@dptr
      0001AC FD               [12]  849 	mov	r5,a
                                    850 ;	program.c:123: for (int i = 0; i < (program_stats.total_buffers - 1); i++)
      0001AD E4               [12]  851 	clr	a
      0001AE F5 08            [12]  852 	mov	_delete_buffer_sloc0_1_0,a
      0001B0 F5 09            [12]  853 	mov	(_delete_buffer_sloc0_1_0 + 1),a
      0001B2                        854 00110$:
      0001B2 C0 04            [24]  855 	push	ar4
      0001B4 C0 05            [24]  856 	push	ar5
      0001B6 90 00 09         [24]  857 	mov	dptr,#(_program_stats + 0x0008)
      0001B9 E0               [24]  858 	movx	a,@dptr
      0001BA F5 0A            [12]  859 	mov	_delete_buffer_sloc1_1_0,a
      0001BC A3               [24]  860 	inc	dptr
      0001BD E0               [24]  861 	movx	a,@dptr
      0001BE F5 0B            [12]  862 	mov	(_delete_buffer_sloc1_1_0 + 1),a
      0001C0 E5 0A            [12]  863 	mov	a,_delete_buffer_sloc1_1_0
      0001C2 24 FF            [12]  864 	add	a,#0xff
      0001C4 F8               [12]  865 	mov	r0,a
      0001C5 E5 0B            [12]  866 	mov	a,(_delete_buffer_sloc1_1_0 + 1)
      0001C7 34 FF            [12]  867 	addc	a,#0xff
      0001C9 FD               [12]  868 	mov	r5,a
      0001CA C3               [12]  869 	clr	c
      0001CB E5 08            [12]  870 	mov	a,_delete_buffer_sloc0_1_0
      0001CD 98               [12]  871 	subb	a,r0
      0001CE E5 09            [12]  872 	mov	a,(_delete_buffer_sloc0_1_0 + 1)
      0001D0 64 80            [12]  873 	xrl	a,#0x80
      0001D2 8D F0            [24]  874 	mov	b,r5
      0001D4 63 F0 80         [24]  875 	xrl	b,#0x80
      0001D7 95 F0            [12]  876 	subb	a,b
      0001D9 D0 05            [24]  877 	pop	ar5
      0001DB D0 04            [24]  878 	pop	ar4
      0001DD 40 03            [24]  879 	jc	00142$
      0001DF 02 02 90         [24]  880 	ljmp	00104$
      0001E2                        881 00142$:
                                    882 ;	program.c:125: if (i >= buff_number)
      0001E2 C3               [12]  883 	clr	c
      0001E3 E5 08            [12]  884 	mov	a,_delete_buffer_sloc0_1_0
      0001E5 9E               [12]  885 	subb	a,r6
      0001E6 E5 09            [12]  886 	mov	a,(_delete_buffer_sloc0_1_0 + 1)
      0001E8 64 80            [12]  887 	xrl	a,#0x80
      0001EA 8F F0            [24]  888 	mov	b,r7
      0001EC 63 F0 80         [24]  889 	xrl	b,#0x80
      0001EF 95 F0            [12]  890 	subb	a,b
      0001F1 50 03            [24]  891 	jnc	00143$
      0001F3 02 02 85         [24]  892 	ljmp	00111$
      0001F6                        893 00143$:
                                    894 ;	program.c:127: buffers_array[i + 1].buffer_num = i;
      0001F6 C0 04            [24]  895 	push	ar4
      0001F8 C0 05            [24]  896 	push	ar5
      0001FA 90 15 0F         [24]  897 	mov	dptr,#__mulint_PARM_2
      0001FD 74 01            [12]  898 	mov	a,#0x01
      0001FF 25 08            [12]  899 	add	a,_delete_buffer_sloc0_1_0
      000201 F0               [24]  900 	movx	@dptr,a
      000202 E4               [12]  901 	clr	a
      000203 35 09            [12]  902 	addc	a,(_delete_buffer_sloc0_1_0 + 1)
      000205 A3               [24]  903 	inc	dptr
      000206 F0               [24]  904 	movx	@dptr,a
      000207 90 00 0C         [24]  905 	mov	dptr,#0x000c
      00020A C0 07            [24]  906 	push	ar7
      00020C C0 06            [24]  907 	push	ar6
      00020E C0 04            [24]  908 	push	ar4
      000210 12 11 B5         [24]  909 	lcall	__mulint
      000213 A8 82            [24]  910 	mov	r0,dpl
      000215 AD 83            [24]  911 	mov	r5,dph
      000217 D0 04            [24]  912 	pop	ar4
      000219 E8               [12]  913 	mov	a,r0
      00021A 24 0B            [12]  914 	add	a,#_buffers_array
      00021C F5 82            [12]  915 	mov	dpl,a
      00021E ED               [12]  916 	mov	a,r5
      00021F 34 00            [12]  917 	addc	a,#(_buffers_array >> 8)
      000221 F5 83            [12]  918 	mov	dph,a
      000223 E5 08            [12]  919 	mov	a,_delete_buffer_sloc0_1_0
      000225 F0               [24]  920 	movx	@dptr,a
      000226 E5 09            [12]  921 	mov	a,(_delete_buffer_sloc0_1_0 + 1)
      000228 A3               [24]  922 	inc	dptr
      000229 F0               [24]  923 	movx	@dptr,a
                                    924 ;	program.c:128: buffers_array[i] = buffers_array[i + 1];
      00022A 90 15 0F         [24]  925 	mov	dptr,#__mulint_PARM_2
      00022D E5 08            [12]  926 	mov	a,_delete_buffer_sloc0_1_0
      00022F F0               [24]  927 	movx	@dptr,a
      000230 E5 09            [12]  928 	mov	a,(_delete_buffer_sloc0_1_0 + 1)
      000232 A3               [24]  929 	inc	dptr
      000233 F0               [24]  930 	movx	@dptr,a
      000234 90 00 0C         [24]  931 	mov	dptr,#0x000c
      000237 C0 05            [24]  932 	push	ar5
      000239 C0 00            [24]  933 	push	ar0
      00023B 12 11 B5         [24]  934 	lcall	__mulint
      00023E AB 82            [24]  935 	mov	r3,dpl
      000240 AC 83            [24]  936 	mov	r4,dph
      000242 D0 00            [24]  937 	pop	ar0
      000244 D0 05            [24]  938 	pop	ar5
      000246 EB               [12]  939 	mov	a,r3
      000247 24 0B            [12]  940 	add	a,#_buffers_array
      000249 FB               [12]  941 	mov	r3,a
      00024A EC               [12]  942 	mov	a,r4
      00024B 34 00            [12]  943 	addc	a,#(_buffers_array >> 8)
      00024D FC               [12]  944 	mov	r4,a
      00024E 7A 00            [12]  945 	mov	r2,#0x00
      000250 E8               [12]  946 	mov	a,r0
      000251 24 0B            [12]  947 	add	a,#_buffers_array
      000253 F8               [12]  948 	mov	r0,a
      000254 ED               [12]  949 	mov	a,r5
      000255 34 00            [12]  950 	addc	a,#(_buffers_array >> 8)
      000257 FD               [12]  951 	mov	r5,a
      000258 90 14 FE         [24]  952 	mov	dptr,#___memcpy_PARM_2
      00025B E8               [12]  953 	mov	a,r0
      00025C F0               [24]  954 	movx	@dptr,a
      00025D ED               [12]  955 	mov	a,r5
      00025E A3               [24]  956 	inc	dptr
      00025F F0               [24]  957 	movx	@dptr,a
      000260 E4               [12]  958 	clr	a
      000261 A3               [24]  959 	inc	dptr
      000262 F0               [24]  960 	movx	@dptr,a
      000263 90 15 01         [24]  961 	mov	dptr,#___memcpy_PARM_3
      000266 74 0C            [12]  962 	mov	a,#0x0c
      000268 F0               [24]  963 	movx	@dptr,a
      000269 E4               [12]  964 	clr	a
      00026A A3               [24]  965 	inc	dptr
      00026B F0               [24]  966 	movx	@dptr,a
      00026C 8B 82            [24]  967 	mov	dpl,r3
      00026E 8C 83            [24]  968 	mov	dph,r4
      000270 8A F0            [24]  969 	mov	b,r2
      000272 C0 05            [24]  970 	push	ar5
      000274 C0 04            [24]  971 	push	ar4
      000276 12 0F 81         [24]  972 	lcall	___memcpy
      000279 D0 04            [24]  973 	pop	ar4
      00027B D0 05            [24]  974 	pop	ar5
      00027D D0 06            [24]  975 	pop	ar6
      00027F D0 07            [24]  976 	pop	ar7
                                    977 ;	program.c:139: goto get_del_num;
      000281 D0 05            [24]  978 	pop	ar5
      000283 D0 04            [24]  979 	pop	ar4
                                    980 ;	program.c:128: buffers_array[i] = buffers_array[i + 1];
      000285                        981 00111$:
                                    982 ;	program.c:123: for (int i = 0; i < (program_stats.total_buffers - 1); i++)
      000285 05 08            [12]  983 	inc	_delete_buffer_sloc0_1_0
      000287 E4               [12]  984 	clr	a
      000288 B5 08 02         [24]  985 	cjne	a,_delete_buffer_sloc0_1_0,00144$
      00028B 05 09            [12]  986 	inc	(_delete_buffer_sloc0_1_0 + 1)
      00028D                        987 00144$:
      00028D 02 01 B2         [24]  988 	ljmp	00110$
      000290                        989 00104$:
                                    990 ;	program.c:131: program_stats.total_buffers -= 1;
      000290 E5 0A            [12]  991 	mov	a,_delete_buffer_sloc1_1_0
      000292 24 FF            [12]  992 	add	a,#0xff
      000294 FA               [12]  993 	mov	r2,a
      000295 E5 0B            [12]  994 	mov	a,(_delete_buffer_sloc1_1_0 + 1)
      000297 34 FF            [12]  995 	addc	a,#0xff
      000299 FB               [12]  996 	mov	r3,a
      00029A 90 00 09         [24]  997 	mov	dptr,#(_program_stats + 0x0008)
      00029D EA               [12]  998 	mov	a,r2
      00029E F0               [24]  999 	movx	@dptr,a
      00029F EB               [12] 1000 	mov	a,r3
      0002A0 A3               [24] 1001 	inc	dptr
      0002A1 F0               [24] 1002 	movx	@dptr,a
                                   1003 ;	program.c:132: program_stats.allocated_heap -= buffer_freed_size;
      0002A2 90 00 03         [24] 1004 	mov	dptr,#(_program_stats + 0x0002)
      0002A5 E0               [24] 1005 	movx	a,@dptr
      0002A6 FA               [12] 1006 	mov	r2,a
      0002A7 A3               [24] 1007 	inc	dptr
      0002A8 E0               [24] 1008 	movx	a,@dptr
      0002A9 FB               [12] 1009 	mov	r3,a
      0002AA EA               [12] 1010 	mov	a,r2
      0002AB C3               [12] 1011 	clr	c
      0002AC 9C               [12] 1012 	subb	a,r4
      0002AD FC               [12] 1013 	mov	r4,a
      0002AE EB               [12] 1014 	mov	a,r3
      0002AF 9D               [12] 1015 	subb	a,r5
      0002B0 FD               [12] 1016 	mov	r5,a
      0002B1 90 00 03         [24] 1017 	mov	dptr,#(_program_stats + 0x0002)
      0002B4 EC               [12] 1018 	mov	a,r4
      0002B5 F0               [24] 1019 	movx	@dptr,a
      0002B6 ED               [12] 1020 	mov	a,r5
      0002B7 A3               [24] 1021 	inc	dptr
      0002B8 F0               [24] 1022 	movx	@dptr,a
                                   1023 ;	program.c:133: free(buff_to_free);
      0002B9 AB 0C            [24] 1024 	mov	r3,_delete_buffer_sloc2_1_0
      0002BB AC 0D            [24] 1025 	mov	r4,(_delete_buffer_sloc2_1_0 + 1)
      0002BD AD 0E            [24] 1026 	mov	r5,(_delete_buffer_sloc2_1_0 + 2)
      0002BF 8B 82            [24] 1027 	mov	dpl,r3
      0002C1 8C 83            [24] 1028 	mov	dph,r4
      0002C3 8D F0            [24] 1029 	mov	b,r5
      0002C5 C0 07            [24] 1030 	push	ar7
      0002C7 C0 06            [24] 1031 	push	ar6
      0002C9 12 0E 2A         [24] 1032 	lcall	_free
      0002CC D0 06            [24] 1033 	pop	ar6
      0002CE D0 07            [24] 1034 	pop	ar7
                                   1035 ;	program.c:134: printf("Buffer %d Successfully Deleted.. \n\r", buff_number);
      0002D0 C0 06            [24] 1036 	push	ar6
      0002D2 C0 07            [24] 1037 	push	ar7
      0002D4 74 CE            [12] 1038 	mov	a,#___str_4
      0002D6 C0 E0            [24] 1039 	push	acc
      0002D8 74 1C            [12] 1040 	mov	a,#(___str_4 >> 8)
      0002DA C0 E0            [24] 1041 	push	acc
      0002DC 74 80            [12] 1042 	mov	a,#0x80
      0002DE C0 E0            [24] 1043 	push	acc
      0002E0 12 12 23         [24] 1044 	lcall	_printf
      0002E3 E5 81            [12] 1045 	mov	a,sp
      0002E5 24 FB            [12] 1046 	add	a,#0xfb
      0002E7 F5 81            [12] 1047 	mov	sp,a
                                   1048 ;	program.c:135: return 0;
      0002E9 90 00 00         [24] 1049 	mov	dptr,#0x0000
                                   1050 ;	program.c:139: goto get_del_num;
                                   1051 ;	program.c:141: }
      0002EC 22               [24] 1052 	ret
                                   1053 ;------------------------------------------------------------
                                   1054 ;Allocation info for local variables in function 'print_menu'
                                   1055 ;------------------------------------------------------------
                                   1056 ;	program.c:148: void print_menu()
                                   1057 ;	-----------------------------------------
                                   1058 ;	 function print_menu
                                   1059 ;	-----------------------------------------
      0002ED                       1060 _print_menu:
                                   1061 ;	program.c:150: printf("\n\n\r^^^^^^^^^^^^^^^^^^^-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ \n\n\r");
      0002ED 74 F2            [12] 1062 	mov	a,#___str_5
      0002EF C0 E0            [24] 1063 	push	acc
      0002F1 74 1C            [12] 1064 	mov	a,#(___str_5 >> 8)
      0002F3 C0 E0            [24] 1065 	push	acc
      0002F5 74 80            [12] 1066 	mov	a,#0x80
      0002F7 C0 E0            [24] 1067 	push	acc
      0002F9 12 12 23         [24] 1068 	lcall	_printf
      0002FC 15 81            [12] 1069 	dec	sp
      0002FE 15 81            [12] 1070 	dec	sp
      000300 15 81            [12] 1071 	dec	sp
                                   1072 ;	program.c:151: printf("You can enter characters or use commands from below \n\r");
      000302 74 2D            [12] 1073 	mov	a,#___str_6
      000304 C0 E0            [24] 1074 	push	acc
      000306 74 1D            [12] 1075 	mov	a,#(___str_6 >> 8)
      000308 C0 E0            [24] 1076 	push	acc
      00030A 74 80            [12] 1077 	mov	a,#0x80
      00030C C0 E0            [24] 1078 	push	acc
      00030E 12 12 23         [24] 1079 	lcall	_printf
      000311 15 81            [12] 1080 	dec	sp
      000313 15 81            [12] 1081 	dec	sp
      000315 15 81            [12] 1082 	dec	sp
                                   1083 ;	program.c:152: printf("'?' -> Show heap status, dump & clear Buffer 0 \n\r");
      000317 74 64            [12] 1084 	mov	a,#___str_7
      000319 C0 E0            [24] 1085 	push	acc
      00031B 74 1D            [12] 1086 	mov	a,#(___str_7 >> 8)
      00031D C0 E0            [24] 1087 	push	acc
      00031F 74 80            [12] 1088 	mov	a,#0x80
      000321 C0 E0            [24] 1089 	push	acc
      000323 12 12 23         [24] 1090 	lcall	_printf
      000326 15 81            [12] 1091 	dec	sp
      000328 15 81            [12] 1092 	dec	sp
      00032A 15 81            [12] 1093 	dec	sp
                                   1094 ;	program.c:153: printf("'+' -> Add a new Buffer\n\r");
      00032C 74 96            [12] 1095 	mov	a,#___str_8
      00032E C0 E0            [24] 1096 	push	acc
      000330 74 1D            [12] 1097 	mov	a,#(___str_8 >> 8)
      000332 C0 E0            [24] 1098 	push	acc
      000334 74 80            [12] 1099 	mov	a,#0x80
      000336 C0 E0            [24] 1100 	push	acc
      000338 12 12 23         [24] 1101 	lcall	_printf
      00033B 15 81            [12] 1102 	dec	sp
      00033D 15 81            [12] 1103 	dec	sp
      00033F 15 81            [12] 1104 	dec	sp
                                   1105 ;	program.c:154: printf("'-' -> Delete existing Buffer\n\r");
      000341 74 B0            [12] 1106 	mov	a,#___str_9
      000343 C0 E0            [24] 1107 	push	acc
      000345 74 1D            [12] 1108 	mov	a,#(___str_9 >> 8)
      000347 C0 E0            [24] 1109 	push	acc
      000349 74 80            [12] 1110 	mov	a,#0x80
      00034B C0 E0            [24] 1111 	push	acc
      00034D 12 12 23         [24] 1112 	lcall	_printf
      000350 15 81            [12] 1113 	dec	sp
      000352 15 81            [12] 1114 	dec	sp
      000354 15 81            [12] 1115 	dec	sp
                                   1116 ;	program.c:155: printf("'=' -> Dump Buffer 0 in hex\n\r");
      000356 74 D0            [12] 1117 	mov	a,#___str_10
      000358 C0 E0            [24] 1118 	push	acc
      00035A 74 1D            [12] 1119 	mov	a,#(___str_10 >> 8)
      00035C C0 E0            [24] 1120 	push	acc
      00035E 74 80            [12] 1121 	mov	a,#0x80
      000360 C0 E0            [24] 1122 	push	acc
      000362 12 12 23         [24] 1123 	lcall	_printf
      000365 15 81            [12] 1124 	dec	sp
      000367 15 81            [12] 1125 	dec	sp
      000369 15 81            [12] 1126 	dec	sp
                                   1127 ;	program.c:156: printf("'@' -> Free all Heap & begin again\n\n\r");    
      00036B 74 EE            [12] 1128 	mov	a,#___str_11
      00036D C0 E0            [24] 1129 	push	acc
      00036F 74 1D            [12] 1130 	mov	a,#(___str_11 >> 8)
      000371 C0 E0            [24] 1131 	push	acc
      000373 74 80            [12] 1132 	mov	a,#0x80
      000375 C0 E0            [24] 1133 	push	acc
      000377 12 12 23         [24] 1134 	lcall	_printf
      00037A 15 81            [12] 1135 	dec	sp
      00037C 15 81            [12] 1136 	dec	sp
      00037E 15 81            [12] 1137 	dec	sp
                                   1138 ;	program.c:157: }
      000380 22               [24] 1139 	ret
                                   1140 ;------------------------------------------------------------
                                   1141 ;Allocation info for local variables in function 'create_new_buffer'
                                   1142 ;------------------------------------------------------------
                                   1143 ;buff_size                 Allocated with name '_create_new_buffer_buff_size_65536_58'
                                   1144 ;buff                      Allocated with name '_create_new_buffer_buff_65536_58'
                                   1145 ;------------------------------------------------------------
                                   1146 ;	program.c:165: int create_new_buffer()
                                   1147 ;	-----------------------------------------
                                   1148 ;	 function create_new_buffer
                                   1149 ;	-----------------------------------------
      000381                       1150 _create_new_buffer:
                                   1151 ;	program.c:169: if (program_stats.allocated_heap == program_stats.total_heap_size)
      000381 90 00 03         [24] 1152 	mov	dptr,#(_program_stats + 0x0002)
      000384 E0               [24] 1153 	movx	a,@dptr
      000385 FE               [12] 1154 	mov	r6,a
      000386 A3               [24] 1155 	inc	dptr
      000387 E0               [24] 1156 	movx	a,@dptr
      000388 FF               [12] 1157 	mov	r7,a
      000389 90 00 01         [24] 1158 	mov	dptr,#_program_stats
      00038C E0               [24] 1159 	movx	a,@dptr
      00038D FC               [12] 1160 	mov	r4,a
      00038E A3               [24] 1161 	inc	dptr
      00038F E0               [24] 1162 	movx	a,@dptr
      000390 FD               [12] 1163 	mov	r5,a
      000391 EE               [12] 1164 	mov	a,r6
      000392 B5 04 07         [24] 1165 	cjne	a,ar4,00133$
      000395 EF               [12] 1166 	mov	a,r7
      000396 B5 05 03         [24] 1167 	cjne	a,ar5,00133$
      000399 02 04 DC         [24] 1168 	ljmp	00111$
      00039C                       1169 00133$:
                                   1170 ;	program.c:172: get_new_buff:
      00039C                       1171 00103$:
                                   1172 ;	program.c:173: printf("\n\rGive Valid Buffer Size(030-300):");
      00039C 74 14            [12] 1173 	mov	a,#___str_12
      00039E C0 E0            [24] 1174 	push	acc
      0003A0 74 1E            [12] 1175 	mov	a,#(___str_12 >> 8)
      0003A2 C0 E0            [24] 1176 	push	acc
      0003A4 74 80            [12] 1177 	mov	a,#0x80
      0003A6 C0 E0            [24] 1178 	push	acc
      0003A8 12 12 23         [24] 1179 	lcall	_printf
      0003AB 15 81            [12] 1180 	dec	sp
      0003AD 15 81            [12] 1181 	dec	sp
      0003AF 15 81            [12] 1182 	dec	sp
                                   1183 ;	program.c:174: buff_size = get_number(3);
      0003B1 90 00 03         [24] 1184 	mov	dptr,#0x0003
      0003B4 12 0C 66         [24] 1185 	lcall	_get_number
      0003B7 AE 82            [24] 1186 	mov	r6,dpl
      0003B9 AF 83            [24] 1187 	mov	r7,dph
                                   1188 ;	program.c:175: if (buff_size >= 30 && buff_size <= 300)
      0003BB C3               [12] 1189 	clr	c
      0003BC EE               [12] 1190 	mov	a,r6
      0003BD 94 1E            [12] 1191 	subb	a,#0x1e
      0003BF EF               [12] 1192 	mov	a,r7
      0003C0 64 80            [12] 1193 	xrl	a,#0x80
      0003C2 94 80            [12] 1194 	subb	a,#0x80
      0003C4 40 D6            [24] 1195 	jc	00103$
      0003C6 74 2C            [12] 1196 	mov	a,#0x2c
      0003C8 9E               [12] 1197 	subb	a,r6
      0003C9 74 81            [12] 1198 	mov	a,#(0x01 ^ 0x80)
      0003CB 8F F0            [24] 1199 	mov	b,r7
      0003CD 63 F0 80         [24] 1200 	xrl	b,#0x80
      0003D0 95 F0            [12] 1201 	subb	a,b
      0003D2 40 C8            [24] 1202 	jc	00103$
                                   1203 ;	program.c:177: buff.buffer_start = malloc(buff_size);
      0003D4 8E 82            [24] 1204 	mov	dpl,r6
      0003D6 8F 83            [24] 1205 	mov	dph,r7
      0003D8 C0 07            [24] 1206 	push	ar7
      0003DA C0 06            [24] 1207 	push	ar6
      0003DC 12 10 4C         [24] 1208 	lcall	_malloc
      0003DF AC 82            [24] 1209 	mov	r4,dpl
      0003E1 AD 83            [24] 1210 	mov	r5,dph
      0003E3 D0 06            [24] 1211 	pop	ar6
      0003E5 D0 07            [24] 1212 	pop	ar7
      0003E7 7B 00            [12] 1213 	mov	r3,#0x00
      0003E9 90 01 3B         [24] 1214 	mov	dptr,#(_create_new_buffer_buff_65536_58 + 0x0002)
      0003EC EC               [12] 1215 	mov	a,r4
      0003ED F0               [24] 1216 	movx	@dptr,a
      0003EE ED               [12] 1217 	mov	a,r5
      0003EF A3               [24] 1218 	inc	dptr
      0003F0 F0               [24] 1219 	movx	@dptr,a
      0003F1 EB               [12] 1220 	mov	a,r3
      0003F2 A3               [24] 1221 	inc	dptr
      0003F3 F0               [24] 1222 	movx	@dptr,a
                                   1223 ;	program.c:178: if (buff.buffer_start == NULL)
      0003F4 EC               [12] 1224 	mov	a,r4
      0003F5 4D               [12] 1225 	orl	a,r5
      0003F6 70 18            [24] 1226 	jnz	00105$
                                   1227 ;	program.c:180: printf("Failed, give smaller buffer\n\r");
      0003F8 74 37            [12] 1228 	mov	a,#___str_13
      0003FA C0 E0            [24] 1229 	push	acc
      0003FC 74 1E            [12] 1230 	mov	a,#(___str_13 >> 8)
      0003FE C0 E0            [24] 1231 	push	acc
      000400 74 80            [12] 1232 	mov	a,#0x80
      000402 C0 E0            [24] 1233 	push	acc
      000404 12 12 23         [24] 1234 	lcall	_printf
      000407 15 81            [12] 1235 	dec	sp
      000409 15 81            [12] 1236 	dec	sp
      00040B 15 81            [12] 1237 	dec	sp
      00040D 02 04 D8         [24] 1238 	ljmp	00106$
      000410                       1239 00105$:
                                   1240 ;	program.c:184: printf("\n\n\r####SUCCESS, BUFFER Created####\n\n\r");
      000410 C0 07            [24] 1241 	push	ar7
      000412 C0 06            [24] 1242 	push	ar6
      000414 74 55            [12] 1243 	mov	a,#___str_14
      000416 C0 E0            [24] 1244 	push	acc
      000418 74 1E            [12] 1245 	mov	a,#(___str_14 >> 8)
      00041A C0 E0            [24] 1246 	push	acc
      00041C 74 80            [12] 1247 	mov	a,#0x80
      00041E C0 E0            [24] 1248 	push	acc
      000420 12 12 23         [24] 1249 	lcall	_printf
      000423 15 81            [12] 1250 	dec	sp
      000425 15 81            [12] 1251 	dec	sp
      000427 15 81            [12] 1252 	dec	sp
      000429 D0 06            [24] 1253 	pop	ar6
      00042B D0 07            [24] 1254 	pop	ar7
                                   1255 ;	program.c:185: program_stats.allocated_heap += buff_size;
      00042D 90 00 03         [24] 1256 	mov	dptr,#(_program_stats + 0x0002)
      000430 E0               [24] 1257 	movx	a,@dptr
      000431 FC               [12] 1258 	mov	r4,a
      000432 A3               [24] 1259 	inc	dptr
      000433 E0               [24] 1260 	movx	a,@dptr
      000434 FD               [12] 1261 	mov	r5,a
      000435 EE               [12] 1262 	mov	a,r6
      000436 2C               [12] 1263 	add	a,r4
      000437 FC               [12] 1264 	mov	r4,a
      000438 EF               [12] 1265 	mov	a,r7
      000439 3D               [12] 1266 	addc	a,r5
      00043A FD               [12] 1267 	mov	r5,a
      00043B 90 00 03         [24] 1268 	mov	dptr,#(_program_stats + 0x0002)
      00043E EC               [12] 1269 	mov	a,r4
      00043F F0               [24] 1270 	movx	@dptr,a
      000440 ED               [12] 1271 	mov	a,r5
      000441 A3               [24] 1272 	inc	dptr
      000442 F0               [24] 1273 	movx	@dptr,a
                                   1274 ;	program.c:186: buff.buff_size = buff_size;
      000443 90 01 41         [24] 1275 	mov	dptr,#(_create_new_buffer_buff_65536_58 + 0x0008)
      000446 EE               [12] 1276 	mov	a,r6
      000447 F0               [24] 1277 	movx	@dptr,a
      000448 EF               [12] 1278 	mov	a,r7
      000449 A3               [24] 1279 	inc	dptr
      00044A F0               [24] 1280 	movx	@dptr,a
                                   1281 ;	program.c:187: buff.buffer_num = program_stats.total_buffers;
      00044B 90 00 09         [24] 1282 	mov	dptr,#(_program_stats + 0x0008)
      00044E E0               [24] 1283 	movx	a,@dptr
      00044F FC               [12] 1284 	mov	r4,a
      000450 A3               [24] 1285 	inc	dptr
      000451 E0               [24] 1286 	movx	a,@dptr
      000452 FD               [12] 1287 	mov	r5,a
      000453 90 01 39         [24] 1288 	mov	dptr,#_create_new_buffer_buff_65536_58
      000456 EC               [12] 1289 	mov	a,r4
      000457 F0               [24] 1290 	movx	@dptr,a
      000458 ED               [12] 1291 	mov	a,r5
      000459 A3               [24] 1292 	inc	dptr
      00045A F0               [24] 1293 	movx	@dptr,a
                                   1294 ;	program.c:188: buff.buffer_end = buff.buffer_start + buff_size;
      00045B 90 01 3B         [24] 1295 	mov	dptr,#(_create_new_buffer_buff_65536_58 + 0x0002)
      00045E E0               [24] 1296 	movx	a,@dptr
      00045F FB               [12] 1297 	mov	r3,a
      000460 A3               [24] 1298 	inc	dptr
      000461 E0               [24] 1299 	movx	a,@dptr
      000462 FC               [12] 1300 	mov	r4,a
      000463 A3               [24] 1301 	inc	dptr
      000464 E0               [24] 1302 	movx	a,@dptr
      000465 FD               [12] 1303 	mov	r5,a
      000466 EE               [12] 1304 	mov	a,r6
      000467 2B               [12] 1305 	add	a,r3
      000468 FE               [12] 1306 	mov	r6,a
      000469 EF               [12] 1307 	mov	a,r7
      00046A 3C               [12] 1308 	addc	a,r4
      00046B FF               [12] 1309 	mov	r7,a
      00046C 8D 02            [24] 1310 	mov	ar2,r5
      00046E 90 01 3E         [24] 1311 	mov	dptr,#(_create_new_buffer_buff_65536_58 + 0x0005)
      000471 EE               [12] 1312 	mov	a,r6
      000472 F0               [24] 1313 	movx	@dptr,a
      000473 EF               [12] 1314 	mov	a,r7
      000474 A3               [24] 1315 	inc	dptr
      000475 F0               [24] 1316 	movx	@dptr,a
      000476 EA               [12] 1317 	mov	a,r2
      000477 A3               [24] 1318 	inc	dptr
      000478 F0               [24] 1319 	movx	@dptr,a
                                   1320 ;	program.c:189: buff.num_char = 0;
      000479 90 01 43         [24] 1321 	mov	dptr,#(_create_new_buffer_buff_65536_58 + 0x000a)
      00047C E4               [12] 1322 	clr	a
      00047D F0               [24] 1323 	movx	@dptr,a
      00047E A3               [24] 1324 	inc	dptr
      00047F F0               [24] 1325 	movx	@dptr,a
                                   1326 ;	program.c:190: buffers_array[program_stats.total_buffers] = buff;
      000480 90 00 09         [24] 1327 	mov	dptr,#(_program_stats + 0x0008)
      000483 E0               [24] 1328 	movx	a,@dptr
      000484 FE               [12] 1329 	mov	r6,a
      000485 A3               [24] 1330 	inc	dptr
      000486 E0               [24] 1331 	movx	a,@dptr
      000487 FF               [12] 1332 	mov	r7,a
      000488 90 15 0F         [24] 1333 	mov	dptr,#__mulint_PARM_2
      00048B EE               [12] 1334 	mov	a,r6
      00048C F0               [24] 1335 	movx	@dptr,a
      00048D EF               [12] 1336 	mov	a,r7
      00048E A3               [24] 1337 	inc	dptr
      00048F F0               [24] 1338 	movx	@dptr,a
      000490 90 00 0C         [24] 1339 	mov	dptr,#0x000c
      000493 12 11 B5         [24] 1340 	lcall	__mulint
      000496 AE 82            [24] 1341 	mov	r6,dpl
      000498 AF 83            [24] 1342 	mov	r7,dph
      00049A EE               [12] 1343 	mov	a,r6
      00049B 24 0B            [12] 1344 	add	a,#_buffers_array
      00049D FE               [12] 1345 	mov	r6,a
      00049E EF               [12] 1346 	mov	a,r7
      00049F 34 00            [12] 1347 	addc	a,#(_buffers_array >> 8)
      0004A1 FF               [12] 1348 	mov	r7,a
      0004A2 7D 00            [12] 1349 	mov	r5,#0x00
      0004A4 90 14 FE         [24] 1350 	mov	dptr,#___memcpy_PARM_2
      0004A7 74 39            [12] 1351 	mov	a,#_create_new_buffer_buff_65536_58
      0004A9 F0               [24] 1352 	movx	@dptr,a
      0004AA 74 01            [12] 1353 	mov	a,#(_create_new_buffer_buff_65536_58 >> 8)
      0004AC A3               [24] 1354 	inc	dptr
      0004AD F0               [24] 1355 	movx	@dptr,a
      0004AE E4               [12] 1356 	clr	a
      0004AF A3               [24] 1357 	inc	dptr
      0004B0 F0               [24] 1358 	movx	@dptr,a
      0004B1 90 15 01         [24] 1359 	mov	dptr,#___memcpy_PARM_3
      0004B4 74 0C            [12] 1360 	mov	a,#0x0c
      0004B6 F0               [24] 1361 	movx	@dptr,a
      0004B7 E4               [12] 1362 	clr	a
      0004B8 A3               [24] 1363 	inc	dptr
      0004B9 F0               [24] 1364 	movx	@dptr,a
      0004BA 8E 82            [24] 1365 	mov	dpl,r6
      0004BC 8F 83            [24] 1366 	mov	dph,r7
      0004BE 8D F0            [24] 1367 	mov	b,r5
      0004C0 12 0F 81         [24] 1368 	lcall	___memcpy
                                   1369 ;	program.c:191: program_stats.total_buffers += 1;
      0004C3 90 00 09         [24] 1370 	mov	dptr,#(_program_stats + 0x0008)
      0004C6 E0               [24] 1371 	movx	a,@dptr
      0004C7 FE               [12] 1372 	mov	r6,a
      0004C8 A3               [24] 1373 	inc	dptr
      0004C9 E0               [24] 1374 	movx	a,@dptr
      0004CA FF               [12] 1375 	mov	r7,a
      0004CB 0E               [12] 1376 	inc	r6
      0004CC BE 00 01         [24] 1377 	cjne	r6,#0x00,00137$
      0004CF 0F               [12] 1378 	inc	r7
      0004D0                       1379 00137$:
      0004D0 90 00 09         [24] 1380 	mov	dptr,#(_program_stats + 0x0008)
      0004D3 EE               [12] 1381 	mov	a,r6
      0004D4 F0               [24] 1382 	movx	@dptr,a
      0004D5 EF               [12] 1383 	mov	a,r7
      0004D6 A3               [24] 1384 	inc	dptr
      0004D7 F0               [24] 1385 	movx	@dptr,a
      0004D8                       1386 00106$:
                                   1387 ;	program.c:193: return 0;
      0004D8 90 00 00         [24] 1388 	mov	dptr,#0x0000
                                   1389 ;	program.c:199: no_heap_left:
      0004DB 22               [24] 1390 	ret
      0004DC                       1391 00111$:
                                   1392 ;	program.c:200: printf("No Heap Memory Left, Delete some buffers...\n\r");
      0004DC 74 7B            [12] 1393 	mov	a,#___str_15
      0004DE C0 E0            [24] 1394 	push	acc
      0004E0 74 1E            [12] 1395 	mov	a,#(___str_15 >> 8)
      0004E2 C0 E0            [24] 1396 	push	acc
      0004E4 74 80            [12] 1397 	mov	a,#0x80
      0004E6 C0 E0            [24] 1398 	push	acc
      0004E8 12 12 23         [24] 1399 	lcall	_printf
      0004EB 15 81            [12] 1400 	dec	sp
      0004ED 15 81            [12] 1401 	dec	sp
      0004EF 15 81            [12] 1402 	dec	sp
                                   1403 ;	program.c:201: return 0;
      0004F1 90 00 00         [24] 1404 	mov	dptr,#0x0000
                                   1405 ;	program.c:202: }
      0004F4 22               [24] 1406 	ret
                                   1407 ;------------------------------------------------------------
                                   1408 ;Allocation info for local variables in function 'create_initial_buffers'
                                   1409 ;------------------------------------------------------------
                                   1410 ;buff_size                 Allocated with name '_create_initial_buffers_buff_size_65536_63'
                                   1411 ;buff                      Allocated with name '_create_initial_buffers_buff_65537_64'
                                   1412 ;buff1                     Allocated with name '_create_initial_buffers_buff1_65537_64'
                                   1413 ;------------------------------------------------------------
                                   1414 ;	program.c:210: void create_initial_buffers()
                                   1415 ;	-----------------------------------------
                                   1416 ;	 function create_initial_buffers
                                   1417 ;	-----------------------------------------
      0004F5                       1418 _create_initial_buffers:
                                   1419 ;	program.c:214: get_buff:
      0004F5                       1420 00101$:
                                   1421 ;	program.c:215: printf("\n\rGive Valid Initial Buffer Size(0048-4800):");
      0004F5 74 A9            [12] 1422 	mov	a,#___str_16
      0004F7 C0 E0            [24] 1423 	push	acc
      0004F9 74 1E            [12] 1424 	mov	a,#(___str_16 >> 8)
      0004FB C0 E0            [24] 1425 	push	acc
      0004FD 74 80            [12] 1426 	mov	a,#0x80
      0004FF C0 E0            [24] 1427 	push	acc
      000501 12 12 23         [24] 1428 	lcall	_printf
      000504 15 81            [12] 1429 	dec	sp
      000506 15 81            [12] 1430 	dec	sp
      000508 15 81            [12] 1431 	dec	sp
                                   1432 ;	program.c:216: buff_size = get_number(4);
      00050A 90 00 04         [24] 1433 	mov	dptr,#0x0004
      00050D 12 0C 66         [24] 1434 	lcall	_get_number
      000510 AE 82            [24] 1435 	mov	r6,dpl
      000512 AF 83            [24] 1436 	mov	r7,dph
                                   1437 ;	program.c:219: if (buff_size >= 48 && buff_size <= 4800)
      000514 C3               [12] 1438 	clr	c
      000515 EE               [12] 1439 	mov	a,r6
      000516 94 30            [12] 1440 	subb	a,#0x30
      000518 EF               [12] 1441 	mov	a,r7
      000519 64 80            [12] 1442 	xrl	a,#0x80
      00051B 94 80            [12] 1443 	subb	a,#0x80
      00051D 40 D6            [24] 1444 	jc	00101$
      00051F 74 C0            [12] 1445 	mov	a,#0xc0
      000521 9E               [12] 1446 	subb	a,r6
      000522 74 92            [12] 1447 	mov	a,#(0x12 ^ 0x80)
      000524 8F F0            [24] 1448 	mov	b,r7
      000526 63 F0 80         [24] 1449 	xrl	b,#0x80
      000529 95 F0            [12] 1450 	subb	a,b
      00052B 40 C8            [24] 1451 	jc	00101$
                                   1452 ;	program.c:221: buff.buffer_start = malloc(buff_size);
      00052D 8E 82            [24] 1453 	mov	dpl,r6
      00052F 8F 83            [24] 1454 	mov	dph,r7
      000531 C0 07            [24] 1455 	push	ar7
      000533 C0 06            [24] 1456 	push	ar6
      000535 12 10 4C         [24] 1457 	lcall	_malloc
      000538 AC 82            [24] 1458 	mov	r4,dpl
      00053A AD 83            [24] 1459 	mov	r5,dph
      00053C D0 06            [24] 1460 	pop	ar6
      00053E D0 07            [24] 1461 	pop	ar7
      000540 7B 00            [12] 1462 	mov	r3,#0x00
      000542 90 01 47         [24] 1463 	mov	dptr,#(_create_initial_buffers_buff_65537_64 + 0x0002)
      000545 EC               [12] 1464 	mov	a,r4
      000546 F0               [24] 1465 	movx	@dptr,a
      000547 ED               [12] 1466 	mov	a,r5
      000548 A3               [24] 1467 	inc	dptr
      000549 F0               [24] 1468 	movx	@dptr,a
      00054A EB               [12] 1469 	mov	a,r3
      00054B A3               [24] 1470 	inc	dptr
      00054C F0               [24] 1471 	movx	@dptr,a
                                   1472 ;	program.c:222: buff1.buffer_start = malloc(buff_size);
      00054D 8E 82            [24] 1473 	mov	dpl,r6
      00054F 8F 83            [24] 1474 	mov	dph,r7
      000551 C0 07            [24] 1475 	push	ar7
      000553 C0 06            [24] 1476 	push	ar6
      000555 12 10 4C         [24] 1477 	lcall	_malloc
      000558 AC 82            [24] 1478 	mov	r4,dpl
      00055A AD 83            [24] 1479 	mov	r5,dph
      00055C D0 06            [24] 1480 	pop	ar6
      00055E D0 07            [24] 1481 	pop	ar7
      000560 7B 00            [12] 1482 	mov	r3,#0x00
      000562 90 01 53         [24] 1483 	mov	dptr,#(_create_initial_buffers_buff1_65537_64 + 0x0002)
      000565 EC               [12] 1484 	mov	a,r4
      000566 F0               [24] 1485 	movx	@dptr,a
      000567 ED               [12] 1486 	mov	a,r5
      000568 A3               [24] 1487 	inc	dptr
      000569 F0               [24] 1488 	movx	@dptr,a
      00056A EB               [12] 1489 	mov	a,r3
      00056B A3               [24] 1490 	inc	dptr
      00056C F0               [24] 1491 	movx	@dptr,a
                                   1492 ;	program.c:223: if (buff.buffer_start == NULL || buff1.buffer_start == NULL)
      00056D 90 01 47         [24] 1493 	mov	dptr,#(_create_initial_buffers_buff_65537_64 + 0x0002)
      000570 E0               [24] 1494 	movx	a,@dptr
      000571 FB               [12] 1495 	mov	r3,a
      000572 A3               [24] 1496 	inc	dptr
      000573 E0               [24] 1497 	movx	a,@dptr
      000574 FC               [12] 1498 	mov	r4,a
      000575 A3               [24] 1499 	inc	dptr
      000576 E0               [24] 1500 	movx	a,@dptr
      000577 EB               [12] 1501 	mov	a,r3
      000578 4C               [12] 1502 	orl	a,r4
      000579 60 0F            [24] 1503 	jz	00106$
      00057B 90 01 53         [24] 1504 	mov	dptr,#(_create_initial_buffers_buff1_65537_64 + 0x0002)
      00057E E0               [24] 1505 	movx	a,@dptr
      00057F FB               [12] 1506 	mov	r3,a
      000580 A3               [24] 1507 	inc	dptr
      000581 E0               [24] 1508 	movx	a,@dptr
      000582 FC               [12] 1509 	mov	r4,a
      000583 A3               [24] 1510 	inc	dptr
      000584 E0               [24] 1511 	movx	a,@dptr
      000585 FD               [12] 1512 	mov	r5,a
      000586 EB               [12] 1513 	mov	a,r3
      000587 4C               [12] 1514 	orl	a,r4
      000588 70 60            [24] 1515 	jnz	00107$
      00058A                       1516 00106$:
                                   1517 ;	program.c:225: printf("\n\r####FAIL, Please give a smaller buffer size####\n\n\r");
      00058A 74 D6            [12] 1518 	mov	a,#___str_17
      00058C C0 E0            [24] 1519 	push	acc
      00058E 74 1E            [12] 1520 	mov	a,#(___str_17 >> 8)
      000590 C0 E0            [24] 1521 	push	acc
      000592 74 80            [12] 1522 	mov	a,#0x80
      000594 C0 E0            [24] 1523 	push	acc
      000596 12 12 23         [24] 1524 	lcall	_printf
      000599 15 81            [12] 1525 	dec	sp
      00059B 15 81            [12] 1526 	dec	sp
      00059D 15 81            [12] 1527 	dec	sp
                                   1528 ;	program.c:227: if (buff.buffer_start != NULL)
      00059F 90 01 47         [24] 1529 	mov	dptr,#(_create_initial_buffers_buff_65537_64 + 0x0002)
      0005A2 E0               [24] 1530 	movx	a,@dptr
      0005A3 FB               [12] 1531 	mov	r3,a
      0005A4 A3               [24] 1532 	inc	dptr
      0005A5 E0               [24] 1533 	movx	a,@dptr
      0005A6 FC               [12] 1534 	mov	r4,a
      0005A7 A3               [24] 1535 	inc	dptr
      0005A8 E0               [24] 1536 	movx	a,@dptr
      0005A9 EB               [12] 1537 	mov	a,r3
      0005AA 4C               [12] 1538 	orl	a,r4
      0005AB 60 14            [24] 1539 	jz	00103$
                                   1540 ;	program.c:228: free(buff.buffer_start);
      0005AD 90 01 47         [24] 1541 	mov	dptr,#(_create_initial_buffers_buff_65537_64 + 0x0002)
      0005B0 E0               [24] 1542 	movx	a,@dptr
      0005B1 FB               [12] 1543 	mov	r3,a
      0005B2 A3               [24] 1544 	inc	dptr
      0005B3 E0               [24] 1545 	movx	a,@dptr
      0005B4 FC               [12] 1546 	mov	r4,a
      0005B5 A3               [24] 1547 	inc	dptr
      0005B6 E0               [24] 1548 	movx	a,@dptr
      0005B7 FD               [12] 1549 	mov	r5,a
      0005B8 8B 82            [24] 1550 	mov	dpl,r3
      0005BA 8C 83            [24] 1551 	mov	dph,r4
      0005BC 8D F0            [24] 1552 	mov	b,r5
      0005BE 12 0E 2A         [24] 1553 	lcall	_free
      0005C1                       1554 00103$:
                                   1555 ;	program.c:229: if (buff1.buffer_start != NULL)
      0005C1 90 01 53         [24] 1556 	mov	dptr,#(_create_initial_buffers_buff1_65537_64 + 0x0002)
      0005C4 E0               [24] 1557 	movx	a,@dptr
      0005C5 FB               [12] 1558 	mov	r3,a
      0005C6 A3               [24] 1559 	inc	dptr
      0005C7 E0               [24] 1560 	movx	a,@dptr
      0005C8 FC               [12] 1561 	mov	r4,a
      0005C9 A3               [24] 1562 	inc	dptr
      0005CA E0               [24] 1563 	movx	a,@dptr
      0005CB FD               [12] 1564 	mov	r5,a
      0005CC EB               [12] 1565 	mov	a,r3
      0005CD 4C               [12] 1566 	orl	a,r4
      0005CE 70 03            [24] 1567 	jnz	00145$
      0005D0 02 04 F5         [24] 1568 	ljmp	00101$
      0005D3                       1569 00145$:
                                   1570 ;	program.c:230: free(buff1.buffer_start);
      0005D3 90 01 53         [24] 1571 	mov	dptr,#(_create_initial_buffers_buff1_65537_64 + 0x0002)
      0005D6 E0               [24] 1572 	movx	a,@dptr
      0005D7 FB               [12] 1573 	mov	r3,a
      0005D8 A3               [24] 1574 	inc	dptr
      0005D9 E0               [24] 1575 	movx	a,@dptr
      0005DA FC               [12] 1576 	mov	r4,a
      0005DB A3               [24] 1577 	inc	dptr
      0005DC E0               [24] 1578 	movx	a,@dptr
      0005DD FD               [12] 1579 	mov	r5,a
      0005DE 8B 82            [24] 1580 	mov	dpl,r3
      0005E0 8C 83            [24] 1581 	mov	dph,r4
      0005E2 8D F0            [24] 1582 	mov	b,r5
      0005E4 12 0E 2A         [24] 1583 	lcall	_free
                                   1584 ;	program.c:232: goto get_buff;
      0005E7 02 04 F5         [24] 1585 	ljmp	00101$
      0005EA                       1586 00107$:
                                   1587 ;	program.c:236: printf("\n\n\r####SUCCESS, INITIAL BUFFERS Created####\n\n\r");
      0005EA C0 07            [24] 1588 	push	ar7
      0005EC C0 06            [24] 1589 	push	ar6
      0005EE 74 0B            [12] 1590 	mov	a,#___str_18
      0005F0 C0 E0            [24] 1591 	push	acc
      0005F2 74 1F            [12] 1592 	mov	a,#(___str_18 >> 8)
      0005F4 C0 E0            [24] 1593 	push	acc
      0005F6 74 80            [12] 1594 	mov	a,#0x80
      0005F8 C0 E0            [24] 1595 	push	acc
      0005FA 12 12 23         [24] 1596 	lcall	_printf
      0005FD 15 81            [12] 1597 	dec	sp
      0005FF 15 81            [12] 1598 	dec	sp
      000601 15 81            [12] 1599 	dec	sp
      000603 D0 06            [24] 1600 	pop	ar6
      000605 D0 07            [24] 1601 	pop	ar7
                                   1602 ;	program.c:237: program_stats.allocated_heap = 2 * buff_size;
      000607 EE               [12] 1603 	mov	a,r6
      000608 2E               [12] 1604 	add	a,r6
      000609 FC               [12] 1605 	mov	r4,a
      00060A EF               [12] 1606 	mov	a,r7
      00060B 33               [12] 1607 	rlc	a
      00060C FD               [12] 1608 	mov	r5,a
      00060D 90 00 03         [24] 1609 	mov	dptr,#(_program_stats + 0x0002)
      000610 EC               [12] 1610 	mov	a,r4
      000611 F0               [24] 1611 	movx	@dptr,a
      000612 ED               [12] 1612 	mov	a,r5
      000613 A3               [24] 1613 	inc	dptr
      000614 F0               [24] 1614 	movx	@dptr,a
                                   1615 ;	program.c:238: program_stats.total_heap_size = 4996;
      000615 90 00 01         [24] 1616 	mov	dptr,#_program_stats
      000618 74 84            [12] 1617 	mov	a,#0x84
      00061A F0               [24] 1618 	movx	@dptr,a
      00061B 74 13            [12] 1619 	mov	a,#0x13
      00061D A3               [24] 1620 	inc	dptr
      00061E F0               [24] 1621 	movx	@dptr,a
                                   1622 ;	program.c:239: program_stats.total_buffers = 2;
      00061F 90 00 09         [24] 1623 	mov	dptr,#(_program_stats + 0x0008)
      000622 74 02            [12] 1624 	mov	a,#0x02
      000624 F0               [24] 1625 	movx	@dptr,a
      000625 E4               [12] 1626 	clr	a
      000626 A3               [24] 1627 	inc	dptr
      000627 F0               [24] 1628 	movx	@dptr,a
                                   1629 ;	program.c:241: buff.buff_size = buff_size;
      000628 90 01 4D         [24] 1630 	mov	dptr,#(_create_initial_buffers_buff_65537_64 + 0x0008)
      00062B EE               [12] 1631 	mov	a,r6
      00062C F0               [24] 1632 	movx	@dptr,a
      00062D EF               [12] 1633 	mov	a,r7
      00062E A3               [24] 1634 	inc	dptr
      00062F F0               [24] 1635 	movx	@dptr,a
                                   1636 ;	program.c:242: buff1.buff_size = buff_size;
      000630 90 01 59         [24] 1637 	mov	dptr,#(_create_initial_buffers_buff1_65537_64 + 0x0008)
      000633 EE               [12] 1638 	mov	a,r6
      000634 F0               [24] 1639 	movx	@dptr,a
      000635 EF               [12] 1640 	mov	a,r7
      000636 A3               [24] 1641 	inc	dptr
      000637 F0               [24] 1642 	movx	@dptr,a
                                   1643 ;	program.c:243: buff.buffer_num = 0;
      000638 90 01 45         [24] 1644 	mov	dptr,#_create_initial_buffers_buff_65537_64
      00063B E4               [12] 1645 	clr	a
      00063C F0               [24] 1646 	movx	@dptr,a
      00063D A3               [24] 1647 	inc	dptr
      00063E F0               [24] 1648 	movx	@dptr,a
                                   1649 ;	program.c:244: buff1.buffer_num = 1;
      00063F 90 01 51         [24] 1650 	mov	dptr,#_create_initial_buffers_buff1_65537_64
      000642 04               [12] 1651 	inc	a
      000643 F0               [24] 1652 	movx	@dptr,a
      000644 E4               [12] 1653 	clr	a
      000645 A3               [24] 1654 	inc	dptr
      000646 F0               [24] 1655 	movx	@dptr,a
                                   1656 ;	program.c:245: buff1.buffer_end = buff1.buffer_start + buff_size;
      000647 90 01 53         [24] 1657 	mov	dptr,#(_create_initial_buffers_buff1_65537_64 + 0x0002)
      00064A E0               [24] 1658 	movx	a,@dptr
      00064B FB               [12] 1659 	mov	r3,a
      00064C A3               [24] 1660 	inc	dptr
      00064D E0               [24] 1661 	movx	a,@dptr
      00064E FC               [12] 1662 	mov	r4,a
      00064F A3               [24] 1663 	inc	dptr
      000650 E0               [24] 1664 	movx	a,@dptr
      000651 FD               [12] 1665 	mov	r5,a
      000652 EE               [12] 1666 	mov	a,r6
      000653 2B               [12] 1667 	add	a,r3
      000654 FB               [12] 1668 	mov	r3,a
      000655 EF               [12] 1669 	mov	a,r7
      000656 3C               [12] 1670 	addc	a,r4
      000657 FC               [12] 1671 	mov	r4,a
      000658 90 01 56         [24] 1672 	mov	dptr,#(_create_initial_buffers_buff1_65537_64 + 0x0005)
      00065B EB               [12] 1673 	mov	a,r3
      00065C F0               [24] 1674 	movx	@dptr,a
      00065D EC               [12] 1675 	mov	a,r4
      00065E A3               [24] 1676 	inc	dptr
      00065F F0               [24] 1677 	movx	@dptr,a
      000660 ED               [12] 1678 	mov	a,r5
      000661 A3               [24] 1679 	inc	dptr
      000662 F0               [24] 1680 	movx	@dptr,a
                                   1681 ;	program.c:246: buff.buffer_end = buff.buffer_start + buff_size;
      000663 90 01 47         [24] 1682 	mov	dptr,#(_create_initial_buffers_buff_65537_64 + 0x0002)
      000666 E0               [24] 1683 	movx	a,@dptr
      000667 FB               [12] 1684 	mov	r3,a
      000668 A3               [24] 1685 	inc	dptr
      000669 E0               [24] 1686 	movx	a,@dptr
      00066A FC               [12] 1687 	mov	r4,a
      00066B A3               [24] 1688 	inc	dptr
      00066C E0               [24] 1689 	movx	a,@dptr
      00066D FD               [12] 1690 	mov	r5,a
      00066E EE               [12] 1691 	mov	a,r6
      00066F 2B               [12] 1692 	add	a,r3
      000670 FE               [12] 1693 	mov	r6,a
      000671 EF               [12] 1694 	mov	a,r7
      000672 3C               [12] 1695 	addc	a,r4
      000673 FF               [12] 1696 	mov	r7,a
      000674 8D 02            [24] 1697 	mov	ar2,r5
      000676 90 01 4A         [24] 1698 	mov	dptr,#(_create_initial_buffers_buff_65537_64 + 0x0005)
      000679 EE               [12] 1699 	mov	a,r6
      00067A F0               [24] 1700 	movx	@dptr,a
      00067B EF               [12] 1701 	mov	a,r7
      00067C A3               [24] 1702 	inc	dptr
      00067D F0               [24] 1703 	movx	@dptr,a
      00067E EA               [12] 1704 	mov	a,r2
      00067F A3               [24] 1705 	inc	dptr
      000680 F0               [24] 1706 	movx	@dptr,a
                                   1707 ;	program.c:247: buff.num_char = 0;
      000681 90 01 4F         [24] 1708 	mov	dptr,#(_create_initial_buffers_buff_65537_64 + 0x000a)
      000684 E4               [12] 1709 	clr	a
      000685 F0               [24] 1710 	movx	@dptr,a
      000686 A3               [24] 1711 	inc	dptr
      000687 F0               [24] 1712 	movx	@dptr,a
                                   1713 ;	program.c:248: buff1.num_char = 0;
      000688 90 01 5B         [24] 1714 	mov	dptr,#(_create_initial_buffers_buff1_65537_64 + 0x000a)
      00068B F0               [24] 1715 	movx	@dptr,a
      00068C A3               [24] 1716 	inc	dptr
      00068D F0               [24] 1717 	movx	@dptr,a
                                   1718 ;	program.c:250: buffers_array[0] = buff;
      00068E 90 14 FE         [24] 1719 	mov	dptr,#___memcpy_PARM_2
      000691 74 45            [12] 1720 	mov	a,#_create_initial_buffers_buff_65537_64
      000693 F0               [24] 1721 	movx	@dptr,a
      000694 74 01            [12] 1722 	mov	a,#(_create_initial_buffers_buff_65537_64 >> 8)
      000696 A3               [24] 1723 	inc	dptr
      000697 F0               [24] 1724 	movx	@dptr,a
      000698 E4               [12] 1725 	clr	a
      000699 A3               [24] 1726 	inc	dptr
      00069A F0               [24] 1727 	movx	@dptr,a
      00069B 90 15 01         [24] 1728 	mov	dptr,#___memcpy_PARM_3
      00069E 74 0C            [12] 1729 	mov	a,#0x0c
      0006A0 F0               [24] 1730 	movx	@dptr,a
      0006A1 E4               [12] 1731 	clr	a
      0006A2 A3               [24] 1732 	inc	dptr
      0006A3 F0               [24] 1733 	movx	@dptr,a
      0006A4 90 00 0B         [24] 1734 	mov	dptr,#_buffers_array
      0006A7 75 F0 00         [24] 1735 	mov	b,#0x00
      0006AA 12 0F 81         [24] 1736 	lcall	___memcpy
                                   1737 ;	program.c:251: buffers_array[1] = buff1;
      0006AD 90 14 FE         [24] 1738 	mov	dptr,#___memcpy_PARM_2
      0006B0 74 51            [12] 1739 	mov	a,#_create_initial_buffers_buff1_65537_64
      0006B2 F0               [24] 1740 	movx	@dptr,a
      0006B3 74 01            [12] 1741 	mov	a,#(_create_initial_buffers_buff1_65537_64 >> 8)
      0006B5 A3               [24] 1742 	inc	dptr
      0006B6 F0               [24] 1743 	movx	@dptr,a
      0006B7 E4               [12] 1744 	clr	a
      0006B8 A3               [24] 1745 	inc	dptr
      0006B9 F0               [24] 1746 	movx	@dptr,a
      0006BA 90 15 01         [24] 1747 	mov	dptr,#___memcpy_PARM_3
      0006BD 74 0C            [12] 1748 	mov	a,#0x0c
      0006BF F0               [24] 1749 	movx	@dptr,a
      0006C0 E4               [12] 1750 	clr	a
      0006C1 A3               [24] 1751 	inc	dptr
      0006C2 F0               [24] 1752 	movx	@dptr,a
      0006C3 90 00 17         [24] 1753 	mov	dptr,#(_buffers_array + 0x000c)
      0006C6 75 F0 00         [24] 1754 	mov	b,#0x00
                                   1755 ;	program.c:255: goto get_buff;
                                   1756 ;	program.c:256: }
      0006C9 02 0F 81         [24] 1757 	ljmp	___memcpy
                                   1758 ;------------------------------------------------------------
                                   1759 ;Allocation info for local variables in function 'enter_chars'
                                   1760 ;------------------------------------------------------------
                                   1761 ;rec                       Allocated with name '_enter_chars_rec_65537_69'
                                   1762 ;------------------------------------------------------------
                                   1763 ;	program.c:264: void enter_chars()
                                   1764 ;	-----------------------------------------
                                   1765 ;	 function enter_chars
                                   1766 ;	-----------------------------------------
      0006CC                       1767 _enter_chars:
                                   1768 ;	program.c:266: print_menu();
      0006CC 12 02 ED         [24] 1769 	lcall	_print_menu
                                   1770 ;	program.c:268: while (1)
      0006CF                       1771 00123$:
                                   1772 ;	program.c:270: rec = getchar();
      0006CF 12 0D D4         [24] 1773 	lcall	_getchar
      0006D2 AE 82            [24] 1774 	mov	r6,dpl
      0006D4 AF 83            [24] 1775 	mov	r7,dph
                                   1776 ;	program.c:271: if (rec > 0x60 && rec < 0x7B)
      0006D6 C3               [12] 1777 	clr	c
      0006D7 74 60            [12] 1778 	mov	a,#0x60
      0006D9 9E               [12] 1779 	subb	a,r6
      0006DA 74 80            [12] 1780 	mov	a,#(0x00 ^ 0x80)
      0006DC 8F F0            [24] 1781 	mov	b,r7
      0006DE 63 F0 80         [24] 1782 	xrl	b,#0x80
      0006E1 95 F0            [12] 1783 	subb	a,b
      0006E3 40 03            [24] 1784 	jc	00163$
      0006E5 02 07 74         [24] 1785 	ljmp	00119$
      0006E8                       1786 00163$:
      0006E8 C3               [12] 1787 	clr	c
      0006E9 EE               [12] 1788 	mov	a,r6
      0006EA 94 7B            [12] 1789 	subb	a,#0x7b
      0006EC EF               [12] 1790 	mov	a,r7
      0006ED 64 80            [12] 1791 	xrl	a,#0x80
      0006EF 94 80            [12] 1792 	subb	a,#0x80
      0006F1 40 03            [24] 1793 	jc	00164$
      0006F3 02 07 74         [24] 1794 	ljmp	00119$
      0006F6                       1795 00164$:
                                   1796 ;	program.c:273: if (buffers_array[0].num_char < buffers_array[0].buff_size)
      0006F6 90 00 15         [24] 1797 	mov	dptr,#(_buffers_array + 0x000a)
      0006F9 E0               [24] 1798 	movx	a,@dptr
      0006FA FC               [12] 1799 	mov	r4,a
      0006FB A3               [24] 1800 	inc	dptr
      0006FC E0               [24] 1801 	movx	a,@dptr
      0006FD FD               [12] 1802 	mov	r5,a
      0006FE 90 00 13         [24] 1803 	mov	dptr,#(_buffers_array + 0x0008)
      000701 E0               [24] 1804 	movx	a,@dptr
      000702 FA               [12] 1805 	mov	r2,a
      000703 A3               [24] 1806 	inc	dptr
      000704 E0               [24] 1807 	movx	a,@dptr
      000705 FB               [12] 1808 	mov	r3,a
      000706 C3               [12] 1809 	clr	c
      000707 EC               [12] 1810 	mov	a,r4
      000708 9A               [12] 1811 	subb	a,r2
      000709 ED               [12] 1812 	mov	a,r5
      00070A 64 80            [12] 1813 	xrl	a,#0x80
      00070C 8B F0            [24] 1814 	mov	b,r3
      00070E 63 F0 80         [24] 1815 	xrl	b,#0x80
      000711 95 F0            [12] 1816 	subb	a,b
      000713 50 32            [24] 1817 	jnc	00102$
                                   1818 ;	program.c:275: *(buffers_array[0].buffer_start + buffers_array[0].num_char) = rec;
      000715 90 00 0D         [24] 1819 	mov	dptr,#(_buffers_array + 0x0002)
      000718 E0               [24] 1820 	movx	a,@dptr
      000719 F9               [12] 1821 	mov	r1,a
      00071A A3               [24] 1822 	inc	dptr
      00071B E0               [24] 1823 	movx	a,@dptr
      00071C FA               [12] 1824 	mov	r2,a
      00071D A3               [24] 1825 	inc	dptr
      00071E E0               [24] 1826 	movx	a,@dptr
      00071F FB               [12] 1827 	mov	r3,a
      000720 EC               [12] 1828 	mov	a,r4
      000721 29               [12] 1829 	add	a,r1
      000722 F9               [12] 1830 	mov	r1,a
      000723 ED               [12] 1831 	mov	a,r5
      000724 3A               [12] 1832 	addc	a,r2
      000725 FA               [12] 1833 	mov	r2,a
      000726 8E 05            [24] 1834 	mov	ar5,r6
      000728 89 82            [24] 1835 	mov	dpl,r1
      00072A 8A 83            [24] 1836 	mov	dph,r2
      00072C 8B F0            [24] 1837 	mov	b,r3
      00072E ED               [12] 1838 	mov	a,r5
      00072F 12 0F F5         [24] 1839 	lcall	__gptrput
                                   1840 ;	program.c:276: buffers_array[0].num_char += 1;
      000732 90 00 15         [24] 1841 	mov	dptr,#(_buffers_array + 0x000a)
      000735 E0               [24] 1842 	movx	a,@dptr
      000736 FC               [12] 1843 	mov	r4,a
      000737 A3               [24] 1844 	inc	dptr
      000738 E0               [24] 1845 	movx	a,@dptr
      000739 FD               [12] 1846 	mov	r5,a
      00073A 0C               [12] 1847 	inc	r4
      00073B BC 00 01         [24] 1848 	cjne	r4,#0x00,00166$
      00073E 0D               [12] 1849 	inc	r5
      00073F                       1850 00166$:
      00073F 90 00 15         [24] 1851 	mov	dptr,#(_buffers_array + 0x000a)
      000742 EC               [12] 1852 	mov	a,r4
      000743 F0               [24] 1853 	movx	@dptr,a
      000744 ED               [12] 1854 	mov	a,r5
      000745 A3               [24] 1855 	inc	dptr
      000746 F0               [24] 1856 	movx	@dptr,a
      000747                       1857 00102$:
                                   1858 ;	program.c:278: program_stats.all_char_count += 1;
      000747 90 00 05         [24] 1859 	mov	dptr,#(_program_stats + 0x0004)
      00074A E0               [24] 1860 	movx	a,@dptr
      00074B FC               [12] 1861 	mov	r4,a
      00074C A3               [24] 1862 	inc	dptr
      00074D E0               [24] 1863 	movx	a,@dptr
      00074E FD               [12] 1864 	mov	r5,a
      00074F 0C               [12] 1865 	inc	r4
      000750 BC 00 01         [24] 1866 	cjne	r4,#0x00,00167$
      000753 0D               [12] 1867 	inc	r5
      000754                       1868 00167$:
      000754 90 00 05         [24] 1869 	mov	dptr,#(_program_stats + 0x0004)
      000757 EC               [12] 1870 	mov	a,r4
      000758 F0               [24] 1871 	movx	@dptr,a
      000759 ED               [12] 1872 	mov	a,r5
      00075A A3               [24] 1873 	inc	dptr
      00075B F0               [24] 1874 	movx	@dptr,a
                                   1875 ;	program.c:279: program_stats.storage_char_count += 1;
      00075C 90 00 07         [24] 1876 	mov	dptr,#(_program_stats + 0x0006)
      00075F E0               [24] 1877 	movx	a,@dptr
      000760 FC               [12] 1878 	mov	r4,a
      000761 A3               [24] 1879 	inc	dptr
      000762 E0               [24] 1880 	movx	a,@dptr
      000763 FD               [12] 1881 	mov	r5,a
      000764 0C               [12] 1882 	inc	r4
      000765 BC 00 01         [24] 1883 	cjne	r4,#0x00,00168$
      000768 0D               [12] 1884 	inc	r5
      000769                       1885 00168$:
      000769 90 00 07         [24] 1886 	mov	dptr,#(_program_stats + 0x0006)
      00076C EC               [12] 1887 	mov	a,r4
      00076D F0               [24] 1888 	movx	@dptr,a
      00076E ED               [12] 1889 	mov	a,r5
      00076F A3               [24] 1890 	inc	dptr
      000770 F0               [24] 1891 	movx	@dptr,a
      000771 02 06 CF         [24] 1892 	ljmp	00123$
      000774                       1893 00119$:
                                   1894 ;	program.c:281: else if (rec == 0x3F)
      000774 BE 3F 1F         [24] 1895 	cjne	r6,#0x3f,00116$
      000777 BF 00 1C         [24] 1896 	cjne	r7,#0x00,00116$
                                   1897 ;	program.c:283: print_heap_stats();
      00077A 12 0A 41         [24] 1898 	lcall	_print_heap_stats
                                   1899 ;	program.c:284: print_all_buffers();
      00077D 12 0A FC         [24] 1900 	lcall	_print_all_buffers
                                   1901 ;	program.c:285: dump_buff_zero_ascii();
      000780 12 07 EA         [24] 1902 	lcall	_dump_buff_zero_ascii
                                   1903 ;	program.c:286: program_stats.all_char_count = 0;
      000783 90 00 05         [24] 1904 	mov	dptr,#(_program_stats + 0x0004)
      000786 E4               [12] 1905 	clr	a
      000787 F0               [24] 1906 	movx	@dptr,a
      000788 A3               [24] 1907 	inc	dptr
      000789 F0               [24] 1908 	movx	@dptr,a
                                   1909 ;	program.c:287: program_stats.storage_char_count = 0;
      00078A 90 00 07         [24] 1910 	mov	dptr,#(_program_stats + 0x0006)
      00078D F0               [24] 1911 	movx	@dptr,a
      00078E A3               [24] 1912 	inc	dptr
      00078F F0               [24] 1913 	movx	@dptr,a
                                   1914 ;	program.c:288: print_menu();
      000790 12 02 ED         [24] 1915 	lcall	_print_menu
      000793 02 06 CF         [24] 1916 	ljmp	00123$
      000796                       1917 00116$:
                                   1918 ;	program.c:290: else if (rec == 0x3D)
      000796 BE 3D 0C         [24] 1919 	cjne	r6,#0x3d,00113$
      000799 BF 00 09         [24] 1920 	cjne	r7,#0x00,00113$
                                   1921 ;	program.c:292: dump_buff_zero_hex();
      00079C 12 08 FA         [24] 1922 	lcall	_dump_buff_zero_hex
                                   1923 ;	program.c:293: print_menu();
      00079F 12 02 ED         [24] 1924 	lcall	_print_menu
      0007A2 02 06 CF         [24] 1925 	ljmp	00123$
      0007A5                       1926 00113$:
                                   1927 ;	program.c:295: else if (rec == 0x40)
      0007A5 BE 40 0C         [24] 1928 	cjne	r6,#0x40,00110$
      0007A8 BF 00 09         [24] 1929 	cjne	r7,#0x00,00110$
                                   1930 ;	program.c:297: at_clear_all_buffers();
      0007AB 12 00 83         [24] 1931 	lcall	_at_clear_all_buffers
                                   1932 ;	program.c:298: print_menu();
      0007AE 12 02 ED         [24] 1933 	lcall	_print_menu
      0007B1 02 06 CF         [24] 1934 	ljmp	00123$
      0007B4                       1935 00110$:
                                   1936 ;	program.c:300: else if (rec == 0x2B)
      0007B4 BE 2B 0C         [24] 1937 	cjne	r6,#0x2b,00107$
      0007B7 BF 00 09         [24] 1938 	cjne	r7,#0x00,00107$
                                   1939 ;	program.c:302: create_new_buffer();
      0007BA 12 03 81         [24] 1940 	lcall	_create_new_buffer
                                   1941 ;	program.c:303: print_menu();
      0007BD 12 02 ED         [24] 1942 	lcall	_print_menu
      0007C0 02 06 CF         [24] 1943 	ljmp	00123$
      0007C3                       1944 00107$:
                                   1945 ;	program.c:305: else if (rec == 0x2D)
      0007C3 BE 2D 0C         [24] 1946 	cjne	r6,#0x2d,00104$
      0007C6 BF 00 09         [24] 1947 	cjne	r7,#0x00,00104$
                                   1948 ;	program.c:307: delete_buffer();
      0007C9 12 01 17         [24] 1949 	lcall	_delete_buffer
                                   1950 ;	program.c:308: print_menu();
      0007CC 12 02 ED         [24] 1951 	lcall	_print_menu
      0007CF 02 06 CF         [24] 1952 	ljmp	00123$
      0007D2                       1953 00104$:
                                   1954 ;	program.c:312: program_stats.all_char_count += 1;
      0007D2 90 00 05         [24] 1955 	mov	dptr,#(_program_stats + 0x0004)
      0007D5 E0               [24] 1956 	movx	a,@dptr
      0007D6 FE               [12] 1957 	mov	r6,a
      0007D7 A3               [24] 1958 	inc	dptr
      0007D8 E0               [24] 1959 	movx	a,@dptr
      0007D9 FF               [12] 1960 	mov	r7,a
      0007DA 0E               [12] 1961 	inc	r6
      0007DB BE 00 01         [24] 1962 	cjne	r6,#0x00,00179$
      0007DE 0F               [12] 1963 	inc	r7
      0007DF                       1964 00179$:
      0007DF 90 00 05         [24] 1965 	mov	dptr,#(_program_stats + 0x0004)
      0007E2 EE               [12] 1966 	mov	a,r6
      0007E3 F0               [24] 1967 	movx	@dptr,a
      0007E4 EF               [12] 1968 	mov	a,r7
      0007E5 A3               [24] 1969 	inc	dptr
      0007E6 F0               [24] 1970 	movx	@dptr,a
                                   1971 ;	program.c:315: }
      0007E7 02 06 CF         [24] 1972 	ljmp	00123$
                                   1973 ;------------------------------------------------------------
                                   1974 ;Allocation info for local variables in function 'dump_buff_zero_ascii'
                                   1975 ;------------------------------------------------------------
                                   1976 ;j                         Allocated with name '_dump_buff_zero_ascii_j_65536_79'
                                   1977 ;i                         Allocated with name '_dump_buff_zero_ascii_i_196608_81'
                                   1978 ;------------------------------------------------------------
                                   1979 ;	program.c:323: void dump_buff_zero_ascii()
                                   1980 ;	-----------------------------------------
                                   1981 ;	 function dump_buff_zero_ascii
                                   1982 ;	-----------------------------------------
      0007EA                       1983 _dump_buff_zero_ascii:
                                   1984 ;	program.c:325: int j = 64;
      0007EA 90 01 5D         [24] 1985 	mov	dptr,#_dump_buff_zero_ascii_j_65536_79
      0007ED 74 40            [12] 1986 	mov	a,#0x40
      0007EF F0               [24] 1987 	movx	@dptr,a
      0007F0 E4               [12] 1988 	clr	a
      0007F1 A3               [24] 1989 	inc	dptr
      0007F2 F0               [24] 1990 	movx	@dptr,a
                                   1991 ;	program.c:326: if (buffers_array[0].num_char > 0)
      0007F3 90 00 15         [24] 1992 	mov	dptr,#(_buffers_array + 0x000a)
      0007F6 E0               [24] 1993 	movx	a,@dptr
      0007F7 FE               [12] 1994 	mov	r6,a
      0007F8 A3               [24] 1995 	inc	dptr
      0007F9 E0               [24] 1996 	movx	a,@dptr
      0007FA FF               [12] 1997 	mov	r7,a
      0007FB C3               [12] 1998 	clr	c
      0007FC E4               [12] 1999 	clr	a
      0007FD 9E               [12] 2000 	subb	a,r6
      0007FE 74 80            [12] 2001 	mov	a,#(0x00 ^ 0x80)
      000800 8F F0            [24] 2002 	mov	b,r7
      000802 63 F0 80         [24] 2003 	xrl	b,#0x80
      000805 95 F0            [12] 2004 	subb	a,b
      000807 40 03            [24] 2005 	jc	00135$
      000809 02 08 E4         [24] 2006 	ljmp	00107$
      00080C                       2007 00135$:
                                   2008 ;	program.c:328: printf("\n\n\r***********Buffer-0-Contents*********** \n\r");
      00080C 74 3A            [12] 2009 	mov	a,#___str_19
      00080E C0 E0            [24] 2010 	push	acc
      000810 74 1F            [12] 2011 	mov	a,#(___str_19 >> 8)
      000812 C0 E0            [24] 2012 	push	acc
      000814 74 80            [12] 2013 	mov	a,#0x80
      000816 C0 E0            [24] 2014 	push	acc
      000818 12 12 23         [24] 2015 	lcall	_printf
      00081B 15 81            [12] 2016 	dec	sp
      00081D 15 81            [12] 2017 	dec	sp
      00081F 15 81            [12] 2018 	dec	sp
                                   2019 ;	program.c:329: for (int i = 0; i < buffers_array[0].num_char; i++)
      000821 7E 00            [12] 2020 	mov	r6,#0x00
      000823 7F 00            [12] 2021 	mov	r7,#0x00
      000825                       2022 00110$:
      000825 90 00 15         [24] 2023 	mov	dptr,#(_buffers_array + 0x000a)
      000828 E0               [24] 2024 	movx	a,@dptr
      000829 FC               [12] 2025 	mov	r4,a
      00082A A3               [24] 2026 	inc	dptr
      00082B E0               [24] 2027 	movx	a,@dptr
      00082C FD               [12] 2028 	mov	r5,a
      00082D C3               [12] 2029 	clr	c
      00082E EE               [12] 2030 	mov	a,r6
      00082F 9C               [12] 2031 	subb	a,r4
      000830 EF               [12] 2032 	mov	a,r7
      000831 64 80            [12] 2033 	xrl	a,#0x80
      000833 8D F0            [24] 2034 	mov	b,r5
      000835 63 F0 80         [24] 2035 	xrl	b,#0x80
      000838 95 F0            [12] 2036 	subb	a,b
      00083A 40 03            [24] 2037 	jc	00136$
      00083C 02 08 C7         [24] 2038 	ljmp	00105$
      00083F                       2039 00136$:
                                   2040 ;	program.c:331: if (j == 64)
      00083F 90 01 5D         [24] 2041 	mov	dptr,#_dump_buff_zero_ascii_j_65536_79
      000842 E0               [24] 2042 	movx	a,@dptr
      000843 FC               [12] 2043 	mov	r4,a
      000844 A3               [24] 2044 	inc	dptr
      000845 E0               [24] 2045 	movx	a,@dptr
      000846 FD               [12] 2046 	mov	r5,a
      000847 BC 40 20         [24] 2047 	cjne	r4,#0x40,00102$
      00084A BD 00 1D         [24] 2048 	cjne	r5,#0x00,00102$
                                   2049 ;	program.c:333: printf("\n\r");
      00084D C0 07            [24] 2050 	push	ar7
      00084F C0 06            [24] 2051 	push	ar6
      000851 74 68            [12] 2052 	mov	a,#___str_20
      000853 C0 E0            [24] 2053 	push	acc
      000855 74 1F            [12] 2054 	mov	a,#(___str_20 >> 8)
      000857 C0 E0            [24] 2055 	push	acc
      000859 74 80            [12] 2056 	mov	a,#0x80
      00085B C0 E0            [24] 2057 	push	acc
      00085D 12 12 23         [24] 2058 	lcall	_printf
      000860 15 81            [12] 2059 	dec	sp
      000862 15 81            [12] 2060 	dec	sp
      000864 15 81            [12] 2061 	dec	sp
      000866 D0 06            [24] 2062 	pop	ar6
      000868 D0 07            [24] 2063 	pop	ar7
      00086A                       2064 00102$:
                                   2065 ;	program.c:335: putchar(*(buffers_array[0].buffer_start + i));
      00086A 90 00 0D         [24] 2066 	mov	dptr,#(_buffers_array + 0x0002)
      00086D E0               [24] 2067 	movx	a,@dptr
      00086E FB               [12] 2068 	mov	r3,a
      00086F A3               [24] 2069 	inc	dptr
      000870 E0               [24] 2070 	movx	a,@dptr
      000871 FC               [12] 2071 	mov	r4,a
      000872 A3               [24] 2072 	inc	dptr
      000873 E0               [24] 2073 	movx	a,@dptr
      000874 FD               [12] 2074 	mov	r5,a
      000875 EE               [12] 2075 	mov	a,r6
      000876 2B               [12] 2076 	add	a,r3
      000877 FB               [12] 2077 	mov	r3,a
      000878 EF               [12] 2078 	mov	a,r7
      000879 3C               [12] 2079 	addc	a,r4
      00087A FC               [12] 2080 	mov	r4,a
      00087B 8B 82            [24] 2081 	mov	dpl,r3
      00087D 8C 83            [24] 2082 	mov	dph,r4
      00087F 8D F0            [24] 2083 	mov	b,r5
      000881 12 1C 42         [24] 2084 	lcall	__gptrget
      000884 FB               [12] 2085 	mov	r3,a
      000885 7D 00            [12] 2086 	mov	r5,#0x00
      000887 8B 82            [24] 2087 	mov	dpl,r3
      000889 8D 83            [24] 2088 	mov	dph,r5
      00088B C0 07            [24] 2089 	push	ar7
      00088D C0 06            [24] 2090 	push	ar6
      00088F 12 0D B5         [24] 2091 	lcall	_putchar
      000892 D0 06            [24] 2092 	pop	ar6
      000894 D0 07            [24] 2093 	pop	ar7
                                   2094 ;	program.c:336: j--;
      000896 90 01 5D         [24] 2095 	mov	dptr,#_dump_buff_zero_ascii_j_65536_79
      000899 E0               [24] 2096 	movx	a,@dptr
      00089A 24 FF            [12] 2097 	add	a,#0xff
      00089C FC               [12] 2098 	mov	r4,a
      00089D A3               [24] 2099 	inc	dptr
      00089E E0               [24] 2100 	movx	a,@dptr
      00089F 34 FF            [12] 2101 	addc	a,#0xff
      0008A1 FD               [12] 2102 	mov	r5,a
      0008A2 90 01 5D         [24] 2103 	mov	dptr,#_dump_buff_zero_ascii_j_65536_79
      0008A5 EC               [12] 2104 	mov	a,r4
      0008A6 F0               [24] 2105 	movx	@dptr,a
      0008A7 ED               [12] 2106 	mov	a,r5
      0008A8 A3               [24] 2107 	inc	dptr
      0008A9 F0               [24] 2108 	movx	@dptr,a
                                   2109 ;	program.c:337: if (j == 0)
      0008AA 90 01 5D         [24] 2110 	mov	dptr,#_dump_buff_zero_ascii_j_65536_79
      0008AD E0               [24] 2111 	movx	a,@dptr
      0008AE F5 F0            [12] 2112 	mov	b,a
      0008B0 A3               [24] 2113 	inc	dptr
      0008B1 E0               [24] 2114 	movx	a,@dptr
      0008B2 45 F0            [12] 2115 	orl	a,b
      0008B4 70 09            [24] 2116 	jnz	00111$
                                   2117 ;	program.c:338: j = 64;
      0008B6 90 01 5D         [24] 2118 	mov	dptr,#_dump_buff_zero_ascii_j_65536_79
      0008B9 74 40            [12] 2119 	mov	a,#0x40
      0008BB F0               [24] 2120 	movx	@dptr,a
      0008BC E4               [12] 2121 	clr	a
      0008BD A3               [24] 2122 	inc	dptr
      0008BE F0               [24] 2123 	movx	@dptr,a
      0008BF                       2124 00111$:
                                   2125 ;	program.c:329: for (int i = 0; i < buffers_array[0].num_char; i++)
      0008BF 0E               [12] 2126 	inc	r6
      0008C0 BE 00 01         [24] 2127 	cjne	r6,#0x00,00140$
      0008C3 0F               [12] 2128 	inc	r7
      0008C4                       2129 00140$:
      0008C4 02 08 25         [24] 2130 	ljmp	00110$
      0008C7                       2131 00105$:
                                   2132 ;	program.c:340: buffers_array[0].num_char = 0;
      0008C7 90 00 15         [24] 2133 	mov	dptr,#(_buffers_array + 0x000a)
      0008CA E4               [12] 2134 	clr	a
      0008CB F0               [24] 2135 	movx	@dptr,a
      0008CC A3               [24] 2136 	inc	dptr
      0008CD F0               [24] 2137 	movx	@dptr,a
                                   2138 ;	program.c:341: printf("\n\n\r");
      0008CE 74 6B            [12] 2139 	mov	a,#___str_21
      0008D0 C0 E0            [24] 2140 	push	acc
      0008D2 74 1F            [12] 2141 	mov	a,#(___str_21 >> 8)
      0008D4 C0 E0            [24] 2142 	push	acc
      0008D6 74 80            [12] 2143 	mov	a,#0x80
      0008D8 C0 E0            [24] 2144 	push	acc
      0008DA 12 12 23         [24] 2145 	lcall	_printf
      0008DD 15 81            [12] 2146 	dec	sp
      0008DF 15 81            [12] 2147 	dec	sp
      0008E1 15 81            [12] 2148 	dec	sp
      0008E3 22               [24] 2149 	ret
      0008E4                       2150 00107$:
                                   2151 ;	program.c:345: printf("Buffer0 is Empty....\n\r");
      0008E4 74 6F            [12] 2152 	mov	a,#___str_22
      0008E6 C0 E0            [24] 2153 	push	acc
      0008E8 74 1F            [12] 2154 	mov	a,#(___str_22 >> 8)
      0008EA C0 E0            [24] 2155 	push	acc
      0008EC 74 80            [12] 2156 	mov	a,#0x80
      0008EE C0 E0            [24] 2157 	push	acc
      0008F0 12 12 23         [24] 2158 	lcall	_printf
      0008F3 15 81            [12] 2159 	dec	sp
      0008F5 15 81            [12] 2160 	dec	sp
      0008F7 15 81            [12] 2161 	dec	sp
                                   2162 ;	program.c:347: }
      0008F9 22               [24] 2163 	ret
                                   2164 ;------------------------------------------------------------
                                   2165 ;Allocation info for local variables in function 'dump_buff_zero_hex'
                                   2166 ;------------------------------------------------------------
                                   2167 ;j                         Allocated with name '_dump_buff_zero_hex_j_131073_87'
                                   2168 ;i                         Allocated with name '_dump_buff_zero_hex_i_196609_88'
                                   2169 ;------------------------------------------------------------
                                   2170 ;	program.c:354: void dump_buff_zero_hex()
                                   2171 ;	-----------------------------------------
                                   2172 ;	 function dump_buff_zero_hex
                                   2173 ;	-----------------------------------------
      0008FA                       2174 _dump_buff_zero_hex:
                                   2175 ;	program.c:356: if (buffers_array[0].num_char > 0)
      0008FA 90 00 15         [24] 2176 	mov	dptr,#(_buffers_array + 0x000a)
      0008FD E0               [24] 2177 	movx	a,@dptr
      0008FE FE               [12] 2178 	mov	r6,a
      0008FF A3               [24] 2179 	inc	dptr
      000900 E0               [24] 2180 	movx	a,@dptr
      000901 FF               [12] 2181 	mov	r7,a
      000902 C3               [12] 2182 	clr	c
      000903 E4               [12] 2183 	clr	a
      000904 9E               [12] 2184 	subb	a,r6
      000905 74 80            [12] 2185 	mov	a,#(0x00 ^ 0x80)
      000907 8F F0            [24] 2186 	mov	b,r7
      000909 63 F0 80         [24] 2187 	xrl	b,#0x80
      00090C 95 F0            [12] 2188 	subb	a,b
      00090E 40 03            [24] 2189 	jc	00135$
      000910 02 0A 2B         [24] 2190 	ljmp	00107$
      000913                       2191 00135$:
                                   2192 ;	program.c:358: printf("\n\r-------------------------HEXDUMP--------------------------------");
      000913 74 86            [12] 2193 	mov	a,#___str_23
      000915 C0 E0            [24] 2194 	push	acc
      000917 74 1F            [12] 2195 	mov	a,#(___str_23 >> 8)
      000919 C0 E0            [24] 2196 	push	acc
      00091B 74 80            [12] 2197 	mov	a,#0x80
      00091D C0 E0            [24] 2198 	push	acc
      00091F 12 12 23         [24] 2199 	lcall	_printf
      000922 15 81            [12] 2200 	dec	sp
      000924 15 81            [12] 2201 	dec	sp
      000926 15 81            [12] 2202 	dec	sp
                                   2203 ;	program.c:359: printf("\n\r    ADDR: +0 +1 +2 +3 +4 +5 +6 +7 +8 +9 +A +B +C +D +E +F \n\r");
      000928 74 C9            [12] 2204 	mov	a,#___str_24
      00092A C0 E0            [24] 2205 	push	acc
      00092C 74 1F            [12] 2206 	mov	a,#(___str_24 >> 8)
      00092E C0 E0            [24] 2207 	push	acc
      000930 74 80            [12] 2208 	mov	a,#0x80
      000932 C0 E0            [24] 2209 	push	acc
      000934 12 12 23         [24] 2210 	lcall	_printf
      000937 15 81            [12] 2211 	dec	sp
      000939 15 81            [12] 2212 	dec	sp
      00093B 15 81            [12] 2213 	dec	sp
                                   2214 ;	program.c:360: int j = 16;
      00093D 90 01 5F         [24] 2215 	mov	dptr,#_dump_buff_zero_hex_j_131073_87
      000940 74 10            [12] 2216 	mov	a,#0x10
      000942 F0               [24] 2217 	movx	@dptr,a
      000943 E4               [12] 2218 	clr	a
      000944 A3               [24] 2219 	inc	dptr
      000945 F0               [24] 2220 	movx	@dptr,a
                                   2221 ;	program.c:361: for (int i = 0; i < buffers_array[0].num_char; i++)
      000946 7E 00            [12] 2222 	mov	r6,#0x00
      000948 7F 00            [12] 2223 	mov	r7,#0x00
      00094A                       2224 00110$:
      00094A 90 00 15         [24] 2225 	mov	dptr,#(_buffers_array + 0x000a)
      00094D E0               [24] 2226 	movx	a,@dptr
      00094E FC               [12] 2227 	mov	r4,a
      00094F A3               [24] 2228 	inc	dptr
      000950 E0               [24] 2229 	movx	a,@dptr
      000951 FD               [12] 2230 	mov	r5,a
      000952 C3               [12] 2231 	clr	c
      000953 EE               [12] 2232 	mov	a,r6
      000954 9C               [12] 2233 	subb	a,r4
      000955 EF               [12] 2234 	mov	a,r7
      000956 64 80            [12] 2235 	xrl	a,#0x80
      000958 8D F0            [24] 2236 	mov	b,r5
      00095A 63 F0 80         [24] 2237 	xrl	b,#0x80
      00095D 95 F0            [12] 2238 	subb	a,b
      00095F 40 03            [24] 2239 	jc	00136$
      000961 02 0A 15         [24] 2240 	ljmp	00105$
      000964                       2241 00136$:
                                   2242 ;	program.c:363: if (j == 16)
      000964 90 01 5F         [24] 2243 	mov	dptr,#_dump_buff_zero_hex_j_131073_87
      000967 E0               [24] 2244 	movx	a,@dptr
      000968 FC               [12] 2245 	mov	r4,a
      000969 A3               [24] 2246 	inc	dptr
      00096A E0               [24] 2247 	movx	a,@dptr
      00096B FD               [12] 2248 	mov	r5,a
      00096C BC 10 37         [24] 2249 	cjne	r4,#0x10,00102$
      00096F BD 00 34         [24] 2250 	cjne	r5,#0x00,00102$
                                   2251 ;	program.c:365: printf("\n\r%p: ", (buffers_array[0].buffer_start + i));
      000972 90 00 0D         [24] 2252 	mov	dptr,#(_buffers_array + 0x0002)
      000975 E0               [24] 2253 	movx	a,@dptr
      000976 FB               [12] 2254 	mov	r3,a
      000977 A3               [24] 2255 	inc	dptr
      000978 E0               [24] 2256 	movx	a,@dptr
      000979 FC               [12] 2257 	mov	r4,a
      00097A A3               [24] 2258 	inc	dptr
      00097B E0               [24] 2259 	movx	a,@dptr
      00097C FD               [12] 2260 	mov	r5,a
      00097D EE               [12] 2261 	mov	a,r6
      00097E 2B               [12] 2262 	add	a,r3
      00097F FB               [12] 2263 	mov	r3,a
      000980 EF               [12] 2264 	mov	a,r7
      000981 3C               [12] 2265 	addc	a,r4
      000982 FC               [12] 2266 	mov	r4,a
      000983 C0 07            [24] 2267 	push	ar7
      000985 C0 06            [24] 2268 	push	ar6
      000987 C0 03            [24] 2269 	push	ar3
      000989 C0 04            [24] 2270 	push	ar4
      00098B C0 05            [24] 2271 	push	ar5
      00098D 74 08            [12] 2272 	mov	a,#___str_25
      00098F C0 E0            [24] 2273 	push	acc
      000991 74 20            [12] 2274 	mov	a,#(___str_25 >> 8)
      000993 C0 E0            [24] 2275 	push	acc
      000995 74 80            [12] 2276 	mov	a,#0x80
      000997 C0 E0            [24] 2277 	push	acc
      000999 12 12 23         [24] 2278 	lcall	_printf
      00099C E5 81            [12] 2279 	mov	a,sp
      00099E 24 FA            [12] 2280 	add	a,#0xfa
      0009A0 F5 81            [12] 2281 	mov	sp,a
      0009A2 D0 06            [24] 2282 	pop	ar6
      0009A4 D0 07            [24] 2283 	pop	ar7
      0009A6                       2284 00102$:
                                   2285 ;	program.c:367: printf("%x ", *(buffers_array[0].buffer_start + i));
      0009A6 90 00 0D         [24] 2286 	mov	dptr,#(_buffers_array + 0x0002)
      0009A9 E0               [24] 2287 	movx	a,@dptr
      0009AA FB               [12] 2288 	mov	r3,a
      0009AB A3               [24] 2289 	inc	dptr
      0009AC E0               [24] 2290 	movx	a,@dptr
      0009AD FC               [12] 2291 	mov	r4,a
      0009AE A3               [24] 2292 	inc	dptr
      0009AF E0               [24] 2293 	movx	a,@dptr
      0009B0 FD               [12] 2294 	mov	r5,a
      0009B1 EE               [12] 2295 	mov	a,r6
      0009B2 2B               [12] 2296 	add	a,r3
      0009B3 FB               [12] 2297 	mov	r3,a
      0009B4 EF               [12] 2298 	mov	a,r7
      0009B5 3C               [12] 2299 	addc	a,r4
      0009B6 FC               [12] 2300 	mov	r4,a
      0009B7 8B 82            [24] 2301 	mov	dpl,r3
      0009B9 8C 83            [24] 2302 	mov	dph,r4
      0009BB 8D F0            [24] 2303 	mov	b,r5
      0009BD 12 1C 42         [24] 2304 	lcall	__gptrget
      0009C0 FB               [12] 2305 	mov	r3,a
      0009C1 7D 00            [12] 2306 	mov	r5,#0x00
      0009C3 C0 07            [24] 2307 	push	ar7
      0009C5 C0 06            [24] 2308 	push	ar6
      0009C7 C0 03            [24] 2309 	push	ar3
      0009C9 C0 05            [24] 2310 	push	ar5
      0009CB 74 0F            [12] 2311 	mov	a,#___str_26
      0009CD C0 E0            [24] 2312 	push	acc
      0009CF 74 20            [12] 2313 	mov	a,#(___str_26 >> 8)
      0009D1 C0 E0            [24] 2314 	push	acc
      0009D3 74 80            [12] 2315 	mov	a,#0x80
      0009D5 C0 E0            [24] 2316 	push	acc
      0009D7 12 12 23         [24] 2317 	lcall	_printf
      0009DA E5 81            [12] 2318 	mov	a,sp
      0009DC 24 FB            [12] 2319 	add	a,#0xfb
      0009DE F5 81            [12] 2320 	mov	sp,a
      0009E0 D0 06            [24] 2321 	pop	ar6
      0009E2 D0 07            [24] 2322 	pop	ar7
                                   2323 ;	program.c:368: j--;
      0009E4 90 01 5F         [24] 2324 	mov	dptr,#_dump_buff_zero_hex_j_131073_87
      0009E7 E0               [24] 2325 	movx	a,@dptr
      0009E8 24 FF            [12] 2326 	add	a,#0xff
      0009EA FC               [12] 2327 	mov	r4,a
      0009EB A3               [24] 2328 	inc	dptr
      0009EC E0               [24] 2329 	movx	a,@dptr
      0009ED 34 FF            [12] 2330 	addc	a,#0xff
      0009EF FD               [12] 2331 	mov	r5,a
      0009F0 90 01 5F         [24] 2332 	mov	dptr,#_dump_buff_zero_hex_j_131073_87
      0009F3 EC               [12] 2333 	mov	a,r4
      0009F4 F0               [24] 2334 	movx	@dptr,a
      0009F5 ED               [12] 2335 	mov	a,r5
      0009F6 A3               [24] 2336 	inc	dptr
      0009F7 F0               [24] 2337 	movx	@dptr,a
                                   2338 ;	program.c:369: if (j == 0)
      0009F8 90 01 5F         [24] 2339 	mov	dptr,#_dump_buff_zero_hex_j_131073_87
      0009FB E0               [24] 2340 	movx	a,@dptr
      0009FC F5 F0            [12] 2341 	mov	b,a
      0009FE A3               [24] 2342 	inc	dptr
      0009FF E0               [24] 2343 	movx	a,@dptr
      000A00 45 F0            [12] 2344 	orl	a,b
      000A02 70 09            [24] 2345 	jnz	00111$
                                   2346 ;	program.c:370: j = 16;
      000A04 90 01 5F         [24] 2347 	mov	dptr,#_dump_buff_zero_hex_j_131073_87
      000A07 74 10            [12] 2348 	mov	a,#0x10
      000A09 F0               [24] 2349 	movx	@dptr,a
      000A0A E4               [12] 2350 	clr	a
      000A0B A3               [24] 2351 	inc	dptr
      000A0C F0               [24] 2352 	movx	@dptr,a
      000A0D                       2353 00111$:
                                   2354 ;	program.c:361: for (int i = 0; i < buffers_array[0].num_char; i++)
      000A0D 0E               [12] 2355 	inc	r6
      000A0E BE 00 01         [24] 2356 	cjne	r6,#0x00,00140$
      000A11 0F               [12] 2357 	inc	r7
      000A12                       2358 00140$:
      000A12 02 09 4A         [24] 2359 	ljmp	00110$
      000A15                       2360 00105$:
                                   2361 ;	program.c:372: printf("\n\n\r");
      000A15 74 6B            [12] 2362 	mov	a,#___str_21
      000A17 C0 E0            [24] 2363 	push	acc
      000A19 74 1F            [12] 2364 	mov	a,#(___str_21 >> 8)
      000A1B C0 E0            [24] 2365 	push	acc
      000A1D 74 80            [12] 2366 	mov	a,#0x80
      000A1F C0 E0            [24] 2367 	push	acc
      000A21 12 12 23         [24] 2368 	lcall	_printf
      000A24 15 81            [12] 2369 	dec	sp
      000A26 15 81            [12] 2370 	dec	sp
      000A28 15 81            [12] 2371 	dec	sp
      000A2A 22               [24] 2372 	ret
      000A2B                       2373 00107$:
                                   2374 ;	program.c:376: printf("Buffer 0 is empty...\n\r");
      000A2B 74 13            [12] 2375 	mov	a,#___str_27
      000A2D C0 E0            [24] 2376 	push	acc
      000A2F 74 20            [12] 2377 	mov	a,#(___str_27 >> 8)
      000A31 C0 E0            [24] 2378 	push	acc
      000A33 74 80            [12] 2379 	mov	a,#0x80
      000A35 C0 E0            [24] 2380 	push	acc
      000A37 12 12 23         [24] 2381 	lcall	_printf
      000A3A 15 81            [12] 2382 	dec	sp
      000A3C 15 81            [12] 2383 	dec	sp
      000A3E 15 81            [12] 2384 	dec	sp
                                   2385 ;	program.c:378: }
      000A40 22               [24] 2386 	ret
                                   2387 ;------------------------------------------------------------
                                   2388 ;Allocation info for local variables in function 'print_heap_stats'
                                   2389 ;------------------------------------------------------------
                                   2390 ;	program.c:385: void print_heap_stats()
                                   2391 ;	-----------------------------------------
                                   2392 ;	 function print_heap_stats
                                   2393 ;	-----------------------------------------
      000A41                       2394 _print_heap_stats:
                                   2395 ;	program.c:387: printf("\n\r****************HEAP*STATS*************\n\r");
      000A41 74 2A            [12] 2396 	mov	a,#___str_28
      000A43 C0 E0            [24] 2397 	push	acc
      000A45 74 20            [12] 2398 	mov	a,#(___str_28 >> 8)
      000A47 C0 E0            [24] 2399 	push	acc
      000A49 74 80            [12] 2400 	mov	a,#0x80
      000A4B C0 E0            [24] 2401 	push	acc
      000A4D 12 12 23         [24] 2402 	lcall	_printf
      000A50 15 81            [12] 2403 	dec	sp
      000A52 15 81            [12] 2404 	dec	sp
      000A54 15 81            [12] 2405 	dec	sp
                                   2406 ;	program.c:388: printf("Total Heap Size: %d \n\r", program_stats.total_heap_size);
      000A56 90 00 01         [24] 2407 	mov	dptr,#_program_stats
      000A59 E0               [24] 2408 	movx	a,@dptr
      000A5A FE               [12] 2409 	mov	r6,a
      000A5B A3               [24] 2410 	inc	dptr
      000A5C E0               [24] 2411 	movx	a,@dptr
      000A5D FF               [12] 2412 	mov	r7,a
      000A5E C0 06            [24] 2413 	push	ar6
      000A60 C0 07            [24] 2414 	push	ar7
      000A62 74 56            [12] 2415 	mov	a,#___str_29
      000A64 C0 E0            [24] 2416 	push	acc
      000A66 74 20            [12] 2417 	mov	a,#(___str_29 >> 8)
      000A68 C0 E0            [24] 2418 	push	acc
      000A6A 74 80            [12] 2419 	mov	a,#0x80
      000A6C C0 E0            [24] 2420 	push	acc
      000A6E 12 12 23         [24] 2421 	lcall	_printf
      000A71 E5 81            [12] 2422 	mov	a,sp
      000A73 24 FB            [12] 2423 	add	a,#0xfb
      000A75 F5 81            [12] 2424 	mov	sp,a
                                   2425 ;	program.c:389: printf("Allocated Heap Size: %d \n\r", program_stats.allocated_heap);
      000A77 90 00 03         [24] 2426 	mov	dptr,#(_program_stats + 0x0002)
      000A7A E0               [24] 2427 	movx	a,@dptr
      000A7B FE               [12] 2428 	mov	r6,a
      000A7C A3               [24] 2429 	inc	dptr
      000A7D E0               [24] 2430 	movx	a,@dptr
      000A7E FF               [12] 2431 	mov	r7,a
      000A7F C0 06            [24] 2432 	push	ar6
      000A81 C0 07            [24] 2433 	push	ar7
      000A83 74 6D            [12] 2434 	mov	a,#___str_30
      000A85 C0 E0            [24] 2435 	push	acc
      000A87 74 20            [12] 2436 	mov	a,#(___str_30 >> 8)
      000A89 C0 E0            [24] 2437 	push	acc
      000A8B 74 80            [12] 2438 	mov	a,#0x80
      000A8D C0 E0            [24] 2439 	push	acc
      000A8F 12 12 23         [24] 2440 	lcall	_printf
      000A92 E5 81            [12] 2441 	mov	a,sp
      000A94 24 FB            [12] 2442 	add	a,#0xfb
      000A96 F5 81            [12] 2443 	mov	sp,a
                                   2444 ;	program.c:390: printf("All Chars: %d \n\r", program_stats.all_char_count);
      000A98 90 00 05         [24] 2445 	mov	dptr,#(_program_stats + 0x0004)
      000A9B E0               [24] 2446 	movx	a,@dptr
      000A9C FE               [12] 2447 	mov	r6,a
      000A9D A3               [24] 2448 	inc	dptr
      000A9E E0               [24] 2449 	movx	a,@dptr
      000A9F FF               [12] 2450 	mov	r7,a
      000AA0 C0 06            [24] 2451 	push	ar6
      000AA2 C0 07            [24] 2452 	push	ar7
      000AA4 74 88            [12] 2453 	mov	a,#___str_31
      000AA6 C0 E0            [24] 2454 	push	acc
      000AA8 74 20            [12] 2455 	mov	a,#(___str_31 >> 8)
      000AAA C0 E0            [24] 2456 	push	acc
      000AAC 74 80            [12] 2457 	mov	a,#0x80
      000AAE C0 E0            [24] 2458 	push	acc
      000AB0 12 12 23         [24] 2459 	lcall	_printf
      000AB3 E5 81            [12] 2460 	mov	a,sp
      000AB5 24 FB            [12] 2461 	add	a,#0xfb
      000AB7 F5 81            [12] 2462 	mov	sp,a
                                   2463 ;	program.c:391: printf("Storage Chars: %d \n\r", program_stats.storage_char_count);
      000AB9 90 00 07         [24] 2464 	mov	dptr,#(_program_stats + 0x0006)
      000ABC E0               [24] 2465 	movx	a,@dptr
      000ABD FE               [12] 2466 	mov	r6,a
      000ABE A3               [24] 2467 	inc	dptr
      000ABF E0               [24] 2468 	movx	a,@dptr
      000AC0 FF               [12] 2469 	mov	r7,a
      000AC1 C0 06            [24] 2470 	push	ar6
      000AC3 C0 07            [24] 2471 	push	ar7
      000AC5 74 99            [12] 2472 	mov	a,#___str_32
      000AC7 C0 E0            [24] 2473 	push	acc
      000AC9 74 20            [12] 2474 	mov	a,#(___str_32 >> 8)
      000ACB C0 E0            [24] 2475 	push	acc
      000ACD 74 80            [12] 2476 	mov	a,#0x80
      000ACF C0 E0            [24] 2477 	push	acc
      000AD1 12 12 23         [24] 2478 	lcall	_printf
      000AD4 E5 81            [12] 2479 	mov	a,sp
      000AD6 24 FB            [12] 2480 	add	a,#0xfb
      000AD8 F5 81            [12] 2481 	mov	sp,a
                                   2482 ;	program.c:392: printf("Total Buffers: %d \n\r", program_stats.total_buffers);
      000ADA 90 00 09         [24] 2483 	mov	dptr,#(_program_stats + 0x0008)
      000ADD E0               [24] 2484 	movx	a,@dptr
      000ADE FE               [12] 2485 	mov	r6,a
      000ADF A3               [24] 2486 	inc	dptr
      000AE0 E0               [24] 2487 	movx	a,@dptr
      000AE1 FF               [12] 2488 	mov	r7,a
      000AE2 C0 06            [24] 2489 	push	ar6
      000AE4 C0 07            [24] 2490 	push	ar7
      000AE6 74 AE            [12] 2491 	mov	a,#___str_33
      000AE8 C0 E0            [24] 2492 	push	acc
      000AEA 74 20            [12] 2493 	mov	a,#(___str_33 >> 8)
      000AEC C0 E0            [24] 2494 	push	acc
      000AEE 74 80            [12] 2495 	mov	a,#0x80
      000AF0 C0 E0            [24] 2496 	push	acc
      000AF2 12 12 23         [24] 2497 	lcall	_printf
      000AF5 E5 81            [12] 2498 	mov	a,sp
      000AF7 24 FB            [12] 2499 	add	a,#0xfb
      000AF9 F5 81            [12] 2500 	mov	sp,a
                                   2501 ;	program.c:393: }
      000AFB 22               [24] 2502 	ret
                                   2503 ;------------------------------------------------------------
                                   2504 ;Allocation info for local variables in function 'print_all_buffers'
                                   2505 ;------------------------------------------------------------
                                   2506 ;i                         Allocated with name '_print_all_buffers_i_131072_94'
                                   2507 ;------------------------------------------------------------
                                   2508 ;	program.c:400: void print_all_buffers()
                                   2509 ;	-----------------------------------------
                                   2510 ;	 function print_all_buffers
                                   2511 ;	-----------------------------------------
      000AFC                       2512 _print_all_buffers:
                                   2513 ;	program.c:402: for (int i = 0; i < program_stats.total_buffers; i++)
      000AFC 7E 00            [12] 2514 	mov	r6,#0x00
      000AFE 7F 00            [12] 2515 	mov	r7,#0x00
      000B00                       2516 00103$:
      000B00 90 00 09         [24] 2517 	mov	dptr,#(_program_stats + 0x0008)
      000B03 E0               [24] 2518 	movx	a,@dptr
      000B04 FC               [12] 2519 	mov	r4,a
      000B05 A3               [24] 2520 	inc	dptr
      000B06 E0               [24] 2521 	movx	a,@dptr
      000B07 FD               [12] 2522 	mov	r5,a
      000B08 C3               [12] 2523 	clr	c
      000B09 EE               [12] 2524 	mov	a,r6
      000B0A 9C               [12] 2525 	subb	a,r4
      000B0B EF               [12] 2526 	mov	a,r7
      000B0C 64 80            [12] 2527 	xrl	a,#0x80
      000B0E 8D F0            [24] 2528 	mov	b,r5
      000B10 63 F0 80         [24] 2529 	xrl	b,#0x80
      000B13 95 F0            [12] 2530 	subb	a,b
      000B15 40 03            [24] 2531 	jc	00116$
      000B17 02 0C 50         [24] 2532 	ljmp	00101$
      000B1A                       2533 00116$:
                                   2534 ;	program.c:404: printf("****************BUFFER*%d***************\n\r", i);
      000B1A C0 07            [24] 2535 	push	ar7
      000B1C C0 06            [24] 2536 	push	ar6
      000B1E C0 06            [24] 2537 	push	ar6
      000B20 C0 07            [24] 2538 	push	ar7
      000B22 74 C3            [12] 2539 	mov	a,#___str_34
      000B24 C0 E0            [24] 2540 	push	acc
      000B26 74 20            [12] 2541 	mov	a,#(___str_34 >> 8)
      000B28 C0 E0            [24] 2542 	push	acc
      000B2A 74 80            [12] 2543 	mov	a,#0x80
      000B2C C0 E0            [24] 2544 	push	acc
      000B2E 12 12 23         [24] 2545 	lcall	_printf
      000B31 E5 81            [12] 2546 	mov	a,sp
      000B33 24 FB            [12] 2547 	add	a,#0xfb
      000B35 F5 81            [12] 2548 	mov	sp,a
      000B37 D0 06            [24] 2549 	pop	ar6
      000B39 D0 07            [24] 2550 	pop	ar7
                                   2551 ;	program.c:405: printf("Buffer#: %d \n\r", buffers_array[i].buffer_num);
      000B3B 90 15 0F         [24] 2552 	mov	dptr,#__mulint_PARM_2
      000B3E EE               [12] 2553 	mov	a,r6
      000B3F F0               [24] 2554 	movx	@dptr,a
      000B40 EF               [12] 2555 	mov	a,r7
      000B41 A3               [24] 2556 	inc	dptr
      000B42 F0               [24] 2557 	movx	@dptr,a
      000B43 90 00 0C         [24] 2558 	mov	dptr,#0x000c
      000B46 C0 07            [24] 2559 	push	ar7
      000B48 C0 06            [24] 2560 	push	ar6
      000B4A 12 11 B5         [24] 2561 	lcall	__mulint
      000B4D AC 82            [24] 2562 	mov	r4,dpl
      000B4F AD 83            [24] 2563 	mov	r5,dph
      000B51 EC               [12] 2564 	mov	a,r4
      000B52 24 0B            [12] 2565 	add	a,#_buffers_array
      000B54 F5 82            [12] 2566 	mov	dpl,a
      000B56 ED               [12] 2567 	mov	a,r5
      000B57 34 00            [12] 2568 	addc	a,#(_buffers_array >> 8)
      000B59 F5 83            [12] 2569 	mov	dph,a
      000B5B E0               [24] 2570 	movx	a,@dptr
      000B5C FA               [12] 2571 	mov	r2,a
      000B5D A3               [24] 2572 	inc	dptr
      000B5E E0               [24] 2573 	movx	a,@dptr
      000B5F FB               [12] 2574 	mov	r3,a
      000B60 C0 05            [24] 2575 	push	ar5
      000B62 C0 04            [24] 2576 	push	ar4
      000B64 C0 02            [24] 2577 	push	ar2
      000B66 C0 03            [24] 2578 	push	ar3
      000B68 74 EE            [12] 2579 	mov	a,#___str_35
      000B6A C0 E0            [24] 2580 	push	acc
      000B6C 74 20            [12] 2581 	mov	a,#(___str_35 >> 8)
      000B6E C0 E0            [24] 2582 	push	acc
      000B70 74 80            [12] 2583 	mov	a,#0x80
      000B72 C0 E0            [24] 2584 	push	acc
      000B74 12 12 23         [24] 2585 	lcall	_printf
      000B77 E5 81            [12] 2586 	mov	a,sp
      000B79 24 FB            [12] 2587 	add	a,#0xfb
      000B7B F5 81            [12] 2588 	mov	sp,a
      000B7D D0 04            [24] 2589 	pop	ar4
      000B7F D0 05            [24] 2590 	pop	ar5
                                   2591 ;	program.c:406: printf("BufferStart: %p \n\r", buffers_array[i].buffer_start);
      000B81 EC               [12] 2592 	mov	a,r4
      000B82 24 0B            [12] 2593 	add	a,#_buffers_array
      000B84 FC               [12] 2594 	mov	r4,a
      000B85 ED               [12] 2595 	mov	a,r5
      000B86 34 00            [12] 2596 	addc	a,#(_buffers_array >> 8)
      000B88 FD               [12] 2597 	mov	r5,a
      000B89 8C 82            [24] 2598 	mov	dpl,r4
      000B8B 8D 83            [24] 2599 	mov	dph,r5
      000B8D A3               [24] 2600 	inc	dptr
      000B8E A3               [24] 2601 	inc	dptr
      000B8F E0               [24] 2602 	movx	a,@dptr
      000B90 F9               [12] 2603 	mov	r1,a
      000B91 A3               [24] 2604 	inc	dptr
      000B92 E0               [24] 2605 	movx	a,@dptr
      000B93 FA               [12] 2606 	mov	r2,a
      000B94 A3               [24] 2607 	inc	dptr
      000B95 E0               [24] 2608 	movx	a,@dptr
      000B96 FB               [12] 2609 	mov	r3,a
      000B97 C0 05            [24] 2610 	push	ar5
      000B99 C0 04            [24] 2611 	push	ar4
      000B9B C0 01            [24] 2612 	push	ar1
      000B9D C0 02            [24] 2613 	push	ar2
      000B9F C0 03            [24] 2614 	push	ar3
      000BA1 74 FD            [12] 2615 	mov	a,#___str_36
      000BA3 C0 E0            [24] 2616 	push	acc
      000BA5 74 20            [12] 2617 	mov	a,#(___str_36 >> 8)
      000BA7 C0 E0            [24] 2618 	push	acc
      000BA9 74 80            [12] 2619 	mov	a,#0x80
      000BAB C0 E0            [24] 2620 	push	acc
      000BAD 12 12 23         [24] 2621 	lcall	_printf
      000BB0 E5 81            [12] 2622 	mov	a,sp
      000BB2 24 FA            [12] 2623 	add	a,#0xfa
      000BB4 F5 81            [12] 2624 	mov	sp,a
      000BB6 D0 04            [24] 2625 	pop	ar4
      000BB8 D0 05            [24] 2626 	pop	ar5
                                   2627 ;	program.c:407: printf("BufferEnd: %p \n\r", buffers_array[i].buffer_end);
      000BBA 8C 82            [24] 2628 	mov	dpl,r4
      000BBC 8D 83            [24] 2629 	mov	dph,r5
      000BBE A3               [24] 2630 	inc	dptr
      000BBF A3               [24] 2631 	inc	dptr
      000BC0 A3               [24] 2632 	inc	dptr
      000BC1 A3               [24] 2633 	inc	dptr
      000BC2 A3               [24] 2634 	inc	dptr
      000BC3 E0               [24] 2635 	movx	a,@dptr
      000BC4 F9               [12] 2636 	mov	r1,a
      000BC5 A3               [24] 2637 	inc	dptr
      000BC6 E0               [24] 2638 	movx	a,@dptr
      000BC7 FA               [12] 2639 	mov	r2,a
      000BC8 A3               [24] 2640 	inc	dptr
      000BC9 E0               [24] 2641 	movx	a,@dptr
      000BCA FB               [12] 2642 	mov	r3,a
      000BCB C0 05            [24] 2643 	push	ar5
      000BCD C0 04            [24] 2644 	push	ar4
      000BCF C0 01            [24] 2645 	push	ar1
      000BD1 C0 02            [24] 2646 	push	ar2
      000BD3 C0 03            [24] 2647 	push	ar3
      000BD5 74 10            [12] 2648 	mov	a,#___str_37
      000BD7 C0 E0            [24] 2649 	push	acc
      000BD9 74 21            [12] 2650 	mov	a,#(___str_37 >> 8)
      000BDB C0 E0            [24] 2651 	push	acc
      000BDD 74 80            [12] 2652 	mov	a,#0x80
      000BDF C0 E0            [24] 2653 	push	acc
      000BE1 12 12 23         [24] 2654 	lcall	_printf
      000BE4 E5 81            [12] 2655 	mov	a,sp
      000BE6 24 FA            [12] 2656 	add	a,#0xfa
      000BE8 F5 81            [12] 2657 	mov	sp,a
      000BEA D0 04            [24] 2658 	pop	ar4
      000BEC D0 05            [24] 2659 	pop	ar5
                                   2660 ;	program.c:408: printf("BufferSize: %d \n\r", buffers_array[i].buff_size);
      000BEE 74 08            [12] 2661 	mov	a,#0x08
      000BF0 2C               [12] 2662 	add	a,r4
      000BF1 F5 82            [12] 2663 	mov	dpl,a
      000BF3 E4               [12] 2664 	clr	a
      000BF4 3D               [12] 2665 	addc	a,r5
      000BF5 F5 83            [12] 2666 	mov	dph,a
      000BF7 E0               [24] 2667 	movx	a,@dptr
      000BF8 FA               [12] 2668 	mov	r2,a
      000BF9 A3               [24] 2669 	inc	dptr
      000BFA E0               [24] 2670 	movx	a,@dptr
      000BFB FB               [12] 2671 	mov	r3,a
      000BFC C0 05            [24] 2672 	push	ar5
      000BFE C0 04            [24] 2673 	push	ar4
      000C00 C0 02            [24] 2674 	push	ar2
      000C02 C0 03            [24] 2675 	push	ar3
      000C04 74 21            [12] 2676 	mov	a,#___str_38
      000C06 C0 E0            [24] 2677 	push	acc
      000C08 74 21            [12] 2678 	mov	a,#(___str_38 >> 8)
      000C0A C0 E0            [24] 2679 	push	acc
      000C0C 74 80            [12] 2680 	mov	a,#0x80
      000C0E C0 E0            [24] 2681 	push	acc
      000C10 12 12 23         [24] 2682 	lcall	_printf
      000C13 E5 81            [12] 2683 	mov	a,sp
      000C15 24 FB            [12] 2684 	add	a,#0xfb
      000C17 F5 81            [12] 2685 	mov	sp,a
      000C19 D0 04            [24] 2686 	pop	ar4
      000C1B D0 05            [24] 2687 	pop	ar5
                                   2688 ;	program.c:409: printf("TotalUsed: %d \n\r", buffers_array[i].num_char);
      000C1D 74 0A            [12] 2689 	mov	a,#0x0a
      000C1F 2C               [12] 2690 	add	a,r4
      000C20 F5 82            [12] 2691 	mov	dpl,a
      000C22 E4               [12] 2692 	clr	a
      000C23 3D               [12] 2693 	addc	a,r5
      000C24 F5 83            [12] 2694 	mov	dph,a
      000C26 E0               [24] 2695 	movx	a,@dptr
      000C27 FC               [12] 2696 	mov	r4,a
      000C28 A3               [24] 2697 	inc	dptr
      000C29 E0               [24] 2698 	movx	a,@dptr
      000C2A FD               [12] 2699 	mov	r5,a
      000C2B C0 04            [24] 2700 	push	ar4
      000C2D C0 05            [24] 2701 	push	ar5
      000C2F 74 33            [12] 2702 	mov	a,#___str_39
      000C31 C0 E0            [24] 2703 	push	acc
      000C33 74 21            [12] 2704 	mov	a,#(___str_39 >> 8)
      000C35 C0 E0            [24] 2705 	push	acc
      000C37 74 80            [12] 2706 	mov	a,#0x80
      000C39 C0 E0            [24] 2707 	push	acc
      000C3B 12 12 23         [24] 2708 	lcall	_printf
      000C3E E5 81            [12] 2709 	mov	a,sp
      000C40 24 FB            [12] 2710 	add	a,#0xfb
      000C42 F5 81            [12] 2711 	mov	sp,a
      000C44 D0 06            [24] 2712 	pop	ar6
      000C46 D0 07            [24] 2713 	pop	ar7
                                   2714 ;	program.c:402: for (int i = 0; i < program_stats.total_buffers; i++)
      000C48 0E               [12] 2715 	inc	r6
      000C49 BE 00 01         [24] 2716 	cjne	r6,#0x00,00117$
      000C4C 0F               [12] 2717 	inc	r7
      000C4D                       2718 00117$:
      000C4D 02 0B 00         [24] 2719 	ljmp	00103$
      000C50                       2720 00101$:
                                   2721 ;	program.c:411: printf("***************************************\n\r");
      000C50 74 44            [12] 2722 	mov	a,#___str_40
      000C52 C0 E0            [24] 2723 	push	acc
      000C54 74 21            [12] 2724 	mov	a,#(___str_40 >> 8)
      000C56 C0 E0            [24] 2725 	push	acc
      000C58 74 80            [12] 2726 	mov	a,#0x80
      000C5A C0 E0            [24] 2727 	push	acc
      000C5C 12 12 23         [24] 2728 	lcall	_printf
      000C5F 15 81            [12] 2729 	dec	sp
      000C61 15 81            [12] 2730 	dec	sp
      000C63 15 81            [12] 2731 	dec	sp
                                   2732 ;	program.c:412: }
      000C65 22               [24] 2733 	ret
                                   2734 ;------------------------------------------------------------
                                   2735 ;Allocation info for local variables in function 'get_number'
                                   2736 ;------------------------------------------------------------
                                   2737 ;total_chars               Allocated with name '_get_number_total_chars_65536_96'
                                   2738 ;rec                       Allocated with name '_get_number_rec_65536_97'
                                   2739 ;num                       Allocated with name '_get_number_num_65536_97'
                                   2740 ;i                         Allocated with name '_get_number_i_131072_98'
                                   2741 ;------------------------------------------------------------
                                   2742 ;	program.c:419: int get_number(int total_chars)
                                   2743 ;	-----------------------------------------
                                   2744 ;	 function get_number
                                   2745 ;	-----------------------------------------
      000C66                       2746 _get_number:
      000C66 AF 83            [24] 2747 	mov	r7,dph
      000C68 E5 82            [12] 2748 	mov	a,dpl
      000C6A 90 01 61         [24] 2749 	mov	dptr,#_get_number_total_chars_65536_96
      000C6D F0               [24] 2750 	movx	@dptr,a
      000C6E EF               [12] 2751 	mov	a,r7
      000C6F A3               [24] 2752 	inc	dptr
      000C70 F0               [24] 2753 	movx	@dptr,a
                                   2754 ;	program.c:422: int num = 0;
      000C71 90 01 63         [24] 2755 	mov	dptr,#_get_number_num_65536_97
      000C74 E4               [12] 2756 	clr	a
      000C75 F0               [24] 2757 	movx	@dptr,a
      000C76 A3               [24] 2758 	inc	dptr
      000C77 F0               [24] 2759 	movx	@dptr,a
                                   2760 ;	program.c:423: for (int i = total_chars; i > 0; i--)
      000C78 90 01 61         [24] 2761 	mov	dptr,#_get_number_total_chars_65536_96
      000C7B E0               [24] 2762 	movx	a,@dptr
      000C7C FE               [12] 2763 	mov	r6,a
      000C7D A3               [24] 2764 	inc	dptr
      000C7E E0               [24] 2765 	movx	a,@dptr
      000C7F FF               [12] 2766 	mov	r7,a
      000C80                       2767 00107$:
      000C80 C3               [12] 2768 	clr	c
      000C81 E4               [12] 2769 	clr	a
      000C82 9E               [12] 2770 	subb	a,r6
      000C83 74 80            [12] 2771 	mov	a,#(0x00 ^ 0x80)
      000C85 8F F0            [24] 2772 	mov	b,r7
      000C87 63 F0 80         [24] 2773 	xrl	b,#0x80
      000C8A 95 F0            [12] 2774 	subb	a,b
      000C8C 40 03            [24] 2775 	jc	00127$
      000C8E 02 0D 2C         [24] 2776 	ljmp	00105$
      000C91                       2777 00127$:
                                   2778 ;	program.c:426: rec = getchar();
      000C91 C0 07            [24] 2779 	push	ar7
      000C93 C0 06            [24] 2780 	push	ar6
      000C95 12 0D D4         [24] 2781 	lcall	_getchar
      000C98 AC 82            [24] 2782 	mov	r4,dpl
      000C9A AD 83            [24] 2783 	mov	r5,dph
      000C9C D0 06            [24] 2784 	pop	ar6
      000C9E D0 07            [24] 2785 	pop	ar7
                                   2786 ;	program.c:427: if (rec <= 0x39 && rec >= 0x30)
      000CA0 C3               [12] 2787 	clr	c
      000CA1 74 39            [12] 2788 	mov	a,#0x39
      000CA3 9C               [12] 2789 	subb	a,r4
      000CA4 74 80            [12] 2790 	mov	a,#(0x00 ^ 0x80)
      000CA6 8D F0            [24] 2791 	mov	b,r5
      000CA8 63 F0 80         [24] 2792 	xrl	b,#0x80
      000CAB 95 F0            [12] 2793 	subb	a,b
      000CAD 40 5C            [24] 2794 	jc	00102$
      000CAF EC               [12] 2795 	mov	a,r4
      000CB0 94 30            [12] 2796 	subb	a,#0x30
      000CB2 ED               [12] 2797 	mov	a,r5
      000CB3 64 80            [12] 2798 	xrl	a,#0x80
      000CB5 94 80            [12] 2799 	subb	a,#0x80
      000CB7 40 52            [24] 2800 	jc	00102$
                                   2801 ;	program.c:430: num += ((rec - 0x30) * get_num_helper(i - 1));
      000CB9 EC               [12] 2802 	mov	a,r4
      000CBA 24 D0            [12] 2803 	add	a,#0xd0
      000CBC FC               [12] 2804 	mov	r4,a
      000CBD ED               [12] 2805 	mov	a,r5
      000CBE 34 FF            [12] 2806 	addc	a,#0xff
      000CC0 FD               [12] 2807 	mov	r5,a
      000CC1 EE               [12] 2808 	mov	a,r6
      000CC2 24 FF            [12] 2809 	add	a,#0xff
      000CC4 FA               [12] 2810 	mov	r2,a
      000CC5 EF               [12] 2811 	mov	a,r7
      000CC6 34 FF            [12] 2812 	addc	a,#0xff
      000CC8 FB               [12] 2813 	mov	r3,a
      000CC9 8A 82            [24] 2814 	mov	dpl,r2
      000CCB 8B 83            [24] 2815 	mov	dph,r3
      000CCD C0 07            [24] 2816 	push	ar7
      000CCF C0 06            [24] 2817 	push	ar6
      000CD1 C0 05            [24] 2818 	push	ar5
      000CD3 C0 04            [24] 2819 	push	ar4
      000CD5 12 0D 38         [24] 2820 	lcall	_get_num_helper
      000CD8 AA 82            [24] 2821 	mov	r2,dpl
      000CDA AB 83            [24] 2822 	mov	r3,dph
      000CDC D0 04            [24] 2823 	pop	ar4
      000CDE D0 05            [24] 2824 	pop	ar5
      000CE0 90 15 0F         [24] 2825 	mov	dptr,#__mulint_PARM_2
      000CE3 EA               [12] 2826 	mov	a,r2
      000CE4 F0               [24] 2827 	movx	@dptr,a
      000CE5 EB               [12] 2828 	mov	a,r3
      000CE6 A3               [24] 2829 	inc	dptr
      000CE7 F0               [24] 2830 	movx	@dptr,a
      000CE8 8C 82            [24] 2831 	mov	dpl,r4
      000CEA 8D 83            [24] 2832 	mov	dph,r5
      000CEC 12 11 B5         [24] 2833 	lcall	__mulint
      000CEF AC 82            [24] 2834 	mov	r4,dpl
      000CF1 AD 83            [24] 2835 	mov	r5,dph
      000CF3 D0 06            [24] 2836 	pop	ar6
      000CF5 D0 07            [24] 2837 	pop	ar7
      000CF7 90 01 63         [24] 2838 	mov	dptr,#_get_number_num_65536_97
      000CFA E0               [24] 2839 	movx	a,@dptr
      000CFB FA               [12] 2840 	mov	r2,a
      000CFC A3               [24] 2841 	inc	dptr
      000CFD E0               [24] 2842 	movx	a,@dptr
      000CFE FB               [12] 2843 	mov	r3,a
      000CFF 90 01 63         [24] 2844 	mov	dptr,#_get_number_num_65536_97
      000D02 EC               [12] 2845 	mov	a,r4
      000D03 2A               [12] 2846 	add	a,r2
      000D04 F0               [24] 2847 	movx	@dptr,a
      000D05 ED               [12] 2848 	mov	a,r5
      000D06 3B               [12] 2849 	addc	a,r3
      000D07 A3               [24] 2850 	inc	dptr
      000D08 F0               [24] 2851 	movx	@dptr,a
      000D09 80 19            [24] 2852 	sjmp	00108$
      000D0B                       2853 00102$:
                                   2854 ;	program.c:434: printf("ERR,Numbers ONLY!\n\r");
      000D0B 74 6E            [12] 2855 	mov	a,#___str_41
      000D0D C0 E0            [24] 2856 	push	acc
      000D0F 74 21            [12] 2857 	mov	a,#(___str_41 >> 8)
      000D11 C0 E0            [24] 2858 	push	acc
      000D13 74 80            [12] 2859 	mov	a,#0x80
      000D15 C0 E0            [24] 2860 	push	acc
      000D17 12 12 23         [24] 2861 	lcall	_printf
      000D1A 15 81            [12] 2862 	dec	sp
      000D1C 15 81            [12] 2863 	dec	sp
      000D1E 15 81            [12] 2864 	dec	sp
                                   2865 ;	program.c:435: return -1;
      000D20 90 FF FF         [24] 2866 	mov	dptr,#0xffff
      000D23 22               [24] 2867 	ret
      000D24                       2868 00108$:
                                   2869 ;	program.c:423: for (int i = total_chars; i > 0; i--)
      000D24 1E               [12] 2870 	dec	r6
      000D25 BE FF 01         [24] 2871 	cjne	r6,#0xff,00130$
      000D28 1F               [12] 2872 	dec	r7
      000D29                       2873 00130$:
      000D29 02 0C 80         [24] 2874 	ljmp	00107$
      000D2C                       2875 00105$:
                                   2876 ;	program.c:438: return num;
      000D2C 90 01 63         [24] 2877 	mov	dptr,#_get_number_num_65536_97
      000D2F E0               [24] 2878 	movx	a,@dptr
      000D30 FE               [12] 2879 	mov	r6,a
      000D31 A3               [24] 2880 	inc	dptr
      000D32 E0               [24] 2881 	movx	a,@dptr
                                   2882 ;	program.c:439: }
      000D33 8E 82            [24] 2883 	mov	dpl,r6
      000D35 F5 83            [12] 2884 	mov	dph,a
      000D37 22               [24] 2885 	ret
                                   2886 ;------------------------------------------------------------
                                   2887 ;Allocation info for local variables in function 'get_num_helper'
                                   2888 ;------------------------------------------------------------
                                   2889 ;times                     Allocated with name '_get_num_helper_times_65536_102'
                                   2890 ;num                       Allocated with name '_get_num_helper_num_65536_103'
                                   2891 ;i                         Allocated with name '_get_num_helper_i_131072_104'
                                   2892 ;------------------------------------------------------------
                                   2893 ;	program.c:446: int get_num_helper(int times)
                                   2894 ;	-----------------------------------------
                                   2895 ;	 function get_num_helper
                                   2896 ;	-----------------------------------------
      000D38                       2897 _get_num_helper:
      000D38 AF 83            [24] 2898 	mov	r7,dph
      000D3A E5 82            [12] 2899 	mov	a,dpl
      000D3C 90 01 65         [24] 2900 	mov	dptr,#_get_num_helper_times_65536_102
      000D3F F0               [24] 2901 	movx	@dptr,a
      000D40 EF               [12] 2902 	mov	a,r7
      000D41 A3               [24] 2903 	inc	dptr
      000D42 F0               [24] 2904 	movx	@dptr,a
                                   2905 ;	program.c:448: int num = 1;
      000D43 90 01 67         [24] 2906 	mov	dptr,#_get_num_helper_num_65536_103
      000D46 74 01            [12] 2907 	mov	a,#0x01
      000D48 F0               [24] 2908 	movx	@dptr,a
      000D49 E4               [12] 2909 	clr	a
      000D4A A3               [24] 2910 	inc	dptr
      000D4B F0               [24] 2911 	movx	@dptr,a
                                   2912 ;	program.c:449: for (int i = 0; i < times; i++)
      000D4C 90 01 65         [24] 2913 	mov	dptr,#_get_num_helper_times_65536_102
      000D4F E0               [24] 2914 	movx	a,@dptr
      000D50 FE               [12] 2915 	mov	r6,a
      000D51 A3               [24] 2916 	inc	dptr
      000D52 E0               [24] 2917 	movx	a,@dptr
      000D53 FF               [12] 2918 	mov	r7,a
      000D54 7C 00            [12] 2919 	mov	r4,#0x00
      000D56 7D 00            [12] 2920 	mov	r5,#0x00
      000D58                       2921 00106$:
      000D58 C3               [12] 2922 	clr	c
      000D59 EC               [12] 2923 	mov	a,r4
      000D5A 9E               [12] 2924 	subb	a,r6
      000D5B ED               [12] 2925 	mov	a,r5
      000D5C 64 80            [12] 2926 	xrl	a,#0x80
      000D5E 8F F0            [24] 2927 	mov	b,r7
      000D60 63 F0 80         [24] 2928 	xrl	b,#0x80
      000D63 95 F0            [12] 2929 	subb	a,b
      000D65 50 3A            [24] 2930 	jnc	00101$
                                   2931 ;	program.c:451: num = num * 10;
      000D67 90 01 67         [24] 2932 	mov	dptr,#_get_num_helper_num_65536_103
      000D6A E0               [24] 2933 	movx	a,@dptr
      000D6B FA               [12] 2934 	mov	r2,a
      000D6C A3               [24] 2935 	inc	dptr
      000D6D E0               [24] 2936 	movx	a,@dptr
      000D6E FB               [12] 2937 	mov	r3,a
      000D6F 90 15 0F         [24] 2938 	mov	dptr,#__mulint_PARM_2
      000D72 EA               [12] 2939 	mov	a,r2
      000D73 F0               [24] 2940 	movx	@dptr,a
      000D74 EB               [12] 2941 	mov	a,r3
      000D75 A3               [24] 2942 	inc	dptr
      000D76 F0               [24] 2943 	movx	@dptr,a
      000D77 90 00 0A         [24] 2944 	mov	dptr,#0x000a
      000D7A C0 07            [24] 2945 	push	ar7
      000D7C C0 06            [24] 2946 	push	ar6
      000D7E C0 05            [24] 2947 	push	ar5
      000D80 C0 04            [24] 2948 	push	ar4
      000D82 12 11 B5         [24] 2949 	lcall	__mulint
      000D85 E5 82            [12] 2950 	mov	a,dpl
      000D87 85 83 F0         [24] 2951 	mov	b,dph
      000D8A D0 04            [24] 2952 	pop	ar4
      000D8C D0 05            [24] 2953 	pop	ar5
      000D8E D0 06            [24] 2954 	pop	ar6
      000D90 D0 07            [24] 2955 	pop	ar7
      000D92 90 01 67         [24] 2956 	mov	dptr,#_get_num_helper_num_65536_103
      000D95 F0               [24] 2957 	movx	@dptr,a
      000D96 E5 F0            [12] 2958 	mov	a,b
      000D98 A3               [24] 2959 	inc	dptr
      000D99 F0               [24] 2960 	movx	@dptr,a
                                   2961 ;	program.c:449: for (int i = 0; i < times; i++)
      000D9A 0C               [12] 2962 	inc	r4
      000D9B BC 00 BA         [24] 2963 	cjne	r4,#0x00,00106$
      000D9E 0D               [12] 2964 	inc	r5
      000D9F 80 B7            [24] 2965 	sjmp	00106$
      000DA1                       2966 00101$:
                                   2967 ;	program.c:453: if (times == 0)
      000DA1 EE               [12] 2968 	mov	a,r6
      000DA2 4F               [12] 2969 	orl	a,r7
      000DA3 70 04            [24] 2970 	jnz	00103$
                                   2971 ;	program.c:454: return 1;
      000DA5 90 00 01         [24] 2972 	mov	dptr,#0x0001
      000DA8 22               [24] 2973 	ret
      000DA9                       2974 00103$:
                                   2975 ;	program.c:456: return num;
      000DA9 90 01 67         [24] 2976 	mov	dptr,#_get_num_helper_num_65536_103
      000DAC E0               [24] 2977 	movx	a,@dptr
      000DAD FE               [12] 2978 	mov	r6,a
      000DAE A3               [24] 2979 	inc	dptr
      000DAF E0               [24] 2980 	movx	a,@dptr
                                   2981 ;	program.c:457: }
      000DB0 8E 82            [24] 2982 	mov	dpl,r6
      000DB2 F5 83            [12] 2983 	mov	dph,a
      000DB4 22               [24] 2984 	ret
                                   2985 ;------------------------------------------------------------
                                   2986 ;Allocation info for local variables in function 'putchar'
                                   2987 ;------------------------------------------------------------
                                   2988 ;c                         Allocated with name '_putchar_c_65536_106'
                                   2989 ;------------------------------------------------------------
                                   2990 ;	program.c:464: int putchar(int c)
                                   2991 ;	-----------------------------------------
                                   2992 ;	 function putchar
                                   2993 ;	-----------------------------------------
      000DB5                       2994 _putchar:
      000DB5 AF 83            [24] 2995 	mov	r7,dph
      000DB7 E5 82            [12] 2996 	mov	a,dpl
      000DB9 90 01 69         [24] 2997 	mov	dptr,#_putchar_c_65536_106
      000DBC F0               [24] 2998 	movx	@dptr,a
      000DBD EF               [12] 2999 	mov	a,r7
      000DBE A3               [24] 3000 	inc	dptr
      000DBF F0               [24] 3001 	movx	@dptr,a
                                   3002 ;	program.c:466: while ((SCON & 0x02) == 0)
      000DC0                       3003 00101$:
      000DC0 E5 98            [12] 3004 	mov	a,_SCON
      000DC2 30 E1 FB         [24] 3005 	jnb	acc.1,00101$
                                   3006 ;	program.c:468: TI = 0;
                                   3007 ;	assignBit
      000DC5 C2 99            [12] 3008 	clr	_TI
                                   3009 ;	program.c:469: SBUF = c;
      000DC7 90 01 69         [24] 3010 	mov	dptr,#_putchar_c_65536_106
      000DCA E0               [24] 3011 	movx	a,@dptr
      000DCB FE               [12] 3012 	mov	r6,a
      000DCC A3               [24] 3013 	inc	dptr
      000DCD E0               [24] 3014 	movx	a,@dptr
      000DCE 8E 99            [24] 3015 	mov	_SBUF,r6
                                   3016 ;	program.c:470: return 0;
      000DD0 90 00 00         [24] 3017 	mov	dptr,#0x0000
                                   3018 ;	program.c:471: }
      000DD3 22               [24] 3019 	ret
                                   3020 ;------------------------------------------------------------
                                   3021 ;Allocation info for local variables in function 'getchar'
                                   3022 ;------------------------------------------------------------
                                   3023 ;	program.c:478: int getchar()
                                   3024 ;	-----------------------------------------
                                   3025 ;	 function getchar
                                   3026 ;	-----------------------------------------
      000DD4                       3027 _getchar:
                                   3028 ;	program.c:480: while (RI == 0)
      000DD4                       3029 00101$:
                                   3030 ;	program.c:482: RI = 0;
                                   3031 ;	assignBit
      000DD4 10 98 02         [24] 3032 	jbc	_RI,00140$
      000DD7 80 FB            [24] 3033 	sjmp	00101$
      000DD9                       3034 00140$:
                                   3035 ;	program.c:483: if (SBUF != 0x3F && SBUF != 0x3D && SBUF != 0x40 && SBUF != 0x2B && SBUF != 0x2D)
      000DD9 74 3F            [12] 3036 	mov	a,#0x3f
      000DDB B5 99 02         [24] 3037 	cjne	a,_SBUF,00141$
      000DDE 80 27            [24] 3038 	sjmp	00105$
      000DE0                       3039 00141$:
      000DE0 74 3D            [12] 3040 	mov	a,#0x3d
      000DE2 B5 99 02         [24] 3041 	cjne	a,_SBUF,00142$
      000DE5 80 20            [24] 3042 	sjmp	00105$
      000DE7                       3043 00142$:
      000DE7 74 40            [12] 3044 	mov	a,#0x40
      000DE9 B5 99 02         [24] 3045 	cjne	a,_SBUF,00143$
      000DEC 80 19            [24] 3046 	sjmp	00105$
      000DEE                       3047 00143$:
      000DEE 74 2B            [12] 3048 	mov	a,#0x2b
      000DF0 B5 99 02         [24] 3049 	cjne	a,_SBUF,00144$
      000DF3 80 12            [24] 3050 	sjmp	00105$
      000DF5                       3051 00144$:
      000DF5 74 2D            [12] 3052 	mov	a,#0x2d
      000DF7 B5 99 02         [24] 3053 	cjne	a,_SBUF,00145$
      000DFA 80 0B            [24] 3054 	sjmp	00105$
      000DFC                       3055 00145$:
                                   3056 ;	program.c:484: putchar(SBUF);
      000DFC AE 99            [24] 3057 	mov	r6,_SBUF
      000DFE 7F 00            [12] 3058 	mov	r7,#0x00
      000E00 8E 82            [24] 3059 	mov	dpl,r6
      000E02 8F 83            [24] 3060 	mov	dph,r7
      000E04 12 0D B5         [24] 3061 	lcall	_putchar
      000E07                       3062 00105$:
                                   3063 ;	program.c:485: return SBUF;
      000E07 AE 99            [24] 3064 	mov	r6,_SBUF
      000E09 7F 00            [12] 3065 	mov	r7,#0x00
      000E0B 8E 82            [24] 3066 	mov	dpl,r6
      000E0D 8F 83            [24] 3067 	mov	dph,r7
                                   3068 ;	program.c:486: }
      000E0F 22               [24] 3069 	ret
                                   3070 ;------------------------------------------------------------
                                   3071 ;Allocation info for local variables in function '_sdcc_external_startup'
                                   3072 ;------------------------------------------------------------
                                   3073 ;	program.c:494: _sdcc_external_startup()
                                   3074 ;	-----------------------------------------
                                   3075 ;	 function _sdcc_external_startup
                                   3076 ;	-----------------------------------------
      000E10                       3077 __sdcc_external_startup:
                                   3078 ;	program.c:496: _AUXR = 0xC;
      000E10 75 8E 0C         [24] 3079 	mov	__AUXR,#0x0c
                                   3080 ;	program.c:498: SCON = 0x42;
      000E13 75 98 42         [24] 3081 	mov	_SCON,#0x42
                                   3082 ;	program.c:500: PCON = 0x80;
      000E16 75 87 80         [24] 3083 	mov	_PCON,#0x80
                                   3084 ;	program.c:502: TH1 = 255;
      000E19 75 8D FF         [24] 3085 	mov	_TH1,#0xff
                                   3086 ;	program.c:503: TL1 = 255;
      000E1C 75 8B FF         [24] 3087 	mov	_TL1,#0xff
                                   3088 ;	program.c:505: TMOD = 0x20;
      000E1F 75 89 20         [24] 3089 	mov	_TMOD,#0x20
                                   3090 ;	program.c:507: REN = 1;
                                   3091 ;	assignBit
      000E22 D2 9C            [12] 3092 	setb	_REN
                                   3093 ;	program.c:509: TR1 = 1;
                                   3094 ;	assignBit
      000E24 D2 8E            [12] 3095 	setb	_TR1
                                   3096 ;	program.c:511: return 0;
      000E26 90 00 00         [24] 3097 	mov	dptr,#0x0000
                                   3098 ;	program.c:512: }
      000E29 22               [24] 3099 	ret
                                   3100 	.area CSEG    (CODE)
                                   3101 	.area CONST   (CODE)
                                   3102 	.area CONST   (CODE)
      001C5E                       3103 ___str_0:
      001C5E 48 45 4C 4C 4F 21 20  3104 	.ascii "HELLO! "
      001C65 0A                    3105 	.db 0x0a
      001C66 0D                    3106 	.db 0x0d
      001C67 00                    3107 	.db 0x00
                                   3108 	.area CSEG    (CODE)
                                   3109 	.area CONST   (CODE)
      001C68                       3110 ___str_1:
      001C68 42 75 66 66 65 72 20  3111 	.ascii "Buffer %d Freed ...."
             25 64 20 46 72 65 65
             64 20 2E 2E 2E 2E
      001C7C 0A                    3112 	.db 0x0a
      001C7D 0D                    3113 	.db 0x0d
      001C7E 00                    3114 	.db 0x00
                                   3115 	.area CSEG    (CODE)
                                   3116 	.area CONST   (CODE)
      001C7F                       3117 ___str_2:
      001C7F 4C 65 74 27 73 20 62  3118 	.ascii "Let's begin again.."
             65 67 69 6E 20 61 67
             61 69 6E 2E 2E
      001C92 0A                    3119 	.db 0x0a
      001C93 0D                    3120 	.db 0x0d
      001C94 00                    3121 	.db 0x00
                                   3122 	.area CSEG    (CODE)
                                   3123 	.area CONST   (CODE)
      001C95                       3124 ___str_3:
      001C95 0A                    3125 	.db 0x0a
      001C96 0D                    3126 	.db 0x0d
      001C97 47 69 76 65 20 56 61  3127 	.ascii "Give Valid Buffer Number to delete(1-%d) in 3 digits"
             6C 69 64 20 42 75 66
             66 65 72 20 4E 75 6D
             62 65 72 20 74 6F 20
             64 65 6C 65 74 65 28
             31 2D 25 64 29 20 69
             6E 20 33 20 64 69 67
             69 74 73
      001CCB 0A                    3128 	.db 0x0a
      001CCC 0D                    3129 	.db 0x0d
      001CCD 00                    3130 	.db 0x00
                                   3131 	.area CSEG    (CODE)
                                   3132 	.area CONST   (CODE)
      001CCE                       3133 ___str_4:
      001CCE 42 75 66 66 65 72 20  3134 	.ascii "Buffer %d Successfully Deleted.. "
             25 64 20 53 75 63 63
             65 73 73 66 75 6C 6C
             79 20 44 65 6C 65 74
             65 64 2E 2E 20
      001CEF 0A                    3135 	.db 0x0a
      001CF0 0D                    3136 	.db 0x0d
      001CF1 00                    3137 	.db 0x00
                                   3138 	.area CSEG    (CODE)
                                   3139 	.area CONST   (CODE)
      001CF2                       3140 ___str_5:
      001CF2 0A                    3141 	.db 0x0a
      001CF3 0A                    3142 	.db 0x0a
      001CF4 0D                    3143 	.db 0x0d
      001CF5 5E 5E 5E 5E 5E 5E 5E  3144 	.ascii "^^^^^^^^^^^^^^^^^^^-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ "
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 2D 4D
             45 4E 55 2D 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 20
      001D29 0A                    3145 	.db 0x0a
      001D2A 0A                    3146 	.db 0x0a
      001D2B 0D                    3147 	.db 0x0d
      001D2C 00                    3148 	.db 0x00
                                   3149 	.area CSEG    (CODE)
                                   3150 	.area CONST   (CODE)
      001D2D                       3151 ___str_6:
      001D2D 59 6F 75 20 63 61 6E  3152 	.ascii "You can enter characters or use commands from below "
             20 65 6E 74 65 72 20
             63 68 61 72 61 63 74
             65 72 73 20 6F 72 20
             75 73 65 20 63 6F 6D
             6D 61 6E 64 73 20 66
             72 6F 6D 20 62 65 6C
             6F 77 20
      001D61 0A                    3153 	.db 0x0a
      001D62 0D                    3154 	.db 0x0d
      001D63 00                    3155 	.db 0x00
                                   3156 	.area CSEG    (CODE)
                                   3157 	.area CONST   (CODE)
      001D64                       3158 ___str_7:
      001D64 27 3F 27 20 2D 3E 20  3159 	.ascii "'?' -> Show heap status, dump & clear Buffer 0 "
             53 68 6F 77 20 68 65
             61 70 20 73 74 61 74
             75 73 2C 20 64 75 6D
             70 20 26 20 63 6C 65
             61 72 20 42 75 66 66
             65 72 20 30 20
      001D93 0A                    3160 	.db 0x0a
      001D94 0D                    3161 	.db 0x0d
      001D95 00                    3162 	.db 0x00
                                   3163 	.area CSEG    (CODE)
                                   3164 	.area CONST   (CODE)
      001D96                       3165 ___str_8:
      001D96 27 2B 27 20 2D 3E 20  3166 	.ascii "'+' -> Add a new Buffer"
             41 64 64 20 61 20 6E
             65 77 20 42 75 66 66
             65 72
      001DAD 0A                    3167 	.db 0x0a
      001DAE 0D                    3168 	.db 0x0d
      001DAF 00                    3169 	.db 0x00
                                   3170 	.area CSEG    (CODE)
                                   3171 	.area CONST   (CODE)
      001DB0                       3172 ___str_9:
      001DB0 27 2D 27 20 2D 3E 20  3173 	.ascii "'-' -> Delete existing Buffer"
             44 65 6C 65 74 65 20
             65 78 69 73 74 69 6E
             67 20 42 75 66 66 65
             72
      001DCD 0A                    3174 	.db 0x0a
      001DCE 0D                    3175 	.db 0x0d
      001DCF 00                    3176 	.db 0x00
                                   3177 	.area CSEG    (CODE)
                                   3178 	.area CONST   (CODE)
      001DD0                       3179 ___str_10:
      001DD0 27 3D 27 20 2D 3E 20  3180 	.ascii "'=' -> Dump Buffer 0 in hex"
             44 75 6D 70 20 42 75
             66 66 65 72 20 30 20
             69 6E 20 68 65 78
      001DEB 0A                    3181 	.db 0x0a
      001DEC 0D                    3182 	.db 0x0d
      001DED 00                    3183 	.db 0x00
                                   3184 	.area CSEG    (CODE)
                                   3185 	.area CONST   (CODE)
      001DEE                       3186 ___str_11:
      001DEE 27 40 27 20 2D 3E 20  3187 	.ascii "'@' -> Free all Heap & begin again"
             46 72 65 65 20 61 6C
             6C 20 48 65 61 70 20
             26 20 62 65 67 69 6E
             20 61 67 61 69 6E
      001E10 0A                    3188 	.db 0x0a
      001E11 0A                    3189 	.db 0x0a
      001E12 0D                    3190 	.db 0x0d
      001E13 00                    3191 	.db 0x00
                                   3192 	.area CSEG    (CODE)
                                   3193 	.area CONST   (CODE)
      001E14                       3194 ___str_12:
      001E14 0A                    3195 	.db 0x0a
      001E15 0D                    3196 	.db 0x0d
      001E16 47 69 76 65 20 56 61  3197 	.ascii "Give Valid Buffer Size(030-300):"
             6C 69 64 20 42 75 66
             66 65 72 20 53 69 7A
             65 28 30 33 30 2D 33
             30 30 29 3A
      001E36 00                    3198 	.db 0x00
                                   3199 	.area CSEG    (CODE)
                                   3200 	.area CONST   (CODE)
      001E37                       3201 ___str_13:
      001E37 46 61 69 6C 65 64 2C  3202 	.ascii "Failed, give smaller buffer"
             20 67 69 76 65 20 73
             6D 61 6C 6C 65 72 20
             62 75 66 66 65 72
      001E52 0A                    3203 	.db 0x0a
      001E53 0D                    3204 	.db 0x0d
      001E54 00                    3205 	.db 0x00
                                   3206 	.area CSEG    (CODE)
                                   3207 	.area CONST   (CODE)
      001E55                       3208 ___str_14:
      001E55 0A                    3209 	.db 0x0a
      001E56 0A                    3210 	.db 0x0a
      001E57 0D                    3211 	.db 0x0d
      001E58 23 23 23 23 53 55 43  3212 	.ascii "####SUCCESS, BUFFER Created####"
             43 45 53 53 2C 20 42
             55 46 46 45 52 20 43
             72 65 61 74 65 64 23
             23 23 23
      001E77 0A                    3213 	.db 0x0a
      001E78 0A                    3214 	.db 0x0a
      001E79 0D                    3215 	.db 0x0d
      001E7A 00                    3216 	.db 0x00
                                   3217 	.area CSEG    (CODE)
                                   3218 	.area CONST   (CODE)
      001E7B                       3219 ___str_15:
      001E7B 4E 6F 20 48 65 61 70  3220 	.ascii "No Heap Memory Left, Delete some buffers..."
             20 4D 65 6D 6F 72 79
             20 4C 65 66 74 2C 20
             44 65 6C 65 74 65 20
             73 6F 6D 65 20 62 75
             66 66 65 72 73 2E 2E
             2E
      001EA6 0A                    3221 	.db 0x0a
      001EA7 0D                    3222 	.db 0x0d
      001EA8 00                    3223 	.db 0x00
                                   3224 	.area CSEG    (CODE)
                                   3225 	.area CONST   (CODE)
      001EA9                       3226 ___str_16:
      001EA9 0A                    3227 	.db 0x0a
      001EAA 0D                    3228 	.db 0x0d
      001EAB 47 69 76 65 20 56 61  3229 	.ascii "Give Valid Initial Buffer Size(0048-4800):"
             6C 69 64 20 49 6E 69
             74 69 61 6C 20 42 75
             66 66 65 72 20 53 69
             7A 65 28 30 30 34 38
             2D 34 38 30 30 29 3A
      001ED5 00                    3230 	.db 0x00
                                   3231 	.area CSEG    (CODE)
                                   3232 	.area CONST   (CODE)
      001ED6                       3233 ___str_17:
      001ED6 0A                    3234 	.db 0x0a
      001ED7 0D                    3235 	.db 0x0d
      001ED8 23 23 23 23 46 41 49  3236 	.ascii "####FAIL, Please give a smaller buffer size####"
             4C 2C 20 50 6C 65 61
             73 65 20 67 69 76 65
             20 61 20 73 6D 61 6C
             6C 65 72 20 62 75 66
             66 65 72 20 73 69 7A
             65 23 23 23 23
      001F07 0A                    3237 	.db 0x0a
      001F08 0A                    3238 	.db 0x0a
      001F09 0D                    3239 	.db 0x0d
      001F0A 00                    3240 	.db 0x00
                                   3241 	.area CSEG    (CODE)
                                   3242 	.area CONST   (CODE)
      001F0B                       3243 ___str_18:
      001F0B 0A                    3244 	.db 0x0a
      001F0C 0A                    3245 	.db 0x0a
      001F0D 0D                    3246 	.db 0x0d
      001F0E 23 23 23 23 53 55 43  3247 	.ascii "####SUCCESS, INITIAL BUFFERS Created####"
             43 45 53 53 2C 20 49
             4E 49 54 49 41 4C 20
             42 55 46 46 45 52 53
             20 43 72 65 61 74 65
             64 23 23 23 23
      001F36 0A                    3248 	.db 0x0a
      001F37 0A                    3249 	.db 0x0a
      001F38 0D                    3250 	.db 0x0d
      001F39 00                    3251 	.db 0x00
                                   3252 	.area CSEG    (CODE)
                                   3253 	.area CONST   (CODE)
      001F3A                       3254 ___str_19:
      001F3A 0A                    3255 	.db 0x0a
      001F3B 0A                    3256 	.db 0x0a
      001F3C 0D                    3257 	.db 0x0d
      001F3D 2A 2A 2A 2A 2A 2A 2A  3258 	.ascii "***********Buffer-0-Contents*********** "
             2A 2A 2A 2A 42 75 66
             66 65 72 2D 30 2D 43
             6F 6E 74 65 6E 74 73
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 20
      001F65 0A                    3259 	.db 0x0a
      001F66 0D                    3260 	.db 0x0d
      001F67 00                    3261 	.db 0x00
                                   3262 	.area CSEG    (CODE)
                                   3263 	.area CONST   (CODE)
      001F68                       3264 ___str_20:
      001F68 0A                    3265 	.db 0x0a
      001F69 0D                    3266 	.db 0x0d
      001F6A 00                    3267 	.db 0x00
                                   3268 	.area CSEG    (CODE)
                                   3269 	.area CONST   (CODE)
      001F6B                       3270 ___str_21:
      001F6B 0A                    3271 	.db 0x0a
      001F6C 0A                    3272 	.db 0x0a
      001F6D 0D                    3273 	.db 0x0d
      001F6E 00                    3274 	.db 0x00
                                   3275 	.area CSEG    (CODE)
                                   3276 	.area CONST   (CODE)
      001F6F                       3277 ___str_22:
      001F6F 42 75 66 66 65 72 30  3278 	.ascii "Buffer0 is Empty...."
             20 69 73 20 45 6D 70
             74 79 2E 2E 2E 2E
      001F83 0A                    3279 	.db 0x0a
      001F84 0D                    3280 	.db 0x0d
      001F85 00                    3281 	.db 0x00
                                   3282 	.area CSEG    (CODE)
                                   3283 	.area CONST   (CODE)
      001F86                       3284 ___str_23:
      001F86 0A                    3285 	.db 0x0a
      001F87 0D                    3286 	.db 0x0d
      001F88 2D 2D 2D 2D 2D 2D 2D  3287 	.ascii "-------------------------HEXDUMP----------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 48 45 58
             44 55 4D 50 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D
      001FC4 2D 2D 2D 2D           3288 	.ascii "----"
      001FC8 00                    3289 	.db 0x00
                                   3290 	.area CSEG    (CODE)
                                   3291 	.area CONST   (CODE)
      001FC9                       3292 ___str_24:
      001FC9 0A                    3293 	.db 0x0a
      001FCA 0D                    3294 	.db 0x0d
      001FCB 20 20 20 20 41 44 44  3295 	.ascii "    ADDR: +0 +1 +2 +3 +4 +5 +6 +7 +8 +9 +A +B +C +D +E +F "
             52 3A 20 2B 30 20 2B
             31 20 2B 32 20 2B 33
             20 2B 34 20 2B 35 20
             2B 36 20 2B 37 20 2B
             38 20 2B 39 20 2B 41
             20 2B 42 20 2B 43 20
             2B 44 20 2B 45 20 2B
             46 20
      002005 0A                    3296 	.db 0x0a
      002006 0D                    3297 	.db 0x0d
      002007 00                    3298 	.db 0x00
                                   3299 	.area CSEG    (CODE)
                                   3300 	.area CONST   (CODE)
      002008                       3301 ___str_25:
      002008 0A                    3302 	.db 0x0a
      002009 0D                    3303 	.db 0x0d
      00200A 25 70 3A 20           3304 	.ascii "%p: "
      00200E 00                    3305 	.db 0x00
                                   3306 	.area CSEG    (CODE)
                                   3307 	.area CONST   (CODE)
      00200F                       3308 ___str_26:
      00200F 25 78 20              3309 	.ascii "%x "
      002012 00                    3310 	.db 0x00
                                   3311 	.area CSEG    (CODE)
                                   3312 	.area CONST   (CODE)
      002013                       3313 ___str_27:
      002013 42 75 66 66 65 72 20  3314 	.ascii "Buffer 0 is empty..."
             30 20 69 73 20 65 6D
             70 74 79 2E 2E 2E
      002027 0A                    3315 	.db 0x0a
      002028 0D                    3316 	.db 0x0d
      002029 00                    3317 	.db 0x00
                                   3318 	.area CSEG    (CODE)
                                   3319 	.area CONST   (CODE)
      00202A                       3320 ___str_28:
      00202A 0A                    3321 	.db 0x0a
      00202B 0D                    3322 	.db 0x0d
      00202C 2A 2A 2A 2A 2A 2A 2A  3323 	.ascii "****************HEAP*STATS*************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 48 45 41 50 2A
             53 54 41 54 53 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A
      002053 0A                    3324 	.db 0x0a
      002054 0D                    3325 	.db 0x0d
      002055 00                    3326 	.db 0x00
                                   3327 	.area CSEG    (CODE)
                                   3328 	.area CONST   (CODE)
      002056                       3329 ___str_29:
      002056 54 6F 74 61 6C 20 48  3330 	.ascii "Total Heap Size: %d "
             65 61 70 20 53 69 7A
             65 3A 20 25 64 20
      00206A 0A                    3331 	.db 0x0a
      00206B 0D                    3332 	.db 0x0d
      00206C 00                    3333 	.db 0x00
                                   3334 	.area CSEG    (CODE)
                                   3335 	.area CONST   (CODE)
      00206D                       3336 ___str_30:
      00206D 41 6C 6C 6F 63 61 74  3337 	.ascii "Allocated Heap Size: %d "
             65 64 20 48 65 61 70
             20 53 69 7A 65 3A 20
             25 64 20
      002085 0A                    3338 	.db 0x0a
      002086 0D                    3339 	.db 0x0d
      002087 00                    3340 	.db 0x00
                                   3341 	.area CSEG    (CODE)
                                   3342 	.area CONST   (CODE)
      002088                       3343 ___str_31:
      002088 41 6C 6C 20 43 68 61  3344 	.ascii "All Chars: %d "
             72 73 3A 20 25 64 20
      002096 0A                    3345 	.db 0x0a
      002097 0D                    3346 	.db 0x0d
      002098 00                    3347 	.db 0x00
                                   3348 	.area CSEG    (CODE)
                                   3349 	.area CONST   (CODE)
      002099                       3350 ___str_32:
      002099 53 74 6F 72 61 67 65  3351 	.ascii "Storage Chars: %d "
             20 43 68 61 72 73 3A
             20 25 64 20
      0020AB 0A                    3352 	.db 0x0a
      0020AC 0D                    3353 	.db 0x0d
      0020AD 00                    3354 	.db 0x00
                                   3355 	.area CSEG    (CODE)
                                   3356 	.area CONST   (CODE)
      0020AE                       3357 ___str_33:
      0020AE 54 6F 74 61 6C 20 42  3358 	.ascii "Total Buffers: %d "
             75 66 66 65 72 73 3A
             20 25 64 20
      0020C0 0A                    3359 	.db 0x0a
      0020C1 0D                    3360 	.db 0x0d
      0020C2 00                    3361 	.db 0x00
                                   3362 	.area CSEG    (CODE)
                                   3363 	.area CONST   (CODE)
      0020C3                       3364 ___str_34:
      0020C3 2A 2A 2A 2A 2A 2A 2A  3365 	.ascii "****************BUFFER*%d***************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 42 55 46 46 45
             52 2A 25 64 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A
      0020EB 0A                    3366 	.db 0x0a
      0020EC 0D                    3367 	.db 0x0d
      0020ED 00                    3368 	.db 0x00
                                   3369 	.area CSEG    (CODE)
                                   3370 	.area CONST   (CODE)
      0020EE                       3371 ___str_35:
      0020EE 42 75 66 66 65 72 23  3372 	.ascii "Buffer#: %d "
             3A 20 25 64 20
      0020FA 0A                    3373 	.db 0x0a
      0020FB 0D                    3374 	.db 0x0d
      0020FC 00                    3375 	.db 0x00
                                   3376 	.area CSEG    (CODE)
                                   3377 	.area CONST   (CODE)
      0020FD                       3378 ___str_36:
      0020FD 42 75 66 66 65 72 53  3379 	.ascii "BufferStart: %p "
             74 61 72 74 3A 20 25
             70 20
      00210D 0A                    3380 	.db 0x0a
      00210E 0D                    3381 	.db 0x0d
      00210F 00                    3382 	.db 0x00
                                   3383 	.area CSEG    (CODE)
                                   3384 	.area CONST   (CODE)
      002110                       3385 ___str_37:
      002110 42 75 66 66 65 72 45  3386 	.ascii "BufferEnd: %p "
             6E 64 3A 20 25 70 20
      00211E 0A                    3387 	.db 0x0a
      00211F 0D                    3388 	.db 0x0d
      002120 00                    3389 	.db 0x00
                                   3390 	.area CSEG    (CODE)
                                   3391 	.area CONST   (CODE)
      002121                       3392 ___str_38:
      002121 42 75 66 66 65 72 53  3393 	.ascii "BufferSize: %d "
             69 7A 65 3A 20 25 64
             20
      002130 0A                    3394 	.db 0x0a
      002131 0D                    3395 	.db 0x0d
      002132 00                    3396 	.db 0x00
                                   3397 	.area CSEG    (CODE)
                                   3398 	.area CONST   (CODE)
      002133                       3399 ___str_39:
      002133 54 6F 74 61 6C 55 73  3400 	.ascii "TotalUsed: %d "
             65 64 3A 20 25 64 20
      002141 0A                    3401 	.db 0x0a
      002142 0D                    3402 	.db 0x0d
      002143 00                    3403 	.db 0x00
                                   3404 	.area CSEG    (CODE)
                                   3405 	.area CONST   (CODE)
      002144                       3406 ___str_40:
      002144 2A 2A 2A 2A 2A 2A 2A  3407 	.ascii "***************************************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A
      00216B 0A                    3408 	.db 0x0a
      00216C 0D                    3409 	.db 0x0d
      00216D 00                    3410 	.db 0x00
                                   3411 	.area CSEG    (CODE)
                                   3412 	.area CONST   (CODE)
      00216E                       3413 ___str_41:
      00216E 45 52 52 2C 4E 75 6D  3414 	.ascii "ERR,Numbers ONLY!"
             62 65 72 73 20 4F 4E
             4C 59 21
      00217F 0A                    3415 	.db 0x0a
      002180 0D                    3416 	.db 0x0d
      002181 00                    3417 	.db 0x00
                                   3418 	.area CSEG    (CODE)
                                   3419 	.area XINIT   (CODE)
                                   3420 	.area CABS    (ABS,CODE)
