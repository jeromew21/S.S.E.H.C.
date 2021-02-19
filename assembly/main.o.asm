	.text
	.file	"main.cpp"
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
	.globl	_Z12verbose_infoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE # -- Begin function _Z12verbose_infoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.p2align	4, 0x90
	.type	_Z12verbose_infoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@function
_Z12verbose_infoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: # @_Z12verbose_infoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	testb	$1, verbose(%rip)
	je	.LBB5_2
# %bb.1:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	.L.str.19(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E@PLT
.LBB5_2:
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	_Z12verbose_infoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .Lfunc_end5-_Z12verbose_infoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_endproc
                                        # -- End function
	.globl	_Z4initv                        # -- Begin function _Z4initv
	.p2align	4, 0x90
	.type	_Z4initv,@function
_Z4initv:                               # @_Z4initv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$39132644, %edi                 # imm = 0x2551DE4
	callq	_Z8seedRandi@PLT
	callq	_Z9init_bitsv@PLT
	callq	_ZN9move_maps4initEv@PLT
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	_Z4initv, .Lfunc_end6-_Z4initv
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
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
	subq	$2240, %rsp                     # imm = 0x8C0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movl	$0, -2068(%rbp)
	movl	%edi, -2072(%rbp)
	movq	%rsi, -2080(%rbp)
	movl	$1, -2084(%rbp)
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	movl	-2084(%rbp), %eax
	cmpl	-2072(%rbp), %eax
	jge	.LBB7_16
