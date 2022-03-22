                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module i2c
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _i2c_read_val
                                     12 	.globl _i2c_read_init
                                     13 	.globl _i2c_write_val
                                     14 	.globl _i2c_addr
                                     15 	.globl _i2c_write_init
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
                                    150 	.globl _TMOD
                                    151 	.globl _TL1
                                    152 	.globl _TL0
                                    153 	.globl _TH1
                                    154 	.globl _TH0
                                    155 	.globl _TCON
                                    156 	.globl _SP
                                    157 	.globl _SCON
                                    158 	.globl _SBUF0
                                    159 	.globl _SBUF
                                    160 	.globl _PSW
                                    161 	.globl _PCON
                                    162 	.globl _P3
                                    163 	.globl _P2
                                    164 	.globl _P1
                                    165 	.globl _P0
                                    166 	.globl _IP
                                    167 	.globl _IE
                                    168 	.globl _DP0L
                                    169 	.globl _DPL
                                    170 	.globl _DP0H
                                    171 	.globl _DPH
                                    172 	.globl _B
                                    173 	.globl _ACC
                                    174 	.globl _EECON
                                    175 	.globl _KBF
                                    176 	.globl _KBE
                                    177 	.globl _KBLS
                                    178 	.globl _BRL
                                    179 	.globl _BDRCON
                                    180 	.globl _T2MOD
                                    181 	.globl _SPDAT
                                    182 	.globl _SPSTA
                                    183 	.globl _SPCON
                                    184 	.globl _SADEN
                                    185 	.globl _SADDR
                                    186 	.globl _WDTPRG
                                    187 	.globl _WDTRST
                                    188 	.globl _P5
                                    189 	.globl _P4
                                    190 	.globl _IPH1
                                    191 	.globl _IPL1
                                    192 	.globl _IPH0
                                    193 	.globl _IPL0
                                    194 	.globl _IEN1
                                    195 	.globl _IEN0
                                    196 	.globl _CMOD
                                    197 	.globl _CL
                                    198 	.globl _CH
                                    199 	.globl _CCON
                                    200 	.globl _CCAPM4
                                    201 	.globl _CCAPM3
                                    202 	.globl _CCAPM2
                                    203 	.globl _CCAPM1
                                    204 	.globl _CCAPM0
                                    205 	.globl _CCAP4L
                                    206 	.globl _CCAP3L
                                    207 	.globl _CCAP2L
                                    208 	.globl _CCAP1L
                                    209 	.globl _CCAP0L
                                    210 	.globl _CCAP4H
                                    211 	.globl _CCAP3H
                                    212 	.globl _CCAP2H
                                    213 	.globl _CCAP1H
                                    214 	.globl _CCAP0H
                                    215 	.globl _CKCON1
                                    216 	.globl _CKCON0
                                    217 	.globl _CKRL
                                    218 	.globl _AUXR1
                                    219 	.globl _AUXR
                                    220 	.globl _TH2
                                    221 	.globl _TL2
                                    222 	.globl _RCAP2H
                                    223 	.globl _RCAP2L
                                    224 	.globl _T2CON
                                    225 	.globl _i2c_read_random_PARM_2
                                    226 	.globl _i2c_write_random_PARM_3
                                    227 	.globl _i2c_write_random_PARM_2
                                    228 	.globl _i2c_write_random
                                    229 	.globl _i2c_read_random
                                    230 	.globl _i2c_activity
                                    231 ;--------------------------------------------------------
                                    232 ; special function registers
                                    233 ;--------------------------------------------------------
                                    234 	.area RSEG    (ABS,DATA)
      000000                        235 	.org 0x0000
                           0000C8   236 _T2CON	=	0x00c8
                           0000CA   237 _RCAP2L	=	0x00ca
                           0000CB   238 _RCAP2H	=	0x00cb
                           0000CC   239 _TL2	=	0x00cc
                           0000CD   240 _TH2	=	0x00cd
                           00008E   241 _AUXR	=	0x008e
                           0000A2   242 _AUXR1	=	0x00a2
                           000097   243 _CKRL	=	0x0097
                           00008F   244 _CKCON0	=	0x008f
                           0000AF   245 _CKCON1	=	0x00af
                           0000FA   246 _CCAP0H	=	0x00fa
                           0000FB   247 _CCAP1H	=	0x00fb
                           0000FC   248 _CCAP2H	=	0x00fc
                           0000FD   249 _CCAP3H	=	0x00fd
                           0000FE   250 _CCAP4H	=	0x00fe
                           0000EA   251 _CCAP0L	=	0x00ea
                           0000EB   252 _CCAP1L	=	0x00eb
                           0000EC   253 _CCAP2L	=	0x00ec
                           0000ED   254 _CCAP3L	=	0x00ed
                           0000EE   255 _CCAP4L	=	0x00ee
                           0000DA   256 _CCAPM0	=	0x00da
                           0000DB   257 _CCAPM1	=	0x00db
                           0000DC   258 _CCAPM2	=	0x00dc
                           0000DD   259 _CCAPM3	=	0x00dd
                           0000DE   260 _CCAPM4	=	0x00de
                           0000D8   261 _CCON	=	0x00d8
                           0000F9   262 _CH	=	0x00f9
                           0000E9   263 _CL	=	0x00e9
                           0000D9   264 _CMOD	=	0x00d9
                           0000A8   265 _IEN0	=	0x00a8
                           0000B1   266 _IEN1	=	0x00b1
                           0000B8   267 _IPL0	=	0x00b8
                           0000B7   268 _IPH0	=	0x00b7
                           0000B2   269 _IPL1	=	0x00b2
                           0000B3   270 _IPH1	=	0x00b3
                           0000C0   271 _P4	=	0x00c0
                           0000E8   272 _P5	=	0x00e8
                           0000A6   273 _WDTRST	=	0x00a6
                           0000A7   274 _WDTPRG	=	0x00a7
                           0000A9   275 _SADDR	=	0x00a9
                           0000B9   276 _SADEN	=	0x00b9
                           0000C3   277 _SPCON	=	0x00c3
                           0000C4   278 _SPSTA	=	0x00c4
                           0000C5   279 _SPDAT	=	0x00c5
                           0000C9   280 _T2MOD	=	0x00c9
                           00009B   281 _BDRCON	=	0x009b
                           00009A   282 _BRL	=	0x009a
                           00009C   283 _KBLS	=	0x009c
                           00009D   284 _KBE	=	0x009d
                           00009E   285 _KBF	=	0x009e
                           0000D2   286 _EECON	=	0x00d2
                           0000E0   287 _ACC	=	0x00e0
                           0000F0   288 _B	=	0x00f0
                           000083   289 _DPH	=	0x0083
                           000083   290 _DP0H	=	0x0083
                           000082   291 _DPL	=	0x0082
                           000082   292 _DP0L	=	0x0082
                           0000A8   293 _IE	=	0x00a8
                           0000B8   294 _IP	=	0x00b8
                           000080   295 _P0	=	0x0080
                           000090   296 _P1	=	0x0090
                           0000A0   297 _P2	=	0x00a0
                           0000B0   298 _P3	=	0x00b0
                           000087   299 _PCON	=	0x0087
                           0000D0   300 _PSW	=	0x00d0
                           000099   301 _SBUF	=	0x0099
                           000099   302 _SBUF0	=	0x0099
                           000098   303 _SCON	=	0x0098
                           000081   304 _SP	=	0x0081
                           000088   305 _TCON	=	0x0088
                           00008C   306 _TH0	=	0x008c
                           00008D   307 _TH1	=	0x008d
                           00008A   308 _TL0	=	0x008a
                           00008B   309 _TL1	=	0x008b
                           000089   310 _TMOD	=	0x0089
                                    311 ;--------------------------------------------------------
                                    312 ; special function bits
                                    313 ;--------------------------------------------------------
                                    314 	.area RSEG    (ABS,DATA)
      000000                        315 	.org 0x0000
                           0000AD   316 _ET2	=	0x00ad
                           0000BD   317 _PT2	=	0x00bd
                           0000C8   318 _T2CON_0	=	0x00c8
                           0000C9   319 _T2CON_1	=	0x00c9
                           0000CA   320 _T2CON_2	=	0x00ca
                           0000CB   321 _T2CON_3	=	0x00cb
                           0000CC   322 _T2CON_4	=	0x00cc
                           0000CD   323 _T2CON_5	=	0x00cd
                           0000CE   324 _T2CON_6	=	0x00ce
                           0000CF   325 _T2CON_7	=	0x00cf
                           0000C8   326 _CP_RL2	=	0x00c8
                           0000C9   327 _C_T2	=	0x00c9
                           0000CA   328 _TR2	=	0x00ca
                           0000CB   329 _EXEN2	=	0x00cb
                           0000CC   330 _TCLK	=	0x00cc
                           0000CD   331 _RCLK	=	0x00cd
                           0000CE   332 _EXF2	=	0x00ce
                           0000CF   333 _TF2	=	0x00cf
                           0000DF   334 _CF	=	0x00df
                           0000DE   335 _CR	=	0x00de
                           0000DC   336 _CCF4	=	0x00dc
                           0000DB   337 _CCF3	=	0x00db
                           0000DA   338 _CCF2	=	0x00da
                           0000D9   339 _CCF1	=	0x00d9
                           0000D8   340 _CCF0	=	0x00d8
                           0000AE   341 _EC	=	0x00ae
                           0000BE   342 _PPCL	=	0x00be
                           0000BD   343 _PT2L	=	0x00bd
                           0000BC   344 _PSL	=	0x00bc
                           0000BB   345 _PT1L	=	0x00bb
                           0000BA   346 _PX1L	=	0x00ba
                           0000B9   347 _PT0L	=	0x00b9
                           0000B8   348 _PX0L	=	0x00b8
                           0000C0   349 _P4_0	=	0x00c0
                           0000C1   350 _P4_1	=	0x00c1
                           0000C2   351 _P4_2	=	0x00c2
                           0000C3   352 _P4_3	=	0x00c3
                           0000C4   353 _P4_4	=	0x00c4
                           0000C5   354 _P4_5	=	0x00c5
                           0000C6   355 _P4_6	=	0x00c6
                           0000C7   356 _P4_7	=	0x00c7
                           0000E8   357 _P5_0	=	0x00e8
                           0000E9   358 _P5_1	=	0x00e9
                           0000EA   359 _P5_2	=	0x00ea
                           0000EB   360 _P5_3	=	0x00eb
                           0000EC   361 _P5_4	=	0x00ec
                           0000ED   362 _P5_5	=	0x00ed
                           0000EE   363 _P5_6	=	0x00ee
                           0000EF   364 _P5_7	=	0x00ef
                           0000F0   365 _BREG_F0	=	0x00f0
                           0000F1   366 _BREG_F1	=	0x00f1
                           0000F2   367 _BREG_F2	=	0x00f2
                           0000F3   368 _BREG_F3	=	0x00f3
                           0000F4   369 _BREG_F4	=	0x00f4
                           0000F5   370 _BREG_F5	=	0x00f5
                           0000F6   371 _BREG_F6	=	0x00f6
                           0000F7   372 _BREG_F7	=	0x00f7
                           0000A8   373 _EX0	=	0x00a8
                           0000A9   374 _ET0	=	0x00a9
                           0000AA   375 _EX1	=	0x00aa
                           0000AB   376 _ET1	=	0x00ab
                           0000AC   377 _ES	=	0x00ac
                           0000AF   378 _EA	=	0x00af
                           0000B8   379 _PX0	=	0x00b8
                           0000B9   380 _PT0	=	0x00b9
                           0000BA   381 _PX1	=	0x00ba
                           0000BB   382 _PT1	=	0x00bb
                           0000BC   383 _PS	=	0x00bc
                           000080   384 _P0_0	=	0x0080
                           000081   385 _P0_1	=	0x0081
                           000082   386 _P0_2	=	0x0082
                           000083   387 _P0_3	=	0x0083
                           000084   388 _P0_4	=	0x0084
                           000085   389 _P0_5	=	0x0085
                           000086   390 _P0_6	=	0x0086
                           000087   391 _P0_7	=	0x0087
                           000090   392 _P1_0	=	0x0090
                           000091   393 _P1_1	=	0x0091
                           000092   394 _P1_2	=	0x0092
                           000093   395 _P1_3	=	0x0093
                           000094   396 _P1_4	=	0x0094
                           000095   397 _P1_5	=	0x0095
                           000096   398 _P1_6	=	0x0096
                           000097   399 _P1_7	=	0x0097
                           0000A0   400 _P2_0	=	0x00a0
                           0000A1   401 _P2_1	=	0x00a1
                           0000A2   402 _P2_2	=	0x00a2
                           0000A3   403 _P2_3	=	0x00a3
                           0000A4   404 _P2_4	=	0x00a4
                           0000A5   405 _P2_5	=	0x00a5
                           0000A6   406 _P2_6	=	0x00a6
                           0000A7   407 _P2_7	=	0x00a7
                           0000B0   408 _P3_0	=	0x00b0
                           0000B1   409 _P3_1	=	0x00b1
                           0000B2   410 _P3_2	=	0x00b2
                           0000B3   411 _P3_3	=	0x00b3
                           0000B4   412 _P3_4	=	0x00b4
                           0000B5   413 _P3_5	=	0x00b5
                           0000B6   414 _P3_6	=	0x00b6
                           0000B7   415 _P3_7	=	0x00b7
                           0000B0   416 _RXD	=	0x00b0
                           0000B0   417 _RXD0	=	0x00b0
                           0000B1   418 _TXD	=	0x00b1
                           0000B1   419 _TXD0	=	0x00b1
                           0000B2   420 _INT0	=	0x00b2
                           0000B3   421 _INT1	=	0x00b3
                           0000B4   422 _T0	=	0x00b4
                           0000B5   423 _T1	=	0x00b5
                           0000B6   424 _WR	=	0x00b6
                           0000B7   425 _RD	=	0x00b7
                           0000D0   426 _P	=	0x00d0
                           0000D1   427 _F1	=	0x00d1
                           0000D2   428 _OV	=	0x00d2
                           0000D3   429 _RS0	=	0x00d3
                           0000D4   430 _RS1	=	0x00d4
                           0000D5   431 _F0	=	0x00d5
                           0000D6   432 _AC	=	0x00d6
                           0000D7   433 _CY	=	0x00d7
                           000098   434 _RI	=	0x0098
                           000099   435 _TI	=	0x0099
                           00009A   436 _RB8	=	0x009a
                           00009B   437 _TB8	=	0x009b
                           00009C   438 _REN	=	0x009c
                           00009D   439 _SM2	=	0x009d
                           00009E   440 _SM1	=	0x009e
                           00009F   441 _SM0	=	0x009f
                           000088   442 _IT0	=	0x0088
                           000089   443 _IE0	=	0x0089
                           00008A   444 _IT1	=	0x008a
                           00008B   445 _IE1	=	0x008b
                           00008C   446 _TR0	=	0x008c
                           00008D   447 _TF0	=	0x008d
                           00008E   448 _TR1	=	0x008e
                           00008F   449 _TF1	=	0x008f
                                    450 ;--------------------------------------------------------
                                    451 ; overlayable register banks
                                    452 ;--------------------------------------------------------
                                    453 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        454 	.ds 8
                                    455 ;--------------------------------------------------------
                                    456 ; internal ram data
                                    457 ;--------------------------------------------------------
                                    458 	.area DSEG    (DATA)
                                    459 ;--------------------------------------------------------
                                    460 ; overlayable items in internal ram 
                                    461 ;--------------------------------------------------------
                                    462 ;--------------------------------------------------------
                                    463 ; indirectly addressable internal ram data
                                    464 ;--------------------------------------------------------
                                    465 	.area ISEG    (DATA)
                                    466 ;--------------------------------------------------------
                                    467 ; absolute internal ram data
                                    468 ;--------------------------------------------------------
                                    469 	.area IABS    (ABS,DATA)
                                    470 	.area IABS    (ABS,DATA)
                                    471 ;--------------------------------------------------------
                                    472 ; bit data
                                    473 ;--------------------------------------------------------
                                    474 	.area BSEG    (BIT)
                                    475 ;--------------------------------------------------------
                                    476 ; paged external ram data
                                    477 ;--------------------------------------------------------
                                    478 	.area PSEG    (PAG,XDATA)
                                    479 ;--------------------------------------------------------
                                    480 ; external ram data
                                    481 ;--------------------------------------------------------
                                    482 	.area XSEG    (XDATA)
      000002                        483 _i2c_write_random_PARM_2:
      000002                        484 	.ds 1
      000003                        485 _i2c_write_random_PARM_3:
      000003                        486 	.ds 1
      000004                        487 _i2c_write_random_block_65536_9:
      000004                        488 	.ds 1
      000005                        489 _i2c_read_random_PARM_2:
      000005                        490 	.ds 1
      000006                        491 _i2c_read_random_block_65536_15:
      000006                        492 	.ds 1
      000007                        493 _i2c_activity_a_65536_18:
      000007                        494 	.ds 1
                                    495 ;--------------------------------------------------------
                                    496 ; absolute external ram data
                                    497 ;--------------------------------------------------------
                                    498 	.area XABS    (ABS,XDATA)
                                    499 ;--------------------------------------------------------
                                    500 ; external initialized ram data
                                    501 ;--------------------------------------------------------
                                    502 	.area XISEG   (XDATA)
                                    503 	.area HOME    (CODE)
                                    504 	.area GSINIT0 (CODE)
                                    505 	.area GSINIT1 (CODE)
                                    506 	.area GSINIT2 (CODE)
                                    507 	.area GSINIT3 (CODE)
                                    508 	.area GSINIT4 (CODE)
                                    509 	.area GSINIT5 (CODE)
                                    510 	.area GSINIT  (CODE)
                                    511 	.area GSFINAL (CODE)
                                    512 	.area CSEG    (CODE)
                                    513 ;--------------------------------------------------------
                                    514 ; global & static initialisations
                                    515 ;--------------------------------------------------------
                                    516 	.area HOME    (CODE)
                                    517 	.area GSINIT  (CODE)
                                    518 	.area GSFINAL (CODE)
                                    519 	.area GSINIT  (CODE)
                                    520 ;--------------------------------------------------------
                                    521 ; Home
                                    522 ;--------------------------------------------------------
                                    523 	.area HOME    (CODE)
                                    524 	.area HOME    (CODE)
                                    525 ;--------------------------------------------------------
                                    526 ; code
                                    527 ;--------------------------------------------------------
                                    528 	.area CSEG    (CODE)
                                    529 ;------------------------------------------------------------
                                    530 ;Allocation info for local variables in function 'i2c_write_random'
                                    531 ;------------------------------------------------------------
                                    532 ;address                   Allocated with name '_i2c_write_random_PARM_2'
                                    533 ;value                     Allocated with name '_i2c_write_random_PARM_3'
                                    534 ;block                     Allocated with name '_i2c_write_random_block_65536_9'
                                    535 ;k                         Allocated with name '_i2c_write_random_k_131072_11'
                                    536 ;l                         Allocated with name '_i2c_write_random_l_262144_13'
                                    537 ;------------------------------------------------------------
                                    538 ;	i2c.c:27: void i2c_write_random(unsigned char block, unsigned char address, unsigned char value)
                                    539 ;	-----------------------------------------
                                    540 ;	 function i2c_write_random
                                    541 ;	-----------------------------------------
      000345                        542 _i2c_write_random:
                           000007   543 	ar7 = 0x07
                           000006   544 	ar6 = 0x06
                           000005   545 	ar5 = 0x05
                           000004   546 	ar4 = 0x04
                           000003   547 	ar3 = 0x03
                           000002   548 	ar2 = 0x02
                           000001   549 	ar1 = 0x01
                           000000   550 	ar0 = 0x00
      000345 E5 82            [12]  551 	mov	a,dpl
      000347 90 00 04         [24]  552 	mov	dptr,#_i2c_write_random_block_65536_9
      00034A F0               [24]  553 	movx	@dptr,a
                                    554 ;	i2c.c:29: i2c_activity(2);
      00034B 75 82 02         [24]  555 	mov	dpl,#0x02
      00034E 12 03 D8         [24]  556 	lcall	_i2c_activity
                                    557 ;	i2c.c:30: i2c_write_init(block);
      000351 90 00 04         [24]  558 	mov	dptr,#_i2c_write_random_block_65536_9
      000354 E0               [24]  559 	movx	a,@dptr
      000355 F5 82            [12]  560 	mov	dpl,a
      000357 12 02 B5         [24]  561 	lcall	_i2c_write_init
                                    562 ;	i2c.c:31: i2c_addr(address);
      00035A 90 00 02         [24]  563 	mov	dptr,#_i2c_write_random_PARM_2
      00035D E0               [24]  564 	movx	a,@dptr
      00035E F5 82            [12]  565 	mov	dpl,a
      000360 12 02 F7         [24]  566 	lcall	_i2c_addr
                                    567 ;	i2c.c:32: i2c_write_val(value);
      000363 90 00 03         [24]  568 	mov	dptr,#_i2c_write_random_PARM_3
      000366 E0               [24]  569 	movx	a,@dptr
      000367 F5 82            [12]  570 	mov	dpl,a
      000369 12 02 FF         [24]  571 	lcall	_i2c_write_val
                                    572 ;	i2c.c:34: for (int k = 0; k < 90; k++)
      00036C 7E 00            [12]  573 	mov	r6,#0x00
      00036E 7F 00            [12]  574 	mov	r7,#0x00
      000370                        575 00107$:
      000370 C3               [12]  576 	clr	c
      000371 EE               [12]  577 	mov	a,r6
      000372 94 5A            [12]  578 	subb	a,#0x5a
      000374 EF               [12]  579 	mov	a,r7
      000375 64 80            [12]  580 	xrl	a,#0x80
      000377 94 80            [12]  581 	subb	a,#0x80
      000379 50 1D            [24]  582 	jnc	00102$
                                    583 ;	i2c.c:36: for (int l = 0; l < 10; l++)
      00037B 7C 00            [12]  584 	mov	r4,#0x00
      00037D 7D 00            [12]  585 	mov	r5,#0x00
      00037F                        586 00104$:
      00037F C3               [12]  587 	clr	c
      000380 EC               [12]  588 	mov	a,r4
      000381 94 0A            [12]  589 	subb	a,#0x0a
      000383 ED               [12]  590 	mov	a,r5
      000384 64 80            [12]  591 	xrl	a,#0x80
      000386 94 80            [12]  592 	subb	a,#0x80
      000388 50 07            [24]  593 	jnc	00108$
      00038A 0C               [12]  594 	inc	r4
      00038B BC 00 F1         [24]  595 	cjne	r4,#0x00,00104$
      00038E 0D               [12]  596 	inc	r5
      00038F 80 EE            [24]  597 	sjmp	00104$
      000391                        598 00108$:
                                    599 ;	i2c.c:34: for (int k = 0; k < 90; k++)
      000391 0E               [12]  600 	inc	r6
      000392 BE 00 DB         [24]  601 	cjne	r6,#0x00,00107$
      000395 0F               [12]  602 	inc	r7
      000396 80 D8            [24]  603 	sjmp	00107$
      000398                        604 00102$:
                                    605 ;	i2c.c:40: i2c_activity(1);
      000398 75 82 01         [24]  606 	mov	dpl,#0x01
                                    607 ;	i2c.c:41: }
      00039B 02 03 D8         [24]  608 	ljmp	_i2c_activity
                                    609 ;------------------------------------------------------------
                                    610 ;Allocation info for local variables in function 'i2c_read_random'
                                    611 ;------------------------------------------------------------
                                    612 ;address                   Allocated with name '_i2c_read_random_PARM_2'
                                    613 ;block                     Allocated with name '_i2c_read_random_block_65536_15'
                                    614 ;a                         Allocated with name '_i2c_read_random_a_65537_17'
                                    615 ;------------------------------------------------------------
                                    616 ;	i2c.c:48: unsigned char i2c_read_random(unsigned char block, unsigned char address)
                                    617 ;	-----------------------------------------
                                    618 ;	 function i2c_read_random
                                    619 ;	-----------------------------------------
      00039E                        620 _i2c_read_random:
      00039E E5 82            [12]  621 	mov	a,dpl
      0003A0 90 00 06         [24]  622 	mov	dptr,#_i2c_read_random_block_65536_15
      0003A3 F0               [24]  623 	movx	@dptr,a
                                    624 ;	i2c.c:50: i2c_activity(2);
      0003A4 75 82 02         [24]  625 	mov	dpl,#0x02
      0003A7 12 03 D8         [24]  626 	lcall	_i2c_activity
                                    627 ;	i2c.c:51: i2c_write_init(block);
      0003AA 90 00 06         [24]  628 	mov	dptr,#_i2c_read_random_block_65536_15
      0003AD E0               [24]  629 	movx	a,@dptr
      0003AE FF               [12]  630 	mov	r7,a
      0003AF F5 82            [12]  631 	mov	dpl,a
      0003B1 C0 07            [24]  632 	push	ar7
      0003B3 12 02 B5         [24]  633 	lcall	_i2c_write_init
                                    634 ;	i2c.c:52: i2c_addr(address);
      0003B6 90 00 05         [24]  635 	mov	dptr,#_i2c_read_random_PARM_2
      0003B9 E0               [24]  636 	movx	a,@dptr
      0003BA F5 82            [12]  637 	mov	dpl,a
      0003BC 12 02 F7         [24]  638 	lcall	_i2c_addr
      0003BF D0 07            [24]  639 	pop	ar7
                                    640 ;	i2c.c:53: i2c_read_init(block);
      0003C1 8F 82            [24]  641 	mov	dpl,r7
      0003C3 12 02 C3         [24]  642 	lcall	_i2c_read_init
                                    643 ;	i2c.c:54: unsigned char a = i2c_read_val();
      0003C6 12 02 D1         [24]  644 	lcall	_i2c_read_val
      0003C9 AF 82            [24]  645 	mov	r7,dpl
                                    646 ;	i2c.c:55: i2c_activity(1);
      0003CB 75 82 01         [24]  647 	mov	dpl,#0x01
      0003CE C0 07            [24]  648 	push	ar7
      0003D0 12 03 D8         [24]  649 	lcall	_i2c_activity
      0003D3 D0 07            [24]  650 	pop	ar7
                                    651 ;	i2c.c:56: return a;
      0003D5 8F 82            [24]  652 	mov	dpl,r7
                                    653 ;	i2c.c:57: }
      0003D7 22               [24]  654 	ret
                                    655 ;------------------------------------------------------------
                                    656 ;Allocation info for local variables in function 'i2c_activity'
                                    657 ;------------------------------------------------------------
                                    658 ;a                         Allocated with name '_i2c_activity_a_65536_18'
                                    659 ;------------------------------------------------------------
                                    660 ;	i2c.c:60: void i2c_activity(unsigned char a){
                                    661 ;	-----------------------------------------
                                    662 ;	 function i2c_activity
                                    663 ;	-----------------------------------------
      0003D8                        664 _i2c_activity:
      0003D8 E5 82            [12]  665 	mov	a,dpl
      0003DA 90 00 07         [24]  666 	mov	dptr,#_i2c_activity_a_65536_18
      0003DD F0               [24]  667 	movx	@dptr,a
                                    668 ;	i2c.c:61: P1 = a;
      0003DE E0               [24]  669 	movx	a,@dptr
      0003DF F5 90            [12]  670 	mov	_P1,a
                                    671 ;	i2c.c:63: P3_2 = 0;
                                    672 ;	assignBit
      0003E1 C2 B2            [12]  673 	clr	_P3_2
                                    674 ;	i2c.c:64: P3_2 = 1;
                                    675 ;	assignBit
      0003E3 D2 B2            [12]  676 	setb	_P3_2
                                    677 ;	i2c.c:65: P3_2 = 0;
                                    678 ;	assignBit
      0003E5 C2 B2            [12]  679 	clr	_P3_2
                                    680 ;	i2c.c:66: }
      0003E7 22               [24]  681 	ret
                                    682 	.area CSEG    (CODE)
                                    683 	.area CONST   (CODE)
                                    684 	.area XINIT   (CODE)
                                    685 	.area CABS    (ABS,CODE)
