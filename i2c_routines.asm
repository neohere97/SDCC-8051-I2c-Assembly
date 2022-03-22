;/***************************************************************************
; * ESD Lab 4
; * Tools: VSCode,make,batchisp,tera term
; * Author: Chinmay Shalawadi
; * Institution: University of Colorado Boulder
; * Mail id: chsh1552@colorado.edu
; * References: lecture slides
; ***************************************************************************/
	.module program
	.optsdcc -mmcs51 --model-large
	
	.globl _i2c_init
	.globl _i2c_stop
	.globl _i2c_write_init
	.globl _i2c_read_init
	.globl _i2c_addr
	.globl _i2c_write_val
	.globl _i2c_read_val
	.globl _i2c_eeprom_reset
	

	.area CSEG    
_i2c_init:
	setb p1.0
	setb p1.7
	clr p1.7
	ret

_i2c_write_init:
	lcall _i2c_init
	mov a,dpl
	rl a
	orl a,#0xA0
	mov r2,#9	
	lcall devaddr
	ret

_i2c_read_init:
	lcall _i2c_init
	mov a,dpl
	rl a
	orl a,#0xA1
	mov r2,#9	
	lcall devaddr
	ret

_i2c_read_val:
	mov r2,#8
	mov a,#0
	clr c
	lcall readloop	
	clr p1.7	
	lcall _i2c_stop
	mov dpl,a
	ret

readloopc:		
	djnz r2, readloop	
	ret

readloop:	
	setb p1.0
	jnb  p1.7, addz
	setb c
	rlc a	
	clr p1.0	
	ljmp readloopc

addz:
	clr c
	rlc a
	clr p1.0
	ljmp readloopc

_i2c_addr:
	mov a,dpl
	mov r2,#9
	lcall devaddr
	ret

_i2c_write_val:
	mov a,dpl
	mov r2,#9
	lcall devaddr
	lcall _i2c_stop
	ret

_i2c_stop:
	clr p1.7
	setb p1.0
	setb p1.7
	ret

devaddr:
	clr p1.0
	djnz r2, bitloop
	setb p1.7	
	setb p1.0
	clr p1.0		
	ret

bitloop:	
	rlc a
	jnc sendz
	ljmp sendo

sendz:
	clr p1.7		
	setb p1.0		
	clr p1.0
	ljmp devaddr

sendo:
	setb p1.7		
	setb p1.0		
	clr p1.0
	ljmp devaddr


_i2c_eeprom_reset:	
	lcall _i2c_init
	mov r2,#9
	mov a,#0xFF
	lcall devaddr
	lcall _i2c_init
	lcall _i2c_stop
	ret
