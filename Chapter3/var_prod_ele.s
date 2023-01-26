	.file	"var_prod_ele.c"
	.text
	.globl	var_prod_ele
	.type	var_prod_ele, @function
var_prod_ele:
.LFB0:
	.cfi_startproc
	endbr64
	testq	%rdi, %rdi
	jle	.L4
	salq	$2, %rcx
	movq	%rdi, %rax
	imulq	%rcx, %rax
	addq	%rax, %rsi
	salq	$2, %rdi
	addq	%rcx, %rdx
	leaq	(%rsi,%rdi), %r8
	movl	$0, %ecx
.L3:
	movl	(%rsi), %eax
	imull	(%rdx), %eax
	addl	%eax, %ecx
	addq	$4, %rsi
	addq	%rdi, %rdx
	cmpq	%r8, %rsi
	jne	.L3
.L1:
	movl	%ecx, %eax
	ret
.L4:
	movl	$0, %ecx
	jmp	.L1
	.cfi_endproc
.LFE0:
	.size	var_prod_ele, .-var_prod_ele
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
