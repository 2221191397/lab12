	.file	"flags4.c"
	.text
	.globl	main
	.type	main, @function
main:

	pushq	%rbp
	movq	%rsp, %rbp

	movq	$-1, -48(%rbp)
	movq	-48(%rbp), %rax
	addq	$1, %rax
	
	; carry flag
	
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	subq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	
	; Zero flag
	
	
	movabsq	$9223372036854775807, %rcx
	movq	%rcx, -24(%rbp)
	movq	$100, -16(%rbp)
	movq	-16(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	
	; Sign flag
	
	movq	%rcx, -24(%rbp)
	movq	%rcx, -16(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	
	; Negative Overflow flag
	
	movabsq	$-9223372036854775807, %rax
	movq	%rax, -24(%rbp)
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	
	; Positive Overflow flag
	
	movl	$0, %eax
	popq	%rbp
	ret


4:
