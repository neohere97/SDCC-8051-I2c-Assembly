ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Intel 8051), page 1.
Hexadecimal [24-Bits]



                                      1 	.module program
                                      2 	.optsdcc -mmcs51 --model-large
                                      3 	
                                      4 	.globl _i2c_init
                                      5 	.globl _i2c_stop
                                      6 	.globl _i2c_write_init
                                      7 	.globl _i2c_read_init
                                      8 	.globl _i2c_addr
                                      9 	.globl _i2c_write_val
                                     10 	.globl _i2c_read_val
                                     11 	.globl _i2c_eeprom_reset
                                     12 	
                                     13 
                                     14 	.area CSEG    
      0002AE                         15 _i2c_init:
      0002AE D2 90            [12]   16 	setb p1.0
      0002B0 D2 97            [12]   17 	setb p1.7
      0002B2 C2 97            [12]   18 	clr p1.7
      0002B4 22               [24]   19 	ret
                                     20 
      0002B5                         21 _i2c_write_init:
      0002B5 12 02 AE         [24]   22 	lcall _i2c_init
      0002B8 E5 82            [12]   23 	mov a,dpl
      0002BA 23               [12]   24 	rl a
      0002BB 44 A0            [12]   25 	orl a,#0xA0
      0002BD 7A 09            [12]   26 	mov r2,#9	
      0002BF 12 03 11         [24]   27 	lcall devaddr
      0002C2 22               [24]   28 	ret
                                     29 
      0002C3                         30 _i2c_read_init:
      0002C3 12 02 AE         [24]   31 	lcall _i2c_init
      0002C6 E5 82            [12]   32 	mov a,dpl
      0002C8 23               [12]   33 	rl a
      0002C9 44 A1            [12]   34 	orl a,#0xA1
      0002CB 7A 09            [12]   35 	mov r2,#9	
      0002CD 12 03 11         [24]   36 	lcall devaddr
      0002D0 22               [24]   37 	ret
                                     38 
      0002D1                         39 _i2c_read_val:
      0002D1 7A 08            [12]   40 	mov r2,#8
      0002D3 74 00            [12]   41 	mov a,#0
      0002D5 C3               [12]   42 	clr c
      0002D6 12 02 E4         [24]   43 	lcall readloop	
      0002D9 C2 97            [12]   44 	clr p1.7	
      0002DB 12 03 0A         [24]   45 	lcall _i2c_stop
      0002DE F5 82            [12]   46 	mov dpl,a
      0002E0 22               [24]   47 	ret
                                     48 
      0002E1                         49 readloopc:		
      0002E1 DA 01            [24]   50 	djnz r2, readloop	
      0002E3 22               [24]   51 	ret
                                     52 
      0002E4                         53 readloop:	
      0002E4 D2 90            [12]   54 	setb p1.0
      0002E6 30 97 07         [24]   55 	jnb  p1.7, addz
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Intel 8051), page 2.
Hexadecimal [24-Bits]



      0002E9 D3               [12]   56 	setb c
      0002EA 33               [12]   57 	rlc a	
      0002EB C2 90            [12]   58 	clr p1.0	
      0002ED 02 02 E1         [24]   59 	ljmp readloopc
                                     60 
      0002F0                         61 addz:
      0002F0 C3               [12]   62 	clr c
      0002F1 33               [12]   63 	rlc a
      0002F2 C2 90            [12]   64 	clr p1.0
      0002F4 02 02 E1         [24]   65 	ljmp readloopc
                                     66 
      0002F7                         67 _i2c_addr:
      0002F7 E5 82            [12]   68 	mov a,dpl
      0002F9 7A 09            [12]   69 	mov r2,#9
      0002FB 12 03 11         [24]   70 	lcall devaddr
      0002FE 22               [24]   71 	ret
                                     72 
      0002FF                         73 _i2c_write_val:
      0002FF E5 82            [12]   74 	mov a,dpl
      000301 7A 09            [12]   75 	mov r2,#9
      000303 12 03 11         [24]   76 	lcall devaddr
      000306 12 03 0A         [24]   77 	lcall _i2c_stop
      000309 22               [24]   78 	ret
                                     79 
      00030A                         80 _i2c_stop:
      00030A C2 97            [12]   81 	clr p1.7
      00030C D2 90            [12]   82 	setb p1.0
      00030E D2 97            [12]   83 	setb p1.7
      000310 22               [24]   84 	ret
                                     85 
      000311                         86 devaddr:
      000311 C2 90            [12]   87 	clr p1.0
      000313 DA 07            [24]   88 	djnz r2, bitloop
      000315 D2 97            [12]   89 	setb p1.7	
      000317 D2 90            [12]   90 	setb p1.0
      000319 C2 90            [12]   91 	clr p1.0		
      00031B 22               [24]   92 	ret
                                     93 
      00031C                         94 bitloop:	
      00031C 33               [12]   95 	rlc a
      00031D 50 03            [24]   96 	jnc sendz
      00031F 02 03 2B         [24]   97 	ljmp sendo
                                     98 
      000322                         99 sendz:
      000322 C2 97            [12]  100 	clr p1.7		
      000324 D2 90            [12]  101 	setb p1.0		
      000326 C2 90            [12]  102 	clr p1.0
      000328 02 03 11         [24]  103 	ljmp devaddr
                                    104 
      00032B                        105 sendo:
      00032B D2 97            [12]  106 	setb p1.7		
      00032D D2 90            [12]  107 	setb p1.0		
      00032F C2 90            [12]  108 	clr p1.0
      000331 02 03 11         [24]  109 	ljmp devaddr
                                    110 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Intel 8051), page 3.
