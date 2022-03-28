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
	
	.globl _asmtest_PARM_3
	.globl _asmtest_PARM_2
	.globl _global_var_test
	.globl _asmtest
	.globl _asm_call	
	
	.area	OSEG   

_asmtest_PARM_2:
	.ds 1
_asmtest_PARM_3:
	.ds 1

	.area CSEG    
_asmtest:
	mov	r7,dpl						;Moving Param1 into r7
	mov	dptr,#_asmtest_PARM_2		;Moving Param2 from memory into r6
	movx a, @dptr
	mov r6, a
	mov dptr,#_asmtest_PARM_3
	movx a,@dptr					;Moving param3 into a
	mov b,r6		
	div	ab		
	mov	a,r7
	mul	ab
	mov	dpl,a	
	mov dptr,#_asmtest_PARM_2
	movx @dptr,a					;storing the result of the math in memory 
	mov dpl,#0x55	
	lcall _asm_call					;calling C function back with 0x55 as parameter
	mov dptr,#_asmtest_PARM_2
	movx a,@dptr
	mov dpl,a
	ret


