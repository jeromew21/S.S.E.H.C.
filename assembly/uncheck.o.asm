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
	subq	$96, %rsp
	movq	%rdi, %rax
	movq	%rsi, -8(%rbp)
	movq	-8(%rbp), %rcx
	testb	$1, 1220(%rcx)
	movq	%rdi, -80(%rbp)                 # 8-byte Spill
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	movq	%rcx, -96(%rbp)                 # 8-byte Spill
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
	movq	-96(%rbp), %rdi                 # 8-byte Reload
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
	movq	-80(%rbp), %rdi                 # 8-byte Reload
	callq	_ZN8MoveListILi256EEC2Ev
	movq	-88(%rbp), %rax                 # 8-byte Reload
	addq	$96, %rsp
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
.Lfunc_end3:
	.size	_ZN5CMoveC2Ev, .Lfunc_end3-_ZN5CMoveC2Ev
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
.Lfunc_end4:
	.size	_GLOBAL__sub_I_uncheck.cpp, .Lfunc_end4-_GLOBAL__sub_I_uncheck.cpp
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
	.addrsig_sym _GLOBAL__sub_I_uncheck.cpp
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
