	.text
	.file	"move_generation.cpp"
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
	.globl	_ZN5Board22produce_uncheck_moves_Ev # -- Begin function _ZN5Board22produce_uncheck_moves_Ev
	.p2align	4, 0x90
	.type	_ZN5Board22produce_uncheck_moves_Ev,@function
_ZN5Board22produce_uncheck_moves_Ev:    # @_ZN5Board22produce_uncheck_moves_Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, %rax
	movq	%rsi, -8(%rbp)
	movq	-8(%rbp), %rcx
	testb	$1, 1228(%rcx)
	movq	%rdi, -16(%rbp)                 # 8-byte Spill
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	%rcx, -32(%rbp)                 # 8-byte Spill
	jne	.LBB1_2
# %bb.1:
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	callq	_ZN5Board20GeneratePseudoLegal_Ev
.LBB1_2:
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNK5Board8is_checkEv@PLT
	testb	$1, %al
	jne	.LBB1_3
	jmp	.LBB1_4
.LBB1_3:
	jmp	.LBB1_5
.LBB1_4:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$9, %edx
	leaq	.L__PRETTY_FUNCTION__._ZN5Board22produce_uncheck_moves_Ev(%rip), %rcx
	callq	__assert_fail@PLT
.LBB1_5:
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	callq	_ZN8MoveListILi256EEC2Ev
	movq	-24(%rbp), %rax                 # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	_ZN5Board22produce_uncheck_moves_Ev, .Lfunc_end1-_ZN5Board22produce_uncheck_moves_Ev
	.cfi_endproc
                                        # -- End function
	.globl	_ZN5Board20GeneratePseudoLegal_Ev # -- Begin function _ZN5Board20GeneratePseudoLegal_Ev
	.p2align	4, 0x90
	.type	_ZN5Board20GeneratePseudoLegal_Ev,@function
_ZN5Board20GeneratePseudoLegal_Ev:      # @_ZN5Board20GeneratePseudoLegal_Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$816, %rsp                      # imm = 0x330
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -536(%rbp)
	movq	-536(%rbp), %rax
	movb	1228(%rax), %cl
	xorb	$-1, %cl
	testb	$1, %cl
	movq	%rax, -704(%rbp)                # 8-byte Spill
	jne	.LBB2_1
	jmp	.LBB2_2
.LBB2_1:
	jmp	.LBB2_3
