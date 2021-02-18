	.text
	.file	"strings.cpp"
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
	.globl	_Z16pieceToStringFenB5cxx11i    # -- Begin function _Z16pieceToStringFenB5cxx11i
	.p2align	4, 0x90
	.type	_Z16pieceToStringFenB5cxx11i,@function
_Z16pieceToStringFenB5cxx11i:           # @_Z16pieceToStringFenB5cxx11i
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
	subq	$288, %rsp                      # imm = 0x120
	movq	%rdi, %rax
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	movq	%rdi, %rcx
	movq	%rcx, -120(%rbp)
	movl	%esi, -124(%rbp)
	cmpl	$-1, -124(%rbp)
	movq	%rdi, -152(%rbp)                # 8-byte Spill
	movq	%rax, -160(%rbp)                # 8-byte Spill
	jne	.LBB5_4
# %bb.1:
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -168(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp84:
	leaq	.L.str.19(%rip), %rsi
	movq	-152(%rbp), %rdi                # 8-byte Reload
	movq	-168(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp85:
	jmp	.LBB5_2
.LBB5_2:
	leaq	-16(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB5_47
.LBB5_3:
.Ltmp86:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -136(%rbp)
	movl	%edx, -140(%rbp)
	leaq	-16(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB5_49
.LBB5_4:
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, -124(%rbp)
	movb	%al, -169(%rbp)                 # 1-byte Spill
	jl	.LBB5_6
# %bb.5:
	cmpl	$12, -124(%rbp)
	setl	%al
	movb	%al, -169(%rbp)                 # 1-byte Spill
.LBB5_6:
	movb	-169(%rbp), %al                 # 1-byte Reload
	testb	$1, %al
	jne	.LBB5_7
	jmp	.LBB5_8
.LBB5_7:
	jmp	.LBB5_9
.LBB5_8:
	leaq	.L.str.20(%rip), %rdi
	leaq	.L.str.21(%rip), %rsi
	movl	$8, %edx
	leaq	.L__PRETTY_FUNCTION__._Z16pieceToStringFenB5cxx11i(%rip), %rcx
	callq	__assert_fail@PLT
.LBB5_9:
	movl	-124(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$11, %rdx
	movq	%rcx, -184(%rbp)                # 8-byte Spill
	ja	.LBB5_44
# %bb.51:
	leaq	.LJTI5_0(%rip), %rax
	movq	-184(%rbp), %rcx                # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB5_10:
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -192(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp78:
	leaq	.L.str.22(%rip), %rsi
	movq	-152(%rbp), %rdi                # 8-byte Reload
	movq	-192(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp79:
	jmp	.LBB5_11
.LBB5_11:
	leaq	-24(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB5_47
.LBB5_12:
.Ltmp80:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -136(%rbp)
	movl	%edx, -140(%rbp)
	leaq	-24(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB5_49
.LBB5_13:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -200(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp75:
	leaq	.L.str.23(%rip), %rsi
	movq	-152(%rbp), %rdi                # 8-byte Reload
	movq	-200(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp76:
	jmp	.LBB5_14
.LBB5_14:
	leaq	-32(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB5_47
.LBB5_15:
.Ltmp77:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -136(%rbp)
	movl	%edx, -140(%rbp)
	leaq	-32(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB5_49
.LBB5_16:
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -208(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp72:
	leaq	.L.str.24(%rip), %rsi
	movq	-152(%rbp), %rdi                # 8-byte Reload
	movq	-208(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp73:
	jmp	.LBB5_17
.LBB5_17:
	leaq	-40(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB5_47
.LBB5_18:
.Ltmp74:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -136(%rbp)
	movl	%edx, -140(%rbp)
	leaq	-40(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB5_49
.LBB5_19:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -216(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp69:
	leaq	.L.str.25(%rip), %rsi
	movq	-152(%rbp), %rdi                # 8-byte Reload
	movq	-216(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp70:
	jmp	.LBB5_20
.LBB5_20:
	leaq	-48(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB5_47
.LBB5_21:
.Ltmp71:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -136(%rbp)
	movl	%edx, -140(%rbp)
	leaq	-48(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB5_49
.LBB5_22:
	leaq	-56(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -224(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp66:
	leaq	.L.str.26(%rip), %rsi
	movq	-152(%rbp), %rdi                # 8-byte Reload
	movq	-224(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp67:
	jmp	.LBB5_23
.LBB5_23:
	leaq	-56(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB5_47
.LBB5_24:
.Ltmp68:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -136(%rbp)
	movl	%edx, -140(%rbp)
	leaq	-56(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB5_49
.LBB5_25:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -232(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp63:
	leaq	.L.str.27(%rip), %rsi
	movq	-152(%rbp), %rdi                # 8-byte Reload
	movq	-232(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp64:
	jmp	.LBB5_26
.LBB5_26:
	leaq	-64(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB5_47
.LBB5_27:
.Ltmp65:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -136(%rbp)
	movl	%edx, -140(%rbp)
	leaq	-64(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB5_49
.LBB5_28:
	leaq	-72(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -240(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp60:
	leaq	.L.str.28(%rip), %rsi
	movq	-152(%rbp), %rdi                # 8-byte Reload
	movq	-240(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp61:
	jmp	.LBB5_29
.LBB5_29:
	leaq	-72(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB5_47
.LBB5_30:
.Ltmp62:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -136(%rbp)
	movl	%edx, -140(%rbp)
	leaq	-72(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB5_49
.LBB5_31:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -248(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp57:
	leaq	.L.str.29(%rip), %rsi
	movq	-152(%rbp), %rdi                # 8-byte Reload
	movq	-248(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp58:
	jmp	.LBB5_32
.LBB5_32:
	leaq	-80(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB5_47
.LBB5_33:
.Ltmp59:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -136(%rbp)
	movl	%edx, -140(%rbp)
	leaq	-80(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB5_49
.LBB5_34:
	leaq	-88(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -256(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp54:
	leaq	.L.str.30(%rip), %rsi
	movq	-152(%rbp), %rdi                # 8-byte Reload
	movq	-256(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp55:
	jmp	.LBB5_35
.LBB5_35:
	leaq	-88(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB5_47
.LBB5_36:
.Ltmp56:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -136(%rbp)
	movl	%edx, -140(%rbp)
	leaq	-88(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB5_49
.LBB5_37:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -264(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp51:
	leaq	.L.str.11(%rip), %rsi
	movq	-152(%rbp), %rdi                # 8-byte Reload
	movq	-264(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp52:
	jmp	.LBB5_38
.LBB5_38:
	leaq	-96(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB5_47
.LBB5_39:
.Ltmp53:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -136(%rbp)
	movl	%edx, -140(%rbp)
	leaq	-96(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB5_49
.LBB5_40:
	leaq	-104(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -272(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp48:
	leaq	.L.str.31(%rip), %rsi
	movq	-152(%rbp), %rdi                # 8-byte Reload
	movq	-272(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp49:
	jmp	.LBB5_41
.LBB5_41:
	leaq	-104(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB5_47
.LBB5_42:
.Ltmp50:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -136(%rbp)
	movl	%edx, -140(%rbp)
	leaq	-104(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB5_49
.LBB5_43:
	jmp	.LBB5_44
.LBB5_44:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -280(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp81:
	leaq	.L.str.32(%rip), %rsi
	movq	-152(%rbp), %rdi                # 8-byte Reload
	movq	-280(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp82:
	jmp	.LBB5_45
.LBB5_45:
	leaq	-112(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB5_47
.LBB5_46:
.Ltmp83:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -136(%rbp)
	movl	%edx, -140(%rbp)
	leaq	-112(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB5_49
.LBB5_47:
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB5_50
# %bb.48:
	movq	-160(%rbp), %rax                # 8-byte Reload
	addq	$288, %rsp                      # imm = 0x120
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB5_49:
	.cfi_def_cfa %rbp, 16
	movq	-136(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.LBB5_50:
	callq	__stack_chk_fail@PLT
.Lfunc_end5:
	.size	_Z16pieceToStringFenB5cxx11i, .Lfunc_end5-_Z16pieceToStringFenB5cxx11i
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI5_0:
	.long	.LBB5_40-.LJTI5_0
	.long	.LBB5_43-.LJTI5_0
	.long	.LBB5_28-.LJTI5_0
	.long	.LBB5_31-.LJTI5_0
	.long	.LBB5_34-.LJTI5_0
	.long	.LBB5_37-.LJTI5_0
	.long	.LBB5_22-.LJTI5_0
	.long	.LBB5_25-.LJTI5_0
	.long	.LBB5_16-.LJTI5_0
	.long	.LBB5_19-.LJTI5_0
	.long	.LBB5_10-.LJTI5_0
	.long	.LBB5_13-.LJTI5_0
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table5:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp84-.Lfunc_begin2          # >> Call Site 1 <<
	.uleb128 .Ltmp85-.Ltmp84                #   Call between .Ltmp84 and .Ltmp85
	.uleb128 .Ltmp86-.Lfunc_begin2          #     jumps to .Ltmp86
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp78-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp79-.Ltmp78                #   Call between .Ltmp78 and .Ltmp79
	.uleb128 .Ltmp80-.Lfunc_begin2          #     jumps to .Ltmp80
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp75-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp76-.Ltmp75                #   Call between .Ltmp75 and .Ltmp76
	.uleb128 .Ltmp77-.Lfunc_begin2          #     jumps to .Ltmp77
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp72-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp73-.Ltmp72                #   Call between .Ltmp72 and .Ltmp73
	.uleb128 .Ltmp74-.Lfunc_begin2          #     jumps to .Ltmp74
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp69-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp70-.Ltmp69                #   Call between .Ltmp69 and .Ltmp70
	.uleb128 .Ltmp71-.Lfunc_begin2          #     jumps to .Ltmp71
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp66-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Ltmp67-.Ltmp66                #   Call between .Ltmp66 and .Ltmp67
	.uleb128 .Ltmp68-.Lfunc_begin2          #     jumps to .Ltmp68
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp63-.Lfunc_begin2          # >> Call Site 7 <<
	.uleb128 .Ltmp64-.Ltmp63                #   Call between .Ltmp63 and .Ltmp64
	.uleb128 .Ltmp65-.Lfunc_begin2          #     jumps to .Ltmp65
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp60-.Lfunc_begin2          # >> Call Site 8 <<
	.uleb128 .Ltmp61-.Ltmp60                #   Call between .Ltmp60 and .Ltmp61
	.uleb128 .Ltmp62-.Lfunc_begin2          #     jumps to .Ltmp62
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp57-.Lfunc_begin2          # >> Call Site 9 <<
	.uleb128 .Ltmp58-.Ltmp57                #   Call between .Ltmp57 and .Ltmp58
	.uleb128 .Ltmp59-.Lfunc_begin2          #     jumps to .Ltmp59
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp54-.Lfunc_begin2          # >> Call Site 10 <<
	.uleb128 .Ltmp55-.Ltmp54                #   Call between .Ltmp54 and .Ltmp55
	.uleb128 .Ltmp56-.Lfunc_begin2          #     jumps to .Ltmp56
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp51-.Lfunc_begin2          # >> Call Site 11 <<
	.uleb128 .Ltmp52-.Ltmp51                #   Call between .Ltmp51 and .Ltmp52
	.uleb128 .Ltmp53-.Lfunc_begin2          #     jumps to .Ltmp53
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp48-.Lfunc_begin2          # >> Call Site 12 <<
	.uleb128 .Ltmp49-.Ltmp48                #   Call between .Ltmp48 and .Ltmp49
	.uleb128 .Ltmp50-.Lfunc_begin2          #     jumps to .Ltmp50
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp81-.Lfunc_begin2          # >> Call Site 13 <<
	.uleb128 .Ltmp82-.Ltmp81                #   Call between .Ltmp81 and .Ltmp82
	.uleb128 .Ltmp83-.Lfunc_begin2          #     jumps to .Ltmp83
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp82-.Lfunc_begin2          # >> Call Site 14 <<
	.uleb128 .Lfunc_end5-.Ltmp82            #   Call between .Ltmp82 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2
                                        # -- End function
	.text
	.globl	_Z18pieceFromStringFenNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE # -- Begin function _Z18pieceFromStringFenNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.p2align	4, 0x90
	.type	_Z18pieceFromStringFenNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@function
_Z18pieceFromStringFenNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: # @_Z18pieceFromStringFenNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)                 # 8-byte Spill
	leaq	.L.str.22(%rip), %rsi
	callq	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	testb	$1, %al
	jne	.LBB6_1
	jmp	.LBB6_2
.LBB6_1:
	movl	$10, -4(%rbp)
	jmp	.LBB6_25
.LBB6_2:
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	leaq	.L.str.24(%rip), %rsi
	callq	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	testb	$1, %al
	jne	.LBB6_3
	jmp	.LBB6_4
.LBB6_3:
	movl	$8, -4(%rbp)
	jmp	.LBB6_25
.LBB6_4:
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	leaq	.L.str.30(%rip), %rsi
	callq	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	testb	$1, %al
	jne	.LBB6_5
	jmp	.LBB6_6
.LBB6_5:
	movl	$4, -4(%rbp)
	jmp	.LBB6_25
.LBB6_6:
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	leaq	.L.str.26(%rip), %rsi
	callq	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	testb	$1, %al
	jne	.LBB6_7
	jmp	.LBB6_8
.LBB6_7:
	movl	$6, -4(%rbp)
	jmp	.LBB6_25
.LBB6_8:
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	leaq	.L.str.28(%rip), %rsi
	callq	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	testb	$1, %al
	jne	.LBB6_9
	jmp	.LBB6_10
.LBB6_9:
	movl	$2, -4(%rbp)
	jmp	.LBB6_25
.LBB6_10:
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	leaq	.L.str.31(%rip), %rsi
	callq	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	testb	$1, %al
	jne	.LBB6_11
	jmp	.LBB6_12
.LBB6_11:
	movl	$0, -4(%rbp)
	jmp	.LBB6_25
.LBB6_12:
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	leaq	.L.str.23(%rip), %rsi
	callq	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	testb	$1, %al
	jne	.LBB6_13
	jmp	.LBB6_14
.LBB6_13:
	movl	$11, -4(%rbp)
	jmp	.LBB6_25
.LBB6_14:
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	leaq	.L.str.25(%rip), %rsi
	callq	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	testb	$1, %al
	jne	.LBB6_15
	jmp	.LBB6_16
.LBB6_15:
	movl	$9, -4(%rbp)
	jmp	.LBB6_25
.LBB6_16:
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	leaq	.L.str.11(%rip), %rsi
	callq	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	testb	$1, %al
	jne	.LBB6_17
	jmp	.LBB6_18
.LBB6_17:
	movl	$5, -4(%rbp)
	jmp	.LBB6_25
.LBB6_18:
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	leaq	.L.str.27(%rip), %rsi
	callq	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	testb	$1, %al
	jne	.LBB6_19
	jmp	.LBB6_20
.LBB6_19:
	movl	$7, -4(%rbp)
	jmp	.LBB6_25
.LBB6_20:
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	leaq	.L.str.29(%rip), %rsi
	callq	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	testb	$1, %al
	jne	.LBB6_21
	jmp	.LBB6_22
.LBB6_21:
	movl	$3, -4(%rbp)
	jmp	.LBB6_25
.LBB6_22:
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	leaq	.L.str.32(%rip), %rsi
	callq	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	testb	$1, %al
	jne	.LBB6_23
	jmp	.LBB6_24
.LBB6_23:
	movl	$1, -4(%rbp)
	jmp	.LBB6_25
.LBB6_24:
	movl	$-1, -4(%rbp)
.LBB6_25:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	_Z18pieceFromStringFenNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .Lfunc_end6-_Z18pieceFromStringFenNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
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
	.text
	.globl	_Z18moveToUCIAlgebraicB5cxx115CMove # -- Begin function _Z18moveToUCIAlgebraicB5cxx115CMove
	.p2align	4, 0x90
	.type	_Z18moveToUCIAlgebraicB5cxx115CMove,@function
_Z18moveToUCIAlgebraicB5cxx115CMove:    # @_Z18moveToUCIAlgebraicB5cxx115CMove
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
	subq	$192, %rsp
                                        # kill: def $si killed $si killed $esi
	movq	%rdi, %rax
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	movq	%rdi, -120(%rbp)
	movw	%si, -112(%rbp)
	movb	$0, -121(%rbp)
	movq	%rdi, -152(%rbp)                # 8-byte Spill
	movq	%rax, -160(%rbp)                # 8-byte Spill
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
.Ltmp87:
	leaq	-112(%rbp), %rdi
	callq	_ZNK5CMove7is_nullEv
.Ltmp88:
	movb	%al, -161(%rbp)                 # 1-byte Spill
	jmp	.LBB8_1
.LBB8_1:
	movb	-161(%rbp), %al                 # 1-byte Reload
	testb	$1, %al
	jne	.LBB8_2
	jmp	.LBB8_5
.LBB8_2:
.Ltmp112:
	leaq	.L.str.33(%rip), %rsi
	movq	-152(%rbp), %rdi                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc@PLT
.Ltmp113:
	jmp	.LBB8_3
.LBB8_3:
	movb	$1, -121(%rbp)
	movl	$1, -144(%rbp)
	jmp	.LBB8_21
.LBB8_4:
.Ltmp114:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -136(%rbp)
	movl	%edx, -140(%rbp)
	jmp	.LBB8_25
.LBB8_5:
.Ltmp89:
	leaq	-112(%rbp), %rdi
	callq	_ZNK5CMove3srcEv
.Ltmp90:
	movq	%rax, -176(%rbp)                # 8-byte Spill
	jmp	.LBB8_6
.LBB8_6:
.Ltmp91:
	leaq	-40(%rbp), %rdi
	movq	-176(%rbp), %rsi                # 8-byte Reload
	callq	_Z10squareNameB5cxx11m
.Ltmp92:
	jmp	.LBB8_7
.LBB8_7:
.Ltmp93:
	leaq	-40(%rbp), %rsi
	movq	-152(%rbp), %rdi                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_@PLT
.Ltmp94:
	jmp	.LBB8_8
.LBB8_8:
	leaq	-40(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.Ltmp96:
	leaq	-112(%rbp), %rdi
	callq	_ZNK5CMove4destEv
.Ltmp97:
	movq	%rax, -184(%rbp)                # 8-byte Spill
	jmp	.LBB8_9
.LBB8_9:
.Ltmp98:
	leaq	-72(%rbp), %rdi
	movq	-184(%rbp), %rsi                # 8-byte Reload
	callq	_Z10squareNameB5cxx11m
.Ltmp99:
	jmp	.LBB8_10
.LBB8_10:
.Ltmp100:
	leaq	-72(%rbp), %rsi
	movq	-152(%rbp), %rdi                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_@PLT
.Ltmp101:
	jmp	.LBB8_11
.LBB8_11:
	leaq	-72(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.Ltmp103:
	leaq	-112(%rbp), %rdi
	callq	_ZNK5CMove12is_promotionEv
.Ltmp104:
	movb	%al, -185(%rbp)                 # 1-byte Spill
	jmp	.LBB8_12
.LBB8_12:
	movb	-185(%rbp), %al                 # 1-byte Reload
	testb	$1, %al
	jne	.LBB8_13
	jmp	.LBB8_20
.LBB8_13:
.Ltmp105:
	leaq	-112(%rbp), %rdi
	xorl	%esi, %esi
	callq	_ZNK5CMove15promoting_pieceEi
.Ltmp106:
	movl	%eax, -192(%rbp)                # 4-byte Spill
	jmp	.LBB8_14
.LBB8_14:
.Ltmp107:
	leaq	-104(%rbp), %rdi
	movl	-192(%rbp), %esi                # 4-byte Reload
	callq	_Z18pieceToStringLowerB5cxx11i
.Ltmp108:
	jmp	.LBB8_15
.LBB8_15:
.Ltmp109:
	leaq	-104(%rbp), %rsi
	movq	-152(%rbp), %rdi                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_@PLT
.Ltmp110:
	jmp	.LBB8_16
.LBB8_16:
	leaq	-104(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.LBB8_20
.LBB8_17:
.Ltmp95:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -136(%rbp)
	movl	%edx, -140(%rbp)
	leaq	-40(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.LBB8_25
.LBB8_18:
.Ltmp102:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -136(%rbp)
	movl	%edx, -140(%rbp)
	leaq	-72(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.LBB8_25
.LBB8_19:
.Ltmp111:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -136(%rbp)
	movl	%edx, -140(%rbp)
	leaq	-104(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.LBB8_25
.LBB8_20:
	movb	$1, -121(%rbp)
	movl	$1, -144(%rbp)
.LBB8_21:
	testb	$1, -121(%rbp)
	jne	.LBB8_23
# %bb.22:
	movq	-152(%rbp), %rdi                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB8_23:
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB8_27
# %bb.24:
	movq	-160(%rbp), %rax                # 8-byte Reload
	addq	$192, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB8_25:
	.cfi_def_cfa %rbp, 16
	movq	-152(%rbp), %rdi                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
# %bb.26:
	movq	-136(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.LBB8_27:
	callq	__stack_chk_fail@PLT
.Lfunc_end8:
	.size	_Z18moveToUCIAlgebraicB5cxx115CMove, .Lfunc_end8-_Z18moveToUCIAlgebraicB5cxx115CMove
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table8:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp87-.Lfunc_begin3          # >> Call Site 1 <<
	.uleb128 .Ltmp92-.Ltmp87                #   Call between .Ltmp87 and .Ltmp92
	.uleb128 .Ltmp114-.Lfunc_begin3         #     jumps to .Ltmp114
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp93-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp94-.Ltmp93                #   Call between .Ltmp93 and .Ltmp94
	.uleb128 .Ltmp95-.Lfunc_begin3          #     jumps to .Ltmp95
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp96-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp99-.Ltmp96                #   Call between .Ltmp96 and .Ltmp99
	.uleb128 .Ltmp114-.Lfunc_begin3         #     jumps to .Ltmp114
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp100-.Lfunc_begin3         # >> Call Site 4 <<
	.uleb128 .Ltmp101-.Ltmp100              #   Call between .Ltmp100 and .Ltmp101
	.uleb128 .Ltmp102-.Lfunc_begin3         #     jumps to .Ltmp102
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp103-.Lfunc_begin3         # >> Call Site 5 <<
	.uleb128 .Ltmp108-.Ltmp103              #   Call between .Ltmp103 and .Ltmp108
	.uleb128 .Ltmp114-.Lfunc_begin3         #     jumps to .Ltmp114
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp109-.Lfunc_begin3         # >> Call Site 6 <<
	.uleb128 .Ltmp110-.Ltmp109              #   Call between .Ltmp109 and .Ltmp110
	.uleb128 .Ltmp111-.Lfunc_begin3         #     jumps to .Ltmp111
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp110-.Lfunc_begin3         # >> Call Site 7 <<
	.uleb128 .Lfunc_end8-.Ltmp110           #   Call between .Ltmp110 and .Lfunc_end8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2
                                        # -- End function
	.section	.text._ZNK5CMove7is_nullEv,"axG",@progbits,_ZNK5CMove7is_nullEv,comdat
	.weak	_ZNK5CMove7is_nullEv            # -- Begin function _ZNK5CMove7is_nullEv
	.p2align	4, 0x90
	.type	_ZNK5CMove7is_nullEv,@function
_ZNK5CMove7is_nullEv:                   # @_ZNK5CMove7is_nullEv
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
	cmpl	$0, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end9:
	.size	_ZNK5CMove7is_nullEv, .Lfunc_end9-_ZNK5CMove7is_nullEv
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_Z10squareNameB5cxx11m          # -- Begin function _Z10squareNameB5cxx11m
	.p2align	4, 0x90
	.type	_Z10squareNameB5cxx11m,@function
_Z10squareNameB5cxx11m:                 # @_Z10squareNameB5cxx11m
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, %rax
	movq	%rdi, %rcx
	movq	%rcx, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rdi, -24(%rbp)                 # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	callq	_Z11u64ToSquarem
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	callq	_Z10squareNameB5cxx11i
	movq	-32(%rbp), %rax                 # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end10:
	.size	_Z10squareNameB5cxx11m, .Lfunc_end10-_Z10squareNameB5cxx11m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK5CMove3srcEv,"axG",@progbits,_ZNK5CMove3srcEv,comdat
	.weak	_ZNK5CMove3srcEv                # -- Begin function _ZNK5CMove3srcEv
	.p2align	4, 0x90
	.type	_ZNK5CMove3srcEv,@function
_ZNK5CMove3srcEv:                       # @_ZNK5CMove3srcEv
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
	sarl	$10, %ecx
	movl	%ecx, %edi
	callq	_Z13u64FromSquarei
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end11:
	.size	_ZNK5CMove3srcEv, .Lfunc_end11-_ZNK5CMove3srcEv
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
.Lfunc_end12:
	.size	_ZNK5CMove4destEv, .Lfunc_end12-_ZNK5CMove4destEv
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
	jle	.LBB13_2
# %bb.1:
	movl	-12(%rbp), %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	cmpl	$0, %edx
	sete	%sil
	movb	%sil, -13(%rbp)                 # 1-byte Spill
.LBB13_2:
	movb	-13(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end13:
	.size	_ZNK5CMove12is_promotionEv, .Lfunc_end13-_ZNK5CMove12is_promotionEv
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_Z18pieceToStringLowerB5cxx11i  # -- Begin function _Z18pieceToStringLowerB5cxx11i
	.p2align	4, 0x90
	.type	_Z18pieceToStringLowerB5cxx11i,@function
_Z18pieceToStringLowerB5cxx11i:         # @_Z18pieceToStringLowerB5cxx11i
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
	subq	$176, %rsp
	movq	%rdi, %rax
	xorl	%ecx, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movq	%fs:40, %rdx
	movq	%rdx, -8(%rbp)
	movq	%rdi, %rdx
	movq	%rdx, -64(%rbp)
	movl	%esi, -68(%rbp)
	cmpl	$0, -68(%rbp)
	movq	%rdi, -96(%rbp)                 # 8-byte Spill
	movq	%rax, -104(%rbp)                # 8-byte Spill
	movb	%cl, -105(%rbp)                 # 1-byte Spill
	jl	.LBB14_2
# %bb.1:
	cmpl	$12, -68(%rbp)
	setl	%al
	movb	%al, -105(%rbp)                 # 1-byte Spill
.LBB14_2:
	movb	-105(%rbp), %al                 # 1-byte Reload
	testb	$1, %al
	jne	.LBB14_3
	jmp	.LBB14_4
.LBB14_3:
	jmp	.LBB14_5
.LBB14_4:
	leaq	.L.str.20(%rip), %rdi
	leaq	.L.str.21(%rip), %rsi
	movl	$86, %edx
	leaq	.L__PRETTY_FUNCTION__._Z18pieceToStringLowerB5cxx11i(%rip), %rcx
	callq	__assert_fail@PLT
.LBB14_5:
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$11, %rdx
	movq	%rcx, -120(%rbp)                # 8-byte Spill
	ja	.LBB14_22
# %bb.29:
	leaq	.LJTI14_0(%rip), %rax
	movq	-120(%rbp), %rcx                # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB14_6:
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -128(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp127:
	leaq	.L.str.23(%rip), %rsi
	movq	-96(%rbp), %rdi                 # 8-byte Reload
	movq	-128(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp128:
	jmp	.LBB14_7
.LBB14_7:
	leaq	-16(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB14_25
.LBB14_8:
.Ltmp129:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -80(%rbp)
	movl	%edx, -84(%rbp)
	leaq	-16(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB14_27
.LBB14_9:
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -136(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp124:
	leaq	.L.str.25(%rip), %rsi
	movq	-96(%rbp), %rdi                 # 8-byte Reload
	movq	-136(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp125:
	jmp	.LBB14_10
.LBB14_10:
	leaq	-24(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB14_25
.LBB14_11:
.Ltmp126:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -80(%rbp)
	movl	%edx, -84(%rbp)
	leaq	-24(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB14_27
.LBB14_12:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -144(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp121:
	leaq	.L.str.27(%rip), %rsi
	movq	-96(%rbp), %rdi                 # 8-byte Reload
	movq	-144(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp122:
	jmp	.LBB14_13
.LBB14_13:
	leaq	-32(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB14_25
.LBB14_14:
.Ltmp123:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -80(%rbp)
	movl	%edx, -84(%rbp)
	leaq	-32(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB14_27
.LBB14_15:
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -152(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp118:
	leaq	.L.str.29(%rip), %rsi
	movq	-96(%rbp), %rdi                 # 8-byte Reload
	movq	-152(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp119:
	jmp	.LBB14_16
.LBB14_16:
	leaq	-40(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB14_25
.LBB14_17:
.Ltmp120:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -80(%rbp)
	movl	%edx, -84(%rbp)
	leaq	-40(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB14_27
.LBB14_18:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -160(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp115:
	leaq	.L.str.11(%rip), %rsi
	movq	-96(%rbp), %rdi                 # 8-byte Reload
	movq	-160(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp116:
	jmp	.LBB14_19
.LBB14_19:
	leaq	-48(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB14_25
.LBB14_20:
.Ltmp117:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -80(%rbp)
	movl	%edx, -84(%rbp)
	leaq	-48(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB14_27
.LBB14_21:
	jmp	.LBB14_22
.LBB14_22:
	leaq	-56(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -168(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp130:
	leaq	.L.str.32(%rip), %rsi
	movq	-96(%rbp), %rdi                 # 8-byte Reload
	movq	-168(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp131:
	jmp	.LBB14_23
.LBB14_23:
	leaq	-56(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB14_25
.LBB14_24:
.Ltmp132:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -80(%rbp)
	movl	%edx, -84(%rbp)
	leaq	-56(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB14_27
.LBB14_25:
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB14_28
# %bb.26:
	movq	-104(%rbp), %rax                # 8-byte Reload
	addq	$176, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB14_27:
	.cfi_def_cfa %rbp, 16
	movq	-80(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.LBB14_28:
	callq	__stack_chk_fail@PLT
.Lfunc_end14:
	.size	_Z18pieceToStringLowerB5cxx11i, .Lfunc_end14-_Z18pieceToStringLowerB5cxx11i
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI14_0:
	.long	.LBB14_21-.LJTI14_0
	.long	.LBB14_21-.LJTI14_0
	.long	.LBB14_15-.LJTI14_0
	.long	.LBB14_15-.LJTI14_0
	.long	.LBB14_18-.LJTI14_0
	.long	.LBB14_18-.LJTI14_0
	.long	.LBB14_12-.LJTI14_0
	.long	.LBB14_12-.LJTI14_0
	.long	.LBB14_9-.LJTI14_0
	.long	.LBB14_9-.LJTI14_0
	.long	.LBB14_6-.LJTI14_0
	.long	.LBB14_6-.LJTI14_0
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table14:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp127-.Lfunc_begin4         # >> Call Site 1 <<
	.uleb128 .Ltmp128-.Ltmp127              #   Call between .Ltmp127 and .Ltmp128
	.uleb128 .Ltmp129-.Lfunc_begin4         #     jumps to .Ltmp129
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp124-.Lfunc_begin4         # >> Call Site 2 <<
	.uleb128 .Ltmp125-.Ltmp124              #   Call between .Ltmp124 and .Ltmp125
	.uleb128 .Ltmp126-.Lfunc_begin4         #     jumps to .Ltmp126
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp121-.Lfunc_begin4         # >> Call Site 3 <<
	.uleb128 .Ltmp122-.Ltmp121              #   Call between .Ltmp121 and .Ltmp122
	.uleb128 .Ltmp123-.Lfunc_begin4         #     jumps to .Ltmp123
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp118-.Lfunc_begin4         # >> Call Site 4 <<
	.uleb128 .Ltmp119-.Ltmp118              #   Call between .Ltmp118 and .Ltmp119
	.uleb128 .Ltmp120-.Lfunc_begin4         #     jumps to .Ltmp120
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp115-.Lfunc_begin4         # >> Call Site 5 <<
	.uleb128 .Ltmp116-.Ltmp115              #   Call between .Ltmp115 and .Ltmp116
	.uleb128 .Ltmp117-.Lfunc_begin4         #     jumps to .Ltmp117
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp130-.Lfunc_begin4         # >> Call Site 6 <<
	.uleb128 .Ltmp131-.Ltmp130              #   Call between .Ltmp130 and .Ltmp131
	.uleb128 .Ltmp132-.Lfunc_begin4         #     jumps to .Ltmp132
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp131-.Lfunc_begin4         # >> Call Site 7 <<
	.uleb128 .Lfunc_end14-.Ltmp131          #   Call between .Ltmp131 and .Lfunc_end14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2
                                        # -- End function
	.section	.text._ZNK5CMove15promoting_pieceEi,"axG",@progbits,_ZNK5CMove15promoting_pieceEi,comdat
	.weak	_ZNK5CMove15promoting_pieceEi   # -- Begin function _ZNK5CMove15promoting_pieceEi
	.p2align	4, 0x90
	.type	_ZNK5CMove15promoting_pieceEi,@function
_ZNK5CMove15promoting_pieceEi:          # @_ZNK5CMove15promoting_pieceEi
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
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	callq	_ZNK5CMove9type_codeEv
	xorl	%ecx, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	cltd
	movl	$2, %esi
	idivl	%esi
	cmpl	$0, %edx
	movb	%cl, -25(%rbp)                  # 1-byte Spill
	jne	.LBB15_2
# %bb.1:
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNK5CMove9type_codeEv
	cmpl	$0, %eax
	setg	%cl
	movb	%cl, -25(%rbp)                  # 1-byte Spill
.LBB15_2:
	movb	-25(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB15_3
	jmp	.LBB15_4
.LBB15_3:
	jmp	.LBB15_5
.LBB15_4:
	leaq	.L.str.34(%rip), %rdi
	leaq	.L.str.35(%rip), %rsi
	movl	$43, %edx
	leaq	.L__PRETTY_FUNCTION__._ZNK5CMove15promoting_pieceEi(%rip), %rcx
	callq	__assert_fail@PLT
.LBB15_5:
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNK5CMove9type_codeEv
	addl	-12(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end15:
	.size	_ZNK5CMove15promoting_pieceEi, .Lfunc_end15-_ZNK5CMove15promoting_pieceEi
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_Z10squareNameB5cxx11i          # -- Begin function _Z10squareNameB5cxx11i
	.p2align	4, 0x90
	.type	_Z10squareNameB5cxx11i,@function
_Z10squareNameB5cxx11i:                 # @_Z10squareNameB5cxx11i
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, %rax
	movq	%rdi, %rcx
	movq	%rcx, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	%rdi, -24(%rbp)                 # 8-byte Spill
	movl	%edx, %edi
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	callq	_Z11squareToColi
	movslq	%eax, %rcx
	shlq	$5, %rcx
	leaq	_ZL10FILE_NAMESB5cxx11(%rip), %r8
	addq	%rcx, %r8
	movl	-12(%rbp), %edi
	movq	%r8, -40(%rbp)                  # 8-byte Spill
	callq	_Z11squareToRowi
	movslq	%eax, %rcx
	shlq	$5, %rcx
	leaq	_ZL10RANK_NAMESB5cxx11(%rip), %r8
	addq	%rcx, %r8
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	movq	-40(%rbp), %rsi                 # 8-byte Reload
	movq	%r8, %rdx
	callq	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_
	movq	-32(%rbp), %rax                 # 8-byte Reload
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end16:
	.size	_Z10squareNameB5cxx11i, .Lfunc_end16-_Z10squareNameB5cxx11i
	.cfi_endproc
                                        # -- End function
	.section	.text._Z11u64ToSquarem,"axG",@progbits,_Z11u64ToSquarem,comdat
	.weak	_Z11u64ToSquarem                # -- Begin function _Z11u64ToSquarem
	.p2align	4, 0x90
	.type	_Z11u64ToSquarem,@function
_Z11u64ToSquarem:                       # @_Z11u64ToSquarem
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB17_2
# %bb.1:
	jmp	.LBB17_3
.LBB17_2:
	leaq	.L.str.36(%rip), %rdi
	leaq	.L.str.37(%rip), %rsi
	movl	$127, %edx
	leaq	.L__PRETTY_FUNCTION__._Z11u64ToSquarem(%rip), %rcx
	callq	__assert_fail@PLT
.LBB17_3:
	movq	-8(%rbp), %rdi
	callq	_Z14bitscanForwardm
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end17:
	.size	_Z11u64ToSquarem, .Lfunc_end17-_Z11u64ToSquarem
	.cfi_endproc
                                        # -- End function
	.section	.text._ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_,"axG",@progbits,_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_,comdat
	.weak	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_ # -- Begin function _ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_
	.p2align	4, 0x90
	.type	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_,@function
_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_: # @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_
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
	subq	$64, %rsp
	movq	%rdi, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movb	$0, -25(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rdi, -56(%rbp)                 # 8-byte Spill
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_@PLT
	movq	-24(%rbp), %rsi
.Ltmp133:
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_@PLT
.Ltmp134:
	jmp	.LBB18_1
.LBB18_1:
	movb	$1, -25(%rbp)
	testb	$1, -25(%rbp)
	jne	.LBB18_4
	jmp	.LBB18_3
.LBB18_2:
.Ltmp135:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -40(%rbp)
	movl	%edx, -44(%rbp)
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.LBB18_5
.LBB18_3:
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB18_4:
	movq	-64(%rbp), %rax                 # 8-byte Reload
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB18_5:
	.cfi_def_cfa %rbp, 16
	movq	-40(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end18:
	.size	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_, .Lfunc_end18-_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table18:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp133-.Lfunc_begin5         #   Call between .Lfunc_begin5 and .Ltmp133
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp133-.Lfunc_begin5         # >> Call Site 2 <<
	.uleb128 .Ltmp134-.Ltmp133              #   Call between .Ltmp133 and .Ltmp134
	.uleb128 .Ltmp135-.Lfunc_begin5         #     jumps to .Ltmp135
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp134-.Lfunc_begin5         # >> Call Site 3 <<
	.uleb128 .Lfunc_end18-.Ltmp134          #   Call between .Ltmp134 and .Lfunc_end18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.p2align	2
                                        # -- End function
	.section	.text._Z11squareToColi,"axG",@progbits,_Z11squareToColi,comdat
	.weak	_Z11squareToColi                # -- Begin function _Z11squareToColi
	.p2align	4, 0x90
	.type	_Z11squareToColi,@function
_Z11squareToColi:                       # @_Z11squareToColi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	cltd
	movl	$8, %ecx
	idivl	%ecx
	movl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end19:
	.size	_Z11squareToColi, .Lfunc_end19-_Z11squareToColi
	.cfi_endproc
                                        # -- End function
	.section	.text._Z11squareToRowi,"axG",@progbits,_Z11squareToRowi,comdat
	.weak	_Z11squareToRowi                # -- Begin function _Z11squareToRowi
	.p2align	4, 0x90
	.type	_Z11squareToRowi,@function
_Z11squareToRowi:                       # @_Z11squareToRowi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	cltd
	movl	$8, %ecx
	idivl	%ecx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end20:
	.size	_Z11squareToRowi, .Lfunc_end20-_Z11squareToRowi
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_Z11u64FromNameNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE # -- Begin function _Z11u64FromNameNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.p2align	4, 0x90
	.type	_Z11u64FromNameNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@function
_Z11u64FromNameNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: # @_Z11u64FromNameNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
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
	subq	$96, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	leaq	-40(%rbp), %rax
	movq	%rdi, -64(%rbp)                 # 8-byte Spill
	movq	%rax, %rdi
	movq	-64(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_@PLT
.Ltmp136:
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	callq	_Z14squareFromNameNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Ltmp137:
	movl	%eax, -76(%rbp)                 # 4-byte Spill
	jmp	.LBB21_1
.LBB21_1:
.Ltmp138:
	movl	-76(%rbp), %edi                 # 4-byte Reload
	callq	_Z13u64FromSquarei
.Ltmp139:
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	jmp	.LBB21_2
.LBB21_2:
	leaq	-40(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB21_6
# %bb.3:
	movq	-88(%rbp), %rax                 # 8-byte Reload
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB21_4:
	.cfi_def_cfa %rbp, 16
.Ltmp140:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -48(%rbp)
	movl	%edx, -52(%rbp)
	leaq	-40(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
# %bb.5:
	movq	-48(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.LBB21_6:
	callq	__stack_chk_fail@PLT
.Lfunc_end21:
	.size	_Z11u64FromNameNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .Lfunc_end21-_Z11u64FromNameNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table21:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6    # >> Call Site 1 <<
	.uleb128 .Ltmp136-.Lfunc_begin6         #   Call between .Lfunc_begin6 and .Ltmp136
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp136-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Ltmp139-.Ltmp136              #   Call between .Ltmp136 and .Ltmp139
	.uleb128 .Ltmp140-.Lfunc_begin6         #     jumps to .Ltmp140
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp139-.Lfunc_begin6         # >> Call Site 3 <<
	.uleb128 .Lfunc_end21-.Ltmp139          #   Call between .Ltmp139 and .Lfunc_end21
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.p2align	2
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
	jne	.LBB22_1
	jmp	.LBB22_2
.LBB22_1:
	jmp	.LBB22_3
.LBB22_2:
	leaq	.L.str.38(%rip), %rdi
	leaq	.L.str.37(%rip), %rsi
	movl	$121, %edx
	leaq	.L__PRETTY_FUNCTION__._Z13u64FromSquarei(%rip), %rcx
	callq	__assert_fail@PLT
.LBB22_3:
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
.Lfunc_end22:
	.size	_Z13u64FromSquarei, .Lfunc_end22-_Z13u64FromSquarei
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_Z14squareFromNameNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE # -- Begin function _Z14squareFromNameNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.p2align	4, 0x90
	.type	_Z14squareFromNameNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@function
_Z14squareFromNameNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: # @_Z14squareFromNameNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movq	%rdi, -16(%rbp)                 # 8-byte Spill
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm@PLT
	movsbl	(%rax), %ecx
	cmpl	$97, %ecx
	jne	.LBB23_2
# %bb.1:
	movl	$0, -4(%rbp)
	jmp	.LBB23_21
.LBB23_2:
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm@PLT
	movsbl	(%rax), %ecx
	cmpl	$98, %ecx
	jne	.LBB23_4
# %bb.3:
	movl	$1, -4(%rbp)
	jmp	.LBB23_20
.LBB23_4:
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm@PLT
	movsbl	(%rax), %ecx
	cmpl	$99, %ecx
	jne	.LBB23_6
# %bb.5:
	movl	$2, -4(%rbp)
	jmp	.LBB23_19
.LBB23_6:
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm@PLT
	movsbl	(%rax), %ecx
	cmpl	$100, %ecx
	jne	.LBB23_8
# %bb.7:
	movl	$3, -4(%rbp)
	jmp	.LBB23_18
.LBB23_8:
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm@PLT
	movsbl	(%rax), %ecx
	cmpl	$101, %ecx
	jne	.LBB23_10
# %bb.9:
	movl	$4, -4(%rbp)
	jmp	.LBB23_17
.LBB23_10:
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm@PLT
	movsbl	(%rax), %ecx
	cmpl	$102, %ecx
	jne	.LBB23_12
# %bb.11:
	movl	$5, -4(%rbp)
	jmp	.LBB23_16
.LBB23_12:
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm@PLT
	movsbl	(%rax), %ecx
	cmpl	$103, %ecx
	jne	.LBB23_14
# %bb.13:
	movl	$6, -4(%rbp)
	jmp	.LBB23_15
.LBB23_14:
	movl	$7, -4(%rbp)
.LBB23_15:
	jmp	.LBB23_16
.LBB23_16:
	jmp	.LBB23_17
.LBB23_17:
	jmp	.LBB23_18
.LBB23_18:
	jmp	.LBB23_19
.LBB23_19:
	jmp	.LBB23_20
.LBB23_20:
	jmp	.LBB23_21
.LBB23_21:
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	movl	$1, %esi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm@PLT
	movsbl	(%rax), %ecx
	cmpl	$49, %ecx
	jne	.LBB23_23
# %bb.22:
	movl	$0, -8(%rbp)
	jmp	.LBB23_42
.LBB23_23:
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	movl	$1, %esi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm@PLT
	movsbl	(%rax), %ecx
	cmpl	$50, %ecx
	jne	.LBB23_25
# %bb.24:
	movl	$1, -8(%rbp)
	jmp	.LBB23_41
.LBB23_25:
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	movl	$1, %esi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm@PLT
	movsbl	(%rax), %ecx
	cmpl	$51, %ecx
	jne	.LBB23_27
# %bb.26:
	movl	$2, -8(%rbp)
	jmp	.LBB23_40
.LBB23_27:
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	movl	$1, %esi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm@PLT
	movsbl	(%rax), %ecx
	cmpl	$52, %ecx
	jne	.LBB23_29
# %bb.28:
	movl	$3, -8(%rbp)
	jmp	.LBB23_39
.LBB23_29:
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	movl	$1, %esi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm@PLT
	movsbl	(%rax), %ecx
	cmpl	$53, %ecx
	jne	.LBB23_31
# %bb.30:
	movl	$4, -8(%rbp)
	jmp	.LBB23_38
.LBB23_31:
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	movl	$1, %esi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm@PLT
	movsbl	(%rax), %ecx
	cmpl	$54, %ecx
	jne	.LBB23_33
# %bb.32:
	movl	$5, -8(%rbp)
	jmp	.LBB23_37
.LBB23_33:
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	movl	$1, %esi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm@PLT
	movsbl	(%rax), %ecx
	cmpl	$55, %ecx
	jne	.LBB23_35
# %bb.34:
	movl	$6, -8(%rbp)
	jmp	.LBB23_36
.LBB23_35:
	movl	$7, -8(%rbp)
.LBB23_36:
	jmp	.LBB23_37
.LBB23_37:
	jmp	.LBB23_38
.LBB23_38:
	jmp	.LBB23_39
.LBB23_39:
	jmp	.LBB23_40
.LBB23_40:
	jmp	.LBB23_41
.LBB23_41:
	jmp	.LBB23_42
.LBB23_42:
	movl	-8(%rbp), %edi
	movl	-4(%rbp), %esi
	callq	_Z14squareFromPairii
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end23:
	.size	_Z14squareFromNameNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .Lfunc_end23-_Z14squareFromNameNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_endproc
                                        # -- End function
	.section	.text._Z14squareFromPairii,"axG",@progbits,_Z14squareFromPairii,comdat
	.weak	_Z14squareFromPairii            # -- Begin function _Z14squareFromPairii
	.p2align	4, 0x90
	.type	_Z14squareFromPairii,@function
_Z14squareFromPairii:                   # @_Z14squareFromPairii
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	shll	$3, %eax
	addl	-8(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end24:
	.size	_Z14squareFromPairii, .Lfunc_end24-_Z14squareFromPairii
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
.Lfunc_end25:
	.size	_ZNK5CMove9type_codeEv, .Lfunc_end25-_ZNK5CMove9type_codeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z14bitscanForwardm,"axG",@progbits,_Z14bitscanForwardm,comdat
	.weak	_Z14bitscanForwardm             # -- Begin function _Z14bitscanForwardm
	.p2align	4, 0x90
	.type	_Z14bitscanForwardm,@function
_Z14bitscanForwardm:                    # @_Z14bitscanForwardm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdx
	bsfq	%rdx, %rsi
	addq	$1, %rsi
	cmpq	$0, %rdx
	cmoveq	%rcx, %rsi
                                        # kill: def $esi killed $esi killed $rsi
	subl	$1, %esi
	movl	%esi, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end26:
	.size	_Z14bitscanForwardm, .Lfunc_end26-_Z14bitscanForwardm
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
	jl	.LBB27_2
# %bb.1:
	cmpl	$64, -4(%rbp)
	setl	%al
	movb	%al, -5(%rbp)                   # 1-byte Spill
.LBB27_2:
	movb	-5(%rbp), %al                   # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end27:
	.size	_Z13isValidSquarei, .Lfunc_end27-_Z13isValidSquarei
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_strings.cpp
	.type	_GLOBAL__sub_I_strings.cpp,@function
_GLOBAL__sub_I_strings.cpp:             # @_GLOBAL__sub_I_strings.cpp
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
.Lfunc_end28:
	.size	_GLOBAL__sub_I_strings.cpp, .Lfunc_end28-_GLOBAL__sub_I_strings.cpp
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
	.asciz	"-"
	.size	.L.str.19, 2

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"piece >= 0 && piece < 12"
	.size	.L.str.20, 25

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"src/uci/strings.cpp"
	.size	.L.str.21, 20

	.type	.L__PRETTY_FUNCTION__._Z16pieceToStringFenB5cxx11i,@object # @__PRETTY_FUNCTION__._Z16pieceToStringFenB5cxx11i
.L__PRETTY_FUNCTION__._Z16pieceToStringFenB5cxx11i:
	.asciz	"std::string pieceToStringFen(int)"
	.size	.L__PRETTY_FUNCTION__._Z16pieceToStringFenB5cxx11i, 34

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"K"
	.size	.L.str.22, 2

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"k"
	.size	.L.str.23, 2

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"Q"
	.size	.L.str.24, 2

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"q"
	.size	.L.str.25, 2

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"R"
	.size	.L.str.26, 2

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"r"
	.size	.L.str.27, 2

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"N"
	.size	.L.str.28, 2

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"n"
	.size	.L.str.29, 2

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"B"
	.size	.L.str.30, 2

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"P"
	.size	.L.str.31, 2

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"p"
	.size	.L.str.32, 2

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"null"
	.size	.L.str.33, 5

	.type	.L__PRETTY_FUNCTION__._Z18pieceToStringLowerB5cxx11i,@object # @__PRETTY_FUNCTION__._Z18pieceToStringLowerB5cxx11i
.L__PRETTY_FUNCTION__._Z18pieceToStringLowerB5cxx11i:
	.asciz	"std::string pieceToStringLower(int)"
	.size	.L__PRETTY_FUNCTION__._Z18pieceToStringLowerB5cxx11i, 36

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"type_code() % 2 == 0 && type_code() > 0"
	.size	.L.str.34, 40

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"include/game/cmove.hpp"
	.size	.L.str.35, 23

	.type	.L__PRETTY_FUNCTION__._ZNK5CMove15promoting_pieceEi,@object # @__PRETTY_FUNCTION__._ZNK5CMove15promoting_pieceEi
.L__PRETTY_FUNCTION__._ZNK5CMove15promoting_pieceEi:
	.asciz	"int CMove::promoting_piece(int) const"
	.size	.L__PRETTY_FUNCTION__._ZNK5CMove15promoting_pieceEi, 38

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"x != 0"
	.size	.L.str.36, 7

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"include/misc/bits.hpp"
	.size	.L.str.37, 22

	.type	.L__PRETTY_FUNCTION__._Z11u64ToSquarem,@object # @__PRETTY_FUNCTION__._Z11u64ToSquarem
.L__PRETTY_FUNCTION__._Z11u64ToSquarem:
	.asciz	"int u64ToSquare(uint64_t)"
	.size	.L__PRETTY_FUNCTION__._Z11u64ToSquarem, 26

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"isValidSquare(s)"
	.size	.L.str.38, 17

	.type	.L__PRETTY_FUNCTION__._Z13u64FromSquarei,@object # @__PRETTY_FUNCTION__._Z13u64FromSquarei
.L__PRETTY_FUNCTION__._Z13u64FromSquarei:
	.asciz	"uint64_t u64FromSquare(int)"
	.size	.L__PRETTY_FUNCTION__._Z13u64FromSquarei, 28

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_strings.cpp
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
	.addrsig_sym __assert_fail
	.addrsig_sym _ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	.addrsig_sym _ZNK5CMove7is_nullEv
	.addrsig_sym _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc
	.addrsig_sym _Z10squareNameB5cxx11m
	.addrsig_sym _ZNK5CMove3srcEv
	.addrsig_sym _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_
	.addrsig_sym _ZNK5CMove4destEv
	.addrsig_sym _ZNK5CMove12is_promotionEv
	.addrsig_sym _Z18pieceToStringLowerB5cxx11i
	.addrsig_sym _ZNK5CMove15promoting_pieceEi
	.addrsig_sym _Z10squareNameB5cxx11i
	.addrsig_sym _Z11u64ToSquarem
	.addrsig_sym _ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_
	.addrsig_sym _Z11squareToColi
	.addrsig_sym _Z11squareToRowi
	.addrsig_sym _Z13u64FromSquarei
	.addrsig_sym _Z14squareFromNameNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.addrsig_sym _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	.addrsig_sym _Z14squareFromPairii
	.addrsig_sym _ZNK5CMove9type_codeEv
	.addrsig_sym _Z14bitscanForwardm
	.addrsig_sym _Z13isValidSquarei
	.addrsig_sym _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc
	.addrsig_sym _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_
	.addrsig_sym _GLOBAL__sub_I_strings.cpp
	.addrsig_sym _Unwind_Resume
	.addrsig_sym __stack_chk_fail
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym _ZL10RANK_NAMESB5cxx11
	.addrsig_sym _ZL10FILE_NAMESB5cxx11
