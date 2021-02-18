	.text
	.file	"checks.cpp"
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
	.globl	_ZN5Board19verify_move_safety_E5CMove # -- Begin function _ZN5Board19verify_move_safety_E5CMove
	.p2align	4, 0x90
	.type	_ZN5Board19verify_move_safety_E5CMove,@function
_ZN5Board19verify_move_safety_E5CMove:  # @_ZN5Board19verify_move_safety_E5CMove
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
                                        # kill: def $si killed $si killed $esi
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movw	%si, -16(%rbp)
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rax
	testb	$1, 1228(%rax)
	movq	%rax, -144(%rbp)                # 8-byte Spill
	je	.LBB1_2
# %bb.1:
	jmp	.LBB1_3
.LBB1_2:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$9, %edx
	leaq	.L__PRETTY_FUNCTION__._ZN5Board19verify_move_safety_E5CMove(%rip), %rcx
	callq	__assert_fail@PLT
.LBB1_3:
	movq	-144(%rbp), %rdi                # 8-byte Reload
	callq	_ZNK5Board8is_checkEv@PLT
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB1_4
	jmp	.LBB1_5
.LBB1_4:
	jmp	.LBB1_6
.LBB1_5:
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$10, %edx
	leaq	.L__PRETTY_FUNCTION__._ZN5Board19verify_move_safety_E5CMove(%rip), %rcx
	callq	__assert_fail@PLT
.LBB1_6:
	movq	-144(%rbp), %rdi                # 8-byte Reload
	callq	_ZNK5Board4turnEv@PLT
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %edi
	callq	_Z13oppositeColori
	movl	%eax, -40(%rbp)
	leaq	-16(%rbp), %rdi
	callq	_ZNK5CMove3srcEv
	movq	%rax, -48(%rbp)
	leaq	-16(%rbp), %rdi
	callq	_ZNK5CMove4destEv
	movq	%rax, -56(%rbp)
	leaq	-16(%rbp), %rdi
	callq	_ZNK5CMove9is_castleEv
	testb	$1, %al
	jne	.LBB1_7
	jmp	.LBB1_8
.LBB1_7:
	movb	$1, -17(%rbp)
	jmp	.LBB1_18
.LBB1_8:
	leaq	-16(%rbp), %rdi
	callq	_ZNK5CMove9type_codeEv
	cmpl	$5, %eax
	jne	.LBB1_10
