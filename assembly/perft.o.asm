	.text
	.file	"perft.cpp"
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
	.globl	_ZN5perft5perftER5BoardiRNS_7CounterE # -- Begin function _ZN5perft5perftER5BoardiRNS_7CounterE
	.p2align	4, 0x90
	.type	_ZN5perft5perftER5BoardiRNS_7CounterE,@function
_ZN5perft5perftER5BoardiRNS_7CounterE:  # @_ZN5perft5perftER5BoardiRNS_7CounterE
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
	movq	%rdi, -600(%rbp)
	movl	%esi, -604(%rbp)
	movq	%rdx, -616(%rbp)
	cmpl	$0, -604(%rbp)
	jne	.LBB5_2
# %bb.1:
	jmp	.LBB5_25
.LBB5_2:
	movq	-600(%rbp), %rsi
	leaq	-528(%rbp), %rdi
	callq	_ZN5Board11legal_movesEv@PLT
	leaq	-528(%rbp), %rdi
	callq	_ZNK8MoveListILi256EE4sizeEv
	movl	%eax, -620(%rbp)
	movq	-600(%rbp), %rdi
	callq	_ZNK5Board9occupancyEv@PLT
	movq	%rax, -632(%rbp)
	movl	$0, -636(%rbp)
.LBB5_3:                                # =>This Inner Loop Header: Depth=1
	movl	-636(%rbp), %eax
	cmpl	-620(%rbp), %eax
	jge	.LBB5_25
# %bb.4:                                #   in Loop: Header=BB5_3 Depth=1
	movl	-636(%rbp), %esi
	leaq	-528(%rbp), %rdi
	callq	_ZNK8MoveListILi256EEixEi
	movw	%ax, -568(%rbp)
	cmpl	$1, -604(%rbp)
	jne	.LBB5_16
# %bb.5:                                #   in Loop: Header=BB5_3 Depth=1
	movq	-616(%rbp), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	leaq	-568(%rbp), %rdi
	callq	_ZNK5CMove9is_castleEv
	testb	$1, %al
	jne	.LBB5_6
	jmp	.LBB5_7
