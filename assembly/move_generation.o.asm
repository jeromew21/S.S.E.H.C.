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
	subq	$1888, %rsp                     # imm = 0x760
	movq	%rdi, %rax
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	movq	%rsi, -1736(%rbp)
	movq	-1736(%rbp), %rcx
	testb	$1, 1220(%rcx)
	movq	%rdi, -1824(%rbp)               # 8-byte Spill
	movq	%rax, -1832(%rbp)               # 8-byte Spill
	movq	%rcx, -1840(%rbp)               # 8-byte Spill
	jne	.LBB1_2
# %bb.1:
	movq	-1840(%rbp), %rdi               # 8-byte Reload
	callq	_ZN5Board20GeneratePseudoLegal_Ev@PLT
.LBB1_2:
	movq	-1840(%rbp), %rdi               # 8-byte Reload
	callq	_ZNK5Board8is_checkEv@PLT
	testb	$1, %al
	jne	.LBB1_3
	jmp	.LBB1_4
.LBB1_3:
	movq	-1824(%rbp), %rdi               # 8-byte Reload
	movq	-1840(%rbp), %rsi               # 8-byte Reload
	callq	_ZN5Board22produce_uncheck_moves_Ev@PLT
	jmp	.LBB1_61
.LBB1_4:
	leaq	-528(%rbp), %rdi
	movq	-1840(%rbp), %rsi               # 8-byte Reload
	callq	_ZN5Board14capture_moves_Ev
	leaq	-1048(%rbp), %rdi
	callq	_ZN7u64ListC2Ev
	leaq	-1568(%rbp), %rdi
	callq	_ZN7u64ListC2Ev
	movq	-1840(%rbp), %rdi               # 8-byte Reload
	callq	_ZNK5Board4turnEv@PLT
	movl	%eax, -1740(%rbp)
	movq	-1840(%rbp), %rdi               # 8-byte Reload
	callq	_ZNK5Board9occupancyEv@PLT
	movq	%rax, -1752(%rbp)
	movl	-1740(%rbp), %edi
	callq	_Z13oppositeColori
	movl	%eax, -1756(%rbp)
	movl	-1740(%rbp), %eax
	movl	%eax, -1760(%rbp)
.LBB1_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_7 Depth 2
                                        #       Child Loop BB1_16 Depth 3
	cmpl	$12, -1760(%rbp)
	jge	.LBB1_40
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=1
	movslq	-1760(%rbp), %rax
	movq	-1840(%rbp), %rcx               # 8-byte Reload
	movq	(%rcx,%rax,8), %rdi
	leaq	-1048(%rbp), %rsi
	callq	_Z10bitscanAllmR7u64List@PLT
	movl	$0, -1764(%rbp)
.LBB1_7:                                #   Parent Loop BB1_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_16 Depth 3
	movl	-1764(%rbp), %eax
	leaq	-1048(%rbp), %rdi
	movl	%eax, -1844(%rbp)               # 4-byte Spill
	callq	_ZNK7u64List3lenEv
	movl	-1844(%rbp), %ecx               # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB1_38
# %bb.8:                                #   in Loop: Header=BB1_7 Depth=2
	movl	-1764(%rbp), %esi
	leaq	-1048(%rbp), %rdi
	callq	_ZNK7u64ListixEi
	movq	%rax, %rdi
	callq	_Z11u64ToSquarem
	movl	%eax, -1768(%rbp)
	movq	$0, -1776(%rbp)
	movl	-1760(%rbp), %edi
	callq	_ZN5piece7is_pawnEi
	testb	$1, %al
	jne	.LBB1_9
	jmp	.LBB1_14
.LBB1_9:                                #   in Loop: Header=BB1_7 Depth=2
	movq	-1752(%rbp), %rax
	xorq	$-1, %rax
	movl	-1768(%rbp), %edi
	movl	-1740(%rbp), %esi
	movq	%rax, -1856(%rbp)               # 8-byte Spill
	callq	_ZN9move_maps9pawnMovesEii@PLT
	movq	-1856(%rbp), %rcx               # 8-byte Reload
	andq	%rax, %rcx
	movq	%rcx, -1776(%rbp)
	movl	-1768(%rbp), %edi
	movl	-1740(%rbp), %esi
	callq	_ZN9move_maps14isStartingRankEii@PLT
	testb	$1, %al
	jne	.LBB1_10
	jmp	.LBB1_13
.LBB1_10:                               #   in Loop: Header=BB1_7 Depth=2
	cmpq	$0, -1776(%rbp)
	je	.LBB1_12
# %bb.11:                               #   in Loop: Header=BB1_7 Depth=2
	movq	-1752(%rbp), %rax
	xorq	$-1, %rax
	movl	-1768(%rbp), %edi
	movl	-1740(%rbp), %esi
	movq	%rax, -1864(%rbp)               # 8-byte Spill
	callq	_ZN9move_maps15pawnDoubleMovesEii@PLT
	movq	-1864(%rbp), %rcx               # 8-byte Reload
	andq	%rax, %rcx
	orq	-1776(%rbp), %rcx
	movq	%rcx, -1776(%rbp)
.LBB1_12:                               #   in Loop: Header=BB1_7 Depth=2
	jmp	.LBB1_13
.LBB1_13:                               #   in Loop: Header=BB1_7 Depth=2
	jmp	.LBB1_15
