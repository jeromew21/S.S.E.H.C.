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
	subq	$560, %rsp                      # imm = 0x230
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -544(%rbp)
	movq	-544(%rbp), %rax
	cmpl	$5, 1216(%rax)
	movq	%rax, -552(%rbp)                # 8-byte Spill
	je	.LBB1_2
# %bb.1:
	movq	-552(%rbp), %rax                # 8-byte Reload
	movl	1216(%rax), %ecx
	movl	%ecx, -532(%rbp)
	jmp	.LBB1_12
.LBB1_2:
	leaq	-528(%rbp), %rdi
	movq	-552(%rbp), %rsi                # 8-byte Reload
	callq	_ZN5Board11legal_movesEv@PLT
	leaq	-528(%rbp), %rdi
	callq	_ZNK8MoveListILi256EE4sizeEv
	cmpl	$0, %eax
	jne	.LBB1_10
# %bb.3:
	movq	-552(%rbp), %rdi                # 8-byte Reload
	callq	_ZNK5Board8is_checkEv
	testb	$1, %al
	jne	.LBB1_4
	jmp	.LBB1_8
.LBB1_4:
	movq	-552(%rbp), %rdi                # 8-byte Reload
	callq	_ZNK5Board4turnEv
	cmpl	$0, %eax
	jne	.LBB1_6
# %bb.5:
	movq	-552(%rbp), %rax                # 8-byte Reload
	movl	$1, 1216(%rax)
	jmp	.LBB1_7
.LBB1_6:
	movq	-552(%rbp), %rax                # 8-byte Reload
	movl	$1, 1216(%rax)
.LBB1_7:
	jmp	.LBB1_9
.LBB1_8:
	movq	-552(%rbp), %rax                # 8-byte Reload
	movl	$4, 1216(%rax)
.LBB1_9:
	jmp	.LBB1_11
.LBB1_10:
	movq	-552(%rbp), %rax                # 8-byte Reload
	movl	$3, 1216(%rax)
.LBB1_11:
	movq	-552(%rbp), %rax                # 8-byte Reload
	movl	1216(%rax), %ecx
	movl	%ecx, -532(%rbp)
.LBB1_12:
	movl	-532(%rbp), %eax
	movq	%fs:40, %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movl	%eax, -556(%rbp)                # 4-byte Spill
	jne	.LBB1_14
# %bb.13:
	movl	-556(%rbp), %eax                # 4-byte Reload
	addq	$560, %rsp                      # imm = 0x230
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_14:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end1:
	.size	_ZN5Board6statusEv, .Lfunc_end1-_ZN5Board6statusEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK8MoveListILi256EE4sizeEv,"axG",@progbits,_ZNK8MoveListILi256EE4sizeEv,comdat
	.weak	_ZNK8MoveListILi256EE4sizeEv    # -- Begin function _ZNK8MoveListILi256EE4sizeEv
	.p2align	4, 0x90
	.type	_ZNK8MoveListILi256EE4sizeEv,@function
