	.text
	.file	"debug.cpp"
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
	.globl	_Z6print_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE # -- Begin function _Z6print_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.p2align	4, 0x90
	.type	_Z6print_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@function
_Z6print_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: # @_Z6print_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	_ZSt4cout@GOTPCREL(%rip), %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	leaq	.L.str(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	movq	%rax, %rdi
	leaq	.L.str(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E@PLT
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	_Z6print_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .Lfunc_end1-_Z6print_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_endproc
                                        # -- End function
	.globl	_Z6dump64m                      # -- Begin function _Z6dump64m
	.p2align	4, 0x90
	.type	_Z6dump64m,@function
_Z6dump64m:                             # @_Z6dump64m
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$304, %rsp                      # imm = 0x130
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -280(%rbp)
	movl	$0, -284(%rbp)
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$64, -284(%rbp)
	jge	.LBB2_3
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-280(%rbp), %rax
	andq	$1, %rax
                                        # kill: def $eax killed $eax killed $rax
	movslq	-284(%rbp), %rcx
	movl	%eax, -272(%rbp,%rcx,4)
	movq	-280(%rbp), %rcx
	shrq	$1, %rcx
	movq	%rcx, -280(%rbp)
	movl	-284(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -284(%rbp)
	jmp	.LBB2_1
.LBB2_3:
	movl	$7, -288(%rbp)
.LBB2_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_6 Depth 2
	cmpl	$0, -288(%rbp)
	jl	.LBB2_11
# %bb.5:                                #   in Loop: Header=BB2_4 Depth=1
	movl	$0, -292(%rbp)
.LBB2_6:                                #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$8, -292(%rbp)
	jge	.LBB2_9
# %bb.7:                                #   in Loop: Header=BB2_6 Depth=2
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	movl	-288(%rbp), %eax
	shll	$3, %eax
	addl	-292(%rbp), %eax
	movslq	%eax, %rcx
	movl	-272(%rbp,%rcx,4), %esi
	callq	_ZNSolsEi@PLT
# %bb.8:                                #   in Loop: Header=BB2_6 Depth=2
	movl	-292(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -292(%rbp)
	jmp	.LBB2_6
.LBB2_9:                                #   in Loop: Header=BB2_4 Depth=1
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
# %bb.10:                               #   in Loop: Header=BB2_4 Depth=1
	movl	-288(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -288(%rbp)
	jmp	.LBB2_4
.LBB2_11:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rsi
	callq	_ZNSolsEPFRSoS_E@PLT
	movq	%fs:40, %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	jne	.LBB2_13
# %bb.12:
	addq	$304, %rsp                      # imm = 0x130
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB2_13:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end2:
	.size	_Z6dump64m, .Lfunc_end2-_Z6dump64m
	.cfi_endproc
                                        # -- End function
	.globl	_Z6dump32i                      # -- Begin function _Z6dump32i
	.p2align	4, 0x90
	.type	_Z6dump32i,@function
_Z6dump32i:                             # @_Z6dump32i
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
	movl	%edi, -148(%rbp)
	movl	$0, -152(%rbp)
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$32, -152(%rbp)
	jge	.LBB3_3
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	movl	-148(%rbp), %eax
	andl	$1, %eax
	movslq	-152(%rbp), %rcx
	movl	%eax, -144(%rbp,%rcx,4)
	movl	-148(%rbp), %eax
	sarl	$1, %eax
	movl	%eax, -148(%rbp)
	movl	-152(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -152(%rbp)
	jmp	.LBB3_1
.LBB3_3:
	movl	$31, -156(%rbp)
.LBB3_4:                                # =>This Inner Loop Header: Depth=1
	cmpl	$0, -156(%rbp)
	jl	.LBB3_7
# %bb.5:                                #   in Loop: Header=BB3_4 Depth=1
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	movslq	-156(%rbp), %rax
	movl	-144(%rbp,%rax,4), %esi
	callq	_ZNSolsEj@PLT
# %bb.6:                                #   in Loop: Header=BB3_4 Depth=1
	movl	-156(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -156(%rbp)
	jmp	.LBB3_4
.LBB3_7:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rsi
	callq	_ZNSolsEPFRSoS_E@PLT
	movq	%fs:40, %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	jne	.LBB3_9
# %bb.8:
	addq	$160, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB3_9:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end3:
	.size	_Z6dump32i, .Lfunc_end3-_Z6dump32i
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_debug.cpp
	.type	_GLOBAL__sub_I_debug.cpp,@function
_GLOBAL__sub_I_debug.cpp:               # @_GLOBAL__sub_I_debug.cpp
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
	.size	_GLOBAL__sub_I_debug.cpp, .Lfunc_end4-_GLOBAL__sub_I_debug.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"---"
	.size	.L.str, 4

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"\n"
	.size	.L.str.1, 2

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_debug.cpp
	.ident	"clang version 11.0.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __cxx_global_var_init
	.addrsig_sym __cxa_atexit
	.addrsig_sym _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	.addrsig_sym _ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	.addrsig_sym _ZNSolsEPFRSoS_E
	.addrsig_sym _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.addrsig_sym _ZNSolsEi
	.addrsig_sym _ZNSolsEj
	.addrsig_sym _GLOBAL__sub_I_debug.cpp
	.addrsig_sym __stack_chk_fail
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym _ZSt4cout
