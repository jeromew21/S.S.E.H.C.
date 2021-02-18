	.text
	.file	"pieces.cpp"
	.globl	_Z16getMaterialValuei           # -- Begin function _Z16getMaterialValuei
	.p2align	4, 0x90
	.type	_Z16getMaterialValuei,@function
_Z16getMaterialValuei:                  # @_Z16getMaterialValuei
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -8(%rbp)
	cmpl	$-1, -8(%rbp)
	jne	.LBB0_2
# %bb.1:
	movl	$0, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movl	-8(%rbp), %eax
	sarl	$1, %eax
	movslq	%eax, %rcx
	leaq	MATERIAL_TABLE(%rip), %rdx
	movl	(%rdx,%rcx,4), %eax
	movl	%eax, -4(%rbp)
.LBB0_3:
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	_Z16getMaterialValuei, .Lfunc_end0-_Z16getMaterialValuei
	.cfi_endproc
                                        # -- End function
	.type	MATERIAL_TABLE,@object          # @MATERIAL_TABLE
	.data
	.globl	MATERIAL_TABLE
	.p2align	4
MATERIAL_TABLE:
	.long	100                             # 0x64
	.long	350                             # 0x15e
	.long	350                             # 0x15e
	.long	525                             # 0x20d
	.long	1000                            # 0x3e8
	.zero	32
	.size	MATERIAL_TABLE, 52

	.ident	"clang version 11.0.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym MATERIAL_TABLE
