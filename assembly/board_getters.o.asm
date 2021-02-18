	.text
	.file	"board_getters.cpp"
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
	.globl	_ZN5Board6statusEv              # -- Begin function _ZN5Board6statusEv
	.p2align	4, 0x90
	.type	_ZN5Board6statusEv,@function
_ZN5Board6statusEv:                     # @_ZN5Board6statusEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$5, 1224(%rax)
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	je	.LBB1_2
# %bb.1:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movl	1224(%rax), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB1_3
.LBB1_2:
	movl	$5, -4(%rbp)
.LBB1_3:
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	_ZN5Board6statusEv, .Lfunc_end1-_ZN5Board6statusEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK5Board4turnEv               # -- Begin function _ZNK5Board4turnEv
	.p2align	4, 0x90
	.type	_ZNK5Board4turnEv,@function
_ZNK5Board4turnEv:                      # @_ZNK5Board4turnEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	112(%rax), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	_ZNK5Board4turnEv, .Lfunc_end2-_ZNK5Board4turnEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK5Board8is_checkEv           # -- Begin function _ZNK5Board8is_checkEv
	.p2align	4, 0x90
	.type	_ZNK5Board8is_checkEv,@function
_ZNK5Board8is_checkEv:                  # @_ZNK5Board8is_checkEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movb	144(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	_ZNK5Board8is_checkEv, .Lfunc_end3-_ZNK5Board8is_checkEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK5Board4hashEv               # -- Begin function _ZNK5Board4hashEv
	.p2align	4, 0x90
	.type	_ZNK5Board4hashEv,@function
_ZNK5Board4hashEv:                      # @_ZNK5Board4hashEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	_ZNK5Board4hashEv, .Lfunc_end4-_ZNK5Board4hashEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK5Board9occupancyEv          # -- Begin function _ZNK5Board9occupancyEv
	.p2align	4, 0x90
	.type	_ZNK5Board9occupancyEv,@function
_ZNK5Board9occupancyEv:                 # @_ZNK5Board9occupancyEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%esi, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	callq	_ZNK5Board9occupancyEi
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	movl	$1, %esi
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	callq	_ZNK5Board9occupancyEi
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	orq	%rax, %rcx
	movq	%rcx, %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	_ZNK5Board9occupancyEv, .Lfunc_end5-_ZNK5Board9occupancyEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK5Board9occupancyEi          # -- Begin function _ZNK5Board9occupancyEi
	.p2align	4, 0x90
	.type	_ZNK5Board9occupancyEi,@function
_ZNK5Board9occupancyEi:                 # @_ZNK5Board9occupancyEi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, -20(%rbp)
	movb	$1, %cl
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movb	%cl, -33(%rbp)                  # 1-byte Spill
	je	.LBB6_2
# %bb.1:
	cmpl	$1, -20(%rbp)
	sete	%al
	movb	%al, -33(%rbp)                  # 1-byte Spill
.LBB6_2:
	movb	-33(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_3
	jmp	.LBB6_4
.LBB6_3:
	jmp	.LBB6_5
.LBB6_4:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$32, %edx
	leaq	.L__PRETTY_FUNCTION__._ZNK5Board9occupancyEi(%rip), %rcx
	callq	__assert_fail@PLT
.LBB6_5:
	cmpl	$0, -20(%rbp)
	jne	.LBB6_7
# %bb.6:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	80(%rax), %rcx
	orq	64(%rax), %rcx
	orq	32(%rax), %rcx
	orq	(%rax), %rcx
	orq	48(%rax), %rcx
	orq	16(%rax), %rcx
	movq	%rcx, -8(%rbp)
	jmp	.LBB6_8
.LBB6_7:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	88(%rax), %rcx
	orq	72(%rax), %rcx
	orq	40(%rax), %rcx
	orq	8(%rax), %rcx
	orq	56(%rax), %rcx
	orq	24(%rax), %rcx
	movq	%rcx, -8(%rbp)
.LBB6_8:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	_ZNK5Board9occupancyEi, .Lfunc_end6-_ZNK5Board9occupancyEi
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_board_getters.cpp
	.type	_GLOBAL__sub_I_board_getters.cpp,@function
_GLOBAL__sub_I_board_getters.cpp:       # @_GLOBAL__sub_I_board_getters.cpp
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
.Lfunc_end7:
	.size	_GLOBAL__sub_I_board_getters.cpp, .Lfunc_end7-_GLOBAL__sub_I_board_getters.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"color == White || color == Black"
	.size	.L.str, 33

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"src/chess/board_getters.cpp"
	.size	.L.str.1, 28

	.type	.L__PRETTY_FUNCTION__._ZNK5Board9occupancyEi,@object # @__PRETTY_FUNCTION__._ZNK5Board9occupancyEi
.L__PRETTY_FUNCTION__._ZNK5Board9occupancyEi:
	.asciz	"uint64_t Board::occupancy(int) const"
	.size	.L__PRETTY_FUNCTION__._ZNK5Board9occupancyEi, 37

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_board_getters.cpp
	.ident	"clang version 11.0.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __cxx_global_var_init
	.addrsig_sym __cxa_atexit
	.addrsig_sym _ZNK5Board9occupancyEi
	.addrsig_sym __assert_fail
	.addrsig_sym _GLOBAL__sub_I_board_getters.cpp
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
