	.text
	.file	"bitboards.cpp"
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function __cxx_global_var_init
	.type	__cxx_global_var_init,@function
__cxx_global_var_init:                  # @__cxx_global_var_init
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	_ZStL8__ioinit(%rip), %rdi
	callq	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	leaq	_ZStL8__ioinit(%rip), %rsi
	leaq	__dso_handle(%rip), %rdx
	callq	__cxa_atexit@PLT
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	__cxx_global_var_init, .Lfunc_end0-__cxx_global_var_init
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN9move_maps17isAttackedSlidingEmmmm # -- Begin function _ZN9move_maps17isAttackedSlidingEmmmm
	.p2align	4, 0x90
	.type	_ZN9move_maps17isAttackedSlidingEmmmm,@function
_ZN9move_maps17isAttackedSlidingEmmmm:  # @_ZN9move_maps17isAttackedSlidingEmmmm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	_Z11u64ToSquarem
	movl	%eax, %edi
	callq	_Z13isValidSquarei
	testb	$1, %al
	jne	.LBB1_1
	jmp	.LBB1_2
.LBB1_1:
	jmp	.LBB1_3
.LBB1_2:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$286, %edx                      # imm = 0x11E
	leaq	.L__PRETTY_FUNCTION__._ZN9move_maps17isAttackedSlidingEmmmm(%rip), %rcx
	callq	__assert_fail@PLT
.LBB1_3:
	movq	-24(%rbp), %rdi
	callq	_Z11u64ToSquarem
	movl	%eax, -44(%rbp)
	movq	-32(%rbp), %rcx
	movl	-44(%rbp), %edi
	movq	-16(%rbp), %rsi
	movq	%rcx, -56(%rbp)                 # 8-byte Spill
	callq	_ZN9move_maps9rookMovesEim
	movq	-56(%rbp), %rcx                 # 8-byte Reload
	andq	%rax, %rcx
	cmpq	$0, %rcx
	jne	.LBB1_5
# %bb.4:
	movq	-40(%rbp), %rax
	movl	-44(%rbp), %edi
	movq	-16(%rbp), %rsi
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	callq	_ZN9move_maps11bishopMovesEim
	movq	-64(%rbp), %rcx                 # 8-byte Reload
	andq	%rax, %rcx
	cmpq	$0, %rcx
	je	.LBB1_6
.LBB1_5:
	movb	$1, -1(%rbp)
	jmp	.LBB1_7
.LBB1_6:
	movb	$0, -1(%rbp)
.LBB1_7:
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	_ZN9move_maps17isAttackedSlidingEmmmm, .Lfunc_end1-_ZN9move_maps17isAttackedSlidingEmmmm
	.cfi_endproc
                                        # -- End function
	.section	.text._Z13isValidSquarei,"axG",@progbits,_Z13isValidSquarei,comdat
	.weak	_Z13isValidSquarei              # -- Begin function _Z13isValidSquarei
	.p2align	4, 0x90
	.type	_Z13isValidSquarei,@function
_Z13isValidSquarei:                     # @_Z13isValidSquarei
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	movb	%al, -5(%rbp)                   # 1-byte Spill
	jl	.LBB2_2
# %bb.1:
	cmpl	$64, -4(%rbp)
	setl	%al
	movb	%al, -5(%rbp)                   # 1-byte Spill
.LBB2_2:
	movb	-5(%rbp), %al                   # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	_Z13isValidSquarei, .Lfunc_end2-_Z13isValidSquarei
	.cfi_endproc
                                        # -- End function
	.section	.text._Z11u64ToSquarem,"axG",@progbits,_Z11u64ToSquarem,comdat
	.weak	_Z11u64ToSquarem                # -- Begin function _Z11u64ToSquarem
	.p2align	4, 0x90
	.type	_Z11u64ToSquarem,@function
_Z11u64ToSquarem:                       # @_Z11u64ToSquarem
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB3_2
# %bb.1:
	jmp	.LBB3_3
.LBB3_2:
	leaq	.L.str.4(%rip), %rdi
	leaq	.L.str.5(%rip), %rsi
	movl	$127, %edx
	leaq	.L__PRETTY_FUNCTION__._Z11u64ToSquarem(%rip), %rcx
	callq	__assert_fail@PLT
.LBB3_3:
	movq	-8(%rbp), %rdi
	callq	_Z14bitscanForwardm
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	_Z11u64ToSquarem, .Lfunc_end3-_Z11u64ToSquarem
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN9move_maps9rookMovesEim      # -- Begin function _ZN9move_maps9rookMovesEim
	.p2align	4, 0x90
	.type	_ZN9move_maps9rookMovesEim,@function
_ZN9move_maps9rookMovesEim:             # @_ZN9move_maps9rookMovesEim
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movslq	-4(%rbp), %rax
	leaq	_ZL19ROOK_MASKED_ATTACKS(%rip), %rcx
	movq	(%rcx,%rax,8), %rax
	andq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movslq	-4(%rbp), %rcx
	leaq	ROOK_MAGIC_NUMBERS(%rip), %rdx
	imulq	(%rdx,%rcx,8), %rax
	movslq	-4(%rbp), %rcx
	leaq	ROOK_MAGIC_SHIFTS(%rip), %rdx
	movl	$64, %edi
	subl	(%rdx,%rcx,4), %edi
	movl	%edi, %edi
	movl	%edi, %ecx
                                        # kill: def $cl killed $rcx
	shrq	%cl, %rax
	movq	%rax, -32(%rbp)
	movslq	-4(%rbp), %rax
	shlq	$15, %rax
	leaq	ROOK_MAGIC_TABLE(%rip), %rdx
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	(%rdx,%rax,8), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	_ZN9move_maps9rookMovesEim, .Lfunc_end4-_ZN9move_maps9rookMovesEim
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9move_maps11bishopMovesEim   # -- Begin function _ZN9move_maps11bishopMovesEim
	.p2align	4, 0x90
	.type	_ZN9move_maps11bishopMovesEim,@function
_ZN9move_maps11bishopMovesEim:          # @_ZN9move_maps11bishopMovesEim
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movslq	-4(%rbp), %rax
	leaq	_ZL21BISHOP_MASKED_ATTACKS(%rip), %rcx
	movq	(%rcx,%rax,8), %rax
	andq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movslq	-4(%rbp), %rcx
	leaq	BISHOP_MAGIC_NUMBERS(%rip), %rdx
	imulq	(%rdx,%rcx,8), %rax
	movslq	-4(%rbp), %rcx
	leaq	BISHOP_MAGIC_SHIFTS(%rip), %rdx
	movl	$64, %edi
	subl	(%rdx,%rcx,4), %edi
	movl	%edi, %edi
	movl	%edi, %ecx
                                        # kill: def $cl killed $rcx
	shrq	%cl, %rax
	movq	%rax, -32(%rbp)
	movslq	-4(%rbp), %rax
	shlq	$12, %rax
	leaq	BISHOP_MAGIC_TABLE(%rip), %rdx
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	(%rdx,%rax,8), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	_ZN9move_maps11bishopMovesEim, .Lfunc_end5-_ZN9move_maps11bishopMovesEim
	.cfi_endproc
                                        # -- End function
	.globl	_Z18rookMovesClassicalim        # -- Begin function _Z18rookMovesClassicalim
	.p2align	4, 0x90
	.type	_Z18rookMovesClassicalim,@function
