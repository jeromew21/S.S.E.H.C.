	.text
	.file	"fen.cpp"
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
	.p2align	4, 0x90                         # -- Begin function __cxx_global_var_init.1
	.type	__cxx_global_var_init.1,@function
__cxx_global_var_init.1:                # @__cxx_global_var_init.1
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
	subq	$240, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movb	$1, -93(%rbp)
	leaq	_ZL10RANK_NAMESB5cxx11(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -104(%rbp)                # 8-byte Spill
	movq	%rcx, -112(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp0:
	leaq	.L.str(%rip), %rsi
	movq	-104(%rbp), %rdi                # 8-byte Reload
	movq	-112(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp1:
	jmp	.LBB1_1
.LBB1_1:
	leaq	_ZL10RANK_NAMESB5cxx11+32(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -120(%rbp)                # 8-byte Spill
	movq	%rcx, -128(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp3:
	leaq	.L.str.2(%rip), %rsi
	movq	-120(%rbp), %rdi                # 8-byte Reload
	movq	-128(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp4:
	jmp	.LBB1_2
.LBB1_2:
	leaq	_ZL10RANK_NAMESB5cxx11+64(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -136(%rbp)                # 8-byte Spill
	movq	%rcx, -144(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp6:
	leaq	.L.str.3(%rip), %rsi
	movq	-136(%rbp), %rdi                # 8-byte Reload
	movq	-144(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp7:
	jmp	.LBB1_3
.LBB1_3:
	leaq	_ZL10RANK_NAMESB5cxx11+96(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -152(%rbp)                # 8-byte Spill
	movq	%rcx, -160(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp9:
	leaq	.L.str.4(%rip), %rsi
	movq	-152(%rbp), %rdi                # 8-byte Reload
	movq	-160(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp10:
	jmp	.LBB1_4
.LBB1_4:
	leaq	_ZL10RANK_NAMESB5cxx11+128(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -168(%rbp)                # 8-byte Spill
	movq	%rcx, -176(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp12:
	leaq	.L.str.5(%rip), %rsi
	movq	-168(%rbp), %rdi                # 8-byte Reload
	movq	-176(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp13:
	jmp	.LBB1_5
.LBB1_5:
	leaq	_ZL10RANK_NAMESB5cxx11+160(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -184(%rbp)                # 8-byte Spill
	movq	%rcx, -192(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp15:
	leaq	.L.str.6(%rip), %rsi
	movq	-184(%rbp), %rdi                # 8-byte Reload
	movq	-192(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp16:
	jmp	.LBB1_6
.LBB1_6:
	leaq	_ZL10RANK_NAMESB5cxx11+192(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	-64(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -200(%rbp)                # 8-byte Spill
	movq	%rcx, -208(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp18:
	leaq	.L.str.7(%rip), %rsi
	movq	-200(%rbp), %rdi                # 8-byte Reload
	movq	-208(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp19:
	jmp	.LBB1_7
.LBB1_7:
	leaq	_ZL10RANK_NAMESB5cxx11+224(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	-72(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -216(%rbp)                # 8-byte Spill
	movq	%rcx, -224(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp21:
	leaq	.L.str.8(%rip), %rsi
	movq	-216(%rbp), %rdi                # 8-byte Reload
	movq	-224(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp22:
	jmp	.LBB1_8
.LBB1_8:
	movb	$0, -93(%rbp)
	leaq	-72(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-64(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-56(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-48(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-40(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-32(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-24(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-16(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	__cxx_global_array_dtor(%rip), %rdi
	leaq	__dso_handle(%rip), %rdx
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	__cxa_atexit@PLT
	movq	%fs:40, %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	jne	.LBB1_30
# %bb.9:
	addq	$240, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_10:
	.cfi_def_cfa %rbp, 16
.Ltmp2:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -88(%rbp)
	movl	%edx, -92(%rbp)
	jmp	.LBB1_24
.LBB1_11:
.Ltmp5:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -88(%rbp)
	movl	%edx, -92(%rbp)
	jmp	.LBB1_23
.LBB1_12:
.Ltmp8:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -88(%rbp)
	movl	%edx, -92(%rbp)
	jmp	.LBB1_22
.LBB1_13:
.Ltmp11:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -88(%rbp)
	movl	%edx, -92(%rbp)
	jmp	.LBB1_21
.LBB1_14:
.Ltmp14:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -88(%rbp)
	movl	%edx, -92(%rbp)
	jmp	.LBB1_20
.LBB1_15:
.Ltmp17:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -88(%rbp)
	movl	%edx, -92(%rbp)
	jmp	.LBB1_19
.LBB1_16:
.Ltmp20:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -88(%rbp)
	movl	%edx, -92(%rbp)
	jmp	.LBB1_18
.LBB1_17:
.Ltmp23:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -88(%rbp)
	movl	%edx, -92(%rbp)
	leaq	-72(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
.LBB1_18:
	leaq	-64(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
.LBB1_19:
	leaq	-56(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
.LBB1_20:
	leaq	-48(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
.LBB1_21:
	leaq	-40(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
.LBB1_22:
	leaq	-32(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
.LBB1_23:
	leaq	-24(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
.LBB1_24:
	leaq	-16(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	testb	$1, -93(%rbp)
	jne	.LBB1_25
	jmp	.LBB1_28
.LBB1_25:
	movq	-80(%rbp), %rax
	leaq	_ZL10RANK_NAMESB5cxx11(%rip), %rcx
	cmpq	%rax, %rcx
	movq	%rax, -232(%rbp)                # 8-byte Spill
	je	.LBB1_27
.LBB1_26:                               # =>This Inner Loop Header: Depth=1
	movq	-232(%rbp), %rax                # 8-byte Reload
	addq	$-32, %rax
	movq	%rax, %rdi
	movq	%rax, -240(%rbp)                # 8-byte Spill
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	_ZL10RANK_NAMESB5cxx11(%rip), %rax
	movq	-240(%rbp), %rcx                # 8-byte Reload
	cmpq	%rax, %rcx
	movq	%rcx, -232(%rbp)                # 8-byte Spill
	jne	.LBB1_26
.LBB1_27:
	jmp	.LBB1_28
.LBB1_28:
	jmp	.LBB1_29
.LBB1_29:
	movq	-88(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.LBB1_30:
	callq	__stack_chk_fail@PLT
.Lfunc_end1:
	.size	__cxx_global_var_init.1, .Lfunc_end1-__cxx_global_var_init.1
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table1:
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
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin0          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin0          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin0          #     jumps to .Ltmp20
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin0          #     jumps to .Ltmp23
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Lfunc_end1-.Ltmp22            #   Call between .Ltmp22 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function __cxx_global_array_dtor
	.type	__cxx_global_array_dtor,@function
__cxx_global_array_dtor:                # @__cxx_global_array_dtor
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	_ZL10RANK_NAMESB5cxx11(%rip), %rax
	addq	$256, %rax                      # imm = 0x100
	movq	%rdi, -8(%rbp)
	movq	%rax, -16(%rbp)                 # 8-byte Spill
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax                 # 8-byte Reload
	addq	$-32, %rax
	movq	%rax, %rdi
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	_ZL10RANK_NAMESB5cxx11(%rip), %rax
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	cmpq	%rax, %rcx
	movq	%rcx, -16(%rbp)                 # 8-byte Spill
	jne	.LBB2_1
# %bb.2:
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	__cxx_global_array_dtor, .Lfunc_end2-__cxx_global_array_dtor
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function __cxx_global_var_init.9
	.type	__cxx_global_var_init.9,@function
__cxx_global_var_init.9:                # @__cxx_global_var_init.9
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
	subq	$240, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movb	$1, -93(%rbp)
	leaq	_ZL10FILE_NAMESB5cxx11(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -104(%rbp)                # 8-byte Spill
	movq	%rcx, -112(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp24:
	leaq	.L.str.10(%rip), %rsi
	movq	-104(%rbp), %rdi                # 8-byte Reload
	movq	-112(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp25:
	jmp	.LBB3_1
.LBB3_1:
	leaq	_ZL10FILE_NAMESB5cxx11+32(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -120(%rbp)                # 8-byte Spill
	movq	%rcx, -128(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp27:
	leaq	.L.str.11(%rip), %rsi
	movq	-120(%rbp), %rdi                # 8-byte Reload
	movq	-128(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp28:
	jmp	.LBB3_2
.LBB3_2:
	leaq	_ZL10FILE_NAMESB5cxx11+64(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -136(%rbp)                # 8-byte Spill
	movq	%rcx, -144(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp30:
	leaq	.L.str.12(%rip), %rsi
	movq	-136(%rbp), %rdi                # 8-byte Reload
	movq	-144(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp31:
	jmp	.LBB3_3
.LBB3_3:
	leaq	_ZL10FILE_NAMESB5cxx11+96(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -152(%rbp)                # 8-byte Spill
	movq	%rcx, -160(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp33:
	leaq	.L.str.13(%rip), %rsi
	movq	-152(%rbp), %rdi                # 8-byte Reload
	movq	-160(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp34:
	jmp	.LBB3_4
.LBB3_4:
	leaq	_ZL10FILE_NAMESB5cxx11+128(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -168(%rbp)                # 8-byte Spill
	movq	%rcx, -176(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp36:
	leaq	.L.str.14(%rip), %rsi
	movq	-168(%rbp), %rdi                # 8-byte Reload
	movq	-176(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp37:
	jmp	.LBB3_5
.LBB3_5:
	leaq	_ZL10FILE_NAMESB5cxx11+160(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -184(%rbp)                # 8-byte Spill
	movq	%rcx, -192(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp39:
	leaq	.L.str.15(%rip), %rsi
	movq	-184(%rbp), %rdi                # 8-byte Reload
	movq	-192(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp40:
	jmp	.LBB3_6
.LBB3_6:
	leaq	_ZL10FILE_NAMESB5cxx11+192(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	-64(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -200(%rbp)                # 8-byte Spill
	movq	%rcx, -208(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp42:
	leaq	.L.str.16(%rip), %rsi
	movq	-200(%rbp), %rdi                # 8-byte Reload
	movq	-208(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp43:
	jmp	.LBB3_7
.LBB3_7:
	leaq	_ZL10FILE_NAMESB5cxx11+224(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	-72(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -216(%rbp)                # 8-byte Spill
	movq	%rcx, -224(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp45:
	leaq	.L.str.17(%rip), %rsi
	movq	-216(%rbp), %rdi                # 8-byte Reload
	movq	-224(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp46:
	jmp	.LBB3_8
.LBB3_8:
	movb	$0, -93(%rbp)
	leaq	-72(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-64(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-56(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-48(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-40(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-32(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-24(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-16(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	__cxx_global_array_dtor.18(%rip), %rdi
	leaq	__dso_handle(%rip), %rdx
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	__cxa_atexit@PLT
	movq	%fs:40, %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	jne	.LBB3_30
# %bb.9:
	addq	$240, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB3_10:
	.cfi_def_cfa %rbp, 16
.Ltmp26:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -88(%rbp)
	movl	%edx, -92(%rbp)
	jmp	.LBB3_24
.LBB3_11:
.Ltmp29:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -88(%rbp)
	movl	%edx, -92(%rbp)
	jmp	.LBB3_23
.LBB3_12:
.Ltmp32:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -88(%rbp)
	movl	%edx, -92(%rbp)
	jmp	.LBB3_22
.LBB3_13:
.Ltmp35:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -88(%rbp)
	movl	%edx, -92(%rbp)
	jmp	.LBB3_21
.LBB3_14:
.Ltmp38:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -88(%rbp)
	movl	%edx, -92(%rbp)
	jmp	.LBB3_20
.LBB3_15:
.Ltmp41:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -88(%rbp)
	movl	%edx, -92(%rbp)
	jmp	.LBB3_19
.LBB3_16:
.Ltmp44:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -88(%rbp)
	movl	%edx, -92(%rbp)
	jmp	.LBB3_18
.LBB3_17:
.Ltmp47:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -88(%rbp)
	movl	%edx, -92(%rbp)
	leaq	-72(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
.LBB3_18:
	leaq	-64(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
.LBB3_19:
	leaq	-56(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
.LBB3_20:
	leaq	-48(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
.LBB3_21:
	leaq	-40(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
.LBB3_22:
	leaq	-32(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
.LBB3_23:
	leaq	-24(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
.LBB3_24:
	leaq	-16(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	testb	$1, -93(%rbp)
	jne	.LBB3_25
	jmp	.LBB3_28
.LBB3_25:
	movq	-80(%rbp), %rax
	leaq	_ZL10FILE_NAMESB5cxx11(%rip), %rcx
	cmpq	%rax, %rcx
	movq	%rax, -232(%rbp)                # 8-byte Spill
	je	.LBB3_27
.LBB3_26:                               # =>This Inner Loop Header: Depth=1
	movq	-232(%rbp), %rax                # 8-byte Reload
	addq	$-32, %rax
	movq	%rax, %rdi
	movq	%rax, -240(%rbp)                # 8-byte Spill
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	_ZL10FILE_NAMESB5cxx11(%rip), %rax
	movq	-240(%rbp), %rcx                # 8-byte Reload
	cmpq	%rax, %rcx
	movq	%rcx, -232(%rbp)                # 8-byte Spill
	jne	.LBB3_26
.LBB3_27:
	jmp	.LBB3_28
.LBB3_28:
	jmp	.LBB3_29
.LBB3_29:
	movq	-88(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.LBB3_30:
	callq	__stack_chk_fail@PLT
.Lfunc_end3:
	.size	__cxx_global_var_init.9, .Lfunc_end3-__cxx_global_var_init.9
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table3:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp24-.Lfunc_begin1          # >> Call Site 1 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin1          #     jumps to .Ltmp26
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp28-.Ltmp27                #   Call between .Ltmp27 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin1          #     jumps to .Ltmp29
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp31-.Ltmp30                #   Call between .Ltmp30 and .Ltmp31
	.uleb128 .Ltmp32-.Lfunc_begin1          #     jumps to .Ltmp32
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp34-.Ltmp33                #   Call between .Ltmp33 and .Ltmp34
	.uleb128 .Ltmp35-.Lfunc_begin1          #     jumps to .Ltmp35
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp36-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp37-.Ltmp36                #   Call between .Ltmp36 and .Ltmp37
	.uleb128 .Ltmp38-.Lfunc_begin1          #     jumps to .Ltmp38
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp39-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp40-.Ltmp39                #   Call between .Ltmp39 and .Ltmp40
	.uleb128 .Ltmp41-.Lfunc_begin1          #     jumps to .Ltmp41
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Ltmp43-.Ltmp42                #   Call between .Ltmp42 and .Ltmp43
	.uleb128 .Ltmp44-.Lfunc_begin1          #     jumps to .Ltmp44
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp45-.Lfunc_begin1          # >> Call Site 8 <<
	.uleb128 .Ltmp46-.Ltmp45                #   Call between .Ltmp45 and .Ltmp46
	.uleb128 .Ltmp47-.Lfunc_begin1          #     jumps to .Ltmp47
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin1          # >> Call Site 9 <<
	.uleb128 .Lfunc_end3-.Ltmp46            #   Call between .Ltmp46 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function __cxx_global_array_dtor.18
	.type	__cxx_global_array_dtor.18,@function
__cxx_global_array_dtor.18:             # @__cxx_global_array_dtor.18
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	_ZL10FILE_NAMESB5cxx11(%rip), %rax
	addq	$256, %rax                      # imm = 0x100
	movq	%rdi, -8(%rbp)
	movq	%rax, -16(%rbp)                 # 8-byte Spill
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax                 # 8-byte Reload
	addq	$-32, %rax
	movq	%rax, %rdi
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	_ZL10FILE_NAMESB5cxx11(%rip), %rax
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	cmpq	%rax, %rcx
	movq	%rcx, -16(%rbp)                 # 8-byte Spill
	jne	.LBB4_1
# %bb.2:
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	__cxx_global_array_dtor.18, .Lfunc_end4-__cxx_global_array_dtor.18
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN5Board12LoadPositionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE # -- Begin function _ZN5Board12LoadPositionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.p2align	4, 0x90
	.type	_ZN5Board12LoadPositionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@function
_ZN5Board12LoadPositionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: # @_ZN5Board12LoadPositionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
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
	subq	$672, %rsp                      # imm = 0x2A0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -472(%rbp)
	movq	-472(%rbp), %rdi
	leaq	-304(%rbp), %rax
	movq	%rdi, -544(%rbp)                # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, -552(%rbp)                # 8-byte Spill
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_@PLT
.Ltmp48:
	leaq	-456(%rbp), %rdi
	movq	-552(%rbp), %rsi                # 8-byte Reload
	callq	_Z8tokenizeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.Ltmp49:
	jmp	.LBB5_1
.LBB5_1:
	leaq	-304(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movl	$0, -488(%rbp)
	movl	$7, -492(%rbp)
	movl	$0, -496(%rbp)
.LBB5_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_19 Depth 2
	cmpl	$0, -492(%rbp)
	movb	$1, %al
	movb	%al, -553(%rbp)                 # 1-byte Spill
	jg	.LBB5_4
# %bb.3:                                #   in Loop: Header=BB5_2 Depth=1
	cmpl	$8, -496(%rbp)
	setl	%al
	movb	%al, -553(%rbp)                 # 1-byte Spill
.LBB5_4:                                #   in Loop: Header=BB5_2 Depth=1
	movb	-553(%rbp), %al                 # 1-byte Reload
	testb	$1, %al
	jne	.LBB5_5
	jmp	.LBB5_28
.LBB5_5:                                #   in Loop: Header=BB5_2 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-456(%rbp), %rdi
	callq	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm
	movslq	-488(%rbp), %rsi
.Ltmp78:
	movq	%rax, %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm@PLT
.Ltmp79:
	movq	%rax, -568(%rbp)                # 8-byte Spill
	jmp	.LBB5_6
.LBB5_6:                                #   in Loop: Header=BB5_2 Depth=1
	movq	-568(%rbp), %rax                # 8-byte Reload
	movsbl	(%rax), %edx
	leaq	-464(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%edx, -572(%rbp)                # 4-byte Spill
	movq	%rcx, -584(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp81:
	leaq	-336(%rbp), %rdi
	movl	$1, %esi
	movl	-572(%rbp), %edx                # 4-byte Reload
	movq	-584(%rbp), %rcx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EmcRKS3_@PLT
.Ltmp82:
	jmp	.LBB5_7
.LBB5_7:                                #   in Loop: Header=BB5_2 Depth=1
	leaq	-464(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
.Ltmp84:
	leaq	.L.str.19(%rip), %rsi
	leaq	-336(%rbp), %rdi
	callq	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
.Ltmp85:
	movb	%al, -585(%rbp)                 # 1-byte Spill
	jmp	.LBB5_8
.LBB5_8:                                #   in Loop: Header=BB5_2 Depth=1
	movb	-585(%rbp), %al                 # 1-byte Reload
	testb	$1, %al
	jne	.LBB5_9
	jmp	.LBB5_14
.LBB5_9:                                #   in Loop: Header=BB5_2 Depth=1
	movl	-492(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -492(%rbp)
	movl	$0, -496(%rbp)
	jmp	.LBB5_26
.LBB5_10:
.Ltmp50:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -480(%rbp)
	movl	%edx, -484(%rbp)
	leaq	-304(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.LBB5_67
.LBB5_11:
.Ltmp80:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -480(%rbp)
	movl	%edx, -484(%rbp)
	jmp	.LBB5_66
.LBB5_12:
.Ltmp83:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -480(%rbp)
	movl	%edx, -484(%rbp)
	leaq	-464(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB5_66
.LBB5_13:
.Ltmp93:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -480(%rbp)
	movl	%edx, -484(%rbp)
	jmp	.LBB5_27
.LBB5_14:                               #   in Loop: Header=BB5_2 Depth=1
.Ltmp86:
	leaq	-368(%rbp), %rdi
	leaq	-336(%rbp), %rsi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_@PLT
.Ltmp87:
	jmp	.LBB5_15
.LBB5_15:                               #   in Loop: Header=BB5_2 Depth=1
.Ltmp88:
	leaq	-368(%rbp), %rdi
	callq	_Z18pieceFromStringFenNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.Ltmp89:
	movl	%eax, -592(%rbp)                # 4-byte Spill
	jmp	.LBB5_16
.LBB5_16:                               #   in Loop: Header=BB5_2 Depth=1
	leaq	-368(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movl	-592(%rbp), %eax                # 4-byte Reload
	movl	%eax, -500(%rbp)
	cmpl	$-1, -500(%rbp)
	jne	.LBB5_24
# %bb.17:                               #   in Loop: Header=BB5_2 Depth=1
.Ltmp91:
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-336(%rbp), %rdi
	movl	$10, %edx
	callq	_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
.Ltmp92:
	movl	%eax, -596(%rbp)                # 4-byte Spill
	jmp	.LBB5_18
.LBB5_18:                               #   in Loop: Header=BB5_2 Depth=1
	movl	-596(%rbp), %eax                # 4-byte Reload
	movl	%eax, -504(%rbp)
	movl	$0, -508(%rbp)
.LBB5_19:                               #   Parent Loop BB5_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-508(%rbp), %eax
	cmpl	-504(%rbp), %eax
	jge	.LBB5_23
# %bb.20:                               #   in Loop: Header=BB5_19 Depth=2
	movl	-500(%rbp), %eax
	movl	-492(%rbp), %ecx
	shll	$3, %ecx
	addl	-496(%rbp), %ecx
	movslq	%ecx, %rdx
	movl	%eax, -272(%rbp,%rdx,4)
	movl	-496(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -496(%rbp)
# %bb.21:                               #   in Loop: Header=BB5_19 Depth=2
	movl	-508(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -508(%rbp)
	jmp	.LBB5_19
.LBB5_22:
.Ltmp90:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -480(%rbp)
	movl	%edx, -484(%rbp)
	leaq	-368(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.LBB5_27
.LBB5_23:                               #   in Loop: Header=BB5_2 Depth=1
	jmp	.LBB5_25
.LBB5_24:                               #   in Loop: Header=BB5_2 Depth=1
	movl	-500(%rbp), %eax
	movl	-492(%rbp), %ecx
	shll	$3, %ecx
	addl	-496(%rbp), %ecx
	movslq	%ecx, %rdx
	movl	%eax, -272(%rbp,%rdx,4)
	movl	-496(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -496(%rbp)
.LBB5_25:                               #   in Loop: Header=BB5_2 Depth=1
	jmp	.LBB5_26
.LBB5_26:                               #   in Loop: Header=BB5_2 Depth=1
	movl	-488(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -488(%rbp)
	leaq	-336(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.LBB5_2
.LBB5_27:
	leaq	-336(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.LBB5_66
.LBB5_28:
	leaq	-456(%rbp), %rdi
	movl	$1, %esi
	callq	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm
.Ltmp51:
	leaq	.L.str.20(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
.Ltmp52:
	movb	%al, -597(%rbp)                 # 1-byte Spill
	jmp	.LBB5_29
.LBB5_29:
	movb	-597(%rbp), %al                 # 1-byte Reload
	notb	%al
	movzbl	%al, %ecx
	andl	$1, %ecx
	movl	%ecx, -512(%rbp)
.Ltmp53:
	leaq	-384(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	%ecx, %edx
	movl	%ecx, -604(%rbp)                # 4-byte Spill
	movl	-604(%rbp), %r8d                # 4-byte Reload
	callq	_ZN5board6castle6RightsC1Eiiii@PLT
.Ltmp54:
	jmp	.LBB5_30
.LBB5_30:
	movl	$0, -516(%rbp)
.LBB5_31:                               # =>This Inner Loop Header: Depth=1
	movl	-516(%rbp), %eax
	movl	%eax, %ecx
	leaq	-456(%rbp), %rdi
	movl	$2, %esi
	movq	%rcx, -616(%rbp)                # 8-byte Spill
	callq	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm
	movq	%rax, %rdi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv@PLT
	movq	-616(%rbp), %rcx                # 8-byte Reload
	cmpq	%rax, %rcx
	jae	.LBB5_50
# %bb.32:                               #   in Loop: Header=BB5_31 Depth=1
	leaq	-456(%rbp), %rdi
	movl	$2, %esi
	callq	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm
	movl	-516(%rbp), %ecx
	movl	%ecx, %esi
.Ltmp68:
	movq	%rax, %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm@PLT
.Ltmp69:
	movq	%rax, -624(%rbp)                # 8-byte Spill
	jmp	.LBB5_33
.LBB5_33:                               #   in Loop: Header=BB5_31 Depth=1
	movq	-624(%rbp), %rax                # 8-byte Reload
	movb	(%rax), %cl
	movb	%cl, -517(%rbp)
	movsbl	-517(%rbp), %edx
	cmpl	$75, %edx
	jne	.LBB5_36
# %bb.34:                               #   in Loop: Header=BB5_31 Depth=1
.Ltmp76:
	leaq	-384(%rbp), %rdi
	xorl	%esi, %esi
	movl	$2, %edx
	movl	$1, %ecx
	callq	_ZN5board6castle6Rights3SetEiii@PLT
.Ltmp77:
	jmp	.LBB5_35
.LBB5_35:                               #   in Loop: Header=BB5_31 Depth=1
	jmp	.LBB5_48
.LBB5_36:                               #   in Loop: Header=BB5_31 Depth=1
	movsbl	-517(%rbp), %eax
	cmpl	$81, %eax
	jne	.LBB5_39
# %bb.37:                               #   in Loop: Header=BB5_31 Depth=1
.Ltmp74:
	leaq	-384(%rbp), %rdi
	xorl	%eax, %eax
	movl	$1, %ecx
	movl	%eax, %esi
	movl	%eax, %edx
	callq	_ZN5board6castle6Rights3SetEiii@PLT
.Ltmp75:
	jmp	.LBB5_38
.LBB5_38:                               #   in Loop: Header=BB5_31 Depth=1
	jmp	.LBB5_47
.LBB5_39:                               #   in Loop: Header=BB5_31 Depth=1
	movsbl	-517(%rbp), %eax
	cmpl	$107, %eax
	jne	.LBB5_42
# %bb.40:                               #   in Loop: Header=BB5_31 Depth=1
.Ltmp72:
	leaq	-384(%rbp), %rdi
	movl	$2, %edx
	movl	$1, %eax
	movl	%eax, %esi
	movl	%eax, %ecx
	callq	_ZN5board6castle6Rights3SetEiii@PLT
.Ltmp73:
	jmp	.LBB5_41
.LBB5_41:                               #   in Loop: Header=BB5_31 Depth=1
	jmp	.LBB5_46
.LBB5_42:                               #   in Loop: Header=BB5_31 Depth=1
	movsbl	-517(%rbp), %eax
	cmpl	$113, %eax
	jne	.LBB5_45
# %bb.43:                               #   in Loop: Header=BB5_31 Depth=1
.Ltmp70:
	leaq	-384(%rbp), %rdi
	xorl	%edx, %edx
	movl	$1, %eax
	movl	%eax, %esi
	movl	%eax, %ecx
	callq	_ZN5board6castle6Rights3SetEiii@PLT
.Ltmp71:
	jmp	.LBB5_44
.LBB5_44:                               #   in Loop: Header=BB5_31 Depth=1
	jmp	.LBB5_45
.LBB5_45:                               #   in Loop: Header=BB5_31 Depth=1
	jmp	.LBB5_46
.LBB5_46:                               #   in Loop: Header=BB5_31 Depth=1
	jmp	.LBB5_47
.LBB5_47:                               #   in Loop: Header=BB5_31 Depth=1
	jmp	.LBB5_48
.LBB5_48:                               #   in Loop: Header=BB5_31 Depth=1
	jmp	.LBB5_49
.LBB5_49:                               #   in Loop: Header=BB5_31 Depth=1
	movl	-516(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -516(%rbp)
	jmp	.LBB5_31
.LBB5_50:
	leaq	-456(%rbp), %rdi
	movl	$3, %esi
	callq	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm
	movb	$0, -525(%rbp)
.Ltmp55:
	leaq	.L.str.21(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
.Ltmp56:
	movb	%al, -625(%rbp)                 # 1-byte Spill
	jmp	.LBB5_51
.LBB5_51:
	movb	-625(%rbp), %al                 # 1-byte Reload
	testb	$1, %al
	jne	.LBB5_52
	jmp	.LBB5_55
.LBB5_52:
	leaq	-456(%rbp), %rdi
	movl	$3, %esi
	callq	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm
.Ltmp57:
	leaq	-416(%rbp), %rdi
	movq	%rax, %rsi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_@PLT
.Ltmp58:
	jmp	.LBB5_53
.LBB5_53:
	movb	$1, -525(%rbp)
.Ltmp59:
	leaq	-416(%rbp), %rdi
	callq	_Z14squareFromNameNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.Ltmp60:
	movl	%eax, -632(%rbp)                # 4-byte Spill
	jmp	.LBB5_54
.LBB5_54:
	movl	-632(%rbp), %eax                # 4-byte Reload
	movl	%eax, -636(%rbp)                # 4-byte Spill
	jmp	.LBB5_56
.LBB5_55:
	movl	$4294967295, %eax               # imm = 0xFFFFFFFF
	movl	%eax, -636(%rbp)                # 4-byte Spill
	jmp	.LBB5_56
.LBB5_56:
	movl	-636(%rbp), %eax                # 4-byte Reload
	testb	$1, -525(%rbp)
	movl	%eax, -640(%rbp)                # 4-byte Spill
	jne	.LBB5_57
	jmp	.LBB5_58
.LBB5_57:
	leaq	-416(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB5_58:
	movl	-640(%rbp), %eax                # 4-byte Reload
	movl	%eax, -524(%rbp)
	leaq	-456(%rbp), %rdi
	movl	$4, %esi
	callq	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm
.Ltmp62:
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$10, %edx
	movq	%rax, %rdi
	callq	_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
.Ltmp63:
	movl	%eax, -644(%rbp)                # 4-byte Spill
	jmp	.LBB5_59
.LBB5_59:
	movl	-644(%rbp), %eax                # 4-byte Reload
	movl	%eax, -532(%rbp)
	leaq	-456(%rbp), %rdi
	movl	$5, %esi
	callq	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm
.Ltmp64:
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$10, %edx
	movq	%rax, %rdi
	callq	_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
.Ltmp65:
	movl	%eax, -648(%rbp)                # 4-byte Spill
	jmp	.LBB5_60
.LBB5_60:
	movl	-648(%rbp), %eax                # 4-byte Reload
	movl	%eax, -536(%rbp)
	movl	-512(%rbp), %edx
	movl	-524(%rbp), %ecx
	movups	-384(%rbp), %xmm0
	movaps	%xmm0, -432(%rbp)
	movl	-532(%rbp), %esi
	movl	-536(%rbp), %edi
	movq	-432(%rbp), %r8
	movq	-424(%rbp), %r9
.Ltmp66:
	movq	%rsp, %r10
	movl	%edi, 8(%r10)
	movl	%esi, (%r10)
	leaq	-272(%rbp), %rsi
	movq	-544(%rbp), %rdi                # 8-byte Reload
	callq	_ZN5Board12LoadPositionEPiiiN5board6castle6RightsEii@PLT
.Ltmp67:
	jmp	.LBB5_61
.LBB5_61:
	leaq	-456(%rbp), %rdi
	callq	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB5_68
# %bb.62:
	addq	$672, %rsp                      # imm = 0x2A0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB5_63:
	.cfi_def_cfa %rbp, 16
.Ltmp61:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -480(%rbp)
	movl	%edx, -484(%rbp)
	testb	$1, -525(%rbp)
	jne	.LBB5_64
	jmp	.LBB5_65
.LBB5_64:
	leaq	-416(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB5_65:
	jmp	.LBB5_66
.LBB5_66:
	leaq	-456(%rbp), %rdi
	callq	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
.LBB5_67:
	movq	-480(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.LBB5_68:
	callq	__stack_chk_fail@PLT
.Lfunc_end5:
	.size	_ZN5Board12LoadPositionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .Lfunc_end5-_ZN5Board12LoadPositionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table5:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp48-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp48
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp48-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp49-.Ltmp48                #   Call between .Ltmp48 and .Ltmp49
	.uleb128 .Ltmp50-.Lfunc_begin2          #     jumps to .Ltmp50
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp78-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp79-.Ltmp78                #   Call between .Ltmp78 and .Ltmp79
	.uleb128 .Ltmp80-.Lfunc_begin2          #     jumps to .Ltmp80
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp81-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp82-.Ltmp81                #   Call between .Ltmp81 and .Ltmp82
	.uleb128 .Ltmp83-.Lfunc_begin2          #     jumps to .Ltmp83
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp84-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp87-.Ltmp84                #   Call between .Ltmp84 and .Ltmp87
	.uleb128 .Ltmp93-.Lfunc_begin2          #     jumps to .Ltmp93
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp88-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Ltmp89-.Ltmp88                #   Call between .Ltmp88 and .Ltmp89
	.uleb128 .Ltmp90-.Lfunc_begin2          #     jumps to .Ltmp90
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp91-.Lfunc_begin2          # >> Call Site 7 <<
	.uleb128 .Ltmp92-.Ltmp91                #   Call between .Ltmp91 and .Ltmp92
	.uleb128 .Ltmp93-.Lfunc_begin2          #     jumps to .Ltmp93
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp51-.Lfunc_begin2          # >> Call Site 8 <<
	.uleb128 .Ltmp58-.Ltmp51                #   Call between .Ltmp51 and .Ltmp58
	.uleb128 .Ltmp80-.Lfunc_begin2          #     jumps to .Ltmp80
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp59-.Lfunc_begin2          # >> Call Site 9 <<
	.uleb128 .Ltmp60-.Ltmp59                #   Call between .Ltmp59 and .Ltmp60
	.uleb128 .Ltmp61-.Lfunc_begin2          #     jumps to .Ltmp61
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp62-.Lfunc_begin2          # >> Call Site 10 <<
	.uleb128 .Ltmp67-.Ltmp62                #   Call between .Ltmp62 and .Ltmp67
	.uleb128 .Ltmp80-.Lfunc_begin2          #     jumps to .Ltmp80
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp67-.Lfunc_begin2          # >> Call Site 11 <<
	.uleb128 .Lfunc_end5-.Ltmp67            #   Call between .Ltmp67 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm,comdat
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm # -- Begin function _ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm
	.p2align	4, 0x90
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm,@function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm: # @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm
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
	shlq	$5, %rcx
	addq	%rcx, %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm, .Lfunc_end6-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_,"axG",@progbits,_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_,comdat
	.weak	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_ # -- Begin function _ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	.p2align	4, 0x90
	.type	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_,@function
_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_: # @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
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
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@PLT
	cmpl	$0, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_, .Lfunc_end7-_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi,"axG",@progbits,_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi,comdat
	.weak	_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi # -- Begin function _ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
	.p2align	4, 0x90
	.type	_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi,@function
_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi: # @_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
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
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv@PLT
	movq	strtol@GOTPCREL(%rip), %rdi
	movq	-16(%rbp), %rcx
	movl	-20(%rbp), %r8d
	leaq	.L.str.23(%rip), %rsi
	movq	%rax, %rdx
	callq	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end8:
	.size	_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi, .Lfunc_end8-_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_,"axG",@progbits,_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_,comdat
	.weak	_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_ # -- Begin function _ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	.p2align	4, 0x90
	.type	_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_,@function
_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_: # @_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
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
	callq	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end9:
	.size	_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_, .Lfunc_end9-_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev,comdat
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev # -- Begin function _ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.p2align	4, 0x90
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev,@function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev: # @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
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
	callq	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv
.Ltmp94:
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	-48(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E
.Ltmp95:
	jmp	.LBB10_1
.LBB10_1:
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB10_2:
	.cfi_def_cfa %rbp, 16
.Ltmp96:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
# %bb.3:
	movq	-16(%rbp), %rdi
	callq	__clang_call_terminate
.Lfunc_end10:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, .Lfunc_end10-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table10:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	156                             # @TType Encoding = indirect pcrel sdata8
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp94-.Lfunc_begin3          # >> Call Site 1 <<
	.uleb128 .Ltmp95-.Ltmp94                #   Call between .Ltmp94 and .Ltmp95
	.uleb128 .Ltmp96-.Lfunc_begin3          #     jumps to .Ltmp96
	.byte	1                               #   On action: 1
.Lcst_end3:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2
                                        # -- End function
	.text
	.globl	_ZNK5Board3fenB5cxx11Ev         # -- Begin function _ZNK5Board3fenB5cxx11Ev
	.p2align	4, 0x90
	.type	_ZNK5Board3fenB5cxx11Ev,@function
_ZNK5Board3fenB5cxx11Ev:                # @_ZNK5Board3fenB5cxx11Ev
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
	subq	$80, %rsp
	movq	%rdi, %rax
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	-16(%rbp), %rcx
	movq	%rdi, -56(%rbp)                 # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	movq	%rcx, -72(%rbp)                 # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp97:
	leaq	.L.str.22(%rip), %rsi
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	-72(%rbp), %rdx                 # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp98:
	jmp	.LBB11_1
.LBB11_1:
	leaq	-16(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB11_5
# %bb.2:
	movq	-64(%rbp), %rax                 # 8-byte Reload
	addq	$80, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB11_3:
	.cfi_def_cfa %rbp, 16
.Ltmp99:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -40(%rbp)
	movl	%edx, -44(%rbp)
	leaq	-16(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
# %bb.4:
	movq	-40(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.LBB11_5:
	callq	__stack_chk_fail@PLT
.Lfunc_end11:
	.size	_ZNK5Board3fenB5cxx11Ev, .Lfunc_end11-_ZNK5Board3fenB5cxx11Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table11:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp97-.Lfunc_begin4          # >> Call Site 1 <<
	.uleb128 .Ltmp98-.Ltmp97                #   Call between .Ltmp97 and .Ltmp98
	.uleb128 .Ltmp99-.Lfunc_begin4          #     jumps to .Ltmp99
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp98-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Lfunc_end11-.Ltmp98           #   Call between .Ltmp98 and .Lfunc_end11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2
                                        # -- End function
	.section	.text._ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.weak	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_ # -- Begin function _ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,@function
_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_: # @_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movl	%r8d, -60(%rbp)
	leaq	-24(%rbp), %rdi
	callq	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdi
	movl	-60(%rbp), %edx
.Ltmp100:
	leaq	-16(%rbp), %rsi
	callq	*%rax
.Ltmp101:
	movq	%rax, -104(%rbp)                # 8-byte Spill
	jmp	.LBB12_1
.LBB12_1:
	movq	-104(%rbp), %rax                # 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rcx
	cmpq	-48(%rbp), %rcx
	jne	.LBB12_5
# %bb.2:
	movq	-40(%rbp), %rdi
.Ltmp106:
	callq	_ZSt24__throw_invalid_argumentPKc@PLT
.Ltmp107:
	jmp	.LBB12_3
.LBB12_3:
.LBB12_4:
.Ltmp108:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -80(%rbp)
	movl	%edx, -84(%rbp)
	leaq	-24(%rbp), %rdi
	callq	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev
	jmp	.LBB12_17
.LBB12_5:
	callq	__errno_location@PLT
	cmpl	$34, (%rax)
	movb	$1, %cl
	movb	%cl, -105(%rbp)                 # 1-byte Spill
	je	.LBB12_8
# %bb.6:
	movq	-72(%rbp), %rdi
.Ltmp102:
	callq	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE
.Ltmp103:
	movb	%al, -106(%rbp)                 # 1-byte Spill
	jmp	.LBB12_7
.LBB12_7:
	movb	-106(%rbp), %al                 # 1-byte Reload
	movb	%al, -105(%rbp)                 # 1-byte Spill
	jmp	.LBB12_8
.LBB12_8:
	movb	-105(%rbp), %al                 # 1-byte Reload
	testb	$1, %al
	jne	.LBB12_9
	jmp	.LBB12_11
.LBB12_9:
	movq	-40(%rbp), %rdi
.Ltmp104:
	callq	_ZSt20__throw_out_of_rangePKc@PLT
.Ltmp105:
	jmp	.LBB12_10
.LBB12_10:
.LBB12_11:
	movq	-72(%rbp), %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -64(%rbp)
# %bb.12:
	jmp	.LBB12_13
.LBB12_13:
	cmpq	$0, -56(%rbp)
	je	.LBB12_15
# %bb.14:
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rcx
	subq	%rcx, %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB12_15:
	movl	-64(%rbp), %eax
	leaq	-24(%rbp), %rdi
	movl	%eax, -112(%rbp)                # 4-byte Spill
	callq	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev
	movq	%fs:40, %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	jne	.LBB12_18
# %bb.16:
	movl	-112(%rbp), %eax                # 4-byte Reload
	addq	$112, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB12_17:
	.cfi_def_cfa %rbp, 16
	movq	-80(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.LBB12_18:
	callq	__stack_chk_fail@PLT
.Lfunc_end12:
	.size	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, .Lfunc_end12-_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table12:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp100-.Lfunc_begin5         # >> Call Site 1 <<
	.uleb128 .Ltmp105-.Ltmp100              #   Call between .Ltmp100 and .Ltmp105
	.uleb128 .Ltmp108-.Lfunc_begin5         #     jumps to .Ltmp108
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp105-.Lfunc_begin5         # >> Call Site 2 <<
	.uleb128 .Lfunc_end12-.Ltmp105          #   Call between .Ltmp105 and .Lfunc_end12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.p2align	2
                                        # -- End function
	.section	.text._ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev,"axG",@progbits,_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev,comdat
	.weak	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev # -- Begin function _ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev
	.p2align	4, 0x90
	.type	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev,@function
_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev: # @_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev
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
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	callq	__errno_location@PLT
	movl	(%rax), %ecx
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movl	%ecx, (%rax)
	callq	__errno_location@PLT
	movl	$0, (%rax)
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end13:
	.size	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev, .Lfunc_end13-_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE,"axG",@progbits,_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE,comdat
	.weak	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE # -- Begin function _ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE
	.p2align	4, 0x90
	.type	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE,@function
_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE: # @_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	cmpq	$-2147483648, -16(%rbp)         # imm = 0x80000000
	movb	$1, %al
	movb	%al, -17(%rbp)                  # 1-byte Spill
	jl	.LBB14_2
# %bb.1:
	cmpq	$2147483647, -16(%rbp)          # imm = 0x7FFFFFFF
	setg	%al
	movb	%al, -17(%rbp)                  # 1-byte Spill
.LBB14_2:
	movb	-17(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end14:
	.size	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE, .Lfunc_end14-_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev,"axG",@progbits,_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev,comdat
	.weak	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev # -- Begin function _ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev
	.p2align	4, 0x90
	.type	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev,@function
_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev: # @_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	callq	__errno_location@PLT
	cmpl	$0, (%rax)
	jne	.LBB15_2
# %bb.1:
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movl	(%rax), %ecx
	movl	%ecx, -20(%rbp)                 # 4-byte Spill
	callq	__errno_location@PLT
	movl	-20(%rbp), %ecx                 # 4-byte Reload
	movl	%ecx, (%rax)
.LBB15_2:
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end15:
	.size	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev, .Lfunc_end15-_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E # -- Begin function _ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E
	.p2align	4, 0x90
	.type	_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E,@function
_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E: # @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E
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
	callq	_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end16:
	.size	_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E, .Lfunc_end16-_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv,comdat
	.weak	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv # -- Begin function _ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv,@function
_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv: # @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv
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
.Lfunc_end17:
	.size	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv, .Lfunc_end17-_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev,comdat
	.weak	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev # -- Begin function _ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev,@function
_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev: # @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
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
	sarq	$5, %rdx
.Ltmp109:
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	callq	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m
.Ltmp110:
	jmp	.LBB18_1
.LBB18_1:
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implD2Ev
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB18_2:
	.cfi_def_cfa %rbp, 16
.Ltmp111:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implD2Ev
# %bb.3:
	movq	-16(%rbp), %rdi
	callq	__clang_call_terminate
.Lfunc_end18:
	.size	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, .Lfunc_end18-_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table18:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	156                             # @TType Encoding = indirect pcrel sdata8
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Ltmp109-.Lfunc_begin6         # >> Call Site 1 <<
	.uleb128 .Ltmp110-.Ltmp109              #   Call between .Ltmp109 and .Ltmp110
	.uleb128 .Ltmp111-.Lfunc_begin6         #     jumps to .Ltmp111
	.byte	1                               #   On action: 1
.Lcst_end6:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2
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
.Lfunc_end19:
	.size	__clang_call_terminate, .Lfunc_end19-__clang_call_terminate
                                        # -- End function
	.section	.text._ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_,"axG",@progbits,_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_,comdat
	.weak	_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_ # -- Begin function _ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_
	.p2align	4, 0x90
	.type	_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_,@function
_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_: # @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_
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
	callq	_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end20:
	.size	_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_, .Lfunc_end20-_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_,"axG",@progbits,_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_,comdat
	.weak	_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_ # -- Begin function _ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_
	.p2align	4, 0x90
	.type	_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_,@function
_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_: # @_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_
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
.LBB21_1:                               # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB21_4
# %bb.2:                                #   in Loop: Header=BB21_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	_ZSt11__addressofINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPT_RS6_
	movq	%rax, %rdi
	callq	_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_
# %bb.3:                                #   in Loop: Header=BB21_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB21_1
.LBB21_4:
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end21:
	.size	_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_, .Lfunc_end21-_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_,"axG",@progbits,_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_,comdat
	.weak	_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_ # -- Begin function _ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_
	.p2align	4, 0x90
	.type	_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_,@function
_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_: # @_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_
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
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end22:
	.size	_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_, .Lfunc_end22-_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt11__addressofINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPT_RS6_,"axG",@progbits,_ZSt11__addressofINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPT_RS6_,comdat
	.weak	_ZSt11__addressofINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPT_RS6_ # -- Begin function _ZSt11__addressofINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPT_RS6_
	.p2align	4, 0x90
	.type	_ZSt11__addressofINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPT_RS6_,@function
_ZSt11__addressofINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPT_RS6_: # @_ZSt11__addressofINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPT_RS6_
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
.Lfunc_end23:
	.size	_ZSt11__addressofINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPT_RS6_, .Lfunc_end23-_ZSt11__addressofINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPT_RS6_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m,"axG",@progbits,_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m,comdat
	.weak	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m # -- Begin function _ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m,@function
_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m: # @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m
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
	je	.LBB24_2
# %bb.1:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateERS6_PS5_m
.LBB24_2:
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end24:
	.size	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m, .Lfunc_end24-_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implD2Ev,comdat
	.weak	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implD2Ev # -- Begin function _ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implD2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implD2Ev,@function
_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implD2Ev: # @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implD2Ev
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
	callq	_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end25:
	.size	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implD2Ev, .Lfunc_end25-_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateERS6_PS5_m,"axG",@progbits,_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateERS6_PS5_m,comdat
	.weak	_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateERS6_PS5_m # -- Begin function _ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateERS6_PS5_m
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateERS6_PS5_m,@function
_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateERS6_PS5_m: # @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateERS6_PS5_m
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
	callq	_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS6_m
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end26:
	.size	_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateERS6_PS5_m, .Lfunc_end26-_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateERS6_PS5_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS6_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS6_m,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS6_m # -- Begin function _ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS6_m
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS6_m,@function
_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS6_m: # @_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS6_m
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
.Lfunc_end27:
	.size	_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS6_m, .Lfunc_end27-_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS6_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev,"axG",@progbits,_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev,comdat
	.weak	_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev # -- Begin function _ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev
	.p2align	4, 0x90
	.type	_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev,@function
_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev: # @_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev
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
	callq	_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end28:
	.size	_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, .Lfunc_end28-_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev # -- Begin function _ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev,@function
_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev: # @_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev
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
.Lfunc_end29:
	.size	_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, .Lfunc_end29-_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_fen.cpp
	.type	_GLOBAL__sub_I_fen.cpp,@function
_GLOBAL__sub_I_fen.cpp:                 # @_GLOBAL__sub_I_fen.cpp
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__cxx_global_var_init
	callq	__cxx_global_var_init.1
	callq	__cxx_global_var_init.9
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end30:
	.size	_GLOBAL__sub_I_fen.cpp, .Lfunc_end30-_GLOBAL__sub_I_fen.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	_ZL10RANK_NAMESB5cxx11,@object  # @_ZL10RANK_NAMESB5cxx11
	.local	_ZL10RANK_NAMESB5cxx11
	.comm	_ZL10RANK_NAMESB5cxx11,256,16
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"1"
	.size	.L.str, 2

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"2"
	.size	.L.str.2, 2

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"3"
	.size	.L.str.3, 2

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"4"
	.size	.L.str.4, 2

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"5"
	.size	.L.str.5, 2

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"6"
	.size	.L.str.6, 2

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"7"
	.size	.L.str.7, 2

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"8"
	.size	.L.str.8, 2

	.type	_ZL10FILE_NAMESB5cxx11,@object  # @_ZL10FILE_NAMESB5cxx11
	.local	_ZL10FILE_NAMESB5cxx11
	.comm	_ZL10FILE_NAMESB5cxx11,256,16
	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"a"
	.size	.L.str.10, 2

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"b"
	.size	.L.str.11, 2

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"c"
	.size	.L.str.12, 2

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"d"
	.size	.L.str.13, 2

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"e"
	.size	.L.str.14, 2

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"f"
	.size	.L.str.15, 2

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"g"
	.size	.L.str.16, 2

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"h"
	.size	.L.str.17, 2

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"/"
	.size	.L.str.19, 2

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"w"
	.size	.L.str.20, 2

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"-"
	.size	.L.str.21, 2

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"foo"
	.size	.L.str.22, 4

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"stoi"
	.size	.L.str.23, 5

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_fen.cpp
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"aGw",@progbits,DW.ref.__gxx_personality_v0,comdat
	.p2align	3
	.type	DW.ref.__gxx_personality_v0,@object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"clang version 11.0.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __cxx_global_var_init
	.addrsig_sym __cxa_atexit
	.addrsig_sym __cxx_global_var_init.1
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym __cxx_global_array_dtor
	.addrsig_sym __cxx_global_var_init.9
	.addrsig_sym __cxx_global_array_dtor.18
	.addrsig_sym _Z8tokenizeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.addrsig_sym _ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm
	.addrsig_sym _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	.addrsig_sym _ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	.addrsig_sym _Z18pieceFromStringFenNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.addrsig_sym _ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
	.addrsig_sym _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv
	.addrsig_sym _ZN5board6castle6Rights3SetEiii
	.addrsig_sym _ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	.addrsig_sym _Z14squareFromNameNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.addrsig_sym _ZN5Board12LoadPositionEPiiiN5board6castle6RightsEii
	.addrsig_sym _ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.addrsig_sym strtol
	.addrsig_sym _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv
	.addrsig_sym _ZSt24__throw_invalid_argumentPKc
	.addrsig_sym __errno_location
	.addrsig_sym _ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE
	.addrsig_sym _ZSt20__throw_out_of_rangePKc
	.addrsig_sym _ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E
	.addrsig_sym _ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv
	.addrsig_sym __clang_call_terminate
	.addrsig_sym __cxa_begin_catch
	.addrsig_sym _ZSt9terminatev
	.addrsig_sym _ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_
	.addrsig_sym _ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_
	.addrsig_sym _ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_
	.addrsig_sym _ZSt11__addressofINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPT_RS6_
	.addrsig_sym _ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m
	.addrsig_sym _ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateERS6_PS5_m
	.addrsig_sym _ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS6_m
	.addrsig_sym _ZdlPv
	.addrsig_sym _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc
	.addrsig_sym _GLOBAL__sub_I_fen.cpp
	.addrsig_sym _Unwind_Resume
	.addrsig_sym __stack_chk_fail
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym _ZL10RANK_NAMESB5cxx11
	.addrsig_sym _ZL10FILE_NAMESB5cxx11
