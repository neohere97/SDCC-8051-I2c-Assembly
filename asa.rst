ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Intel 8051), page 1.
Hexadecimal [24-Bits]



                                      1 	.module program
                                      2 	.optsdcc -mmcs51 --model-large
                                      3 	
                                      4 	.globl _asmtest_PARM_3
                                      5 	.globl _asmtest_PARM_2
                                      6 	.globl _global_var_test
                                      7 	.globl _asmtest
                                      8 	.globl _asm_call	
                                      9 	.globl _i2c_init
                                     10 	.globl _i2c_stop
                                     11 	.globl _i2c_write_init
                                     12 	.globl _i2c_read_init
                                     13 	.globl _i2c_addr
                                     14 	.globl _i2c_write_val
                                     15 	.globl _i2c_read_val
                                     16 	
                                     17 	
                                     18 	.area	OSEG   
                                     19 
      00001A                         20 _asmtest_PARM_2:
      00001A                         21 	.ds 1
      00001B                         22 _asmtest_PARM_3:
      00001B                         23 	.ds 1
                                     24 
                                     25 	.area CSEG    
      0015E4                         26 _asmtest:
      0015E4 AF 82            [24]   27 	mov	r7,dpl	
      0015E6 90 00 1A         [24]   28 	mov	dptr,#_asmtest_PARM_2
      0015E9 E0               [24]   29 	movx a, @dptr
      0015EA FE               [12]   30 	mov r6, a
      0015EB 90 00 1B         [24]   31 	mov dptr,#_asmtest_PARM_3
      0015EE E0               [24]   32 	movx a,@dptr
      0015EF 8E F0            [24]   33 	mov b,r6	
      0015F1 84               [48]   34 	div	ab
      0015F2 EF               [12]   35 	mov	a,r7
      0015F3 A4               [48]   36 	mul	ab
      0015F4 F5 82            [12]   37 	mov	dpl,a	
      0015F6 90 00 1A         [24]   38 	mov dptr,#_asmtest_PARM_2
      0015F9 F0               [24]   39 	movx @dptr,a
      0015FA 75 82 55         [24]   40 	mov dpl,#0x55
      0015FD 12 15 9F         [24]   41 	lcall _asm_call	
      001600 90 00 1A         [24]   42 	mov dptr,#_asmtest_PARM_2
      001603 E0               [24]   43 	movx a,@dptr
      001604 F5 82            [12]   44 	mov dpl,a
      001606 22               [24]   45 	ret
                                     46 
                                     47 
      001607                         48 _i2c_init:
      001607 D2 90            [12]   49 	setb p1.0
      001609 D2 97            [12]   50 	setb p1.7
      00160B 00               [12]   51 	nop
      00160C 00               [12]   52 	nop
      00160D 00               [12]   53 	nop
      00160E C2 97            [12]   54 	clr p1.7
      001610 00               [12]   55 	nop
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Intel 8051), page 2.
Hexadecimal [24-Bits]



      001611 00               [12]   56 	nop
      001612 00               [12]   57 	nop
      001613 22               [24]   58 	ret
                                     59 
      001614                         60 _i2c_write_init:
      001614 12 16 07         [24]   61 	lcall _i2c_init
      001617 E5 82            [12]   62 	mov a,dpl
      001619 23               [12]   63 	rl a
      00161A 44 A0            [12]   64 	orl a,#0xA0
      00161C 7A 09            [12]   65 	mov r2,#9	
      00161E 12 16 80         [24]   66 	lcall devaddr
      001621 22               [24]   67 	ret
                                     68 
      001622                         69 _i2c_read_init:
      001622 12 16 07         [24]   70 	lcall _i2c_init
      001625 E5 82            [12]   71 	mov a,dpl
      001627 23               [12]   72 	rl a
      001628 44 A1            [12]   73 	orl a,#0xA1
      00162A 7A 09            [12]   74 	mov r2,#9	
      00162C 12 16 80         [24]   75 	lcall devaddr
      00162F 22               [24]   76 	ret
                                     77 
      001630                         78 _i2c_read_val:
      001630 7A 08            [12]   79 	mov r2,#8
      001632 74 00            [12]   80 	mov a,#0
      001634 C3               [12]   81 	clr c
      001635 12 16 46         [24]   82 	lcall readloop		
      001638 00               [12]   83 	nop
      001639 00               [12]   84 	nop
      00163A 00               [12]   85 	nop
      00163B C2 97            [12]   86 	clr p1.7	
      00163D 12 16 73         [24]   87 	lcall _i2c_stop
      001640 F5 82            [12]   88 	mov dpl,a
      001642 22               [24]   89 	ret
                                     90 
      001643                         91 readloopc:		
      001643 DA 01            [24]   92 	djnz r2, readloop	
      001645 22               [24]   93 	ret
                                     94 
      001646                         95 readloop:	
      001646 00               [12]   96 	nop
      001647 D2 90            [12]   97 	setb p1.0
      001649 00               [12]   98 	nop
      00164A 30 97 09         [24]   99 	jnb  p1.7, addz
      00164D D3               [12]  100 	setb c
      00164E 33               [12]  101 	rlc a
      00164F 00               [12]  102 	nop		
      001650 C2 90            [12]  103 	clr p1.0
      001652 00               [12]  104 	nop		
      001653 02 16 43         [24]  105 	ljmp readloopc
                                    106 
      001656                        107 addz:
      001656 C3               [12]  108 	clr c
      001657 33               [12]  109 	rlc a
      001658 C2 90            [12]  110 	clr p1.0
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Intel 8051), page 3.
Hexadecimal [24-Bits]



      00165A 00               [12]  111 	nop
      00165B 00               [12]  112 	nop
      00165C 00               [12]  113 	nop	
      00165D 02 16 43         [24]  114 	ljmp readloopc
                                    115 
      001660                        116 _i2c_addr:
      001660 E5 82            [12]  117 	mov a,dpl
      001662 7A 09            [12]  118 	mov r2,#9
      001664 12 16 80         [24]  119 	lcall devaddr
      001667 22               [24]  120 	ret
                                    121 
      001668                        122 _i2c_write_val:
      001668 E5 82            [12]  123 	mov a,dpl
      00166A 7A 09            [12]  124 	mov r2,#9
      00166C 12 16 80         [24]  125 	lcall devaddr
      00166F 12 16 73         [24]  126 	lcall _i2c_stop
      001672 22               [24]  127 	ret
                                    128 
      001673                        129 _i2c_stop:
      001673 C2 97            [12]  130 	clr p1.7
      001675 00               [12]  131 	nop
      001676 00               [12]  132 	nop
      001677 00               [12]  133 	nop
      001678 D2 90            [12]  134 	setb p1.0
      00167A 00               [12]  135 	nop
      00167B 00               [12]  136 	nop
      00167C 00               [12]  137 	nop
      00167D D2 97            [12]  138 	setb p1.7
      00167F 22               [24]  139 	ret
                                    140 
      001680                        141 devaddr:
      001680 C2 90            [12]  142 	clr p1.0
      001682 DA 0B            [24]  143 	djnz r2, bitloop
      001684 D2 97            [12]  144 	setb p1.7	
      001686 00               [12]  145 	nop
      001687 D2 90            [12]  146 	setb p1.0
      001689 00               [12]  147 	nop	
      00168A 00               [12]  148 	nop
      00168B C2 90            [12]  149 	clr p1.0	
      00168D 00               [12]  150 	nop	
      00168E 22               [24]  151 	ret
                                    152 
      00168F                        153 bitloop:	
      00168F 33               [12]  154 	rlc a
      001690 50 03            [24]  155 	jnc sendz
      001692 02 16 A2         [24]  156 	ljmp sendo
                                    157 
      001695                        158 sendz:
      001695 C2 97            [12]  159 	clr p1.7	
      001697 00               [12]  160 	nop
      001698 D2 90            [12]  161 	setb p1.0	
      00169A 00               [12]  162 	nop	
      00169B 00               [12]  163 	nop
      00169C 00               [12]  164 	nop
      00169D C2 90            [12]  165 	clr p1.0
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Intel 8051), page 4.
Hexadecimal [24-Bits]



      00169F 02 16 80         [24]  166 	ljmp devaddr
                                    167 
      0016A2                        168 sendo:
      0016A2 D2 97            [12]  169 	setb p1.7		
      0016A4 00               [12]  170 	nop	
      0016A5 D2 90            [12]  171 	setb p1.0	
      0016A7 00               [12]  172 	nop
      0016A8 00               [12]  173 	nop
      0016A9 00               [12]  174 	nop
      0016AA C2 90            [12]  175 	clr p1.0
      0016AC 02 16 80         [24]  176 	ljmp devaddr
                                    177 
                                    178 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Intel 8051), page 5.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Intel 8051), page 6.
