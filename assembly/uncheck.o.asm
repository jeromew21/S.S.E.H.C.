	.text
	.file	"uncheck.cpp"
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
	subq	$3232, %rsp                     # imm = 0xCA0
	movq	%rdi, %rax
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	movq	%rsi, -2760(%rbp)
	movq	-2760(%rbp), %rcx
	testb	$1, 1220(%rcx)
	movq	%rdi, -3104(%rbp)               # 8-byte Spill
	movq	%rax, -3112(%rbp)               # 8-byte Spill
	movq	%rcx, -3120(%rbp)               # 8-byte Spill
	je	.LBB1_2
# %bb.1:
	jmp	.LBB1_3
.LBB1_2:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$11, %edx
	leaq	.L__PRETTY_FUNCTION__._ZN5Board22produce_uncheck_moves_Ev(%rip), %rcx
	callq	__assert_fail@PLT
.LBB1_3:
	movq	-3120(%rbp), %rdi               # 8-byte Reload
	callq	_ZNK5Board8is_checkEv@PLT
	testb	$1, %al
	jne	.LBB1_4
	jmp	.LBB1_5
.LBB1_4:
	jmp	.LBB1_6
.LBB1_5:
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$12, %edx
	leaq	.L__PRETTY_FUNCTION__._ZN5Board22produce_uncheck_moves_Ev(%rip), %rcx
	callq	__assert_fail@PLT
.LBB1_6:
	movq	-3104(%rbp), %rdi               # 8-byte Reload
	callq	_ZN8MoveListILi256EEC2Ev
	movq	-3120(%rbp), %rdi               # 8-byte Reload
	callq	_ZNK5Board4turnEv@PLT
	movl	%eax, -2764(%rbp)
	movl	-2764(%rbp), %edi
	callq	_Z13oppositeColori
	movl	%eax, -2768(%rbp)
	movl	-2764(%rbp), %edi
	callq	_ZN5piece8get_kingEi
	movslq	%eax, %rcx
	movq	-3120(%rbp), %rdx               # 8-byte Reload
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -2776(%rbp)
	movq	-2776(%rbp), %rdi
	callq	_Z11u64ToSquarem
	movslq	%eax, %rcx
	movq	%rcx, -2784(%rbp)
	movq	-2776(%rbp), %rsi
	movl	-2768(%rbp), %edx
	movq	-3120(%rbp), %rdi               # 8-byte Reload
	callq	_ZN5Board13attackers_to_Emi@PLT
	movq	%rax, -2792(%rbp)
	movq	-2792(%rbp), %rdi
	callq	_Z4haddm@PLT
	movl	%eax, -2796(%rbp)
	movl	-2764(%rbp), %esi
	movq	-3120(%rbp), %rdi               # 8-byte Reload
	callq	_ZNK5Board9occupancyEi@PLT
	movq	%rax, -2808(%rbp)
	movl	-2768(%rbp), %esi
	movq	-3120(%rbp), %rdi               # 8-byte Reload
	callq	_ZNK5Board9occupancyEi@PLT
	movq	%rax, -2816(%rbp)
	movq	-2808(%rbp), %rax
	orq	-2816(%rbp), %rax
	movq	%rax, -2824(%rbp)
	movl	-2768(%rbp), %edi
	callq	_ZN5piece8get_rookEi
	movslq	%eax, %rcx
	movq	-3120(%rbp), %r8                # 8-byte Reload
	movq	(%r8,%rcx,8), %rcx
	movl	-2768(%rbp), %edi
	movq	%rcx, -3128(%rbp)               # 8-byte Spill
	callq	_ZN5piece9get_queenEi
	movslq	%eax, %rcx
	movq	-3128(%rbp), %r8                # 8-byte Reload
	movq	-3120(%rbp), %r9                # 8-byte Reload
	orq	(%r9,%rcx,8), %r8
	movq	%r8, -2832(%rbp)
	movl	-2768(%rbp), %edi
	callq	_ZN5piece10get_bishopEi
	movslq	%eax, %rcx
	movq	-3120(%rbp), %r8                # 8-byte Reload
	movq	(%r8,%rcx,8), %rcx
	movl	-2768(%rbp), %edi
	movq	%rcx, -3136(%rbp)               # 8-byte Spill
	callq	_ZN5piece9get_queenEi
	movslq	%eax, %rcx
	movq	-3136(%rbp), %r8                # 8-byte Reload
	movq	-3120(%rbp), %r9                # 8-byte Reload
	orq	(%r9,%rcx,8), %r8
	movq	%r8, -2840(%rbp)
	cmpl	$1, -2796(%rbp)
	jne	.LBB1_91
# %bb.7:
	movq	-2792(%rbp), %rax
	movq	%rax, -2848(%rbp)
	movq	-2848(%rbp), %rsi
	movq	-3120(%rbp), %rdi               # 8-byte Reload
	callq	_ZNK5Board9piece_at_Em@PLT
	movl	%eax, -2852(%rbp)
	movl	-2852(%rbp), %edi
	callq	_ZN5piece8is_emptyEi
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB1_8
	jmp	.LBB1_9
.LBB1_8:
	jmp	.LBB1_10
