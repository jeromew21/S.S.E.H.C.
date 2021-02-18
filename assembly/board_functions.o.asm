	.text
	.file	"board_functions.cpp"
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
	.globl	_ZN5Board13attackers_to_Em      # -- Begin function _ZN5Board13attackers_to_Em
	.p2align	4, 0x90
	.type	_ZN5Board13attackers_to_Em,@function
_ZN5Board13attackers_to_Em:             # @_ZN5Board13attackers_to_Em
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$592, %rsp                      # imm = 0x250
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -536(%rbp)
	movq	%rsi, -544(%rbp)
	movq	-536(%rbp), %rax
	testb	$1, 1228(%rax)
	movq	%rax, -568(%rbp)                # 8-byte Spill
	je	.LBB1_2
# %bb.1:
	jmp	.LBB1_3
.LBB1_2:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$8, %edx
	leaq	.L__PRETTY_FUNCTION__._ZN5Board13attackers_to_Em(%rip), %rcx
	callq	__assert_fail@PLT
.LBB1_3:
	cmpq	$0, -544(%rbp)
	je	.LBB1_5
# %bb.4:
	jmp	.LBB1_6
.LBB1_5:
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$9, %edx
	leaq	.L__PRETTY_FUNCTION__._ZN5Board13attackers_to_Em(%rip), %rcx
	callq	__assert_fail@PLT
.LBB1_6:
	movq	$0, -552(%rbp)
	leaq	-528(%rbp), %rdi
	callq	_ZN7u64ListC2Ev
	movq	-544(%rbp), %rdi
	leaq	-528(%rbp), %rsi
	callq	_Z10bitscanAllmR7u64List@PLT
	movl	$0, -556(%rbp)
.LBB1_7:                                # =>This Inner Loop Header: Depth=1
	movl	-556(%rbp), %eax
	leaq	-528(%rbp), %rdi
	movl	%eax, -572(%rbp)                # 4-byte Spill
	callq	_ZNK7u64List3lenEv
	movl	-572(%rbp), %ecx                # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB1_10
# %bb.8:                                #   in Loop: Header=BB1_7 Depth=1
	movq	-568(%rbp), %rax                # 8-byte Reload
	addq	$104, %rax
	addq	$576, %rax                      # imm = 0x240
	movl	-556(%rbp), %esi
	leaq	-528(%rbp), %rdi
	movq	%rax, -584(%rbp)                # 8-byte Spill
	callq	_ZNK7u64ListixEi
	movq	-584(%rbp), %rdi                # 8-byte Reload
	movq	%rax, %rsi
	callq	_ZNSt5arrayImLm64EEixEm
	movq	(%rax), %rax
	orq	-552(%rbp), %rax
	movq	%rax, -552(%rbp)
