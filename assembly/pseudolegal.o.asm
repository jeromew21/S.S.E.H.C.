	.text
	.file	"pseudolegal.cpp"
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
	movb	1220(%rax), %cl
	xorb	$-1, %cl
	testb	$1, %cl
	movq	%rax, -704(%rbp)                # 8-byte Spill
	jne	.LBB1_1
	jmp	.LBB1_2
.LBB1_1:
	jmp	.LBB1_3
.LBB1_2:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$13, %edx
	leaq	.L__PRETTY_FUNCTION__._ZN5Board20GeneratePseudoLegal_Ev(%rip), %rcx
	callq	__assert_fail@PLT
.LBB1_3:
	movl	$0, -540(%rbp)
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
	cmpl	$64, -540(%rbp)
	jge	.LBB1_7
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=1
	movq	-704(%rbp), %rax                # 8-byte Reload
	addq	$96, %rax
	addq	$64, %rax
	movslq	-540(%rbp), %rsi
	movq	%rax, %rdi
	callq	_ZNSt5arrayImLm64EEixEm
	movq	$0, (%rax)
	movq	-704(%rbp), %rax                # 8-byte Reload
	addq	$96, %rax
	addq	$576, %rax                      # imm = 0x240
	movslq	-540(%rbp), %rsi
	movq	%rax, %rdi
	callq	_ZNSt5arrayImLm64EEixEm
	movq	$0, (%rax)
