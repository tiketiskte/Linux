	.file	"arith.c"
	.text
	.globl	arith
	.type	arith, @function
arith:
.LFB0:
	.cfi_startproc
	movl	12(%esp), %eax
	movl	8(%esp), %edx
	xorl	4(%esp), %edx
	leal	(%eax,%eax,2), %eax
	sall	$4, %eax
	andl	$252645135, %edx
	subl	%edx, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	arith, .-arith
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