.LBB5_6:                                #   in Loop: Header=BB5_3 Depth=1
	movq	-616(%rbp), %rax
	movq	24(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 24(%rax)
.LBB5_7:                                #   in Loop: Header=BB5_3 Depth=1
	leaq	-568(%rbp), %rdi
	callq	_ZNK5CMove12is_promotionEv
	testb	$1, %al
	jne	.LBB5_8
	jmp	.LBB5_9
.LBB5_8:                                #   in Loop: Header=BB5_3 Depth=1
	movq	-616(%rbp), %rax
	movq	32(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 32(%rax)
.LBB5_9:                                #   in Loop: Header=BB5_3 Depth=1
	movq	-600(%rbp), %rdi
	movw	-568(%rbp), %ax
	movw	%ax, -576(%rbp)
	movzwl	-576(%rbp), %esi
	callq	_ZN5Board16is_checking_moveE5CMove@PLT
	testb	$1, %al
	jne	.LBB5_10
	jmp	.LBB5_11
.LBB5_10:                               #   in Loop: Header=BB5_3 Depth=1
	movq	-616(%rbp), %rax
	movq	40(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 40(%rax)
.LBB5_11:                               #   in Loop: Header=BB5_3 Depth=1
	leaq	-568(%rbp), %rdi
	callq	_ZNK5CMove4destEv
	andq	-632(%rbp), %rax
	cmpq	$0, %rax
	je	.LBB5_13
# %bb.12:                               #   in Loop: Header=BB5_3 Depth=1
	movq	-616(%rbp), %rax
	movq	8(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 8(%rax)
.LBB5_13:                               #   in Loop: Header=BB5_3 Depth=1
	leaq	-568(%rbp), %rdi
	callq	_ZNK5CMove9type_codeEv
	cmpl	$5, %eax
	jne	.LBB5_15
# %bb.14:                               #   in Loop: Header=BB5_3 Depth=1
	movq	-616(%rbp), %rax
	movq	16(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 16(%rax)
	movq	-616(%rbp), %rax
	movq	8(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 8(%rax)
.LBB5_15:                               #   in Loop: Header=BB5_3 Depth=1
	jmp	.LBB5_16
.LBB5_16:                               #   in Loop: Header=BB5_3 Depth=1
	movq	-600(%rbp), %rdi
	callq	_ZN5Board4DumpEv@PLT
	movw	-568(%rbp), %ax
	movw	%ax, -584(%rbp)
	movzwl	-584(%rbp), %esi
	leaq	-560(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rcx, -664(%rbp)                # 8-byte Spill
	callq	_Z18moveToUCIAlgebraicB5cxx115CMove@PLT
.Ltmp48:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	movq	-664(%rbp), %rsi                # 8-byte Reload
	callq	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
.Ltmp49:
	jmp	.LBB5_17
.LBB5_17:                               #   in Loop: Header=BB5_3 Depth=1
	leaq	-560(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	-600(%rbp), %rdi
	movw	-568(%rbp), %ax
	movw	%ax, -592(%rbp)
	movzwl	-592(%rbp), %esi
	callq	_ZN5Board8MakeMoveE5CMove@PLT
	cmpl	$1, -604(%rbp)
	jne	.LBB5_23
# %bb.18:                               #   in Loop: Header=BB5_3 Depth=1
	movq	-600(%rbp), %rdi
	callq	_ZN5Board6statusEv@PLT
	movl	%eax, -656(%rbp)
	cmpl	$0, -656(%rbp)
	je	.LBB5_20
# %bb.19:                               #   in Loop: Header=BB5_3 Depth=1
	cmpl	$1, -656(%rbp)
	jne	.LBB5_22
.LBB5_20:                               #   in Loop: Header=BB5_3 Depth=1
	movq	-616(%rbp), %rax
	movq	48(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 48(%rax)
	jmp	.LBB5_22
.LBB5_21:
.Ltmp50:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -648(%rbp)
	movl	%edx, -652(%rbp)
	leaq	-560(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.LBB5_27
.LBB5_22:                               #   in Loop: Header=BB5_3 Depth=1
	jmp	.LBB5_23
.LBB5_23:                               #   in Loop: Header=BB5_3 Depth=1
	movq	-600(%rbp), %rdi
	movl	-604(%rbp), %eax
	subl	$1, %eax
	movq	-616(%rbp), %rdx
	movl	%eax, %esi
	callq	_ZN5perft5perftER5BoardiRNS_7CounterE
	movq	-600(%rbp), %rdi
	callq	_ZN5Board10UnmakeMoveEv@PLT
# %bb.24:                               #   in Loop: Header=BB5_3 Depth=1
	movl	-636(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -636(%rbp)
	jmp	.LBB5_3
.LBB5_25:
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB5_28
# %bb.26:
	addq	$672, %rsp                      # imm = 0x2A0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB5_27:
	.cfi_def_cfa %rbp, 16
	movq	-648(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.LBB5_28:
	callq	__stack_chk_fail@PLT
.Lfunc_end5:
	.size	_ZN5perft5perftER5BoardiRNS_7CounterE, .Lfunc_end5-_ZN5perft5perftER5BoardiRNS_7CounterE
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
	.uleb128 .Ltmp49-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Lfunc_end5-.Ltmp49            #   Call between .Ltmp49 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2
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
.Lfunc_end6:
	.size	_ZNK8MoveListILi256EE4sizeEv, .Lfunc_end6-_ZNK8MoveListILi256EE4sizeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK8MoveListILi256EEixEi,"axG",@progbits,_ZNK8MoveListILi256EEixEi,comdat
	.weak	_ZNK8MoveListILi256EEixEi       # -- Begin function _ZNK8MoveListILi256EEixEi
	.p2align	4, 0x90
	.type	_ZNK8MoveListILi256EEixEi,@function
_ZNK8MoveListILi256EEixEi:              # @_ZNK8MoveListILi256EEixEi
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
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movw	(%rax,%rcx,2), %dx
	movw	%dx, -16(%rbp)
	movw	-16(%rbp), %ax
	movq	%fs:40, %rcx
	movq	-8(%rbp), %rdi
	cmpq	%rdi, %rcx
	movw	%ax, -30(%rbp)                  # 2-byte Spill
	jne	.LBB7_2
# %bb.1:
	movw	-30(%rbp), %ax                  # 2-byte Reload
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB7_2:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end7:
	.size	_ZNK8MoveListILi256EEixEi, .Lfunc_end7-_ZNK8MoveListILi256EEixEi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK5CMove9is_castleEv,"axG",@progbits,_ZNK5CMove9is_castleEv,comdat
	.weak	_ZNK5CMove9is_castleEv          # -- Begin function _ZNK5CMove9is_castleEv
	.p2align	4, 0x90
	.type	_ZNK5CMove9is_castleEv,@function
_ZNK5CMove9is_castleEv:                 # @_ZNK5CMove9is_castleEv
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
	callq	_ZNK5CMove9type_codeEv
	movl	%eax, -12(%rbp)
	cmpl	$9, -12(%rbp)
	movb	$1, %cl
	movb	%cl, -13(%rbp)                  # 1-byte Spill
	je	.LBB8_2
# %bb.1:
	cmpl	$3, -12(%rbp)
	sete	%al
	movb	%al, -13(%rbp)                  # 1-byte Spill
.LBB8_2:
	movb	-13(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end8:
	.size	_ZNK5CMove9is_castleEv, .Lfunc_end8-_ZNK5CMove9is_castleEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK5CMove12is_promotionEv,"axG",@progbits,_ZNK5CMove12is_promotionEv,comdat
	.weak	_ZNK5CMove12is_promotionEv      # -- Begin function _ZNK5CMove12is_promotionEv
	.p2align	4, 0x90
	.type	_ZNK5CMove12is_promotionEv,@function
_ZNK5CMove12is_promotionEv:             # @_ZNK5CMove12is_promotionEv
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
	callq	_ZNK5CMove9type_codeEv
	xorl	%ecx, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	movb	%cl, -13(%rbp)                  # 1-byte Spill
	jle	.LBB9_2
# %bb.1:
	movl	-12(%rbp), %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	cmpl	$0, %edx
	sete	%sil
	movb	%sil, -13(%rbp)                 # 1-byte Spill
.LBB9_2:
	movb	-13(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end9:
	.size	_ZNK5CMove12is_promotionEv, .Lfunc_end9-_ZNK5CMove12is_promotionEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK5CMove4destEv,"axG",@progbits,_ZNK5CMove4destEv,comdat
	.weak	_ZNK5CMove4destEv               # -- Begin function _ZNK5CMove4destEv
	.p2align	4, 0x90
	.type	_ZNK5CMove4destEv,@function
_ZNK5CMove4destEv:                      # @_ZNK5CMove4destEv
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
	movzwl	(%rax), %ecx
	sarl	$4, %ecx
	andl	$63, %ecx
	movl	%ecx, %edi
	callq	_Z13u64FromSquarei
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end10:
	.size	_ZNK5CMove4destEv, .Lfunc_end10-_ZNK5CMove4destEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK5CMove9type_codeEv,"axG",@progbits,_ZNK5CMove9type_codeEv,comdat
	.weak	_ZNK5CMove9type_codeEv          # -- Begin function _ZNK5CMove9type_codeEv
	.p2align	4, 0x90
	.type	_ZNK5CMove9type_codeEv,@function
_ZNK5CMove9type_codeEv:                 # @_ZNK5CMove9type_codeEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzwl	(%rax), %ecx
	andl	$15, %ecx
	movl	%ecx, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end11:
	.size	_ZNK5CMove9type_codeEv, .Lfunc_end11-_ZNK5CMove9type_codeEv
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
	jne	.LBB12_1
	jmp	.LBB12_2
.LBB12_1:
	jmp	.LBB12_3
.LBB12_2:
	leaq	.L.str.19(%rip), %rdi
	leaq	.L.str.20(%rip), %rsi
	movl	$121, %edx
	leaq	.L__PRETTY_FUNCTION__._Z13u64FromSquarei(%rip), %rcx
	callq	__assert_fail@PLT
.LBB12_3:
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
.Lfunc_end12:
	.size	_Z13u64FromSquarei, .Lfunc_end12-_Z13u64FromSquarei
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
	jl	.LBB13_2
# %bb.1:
	cmpl	$64, -4(%rbp)
	setl	%al
	movb	%al, -5(%rbp)                   # 1-byte Spill
.LBB13_2:
	movb	-5(%rbp), %al                   # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end13:
	.size	_Z13isValidSquarei, .Lfunc_end13-_Z13isValidSquarei
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_perft.cpp
	.type	_GLOBAL__sub_I_perft.cpp,@function
_GLOBAL__sub_I_perft.cpp:               # @_GLOBAL__sub_I_perft.cpp
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
.Lfunc_end14:
	.size	_GLOBAL__sub_I_perft.cpp, .Lfunc_end14-_GLOBAL__sub_I_perft.cpp
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
	.asciz	"isValidSquare(s)"
	.size	.L.str.19, 17

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"include/misc/bits.hpp"
	.size	.L.str.20, 22

	.type	.L__PRETTY_FUNCTION__._Z13u64FromSquarei,@object # @__PRETTY_FUNCTION__._Z13u64FromSquarei
.L__PRETTY_FUNCTION__._Z13u64FromSquarei:
	.asciz	"uint64_t u64FromSquare(int)"
	.size	.L__PRETTY_FUNCTION__._Z13u64FromSquarei, 28

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_perft.cpp
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
	.addrsig_sym _ZN5perft5perftER5BoardiRNS_7CounterE
	.addrsig_sym _ZN5Board11legal_movesEv
	.addrsig_sym _ZNK8MoveListILi256EE4sizeEv
	.addrsig_sym _ZNK5Board9occupancyEv
	.addrsig_sym _ZNK8MoveListILi256EEixEi
	.addrsig_sym _ZNK5CMove9is_castleEv
	.addrsig_sym _ZNK5CMove12is_promotionEv
	.addrsig_sym _ZN5Board16is_checking_moveE5CMove
	.addrsig_sym _ZNK5CMove4destEv
	.addrsig_sym _ZNK5CMove9type_codeEv
	.addrsig_sym _ZN5Board4DumpEv
	.addrsig_sym _ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	.addrsig_sym _Z18moveToUCIAlgebraicB5cxx115CMove
	.addrsig_sym _ZN5Board8MakeMoveE5CMove
	.addrsig_sym _ZN5Board6statusEv
	.addrsig_sym _ZN5Board10UnmakeMoveEv
	.addrsig_sym _Z13u64FromSquarei
	.addrsig_sym _Z13isValidSquarei
	.addrsig_sym __assert_fail
	.addrsig_sym _GLOBAL__sub_I_perft.cpp
	.addrsig_sym _Unwind_Resume
	.addrsig_sym __stack_chk_fail
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym _ZL10RANK_NAMESB5cxx11
	.addrsig_sym _ZL10FILE_NAMESB5cxx11
	.addrsig_sym _ZSt4cout