# %bb.6:                                #   in Loop: Header=BB1_4 Depth=1
	movl	-540(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -540(%rbp)
	jmp	.LBB1_4
.LBB1_7:
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
.LBB1_8:                                # =>This Inner Loop Header: Depth=1
	movl	-556(%rbp), %eax
	leaq	-528(%rbp), %rdi
	movl	%eax, -708(%rbp)                # 4-byte Spill
	callq	_ZNK7u64List3lenEv
	movl	-708(%rbp), %ecx                # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB1_11
# %bb.9:                                #   in Loop: Header=BB1_8 Depth=1
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
	addq	$96, %rcx
	addq	$64, %rcx
	movslq	-560(%rbp), %rsi
	movq	%rcx, %rdi
	movq	%rax, -720(%rbp)                # 8-byte Spill
	callq	_ZNSt5arrayImLm64EEixEm
	movq	-720(%rbp), %rcx                # 8-byte Reload
	orq	(%rax), %rcx
	movq	%rcx, (%rax)
# %bb.10:                               #   in Loop: Header=BB1_8 Depth=1
	movl	-556(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -556(%rbp)
	jmp	.LBB1_8
.LBB1_11:
	movq	-704(%rbp), %rax                # 8-byte Reload
	movq	8(%rax), %rdi
	leaq	-528(%rbp), %rsi
	callq	_Z10bitscanAllmR7u64List@PLT
	movl	$0, -572(%rbp)
.LBB1_12:                               # =>This Inner Loop Header: Depth=1
	movl	-572(%rbp), %eax
	leaq	-528(%rbp), %rdi
	movl	%eax, -724(%rbp)                # 4-byte Spill
	callq	_ZNK7u64List3lenEv
	movl	-724(%rbp), %ecx                # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB1_15
# %bb.13:                               #   in Loop: Header=BB1_12 Depth=1
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
	addq	$96, %rcx
	addq	$64, %rcx
	movslq	-576(%rbp), %rsi
	movq	%rcx, %rdi
	movq	%rax, -736(%rbp)                # 8-byte Spill
	callq	_ZNSt5arrayImLm64EEixEm
	movq	-736(%rbp), %rcx                # 8-byte Reload
	orq	(%rax), %rcx
	movq	%rcx, (%rax)
# %bb.14:                               #   in Loop: Header=BB1_12 Depth=1
	movl	-572(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -572(%rbp)
	jmp	.LBB1_12
.LBB1_15:
	movq	-704(%rbp), %rax                # 8-byte Reload
	movq	16(%rax), %rcx
	orq	24(%rax), %rcx
	movq	%rcx, %rdi
	leaq	-528(%rbp), %rsi
	callq	_Z10bitscanAllmR7u64List@PLT
	movl	$0, -588(%rbp)
.LBB1_16:                               # =>This Inner Loop Header: Depth=1
	movl	-588(%rbp), %eax
	leaq	-528(%rbp), %rdi
	movl	%eax, -740(%rbp)                # 4-byte Spill
	callq	_ZNK7u64List3lenEv
	movl	-740(%rbp), %ecx                # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB1_19
# %bb.17:                               #   in Loop: Header=BB1_16 Depth=1
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
	addq	$96, %rcx
	addq	$64, %rcx
	movslq	-592(%rbp), %rsi
	movq	%rcx, %rdi
	movq	%rax, -752(%rbp)                # 8-byte Spill
	callq	_ZNSt5arrayImLm64EEixEm
	movq	-752(%rbp), %rcx                # 8-byte Reload
	orq	(%rax), %rcx
	movq	%rcx, (%rax)
# %bb.18:                               #   in Loop: Header=BB1_16 Depth=1
	movl	-588(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -588(%rbp)
	jmp	.LBB1_16
.LBB1_19:
	movq	-704(%rbp), %rax                # 8-byte Reload
	movq	80(%rax), %rcx
	orq	88(%rax), %rcx
	movq	%rcx, %rdi
	leaq	-528(%rbp), %rsi
	callq	_Z10bitscanAllmR7u64List@PLT
	movl	$0, -604(%rbp)
.LBB1_20:                               # =>This Inner Loop Header: Depth=1
	movl	-604(%rbp), %eax
	leaq	-528(%rbp), %rdi
	movl	%eax, -756(%rbp)                # 4-byte Spill
	callq	_ZNK7u64List3lenEv
	movl	-756(%rbp), %ecx                # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB1_23
# %bb.21:                               #   in Loop: Header=BB1_20 Depth=1
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
	addq	$96, %rcx
	addq	$64, %rcx
	movslq	-608(%rbp), %rsi
	movq	%rcx, %rdi
	movq	%rax, -768(%rbp)                # 8-byte Spill
	callq	_ZNSt5arrayImLm64EEixEm
	movq	-768(%rbp), %rcx                # 8-byte Reload
	orq	(%rax), %rcx
	movq	%rcx, (%rax)
# %bb.22:                               #   in Loop: Header=BB1_20 Depth=1
	movl	-604(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -604(%rbp)
	jmp	.LBB1_20
.LBB1_23:
	movq	-704(%rbp), %rax                # 8-byte Reload
	movq	32(%rax), %rcx
	orq	40(%rax), %rcx
	orq	64(%rax), %rcx
	orq	72(%rax), %rcx
	movq	%rcx, %rdi
	leaq	-528(%rbp), %rsi
	callq	_Z10bitscanAllmR7u64List@PLT
	movl	$0, -620(%rbp)
.LBB1_24:                               # =>This Inner Loop Header: Depth=1
	movl	-620(%rbp), %eax
	leaq	-528(%rbp), %rdi
	movl	%eax, -772(%rbp)                # 4-byte Spill
	callq	_ZNK7u64List3lenEv
	movl	-772(%rbp), %ecx                # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB1_27
# %bb.25:                               #   in Loop: Header=BB1_24 Depth=1
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
	addq	$96, %rcx
	addq	$64, %rcx
	movslq	-624(%rbp), %rsi
	movq	%rcx, %rdi
	movq	%rax, -784(%rbp)                # 8-byte Spill
	callq	_ZNSt5arrayImLm64EEixEm
	movq	-784(%rbp), %rcx                # 8-byte Reload
	orq	(%rax), %rcx
	movq	%rcx, (%rax)
# %bb.26:                               #   in Loop: Header=BB1_24 Depth=1
	movl	-620(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -620(%rbp)
	jmp	.LBB1_24
.LBB1_27:
	movq	-704(%rbp), %rax                # 8-byte Reload
	movq	48(%rax), %rcx
	orq	56(%rax), %rcx
	orq	64(%rax), %rcx
	orq	72(%rax), %rcx
	movq	%rcx, %rdi
	leaq	-528(%rbp), %rsi
	callq	_Z10bitscanAllmR7u64List@PLT
	movl	$0, -636(%rbp)
.LBB1_28:                               # =>This Inner Loop Header: Depth=1
	movl	-636(%rbp), %eax
	leaq	-528(%rbp), %rdi
	movl	%eax, -788(%rbp)                # 4-byte Spill
	callq	_ZNK7u64List3lenEv
	movl	-788(%rbp), %ecx                # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB1_31
# %bb.29:                               #   in Loop: Header=BB1_28 Depth=1
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
	addq	$96, %rcx
	addq	$64, %rcx
	movslq	-640(%rbp), %rsi
	movq	%rcx, %rdi
	movq	%rax, -800(%rbp)                # 8-byte Spill
	callq	_ZNSt5arrayImLm64EEixEm
	movq	-800(%rbp), %rcx                # 8-byte Reload
	orq	(%rax), %rcx
	movq	%rcx, (%rax)
# %bb.30:                               #   in Loop: Header=BB1_28 Depth=1
	movl	-636(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -636(%rbp)
	jmp	.LBB1_28
.LBB1_31:
	movl	$0, -652(%rbp)
.LBB1_32:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_34 Depth 2
	cmpl	$64, -652(%rbp)
	jge	.LBB1_39
# %bb.33:                               #   in Loop: Header=BB1_32 Depth=1
	movl	-652(%rbp), %edi
	callq	_Z13u64FromSquarei
	movq	%rax, -664(%rbp)
	movq	-704(%rbp), %rax                # 8-byte Reload
	addq	$96, %rax
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
.LBB1_34:                               #   Parent Loop BB1_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-676(%rbp), %eax
	leaq	-528(%rbp), %rdi
	movl	%eax, -804(%rbp)                # 4-byte Spill
	callq	_ZNK7u64List3lenEv
	movl	-804(%rbp), %ecx                # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB1_37
# %bb.35:                               #   in Loop: Header=BB1_34 Depth=2
	movl	-676(%rbp), %esi
	leaq	-528(%rbp), %rdi
	callq	_ZNK7u64ListixEi
	movq	%rax, -688(%rbp)
	movq	-688(%rbp), %rdi
	callq	_Z11u64ToSquarem
	movl	%eax, -692(%rbp)
	movq	-664(%rbp), %rcx
	movq	-704(%rbp), %rdx                # 8-byte Reload
	addq	$96, %rdx
	addq	$576, %rdx                      # imm = 0x240
	movslq	-692(%rbp), %rsi
	movq	%rdx, %rdi
	movq	%rcx, -816(%rbp)                # 8-byte Spill
	callq	_ZNSt5arrayImLm64EEixEm
	movq	-816(%rbp), %rcx                # 8-byte Reload
	orq	(%rax), %rcx
	movq	%rcx, (%rax)
# %bb.36:                               #   in Loop: Header=BB1_34 Depth=2
	movl	-676(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -676(%rbp)
	jmp	.LBB1_34
.LBB1_37:                               #   in Loop: Header=BB1_32 Depth=1
	jmp	.LBB1_38
.LBB1_38:                               #   in Loop: Header=BB1_32 Depth=1
	movl	-652(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -652(%rbp)
	jmp	.LBB1_32
.LBB1_39:
	movq	-704(%rbp), %rax                # 8-byte Reload
	movb	$1, 1220(%rax)
	movq	%fs:40, %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	jne	.LBB1_41
# %bb.40:
	addq	$816, %rsp                      # imm = 0x330
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_41:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end1:
	.size	_ZN5Board20GeneratePseudoLegal_Ev, .Lfunc_end1-_ZN5Board20GeneratePseudoLegal_Ev
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
.Lfunc_end2:
	.size	_ZNSt5arrayImLm64EEixEm, .Lfunc_end2-_ZNSt5arrayImLm64EEixEm
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
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$64, -12(%rbp)
	jge	.LBB3_4
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	movslq	-12(%rbp), %rax
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	movq	$0, (%rcx,%rax,8)
# %bb.3:                                #   in Loop: Header=BB3_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB3_1
.LBB3_4:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	_ZN7u64ListC2Ev, .Lfunc_end3-_ZN7u64ListC2Ev
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
.Lfunc_end4:
	.size	_ZNK7u64List3lenEv, .Lfunc_end4-_ZNK7u64List3lenEv
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
	je	.LBB5_2
# %bb.1:
	jmp	.LBB5_3
.LBB5_2:
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.3(%rip), %rsi
	movl	$130, %edx
	leaq	.L__PRETTY_FUNCTION__._Z11u64ToSquarem(%rip), %rcx
	callq	__assert_fail@PLT
.LBB5_3:
	movq	-8(%rbp), %rdi
	callq	_Z14bitscanForwardm
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	_Z11u64ToSquarem, .Lfunc_end5-_Z11u64ToSquarem
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
.Lfunc_end6:
	.size	_ZNK7u64ListixEi, .Lfunc_end6-_ZNK7u64ListixEi
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
	jne	.LBB7_1
	jmp	.LBB7_2
.LBB7_1:
	jmp	.LBB7_3
.LBB7_2:
	leaq	.L.str.4(%rip), %rdi
	leaq	.L.str.3(%rip), %rsi
	movl	$121, %edx
	leaq	.L__PRETTY_FUNCTION__._Z13u64FromSquarei(%rip), %rcx
	callq	__assert_fail@PLT
.LBB7_3:
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
.Lfunc_end7:
	.size	_Z13u64FromSquarei, .Lfunc_end7-_Z13u64FromSquarei
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
	jl	.LBB9_2
# %bb.1:
	cmpl	$64, -4(%rbp)
	setl	%al
	movb	%al, -5(%rbp)                   # 1-byte Spill
.LBB9_2:
	movb	-5(%rbp), %al                   # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end9:
	.size	_Z13isValidSquarei, .Lfunc_end9-_Z13isValidSquarei
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
.Lfunc_end10:
	.size	_ZNSt14__array_traitsImLm64EE6_S_refERA64_Kmm, .Lfunc_end10-_ZNSt14__array_traitsImLm64EE6_S_refERA64_Kmm
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_pseudolegal.cpp
	.type	_GLOBAL__sub_I_pseudolegal.cpp,@function
_GLOBAL__sub_I_pseudolegal.cpp:         # @_GLOBAL__sub_I_pseudolegal.cpp
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
.Lfunc_end11:
	.size	_GLOBAL__sub_I_pseudolegal.cpp, .Lfunc_end11-_GLOBAL__sub_I_pseudolegal.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"!maps_generated_"
	.size	.L.str, 17

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"src/chess/pseudolegal.cpp"
	.size	.L.str.1, 26

	.type	.L__PRETTY_FUNCTION__._ZN5Board20GeneratePseudoLegal_Ev,@object # @__PRETTY_FUNCTION__._ZN5Board20GeneratePseudoLegal_Ev
.L__PRETTY_FUNCTION__._ZN5Board20GeneratePseudoLegal_Ev:
	.asciz	"void Board::GeneratePseudoLegal_()"
	.size	.L__PRETTY_FUNCTION__._ZN5Board20GeneratePseudoLegal_Ev, 35

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"x != 0"
	.size	.L.str.2, 7

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"include/misc/bits.hpp"
	.size	.L.str.3, 22

	.type	.L__PRETTY_FUNCTION__._Z11u64ToSquarem,@object # @__PRETTY_FUNCTION__._Z11u64ToSquarem
.L__PRETTY_FUNCTION__._Z11u64ToSquarem:
	.asciz	"int u64ToSquare(uint64_t)"
	.size	.L__PRETTY_FUNCTION__._Z11u64ToSquarem, 26

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"isValidSquare(s)"
	.size	.L.str.4, 17

	.type	.L__PRETTY_FUNCTION__._Z13u64FromSquarei,@object # @__PRETTY_FUNCTION__._Z13u64FromSquarei
.L__PRETTY_FUNCTION__._Z13u64FromSquarei:
	.asciz	"uint64_t u64FromSquare(int)"
	.size	.L__PRETTY_FUNCTION__._Z13u64FromSquarei, 28

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_pseudolegal.cpp
	.ident	"clang version 11.0.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __cxx_global_var_init
	.addrsig_sym __cxa_atexit
	.addrsig_sym __assert_fail
	.addrsig_sym _ZNSt5arrayImLm64EEixEm
	.addrsig_sym _ZNK5Board9occupancyEv
	.addrsig_sym _Z10bitscanAllmR7u64List
	.addrsig_sym _ZNK7u64List3lenEv
	.addrsig_sym _Z11u64ToSquarem
	.addrsig_sym _ZNK7u64ListixEi
	.addrsig_sym _ZN9move_maps12pawnCapturesEii
	.addrsig_sym _ZN9move_maps11knightMovesEi
	.addrsig_sym _ZN9move_maps9kingMovesEi
	.addrsig_sym _ZN9move_maps11bishopMovesEim
	.addrsig_sym _ZN9move_maps9rookMovesEim
	.addrsig_sym _Z13u64FromSquarei
	.addrsig_sym _Z14bitscanForwardm
	.addrsig_sym _Z13isValidSquarei
	.addrsig_sym _ZNSt14__array_traitsImLm64EE6_S_refERA64_Kmm
	.addrsig_sym _GLOBAL__sub_I_pseudolegal.cpp
	.addrsig_sym __stack_chk_fail
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