_ZNK8MoveListILi256EE4sizeEv:           # @_ZNK8MoveListILi256EE4sizeEv
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
.Lfunc_end2:
	.size	_ZNK8MoveListILi256EE4sizeEv, .Lfunc_end2-_ZNK8MoveListILi256EE4sizeEv
	.cfi_endproc
                                        # -- End function
	.text
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
	movb	136(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	_ZNK5Board8is_checkEv, .Lfunc_end3-_ZNK5Board8is_checkEv
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
	movl	100(%rax), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	_ZNK5Board4turnEv, .Lfunc_end4-_ZNK5Board4turnEv
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
	movq	128(%rax), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	_ZNK5Board4hashEv, .Lfunc_end5-_ZNK5Board4hashEv
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
	andq	%rax, %rcx
	cmpq	$0, %rcx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB6_1
	jmp	.LBB6_2
.LBB6_1:
	jmp	.LBB6_3
.LBB6_2:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$54, %edx
	leaq	.L__PRETTY_FUNCTION__._ZNK5Board9occupancyEv(%rip), %rcx
	callq	__assert_fail@PLT
.LBB6_3:
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNK5Board9occupancyEi
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	movl	$1, %esi
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	callq	_ZNK5Board9occupancyEi
	movq	-32(%rbp), %rcx                 # 8-byte Reload
	orq	%rax, %rcx
	movq	%rcx, %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	_ZNK5Board9occupancyEv, .Lfunc_end6-_ZNK5Board9occupancyEv
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
	je	.LBB7_2
# %bb.1:
	cmpl	$1, -20(%rbp)
	sete	%al
	movb	%al, -33(%rbp)                  # 1-byte Spill
.LBB7_2:
	movb	-33(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB7_3
	jmp	.LBB7_4
.LBB7_3:
	jmp	.LBB7_5
.LBB7_4:
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$61, %edx
	leaq	.L__PRETTY_FUNCTION__._ZNK5Board9occupancyEi(%rip), %rcx
	callq	__assert_fail@PLT
.LBB7_5:
	cmpl	$0, -20(%rbp)
	jne	.LBB7_7
# %bb.6:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	80(%rax), %rcx
	orq	64(%rax), %rcx
	orq	32(%rax), %rcx
	orq	(%rax), %rcx
	orq	48(%rax), %rcx
	orq	16(%rax), %rcx
	movq	%rcx, -8(%rbp)
	jmp	.LBB7_8
.LBB7_7:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	88(%rax), %rcx
	orq	72(%rax), %rcx
	orq	40(%rax), %rcx
	orq	8(%rax), %rcx
	orq	56(%rax), %rcx
	orq	24(%rax), %rcx
	movq	%rcx, -8(%rbp)
.LBB7_8:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	_ZNK5Board9occupancyEi, .Lfunc_end7-_ZNK5Board9occupancyEi
	.cfi_endproc
                                        # -- End function
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	_ZNK5Board9piece_at_Ei
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edi
	callq	_ZN5piece8is_emptyEi
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB8_1
	jmp	.LBB8_2
.LBB8_1:
	jmp	.LBB8_3
.LBB8_2:
	leaq	.L.str.3(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$75, %edx
	leaq	.L__PRETTY_FUNCTION__._ZN5Board18move_from_src_destEii(%rip), %rcx
	callq	__assert_fail@PLT
.LBB8_3:
	ud2
.Lfunc_end8:
	.size	_ZN5Board18move_from_src_destEii, .Lfunc_end8-_ZN5Board18move_from_src_destEii
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
.Lfunc_end9:
	.size	_ZNK5Board9piece_at_Ei, .Lfunc_end9-_ZNK5Board9piece_at_Ei
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
.Lfunc_end10:
	.size	_ZN5piece8is_emptyEi, .Lfunc_end10-_ZN5piece8is_emptyEi
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
	testb	$1, 1220(%rax)
	movq	%rax, -568(%rbp)                # 8-byte Spill
	je	.LBB11_2
# %bb.1:
	jmp	.LBB11_3
.LBB11_2:
	leaq	.L.str.4(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$82, %edx
	leaq	.L__PRETTY_FUNCTION__._ZN5Board13attackers_to_Em(%rip), %rcx
	callq	__assert_fail@PLT
.LBB11_3:
	cmpq	$0, -544(%rbp)
	je	.LBB11_5
# %bb.4:
	jmp	.LBB11_6
.LBB11_5:
	leaq	.L.str.5(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$83, %edx
	leaq	.L__PRETTY_FUNCTION__._ZN5Board13attackers_to_Em(%rip), %rcx
	callq	__assert_fail@PLT
.LBB11_6:
	movq	$0, -552(%rbp)
	leaq	-528(%rbp), %rdi
	callq	_ZN7u64ListC2Ev
	movq	-544(%rbp), %rdi
	leaq	-528(%rbp), %rsi
	callq	_Z10bitscanAllmR7u64List@PLT
	movl	$0, -556(%rbp)
.LBB11_7:                               # =>This Inner Loop Header: Depth=1
	movl	-556(%rbp), %eax
	leaq	-528(%rbp), %rdi
	movl	%eax, -572(%rbp)                # 4-byte Spill
	callq	_ZNK7u64List3lenEv
	movl	-572(%rbp), %ecx                # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB11_10
# %bb.8:                                #   in Loop: Header=BB11_7 Depth=1
	movq	-568(%rbp), %rax                # 8-byte Reload
	addq	$96, %rax
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
# %bb.9:                                #   in Loop: Header=BB11_7 Depth=1
	movl	-556(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -556(%rbp)
	jmp	.LBB11_7
.LBB11_10:
	movq	-552(%rbp), %rax
	movq	%fs:40, %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movq	%rax, -592(%rbp)                # 8-byte Spill
	jne	.LBB11_12
# %bb.11:
	movq	-592(%rbp), %rax                # 8-byte Reload
	addq	$592, %rsp                      # imm = 0x250
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB11_12:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end11:
	.size	_ZN5Board13attackers_to_Em, .Lfunc_end11-_ZN5Board13attackers_to_Em
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
.LBB12_1:                               # =>This Inner Loop Header: Depth=1
	cmpl	$64, -12(%rbp)
	jge	.LBB12_4
# %bb.2:                                #   in Loop: Header=BB12_1 Depth=1
	movslq	-12(%rbp), %rax
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	movq	$0, (%rcx,%rax,8)
# %bb.3:                                #   in Loop: Header=BB12_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB12_1
.LBB12_4:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end12:
	.size	_ZN7u64ListC2Ev, .Lfunc_end12-_ZN7u64ListC2Ev
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
.Lfunc_end13:
	.size	_ZNK7u64List3lenEv, .Lfunc_end13-_ZNK7u64List3lenEv
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
.Lfunc_end14:
	.size	_ZNSt5arrayImLm64EEixEm, .Lfunc_end14-_ZNSt5arrayImLm64EEixEm
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
.Lfunc_end15:
	.size	_ZNK7u64ListixEi, .Lfunc_end15-_ZNK7u64ListixEi
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
	callq	_ZNK5Board9occupancyEi
	movq	-40(%rbp), %rcx                 # 8-byte Reload
	andq	%rax, %rcx
	movq	%rcx, %rax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end16:
	.size	_ZN5Board13attackers_to_Emi, .Lfunc_end16-_ZN5Board13attackers_to_Emi
	.cfi_endproc
                                        # -- End function
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
.LBB17_1:                               # =>This Inner Loop Header: Depth=1
	cmpl	$12, -28(%rbp)
	jge	.LBB17_6
# %bb.2:                                #   in Loop: Header=BB17_1 Depth=1
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	-40(%rbp), %rdx                 # 8-byte Reload
	andq	(%rdx,%rcx,8), %rax
	cmpq	$0, %rax
	je	.LBB17_4
# %bb.3:
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB17_7
.LBB17_4:                               #   in Loop: Header=BB17_1 Depth=1
	jmp	.LBB17_5
.LBB17_5:                               #   in Loop: Header=BB17_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB17_1
.LBB17_6:
	movl	$-1, -4(%rbp)
.LBB17_7:
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end17:
	.size	_ZNK5Board9piece_at_Em, .Lfunc_end17-_ZNK5Board9piece_at_Em
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
	jne	.LBB18_1
	jmp	.LBB18_2
.LBB18_1:
	jmp	.LBB18_3
.LBB18_2:
	leaq	.L.str.6(%rip), %rdi
	leaq	.L.str.7(%rip), %rsi
	movl	$121, %edx
	leaq	.L__PRETTY_FUNCTION__._Z13u64FromSquarei(%rip), %rcx
	callq	__assert_fail@PLT
.LBB18_3:
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
.Lfunc_end18:
	.size	_Z13u64FromSquarei, .Lfunc_end18-_Z13u64FromSquarei
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
	jl	.LBB19_2
# %bb.1:
	cmpl	$64, -4(%rbp)
	setl	%al
	movb	%al, -5(%rbp)                   # 1-byte Spill
.LBB19_2:
	movb	-5(%rbp), %al                   # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end19:
	.size	_Z13isValidSquarei, .Lfunc_end19-_Z13isValidSquarei
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
.Lfunc_end20:
	.size	_ZNSt14__array_traitsImLm64EE6_S_refERA64_Kmm, .Lfunc_end20-_ZNSt14__array_traitsImLm64EE6_S_refERA64_Kmm
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
.Lfunc_end21:
	.size	_GLOBAL__sub_I_board_getters.cpp, .Lfunc_end21-_GLOBAL__sub_I_board_getters.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"!(occupancy(White) & occupancy(Black))"
	.size	.L.str, 39

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"src/chess/board_getters.cpp"
	.size	.L.str.1, 28

	.type	.L__PRETTY_FUNCTION__._ZNK5Board9occupancyEv,@object # @__PRETTY_FUNCTION__._ZNK5Board9occupancyEv
.L__PRETTY_FUNCTION__._ZNK5Board9occupancyEv:
	.asciz	"uint64_t Board::occupancy() const"
	.size	.L__PRETTY_FUNCTION__._ZNK5Board9occupancyEv, 34

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"color == White || color == Black"
	.size	.L.str.2, 33

	.type	.L__PRETTY_FUNCTION__._ZNK5Board9occupancyEi,@object # @__PRETTY_FUNCTION__._ZNK5Board9occupancyEi
.L__PRETTY_FUNCTION__._ZNK5Board9occupancyEi:
	.asciz	"uint64_t Board::occupancy(int) const"
	.size	.L__PRETTY_FUNCTION__._ZNK5Board9occupancyEi, 37

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"!piece::is_empty(mover)"
	.size	.L.str.3, 24

	.type	.L__PRETTY_FUNCTION__._ZN5Board18move_from_src_destEii,@object # @__PRETTY_FUNCTION__._ZN5Board18move_from_src_destEii
.L__PRETTY_FUNCTION__._ZN5Board18move_from_src_destEii:
	.asciz	"CMove Board::move_from_src_dest(int, int)"
	.size	.L__PRETTY_FUNCTION__._ZN5Board18move_from_src_destEii, 42

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"maps_generated_"
	.size	.L.str.4, 16

	.type	.L__PRETTY_FUNCTION__._ZN5Board13attackers_to_Em,@object # @__PRETTY_FUNCTION__._ZN5Board13attackers_to_Em
.L__PRETTY_FUNCTION__._ZN5Board13attackers_to_Em:
	.asciz	"uint64_t Board::attackers_to_(uint64_t)"
	.size	.L__PRETTY_FUNCTION__._ZN5Board13attackers_to_Em, 40

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"subjects != 0"
	.size	.L.str.5, 14

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"isValidSquare(s)"
	.size	.L.str.6, 17

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"include/misc/bits.hpp"
	.size	.L.str.7, 22

	.type	.L__PRETTY_FUNCTION__._Z13u64FromSquarei,@object # @__PRETTY_FUNCTION__._Z13u64FromSquarei
.L__PRETTY_FUNCTION__._Z13u64FromSquarei:
	.asciz	"uint64_t u64FromSquare(int)"
	.size	.L__PRETTY_FUNCTION__._Z13u64FromSquarei, 28

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_board_getters.cpp
	.ident	"clang version 11.0.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __cxx_global_var_init
	.addrsig_sym __cxa_atexit
	.addrsig_sym _ZN5Board11legal_movesEv
	.addrsig_sym _ZNK8MoveListILi256EE4sizeEv
	.addrsig_sym _ZNK5Board8is_checkEv
	.addrsig_sym _ZNK5Board4turnEv
	.addrsig_sym _ZNK5Board9occupancyEi
	.addrsig_sym __assert_fail
	.addrsig_sym _ZNK5Board9piece_at_Ei
	.addrsig_sym _ZN5piece8is_emptyEi
	.addrsig_sym _ZN5Board13attackers_to_Em
	.addrsig_sym _Z10bitscanAllmR7u64List
	.addrsig_sym _ZNK7u64List3lenEv
	.addrsig_sym _ZNSt5arrayImLm64EEixEm
	.addrsig_sym _ZNK7u64ListixEi
	.addrsig_sym _ZNK5Board9piece_at_Em
	.addrsig_sym _Z13u64FromSquarei
	.addrsig_sym _Z13isValidSquarei
	.addrsig_sym _ZNSt14__array_traitsImLm64EE6_S_refERA64_Kmm
	.addrsig_sym _GLOBAL__sub_I_board_getters.cpp
	.addrsig_sym __stack_chk_fail
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