Hexadecimal [24-Bits]

Symbol Table

    TF0     =  00008D L   |     TF1     =  00008F L   |     TF2     =  0000CF L
    TH0     =  00008C L   |     TH1     =  00008D L   |     TH2     =  0000CD L
    TI      =  000099 L   |     TL0     =  00008A L   |     TL1     =  00008B L
    TL2     =  0000CC L   |     TMOD    =  000089 L   |     TR0     =  00008C L
    TR1     =  00008E L   |     TR2     =  0000CA L   |     TXD     =  0000B1 L
    _asm_cal   ****** GX  |   2 _asmtest   000000 GR  |   1 _asmtest   000000 GR
  1 _asmtest   000001 GR  |     _global_   ****** GX  |   2 _i2c_add   00007C GR
  2 _i2c_ini   000023 GR  |   2 _i2c_rea   00003E GR  |   2 _i2c_rea   00004C GR
  2 _i2c_sto   00008F GR  |   2 _i2c_wri   000030 GR  |   2 _i2c_wri   000084 GR
    a       =  0000E0 L   |     a.0     =  0000E0 L   |     a.1     =  0000E1 L
    a.2     =  0000E2 L   |     a.3     =  0000E3 L   |     a.4     =  0000E4 L
    a.5     =  0000E5 L   |     a.6     =  0000E6 L   |     a.7     =  0000E7 L
    ac      =  0000D6 L   |     acc     =  0000E0 L   |     acc.0   =  0000E0 L
    acc.1   =  0000E1 L   |     acc.2   =  0000E2 L   |     acc.3   =  0000E3 L
    acc.4   =  0000E4 L   |     acc.5   =  0000E5 L   |     acc.6   =  0000E6 L
    acc.7   =  0000E7 L   |   2 addz       000072 R   |     b       =  0000F0 L
    b.0     =  0000F0 L   |     b.1     =  0000F1 L   |     b.2     =  0000F2 L
    b.3     =  0000F3 L   |     b.4     =  0000F4 L   |     b.5     =  0000F5 L
    b.6     =  0000F6 L   |     b.7     =  0000F7 L   |   2 bitloop    0000AB R
    cprl2   =  0000C8 L   |     ct2     =  0000C9 L   |     cy      =  0000D7 L
  2 devaddr    00009C R   |     dph     =  000083 L   |     dpl     =  000082 L
    ea      =  0000AF L   |     es      =  0000AC L   |     et0     =  0000A9 L
    et1     =  0000AB L   |     et2     =  0000AD L   |     ex0     =  0000A8 L
    ex1     =  0000AA L   |     exen2   =  0000CB L   |     exf2    =  0000CE L
    f0      =  0000D5 L   |     ie      =  0000A8 L   |     ie.0    =  0000A8 L
    ie.1    =  0000A9 L   |     ie.2    =  0000AA L   |     ie.3    =  0000AB L
    ie.4    =  0000AC L   |     ie.5    =  0000AD L   |     ie.7    =  0000AF L
    ie0     =  000089 L   |     ie1     =  00008B L   |     int0    =  0000B2 L
    int1    =  0000B3 L   |     ip      =  0000B8 L   |     ip.0    =  0000B8 L
    ip.1    =  0000B9 L   |     ip.2    =  0000BA L   |     ip.3    =  0000BB L
    ip.4    =  0000BC L   |     ip.5    =  0000BD L   |     it0     =  000088 L
    it1     =  00008A L   |     ov      =  0000D2 L   |     p       =  0000D0 L
    p0      =  000080 L   |     p0.0    =  000080 L   |     p0.1    =  000081 L
    p0.2    =  000082 L   |     p0.3    =  000083 L   |     p0.4    =  000084 L
    p0.5    =  000085 L   |     p0.6    =  000086 L   |     p0.7    =  000087 L
    p1      =  000090 L   |     p1.0    =  000090 L   |     p1.1    =  000091 L
    p1.2    =  000092 L   |     p1.3    =  000093 L   |     p1.4    =  000094 L
    p1.5    =  000095 L   |     p1.6    =  000096 L   |     p1.7    =  000097 L
    p2      =  0000A0 L   |     p2.0    =  0000A0 L   |     p2.1    =  0000A1 L
    p2.2    =  0000A2 L   |     p2.3    =  0000A3 L   |     p2.4    =  0000A4 L
    p2.5    =  0000A5 L   |     p2.6    =  0000A6 L   |     p2.7    =  0000A7 L
    p3      =  0000B0 L   |     p3.0    =  0000B0 L   |     p3.1    =  0000B1 L
    p3.2    =  0000B2 L   |     p3.3    =  0000B3 L   |     p3.4    =  0000B4 L
    p3.5    =  0000B5 L   |     p3.6    =  0000B6 L   |     p3.7    =  0000B7 L
    pcon    =  000087 L   |     ps      =  0000BC L   |     psw     =  0000D0 L
    psw.0   =  0000D0 L   |     psw.1   =  0000D1 L   |     psw.2   =  0000D2 L
    psw.3   =  0000D3 L   |     psw.4   =  0000D4 L   |     psw.5   =  0000D5 L
    psw.6   =  0000D6 L   |     psw.7   =  0000D7 L   |     pt0     =  0000B9 L
    pt1     =  0000BB L   |     pt2     =  0000BD L   |     px0     =  0000B8 L
    px1     =  0000BA L   |     rb8     =  00009A L   |     rcap2h  =  0000CB L
    rcap2l  =  0000CA L   |     rclk    =  0000CD L   |   2 readloop   000062 R
  2 readloop   00005F R   |     ren     =  00009C L   |     ri      =  000098 L
    rs0     =  0000D3 L   |     rs1     =  0000D4 L   |     rxd     =  0000B0 L
    sbuf    =  000099 L   |     scon    =  000098 L   |     scon.0  =  000098 L
    scon.1  =  000099 L   |     scon.2  =  00009A L   |     scon.3  =  00009B L
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Intel 8051), page 7.
Hexadecimal [24-Bits]

