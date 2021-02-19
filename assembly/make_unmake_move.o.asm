	.text
	.file	"make_unmake_move.cpp"
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
	.globl	_ZN5Board8MakeMoveE5CMove       # -- Begin function _ZN5Board8MakeMoveE5CMove
	.p2align	4, 0x90
	.type	_ZN5Board8MakeMoveE5CMove,@function
_ZN5Board8MakeMoveE5CMove:              # @_ZN5Board8MakeMoveE5CMove
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
                                        # kill: def $si killed $si killed $esi
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movw	%si, -16(%rbp)
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$5, 1216(%rax)
	movb	$0, 1220(%rax)
	movq	%rax, %rcx
	addq	$1184, %rcx                     # imm = 0x4A0
	movq	%rax, %rdx
	addq	$96, %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%rax, -120(%rbp)                # 8-byte Spill
	callq	_ZN5board10StateStack4PushERNS_5StateE
	movw	-16(%rbp), %r8w
	movq	-120(%rbp), %rax                # 8-byte Reload
	movw	%r8w, 138(%rax)
	movb	$0, 136(%rax)
	movq	%rax, %rdi
	callq	_ZNK5Board4turnEv@PLT
	movl	%eax, -36(%rbp)
	leaq	-16(%rbp), %rdi
	callq	_ZNK5CMove9type_codeEv
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jne	.LBB1_2
# %bb.1:
	movq	-120(%rbp), %rax                # 8-byte Reload
	movl	108(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 108(%rax)
	movl	$-1, 116(%rax)
	movl	$-1, 120(%rax)
	movq	%rax, %rdi
	movl	$4294967295, %esi               # imm = 0xFFFFFFFF
	callq	_ZN5Board12SetEpSquare_Ei@PLT
	jmp	.LBB1_45
.LBB1_2:
	movw	-16(%rbp), %ax
	movw	%ax, -24(%rbp)
	movq	-120(%rbp), %rdi                # 8-byte Reload
	movzwl	-24(%rbp), %esi
	callq	_ZN5Board16is_checking_moveE5CMove@PLT
	testb	$1, %al
	jne	.LBB1_3
	jmp	.LBB1_4
.LBB1_3:
	movq	-120(%rbp), %rax                # 8-byte Reload
	movb	$1, 136(%rax)
.LBB1_4:
	leaq	-16(%rbp), %rdi
	callq	_ZNK5CMove3srcEv
	movq	%rax, -48(%rbp)
	leaq	-16(%rbp), %rdi
	callq	_ZNK5CMove4destEv
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rsi
	movq	-120(%rbp), %rdi                # 8-byte Reload
	callq	_ZNK5Board9piece_at_Em@PLT
	movl	%eax, -60(%rbp)
	movq	-56(%rbp), %rsi
	movq	-120(%rbp), %rdi                # 8-byte Reload
	callq	_ZNK5Board9piece_at_Em@PLT
	movl	%eax, -64(%rbp)
	movl	-60(%rbp), %edi
	callq	_ZN5piece7is_pawnEi
	testb	$1, %al
	jne	.LBB1_6
# %bb.5:
	movl	-64(%rbp), %edi
	callq	_ZN5piece8is_emptyEi
	testb	$1, %al
	jne	.LBB1_6
	jmp	.LBB1_7
.LBB1_6:
	movq	-120(%rbp), %rax                # 8-byte Reload
	movl	$0, 108(%rax)
	movb	$0, 137(%rax)
	jmp	.LBB1_8
.LBB1_7:
	movq	-120(%rbp), %rax                # 8-byte Reload
	movl	108(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 108(%rax)
.LBB1_8:
	movl	-60(%rbp), %esi
	movq	-48(%rbp), %rdx
	movq	-120(%rbp), %rdi                # 8-byte Reload
	callq	_ZN5Board12RemovePiece_Eim@PLT
	movl	-60(%rbp), %eax
	movq	-120(%rbp), %rcx                # 8-byte Reload
	movl	%eax, 116(%rcx)
	cmpl	$5, -40(%rbp)
	jne	.LBB1_10
# %bb.9:
	movl	-36(%rbp), %edi
	callq	_Z13oppositeColori
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %edi
	callq	_ZN5piece8get_pawnEi
	movl	%eax, -72(%rbp)
	movq	-56(%rbp), %rdi
	callq	_Z11u64ToSquarem
	movl	-68(%rbp), %esi
	movl	%eax, %edi
	callq	_ZN9move_maps9pawnMovesEii@PLT
	movq	%rax, -80(%rbp)
	movl	-72(%rbp), %esi
	movq	-80(%rbp), %rdx
	movq	-120(%rbp), %rdi                # 8-byte Reload
	callq	_ZN5Board12RemovePiece_Eim@PLT
	movl	-72(%rbp), %ecx
	movq	-120(%rbp), %rax                # 8-byte Reload
	movl	%ecx, 120(%rax)
	jmp	.LBB1_14
.LBB1_10:
	movl	-64(%rbp), %edi
	callq	_ZN5piece8is_emptyEi
	testb	$1, %al
	jne	.LBB1_11
	jmp	.LBB1_12
.LBB1_11:
	movq	-120(%rbp), %rax                # 8-byte Reload
	movl	$-1, 120(%rax)
	jmp	.LBB1_13
.LBB1_12:
	movl	-64(%rbp), %esi
	movq	-56(%rbp), %rdx
	movq	-120(%rbp), %rdi                # 8-byte Reload
	callq	_ZN5Board12RemovePiece_Eim@PLT
	movl	-64(%rbp), %eax
	movq	-120(%rbp), %rcx                # 8-byte Reload
	movl	%eax, 120(%rcx)
.LBB1_13:
	jmp	.LBB1_14
.LBB1_14:
	leaq	-16(%rbp), %rdi
	callq	_ZNK5CMove12is_promotionEv
	testb	$1, %al
	jne	.LBB1_15
	jmp	.LBB1_16
.LBB1_15:
	movl	-36(%rbp), %esi
	leaq	-16(%rbp), %rdi
	callq	_ZNK5CMove15promoting_pieceEi
	movq	-56(%rbp), %rdx
	movq	-120(%rbp), %rdi                # 8-byte Reload
	movl	%eax, %esi
	callq	_ZN5Board9AddPiece_Eim@PLT
	jmp	.LBB1_17
.LBB1_16:
	movl	-60(%rbp), %esi
	movq	-56(%rbp), %rdx
	movq	-120(%rbp), %rdi                # 8-byte Reload
	callq	_ZN5Board9AddPiece_Eim@PLT
.LBB1_17:
	cmpl	$9, -40(%rbp)
	jne	.LBB1_19
# %bb.18:
	movl	-36(%rbp), %edi
	callq	_ZN5piece8get_rookEi
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %esi
	movslq	-36(%rbp), %rcx
	movq	-120(%rbp), %rdx                # 8-byte Reload
	movq	1240(%rdx,%rcx,8), %rdx
	movq	-120(%rbp), %rdi                # 8-byte Reload
	callq	_ZN5Board12RemovePiece_Eim@PLT
	movl	-84(%rbp), %esi
	movslq	-36(%rbp), %rcx
	leaq	_ZN5board6castleL14rook_long_destE(%rip), %rdx
	movq	(%rdx,%rcx,8), %rdx
	movq	-120(%rbp), %rdi                # 8-byte Reload
	callq	_ZN5Board9AddPiece_Eim@PLT
	jmp	.LBB1_22
.LBB1_19:
	cmpl	$3, -40(%rbp)
	jne	.LBB1_21
# %bb.20:
	movl	-36(%rbp), %edi
	callq	_ZN5piece8get_rookEi
	movl	%eax, -88(%rbp)
	movl	-88(%rbp), %esi
	movslq	-36(%rbp), %rcx
	movq	-120(%rbp), %rdx                # 8-byte Reload
	movq	1256(%rdx,%rcx,8), %rdx
	movq	-120(%rbp), %rdi                # 8-byte Reload
	callq	_ZN5Board12RemovePiece_Eim@PLT
	movl	-88(%rbp), %esi
	movslq	-36(%rbp), %rcx
	leaq	_ZN5board6castleL15rook_short_destE(%rip), %rdx
	movq	(%rdx,%rcx,8), %rdx
	movq	-120(%rbp), %rdi                # 8-byte Reload
	callq	_ZN5Board9AddPiece_Eim@PLT
.LBB1_21:
	jmp	.LBB1_22
.LBB1_22:
	movl	-60(%rbp), %edi
	callq	_ZN5piece7is_kingEi
	testb	$1, %al
	jne	.LBB1_23
	jmp	.LBB1_24
.LBB1_23:
	xorl	%eax, %eax
	movl	-36(%rbp), %esi
	movq	-120(%rbp), %rdi                # 8-byte Reload
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	_ZN5Board18SetCastlingRights_Eiii@PLT
	xorl	%ecx, %ecx
	movl	-36(%rbp), %esi
	movq	-120(%rbp), %rdi                # 8-byte Reload
	movl	$2, %edx
	callq	_ZN5Board18SetCastlingRights_Eiii@PLT
.LBB1_24:
	movl	-60(%rbp), %edi
	callq	_ZN5piece7is_rookEi
	testb	$1, %al
	jne	.LBB1_26
# %bb.25:
	movl	-64(%rbp), %edi
	callq	_ZN5piece7is_rookEi
	testb	$1, %al
	jne	.LBB1_26
	jmp	.LBB1_38
.LBB1_26:
	movq	-48(%rbp), %rax
	orq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	-120(%rbp), %rcx                # 8-byte Reload
	andq	1240(%rcx), %rax
	cmpq	$0, %rax
	je	.LBB1_28
# %bb.27:
	xorl	%eax, %eax
	movq	-120(%rbp), %rdi                # 8-byte Reload
	movl	%eax, %esi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	_ZN5Board18SetCastlingRights_Eiii@PLT
	jmp	.LBB1_37
.LBB1_28:
	movq	-96(%rbp), %rax
	movq	-120(%rbp), %rcx                # 8-byte Reload
	andq	1256(%rcx), %rax
	cmpq	$0, %rax
	je	.LBB1_30
# %bb.29:
	xorl	%eax, %eax
	movq	-120(%rbp), %rdi                # 8-byte Reload
	movl	%eax, %esi
	movl	$2, %edx
	movl	%eax, %ecx
	callq	_ZN5Board18SetCastlingRights_Eiii@PLT
	jmp	.LBB1_36
.LBB1_30:
	movq	-96(%rbp), %rax
	movq	-120(%rbp), %rcx                # 8-byte Reload
	andq	1248(%rcx), %rax
	cmpq	$0, %rax
	je	.LBB1_32
# %bb.31:
	xorl	%eax, %eax
	movq	-120(%rbp), %rdi                # 8-byte Reload
	movl	$1, %esi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	_ZN5Board18SetCastlingRights_Eiii@PLT
	jmp	.LBB1_35
.LBB1_32:
	movq	-96(%rbp), %rax
	movq	-120(%rbp), %rcx                # 8-byte Reload
	andq	1264(%rcx), %rax
	cmpq	$0, %rax
	je	.LBB1_34
# %bb.33:
	xorl	%ecx, %ecx
	movq	-120(%rbp), %rdi                # 8-byte Reload
	movl	$1, %esi
	movl	$2, %edx
	callq	_ZN5Board18SetCastlingRights_Eiii@PLT
.LBB1_34:
	jmp	.LBB1_35
.LBB1_35:
	jmp	.LBB1_36
.LBB1_36:
	jmp	.LBB1_37
.LBB1_37:
	jmp	.LBB1_38
.LBB1_38:
	cmpl	$7, -40(%rbp)
	jne	.LBB1_43
# %bb.39:
	movq	-56(%rbp), %rdi
	callq	_Z11u64ToSquarem
	movl	%eax, -100(%rbp)
	movl	-60(%rbp), %edi
	callq	_ZN5piece4flipEi
	movslq	%eax, %rcx
	movq	-120(%rbp), %rdx                # 8-byte Reload
	movq	(%rdx,%rcx,8), %rcx
	movl	-100(%rbp), %edi
	movq	%rcx, -128(%rbp)                # 8-byte Spill
	callq	_ZN9move_maps15oneFileAdjacentEi@PLT
	movq	-128(%rbp), %rcx                # 8-byte Reload
	andq	%rax, %rcx
	movq	%rcx, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.LBB1_41
# %bb.40:
	movl	-100(%rbp), %edi
	movl	-36(%rbp), %eax
	movl	%edi, -132(%rbp)                # 4-byte Spill
	movl	%eax, %edi
	callq	_Z13oppositeColori
	movl	-132(%rbp), %edi                # 4-byte Reload
	movl	%eax, %esi
	callq	_ZN9move_maps9pawnMovesEii@PLT
	movq	%rax, %rdi
	callq	_Z11u64ToSquarem
	movq	-120(%rbp), %rdi                # 8-byte Reload
	movl	%eax, %esi
	callq	_ZN5Board12SetEpSquare_Ei@PLT
	jmp	.LBB1_42
.LBB1_41:
	movq	-120(%rbp), %rdi                # 8-byte Reload
	movl	$4294967295, %esi               # imm = 0xFFFFFFFF
	callq	_ZN5Board12SetEpSquare_Ei@PLT
.LBB1_42:
	jmp	.LBB1_44
.LBB1_43:
	movq	-120(%rbp), %rdi                # 8-byte Reload
	movl	$4294967295, %esi               # imm = 0xFFFFFFFF
	callq	_ZN5Board12SetEpSquare_Ei@PLT
.LBB1_44:
	jmp	.LBB1_45
.LBB1_45:
	movq	-120(%rbp), %rax                # 8-byte Reload
	movl	96(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 96(%rax)
	movl	-36(%rbp), %edi
	callq	_Z13oppositeColori
	movq	-120(%rbp), %rdi                # 8-byte Reload
	movl	%eax, %esi
	callq	_ZN5Board8SetTurn_Ei@PLT
	movq	%fs:40, %rdx
	movq	-8(%rbp), %rdi
	cmpq	%rdi, %rdx
	jne	.LBB1_47
# %bb.46:
	addq	$144, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_47:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end1:
	.size	_ZN5Board8MakeMoveE5CMove, .Lfunc_end1-_ZN5Board8MakeMoveE5CMove
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN5board10StateStack4PushERNS_5StateE,"axG",@progbits,_ZN5board10StateStack4PushERNS_5StateE,comdat
	.weak	_ZN5board10StateStack4PushERNS_5StateE # -- Begin function _ZN5board10StateStack4PushERNS_5StateE
	.p2align	4, 0x90
	.type	_ZN5board10StateStack4PushERNS_5StateE,@function
_ZN5board10StateStack4PushERNS_5StateE: # @_ZN5board10StateStack4PushERNS_5StateE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	-16(%rbp), %rsi
	movq	%rcx, %rdi
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	callq	_ZNSt6vectorIN5board5StateESaIS1_EE9push_backERKS1_
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movl	(%rax), %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	_ZN5board10StateStack4PushERNS_5StateE, .Lfunc_end2-_ZN5board10StateStack4PushERNS_5StateE
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
.Lfunc_end3:
	.size	_ZNK5CMove9type_codeEv, .Lfunc_end3-_ZNK5CMove9type_codeEv
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
.Lfunc_end4:
	.size	_ZNK5CMove3srcEv, .Lfunc_end4-_ZNK5CMove3srcEv
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
.Lfunc_end5:
	.size	_ZNK5CMove4destEv, .Lfunc_end5-_ZNK5CMove4destEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN5piece7is_pawnEi,"axG",@progbits,_ZN5piece7is_pawnEi,comdat
	.weak	_ZN5piece7is_pawnEi             # -- Begin function _ZN5piece7is_pawnEi
	.p2align	4, 0x90
	.type	_ZN5piece7is_pawnEi,@function
_ZN5piece7is_pawnEi:                    # @_ZN5piece7is_pawnEi
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
	cmpl	$0, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	_ZN5piece7is_pawnEi, .Lfunc_end6-_ZN5piece7is_pawnEi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN5piece8is_emptyEi,"axG",@progbits,_ZN5piece8is_emptyEi,comdat
	.weak	_ZN5piece8is_emptyEi            # -- Begin function _ZN5piece8is_emptyEi
	.p2align	4, 0x90
	.type	_ZN5piece8is_emptyEi,@function
_ZN5piece8is_emptyEi:                   # @_ZN5piece8is_emptyEi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	_ZN5piece8is_emptyEi, .Lfunc_end7-_ZN5piece8is_emptyEi
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
.Lfunc_end8:
	.size	_Z13oppositeColori, .Lfunc_end8-_Z13oppositeColori
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN5piece8get_pawnEi,"axG",@progbits,_ZN5piece8get_pawnEi,comdat
	.weak	_ZN5piece8get_pawnEi            # -- Begin function _ZN5piece8get_pawnEi
	.p2align	4, 0x90
	.type	_ZN5piece8get_pawnEi,@function
_ZN5piece8get_pawnEi:                   # @_ZN5piece8get_pawnEi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	addl	$0, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end9:
	.size	_ZN5piece8get_pawnEi, .Lfunc_end9-_ZN5piece8get_pawnEi
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
	je	.LBB10_2
# %bb.1:
	jmp	.LBB10_3
.LBB10_2:
	leaq	.L.str.5(%rip), %rdi
	leaq	.L.str.4(%rip), %rsi
	movl	$130, %edx
	leaq	.L__PRETTY_FUNCTION__._Z11u64ToSquarem(%rip), %rcx
	callq	__assert_fail@PLT
.LBB10_3:
	movq	-8(%rbp), %rdi
	callq	_Z14bitscanForwardm
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end10:
	.size	_Z11u64ToSquarem, .Lfunc_end10-_Z11u64ToSquarem
	.cfi_endproc
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
	jle	.LBB11_2
# %bb.1:
	movl	-12(%rbp), %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	cmpl	$0, %edx
	sete	%sil
	movb	%sil, -13(%rbp)                 # 1-byte Spill
.LBB11_2:
	movb	-13(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end11:
	.size	_ZNK5CMove12is_promotionEv, .Lfunc_end11-_ZNK5CMove12is_promotionEv
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
	jne	.LBB12_2
# %bb.1:
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNK5CMove9type_codeEv
	cmpl	$0, %eax
	setg	%cl
	movb	%cl, -25(%rbp)                  # 1-byte Spill
.LBB12_2:
	movb	-25(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB12_3
	jmp	.LBB12_4
.LBB12_3:
	jmp	.LBB12_5
.LBB12_4:
	leaq	.L.str.6(%rip), %rdi
	leaq	.L.str.7(%rip), %rsi
	movl	$43, %edx
	leaq	.L__PRETTY_FUNCTION__._ZNK5CMove15promoting_pieceEi(%rip), %rcx
	callq	__assert_fail@PLT
.LBB12_5:
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNK5CMove9type_codeEv
	addl	-12(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end12:
	.size	_ZNK5CMove15promoting_pieceEi, .Lfunc_end12-_ZNK5CMove15promoting_pieceEi
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
	addl	$6, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end13:
	.size	_ZN5piece8get_rookEi, .Lfunc_end13-_ZN5piece8get_rookEi
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
.Lfunc_end14:
	.size	_ZN5piece7is_kingEi, .Lfunc_end14-_ZN5piece7is_kingEi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN5piece7is_rookEi,"axG",@progbits,_ZN5piece7is_rookEi,comdat
	.weak	_ZN5piece7is_rookEi             # -- Begin function _ZN5piece7is_rookEi
	.p2align	4, 0x90
	.type	_ZN5piece7is_rookEi,@function
_ZN5piece7is_rookEi:                    # @_ZN5piece7is_rookEi
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
	cmpl	$3, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end15:
	.size	_ZN5piece7is_rookEi, .Lfunc_end15-_ZN5piece7is_rookEi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN5piece4flipEi,"axG",@progbits,_ZN5piece4flipEi,comdat
	.weak	_ZN5piece4flipEi                # -- Begin function _ZN5piece4flipEi
	.p2align	4, 0x90
	.type	_ZN5piece4flipEi,@function
_ZN5piece4flipEi:                       # @_ZN5piece4flipEi
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
	callq	_ZN5piece8is_emptyEi
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB16_1
	jmp	.LBB16_2
.LBB16_1:
	jmp	.LBB16_3
.LBB16_2:
	leaq	.L.str.8(%rip), %rdi
	leaq	.L.str.9(%rip), %rsi
	movl	$50, %edx
	leaq	.L__PRETTY_FUNCTION__._ZN5piece4flipEi(%rip), %rcx
	callq	__assert_fail@PLT
.LBB16_3:
	movl	-4(%rbp), %eax
	xorl	$1, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end16:
	.size	_ZN5piece4flipEi, .Lfunc_end16-_ZN5piece4flipEi
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN5Board10UnmakeMoveEv         # -- Begin function _ZN5Board10UnmakeMoveEv
	.p2align	4, 0x90
	.type	_ZN5Board10UnmakeMoveEv,@function
_ZN5Board10UnmakeMoveEv:                # @_ZN5Board10UnmakeMoveEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1184, %rcx                     # imm = 0x4A0
	movq	%rcx, %rdi
	movq	%rax, -96(%rbp)                 # 8-byte Spill
	callq	_ZNK5board10StateStack7can_popEv
	testb	$1, %al
	jne	.LBB17_1
	jmp	.LBB17_2
.LBB17_1:
	jmp	.LBB17_3
.LBB17_2:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$185, %edx
	leaq	.L__PRETTY_FUNCTION__._ZN5Board10UnmakeMoveEv(%rip), %rcx
	callq	__assert_fail@PLT
.LBB17_3:
	movq	-96(%rbp), %rax                 # 8-byte Reload
	addq	$1184, %rax                     # imm = 0x4A0
	movq	%rax, %rdi
	callq	_ZN5board10StateStack4peekEv
	movq	%rax, -32(%rbp)
	movq	-96(%rbp), %rax                 # 8-byte Reload
	movw	138(%rax), %cx
	movw	%cx, -16(%rbp)
	leaq	-16(%rbp), %rdi
	callq	_ZNK5CMove9type_codeEv
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.LBB17_18
# %bb.4:
	leaq	-16(%rbp), %rdi
	callq	_ZNK5CMove3srcEv
	movq	%rax, -48(%rbp)
	leaq	-16(%rbp), %rdi
	callq	_ZNK5CMove4destEv
	movq	%rax, -56(%rbp)
	leaq	-16(%rbp), %rdi
	callq	_ZNK5CMove9type_codeEv
	movl	%eax, -60(%rbp)
	movq	-32(%rbp), %rcx
	movl	4(%rcx), %eax
	movl	%eax, -64(%rbp)
	movq	-96(%rbp), %rcx                 # 8-byte Reload
	movl	116(%rcx), %eax
	movl	%eax, -68(%rbp)
	movl	120(%rcx), %eax
	movl	%eax, -72(%rbp)
	cmpl	$9, -60(%rbp)
	jne	.LBB17_6
# %bb.5:
	movl	-64(%rbp), %edi
	callq	_ZN5piece8get_rookEi
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %esi
	movslq	-64(%rbp), %rcx
	leaq	_ZN5board6castleL14rook_long_destE(%rip), %rdx
	movq	(%rdx,%rcx,8), %rdx
	movq	-96(%rbp), %rdi                 # 8-byte Reload
	callq	_ZN5Board12RemovePiece_Eim@PLT
	movl	-76(%rbp), %esi
	movslq	-64(%rbp), %rcx
	movq	-96(%rbp), %rdx                 # 8-byte Reload
	movq	1240(%rdx,%rcx,8), %rdx
	movq	-96(%rbp), %rdi                 # 8-byte Reload
	callq	_ZN5Board9AddPiece_Eim@PLT
	jmp	.LBB17_9
.LBB17_6:
	cmpl	$3, -60(%rbp)
	jne	.LBB17_8
# %bb.7:
	movl	-64(%rbp), %edi
	callq	_ZN5piece8get_rookEi
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %esi
	movslq	-64(%rbp), %rcx
	leaq	_ZN5board6castleL15rook_short_destE(%rip), %rdx
	movq	(%rdx,%rcx,8), %rdx
	movq	-96(%rbp), %rdi                 # 8-byte Reload
	callq	_ZN5Board12RemovePiece_Eim@PLT
	movl	-80(%rbp), %esi
	movslq	-64(%rbp), %rcx
	movq	-96(%rbp), %rdx                 # 8-byte Reload
	movq	1256(%rdx,%rcx,8), %rdx
	movq	-96(%rbp), %rdi                 # 8-byte Reload
	callq	_ZN5Board9AddPiece_Eim@PLT
.LBB17_8:
	jmp	.LBB17_9
.LBB17_9:
	movl	-68(%rbp), %esi
	movq	-48(%rbp), %rdx
	movq	-96(%rbp), %rdi                 # 8-byte Reload
	callq	_ZN5Board9AddPiece_Eim@PLT
	leaq	-16(%rbp), %rdi
	callq	_ZNK5CMove12is_promotionEv
	testb	$1, %al
	jne	.LBB17_10
	jmp	.LBB17_11
.LBB17_10:
	movl	-64(%rbp), %esi
	leaq	-16(%rbp), %rdi
	callq	_ZNK5CMove15promoting_pieceEi
	movq	-56(%rbp), %rdx
	movq	-96(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	callq	_ZN5Board12RemovePiece_Eim@PLT
	jmp	.LBB17_12
.LBB17_11:
	movl	-68(%rbp), %esi
	movq	-56(%rbp), %rdx
	movq	-96(%rbp), %rdi                 # 8-byte Reload
	callq	_ZN5Board12RemovePiece_Eim@PLT
.LBB17_12:
	cmpl	$5, -60(%rbp)
	jne	.LBB17_14
# %bb.13:
	movl	-64(%rbp), %edi
	callq	_Z13oppositeColori
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %edi
	callq	_ZN5piece8get_pawnEi
	movq	-56(%rbp), %rdi
	movl	%eax, -100(%rbp)                # 4-byte Spill
	callq	_Z11u64ToSquarem
	movl	-84(%rbp), %esi
	movl	%eax, %edi
	callq	_ZN9move_maps9pawnMovesEii@PLT
	movq	-96(%rbp), %rdi                 # 8-byte Reload
	movl	-100(%rbp), %esi                # 4-byte Reload
	movq	%rax, %rdx
	callq	_ZN5Board9AddPiece_Eim@PLT
	jmp	.LBB17_17
.LBB17_14:
	movl	-72(%rbp), %edi
	callq	_ZN5piece8is_emptyEi
	testb	$1, %al
	jne	.LBB17_16
# %bb.15:
	movl	-72(%rbp), %esi
	movq	-56(%rbp), %rdx
	movq	-96(%rbp), %rdi                 # 8-byte Reload
	callq	_ZN5Board9AddPiece_Eim@PLT
.LBB17_16:
	jmp	.LBB17_17
.LBB17_17:
	jmp	.LBB17_18
.LBB17_18:
	movq	-32(%rbp), %rsi
	movq	-96(%rbp), %rax                 # 8-byte Reload
	addq	$96, %rax
	movl	$1088, %edx                     # imm = 0x440
	movq	%rax, %rdi
	callq	memcpy@PLT
	movq	-96(%rbp), %rcx                 # 8-byte Reload
	movb	$1, 1220(%rcx)
	movl	$3, 1216(%rcx)
	addq	$1184, %rcx                     # imm = 0x4A0
	movq	%rcx, %rdi
	movq	%rax, -112(%rbp)                # 8-byte Spill
	callq	_ZN5board10StateStack3PopEv
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB17_20
# %bb.19:
	addq	$112, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB17_20:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end17:
	.size	_ZN5Board10UnmakeMoveEv, .Lfunc_end17-_ZN5Board10UnmakeMoveEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK5board10StateStack7can_popEv,"axG",@progbits,_ZNK5board10StateStack7can_popEv,comdat
	.weak	_ZNK5board10StateStack7can_popEv # -- Begin function _ZNK5board10StateStack7can_popEv
	.p2align	4, 0x90
	.type	_ZNK5board10StateStack7can_popEv,@function
_ZNK5board10StateStack7can_popEv:       # @_ZNK5board10StateStack7can_popEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, (%rax)
	setg	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end18:
	.size	_ZNK5board10StateStack7can_popEv, .Lfunc_end18-_ZNK5board10StateStack7can_popEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN5board10StateStack4peekEv,"axG",@progbits,_ZN5board10StateStack4peekEv,comdat
	.weak	_ZN5board10StateStack4peekEv    # -- Begin function _ZN5board10StateStack4peekEv
	.p2align	4, 0x90
	.type	_ZN5board10StateStack4peekEv,@function
_ZN5board10StateStack4peekEv:           # @_ZN5board10StateStack4peekEv
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
	cmpl	$0, (%rax)
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	jle	.LBB19_2
# %bb.1:
	jmp	.LBB19_3
.LBB19_2:
	leaq	.L.str.10(%rip), %rdi
	leaq	.L.str.11(%rip), %rsi
	movl	$156, %edx
	leaq	.L__PRETTY_FUNCTION__._ZN5board10StateStack4peekEv(%rip), %rcx
	callq	__assert_fail@PLT
.LBB19_3:
	movq	-16(%rbp), %rax                 # 8-byte Reload
	addq	$8, %rax
	movq	%rax, %rdi
	callq	_ZNSt6vectorIN5board5StateESaIS1_EE4backEv
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end19:
	.size	_ZN5board10StateStack4peekEv, .Lfunc_end19-_ZN5board10StateStack4peekEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN5board10StateStack3PopEv,"axG",@progbits,_ZN5board10StateStack3PopEv,comdat
	.weak	_ZN5board10StateStack3PopEv     # -- Begin function _ZN5board10StateStack3PopEv
	.p2align	4, 0x90
	.type	_ZN5board10StateStack3PopEv,@function
_ZN5board10StateStack3PopEv:            # @_ZN5board10StateStack3PopEv
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
	cmpl	$0, (%rax)
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	jle	.LBB20_2
# %bb.1:
	jmp	.LBB20_3
.LBB20_2:
	leaq	.L.str.10(%rip), %rdi
	leaq	.L.str.11(%rip), %rsi
	movl	$174, %edx
	leaq	.L__PRETTY_FUNCTION__._ZN5board10StateStack3PopEv(%rip), %rcx
	callq	__assert_fail@PLT
.LBB20_3:
	movq	-16(%rbp), %rax                 # 8-byte Reload
	addq	$8, %rax
	movq	%rax, %rdi
	callq	_ZNSt6vectorIN5board5StateESaIS1_EE8pop_backEv
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end20:
	.size	_ZN5board10StateStack3PopEv, .Lfunc_end20-_ZN5board10StateStack3PopEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIN5board5StateESaIS1_EE9push_backERKS1_,"axG",@progbits,_ZNSt6vectorIN5board5StateESaIS1_EE9push_backERKS1_,comdat
	.weak	_ZNSt6vectorIN5board5StateESaIS1_EE9push_backERKS1_ # -- Begin function _ZNSt6vectorIN5board5StateESaIS1_EE9push_backERKS1_
	.p2align	4, 0x90
	.type	_ZNSt6vectorIN5board5StateESaIS1_EE9push_backERKS1_,@function
_ZNSt6vectorIN5board5StateESaIS1_EE9push_backERKS1_: # @_ZNSt6vectorIN5board5StateESaIS1_EE9push_backERKS1_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	cmpq	16(%rax), %rcx
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	je	.LBB21_2
# %bb.1:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	-32(%rbp), %rcx                 # 8-byte Reload
	movq	8(%rcx), %rsi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	_ZNSt16allocator_traitsISaIN5board5StateEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	8(%rax), %rcx
	addq	$1088, %rcx                     # imm = 0x440
	movq	%rcx, 8(%rax)
	jmp	.LBB21_3
.LBB21_2:
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt6vectorIN5board5StateESaIS1_EE3endEv
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt6vectorIN5board5StateESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LBB21_3:
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end21:
	.size	_ZNSt6vectorIN5board5StateESaIS1_EE9push_backERKS1_, .Lfunc_end21-_ZNSt6vectorIN5board5StateESaIS1_EE9push_backERKS1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaIN5board5StateEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaIN5board5StateEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_,comdat
	.weak	_ZNSt16allocator_traitsISaIN5board5StateEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_ # -- Begin function _ZNSt16allocator_traitsISaIN5board5StateEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaIN5board5StateEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_,@function
_ZNSt16allocator_traitsISaIN5board5StateEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_: # @_ZNSt16allocator_traitsISaIN5board5StateEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movq	%rsi, -40(%rbp)                 # 8-byte Spill
	callq	_ZSt7forwardIRKN5board5StateEEOT_RNSt16remove_referenceIS4_E4typeE
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	-40(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZN9__gnu_cxx13new_allocatorIN5board5StateEE9constructIS2_JRKS2_EEEvPT_DpOT0_
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end22:
	.size	_ZNSt16allocator_traitsISaIN5board5StateEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_, .Lfunc_end22-_ZNSt16allocator_traitsISaIN5board5StateEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIN5board5StateESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"axG",@progbits,_ZNSt6vectorIN5board5StateESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,comdat
	.weak	_ZNSt6vectorIN5board5StateESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ # -- Begin function _ZNSt6vectorIN5board5StateESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.p2align	4, 0x90
	.type	_ZNSt6vectorIN5board5StateESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,@function
_ZNSt6vectorIN5board5StateESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_: # @_ZNSt6vectorIN5board5StateESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	leaq	.L.str.2(%rip), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	movq	%rax, -96(%rbp)                 # 8-byte Spill
	callq	_ZNKSt6vectorIN5board5StateESaIS1_EE12_M_check_lenEmPKc
	movq	%rax, -48(%rbp)
	movq	-96(%rbp), %rax                 # 8-byte Reload
	movq	(%rax), %rcx
	movq	%rcx, -56(%rbp)
	movq	8(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movq	%rax, %rdi
	callq	_ZNSt6vectorIN5board5StateESaIS1_EE5beginEv
	movq	%rax, -24(%rbp)
	leaq	-16(%rbp), %rax
	leaq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rax, -104(%rbp)                # 8-byte Spill
	callq	_ZN9__gnu_cxxmiIPN5board5StateESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rsi
	movq	-96(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE11_M_allocateEm
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rcx
	imulq	$1088, %rcx, %rcx               # imm = 0x440
	addq	%rcx, %rax
	movq	-40(%rbp), %rdi
	movq	%rax, -112(%rbp)                # 8-byte Spill
	callq	_ZSt7forwardIRKN5board5StateEEOT_RNSt16remove_referenceIS4_E4typeE
	movq	-96(%rbp), %rdi                 # 8-byte Reload
	movq	-112(%rbp), %rsi                # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt16allocator_traitsISaIN5board5StateEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_
	movq	$0, -88(%rbp)
	movq	-56(%rbp), %rdi
	movq	-104(%rbp), %rax                # 8-byte Reload
	movq	%rdi, -120(%rbp)                # 8-byte Spill
	movq	%rax, %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPN5board5StateESt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rsi
	movq	-80(%rbp), %rdx
	movq	-96(%rbp), %rdi                 # 8-byte Reload
	movq	%rsi, -128(%rbp)                # 8-byte Spill
	movq	%rdx, -136(%rbp)                # 8-byte Spill
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv
	movq	-120(%rbp), %rdi                # 8-byte Reload
	movq	-128(%rbp), %rsi                # 8-byte Reload
	movq	-136(%rbp), %rdx                # 8-byte Reload
	movq	%rax, %rcx
	callq	_ZNSt6vectorIN5board5StateESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	addq	$1088, %rax                     # imm = 0x440
	movq	%rax, -88(%rbp)
	movq	-104(%rbp), %rdi                # 8-byte Reload
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPN5board5StateESt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rdi
	movq	-64(%rbp), %rsi
	movq	-88(%rbp), %rdx
	movq	-96(%rbp), %rax                 # 8-byte Reload
	movq	%rdi, -144(%rbp)                # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -152(%rbp)                # 8-byte Spill
	movq	%rdx, -160(%rbp)                # 8-byte Spill
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv
	movq	-144(%rbp), %rdi                # 8-byte Reload
	movq	-152(%rbp), %rsi                # 8-byte Reload
	movq	-160(%rbp), %rdx                # 8-byte Reload
	movq	%rax, %rcx
	callq	_ZNSt6vectorIN5board5StateESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	-96(%rbp), %rcx                 # 8-byte Reload
	movq	16(%rcx), %rdx
	subq	%rax, %rdx
	sarq	$6, %rdx
	movabsq	$-1085102592571150095, %rsi     # imm = 0xF0F0F0F0F0F0F0F1
	imulq	%rsi, %rdx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE13_M_deallocateEPS1_m
	movq	-80(%rbp), %rax
	movq	-96(%rbp), %rcx                 # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%rcx)
	movq	-80(%rbp), %rax
	movq	-48(%rbp), %rdx
	imulq	$1088, %rdx, %rdx               # imm = 0x440
	addq	%rdx, %rax
	movq	%rax, 16(%rcx)
	movq	%fs:40, %rax
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rax
	jne	.LBB23_2
# %bb.1:
	addq	$160, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB23_2:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end23:
	.size	_ZNSt6vectorIN5board5StateESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, .Lfunc_end23-_ZNSt6vectorIN5board5StateESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIN5board5StateESaIS1_EE3endEv,"axG",@progbits,_ZNSt6vectorIN5board5StateESaIS1_EE3endEv,comdat
	.weak	_ZNSt6vectorIN5board5StateESaIS1_EE3endEv # -- Begin function _ZNSt6vectorIN5board5StateESaIS1_EE3endEv
	.p2align	4, 0x90
	.type	_ZNSt6vectorIN5board5StateESaIS1_EE3endEv,@function
_ZNSt6vectorIN5board5StateESaIS1_EE3endEv: # @_ZNSt6vectorIN5board5StateESaIS1_EE3endEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	leaq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPN5board5StateESt6vectorIS2_SaIS2_EEEC2ERKS3_
	movq	-16(%rbp), %rax
	movq	%fs:40, %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	jne	.LBB24_2
# %bb.1:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB24_2:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end24:
	.size	_ZNSt6vectorIN5board5StateESaIS1_EE3endEv, .Lfunc_end24-_ZNSt6vectorIN5board5StateESaIS1_EE3endEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIN5board5StateEE9constructIS2_JRKS2_EEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIN5board5StateEE9constructIS2_JRKS2_EEEvPT_DpOT0_,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIN5board5StateEE9constructIS2_JRKS2_EEEvPT_DpOT0_ # -- Begin function _ZN9__gnu_cxx13new_allocatorIN5board5StateEE9constructIS2_JRKS2_EEEvPT_DpOT0_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIN5board5StateEE9constructIS2_JRKS2_EEEvPT_DpOT0_,@function
_ZN9__gnu_cxx13new_allocatorIN5board5StateEE9constructIS2_JRKS2_EEEvPT_DpOT0_: # @_ZN9__gnu_cxx13new_allocatorIN5board5StateEE9constructIS2_JRKS2_EEEvPT_DpOT0_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	callq	_ZSt7forwardIRKN5board5StateEEOT_RNSt16remove_referenceIS4_E4typeE
	movq	-32(%rbp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movl	$1088, %edx                     # imm = 0x440
	callq	memcpy@PLT
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end25:
	.size	_ZN9__gnu_cxx13new_allocatorIN5board5StateEE9constructIS2_JRKS2_EEEvPT_DpOT0_, .Lfunc_end25-_ZN9__gnu_cxx13new_allocatorIN5board5StateEE9constructIS2_JRKS2_EEEvPT_DpOT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt7forwardIRKN5board5StateEEOT_RNSt16remove_referenceIS4_E4typeE,"axG",@progbits,_ZSt7forwardIRKN5board5StateEEOT_RNSt16remove_referenceIS4_E4typeE,comdat
	.weak	_ZSt7forwardIRKN5board5StateEEOT_RNSt16remove_referenceIS4_E4typeE # -- Begin function _ZSt7forwardIRKN5board5StateEEOT_RNSt16remove_referenceIS4_E4typeE
	.p2align	4, 0x90
	.type	_ZSt7forwardIRKN5board5StateEEOT_RNSt16remove_referenceIS4_E4typeE,@function
_ZSt7forwardIRKN5board5StateEEOT_RNSt16remove_referenceIS4_E4typeE: # @_ZSt7forwardIRKN5board5StateEEOT_RNSt16remove_referenceIS4_E4typeE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end26:
	.size	_ZSt7forwardIRKN5board5StateEEOT_RNSt16remove_referenceIS4_E4typeE, .Lfunc_end26-_ZSt7forwardIRKN5board5StateEEOT_RNSt16remove_referenceIS4_E4typeE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6vectorIN5board5StateESaIS1_EE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorIN5board5StateESaIS1_EE12_M_check_lenEmPKc,comdat
	.weak	_ZNKSt6vectorIN5board5StateESaIS1_EE12_M_check_lenEmPKc # -- Begin function _ZNKSt6vectorIN5board5StateESaIS1_EE12_M_check_lenEmPKc
	.p2align	4, 0x90
	.type	_ZNKSt6vectorIN5board5StateESaIS1_EE12_M_check_lenEmPKc,@function
_ZNKSt6vectorIN5board5StateESaIS1_EE12_M_check_lenEmPKc: # @_ZNKSt6vectorIN5board5StateESaIS1_EE12_M_check_lenEmPKc
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -32(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	callq	_ZNKSt6vectorIN5board5StateESaIS1_EE8max_sizeEv
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	callq	_ZNKSt6vectorIN5board5StateESaIS1_EE4sizeEv
	movq	-64(%rbp), %rcx                 # 8-byte Reload
	subq	%rax, %rcx
	cmpq	-16(%rbp), %rcx
	jae	.LBB27_2
# %bb.1:
	movq	-40(%rbp), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.LBB27_2:
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNKSt6vectorIN5board5StateESaIS1_EE4sizeEv
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	callq	_ZNKSt6vectorIN5board5StateESaIS1_EE4sizeEv
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	callq	_ZSt3maxImERKT_S2_S2_
	movq	-72(%rbp), %rcx                 # 8-byte Reload
	addq	(%rax), %rcx
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	callq	_ZNKSt6vectorIN5board5StateESaIS1_EE4sizeEv
	movq	-80(%rbp), %rcx                 # 8-byte Reload
	cmpq	%rax, %rcx
	jb	.LBB27_4
# %bb.3:
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	callq	_ZNKSt6vectorIN5board5StateESaIS1_EE8max_sizeEv
	movq	-88(%rbp), %rcx                 # 8-byte Reload
	cmpq	%rax, %rcx
	jbe	.LBB27_5
.LBB27_4:
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNKSt6vectorIN5board5StateESaIS1_EE8max_sizeEv
	movq	%rax, -96(%rbp)                 # 8-byte Spill
	jmp	.LBB27_6
.LBB27_5:
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)                 # 8-byte Spill
.LBB27_6:
	movq	-96(%rbp), %rax                 # 8-byte Reload
	movq	%fs:40, %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movq	%rax, -104(%rbp)                # 8-byte Spill
	jne	.LBB27_8
# %bb.7:
	movq	-104(%rbp), %rax                # 8-byte Reload
	addq	$112, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB27_8:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end27:
	.size	_ZNKSt6vectorIN5board5StateESaIS1_EE12_M_check_lenEmPKc, .Lfunc_end27-_ZNKSt6vectorIN5board5StateESaIS1_EE12_M_check_lenEmPKc
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxxmiIPN5board5StateESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_,"axG",@progbits,_ZN9__gnu_cxxmiIPN5board5StateESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_,comdat
	.weak	_ZN9__gnu_cxxmiIPN5board5StateESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_ # -- Begin function _ZN9__gnu_cxxmiIPN5board5StateESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxxmiIPN5board5StateESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_,@function
_ZN9__gnu_cxxmiIPN5board5StateESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_: # @_ZN9__gnu_cxxmiIPN5board5StateESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPN5board5StateESt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPN5board5StateESt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, %rax
	cqto
	movl	$1088, %ecx                     # imm = 0x440
	idivq	%rcx
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end28:
	.size	_ZN9__gnu_cxxmiIPN5board5StateESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_, .Lfunc_end28-_ZN9__gnu_cxxmiIPN5board5StateESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIN5board5StateESaIS1_EE5beginEv,"axG",@progbits,_ZNSt6vectorIN5board5StateESaIS1_EE5beginEv,comdat
	.weak	_ZNSt6vectorIN5board5StateESaIS1_EE5beginEv # -- Begin function _ZNSt6vectorIN5board5StateESaIS1_EE5beginEv
	.p2align	4, 0x90
	.type	_ZNSt6vectorIN5board5StateESaIS1_EE5beginEv,@function
_ZNSt6vectorIN5board5StateESaIS1_EE5beginEv: # @_ZNSt6vectorIN5board5StateESaIS1_EE5beginEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rsi
	leaq	-16(%rbp), %rdi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPN5board5StateESt6vectorIS2_SaIS2_EEEC2ERKS3_
	movq	-16(%rbp), %rax
	movq	%fs:40, %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	jne	.LBB29_2
# %bb.1:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB29_2:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end29:
	.size	_ZNSt6vectorIN5board5StateESaIS1_EE5beginEv, .Lfunc_end29-_ZNSt6vectorIN5board5StateESaIS1_EE5beginEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIN5board5StateESaIS1_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIN5board5StateESaIS1_EE11_M_allocateEm,comdat
	.weak	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE11_M_allocateEm # -- Begin function _ZNSt12_Vector_baseIN5board5StateESaIS1_EE11_M_allocateEm
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE11_M_allocateEm,@function
_ZNSt12_Vector_baseIN5board5StateESaIS1_EE11_M_allocateEm: # @_ZNSt12_Vector_baseIN5board5StateESaIS1_EE11_M_allocateEm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, -16(%rbp)
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	je	.LBB30_2
# %bb.1:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	_ZNSt16allocator_traitsISaIN5board5StateEEE8allocateERS2_m
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	jmp	.LBB30_3
.LBB30_2:
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)                 # 8-byte Spill
	jmp	.LBB30_3
.LBB30_3:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end30:
	.size	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE11_M_allocateEm, .Lfunc_end30-_ZNSt12_Vector_baseIN5board5StateESaIS1_EE11_M_allocateEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIN5board5StateESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_,"axG",@progbits,_ZNSt6vectorIN5board5StateESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_,comdat
	.weak	_ZNSt6vectorIN5board5StateESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_ # -- Begin function _ZNSt6vectorIN5board5StateESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_
	.p2align	4, 0x90
	.type	_ZNSt6vectorIN5board5StateESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_,@function
_ZNSt6vectorIN5board5StateESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_: # @_ZNSt6vectorIN5board5StateESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	_ZNSt6vectorIN5board5StateESaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end31:
	.size	_ZNSt6vectorIN5board5StateESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_, .Lfunc_end31-_ZNSt6vectorIN5board5StateESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPN5board5StateESt6vectorIS2_SaIS2_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPN5board5StateESt6vectorIS2_SaIS2_EEE4baseEv,comdat
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPN5board5StateESt6vectorIS2_SaIS2_EEE4baseEv # -- Begin function _ZNK9__gnu_cxx17__normal_iteratorIPN5board5StateESt6vectorIS2_SaIS2_EEE4baseEv
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPN5board5StateESt6vectorIS2_SaIS2_EEE4baseEv,@function
_ZNK9__gnu_cxx17__normal_iteratorIPN5board5StateESt6vectorIS2_SaIS2_EEE4baseEv: # @_ZNK9__gnu_cxx17__normal_iteratorIPN5board5StateESt6vectorIS2_SaIS2_EEE4baseEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end32:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPN5board5StateESt6vectorIS2_SaIS2_EEE4baseEv, .Lfunc_end32-_ZNK9__gnu_cxx17__normal_iteratorIPN5board5StateESt6vectorIS2_SaIS2_EEE4baseEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv,comdat
	.weak	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv # -- Begin function _ZNSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv,@function
_ZNSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv: # @_ZNSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end33:
	.size	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv, .Lfunc_end33-_ZNSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIN5board5StateESaIS1_EE13_M_deallocateEPS1_m,"axG",@progbits,_ZNSt12_Vector_baseIN5board5StateESaIS1_EE13_M_deallocateEPS1_m,comdat
	.weak	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE13_M_deallocateEPS1_m # -- Begin function _ZNSt12_Vector_baseIN5board5StateESaIS1_EE13_M_deallocateEPS1_m
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE13_M_deallocateEPS1_m,@function
_ZNSt12_Vector_baseIN5board5StateESaIS1_EE13_M_deallocateEPS1_m: # @_ZNSt12_Vector_baseIN5board5StateESaIS1_EE13_M_deallocateEPS1_m
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, -16(%rbp)
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	je	.LBB34_2
# %bb.1:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	_ZNSt16allocator_traitsISaIN5board5StateEEE10deallocateERS2_PS1_m
.LBB34_2:
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end34:
	.size	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE13_M_deallocateEPS1_m, .Lfunc_end34-_ZNSt12_Vector_baseIN5board5StateESaIS1_EE13_M_deallocateEPS1_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6vectorIN5board5StateESaIS1_EE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorIN5board5StateESaIS1_EE8max_sizeEv,comdat
	.weak	_ZNKSt6vectorIN5board5StateESaIS1_EE8max_sizeEv # -- Begin function _ZNKSt6vectorIN5board5StateESaIS1_EE8max_sizeEv
	.p2align	4, 0x90
	.type	_ZNKSt6vectorIN5board5StateESaIS1_EE8max_sizeEv,@function
_ZNKSt6vectorIN5board5StateESaIS1_EE8max_sizeEv: # @_ZNKSt6vectorIN5board5StateESaIS1_EE8max_sizeEv
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
	movq	%rax, %rdi
	callq	_ZNKSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdi
	callq	_ZNSt6vectorIN5board5StateESaIS1_EE11_S_max_sizeERKS2_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end35:
	.size	_ZNKSt6vectorIN5board5StateESaIS1_EE8max_sizeEv, .Lfunc_end35-_ZNKSt6vectorIN5board5StateESaIS1_EE8max_sizeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6vectorIN5board5StateESaIS1_EE4sizeEv,"axG",@progbits,_ZNKSt6vectorIN5board5StateESaIS1_EE4sizeEv,comdat
	.weak	_ZNKSt6vectorIN5board5StateESaIS1_EE4sizeEv # -- Begin function _ZNKSt6vectorIN5board5StateESaIS1_EE4sizeEv
	.p2align	4, 0x90
	.type	_ZNKSt6vectorIN5board5StateESaIS1_EE4sizeEv,@function
_ZNKSt6vectorIN5board5StateESaIS1_EE4sizeEv: # @_ZNKSt6vectorIN5board5StateESaIS1_EE4sizeEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	(%rax), %rax
	subq	%rax, %rcx
	movq	%rcx, %rax
	cqto
	movl	$1088, %ecx                     # imm = 0x440
	idivq	%rcx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end36:
	.size	_ZNKSt6vectorIN5board5StateESaIS1_EE4sizeEv, .Lfunc_end36-_ZNKSt6vectorIN5board5StateESaIS1_EE4sizeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.weak	_ZSt3maxImERKT_S2_S2_           # -- Begin function _ZSt3maxImERKT_S2_S2_
	.p2align	4, 0x90
	.type	_ZSt3maxImERKT_S2_S2_,@function
_ZSt3maxImERKT_S2_S2_:                  # @_ZSt3maxImERKT_S2_S2_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	cmpq	(%rcx), %rax
	jae	.LBB37_2
# %bb.1:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB37_3
.LBB37_2:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB37_3:
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end37:
	.size	_ZSt3maxImERKT_S2_S2_, .Lfunc_end37-_ZSt3maxImERKT_S2_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIN5board5StateESaIS1_EE11_S_max_sizeERKS2_,"axG",@progbits,_ZNSt6vectorIN5board5StateESaIS1_EE11_S_max_sizeERKS2_,comdat
	.weak	_ZNSt6vectorIN5board5StateESaIS1_EE11_S_max_sizeERKS2_ # -- Begin function _ZNSt6vectorIN5board5StateESaIS1_EE11_S_max_sizeERKS2_
	.p2align	4, 0x90
	.type	_ZNSt6vectorIN5board5StateESaIS1_EE11_S_max_sizeERKS2_,@function
_ZNSt6vectorIN5board5StateESaIS1_EE11_S_max_sizeERKS2_: # @_ZNSt6vectorIN5board5StateESaIS1_EE11_S_max_sizeERKS2_
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
	subq	$64, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -32(%rbp)
	movabsq	$8477364004462110, %rax         # imm = 0x1E1E1E1E1E1E1E
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rdi
	callq	_ZNSt16allocator_traitsISaIN5board5StateEEE8max_sizeERKS2_
	movq	%rax, -24(%rbp)
.Ltmp0:
	leaq	-16(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	_ZSt3minImERKT_S2_S2_
.Ltmp1:
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	jmp	.LBB38_1
.LBB38_1:
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	movq	%fs:40, %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	jne	.LBB38_4
# %bb.2:
	movq	-48(%rbp), %rax                 # 8-byte Reload
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB38_3:
	.cfi_def_cfa %rbp, 16
.Ltmp2:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, %rdi
	movl	%edx, -52(%rbp)                 # 4-byte Spill
	callq	__clang_call_terminate
.LBB38_4:
	callq	__stack_chk_fail@PLT
.Lfunc_end38:
	.size	_ZNSt6vectorIN5board5StateESaIS1_EE11_S_max_sizeERKS2_, .Lfunc_end38-_ZNSt6vectorIN5board5StateESaIS1_EE11_S_max_sizeERKS2_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table38:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	156                             # @TType Encoding = indirect pcrel sdata8
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Lfunc_end38-.Ltmp1            #   Call between .Ltmp1 and .Lfunc_end38
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2
                                        # -- End function
	.section	.text._ZNKSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv,comdat
	.weak	_ZNKSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv # -- Begin function _ZNKSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv
	.p2align	4, 0x90
	.type	_ZNKSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv,@function
_ZNKSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv: # @_ZNKSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end39:
	.size	_ZNKSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv, .Lfunc_end39-_ZNKSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaIN5board5StateEEE8max_sizeERKS2_,"axG",@progbits,_ZNSt16allocator_traitsISaIN5board5StateEEE8max_sizeERKS2_,comdat
	.weak	_ZNSt16allocator_traitsISaIN5board5StateEEE8max_sizeERKS2_ # -- Begin function _ZNSt16allocator_traitsISaIN5board5StateEEE8max_sizeERKS2_
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaIN5board5StateEEE8max_sizeERKS2_,@function
_ZNSt16allocator_traitsISaIN5board5StateEEE8max_sizeERKS2_: # @_ZNSt16allocator_traitsISaIN5board5StateEEE8max_sizeERKS2_
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
	movq	%rax, %rdi
	callq	_ZNK9__gnu_cxx13new_allocatorIN5board5StateEE8max_sizeEv
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end40:
	.size	_ZNSt16allocator_traitsISaIN5board5StateEEE8max_sizeERKS2_, .Lfunc_end40-_ZNSt16allocator_traitsISaIN5board5StateEEE8max_sizeERKS2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt3minImERKT_S2_S2_,"axG",@progbits,_ZSt3minImERKT_S2_S2_,comdat
	.weak	_ZSt3minImERKT_S2_S2_           # -- Begin function _ZSt3minImERKT_S2_S2_
	.p2align	4, 0x90
	.type	_ZSt3minImERKT_S2_S2_,@function
_ZSt3minImERKT_S2_S2_:                  # @_ZSt3minImERKT_S2_S2_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	(%rcx), %rax
	jae	.LBB41_2
# %bb.1:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB41_3
.LBB41_2:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB41_3:
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end41:
	.size	_ZSt3minImERKT_S2_S2_, .Lfunc_end41-_ZSt3minImERKT_S2_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate          # -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	4, 0x90
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
# %bb.0:
	pushq	%rax
	callq	__cxa_begin_catch@PLT
	movq	%rax, (%rsp)                    # 8-byte Spill
	callq	_ZSt9terminatev@PLT
.Lfunc_end42:
	.size	__clang_call_terminate, .Lfunc_end42-__clang_call_terminate
                                        # -- End function
	.section	.text._ZNK9__gnu_cxx13new_allocatorIN5board5StateEE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIN5board5StateEE8max_sizeEv,comdat
	.weak	_ZNK9__gnu_cxx13new_allocatorIN5board5StateEE8max_sizeEv # -- Begin function _ZNK9__gnu_cxx13new_allocatorIN5board5StateEE8max_sizeEv
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx13new_allocatorIN5board5StateEE8max_sizeEv,@function
_ZNK9__gnu_cxx13new_allocatorIN5board5StateEE8max_sizeEv: # @_ZNK9__gnu_cxx13new_allocatorIN5board5StateEE8max_sizeEv
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
	callq	_ZNK9__gnu_cxx13new_allocatorIN5board5StateEE11_M_max_sizeEv
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end43:
	.size	_ZNK9__gnu_cxx13new_allocatorIN5board5StateEE8max_sizeEv, .Lfunc_end43-_ZNK9__gnu_cxx13new_allocatorIN5board5StateEE8max_sizeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9__gnu_cxx13new_allocatorIN5board5StateEE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIN5board5StateEE11_M_max_sizeEv,comdat
	.weak	_ZNK9__gnu_cxx13new_allocatorIN5board5StateEE11_M_max_sizeEv # -- Begin function _ZNK9__gnu_cxx13new_allocatorIN5board5StateEE11_M_max_sizeEv
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx13new_allocatorIN5board5StateEE11_M_max_sizeEv,@function
_ZNK9__gnu_cxx13new_allocatorIN5board5StateEE11_M_max_sizeEv: # @_ZNK9__gnu_cxx13new_allocatorIN5board5StateEE11_M_max_sizeEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movabsq	$8477364004462110, %rax         # imm = 0x1E1E1E1E1E1E1E
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end44:
	.size	_ZNK9__gnu_cxx13new_allocatorIN5board5StateEE11_M_max_sizeEv, .Lfunc_end44-_ZNK9__gnu_cxx13new_allocatorIN5board5StateEE11_M_max_sizeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPN5board5StateESt6vectorIS2_SaIS2_EEEC2ERKS3_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPN5board5StateESt6vectorIS2_SaIS2_EEEC2ERKS3_,comdat
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPN5board5StateESt6vectorIS2_SaIS2_EEEC2ERKS3_ # -- Begin function _ZN9__gnu_cxx17__normal_iteratorIPN5board5StateESt6vectorIS2_SaIS2_EEEC2ERKS3_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx17__normal_iteratorIPN5board5StateESt6vectorIS2_SaIS2_EEEC2ERKS3_,@function
_ZN9__gnu_cxx17__normal_iteratorIPN5board5StateESt6vectorIS2_SaIS2_EEEC2ERKS3_: # @_ZN9__gnu_cxx17__normal_iteratorIPN5board5StateESt6vectorIS2_SaIS2_EEEC2ERKS3_
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
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end45:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPN5board5StateESt6vectorIS2_SaIS2_EEEC2ERKS3_, .Lfunc_end45-_ZN9__gnu_cxx17__normal_iteratorIPN5board5StateESt6vectorIS2_SaIS2_EEEC2ERKS3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaIN5board5StateEEE8allocateERS2_m,"axG",@progbits,_ZNSt16allocator_traitsISaIN5board5StateEEE8allocateERS2_m,comdat
	.weak	_ZNSt16allocator_traitsISaIN5board5StateEEE8allocateERS2_m # -- Begin function _ZNSt16allocator_traitsISaIN5board5StateEEE8allocateERS2_m
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaIN5board5StateEEE8allocateERS2_m,@function
_ZNSt16allocator_traitsISaIN5board5StateEEE8allocateERS2_m: # @_ZNSt16allocator_traitsISaIN5board5StateEEE8allocateERS2_m
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	%rcx, %rdi
	callq	_ZN9__gnu_cxx13new_allocatorIN5board5StateEE8allocateEmPKv
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end46:
	.size	_ZNSt16allocator_traitsISaIN5board5StateEEE8allocateERS2_m, .Lfunc_end46-_ZNSt16allocator_traitsISaIN5board5StateEEE8allocateERS2_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIN5board5StateEE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIN5board5StateEE8allocateEmPKv,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIN5board5StateEE8allocateEmPKv # -- Begin function _ZN9__gnu_cxx13new_allocatorIN5board5StateEE8allocateEmPKv
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIN5board5StateEE8allocateEmPKv,@function
_ZN9__gnu_cxx13new_allocatorIN5board5StateEE8allocateEmPKv: # @_ZN9__gnu_cxx13new_allocatorIN5board5StateEE8allocateEmPKv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	callq	_ZNK9__gnu_cxx13new_allocatorIN5board5StateEE11_M_max_sizeEv
	movq	-32(%rbp), %rcx                 # 8-byte Reload
	cmpq	%rax, %rcx
	jbe	.LBB47_2
# %bb.1:
	callq	_ZSt17__throw_bad_allocv@PLT
.LBB47_2:
	imulq	$1088, -16(%rbp), %rdi          # imm = 0x440
	callq	_Znwm@PLT
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end47:
	.size	_ZN9__gnu_cxx13new_allocatorIN5board5StateEE8allocateEmPKv, .Lfunc_end47-_ZN9__gnu_cxx13new_allocatorIN5board5StateEE8allocateEmPKv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIN5board5StateESaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE,"axG",@progbits,_ZNSt6vectorIN5board5StateESaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE,comdat
	.weak	_ZNSt6vectorIN5board5StateESaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE # -- Begin function _ZNSt6vectorIN5board5StateESaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE
	.p2align	4, 0x90
	.type	_ZNSt6vectorIN5board5StateESaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE,@function
_ZNSt6vectorIN5board5StateESaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE: # @_ZNSt6vectorIN5board5StateESaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	_ZSt12__relocate_aIPN5board5StateES2_SaIS1_EET0_T_S5_S4_RT1_
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end48:
	.size	_ZNSt6vectorIN5board5StateESaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE, .Lfunc_end48-_ZNSt6vectorIN5board5StateESaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt12__relocate_aIPN5board5StateES2_SaIS1_EET0_T_S5_S4_RT1_,"axG",@progbits,_ZSt12__relocate_aIPN5board5StateES2_SaIS1_EET0_T_S5_S4_RT1_,comdat
	.weak	_ZSt12__relocate_aIPN5board5StateES2_SaIS1_EET0_T_S5_S4_RT1_ # -- Begin function _ZSt12__relocate_aIPN5board5StateES2_SaIS1_EET0_T_S5_S4_RT1_
	.p2align	4, 0x90
	.type	_ZSt12__relocate_aIPN5board5StateES2_SaIS1_EET0_T_S5_S4_RT1_,@function
_ZSt12__relocate_aIPN5board5StateES2_SaIS1_EET0_T_S5_S4_RT1_: # @_ZSt12__relocate_aIPN5board5StateES2_SaIS1_EET0_T_S5_S4_RT1_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZSt12__niter_baseIPN5board5StateEET_S3_
	movq	-16(%rbp), %rdi
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	callq	_ZSt12__niter_baseIPN5board5StateEET_S3_
	movq	-24(%rbp), %rdi
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	callq	_ZSt12__niter_baseIPN5board5StateEET_S3_
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movq	-48(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZSt14__relocate_a_1IPN5board5StateES2_SaIS1_EET0_T_S5_S4_RT1_
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end49:
	.size	_ZSt12__relocate_aIPN5board5StateES2_SaIS1_EET0_T_S5_S4_RT1_, .Lfunc_end49-_ZSt12__relocate_aIPN5board5StateES2_SaIS1_EET0_T_S5_S4_RT1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt14__relocate_a_1IPN5board5StateES2_SaIS1_EET0_T_S5_S4_RT1_,"axG",@progbits,_ZSt14__relocate_a_1IPN5board5StateES2_SaIS1_EET0_T_S5_S4_RT1_,comdat
	.weak	_ZSt14__relocate_a_1IPN5board5StateES2_SaIS1_EET0_T_S5_S4_RT1_ # -- Begin function _ZSt14__relocate_a_1IPN5board5StateES2_SaIS1_EET0_T_S5_S4_RT1_
	.p2align	4, 0x90
	.type	_ZSt14__relocate_a_1IPN5board5StateES2_SaIS1_EET0_T_S5_S4_RT1_,@function
_ZSt14__relocate_a_1IPN5board5StateES2_SaIS1_EET0_T_S5_S4_RT1_: # @_ZSt14__relocate_a_1IPN5board5StateES2_SaIS1_EET0_T_S5_S4_RT1_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB50_1:                               # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB50_4
# %bb.2:                                #   in Loop: Header=BB50_1 Depth=1
	movq	-40(%rbp), %rdi
	callq	_ZSt11__addressofIN5board5StateEEPT_RS2_
	movq	-8(%rbp), %rdi
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	callq	_ZSt11__addressofIN5board5StateEEPT_RS2_
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rsi
	callq	_ZSt19__relocate_object_aIN5board5StateES1_SaIS1_EEvPT_PT0_RT1_
# %bb.3:                                #   in Loop: Header=BB50_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$1088, %rax                     # imm = 0x440
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	addq	$1088, %rax                     # imm = 0x440
	movq	%rax, -40(%rbp)
	jmp	.LBB50_1
.LBB50_4:
	movq	-40(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end50:
	.size	_ZSt14__relocate_a_1IPN5board5StateES2_SaIS1_EET0_T_S5_S4_RT1_, .Lfunc_end50-_ZSt14__relocate_a_1IPN5board5StateES2_SaIS1_EET0_T_S5_S4_RT1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt12__niter_baseIPN5board5StateEET_S3_,"axG",@progbits,_ZSt12__niter_baseIPN5board5StateEET_S3_,comdat
	.weak	_ZSt12__niter_baseIPN5board5StateEET_S3_ # -- Begin function _ZSt12__niter_baseIPN5board5StateEET_S3_
	.p2align	4, 0x90
	.type	_ZSt12__niter_baseIPN5board5StateEET_S3_,@function
_ZSt12__niter_baseIPN5board5StateEET_S3_: # @_ZSt12__niter_baseIPN5board5StateEET_S3_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end51:
	.size	_ZSt12__niter_baseIPN5board5StateEET_S3_, .Lfunc_end51-_ZSt12__niter_baseIPN5board5StateEET_S3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt19__relocate_object_aIN5board5StateES1_SaIS1_EEvPT_PT0_RT1_,"axG",@progbits,_ZSt19__relocate_object_aIN5board5StateES1_SaIS1_EEvPT_PT0_RT1_,comdat
	.weak	_ZSt19__relocate_object_aIN5board5StateES1_SaIS1_EEvPT_PT0_RT1_ # -- Begin function _ZSt19__relocate_object_aIN5board5StateES1_SaIS1_EEvPT_PT0_RT1_
	.p2align	4, 0x90
	.type	_ZSt19__relocate_object_aIN5board5StateES1_SaIS1_EEvPT_PT0_RT1_,@function
_ZSt19__relocate_object_aIN5board5StateES1_SaIS1_EEvPT_PT0_RT1_: # @_ZSt19__relocate_object_aIN5board5StateES1_SaIS1_EEvPT_PT0_RT1_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, -32(%rbp)                 # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -40(%rbp)                 # 8-byte Spill
	callq	_ZSt4moveIRN5board5StateEEONSt16remove_referenceIT_E4typeEOS4_
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	-40(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt16allocator_traitsISaIN5board5StateEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -48(%rbp)                 # 8-byte Spill
	movq	%rax, %rdi
	callq	_ZSt11__addressofIN5board5StateEEPT_RS2_
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rsi
	callq	_ZNSt16allocator_traitsISaIN5board5StateEEE7destroyIS1_EEvRS2_PT_
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end52:
	.size	_ZSt19__relocate_object_aIN5board5StateES1_SaIS1_EEvPT_PT0_RT1_, .Lfunc_end52-_ZSt19__relocate_object_aIN5board5StateES1_SaIS1_EEvPT_PT0_RT1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt11__addressofIN5board5StateEEPT_RS2_,"axG",@progbits,_ZSt11__addressofIN5board5StateEEPT_RS2_,comdat
	.weak	_ZSt11__addressofIN5board5StateEEPT_RS2_ # -- Begin function _ZSt11__addressofIN5board5StateEEPT_RS2_
	.p2align	4, 0x90
	.type	_ZSt11__addressofIN5board5StateEEPT_RS2_,@function
_ZSt11__addressofIN5board5StateEEPT_RS2_: # @_ZSt11__addressofIN5board5StateEEPT_RS2_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end53:
	.size	_ZSt11__addressofIN5board5StateEEPT_RS2_, .Lfunc_end53-_ZSt11__addressofIN5board5StateEEPT_RS2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaIN5board5StateEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaIN5board5StateEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_,comdat
	.weak	_ZNSt16allocator_traitsISaIN5board5StateEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_ # -- Begin function _ZNSt16allocator_traitsISaIN5board5StateEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaIN5board5StateEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_,@function
_ZNSt16allocator_traitsISaIN5board5StateEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_: # @_ZNSt16allocator_traitsISaIN5board5StateEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movq	%rsi, -40(%rbp)                 # 8-byte Spill
	callq	_ZSt7forwardIN5board5StateEEOT_RNSt16remove_referenceIS2_E4typeE
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	-40(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZN9__gnu_cxx13new_allocatorIN5board5StateEE9constructIS2_JS2_EEEvPT_DpOT0_
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end54:
	.size	_ZNSt16allocator_traitsISaIN5board5StateEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_, .Lfunc_end54-_ZNSt16allocator_traitsISaIN5board5StateEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt4moveIRN5board5StateEEONSt16remove_referenceIT_E4typeEOS4_,"axG",@progbits,_ZSt4moveIRN5board5StateEEONSt16remove_referenceIT_E4typeEOS4_,comdat
	.weak	_ZSt4moveIRN5board5StateEEONSt16remove_referenceIT_E4typeEOS4_ # -- Begin function _ZSt4moveIRN5board5StateEEONSt16remove_referenceIT_E4typeEOS4_
	.p2align	4, 0x90
	.type	_ZSt4moveIRN5board5StateEEONSt16remove_referenceIT_E4typeEOS4_,@function
_ZSt4moveIRN5board5StateEEONSt16remove_referenceIT_E4typeEOS4_: # @_ZSt4moveIRN5board5StateEEONSt16remove_referenceIT_E4typeEOS4_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end55:
	.size	_ZSt4moveIRN5board5StateEEONSt16remove_referenceIT_E4typeEOS4_, .Lfunc_end55-_ZSt4moveIRN5board5StateEEONSt16remove_referenceIT_E4typeEOS4_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaIN5board5StateEEE7destroyIS1_EEvRS2_PT_,"axG",@progbits,_ZNSt16allocator_traitsISaIN5board5StateEEE7destroyIS1_EEvRS2_PT_,comdat
	.weak	_ZNSt16allocator_traitsISaIN5board5StateEEE7destroyIS1_EEvRS2_PT_ # -- Begin function _ZNSt16allocator_traitsISaIN5board5StateEEE7destroyIS1_EEvRS2_PT_
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaIN5board5StateEEE7destroyIS1_EEvRS2_PT_,@function
_ZNSt16allocator_traitsISaIN5board5StateEEE7destroyIS1_EEvRS2_PT_: # @_ZNSt16allocator_traitsISaIN5board5StateEEE7destroyIS1_EEvRS2_PT_
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
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	_ZN9__gnu_cxx13new_allocatorIN5board5StateEE7destroyIS2_EEvPT_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end56:
	.size	_ZNSt16allocator_traitsISaIN5board5StateEEE7destroyIS1_EEvRS2_PT_, .Lfunc_end56-_ZNSt16allocator_traitsISaIN5board5StateEEE7destroyIS1_EEvRS2_PT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIN5board5StateEE9constructIS2_JS2_EEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIN5board5StateEE9constructIS2_JS2_EEEvPT_DpOT0_,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIN5board5StateEE9constructIS2_JS2_EEEvPT_DpOT0_ # -- Begin function _ZN9__gnu_cxx13new_allocatorIN5board5StateEE9constructIS2_JS2_EEEvPT_DpOT0_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIN5board5StateEE9constructIS2_JS2_EEEvPT_DpOT0_,@function
_ZN9__gnu_cxx13new_allocatorIN5board5StateEE9constructIS2_JS2_EEEvPT_DpOT0_: # @_ZN9__gnu_cxx13new_allocatorIN5board5StateEE9constructIS2_JS2_EEEvPT_DpOT0_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	callq	_ZSt7forwardIN5board5StateEEOT_RNSt16remove_referenceIS2_E4typeE
	movq	-32(%rbp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movl	$1088, %edx                     # imm = 0x440
	callq	memcpy@PLT
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end57:
	.size	_ZN9__gnu_cxx13new_allocatorIN5board5StateEE9constructIS2_JS2_EEEvPT_DpOT0_, .Lfunc_end57-_ZN9__gnu_cxx13new_allocatorIN5board5StateEE9constructIS2_JS2_EEEvPT_DpOT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt7forwardIN5board5StateEEOT_RNSt16remove_referenceIS2_E4typeE,"axG",@progbits,_ZSt7forwardIN5board5StateEEOT_RNSt16remove_referenceIS2_E4typeE,comdat
	.weak	_ZSt7forwardIN5board5StateEEOT_RNSt16remove_referenceIS2_E4typeE # -- Begin function _ZSt7forwardIN5board5StateEEOT_RNSt16remove_referenceIS2_E4typeE
	.p2align	4, 0x90
	.type	_ZSt7forwardIN5board5StateEEOT_RNSt16remove_referenceIS2_E4typeE,@function
_ZSt7forwardIN5board5StateEEOT_RNSt16remove_referenceIS2_E4typeE: # @_ZSt7forwardIN5board5StateEEOT_RNSt16remove_referenceIS2_E4typeE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end58:
	.size	_ZSt7forwardIN5board5StateEEOT_RNSt16remove_referenceIS2_E4typeE, .Lfunc_end58-_ZSt7forwardIN5board5StateEEOT_RNSt16remove_referenceIS2_E4typeE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIN5board5StateEE7destroyIS2_EEvPT_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIN5board5StateEE7destroyIS2_EEvPT_,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIN5board5StateEE7destroyIS2_EEvPT_ # -- Begin function _ZN9__gnu_cxx13new_allocatorIN5board5StateEE7destroyIS2_EEvPT_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIN5board5StateEE7destroyIS2_EEvPT_,@function
_ZN9__gnu_cxx13new_allocatorIN5board5StateEE7destroyIS2_EEvPT_: # @_ZN9__gnu_cxx13new_allocatorIN5board5StateEE7destroyIS2_EEvPT_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end59:
	.size	_ZN9__gnu_cxx13new_allocatorIN5board5StateEE7destroyIS2_EEvPT_, .Lfunc_end59-_ZN9__gnu_cxx13new_allocatorIN5board5StateEE7destroyIS2_EEvPT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaIN5board5StateEEE10deallocateERS2_PS1_m,"axG",@progbits,_ZNSt16allocator_traitsISaIN5board5StateEEE10deallocateERS2_PS1_m,comdat
	.weak	_ZNSt16allocator_traitsISaIN5board5StateEEE10deallocateERS2_PS1_m # -- Begin function _ZNSt16allocator_traitsISaIN5board5StateEEE10deallocateERS2_PS1_m
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaIN5board5StateEEE10deallocateERS2_PS1_m,@function
_ZNSt16allocator_traitsISaIN5board5StateEEE10deallocateERS2_PS1_m: # @_ZNSt16allocator_traitsISaIN5board5StateEEE10deallocateERS2_PS1_m
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	_ZN9__gnu_cxx13new_allocatorIN5board5StateEE10deallocateEPS2_m
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end60:
	.size	_ZNSt16allocator_traitsISaIN5board5StateEEE10deallocateERS2_PS1_m, .Lfunc_end60-_ZNSt16allocator_traitsISaIN5board5StateEEE10deallocateERS2_PS1_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIN5board5StateEE10deallocateEPS2_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIN5board5StateEE10deallocateEPS2_m,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIN5board5StateEE10deallocateEPS2_m # -- Begin function _ZN9__gnu_cxx13new_allocatorIN5board5StateEE10deallocateEPS2_m
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIN5board5StateEE10deallocateEPS2_m,@function
_ZN9__gnu_cxx13new_allocatorIN5board5StateEE10deallocateEPS2_m: # @_ZN9__gnu_cxx13new_allocatorIN5board5StateEE10deallocateEPS2_m
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	_ZdlPv@PLT
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end61:
	.size	_ZN9__gnu_cxx13new_allocatorIN5board5StateEE10deallocateEPS2_m, .Lfunc_end61-_ZN9__gnu_cxx13new_allocatorIN5board5StateEE10deallocateEPS2_m
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
	jne	.LBB62_1
	jmp	.LBB62_2
.LBB62_1:
	jmp	.LBB62_3
.LBB62_2:
	leaq	.L.str.3(%rip), %rdi
	leaq	.L.str.4(%rip), %rsi
	movl	$121, %edx
	leaq	.L__PRETTY_FUNCTION__._Z13u64FromSquarei(%rip), %rcx
	callq	__assert_fail@PLT
.LBB62_3:
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
.Lfunc_end62:
	.size	_Z13u64FromSquarei, .Lfunc_end62-_Z13u64FromSquarei
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
	jl	.LBB63_2
# %bb.1:
	cmpl	$64, -4(%rbp)
	setl	%al
	movb	%al, -5(%rbp)                   # 1-byte Spill
.LBB63_2:
	movb	-5(%rbp), %al                   # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end63:
	.size	_Z13isValidSquarei, .Lfunc_end63-_Z13isValidSquarei
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
.Lfunc_end64:
	.size	_ZN5piece12to_colorlessEi, .Lfunc_end64-_ZN5piece12to_colorlessEi
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
.Lfunc_end65:
	.size	_Z14bitscanForwardm, .Lfunc_end65-_Z14bitscanForwardm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIN5board5StateESaIS1_EE4backEv,"axG",@progbits,_ZNSt6vectorIN5board5StateESaIS1_EE4backEv,comdat
	.weak	_ZNSt6vectorIN5board5StateESaIS1_EE4backEv # -- Begin function _ZNSt6vectorIN5board5StateESaIS1_EE4backEv
	.p2align	4, 0x90
	.type	_ZNSt6vectorIN5board5StateESaIS1_EE4backEv,@function
_ZNSt6vectorIN5board5StateESaIS1_EE4backEv: # @_ZNSt6vectorIN5board5StateESaIS1_EE4backEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	_ZNSt6vectorIN5board5StateESaIS1_EE3endEv
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rdi
	movl	$1, %esi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPN5board5StateESt6vectorIS2_SaIS2_EEEmiEl
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPN5board5StateESt6vectorIS2_SaIS2_EEEdeEv
	movq	%fs:40, %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	jne	.LBB66_2
# %bb.1:
	movq	-40(%rbp), %rax                 # 8-byte Reload
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB66_2:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end66:
	.size	_ZNSt6vectorIN5board5StateESaIS1_EE4backEv, .Lfunc_end66-_ZNSt6vectorIN5board5StateESaIS1_EE4backEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPN5board5StateESt6vectorIS2_SaIS2_EEEmiEl,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPN5board5StateESt6vectorIS2_SaIS2_EEEmiEl,comdat
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPN5board5StateESt6vectorIS2_SaIS2_EEEmiEl # -- Begin function _ZNK9__gnu_cxx17__normal_iteratorIPN5board5StateESt6vectorIS2_SaIS2_EEEmiEl
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPN5board5StateESt6vectorIS2_SaIS2_EEEmiEl,@function
_ZNK9__gnu_cxx17__normal_iteratorIPN5board5StateESt6vectorIS2_SaIS2_EEEmiEl: # @_ZNK9__gnu_cxx17__normal_iteratorIPN5board5StateESt6vectorIS2_SaIS2_EEEmiEl
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	negq	%rcx
	imulq	$1088, %rcx, %rcx               # imm = 0x440
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	leaq	-16(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPN5board5StateESt6vectorIS2_SaIS2_EEEC2ERKS3_
	movq	-16(%rbp), %rax
	movq	%fs:40, %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	jne	.LBB67_2
# %bb.1:
	movq	-48(%rbp), %rax                 # 8-byte Reload
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB67_2:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end67:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPN5board5StateESt6vectorIS2_SaIS2_EEEmiEl, .Lfunc_end67-_ZNK9__gnu_cxx17__normal_iteratorIPN5board5StateESt6vectorIS2_SaIS2_EEEmiEl
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPN5board5StateESt6vectorIS2_SaIS2_EEEdeEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPN5board5StateESt6vectorIS2_SaIS2_EEEdeEv,comdat
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPN5board5StateESt6vectorIS2_SaIS2_EEEdeEv # -- Begin function _ZNK9__gnu_cxx17__normal_iteratorIPN5board5StateESt6vectorIS2_SaIS2_EEEdeEv
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPN5board5StateESt6vectorIS2_SaIS2_EEEdeEv,@function
_ZNK9__gnu_cxx17__normal_iteratorIPN5board5StateESt6vectorIS2_SaIS2_EEEdeEv: # @_ZNK9__gnu_cxx17__normal_iteratorIPN5board5StateESt6vectorIS2_SaIS2_EEEdeEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end68:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPN5board5StateESt6vectorIS2_SaIS2_EEEdeEv, .Lfunc_end68-_ZNK9__gnu_cxx17__normal_iteratorIPN5board5StateESt6vectorIS2_SaIS2_EEEdeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIN5board5StateESaIS1_EE8pop_backEv,"axG",@progbits,_ZNSt6vectorIN5board5StateESaIS1_EE8pop_backEv,comdat
	.weak	_ZNSt6vectorIN5board5StateESaIS1_EE8pop_backEv # -- Begin function _ZNSt6vectorIN5board5StateESaIS1_EE8pop_backEv
	.p2align	4, 0x90
	.type	_ZNSt6vectorIN5board5StateESaIS1_EE8pop_backEv,@function
_ZNSt6vectorIN5board5StateESaIS1_EE8pop_backEv: # @_ZNSt6vectorIN5board5StateESaIS1_EE8pop_backEv
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
	movq	8(%rax), %rcx
	addq	$-1088, %rcx                    # imm = 0xFBC0
	movq	%rcx, 8(%rax)
	movq	%rax, %rcx
	movq	8(%rax), %rsi
	movq	%rcx, %rdi
	callq	_ZNSt16allocator_traitsISaIN5board5StateEEE7destroyIS1_EEvRS2_PT_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end69:
	.size	_ZNSt6vectorIN5board5StateESaIS1_EE8pop_backEv, .Lfunc_end69-_ZNSt6vectorIN5board5StateESaIS1_EE8pop_backEv
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_make_unmake_move.cpp
	.type	_GLOBAL__sub_I_make_unmake_move.cpp,@function
_GLOBAL__sub_I_make_unmake_move.cpp:    # @_GLOBAL__sub_I_make_unmake_move.cpp
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
.Lfunc_end70:
	.size	_GLOBAL__sub_I_make_unmake_move.cpp, .Lfunc_end70-_GLOBAL__sub_I_make_unmake_move.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
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

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"state_stack_.can_pop()"
	.size	.L.str, 23

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"src/chess/make_unmake_move.cpp"
	.size	.L.str.1, 31

	.type	.L__PRETTY_FUNCTION__._ZN5Board10UnmakeMoveEv,@object # @__PRETTY_FUNCTION__._ZN5Board10UnmakeMoveEv
.L__PRETTY_FUNCTION__._ZN5Board10UnmakeMoveEv:
	.asciz	"void Board::UnmakeMove()"
	.size	.L__PRETTY_FUNCTION__._ZN5Board10UnmakeMoveEv, 25

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"vector::_M_realloc_insert"
	.size	.L.str.2, 26

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"isValidSquare(s)"
	.size	.L.str.3, 17

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"include/misc/bits.hpp"
	.size	.L.str.4, 22

	.type	.L__PRETTY_FUNCTION__._Z13u64FromSquarei,@object # @__PRETTY_FUNCTION__._Z13u64FromSquarei
.L__PRETTY_FUNCTION__._Z13u64FromSquarei:
	.asciz	"uint64_t u64FromSquare(int)"
	.size	.L__PRETTY_FUNCTION__._Z13u64FromSquarei, 28

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"x != 0"
	.size	.L.str.5, 7

	.type	.L__PRETTY_FUNCTION__._Z11u64ToSquarem,@object # @__PRETTY_FUNCTION__._Z11u64ToSquarem
.L__PRETTY_FUNCTION__._Z11u64ToSquarem:
	.asciz	"int u64ToSquare(uint64_t)"
	.size	.L__PRETTY_FUNCTION__._Z11u64ToSquarem, 26

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"type_code() % 2 == 0 && type_code() > 0"
	.size	.L.str.6, 40

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"include/game/cmove.hpp"
	.size	.L.str.7, 23

	.type	.L__PRETTY_FUNCTION__._ZNK5CMove15promoting_pieceEi,@object # @__PRETTY_FUNCTION__._ZNK5CMove15promoting_pieceEi
.L__PRETTY_FUNCTION__._ZNK5CMove15promoting_pieceEi:
	.asciz	"int CMove::promoting_piece(int) const"
	.size	.L__PRETTY_FUNCTION__._ZNK5CMove15promoting_pieceEi, 38

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"!is_empty(piece)"
	.size	.L.str.8, 17

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"include/game/pieces.hpp"
	.size	.L.str.9, 24

	.type	.L__PRETTY_FUNCTION__._ZN5piece4flipEi,@object # @__PRETTY_FUNCTION__._ZN5piece4flipEi
.L__PRETTY_FUNCTION__._ZN5piece4flipEi:
	.asciz	"int piece::flip(int)"
	.size	.L__PRETTY_FUNCTION__._ZN5piece4flipEi, 21

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"head_ > 0"
	.size	.L.str.10, 10

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"include/datastructures/board_state.hpp"
	.size	.L.str.11, 39

	.type	.L__PRETTY_FUNCTION__._ZN5board10StateStack4peekEv,@object # @__PRETTY_FUNCTION__._ZN5board10StateStack4peekEv
.L__PRETTY_FUNCTION__._ZN5board10StateStack4peekEv:
	.asciz	"board::State &board::StateStack::peek()"
	.size	.L__PRETTY_FUNCTION__._ZN5board10StateStack4peekEv, 40

	.type	.L__PRETTY_FUNCTION__._ZN5board10StateStack3PopEv,@object # @__PRETTY_FUNCTION__._ZN5board10StateStack3PopEv
.L__PRETTY_FUNCTION__._ZN5board10StateStack3PopEv:
	.asciz	"void board::StateStack::Pop()"
	.size	.L__PRETTY_FUNCTION__._ZN5board10StateStack3PopEv, 30

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_make_unmake_move.cpp
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
	.addrsig_sym _ZN5board10StateStack4PushERNS_5StateE
	.addrsig_sym _ZNK5Board4turnEv
	.addrsig_sym _ZNK5CMove9type_codeEv
	.addrsig_sym _ZN5Board12SetEpSquare_Ei
	.addrsig_sym _ZN5Board16is_checking_moveE5CMove
	.addrsig_sym _ZNK5CMove3srcEv
	.addrsig_sym _ZNK5CMove4destEv
	.addrsig_sym _ZNK5Board9piece_at_Em
	.addrsig_sym _ZN5piece7is_pawnEi
	.addrsig_sym _ZN5piece8is_emptyEi
	.addrsig_sym _ZN5Board12RemovePiece_Eim
	.addrsig_sym _Z13oppositeColori
	.addrsig_sym _ZN5piece8get_pawnEi
	.addrsig_sym _ZN9move_maps9pawnMovesEii
	.addrsig_sym _Z11u64ToSquarem
	.addrsig_sym _ZNK5CMove12is_promotionEv
	.addrsig_sym _ZN5Board9AddPiece_Eim
	.addrsig_sym _ZNK5CMove15promoting_pieceEi
	.addrsig_sym _ZN5piece8get_rookEi
	.addrsig_sym _ZN5piece7is_kingEi
	.addrsig_sym _ZN5Board18SetCastlingRights_Eiii
	.addrsig_sym _ZN5piece7is_rookEi
	.addrsig_sym _ZN5piece4flipEi
	.addrsig_sym _ZN9move_maps15oneFileAdjacentEi
	.addrsig_sym _ZN5Board8SetTurn_Ei
	.addrsig_sym _ZNK5board10StateStack7can_popEv
	.addrsig_sym __assert_fail
	.addrsig_sym _ZN5board10StateStack4peekEv
	.addrsig_sym _ZN5board10StateStack3PopEv
	.addrsig_sym _ZNSt6vectorIN5board5StateESaIS1_EE9push_backERKS1_
	.addrsig_sym _ZNSt16allocator_traitsISaIN5board5StateEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_
	.addrsig_sym _ZNSt6vectorIN5board5StateESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.addrsig_sym _ZNSt6vectorIN5board5StateESaIS1_EE3endEv
	.addrsig_sym _ZN9__gnu_cxx13new_allocatorIN5board5StateEE9constructIS2_JRKS2_EEEvPT_DpOT0_
	.addrsig_sym _ZSt7forwardIRKN5board5StateEEOT_RNSt16remove_referenceIS4_E4typeE
	.addrsig_sym _ZNKSt6vectorIN5board5StateESaIS1_EE12_M_check_lenEmPKc
	.addrsig_sym _ZN9__gnu_cxxmiIPN5board5StateESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	.addrsig_sym _ZNSt6vectorIN5board5StateESaIS1_EE5beginEv
	.addrsig_sym _ZNSt12_Vector_baseIN5board5StateESaIS1_EE11_M_allocateEm
	.addrsig_sym _ZNSt6vectorIN5board5StateESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_
	.addrsig_sym _ZNK9__gnu_cxx17__normal_iteratorIPN5board5StateESt6vectorIS2_SaIS2_EEE4baseEv
	.addrsig_sym _ZNSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv
	.addrsig_sym _ZNSt12_Vector_baseIN5board5StateESaIS1_EE13_M_deallocateEPS1_m
	.addrsig_sym _ZNKSt6vectorIN5board5StateESaIS1_EE8max_sizeEv
	.addrsig_sym _ZNKSt6vectorIN5board5StateESaIS1_EE4sizeEv
	.addrsig_sym _ZSt20__throw_length_errorPKc
	.addrsig_sym _ZSt3maxImERKT_S2_S2_
	.addrsig_sym _ZNSt6vectorIN5board5StateESaIS1_EE11_S_max_sizeERKS2_
	.addrsig_sym _ZNKSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv
	.addrsig_sym _ZNSt16allocator_traitsISaIN5board5StateEEE8max_sizeERKS2_
	.addrsig_sym _ZSt3minImERKT_S2_S2_
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym __clang_call_terminate
	.addrsig_sym __cxa_begin_catch
	.addrsig_sym _ZSt9terminatev
	.addrsig_sym _ZNK9__gnu_cxx13new_allocatorIN5board5StateEE8max_sizeEv
	.addrsig_sym _ZNK9__gnu_cxx13new_allocatorIN5board5StateEE11_M_max_sizeEv
	.addrsig_sym _ZNSt16allocator_traitsISaIN5board5StateEEE8allocateERS2_m
	.addrsig_sym _ZN9__gnu_cxx13new_allocatorIN5board5StateEE8allocateEmPKv
	.addrsig_sym _ZSt17__throw_bad_allocv
	.addrsig_sym _Znwm
	.addrsig_sym _ZNSt6vectorIN5board5StateESaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE
	.addrsig_sym _ZSt12__relocate_aIPN5board5StateES2_SaIS1_EET0_T_S5_S4_RT1_
	.addrsig_sym _ZSt14__relocate_a_1IPN5board5StateES2_SaIS1_EET0_T_S5_S4_RT1_
	.addrsig_sym _ZSt12__niter_baseIPN5board5StateEET_S3_
	.addrsig_sym _ZSt19__relocate_object_aIN5board5StateES1_SaIS1_EEvPT_PT0_RT1_
	.addrsig_sym _ZSt11__addressofIN5board5StateEEPT_RS2_
	.addrsig_sym _ZNSt16allocator_traitsISaIN5board5StateEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_
	.addrsig_sym _ZSt4moveIRN5board5StateEEONSt16remove_referenceIT_E4typeEOS4_
	.addrsig_sym _ZNSt16allocator_traitsISaIN5board5StateEEE7destroyIS1_EEvRS2_PT_
	.addrsig_sym _ZN9__gnu_cxx13new_allocatorIN5board5StateEE9constructIS2_JS2_EEEvPT_DpOT0_
	.addrsig_sym _ZSt7forwardIN5board5StateEEOT_RNSt16remove_referenceIS2_E4typeE
	.addrsig_sym _ZN9__gnu_cxx13new_allocatorIN5board5StateEE7destroyIS2_EEvPT_
	.addrsig_sym _ZNSt16allocator_traitsISaIN5board5StateEEE10deallocateERS2_PS1_m
	.addrsig_sym _ZN9__gnu_cxx13new_allocatorIN5board5StateEE10deallocateEPS2_m
	.addrsig_sym _ZdlPv
	.addrsig_sym _Z13u64FromSquarei
	.addrsig_sym _Z13isValidSquarei
	.addrsig_sym _ZN5piece12to_colorlessEi
	.addrsig_sym _Z14bitscanForwardm
	.addrsig_sym _ZNSt6vectorIN5board5StateESaIS1_EE4backEv
	.addrsig_sym _ZNK9__gnu_cxx17__normal_iteratorIPN5board5StateESt6vectorIS2_SaIS2_EEEmiEl
	.addrsig_sym _ZNK9__gnu_cxx17__normal_iteratorIPN5board5StateESt6vectorIS2_SaIS2_EEEdeEv
	.addrsig_sym _ZNSt6vectorIN5board5StateESaIS1_EE8pop_backEv
	.addrsig_sym _GLOBAL__sub_I_make_unmake_move.cpp
	.addrsig_sym __stack_chk_fail
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym _ZN5board6castleL14rook_long_destE
	.addrsig_sym _ZN5board6castleL15rook_short_destE