Hexadecimal [24-Bits]



                                    111 
      000334                        112 _i2c_eeprom_reset:	
      000334 12 02 AE         [24]  113 	lcall _i2c_init
      000337 7A 09            [12]  114 	mov r2,#9
      000339 74 FF            [12]  115 	mov a,#0xFF
      00033B 12 03 11         [24]  116 	lcall devaddr
      00033E 12 02 AE         [24]  117 	lcall _i2c_init
      000341 12 03 0A         [24]  118 	lcall _i2c_stop
      000344 22               [24]  119 	ret
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Intel 8051), page 4.
Hexadecimal [24-Bits]

Symbol Table

    .__.$$$.=  002710 L   |     .__.ABS.=  000000 G   |     .__.CPU.=  000000 L
    .__.H$L.=  000001 L   |     A       =  0000E0 L   |     A.0     =  0000E0 L
    A.1     =  0000E1 L   |     A.2     =  0000E2 L   |     A.3     =  0000E3 L
    A.4     =  0000E4 L   |     A.5     =  0000E5 L   |     A.6     =  0000E6 L
    A.7     =  0000E7 L   |     AC      =  0000D6 L   |     ACC     =  0000E0 L
    ACC.0   =  0000E0 L   |     ACC.1   =  0000E1 L   |     ACC.2   =  0000E2 L
    ACC.3   =  0000E3 L   |     ACC.4   =  0000E4 L   |     ACC.5   =  0000E5 L
    ACC.6   =  0000E6 L   |     ACC.7   =  0000E7 L   |     B       =  0000F0 L
    B.0     =  0000F0 L   |     B.1     =  0000F1 L   |     B.2     =  0000F2 L
    B.3     =  0000F3 L   |     B.4     =  0000F4 L   |     B.5     =  0000F5 L
    B.6     =  0000F6 L   |     B.7     =  0000F7 L   |     CPRL2   =  0000C8 L
    CT2     =  0000C9 L   |     CY      =  0000D7 L   |     DPH     =  000083 L
    DPL     =  000082 L   |     EA      =  0000AF L   |     ES      =  0000AC L
    ET0     =  0000A9 L   |     ET1     =  0000AB L   |     ET2     =  0000AD L
    EX0     =  0000A8 L   |     EX1     =  0000AA L   |     EXEN2   =  0000CB L
    EXF2    =  0000CE L   |     F0      =  0000D5 L   |     IE      =  0000A8 L
    IE.0    =  0000A8 L   |     IE.1    =  0000A9 L   |     IE.2    =  0000AA L
    IE.3    =  0000AB L   |     IE.4    =  0000AC L   |     IE.5    =  0000AD L
    IE.7    =  0000AF L   |     IE0     =  000089 L   |     IE1     =  00008B L
    INT0    =  0000B2 L   |     INT1    =  0000B3 L   |     IP      =  0000B8 L
    IP.0    =  0000B8 L   |     IP.1    =  0000B9 L   |     IP.2    =  0000BA L
    IP.3    =  0000BB L   |     IP.4    =  0000BC L   |     IP.5    =  0000BD L
    IT0     =  000088 L   |     IT1     =  00008A L   |     OV      =  0000D2 L
    P       =  0000D0 L   |     P0      =  000080 L   |     P0.0    =  000080 L
    P0.1    =  000081 L   |     P0.2    =  000082 L   |     P0.3    =  000083 L
    P0.4    =  000084 L   |     P0.5    =  000085 L   |     P0.6    =  000086 L
    P0.7    =  000087 L   |     P1      =  000090 L   |     P1.0    =  000090 L
    P1.1    =  000091 L   |     P1.2    =  000092 L   |     P1.3    =  000093 L
    P1.4    =  000094 L   |     P1.5    =  000095 L   |     P1.6    =  000096 L
    P1.7    =  000097 L   |     P2      =  0000A0 L   |     P2.0    =  0000A0 L
    P2.1    =  0000A1 L   |     P2.2    =  0000A2 L   |     P2.3    =  0000A3 L
    P2.4    =  0000A4 L   |     P2.5    =  0000A5 L   |     P2.6    =  0000A6 L
    P2.7    =  0000A7 L   |     P3      =  0000B0 L   |     P3.0    =  0000B0 L
    P3.1    =  0000B1 L   |     P3.2    =  0000B2 L   |     P3.3    =  0000B3 L
    P3.4    =  0000B4 L   |     P3.5    =  0000B5 L   |     P3.6    =  0000B6 L
    P3.7    =  0000B7 L   |     PCON    =  000087 L   |     PS      =  0000BC L
    PSW     =  0000D0 L   |     PSW.0   =  0000D0 L   |     PSW.1   =  0000D1 L
    PSW.2   =  0000D2 L   |     PSW.3   =  0000D3 L   |     PSW.4   =  0000D4 L
    PSW.5   =  0000D5 L   |     PSW.6   =  0000D6 L   |     PSW.7   =  0000D7 L
    PT0     =  0000B9 L   |     PT1     =  0000BB L   |     PT2     =  0000BD L
    PX0     =  0000B8 L   |     PX1     =  0000BA L   |     RB8     =  00009A L
    RCAP2H  =  0000CB L   |     RCAP2L  =  0000CA L   |     RCLK    =  0000CD L
    REN     =  00009C L   |     RI      =  000098 L   |     RS0     =  0000D3 L
    RS1     =  0000D4 L   |     RXD     =  0000B0 L   |     SBUF    =  000099 L
    SCON    =  000098 L   |     SCON.0  =  000098 L   |     SCON.1  =  000099 L
    SCON.2  =  00009A L   |     SCON.3  =  00009B L   |     SCON.4  =  00009C L
    SCON.5  =  00009D L   |     SCON.6  =  00009E L   |     SCON.7  =  00009F L
    SM0     =  00009F L   |     SM1     =  00009E L   |     SM2     =  00009D L
    SP      =  000081 L   |     T2CON   =  0000C8 L   |     T2CON.0 =  0000C8 L
    T2CON.1 =  0000C9 L   |     T2CON.2 =  0000CA L   |     T2CON.3 =  0000CB L
    T2CON.4 =  0000CC L   |     T2CON.5 =  0000CD L   |     T2CON.6 =  0000CE L
    T2CON.7 =  0000CF L   |     TB8     =  00009B L   |     TCLK    =  0000CC L
    TCON    =  000088 L   |     TCON.0  =  000088 L   |     TCON.1  =  000089 L
    TCON.2  =  00008A L   |     TCON.3  =  00008B L   |     TCON.4  =  00008C L
    TCON.5  =  00008D L   |     TCON.6  =  00008E L   |     TCON.7  =  00008F L
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Intel 8051), page 5.
Hexadecimal [24-Bits]

