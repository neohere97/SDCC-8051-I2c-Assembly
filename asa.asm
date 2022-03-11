	.module program
	.optsdcc -mmcs51 --model-large
	
	.globl _asmtest_PARM_3
	.globl _asmtest_PARM_2
	.globl _global_var_test
	.globl _asmtest
	
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
	; mov r7,a
	; mov dptr,#_global_var_test
	; movx a,@dptr
	; mov b,r7
	; mul ab
	mov	dpl,a
	ret