# %bb.9:                                #   in Loop: Header=BB1_7 Depth=1
	movl	-556(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -556(%rbp)
	jmp	.LBB1_7
.LBB1_10:
	movq	-552(%rbp), %rax
	movq	%fs:40, %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movq	%rax, -592(%rbp)                # 8-byte Spill
	jne	.LBB1_12
# %bb.11:
	movq	-592(%rbp), %rax                # 8-byte Reload
	addq	$592, %rsp                      # imm = 0x250
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_12:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end1:
	.size	_ZN5Board13attackers_to_Em, .Lfunc_end1-_ZN5Board13attackers_to_Em
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
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$64, -12(%rbp)
	jge	.LBB2_4
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	movslq	-12(%rbp), %rax
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	movq	$0, (%rcx,%rax,8)
# %bb.3:                                #   in Loop: Header=BB2_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB2_1
.LBB2_4:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	_ZN7u64ListC2Ev, .Lfunc_end2-_ZN7u64ListC2Ev
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
.Lfunc_end3:
	.size	_ZNK7u64List3lenEv, .Lfunc_end3-_ZNK7u64List3lenEv
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
.Lfunc_end4:
	.size	_ZNSt5arrayImLm64EEixEm, .Lfunc_end4-_ZNSt5arrayImLm64EEixEm
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
.Lfunc_end5:
	.size	_ZNK7u64ListixEi, .Lfunc_end5-_ZNK7u64ListixEi
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN5Board13attackers_to_Emi     # -- Begin function _ZN5Board13attackers_to_Emi
	.p2align	4, 0x90
	.type	_ZN5Board13attackers_to_Emi,@function
_ZN5Board13attackers_to_Emi:            # @_ZN5Board13attackers_to_Emi
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
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	callq	_ZN5Board13attackers_to_Em
	movl	-20(%rbp), %esi
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	callq	_ZNK5Board9occupancyEi@PLT
	movq	-40(%rbp), %rcx                 # 8-byte Reload
	andq	%rax, %rcx
	movq	%rcx, %rax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	_ZN5Board13attackers_to_Emi, .Lfunc_end6-_ZN5Board13attackers_to_Emi
	.cfi_endproc
                                        # -- End function
	.globl	_ZN5Board9AddPiece_Eim          # -- Begin function _ZN5Board9AddPiece_Eim
	.p2align	4, 0x90
	.type	_ZN5Board9AddPiece_Eim,@function
_ZN5Board9AddPiece_Eim:                 # @_ZN5Board9AddPiece_Eim
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	-12(%rbp), %rdx
	orq	(%rax,%rdx,8), %rcx
	movq	%rcx, (%rax,%rdx,8)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	_ZN5Board9AddPiece_Eim, .Lfunc_end7-_ZN5Board9AddPiece_Eim
	.cfi_endproc
                                        # -- End function
	.globl	_ZN5Board12RemovePiece_Eim      # -- Begin function _ZN5Board12RemovePiece_Eim
	.p2align	4, 0x90
	.type	_ZN5Board12RemovePiece_Eim,@function
_ZN5Board12RemovePiece_Eim:             # @_ZN5Board12RemovePiece_Eim
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	xorq	$-1, %rcx
	movslq	-12(%rbp), %rdx
	andq	(%rax,%rdx,8), %rcx
	movq	%rcx, (%rax,%rdx,8)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end8:
	.size	_ZN5Board12RemovePiece_Eim, .Lfunc_end8-_ZN5Board12RemovePiece_Eim
	.cfi_endproc
                                        # -- End function
	.globl	_ZN5Board12SetEpSquare_Ei       # -- Begin function _ZN5Board12SetEpSquare_Ei
	.p2align	4, 0x90
	.type	_ZN5Board12SetEpSquare_Ei,@function
_ZN5Board12SetEpSquare_Ei:              # @_ZN5Board12SetEpSquare_Ei
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end9:
	.size	_ZN5Board12SetEpSquare_Ei, .Lfunc_end9-_ZN5Board12SetEpSquare_Ei
	.cfi_endproc
                                        # -- End function
	.globl	_ZN5Board18SetCastlingRights_Eiii # -- Begin function _ZN5Board18SetCastlingRights_Eiii
	.p2align	4, 0x90
	.type	_ZN5Board18SetCastlingRights_Eiii,@function
_ZN5Board18SetCastlingRights_Eiii:      # @_ZN5Board18SetCastlingRights_Eiii
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end10:
	.size	_ZN5Board18SetCastlingRights_Eiii, .Lfunc_end10-_ZN5Board18SetCastlingRights_Eiii
	.cfi_endproc
                                        # -- End function
	.globl	_ZN5Board8SetTurn_Ei            # -- Begin function _ZN5Board8SetTurn_Ei
	.p2align	4, 0x90
	.type	_ZN5Board8SetTurn_Ei,@function
_ZN5Board8SetTurn_Ei:                   # @_ZN5Board8SetTurn_Ei
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
	movl	-12(%rbp), %ecx
	movl	%ecx, 112(%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end11:
	.size	_ZN5Board8SetTurn_Ei, .Lfunc_end11-_ZN5Board8SetTurn_Ei
	.cfi_endproc
                                        # -- End function
	.globl	_ZN5Board12LoadPositionEPiiiN5board6castle6RightsEii # -- Begin function _ZN5Board12LoadPositionEPiiiN5board6castle6RightsEii
	.p2align	4, 0x90
	.type	_ZN5Board12LoadPositionEPiiiN5board6castle6RightsEii,@function
_ZN5Board12LoadPositionEPiiiN5board6castle6RightsEii: # @_ZN5Board12LoadPositionEPiiiN5board6castle6RightsEii
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$1216, %rsp                     # imm = 0x4C0
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%fs:40, %r11
	movq	%r11, -8(%rbp)
	movq	%r8, -24(%rbp)
	movq	%r9, -16(%rbp)
	movq	%rdi, -1120(%rbp)
	movq	%rsi, -1128(%rbp)
	movl	%edx, -1132(%rbp)
	movl	%ecx, -1136(%rbp)
	movq	-1120(%rbp), %rsi
	movq	_ZL42CLASSICAL_KINGSIDE_ROOK_STARTING_LOCATIONS(%rip), %rdi
	movq	%rdi, 1264(%rsi)
	movq	_ZL42CLASSICAL_KINGSIDE_ROOK_STARTING_LOCATIONS+8(%rip), %rdi
	movq	%rdi, 1272(%rsi)
	movq	_ZL43CLASSICAL_QUEENSIDE_ROOK_STARTING_LOCATIONS(%rip), %rdi
	movq	%rdi, 1248(%rsi)
	movq	_ZL43CLASSICAL_QUEENSIDE_ROOK_STARTING_LOCATIONS+8(%rip), %rdi
	movq	%rdi, 1256(%rsi)
	movq	_ZL33CLASSICAL_KING_STARTING_LOCATIONS(%rip), %rdi
	movq	%rdi, 1232(%rsi)
	movq	_ZL33CLASSICAL_KING_STARTING_LOCATIONS+8(%rip), %rdi
	movq	%rdi, 1240(%rsi)
	leaq	-1112(%rbp), %rdi
	movl	%eax, -1152(%rbp)               # 4-byte Spill
	movl	%r10d, -1156(%rbp)              # 4-byte Spill
	movq	%rsi, -1168(%rbp)               # 8-byte Spill
	callq	_ZN5board5StateC2Ev
	movq	-1168(%rbp), %rsi               # 8-byte Reload
	addq	$104, %rsi
	leaq	-1112(%rbp), %rdi
	movq	%rdi, -1176(%rbp)               # 8-byte Spill
	movq	%rsi, %rdi
	movq	-1176(%rbp), %rsi               # 8-byte Reload
	movl	$1088, %edx                     # imm = 0x440
	callq	memcpy@PLT
	movq	-1168(%rbp), %rdx               # 8-byte Reload
	movb	$0, 1228(%rdx)
	addq	$1192, %rdx                     # imm = 0x4A8
	movq	%rdx, %rdi
	callq	_ZN5board10StateStack5ClearEv
	movq	-1168(%rbp), %rdx               # 8-byte Reload
	movl	$5, 1224(%rdx)
	movq	$0, 96(%rdx)
	movq	%rdx, %rdi
	movl	$4294967295, %esi               # imm = 0xFFFFFFFF
	callq	_ZN5Board12SetEpSquare_Ei
	xorl	%eax, %eax
	movq	-1168(%rbp), %rdi               # 8-byte Reload
	movl	%eax, %esi
	movl	%eax, %edx
	movl	$1, %ecx
	callq	_ZN5Board18SetCastlingRights_Eiii
	xorl	%esi, %esi
	movq	-1168(%rbp), %rdi               # 8-byte Reload
	movl	$2, %edx
	movl	$1, %ecx
	callq	_ZN5Board18SetCastlingRights_Eiii
	xorl	%edx, %edx
	movq	-1168(%rbp), %rdi               # 8-byte Reload
	movl	$1, %eax
	movl	%eax, %esi
	movl	%eax, %ecx
	callq	_ZN5Board18SetCastlingRights_Eiii
	movq	-1168(%rbp), %rdi               # 8-byte Reload
	movl	$1, %eax
	movl	%eax, %esi
	movl	$2, %edx
	movl	%eax, %ecx
	callq	_ZN5Board18SetCastlingRights_Eiii
	movl	$0, -1140(%rbp)
.LBB12_1:                               # =>This Inner Loop Header: Depth=1
	cmpl	$12, -1140(%rbp)
	jge	.LBB12_4
# %bb.2:                                #   in Loop: Header=BB12_1 Depth=1
	movslq	-1140(%rbp), %rax
	movq	-1168(%rbp), %rcx               # 8-byte Reload
	movq	$0, (%rcx,%rax,8)
# %bb.3:                                #   in Loop: Header=BB12_1 Depth=1
	movl	-1140(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1140(%rbp)
	jmp	.LBB12_1
.LBB12_4:
	movl	$0, -1144(%rbp)
.LBB12_5:                               # =>This Inner Loop Header: Depth=1
	cmpl	$64, -1144(%rbp)
	jge	.LBB12_10
# %bb.6:                                #   in Loop: Header=BB12_5 Depth=1
	movq	-1128(%rbp), %rax
	movslq	-1144(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movl	%edx, -1148(%rbp)
	cmpl	$-1, -1148(%rbp)
	je	.LBB12_8
# %bb.7:                                #   in Loop: Header=BB12_5 Depth=1
	movl	-1148(%rbp), %esi
	movl	-1144(%rbp), %edi
	movl	%esi, -1180(%rbp)               # 4-byte Spill
	callq	_Z13u64FromSquarei
	movq	-1168(%rbp), %rdi               # 8-byte Reload
	movl	-1180(%rbp), %esi               # 4-byte Reload
	movq	%rax, %rdx
	callq	_ZN5Board9AddPiece_Eim
.LBB12_8:                               #   in Loop: Header=BB12_5 Depth=1
	jmp	.LBB12_9
.LBB12_9:                               #   in Loop: Header=BB12_5 Depth=1
	movl	-1144(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1144(%rbp)
	jmp	.LBB12_5
.LBB12_10:
	movl	-1136(%rbp), %esi
	movq	-1168(%rbp), %rdi               # 8-byte Reload
	callq	_ZN5Board12SetEpSquare_Ei
	leaq	-24(%rbp), %rax
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, -1192(%rbp)               # 8-byte Spill
	movl	%ecx, -1196(%rbp)               # 4-byte Spill
	callq	_ZNK5board6castle6Rights3getEii@PLT
	movq	-1168(%rbp), %rdi               # 8-byte Reload
	movl	-1196(%rbp), %esi               # 4-byte Reload
	movl	-1196(%rbp), %edx               # 4-byte Reload
	movl	%eax, %ecx
	callq	_ZN5Board18SetCastlingRights_Eiii
	movl	$2, %eax
	movq	-1192(%rbp), %rdi               # 8-byte Reload
	movl	-1196(%rbp), %esi               # 4-byte Reload
	movl	%eax, %edx
	movl	%eax, -1200(%rbp)               # 4-byte Spill
	callq	_ZNK5board6castle6Rights3getEii@PLT
	movq	-1168(%rbp), %rdi               # 8-byte Reload
	movl	-1196(%rbp), %esi               # 4-byte Reload
	movl	-1200(%rbp), %edx               # 4-byte Reload
	movl	%eax, %ecx
	callq	_ZN5Board18SetCastlingRights_Eiii
	movl	$1, %eax
	movq	-1192(%rbp), %rdi               # 8-byte Reload
	movl	%eax, %esi
	movl	-1196(%rbp), %edx               # 4-byte Reload
	movl	%eax, -1204(%rbp)               # 4-byte Spill
	callq	_ZNK5board6castle6Rights3getEii@PLT
	movq	-1168(%rbp), %rdi               # 8-byte Reload
	movl	-1204(%rbp), %esi               # 4-byte Reload
	movl	-1196(%rbp), %edx               # 4-byte Reload
	movl	%eax, %ecx
	callq	_ZN5Board18SetCastlingRights_Eiii
	movq	-1192(%rbp), %rdi               # 8-byte Reload
	movl	-1204(%rbp), %esi               # 4-byte Reload
	movl	-1200(%rbp), %edx               # 4-byte Reload
	callq	_ZNK5board6castle6Rights3getEii@PLT
	movq	-1168(%rbp), %rdi               # 8-byte Reload
	movl	-1204(%rbp), %esi               # 4-byte Reload
	movl	-1200(%rbp), %edx               # 4-byte Reload
	movl	%eax, %ecx
	callq	_ZN5Board18SetCastlingRights_Eiii
	movq	-1168(%rbp), %rdi               # 8-byte Reload
	callq	_ZN5Board20GeneratePseudoLegal_Ev@PLT
	movq	%fs:40, %rdi
	movq	-8(%rbp), %r8
	cmpq	%r8, %rdi
	jne	.LBB12_12
# %bb.11:
	addq	$1216, %rsp                     # imm = 0x4C0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB12_12:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end12:
	.size	_ZN5Board12LoadPositionEPiiiN5board6castle6RightsEii, .Lfunc_end12-_ZN5Board12LoadPositionEPiiiN5board6castle6RightsEii
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN5board5StateC2Ev,"axG",@progbits,_ZN5board5StateC2Ev,comdat
	.weak	_ZN5board5StateC2Ev             # -- Begin function _ZN5board5StateC2Ev
	.p2align	4, 0x90
	.type	_ZN5board5StateC2Ev,@function
_ZN5board5StateC2Ev:                    # @_ZN5board5StateC2Ev
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
	movq	%rax, %rcx
	addq	$42, %rcx
	movq	%rcx, %rdi
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	callq	_ZN5CMoveC2Ev
	movq	-32(%rbp), %rax                 # 8-byte Reload
	addq	$44, %rax
	movq	%rax, %rdi
	callq	_ZN5board6castle6RightsC1Ev@PLT
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movl	$0, (%rax)
	movl	$0, 4(%rax)
	movl	$0, 12(%rax)
	movl	$-1, 16(%rax)
	movb	$0, 40(%rax)
	movb	$0, 41(%rax)
	movl	$0, 8(%rax)
	movl	$-1, 20(%rax)
	movl	$-1, 24(%rax)
	callq	_ZN5CMove8NullMoveEv
	movw	%ax, -16(%rbp)
	movw	-16(%rbp), %ax
	movq	-32(%rbp), %rcx                 # 8-byte Reload
	movw	%ax, 42(%rcx)
	movq	$0, 32(%rcx)
	movq	%fs:40, %rdx
	movq	-8(%rbp), %rsi
	cmpq	%rsi, %rdx
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
	.size	_ZN5board5StateC2Ev, .Lfunc_end13-_ZN5board5StateC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN5board10StateStack5ClearEv,"axG",@progbits,_ZN5board10StateStack5ClearEv,comdat
	.weak	_ZN5board10StateStack5ClearEv   # -- Begin function _ZN5board10StateStack5ClearEv
	.p2align	4, 0x90
	.type	_ZN5board10StateStack5ClearEv,@function
_ZN5board10StateStack5ClearEv:          # @_ZN5board10StateStack5ClearEv
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
	movl	$0, (%rax)
	addq	$8, %rax
	movq	%rax, %rdi
	callq	_ZNSt6vectorIN5board5StateESaIS1_EE5clearEv
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end14:
	.size	_ZN5board10StateStack5ClearEv, .Lfunc_end14-_ZN5board10StateStack5ClearEv
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
	leaq	.L.str.5(%rip), %rdi
	leaq	.L.str.6(%rip), %rsi
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
	.text
	.globl	_ZN5Board18move_from_src_destEii # -- Begin function _ZN5Board18move_from_src_destEii
	.p2align	4, 0x90
	.type	_ZN5Board18move_from_src_destEii,@function
_ZN5Board18move_from_src_destEii:       # @_ZN5Board18move_from_src_destEii
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
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	_ZNK5Board9piece_at_Ei
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %edi
	callq	_ZN5piece8is_emptyEi
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB16_1
	jmp	.LBB16_2
.LBB16_1:
	jmp	.LBB16_3
.LBB16_2:
	leaq	.L.str.3(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$109, %edx
	leaq	.L__PRETTY_FUNCTION__._ZN5Board18move_from_src_destEii(%rip), %rcx
	callq	__assert_fail@PLT
.LBB16_3:
	movl	-36(%rbp), %edi
	callq	_ZN5piece7is_pawnEi
	testb	$1, %al
	jne	.LBB16_4
	jmp	.LBB16_5
.LBB16_4:
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	leaq	-16(%rbp), %rdi
	movl	$1, %ecx
	callq	_ZN5CMoveC2Eiii
	jmp	.LBB16_8
.LBB16_5:
	movl	-36(%rbp), %edi
	callq	_ZN5piece7is_kingEi
	testb	$1, %al
	jne	.LBB16_6
	jmp	.LBB16_7
.LBB16_6:
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	leaq	-16(%rbp), %rdi
	movl	$1, %ecx
	callq	_ZN5CMoveC2Eiii
	jmp	.LBB16_8
.LBB16_7:
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	leaq	-16(%rbp), %rdi
	movl	$1, %ecx
	callq	_ZN5CMoveC2Eiii
.LBB16_8:
	movw	-16(%rbp), %ax
	movq	%fs:40, %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movw	%ax, -38(%rbp)                  # 2-byte Spill
	jne	.LBB16_10
# %bb.9:
	movw	-38(%rbp), %ax                  # 2-byte Reload
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB16_10:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end16:
	.size	_ZN5Board18move_from_src_destEii, .Lfunc_end16-_ZN5Board18move_from_src_destEii
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK5Board9piece_at_Ei          # -- Begin function _ZNK5Board9piece_at_Ei
	.p2align	4, 0x90
	.type	_ZNK5Board9piece_at_Ei,@function
_ZNK5Board9piece_at_Ei:                 # @_ZNK5Board9piece_at_Ei
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
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %eax
	movq	%rdi, -24(%rbp)                 # 8-byte Spill
	movl	%eax, %edi
	callq	_Z13u64FromSquarei
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rsi
	callq	_ZNK5Board9piece_at_Em
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end17:
	.size	_ZNK5Board9piece_at_Ei, .Lfunc_end17-_ZNK5Board9piece_at_Ei
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
.Lfunc_end18:
	.size	_ZN5piece8is_emptyEi, .Lfunc_end18-_ZN5piece8is_emptyEi
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
.Lfunc_end19:
	.size	_ZN5piece7is_pawnEi, .Lfunc_end19-_ZN5piece7is_pawnEi
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
	jne	.LBB20_2
# %bb.1:
	movl	-16(%rbp), %edi
	callq	_Z6dump32i@PLT
.LBB20_2:
	movl	-16(%rbp), %edi
	callq	_Z13isValidSquarei
	testb	$1, %al
	jne	.LBB20_4
# %bb.3:
	movl	-16(%rbp), %edi
	callq	_Z6dump32i@PLT
.LBB20_4:
	movl	-12(%rbp), %edi
	callq	_Z13isValidSquarei
	testb	$1, %al
	jne	.LBB20_5
	jmp	.LBB20_6
.LBB20_5:
	jmp	.LBB20_7
.LBB20_6:
	leaq	.L.str.7(%rip), %rdi
	leaq	.L.str.8(%rip), %rsi
	movl	$73, %edx
	leaq	.L__PRETTY_FUNCTION__._ZN5CMoveC2Eiii(%rip), %rcx
	callq	__assert_fail@PLT
.LBB20_7:
	movl	-16(%rbp), %edi
	callq	_Z13isValidSquarei
	testb	$1, %al
	jne	.LBB20_8
	jmp	.LBB20_9
.LBB20_8:
	jmp	.LBB20_10
.LBB20_9:
	leaq	.L.str.9(%rip), %rdi
	leaq	.L.str.8(%rip), %rsi
	movl	$74, %edx
	leaq	.L__PRETTY_FUNCTION__._ZN5CMoveC2Eiii(%rip), %rcx
	callq	__assert_fail@PLT
.LBB20_10:
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
.Lfunc_end20:
	.size	_ZN5CMoveC2Eiii, .Lfunc_end20-_ZN5CMoveC2Eiii
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
.Lfunc_end21:
	.size	_ZN5piece7is_kingEi, .Lfunc_end21-_ZN5piece7is_kingEi
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZNK5Board9piece_at_Em          # -- Begin function _ZNK5Board9piece_at_Em
	.p2align	4, 0x90
	.type	_ZNK5Board9piece_at_Em,@function
_ZNK5Board9piece_at_Em:                 # @_ZNK5Board9piece_at_Em
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
	movl	$0, -28(%rbp)
	movq	%rax, -40(%rbp)                 # 8-byte Spill
.LBB22_1:                               # =>This Inner Loop Header: Depth=1
	cmpl	$12, -28(%rbp)
	jge	.LBB22_6
# %bb.2:                                #   in Loop: Header=BB22_1 Depth=1
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	-40(%rbp), %rdx                 # 8-byte Reload
	andq	(%rdx,%rcx,8), %rax
	cmpq	$0, %rax
	je	.LBB22_4
# %bb.3:
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB22_7
.LBB22_4:                               #   in Loop: Header=BB22_1 Depth=1
	jmp	.LBB22_5
.LBB22_5:                               #   in Loop: Header=BB22_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB22_1
.LBB22_6:
	movl	$-1, -4(%rbp)
.LBB22_7:
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end22:
	.size	_ZNK5Board9piece_at_Em, .Lfunc_end22-_ZNK5Board9piece_at_Em
	.cfi_endproc
                                        # -- End function
	.globl	_ZN5Board5ResetEv               # -- Begin function _ZN5Board5ResetEv
	.p2align	4, 0x90
	.type	_ZN5Board5ResetEv,@function
_ZN5Board5ResetEv:                      # @_ZN5Board5ResetEv
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
	subq	$96, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rdi
	leaq	-48(%rbp), %rax
	movq	%rdi, -80(%rbp)                 # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp0:
	leaq	.L.str.4(%rip), %rsi
	leaq	-40(%rbp), %rdi
	movq	-88(%rbp), %rdx                 # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp1:
	jmp	.LBB23_1
.LBB23_1:
.Ltmp3:
	leaq	-40(%rbp), %rsi
	movq	-80(%rbp), %rdi                 # 8-byte Reload
	callq	_ZN5Board12LoadPositionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.Ltmp4:
	jmp	.LBB23_2
.LBB23_2:
	leaq	-40(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-48(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB23_8
# %bb.3:
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB23_4:
	.cfi_def_cfa %rbp, 16
.Ltmp2:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -64(%rbp)
	movl	%edx, -68(%rbp)
	jmp	.LBB23_6
.LBB23_5:
.Ltmp5:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -64(%rbp)
	movl	%edx, -68(%rbp)
	leaq	-40(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB23_6:
	leaq	-48(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
# %bb.7:
	movq	-64(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.LBB23_8:
	callq	__stack_chk_fail@PLT
.Lfunc_end23:
	.size	_ZN5Board5ResetEv, .Lfunc_end23-_ZN5Board5ResetEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table23:
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
	.uleb128 .Lfunc_end23-.Ltmp4            #   Call between .Ltmp4 and .Lfunc_end23
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2
                                        # -- End function
	.text
	.globl	_ZN5BoardC2Ev                   # -- Begin function _ZN5BoardC2Ev
	.p2align	4, 0x90
	.type	_ZN5BoardC2Ev,@function
_ZN5BoardC2Ev:                          # @_ZN5BoardC2Ev
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
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
	addq	$104, %rcx
	movq	%rcx, %rdi
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	callq	_ZN5board5StateC2Ev
	movq	-32(%rbp), %rax                 # 8-byte Reload
	addq	$1192, %rax                     # imm = 0x4A8
	movq	%rax, %rdi
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	callq	_ZN5board10StateStackC2Ev
.Ltmp6:
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	callq	_ZN5Board5ResetEv
.Ltmp7:
	jmp	.LBB24_1
.LBB24_1:
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB24_2:
	.cfi_def_cfa %rbp, 16
.Ltmp8:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	callq	_ZN5board10StateStackD2Ev
# %bb.3:
	movq	-16(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end24:
	.size	_ZN5BoardC2Ev, .Lfunc_end24-_ZN5BoardC2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table24:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp6-.Lfunc_begin1           #   Call between .Lfunc_begin1 and .Ltmp6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin1           # >> Call Site 2 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin1           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin1           # >> Call Site 3 <<
	.uleb128 .Lfunc_end24-.Ltmp7            #   Call between .Ltmp7 and .Lfunc_end24
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2
                                        # -- End function
	.section	.text._ZN5board10StateStackC2Ev,"axG",@progbits,_ZN5board10StateStackC2Ev,comdat
	.weak	_ZN5board10StateStackC2Ev       # -- Begin function _ZN5board10StateStackC2Ev
	.p2align	4, 0x90
	.type	_ZN5board10StateStackC2Ev,@function
_ZN5board10StateStackC2Ev:              # @_ZN5board10StateStackC2Ev
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
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, %rdi
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	callq	_ZNSt6vectorIN5board5StateESaIS1_EEC2Ev
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movl	$0, (%rax)
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end25:
	.size	_ZN5board10StateStackC2Ev, .Lfunc_end25-_ZN5board10StateStackC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN5board10StateStackD2Ev,"axG",@progbits,_ZN5board10StateStackD2Ev,comdat
	.weak	_ZN5board10StateStackD2Ev       # -- Begin function _ZN5board10StateStackD2Ev
	.p2align	4, 0x90
	.type	_ZN5board10StateStackD2Ev,@function
_ZN5board10StateStackD2Ev:              # @_ZN5board10StateStackD2Ev
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
	addq	$8, %rax
	movq	%rax, %rdi
	callq	_ZNSt6vectorIN5board5StateESaIS1_EED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end26:
	.size	_ZN5board10StateStackD2Ev, .Lfunc_end26-_ZN5board10StateStackD2Ev
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
.Lfunc_end27:
	.size	_ZN5CMoveC2Ev, .Lfunc_end27-_ZN5CMoveC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN5CMove8NullMoveEv,"axG",@progbits,_ZN5CMove8NullMoveEv,comdat
	.weak	_ZN5CMove8NullMoveEv            # -- Begin function _ZN5CMove8NullMoveEv
	.p2align	4, 0x90
	.type	_ZN5CMove8NullMoveEv,@function
_ZN5CMove8NullMoveEv:                   # @_ZN5CMove8NullMoveEv
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
	leaq	-16(%rbp), %rdi
	callq	_ZN5CMoveC2Ev
	movw	-16(%rbp), %ax
	movq	%fs:40, %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movw	%ax, -18(%rbp)                  # 2-byte Spill
	jne	.LBB28_2
# %bb.1:
	movw	-18(%rbp), %ax                  # 2-byte Reload
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB28_2:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end28:
	.size	_ZN5CMove8NullMoveEv, .Lfunc_end28-_ZN5CMove8NullMoveEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIN5board5StateESaIS1_EE5clearEv,"axG",@progbits,_ZNSt6vectorIN5board5StateESaIS1_EE5clearEv,comdat
	.weak	_ZNSt6vectorIN5board5StateESaIS1_EE5clearEv # -- Begin function _ZNSt6vectorIN5board5StateESaIS1_EE5clearEv
	.p2align	4, 0x90
	.type	_ZNSt6vectorIN5board5StateESaIS1_EE5clearEv,@function
_ZNSt6vectorIN5board5StateESaIS1_EE5clearEv: # @_ZNSt6vectorIN5board5StateESaIS1_EE5clearEv
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
	movq	(%rax), %rsi
	movq	%rax, %rdi
	callq	_ZNSt6vectorIN5board5StateESaIS1_EE15_M_erase_at_endEPS1_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end29:
	.size	_ZNSt6vectorIN5board5StateESaIS1_EE5clearEv, .Lfunc_end29-_ZNSt6vectorIN5board5StateESaIS1_EE5clearEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIN5board5StateESaIS1_EE15_M_erase_at_endEPS1_,"axG",@progbits,_ZNSt6vectorIN5board5StateESaIS1_EE15_M_erase_at_endEPS1_,comdat
	.weak	_ZNSt6vectorIN5board5StateESaIS1_EE15_M_erase_at_endEPS1_ # -- Begin function _ZNSt6vectorIN5board5StateESaIS1_EE15_M_erase_at_endEPS1_
	.p2align	4, 0x90
	.type	_ZNSt6vectorIN5board5StateESaIS1_EE15_M_erase_at_endEPS1_,@function
_ZNSt6vectorIN5board5StateESaIS1_EE15_M_erase_at_endEPS1_: # @_ZNSt6vectorIN5board5StateESaIS1_EE15_M_erase_at_endEPS1_
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-16(%rbp), %rdx
	subq	%rdx, %rcx
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movq	%rcx, %rax
	cqto
	movl	$1088, %ecx                     # imm = 0x440
	idivq	%rcx
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB30_3
# %bb.1:
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	8(%rax), %rsi
	movq	%rdi, -40(%rbp)                 # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -48(%rbp)                 # 8-byte Spill
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv
.Ltmp9:
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movq	-48(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZSt8_DestroyIPN5board5StateES1_EvT_S3_RSaIT0_E
.Ltmp10:
	jmp	.LBB30_2
.LBB30_2:
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx                 # 8-byte Reload
	movq	%rax, 8(%rcx)
.LBB30_3:
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB30_4:
	.cfi_def_cfa %rbp, 16
.Ltmp11:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, %rdi
	movl	%edx, -52(%rbp)                 # 4-byte Spill
	callq	__clang_call_terminate
.Lfunc_end30:
	.size	_ZNSt6vectorIN5board5StateESaIS1_EE15_M_erase_at_endEPS1_, .Lfunc_end30-_ZNSt6vectorIN5board5StateESaIS1_EE15_M_erase_at_endEPS1_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table30:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	156                             # @TType Encoding = indirect pcrel sdata8
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp9-.Lfunc_begin2           # >> Call Site 1 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin2          #     jumps to .Ltmp11
	.byte	1                               #   On action: 1
.Lcst_end2:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2
                                        # -- End function
	.section	.text._ZSt8_DestroyIPN5board5StateES1_EvT_S3_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPN5board5StateES1_EvT_S3_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPN5board5StateES1_EvT_S3_RSaIT0_E # -- Begin function _ZSt8_DestroyIPN5board5StateES1_EvT_S3_RSaIT0_E
	.p2align	4, 0x90
	.type	_ZSt8_DestroyIPN5board5StateES1_EvT_S3_RSaIT0_E,@function
_ZSt8_DestroyIPN5board5StateES1_EvT_S3_RSaIT0_E: # @_ZSt8_DestroyIPN5board5StateES1_EvT_S3_RSaIT0_E
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
	movq	-16(%rbp), %rsi
	callq	_ZSt8_DestroyIPN5board5StateEEvT_S3_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end31:
	.size	_ZSt8_DestroyIPN5board5StateES1_EvT_S3_RSaIT0_E, .Lfunc_end31-_ZSt8_DestroyIPN5board5StateES1_EvT_S3_RSaIT0_E
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
.Lfunc_end32:
	.size	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv, .Lfunc_end32-_ZNSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv
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
.Lfunc_end33:
	.size	__clang_call_terminate, .Lfunc_end33-__clang_call_terminate
                                        # -- End function
	.section	.text._ZSt8_DestroyIPN5board5StateEEvT_S3_,"axG",@progbits,_ZSt8_DestroyIPN5board5StateEEvT_S3_,comdat
	.weak	_ZSt8_DestroyIPN5board5StateEEvT_S3_ # -- Begin function _ZSt8_DestroyIPN5board5StateEEvT_S3_
	.p2align	4, 0x90
	.type	_ZSt8_DestroyIPN5board5StateEEvT_S3_,@function
_ZSt8_DestroyIPN5board5StateEEvT_S3_:   # @_ZSt8_DestroyIPN5board5StateEEvT_S3_
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
	callq	_ZNSt12_Destroy_auxILb1EE9__destroyIPN5board5StateEEEvT_S5_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end34:
	.size	_ZSt8_DestroyIPN5board5StateEEvT_S3_, .Lfunc_end34-_ZSt8_DestroyIPN5board5StateEEvT_S3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPN5board5StateEEEvT_S5_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPN5board5StateEEEvT_S5_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPN5board5StateEEEvT_S5_ # -- Begin function _ZNSt12_Destroy_auxILb1EE9__destroyIPN5board5StateEEEvT_S5_
	.p2align	4, 0x90
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPN5board5StateEEEvT_S5_,@function
_ZNSt12_Destroy_auxILb1EE9__destroyIPN5board5StateEEEvT_S5_: # @_ZNSt12_Destroy_auxILb1EE9__destroyIPN5board5StateEEEvT_S5_
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
.Lfunc_end35:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPN5board5StateEEEvT_S5_, .Lfunc_end35-_ZNSt12_Destroy_auxILb1EE9__destroyIPN5board5StateEEEvT_S5_
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
	jl	.LBB36_2
# %bb.1:
	cmpl	$64, -4(%rbp)
	setl	%al
	movb	%al, -5(%rbp)                   # 1-byte Spill
.LBB36_2:
	movb	-5(%rbp), %al                   # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end36:
	.size	_Z13isValidSquarei, .Lfunc_end36-_Z13isValidSquarei
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
.Lfunc_end37:
	.size	_ZN5piece12to_colorlessEi, .Lfunc_end37-_ZN5piece12to_colorlessEi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIN5board5StateESaIS1_EEC2Ev,"axG",@progbits,_ZNSt6vectorIN5board5StateESaIS1_EEC2Ev,comdat
	.weak	_ZNSt6vectorIN5board5StateESaIS1_EEC2Ev # -- Begin function _ZNSt6vectorIN5board5StateESaIS1_EEC2Ev
	.p2align	4, 0x90
	.type	_ZNSt6vectorIN5board5StateESaIS1_EEC2Ev,@function
_ZNSt6vectorIN5board5StateESaIS1_EEC2Ev: # @_ZNSt6vectorIN5board5StateESaIS1_EEC2Ev
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
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EEC2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end38:
	.size	_ZNSt6vectorIN5board5StateESaIS1_EEC2Ev, .Lfunc_end38-_ZNSt6vectorIN5board5StateESaIS1_EEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIN5board5StateESaIS1_EEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIN5board5StateESaIS1_EEC2Ev,comdat
	.weak	_ZNSt12_Vector_baseIN5board5StateESaIS1_EEC2Ev # -- Begin function _ZNSt12_Vector_baseIN5board5StateESaIS1_EEC2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIN5board5StateESaIS1_EEC2Ev,@function
_ZNSt12_Vector_baseIN5board5StateESaIS1_EEC2Ev: # @_ZNSt12_Vector_baseIN5board5StateESaIS1_EEC2Ev
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
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implC2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end39:
	.size	_ZNSt12_Vector_baseIN5board5StateESaIS1_EEC2Ev, .Lfunc_end39-_ZNSt12_Vector_baseIN5board5StateESaIS1_EEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implC2Ev,comdat
	.weak	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implC2Ev # -- Begin function _ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implC2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implC2Ev,@function
_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implC2Ev: # @_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implC2Ev
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
	movq	%rax, %rcx
	movq	%rcx, %rdi
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	callq	_ZNSaIN5board5StateEEC2Ev
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE17_Vector_impl_dataC2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end40:
	.size	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implC2Ev, .Lfunc_end40-_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSaIN5board5StateEEC2Ev,"axG",@progbits,_ZNSaIN5board5StateEEC2Ev,comdat
	.weak	_ZNSaIN5board5StateEEC2Ev       # -- Begin function _ZNSaIN5board5StateEEC2Ev
	.p2align	4, 0x90
	.type	_ZNSaIN5board5StateEEC2Ev,@function
_ZNSaIN5board5StateEEC2Ev:              # @_ZNSaIN5board5StateEEC2Ev
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
	callq	_ZN9__gnu_cxx13new_allocatorIN5board5StateEEC2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end41:
	.size	_ZNSaIN5board5StateEEC2Ev, .Lfunc_end41-_ZNSaIN5board5StateEEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIN5board5StateESaIS1_EE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIN5board5StateESaIS1_EE17_Vector_impl_dataC2Ev,comdat
	.weak	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE17_Vector_impl_dataC2Ev # -- Begin function _ZNSt12_Vector_baseIN5board5StateESaIS1_EE17_Vector_impl_dataC2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE17_Vector_impl_dataC2Ev,@function
_ZNSt12_Vector_baseIN5board5StateESaIS1_EE17_Vector_impl_dataC2Ev: # @_ZNSt12_Vector_baseIN5board5StateESaIS1_EE17_Vector_impl_dataC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end42:
	.size	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE17_Vector_impl_dataC2Ev, .Lfunc_end42-_ZNSt12_Vector_baseIN5board5StateESaIS1_EE17_Vector_impl_dataC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIN5board5StateEEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIN5board5StateEEC2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIN5board5StateEEC2Ev # -- Begin function _ZN9__gnu_cxx13new_allocatorIN5board5StateEEC2Ev
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIN5board5StateEEC2Ev,@function
_ZN9__gnu_cxx13new_allocatorIN5board5StateEEC2Ev: # @_ZN9__gnu_cxx13new_allocatorIN5board5StateEEC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end43:
	.size	_ZN9__gnu_cxx13new_allocatorIN5board5StateEEC2Ev, .Lfunc_end43-_ZN9__gnu_cxx13new_allocatorIN5board5StateEEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIN5board5StateESaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorIN5board5StateESaIS1_EED2Ev,comdat
	.weak	_ZNSt6vectorIN5board5StateESaIS1_EED2Ev # -- Begin function _ZNSt6vectorIN5board5StateESaIS1_EED2Ev
	.p2align	4, 0x90
	.type	_ZNSt6vectorIN5board5StateESaIS1_EED2Ev,@function
_ZNSt6vectorIN5board5StateESaIS1_EED2Ev: # @_ZNSt6vectorIN5board5StateESaIS1_EED2Ev
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movq	8(%rax), %rsi
	movq	%rdi, -32(%rbp)                 # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	%rsi, -48(%rbp)                 # 8-byte Spill
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv
.Ltmp12:
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	-48(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZSt8_DestroyIPN5board5StateES1_EvT_S3_RSaIT0_E
.Ltmp13:
	jmp	.LBB44_1
.LBB44_1:
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB44_2:
	.cfi_def_cfa %rbp, 16
.Ltmp14:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev
# %bb.3:
	movq	-16(%rbp), %rdi
	callq	__clang_call_terminate
.Lfunc_end44:
	.size	_ZNSt6vectorIN5board5StateESaIS1_EED2Ev, .Lfunc_end44-_ZNSt6vectorIN5board5StateESaIS1_EED2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table44:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	156                             # @TType Encoding = indirect pcrel sdata8
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp12-.Lfunc_begin3          # >> Call Site 1 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin3          #     jumps to .Ltmp14
	.byte	1                               #   On action: 1
.Lcst_end3:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev,comdat
	.weak	_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev # -- Begin function _ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev,@function
_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev: # @_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	16(%rax), %rdx
	subq	%rcx, %rdx
	sarq	$6, %rdx
	movabsq	$-1085102592571150095, %rsi     # imm = 0xF0F0F0F0F0F0F0F1
	imulq	%rsi, %rdx
.Ltmp15:
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE13_M_deallocateEPS1_m
.Ltmp16:
	jmp	.LBB45_1
.LBB45_1:
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implD2Ev
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB45_2:
	.cfi_def_cfa %rbp, 16
.Ltmp17:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implD2Ev
# %bb.3:
	movq	-16(%rbp), %rdi
	callq	__clang_call_terminate
.Lfunc_end45:
	.size	_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev, .Lfunc_end45-_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table45:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	156                             # @TType Encoding = indirect pcrel sdata8
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp15-.Lfunc_begin4          # >> Call Site 1 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin4          #     jumps to .Ltmp17
	.byte	1                               #   On action: 1
.Lcst_end4:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2
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
	je	.LBB46_2
# %bb.1:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	_ZNSt16allocator_traitsISaIN5board5StateEEE10deallocateERS2_PS1_m
.LBB46_2:
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end46:
	.size	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE13_M_deallocateEPS1_m, .Lfunc_end46-_ZNSt12_Vector_baseIN5board5StateESaIS1_EE13_M_deallocateEPS1_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implD2Ev,comdat
	.weak	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implD2Ev # -- Begin function _ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implD2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implD2Ev,@function
_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implD2Ev: # @_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implD2Ev
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
	callq	_ZNSaIN5board5StateEED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end47:
	.size	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implD2Ev, .Lfunc_end47-_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implD2Ev
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
.Lfunc_end48:
	.size	_ZNSt16allocator_traitsISaIN5board5StateEEE10deallocateERS2_PS1_m, .Lfunc_end48-_ZNSt16allocator_traitsISaIN5board5StateEEE10deallocateERS2_PS1_m
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
.Lfunc_end49:
	.size	_ZN9__gnu_cxx13new_allocatorIN5board5StateEE10deallocateEPS2_m, .Lfunc_end49-_ZN9__gnu_cxx13new_allocatorIN5board5StateEE10deallocateEPS2_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSaIN5board5StateEED2Ev,"axG",@progbits,_ZNSaIN5board5StateEED2Ev,comdat
	.weak	_ZNSaIN5board5StateEED2Ev       # -- Begin function _ZNSaIN5board5StateEED2Ev
	.p2align	4, 0x90
	.type	_ZNSaIN5board5StateEED2Ev,@function
_ZNSaIN5board5StateEED2Ev:              # @_ZNSaIN5board5StateEED2Ev
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
	callq	_ZN9__gnu_cxx13new_allocatorIN5board5StateEED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end50:
	.size	_ZNSaIN5board5StateEED2Ev, .Lfunc_end50-_ZNSaIN5board5StateEED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIN5board5StateEED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIN5board5StateEED2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIN5board5StateEED2Ev # -- Begin function _ZN9__gnu_cxx13new_allocatorIN5board5StateEED2Ev
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIN5board5StateEED2Ev,@function
_ZN9__gnu_cxx13new_allocatorIN5board5StateEED2Ev: # @_ZN9__gnu_cxx13new_allocatorIN5board5StateEED2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end51:
	.size	_ZN9__gnu_cxx13new_allocatorIN5board5StateEED2Ev, .Lfunc_end51-_ZN9__gnu_cxx13new_allocatorIN5board5StateEED2Ev
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
.Lfunc_end52:
	.size	_ZNSt14__array_traitsImLm64EE6_S_refERA64_Kmm, .Lfunc_end52-_ZNSt14__array_traitsImLm64EE6_S_refERA64_Kmm
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_board_functions.cpp
	.type	_GLOBAL__sub_I_board_functions.cpp,@function
_GLOBAL__sub_I_board_functions.cpp:     # @_GLOBAL__sub_I_board_functions.cpp
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
.Lfunc_end53:
	.size	_GLOBAL__sub_I_board_functions.cpp, .Lfunc_end53-_GLOBAL__sub_I_board_functions.cpp
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
	.asciz	"src/chess/board_functions.cpp"
	.size	.L.str.1, 30

	.type	.L__PRETTY_FUNCTION__._ZN5Board13attackers_to_Em,@object # @__PRETTY_FUNCTION__._ZN5Board13attackers_to_Em
.L__PRETTY_FUNCTION__._ZN5Board13attackers_to_Em:
	.asciz	"uint64_t Board::attackers_to_(uint64_t)"
	.size	.L__PRETTY_FUNCTION__._ZN5Board13attackers_to_Em, 40

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"subjects != 0"
	.size	.L.str.2, 14

	.type	_ZL42CLASSICAL_KINGSIDE_ROOK_STARTING_LOCATIONS,@object # @_ZL42CLASSICAL_KINGSIDE_ROOK_STARTING_LOCATIONS
	.section	.rodata,"a",@progbits
	.p2align	4
_ZL42CLASSICAL_KINGSIDE_ROOK_STARTING_LOCATIONS:
	.quad	128                             # 0x80
	.quad	-9223372036854775808            # 0x8000000000000000
	.size	_ZL42CLASSICAL_KINGSIDE_ROOK_STARTING_LOCATIONS, 16

	.type	_ZL43CLASSICAL_QUEENSIDE_ROOK_STARTING_LOCATIONS,@object # @_ZL43CLASSICAL_QUEENSIDE_ROOK_STARTING_LOCATIONS
	.p2align	4
_ZL43CLASSICAL_QUEENSIDE_ROOK_STARTING_LOCATIONS:
	.quad	1                               # 0x1
	.quad	72057594037927936               # 0x100000000000000
	.size	_ZL43CLASSICAL_QUEENSIDE_ROOK_STARTING_LOCATIONS, 16

	.type	_ZL33CLASSICAL_KING_STARTING_LOCATIONS,@object # @_ZL33CLASSICAL_KING_STARTING_LOCATIONS
	.p2align	4
_ZL33CLASSICAL_KING_STARTING_LOCATIONS:
	.quad	16                              # 0x10
	.quad	1152921504606846976             # 0x1000000000000000
	.size	_ZL33CLASSICAL_KING_STARTING_LOCATIONS, 16

	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"!piece::is_empty(mover)"
	.size	.L.str.3, 24

	.type	.L__PRETTY_FUNCTION__._ZN5Board18move_from_src_destEii,@object # @__PRETTY_FUNCTION__._ZN5Board18move_from_src_destEii
.L__PRETTY_FUNCTION__._ZN5Board18move_from_src_destEii:
	.asciz	"CMove Board::move_from_src_dest(int, int)"
	.size	.L__PRETTY_FUNCTION__._ZN5Board18move_from_src_destEii, 42

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1"
	.size	.L.str.4, 57

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"isValidSquare(s)"
	.size	.L.str.5, 17

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"include/misc/bits.hpp"
	.size	.L.str.6, 22

	.type	.L__PRETTY_FUNCTION__._Z13u64FromSquarei,@object # @__PRETTY_FUNCTION__._Z13u64FromSquarei
.L__PRETTY_FUNCTION__._Z13u64FromSquarei:
	.asciz	"uint64_t u64FromSquare(int)"
	.size	.L__PRETTY_FUNCTION__._Z13u64FromSquarei, 28

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
	.quad	_GLOBAL__sub_I_board_functions.cpp
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"aGw",@progbits,DW.ref.__gxx_personality_v0,comdat
	.p2align	3
	.type	DW.ref.__gxx_personality_v0,@object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.globl	_ZN5BoardC1Ev
	.type	_ZN5BoardC1Ev,@function
.set _ZN5BoardC1Ev, _ZN5BoardC2Ev
	.ident	"clang version 11.0.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __cxx_global_var_init
	.addrsig_sym __cxa_atexit
	.addrsig_sym _ZN5Board13attackers_to_Em
	.addrsig_sym __assert_fail
	.addrsig_sym _Z10bitscanAllmR7u64List
	.addrsig_sym _ZNK7u64List3lenEv
	.addrsig_sym _ZNSt5arrayImLm64EEixEm
	.addrsig_sym _ZNK7u64ListixEi
	.addrsig_sym _ZNK5Board9occupancyEi
	.addrsig_sym _ZN5Board9AddPiece_Eim
	.addrsig_sym _ZN5Board12SetEpSquare_Ei
	.addrsig_sym _ZN5Board18SetCastlingRights_Eiii
	.addrsig_sym _ZN5board10StateStack5ClearEv
	.addrsig_sym _Z13u64FromSquarei
	.addrsig_sym _ZNK5board6castle6Rights3getEii
	.addrsig_sym _ZN5Board20GeneratePseudoLegal_Ev
	.addrsig_sym _ZNK5Board9piece_at_Ei
	.addrsig_sym _ZN5piece8is_emptyEi
	.addrsig_sym _ZN5piece7is_pawnEi
	.addrsig_sym _ZN5piece7is_kingEi
	.addrsig_sym _ZNK5Board9piece_at_Em
	.addrsig_sym _ZN5Board5ResetEv
	.addrsig_sym _ZN5Board12LoadPositionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _ZN5CMove8NullMoveEv
	.addrsig_sym _ZNSt6vectorIN5board5StateESaIS1_EE5clearEv
	.addrsig_sym _ZNSt6vectorIN5board5StateESaIS1_EE15_M_erase_at_endEPS1_
	.addrsig_sym _ZSt8_DestroyIPN5board5StateES1_EvT_S3_RSaIT0_E
	.addrsig_sym _ZNSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv
	.addrsig_sym __clang_call_terminate
	.addrsig_sym __cxa_begin_catch
	.addrsig_sym _ZSt9terminatev
	.addrsig_sym _ZSt8_DestroyIPN5board5StateEEvT_S3_
	.addrsig_sym _ZNSt12_Destroy_auxILb1EE9__destroyIPN5board5StateEEEvT_S5_
	.addrsig_sym _Z13isValidSquarei
	.addrsig_sym _ZN5piece12to_colorlessEi
	.addrsig_sym _Z6dump32i
	.addrsig_sym _ZNSt12_Vector_baseIN5board5StateESaIS1_EE13_M_deallocateEPS1_m
	.addrsig_sym _ZNSt16allocator_traitsISaIN5board5StateEEE10deallocateERS2_PS1_m
	.addrsig_sym _ZN9__gnu_cxx13new_allocatorIN5board5StateEE10deallocateEPS2_m
	.addrsig_sym _ZdlPv
	.addrsig_sym _ZNSt14__array_traitsImLm64EE6_S_refERA64_Kmm
	.addrsig_sym _GLOBAL__sub_I_board_functions.cpp
	.addrsig_sym __stack_chk_fail
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym _ZL42CLASSICAL_KINGSIDE_ROOK_STARTING_LOCATIONS
	.addrsig_sym _ZL43CLASSICAL_QUEENSIDE_ROOK_STARTING_LOCATIONS
	.addrsig_sym _ZL33CLASSICAL_KING_STARTING_LOCATIONS