Symbol Table

    TF0     =  00008D L   |     TF1     =  00008F L   |     TF2     =  0000CF L
    TH0     =  00008C L   |     TH1     =  00008D L   |     TH2     =  0000CD L
    TI      =  000099 L   |     TL0     =  00008A L   |     TL1     =  00008B L
    TL2     =  0000CC L   |     TMOD    =  000089 L   |     TR0     =  00008C L
    TR1     =  00008E L   |     TR2     =  0000CA L   |     TXD     =  0000B1 L
  1 _i2c_add   000049 GR  |   1 _i2c_eep   000086 GR  |   1 _i2c_ini   000000 GR
  1 _i2c_rea   000015 GR  |   1 _i2c_rea   000023 GR  |   1 _i2c_sto   00005C GR
  1 _i2c_wri   000007 GR  |   1 _i2c_wri   000051 GR  |     a       =  0000E0 L
    a.0     =  0000E0 L   |     a.1     =  0000E1 L   |     a.2     =  0000E2 L
    a.3     =  0000E3 L   |     a.4     =  0000E4 L   |     a.5     =  0000E5 L
    a.6     =  0000E6 L   |     a.7     =  0000E7 L   |     ac      =  0000D6 L
    acc     =  0000E0 L   |     acc.0   =  0000E0 L   |     acc.1   =  0000E1 L
    acc.2   =  0000E2 L   |     acc.3   =  0000E3 L   |     acc.4   =  0000E4 L
    acc.5   =  0000E5 L   |     acc.6   =  0000E6 L   |     acc.7   =  0000E7 L
  1 addz       000042 R   |     b       =  0000F0 L   |     b.0     =  0000F0 L
    b.1     =  0000F1 L   |     b.2     =  0000F2 L   |     b.3     =  0000F3 L
    b.4     =  0000F4 L   |     b.5     =  0000F5 L   |     b.6     =  0000F6 L
    b.7     =  0000F7 L   |   1 bitloop    00006E R   |     cprl2   =  0000C8 L
    ct2     =  0000C9 L   |     cy      =  0000D7 L   |   1 devaddr    000063 R
    dph     =  000083 L   |     dpl     =  000082 L   |     ea      =  0000AF L
    es      =  0000AC L   |     et0     =  0000A9 L   |     et1     =  0000AB L
    et2     =  0000AD L   |     ex0     =  0000A8 L   |     ex1     =  0000AA L
    exen2   =  0000CB L   |     exf2    =  0000CE L   |     f0      =  0000D5 L
    ie      =  0000A8 L   |     ie.0    =  0000A8 L   |     ie.1    =  0000A9 L
    ie.2    =  0000AA L   |     ie.3    =  0000AB L   |     ie.4    =  0000AC L
    ie.5    =  0000AD L   |     ie.7    =  0000AF L   |     ie0     =  000089 L
    ie1     =  00008B L   |     int0    =  0000B2 L   |     int1    =  0000B3 L
    ip      =  0000B8 L   |     ip.0    =  0000B8 L   |     ip.1    =  0000B9 L
    ip.2    =  0000BA L   |     ip.3    =  0000BB L   |     ip.4    =  0000BC L
    ip.5    =  0000BD L   |     it0     =  000088 L   |     it1     =  00008A L
    ov      =  0000D2 L   |     p       =  0000D0 L   |     p0      =  000080 L
    p0.0    =  000080 L   |     p0.1    =  000081 L   |     p0.2    =  000082 L
    p0.3    =  000083 L   |     p0.4    =  000084 L   |     p0.5    =  000085 L
    p0.6    =  000086 L   |     p0.7    =  000087 L   |     p1      =  000090 L
    p1.0    =  000090 L   |     p1.1    =  000091 L   |     p1.2    =  000092 L
    p1.3    =  000093 L   |     p1.4    =  000094 L   |     p1.5    =  000095 L
    p1.6    =  000096 L   |     p1.7    =  000097 L   |     p2      =  0000A0 L
    p2.0    =  0000A0 L   |     p2.1    =  0000A1 L   |     p2.2    =  0000A2 L
    p2.3    =  0000A3 L   |     p2.4    =  0000A4 L   |     p2.5    =  0000A5 L
    p2.6    =  0000A6 L   |     p2.7    =  0000A7 L   |     p3      =  0000B0 L
    p3.0    =  0000B0 L   |     p3.1    =  0000B1 L   |     p3.2    =  0000B2 L
    p3.3    =  0000B3 L   |     p3.4    =  0000B4 L   |     p3.5    =  0000B5 L
    p3.6    =  0000B6 L   |     p3.7    =  0000B7 L   |     pcon    =  000087 L
    ps      =  0000BC L   |     psw     =  0000D0 L   |     psw.0   =  0000D0 L
    psw.1   =  0000D1 L   |     psw.2   =  0000D2 L   |     psw.3   =  0000D3 L
    psw.4   =  0000D4 L   |     psw.5   =  0000D5 L   |     psw.6   =  0000D6 L
    psw.7   =  0000D7 L   |     pt0     =  0000B9 L   |     pt1     =  0000BB L
    pt2     =  0000BD L   |     px0     =  0000B8 L   |     px1     =  0000BA L
    rb8     =  00009A L   |     rcap2h  =  0000CB L   |     rcap2l  =  0000CA L
    rclk    =  0000CD L   |   1 readloop   000036 R   |   1 readloop   000033 R
    ren     =  00009C L   |     ri      =  000098 L   |     rs0     =  0000D3 L
    rs1     =  0000D4 L   |     rxd     =  0000B0 L   |     sbuf    =  000099 L
    scon    =  000098 L   |     scon.0  =  000098 L   |     scon.1  =  000099 L
    scon.2  =  00009A L   |     scon.3  =  00009B L   |     scon.4  =  00009C L
    scon.5  =  00009D L   |     scon.6  =  00009E L   |     scon.7  =  00009F L
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Intel 8051), page 6.
Hexadecimal [24-Bits]

