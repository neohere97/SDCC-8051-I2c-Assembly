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
      001555                         26 _asmtest:
      001555 AF 82            [24]   27 	mov	r7,dpl	
      001557 90 00 1A         [24]   28 	mov	dptr,#_asmtest_PARM_2
      00155A E0               [24]   29 	movx a, @dptr
      00155B FE               [12]   30 	mov r6, a
      00155C 90 00 1B         [24]   31 	mov dptr,#_asmtest_PARM_3
      00155F E0               [24]   32 	movx a,@dptr
      001560 8E F0            [24]   33 	mov b,r6	
      001562 84               [48]   34 	div	ab
      001563 EF               [12]   35 	mov	a,r7
      001564 A4               [48]   36 	mul	ab
      001565 F5 82            [12]   37 	mov	dpl,a	
      001567 90 00 1A         [24]   38 	mov dptr,#_asmtest_PARM_2
      00156A F0               [24]   39 	movx @dptr,a
      00156B 75 82 55         [24]   40 	mov dpl,#0x55
      00156E 12 15 10         [24]   41 	lcall _asm_call	
      001571 90 00 1A         [24]   42 	mov dptr,#_asmtest_PARM_2
      001574 E0               [24]   43 	movx a,@dptr
      001575 F5 82            [12]   44 	mov dpl,a
      001577 22               [24]   45 	ret
                                     46 
                                     47 
      001578                         48 _i2c_init:
      001578 D2 90            [12]   49 	setb p1.0
      00157A D2 97            [12]   50 	setb p1.7
      00157C 00               [12]   51 	nop
      00157D 00               [12]   52 	nop
      00157E 00               [12]   53 	nop
      00157F C2 97            [12]   54 	clr p1.7
      001581 00               [12]   55 	nop
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Intel 8051), page 2.
Hexadecimal [24-Bits]



      001582 00               [12]   56 	nop
      001583 00               [12]   57 	nop
      001584 22               [24]   58 	ret
                                     59 
      001585                         60 _i2c_write_init:
      001585 E5 82            [12]   61 	mov a,dpl
      001587 23               [12]   62 	rl a
      001588 44 A0            [12]   63 	orl a,#0xA0
      00158A 7A 09            [12]   64 	mov r2,#9	
      00158C 02 15 E8         [24]   65 	ljmp devaddr
      00158F 22               [24]   66 	ret
                                     67 
      001590                         68 _i2c_read_init:
      001590 E5 82            [12]   69 	mov a,dpl
      001592 23               [12]   70 	rl a
      001593 44 A1            [12]   71 	orl a,#0xA1
      001595 7A 09            [12]   72 	mov r2,#9	
      001597 02 15 E8         [24]   73 	ljmp devaddr
      00159A 22               [24]   74 	ret
                                     75 
      00159B                         76 _i2c_read_val:
      00159B 7A 09            [12]   77 	mov r2,#9
      00159D 02 15 B6         [24]   78 	ljmp readloop
      0015A0 C2 90            [12]   79 	clr p1.0
      0015A2 C2 97            [12]   80 	clr p1.7
      0015A4 00               [12]   81 	nop
      0015A5 00               [12]   82 	nop
      0015A6 D2 90            [12]   83 	setb p1.0
      0015A8 00               [12]   84 	nop
      0015A9 00               [12]   85 	nop
      0015AA 00               [12]   86 	nop
      0015AB 00               [12]   87 	nop
      0015AC C2 90            [12]   88 	clr p1.0
      0015AE 00               [12]   89 	nop
      0015AF 00               [12]   90 	nop
      0015B0 00               [12]   91 	nop
      0015B1 00               [12]   92 	nop
      0015B2 22               [24]   93 	ret
                                     94 
      0015B3                         95 readloopc:
      0015B3 DA 01            [24]   96 	djnz r2, readloop
      0015B5 22               [24]   97 	ret
                                     98 
      0015B6                         99 readloop:
      0015B6 00               [12]  100 	nop
      0015B7 00               [12]  101 	nop
      0015B8 00               [12]  102 	nop
      0015B9 D2 90            [12]  103 	setb p1.0
      0015BB 00               [12]  104 	nop
      0015BC 00               [12]  105 	nop
      0015BD 00               [12]  106 	nop
      0015BE 00               [12]  107 	nop
      0015BF 00               [12]  108 	nop
      0015C0 00               [12]  109 	nop
      0015C1 00               [12]  110 	nop
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Intel 8051), page 3.
Hexadecimal [24-Bits]



      0015C2 C2 90            [12]  111 	clr p1.0
      0015C4 00               [12]  112 	nop
      0015C5 00               [12]  113 	nop
      0015C6 00               [12]  114 	nop
      0015C7 00               [12]  115 	nop
      0015C8 02 15 B3         [24]  116 	ljmp readloopc
                                    117 
      0015CB                        118 _i2c_addr:
      0015CB E5 82            [12]  119 	mov a,dpl
      0015CD 7A 09            [12]  120 	mov r2,#9
      0015CF 02 15 E8         [24]  121 	ljmp devaddr
      0015D2 22               [24]  122 	ret
                                    123 
      0015D3                        124 _i2c_write_val:
      0015D3 E5 82            [12]  125 	mov a,dpl
      0015D5 7A 09            [12]  126 	mov r2,#9
      0015D7 02 15 E8         [24]  127 	ljmp devaddr
      0015DA 22               [24]  128 	ret
                                    129 
      0015DB                        130 _i2c_stop:
      0015DB C2 97            [12]  131 	clr p1.7
      0015DD 00               [12]  132 	nop
      0015DE 00               [12]  133 	nop
      0015DF 00               [12]  134 	nop
      0015E0 D2 90            [12]  135 	setb p1.0
      0015E2 00               [12]  136 	nop
      0015E3 00               [12]  137 	nop
      0015E4 00               [12]  138 	nop
      0015E5 D2 97            [12]  139 	setb p1.7
      0015E7 22               [24]  140 	ret
                                    141 
      0015E8                        142 devaddr:
      0015E8 C2 90            [12]  143 	clr p1.0
      0015EA DA 1A            [24]  144 	djnz r2, bitloop
      0015EC D2 97            [12]  145 	setb p1.7
      0015EE 00               [12]  146 	nop
      0015EF 00               [12]  147 	nop
      0015F0 00               [12]  148 	nop
      0015F1 00               [12]  149 	nop
      0015F2 00               [12]  150 	nop
      0015F3 00               [12]  151 	nop
      0015F4 D2 90            [12]  152 	setb p1.0
      0015F6 00               [12]  153 	nop
      0015F7 00               [12]  154 	nop
      0015F8 00               [12]  155 	nop
      0015F9 00               [12]  156 	nop
      0015FA C2 90            [12]  157 	clr p1.0
      0015FC 00               [12]  158 	nop
      0015FD 00               [12]  159 	nop
      0015FE 00               [12]  160 	nop
      0015FF 00               [12]  161 	nop
      001600 00               [12]  162 	nop
      001601 00               [12]  163 	nop
      001602 00               [12]  164 	nop
      001603 00               [12]  165 	nop
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Intel 8051), page 4.
Hexadecimal [24-Bits]



      001604 00               [12]  166 	nop
      001605 22               [24]  167 	ret
                                    168 
      001606                        169 bitloop:	
      001606 33               [12]  170 	rlc a
      001607 50 03            [24]  171 	jnc sendz
      001609 02 16 25         [24]  172 	ljmp sendo
                                    173 
      00160C                        174 sendz:
      00160C C2 97            [12]  175 	clr p1.7
      00160E 00               [12]  176 	nop
      00160F 00               [12]  177 	nop
      001610 00               [12]  178 	nop
      001611 00               [12]  179 	nop
      001612 00               [12]  180 	nop
      001613 00               [12]  181 	nop
      001614 00               [12]  182 	nop
      001615 D2 90            [12]  183 	setb p1.0
      001617 00               [12]  184 	nop	
      001618 00               [12]  185 	nop
      001619 00               [12]  186 	nop
      00161A 00               [12]  187 	nop
      00161B 00               [12]  188 	nop
      00161C 00               [12]  189 	nop
      00161D 00               [12]  190 	nop
      00161E 00               [12]  191 	nop
      00161F 00               [12]  192 	nop
      001620 C2 90            [12]  193 	clr p1.0
      001622 02 15 E8         [24]  194 	ljmp devaddr
                                    195 
      001625                        196 sendo:
      001625 D2 97            [12]  197 	setb p1.7
      001627 00               [12]  198 	nop
      001628 00               [12]  199 	nop
      001629 00               [12]  200 	nop
      00162A 00               [12]  201 	nop
      00162B 00               [12]  202 	nop
      00162C 00               [12]  203 	nop
      00162D 00               [12]  204 	nop
      00162E D2 90            [12]  205 	setb p1.0
      001630 00               [12]  206 	nop	
      001631 00               [12]  207 	nop
      001632 00               [12]  208 	nop
      001633 00               [12]  209 	nop
      001634 00               [12]  210 	nop
      001635 00               [12]  211 	nop
      001636 00               [12]  212 	nop
      001637 00               [12]  213 	nop
      001638 00               [12]  214 	nop
      001639 C2 90            [12]  215 	clr p1.0
      00163B 02 15 E8         [24]  216 	ljmp devaddr
                                    217 
                                    218 
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
  1 _asmtest   000001 GR  |     _global_   ****** GX  |   2 _i2c_add   000076 GR
  2 _i2c_ini   000023 GR  |   2 _i2c_rea   00003B GR  |   2 _i2c_rea   000046 GR
  2 _i2c_sto   000086 GR  |   2 _i2c_wri   000030 GR  |   2 _i2c_wri   00007E GR
    a       =  0000E0 L   |     a.0     =  0000E0 L   |     a.1     =  0000E1 L
    a.2     =  0000E2 L   |     a.3     =  0000E3 L   |     a.4     =  0000E4 L
    a.5     =  0000E5 L   |     a.6     =  0000E6 L   |     a.7     =  0000E7 L
    ac      =  0000D6 L   |     acc     =  0000E0 L   |     acc.0   =  0000E0 L
    acc.1   =  0000E1 L   |     acc.2   =  0000E2 L   |     acc.3   =  0000E3 L
    acc.4   =  0000E4 L   |     acc.5   =  0000E5 L   |     acc.6   =  0000E6 L
    acc.7   =  0000E7 L   |     b       =  0000F0 L   |     b.0     =  0000F0 L
    b.1     =  0000F1 L   |     b.2     =  0000F2 L   |     b.3     =  0000F3 L
    b.4     =  0000F4 L   |     b.5     =  0000F5 L   |     b.6     =  0000F6 L
    b.7     =  0000F7 L   |   2 bitloop    0000B1 R   |     cprl2   =  0000C8 L
    ct2     =  0000C9 L   |     cy      =  0000D7 L   |   2 devaddr    000093 R
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
    rclk    =  0000CD L   |   2 readloop   000061 R   |   2 readloop   00005E R
    ren     =  00009C L   |     ri      =  000098 L   |     rs0     =  0000D3 L
    rs1     =  0000D4 L   |     rxd     =  0000B0 L   |     sbuf    =  000099 L
    scon    =  000098 L   |     scon.0  =  000098 L   |     scon.1  =  000099 L
    scon.2  =  00009A L   |     scon.3  =  00009B L   |     scon.4  =  00009C L
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Intel 8051), page 7.
Hexadecimal [24-Bits]

Symbol Table

    scon.5  =  00009D L   |     scon.6  =  00009E L   |     scon.7  =  00009F L
  2 sendo      0000D0 R   |   2 sendz      0000B7 R   |     sm0     =  00009F L
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

ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Intel 8051), page 8.
Hexadecimal [24-Bits]

Area Table

   0 _CODE      size      0   flags    0
   1 OSEG       size      2   flags    0
   2 CSEG       size     E9   flags    0

