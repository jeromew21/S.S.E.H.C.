	.text
	.file	"search.cpp"
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
	.globl	_Z6popMinRSt6vectorI9MoveScoreSaIS0_EE # -- Begin function _Z6popMinRSt6vectorI9MoveScoreSaIS0_EE
	.p2align	4, 0x90
	.type	_Z6popMinRSt6vectorI9MoveScoreSaIS0_EE,@function
_Z6popMinRSt6vectorI9MoveScoreSaIS0_EE: # @_Z6popMinRSt6vectorI9MoveScoreSaIS0_EE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -48(%rbp)
	movl	$2147483647, -52(%rbp)          # imm = 0x7FFFFFFF
	movl	$0, -56(%rbp)
	movl	$0, -60(%rbp)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	movq	-48(%rbp), %rdi
	movl	%eax, -76(%rbp)                 # 4-byte Spill
	callq	_ZNKSt6vectorI9MoveScoreSaIS0_EE4sizeEv
                                        # kill: def $eax killed $eax killed $rax
	movl	-76(%rbp), %ecx                 # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB1_6
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	movq	-48(%rbp), %rdi
	movslq	-60(%rbp), %rsi
	callq	_ZNSt6vectorI9MoveScoreSaIS0_EEixEm
	movl	4(%rax), %ecx
	cmpl	-52(%rbp), %ecx
	jge	.LBB1_4
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	movq	-48(%rbp), %rdi
	movslq	-60(%rbp), %rsi
	callq	_ZNSt6vectorI9MoveScoreSaIS0_EEixEm
	movl	4(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movl	-60(%rbp), %ecx
	movl	%ecx, -56(%rbp)
.LBB1_4:                                #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_5
.LBB1_5:                                #   in Loop: Header=BB1_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB1_1
.LBB1_6:
	movq	-48(%rbp), %rdi
	movslq	-56(%rbp), %rsi
	callq	_ZNSt6vectorI9MoveScoreSaIS0_EEixEm
	movw	(%rax), %cx
	movw	%cx, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	callq	_ZNSt6vectorI9MoveScoreSaIS0_EE5beginEv
	movq	%rax, -40(%rbp)
	movslq	-56(%rbp), %rsi
	leaq	-40(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS1_SaIS1_EEEplEl
	movq	%rax, -32(%rbp)
	leaq	-24(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPK9MoveScoreSt6vectorIS1_SaIS1_EEEC2IPS1_EERKNS0_IT_NS_11__enable_ifIXsr3std10__are_sameISA_S9_EE7__valueES6_E6__typeEEE
	movq	-24(%rbp), %rsi
	movq	-88(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt6vectorI9MoveScoreSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE
	movq	%rax, -72(%rbp)
	movw	-16(%rbp), %ax
	movq	%fs:40, %rdx
	movq	-8(%rbp), %rsi
	cmpq	%rsi, %rdx
	movw	%ax, -90(%rbp)                  # 2-byte Spill
	jne	.LBB1_8
# %bb.7:
	movw	-90(%rbp), %ax                  # 2-byte Reload
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_8:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end1:
	.size	_Z6popMinRSt6vectorI9MoveScoreSaIS0_EE, .Lfunc_end1-_Z6popMinRSt6vectorI9MoveScoreSaIS0_EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6vectorI9MoveScoreSaIS0_EE4sizeEv,"axG",@progbits,_ZNKSt6vectorI9MoveScoreSaIS0_EE4sizeEv,comdat
	.weak	_ZNKSt6vectorI9MoveScoreSaIS0_EE4sizeEv # -- Begin function _ZNKSt6vectorI9MoveScoreSaIS0_EE4sizeEv
	.p2align	4, 0x90
	.type	_ZNKSt6vectorI9MoveScoreSaIS0_EE4sizeEv,@function
_ZNKSt6vectorI9MoveScoreSaIS0_EE4sizeEv: # @_ZNKSt6vectorI9MoveScoreSaIS0_EE4sizeEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	(%rax), %rax
	subq	%rax, %rcx
	sarq	$3, %rcx
	movq	%rcx, %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	_ZNKSt6vectorI9MoveScoreSaIS0_EE4sizeEv, .Lfunc_end2-_ZNKSt6vectorI9MoveScoreSaIS0_EE4sizeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorI9MoveScoreSaIS0_EEixEm,"axG",@progbits,_ZNSt6vectorI9MoveScoreSaIS0_EEixEm,comdat
	.weak	_ZNSt6vectorI9MoveScoreSaIS0_EEixEm # -- Begin function _ZNSt6vectorI9MoveScoreSaIS0_EEixEm
	.p2align	4, 0x90
	.type	_ZNSt6vectorI9MoveScoreSaIS0_EEixEm,@function
_ZNSt6vectorI9MoveScoreSaIS0_EEixEm:    # @_ZNSt6vectorI9MoveScoreSaIS0_EEixEm
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
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	_ZNSt6vectorI9MoveScoreSaIS0_EEixEm, .Lfunc_end3-_ZNSt6vectorI9MoveScoreSaIS0_EEixEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorI9MoveScoreSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE,"axG",@progbits,_ZNSt6vectorI9MoveScoreSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE,comdat
	.weak	_ZNSt6vectorI9MoveScoreSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE # -- Begin function _ZNSt6vectorI9MoveScoreSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE
	.p2align	4, 0x90
	.type	_ZNSt6vectorI9MoveScoreSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE,@function
_ZNSt6vectorI9MoveScoreSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE: # @_ZNSt6vectorI9MoveScoreSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	callq	_ZNSt6vectorI9MoveScoreSaIS0_EE5beginEv
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNKSt6vectorI9MoveScoreSaIS0_EE6cbeginEv
	movq	%rax, -32(%rbp)
	leaq	-16(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	callq	_ZN9__gnu_cxxmiIPK9MoveScoreSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	leaq	-24(%rbp), %rdi
	movq	%rax, %rsi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS1_SaIS1_EEEplEl
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt6vectorI9MoveScoreSaIS0_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS0_S2_EE
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%fs:40, %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	jne	.LBB4_2
# %bb.1:
	movq	-72(%rbp), %rax                 # 8-byte Reload
	addq	$80, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB4_2:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end4:
	.size	_ZNSt6vectorI9MoveScoreSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE, .Lfunc_end4-_ZNSt6vectorI9MoveScoreSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorI9MoveScoreSaIS0_EE5beginEv,"axG",@progbits,_ZNSt6vectorI9MoveScoreSaIS0_EE5beginEv,comdat
	.weak	_ZNSt6vectorI9MoveScoreSaIS0_EE5beginEv # -- Begin function _ZNSt6vectorI9MoveScoreSaIS0_EE5beginEv
	.p2align	4, 0x90
	.type	_ZNSt6vectorI9MoveScoreSaIS0_EE5beginEv,@function
_ZNSt6vectorI9MoveScoreSaIS0_EE5beginEv: # @_ZNSt6vectorI9MoveScoreSaIS0_EE5beginEv
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
	movq	-24(%rbp), %rsi
	leaq	-16(%rbp), %rdi
	callq	_ZN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS1_SaIS1_EEEC2ERKS2_
	movq	-16(%rbp), %rax
	movq	%fs:40, %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	jne	.LBB5_2
# %bb.1:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB5_2:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end5:
	.size	_ZNSt6vectorI9MoveScoreSaIS0_EE5beginEv, .Lfunc_end5-_ZNSt6vectorI9MoveScoreSaIS0_EE5beginEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS1_SaIS1_EEEplEl,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS1_SaIS1_EEEplEl,comdat
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS1_SaIS1_EEEplEl # -- Begin function _ZNK9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS1_SaIS1_EEEplEl
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS1_SaIS1_EEEplEl,@function
_ZNK9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS1_SaIS1_EEEplEl: # @_ZNK9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS1_SaIS1_EEEplEl
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
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	leaq	(%rax,%rcx,8), %rax
	movq	%rax, -24(%rbp)
	leaq	-16(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	_ZN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS1_SaIS1_EEEC2ERKS2_
	movq	-16(%rbp), %rax
	movq	%fs:40, %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	jne	.LBB6_2
# %bb.1:
	movq	-48(%rbp), %rax                 # 8-byte Reload
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB6_2:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end6:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS1_SaIS1_EEEplEl, .Lfunc_end6-_ZNK9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS1_SaIS1_EEEplEl
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPK9MoveScoreSt6vectorIS1_SaIS1_EEEC2IPS1_EERKNS0_IT_NS_11__enable_ifIXsr3std10__are_sameISA_S9_EE7__valueES6_E6__typeEEE,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPK9MoveScoreSt6vectorIS1_SaIS1_EEEC2IPS1_EERKNS0_IT_NS_11__enable_ifIXsr3std10__are_sameISA_S9_EE7__valueES6_E6__typeEEE,comdat
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPK9MoveScoreSt6vectorIS1_SaIS1_EEEC2IPS1_EERKNS0_IT_NS_11__enable_ifIXsr3std10__are_sameISA_S9_EE7__valueES6_E6__typeEEE # -- Begin function _ZN9__gnu_cxx17__normal_iteratorIPK9MoveScoreSt6vectorIS1_SaIS1_EEEC2IPS1_EERKNS0_IT_NS_11__enable_ifIXsr3std10__are_sameISA_S9_EE7__valueES6_E6__typeEEE
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx17__normal_iteratorIPK9MoveScoreSt6vectorIS1_SaIS1_EEEC2IPS1_EERKNS0_IT_NS_11__enable_ifIXsr3std10__are_sameISA_S9_EE7__valueES6_E6__typeEEE,@function
_ZN9__gnu_cxx17__normal_iteratorIPK9MoveScoreSt6vectorIS1_SaIS1_EEEC2IPS1_EERKNS0_IT_NS_11__enable_ifIXsr3std10__are_sameISA_S9_EE7__valueES6_E6__typeEEE: # @_ZN9__gnu_cxx17__normal_iteratorIPK9MoveScoreSt6vectorIS1_SaIS1_EEEC2IPS1_EERKNS0_IT_NS_11__enable_ifIXsr3std10__are_sameISA_S9_EE7__valueES6_E6__typeEEE
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
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	callq	_ZNK9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	movq	%rax, (%rcx)
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPK9MoveScoreSt6vectorIS1_SaIS1_EEEC2IPS1_EERKNS0_IT_NS_11__enable_ifIXsr3std10__are_sameISA_S9_EE7__valueES6_E6__typeEEE, .Lfunc_end7-_ZN9__gnu_cxx17__normal_iteratorIPK9MoveScoreSt6vectorIS1_SaIS1_EEEC2IPS1_EERKNS0_IT_NS_11__enable_ifIXsr3std10__are_sameISA_S9_EE7__valueES6_E6__typeEEE
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_Z6popMaxRSt6vectorI9MoveScoreSaIS0_EE # -- Begin function _Z6popMaxRSt6vectorI9MoveScoreSaIS0_EE
	.p2align	4, 0x90
	.type	_Z6popMaxRSt6vectorI9MoveScoreSaIS0_EE,@function
_Z6popMaxRSt6vectorI9MoveScoreSaIS0_EE: # @_Z6popMaxRSt6vectorI9MoveScoreSaIS0_EE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -48(%rbp)
	movl	$-2147483648, -52(%rbp)         # imm = 0x80000000
	movl	$0, -56(%rbp)
	movl	$0, -60(%rbp)
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	movq	-48(%rbp), %rdi
	movl	%eax, -76(%rbp)                 # 4-byte Spill
	callq	_ZNKSt6vectorI9MoveScoreSaIS0_EE4sizeEv
                                        # kill: def $eax killed $eax killed $rax
	movl	-76(%rbp), %ecx                 # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB8_6
# %bb.2:                                #   in Loop: Header=BB8_1 Depth=1
	movq	-48(%rbp), %rdi
	movslq	-60(%rbp), %rsi
	callq	_ZNSt6vectorI9MoveScoreSaIS0_EEixEm
	movl	4(%rax), %ecx
	cmpl	-52(%rbp), %ecx
	jle	.LBB8_4
# %bb.3:                                #   in Loop: Header=BB8_1 Depth=1
	movq	-48(%rbp), %rdi
	movslq	-60(%rbp), %rsi
	callq	_ZNSt6vectorI9MoveScoreSaIS0_EEixEm
	movl	4(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movl	-60(%rbp), %ecx
	movl	%ecx, -56(%rbp)
.LBB8_4:                                #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_5
.LBB8_5:                                #   in Loop: Header=BB8_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB8_1
.LBB8_6:
	movq	-48(%rbp), %rdi
	movslq	-56(%rbp), %rsi
	callq	_ZNSt6vectorI9MoveScoreSaIS0_EEixEm
	movw	(%rax), %cx
	movw	%cx, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	callq	_ZNSt6vectorI9MoveScoreSaIS0_EE5beginEv
	movq	%rax, -40(%rbp)
	movslq	-56(%rbp), %rsi
	leaq	-40(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS1_SaIS1_EEEplEl
	movq	%rax, -32(%rbp)
	leaq	-24(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPK9MoveScoreSt6vectorIS1_SaIS1_EEEC2IPS1_EERKNS0_IT_NS_11__enable_ifIXsr3std10__are_sameISA_S9_EE7__valueES6_E6__typeEEE
	movq	-24(%rbp), %rsi
	movq	-88(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt6vectorI9MoveScoreSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE
	movq	%rax, -72(%rbp)
	movw	-16(%rbp), %ax
	movq	%fs:40, %rdx
	movq	-8(%rbp), %rsi
	cmpq	%rsi, %rdx
	movw	%ax, -90(%rbp)                  # 2-byte Spill
	jne	.LBB8_8
# %bb.7:
	movw	-90(%rbp), %ax                  # 2-byte Reload
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB8_8:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end8:
	.size	_Z6popMaxRSt6vectorI9MoveScoreSaIS0_EE, .Lfunc_end8-_Z6popMaxRSt6vectorI9MoveScoreSaIS0_EE
	.cfi_endproc
                                        # -- End function
	.globl	_Z9sortMovesRSt6vectorI9MoveScoreSaIS0_EE # -- Begin function _Z9sortMovesRSt6vectorI9MoveScoreSaIS0_EE
	.p2align	4, 0x90
	.type	_Z9sortMovesRSt6vectorI9MoveScoreSaIS0_EE,@function
_Z9sortMovesRSt6vectorI9MoveScoreSaIS0_EE: # @_Z9sortMovesRSt6vectorI9MoveScoreSaIS0_EE
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
	movq	-24(%rbp), %rdi
	callq	_ZNKSt6vectorI9MoveScoreSaIS0_EE4sizeEv
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -28(%rbp)
	movl	$1, -32(%rbp)
.LBB9_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_3 Depth 2
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB9_9
# %bb.2:                                #   in Loop: Header=BB9_1 Depth=1
	movq	-24(%rbp), %rdi
	movslq	-32(%rbp), %rsi
	callq	_ZNSt6vectorI9MoveScoreSaIS0_EEixEm
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	-32(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -36(%rbp)
.LBB9_3:                                #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, -36(%rbp)
	movb	%al, -37(%rbp)                  # 1-byte Spill
	jl	.LBB9_5
# %bb.4:                                #   in Loop: Header=BB9_3 Depth=2
	movq	-24(%rbp), %rdi
	movslq	-36(%rbp), %rsi
	callq	_ZNSt6vectorI9MoveScoreSaIS0_EEixEm
	movl	4(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	setg	%dl
	movb	%dl, -37(%rbp)                  # 1-byte Spill
.LBB9_5:                                #   in Loop: Header=BB9_3 Depth=2
	movb	-37(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB9_6
	jmp	.LBB9_7
.LBB9_6:                                #   in Loop: Header=BB9_3 Depth=2
	movq	-24(%rbp), %rdi
	movslq	-36(%rbp), %rsi
	callq	_ZNSt6vectorI9MoveScoreSaIS0_EEixEm
	movq	-24(%rbp), %rdi
	movl	-36(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rsi
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	callq	_ZNSt6vectorI9MoveScoreSaIS0_EEixEm
	movq	-48(%rbp), %rdx                 # 8-byte Reload
	movq	(%rdx), %rsi
	movq	%rsi, (%rax)
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -36(%rbp)
	jmp	.LBB9_3
.LBB9_7:                                #   in Loop: Header=BB9_1 Depth=1
	movq	-24(%rbp), %rdi
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	callq	_ZNSt6vectorI9MoveScoreSaIS0_EEixEm
	movq	-16(%rbp), %rcx
	movq	%rcx, (%rax)
# %bb.8:                                #   in Loop: Header=BB9_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB9_1
.LBB9_9:
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB9_11
# %bb.10:
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB9_11:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end9:
	.size	_Z9sortMovesRSt6vectorI9MoveScoreSaIS0_EE, .Lfunc_end9-_Z9sortMovesRSt6vectorI9MoveScoreSaIS0_EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS1_SaIS1_EEEC2ERKS2_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS1_SaIS1_EEEC2ERKS2_,comdat
	.weak	_ZN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS1_SaIS1_EEEC2ERKS2_ # -- Begin function _ZN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS1_SaIS1_EEEC2ERKS2_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS1_SaIS1_EEEC2ERKS2_,@function
_ZN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS1_SaIS1_EEEC2ERKS2_: # @_ZN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS1_SaIS1_EEEC2ERKS2_
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
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end10:
	.size	_ZN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS1_SaIS1_EEEC2ERKS2_, .Lfunc_end10-_ZN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS1_SaIS1_EEEC2ERKS2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorI9MoveScoreSaIS0_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS0_S2_EE,"axG",@progbits,_ZNSt6vectorI9MoveScoreSaIS0_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS0_S2_EE,comdat
	.weak	_ZNSt6vectorI9MoveScoreSaIS0_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS0_S2_EE # -- Begin function _ZNSt6vectorI9MoveScoreSaIS0_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS0_S2_EE
	.p2align	4, 0x90
	.type	_ZNSt6vectorI9MoveScoreSaIS0_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS0_S2_EE,@function
_ZNSt6vectorI9MoveScoreSaIS0_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS0_S2_EE: # @_ZNSt6vectorI9MoveScoreSaIS0_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS0_S2_EE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	-24(%rbp), %rdi
	movl	$1, %esi
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	callq	_ZNK9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS1_SaIS1_EEEplEl
	movq	%rax, -32(%rbp)
	movq	-88(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt6vectorI9MoveScoreSaIS0_EE3endEv
	movq	%rax, -40(%rbp)
	leaq	-32(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	callq	_ZN9__gnu_cxxneIP9MoveScoreSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	testb	$1, %al
	jne	.LBB11_1
	jmp	.LBB11_2
.LBB11_1:
	leaq	-24(%rbp), %rdi
	movl	$1, %esi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS1_SaIS1_EEEplEl
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt6vectorI9MoveScoreSaIS0_EE3endEv
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_
	movq	%rax, -80(%rbp)
.LBB11_2:
	movq	-88(%rbp), %rax                 # 8-byte Reload
	movq	8(%rax), %rcx
	addq	$-8, %rcx
	movq	%rcx, 8(%rax)
	movq	8(%rax), %rsi
	movq	%rax, %rdi
	callq	_ZNSt16allocator_traitsISaI9MoveScoreEE7destroyIS0_EEvRS1_PT_
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%fs:40, %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movq	%rax, -96(%rbp)                 # 8-byte Spill
	jne	.LBB11_4
# %bb.3:
	movq	-96(%rbp), %rax                 # 8-byte Reload
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB11_4:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end11:
	.size	_ZNSt6vectorI9MoveScoreSaIS0_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS0_S2_EE, .Lfunc_end11-_ZNSt6vectorI9MoveScoreSaIS0_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS0_S2_EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxxmiIPK9MoveScoreSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_,"axG",@progbits,_ZN9__gnu_cxxmiIPK9MoveScoreSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_,comdat
	.weak	_ZN9__gnu_cxxmiIPK9MoveScoreSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_ # -- Begin function _ZN9__gnu_cxxmiIPK9MoveScoreSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxxmiIPK9MoveScoreSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_,@function
_ZN9__gnu_cxxmiIPK9MoveScoreSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_: # @_ZN9__gnu_cxxmiIPK9MoveScoreSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
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
	movq	-8(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPK9MoveScoreSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPK9MoveScoreSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	subq	%rax, %rcx
	sarq	$3, %rcx
	movq	%rcx, %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end12:
	.size	_ZN9__gnu_cxxmiIPK9MoveScoreSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_, .Lfunc_end12-_ZN9__gnu_cxxmiIPK9MoveScoreSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6vectorI9MoveScoreSaIS0_EE6cbeginEv,"axG",@progbits,_ZNKSt6vectorI9MoveScoreSaIS0_EE6cbeginEv,comdat
	.weak	_ZNKSt6vectorI9MoveScoreSaIS0_EE6cbeginEv # -- Begin function _ZNKSt6vectorI9MoveScoreSaIS0_EE6cbeginEv
	.p2align	4, 0x90
	.type	_ZNKSt6vectorI9MoveScoreSaIS0_EE6cbeginEv,@function
_ZNKSt6vectorI9MoveScoreSaIS0_EE6cbeginEv: # @_ZNKSt6vectorI9MoveScoreSaIS0_EE6cbeginEv
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
	movq	-24(%rbp), %rsi
	leaq	-16(%rbp), %rdi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPK9MoveScoreSt6vectorIS1_SaIS1_EEEC2ERKS3_
	movq	-16(%rbp), %rax
	movq	%fs:40, %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	jne	.LBB13_2
# %bb.1:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB13_2:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end13:
	.size	_ZNKSt6vectorI9MoveScoreSaIS0_EE6cbeginEv, .Lfunc_end13-_ZNKSt6vectorI9MoveScoreSaIS0_EE6cbeginEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxxneIP9MoveScoreSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_,"axG",@progbits,_ZN9__gnu_cxxneIP9MoveScoreSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_,comdat
	.weak	_ZN9__gnu_cxxneIP9MoveScoreSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_ # -- Begin function _ZN9__gnu_cxxneIP9MoveScoreSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxxneIP9MoveScoreSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_,@function
_ZN9__gnu_cxxneIP9MoveScoreSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_: # @_ZN9__gnu_cxxneIP9MoveScoreSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
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
	movq	-8(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	callq	_ZNK9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS1_SaIS1_EEE4baseEv
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	cmpq	(%rax), %rcx
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end14:
	.size	_ZN9__gnu_cxxneIP9MoveScoreSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_, .Lfunc_end14-_ZN9__gnu_cxxneIP9MoveScoreSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorI9MoveScoreSaIS0_EE3endEv,"axG",@progbits,_ZNSt6vectorI9MoveScoreSaIS0_EE3endEv,comdat
	.weak	_ZNSt6vectorI9MoveScoreSaIS0_EE3endEv # -- Begin function _ZNSt6vectorI9MoveScoreSaIS0_EE3endEv
	.p2align	4, 0x90
	.type	_ZNSt6vectorI9MoveScoreSaIS0_EE3endEv,@function
_ZNSt6vectorI9MoveScoreSaIS0_EE3endEv:  # @_ZNSt6vectorI9MoveScoreSaIS0_EE3endEv
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
	addq	$8, %rax
	leaq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	_ZN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS1_SaIS1_EEEC2ERKS2_
	movq	-16(%rbp), %rax
	movq	%fs:40, %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	jne	.LBB15_2
# %bb.1:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB15_2:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end15:
	.size	_ZNSt6vectorI9MoveScoreSaIS0_EE3endEv, .Lfunc_end15-_ZNSt6vectorI9MoveScoreSaIS0_EE3endEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt4moveIN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_,"axG",@progbits,_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_,comdat
	.weak	_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_ # -- Begin function _ZSt4moveIN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_
	.p2align	4, 0x90
	.type	_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_,@function
_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_: # @_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS2_SaIS2_EEEEET_S8_
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS2_SaIS2_EEEEET_S8_
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	_ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS2_SaIS2_EEEES7_ET1_T0_S9_S8_
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%fs:40, %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	jne	.LBB16_2
# %bb.1:
	movq	-88(%rbp), %rax                 # 8-byte Reload
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB16_2:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end16:
	.size	_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_, .Lfunc_end16-_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaI9MoveScoreEE7destroyIS0_EEvRS1_PT_,"axG",@progbits,_ZNSt16allocator_traitsISaI9MoveScoreEE7destroyIS0_EEvRS1_PT_,comdat
	.weak	_ZNSt16allocator_traitsISaI9MoveScoreEE7destroyIS0_EEvRS1_PT_ # -- Begin function _ZNSt16allocator_traitsISaI9MoveScoreEE7destroyIS0_EEvRS1_PT_
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaI9MoveScoreEE7destroyIS0_EEvRS1_PT_,@function
_ZNSt16allocator_traitsISaI9MoveScoreEE7destroyIS0_EEvRS1_PT_: # @_ZNSt16allocator_traitsISaI9MoveScoreEE7destroyIS0_EEvRS1_PT_
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
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	_ZN9__gnu_cxx13new_allocatorI9MoveScoreE7destroyIS1_EEvPT_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end17:
	.size	_ZNSt16allocator_traitsISaI9MoveScoreEE7destroyIS0_EEvRS1_PT_, .Lfunc_end17-_ZNSt16allocator_traitsISaI9MoveScoreEE7destroyIS0_EEvRS1_PT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS1_SaIS1_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS1_SaIS1_EEE4baseEv,comdat
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS1_SaIS1_EEE4baseEv # -- Begin function _ZNK9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS1_SaIS1_EEE4baseEv
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS1_SaIS1_EEE4baseEv,@function
_ZNK9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS1_SaIS1_EEE4baseEv: # @_ZNK9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS1_SaIS1_EEE4baseEv
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
.Lfunc_end18:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS1_SaIS1_EEE4baseEv, .Lfunc_end18-_ZNK9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS1_SaIS1_EEE4baseEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS2_SaIS2_EEEES7_ET1_T0_S9_S8_,"axG",@progbits,_ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS2_SaIS2_EEEES7_ET1_T0_S9_S8_,comdat
	.weak	_ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS2_SaIS2_EEEES7_ET1_T0_S9_S8_ # -- Begin function _ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS2_SaIS2_EEEES7_ET1_T0_S9_S8_
	.p2align	4, 0x90
	.type	_ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS2_SaIS2_EEEES7_ET1_T0_S9_S8_,@function
_ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS2_SaIS2_EEEES7_ET1_T0_S9_S8_: # @_ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS2_SaIS2_EEEES7_ET1_T0_S9_S8_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	_ZSt12__niter_baseIP9MoveScoreSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	movq	-24(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	callq	_ZSt12__niter_baseIP9MoveScoreSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	movq	-32(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	callq	_ZSt12__niter_baseIP9MoveScoreSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	movq	-80(%rbp), %rdi                 # 8-byte Reload
	movq	-88(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZSt14__copy_move_a1ILb1EP9MoveScoreS1_ET1_T0_S3_S2_
	movq	-40(%rbp), %rdi
	movq	%rax, %rsi
	callq	_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS2_SaIS2_EEEES3_ET_S8_T0_
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%fs:40, %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movq	%rax, -96(%rbp)                 # 8-byte Spill
	jne	.LBB19_2
# %bb.1:
	movq	-96(%rbp), %rax                 # 8-byte Reload
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB19_2:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end19:
	.size	_ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS2_SaIS2_EEEES7_ET1_T0_S9_S8_, .Lfunc_end19-_ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS2_SaIS2_EEEES7_ET1_T0_S9_S8_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS2_SaIS2_EEEEET_S8_,"axG",@progbits,_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS2_SaIS2_EEEEET_S8_,comdat
	.weak	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS2_SaIS2_EEEEET_S8_ # -- Begin function _ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS2_SaIS2_EEEEET_S8_
	.p2align	4, 0x90
	.type	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS2_SaIS2_EEEEET_S8_,@function
_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS2_SaIS2_EEEEET_S8_: # @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS2_SaIS2_EEEEET_S8_
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
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%fs:40, %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	jne	.LBB20_2
# %bb.1:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB20_2:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end20:
	.size	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS2_SaIS2_EEEEET_S8_, .Lfunc_end20-_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS2_SaIS2_EEEEET_S8_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS2_SaIS2_EEEES3_ET_S8_T0_,"axG",@progbits,_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS2_SaIS2_EEEES3_ET_S8_T0_,comdat
	.weak	_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS2_SaIS2_EEEES3_ET_S8_T0_ # -- Begin function _ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS2_SaIS2_EEEES3_ET_S8_T0_
	.p2align	4, 0x90
	.type	_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS2_SaIS2_EEEES3_ET_S8_T0_,@function
_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS2_SaIS2_EEEES3_ET_S8_T0_: # @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS2_SaIS2_EEEES3_ET_S8_T0_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rsi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	callq	_ZSt12__niter_baseIP9MoveScoreSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	movq	-48(%rbp), %rcx                 # 8-byte Reload
	subq	%rax, %rcx
	sarq	$3, %rcx
	leaq	-16(%rbp), %rdi
	movq	%rcx, %rsi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS1_SaIS1_EEEplEl
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%fs:40, %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	jne	.LBB21_2
# %bb.1:
	movq	-56(%rbp), %rax                 # 8-byte Reload
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB21_2:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end21:
	.size	_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS2_SaIS2_EEEES3_ET_S8_T0_, .Lfunc_end21-_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS2_SaIS2_EEEES3_ET_S8_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt14__copy_move_a1ILb1EP9MoveScoreS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt14__copy_move_a1ILb1EP9MoveScoreS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt14__copy_move_a1ILb1EP9MoveScoreS1_ET1_T0_S3_S2_ # -- Begin function _ZSt14__copy_move_a1ILb1EP9MoveScoreS1_ET1_T0_S3_S2_
	.p2align	4, 0x90
	.type	_ZSt14__copy_move_a1ILb1EP9MoveScoreS1_ET1_T0_S3_S2_,@function
_ZSt14__copy_move_a1ILb1EP9MoveScoreS1_ET1_T0_S3_S2_: # @_ZSt14__copy_move_a1ILb1EP9MoveScoreS1_ET1_T0_S3_S2_
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
	movq	-24(%rbp), %rdx
	callq	_ZSt14__copy_move_a2ILb1EP9MoveScoreS1_ET1_T0_S3_S2_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end22:
	.size	_ZSt14__copy_move_a1ILb1EP9MoveScoreS1_ET1_T0_S3_S2_, .Lfunc_end22-_ZSt14__copy_move_a1ILb1EP9MoveScoreS1_ET1_T0_S3_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt12__niter_baseIP9MoveScoreSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE,"axG",@progbits,_ZSt12__niter_baseIP9MoveScoreSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE,comdat
	.weak	_ZSt12__niter_baseIP9MoveScoreSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE # -- Begin function _ZSt12__niter_baseIP9MoveScoreSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	.p2align	4, 0x90
	.type	_ZSt12__niter_baseIP9MoveScoreSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE,@function
_ZSt12__niter_baseIP9MoveScoreSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE: # @_ZSt12__niter_baseIP9MoveScoreSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
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
	movq	%rdi, -16(%rbp)
	leaq	-16(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rax
	movq	%fs:40, %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	jne	.LBB23_2
# %bb.1:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB23_2:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end23:
	.size	_ZSt12__niter_baseIP9MoveScoreSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, .Lfunc_end23-_ZSt12__niter_baseIP9MoveScoreSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt14__copy_move_a2ILb1EP9MoveScoreS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt14__copy_move_a2ILb1EP9MoveScoreS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt14__copy_move_a2ILb1EP9MoveScoreS1_ET1_T0_S3_S2_ # -- Begin function _ZSt14__copy_move_a2ILb1EP9MoveScoreS1_ET1_T0_S3_S2_
	.p2align	4, 0x90
	.type	_ZSt14__copy_move_a2ILb1EP9MoveScoreS1_ET1_T0_S3_S2_,@function
_ZSt14__copy_move_a2ILb1EP9MoveScoreS1_ET1_T0_S3_S2_: # @_ZSt14__copy_move_a2ILb1EP9MoveScoreS1_ET1_T0_S3_S2_
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
	movq	-24(%rbp), %rdx
	callq	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI9MoveScoreEEPT_PKS4_S7_S5_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end24:
	.size	_ZSt14__copy_move_a2ILb1EP9MoveScoreS1_ET1_T0_S3_S2_, .Lfunc_end24-_ZSt14__copy_move_a2ILb1EP9MoveScoreS1_ET1_T0_S3_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI9MoveScoreEEPT_PKS4_S7_S5_,"axG",@progbits,_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI9MoveScoreEEPT_PKS4_S7_S5_,comdat
	.weak	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI9MoveScoreEEPT_PKS4_S7_S5_ # -- Begin function _ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI9MoveScoreEEPT_PKS4_S7_S5_
	.p2align	4, 0x90
	.type	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI9MoveScoreEEPT_PKS4_S7_S5_,@function
_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI9MoveScoreEEPT_PKS4_S7_S5_: # @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI9MoveScoreEEPT_PKS4_S7_S5_
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
	movq	-8(%rbp), %rcx
	subq	%rcx, %rax
	sarq	$3, %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB25_2
# %bb.1:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memmove@PLT
.LBB25_2:
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end25:
	.size	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI9MoveScoreEEPT_PKS4_S7_S5_, .Lfunc_end25-_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI9MoveScoreEEPT_PKS4_S7_S5_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorI9MoveScoreE7destroyIS1_EEvPT_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI9MoveScoreE7destroyIS1_EEvPT_,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorI9MoveScoreE7destroyIS1_EEvPT_ # -- Begin function _ZN9__gnu_cxx13new_allocatorI9MoveScoreE7destroyIS1_EEvPT_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorI9MoveScoreE7destroyIS1_EEvPT_,@function
_ZN9__gnu_cxx13new_allocatorI9MoveScoreE7destroyIS1_EEvPT_: # @_ZN9__gnu_cxx13new_allocatorI9MoveScoreE7destroyIS1_EEvPT_
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
.Lfunc_end26:
	.size	_ZN9__gnu_cxx13new_allocatorI9MoveScoreE7destroyIS1_EEvPT_, .Lfunc_end26-_ZN9__gnu_cxx13new_allocatorI9MoveScoreE7destroyIS1_EEvPT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPK9MoveScoreSt6vectorIS1_SaIS1_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPK9MoveScoreSt6vectorIS1_SaIS1_EEE4baseEv,comdat
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPK9MoveScoreSt6vectorIS1_SaIS1_EEE4baseEv # -- Begin function _ZNK9__gnu_cxx17__normal_iteratorIPK9MoveScoreSt6vectorIS1_SaIS1_EEE4baseEv
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPK9MoveScoreSt6vectorIS1_SaIS1_EEE4baseEv,@function
_ZNK9__gnu_cxx17__normal_iteratorIPK9MoveScoreSt6vectorIS1_SaIS1_EEE4baseEv: # @_ZNK9__gnu_cxx17__normal_iteratorIPK9MoveScoreSt6vectorIS1_SaIS1_EEE4baseEv
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
.Lfunc_end27:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPK9MoveScoreSt6vectorIS1_SaIS1_EEE4baseEv, .Lfunc_end27-_ZNK9__gnu_cxx17__normal_iteratorIPK9MoveScoreSt6vectorIS1_SaIS1_EEE4baseEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPK9MoveScoreSt6vectorIS1_SaIS1_EEEC2ERKS3_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPK9MoveScoreSt6vectorIS1_SaIS1_EEEC2ERKS3_,comdat
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPK9MoveScoreSt6vectorIS1_SaIS1_EEEC2ERKS3_ # -- Begin function _ZN9__gnu_cxx17__normal_iteratorIPK9MoveScoreSt6vectorIS1_SaIS1_EEEC2ERKS3_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx17__normal_iteratorIPK9MoveScoreSt6vectorIS1_SaIS1_EEEC2ERKS3_,@function
_ZN9__gnu_cxx17__normal_iteratorIPK9MoveScoreSt6vectorIS1_SaIS1_EEEC2ERKS3_: # @_ZN9__gnu_cxx17__normal_iteratorIPK9MoveScoreSt6vectorIS1_SaIS1_EEEC2ERKS3_
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
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end28:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPK9MoveScoreSt6vectorIS1_SaIS1_EEEC2ERKS3_, .Lfunc_end28-_ZN9__gnu_cxx17__normal_iteratorIPK9MoveScoreSt6vectorIS1_SaIS1_EEEC2ERKS3_
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_search.cpp
	.type	_GLOBAL__sub_I_search.cpp,@function
_GLOBAL__sub_I_search.cpp:              # @_GLOBAL__sub_I_search.cpp
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
.Lfunc_end29:
	.size	_GLOBAL__sub_I_search.cpp, .Lfunc_end29-_GLOBAL__sub_I_search.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_search.cpp
	.ident	"clang version 11.0.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __cxx_global_var_init
	.addrsig_sym __cxa_atexit
	.addrsig_sym _ZNKSt6vectorI9MoveScoreSaIS0_EE4sizeEv
	.addrsig_sym _ZNSt6vectorI9MoveScoreSaIS0_EEixEm
	.addrsig_sym _ZNSt6vectorI9MoveScoreSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE
	.addrsig_sym _ZNSt6vectorI9MoveScoreSaIS0_EE5beginEv
	.addrsig_sym _ZNK9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS1_SaIS1_EEEplEl
	.addrsig_sym _ZNSt6vectorI9MoveScoreSaIS0_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS0_S2_EE
	.addrsig_sym _ZN9__gnu_cxxmiIPK9MoveScoreSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	.addrsig_sym _ZNKSt6vectorI9MoveScoreSaIS0_EE6cbeginEv
	.addrsig_sym _ZN9__gnu_cxxneIP9MoveScoreSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	.addrsig_sym _ZNSt6vectorI9MoveScoreSaIS0_EE3endEv
	.addrsig_sym _ZSt4moveIN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_
	.addrsig_sym _ZNSt16allocator_traitsISaI9MoveScoreEE7destroyIS0_EEvRS1_PT_
	.addrsig_sym _ZNK9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS1_SaIS1_EEE4baseEv
	.addrsig_sym _ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS2_SaIS2_EEEES7_ET1_T0_S9_S8_
	.addrsig_sym _ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS2_SaIS2_EEEEET_S8_
	.addrsig_sym _ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIP9MoveScoreSt6vectorIS2_SaIS2_EEEES3_ET_S8_T0_
	.addrsig_sym _ZSt14__copy_move_a1ILb1EP9MoveScoreS1_ET1_T0_S3_S2_
	.addrsig_sym _ZSt12__niter_baseIP9MoveScoreSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	.addrsig_sym _ZSt14__copy_move_a2ILb1EP9MoveScoreS1_ET1_T0_S3_S2_
	.addrsig_sym _ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI9MoveScoreEEPT_PKS4_S7_S5_
	.addrsig_sym _ZN9__gnu_cxx13new_allocatorI9MoveScoreE7destroyIS1_EEvPT_
	.addrsig_sym _ZNK9__gnu_cxx17__normal_iteratorIPK9MoveScoreSt6vectorIS1_SaIS1_EEE4baseEv
	.addrsig_sym _GLOBAL__sub_I_search.cpp
	.addrsig_sym __stack_chk_fail
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
