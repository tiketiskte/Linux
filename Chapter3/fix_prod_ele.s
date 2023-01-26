	.file	"fix_prod_ele.c"
	.text
	.globl	fix_prod_ele
	.type	fix_prod_ele, @function
fix_prod_ele:
.LFB0:
	.cfi_startproc
	endbr64
	movq	%rdx, %rax
	salq	$6, %rax
	addq	%rax, %rdi
	salq	$2, %rdx
	leaq	(%rsi,%rdx), %rax
	leaq	1024(%rsi,%rdx), %rsi
	movl	$0, %ecx
.L2:
	movl	(%rax), %edx
	addl	(%rdi), %edx
	addl	%edx, %ecx
	addq	$4, %rdi
	addq	$64, %rax
	cmpq	%rsi, %rax
	jne	.L2
	movl	%ecx, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	fix_prod_ele, .-fix_prod_ele
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