Symbol Table

    scon.4  =  00009C L   |     scon.5  =  00009D L   |     scon.6  =  00009E L
    scon.7  =  00009F L   |   2 sendo      0000BE R   |   2 sendz      0000B1 R
    sm0     =  00009F L   |     sm1     =  00009E L   |     sm2     =  00009D L
    sp      =  000081 L   |     t2con   =  0000C8 L   |     t2con.0 =  0000C8 L
    t2con.1 =  0000C9 L   |     t2con.2 =  0000CA L   |     t2con.3 =  0000CB L
    t2con.4 =  0000CC L   |     t2con.5 =  0000CD L   |     t2con.6 =  0000CE L
    t2con.7 =  0000CF L   |     tb8     =  00009B L   |     tclk    =  0000CC L
    tcon    =  000088 L   |     tcon.0  =  000088 L   |     tcon.1  =  000089 L
    tcon.2  =  00008A L   |     tcon.3  =  00008B L   |     tcon.4  =  00008C L
    tcon.5  =  00008D L   |     tcon.6  =  00008E L   |     tcon.7  =  00008F L
    tf0     =  00008D L   |     tf1     =  00008F L   |     tf2     =  0000CF L
    th0     =  00008C L   |     th1     =  00008D L   |     th2     =  0000CD L
    ti      =  000099 L   |     tl0     =  00008A L   |     tl1     =  00008B L
    tl2     =  0000CC L   |     tmod    =  000089 L   |     tr0     =  00008C L
    tr1     =  00008E L   |     tr2     =  0000CA L   |     txd     =  0000B1 L

ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Intel 8051), page 8.
Hexadecimal [24-Bits]

Area Table

   0 _CODE      size      0   flags    0
   1 OSEG       size      2   flags    0
   2 CSEG       size     CB   flags    0