.LBB1_14:                               #   in Loop: Header=BB1_7 Depth=2
	movq	-1752(%rbp), %rax
	xorq	$-1, %rax
	movq	-1840(%rbp), %rcx               # 8-byte Reload
	addq	$96, %rcx
	addq	$64, %rcx
	movslq	-1768(%rbp), %rsi
	movq	%rcx, %rdi
	movq	%rax, -1872(%rbp)               # 8-byte Spill
	callq	_ZNSt5arrayImLm64EEixEm
	movq	-1872(%rbp), %rcx               # 8-byte Reload
	andq	(%rax), %rcx
	movq	%rcx, -1776(%rbp)
.LBB1_15:                               #   in Loop: Header=BB1_7 Depth=2
	movq	-1776(%rbp), %rdi
	leaq	-1568(%rbp), %rsi
	callq	_Z10bitscanAllmR7u64List@PLT
	movl	$0, -1780(%rbp)
.LBB1_16:                               #   Parent Loop BB1_5 Depth=1
                                        #     Parent Loop BB1_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-1780(%rbp), %eax
	leaq	-1568(%rbp), %rdi
	movl	%eax, -1876(%rbp)               # 4-byte Spill
	callq	_ZNK7u64List3lenEv
	movl	-1876(%rbp), %ecx               # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB1_36
# %bb.17:                               #   in Loop: Header=BB1_16 Depth=3
	movl	-1780(%rbp), %esi
	leaq	-1568(%rbp), %rdi
	callq	_ZNK7u64ListixEi
	movq	%rax, %rdi
	callq	_Z11u64ToSquarem
	movl	%eax, -1784(%rbp)
	movl	-1760(%rbp), %edi
	callq	_ZN5piece7is_pawnEi
	testb	$1, %al
	jne	.LBB1_18
	jmp	.LBB1_31
.LBB1_18:                               #   in Loop: Header=BB1_16 Depth=3
	movl	-1768(%rbp), %edi
	callq	_Z11squareToRowi
	movl	-1784(%rbp), %edi
	movl	%eax, -1880(%rbp)               # 4-byte Spill
	callq	_Z11squareToRowi
	movl	-1880(%rbp), %ecx               # 4-byte Reload
	subl	%eax, %ecx
	movl	%ecx, %edi
	callq	abs@PLT
	cmpl	$2, %eax
	jne	.LBB1_22
# %bb.19:                               #   in Loop: Header=BB1_16 Depth=3
	movl	-1768(%rbp), %esi
	movl	-1784(%rbp), %edx
	leaq	-1576(%rbp), %rdi
	movl	$7, %ecx
	callq	_ZN5CMoveC2Eiii
	movw	-1576(%rbp), %ax
	movw	%ax, -1584(%rbp)
	movq	-1840(%rbp), %rdi               # 8-byte Reload
	movzwl	-1584(%rbp), %esi
	callq	_ZN5Board19verify_move_safety_E5CMove@PLT
	testb	$1, %al
	jne	.LBB1_20
	jmp	.LBB1_21
