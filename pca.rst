                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module pca
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main_menu
                                     12 	.globl _getchar
                                     13 	.globl _printf
                                     14 	.globl _TF1
                                     15 	.globl _TR1
                                     16 	.globl _TF0
                                     17 	.globl _TR0
                                     18 	.globl _IE1
                                     19 	.globl _IT1
                                     20 	.globl _IE0
                                     21 	.globl _IT0
                                     22 	.globl _SM0
                                     23 	.globl _SM1
                                     24 	.globl _SM2
                                     25 	.globl _REN
                                     26 	.globl _TB8
                                     27 	.globl _RB8
                                     28 	.globl _TI
                                     29 	.globl _RI
                                     30 	.globl _CY
                                     31 	.globl _AC
                                     32 	.globl _F0
                                     33 	.globl _RS1
                                     34 	.globl _RS0
                                     35 	.globl _OV
                                     36 	.globl _F1
                                     37 	.globl _P
                                     38 	.globl _RD
                                     39 	.globl _WR
                                     40 	.globl _T1
                                     41 	.globl _T0
                                     42 	.globl _INT1
                                     43 	.globl _INT0
                                     44 	.globl _TXD0
                                     45 	.globl _TXD
                                     46 	.globl _RXD0
                                     47 	.globl _RXD
                                     48 	.globl _P3_7
                                     49 	.globl _P3_6
                                     50 	.globl _P3_5
                                     51 	.globl _P3_4
                                     52 	.globl _P3_3
                                     53 	.globl _P3_2
                                     54 	.globl _P3_1
                                     55 	.globl _P3_0
                                     56 	.globl _P2_7
                                     57 	.globl _P2_6
                                     58 	.globl _P2_5
                                     59 	.globl _P2_4
                                     60 	.globl _P2_3
                                     61 	.globl _P2_2
                                     62 	.globl _P2_1
                                     63 	.globl _P2_0
                                     64 	.globl _P1_7
                                     65 	.globl _P1_6
                                     66 	.globl _P1_5
                                     67 	.globl _P1_4
                                     68 	.globl _P1_3
                                     69 	.globl _P1_2
                                     70 	.globl _P1_1
                                     71 	.globl _P1_0
                                     72 	.globl _P0_7
                                     73 	.globl _P0_6
                                     74 	.globl _P0_5
                                     75 	.globl _P0_4
                                     76 	.globl _P0_3
                                     77 	.globl _P0_2
                                     78 	.globl _P0_1
                                     79 	.globl _P0_0
                                     80 	.globl _PS
                                     81 	.globl _PT1
                                     82 	.globl _PX1
                                     83 	.globl _PT0
                                     84 	.globl _PX0
                                     85 	.globl _EA
                                     86 	.globl _ES
                                     87 	.globl _ET1
                                     88 	.globl _EX1
                                     89 	.globl _ET0
                                     90 	.globl _EX0
                                     91 	.globl _BREG_F7
                                     92 	.globl _BREG_F6
                                     93 	.globl _BREG_F5
                                     94 	.globl _BREG_F4
                                     95 	.globl _BREG_F3
                                     96 	.globl _BREG_F2
                                     97 	.globl _BREG_F1
                                     98 	.globl _BREG_F0
                                     99 	.globl _P5_7
                                    100 	.globl _P5_6
                                    101 	.globl _P5_5
                                    102 	.globl _P5_4
                                    103 	.globl _P5_3
                                    104 	.globl _P5_2
                                    105 	.globl _P5_1
                                    106 	.globl _P5_0
                                    107 	.globl _P4_7
                                    108 	.globl _P4_6
                                    109 	.globl _P4_5
                                    110 	.globl _P4_4
                                    111 	.globl _P4_3
                                    112 	.globl _P4_2
                                    113 	.globl _P4_1
                                    114 	.globl _P4_0
                                    115 	.globl _PX0L
                                    116 	.globl _PT0L
                                    117 	.globl _PX1L
                                    118 	.globl _PT1L
                                    119 	.globl _PSL
                                    120 	.globl _PT2L
                                    121 	.globl _PPCL
                                    122 	.globl _EC
                                    123 	.globl _CCF0
                                    124 	.globl _CCF1
                                    125 	.globl _CCF2
                                    126 	.globl _CCF3
                                    127 	.globl _CCF4
                                    128 	.globl _CR
                                    129 	.globl _CF
                                    130 	.globl _TF2
                                    131 	.globl _EXF2
                                    132 	.globl _RCLK
                                    133 	.globl _TCLK
                                    134 	.globl _EXEN2
                                    135 	.globl _TR2
                                    136 	.globl _C_T2
                                    137 	.globl _CP_RL2
                                    138 	.globl _T2CON_7
                                    139 	.globl _T2CON_6
                                    140 	.globl _T2CON_5
                                    141 	.globl _T2CON_4
                                    142 	.globl _T2CON_3
                                    143 	.globl _T2CON_2
                                    144 	.globl _T2CON_1
                                    145 	.globl _T2CON_0
                                    146 	.globl _PT2
                                    147 	.globl _ET2
                                    148 	.globl _TMOD
                                    149 	.globl _TL1
                                    150 	.globl _TL0
                                    151 	.globl _TH1
                                    152 	.globl _TH0
                                    153 	.globl _TCON
                                    154 	.globl _SP
                                    155 	.globl _SCON
                                    156 	.globl _SBUF0
                                    157 	.globl _SBUF
                                    158 	.globl _PSW
                                    159 	.globl _PCON
                                    160 	.globl _P3
                                    161 	.globl _P2
                                    162 	.globl _P1
                                    163 	.globl _P0
                                    164 	.globl _IP
                                    165 	.globl _IE
                                    166 	.globl _DP0L
                                    167 	.globl _DPL
                                    168 	.globl _DP0H
                                    169 	.globl _DPH
                                    170 	.globl _B
                                    171 	.globl _ACC
                                    172 	.globl _EECON
                                    173 	.globl _KBF
                                    174 	.globl _KBE
                                    175 	.globl _KBLS
                                    176 	.globl _BRL
                                    177 	.globl _BDRCON
                                    178 	.globl _T2MOD
                                    179 	.globl _SPDAT
                                    180 	.globl _SPSTA
                                    181 	.globl _SPCON
                                    182 	.globl _SADEN
                                    183 	.globl _SADDR
                                    184 	.globl _WDTPRG
                                    185 	.globl _WDTRST
                                    186 	.globl _P5
                                    187 	.globl _P4
                                    188 	.globl _IPH1
                                    189 	.globl _IPL1
                                    190 	.globl _IPH0
                                    191 	.globl _IPL0
                                    192 	.globl _IEN1
                                    193 	.globl _IEN0
                                    194 	.globl _CMOD
                                    195 	.globl _CL
                                    196 	.globl _CH
                                    197 	.globl _CCON
                                    198 	.globl _CCAPM4
                                    199 	.globl _CCAPM3
                                    200 	.globl _CCAPM2
                                    201 	.globl _CCAPM1
                                    202 	.globl _CCAPM0
                                    203 	.globl _CCAP4L
                                    204 	.globl _CCAP3L
                                    205 	.globl _CCAP2L
                                    206 	.globl _CCAP1L
                                    207 	.globl _CCAP0L
                                    208 	.globl _CCAP4H
                                    209 	.globl _CCAP3H
                                    210 	.globl _CCAP2H
                                    211 	.globl _CCAP1H
                                    212 	.globl _CCAP0H
                                    213 	.globl _CKCON1
                                    214 	.globl _CKCON0
                                    215 	.globl _CKRL
                                    216 	.globl _AUXR1
                                    217 	.globl _AUXR
                                    218 	.globl _TH2
                                    219 	.globl _TL2
                                    220 	.globl _RCAP2H
                                    221 	.globl _RCAP2L
                                    222 	.globl _T2CON
                                    223 	.globl _watchdog_flag
                                    224 	.globl _user_interface_PCA
                                    225 	.globl _pca_falling_edge
                                    226 	.globl _pca_software_timer
                                    227 	.globl _pca_high_speed
                                    228 	.globl _pca_pwm
                                    229 	.globl _pca_watchdog
                                    230 	.globl _hardware_watchdog
                                    231 	.globl _pca_idle
                                    232 	.globl _pca_pdown
                                    233 	.globl _fclk_lowest
                                    234 	.globl _print_pca_menu
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
                                    315 ;--------------------------------------------------------
                                    316 ; special function bits
                                    317 ;--------------------------------------------------------
                                    318 	.area RSEG    (ABS,DATA)
      000000                        319 	.org 0x0000
                           0000AD   320 _ET2	=	0x00ad
                           0000BD   321 _PT2	=	0x00bd
                           0000C8   322 _T2CON_0	=	0x00c8
                           0000C9   323 _T2CON_1	=	0x00c9
                           0000CA   324 _T2CON_2	=	0x00ca
                           0000CB   325 _T2CON_3	=	0x00cb
                           0000CC   326 _T2CON_4	=	0x00cc
                           0000CD   327 _T2CON_5	=	0x00cd
                           0000CE   328 _T2CON_6	=	0x00ce
                           0000CF   329 _T2CON_7	=	0x00cf
                           0000C8   330 _CP_RL2	=	0x00c8
                           0000C9   331 _C_T2	=	0x00c9
                           0000CA   332 _TR2	=	0x00ca
                           0000CB   333 _EXEN2	=	0x00cb
                           0000CC   334 _TCLK	=	0x00cc
                           0000CD   335 _RCLK	=	0x00cd
                           0000CE   336 _EXF2	=	0x00ce
                           0000CF   337 _TF2	=	0x00cf
                           0000DF   338 _CF	=	0x00df
                           0000DE   339 _CR	=	0x00de
                           0000DC   340 _CCF4	=	0x00dc
                           0000DB   341 _CCF3	=	0x00db
                           0000DA   342 _CCF2	=	0x00da
                           0000D9   343 _CCF1	=	0x00d9
                           0000D8   344 _CCF0	=	0x00d8
                           0000AE   345 _EC	=	0x00ae
                           0000BE   346 _PPCL	=	0x00be
                           0000BD   347 _PT2L	=	0x00bd
                           0000BC   348 _PSL	=	0x00bc
                           0000BB   349 _PT1L	=	0x00bb
                           0000BA   350 _PX1L	=	0x00ba
                           0000B9   351 _PT0L	=	0x00b9
                           0000B8   352 _PX0L	=	0x00b8
                           0000C0   353 _P4_0	=	0x00c0
                           0000C1   354 _P4_1	=	0x00c1
                           0000C2   355 _P4_2	=	0x00c2
                           0000C3   356 _P4_3	=	0x00c3
                           0000C4   357 _P4_4	=	0x00c4
                           0000C5   358 _P4_5	=	0x00c5
                           0000C6   359 _P4_6	=	0x00c6
                           0000C7   360 _P4_7	=	0x00c7
                           0000E8   361 _P5_0	=	0x00e8
                           0000E9   362 _P5_1	=	0x00e9
                           0000EA   363 _P5_2	=	0x00ea
                           0000EB   364 _P5_3	=	0x00eb
                           0000EC   365 _P5_4	=	0x00ec
                           0000ED   366 _P5_5	=	0x00ed
                           0000EE   367 _P5_6	=	0x00ee
                           0000EF   368 _P5_7	=	0x00ef
                           0000F0   369 _BREG_F0	=	0x00f0
                           0000F1   370 _BREG_F1	=	0x00f1
                           0000F2   371 _BREG_F2	=	0x00f2
                           0000F3   372 _BREG_F3	=	0x00f3
                           0000F4   373 _BREG_F4	=	0x00f4
                           0000F5   374 _BREG_F5	=	0x00f5
                           0000F6   375 _BREG_F6	=	0x00f6
                           0000F7   376 _BREG_F7	=	0x00f7
                           0000A8   377 _EX0	=	0x00a8
                           0000A9   378 _ET0	=	0x00a9
                           0000AA   379 _EX1	=	0x00aa
                           0000AB   380 _ET1	=	0x00ab
                           0000AC   381 _ES	=	0x00ac
                           0000AF   382 _EA	=	0x00af
                           0000B8   383 _PX0	=	0x00b8
                           0000B9   384 _PT0	=	0x00b9
                           0000BA   385 _PX1	=	0x00ba
                           0000BB   386 _PT1	=	0x00bb
                           0000BC   387 _PS	=	0x00bc
                           000080   388 _P0_0	=	0x0080
                           000081   389 _P0_1	=	0x0081
                           000082   390 _P0_2	=	0x0082
                           000083   391 _P0_3	=	0x0083
                           000084   392 _P0_4	=	0x0084
                           000085   393 _P0_5	=	0x0085
                           000086   394 _P0_6	=	0x0086
                           000087   395 _P0_7	=	0x0087
                           000090   396 _P1_0	=	0x0090
                           000091   397 _P1_1	=	0x0091
                           000092   398 _P1_2	=	0x0092
                           000093   399 _P1_3	=	0x0093
                           000094   400 _P1_4	=	0x0094
                           000095   401 _P1_5	=	0x0095
                           000096   402 _P1_6	=	0x0096
                           000097   403 _P1_7	=	0x0097
                           0000A0   404 _P2_0	=	0x00a0
                           0000A1   405 _P2_1	=	0x00a1
                           0000A2   406 _P2_2	=	0x00a2
                           0000A3   407 _P2_3	=	0x00a3
                           0000A4   408 _P2_4	=	0x00a4
                           0000A5   409 _P2_5	=	0x00a5
                           0000A6   410 _P2_6	=	0x00a6
                           0000A7   411 _P2_7	=	0x00a7
                           0000B0   412 _P3_0	=	0x00b0
                           0000B1   413 _P3_1	=	0x00b1
                           0000B2   414 _P3_2	=	0x00b2
                           0000B3   415 _P3_3	=	0x00b3
                           0000B4   416 _P3_4	=	0x00b4
                           0000B5   417 _P3_5	=	0x00b5
                           0000B6   418 _P3_6	=	0x00b6
                           0000B7   419 _P3_7	=	0x00b7
                           0000B0   420 _RXD	=	0x00b0
                           0000B0   421 _RXD0	=	0x00b0
                           0000B1   422 _TXD	=	0x00b1
                           0000B1   423 _TXD0	=	0x00b1
                           0000B2   424 _INT0	=	0x00b2
                           0000B3   425 _INT1	=	0x00b3
                           0000B4   426 _T0	=	0x00b4
                           0000B5   427 _T1	=	0x00b5
                           0000B6   428 _WR	=	0x00b6
                           0000B7   429 _RD	=	0x00b7
                           0000D0   430 _P	=	0x00d0
                           0000D1   431 _F1	=	0x00d1
                           0000D2   432 _OV	=	0x00d2
                           0000D3   433 _RS0	=	0x00d3
                           0000D4   434 _RS1	=	0x00d4
                           0000D5   435 _F0	=	0x00d5
                           0000D6   436 _AC	=	0x00d6
                           0000D7   437 _CY	=	0x00d7
                           000098   438 _RI	=	0x0098
                           000099   439 _TI	=	0x0099
                           00009A   440 _RB8	=	0x009a
                           00009B   441 _TB8	=	0x009b
                           00009C   442 _REN	=	0x009c
                           00009D   443 _SM2	=	0x009d
                           00009E   444 _SM1	=	0x009e
                           00009F   445 _SM0	=	0x009f
                           000088   446 _IT0	=	0x0088
                           000089   447 _IE0	=	0x0089
                           00008A   448 _IT1	=	0x008a
                           00008B   449 _IE1	=	0x008b
                           00008C   450 _TR0	=	0x008c
                           00008D   451 _TF0	=	0x008d
                           00008E   452 _TR1	=	0x008e
                           00008F   453 _TF1	=	0x008f
                                    454 ;--------------------------------------------------------
                                    455 ; overlayable register banks
                                    456 ;--------------------------------------------------------
                                    457 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        458 	.ds 8
                                    459 ;--------------------------------------------------------
                                    460 ; internal ram data
                                    461 ;--------------------------------------------------------
                                    462 	.area DSEG    (DATA)
                                    463 ;--------------------------------------------------------
                                    464 ; overlayable items in internal ram 
                                    465 ;--------------------------------------------------------
                                    466 ;--------------------------------------------------------
                                    467 ; indirectly addressable internal ram data
                                    468 ;--------------------------------------------------------
                                    469 	.area ISEG    (DATA)
                                    470 ;--------------------------------------------------------
                                    471 ; absolute internal ram data
                                    472 ;--------------------------------------------------------
                                    473 	.area IABS    (ABS,DATA)
                                    474 	.area IABS    (ABS,DATA)
                                    475 ;--------------------------------------------------------
                                    476 ; bit data
                                    477 ;--------------------------------------------------------
                                    478 	.area BSEG    (BIT)
                                    479 ;--------------------------------------------------------
                                    480 ; paged external ram data
                                    481 ;--------------------------------------------------------
                                    482 	.area PSEG    (PAG,XDATA)
                                    483 ;--------------------------------------------------------
                                    484 ; external ram data
                                    485 ;--------------------------------------------------------
                                    486 	.area XSEG    (XDATA)
                                    487 ;--------------------------------------------------------
                                    488 ; absolute external ram data
                                    489 ;--------------------------------------------------------
                                    490 	.area XABS    (ABS,XDATA)
                                    491 ;--------------------------------------------------------
                                    492 ; external initialized ram data
                                    493 ;--------------------------------------------------------
                                    494 	.area XISEG   (XDATA)
      001569                        495 _watchdog_flag::
      001569                        496 	.ds 2
                                    497 	.area HOME    (CODE)
                                    498 	.area GSINIT0 (CODE)
                                    499 	.area GSINIT1 (CODE)
                                    500 	.area GSINIT2 (CODE)
                                    501 	.area GSINIT3 (CODE)
                                    502 	.area GSINIT4 (CODE)
                                    503 	.area GSINIT5 (CODE)
                                    504 	.area GSINIT  (CODE)
                                    505 	.area GSFINAL (CODE)
                                    506 	.area CSEG    (CODE)
                                    507 ;--------------------------------------------------------
                                    508 ; global & static initialisations
                                    509 ;--------------------------------------------------------
                                    510 	.area HOME    (CODE)
                                    511 	.area GSINIT  (CODE)
                                    512 	.area GSFINAL (CODE)
                                    513 	.area GSINIT  (CODE)
                                    514 ;--------------------------------------------------------
                                    515 ; Home
                                    516 ;--------------------------------------------------------
                                    517 	.area HOME    (CODE)
                                    518 	.area HOME    (CODE)
                                    519 ;--------------------------------------------------------
                                    520 ; code
                                    521 ;--------------------------------------------------------
                                    522 	.area CSEG    (CODE)
                                    523 ;------------------------------------------------------------
                                    524 ;Allocation info for local variables in function 'user_interface_PCA'
                                    525 ;------------------------------------------------------------
                                    526 ;inp                       Allocated with name '_user_interface_PCA_inp_65537_47'
                                    527 ;------------------------------------------------------------
                                    528 ;	pca.c:26: void user_interface_PCA()
                                    529 ;	-----------------------------------------
                                    530 ;	 function user_interface_PCA
                                    531 ;	-----------------------------------------
      0013A7                        532 _user_interface_PCA:
                           000007   533 	ar7 = 0x07
                           000006   534 	ar6 = 0x06
                           000005   535 	ar5 = 0x05
                           000004   536 	ar4 = 0x04
                           000003   537 	ar3 = 0x03
                           000002   538 	ar2 = 0x02
                           000001   539 	ar1 = 0x01
                           000000   540 	ar0 = 0x00
                                    541 ;	pca.c:28: printf("Hello, In PCA Demo mode \n\r");
      0013A7 74 F1            [12]  542 	mov	a,#___str_0
      0013A9 C0 E0            [24]  543 	push	acc
      0013AB 74 32            [12]  544 	mov	a,#(___str_0 >> 8)
      0013AD C0 E0            [24]  545 	push	acc
      0013AF 74 80            [12]  546 	mov	a,#0x80
      0013B1 C0 E0            [24]  547 	push	acc
      0013B3 12 22 2E         [24]  548 	lcall	_printf
      0013B6 15 81            [12]  549 	dec	sp
      0013B8 15 81            [12]  550 	dec	sp
      0013BA 15 81            [12]  551 	dec	sp
                                    552 ;	pca.c:29: print_pca_menu();
      0013BC 12 16 3B         [24]  553 	lcall	_print_pca_menu
                                    554 ;	pca.c:32: wrong_choice_pca:
      0013BF                        555 00101$:
                                    556 ;	pca.c:33: printf("Please make a valid choice \n\r");
      0013BF 74 0C            [12]  557 	mov	a,#___str_1
      0013C1 C0 E0            [24]  558 	push	acc
      0013C3 74 33            [12]  559 	mov	a,#(___str_1 >> 8)
      0013C5 C0 E0            [24]  560 	push	acc
      0013C7 74 80            [12]  561 	mov	a,#0x80
      0013C9 C0 E0            [24]  562 	push	acc
      0013CB 12 22 2E         [24]  563 	lcall	_printf
      0013CE 15 81            [12]  564 	dec	sp
      0013D0 15 81            [12]  565 	dec	sp
      0013D2 15 81            [12]  566 	dec	sp
                                    567 ;	pca.c:34: inp = getchar();
      0013D4 12 07 5E         [24]  568 	lcall	_getchar
      0013D7 AE 82            [24]  569 	mov	r6,dpl
      0013D9 AF 83            [24]  570 	mov	r7,dph
                                    571 ;	pca.c:35: if (inp == 0x46)
      0013DB BE 46 09         [24]  572 	cjne	r6,#0x46,00127$
      0013DE BF 00 06         [24]  573 	cjne	r7,#0x00,00127$
                                    574 ;	pca.c:36: pca_falling_edge();
      0013E1 12 14 67         [24]  575 	lcall	_pca_falling_edge
      0013E4 02 14 42         [24]  576 	ljmp	00145$
      0013E7                        577 00127$:
                                    578 ;	pca.c:37: else if (inp == 0x53)
      0013E7 BE 53 08         [24]  579 	cjne	r6,#0x53,00124$
      0013EA BF 00 05         [24]  580 	cjne	r7,#0x00,00124$
                                    581 ;	pca.c:38: pca_software_timer();
      0013ED 12 14 82         [24]  582 	lcall	_pca_software_timer
      0013F0 80 50            [24]  583 	sjmp	00145$
      0013F2                        584 00124$:
                                    585 ;	pca.c:39: else if (inp == 0x48)
      0013F2 BE 48 08         [24]  586 	cjne	r6,#0x48,00121$
      0013F5 BF 00 05         [24]  587 	cjne	r7,#0x00,00121$
                                    588 ;	pca.c:40: pca_high_speed();
      0013F8 12 14 B3         [24]  589 	lcall	_pca_high_speed
      0013FB 80 45            [24]  590 	sjmp	00145$
      0013FD                        591 00121$:
                                    592 ;	pca.c:41: else if (inp == 0x50)
      0013FD BE 50 08         [24]  593 	cjne	r6,#0x50,00118$
      001400 BF 00 05         [24]  594 	cjne	r7,#0x00,00118$
                                    595 ;	pca.c:42: pca_pwm();
      001403 12 14 D7         [24]  596 	lcall	_pca_pwm
      001406 80 3A            [24]  597 	sjmp	00145$
      001408                        598 00118$:
                                    599 ;	pca.c:43: else if (inp == 0x57)
      001408 BE 57 08         [24]  600 	cjne	r6,#0x57,00115$
      00140B BF 00 05         [24]  601 	cjne	r7,#0x00,00115$
                                    602 ;	pca.c:44: pca_watchdog();
      00140E 12 14 FB         [24]  603 	lcall	_pca_watchdog
      001411 80 2F            [24]  604 	sjmp	00145$
      001413                        605 00115$:
                                    606 ;	pca.c:45: else if (inp == 0x49)
      001413 BE 49 08         [24]  607 	cjne	r6,#0x49,00112$
      001416 BF 00 05         [24]  608 	cjne	r7,#0x00,00112$
                                    609 ;	pca.c:46: pca_idle();
      001419 12 15 9F         [24]  610 	lcall	_pca_idle
      00141C 80 24            [24]  611 	sjmp	00145$
      00141E                        612 00112$:
                                    613 ;	pca.c:47: else if (inp == 0x44)
      00141E BE 44 08         [24]  614 	cjne	r6,#0x44,00109$
      001421 BF 00 05         [24]  615 	cjne	r7,#0x00,00109$
                                    616 ;	pca.c:48: pca_pdown();
      001424 12 15 D4         [24]  617 	lcall	_pca_pdown
      001427 80 19            [24]  618 	sjmp	00145$
      001429                        619 00109$:
                                    620 ;	pca.c:49: else if (inp == 0x4C)
      001429 BE 4C 08         [24]  621 	cjne	r6,#0x4c,00106$
      00142C BF 00 05         [24]  622 	cjne	r7,#0x00,00106$
                                    623 ;	pca.c:50: fclk_lowest();
      00142F 12 16 09         [24]  624 	lcall	_fclk_lowest
      001432 80 0E            [24]  625 	sjmp	00145$
      001434                        626 00106$:
                                    627 ;	pca.c:51: else if (inp == 0x55)
      001434 BE 55 05         [24]  628 	cjne	r6,#0x55,00199$
      001437 BF 00 02         [24]  629 	cjne	r7,#0x00,00199$
      00143A 80 03            [24]  630 	sjmp	00200$
      00143C                        631 00199$:
      00143C 02 13 BF         [24]  632 	ljmp	00101$
      00143F                        633 00200$:
                                    634 ;	pca.c:52: hardware_watchdog();
      00143F 12 15 56         [24]  635 	lcall	_hardware_watchdog
                                    636 ;	pca.c:56: exit_choice:
      001442                        637 00145$:
      001442                        638 00129$:
                                    639 ;	pca.c:57: printf("Please 'E' to exit or Reset \n\r");
      001442 74 2A            [12]  640 	mov	a,#___str_2
      001444 C0 E0            [24]  641 	push	acc
      001446 74 33            [12]  642 	mov	a,#(___str_2 >> 8)
      001448 C0 E0            [24]  643 	push	acc
      00144A 74 80            [12]  644 	mov	a,#0x80
      00144C C0 E0            [24]  645 	push	acc
      00144E 12 22 2E         [24]  646 	lcall	_printf
      001451 15 81            [12]  647 	dec	sp
      001453 15 81            [12]  648 	dec	sp
      001455 15 81            [12]  649 	dec	sp
                                    650 ;	pca.c:58: inp = getchar();
      001457 12 07 5E         [24]  651 	lcall	_getchar
      00145A AE 82            [24]  652 	mov	r6,dpl
      00145C AF 83            [24]  653 	mov	r7,dph
                                    654 ;	pca.c:59: if (inp == 0x45)
      00145E BE 45 E1         [24]  655 	cjne	r6,#0x45,00129$
      001461 BF 00 DE         [24]  656 	cjne	r7,#0x00,00129$
                                    657 ;	pca.c:60: user_interface_PCA();
                                    658 ;	pca.c:62: goto exit_choice;
                                    659 ;	pca.c:63: }
      001464 02 13 A7         [24]  660 	ljmp	_user_interface_PCA
                                    661 ;------------------------------------------------------------
                                    662 ;Allocation info for local variables in function 'pca_falling_edge'
                                    663 ;------------------------------------------------------------
                                    664 ;	pca.c:71: void pca_falling_edge()
                                    665 ;	-----------------------------------------
                                    666 ;	 function pca_falling_edge
                                    667 ;	-----------------------------------------
      001467                        668 _pca_falling_edge:
                                    669 ;	pca.c:73: printf("Setting P1.3 as falling edge detector, enabling PCA interrupt \n\r");
      001467 74 49            [12]  670 	mov	a,#___str_3
      001469 C0 E0            [24]  671 	push	acc
      00146B 74 33            [12]  672 	mov	a,#(___str_3 >> 8)
      00146D C0 E0            [24]  673 	push	acc
      00146F 74 80            [12]  674 	mov	a,#0x80
      001471 C0 E0            [24]  675 	push	acc
      001473 12 22 2E         [24]  676 	lcall	_printf
      001476 15 81            [12]  677 	dec	sp
      001478 15 81            [12]  678 	dec	sp
      00147A 15 81            [12]  679 	dec	sp
                                    680 ;	pca.c:74: CCAPM0 = 0x21;
      00147C 75 DA 21         [24]  681 	mov	_CCAPM0,#0x21
                                    682 ;	pca.c:75: CR = 1;
                                    683 ;	assignBit
      00147F D2 DE            [12]  684 	setb	_CR
                                    685 ;	pca.c:76: }
      001481 22               [24]  686 	ret
                                    687 ;------------------------------------------------------------
                                    688 ;Allocation info for local variables in function 'pca_software_timer'
                                    689 ;------------------------------------------------------------
                                    690 ;rec                       Allocated with name '_pca_software_timer_rec_65537_50'
                                    691 ;------------------------------------------------------------
                                    692 ;	pca.c:83: void pca_software_timer()
                                    693 ;	-----------------------------------------
                                    694 ;	 function pca_software_timer
                                    695 ;	-----------------------------------------
      001482                        696 _pca_software_timer:
                                    697 ;	pca.c:85: printf("Entering Software Timer Mode \n\r");
      001482 74 8A            [12]  698 	mov	a,#___str_4
      001484 C0 E0            [24]  699 	push	acc
      001486 74 33            [12]  700 	mov	a,#(___str_4 >> 8)
      001488 C0 E0            [24]  701 	push	acc
      00148A 74 80            [12]  702 	mov	a,#0x80
      00148C C0 E0            [24]  703 	push	acc
      00148E 12 22 2E         [24]  704 	lcall	_printf
      001491 15 81            [12]  705 	dec	sp
      001493 15 81            [12]  706 	dec	sp
      001495 15 81            [12]  707 	dec	sp
                                    708 ;	pca.c:86: CCAP3L = 255;
      001497 75 ED FF         [24]  709 	mov	_CCAP3L,#0xff
                                    710 ;	pca.c:87: CCAP3H = 255;
      00149A 75 FD FF         [24]  711 	mov	_CCAP3H,#0xff
                                    712 ;	pca.c:88: CCAPM3 = 0x49;
      00149D 75 DD 49         [24]  713 	mov	_CCAPM3,#0x49
                                    714 ;	pca.c:89: CR = 1;
                                    715 ;	assignBit
      0014A0 D2 DE            [12]  716 	setb	_CR
                                    717 ;	pca.c:91: get_f:
      0014A2                        718 00101$:
                                    719 ;	pca.c:92: rec = getchar();
      0014A2 12 07 5E         [24]  720 	lcall	_getchar
      0014A5 AE 82            [24]  721 	mov	r6,dpl
      0014A7 AF 83            [24]  722 	mov	r7,dph
                                    723 ;	pca.c:94: if (rec == 0x53)
      0014A9 BE 53 F6         [24]  724 	cjne	r6,#0x53,00101$
      0014AC BF 00 F3         [24]  725 	cjne	r7,#0x00,00101$
                                    726 ;	pca.c:95: CCAPM3 = 0;
      0014AF 75 DD 00         [24]  727 	mov	_CCAPM3,#0x00
                                    728 ;	pca.c:97: goto get_f;
                                    729 ;	pca.c:98: }
      0014B2 22               [24]  730 	ret
                                    731 ;------------------------------------------------------------
                                    732 ;Allocation info for local variables in function 'pca_high_speed'
                                    733 ;------------------------------------------------------------
                                    734 ;	pca.c:105: void pca_high_speed()
                                    735 ;	-----------------------------------------
                                    736 ;	 function pca_high_speed
                                    737 ;	-----------------------------------------
      0014B3                        738 _pca_high_speed:
                                    739 ;	pca.c:108: printf("Entering High Speed Toggle Mode, P1.5 \n\r");
      0014B3 74 AA            [12]  740 	mov	a,#___str_5
      0014B5 C0 E0            [24]  741 	push	acc
      0014B7 74 33            [12]  742 	mov	a,#(___str_5 >> 8)
      0014B9 C0 E0            [24]  743 	push	acc
      0014BB 74 80            [12]  744 	mov	a,#0x80
      0014BD C0 E0            [24]  745 	push	acc
      0014BF 12 22 2E         [24]  746 	lcall	_printf
      0014C2 15 81            [12]  747 	dec	sp
      0014C4 15 81            [12]  748 	dec	sp
      0014C6 15 81            [12]  749 	dec	sp
                                    750 ;	pca.c:109: CCAP2L = 255;
      0014C8 75 EC FF         [24]  751 	mov	_CCAP2L,#0xff
                                    752 ;	pca.c:110: CCAP2H = 2;
      0014CB 75 FC 02         [24]  753 	mov	_CCAP2H,#0x02
                                    754 ;	pca.c:111: CCAPM2 = 0x4D;
      0014CE 75 DC 4D         [24]  755 	mov	_CCAPM2,#0x4d
                                    756 ;	pca.c:112: CMOD = CPS0;
      0014D1 75 D9 02         [24]  757 	mov	_CMOD,#0x02
                                    758 ;	pca.c:113: CR = 1;
                                    759 ;	assignBit
      0014D4 D2 DE            [12]  760 	setb	_CR
                                    761 ;	pca.c:114: }
      0014D6 22               [24]  762 	ret
                                    763 ;------------------------------------------------------------
                                    764 ;Allocation info for local variables in function 'pca_pwm'
                                    765 ;------------------------------------------------------------
                                    766 ;	pca.c:121: void pca_pwm()
                                    767 ;	-----------------------------------------
                                    768 ;	 function pca_pwm
                                    769 ;	-----------------------------------------
      0014D7                        770 _pca_pwm:
                                    771 ;	pca.c:123: printf("Entering PWM Mode, 25 percent Duty Cycle P1.6\n\r");
      0014D7 74 D3            [12]  772 	mov	a,#___str_6
      0014D9 C0 E0            [24]  773 	push	acc
      0014DB 74 33            [12]  774 	mov	a,#(___str_6 >> 8)
      0014DD C0 E0            [24]  775 	push	acc
      0014DF 74 80            [12]  776 	mov	a,#0x80
      0014E1 C0 E0            [24]  777 	push	acc
      0014E3 12 22 2E         [24]  778 	lcall	_printf
      0014E6 15 81            [12]  779 	dec	sp
      0014E8 15 81            [12]  780 	dec	sp
      0014EA 15 81            [12]  781 	dec	sp
                                    782 ;	pca.c:124: CCAP3L = 192;
      0014EC 75 ED C0         [24]  783 	mov	_CCAP3L,#0xc0
                                    784 ;	pca.c:125: CCAP3H = 192;
      0014EF 75 FD C0         [24]  785 	mov	_CCAP3H,#0xc0
                                    786 ;	pca.c:126: CCAPM3 = 0x42;
      0014F2 75 DD 42         [24]  787 	mov	_CCAPM3,#0x42
                                    788 ;	pca.c:127: CMOD = CPS0;
      0014F5 75 D9 02         [24]  789 	mov	_CMOD,#0x02
                                    790 ;	pca.c:128: CR = 1;
                                    791 ;	assignBit
      0014F8 D2 DE            [12]  792 	setb	_CR
                                    793 ;	pca.c:129: }
      0014FA 22               [24]  794 	ret
                                    795 ;------------------------------------------------------------
                                    796 ;Allocation info for local variables in function 'pca_watchdog'
                                    797 ;------------------------------------------------------------
                                    798 ;rec                       Allocated with name '_pca_watchdog_rec_65537_54'
                                    799 ;------------------------------------------------------------
                                    800 ;	pca.c:136: void pca_watchdog()
                                    801 ;	-----------------------------------------
                                    802 ;	 function pca_watchdog
                                    803 ;	-----------------------------------------
      0014FB                        804 _pca_watchdog:
                                    805 ;	pca.c:138: CCAP1L = 255;
      0014FB 75 EB FF         [24]  806 	mov	_CCAP1L,#0xff
                                    807 ;	pca.c:139: CCAP1H = 128;
      0014FE 75 FB 80         [24]  808 	mov	_CCAP1H,#0x80
                                    809 ;	pca.c:140: CCAPM1 = 0x49;
      001501 75 DB 49         [24]  810 	mov	_CCAPM1,#0x49
                                    811 ;	pca.c:141: watchdog_flag = 1;
      001504 90 15 69         [24]  812 	mov	dptr,#_watchdog_flag
      001507 74 01            [12]  813 	mov	a,#0x01
      001509 F0               [24]  814 	movx	@dptr,a
      00150A E4               [12]  815 	clr	a
      00150B A3               [24]  816 	inc	dptr
      00150C F0               [24]  817 	movx	@dptr,a
                                    818 ;	pca.c:142: printf("Enabling Watchdog Timer..\n\r");
      00150D 74 03            [12]  819 	mov	a,#___str_7
      00150F C0 E0            [24]  820 	push	acc
      001511 74 34            [12]  821 	mov	a,#(___str_7 >> 8)
      001513 C0 E0            [24]  822 	push	acc
      001515 74 80            [12]  823 	mov	a,#0x80
      001517 C0 E0            [24]  824 	push	acc
      001519 12 22 2E         [24]  825 	lcall	_printf
      00151C 15 81            [12]  826 	dec	sp
      00151E 15 81            [12]  827 	dec	sp
      001520 15 81            [12]  828 	dec	sp
                                    829 ;	pca.c:143: CCAP4L = 255;
      001522 75 EE FF         [24]  830 	mov	_CCAP4L,#0xff
                                    831 ;	pca.c:144: CCAP4H = 255;
      001525 75 FE FF         [24]  832 	mov	_CCAP4H,#0xff
                                    833 ;	pca.c:145: CMOD = WDTE;
      001528 75 D9 40         [24]  834 	mov	_CMOD,#0x40
                                    835 ;	pca.c:146: CCAPM4 = 0x48;
      00152B 75 DE 48         [24]  836 	mov	_CCAPM4,#0x48
                                    837 ;	pca.c:147: CR = 1;
                                    838 ;	assignBit
      00152E D2 DE            [12]  839 	setb	_CR
                                    840 ;	pca.c:149: printf("Currently Watchdog is being serviced\n\rPress 'S' to stop and generate a reset \n\r");
      001530 74 1F            [12]  841 	mov	a,#___str_8
      001532 C0 E0            [24]  842 	push	acc
      001534 74 34            [12]  843 	mov	a,#(___str_8 >> 8)
      001536 C0 E0            [24]  844 	push	acc
      001538 74 80            [12]  845 	mov	a,#0x80
      00153A C0 E0            [24]  846 	push	acc
      00153C 12 22 2E         [24]  847 	lcall	_printf
      00153F 15 81            [12]  848 	dec	sp
      001541 15 81            [12]  849 	dec	sp
      001543 15 81            [12]  850 	dec	sp
                                    851 ;	pca.c:151: get_e:
      001545                        852 00101$:
                                    853 ;	pca.c:152: rec = getchar();
      001545 12 07 5E         [24]  854 	lcall	_getchar
      001548 AE 82            [24]  855 	mov	r6,dpl
      00154A AF 83            [24]  856 	mov	r7,dph
                                    857 ;	pca.c:154: if (rec == 0x53)
      00154C BE 53 F6         [24]  858 	cjne	r6,#0x53,00101$
      00154F BF 00 F3         [24]  859 	cjne	r7,#0x00,00101$
                                    860 ;	pca.c:155: CCAPM1 = 0;
      001552 75 DB 00         [24]  861 	mov	_CCAPM1,#0x00
                                    862 ;	pca.c:157: goto get_e;
                                    863 ;	pca.c:158: }
      001555 22               [24]  864 	ret
                                    865 ;------------------------------------------------------------
                                    866 ;Allocation info for local variables in function 'hardware_watchdog'
                                    867 ;------------------------------------------------------------
                                    868 ;rec                       Allocated with name '_hardware_watchdog_rec_65537_56'
                                    869 ;------------------------------------------------------------
                                    870 ;	pca.c:165: void hardware_watchdog()
                                    871 ;	-----------------------------------------
                                    872 ;	 function hardware_watchdog
                                    873 ;	-----------------------------------------
      001556                        874 _hardware_watchdog:
                                    875 ;	pca.c:167: CCAP2L = 255;
      001556 75 EC FF         [24]  876 	mov	_CCAP2L,#0xff
                                    877 ;	pca.c:168: CCAP2H = 255;
      001559 75 FC FF         [24]  878 	mov	_CCAP2H,#0xff
                                    879 ;	pca.c:169: CCAPM2 = 0x49;
      00155C 75 DC 49         [24]  880 	mov	_CCAPM2,#0x49
                                    881 ;	pca.c:170: printf("Enabling Hardware Watchdog Timer..\n\r");
      00155F 74 6F            [12]  882 	mov	a,#___str_9
      001561 C0 E0            [24]  883 	push	acc
      001563 74 34            [12]  884 	mov	a,#(___str_9 >> 8)
      001565 C0 E0            [24]  885 	push	acc
      001567 74 80            [12]  886 	mov	a,#0x80
      001569 C0 E0            [24]  887 	push	acc
      00156B 12 22 2E         [24]  888 	lcall	_printf
      00156E 15 81            [12]  889 	dec	sp
      001570 15 81            [12]  890 	dec	sp
      001572 15 81            [12]  891 	dec	sp
                                    892 ;	pca.c:171: WDTPRG = 0x7;
      001574 75 A7 07         [24]  893 	mov	_WDTPRG,#0x07
                                    894 ;	pca.c:172: CR = 1;
                                    895 ;	assignBit
      001577 D2 DE            [12]  896 	setb	_CR
                                    897 ;	pca.c:174: printf("Currently Hardware Watchdog is being serviced\n\rPress 'S' to stop watchdog service and generate a reset in ~1s \n\r");
      001579 74 94            [12]  898 	mov	a,#___str_10
      00157B C0 E0            [24]  899 	push	acc
      00157D 74 34            [12]  900 	mov	a,#(___str_10 >> 8)
      00157F C0 E0            [24]  901 	push	acc
      001581 74 80            [12]  902 	mov	a,#0x80
      001583 C0 E0            [24]  903 	push	acc
      001585 12 22 2E         [24]  904 	lcall	_printf
      001588 15 81            [12]  905 	dec	sp
      00158A 15 81            [12]  906 	dec	sp
      00158C 15 81            [12]  907 	dec	sp
                                    908 ;	pca.c:176: get_e:
      00158E                        909 00101$:
                                    910 ;	pca.c:177: rec = getchar();
      00158E 12 07 5E         [24]  911 	lcall	_getchar
      001591 AE 82            [24]  912 	mov	r6,dpl
      001593 AF 83            [24]  913 	mov	r7,dph
                                    914 ;	pca.c:179: if (rec == 0x53)
      001595 BE 53 F6         [24]  915 	cjne	r6,#0x53,00101$
      001598 BF 00 F3         [24]  916 	cjne	r7,#0x00,00101$
                                    917 ;	pca.c:180: CCAPM2 = 0;
      00159B 75 DC 00         [24]  918 	mov	_CCAPM2,#0x00
                                    919 ;	pca.c:182: goto get_e;
                                    920 ;	pca.c:183: }
      00159E 22               [24]  921 	ret
                                    922 ;------------------------------------------------------------
                                    923 ;Allocation info for local variables in function 'pca_idle'
                                    924 ;------------------------------------------------------------
                                    925 ;	pca.c:190: void pca_idle()
                                    926 ;	-----------------------------------------
                                    927 ;	 function pca_idle
                                    928 ;	-----------------------------------------
      00159F                        929 _pca_idle:
                                    930 ;	pca.c:192: pca_pwm();
      00159F 12 14 D7         [24]  931 	lcall	_pca_pwm
                                    932 ;	pca.c:193: printf("Entering Idle, Will Exit on external interrupt 0\n\r");
      0015A2 74 05            [12]  933 	mov	a,#___str_11
      0015A4 C0 E0            [24]  934 	push	acc
      0015A6 74 35            [12]  935 	mov	a,#(___str_11 >> 8)
      0015A8 C0 E0            [24]  936 	push	acc
      0015AA 74 80            [12]  937 	mov	a,#0x80
      0015AC C0 E0            [24]  938 	push	acc
      0015AE 12 22 2E         [24]  939 	lcall	_printf
      0015B1 15 81            [12]  940 	dec	sp
      0015B3 15 81            [12]  941 	dec	sp
      0015B5 15 81            [12]  942 	dec	sp
                                    943 ;	pca.c:194: EX0 = 1;
                                    944 ;	assignBit
      0015B7 D2 A8            [12]  945 	setb	_EX0
                                    946 ;	pca.c:195: PCON = IDL;
      0015B9 75 87 01         [24]  947 	mov	_PCON,#0x01
                                    948 ;	pca.c:196: printf("Woke up from Idle/Power down, going to main menu \n\r");
      0015BC 74 38            [12]  949 	mov	a,#___str_12
      0015BE C0 E0            [24]  950 	push	acc
      0015C0 74 35            [12]  951 	mov	a,#(___str_12 >> 8)
      0015C2 C0 E0            [24]  952 	push	acc
      0015C4 74 80            [12]  953 	mov	a,#0x80
      0015C6 C0 E0            [24]  954 	push	acc
      0015C8 12 22 2E         [24]  955 	lcall	_printf
      0015CB 15 81            [12]  956 	dec	sp
      0015CD 15 81            [12]  957 	dec	sp
      0015CF 15 81            [12]  958 	dec	sp
                                    959 ;	pca.c:197: main_menu();
                                    960 ;	pca.c:198: }
      0015D1 02 00 B5         [24]  961 	ljmp	_main_menu
                                    962 ;------------------------------------------------------------
                                    963 ;Allocation info for local variables in function 'pca_pdown'
                                    964 ;------------------------------------------------------------
                                    965 ;	pca.c:205: void pca_pdown()
                                    966 ;	-----------------------------------------
                                    967 ;	 function pca_pdown
                                    968 ;	-----------------------------------------
      0015D4                        969 _pca_pdown:
                                    970 ;	pca.c:207: pca_pwm();
      0015D4 12 14 D7         [24]  971 	lcall	_pca_pwm
                                    972 ;	pca.c:208: printf("Entering power down, Will Exit on external interrupt 0\n\r");
      0015D7 74 6C            [12]  973 	mov	a,#___str_13
      0015D9 C0 E0            [24]  974 	push	acc
      0015DB 74 35            [12]  975 	mov	a,#(___str_13 >> 8)
      0015DD C0 E0            [24]  976 	push	acc
      0015DF 74 80            [12]  977 	mov	a,#0x80
      0015E1 C0 E0            [24]  978 	push	acc
      0015E3 12 22 2E         [24]  979 	lcall	_printf
      0015E6 15 81            [12]  980 	dec	sp
      0015E8 15 81            [12]  981 	dec	sp
      0015EA 15 81            [12]  982 	dec	sp
                                    983 ;	pca.c:209: EX0 = 1;
                                    984 ;	assignBit
      0015EC D2 A8            [12]  985 	setb	_EX0
                                    986 ;	pca.c:210: PCON = PD;
      0015EE 75 87 02         [24]  987 	mov	_PCON,#0x02
                                    988 ;	pca.c:211: printf("Woke up from Idle/Power down, going to main menu \n\r");
      0015F1 74 38            [12]  989 	mov	a,#___str_12
      0015F3 C0 E0            [24]  990 	push	acc
      0015F5 74 35            [12]  991 	mov	a,#(___str_12 >> 8)
      0015F7 C0 E0            [24]  992 	push	acc
      0015F9 74 80            [12]  993 	mov	a,#0x80
      0015FB C0 E0            [24]  994 	push	acc
      0015FD 12 22 2E         [24]  995 	lcall	_printf
      001600 15 81            [12]  996 	dec	sp
      001602 15 81            [12]  997 	dec	sp
      001604 15 81            [12]  998 	dec	sp
                                    999 ;	pca.c:212: main_menu();
                                   1000 ;	pca.c:214: }
      001606 02 00 B5         [24] 1001 	ljmp	_main_menu
                                   1002 ;------------------------------------------------------------
                                   1003 ;Allocation info for local variables in function 'fclk_lowest'
                                   1004 ;------------------------------------------------------------
                                   1005 ;	pca.c:221: void fclk_lowest()
                                   1006 ;	-----------------------------------------
                                   1007 ;	 function fclk_lowest
                                   1008 ;	-----------------------------------------
      001609                       1009 _fclk_lowest:
                                   1010 ;	pca.c:223: printf("Changing Clock prescalar to go to lowest frequency in X2 Mode..\n\r");
      001609 74 A5            [12] 1011 	mov	a,#___str_14
      00160B C0 E0            [24] 1012 	push	acc
      00160D 74 35            [12] 1013 	mov	a,#(___str_14 >> 8)
      00160F C0 E0            [24] 1014 	push	acc
      001611 74 80            [12] 1015 	mov	a,#0x80
      001613 C0 E0            [24] 1016 	push	acc
      001615 12 22 2E         [24] 1017 	lcall	_printf
      001618 15 81            [12] 1018 	dec	sp
      00161A 15 81            [12] 1019 	dec	sp
      00161C 15 81            [12] 1020 	dec	sp
                                   1021 ;	pca.c:224: printf("This UART Session will stop working...\n\r");
      00161E 74 E7            [12] 1022 	mov	a,#___str_15
      001620 C0 E0            [24] 1023 	push	acc
      001622 74 35            [12] 1024 	mov	a,#(___str_15 >> 8)
      001624 C0 E0            [24] 1025 	push	acc
      001626 74 80            [12] 1026 	mov	a,#0x80
      001628 C0 E0            [24] 1027 	push	acc
      00162A 12 22 2E         [24] 1028 	lcall	_printf
      00162D 15 81            [12] 1029 	dec	sp
      00162F 15 81            [12] 1030 	dec	sp
      001631 15 81            [12] 1031 	dec	sp
                                   1032 ;	pca.c:225: EX0 = 1;
                                   1033 ;	assignBit
      001633 D2 A8            [12] 1034 	setb	_EX0
                                   1035 ;	pca.c:226: CKRL = 0;
      001635 75 97 00         [24] 1036 	mov	_CKRL,#0x00
                                   1037 ;	pca.c:227: main_menu();
                                   1038 ;	pca.c:228: }
      001638 02 00 B5         [24] 1039 	ljmp	_main_menu
                                   1040 ;------------------------------------------------------------
                                   1041 ;Allocation info for local variables in function 'print_pca_menu'
                                   1042 ;------------------------------------------------------------
                                   1043 ;	pca.c:235: void print_pca_menu()
                                   1044 ;	-----------------------------------------
                                   1045 ;	 function print_pca_menu
                                   1046 ;	-----------------------------------------
      00163B                       1047 _print_pca_menu:
                                   1048 ;	pca.c:237: printf("\n\n\r^^^^^^^^^^^^^^^^^^^-PCA-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ \n\n\r");
      00163B 74 10            [12] 1049 	mov	a,#___str_16
      00163D C0 E0            [24] 1050 	push	acc
      00163F 74 36            [12] 1051 	mov	a,#(___str_16 >> 8)
      001641 C0 E0            [24] 1052 	push	acc
      001643 74 80            [12] 1053 	mov	a,#0x80
      001645 C0 E0            [24] 1054 	push	acc
      001647 12 22 2E         [24] 1055 	lcall	_printf
      00164A 15 81            [12] 1056 	dec	sp
      00164C 15 81            [12] 1057 	dec	sp
      00164E 15 81            [12] 1058 	dec	sp
                                   1059 ;	pca.c:238: printf("'F' -> Falling Edge Capture Mode\n\r");
      001650 74 4F            [12] 1060 	mov	a,#___str_17
      001652 C0 E0            [24] 1061 	push	acc
      001654 74 36            [12] 1062 	mov	a,#(___str_17 >> 8)
      001656 C0 E0            [24] 1063 	push	acc
      001658 74 80            [12] 1064 	mov	a,#0x80
      00165A C0 E0            [24] 1065 	push	acc
      00165C 12 22 2E         [24] 1066 	lcall	_printf
      00165F 15 81            [12] 1067 	dec	sp
      001661 15 81            [12] 1068 	dec	sp
      001663 15 81            [12] 1069 	dec	sp
                                   1070 ;	pca.c:239: printf("'S' -> Software Timer Mode\n\r");
      001665 74 72            [12] 1071 	mov	a,#___str_18
      001667 C0 E0            [24] 1072 	push	acc
      001669 74 36            [12] 1073 	mov	a,#(___str_18 >> 8)
      00166B C0 E0            [24] 1074 	push	acc
      00166D 74 80            [12] 1075 	mov	a,#0x80
      00166F C0 E0            [24] 1076 	push	acc
      001671 12 22 2E         [24] 1077 	lcall	_printf
      001674 15 81            [12] 1078 	dec	sp
      001676 15 81            [12] 1079 	dec	sp
      001678 15 81            [12] 1080 	dec	sp
                                   1081 ;	pca.c:240: printf("'H' -> High Speed Output Mode\n\r");
      00167A 74 8F            [12] 1082 	mov	a,#___str_19
      00167C C0 E0            [24] 1083 	push	acc
      00167E 74 36            [12] 1084 	mov	a,#(___str_19 >> 8)
      001680 C0 E0            [24] 1085 	push	acc
      001682 74 80            [12] 1086 	mov	a,#0x80
      001684 C0 E0            [24] 1087 	push	acc
      001686 12 22 2E         [24] 1088 	lcall	_printf
      001689 15 81            [12] 1089 	dec	sp
      00168B 15 81            [12] 1090 	dec	sp
      00168D 15 81            [12] 1091 	dec	sp
                                   1092 ;	pca.c:241: printf("'P' -> PWM Mode \n\r");
      00168F 74 AF            [12] 1093 	mov	a,#___str_20
      001691 C0 E0            [24] 1094 	push	acc
      001693 74 36            [12] 1095 	mov	a,#(___str_20 >> 8)
      001695 C0 E0            [24] 1096 	push	acc
      001697 74 80            [12] 1097 	mov	a,#0x80
      001699 C0 E0            [24] 1098 	push	acc
      00169B 12 22 2E         [24] 1099 	lcall	_printf
      00169E 15 81            [12] 1100 	dec	sp
      0016A0 15 81            [12] 1101 	dec	sp
      0016A2 15 81            [12] 1102 	dec	sp
                                   1103 ;	pca.c:242: printf("'W' -> Watchdog Timer Mode\n\r");
      0016A4 74 C2            [12] 1104 	mov	a,#___str_21
      0016A6 C0 E0            [24] 1105 	push	acc
      0016A8 74 36            [12] 1106 	mov	a,#(___str_21 >> 8)
      0016AA C0 E0            [24] 1107 	push	acc
      0016AC 74 80            [12] 1108 	mov	a,#0x80
      0016AE C0 E0            [24] 1109 	push	acc
      0016B0 12 22 2E         [24] 1110 	lcall	_printf
      0016B3 15 81            [12] 1111 	dec	sp
      0016B5 15 81            [12] 1112 	dec	sp
      0016B7 15 81            [12] 1113 	dec	sp
                                   1114 ;	pca.c:243: printf("'I' -> Idle Mode with PWM\n\r");
      0016B9 74 DF            [12] 1115 	mov	a,#___str_22
      0016BB C0 E0            [24] 1116 	push	acc
      0016BD 74 36            [12] 1117 	mov	a,#(___str_22 >> 8)
      0016BF C0 E0            [24] 1118 	push	acc
      0016C1 74 80            [12] 1119 	mov	a,#0x80
      0016C3 C0 E0            [24] 1120 	push	acc
      0016C5 12 22 2E         [24] 1121 	lcall	_printf
      0016C8 15 81            [12] 1122 	dec	sp
      0016CA 15 81            [12] 1123 	dec	sp
      0016CC 15 81            [12] 1124 	dec	sp
                                   1125 ;	pca.c:244: printf("'L' -> Change Prescalar to lowest frequency\n\r");
      0016CE 74 FB            [12] 1126 	mov	a,#___str_23
      0016D0 C0 E0            [24] 1127 	push	acc
      0016D2 74 36            [12] 1128 	mov	a,#(___str_23 >> 8)
      0016D4 C0 E0            [24] 1129 	push	acc
      0016D6 74 80            [12] 1130 	mov	a,#0x80
      0016D8 C0 E0            [24] 1131 	push	acc
      0016DA 12 22 2E         [24] 1132 	lcall	_printf
      0016DD 15 81            [12] 1133 	dec	sp
      0016DF 15 81            [12] 1134 	dec	sp
      0016E1 15 81            [12] 1135 	dec	sp
                                   1136 ;	pca.c:245: printf("'U' -> Hardware Watchdog Timer\n\r");
      0016E3 74 29            [12] 1137 	mov	a,#___str_24
      0016E5 C0 E0            [24] 1138 	push	acc
      0016E7 74 37            [12] 1139 	mov	a,#(___str_24 >> 8)
      0016E9 C0 E0            [24] 1140 	push	acc
      0016EB 74 80            [12] 1141 	mov	a,#0x80
      0016ED C0 E0            [24] 1142 	push	acc
      0016EF 12 22 2E         [24] 1143 	lcall	_printf
      0016F2 15 81            [12] 1144 	dec	sp
      0016F4 15 81            [12] 1145 	dec	sp
      0016F6 15 81            [12] 1146 	dec	sp
                                   1147 ;	pca.c:246: printf("'D' -> Power Down Mode\n\n\r");
      0016F8 74 4A            [12] 1148 	mov	a,#___str_25
      0016FA C0 E0            [24] 1149 	push	acc
      0016FC 74 37            [12] 1150 	mov	a,#(___str_25 >> 8)
      0016FE C0 E0            [24] 1151 	push	acc
      001700 74 80            [12] 1152 	mov	a,#0x80
      001702 C0 E0            [24] 1153 	push	acc
      001704 12 22 2E         [24] 1154 	lcall	_printf
      001707 15 81            [12] 1155 	dec	sp
      001709 15 81            [12] 1156 	dec	sp
      00170B 15 81            [12] 1157 	dec	sp
                                   1158 ;	pca.c:247: }
      00170D 22               [24] 1159 	ret
                                   1160 	.area CSEG    (CODE)
                                   1161 	.area CONST   (CODE)
                                   1162 	.area CONST   (CODE)
      0032F1                       1163 ___str_0:
      0032F1 48 65 6C 6C 6F 2C 20  1164 	.ascii "Hello, In PCA Demo mode "
             49 6E 20 50 43 41 20
             44 65 6D 6F 20 6D 6F
             64 65 20
      003309 0A                    1165 	.db 0x0a
      00330A 0D                    1166 	.db 0x0d
      00330B 00                    1167 	.db 0x00
                                   1168 	.area CSEG    (CODE)
                                   1169 	.area CONST   (CODE)
      00330C                       1170 ___str_1:
      00330C 50 6C 65 61 73 65 20  1171 	.ascii "Please make a valid choice "
             6D 61 6B 65 20 61 20
             76 61 6C 69 64 20 63
             68 6F 69 63 65 20
      003327 0A                    1172 	.db 0x0a
      003328 0D                    1173 	.db 0x0d
      003329 00                    1174 	.db 0x00
                                   1175 	.area CSEG    (CODE)
                                   1176 	.area CONST   (CODE)
      00332A                       1177 ___str_2:
      00332A 50 6C 65 61 73 65 20  1178 	.ascii "Please 'E' to exit or Reset "
             27 45 27 20 74 6F 20
             65 78 69 74 20 6F 72
             20 52 65 73 65 74 20
      003346 0A                    1179 	.db 0x0a
      003347 0D                    1180 	.db 0x0d
      003348 00                    1181 	.db 0x00
                                   1182 	.area CSEG    (CODE)
                                   1183 	.area CONST   (CODE)
      003349                       1184 ___str_3:
      003349 53 65 74 74 69 6E 67  1185 	.ascii "Setting P1.3 as falling edge detector, enabling PCA interrup"
             20 50 31 2E 33 20 61
             73 20 66 61 6C 6C 69
             6E 67 20 65 64 67 65
             20 64 65 74 65 63 74
             6F 72 2C 20 65 6E 61
             62 6C 69 6E 67 20 50
             43 41 20 69 6E 74 65
             72 72 75 70
      003385 74 20                 1186 	.ascii "t "
      003387 0A                    1187 	.db 0x0a
      003388 0D                    1188 	.db 0x0d
      003389 00                    1189 	.db 0x00
                                   1190 	.area CSEG    (CODE)
                                   1191 	.area CONST   (CODE)
      00338A                       1192 ___str_4:
      00338A 45 6E 74 65 72 69 6E  1193 	.ascii "Entering Software Timer Mode "
             67 20 53 6F 66 74 77
             61 72 65 20 54 69 6D
             65 72 20 4D 6F 64 65
             20
      0033A7 0A                    1194 	.db 0x0a
      0033A8 0D                    1195 	.db 0x0d
      0033A9 00                    1196 	.db 0x00
                                   1197 	.area CSEG    (CODE)
                                   1198 	.area CONST   (CODE)
      0033AA                       1199 ___str_5:
      0033AA 45 6E 74 65 72 69 6E  1200 	.ascii "Entering High Speed Toggle Mode, P1.5 "
             67 20 48 69 67 68 20
             53 70 65 65 64 20 54
             6F 67 67 6C 65 20 4D
             6F 64 65 2C 20 50 31
             2E 35 20
      0033D0 0A                    1201 	.db 0x0a
      0033D1 0D                    1202 	.db 0x0d
      0033D2 00                    1203 	.db 0x00
                                   1204 	.area CSEG    (CODE)
                                   1205 	.area CONST   (CODE)
      0033D3                       1206 ___str_6:
      0033D3 45 6E 74 65 72 69 6E  1207 	.ascii "Entering PWM Mode, 25 percent Duty Cycle P1.6"
             67 20 50 57 4D 20 4D
             6F 64 65 2C 20 32 35
             20 70 65 72 63 65 6E
             74 20 44 75 74 79 20
             43 79 63 6C 65 20 50
             31 2E 36
      003400 0A                    1208 	.db 0x0a
      003401 0D                    1209 	.db 0x0d
      003402 00                    1210 	.db 0x00
                                   1211 	.area CSEG    (CODE)
                                   1212 	.area CONST   (CODE)
      003403                       1213 ___str_7:
      003403 45 6E 61 62 6C 69 6E  1214 	.ascii "Enabling Watchdog Timer.."
             67 20 57 61 74 63 68
             64 6F 67 20 54 69 6D
             65 72 2E 2E
      00341C 0A                    1215 	.db 0x0a
      00341D 0D                    1216 	.db 0x0d
      00341E 00                    1217 	.db 0x00
                                   1218 	.area CSEG    (CODE)
                                   1219 	.area CONST   (CODE)
      00341F                       1220 ___str_8:
      00341F 43 75 72 72 65 6E 74  1221 	.ascii "Currently Watchdog is being serviced"
             6C 79 20 57 61 74 63
             68 64 6F 67 20 69 73
             20 62 65 69 6E 67 20
             73 65 72 76 69 63 65
             64
      003443 0A                    1222 	.db 0x0a
      003444 0D                    1223 	.db 0x0d
      003445 50 72 65 73 73 20 27  1224 	.ascii "Press 'S' to stop and generate a reset "
             53 27 20 74 6F 20 73
             74 6F 70 20 61 6E 64
             20 67 65 6E 65 72 61
             74 65 20 61 20 72 65
             73 65 74 20
      00346C 0A                    1225 	.db 0x0a
      00346D 0D                    1226 	.db 0x0d
      00346E 00                    1227 	.db 0x00
                                   1228 	.area CSEG    (CODE)
                                   1229 	.area CONST   (CODE)
      00346F                       1230 ___str_9:
      00346F 45 6E 61 62 6C 69 6E  1231 	.ascii "Enabling Hardware Watchdog Timer.."
             67 20 48 61 72 64 77
             61 72 65 20 57 61 74
             63 68 64 6F 67 20 54
             69 6D 65 72 2E 2E
      003491 0A                    1232 	.db 0x0a
      003492 0D                    1233 	.db 0x0d
      003493 00                    1234 	.db 0x00
                                   1235 	.area CSEG    (CODE)
                                   1236 	.area CONST   (CODE)
      003494                       1237 ___str_10:
      003494 43 75 72 72 65 6E 74  1238 	.ascii "Currently Hardware Watchdog is being serviced"
             6C 79 20 48 61 72 64
             77 61 72 65 20 57 61
             74 63 68 64 6F 67 20
             69 73 20 62 65 69 6E
             67 20 73 65 72 76 69
             63 65 64
      0034C1 0A                    1239 	.db 0x0a
      0034C2 0D                    1240 	.db 0x0d
      0034C3 50 72 65 73 73 20 27  1241 	.ascii "Press 'S' to stop watchdog service and generate a reset in ~"
             53 27 20 74 6F 20 73
             74 6F 70 20 77 61 74
             63 68 64 6F 67 20 73
             65 72 76 69 63 65 20
             61 6E 64 20 67 65 6E
             65 72 61 74 65 20 61
             20 72 65 73 65 74 20
             69 6E 20 7E
      0034FF 31 73 20              1242 	.ascii "1s "
      003502 0A                    1243 	.db 0x0a
      003503 0D                    1244 	.db 0x0d
      003504 00                    1245 	.db 0x00
                                   1246 	.area CSEG    (CODE)
                                   1247 	.area CONST   (CODE)
      003505                       1248 ___str_11:
      003505 45 6E 74 65 72 69 6E  1249 	.ascii "Entering Idle, Will Exit on external interrupt 0"
             67 20 49 64 6C 65 2C
             20 57 69 6C 6C 20 45
             78 69 74 20 6F 6E 20
             65 78 74 65 72 6E 61
             6C 20 69 6E 74 65 72
             72 75 70 74 20 30
      003535 0A                    1250 	.db 0x0a
      003536 0D                    1251 	.db 0x0d
      003537 00                    1252 	.db 0x00
                                   1253 	.area CSEG    (CODE)
                                   1254 	.area CONST   (CODE)
      003538                       1255 ___str_12:
      003538 57 6F 6B 65 20 75 70  1256 	.ascii "Woke up from Idle/Power down, going to main menu "
             20 66 72 6F 6D 20 49
             64 6C 65 2F 50 6F 77
             65 72 20 64 6F 77 6E
             2C 20 67 6F 69 6E 67
             20 74 6F 20 6D 61 69
             6E 20 6D 65 6E 75 20
      003569 0A                    1257 	.db 0x0a
      00356A 0D                    1258 	.db 0x0d
      00356B 00                    1259 	.db 0x00
                                   1260 	.area CSEG    (CODE)
                                   1261 	.area CONST   (CODE)
      00356C                       1262 ___str_13:
      00356C 45 6E 74 65 72 69 6E  1263 	.ascii "Entering power down, Will Exit on external interrupt 0"
             67 20 70 6F 77 65 72
             20 64 6F 77 6E 2C 20
             57 69 6C 6C 20 45 78
             69 74 20 6F 6E 20 65
             78 74 65 72 6E 61 6C
             20 69 6E 74 65 72 72
             75 70 74 20 30
      0035A2 0A                    1264 	.db 0x0a
      0035A3 0D                    1265 	.db 0x0d
      0035A4 00                    1266 	.db 0x00
                                   1267 	.area CSEG    (CODE)
                                   1268 	.area CONST   (CODE)
      0035A5                       1269 ___str_14:
      0035A5 43 68 61 6E 67 69 6E  1270 	.ascii "Changing Clock prescalar to go to lowest frequency in X2 Mod"
             67 20 43 6C 6F 63 6B
             20 70 72 65 73 63 61
             6C 61 72 20 74 6F 20
             67 6F 20 74 6F 20 6C
             6F 77 65 73 74 20 66
             72 65 71 75 65 6E 63
             79 20 69 6E 20 58 32
             20 4D 6F 64
      0035E1 65 2E 2E              1271 	.ascii "e.."
      0035E4 0A                    1272 	.db 0x0a
      0035E5 0D                    1273 	.db 0x0d
      0035E6 00                    1274 	.db 0x00
                                   1275 	.area CSEG    (CODE)
                                   1276 	.area CONST   (CODE)
      0035E7                       1277 ___str_15:
      0035E7 54 68 69 73 20 55 41  1278 	.ascii "This UART Session will stop working..."
             52 54 20 53 65 73 73
             69 6F 6E 20 77 69 6C
             6C 20 73 74 6F 70 20
             77 6F 72 6B 69 6E 67
             2E 2E 2E
      00360D 0A                    1279 	.db 0x0a
      00360E 0D                    1280 	.db 0x0d
      00360F 00                    1281 	.db 0x00
                                   1282 	.area CSEG    (CODE)
                                   1283 	.area CONST   (CODE)
      003610                       1284 ___str_16:
      003610 0A                    1285 	.db 0x0a
      003611 0A                    1286 	.db 0x0a
      003612 0D                    1287 	.db 0x0d
      003613 5E 5E 5E 5E 5E 5E 5E  1288 	.ascii "^^^^^^^^^^^^^^^^^^^-PCA-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ "
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 2D 50
             43 41 2D 4D 45 4E 55
             2D 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 5E 5E
             5E 5E 5E 5E 5E 5E 20
      00364B 0A                    1289 	.db 0x0a
      00364C 0A                    1290 	.db 0x0a
      00364D 0D                    1291 	.db 0x0d
      00364E 00                    1292 	.db 0x00
                                   1293 	.area CSEG    (CODE)
                                   1294 	.area CONST   (CODE)
      00364F                       1295 ___str_17:
      00364F 27 46 27 20 2D 3E 20  1296 	.ascii "'F' -> Falling Edge Capture Mode"
             46 61 6C 6C 69 6E 67
             20 45 64 67 65 20 43
             61 70 74 75 72 65 20
             4D 6F 64 65
      00366F 0A                    1297 	.db 0x0a
      003670 0D                    1298 	.db 0x0d
      003671 00                    1299 	.db 0x00
                                   1300 	.area CSEG    (CODE)
                                   1301 	.area CONST   (CODE)
      003672                       1302 ___str_18:
      003672 27 53 27 20 2D 3E 20  1303 	.ascii "'S' -> Software Timer Mode"
             53 6F 66 74 77 61 72
             65 20 54 69 6D 65 72
             20 4D 6F 64 65
      00368C 0A                    1304 	.db 0x0a
      00368D 0D                    1305 	.db 0x0d
      00368E 00                    1306 	.db 0x00
                                   1307 	.area CSEG    (CODE)
                                   1308 	.area CONST   (CODE)
      00368F                       1309 ___str_19:
      00368F 27 48 27 20 2D 3E 20  1310 	.ascii "'H' -> High Speed Output Mode"
             48 69 67 68 20 53 70
             65 65 64 20 4F 75 74
             70 75 74 20 4D 6F 64
             65
      0036AC 0A                    1311 	.db 0x0a
      0036AD 0D                    1312 	.db 0x0d
      0036AE 00                    1313 	.db 0x00
                                   1314 	.area CSEG    (CODE)
                                   1315 	.area CONST   (CODE)
      0036AF                       1316 ___str_20:
      0036AF 27 50 27 20 2D 3E 20  1317 	.ascii "'P' -> PWM Mode "
             50 57 4D 20 4D 6F 64
             65 20
      0036BF 0A                    1318 	.db 0x0a
      0036C0 0D                    1319 	.db 0x0d
      0036C1 00                    1320 	.db 0x00
                                   1321 	.area CSEG    (CODE)
                                   1322 	.area CONST   (CODE)
      0036C2                       1323 ___str_21:
      0036C2 27 57 27 20 2D 3E 20  1324 	.ascii "'W' -> Watchdog Timer Mode"
             57 61 74 63 68 64 6F
             67 20 54 69 6D 65 72
             20 4D 6F 64 65
      0036DC 0A                    1325 	.db 0x0a
      0036DD 0D                    1326 	.db 0x0d
      0036DE 00                    1327 	.db 0x00
                                   1328 	.area CSEG    (CODE)
                                   1329 	.area CONST   (CODE)
      0036DF                       1330 ___str_22:
      0036DF 27 49 27 20 2D 3E 20  1331 	.ascii "'I' -> Idle Mode with PWM"
             49 64 6C 65 20 4D 6F
             64 65 20 77 69 74 68
             20 50 57 4D
      0036F8 0A                    1332 	.db 0x0a
      0036F9 0D                    1333 	.db 0x0d
      0036FA 00                    1334 	.db 0x00
                                   1335 	.area CSEG    (CODE)
                                   1336 	.area CONST   (CODE)
      0036FB                       1337 ___str_23:
      0036FB 27 4C 27 20 2D 3E 20  1338 	.ascii "'L' -> Change Prescalar to lowest frequency"
             43 68 61 6E 67 65 20
             50 72 65 73 63 61 6C
             61 72 20 74 6F 20 6C
             6F 77 65 73 74 20 66
             72 65 71 75 65 6E 63
             79
      003726 0A                    1339 	.db 0x0a
      003727 0D                    1340 	.db 0x0d
      003728 00                    1341 	.db 0x00
                                   1342 	.area CSEG    (CODE)
                                   1343 	.area CONST   (CODE)
      003729                       1344 ___str_24:
      003729 27 55 27 20 2D 3E 20  1345 	.ascii "'U' -> Hardware Watchdog Timer"
             48 61 72 64 77 61 72
             65 20 57 61 74 63 68
             64 6F 67 20 54 69 6D
             65 72
      003747 0A                    1346 	.db 0x0a
      003748 0D                    1347 	.db 0x0d
      003749 00                    1348 	.db 0x00
                                   1349 	.area CSEG    (CODE)
                                   1350 	.area CONST   (CODE)
      00374A                       1351 ___str_25:
      00374A 27 44 27 20 2D 3E 20  1352 	.ascii "'D' -> Power Down Mode"
             50 6F 77 65 72 20 44
             6F 77 6E 20 4D 6F 64
             65
      003760 0A                    1353 	.db 0x0a
      003761 0A                    1354 	.db 0x0a
      003762 0D                    1355 	.db 0x0d
      003763 00                    1356 	.db 0x00
                                   1357 	.area CSEG    (CODE)
                                   1358 	.area XINIT   (CODE)
      003C4B                       1359 __xinit__watchdog_flag:
      003C4B 00 00                 1360 	.byte #0x00, #0x00	;  0
                                   1361 	.area CABS    (ABS,CODE)
