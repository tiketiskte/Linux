	.file	"switch_structure.c"
	.text
	.globl	swich_eg
	.type	swich_eg, @function
swich_eg:
.LFB0:
	.cfi_startproc
	subq	$100, %rsi
	cmpq	$6, %rsi
	ja	.L8
	jmp	*.L4(,%rsi,8)
	.section	.rodata
	.align 8
	.align 4
.L4:
	.quad	.L3
	.quad	.L8
	.quad	.L5
	.quad	.L6
	.quad	.L7
	.quad	.L8
	.quad	.L7
	.text
.L3:
	leaq	(%rdi,%rdi,2), %rax
	leaq	(%rdi,%rax,4), %rdi
	jmp	.L2
.L5:
	addq	$10, %rdi
.L6:
	addq	$11, %rdi
	jmp	.L2
.L7:
	imulq	%rdi, %rdi
	jmp	.L2
.L8:
	movl	$0, %edi
.L2:
	movq	%rdi, (%rdx)
	ret
	.cfi_endproc
.LFE0:
	.size	swich_eg, .-swich_eg
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
