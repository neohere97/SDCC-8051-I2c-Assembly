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
                                     15 	.globl _eeprom_menu
                                     16 	.globl _asm_clang
                                     17 	.globl _user_interface_heap
                                     18 	.globl _getchar
                                     19 	.globl _user_interface_PCA
                                     20 	.globl _printf
                                     21 	.globl _TF1
                                     22 	.globl _TR1
                                     23 	.globl _TF0
                                     24 	.globl _TR0
                                     25 	.globl _IE1
                                     26 	.globl _IT1
                                     27 	.globl _IE0
                                     28 	.globl _IT0
                                     29 	.globl _SM0
                                     30 	.globl _SM1
                                     31 	.globl _SM2
                                     32 	.globl _REN
                                     33 	.globl _TB8
                                     34 	.globl _RB8
                                     35 	.globl _TI
                                     36 	.globl _RI
                                     37 	.globl _CY
                                     38 	.globl _AC
                                     39 	.globl _F0
                                     40 	.globl _RS1
                                     41 	.globl _RS0
                                     42 	.globl _OV
                                     43 	.globl _F1
                                     44 	.globl _P
                                     45 	.globl _RD
                                     46 	.globl _WR
                                     47 	.globl _T1
                                     48 	.globl _T0
                                     49 	.globl _INT1
                                     50 	.globl _INT0
                                     51 	.globl _TXD0
                                     52 	.globl _TXD
                                     53 	.globl _RXD0
                                     54 	.globl _RXD
                                     55 	.globl _P3_7
                                     56 	.globl _P3_6
                                     57 	.globl _P3_5
                                     58 	.globl _P3_4
                                     59 	.globl _P3_3
                                     60 	.globl _P3_2
                                     61 	.globl _P3_1
                                     62 	.globl _P3_0
                                     63 	.globl _P2_7
                                     64 	.globl _P2_6
                                     65 	.globl _P2_5
                                     66 	.globl _P2_4
                                     67 	.globl _P2_3
                                     68 	.globl _P2_2
                                     69 	.globl _P2_1
                                     70 	.globl _P2_0
                                     71 	.globl _P1_7
                                     72 	.globl _P1_6
                                     73 	.globl _P1_5
                                     74 	.globl _P1_4
                                     75 	.globl _P1_3
                                     76 	.globl _P1_2
                                     77 	.globl _P1_1
                                     78 	.globl _P1_0
                                     79 	.globl _P0_7
                                     80 	.globl _P0_6
                                     81 	.globl _P0_5
                                     82 	.globl _P0_4
                                     83 	.globl _P0_3
                                     84 	.globl _P0_2
                                     85 	.globl _P0_1
                                     86 	.globl _P0_0
                                     87 	.globl _PS
                                     88 	.globl _PT1
                                     89 	.globl _PX1
                                     90 	.globl _PT0
                                     91 	.globl _PX0
                                     92 	.globl _EA
                                     93 	.globl _ES
                                     94 	.globl _ET1
                                     95 	.globl _EX1
                                     96 	.globl _ET0
                                     97 	.globl _EX0
                                     98 	.globl _BREG_F7
                                     99 	.globl _BREG_F6
                                    100 	.globl _BREG_F5
                                    101 	.globl _BREG_F4
                                    102 	.globl _BREG_F3
                                    103 	.globl _BREG_F2
                                    104 	.globl _BREG_F1
                                    105 	.globl _BREG_F0
                                    106 	.globl _P5_7
                                    107 	.globl _P5_6
                                    108 	.globl _P5_5
                                    109 	.globl _P5_4
                                    110 	.globl _P5_3
                                    111 	.globl _P5_2
                                    112 	.globl _P5_1
                                    113 	.globl _P5_0
                                    114 	.globl _P4_7
                                    115 	.globl _P4_6
                                    116 	.globl _P4_5
                                    117 	.globl _P4_4
                                    118 	.globl _P4_3
                                    119 	.globl _P4_2
                                    120 	.globl _P4_1
                                    121 	.globl _P4_0
                                    122 	.globl _PX0L
                                    123 	.globl _PT0L
                                    124 	.globl _PX1L
                                    125 	.globl _PT1L
                                    126 	.globl _PSL
                                    127 	.globl _PT2L
                                    128 	.globl _PPCL
                                    129 	.globl _EC
                                    130 	.globl _CCF0
                                    131 	.globl _CCF1
                                    132 	.globl _CCF2
                                    133 	.globl _CCF3
                                    134 	.globl _CCF4
                                    135 	.globl _CR
                                    136 	.globl _CF
                                    137 	.globl _TF2
                                    138 	.globl _EXF2
                                    139 	.globl _RCLK
                                    140 	.globl _TCLK
                                    141 	.globl _EXEN2
                                    142 	.globl _TR2
                                    143 	.globl _C_T2
                                    144 	.globl _CP_RL2
                                    145 	.globl _T2CON_7
                                    146 	.globl _T2CON_6
                                    147 	.globl _T2CON_5
                                    148 	.globl _T2CON_4
                                    149 	.globl _T2CON_3
                                    150 	.globl _T2CON_2
                                    151 	.globl _T2CON_1
                                    152 	.globl _T2CON_0
                                    153 	.globl _PT2
                                    154 	.globl _ET2
                                    155 	.globl __AUXR
                                    156 	.globl _TMOD
                                    157 	.globl _TL1
                                    158 	.globl _TL0
                                    159 	.globl _TH1
                                    160 	.globl _TH0
                                    161 	.globl _TCON
                                    162 	.globl _SP
                                    163 	.globl _SCON
                                    164 	.globl _SBUF0
                                    165 	.globl _SBUF
                                    166 	.globl _PSW
                                    167 	.globl _PCON
                                    168 	.globl _P3
                                    169 	.globl _P2
                                    170 	.globl _P1
                                    171 	.globl _P0
                                    172 	.globl _IP
                                    173 	.globl _IE
                                    174 	.globl _DP0L
                                    175 	.globl _DPL
                                    176 	.globl _DP0H
                                    177 	.globl _DPH
                                    178 	.globl _B
                                    179 	.globl _ACC
                                    180 	.globl _EECON
                                    181 	.globl _KBF
                                    182 	.globl _KBE
                                    183 	.globl _KBLS
                                    184 	.globl _BRL
                                    185 	.globl _BDRCON
                                    186 	.globl _T2MOD
                                    187 	.globl _SPDAT
                                    188 	.globl _SPSTA
                                    189 	.globl _SPCON
                                    190 	.globl _SADEN
                                    191 	.globl _SADDR
                                    192 	.globl _WDTPRG
                                    193 	.globl _WDTRST
                                    194 	.globl _P5
                                    195 	.globl _P4
                                    196 	.globl _IPH1
                                    197 	.globl _IPL1
                                    198 	.globl _IPH0
                                    199 	.globl _IPL0
                                    200 	.globl _IEN1
                                    201 	.globl _IEN0
                                    202 	.globl _CMOD
                                    203 	.globl _CL
                                    204 	.globl _CH
                                    205 	.globl _CCON
                                    206 	.globl _CCAPM4
                                    207 	.globl _CCAPM3
                                    208 	.globl _CCAPM2
                                    209 	.globl _CCAPM1
                                    210 	.globl _CCAPM0
                                    211 	.globl _CCAP4L
                                    212 	.globl _CCAP3L
                                    213 	.globl _CCAP2L
                                    214 	.globl _CCAP1L
                                    215 	.globl _CCAP0L
                                    216 	.globl _CCAP4H
                                    217 	.globl _CCAP3H
                                    218 	.globl _CCAP2H
                                    219 	.globl _CCAP1H
                                    220 	.globl _CCAP0H
                                    221 	.globl _CKCON1
                                    222 	.globl _CKCON0
                                    223 	.globl _CKRL
                                    224 	.globl _AUXR1
                                    225 	.globl _AUXR
                                    226 	.globl _TH2
                                    227 	.globl _TL2
                                    228 	.globl _RCAP2H
                                    229 	.globl _RCAP2L
                                    230 	.globl _T2CON
                                    231 	.globl _global_var_test
                                    232 	.globl _DEBUG_LOC
                                    233 	.globl _main_menu
                                    234 	.globl _dataout
                                    235 ;--------------------------------------------------------
                                    236 ; special function registers
                                    237 ;--------------------------------------------------------
                                    238 	.area RSEG    (ABS,DATA)
      000000                        239 	.org 0x0000
                           0000C8   240 _T2CON	=	0x00c8
                           0000CA   241 _RCAP2L	=	0x00ca
                           0000CB   242 _RCAP2H	=	0x00cb
                           0000CC   243 _TL2	=	0x00cc
                           0000CD   244 _TH2	=	0x00cd
                           00008E   245 _AUXR	=	0x008e
                           0000A2   246 _AUXR1	=	0x00a2
                           000097   247 _CKRL	=	0x0097
                           00008F   248 _CKCON0	=	0x008f
                           0000AF   249 _CKCON1	=	0x00af
                           0000FA   250 _CCAP0H	=	0x00fa
                           0000FB   251 _CCAP1H	=	0x00fb
                           0000FC   252 _CCAP2H	=	0x00fc
                           0000FD   253 _CCAP3H	=	0x00fd
                           0000FE   254 _CCAP4H	=	0x00fe
                           0000EA   255 _CCAP0L	=	0x00ea
                           0000EB   256 _CCAP1L	=	0x00eb
                           0000EC   257 _CCAP2L	=	0x00ec
                           0000ED   258 _CCAP3L	=	0x00ed
                           0000EE   259 _CCAP4L	=	0x00ee
                           0000DA   260 _CCAPM0	=	0x00da
                           0000DB   261 _CCAPM1	=	0x00db
                           0000DC   262 _CCAPM2	=	0x00dc
                           0000DD   263 _CCAPM3	=	0x00dd
                           0000DE   264 _CCAPM4	=	0x00de
                           0000D8   265 _CCON	=	0x00d8
                           0000F9   266 _CH	=	0x00f9
                           0000E9   267 _CL	=	0x00e9
                           0000D9   268 _CMOD	=	0x00d9
                           0000A8   269 _IEN0	=	0x00a8
                           0000B1   270 _IEN1	=	0x00b1
                           0000B8   271 _IPL0	=	0x00b8
                           0000B7   272 _IPH0	=	0x00b7
                           0000B2   273 _IPL1	=	0x00b2
                           0000B3   274 _IPH1	=	0x00b3
                           0000C0   275 _P4	=	0x00c0
                           0000E8   276 _P5	=	0x00e8
                           0000A6   277 _WDTRST	=	0x00a6
                           0000A7   278 _WDTPRG	=	0x00a7
                           0000A9   279 _SADDR	=	0x00a9
                           0000B9   280 _SADEN	=	0x00b9
                           0000C3   281 _SPCON	=	0x00c3
                           0000C4   282 _SPSTA	=	0x00c4
                           0000C5   283 _SPDAT	=	0x00c5
                           0000C9   284 _T2MOD	=	0x00c9
                           00009B   285 _BDRCON	=	0x009b
                           00009A   286 _BRL	=	0x009a
                           00009C   287 _KBLS	=	0x009c
                           00009D   288 _KBE	=	0x009d
                           00009E   289 _KBF	=	0x009e
                           0000D2   290 _EECON	=	0x00d2
                           0000E0   291 _ACC	=	0x00e0
                           0000F0   292 _B	=	0x00f0
                           000083   293 _DPH	=	0x0083
                           000083   294 _DP0H	=	0x0083
                           000082   295 _DPL	=	0x0082
                           000082   296 _DP0L	=	0x0082
                           0000A8   297 _IE	=	0x00a8
                           0000B8   298 _IP	=	0x00b8
                           000080   299 _P0	=	0x0080
                           000090   300 _P1	=	0x0090
                           0000A0   301 _P2	=	0x00a0
                           0000B0   302 _P3	=	0x00b0
                           000087   303 _PCON	=	0x0087
                           0000D0   304 _PSW	=	0x00d0
                           000099   305 _SBUF	=	0x0099
                           000099   306 _SBUF0	=	0x0099
                           000098   307 _SCON	=	0x0098
                           000081   308 _SP	=	0x0081
                           000088   309 _TCON	=	0x0088
                           00008C   310 _TH0	=	0x008c
                           00008D   311 _TH1	=	0x008d
                           00008A   312 _TL0	=	0x008a
                           00008B   313 _TL1	=	0x008b
                           000089   314 _TMOD	=	0x0089
                           00008E   315 __AUXR	=	0x008e
                                    316 ;--------------------------------------------------------
                                    317 ; special function bits
                                    318 ;--------------------------------------------------------
                                    319 	.area RSEG    (ABS,DATA)
      000000                        320 	.org 0x0000
                           0000AD   321 _ET2	=	0x00ad
                           0000BD   322 _PT2	=	0x00bd
                           0000C8   323 _T2CON_0	=	0x00c8
                           0000C9   324 _T2CON_1	=	0x00c9
                           0000CA   325 _T2CON_2	=	0x00ca
                           0000CB   326 _T2CON_3	=	0x00cb
                           0000CC   327 _T2CON_4	=	0x00cc
                           0000CD   328 _T2CON_5	=	0x00cd
                           0000CE   329 _T2CON_6	=	0x00ce
                           0000CF   330 _T2CON_7	=	0x00cf
                           0000C8   331 _CP_RL2	=	0x00c8
                           0000C9   332 _C_T2	=	0x00c9
                           0000CA   333 _TR2	=	0x00ca
                           0000CB   334 _EXEN2	=	0x00cb
                           0000CC   335 _TCLK	=	0x00cc
                           0000CD   336 _RCLK	=	0x00cd
                           0000CE   337 _EXF2	=	0x00ce
                           0000CF   338 _TF2	=	0x00cf
                           0000DF   339 _CF	=	0x00df
                           0000DE   340 _CR	=	0x00de
                           0000DC   341 _CCF4	=	0x00dc
                           0000DB   342 _CCF3	=	0x00db
                           0000DA   343 _CCF2	=	0x00da
                           0000D9   344 _CCF1	=	0x00d9
                           0000D8   345 _CCF0	=	0x00d8
                           0000AE   346 _EC	=	0x00ae
                           0000BE   347 _PPCL	=	0x00be
                           0000BD   348 _PT2L	=	0x00bd
                           0000BC   349 _PSL	=	0x00bc
                           0000BB   350 _PT1L	=	0x00bb
                           0000BA   351 _PX1L	=	0x00ba
                           0000B9   352 _PT0L	=	0x00b9
                           0000B8   353 _PX0L	=	0x00b8
                           0000C0   354 _P4_0	=	0x00c0
                           0000C1   355 _P4_1	=	0x00c1
                           0000C2   356 _P4_2	=	0x00c2
                           0000C3   357 _P4_3	=	0x00c3
                           0000C4   358 _P4_4	=	0x00c4
                           0000C5   359 _P4_5	=	0x00c5
                           0000C6   360 _P4_6	=	0x00c6
                           0000C7   361 _P4_7	=	0x00c7
                           0000E8   362 _P5_0	=	0x00e8
                           0000E9   363 _P5_1	=	0x00e9
                           0000EA   364 _P5_2	=	0x00ea
                           0000EB   365 _P5_3	=	0x00eb
                           0000EC   366 _P5_4	=	0x00ec
                           0000ED   367 _P5_5	=	0x00ed
                           0000EE   368 _P5_6	=	0x00ee
                           0000EF   369 _P5_7	=	0x00ef
                           0000F0   370 _BREG_F0	=	0x00f0
                           0000F1   371 _BREG_F1	=	0x00f1
                           0000F2   372 _BREG_F2	=	0x00f2
                           0000F3   373 _BREG_F3	=	0x00f3
                           0000F4   374 _BREG_F4	=	0x00f4
                           0000F5   375 _BREG_F5	=	0x00f5
                           0000F6   376 _BREG_F6	=	0x00f6
                           0000F7   377 _BREG_F7	=	0x00f7
                           0000A8   378 _EX0	=	0x00a8
                           0000A9   379 _ET0	=	0x00a9
                           0000AA   380 _EX1	=	0x00aa
                           0000AB   381 _ET1	=	0x00ab
                           0000AC   382 _ES	=	0x00ac
                           0000AF   383 _EA	=	0x00af
                           0000B8   384 _PX0	=	0x00b8
                           0000B9   385 _PT0	=	0x00b9
                           0000BA   386 _PX1	=	0x00ba
                           0000BB   387 _PT1	=	0x00bb
                           0000BC   388 _PS	=	0x00bc
                           000080   389 _P0_0	=	0x0080
                           000081   390 _P0_1	=	0x0081
                           000082   391 _P0_2	=	0x0082
                           000083   392 _P0_3	=	0x0083
                           000084   393 _P0_4	=	0x0084
                           000085   394 _P0_5	=	0x0085
                           000086   395 _P0_6	=	0x0086
                           000087   396 _P0_7	=	0x0087
                           000090   397 _P1_0	=	0x0090
                           000091   398 _P1_1	=	0x0091
                           000092   399 _P1_2	=	0x0092
                           000093   400 _P1_3	=	0x0093
                           000094   401 _P1_4	=	0x0094
                           000095   402 _P1_5	=	0x0095
                           000096   403 _P1_6	=	0x0096
                           000097   404 _P1_7	=	0x0097
                           0000A0   405 _P2_0	=	0x00a0
                           0000A1   406 _P2_1	=	0x00a1
                           0000A2   407 _P2_2	=	0x00a2
                           0000A3   408 _P2_3	=	0x00a3
                           0000A4   409 _P2_4	=	0x00a4
                           0000A5   410 _P2_5	=	0x00a5
                           0000A6   411 _P2_6	=	0x00a6
                           0000A7   412 _P2_7	=	0x00a7
                           0000B0   413 _P3_0	=	0x00b0
                           0000B1   414 _P3_1	=	0x00b1
                           0000B2   415 _P3_2	=	0x00b2
                           0000B3   416 _P3_3	=	0x00b3
                           0000B4   417 _P3_4	=	0x00b4
                           0000B5   418 _P3_5	=	0x00b5
                           0000B6   419 _P3_6	=	0x00b6
                           0000B7   420 _P3_7	=	0x00b7
                           0000B0   421 _RXD	=	0x00b0
                           0000B0   422 _RXD0	=	0x00b0
                           0000B1   423 _TXD	=	0x00b1
                           0000B1   424 _TXD0	=	0x00b1
                           0000B2   425 _INT0	=	0x00b2
                           0000B3   426 _INT1	=	0x00b3
                           0000B4   427 _T0	=	0x00b4
                           0000B5   428 _T1	=	0x00b5
                           0000B6   429 _WR	=	0x00b6
                           0000B7   430 _RD	=	0x00b7
                           0000D0   431 _P	=	0x00d0
                           0000D1   432 _F1	=	0x00d1
                           0000D2   433 _OV	=	0x00d2
                           0000D3   434 _RS0	=	0x00d3
                           0000D4   435 _RS1	=	0x00d4
                           0000D5   436 _F0	=	0x00d5
                           0000D6   437 _AC	=	0x00d6
                           0000D7   438 _CY	=	0x00d7
                           000098   439 _RI	=	0x0098
                           000099   440 _TI	=	0x0099
                           00009A   441 _RB8	=	0x009a
                           00009B   442 _TB8	=	0x009b
                           00009C   443 _REN	=	0x009c
                           00009D   444 _SM2	=	0x009d
                           00009E   445 _SM1	=	0x009e
                           00009F   446 _SM0	=	0x009f
                           000088   447 _IT0	=	0x0088
                           000089   448 _IE0	=	0x0089
                           00008A   449 _IT1	=	0x008a
                           00008B   450 _IE1	=	0x008b
                           00008C   451 _TR0	=	0x008c
                           00008D   452 _TF0	=	0x008d
                           00008E   453 _TR1	=	0x008e
                           00008F   454 _TF1	=	0x008f
                                    455 ;--------------------------------------------------------
                                    456 ; overlayable register banks
                                    457 ;--------------------------------------------------------
                                    458 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        459 	.ds 8
                                    460 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        461 	.ds 8
                                    462 ;--------------------------------------------------------
                                    463 ; overlayable bit register bank
                                    464 ;--------------------------------------------------------
                                    465 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        466 bits:
      000020                        467 	.ds 1
                           008000   468 	b0 = bits[0]
                           008100   469 	b1 = bits[1]
                           008200   470 	b2 = bits[2]
                           008300   471 	b3 = bits[3]
                           008400   472 	b4 = bits[4]
                           008500   473 	b5 = bits[5]
                           008600   474 	b6 = bits[6]
                           008700   475 	b7 = bits[7]
                                    476 ;--------------------------------------------------------
                                    477 ; internal ram data
                                    478 ;--------------------------------------------------------
                                    479 	.area DSEG    (DATA)
                                    480 ;--------------------------------------------------------
                                    481 ; overlayable items in internal ram 
                                    482 ;--------------------------------------------------------
                                    483 ;--------------------------------------------------------
                                    484 ; Stack segment in internal ram 
                                    485 ;--------------------------------------------------------
                                    486 	.area	SSEG
      000030                        487 __start__stack:
      000030                        488 	.ds	1
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
                           008000   511 _DEBUG_LOC	=	0x8000
      000001                        512 _dataout_data_65536_56:
      000001                        513 	.ds 1
                                    514 ;--------------------------------------------------------
                                    515 ; absolute external ram data
                                    516 ;--------------------------------------------------------
                                    517 	.area XABS    (ABS,XDATA)
                                    518 ;--------------------------------------------------------
                                    519 ; external initialized ram data
                                    520 ;--------------------------------------------------------
                                    521 	.area XISEG   (XDATA)
      001568                        522 _global_var_test::
      001568                        523 	.ds 1
                                    524 	.area HOME    (CODE)
                                    525 	.area GSINIT0 (CODE)
                                    526 	.area GSINIT1 (CODE)
                                    527 	.area GSINIT2 (CODE)
                                    528 	.area GSINIT3 (CODE)
                                    529 	.area GSINIT4 (CODE)
                                    530 	.area GSINIT5 (CODE)
                                    531 	.area GSINIT  (CODE)
                                    532 	.area GSFINAL (CODE)
                                    533 	.area CSEG    (CODE)
                                    534 ;--------------------------------------------------------
                                    535 ; interrupt vector 
                                    536 ;--------------------------------------------------------
                                    537 	.area HOME    (CODE)
      000000                        538 __interrupt_vect:
      000000 02 00 39         [24]  539 	ljmp	__sdcc_gsinit_startup
      000003 02 02 36         [24]  540 	ljmp	_idle_interrupt
      000006                        541 	.ds	5
      00000B 32               [24]  542 	reti
      00000C                        543 	.ds	7
      000013 32               [24]  544 	reti
      000014                        545 	.ds	7
      00001B 32               [24]  546 	reti
      00001C                        547 	.ds	7
      000023 32               [24]  548 	reti
      000024                        549 	.ds	7
      00002B 32               [24]  550 	reti
      00002C                        551 	.ds	7
      000033 02 01 8E         [24]  552 	ljmp	_pca_interrupt
                                    553 ;--------------------------------------------------------
                                    554 ; global & static initialisations
                                    555 ;--------------------------------------------------------
                                    556 	.area HOME    (CODE)
                                    557 	.area GSINIT  (CODE)
                                    558 	.area GSFINAL (CODE)
                                    559 	.area GSINIT  (CODE)
                                    560 	.globl __sdcc_gsinit_startup
                                    561 	.globl __sdcc_program_startup
                                    562 	.globl __start__stack
                                    563 	.globl __mcs51_genXINIT
                                    564 	.globl __mcs51_genXRAMCLEAR
                                    565 	.globl __mcs51_genRAMCLEAR
                                    566 	.area GSFINAL (CODE)
      000092 02 00 36         [24]  567 	ljmp	__sdcc_program_startup
                                    568 ;--------------------------------------------------------
                                    569 ; Home
                                    570 ;--------------------------------------------------------
                                    571 	.area HOME    (CODE)
                                    572 	.area HOME    (CODE)
      000036                        573 __sdcc_program_startup:
      000036 02 00 95         [24]  574 	ljmp	_main
                                    575 ;	return from main will return to caller
                                    576 ;--------------------------------------------------------
                                    577 ; code
                                    578 ;--------------------------------------------------------
                                    579 	.area CSEG    (CODE)
                                    580 ;------------------------------------------------------------
                                    581 ;Allocation info for local variables in function 'main'
                                    582 ;------------------------------------------------------------
                                    583 ;	program.c:44: void main(void)
                                    584 ;	-----------------------------------------
                                    585 ;	 function main
                                    586 ;	-----------------------------------------
      000095                        587 _main:
                           000007   588 	ar7 = 0x07
                           000006   589 	ar6 = 0x06
                           000005   590 	ar5 = 0x05
                           000004   591 	ar4 = 0x04
                           000003   592 	ar3 = 0x03
                           000002   593 	ar2 = 0x02
                           000001   594 	ar1 = 0x01
                           000000   595 	ar0 = 0x00
                                    596 ;	program.c:46: printf("\n\r HELLO! Started in X2 Mode \n\r");
      000095 74 93            [12]  597 	mov	a,#___str_0
      000097 C0 E0            [24]  598 	push	acc
      000099 74 2C            [12]  599 	mov	a,#(___str_0 >> 8)
      00009B C0 E0            [24]  600 	push	acc
      00009D 74 80            [12]  601 	mov	a,#0x80
      00009F C0 E0            [24]  602 	push	acc
      0000A1 12 22 58         [24]  603 	lcall	_printf
      0000A4 15 81            [12]  604 	dec	sp
      0000A6 15 81            [12]  605 	dec	sp
      0000A8 15 81            [12]  606 	dec	sp
                                    607 ;	program.c:47: DEBUGPORT(0x01);
      0000AA 75 82 01         [24]  608 	mov	dpl,#0x01
      0000AD 12 02 AB         [24]  609 	lcall	_dataout
                                    610 ;	program.c:48: P1_1 = 0;
                                    611 ;	assignBit
      0000B0 C2 91            [12]  612 	clr	_P1_1
                                    613 ;	program.c:49: main_menu();
                                    614 ;	program.c:50: }
      0000B2 02 00 B5         [24]  615 	ljmp	_main_menu
                                    616 ;------------------------------------------------------------
                                    617 ;Allocation info for local variables in function 'main_menu'
                                    618 ;------------------------------------------------------------
                                    619 ;inp                       Allocated with name '_main_menu_inp_65537_49'
                                    620 ;------------------------------------------------------------
                                    621 ;	program.c:52: void main_menu()
                                    622 ;	-----------------------------------------
                                    623 ;	 function main_menu
                                    624 ;	-----------------------------------------
      0000B5                        625 _main_menu:
                                    626 ;	program.c:54: DEBUGPORT(0x02);
      0000B5 75 82 02         [24]  627 	mov	dpl,#0x02
      0000B8 12 02 AB         [24]  628 	lcall	_dataout
                                    629 ;	program.c:55: printf("\n\n\r^^^^^^^^^^^^^^^^^^^-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ \n\n\r");
      0000BB 74 B3            [12]  630 	mov	a,#___str_1
      0000BD C0 E0            [24]  631 	push	acc
      0000BF 74 2C            [12]  632 	mov	a,#(___str_1 >> 8)
      0000C1 C0 E0            [24]  633 	push	acc
      0000C3 74 80            [12]  634 	mov	a,#0x80
      0000C5 C0 E0            [24]  635 	push	acc
      0000C7 12 22 58         [24]  636 	lcall	_printf
      0000CA 15 81            [12]  637 	dec	sp
      0000CC 15 81            [12]  638 	dec	sp
      0000CE 15 81            [12]  639 	dec	sp
                                    640 ;	program.c:56: printf("'H' -> Heap Demo Mode \n\r");
      0000D0 74 EE            [12]  641 	mov	a,#___str_2
      0000D2 C0 E0            [24]  642 	push	acc
      0000D4 74 2C            [12]  643 	mov	a,#(___str_2 >> 8)
      0000D6 C0 E0            [24]  644 	push	acc
      0000D8 74 80            [12]  645 	mov	a,#0x80
      0000DA C0 E0            [24]  646 	push	acc
      0000DC 12 22 58         [24]  647 	lcall	_printf
      0000DF 15 81            [12]  648 	dec	sp
      0000E1 15 81            [12]  649 	dec	sp
      0000E3 15 81            [12]  650 	dec	sp
                                    651 ;	program.c:57: printf("'P' -> PCA Demo Mode \n\r");
      0000E5 74 07            [12]  652 	mov	a,#___str_3
      0000E7 C0 E0            [24]  653 	push	acc
      0000E9 74 2D            [12]  654 	mov	a,#(___str_3 >> 8)
      0000EB C0 E0            [24]  655 	push	acc
      0000ED 74 80            [12]  656 	mov	a,#0x80
      0000EF C0 E0            [24]  657 	push	acc
      0000F1 12 22 58         [24]  658 	lcall	_printf
      0000F4 15 81            [12]  659 	dec	sp
      0000F6 15 81            [12]  660 	dec	sp
      0000F8 15 81            [12]  661 	dec	sp
                                    662 ;	program.c:58: printf("'A' -> Assembly C Mix \n\r");
      0000FA 74 1F            [12]  663 	mov	a,#___str_4
      0000FC C0 E0            [24]  664 	push	acc
      0000FE 74 2D            [12]  665 	mov	a,#(___str_4 >> 8)
      000100 C0 E0            [24]  666 	push	acc
      000102 74 80            [12]  667 	mov	a,#0x80
      000104 C0 E0            [24]  668 	push	acc
      000106 12 22 58         [24]  669 	lcall	_printf
      000109 15 81            [12]  670 	dec	sp
      00010B 15 81            [12]  671 	dec	sp
      00010D 15 81            [12]  672 	dec	sp
                                    673 ;	program.c:59: printf("'E' -> EEPROM Mode \n\r");
      00010F 74 38            [12]  674 	mov	a,#___str_5
      000111 C0 E0            [24]  675 	push	acc
      000113 74 2D            [12]  676 	mov	a,#(___str_5 >> 8)
      000115 C0 E0            [24]  677 	push	acc
      000117 74 80            [12]  678 	mov	a,#0x80
      000119 C0 E0            [24]  679 	push	acc
      00011B 12 22 58         [24]  680 	lcall	_printf
      00011E 15 81            [12]  681 	dec	sp
      000120 15 81            [12]  682 	dec	sp
      000122 15 81            [12]  683 	dec	sp
                                    684 ;	program.c:60: printf("'I' -> I/O Expander Demo Mode \n\r");
      000124 74 4E            [12]  685 	mov	a,#___str_6
      000126 C0 E0            [24]  686 	push	acc
      000128 74 2D            [12]  687 	mov	a,#(___str_6 >> 8)
      00012A C0 E0            [24]  688 	push	acc
      00012C 74 80            [12]  689 	mov	a,#0x80
      00012E C0 E0            [24]  690 	push	acc
      000130 12 22 58         [24]  691 	lcall	_printf
      000133 15 81            [12]  692 	dec	sp
      000135 15 81            [12]  693 	dec	sp
      000137 15 81            [12]  694 	dec	sp
                                    695 ;	program.c:61: printf("'L' -> LCD Demo Mode \n\r");
      000139 74 6F            [12]  696 	mov	a,#___str_7
      00013B C0 E0            [24]  697 	push	acc
      00013D 74 2D            [12]  698 	mov	a,#(___str_7 >> 8)
      00013F C0 E0            [24]  699 	push	acc
      000141 74 80            [12]  700 	mov	a,#0x80
      000143 C0 E0            [24]  701 	push	acc
      000145 12 22 58         [24]  702 	lcall	_printf
      000148 15 81            [12]  703 	dec	sp
      00014A 15 81            [12]  704 	dec	sp
      00014C 15 81            [12]  705 	dec	sp
                                    706 ;	program.c:64: wrong_choice:
      00014E                        707 00101$:
                                    708 ;	program.c:65: printf("Please make a valid choice \n\r");
      00014E 74 87            [12]  709 	mov	a,#___str_8
      000150 C0 E0            [24]  710 	push	acc
      000152 74 2D            [12]  711 	mov	a,#(___str_8 >> 8)
      000154 C0 E0            [24]  712 	push	acc
      000156 74 80            [12]  713 	mov	a,#0x80
      000158 C0 E0            [24]  714 	push	acc
      00015A 12 22 58         [24]  715 	lcall	_printf
      00015D 15 81            [12]  716 	dec	sp
      00015F 15 81            [12]  717 	dec	sp
      000161 15 81            [12]  718 	dec	sp
                                    719 ;	program.c:66: inp = getchar();
      000163 12 07 88         [24]  720 	lcall	_getchar
      000166 AE 82            [24]  721 	mov	r6,dpl
      000168 AF 83            [24]  722 	mov	r7,dph
                                    723 ;	program.c:67: if (inp == 0x48)
      00016A BE 48 06         [24]  724 	cjne	r6,#0x48,00112$
      00016D BF 00 03         [24]  725 	cjne	r7,#0x00,00112$
                                    726 ;	program.c:68: user_interface_heap();
      000170 02 07 C4         [24]  727 	ljmp	_user_interface_heap
      000173                        728 00112$:
                                    729 ;	program.c:69: else if (inp == 0x50)
      000173 BE 50 06         [24]  730 	cjne	r6,#0x50,00109$
      000176 BF 00 03         [24]  731 	cjne	r7,#0x00,00109$
                                    732 ;	program.c:70: user_interface_PCA();
      000179 02 13 D1         [24]  733 	ljmp	_user_interface_PCA
      00017C                        734 00109$:
                                    735 ;	program.c:71: else if (inp == 0x41)
      00017C BE 41 06         [24]  736 	cjne	r6,#0x41,00106$
      00017F BF 00 03         [24]  737 	cjne	r7,#0x00,00106$
                                    738 ;	program.c:72: asm_clang();
      000182 02 1D 98         [24]  739 	ljmp	_asm_clang
      000185                        740 00106$:
                                    741 ;	program.c:73: else if (inp == 0x45)
      000185 BE 45 C6         [24]  742 	cjne	r6,#0x45,00101$
      000188 BF 00 C3         [24]  743 	cjne	r7,#0x00,00101$
                                    744 ;	program.c:74: eeprom_menu();
                                    745 ;	program.c:76: goto wrong_choice;
                                    746 ;	program.c:77: }
      00018B 02 17 38         [24]  747 	ljmp	_eeprom_menu
                                    748 ;------------------------------------------------------------
                                    749 ;Allocation info for local variables in function 'pca_interrupt'
                                    750 ;------------------------------------------------------------
                                    751 ;	program.c:85: void pca_interrupt() __interrupt(6) __using(1)
                                    752 ;	-----------------------------------------
                                    753 ;	 function pca_interrupt
                                    754 ;	-----------------------------------------
      00018E                        755 _pca_interrupt:
                           00000F   756 	ar7 = 0x0f
                           00000E   757 	ar6 = 0x0e
                           00000D   758 	ar5 = 0x0d
                           00000C   759 	ar4 = 0x0c
                           00000B   760 	ar3 = 0x0b
                           00000A   761 	ar2 = 0x0a
                           000009   762 	ar1 = 0x09
                           000008   763 	ar0 = 0x08
      00018E C0 20            [24]  764 	push	bits
      000190 C0 E0            [24]  765 	push	acc
      000192 C0 F0            [24]  766 	push	b
      000194 C0 82            [24]  767 	push	dpl
      000196 C0 83            [24]  768 	push	dph
      000198 C0 07            [24]  769 	push	(0+7)
      00019A C0 06            [24]  770 	push	(0+6)
      00019C C0 05            [24]  771 	push	(0+5)
      00019E C0 04            [24]  772 	push	(0+4)
      0001A0 C0 03            [24]  773 	push	(0+3)
      0001A2 C0 02            [24]  774 	push	(0+2)
      0001A4 C0 01            [24]  775 	push	(0+1)
      0001A6 C0 00            [24]  776 	push	(0+0)
      0001A8 C0 D0            [24]  777 	push	psw
      0001AA 75 D0 08         [24]  778 	mov	psw,#0x08
                                    779 ;	program.c:87: if (CCF0)
      0001AD 30 D8 2D         [24]  780 	jnb	_CCF0,00102$
                                    781 ;	program.c:89: printf("Captured Value CCPL -> %d CCPH -> %d \n\r", CCAP0L, CCAP0H);
      0001B0 AE FA            [24]  782 	mov	r6,_CCAP0H
      0001B2 7F 00            [12]  783 	mov	r7,#0x00
      0001B4 AC EA            [24]  784 	mov	r4,_CCAP0L
      0001B6 7D 00            [12]  785 	mov	r5,#0x00
      0001B8 C0 0E            [24]  786 	push	ar6
      0001BA C0 0F            [24]  787 	push	ar7
      0001BC C0 0C            [24]  788 	push	ar4
      0001BE C0 0D            [24]  789 	push	ar5
      0001C0 74 A5            [12]  790 	mov	a,#___str_9
      0001C2 C0 E0            [24]  791 	push	acc
      0001C4 74 2D            [12]  792 	mov	a,#(___str_9 >> 8)
      0001C6 C0 E0            [24]  793 	push	acc
      0001C8 74 80            [12]  794 	mov	a,#0x80
      0001CA C0 E0            [24]  795 	push	acc
      0001CC 75 D0 00         [24]  796 	mov	psw,#0x00
      0001CF 12 22 58         [24]  797 	lcall	_printf
      0001D2 75 D0 08         [24]  798 	mov	psw,#0x08
      0001D5 E5 81            [12]  799 	mov	a,sp
      0001D7 24 F9            [12]  800 	add	a,#0xf9
      0001D9 F5 81            [12]  801 	mov	sp,a
                                    802 ;	program.c:91: CCF0 = 0;
                                    803 ;	assignBit
      0001DB C2 D8            [12]  804 	clr	_CCF0
      0001DD                        805 00102$:
                                    806 ;	program.c:93: if (CCF1)
                                    807 ;	program.c:95: CCF1 = 0;
                                    808 ;	assignBit
      0001DD 10 D9 02         [24]  809 	jbc	_CCF1,00128$
      0001E0 80 06            [24]  810 	sjmp	00104$
      0001E2                        811 00128$:
                                    812 ;	program.c:96: CH = 0;
      0001E2 75 F9 00         [24]  813 	mov	_CH,#0x00
                                    814 ;	program.c:97: CL = 0;
      0001E5 75 E9 00         [24]  815 	mov	_CL,#0x00
      0001E8                        816 00104$:
                                    817 ;	program.c:99: if (CCF2)
                                    818 ;	program.c:101: CCF2 = 0;
                                    819 ;	assignBit
      0001E8 10 DA 02         [24]  820 	jbc	_CCF2,00129$
      0001EB 80 0C            [24]  821 	sjmp	00106$
      0001ED                        822 00129$:
                                    823 ;	program.c:102: CH = 0;
      0001ED 75 F9 00         [24]  824 	mov	_CH,#0x00
                                    825 ;	program.c:103: CL = 0;
      0001F0 75 E9 00         [24]  826 	mov	_CL,#0x00
                                    827 ;	program.c:104: WDTRST = 0x01E;
      0001F3 75 A6 1E         [24]  828 	mov	_WDTRST,#0x1e
                                    829 ;	program.c:105: WDTRST = 0x0E1;
      0001F6 75 A6 E1         [24]  830 	mov	_WDTRST,#0xe1
      0001F9                        831 00106$:
                                    832 ;	program.c:107: if (CCF3)
                                    833 ;	program.c:109: CCF3 = 0;
                                    834 ;	assignBit
      0001F9 10 DB 02         [24]  835 	jbc	_CCF3,00130$
      0001FC 80 1B            [24]  836 	sjmp	00109$
      0001FE                        837 00130$:
                                    838 ;	program.c:110: printf("Timer Interrupt\n\r");
      0001FE 74 CD            [12]  839 	mov	a,#___str_10
      000200 C0 E0            [24]  840 	push	acc
      000202 74 2D            [12]  841 	mov	a,#(___str_10 >> 8)
      000204 C0 E0            [24]  842 	push	acc
      000206 74 80            [12]  843 	mov	a,#0x80
      000208 C0 E0            [24]  844 	push	acc
      00020A 75 D0 00         [24]  845 	mov	psw,#0x00
      00020D 12 22 58         [24]  846 	lcall	_printf
      000210 75 D0 08         [24]  847 	mov	psw,#0x08
      000213 15 81            [12]  848 	dec	sp
      000215 15 81            [12]  849 	dec	sp
      000217 15 81            [12]  850 	dec	sp
      000219                        851 00109$:
                                    852 ;	program.c:112: }
      000219 D0 D0            [24]  853 	pop	psw
      00021B D0 00            [24]  854 	pop	(0+0)
      00021D D0 01            [24]  855 	pop	(0+1)
      00021F D0 02            [24]  856 	pop	(0+2)
      000221 D0 03            [24]  857 	pop	(0+3)
      000223 D0 04            [24]  858 	pop	(0+4)
      000225 D0 05            [24]  859 	pop	(0+5)
      000227 D0 06            [24]  860 	pop	(0+6)
      000229 D0 07            [24]  861 	pop	(0+7)
      00022B D0 83            [24]  862 	pop	dph
      00022D D0 82            [24]  863 	pop	dpl
      00022F D0 F0            [24]  864 	pop	b
      000231 D0 E0            [24]  865 	pop	acc
      000233 D0 20            [24]  866 	pop	bits
      000235 32               [24]  867 	reti
                                    868 ;------------------------------------------------------------
                                    869 ;Allocation info for local variables in function 'idle_interrupt'
                                    870 ;------------------------------------------------------------
                                    871 ;	program.c:119: void idle_interrupt() __interrupt(0) __using(1)
                                    872 ;	-----------------------------------------
                                    873 ;	 function idle_interrupt
                                    874 ;	-----------------------------------------
      000236                        875 _idle_interrupt:
      000236 C0 20            [24]  876 	push	bits
      000238 C0 E0            [24]  877 	push	acc
      00023A C0 F0            [24]  878 	push	b
      00023C C0 82            [24]  879 	push	dpl
      00023E C0 83            [24]  880 	push	dph
      000240 C0 07            [24]  881 	push	(0+7)
      000242 C0 06            [24]  882 	push	(0+6)
      000244 C0 05            [24]  883 	push	(0+5)
      000246 C0 04            [24]  884 	push	(0+4)
      000248 C0 03            [24]  885 	push	(0+3)
      00024A C0 02            [24]  886 	push	(0+2)
      00024C C0 01            [24]  887 	push	(0+1)
      00024E C0 00            [24]  888 	push	(0+0)
      000250 C0 D0            [24]  889 	push	psw
      000252 75 D0 08         [24]  890 	mov	psw,#0x08
                                    891 ;	program.c:121: EX0 = 0;
                                    892 ;	assignBit
      000255 C2 A8            [12]  893 	clr	_EX0
                                    894 ;	program.c:122: PCON = 0x80;
      000257 75 87 80         [24]  895 	mov	_PCON,#0x80
                                    896 ;	program.c:123: CR = 0;
                                    897 ;	assignBit
      00025A C2 DE            [12]  898 	clr	_CR
                                    899 ;	program.c:124: CKRL = 255;
      00025C 75 97 FF         [24]  900 	mov	_CKRL,#0xff
                                    901 ;	program.c:125: CCAPM0 = 0;
                                    902 ;	program.c:126: CCAPM1 = 0;
                                    903 ;	program.c:127: CCAPM2 = 0;
                                    904 ;	program.c:128: CCAPM3 = 0;
                                    905 ;	program.c:129: CCAPM4 = 0;
                                    906 ;	program.c:130: printf("Going to main menu.. \n\r");
      00025F E4               [12]  907 	clr	a
      000260 F5 DA            [12]  908 	mov	_CCAPM0,a
      000262 F5 DB            [12]  909 	mov	_CCAPM1,a
      000264 F5 DC            [12]  910 	mov	_CCAPM2,a
      000266 F5 DD            [12]  911 	mov	_CCAPM3,a
      000268 F5 DE            [12]  912 	mov	_CCAPM4,a
      00026A 74 DF            [12]  913 	mov	a,#___str_11
      00026C C0 E0            [24]  914 	push	acc
      00026E 74 2D            [12]  915 	mov	a,#(___str_11 >> 8)
      000270 C0 E0            [24]  916 	push	acc
      000272 74 80            [12]  917 	mov	a,#0x80
      000274 C0 E0            [24]  918 	push	acc
      000276 75 D0 00         [24]  919 	mov	psw,#0x00
      000279 12 22 58         [24]  920 	lcall	_printf
      00027C 75 D0 08         [24]  921 	mov	psw,#0x08
      00027F 15 81            [12]  922 	dec	sp
      000281 15 81            [12]  923 	dec	sp
      000283 15 81            [12]  924 	dec	sp
                                    925 ;	program.c:131: main_menu();
      000285 75 D0 00         [24]  926 	mov	psw,#0x00
      000288 12 00 B5         [24]  927 	lcall	_main_menu
      00028B 75 D0 08         [24]  928 	mov	psw,#0x08
                                    929 ;	program.c:132: }
      00028E D0 D0            [24]  930 	pop	psw
      000290 D0 00            [24]  931 	pop	(0+0)
      000292 D0 01            [24]  932 	pop	(0+1)
      000294 D0 02            [24]  933 	pop	(0+2)
      000296 D0 03            [24]  934 	pop	(0+3)
      000298 D0 04            [24]  935 	pop	(0+4)
      00029A D0 05            [24]  936 	pop	(0+5)
      00029C D0 06            [24]  937 	pop	(0+6)
      00029E D0 07            [24]  938 	pop	(0+7)
      0002A0 D0 83            [24]  939 	pop	dph
      0002A2 D0 82            [24]  940 	pop	dpl
      0002A4 D0 F0            [24]  941 	pop	b
      0002A6 D0 E0            [24]  942 	pop	acc
      0002A8 D0 20            [24]  943 	pop	bits
      0002AA 32               [24]  944 	reti
                                    945 ;------------------------------------------------------------
                                    946 ;Allocation info for local variables in function 'dataout'
                                    947 ;------------------------------------------------------------
                                    948 ;data                      Allocated with name '_dataout_data_65536_56'
                                    949 ;------------------------------------------------------------
                                    950 ;	program.c:140: void dataout(unsigned char data)
                                    951 ;	-----------------------------------------
                                    952 ;	 function dataout
                                    953 ;	-----------------------------------------
      0002AB                        954 _dataout:
                           000007   955 	ar7 = 0x07
                           000006   956 	ar6 = 0x06
                           000005   957 	ar5 = 0x05
                           000004   958 	ar4 = 0x04
                           000003   959 	ar3 = 0x03
                           000002   960 	ar2 = 0x02
                           000001   961 	ar1 = 0x01
                           000000   962 	ar0 = 0x00
      0002AB E5 82            [12]  963 	mov	a,dpl
      0002AD 90 00 01         [24]  964 	mov	dptr,#_dataout_data_65536_56
      0002B0 F0               [24]  965 	movx	@dptr,a
                                    966 ;	program.c:142: DEBUG_LOC = data;
      0002B1 E0               [24]  967 	movx	a,@dptr
      0002B2 90 80 00         [24]  968 	mov	dptr,#_DEBUG_LOC
      0002B5 F0               [24]  969 	movx	@dptr,a
                                    970 ;	program.c:143: }
      0002B6 22               [24]  971 	ret
                                    972 ;------------------------------------------------------------
                                    973 ;Allocation info for local variables in function '_sdcc_external_startup'
                                    974 ;------------------------------------------------------------
                                    975 ;	program.c:152: _sdcc_external_startup()
                                    976 ;	-----------------------------------------
                                    977 ;	 function _sdcc_external_startup
                                    978 ;	-----------------------------------------
      0002B7                        979 __sdcc_external_startup:
                                    980 ;	program.c:154: CKCON0 |= 0x1;
      0002B7 43 8F 01         [24]  981 	orl	_CKCON0,#0x01
                                    982 ;	program.c:156: _AUXR = 0xC;
      0002BA 75 8E 0C         [24]  983 	mov	__AUXR,#0x0c
                                    984 ;	program.c:158: SCON = 0x42;
      0002BD 75 98 42         [24]  985 	mov	_SCON,#0x42
                                    986 ;	program.c:160: PCON = 0x80;
      0002C0 75 87 80         [24]  987 	mov	_PCON,#0x80
                                    988 ;	program.c:162: TH1 = 255;
      0002C3 75 8D FF         [24]  989 	mov	_TH1,#0xff
                                    990 ;	program.c:163: TL1 = 255;
      0002C6 75 8B FF         [24]  991 	mov	_TL1,#0xff
                                    992 ;	program.c:165: TMOD = 0x20;
      0002C9 75 89 20         [24]  993 	mov	_TMOD,#0x20
                                    994 ;	program.c:167: REN = 1;
                                    995 ;	assignBit
      0002CC D2 9C            [12]  996 	setb	_REN
                                    997 ;	program.c:169: TR1 = 1;
                                    998 ;	assignBit
      0002CE D2 8E            [12]  999 	setb	_TR1
                                   1000 ;	program.c:171: EA = 1;
                                   1001 ;	assignBit
      0002D0 D2 AF            [12] 1002 	setb	_EA
                                   1003 ;	program.c:173: EC = 1;
                                   1004 ;	assignBit
      0002D2 D2 AE            [12] 1005 	setb	_EC
                                   1006 ;	program.c:174: return 0;
      0002D4 90 00 00         [24] 1007 	mov	dptr,#0x0000
                                   1008 ;	program.c:175: }
      0002D7 22               [24] 1009 	ret
                                   1010 	.area CSEG    (CODE)
                                   1011 	.area CONST   (CODE)
                                   1012 	.area CONST   (CODE)
      002C93                       1013 ___str_0:
      002C93 0A                    1014 	.db 0x0a
      002C94 0D                    1015 	.db 0x0d
      002C95 20 48 45 4C 4C 4F 21  1016 	.ascii " HELLO! Started in X2 Mode "
             20 53 74 61 72 74 65
             64 20 69 6E 20 58 32
             20 4D 6F 64 65 20
      002CB0 0A                    1017 	.db 0x0a
      002CB1 0D                    1018 	.db 0x0d
      002CB2 00                    1019 	.db 0x00
                                   1020 	.area CSEG    (CODE)
                                   1021 	.area CONST   (CODE)
      002CB3                       1022 ___str_1:
      002CB3 0A                    1023 	.db 0x0a
      002CB4 0A                    1024 	.db 0x0a
      002CB5 0D                    1025 	.db 0x0d
      002CB6 5E 5E 5E 5E 5E 5E 5E  1026 	.ascii "^^^^^^^^^^^^^^^^^^^-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ "
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 2D 4D
             45 4E 55 2D 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 20
      002CEA 0A                    1027 	.db 0x0a
      002CEB 0A                    1028 	.db 0x0a
      002CEC 0D                    1029 	.db 0x0d
      002CED 00                    1030 	.db 0x00
                                   1031 	.area CSEG    (CODE)
                                   1032 	.area CONST   (CODE)
      002CEE                       1033 ___str_2:
      002CEE 27 48 27 20 2D 3E 20  1034 	.ascii "'H' -> Heap Demo Mode "
             48 65 61 70 20 44 65
             6D 6F 20 4D 6F 64 65
             20
      002D04 0A                    1035 	.db 0x0a
      002D05 0D                    1036 	.db 0x0d
      002D06 00                    1037 	.db 0x00
                                   1038 	.area CSEG    (CODE)
                                   1039 	.area CONST   (CODE)
      002D07                       1040 ___str_3:
      002D07 27 50 27 20 2D 3E 20  1041 	.ascii "'P' -> PCA Demo Mode "
             50 43 41 20 44 65 6D
             6F 20 4D 6F 64 65 20
      002D1C 0A                    1042 	.db 0x0a
      002D1D 0D                    1043 	.db 0x0d
      002D1E 00                    1044 	.db 0x00
                                   1045 	.area CSEG    (CODE)
                                   1046 	.area CONST   (CODE)
      002D1F                       1047 ___str_4:
      002D1F 27 41 27 20 2D 3E 20  1048 	.ascii "'A' -> Assembly C Mix "
             41 73 73 65 6D 62 6C
             79 20 43 20 4D 69 78
             20
      002D35 0A                    1049 	.db 0x0a
      002D36 0D                    1050 	.db 0x0d
      002D37 00                    1051 	.db 0x00
                                   1052 	.area CSEG    (CODE)
                                   1053 	.area CONST   (CODE)
      002D38                       1054 ___str_5:
      002D38 27 45 27 20 2D 3E 20  1055 	.ascii "'E' -> EEPROM Mode "
             45 45 50 52 4F 4D 20
             4D 6F 64 65 20
      002D4B 0A                    1056 	.db 0x0a
      002D4C 0D                    1057 	.db 0x0d
      002D4D 00                    1058 	.db 0x00
                                   1059 	.area CSEG    (CODE)
                                   1060 	.area CONST   (CODE)
      002D4E                       1061 ___str_6:
      002D4E 27 49 27 20 2D 3E 20  1062 	.ascii "'I' -> I/O Expander Demo Mode "
             49 2F 4F 20 45 78 70
             61 6E 64 65 72 20 44
             65 6D 6F 20 4D 6F 64
             65 20
      002D6C 0A                    1063 	.db 0x0a
      002D6D 0D                    1064 	.db 0x0d
      002D6E 00                    1065 	.db 0x00
                                   1066 	.area CSEG    (CODE)
                                   1067 	.area CONST   (CODE)
      002D6F                       1068 ___str_7:
      002D6F 27 4C 27 20 2D 3E 20  1069 	.ascii "'L' -> LCD Demo Mode "
             4C 43 44 20 44 65 6D
             6F 20 4D 6F 64 65 20
      002D84 0A                    1070 	.db 0x0a
      002D85 0D                    1071 	.db 0x0d
      002D86 00                    1072 	.db 0x00
                                   1073 	.area CSEG    (CODE)
                                   1074 	.area CONST   (CODE)
      002D87                       1075 ___str_8:
      002D87 50 6C 65 61 73 65 20  1076 	.ascii "Please make a valid choice "
             6D 61 6B 65 20 61 20
             76 61 6C 69 64 20 63
             68 6F 69 63 65 20
      002DA2 0A                    1077 	.db 0x0a
      002DA3 0D                    1078 	.db 0x0d
      002DA4 00                    1079 	.db 0x00
                                   1080 	.area CSEG    (CODE)
                                   1081 	.area CONST   (CODE)
      002DA5                       1082 ___str_9:
      002DA5 43 61 70 74 75 72 65  1083 	.ascii "Captured Value CCPL -> %d CCPH -> %d "
             64 20 56 61 6C 75 65
             20 43 43 50 4C 20 2D
             3E 20 25 64 20 43 43
             50 48 20 2D 3E 20 25
             64 20
      002DCA 0A                    1084 	.db 0x0a
      002DCB 0D                    1085 	.db 0x0d
      002DCC 00                    1086 	.db 0x00
                                   1087 	.area CSEG    (CODE)
                                   1088 	.area CONST   (CODE)
      002DCD                       1089 ___str_10:
      002DCD 54 69 6D 65 72 20 49  1090 	.ascii "Timer Interrupt"
             6E 74 65 72 72 75 70
             74
      002DDC 0A                    1091 	.db 0x0a
      002DDD 0D                    1092 	.db 0x0d
      002DDE 00                    1093 	.db 0x00
                                   1094 	.area CSEG    (CODE)
                                   1095 	.area CONST   (CODE)
      002DDF                       1096 ___str_11:
      002DDF 47 6F 69 6E 67 20 74  1097 	.ascii "Going to main menu.. "
             6F 20 6D 61 69 6E 20
             6D 65 6E 75 2E 2E 20
      002DF4 0A                    1098 	.db 0x0a
      002DF5 0D                    1099 	.db 0x0d
      002DF6 00                    1100 	.db 0x00
                                   1101 	.area CSEG    (CODE)
                                   1102 	.area XINIT   (CODE)
      003CA1                       1103 __xinit__global_var_test:
      003CA1 02                    1104 	.db #0x02	; 2
                                   1105 	.area CABS    (ABS,CODE)