_Z18rookMovesClassicalim:               # @_Z18rookMovesClassicalim
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	xorl	%eax, %eax
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	-4(%rbp), %edi
	movl	%eax, %esi
	callq	_ZN9move_maps7rookRayEii
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	andq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	orq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB6_2
# %bb.1:
	movq	-32(%rbp), %rdi
	callq	_Z14bitscanForwardm
	xorl	%esi, %esi
	movl	%eax, %edi
	callq	_ZN9move_maps7rookRayEii
	xorq	$-1, %rax
	andq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB6_2:
	movl	-4(%rbp), %edi
	movl	$1, %esi
	callq	_ZN9move_maps7rookRayEii
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	andq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	orq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB6_4
# %bb.3:
	movq	-32(%rbp), %rdi
	callq	_Z14bitscanForwardm
	movl	%eax, %edi
	movl	$1, %esi
	callq	_ZN9move_maps7rookRayEii
	xorq	$-1, %rax
	andq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB6_4:
	movl	-4(%rbp), %edi
	movl	$2, %esi
	callq	_ZN9move_maps7rookRayEii
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	andq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	orq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB6_6
# %bb.5:
	movq	-32(%rbp), %rdi
	callq	_Z14bitscanReversem
	movl	%eax, %edi
	movl	$2, %esi
	callq	_ZN9move_maps7rookRayEii
	xorq	$-1, %rax
	andq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB6_6:
	movl	-4(%rbp), %edi
	movl	$3, %esi
	callq	_ZN9move_maps7rookRayEii
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	andq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	orq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB6_8
# %bb.7:
	movq	-32(%rbp), %rdi
	callq	_Z14bitscanReversem
	movl	%eax, %edi
	movl	$3, %esi
	callq	_ZN9move_maps7rookRayEii
	xorq	$-1, %rax
	andq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB6_8:
	movq	-40(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	_Z18rookMovesClassicalim, .Lfunc_end6-_Z18rookMovesClassicalim
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9move_maps7rookRayEii        # -- Begin function _ZN9move_maps7rookRayEii
	.p2align	4, 0x90
	.type	_ZN9move_maps7rookRayEii,@function
_ZN9move_maps7rookRayEii:               # @_ZN9move_maps7rookRayEii
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	_ZL15ROOKS_RAY_CACHE(%rip), %rax
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movslq	-8(%rbp), %rcx
	shlq	$11, %rcx
	addq	%rcx, %rax
	movslq	-4(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	_ZN9move_maps7rookRayEii, .Lfunc_end7-_ZN9move_maps7rookRayEii
	.cfi_endproc
                                        # -- End function
	.section	.text._Z14bitscanForwardm,"axG",@progbits,_Z14bitscanForwardm,comdat
	.weak	_Z14bitscanForwardm             # -- Begin function _Z14bitscanForwardm
	.p2align	4, 0x90
	.type	_Z14bitscanForwardm,@function
_Z14bitscanForwardm:                    # @_Z14bitscanForwardm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdx
	bsfq	%rdx, %rsi
	addq	$1, %rsi
	cmpq	$0, %rdx
	cmoveq	%rcx, %rsi
                                        # kill: def $esi killed $esi killed $rsi
	subl	$1, %esi
	movl	%esi, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end8:
	.size	_Z14bitscanForwardm, .Lfunc_end8-_Z14bitscanForwardm
	.cfi_endproc
                                        # -- End function
	.section	.text._Z14bitscanReversem,"axG",@progbits,_Z14bitscanReversem,comdat
	.weak	_Z14bitscanReversem             # -- Begin function _Z14bitscanReversem
	.p2align	4, 0x90
	.type	_Z14bitscanReversem,@function
_Z14bitscanReversem:                    # @_Z14bitscanReversem
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	$63, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end9:
	.size	_Z14bitscanReversem, .Lfunc_end9-_Z14bitscanReversem
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_Z20bishopMovesClassicalim      # -- Begin function _Z20bishopMovesClassicalim
	.p2align	4, 0x90
	.type	_Z20bishopMovesClassicalim,@function
_Z20bishopMovesClassicalim:             # @_Z20bishopMovesClassicalim
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	xorl	%eax, %eax
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	-4(%rbp), %edi
	movl	%eax, %esi
	callq	_ZN9move_maps9bishopRayEii
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	andq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	orq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB10_2
# %bb.1:
	movq	-32(%rbp), %rdi
	callq	_Z14bitscanForwardm
	xorl	%esi, %esi
	movl	%eax, %edi
	callq	_ZN9move_maps9bishopRayEii
	xorq	$-1, %rax
	andq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB10_2:
	movl	-4(%rbp), %edi
	movl	$1, %esi
	callq	_ZN9move_maps9bishopRayEii
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	andq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	orq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB10_4
# %bb.3:
	movq	-32(%rbp), %rdi
	callq	_Z14bitscanForwardm
	movl	%eax, %edi
	movl	$1, %esi
	callq	_ZN9move_maps9bishopRayEii
	xorq	$-1, %rax
	andq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB10_4:
	movl	-4(%rbp), %edi
	movl	$2, %esi
	callq	_ZN9move_maps9bishopRayEii
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	andq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	orq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB10_6
# %bb.5:
	movq	-32(%rbp), %rdi
	callq	_Z14bitscanReversem
	movl	%eax, %edi
	movl	$2, %esi
	callq	_ZN9move_maps9bishopRayEii
	xorq	$-1, %rax
	andq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB10_6:
	movl	-4(%rbp), %edi
	movl	$3, %esi
	callq	_ZN9move_maps9bishopRayEii
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	andq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	orq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB10_8
# %bb.7:
	movq	-32(%rbp), %rdi
	callq	_Z14bitscanReversem
	movl	%eax, %edi
	movl	$3, %esi
	callq	_ZN9move_maps9bishopRayEii
	xorq	$-1, %rax
	andq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB10_8:
	movq	-40(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end10:
	.size	_Z20bishopMovesClassicalim, .Lfunc_end10-_Z20bishopMovesClassicalim
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9move_maps9bishopRayEii      # -- Begin function _ZN9move_maps9bishopRayEii
	.p2align	4, 0x90
	.type	_ZN9move_maps9bishopRayEii,@function
_ZN9move_maps9bishopRayEii:             # @_ZN9move_maps9bishopRayEii
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	_ZL16BISHOP_RAY_CACHE(%rip), %rax
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movslq	-8(%rbp), %rcx
	shlq	$11, %rcx
	addq	%rcx, %rax
	movslq	-4(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end11:
	.size	_ZN9move_maps9bishopRayEii, .Lfunc_end11-_ZN9move_maps9bishopRayEii
	.cfi_endproc
                                        # -- End function
	.globl	_Z12permute_maskmii             # -- Begin function _Z12permute_maskmii
	.p2align	4, 0x90
	.type	_Z12permute_maskmii,@function
_Z12permute_maskmii:                    # @_Z12permute_maskmii
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -20(%rbp)
.LBB12_1:                               # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB12_6
# %bb.2:                                #   in Loop: Header=BB12_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	_Z14bitscanForwardm
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
                                        # kill: def $cl killed $rcx
	movl	$1, %edx
	shlq	%cl, %rdx
	xorq	$-1, %rdx
	andq	-8(%rbp), %rdx
	movq	%rdx, -8(%rbp)
	movl	-12(%rbp), %eax
	movl	-20(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	movl	$1, %esi
	shll	%cl, %esi
	andl	%esi, %eax
	cmpl	$0, %eax
	je	.LBB12_4
# %bb.3:                                #   in Loop: Header=BB12_1 Depth=1
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
                                        # kill: def $cl killed $rcx
	movl	$1, %edx
	shlq	%cl, %rdx
	orq	-32(%rbp), %rdx
	movq	%rdx, -32(%rbp)
.LBB12_4:                               #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_5
.LBB12_5:                               #   in Loop: Header=BB12_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB12_1
.LBB12_6:
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end12:
	.size	_Z12permute_maskmii, .Lfunc_end12-_Z12permute_maskmii
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9move_maps4initEv            # -- Begin function _ZN9move_maps4initEv
	.p2align	4, 0x90
	.type	_ZN9move_maps4initEv,@function
_ZN9move_maps4initEv:                   # @_ZN9move_maps4initEv
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -160(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp0:
	leaq	.L.str.2(%rip), %rsi
	leaq	-40(%rbp), %rdi
	movq	-160(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp1:
	jmp	.LBB13_1
.LBB13_1:
.Ltmp3:
	leaq	-40(%rbp), %rdi
	callq	_Z12verbose_infoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.Ltmp4:
	jmp	.LBB13_2
.LBB13_2:
	leaq	-40(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-48(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movl	$0, -64(%rbp)
.LBB13_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_5 Depth 2
                                        #     Child Loop BB13_12 Depth 2
	cmpl	$64, -64(%rbp)
	jge	.LBB13_17
# %bb.4:                                #   in Loop: Header=BB13_3 Depth=1
	movl	$0, -68(%rbp)
.LBB13_5:                               #   Parent Loop BB13_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$4096, -68(%rbp)                # imm = 0x1000
	jge	.LBB13_11
# %bb.6:                                #   in Loop: Header=BB13_5 Depth=2
	movslq	-64(%rbp), %rax
	shlq	$15, %rax
	leaq	ROOK_MAGIC_TABLE(%rip), %rcx
	addq	%rax, %rcx
	movslq	-68(%rbp), %rax
	movq	$0, (%rcx,%rax,8)
# %bb.7:                                #   in Loop: Header=BB13_5 Depth=2
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB13_5
.LBB13_8:
.Ltmp2:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -56(%rbp)
	movl	%edx, -60(%rbp)
	jmp	.LBB13_10
.LBB13_9:
.Ltmp5:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -56(%rbp)
	movl	%edx, -60(%rbp)
	leaq	-40(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB13_10:
	leaq	-48(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB13_37
.LBB13_11:                              #   in Loop: Header=BB13_3 Depth=1
	movl	$0, -72(%rbp)
.LBB13_12:                              #   Parent Loop BB13_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$512, -72(%rbp)                 # imm = 0x200
	jge	.LBB13_15
# %bb.13:                               #   in Loop: Header=BB13_12 Depth=2
	movslq	-64(%rbp), %rax
	shlq	$12, %rax
	leaq	BISHOP_MAGIC_TABLE(%rip), %rcx
	addq	%rax, %rcx
	movslq	-72(%rbp), %rax
	movq	$0, (%rcx,%rax,8)
# %bb.14:                               #   in Loop: Header=BB13_12 Depth=2
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB13_12
.LBB13_15:                              #   in Loop: Header=BB13_3 Depth=1
	jmp	.LBB13_16
.LBB13_16:                              #   in Loop: Header=BB13_3 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB13_3
.LBB13_17:
	movl	$0, -76(%rbp)
.LBB13_18:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_20 Depth 2
	cmpl	$64, -76(%rbp)
	jge	.LBB13_27
# %bb.19:                               #   in Loop: Header=BB13_18 Depth=1
	movslq	-76(%rbp), %rax
	leaq	_ZL19ROOK_MASKED_ATTACKS(%rip), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	_Z4haddm@PLT
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
.LBB13_20:                              #   Parent Loop BB13_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-96(%rbp), %eax
	movl	-92(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	movl	$1, %edx
	shll	%cl, %edx
	cmpl	%edx, %eax
	jge	.LBB13_25
# %bb.21:                               #   in Loop: Header=BB13_20 Depth=2
	movq	-88(%rbp), %rdi
	movl	-96(%rbp), %esi
	movl	-92(%rbp), %edx
	callq	_Z12permute_maskmii
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movslq	-76(%rbp), %rcx
	leaq	ROOK_MAGIC_NUMBERS(%rip), %rdi
	imulq	(%rdi,%rcx,8), %rax
	movslq	-76(%rbp), %rcx
	leaq	ROOK_MAGIC_SHIFTS(%rip), %rdi
	movl	$64, %edx
	subl	(%rdi,%rcx,4), %edx
	movl	%edx, %edx
	movl	%edx, %ecx
                                        # kill: def $cl killed $rcx
	shrq	%cl, %rax
	movq	%rax, -112(%rbp)
	movslq	-76(%rbp), %rax
	shlq	$15, %rax
	leaq	ROOK_MAGIC_TABLE(%rip), %rdi
	addq	%rax, %rdi
	movq	-112(%rbp), %rax
	cmpq	$0, (%rdi,%rax,8)
	je	.LBB13_23
# %bb.22:
	leaq	.L.str.3(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$432, %edx                      # imm = 0x1B0
	leaq	.L__PRETTY_FUNCTION__._ZN9move_maps4initEv(%rip), %rcx
	callq	__assert_fail@PLT
.LBB13_23:                              #   in Loop: Header=BB13_20 Depth=2
	movl	-76(%rbp), %edi
	movq	-104(%rbp), %rsi
	callq	_Z18rookMovesClassicalim
	movslq	-76(%rbp), %rcx
	shlq	$15, %rcx
	leaq	ROOK_MAGIC_TABLE(%rip), %rdx
	addq	%rcx, %rdx
	movq	-112(%rbp), %rcx
	movq	%rax, (%rdx,%rcx,8)
# %bb.24:                               #   in Loop: Header=BB13_20 Depth=2
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB13_20
.LBB13_25:                              #   in Loop: Header=BB13_18 Depth=1
	jmp	.LBB13_26
.LBB13_26:                              #   in Loop: Header=BB13_18 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB13_18
.LBB13_27:
	movl	$0, -116(%rbp)
.LBB13_28:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_30 Depth 2
	cmpl	$64, -116(%rbp)
	jge	.LBB13_35
# %bb.29:                               #   in Loop: Header=BB13_28 Depth=1
	movslq	-116(%rbp), %rax
	leaq	_ZL21BISHOP_MASKED_ATTACKS(%rip), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rdi
	callq	_Z4haddm@PLT
	movl	%eax, -132(%rbp)
	movl	$0, -136(%rbp)
.LBB13_30:                              #   Parent Loop BB13_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-136(%rbp), %eax
	movl	-132(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	movl	$1, %edx
	shll	%cl, %edx
	cmpl	%edx, %eax
	jge	.LBB13_33
# %bb.31:                               #   in Loop: Header=BB13_30 Depth=2
	movq	-128(%rbp), %rdi
	movl	-136(%rbp), %esi
	movl	-132(%rbp), %edx
	callq	_Z12permute_maskmii
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movslq	-116(%rbp), %rcx
	leaq	BISHOP_MAGIC_NUMBERS(%rip), %rdi
	imulq	(%rdi,%rcx,8), %rax
	movslq	-116(%rbp), %rcx
	leaq	BISHOP_MAGIC_SHIFTS(%rip), %rdi
	movl	$64, %edx
	subl	(%rdi,%rcx,4), %edx
	movl	%edx, %edx
	movl	%edx, %ecx
                                        # kill: def $cl killed $rcx
	shrq	%cl, %rax
	movq	%rax, -152(%rbp)
	movl	-116(%rbp), %edi
	movq	-144(%rbp), %rsi
	callq	_Z20bishopMovesClassicalim
	movslq	-116(%rbp), %rsi
	shlq	$12, %rsi
	leaq	BISHOP_MAGIC_TABLE(%rip), %r8
	addq	%rsi, %r8
	movq	-152(%rbp), %rsi
	movq	%rax, (%r8,%rsi,8)
# %bb.32:                               #   in Loop: Header=BB13_30 Depth=2
	movl	-136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	jmp	.LBB13_30
.LBB13_33:                              #   in Loop: Header=BB13_28 Depth=1
	jmp	.LBB13_34
.LBB13_34:                              #   in Loop: Header=BB13_28 Depth=1
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB13_28
.LBB13_35:
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB13_38
# %bb.36:
	addq	$160, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB13_37:
	.cfi_def_cfa %rbp, 16
	movq	-56(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.LBB13_38:
	callq	__stack_chk_fail@PLT
.Lfunc_end13:
	.size	_ZN9move_maps4initEv, .Lfunc_end13-_ZN9move_maps4initEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table13:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Lfunc_end13-.Ltmp4            #   Call between .Ltmp4 and .Lfunc_end13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2
                                        # -- End function
	.text
	.globl	_ZN9move_maps15isPromotingRankEii # -- Begin function _ZN9move_maps15isPromotingRankEii
	.p2align	4, 0x90
	.type	_ZN9move_maps15isPromotingRankEii,@function
_ZN9move_maps15isPromotingRankEii:      # @_ZN9move_maps15isPromotingRankEii
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -8(%rbp)
	jne	.LBB14_2
# %bb.1:
	movl	-4(%rbp), %edi
	callq	_Z11squareToRowi
	cmpl	$0, %eax
	movb	$1, %cl
	movb	%cl, -9(%rbp)                   # 1-byte Spill
	je	.LBB14_5
.LBB14_2:
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, -8(%rbp)
	movb	%al, -10(%rbp)                  # 1-byte Spill
	jne	.LBB14_4
# %bb.3:
	movl	-4(%rbp), %edi
	callq	_Z11squareToRowi
	cmpl	$7, %eax
	sete	%cl
	movb	%cl, -10(%rbp)                  # 1-byte Spill
.LBB14_4:
	movb	-10(%rbp), %al                  # 1-byte Reload
	movb	%al, -9(%rbp)                   # 1-byte Spill
.LBB14_5:
	movb	-9(%rbp), %al                   # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end14:
	.size	_ZN9move_maps15isPromotingRankEii, .Lfunc_end14-_ZN9move_maps15isPromotingRankEii
	.cfi_endproc
                                        # -- End function
	.section	.text._Z11squareToRowi,"axG",@progbits,_Z11squareToRowi,comdat
	.weak	_Z11squareToRowi                # -- Begin function _Z11squareToRowi
	.p2align	4, 0x90
	.type	_Z11squareToRowi,@function
_Z11squareToRowi:                       # @_Z11squareToRowi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	cltd
	movl	$8, %ecx
	idivl	%ecx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end15:
	.size	_Z11squareToRowi, .Lfunc_end15-_Z11squareToRowi
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN9move_maps14isStartingRankEii # -- Begin function _ZN9move_maps14isStartingRankEii
	.p2align	4, 0x90
	.type	_ZN9move_maps14isStartingRankEii,@function
_ZN9move_maps14isStartingRankEii:       # @_ZN9move_maps14isStartingRankEii
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -8(%rbp)
	jne	.LBB16_2
# %bb.1:
	movl	-4(%rbp), %edi
	callq	_Z11squareToRowi
	cmpl	$6, %eax
	movb	$1, %cl
	movb	%cl, -9(%rbp)                   # 1-byte Spill
	je	.LBB16_5
.LBB16_2:
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, -8(%rbp)
	movb	%al, -10(%rbp)                  # 1-byte Spill
	jne	.LBB16_4
# %bb.3:
	movl	-4(%rbp), %edi
	callq	_Z11squareToRowi
	cmpl	$1, %eax
	sete	%cl
	movb	%cl, -10(%rbp)                  # 1-byte Spill
.LBB16_4:
	movb	-10(%rbp), %al                  # 1-byte Reload
	movb	%al, -9(%rbp)                   # 1-byte Spill
.LBB16_5:
	movb	-9(%rbp), %al                   # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end16:
	.size	_ZN9move_maps14isStartingRankEii, .Lfunc_end16-_ZN9move_maps14isStartingRankEii
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9move_maps15oneFileAdjacentEi # -- Begin function _ZN9move_maps15oneFileAdjacentEi
	.p2align	4, 0x90
	.type	_ZN9move_maps15oneFileAdjacentEi,@function
_ZN9move_maps15oneFileAdjacentEi:       # @_ZN9move_maps15oneFileAdjacentEi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movslq	-4(%rbp), %rax
	leaq	_ZL18ONE_FILE_ADJ_CACHE(%rip), %rcx
	movq	(%rcx,%rax,8), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end17:
	.size	_ZN9move_maps15oneFileAdjacentEi, .Lfunc_end17-_ZN9move_maps15oneFileAdjacentEi
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9move_maps12pawnCapturesEii  # -- Begin function _ZN9move_maps12pawnCapturesEii
	.p2align	4, 0x90
	.type	_ZN9move_maps12pawnCapturesEii,@function
_ZN9move_maps12pawnCapturesEii:         # @_ZN9move_maps12pawnCapturesEii
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	_ZL18PAWN_CAPTURE_CACHE(%rip), %rax
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movslq	-8(%rbp), %rcx
	shlq	$9, %rcx
	addq	%rcx, %rax
	movslq	-4(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end18:
	.size	_ZN9move_maps12pawnCapturesEii, .Lfunc_end18-_ZN9move_maps12pawnCapturesEii
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9move_maps15pawnDoubleMovesEii # -- Begin function _ZN9move_maps15pawnDoubleMovesEii
	.p2align	4, 0x90
	.type	_ZN9move_maps15pawnDoubleMovesEii,@function
_ZN9move_maps15pawnDoubleMovesEii:      # @_ZN9move_maps15pawnDoubleMovesEii
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	_ZL17PAWN_DOUBLE_CACHE(%rip), %rax
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movslq	-8(%rbp), %rcx
	shlq	$9, %rcx
	addq	%rcx, %rax
	movslq	-4(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end19:
	.size	_ZN9move_maps15pawnDoubleMovesEii, .Lfunc_end19-_ZN9move_maps15pawnDoubleMovesEii
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9move_maps9pawnMovesEii      # -- Begin function _ZN9move_maps9pawnMovesEii
	.p2align	4, 0x90
	.type	_ZN9move_maps9pawnMovesEii,@function
_ZN9move_maps9pawnMovesEii:             # @_ZN9move_maps9pawnMovesEii
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	_ZL15PAWN_MOVE_CACHE(%rip), %rax
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movslq	-8(%rbp), %rcx
	shlq	$9, %rcx
	addq	%rcx, %rax
	movslq	-4(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end20:
	.size	_ZN9move_maps9pawnMovesEii, .Lfunc_end20-_ZN9move_maps9pawnMovesEii
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9move_maps11knightMovesEi    # -- Begin function _ZN9move_maps11knightMovesEi
	.p2align	4, 0x90
	.type	_ZN9move_maps11knightMovesEi,@function
_ZN9move_maps11knightMovesEi:           # @_ZN9move_maps11knightMovesEi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movslq	-4(%rbp), %rax
	leaq	_ZL17KNIGHT_MOVE_CACHE(%rip), %rcx
	movq	(%rcx,%rax,8), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end21:
	.size	_ZN9move_maps11knightMovesEi, .Lfunc_end21-_ZN9move_maps11knightMovesEi
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9move_maps9kingMovesEi       # -- Begin function _ZN9move_maps9kingMovesEi
	.p2align	4, 0x90
	.type	_ZN9move_maps9kingMovesEi,@function
_ZN9move_maps9kingMovesEi:              # @_ZN9move_maps9kingMovesEi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movslq	-4(%rbp), %rax
	leaq	_ZL15KING_MOVE_CACHE(%rip), %rcx
	movq	(%rcx,%rax,8), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end22:
	.size	_ZN9move_maps9kingMovesEi, .Lfunc_end22-_ZN9move_maps9kingMovesEi
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9move_maps9bishopRayEi       # -- Begin function _ZN9move_maps9bishopRayEi
	.p2align	4, 0x90
	.type	_ZN9move_maps9bishopRayEi,@function
_ZN9move_maps9bishopRayEi:              # @_ZN9move_maps9bishopRayEi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movslq	-4(%rbp), %rax
	leaq	_ZL19BISHOP_ATTACK_CACHE(%rip), %rcx
	movq	(%rcx,%rax,8), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end23:
	.size	_ZN9move_maps9bishopRayEi, .Lfunc_end23-_ZN9move_maps9bishopRayEi
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9move_maps7rookRayEi         # -- Begin function _ZN9move_maps7rookRayEi
	.p2align	4, 0x90
	.type	_ZN9move_maps7rookRayEi,@function
_ZN9move_maps7rookRayEi:                # @_ZN9move_maps7rookRayEi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movslq	-4(%rbp), %rax
	leaq	_ZL17ROOK_ATTACK_CACHE(%rip), %rcx
	movq	(%rcx,%rax,8), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end24:
	.size	_ZN9move_maps7rookRayEi, .Lfunc_end24-_ZN9move_maps7rookRayEi
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_bitboards.cpp
	.type	_GLOBAL__sub_I_bitboards.cpp,@function
_GLOBAL__sub_I_bitboards.cpp:           # @_GLOBAL__sub_I_bitboards.cpp
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__cxx_global_var_init
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end25:
	.size	_GLOBAL__sub_I_bitboards.cpp, .Lfunc_end25-_GLOBAL__sub_I_bitboards.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	BISHOP_MAGIC_NUMBERS,@object    # @BISHOP_MAGIC_NUMBERS
	.data
	.globl	BISHOP_MAGIC_NUMBERS
	.p2align	4
BISHOP_MAGIC_NUMBERS:
	.quad	-8529516322457648576            # 0x89a1121896040240
	.quad	2307114353926610960             # 0x2004844802002010
	.quad	2335125204253151232             # 0x2068080051921000
	.quad	7099935816794769416             # 0x62880a0220200808
	.quad	1130435459416064                # 0x4042004000000
	.quad	72200668527460369               # 0x100822020200011
	.quad	-4610485205162917878            # 0xc00444222012000a
	.quad	11400320691298305               # 0x28808801216001
	.quad	288310780225421568              # 0x400492088408100
	.quad	144612171694473348              # 0x201c401040c0084
	.quad	37163495452180496               # 0x840800910a0010
	.quad	8935681818720                   # 0x82080240060
	.quad	2305988166290530304             # 0x2000840504006000
	.quad	3459059462248091652             # 0x30010c4108405004
	.quad	1155173665466746882             # 0x1008005410080802
	.quad	-9132169600173078272            # 0x8144042209100900
	.quad	146375853238993920              # 0x208081020014400
	.quad	20266336064686592               # 0x4800201208ca00
	.quad	1087641317556690952             # 0xf18140408012008
	.quad	1154047576346992641             # 0x1004002802102001
	.quad	594756660686751761              # 0x841000820080811
	.quad	18049591482261512               # 0x40200200a42008
	.quad	140738897911808                 # 0x800054042000
	.quad	-8646625410436788224            # 0x88010400410c9000
	.quad	369299586550874768              # 0x520040470104290
	.quad	1154051803924398209             # 0x1004040051500081
	.quad	2306414859195514913             # 0x2002081833080021
	.quad	1126724741955906                # 0x400c00c010142
	.quad	-7776581722828693504            # 0x941408200c002000
	.quad	457257199186501649              # 0x658810000806011
	.quad	110345957249649152              # 0x188071040440a00
	.quad	5188217414386523136             # 0x4800404002011c00
	.quad	73258399252365824               # 0x104442040404200
	.quad	365081849510826017              # 0x511080202091021
	.quad	1128253566878720                # 0x4022401120400
	.quad	-9169324426099424992            # 0x80c0040400080120
	.quad	-9205356537751402494            # 0x8040010040820802
	.quad	324401040235561104              # 0x480810700020090
	.quad	72621153876968002               # 0x102008e00040242
	.quad	578994379315020032              # 0x809005202050100
	.quad	-9222806603872321408            # 0x8002024220104080
	.quad	302023234194513920              # 0x431008804142000
	.quad	7036977531065344                # 0x19001802081400
	.quad	144116571189805184              # 0x200014208040080
	.quad	3677198029416300800             # 0x3308082008200100
	.quad	292751911566753824              # 0x41010500040c020
	.quad	4616754818640315144             # 0x4012020c04210308
	.quad	2342470636376440960             # 0x208220a202004080
	.quad	76847071520890880               # 0x111040120082000
	.quad	7494838608309258752             # 0x6803040141280a00
	.quad	2378182361733988352             # 0x2101004202410000
	.quad	-9079256847687319518            # 0x8200000041108022
	.quad	2269924327424                   # 0x21082088000
	.quad	634426866335808                 # 0x2410204010040
	.quad	18032007883821056               # 0x40100400809000
	.quad	586040256495747604              # 0x822088220820214
	.quad	18155688169644036               # 0x40808090012004
	.quad	40816225332369609               # 0x910224040218c9
	.quad	288935455733403656              # 0x402814422015008
	.quad	40533771111638032               # 0x90014004842410
	.quad	281476087169285                 # 0x1000042304105
	.quad	4504184552499712                # 0x10008830412a00
	.quad	2675147045886527752             # 0x2520081090008908
	.quad	4616224805122081088             # 0x40102000a0a60140
	.size	BISHOP_MAGIC_NUMBERS, 512

	.type	BISHOP_MAGIC_SHIFTS,@object     # @BISHOP_MAGIC_SHIFTS
	.globl	BISHOP_MAGIC_SHIFTS
	.p2align	4
BISHOP_MAGIC_SHIFTS:
	.long	6                               # 0x6
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	6                               # 0x6
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	7                               # 0x7
	.long	7                               # 0x7
	.long	7                               # 0x7
	.long	7                               # 0x7
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	7                               # 0x7
	.long	9                               # 0x9
	.long	9                               # 0x9
	.long	7                               # 0x7
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	7                               # 0x7
	.long	9                               # 0x9
	.long	9                               # 0x9
	.long	7                               # 0x7
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	7                               # 0x7
	.long	7                               # 0x7
	.long	7                               # 0x7
	.long	7                               # 0x7
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	6                               # 0x6
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	6                               # 0x6
	.size	BISHOP_MAGIC_SHIFTS, 256

	.type	BISHOP_MAGIC_TABLE,@object      # @BISHOP_MAGIC_TABLE
	.bss
	.globl	BISHOP_MAGIC_TABLE
	.p2align	4
BISHOP_MAGIC_TABLE:
	.zero	262144
	.size	BISHOP_MAGIC_TABLE, 262144

	.type	ROOK_MAGIC_NUMBERS,@object      # @ROOK_MAGIC_NUMBERS
	.data
	.globl	ROOK_MAGIC_NUMBERS
	.p2align	4
ROOK_MAGIC_NUMBERS:
	.quad	756607761056301088              # 0xa8002c000108020
	.quad	486389076241424385              # 0x6c00049b0002001
	.quad	72092778679042112               # 0x100200010090040
	.quad	2630106649158748161             # 0x2480041000800801
	.quad	180146733941000192              # 0x280028004000800
	.quad	648589814731636770              # 0x900410008040022
	.quad	180146184134856832              # 0x280020001001080
	.quad	2918332697065554048             # 0x2880002041000080
	.quad	-6917388288001048524            # 0xa000800080400034
	.quad	1267187687899136                # 0x4808020004000
	.quad	2490631468938694656             # 0x2290802004801000
	.quad	293015506591416352              # 0x411000d00100020
	.quad	288934097953489024              # 0x402800800040080
	.quad	3096241940480520                # 0xb000401004208
	.quad	2596606664451031552             # 0x2409000100040200
	.quad	281616710647938                 # 0x1002100004082
	.quad	9719133065330688                # 0x22878001e24000
	.quad	1193595738806829072             # 0x1090810021004010
	.quad	576745526890856466              # 0x801030040200012
	.quad	360429257568030720              # 0x500808008001000
	.quad	722829389795952768              # 0xa08018014000880
	.quad	-9223230749543497216            # 0x8000808004000200
	.quad	144397214955930112              # 0x201008080010200
	.quad	576744426307850385              # 0x801020000441091
	.quad	140739637952517                 # 0x800080204005
	.quad	1170971088563208264             # 0x1040200040100048
	.quad	19799803437186                  # 0x120200402082
	.quad	942527774937055360              # 0xd14880480100080
	.quad	5070958365245568                # 0x12040280080080
	.quad	72061994232053888               # 0x100040080020080
	.quad	-8061442231325687296            # 0x9020010080800200
	.quad	581848436590281801              # 0x813241200148449
	.quad	329150075794096256              # 0x491604001800080
	.quad	72128031505784833               # 0x100401000402001
	.quad	5197155070050832448             # 0x4820010021001040
	.quad	288300890958333970              # 0x400402202000812
	.quad	146649081425430530              # 0x209009005000802
	.quad	581105115214119936              # 0x810800601800400
	.quad	4828149286694814032             # 0x4301083214000150
	.quad	2323899487900144641             # 0x204026458e001401
	.quad	18049857767899136               # 0x40204000808000
	.quad	-9223090011048443872            # 0x8001008040010020
	.quad	-8930495089663148016            # 0x8410820820420010
	.quad	1153765998257045536             # 0x1003001000090020
	.quad	577591050391027840              # 0x804040008008080
	.quad	5066584209096708                # 0x12000810020004
	.quad	1152939105383088648             # 0x1000100200040208
	.quad	4827859488876920833             # 0x430000a044020001
	.quad	180144604161573632              # 0x280009023410300
	.quad	63067988042981952               # 0xe0100040002240
	.quad	35188671256320                  # 0x200100401700
	.quad	2469116105206038656             # 0x2244100408008080
	.quad	2251817001949568                # 0x8000400801980
	.quad	562984581857792                 # 0x2000810040200
	.quad	-9218850835771882496            # 0x8010100228810400
	.quad	2305843628831998464             # 0x2000009044210200
	.quad	4647715366276964609             # 0x4080008040102101
	.quad	18014538100186369               # 0x40002080411d01
	.quad	2307340820539246849             # 0x2005524060000901
	.quad	360850989000950818              # 0x502001008400422
	.quad	5231493951774524418             # 0x489a000810200402
	.quad	281767035013651                 # 0x1004400080a13
	.quad	4611687186792841348             # 0x4000011008020084
	.quad	10696191184830530               # 0x26002114058042
	.size	ROOK_MAGIC_NUMBERS, 512

	.type	ROOK_MAGIC_SHIFTS,@object       # @ROOK_MAGIC_SHIFTS
	.globl	ROOK_MAGIC_SHIFTS
	.p2align	4
ROOK_MAGIC_SHIFTS:
	.long	12                              # 0xc
	.long	11                              # 0xb
	.long	11                              # 0xb
	.long	11                              # 0xb
	.long	11                              # 0xb
	.long	11                              # 0xb
	.long	11                              # 0xb
	.long	12                              # 0xc
	.long	11                              # 0xb
	.long	10                              # 0xa
	.long	10                              # 0xa
	.long	10                              # 0xa
	.long	10                              # 0xa
	.long	10                              # 0xa
	.long	10                              # 0xa
	.long	11                              # 0xb
	.long	11                              # 0xb
	.long	10                              # 0xa
	.long	10                              # 0xa
	.long	10                              # 0xa
	.long	10                              # 0xa
	.long	10                              # 0xa
	.long	10                              # 0xa
	.long	11                              # 0xb
	.long	11                              # 0xb
	.long	10                              # 0xa
	.long	10                              # 0xa
	.long	10                              # 0xa
	.long	10                              # 0xa
	.long	10                              # 0xa
	.long	10                              # 0xa
	.long	11                              # 0xb
	.long	11                              # 0xb
	.long	10                              # 0xa
	.long	10                              # 0xa
	.long	10                              # 0xa
	.long	10                              # 0xa
	.long	10                              # 0xa
	.long	10                              # 0xa
	.long	11                              # 0xb
	.long	11                              # 0xb
	.long	10                              # 0xa
	.long	10                              # 0xa
	.long	10                              # 0xa
	.long	10                              # 0xa
	.long	10                              # 0xa
	.long	10                              # 0xa
	.long	11                              # 0xb
	.long	11                              # 0xb
	.long	10                              # 0xa
	.long	10                              # 0xa
	.long	10                              # 0xa
	.long	10                              # 0xa
	.long	10                              # 0xa
	.long	10                              # 0xa
	.long	11                              # 0xb
	.long	12                              # 0xc
	.long	11                              # 0xb
	.long	11                              # 0xb
	.long	11                              # 0xb
	.long	11                              # 0xb
	.long	11                              # 0xb
	.long	11                              # 0xb
	.long	12                              # 0xc
	.size	ROOK_MAGIC_SHIFTS, 256

	.type	ROOK_MAGIC_TABLE,@object        # @ROOK_MAGIC_TABLE
	.bss
	.globl	ROOK_MAGIC_TABLE
	.p2align	4
ROOK_MAGIC_TABLE:
	.zero	2097152
	.size	ROOK_MAGIC_TABLE, 2097152

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"isValidSquare(u64ToSquare(subject))"
	.size	.L.str, 36

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"src/chess/bitboards.cpp"
	.size	.L.str.1, 24

	.type	.L__PRETTY_FUNCTION__._ZN9move_maps17isAttackedSlidingEmmmm,@object # @__PRETTY_FUNCTION__._ZN9move_maps17isAttackedSlidingEmmmm
.L__PRETTY_FUNCTION__._ZN9move_maps17isAttackedSlidingEmmmm:
	.asciz	"bool move_maps::isAttackedSliding(uint64_t, uint64_t, uint64_t, uint64_t)"
	.size	.L__PRETTY_FUNCTION__._ZN9move_maps17isAttackedSlidingEmmmm, 74

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"initializing move cache"
	.size	.L.str.2, 24

	.type	_ZL19ROOK_MASKED_ATTACKS,@object # @_ZL19ROOK_MASKED_ATTACKS
	.section	.rodata,"a",@progbits
	.p2align	4
_ZL19ROOK_MASKED_ATTACKS:
	.quad	282578800148862                 # 0x101010101017e
	.quad	565157600297596                 # 0x202020202027c
	.quad	1130315200595066                # 0x404040404047a
	.quad	2260630401190006                # 0x8080808080876
	.quad	4521260802379886                # 0x1010101010106e
	.quad	9042521604759646                # 0x2020202020205e
	.quad	18085043209519166               # 0x4040404040403e
	.quad	36170086419038334               # 0x8080808080807e
	.quad	282578800180736                 # 0x1010101017e00
	.quad	565157600328704                 # 0x2020202027c00
	.quad	1130315200625152                # 0x4040404047a00
	.quad	2260630401218048                # 0x8080808087600
	.quad	4521260802403840                # 0x10101010106e00
	.quad	9042521604775424                # 0x20202020205e00
	.quad	18085043209518592               # 0x40404040403e00
	.quad	36170086419037696               # 0x80808080807e00
	.quad	282578808340736                 # 0x10101017e0100
	.quad	565157608292864                 # 0x20202027c0200
	.quad	1130315208328192                # 0x40404047a0400
	.quad	2260630408398848                # 0x8080808760800
	.quad	4521260808540160                # 0x101010106e1000
	.quad	9042521608822784                # 0x202020205e2000
	.quad	18085043209388032               # 0x404040403e4000
	.quad	36170086418907136               # 0x808080807e8000
	.quad	282580897300736                 # 0x101017e010100
	.quad	565159647117824                 # 0x202027c020200
	.quad	1130317180306432                # 0x404047a040400
	.quad	2260632246683648                # 0x8080876080800
	.quad	4521262379438080                # 0x1010106e101000
	.quad	9042522644946944                # 0x2020205e202000
	.quad	18085043175964672               # 0x4040403e404000
	.quad	36170086385483776               # 0x8080807e808000
	.quad	283115671060736                 # 0x1017e01010100
	.quad	565681586307584                 # 0x2027c02020200
	.quad	1130822006735872                # 0x4047a04040400
	.quad	2261102847592448                # 0x8087608080800
	.quad	4521664529305600                # 0x10106e10101000
	.quad	9042787892731904                # 0x20205e20202000
	.quad	18085034619584512               # 0x40403e40404000
	.quad	36170077829103616               # 0x80807e80808000
	.quad	420017753620736                 # 0x17e0101010100
	.quad	699298018886144                 # 0x27c0202020200
	.quad	1260057572672512                # 0x47a0404040400
	.quad	2381576680245248                # 0x8760808080800
	.quad	4624614895390720                # 0x106e1010101000
	.quad	9110691325681664                # 0x205e2020202000
	.quad	18082844186263552               # 0x403e4040404000
	.quad	36167887395782656               # 0x807e8080808000
	.quad	35466950888980736               # 0x7e010101010100
	.quad	34905104758997504               # 0x7c020202020200
	.quad	34344362452452352               # 0x7a040404040400
	.quad	33222877839362048               # 0x76080808080800
	.quad	30979908613181440               # 0x6e101010101000
	.quad	26493970160820224               # 0x5e202020202000
	.quad	17522093256097792               # 0x3e404040404000
	.quad	35607136465616896               # 0x7e808080808000
	.quad	9079539427579068672             # 0x7e01010101010100
	.quad	8935706818303361536             # 0x7c02020202020200
	.quad	8792156787827803136             # 0x7a04040404040400
	.quad	8505056726876686336             # 0x7608080808080800
	.quad	7930856604974452736             # 0x6e10101010101000
	.quad	6782456361169985536             # 0x5e20202020202000
	.quad	4485655873561051136             # 0x3e40404040404000
	.quad	9115426935197958144             # 0x7e80808080808000
	.size	_ZL19ROOK_MASKED_ATTACKS, 512

	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"1 == 0"
	.size	.L.str.3, 7

	.type	.L__PRETTY_FUNCTION__._ZN9move_maps4initEv,@object # @__PRETTY_FUNCTION__._ZN9move_maps4initEv
.L__PRETTY_FUNCTION__._ZN9move_maps4initEv:
	.asciz	"void move_maps::init()"
	.size	.L__PRETTY_FUNCTION__._ZN9move_maps4initEv, 23

	.type	_ZL21BISHOP_MASKED_ATTACKS,@object # @_ZL21BISHOP_MASKED_ATTACKS
	.section	.rodata,"a",@progbits
	.p2align	4
_ZL21BISHOP_MASKED_ATTACKS:
	.quad	18049651735527936               # 0x40201008040200
	.quad	70506452091904                  # 0x402010080400
	.quad	275415828992                    # 0x4020100a00
	.quad	1075975168                      # 0x40221400
	.quad	38021120                        # 0x2442800
	.quad	8657588224                      # 0x204085000
	.quad	2216338399232                   # 0x20408102000
	.quad	567382630219776                 # 0x2040810204000
	.quad	9024825867763712                # 0x20100804020000
	.quad	18049651735527424               # 0x40201008040000
	.quad	70506452221952                  # 0x4020100a0000
	.quad	275449643008                    # 0x4022140000
	.quad	9733406720                      # 0x244280000
	.quad	2216342585344                   # 0x20408500000
	.quad	567382630203392                 # 0x2040810200000
	.quad	1134765260406784                # 0x4081020400000
	.quad	4512412933816832                # 0x10080402000200
	.quad	9024825867633664                # 0x20100804000400
	.quad	18049651768822272               # 0x4020100a000a00
	.quad	70515108615168                  # 0x402214001400
	.quad	2491752130560                   # 0x24428002800
	.quad	567383701868544                 # 0x2040850005000
	.quad	1134765256220672                # 0x4081020002000
	.quad	2269530512441344                # 0x8102040004000
	.quad	2256206450263040                # 0x8040200020400
	.quad	4512412900526080                # 0x10080400040800
	.quad	9024834391117824                # 0x20100a000a1000
	.quad	18051867805491712               # 0x40221400142200
	.quad	637888545440768                 # 0x2442800284400
	.quad	1135039602493440                # 0x4085000500800
	.quad	2269529440784384                # 0x8102000201000
	.quad	4539058881568768                # 0x10204000402000
	.quad	1128098963916800                # 0x4020002040800
	.quad	2256197927833600                # 0x8040004081000
	.quad	4514594912477184                # 0x100a000a102000
	.quad	9592139778506752                # 0x22140014224000
	.quad	19184279556981248               # 0x44280028440200
	.quad	2339762086609920                # 0x8500050080400
	.quad	4538784537380864                # 0x10200020100800
	.quad	9077569074761728                # 0x20400040201000
	.quad	562958610993152                 # 0x2000204081000
	.quad	1125917221986304                # 0x4000408102000
	.quad	2814792987328512                # 0xa000a10204000
	.quad	5629586008178688                # 0x14001422400000
	.quad	11259172008099840               # 0x28002844020000
	.quad	22518341868716544               # 0x50005008040200
	.quad	9007336962655232                # 0x20002010080400
	.quad	18014673925310464               # 0x40004020100800
	.quad	2216338399232                   # 0x20408102000
	.quad	4432676798464                   # 0x40810204000
	.quad	11064376819712                  # 0xa1020400000
	.quad	22137335185408                  # 0x142240000000
	.quad	44272556441600                  # 0x284402000000
	.quad	87995357200384                  # 0x500804020000
	.quad	35253226045952                  # 0x201008040200
	.quad	70506452091904                  # 0x402010080400
	.quad	567382630219776                 # 0x2040810204000
	.quad	1134765260406784                # 0x4081020400000
	.quad	2832480465846272                # 0xa102040000000
	.quad	5667157807464448                # 0x14224000000000
	.quad	11333774449049600               # 0x28440200000000
	.quad	22526811443298304               # 0x50080402000000
	.quad	9024825867763712                # 0x20100804020000
	.quad	18049651735527936               # 0x40201008040200
	.size	_ZL21BISHOP_MASKED_ATTACKS, 512

	.type	_ZL18ONE_FILE_ADJ_CACHE,@object # @_ZL18ONE_FILE_ADJ_CACHE
	.p2align	4
_ZL18ONE_FILE_ADJ_CACHE:
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	20                              # 0x14
	.quad	40                              # 0x28
	.quad	80                              # 0x50
	.quad	160                             # 0xa0
	.quad	64                              # 0x40
	.quad	512                             # 0x200
	.quad	1280                            # 0x500
	.quad	2560                            # 0xa00
	.quad	5120                            # 0x1400
	.quad	10240                           # 0x2800
	.quad	20480                           # 0x5000
	.quad	40960                           # 0xa000
	.quad	16384                           # 0x4000
	.quad	131072                          # 0x20000
	.quad	327680                          # 0x50000
	.quad	655360                          # 0xa0000
	.quad	1310720                         # 0x140000
	.quad	2621440                         # 0x280000
	.quad	5242880                         # 0x500000
	.quad	10485760                        # 0xa00000
	.quad	4194304                         # 0x400000
	.quad	33554432                        # 0x2000000
	.quad	83886080                        # 0x5000000
	.quad	167772160                       # 0xa000000
	.quad	335544320                       # 0x14000000
	.quad	671088640                       # 0x28000000
	.quad	1342177280                      # 0x50000000
	.quad	2684354560                      # 0xa0000000
	.quad	1073741824                      # 0x40000000
	.quad	8589934592                      # 0x200000000
	.quad	21474836480                     # 0x500000000
	.quad	42949672960                     # 0xa00000000
	.quad	85899345920                     # 0x1400000000
	.quad	171798691840                    # 0x2800000000
	.quad	343597383680                    # 0x5000000000
	.quad	687194767360                    # 0xa000000000
	.quad	274877906944                    # 0x4000000000
	.quad	2199023255552                   # 0x20000000000
	.quad	5497558138880                   # 0x50000000000
	.quad	10995116277760                  # 0xa0000000000
	.quad	21990232555520                  # 0x140000000000
	.quad	43980465111040                  # 0x280000000000
	.quad	87960930222080                  # 0x500000000000
	.quad	175921860444160                 # 0xa00000000000
	.quad	70368744177664                  # 0x400000000000
	.quad	562949953421312                 # 0x2000000000000
	.quad	1407374883553280                # 0x5000000000000
	.quad	2814749767106560                # 0xa000000000000
	.quad	5629499534213120                # 0x14000000000000
	.quad	11258999068426240               # 0x28000000000000
	.quad	22517998136852480               # 0x50000000000000
	.quad	45035996273704960               # 0xa0000000000000
	.quad	18014398509481984               # 0x40000000000000
	.quad	144115188075855872              # 0x200000000000000
	.quad	360287970189639680              # 0x500000000000000
	.quad	720575940379279360              # 0xa00000000000000
	.quad	1441151880758558720             # 0x1400000000000000
	.quad	2882303761517117440             # 0x2800000000000000
	.quad	5764607523034234880             # 0x5000000000000000
	.quad	-6917529027641081856            # 0xa000000000000000
	.quad	4611686018427387904             # 0x4000000000000000
	.size	_ZL18ONE_FILE_ADJ_CACHE, 512

	.type	_ZL17KNIGHT_MOVE_CACHE,@object  # @_ZL17KNIGHT_MOVE_CACHE
	.p2align	4
_ZL17KNIGHT_MOVE_CACHE:
	.quad	132096                          # 0x20400
	.quad	329728                          # 0x50800
	.quad	659712                          # 0xa1100
	.quad	1319424                         # 0x142200
	.quad	2638848                         # 0x284400
	.quad	5277696                         # 0x508800
	.quad	10489856                        # 0xa01000
	.quad	4202496                         # 0x402000
	.quad	33816580                        # 0x2040004
	.quad	84410376                        # 0x5080008
	.quad	168886289                       # 0xa110011
	.quad	337772578                       # 0x14220022
	.quad	675545156                       # 0x28440044
	.quad	1351090312                      # 0x50880088
	.quad	2685403152                      # 0xa0100010
	.quad	1075839008                      # 0x40200020
	.quad	8657044482                      # 0x204000402
	.quad	21609056261                     # 0x508000805
	.quad	43234889994                     # 0xa1100110a
	.quad	86469779988                     # 0x1422002214
	.quad	172939559976                    # 0x2844004428
	.quad	345879119952                    # 0x5088008850
	.quad	687463207072                    # 0xa0100010a0
	.quad	275414786112                    # 0x4020002040
	.quad	2216203387392                   # 0x20400040200
	.quad	5531918402816                   # 0x50800080500
	.quad	11068131838464                  # 0xa1100110a00
	.quad	22136263676928                  # 0x142200221400
	.quad	44272527353856                  # 0x284400442800
	.quad	88545054707712                  # 0x508800885000
	.quad	175990581010432                 # 0xa0100010a000
	.quad	70506185244672                  # 0x402000204000
	.quad	567348067172352                 # 0x2040004020000
	.quad	1416171111120896                # 0x5080008050000
	.quad	2833441750646784                # 0xa1100110a0000
	.quad	5666883501293568                # 0x14220022140000
	.quad	11333767002587136               # 0x28440044280000
	.quad	22667534005174272               # 0x50880088500000
	.quad	45053588738670592               # 0xa0100010a00000
	.quad	18049583422636032               # 0x40200020400000
	.quad	145241105196122112              # 0x204000402000000
	.quad	362539804446949376              # 0x508000805000000
	.quad	725361088165576704              # 0xa1100110a000000
	.quad	1450722176331153408             # 0x1422002214000000
	.quad	2901444352662306816             # 0x2844004428000000
	.quad	5802888705324613632             # 0x5088008850000000
	.quad	-6913025356609880064            # 0xa0100010a0000000
	.quad	4620693356194824192             # 0x4020002040000000
	.quad	288234782788157440              # 0x400040200000000
	.quad	576469569871282176              # 0x800080500000000
	.quad	1224997833292120064             # 0x1100110a00000000
	.quad	2449995666584240128             # 0x2200221400000000
	.quad	4899991333168480256             # 0x4400442800000000
	.quad	-8646761407372591104            # 0x8800885000000000
	.quad	1152939783987658752             # 0x100010a000000000
	.quad	2305878468463689728             # 0x2000204000000000
	.quad	1128098930098176                # 0x4020000000000
	.quad	2257297371824128                # 0x8050000000000
	.quad	4796069720358912                # 0x110a0000000000
	.quad	9592139440717824                # 0x22140000000000
	.quad	19184278881435648               # 0x44280000000000
	.quad	38368557762871296               # 0x88500000000000
	.quad	4679521487814656                # 0x10a00000000000
	.quad	9077567998918656                # 0x20400000000000
	.size	_ZL17KNIGHT_MOVE_CACHE, 512

	.type	_ZL15KING_MOVE_CACHE,@object    # @_ZL15KING_MOVE_CACHE
	.p2align	4
_ZL15KING_MOVE_CACHE:
	.quad	770                             # 0x302
	.quad	1797                            # 0x705
	.quad	3594                            # 0xe0a
	.quad	7188                            # 0x1c14
	.quad	14376                           # 0x3828
	.quad	28752                           # 0x7050
	.quad	57504                           # 0xe0a0
	.quad	49216                           # 0xc040
	.quad	197123                          # 0x30203
	.quad	460039                          # 0x70507
	.quad	920078                          # 0xe0a0e
	.quad	1840156                         # 0x1c141c
	.quad	3680312                         # 0x382838
	.quad	7360624                         # 0x705070
	.quad	14721248                        # 0xe0a0e0
	.quad	12599488                        # 0xc040c0
	.quad	50463488                        # 0x3020300
	.quad	117769984                       # 0x7050700
	.quad	235539968                       # 0xe0a0e00
	.quad	471079936                       # 0x1c141c00
	.quad	942159872                       # 0x38283800
	.quad	1884319744                      # 0x70507000
	.quad	3768639488                      # 0xe0a0e000
	.quad	3225468928                      # 0xc040c000
	.quad	12918652928                     # 0x302030000
	.quad	30149115904                     # 0x705070000
	.quad	60298231808                     # 0xe0a0e0000
	.quad	120596463616                    # 0x1c141c0000
	.quad	241192927232                    # 0x3828380000
	.quad	482385854464                    # 0x7050700000
	.quad	964771708928                    # 0xe0a0e00000
	.quad	825720045568                    # 0xc040c00000
	.quad	3307175149568                   # 0x30203000000
	.quad	7718173671424                   # 0x70507000000
	.quad	15436347342848                  # 0xe0a0e000000
	.quad	30872694685696                  # 0x1c141c000000
	.quad	61745389371392                  # 0x382838000000
	.quad	123490778742784                 # 0x705070000000
	.quad	246981557485568                 # 0xe0a0e0000000
	.quad	211384331665408                 # 0xc040c0000000
	.quad	846636838289408                 # 0x3020300000000
	.quad	1975852459884544                # 0x7050700000000
	.quad	3951704919769088                # 0xe0a0e00000000
	.quad	7903409839538176                # 0x1c141c00000000
	.quad	15806819679076352               # 0x38283800000000
	.quad	31613639358152704               # 0x70507000000000
	.quad	63227278716305408               # 0xe0a0e000000000
	.quad	54114388906344448               # 0xc040c000000000
	.quad	216739030602088448              # 0x302030000000000
	.quad	505818229730443264              # 0x705070000000000
	.quad	1011636459460886528             # 0xe0a0e0000000000
	.quad	2023272918921773056             # 0x1c141c0000000000
	.quad	4046545837843546112             # 0x3828380000000000
	.quad	8093091675687092224             # 0x7050700000000000
	.quad	-2260560722335367168            # 0xe0a0e00000000000
	.quad	-4593460513685372928            # 0xc040c00000000000
	.quad	144959613005987840              # 0x203000000000000
	.quad	362258295026614272              # 0x507000000000000
	.quad	724516590053228544              # 0xa0e000000000000
	.quad	1449033180106457088             # 0x141c000000000000
	.quad	2898066360212914176             # 0x2838000000000000
	.quad	5796132720425828352             # 0x5070000000000000
	.quad	-6854478632857894912            # 0xa0e0000000000000
	.quad	4665729213955833856             # 0x40c0000000000000
	.size	_ZL15KING_MOVE_CACHE, 512

	.type	_ZL19BISHOP_ATTACK_CACHE,@object # @_ZL19BISHOP_ATTACK_CACHE
	.p2align	4
_ZL19BISHOP_ATTACK_CACHE:
	.quad	-9205322385119247872            # 0x8040201008040200
	.quad	36099303471056128               # 0x80402010080500
	.quad	141012904249856                 # 0x804020110a00
	.quad	550848566272                    # 0x8041221400
	.quad	6480472064                      # 0x182442800
	.quad	1108177604608                   # 0x10204885000
	.quad	283691315142656                 # 0x102040810a000
	.quad	72624976668147712               # 0x102040810204000
	.quad	4620710844295151618             # 0x4020100804020002
	.quad	-9205322385119182843            # 0x8040201008050005
	.quad	36099303487963146               # 0x804020110a000a
	.quad	141017232965652                 # 0x804122140014
	.quad	1659000848424                   # 0x18244280028
	.quad	283693466779728                 # 0x1020488500050
	.quad	72624976676520096               # 0x102040810a000a0
	.quad	145249953336262720              # 0x204081020400040
	.quad	2310355422147510788             # 0x2010080402000204
	.quad	4620710844311799048             # 0x4020100805000508
	.quad	-9205322380790986223            # 0x804020110a000a11
	.quad	36100411639206946               # 0x80412214001422
	.quad	424704217196612                 # 0x1824428002844
	.quad	72625527495610504               # 0x102048850005088
	.quad	145249955479592976              # 0x2040810a000a010
	.quad	290499906664153120              # 0x408102040004020
	.quad	1155177711057110024             # 0x1008040200020408
	.quad	2310355426409252880             # 0x2010080500050810
	.quad	4620711952330133792             # 0x4020110a000a1120
	.quad	-9205038694072573375            # 0x8041221400142241
	.quad	108724279602332802              # 0x182442800284482
	.quad	145390965166737412              # 0x204885000508804
	.quad	290500455356698632              # 0x40810a000a01008
	.quad	580999811184992272              # 0x810204000402010
	.quad	577588851267340304              # 0x804020002040810
	.quad	1155178802063085600             # 0x1008050005081020
	.quad	2310639079102947392             # 0x20110a000a112040
	.quad	4693335752243822976             # 0x4122140014224180
	.quad	-9060072569221905919            # 0x8244280028448201
	.quad	326598935265674242              # 0x488500050880402
	.quad	581140276476643332              # 0x810a000a0100804
	.quad	1161999073681608712             # 0x1020400040201008
	.quad	288793334762704928              # 0x402000204081020
	.quad	577868148797087808              # 0x805000508102040
	.quad	1227793891648880768             # 0x110a000a11204080
	.quad	2455587783297826816             # 0x2214001422418000
	.quad	4911175566595588352             # 0x4428002844820100
	.quad	-8624392940535152127            # 0x8850005088040201
	.quad	1197958188344280066             # 0x10a000a010080402
	.quad	2323857683139004420             # 0x2040004020100804
	.quad	144117404414255168              # 0x200020408102040
	.quad	360293502378066048              # 0x500050810204080
	.quad	720587009051099136              # 0xa000a1120408000
	.quad	1441174018118909952             # 0x1400142241800000
	.quad	2882348036221108224             # 0x2800284482010000
	.quad	5764696068147249408             # 0x5000508804020100
	.quad	-6917353036926680575            # 0xa000a01008040201
	.quad	4611756524879479810             # 0x4000402010080402
	.quad	567382630219904                 # 0x2040810204080
	.quad	1416240237150208                # 0x5081020408000
	.quad	2833579985862656                # 0xa112040800000
	.quad	5667164249915392                # 0x14224180000000
	.quad	11334324221640704               # 0x28448201000000
	.quad	22667548931719168               # 0x50880402010000
	.quad	45053622886727936               # 0xa0100804020100
	.quad	18049651735527937               # 0x40201008040201
	.size	_ZL19BISHOP_ATTACK_CACHE, 512

	.type	_ZL17ROOK_ATTACK_CACHE,@object  # @_ZL17ROOK_ATTACK_CACHE
	.p2align	4
_ZL17ROOK_ATTACK_CACHE:
	.quad	72340172838076926               # 0x1010101010101fe
	.quad	144680345676153597              # 0x2020202020202fd
	.quad	289360691352306939              # 0x4040404040404fb
	.quad	578721382704613623              # 0x8080808080808f7
	.quad	1157442765409226991             # 0x10101010101010ef
	.quad	2314885530818453727             # 0x20202020202020df
	.quad	4629771061636907199             # 0x40404040404040bf
	.quad	-9187201950435737473            # 0x808080808080807f
	.quad	72340172838141441               # 0x10101010101fe01
	.quad	144680345676217602              # 0x20202020202fd02
	.quad	289360691352369924              # 0x40404040404fb04
	.quad	578721382704674568              # 0x80808080808f708
	.quad	1157442765409283856             # 0x101010101010ef10
	.quad	2314885530818502432             # 0x202020202020df20
	.quad	4629771061636939584             # 0x404040404040bf40
	.quad	-9187201950435737728            # 0x8080808080807f80
	.quad	72340172854657281               # 0x101010101fe0101
	.quad	144680345692602882              # 0x202020202fd0202
	.quad	289360691368494084              # 0x404040404fb0404
	.quad	578721382720276488              # 0x808080808f70808
	.quad	1157442765423841296             # 0x1010101010ef1010
	.quad	2314885530830970912             # 0x2020202020df2020
	.quad	4629771061645230144             # 0x4040404040bf4040
	.quad	-9187201950435803008            # 0x80808080807f8080
	.quad	72340177082712321               # 0x1010101fe010101
	.quad	144680349887234562              # 0x2020202fd020202
	.quad	289360695496279044              # 0x4040404fb040404
	.quad	578721386714368008              # 0x8080808f7080808
	.quad	1157442769150545936             # 0x10101010ef101010
	.quad	2314885534022901792             # 0x20202020df202020
	.quad	4629771063767613504             # 0x40404040bf404040
	.quad	-9187201950452514688            # 0x808080807f808080
	.quad	72341259464802561               # 0x10101fe01010101
	.quad	144681423712944642              # 0x20202fd02020202
	.quad	289361752209228804              # 0x40404fb04040404
	.quad	578722409201797128              # 0x80808f708080808
	.quad	1157443723186933776             # 0x101010ef10101010
	.quad	2314886351157207072             # 0x202020df20202020
	.quad	4629771607097753664             # 0x404040bf40404040
	.quad	-9187201954730704768            # 0x8080807f80808080
	.quad	72618349279904001               # 0x101fe0101010101
	.quad	144956323094725122              # 0x202fd0202020202
	.quad	289632270724367364              # 0x404fb0404040404
	.quad	578984165983651848              # 0x808f70808080808
	.quad	1157687956502220816             # 0x1010ef1010101010
	.quad	2315095537539358752             # 0x2020df2020202020
	.quad	4629910699613634624             # 0x4040bf4040404040
	.quad	-9187203049947365248            # 0x80807f8080808080
	.quad	143553341945872641              # 0x1fe010101010101
	.quad	215330564830528002              # 0x2fd020202020202
	.quad	358885010599838724              # 0x4fb040404040404
	.quad	645993902138460168              # 0x8f7080808080808
	.quad	1220211685215703056             # 0x10ef101010101010
	.quad	2368647251370188832             # 0x20df202020202020
	.quad	4665518383679160384             # 0x40bf404040404040
	.quad	-9187483425412448128            # 0x807f808080808080
	.quad	-143832609275707135             # 0xfe01010101010101
	.quad	-215607624513486334             # 0xfd02020202020202
	.quad	-359157654989044732             # 0xfb04040404040404
	.quad	-646257715940161528             # 0xf708080808080808
	.quad	-1220457837842395120            # 0xef10101010101010
	.quad	-2368858081646862304            # 0xdf20202020202020
	.quad	-4665658569255796672            # 0xbf40404040404040
	.quad	9187484529235886208             # 0x7f80808080808080
	.size	_ZL17ROOK_ATTACK_CACHE, 512

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"x != 0"
	.size	.L.str.4, 7

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"include/misc/bits.hpp"
	.size	.L.str.5, 22

	.type	.L__PRETTY_FUNCTION__._Z11u64ToSquarem,@object # @__PRETTY_FUNCTION__._Z11u64ToSquarem
.L__PRETTY_FUNCTION__._Z11u64ToSquarem:
	.asciz	"int u64ToSquare(uint64_t)"
	.size	.L__PRETTY_FUNCTION__._Z11u64ToSquarem, 26

	.type	_ZL18PAWN_CAPTURE_CACHE,@object # @_ZL18PAWN_CAPTURE_CACHE
	.section	.rodata,"a",@progbits
	.p2align	4
_ZL18PAWN_CAPTURE_CACHE:
	.quad	512                             # 0x200
	.quad	1280                            # 0x500
	.quad	2560                            # 0xa00
	.quad	5120                            # 0x1400
	.quad	10240                           # 0x2800
	.quad	20480                           # 0x5000
	.quad	40960                           # 0xa000
	.quad	16384                           # 0x4000
	.quad	131072                          # 0x20000
	.quad	327680                          # 0x50000
	.quad	655360                          # 0xa0000
	.quad	1310720                         # 0x140000
	.quad	2621440                         # 0x280000
	.quad	5242880                         # 0x500000
	.quad	10485760                        # 0xa00000
	.quad	4194304                         # 0x400000
	.quad	33554432                        # 0x2000000
	.quad	83886080                        # 0x5000000
	.quad	167772160                       # 0xa000000
	.quad	335544320                       # 0x14000000
	.quad	671088640                       # 0x28000000
	.quad	1342177280                      # 0x50000000
	.quad	2684354560                      # 0xa0000000
	.quad	1073741824                      # 0x40000000
	.quad	8589934592                      # 0x200000000
	.quad	21474836480                     # 0x500000000
	.quad	42949672960                     # 0xa00000000
	.quad	85899345920                     # 0x1400000000
	.quad	171798691840                    # 0x2800000000
	.quad	343597383680                    # 0x5000000000
	.quad	687194767360                    # 0xa000000000
	.quad	274877906944                    # 0x4000000000
	.quad	2199023255552                   # 0x20000000000
	.quad	5497558138880                   # 0x50000000000
	.quad	10995116277760                  # 0xa0000000000
	.quad	21990232555520                  # 0x140000000000
	.quad	43980465111040                  # 0x280000000000
	.quad	87960930222080                  # 0x500000000000
	.quad	175921860444160                 # 0xa00000000000
	.quad	70368744177664                  # 0x400000000000
	.quad	562949953421312                 # 0x2000000000000
	.quad	1407374883553280                # 0x5000000000000
	.quad	2814749767106560                # 0xa000000000000
	.quad	5629499534213120                # 0x14000000000000
	.quad	11258999068426240               # 0x28000000000000
	.quad	22517998136852480               # 0x50000000000000
	.quad	45035996273704960               # 0xa0000000000000
	.quad	18014398509481984               # 0x40000000000000
	.quad	144115188075855872              # 0x200000000000000
	.quad	360287970189639680              # 0x500000000000000
	.quad	720575940379279360              # 0xa00000000000000
	.quad	1441151880758558720             # 0x1400000000000000
	.quad	2882303761517117440             # 0x2800000000000000
	.quad	5764607523034234880             # 0x5000000000000000
	.quad	-6917529027641081856            # 0xa000000000000000
	.quad	4611686018427387904             # 0x4000000000000000
	.zero	64
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	20                              # 0x14
	.quad	40                              # 0x28
	.quad	80                              # 0x50
	.quad	160                             # 0xa0
	.quad	64                              # 0x40
	.quad	512                             # 0x200
	.quad	1280                            # 0x500
	.quad	2560                            # 0xa00
	.quad	5120                            # 0x1400
	.quad	10240                           # 0x2800
	.quad	20480                           # 0x5000
	.quad	40960                           # 0xa000
	.quad	16384                           # 0x4000
	.quad	131072                          # 0x20000
	.quad	327680                          # 0x50000
	.quad	655360                          # 0xa0000
	.quad	1310720                         # 0x140000
	.quad	2621440                         # 0x280000
	.quad	5242880                         # 0x500000
	.quad	10485760                        # 0xa00000
	.quad	4194304                         # 0x400000
	.quad	33554432                        # 0x2000000
	.quad	83886080                        # 0x5000000
	.quad	167772160                       # 0xa000000
	.quad	335544320                       # 0x14000000
	.quad	671088640                       # 0x28000000
	.quad	1342177280                      # 0x50000000
	.quad	2684354560                      # 0xa0000000
	.quad	1073741824                      # 0x40000000
	.quad	8589934592                      # 0x200000000
	.quad	21474836480                     # 0x500000000
	.quad	42949672960                     # 0xa00000000
	.quad	85899345920                     # 0x1400000000
	.quad	171798691840                    # 0x2800000000
	.quad	343597383680                    # 0x5000000000
	.quad	687194767360                    # 0xa000000000
	.quad	274877906944                    # 0x4000000000
	.quad	2199023255552                   # 0x20000000000
	.quad	5497558138880                   # 0x50000000000
	.quad	10995116277760                  # 0xa0000000000
	.quad	21990232555520                  # 0x140000000000
	.quad	43980465111040                  # 0x280000000000
	.quad	87960930222080                  # 0x500000000000
	.quad	175921860444160                 # 0xa00000000000
	.quad	70368744177664                  # 0x400000000000
	.quad	562949953421312                 # 0x2000000000000
	.quad	1407374883553280                # 0x5000000000000
	.quad	2814749767106560                # 0xa000000000000
	.quad	5629499534213120                # 0x14000000000000
	.quad	11258999068426240               # 0x28000000000000
	.quad	22517998136852480               # 0x50000000000000
	.quad	45035996273704960               # 0xa0000000000000
	.quad	18014398509481984               # 0x40000000000000
	.size	_ZL18PAWN_CAPTURE_CACHE, 1024

	.type	_ZL17PAWN_DOUBLE_CACHE,@object  # @_ZL17PAWN_DOUBLE_CACHE
	.p2align	4
_ZL17PAWN_DOUBLE_CACHE:
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	16777216                        # 0x1000000
	.quad	33554432                        # 0x2000000
	.quad	67108864                        # 0x4000000
	.quad	134217728                       # 0x8000000
	.quad	268435456                       # 0x10000000
	.quad	536870912                       # 0x20000000
	.quad	1073741824                      # 0x40000000
	.quad	2147483648                      # 0x80000000
	.zero	384
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	4294967296                      # 0x100000000
	.quad	8589934592                      # 0x200000000
	.quad	17179869184                     # 0x400000000
	.quad	34359738368                     # 0x800000000
	.quad	68719476736                     # 0x1000000000
	.quad	137438953472                    # 0x2000000000
	.quad	274877906944                    # 0x4000000000
	.quad	549755813888                    # 0x8000000000
	.zero	64
	.size	_ZL17PAWN_DOUBLE_CACHE, 1024

	.type	_ZL15PAWN_MOVE_CACHE,@object    # @_ZL15PAWN_MOVE_CACHE
	.p2align	4
_ZL15PAWN_MOVE_CACHE:
	.quad	256                             # 0x100
	.quad	512                             # 0x200
	.quad	1024                            # 0x400
	.quad	2048                            # 0x800
	.quad	4096                            # 0x1000
	.quad	8192                            # 0x2000
	.quad	16384                           # 0x4000
	.quad	32768                           # 0x8000
	.quad	65536                           # 0x10000
	.quad	131072                          # 0x20000
	.quad	262144                          # 0x40000
	.quad	524288                          # 0x80000
	.quad	1048576                         # 0x100000
	.quad	2097152                         # 0x200000
	.quad	4194304                         # 0x400000
	.quad	8388608                         # 0x800000
	.quad	16777216                        # 0x1000000
	.quad	33554432                        # 0x2000000
	.quad	67108864                        # 0x4000000
	.quad	134217728                       # 0x8000000
	.quad	268435456                       # 0x10000000
	.quad	536870912                       # 0x20000000
	.quad	1073741824                      # 0x40000000
	.quad	2147483648                      # 0x80000000
	.quad	4294967296                      # 0x100000000
	.quad	8589934592                      # 0x200000000
	.quad	17179869184                     # 0x400000000
	.quad	34359738368                     # 0x800000000
	.quad	68719476736                     # 0x1000000000
	.quad	137438953472                    # 0x2000000000
	.quad	274877906944                    # 0x4000000000
	.quad	549755813888                    # 0x8000000000
	.quad	1099511627776                   # 0x10000000000
	.quad	2199023255552                   # 0x20000000000
	.quad	4398046511104                   # 0x40000000000
	.quad	8796093022208                   # 0x80000000000
	.quad	17592186044416                  # 0x100000000000
	.quad	35184372088832                  # 0x200000000000
	.quad	70368744177664                  # 0x400000000000
	.quad	140737488355328                 # 0x800000000000
	.quad	281474976710656                 # 0x1000000000000
	.quad	562949953421312                 # 0x2000000000000
	.quad	1125899906842624                # 0x4000000000000
	.quad	2251799813685248                # 0x8000000000000
	.quad	4503599627370496                # 0x10000000000000
	.quad	9007199254740992                # 0x20000000000000
	.quad	18014398509481984               # 0x40000000000000
	.quad	36028797018963968               # 0x80000000000000
	.quad	72057594037927936               # 0x100000000000000
	.quad	144115188075855872              # 0x200000000000000
	.quad	288230376151711744              # 0x400000000000000
	.quad	576460752303423488              # 0x800000000000000
	.quad	1152921504606846976             # 0x1000000000000000
	.quad	2305843009213693952             # 0x2000000000000000
	.quad	4611686018427387904             # 0x4000000000000000
	.quad	-9223372036854775808            # 0x8000000000000000
	.zero	64
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	32                              # 0x20
	.quad	64                              # 0x40
	.quad	128                             # 0x80
	.quad	256                             # 0x100
	.quad	512                             # 0x200
	.quad	1024                            # 0x400
	.quad	2048                            # 0x800
	.quad	4096                            # 0x1000
	.quad	8192                            # 0x2000
	.quad	16384                           # 0x4000
	.quad	32768                           # 0x8000
	.quad	65536                           # 0x10000
	.quad	131072                          # 0x20000
	.quad	262144                          # 0x40000
	.quad	524288                          # 0x80000
	.quad	1048576                         # 0x100000
	.quad	2097152                         # 0x200000
	.quad	4194304                         # 0x400000
	.quad	8388608                         # 0x800000
	.quad	16777216                        # 0x1000000
	.quad	33554432                        # 0x2000000
	.quad	67108864                        # 0x4000000
	.quad	134217728                       # 0x8000000
	.quad	268435456                       # 0x10000000
	.quad	536870912                       # 0x20000000
	.quad	1073741824                      # 0x40000000
	.quad	2147483648                      # 0x80000000
	.quad	4294967296                      # 0x100000000
	.quad	8589934592                      # 0x200000000
	.quad	17179869184                     # 0x400000000
	.quad	34359738368                     # 0x800000000
	.quad	68719476736                     # 0x1000000000
	.quad	137438953472                    # 0x2000000000
	.quad	274877906944                    # 0x4000000000
	.quad	549755813888                    # 0x8000000000
	.quad	1099511627776                   # 0x10000000000
	.quad	2199023255552                   # 0x20000000000
	.quad	4398046511104                   # 0x40000000000
	.quad	8796093022208                   # 0x80000000000
	.quad	17592186044416                  # 0x100000000000
	.quad	35184372088832                  # 0x200000000000
	.quad	70368744177664                  # 0x400000000000
	.quad	140737488355328                 # 0x800000000000
	.quad	281474976710656                 # 0x1000000000000
	.quad	562949953421312                 # 0x2000000000000
	.quad	1125899906842624                # 0x4000000000000
	.quad	2251799813685248                # 0x8000000000000
	.quad	4503599627370496                # 0x10000000000000
	.quad	9007199254740992                # 0x20000000000000
	.quad	18014398509481984               # 0x40000000000000
	.quad	36028797018963968               # 0x80000000000000
	.size	_ZL15PAWN_MOVE_CACHE, 1024

	.type	_ZL16BISHOP_RAY_CACHE,@object   # @_ZL16BISHOP_RAY_CACHE
	.p2align	4
_ZL16BISHOP_RAY_CACHE:
	.quad	0                               # 0x0
	.quad	256                             # 0x100
	.quad	66048                           # 0x10200
	.quad	16909312                        # 0x1020400
	.quad	4328785920                      # 0x102040800
	.quad	1108169199616                   # 0x10204081000
	.quad	283691315109888                 # 0x1020408102000
	.quad	72624976668147712               # 0x102040810204000
	.quad	0                               # 0x0
	.quad	65536                           # 0x10000
	.quad	16908288                        # 0x1020000
	.quad	4328783872                      # 0x102040000
	.quad	1108169195520                   # 0x10204080000
	.quad	283691315101696                 # 0x1020408100000
	.quad	72624976668131328               # 0x102040810200000
	.quad	145249953336262656              # 0x204081020400000
	.quad	0                               # 0x0
	.quad	16777216                        # 0x1000000
	.quad	4328521728                      # 0x102000000
	.quad	1108168671232                   # 0x10204000000
	.quad	283691314053120                 # 0x1020408000000
	.quad	72624976666034176               # 0x102040810000000
	.quad	145249953332068352              # 0x204081020000000
	.quad	290499906664136704              # 0x408102040000000
	.quad	0                               # 0x0
	.quad	4294967296                      # 0x100000000
	.quad	1108101562368                   # 0x10200000000
	.quad	283691179835392                 # 0x1020400000000
	.quad	72624976397598720               # 0x102040800000000
	.quad	145249952795197440              # 0x204081000000000
	.quad	290499905590394880              # 0x408102000000000
	.quad	580999811180789760              # 0x810204000000000
	.quad	0                               # 0x0
	.quad	1099511627776                   # 0x10000000000
	.quad	283673999966208                 # 0x1020000000000
	.quad	72624942037860352               # 0x102040000000000
	.quad	145249884075720704              # 0x204080000000000
	.quad	290499768151441408              # 0x408100000000000
	.quad	580999536302882816              # 0x810200000000000
	.quad	1161999072605765632             # 0x1020400000000000
	.quad	0                               # 0x0
	.quad	281474976710656                 # 0x1000000000000
	.quad	72620543991349248               # 0x102000000000000
	.quad	145241087982698496              # 0x204000000000000
	.quad	290482175965396992              # 0x408000000000000
	.quad	580964351930793984              # 0x810000000000000
	.quad	1161928703861587968             # 0x1020000000000000
	.quad	2323857407723175936             # 0x2040000000000000
	.quad	0                               # 0x0
	.quad	72057594037927936               # 0x100000000000000
	.quad	144115188075855872              # 0x200000000000000
	.quad	288230376151711744              # 0x400000000000000
	.quad	576460752303423488              # 0x800000000000000
	.quad	1152921504606846976             # 0x1000000000000000
	.quad	2305843009213693952             # 0x2000000000000000
	.quad	4611686018427387904             # 0x4000000000000000
	.zero	1600
	.quad	-9205322385119247872            # 0x8040201008040200
	.quad	36099303471055872               # 0x80402010080400
	.quad	141012904183808                 # 0x804020100800
	.quad	550831656960                    # 0x8040201000
	.quad	2151686144                      # 0x80402000
	.quad	8404992                         # 0x804000
	.quad	32768                           # 0x8000
	.quad	0                               # 0x0
	.quad	4620710844295151616             # 0x4020100804020000
	.quad	-9205322385119248384            # 0x8040201008040000
	.quad	36099303471054848               # 0x80402010080000
	.quad	141012904181760                 # 0x804020100000
	.quad	550831652864                    # 0x8040200000
	.quad	2151677952                      # 0x80400000
	.quad	8388608                         # 0x800000
	.quad	0                               # 0x0
	.quad	2310355422147510272             # 0x2010080402000000
	.quad	4620710844295020544             # 0x4020100804000000
	.quad	-9205322385119510528            # 0x8040201008000000
	.quad	36099303470530560               # 0x80402010000000
	.quad	141012903133184                 # 0x804020000000
	.quad	550829555712                    # 0x8040000000
	.quad	2147483648                      # 0x80000000
	.quad	0                               # 0x0
	.quad	1155177711056977920             # 0x1008040200000000
	.quad	2310355422113955840             # 0x2010080400000000
	.quad	4620710844227911680             # 0x4020100800000000
	.quad	-9205322385253728256            # 0x8040201000000000
	.quad	36099303202095104               # 0x80402000000000
	.quad	141012366262272                 # 0x804000000000
	.quad	549755813888                    # 0x8000000000
	.quad	0                               # 0x0
	.quad	577588851233521664              # 0x804020000000000
	.quad	1155177702467043328             # 0x1008040000000000
	.quad	2310355404934086656             # 0x2010080000000000
	.quad	4620710809868173312             # 0x4020100000000000
	.quad	-9205322453973204992            # 0x8040200000000000
	.quad	36099165763141632               # 0x80400000000000
	.quad	140737488355328                 # 0x800000000000
	.quad	0                               # 0x0
	.quad	288793326105133056              # 0x402000000000000
	.quad	577586652210266112              # 0x804000000000000
	.quad	1155173304420532224             # 0x1008000000000000
	.quad	2310346608841064448             # 0x2010000000000000
	.quad	4620693217682128896             # 0x4020000000000000
	.quad	-9205357638345293824            # 0x8040000000000000
	.quad	36028797018963968               # 0x80000000000000
	.quad	0                               # 0x0
	.quad	144115188075855872              # 0x200000000000000
	.quad	288230376151711744              # 0x400000000000000
	.quad	576460752303423488              # 0x800000000000000
	.quad	1152921504606846976             # 0x1000000000000000
	.quad	2305843009213693952             # 0x2000000000000000
	.quad	4611686018427387904             # 0x4000000000000000
	.quad	-9223372036854775808            # 0x8000000000000000
	.zero	1608
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	32                              # 0x20
	.quad	64                              # 0x40
	.quad	128                             # 0x80
	.quad	0                               # 0x0
	.quad	516                             # 0x204
	.quad	1032                            # 0x408
	.quad	2064                            # 0x810
	.quad	4128                            # 0x1020
	.quad	8256                            # 0x2040
	.quad	16512                           # 0x4080
	.quad	32768                           # 0x8000
	.quad	0                               # 0x0
	.quad	132104                          # 0x20408
	.quad	264208                          # 0x40810
	.quad	528416                          # 0x81020
	.quad	1056832                         # 0x102040
	.quad	2113664                         # 0x204080
	.quad	4227072                         # 0x408000
	.quad	8388608                         # 0x800000
	.quad	0                               # 0x0
	.quad	33818640                        # 0x2040810
	.quad	67637280                        # 0x4081020
	.quad	135274560                       # 0x8102040
	.quad	270549120                       # 0x10204080
	.quad	541097984                       # 0x20408000
	.quad	1082130432                      # 0x40800000
	.quad	2147483648                      # 0x80000000
	.quad	0                               # 0x0
	.quad	8657571872                      # 0x204081020
	.quad	17315143744                     # 0x408102040
	.quad	34630287488                     # 0x810204080
	.quad	69260574720                     # 0x1020408000
	.quad	138521083904                    # 0x2040800000
	.quad	277025390592                    # 0x4080000000
	.quad	549755813888                    # 0x8000000000
	.quad	0                               # 0x0
	.quad	2216338399296                   # 0x20408102040
	.quad	4432676798592                   # 0x40810204080
	.quad	8865353596928                   # 0x81020408000
	.quad	17730707128320                  # 0x102040800000
	.quad	35461397479424                  # 0x204080000000
	.quad	70918499991552                  # 0x408000000000
	.quad	140737488355328                 # 0x800000000000
	.quad	0                               # 0x0
	.quad	567382630219904                 # 0x2040810204080
	.quad	1134765260439552                # 0x4081020408000
	.quad	2269530520813568                # 0x8102040800000
	.quad	4539061024849920                # 0x10204080000000
	.quad	9078117754732544                # 0x20408000000000
	.quad	18155135997837312               # 0x40800000000000
	.quad	36028797018963968               # 0x80000000000000
	.zero	1544
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	32                              # 0x20
	.quad	64                              # 0x40
	.quad	0                               # 0x0
	.quad	256                             # 0x100
	.quad	513                             # 0x201
	.quad	1026                            # 0x402
	.quad	2052                            # 0x804
	.quad	4104                            # 0x1008
	.quad	8208                            # 0x2010
	.quad	16416                           # 0x4020
	.quad	0                               # 0x0
	.quad	65536                           # 0x10000
	.quad	131328                          # 0x20100
	.quad	262657                          # 0x40201
	.quad	525314                          # 0x80402
	.quad	1050628                         # 0x100804
	.quad	2101256                         # 0x201008
	.quad	4202512                         # 0x402010
	.quad	0                               # 0x0
	.quad	16777216                        # 0x1000000
	.quad	33619968                        # 0x2010000
	.quad	67240192                        # 0x4020100
	.quad	134480385                       # 0x8040201
	.quad	268960770                       # 0x10080402
	.quad	537921540                       # 0x20100804
	.quad	1075843080                      # 0x40201008
	.quad	0                               # 0x0
	.quad	4294967296                      # 0x100000000
	.quad	8606711808                      # 0x201000000
	.quad	17213489152                     # 0x402010000
	.quad	34426978560                     # 0x804020100
	.quad	68853957121                     # 0x1008040201
	.quad	137707914242                    # 0x2010080402
	.quad	275415828484                    # 0x4020100804
	.quad	0                               # 0x0
	.quad	1099511627776                   # 0x10000000000
	.quad	2203318222848                   # 0x20100000000
	.quad	4406653222912                   # 0x40201000000
	.quad	8813306511360                   # 0x80402010000
	.quad	17626613022976                  # 0x100804020100
	.quad	35253226045953                  # 0x201008040201
	.quad	70506452091906                  # 0x402010080402
	.quad	0                               # 0x0
	.quad	281474976710656                 # 0x1000000000000
	.quad	564049465049088                 # 0x2010000000000
	.quad	1128103225065472                # 0x4020100000000
	.quad	2256206466908160                # 0x8040201000000
	.quad	4512412933881856                # 0x10080402010000
	.quad	9024825867763968                # 0x20100804020100
	.quad	18049651735527937               # 0x40201008040201
	.zero	1536
	.size	_ZL16BISHOP_RAY_CACHE, 8192

	.type	_ZL15ROOKS_RAY_CACHE,@object    # @_ZL15ROOKS_RAY_CACHE
	.p2align	4
_ZL15ROOKS_RAY_CACHE:
	.quad	72340172838076672               # 0x101010101010100
	.quad	144680345676153344              # 0x202020202020200
	.quad	289360691352306688              # 0x404040404040400
	.quad	578721382704613376              # 0x808080808080800
	.quad	1157442765409226752             # 0x1010101010101000
	.quad	2314885530818453504             # 0x2020202020202000
	.quad	4629771061636907008             # 0x4040404040404000
	.quad	-9187201950435737600            # 0x8080808080808000
	.quad	72340172838076416               # 0x101010101010000
	.quad	144680345676152832              # 0x202020202020000
	.quad	289360691352305664              # 0x404040404040000
	.quad	578721382704611328              # 0x808080808080000
	.quad	1157442765409222656             # 0x1010101010100000
	.quad	2314885530818445312             # 0x2020202020200000
	.quad	4629771061636890624             # 0x4040404040400000
	.quad	-9187201950435770368            # 0x8080808080800000
	.quad	72340172838010880               # 0x101010101000000
	.quad	144680345676021760              # 0x202020202000000
	.quad	289360691352043520              # 0x404040404000000
	.quad	578721382704087040              # 0x808080808000000
	.quad	1157442765408174080             # 0x1010101010000000
	.quad	2314885530816348160             # 0x2020202020000000
	.quad	4629771061632696320             # 0x4040404040000000
	.quad	-9187201950444158976            # 0x8080808080000000
	.quad	72340172821233664               # 0x101010100000000
	.quad	144680345642467328              # 0x202020200000000
	.quad	289360691284934656              # 0x404040400000000
	.quad	578721382569869312              # 0x808080800000000
	.quad	1157442765139738624             # 0x1010101000000000
	.quad	2314885530279477248             # 0x2020202000000000
	.quad	4629771060558954496             # 0x4040404000000000
	.quad	-9187201952591642624            # 0x8080808000000000
	.quad	72340168526266368               # 0x101010000000000
	.quad	144680337052532736              # 0x202020000000000
	.quad	289360674105065472              # 0x404040000000000
	.quad	578721348210130944              # 0x808080000000000
	.quad	1157442696420261888             # 0x1010100000000000
	.quad	2314885392840523776             # 0x2020200000000000
	.quad	4629770785681047552             # 0x4040400000000000
	.quad	-9187202502347456512            # 0x8080800000000000
	.quad	72339069014638592               # 0x101000000000000
	.quad	144678138029277184              # 0x202000000000000
	.quad	289356276058554368              # 0x404000000000000
	.quad	578712552117108736              # 0x808000000000000
	.quad	1157425104234217472             # 0x1010000000000000
	.quad	2314850208468434944             # 0x2020000000000000
	.quad	4629700416936869888             # 0x4040000000000000
	.quad	-9187343239835811840            # 0x8080000000000000
	.quad	72057594037927936               # 0x100000000000000
	.quad	144115188075855872              # 0x200000000000000
	.quad	288230376151711744              # 0x400000000000000
	.quad	576460752303423488              # 0x800000000000000
	.quad	1152921504606846976             # 0x1000000000000000
	.quad	2305843009213693952             # 0x2000000000000000
	.quad	4611686018427387904             # 0x4000000000000000
	.quad	-9223372036854775808            # 0x8000000000000000
	.zero	1600
	.quad	254                             # 0xfe
	.quad	252                             # 0xfc
	.quad	248                             # 0xf8
	.quad	240                             # 0xf0
	.quad	224                             # 0xe0
	.quad	192                             # 0xc0
	.quad	128                             # 0x80
	.quad	0                               # 0x0
	.quad	65024                           # 0xfe00
	.quad	64512                           # 0xfc00
	.quad	63488                           # 0xf800
	.quad	61440                           # 0xf000
	.quad	57344                           # 0xe000
	.quad	49152                           # 0xc000
	.quad	32768                           # 0x8000
	.quad	0                               # 0x0
	.quad	16646144                        # 0xfe0000
	.quad	16515072                        # 0xfc0000
	.quad	16252928                        # 0xf80000
	.quad	15728640                        # 0xf00000
	.quad	14680064                        # 0xe00000
	.quad	12582912                        # 0xc00000
	.quad	8388608                         # 0x800000
	.quad	0                               # 0x0
	.quad	4261412864                      # 0xfe000000
	.quad	4227858432                      # 0xfc000000
	.quad	4160749568                      # 0xf8000000
	.quad	4026531840                      # 0xf0000000
	.quad	3758096384                      # 0xe0000000
	.quad	3221225472                      # 0xc0000000
	.quad	2147483648                      # 0x80000000
	.quad	0                               # 0x0
	.quad	1090921693184                   # 0xfe00000000
	.quad	1082331758592                   # 0xfc00000000
	.quad	1065151889408                   # 0xf800000000
	.quad	1030792151040                   # 0xf000000000
	.quad	962072674304                    # 0xe000000000
	.quad	824633720832                    # 0xc000000000
	.quad	549755813888                    # 0x8000000000
	.quad	0                               # 0x0
	.quad	279275953455104                 # 0xfe0000000000
	.quad	277076930199552                 # 0xfc0000000000
	.quad	272678883688448                 # 0xf80000000000
	.quad	263882790666240                 # 0xf00000000000
	.quad	246290604621824                 # 0xe00000000000
	.quad	211106232532992                 # 0xc00000000000
	.quad	140737488355328                 # 0x800000000000
	.quad	0                               # 0x0
	.quad	71494644084506624               # 0xfe000000000000
	.quad	70931694131085312               # 0xfc000000000000
	.quad	69805794224242688               # 0xf8000000000000
	.quad	67553994410557440               # 0xf0000000000000
	.quad	63050394783186944               # 0xe0000000000000
	.quad	54043195528445952               # 0xc0000000000000
	.quad	36028797018963968               # 0x80000000000000
	.quad	0                               # 0x0
	.quad	-144115188075855872             # 0xfe00000000000000
	.quad	-288230376151711744             # 0xfc00000000000000
	.quad	-576460752303423488             # 0xf800000000000000
	.quad	-1152921504606846976            # 0xf000000000000000
	.quad	-2305843009213693952            # 0xe000000000000000
	.quad	-4611686018427387904            # 0xc000000000000000
	.quad	-9223372036854775808            # 0x8000000000000000
	.zero	1544
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	32                              # 0x20
	.quad	64                              # 0x40
	.quad	128                             # 0x80
	.quad	257                             # 0x101
	.quad	514                             # 0x202
	.quad	1028                            # 0x404
	.quad	2056                            # 0x808
	.quad	4112                            # 0x1010
	.quad	8224                            # 0x2020
	.quad	16448                           # 0x4040
	.quad	32896                           # 0x8080
	.quad	65793                           # 0x10101
	.quad	131586                          # 0x20202
	.quad	263172                          # 0x40404
	.quad	526344                          # 0x80808
	.quad	1052688                         # 0x101010
	.quad	2105376                         # 0x202020
	.quad	4210752                         # 0x404040
	.quad	8421504                         # 0x808080
	.quad	16843009                        # 0x1010101
	.quad	33686018                        # 0x2020202
	.quad	67372036                        # 0x4040404
	.quad	134744072                       # 0x8080808
	.quad	269488144                       # 0x10101010
	.quad	538976288                       # 0x20202020
	.quad	1077952576                      # 0x40404040
	.quad	2155905152                      # 0x80808080
	.quad	4311810305                      # 0x101010101
	.quad	8623620610                      # 0x202020202
	.quad	17247241220                     # 0x404040404
	.quad	34494482440                     # 0x808080808
	.quad	68988964880                     # 0x1010101010
	.quad	137977929760                    # 0x2020202020
	.quad	275955859520                    # 0x4040404040
	.quad	551911719040                    # 0x8080808080
	.quad	1103823438081                   # 0x10101010101
	.quad	2207646876162                   # 0x20202020202
	.quad	4415293752324                   # 0x40404040404
	.quad	8830587504648                   # 0x80808080808
	.quad	17661175009296                  # 0x101010101010
	.quad	35322350018592                  # 0x202020202020
	.quad	70644700037184                  # 0x404040404040
	.quad	141289400074368                 # 0x808080808080
	.quad	282578800148737                 # 0x1010101010101
	.quad	565157600297474                 # 0x2020202020202
	.quad	1130315200594948                # 0x4040404040404
	.quad	2260630401189896                # 0x8080808080808
	.quad	4521260802379792                # 0x10101010101010
	.quad	9042521604759584                # 0x20202020202020
	.quad	18085043209519168               # 0x40404040404040
	.quad	36170086419038336               # 0x80808080808080
	.zero	1536
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	15                              # 0xf
	.quad	31                              # 0x1f
	.quad	63                              # 0x3f
	.quad	127                             # 0x7f
	.quad	0                               # 0x0
	.quad	256                             # 0x100
	.quad	768                             # 0x300
	.quad	1792                            # 0x700
	.quad	3840                            # 0xf00
	.quad	7936                            # 0x1f00
	.quad	16128                           # 0x3f00
	.quad	32512                           # 0x7f00
	.quad	0                               # 0x0
	.quad	65536                           # 0x10000
	.quad	196608                          # 0x30000
	.quad	458752                          # 0x70000
	.quad	983040                          # 0xf0000
	.quad	2031616                         # 0x1f0000
	.quad	4128768                         # 0x3f0000
	.quad	8323072                         # 0x7f0000
	.quad	0                               # 0x0
	.quad	16777216                        # 0x1000000
	.quad	50331648                        # 0x3000000
	.quad	117440512                       # 0x7000000
	.quad	251658240                       # 0xf000000
	.quad	520093696                       # 0x1f000000
	.quad	1056964608                      # 0x3f000000
	.quad	2130706432                      # 0x7f000000
	.quad	0                               # 0x0
	.quad	4294967296                      # 0x100000000
	.quad	12884901888                     # 0x300000000
	.quad	30064771072                     # 0x700000000
	.quad	64424509440                     # 0xf00000000
	.quad	133143986176                    # 0x1f00000000
	.quad	270582939648                    # 0x3f00000000
	.quad	545460846592                    # 0x7f00000000
	.quad	0                               # 0x0
	.quad	1099511627776                   # 0x10000000000
	.quad	3298534883328                   # 0x30000000000
	.quad	7696581394432                   # 0x70000000000
	.quad	16492674416640                  # 0xf0000000000
	.quad	34084860461056                  # 0x1f0000000000
	.quad	69269232549888                  # 0x3f0000000000
	.quad	139637976727552                 # 0x7f0000000000
	.quad	0                               # 0x0
	.quad	281474976710656                 # 0x1000000000000
	.quad	844424930131968                 # 0x3000000000000
	.quad	1970324836974592                # 0x7000000000000
	.quad	4222124650659840                # 0xf000000000000
	.quad	8725724278030336                # 0x1f000000000000
	.quad	17732923532771328               # 0x3f000000000000
	.quad	35747322042253312               # 0x7f000000000000
	.quad	0                               # 0x0
	.quad	72057594037927936               # 0x100000000000000
	.quad	216172782113783808              # 0x300000000000000
	.quad	504403158265495552              # 0x700000000000000
	.quad	1080863910568919040             # 0xf00000000000000
	.quad	2233785415175766016             # 0x1f00000000000000
	.quad	4539628424389459968             # 0x3f00000000000000
	.quad	9151314442816847872             # 0x7f00000000000000
	.zero	1536
	.size	_ZL15ROOKS_RAY_CACHE, 8192

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_bitboards.cpp
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"aGw",@progbits,DW.ref.__gxx_personality_v0,comdat
	.p2align	3
	.type	DW.ref.__gxx_personality_v0,@object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"clang version 11.0.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __cxx_global_var_init
	.addrsig_sym __cxa_atexit
	.addrsig_sym _Z13isValidSquarei
	.addrsig_sym _Z11u64ToSquarem
	.addrsig_sym __assert_fail
	.addrsig_sym _ZN9move_maps9rookMovesEim
	.addrsig_sym _ZN9move_maps11bishopMovesEim
	.addrsig_sym _Z18rookMovesClassicalim
	.addrsig_sym _ZN9move_maps7rookRayEii
	.addrsig_sym _Z14bitscanForwardm
	.addrsig_sym _Z14bitscanReversem
	.addrsig_sym _Z20bishopMovesClassicalim
	.addrsig_sym _ZN9move_maps9bishopRayEii
	.addrsig_sym _Z12permute_maskmii
	.addrsig_sym _Z12verbose_infoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _Z4haddm
	.addrsig_sym _Z11squareToRowi
	.addrsig_sym _GLOBAL__sub_I_bitboards.cpp
	.addrsig_sym _Unwind_Resume
	.addrsig_sym __stack_chk_fail
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym BISHOP_MAGIC_NUMBERS
	.addrsig_sym BISHOP_MAGIC_SHIFTS
	.addrsig_sym BISHOP_MAGIC_TABLE
	.addrsig_sym ROOK_MAGIC_NUMBERS
	.addrsig_sym ROOK_MAGIC_SHIFTS
	.addrsig_sym ROOK_MAGIC_TABLE
	.addrsig_sym _ZL19ROOK_MASKED_ATTACKS
	.addrsig_sym _ZL21BISHOP_MASKED_ATTACKS
	.addrsig_sym _ZL18ONE_FILE_ADJ_CACHE
	.addrsig_sym _ZL17KNIGHT_MOVE_CACHE
	.addrsig_sym _ZL15KING_MOVE_CACHE
	.addrsig_sym _ZL19BISHOP_ATTACK_CACHE
	.addrsig_sym _ZL17ROOK_ATTACK_CACHE
	.addrsig_sym _ZL18PAWN_CAPTURE_CACHE
	.addrsig_sym _ZL17PAWN_DOUBLE_CACHE
	.addrsig_sym _ZL15PAWN_MOVE_CACHE
	.addrsig_sym _ZL16BISHOP_RAY_CACHE
	.addrsig_sym _ZL15ROOKS_RAY_CACHE
