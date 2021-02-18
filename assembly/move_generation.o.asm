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
	callq	_ZN5Board20GeneratePseudoLegal_Ev@PLT
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
	movl	$15, %edx
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
	subq	$1840, %rsp                     # imm = 0x730
	movq	%rdi, %rax
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	movq	%rsi, -1720(%rbp)
	movq	-1720(%rbp), %rcx
	testb	$1, 1228(%rcx)
	movq	%rdi, -1776(%rbp)               # 8-byte Spill
	movq	%rax, -1784(%rbp)               # 8-byte Spill
	movq	%rcx, -1792(%rbp)               # 8-byte Spill
	jne	.LBB3_2
# %bb.1:
	movq	-1792(%rbp), %rdi               # 8-byte Reload
	callq	_ZN5Board20GeneratePseudoLegal_Ev@PLT
.LBB3_2:
	movq	-1792(%rbp), %rdi               # 8-byte Reload
	callq	_ZNK5Board8is_checkEv@PLT
	testb	$1, %al
	jne	.LBB3_3
	jmp	.LBB3_4
.LBB3_3:
	movq	-1776(%rbp), %rdi               # 8-byte Reload
	movq	-1792(%rbp), %rsi               # 8-byte Reload
	callq	_ZN5Board22produce_uncheck_moves_Ev
	jmp	.LBB3_41
.LBB3_4:
	leaq	-528(%rbp), %rdi
	movq	-1792(%rbp), %rsi               # 8-byte Reload
	callq	_ZN5Board14capture_moves_Ev
	leaq	-1048(%rbp), %rdi
	callq	_ZN7u64ListC2Ev
	leaq	-1568(%rbp), %rdi
	callq	_ZN7u64ListC2Ev
	movq	-1792(%rbp), %rdi               # 8-byte Reload
	callq	_ZNK5Board4turnEv@PLT
	movl	%eax, -1724(%rbp)
	movq	-1792(%rbp), %rdi               # 8-byte Reload
	callq	_ZNK5Board9occupancyEv@PLT
	movq	%rax, -1736(%rbp)
	movl	-1724(%rbp), %ecx
	movl	%ecx, -1740(%rbp)
.LBB3_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_7 Depth 2
                                        #       Child Loop BB3_16 Depth 3
	cmpl	$12, -1740(%rbp)
	jge	.LBB3_40
# %bb.6:                                #   in Loop: Header=BB3_5 Depth=1
	movslq	-1740(%rbp), %rax
	movq	-1792(%rbp), %rcx               # 8-byte Reload
	movq	(%rcx,%rax,8), %rdi
	leaq	-1048(%rbp), %rsi
	callq	_Z10bitscanAllmR7u64List@PLT
	movl	$0, -1744(%rbp)
.LBB3_7:                                #   Parent Loop BB3_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_16 Depth 3
	movl	-1744(%rbp), %eax
	leaq	-1048(%rbp), %rdi
	movl	%eax, -1796(%rbp)               # 4-byte Spill
	callq	_ZNK7u64List3lenEv
	movl	-1796(%rbp), %ecx               # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB3_38
# %bb.8:                                #   in Loop: Header=BB3_7 Depth=2
	movl	-1744(%rbp), %esi
	leaq	-1048(%rbp), %rdi
	callq	_ZNK7u64ListixEi
	movq	%rax, %rdi
	callq	_Z11u64ToSquarem
	movl	%eax, -1748(%rbp)
	movq	$0, -1760(%rbp)
	movl	-1740(%rbp), %edi
	callq	_ZN5piece7is_pawnEi
	testb	$1, %al
	jne	.LBB3_9
	jmp	.LBB3_14
.LBB3_9:                                #   in Loop: Header=BB3_7 Depth=2
	movq	-1736(%rbp), %rax
	xorq	$-1, %rax
	movl	-1748(%rbp), %edi
	movl	-1724(%rbp), %esi
	movq	%rax, -1808(%rbp)               # 8-byte Spill
	callq	_ZN9move_maps9pawnMovesEii@PLT
	movq	-1808(%rbp), %rcx               # 8-byte Reload
	andq	%rax, %rcx
	movq	%rcx, -1760(%rbp)
	movl	-1748(%rbp), %edi
	movl	-1724(%rbp), %esi
	callq	_ZN9move_maps14isStartingRankEii@PLT
	testb	$1, %al
	jne	.LBB3_10
	jmp	.LBB3_13
