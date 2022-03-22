                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module getput
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _printf
                                     12 	.globl _TF1
                                     13 	.globl _TR1
                                     14 	.globl _TF0
                                     15 	.globl _TR0
                                     16 	.globl _IE1
                                     17 	.globl _IT1
                                     18 	.globl _IE0
                                     19 	.globl _IT0
                                     20 	.globl _SM0
                                     21 	.globl _SM1
                                     22 	.globl _SM2
                                     23 	.globl _REN
                                     24 	.globl _TB8
                                     25 	.globl _RB8
                                     26 	.globl _TI
                                     27 	.globl _RI
                                     28 	.globl _CY
                                     29 	.globl _AC
                                     30 	.globl _F0
                                     31 	.globl _RS1
                                     32 	.globl _RS0
                                     33 	.globl _OV
                                     34 	.globl _F1
                                     35 	.globl _P
                                     36 	.globl _RD
                                     37 	.globl _WR
                                     38 	.globl _T1
                                     39 	.globl _T0
                                     40 	.globl _INT1
                                     41 	.globl _INT0
                                     42 	.globl _TXD0
                                     43 	.globl _TXD
                                     44 	.globl _RXD0
                                     45 	.globl _RXD
                                     46 	.globl _P3_7
                                     47 	.globl _P3_6
                                     48 	.globl _P3_5
                                     49 	.globl _P3_4
                                     50 	.globl _P3_3
                                     51 	.globl _P3_2
                                     52 	.globl _P3_1
                                     53 	.globl _P3_0
                                     54 	.globl _P2_7
                                     55 	.globl _P2_6
                                     56 	.globl _P2_5
                                     57 	.globl _P2_4
                                     58 	.globl _P2_3
                                     59 	.globl _P2_2
                                     60 	.globl _P2_1
                                     61 	.globl _P2_0
                                     62 	.globl _P1_7
                                     63 	.globl _P1_6
                                     64 	.globl _P1_5
                                     65 	.globl _P1_4
                                     66 	.globl _P1_3
                                     67 	.globl _P1_2
                                     68 	.globl _P1_1
                                     69 	.globl _P1_0
                                     70 	.globl _P0_7
                                     71 	.globl _P0_6
                                     72 	.globl _P0_5
                                     73 	.globl _P0_4
                                     74 	.globl _P0_3
                                     75 	.globl _P0_2
                                     76 	.globl _P0_1
                                     77 	.globl _P0_0
                                     78 	.globl _PS
                                     79 	.globl _PT1
                                     80 	.globl _PX1
                                     81 	.globl _PT0
                                     82 	.globl _PX0
                                     83 	.globl _EA
                                     84 	.globl _ES
                                     85 	.globl _ET1
                                     86 	.globl _EX1
                                     87 	.globl _ET0
                                     88 	.globl _EX0
                                     89 	.globl _BREG_F7
                                     90 	.globl _BREG_F6
                                     91 	.globl _BREG_F5
                                     92 	.globl _BREG_F4
                                     93 	.globl _BREG_F3
                                     94 	.globl _BREG_F2
                                     95 	.globl _BREG_F1
                                     96 	.globl _BREG_F0
                                     97 	.globl _P5_7
                                     98 	.globl _P5_6
                                     99 	.globl _P5_5
                                    100 	.globl _P5_4
                                    101 	.globl _P5_3
                                    102 	.globl _P5_2
                                    103 	.globl _P5_1
                                    104 	.globl _P5_0
                                    105 	.globl _P4_7
                                    106 	.globl _P4_6
                                    107 	.globl _P4_5
                                    108 	.globl _P4_4
                                    109 	.globl _P4_3
                                    110 	.globl _P4_2
                                    111 	.globl _P4_1
                                    112 	.globl _P4_0
                                    113 	.globl _PX0L
                                    114 	.globl _PT0L
                                    115 	.globl _PX1L
                                    116 	.globl _PT1L
                                    117 	.globl _PSL
                                    118 	.globl _PT2L
                                    119 	.globl _PPCL
                                    120 	.globl _EC
                                    121 	.globl _CCF0
                                    122 	.globl _CCF1
                                    123 	.globl _CCF2
                                    124 	.globl _CCF3
                                    125 	.globl _CCF4
                                    126 	.globl _CR
                                    127 	.globl _CF
                                    128 	.globl _TF2
                                    129 	.globl _EXF2
                                    130 	.globl _RCLK
                                    131 	.globl _TCLK
                                    132 	.globl _EXEN2
                                    133 	.globl _TR2
                                    134 	.globl _C_T2
                                    135 	.globl _CP_RL2
                                    136 	.globl _T2CON_7
                                    137 	.globl _T2CON_6
                                    138 	.globl _T2CON_5
                                    139 	.globl _T2CON_4
                                    140 	.globl _T2CON_3
                                    141 	.globl _T2CON_2
                                    142 	.globl _T2CON_1
                                    143 	.globl _T2CON_0
                                    144 	.globl _PT2
                                    145 	.globl _ET2
                                    146 	.globl _TMOD
                                    147 	.globl _TL1
                                    148 	.globl _TL0
                                    149 	.globl _TH1
                                    150 	.globl _TH0
                                    151 	.globl _TCON
                                    152 	.globl _SP
                                    153 	.globl _SCON
                                    154 	.globl _SBUF0
                                    155 	.globl _SBUF
                                    156 	.globl _PSW
                                    157 	.globl _PCON
                                    158 	.globl _P3
                                    159 	.globl _P2
                                    160 	.globl _P1
                                    161 	.globl _P0
                                    162 	.globl _IP
                                    163 	.globl _IE
                                    164 	.globl _DP0L
                                    165 	.globl _DPL
                                    166 	.globl _DP0H
                                    167 	.globl _DPH
                                    168 	.globl _B
                                    169 	.globl _ACC
                                    170 	.globl _EECON
                                    171 	.globl _KBF
                                    172 	.globl _KBE
                                    173 	.globl _KBLS
                                    174 	.globl _BRL
                                    175 	.globl _BDRCON
                                    176 	.globl _T2MOD
                                    177 	.globl _SPDAT
                                    178 	.globl _SPSTA
                                    179 	.globl _SPCON
                                    180 	.globl _SADEN
                                    181 	.globl _SADDR
                                    182 	.globl _WDTPRG
                                    183 	.globl _WDTRST
                                    184 	.globl _P5
                                    185 	.globl _P4
                                    186 	.globl _IPH1
                                    187 	.globl _IPL1
                                    188 	.globl _IPH0
                                    189 	.globl _IPL0
                                    190 	.globl _IEN1
                                    191 	.globl _IEN0
                                    192 	.globl _CMOD
                                    193 	.globl _CL
                                    194 	.globl _CH
                                    195 	.globl _CCON
                                    196 	.globl _CCAPM4
                                    197 	.globl _CCAPM3
                                    198 	.globl _CCAPM2
                                    199 	.globl _CCAPM1
                                    200 	.globl _CCAPM0
                                    201 	.globl _CCAP4L
                                    202 	.globl _CCAP3L
                                    203 	.globl _CCAP2L
                                    204 	.globl _CCAP1L
                                    205 	.globl _CCAP0L
                                    206 	.globl _CCAP4H
                                    207 	.globl _CCAP3H
                                    208 	.globl _CCAP2H
                                    209 	.globl _CCAP1H
                                    210 	.globl _CCAP0H
                                    211 	.globl _CKCON1
                                    212 	.globl _CKCON0
                                    213 	.globl _CKRL
                                    214 	.globl _AUXR1
                                    215 	.globl _AUXR
                                    216 	.globl _TH2
                                    217 	.globl _TL2
                                    218 	.globl _RCAP2H
                                    219 	.globl _RCAP2L
                                    220 	.globl _T2CON
                                    221 	.globl _get_number
                                    222 	.globl _get_num_helper
                                    223 	.globl _get_number_hex
                                    224 	.globl _get_num_helper_hex
                                    225 	.globl _putchar
                                    226 	.globl _getchar
                                    227 ;--------------------------------------------------------
                                    228 ; special function registers
                                    229 ;--------------------------------------------------------
                                    230 	.area RSEG    (ABS,DATA)
      000000                        231 	.org 0x0000
                           0000C8   232 _T2CON	=	0x00c8
                           0000CA   233 _RCAP2L	=	0x00ca
                           0000CB   234 _RCAP2H	=	0x00cb
                           0000CC   235 _TL2	=	0x00cc
                           0000CD   236 _TH2	=	0x00cd
                           00008E   237 _AUXR	=	0x008e
                           0000A2   238 _AUXR1	=	0x00a2
                           000097   239 _CKRL	=	0x0097
                           00008F   240 _CKCON0	=	0x008f
                           0000AF   241 _CKCON1	=	0x00af
                           0000FA   242 _CCAP0H	=	0x00fa
                           0000FB   243 _CCAP1H	=	0x00fb
                           0000FC   244 _CCAP2H	=	0x00fc
                           0000FD   245 _CCAP3H	=	0x00fd
                           0000FE   246 _CCAP4H	=	0x00fe
                           0000EA   247 _CCAP0L	=	0x00ea
                           0000EB   248 _CCAP1L	=	0x00eb
                           0000EC   249 _CCAP2L	=	0x00ec
                           0000ED   250 _CCAP3L	=	0x00ed
                           0000EE   251 _CCAP4L	=	0x00ee
                           0000DA   252 _CCAPM0	=	0x00da
                           0000DB   253 _CCAPM1	=	0x00db
                           0000DC   254 _CCAPM2	=	0x00dc
                           0000DD   255 _CCAPM3	=	0x00dd
                           0000DE   256 _CCAPM4	=	0x00de
                           0000D8   257 _CCON	=	0x00d8
                           0000F9   258 _CH	=	0x00f9
                           0000E9   259 _CL	=	0x00e9
                           0000D9   260 _CMOD	=	0x00d9
                           0000A8   261 _IEN0	=	0x00a8
                           0000B1   262 _IEN1	=	0x00b1
                           0000B8   263 _IPL0	=	0x00b8
                           0000B7   264 _IPH0	=	0x00b7
                           0000B2   265 _IPL1	=	0x00b2
                           0000B3   266 _IPH1	=	0x00b3
                           0000C0   267 _P4	=	0x00c0
                           0000E8   268 _P5	=	0x00e8
                           0000A6   269 _WDTRST	=	0x00a6
                           0000A7   270 _WDTPRG	=	0x00a7
                           0000A9   271 _SADDR	=	0x00a9
                           0000B9   272 _SADEN	=	0x00b9
                           0000C3   273 _SPCON	=	0x00c3
                           0000C4   274 _SPSTA	=	0x00c4
                           0000C5   275 _SPDAT	=	0x00c5
                           0000C9   276 _T2MOD	=	0x00c9
                           00009B   277 _BDRCON	=	0x009b
                           00009A   278 _BRL	=	0x009a
                           00009C   279 _KBLS	=	0x009c
                           00009D   280 _KBE	=	0x009d
                           00009E   281 _KBF	=	0x009e
                           0000D2   282 _EECON	=	0x00d2
                           0000E0   283 _ACC	=	0x00e0
                           0000F0   284 _B	=	0x00f0
                           000083   285 _DPH	=	0x0083
                           000083   286 _DP0H	=	0x0083
                           000082   287 _DPL	=	0x0082
                           000082   288 _DP0L	=	0x0082
                           0000A8   289 _IE	=	0x00a8
                           0000B8   290 _IP	=	0x00b8
                           000080   291 _P0	=	0x0080
                           000090   292 _P1	=	0x0090
                           0000A0   293 _P2	=	0x00a0
                           0000B0   294 _P3	=	0x00b0
                           000087   295 _PCON	=	0x0087
                           0000D0   296 _PSW	=	0x00d0
                           000099   297 _SBUF	=	0x0099
                           000099   298 _SBUF0	=	0x0099
                           000098   299 _SCON	=	0x0098
                           000081   300 _SP	=	0x0081
                           000088   301 _TCON	=	0x0088
                           00008C   302 _TH0	=	0x008c
                           00008D   303 _TH1	=	0x008d
                           00008A   304 _TL0	=	0x008a
                           00008B   305 _TL1	=	0x008b
                           000089   306 _TMOD	=	0x0089
                                    307 ;--------------------------------------------------------
                                    308 ; special function bits
                                    309 ;--------------------------------------------------------
                                    310 	.area RSEG    (ABS,DATA)
      000000                        311 	.org 0x0000
                           0000AD   312 _ET2	=	0x00ad
                           0000BD   313 _PT2	=	0x00bd
                           0000C8   314 _T2CON_0	=	0x00c8
                           0000C9   315 _T2CON_1	=	0x00c9
                           0000CA   316 _T2CON_2	=	0x00ca
                           0000CB   317 _T2CON_3	=	0x00cb
                           0000CC   318 _T2CON_4	=	0x00cc
                           0000CD   319 _T2CON_5	=	0x00cd
                           0000CE   320 _T2CON_6	=	0x00ce
                           0000CF   321 _T2CON_7	=	0x00cf
                           0000C8   322 _CP_RL2	=	0x00c8
                           0000C9   323 _C_T2	=	0x00c9
                           0000CA   324 _TR2	=	0x00ca
                           0000CB   325 _EXEN2	=	0x00cb
                           0000CC   326 _TCLK	=	0x00cc
                           0000CD   327 _RCLK	=	0x00cd
                           0000CE   328 _EXF2	=	0x00ce
                           0000CF   329 _TF2	=	0x00cf
                           0000DF   330 _CF	=	0x00df
                           0000DE   331 _CR	=	0x00de
                           0000DC   332 _CCF4	=	0x00dc
                           0000DB   333 _CCF3	=	0x00db
                           0000DA   334 _CCF2	=	0x00da
                           0000D9   335 _CCF1	=	0x00d9
                           0000D8   336 _CCF0	=	0x00d8
                           0000AE   337 _EC	=	0x00ae
                           0000BE   338 _PPCL	=	0x00be
                           0000BD   339 _PT2L	=	0x00bd
                           0000BC   340 _PSL	=	0x00bc
                           0000BB   341 _PT1L	=	0x00bb
                           0000BA   342 _PX1L	=	0x00ba
                           0000B9   343 _PT0L	=	0x00b9
                           0000B8   344 _PX0L	=	0x00b8
                           0000C0   345 _P4_0	=	0x00c0
                           0000C1   346 _P4_1	=	0x00c1
                           0000C2   347 _P4_2	=	0x00c2
                           0000C3   348 _P4_3	=	0x00c3
                           0000C4   349 _P4_4	=	0x00c4
                           0000C5   350 _P4_5	=	0x00c5
                           0000C6   351 _P4_6	=	0x00c6
                           0000C7   352 _P4_7	=	0x00c7
                           0000E8   353 _P5_0	=	0x00e8
                           0000E9   354 _P5_1	=	0x00e9
                           0000EA   355 _P5_2	=	0x00ea
                           0000EB   356 _P5_3	=	0x00eb
                           0000EC   357 _P5_4	=	0x00ec
                           0000ED   358 _P5_5	=	0x00ed
                           0000EE   359 _P5_6	=	0x00ee
                           0000EF   360 _P5_7	=	0x00ef
                           0000F0   361 _BREG_F0	=	0x00f0
                           0000F1   362 _BREG_F1	=	0x00f1
                           0000F2   363 _BREG_F2	=	0x00f2
                           0000F3   364 _BREG_F3	=	0x00f3
                           0000F4   365 _BREG_F4	=	0x00f4
                           0000F5   366 _BREG_F5	=	0x00f5
                           0000F6   367 _BREG_F6	=	0x00f6
                           0000F7   368 _BREG_F7	=	0x00f7
                           0000A8   369 _EX0	=	0x00a8
                           0000A9   370 _ET0	=	0x00a9
                           0000AA   371 _EX1	=	0x00aa
                           0000AB   372 _ET1	=	0x00ab
                           0000AC   373 _ES	=	0x00ac
                           0000AF   374 _EA	=	0x00af
                           0000B8   375 _PX0	=	0x00b8
                           0000B9   376 _PT0	=	0x00b9
                           0000BA   377 _PX1	=	0x00ba
                           0000BB   378 _PT1	=	0x00bb
                           0000BC   379 _PS	=	0x00bc
                           000080   380 _P0_0	=	0x0080
                           000081   381 _P0_1	=	0x0081
                           000082   382 _P0_2	=	0x0082
                           000083   383 _P0_3	=	0x0083
                           000084   384 _P0_4	=	0x0084
                           000085   385 _P0_5	=	0x0085
                           000086   386 _P0_6	=	0x0086
                           000087   387 _P0_7	=	0x0087
                           000090   388 _P1_0	=	0x0090
                           000091   389 _P1_1	=	0x0091
                           000092   390 _P1_2	=	0x0092
                           000093   391 _P1_3	=	0x0093
                           000094   392 _P1_4	=	0x0094
                           000095   393 _P1_5	=	0x0095
                           000096   394 _P1_6	=	0x0096
                           000097   395 _P1_7	=	0x0097
                           0000A0   396 _P2_0	=	0x00a0
                           0000A1   397 _P2_1	=	0x00a1
                           0000A2   398 _P2_2	=	0x00a2
                           0000A3   399 _P2_3	=	0x00a3
                           0000A4   400 _P2_4	=	0x00a4
                           0000A5   401 _P2_5	=	0x00a5
                           0000A6   402 _P2_6	=	0x00a6
                           0000A7   403 _P2_7	=	0x00a7
                           0000B0   404 _P3_0	=	0x00b0
                           0000B1   405 _P3_1	=	0x00b1
                           0000B2   406 _P3_2	=	0x00b2
                           0000B3   407 _P3_3	=	0x00b3
                           0000B4   408 _P3_4	=	0x00b4
                           0000B5   409 _P3_5	=	0x00b5
                           0000B6   410 _P3_6	=	0x00b6
                           0000B7   411 _P3_7	=	0x00b7
                           0000B0   412 _RXD	=	0x00b0
                           0000B0   413 _RXD0	=	0x00b0
                           0000B1   414 _TXD	=	0x00b1
                           0000B1   415 _TXD0	=	0x00b1
                           0000B2   416 _INT0	=	0x00b2
                           0000B3   417 _INT1	=	0x00b3
                           0000B4   418 _T0	=	0x00b4
                           0000B5   419 _T1	=	0x00b5
                           0000B6   420 _WR	=	0x00b6
                           0000B7   421 _RD	=	0x00b7
                           0000D0   422 _P	=	0x00d0
                           0000D1   423 _F1	=	0x00d1
                           0000D2   424 _OV	=	0x00d2
                           0000D3   425 _RS0	=	0x00d3
                           0000D4   426 _RS1	=	0x00d4
                           0000D5   427 _F0	=	0x00d5
                           0000D6   428 _AC	=	0x00d6
                           0000D7   429 _CY	=	0x00d7
                           000098   430 _RI	=	0x0098
                           000099   431 _TI	=	0x0099
                           00009A   432 _RB8	=	0x009a
                           00009B   433 _TB8	=	0x009b
                           00009C   434 _REN	=	0x009c
                           00009D   435 _SM2	=	0x009d
                           00009E   436 _SM1	=	0x009e
                           00009F   437 _SM0	=	0x009f
                           000088   438 _IT0	=	0x0088
                           000089   439 _IE0	=	0x0089
                           00008A   440 _IT1	=	0x008a
                           00008B   441 _IE1	=	0x008b
                           00008C   442 _TR0	=	0x008c
                           00008D   443 _TF0	=	0x008d
                           00008E   444 _TR1	=	0x008e
                           00008F   445 _TF1	=	0x008f
                                    446 ;--------------------------------------------------------
                                    447 ; overlayable register banks
                                    448 ;--------------------------------------------------------
                                    449 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        450 	.ds 8
                                    451 ;--------------------------------------------------------
                                    452 ; internal ram data
                                    453 ;--------------------------------------------------------
                                    454 	.area DSEG    (DATA)
                                    455 ;--------------------------------------------------------
                                    456 ; overlayable items in internal ram 
                                    457 ;--------------------------------------------------------
                                    458 ;--------------------------------------------------------
                                    459 ; indirectly addressable internal ram data
                                    460 ;--------------------------------------------------------
                                    461 	.area ISEG    (DATA)
                                    462 ;--------------------------------------------------------
                                    463 ; absolute internal ram data
                                    464 ;--------------------------------------------------------
                                    465 	.area IABS    (ABS,DATA)
                                    466 	.area IABS    (ABS,DATA)
                                    467 ;--------------------------------------------------------
                                    468 ; bit data
                                    469 ;--------------------------------------------------------
                                    470 	.area BSEG    (BIT)
                                    471 ;--------------------------------------------------------
                                    472 ; paged external ram data
                                    473 ;--------------------------------------------------------
                                    474 	.area PSEG    (PAG,XDATA)
                                    475 ;--------------------------------------------------------
                                    476 ; external ram data
                                    477 ;--------------------------------------------------------
                                    478 	.area XSEG    (XDATA)
      000008                        479 _get_number_total_chars_65536_48:
      000008                        480 	.ds 2
      00000A                        481 _get_number_num_65536_49:
      00000A                        482 	.ds 2
      00000C                        483 _get_num_helper_times_65536_54:
      00000C                        484 	.ds 2
      00000E                        485 _get_num_helper_num_65536_55:
      00000E                        486 	.ds 2
      000010                        487 _get_number_hex_total_chars_65536_58:
      000010                        488 	.ds 2
      000012                        489 _get_number_hex_rec_65536_59:
      000012                        490 	.ds 2
      000014                        491 _get_number_hex_num_65536_59:
      000014                        492 	.ds 2
      000016                        493 _get_num_helper_hex_times_65536_65:
      000016                        494 	.ds 2
      000018                        495 _get_num_helper_hex_num_65536_66:
      000018                        496 	.ds 2
      00001A                        497 _putchar_c_65536_69:
      00001A                        498 	.ds 2
                                    499 ;--------------------------------------------------------
                                    500 ; absolute external ram data
                                    501 ;--------------------------------------------------------
                                    502 	.area XABS    (ABS,XDATA)
                                    503 ;--------------------------------------------------------
                                    504 ; external initialized ram data
                                    505 ;--------------------------------------------------------
                                    506 	.area XISEG   (XDATA)
                                    507 	.area HOME    (CODE)
                                    508 	.area GSINIT0 (CODE)
                                    509 	.area GSINIT1 (CODE)
                                    510 	.area GSINIT2 (CODE)
                                    511 	.area GSINIT3 (CODE)
                                    512 	.area GSINIT4 (CODE)
                                    513 	.area GSINIT5 (CODE)
                                    514 	.area GSINIT  (CODE)
                                    515 	.area GSFINAL (CODE)
                                    516 	.area CSEG    (CODE)
                                    517 ;--------------------------------------------------------
                                    518 ; global & static initialisations
                                    519 ;--------------------------------------------------------
                                    520 	.area HOME    (CODE)
                                    521 	.area GSINIT  (CODE)
                                    522 	.area GSFINAL (CODE)
                                    523 	.area GSINIT  (CODE)
                                    524 ;--------------------------------------------------------
                                    525 ; Home
                                    526 ;--------------------------------------------------------
                                    527 	.area HOME    (CODE)
                                    528 	.area HOME    (CODE)
                                    529 ;--------------------------------------------------------
                                    530 ; code
                                    531 ;--------------------------------------------------------
                                    532 	.area CSEG    (CODE)
                                    533 ;------------------------------------------------------------
                                    534 ;Allocation info for local variables in function 'get_number'
                                    535 ;------------------------------------------------------------
                                    536 ;total_chars               Allocated with name '_get_number_total_chars_65536_48'
                                    537 ;rec                       Allocated with name '_get_number_rec_65536_49'
                                    538 ;num                       Allocated with name '_get_number_num_65536_49'
                                    539 ;i                         Allocated with name '_get_number_i_131072_50'
                                    540 ;------------------------------------------------------------
                                    541 ;	getput.c:16: int get_number(int total_chars)
                                    542 ;	-----------------------------------------
                                    543 ;	 function get_number
                                    544 ;	-----------------------------------------
      00040B                        545 _get_number:
                           000007   546 	ar7 = 0x07
                           000006   547 	ar6 = 0x06
                           000005   548 	ar5 = 0x05
                           000004   549 	ar4 = 0x04
                           000003   550 	ar3 = 0x03
                           000002   551 	ar2 = 0x02
                           000001   552 	ar1 = 0x01
                           000000   553 	ar0 = 0x00
      00040B AF 83            [24]  554 	mov	r7,dph
      00040D E5 82            [12]  555 	mov	a,dpl
      00040F 90 00 08         [24]  556 	mov	dptr,#_get_number_total_chars_65536_48
      000412 F0               [24]  557 	movx	@dptr,a
      000413 EF               [12]  558 	mov	a,r7
      000414 A3               [24]  559 	inc	dptr
      000415 F0               [24]  560 	movx	@dptr,a
                                    561 ;	getput.c:19: int num = 0;
      000416 90 00 0A         [24]  562 	mov	dptr,#_get_number_num_65536_49
      000419 E4               [12]  563 	clr	a
      00041A F0               [24]  564 	movx	@dptr,a
      00041B A3               [24]  565 	inc	dptr
      00041C F0               [24]  566 	movx	@dptr,a
                                    567 ;	getput.c:20: for (int i = total_chars; i > 0; i--)
      00041D 90 00 08         [24]  568 	mov	dptr,#_get_number_total_chars_65536_48
      000420 E0               [24]  569 	movx	a,@dptr
      000421 FE               [12]  570 	mov	r6,a
      000422 A3               [24]  571 	inc	dptr
      000423 E0               [24]  572 	movx	a,@dptr
      000424 FF               [12]  573 	mov	r7,a
      000425                        574 00107$:
      000425 C3               [12]  575 	clr	c
      000426 E4               [12]  576 	clr	a
      000427 9E               [12]  577 	subb	a,r6
      000428 74 80            [12]  578 	mov	a,#(0x00 ^ 0x80)
      00042A 8F F0            [24]  579 	mov	b,r7
      00042C 63 F0 80         [24]  580 	xrl	b,#0x80
      00042F 95 F0            [12]  581 	subb	a,b
      000431 40 03            [24]  582 	jc	00127$
      000433 02 04 D1         [24]  583 	ljmp	00105$
      000436                        584 00127$:
                                    585 ;	getput.c:22: rec = getchar();
      000436 C0 07            [24]  586 	push	ar7
      000438 C0 06            [24]  587 	push	ar6
      00043A 12 07 5E         [24]  588 	lcall	_getchar
      00043D AC 82            [24]  589 	mov	r4,dpl
      00043F AD 83            [24]  590 	mov	r5,dph
      000441 D0 06            [24]  591 	pop	ar6
      000443 D0 07            [24]  592 	pop	ar7
                                    593 ;	getput.c:24: if (rec <= 0x39 && rec >= 0x30)
      000445 C3               [12]  594 	clr	c
      000446 74 39            [12]  595 	mov	a,#0x39
      000448 9C               [12]  596 	subb	a,r4
      000449 74 80            [12]  597 	mov	a,#(0x00 ^ 0x80)
      00044B 8D F0            [24]  598 	mov	b,r5
      00044D 63 F0 80         [24]  599 	xrl	b,#0x80
      000450 95 F0            [12]  600 	subb	a,b
      000452 40 5C            [24]  601 	jc	00102$
      000454 EC               [12]  602 	mov	a,r4
      000455 94 30            [12]  603 	subb	a,#0x30
      000457 ED               [12]  604 	mov	a,r5
      000458 64 80            [12]  605 	xrl	a,#0x80
      00045A 94 80            [12]  606 	subb	a,#0x80
      00045C 40 52            [24]  607 	jc	00102$
                                    608 ;	getput.c:26: num += ((rec - 0x30) * get_num_helper(i - 1));
      00045E EC               [12]  609 	mov	a,r4
      00045F 24 D0            [12]  610 	add	a,#0xd0
      000461 FC               [12]  611 	mov	r4,a
      000462 ED               [12]  612 	mov	a,r5
      000463 34 FF            [12]  613 	addc	a,#0xff
      000465 FD               [12]  614 	mov	r5,a
      000466 EE               [12]  615 	mov	a,r6
      000467 24 FF            [12]  616 	add	a,#0xff
      000469 FA               [12]  617 	mov	r2,a
      00046A EF               [12]  618 	mov	a,r7
      00046B 34 FF            [12]  619 	addc	a,#0xff
      00046D FB               [12]  620 	mov	r3,a
      00046E 8A 82            [24]  621 	mov	dpl,r2
      000470 8B 83            [24]  622 	mov	dph,r3
      000472 C0 07            [24]  623 	push	ar7
      000474 C0 06            [24]  624 	push	ar6
      000476 C0 05            [24]  625 	push	ar5
      000478 C0 04            [24]  626 	push	ar4
      00047A 12 04 DD         [24]  627 	lcall	_get_num_helper
      00047D AA 82            [24]  628 	mov	r2,dpl
      00047F AB 83            [24]  629 	mov	r3,dph
      000481 D0 04            [24]  630 	pop	ar4
      000483 D0 05            [24]  631 	pop	ar5
      000485 90 15 2F         [24]  632 	mov	dptr,#__mulint_PARM_2
      000488 EA               [12]  633 	mov	a,r2
      000489 F0               [24]  634 	movx	@dptr,a
      00048A EB               [12]  635 	mov	a,r3
      00048B A3               [24]  636 	inc	dptr
      00048C F0               [24]  637 	movx	@dptr,a
      00048D 8C 82            [24]  638 	mov	dpl,r4
      00048F 8D 83            [24]  639 	mov	dph,r5
      000491 12 21 C0         [24]  640 	lcall	__mulint
      000494 AC 82            [24]  641 	mov	r4,dpl
      000496 AD 83            [24]  642 	mov	r5,dph
      000498 D0 06            [24]  643 	pop	ar6
      00049A D0 07            [24]  644 	pop	ar7
      00049C 90 00 0A         [24]  645 	mov	dptr,#_get_number_num_65536_49
      00049F E0               [24]  646 	movx	a,@dptr
      0004A0 FA               [12]  647 	mov	r2,a
      0004A1 A3               [24]  648 	inc	dptr
      0004A2 E0               [24]  649 	movx	a,@dptr
      0004A3 FB               [12]  650 	mov	r3,a
      0004A4 90 00 0A         [24]  651 	mov	dptr,#_get_number_num_65536_49
      0004A7 EC               [12]  652 	mov	a,r4
      0004A8 2A               [12]  653 	add	a,r2
      0004A9 F0               [24]  654 	movx	@dptr,a
      0004AA ED               [12]  655 	mov	a,r5
      0004AB 3B               [12]  656 	addc	a,r3
      0004AC A3               [24]  657 	inc	dptr
      0004AD F0               [24]  658 	movx	@dptr,a
      0004AE 80 19            [24]  659 	sjmp	00108$
      0004B0                        660 00102$:
                                    661 ;	getput.c:30: printf("ERR,Numbers ONLY!\n\r");
      0004B0 74 A0            [12]  662 	mov	a,#___str_0
      0004B2 C0 E0            [24]  663 	push	acc
      0004B4 74 2D            [12]  664 	mov	a,#(___str_0 >> 8)
      0004B6 C0 E0            [24]  665 	push	acc
      0004B8 74 80            [12]  666 	mov	a,#0x80
      0004BA C0 E0            [24]  667 	push	acc
      0004BC 12 22 2E         [24]  668 	lcall	_printf
      0004BF 15 81            [12]  669 	dec	sp
      0004C1 15 81            [12]  670 	dec	sp
      0004C3 15 81            [12]  671 	dec	sp
                                    672 ;	getput.c:31: return -1;
      0004C5 90 FF FF         [24]  673 	mov	dptr,#0xffff
      0004C8 22               [24]  674 	ret
      0004C9                        675 00108$:
                                    676 ;	getput.c:20: for (int i = total_chars; i > 0; i--)
      0004C9 1E               [12]  677 	dec	r6
      0004CA BE FF 01         [24]  678 	cjne	r6,#0xff,00130$
      0004CD 1F               [12]  679 	dec	r7
      0004CE                        680 00130$:
      0004CE 02 04 25         [24]  681 	ljmp	00107$
      0004D1                        682 00105$:
                                    683 ;	getput.c:34: return num;
      0004D1 90 00 0A         [24]  684 	mov	dptr,#_get_number_num_65536_49
      0004D4 E0               [24]  685 	movx	a,@dptr
      0004D5 FE               [12]  686 	mov	r6,a
      0004D6 A3               [24]  687 	inc	dptr
      0004D7 E0               [24]  688 	movx	a,@dptr
                                    689 ;	getput.c:35: }
      0004D8 8E 82            [24]  690 	mov	dpl,r6
      0004DA F5 83            [12]  691 	mov	dph,a
      0004DC 22               [24]  692 	ret
                                    693 ;------------------------------------------------------------
                                    694 ;Allocation info for local variables in function 'get_num_helper'
                                    695 ;------------------------------------------------------------
                                    696 ;times                     Allocated with name '_get_num_helper_times_65536_54'
                                    697 ;num                       Allocated with name '_get_num_helper_num_65536_55'
                                    698 ;i                         Allocated with name '_get_num_helper_i_131072_56'
                                    699 ;------------------------------------------------------------
                                    700 ;	getput.c:42: int get_num_helper(int times)
                                    701 ;	-----------------------------------------
                                    702 ;	 function get_num_helper
                                    703 ;	-----------------------------------------
      0004DD                        704 _get_num_helper:
      0004DD AF 83            [24]  705 	mov	r7,dph
      0004DF E5 82            [12]  706 	mov	a,dpl
      0004E1 90 00 0C         [24]  707 	mov	dptr,#_get_num_helper_times_65536_54
      0004E4 F0               [24]  708 	movx	@dptr,a
      0004E5 EF               [12]  709 	mov	a,r7
      0004E6 A3               [24]  710 	inc	dptr
      0004E7 F0               [24]  711 	movx	@dptr,a
                                    712 ;	getput.c:44: int num = 1;
      0004E8 90 00 0E         [24]  713 	mov	dptr,#_get_num_helper_num_65536_55
      0004EB 74 01            [12]  714 	mov	a,#0x01
      0004ED F0               [24]  715 	movx	@dptr,a
      0004EE E4               [12]  716 	clr	a
      0004EF A3               [24]  717 	inc	dptr
      0004F0 F0               [24]  718 	movx	@dptr,a
                                    719 ;	getput.c:46: for (int i = 0; i < times; i++)
      0004F1 90 00 0C         [24]  720 	mov	dptr,#_get_num_helper_times_65536_54
      0004F4 E0               [24]  721 	movx	a,@dptr
      0004F5 FE               [12]  722 	mov	r6,a
      0004F6 A3               [24]  723 	inc	dptr
      0004F7 E0               [24]  724 	movx	a,@dptr
      0004F8 FF               [12]  725 	mov	r7,a
      0004F9 7C 00            [12]  726 	mov	r4,#0x00
      0004FB 7D 00            [12]  727 	mov	r5,#0x00
      0004FD                        728 00106$:
      0004FD C3               [12]  729 	clr	c
      0004FE EC               [12]  730 	mov	a,r4
      0004FF 9E               [12]  731 	subb	a,r6
      000500 ED               [12]  732 	mov	a,r5
      000501 64 80            [12]  733 	xrl	a,#0x80
      000503 8F F0            [24]  734 	mov	b,r7
      000505 63 F0 80         [24]  735 	xrl	b,#0x80
      000508 95 F0            [12]  736 	subb	a,b
      00050A 50 3A            [24]  737 	jnc	00101$
                                    738 ;	getput.c:48: num = num * 10;
      00050C 90 00 0E         [24]  739 	mov	dptr,#_get_num_helper_num_65536_55
      00050F E0               [24]  740 	movx	a,@dptr
      000510 FA               [12]  741 	mov	r2,a
      000511 A3               [24]  742 	inc	dptr
      000512 E0               [24]  743 	movx	a,@dptr
      000513 FB               [12]  744 	mov	r3,a
      000514 90 15 2F         [24]  745 	mov	dptr,#__mulint_PARM_2
      000517 EA               [12]  746 	mov	a,r2
      000518 F0               [24]  747 	movx	@dptr,a
      000519 EB               [12]  748 	mov	a,r3
      00051A A3               [24]  749 	inc	dptr
      00051B F0               [24]  750 	movx	@dptr,a
      00051C 90 00 0A         [24]  751 	mov	dptr,#0x000a
      00051F C0 07            [24]  752 	push	ar7
      000521 C0 06            [24]  753 	push	ar6
      000523 C0 05            [24]  754 	push	ar5
      000525 C0 04            [24]  755 	push	ar4
      000527 12 21 C0         [24]  756 	lcall	__mulint
      00052A E5 82            [12]  757 	mov	a,dpl
      00052C 85 83 F0         [24]  758 	mov	b,dph
      00052F D0 04            [24]  759 	pop	ar4
      000531 D0 05            [24]  760 	pop	ar5
      000533 D0 06            [24]  761 	pop	ar6
      000535 D0 07            [24]  762 	pop	ar7
      000537 90 00 0E         [24]  763 	mov	dptr,#_get_num_helper_num_65536_55
      00053A F0               [24]  764 	movx	@dptr,a
      00053B E5 F0            [12]  765 	mov	a,b
      00053D A3               [24]  766 	inc	dptr
      00053E F0               [24]  767 	movx	@dptr,a
                                    768 ;	getput.c:46: for (int i = 0; i < times; i++)
      00053F 0C               [12]  769 	inc	r4
      000540 BC 00 BA         [24]  770 	cjne	r4,#0x00,00106$
      000543 0D               [12]  771 	inc	r5
      000544 80 B7            [24]  772 	sjmp	00106$
      000546                        773 00101$:
                                    774 ;	getput.c:50: if (times == 0)
      000546 EE               [12]  775 	mov	a,r6
      000547 4F               [12]  776 	orl	a,r7
      000548 70 04            [24]  777 	jnz	00103$
                                    778 ;	getput.c:51: return 1;
      00054A 90 00 01         [24]  779 	mov	dptr,#0x0001
      00054D 22               [24]  780 	ret
      00054E                        781 00103$:
                                    782 ;	getput.c:53: return num;
      00054E 90 00 0E         [24]  783 	mov	dptr,#_get_num_helper_num_65536_55
      000551 E0               [24]  784 	movx	a,@dptr
      000552 FE               [12]  785 	mov	r6,a
      000553 A3               [24]  786 	inc	dptr
      000554 E0               [24]  787 	movx	a,@dptr
                                    788 ;	getput.c:54: }
      000555 8E 82            [24]  789 	mov	dpl,r6
      000557 F5 83            [12]  790 	mov	dph,a
      000559 22               [24]  791 	ret
                                    792 ;------------------------------------------------------------
                                    793 ;Allocation info for local variables in function 'get_number_hex'
                                    794 ;------------------------------------------------------------
                                    795 ;total_chars               Allocated with name '_get_number_hex_total_chars_65536_58'
                                    796 ;rec                       Allocated with name '_get_number_hex_rec_65536_59'
                                    797 ;num                       Allocated with name '_get_number_hex_num_65536_59'
                                    798 ;i                         Allocated with name '_get_number_hex_i_131072_60'
                                    799 ;------------------------------------------------------------
                                    800 ;	getput.c:62: int get_number_hex(int total_chars)
                                    801 ;	-----------------------------------------
                                    802 ;	 function get_number_hex
                                    803 ;	-----------------------------------------
      00055A                        804 _get_number_hex:
      00055A AF 83            [24]  805 	mov	r7,dph
      00055C E5 82            [12]  806 	mov	a,dpl
      00055E 90 00 10         [24]  807 	mov	dptr,#_get_number_hex_total_chars_65536_58
      000561 F0               [24]  808 	movx	@dptr,a
      000562 EF               [12]  809 	mov	a,r7
      000563 A3               [24]  810 	inc	dptr
      000564 F0               [24]  811 	movx	@dptr,a
                                    812 ;	getput.c:65: int num = 0;
      000565 90 00 14         [24]  813 	mov	dptr,#_get_number_hex_num_65536_59
      000568 E4               [12]  814 	clr	a
      000569 F0               [24]  815 	movx	@dptr,a
      00056A A3               [24]  816 	inc	dptr
      00056B F0               [24]  817 	movx	@dptr,a
                                    818 ;	getput.c:66: for (int i = total_chars; i > 0; i--)
      00056C 90 00 10         [24]  819 	mov	dptr,#_get_number_hex_total_chars_65536_58
      00056F E0               [24]  820 	movx	a,@dptr
      000570 FE               [12]  821 	mov	r6,a
      000571 A3               [24]  822 	inc	dptr
      000572 E0               [24]  823 	movx	a,@dptr
      000573 FF               [12]  824 	mov	r7,a
      000574                        825 00114$:
      000574 C3               [12]  826 	clr	c
      000575 E4               [12]  827 	clr	a
      000576 9E               [12]  828 	subb	a,r6
      000577 74 80            [12]  829 	mov	a,#(0x00 ^ 0x80)
      000579 8F F0            [24]  830 	mov	b,r7
      00057B 63 F0 80         [24]  831 	xrl	b,#0x80
      00057E 95 F0            [12]  832 	subb	a,b
      000580 40 03            [24]  833 	jc	00150$
      000582 02 06 CD         [24]  834 	ljmp	00112$
      000585                        835 00150$:
                                    836 ;	getput.c:68: rec = getchar();
      000585 C0 07            [24]  837 	push	ar7
      000587 C0 06            [24]  838 	push	ar6
      000589 12 07 5E         [24]  839 	lcall	_getchar
      00058C AC 82            [24]  840 	mov	r4,dpl
      00058E AD 83            [24]  841 	mov	r5,dph
      000590 D0 06            [24]  842 	pop	ar6
      000592 D0 07            [24]  843 	pop	ar7
      000594 90 00 12         [24]  844 	mov	dptr,#_get_number_hex_rec_65536_59
      000597 EC               [12]  845 	mov	a,r4
      000598 F0               [24]  846 	movx	@dptr,a
      000599 ED               [12]  847 	mov	a,r5
      00059A A3               [24]  848 	inc	dptr
      00059B F0               [24]  849 	movx	@dptr,a
                                    850 ;	getput.c:69: if (rec <= 0x66 && rec >= 0x61)
      00059C C3               [12]  851 	clr	c
      00059D 74 66            [12]  852 	mov	a,#0x66
      00059F 9C               [12]  853 	subb	a,r4
      0005A0 74 80            [12]  854 	mov	a,#(0x00 ^ 0x80)
      0005A2 8D F0            [24]  855 	mov	b,r5
      0005A4 63 F0 80         [24]  856 	xrl	b,#0x80
      0005A7 95 F0            [12]  857 	subb	a,b
      0005A9 40 1A            [24]  858 	jc	00102$
      0005AB EC               [12]  859 	mov	a,r4
      0005AC 94 61            [12]  860 	subb	a,#0x61
      0005AE ED               [12]  861 	mov	a,r5
      0005AF 64 80            [12]  862 	xrl	a,#0x80
      0005B1 94 80            [12]  863 	subb	a,#0x80
      0005B3 40 10            [24]  864 	jc	00102$
                                    865 ;	getput.c:70: rec -= 0x20;
      0005B5 EC               [12]  866 	mov	a,r4
      0005B6 24 E0            [12]  867 	add	a,#0xe0
      0005B8 FC               [12]  868 	mov	r4,a
      0005B9 ED               [12]  869 	mov	a,r5
      0005BA 34 FF            [12]  870 	addc	a,#0xff
      0005BC FD               [12]  871 	mov	r5,a
      0005BD 90 00 12         [24]  872 	mov	dptr,#_get_number_hex_rec_65536_59
      0005C0 EC               [12]  873 	mov	a,r4
      0005C1 F0               [24]  874 	movx	@dptr,a
      0005C2 ED               [12]  875 	mov	a,r5
      0005C3 A3               [24]  876 	inc	dptr
      0005C4 F0               [24]  877 	movx	@dptr,a
      0005C5                        878 00102$:
                                    879 ;	getput.c:72: if ((rec <= 0x39 && rec >= 0x30))
      0005C5 90 00 12         [24]  880 	mov	dptr,#_get_number_hex_rec_65536_59
      0005C8 E0               [24]  881 	movx	a,@dptr
      0005C9 FC               [12]  882 	mov	r4,a
      0005CA A3               [24]  883 	inc	dptr
      0005CB E0               [24]  884 	movx	a,@dptr
      0005CC FD               [12]  885 	mov	r5,a
      0005CD C3               [12]  886 	clr	c
      0005CE 74 39            [12]  887 	mov	a,#0x39
      0005D0 9C               [12]  888 	subb	a,r4
      0005D1 74 80            [12]  889 	mov	a,#(0x00 ^ 0x80)
      0005D3 8D F0            [24]  890 	mov	b,r5
      0005D5 63 F0 80         [24]  891 	xrl	b,#0x80
      0005D8 95 F0            [12]  892 	subb	a,b
      0005DA 40 5D            [24]  893 	jc	00109$
      0005DC EC               [12]  894 	mov	a,r4
      0005DD 94 30            [12]  895 	subb	a,#0x30
      0005DF ED               [12]  896 	mov	a,r5
      0005E0 64 80            [12]  897 	xrl	a,#0x80
      0005E2 94 80            [12]  898 	subb	a,#0x80
      0005E4 40 53            [24]  899 	jc	00109$
                                    900 ;	getput.c:74: num += ((rec - 0x30) * get_num_helper_hex(i - 1));
      0005E6 EC               [12]  901 	mov	a,r4
      0005E7 24 D0            [12]  902 	add	a,#0xd0
      0005E9 FC               [12]  903 	mov	r4,a
      0005EA ED               [12]  904 	mov	a,r5
      0005EB 34 FF            [12]  905 	addc	a,#0xff
      0005ED FD               [12]  906 	mov	r5,a
      0005EE EE               [12]  907 	mov	a,r6
      0005EF 24 FF            [12]  908 	add	a,#0xff
      0005F1 FA               [12]  909 	mov	r2,a
      0005F2 EF               [12]  910 	mov	a,r7
      0005F3 34 FF            [12]  911 	addc	a,#0xff
      0005F5 FB               [12]  912 	mov	r3,a
      0005F6 8A 82            [24]  913 	mov	dpl,r2
      0005F8 8B 83            [24]  914 	mov	dph,r3
      0005FA C0 07            [24]  915 	push	ar7
      0005FC C0 06            [24]  916 	push	ar6
      0005FE C0 05            [24]  917 	push	ar5
      000600 C0 04            [24]  918 	push	ar4
      000602 12 06 D9         [24]  919 	lcall	_get_num_helper_hex
      000605 AA 82            [24]  920 	mov	r2,dpl
      000607 AB 83            [24]  921 	mov	r3,dph
      000609 D0 04            [24]  922 	pop	ar4
      00060B D0 05            [24]  923 	pop	ar5
      00060D 90 15 2F         [24]  924 	mov	dptr,#__mulint_PARM_2
      000610 EA               [12]  925 	mov	a,r2
      000611 F0               [24]  926 	movx	@dptr,a
      000612 EB               [12]  927 	mov	a,r3
      000613 A3               [24]  928 	inc	dptr
      000614 F0               [24]  929 	movx	@dptr,a
      000615 8C 82            [24]  930 	mov	dpl,r4
      000617 8D 83            [24]  931 	mov	dph,r5
      000619 12 21 C0         [24]  932 	lcall	__mulint
      00061C AC 82            [24]  933 	mov	r4,dpl
      00061E AD 83            [24]  934 	mov	r5,dph
      000620 D0 06            [24]  935 	pop	ar6
      000622 D0 07            [24]  936 	pop	ar7
      000624 90 00 14         [24]  937 	mov	dptr,#_get_number_hex_num_65536_59
      000627 E0               [24]  938 	movx	a,@dptr
      000628 FA               [12]  939 	mov	r2,a
      000629 A3               [24]  940 	inc	dptr
      00062A E0               [24]  941 	movx	a,@dptr
      00062B FB               [12]  942 	mov	r3,a
      00062C 90 00 14         [24]  943 	mov	dptr,#_get_number_hex_num_65536_59
      00062F EC               [12]  944 	mov	a,r4
      000630 2A               [12]  945 	add	a,r2
      000631 F0               [24]  946 	movx	@dptr,a
      000632 ED               [12]  947 	mov	a,r5
      000633 3B               [12]  948 	addc	a,r3
      000634 A3               [24]  949 	inc	dptr
      000635 F0               [24]  950 	movx	@dptr,a
      000636 02 06 C5         [24]  951 	ljmp	00115$
      000639                        952 00109$:
                                    953 ;	getput.c:76: else if (rec <= 0x46 && rec >= 0x41){
      000639 90 00 12         [24]  954 	mov	dptr,#_get_number_hex_rec_65536_59
      00063C E0               [24]  955 	movx	a,@dptr
      00063D FC               [12]  956 	mov	r4,a
      00063E A3               [24]  957 	inc	dptr
      00063F E0               [24]  958 	movx	a,@dptr
      000640 FD               [12]  959 	mov	r5,a
      000641 C3               [12]  960 	clr	c
      000642 74 46            [12]  961 	mov	a,#0x46
      000644 9C               [12]  962 	subb	a,r4
      000645 74 80            [12]  963 	mov	a,#(0x00 ^ 0x80)
      000647 8D F0            [24]  964 	mov	b,r5
      000649 63 F0 80         [24]  965 	xrl	b,#0x80
      00064C 95 F0            [12]  966 	subb	a,b
      00064E 40 5C            [24]  967 	jc	00105$
      000650 EC               [12]  968 	mov	a,r4
      000651 94 41            [12]  969 	subb	a,#0x41
      000653 ED               [12]  970 	mov	a,r5
      000654 64 80            [12]  971 	xrl	a,#0x80
      000656 94 80            [12]  972 	subb	a,#0x80
      000658 40 52            [24]  973 	jc	00105$
                                    974 ;	getput.c:77: num += ((rec - 0x37) * get_num_helper_hex(i - 1));
      00065A EC               [12]  975 	mov	a,r4
      00065B 24 C9            [12]  976 	add	a,#0xc9
      00065D FC               [12]  977 	mov	r4,a
      00065E ED               [12]  978 	mov	a,r5
      00065F 34 FF            [12]  979 	addc	a,#0xff
      000661 FD               [12]  980 	mov	r5,a
      000662 EE               [12]  981 	mov	a,r6
      000663 24 FF            [12]  982 	add	a,#0xff
      000665 FA               [12]  983 	mov	r2,a
      000666 EF               [12]  984 	mov	a,r7
      000667 34 FF            [12]  985 	addc	a,#0xff
      000669 FB               [12]  986 	mov	r3,a
      00066A 8A 82            [24]  987 	mov	dpl,r2
      00066C 8B 83            [24]  988 	mov	dph,r3
      00066E C0 07            [24]  989 	push	ar7
      000670 C0 06            [24]  990 	push	ar6
      000672 C0 05            [24]  991 	push	ar5
      000674 C0 04            [24]  992 	push	ar4
      000676 12 06 D9         [24]  993 	lcall	_get_num_helper_hex
      000679 AA 82            [24]  994 	mov	r2,dpl
      00067B AB 83            [24]  995 	mov	r3,dph
      00067D D0 04            [24]  996 	pop	ar4
      00067F D0 05            [24]  997 	pop	ar5
      000681 90 15 2F         [24]  998 	mov	dptr,#__mulint_PARM_2
      000684 EA               [12]  999 	mov	a,r2
      000685 F0               [24] 1000 	movx	@dptr,a
      000686 EB               [12] 1001 	mov	a,r3
      000687 A3               [24] 1002 	inc	dptr
      000688 F0               [24] 1003 	movx	@dptr,a
      000689 8C 82            [24] 1004 	mov	dpl,r4
      00068B 8D 83            [24] 1005 	mov	dph,r5
      00068D 12 21 C0         [24] 1006 	lcall	__mulint
      000690 AC 82            [24] 1007 	mov	r4,dpl
      000692 AD 83            [24] 1008 	mov	r5,dph
      000694 D0 06            [24] 1009 	pop	ar6
      000696 D0 07            [24] 1010 	pop	ar7
      000698 90 00 14         [24] 1011 	mov	dptr,#_get_number_hex_num_65536_59
      00069B E0               [24] 1012 	movx	a,@dptr
      00069C FA               [12] 1013 	mov	r2,a
      00069D A3               [24] 1014 	inc	dptr
      00069E E0               [24] 1015 	movx	a,@dptr
      00069F FB               [12] 1016 	mov	r3,a
      0006A0 90 00 14         [24] 1017 	mov	dptr,#_get_number_hex_num_65536_59
      0006A3 EC               [12] 1018 	mov	a,r4
      0006A4 2A               [12] 1019 	add	a,r2
      0006A5 F0               [24] 1020 	movx	@dptr,a
      0006A6 ED               [12] 1021 	mov	a,r5
      0006A7 3B               [12] 1022 	addc	a,r3
      0006A8 A3               [24] 1023 	inc	dptr
      0006A9 F0               [24] 1024 	movx	@dptr,a
      0006AA 80 19            [24] 1025 	sjmp	00115$
      0006AC                       1026 00105$:
                                   1027 ;	getput.c:81: printf("ERR, Hex Numbers ONLY!\n\r");
      0006AC 74 B4            [12] 1028 	mov	a,#___str_1
      0006AE C0 E0            [24] 1029 	push	acc
      0006B0 74 2D            [12] 1030 	mov	a,#(___str_1 >> 8)
      0006B2 C0 E0            [24] 1031 	push	acc
      0006B4 74 80            [12] 1032 	mov	a,#0x80
      0006B6 C0 E0            [24] 1033 	push	acc
      0006B8 12 22 2E         [24] 1034 	lcall	_printf
      0006BB 15 81            [12] 1035 	dec	sp
      0006BD 15 81            [12] 1036 	dec	sp
      0006BF 15 81            [12] 1037 	dec	sp
                                   1038 ;	getput.c:82: return -1;
      0006C1 90 FF FF         [24] 1039 	mov	dptr,#0xffff
      0006C4 22               [24] 1040 	ret
      0006C5                       1041 00115$:
                                   1042 ;	getput.c:66: for (int i = total_chars; i > 0; i--)
      0006C5 1E               [12] 1043 	dec	r6
      0006C6 BE FF 01         [24] 1044 	cjne	r6,#0xff,00157$
      0006C9 1F               [12] 1045 	dec	r7
      0006CA                       1046 00157$:
      0006CA 02 05 74         [24] 1047 	ljmp	00114$
      0006CD                       1048 00112$:
                                   1049 ;	getput.c:85: return num;
      0006CD 90 00 14         [24] 1050 	mov	dptr,#_get_number_hex_num_65536_59
      0006D0 E0               [24] 1051 	movx	a,@dptr
      0006D1 FE               [12] 1052 	mov	r6,a
      0006D2 A3               [24] 1053 	inc	dptr
      0006D3 E0               [24] 1054 	movx	a,@dptr
                                   1055 ;	getput.c:86: }
      0006D4 8E 82            [24] 1056 	mov	dpl,r6
      0006D6 F5 83            [12] 1057 	mov	dph,a
      0006D8 22               [24] 1058 	ret
                                   1059 ;------------------------------------------------------------
                                   1060 ;Allocation info for local variables in function 'get_num_helper_hex'
                                   1061 ;------------------------------------------------------------
                                   1062 ;times                     Allocated with name '_get_num_helper_hex_times_65536_65'
                                   1063 ;num                       Allocated with name '_get_num_helper_hex_num_65536_66'
                                   1064 ;i                         Allocated with name '_get_num_helper_hex_i_131072_67'
                                   1065 ;------------------------------------------------------------
                                   1066 ;	getput.c:93: int get_num_helper_hex(int times)
                                   1067 ;	-----------------------------------------
                                   1068 ;	 function get_num_helper_hex
                                   1069 ;	-----------------------------------------
      0006D9                       1070 _get_num_helper_hex:
      0006D9 AF 83            [24] 1071 	mov	r7,dph
      0006DB E5 82            [12] 1072 	mov	a,dpl
      0006DD 90 00 16         [24] 1073 	mov	dptr,#_get_num_helper_hex_times_65536_65
      0006E0 F0               [24] 1074 	movx	@dptr,a
      0006E1 EF               [12] 1075 	mov	a,r7
      0006E2 A3               [24] 1076 	inc	dptr
      0006E3 F0               [24] 1077 	movx	@dptr,a
                                   1078 ;	getput.c:95: int num = 1;
      0006E4 90 00 18         [24] 1079 	mov	dptr,#_get_num_helper_hex_num_65536_66
      0006E7 74 01            [12] 1080 	mov	a,#0x01
      0006E9 F0               [24] 1081 	movx	@dptr,a
      0006EA E4               [12] 1082 	clr	a
      0006EB A3               [24] 1083 	inc	dptr
      0006EC F0               [24] 1084 	movx	@dptr,a
                                   1085 ;	getput.c:97: for (int i = 0; i < times; i++)
      0006ED 90 00 16         [24] 1086 	mov	dptr,#_get_num_helper_hex_times_65536_65
      0006F0 E0               [24] 1087 	movx	a,@dptr
      0006F1 FE               [12] 1088 	mov	r6,a
      0006F2 A3               [24] 1089 	inc	dptr
      0006F3 E0               [24] 1090 	movx	a,@dptr
      0006F4 FF               [12] 1091 	mov	r7,a
      0006F5 7C 00            [12] 1092 	mov	r4,#0x00
      0006F7 7D 00            [12] 1093 	mov	r5,#0x00
      0006F9                       1094 00106$:
      0006F9 C3               [12] 1095 	clr	c
      0006FA EC               [12] 1096 	mov	a,r4
      0006FB 9E               [12] 1097 	subb	a,r6
      0006FC ED               [12] 1098 	mov	a,r5
      0006FD 64 80            [12] 1099 	xrl	a,#0x80
      0006FF 8F F0            [24] 1100 	mov	b,r7
      000701 63 F0 80         [24] 1101 	xrl	b,#0x80
      000704 95 F0            [12] 1102 	subb	a,b
      000706 50 23            [24] 1103 	jnc	00101$
                                   1104 ;	getput.c:99: num = num * 16;
      000708 90 00 18         [24] 1105 	mov	dptr,#_get_num_helper_hex_num_65536_66
      00070B E0               [24] 1106 	movx	a,@dptr
      00070C FA               [12] 1107 	mov	r2,a
      00070D A3               [24] 1108 	inc	dptr
      00070E E0               [24] 1109 	movx	a,@dptr
      00070F C4               [12] 1110 	swap	a
      000710 54 F0            [12] 1111 	anl	a,#0xf0
      000712 CA               [12] 1112 	xch	a,r2
      000713 C4               [12] 1113 	swap	a
      000714 CA               [12] 1114 	xch	a,r2
      000715 6A               [12] 1115 	xrl	a,r2
      000716 CA               [12] 1116 	xch	a,r2
      000717 54 F0            [12] 1117 	anl	a,#0xf0
      000719 CA               [12] 1118 	xch	a,r2
      00071A 6A               [12] 1119 	xrl	a,r2
      00071B FB               [12] 1120 	mov	r3,a
      00071C 90 00 18         [24] 1121 	mov	dptr,#_get_num_helper_hex_num_65536_66
      00071F EA               [12] 1122 	mov	a,r2
      000720 F0               [24] 1123 	movx	@dptr,a
      000721 EB               [12] 1124 	mov	a,r3
      000722 A3               [24] 1125 	inc	dptr
      000723 F0               [24] 1126 	movx	@dptr,a
                                   1127 ;	getput.c:97: for (int i = 0; i < times; i++)
      000724 0C               [12] 1128 	inc	r4
      000725 BC 00 D1         [24] 1129 	cjne	r4,#0x00,00106$
      000728 0D               [12] 1130 	inc	r5
      000729 80 CE            [24] 1131 	sjmp	00106$
      00072B                       1132 00101$:
                                   1133 ;	getput.c:101: if (times == 0)
      00072B EE               [12] 1134 	mov	a,r6
      00072C 4F               [12] 1135 	orl	a,r7
      00072D 70 04            [24] 1136 	jnz	00103$
                                   1137 ;	getput.c:102: return 1;
      00072F 90 00 01         [24] 1138 	mov	dptr,#0x0001
      000732 22               [24] 1139 	ret
      000733                       1140 00103$:
                                   1141 ;	getput.c:104: return num;
      000733 90 00 18         [24] 1142 	mov	dptr,#_get_num_helper_hex_num_65536_66
      000736 E0               [24] 1143 	movx	a,@dptr
      000737 FE               [12] 1144 	mov	r6,a
      000738 A3               [24] 1145 	inc	dptr
      000739 E0               [24] 1146 	movx	a,@dptr
                                   1147 ;	getput.c:105: }
      00073A 8E 82            [24] 1148 	mov	dpl,r6
      00073C F5 83            [12] 1149 	mov	dph,a
      00073E 22               [24] 1150 	ret
                                   1151 ;------------------------------------------------------------
                                   1152 ;Allocation info for local variables in function 'putchar'
                                   1153 ;------------------------------------------------------------
                                   1154 ;c                         Allocated with name '_putchar_c_65536_69'
                                   1155 ;------------------------------------------------------------
                                   1156 ;	getput.c:114: int putchar(int c)
                                   1157 ;	-----------------------------------------
                                   1158 ;	 function putchar
                                   1159 ;	-----------------------------------------
      00073F                       1160 _putchar:
      00073F AF 83            [24] 1161 	mov	r7,dph
      000741 E5 82            [12] 1162 	mov	a,dpl
      000743 90 00 1A         [24] 1163 	mov	dptr,#_putchar_c_65536_69
      000746 F0               [24] 1164 	movx	@dptr,a
      000747 EF               [12] 1165 	mov	a,r7
      000748 A3               [24] 1166 	inc	dptr
      000749 F0               [24] 1167 	movx	@dptr,a
                                   1168 ;	getput.c:116: while ((SCON & 0x02) == 0)
      00074A                       1169 00101$:
      00074A E5 98            [12] 1170 	mov	a,_SCON
      00074C 30 E1 FB         [24] 1171 	jnb	acc.1,00101$
                                   1172 ;	getput.c:118: TI = 0;
                                   1173 ;	assignBit
      00074F C2 99            [12] 1174 	clr	_TI
                                   1175 ;	getput.c:119: SBUF = c;
      000751 90 00 1A         [24] 1176 	mov	dptr,#_putchar_c_65536_69
      000754 E0               [24] 1177 	movx	a,@dptr
      000755 FE               [12] 1178 	mov	r6,a
      000756 A3               [24] 1179 	inc	dptr
      000757 E0               [24] 1180 	movx	a,@dptr
      000758 8E 99            [24] 1181 	mov	_SBUF,r6
                                   1182 ;	getput.c:120: return 0;
      00075A 90 00 00         [24] 1183 	mov	dptr,#0x0000
                                   1184 ;	getput.c:121: }
      00075D 22               [24] 1185 	ret
                                   1186 ;------------------------------------------------------------
                                   1187 ;Allocation info for local variables in function 'getchar'
                                   1188 ;------------------------------------------------------------
                                   1189 ;	getput.c:128: int getchar()
                                   1190 ;	-----------------------------------------
                                   1191 ;	 function getchar
                                   1192 ;	-----------------------------------------
      00075E                       1193 _getchar:
                                   1194 ;	getput.c:130: while (RI == 0)
      00075E                       1195 00101$:
                                   1196 ;	getput.c:132: RI = 0;
                                   1197 ;	assignBit
      00075E 10 98 02         [24] 1198 	jbc	_RI,00140$
      000761 80 FB            [24] 1199 	sjmp	00101$
      000763                       1200 00140$:
                                   1201 ;	getput.c:134: if (SBUF != 0x3F && SBUF != 0x3D && SBUF != 0x40 && SBUF != 0x2B && SBUF != 0x2D)
      000763 74 3F            [12] 1202 	mov	a,#0x3f
      000765 B5 99 02         [24] 1203 	cjne	a,_SBUF,00141$
      000768 80 27            [24] 1204 	sjmp	00105$
      00076A                       1205 00141$:
      00076A 74 3D            [12] 1206 	mov	a,#0x3d
      00076C B5 99 02         [24] 1207 	cjne	a,_SBUF,00142$
      00076F 80 20            [24] 1208 	sjmp	00105$
      000771                       1209 00142$:
      000771 74 40            [12] 1210 	mov	a,#0x40
      000773 B5 99 02         [24] 1211 	cjne	a,_SBUF,00143$
      000776 80 19            [24] 1212 	sjmp	00105$
      000778                       1213 00143$:
      000778 74 2B            [12] 1214 	mov	a,#0x2b
      00077A B5 99 02         [24] 1215 	cjne	a,_SBUF,00144$
      00077D 80 12            [24] 1216 	sjmp	00105$
      00077F                       1217 00144$:
      00077F 74 2D            [12] 1218 	mov	a,#0x2d
      000781 B5 99 02         [24] 1219 	cjne	a,_SBUF,00145$
      000784 80 0B            [24] 1220 	sjmp	00105$
      000786                       1221 00145$:
                                   1222 ;	getput.c:135: putchar(SBUF);
      000786 AE 99            [24] 1223 	mov	r6,_SBUF
      000788 7F 00            [12] 1224 	mov	r7,#0x00
      00078A 8E 82            [24] 1225 	mov	dpl,r6
      00078C 8F 83            [24] 1226 	mov	dph,r7
      00078E 12 07 3F         [24] 1227 	lcall	_putchar
      000791                       1228 00105$:
                                   1229 ;	getput.c:136: return SBUF;
      000791 AE 99            [24] 1230 	mov	r6,_SBUF
      000793 7F 00            [12] 1231 	mov	r7,#0x00
      000795 8E 82            [24] 1232 	mov	dpl,r6
      000797 8F 83            [24] 1233 	mov	dph,r7
                                   1234 ;	getput.c:137: }
      000799 22               [24] 1235 	ret
                                   1236 	.area CSEG    (CODE)
                                   1237 	.area CONST   (CODE)
                                   1238 	.area CONST   (CODE)
      002DA0                       1239 ___str_0:
      002DA0 45 52 52 2C 4E 75 6D  1240 	.ascii "ERR,Numbers ONLY!"
             62 65 72 73 20 4F 4E
             4C 59 21
      002DB1 0A                    1241 	.db 0x0a
      002DB2 0D                    1242 	.db 0x0d
      002DB3 00                    1243 	.db 0x00
                                   1244 	.area CSEG    (CODE)
                                   1245 	.area CONST   (CODE)
      002DB4                       1246 ___str_1:
      002DB4 45 52 52 2C 20 48 65  1247 	.ascii "ERR, Hex Numbers ONLY!"
             78 20 4E 75 6D 62 65
             72 73 20 4F 4E 4C 59
             21
      002DCA 0A                    1248 	.db 0x0a
      002DCB 0D                    1249 	.db 0x0d
      002DCC 00                    1250 	.db 0x00
                                   1251 	.area CSEG    (CODE)
                                   1252 	.area XINIT   (CODE)
                                   1253 	.area CABS    (ABS,CODE)