.LBB1_9:
	leaq	.L.str.3(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$45, %edx
	leaq	.L__PRETTY_FUNCTION__._ZN5Board22produce_uncheck_moves_Ev(%rip), %rcx
	callq	__assert_fail@PLT
.LBB1_10:
	movl	-2852(%rbp), %edi
	callq	_ZN5piece7is_kingEi
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB1_11
	jmp	.LBB1_12
.LBB1_11:
	jmp	.LBB1_13
.LBB1_12:
	leaq	.L.str.4(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$46, %edx
	leaq	.L__PRETTY_FUNCTION__._ZN5Board22produce_uncheck_moves_Ev(%rip), %rcx
	callq	__assert_fail@PLT
.LBB1_13:
	movl	-2852(%rbp), %edi
	callq	_ZN5piece9is_bishopEi
	testb	$1, %al
	jne	.LBB1_16
# %bb.14:
	movl	-2852(%rbp), %edi
	callq	_ZN5piece7is_rookEi
	testb	$1, %al
	jne	.LBB1_16
# %bb.15:
	movl	-2852(%rbp), %edi
	callq	_ZN5piece8is_queenEi
	testb	$1, %al
	jne	.LBB1_16
	jmp	.LBB1_79
.LBB1_16:
	movslq	-2852(%rbp), %rdi
	callq	_Z11u64ToSquarem
	movl	%eax, -2856(%rbp)
	movb	$0, -2857(%rbp)
	movl	-2852(%rbp), %edi
	callq	_ZN5piece7is_rookEi
	testb	$1, %al
	jne	.LBB1_18
# %bb.17:
	movl	-2852(%rbp), %edi
	callq	_ZN5piece8is_queenEi
	testb	$1, %al
	jne	.LBB1_18
	jmp	.LBB1_27
.LBB1_18:
	movl	-2856(%rbp), %edi
	movq	-2824(%rbp), %rsi
	callq	_ZN9move_maps9rookMovesEim@PLT
	movq	%rax, -2872(%rbp)
	movq	-2872(%rbp), %rax
	andq	-2776(%rbp), %rax
	cmpq	$0, %rax
	je	.LBB1_26
# %bb.19:
	movb	$1, -2857(%rbp)
	movl	$0, -2876(%rbp)
.LBB1_20:                               # =>This Inner Loop Header: Depth=1
	cmpl	$4, -2876(%rbp)
	jge	.LBB1_25
# %bb.21:                               #   in Loop: Header=BB1_20 Depth=1
	movq	-2872(%rbp), %rax
	movl	-2856(%rbp), %edi
	movl	-2876(%rbp), %esi
	movq	%rax, -3144(%rbp)               # 8-byte Spill
	callq	_ZN9move_maps7rookRayEii@PLT
	movq	-3144(%rbp), %rcx               # 8-byte Reload
	andq	%rax, %rcx
	movq	%rcx, -2888(%rbp)
	movq	-2888(%rbp), %rax
	andq	-2776(%rbp), %rax
	cmpq	$0, %rax
	je	.LBB1_23
# %bb.22:
	movq	-2888(%rbp), %rax
	orq	-2848(%rbp), %rax
	movq	%rax, -2848(%rbp)
	jmp	.LBB1_25
.LBB1_23:                               #   in Loop: Header=BB1_20 Depth=1
	jmp	.LBB1_24
.LBB1_24:                               #   in Loop: Header=BB1_20 Depth=1
	movl	-2876(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -2876(%rbp)
	jmp	.LBB1_20
.LBB1_25:
	jmp	.LBB1_26
.LBB1_26:
	jmp	.LBB1_40
.LBB1_27:
	movl	-2852(%rbp), %edi
	callq	_ZN5piece9is_bishopEi
	testb	$1, %al
	jne	.LBB1_30
# %bb.28:
	movl	-2852(%rbp), %edi
	callq	_ZN5piece8is_queenEi
	testb	$1, %al
	jne	.LBB1_29
	jmp	.LBB1_39
.LBB1_29:
	testb	$1, -2857(%rbp)
	jne	.LBB1_39
.LBB1_30:
	movl	-2856(%rbp), %edi
	movq	-2824(%rbp), %rsi
	callq	_ZN9move_maps11bishopMovesEim@PLT
	movq	%rax, -2896(%rbp)
	movq	-2896(%rbp), %rax
	andq	-2776(%rbp), %rax
	cmpq	$0, %rax
	je	.LBB1_38
# %bb.31:
	movb	$1, -2857(%rbp)
	movl	$0, -2900(%rbp)
.LBB1_32:                               # =>This Inner Loop Header: Depth=1
	cmpl	$4, -2900(%rbp)
	jge	.LBB1_37
# %bb.33:                               #   in Loop: Header=BB1_32 Depth=1
	movq	-2896(%rbp), %rax
	movl	-2856(%rbp), %edi
	movl	-2900(%rbp), %esi
	movq	%rax, -3152(%rbp)               # 8-byte Spill
	callq	_ZN9move_maps9bishopRayEii@PLT
	movq	-3152(%rbp), %rcx               # 8-byte Reload
	andq	%rax, %rcx
	movq	%rcx, -2912(%rbp)
	movq	-2912(%rbp), %rax
	andq	-2776(%rbp), %rax
	cmpq	$0, %rax
	je	.LBB1_35
# %bb.34:
	movq	-2912(%rbp), %rax
	orq	-2848(%rbp), %rax
	movq	%rax, -2848(%rbp)
	jmp	.LBB1_37
.LBB1_35:                               #   in Loop: Header=BB1_32 Depth=1
	jmp	.LBB1_36
.LBB1_36:                               #   in Loop: Header=BB1_32 Depth=1
	movl	-2900(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -2900(%rbp)
	jmp	.LBB1_32
.LBB1_37:
	jmp	.LBB1_38
.LBB1_38:
	jmp	.LBB1_39
.LBB1_39:
	jmp	.LBB1_40
.LBB1_40:
	leaq	-528(%rbp), %rdi
	callq	_ZN7u64ListC2Ev
	movl	-2764(%rbp), %edi
	callq	_ZN5piece8get_pawnEi
	movslq	%eax, %rcx
	movq	-3120(%rbp), %rdx               # 8-byte Reload
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -2920(%rbp)
	movq	-2920(%rbp), %rdi
	leaq	-528(%rbp), %rsi
	callq	_Z10bitscanAllmR7u64List@PLT
	movl	$0, -2924(%rbp)
.LBB1_41:                               # =>This Inner Loop Header: Depth=1
	movl	-2924(%rbp), %eax
	leaq	-528(%rbp), %rdi
	movl	%eax, -3156(%rbp)               # 4-byte Spill
	callq	_ZNK7u64List3lenEv
	movl	-3156(%rbp), %ecx               # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB1_58
# %bb.42:                               #   in Loop: Header=BB1_41 Depth=1
	movl	-2924(%rbp), %esi
	leaq	-528(%rbp), %rdi
	callq	_ZNK7u64ListixEi
	movq	%rax, -2936(%rbp)
	movq	-2936(%rbp), %rdi
	callq	_Z11u64ToSquarem
	movl	%eax, -2940(%rbp)
	movq	-2824(%rbp), %rcx
	movq	-2936(%rbp), %rdx
	xorq	$-1, %rdx
	andq	%rdx, %rcx
	movq	-2776(%rbp), %rsi
	movq	-2832(%rbp), %rdx
	movq	-2840(%rbp), %rdi
	movq	%rdi, -3168(%rbp)               # 8-byte Spill
	movq	%rcx, %rdi
	movq	-3168(%rbp), %rcx               # 8-byte Reload
	callq	_ZN9move_maps17isAttackedSlidingEmmmm@PLT
	testb	$1, %al
	jne	.LBB1_43
	jmp	.LBB1_44
.LBB1_43:                               #   in Loop: Header=BB1_41 Depth=1
	jmp	.LBB1_57
.LBB1_44:                               #   in Loop: Header=BB1_41 Depth=1
	movl	-2940(%rbp), %edi
	movl	-2764(%rbp), %esi
	callq	_ZN9move_maps9pawnMovesEii@PLT
	movq	%rax, -2952(%rbp)
	movq	-2952(%rbp), %rdi
	callq	_Z11u64ToSquarem
	movl	%eax, -2956(%rbp)
	movq	-2952(%rbp), %rcx
	andq	-2824(%rbp), %rcx
	cmpq	$0, %rcx
	jne	.LBB1_56
# %bb.45:                               #   in Loop: Header=BB1_41 Depth=1
	movq	-2952(%rbp), %rax
	andq	-2848(%rbp), %rax
	cmpq	$0, %rax
	je	.LBB1_50
# %bb.46:                               #   in Loop: Header=BB1_41 Depth=1
	movl	-2956(%rbp), %edi
	movl	-2764(%rbp), %esi
	callq	_ZN9move_maps15isPromotingRankEii@PLT
	testb	$1, %al
	jne	.LBB1_47
	jmp	.LBB1_48
.LBB1_47:                               #   in Loop: Header=BB1_41 Depth=1
	movl	-2940(%rbp), %esi
	movl	-2956(%rbp), %edx
	leaq	-2616(%rbp), %rdi
	movl	$8, %ecx
	callq	_ZN5CMoveC2Eiii
	movq	-3104(%rbp), %rdi               # 8-byte Reload
	movzwl	-2616(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
	movl	-2940(%rbp), %esi
	movl	-2956(%rbp), %edx
	leaq	-2624(%rbp), %rdi
	movl	$6, %ecx
	callq	_ZN5CMoveC2Eiii
	movq	-3104(%rbp), %rdi               # 8-byte Reload
	movzwl	-2624(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
	movl	-2940(%rbp), %esi
	movl	-2956(%rbp), %edx
	leaq	-2632(%rbp), %rdi
	movl	$4, %ecx
	callq	_ZN5CMoveC2Eiii
	movq	-3104(%rbp), %rdi               # 8-byte Reload
	movzwl	-2632(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
	movl	-2940(%rbp), %esi
	movl	-2956(%rbp), %edx
	leaq	-2640(%rbp), %rdi
	movl	$2, %ecx
	callq	_ZN5CMoveC2Eiii
	movq	-3104(%rbp), %rdi               # 8-byte Reload
	movzwl	-2640(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
	jmp	.LBB1_49
.LBB1_48:                               #   in Loop: Header=BB1_41 Depth=1
	movl	-2940(%rbp), %esi
	movl	-2956(%rbp), %edx
	leaq	-2648(%rbp), %rdi
	movl	$1, %ecx
	callq	_ZN5CMoveC2Eiii
	movq	-3104(%rbp), %rdi               # 8-byte Reload
	movzwl	-2648(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
.LBB1_49:                               #   in Loop: Header=BB1_41 Depth=1
	jmp	.LBB1_50
.LBB1_50:                               #   in Loop: Header=BB1_41 Depth=1
	movl	-2940(%rbp), %edi
	movl	-2764(%rbp), %esi
	callq	_ZN9move_maps14isStartingRankEii@PLT
	testb	$1, %al
	jne	.LBB1_51
	jmp	.LBB1_55
.LBB1_51:                               #   in Loop: Header=BB1_41 Depth=1
	movl	-2940(%rbp), %edi
	movl	-2764(%rbp), %esi
	callq	_ZN9move_maps15pawnDoubleMovesEii@PLT
	movq	%rax, -2968(%rbp)
	movq	-2968(%rbp), %rax
	andq	-2824(%rbp), %rax
	cmpq	$0, %rax
	jne	.LBB1_54
# %bb.52:                               #   in Loop: Header=BB1_41 Depth=1
	movq	-2968(%rbp), %rax
	andq	-2848(%rbp), %rax
	cmpq	$0, %rax
	je	.LBB1_54
# %bb.53:                               #   in Loop: Header=BB1_41 Depth=1
	movl	-2940(%rbp), %esi
	movq	-2968(%rbp), %rdi
	movl	%esi, -3172(%rbp)               # 4-byte Spill
	callq	_Z11u64ToSquarem
	leaq	-2656(%rbp), %rdi
	movl	-3172(%rbp), %esi               # 4-byte Reload
	movl	%eax, %edx
	movl	$7, %ecx
	callq	_ZN5CMoveC2Eiii
	movq	-3104(%rbp), %rdi               # 8-byte Reload
	movzwl	-2656(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
.LBB1_54:                               #   in Loop: Header=BB1_41 Depth=1
	jmp	.LBB1_55
.LBB1_55:                               #   in Loop: Header=BB1_41 Depth=1
	jmp	.LBB1_56
.LBB1_56:                               #   in Loop: Header=BB1_41 Depth=1
	jmp	.LBB1_57
.LBB1_57:                               #   in Loop: Header=BB1_41 Depth=1
	movl	-2924(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -2924(%rbp)
	jmp	.LBB1_41
.LBB1_58:
	leaq	-1048(%rbp), %rdi
	callq	_ZN7u64ListC2Ev
	movq	-2848(%rbp), %rdi
	leaq	-1048(%rbp), %rsi
	callq	_Z10bitscanAllmR7u64List@PLT
	movl	$0, -2972(%rbp)
.LBB1_59:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_61 Depth 2
	movl	-2972(%rbp), %eax
	leaq	-1048(%rbp), %rdi
	movl	%eax, -3176(%rbp)               # 4-byte Spill
	callq	_ZNK7u64List3lenEv
	movl	-3176(%rbp), %ecx               # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB1_78
# %bb.60:                               #   in Loop: Header=BB1_59 Depth=1
	movl	-2972(%rbp), %esi
	leaq	-1048(%rbp), %rdi
	callq	_ZNK7u64ListixEi
	movq	%rax, -2984(%rbp)
	movq	-2984(%rbp), %rdi
	callq	_Z11u64ToSquarem
	movl	%eax, -2988(%rbp)
	movq	-3120(%rbp), %rcx               # 8-byte Reload
	addq	$96, %rcx
	addq	$576, %rcx                      # imm = 0x240
	movslq	-2988(%rbp), %rsi
	movq	%rcx, %rdi
	callq	_ZNSt5arrayImLm64EEixEm
	movq	(%rax), %rax
	andq	-2808(%rbp), %rax
	movq	%rax, -3000(%rbp)
	leaq	-1568(%rbp), %rdi
	callq	_ZN7u64ListC2Ev
	movq	-3000(%rbp), %rdi
	leaq	-1568(%rbp), %rsi
	callq	_Z10bitscanAllmR7u64List@PLT
	movl	$0, -3004(%rbp)
.LBB1_61:                               #   Parent Loop BB1_59 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-3004(%rbp), %eax
	leaq	-1568(%rbp), %rdi
	movl	%eax, -3180(%rbp)               # 4-byte Spill
	callq	_ZNK7u64List3lenEv
	movl	-3180(%rbp), %ecx               # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB1_76
# %bb.62:                               #   in Loop: Header=BB1_61 Depth=2
	movl	-3004(%rbp), %esi
	leaq	-1568(%rbp), %rdi
	callq	_ZNK7u64ListixEi
	andq	-2776(%rbp), %rax
	cmpq	$0, %rax
	je	.LBB1_64
# %bb.63:                               #   in Loop: Header=BB1_61 Depth=2
	jmp	.LBB1_75
.LBB1_64:                               #   in Loop: Header=BB1_61 Depth=2
	movl	-3004(%rbp), %esi
	leaq	-1568(%rbp), %rdi
	callq	_ZNK7u64ListixEi
	movq	%rax, -3016(%rbp)
	movq	-3016(%rbp), %rdi
	callq	_Z11u64ToSquarem
	movl	%eax, -3020(%rbp)
	movq	-2824(%rbp), %rcx
	movq	-3016(%rbp), %rdx
	xorq	$-1, %rdx
	andq	%rdx, %rcx
	orq	-2984(%rbp), %rcx
	movq	-2776(%rbp), %rsi
	movq	-2984(%rbp), %rdx
	xorq	$-1, %rdx
	andq	-2832(%rbp), %rdx
	movq	-2984(%rbp), %rdi
	xorq	$-1, %rdi
	andq	-2840(%rbp), %rdi
	movq	%rdi, -3192(%rbp)               # 8-byte Spill
	movq	%rcx, %rdi
	movq	-3192(%rbp), %rcx               # 8-byte Reload
	callq	_ZN9move_maps17isAttackedSlidingEmmmm@PLT
	testb	$1, %al
	jne	.LBB1_74
# %bb.65:                               #   in Loop: Header=BB1_61 Depth=2
	movq	-3016(%rbp), %rsi
	movq	-3120(%rbp), %rdi               # 8-byte Reload
	callq	_ZNK5Board9piece_at_Em@PLT
	movl	%eax, -3024(%rbp)
	movl	-3024(%rbp), %edi
	callq	_ZN5piece7is_pawnEi
	testb	$1, %al
	jne	.LBB1_66
	jmp	.LBB1_72
.LBB1_66:                               #   in Loop: Header=BB1_61 Depth=2
	movq	-2816(%rbp), %rax
	andq	-2984(%rbp), %rax
	cmpq	$0, %rax
	je	.LBB1_71
# %bb.67:                               #   in Loop: Header=BB1_61 Depth=2
	movl	-2988(%rbp), %edi
	movl	-2764(%rbp), %esi
	callq	_ZN9move_maps15isPromotingRankEii@PLT
	testb	$1, %al
	jne	.LBB1_68
	jmp	.LBB1_69
.LBB1_68:                               #   in Loop: Header=BB1_61 Depth=2
	movl	-3020(%rbp), %esi
	movl	-2988(%rbp), %edx
	leaq	-2664(%rbp), %rdi
	movl	$8, %ecx
	callq	_ZN5CMoveC2Eiii
	movq	-3104(%rbp), %rdi               # 8-byte Reload
	movzwl	-2664(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
	movl	-3020(%rbp), %esi
	movl	-2988(%rbp), %edx
	leaq	-2672(%rbp), %rdi
	movl	$6, %ecx
	callq	_ZN5CMoveC2Eiii
	movq	-3104(%rbp), %rdi               # 8-byte Reload
	movzwl	-2672(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
	movl	-3020(%rbp), %esi
	movl	-2988(%rbp), %edx
	leaq	-2680(%rbp), %rdi
	movl	$4, %ecx
	callq	_ZN5CMoveC2Eiii
	movq	-3104(%rbp), %rdi               # 8-byte Reload
	movzwl	-2680(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
	movl	-3020(%rbp), %esi
	movl	-2988(%rbp), %edx
	leaq	-2688(%rbp), %rdi
	movl	$2, %ecx
	callq	_ZN5CMoveC2Eiii
	movq	-3104(%rbp), %rdi               # 8-byte Reload
	movzwl	-2688(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
	jmp	.LBB1_70
.LBB1_69:                               #   in Loop: Header=BB1_61 Depth=2
	movl	-3020(%rbp), %esi
	movl	-2988(%rbp), %edx
	leaq	-2696(%rbp), %rdi
	movl	$1, %ecx
	callq	_ZN5CMoveC2Eiii
	movq	-3104(%rbp), %rdi               # 8-byte Reload
	movzwl	-2696(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
.LBB1_70:                               #   in Loop: Header=BB1_61 Depth=2
	jmp	.LBB1_71
.LBB1_71:                               #   in Loop: Header=BB1_61 Depth=2
	jmp	.LBB1_73
.LBB1_72:                               #   in Loop: Header=BB1_61 Depth=2
	movl	-3020(%rbp), %esi
	movl	-2988(%rbp), %edx
	leaq	-2704(%rbp), %rdi
	movl	$1, %ecx
	callq	_ZN5CMoveC2Eiii
	movq	-3104(%rbp), %rdi               # 8-byte Reload
	movzwl	-2704(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
.LBB1_73:                               #   in Loop: Header=BB1_61 Depth=2
	jmp	.LBB1_74
.LBB1_74:                               #   in Loop: Header=BB1_61 Depth=2
	jmp	.LBB1_75
.LBB1_75:                               #   in Loop: Header=BB1_61 Depth=2
	movl	-3004(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -3004(%rbp)
	jmp	.LBB1_61
.LBB1_76:                               #   in Loop: Header=BB1_59 Depth=1
	jmp	.LBB1_77
.LBB1_77:                               #   in Loop: Header=BB1_59 Depth=1
	movl	-2972(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -2972(%rbp)
	jmp	.LBB1_59
.LBB1_78:
	jmp	.LBB1_90
.LBB1_79:
	movq	-2848(%rbp), %rax
	movq	%rax, -3032(%rbp)
	movq	-2848(%rbp), %rdi
	callq	_Z11u64ToSquarem
	movl	%eax, -3036(%rbp)
	movq	-3120(%rbp), %rcx               # 8-byte Reload
	addq	$96, %rcx
	addq	$576, %rcx                      # imm = 0x240
	movslq	-3036(%rbp), %rsi
	movq	%rcx, %rdi
	callq	_ZNSt5arrayImLm64EEixEm
	movq	(%rax), %rax
	andq	-2808(%rbp), %rax
	movq	-2776(%rbp), %rcx
	xorq	$-1, %rcx
	andq	%rcx, %rax
	movq	%rax, -3048(%rbp)
	leaq	-2088(%rbp), %rdi
	callq	_ZN7u64ListC2Ev
	movq	-3048(%rbp), %rdi
	leaq	-2088(%rbp), %rsi
	callq	_Z10bitscanAllmR7u64List@PLT
	movl	$0, -3052(%rbp)
.LBB1_80:                               # =>This Inner Loop Header: Depth=1
	movl	-3052(%rbp), %eax
	leaq	-2088(%rbp), %rdi
	movl	%eax, -3196(%rbp)               # 4-byte Spill
	callq	_ZNK7u64List3lenEv
	movl	-3196(%rbp), %ecx               # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB1_89
# %bb.81:                               #   in Loop: Header=BB1_80 Depth=1
	movl	-3052(%rbp), %esi
	leaq	-2088(%rbp), %rdi
	callq	_ZNK7u64ListixEi
	movq	%rax, -3064(%rbp)
	movq	-3064(%rbp), %rdi
	callq	_Z11u64ToSquarem
	movl	%eax, -3068(%rbp)
	movq	-2824(%rbp), %rcx
	movq	-3064(%rbp), %rdx
	xorq	$-1, %rdx
	andq	%rdx, %rcx
	movq	-2776(%rbp), %rsi
	movq	-3032(%rbp), %rdx
	xorq	$-1, %rdx
	andq	-2832(%rbp), %rdx
	movq	-3032(%rbp), %rdi
	xorq	$-1, %rdi
	andq	-2840(%rbp), %rdi
	movq	%rdi, -3208(%rbp)               # 8-byte Spill
	movq	%rcx, %rdi
	movq	-3208(%rbp), %rcx               # 8-byte Reload
	callq	_ZN9move_maps17isAttackedSlidingEmmmm@PLT
	testb	$1, %al
	jne	.LBB1_82
	jmp	.LBB1_83
.LBB1_82:                               #   in Loop: Header=BB1_80 Depth=1
	jmp	.LBB1_88
.LBB1_83:                               #   in Loop: Header=BB1_80 Depth=1
	movl	-3036(%rbp), %edi
	movl	-2764(%rbp), %esi
	callq	_ZN9move_maps15isPromotingRankEii@PLT
	testb	$1, %al
	jne	.LBB1_84
	jmp	.LBB1_86
.LBB1_84:                               #   in Loop: Header=BB1_80 Depth=1
	movq	-3064(%rbp), %rsi
	movq	-3120(%rbp), %rdi               # 8-byte Reload
	callq	_ZNK5Board9piece_at_Em@PLT
	movl	%eax, %edi
	callq	_ZN5piece7is_pawnEi
	testb	$1, %al
	jne	.LBB1_85
	jmp	.LBB1_86
.LBB1_85:                               #   in Loop: Header=BB1_80 Depth=1
	movl	-3068(%rbp), %esi
	movl	-3036(%rbp), %edx
	leaq	-2712(%rbp), %rdi
	movl	$8, %ecx
	callq	_ZN5CMoveC2Eiii
	movq	-3104(%rbp), %rdi               # 8-byte Reload
	movzwl	-2712(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
	movl	-3068(%rbp), %esi
	movl	-3036(%rbp), %edx
	leaq	-2720(%rbp), %rdi
	movl	$6, %ecx
	callq	_ZN5CMoveC2Eiii
	movq	-3104(%rbp), %rdi               # 8-byte Reload
	movzwl	-2720(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
	movl	-3068(%rbp), %esi
	movl	-3036(%rbp), %edx
	leaq	-2728(%rbp), %rdi
	movl	$4, %ecx
	callq	_ZN5CMoveC2Eiii
	movq	-3104(%rbp), %rdi               # 8-byte Reload
	movzwl	-2728(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
	movl	-3068(%rbp), %esi
	movl	-3036(%rbp), %edx
	leaq	-2736(%rbp), %rdi
	movl	$2, %ecx
	callq	_ZN5CMoveC2Eiii
	movq	-3104(%rbp), %rdi               # 8-byte Reload
	movzwl	-2736(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
	jmp	.LBB1_87
.LBB1_86:                               #   in Loop: Header=BB1_80 Depth=1
	movl	-3068(%rbp), %esi
	movl	-3036(%rbp), %edx
	leaq	-2744(%rbp), %rdi
	movl	$1, %ecx
	callq	_ZN5CMoveC2Eiii
	movq	-3104(%rbp), %rdi               # 8-byte Reload
	movzwl	-2744(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
.LBB1_87:                               #   in Loop: Header=BB1_80 Depth=1
	jmp	.LBB1_88
.LBB1_88:                               #   in Loop: Header=BB1_80 Depth=1
	movl	-3052(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -3052(%rbp)
	jmp	.LBB1_80
.LBB1_89:
	jmp	.LBB1_90
.LBB1_90:
	jmp	.LBB1_91
.LBB1_91:
	movq	-3120(%rbp), %rax               # 8-byte Reload
	addq	$96, %rax
	addq	$64, %rax
	movq	-2784(%rbp), %rsi
	movq	%rax, %rdi
	callq	_ZNSt5arrayImLm64EEixEm
	movq	(%rax), %rax
	movq	%rax, -3080(%rbp)
	leaq	-2608(%rbp), %rdi
	callq	_ZN7u64ListC2Ev
	movq	-3080(%rbp), %rdi
	leaq	-2608(%rbp), %rsi
	callq	_Z10bitscanAllmR7u64List@PLT
	movl	$0, -3084(%rbp)
.LBB1_92:                               # =>This Inner Loop Header: Depth=1
	movl	-3084(%rbp), %eax
	leaq	-2608(%rbp), %rdi
	movl	%eax, -3212(%rbp)               # 4-byte Spill
	callq	_ZNK7u64List3lenEv
	movl	-3212(%rbp), %ecx               # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB1_100
# %bb.93:                               #   in Loop: Header=BB1_92 Depth=1
	movl	-3084(%rbp), %esi
	leaq	-2608(%rbp), %rdi
	callq	_ZNK7u64ListixEi
	movq	%rax, -3096(%rbp)
	movq	-3096(%rbp), %rsi
	movl	-2768(%rbp), %edx
	movq	-3120(%rbp), %rdi               # 8-byte Reload
	callq	_ZN5Board13attackers_to_Emi@PLT
	cmpq	$0, %rax
	jne	.LBB1_98
# %bb.94:                               #   in Loop: Header=BB1_92 Depth=1
	movq	-3096(%rbp), %rax
	andq	-2808(%rbp), %rax
	cmpq	$0, %rax
	jne	.LBB1_98
# %bb.95:                               #   in Loop: Header=BB1_92 Depth=1
	movq	-2824(%rbp), %rax
	movq	-2776(%rbp), %rcx
	xorq	$-1, %rcx
	andq	%rcx, %rax
	orq	-3096(%rbp), %rax
	movq	-3096(%rbp), %rsi
	movq	-3096(%rbp), %rcx
	xorq	$-1, %rcx
	andq	-2832(%rbp), %rcx
	movq	-3096(%rbp), %rdx
	xorq	$-1, %rdx
	andq	-2840(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -3224(%rbp)               # 8-byte Spill
	movq	%rcx, %rdx
	movq	-3224(%rbp), %rcx               # 8-byte Reload
	callq	_ZN9move_maps17isAttackedSlidingEmmmm@PLT
	testb	$1, %al
	jne	.LBB1_96
	jmp	.LBB1_97
.LBB1_96:                               #   in Loop: Header=BB1_92 Depth=1
	jmp	.LBB1_99
.LBB1_97:                               #   in Loop: Header=BB1_92 Depth=1
	movq	-2784(%rbp), %rax
                                        # kill: def $eax killed $eax killed $rax
	movq	-3096(%rbp), %rdi
	movl	%eax, -3228(%rbp)               # 4-byte Spill
	callq	_Z11u64ToSquarem
	leaq	-2752(%rbp), %rdi
	movl	-3228(%rbp), %esi               # 4-byte Reload
	movl	%eax, %edx
	movl	$1, %ecx
	callq	_ZN5CMoveC2Eiii
	movq	-3104(%rbp), %rdi               # 8-byte Reload
	movzwl	-2752(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
.LBB1_98:                               #   in Loop: Header=BB1_92 Depth=1
	jmp	.LBB1_99
.LBB1_99:                               #   in Loop: Header=BB1_92 Depth=1
	movl	-3084(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -3084(%rbp)
	jmp	.LBB1_92
.LBB1_100:
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB1_102
# %bb.101:
	movq	-3112(%rbp), %rax               # 8-byte Reload
	addq	$3232, %rsp                     # imm = 0xCA0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_102:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end1:
	.size	_ZN5Board22produce_uncheck_moves_Ev, .Lfunc_end1-_ZN5Board22produce_uncheck_moves_Ev
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
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	%rax, %rdi
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	callq	_ZN5CMoveC2Ev
	movq	-40(%rbp), %rax                 # 8-byte Reload
	addq	$2, %rax
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	jne	.LBB2_1
# %bb.2:
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movl	$0, 512(%rax)
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	_ZN8MoveListILi256EEC2Ev, .Lfunc_end2-_ZN8MoveListILi256EEC2Ev
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
.Lfunc_end3:
	.size	_Z13oppositeColori, .Lfunc_end3-_Z13oppositeColori
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
	addl	$10, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	_ZN5piece8get_kingEi, .Lfunc_end4-_ZN5piece8get_kingEi
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
	leaq	.L.str.5(%rip), %rdi
	leaq	.L.str.6(%rip), %rsi
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
.Lfunc_end6:
	.size	_ZN5piece8get_rookEi, .Lfunc_end6-_ZN5piece8get_rookEi
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
	addl	$8, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	_ZN5piece9get_queenEi, .Lfunc_end7-_ZN5piece9get_queenEi
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
	addl	$4, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end8:
	.size	_ZN5piece10get_bishopEi, .Lfunc_end8-_ZN5piece10get_bishopEi
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
.Lfunc_end9:
	.size	_ZN5piece8is_emptyEi, .Lfunc_end9-_ZN5piece8is_emptyEi
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
.Lfunc_end10:
	.size	_ZN5piece7is_kingEi, .Lfunc_end10-_ZN5piece7is_kingEi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN5piece9is_bishopEi,"axG",@progbits,_ZN5piece9is_bishopEi,comdat
	.weak	_ZN5piece9is_bishopEi           # -- Begin function _ZN5piece9is_bishopEi
	.p2align	4, 0x90
	.type	_ZN5piece9is_bishopEi,@function
_ZN5piece9is_bishopEi:                  # @_ZN5piece9is_bishopEi
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
	cmpl	$2, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end11:
	.size	_ZN5piece9is_bishopEi, .Lfunc_end11-_ZN5piece9is_bishopEi
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
.Lfunc_end12:
	.size	_ZN5piece7is_rookEi, .Lfunc_end12-_ZN5piece7is_rookEi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN5piece8is_queenEi,"axG",@progbits,_ZN5piece8is_queenEi,comdat
	.weak	_ZN5piece8is_queenEi            # -- Begin function _ZN5piece8is_queenEi
	.p2align	4, 0x90
	.type	_ZN5piece8is_queenEi,@function
_ZN5piece8is_queenEi:                   # @_ZN5piece8is_queenEi
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
	cmpl	$4, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end13:
	.size	_ZN5piece8is_queenEi, .Lfunc_end13-_ZN5piece8is_queenEi
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
.LBB14_1:                               # =>This Inner Loop Header: Depth=1
	cmpl	$64, -12(%rbp)
	jge	.LBB14_4
# %bb.2:                                #   in Loop: Header=BB14_1 Depth=1
	movslq	-12(%rbp), %rax
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	movq	$0, (%rcx,%rax,8)
# %bb.3:                                #   in Loop: Header=BB14_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB14_1
.LBB14_4:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end14:
	.size	_ZN7u64ListC2Ev, .Lfunc_end14-_ZN7u64ListC2Ev
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
.Lfunc_end15:
	.size	_ZN5piece8get_pawnEi, .Lfunc_end15-_ZN5piece8get_pawnEi
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
.Lfunc_end16:
	.size	_ZNK7u64List3lenEv, .Lfunc_end16-_ZNK7u64List3lenEv
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
.Lfunc_end17:
	.size	_ZNK7u64ListixEi, .Lfunc_end17-_ZNK7u64ListixEi
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
	jne	.LBB18_2
# %bb.1:
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB18_2:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end18:
	.size	_ZN8MoveListILi256EE8PushBackE5CMove, .Lfunc_end18-_ZN8MoveListILi256EE8PushBackE5CMove
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
	jne	.LBB19_2
# %bb.1:
	movl	-16(%rbp), %edi
	callq	_Z6dump32i@PLT
.LBB19_2:
	movl	-16(%rbp), %edi
	callq	_Z13isValidSquarei
	testb	$1, %al
	jne	.LBB19_4
# %bb.3:
	movl	-16(%rbp), %edi
	callq	_Z6dump32i@PLT
.LBB19_4:
	movl	-12(%rbp), %edi
	callq	_Z13isValidSquarei
	testb	$1, %al
	jne	.LBB19_5
	jmp	.LBB19_6
.LBB19_5:
	jmp	.LBB19_7
.LBB19_6:
	leaq	.L.str.7(%rip), %rdi
	leaq	.L.str.8(%rip), %rsi
	movl	$73, %edx
	leaq	.L__PRETTY_FUNCTION__._ZN5CMoveC2Eiii(%rip), %rcx
	callq	__assert_fail@PLT
.LBB19_7:
	movl	-16(%rbp), %edi
	callq	_Z13isValidSquarei
	testb	$1, %al
	jne	.LBB19_8
	jmp	.LBB19_9
.LBB19_8:
	jmp	.LBB19_10
.LBB19_9:
	leaq	.L.str.9(%rip), %rdi
	leaq	.L.str.8(%rip), %rsi
	movl	$74, %edx
	leaq	.L__PRETTY_FUNCTION__._ZN5CMoveC2Eiii(%rip), %rcx
	callq	__assert_fail@PLT
.LBB19_10:
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
.Lfunc_end19:
	.size	_ZN5CMoveC2Eiii, .Lfunc_end19-_ZN5CMoveC2Eiii
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
.Lfunc_end20:
	.size	_ZNSt5arrayImLm64EEixEm, .Lfunc_end20-_ZNSt5arrayImLm64EEixEm
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
.Lfunc_end21:
	.size	_ZN5piece7is_pawnEi, .Lfunc_end21-_ZN5piece7is_pawnEi
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
.Lfunc_end22:
	.size	_Z14bitscanForwardm, .Lfunc_end22-_Z14bitscanForwardm
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
.Lfunc_end23:
	.size	_ZN5piece12to_colorlessEi, .Lfunc_end23-_ZN5piece12to_colorlessEi
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
	jl	.LBB24_2
# %bb.1:
	cmpl	$64, -4(%rbp)
	setl	%al
	movb	%al, -5(%rbp)                   # 1-byte Spill
.LBB24_2:
	movb	-5(%rbp), %al                   # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end24:
	.size	_Z13isValidSquarei, .Lfunc_end24-_Z13isValidSquarei
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
.Lfunc_end25:
	.size	_ZN5CMoveC2Ev, .Lfunc_end25-_ZN5CMoveC2Ev
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
.Lfunc_end26:
	.size	_ZNSt14__array_traitsImLm64EE6_S_refERA64_Kmm, .Lfunc_end26-_ZNSt14__array_traitsImLm64EE6_S_refERA64_Kmm
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_uncheck.cpp
	.type	_GLOBAL__sub_I_uncheck.cpp,@function
_GLOBAL__sub_I_uncheck.cpp:             # @_GLOBAL__sub_I_uncheck.cpp
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
.Lfunc_end27:
	.size	_GLOBAL__sub_I_uncheck.cpp, .Lfunc_end27-_GLOBAL__sub_I_uncheck.cpp
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
	.asciz	"src/chess/uncheck.cpp"
	.size	.L.str.1, 22

	.type	.L__PRETTY_FUNCTION__._ZN5Board22produce_uncheck_moves_Ev,@object # @__PRETTY_FUNCTION__._ZN5Board22produce_uncheck_moves_Ev
.L__PRETTY_FUNCTION__._ZN5Board22produce_uncheck_moves_Ev:
	.asciz	"MoveList<256> Board::produce_uncheck_moves_()"
	.size	.L__PRETTY_FUNCTION__._ZN5Board22produce_uncheck_moves_Ev, 46

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"is_check()"
	.size	.L.str.2, 11

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"!piece::is_empty(checking_piece)"
	.size	.L.str.3, 33

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"!piece::is_king(checking_piece)"
	.size	.L.str.4, 32

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"x != 0"
	.size	.L.str.5, 7

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"include/misc/bits.hpp"
	.size	.L.str.6, 22

	.type	.L__PRETTY_FUNCTION__._Z11u64ToSquarem,@object # @__PRETTY_FUNCTION__._Z11u64ToSquarem
.L__PRETTY_FUNCTION__._Z11u64ToSquarem:
	.asciz	"int u64ToSquare(uint64_t)"
	.size	.L__PRETTY_FUNCTION__._Z11u64ToSquarem, 26

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"isValidSquare(src_)"
	.size	.L.str.7, 20

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"include/game/cmove.hpp"
	.size	.L.str.8, 23

	.type	.L__PRETTY_FUNCTION__._ZN5CMoveC2Eiii,@object # @__PRETTY_FUNCTION__._ZN5CMoveC2Eiii
.L__PRETTY_FUNCTION__._ZN5CMoveC2Eiii:
	.asciz	"CMove::CMove(int, int, int)"
	.size	.L__PRETTY_FUNCTION__._ZN5CMoveC2Eiii, 28

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"isValidSquare(dest_)"
	.size	.L.str.9, 21

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_uncheck.cpp
	.ident	"clang version 11.0.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __cxx_global_var_init
	.addrsig_sym __cxa_atexit
	.addrsig_sym __assert_fail
	.addrsig_sym _ZNK5Board8is_checkEv
	.addrsig_sym _ZNK5Board4turnEv
	.addrsig_sym _Z13oppositeColori
	.addrsig_sym _ZN5piece8get_kingEi
	.addrsig_sym _Z11u64ToSquarem
	.addrsig_sym _ZN5Board13attackers_to_Emi
	.addrsig_sym _Z4haddm
	.addrsig_sym _ZNK5Board9occupancyEi
	.addrsig_sym _ZN5piece8get_rookEi
	.addrsig_sym _ZN5piece9get_queenEi
	.addrsig_sym _ZN5piece10get_bishopEi
	.addrsig_sym _ZNK5Board9piece_at_Em
	.addrsig_sym _ZN5piece8is_emptyEi
	.addrsig_sym _ZN5piece7is_kingEi
	.addrsig_sym _ZN5piece9is_bishopEi
	.addrsig_sym _ZN5piece7is_rookEi
	.addrsig_sym _ZN5piece8is_queenEi
	.addrsig_sym _ZN9move_maps9rookMovesEim
	.addrsig_sym _ZN9move_maps7rookRayEii
	.addrsig_sym _ZN9move_maps11bishopMovesEim
	.addrsig_sym _ZN9move_maps9bishopRayEii
	.addrsig_sym _ZN5piece8get_pawnEi
	.addrsig_sym _Z10bitscanAllmR7u64List
	.addrsig_sym _ZNK7u64List3lenEv
	.addrsig_sym _ZNK7u64ListixEi
	.addrsig_sym _ZN9move_maps17isAttackedSlidingEmmmm
	.addrsig_sym _ZN9move_maps9pawnMovesEii
	.addrsig_sym _ZN9move_maps15isPromotingRankEii
	.addrsig_sym _ZN8MoveListILi256EE8PushBackE5CMove
	.addrsig_sym _ZN9move_maps14isStartingRankEii
	.addrsig_sym _ZN9move_maps15pawnDoubleMovesEii
	.addrsig_sym _ZNSt5arrayImLm64EEixEm
	.addrsig_sym _ZN5piece7is_pawnEi
	.addrsig_sym _Z14bitscanForwardm
	.addrsig_sym _ZN5piece12to_colorlessEi
	.addrsig_sym _Z13isValidSquarei
	.addrsig_sym _Z6dump32i
	.addrsig_sym _ZNSt14__array_traitsImLm64EE6_S_refERA64_Kmm
	.addrsig_sym _GLOBAL__sub_I_uncheck.cpp
	.addrsig_sym __stack_chk_fail
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