.LBB2_2:
	leaq	.L.str.5(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$325, %edx                      # imm = 0x145
	leaq	.L__PRETTY_FUNCTION__._ZN5Board20GeneratePseudoLegal_Ev(%rip), %rcx
	callq	__assert_fail@PLT
.LBB2_3:
	movl	$0, -540(%rbp)
.LBB2_4:                                # =>This Inner Loop Header: Depth=1
	cmpl	$64, -540(%rbp)
	jge	.LBB2_7
# %bb.5:                                #   in Loop: Header=BB2_4 Depth=1
	movq	-704(%rbp), %rax                # 8-byte Reload
	addq	$104, %rax
	addq	$64, %rax
	movslq	-540(%rbp), %rsi
	movq	%rax, %rdi
	callq	_ZNSt5arrayImLm64EEixEm
	movq	$0, (%rax)
	movq	-704(%rbp), %rax                # 8-byte Reload
	addq	$104, %rax
	addq	$576, %rax                      # imm = 0x240
	movslq	-540(%rbp), %rsi
	movq	%rax, %rdi
	callq	_ZNSt5arrayImLm64EEixEm
	movq	$0, (%rax)
# %bb.6:                                #   in Loop: Header=BB2_4 Depth=1
	movl	-540(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -540(%rbp)
	jmp	.LBB2_4
.LBB2_7:
	movq	-704(%rbp), %rdi                # 8-byte Reload
	callq	_ZNK5Board9occupancyEv@PLT
	movq	%rax, -552(%rbp)
	leaq	-528(%rbp), %rdi
	callq	_ZN7u64ListC2Ev
	movq	-704(%rbp), %rax                # 8-byte Reload
	movq	(%rax), %rdi
	leaq	-528(%rbp), %rsi
	callq	_Z10bitscanAllmR7u64List@PLT
	movl	$0, -556(%rbp)
.LBB2_8:                                # =>This Inner Loop Header: Depth=1
	movl	-556(%rbp), %eax
	leaq	-528(%rbp), %rdi
	movl	%eax, -708(%rbp)                # 4-byte Spill
	callq	_ZNK7u64List3lenEv
	movl	-708(%rbp), %ecx                # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB2_11
# %bb.9:                                #   in Loop: Header=BB2_8 Depth=1
	movl	-556(%rbp), %esi
	leaq	-528(%rbp), %rdi
	callq	_ZNK7u64ListixEi
	movq	%rax, %rdi
	callq	_Z11u64ToSquarem
	xorl	%esi, %esi
	movl	%eax, -560(%rbp)
	movl	-560(%rbp), %edi
	callq	_ZN9move_maps12pawnCapturesEii@PLT
	movq	%rax, -568(%rbp)
	movq	-568(%rbp), %rax
	movq	-704(%rbp), %rcx                # 8-byte Reload
	addq	$104, %rcx
	addq	$64, %rcx
	movslq	-560(%rbp), %rsi
	movq	%rcx, %rdi
	movq	%rax, -720(%rbp)                # 8-byte Spill
	callq	_ZNSt5arrayImLm64EEixEm
	movq	-720(%rbp), %rcx                # 8-byte Reload
	orq	(%rax), %rcx
	movq	%rcx, (%rax)
# %bb.10:                               #   in Loop: Header=BB2_8 Depth=1
	movl	-556(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -556(%rbp)
	jmp	.LBB2_8
.LBB2_11:
	movq	-704(%rbp), %rax                # 8-byte Reload
	movq	8(%rax), %rdi
	leaq	-528(%rbp), %rsi
	callq	_Z10bitscanAllmR7u64List@PLT
	movl	$0, -572(%rbp)
.LBB2_12:                               # =>This Inner Loop Header: Depth=1
	movl	-572(%rbp), %eax
	leaq	-528(%rbp), %rdi
	movl	%eax, -724(%rbp)                # 4-byte Spill
	callq	_ZNK7u64List3lenEv
	movl	-724(%rbp), %ecx                # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB2_15
# %bb.13:                               #   in Loop: Header=BB2_12 Depth=1
	movl	-572(%rbp), %esi
	leaq	-528(%rbp), %rdi
	callq	_ZNK7u64ListixEi
	movq	%rax, %rdi
	callq	_Z11u64ToSquarem
	movl	%eax, -576(%rbp)
	movl	-576(%rbp), %edi
	movl	$1, %esi
	callq	_ZN9move_maps12pawnCapturesEii@PLT
	movq	%rax, -584(%rbp)
	movq	-584(%rbp), %rax
	movq	-704(%rbp), %rcx                # 8-byte Reload
	addq	$104, %rcx
	addq	$64, %rcx
	movslq	-576(%rbp), %rsi
	movq	%rcx, %rdi
	movq	%rax, -736(%rbp)                # 8-byte Spill
	callq	_ZNSt5arrayImLm64EEixEm
	movq	-736(%rbp), %rcx                # 8-byte Reload
	orq	(%rax), %rcx
	movq	%rcx, (%rax)
# %bb.14:                               #   in Loop: Header=BB2_12 Depth=1
	movl	-572(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -572(%rbp)
	jmp	.LBB2_12
.LBB2_15:
	movq	-704(%rbp), %rax                # 8-byte Reload
	movq	16(%rax), %rcx
	orq	24(%rax), %rcx
	movq	%rcx, %rdi
	leaq	-528(%rbp), %rsi
	callq	_Z10bitscanAllmR7u64List@PLT
	movl	$0, -588(%rbp)
.LBB2_16:                               # =>This Inner Loop Header: Depth=1
	movl	-588(%rbp), %eax
	leaq	-528(%rbp), %rdi
	movl	%eax, -740(%rbp)                # 4-byte Spill
	callq	_ZNK7u64List3lenEv
	movl	-740(%rbp), %ecx                # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB2_19
# %bb.17:                               #   in Loop: Header=BB2_16 Depth=1
	movl	-588(%rbp), %esi
	leaq	-528(%rbp), %rdi
	callq	_ZNK7u64ListixEi
	movq	%rax, %rdi
	callq	_Z11u64ToSquarem
	movl	%eax, -592(%rbp)
	movl	-592(%rbp), %edi
	callq	_ZN9move_maps11knightMovesEi@PLT
	movq	%rax, -600(%rbp)
	movq	-600(%rbp), %rax
	movq	-704(%rbp), %rcx                # 8-byte Reload
	addq	$104, %rcx
	addq	$64, %rcx
	movslq	-592(%rbp), %rsi
	movq	%rcx, %rdi
	movq	%rax, -752(%rbp)                # 8-byte Spill
	callq	_ZNSt5arrayImLm64EEixEm
	movq	-752(%rbp), %rcx                # 8-byte Reload
	orq	(%rax), %rcx
	movq	%rcx, (%rax)
# %bb.18:                               #   in Loop: Header=BB2_16 Depth=1
	movl	-588(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -588(%rbp)
	jmp	.LBB2_16
.LBB2_19:
	movq	-704(%rbp), %rax                # 8-byte Reload
	movq	80(%rax), %rcx
	orq	88(%rax), %rcx
	movq	%rcx, %rdi
	leaq	-528(%rbp), %rsi
	callq	_Z10bitscanAllmR7u64List@PLT
	movl	$0, -604(%rbp)
.LBB2_20:                               # =>This Inner Loop Header: Depth=1
	movl	-604(%rbp), %eax
	leaq	-528(%rbp), %rdi
	movl	%eax, -756(%rbp)                # 4-byte Spill
	callq	_ZNK7u64List3lenEv
	movl	-756(%rbp), %ecx                # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB2_23
# %bb.21:                               #   in Loop: Header=BB2_20 Depth=1
	movl	-604(%rbp), %esi
	leaq	-528(%rbp), %rdi
	callq	_ZNK7u64ListixEi
	movq	%rax, %rdi
	callq	_Z11u64ToSquarem
	movl	%eax, -608(%rbp)
	movl	-608(%rbp), %edi
	callq	_ZN9move_maps9kingMovesEi@PLT
	movq	%rax, -616(%rbp)
	movq	-616(%rbp), %rax
	movq	-704(%rbp), %rcx                # 8-byte Reload
	addq	$104, %rcx
	addq	$64, %rcx
	movslq	-608(%rbp), %rsi
	movq	%rcx, %rdi
	movq	%rax, -768(%rbp)                # 8-byte Spill
	callq	_ZNSt5arrayImLm64EEixEm
	movq	-768(%rbp), %rcx                # 8-byte Reload
	orq	(%rax), %rcx
	movq	%rcx, (%rax)
# %bb.22:                               #   in Loop: Header=BB2_20 Depth=1
	movl	-604(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -604(%rbp)
	jmp	.LBB2_20
.LBB2_23:
	movq	-704(%rbp), %rax                # 8-byte Reload
	movq	32(%rax), %rcx
	orq	40(%rax), %rcx
	orq	64(%rax), %rcx
	orq	72(%rax), %rcx
	movq	%rcx, %rdi
	leaq	-528(%rbp), %rsi
	callq	_Z10bitscanAllmR7u64List@PLT
	movl	$0, -620(%rbp)
.LBB2_24:                               # =>This Inner Loop Header: Depth=1
	movl	-620(%rbp), %eax
	leaq	-528(%rbp), %rdi
	movl	%eax, -772(%rbp)                # 4-byte Spill
	callq	_ZNK7u64List3lenEv
	movl	-772(%rbp), %ecx                # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB2_27
# %bb.25:                               #   in Loop: Header=BB2_24 Depth=1
	movl	-620(%rbp), %esi
	leaq	-528(%rbp), %rdi
	callq	_ZNK7u64ListixEi
	movq	%rax, %rdi
	callq	_Z11u64ToSquarem
	movl	%eax, -624(%rbp)
	movl	-624(%rbp), %edi
	movq	-552(%rbp), %rsi
	callq	_ZN9move_maps11bishopMovesEim@PLT
	movq	%rax, -632(%rbp)
	movq	-632(%rbp), %rax
	movq	-704(%rbp), %rcx                # 8-byte Reload
	addq	$104, %rcx
	addq	$64, %rcx
	movslq	-624(%rbp), %rsi
	movq	%rcx, %rdi
	movq	%rax, -784(%rbp)                # 8-byte Spill
	callq	_ZNSt5arrayImLm64EEixEm
	movq	-784(%rbp), %rcx                # 8-byte Reload
	orq	(%rax), %rcx
	movq	%rcx, (%rax)
# %bb.26:                               #   in Loop: Header=BB2_24 Depth=1
	movl	-620(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -620(%rbp)
	jmp	.LBB2_24
.LBB2_27:
	movq	-704(%rbp), %rax                # 8-byte Reload
	movq	48(%rax), %rcx
	orq	56(%rax), %rcx
	orq	64(%rax), %rcx
	orq	72(%rax), %rcx
	movq	%rcx, %rdi
	leaq	-528(%rbp), %rsi
	callq	_Z10bitscanAllmR7u64List@PLT
	movl	$0, -636(%rbp)
.LBB2_28:                               # =>This Inner Loop Header: Depth=1
	movl	-636(%rbp), %eax
	leaq	-528(%rbp), %rdi
	movl	%eax, -788(%rbp)                # 4-byte Spill
	callq	_ZNK7u64List3lenEv
	movl	-788(%rbp), %ecx                # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB2_31
# %bb.29:                               #   in Loop: Header=BB2_28 Depth=1
	movl	-636(%rbp), %esi
	leaq	-528(%rbp), %rdi
	callq	_ZNK7u64ListixEi
	movq	%rax, %rdi
	callq	_Z11u64ToSquarem
	movl	%eax, -640(%rbp)
	movl	-640(%rbp), %edi
	movq	-552(%rbp), %rsi
	callq	_ZN9move_maps9rookMovesEim@PLT
	movq	%rax, -648(%rbp)
	movq	-648(%rbp), %rax
	movq	-704(%rbp), %rcx                # 8-byte Reload
	addq	$104, %rcx
	addq	$64, %rcx
	movslq	-640(%rbp), %rsi
	movq	%rcx, %rdi
	movq	%rax, -800(%rbp)                # 8-byte Spill
	callq	_ZNSt5arrayImLm64EEixEm
	movq	-800(%rbp), %rcx                # 8-byte Reload
	orq	(%rax), %rcx
	movq	%rcx, (%rax)
# %bb.30:                               #   in Loop: Header=BB2_28 Depth=1
	movl	-636(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -636(%rbp)
	jmp	.LBB2_28
.LBB2_31:
	movl	$0, -652(%rbp)
.LBB2_32:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_34 Depth 2
	cmpl	$64, -652(%rbp)
	jge	.LBB2_39
# %bb.33:                               #   in Loop: Header=BB2_32 Depth=1
	movl	-652(%rbp), %edi
	callq	_Z13u64FromSquarei
	movq	%rax, -664(%rbp)
	movq	-704(%rbp), %rax                # 8-byte Reload
	addq	$104, %rax
	addq	$64, %rax
	movslq	-652(%rbp), %rsi
	movq	%rax, %rdi
	callq	_ZNSt5arrayImLm64EEixEm
	movq	(%rax), %rax
	movq	%rax, -672(%rbp)
	movq	-672(%rbp), %rdi
	leaq	-528(%rbp), %rsi
	callq	_Z10bitscanAllmR7u64List@PLT
	movl	$0, -676(%rbp)
.LBB2_34:                               #   Parent Loop BB2_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-676(%rbp), %eax
	leaq	-528(%rbp), %rdi
	movl	%eax, -804(%rbp)                # 4-byte Spill
	callq	_ZNK7u64List3lenEv
	movl	-804(%rbp), %ecx                # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB2_37
# %bb.35:                               #   in Loop: Header=BB2_34 Depth=2
	movl	-676(%rbp), %esi
	leaq	-528(%rbp), %rdi
	callq	_ZNK7u64ListixEi
	movq	%rax, -688(%rbp)
	movq	-688(%rbp), %rdi
	callq	_Z11u64ToSquarem
	movl	%eax, -692(%rbp)
	movq	-664(%rbp), %rcx
	movq	-704(%rbp), %rdx                # 8-byte Reload
	addq	$104, %rdx
	addq	$576, %rdx                      # imm = 0x240
	movslq	-692(%rbp), %rsi
	movq	%rdx, %rdi
	movq	%rcx, -816(%rbp)                # 8-byte Spill
	callq	_ZNSt5arrayImLm64EEixEm
	movq	-816(%rbp), %rcx                # 8-byte Reload
	orq	(%rax), %rcx
	movq	%rcx, (%rax)
# %bb.36:                               #   in Loop: Header=BB2_34 Depth=2
	movl	-676(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -676(%rbp)
	jmp	.LBB2_34
.LBB2_37:                               #   in Loop: Header=BB2_32 Depth=1
	jmp	.LBB2_38
.LBB2_38:                               #   in Loop: Header=BB2_32 Depth=1
	movl	-652(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -652(%rbp)
	jmp	.LBB2_32
.LBB2_39:
	movq	-704(%rbp), %rax                # 8-byte Reload
	movb	$1, 1228(%rax)
	movq	%fs:40, %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	jne	.LBB2_41
# %bb.40:
	addq	$816, %rsp                      # imm = 0x330
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB2_41:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end2:
	.size	_ZN5Board20GeneratePseudoLegal_Ev, .Lfunc_end2-_ZN5Board20GeneratePseudoLegal_Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN8MoveListILi256EEC2Ev,"axG",@progbits,_ZN8MoveListILi256EEC2Ev,comdat
	.weak	_ZN8MoveListILi256EEC2Ev        # -- Begin function _ZN8MoveListILi256EEC2Ev
	.p2align	4, 0x90
	.type	_ZN8MoveListILi256EEC2Ev,@function
_ZN8MoveListILi256EEC2Ev:               # @_ZN8MoveListILi256EEC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$512, %rcx                      # imm = 0x200
	movq	%rax, %rdx
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	movq	%rcx, -24(%rbp)                 # 8-byte Spill
	movq	%rdx, -32(%rbp)                 # 8-byte Spill
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	%rax, %rdi
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	callq	_ZN5CMoveC2Ev
	movq	-40(%rbp), %rax                 # 8-byte Reload
	addq	$2, %rax
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	jne	.LBB3_1
# %bb.2:
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movl	$0, 512(%rax)
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	_ZN8MoveListILi256EEC2Ev, .Lfunc_end3-_ZN8MoveListILi256EEC2Ev
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN5Board11legal_movesEv        # -- Begin function _ZN5Board11legal_movesEv
	.p2align	4, 0x90
	.type	_ZN5Board11legal_movesEv,@function
_ZN5Board11legal_movesEv:               # @_ZN5Board11legal_movesEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$2368, %rsp                     # imm = 0x940
	movq	%rdi, %rax
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	movq	%rsi, -2240(%rbp)
	movq	-2240(%rbp), %rcx
	testb	$1, 1228(%rcx)
	movq	%rdi, -2304(%rbp)               # 8-byte Spill
	movq	%rax, -2312(%rbp)               # 8-byte Spill
	movq	%rcx, -2320(%rbp)               # 8-byte Spill
	jne	.LBB4_2
# %bb.1:
	movq	-2320(%rbp), %rdi               # 8-byte Reload
	callq	_ZN5Board20GeneratePseudoLegal_Ev
.LBB4_2:
	movq	-2320(%rbp), %rdi               # 8-byte Reload
	callq	_ZNK5Board8is_checkEv@PLT
	testb	$1, %al
	jne	.LBB4_3
	jmp	.LBB4_4
.LBB4_3:
	movq	-2304(%rbp), %rdi               # 8-byte Reload
	movq	-2320(%rbp), %rsi               # 8-byte Reload
	callq	_ZN5Board22produce_uncheck_moves_Ev
	jmp	.LBB4_45
.LBB4_4:
	leaq	-528(%rbp), %rdi
	movq	-2320(%rbp), %rsi               # 8-byte Reload
	callq	_ZN5Board14capture_moves_Ev
	leaq	-1048(%rbp), %rdi
	callq	_ZN8MoveListILi256EEC2Ev
	leaq	-1568(%rbp), %rdi
	callq	_ZN7u64ListC2Ev
	leaq	-2088(%rbp), %rdi
	callq	_ZN7u64ListC2Ev
	movq	-2320(%rbp), %rdi               # 8-byte Reload
	callq	_ZNK5Board4turnEv@PLT
	movl	%eax, -2244(%rbp)
	movq	-2320(%rbp), %rdi               # 8-byte Reload
	callq	_ZNK5Board9occupancyEv@PLT
	movq	%rax, -2256(%rbp)
	movl	$0, -2260(%rbp)
.LBB4_5:                                # =>This Inner Loop Header: Depth=1
	movl	-2260(%rbp), %eax
	leaq	-528(%rbp), %rdi
	movl	%eax, -2324(%rbp)               # 4-byte Spill
	callq	_ZNK8MoveListILi256EE4sizeEv
	movl	-2324(%rbp), %ecx               # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB4_8
# %bb.6:                                #   in Loop: Header=BB4_5 Depth=1
	movl	-2260(%rbp), %esi
	leaq	-528(%rbp), %rdi
	callq	_ZNK8MoveListILi256EEixEi
	movw	%ax, -2264(%rbp)
	leaq	-1048(%rbp), %rdi
	movzwl	-2264(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
# %bb.7:                                #   in Loop: Header=BB4_5 Depth=1
	movl	-2260(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -2260(%rbp)
	jmp	.LBB4_5
.LBB4_8:
	movl	-2244(%rbp), %eax
	movl	%eax, -2268(%rbp)
.LBB4_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_11 Depth 2
                                        #       Child Loop BB4_20 Depth 3
	cmpl	$12, -2268(%rbp)
	jge	.LBB4_44
# %bb.10:                               #   in Loop: Header=BB4_9 Depth=1
	movslq	-2268(%rbp), %rax
	movq	-2320(%rbp), %rcx               # 8-byte Reload
	movq	(%rcx,%rax,8), %rdi
	leaq	-1568(%rbp), %rsi
	callq	_Z10bitscanAllmR7u64List@PLT
	movl	$0, -2272(%rbp)
.LBB4_11:                               #   Parent Loop BB4_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_20 Depth 3
	movl	-2272(%rbp), %eax
	leaq	-1568(%rbp), %rdi
	movl	%eax, -2328(%rbp)               # 4-byte Spill
	callq	_ZNK7u64List3lenEv
	movl	-2328(%rbp), %ecx               # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB4_42
# %bb.12:                               #   in Loop: Header=BB4_11 Depth=2
	movl	-2272(%rbp), %esi
	leaq	-1568(%rbp), %rdi
	callq	_ZNK7u64ListixEi
	movq	%rax, %rdi
	callq	_Z11u64ToSquarem
	movl	%eax, -2276(%rbp)
	movq	$0, -2288(%rbp)
	movl	-2268(%rbp), %edi
	callq	_ZN5piece7is_pawnEi
	testb	$1, %al
	jne	.LBB4_13
	jmp	.LBB4_18
.LBB4_13:                               #   in Loop: Header=BB4_11 Depth=2
	movq	-2256(%rbp), %rax
	xorq	$-1, %rax
	movl	-2276(%rbp), %edi
	movl	-2244(%rbp), %esi
	movq	%rax, -2336(%rbp)               # 8-byte Spill
	callq	_ZN9move_maps9pawnMovesEii@PLT
	movq	-2336(%rbp), %rcx               # 8-byte Reload
	andq	%rax, %rcx
	movq	%rcx, -2288(%rbp)
	movl	-2276(%rbp), %edi
	movl	-2244(%rbp), %esi
	callq	_ZN9move_maps14isStartingRankEii@PLT
	testb	$1, %al
	jne	.LBB4_14
	jmp	.LBB4_17
.LBB4_14:                               #   in Loop: Header=BB4_11 Depth=2
	cmpq	$0, -2288(%rbp)
	je	.LBB4_16
# %bb.15:                               #   in Loop: Header=BB4_11 Depth=2
	movq	-2256(%rbp), %rax
	xorq	$-1, %rax
	movl	-2276(%rbp), %edi
	movl	-2244(%rbp), %esi
	movq	%rax, -2344(%rbp)               # 8-byte Spill
	callq	_ZN9move_maps15pawnDoubleMovesEii@PLT
	movq	-2344(%rbp), %rcx               # 8-byte Reload
	andq	%rax, %rcx
	orq	-2288(%rbp), %rcx
	movq	%rcx, -2288(%rbp)
.LBB4_16:                               #   in Loop: Header=BB4_11 Depth=2
	jmp	.LBB4_17
.LBB4_17:                               #   in Loop: Header=BB4_11 Depth=2
	jmp	.LBB4_19
.LBB4_18:                               #   in Loop: Header=BB4_11 Depth=2
	movq	-2256(%rbp), %rax
	xorq	$-1, %rax
	movq	-2320(%rbp), %rcx               # 8-byte Reload
	addq	$104, %rcx
	addq	$64, %rcx
	movslq	-2276(%rbp), %rsi
	movq	%rcx, %rdi
	movq	%rax, -2352(%rbp)               # 8-byte Spill
	callq	_ZNSt5arrayImLm64EEixEm
	movq	-2352(%rbp), %rcx               # 8-byte Reload
	andq	(%rax), %rcx
	movq	%rcx, -2288(%rbp)
.LBB4_19:                               #   in Loop: Header=BB4_11 Depth=2
	movq	-2288(%rbp), %rdi
	leaq	-2088(%rbp), %rsi
	callq	_Z10bitscanAllmR7u64List@PLT
	movl	$0, -2292(%rbp)
.LBB4_20:                               #   Parent Loop BB4_9 Depth=1
                                        #     Parent Loop BB4_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-2292(%rbp), %eax
	leaq	-2088(%rbp), %rdi
	movl	%eax, -2356(%rbp)               # 4-byte Spill
	callq	_ZNK7u64List3lenEv
	movl	-2356(%rbp), %ecx               # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB4_40
# %bb.21:                               #   in Loop: Header=BB4_20 Depth=3
	movl	-2292(%rbp), %esi
	leaq	-2088(%rbp), %rdi
	callq	_ZNK7u64ListixEi
	movq	%rax, %rdi
	callq	_Z11u64ToSquarem
	movl	%eax, -2296(%rbp)
	movl	-2268(%rbp), %edi
	callq	_ZN5piece7is_pawnEi
	testb	$1, %al
	jne	.LBB4_22
	jmp	.LBB4_35
.LBB4_22:                               #   in Loop: Header=BB4_20 Depth=3
	movl	-2276(%rbp), %edi
	callq	_Z11squareToRowi
	movl	-2296(%rbp), %edi
	movl	%eax, -2360(%rbp)               # 4-byte Spill
	callq	_Z11squareToRowi
	movl	-2360(%rbp), %ecx               # 4-byte Reload
	subl	%eax, %ecx
	movl	%ecx, %edi
	callq	abs@PLT
	cmpl	$2, %eax
	jne	.LBB4_26
# %bb.23:                               #   in Loop: Header=BB4_20 Depth=3
	movl	-2276(%rbp), %esi
	movl	-2296(%rbp), %edx
	leaq	-2096(%rbp), %rdi
	movl	$7, %ecx
	callq	_ZN5CMoveC2Eiii
	movw	-2096(%rbp), %ax
	movw	%ax, -2104(%rbp)
	movq	-2320(%rbp), %rdi               # 8-byte Reload
	movzwl	-2104(%rbp), %esi
	callq	_ZN5Board19verify_move_safety_E5CMove
	testb	$1, %al
	jne	.LBB4_24
	jmp	.LBB4_25
.LBB4_24:                               #   in Loop: Header=BB4_20 Depth=3
	movw	-2096(%rbp), %ax
	movw	%ax, -2112(%rbp)
	leaq	-1048(%rbp), %rdi
	movzwl	-2112(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
.LBB4_25:                               #   in Loop: Header=BB4_20 Depth=3
	jmp	.LBB4_34
.LBB4_26:                               #   in Loop: Header=BB4_20 Depth=3
	movl	-2296(%rbp), %edi
	movl	-2244(%rbp), %esi
	callq	_ZN9move_maps15isPromotingRankEii@PLT
	testb	$1, %al
	jne	.LBB4_27
	jmp	.LBB4_30
.LBB4_27:                               #   in Loop: Header=BB4_20 Depth=3
	movl	-2276(%rbp), %esi
	movl	-2296(%rbp), %edx
	leaq	-2120(%rbp), %rdi
	movl	$8, %ecx
	callq	_ZN5CMoveC2Eiii
	movl	-2276(%rbp), %esi
	movl	-2296(%rbp), %edx
	leaq	-2128(%rbp), %rdi
	movl	$6, %ecx
	callq	_ZN5CMoveC2Eiii
	movl	-2276(%rbp), %esi
	movl	-2296(%rbp), %edx
	leaq	-2136(%rbp), %rdi
	movl	$4, %ecx
	callq	_ZN5CMoveC2Eiii
	movl	-2276(%rbp), %esi
	movl	-2296(%rbp), %edx
	leaq	-2144(%rbp), %rdi
	movl	$2, %ecx
	callq	_ZN5CMoveC2Eiii
	movw	-2120(%rbp), %ax
	movw	%ax, -2152(%rbp)
	movq	-2320(%rbp), %rdi               # 8-byte Reload
	movzwl	-2152(%rbp), %esi
	callq	_ZN5Board19verify_move_safety_E5CMove
	testb	$1, %al
	jne	.LBB4_28
	jmp	.LBB4_29
.LBB4_28:                               #   in Loop: Header=BB4_20 Depth=3
	movw	-2120(%rbp), %ax
	movw	%ax, -2160(%rbp)
	leaq	-1048(%rbp), %rdi
	movzwl	-2160(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
	movw	-2128(%rbp), %ax
	movw	%ax, -2168(%rbp)
	leaq	-1048(%rbp), %rdi
	movzwl	-2168(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
	movw	-2136(%rbp), %ax
	movw	%ax, -2176(%rbp)
	leaq	-1048(%rbp), %rdi
	movzwl	-2176(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
	movw	-2144(%rbp), %ax
	movw	%ax, -2184(%rbp)
	leaq	-1048(%rbp), %rdi
	movzwl	-2184(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
.LBB4_29:                               #   in Loop: Header=BB4_20 Depth=3
	jmp	.LBB4_33
.LBB4_30:                               #   in Loop: Header=BB4_20 Depth=3
	movl	-2276(%rbp), %esi
	movl	-2296(%rbp), %edx
	leaq	-2192(%rbp), %rdi
	movl	$1, %ecx
	callq	_ZN5CMoveC2Eiii
	movw	-2192(%rbp), %ax
	movw	%ax, -2200(%rbp)
	movq	-2320(%rbp), %rdi               # 8-byte Reload
	movzwl	-2200(%rbp), %esi
	callq	_ZN5Board19verify_move_safety_E5CMove
	testb	$1, %al
	jne	.LBB4_31
	jmp	.LBB4_32
.LBB4_31:                               #   in Loop: Header=BB4_20 Depth=3
	movw	-2192(%rbp), %ax
	movw	%ax, -2208(%rbp)
	leaq	-1048(%rbp), %rdi
	movzwl	-2208(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
.LBB4_32:                               #   in Loop: Header=BB4_20 Depth=3
	jmp	.LBB4_33
.LBB4_33:                               #   in Loop: Header=BB4_20 Depth=3
	jmp	.LBB4_34
.LBB4_34:                               #   in Loop: Header=BB4_20 Depth=3
	jmp	.LBB4_38
.LBB4_35:                               #   in Loop: Header=BB4_20 Depth=3
	movl	-2276(%rbp), %esi
	movl	-2296(%rbp), %edx
	leaq	-2216(%rbp), %rdi
	movl	$1, %ecx
	callq	_ZN5CMoveC2Eiii
	movw	-2216(%rbp), %ax
	movw	%ax, -2224(%rbp)
	movq	-2320(%rbp), %rdi               # 8-byte Reload
	movzwl	-2224(%rbp), %esi
	callq	_ZN5Board19verify_move_safety_E5CMove
	testb	$1, %al
	jne	.LBB4_36
	jmp	.LBB4_37
.LBB4_36:                               #   in Loop: Header=BB4_20 Depth=3
	movw	-2216(%rbp), %ax
	movw	%ax, -2232(%rbp)
	leaq	-1048(%rbp), %rdi
	movzwl	-2232(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
.LBB4_37:                               #   in Loop: Header=BB4_20 Depth=3
	jmp	.LBB4_38
.LBB4_38:                               #   in Loop: Header=BB4_20 Depth=3
	jmp	.LBB4_39
.LBB4_39:                               #   in Loop: Header=BB4_20 Depth=3
	movl	-2292(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -2292(%rbp)
	jmp	.LBB4_20
.LBB4_40:                               #   in Loop: Header=BB4_11 Depth=2
	jmp	.LBB4_41
.LBB4_41:                               #   in Loop: Header=BB4_11 Depth=2
	movl	-2272(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -2272(%rbp)
	jmp	.LBB4_11
.LBB4_42:                               #   in Loop: Header=BB4_9 Depth=1
	jmp	.LBB4_43
.LBB4_43:                               #   in Loop: Header=BB4_9 Depth=1
	movl	-2268(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -2268(%rbp)
	jmp	.LBB4_9
.LBB4_44:
	movq	-2304(%rbp), %rax               # 8-byte Reload
	leaq	-1048(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movl	$516, %edx                      # imm = 0x204
	callq	memcpy@PLT
.LBB4_45:
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB4_47
# %bb.46:
	movq	-2312(%rbp), %rax               # 8-byte Reload
	addq	$2368, %rsp                     # imm = 0x940
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB4_47:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end4:
	.size	_ZN5Board11legal_movesEv, .Lfunc_end4-_ZN5Board11legal_movesEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN5Board14capture_moves_Ev     # -- Begin function _ZN5Board14capture_moves_Ev
	.p2align	4, 0x90
	.type	_ZN5Board14capture_moves_Ev,@function
_ZN5Board14capture_moves_Ev:            # @_ZN5Board14capture_moves_Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$1232, %rsp                     # imm = 0x4D0
	movq	%rdi, %rax
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	movq	%rsi, -1152(%rbp)
	movq	-1152(%rbp), %rcx
	testb	$1, 1228(%rcx)
	movq	%rdi, -1200(%rbp)               # 8-byte Spill
	movq	%rax, -1208(%rbp)               # 8-byte Spill
	movq	%rcx, -1216(%rbp)               # 8-byte Spill
	jne	.LBB5_2
# %bb.1:
	movq	-1216(%rbp), %rdi               # 8-byte Reload
	callq	_ZN5Board20GeneratePseudoLegal_Ev
.LBB5_2:
	movq	-1216(%rbp), %rdi               # 8-byte Reload
	callq	_ZNK5Board8is_checkEv@PLT
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB5_3
	jmp	.LBB5_4
.LBB5_3:
	jmp	.LBB5_5
.LBB5_4:
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$122, %edx
	leaq	.L__PRETTY_FUNCTION__._ZN5Board14capture_moves_Ev(%rip), %rcx
	callq	__assert_fail@PLT
.LBB5_5:
	movq	-1200(%rbp), %rdi               # 8-byte Reload
	callq	_ZN8MoveListILi256EEC2Ev
	leaq	-528(%rbp), %rdi
	callq	_ZN7u64ListC2Ev
	leaq	-1048(%rbp), %rdi
	callq	_ZN7u64ListC2Ev
	movq	-1216(%rbp), %rdi               # 8-byte Reload
	callq	_ZNK5Board4turnEv@PLT
	movl	%eax, -1156(%rbp)
	movl	-1156(%rbp), %esi
	movq	-1216(%rbp), %rdi               # 8-byte Reload
	callq	_ZNK5Board9occupancyEi@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -1160(%rbp)
	movl	-1156(%rbp), %edi
	callq	_Z13oppositeColori
	movq	-1216(%rbp), %rdi               # 8-byte Reload
	movl	%eax, %esi
	callq	_ZNK5Board9occupancyEi@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -1164(%rbp)
	movl	-1156(%rbp), %eax
	movl	%eax, -1168(%rbp)
.LBB5_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_8 Depth 2
                                        #       Child Loop BB5_10 Depth 3
	cmpl	$12, -1168(%rbp)
	jge	.LBB5_25
# %bb.7:                                #   in Loop: Header=BB5_6 Depth=1
	movslq	-1168(%rbp), %rax
	movq	-1216(%rbp), %rcx               # 8-byte Reload
	movq	(%rcx,%rax,8), %rdi
	leaq	-528(%rbp), %rsi
	callq	_Z10bitscanAllmR7u64List@PLT
	movl	$0, -1172(%rbp)
.LBB5_8:                                #   Parent Loop BB5_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_10 Depth 3
	movl	-1172(%rbp), %eax
	leaq	-528(%rbp), %rdi
	movl	%eax, -1220(%rbp)               # 4-byte Spill
	callq	_ZNK7u64List3lenEv
	movl	-1220(%rbp), %ecx               # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB5_23
# %bb.9:                                #   in Loop: Header=BB5_8 Depth=2
	movl	-1172(%rbp), %esi
	leaq	-528(%rbp), %rdi
	callq	_ZNK7u64ListixEi
	movq	%rax, %rdi
	callq	_Z11u64ToSquarem
	movl	%eax, -1176(%rbp)
	movq	-1216(%rbp), %rcx               # 8-byte Reload
	addq	$104, %rcx
	addq	$64, %rcx
	movslq	-1176(%rbp), %rsi
	movq	%rcx, %rdi
	callq	_ZNSt5arrayImLm64EEixEm
	movq	(%rax), %rax
	movslq	-1164(%rbp), %rcx
	andq	%rcx, %rax
	movl	-1160(%rbp), %edx
	xorl	$-1, %edx
	movslq	%edx, %rcx
	andq	%rcx, %rax
	movq	%rax, -1184(%rbp)
	movq	-1184(%rbp), %rdi
	leaq	-1048(%rbp), %rsi
	callq	_Z10bitscanAllmR7u64List@PLT
	movl	$0, -1188(%rbp)
.LBB5_10:                               #   Parent Loop BB5_6 Depth=1
                                        #     Parent Loop BB5_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-1188(%rbp), %eax
	leaq	-1048(%rbp), %rdi
	movl	%eax, -1224(%rbp)               # 4-byte Spill
	callq	_ZNK7u64List3lenEv
	movl	-1224(%rbp), %ecx               # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB5_21
# %bb.11:                               #   in Loop: Header=BB5_10 Depth=3
	movl	-1188(%rbp), %esi
	leaq	-1048(%rbp), %rdi
	callq	_ZNK7u64ListixEi
	movq	%rax, %rdi
	callq	_Z11u64ToSquarem
	movl	%eax, -1192(%rbp)
	movl	-1168(%rbp), %edi
	callq	_ZN5piece7is_pawnEi
	testb	$1, %al
	jne	.LBB5_12
	jmp	.LBB5_16
.LBB5_12:                               #   in Loop: Header=BB5_10 Depth=3
	movl	-1192(%rbp), %edi
	movl	-1156(%rbp), %esi
	callq	_ZN9move_maps15isPromotingRankEii@PLT
	testb	$1, %al
	jne	.LBB5_13
	jmp	.LBB5_16
.LBB5_13:                               #   in Loop: Header=BB5_10 Depth=3
	movl	-1176(%rbp), %esi
	movl	-1192(%rbp), %edx
	leaq	-1056(%rbp), %rdi
	movl	$8, %ecx
	callq	_ZN5CMoveC2Eiii
	movl	-1176(%rbp), %esi
	movl	-1192(%rbp), %edx
	leaq	-1064(%rbp), %rdi
	movl	$6, %ecx
	callq	_ZN5CMoveC2Eiii
	movl	-1176(%rbp), %esi
	movl	-1192(%rbp), %edx
	leaq	-1072(%rbp), %rdi
	movl	$4, %ecx
	callq	_ZN5CMoveC2Eiii
	movl	-1176(%rbp), %esi
	movl	-1192(%rbp), %edx
	leaq	-1080(%rbp), %rdi
	movl	$2, %ecx
	callq	_ZN5CMoveC2Eiii
	movw	-1056(%rbp), %ax
	movw	%ax, -1088(%rbp)
	movq	-1216(%rbp), %rdi               # 8-byte Reload
	movzwl	-1088(%rbp), %esi
	callq	_ZN5Board19verify_move_safety_E5CMove
	testb	$1, %al
	jne	.LBB5_14
	jmp	.LBB5_15
.LBB5_14:                               #   in Loop: Header=BB5_10 Depth=3
	movw	-1056(%rbp), %ax
	movw	%ax, -1096(%rbp)
	movq	-1200(%rbp), %rdi               # 8-byte Reload
	movzwl	-1096(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
	movw	-1064(%rbp), %ax
	movw	%ax, -1104(%rbp)
	movq	-1200(%rbp), %rdi               # 8-byte Reload
	movzwl	-1104(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
	movw	-1072(%rbp), %ax
	movw	%ax, -1112(%rbp)
	movq	-1200(%rbp), %rdi               # 8-byte Reload
	movzwl	-1112(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
	movw	-1080(%rbp), %ax
	movw	%ax, -1120(%rbp)
	movq	-1200(%rbp), %rdi               # 8-byte Reload
	movzwl	-1120(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
.LBB5_15:                               #   in Loop: Header=BB5_10 Depth=3
	jmp	.LBB5_19
.LBB5_16:                               #   in Loop: Header=BB5_10 Depth=3
	movl	-1176(%rbp), %esi
	movl	-1192(%rbp), %edx
	leaq	-1128(%rbp), %rdi
	movl	$1, %ecx
	callq	_ZN5CMoveC2Eiii
	movw	-1128(%rbp), %ax
	movw	%ax, -1136(%rbp)
	movq	-1216(%rbp), %rdi               # 8-byte Reload
	movzwl	-1136(%rbp), %esi
	callq	_ZN5Board19verify_move_safety_E5CMove
	testb	$1, %al
	jne	.LBB5_17
	jmp	.LBB5_18
.LBB5_17:                               #   in Loop: Header=BB5_10 Depth=3
	movw	-1128(%rbp), %ax
	movw	%ax, -1144(%rbp)
	movq	-1200(%rbp), %rdi               # 8-byte Reload
	movzwl	-1144(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
.LBB5_18:                               #   in Loop: Header=BB5_10 Depth=3
	jmp	.LBB5_19
.LBB5_19:                               #   in Loop: Header=BB5_10 Depth=3
	jmp	.LBB5_20
.LBB5_20:                               #   in Loop: Header=BB5_10 Depth=3
	movl	-1188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1188(%rbp)
	jmp	.LBB5_10
.LBB5_21:                               #   in Loop: Header=BB5_8 Depth=2
	jmp	.LBB5_22
.LBB5_22:                               #   in Loop: Header=BB5_8 Depth=2
	movl	-1172(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1172(%rbp)
	jmp	.LBB5_8
.LBB5_23:                               #   in Loop: Header=BB5_6 Depth=1
	jmp	.LBB5_24
.LBB5_24:                               #   in Loop: Header=BB5_6 Depth=1
	movl	-1168(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -1168(%rbp)
	jmp	.LBB5_6
.LBB5_25:
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB5_27
# %bb.26:
	movq	-1208(%rbp), %rax               # 8-byte Reload
	addq	$1232, %rsp                     # imm = 0x4D0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB5_27:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end5:
	.size	_ZN5Board14capture_moves_Ev, .Lfunc_end5-_ZN5Board14capture_moves_Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN7u64ListC2Ev,"axG",@progbits,_ZN7u64ListC2Ev,comdat
	.weak	_ZN7u64ListC2Ev                 # -- Begin function _ZN7u64ListC2Ev
	.p2align	4, 0x90
	.type	_ZN7u64ListC2Ev,@function
_ZN7u64ListC2Ev:                        # @_ZN7u64ListC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, 512(%rax)
	movl	$0, -12(%rbp)
	movq	%rax, -24(%rbp)                 # 8-byte Spill
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$64, -12(%rbp)
	jge	.LBB6_4
# %bb.2:                                #   in Loop: Header=BB6_1 Depth=1
	movslq	-12(%rbp), %rax
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	movq	$0, (%rcx,%rax,8)
# %bb.3:                                #   in Loop: Header=BB6_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB6_1
.LBB6_4:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	_ZN7u64ListC2Ev, .Lfunc_end6-_ZN7u64ListC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK8MoveListILi256EE4sizeEv,"axG",@progbits,_ZNK8MoveListILi256EE4sizeEv,comdat
	.weak	_ZNK8MoveListILi256EE4sizeEv    # -- Begin function _ZNK8MoveListILi256EE4sizeEv
	.p2align	4, 0x90
	.type	_ZNK8MoveListILi256EE4sizeEv,@function
_ZNK8MoveListILi256EE4sizeEv:           # @_ZNK8MoveListILi256EE4sizeEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	512(%rax), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	_ZNK8MoveListILi256EE4sizeEv, .Lfunc_end7-_ZNK8MoveListILi256EE4sizeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN8MoveListILi256EE8PushBackE5CMove,"axG",@progbits,_ZN8MoveListILi256EE8PushBackE5CMove,comdat
	.weak	_ZN8MoveListILi256EE8PushBackE5CMove # -- Begin function _ZN8MoveListILi256EE8PushBackE5CMove
	.p2align	4, 0x90
	.type	_ZN8MoveListILi256EE8PushBackE5CMove,@function
_ZN8MoveListILi256EE8PushBackE5CMove:   # @_ZN8MoveListILi256EE8PushBackE5CMove
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
                                        # kill: def $si killed $si killed $esi
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movw	%si, -16(%rbp)
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movslq	512(%rax), %rcx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, 512(%rax)
	movw	-16(%rbp), %si
	movw	%si, (%rax,%rcx,2)
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB8_2
# %bb.1:
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB8_2:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end8:
	.size	_ZN8MoveListILi256EE8PushBackE5CMove, .Lfunc_end8-_ZN8MoveListILi256EE8PushBackE5CMove
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK8MoveListILi256EEixEi,"axG",@progbits,_ZNK8MoveListILi256EEixEi,comdat
	.weak	_ZNK8MoveListILi256EEixEi       # -- Begin function _ZNK8MoveListILi256EEixEi
	.p2align	4, 0x90
	.type	_ZNK8MoveListILi256EEixEi,@function
_ZNK8MoveListILi256EEixEi:              # @_ZNK8MoveListILi256EEixEi
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
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movw	(%rax,%rcx,2), %dx
	movw	%dx, -16(%rbp)
	movw	-16(%rbp), %ax
	movq	%fs:40, %rcx
	movq	-8(%rbp), %rdi
	cmpq	%rdi, %rcx
	movw	%ax, -30(%rbp)                  # 2-byte Spill
	jne	.LBB9_2
# %bb.1:
	movw	-30(%rbp), %ax                  # 2-byte Reload
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB9_2:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end9:
	.size	_ZNK8MoveListILi256EEixEi, .Lfunc_end9-_ZNK8MoveListILi256EEixEi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK7u64List3lenEv,"axG",@progbits,_ZNK7u64List3lenEv,comdat
	.weak	_ZNK7u64List3lenEv              # -- Begin function _ZNK7u64List3lenEv
	.p2align	4, 0x90
	.type	_ZNK7u64List3lenEv,@function
_ZNK7u64List3lenEv:                     # @_ZNK7u64List3lenEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	512(%rax), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end10:
	.size	_ZNK7u64List3lenEv, .Lfunc_end10-_ZNK7u64List3lenEv
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
	je	.LBB11_2
# %bb.1:
	jmp	.LBB11_3
.LBB11_2:
	leaq	.L.str.6(%rip), %rdi
	leaq	.L.str.7(%rip), %rsi
	movl	$127, %edx
	leaq	.L__PRETTY_FUNCTION__._Z11u64ToSquarem(%rip), %rcx
	callq	__assert_fail@PLT
.LBB11_3:
	movq	-8(%rbp), %rdi
	callq	_Z14bitscanForwardm
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end11:
	.size	_Z11u64ToSquarem, .Lfunc_end11-_Z11u64ToSquarem
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK7u64ListixEi,"axG",@progbits,_ZNK7u64ListixEi,comdat
	.weak	_ZNK7u64ListixEi                # -- Begin function _ZNK7u64ListixEi
	.p2align	4, 0x90
	.type	_ZNK7u64ListixEi,@function
_ZNK7u64ListixEi:                       # @_ZNK7u64ListixEi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end12:
	.size	_ZNK7u64ListixEi, .Lfunc_end12-_ZNK7u64ListixEi
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
.Lfunc_end13:
	.size	_ZN5piece7is_pawnEi, .Lfunc_end13-_ZN5piece7is_pawnEi
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
	.section	.text._ZN5CMoveC2Eiii,"axG",@progbits,_ZN5CMoveC2Eiii,comdat
	.weak	_ZN5CMoveC2Eiii                 # -- Begin function _ZN5CMoveC2Eiii
	.p2align	4, 0x90
	.type	_ZN5CMoveC2Eiii,@function
_ZN5CMoveC2Eiii:                        # @_ZN5CMoveC2Eiii
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
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edi
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	callq	_Z13isValidSquarei
	testb	$1, %al
	jne	.LBB16_2
# %bb.1:
	movl	-16(%rbp), %edi
	callq	_Z6dump32i@PLT
.LBB16_2:
	movl	-16(%rbp), %edi
	callq	_Z13isValidSquarei
	testb	$1, %al
	jne	.LBB16_4
# %bb.3:
	movl	-16(%rbp), %edi
	callq	_Z6dump32i@PLT
.LBB16_4:
	movl	-12(%rbp), %edi
	callq	_Z13isValidSquarei
	testb	$1, %al
	jne	.LBB16_5
	jmp	.LBB16_6
.LBB16_5:
	jmp	.LBB16_7
.LBB16_6:
	leaq	.L.str.8(%rip), %rdi
	leaq	.L.str.9(%rip), %rsi
	movl	$73, %edx
	leaq	.L__PRETTY_FUNCTION__._ZN5CMoveC2Eiii(%rip), %rcx
	callq	__assert_fail@PLT
.LBB16_7:
	movl	-16(%rbp), %edi
	callq	_Z13isValidSquarei
	testb	$1, %al
	jne	.LBB16_8
	jmp	.LBB16_9
.LBB16_8:
	jmp	.LBB16_10
.LBB16_9:
	leaq	.L.str.10(%rip), %rdi
	leaq	.L.str.9(%rip), %rsi
	movl	$74, %edx
	leaq	.L__PRETTY_FUNCTION__._ZN5CMoveC2Eiii(%rip), %rcx
	callq	__assert_fail@PLT
.LBB16_10:
	movl	-12(%rbp), %eax
	shll	$10, %eax
	movl	-16(%rbp), %ecx
	shll	$4, %ecx
	orl	%ecx, %eax
	movl	-20(%rbp), %ecx
	andl	$15, %ecx
	orl	%ecx, %eax
                                        # kill: def $ax killed $ax killed $eax
	movq	-32(%rbp), %rdx                 # 8-byte Reload
	movw	%ax, (%rdx)
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end16:
	.size	_ZN5CMoveC2Eiii, .Lfunc_end16-_ZN5CMoveC2Eiii
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
	movq	%rax, -136(%rbp)                # 8-byte Spill
	je	.LBB17_2
# %bb.1:
	jmp	.LBB17_3
.LBB17_2:
	leaq	.L.str.3(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$178, %edx
	leaq	.L__PRETTY_FUNCTION__._ZN5Board19verify_move_safety_E5CMove(%rip), %rcx
	callq	__assert_fail@PLT
.LBB17_3:
	movq	-136(%rbp), %rdi                # 8-byte Reload
	callq	_ZNK5Board8is_checkEv@PLT
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB17_4
	jmp	.LBB17_5
.LBB17_4:
	jmp	.LBB17_6
.LBB17_5:
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$179, %edx
	leaq	.L__PRETTY_FUNCTION__._ZN5Board19verify_move_safety_E5CMove(%rip), %rcx
	callq	__assert_fail@PLT
.LBB17_6:
	movq	-136(%rbp), %rdi                # 8-byte Reload
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
	jne	.LBB17_7
	jmp	.LBB17_8
.LBB17_7:
	movb	$1, -17(%rbp)
	jmp	.LBB17_18
.LBB17_8:
	leaq	-16(%rbp), %rdi
	callq	_ZNK5CMove9type_codeEv
	cmpl	$5, %eax
	jne	.LBB17_10
# %bb.9:
	movq	-56(%rbp), %rdi
	callq	_Z11u64ToSquarem
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %edi
	movl	-40(%rbp), %esi
	callq	_ZN9move_maps9pawnMovesEii@PLT
	movq	%rax, -72(%rbp)
	movl	-40(%rbp), %edi
	callq	_ZN5piece9get_queenEi
	movslq	%eax, %rcx
	movq	%rcx, -80(%rbp)
	movq	-136(%rbp), %rdi                # 8-byte Reload
	callq	_ZNK5Board9occupancyEv@PLT
	movq	-48(%rbp), %rcx
	orq	-72(%rbp), %rcx
	xorq	$-1, %rcx
	andq	%rcx, %rax
	movl	-36(%rbp), %edi
	movq	%rax, -144(%rbp)                # 8-byte Spill
	callq	_ZN5piece8get_kingEi
	movslq	%eax, %rcx
	movq	-136(%rbp), %rdx                # 8-byte Reload
	movq	(%rdx,%rcx,8), %rsi
	movl	-40(%rbp), %edi
	movq	%rsi, -152(%rbp)                # 8-byte Spill
	callq	_ZN5piece8get_rookEi
	movslq	%eax, %rcx
	movq	-136(%rbp), %rdx                # 8-byte Reload
	movq	(%rdx,%rcx,8), %rcx
	orq	-80(%rbp), %rcx
	movl	-40(%rbp), %edi
	movq	%rcx, -160(%rbp)                # 8-byte Spill
	callq	_ZN5piece10get_bishopEi
	movslq	%eax, %rcx
	movq	-136(%rbp), %rdx                # 8-byte Reload
	movq	(%rdx,%rcx,8), %rcx
	orq	-80(%rbp), %rcx
	movq	-144(%rbp), %rdi                # 8-byte Reload
	movq	-152(%rbp), %rsi                # 8-byte Reload
	movq	-160(%rbp), %rdx                # 8-byte Reload
	callq	_ZN9move_maps17isAttackedSlidingEmmmm@PLT
	xorb	$-1, %al
	andb	$1, %al
	movb	%al, -17(%rbp)
	jmp	.LBB17_18
.LBB17_10:
	movq	-48(%rbp), %rsi
	movq	-136(%rbp), %rdi                # 8-byte Reload
	callq	_ZNK5Board9piece_at_Em@PLT
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %edi
	callq	_Z7colorOfi
	cmpl	-36(%rbp), %eax
	jne	.LBB17_12
# %bb.11:
	jmp	.LBB17_13
.LBB17_12:
	leaq	.L.str.4(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$204, %edx
	leaq	.L__PRETTY_FUNCTION__._ZN5Board19verify_move_safety_E5CMove(%rip), %rcx
	callq	__assert_fail@PLT
.LBB17_13:
	movl	-84(%rbp), %edi
	callq	_ZN5piece7is_kingEi
	testb	$1, %al
	jne	.LBB17_14
	jmp	.LBB17_17
.LBB17_14:
	movl	-40(%rbp), %esi
	movq	-136(%rbp), %rdi                # 8-byte Reload
	callq	_ZNK5Board9occupancyEi@PLT
	movq	%rax, -96(%rbp)
	movq	-136(%rbp), %rax                # 8-byte Reload
	addq	$104, %rax
	addq	$576, %rax                      # imm = 0x240
	movq	-56(%rbp), %rdi
	movq	%rax, -168(%rbp)                # 8-byte Spill
	callq	_Z11u64ToSquarem
	movslq	%eax, %rsi
	movq	-168(%rbp), %rdi                # 8-byte Reload
	callq	_ZNSt5arrayImLm64EEixEm
	movq	(%rax), %rax
	andq	-96(%rbp), %rax
	cmpq	$0, %rax
	je	.LBB17_16
# %bb.15:
	movb	$1, -17(%rbp)
	jmp	.LBB17_18
.LBB17_16:
	movb	$0, -17(%rbp)
	jmp	.LBB17_18
.LBB17_17:
	movq	-136(%rbp), %rdi                # 8-byte Reload
	callq	_ZNK5Board9occupancyEv@PLT
	movq	-48(%rbp), %rcx
	xorq	$-1, %rcx
	andq	%rcx, %rax
	andq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movl	-40(%rbp), %edi
	movq	%rax, -176(%rbp)                # 8-byte Spill
	callq	_ZN5piece8get_rookEi
	movslq	%eax, %rcx
	movq	-136(%rbp), %rdx                # 8-byte Reload
	movq	(%rdx,%rcx,8), %rcx
	movl	-40(%rbp), %edi
	movq	%rcx, -184(%rbp)                # 8-byte Spill
	callq	_ZN5piece9get_queenEi
	movslq	%eax, %rcx
	movq	-184(%rbp), %rdx                # 8-byte Reload
	movq	-136(%rbp), %rsi                # 8-byte Reload
	orq	(%rsi,%rcx,8), %rdx
	movq	-176(%rbp), %rcx                # 8-byte Reload
	andq	%rdx, %rcx
	movq	%rcx, -112(%rbp)
	movq	-104(%rbp), %rcx
	movl	-40(%rbp), %edi
	movq	%rcx, -192(%rbp)                # 8-byte Spill
	callq	_ZN5piece10get_bishopEi
	movslq	%eax, %rcx
	movq	-136(%rbp), %rdx                # 8-byte Reload
	movq	(%rdx,%rcx,8), %rcx
	movl	-40(%rbp), %edi
	movq	%rcx, -200(%rbp)                # 8-byte Spill
	callq	_ZN5piece9get_queenEi
	movslq	%eax, %rcx
	movq	-200(%rbp), %rdx                # 8-byte Reload
	movq	-136(%rbp), %rsi                # 8-byte Reload
	orq	(%rsi,%rcx,8), %rdx
	movq	-192(%rbp), %rcx                # 8-byte Reload
	andq	%rdx, %rcx
	movq	%rcx, -120(%rbp)
	movl	-36(%rbp), %edi
	callq	_ZN5piece8get_kingEi
	movslq	%eax, %rcx
	movq	-136(%rbp), %rdx                # 8-byte Reload
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -128(%rbp)
	movq	-104(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movq	-112(%rbp), %rdx
	movq	-120(%rbp), %rcx
	callq	_ZN9move_maps17isAttackedSlidingEmmmm@PLT
	xorb	$-1, %al
	andb	$1, %al
	movb	%al, -17(%rbp)
.LBB17_18:
	movb	-17(%rbp), %al
	movq	%fs:40, %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movb	%al, -201(%rbp)                 # 1-byte Spill
	jne	.LBB17_20
# %bb.19:
	movb	-201(%rbp), %al                 # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$208, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB17_20:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end17:
	.size	_ZN5Board19verify_move_safety_E5CMove, .Lfunc_end17-_ZN5Board19verify_move_safety_E5CMove
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
.Lfunc_end18:
	.size	_Z13oppositeColori, .Lfunc_end18-_Z13oppositeColori
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
.Lfunc_end19:
	.size	_ZNK5CMove3srcEv, .Lfunc_end19-_ZNK5CMove3srcEv
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
.Lfunc_end20:
	.size	_ZNK5CMove4destEv, .Lfunc_end20-_ZNK5CMove4destEv
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
	je	.LBB21_2
# %bb.1:
	cmpl	$3, -12(%rbp)
	sete	%al
	movb	%al, -13(%rbp)                  # 1-byte Spill
.LBB21_2:
	movb	-13(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end21:
	.size	_ZNK5CMove9is_castleEv, .Lfunc_end21-_ZNK5CMove9is_castleEv
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
.Lfunc_end22:
	.size	_ZNK5CMove9type_codeEv, .Lfunc_end22-_ZNK5CMove9type_codeEv
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
.Lfunc_end23:
	.size	_ZN5piece9get_queenEi, .Lfunc_end23-_ZN5piece9get_queenEi
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
.Lfunc_end24:
	.size	_ZN5piece8get_kingEi, .Lfunc_end24-_ZN5piece8get_kingEi
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
.Lfunc_end25:
	.size	_ZN5piece8get_rookEi, .Lfunc_end25-_ZN5piece8get_rookEi
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
.Lfunc_end26:
	.size	_ZN5piece10get_bishopEi, .Lfunc_end26-_ZN5piece10get_bishopEi
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
.Lfunc_end27:
	.size	_Z7colorOfi, .Lfunc_end27-_Z7colorOfi
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
.Lfunc_end28:
	.size	_ZN5piece7is_kingEi, .Lfunc_end28-_ZN5piece7is_kingEi
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
	subq	$192, %rsp
                                        # kill: def $si killed $si killed $esi
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movw	%si, -16(%rbp)
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -144(%rbp)                # 8-byte Spill
	callq	_ZNK5Board4turnEv@PLT
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %edi
	callq	_Z13oppositeColori
	movl	%eax, -40(%rbp)
	leaq	-16(%rbp), %rdi
	callq	_ZNK5CMove9is_castleEv
	testb	$1, %al
	jne	.LBB29_1
	jmp	.LBB29_5
.LBB29_1:
	leaq	-16(%rbp), %rdi
	callq	_ZNK5CMove9type_codeEv
	cmpl	$9, %eax
	jne	.LBB29_3
# %bb.2:
	jmp	.LBB29_4
.LBB29_3:
	jmp	.LBB29_4
.LBB29_4:
	movq	-144(%rbp), %rdi                # 8-byte Reload
	callq	_ZNK5Board9occupancyEv@PLT
	movq	%rax, -72(%rbp)
.LBB29_5:
	leaq	-16(%rbp), %rdi
	callq	_ZNK5CMove3srcEv
	movq	%rax, -80(%rbp)
	leaq	-16(%rbp), %rdi
	callq	_ZNK5CMove4destEv
	movq	%rax, -88(%rbp)
	leaq	-16(%rbp), %rdi
	callq	_ZNK5CMove9type_codeEv
	cmpl	$5, %eax
	jne	.LBB29_7
# %bb.6:
	movq	-88(%rbp), %rdi
	callq	_Z11u64ToSquarem
	movl	%eax, -92(%rbp)
.LBB29_7:
	movq	-80(%rbp), %rsi
	movq	-144(%rbp), %rdi                # 8-byte Reload
	callq	_ZNK5Board9piece_at_Em@PLT
	movl	%eax, -96(%rbp)
	movl	-96(%rbp), %edi
	callq	_Z7colorOfi
	cmpl	-36(%rbp), %eax
	jne	.LBB29_9
# %bb.8:
	jmp	.LBB29_10
.LBB29_9:
	leaq	.L.str.4(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$280, %edx                      # imm = 0x118
	leaq	.L__PRETTY_FUNCTION__._ZN5Board16is_checking_moveE5CMove(%rip), %rcx
	callq	__assert_fail@PLT
.LBB29_10:
	movq	-144(%rbp), %rdi                # 8-byte Reload
	callq	_ZNK5Board9occupancyEv@PLT
	movq	-80(%rbp), %rcx
	xorq	$-1, %rcx
	andq	%rcx, %rax
	andq	-88(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movl	-36(%rbp), %edi
	movq	%rax, -152(%rbp)                # 8-byte Spill
	callq	_ZN5piece8get_rookEi
	movslq	%eax, %rcx
	movq	-144(%rbp), %rdx                # 8-byte Reload
	movq	(%rdx,%rcx,8), %rcx
	movl	-36(%rbp), %edi
	movq	%rcx, -160(%rbp)                # 8-byte Spill
	callq	_ZN5piece9get_queenEi
	movslq	%eax, %rcx
	movq	-160(%rbp), %rdx                # 8-byte Reload
	movq	-144(%rbp), %rsi                # 8-byte Reload
	orq	(%rsi,%rcx,8), %rdx
	movq	-152(%rbp), %rcx                # 8-byte Reload
	andq	%rdx, %rcx
	movq	%rcx, -112(%rbp)
	movq	-104(%rbp), %rcx
	movl	-36(%rbp), %edi
	movq	%rcx, -168(%rbp)                # 8-byte Spill
	callq	_ZN5piece10get_bishopEi
	movslq	%eax, %rcx
	movq	-144(%rbp), %rdx                # 8-byte Reload
	movq	(%rdx,%rcx,8), %rcx
	movl	-36(%rbp), %edi
	movq	%rcx, -176(%rbp)                # 8-byte Spill
	callq	_ZN5piece9get_queenEi
	movslq	%eax, %rcx
	movq	-176(%rbp), %rdx                # 8-byte Reload
	movq	-144(%rbp), %rsi                # 8-byte Reload
	orq	(%rsi,%rcx,8), %rdx
	movq	-168(%rbp), %rcx                # 8-byte Reload
	andq	%rdx, %rcx
	movq	%rcx, -120(%rbp)
	movl	-40(%rbp), %edi
	callq	_ZN5piece8get_kingEi
	movslq	%eax, %rcx
	movq	-144(%rbp), %rdx                # 8-byte Reload
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -128(%rbp)
	movq	-104(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movq	-112(%rbp), %rdx
	movq	-120(%rbp), %rcx
	callq	_ZN9move_maps17isAttackedSlidingEmmmm@PLT
	testb	$1, %al
	jne	.LBB29_11
	jmp	.LBB29_12
.LBB29_11:
	movb	$1, -17(%rbp)
	jmp	.LBB29_23
.LBB29_12:
	leaq	-16(%rbp), %rdi
	callq	_ZNK5CMove12is_promotionEv
	testb	$1, %al
	jne	.LBB29_13
	jmp	.LBB29_14
.LBB29_13:
	movl	-36(%rbp), %esi
	leaq	-16(%rbp), %rdi
	callq	_ZNK5CMove15promoting_pieceEi
	movl	%eax, -96(%rbp)
.LBB29_14:
	movq	-88(%rbp), %rdi
	callq	_Z11u64ToSquarem
	movl	%eax, -132(%rbp)
	movl	-96(%rbp), %edi
	callq	_ZN5piece12to_colorlessEi
	movl	%eax, %ecx
	movl	%ecx, %edx
	subl	$4, %eax
	movq	%rdx, -184(%rbp)                # 8-byte Spill
	ja	.LBB29_22
# %bb.26:
	leaq	.LJTI29_0(%rip), %rax
	movq	-184(%rbp), %rcx                # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB29_15:
	movl	-132(%rbp), %edi
	movl	-36(%rbp), %esi
	callq	_ZN9move_maps12pawnCapturesEii@PLT
	movq	-128(%rbp), %rcx
	andq	%rcx, %rax
	negq	%rax
	sbbl	%edx, %edx
                                        # kill: def $dl killed $dl killed $edx
	andb	$1, %dl
	movb	%dl, -17(%rbp)
	jmp	.LBB29_23
.LBB29_16:
	movl	-132(%rbp), %edi
	callq	_ZN9move_maps11knightMovesEi@PLT
	movq	-128(%rbp), %rcx
	andq	%rcx, %rax
	negq	%rax
	sbbl	%edx, %edx
                                        # kill: def $dl killed $dl killed $edx
	andb	$1, %dl
	movb	%dl, -17(%rbp)
	jmp	.LBB29_23
.LBB29_17:
	movl	-132(%rbp), %edi
	movq	-104(%rbp), %rsi
	callq	_ZN9move_maps11bishopMovesEim@PLT
	movq	-128(%rbp), %rcx
	andq	%rcx, %rax
	negq	%rax
	sbbl	%edx, %edx
                                        # kill: def $dl killed $dl killed $edx
	andb	$1, %dl
	movb	%dl, -17(%rbp)
	jmp	.LBB29_23
.LBB29_18:
	movl	-132(%rbp), %edi
	movq	-104(%rbp), %rsi
	callq	_ZN9move_maps9rookMovesEim@PLT
	movq	-128(%rbp), %rcx
	andq	%rcx, %rax
	negq	%rax
	sbbl	%edx, %edx
                                        # kill: def $dl killed $dl killed $edx
	andb	$1, %dl
	movb	%dl, -17(%rbp)
	jmp	.LBB29_23
.LBB29_19:
	movl	-132(%rbp), %edi
	movq	-104(%rbp), %rsi
	callq	_ZN9move_maps11bishopMovesEim@PLT
	andq	-128(%rbp), %rax
	cmpq	$0, %rax
	movb	$1, %cl
	movb	%cl, -185(%rbp)                 # 1-byte Spill
	jne	.LBB29_21
# %bb.20:
	movl	-132(%rbp), %edi
	movq	-104(%rbp), %rsi
	callq	_ZN9move_maps9rookMovesEim@PLT
	andq	-128(%rbp), %rax
	cmpq	$0, %rax
	setne	%cl
	movb	%cl, -185(%rbp)                 # 1-byte Spill
.LBB29_21:
	movb	-185(%rbp), %al                 # 1-byte Reload
	andb	$1, %al
	negb	%al
	andb	$1, %al
	movb	%al, -17(%rbp)
	jmp	.LBB29_23
.LBB29_22:
	movb	$0, -17(%rbp)
.LBB29_23:
	movb	-17(%rbp), %al
	movq	%fs:40, %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movb	%al, -186(%rbp)                 # 1-byte Spill
	jne	.LBB29_25
# %bb.24:
	movb	-186(%rbp), %al                 # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$192, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB29_25:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end29:
	.size	_ZN5Board16is_checking_moveE5CMove, .Lfunc_end29-_ZN5Board16is_checking_moveE5CMove
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI29_0:
	.long	.LBB29_15-.LJTI29_0
	.long	.LBB29_16-.LJTI29_0
	.long	.LBB29_17-.LJTI29_0
	.long	.LBB29_18-.LJTI29_0
	.long	.LBB29_19-.LJTI29_0
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
	jle	.LBB30_2
# %bb.1:
	movl	-12(%rbp), %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	cmpl	$0, %edx
	sete	%sil
	movb	%sil, -13(%rbp)                 # 1-byte Spill
.LBB30_2:
	movb	-13(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end30:
	.size	_ZNK5CMove12is_promotionEv, .Lfunc_end30-_ZNK5CMove12is_promotionEv
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
	jne	.LBB31_2
# %bb.1:
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNK5CMove9type_codeEv
	cmpl	$0, %eax
	setg	%cl
	movb	%cl, -25(%rbp)                  # 1-byte Spill
.LBB31_2:
	movb	-25(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB31_3
	jmp	.LBB31_4
.LBB31_3:
	jmp	.LBB31_5
.LBB31_4:
	leaq	.L.str.11(%rip), %rdi
	leaq	.L.str.9(%rip), %rsi
	movl	$43, %edx
	leaq	.L__PRETTY_FUNCTION__._ZNK5CMove15promoting_pieceEi(%rip), %rcx
	callq	__assert_fail@PLT
.LBB31_5:
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNK5CMove9type_codeEv
	addl	-12(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end31:
	.size	_ZNK5CMove15promoting_pieceEi, .Lfunc_end31-_ZNK5CMove15promoting_pieceEi
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
.Lfunc_end32:
	.size	_ZN5piece12to_colorlessEi, .Lfunc_end32-_ZN5piece12to_colorlessEi
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
	jne	.LBB33_1
	jmp	.LBB33_2
.LBB33_1:
	jmp	.LBB33_3
.LBB33_2:
	leaq	.L.str.12(%rip), %rdi
	leaq	.L.str.7(%rip), %rsi
	movl	$121, %edx
	leaq	.L__PRETTY_FUNCTION__._Z13u64FromSquarei(%rip), %rcx
	callq	__assert_fail@PLT
.LBB33_3:
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
.Lfunc_end33:
	.size	_Z13u64FromSquarei, .Lfunc_end33-_Z13u64FromSquarei
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
.Lfunc_end34:
	.size	_Z14bitscanForwardm, .Lfunc_end34-_Z14bitscanForwardm
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
	jl	.LBB35_2
# %bb.1:
	cmpl	$64, -4(%rbp)
	setl	%al
	movb	%al, -5(%rbp)                   # 1-byte Spill
.LBB35_2:
	movb	-5(%rbp), %al                   # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end35:
	.size	_Z13isValidSquarei, .Lfunc_end35-_Z13isValidSquarei
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN5CMoveC2Ev,"axG",@progbits,_ZN5CMoveC2Ev,comdat
	.weak	_ZN5CMoveC2Ev                   # -- Begin function _ZN5CMoveC2Ev
	.p2align	4, 0x90
	.type	_ZN5CMoveC2Ev,@function
_ZN5CMoveC2Ev:                          # @_ZN5CMoveC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movw	$0, (%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end36:
	.size	_ZN5CMoveC2Ev, .Lfunc_end36-_ZN5CMoveC2Ev
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
.Lfunc_end37:
	.size	_ZNSt14__array_traitsImLm64EE6_S_refERA64_Kmm, .Lfunc_end37-_ZNSt14__array_traitsImLm64EE6_S_refERA64_Kmm
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_move_generation.cpp
	.type	_GLOBAL__sub_I_move_generation.cpp,@function
_GLOBAL__sub_I_move_generation.cpp:     # @_GLOBAL__sub_I_move_generation.cpp
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
.Lfunc_end38:
	.size	_GLOBAL__sub_I_move_generation.cpp, .Lfunc_end38-_GLOBAL__sub_I_move_generation.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"is_check()"
	.size	.L.str, 11

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"src/chess/move_generation.cpp"
	.size	.L.str.1, 30

	.type	.L__PRETTY_FUNCTION__._ZN5Board22produce_uncheck_moves_Ev,@object # @__PRETTY_FUNCTION__._ZN5Board22produce_uncheck_moves_Ev
.L__PRETTY_FUNCTION__._ZN5Board22produce_uncheck_moves_Ev:
	.asciz	"MoveList<256> Board::produce_uncheck_moves_()"
	.size	.L__PRETTY_FUNCTION__._ZN5Board22produce_uncheck_moves_Ev, 46

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"!is_check()"
	.size	.L.str.2, 12

	.type	.L__PRETTY_FUNCTION__._ZN5Board14capture_moves_Ev,@object # @__PRETTY_FUNCTION__._ZN5Board14capture_moves_Ev
.L__PRETTY_FUNCTION__._ZN5Board14capture_moves_Ev:
	.asciz	"MoveList<256> Board::capture_moves_()"
	.size	.L__PRETTY_FUNCTION__._ZN5Board14capture_moves_Ev, 38

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"maps_generated_"
	.size	.L.str.3, 16

	.type	.L__PRETTY_FUNCTION__._ZN5Board19verify_move_safety_E5CMove,@object # @__PRETTY_FUNCTION__._ZN5Board19verify_move_safety_E5CMove
.L__PRETTY_FUNCTION__._ZN5Board19verify_move_safety_E5CMove:
	.asciz	"bool Board::verify_move_safety_(CMove)"
	.size	.L__PRETTY_FUNCTION__._ZN5Board19verify_move_safety_E5CMove, 39

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"colorOf(mover) == curr_turn"
	.size	.L.str.4, 28

	.type	.L__PRETTY_FUNCTION__._ZN5Board16is_checking_moveE5CMove,@object # @__PRETTY_FUNCTION__._ZN5Board16is_checking_moveE5CMove
.L__PRETTY_FUNCTION__._ZN5Board16is_checking_moveE5CMove:
	.asciz	"bool Board::is_checking_move(CMove)"
	.size	.L__PRETTY_FUNCTION__._ZN5Board16is_checking_moveE5CMove, 36

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"!maps_generated_"
	.size	.L.str.5, 17

	.type	.L__PRETTY_FUNCTION__._ZN5Board20GeneratePseudoLegal_Ev,@object # @__PRETTY_FUNCTION__._ZN5Board20GeneratePseudoLegal_Ev
.L__PRETTY_FUNCTION__._ZN5Board20GeneratePseudoLegal_Ev:
	.asciz	"void Board::GeneratePseudoLegal_()"
	.size	.L__PRETTY_FUNCTION__._ZN5Board20GeneratePseudoLegal_Ev, 35

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"x != 0"
	.size	.L.str.6, 7

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"include/misc/bits.hpp"
	.size	.L.str.7, 22

	.type	.L__PRETTY_FUNCTION__._Z11u64ToSquarem,@object # @__PRETTY_FUNCTION__._Z11u64ToSquarem
.L__PRETTY_FUNCTION__._Z11u64ToSquarem:
	.asciz	"int u64ToSquare(uint64_t)"
	.size	.L__PRETTY_FUNCTION__._Z11u64ToSquarem, 26

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"isValidSquare(src_)"
	.size	.L.str.8, 20

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"include/game/cmove.hpp"
	.size	.L.str.9, 23

	.type	.L__PRETTY_FUNCTION__._ZN5CMoveC2Eiii,@object # @__PRETTY_FUNCTION__._ZN5CMoveC2Eiii
.L__PRETTY_FUNCTION__._ZN5CMoveC2Eiii:
	.asciz	"CMove::CMove(int, int, int)"
	.size	.L__PRETTY_FUNCTION__._ZN5CMoveC2Eiii, 28

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"isValidSquare(dest_)"
	.size	.L.str.10, 21

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"type_code() % 2 == 0 && type_code() > 0"
	.size	.L.str.11, 40

	.type	.L__PRETTY_FUNCTION__._ZNK5CMove15promoting_pieceEi,@object # @__PRETTY_FUNCTION__._ZNK5CMove15promoting_pieceEi
.L__PRETTY_FUNCTION__._ZNK5CMove15promoting_pieceEi:
	.asciz	"int CMove::promoting_piece(int) const"
	.size	.L__PRETTY_FUNCTION__._ZNK5CMove15promoting_pieceEi, 38

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"isValidSquare(s)"
	.size	.L.str.12, 17

	.type	.L__PRETTY_FUNCTION__._Z13u64FromSquarei,@object # @__PRETTY_FUNCTION__._Z13u64FromSquarei
.L__PRETTY_FUNCTION__._Z13u64FromSquarei:
	.asciz	"uint64_t u64FromSquare(int)"
	.size	.L__PRETTY_FUNCTION__._Z13u64FromSquarei, 28

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_move_generation.cpp
	.ident	"clang version 11.0.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __cxx_global_var_init
	.addrsig_sym __cxa_atexit
	.addrsig_sym _ZN5Board22produce_uncheck_moves_Ev
	.addrsig_sym _ZN5Board20GeneratePseudoLegal_Ev
	.addrsig_sym _ZNK5Board8is_checkEv
	.addrsig_sym __assert_fail
	.addrsig_sym _ZN5Board14capture_moves_Ev
	.addrsig_sym _ZNK5Board4turnEv
	.addrsig_sym _ZNK5Board9occupancyEv
	.addrsig_sym _ZNK8MoveListILi256EE4sizeEv
	.addrsig_sym _ZN8MoveListILi256EE8PushBackE5CMove
	.addrsig_sym _ZNK8MoveListILi256EEixEi
	.addrsig_sym _Z10bitscanAllmR7u64List
	.addrsig_sym _ZNK7u64List3lenEv
	.addrsig_sym _Z11u64ToSquarem
	.addrsig_sym _ZNK7u64ListixEi
	.addrsig_sym _ZN5piece7is_pawnEi
	.addrsig_sym _ZN9move_maps9pawnMovesEii
	.addrsig_sym _ZN9move_maps14isStartingRankEii
	.addrsig_sym _ZN9move_maps15pawnDoubleMovesEii
	.addrsig_sym _ZNSt5arrayImLm64EEixEm
	.addrsig_sym abs
	.addrsig_sym _Z11squareToRowi
	.addrsig_sym _ZN5Board19verify_move_safety_E5CMove
	.addrsig_sym _ZN9move_maps15isPromotingRankEii
	.addrsig_sym _ZNK5Board9occupancyEi
	.addrsig_sym _Z13oppositeColori
	.addrsig_sym _ZNK5CMove3srcEv
	.addrsig_sym _ZNK5CMove4destEv
	.addrsig_sym _ZNK5CMove9is_castleEv
	.addrsig_sym _ZNK5CMove9type_codeEv
	.addrsig_sym _ZN5piece9get_queenEi
	.addrsig_sym _ZN9move_maps17isAttackedSlidingEmmmm
	.addrsig_sym _ZN5piece8get_kingEi
	.addrsig_sym _ZN5piece8get_rookEi
	.addrsig_sym _ZN5piece10get_bishopEi
	.addrsig_sym _ZNK5Board9piece_at_Em
	.addrsig_sym _Z7colorOfi
	.addrsig_sym _ZN5piece7is_kingEi
	.addrsig_sym _ZNK5CMove12is_promotionEv
	.addrsig_sym _ZNK5CMove15promoting_pieceEi
	.addrsig_sym _ZN5piece12to_colorlessEi
	.addrsig_sym _ZN9move_maps12pawnCapturesEii
	.addrsig_sym _ZN9move_maps11knightMovesEi
	.addrsig_sym _ZN9move_maps11bishopMovesEim
	.addrsig_sym _ZN9move_maps9rookMovesEim
	.addrsig_sym _ZN9move_maps9kingMovesEi
	.addrsig_sym _Z13u64FromSquarei
	.addrsig_sym _Z14bitscanForwardm
	.addrsig_sym _Z13isValidSquarei
	.addrsig_sym _Z6dump32i
	.addrsig_sym _ZNSt14__array_traitsImLm64EE6_S_refERA64_Kmm
	.addrsig_sym _GLOBAL__sub_I_move_generation.cpp
	.addrsig_sym __stack_chk_fail
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