Symbol Table

  1 sendo      00007D R   |   1 sendz      000074 R   |     sm0     =  00009F L
    sm1     =  00009E L   |     sm2     =  00009D L   |     sp      =  000081 L
    t2con   =  0000C8 L   |     t2con.0 =  0000C8 L   |     t2con.1 =  0000C9 L
    t2con.2 =  0000CA L   |     t2con.3 =  0000CB L   |     t2con.4 =  0000CC L
    t2con.5 =  0000CD L   |     t2con.6 =  0000CE L   |     t2con.7 =  0000CF L
    tb8     =  00009B L   |     tclk    =  0000CC L   |     tcon    =  000088 L
    tcon.0  =  000088 L   |     tcon.1  =  000089 L   |     tcon.2  =  00008A L
    tcon.3  =  00008B L   |     tcon.4  =  00008C L   |     tcon.5  =  00008D L
    tcon.6  =  00008E L   |     tcon.7  =  00008F L   |     tf0     =  00008D L
    tf1     =  00008F L   |     tf2     =  0000CF L   |     th0     =  00008C L
    th1     =  00008D L   |     th2     =  0000CD L   |     ti      =  000099 L
    tl0     =  00008A L   |     tl1     =  00008B L   |     tl2     =  0000CC L
    tmod    =  000089 L   |     tr0     =  00008C L   |     tr1     =  00008E L
    tr2     =  0000CA L   |     txd     =  0000B1 L

ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Intel 8051), page 7.
Hexadecimal [24-Bits]

Area Table

   0 _CODE      size      0   flags    0
   1 CSEG       size     97   flags    0

