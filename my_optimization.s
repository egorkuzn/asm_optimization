	.file	"prog.cpp"
	.text
	.globl	_Z5func1PdS_
	.type	_Z5func1PdS_, @function
_Z5func1PdS_:
.LFB2:
	pushq	%rbp
.LCFI0:
	movq	%rsp, %rbp
.LCFI1:
	pushq	%rbx
	subq	$40, %rsp
.LCFI2:
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	xor 	%r14d, %r14d
.L3:
	cmpl	$49999999, %r14d
	jg	.L2
	leal 	(%r14d), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	call	rand
	pxor	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	movsd	.LC0(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	.LC1(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	.LC2(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, (%rbx)
	leal	(%r14d), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	call	rand
	pxor	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	movsd	.LC0(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	.LC1(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	.LC2(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, (%rbx)
	inc 	%r14d
	jmp	.L3
.L2:
	movl	$0, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
.LCFI3:
	ret
.LFE2:
	.size	_Z5func1PdS_, .-_Z5func1PdS_
	.globl	_Z5func2PdS_
	.type	_Z5func2PdS_, @function
_Z5func2PdS_:
.LFB3:
	pushq	%rbp
.LCFI4:
	movq	%rsp, %rbp
.LCFI5:
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	xor		%r15d , %r15d
.L7:
	cmpl	$49999999, %r15d
	jg	.L6
	leal	(%r15d), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movsd	-40(%rbp), %xmm0
	call	sin
	movapd	%xmm0, %xmm1
	movsd	.LC4(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)
	leal	(%r15d), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movsd	-48(%rbp), %xmm0
	call	cos
	mulsd	-40(%rbp), %xmm0
	movsd	-8(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	inc		%r15d
	jmp	.L7
.L6:
	movsd	-8(%rbp), %xmm0
	leave
.LCFI6:
	ret
.LFE3:
	.size	_Z5func2PdS_, .-_Z5func2PdS_
	.section	.rodata
.LC5:
	.string	"\n\n result = %lf"
	.text
	.globl	main
	.type	main, @function
main:
.LFB4:
	pushq	%rbp
.LCFI7:
	movq	%rsp, %rbp
.LCFI8:
	movl	$400000000, %edi
	call	_Znam
	movq	%rax, %r13
	movl	$400000000, %edi
	call	_Znam
	movq	%rax, %r12
	leaq	(%r12), %rsi
	leaq	(%r13), %rdi
	call	_Z5func1PdS_
	leaq	(%r12), %rsi
	leaq	(%r13), %rdi
	call	_Z5func2PdS_
	movl	$.LC5, %edi
	movl	$1, %eax
	call	printf
	leaq	(%r13), %rdi
	call	_ZdlPv
	leaq	(%r12), %rdi
	call	_ZdlPv
	movl	$0, %eax
	leave
.LCFI9:
	ret
.LFE4:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1079574528
	.align 8
.LC1:
	.long	4290772992
	.long	1105199103
	.align 8
.LC2:
	.long	0
	.long	1078525952
	.align 8
.LC4:
	.long	3100958126
	.long	1075678820
	.section	.eh_frame,"a",@progbits
.LEFDE1:
	.ident	"GCC: (Ubuntu 5.5.0-12ubuntu1~16.04) 5.5.0 20171010"
	.section	.note.GNU-stack,"",@progbits