# %bb.9:
	movq	-56(%rbp), %rdi
	callq	_Z11u64ToSquarem
	movl	-40(%rbp), %esi
	movl	%eax, %edi
	callq	_ZN9move_maps9pawnMovesEii@PLT
	movq	%rax, -64(%rbp)
	movl	-40(%rbp), %edi
	callq	_ZN5piece9get_queenEi
	movslq	%eax, %rcx
	movq	%rcx, -72(%rbp)
	movq	-144(%rbp), %rdi                # 8-byte Reload
	callq	_ZNK5Board9occupancyEv@PLT
	movq	-48(%rbp), %rcx
	orq	-64(%rbp), %rcx
	xorq	$-1, %rcx
	andq	%rcx, %rax
	orq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	-40(%rbp), %edi
	callq	_ZN5piece8get_rookEi
	movslq	%eax, %rcx
	movq	-144(%rbp), %rdx                # 8-byte Reload
	movq	(%rdx,%rcx,8), %rcx
	orq	-72(%rbp), %rcx
	movq	%rcx, -88(%rbp)
	movl	-40(%rbp), %edi
	callq	_ZN5piece10get_bishopEi
	movslq	%eax, %rcx
	movq	-144(%rbp), %rdx                # 8-byte Reload
	movq	(%rdx,%rcx,8), %rcx
	orq	-72(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movq	-80(%rbp), %rdi
	movl	-36(%rbp), %eax
	movq	%rdi, -152(%rbp)                # 8-byte Spill
	movl	%eax, %edi
	callq	_ZN5piece8get_kingEi
	movslq	%eax, %rcx
	movq	-144(%rbp), %rdx                # 8-byte Reload
	movq	(%rdx,%rcx,8), %rsi
	movq	-88(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	-152(%rbp), %rdi                # 8-byte Reload
	callq	_ZN9move_maps17isAttackedSlidingEmmmm@PLT
	xorb	$-1, %al
	andb	$1, %al
	movb	%al, -17(%rbp)
	jmp	.LBB1_18
.LBB1_10:
	movq	-48(%rbp), %rsi
	movq	-144(%rbp), %rdi                # 8-byte Reload
	callq	_ZNK5Board9piece_at_Em@PLT
	movl	%eax, -100(%rbp)
	movl	-100(%rbp), %edi
	callq	_Z7colorOfi
	cmpl	-36(%rbp), %eax
	jne	.LBB1_12
# %bb.11:
	jmp	.LBB1_13
.LBB1_12:
	leaq	.L.str.3(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$34, %edx
	leaq	.L__PRETTY_FUNCTION__._ZN5Board19verify_move_safety_E5CMove(%rip), %rcx
	callq	__assert_fail@PLT
.LBB1_13:
	movl	-100(%rbp), %edi
	callq	_ZN5piece7is_kingEi
	testb	$1, %al
	jne	.LBB1_14
	jmp	.LBB1_17
.LBB1_14:
	movq	-144(%rbp), %rax                # 8-byte Reload
	addq	$104, %rax
	addq	$576, %rax                      # imm = 0x240
	movq	-56(%rbp), %rdi
	movq	%rax, -160(%rbp)                # 8-byte Spill
	callq	_Z11u64ToSquarem
	movslq	%eax, %rsi
	movq	-160(%rbp), %rdi                # 8-byte Reload
	callq	_ZNSt5arrayImLm64EEixEm
	movq	(%rax), %rax
	movl	-40(%rbp), %esi
	movq	-144(%rbp), %rdi                # 8-byte Reload
	movq	%rax, -168(%rbp)                # 8-byte Spill
	callq	_ZNK5Board9occupancyEi@PLT
	movq	-168(%rbp), %rcx                # 8-byte Reload
	andq	%rax, %rcx
	cmpq	$0, %rcx
	je	.LBB1_16
# %bb.15:
	movb	$1, -17(%rbp)
	jmp	.LBB1_18
.LBB1_16:
	movb	$0, -17(%rbp)
	jmp	.LBB1_18
.LBB1_17:
	movq	-144(%rbp), %rdi                # 8-byte Reload
	callq	_ZNK5Board9occupancyEv@PLT
	movq	-48(%rbp), %rcx
	xorq	$-1, %rcx
	andq	%rcx, %rax
	andq	-56(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movl	-40(%rbp), %edi
	movq	%rax, -176(%rbp)                # 8-byte Spill
	callq	_ZN5piece8get_rookEi
	movslq	%eax, %rcx
	movq	-144(%rbp), %rdx                # 8-byte Reload
	movq	(%rdx,%rcx,8), %rcx
	movl	-40(%rbp), %edi
	movq	%rcx, -184(%rbp)                # 8-byte Spill
	callq	_ZN5piece9get_queenEi
	movslq	%eax, %rcx
	movq	-184(%rbp), %rdx                # 8-byte Reload
	movq	-144(%rbp), %rsi                # 8-byte Reload
	orq	(%rsi,%rcx,8), %rdx
	movq	-176(%rbp), %rcx                # 8-byte Reload
	andq	%rdx, %rcx
	movq	%rcx, -120(%rbp)
	movq	-112(%rbp), %rcx
	movl	-40(%rbp), %edi
	movq	%rcx, -192(%rbp)                # 8-byte Spill
	callq	_ZN5piece10get_bishopEi
	movslq	%eax, %rcx
	movq	-144(%rbp), %rdx                # 8-byte Reload
	movq	(%rdx,%rcx,8), %rcx
	movl	-40(%rbp), %edi
	movq	%rcx, -200(%rbp)                # 8-byte Spill
	callq	_ZN5piece9get_queenEi
	movslq	%eax, %rcx
	movq	-200(%rbp), %rdx                # 8-byte Reload
	movq	-144(%rbp), %rsi                # 8-byte Reload
	orq	(%rsi,%rcx,8), %rdx
	movq	-192(%rbp), %rcx                # 8-byte Reload
	andq	%rdx, %rcx
	movq	%rcx, -128(%rbp)
	movl	-36(%rbp), %edi
	callq	_ZN5piece8get_kingEi
	movslq	%eax, %rcx
	movq	-144(%rbp), %rdx                # 8-byte Reload
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -136(%rbp)
	movq	-112(%rbp), %rdi
	movq	-136(%rbp), %rsi
	movq	-120(%rbp), %rdx
	movq	-128(%rbp), %rcx
	callq	_ZN9move_maps17isAttackedSlidingEmmmm@PLT
	xorb	$-1, %al
	andb	$1, %al
	movb	%al, -17(%rbp)
.LBB1_18:
	movb	-17(%rbp), %al
	movq	%fs:40, %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movb	%al, -201(%rbp)                 # 1-byte Spill
	jne	.LBB1_20
# %bb.19:
	movb	-201(%rbp), %al                 # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$208, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_20:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end1:
	.size	_ZN5Board19verify_move_safety_E5CMove, .Lfunc_end1-_ZN5Board19verify_move_safety_E5CMove
	.cfi_endproc
                                        # -- End function
	.section	.text._Z13oppositeColori,"axG",@progbits,_Z13oppositeColori,comdat
	.weak	_Z13oppositeColori              # -- Begin function _Z13oppositeColori
	.p2align	4, 0x90
	.type	_Z13oppositeColori,@function
_Z13oppositeColori:                     # @_Z13oppositeColori
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	xorl	$1, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	_Z13oppositeColori, .Lfunc_end2-_Z13oppositeColori
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK5CMove3srcEv,"axG",@progbits,_ZNK5CMove3srcEv,comdat
	.weak	_ZNK5CMove3srcEv                # -- Begin function _ZNK5CMove3srcEv
	.p2align	4, 0x90
	.type	_ZNK5CMove3srcEv,@function
_ZNK5CMove3srcEv:                       # @_ZNK5CMove3srcEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzwl	(%rax), %ecx
	sarl	$10, %ecx
	movl	%ecx, %edi
	callq	_Z13u64FromSquarei
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	_ZNK5CMove3srcEv, .Lfunc_end3-_ZNK5CMove3srcEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK5CMove4destEv,"axG",@progbits,_ZNK5CMove4destEv,comdat
	.weak	_ZNK5CMove4destEv               # -- Begin function _ZNK5CMove4destEv
	.p2align	4, 0x90
	.type	_ZNK5CMove4destEv,@function
_ZNK5CMove4destEv:                      # @_ZNK5CMove4destEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzwl	(%rax), %ecx
	sarl	$4, %ecx
	andl	$63, %ecx
	movl	%ecx, %edi
	callq	_Z13u64FromSquarei
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	_ZNK5CMove4destEv, .Lfunc_end4-_ZNK5CMove4destEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK5CMove9is_castleEv,"axG",@progbits,_ZNK5CMove9is_castleEv,comdat
	.weak	_ZNK5CMove9is_castleEv          # -- Begin function _ZNK5CMove9is_castleEv
	.p2align	4, 0x90
	.type	_ZNK5CMove9is_castleEv,@function
_ZNK5CMove9is_castleEv:                 # @_ZNK5CMove9is_castleEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNK5CMove9type_codeEv
	movl	%eax, -12(%rbp)
	cmpl	$9, -12(%rbp)
	movb	$1, %cl
	movb	%cl, -13(%rbp)                  # 1-byte Spill
	je	.LBB5_2
# %bb.1:
	cmpl	$3, -12(%rbp)
	sete	%al
	movb	%al, -13(%rbp)                  # 1-byte Spill
.LBB5_2:
	movb	-13(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	_ZNK5CMove9is_castleEv, .Lfunc_end5-_ZNK5CMove9is_castleEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK5CMove9type_codeEv,"axG",@progbits,_ZNK5CMove9type_codeEv,comdat
	.weak	_ZNK5CMove9type_codeEv          # -- Begin function _ZNK5CMove9type_codeEv
	.p2align	4, 0x90
	.type	_ZNK5CMove9type_codeEv,@function
_ZNK5CMove9type_codeEv:                 # @_ZNK5CMove9type_codeEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzwl	(%rax), %ecx
	andl	$15, %ecx
	movl	%ecx, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	_ZNK5CMove9type_codeEv, .Lfunc_end6-_ZNK5CMove9type_codeEv
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
	je	.LBB7_2
# %bb.1:
	jmp	.LBB7_3
.LBB7_2:
	leaq	.L.str.6(%rip), %rdi
	leaq	.L.str.5(%rip), %rsi
	movl	$127, %edx
	leaq	.L__PRETTY_FUNCTION__._Z11u64ToSquarem(%rip), %rcx
	callq	__assert_fail@PLT
.LBB7_3:
	movq	-8(%rbp), %rdi
	callq	_Z14bitscanForwardm
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	_Z11u64ToSquarem, .Lfunc_end7-_Z11u64ToSquarem
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN5piece9get_queenEi,"axG",@progbits,_ZN5piece9get_queenEi,comdat
	.weak	_ZN5piece9get_queenEi           # -- Begin function _ZN5piece9get_queenEi
	.p2align	4, 0x90
	.type	_ZN5piece9get_queenEi,@function
_ZN5piece9get_queenEi:                  # @_ZN5piece9get_queenEi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	addl	$4, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end8:
	.size	_ZN5piece9get_queenEi, .Lfunc_end8-_ZN5piece9get_queenEi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN5piece8get_rookEi,"axG",@progbits,_ZN5piece8get_rookEi,comdat
	.weak	_ZN5piece8get_rookEi            # -- Begin function _ZN5piece8get_rookEi
	.p2align	4, 0x90
	.type	_ZN5piece8get_rookEi,@function
_ZN5piece8get_rookEi:                   # @_ZN5piece8get_rookEi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	addl	$3, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end9:
	.size	_ZN5piece8get_rookEi, .Lfunc_end9-_ZN5piece8get_rookEi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN5piece10get_bishopEi,"axG",@progbits,_ZN5piece10get_bishopEi,comdat
	.weak	_ZN5piece10get_bishopEi         # -- Begin function _ZN5piece10get_bishopEi
	.p2align	4, 0x90
	.type	_ZN5piece10get_bishopEi,@function
_ZN5piece10get_bishopEi:                # @_ZN5piece10get_bishopEi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	addl	$2, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end10:
	.size	_ZN5piece10get_bishopEi, .Lfunc_end10-_ZN5piece10get_bishopEi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN5piece8get_kingEi,"axG",@progbits,_ZN5piece8get_kingEi,comdat
	.weak	_ZN5piece8get_kingEi            # -- Begin function _ZN5piece8get_kingEi
	.p2align	4, 0x90
	.type	_ZN5piece8get_kingEi,@function
_ZN5piece8get_kingEi:                   # @_ZN5piece8get_kingEi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	addl	$5, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end11:
	.size	_ZN5piece8get_kingEi, .Lfunc_end11-_ZN5piece8get_kingEi
	.cfi_endproc
                                        # -- End function
	.section	.text._Z7colorOfi,"axG",@progbits,_Z7colorOfi,comdat
	.weak	_Z7colorOfi                     # -- Begin function _Z7colorOfi
	.p2align	4, 0x90
	.type	_Z7colorOfi,@function
_Z7colorOfi:                            # @_Z7colorOfi
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
	movl	$2, %ecx
	idivl	%ecx
	movl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end12:
	.size	_Z7colorOfi, .Lfunc_end12-_Z7colorOfi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN5piece7is_kingEi,"axG",@progbits,_ZN5piece7is_kingEi,comdat
	.weak	_ZN5piece7is_kingEi             # -- Begin function _ZN5piece7is_kingEi
	.p2align	4, 0x90
	.type	_ZN5piece7is_kingEi,@function
_ZN5piece7is_kingEi:                    # @_ZN5piece7is_kingEi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	_ZN5piece12to_colorlessEi
	cmpl	$5, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end13:
	.size	_ZN5piece7is_kingEi, .Lfunc_end13-_ZN5piece7is_kingEi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt5arrayImLm64EEixEm,"axG",@progbits,_ZNSt5arrayImLm64EEixEm,comdat
	.weak	_ZNSt5arrayImLm64EEixEm         # -- Begin function _ZNSt5arrayImLm64EEixEm
	.p2align	4, 0x90
	.type	_ZNSt5arrayImLm64EEixEm,@function
_ZNSt5arrayImLm64EEixEm:                # @_ZNSt5arrayImLm64EEixEm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZNSt14__array_traitsImLm64EE6_S_refERA64_Kmm
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end14:
	.size	_ZNSt5arrayImLm64EEixEm, .Lfunc_end14-_ZNSt5arrayImLm64EEixEm
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN5Board16is_checking_moveE5CMove # -- Begin function _ZN5Board16is_checking_moveE5CMove
	.p2align	4, 0x90
	.type	_ZN5Board16is_checking_moveE5CMove,@function
_ZN5Board16is_checking_moveE5CMove:     # @_ZN5Board16is_checking_moveE5CMove
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$272, %rsp                      # imm = 0x110
                                        # kill: def $si killed $si killed $esi
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movw	%si, -16(%rbp)
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -184(%rbp)                # 8-byte Spill
	callq	_ZNK5Board4turnEv@PLT
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %edi
	callq	_Z13oppositeColori
	movl	%eax, -40(%rbp)
	leaq	-16(%rbp), %rdi
	callq	_ZNK5CMove3srcEv
	movq	%rax, -48(%rbp)
	leaq	-16(%rbp), %rdi
	callq	_ZNK5CMove4destEv
	movq	%rax, -56(%rbp)
	movl	-40(%rbp), %edi
	callq	_ZN5piece8get_kingEi
	movslq	%eax, %rcx
	movq	-184(%rbp), %rdx                # 8-byte Reload
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -64(%rbp)
	leaq	-16(%rbp), %rdi
	callq	_ZNK5CMove9is_castleEv
	testb	$1, %al
	jne	.LBB15_1
	jmp	.LBB15_5
.LBB15_1:
	leaq	-16(%rbp), %rdi
	callq	_ZNK5CMove9type_codeEv
	cmpl	$9, %eax
	jne	.LBB15_3
# %bb.2:
	movslq	-36(%rbp), %rax
	leaq	_ZN5board6castleL14rook_long_destE(%rip), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -72(%rbp)
	movslq	-36(%rbp), %rax
	movq	-184(%rbp), %rcx                # 8-byte Reload
	movq	1248(%rcx,%rax,8), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB15_4
.LBB15_3:
	movslq	-36(%rbp), %rax
	leaq	_ZN5board6castleL15rook_short_destE(%rip), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -72(%rbp)
	movslq	-36(%rbp), %rax
	movq	-184(%rbp), %rcx                # 8-byte Reload
	movq	1264(%rcx,%rax,8), %rax
	movq	%rax, -80(%rbp)
.LBB15_4:
	movq	-184(%rbp), %rdi                # 8-byte Reload
	callq	_ZNK5Board9occupancyEv@PLT
	movq	%rax, -88(%rbp)
	movslq	-36(%rbp), %rax
	movq	-184(%rbp), %rcx                # 8-byte Reload
	movq	1232(%rcx,%rax,8), %rax
	notq	%rax
	movq	-56(%rbp), %rdx
	orq	%rdx, %rax
	movq	-88(%rbp), %rdx
	andq	%rax, %rdx
	movq	%rdx, -88(%rbp)
	movq	-80(%rbp), %rax
	notq	%rax
	movq	-72(%rbp), %rdx
	orq	%rdx, %rax
	movq	-88(%rbp), %rdx
	andq	%rax, %rdx
	movq	%rdx, -88(%rbp)
	movq	-72(%rbp), %rdi
	callq	_Z11u64ToSquarem
	movq	-88(%rbp), %rsi
	movl	%eax, %edi
	callq	_ZN9move_maps9rookMovesEim@PLT
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	-64(%rbp), %rcx
	andq	%rcx, %rax
	negq	%rax
	sbbl	%edi, %edi
                                        # kill: def $dil killed $dil killed $edi
	andb	$1, %dil
	movb	%dil, -17(%rbp)
	jmp	.LBB15_25
.LBB15_5:
	leaq	-16(%rbp), %rdi
	callq	_ZNK5CMove9type_codeEv
	cmpl	$5, %eax
	jne	.LBB15_9
# %bb.6:
	movq	-56(%rbp), %rdi
	callq	_Z11u64ToSquarem
	movl	%eax, -100(%rbp)
	movl	-100(%rbp), %edi
	movl	-40(%rbp), %esi
	callq	_ZN9move_maps9pawnMovesEii@PLT
	movq	%rax, -112(%rbp)
	movq	-184(%rbp), %rdi                # 8-byte Reload
	callq	_ZNK5Board9occupancyEv@PLT
	movq	-48(%rbp), %rcx
	orq	-112(%rbp), %rcx
	xorq	$-1, %rcx
	andq	%rcx, %rax
	orq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movl	-36(%rbp), %edi
	movq	%rax, -192(%rbp)                # 8-byte Spill
	callq	_ZN5piece8get_rookEi
	movslq	%eax, %rcx
	movq	-184(%rbp), %rdx                # 8-byte Reload
	movq	(%rdx,%rcx,8), %rcx
	movl	-36(%rbp), %edi
	movq	%rcx, -200(%rbp)                # 8-byte Spill
	callq	_ZN5piece9get_queenEi
	movslq	%eax, %rcx
	movq	-200(%rbp), %rdx                # 8-byte Reload
	movq	-184(%rbp), %r8                 # 8-byte Reload
	orq	(%r8,%rcx,8), %rdx
	movq	-192(%rbp), %rcx                # 8-byte Reload
	andq	%rdx, %rcx
	movq	%rcx, -128(%rbp)
	movq	-120(%rbp), %rcx
	movl	-36(%rbp), %edi
	movq	%rcx, -208(%rbp)                # 8-byte Spill
	callq	_ZN5piece10get_bishopEi
	movslq	%eax, %rcx
	movq	-184(%rbp), %rdx                # 8-byte Reload
	movq	(%rdx,%rcx,8), %rcx
	movl	-36(%rbp), %edi
	movq	%rcx, -216(%rbp)                # 8-byte Spill
	callq	_ZN5piece9get_queenEi
	movslq	%eax, %rcx
	movq	-216(%rbp), %rdx                # 8-byte Reload
	movq	-184(%rbp), %r8                 # 8-byte Reload
	orq	(%r8,%rcx,8), %rdx
	movq	-208(%rbp), %rcx                # 8-byte Reload
	andq	%rdx, %rcx
	movq	%rcx, -136(%rbp)
	movq	-120(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-128(%rbp), %rdx
	movq	-136(%rbp), %rcx
	callq	_ZN9move_maps17isAttackedSlidingEmmmm@PLT
	testb	$1, %al
	jne	.LBB15_7
	jmp	.LBB15_8
.LBB15_7:
	movb	$1, -17(%rbp)
	jmp	.LBB15_25
.LBB15_8:
	movl	-100(%rbp), %edi
	movl	-36(%rbp), %esi
	callq	_ZN9move_maps12pawnCapturesEii@PLT
	movq	-64(%rbp), %rcx
	andq	%rcx, %rax
	negq	%rax
	sbbl	%edx, %edx
                                        # kill: def $dl killed $dl killed $edx
	andb	$1, %dl
	movb	%dl, -17(%rbp)
	jmp	.LBB15_25
.LBB15_9:
	movq	-48(%rbp), %rsi
	movq	-184(%rbp), %rdi                # 8-byte Reload
	callq	_ZNK5Board9piece_at_Em@PLT
	movl	%eax, -140(%rbp)
	movl	-140(%rbp), %edi
	callq	_Z7colorOfi
	cmpl	-36(%rbp), %eax
	jne	.LBB15_11
# %bb.10:
	jmp	.LBB15_12
.LBB15_11:
	leaq	.L.str.3(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$108, %edx
	leaq	.L__PRETTY_FUNCTION__._ZN5Board16is_checking_moveE5CMove(%rip), %rcx
	callq	__assert_fail@PLT
.LBB15_12:
	movq	-184(%rbp), %rdi                # 8-byte Reload
	callq	_ZNK5Board9occupancyEv@PLT
	movq	-48(%rbp), %rcx
	xorq	$-1, %rcx
	andq	%rcx, %rax
	andq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movl	-36(%rbp), %edi
	movq	%rax, -224(%rbp)                # 8-byte Spill
	callq	_ZN5piece8get_rookEi
	movslq	%eax, %rcx
	movq	-184(%rbp), %rdx                # 8-byte Reload
	movq	(%rdx,%rcx,8), %rcx
	movl	-36(%rbp), %edi
	movq	%rcx, -232(%rbp)                # 8-byte Spill
	callq	_ZN5piece9get_queenEi
	movslq	%eax, %rcx
	movq	-232(%rbp), %rdx                # 8-byte Reload
	movq	-184(%rbp), %rsi                # 8-byte Reload
	orq	(%rsi,%rcx,8), %rdx
	movq	-224(%rbp), %rcx                # 8-byte Reload
	andq	%rdx, %rcx
	movq	%rcx, -160(%rbp)
	movq	-152(%rbp), %rcx
	movl	-36(%rbp), %edi
	movq	%rcx, -240(%rbp)                # 8-byte Spill
	callq	_ZN5piece10get_bishopEi
	movslq	%eax, %rcx
	movq	-184(%rbp), %rdx                # 8-byte Reload
	movq	(%rdx,%rcx,8), %rcx
	movl	-36(%rbp), %edi
	movq	%rcx, -248(%rbp)                # 8-byte Spill
	callq	_ZN5piece9get_queenEi
	movslq	%eax, %rcx
	movq	-248(%rbp), %rdx                # 8-byte Reload
	movq	-184(%rbp), %rsi                # 8-byte Reload
	orq	(%rsi,%rcx,8), %rdx
	movq	-240(%rbp), %rcx                # 8-byte Reload
	andq	%rdx, %rcx
	movq	%rcx, -168(%rbp)
	movq	-152(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-160(%rbp), %rdx
	movq	-168(%rbp), %rcx
	callq	_ZN9move_maps17isAttackedSlidingEmmmm@PLT
	testb	$1, %al
	jne	.LBB15_13
	jmp	.LBB15_14
.LBB15_13:
	movb	$1, -17(%rbp)
	jmp	.LBB15_25
.LBB15_14:
	leaq	-16(%rbp), %rdi
	callq	_ZNK5CMove12is_promotionEv
	testb	$1, %al
	jne	.LBB15_15
	jmp	.LBB15_16
.LBB15_15:
	movl	-36(%rbp), %esi
	leaq	-16(%rbp), %rdi
	callq	_ZNK5CMove15promoting_pieceEi
	movl	%eax, -140(%rbp)
.LBB15_16:
	movq	-56(%rbp), %rdi
	callq	_Z11u64ToSquarem
	movl	%eax, -172(%rbp)
	movl	-140(%rbp), %edi
	callq	_ZN5piece12to_colorlessEi
	movl	%eax, %ecx
	movl	%ecx, %edx
	subl	$4, %eax
	movq	%rdx, -256(%rbp)                # 8-byte Spill
	ja	.LBB15_24
# %bb.28:
	leaq	.LJTI15_0(%rip), %rax
	movq	-256(%rbp), %rcx                # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB15_17:
	movl	-172(%rbp), %edi
	movl	-36(%rbp), %esi
	callq	_ZN9move_maps12pawnCapturesEii@PLT
	movq	-64(%rbp), %rcx
	andq	%rcx, %rax
	negq	%rax
	sbbl	%edx, %edx
                                        # kill: def $dl killed $dl killed $edx
	andb	$1, %dl
	movb	%dl, -17(%rbp)
	jmp	.LBB15_25
.LBB15_18:
	movl	-172(%rbp), %edi
	callq	_ZN9move_maps11knightMovesEi@PLT
	movq	-64(%rbp), %rcx
	andq	%rcx, %rax
	negq	%rax
	sbbl	%edx, %edx
                                        # kill: def $dl killed $dl killed $edx
	andb	$1, %dl
	movb	%dl, -17(%rbp)
	jmp	.LBB15_25
.LBB15_19:
	movl	-172(%rbp), %edi
	movq	-152(%rbp), %rsi
	callq	_ZN9move_maps11bishopMovesEim@PLT
	movq	-64(%rbp), %rcx
	andq	%rcx, %rax
	negq	%rax
	sbbl	%edx, %edx
                                        # kill: def $dl killed $dl killed $edx
	andb	$1, %dl
	movb	%dl, -17(%rbp)
	jmp	.LBB15_25
.LBB15_20:
	movl	-172(%rbp), %edi
	movq	-152(%rbp), %rsi
	callq	_ZN9move_maps9rookMovesEim@PLT
	movq	-64(%rbp), %rcx
	andq	%rcx, %rax
	negq	%rax
	sbbl	%edx, %edx
                                        # kill: def $dl killed $dl killed $edx
	andb	$1, %dl
	movb	%dl, -17(%rbp)
	jmp	.LBB15_25
.LBB15_21:
	movl	-172(%rbp), %edi
	movq	-152(%rbp), %rsi
	callq	_ZN9move_maps11bishopMovesEim@PLT
	andq	-64(%rbp), %rax
	cmpq	$0, %rax
	movb	$1, %cl
	movb	%cl, -257(%rbp)                 # 1-byte Spill
	jne	.LBB15_23
# %bb.22:
	movl	-172(%rbp), %edi
	movq	-152(%rbp), %rsi
	callq	_ZN9move_maps9rookMovesEim@PLT
	andq	-64(%rbp), %rax
	cmpq	$0, %rax
	setne	%cl
	movb	%cl, -257(%rbp)                 # 1-byte Spill
.LBB15_23:
	movb	-257(%rbp), %al                 # 1-byte Reload
	andb	$1, %al
	negb	%al
	andb	$1, %al
	movb	%al, -17(%rbp)
	jmp	.LBB15_25
.LBB15_24:
	movb	$0, -17(%rbp)
.LBB15_25:
	movb	-17(%rbp), %al
	movq	%fs:40, %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movb	%al, -258(%rbp)                 # 1-byte Spill
	jne	.LBB15_27
# %bb.26:
	movb	-258(%rbp), %al                 # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$272, %rsp                      # imm = 0x110
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB15_27:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end15:
	.size	_ZN5Board16is_checking_moveE5CMove, .Lfunc_end15-_ZN5Board16is_checking_moveE5CMove
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI15_0:
	.long	.LBB15_17-.LJTI15_0
	.long	.LBB15_18-.LJTI15_0
	.long	.LBB15_19-.LJTI15_0
	.long	.LBB15_20-.LJTI15_0
	.long	.LBB15_21-.LJTI15_0
                                        # -- End function
	.section	.text._ZNK5CMove12is_promotionEv,"axG",@progbits,_ZNK5CMove12is_promotionEv,comdat
	.weak	_ZNK5CMove12is_promotionEv      # -- Begin function _ZNK5CMove12is_promotionEv
	.p2align	4, 0x90
	.type	_ZNK5CMove12is_promotionEv,@function
_ZNK5CMove12is_promotionEv:             # @_ZNK5CMove12is_promotionEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNK5CMove9type_codeEv
	xorl	%ecx, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	movb	%cl, -13(%rbp)                  # 1-byte Spill
	jle	.LBB16_2
# %bb.1:
	movl	-12(%rbp), %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	cmpl	$0, %edx
	sete	%sil
	movb	%sil, -13(%rbp)                 # 1-byte Spill
.LBB16_2:
	movb	-13(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end16:
	.size	_ZNK5CMove12is_promotionEv, .Lfunc_end16-_ZNK5CMove12is_promotionEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK5CMove15promoting_pieceEi,"axG",@progbits,_ZNK5CMove15promoting_pieceEi,comdat
	.weak	_ZNK5CMove15promoting_pieceEi   # -- Begin function _ZNK5CMove15promoting_pieceEi
	.p2align	4, 0x90
	.type	_ZNK5CMove15promoting_pieceEi,@function
_ZNK5CMove15promoting_pieceEi:          # @_ZNK5CMove15promoting_pieceEi
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
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	callq	_ZNK5CMove9type_codeEv
	xorl	%ecx, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	cltd
	movl	$2, %esi
	idivl	%esi
	cmpl	$0, %edx
	movb	%cl, -25(%rbp)                  # 1-byte Spill
	jne	.LBB17_2
# %bb.1:
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNK5CMove9type_codeEv
	cmpl	$0, %eax
	setg	%cl
	movb	%cl, -25(%rbp)                  # 1-byte Spill
.LBB17_2:
	movb	-25(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB17_3
	jmp	.LBB17_4
.LBB17_3:
	jmp	.LBB17_5
.LBB17_4:
	leaq	.L.str.7(%rip), %rdi
	leaq	.L.str.8(%rip), %rsi
	movl	$43, %edx
	leaq	.L__PRETTY_FUNCTION__._ZNK5CMove15promoting_pieceEi(%rip), %rcx
	callq	__assert_fail@PLT
.LBB17_5:
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNK5CMove9type_codeEv
	addl	-12(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end17:
	.size	_ZNK5CMove15promoting_pieceEi, .Lfunc_end17-_ZNK5CMove15promoting_pieceEi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN5piece12to_colorlessEi,"axG",@progbits,_ZN5piece12to_colorlessEi,comdat
	.weak	_ZN5piece12to_colorlessEi       # -- Begin function _ZN5piece12to_colorlessEi
	.p2align	4, 0x90
	.type	_ZN5piece12to_colorlessEi,@function
_ZN5piece12to_colorlessEi:              # @_ZN5piece12to_colorlessEi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$1, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end18:
	.size	_ZN5piece12to_colorlessEi, .Lfunc_end18-_ZN5piece12to_colorlessEi
	.cfi_endproc
                                        # -- End function
	.section	.text._Z13u64FromSquarei,"axG",@progbits,_Z13u64FromSquarei,comdat
	.weak	_Z13u64FromSquarei              # -- Begin function _Z13u64FromSquarei
	.p2align	4, 0x90
	.type	_Z13u64FromSquarei,@function
_Z13u64FromSquarei:                     # @_Z13u64FromSquarei
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	_Z13isValidSquarei
	testb	$1, %al
	jne	.LBB19_1
	jmp	.LBB19_2
.LBB19_1:
	jmp	.LBB19_3
.LBB19_2:
	leaq	.L.str.4(%rip), %rdi
	leaq	.L.str.5(%rip), %rsi
	movl	$121, %edx
	leaq	.L__PRETTY_FUNCTION__._Z13u64FromSquarei(%rip), %rcx
	callq	__assert_fail@PLT
.LBB19_3:
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
                                        # kill: def $cl killed $rcx
	movl	$1, %edx
	shlq	%cl, %rdx
	movq	%rdx, %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end19:
	.size	_Z13u64FromSquarei, .Lfunc_end19-_Z13u64FromSquarei
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
	jl	.LBB20_2
# %bb.1:
	cmpl	$64, -4(%rbp)
	setl	%al
	movb	%al, -5(%rbp)                   # 1-byte Spill
.LBB20_2:
	movb	-5(%rbp), %al                   # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end20:
	.size	_Z13isValidSquarei, .Lfunc_end20-_Z13isValidSquarei
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
.Lfunc_end21:
	.size	_Z14bitscanForwardm, .Lfunc_end21-_Z14bitscanForwardm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt14__array_traitsImLm64EE6_S_refERA64_Kmm,"axG",@progbits,_ZNSt14__array_traitsImLm64EE6_S_refERA64_Kmm,comdat
	.weak	_ZNSt14__array_traitsImLm64EE6_S_refERA64_Kmm # -- Begin function _ZNSt14__array_traitsImLm64EE6_S_refERA64_Kmm
	.p2align	4, 0x90
	.type	_ZNSt14__array_traitsImLm64EE6_S_refERA64_Kmm,@function
_ZNSt14__array_traitsImLm64EE6_S_refERA64_Kmm: # @_ZNSt14__array_traitsImLm64EE6_S_refERA64_Kmm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end22:
	.size	_ZNSt14__array_traitsImLm64EE6_S_refERA64_Kmm, .Lfunc_end22-_ZNSt14__array_traitsImLm64EE6_S_refERA64_Kmm
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_checks.cpp
	.type	_GLOBAL__sub_I_checks.cpp,@function
_GLOBAL__sub_I_checks.cpp:              # @_GLOBAL__sub_I_checks.cpp
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
.Lfunc_end23:
	.size	_GLOBAL__sub_I_checks.cpp, .Lfunc_end23-_GLOBAL__sub_I_checks.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"maps_generated_"
	.size	.L.str, 16

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"src/chess/checks.cpp"
	.size	.L.str.1, 21

	.type	.L__PRETTY_FUNCTION__._ZN5Board19verify_move_safety_E5CMove,@object # @__PRETTY_FUNCTION__._ZN5Board19verify_move_safety_E5CMove
.L__PRETTY_FUNCTION__._ZN5Board19verify_move_safety_E5CMove:
	.asciz	"bool Board::verify_move_safety_(CMove)"
	.size	.L__PRETTY_FUNCTION__._ZN5Board19verify_move_safety_E5CMove, 39

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"!is_check()"
	.size	.L.str.2, 12

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"colorOf(mover) == curr_turn"
	.size	.L.str.3, 28

	.type	_ZN5board6castleL14rook_long_destE,@object # @_ZN5board6castleL14rook_long_destE
	.section	.rodata,"a",@progbits
	.p2align	4
_ZN5board6castleL14rook_long_destE:
	.quad	8                               # 0x8
	.quad	576460752303423488              # 0x800000000000000
	.size	_ZN5board6castleL14rook_long_destE, 16

	.type	_ZN5board6castleL15rook_short_destE,@object # @_ZN5board6castleL15rook_short_destE
	.p2align	4
_ZN5board6castleL15rook_short_destE:
	.quad	32                              # 0x20
	.quad	2305843009213693952             # 0x2000000000000000
	.size	_ZN5board6castleL15rook_short_destE, 16

	.type	.L__PRETTY_FUNCTION__._ZN5Board16is_checking_moveE5CMove,@object # @__PRETTY_FUNCTION__._ZN5Board16is_checking_moveE5CMove
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__PRETTY_FUNCTION__._ZN5Board16is_checking_moveE5CMove:
	.asciz	"bool Board::is_checking_move(CMove)"
	.size	.L__PRETTY_FUNCTION__._ZN5Board16is_checking_moveE5CMove, 36

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"isValidSquare(s)"
	.size	.L.str.4, 17

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"include/misc/bits.hpp"
	.size	.L.str.5, 22

	.type	.L__PRETTY_FUNCTION__._Z13u64FromSquarei,@object # @__PRETTY_FUNCTION__._Z13u64FromSquarei
.L__PRETTY_FUNCTION__._Z13u64FromSquarei:
	.asciz	"uint64_t u64FromSquare(int)"
	.size	.L__PRETTY_FUNCTION__._Z13u64FromSquarei, 28

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"x != 0"
	.size	.L.str.6, 7

	.type	.L__PRETTY_FUNCTION__._Z11u64ToSquarem,@object # @__PRETTY_FUNCTION__._Z11u64ToSquarem
.L__PRETTY_FUNCTION__._Z11u64ToSquarem:
	.asciz	"int u64ToSquare(uint64_t)"
	.size	.L__PRETTY_FUNCTION__._Z11u64ToSquarem, 26

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"type_code() % 2 == 0 && type_code() > 0"
	.size	.L.str.7, 40

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"include/game/cmove.hpp"
	.size	.L.str.8, 23

	.type	.L__PRETTY_FUNCTION__._ZNK5CMove15promoting_pieceEi,@object # @__PRETTY_FUNCTION__._ZNK5CMove15promoting_pieceEi
.L__PRETTY_FUNCTION__._ZNK5CMove15promoting_pieceEi:
	.asciz	"int CMove::promoting_piece(int) const"
	.size	.L__PRETTY_FUNCTION__._ZNK5CMove15promoting_pieceEi, 38

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_checks.cpp
	.ident	"clang version 11.0.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __cxx_global_var_init
	.addrsig_sym __cxa_atexit
	.addrsig_sym __assert_fail
	.addrsig_sym _ZNK5Board8is_checkEv
	.addrsig_sym _ZNK5Board4turnEv
	.addrsig_sym _Z13oppositeColori
	.addrsig_sym _ZNK5CMove3srcEv
	.addrsig_sym _ZNK5CMove4destEv
	.addrsig_sym _ZNK5CMove9is_castleEv
	.addrsig_sym _ZNK5CMove9type_codeEv
	.addrsig_sym _ZN9move_maps9pawnMovesEii
	.addrsig_sym _Z11u64ToSquarem
	.addrsig_sym _ZN5piece9get_queenEi
	.addrsig_sym _ZNK5Board9occupancyEv
	.addrsig_sym _ZN5piece8get_rookEi
	.addrsig_sym _ZN5piece10get_bishopEi
	.addrsig_sym _ZN9move_maps17isAttackedSlidingEmmmm
	.addrsig_sym _ZN5piece8get_kingEi
	.addrsig_sym _ZNK5Board9piece_at_Em
	.addrsig_sym _Z7colorOfi
	.addrsig_sym _ZN5piece7is_kingEi
	.addrsig_sym _ZNSt5arrayImLm64EEixEm
	.addrsig_sym _ZNK5Board9occupancyEi
	.addrsig_sym _ZN9move_maps9rookMovesEim
	.addrsig_sym _ZN9move_maps12pawnCapturesEii
	.addrsig_sym _ZNK5CMove12is_promotionEv
	.addrsig_sym _ZNK5CMove15promoting_pieceEi
	.addrsig_sym _ZN5piece12to_colorlessEi
	.addrsig_sym _ZN9move_maps11knightMovesEi
	.addrsig_sym _ZN9move_maps11bishopMovesEim
	.addrsig_sym _Z13u64FromSquarei
	.addrsig_sym _Z13isValidSquarei
	.addrsig_sym _Z14bitscanForwardm
	.addrsig_sym _ZNSt14__array_traitsImLm64EE6_S_refERA64_Kmm
	.addrsig_sym _GLOBAL__sub_I_checks.cpp
	.addrsig_sym __stack_chk_fail
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym _ZN5board6castleL14rook_long_destE
	.addrsig_sym _ZN5board6castleL15rook_short_destE
