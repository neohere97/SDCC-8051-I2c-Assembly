;/***************************************************************************
; * ESD Lab 4
; * Tools: VSCode,make,batchisp,tera term
; * Author: Chinmay Shalawadi
; * Institution: University of Colorado Boulder
; * Mail id: chsh1552@colorado.edu
; * References: lecture slides
; ***************************************************************************/

;Max speed reached with these subroutines is 166.6Kbits/sec
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
	.globl _i2c_ioex_read_init
	.globl _i2c_ioex_write_init
	.globl _i2c_ioex_read_val
	

	.area CSEG    
_i2c_init:
	setb p1.0		;sending the start condition
	setb p3.5
	clr p3.5
	ret

_i2c_write_init:
	lcall _i2c_init
	mov a,dpl		;moving the parameter to a
	rl a
	orl a,#0xA0		;adding the block number to init sequence
	mov r2,#9		;inititialing coutner variable
	lcall writeloop	
	ret

_i2c_ioex_read_init:
	lcall _i2c_init
	mov a,#0x7F		;adding the block number to init sequence
	mov r2,#9		;inititialing coutner variable
	lcall writeloop		
	ret

_i2c_ioex_write_init:
	lcall _i2c_init
	mov a,#0x7E		;adding the block number to init sequence
	mov r2,#9		;inititialing coutner variable
	lcall writeloop		
	ret


_i2c_read_init:
	lcall _i2c_init ;sends i2c start bit
	mov a,dpl		;moving read parameter to a
	rl a			;rotate left and OR operation with read bit 1
	orl a,#0xA1
	mov r2,#9		;r2 is counter
	lcall writeloop 
	ret

_i2c_read_val:
	mov r2,#8       ;initializing the counter r2
	mov a,#0		;initializing a to be 0
	clr c			;clearing the carry bit so that it can be used to read data
	lcall readloop		
	clr p3.5		
	lcall _i2c_stop ;sending the stop signal
	mov dpl,a		;moving the data read into dpl, to be sent back to c funciton
	ret

_i2c_ioex_read_val:
	mov r2,#8       ;initializing the counter r2
	mov a,#0		;initializing a to be 0
	clr c			;clearing the carry bit so that it can be used to read data
	lcall readloop		
	clr p3.5
	nop
	nop
	nop
	setb p1.0
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	clr p1.0	
	nop
	nop
	nop
	nop	
	lcall _i2c_stop ;sending the stop signal
	mov dpl,a		;moving the data read into dpl, to be sent back to c funciton
	ret

readloopc:		
	djnz r2, readloop	;call readloop till r2 counter is 0
	ret

readloop:	
	setb p1.0		 ;setting the clock high	
	jnb  p3.5, addz	 ;sampling the data line	
	setb c			 ;setting carry if data line is 1
	rlc a			 ;rotating left
	clr p1.0		 ;setting clock back down
	ljmp readloopc	 ;back to control condition loop

addz:				 ;if data line is 0 add zero to accumulator bit
	clr c
	rlc a
	clr p1.0
	ljmp readloopc

_i2c_addr:			;this routine writes the i2c address on the bus
	mov a,dpl
	mov r2,#9
	lcall writeloop
	ret

_i2c_write_val:		;this routine writes value after address
	mov a,dpl
	mov r2,#9
	lcall writeloop
	lcall _i2c_stop
	ret

_i2c_stop:			;assembly routine to send stop condition	
	clr p3.5
	setb p1.0
	setb p3.5
	ret

writeloop:			;sets the initial condition to write data on the bus and calls bitloop
	clr p1.0
	djnz r2, bitloop
	nop
	nop
	nop
	nop
	nop
	nop	
	setb p3.5	
	nop
	nop
	nop
	nop
	nop
	nop	
	setb p1.0
	nop
	nop
	nop
	nop
	nop
	nop	
	clr p1.0
	nop
	nop
	nop
	nop
	nop
	nop			
	ret

bitloop:			;sends 1 or 0 using RLC instruction
	rlc a
	jnc sendzero    
	ljmp sendone

sendzero:	
	nop		;sends a zero on the bus with clock pulse
	clr p3.5	
	nop
	nop
	nop	
	setb p1.0	
	nop
	nop
	nop
	nop
	nop
	nop	
	clr p1.0
	nop
	nop
	nop
	nop
	nop
	ljmp writeloop

sendone:			;sends a one on the bus with clock pulse
	nop
	setb p3.5		
	nop
	nop
	nop
	setb p1.0		
	nop
	nop
	nop
	nop
	nop
	nop
	clr p1.0
	nop
	nop
	nop
	nop
	nop
	ljmp writeloop


_i2c_eeprom_reset:	;eeprom reset routine 
	lcall _i2c_init
	mov r2,#9
	mov a,#0xFF
	lcall writeloop
	lcall _i2c_init
	lcall _i2c_stop
	ret