# %bb.2:                                #   in Loop: Header=BB7_1 Depth=1
	movq	-2080(%rbp), %rax
	movslq	-2084(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	leaq	-2000(%rbp), %rax
	movq	%rax, %rdi
	movq	%rsi, -2120(%rbp)               # 8-byte Spill
	movq	%rax, -2128(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp102:
	leaq	-40(%rbp), %rdi
	movq	-2120(%rbp), %rsi               # 8-byte Reload
	movq	-2128(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp103:
	jmp	.LBB7_3
.LBB7_3:                                #   in Loop: Header=BB7_1 Depth=1
	leaq	-2000(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
.Ltmp105:
	leaq	.L.str.20(%rip), %rsi
	leaq	-40(%rbp), %rdi
	callq	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
.Ltmp106:
	movb	%al, -2129(%rbp)                # 1-byte Spill
	jmp	.LBB7_4
.LBB7_4:                                #   in Loop: Header=BB7_1 Depth=1
	movb	-2129(%rbp), %al                # 1-byte Reload
	testb	$1, %al
	jne	.LBB7_5
	jmp	.LBB7_8
.LBB7_5:                                #   in Loop: Header=BB7_1 Depth=1
	movb	$1, verbose(%rip)
	jmp	.LBB7_14
.LBB7_6:
.Ltmp104:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -2096(%rbp)
	movl	%edx, -2100(%rbp)
	leaq	-2000(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB7_68
.LBB7_7:
.Ltmp113:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -2096(%rbp)
	movl	%edx, -2100(%rbp)
	leaq	-40(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.LBB7_68
.LBB7_8:                                #   in Loop: Header=BB7_1 Depth=1
.Ltmp107:
	leaq	.L.str.21(%rip), %rsi
	leaq	-40(%rbp), %rdi
	callq	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
.Ltmp108:
	movb	%al, -2130(%rbp)                # 1-byte Spill
	jmp	.LBB7_9
.LBB7_9:                                #   in Loop: Header=BB7_1 Depth=1
	movb	-2130(%rbp), %al                # 1-byte Reload
	testb	$1, %al
	jne	.LBB7_10
	jmp	.LBB7_13
.LBB7_10:
.Ltmp109:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	.L.str.22(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.Ltmp110:
	movq	%rax, -2144(%rbp)               # 8-byte Spill
	jmp	.LBB7_11
.LBB7_11:
.Ltmp111:
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rsi
	movq	-2144(%rbp), %rdi               # 8-byte Reload
	callq	_ZNSolsEPFRSoS_E@PLT
.Ltmp112:
	jmp	.LBB7_12
.LBB7_12:
	xorl	%edi, %edi
	callq	exit@PLT
.LBB7_13:                               #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_14
.LBB7_14:                               #   in Loop: Header=BB7_1 Depth=1
	leaq	-40(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
# %bb.15:                               #   in Loop: Header=BB7_1 Depth=1
	movl	-2084(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -2084(%rbp)
	jmp	.LBB7_1
.LBB7_16:
	leaq	-2008(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -2152(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp48:
	leaq	.L.str.23(%rip), %rsi
	leaq	-72(%rbp), %rdi
	movq	-2152(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp49:
	jmp	.LBB7_17
.LBB7_17:
.Ltmp51:
	leaq	-72(%rbp), %rdi
	callq	_Z12verbose_infoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Ltmp52:
	jmp	.LBB7_18
.LBB7_18:
	leaq	-72(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-2008(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	callq	_Z4initv
	movl	$1, -2104(%rbp)
.LBB7_19:                               # =>This Inner Loop Header: Depth=1
	movl	-2104(%rbp), %eax
	cmpl	-2072(%rbp), %eax
	jge	.LBB7_32
# %bb.20:                               #   in Loop: Header=BB7_19 Depth=1
	movq	-2080(%rbp), %rax
	movslq	-2104(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	leaq	-2016(%rbp), %rax
	movq	%rax, %rdi
	movq	%rsi, -2160(%rbp)               # 8-byte Spill
	movq	%rax, -2168(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp94:
	leaq	-104(%rbp), %rdi
	movq	-2160(%rbp), %rsi               # 8-byte Reload
	movq	-2168(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp95:
	jmp	.LBB7_21
.LBB7_21:                               #   in Loop: Header=BB7_19 Depth=1
	leaq	-2016(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
.Ltmp97:
	leaq	.L.str.24(%rip), %rsi
	leaq	-104(%rbp), %rdi
	callq	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
.Ltmp98:
	movb	%al, -2169(%rbp)                # 1-byte Spill
	jmp	.LBB7_22
.LBB7_22:                               #   in Loop: Header=BB7_19 Depth=1
	movb	-2169(%rbp), %al                # 1-byte Reload
	testb	$1, %al
	jne	.LBB7_23
	jmp	.LBB7_30
.LBB7_23:
.Ltmp99:
	callq	_Z9run_testsv@PLT
.Ltmp100:
	jmp	.LBB7_24
.LBB7_24:
	xorl	%edi, %edi
	callq	exit@PLT
.LBB7_25:
.Ltmp50:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -2096(%rbp)
	movl	%edx, -2100(%rbp)
	jmp	.LBB7_27
.LBB7_26:
.Ltmp53:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -2096(%rbp)
	movl	%edx, -2100(%rbp)
	leaq	-72(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB7_27:
	leaq	-2008(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB7_68
.LBB7_28:
.Ltmp96:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -2096(%rbp)
	movl	%edx, -2100(%rbp)
	leaq	-2016(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB7_68
.LBB7_29:
.Ltmp101:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -2096(%rbp)
	movl	%edx, -2100(%rbp)
	leaq	-104(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.LBB7_68
.LBB7_30:                               #   in Loop: Header=BB7_19 Depth=1
	leaq	-104(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
# %bb.31:                               #   in Loop: Header=BB7_19 Depth=1
	movl	-2104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -2104(%rbp)
	jmp	.LBB7_19
.LBB7_32:
	movl	$1, -2108(%rbp)
.LBB7_33:                               # =>This Inner Loop Header: Depth=1
	movl	-2108(%rbp), %eax
	cmpl	-2072(%rbp), %eax
	jge	.LBB7_43
# %bb.34:                               #   in Loop: Header=BB7_33 Depth=1
	movq	-2080(%rbp), %rax
	movslq	-2108(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	leaq	-2024(%rbp), %rax
	movq	%rax, %rdi
	movq	%rsi, -2184(%rbp)               # 8-byte Spill
	movq	%rax, -2192(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp86:
	leaq	-136(%rbp), %rdi
	movq	-2184(%rbp), %rsi               # 8-byte Reload
	movq	-2192(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp87:
	jmp	.LBB7_35
.LBB7_35:                               #   in Loop: Header=BB7_33 Depth=1
	leaq	-2024(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
.Ltmp89:
	leaq	.L.str.25(%rip), %rsi
	leaq	-136(%rbp), %rdi
	callq	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
.Ltmp90:
	movb	%al, -2193(%rbp)                # 1-byte Spill
	jmp	.LBB7_36
.LBB7_36:                               #   in Loop: Header=BB7_33 Depth=1
	movb	-2193(%rbp), %al                # 1-byte Reload
	testb	$1, %al
	jne	.LBB7_37
	jmp	.LBB7_41
.LBB7_37:
.Ltmp91:
	callq	_Z14run_benchmarksv@PLT
.Ltmp92:
	jmp	.LBB7_38
.LBB7_38:
	xorl	%edi, %edi
	callq	exit@PLT
.LBB7_39:
.Ltmp88:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -2096(%rbp)
	movl	%edx, -2100(%rbp)
	leaq	-2024(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB7_68
.LBB7_40:
.Ltmp93:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -2096(%rbp)
	movl	%edx, -2100(%rbp)
	leaq	-136(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.LBB7_68
.LBB7_41:                               #   in Loop: Header=BB7_33 Depth=1
	leaq	-136(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
# %bb.42:                               #   in Loop: Header=BB7_33 Depth=1
	movl	-2108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -2108(%rbp)
	jmp	.LBB7_33
.LBB7_43:
	leaq	-1408(%rbp), %rdi
	callq	_ZN5BoardC1Ev@PLT
	leaq	-2032(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -2208(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp54:
	leaq	.L.str.26(%rip), %rsi
	leaq	-1440(%rbp), %rdi
	movq	-2208(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp55:
	jmp	.LBB7_44
.LBB7_44:
.Ltmp57:
	leaq	-1408(%rbp), %rdi
	leaq	-1440(%rbp), %rsi
	callq	_ZN5Board12LoadPositionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.Ltmp58:
	jmp	.LBB7_45
.LBB7_45:
	leaq	-1440(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-2032(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
.Ltmp60:
	leaq	-1408(%rbp), %rdi
	callq	_ZN5Board4DumpEv@PLT
.Ltmp61:
	jmp	.LBB7_46
.LBB7_46:
.Ltmp62:
	leaq	-1960(%rbp), %rdi
	leaq	-1408(%rbp), %rsi
	callq	_ZN5Board11legal_movesEv@PLT
.Ltmp63:
	jmp	.LBB7_47
.LBB7_47:
	movl	$0, -2112(%rbp)
# %bb.48:
	movl	-2112(%rbp), %eax
.Ltmp64:
	leaq	-1960(%rbp), %rdi
	movl	%eax, -2212(%rbp)               # 4-byte Spill
	callq	_ZNK8MoveListILi256EE4sizeEv
.Ltmp65:
	movl	%eax, -2216(%rbp)               # 4-byte Spill
	jmp	.LBB7_49
.LBB7_49:
	movl	-2212(%rbp), %eax               # 4-byte Reload
	movl	-2216(%rbp), %ecx               # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB7_64
# %bb.50:
	movl	-2112(%rbp), %esi
.Ltmp66:
	leaq	-1960(%rbp), %rdi
	callq	_ZNK8MoveListILi256EEixEi
.Ltmp67:
	movw	%ax, -2218(%rbp)                # 2-byte Spill
	jmp	.LBB7_51
.LBB7_51:
	movw	-2218(%rbp), %ax                # 2-byte Reload
	movw	%ax, -2040(%rbp)
	movw	-2040(%rbp), %cx
	movw	%cx, -2048(%rbp)
	movzwl	-2048(%rbp), %esi
.Ltmp68:
	leaq	-1992(%rbp), %rdi
	callq	_Z18moveToUCIAlgebraicB5cxx115CMove@PLT
.Ltmp69:
	jmp	.LBB7_52
.LBB7_52:
.Ltmp70:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	-1992(%rbp), %rsi
	callq	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
.Ltmp71:
	movq	%rax, -2232(%rbp)               # 8-byte Spill
	jmp	.LBB7_53
.LBB7_53:
.Ltmp72:
	leaq	.L.str.27(%rip), %rsi
	movq	-2232(%rbp), %rdi               # 8-byte Reload
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.Ltmp73:
	jmp	.LBB7_54
.LBB7_54:
	leaq	-1992(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movw	-2040(%rbp), %ax
	movw	%ax, -2056(%rbp)
	movzwl	-2056(%rbp), %esi
.Ltmp75:
	leaq	-1408(%rbp), %rdi
	callq	_ZN5Board16is_checking_moveE5CMove@PLT
.Ltmp76:
	movb	%al, -2233(%rbp)                # 1-byte Spill
	jmp	.LBB7_55
.LBB7_55:
.Ltmp77:
	movb	-2233(%rbp), %al                # 1-byte Reload
	movzbl	%al, %ecx
	andl	$1, %ecx
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	movl	%ecx, %esi
	callq	_ZNSolsEb@PLT
.Ltmp78:
	jmp	.LBB7_56
.LBB7_56:
	movw	-2040(%rbp), %ax
	movw	%ax, -2064(%rbp)
	movzwl	-2064(%rbp), %esi
.Ltmp79:
	leaq	-1408(%rbp), %rdi
	callq	_ZN5Board8MakeMoveE5CMove@PLT
.Ltmp80:
	jmp	.LBB7_57
.LBB7_57:
.Ltmp81:
	leaq	-1408(%rbp), %rdi
	callq	_ZN5Board4DumpEv@PLT
.Ltmp82:
	jmp	.LBB7_58
.LBB7_58:
	jmp	.LBB7_64
.LBB7_59:
.Ltmp56:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -2096(%rbp)
	movl	%edx, -2100(%rbp)
	jmp	.LBB7_61
.LBB7_60:
.Ltmp59:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -2096(%rbp)
	movl	%edx, -2100(%rbp)
	leaq	-1440(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB7_61:
	leaq	-2032(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB7_67
.LBB7_62:
.Ltmp85:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -2096(%rbp)
	movl	%edx, -2100(%rbp)
	jmp	.LBB7_67
.LBB7_63:
.Ltmp74:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -2096(%rbp)
	movl	%edx, -2100(%rbp)
	leaq	-1992(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.LBB7_67
.LBB7_64:
.Ltmp83:
	callq	_ZN3uci6listenEv@PLT
.Ltmp84:
	jmp	.LBB7_65
.LBB7_65:
	movl	$0, -2068(%rbp)
	leaq	-1408(%rbp), %rdi
	callq	_ZN5BoardD2Ev
	movl	-2068(%rbp), %eax
	movq	%fs:40, %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movl	%eax, -2240(%rbp)               # 4-byte Spill
	jne	.LBB7_69
# %bb.66:
	movl	-2240(%rbp), %eax               # 4-byte Reload
	addq	$2240, %rsp                     # imm = 0x8C0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB7_67:
	.cfi_def_cfa %rbp, 16
	leaq	-1408(%rbp), %rdi
	callq	_ZN5BoardD2Ev
.LBB7_68:
	movq	-2096(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.LBB7_69:
	callq	__stack_chk_fail@PLT
.Lfunc_end7:
	.size	main, .Lfunc_end7-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table7:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp102-.Lfunc_begin2         # >> Call Site 1 <<
	.uleb128 .Ltmp103-.Ltmp102              #   Call between .Ltmp102 and .Ltmp103
	.uleb128 .Ltmp104-.Lfunc_begin2         #     jumps to .Ltmp104
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp105-.Lfunc_begin2         # >> Call Site 2 <<
	.uleb128 .Ltmp112-.Ltmp105              #   Call between .Ltmp105 and .Ltmp112
	.uleb128 .Ltmp113-.Lfunc_begin2         #     jumps to .Ltmp113
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp48-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp49-.Ltmp48                #   Call between .Ltmp48 and .Ltmp49
	.uleb128 .Ltmp50-.Lfunc_begin2          #     jumps to .Ltmp50
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp51-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp52-.Ltmp51                #   Call between .Ltmp51 and .Ltmp52
	.uleb128 .Ltmp53-.Lfunc_begin2          #     jumps to .Ltmp53
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp94-.Ltmp52                #   Call between .Ltmp52 and .Ltmp94
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp94-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Ltmp95-.Ltmp94                #   Call between .Ltmp94 and .Ltmp95
	.uleb128 .Ltmp96-.Lfunc_begin2          #     jumps to .Ltmp96
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp97-.Lfunc_begin2          # >> Call Site 7 <<
	.uleb128 .Ltmp100-.Ltmp97               #   Call between .Ltmp97 and .Ltmp100
	.uleb128 .Ltmp101-.Lfunc_begin2         #     jumps to .Ltmp101
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp86-.Lfunc_begin2          # >> Call Site 8 <<
	.uleb128 .Ltmp87-.Ltmp86                #   Call between .Ltmp86 and .Ltmp87
	.uleb128 .Ltmp88-.Lfunc_begin2          #     jumps to .Ltmp88
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp89-.Lfunc_begin2          # >> Call Site 9 <<
	.uleb128 .Ltmp92-.Ltmp89                #   Call between .Ltmp89 and .Ltmp92
	.uleb128 .Ltmp93-.Lfunc_begin2          #     jumps to .Ltmp93
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp92-.Lfunc_begin2          # >> Call Site 10 <<
	.uleb128 .Ltmp54-.Ltmp92                #   Call between .Ltmp92 and .Ltmp54
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp54-.Lfunc_begin2          # >> Call Site 11 <<
	.uleb128 .Ltmp55-.Ltmp54                #   Call between .Ltmp54 and .Ltmp55
	.uleb128 .Ltmp56-.Lfunc_begin2          #     jumps to .Ltmp56
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp57-.Lfunc_begin2          # >> Call Site 12 <<
	.uleb128 .Ltmp58-.Ltmp57                #   Call between .Ltmp57 and .Ltmp58
	.uleb128 .Ltmp59-.Lfunc_begin2          #     jumps to .Ltmp59
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp60-.Lfunc_begin2          # >> Call Site 13 <<
	.uleb128 .Ltmp69-.Ltmp60                #   Call between .Ltmp60 and .Ltmp69
	.uleb128 .Ltmp85-.Lfunc_begin2          #     jumps to .Ltmp85
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp70-.Lfunc_begin2          # >> Call Site 14 <<
	.uleb128 .Ltmp73-.Ltmp70                #   Call between .Ltmp70 and .Ltmp73
	.uleb128 .Ltmp74-.Lfunc_begin2          #     jumps to .Ltmp74
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp75-.Lfunc_begin2          # >> Call Site 15 <<
	.uleb128 .Ltmp84-.Ltmp75                #   Call between .Ltmp75 and .Ltmp84
	.uleb128 .Ltmp85-.Lfunc_begin2          #     jumps to .Ltmp85
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp84-.Lfunc_begin2          # >> Call Site 16 <<
	.uleb128 .Lfunc_end7-.Ltmp84            #   Call between .Ltmp84 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2
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
.Lfunc_end8:
	.size	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_, .Lfunc_end8-_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
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
.Lfunc_end9:
	.size	_ZNK8MoveListILi256EE4sizeEv, .Lfunc_end9-_ZNK8MoveListILi256EE4sizeEv
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
	jne	.LBB10_2
# %bb.1:
	movw	-30(%rbp), %ax                  # 2-byte Reload
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB10_2:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end10:
	.size	_ZNK8MoveListILi256EEixEi, .Lfunc_end10-_ZNK8MoveListILi256EEixEi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN5BoardD2Ev,"axG",@progbits,_ZN5BoardD2Ev,comdat
	.weak	_ZN5BoardD2Ev                   # -- Begin function _ZN5BoardD2Ev
	.p2align	4, 0x90
	.type	_ZN5BoardD2Ev,@function
_ZN5BoardD2Ev:                          # @_ZN5BoardD2Ev
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
	addq	$1184, %rax                     # imm = 0x4A0
	movq	%rax, %rdi
	callq	_ZN5board10StateStackD2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end11:
	.size	_ZN5BoardD2Ev, .Lfunc_end11-_ZN5BoardD2Ev
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
.Lfunc_end12:
	.size	_ZN5board10StateStackD2Ev, .Lfunc_end12-_ZN5board10StateStackD2Ev
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
.Ltmp114:
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	-48(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZSt8_DestroyIPN5board5StateES1_EvT_S3_RSaIT0_E
.Ltmp115:
	jmp	.LBB13_1
.LBB13_1:
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB13_2:
	.cfi_def_cfa %rbp, 16
.Ltmp116:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev
# %bb.3:
	movq	-16(%rbp), %rdi
	callq	__clang_call_terminate
.Lfunc_end13:
	.size	_ZNSt6vectorIN5board5StateESaIS1_EED2Ev, .Lfunc_end13-_ZNSt6vectorIN5board5StateESaIS1_EED2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table13:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	156                             # @TType Encoding = indirect pcrel sdata8
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp114-.Lfunc_begin3         # >> Call Site 1 <<
	.uleb128 .Ltmp115-.Ltmp114              #   Call between .Ltmp114 and .Ltmp115
	.uleb128 .Ltmp116-.Lfunc_begin3         #     jumps to .Ltmp116
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
.Lfunc_end14:
	.size	_ZSt8_DestroyIPN5board5StateES1_EvT_S3_RSaIT0_E, .Lfunc_end14-_ZSt8_DestroyIPN5board5StateES1_EvT_S3_RSaIT0_E
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
.Lfunc_end15:
	.size	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv, .Lfunc_end15-_ZNSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv
	.cfi_endproc
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
.Ltmp117:
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE13_M_deallocateEPS1_m
.Ltmp118:
	jmp	.LBB16_1
.LBB16_1:
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implD2Ev
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB16_2:
	.cfi_def_cfa %rbp, 16
.Ltmp119:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implD2Ev
# %bb.3:
	movq	-16(%rbp), %rdi
	callq	__clang_call_terminate
.Lfunc_end16:
	.size	_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev, .Lfunc_end16-_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table16:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	156                             # @TType Encoding = indirect pcrel sdata8
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp117-.Lfunc_begin4         # >> Call Site 1 <<
	.uleb128 .Ltmp118-.Ltmp117              #   Call between .Ltmp117 and .Ltmp118
	.uleb128 .Ltmp119-.Lfunc_begin4         #     jumps to .Ltmp119
	.byte	1                               #   On action: 1
.Lcst_end4:
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
.Lfunc_end17:
	.size	__clang_call_terminate, .Lfunc_end17-__clang_call_terminate
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
.Lfunc_end18:
	.size	_ZSt8_DestroyIPN5board5StateEEvT_S3_, .Lfunc_end18-_ZSt8_DestroyIPN5board5StateEEvT_S3_
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
.Lfunc_end19:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPN5board5StateEEEvT_S5_, .Lfunc_end19-_ZNSt12_Destroy_auxILb1EE9__destroyIPN5board5StateEEEvT_S5_
	.cfi_endproc
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
	je	.LBB20_2
# %bb.1:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	_ZNSt16allocator_traitsISaIN5board5StateEEE10deallocateERS2_PS1_m
.LBB20_2:
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end20:
	.size	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE13_M_deallocateEPS1_m, .Lfunc_end20-_ZNSt12_Vector_baseIN5board5StateESaIS1_EE13_M_deallocateEPS1_m
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
.Lfunc_end21:
	.size	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implD2Ev, .Lfunc_end21-_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implD2Ev
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
.Lfunc_end22:
	.size	_ZNSt16allocator_traitsISaIN5board5StateEEE10deallocateERS2_PS1_m, .Lfunc_end22-_ZNSt16allocator_traitsISaIN5board5StateEEE10deallocateERS2_PS1_m
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
.Lfunc_end23:
	.size	_ZN9__gnu_cxx13new_allocatorIN5board5StateEE10deallocateEPS2_m, .Lfunc_end23-_ZN9__gnu_cxx13new_allocatorIN5board5StateEE10deallocateEPS2_m
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
.Lfunc_end24:
	.size	_ZNSaIN5board5StateEED2Ev, .Lfunc_end24-_ZNSaIN5board5StateEED2Ev
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
.Lfunc_end25:
	.size	_ZN9__gnu_cxx13new_allocatorIN5board5StateEED2Ev, .Lfunc_end25-_ZN9__gnu_cxx13new_allocatorIN5board5StateEED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_main.cpp
	.type	_GLOBAL__sub_I_main.cpp,@function
_GLOBAL__sub_I_main.cpp:                # @_GLOBAL__sub_I_main.cpp
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
.Lfunc_end26:
	.size	_GLOBAL__sub_I_main.cpp, .Lfunc_end26-_GLOBAL__sub_I_main.cpp
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

	.type	verbose,@object                 # @verbose
	.bss
	.globl	verbose
verbose:
	.byte	0                               # 0x0
	.size	verbose, 1

	.type	.L.str.19,@object               # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"info string "
	.size	.L.str.19, 13

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"--verbose"
	.size	.L.str.20, 10

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"--version"
	.size	.L.str.21, 10

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"0.00"
	.size	.L.str.22, 5

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"initializing engine"
	.size	.L.str.23, 20

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"--test"
	.size	.L.str.24, 7

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"--benchmark"
	.size	.L.str.25, 12

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"r3k2r/Pppp1ppp/1b3nbN/nP6/BBP1P3/q4N2/Pp1P2PP/R2Q1RK1 w kq - 0 1"
	.size	.L.str.26, 65

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"\n"
	.size	.L.str.27, 2

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_main.cpp
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
	.addrsig_sym _Z12verbose_infoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.addrsig_sym _ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	.addrsig_sym _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	.addrsig_sym _ZNSolsEPFRSoS_E
	.addrsig_sym _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.addrsig_sym _Z4initv
	.addrsig_sym _Z8seedRandi
	.addrsig_sym _Z9init_bitsv
	.addrsig_sym _ZN9move_maps4initEv
	.addrsig_sym _ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	.addrsig_sym exit
	.addrsig_sym _Z9run_testsv
	.addrsig_sym _Z14run_benchmarksv
	.addrsig_sym _ZN5Board12LoadPositionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.addrsig_sym _ZN5Board4DumpEv
	.addrsig_sym _ZN5Board11legal_movesEv
	.addrsig_sym _ZNK8MoveListILi256EE4sizeEv
	.addrsig_sym _ZNK8MoveListILi256EEixEi
	.addrsig_sym _Z18moveToUCIAlgebraicB5cxx115CMove
	.addrsig_sym _ZNSolsEb
	.addrsig_sym _ZN5Board16is_checking_moveE5CMove
	.addrsig_sym _ZN5Board8MakeMoveE5CMove
	.addrsig_sym _ZN3uci6listenEv
	.addrsig_sym _ZSt8_DestroyIPN5board5StateES1_EvT_S3_RSaIT0_E
	.addrsig_sym _ZNSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv
	.addrsig_sym __clang_call_terminate
	.addrsig_sym __cxa_begin_catch
	.addrsig_sym _ZSt9terminatev
	.addrsig_sym _ZSt8_DestroyIPN5board5StateEEvT_S3_
	.addrsig_sym _ZNSt12_Destroy_auxILb1EE9__destroyIPN5board5StateEEEvT_S5_
	.addrsig_sym _ZNSt12_Vector_baseIN5board5StateESaIS1_EE13_M_deallocateEPS1_m
	.addrsig_sym _ZNSt16allocator_traitsISaIN5board5StateEEE10deallocateERS2_PS1_m
	.addrsig_sym _ZN9__gnu_cxx13new_allocatorIN5board5StateEE10deallocateEPS2_m
	.addrsig_sym _ZdlPv
	.addrsig_sym _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc
	.addrsig_sym _GLOBAL__sub_I_main.cpp
	.addrsig_sym _Unwind_Resume
	.addrsig_sym __stack_chk_fail
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym _ZL10RANK_NAMESB5cxx11
	.addrsig_sym _ZL10FILE_NAMESB5cxx11
	.addrsig_sym verbose
	.addrsig_sym _ZSt4cout
