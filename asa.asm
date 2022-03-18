	.module program
	.optsdcc -mmcs51 --model-large
	
	.globl _asmtest_PARM_3
	.globl _asmtest_PARM_2
	.globl _global_var_test
	.globl _asmtest
	.globl _asm_call	
	.globl _i2c_init
	.globl _i2c_stop
	.globl _i2c_write_init
	.globl _i2c_read_init
	.globl _i2c_addr
	.globl _i2c_write_val
	.globl _i2c_read_val
	
	
	.area	OSEG   

_asmtest_PARM_2:
	.ds 1
_asmtest_PARM_3:
	.ds 1

	.area CSEG    
_asmtest:
	mov	r7,dpl	
	mov	dptr,#_asmtest_PARM_2
	movx a, @dptr
	mov r6, a
	mov dptr,#_asmtest_PARM_3
	movx a,@dptr
	mov b,r6	
	div	ab
	mov	a,r7
	mul	ab
	mov	dpl,a	
	mov dptr,#_asmtest_PARM_2
	movx @dptr,a
	mov dpl,#0x55
	lcall _asm_call	
	mov dptr,#_asmtest_PARM_2
	movx a,@dptr
	mov dpl,a
	ret


_i2c_init:
	setb p1.0
	setb p1.7
	nop
	nop
	nop
	clr p1.7
	nop
	nop
	nop
	ret

_i2c_write_init:
	mov a,dpl
	rl a
	orl a,#0xA0
	mov r2,#9	
	ljmp devaddr
	ret

_i2c_read_init:
	mov a,dpl
	rl a
	orl a,#0xA1
	mov r2,#9	
	ljmp devaddr
	ret

_i2c_read_val:
	mov r2,#9
	ljmp readloop
	clr p1.0
	clr p1.7
	nop
	nop
	setb p1.0
	nop
	nop
	nop
	nop
	clr p1.0
	nop
	nop
	nop
	nop
	ret

readloopc:
	djnz r2, readloop
	ret

readloop:
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
	ljmp readloopc

_i2c_addr:
	mov a,dpl
	mov r2,#9
	ljmp devaddr
	ret

_i2c_write_val:
	mov a,dpl
	mov r2,#9
	ljmp devaddr
	ret

_i2c_stop:
	clr p1.7
	nop
	nop
	nop
	setb p1.0
	nop
	nop
	nop
	setb p1.7
	ret

devaddr:
	clr p1.0
	djnz r2, bitloop
	setb p1.7
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
	clr p1.0
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ret

bitloop:	
	rlc a
	jnc sendz
	ljmp sendo

sendz:
	clr p1.7
	nop
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
	nop
	nop
	nop
	clr p1.0
	ljmp devaddr

sendo:
	setb p1.7
	nop
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
	nop
	nop
	nop
	clr p1.0
	ljmp devaddr


