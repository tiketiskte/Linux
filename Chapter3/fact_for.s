	.file	"fact_for.c"
	.text
	.globl	fact_for
	.type	fact_for, @function
fact_for:
.LFB0:
	.cfi_startproc
	cmpq	$1, %rdi
	jle	.L4
	movl	$1, %eax
	movl	$2, %edx
.L3:
	imulq	%rdx, %rax
	addq	$1, %rdx
	cmpq	%rdx, %rdi
	jge	.L3
	rep ret
.L4:
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	fact_for, .-fact_for
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