.LBB3_10:                               #   in Loop: Header=BB3_7 Depth=2
	cmpq	$0, -1760(%rbp)
	je	.LBB3_12
# %bb.11:                               #   in Loop: Header=BB3_7 Depth=2
	movq	-1736(%rbp), %rax
	xorq	$-1, %rax
	movl	-1748(%rbp), %edi
	movl	-1724(%rbp), %esi
	movq	%rax, -1816(%rbp)               # 8-byte Spill
	callq	_ZN9move_maps15pawnDoubleMovesEii@PLT
	movq	-1816(%rbp), %rcx               # 8-byte Reload
	andq	%rax, %rcx
	orq	-1760(%rbp), %rcx
	movq	%rcx, -1760(%rbp)
.LBB3_12:                               #   in Loop: Header=BB3_7 Depth=2
	jmp	.LBB3_13
.LBB3_13:                               #   in Loop: Header=BB3_7 Depth=2
	jmp	.LBB3_15
.LBB3_14:                               #   in Loop: Header=BB3_7 Depth=2
	movq	-1736(%rbp), %rax
	xorq	$-1, %rax
	movq	-1792(%rbp), %rcx               # 8-byte Reload
	addq	$104, %rcx
	addq	$64, %rcx
	movslq	-1748(%rbp), %rsi
	movq	%rcx, %rdi
	movq	%rax, -1824(%rbp)               # 8-byte Spill
	callq	_ZNSt5arrayImLm64EEixEm
	movq	-1824(%rbp), %rcx               # 8-byte Reload
	andq	(%rax), %rcx
	movq	%rcx, -1760(%rbp)
.LBB3_15:                               #   in Loop: Header=BB3_7 Depth=2
	movq	-1760(%rbp), %rdi
	leaq	-1568(%rbp), %rsi
	callq	_Z10bitscanAllmR7u64List@PLT
	movl	$0, -1764(%rbp)
.LBB3_16:                               #   Parent Loop BB3_5 Depth=1
                                        #     Parent Loop BB3_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-1764(%rbp), %eax
	leaq	-1568(%rbp), %rdi
	movl	%eax, -1828(%rbp)               # 4-byte Spill
	callq	_ZNK7u64List3lenEv
	movl	-1828(%rbp), %ecx               # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB3_36
# %bb.17:                               #   in Loop: Header=BB3_16 Depth=3
	movl	-1764(%rbp), %esi
	leaq	-1568(%rbp), %rdi
	callq	_ZNK7u64ListixEi
	movq	%rax, %rdi
	callq	_Z11u64ToSquarem
	movl	%eax, -1768(%rbp)
	movl	-1740(%rbp), %edi
	callq	_ZN5piece7is_pawnEi
	testb	$1, %al
	jne	.LBB3_18
	jmp	.LBB3_31
.LBB3_18:                               #   in Loop: Header=BB3_16 Depth=3
	movl	-1748(%rbp), %edi
	callq	_Z11squareToRowi
	movl	-1768(%rbp), %edi
	movl	%eax, -1832(%rbp)               # 4-byte Spill
	callq	_Z11squareToRowi
	movl	-1832(%rbp), %ecx               # 4-byte Reload
	subl	%eax, %ecx
	movl	%ecx, %edi
	callq	abs@PLT
	cmpl	$2, %eax
	jne	.LBB3_22
# %bb.19:                               #   in Loop: Header=BB3_16 Depth=3
	movl	-1748(%rbp), %esi
	movl	-1768(%rbp), %edx
	leaq	-1576(%rbp), %rdi
	movl	$7, %ecx
	callq	_ZN5CMoveC2Eiii
	movw	-1576(%rbp), %ax
	movw	%ax, -1584(%rbp)
	movq	-1792(%rbp), %rdi               # 8-byte Reload
	movzwl	-1584(%rbp), %esi
	callq	_ZN5Board19verify_move_safety_E5CMove@PLT
	testb	$1, %al
	jne	.LBB3_20
	jmp	.LBB3_21