.LBB1_20:                               #   in Loop: Header=BB1_16 Depth=3
	movw	-1576(%rbp), %ax
	movw	%ax, -1592(%rbp)
	leaq	-528(%rbp), %rdi
	movzwl	-1592(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
.LBB1_21:                               #   in Loop: Header=BB1_16 Depth=3
	jmp	.LBB1_30
.LBB1_22:                               #   in Loop: Header=BB1_16 Depth=3
	movl	-1784(%rbp), %edi
	movl	-1740(%rbp), %esi
	callq	_ZN9move_maps15isPromotingRankEii@PLT
	testb	$1, %al
	jne	.LBB1_23
	jmp	.LBB1_26
.LBB1_23:                               #   in Loop: Header=BB1_16 Depth=3
	movl	-1768(%rbp), %esi
	movl	-1784(%rbp), %edx
	leaq	-1600(%rbp), %rdi
	movl	$8, %ecx
	callq	_ZN5CMoveC2Eiii
	movl	-1768(%rbp), %esi
	movl	-1784(%rbp), %edx
	leaq	-1608(%rbp), %rdi
	movl	$6, %ecx
	callq	_ZN5CMoveC2Eiii
	movl	-1768(%rbp), %esi
	movl	-1784(%rbp), %edx
	leaq	-1616(%rbp), %rdi
	movl	$4, %ecx
	callq	_ZN5CMoveC2Eiii
	movl	-1768(%rbp), %esi
	movl	-1784(%rbp), %edx
	leaq	-1624(%rbp), %rdi
	movl	$2, %ecx
	callq	_ZN5CMoveC2Eiii
	movw	-1600(%rbp), %ax
	movw	%ax, -1632(%rbp)
	movq	-1840(%rbp), %rdi               # 8-byte Reload
	movzwl	-1632(%rbp), %esi
	callq	_ZN5Board19verify_move_safety_E5CMove@PLT
	testb	$1, %al
	jne	.LBB1_24
	jmp	.LBB1_25
.LBB1_24:                               #   in Loop: Header=BB1_16 Depth=3
	movw	-1600(%rbp), %ax
	movw	%ax, -1640(%rbp)
	leaq	-528(%rbp), %rdi
	movzwl	-1640(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
	movw	-1608(%rbp), %ax
	movw	%ax, -1648(%rbp)
	leaq	-528(%rbp), %rdi
	movzwl	-1648(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
	movw	-1616(%rbp), %ax
	movw	%ax, -1656(%rbp)
	leaq	-528(%rbp), %rdi
	movzwl	-1656(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
	movw	-1624(%rbp), %ax
	movw	%ax, -1664(%rbp)
	leaq	-528(%rbp), %rdi
	movzwl	-1664(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
.LBB1_25:                               #   in Loop: Header=BB1_16 Depth=3
	jmp	.LBB1_29
.LBB1_26:                               #   in Loop: Header=BB1_16 Depth=3
	movl	-1768(%rbp), %esi
	movl	-1784(%rbp), %edx
	leaq	-1672(%rbp), %rdi
	movl	$1, %ecx
	callq	_ZN5CMoveC2Eiii
	movw	-1672(%rbp), %ax
	movw	%ax, -1680(%rbp)
	movq	-1840(%rbp), %rdi               # 8-byte Reload
	movzwl	-1680(%rbp), %esi
	callq	_ZN5Board19verify_move_safety_E5CMove@PLT
	testb	$1, %al
	jne	.LBB1_27
	jmp	.LBB1_28
.LBB1_27:                               #   in Loop: Header=BB1_16 Depth=3
	movw	-1672(%rbp), %ax
	movw	%ax, -1688(%rbp)
	leaq	-528(%rbp), %rdi
	movzwl	-1688(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
.LBB1_28:                               #   in Loop: Header=BB1_16 Depth=3
	jmp	.LBB1_29
.LBB1_29:                               #   in Loop: Header=BB1_16 Depth=3
	jmp	.LBB1_30
.LBB1_30:                               #   in Loop: Header=BB1_16 Depth=3
	jmp	.LBB1_34
.LBB1_31:                               #   in Loop: Header=BB1_16 Depth=3
	movl	-1768(%rbp), %esi
	movl	-1784(%rbp), %edx
	leaq	-1696(%rbp), %rdi
	movl	$1, %ecx
	callq	_ZN5CMoveC2Eiii
	movw	-1696(%rbp), %ax
	movw	%ax, -1704(%rbp)
	movq	-1840(%rbp), %rdi               # 8-byte Reload
	movzwl	-1704(%rbp), %esi
	callq	_ZN5Board19verify_move_safety_E5CMove@PLT
	testb	$1, %al
	jne	.LBB1_32
	jmp	.LBB1_33
.LBB1_32:                               #   in Loop: Header=BB1_16 Depth=3
	movw	-1696(%rbp), %ax
	movw	%ax, -1712(%rbp)
	leaq	-528(%rbp), %rdi
	movzwl	-1712(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
.LBB1_33:                               #   in Loop: Header=BB1_16 Depth=3
	jmp	.LBB1_34
.LBB1_34:                               #   in Loop: Header=BB1_16 Depth=3
	jmp	.LBB1_35
.LBB1_35:                               #   in Loop: Header=BB1_16 Depth=3
	movl	-1780(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1780(%rbp)
	jmp	.LBB1_16
.LBB1_36:                               #   in Loop: Header=BB1_7 Depth=2
	jmp	.LBB1_37
.LBB1_37:                               #   in Loop: Header=BB1_7 Depth=2
	movl	-1764(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1764(%rbp)
	jmp	.LBB1_7
.LBB1_38:                               #   in Loop: Header=BB1_5 Depth=1
	jmp	.LBB1_39
.LBB1_39:                               #   in Loop: Header=BB1_5 Depth=1
	movl	-1760(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -1760(%rbp)
	jmp	.LBB1_5
.LBB1_40:
	xorl	%edx, %edx
	movq	-1840(%rbp), %rax               # 8-byte Reload
	addq	$96, %rax
	addq	$44, %rax
	movl	-1740(%rbp), %esi
	movq	%rax, %rdi
	callq	_ZNK5board6castle6Rights3getEii@PLT
	cmpl	$0, %eax
	je	.LBB1_50
# %bb.41:
	movl	-1740(%rbp), %edi
	callq	_ZN5piece8get_kingEi
	movslq	%eax, %rcx
	movq	-1840(%rbp), %rdx               # 8-byte Reload
	movq	(%rdx,%rcx,8), %rcx
	movslq	-1740(%rbp), %rsi
	andq	1224(%rdx,%rsi,8), %rcx
	cmpq	$0, %rcx
	je	.LBB1_43
# %bb.42:
	jmp	.LBB1_44
.LBB1_43:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$101, %edx
	leaq	.L__PRETTY_FUNCTION__._ZN5Board11legal_movesEv(%rip), %rcx
	callq	__assert_fail@PLT
.LBB1_44:
	movslq	-1740(%rbp), %rax
	leaq	_ZN5board6castleL12long_squaresE(%rip), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -1792(%rbp)
	movslq	-1740(%rbp), %rax
	leaq	_ZN5board6castleL15king_long_slideE(%rip), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -1800(%rbp)
	movq	-1792(%rbp), %rax
	andq	-1752(%rbp), %rax
	cmpq	$0, %rax
	jne	.LBB1_49
# %bb.45:
	movq	-1800(%rbp), %rsi
	movl	-1756(%rbp), %edx
	movq	-1840(%rbp), %rdi               # 8-byte Reload
	callq	_ZN5Board13attackers_to_Emi@PLT
	cmpq	$0, %rax
	jne	.LBB1_49
# %bb.46:
	movq	-1800(%rbp), %rsi
	movl	-1756(%rbp), %edx
	movq	-1840(%rbp), %rdi               # 8-byte Reload
	callq	_ZN5Board13attackers_to_Emi@PLT
	cmpq	$0, %rax
	jne	.LBB1_48
# %bb.47:
	movslq	-1740(%rbp), %rax
	movq	-1840(%rbp), %rcx               # 8-byte Reload
	movq	1224(%rcx,%rax,8), %rdi
	callq	_Z11u64ToSquarem
	movslq	-1740(%rbp), %rcx
	leaq	_ZN5board6castleL14king_long_destE(%rip), %rdx
	movq	(%rdx,%rcx,8), %rdi
	movl	%eax, -1884(%rbp)               # 4-byte Spill
	callq	_Z11u64ToSquarem
	leaq	-1720(%rbp), %rdi
	movl	-1884(%rbp), %esi               # 4-byte Reload
	movl	%eax, %edx
	movl	$9, %ecx
	callq	_ZN5CMoveC2Eiii
	leaq	-528(%rbp), %rdi
	movzwl	-1720(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
.LBB1_48:
	jmp	.LBB1_49
.LBB1_49:
	jmp	.LBB1_50
.LBB1_50:
	movq	-1840(%rbp), %rax               # 8-byte Reload
	addq	$96, %rax
	addq	$44, %rax
	movl	-1740(%rbp), %esi
	movq	%rax, %rdi
	movl	$2, %edx
	callq	_ZNK5board6castle6Rights3getEii@PLT
	cmpl	$0, %eax
	je	.LBB1_60
# %bb.51:
	movl	-1740(%rbp), %edi
	callq	_ZN5piece8get_kingEi
	movslq	%eax, %rcx
	movq	-1840(%rbp), %rdx               # 8-byte Reload
	movq	(%rdx,%rcx,8), %rcx
	movslq	-1740(%rbp), %rsi
	andq	1224(%rdx,%rsi,8), %rcx
	cmpq	$0, %rcx
	je	.LBB1_53
# %bb.52:
	jmp	.LBB1_54
.LBB1_53:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$116, %edx
	leaq	.L__PRETTY_FUNCTION__._ZN5Board11legal_movesEv(%rip), %rcx
	callq	__assert_fail@PLT
.LBB1_54:
	movslq	-1740(%rbp), %rax
	leaq	_ZN5board6castleL13short_squaresE(%rip), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -1808(%rbp)
	movslq	-1740(%rbp), %rax
	leaq	_ZN5board6castleL16king_short_slideE(%rip), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -1816(%rbp)
	movq	-1808(%rbp), %rax
	andq	-1752(%rbp), %rax
	cmpq	$0, %rax
	jne	.LBB1_59
# %bb.55:
	movq	-1816(%rbp), %rsi
	movl	-1756(%rbp), %edx
	movq	-1840(%rbp), %rdi               # 8-byte Reload
	callq	_ZN5Board13attackers_to_Emi@PLT
	cmpq	$0, %rax
	jne	.LBB1_59
# %bb.56:
	movq	-1816(%rbp), %rsi
	movl	-1756(%rbp), %edx
	movq	-1840(%rbp), %rdi               # 8-byte Reload
	callq	_ZN5Board13attackers_to_Emi@PLT
	cmpq	$0, %rax
	jne	.LBB1_58
# %bb.57:
	movslq	-1740(%rbp), %rax
	movq	-1840(%rbp), %rcx               # 8-byte Reload
	movq	1224(%rcx,%rax,8), %rdi
	callq	_Z11u64ToSquarem
	movslq	-1740(%rbp), %rcx
	leaq	_ZN5board6castleL15king_short_destE(%rip), %rdx
	movq	(%rdx,%rcx,8), %rdi
	movl	%eax, -1888(%rbp)               # 4-byte Spill
	callq	_Z11u64ToSquarem
	leaq	-1728(%rbp), %rdi
	movl	-1888(%rbp), %esi               # 4-byte Reload
	movl	%eax, %edx
	movl	$3, %ecx
	callq	_ZN5CMoveC2Eiii
	leaq	-528(%rbp), %rdi
	movzwl	-1728(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
.LBB1_58:
	jmp	.LBB1_59
.LBB1_59:
	jmp	.LBB1_60
.LBB1_60:
	movq	-1824(%rbp), %rax               # 8-byte Reload
	leaq	-528(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movl	$516, %edx                      # imm = 0x204
	callq	memcpy@PLT
.LBB1_61:
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB1_63
# %bb.62:
	movq	-1832(%rbp), %rax               # 8-byte Reload
	addq	$1888, %rsp                     # imm = 0x760
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_63:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end1:
	.size	_ZN5Board11legal_movesEv, .Lfunc_end1-_ZN5Board11legal_movesEv
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
	subq	$1280, %rsp                     # imm = 0x500
	movq	%rdi, %rax
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	movq	%rsi, -1176(%rbp)
	movq	-1176(%rbp), %rcx
	testb	$1, 1220(%rcx)
	movq	%rdi, -1248(%rbp)               # 8-byte Spill
	movq	%rax, -1256(%rbp)               # 8-byte Spill
	movq	%rcx, -1264(%rbp)               # 8-byte Spill
	jne	.LBB2_2
# %bb.1:
	movq	-1264(%rbp), %rdi               # 8-byte Reload
	callq	_ZN5Board20GeneratePseudoLegal_Ev@PLT
.LBB2_2:
	movq	-1264(%rbp), %rdi               # 8-byte Reload
	callq	_ZNK5Board8is_checkEv@PLT
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB2_3
	jmp	.LBB2_4
.LBB2_3:
	jmp	.LBB2_5
.LBB2_4:
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$142, %edx
	leaq	.L__PRETTY_FUNCTION__._ZN5Board14capture_moves_Ev(%rip), %rcx
	callq	__assert_fail@PLT
.LBB2_5:
	movq	-1248(%rbp), %rdi               # 8-byte Reload
	callq	_ZN8MoveListILi256EEC2Ev
	leaq	-528(%rbp), %rdi
	callq	_ZN7u64ListC2Ev
	leaq	-1048(%rbp), %rdi
	callq	_ZN7u64ListC2Ev
	movq	-1264(%rbp), %rdi               # 8-byte Reload
	callq	_ZNK5Board4turnEv@PLT
	movl	%eax, -1180(%rbp)
	movl	-1180(%rbp), %esi
	movq	-1264(%rbp), %rdi               # 8-byte Reload
	callq	_ZNK5Board9occupancyEi@PLT
	movq	%rax, -1192(%rbp)
	movl	-1180(%rbp), %edi
	callq	_Z13oppositeColori
	movq	-1264(%rbp), %rdi               # 8-byte Reload
	movl	%eax, %esi
	callq	_ZNK5Board9occupancyEi@PLT
	movq	%rax, -1200(%rbp)
	movl	-1180(%rbp), %ecx
	movl	%ecx, -1204(%rbp)
.LBB2_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_8 Depth 2
                                        #       Child Loop BB2_10 Depth 3
	cmpl	$12, -1204(%rbp)
	jge	.LBB2_32
# %bb.7:                                #   in Loop: Header=BB2_6 Depth=1
	movslq	-1204(%rbp), %rax
	movq	-1264(%rbp), %rcx               # 8-byte Reload
	movq	(%rcx,%rax,8), %rdi
	leaq	-528(%rbp), %rsi
	callq	_Z10bitscanAllmR7u64List@PLT
	movl	$0, -1208(%rbp)
.LBB2_8:                                #   Parent Loop BB2_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_10 Depth 3
	movl	-1208(%rbp), %eax
	leaq	-528(%rbp), %rdi
	movl	%eax, -1268(%rbp)               # 4-byte Spill
	callq	_ZNK7u64List3lenEv
	movl	-1268(%rbp), %ecx               # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB2_30
# %bb.9:                                #   in Loop: Header=BB2_8 Depth=2
	movl	-1208(%rbp), %esi
	leaq	-528(%rbp), %rdi
	callq	_ZNK7u64ListixEi
	movq	%rax, %rdi
	callq	_Z11u64ToSquarem
	movl	%eax, -1212(%rbp)
	movq	-1264(%rbp), %rcx               # 8-byte Reload
	addq	$96, %rcx
	addq	$64, %rcx
	movslq	-1212(%rbp), %rsi
	movq	%rcx, %rdi
	callq	_ZNSt5arrayImLm64EEixEm
	movq	(%rax), %rax
	andq	-1200(%rbp), %rax
	movq	-1192(%rbp), %rcx
	xorq	$-1, %rcx
	andq	%rcx, %rax
	movq	%rax, -1224(%rbp)
	movq	-1224(%rbp), %rdi
	leaq	-1048(%rbp), %rsi
	callq	_Z10bitscanAllmR7u64List@PLT
	movl	$0, -1228(%rbp)
.LBB2_10:                               #   Parent Loop BB2_6 Depth=1
                                        #     Parent Loop BB2_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-1228(%rbp), %eax
	leaq	-1048(%rbp), %rdi
	movl	%eax, -1272(%rbp)               # 4-byte Spill
	callq	_ZNK7u64List3lenEv
	movl	-1272(%rbp), %ecx               # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB2_21
# %bb.11:                               #   in Loop: Header=BB2_10 Depth=3
	movl	-1228(%rbp), %esi
	leaq	-1048(%rbp), %rdi
	callq	_ZNK7u64ListixEi
	movq	%rax, %rdi
	callq	_Z11u64ToSquarem
	movl	%eax, -1232(%rbp)
	movl	-1204(%rbp), %edi
	callq	_ZN5piece7is_pawnEi
	testb	$1, %al
	jne	.LBB2_12
	jmp	.LBB2_16
.LBB2_12:                               #   in Loop: Header=BB2_10 Depth=3
	movl	-1232(%rbp), %edi
	movl	-1180(%rbp), %esi
	callq	_ZN9move_maps15isPromotingRankEii@PLT
	testb	$1, %al
	jne	.LBB2_13
	jmp	.LBB2_16
.LBB2_13:                               #   in Loop: Header=BB2_10 Depth=3
	movl	-1212(%rbp), %esi
	movl	-1232(%rbp), %edx
	leaq	-1056(%rbp), %rdi
	movl	$8, %ecx
	callq	_ZN5CMoveC2Eiii
	movl	-1212(%rbp), %esi
	movl	-1232(%rbp), %edx
	leaq	-1064(%rbp), %rdi
	movl	$6, %ecx
	callq	_ZN5CMoveC2Eiii
	movl	-1212(%rbp), %esi
	movl	-1232(%rbp), %edx
	leaq	-1072(%rbp), %rdi
	movl	$4, %ecx
	callq	_ZN5CMoveC2Eiii
	movl	-1212(%rbp), %esi
	movl	-1232(%rbp), %edx
	leaq	-1080(%rbp), %rdi
	movl	$2, %ecx
	callq	_ZN5CMoveC2Eiii
	movw	-1056(%rbp), %ax
	movw	%ax, -1088(%rbp)
	movq	-1264(%rbp), %rdi               # 8-byte Reload
	movzwl	-1088(%rbp), %esi
	callq	_ZN5Board19verify_move_safety_E5CMove@PLT
	testb	$1, %al
	jne	.LBB2_14
	jmp	.LBB2_15
.LBB2_14:                               #   in Loop: Header=BB2_10 Depth=3
	movw	-1056(%rbp), %ax
	movw	%ax, -1096(%rbp)
	movq	-1248(%rbp), %rdi               # 8-byte Reload
	movzwl	-1096(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
	movw	-1064(%rbp), %ax
	movw	%ax, -1104(%rbp)
	movq	-1248(%rbp), %rdi               # 8-byte Reload
	movzwl	-1104(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
	movw	-1072(%rbp), %ax
	movw	%ax, -1112(%rbp)
	movq	-1248(%rbp), %rdi               # 8-byte Reload
	movzwl	-1112(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
	movw	-1080(%rbp), %ax
	movw	%ax, -1120(%rbp)
	movq	-1248(%rbp), %rdi               # 8-byte Reload
	movzwl	-1120(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
.LBB2_15:                               #   in Loop: Header=BB2_10 Depth=3
	jmp	.LBB2_19
.LBB2_16:                               #   in Loop: Header=BB2_10 Depth=3
	movl	-1212(%rbp), %esi
	movl	-1232(%rbp), %edx
	leaq	-1128(%rbp), %rdi
	movl	$1, %ecx
	callq	_ZN5CMoveC2Eiii
	movw	-1128(%rbp), %ax
	movw	%ax, -1136(%rbp)
	movq	-1264(%rbp), %rdi               # 8-byte Reload
	movzwl	-1136(%rbp), %esi
	callq	_ZN5Board19verify_move_safety_E5CMove@PLT
	testb	$1, %al
	jne	.LBB2_17
	jmp	.LBB2_18
.LBB2_17:                               #   in Loop: Header=BB2_10 Depth=3
	movw	-1128(%rbp), %ax
	movw	%ax, -1144(%rbp)
	movq	-1248(%rbp), %rdi               # 8-byte Reload
	movzwl	-1144(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
.LBB2_18:                               #   in Loop: Header=BB2_10 Depth=3
	jmp	.LBB2_19
.LBB2_19:                               #   in Loop: Header=BB2_10 Depth=3
	jmp	.LBB2_20
.LBB2_20:                               #   in Loop: Header=BB2_10 Depth=3
	movl	-1228(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1228(%rbp)
	jmp	.LBB2_10
.LBB2_21:                               #   in Loop: Header=BB2_8 Depth=2
	movl	-1204(%rbp), %edi
	callq	_ZN5piece7is_pawnEi
	testb	$1, %al
	jne	.LBB2_22
	jmp	.LBB2_28
.LBB2_22:                               #   in Loop: Header=BB2_8 Depth=2
	movq	-1264(%rbp), %rax               # 8-byte Reload
	movl	112(%rax), %ecx
	movl	%ecx, -1236(%rbp)
	cmpl	$-1, -1236(%rbp)
	je	.LBB2_27
# %bb.23:                               #   in Loop: Header=BB2_8 Depth=2
	movl	-1236(%rbp), %edi
	callq	_Z13u64FromSquarei
	movq	-1264(%rbp), %rcx               # 8-byte Reload
	addq	$96, %rcx
	addq	$64, %rcx
	movslq	-1212(%rbp), %rsi
	movq	%rcx, %rdi
	movq	%rax, -1280(%rbp)               # 8-byte Spill
	callq	_ZNSt5arrayImLm64EEixEm
	movq	-1280(%rbp), %rcx               # 8-byte Reload
	andq	(%rax), %rcx
	cmpq	$0, %rcx
	je	.LBB2_27
# %bb.24:                               #   in Loop: Header=BB2_8 Depth=2
	movl	-1212(%rbp), %esi
	movl	-1236(%rbp), %edx
	leaq	-1152(%rbp), %rdi
	movl	$5, %ecx
	callq	_ZN5CMoveC2Eiii
	movw	-1152(%rbp), %ax
	movw	%ax, -1160(%rbp)
	movq	-1264(%rbp), %rdi               # 8-byte Reload
	movzwl	-1160(%rbp), %esi
	callq	_ZN5Board19verify_move_safety_E5CMove@PLT
	testb	$1, %al
	jne	.LBB2_25
	jmp	.LBB2_26
.LBB2_25:                               #   in Loop: Header=BB2_8 Depth=2
	movw	-1152(%rbp), %ax
	movw	%ax, -1168(%rbp)
	movq	-1248(%rbp), %rdi               # 8-byte Reload
	movzwl	-1168(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
.LBB2_26:                               #   in Loop: Header=BB2_8 Depth=2
	jmp	.LBB2_27
.LBB2_27:                               #   in Loop: Header=BB2_8 Depth=2
	jmp	.LBB2_28
.LBB2_28:                               #   in Loop: Header=BB2_8 Depth=2
	jmp	.LBB2_29
.LBB2_29:                               #   in Loop: Header=BB2_8 Depth=2
	movl	-1208(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1208(%rbp)
	jmp	.LBB2_8
.LBB2_30:                               #   in Loop: Header=BB2_6 Depth=1
	jmp	.LBB2_31
.LBB2_31:                               #   in Loop: Header=BB2_6 Depth=1
	movl	-1204(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -1204(%rbp)
	jmp	.LBB2_6
.LBB2_32:
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB2_34
# %bb.33:
	movq	-1256(%rbp), %rax               # 8-byte Reload
	addq	$1280, %rsp                     # imm = 0x500
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB2_34:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end2:
	.size	_ZN5Board14capture_moves_Ev, .Lfunc_end2-_ZN5Board14capture_moves_Ev
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
.Lfunc_end4:
	.size	_Z13oppositeColori, .Lfunc_end4-_Z13oppositeColori
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
.Lfunc_end5:
	.size	_ZNK7u64List3lenEv, .Lfunc_end5-_ZNK7u64List3lenEv
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
	je	.LBB6_2
# %bb.1:
	jmp	.LBB6_3
.LBB6_2:
	leaq	.L.str.3(%rip), %rdi
	leaq	.L.str.4(%rip), %rsi
	movl	$130, %edx
	leaq	.L__PRETTY_FUNCTION__._Z11u64ToSquarem(%rip), %rcx
	callq	__assert_fail@PLT
.LBB6_3:
	movq	-8(%rbp), %rdi
	callq	_Z14bitscanForwardm
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	_Z11u64ToSquarem, .Lfunc_end6-_Z11u64ToSquarem
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
.Lfunc_end7:
	.size	_ZNK7u64ListixEi, .Lfunc_end7-_ZNK7u64ListixEi
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
.Lfunc_end8:
	.size	_ZN5piece7is_pawnEi, .Lfunc_end8-_ZN5piece7is_pawnEi
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
.Lfunc_end9:
	.size	_ZNSt5arrayImLm64EEixEm, .Lfunc_end9-_ZNSt5arrayImLm64EEixEm
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
.Lfunc_end10:
	.size	_Z11squareToRowi, .Lfunc_end10-_Z11squareToRowi
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
	jne	.LBB11_2
# %bb.1:
	movl	-16(%rbp), %edi
	callq	_Z6dump32i@PLT
.LBB11_2:
	movl	-16(%rbp), %edi
	callq	_Z13isValidSquarei
	testb	$1, %al
	jne	.LBB11_4
# %bb.3:
	movl	-16(%rbp), %edi
	callq	_Z6dump32i@PLT
.LBB11_4:
	movl	-12(%rbp), %edi
	callq	_Z13isValidSquarei
	testb	$1, %al
	jne	.LBB11_5
	jmp	.LBB11_6
.LBB11_5:
	jmp	.LBB11_7
.LBB11_6:
	leaq	.L.str.5(%rip), %rdi
	leaq	.L.str.6(%rip), %rsi
	movl	$73, %edx
	leaq	.L__PRETTY_FUNCTION__._ZN5CMoveC2Eiii(%rip), %rcx
	callq	__assert_fail@PLT
.LBB11_7:
	movl	-16(%rbp), %edi
	callq	_Z13isValidSquarei
	testb	$1, %al
	jne	.LBB11_8
	jmp	.LBB11_9
.LBB11_8:
	jmp	.LBB11_10
.LBB11_9:
	leaq	.L.str.7(%rip), %rdi
	leaq	.L.str.6(%rip), %rsi
	movl	$74, %edx
	leaq	.L__PRETTY_FUNCTION__._ZN5CMoveC2Eiii(%rip), %rcx
	callq	__assert_fail@PLT
.LBB11_10:
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
.Lfunc_end11:
	.size	_ZN5CMoveC2Eiii, .Lfunc_end11-_ZN5CMoveC2Eiii
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
	jne	.LBB12_2
# %bb.1:
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB12_2:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end12:
	.size	_ZN8MoveListILi256EE8PushBackE5CMove, .Lfunc_end12-_ZN8MoveListILi256EE8PushBackE5CMove
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
.Lfunc_end13:
	.size	_ZN5piece8get_kingEi, .Lfunc_end13-_ZN5piece8get_kingEi
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
.LBB14_1:                               # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	%rax, %rdi
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	callq	_ZN5CMoveC2Ev
	movq	-40(%rbp), %rax                 # 8-byte Reload
	addq	$2, %rax
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	jne	.LBB14_1
# %bb.2:
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movl	$0, 512(%rax)
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end14:
	.size	_ZN8MoveListILi256EEC2Ev, .Lfunc_end14-_ZN8MoveListILi256EEC2Ev
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
	jne	.LBB15_1
	jmp	.LBB15_2
.LBB15_1:
	jmp	.LBB15_3
.LBB15_2:
	leaq	.L.str.8(%rip), %rdi
	leaq	.L.str.4(%rip), %rsi
	movl	$121, %edx
	leaq	.L__PRETTY_FUNCTION__._Z13u64FromSquarei(%rip), %rcx
	callq	__assert_fail@PLT
.LBB15_3:
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
.Lfunc_end15:
	.size	_Z13u64FromSquarei, .Lfunc_end15-_Z13u64FromSquarei
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
.Lfunc_end16:
	.size	_Z14bitscanForwardm, .Lfunc_end16-_Z14bitscanForwardm
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
.Lfunc_end17:
	.size	_ZN5piece12to_colorlessEi, .Lfunc_end17-_ZN5piece12to_colorlessEi
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
	jl	.LBB18_2
# %bb.1:
	cmpl	$64, -4(%rbp)
	setl	%al
	movb	%al, -5(%rbp)                   # 1-byte Spill
.LBB18_2:
	movb	-5(%rbp), %al                   # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end18:
	.size	_Z13isValidSquarei, .Lfunc_end18-_Z13isValidSquarei
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
.Lfunc_end19:
	.size	_ZNSt14__array_traitsImLm64EE6_S_refERA64_Kmm, .Lfunc_end19-_ZNSt14__array_traitsImLm64EE6_S_refERA64_Kmm
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
.Lfunc_end20:
	.size	_ZN5CMoveC2Ev, .Lfunc_end20-_ZN5CMoveC2Ev
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
.Lfunc_end21:
	.size	_GLOBAL__sub_I_move_generation.cpp, .Lfunc_end21-_GLOBAL__sub_I_move_generation.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"bitboard_[piece::get_king(curr_turn)] & king_starting_location[curr_turn]"
	.size	.L.str, 74

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"src/chess/move_generation.cpp"
	.size	.L.str.1, 30

	.type	.L__PRETTY_FUNCTION__._ZN5Board11legal_movesEv,@object # @__PRETTY_FUNCTION__._ZN5Board11legal_movesEv
.L__PRETTY_FUNCTION__._ZN5Board11legal_movesEv:
	.asciz	"MoveList<256> Board::legal_moves()"
	.size	.L__PRETTY_FUNCTION__._ZN5Board11legal_movesEv, 35

	.type	_ZN5board6castleL12long_squaresE,@object # @_ZN5board6castleL12long_squaresE
	.section	.rodata,"a",@progbits
	.p2align	4
_ZN5board6castleL12long_squaresE:
	.quad	14                              # 0xe
	.quad	1008806316530991104             # 0xe00000000000000
	.size	_ZN5board6castleL12long_squaresE, 16

	.type	_ZN5board6castleL15king_long_slideE,@object # @_ZN5board6castleL15king_long_slideE
	.p2align	4
_ZN5board6castleL15king_long_slideE:
	.quad	12                              # 0xc
	.quad	864691128455135232              # 0xc00000000000000
	.size	_ZN5board6castleL15king_long_slideE, 16

	.type	_ZN5board6castleL14king_long_destE,@object # @_ZN5board6castleL14king_long_destE
	.p2align	4
_ZN5board6castleL14king_long_destE:
	.quad	4                               # 0x4
	.quad	288230376151711744              # 0x400000000000000
	.size	_ZN5board6castleL14king_long_destE, 16

	.type	_ZN5board6castleL13short_squaresE,@object # @_ZN5board6castleL13short_squaresE
	.p2align	4
_ZN5board6castleL13short_squaresE:
	.quad	96                              # 0x60
	.quad	6917529027641081856             # 0x6000000000000000
	.size	_ZN5board6castleL13short_squaresE, 16

	.type	_ZN5board6castleL16king_short_slideE,@object # @_ZN5board6castleL16king_short_slideE
	.p2align	4
_ZN5board6castleL16king_short_slideE:
	.quad	96                              # 0x60
	.quad	6917529027641081856             # 0x6000000000000000
	.size	_ZN5board6castleL16king_short_slideE, 16

	.type	_ZN5board6castleL15king_short_destE,@object # @_ZN5board6castleL15king_short_destE
	.p2align	4
_ZN5board6castleL15king_short_destE:
	.quad	64                              # 0x40
	.quad	4611686018427387904             # 0x4000000000000000
	.size	_ZN5board6castleL15king_short_destE, 16

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"!is_check()"
	.size	.L.str.2, 12

	.type	.L__PRETTY_FUNCTION__._ZN5Board14capture_moves_Ev,@object # @__PRETTY_FUNCTION__._ZN5Board14capture_moves_Ev
.L__PRETTY_FUNCTION__._ZN5Board14capture_moves_Ev:
	.asciz	"MoveList<256> Board::capture_moves_()"
	.size	.L__PRETTY_FUNCTION__._ZN5Board14capture_moves_Ev, 38

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"x != 0"
	.size	.L.str.3, 7

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"include/misc/bits.hpp"
	.size	.L.str.4, 22

	.type	.L__PRETTY_FUNCTION__._Z11u64ToSquarem,@object # @__PRETTY_FUNCTION__._Z11u64ToSquarem
.L__PRETTY_FUNCTION__._Z11u64ToSquarem:
	.asciz	"int u64ToSquare(uint64_t)"
	.size	.L__PRETTY_FUNCTION__._Z11u64ToSquarem, 26

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"isValidSquare(src_)"
	.size	.L.str.5, 20

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"include/game/cmove.hpp"
	.size	.L.str.6, 23

	.type	.L__PRETTY_FUNCTION__._ZN5CMoveC2Eiii,@object # @__PRETTY_FUNCTION__._ZN5CMoveC2Eiii
.L__PRETTY_FUNCTION__._ZN5CMoveC2Eiii:
	.asciz	"CMove::CMove(int, int, int)"
	.size	.L__PRETTY_FUNCTION__._ZN5CMoveC2Eiii, 28

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"isValidSquare(dest_)"
	.size	.L.str.7, 21

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"isValidSquare(s)"
	.size	.L.str.8, 17

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
	.addrsig_sym _ZN5Board20GeneratePseudoLegal_Ev
	.addrsig_sym _ZNK5Board8is_checkEv
	.addrsig_sym _ZN5Board22produce_uncheck_moves_Ev
	.addrsig_sym _ZN5Board14capture_moves_Ev
	.addrsig_sym _ZNK5Board4turnEv
	.addrsig_sym _ZNK5Board9occupancyEv
	.addrsig_sym _Z13oppositeColori
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
	.addrsig_sym _ZN8MoveListILi256EE8PushBackE5CMove
	.addrsig_sym _ZN9move_maps15isPromotingRankEii
	.addrsig_sym _ZNK5board6castle6Rights3getEii
	.addrsig_sym _ZN5piece8get_kingEi
	.addrsig_sym __assert_fail
	.addrsig_sym _ZN5Board13attackers_to_Emi
	.addrsig_sym _ZNK5Board9occupancyEi
	.addrsig_sym _Z13u64FromSquarei
	.addrsig_sym _Z14bitscanForwardm
	.addrsig_sym _ZN5piece12to_colorlessEi
	.addrsig_sym _Z13isValidSquarei
	.addrsig_sym _Z6dump32i
	.addrsig_sym _ZNSt14__array_traitsImLm64EE6_S_refERA64_Kmm
	.addrsig_sym _GLOBAL__sub_I_move_generation.cpp
	.addrsig_sym __stack_chk_fail
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym _ZN5board6castleL12long_squaresE
	.addrsig_sym _ZN5board6castleL15king_long_slideE
	.addrsig_sym _ZN5board6castleL14king_long_destE
	.addrsig_sym _ZN5board6castleL13short_squaresE
	.addrsig_sym _ZN5board6castleL16king_short_slideE
	.addrsig_sym _ZN5board6castleL15king_short_destE
