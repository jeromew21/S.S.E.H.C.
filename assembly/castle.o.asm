	.text
	.file	"castle.cpp"
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
	.globl	_ZN5board6castle6RightsC2Ev     # -- Begin function _ZN5board6castle6RightsC2Ev
	.p2align	4, 0x90
	.type	_ZN5board6castle6RightsC2Ev,@function
_ZN5board6castle6RightsC2Ev:            # @_ZN5board6castle6RightsC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
	movl	$1, 4(%rax)
	movl	$1, 4(%rax)
	movl	$1, 4(%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	_ZN5board6castle6RightsC2Ev, .Lfunc_end1-_ZN5board6castle6RightsC2Ev
	.cfi_endproc
                                        # -- End function
	.globl	_ZN5board6castle6RightsC2Eiiii  # -- Begin function _ZN5board6castle6RightsC2Eiiii
	.p2align	4, 0x90
	.type	_ZN5board6castle6RightsC2Eiiii,@function
_ZN5board6castle6RightsC2Eiiii:         # @_ZN5board6castle6RightsC2Eiiii
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, -12(%rbp)
	movb	$1, %r9b
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movb	%r9b, -33(%rbp)                 # 1-byte Spill
	je	.LBB2_2
# %bb.1:
	cmpl	$1, -12(%rbp)
	sete	%al
	movb	%al, -33(%rbp)                  # 1-byte Spill
.LBB2_2:
	movb	-33(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB2_3
	jmp	.LBB2_4
.LBB2_3:
	jmp	.LBB2_5
.LBB2_4:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$17, %edx
	leaq	.L__PRETTY_FUNCTION__._ZN5board6castle6RightsC2Eiiii(%rip), %rcx
	callq	__assert_fail@PLT
.LBB2_5:
	cmpl	$0, -16(%rbp)
	movb	$1, %al
	movb	%al, -34(%rbp)                  # 1-byte Spill
	je	.LBB2_7
# %bb.6:
	cmpl	$1, -16(%rbp)
	sete	%al
	movb	%al, -34(%rbp)                  # 1-byte Spill
.LBB2_7:
	movb	-34(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB2_8
	jmp	.LBB2_9
.LBB2_8:
	jmp	.LBB2_10
.LBB2_9:
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$18, %edx
	leaq	.L__PRETTY_FUNCTION__._ZN5board6castle6RightsC2Eiiii(%rip), %rcx
	callq	__assert_fail@PLT
.LBB2_10:
	cmpl	$0, -20(%rbp)
	movb	$1, %al
	movb	%al, -35(%rbp)                  # 1-byte Spill
	je	.LBB2_12
# %bb.11:
	cmpl	$1, -20(%rbp)
	sete	%al
	movb	%al, -35(%rbp)                  # 1-byte Spill
.LBB2_12:
	movb	-35(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB2_13
	jmp	.LBB2_14
.LBB2_13:
	jmp	.LBB2_15
.LBB2_14:
	leaq	.L.str.3(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$19, %edx
	leaq	.L__PRETTY_FUNCTION__._ZN5board6castle6RightsC2Eiiii(%rip), %rcx
	callq	__assert_fail@PLT
.LBB2_15:
	cmpl	$0, -24(%rbp)
	movb	$1, %al
	movb	%al, -36(%rbp)                  # 1-byte Spill
	je	.LBB2_17
# %bb.16:
	cmpl	$1, -24(%rbp)
	sete	%al
	movb	%al, -36(%rbp)                  # 1-byte Spill
.LBB2_17:
	movb	-36(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB2_18
	jmp	.LBB2_19
.LBB2_18:
	jmp	.LBB2_20
.LBB2_19:
	leaq	.L.str.4(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$20, %edx
	leaq	.L__PRETTY_FUNCTION__._ZN5board6castle6RightsC2Eiiii(%rip), %rcx
	callq	__assert_fail@PLT
.LBB2_20:
	movl	-12(%rbp), %eax
	movq	-32(%rbp), %rcx                 # 8-byte Reload
	movl	%eax, (%rcx)
	movl	-16(%rbp), %eax
	movl	%eax, 4(%rcx)
	movl	-20(%rbp), %eax
	movl	%eax, 4(%rcx)
	movl	-24(%rbp), %eax
	movl	%eax, 12(%rcx)
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	_ZN5board6castle6RightsC2Eiiii, .Lfunc_end2-_ZN5board6castle6RightsC2Eiiii
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK5board6castle6Rights3getEii # -- Begin function _ZNK5board6castle6Rights3getEii
	.p2align	4, 0x90
	.type	_ZNK5board6castle6Rights3getEii,@function
_ZNK5board6castle6Rights3getEii:        # @_ZNK5board6castle6Rights3getEii
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
	movq	-8(%rbp), %rax
	cmpl	$0, -16(%rbp)
	movb	$1, %cl
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movb	%cl, -25(%rbp)                  # 1-byte Spill
	je	.LBB3_2
# %bb.1:
	cmpl	$2, -16(%rbp)
	sete	%al
	movb	%al, -25(%rbp)                  # 1-byte Spill
.LBB3_2:
	movb	-25(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB3_3
	jmp	.LBB3_4
.LBB3_3:
	jmp	.LBB3_5
.LBB3_4:
	leaq	.L.str.5(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$31, %edx
	leaq	.L__PRETTY_FUNCTION__._ZNK5board6castle6Rights3getEii(%rip), %rcx
	callq	__assert_fail@PLT
.LBB3_5:
	movl	-16(%rbp), %eax
	addl	-12(%rbp), %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx                 # 8-byte Reload
	movl	(%rdx,%rcx,4), %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	_ZNK5board6castle6Rights3getEii, .Lfunc_end3-_ZNK5board6castle6Rights3getEii
	.cfi_endproc
                                        # -- End function
	.globl	_ZN5board6castle6Rights3SetEiii # -- Begin function _ZN5board6castle6Rights3SetEiii
	.p2align	4, 0x90
	.type	_ZN5board6castle6Rights3SetEiii,@function
_ZN5board6castle6Rights3SetEiii:        # @_ZN5board6castle6Rights3SetEiii
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, -16(%rbp)
	movb	$1, %r8b
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movb	%r8b, -33(%rbp)                 # 1-byte Spill
	je	.LBB4_2
# %bb.1:
	cmpl	$2, -16(%rbp)
	sete	%al
	movb	%al, -33(%rbp)                  # 1-byte Spill
.LBB4_2:
	movb	-33(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB4_3
	jmp	.LBB4_4
.LBB4_3:
	jmp	.LBB4_5
.LBB4_4:
	leaq	.L.str.5(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$38, %edx
	leaq	.L__PRETTY_FUNCTION__._ZN5board6castle6Rights3SetEiii(%rip), %rcx
	callq	__assert_fail@PLT
.LBB4_5:
	cmpl	$0, -20(%rbp)
	movb	$1, %al
	movb	%al, -34(%rbp)                  # 1-byte Spill
	je	.LBB4_7
# %bb.6:
	cmpl	$1, -20(%rbp)
	sete	%al
	movb	%al, -34(%rbp)                  # 1-byte Spill
.LBB4_7:
	movb	-34(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB4_8
	jmp	.LBB4_9
.LBB4_8:
	jmp	.LBB4_10
.LBB4_9:
	leaq	.L.str.6(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$39, %edx
	leaq	.L__PRETTY_FUNCTION__._ZN5board6castle6Rights3SetEiii(%rip), %rcx
	callq	__assert_fail@PLT
.LBB4_10:
	movl	-20(%rbp), %eax
	movl	-16(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-32(%rbp), %rsi                 # 8-byte Reload
	movl	%eax, (%rsi,%rdx,4)
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	_ZN5board6castle6Rights3SetEiii, .Lfunc_end4-_ZN5board6castle6Rights3SetEiii
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_castle.cpp
	.type	_GLOBAL__sub_I_castle.cpp,@function
_GLOBAL__sub_I_castle.cpp:              # @_GLOBAL__sub_I_castle.cpp
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
.Lfunc_end5:
	.size	_GLOBAL__sub_I_castle.cpp, .Lfunc_end5-_GLOBAL__sub_I_castle.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"w_long == 0 || w_long == 1"
	.size	.L.str, 27

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"src/datastructures/castle.cpp"
	.size	.L.str.1, 30

	.type	.L__PRETTY_FUNCTION__._ZN5board6castle6RightsC2Eiiii,@object # @__PRETTY_FUNCTION__._ZN5board6castle6RightsC2Eiiii
.L__PRETTY_FUNCTION__._ZN5board6castle6RightsC2Eiiii:
	.asciz	"board::castle::Rights::Rights(int, int, int, int)"
	.size	.L__PRETTY_FUNCTION__._ZN5board6castle6RightsC2Eiiii, 50

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"w_short == 0 || w_short == 1"
	.size	.L.str.2, 29

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"b_long == 0 || b_long == 1"
	.size	.L.str.3, 27

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"b_short == 0 || b_short == 1"
	.size	.L.str.4, 29

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"direction == castle::long_ || direction == castle::short_"
	.size	.L.str.5, 58

	.type	.L__PRETTY_FUNCTION__._ZNK5board6castle6Rights3getEii,@object # @__PRETTY_FUNCTION__._ZNK5board6castle6Rights3getEii
.L__PRETTY_FUNCTION__._ZNK5board6castle6Rights3getEii:
	.asciz	"int board::castle::Rights::get(int, int) const"
	.size	.L__PRETTY_FUNCTION__._ZNK5board6castle6Rights3getEii, 47

	.type	.L__PRETTY_FUNCTION__._ZN5board6castle6Rights3SetEiii,@object # @__PRETTY_FUNCTION__._ZN5board6castle6Rights3SetEiii
.L__PRETTY_FUNCTION__._ZN5board6castle6Rights3SetEiii:
	.asciz	"void board::castle::Rights::Set(int, int, int)"
	.size	.L__PRETTY_FUNCTION__._ZN5board6castle6Rights3SetEiii, 47

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"value == 0 || value == 1"
	.size	.L.str.6, 25

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_castle.cpp
	.globl	_ZN5board6castle6RightsC1Ev
	.type	_ZN5board6castle6RightsC1Ev,@function
.set _ZN5board6castle6RightsC1Ev, _ZN5board6castle6RightsC2Ev
	.globl	_ZN5board6castle6RightsC1Eiiii
	.type	_ZN5board6castle6RightsC1Eiiii,@function
.set _ZN5board6castle6RightsC1Eiiii, _ZN5board6castle6RightsC2Eiiii
	.ident	"clang version 11.0.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __cxx_global_var_init
	.addrsig_sym __cxa_atexit
	.addrsig_sym __assert_fail
	.addrsig_sym _GLOBAL__sub_I_castle.cpp
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