.LBB3_20:                               #   in Loop: Header=BB3_16 Depth=3
	movw	-1576(%rbp), %ax
	movw	%ax, -1592(%rbp)
	leaq	-528(%rbp), %rdi
	movzwl	-1592(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
.LBB3_21:                               #   in Loop: Header=BB3_16 Depth=3
	jmp	.LBB3_30
.LBB3_22:                               #   in Loop: Header=BB3_16 Depth=3
	movl	-1768(%rbp), %edi
	movl	-1724(%rbp), %esi
	callq	_ZN9move_maps15isPromotingRankEii@PLT
	testb	$1, %al
	jne	.LBB3_23
	jmp	.LBB3_26
.LBB3_23:                               #   in Loop: Header=BB3_16 Depth=3
	movl	-1748(%rbp), %esi
	movl	-1768(%rbp), %edx
	leaq	-1600(%rbp), %rdi
	movl	$8, %ecx
	callq	_ZN5CMoveC2Eiii
	movl	-1748(%rbp), %esi
	movl	-1768(%rbp), %edx
	leaq	-1608(%rbp), %rdi
	movl	$6, %ecx
	callq	_ZN5CMoveC2Eiii
	movl	-1748(%rbp), %esi
	movl	-1768(%rbp), %edx
	leaq	-1616(%rbp), %rdi
	movl	$4, %ecx
	callq	_ZN5CMoveC2Eiii
	movl	-1748(%rbp), %esi
	movl	-1768(%rbp), %edx
	leaq	-1624(%rbp), %rdi
	movl	$2, %ecx
	callq	_ZN5CMoveC2Eiii
	movw	-1600(%rbp), %ax
	movw	%ax, -1632(%rbp)
	movq	-1792(%rbp), %rdi               # 8-byte Reload
	movzwl	-1632(%rbp), %esi
	callq	_ZN5Board19verify_move_safety_E5CMove@PLT
	testb	$1, %al
	jne	.LBB3_24
	jmp	.LBB3_25
.LBB3_24:                               #   in Loop: Header=BB3_16 Depth=3
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
.LBB3_25:                               #   in Loop: Header=BB3_16 Depth=3
	jmp	.LBB3_29
.LBB3_26:                               #   in Loop: Header=BB3_16 Depth=3
	movl	-1748(%rbp), %esi
	movl	-1768(%rbp), %edx
	leaq	-1672(%rbp), %rdi
	movl	$1, %ecx
	callq	_ZN5CMoveC2Eiii
	movw	-1672(%rbp), %ax
	movw	%ax, -1680(%rbp)
	movq	-1792(%rbp), %rdi               # 8-byte Reload
	movzwl	-1680(%rbp), %esi
	callq	_ZN5Board19verify_move_safety_E5CMove@PLT
	testb	$1, %al
	jne	.LBB3_27
	jmp	.LBB3_28
.LBB3_27:                               #   in Loop: Header=BB3_16 Depth=3
	movw	-1672(%rbp), %ax
	movw	%ax, -1688(%rbp)
	leaq	-528(%rbp), %rdi
	movzwl	-1688(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
.LBB3_28:                               #   in Loop: Header=BB3_16 Depth=3
	jmp	.LBB3_29
.LBB3_29:                               #   in Loop: Header=BB3_16 Depth=3
	jmp	.LBB3_30
.LBB3_30:                               #   in Loop: Header=BB3_16 Depth=3
	jmp	.LBB3_34
.LBB3_31:                               #   in Loop: Header=BB3_16 Depth=3
	movl	-1748(%rbp), %esi
	movl	-1768(%rbp), %edx
	leaq	-1696(%rbp), %rdi
	movl	$1, %ecx
	callq	_ZN5CMoveC2Eiii
	movw	-1696(%rbp), %ax
	movw	%ax, -1704(%rbp)
	movq	-1792(%rbp), %rdi               # 8-byte Reload
	movzwl	-1704(%rbp), %esi
	callq	_ZN5Board19verify_move_safety_E5CMove@PLT
	testb	$1, %al
	jne	.LBB3_32
	jmp	.LBB3_33
.LBB3_32:                               #   in Loop: Header=BB3_16 Depth=3
	movw	-1696(%rbp), %ax
	movw	%ax, -1712(%rbp)
	leaq	-528(%rbp), %rdi
	movzwl	-1712(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
.LBB3_33:                               #   in Loop: Header=BB3_16 Depth=3
	jmp	.LBB3_34
.LBB3_34:                               #   in Loop: Header=BB3_16 Depth=3
	jmp	.LBB3_35
.LBB3_35:                               #   in Loop: Header=BB3_16 Depth=3
	movl	-1764(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1764(%rbp)
	jmp	.LBB3_16
.LBB3_36:                               #   in Loop: Header=BB3_7 Depth=2
	jmp	.LBB3_37
.LBB3_37:                               #   in Loop: Header=BB3_7 Depth=2
	movl	-1744(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1744(%rbp)
	jmp	.LBB3_7
.LBB3_38:                               #   in Loop: Header=BB3_5 Depth=1
	jmp	.LBB3_39
.LBB3_39:                               #   in Loop: Header=BB3_5 Depth=1
	movl	-1740(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -1740(%rbp)
	jmp	.LBB3_5
.LBB3_40:
	movq	-1776(%rbp), %rax               # 8-byte Reload
	leaq	-528(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movl	$516, %edx                      # imm = 0x204
	callq	memcpy@PLT
.LBB3_41:
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB3_43
# %bb.42:
	movq	-1784(%rbp), %rax               # 8-byte Reload
	addq	$1840, %rsp                     # imm = 0x730
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB3_43:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end3:
	.size	_ZN5Board11legal_movesEv, .Lfunc_end3-_ZN5Board11legal_movesEv
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
	jne	.LBB4_2
# %bb.1:
	movq	-1216(%rbp), %rdi               # 8-byte Reload
	callq	_ZN5Board20GeneratePseudoLegal_Ev@PLT
.LBB4_2:
	movq	-1216(%rbp), %rdi               # 8-byte Reload
	callq	_ZNK5Board8is_checkEv@PLT
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB4_3
	jmp	.LBB4_4
.LBB4_3:
	jmp	.LBB4_5
.LBB4_4:
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$308, %edx                      # imm = 0x134
	leaq	.L__PRETTY_FUNCTION__._ZN5Board14capture_moves_Ev(%rip), %rcx
	callq	__assert_fail@PLT
.LBB4_5:
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
.LBB4_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_8 Depth 2
                                        #       Child Loop BB4_10 Depth 3
	cmpl	$12, -1168(%rbp)
	jge	.LBB4_25
# %bb.7:                                #   in Loop: Header=BB4_6 Depth=1
	movslq	-1168(%rbp), %rax
	movq	-1216(%rbp), %rcx               # 8-byte Reload
	movq	(%rcx,%rax,8), %rdi
	leaq	-528(%rbp), %rsi
	callq	_Z10bitscanAllmR7u64List@PLT
	movl	$0, -1172(%rbp)
.LBB4_8:                                #   Parent Loop BB4_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_10 Depth 3
	movl	-1172(%rbp), %eax
	leaq	-528(%rbp), %rdi
	movl	%eax, -1220(%rbp)               # 4-byte Spill
	callq	_ZNK7u64List3lenEv
	movl	-1220(%rbp), %ecx               # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB4_23
# %bb.9:                                #   in Loop: Header=BB4_8 Depth=2
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
.LBB4_10:                               #   Parent Loop BB4_6 Depth=1
                                        #     Parent Loop BB4_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-1188(%rbp), %eax
	leaq	-1048(%rbp), %rdi
	movl	%eax, -1224(%rbp)               # 4-byte Spill
	callq	_ZNK7u64List3lenEv
	movl	-1224(%rbp), %ecx               # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB4_21
# %bb.11:                               #   in Loop: Header=BB4_10 Depth=3
	movl	-1188(%rbp), %esi
	leaq	-1048(%rbp), %rdi
	callq	_ZNK7u64ListixEi
	movq	%rax, %rdi
	callq	_Z11u64ToSquarem
	movl	%eax, -1192(%rbp)
	movl	-1168(%rbp), %edi
	callq	_ZN5piece7is_pawnEi
	testb	$1, %al
	jne	.LBB4_12
	jmp	.LBB4_16
.LBB4_12:                               #   in Loop: Header=BB4_10 Depth=3
	movl	-1192(%rbp), %edi
	movl	-1156(%rbp), %esi
	callq	_ZN9move_maps15isPromotingRankEii@PLT
	testb	$1, %al
	jne	.LBB4_13
	jmp	.LBB4_16
.LBB4_13:                               #   in Loop: Header=BB4_10 Depth=3
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
	callq	_ZN5Board19verify_move_safety_E5CMove@PLT
	testb	$1, %al
	jne	.LBB4_14
	jmp	.LBB4_15
.LBB4_14:                               #   in Loop: Header=BB4_10 Depth=3
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
.LBB4_15:                               #   in Loop: Header=BB4_10 Depth=3
	jmp	.LBB4_19
.LBB4_16:                               #   in Loop: Header=BB4_10 Depth=3
	movl	-1176(%rbp), %esi
	movl	-1192(%rbp), %edx
	leaq	-1128(%rbp), %rdi
	movl	$1, %ecx
	callq	_ZN5CMoveC2Eiii
	movw	-1128(%rbp), %ax
	movw	%ax, -1136(%rbp)
	movq	-1216(%rbp), %rdi               # 8-byte Reload
	movzwl	-1136(%rbp), %esi
	callq	_ZN5Board19verify_move_safety_E5CMove@PLT
	testb	$1, %al
	jne	.LBB4_17
	jmp	.LBB4_18
.LBB4_17:                               #   in Loop: Header=BB4_10 Depth=3
	movw	-1128(%rbp), %ax
	movw	%ax, -1144(%rbp)
	movq	-1200(%rbp), %rdi               # 8-byte Reload
	movzwl	-1144(%rbp), %esi
	callq	_ZN8MoveListILi256EE8PushBackE5CMove
.LBB4_18:                               #   in Loop: Header=BB4_10 Depth=3
	jmp	.LBB4_19
.LBB4_19:                               #   in Loop: Header=BB4_10 Depth=3
	jmp	.LBB4_20
.LBB4_20:                               #   in Loop: Header=BB4_10 Depth=3
	movl	-1188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1188(%rbp)
	jmp	.LBB4_10
.LBB4_21:                               #   in Loop: Header=BB4_8 Depth=2
	jmp	.LBB4_22
.LBB4_22:                               #   in Loop: Header=BB4_8 Depth=2
	movl	-1172(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1172(%rbp)
	jmp	.LBB4_8
.LBB4_23:                               #   in Loop: Header=BB4_6 Depth=1
	jmp	.LBB4_24
.LBB4_24:                               #   in Loop: Header=BB4_6 Depth=1
	movl	-1168(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -1168(%rbp)
	jmp	.LBB4_6
.LBB4_25:
	movq	-1216(%rbp), %rax               # 8-byte Reload
	cmpl	$-1, 120(%rax)
	je	.LBB4_27
# %bb.26:
	jmp	.LBB4_27
.LBB4_27:
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB4_29
# %bb.28:
	movq	-1208(%rbp), %rax               # 8-byte Reload
	addq	$1232, %rsp                     # imm = 0x4D0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB4_29:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end4:
	.size	_ZN5Board14capture_moves_Ev, .Lfunc_end4-_ZN5Board14capture_moves_Ev
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
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$64, -12(%rbp)
	jge	.LBB5_4
# %bb.2:                                #   in Loop: Header=BB5_1 Depth=1
	movslq	-12(%rbp), %rax
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	movq	$0, (%rcx,%rax,8)
# %bb.3:                                #   in Loop: Header=BB5_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB5_1
.LBB5_4:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	_ZN7u64ListC2Ev, .Lfunc_end5-_ZN7u64ListC2Ev
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
.Lfunc_end6:
	.size	_ZNK7u64List3lenEv, .Lfunc_end6-_ZNK7u64List3lenEv
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
	leaq	.L.str.3(%rip), %rdi
	leaq	.L.str.4(%rip), %rsi
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
.Lfunc_end8:
	.size	_ZNK7u64ListixEi, .Lfunc_end8-_ZNK7u64ListixEi
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
.Lfunc_end9:
	.size	_ZN5piece7is_pawnEi, .Lfunc_end9-_ZN5piece7is_pawnEi
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
.Lfunc_end10:
	.size	_ZNSt5arrayImLm64EEixEm, .Lfunc_end10-_ZNSt5arrayImLm64EEixEm
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
.Lfunc_end11:
	.size	_Z11squareToRowi, .Lfunc_end11-_Z11squareToRowi
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
	jne	.LBB12_2
# %bb.1:
	movl	-16(%rbp), %edi
	callq	_Z6dump32i@PLT
.LBB12_2:
	movl	-16(%rbp), %edi
	callq	_Z13isValidSquarei
	testb	$1, %al
	jne	.LBB12_4
# %bb.3:
	movl	-16(%rbp), %edi
	callq	_Z6dump32i@PLT
.LBB12_4:
	movl	-12(%rbp), %edi
	callq	_Z13isValidSquarei
	testb	$1, %al
	jne	.LBB12_5
	jmp	.LBB12_6
.LBB12_5:
	jmp	.LBB12_7
.LBB12_6:
	leaq	.L.str.5(%rip), %rdi
	leaq	.L.str.6(%rip), %rsi
	movl	$73, %edx
	leaq	.L__PRETTY_FUNCTION__._ZN5CMoveC2Eiii(%rip), %rcx
	callq	__assert_fail@PLT
.LBB12_7:
	movl	-16(%rbp), %edi
	callq	_Z13isValidSquarei
	testb	$1, %al
	jne	.LBB12_8
	jmp	.LBB12_9
.LBB12_8:
	jmp	.LBB12_10
.LBB12_9:
	leaq	.L.str.7(%rip), %rdi
	leaq	.L.str.6(%rip), %rsi
	movl	$74, %edx
	leaq	.L__PRETTY_FUNCTION__._ZN5CMoveC2Eiii(%rip), %rcx
	callq	__assert_fail@PLT
.LBB12_10:
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
.Lfunc_end12:
	.size	_ZN5CMoveC2Eiii, .Lfunc_end12-_ZN5CMoveC2Eiii
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
	jne	.LBB13_2
# %bb.1:
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB13_2:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end13:
	.size	_ZN8MoveListILi256EE8PushBackE5CMove, .Lfunc_end13-_ZN8MoveListILi256EE8PushBackE5CMove
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
.Lfunc_end14:
	.size	_Z13oppositeColori, .Lfunc_end14-_Z13oppositeColori
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
.Lfunc_end15:
	.size	_Z14bitscanForwardm, .Lfunc_end15-_Z14bitscanForwardm
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
.Lfunc_end16:
	.size	_ZN5piece12to_colorlessEi, .Lfunc_end16-_ZN5piece12to_colorlessEi
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
	jl	.LBB17_2
# %bb.1:
	cmpl	$64, -4(%rbp)
	setl	%al
	movb	%al, -5(%rbp)                   # 1-byte Spill
.LBB17_2:
	movb	-5(%rbp), %al                   # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end17:
	.size	_Z13isValidSquarei, .Lfunc_end17-_Z13isValidSquarei
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
.Lfunc_end18:
	.size	_ZN5CMoveC2Ev, .Lfunc_end18-_ZN5CMoveC2Ev
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
.Lfunc_end20:
	.size	_GLOBAL__sub_I_move_generation.cpp, .Lfunc_end20-_GLOBAL__sub_I_move_generation.cpp
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
	.addrsig_sym _ZNK5Board9occupancyEi
	.addrsig_sym _Z13oppositeColori
	.addrsig_sym _Z14bitscanForwardm
	.addrsig_sym _ZN5piece12to_colorlessEi
	.addrsig_sym _Z13isValidSquarei
	.addrsig_sym _Z6dump32i
	.addrsig_sym _ZNSt14__array_traitsImLm64EE6_S_refERA64_Kmm
	.addrsig_sym _GLOBAL__sub_I_move_generation.cpp
	.addrsig_sym __stack_chk_fail
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
