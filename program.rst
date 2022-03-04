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
                                    226 	.globl _transmit_buffer_PARM_2
                                    227 	.globl _transmit_buffer
                                    228 	.globl _blink_transmit
                                    229 	.globl _get_number
                                    230 	.globl _get_num_helper
                                    231 	.globl _delay
                                    232 	.globl _putchar
                                    233 	.globl _getchar
                                    234 ;--------------------------------------------------------
                                    235 ; special function registers
                                    236 ;--------------------------------------------------------
                                    237 	.area RSEG    (ABS,DATA)
      000000                        238 	.org 0x0000
                           0000C8   239 _T2CON	=	0x00c8
                           0000CA   240 _RCAP2L	=	0x00ca
                           0000CB   241 _RCAP2H	=	0x00cb
                           0000CC   242 _TL2	=	0x00cc
                           0000CD   243 _TH2	=	0x00cd
                           00008E   244 _AUXR	=	0x008e
                           0000A2   245 _AUXR1	=	0x00a2
                           000097   246 _CKRL	=	0x0097
                           00008F   247 _CKCON0	=	0x008f
                           0000AF   248 _CKCON1	=	0x00af
                           0000FA   249 _CCAP0H	=	0x00fa
                           0000FB   250 _CCAP1H	=	0x00fb
                           0000FC   251 _CCAP2H	=	0x00fc
                           0000FD   252 _CCAP3H	=	0x00fd
                           0000FE   253 _CCAP4H	=	0x00fe
                           0000EA   254 _CCAP0L	=	0x00ea
                           0000EB   255 _CCAP1L	=	0x00eb
                           0000EC   256 _CCAP2L	=	0x00ec
                           0000ED   257 _CCAP3L	=	0x00ed
                           0000EE   258 _CCAP4L	=	0x00ee
                           0000DA   259 _CCAPM0	=	0x00da
                           0000DB   260 _CCAPM1	=	0x00db
                           0000DC   261 _CCAPM2	=	0x00dc
                           0000DD   262 _CCAPM3	=	0x00dd
                           0000DE   263 _CCAPM4	=	0x00de
                           0000D8   264 _CCON	=	0x00d8
                           0000F9   265 _CH	=	0x00f9
                           0000E9   266 _CL	=	0x00e9
                           0000D9   267 _CMOD	=	0x00d9
                           0000A8   268 _IEN0	=	0x00a8
                           0000B1   269 _IEN1	=	0x00b1
                           0000B8   270 _IPL0	=	0x00b8
                           0000B7   271 _IPH0	=	0x00b7
                           0000B2   272 _IPL1	=	0x00b2
                           0000B3   273 _IPH1	=	0x00b3
                           0000C0   274 _P4	=	0x00c0
                           0000E8   275 _P5	=	0x00e8
                           0000A6   276 _WDTRST	=	0x00a6
                           0000A7   277 _WDTPRG	=	0x00a7
                           0000A9   278 _SADDR	=	0x00a9
                           0000B9   279 _SADEN	=	0x00b9
                           0000C3   280 _SPCON	=	0x00c3
                           0000C4   281 _SPSTA	=	0x00c4
                           0000C5   282 _SPDAT	=	0x00c5
                           0000C9   283 _T2MOD	=	0x00c9
                           00009B   284 _BDRCON	=	0x009b
                           00009A   285 _BRL	=	0x009a
                           00009C   286 _KBLS	=	0x009c
                           00009D   287 _KBE	=	0x009d
                           00009E   288 _KBF	=	0x009e
                           0000D2   289 _EECON	=	0x00d2
                           0000E0   290 _ACC	=	0x00e0
                           0000F0   291 _B	=	0x00f0
                           000083   292 _DPH	=	0x0083
                           000083   293 _DP0H	=	0x0083
                           000082   294 _DPL	=	0x0082
                           000082   295 _DP0L	=	0x0082
                           0000A8   296 _IE	=	0x00a8
                           0000B8   297 _IP	=	0x00b8
                           000080   298 _P0	=	0x0080
                           000090   299 _P1	=	0x0090
                           0000A0   300 _P2	=	0x00a0
                           0000B0   301 _P3	=	0x00b0
                           000087   302 _PCON	=	0x0087
                           0000D0   303 _PSW	=	0x00d0
                           000099   304 _SBUF	=	0x0099
                           000099   305 _SBUF0	=	0x0099
                           000098   306 _SCON	=	0x0098
                           000081   307 _SP	=	0x0081
                           000088   308 _TCON	=	0x0088
                           00008C   309 _TH0	=	0x008c
                           00008D   310 _TH1	=	0x008d
                           00008A   311 _TL0	=	0x008a
                           00008B   312 _TL1	=	0x008b
                           000089   313 _TMOD	=	0x0089
                           00008E   314 __AUXR	=	0x008e
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
                                    467 ; Stack segment in internal ram 
                                    468 ;--------------------------------------------------------
                                    469 	.area	SSEG
      000016                        470 __start__stack:
      000016                        471 	.ds	1
                                    472 
                                    473 ;--------------------------------------------------------
                                    474 ; indirectly addressable internal ram data
                                    475 ;--------------------------------------------------------
                                    476 	.area ISEG    (DATA)
                                    477 ;--------------------------------------------------------
                                    478 ; absolute internal ram data
                                    479 ;--------------------------------------------------------
                                    480 	.area IABS    (ABS,DATA)
                                    481 	.area IABS    (ABS,DATA)
                                    482 ;--------------------------------------------------------
                                    483 ; bit data
                                    484 ;--------------------------------------------------------
                                    485 	.area BSEG    (BIT)
                                    486 ;--------------------------------------------------------
                                    487 ; paged external ram data
                                    488 ;--------------------------------------------------------
                                    489 	.area PSEG    (PAG,XDATA)
                                    490 ;--------------------------------------------------------
                                    491 ; external ram data
                                    492 ;--------------------------------------------------------
                                    493 	.area XSEG    (XDATA)
      000001                        494 _transmit_buffer_PARM_2:
      000001                        495 	.ds 2
      000003                        496 _transmit_buffer_c_65536_50:
      000003                        497 	.ds 3
      000006                        498 _blink_transmit_letter_A_65536_54:
      000006                        499 	.ds 2
      000008                        500 _get_number_num_65536_57:
      000008                        501 	.ds 2
      00000A                        502 _get_num_helper_times_65536_62:
      00000A                        503 	.ds 2
      00000C                        504 _get_num_helper_num_65536_63:
      00000C                        505 	.ds 2
      00000E                        506 _putchar_c_65536_70:
      00000E                        507 	.ds 2
                                    508 ;--------------------------------------------------------
                                    509 ; absolute external ram data
                                    510 ;--------------------------------------------------------
                                    511 	.area XABS    (ABS,XDATA)
                                    512 ;--------------------------------------------------------
                                    513 ; external initialized ram data
                                    514 ;--------------------------------------------------------
                                    515 	.area XISEG   (XDATA)
                                    516 	.area HOME    (CODE)
                                    517 	.area GSINIT0 (CODE)
                                    518 	.area GSINIT1 (CODE)
                                    519 	.area GSINIT2 (CODE)
                                    520 	.area GSINIT3 (CODE)
                                    521 	.area GSINIT4 (CODE)
                                    522 	.area GSINIT5 (CODE)
                                    523 	.area GSINIT  (CODE)
                                    524 	.area GSFINAL (CODE)
                                    525 	.area CSEG    (CODE)
                                    526 ;--------------------------------------------------------
                                    527 ; interrupt vector 
                                    528 ;--------------------------------------------------------
                                    529 	.area HOME    (CODE)
      000000                        530 __interrupt_vect:
      000000 02 00 06         [24]  531 	ljmp	__sdcc_gsinit_startup
                                    532 ;--------------------------------------------------------
                                    533 ; global & static initialisations
                                    534 ;--------------------------------------------------------
                                    535 	.area HOME    (CODE)
                                    536 	.area GSINIT  (CODE)
                                    537 	.area GSFINAL (CODE)
                                    538 	.area GSINIT  (CODE)
                                    539 	.globl __sdcc_gsinit_startup
                                    540 	.globl __sdcc_program_startup
                                    541 	.globl __start__stack
                                    542 	.globl __mcs51_genXINIT
                                    543 	.globl __mcs51_genXRAMCLEAR
                                    544 	.globl __mcs51_genRAMCLEAR
                                    545 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  546 	ljmp	__sdcc_program_startup
                                    547 ;--------------------------------------------------------
                                    548 ; Home
                                    549 ;--------------------------------------------------------
                                    550 	.area HOME    (CODE)
                                    551 	.area HOME    (CODE)
      000003                        552 __sdcc_program_startup:
      000003 02 00 62         [24]  553 	ljmp	_main
                                    554 ;	return from main will return to caller
                                    555 ;--------------------------------------------------------
                                    556 ; code
                                    557 ;--------------------------------------------------------
                                    558 	.area CSEG    (CODE)
                                    559 ;------------------------------------------------------------
                                    560 ;Allocation info for local variables in function 'main'
                                    561 ;------------------------------------------------------------
                                    562 ;rec                       Allocated with name '_main_rec_65536_47'
                                    563 ;p                         Allocated with name '_main_p_65536_47'
                                    564 ;------------------------------------------------------------
                                    565 ;	program.c:21: void main(void)
                                    566 ;	-----------------------------------------
                                    567 ;	 function main
                                    568 ;	-----------------------------------------
      000062                        569 _main:
                           000007   570 	ar7 = 0x07
                           000006   571 	ar6 = 0x06
                           000005   572 	ar5 = 0x05
                           000004   573 	ar4 = 0x04
                           000003   574 	ar3 = 0x03
                           000002   575 	ar2 = 0x02
                           000001   576 	ar1 = 0x01
                           000000   577 	ar0 = 0x00
                                    578 ;	program.c:23: int rec = get_number();
      000062 12 01 E9         [24]  579 	lcall	_get_number
                                    580 ;	program.c:24: unsigned char *p = malloc(rec);
      000065 AE 82            [24]  581 	mov	r6,dpl
      000067 AF 83            [24]  582 	mov  r7,dph
      000069 C0 07            [24]  583 	push	ar7
      00006B C0 06            [24]  584 	push	ar6
      00006D 12 05 48         [24]  585 	lcall	_malloc
      000070 AC 82            [24]  586 	mov	r4,dpl
      000072 AD 83            [24]  587 	mov	r5,dph
      000074 D0 06            [24]  588 	pop	ar6
      000076 D0 07            [24]  589 	pop	ar7
      000078 8D 03            [24]  590 	mov	ar3,r5
      00007A 7D 00            [12]  591 	mov	r5,#0x00
                                    592 ;	program.c:26: if(p == NULL){
      00007C EC               [12]  593 	mov	a,r4
      00007D 4B               [12]  594 	orl	a,r3
      00007E 70 23            [24]  595 	jnz	00102$
                                    596 ;	program.c:27: printf("MALLOC FAILED\n\r");
      000080 C0 05            [24]  597 	push	ar5
      000082 C0 04            [24]  598 	push	ar4
      000084 C0 03            [24]  599 	push	ar3
      000086 74 5A            [12]  600 	mov	a,#___str_0
      000088 C0 E0            [24]  601 	push	acc
      00008A 74 11            [12]  602 	mov	a,#(___str_0 >> 8)
      00008C C0 E0            [24]  603 	push	acc
      00008E 74 80            [12]  604 	mov	a,#0x80
      000090 C0 E0            [24]  605 	push	acc
      000092 12 07 1F         [24]  606 	lcall	_printf
      000095 15 81            [12]  607 	dec	sp
      000097 15 81            [12]  608 	dec	sp
      000099 15 81            [12]  609 	dec	sp
      00009B D0 03            [24]  610 	pop	ar3
      00009D D0 04            [24]  611 	pop	ar4
      00009F D0 05            [24]  612 	pop	ar5
      0000A1 80 3E            [24]  613 	sjmp	00103$
      0000A3                        614 00102$:
                                    615 ;	program.c:29: *(p+rec) = 0x43;
      0000A3 EE               [12]  616 	mov	a,r6
      0000A4 2C               [12]  617 	add	a,r4
      0000A5 FE               [12]  618 	mov	r6,a
      0000A6 EF               [12]  619 	mov	a,r7
      0000A7 3B               [12]  620 	addc	a,r3
      0000A8 FF               [12]  621 	mov	r7,a
      0000A9 8D 02            [24]  622 	mov	ar2,r5
      0000AB 8E 82            [24]  623 	mov	dpl,r6
      0000AD 8F 83            [24]  624 	mov	dph,r7
      0000AF 8A F0            [24]  625 	mov	b,r2
      0000B1 74 43            [12]  626 	mov	a,#0x43
      0000B3 12 04 F1         [24]  627 	lcall	__gptrput
                                    628 ;	program.c:30: putchar(*(p+rec));
      0000B6 8E 82            [24]  629 	mov	dpl,r6
      0000B8 8F 83            [24]  630 	mov	dph,r7
      0000BA 8A F0            [24]  631 	mov	b,r2
      0000BC 12 11 3E         [24]  632 	lcall	__gptrget
      0000BF FE               [12]  633 	mov	r6,a
      0000C0 7F 00            [12]  634 	mov	r7,#0x00
      0000C2 8E 82            [24]  635 	mov	dpl,r6
      0000C4 8F 83            [24]  636 	mov	dph,r7
      0000C6 C0 05            [24]  637 	push	ar5
      0000C8 C0 04            [24]  638 	push	ar4
      0000CA C0 03            [24]  639 	push	ar3
      0000CC 12 03 48         [24]  640 	lcall	_putchar
                                    641 ;	program.c:31: putchar(0xD);
      0000CF 90 00 0D         [24]  642 	mov	dptr,#0x000d
      0000D2 12 03 48         [24]  643 	lcall	_putchar
                                    644 ;	program.c:32: putchar(0xA);
      0000D5 90 00 0A         [24]  645 	mov	dptr,#0x000a
      0000D8 12 03 48         [24]  646 	lcall	_putchar
      0000DB D0 03            [24]  647 	pop	ar3
      0000DD D0 04            [24]  648 	pop	ar4
      0000DF D0 05            [24]  649 	pop	ar5
      0000E1                        650 00103$:
                                    651 ;	program.c:36: free(p);    
      0000E1 8C 82            [24]  652 	mov	dpl,r4
      0000E3 8B 83            [24]  653 	mov	dph,r3
      0000E5 8D F0            [24]  654 	mov	b,r5
                                    655 ;	program.c:37: }
      0000E7 02 03 9A         [24]  656 	ljmp	_free
                                    657 ;------------------------------------------------------------
                                    658 ;Allocation info for local variables in function 'transmit_buffer'
                                    659 ;------------------------------------------------------------
                                    660 ;len                       Allocated with name '_transmit_buffer_PARM_2'
                                    661 ;c                         Allocated with name '_transmit_buffer_c_65536_50'
                                    662 ;i                         Allocated with name '_transmit_buffer_i_131072_52'
                                    663 ;------------------------------------------------------------
                                    664 ;	program.c:39: void transmit_buffer(unsigned char *c, int len)
                                    665 ;	-----------------------------------------
                                    666 ;	 function transmit_buffer
                                    667 ;	-----------------------------------------
      0000EA                        668 _transmit_buffer:
      0000EA AF F0            [24]  669 	mov	r7,b
      0000EC AE 83            [24]  670 	mov	r6,dph
      0000EE E5 82            [12]  671 	mov	a,dpl
      0000F0 90 00 03         [24]  672 	mov	dptr,#_transmit_buffer_c_65536_50
      0000F3 F0               [24]  673 	movx	@dptr,a
      0000F4 EE               [12]  674 	mov	a,r6
      0000F5 A3               [24]  675 	inc	dptr
      0000F6 F0               [24]  676 	movx	@dptr,a
      0000F7 EF               [12]  677 	mov	a,r7
      0000F8 A3               [24]  678 	inc	dptr
      0000F9 F0               [24]  679 	movx	@dptr,a
                                    680 ;	program.c:42: for (int i = 0; i < len; i++)
      0000FA 90 00 03         [24]  681 	mov	dptr,#_transmit_buffer_c_65536_50
      0000FD E0               [24]  682 	movx	a,@dptr
      0000FE FD               [12]  683 	mov	r5,a
      0000FF A3               [24]  684 	inc	dptr
      000100 E0               [24]  685 	movx	a,@dptr
      000101 FE               [12]  686 	mov	r6,a
      000102 A3               [24]  687 	inc	dptr
      000103 E0               [24]  688 	movx	a,@dptr
      000104 FF               [12]  689 	mov	r7,a
      000105 90 00 01         [24]  690 	mov	dptr,#_transmit_buffer_PARM_2
      000108 E0               [24]  691 	movx	a,@dptr
      000109 FB               [12]  692 	mov	r3,a
      00010A A3               [24]  693 	inc	dptr
      00010B E0               [24]  694 	movx	a,@dptr
      00010C FC               [12]  695 	mov	r4,a
      00010D 79 00            [12]  696 	mov	r1,#0x00
      00010F 7A 00            [12]  697 	mov	r2,#0x00
      000111                        698 00103$:
      000111 C3               [12]  699 	clr	c
      000112 E9               [12]  700 	mov	a,r1
      000113 9B               [12]  701 	subb	a,r3
      000114 EA               [12]  702 	mov	a,r2
      000115 64 80            [12]  703 	xrl	a,#0x80
      000117 8C F0            [24]  704 	mov	b,r4
      000119 63 F0 80         [24]  705 	xrl	b,#0x80
      00011C 95 F0            [12]  706 	subb	a,b
      00011E 50 46            [24]  707 	jnc	00101$
                                    708 ;	program.c:44: putchar(*(c + i));
      000120 C0 03            [24]  709 	push	ar3
      000122 C0 04            [24]  710 	push	ar4
      000124 E9               [12]  711 	mov	a,r1
      000125 2D               [12]  712 	add	a,r5
      000126 F8               [12]  713 	mov	r0,a
      000127 EA               [12]  714 	mov	a,r2
      000128 3E               [12]  715 	addc	a,r6
      000129 FB               [12]  716 	mov	r3,a
      00012A 8F 04            [24]  717 	mov	ar4,r7
      00012C 88 82            [24]  718 	mov	dpl,r0
      00012E 8B 83            [24]  719 	mov	dph,r3
      000130 8C F0            [24]  720 	mov	b,r4
      000132 12 11 3E         [24]  721 	lcall	__gptrget
      000135 F8               [12]  722 	mov	r0,a
      000136 7C 00            [12]  723 	mov	r4,#0x00
      000138 88 82            [24]  724 	mov	dpl,r0
      00013A 8C 83            [24]  725 	mov	dph,r4
      00013C C0 07            [24]  726 	push	ar7
      00013E C0 06            [24]  727 	push	ar6
      000140 C0 05            [24]  728 	push	ar5
      000142 C0 04            [24]  729 	push	ar4
      000144 C0 03            [24]  730 	push	ar3
      000146 C0 02            [24]  731 	push	ar2
      000148 C0 01            [24]  732 	push	ar1
      00014A 12 03 48         [24]  733 	lcall	_putchar
      00014D D0 01            [24]  734 	pop	ar1
      00014F D0 02            [24]  735 	pop	ar2
      000151 D0 03            [24]  736 	pop	ar3
      000153 D0 04            [24]  737 	pop	ar4
      000155 D0 05            [24]  738 	pop	ar5
      000157 D0 06            [24]  739 	pop	ar6
      000159 D0 07            [24]  740 	pop	ar7
                                    741 ;	program.c:42: for (int i = 0; i < len; i++)
      00015B 09               [12]  742 	inc	r1
      00015C B9 00 01         [24]  743 	cjne	r1,#0x00,00117$
      00015F 0A               [12]  744 	inc	r2
      000160                        745 00117$:
      000160 D0 04            [24]  746 	pop	ar4
      000162 D0 03            [24]  747 	pop	ar3
      000164 80 AB            [24]  748 	sjmp	00103$
      000166                        749 00101$:
                                    750 ;	program.c:47: blink_transmit();
                                    751 ;	program.c:48: }
      000166 02 01 69         [24]  752 	ljmp	_blink_transmit
                                    753 ;------------------------------------------------------------
                                    754 ;Allocation info for local variables in function 'blink_transmit'
                                    755 ;------------------------------------------------------------
                                    756 ;letter_A                  Allocated with name '_blink_transmit_letter_A_65536_54'
                                    757 ;------------------------------------------------------------
                                    758 ;	program.c:50: void blink_transmit()
                                    759 ;	-----------------------------------------
                                    760 ;	 function blink_transmit
                                    761 ;	-----------------------------------------
      000169                        762 _blink_transmit:
                                    763 ;	program.c:52: int letter_A = 0x41;
      000169 90 00 06         [24]  764 	mov	dptr,#_blink_transmit_letter_A_65536_54
      00016C 74 41            [12]  765 	mov	a,#0x41
      00016E F0               [24]  766 	movx	@dptr,a
      00016F E4               [12]  767 	clr	a
      000170 A3               [24]  768 	inc	dptr
      000171 F0               [24]  769 	movx	@dptr,a
                                    770 ;	program.c:53: while (1)
      000172                        771 00104$:
                                    772 ;	program.c:55: P1 = 0xff; // Turn ON all LED's connected to Port1
      000172 75 90 FF         [24]  773 	mov	_P1,#0xff
                                    774 ;	program.c:56: putchar(letter_A++);
      000175 90 00 06         [24]  775 	mov	dptr,#_blink_transmit_letter_A_65536_54
      000178 E0               [24]  776 	movx	a,@dptr
      000179 FE               [12]  777 	mov	r6,a
      00017A A3               [24]  778 	inc	dptr
      00017B E0               [24]  779 	movx	a,@dptr
      00017C FF               [12]  780 	mov	r7,a
      00017D 90 00 06         [24]  781 	mov	dptr,#_blink_transmit_letter_A_65536_54
      000180 74 01            [12]  782 	mov	a,#0x01
      000182 2E               [12]  783 	add	a,r6
      000183 F0               [24]  784 	movx	@dptr,a
      000184 E4               [12]  785 	clr	a
      000185 3F               [12]  786 	addc	a,r7
      000186 A3               [24]  787 	inc	dptr
      000187 F0               [24]  788 	movx	@dptr,a
      000188 8E 82            [24]  789 	mov	dpl,r6
      00018A 8F 83            [24]  790 	mov	dph,r7
      00018C 12 03 48         [24]  791 	lcall	_putchar
                                    792 ;	program.c:57: putchar(0x20);
      00018F 90 00 20         [24]  793 	mov	dptr,#0x0020
      000192 12 03 48         [24]  794 	lcall	_putchar
                                    795 ;	program.c:58: delay();
      000195 12 03 26         [24]  796 	lcall	_delay
                                    797 ;	program.c:59: P1 = 0x00; // Turn OFF all LED's connected to Port1
      000198 75 90 00         [24]  798 	mov	_P1,#0x00
                                    799 ;	program.c:60: putchar(letter_A++);
      00019B 90 00 06         [24]  800 	mov	dptr,#_blink_transmit_letter_A_65536_54
      00019E E0               [24]  801 	movx	a,@dptr
      00019F FE               [12]  802 	mov	r6,a
      0001A0 A3               [24]  803 	inc	dptr
      0001A1 E0               [24]  804 	movx	a,@dptr
      0001A2 FF               [12]  805 	mov	r7,a
      0001A3 90 00 06         [24]  806 	mov	dptr,#_blink_transmit_letter_A_65536_54
      0001A6 74 01            [12]  807 	mov	a,#0x01
      0001A8 2E               [12]  808 	add	a,r6
      0001A9 F0               [24]  809 	movx	@dptr,a
      0001AA E4               [12]  810 	clr	a
      0001AB 3F               [12]  811 	addc	a,r7
      0001AC A3               [24]  812 	inc	dptr
      0001AD F0               [24]  813 	movx	@dptr,a
      0001AE 8E 82            [24]  814 	mov	dpl,r6
      0001B0 8F 83            [24]  815 	mov	dph,r7
      0001B2 12 03 48         [24]  816 	lcall	_putchar
                                    817 ;	program.c:61: putchar(0x20);
      0001B5 90 00 20         [24]  818 	mov	dptr,#0x0020
      0001B8 12 03 48         [24]  819 	lcall	_putchar
                                    820 ;	program.c:62: delay();
      0001BB 12 03 26         [24]  821 	lcall	_delay
                                    822 ;	program.c:63: if (letter_A >= 0x5A)
      0001BE 90 00 06         [24]  823 	mov	dptr,#_blink_transmit_letter_A_65536_54
      0001C1 E0               [24]  824 	movx	a,@dptr
      0001C2 FE               [12]  825 	mov	r6,a
      0001C3 A3               [24]  826 	inc	dptr
      0001C4 E0               [24]  827 	movx	a,@dptr
      0001C5 FF               [12]  828 	mov	r7,a
      0001C6 C3               [12]  829 	clr	c
      0001C7 EE               [12]  830 	mov	a,r6
      0001C8 94 5A            [12]  831 	subb	a,#0x5a
      0001CA EF               [12]  832 	mov	a,r7
      0001CB 64 80            [12]  833 	xrl	a,#0x80
      0001CD 94 80            [12]  834 	subb	a,#0x80
      0001CF 40 A1            [24]  835 	jc	00104$
                                    836 ;	program.c:65: letter_A = 0x41;
      0001D1 90 00 06         [24]  837 	mov	dptr,#_blink_transmit_letter_A_65536_54
      0001D4 74 41            [12]  838 	mov	a,#0x41
      0001D6 F0               [24]  839 	movx	@dptr,a
      0001D7 E4               [12]  840 	clr	a
      0001D8 A3               [24]  841 	inc	dptr
      0001D9 F0               [24]  842 	movx	@dptr,a
                                    843 ;	program.c:66: putchar(0xD);
      0001DA 90 00 0D         [24]  844 	mov	dptr,#0x000d
      0001DD 12 03 48         [24]  845 	lcall	_putchar
                                    846 ;	program.c:67: putchar(0xA);
      0001E0 90 00 0A         [24]  847 	mov	dptr,#0x000a
      0001E3 12 03 48         [24]  848 	lcall	_putchar
                                    849 ;	program.c:70: }
      0001E6 02 01 72         [24]  850 	ljmp	00104$
                                    851 ;------------------------------------------------------------
                                    852 ;Allocation info for local variables in function 'get_number'
                                    853 ;------------------------------------------------------------
                                    854 ;rec                       Allocated with name '_get_number_rec_65536_57'
                                    855 ;i                         Allocated with name '_get_number_i_65536_57'
                                    856 ;num                       Allocated with name '_get_number_num_65536_57'
                                    857 ;------------------------------------------------------------
                                    858 ;	program.c:72: int get_number()
                                    859 ;	-----------------------------------------
                                    860 ;	 function get_number
                                    861 ;	-----------------------------------------
      0001E9                        862 _get_number:
                                    863 ;	program.c:76: int num = 0;   
      0001E9 90 00 08         [24]  864 	mov	dptr,#_get_number_num_65536_57
      0001EC E4               [12]  865 	clr	a
      0001ED F0               [24]  866 	movx	@dptr,a
      0001EE A3               [24]  867 	inc	dptr
      0001EF F0               [24]  868 	movx	@dptr,a
                                    869 ;	program.c:77: for (i = 4; i > 0; i--)
      0001F0 7E 04            [12]  870 	mov	r6,#0x04
      0001F2 7F 00            [12]  871 	mov	r7,#0x00
      0001F4                        872 00106$:
                                    873 ;	program.c:79: rec = getchar();
      0001F4 C0 07            [24]  874 	push	ar7
      0001F6 C0 06            [24]  875 	push	ar6
      0001F8 12 03 67         [24]  876 	lcall	_getchar
      0001FB AC 82            [24]  877 	mov	r4,dpl
      0001FD AD 83            [24]  878 	mov	r5,dph
      0001FF D0 06            [24]  879 	pop	ar6
      000201 D0 07            [24]  880 	pop	ar7
                                    881 ;	program.c:80: if (rec <= 0x39 && rec >= 0x30)
      000203 C3               [12]  882 	clr	c
      000204 74 39            [12]  883 	mov	a,#0x39
      000206 9C               [12]  884 	subb	a,r4
      000207 74 80            [12]  885 	mov	a,#(0x00 ^ 0x80)
      000209 8D F0            [24]  886 	mov	b,r5
      00020B 63 F0 80         [24]  887 	xrl	b,#0x80
      00020E 95 F0            [12]  888 	subb	a,b
      000210 40 5C            [24]  889 	jc	00102$
      000212 EC               [12]  890 	mov	a,r4
      000213 94 30            [12]  891 	subb	a,#0x30
      000215 ED               [12]  892 	mov	a,r5
      000216 64 80            [12]  893 	xrl	a,#0x80
      000218 94 80            [12]  894 	subb	a,#0x80
      00021A 40 52            [24]  895 	jc	00102$
                                    896 ;	program.c:82: num += ((rec - 0x30) * get_num_helper(i-1));
      00021C EC               [12]  897 	mov	a,r4
      00021D 24 D0            [12]  898 	add	a,#0xd0
      00021F FC               [12]  899 	mov	r4,a
      000220 ED               [12]  900 	mov	a,r5
      000221 34 FF            [12]  901 	addc	a,#0xff
      000223 FD               [12]  902 	mov	r5,a
      000224 EE               [12]  903 	mov	a,r6
      000225 24 FF            [12]  904 	add	a,#0xff
      000227 FA               [12]  905 	mov	r2,a
      000228 EF               [12]  906 	mov	a,r7
      000229 34 FF            [12]  907 	addc	a,#0xff
      00022B FB               [12]  908 	mov	r3,a
      00022C 8A 82            [24]  909 	mov	dpl,r2
      00022E 8B 83            [24]  910 	mov	dph,r3
      000230 C0 07            [24]  911 	push	ar7
      000232 C0 06            [24]  912 	push	ar6
      000234 C0 05            [24]  913 	push	ar5
      000236 C0 04            [24]  914 	push	ar4
      000238 12 02 A9         [24]  915 	lcall	_get_num_helper
      00023B AA 82            [24]  916 	mov	r2,dpl
      00023D AB 83            [24]  917 	mov	r3,dph
      00023F D0 04            [24]  918 	pop	ar4
      000241 D0 05            [24]  919 	pop	ar5
      000243 90 13 AC         [24]  920 	mov	dptr,#__mulint_PARM_2
      000246 EA               [12]  921 	mov	a,r2
      000247 F0               [24]  922 	movx	@dptr,a
      000248 EB               [12]  923 	mov	a,r3
      000249 A3               [24]  924 	inc	dptr
      00024A F0               [24]  925 	movx	@dptr,a
      00024B 8C 82            [24]  926 	mov	dpl,r4
      00024D 8D 83            [24]  927 	mov	dph,r5
      00024F 12 06 B1         [24]  928 	lcall	__mulint
      000252 AC 82            [24]  929 	mov	r4,dpl
      000254 AD 83            [24]  930 	mov	r5,dph
      000256 D0 06            [24]  931 	pop	ar6
      000258 D0 07            [24]  932 	pop	ar7
      00025A 90 00 08         [24]  933 	mov	dptr,#_get_number_num_65536_57
      00025D E0               [24]  934 	movx	a,@dptr
      00025E FA               [12]  935 	mov	r2,a
      00025F A3               [24]  936 	inc	dptr
      000260 E0               [24]  937 	movx	a,@dptr
      000261 FB               [12]  938 	mov	r3,a
      000262 90 00 08         [24]  939 	mov	dptr,#_get_number_num_65536_57
      000265 EC               [12]  940 	mov	a,r4
      000266 2A               [12]  941 	add	a,r2
      000267 F0               [24]  942 	movx	@dptr,a
      000268 ED               [12]  943 	mov	a,r5
      000269 3B               [12]  944 	addc	a,r3
      00026A A3               [24]  945 	inc	dptr
      00026B F0               [24]  946 	movx	@dptr,a
      00026C 80 19            [24]  947 	sjmp	00107$
      00026E                        948 00102$:
                                    949 ;	program.c:86: printf("ERR,Enter only Number\n\r");
      00026E 74 6A            [12]  950 	mov	a,#___str_1
      000270 C0 E0            [24]  951 	push	acc
      000272 74 11            [12]  952 	mov	a,#(___str_1 >> 8)
      000274 C0 E0            [24]  953 	push	acc
      000276 74 80            [12]  954 	mov	a,#0x80
      000278 C0 E0            [24]  955 	push	acc
      00027A 12 07 1F         [24]  956 	lcall	_printf
      00027D 15 81            [12]  957 	dec	sp
      00027F 15 81            [12]  958 	dec	sp
      000281 15 81            [12]  959 	dec	sp
                                    960 ;	program.c:87: return -1;
      000283 90 FF FF         [24]  961 	mov	dptr,#0xffff
      000286 22               [24]  962 	ret
      000287                        963 00107$:
                                    964 ;	program.c:77: for (i = 4; i > 0; i--)
      000287 1E               [12]  965 	dec	r6
      000288 BE FF 01         [24]  966 	cjne	r6,#0xff,00128$
      00028B 1F               [12]  967 	dec	r7
      00028C                        968 00128$:
      00028C C3               [12]  969 	clr	c
      00028D E4               [12]  970 	clr	a
      00028E 9E               [12]  971 	subb	a,r6
      00028F 74 80            [12]  972 	mov	a,#(0x00 ^ 0x80)
      000291 8F F0            [24]  973 	mov	b,r7
      000293 63 F0 80         [24]  974 	xrl	b,#0x80
      000296 95 F0            [12]  975 	subb	a,b
      000298 50 03            [24]  976 	jnc	00129$
      00029A 02 01 F4         [24]  977 	ljmp	00106$
      00029D                        978 00129$:
                                    979 ;	program.c:90: return num;
      00029D 90 00 08         [24]  980 	mov	dptr,#_get_number_num_65536_57
      0002A0 E0               [24]  981 	movx	a,@dptr
      0002A1 FE               [12]  982 	mov	r6,a
      0002A2 A3               [24]  983 	inc	dptr
      0002A3 E0               [24]  984 	movx	a,@dptr
                                    985 ;	program.c:91: }
      0002A4 8E 82            [24]  986 	mov	dpl,r6
      0002A6 F5 83            [12]  987 	mov	dph,a
      0002A8 22               [24]  988 	ret
                                    989 ;------------------------------------------------------------
                                    990 ;Allocation info for local variables in function 'get_num_helper'
                                    991 ;------------------------------------------------------------
                                    992 ;times                     Allocated with name '_get_num_helper_times_65536_62'
                                    993 ;num                       Allocated with name '_get_num_helper_num_65536_63'
                                    994 ;i                         Allocated with name '_get_num_helper_i_131072_64'
                                    995 ;------------------------------------------------------------
                                    996 ;	program.c:93: int get_num_helper(int times)
                                    997 ;	-----------------------------------------
                                    998 ;	 function get_num_helper
                                    999 ;	-----------------------------------------
      0002A9                       1000 _get_num_helper:
      0002A9 AF 83            [24] 1001 	mov	r7,dph
      0002AB E5 82            [12] 1002 	mov	a,dpl
      0002AD 90 00 0A         [24] 1003 	mov	dptr,#_get_num_helper_times_65536_62
      0002B0 F0               [24] 1004 	movx	@dptr,a
      0002B1 EF               [12] 1005 	mov	a,r7
      0002B2 A3               [24] 1006 	inc	dptr
      0002B3 F0               [24] 1007 	movx	@dptr,a
                                   1008 ;	program.c:95: int num=1;
      0002B4 90 00 0C         [24] 1009 	mov	dptr,#_get_num_helper_num_65536_63
      0002B7 74 01            [12] 1010 	mov	a,#0x01
      0002B9 F0               [24] 1011 	movx	@dptr,a
      0002BA E4               [12] 1012 	clr	a
      0002BB A3               [24] 1013 	inc	dptr
      0002BC F0               [24] 1014 	movx	@dptr,a
                                   1015 ;	program.c:96: for (int i = 0; i < times; i++)
      0002BD 90 00 0A         [24] 1016 	mov	dptr,#_get_num_helper_times_65536_62
      0002C0 E0               [24] 1017 	movx	a,@dptr
      0002C1 FE               [12] 1018 	mov	r6,a
      0002C2 A3               [24] 1019 	inc	dptr
      0002C3 E0               [24] 1020 	movx	a,@dptr
      0002C4 FF               [12] 1021 	mov	r7,a
      0002C5 7C 00            [12] 1022 	mov	r4,#0x00
      0002C7 7D 00            [12] 1023 	mov	r5,#0x00
      0002C9                       1024 00106$:
      0002C9 C3               [12] 1025 	clr	c
      0002CA EC               [12] 1026 	mov	a,r4
      0002CB 9E               [12] 1027 	subb	a,r6
      0002CC ED               [12] 1028 	mov	a,r5
      0002CD 64 80            [12] 1029 	xrl	a,#0x80
      0002CF 8F F0            [24] 1030 	mov	b,r7
      0002D1 63 F0 80         [24] 1031 	xrl	b,#0x80
      0002D4 95 F0            [12] 1032 	subb	a,b
      0002D6 50 3A            [24] 1033 	jnc	00101$
                                   1034 ;	program.c:98: num = num * 10;
      0002D8 90 00 0C         [24] 1035 	mov	dptr,#_get_num_helper_num_65536_63
      0002DB E0               [24] 1036 	movx	a,@dptr
      0002DC FA               [12] 1037 	mov	r2,a
      0002DD A3               [24] 1038 	inc	dptr
      0002DE E0               [24] 1039 	movx	a,@dptr
      0002DF FB               [12] 1040 	mov	r3,a
      0002E0 90 13 AC         [24] 1041 	mov	dptr,#__mulint_PARM_2
      0002E3 EA               [12] 1042 	mov	a,r2
      0002E4 F0               [24] 1043 	movx	@dptr,a
      0002E5 EB               [12] 1044 	mov	a,r3
      0002E6 A3               [24] 1045 	inc	dptr
      0002E7 F0               [24] 1046 	movx	@dptr,a
      0002E8 90 00 0A         [24] 1047 	mov	dptr,#0x000a
      0002EB C0 07            [24] 1048 	push	ar7
      0002ED C0 06            [24] 1049 	push	ar6
      0002EF C0 05            [24] 1050 	push	ar5
      0002F1 C0 04            [24] 1051 	push	ar4
      0002F3 12 06 B1         [24] 1052 	lcall	__mulint
      0002F6 E5 82            [12] 1053 	mov	a,dpl
      0002F8 85 83 F0         [24] 1054 	mov	b,dph
      0002FB D0 04            [24] 1055 	pop	ar4
      0002FD D0 05            [24] 1056 	pop	ar5
      0002FF D0 06            [24] 1057 	pop	ar6
      000301 D0 07            [24] 1058 	pop	ar7
      000303 90 00 0C         [24] 1059 	mov	dptr,#_get_num_helper_num_65536_63
      000306 F0               [24] 1060 	movx	@dptr,a
      000307 E5 F0            [12] 1061 	mov	a,b
      000309 A3               [24] 1062 	inc	dptr
      00030A F0               [24] 1063 	movx	@dptr,a
                                   1064 ;	program.c:96: for (int i = 0; i < times; i++)
      00030B 0C               [12] 1065 	inc	r4
      00030C BC 00 BA         [24] 1066 	cjne	r4,#0x00,00106$
      00030F 0D               [12] 1067 	inc	r5
      000310 80 B7            [24] 1068 	sjmp	00106$
      000312                       1069 00101$:
                                   1070 ;	program.c:100: if (times == 0)
      000312 EE               [12] 1071 	mov	a,r6
      000313 4F               [12] 1072 	orl	a,r7
      000314 70 04            [24] 1073 	jnz	00103$
                                   1074 ;	program.c:101: return 1;
      000316 90 00 01         [24] 1075 	mov	dptr,#0x0001
      000319 22               [24] 1076 	ret
      00031A                       1077 00103$:
                                   1078 ;	program.c:103: return num;
      00031A 90 00 0C         [24] 1079 	mov	dptr,#_get_num_helper_num_65536_63
      00031D E0               [24] 1080 	movx	a,@dptr
      00031E FE               [12] 1081 	mov	r6,a
      00031F A3               [24] 1082 	inc	dptr
      000320 E0               [24] 1083 	movx	a,@dptr
                                   1084 ;	program.c:104: }
      000321 8E 82            [24] 1085 	mov	dpl,r6
      000323 F5 83            [12] 1086 	mov	dph,a
      000325 22               [24] 1087 	ret
                                   1088 ;------------------------------------------------------------
                                   1089 ;Allocation info for local variables in function 'delay'
                                   1090 ;------------------------------------------------------------
                                   1091 ;i                         Allocated with name '_delay_i_65536_67'
                                   1092 ;j                         Allocated with name '_delay_j_65536_67'
                                   1093 ;------------------------------------------------------------
                                   1094 ;	program.c:106: void delay(void)
                                   1095 ;	-----------------------------------------
                                   1096 ;	 function delay
                                   1097 ;	-----------------------------------------
      000326                       1098 _delay:
                                   1099 ;	program.c:109: for (i = 0; i < 0xcc; i++)
      000326 7E 00            [12] 1100 	mov	r6,#0x00
      000328 7F 00            [12] 1101 	mov	r7,#0x00
                                   1102 ;	program.c:110: for (j = 0; j < 0xff; j++)
      00032A                       1103 00110$:
      00032A 7C FF            [12] 1104 	mov	r4,#0xff
      00032C 7D 00            [12] 1105 	mov	r5,#0x00
      00032E                       1106 00105$:
      00032E 1C               [12] 1107 	dec	r4
      00032F BC FF 01         [24] 1108 	cjne	r4,#0xff,00124$
      000332 1D               [12] 1109 	dec	r5
      000333                       1110 00124$:
      000333 EC               [12] 1111 	mov	a,r4
      000334 4D               [12] 1112 	orl	a,r5
      000335 70 F7            [24] 1113 	jnz	00105$
                                   1114 ;	program.c:109: for (i = 0; i < 0xcc; i++)
      000337 0E               [12] 1115 	inc	r6
      000338 BE 00 01         [24] 1116 	cjne	r6,#0x00,00126$
      00033B 0F               [12] 1117 	inc	r7
      00033C                       1118 00126$:
      00033C C3               [12] 1119 	clr	c
      00033D EE               [12] 1120 	mov	a,r6
      00033E 94 CC            [12] 1121 	subb	a,#0xcc
      000340 EF               [12] 1122 	mov	a,r7
      000341 64 80            [12] 1123 	xrl	a,#0x80
      000343 94 80            [12] 1124 	subb	a,#0x80
      000345 40 E3            [24] 1125 	jc	00110$
                                   1126 ;	program.c:112: }
      000347 22               [24] 1127 	ret
                                   1128 ;------------------------------------------------------------
                                   1129 ;Allocation info for local variables in function 'putchar'
                                   1130 ;------------------------------------------------------------
                                   1131 ;c                         Allocated with name '_putchar_c_65536_70'
                                   1132 ;------------------------------------------------------------
                                   1133 ;	program.c:114: int putchar(int c)
                                   1134 ;	-----------------------------------------
                                   1135 ;	 function putchar
                                   1136 ;	-----------------------------------------
      000348                       1137 _putchar:
      000348 AF 83            [24] 1138 	mov	r7,dph
      00034A E5 82            [12] 1139 	mov	a,dpl
      00034C 90 00 0E         [24] 1140 	mov	dptr,#_putchar_c_65536_70
      00034F F0               [24] 1141 	movx	@dptr,a
      000350 EF               [12] 1142 	mov	a,r7
      000351 A3               [24] 1143 	inc	dptr
      000352 F0               [24] 1144 	movx	@dptr,a
                                   1145 ;	program.c:116: while ((SCON & 0x02) == 0)
      000353                       1146 00101$:
      000353 E5 98            [12] 1147 	mov	a,_SCON
      000355 30 E1 FB         [24] 1148 	jnb	acc.1,00101$
                                   1149 ;	program.c:118: TI = 0;
                                   1150 ;	assignBit
      000358 C2 99            [12] 1151 	clr	_TI
                                   1152 ;	program.c:119: SBUF = c;
      00035A 90 00 0E         [24] 1153 	mov	dptr,#_putchar_c_65536_70
      00035D E0               [24] 1154 	movx	a,@dptr
      00035E FE               [12] 1155 	mov	r6,a
      00035F A3               [24] 1156 	inc	dptr
      000360 E0               [24] 1157 	movx	a,@dptr
      000361 8E 99            [24] 1158 	mov	_SBUF,r6
                                   1159 ;	program.c:120: return 0;
      000363 90 00 00         [24] 1160 	mov	dptr,#0x0000
                                   1161 ;	program.c:121: }
      000366 22               [24] 1162 	ret
                                   1163 ;------------------------------------------------------------
                                   1164 ;Allocation info for local variables in function 'getchar'
                                   1165 ;------------------------------------------------------------
                                   1166 ;	program.c:123: int getchar()
                                   1167 ;	-----------------------------------------
                                   1168 ;	 function getchar
                                   1169 ;	-----------------------------------------
      000367                       1170 _getchar:
                                   1171 ;	program.c:125: while (RI == 0)
      000367                       1172 00101$:
                                   1173 ;	program.c:127: RI = 0;
                                   1174 ;	assignBit
      000367 10 98 02         [24] 1175 	jbc	_RI,00114$
      00036A 80 FB            [24] 1176 	sjmp	00101$
      00036C                       1177 00114$:
                                   1178 ;	program.c:128: putchar(SBUF);
      00036C AE 99            [24] 1179 	mov	r6,_SBUF
      00036E 7F 00            [12] 1180 	mov	r7,#0x00
      000370 8E 82            [24] 1181 	mov	dpl,r6
      000372 8F 83            [24] 1182 	mov	dph,r7
      000374 12 03 48         [24] 1183 	lcall	_putchar
                                   1184 ;	program.c:129: return SBUF;
      000377 AE 99            [24] 1185 	mov	r6,_SBUF
      000379 7F 00            [12] 1186 	mov	r7,#0x00
      00037B 8E 82            [24] 1187 	mov	dpl,r6
      00037D 8F 83            [24] 1188 	mov	dph,r7
                                   1189 ;	program.c:130: }
      00037F 22               [24] 1190 	ret
                                   1191 ;------------------------------------------------------------
                                   1192 ;Allocation info for local variables in function '_sdcc_external_startup'
                                   1193 ;------------------------------------------------------------
                                   1194 ;	program.c:132: _sdcc_external_startup()
                                   1195 ;	-----------------------------------------
                                   1196 ;	 function _sdcc_external_startup
                                   1197 ;	-----------------------------------------
      000380                       1198 __sdcc_external_startup:
                                   1199 ;	program.c:134: _AUXR = 0xC;
      000380 75 8E 0C         [24] 1200 	mov	__AUXR,#0x0c
                                   1201 ;	program.c:136: SCON = 0x42;
      000383 75 98 42         [24] 1202 	mov	_SCON,#0x42
                                   1203 ;	program.c:138: PCON = 0x80;
      000386 75 87 80         [24] 1204 	mov	_PCON,#0x80
                                   1205 ;	program.c:140: TH1 = 255;
      000389 75 8D FF         [24] 1206 	mov	_TH1,#0xff
                                   1207 ;	program.c:141: TL1 = 255;
      00038C 75 8B FF         [24] 1208 	mov	_TL1,#0xff
                                   1209 ;	program.c:143: TMOD = 0x20;
      00038F 75 89 20         [24] 1210 	mov	_TMOD,#0x20
                                   1211 ;	program.c:145: REN = 1;
                                   1212 ;	assignBit
      000392 D2 9C            [12] 1213 	setb	_REN
                                   1214 ;	program.c:147: TR1 = 1;
                                   1215 ;	assignBit
      000394 D2 8E            [12] 1216 	setb	_TR1
                                   1217 ;	program.c:149: return 0;
      000396 90 00 00         [24] 1218 	mov	dptr,#0x0000
                                   1219 ;	program.c:150: }
      000399 22               [24] 1220 	ret
                                   1221 	.area CSEG    (CODE)
                                   1222 	.area CONST   (CODE)
                                   1223 	.area CONST   (CODE)
      00115A                       1224 ___str_0:
      00115A 4D 41 4C 4C 4F 43 20  1225 	.ascii "MALLOC FAILED"
             46 41 49 4C 45 44
      001167 0A                    1226 	.db 0x0a
      001168 0D                    1227 	.db 0x0d
      001169 00                    1228 	.db 0x00
                                   1229 	.area CSEG    (CODE)
                                   1230 	.area CONST   (CODE)
      00116A                       1231 ___str_1:
      00116A 45 52 52 2C 45 6E 74  1232 	.ascii "ERR,Enter only Number"
             65 72 20 6F 6E 6C 79
             20 4E 75 6D 62 65 72
      00117F 0A                    1233 	.db 0x0a
      001180 0D                    1234 	.db 0x0d
      001181 00                    1235 	.db 0x00
                                   1236 	.area CSEG    (CODE)
                                   1237 	.area XINIT   (CODE)
                                   1238 	.area CABS    (ABS,CODE)
