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
                                    226 	.globl _buffers_array
                                    227 	.globl _program_stats
                                    228 	.globl _DEBUG_LOC
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
                                    244 	.globl _dataout
                                    245 ;--------------------------------------------------------
                                    246 ; special function registers
                                    247 ;--------------------------------------------------------
                                    248 	.area RSEG    (ABS,DATA)
      000000                        249 	.org 0x0000
                           0000C8   250 _T2CON	=	0x00c8
                           0000CA   251 _RCAP2L	=	0x00ca
                           0000CB   252 _RCAP2H	=	0x00cb
                           0000CC   253 _TL2	=	0x00cc
                           0000CD   254 _TH2	=	0x00cd
                           00008E   255 _AUXR	=	0x008e
                           0000A2   256 _AUXR1	=	0x00a2
                           000097   257 _CKRL	=	0x0097
                           00008F   258 _CKCON0	=	0x008f
                           0000AF   259 _CKCON1	=	0x00af
                           0000FA   260 _CCAP0H	=	0x00fa
                           0000FB   261 _CCAP1H	=	0x00fb
                           0000FC   262 _CCAP2H	=	0x00fc
                           0000FD   263 _CCAP3H	=	0x00fd
                           0000FE   264 _CCAP4H	=	0x00fe
                           0000EA   265 _CCAP0L	=	0x00ea
                           0000EB   266 _CCAP1L	=	0x00eb
                           0000EC   267 _CCAP2L	=	0x00ec
                           0000ED   268 _CCAP3L	=	0x00ed
                           0000EE   269 _CCAP4L	=	0x00ee
                           0000DA   270 _CCAPM0	=	0x00da
                           0000DB   271 _CCAPM1	=	0x00db
                           0000DC   272 _CCAPM2	=	0x00dc
                           0000DD   273 _CCAPM3	=	0x00dd
                           0000DE   274 _CCAPM4	=	0x00de
                           0000D8   275 _CCON	=	0x00d8
                           0000F9   276 _CH	=	0x00f9
                           0000E9   277 _CL	=	0x00e9
                           0000D9   278 _CMOD	=	0x00d9
                           0000A8   279 _IEN0	=	0x00a8
                           0000B1   280 _IEN1	=	0x00b1
                           0000B8   281 _IPL0	=	0x00b8
                           0000B7   282 _IPH0	=	0x00b7
                           0000B2   283 _IPL1	=	0x00b2
                           0000B3   284 _IPH1	=	0x00b3
                           0000C0   285 _P4	=	0x00c0
                           0000E8   286 _P5	=	0x00e8
                           0000A6   287 _WDTRST	=	0x00a6
                           0000A7   288 _WDTPRG	=	0x00a7
                           0000A9   289 _SADDR	=	0x00a9
                           0000B9   290 _SADEN	=	0x00b9
                           0000C3   291 _SPCON	=	0x00c3
                           0000C4   292 _SPSTA	=	0x00c4
                           0000C5   293 _SPDAT	=	0x00c5
                           0000C9   294 _T2MOD	=	0x00c9
                           00009B   295 _BDRCON	=	0x009b
                           00009A   296 _BRL	=	0x009a
                           00009C   297 _KBLS	=	0x009c
                           00009D   298 _KBE	=	0x009d
                           00009E   299 _KBF	=	0x009e
                           0000D2   300 _EECON	=	0x00d2
                           0000E0   301 _ACC	=	0x00e0
                           0000F0   302 _B	=	0x00f0
                           000083   303 _DPH	=	0x0083
                           000083   304 _DP0H	=	0x0083
                           000082   305 _DPL	=	0x0082
                           000082   306 _DP0L	=	0x0082
                           0000A8   307 _IE	=	0x00a8
                           0000B8   308 _IP	=	0x00b8
                           000080   309 _P0	=	0x0080
                           000090   310 _P1	=	0x0090
                           0000A0   311 _P2	=	0x00a0
                           0000B0   312 _P3	=	0x00b0
                           000087   313 _PCON	=	0x0087
                           0000D0   314 _PSW	=	0x00d0
                           000099   315 _SBUF	=	0x0099
                           000099   316 _SBUF0	=	0x0099
                           000098   317 _SCON	=	0x0098
                           000081   318 _SP	=	0x0081
                           000088   319 _TCON	=	0x0088
                           00008C   320 _TH0	=	0x008c
                           00008D   321 _TH1	=	0x008d
                           00008A   322 _TL0	=	0x008a
                           00008B   323 _TL1	=	0x008b
                           000089   324 _TMOD	=	0x0089
                           00008E   325 __AUXR	=	0x008e
                                    326 ;--------------------------------------------------------
                                    327 ; special function bits
                                    328 ;--------------------------------------------------------
                                    329 	.area RSEG    (ABS,DATA)
      000000                        330 	.org 0x0000
                           0000AD   331 _ET2	=	0x00ad
                           0000BD   332 _PT2	=	0x00bd
                           0000C8   333 _T2CON_0	=	0x00c8
                           0000C9   334 _T2CON_1	=	0x00c9
                           0000CA   335 _T2CON_2	=	0x00ca
                           0000CB   336 _T2CON_3	=	0x00cb
                           0000CC   337 _T2CON_4	=	0x00cc
                           0000CD   338 _T2CON_5	=	0x00cd
                           0000CE   339 _T2CON_6	=	0x00ce
                           0000CF   340 _T2CON_7	=	0x00cf
                           0000C8   341 _CP_RL2	=	0x00c8
                           0000C9   342 _C_T2	=	0x00c9
                           0000CA   343 _TR2	=	0x00ca
                           0000CB   344 _EXEN2	=	0x00cb
                           0000CC   345 _TCLK	=	0x00cc
                           0000CD   346 _RCLK	=	0x00cd
                           0000CE   347 _EXF2	=	0x00ce
                           0000CF   348 _TF2	=	0x00cf
                           0000DF   349 _CF	=	0x00df
                           0000DE   350 _CR	=	0x00de
                           0000DC   351 _CCF4	=	0x00dc
                           0000DB   352 _CCF3	=	0x00db
                           0000DA   353 _CCF2	=	0x00da
                           0000D9   354 _CCF1	=	0x00d9
                           0000D8   355 _CCF0	=	0x00d8
                           0000AE   356 _EC	=	0x00ae
                           0000BE   357 _PPCL	=	0x00be
                           0000BD   358 _PT2L	=	0x00bd
                           0000BC   359 _PSL	=	0x00bc
                           0000BB   360 _PT1L	=	0x00bb
                           0000BA   361 _PX1L	=	0x00ba
                           0000B9   362 _PT0L	=	0x00b9
                           0000B8   363 _PX0L	=	0x00b8
                           0000C0   364 _P4_0	=	0x00c0
                           0000C1   365 _P4_1	=	0x00c1
                           0000C2   366 _P4_2	=	0x00c2
                           0000C3   367 _P4_3	=	0x00c3
                           0000C4   368 _P4_4	=	0x00c4
                           0000C5   369 _P4_5	=	0x00c5
                           0000C6   370 _P4_6	=	0x00c6
                           0000C7   371 _P4_7	=	0x00c7
                           0000E8   372 _P5_0	=	0x00e8
                           0000E9   373 _P5_1	=	0x00e9
                           0000EA   374 _P5_2	=	0x00ea
                           0000EB   375 _P5_3	=	0x00eb
                           0000EC   376 _P5_4	=	0x00ec
                           0000ED   377 _P5_5	=	0x00ed
                           0000EE   378 _P5_6	=	0x00ee
                           0000EF   379 _P5_7	=	0x00ef
                           0000F0   380 _BREG_F0	=	0x00f0
                           0000F1   381 _BREG_F1	=	0x00f1
                           0000F2   382 _BREG_F2	=	0x00f2
                           0000F3   383 _BREG_F3	=	0x00f3
                           0000F4   384 _BREG_F4	=	0x00f4
                           0000F5   385 _BREG_F5	=	0x00f5
                           0000F6   386 _BREG_F6	=	0x00f6
                           0000F7   387 _BREG_F7	=	0x00f7
                           0000A8   388 _EX0	=	0x00a8
                           0000A9   389 _ET0	=	0x00a9
                           0000AA   390 _EX1	=	0x00aa
                           0000AB   391 _ET1	=	0x00ab
                           0000AC   392 _ES	=	0x00ac
                           0000AF   393 _EA	=	0x00af
                           0000B8   394 _PX0	=	0x00b8
                           0000B9   395 _PT0	=	0x00b9
                           0000BA   396 _PX1	=	0x00ba
                           0000BB   397 _PT1	=	0x00bb
                           0000BC   398 _PS	=	0x00bc
                           000080   399 _P0_0	=	0x0080
                           000081   400 _P0_1	=	0x0081
                           000082   401 _P0_2	=	0x0082
                           000083   402 _P0_3	=	0x0083
                           000084   403 _P0_4	=	0x0084
                           000085   404 _P0_5	=	0x0085
                           000086   405 _P0_6	=	0x0086
                           000087   406 _P0_7	=	0x0087
                           000090   407 _P1_0	=	0x0090
                           000091   408 _P1_1	=	0x0091
                           000092   409 _P1_2	=	0x0092
                           000093   410 _P1_3	=	0x0093
                           000094   411 _P1_4	=	0x0094
                           000095   412 _P1_5	=	0x0095
                           000096   413 _P1_6	=	0x0096
                           000097   414 _P1_7	=	0x0097
                           0000A0   415 _P2_0	=	0x00a0
                           0000A1   416 _P2_1	=	0x00a1
                           0000A2   417 _P2_2	=	0x00a2
                           0000A3   418 _P2_3	=	0x00a3
                           0000A4   419 _P2_4	=	0x00a4
                           0000A5   420 _P2_5	=	0x00a5
                           0000A6   421 _P2_6	=	0x00a6
                           0000A7   422 _P2_7	=	0x00a7
                           0000B0   423 _P3_0	=	0x00b0
                           0000B1   424 _P3_1	=	0x00b1
                           0000B2   425 _P3_2	=	0x00b2
                           0000B3   426 _P3_3	=	0x00b3
                           0000B4   427 _P3_4	=	0x00b4
                           0000B5   428 _P3_5	=	0x00b5
                           0000B6   429 _P3_6	=	0x00b6
                           0000B7   430 _P3_7	=	0x00b7
                           0000B0   431 _RXD	=	0x00b0
                           0000B0   432 _RXD0	=	0x00b0
                           0000B1   433 _TXD	=	0x00b1
                           0000B1   434 _TXD0	=	0x00b1
                           0000B2   435 _INT0	=	0x00b2
                           0000B3   436 _INT1	=	0x00b3
                           0000B4   437 _T0	=	0x00b4
                           0000B5   438 _T1	=	0x00b5
                           0000B6   439 _WR	=	0x00b6
                           0000B7   440 _RD	=	0x00b7
                           0000D0   441 _P	=	0x00d0
                           0000D1   442 _F1	=	0x00d1
                           0000D2   443 _OV	=	0x00d2
                           0000D3   444 _RS0	=	0x00d3
                           0000D4   445 _RS1	=	0x00d4
                           0000D5   446 _F0	=	0x00d5
                           0000D6   447 _AC	=	0x00d6
                           0000D7   448 _CY	=	0x00d7
                           000098   449 _RI	=	0x0098
                           000099   450 _TI	=	0x0099
                           00009A   451 _RB8	=	0x009a
                           00009B   452 _TB8	=	0x009b
                           00009C   453 _REN	=	0x009c
                           00009D   454 _SM2	=	0x009d
                           00009E   455 _SM1	=	0x009e
                           00009F   456 _SM0	=	0x009f
                           000088   457 _IT0	=	0x0088
                           000089   458 _IE0	=	0x0089
                           00008A   459 _IT1	=	0x008a
                           00008B   460 _IE1	=	0x008b
                           00008C   461 _TR0	=	0x008c
                           00008D   462 _TF0	=	0x008d
                           00008E   463 _TR1	=	0x008e
                           00008F   464 _TF1	=	0x008f
                                    465 ;--------------------------------------------------------
                                    466 ; overlayable register banks
                                    467 ;--------------------------------------------------------
                                    468 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        469 	.ds 8
                                    470 ;--------------------------------------------------------
                                    471 ; internal ram data
                                    472 ;--------------------------------------------------------
                                    473 	.area DSEG    (DATA)
      000008                        474 _delete_buffer_sloc0_1_0:
      000008                        475 	.ds 2
      00000A                        476 _delete_buffer_sloc1_1_0:
      00000A                        477 	.ds 2
      00000C                        478 _delete_buffer_sloc2_1_0:
      00000C                        479 	.ds 3
                                    480 ;--------------------------------------------------------
                                    481 ; overlayable items in internal ram 
                                    482 ;--------------------------------------------------------
                                    483 ;--------------------------------------------------------
                                    484 ; Stack segment in internal ram 
                                    485 ;--------------------------------------------------------
                                    486 	.area	SSEG
      000021                        487 __start__stack:
      000021                        488 	.ds	1
                                    489 
                                    490 ;--------------------------------------------------------
                                    491 ; indirectly addressable internal ram data
                                    492 ;--------------------------------------------------------
                                    493 	.area ISEG    (DATA)
                                    494 ;--------------------------------------------------------
                                    495 ; absolute internal ram data
                                    496 ;--------------------------------------------------------
                                    497 	.area IABS    (ABS,DATA)
                                    498 	.area IABS    (ABS,DATA)
                                    499 ;--------------------------------------------------------
                                    500 ; bit data
                                    501 ;--------------------------------------------------------
                                    502 	.area BSEG    (BIT)
                                    503 ;--------------------------------------------------------
                                    504 ; paged external ram data
                                    505 ;--------------------------------------------------------
                                    506 	.area PSEG    (PAG,XDATA)
                                    507 ;--------------------------------------------------------
                                    508 ; external ram data
                                    509 ;--------------------------------------------------------
                                    510 	.area XSEG    (XDATA)
                           006FFF   511 _DEBUG_LOC	=	0x6fff
      000001                        512 _program_stats::
      000001                        513 	.ds 10
      00000B                        514 _buffers_array::
      00000B                        515 	.ds 300
      000137                        516 _create_new_buffer_buff_65537_61:
      000137                        517 	.ds 12
      000143                        518 _create_initial_buffers_buff_65538_68:
      000143                        519 	.ds 12
      00014F                        520 _create_initial_buffers_buff1_65538_68:
      00014F                        521 	.ds 12
      00015B                        522 _dump_buff_zero_ascii_j_65537_84:
      00015B                        523 	.ds 2
      00015D                        524 _dump_buff_zero_hex_j_131073_92:
      00015D                        525 	.ds 2
      00015F                        526 _get_number_total_chars_65536_101:
      00015F                        527 	.ds 2
      000161                        528 _get_number_num_65537_103:
      000161                        529 	.ds 2
      000163                        530 _get_num_helper_times_65536_108:
      000163                        531 	.ds 2
      000165                        532 _get_num_helper_num_65536_109:
      000165                        533 	.ds 2
      000167                        534 _putchar_c_65536_112:
      000167                        535 	.ds 2
      000169                        536 _dataout_data_65536_115:
      000169                        537 	.ds 1
                                    538 ;--------------------------------------------------------
                                    539 ; absolute external ram data
                                    540 ;--------------------------------------------------------
                                    541 	.area XABS    (ABS,XDATA)
                                    542 ;--------------------------------------------------------
                                    543 ; external initialized ram data
                                    544 ;--------------------------------------------------------
                                    545 	.area XISEG   (XDATA)
                                    546 	.area HOME    (CODE)
                                    547 	.area GSINIT0 (CODE)
                                    548 	.area GSINIT1 (CODE)
                                    549 	.area GSINIT2 (CODE)
                                    550 	.area GSINIT3 (CODE)
                                    551 	.area GSINIT4 (CODE)
                                    552 	.area GSINIT5 (CODE)
                                    553 	.area GSINIT  (CODE)
                                    554 	.area GSFINAL (CODE)
                                    555 	.area CSEG    (CODE)
                                    556 ;--------------------------------------------------------
                                    557 ; interrupt vector 
                                    558 ;--------------------------------------------------------
                                    559 	.area HOME    (CODE)
      000000                        560 __interrupt_vect:
      000000 02 00 06         [24]  561 	ljmp	__sdcc_gsinit_startup
                                    562 ;--------------------------------------------------------
                                    563 ; global & static initialisations
                                    564 ;--------------------------------------------------------
                                    565 	.area HOME    (CODE)
                                    566 	.area GSINIT  (CODE)
                                    567 	.area GSFINAL (CODE)
                                    568 	.area GSINIT  (CODE)
                                    569 	.globl __sdcc_gsinit_startup
                                    570 	.globl __sdcc_program_startup
                                    571 	.globl __start__stack
                                    572 	.globl __mcs51_genXINIT
                                    573 	.globl __mcs51_genXRAMCLEAR
                                    574 	.globl __mcs51_genRAMCLEAR
                                    575 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  576 	ljmp	__sdcc_program_startup
                                    577 ;--------------------------------------------------------
                                    578 ; Home
                                    579 ;--------------------------------------------------------
                                    580 	.area HOME    (CODE)
                                    581 	.area HOME    (CODE)
      000003                        582 __sdcc_program_startup:
      000003 02 00 62         [24]  583 	ljmp	_main
                                    584 ;	return from main will return to caller
                                    585 ;--------------------------------------------------------
                                    586 ; code
                                    587 ;--------------------------------------------------------
                                    588 	.area CSEG    (CODE)
                                    589 ;------------------------------------------------------------
                                    590 ;Allocation info for local variables in function 'main'
                                    591 ;------------------------------------------------------------
                                    592 ;	program.c:68: void main(void)
                                    593 ;	-----------------------------------------
                                    594 ;	 function main
                                    595 ;	-----------------------------------------
      000062                        596 _main:
                           000007   597 	ar7 = 0x07
                           000006   598 	ar6 = 0x06
                           000005   599 	ar5 = 0x05
                           000004   600 	ar4 = 0x04
                           000003   601 	ar3 = 0x03
                           000002   602 	ar2 = 0x02
                           000001   603 	ar1 = 0x01
                           000000   604 	ar0 = 0x00
                                    605 ;	program.c:70: printf("HELLO! \n\r");
      000062 74 B8            [12]  606 	mov	a,#___str_0
      000064 C0 E0            [24]  607 	push	acc
      000066 74 1C            [12]  608 	mov	a,#(___str_0 >> 8)
      000068 C0 E0            [24]  609 	push	acc
      00006A 74 80            [12]  610 	mov	a,#0x80
      00006C C0 E0            [24]  611 	push	acc
      00006E 12 12 7D         [24]  612 	lcall	_printf
      000071 15 81            [12]  613 	dec	sp
      000073 15 81            [12]  614 	dec	sp
      000075 15 81            [12]  615 	dec	sp
                                    616 ;	program.c:71: DEBUGPORT(0x01);
      000077 75 82 01         [24]  617 	mov	dpl,#0x01
      00007A 12 0E 5E         [24]  618 	lcall	_dataout
                                    619 ;	program.c:72: user_interface();
                                    620 ;	program.c:73: }
      00007D 02 00 80         [24]  621 	ljmp	_user_interface
                                    622 ;------------------------------------------------------------
                                    623 ;Allocation info for local variables in function 'user_interface'
                                    624 ;------------------------------------------------------------
                                    625 ;	program.c:80: void user_interface()
                                    626 ;	-----------------------------------------
                                    627 ;	 function user_interface
                                    628 ;	-----------------------------------------
      000080                        629 _user_interface:
                                    630 ;	program.c:82: DEBUGPORT(0x02);
      000080 75 82 02         [24]  631 	mov	dpl,#0x02
      000083 12 0E 5E         [24]  632 	lcall	_dataout
                                    633 ;	program.c:83: create_initial_buffers();
      000086 12 05 19         [24]  634 	lcall	_create_initial_buffers
                                    635 ;	program.c:84: print_all_buffers();
      000089 12 0B 3E         [24]  636 	lcall	_print_all_buffers
                                    637 ;	program.c:85: enter_chars();
                                    638 ;	program.c:86: }
      00008C 02 06 F6         [24]  639 	ljmp	_enter_chars
                                    640 ;------------------------------------------------------------
                                    641 ;Allocation info for local variables in function 'at_clear_all_buffers'
                                    642 ;------------------------------------------------------------
                                    643 ;i                         Allocated with name '_at_clear_all_buffers_i_131072_50'
                                    644 ;------------------------------------------------------------
                                    645 ;	program.c:94: void at_clear_all_buffers()
                                    646 ;	-----------------------------------------
                                    647 ;	 function at_clear_all_buffers
                                    648 ;	-----------------------------------------
      00008F                        649 _at_clear_all_buffers:
                                    650 ;	program.c:96: DEBUGPORT(0x03);
      00008F 75 82 03         [24]  651 	mov	dpl,#0x03
      000092 12 0E 5E         [24]  652 	lcall	_dataout
                                    653 ;	program.c:97: for (int i = 0; i < program_stats.total_buffers; i++)
      000095 7E 00            [12]  654 	mov	r6,#0x00
      000097 7F 00            [12]  655 	mov	r7,#0x00
      000099                        656 00103$:
      000099 90 00 09         [24]  657 	mov	dptr,#(_program_stats + 0x0008)
      00009C E0               [24]  658 	movx	a,@dptr
      00009D FC               [12]  659 	mov	r4,a
      00009E A3               [24]  660 	inc	dptr
      00009F E0               [24]  661 	movx	a,@dptr
      0000A0 FD               [12]  662 	mov	r5,a
      0000A1 C3               [12]  663 	clr	c
      0000A2 EE               [12]  664 	mov	a,r6
      0000A3 9C               [12]  665 	subb	a,r4
      0000A4 EF               [12]  666 	mov	a,r7
      0000A5 64 80            [12]  667 	xrl	a,#0x80
      0000A7 8D F0            [24]  668 	mov	b,r5
      0000A9 63 F0 80         [24]  669 	xrl	b,#0x80
      0000AC 95 F0            [12]  670 	subb	a,b
      0000AE 50 61            [24]  671 	jnc	00101$
                                    672 ;	program.c:99: free(buffers_array[i].buffer_start);
      0000B0 90 15 0E         [24]  673 	mov	dptr,#__mulint_PARM_2
      0000B3 EE               [12]  674 	mov	a,r6
      0000B4 F0               [24]  675 	movx	@dptr,a
      0000B5 EF               [12]  676 	mov	a,r7
      0000B6 A3               [24]  677 	inc	dptr
      0000B7 F0               [24]  678 	movx	@dptr,a
      0000B8 90 00 0C         [24]  679 	mov	dptr,#0x000c
      0000BB C0 07            [24]  680 	push	ar7
      0000BD C0 06            [24]  681 	push	ar6
      0000BF 12 12 0F         [24]  682 	lcall	__mulint
      0000C2 AC 82            [24]  683 	mov	r4,dpl
      0000C4 AD 83            [24]  684 	mov	r5,dph
      0000C6 EC               [12]  685 	mov	a,r4
      0000C7 24 0B            [12]  686 	add	a,#_buffers_array
      0000C9 FC               [12]  687 	mov	r4,a
      0000CA ED               [12]  688 	mov	a,r5
      0000CB 34 00            [12]  689 	addc	a,#(_buffers_array >> 8)
      0000CD FD               [12]  690 	mov	r5,a
      0000CE 8C 82            [24]  691 	mov	dpl,r4
      0000D0 8D 83            [24]  692 	mov	dph,r5
      0000D2 A3               [24]  693 	inc	dptr
      0000D3 A3               [24]  694 	inc	dptr
      0000D4 E0               [24]  695 	movx	a,@dptr
      0000D5 FB               [12]  696 	mov	r3,a
      0000D6 A3               [24]  697 	inc	dptr
      0000D7 E0               [24]  698 	movx	a,@dptr
      0000D8 FC               [12]  699 	mov	r4,a
      0000D9 A3               [24]  700 	inc	dptr
      0000DA E0               [24]  701 	movx	a,@dptr
      0000DB FD               [12]  702 	mov	r5,a
      0000DC 8B 82            [24]  703 	mov	dpl,r3
      0000DE 8C 83            [24]  704 	mov	dph,r4
      0000E0 8D F0            [24]  705 	mov	b,r5
      0000E2 12 0E 84         [24]  706 	lcall	_free
      0000E5 D0 06            [24]  707 	pop	ar6
      0000E7 D0 07            [24]  708 	pop	ar7
                                    709 ;	program.c:100: printf("Buffer %d Freed ....\n\r", i);
      0000E9 C0 07            [24]  710 	push	ar7
      0000EB C0 06            [24]  711 	push	ar6
      0000ED C0 06            [24]  712 	push	ar6
      0000EF C0 07            [24]  713 	push	ar7
      0000F1 74 C2            [12]  714 	mov	a,#___str_1
      0000F3 C0 E0            [24]  715 	push	acc
      0000F5 74 1C            [12]  716 	mov	a,#(___str_1 >> 8)
      0000F7 C0 E0            [24]  717 	push	acc
      0000F9 74 80            [12]  718 	mov	a,#0x80
      0000FB C0 E0            [24]  719 	push	acc
      0000FD 12 12 7D         [24]  720 	lcall	_printf
      000100 E5 81            [12]  721 	mov	a,sp
      000102 24 FB            [12]  722 	add	a,#0xfb
      000104 F5 81            [12]  723 	mov	sp,a
      000106 D0 06            [24]  724 	pop	ar6
      000108 D0 07            [24]  725 	pop	ar7
                                    726 ;	program.c:97: for (int i = 0; i < program_stats.total_buffers; i++)
      00010A 0E               [12]  727 	inc	r6
      00010B BE 00 8B         [24]  728 	cjne	r6,#0x00,00103$
      00010E 0F               [12]  729 	inc	r7
      00010F 80 88            [24]  730 	sjmp	00103$
      000111                        731 00101$:
                                    732 ;	program.c:102: printf("Let's begin again..\n\r");
      000111 74 D9            [12]  733 	mov	a,#___str_2
      000113 C0 E0            [24]  734 	push	acc
      000115 74 1C            [12]  735 	mov	a,#(___str_2 >> 8)
      000117 C0 E0            [24]  736 	push	acc
      000119 74 80            [12]  737 	mov	a,#0x80
      00011B C0 E0            [24]  738 	push	acc
      00011D 12 12 7D         [24]  739 	lcall	_printf
      000120 15 81            [12]  740 	dec	sp
      000122 15 81            [12]  741 	dec	sp
      000124 15 81            [12]  742 	dec	sp
                                    743 ;	program.c:103: user_interface();
                                    744 ;	program.c:104: }
      000126 02 00 80         [24]  745 	ljmp	_user_interface
                                    746 ;------------------------------------------------------------
                                    747 ;Allocation info for local variables in function 'delete_buffer'
                                    748 ;------------------------------------------------------------
                                    749 ;sloc0                     Allocated with name '_delete_buffer_sloc0_1_0'
                                    750 ;sloc1                     Allocated with name '_delete_buffer_sloc1_1_0'
                                    751 ;sloc2                     Allocated with name '_delete_buffer_sloc2_1_0'
                                    752 ;buff_number               Allocated with name '_delete_buffer_buff_number_65537_53'
                                    753 ;buff_to_free              Allocated with name '_delete_buffer_buff_to_free_65537_53'
                                    754 ;buffer_freed_size         Allocated with name '_delete_buffer_buffer_freed_size_65537_53'
                                    755 ;i                         Allocated with name '_delete_buffer_i_196609_55'
                                    756 ;------------------------------------------------------------
                                    757 ;	program.c:111: int delete_buffer()
                                    758 ;	-----------------------------------------
                                    759 ;	 function delete_buffer
                                    760 ;	-----------------------------------------
      000129                        761 _delete_buffer:
                                    762 ;	program.c:113: DEBUGPORT(0x04);
      000129 75 82 04         [24]  763 	mov	dpl,#0x04
      00012C 12 0E 5E         [24]  764 	lcall	_dataout
                                    765 ;	program.c:117: get_del_num:
      00012F                        766 00101$:
                                    767 ;	program.c:118: printf("\n\rGive Valid Buffer Number to delete(1-%d) in 3 digits\n\r", (program_stats.total_buffers - 1));
      00012F 90 00 09         [24]  768 	mov	dptr,#(_program_stats + 0x0008)
      000132 E0               [24]  769 	movx	a,@dptr
      000133 FE               [12]  770 	mov	r6,a
      000134 A3               [24]  771 	inc	dptr
      000135 E0               [24]  772 	movx	a,@dptr
      000136 FF               [12]  773 	mov	r7,a
      000137 1E               [12]  774 	dec	r6
      000138 BE FF 01         [24]  775 	cjne	r6,#0xff,00139$
      00013B 1F               [12]  776 	dec	r7
      00013C                        777 00139$:
      00013C C0 06            [24]  778 	push	ar6
      00013E C0 07            [24]  779 	push	ar7
      000140 74 EF            [12]  780 	mov	a,#___str_3
      000142 C0 E0            [24]  781 	push	acc
      000144 74 1C            [12]  782 	mov	a,#(___str_3 >> 8)
      000146 C0 E0            [24]  783 	push	acc
      000148 74 80            [12]  784 	mov	a,#0x80
      00014A C0 E0            [24]  785 	push	acc
      00014C 12 12 7D         [24]  786 	lcall	_printf
      00014F E5 81            [12]  787 	mov	a,sp
      000151 24 FB            [12]  788 	add	a,#0xfb
      000153 F5 81            [12]  789 	mov	sp,a
                                    790 ;	program.c:119: buff_number = get_number(3);
      000155 90 00 03         [24]  791 	mov	dptr,#0x0003
      000158 12 0C AE         [24]  792 	lcall	_get_number
      00015B AE 82            [24]  793 	mov	r6,dpl
      00015D AF 83            [24]  794 	mov	r7,dph
                                    795 ;	program.c:121: if (buff_number > 0 && buff_number < program_stats.total_buffers)
      00015F C3               [12]  796 	clr	c
      000160 E4               [12]  797 	clr	a
      000161 9E               [12]  798 	subb	a,r6
      000162 74 80            [12]  799 	mov	a,#(0x00 ^ 0x80)
      000164 8F F0            [24]  800 	mov	b,r7
      000166 63 F0 80         [24]  801 	xrl	b,#0x80
      000169 95 F0            [12]  802 	subb	a,b
      00016B 50 C2            [24]  803 	jnc	00101$
      00016D 90 00 09         [24]  804 	mov	dptr,#(_program_stats + 0x0008)
      000170 E0               [24]  805 	movx	a,@dptr
      000171 FC               [12]  806 	mov	r4,a
      000172 A3               [24]  807 	inc	dptr
      000173 E0               [24]  808 	movx	a,@dptr
      000174 FD               [12]  809 	mov	r5,a
      000175 C3               [12]  810 	clr	c
      000176 EE               [12]  811 	mov	a,r6
      000177 9C               [12]  812 	subb	a,r4
      000178 EF               [12]  813 	mov	a,r7
      000179 64 80            [12]  814 	xrl	a,#0x80
      00017B 8D F0            [24]  815 	mov	b,r5
      00017D 63 F0 80         [24]  816 	xrl	b,#0x80
      000180 95 F0            [12]  817 	subb	a,b
      000182 50 AB            [24]  818 	jnc	00101$
                                    819 ;	program.c:125: buff_to_free = buffers_array[buff_number].buffer_start;
      000184 90 15 0E         [24]  820 	mov	dptr,#__mulint_PARM_2
      000187 EE               [12]  821 	mov	a,r6
      000188 F0               [24]  822 	movx	@dptr,a
      000189 EF               [12]  823 	mov	a,r7
      00018A A3               [24]  824 	inc	dptr
      00018B F0               [24]  825 	movx	@dptr,a
      00018C 90 00 0C         [24]  826 	mov	dptr,#0x000c
      00018F C0 07            [24]  827 	push	ar7
      000191 C0 06            [24]  828 	push	ar6
      000193 12 12 0F         [24]  829 	lcall	__mulint
      000196 AC 82            [24]  830 	mov	r4,dpl
      000198 AD 83            [24]  831 	mov	r5,dph
      00019A D0 06            [24]  832 	pop	ar6
      00019C D0 07            [24]  833 	pop	ar7
      00019E EC               [12]  834 	mov	a,r4
      00019F 24 0B            [12]  835 	add	a,#_buffers_array
      0001A1 FC               [12]  836 	mov	r4,a
      0001A2 ED               [12]  837 	mov	a,r5
      0001A3 34 00            [12]  838 	addc	a,#(_buffers_array >> 8)
      0001A5 FD               [12]  839 	mov	r5,a
      0001A6 8C 82            [24]  840 	mov	dpl,r4
      0001A8 8D 83            [24]  841 	mov	dph,r5
      0001AA A3               [24]  842 	inc	dptr
      0001AB A3               [24]  843 	inc	dptr
      0001AC E0               [24]  844 	movx	a,@dptr
      0001AD F5 0C            [12]  845 	mov	_delete_buffer_sloc2_1_0,a
      0001AF A3               [24]  846 	inc	dptr
      0001B0 E0               [24]  847 	movx	a,@dptr
      0001B1 F5 0D            [12]  848 	mov	(_delete_buffer_sloc2_1_0 + 1),a
      0001B3 A3               [24]  849 	inc	dptr
      0001B4 E0               [24]  850 	movx	a,@dptr
      0001B5 F5 0E            [12]  851 	mov	(_delete_buffer_sloc2_1_0 + 2),a
                                    852 ;	program.c:126: buffer_freed_size = buffers_array[buff_number].buff_size;
      0001B7 74 08            [12]  853 	mov	a,#0x08
      0001B9 2C               [12]  854 	add	a,r4
      0001BA F5 82            [12]  855 	mov	dpl,a
      0001BC E4               [12]  856 	clr	a
      0001BD 3D               [12]  857 	addc	a,r5
      0001BE F5 83            [12]  858 	mov	dph,a
      0001C0 E0               [24]  859 	movx	a,@dptr
      0001C1 FC               [12]  860 	mov	r4,a
      0001C2 A3               [24]  861 	inc	dptr
      0001C3 E0               [24]  862 	movx	a,@dptr
      0001C4 FD               [12]  863 	mov	r5,a
                                    864 ;	program.c:128: for (int i = 0; i < (program_stats.total_buffers - 1); i++)
      0001C5 E4               [12]  865 	clr	a
      0001C6 F5 08            [12]  866 	mov	_delete_buffer_sloc0_1_0,a
      0001C8 F5 09            [12]  867 	mov	(_delete_buffer_sloc0_1_0 + 1),a
      0001CA                        868 00110$:
      0001CA C0 04            [24]  869 	push	ar4
      0001CC C0 05            [24]  870 	push	ar5
      0001CE 90 00 09         [24]  871 	mov	dptr,#(_program_stats + 0x0008)
      0001D1 E0               [24]  872 	movx	a,@dptr
      0001D2 F5 0A            [12]  873 	mov	_delete_buffer_sloc1_1_0,a
      0001D4 A3               [24]  874 	inc	dptr
      0001D5 E0               [24]  875 	movx	a,@dptr
      0001D6 F5 0B            [12]  876 	mov	(_delete_buffer_sloc1_1_0 + 1),a
      0001D8 E5 0A            [12]  877 	mov	a,_delete_buffer_sloc1_1_0
      0001DA 24 FF            [12]  878 	add	a,#0xff
      0001DC F8               [12]  879 	mov	r0,a
      0001DD E5 0B            [12]  880 	mov	a,(_delete_buffer_sloc1_1_0 + 1)
      0001DF 34 FF            [12]  881 	addc	a,#0xff
      0001E1 FD               [12]  882 	mov	r5,a
      0001E2 C3               [12]  883 	clr	c
      0001E3 E5 08            [12]  884 	mov	a,_delete_buffer_sloc0_1_0
      0001E5 98               [12]  885 	subb	a,r0
      0001E6 E5 09            [12]  886 	mov	a,(_delete_buffer_sloc0_1_0 + 1)
      0001E8 64 80            [12]  887 	xrl	a,#0x80
      0001EA 8D F0            [24]  888 	mov	b,r5
      0001EC 63 F0 80         [24]  889 	xrl	b,#0x80
      0001EF 95 F0            [12]  890 	subb	a,b
      0001F1 D0 05            [24]  891 	pop	ar5
      0001F3 D0 04            [24]  892 	pop	ar4
      0001F5 40 03            [24]  893 	jc	00142$
      0001F7 02 02 A8         [24]  894 	ljmp	00104$
      0001FA                        895 00142$:
                                    896 ;	program.c:130: if (i >= buff_number)
      0001FA C3               [12]  897 	clr	c
      0001FB E5 08            [12]  898 	mov	a,_delete_buffer_sloc0_1_0
      0001FD 9E               [12]  899 	subb	a,r6
      0001FE E5 09            [12]  900 	mov	a,(_delete_buffer_sloc0_1_0 + 1)
      000200 64 80            [12]  901 	xrl	a,#0x80
      000202 8F F0            [24]  902 	mov	b,r7
      000204 63 F0 80         [24]  903 	xrl	b,#0x80
      000207 95 F0            [12]  904 	subb	a,b
      000209 50 03            [24]  905 	jnc	00143$
      00020B 02 02 9D         [24]  906 	ljmp	00111$
      00020E                        907 00143$:
                                    908 ;	program.c:132: buffers_array[i + 1].buffer_num = i;
      00020E C0 04            [24]  909 	push	ar4
      000210 C0 05            [24]  910 	push	ar5
      000212 90 15 0E         [24]  911 	mov	dptr,#__mulint_PARM_2
      000215 74 01            [12]  912 	mov	a,#0x01
      000217 25 08            [12]  913 	add	a,_delete_buffer_sloc0_1_0
      000219 F0               [24]  914 	movx	@dptr,a
      00021A E4               [12]  915 	clr	a
      00021B 35 09            [12]  916 	addc	a,(_delete_buffer_sloc0_1_0 + 1)
      00021D A3               [24]  917 	inc	dptr
      00021E F0               [24]  918 	movx	@dptr,a
      00021F 90 00 0C         [24]  919 	mov	dptr,#0x000c
      000222 C0 07            [24]  920 	push	ar7
      000224 C0 06            [24]  921 	push	ar6
      000226 C0 04            [24]  922 	push	ar4
      000228 12 12 0F         [24]  923 	lcall	__mulint
      00022B A8 82            [24]  924 	mov	r0,dpl
      00022D AD 83            [24]  925 	mov	r5,dph
      00022F D0 04            [24]  926 	pop	ar4
      000231 E8               [12]  927 	mov	a,r0
      000232 24 0B            [12]  928 	add	a,#_buffers_array
      000234 F5 82            [12]  929 	mov	dpl,a
      000236 ED               [12]  930 	mov	a,r5
      000237 34 00            [12]  931 	addc	a,#(_buffers_array >> 8)
      000239 F5 83            [12]  932 	mov	dph,a
      00023B E5 08            [12]  933 	mov	a,_delete_buffer_sloc0_1_0
      00023D F0               [24]  934 	movx	@dptr,a
      00023E E5 09            [12]  935 	mov	a,(_delete_buffer_sloc0_1_0 + 1)
      000240 A3               [24]  936 	inc	dptr
      000241 F0               [24]  937 	movx	@dptr,a
                                    938 ;	program.c:133: buffers_array[i] = buffers_array[i + 1];
      000242 90 15 0E         [24]  939 	mov	dptr,#__mulint_PARM_2
      000245 E5 08            [12]  940 	mov	a,_delete_buffer_sloc0_1_0
      000247 F0               [24]  941 	movx	@dptr,a
      000248 E5 09            [12]  942 	mov	a,(_delete_buffer_sloc0_1_0 + 1)
      00024A A3               [24]  943 	inc	dptr
      00024B F0               [24]  944 	movx	@dptr,a
      00024C 90 00 0C         [24]  945 	mov	dptr,#0x000c
      00024F C0 05            [24]  946 	push	ar5
      000251 C0 00            [24]  947 	push	ar0
      000253 12 12 0F         [24]  948 	lcall	__mulint
      000256 AB 82            [24]  949 	mov	r3,dpl
      000258 AC 83            [24]  950 	mov	r4,dph
      00025A D0 00            [24]  951 	pop	ar0
      00025C D0 05            [24]  952 	pop	ar5
      00025E EB               [12]  953 	mov	a,r3
      00025F 24 0B            [12]  954 	add	a,#_buffers_array
      000261 FB               [12]  955 	mov	r3,a
      000262 EC               [12]  956 	mov	a,r4
      000263 34 00            [12]  957 	addc	a,#(_buffers_array >> 8)
      000265 FC               [12]  958 	mov	r4,a
      000266 7A 00            [12]  959 	mov	r2,#0x00
      000268 E8               [12]  960 	mov	a,r0
      000269 24 0B            [12]  961 	add	a,#_buffers_array
      00026B F8               [12]  962 	mov	r0,a
      00026C ED               [12]  963 	mov	a,r5
      00026D 34 00            [12]  964 	addc	a,#(_buffers_array >> 8)
      00026F FD               [12]  965 	mov	r5,a
      000270 90 14 FD         [24]  966 	mov	dptr,#___memcpy_PARM_2
      000273 E8               [12]  967 	mov	a,r0
      000274 F0               [24]  968 	movx	@dptr,a
      000275 ED               [12]  969 	mov	a,r5
      000276 A3               [24]  970 	inc	dptr
      000277 F0               [24]  971 	movx	@dptr,a
      000278 E4               [12]  972 	clr	a
      000279 A3               [24]  973 	inc	dptr
      00027A F0               [24]  974 	movx	@dptr,a
      00027B 90 15 00         [24]  975 	mov	dptr,#___memcpy_PARM_3
      00027E 74 0C            [12]  976 	mov	a,#0x0c
      000280 F0               [24]  977 	movx	@dptr,a
      000281 E4               [12]  978 	clr	a
      000282 A3               [24]  979 	inc	dptr
      000283 F0               [24]  980 	movx	@dptr,a
      000284 8B 82            [24]  981 	mov	dpl,r3
      000286 8C 83            [24]  982 	mov	dph,r4
      000288 8A F0            [24]  983 	mov	b,r2
      00028A C0 05            [24]  984 	push	ar5
      00028C C0 04            [24]  985 	push	ar4
      00028E 12 0F DB         [24]  986 	lcall	___memcpy
      000291 D0 04            [24]  987 	pop	ar4
      000293 D0 05            [24]  988 	pop	ar5
      000295 D0 06            [24]  989 	pop	ar6
      000297 D0 07            [24]  990 	pop	ar7
                                    991 ;	program.c:146: goto get_del_num;
      000299 D0 05            [24]  992 	pop	ar5
      00029B D0 04            [24]  993 	pop	ar4
                                    994 ;	program.c:133: buffers_array[i] = buffers_array[i + 1];
      00029D                        995 00111$:
                                    996 ;	program.c:128: for (int i = 0; i < (program_stats.total_buffers - 1); i++)
      00029D 05 08            [12]  997 	inc	_delete_buffer_sloc0_1_0
      00029F E4               [12]  998 	clr	a
      0002A0 B5 08 02         [24]  999 	cjne	a,_delete_buffer_sloc0_1_0,00144$
      0002A3 05 09            [12] 1000 	inc	(_delete_buffer_sloc0_1_0 + 1)
      0002A5                       1001 00144$:
      0002A5 02 01 CA         [24] 1002 	ljmp	00110$
      0002A8                       1003 00104$:
                                   1004 ;	program.c:137: program_stats.total_buffers -= 1;
      0002A8 E5 0A            [12] 1005 	mov	a,_delete_buffer_sloc1_1_0
      0002AA 24 FF            [12] 1006 	add	a,#0xff
      0002AC FA               [12] 1007 	mov	r2,a
      0002AD E5 0B            [12] 1008 	mov	a,(_delete_buffer_sloc1_1_0 + 1)
      0002AF 34 FF            [12] 1009 	addc	a,#0xff
      0002B1 FB               [12] 1010 	mov	r3,a
      0002B2 90 00 09         [24] 1011 	mov	dptr,#(_program_stats + 0x0008)
      0002B5 EA               [12] 1012 	mov	a,r2
      0002B6 F0               [24] 1013 	movx	@dptr,a
      0002B7 EB               [12] 1014 	mov	a,r3
      0002B8 A3               [24] 1015 	inc	dptr
      0002B9 F0               [24] 1016 	movx	@dptr,a
                                   1017 ;	program.c:138: program_stats.allocated_heap -= buffer_freed_size;
      0002BA 90 00 03         [24] 1018 	mov	dptr,#(_program_stats + 0x0002)
      0002BD E0               [24] 1019 	movx	a,@dptr
      0002BE FA               [12] 1020 	mov	r2,a
      0002BF A3               [24] 1021 	inc	dptr
      0002C0 E0               [24] 1022 	movx	a,@dptr
      0002C1 FB               [12] 1023 	mov	r3,a
      0002C2 EA               [12] 1024 	mov	a,r2
      0002C3 C3               [12] 1025 	clr	c
      0002C4 9C               [12] 1026 	subb	a,r4
      0002C5 FC               [12] 1027 	mov	r4,a
      0002C6 EB               [12] 1028 	mov	a,r3
      0002C7 9D               [12] 1029 	subb	a,r5
      0002C8 FD               [12] 1030 	mov	r5,a
      0002C9 90 00 03         [24] 1031 	mov	dptr,#(_program_stats + 0x0002)
      0002CC EC               [12] 1032 	mov	a,r4
      0002CD F0               [24] 1033 	movx	@dptr,a
      0002CE ED               [12] 1034 	mov	a,r5
      0002CF A3               [24] 1035 	inc	dptr
      0002D0 F0               [24] 1036 	movx	@dptr,a
                                   1037 ;	program.c:140: free(buff_to_free);
      0002D1 AB 0C            [24] 1038 	mov	r3,_delete_buffer_sloc2_1_0
      0002D3 AC 0D            [24] 1039 	mov	r4,(_delete_buffer_sloc2_1_0 + 1)
      0002D5 AD 0E            [24] 1040 	mov	r5,(_delete_buffer_sloc2_1_0 + 2)
      0002D7 8B 82            [24] 1041 	mov	dpl,r3
      0002D9 8C 83            [24] 1042 	mov	dph,r4
      0002DB 8D F0            [24] 1043 	mov	b,r5
      0002DD C0 07            [24] 1044 	push	ar7
      0002DF C0 06            [24] 1045 	push	ar6
      0002E1 12 0E 84         [24] 1046 	lcall	_free
      0002E4 D0 06            [24] 1047 	pop	ar6
      0002E6 D0 07            [24] 1048 	pop	ar7
                                   1049 ;	program.c:141: printf("Buffer %d Successfully Deleted.. \n\r", buff_number);
      0002E8 C0 06            [24] 1050 	push	ar6
      0002EA C0 07            [24] 1051 	push	ar7
      0002EC 74 28            [12] 1052 	mov	a,#___str_4
      0002EE C0 E0            [24] 1053 	push	acc
      0002F0 74 1D            [12] 1054 	mov	a,#(___str_4 >> 8)
      0002F2 C0 E0            [24] 1055 	push	acc
      0002F4 74 80            [12] 1056 	mov	a,#0x80
      0002F6 C0 E0            [24] 1057 	push	acc
      0002F8 12 12 7D         [24] 1058 	lcall	_printf
      0002FB E5 81            [12] 1059 	mov	a,sp
      0002FD 24 FB            [12] 1060 	add	a,#0xfb
      0002FF F5 81            [12] 1061 	mov	sp,a
                                   1062 ;	program.c:142: return 0;
      000301 90 00 00         [24] 1063 	mov	dptr,#0x0000
                                   1064 ;	program.c:146: goto get_del_num;
                                   1065 ;	program.c:148: }
      000304 22               [24] 1066 	ret
                                   1067 ;------------------------------------------------------------
                                   1068 ;Allocation info for local variables in function 'print_menu'
                                   1069 ;------------------------------------------------------------
                                   1070 ;	program.c:155: void print_menu()
                                   1071 ;	-----------------------------------------
                                   1072 ;	 function print_menu
                                   1073 ;	-----------------------------------------
      000305                       1074 _print_menu:
                                   1075 ;	program.c:157: DEBUGPORT(0x05);
      000305 75 82 05         [24] 1076 	mov	dpl,#0x05
      000308 12 0E 5E         [24] 1077 	lcall	_dataout
                                   1078 ;	program.c:158: printf("\n\n\r^^^^^^^^^^^^^^^^^^^-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ \n\n\r");
      00030B 74 4C            [12] 1079 	mov	a,#___str_5
      00030D C0 E0            [24] 1080 	push	acc
      00030F 74 1D            [12] 1081 	mov	a,#(___str_5 >> 8)
      000311 C0 E0            [24] 1082 	push	acc
      000313 74 80            [12] 1083 	mov	a,#0x80
      000315 C0 E0            [24] 1084 	push	acc
      000317 12 12 7D         [24] 1085 	lcall	_printf
      00031A 15 81            [12] 1086 	dec	sp
      00031C 15 81            [12] 1087 	dec	sp
      00031E 15 81            [12] 1088 	dec	sp
                                   1089 ;	program.c:159: printf("You can enter characters or use commands from below \n\r");
      000320 74 87            [12] 1090 	mov	a,#___str_6
      000322 C0 E0            [24] 1091 	push	acc
      000324 74 1D            [12] 1092 	mov	a,#(___str_6 >> 8)
      000326 C0 E0            [24] 1093 	push	acc
      000328 74 80            [12] 1094 	mov	a,#0x80
      00032A C0 E0            [24] 1095 	push	acc
      00032C 12 12 7D         [24] 1096 	lcall	_printf
      00032F 15 81            [12] 1097 	dec	sp
      000331 15 81            [12] 1098 	dec	sp
      000333 15 81            [12] 1099 	dec	sp
                                   1100 ;	program.c:160: printf("'?' -> Show heap status, dump & clear Buffer 0 \n\r");
      000335 74 BE            [12] 1101 	mov	a,#___str_7
      000337 C0 E0            [24] 1102 	push	acc
      000339 74 1D            [12] 1103 	mov	a,#(___str_7 >> 8)
      00033B C0 E0            [24] 1104 	push	acc
      00033D 74 80            [12] 1105 	mov	a,#0x80
      00033F C0 E0            [24] 1106 	push	acc
      000341 12 12 7D         [24] 1107 	lcall	_printf
      000344 15 81            [12] 1108 	dec	sp
      000346 15 81            [12] 1109 	dec	sp
      000348 15 81            [12] 1110 	dec	sp
                                   1111 ;	program.c:161: printf("'+' -> Add a new Buffer\n\r");
      00034A 74 F0            [12] 1112 	mov	a,#___str_8
      00034C C0 E0            [24] 1113 	push	acc
      00034E 74 1D            [12] 1114 	mov	a,#(___str_8 >> 8)
      000350 C0 E0            [24] 1115 	push	acc
      000352 74 80            [12] 1116 	mov	a,#0x80
      000354 C0 E0            [24] 1117 	push	acc
      000356 12 12 7D         [24] 1118 	lcall	_printf
      000359 15 81            [12] 1119 	dec	sp
      00035B 15 81            [12] 1120 	dec	sp
      00035D 15 81            [12] 1121 	dec	sp
                                   1122 ;	program.c:162: printf("'-' -> Delete existing Buffer\n\r");
      00035F 74 0A            [12] 1123 	mov	a,#___str_9
      000361 C0 E0            [24] 1124 	push	acc
      000363 74 1E            [12] 1125 	mov	a,#(___str_9 >> 8)
      000365 C0 E0            [24] 1126 	push	acc
      000367 74 80            [12] 1127 	mov	a,#0x80
      000369 C0 E0            [24] 1128 	push	acc
      00036B 12 12 7D         [24] 1129 	lcall	_printf
      00036E 15 81            [12] 1130 	dec	sp
      000370 15 81            [12] 1131 	dec	sp
      000372 15 81            [12] 1132 	dec	sp
                                   1133 ;	program.c:163: printf("'=' -> Dump Buffer 0 in hex\n\r");
      000374 74 2A            [12] 1134 	mov	a,#___str_10
      000376 C0 E0            [24] 1135 	push	acc
      000378 74 1E            [12] 1136 	mov	a,#(___str_10 >> 8)
      00037A C0 E0            [24] 1137 	push	acc
      00037C 74 80            [12] 1138 	mov	a,#0x80
      00037E C0 E0            [24] 1139 	push	acc
      000380 12 12 7D         [24] 1140 	lcall	_printf
      000383 15 81            [12] 1141 	dec	sp
      000385 15 81            [12] 1142 	dec	sp
      000387 15 81            [12] 1143 	dec	sp
                                   1144 ;	program.c:164: printf("'@' -> Free all Heap & begin again\n\n\r");
      000389 74 48            [12] 1145 	mov	a,#___str_11
      00038B C0 E0            [24] 1146 	push	acc
      00038D 74 1E            [12] 1147 	mov	a,#(___str_11 >> 8)
      00038F C0 E0            [24] 1148 	push	acc
      000391 74 80            [12] 1149 	mov	a,#0x80
      000393 C0 E0            [24] 1150 	push	acc
      000395 12 12 7D         [24] 1151 	lcall	_printf
      000398 15 81            [12] 1152 	dec	sp
      00039A 15 81            [12] 1153 	dec	sp
      00039C 15 81            [12] 1154 	dec	sp
                                   1155 ;	program.c:165: }
      00039E 22               [24] 1156 	ret
                                   1157 ;------------------------------------------------------------
                                   1158 ;Allocation info for local variables in function 'create_new_buffer'
                                   1159 ;------------------------------------------------------------
                                   1160 ;buff_size                 Allocated with name '_create_new_buffer_buff_size_65537_61'
                                   1161 ;buff                      Allocated with name '_create_new_buffer_buff_65537_61'
                                   1162 ;------------------------------------------------------------
                                   1163 ;	program.c:173: int create_new_buffer()
                                   1164 ;	-----------------------------------------
                                   1165 ;	 function create_new_buffer
                                   1166 ;	-----------------------------------------
      00039F                       1167 _create_new_buffer:
                                   1168 ;	program.c:175: DEBUGPORT(0x06);
      00039F 75 82 06         [24] 1169 	mov	dpl,#0x06
      0003A2 12 0E 5E         [24] 1170 	lcall	_dataout
                                   1171 ;	program.c:178: if (program_stats.allocated_heap == program_stats.total_heap_size)
      0003A5 90 00 03         [24] 1172 	mov	dptr,#(_program_stats + 0x0002)
      0003A8 E0               [24] 1173 	movx	a,@dptr
      0003A9 FE               [12] 1174 	mov	r6,a
      0003AA A3               [24] 1175 	inc	dptr
      0003AB E0               [24] 1176 	movx	a,@dptr
      0003AC FF               [12] 1177 	mov	r7,a
      0003AD 90 00 01         [24] 1178 	mov	dptr,#_program_stats
      0003B0 E0               [24] 1179 	movx	a,@dptr
      0003B1 FC               [12] 1180 	mov	r4,a
      0003B2 A3               [24] 1181 	inc	dptr
      0003B3 E0               [24] 1182 	movx	a,@dptr
      0003B4 FD               [12] 1183 	mov	r5,a
      0003B5 EE               [12] 1184 	mov	a,r6
      0003B6 B5 04 07         [24] 1185 	cjne	a,ar4,00133$
      0003B9 EF               [12] 1186 	mov	a,r7
      0003BA B5 05 03         [24] 1187 	cjne	a,ar5,00133$
      0003BD 02 05 00         [24] 1188 	ljmp	00111$
      0003C0                       1189 00133$:
                                   1190 ;	program.c:181: get_new_buff:
      0003C0                       1191 00103$:
                                   1192 ;	program.c:182: printf("\n\rGive Valid Buffer Size(030-300):");
      0003C0 74 6E            [12] 1193 	mov	a,#___str_12
      0003C2 C0 E0            [24] 1194 	push	acc
      0003C4 74 1E            [12] 1195 	mov	a,#(___str_12 >> 8)
      0003C6 C0 E0            [24] 1196 	push	acc
      0003C8 74 80            [12] 1197 	mov	a,#0x80
      0003CA C0 E0            [24] 1198 	push	acc
      0003CC 12 12 7D         [24] 1199 	lcall	_printf
      0003CF 15 81            [12] 1200 	dec	sp
      0003D1 15 81            [12] 1201 	dec	sp
      0003D3 15 81            [12] 1202 	dec	sp
                                   1203 ;	program.c:183: buff_size = get_number(3);
      0003D5 90 00 03         [24] 1204 	mov	dptr,#0x0003
      0003D8 12 0C AE         [24] 1205 	lcall	_get_number
      0003DB AE 82            [24] 1206 	mov	r6,dpl
      0003DD AF 83            [24] 1207 	mov	r7,dph
                                   1208 ;	program.c:184: if (buff_size >= 30 && buff_size <= 300)
      0003DF C3               [12] 1209 	clr	c
      0003E0 EE               [12] 1210 	mov	a,r6
      0003E1 94 1E            [12] 1211 	subb	a,#0x1e
      0003E3 EF               [12] 1212 	mov	a,r7
      0003E4 64 80            [12] 1213 	xrl	a,#0x80
      0003E6 94 80            [12] 1214 	subb	a,#0x80
      0003E8 40 D6            [24] 1215 	jc	00103$
      0003EA 74 2C            [12] 1216 	mov	a,#0x2c
      0003EC 9E               [12] 1217 	subb	a,r6
      0003ED 74 81            [12] 1218 	mov	a,#(0x01 ^ 0x80)
      0003EF 8F F0            [24] 1219 	mov	b,r7
      0003F1 63 F0 80         [24] 1220 	xrl	b,#0x80
      0003F4 95 F0            [12] 1221 	subb	a,b
      0003F6 40 C8            [24] 1222 	jc	00103$
                                   1223 ;	program.c:186: buff.buffer_start = malloc(buff_size);
      0003F8 8E 82            [24] 1224 	mov	dpl,r6
      0003FA 8F 83            [24] 1225 	mov	dph,r7
      0003FC C0 07            [24] 1226 	push	ar7
      0003FE C0 06            [24] 1227 	push	ar6
      000400 12 10 A6         [24] 1228 	lcall	_malloc
      000403 AC 82            [24] 1229 	mov	r4,dpl
      000405 AD 83            [24] 1230 	mov	r5,dph
      000407 D0 06            [24] 1231 	pop	ar6
      000409 D0 07            [24] 1232 	pop	ar7
      00040B 7B 00            [12] 1233 	mov	r3,#0x00
      00040D 90 01 39         [24] 1234 	mov	dptr,#(_create_new_buffer_buff_65537_61 + 0x0002)
      000410 EC               [12] 1235 	mov	a,r4
      000411 F0               [24] 1236 	movx	@dptr,a
      000412 ED               [12] 1237 	mov	a,r5
      000413 A3               [24] 1238 	inc	dptr
      000414 F0               [24] 1239 	movx	@dptr,a
      000415 EB               [12] 1240 	mov	a,r3
      000416 A3               [24] 1241 	inc	dptr
      000417 F0               [24] 1242 	movx	@dptr,a
                                   1243 ;	program.c:187: if (buff.buffer_start == NULL)
      000418 EC               [12] 1244 	mov	a,r4
      000419 4D               [12] 1245 	orl	a,r5
      00041A 70 18            [24] 1246 	jnz	00105$
                                   1247 ;	program.c:189: printf("Failed, give smaller buffer\n\r");
      00041C 74 91            [12] 1248 	mov	a,#___str_13
      00041E C0 E0            [24] 1249 	push	acc
      000420 74 1E            [12] 1250 	mov	a,#(___str_13 >> 8)
      000422 C0 E0            [24] 1251 	push	acc
      000424 74 80            [12] 1252 	mov	a,#0x80
      000426 C0 E0            [24] 1253 	push	acc
      000428 12 12 7D         [24] 1254 	lcall	_printf
      00042B 15 81            [12] 1255 	dec	sp
      00042D 15 81            [12] 1256 	dec	sp
      00042F 15 81            [12] 1257 	dec	sp
      000431 02 04 FC         [24] 1258 	ljmp	00106$
      000434                       1259 00105$:
                                   1260 ;	program.c:193: printf("\n\n\r####SUCCESS, BUFFER Created####\n\n\r");
      000434 C0 07            [24] 1261 	push	ar7
      000436 C0 06            [24] 1262 	push	ar6
      000438 74 AF            [12] 1263 	mov	a,#___str_14
      00043A C0 E0            [24] 1264 	push	acc
      00043C 74 1E            [12] 1265 	mov	a,#(___str_14 >> 8)
      00043E C0 E0            [24] 1266 	push	acc
      000440 74 80            [12] 1267 	mov	a,#0x80
      000442 C0 E0            [24] 1268 	push	acc
      000444 12 12 7D         [24] 1269 	lcall	_printf
      000447 15 81            [12] 1270 	dec	sp
      000449 15 81            [12] 1271 	dec	sp
      00044B 15 81            [12] 1272 	dec	sp
      00044D D0 06            [24] 1273 	pop	ar6
      00044F D0 07            [24] 1274 	pop	ar7
                                   1275 ;	program.c:195: program_stats.allocated_heap += buff_size;
      000451 90 00 03         [24] 1276 	mov	dptr,#(_program_stats + 0x0002)
      000454 E0               [24] 1277 	movx	a,@dptr
      000455 FC               [12] 1278 	mov	r4,a
      000456 A3               [24] 1279 	inc	dptr
      000457 E0               [24] 1280 	movx	a,@dptr
      000458 FD               [12] 1281 	mov	r5,a
      000459 EE               [12] 1282 	mov	a,r6
      00045A 2C               [12] 1283 	add	a,r4
      00045B FC               [12] 1284 	mov	r4,a
      00045C EF               [12] 1285 	mov	a,r7
      00045D 3D               [12] 1286 	addc	a,r5
      00045E FD               [12] 1287 	mov	r5,a
      00045F 90 00 03         [24] 1288 	mov	dptr,#(_program_stats + 0x0002)
      000462 EC               [12] 1289 	mov	a,r4
      000463 F0               [24] 1290 	movx	@dptr,a
      000464 ED               [12] 1291 	mov	a,r5
      000465 A3               [24] 1292 	inc	dptr
      000466 F0               [24] 1293 	movx	@dptr,a
                                   1294 ;	program.c:196: buff.buff_size = buff_size;
      000467 90 01 3F         [24] 1295 	mov	dptr,#(_create_new_buffer_buff_65537_61 + 0x0008)
      00046A EE               [12] 1296 	mov	a,r6
      00046B F0               [24] 1297 	movx	@dptr,a
      00046C EF               [12] 1298 	mov	a,r7
      00046D A3               [24] 1299 	inc	dptr
      00046E F0               [24] 1300 	movx	@dptr,a
                                   1301 ;	program.c:197: buff.buffer_num = program_stats.total_buffers;
      00046F 90 00 09         [24] 1302 	mov	dptr,#(_program_stats + 0x0008)
      000472 E0               [24] 1303 	movx	a,@dptr
      000473 FC               [12] 1304 	mov	r4,a
      000474 A3               [24] 1305 	inc	dptr
      000475 E0               [24] 1306 	movx	a,@dptr
      000476 FD               [12] 1307 	mov	r5,a
      000477 90 01 37         [24] 1308 	mov	dptr,#_create_new_buffer_buff_65537_61
      00047A EC               [12] 1309 	mov	a,r4
      00047B F0               [24] 1310 	movx	@dptr,a
      00047C ED               [12] 1311 	mov	a,r5
      00047D A3               [24] 1312 	inc	dptr
      00047E F0               [24] 1313 	movx	@dptr,a
                                   1314 ;	program.c:198: buff.buffer_end = buff.buffer_start + buff_size;
      00047F 90 01 39         [24] 1315 	mov	dptr,#(_create_new_buffer_buff_65537_61 + 0x0002)
      000482 E0               [24] 1316 	movx	a,@dptr
      000483 FB               [12] 1317 	mov	r3,a
      000484 A3               [24] 1318 	inc	dptr
      000485 E0               [24] 1319 	movx	a,@dptr
      000486 FC               [12] 1320 	mov	r4,a
      000487 A3               [24] 1321 	inc	dptr
      000488 E0               [24] 1322 	movx	a,@dptr
      000489 FD               [12] 1323 	mov	r5,a
      00048A EE               [12] 1324 	mov	a,r6
      00048B 2B               [12] 1325 	add	a,r3
      00048C FE               [12] 1326 	mov	r6,a
      00048D EF               [12] 1327 	mov	a,r7
      00048E 3C               [12] 1328 	addc	a,r4
      00048F FF               [12] 1329 	mov	r7,a
      000490 8D 02            [24] 1330 	mov	ar2,r5
      000492 90 01 3C         [24] 1331 	mov	dptr,#(_create_new_buffer_buff_65537_61 + 0x0005)
      000495 EE               [12] 1332 	mov	a,r6
      000496 F0               [24] 1333 	movx	@dptr,a
      000497 EF               [12] 1334 	mov	a,r7
      000498 A3               [24] 1335 	inc	dptr
      000499 F0               [24] 1336 	movx	@dptr,a
      00049A EA               [12] 1337 	mov	a,r2
      00049B A3               [24] 1338 	inc	dptr
      00049C F0               [24] 1339 	movx	@dptr,a
                                   1340 ;	program.c:199: buff.num_char = 0;
      00049D 90 01 41         [24] 1341 	mov	dptr,#(_create_new_buffer_buff_65537_61 + 0x000a)
      0004A0 E4               [12] 1342 	clr	a
      0004A1 F0               [24] 1343 	movx	@dptr,a
      0004A2 A3               [24] 1344 	inc	dptr
      0004A3 F0               [24] 1345 	movx	@dptr,a
                                   1346 ;	program.c:201: buffers_array[program_stats.total_buffers] = buff;
      0004A4 90 00 09         [24] 1347 	mov	dptr,#(_program_stats + 0x0008)
      0004A7 E0               [24] 1348 	movx	a,@dptr
      0004A8 FE               [12] 1349 	mov	r6,a
      0004A9 A3               [24] 1350 	inc	dptr
      0004AA E0               [24] 1351 	movx	a,@dptr
      0004AB FF               [12] 1352 	mov	r7,a
      0004AC 90 15 0E         [24] 1353 	mov	dptr,#__mulint_PARM_2
      0004AF EE               [12] 1354 	mov	a,r6
      0004B0 F0               [24] 1355 	movx	@dptr,a
      0004B1 EF               [12] 1356 	mov	a,r7
      0004B2 A3               [24] 1357 	inc	dptr
      0004B3 F0               [24] 1358 	movx	@dptr,a
      0004B4 90 00 0C         [24] 1359 	mov	dptr,#0x000c
      0004B7 12 12 0F         [24] 1360 	lcall	__mulint
      0004BA AE 82            [24] 1361 	mov	r6,dpl
      0004BC AF 83            [24] 1362 	mov	r7,dph
      0004BE EE               [12] 1363 	mov	a,r6
      0004BF 24 0B            [12] 1364 	add	a,#_buffers_array
      0004C1 FE               [12] 1365 	mov	r6,a
      0004C2 EF               [12] 1366 	mov	a,r7
      0004C3 34 00            [12] 1367 	addc	a,#(_buffers_array >> 8)
      0004C5 FF               [12] 1368 	mov	r7,a
      0004C6 7D 00            [12] 1369 	mov	r5,#0x00
      0004C8 90 14 FD         [24] 1370 	mov	dptr,#___memcpy_PARM_2
      0004CB 74 37            [12] 1371 	mov	a,#_create_new_buffer_buff_65537_61
      0004CD F0               [24] 1372 	movx	@dptr,a
      0004CE 74 01            [12] 1373 	mov	a,#(_create_new_buffer_buff_65537_61 >> 8)
      0004D0 A3               [24] 1374 	inc	dptr
      0004D1 F0               [24] 1375 	movx	@dptr,a
      0004D2 E4               [12] 1376 	clr	a
      0004D3 A3               [24] 1377 	inc	dptr
      0004D4 F0               [24] 1378 	movx	@dptr,a
      0004D5 90 15 00         [24] 1379 	mov	dptr,#___memcpy_PARM_3
      0004D8 74 0C            [12] 1380 	mov	a,#0x0c
      0004DA F0               [24] 1381 	movx	@dptr,a
      0004DB E4               [12] 1382 	clr	a
      0004DC A3               [24] 1383 	inc	dptr
      0004DD F0               [24] 1384 	movx	@dptr,a
      0004DE 8E 82            [24] 1385 	mov	dpl,r6
      0004E0 8F 83            [24] 1386 	mov	dph,r7
      0004E2 8D F0            [24] 1387 	mov	b,r5
      0004E4 12 0F DB         [24] 1388 	lcall	___memcpy
                                   1389 ;	program.c:202: program_stats.total_buffers += 1;
      0004E7 90 00 09         [24] 1390 	mov	dptr,#(_program_stats + 0x0008)
      0004EA E0               [24] 1391 	movx	a,@dptr
      0004EB FE               [12] 1392 	mov	r6,a
      0004EC A3               [24] 1393 	inc	dptr
      0004ED E0               [24] 1394 	movx	a,@dptr
      0004EE FF               [12] 1395 	mov	r7,a
      0004EF 0E               [12] 1396 	inc	r6
      0004F0 BE 00 01         [24] 1397 	cjne	r6,#0x00,00137$
      0004F3 0F               [12] 1398 	inc	r7
      0004F4                       1399 00137$:
      0004F4 90 00 09         [24] 1400 	mov	dptr,#(_program_stats + 0x0008)
      0004F7 EE               [12] 1401 	mov	a,r6
      0004F8 F0               [24] 1402 	movx	@dptr,a
      0004F9 EF               [12] 1403 	mov	a,r7
      0004FA A3               [24] 1404 	inc	dptr
      0004FB F0               [24] 1405 	movx	@dptr,a
      0004FC                       1406 00106$:
                                   1407 ;	program.c:204: return 0;
      0004FC 90 00 00         [24] 1408 	mov	dptr,#0x0000
                                   1409 ;	program.c:210: no_heap_left:
      0004FF 22               [24] 1410 	ret
      000500                       1411 00111$:
                                   1412 ;	program.c:211: printf("No Heap Memory Left, Delete some buffers...\n\r");
      000500 74 D5            [12] 1413 	mov	a,#___str_15
      000502 C0 E0            [24] 1414 	push	acc
      000504 74 1E            [12] 1415 	mov	a,#(___str_15 >> 8)
      000506 C0 E0            [24] 1416 	push	acc
      000508 74 80            [12] 1417 	mov	a,#0x80
      00050A C0 E0            [24] 1418 	push	acc
      00050C 12 12 7D         [24] 1419 	lcall	_printf
      00050F 15 81            [12] 1420 	dec	sp
      000511 15 81            [12] 1421 	dec	sp
      000513 15 81            [12] 1422 	dec	sp
                                   1423 ;	program.c:212: return 0;
      000515 90 00 00         [24] 1424 	mov	dptr,#0x0000
                                   1425 ;	program.c:213: }
      000518 22               [24] 1426 	ret
                                   1427 ;------------------------------------------------------------
                                   1428 ;Allocation info for local variables in function 'create_initial_buffers'
                                   1429 ;------------------------------------------------------------
                                   1430 ;buff_size                 Allocated with name '_create_initial_buffers_buff_size_65537_67'
                                   1431 ;buff                      Allocated with name '_create_initial_buffers_buff_65538_68'
                                   1432 ;buff1                     Allocated with name '_create_initial_buffers_buff1_65538_68'
                                   1433 ;------------------------------------------------------------
                                   1434 ;	program.c:221: void create_initial_buffers()
                                   1435 ;	-----------------------------------------
                                   1436 ;	 function create_initial_buffers
                                   1437 ;	-----------------------------------------
      000519                       1438 _create_initial_buffers:
                                   1439 ;	program.c:223: DEBUGPORT(0x07);
      000519 75 82 07         [24] 1440 	mov	dpl,#0x07
      00051C 12 0E 5E         [24] 1441 	lcall	_dataout
                                   1442 ;	program.c:226: get_buff:
      00051F                       1443 00101$:
                                   1444 ;	program.c:227: printf("\n\rGive Valid Initial Buffer Size(0048-4800):");
      00051F 74 03            [12] 1445 	mov	a,#___str_16
      000521 C0 E0            [24] 1446 	push	acc
      000523 74 1F            [12] 1447 	mov	a,#(___str_16 >> 8)
      000525 C0 E0            [24] 1448 	push	acc
      000527 74 80            [12] 1449 	mov	a,#0x80
      000529 C0 E0            [24] 1450 	push	acc
      00052B 12 12 7D         [24] 1451 	lcall	_printf
      00052E 15 81            [12] 1452 	dec	sp
      000530 15 81            [12] 1453 	dec	sp
      000532 15 81            [12] 1454 	dec	sp
                                   1455 ;	program.c:228: buff_size = get_number(4);
      000534 90 00 04         [24] 1456 	mov	dptr,#0x0004
      000537 12 0C AE         [24] 1457 	lcall	_get_number
      00053A AE 82            [24] 1458 	mov	r6,dpl
      00053C AF 83            [24] 1459 	mov	r7,dph
                                   1460 ;	program.c:232: if (buff_size >= 48 && buff_size <= 4800)
      00053E C3               [12] 1461 	clr	c
      00053F EE               [12] 1462 	mov	a,r6
      000540 94 30            [12] 1463 	subb	a,#0x30
      000542 EF               [12] 1464 	mov	a,r7
      000543 64 80            [12] 1465 	xrl	a,#0x80
      000545 94 80            [12] 1466 	subb	a,#0x80
      000547 40 D6            [24] 1467 	jc	00101$
      000549 74 C0            [12] 1468 	mov	a,#0xc0
      00054B 9E               [12] 1469 	subb	a,r6
      00054C 74 92            [12] 1470 	mov	a,#(0x12 ^ 0x80)
      00054E 8F F0            [24] 1471 	mov	b,r7
      000550 63 F0 80         [24] 1472 	xrl	b,#0x80
      000553 95 F0            [12] 1473 	subb	a,b
      000555 40 C8            [24] 1474 	jc	00101$
                                   1475 ;	program.c:234: buff.buffer_start = malloc(buff_size);
      000557 8E 82            [24] 1476 	mov	dpl,r6
      000559 8F 83            [24] 1477 	mov	dph,r7
      00055B C0 07            [24] 1478 	push	ar7
      00055D C0 06            [24] 1479 	push	ar6
      00055F 12 10 A6         [24] 1480 	lcall	_malloc
      000562 AC 82            [24] 1481 	mov	r4,dpl
      000564 AD 83            [24] 1482 	mov	r5,dph
      000566 D0 06            [24] 1483 	pop	ar6
      000568 D0 07            [24] 1484 	pop	ar7
      00056A 7B 00            [12] 1485 	mov	r3,#0x00
      00056C 90 01 45         [24] 1486 	mov	dptr,#(_create_initial_buffers_buff_65538_68 + 0x0002)
      00056F EC               [12] 1487 	mov	a,r4
      000570 F0               [24] 1488 	movx	@dptr,a
      000571 ED               [12] 1489 	mov	a,r5
      000572 A3               [24] 1490 	inc	dptr
      000573 F0               [24] 1491 	movx	@dptr,a
      000574 EB               [12] 1492 	mov	a,r3
      000575 A3               [24] 1493 	inc	dptr
      000576 F0               [24] 1494 	movx	@dptr,a
                                   1495 ;	program.c:235: buff1.buffer_start = malloc(buff_size);
      000577 8E 82            [24] 1496 	mov	dpl,r6
      000579 8F 83            [24] 1497 	mov	dph,r7
      00057B C0 07            [24] 1498 	push	ar7
      00057D C0 06            [24] 1499 	push	ar6
      00057F 12 10 A6         [24] 1500 	lcall	_malloc
      000582 AC 82            [24] 1501 	mov	r4,dpl
      000584 AD 83            [24] 1502 	mov	r5,dph
      000586 D0 06            [24] 1503 	pop	ar6
      000588 D0 07            [24] 1504 	pop	ar7
      00058A 7B 00            [12] 1505 	mov	r3,#0x00
      00058C 90 01 51         [24] 1506 	mov	dptr,#(_create_initial_buffers_buff1_65538_68 + 0x0002)
      00058F EC               [12] 1507 	mov	a,r4
      000590 F0               [24] 1508 	movx	@dptr,a
      000591 ED               [12] 1509 	mov	a,r5
      000592 A3               [24] 1510 	inc	dptr
      000593 F0               [24] 1511 	movx	@dptr,a
      000594 EB               [12] 1512 	mov	a,r3
      000595 A3               [24] 1513 	inc	dptr
      000596 F0               [24] 1514 	movx	@dptr,a
                                   1515 ;	program.c:237: if (buff.buffer_start == NULL || buff1.buffer_start == NULL)
      000597 90 01 45         [24] 1516 	mov	dptr,#(_create_initial_buffers_buff_65538_68 + 0x0002)
      00059A E0               [24] 1517 	movx	a,@dptr
      00059B FB               [12] 1518 	mov	r3,a
      00059C A3               [24] 1519 	inc	dptr
      00059D E0               [24] 1520 	movx	a,@dptr
      00059E FC               [12] 1521 	mov	r4,a
      00059F A3               [24] 1522 	inc	dptr
      0005A0 E0               [24] 1523 	movx	a,@dptr
      0005A1 EB               [12] 1524 	mov	a,r3
      0005A2 4C               [12] 1525 	orl	a,r4
      0005A3 60 0F            [24] 1526 	jz	00106$
      0005A5 90 01 51         [24] 1527 	mov	dptr,#(_create_initial_buffers_buff1_65538_68 + 0x0002)
      0005A8 E0               [24] 1528 	movx	a,@dptr
      0005A9 FB               [12] 1529 	mov	r3,a
      0005AA A3               [24] 1530 	inc	dptr
      0005AB E0               [24] 1531 	movx	a,@dptr
      0005AC FC               [12] 1532 	mov	r4,a
      0005AD A3               [24] 1533 	inc	dptr
      0005AE E0               [24] 1534 	movx	a,@dptr
      0005AF FD               [12] 1535 	mov	r5,a
      0005B0 EB               [12] 1536 	mov	a,r3
      0005B1 4C               [12] 1537 	orl	a,r4
      0005B2 70 60            [24] 1538 	jnz	00107$
      0005B4                       1539 00106$:
                                   1540 ;	program.c:239: printf("\n\r####FAIL, Please give a smaller buffer size####\n\n\r");
      0005B4 74 30            [12] 1541 	mov	a,#___str_17
      0005B6 C0 E0            [24] 1542 	push	acc
      0005B8 74 1F            [12] 1543 	mov	a,#(___str_17 >> 8)
      0005BA C0 E0            [24] 1544 	push	acc
      0005BC 74 80            [12] 1545 	mov	a,#0x80
      0005BE C0 E0            [24] 1546 	push	acc
      0005C0 12 12 7D         [24] 1547 	lcall	_printf
      0005C3 15 81            [12] 1548 	dec	sp
      0005C5 15 81            [12] 1549 	dec	sp
      0005C7 15 81            [12] 1550 	dec	sp
                                   1551 ;	program.c:241: if (buff.buffer_start != NULL)
      0005C9 90 01 45         [24] 1552 	mov	dptr,#(_create_initial_buffers_buff_65538_68 + 0x0002)
      0005CC E0               [24] 1553 	movx	a,@dptr
      0005CD FB               [12] 1554 	mov	r3,a
      0005CE A3               [24] 1555 	inc	dptr
      0005CF E0               [24] 1556 	movx	a,@dptr
      0005D0 FC               [12] 1557 	mov	r4,a
      0005D1 A3               [24] 1558 	inc	dptr
      0005D2 E0               [24] 1559 	movx	a,@dptr
      0005D3 EB               [12] 1560 	mov	a,r3
      0005D4 4C               [12] 1561 	orl	a,r4
      0005D5 60 14            [24] 1562 	jz	00103$
                                   1563 ;	program.c:242: free(buff.buffer_start);
      0005D7 90 01 45         [24] 1564 	mov	dptr,#(_create_initial_buffers_buff_65538_68 + 0x0002)
      0005DA E0               [24] 1565 	movx	a,@dptr
      0005DB FB               [12] 1566 	mov	r3,a
      0005DC A3               [24] 1567 	inc	dptr
      0005DD E0               [24] 1568 	movx	a,@dptr
      0005DE FC               [12] 1569 	mov	r4,a
      0005DF A3               [24] 1570 	inc	dptr
      0005E0 E0               [24] 1571 	movx	a,@dptr
      0005E1 FD               [12] 1572 	mov	r5,a
      0005E2 8B 82            [24] 1573 	mov	dpl,r3
      0005E4 8C 83            [24] 1574 	mov	dph,r4
      0005E6 8D F0            [24] 1575 	mov	b,r5
      0005E8 12 0E 84         [24] 1576 	lcall	_free
      0005EB                       1577 00103$:
                                   1578 ;	program.c:243: if (buff1.buffer_start != NULL)
      0005EB 90 01 51         [24] 1579 	mov	dptr,#(_create_initial_buffers_buff1_65538_68 + 0x0002)
      0005EE E0               [24] 1580 	movx	a,@dptr
      0005EF FB               [12] 1581 	mov	r3,a
      0005F0 A3               [24] 1582 	inc	dptr
      0005F1 E0               [24] 1583 	movx	a,@dptr
      0005F2 FC               [12] 1584 	mov	r4,a
      0005F3 A3               [24] 1585 	inc	dptr
      0005F4 E0               [24] 1586 	movx	a,@dptr
      0005F5 FD               [12] 1587 	mov	r5,a
      0005F6 EB               [12] 1588 	mov	a,r3
      0005F7 4C               [12] 1589 	orl	a,r4
      0005F8 70 03            [24] 1590 	jnz	00145$
      0005FA 02 05 1F         [24] 1591 	ljmp	00101$
      0005FD                       1592 00145$:
                                   1593 ;	program.c:244: free(buff1.buffer_start);
      0005FD 90 01 51         [24] 1594 	mov	dptr,#(_create_initial_buffers_buff1_65538_68 + 0x0002)
      000600 E0               [24] 1595 	movx	a,@dptr
      000601 FB               [12] 1596 	mov	r3,a
      000602 A3               [24] 1597 	inc	dptr
      000603 E0               [24] 1598 	movx	a,@dptr
      000604 FC               [12] 1599 	mov	r4,a
      000605 A3               [24] 1600 	inc	dptr
      000606 E0               [24] 1601 	movx	a,@dptr
      000607 FD               [12] 1602 	mov	r5,a
      000608 8B 82            [24] 1603 	mov	dpl,r3
      00060A 8C 83            [24] 1604 	mov	dph,r4
      00060C 8D F0            [24] 1605 	mov	b,r5
      00060E 12 0E 84         [24] 1606 	lcall	_free
                                   1607 ;	program.c:246: goto get_buff;
      000611 02 05 1F         [24] 1608 	ljmp	00101$
      000614                       1609 00107$:
                                   1610 ;	program.c:251: printf("\n\n\r####SUCCESS, INITIAL BUFFERS Created####\n\n\r");
      000614 C0 07            [24] 1611 	push	ar7
      000616 C0 06            [24] 1612 	push	ar6
      000618 74 65            [12] 1613 	mov	a,#___str_18
      00061A C0 E0            [24] 1614 	push	acc
      00061C 74 1F            [12] 1615 	mov	a,#(___str_18 >> 8)
      00061E C0 E0            [24] 1616 	push	acc
      000620 74 80            [12] 1617 	mov	a,#0x80
      000622 C0 E0            [24] 1618 	push	acc
      000624 12 12 7D         [24] 1619 	lcall	_printf
      000627 15 81            [12] 1620 	dec	sp
      000629 15 81            [12] 1621 	dec	sp
      00062B 15 81            [12] 1622 	dec	sp
      00062D D0 06            [24] 1623 	pop	ar6
      00062F D0 07            [24] 1624 	pop	ar7
                                   1625 ;	program.c:252: program_stats.allocated_heap = 2 * buff_size;
      000631 EE               [12] 1626 	mov	a,r6
      000632 2E               [12] 1627 	add	a,r6
      000633 FC               [12] 1628 	mov	r4,a
      000634 EF               [12] 1629 	mov	a,r7
      000635 33               [12] 1630 	rlc	a
      000636 FD               [12] 1631 	mov	r5,a
      000637 90 00 03         [24] 1632 	mov	dptr,#(_program_stats + 0x0002)
      00063A EC               [12] 1633 	mov	a,r4
      00063B F0               [24] 1634 	movx	@dptr,a
      00063C ED               [12] 1635 	mov	a,r5
      00063D A3               [24] 1636 	inc	dptr
      00063E F0               [24] 1637 	movx	@dptr,a
                                   1638 ;	program.c:253: program_stats.total_heap_size = 4996;
      00063F 90 00 01         [24] 1639 	mov	dptr,#_program_stats
      000642 74 84            [12] 1640 	mov	a,#0x84
      000644 F0               [24] 1641 	movx	@dptr,a
      000645 74 13            [12] 1642 	mov	a,#0x13
      000647 A3               [24] 1643 	inc	dptr
      000648 F0               [24] 1644 	movx	@dptr,a
                                   1645 ;	program.c:254: program_stats.total_buffers = 2;
      000649 90 00 09         [24] 1646 	mov	dptr,#(_program_stats + 0x0008)
      00064C 74 02            [12] 1647 	mov	a,#0x02
      00064E F0               [24] 1648 	movx	@dptr,a
      00064F E4               [12] 1649 	clr	a
      000650 A3               [24] 1650 	inc	dptr
      000651 F0               [24] 1651 	movx	@dptr,a
                                   1652 ;	program.c:256: buff.buff_size = buff_size;
      000652 90 01 4B         [24] 1653 	mov	dptr,#(_create_initial_buffers_buff_65538_68 + 0x0008)
      000655 EE               [12] 1654 	mov	a,r6
      000656 F0               [24] 1655 	movx	@dptr,a
      000657 EF               [12] 1656 	mov	a,r7
      000658 A3               [24] 1657 	inc	dptr
      000659 F0               [24] 1658 	movx	@dptr,a
                                   1659 ;	program.c:257: buff1.buff_size = buff_size;
      00065A 90 01 57         [24] 1660 	mov	dptr,#(_create_initial_buffers_buff1_65538_68 + 0x0008)
      00065D EE               [12] 1661 	mov	a,r6
      00065E F0               [24] 1662 	movx	@dptr,a
      00065F EF               [12] 1663 	mov	a,r7
      000660 A3               [24] 1664 	inc	dptr
      000661 F0               [24] 1665 	movx	@dptr,a
                                   1666 ;	program.c:258: buff.buffer_num = 0;
      000662 90 01 43         [24] 1667 	mov	dptr,#_create_initial_buffers_buff_65538_68
      000665 E4               [12] 1668 	clr	a
      000666 F0               [24] 1669 	movx	@dptr,a
      000667 A3               [24] 1670 	inc	dptr
      000668 F0               [24] 1671 	movx	@dptr,a
                                   1672 ;	program.c:259: buff1.buffer_num = 1;
      000669 90 01 4F         [24] 1673 	mov	dptr,#_create_initial_buffers_buff1_65538_68
      00066C 04               [12] 1674 	inc	a
      00066D F0               [24] 1675 	movx	@dptr,a
      00066E E4               [12] 1676 	clr	a
      00066F A3               [24] 1677 	inc	dptr
      000670 F0               [24] 1678 	movx	@dptr,a
                                   1679 ;	program.c:260: buff1.buffer_end = buff1.buffer_start + buff_size;
      000671 90 01 51         [24] 1680 	mov	dptr,#(_create_initial_buffers_buff1_65538_68 + 0x0002)
      000674 E0               [24] 1681 	movx	a,@dptr
      000675 FB               [12] 1682 	mov	r3,a
      000676 A3               [24] 1683 	inc	dptr
      000677 E0               [24] 1684 	movx	a,@dptr
      000678 FC               [12] 1685 	mov	r4,a
      000679 A3               [24] 1686 	inc	dptr
      00067A E0               [24] 1687 	movx	a,@dptr
      00067B FD               [12] 1688 	mov	r5,a
      00067C EE               [12] 1689 	mov	a,r6
      00067D 2B               [12] 1690 	add	a,r3
      00067E FB               [12] 1691 	mov	r3,a
      00067F EF               [12] 1692 	mov	a,r7
      000680 3C               [12] 1693 	addc	a,r4
      000681 FC               [12] 1694 	mov	r4,a
      000682 90 01 54         [24] 1695 	mov	dptr,#(_create_initial_buffers_buff1_65538_68 + 0x0005)
      000685 EB               [12] 1696 	mov	a,r3
      000686 F0               [24] 1697 	movx	@dptr,a
      000687 EC               [12] 1698 	mov	a,r4
      000688 A3               [24] 1699 	inc	dptr
      000689 F0               [24] 1700 	movx	@dptr,a
      00068A ED               [12] 1701 	mov	a,r5
      00068B A3               [24] 1702 	inc	dptr
      00068C F0               [24] 1703 	movx	@dptr,a
                                   1704 ;	program.c:261: buff.buffer_end = buff.buffer_start + buff_size;
      00068D 90 01 45         [24] 1705 	mov	dptr,#(_create_initial_buffers_buff_65538_68 + 0x0002)
      000690 E0               [24] 1706 	movx	a,@dptr
      000691 FB               [12] 1707 	mov	r3,a
      000692 A3               [24] 1708 	inc	dptr
      000693 E0               [24] 1709 	movx	a,@dptr
      000694 FC               [12] 1710 	mov	r4,a
      000695 A3               [24] 1711 	inc	dptr
      000696 E0               [24] 1712 	movx	a,@dptr
      000697 FD               [12] 1713 	mov	r5,a
      000698 EE               [12] 1714 	mov	a,r6
      000699 2B               [12] 1715 	add	a,r3
      00069A FE               [12] 1716 	mov	r6,a
      00069B EF               [12] 1717 	mov	a,r7
      00069C 3C               [12] 1718 	addc	a,r4
      00069D FF               [12] 1719 	mov	r7,a
      00069E 8D 02            [24] 1720 	mov	ar2,r5
      0006A0 90 01 48         [24] 1721 	mov	dptr,#(_create_initial_buffers_buff_65538_68 + 0x0005)
      0006A3 EE               [12] 1722 	mov	a,r6
      0006A4 F0               [24] 1723 	movx	@dptr,a
      0006A5 EF               [12] 1724 	mov	a,r7
      0006A6 A3               [24] 1725 	inc	dptr
      0006A7 F0               [24] 1726 	movx	@dptr,a
      0006A8 EA               [12] 1727 	mov	a,r2
      0006A9 A3               [24] 1728 	inc	dptr
      0006AA F0               [24] 1729 	movx	@dptr,a
                                   1730 ;	program.c:262: buff.num_char = 0;
      0006AB 90 01 4D         [24] 1731 	mov	dptr,#(_create_initial_buffers_buff_65538_68 + 0x000a)
      0006AE E4               [12] 1732 	clr	a
      0006AF F0               [24] 1733 	movx	@dptr,a
      0006B0 A3               [24] 1734 	inc	dptr
      0006B1 F0               [24] 1735 	movx	@dptr,a
                                   1736 ;	program.c:263: buff1.num_char = 0;
      0006B2 90 01 59         [24] 1737 	mov	dptr,#(_create_initial_buffers_buff1_65538_68 + 0x000a)
      0006B5 F0               [24] 1738 	movx	@dptr,a
      0006B6 A3               [24] 1739 	inc	dptr
      0006B7 F0               [24] 1740 	movx	@dptr,a
                                   1741 ;	program.c:265: buffers_array[0] = buff;
      0006B8 90 14 FD         [24] 1742 	mov	dptr,#___memcpy_PARM_2
      0006BB 74 43            [12] 1743 	mov	a,#_create_initial_buffers_buff_65538_68
      0006BD F0               [24] 1744 	movx	@dptr,a
      0006BE 74 01            [12] 1745 	mov	a,#(_create_initial_buffers_buff_65538_68 >> 8)
      0006C0 A3               [24] 1746 	inc	dptr
      0006C1 F0               [24] 1747 	movx	@dptr,a
      0006C2 E4               [12] 1748 	clr	a
      0006C3 A3               [24] 1749 	inc	dptr
      0006C4 F0               [24] 1750 	movx	@dptr,a
      0006C5 90 15 00         [24] 1751 	mov	dptr,#___memcpy_PARM_3
      0006C8 74 0C            [12] 1752 	mov	a,#0x0c
      0006CA F0               [24] 1753 	movx	@dptr,a
      0006CB E4               [12] 1754 	clr	a
      0006CC A3               [24] 1755 	inc	dptr
      0006CD F0               [24] 1756 	movx	@dptr,a
      0006CE 90 00 0B         [24] 1757 	mov	dptr,#_buffers_array
      0006D1 75 F0 00         [24] 1758 	mov	b,#0x00
      0006D4 12 0F DB         [24] 1759 	lcall	___memcpy
                                   1760 ;	program.c:266: buffers_array[1] = buff1;
      0006D7 90 14 FD         [24] 1761 	mov	dptr,#___memcpy_PARM_2
      0006DA 74 4F            [12] 1762 	mov	a,#_create_initial_buffers_buff1_65538_68
      0006DC F0               [24] 1763 	movx	@dptr,a
      0006DD 74 01            [12] 1764 	mov	a,#(_create_initial_buffers_buff1_65538_68 >> 8)
      0006DF A3               [24] 1765 	inc	dptr
      0006E0 F0               [24] 1766 	movx	@dptr,a
      0006E1 E4               [12] 1767 	clr	a
      0006E2 A3               [24] 1768 	inc	dptr
      0006E3 F0               [24] 1769 	movx	@dptr,a
      0006E4 90 15 00         [24] 1770 	mov	dptr,#___memcpy_PARM_3
      0006E7 74 0C            [12] 1771 	mov	a,#0x0c
      0006E9 F0               [24] 1772 	movx	@dptr,a
      0006EA E4               [12] 1773 	clr	a
      0006EB A3               [24] 1774 	inc	dptr
      0006EC F0               [24] 1775 	movx	@dptr,a
      0006ED 90 00 17         [24] 1776 	mov	dptr,#(_buffers_array + 0x000c)
      0006F0 75 F0 00         [24] 1777 	mov	b,#0x00
                                   1778 ;	program.c:270: goto get_buff;
                                   1779 ;	program.c:271: }
      0006F3 02 0F DB         [24] 1780 	ljmp	___memcpy
                                   1781 ;------------------------------------------------------------
                                   1782 ;Allocation info for local variables in function 'enter_chars'
                                   1783 ;------------------------------------------------------------
                                   1784 ;rec                       Allocated with name '_enter_chars_rec_65537_73'
                                   1785 ;------------------------------------------------------------
                                   1786 ;	program.c:279: void enter_chars()
                                   1787 ;	-----------------------------------------
                                   1788 ;	 function enter_chars
                                   1789 ;	-----------------------------------------
      0006F6                       1790 _enter_chars:
                                   1791 ;	program.c:281: DEBUGPORT(0x08);
      0006F6 75 82 08         [24] 1792 	mov	dpl,#0x08
      0006F9 12 0E 5E         [24] 1793 	lcall	_dataout
                                   1794 ;	program.c:282: print_menu();
      0006FC 12 03 05         [24] 1795 	lcall	_print_menu
                                   1796 ;	program.c:284: while (1)
      0006FF                       1797 00123$:
                                   1798 ;	program.c:286: rec = getchar();
      0006FF 12 0E 22         [24] 1799 	lcall	_getchar
      000702 AE 82            [24] 1800 	mov	r6,dpl
      000704 AF 83            [24] 1801 	mov	r7,dph
                                   1802 ;	program.c:287: if (rec > 0x60 && rec < 0x7B)
      000706 C3               [12] 1803 	clr	c
      000707 74 60            [12] 1804 	mov	a,#0x60
      000709 9E               [12] 1805 	subb	a,r6
      00070A 74 80            [12] 1806 	mov	a,#(0x00 ^ 0x80)
      00070C 8F F0            [24] 1807 	mov	b,r7
      00070E 63 F0 80         [24] 1808 	xrl	b,#0x80
      000711 95 F0            [12] 1809 	subb	a,b
      000713 40 03            [24] 1810 	jc	00163$
      000715 02 07 A4         [24] 1811 	ljmp	00119$
      000718                       1812 00163$:
      000718 C3               [12] 1813 	clr	c
      000719 EE               [12] 1814 	mov	a,r6
      00071A 94 7B            [12] 1815 	subb	a,#0x7b
      00071C EF               [12] 1816 	mov	a,r7
      00071D 64 80            [12] 1817 	xrl	a,#0x80
      00071F 94 80            [12] 1818 	subb	a,#0x80
      000721 40 03            [24] 1819 	jc	00164$
      000723 02 07 A4         [24] 1820 	ljmp	00119$
      000726                       1821 00164$:
                                   1822 ;	program.c:291: if (buffers_array[0].num_char < buffers_array[0].buff_size)
      000726 90 00 15         [24] 1823 	mov	dptr,#(_buffers_array + 0x000a)
      000729 E0               [24] 1824 	movx	a,@dptr
      00072A FC               [12] 1825 	mov	r4,a
      00072B A3               [24] 1826 	inc	dptr
      00072C E0               [24] 1827 	movx	a,@dptr
      00072D FD               [12] 1828 	mov	r5,a
      00072E 90 00 13         [24] 1829 	mov	dptr,#(_buffers_array + 0x0008)
      000731 E0               [24] 1830 	movx	a,@dptr
      000732 FA               [12] 1831 	mov	r2,a
      000733 A3               [24] 1832 	inc	dptr
      000734 E0               [24] 1833 	movx	a,@dptr
      000735 FB               [12] 1834 	mov	r3,a
      000736 C3               [12] 1835 	clr	c
      000737 EC               [12] 1836 	mov	a,r4
      000738 9A               [12] 1837 	subb	a,r2
      000739 ED               [12] 1838 	mov	a,r5
      00073A 64 80            [12] 1839 	xrl	a,#0x80
      00073C 8B F0            [24] 1840 	mov	b,r3
      00073E 63 F0 80         [24] 1841 	xrl	b,#0x80
      000741 95 F0            [12] 1842 	subb	a,b
      000743 50 32            [24] 1843 	jnc	00102$
                                   1844 ;	program.c:293: *(buffers_array[0].buffer_start + buffers_array[0].num_char) = rec;
      000745 90 00 0D         [24] 1845 	mov	dptr,#(_buffers_array + 0x0002)
      000748 E0               [24] 1846 	movx	a,@dptr
      000749 F9               [12] 1847 	mov	r1,a
      00074A A3               [24] 1848 	inc	dptr
      00074B E0               [24] 1849 	movx	a,@dptr
      00074C FA               [12] 1850 	mov	r2,a
      00074D A3               [24] 1851 	inc	dptr
      00074E E0               [24] 1852 	movx	a,@dptr
      00074F FB               [12] 1853 	mov	r3,a
      000750 EC               [12] 1854 	mov	a,r4
      000751 29               [12] 1855 	add	a,r1
      000752 F9               [12] 1856 	mov	r1,a
      000753 ED               [12] 1857 	mov	a,r5
      000754 3A               [12] 1858 	addc	a,r2
      000755 FA               [12] 1859 	mov	r2,a
      000756 8E 05            [24] 1860 	mov	ar5,r6
      000758 89 82            [24] 1861 	mov	dpl,r1
      00075A 8A 83            [24] 1862 	mov	dph,r2
      00075C 8B F0            [24] 1863 	mov	b,r3
      00075E ED               [12] 1864 	mov	a,r5
      00075F 12 10 4F         [24] 1865 	lcall	__gptrput
                                   1866 ;	program.c:294: buffers_array[0].num_char += 1;
      000762 90 00 15         [24] 1867 	mov	dptr,#(_buffers_array + 0x000a)
      000765 E0               [24] 1868 	movx	a,@dptr
      000766 FC               [12] 1869 	mov	r4,a
      000767 A3               [24] 1870 	inc	dptr
      000768 E0               [24] 1871 	movx	a,@dptr
      000769 FD               [12] 1872 	mov	r5,a
      00076A 0C               [12] 1873 	inc	r4
      00076B BC 00 01         [24] 1874 	cjne	r4,#0x00,00166$
      00076E 0D               [12] 1875 	inc	r5
      00076F                       1876 00166$:
      00076F 90 00 15         [24] 1877 	mov	dptr,#(_buffers_array + 0x000a)
      000772 EC               [12] 1878 	mov	a,r4
      000773 F0               [24] 1879 	movx	@dptr,a
      000774 ED               [12] 1880 	mov	a,r5
      000775 A3               [24] 1881 	inc	dptr
      000776 F0               [24] 1882 	movx	@dptr,a
      000777                       1883 00102$:
                                   1884 ;	program.c:296: program_stats.all_char_count += 1;
      000777 90 00 05         [24] 1885 	mov	dptr,#(_program_stats + 0x0004)
      00077A E0               [24] 1886 	movx	a,@dptr
      00077B FC               [12] 1887 	mov	r4,a
      00077C A3               [24] 1888 	inc	dptr
      00077D E0               [24] 1889 	movx	a,@dptr
      00077E FD               [12] 1890 	mov	r5,a
      00077F 0C               [12] 1891 	inc	r4
      000780 BC 00 01         [24] 1892 	cjne	r4,#0x00,00167$
      000783 0D               [12] 1893 	inc	r5
      000784                       1894 00167$:
      000784 90 00 05         [24] 1895 	mov	dptr,#(_program_stats + 0x0004)
      000787 EC               [12] 1896 	mov	a,r4
      000788 F0               [24] 1897 	movx	@dptr,a
      000789 ED               [12] 1898 	mov	a,r5
      00078A A3               [24] 1899 	inc	dptr
      00078B F0               [24] 1900 	movx	@dptr,a
                                   1901 ;	program.c:297: program_stats.storage_char_count += 1;
      00078C 90 00 07         [24] 1902 	mov	dptr,#(_program_stats + 0x0006)
      00078F E0               [24] 1903 	movx	a,@dptr
      000790 FC               [12] 1904 	mov	r4,a
      000791 A3               [24] 1905 	inc	dptr
      000792 E0               [24] 1906 	movx	a,@dptr
      000793 FD               [12] 1907 	mov	r5,a
      000794 0C               [12] 1908 	inc	r4
      000795 BC 00 01         [24] 1909 	cjne	r4,#0x00,00168$
      000798 0D               [12] 1910 	inc	r5
      000799                       1911 00168$:
      000799 90 00 07         [24] 1912 	mov	dptr,#(_program_stats + 0x0006)
      00079C EC               [12] 1913 	mov	a,r4
      00079D F0               [24] 1914 	movx	@dptr,a
      00079E ED               [12] 1915 	mov	a,r5
      00079F A3               [24] 1916 	inc	dptr
      0007A0 F0               [24] 1917 	movx	@dptr,a
      0007A1 02 06 FF         [24] 1918 	ljmp	00123$
      0007A4                       1919 00119$:
                                   1920 ;	program.c:299: else if (rec == 0x3F)
      0007A4 BE 3F 1F         [24] 1921 	cjne	r6,#0x3f,00116$
      0007A7 BF 00 1C         [24] 1922 	cjne	r7,#0x00,00116$
                                   1923 ;	program.c:302: print_heap_stats();
      0007AA 12 0A 7D         [24] 1924 	lcall	_print_heap_stats
                                   1925 ;	program.c:303: print_all_buffers();
      0007AD 12 0B 3E         [24] 1926 	lcall	_print_all_buffers
                                   1927 ;	program.c:304: dump_buff_zero_ascii();
      0007B0 12 08 1A         [24] 1928 	lcall	_dump_buff_zero_ascii
                                   1929 ;	program.c:305: program_stats.all_char_count = 0;
      0007B3 90 00 05         [24] 1930 	mov	dptr,#(_program_stats + 0x0004)
      0007B6 E4               [12] 1931 	clr	a
      0007B7 F0               [24] 1932 	movx	@dptr,a
      0007B8 A3               [24] 1933 	inc	dptr
      0007B9 F0               [24] 1934 	movx	@dptr,a
                                   1935 ;	program.c:306: program_stats.storage_char_count = 0;
      0007BA 90 00 07         [24] 1936 	mov	dptr,#(_program_stats + 0x0006)
      0007BD F0               [24] 1937 	movx	@dptr,a
      0007BE A3               [24] 1938 	inc	dptr
      0007BF F0               [24] 1939 	movx	@dptr,a
                                   1940 ;	program.c:307: print_menu();
      0007C0 12 03 05         [24] 1941 	lcall	_print_menu
      0007C3 02 06 FF         [24] 1942 	ljmp	00123$
      0007C6                       1943 00116$:
                                   1944 ;	program.c:309: else if (rec == 0x3D)
      0007C6 BE 3D 0C         [24] 1945 	cjne	r6,#0x3d,00113$
      0007C9 BF 00 09         [24] 1946 	cjne	r7,#0x00,00113$
                                   1947 ;	program.c:312: dump_buff_zero_hex();
      0007CC 12 09 30         [24] 1948 	lcall	_dump_buff_zero_hex
                                   1949 ;	program.c:313: print_menu();
      0007CF 12 03 05         [24] 1950 	lcall	_print_menu
      0007D2 02 06 FF         [24] 1951 	ljmp	00123$
      0007D5                       1952 00113$:
                                   1953 ;	program.c:315: else if (rec == 0x40)
      0007D5 BE 40 0C         [24] 1954 	cjne	r6,#0x40,00110$
      0007D8 BF 00 09         [24] 1955 	cjne	r7,#0x00,00110$
                                   1956 ;	program.c:318: at_clear_all_buffers();
      0007DB 12 00 8F         [24] 1957 	lcall	_at_clear_all_buffers
                                   1958 ;	program.c:319: print_menu();
      0007DE 12 03 05         [24] 1959 	lcall	_print_menu
      0007E1 02 06 FF         [24] 1960 	ljmp	00123$
      0007E4                       1961 00110$:
                                   1962 ;	program.c:321: else if (rec == 0x2B)
      0007E4 BE 2B 0C         [24] 1963 	cjne	r6,#0x2b,00107$
      0007E7 BF 00 09         [24] 1964 	cjne	r7,#0x00,00107$
                                   1965 ;	program.c:324: create_new_buffer();
      0007EA 12 03 9F         [24] 1966 	lcall	_create_new_buffer
                                   1967 ;	program.c:325: print_menu();
      0007ED 12 03 05         [24] 1968 	lcall	_print_menu
      0007F0 02 06 FF         [24] 1969 	ljmp	00123$
      0007F3                       1970 00107$:
                                   1971 ;	program.c:327: else if (rec == 0x2D)
      0007F3 BE 2D 0C         [24] 1972 	cjne	r6,#0x2d,00104$
      0007F6 BF 00 09         [24] 1973 	cjne	r7,#0x00,00104$
                                   1974 ;	program.c:330: delete_buffer();
      0007F9 12 01 29         [24] 1975 	lcall	_delete_buffer
                                   1976 ;	program.c:331: print_menu();
      0007FC 12 03 05         [24] 1977 	lcall	_print_menu
      0007FF 02 06 FF         [24] 1978 	ljmp	00123$
      000802                       1979 00104$:
                                   1980 ;	program.c:335: program_stats.all_char_count += 1;
      000802 90 00 05         [24] 1981 	mov	dptr,#(_program_stats + 0x0004)
      000805 E0               [24] 1982 	movx	a,@dptr
      000806 FE               [12] 1983 	mov	r6,a
      000807 A3               [24] 1984 	inc	dptr
      000808 E0               [24] 1985 	movx	a,@dptr
      000809 FF               [12] 1986 	mov	r7,a
      00080A 0E               [12] 1987 	inc	r6
      00080B BE 00 01         [24] 1988 	cjne	r6,#0x00,00179$
      00080E 0F               [12] 1989 	inc	r7
      00080F                       1990 00179$:
      00080F 90 00 05         [24] 1991 	mov	dptr,#(_program_stats + 0x0004)
      000812 EE               [12] 1992 	mov	a,r6
      000813 F0               [24] 1993 	movx	@dptr,a
      000814 EF               [12] 1994 	mov	a,r7
      000815 A3               [24] 1995 	inc	dptr
      000816 F0               [24] 1996 	movx	@dptr,a
                                   1997 ;	program.c:338: }
      000817 02 06 FF         [24] 1998 	ljmp	00123$
                                   1999 ;------------------------------------------------------------
                                   2000 ;Allocation info for local variables in function 'dump_buff_zero_ascii'
                                   2001 ;------------------------------------------------------------
                                   2002 ;j                         Allocated with name '_dump_buff_zero_ascii_j_65537_84'
                                   2003 ;i                         Allocated with name '_dump_buff_zero_ascii_i_196609_86'
                                   2004 ;------------------------------------------------------------
                                   2005 ;	program.c:346: void dump_buff_zero_ascii()
                                   2006 ;	-----------------------------------------
                                   2007 ;	 function dump_buff_zero_ascii
                                   2008 ;	-----------------------------------------
      00081A                       2009 _dump_buff_zero_ascii:
                                   2010 ;	program.c:348: DEBUGPORT(0x09);
      00081A 75 82 09         [24] 2011 	mov	dpl,#0x09
      00081D 12 0E 5E         [24] 2012 	lcall	_dataout
                                   2013 ;	program.c:349: int j = 64;
      000820 90 01 5B         [24] 2014 	mov	dptr,#_dump_buff_zero_ascii_j_65537_84
      000823 74 40            [12] 2015 	mov	a,#0x40
      000825 F0               [24] 2016 	movx	@dptr,a
      000826 E4               [12] 2017 	clr	a
      000827 A3               [24] 2018 	inc	dptr
      000828 F0               [24] 2019 	movx	@dptr,a
                                   2020 ;	program.c:350: if (buffers_array[0].num_char > 0)
      000829 90 00 15         [24] 2021 	mov	dptr,#(_buffers_array + 0x000a)
      00082C E0               [24] 2022 	movx	a,@dptr
      00082D FE               [12] 2023 	mov	r6,a
      00082E A3               [24] 2024 	inc	dptr
      00082F E0               [24] 2025 	movx	a,@dptr
      000830 FF               [12] 2026 	mov	r7,a
      000831 C3               [12] 2027 	clr	c
      000832 E4               [12] 2028 	clr	a
      000833 9E               [12] 2029 	subb	a,r6
      000834 74 80            [12] 2030 	mov	a,#(0x00 ^ 0x80)
      000836 8F F0            [24] 2031 	mov	b,r7
      000838 63 F0 80         [24] 2032 	xrl	b,#0x80
      00083B 95 F0            [12] 2033 	subb	a,b
      00083D 40 03            [24] 2034 	jc	00135$
      00083F 02 09 1A         [24] 2035 	ljmp	00107$
      000842                       2036 00135$:
                                   2037 ;	program.c:352: printf("\n\n\r***********Buffer-0-Contents*********** \n\r");
      000842 74 94            [12] 2038 	mov	a,#___str_19
      000844 C0 E0            [24] 2039 	push	acc
      000846 74 1F            [12] 2040 	mov	a,#(___str_19 >> 8)
      000848 C0 E0            [24] 2041 	push	acc
      00084A 74 80            [12] 2042 	mov	a,#0x80
      00084C C0 E0            [24] 2043 	push	acc
      00084E 12 12 7D         [24] 2044 	lcall	_printf
      000851 15 81            [12] 2045 	dec	sp
      000853 15 81            [12] 2046 	dec	sp
      000855 15 81            [12] 2047 	dec	sp
                                   2048 ;	program.c:353: for (int i = 0; i < buffers_array[0].num_char; i++)
      000857 7E 00            [12] 2049 	mov	r6,#0x00
      000859 7F 00            [12] 2050 	mov	r7,#0x00
      00085B                       2051 00110$:
      00085B 90 00 15         [24] 2052 	mov	dptr,#(_buffers_array + 0x000a)
      00085E E0               [24] 2053 	movx	a,@dptr
      00085F FC               [12] 2054 	mov	r4,a
      000860 A3               [24] 2055 	inc	dptr
      000861 E0               [24] 2056 	movx	a,@dptr
      000862 FD               [12] 2057 	mov	r5,a
      000863 C3               [12] 2058 	clr	c
      000864 EE               [12] 2059 	mov	a,r6
      000865 9C               [12] 2060 	subb	a,r4
      000866 EF               [12] 2061 	mov	a,r7
      000867 64 80            [12] 2062 	xrl	a,#0x80
      000869 8D F0            [24] 2063 	mov	b,r5
      00086B 63 F0 80         [24] 2064 	xrl	b,#0x80
      00086E 95 F0            [12] 2065 	subb	a,b
      000870 40 03            [24] 2066 	jc	00136$
      000872 02 08 FD         [24] 2067 	ljmp	00105$
      000875                       2068 00136$:
                                   2069 ;	program.c:355: if (j == 64)
      000875 90 01 5B         [24] 2070 	mov	dptr,#_dump_buff_zero_ascii_j_65537_84
      000878 E0               [24] 2071 	movx	a,@dptr
      000879 FC               [12] 2072 	mov	r4,a
      00087A A3               [24] 2073 	inc	dptr
      00087B E0               [24] 2074 	movx	a,@dptr
      00087C FD               [12] 2075 	mov	r5,a
      00087D BC 40 20         [24] 2076 	cjne	r4,#0x40,00102$
      000880 BD 00 1D         [24] 2077 	cjne	r5,#0x00,00102$
                                   2078 ;	program.c:357: printf("\n\r");
      000883 C0 07            [24] 2079 	push	ar7
      000885 C0 06            [24] 2080 	push	ar6
      000887 74 C2            [12] 2081 	mov	a,#___str_20
      000889 C0 E0            [24] 2082 	push	acc
      00088B 74 1F            [12] 2083 	mov	a,#(___str_20 >> 8)
      00088D C0 E0            [24] 2084 	push	acc
      00088F 74 80            [12] 2085 	mov	a,#0x80
      000891 C0 E0            [24] 2086 	push	acc
      000893 12 12 7D         [24] 2087 	lcall	_printf
      000896 15 81            [12] 2088 	dec	sp
      000898 15 81            [12] 2089 	dec	sp
      00089A 15 81            [12] 2090 	dec	sp
      00089C D0 06            [24] 2091 	pop	ar6
      00089E D0 07            [24] 2092 	pop	ar7
      0008A0                       2093 00102$:
                                   2094 ;	program.c:359: putchar(*(buffers_array[0].buffer_start + i));
      0008A0 90 00 0D         [24] 2095 	mov	dptr,#(_buffers_array + 0x0002)
      0008A3 E0               [24] 2096 	movx	a,@dptr
      0008A4 FB               [12] 2097 	mov	r3,a
      0008A5 A3               [24] 2098 	inc	dptr
      0008A6 E0               [24] 2099 	movx	a,@dptr
      0008A7 FC               [12] 2100 	mov	r4,a
      0008A8 A3               [24] 2101 	inc	dptr
      0008A9 E0               [24] 2102 	movx	a,@dptr
      0008AA FD               [12] 2103 	mov	r5,a
      0008AB EE               [12] 2104 	mov	a,r6
      0008AC 2B               [12] 2105 	add	a,r3
      0008AD FB               [12] 2106 	mov	r3,a
      0008AE EF               [12] 2107 	mov	a,r7
      0008AF 3C               [12] 2108 	addc	a,r4
      0008B0 FC               [12] 2109 	mov	r4,a
      0008B1 8B 82            [24] 2110 	mov	dpl,r3
      0008B3 8C 83            [24] 2111 	mov	dph,r4
      0008B5 8D F0            [24] 2112 	mov	b,r5
      0008B7 12 1C 9C         [24] 2113 	lcall	__gptrget
      0008BA FB               [12] 2114 	mov	r3,a
      0008BB 7D 00            [12] 2115 	mov	r5,#0x00
      0008BD 8B 82            [24] 2116 	mov	dpl,r3
      0008BF 8D 83            [24] 2117 	mov	dph,r5
      0008C1 C0 07            [24] 2118 	push	ar7
      0008C3 C0 06            [24] 2119 	push	ar6
      0008C5 12 0E 03         [24] 2120 	lcall	_putchar
      0008C8 D0 06            [24] 2121 	pop	ar6
      0008CA D0 07            [24] 2122 	pop	ar7
                                   2123 ;	program.c:360: j--;
      0008CC 90 01 5B         [24] 2124 	mov	dptr,#_dump_buff_zero_ascii_j_65537_84
      0008CF E0               [24] 2125 	movx	a,@dptr
      0008D0 24 FF            [12] 2126 	add	a,#0xff
      0008D2 FC               [12] 2127 	mov	r4,a
      0008D3 A3               [24] 2128 	inc	dptr
      0008D4 E0               [24] 2129 	movx	a,@dptr
      0008D5 34 FF            [12] 2130 	addc	a,#0xff
      0008D7 FD               [12] 2131 	mov	r5,a
      0008D8 90 01 5B         [24] 2132 	mov	dptr,#_dump_buff_zero_ascii_j_65537_84
      0008DB EC               [12] 2133 	mov	a,r4
      0008DC F0               [24] 2134 	movx	@dptr,a
      0008DD ED               [12] 2135 	mov	a,r5
      0008DE A3               [24] 2136 	inc	dptr
      0008DF F0               [24] 2137 	movx	@dptr,a
                                   2138 ;	program.c:361: if (j == 0)
      0008E0 90 01 5B         [24] 2139 	mov	dptr,#_dump_buff_zero_ascii_j_65537_84
      0008E3 E0               [24] 2140 	movx	a,@dptr
      0008E4 F5 F0            [12] 2141 	mov	b,a
      0008E6 A3               [24] 2142 	inc	dptr
      0008E7 E0               [24] 2143 	movx	a,@dptr
      0008E8 45 F0            [12] 2144 	orl	a,b
      0008EA 70 09            [24] 2145 	jnz	00111$
                                   2146 ;	program.c:362: j = 64;
      0008EC 90 01 5B         [24] 2147 	mov	dptr,#_dump_buff_zero_ascii_j_65537_84
      0008EF 74 40            [12] 2148 	mov	a,#0x40
      0008F1 F0               [24] 2149 	movx	@dptr,a
      0008F2 E4               [12] 2150 	clr	a
      0008F3 A3               [24] 2151 	inc	dptr
      0008F4 F0               [24] 2152 	movx	@dptr,a
      0008F5                       2153 00111$:
                                   2154 ;	program.c:353: for (int i = 0; i < buffers_array[0].num_char; i++)
      0008F5 0E               [12] 2155 	inc	r6
      0008F6 BE 00 01         [24] 2156 	cjne	r6,#0x00,00140$
      0008F9 0F               [12] 2157 	inc	r7
      0008FA                       2158 00140$:
      0008FA 02 08 5B         [24] 2159 	ljmp	00110$
      0008FD                       2160 00105$:
                                   2161 ;	program.c:364: buffers_array[0].num_char = 0;
      0008FD 90 00 15         [24] 2162 	mov	dptr,#(_buffers_array + 0x000a)
      000900 E4               [12] 2163 	clr	a
      000901 F0               [24] 2164 	movx	@dptr,a
      000902 A3               [24] 2165 	inc	dptr
      000903 F0               [24] 2166 	movx	@dptr,a
                                   2167 ;	program.c:365: printf("\n\n\r");
      000904 74 C5            [12] 2168 	mov	a,#___str_21
      000906 C0 E0            [24] 2169 	push	acc
      000908 74 1F            [12] 2170 	mov	a,#(___str_21 >> 8)
      00090A C0 E0            [24] 2171 	push	acc
      00090C 74 80            [12] 2172 	mov	a,#0x80
      00090E C0 E0            [24] 2173 	push	acc
      000910 12 12 7D         [24] 2174 	lcall	_printf
      000913 15 81            [12] 2175 	dec	sp
      000915 15 81            [12] 2176 	dec	sp
      000917 15 81            [12] 2177 	dec	sp
      000919 22               [24] 2178 	ret
      00091A                       2179 00107$:
                                   2180 ;	program.c:369: printf("Buffer0 is Empty....\n\r");
      00091A 74 C9            [12] 2181 	mov	a,#___str_22
      00091C C0 E0            [24] 2182 	push	acc
      00091E 74 1F            [12] 2183 	mov	a,#(___str_22 >> 8)
      000920 C0 E0            [24] 2184 	push	acc
      000922 74 80            [12] 2185 	mov	a,#0x80
      000924 C0 E0            [24] 2186 	push	acc
      000926 12 12 7D         [24] 2187 	lcall	_printf
      000929 15 81            [12] 2188 	dec	sp
      00092B 15 81            [12] 2189 	dec	sp
      00092D 15 81            [12] 2190 	dec	sp
                                   2191 ;	program.c:371: }
      00092F 22               [24] 2192 	ret
                                   2193 ;------------------------------------------------------------
                                   2194 ;Allocation info for local variables in function 'dump_buff_zero_hex'
                                   2195 ;------------------------------------------------------------
                                   2196 ;j                         Allocated with name '_dump_buff_zero_hex_j_131073_92'
                                   2197 ;i                         Allocated with name '_dump_buff_zero_hex_i_196609_93'
                                   2198 ;------------------------------------------------------------
                                   2199 ;	program.c:378: void dump_buff_zero_hex()
                                   2200 ;	-----------------------------------------
                                   2201 ;	 function dump_buff_zero_hex
                                   2202 ;	-----------------------------------------
      000930                       2203 _dump_buff_zero_hex:
                                   2204 ;	program.c:380: DEBUGPORT(0xA);
      000930 75 82 0A         [24] 2205 	mov	dpl,#0x0a
      000933 12 0E 5E         [24] 2206 	lcall	_dataout
                                   2207 ;	program.c:381: if (buffers_array[0].num_char > 0)
      000936 90 00 15         [24] 2208 	mov	dptr,#(_buffers_array + 0x000a)
      000939 E0               [24] 2209 	movx	a,@dptr
      00093A FE               [12] 2210 	mov	r6,a
      00093B A3               [24] 2211 	inc	dptr
      00093C E0               [24] 2212 	movx	a,@dptr
      00093D FF               [12] 2213 	mov	r7,a
      00093E C3               [12] 2214 	clr	c
      00093F E4               [12] 2215 	clr	a
      000940 9E               [12] 2216 	subb	a,r6
      000941 74 80            [12] 2217 	mov	a,#(0x00 ^ 0x80)
      000943 8F F0            [24] 2218 	mov	b,r7
      000945 63 F0 80         [24] 2219 	xrl	b,#0x80
      000948 95 F0            [12] 2220 	subb	a,b
      00094A 40 03            [24] 2221 	jc	00135$
      00094C 02 0A 67         [24] 2222 	ljmp	00107$
      00094F                       2223 00135$:
                                   2224 ;	program.c:383: printf("\n\r-------------------------HEXDUMP--------------------------------");
      00094F 74 E0            [12] 2225 	mov	a,#___str_23
      000951 C0 E0            [24] 2226 	push	acc
      000953 74 1F            [12] 2227 	mov	a,#(___str_23 >> 8)
      000955 C0 E0            [24] 2228 	push	acc
      000957 74 80            [12] 2229 	mov	a,#0x80
      000959 C0 E0            [24] 2230 	push	acc
      00095B 12 12 7D         [24] 2231 	lcall	_printf
      00095E 15 81            [12] 2232 	dec	sp
      000960 15 81            [12] 2233 	dec	sp
      000962 15 81            [12] 2234 	dec	sp
                                   2235 ;	program.c:384: printf("\n\r    ADDR: +0 +1 +2 +3 +4 +5 +6 +7 +8 +9 +A +B +C +D +E +F \n\r");
      000964 74 23            [12] 2236 	mov	a,#___str_24
      000966 C0 E0            [24] 2237 	push	acc
      000968 74 20            [12] 2238 	mov	a,#(___str_24 >> 8)
      00096A C0 E0            [24] 2239 	push	acc
      00096C 74 80            [12] 2240 	mov	a,#0x80
      00096E C0 E0            [24] 2241 	push	acc
      000970 12 12 7D         [24] 2242 	lcall	_printf
      000973 15 81            [12] 2243 	dec	sp
      000975 15 81            [12] 2244 	dec	sp
      000977 15 81            [12] 2245 	dec	sp
                                   2246 ;	program.c:385: int j = 16;
      000979 90 01 5D         [24] 2247 	mov	dptr,#_dump_buff_zero_hex_j_131073_92
      00097C 74 10            [12] 2248 	mov	a,#0x10
      00097E F0               [24] 2249 	movx	@dptr,a
      00097F E4               [12] 2250 	clr	a
      000980 A3               [24] 2251 	inc	dptr
      000981 F0               [24] 2252 	movx	@dptr,a
                                   2253 ;	program.c:387: for (int i = 0; i < buffers_array[0].num_char; i++)
      000982 7E 00            [12] 2254 	mov	r6,#0x00
      000984 7F 00            [12] 2255 	mov	r7,#0x00
      000986                       2256 00110$:
      000986 90 00 15         [24] 2257 	mov	dptr,#(_buffers_array + 0x000a)
      000989 E0               [24] 2258 	movx	a,@dptr
      00098A FC               [12] 2259 	mov	r4,a
      00098B A3               [24] 2260 	inc	dptr
      00098C E0               [24] 2261 	movx	a,@dptr
      00098D FD               [12] 2262 	mov	r5,a
      00098E C3               [12] 2263 	clr	c
      00098F EE               [12] 2264 	mov	a,r6
      000990 9C               [12] 2265 	subb	a,r4
      000991 EF               [12] 2266 	mov	a,r7
      000992 64 80            [12] 2267 	xrl	a,#0x80
      000994 8D F0            [24] 2268 	mov	b,r5
      000996 63 F0 80         [24] 2269 	xrl	b,#0x80
      000999 95 F0            [12] 2270 	subb	a,b
      00099B 40 03            [24] 2271 	jc	00136$
      00099D 02 0A 51         [24] 2272 	ljmp	00105$
      0009A0                       2273 00136$:
                                   2274 ;	program.c:389: if (j == 16)
      0009A0 90 01 5D         [24] 2275 	mov	dptr,#_dump_buff_zero_hex_j_131073_92
      0009A3 E0               [24] 2276 	movx	a,@dptr
      0009A4 FC               [12] 2277 	mov	r4,a
      0009A5 A3               [24] 2278 	inc	dptr
      0009A6 E0               [24] 2279 	movx	a,@dptr
      0009A7 FD               [12] 2280 	mov	r5,a
      0009A8 BC 10 37         [24] 2281 	cjne	r4,#0x10,00102$
      0009AB BD 00 34         [24] 2282 	cjne	r5,#0x00,00102$
                                   2283 ;	program.c:391: printf("\n\r%p: ", (buffers_array[0].buffer_start + i));
      0009AE 90 00 0D         [24] 2284 	mov	dptr,#(_buffers_array + 0x0002)
      0009B1 E0               [24] 2285 	movx	a,@dptr
      0009B2 FB               [12] 2286 	mov	r3,a
      0009B3 A3               [24] 2287 	inc	dptr
      0009B4 E0               [24] 2288 	movx	a,@dptr
      0009B5 FC               [12] 2289 	mov	r4,a
      0009B6 A3               [24] 2290 	inc	dptr
      0009B7 E0               [24] 2291 	movx	a,@dptr
      0009B8 FD               [12] 2292 	mov	r5,a
      0009B9 EE               [12] 2293 	mov	a,r6
      0009BA 2B               [12] 2294 	add	a,r3
      0009BB FB               [12] 2295 	mov	r3,a
      0009BC EF               [12] 2296 	mov	a,r7
      0009BD 3C               [12] 2297 	addc	a,r4
      0009BE FC               [12] 2298 	mov	r4,a
      0009BF C0 07            [24] 2299 	push	ar7
      0009C1 C0 06            [24] 2300 	push	ar6
      0009C3 C0 03            [24] 2301 	push	ar3
      0009C5 C0 04            [24] 2302 	push	ar4
      0009C7 C0 05            [24] 2303 	push	ar5
      0009C9 74 62            [12] 2304 	mov	a,#___str_25
      0009CB C0 E0            [24] 2305 	push	acc
      0009CD 74 20            [12] 2306 	mov	a,#(___str_25 >> 8)
      0009CF C0 E0            [24] 2307 	push	acc
      0009D1 74 80            [12] 2308 	mov	a,#0x80
      0009D3 C0 E0            [24] 2309 	push	acc
      0009D5 12 12 7D         [24] 2310 	lcall	_printf
      0009D8 E5 81            [12] 2311 	mov	a,sp
      0009DA 24 FA            [12] 2312 	add	a,#0xfa
      0009DC F5 81            [12] 2313 	mov	sp,a
      0009DE D0 06            [24] 2314 	pop	ar6
      0009E0 D0 07            [24] 2315 	pop	ar7
      0009E2                       2316 00102$:
                                   2317 ;	program.c:393: printf("%x ", *(buffers_array[0].buffer_start + i));
      0009E2 90 00 0D         [24] 2318 	mov	dptr,#(_buffers_array + 0x0002)
      0009E5 E0               [24] 2319 	movx	a,@dptr
      0009E6 FB               [12] 2320 	mov	r3,a
      0009E7 A3               [24] 2321 	inc	dptr
      0009E8 E0               [24] 2322 	movx	a,@dptr
      0009E9 FC               [12] 2323 	mov	r4,a
      0009EA A3               [24] 2324 	inc	dptr
      0009EB E0               [24] 2325 	movx	a,@dptr
      0009EC FD               [12] 2326 	mov	r5,a
      0009ED EE               [12] 2327 	mov	a,r6
      0009EE 2B               [12] 2328 	add	a,r3
      0009EF FB               [12] 2329 	mov	r3,a
      0009F0 EF               [12] 2330 	mov	a,r7
      0009F1 3C               [12] 2331 	addc	a,r4
      0009F2 FC               [12] 2332 	mov	r4,a
      0009F3 8B 82            [24] 2333 	mov	dpl,r3
      0009F5 8C 83            [24] 2334 	mov	dph,r4
      0009F7 8D F0            [24] 2335 	mov	b,r5
      0009F9 12 1C 9C         [24] 2336 	lcall	__gptrget
      0009FC FB               [12] 2337 	mov	r3,a
      0009FD 7D 00            [12] 2338 	mov	r5,#0x00
      0009FF C0 07            [24] 2339 	push	ar7
      000A01 C0 06            [24] 2340 	push	ar6
      000A03 C0 03            [24] 2341 	push	ar3
      000A05 C0 05            [24] 2342 	push	ar5
      000A07 74 69            [12] 2343 	mov	a,#___str_26
      000A09 C0 E0            [24] 2344 	push	acc
      000A0B 74 20            [12] 2345 	mov	a,#(___str_26 >> 8)
      000A0D C0 E0            [24] 2346 	push	acc
      000A0F 74 80            [12] 2347 	mov	a,#0x80
      000A11 C0 E0            [24] 2348 	push	acc
      000A13 12 12 7D         [24] 2349 	lcall	_printf
      000A16 E5 81            [12] 2350 	mov	a,sp
      000A18 24 FB            [12] 2351 	add	a,#0xfb
      000A1A F5 81            [12] 2352 	mov	sp,a
      000A1C D0 06            [24] 2353 	pop	ar6
      000A1E D0 07            [24] 2354 	pop	ar7
                                   2355 ;	program.c:394: j--;
      000A20 90 01 5D         [24] 2356 	mov	dptr,#_dump_buff_zero_hex_j_131073_92
      000A23 E0               [24] 2357 	movx	a,@dptr
      000A24 24 FF            [12] 2358 	add	a,#0xff
      000A26 FC               [12] 2359 	mov	r4,a
      000A27 A3               [24] 2360 	inc	dptr
      000A28 E0               [24] 2361 	movx	a,@dptr
      000A29 34 FF            [12] 2362 	addc	a,#0xff
      000A2B FD               [12] 2363 	mov	r5,a
      000A2C 90 01 5D         [24] 2364 	mov	dptr,#_dump_buff_zero_hex_j_131073_92
      000A2F EC               [12] 2365 	mov	a,r4
      000A30 F0               [24] 2366 	movx	@dptr,a
      000A31 ED               [12] 2367 	mov	a,r5
      000A32 A3               [24] 2368 	inc	dptr
      000A33 F0               [24] 2369 	movx	@dptr,a
                                   2370 ;	program.c:395: if (j == 0)
      000A34 90 01 5D         [24] 2371 	mov	dptr,#_dump_buff_zero_hex_j_131073_92
      000A37 E0               [24] 2372 	movx	a,@dptr
      000A38 F5 F0            [12] 2373 	mov	b,a
      000A3A A3               [24] 2374 	inc	dptr
      000A3B E0               [24] 2375 	movx	a,@dptr
      000A3C 45 F0            [12] 2376 	orl	a,b
      000A3E 70 09            [24] 2377 	jnz	00111$
                                   2378 ;	program.c:396: j = 16;
      000A40 90 01 5D         [24] 2379 	mov	dptr,#_dump_buff_zero_hex_j_131073_92
      000A43 74 10            [12] 2380 	mov	a,#0x10
      000A45 F0               [24] 2381 	movx	@dptr,a
      000A46 E4               [12] 2382 	clr	a
      000A47 A3               [24] 2383 	inc	dptr
      000A48 F0               [24] 2384 	movx	@dptr,a
      000A49                       2385 00111$:
                                   2386 ;	program.c:387: for (int i = 0; i < buffers_array[0].num_char; i++)
      000A49 0E               [12] 2387 	inc	r6
      000A4A BE 00 01         [24] 2388 	cjne	r6,#0x00,00140$
      000A4D 0F               [12] 2389 	inc	r7
      000A4E                       2390 00140$:
      000A4E 02 09 86         [24] 2391 	ljmp	00110$
      000A51                       2392 00105$:
                                   2393 ;	program.c:398: printf("\n\n\r");
      000A51 74 C5            [12] 2394 	mov	a,#___str_21
      000A53 C0 E0            [24] 2395 	push	acc
      000A55 74 1F            [12] 2396 	mov	a,#(___str_21 >> 8)
      000A57 C0 E0            [24] 2397 	push	acc
      000A59 74 80            [12] 2398 	mov	a,#0x80
      000A5B C0 E0            [24] 2399 	push	acc
      000A5D 12 12 7D         [24] 2400 	lcall	_printf
      000A60 15 81            [12] 2401 	dec	sp
      000A62 15 81            [12] 2402 	dec	sp
      000A64 15 81            [12] 2403 	dec	sp
      000A66 22               [24] 2404 	ret
      000A67                       2405 00107$:
                                   2406 ;	program.c:402: printf("Buffer 0 is empty...\n\r");
      000A67 74 6D            [12] 2407 	mov	a,#___str_27
      000A69 C0 E0            [24] 2408 	push	acc
      000A6B 74 20            [12] 2409 	mov	a,#(___str_27 >> 8)
      000A6D C0 E0            [24] 2410 	push	acc
      000A6F 74 80            [12] 2411 	mov	a,#0x80
      000A71 C0 E0            [24] 2412 	push	acc
      000A73 12 12 7D         [24] 2413 	lcall	_printf
      000A76 15 81            [12] 2414 	dec	sp
      000A78 15 81            [12] 2415 	dec	sp
      000A7A 15 81            [12] 2416 	dec	sp
                                   2417 ;	program.c:404: }
      000A7C 22               [24] 2418 	ret
                                   2419 ;------------------------------------------------------------
                                   2420 ;Allocation info for local variables in function 'print_heap_stats'
                                   2421 ;------------------------------------------------------------
                                   2422 ;	program.c:411: void print_heap_stats()
                                   2423 ;	-----------------------------------------
                                   2424 ;	 function print_heap_stats
                                   2425 ;	-----------------------------------------
      000A7D                       2426 _print_heap_stats:
                                   2427 ;	program.c:413: DEBUGPORT(0xB);
      000A7D 75 82 0B         [24] 2428 	mov	dpl,#0x0b
      000A80 12 0E 5E         [24] 2429 	lcall	_dataout
                                   2430 ;	program.c:414: printf("\n\r****************HEAP*STATS*************\n\r");
      000A83 74 84            [12] 2431 	mov	a,#___str_28
      000A85 C0 E0            [24] 2432 	push	acc
      000A87 74 20            [12] 2433 	mov	a,#(___str_28 >> 8)
      000A89 C0 E0            [24] 2434 	push	acc
      000A8B 74 80            [12] 2435 	mov	a,#0x80
      000A8D C0 E0            [24] 2436 	push	acc
      000A8F 12 12 7D         [24] 2437 	lcall	_printf
      000A92 15 81            [12] 2438 	dec	sp
      000A94 15 81            [12] 2439 	dec	sp
      000A96 15 81            [12] 2440 	dec	sp
                                   2441 ;	program.c:415: printf("Total Heap Size: %d \n\r", program_stats.total_heap_size);
      000A98 90 00 01         [24] 2442 	mov	dptr,#_program_stats
      000A9B E0               [24] 2443 	movx	a,@dptr
      000A9C FE               [12] 2444 	mov	r6,a
      000A9D A3               [24] 2445 	inc	dptr
      000A9E E0               [24] 2446 	movx	a,@dptr
      000A9F FF               [12] 2447 	mov	r7,a
      000AA0 C0 06            [24] 2448 	push	ar6
      000AA2 C0 07            [24] 2449 	push	ar7
      000AA4 74 B0            [12] 2450 	mov	a,#___str_29
      000AA6 C0 E0            [24] 2451 	push	acc
      000AA8 74 20            [12] 2452 	mov	a,#(___str_29 >> 8)
      000AAA C0 E0            [24] 2453 	push	acc
      000AAC 74 80            [12] 2454 	mov	a,#0x80
      000AAE C0 E0            [24] 2455 	push	acc
      000AB0 12 12 7D         [24] 2456 	lcall	_printf
      000AB3 E5 81            [12] 2457 	mov	a,sp
      000AB5 24 FB            [12] 2458 	add	a,#0xfb
      000AB7 F5 81            [12] 2459 	mov	sp,a
                                   2460 ;	program.c:416: printf("Allocated Heap Size: %d \n\r", program_stats.allocated_heap);
      000AB9 90 00 03         [24] 2461 	mov	dptr,#(_program_stats + 0x0002)
      000ABC E0               [24] 2462 	movx	a,@dptr
      000ABD FE               [12] 2463 	mov	r6,a
      000ABE A3               [24] 2464 	inc	dptr
      000ABF E0               [24] 2465 	movx	a,@dptr
      000AC0 FF               [12] 2466 	mov	r7,a
      000AC1 C0 06            [24] 2467 	push	ar6
      000AC3 C0 07            [24] 2468 	push	ar7
      000AC5 74 C7            [12] 2469 	mov	a,#___str_30
      000AC7 C0 E0            [24] 2470 	push	acc
      000AC9 74 20            [12] 2471 	mov	a,#(___str_30 >> 8)
      000ACB C0 E0            [24] 2472 	push	acc
      000ACD 74 80            [12] 2473 	mov	a,#0x80
      000ACF C0 E0            [24] 2474 	push	acc
      000AD1 12 12 7D         [24] 2475 	lcall	_printf
      000AD4 E5 81            [12] 2476 	mov	a,sp
      000AD6 24 FB            [12] 2477 	add	a,#0xfb
      000AD8 F5 81            [12] 2478 	mov	sp,a
                                   2479 ;	program.c:417: printf("All Chars: %d \n\r", program_stats.all_char_count);
      000ADA 90 00 05         [24] 2480 	mov	dptr,#(_program_stats + 0x0004)
      000ADD E0               [24] 2481 	movx	a,@dptr
      000ADE FE               [12] 2482 	mov	r6,a
      000ADF A3               [24] 2483 	inc	dptr
      000AE0 E0               [24] 2484 	movx	a,@dptr
      000AE1 FF               [12] 2485 	mov	r7,a
      000AE2 C0 06            [24] 2486 	push	ar6
      000AE4 C0 07            [24] 2487 	push	ar7
      000AE6 74 E2            [12] 2488 	mov	a,#___str_31
      000AE8 C0 E0            [24] 2489 	push	acc
      000AEA 74 20            [12] 2490 	mov	a,#(___str_31 >> 8)
      000AEC C0 E0            [24] 2491 	push	acc
      000AEE 74 80            [12] 2492 	mov	a,#0x80
      000AF0 C0 E0            [24] 2493 	push	acc
      000AF2 12 12 7D         [24] 2494 	lcall	_printf
      000AF5 E5 81            [12] 2495 	mov	a,sp
      000AF7 24 FB            [12] 2496 	add	a,#0xfb
      000AF9 F5 81            [12] 2497 	mov	sp,a
                                   2498 ;	program.c:418: printf("Storage Chars: %d \n\r", program_stats.storage_char_count);
      000AFB 90 00 07         [24] 2499 	mov	dptr,#(_program_stats + 0x0006)
      000AFE E0               [24] 2500 	movx	a,@dptr
      000AFF FE               [12] 2501 	mov	r6,a
      000B00 A3               [24] 2502 	inc	dptr
      000B01 E0               [24] 2503 	movx	a,@dptr
      000B02 FF               [12] 2504 	mov	r7,a
      000B03 C0 06            [24] 2505 	push	ar6
      000B05 C0 07            [24] 2506 	push	ar7
      000B07 74 F3            [12] 2507 	mov	a,#___str_32
      000B09 C0 E0            [24] 2508 	push	acc
      000B0B 74 20            [12] 2509 	mov	a,#(___str_32 >> 8)
      000B0D C0 E0            [24] 2510 	push	acc
      000B0F 74 80            [12] 2511 	mov	a,#0x80
      000B11 C0 E0            [24] 2512 	push	acc
      000B13 12 12 7D         [24] 2513 	lcall	_printf
      000B16 E5 81            [12] 2514 	mov	a,sp
      000B18 24 FB            [12] 2515 	add	a,#0xfb
      000B1A F5 81            [12] 2516 	mov	sp,a
                                   2517 ;	program.c:419: printf("Total Buffers: %d \n\r", program_stats.total_buffers);
      000B1C 90 00 09         [24] 2518 	mov	dptr,#(_program_stats + 0x0008)
      000B1F E0               [24] 2519 	movx	a,@dptr
      000B20 FE               [12] 2520 	mov	r6,a
      000B21 A3               [24] 2521 	inc	dptr
      000B22 E0               [24] 2522 	movx	a,@dptr
      000B23 FF               [12] 2523 	mov	r7,a
      000B24 C0 06            [24] 2524 	push	ar6
      000B26 C0 07            [24] 2525 	push	ar7
      000B28 74 08            [12] 2526 	mov	a,#___str_33
      000B2A C0 E0            [24] 2527 	push	acc
      000B2C 74 21            [12] 2528 	mov	a,#(___str_33 >> 8)
      000B2E C0 E0            [24] 2529 	push	acc
      000B30 74 80            [12] 2530 	mov	a,#0x80
      000B32 C0 E0            [24] 2531 	push	acc
      000B34 12 12 7D         [24] 2532 	lcall	_printf
      000B37 E5 81            [12] 2533 	mov	a,sp
      000B39 24 FB            [12] 2534 	add	a,#0xfb
      000B3B F5 81            [12] 2535 	mov	sp,a
                                   2536 ;	program.c:420: }
      000B3D 22               [24] 2537 	ret
                                   2538 ;------------------------------------------------------------
                                   2539 ;Allocation info for local variables in function 'print_all_buffers'
                                   2540 ;------------------------------------------------------------
                                   2541 ;i                         Allocated with name '_print_all_buffers_i_131072_99'
                                   2542 ;------------------------------------------------------------
                                   2543 ;	program.c:427: void print_all_buffers()
                                   2544 ;	-----------------------------------------
                                   2545 ;	 function print_all_buffers
                                   2546 ;	-----------------------------------------
      000B3E                       2547 _print_all_buffers:
                                   2548 ;	program.c:429: DEBUGPORT(0xC)
      000B3E 75 82 0C         [24] 2549 	mov	dpl,#0x0c
      000B41 12 0E 5E         [24] 2550 	lcall	_dataout
                                   2551 ;	program.c:430: for (int i = 0; i < program_stats.total_buffers; i++)
      000B44 7E 00            [12] 2552 	mov	r6,#0x00
      000B46 7F 00            [12] 2553 	mov	r7,#0x00
      000B48                       2554 00103$:
      000B48 90 00 09         [24] 2555 	mov	dptr,#(_program_stats + 0x0008)
      000B4B E0               [24] 2556 	movx	a,@dptr
      000B4C FC               [12] 2557 	mov	r4,a
      000B4D A3               [24] 2558 	inc	dptr
      000B4E E0               [24] 2559 	movx	a,@dptr
      000B4F FD               [12] 2560 	mov	r5,a
      000B50 C3               [12] 2561 	clr	c
      000B51 EE               [12] 2562 	mov	a,r6
      000B52 9C               [12] 2563 	subb	a,r4
      000B53 EF               [12] 2564 	mov	a,r7
      000B54 64 80            [12] 2565 	xrl	a,#0x80
      000B56 8D F0            [24] 2566 	mov	b,r5
      000B58 63 F0 80         [24] 2567 	xrl	b,#0x80
      000B5B 95 F0            [12] 2568 	subb	a,b
      000B5D 40 03            [24] 2569 	jc	00116$
      000B5F 02 0C 98         [24] 2570 	ljmp	00101$
      000B62                       2571 00116$:
                                   2572 ;	program.c:432: printf("****************BUFFER*%d***************\n\r", i);
      000B62 C0 07            [24] 2573 	push	ar7
      000B64 C0 06            [24] 2574 	push	ar6
      000B66 C0 06            [24] 2575 	push	ar6
      000B68 C0 07            [24] 2576 	push	ar7
      000B6A 74 1D            [12] 2577 	mov	a,#___str_34
      000B6C C0 E0            [24] 2578 	push	acc
      000B6E 74 21            [12] 2579 	mov	a,#(___str_34 >> 8)
      000B70 C0 E0            [24] 2580 	push	acc
      000B72 74 80            [12] 2581 	mov	a,#0x80
      000B74 C0 E0            [24] 2582 	push	acc
      000B76 12 12 7D         [24] 2583 	lcall	_printf
      000B79 E5 81            [12] 2584 	mov	a,sp
      000B7B 24 FB            [12] 2585 	add	a,#0xfb
      000B7D F5 81            [12] 2586 	mov	sp,a
      000B7F D0 06            [24] 2587 	pop	ar6
      000B81 D0 07            [24] 2588 	pop	ar7
                                   2589 ;	program.c:433: printf("Buffer#: %d \n\r", buffers_array[i].buffer_num);
      000B83 90 15 0E         [24] 2590 	mov	dptr,#__mulint_PARM_2
      000B86 EE               [12] 2591 	mov	a,r6
      000B87 F0               [24] 2592 	movx	@dptr,a
      000B88 EF               [12] 2593 	mov	a,r7
      000B89 A3               [24] 2594 	inc	dptr
      000B8A F0               [24] 2595 	movx	@dptr,a
      000B8B 90 00 0C         [24] 2596 	mov	dptr,#0x000c
      000B8E C0 07            [24] 2597 	push	ar7
      000B90 C0 06            [24] 2598 	push	ar6
      000B92 12 12 0F         [24] 2599 	lcall	__mulint
      000B95 AC 82            [24] 2600 	mov	r4,dpl
      000B97 AD 83            [24] 2601 	mov	r5,dph
      000B99 EC               [12] 2602 	mov	a,r4
      000B9A 24 0B            [12] 2603 	add	a,#_buffers_array
      000B9C F5 82            [12] 2604 	mov	dpl,a
      000B9E ED               [12] 2605 	mov	a,r5
      000B9F 34 00            [12] 2606 	addc	a,#(_buffers_array >> 8)
      000BA1 F5 83            [12] 2607 	mov	dph,a
      000BA3 E0               [24] 2608 	movx	a,@dptr
      000BA4 FA               [12] 2609 	mov	r2,a
      000BA5 A3               [24] 2610 	inc	dptr
      000BA6 E0               [24] 2611 	movx	a,@dptr
      000BA7 FB               [12] 2612 	mov	r3,a
      000BA8 C0 05            [24] 2613 	push	ar5
      000BAA C0 04            [24] 2614 	push	ar4
      000BAC C0 02            [24] 2615 	push	ar2
      000BAE C0 03            [24] 2616 	push	ar3
      000BB0 74 48            [12] 2617 	mov	a,#___str_35
      000BB2 C0 E0            [24] 2618 	push	acc
      000BB4 74 21            [12] 2619 	mov	a,#(___str_35 >> 8)
      000BB6 C0 E0            [24] 2620 	push	acc
      000BB8 74 80            [12] 2621 	mov	a,#0x80
      000BBA C0 E0            [24] 2622 	push	acc
      000BBC 12 12 7D         [24] 2623 	lcall	_printf
      000BBF E5 81            [12] 2624 	mov	a,sp
      000BC1 24 FB            [12] 2625 	add	a,#0xfb
      000BC3 F5 81            [12] 2626 	mov	sp,a
      000BC5 D0 04            [24] 2627 	pop	ar4
      000BC7 D0 05            [24] 2628 	pop	ar5
                                   2629 ;	program.c:434: printf("BufferStart: %p \n\r", buffers_array[i].buffer_start);
      000BC9 EC               [12] 2630 	mov	a,r4
      000BCA 24 0B            [12] 2631 	add	a,#_buffers_array
      000BCC FC               [12] 2632 	mov	r4,a
      000BCD ED               [12] 2633 	mov	a,r5
      000BCE 34 00            [12] 2634 	addc	a,#(_buffers_array >> 8)
      000BD0 FD               [12] 2635 	mov	r5,a
      000BD1 8C 82            [24] 2636 	mov	dpl,r4
      000BD3 8D 83            [24] 2637 	mov	dph,r5
      000BD5 A3               [24] 2638 	inc	dptr
      000BD6 A3               [24] 2639 	inc	dptr
      000BD7 E0               [24] 2640 	movx	a,@dptr
      000BD8 F9               [12] 2641 	mov	r1,a
      000BD9 A3               [24] 2642 	inc	dptr
      000BDA E0               [24] 2643 	movx	a,@dptr
      000BDB FA               [12] 2644 	mov	r2,a
      000BDC A3               [24] 2645 	inc	dptr
      000BDD E0               [24] 2646 	movx	a,@dptr
      000BDE FB               [12] 2647 	mov	r3,a
      000BDF C0 05            [24] 2648 	push	ar5
      000BE1 C0 04            [24] 2649 	push	ar4
      000BE3 C0 01            [24] 2650 	push	ar1
      000BE5 C0 02            [24] 2651 	push	ar2
      000BE7 C0 03            [24] 2652 	push	ar3
      000BE9 74 57            [12] 2653 	mov	a,#___str_36
      000BEB C0 E0            [24] 2654 	push	acc
      000BED 74 21            [12] 2655 	mov	a,#(___str_36 >> 8)
      000BEF C0 E0            [24] 2656 	push	acc
      000BF1 74 80            [12] 2657 	mov	a,#0x80
      000BF3 C0 E0            [24] 2658 	push	acc
      000BF5 12 12 7D         [24] 2659 	lcall	_printf
      000BF8 E5 81            [12] 2660 	mov	a,sp
      000BFA 24 FA            [12] 2661 	add	a,#0xfa
      000BFC F5 81            [12] 2662 	mov	sp,a
      000BFE D0 04            [24] 2663 	pop	ar4
      000C00 D0 05            [24] 2664 	pop	ar5
                                   2665 ;	program.c:435: printf("BufferEnd: %p \n\r", buffers_array[i].buffer_end);
      000C02 8C 82            [24] 2666 	mov	dpl,r4
      000C04 8D 83            [24] 2667 	mov	dph,r5
      000C06 A3               [24] 2668 	inc	dptr
      000C07 A3               [24] 2669 	inc	dptr
      000C08 A3               [24] 2670 	inc	dptr
      000C09 A3               [24] 2671 	inc	dptr
      000C0A A3               [24] 2672 	inc	dptr
      000C0B E0               [24] 2673 	movx	a,@dptr
      000C0C F9               [12] 2674 	mov	r1,a
      000C0D A3               [24] 2675 	inc	dptr
      000C0E E0               [24] 2676 	movx	a,@dptr
      000C0F FA               [12] 2677 	mov	r2,a
      000C10 A3               [24] 2678 	inc	dptr
      000C11 E0               [24] 2679 	movx	a,@dptr
      000C12 FB               [12] 2680 	mov	r3,a
      000C13 C0 05            [24] 2681 	push	ar5
      000C15 C0 04            [24] 2682 	push	ar4
      000C17 C0 01            [24] 2683 	push	ar1
      000C19 C0 02            [24] 2684 	push	ar2
      000C1B C0 03            [24] 2685 	push	ar3
      000C1D 74 6A            [12] 2686 	mov	a,#___str_37
      000C1F C0 E0            [24] 2687 	push	acc
      000C21 74 21            [12] 2688 	mov	a,#(___str_37 >> 8)
      000C23 C0 E0            [24] 2689 	push	acc
      000C25 74 80            [12] 2690 	mov	a,#0x80
      000C27 C0 E0            [24] 2691 	push	acc
      000C29 12 12 7D         [24] 2692 	lcall	_printf
      000C2C E5 81            [12] 2693 	mov	a,sp
      000C2E 24 FA            [12] 2694 	add	a,#0xfa
      000C30 F5 81            [12] 2695 	mov	sp,a
      000C32 D0 04            [24] 2696 	pop	ar4
      000C34 D0 05            [24] 2697 	pop	ar5
                                   2698 ;	program.c:436: printf("BufferSize: %d \n\r", buffers_array[i].buff_size);
      000C36 74 08            [12] 2699 	mov	a,#0x08
      000C38 2C               [12] 2700 	add	a,r4
      000C39 F5 82            [12] 2701 	mov	dpl,a
      000C3B E4               [12] 2702 	clr	a
      000C3C 3D               [12] 2703 	addc	a,r5
      000C3D F5 83            [12] 2704 	mov	dph,a
      000C3F E0               [24] 2705 	movx	a,@dptr
      000C40 FA               [12] 2706 	mov	r2,a
      000C41 A3               [24] 2707 	inc	dptr
      000C42 E0               [24] 2708 	movx	a,@dptr
      000C43 FB               [12] 2709 	mov	r3,a
      000C44 C0 05            [24] 2710 	push	ar5
      000C46 C0 04            [24] 2711 	push	ar4
      000C48 C0 02            [24] 2712 	push	ar2
      000C4A C0 03            [24] 2713 	push	ar3
      000C4C 74 7B            [12] 2714 	mov	a,#___str_38
      000C4E C0 E0            [24] 2715 	push	acc
      000C50 74 21            [12] 2716 	mov	a,#(___str_38 >> 8)
      000C52 C0 E0            [24] 2717 	push	acc
      000C54 74 80            [12] 2718 	mov	a,#0x80
      000C56 C0 E0            [24] 2719 	push	acc
      000C58 12 12 7D         [24] 2720 	lcall	_printf
      000C5B E5 81            [12] 2721 	mov	a,sp
      000C5D 24 FB            [12] 2722 	add	a,#0xfb
      000C5F F5 81            [12] 2723 	mov	sp,a
      000C61 D0 04            [24] 2724 	pop	ar4
      000C63 D0 05            [24] 2725 	pop	ar5
                                   2726 ;	program.c:437: printf("TotalUsed: %d \n\r", buffers_array[i].num_char);
      000C65 74 0A            [12] 2727 	mov	a,#0x0a
      000C67 2C               [12] 2728 	add	a,r4
      000C68 F5 82            [12] 2729 	mov	dpl,a
      000C6A E4               [12] 2730 	clr	a
      000C6B 3D               [12] 2731 	addc	a,r5
      000C6C F5 83            [12] 2732 	mov	dph,a
      000C6E E0               [24] 2733 	movx	a,@dptr
      000C6F FC               [12] 2734 	mov	r4,a
      000C70 A3               [24] 2735 	inc	dptr
      000C71 E0               [24] 2736 	movx	a,@dptr
      000C72 FD               [12] 2737 	mov	r5,a
      000C73 C0 04            [24] 2738 	push	ar4
      000C75 C0 05            [24] 2739 	push	ar5
      000C77 74 8D            [12] 2740 	mov	a,#___str_39
      000C79 C0 E0            [24] 2741 	push	acc
      000C7B 74 21            [12] 2742 	mov	a,#(___str_39 >> 8)
      000C7D C0 E0            [24] 2743 	push	acc
      000C7F 74 80            [12] 2744 	mov	a,#0x80
      000C81 C0 E0            [24] 2745 	push	acc
      000C83 12 12 7D         [24] 2746 	lcall	_printf
      000C86 E5 81            [12] 2747 	mov	a,sp
      000C88 24 FB            [12] 2748 	add	a,#0xfb
      000C8A F5 81            [12] 2749 	mov	sp,a
      000C8C D0 06            [24] 2750 	pop	ar6
      000C8E D0 07            [24] 2751 	pop	ar7
                                   2752 ;	program.c:430: for (int i = 0; i < program_stats.total_buffers; i++)
      000C90 0E               [12] 2753 	inc	r6
      000C91 BE 00 01         [24] 2754 	cjne	r6,#0x00,00117$
      000C94 0F               [12] 2755 	inc	r7
      000C95                       2756 00117$:
      000C95 02 0B 48         [24] 2757 	ljmp	00103$
      000C98                       2758 00101$:
                                   2759 ;	program.c:439: printf("***************************************\n\r");
      000C98 74 9E            [12] 2760 	mov	a,#___str_40
      000C9A C0 E0            [24] 2761 	push	acc
      000C9C 74 21            [12] 2762 	mov	a,#(___str_40 >> 8)
      000C9E C0 E0            [24] 2763 	push	acc
      000CA0 74 80            [12] 2764 	mov	a,#0x80
      000CA2 C0 E0            [24] 2765 	push	acc
      000CA4 12 12 7D         [24] 2766 	lcall	_printf
      000CA7 15 81            [12] 2767 	dec	sp
      000CA9 15 81            [12] 2768 	dec	sp
      000CAB 15 81            [12] 2769 	dec	sp
                                   2770 ;	program.c:440: }
      000CAD 22               [24] 2771 	ret
                                   2772 ;------------------------------------------------------------
                                   2773 ;Allocation info for local variables in function 'get_number'
                                   2774 ;------------------------------------------------------------
                                   2775 ;total_chars               Allocated with name '_get_number_total_chars_65536_101'
                                   2776 ;rec                       Allocated with name '_get_number_rec_65537_103'
                                   2777 ;num                       Allocated with name '_get_number_num_65537_103'
                                   2778 ;i                         Allocated with name '_get_number_i_131073_104'
                                   2779 ;------------------------------------------------------------
                                   2780 ;	program.c:447: int get_number(int total_chars)
                                   2781 ;	-----------------------------------------
                                   2782 ;	 function get_number
                                   2783 ;	-----------------------------------------
      000CAE                       2784 _get_number:
      000CAE AF 83            [24] 2785 	mov	r7,dph
      000CB0 E5 82            [12] 2786 	mov	a,dpl
      000CB2 90 01 5F         [24] 2787 	mov	dptr,#_get_number_total_chars_65536_101
      000CB5 F0               [24] 2788 	movx	@dptr,a
      000CB6 EF               [12] 2789 	mov	a,r7
      000CB7 A3               [24] 2790 	inc	dptr
      000CB8 F0               [24] 2791 	movx	@dptr,a
                                   2792 ;	program.c:449: DEBUGPORT(0xD);
      000CB9 75 82 0D         [24] 2793 	mov	dpl,#0x0d
      000CBC 12 0E 5E         [24] 2794 	lcall	_dataout
                                   2795 ;	program.c:451: int num = 0;
      000CBF 90 01 61         [24] 2796 	mov	dptr,#_get_number_num_65537_103
      000CC2 E4               [12] 2797 	clr	a
      000CC3 F0               [24] 2798 	movx	@dptr,a
      000CC4 A3               [24] 2799 	inc	dptr
      000CC5 F0               [24] 2800 	movx	@dptr,a
                                   2801 ;	program.c:452: for (int i = total_chars; i > 0; i--)
      000CC6 90 01 5F         [24] 2802 	mov	dptr,#_get_number_total_chars_65536_101
      000CC9 E0               [24] 2803 	movx	a,@dptr
      000CCA FE               [12] 2804 	mov	r6,a
      000CCB A3               [24] 2805 	inc	dptr
      000CCC E0               [24] 2806 	movx	a,@dptr
      000CCD FF               [12] 2807 	mov	r7,a
      000CCE                       2808 00107$:
      000CCE C3               [12] 2809 	clr	c
      000CCF E4               [12] 2810 	clr	a
      000CD0 9E               [12] 2811 	subb	a,r6
      000CD1 74 80            [12] 2812 	mov	a,#(0x00 ^ 0x80)
      000CD3 8F F0            [24] 2813 	mov	b,r7
      000CD5 63 F0 80         [24] 2814 	xrl	b,#0x80
      000CD8 95 F0            [12] 2815 	subb	a,b
      000CDA 40 03            [24] 2816 	jc	00127$
      000CDC 02 0D 7A         [24] 2817 	ljmp	00105$
      000CDF                       2818 00127$:
                                   2819 ;	program.c:454: rec = getchar();
      000CDF C0 07            [24] 2820 	push	ar7
      000CE1 C0 06            [24] 2821 	push	ar6
      000CE3 12 0E 22         [24] 2822 	lcall	_getchar
      000CE6 AC 82            [24] 2823 	mov	r4,dpl
      000CE8 AD 83            [24] 2824 	mov	r5,dph
      000CEA D0 06            [24] 2825 	pop	ar6
      000CEC D0 07            [24] 2826 	pop	ar7
                                   2827 ;	program.c:456: if (rec <= 0x39 && rec >= 0x30)
      000CEE C3               [12] 2828 	clr	c
      000CEF 74 39            [12] 2829 	mov	a,#0x39
      000CF1 9C               [12] 2830 	subb	a,r4
      000CF2 74 80            [12] 2831 	mov	a,#(0x00 ^ 0x80)
      000CF4 8D F0            [24] 2832 	mov	b,r5
      000CF6 63 F0 80         [24] 2833 	xrl	b,#0x80
      000CF9 95 F0            [12] 2834 	subb	a,b
      000CFB 40 5C            [24] 2835 	jc	00102$
      000CFD EC               [12] 2836 	mov	a,r4
      000CFE 94 30            [12] 2837 	subb	a,#0x30
      000D00 ED               [12] 2838 	mov	a,r5
      000D01 64 80            [12] 2839 	xrl	a,#0x80
      000D03 94 80            [12] 2840 	subb	a,#0x80
      000D05 40 52            [24] 2841 	jc	00102$
                                   2842 ;	program.c:458: num += ((rec - 0x30) * get_num_helper(i - 1));
      000D07 EC               [12] 2843 	mov	a,r4
      000D08 24 D0            [12] 2844 	add	a,#0xd0
      000D0A FC               [12] 2845 	mov	r4,a
      000D0B ED               [12] 2846 	mov	a,r5
      000D0C 34 FF            [12] 2847 	addc	a,#0xff
      000D0E FD               [12] 2848 	mov	r5,a
      000D0F EE               [12] 2849 	mov	a,r6
      000D10 24 FF            [12] 2850 	add	a,#0xff
      000D12 FA               [12] 2851 	mov	r2,a
      000D13 EF               [12] 2852 	mov	a,r7
      000D14 34 FF            [12] 2853 	addc	a,#0xff
      000D16 FB               [12] 2854 	mov	r3,a
      000D17 8A 82            [24] 2855 	mov	dpl,r2
      000D19 8B 83            [24] 2856 	mov	dph,r3
      000D1B C0 07            [24] 2857 	push	ar7
      000D1D C0 06            [24] 2858 	push	ar6
      000D1F C0 05            [24] 2859 	push	ar5
      000D21 C0 04            [24] 2860 	push	ar4
      000D23 12 0D 86         [24] 2861 	lcall	_get_num_helper
      000D26 AA 82            [24] 2862 	mov	r2,dpl
      000D28 AB 83            [24] 2863 	mov	r3,dph
      000D2A D0 04            [24] 2864 	pop	ar4
      000D2C D0 05            [24] 2865 	pop	ar5
      000D2E 90 15 0E         [24] 2866 	mov	dptr,#__mulint_PARM_2
      000D31 EA               [12] 2867 	mov	a,r2
      000D32 F0               [24] 2868 	movx	@dptr,a
      000D33 EB               [12] 2869 	mov	a,r3
      000D34 A3               [24] 2870 	inc	dptr
      000D35 F0               [24] 2871 	movx	@dptr,a
      000D36 8C 82            [24] 2872 	mov	dpl,r4
      000D38 8D 83            [24] 2873 	mov	dph,r5
      000D3A 12 12 0F         [24] 2874 	lcall	__mulint
      000D3D AC 82            [24] 2875 	mov	r4,dpl
      000D3F AD 83            [24] 2876 	mov	r5,dph
      000D41 D0 06            [24] 2877 	pop	ar6
      000D43 D0 07            [24] 2878 	pop	ar7
      000D45 90 01 61         [24] 2879 	mov	dptr,#_get_number_num_65537_103
      000D48 E0               [24] 2880 	movx	a,@dptr
      000D49 FA               [12] 2881 	mov	r2,a
      000D4A A3               [24] 2882 	inc	dptr
      000D4B E0               [24] 2883 	movx	a,@dptr
      000D4C FB               [12] 2884 	mov	r3,a
      000D4D 90 01 61         [24] 2885 	mov	dptr,#_get_number_num_65537_103
      000D50 EC               [12] 2886 	mov	a,r4
      000D51 2A               [12] 2887 	add	a,r2
      000D52 F0               [24] 2888 	movx	@dptr,a
      000D53 ED               [12] 2889 	mov	a,r5
      000D54 3B               [12] 2890 	addc	a,r3
      000D55 A3               [24] 2891 	inc	dptr
      000D56 F0               [24] 2892 	movx	@dptr,a
      000D57 80 19            [24] 2893 	sjmp	00108$
      000D59                       2894 00102$:
                                   2895 ;	program.c:462: printf("ERR,Numbers ONLY!\n\r");
      000D59 74 C8            [12] 2896 	mov	a,#___str_41
      000D5B C0 E0            [24] 2897 	push	acc
      000D5D 74 21            [12] 2898 	mov	a,#(___str_41 >> 8)
      000D5F C0 E0            [24] 2899 	push	acc
      000D61 74 80            [12] 2900 	mov	a,#0x80
      000D63 C0 E0            [24] 2901 	push	acc
      000D65 12 12 7D         [24] 2902 	lcall	_printf
      000D68 15 81            [12] 2903 	dec	sp
      000D6A 15 81            [12] 2904 	dec	sp
      000D6C 15 81            [12] 2905 	dec	sp
                                   2906 ;	program.c:463: return -1;
      000D6E 90 FF FF         [24] 2907 	mov	dptr,#0xffff
      000D71 22               [24] 2908 	ret
      000D72                       2909 00108$:
                                   2910 ;	program.c:452: for (int i = total_chars; i > 0; i--)
      000D72 1E               [12] 2911 	dec	r6
      000D73 BE FF 01         [24] 2912 	cjne	r6,#0xff,00130$
      000D76 1F               [12] 2913 	dec	r7
      000D77                       2914 00130$:
      000D77 02 0C CE         [24] 2915 	ljmp	00107$
      000D7A                       2916 00105$:
                                   2917 ;	program.c:466: return num;
      000D7A 90 01 61         [24] 2918 	mov	dptr,#_get_number_num_65537_103
      000D7D E0               [24] 2919 	movx	a,@dptr
      000D7E FE               [12] 2920 	mov	r6,a
      000D7F A3               [24] 2921 	inc	dptr
      000D80 E0               [24] 2922 	movx	a,@dptr
                                   2923 ;	program.c:467: }
      000D81 8E 82            [24] 2924 	mov	dpl,r6
      000D83 F5 83            [12] 2925 	mov	dph,a
      000D85 22               [24] 2926 	ret
                                   2927 ;------------------------------------------------------------
                                   2928 ;Allocation info for local variables in function 'get_num_helper'
                                   2929 ;------------------------------------------------------------
                                   2930 ;times                     Allocated with name '_get_num_helper_times_65536_108'
                                   2931 ;num                       Allocated with name '_get_num_helper_num_65536_109'
                                   2932 ;i                         Allocated with name '_get_num_helper_i_131072_110'
                                   2933 ;------------------------------------------------------------
                                   2934 ;	program.c:474: int get_num_helper(int times)
                                   2935 ;	-----------------------------------------
                                   2936 ;	 function get_num_helper
                                   2937 ;	-----------------------------------------
      000D86                       2938 _get_num_helper:
      000D86 AF 83            [24] 2939 	mov	r7,dph
      000D88 E5 82            [12] 2940 	mov	a,dpl
      000D8A 90 01 63         [24] 2941 	mov	dptr,#_get_num_helper_times_65536_108
      000D8D F0               [24] 2942 	movx	@dptr,a
      000D8E EF               [12] 2943 	mov	a,r7
      000D8F A3               [24] 2944 	inc	dptr
      000D90 F0               [24] 2945 	movx	@dptr,a
                                   2946 ;	program.c:476: int num = 1;
      000D91 90 01 65         [24] 2947 	mov	dptr,#_get_num_helper_num_65536_109
      000D94 74 01            [12] 2948 	mov	a,#0x01
      000D96 F0               [24] 2949 	movx	@dptr,a
      000D97 E4               [12] 2950 	clr	a
      000D98 A3               [24] 2951 	inc	dptr
      000D99 F0               [24] 2952 	movx	@dptr,a
                                   2953 ;	program.c:478: for (int i = 0; i < times; i++)
      000D9A 90 01 63         [24] 2954 	mov	dptr,#_get_num_helper_times_65536_108
      000D9D E0               [24] 2955 	movx	a,@dptr
      000D9E FE               [12] 2956 	mov	r6,a
      000D9F A3               [24] 2957 	inc	dptr
      000DA0 E0               [24] 2958 	movx	a,@dptr
      000DA1 FF               [12] 2959 	mov	r7,a
      000DA2 7C 00            [12] 2960 	mov	r4,#0x00
      000DA4 7D 00            [12] 2961 	mov	r5,#0x00
      000DA6                       2962 00106$:
      000DA6 C3               [12] 2963 	clr	c
      000DA7 EC               [12] 2964 	mov	a,r4
      000DA8 9E               [12] 2965 	subb	a,r6
      000DA9 ED               [12] 2966 	mov	a,r5
      000DAA 64 80            [12] 2967 	xrl	a,#0x80
      000DAC 8F F0            [24] 2968 	mov	b,r7
      000DAE 63 F0 80         [24] 2969 	xrl	b,#0x80
      000DB1 95 F0            [12] 2970 	subb	a,b
      000DB3 50 3A            [24] 2971 	jnc	00101$
                                   2972 ;	program.c:480: num = num * 10;
      000DB5 90 01 65         [24] 2973 	mov	dptr,#_get_num_helper_num_65536_109
      000DB8 E0               [24] 2974 	movx	a,@dptr
      000DB9 FA               [12] 2975 	mov	r2,a
      000DBA A3               [24] 2976 	inc	dptr
      000DBB E0               [24] 2977 	movx	a,@dptr
      000DBC FB               [12] 2978 	mov	r3,a
      000DBD 90 15 0E         [24] 2979 	mov	dptr,#__mulint_PARM_2
      000DC0 EA               [12] 2980 	mov	a,r2
      000DC1 F0               [24] 2981 	movx	@dptr,a
      000DC2 EB               [12] 2982 	mov	a,r3
      000DC3 A3               [24] 2983 	inc	dptr
      000DC4 F0               [24] 2984 	movx	@dptr,a
      000DC5 90 00 0A         [24] 2985 	mov	dptr,#0x000a
      000DC8 C0 07            [24] 2986 	push	ar7
      000DCA C0 06            [24] 2987 	push	ar6
      000DCC C0 05            [24] 2988 	push	ar5
      000DCE C0 04            [24] 2989 	push	ar4
      000DD0 12 12 0F         [24] 2990 	lcall	__mulint
      000DD3 E5 82            [12] 2991 	mov	a,dpl
      000DD5 85 83 F0         [24] 2992 	mov	b,dph
      000DD8 D0 04            [24] 2993 	pop	ar4
      000DDA D0 05            [24] 2994 	pop	ar5
      000DDC D0 06            [24] 2995 	pop	ar6
      000DDE D0 07            [24] 2996 	pop	ar7
      000DE0 90 01 65         [24] 2997 	mov	dptr,#_get_num_helper_num_65536_109
      000DE3 F0               [24] 2998 	movx	@dptr,a
      000DE4 E5 F0            [12] 2999 	mov	a,b
      000DE6 A3               [24] 3000 	inc	dptr
      000DE7 F0               [24] 3001 	movx	@dptr,a
                                   3002 ;	program.c:478: for (int i = 0; i < times; i++)
      000DE8 0C               [12] 3003 	inc	r4
      000DE9 BC 00 BA         [24] 3004 	cjne	r4,#0x00,00106$
      000DEC 0D               [12] 3005 	inc	r5
      000DED 80 B7            [24] 3006 	sjmp	00106$
      000DEF                       3007 00101$:
                                   3008 ;	program.c:482: if (times == 0)
      000DEF EE               [12] 3009 	mov	a,r6
      000DF0 4F               [12] 3010 	orl	a,r7
      000DF1 70 04            [24] 3011 	jnz	00103$
                                   3012 ;	program.c:483: return 1;
      000DF3 90 00 01         [24] 3013 	mov	dptr,#0x0001
      000DF6 22               [24] 3014 	ret
      000DF7                       3015 00103$:
                                   3016 ;	program.c:485: return num;
      000DF7 90 01 65         [24] 3017 	mov	dptr,#_get_num_helper_num_65536_109
      000DFA E0               [24] 3018 	movx	a,@dptr
      000DFB FE               [12] 3019 	mov	r6,a
      000DFC A3               [24] 3020 	inc	dptr
      000DFD E0               [24] 3021 	movx	a,@dptr
                                   3022 ;	program.c:486: }
      000DFE 8E 82            [24] 3023 	mov	dpl,r6
      000E00 F5 83            [12] 3024 	mov	dph,a
      000E02 22               [24] 3025 	ret
                                   3026 ;------------------------------------------------------------
                                   3027 ;Allocation info for local variables in function 'putchar'
                                   3028 ;------------------------------------------------------------
                                   3029 ;c                         Allocated with name '_putchar_c_65536_112'
                                   3030 ;------------------------------------------------------------
                                   3031 ;	program.c:493: int putchar(int c)
                                   3032 ;	-----------------------------------------
                                   3033 ;	 function putchar
                                   3034 ;	-----------------------------------------
      000E03                       3035 _putchar:
      000E03 AF 83            [24] 3036 	mov	r7,dph
      000E05 E5 82            [12] 3037 	mov	a,dpl
      000E07 90 01 67         [24] 3038 	mov	dptr,#_putchar_c_65536_112
      000E0A F0               [24] 3039 	movx	@dptr,a
      000E0B EF               [12] 3040 	mov	a,r7
      000E0C A3               [24] 3041 	inc	dptr
      000E0D F0               [24] 3042 	movx	@dptr,a
                                   3043 ;	program.c:495: while ((SCON & 0x02) == 0)
      000E0E                       3044 00101$:
      000E0E E5 98            [12] 3045 	mov	a,_SCON
      000E10 30 E1 FB         [24] 3046 	jnb	acc.1,00101$
                                   3047 ;	program.c:497: TI = 0;
                                   3048 ;	assignBit
      000E13 C2 99            [12] 3049 	clr	_TI
                                   3050 ;	program.c:498: SBUF = c;
      000E15 90 01 67         [24] 3051 	mov	dptr,#_putchar_c_65536_112
      000E18 E0               [24] 3052 	movx	a,@dptr
      000E19 FE               [12] 3053 	mov	r6,a
      000E1A A3               [24] 3054 	inc	dptr
      000E1B E0               [24] 3055 	movx	a,@dptr
      000E1C 8E 99            [24] 3056 	mov	_SBUF,r6
                                   3057 ;	program.c:499: return 0;
      000E1E 90 00 00         [24] 3058 	mov	dptr,#0x0000
                                   3059 ;	program.c:500: }
      000E21 22               [24] 3060 	ret
                                   3061 ;------------------------------------------------------------
                                   3062 ;Allocation info for local variables in function 'getchar'
                                   3063 ;------------------------------------------------------------
                                   3064 ;	program.c:507: int getchar()
                                   3065 ;	-----------------------------------------
                                   3066 ;	 function getchar
                                   3067 ;	-----------------------------------------
      000E22                       3068 _getchar:
                                   3069 ;	program.c:509: while (RI == 0)
      000E22                       3070 00101$:
                                   3071 ;	program.c:511: RI = 0;
                                   3072 ;	assignBit
      000E22 10 98 02         [24] 3073 	jbc	_RI,00140$
      000E25 80 FB            [24] 3074 	sjmp	00101$
      000E27                       3075 00140$:
                                   3076 ;	program.c:513: if (SBUF != 0x3F && SBUF != 0x3D && SBUF != 0x40 && SBUF != 0x2B && SBUF != 0x2D)
      000E27 74 3F            [12] 3077 	mov	a,#0x3f
      000E29 B5 99 02         [24] 3078 	cjne	a,_SBUF,00141$
      000E2C 80 27            [24] 3079 	sjmp	00105$
      000E2E                       3080 00141$:
      000E2E 74 3D            [12] 3081 	mov	a,#0x3d
      000E30 B5 99 02         [24] 3082 	cjne	a,_SBUF,00142$
      000E33 80 20            [24] 3083 	sjmp	00105$
      000E35                       3084 00142$:
      000E35 74 40            [12] 3085 	mov	a,#0x40
      000E37 B5 99 02         [24] 3086 	cjne	a,_SBUF,00143$
      000E3A 80 19            [24] 3087 	sjmp	00105$
      000E3C                       3088 00143$:
      000E3C 74 2B            [12] 3089 	mov	a,#0x2b
      000E3E B5 99 02         [24] 3090 	cjne	a,_SBUF,00144$
      000E41 80 12            [24] 3091 	sjmp	00105$
      000E43                       3092 00144$:
      000E43 74 2D            [12] 3093 	mov	a,#0x2d
      000E45 B5 99 02         [24] 3094 	cjne	a,_SBUF,00145$
      000E48 80 0B            [24] 3095 	sjmp	00105$
      000E4A                       3096 00145$:
                                   3097 ;	program.c:514: putchar(SBUF);
      000E4A AE 99            [24] 3098 	mov	r6,_SBUF
      000E4C 7F 00            [12] 3099 	mov	r7,#0x00
      000E4E 8E 82            [24] 3100 	mov	dpl,r6
      000E50 8F 83            [24] 3101 	mov	dph,r7
      000E52 12 0E 03         [24] 3102 	lcall	_putchar
      000E55                       3103 00105$:
                                   3104 ;	program.c:515: return SBUF;
      000E55 AE 99            [24] 3105 	mov	r6,_SBUF
      000E57 7F 00            [12] 3106 	mov	r7,#0x00
      000E59 8E 82            [24] 3107 	mov	dpl,r6
      000E5B 8F 83            [24] 3108 	mov	dph,r7
                                   3109 ;	program.c:516: }
      000E5D 22               [24] 3110 	ret
                                   3111 ;------------------------------------------------------------
                                   3112 ;Allocation info for local variables in function 'dataout'
                                   3113 ;------------------------------------------------------------
                                   3114 ;data                      Allocated with name '_dataout_data_65536_115'
                                   3115 ;------------------------------------------------------------
                                   3116 ;	program.c:523: void dataout(unsigned char data)
                                   3117 ;	-----------------------------------------
                                   3118 ;	 function dataout
                                   3119 ;	-----------------------------------------
      000E5E                       3120 _dataout:
      000E5E E5 82            [12] 3121 	mov	a,dpl
      000E60 90 01 69         [24] 3122 	mov	dptr,#_dataout_data_65536_115
      000E63 F0               [24] 3123 	movx	@dptr,a
                                   3124 ;	program.c:525: DEBUG_LOC = data;
      000E64 E0               [24] 3125 	movx	a,@dptr
      000E65 90 6F FF         [24] 3126 	mov	dptr,#_DEBUG_LOC
      000E68 F0               [24] 3127 	movx	@dptr,a
                                   3128 ;	program.c:526: }
      000E69 22               [24] 3129 	ret
                                   3130 ;------------------------------------------------------------
                                   3131 ;Allocation info for local variables in function '_sdcc_external_startup'
                                   3132 ;------------------------------------------------------------
                                   3133 ;	program.c:533: _sdcc_external_startup()
                                   3134 ;	-----------------------------------------
                                   3135 ;	 function _sdcc_external_startup
                                   3136 ;	-----------------------------------------
      000E6A                       3137 __sdcc_external_startup:
                                   3138 ;	program.c:535: _AUXR = 0xC;
      000E6A 75 8E 0C         [24] 3139 	mov	__AUXR,#0x0c
                                   3140 ;	program.c:537: SCON = 0x42;
      000E6D 75 98 42         [24] 3141 	mov	_SCON,#0x42
                                   3142 ;	program.c:539: PCON = 0x80;
      000E70 75 87 80         [24] 3143 	mov	_PCON,#0x80
                                   3144 ;	program.c:541: TH1 = 255;
      000E73 75 8D FF         [24] 3145 	mov	_TH1,#0xff
                                   3146 ;	program.c:542: TL1 = 255;
      000E76 75 8B FF         [24] 3147 	mov	_TL1,#0xff
                                   3148 ;	program.c:544: TMOD = 0x20;
      000E79 75 89 20         [24] 3149 	mov	_TMOD,#0x20
                                   3150 ;	program.c:546: REN = 1;
                                   3151 ;	assignBit
      000E7C D2 9C            [12] 3152 	setb	_REN
                                   3153 ;	program.c:548: TR1 = 1;
                                   3154 ;	assignBit
      000E7E D2 8E            [12] 3155 	setb	_TR1
                                   3156 ;	program.c:550: return 0;
      000E80 90 00 00         [24] 3157 	mov	dptr,#0x0000
                                   3158 ;	program.c:551: }
      000E83 22               [24] 3159 	ret
                                   3160 	.area CSEG    (CODE)
                                   3161 	.area CONST   (CODE)
                                   3162 	.area CONST   (CODE)
      001CB8                       3163 ___str_0:
      001CB8 48 45 4C 4C 4F 21 20  3164 	.ascii "HELLO! "
      001CBF 0A                    3165 	.db 0x0a
      001CC0 0D                    3166 	.db 0x0d
      001CC1 00                    3167 	.db 0x00
                                   3168 	.area CSEG    (CODE)
                                   3169 	.area CONST   (CODE)
      001CC2                       3170 ___str_1:
      001CC2 42 75 66 66 65 72 20  3171 	.ascii "Buffer %d Freed ...."
             25 64 20 46 72 65 65
             64 20 2E 2E 2E 2E
      001CD6 0A                    3172 	.db 0x0a
      001CD7 0D                    3173 	.db 0x0d
      001CD8 00                    3174 	.db 0x00
                                   3175 	.area CSEG    (CODE)
                                   3176 	.area CONST   (CODE)
      001CD9                       3177 ___str_2:
      001CD9 4C 65 74 27 73 20 62  3178 	.ascii "Let's begin again.."
             65 67 69 6E 20 61 67
             61 69 6E 2E 2E
      001CEC 0A                    3179 	.db 0x0a
      001CED 0D                    3180 	.db 0x0d
      001CEE 00                    3181 	.db 0x00
                                   3182 	.area CSEG    (CODE)
                                   3183 	.area CONST   (CODE)
      001CEF                       3184 ___str_3:
      001CEF 0A                    3185 	.db 0x0a
      001CF0 0D                    3186 	.db 0x0d
      001CF1 47 69 76 65 20 56 61  3187 	.ascii "Give Valid Buffer Number to delete(1-%d) in 3 digits"
             6C 69 64 20 42 75 66
             66 65 72 20 4E 75 6D
             62 65 72 20 74 6F 20
             64 65 6C 65 74 65 28
             31 2D 25 64 29 20 69
             6E 20 33 20 64 69 67
             69 74 73
      001D25 0A                    3188 	.db 0x0a
      001D26 0D                    3189 	.db 0x0d
      001D27 00                    3190 	.db 0x00
                                   3191 	.area CSEG    (CODE)
                                   3192 	.area CONST   (CODE)
      001D28                       3193 ___str_4:
      001D28 42 75 66 66 65 72 20  3194 	.ascii "Buffer %d Successfully Deleted.. "
             25 64 20 53 75 63 63
             65 73 73 66 75 6C 6C
             79 20 44 65 6C 65 74
             65 64 2E 2E 20
      001D49 0A                    3195 	.db 0x0a
      001D4A 0D                    3196 	.db 0x0d
      001D4B 00                    3197 	.db 0x00
                                   3198 	.area CSEG    (CODE)
                                   3199 	.area CONST   (CODE)
      001D4C                       3200 ___str_5:
      001D4C 0A                    3201 	.db 0x0a
      001D4D 0A                    3202 	.db 0x0a
      001D4E 0D                    3203 	.db 0x0d
      001D4F 5E 5E 5E 5E 5E 5E 5E  3204 	.ascii "^^^^^^^^^^^^^^^^^^^-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ "
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 2D 4D
             45 4E 55 2D 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 20
      001D83 0A                    3205 	.db 0x0a
      001D84 0A                    3206 	.db 0x0a
      001D85 0D                    3207 	.db 0x0d
      001D86 00                    3208 	.db 0x00
                                   3209 	.area CSEG    (CODE)
                                   3210 	.area CONST   (CODE)
      001D87                       3211 ___str_6:
      001D87 59 6F 75 20 63 61 6E  3212 	.ascii "You can enter characters or use commands from below "
             20 65 6E 74 65 72 20
             63 68 61 72 61 63 74
             65 72 73 20 6F 72 20
             75 73 65 20 63 6F 6D
             6D 61 6E 64 73 20 66
             72 6F 6D 20 62 65 6C
             6F 77 20
      001DBB 0A                    3213 	.db 0x0a
      001DBC 0D                    3214 	.db 0x0d
      001DBD 00                    3215 	.db 0x00
                                   3216 	.area CSEG    (CODE)
                                   3217 	.area CONST   (CODE)
      001DBE                       3218 ___str_7:
      001DBE 27 3F 27 20 2D 3E 20  3219 	.ascii "'?' -> Show heap status, dump & clear Buffer 0 "
             53 68 6F 77 20 68 65
             61 70 20 73 74 61 74
             75 73 2C 20 64 75 6D
             70 20 26 20 63 6C 65
             61 72 20 42 75 66 66
             65 72 20 30 20
      001DED 0A                    3220 	.db 0x0a
      001DEE 0D                    3221 	.db 0x0d
      001DEF 00                    3222 	.db 0x00
                                   3223 	.area CSEG    (CODE)
                                   3224 	.area CONST   (CODE)
      001DF0                       3225 ___str_8:
      001DF0 27 2B 27 20 2D 3E 20  3226 	.ascii "'+' -> Add a new Buffer"
             41 64 64 20 61 20 6E
             65 77 20 42 75 66 66
             65 72
      001E07 0A                    3227 	.db 0x0a
      001E08 0D                    3228 	.db 0x0d
      001E09 00                    3229 	.db 0x00
                                   3230 	.area CSEG    (CODE)
                                   3231 	.area CONST   (CODE)
      001E0A                       3232 ___str_9:
      001E0A 27 2D 27 20 2D 3E 20  3233 	.ascii "'-' -> Delete existing Buffer"
             44 65 6C 65 74 65 20
             65 78 69 73 74 69 6E
             67 20 42 75 66 66 65
             72
      001E27 0A                    3234 	.db 0x0a
      001E28 0D                    3235 	.db 0x0d
      001E29 00                    3236 	.db 0x00
                                   3237 	.area CSEG    (CODE)
                                   3238 	.area CONST   (CODE)
      001E2A                       3239 ___str_10:
      001E2A 27 3D 27 20 2D 3E 20  3240 	.ascii "'=' -> Dump Buffer 0 in hex"
             44 75 6D 70 20 42 75
             66 66 65 72 20 30 20
             69 6E 20 68 65 78
      001E45 0A                    3241 	.db 0x0a
      001E46 0D                    3242 	.db 0x0d
      001E47 00                    3243 	.db 0x00
                                   3244 	.area CSEG    (CODE)
                                   3245 	.area CONST   (CODE)
      001E48                       3246 ___str_11:
      001E48 27 40 27 20 2D 3E 20  3247 	.ascii "'@' -> Free all Heap & begin again"
             46 72 65 65 20 61 6C
             6C 20 48 65 61 70 20
             26 20 62 65 67 69 6E
             20 61 67 61 69 6E
      001E6A 0A                    3248 	.db 0x0a
      001E6B 0A                    3249 	.db 0x0a
      001E6C 0D                    3250 	.db 0x0d
      001E6D 00                    3251 	.db 0x00
                                   3252 	.area CSEG    (CODE)
                                   3253 	.area CONST   (CODE)
      001E6E                       3254 ___str_12:
      001E6E 0A                    3255 	.db 0x0a
      001E6F 0D                    3256 	.db 0x0d
      001E70 47 69 76 65 20 56 61  3257 	.ascii "Give Valid Buffer Size(030-300):"
             6C 69 64 20 42 75 66
             66 65 72 20 53 69 7A
             65 28 30 33 30 2D 33
             30 30 29 3A
      001E90 00                    3258 	.db 0x00
                                   3259 	.area CSEG    (CODE)
                                   3260 	.area CONST   (CODE)
      001E91                       3261 ___str_13:
      001E91 46 61 69 6C 65 64 2C  3262 	.ascii "Failed, give smaller buffer"
             20 67 69 76 65 20 73
             6D 61 6C 6C 65 72 20
             62 75 66 66 65 72
      001EAC 0A                    3263 	.db 0x0a
      001EAD 0D                    3264 	.db 0x0d
      001EAE 00                    3265 	.db 0x00
                                   3266 	.area CSEG    (CODE)
                                   3267 	.area CONST   (CODE)
      001EAF                       3268 ___str_14:
      001EAF 0A                    3269 	.db 0x0a
      001EB0 0A                    3270 	.db 0x0a
      001EB1 0D                    3271 	.db 0x0d
      001EB2 23 23 23 23 53 55 43  3272 	.ascii "####SUCCESS, BUFFER Created####"
             43 45 53 53 2C 20 42
             55 46 46 45 52 20 43
             72 65 61 74 65 64 23
             23 23 23
      001ED1 0A                    3273 	.db 0x0a
      001ED2 0A                    3274 	.db 0x0a
      001ED3 0D                    3275 	.db 0x0d
      001ED4 00                    3276 	.db 0x00
                                   3277 	.area CSEG    (CODE)
                                   3278 	.area CONST   (CODE)
      001ED5                       3279 ___str_15:
      001ED5 4E 6F 20 48 65 61 70  3280 	.ascii "No Heap Memory Left, Delete some buffers..."
             20 4D 65 6D 6F 72 79
             20 4C 65 66 74 2C 20
             44 65 6C 65 74 65 20
             73 6F 6D 65 20 62 75
             66 66 65 72 73 2E 2E
             2E
      001F00 0A                    3281 	.db 0x0a
      001F01 0D                    3282 	.db 0x0d
      001F02 00                    3283 	.db 0x00
                                   3284 	.area CSEG    (CODE)
                                   3285 	.area CONST   (CODE)
      001F03                       3286 ___str_16:
      001F03 0A                    3287 	.db 0x0a
      001F04 0D                    3288 	.db 0x0d
      001F05 47 69 76 65 20 56 61  3289 	.ascii "Give Valid Initial Buffer Size(0048-4800):"
             6C 69 64 20 49 6E 69
             74 69 61 6C 20 42 75
             66 66 65 72 20 53 69
             7A 65 28 30 30 34 38
             2D 34 38 30 30 29 3A
      001F2F 00                    3290 	.db 0x00
                                   3291 	.area CSEG    (CODE)
                                   3292 	.area CONST   (CODE)
      001F30                       3293 ___str_17:
      001F30 0A                    3294 	.db 0x0a
      001F31 0D                    3295 	.db 0x0d
      001F32 23 23 23 23 46 41 49  3296 	.ascii "####FAIL, Please give a smaller buffer size####"
             4C 2C 20 50 6C 65 61
             73 65 20 67 69 76 65
             20 61 20 73 6D 61 6C
             6C 65 72 20 62 75 66
             66 65 72 20 73 69 7A
             65 23 23 23 23
      001F61 0A                    3297 	.db 0x0a
      001F62 0A                    3298 	.db 0x0a
      001F63 0D                    3299 	.db 0x0d
      001F64 00                    3300 	.db 0x00
                                   3301 	.area CSEG    (CODE)
                                   3302 	.area CONST   (CODE)
      001F65                       3303 ___str_18:
      001F65 0A                    3304 	.db 0x0a
      001F66 0A                    3305 	.db 0x0a
      001F67 0D                    3306 	.db 0x0d
      001F68 23 23 23 23 53 55 43  3307 	.ascii "####SUCCESS, INITIAL BUFFERS Created####"
             43 45 53 53 2C 20 49
             4E 49 54 49 41 4C 20
             42 55 46 46 45 52 53
             20 43 72 65 61 74 65
             64 23 23 23 23
      001F90 0A                    3308 	.db 0x0a
      001F91 0A                    3309 	.db 0x0a
      001F92 0D                    3310 	.db 0x0d
      001F93 00                    3311 	.db 0x00
                                   3312 	.area CSEG    (CODE)
                                   3313 	.area CONST   (CODE)
      001F94                       3314 ___str_19:
      001F94 0A                    3315 	.db 0x0a
      001F95 0A                    3316 	.db 0x0a
      001F96 0D                    3317 	.db 0x0d
      001F97 2A 2A 2A 2A 2A 2A 2A  3318 	.ascii "***********Buffer-0-Contents*********** "
             2A 2A 2A 2A 42 75 66
             66 65 72 2D 30 2D 43
             6F 6E 74 65 6E 74 73
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 20
      001FBF 0A                    3319 	.db 0x0a
      001FC0 0D                    3320 	.db 0x0d
      001FC1 00                    3321 	.db 0x00
                                   3322 	.area CSEG    (CODE)
                                   3323 	.area CONST   (CODE)
      001FC2                       3324 ___str_20:
      001FC2 0A                    3325 	.db 0x0a
      001FC3 0D                    3326 	.db 0x0d
      001FC4 00                    3327 	.db 0x00
                                   3328 	.area CSEG    (CODE)
                                   3329 	.area CONST   (CODE)
      001FC5                       3330 ___str_21:
      001FC5 0A                    3331 	.db 0x0a
      001FC6 0A                    3332 	.db 0x0a
      001FC7 0D                    3333 	.db 0x0d
      001FC8 00                    3334 	.db 0x00
                                   3335 	.area CSEG    (CODE)
                                   3336 	.area CONST   (CODE)
      001FC9                       3337 ___str_22:
      001FC9 42 75 66 66 65 72 30  3338 	.ascii "Buffer0 is Empty...."
             20 69 73 20 45 6D 70
             74 79 2E 2E 2E 2E
      001FDD 0A                    3339 	.db 0x0a
      001FDE 0D                    3340 	.db 0x0d
      001FDF 00                    3341 	.db 0x00
                                   3342 	.area CSEG    (CODE)
                                   3343 	.area CONST   (CODE)
      001FE0                       3344 ___str_23:
      001FE0 0A                    3345 	.db 0x0a
      001FE1 0D                    3346 	.db 0x0d
      001FE2 2D 2D 2D 2D 2D 2D 2D  3347 	.ascii "-------------------------HEXDUMP----------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 48 45 58
             44 55 4D 50 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D
      00201E 2D 2D 2D 2D           3348 	.ascii "----"
      002022 00                    3349 	.db 0x00
                                   3350 	.area CSEG    (CODE)
                                   3351 	.area CONST   (CODE)
      002023                       3352 ___str_24:
      002023 0A                    3353 	.db 0x0a
      002024 0D                    3354 	.db 0x0d
      002025 20 20 20 20 41 44 44  3355 	.ascii "    ADDR: +0 +1 +2 +3 +4 +5 +6 +7 +8 +9 +A +B +C +D +E +F "
             52 3A 20 2B 30 20 2B
             31 20 2B 32 20 2B 33
             20 2B 34 20 2B 35 20
             2B 36 20 2B 37 20 2B
             38 20 2B 39 20 2B 41
             20 2B 42 20 2B 43 20
             2B 44 20 2B 45 20 2B
             46 20
      00205F 0A                    3356 	.db 0x0a
      002060 0D                    3357 	.db 0x0d
      002061 00                    3358 	.db 0x00
                                   3359 	.area CSEG    (CODE)
                                   3360 	.area CONST   (CODE)
      002062                       3361 ___str_25:
      002062 0A                    3362 	.db 0x0a
      002063 0D                    3363 	.db 0x0d
      002064 25 70 3A 20           3364 	.ascii "%p: "
      002068 00                    3365 	.db 0x00
                                   3366 	.area CSEG    (CODE)
                                   3367 	.area CONST   (CODE)
      002069                       3368 ___str_26:
      002069 25 78 20              3369 	.ascii "%x "
      00206C 00                    3370 	.db 0x00
                                   3371 	.area CSEG    (CODE)
                                   3372 	.area CONST   (CODE)
      00206D                       3373 ___str_27:
      00206D 42 75 66 66 65 72 20  3374 	.ascii "Buffer 0 is empty..."
             30 20 69 73 20 65 6D
             70 74 79 2E 2E 2E
      002081 0A                    3375 	.db 0x0a
      002082 0D                    3376 	.db 0x0d
      002083 00                    3377 	.db 0x00
                                   3378 	.area CSEG    (CODE)
                                   3379 	.area CONST   (CODE)
      002084                       3380 ___str_28:
      002084 0A                    3381 	.db 0x0a
      002085 0D                    3382 	.db 0x0d
      002086 2A 2A 2A 2A 2A 2A 2A  3383 	.ascii "****************HEAP*STATS*************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 48 45 41 50 2A
             53 54 41 54 53 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A
      0020AD 0A                    3384 	.db 0x0a
      0020AE 0D                    3385 	.db 0x0d
      0020AF 00                    3386 	.db 0x00
                                   3387 	.area CSEG    (CODE)
                                   3388 	.area CONST   (CODE)
      0020B0                       3389 ___str_29:
      0020B0 54 6F 74 61 6C 20 48  3390 	.ascii "Total Heap Size: %d "
             65 61 70 20 53 69 7A
             65 3A 20 25 64 20
      0020C4 0A                    3391 	.db 0x0a
      0020C5 0D                    3392 	.db 0x0d
      0020C6 00                    3393 	.db 0x00
                                   3394 	.area CSEG    (CODE)
                                   3395 	.area CONST   (CODE)
      0020C7                       3396 ___str_30:
      0020C7 41 6C 6C 6F 63 61 74  3397 	.ascii "Allocated Heap Size: %d "
             65 64 20 48 65 61 70
             20 53 69 7A 65 3A 20
             25 64 20
      0020DF 0A                    3398 	.db 0x0a
      0020E0 0D                    3399 	.db 0x0d
      0020E1 00                    3400 	.db 0x00
                                   3401 	.area CSEG    (CODE)
                                   3402 	.area CONST   (CODE)
      0020E2                       3403 ___str_31:
      0020E2 41 6C 6C 20 43 68 61  3404 	.ascii "All Chars: %d "
             72 73 3A 20 25 64 20
      0020F0 0A                    3405 	.db 0x0a
      0020F1 0D                    3406 	.db 0x0d
      0020F2 00                    3407 	.db 0x00
                                   3408 	.area CSEG    (CODE)
                                   3409 	.area CONST   (CODE)
      0020F3                       3410 ___str_32:
      0020F3 53 74 6F 72 61 67 65  3411 	.ascii "Storage Chars: %d "
             20 43 68 61 72 73 3A
             20 25 64 20
      002105 0A                    3412 	.db 0x0a
      002106 0D                    3413 	.db 0x0d
      002107 00                    3414 	.db 0x00
                                   3415 	.area CSEG    (CODE)
                                   3416 	.area CONST   (CODE)
      002108                       3417 ___str_33:
      002108 54 6F 74 61 6C 20 42  3418 	.ascii "Total Buffers: %d "
             75 66 66 65 72 73 3A
             20 25 64 20
      00211A 0A                    3419 	.db 0x0a
      00211B 0D                    3420 	.db 0x0d
      00211C 00                    3421 	.db 0x00
                                   3422 	.area CSEG    (CODE)
                                   3423 	.area CONST   (CODE)
      00211D                       3424 ___str_34:
      00211D 2A 2A 2A 2A 2A 2A 2A  3425 	.ascii "****************BUFFER*%d***************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 42 55 46 46 45
             52 2A 25 64 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A
      002145 0A                    3426 	.db 0x0a
      002146 0D                    3427 	.db 0x0d
      002147 00                    3428 	.db 0x00
                                   3429 	.area CSEG    (CODE)
                                   3430 	.area CONST   (CODE)
      002148                       3431 ___str_35:
      002148 42 75 66 66 65 72 23  3432 	.ascii "Buffer#: %d "
             3A 20 25 64 20
      002154 0A                    3433 	.db 0x0a
      002155 0D                    3434 	.db 0x0d
      002156 00                    3435 	.db 0x00
                                   3436 	.area CSEG    (CODE)
                                   3437 	.area CONST   (CODE)
      002157                       3438 ___str_36:
      002157 42 75 66 66 65 72 53  3439 	.ascii "BufferStart: %p "
             74 61 72 74 3A 20 25
             70 20
      002167 0A                    3440 	.db 0x0a
      002168 0D                    3441 	.db 0x0d
      002169 00                    3442 	.db 0x00
                                   3443 	.area CSEG    (CODE)
                                   3444 	.area CONST   (CODE)
      00216A                       3445 ___str_37:
      00216A 42 75 66 66 65 72 45  3446 	.ascii "BufferEnd: %p "
             6E 64 3A 20 25 70 20
      002178 0A                    3447 	.db 0x0a
      002179 0D                    3448 	.db 0x0d
      00217A 00                    3449 	.db 0x00
                                   3450 	.area CSEG    (CODE)
                                   3451 	.area CONST   (CODE)
      00217B                       3452 ___str_38:
      00217B 42 75 66 66 65 72 53  3453 	.ascii "BufferSize: %d "
             69 7A 65 3A 20 25 64
             20
      00218A 0A                    3454 	.db 0x0a
      00218B 0D                    3455 	.db 0x0d
      00218C 00                    3456 	.db 0x00
                                   3457 	.area CSEG    (CODE)
                                   3458 	.area CONST   (CODE)
      00218D                       3459 ___str_39:
      00218D 54 6F 74 61 6C 55 73  3460 	.ascii "TotalUsed: %d "
             65 64 3A 20 25 64 20
      00219B 0A                    3461 	.db 0x0a
      00219C 0D                    3462 	.db 0x0d
      00219D 00                    3463 	.db 0x00
                                   3464 	.area CSEG    (CODE)
                                   3465 	.area CONST   (CODE)
      00219E                       3466 ___str_40:
      00219E 2A 2A 2A 2A 2A 2A 2A  3467 	.ascii "***************************************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A
      0021C5 0A                    3468 	.db 0x0a
      0021C6 0D                    3469 	.db 0x0d
      0021C7 00                    3470 	.db 0x00
                                   3471 	.area CSEG    (CODE)
                                   3472 	.area CONST   (CODE)
      0021C8                       3473 ___str_41:
      0021C8 45 52 52 2C 4E 75 6D  3474 	.ascii "ERR,Numbers ONLY!"
             62 65 72 73 20 4F 4E
             4C 59 21
      0021D9 0A                    3475 	.db 0x0a
      0021DA 0D                    3476 	.db 0x0d
      0021DB 00                    3477 	.db 0x00
                                   3478 	.area CSEG    (CODE)
                                   3479 	.area XINIT   (CODE)
                                   3480 	.area CABS    (ABS,CODE)
