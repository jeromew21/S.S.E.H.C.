	.text
	.file	"bits.cpp"
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
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function __cxx_global_var_init.1
.LCPI1_0:
	.quad	0x3ff0000000000000              # double 1
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90
	.type	__cxx_global_var_init.1,@function
__cxx_global_var_init.1:                # @__cxx_global_var_init.1
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movsd	.LCPI1_0(%rip), %xmm1           # xmm1 = mem[0],zero
	leaq	unif(%rip), %rdi
	xorps	%xmm0, %xmm0
	callq	_ZNSt25uniform_real_distributionIdEC2Edd
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	__cxx_global_var_init.1, .Lfunc_end1-__cxx_global_var_init.1
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt25uniform_real_distributionIdEC2Edd,"axG",@progbits,_ZNSt25uniform_real_distributionIdEC2Edd,comdat
	.weak	_ZNSt25uniform_real_distributionIdEC2Edd # -- Begin function _ZNSt25uniform_real_distributionIdEC2Edd
	.p2align	4, 0x90
	.type	_ZNSt25uniform_real_distributionIdEC2Edd,@function
_ZNSt25uniform_real_distributionIdEC2Edd: # @_ZNSt25uniform_real_distributionIdEC2Edd
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	-8(%rbp), %rdi
	movsd	-16(%rbp), %xmm0                # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1                # xmm1 = mem[0],zero
	callq	_ZNSt25uniform_real_distributionIdE10param_typeC2Edd
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	_ZNSt25uniform_real_distributionIdEC2Edd, .Lfunc_end2-_ZNSt25uniform_real_distributionIdEC2Edd
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function __cxx_global_var_init.2
	.type	__cxx_global_var_init.2,@function
__cxx_global_var_init.2:                # @__cxx_global_var_init.2
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	rng(%rip), %rdi
	callq	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Ev
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	__cxx_global_var_init.2, .Lfunc_end3-__cxx_global_var_init.2
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Ev,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Ev,comdat
	.weak	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Ev # -- Begin function _ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Ev
	.p2align	4, 0x90
	.type	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Ev,@function
_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Ev: # @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Ev
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
	movl	$5489, %esi                     # imm = 0x1571
	callq	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Ev, .Lfunc_end4-_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Ev
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_Z9init_bitsv                   # -- Begin function _Z9init_bitsv
	.p2align	4, 0x90
	.type	_Z9init_bitsv,@function
_Z9init_bitsv:                          # @_Z9init_bitsv
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
	subq	$112, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -104(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp0:
	leaq	.L.str(%rip), %rsi
	leaq	-40(%rbp), %rdi
	movq	-104(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp1:
	jmp	.LBB5_1
.LBB5_1:
.Ltmp3:
	leaq	-40(%rbp), %rdi
	callq	_Z12verbose_infoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.Ltmp4:
	jmp	.LBB5_2
.LBB5_2:
	leaq	-40(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-48(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movl	$0, -64(%rbp)
.LBB5_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_5 Depth 2
                                        #       Child Loop BB5_7 Depth 3
                                        #       Child Loop BB5_14 Depth 3
	cmpl	$256, -64(%rbp)                 # imm = 0x100
	jge	.LBB5_26
# %bb.4:                                #   in Loop: Header=BB5_3 Depth=1
	movl	-64(%rbp), %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	$0, -72(%rbp)
.LBB5_5:                                #   Parent Loop BB5_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_7 Depth 3
                                        #       Child Loop BB5_14 Depth 3
	cmpl	$8, -72(%rbp)
	jge	.LBB5_24
# %bb.6:                                #   in Loop: Header=BB5_5 Depth=2
	movl	$0, -76(%rbp)
.LBB5_7:                                #   Parent Loop BB5_3 Depth=1
                                        #     Parent Loop BB5_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$8, -76(%rbp)
	jge	.LBB5_13
# %bb.8:                                #   in Loop: Header=BB5_7 Depth=3
	movslq	-68(%rbp), %rax
	shlq	$9, %rax
	leaq	bitscan_cache(%rip), %rcx
	addq	%rax, %rcx
	movslq	-72(%rbp), %rax
	shlq	$6, %rax
	addq	%rax, %rcx
	movslq	-76(%rbp), %rax
	movq	$0, (%rcx,%rax,8)
# %bb.9:                                #   in Loop: Header=BB5_7 Depth=3
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB5_7
.LBB5_10:
.Ltmp2:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -56(%rbp)
	movl	%edx, -60(%rbp)
	jmp	.LBB5_12
.LBB5_11:
.Ltmp5:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -56(%rbp)
	movl	%edx, -60(%rbp)
	leaq	-40(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB5_12:
	leaq	-48(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB5_28
.LBB5_13:                               #   in Loop: Header=BB5_5 Depth=2
	movl	$0, -80(%rbp)
	movl	$0, -84(%rbp)
.LBB5_14:                               #   Parent Loop BB5_3 Depth=1
                                        #     Parent Loop BB5_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$8, -84(%rbp)
	jge	.LBB5_22
# %bb.15:                               #   in Loop: Header=BB5_14 Depth=3
	movl	-68(%rbp), %eax
	movl	-84(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB5_20
# %bb.16:                               #   in Loop: Header=BB5_14 Depth=3
	movl	-72(%rbp), %eax
	shll	$3, %eax
	addl	-84(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
                                        # kill: def $cl killed $rcx
	movl	$1, %edx
	shlq	%cl, %rdx
	movq	%rdx, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB5_18
# %bb.17:                               #   in Loop: Header=BB5_14 Depth=3
	jmp	.LBB5_19
.LBB5_18:
	leaq	.L.str.3(%rip), %rdi
	leaq	.L.str.4(%rip), %rsi
	movl	$37, %edx
	leaq	.L__PRETTY_FUNCTION__._Z9init_bitsv(%rip), %rcx
	callq	__assert_fail@PLT
.LBB5_19:                               #   in Loop: Header=BB5_14 Depth=3
	movq	-96(%rbp), %rax
	movslq	-68(%rbp), %rcx
	shlq	$9, %rcx
	leaq	bitscan_cache(%rip), %rdx
	addq	%rcx, %rdx
	movslq	-72(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rdx
	movl	-80(%rbp), %esi
	movl	%esi, %edi
	addl	$1, %edi
	movl	%edi, -80(%rbp)
	movslq	%esi, %rcx
	movq	%rax, (%rdx,%rcx,8)
.LBB5_20:                               #   in Loop: Header=BB5_14 Depth=3
	jmp	.LBB5_21
.LBB5_21:                               #   in Loop: Header=BB5_14 Depth=3
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB5_14
.LBB5_22:                               #   in Loop: Header=BB5_5 Depth=2
	jmp	.LBB5_23
.LBB5_23:                               #   in Loop: Header=BB5_5 Depth=2
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB5_5
.LBB5_24:                               #   in Loop: Header=BB5_3 Depth=1
	jmp	.LBB5_25
.LBB5_25:                               #   in Loop: Header=BB5_3 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB5_3
.LBB5_26:
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB5_29
# %bb.27:
	addq	$112, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB5_28:
	.cfi_def_cfa %rbp, 16
	movq	-56(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.LBB5_29:
	callq	__stack_chk_fail@PLT
.Lfunc_end5:
	.size	_Z9init_bitsv, .Lfunc_end5-_Z9init_bitsv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table5:
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
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Lfunc_end5-.Ltmp4             #   Call between .Ltmp4 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2
                                        # -- End function
	.text
	.globl	_Z8seedRandi                    # -- Begin function _Z8seedRandi
	.p2align	4, 0x90
	.type	_Z8seedRandi,@function
_Z8seedRandi:                           # @_Z8seedRandi
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
	subq	$112, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movl	%edi, -76(%rbp)
	movl	-76(%rbp), %esi
	leaq	-72(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -104(%rbp)                # 8-byte Spill
	callq	_ZNSt7__cxx119to_stringEi
.Ltmp6:
	leaq	.L.str.5(%rip), %rsi
	leaq	-40(%rbp), %rdi
	movq	-104(%rbp), %rdx                # 8-byte Reload
	callq	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_
.Ltmp7:
	jmp	.LBB6_1
.LBB6_1:
.Ltmp9:
	leaq	-40(%rbp), %rdi
	callq	_Z12verbose_infoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.Ltmp10:
	jmp	.LBB6_2
.LBB6_2:
	leaq	-40(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-72(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movslq	-76(%rbp), %rsi
	leaq	rng(%rip), %rdi
	callq	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE4seedEm
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB6_8
# %bb.3:
	addq	$112, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB6_4:
	.cfi_def_cfa %rbp, 16
.Ltmp8:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -88(%rbp)
	movl	%edx, -92(%rbp)
	jmp	.LBB6_6
.LBB6_5:
.Ltmp11:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -88(%rbp)
	movl	%edx, -92(%rbp)
	leaq	-40(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB6_6:
	leaq	-72(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
# %bb.7:
	movq	-88(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.LBB6_8:
	callq	__stack_chk_fail@PLT
.Lfunc_end6:
	.size	_Z8seedRandi, .Lfunc_end6-_Z8seedRandi
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table6:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp6-.Lfunc_begin1           #   Call between .Lfunc_begin1 and .Ltmp6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin1           # >> Call Site 2 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin1           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin1           # >> Call Site 3 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin1          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Lfunc_end6-.Ltmp10            #   Call between .Ltmp10 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2
                                        # -- End function
	.section	.text._ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_,"axG",@progbits,_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_,comdat
	.weak	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_ # -- Begin function _ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_
	.p2align	4, 0x90
	.type	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_,@function
_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: # @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movq	%rdi, %r9
	movq	%r9, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%rdi, -32(%rbp)                 # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rsi, -40(%rbp)                 # 8-byte Spill
	movq	%r8, %rsi
	movq	-40(%rbp), %rdx                 # 8-byte Reload
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc@PLT
	movq	%rax, %rdi
	callq	_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rsi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_@PLT
	movq	-48(%rbp), %rax                 # 8-byte Reload
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_, .Lfunc_end7-_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx119to_stringEi,"axG",@progbits,_ZNSt7__cxx119to_stringEi,comdat
	.weak	_ZNSt7__cxx119to_stringEi       # -- Begin function _ZNSt7__cxx119to_stringEi
	.p2align	4, 0x90
	.type	_ZNSt7__cxx119to_stringEi,@function
_ZNSt7__cxx119to_stringEi:              # @_ZNSt7__cxx119to_stringEi
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
	subq	$112, %rsp
	movq	%rdi, %rax
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	movq	%rdi, %rcx
	movq	%rcx, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpl	$0, -28(%rbp)
	setl	%dl
	andb	$1, %dl
	movb	%dl, -29(%rbp)
	testb	$1, -29(%rbp)
	movq	%rdi, -72(%rbp)                 # 8-byte Spill
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	je	.LBB8_2
# %bb.1:
	movl	-28(%rbp), %eax
	xorl	$-1, %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)                 # 4-byte Spill
	jmp	.LBB8_3
.LBB8_2:
	movl	-28(%rbp), %eax
	movl	%eax, -84(%rbp)                 # 4-byte Spill
.LBB8_3:
	movl	-84(%rbp), %eax                 # 4-byte Reload
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %edi
	movl	$10, %esi
	callq	_ZNSt8__detail14__to_chars_lenIjEEjT_i
	movl	%eax, -40(%rbp)
	movb	$0, -41(%rbp)
	movzbl	-29(%rbp), %eax
	andl	$1, %eax
	movl	-40(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, %esi
	leaq	-16(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rsi, -96(%rbp)                 # 8-byte Spill
	movq	%rdx, -104(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp12:
	movl	$45, %edx
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movq	-96(%rbp), %rsi                 # 8-byte Reload
	movq	-104(%rbp), %rcx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EmcRKS3_@PLT
.Ltmp13:
	jmp	.LBB8_4
.LBB8_4:
	leaq	-16(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movzbl	-29(%rbp), %eax
	movl	%eax, %ecx
                                        # kill: def $ecx killed $ecx killed $rcx
	andl	$1, %ecx
	movl	%ecx, %esi
.Ltmp15:
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm@PLT
.Ltmp16:
	movq	%rax, -112(%rbp)                # 8-byte Spill
	jmp	.LBB8_5
.LBB8_5:
	movl	-40(%rbp), %esi
	movl	-36(%rbp), %edx
	movq	-112(%rbp), %rdi                # 8-byte Reload
	callq	_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_
	movb	$1, -41(%rbp)
	testb	$1, -41(%rbp)
	jne	.LBB8_9
	jmp	.LBB8_8
.LBB8_6:
.Ltmp14:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -56(%rbp)
	movl	%edx, -60(%rbp)
	leaq	-16(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB8_11
.LBB8_7:
.Ltmp17:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -56(%rbp)
	movl	%edx, -60(%rbp)
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.LBB8_11
.LBB8_8:
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB8_9:
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB8_12
# %bb.10:
	movq	-80(%rbp), %rax                 # 8-byte Reload
	addq	$112, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB8_11:
	.cfi_def_cfa %rbp, 16
	movq	-56(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.LBB8_12:
	callq	__stack_chk_fail@PLT
.Lfunc_end8:
	.size	_ZNSt7__cxx119to_stringEi, .Lfunc_end8-_ZNSt7__cxx119to_stringEi
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table8:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp12-.Lfunc_begin2          # >> Call Site 1 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin2          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin2          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Lfunc_end8-.Ltmp16            #   Call between .Ltmp16 and .Lfunc_end8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE4seedEm,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE4seedEm,comdat
	.weak	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE4seedEm # -- Begin function _ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE4seedEm
	.p2align	4, 0x90
	.type	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE4seedEm,@function
_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE4seedEm: # @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE4seedEm
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
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	callq	_ZNSt8__detail5__modImLm0ELm1ELm0EEET_S1_
	movq	-40(%rbp), %rcx                 # 8-byte Reload
	movq	%rax, (%rcx)
	movq	$1, -24(%rbp)
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	cmpq	$312, -24(%rbp)                 # imm = 0x138
	jae	.LBB9_4
# %bb.2:                                #   in Loop: Header=BB9_1 Depth=1
	movq	-24(%rbp), %rax
	subq	$1, %rax
	movq	-40(%rbp), %rcx                 # 8-byte Reload
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	shrq	$62, %rax
	xorq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movabsq	$6364136223846793005, %rax      # imm = 0x5851F42D4C957F2D
	imulq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	_ZNSt8__detail5__modImLm312ELm1ELm0EEET_S1_
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	_ZNSt8__detail5__modImLm0ELm1ELm0EEET_S1_
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rdx                 # 8-byte Reload
	movq	%rax, (%rdx,%rcx,8)
# %bb.3:                                #   in Loop: Header=BB9_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB9_1
.LBB9_4:
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	$312, 2496(%rax)                # imm = 0x138
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end9:
	.size	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE4seedEm, .Lfunc_end9-_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE4seedEm
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_Z12timeSeedRandv               # -- Begin function _Z12timeSeedRandv
	.p2align	4, 0x90
	.type	_Z12timeSeedRandv,@function
_Z12timeSeedRandv:                      # @_Z12timeSeedRandv
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
	subq	$112, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdi
	callq	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rdi
	callq	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	movq	%rax, -64(%rbp)
	movl	-64(%rbp), %ecx
	movl	%ecx, -16(%rbp)
	movl	-60(%rbp), %ecx
	movl	%ecx, -12(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	$2, -72(%rbp)
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -104(%rbp)                # 8-byte Spill
	callq	_ZNSt8seed_seqC2IjEESt16initializer_listIT_E
.Ltmp18:
	leaq	rng(%rip), %rdi
	movq	-104(%rbp), %rsi                # 8-byte Reload
	callq	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE4seedISt8seed_seqEENSt9enable_ifIXsr8__detail13__is_seed_seqIT_S0_mEE5valueEvE4typeERS4_
.Ltmp19:
	jmp	.LBB10_1
.LBB10_1:
	leaq	-56(%rbp), %rdi
	callq	_ZNSt8seed_seqD2Ev
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB10_5
# %bb.2:
	addq	$112, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB10_3:
	.cfi_def_cfa %rbp, 16
.Ltmp20:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -88(%rbp)
	movl	%edx, -92(%rbp)
	leaq	-56(%rbp), %rdi
	callq	_ZNSt8seed_seqD2Ev
# %bb.4:
	movq	-88(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.LBB10_5:
	callq	__stack_chk_fail@PLT
.Lfunc_end10:
	.size	_Z12timeSeedRandv, .Lfunc_end10-_Z12timeSeedRandv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table10:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp18-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin3          #     jumps to .Ltmp20
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Lfunc_end10-.Ltmp19           #   Call between .Ltmp19 and .Lfunc_end10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2
                                        # -- End function
	.section	.text._ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv,"axG",@progbits,_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv,comdat
	.weak	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv # -- Begin function _ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.p2align	4, 0x90
	.type	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv,@function
_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv: # @_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
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
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%fs:40, %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	jne	.LBB11_2
# %bb.1:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB11_2:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end11:
	.size	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv, .Lfunc_end11-_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv,"axG",@progbits,_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv,comdat
	.weak	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv # -- Begin function _ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	.p2align	4, 0x90
	.type	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv,@function
_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv: # @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end12:
	.size	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv, .Lfunc_end12-_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8seed_seqC2IjEESt16initializer_listIT_E,"axG",@progbits,_ZNSt8seed_seqC2IjEESt16initializer_listIT_E,comdat
	.weak	_ZNSt8seed_seqC2IjEESt16initializer_listIT_E # -- Begin function _ZNSt8seed_seqC2IjEESt16initializer_listIT_E
	.p2align	4, 0x90
	.type	_ZNSt8seed_seqC2IjEESt16initializer_listIT_E,@function
_ZNSt8seed_seqC2IjEESt16initializer_listIT_E: # @_ZNSt8seed_seqC2IjEESt16initializer_listIT_E
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
	subq	$96, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	callq	_ZNSt6vectorIjSaIjEEC2Ev
	leaq	-24(%rbp), %rdi
	callq	_ZNKSt16initializer_listIjE5beginEv
	movq	%rax, -48(%rbp)
.LBB13_1:                               # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	leaq	-24(%rbp), %rdi
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	callq	_ZNKSt16initializer_listIjE3endEv
	movq	-80(%rbp), %rcx                 # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB13_7
# %bb.2:                                #   in Loop: Header=BB13_1 Depth=1
	movq	-72(%rbp), %rax                 # 8-byte Reload
	movq	-48(%rbp), %rcx
	movl	(%rcx), %edi
.Ltmp21:
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	callq	_ZNSt8__detail5__modIjLj0ELj1ELj0EEET_S1_
.Ltmp22:
	movl	%eax, -92(%rbp)                 # 4-byte Spill
	jmp	.LBB13_3
.LBB13_3:                               #   in Loop: Header=BB13_1 Depth=1
	movl	-92(%rbp), %eax                 # 4-byte Reload
	movl	%eax, -28(%rbp)
.Ltmp23:
	leaq	-28(%rbp), %rsi
	movq	-88(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt6vectorIjSaIjEE9push_backEOj
.Ltmp24:
	jmp	.LBB13_4
.LBB13_4:                               #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_5
.LBB13_5:                               #   in Loop: Header=BB13_1 Depth=1
	movq	-48(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB13_1
.LBB13_6:
.Ltmp25:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -56(%rbp)
	movl	%edx, -60(%rbp)
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt6vectorIjSaIjEED2Ev
	jmp	.LBB13_9
.LBB13_7:
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB13_10
# %bb.8:
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB13_9:
	.cfi_def_cfa %rbp, 16
	movq	-56(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.LBB13_10:
	callq	__stack_chk_fail@PLT
.Lfunc_end13:
	.size	_ZNSt8seed_seqC2IjEESt16initializer_listIT_E, .Lfunc_end13-_ZNSt8seed_seqC2IjEESt16initializer_listIT_E
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table13:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp21-.Lfunc_begin4          # >> Call Site 1 <<
	.uleb128 .Ltmp24-.Ltmp21                #   Call between .Ltmp21 and .Ltmp24
	.uleb128 .Ltmp25-.Lfunc_begin4          #     jumps to .Ltmp25
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Lfunc_end13-.Ltmp24           #   Call between .Ltmp24 and .Lfunc_end13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE4seedISt8seed_seqEENSt9enable_ifIXsr8__detail13__is_seed_seqIT_S0_mEE5valueEvE4typeERS4_,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE4seedISt8seed_seqEENSt9enable_ifIXsr8__detail13__is_seed_seqIT_S0_mEE5valueEvE4typeERS4_,comdat
	.weak	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE4seedISt8seed_seqEENSt9enable_ifIXsr8__detail13__is_seed_seqIT_S0_mEE5valueEvE4typeERS4_ # -- Begin function _ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE4seedISt8seed_seqEENSt9enable_ifIXsr8__detail13__is_seed_seqIT_S0_mEE5valueEvE4typeERS4_
	.p2align	4, 0x90
	.type	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE4seedISt8seed_seqEENSt9enable_ifIXsr8__detail13__is_seed_seqIT_S0_mEE5valueEvE4typeERS4_,@function
_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE4seedISt8seed_seqEENSt9enable_ifIXsr8__detail13__is_seed_seqIT_S0_mEE5valueEvE4typeERS4_: # @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE4seedISt8seed_seqEENSt9enable_ifIXsr8__detail13__is_seed_seqIT_S0_mEE5valueEvE4typeERS4_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$2592, %rsp                     # imm = 0xA20
	leaq	-2512(%rbp), %rax
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	movq	%rdi, -2520(%rbp)
	movq	%rsi, -2528(%rbp)
	movq	-2520(%rbp), %rcx
	movq	$-2147483648, -2536(%rbp)       # imm = 0x80000000
	movq	$2, -2544(%rbp)
	movq	-2528(%rbp), %rdi
	movq	%rax, %rdx
	addq	$2496, %rdx                     # imm = 0x9C0
	movq	%rax, %rsi
	movq	%rcx, -2592(%rbp)               # 8-byte Spill
	callq	_ZNSt8seed_seq8generateIPjEEvT_S2_
	movb	$1, -2545(%rbp)
	movq	$0, -2560(%rbp)
.LBB14_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_3 Depth 2
	cmpq	$312, -2560(%rbp)               # imm = 0x138
	jae	.LBB14_17
# %bb.2:                                #   in Loop: Header=BB14_1 Depth=1
	movq	$1, -2568(%rbp)
	movq	$0, -2576(%rbp)
	movq	$0, -2584(%rbp)
.LBB14_3:                               #   Parent Loop BB14_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$2, -2584(%rbp)
	jae	.LBB14_6
# %bb.4:                                #   in Loop: Header=BB14_3 Depth=2
	movq	-2560(%rbp), %rax
	shlq	$1, %rax
	addq	-2584(%rbp), %rax
	movl	-2512(%rbp,%rax,4), %ecx
	movl	%ecx, %eax
	imulq	-2568(%rbp), %rax
	addq	-2576(%rbp), %rax
	movq	%rax, -2576(%rbp)
	movq	-2568(%rbp), %rax
	shlq	$32, %rax
	movq	%rax, -2568(%rbp)
# %bb.5:                                #   in Loop: Header=BB14_3 Depth=2
	movq	-2584(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -2584(%rbp)
	jmp	.LBB14_3
.LBB14_6:                               #   in Loop: Header=BB14_1 Depth=1
	movq	-2576(%rbp), %rdi
	callq	_ZNSt8__detail5__modImLm0ELm1ELm0EEET_S1_
	movq	-2560(%rbp), %rcx
	movq	-2592(%rbp), %rdx               # 8-byte Reload
	movq	%rax, (%rdx,%rcx,8)
	testb	$1, -2545(%rbp)
	je	.LBB14_15
# %bb.7:                                #   in Loop: Header=BB14_1 Depth=1
	cmpq	$0, -2560(%rbp)
	jne	.LBB14_11
# %bb.8:                                #   in Loop: Header=BB14_1 Depth=1
	movq	-2592(%rbp), %rax               # 8-byte Reload
	movq	(%rax), %rcx
	andq	$-2147483648, %rcx              # imm = 0x80000000
	cmpq	$0, %rcx
	je	.LBB14_10
# %bb.9:                                #   in Loop: Header=BB14_1 Depth=1
	movb	$0, -2545(%rbp)
.LBB14_10:                              #   in Loop: Header=BB14_1 Depth=1
	jmp	.LBB14_14
.LBB14_11:                              #   in Loop: Header=BB14_1 Depth=1
	movq	-2560(%rbp), %rax
	movq	-2592(%rbp), %rcx               # 8-byte Reload
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB14_13
# %bb.12:                               #   in Loop: Header=BB14_1 Depth=1
	movb	$0, -2545(%rbp)
.LBB14_13:                              #   in Loop: Header=BB14_1 Depth=1
	jmp	.LBB14_14
.LBB14_14:                              #   in Loop: Header=BB14_1 Depth=1
	jmp	.LBB14_15
.LBB14_15:                              #   in Loop: Header=BB14_1 Depth=1
	jmp	.LBB14_16
.LBB14_16:                              #   in Loop: Header=BB14_1 Depth=1
	movq	-2560(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -2560(%rbp)
	jmp	.LBB14_1
.LBB14_17:
	testb	$1, -2545(%rbp)
	je	.LBB14_19
# %bb.18:
	movabsq	$-9223372036854775808, %rax     # imm = 0x8000000000000000
	movq	-2592(%rbp), %rcx               # 8-byte Reload
	movq	%rax, (%rcx)
.LBB14_19:
	movq	-2592(%rbp), %rax               # 8-byte Reload
	movq	$312, 2496(%rax)                # imm = 0x138
	movq	%fs:40, %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	jne	.LBB14_21
# %bb.20:
	addq	$2592, %rsp                     # imm = 0xA20
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB14_21:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end14:
	.size	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE4seedISt8seed_seqEENSt9enable_ifIXsr8__detail13__is_seed_seqIT_S0_mEE5valueEvE4typeERS4_, .Lfunc_end14-_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE4seedISt8seed_seqEENSt9enable_ifIXsr8__detail13__is_seed_seqIT_S0_mEE5valueEvE4typeERS4_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8seed_seqD2Ev,"axG",@progbits,_ZNSt8seed_seqD2Ev,comdat
	.weak	_ZNSt8seed_seqD2Ev              # -- Begin function _ZNSt8seed_seqD2Ev
	.p2align	4, 0x90
	.type	_ZNSt8seed_seqD2Ev,@function
_ZNSt8seed_seqD2Ev:                     # @_ZNSt8seed_seqD2Ev
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
	callq	_ZNSt6vectorIjSaIjEED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end15:
	.size	_ZNSt8seed_seqD2Ev, .Lfunc_end15-_ZNSt8seed_seqD2Ev
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_Z8randRealv                    # -- Begin function _Z8randRealv
	.p2align	4, 0x90
	.type	_Z8randRealv,@function
_Z8randRealv:                           # @_Z8randRealv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	unif(%rip), %rdi
	leaq	rng(%rip), %rsi
	callq	_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_
	cvtsd2ss	%xmm0, %xmm0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end16:
	.size	_Z8randRealv, .Lfunc_end16-_Z8randRealv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_,"axG",@progbits,_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_,comdat
	.weak	_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_ # -- Begin function _ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_
	.p2align	4, 0x90
	.type	_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_,@function
_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_: # @_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_
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
	movq	%rax, %rdx
	callq	_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_RKNS0_10param_typeE
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end17:
	.size	_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_, .Lfunc_end17-_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function _Z10randomBitsv
.LCPI18_0:
	.quad	0x3fe0000000000000              # double 0.5
	.text
	.globl	_Z10randomBitsv
	.p2align	4, 0x90
	.type	_Z10randomBitsv,@function
_Z10randomBitsv:                        # @_Z10randomBitsv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	$0, -8(%rbp)
	movq	$1, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB18_1:                               # =>This Inner Loop Header: Depth=1
	cmpl	$64, -20(%rbp)
	jge	.LBB18_6
# %bb.2:                                #   in Loop: Header=BB18_1 Depth=1
	callq	_Z8randRealv
	movsd	.LCPI18_0(%rip), %xmm1          # xmm1 = mem[0],zero
	cvtss2sd	%xmm0, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB18_4
# %bb.3:                                #   in Loop: Header=BB18_1 Depth=1
	movq	-16(%rbp), %rax
	orq	-8(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB18_4:                               #   in Loop: Header=BB18_1 Depth=1
	movq	-16(%rbp), %rax
	shlq	$1, %rax
	movq	%rax, -16(%rbp)
# %bb.5:                                #   in Loop: Header=BB18_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB18_1
.LBB18_6:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end18:
	.size	_Z10randomBitsv, .Lfunc_end18-_Z10randomBitsv
	.cfi_endproc
                                        # -- End function
	.globl	_Z4haddm                        # -- Begin function _Z4haddm
	.p2align	4, 0x90
	.type	_Z4haddm,@function
_Z4haddm:                               # @_Z4haddm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	shrq	$1, %rax
	movabsq	$6148914691236517205, %rcx      # imm = 0x5555555555555555
	andq	%rcx, %rax
	movq	-8(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -8(%rbp)
	movabsq	$3689348814741910323, %rax      # imm = 0x3333333333333333
	andq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	shrq	$2, %rcx
	movabsq	$3689348814741910323, %rdx      # imm = 0x3333333333333333
	andq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	shrq	$4, %rcx
	addq	%rcx, %rax
	movabsq	$1085102592571150095, %rcx      # imm = 0xF0F0F0F0F0F0F0F
	andq	%rcx, %rax
	movq	%rax, -8(%rbp)
	movabsq	$72340172838076673, %rax        # imm = 0x101010101010101
	imulq	-8(%rbp), %rax
	shrq	$56, %rax
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end19:
	.size	_Z4haddm, .Lfunc_end19-_Z4haddm
	.cfi_endproc
                                        # -- End function
	.globl	_Z10bitscanAllmR7u64List        # -- Begin function _Z10bitscanAllmR7u64List
	.p2align	4, 0x90
	.type	_Z10bitscanAllmR7u64List,@function
_Z10bitscanAllmR7u64List:               # @_Z10bitscanAllmR7u64List
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
	movq	-16(%rbp), %rdi
	callq	_ZN7u64List5ClearEv
	movl	$0, -20(%rbp)
.LBB20_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_5 Depth 2
	cmpl	$64, -20(%rbp)
	jge	.LBB20_12
# %bb.2:                                #   in Loop: Header=BB20_1 Depth=1
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
                                        # kill: def $cl killed $rcx
	shrq	%cl, %rax
	andq	$255, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jne	.LBB20_4
# %bb.3:                                #   in Loop: Header=BB20_1 Depth=1
	jmp	.LBB20_11
.LBB20_4:                               #   in Loop: Header=BB20_1 Depth=1
	movslq	-24(%rbp), %rax
	shlq	$9, %rax
	leaq	bitscan_cache(%rip), %rcx
	addq	%rax, %rcx
	movl	-20(%rbp), %eax
	cltd
	movl	$8, %esi
	idivl	%esi
	movslq	%eax, %rdi
	shlq	$6, %rdi
	addq	%rdi, %rcx
	movq	%rcx, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB20_5:                               #   Parent Loop BB20_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$8, -36(%rbp)
	movb	%al, -37(%rbp)                  # 1-byte Spill
	jge	.LBB20_7
# %bb.6:                                #   in Loop: Header=BB20_5 Depth=2
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	cmpq	$0, (%rax,%rcx,8)
	setne	%dl
	movb	%dl, -37(%rbp)                  # 1-byte Spill
.LBB20_7:                               #   in Loop: Header=BB20_5 Depth=2
	movb	-37(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB20_8
	jmp	.LBB20_10
.LBB20_8:                               #   in Loop: Header=BB20_5 Depth=2
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	callq	_ZN7u64List6AppendEm
# %bb.9:                                #   in Loop: Header=BB20_5 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB20_5
.LBB20_10:                              #   in Loop: Header=BB20_1 Depth=1
	jmp	.LBB20_11
.LBB20_11:                              #   in Loop: Header=BB20_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB20_1
.LBB20_12:
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end20:
	.size	_Z10bitscanAllmR7u64List, .Lfunc_end20-_Z10bitscanAllmR7u64List
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN7u64List5ClearEv,"axG",@progbits,_ZN7u64List5ClearEv,comdat
	.weak	_ZN7u64List5ClearEv             # -- Begin function _ZN7u64List5ClearEv
	.p2align	4, 0x90
	.type	_ZN7u64List5ClearEv,@function
_ZN7u64List5ClearEv:                    # @_ZN7u64List5ClearEv
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
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end21:
	.size	_ZN7u64List5ClearEv, .Lfunc_end21-_ZN7u64List5ClearEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN7u64List6AppendEm,"axG",@progbits,_ZN7u64List6AppendEm,comdat
	.weak	_ZN7u64List6AppendEm            # -- Begin function _ZN7u64List6AppendEm
	.p2align	4, 0x90
	.type	_ZN7u64List6AppendEm,@function
_ZN7u64List6AppendEm:                   # @_ZN7u64List6AppendEm
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
	movl	512(%rax), %edx
	movl	%edx, %r8d
	addl	$1, %r8d
	movl	%r8d, 512(%rax)
	movslq	%edx, %rsi
	movq	%rcx, (%rax,%rsi,8)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end22:
	.size	_ZN7u64List6AppendEm, .Lfunc_end22-_ZN7u64List6AppendEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8__detail14__to_chars_lenIjEEjT_i,"axG",@progbits,_ZNSt8__detail14__to_chars_lenIjEEjT_i,comdat
	.weak	_ZNSt8__detail14__to_chars_lenIjEEjT_i # -- Begin function _ZNSt8__detail14__to_chars_lenIjEEjT_i
	.p2align	4, 0x90
	.type	_ZNSt8__detail14__to_chars_lenIjEEjT_i,@function
_ZNSt8__detail14__to_chars_lenIjEEjT_i: # @_ZNSt8__detail14__to_chars_lenIjEEjT_i
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$1, -16(%rbp)
	movl	-12(%rbp), %eax
	imull	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	imull	-12(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	imull	-12(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)
.LBB23_1:                               # =>This Inner Loop Header: Depth=1
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jae	.LBB23_3
# %bb.2:
	movl	-16(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB23_10
.LBB23_3:                               #   in Loop: Header=BB23_1 Depth=1
	movl	-8(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jae	.LBB23_5
# %bb.4:
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB23_10
.LBB23_5:                               #   in Loop: Header=BB23_1 Depth=1
	movl	-8(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jae	.LBB23_7
# %bb.6:
	movl	-16(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB23_10
.LBB23_7:                               #   in Loop: Header=BB23_1 Depth=1
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	cmpq	-32(%rbp), %rcx
	jae	.LBB23_9
# %bb.8:
	movl	-16(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB23_10
.LBB23_9:                               #   in Loop: Header=BB23_1 Depth=1
	movq	-32(%rbp), %rax
	movl	-8(%rbp), %ecx
	movl	%ecx, %edx
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	%rdx, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-40(%rbp), %rsi                 # 8-byte Reload
	divq	%rsi
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -8(%rbp)
	movl	-16(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB23_1
.LBB23_10:
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end23:
	.size	_ZNSt8__detail14__to_chars_lenIjEEjT_i, .Lfunc_end23-_ZNSt8__detail14__to_chars_lenIjEEjT_i
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_,"axG",@progbits,_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_,comdat
	.weak	_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_ # -- Begin function _ZNSt8__detail18__to_chars_10_implIjEEvPcjT_
	.p2align	4, 0x90
	.type	_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_,@function
_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_: # @_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -20(%rbp)
.LBB24_1:                               # =>This Inner Loop Header: Depth=1
	cmpl	$100, -16(%rbp)
	jb	.LBB24_3
# %bb.2:                                #   in Loop: Header=BB24_1 Depth=1
	movl	-16(%rbp), %eax
	xorl	%edx, %edx
	movl	$100, %ecx
	divl	%ecx
	shll	$1, %edx
	movl	%edx, -24(%rbp)
	movl	-16(%rbp), %edx
	movl	%edx, %eax
	xorl	%edx, %edx
	divl	%ecx
	movl	%eax, -16(%rbp)
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %esi
	leaq	_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits(%rip), %rdi
	movb	(%rdi,%rsi), %r8b
	movq	-8(%rbp), %rsi
	movl	-20(%rbp), %eax
	movl	%eax, %r9d
	movb	%r8b, (%rsi,%r9)
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	movb	(%rdi,%rsi), %r8b
	movq	-8(%rbp), %rsi
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	movb	%r8b, (%rsi,%rdi)
	movl	-20(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB24_1
.LBB24_3:
	cmpl	$10, -16(%rbp)
	jb	.LBB24_5
# %bb.4:
	movl	-16(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	leaq	_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits(%rip), %rdx
	movb	(%rdx,%rcx), %sil
	movq	-8(%rbp), %rcx
	movb	%sil, 1(%rcx)
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	movb	(%rdx,%rcx), %sil
	movq	-8(%rbp), %rcx
	movb	%sil, (%rcx)
	jmp	.LBB24_6
.LBB24_5:
	movl	-16(%rbp), %eax
	addl	$48, %eax
                                        # kill: def $al killed $al killed $eax
	movq	-8(%rbp), %rcx
	movb	%al, (%rcx)
.LBB24_6:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end24:
	.size	_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_, .Lfunc_end24-_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIjSaIjEED2Ev,"axG",@progbits,_ZNSt6vectorIjSaIjEED2Ev,comdat
	.weak	_ZNSt6vectorIjSaIjEED2Ev        # -- Begin function _ZNSt6vectorIjSaIjEED2Ev
	.p2align	4, 0x90
	.type	_ZNSt6vectorIjSaIjEED2Ev,@function
_ZNSt6vectorIjSaIjEED2Ev:               # @_ZNSt6vectorIjSaIjEED2Ev
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movq	8(%rax), %rsi
	movq	%rdi, -32(%rbp)                 # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	%rsi, -48(%rbp)                 # 8-byte Spill
	callq	_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv
.Ltmp26:
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	-48(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E
.Ltmp27:
	jmp	.LBB25_1
.LBB25_1:
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZNSt12_Vector_baseIjSaIjEED2Ev
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB25_2:
	.cfi_def_cfa %rbp, 16
.Ltmp28:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZNSt12_Vector_baseIjSaIjEED2Ev
# %bb.3:
	movq	-16(%rbp), %rdi
	callq	__clang_call_terminate
.Lfunc_end25:
	.size	_ZNSt6vectorIjSaIjEED2Ev, .Lfunc_end25-_ZNSt6vectorIjSaIjEED2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table25:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	156                             # @TType Encoding = indirect pcrel sdata8
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp26-.Lfunc_begin5          # >> Call Site 1 <<
	.uleb128 .Ltmp27-.Ltmp26                #   Call between .Ltmp26 and .Ltmp27
	.uleb128 .Ltmp28-.Lfunc_begin5          #     jumps to .Ltmp28
	.byte	1                               #   On action: 1
.Lcst_end5:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2
                                        # -- End function
	.section	.text._ZSt8_DestroyIPjjEvT_S1_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E # -- Begin function _ZSt8_DestroyIPjjEvT_S1_RSaIT0_E
	.p2align	4, 0x90
	.type	_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E,@function
_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E:       # @_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E
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
	callq	_ZSt8_DestroyIPjEvT_S1_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end26:
	.size	_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E, .Lfunc_end26-_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv,comdat
	.weak	_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv # -- Begin function _ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv,@function
_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv: # @_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv
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
	.size	_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv, .Lfunc_end27-_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIjSaIjEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIjSaIjEED2Ev,comdat
	.weak	_ZNSt12_Vector_baseIjSaIjEED2Ev # -- Begin function _ZNSt12_Vector_baseIjSaIjEED2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIjSaIjEED2Ev,@function
_ZNSt12_Vector_baseIjSaIjEED2Ev:        # @_ZNSt12_Vector_baseIjSaIjEED2Ev
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
	sarq	$2, %rdx
.Ltmp29:
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	callq	_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm
.Ltmp30:
	jmp	.LBB28_1
.LBB28_1:
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt12_Vector_baseIjSaIjEE12_Vector_implD2Ev
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB28_2:
	.cfi_def_cfa %rbp, 16
.Ltmp31:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt12_Vector_baseIjSaIjEE12_Vector_implD2Ev
# %bb.3:
	movq	-16(%rbp), %rdi
	callq	__clang_call_terminate
.Lfunc_end28:
	.size	_ZNSt12_Vector_baseIjSaIjEED2Ev, .Lfunc_end28-_ZNSt12_Vector_baseIjSaIjEED2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table28:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	156                             # @TType Encoding = indirect pcrel sdata8
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Ltmp29-.Lfunc_begin6          # >> Call Site 1 <<
	.uleb128 .Ltmp30-.Ltmp29                #   Call between .Ltmp29 and .Ltmp30
	.uleb128 .Ltmp31-.Lfunc_begin6          #     jumps to .Ltmp31
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
.Lfunc_end29:
	.size	__clang_call_terminate, .Lfunc_end29-__clang_call_terminate
                                        # -- End function
	.section	.text._ZSt8_DestroyIPjEvT_S1_,"axG",@progbits,_ZSt8_DestroyIPjEvT_S1_,comdat
	.weak	_ZSt8_DestroyIPjEvT_S1_         # -- Begin function _ZSt8_DestroyIPjEvT_S1_
	.p2align	4, 0x90
	.type	_ZSt8_DestroyIPjEvT_S1_,@function
_ZSt8_DestroyIPjEvT_S1_:                # @_ZSt8_DestroyIPjEvT_S1_
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
	callq	_ZNSt12_Destroy_auxILb1EE9__destroyIPjEEvT_S3_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end30:
	.size	_ZSt8_DestroyIPjEvT_S1_, .Lfunc_end30-_ZSt8_DestroyIPjEvT_S1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPjEEvT_S3_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPjEEvT_S3_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPjEEvT_S3_ # -- Begin function _ZNSt12_Destroy_auxILb1EE9__destroyIPjEEvT_S3_
	.p2align	4, 0x90
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPjEEvT_S3_,@function
_ZNSt12_Destroy_auxILb1EE9__destroyIPjEEvT_S3_: # @_ZNSt12_Destroy_auxILb1EE9__destroyIPjEEvT_S3_
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
.Lfunc_end31:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPjEEvT_S3_, .Lfunc_end31-_ZNSt12_Destroy_auxILb1EE9__destroyIPjEEvT_S3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm,"axG",@progbits,_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm,comdat
	.weak	_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm # -- Begin function _ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm,@function
_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm: # @_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm
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
	je	.LBB32_2
# %bb.1:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	_ZNSt16allocator_traitsISaIjEE10deallocateERS0_Pjm
.LBB32_2:
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end32:
	.size	_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm, .Lfunc_end32-_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIjSaIjEE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseIjSaIjEE12_Vector_implD2Ev,comdat
	.weak	_ZNSt12_Vector_baseIjSaIjEE12_Vector_implD2Ev # -- Begin function _ZNSt12_Vector_baseIjSaIjEE12_Vector_implD2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIjSaIjEE12_Vector_implD2Ev,@function
_ZNSt12_Vector_baseIjSaIjEE12_Vector_implD2Ev: # @_ZNSt12_Vector_baseIjSaIjEE12_Vector_implD2Ev
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
	callq	_ZNSaIjED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end33:
	.size	_ZNSt12_Vector_baseIjSaIjEE12_Vector_implD2Ev, .Lfunc_end33-_ZNSt12_Vector_baseIjSaIjEE12_Vector_implD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaIjEE10deallocateERS0_Pjm,"axG",@progbits,_ZNSt16allocator_traitsISaIjEE10deallocateERS0_Pjm,comdat
	.weak	_ZNSt16allocator_traitsISaIjEE10deallocateERS0_Pjm # -- Begin function _ZNSt16allocator_traitsISaIjEE10deallocateERS0_Pjm
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaIjEE10deallocateERS0_Pjm,@function
_ZNSt16allocator_traitsISaIjEE10deallocateERS0_Pjm: # @_ZNSt16allocator_traitsISaIjEE10deallocateERS0_Pjm
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
	callq	_ZN9__gnu_cxx13new_allocatorIjE10deallocateEPjm
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end34:
	.size	_ZNSt16allocator_traitsISaIjEE10deallocateERS0_Pjm, .Lfunc_end34-_ZNSt16allocator_traitsISaIjEE10deallocateERS0_Pjm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIjE10deallocateEPjm,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIjE10deallocateEPjm,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIjE10deallocateEPjm # -- Begin function _ZN9__gnu_cxx13new_allocatorIjE10deallocateEPjm
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIjE10deallocateEPjm,@function
_ZN9__gnu_cxx13new_allocatorIjE10deallocateEPjm: # @_ZN9__gnu_cxx13new_allocatorIjE10deallocateEPjm
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
.Lfunc_end35:
	.size	_ZN9__gnu_cxx13new_allocatorIjE10deallocateEPjm, .Lfunc_end35-_ZN9__gnu_cxx13new_allocatorIjE10deallocateEPjm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSaIjED2Ev,"axG",@progbits,_ZNSaIjED2Ev,comdat
	.weak	_ZNSaIjED2Ev                    # -- Begin function _ZNSaIjED2Ev
	.p2align	4, 0x90
	.type	_ZNSaIjED2Ev,@function
_ZNSaIjED2Ev:                           # @_ZNSaIjED2Ev
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
	callq	_ZN9__gnu_cxx13new_allocatorIjED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end36:
	.size	_ZNSaIjED2Ev, .Lfunc_end36-_ZNSaIjED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIjED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIjED2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIjED2Ev # -- Begin function _ZN9__gnu_cxx13new_allocatorIjED2Ev
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIjED2Ev,@function
_ZN9__gnu_cxx13new_allocatorIjED2Ev:    # @_ZN9__gnu_cxx13new_allocatorIjED2Ev
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
.Lfunc_end37:
	.size	_ZN9__gnu_cxx13new_allocatorIjED2Ev, .Lfunc_end37-_ZN9__gnu_cxx13new_allocatorIjED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_,"axG",@progbits,_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_,comdat
	.weak	_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_ # -- Begin function _ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_
	.p2align	4, 0x90
	.type	_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_,@function
_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_: # @_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_
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
.Lfunc_end38:
	.size	_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_, .Lfunc_end38-_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt25uniform_real_distributionIdE10param_typeC2Edd,"axG",@progbits,_ZNSt25uniform_real_distributionIdE10param_typeC2Edd,comdat
	.weak	_ZNSt25uniform_real_distributionIdE10param_typeC2Edd # -- Begin function _ZNSt25uniform_real_distributionIdE10param_typeC2Edd
	.p2align	4, 0x90
	.type	_ZNSt25uniform_real_distributionIdE10param_typeC2Edd,@function
_ZNSt25uniform_real_distributionIdE10param_typeC2Edd: # @_ZNSt25uniform_real_distributionIdE10param_typeC2Edd
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	-8(%rbp), %rax
	movsd	-16(%rbp), %xmm0                # xmm0 = mem[0],zero
	movsd	%xmm0, (%rax)
	movsd	-24(%rbp), %xmm0                # xmm0 = mem[0],zero
	movsd	%xmm0, 8(%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end39:
	.size	_ZNSt25uniform_real_distributionIdE10param_typeC2Edd, .Lfunc_end39-_ZNSt25uniform_real_distributionIdE10param_typeC2Edd
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em,comdat
	.weak	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em # -- Begin function _ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em
	.p2align	4, 0x90
	.type	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em,@function
_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em: # @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em
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
	callq	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE4seedEm
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end40:
	.size	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em, .Lfunc_end40-_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8__detail5__modImLm0ELm1ELm0EEET_S1_,"axG",@progbits,_ZNSt8__detail5__modImLm0ELm1ELm0EEET_S1_,comdat
	.weak	_ZNSt8__detail5__modImLm0ELm1ELm0EEET_S1_ # -- Begin function _ZNSt8__detail5__modImLm0ELm1ELm0EEET_S1_
	.p2align	4, 0x90
	.type	_ZNSt8__detail5__modImLm0ELm1ELm0EEET_S1_,@function
_ZNSt8__detail5__modImLm0ELm1ELm0EEET_S1_: # @_ZNSt8__detail5__modImLm0ELm1ELm0EEET_S1_
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
	callq	_ZNSt8__detail4_ModImLm0ELm1ELm0ELb1ELb0EE6__calcEm
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end41:
	.size	_ZNSt8__detail5__modImLm0ELm1ELm0EEET_S1_, .Lfunc_end41-_ZNSt8__detail5__modImLm0ELm1ELm0EEET_S1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8__detail5__modImLm312ELm1ELm0EEET_S1_,"axG",@progbits,_ZNSt8__detail5__modImLm312ELm1ELm0EEET_S1_,comdat
	.weak	_ZNSt8__detail5__modImLm312ELm1ELm0EEET_S1_ # -- Begin function _ZNSt8__detail5__modImLm312ELm1ELm0EEET_S1_
	.p2align	4, 0x90
	.type	_ZNSt8__detail5__modImLm312ELm1ELm0EEET_S1_,@function
_ZNSt8__detail5__modImLm312ELm1ELm0EEET_S1_: # @_ZNSt8__detail5__modImLm312ELm1ELm0EEET_S1_
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
	callq	_ZNSt8__detail4_ModImLm312ELm1ELm0ELb1ELb1EE6__calcEm
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end42:
	.size	_ZNSt8__detail5__modImLm312ELm1ELm0EEET_S1_, .Lfunc_end42-_ZNSt8__detail5__modImLm312ELm1ELm0EEET_S1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8__detail4_ModImLm0ELm1ELm0ELb1ELb0EE6__calcEm,"axG",@progbits,_ZNSt8__detail4_ModImLm0ELm1ELm0ELb1ELb0EE6__calcEm,comdat
	.weak	_ZNSt8__detail4_ModImLm0ELm1ELm0ELb1ELb0EE6__calcEm # -- Begin function _ZNSt8__detail4_ModImLm0ELm1ELm0ELb1ELb0EE6__calcEm
	.p2align	4, 0x90
	.type	_ZNSt8__detail4_ModImLm0ELm1ELm0ELb1ELb0EE6__calcEm,@function
_ZNSt8__detail4_ModImLm0ELm1ELm0ELb1ELb0EE6__calcEm: # @_ZNSt8__detail4_ModImLm0ELm1ELm0ELb1ELb0EE6__calcEm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	shlq	$0, %rax
	addq	$0, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end43:
	.size	_ZNSt8__detail4_ModImLm0ELm1ELm0ELb1ELb0EE6__calcEm, .Lfunc_end43-_ZNSt8__detail4_ModImLm0ELm1ELm0ELb1ELb0EE6__calcEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8__detail4_ModImLm312ELm1ELm0ELb1ELb1EE6__calcEm,"axG",@progbits,_ZNSt8__detail4_ModImLm312ELm1ELm0ELb1ELb1EE6__calcEm,comdat
	.weak	_ZNSt8__detail4_ModImLm312ELm1ELm0ELb1ELb1EE6__calcEm # -- Begin function _ZNSt8__detail4_ModImLm312ELm1ELm0ELb1ELb1EE6__calcEm
	.p2align	4, 0x90
	.type	_ZNSt8__detail4_ModImLm312ELm1ELm0ELb1ELb1EE6__calcEm,@function
_ZNSt8__detail4_ModImLm312ELm1ELm0ELb1ELb1EE6__calcEm: # @_ZNSt8__detail4_ModImLm312ELm1ELm0ELb1ELb1EE6__calcEm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	shlq	$0, %rax
	addq	$0, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$312, %esi                      # imm = 0x138
	divq	%rsi
	movq	%rdx, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end44:
	.size	_ZNSt8__detail4_ModImLm312ELm1ELm0ELb1ELb1EE6__calcEm, .Lfunc_end44-_ZNSt8__detail4_ModImLm312ELm1ELm0ELb1ELb1EE6__calcEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIjSaIjEEC2Ev,"axG",@progbits,_ZNSt6vectorIjSaIjEEC2Ev,comdat
	.weak	_ZNSt6vectorIjSaIjEEC2Ev        # -- Begin function _ZNSt6vectorIjSaIjEEC2Ev
	.p2align	4, 0x90
	.type	_ZNSt6vectorIjSaIjEEC2Ev,@function
_ZNSt6vectorIjSaIjEEC2Ev:               # @_ZNSt6vectorIjSaIjEEC2Ev
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
	callq	_ZNSt12_Vector_baseIjSaIjEEC2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end45:
	.size	_ZNSt6vectorIjSaIjEEC2Ev, .Lfunc_end45-_ZNSt6vectorIjSaIjEEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt16initializer_listIjE5beginEv,"axG",@progbits,_ZNKSt16initializer_listIjE5beginEv,comdat
	.weak	_ZNKSt16initializer_listIjE5beginEv # -- Begin function _ZNKSt16initializer_listIjE5beginEv
	.p2align	4, 0x90
	.type	_ZNKSt16initializer_listIjE5beginEv,@function
_ZNKSt16initializer_listIjE5beginEv:    # @_ZNKSt16initializer_listIjE5beginEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end46:
	.size	_ZNKSt16initializer_listIjE5beginEv, .Lfunc_end46-_ZNKSt16initializer_listIjE5beginEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt16initializer_listIjE3endEv,"axG",@progbits,_ZNKSt16initializer_listIjE3endEv,comdat
	.weak	_ZNKSt16initializer_listIjE3endEv # -- Begin function _ZNKSt16initializer_listIjE3endEv
	.p2align	4, 0x90
	.type	_ZNKSt16initializer_listIjE3endEv,@function
_ZNKSt16initializer_listIjE3endEv:      # @_ZNKSt16initializer_listIjE3endEv
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
	movq	%rax, %rdi
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	callq	_ZNKSt16initializer_listIjE5beginEv
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	callq	_ZNKSt16initializer_listIjE4sizeEv
	shlq	$2, %rax
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end47:
	.size	_ZNKSt16initializer_listIjE3endEv, .Lfunc_end47-_ZNKSt16initializer_listIjE3endEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIjSaIjEE9push_backEOj,"axG",@progbits,_ZNSt6vectorIjSaIjEE9push_backEOj,comdat
	.weak	_ZNSt6vectorIjSaIjEE9push_backEOj # -- Begin function _ZNSt6vectorIjSaIjEE9push_backEOj
	.p2align	4, 0x90
	.type	_ZNSt6vectorIjSaIjEE9push_backEOj,@function
_ZNSt6vectorIjSaIjEE9push_backEOj:      # @_ZNSt6vectorIjSaIjEE9push_backEOj
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
	movq	-16(%rbp), %rax
	movq	%rdi, -24(%rbp)                 # 8-byte Spill
	movq	%rax, %rdi
	callq	_ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rsi
	callq	_ZNSt6vectorIjSaIjEE12emplace_backIJjEEEvDpOT_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end48:
	.size	_ZNSt6vectorIjSaIjEE9push_backEOj, .Lfunc_end48-_ZNSt6vectorIjSaIjEE9push_backEOj
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8__detail5__modIjLj0ELj1ELj0EEET_S1_,"axG",@progbits,_ZNSt8__detail5__modIjLj0ELj1ELj0EEET_S1_,comdat
	.weak	_ZNSt8__detail5__modIjLj0ELj1ELj0EEET_S1_ # -- Begin function _ZNSt8__detail5__modIjLj0ELj1ELj0EEET_S1_
	.p2align	4, 0x90
	.type	_ZNSt8__detail5__modIjLj0ELj1ELj0EEET_S1_,@function
_ZNSt8__detail5__modIjLj0ELj1ELj0EEET_S1_: # @_ZNSt8__detail5__modIjLj0ELj1ELj0EEET_S1_
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
	callq	_ZNSt8__detail4_ModIjLj0ELj1ELj0ELb1ELb0EE6__calcEj
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end49:
	.size	_ZNSt8__detail5__modIjLj0ELj1ELj0EEET_S1_, .Lfunc_end49-_ZNSt8__detail5__modIjLj0ELj1ELj0EEET_S1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIjSaIjEEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIjSaIjEEC2Ev,comdat
	.weak	_ZNSt12_Vector_baseIjSaIjEEC2Ev # -- Begin function _ZNSt12_Vector_baseIjSaIjEEC2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIjSaIjEEC2Ev,@function
_ZNSt12_Vector_baseIjSaIjEEC2Ev:        # @_ZNSt12_Vector_baseIjSaIjEEC2Ev
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
	callq	_ZNSt12_Vector_baseIjSaIjEE12_Vector_implC2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end50:
	.size	_ZNSt12_Vector_baseIjSaIjEEC2Ev, .Lfunc_end50-_ZNSt12_Vector_baseIjSaIjEEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIjSaIjEE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIjSaIjEE12_Vector_implC2Ev,comdat
	.weak	_ZNSt12_Vector_baseIjSaIjEE12_Vector_implC2Ev # -- Begin function _ZNSt12_Vector_baseIjSaIjEE12_Vector_implC2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIjSaIjEE12_Vector_implC2Ev,@function
_ZNSt12_Vector_baseIjSaIjEE12_Vector_implC2Ev: # @_ZNSt12_Vector_baseIjSaIjEE12_Vector_implC2Ev
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
	movq	%rax, %rcx
	movq	%rcx, %rdi
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	callq	_ZNSaIjEC2Ev
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end51:
	.size	_ZNSt12_Vector_baseIjSaIjEE12_Vector_implC2Ev, .Lfunc_end51-_ZNSt12_Vector_baseIjSaIjEE12_Vector_implC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSaIjEC2Ev,"axG",@progbits,_ZNSaIjEC2Ev,comdat
	.weak	_ZNSaIjEC2Ev                    # -- Begin function _ZNSaIjEC2Ev
	.p2align	4, 0x90
	.type	_ZNSaIjEC2Ev,@function
_ZNSaIjEC2Ev:                           # @_ZNSaIjEC2Ev
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
	callq	_ZN9__gnu_cxx13new_allocatorIjEC2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end52:
	.size	_ZNSaIjEC2Ev, .Lfunc_end52-_ZNSaIjEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC2Ev,comdat
	.weak	_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC2Ev # -- Begin function _ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC2Ev,@function
_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC2Ev: # @_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end53:
	.size	_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC2Ev, .Lfunc_end53-_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIjEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIjEC2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIjEC2Ev # -- Begin function _ZN9__gnu_cxx13new_allocatorIjEC2Ev
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIjEC2Ev,@function
_ZN9__gnu_cxx13new_allocatorIjEC2Ev:    # @_ZN9__gnu_cxx13new_allocatorIjEC2Ev
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
.Lfunc_end54:
	.size	_ZN9__gnu_cxx13new_allocatorIjEC2Ev, .Lfunc_end54-_ZN9__gnu_cxx13new_allocatorIjEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt16initializer_listIjE4sizeEv,"axG",@progbits,_ZNKSt16initializer_listIjE4sizeEv,comdat
	.weak	_ZNKSt16initializer_listIjE4sizeEv # -- Begin function _ZNKSt16initializer_listIjE4sizeEv
	.p2align	4, 0x90
	.type	_ZNKSt16initializer_listIjE4sizeEv,@function
_ZNKSt16initializer_listIjE4sizeEv:     # @_ZNKSt16initializer_listIjE4sizeEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end55:
	.size	_ZNKSt16initializer_listIjE4sizeEv, .Lfunc_end55-_ZNKSt16initializer_listIjE4sizeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIjSaIjEE12emplace_backIJjEEEvDpOT_,"axG",@progbits,_ZNSt6vectorIjSaIjEE12emplace_backIJjEEEvDpOT_,comdat
	.weak	_ZNSt6vectorIjSaIjEE12emplace_backIJjEEEvDpOT_ # -- Begin function _ZNSt6vectorIjSaIjEE12emplace_backIJjEEEvDpOT_
	.p2align	4, 0x90
	.type	_ZNSt6vectorIjSaIjEE12emplace_backIJjEEEvDpOT_,@function
_ZNSt6vectorIjSaIjEE12emplace_backIJjEEEvDpOT_: # @_ZNSt6vectorIjSaIjEE12emplace_backIJjEEEvDpOT_
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
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	cmpq	16(%rax), %rcx
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	je	.LBB56_2
# %bb.1:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	-32(%rbp), %rcx                 # 8-byte Reload
	movq	8(%rcx), %rsi
	movq	-16(%rbp), %rdi
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	%rsi, -48(%rbp)                 # 8-byte Spill
	callq	_ZSt7forwardIjEOT_RNSt16remove_referenceIS0_E4typeE
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movq	-48(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt16allocator_traitsISaIjEE9constructIjJjEEEvRS0_PT_DpOT0_
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	8(%rax), %rcx
	addq	$4, %rcx
	movq	%rcx, 8(%rax)
	jmp	.LBB56_3
.LBB56_2:
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt6vectorIjSaIjEE3endEv
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	_ZSt7forwardIjEOT_RNSt16remove_referenceIS0_E4typeE
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_
.LBB56_3:
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end56:
	.size	_ZNSt6vectorIjSaIjEE12emplace_backIJjEEEvDpOT_, .Lfunc_end56-_ZNSt6vectorIjSaIjEE12emplace_backIJjEEEvDpOT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_,"axG",@progbits,_ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_,comdat
	.weak	_ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_ # -- Begin function _ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_
	.p2align	4, 0x90
	.type	_ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_,@function
_ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_: # @_ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_
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
.Lfunc_end57:
	.size	_ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_, .Lfunc_end57-_ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaIjEE9constructIjJjEEEvRS0_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaIjEE9constructIjJjEEEvRS0_PT_DpOT0_,comdat
	.weak	_ZNSt16allocator_traitsISaIjEE9constructIjJjEEEvRS0_PT_DpOT0_ # -- Begin function _ZNSt16allocator_traitsISaIjEE9constructIjJjEEEvRS0_PT_DpOT0_
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaIjEE9constructIjJjEEEvRS0_PT_DpOT0_,@function
_ZNSt16allocator_traitsISaIjEE9constructIjJjEEEvRS0_PT_DpOT0_: # @_ZNSt16allocator_traitsISaIjEE9constructIjJjEEEvRS0_PT_DpOT0_
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
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movq	%rsi, -40(%rbp)                 # 8-byte Spill
	callq	_ZSt7forwardIjEOT_RNSt16remove_referenceIS0_E4typeE
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	-40(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZN9__gnu_cxx13new_allocatorIjE9constructIjJjEEEvPT_DpOT0_
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end58:
	.size	_ZNSt16allocator_traitsISaIjEE9constructIjJjEEEvRS0_PT_DpOT0_, .Lfunc_end58-_ZNSt16allocator_traitsISaIjEE9constructIjJjEEEvRS0_PT_DpOT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt7forwardIjEOT_RNSt16remove_referenceIS0_E4typeE,"axG",@progbits,_ZSt7forwardIjEOT_RNSt16remove_referenceIS0_E4typeE,comdat
	.weak	_ZSt7forwardIjEOT_RNSt16remove_referenceIS0_E4typeE # -- Begin function _ZSt7forwardIjEOT_RNSt16remove_referenceIS0_E4typeE
	.p2align	4, 0x90
	.type	_ZSt7forwardIjEOT_RNSt16remove_referenceIS0_E4typeE,@function
_ZSt7forwardIjEOT_RNSt16remove_referenceIS0_E4typeE: # @_ZSt7forwardIjEOT_RNSt16remove_referenceIS0_E4typeE
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
.Lfunc_end59:
	.size	_ZSt7forwardIjEOT_RNSt16remove_referenceIS0_E4typeE, .Lfunc_end59-_ZSt7forwardIjEOT_RNSt16remove_referenceIS0_E4typeE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_,"axG",@progbits,_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_,comdat
	.weak	_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_ # -- Begin function _ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_
	.p2align	4, 0x90
	.type	_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_,@function
_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_: # @_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_
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
	movq	%rsi, -16(%rbp)
	movq	%rdi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	leaq	.L.str.6(%rip), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	movq	%rax, -96(%rbp)                 # 8-byte Spill
	callq	_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc
	movq	%rax, -48(%rbp)
	movq	-96(%rbp), %rax                 # 8-byte Reload
	movq	(%rax), %rcx
	movq	%rcx, -56(%rbp)
	movq	8(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movq	%rax, %rdi
	callq	_ZNSt6vectorIjSaIjEE5beginEv
	movq	%rax, -24(%rbp)
	leaq	-16(%rbp), %rax
	leaq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rax, -104(%rbp)                # 8-byte Spill
	callq	_ZN9__gnu_cxxmiIPjSt6vectorIjSaIjEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rsi
	movq	-96(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rcx
	leaq	(%rax,%rcx,4), %rsi
	movq	-40(%rbp), %rdi
	movq	%rsi, -112(%rbp)                # 8-byte Spill
	callq	_ZSt7forwardIjEOT_RNSt16remove_referenceIS0_E4typeE
	movq	-96(%rbp), %rdi                 # 8-byte Reload
	movq	-112(%rbp), %rsi                # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt16allocator_traitsISaIjEE9constructIjJjEEEvRS0_PT_DpOT0_
	movq	$0, -88(%rbp)
	movq	-56(%rbp), %rdi
	movq	-104(%rbp), %rax                # 8-byte Reload
	movq	%rdi, -120(%rbp)                # 8-byte Spill
	movq	%rax, %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv
	movq	(%rax), %rsi
	movq	-80(%rbp), %rdx
	movq	-96(%rbp), %rdi                 # 8-byte Reload
	movq	%rsi, -128(%rbp)                # 8-byte Spill
	movq	%rdx, -136(%rbp)                # 8-byte Spill
	callq	_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv
	movq	-120(%rbp), %rdi                # 8-byte Reload
	movq	-128(%rbp), %rsi                # 8-byte Reload
	movq	-136(%rbp), %rdx                # 8-byte Reload
	movq	%rax, %rcx
	callq	_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -88(%rbp)
	movq	-104(%rbp), %rdi                # 8-byte Reload
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv
	movq	(%rax), %rdi
	movq	-64(%rbp), %rsi
	movq	-88(%rbp), %rdx
	movq	-96(%rbp), %rax                 # 8-byte Reload
	movq	%rdi, -144(%rbp)                # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -152(%rbp)                # 8-byte Spill
	movq	%rdx, -160(%rbp)                # 8-byte Spill
	callq	_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv
	movq	-144(%rbp), %rdi                # 8-byte Reload
	movq	-152(%rbp), %rsi                # 8-byte Reload
	movq	-160(%rbp), %rdx                # 8-byte Reload
	movq	%rax, %rcx
	callq	_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	-96(%rbp), %rcx                 # 8-byte Reload
	movq	16(%rcx), %rdx
	subq	%rax, %rdx
	sarq	$2, %rdx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm
	movq	-80(%rbp), %rax
	movq	-96(%rbp), %rcx                 # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%rcx)
	movq	-80(%rbp), %rax
	movq	-48(%rbp), %rdx
	leaq	(%rax,%rdx,4), %rax
	movq	%rax, 16(%rcx)
	movq	%fs:40, %rax
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rax
	jne	.LBB60_2
# %bb.1:
	addq	$160, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB60_2:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end60:
	.size	_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_, .Lfunc_end60-_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIjSaIjEE3endEv,"axG",@progbits,_ZNSt6vectorIjSaIjEE3endEv,comdat
	.weak	_ZNSt6vectorIjSaIjEE3endEv      # -- Begin function _ZNSt6vectorIjSaIjEE3endEv
	.p2align	4, 0x90
	.type	_ZNSt6vectorIjSaIjEE3endEv,@function
_ZNSt6vectorIjSaIjEE3endEv:             # @_ZNSt6vectorIjSaIjEE3endEv
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
	callq	_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEC2ERKS1_
	movq	-16(%rbp), %rax
	movq	%fs:40, %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	jne	.LBB61_2
# %bb.1:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB61_2:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end61:
	.size	_ZNSt6vectorIjSaIjEE3endEv, .Lfunc_end61-_ZNSt6vectorIjSaIjEE3endEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIjE9constructIjJjEEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIjE9constructIjJjEEEvPT_DpOT0_,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIjE9constructIjJjEEEvPT_DpOT0_ # -- Begin function _ZN9__gnu_cxx13new_allocatorIjE9constructIjJjEEEvPT_DpOT0_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIjE9constructIjJjEEEvPT_DpOT0_,@function
_ZN9__gnu_cxx13new_allocatorIjE9constructIjJjEEEvPT_DpOT0_: # @_ZN9__gnu_cxx13new_allocatorIjE9constructIjJjEEEvPT_DpOT0_
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
	movq	-24(%rbp), %rdi
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	callq	_ZSt7forwardIjEOT_RNSt16remove_referenceIS0_E4typeE
	movl	(%rax), %ecx
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movl	%ecx, (%rax)
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end62:
	.size	_ZN9__gnu_cxx13new_allocatorIjE9constructIjJjEEEvPT_DpOT0_, .Lfunc_end62-_ZN9__gnu_cxx13new_allocatorIjE9constructIjJjEEEvPT_DpOT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc,comdat
	.weak	_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc # -- Begin function _ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc
	.p2align	4, 0x90
	.type	_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc,@function
_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc: # @_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc
	.cfi_startproc
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	callq	_ZNKSt6vectorIjSaIjEE8max_sizeEv
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	callq	_ZNKSt6vectorIjSaIjEE4sizeEv
	movq	-64(%rbp), %rcx                 # 8-byte Reload
	subq	%rax, %rcx
	cmpq	-16(%rbp), %rcx
	jae	.LBB63_2
# %bb.1:
	movq	-40(%rbp), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.LBB63_2:
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNKSt6vectorIjSaIjEE4sizeEv
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	callq	_ZNKSt6vectorIjSaIjEE4sizeEv
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	callq	_ZSt3maxImERKT_S2_S2_
	movq	-72(%rbp), %rcx                 # 8-byte Reload
	addq	(%rax), %rcx
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	callq	_ZNKSt6vectorIjSaIjEE4sizeEv
	movq	-80(%rbp), %rcx                 # 8-byte Reload
	cmpq	%rax, %rcx
	jb	.LBB63_4
# %bb.3:
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	callq	_ZNKSt6vectorIjSaIjEE8max_sizeEv
	movq	-88(%rbp), %rcx                 # 8-byte Reload
	cmpq	%rax, %rcx
	jbe	.LBB63_5
.LBB63_4:
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNKSt6vectorIjSaIjEE8max_sizeEv
	movq	%rax, -96(%rbp)                 # 8-byte Spill
	jmp	.LBB63_6
.LBB63_5:
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)                 # 8-byte Spill
.LBB63_6:
	movq	-96(%rbp), %rax                 # 8-byte Reload
	movq	%fs:40, %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movq	%rax, -104(%rbp)                # 8-byte Spill
	jne	.LBB63_8
# %bb.7:
	movq	-104(%rbp), %rax                # 8-byte Reload
	addq	$112, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB63_8:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end63:
	.size	_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc, .Lfunc_end63-_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxxmiIPjSt6vectorIjSaIjEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_,"axG",@progbits,_ZN9__gnu_cxxmiIPjSt6vectorIjSaIjEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_,comdat
	.weak	_ZN9__gnu_cxxmiIPjSt6vectorIjSaIjEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_ # -- Begin function _ZN9__gnu_cxxmiIPjSt6vectorIjSaIjEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxxmiIPjSt6vectorIjSaIjEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_,@function
_ZN9__gnu_cxxmiIPjSt6vectorIjSaIjEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_: # @_ZN9__gnu_cxxmiIPjSt6vectorIjSaIjEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
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
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv
	movq	(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	subq	%rax, %rcx
	sarq	$2, %rcx
	movq	%rcx, %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end64:
	.size	_ZN9__gnu_cxxmiIPjSt6vectorIjSaIjEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_, .Lfunc_end64-_ZN9__gnu_cxxmiIPjSt6vectorIjSaIjEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIjSaIjEE5beginEv,"axG",@progbits,_ZNSt6vectorIjSaIjEE5beginEv,comdat
	.weak	_ZNSt6vectorIjSaIjEE5beginEv    # -- Begin function _ZNSt6vectorIjSaIjEE5beginEv
	.p2align	4, 0x90
	.type	_ZNSt6vectorIjSaIjEE5beginEv,@function
_ZNSt6vectorIjSaIjEE5beginEv:           # @_ZNSt6vectorIjSaIjEE5beginEv
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
	callq	_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEC2ERKS1_
	movq	-16(%rbp), %rax
	movq	%fs:40, %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	jne	.LBB65_2
# %bb.1:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB65_2:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end65:
	.size	_ZNSt6vectorIjSaIjEE5beginEv, .Lfunc_end65-_ZNSt6vectorIjSaIjEE5beginEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm,comdat
	.weak	_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm # -- Begin function _ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm,@function
_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm: # @_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm
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
	cmpq	$0, -16(%rbp)
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	je	.LBB66_2
# %bb.1:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	_ZNSt16allocator_traitsISaIjEE8allocateERS0_m
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	jmp	.LBB66_3
.LBB66_2:
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)                 # 8-byte Spill
	jmp	.LBB66_3
.LBB66_3:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end66:
	.size	_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm, .Lfunc_end66-_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_,"axG",@progbits,_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_,comdat
	.weak	_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_ # -- Begin function _ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_
	.p2align	4, 0x90
	.type	_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_,@function
_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_: # @_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_
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
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	_ZNSt6vectorIjSaIjEE14_S_do_relocateEPjS2_S2_RS0_St17integral_constantIbLb1EE
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end67:
	.size	_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_, .Lfunc_end67-_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv,comdat
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv # -- Begin function _ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv,@function
_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv: # @_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv
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
.Lfunc_end68:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv, .Lfunc_end68-_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6vectorIjSaIjEE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorIjSaIjEE8max_sizeEv,comdat
	.weak	_ZNKSt6vectorIjSaIjEE8max_sizeEv # -- Begin function _ZNKSt6vectorIjSaIjEE8max_sizeEv
	.p2align	4, 0x90
	.type	_ZNKSt6vectorIjSaIjEE8max_sizeEv,@function
_ZNKSt6vectorIjSaIjEE8max_sizeEv:       # @_ZNKSt6vectorIjSaIjEE8max_sizeEv
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
	callq	_ZNKSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdi
	callq	_ZNSt6vectorIjSaIjEE11_S_max_sizeERKS0_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end69:
	.size	_ZNKSt6vectorIjSaIjEE8max_sizeEv, .Lfunc_end69-_ZNKSt6vectorIjSaIjEE8max_sizeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6vectorIjSaIjEE4sizeEv,"axG",@progbits,_ZNKSt6vectorIjSaIjEE4sizeEv,comdat
	.weak	_ZNKSt6vectorIjSaIjEE4sizeEv    # -- Begin function _ZNKSt6vectorIjSaIjEE4sizeEv
	.p2align	4, 0x90
	.type	_ZNKSt6vectorIjSaIjEE4sizeEv,@function
_ZNKSt6vectorIjSaIjEE4sizeEv:           # @_ZNKSt6vectorIjSaIjEE4sizeEv
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
	sarq	$2, %rcx
	movq	%rcx, %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end70:
	.size	_ZNKSt6vectorIjSaIjEE4sizeEv, .Lfunc_end70-_ZNKSt6vectorIjSaIjEE4sizeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.weak	_ZSt3maxImERKT_S2_S2_           # -- Begin function _ZSt3maxImERKT_S2_S2_
	.p2align	4, 0x90
	.type	_ZSt3maxImERKT_S2_S2_,@function
_ZSt3maxImERKT_S2_S2_:                  # @_ZSt3maxImERKT_S2_S2_
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
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	cmpq	(%rcx), %rax
	jae	.LBB71_2
# %bb.1:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB71_3
.LBB71_2:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB71_3:
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end71:
	.size	_ZSt3maxImERKT_S2_S2_, .Lfunc_end71-_ZSt3maxImERKT_S2_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIjSaIjEE11_S_max_sizeERKS0_,"axG",@progbits,_ZNSt6vectorIjSaIjEE11_S_max_sizeERKS0_,comdat
	.weak	_ZNSt6vectorIjSaIjEE11_S_max_sizeERKS0_ # -- Begin function _ZNSt6vectorIjSaIjEE11_S_max_sizeERKS0_
	.p2align	4, 0x90
	.type	_ZNSt6vectorIjSaIjEE11_S_max_sizeERKS0_,@function
_ZNSt6vectorIjSaIjEE11_S_max_sizeERKS0_: # @_ZNSt6vectorIjSaIjEE11_S_max_sizeERKS0_
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -32(%rbp)
	movabsq	$2305843009213693951, %rax      # imm = 0x1FFFFFFFFFFFFFFF
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rdi
	callq	_ZNSt16allocator_traitsISaIjEE8max_sizeERKS0_
	movq	%rax, -24(%rbp)
.Ltmp32:
	leaq	-16(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	_ZSt3minImERKT_S2_S2_
.Ltmp33:
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	jmp	.LBB72_1
.LBB72_1:
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	movq	%fs:40, %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	jne	.LBB72_4
# %bb.2:
	movq	-48(%rbp), %rax                 # 8-byte Reload
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB72_3:
	.cfi_def_cfa %rbp, 16
.Ltmp34:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, %rdi
	movl	%edx, -52(%rbp)                 # 4-byte Spill
	callq	__clang_call_terminate
.LBB72_4:
	callq	__stack_chk_fail@PLT
.Lfunc_end72:
	.size	_ZNSt6vectorIjSaIjEE11_S_max_sizeERKS0_, .Lfunc_end72-_ZNSt6vectorIjSaIjEE11_S_max_sizeERKS0_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table72:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	156                             # @TType Encoding = indirect pcrel sdata8
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Ltmp32-.Lfunc_begin7          # >> Call Site 1 <<
	.uleb128 .Ltmp33-.Ltmp32                #   Call between .Ltmp32 and .Ltmp33
	.uleb128 .Ltmp34-.Lfunc_begin7          #     jumps to .Ltmp34
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp33-.Lfunc_begin7          # >> Call Site 2 <<
	.uleb128 .Lfunc_end72-.Ltmp33           #   Call between .Ltmp33 and .Lfunc_end72
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2
                                        # -- End function
	.section	.text._ZNKSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv,comdat
	.weak	_ZNKSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv # -- Begin function _ZNKSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv
	.p2align	4, 0x90
	.type	_ZNKSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv,@function
_ZNKSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv: # @_ZNKSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv
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
.Lfunc_end73:
	.size	_ZNKSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv, .Lfunc_end73-_ZNKSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaIjEE8max_sizeERKS0_,"axG",@progbits,_ZNSt16allocator_traitsISaIjEE8max_sizeERKS0_,comdat
	.weak	_ZNSt16allocator_traitsISaIjEE8max_sizeERKS0_ # -- Begin function _ZNSt16allocator_traitsISaIjEE8max_sizeERKS0_
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaIjEE8max_sizeERKS0_,@function
_ZNSt16allocator_traitsISaIjEE8max_sizeERKS0_: # @_ZNSt16allocator_traitsISaIjEE8max_sizeERKS0_
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
	callq	_ZNK9__gnu_cxx13new_allocatorIjE8max_sizeEv
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end74:
	.size	_ZNSt16allocator_traitsISaIjEE8max_sizeERKS0_, .Lfunc_end74-_ZNSt16allocator_traitsISaIjEE8max_sizeERKS0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt3minImERKT_S2_S2_,"axG",@progbits,_ZSt3minImERKT_S2_S2_,comdat
	.weak	_ZSt3minImERKT_S2_S2_           # -- Begin function _ZSt3minImERKT_S2_S2_
	.p2align	4, 0x90
	.type	_ZSt3minImERKT_S2_S2_,@function
_ZSt3minImERKT_S2_S2_:                  # @_ZSt3minImERKT_S2_S2_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	(%rcx), %rax
	jae	.LBB75_2
# %bb.1:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB75_3
.LBB75_2:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB75_3:
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end75:
	.size	_ZSt3minImERKT_S2_S2_, .Lfunc_end75-_ZSt3minImERKT_S2_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9__gnu_cxx13new_allocatorIjE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIjE8max_sizeEv,comdat
	.weak	_ZNK9__gnu_cxx13new_allocatorIjE8max_sizeEv # -- Begin function _ZNK9__gnu_cxx13new_allocatorIjE8max_sizeEv
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx13new_allocatorIjE8max_sizeEv,@function
_ZNK9__gnu_cxx13new_allocatorIjE8max_sizeEv: # @_ZNK9__gnu_cxx13new_allocatorIjE8max_sizeEv
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
	callq	_ZNK9__gnu_cxx13new_allocatorIjE11_M_max_sizeEv
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end76:
	.size	_ZNK9__gnu_cxx13new_allocatorIjE8max_sizeEv, .Lfunc_end76-_ZNK9__gnu_cxx13new_allocatorIjE8max_sizeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9__gnu_cxx13new_allocatorIjE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIjE11_M_max_sizeEv,comdat
	.weak	_ZNK9__gnu_cxx13new_allocatorIjE11_M_max_sizeEv # -- Begin function _ZNK9__gnu_cxx13new_allocatorIjE11_M_max_sizeEv
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx13new_allocatorIjE11_M_max_sizeEv,@function
_ZNK9__gnu_cxx13new_allocatorIjE11_M_max_sizeEv: # @_ZNK9__gnu_cxx13new_allocatorIjE11_M_max_sizeEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movabsq	$2305843009213693951, %rax      # imm = 0x1FFFFFFFFFFFFFFF
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end77:
	.size	_ZNK9__gnu_cxx13new_allocatorIjE11_M_max_sizeEv, .Lfunc_end77-_ZNK9__gnu_cxx13new_allocatorIjE11_M_max_sizeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEC2ERKS1_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEC2ERKS1_,comdat
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEC2ERKS1_ # -- Begin function _ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEC2ERKS1_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEC2ERKS1_,@function
_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEC2ERKS1_: # @_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEC2ERKS1_
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
.Lfunc_end78:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEC2ERKS1_, .Lfunc_end78-_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEC2ERKS1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaIjEE8allocateERS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaIjEE8allocateERS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaIjEE8allocateERS0_m # -- Begin function _ZNSt16allocator_traitsISaIjEE8allocateERS0_m
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaIjEE8allocateERS0_m,@function
_ZNSt16allocator_traitsISaIjEE8allocateERS0_m: # @_ZNSt16allocator_traitsISaIjEE8allocateERS0_m
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	%rcx, %rdi
	callq	_ZN9__gnu_cxx13new_allocatorIjE8allocateEmPKv
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end79:
	.size	_ZNSt16allocator_traitsISaIjEE8allocateERS0_m, .Lfunc_end79-_ZNSt16allocator_traitsISaIjEE8allocateERS0_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIjE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIjE8allocateEmPKv,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIjE8allocateEmPKv # -- Begin function _ZN9__gnu_cxx13new_allocatorIjE8allocateEmPKv
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIjE8allocateEmPKv,@function
_ZN9__gnu_cxx13new_allocatorIjE8allocateEmPKv: # @_ZN9__gnu_cxx13new_allocatorIjE8allocateEmPKv
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
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	callq	_ZNK9__gnu_cxx13new_allocatorIjE11_M_max_sizeEv
	movq	-32(%rbp), %rcx                 # 8-byte Reload
	cmpq	%rax, %rcx
	jbe	.LBB80_2
# %bb.1:
	callq	_ZSt17__throw_bad_allocv@PLT
.LBB80_2:
	movq	-16(%rbp), %rax
	shlq	$2, %rax
	movq	%rax, %rdi
	callq	_Znwm@PLT
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end80:
	.size	_ZN9__gnu_cxx13new_allocatorIjE8allocateEmPKv, .Lfunc_end80-_ZN9__gnu_cxx13new_allocatorIjE8allocateEmPKv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIjSaIjEE14_S_do_relocateEPjS2_S2_RS0_St17integral_constantIbLb1EE,"axG",@progbits,_ZNSt6vectorIjSaIjEE14_S_do_relocateEPjS2_S2_RS0_St17integral_constantIbLb1EE,comdat
	.weak	_ZNSt6vectorIjSaIjEE14_S_do_relocateEPjS2_S2_RS0_St17integral_constantIbLb1EE # -- Begin function _ZNSt6vectorIjSaIjEE14_S_do_relocateEPjS2_S2_RS0_St17integral_constantIbLb1EE
	.p2align	4, 0x90
	.type	_ZNSt6vectorIjSaIjEE14_S_do_relocateEPjS2_S2_RS0_St17integral_constantIbLb1EE,@function
_ZNSt6vectorIjSaIjEE14_S_do_relocateEPjS2_S2_RS0_St17integral_constantIbLb1EE: # @_ZNSt6vectorIjSaIjEE14_S_do_relocateEPjS2_S2_RS0_St17integral_constantIbLb1EE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	_ZSt12__relocate_aIPjS0_SaIjEET0_T_S3_S2_RT1_
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end81:
	.size	_ZNSt6vectorIjSaIjEE14_S_do_relocateEPjS2_S2_RS0_St17integral_constantIbLb1EE, .Lfunc_end81-_ZNSt6vectorIjSaIjEE14_S_do_relocateEPjS2_S2_RS0_St17integral_constantIbLb1EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt12__relocate_aIPjS0_SaIjEET0_T_S3_S2_RT1_,"axG",@progbits,_ZSt12__relocate_aIPjS0_SaIjEET0_T_S3_S2_RT1_,comdat
	.weak	_ZSt12__relocate_aIPjS0_SaIjEET0_T_S3_S2_RT1_ # -- Begin function _ZSt12__relocate_aIPjS0_SaIjEET0_T_S3_S2_RT1_
	.p2align	4, 0x90
	.type	_ZSt12__relocate_aIPjS0_SaIjEET0_T_S3_S2_RT1_,@function
_ZSt12__relocate_aIPjS0_SaIjEET0_T_S3_S2_RT1_: # @_ZSt12__relocate_aIPjS0_SaIjEET0_T_S3_S2_RT1_
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
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZSt12__niter_baseIPjET_S1_
	movq	-16(%rbp), %rdi
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	callq	_ZSt12__niter_baseIPjET_S1_
	movq	-24(%rbp), %rdi
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	callq	_ZSt12__niter_baseIPjET_S1_
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movq	-48(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZSt14__relocate_a_1IjjENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end82:
	.size	_ZSt12__relocate_aIPjS0_SaIjEET0_T_S3_S2_RT1_, .Lfunc_end82-_ZSt12__relocate_aIPjS0_SaIjEET0_T_S3_S2_RT1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt14__relocate_a_1IjjENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E,"axG",@progbits,_ZSt14__relocate_a_1IjjENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E,comdat
	.weak	_ZSt14__relocate_a_1IjjENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E # -- Begin function _ZSt14__relocate_a_1IjjENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E
	.p2align	4, 0x90
	.type	_ZSt14__relocate_a_1IjjENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E,@function
_ZSt14__relocate_a_1IjjENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E: # @_ZSt14__relocate_a_1IjjENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E
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
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	subq	%rcx, %rax
	sarq	$2, %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jle	.LBB83_2
# %bb.1:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rdx
	shlq	$2, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memmove@PLT
.LBB83_2:
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end83:
	.size	_ZSt14__relocate_a_1IjjENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E, .Lfunc_end83-_ZSt14__relocate_a_1IjjENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt12__niter_baseIPjET_S1_,"axG",@progbits,_ZSt12__niter_baseIPjET_S1_,comdat
	.weak	_ZSt12__niter_baseIPjET_S1_     # -- Begin function _ZSt12__niter_baseIPjET_S1_
	.p2align	4, 0x90
	.type	_ZSt12__niter_baseIPjET_S1_,@function
_ZSt12__niter_baseIPjET_S1_:            # @_ZSt12__niter_baseIPjET_S1_
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
.Lfunc_end84:
	.size	_ZSt12__niter_baseIPjET_S1_, .Lfunc_end84-_ZSt12__niter_baseIPjET_S1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8__detail4_ModIjLj0ELj1ELj0ELb1ELb0EE6__calcEj,"axG",@progbits,_ZNSt8__detail4_ModIjLj0ELj1ELj0ELb1ELb0EE6__calcEj,comdat
	.weak	_ZNSt8__detail4_ModIjLj0ELj1ELj0ELb1ELb0EE6__calcEj # -- Begin function _ZNSt8__detail4_ModIjLj0ELj1ELj0ELb1ELb0EE6__calcEj
	.p2align	4, 0x90
	.type	_ZNSt8__detail4_ModIjLj0ELj1ELj0ELb1ELb0EE6__calcEj,@function
_ZNSt8__detail4_ModIjLj0ELj1ELj0ELb1ELb0EE6__calcEj: # @_ZNSt8__detail4_ModIjLj0ELj1ELj0ELb1ELb0EE6__calcEj
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	shll	$0, %eax
	addl	$0, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end85:
	.size	_ZNSt8__detail4_ModIjLj0ELj1ELj0ELb1ELb0EE6__calcEj, .Lfunc_end85-_ZNSt8__detail4_ModIjLj0ELj1ELj0ELb1ELb0EE6__calcEj
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8seed_seq8generateIPjEEvT_S2_,"axG",@progbits,_ZNSt8seed_seq8generateIPjEEvT_S2_,comdat
	.weak	_ZNSt8seed_seq8generateIPjEEvT_S2_ # -- Begin function _ZNSt8seed_seq8generateIPjEEvT_S2_
	.p2align	4, 0x90
	.type	_ZNSt8seed_seq8generateIPjEEvT_S2_,@function
_ZNSt8seed_seq8generateIPjEEvT_S2_:     # @_ZNSt8seed_seq8generateIPjEEvT_S2_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$288, %rsp                      # imm = 0x120
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpq	-56(%rbp), %rcx
	movq	%rax, -152(%rbp)                # 8-byte Spill
	jne	.LBB86_2
# %bb.1:
	jmp	.LBB86_28
.LBB86_2:
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movl	$-1953789045, -12(%rbp)         # imm = 0x8B8B8B8B
	leaq	-12(%rbp), %rdx
	callq	_ZSt4fillIPjjEvT_S1_RKT0_
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	subq	%rcx, %rax
	sarq	$2, %rax
	movq	%rax, -24(%rbp)
	movq	-152(%rbp), %rdi                # 8-byte Reload
	callq	_ZNKSt6vectorIjSaIjEE4sizeEv
	movq	%rax, -64(%rbp)
	cmpq	$623, -24(%rbp)                 # imm = 0x26F
	jb	.LBB86_4
# %bb.3:
	movl	$11, %eax
	movq	%rax, -160(%rbp)                # 8-byte Spill
	jmp	.LBB86_14
.LBB86_4:
	cmpq	$68, -24(%rbp)
	jb	.LBB86_6
# %bb.5:
	movl	$7, %eax
	movq	%rax, -168(%rbp)                # 8-byte Spill
	jmp	.LBB86_13
.LBB86_6:
	cmpq	$39, -24(%rbp)
	jb	.LBB86_8
# %bb.7:
	movl	$5, %eax
	movq	%rax, -176(%rbp)                # 8-byte Spill
	jmp	.LBB86_12
.LBB86_8:
	cmpq	$7, -24(%rbp)
	jb	.LBB86_10
# %bb.9:
	movl	$3, %eax
	movq	%rax, -184(%rbp)                # 8-byte Spill
	jmp	.LBB86_11
.LBB86_10:
	movq	-24(%rbp), %rax
	subq	$1, %rax
	shrq	$1, %rax
	movq	%rax, -184(%rbp)                # 8-byte Spill
.LBB86_11:
	movq	-184(%rbp), %rax                # 8-byte Reload
	movq	%rax, -176(%rbp)                # 8-byte Spill
.LBB86_12:
	movq	-176(%rbp), %rax                # 8-byte Reload
	movq	%rax, -168(%rbp)                # 8-byte Spill
.LBB86_13:
	movq	-168(%rbp), %rax                # 8-byte Reload
	movq	%rax, -160(%rbp)                # 8-byte Spill
.LBB86_14:
	movq	-160(%rbp), %rax                # 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	subq	-72(%rbp), %rax
	shrq	$1, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	addq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	_ZSt3maxImERKT_S2_S2_
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	$0, -104(%rbp)
.LBB86_15:                              # =>This Inner Loop Header: Depth=1
	movq	-104(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jae	.LBB86_24
# %bb.16:                               #   in Loop: Header=BB86_15 Depth=1
	movq	-48(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	%rax, -192(%rbp)                # 8-byte Spill
	movq	%rcx, %rax
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	divq	-24(%rbp)
	movq	-192(%rbp), %rcx                # 8-byte Reload
	movl	(%rcx,%rdx,4), %esi
	movq	-48(%rbp), %rdx
	movq	-104(%rbp), %rdi
	addq	-80(%rbp), %rdi
	movq	%rdi, %rax
	xorl	%r8d, %r8d
	movq	%rdx, -200(%rbp)                # 8-byte Spill
	movl	%r8d, %edx
	divq	-24(%rbp)
	movq	-200(%rbp), %rdi                # 8-byte Reload
	xorl	(%rdi,%rdx,4), %esi
	movq	-48(%rbp), %rdx
	movq	-104(%rbp), %r9
	subq	$1, %r9
	movq	%r9, %rax
	xorl	%r8d, %r8d
	movq	%rdx, -208(%rbp)                # 8-byte Spill
	movl	%r8d, %edx
	divq	-24(%rbp)
	movq	-208(%rbp), %r9                 # 8-byte Reload
	xorl	(%r9,%rdx,4), %esi
	movl	%esi, -108(%rbp)
	movl	-108(%rbp), %esi
	movl	-108(%rbp), %r8d
	shrl	$27, %r8d
	xorl	%r8d, %esi
	movl	%esi, -112(%rbp)
	imull	$1664525, -112(%rbp), %esi      # imm = 0x19660D
	movl	%esi, %edi
	callq	_ZNSt8__detail5__modIjLj0ELj1ELj0EEET_S1_
	movl	%eax, -112(%rbp)
	movl	-112(%rbp), %eax
	movl	%eax, -116(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB86_18
# %bb.17:                               #   in Loop: Header=BB86_15 Depth=1
	movq	-64(%rbp), %rax
	movl	-116(%rbp), %ecx
	movl	%ecx, %edx
	addq	%rax, %rdx
                                        # kill: def $edx killed $edx killed $rdx
	movl	%edx, -116(%rbp)
	jmp	.LBB86_22
.LBB86_18:                              #   in Loop: Header=BB86_15 Depth=1
	movq	-104(%rbp), %rax
	cmpq	-64(%rbp), %rax
	ja	.LBB86_20
# %bb.19:                               #   in Loop: Header=BB86_15 Depth=1
	movq	-104(%rbp), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-24(%rbp)
	movq	-104(%rbp), %rsi
	subq	$1, %rsi
	movq	-152(%rbp), %rdi                # 8-byte Reload
	movq	%rdx, -216(%rbp)                # 8-byte Spill
	callq	_ZNSt6vectorIjSaIjEEixEm
	movl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-216(%rbp), %rdx                # 8-byte Reload
	addq	%rax, %rdx
	movl	-116(%rbp), %ecx
	movl	%ecx, %eax
	addq	%rdx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -116(%rbp)
	jmp	.LBB86_21
.LBB86_20:                              #   in Loop: Header=BB86_15 Depth=1
	movq	-104(%rbp), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-24(%rbp)
	movl	-116(%rbp), %ecx
	movl	%ecx, %esi
	addq	%rdx, %rsi
                                        # kill: def $esi killed $esi killed $rsi
	movl	%esi, -116(%rbp)
.LBB86_21:                              #   in Loop: Header=BB86_15 Depth=1
	jmp	.LBB86_22
.LBB86_22:                              #   in Loop: Header=BB86_15 Depth=1
	movl	-116(%rbp), %edi
	callq	_ZNSt8__detail5__modIjLj0ELj1ELj0EEET_S1_
	movl	%eax, -116(%rbp)
	movl	-112(%rbp), %eax
	movq	-48(%rbp), %rcx
	movq	-104(%rbp), %rdx
	addq	-80(%rbp), %rdx
	movl	%eax, -220(%rbp)                # 4-byte Spill
	movq	%rdx, %rax
	xorl	%esi, %esi
	movl	%esi, %edx
	divq	-24(%rbp)
	movl	-220(%rbp), %esi                # 4-byte Reload
	addl	(%rcx,%rdx,4), %esi
	movl	%esi, (%rcx,%rdx,4)
	movl	-116(%rbp), %esi
	movq	-48(%rbp), %rcx
	movq	-104(%rbp), %rdx
	addq	-88(%rbp), %rdx
	movq	%rdx, %rax
	xorl	%edi, %edi
	movl	%edi, %edx
	divq	-24(%rbp)
	addl	(%rcx,%rdx,4), %esi
	movl	%esi, (%rcx,%rdx,4)
	movl	-116(%rbp), %esi
	movq	-48(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movq	%rdx, %rax
	xorl	%edi, %edi
	movl	%edi, %edx
	divq	-24(%rbp)
	movl	%esi, (%rcx,%rdx,4)
# %bb.23:                               #   in Loop: Header=BB86_15 Depth=1
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB86_15
.LBB86_24:
	movq	-96(%rbp), %rax
	movq	%rax, -128(%rbp)
.LBB86_25:                              # =>This Inner Loop Header: Depth=1
	movq	-128(%rbp), %rax
	movq	-96(%rbp), %rcx
	addq	-24(%rbp), %rcx
	cmpq	%rcx, %rax
	jae	.LBB86_28
# %bb.26:                               #   in Loop: Header=BB86_25 Depth=1
	movq	-48(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	%rax, -232(%rbp)                # 8-byte Spill
	movq	%rcx, %rax
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	divq	-24(%rbp)
	movq	-232(%rbp), %rcx                # 8-byte Reload
	movl	(%rcx,%rdx,4), %esi
	movq	-48(%rbp), %rdx
	movq	-128(%rbp), %rdi
	addq	-80(%rbp), %rdi
	movq	%rdi, %rax
	xorl	%r8d, %r8d
	movq	%rdx, -240(%rbp)                # 8-byte Spill
	movl	%r8d, %edx
	divq	-24(%rbp)
	movq	-240(%rbp), %rdi                # 8-byte Reload
	addl	(%rdi,%rdx,4), %esi
	movq	-48(%rbp), %rdx
	movq	-128(%rbp), %r9
	subq	$1, %r9
	movq	%r9, %rax
	xorl	%r8d, %r8d
	movq	%rdx, -248(%rbp)                # 8-byte Spill
	movl	%r8d, %edx
	divq	-24(%rbp)
	movq	-248(%rbp), %r9                 # 8-byte Reload
	addl	(%r9,%rdx,4), %esi
	movl	%esi, -132(%rbp)
	movl	-132(%rbp), %esi
	movl	-132(%rbp), %r8d
	shrl	$27, %r8d
	xorl	%r8d, %esi
	movl	%esi, -136(%rbp)
	imull	$1566083941, -136(%rbp), %esi   # imm = 0x5D588B65
	movl	%esi, %edi
	callq	_ZNSt8__detail5__modIjLj0ELj1ELj0EEET_S1_
	movl	%eax, -136(%rbp)
	movl	-136(%rbp), %eax
	movl	%eax, %ecx
	movq	-128(%rbp), %rax
	xorl	%esi, %esi
	movl	%esi, %edx
	divq	-24(%rbp)
	subq	%rdx, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %edi
	callq	_ZNSt8__detail5__modIjLj0ELj1ELj0EEET_S1_
	movl	%eax, -140(%rbp)
	movl	-136(%rbp), %eax
	movq	-48(%rbp), %rdx
	movq	-128(%rbp), %r9
	addq	-80(%rbp), %r9
	movl	%eax, -252(%rbp)                # 4-byte Spill
	movq	%r9, %rax
	xorl	%ecx, %ecx
	movq	%rdx, -264(%rbp)                # 8-byte Spill
	movl	%ecx, %edx
	divq	-24(%rbp)
	movl	-252(%rbp), %ecx                # 4-byte Reload
	movq	-264(%rbp), %r9                 # 8-byte Reload
	xorl	(%r9,%rdx,4), %ecx
	movl	%ecx, (%r9,%rdx,4)
	movl	-140(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movq	-128(%rbp), %r10
	addq	-88(%rbp), %r10
	movq	%r10, %rax
	xorl	%esi, %esi
	movq	%rdx, -272(%rbp)                # 8-byte Spill
	movl	%esi, %edx
	divq	-24(%rbp)
	movq	-272(%rbp), %r10                # 8-byte Reload
	xorl	(%r10,%rdx,4), %ecx
	movl	%ecx, (%r10,%rdx,4)
	movl	-140(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movq	-128(%rbp), %r11
	movq	%r11, %rax
	xorl	%esi, %esi
	movq	%rdx, -280(%rbp)                # 8-byte Spill
	movl	%esi, %edx
	divq	-24(%rbp)
	movq	-280(%rbp), %r11                # 8-byte Reload
	movl	%ecx, (%r11,%rdx,4)
# %bb.27:                               #   in Loop: Header=BB86_25 Depth=1
	movq	-128(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -128(%rbp)
	jmp	.LBB86_25
.LBB86_28:
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB86_30
# %bb.29:
	addq	$288, %rsp                      # imm = 0x120
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB86_30:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end86:
	.size	_ZNSt8seed_seq8generateIPjEEvT_S2_, .Lfunc_end86-_ZNSt8seed_seq8generateIPjEEvT_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt4fillIPjjEvT_S1_RKT0_,"axG",@progbits,_ZSt4fillIPjjEvT_S1_RKT0_,comdat
	.weak	_ZSt4fillIPjjEvT_S1_RKT0_       # -- Begin function _ZSt4fillIPjjEvT_S1_RKT0_
	.p2align	4, 0x90
	.type	_ZSt4fillIPjjEvT_S1_RKT0_,@function
_ZSt4fillIPjjEvT_S1_RKT0_:              # @_ZSt4fillIPjjEvT_S1_RKT0_
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
	callq	_ZSt8__fill_aIPjjEvT_S1_RKT0_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end87:
	.size	_ZSt4fillIPjjEvT_S1_RKT0_, .Lfunc_end87-_ZSt4fillIPjjEvT_S1_RKT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIjSaIjEEixEm,"axG",@progbits,_ZNSt6vectorIjSaIjEEixEm,comdat
	.weak	_ZNSt6vectorIjSaIjEEixEm        # -- Begin function _ZNSt6vectorIjSaIjEEixEm
	.p2align	4, 0x90
	.type	_ZNSt6vectorIjSaIjEEixEm,@function
_ZNSt6vectorIjSaIjEEixEm:               # @_ZNSt6vectorIjSaIjEEixEm
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
	shlq	$2, %rcx
	addq	%rcx, %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end88:
	.size	_ZNSt6vectorIjSaIjEEixEm, .Lfunc_end88-_ZNSt6vectorIjSaIjEEixEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt8__fill_aIPjjEvT_S1_RKT0_,"axG",@progbits,_ZSt8__fill_aIPjjEvT_S1_RKT0_,comdat
	.weak	_ZSt8__fill_aIPjjEvT_S1_RKT0_   # -- Begin function _ZSt8__fill_aIPjjEvT_S1_RKT0_
	.p2align	4, 0x90
	.type	_ZSt8__fill_aIPjjEvT_S1_RKT0_,@function
_ZSt8__fill_aIPjjEvT_S1_RKT0_:          # @_ZSt8__fill_aIPjjEvT_S1_RKT0_
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
	callq	_ZSt9__fill_a1IPjjEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end89:
	.size	_ZSt8__fill_aIPjjEvT_S1_RKT0_, .Lfunc_end89-_ZSt8__fill_aIPjjEvT_S1_RKT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt9__fill_a1IPjjEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_,"axG",@progbits,_ZSt9__fill_a1IPjjEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_,comdat
	.weak	_ZSt9__fill_a1IPjjEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_ # -- Begin function _ZSt9__fill_a1IPjjEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_
	.p2align	4, 0x90
	.type	_ZSt9__fill_a1IPjjEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_,@function
_ZSt9__fill_a1IPjjEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_: # @_ZSt9__fill_a1IPjjEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -28(%rbp)
.LBB90_1:                               # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB90_4
# %bb.2:                                #   in Loop: Header=BB90_1 Depth=1
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, (%rcx)
# %bb.3:                                #   in Loop: Header=BB90_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB90_1
.LBB90_4:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end90:
	.size	_ZSt9__fill_a1IPjjEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_, .Lfunc_end90-_ZSt9__fill_a1IPjjEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_RKNS0_10param_typeE,"axG",@progbits,_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_RKNS0_10param_typeE,comdat
	.weak	_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_RKNS0_10param_typeE # -- Begin function _ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_RKNS0_10param_typeE
	.p2align	4, 0x90
	.type	_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_RKNS0_10param_typeE,@function
_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_RKNS0_10param_typeE: # @_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_RKNS0_10param_typeE
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
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rsi
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	callq	_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEdEC2ERS2_
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEdEclEv
	movq	-40(%rbp), %rdi
	movsd	%xmm0, -56(%rbp)                # 8-byte Spill
	callq	_ZNKSt25uniform_real_distributionIdE10param_type1bEv
	movq	-40(%rbp), %rdi
	movsd	%xmm0, -64(%rbp)                # 8-byte Spill
	callq	_ZNKSt25uniform_real_distributionIdE10param_type1aEv
	movsd	-64(%rbp), %xmm1                # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	-56(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movq	-40(%rbp), %rdi
	movsd	%xmm0, -72(%rbp)                # 8-byte Spill
	callq	_ZNKSt25uniform_real_distributionIdE10param_type1aEv
	movsd	-72(%rbp), %xmm1                # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	movsd	%xmm1, -80(%rbp)                # 8-byte Spill
	jne	.LBB91_2
# %bb.1:
	movsd	-80(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addq	$80, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB91_2:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end91:
	.size	_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_RKNS0_10param_typeE, .Lfunc_end91-_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_RKNS0_10param_typeE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEdEC2ERS2_,"axG",@progbits,_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEdEC2ERS2_,comdat
	.weak	_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEdEC2ERS2_ # -- Begin function _ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEdEC2ERS2_
	.p2align	4, 0x90
	.type	_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEdEC2ERS2_,@function
_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEdEC2ERS2_: # @_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEdEC2ERS2_
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
	movq	%rcx, (%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end92:
	.size	_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEdEC2ERS2_, .Lfunc_end92-_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEdEC2ERS2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEdEclEv,"axG",@progbits,_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEdEclEv,comdat
	.weak	_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEdEclEv # -- Begin function _ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEdEclEv
	.p2align	4, 0x90
	.type	_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEdEclEv,@function
_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEdEclEv: # @_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEdEclEv
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
	movq	(%rax), %rdi
	callq	_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEET_RT1_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end93:
	.size	_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEdEclEv, .Lfunc_end93-_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEdEclEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt25uniform_real_distributionIdE10param_type1bEv,"axG",@progbits,_ZNKSt25uniform_real_distributionIdE10param_type1bEv,comdat
	.weak	_ZNKSt25uniform_real_distributionIdE10param_type1bEv # -- Begin function _ZNKSt25uniform_real_distributionIdE10param_type1bEv
	.p2align	4, 0x90
	.type	_ZNKSt25uniform_real_distributionIdE10param_type1bEv,@function
_ZNKSt25uniform_real_distributionIdE10param_type1bEv: # @_ZNKSt25uniform_real_distributionIdE10param_type1bEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm0                  # xmm0 = mem[0],zero
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end94:
	.size	_ZNKSt25uniform_real_distributionIdE10param_type1bEv, .Lfunc_end94-_ZNKSt25uniform_real_distributionIdE10param_type1bEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt25uniform_real_distributionIdE10param_type1aEv,"axG",@progbits,_ZNKSt25uniform_real_distributionIdE10param_type1aEv,comdat
	.weak	_ZNKSt25uniform_real_distributionIdE10param_type1aEv # -- Begin function _ZNKSt25uniform_real_distributionIdE10param_type1aEv
	.p2align	4, 0x90
	.type	_ZNKSt25uniform_real_distributionIdE10param_type1aEv,@function
_ZNKSt25uniform_real_distributionIdE10param_type1aEv: # @_ZNKSt25uniform_real_distributionIdE10param_type1aEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end95:
	.size	_ZNKSt25uniform_real_distributionIdE10param_type1aEv, .Lfunc_end95-_ZNKSt25uniform_real_distributionIdE10param_type1aEv
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function _ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEET_RT1_
.LCPI96_0:
	.quad	0x3ff0000000000000              # double 1
.LCPI96_1:
	.quad	6881500230622117888             # 0x5f80000000000000
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI96_2:
	.long	0x40000000                      # float 2
.LCPI96_3:
	.long	0x5f000000                      # float 9.22337203E+18
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI96_4:
	.long	1127219200                      # 0x43300000
	.long	1160773632                      # 0x45300000
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI96_5:
	.quad	0x4330000000000000              # double 4503599627370496
	.quad	0x4530000000000000              # double 1.9342813113834067E+25
	.section	.text._ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEET_RT1_,"axG",@progbits,_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEET_RT1_,comdat
	.weak	_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEET_RT1_
	.p2align	4, 0x90
	.type	_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEET_RT1_,@function
_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEET_RT1_: # @_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEET_RT1_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -32(%rbp)
	movq	$53, -40(%rbp)
	callq	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE3maxEv
	movq	%rax, -136(%rbp)
	testq	%rax, %rax
	sets	%cl
	movzbl	%cl, %edx
	movl	%edx, %eax
	fildll	-136(%rbp)
	leaq	.LCPI96_1(%rip), %rsi
	flds	(%rsi,%rax,4)
	faddp	%st, %st(1)
	movq	%rsi, -160(%rbp)                # 8-byte Spill
	fstpt	-172(%rbp)                      # 10-byte Folded Spill
	callq	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE3minEv
	movq	%rax, -128(%rbp)
	testq	%rax, %rax
	sets	%cl
	movzbl	%cl, %edx
	movl	%edx, %eax
	fildll	-128(%rbp)
	movq	-160(%rbp), %rsi                # 8-byte Reload
	flds	(%rsi,%rax,4)
	faddp	%st, %st(1)
	fldt	-172(%rbp)                      # 10-byte Folded Reload
	fsubp	%st, %st(1)
	fld1
	faddp	%st, %st(1)
	fstpt	-64(%rbp)
	fldt	-64(%rbp)
	movq	%rsp, %rax
	fstpt	(%rax)
	callq	_ZSt3loge
	movq	%rsp, %rax
	flds	.LCPI96_2(%rip)
	fstpt	(%rax)
	fstpt	-184(%rbp)                      # 10-byte Folded Spill
	callq	_ZSt3loge
	fldt	-184(%rbp)                      # 10-byte Folded Reload
	fdivp	%st, %st(1)
	flds	.LCPI96_3(%rip)
	fxch	%st(1)
	fucomi	%st(1), %st
	fldz
	fxch	%st(2)
	fcmovb	%st(2), %st
	fstp	%st(2)
	fsubp	%st, %st(1)
	setae	%cl
	fnstcw	-146(%rbp)
	movzwl	-146(%rbp), %edx
	orl	$3072, %edx                     # imm = 0xC00
                                        # kill: def $dx killed $dx killed $edx
	movw	%dx, -148(%rbp)
	fldcw	-148(%rbp)
	fistpll	-120(%rbp)
	fldcw	-146(%rbp)
	movzbl	%cl, %r8d
	movl	%r8d, %eax
	shlq	$63, %rax
	movq	-120(%rbp), %rsi
	xorq	%rax, %rsi
	movq	%rsi, -72(%rbp)
	movq	$1, -16(%rbp)
	movq	-72(%rbp), %rax
	addq	$53, %rax
	subq	$1, %rax
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	divq	-72(%rbp)
	movq	%rax, -24(%rbp)
	leaq	-16(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	_ZSt3maxImERKT_S2_S2_
	movsd	.LCPI96_0(%rip), %xmm0          # xmm0 = mem[0],zero
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	xorps	%xmm1, %xmm1
	movsd	%xmm1, -96(%rbp)
	movsd	%xmm0, -104(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -112(%rbp)
.LBB96_1:                               # =>This Inner Loop Header: Depth=1
	cmpq	$0, -112(%rbp)
	je	.LBB96_4
# %bb.2:                                #   in Loop: Header=BB96_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv
	movq	%rax, -192(%rbp)                # 8-byte Spill
	callq	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE3minEv
	movq	-192(%rbp), %rcx                # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, %xmm0
	movaps	.LCPI96_4(%rip), %xmm1          # xmm1 = [1127219200,1160773632,0,0]
	punpckldq	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movapd	.LCPI96_5(%rip), %xmm1          # xmm1 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm0                    # xmm0 = xmm0[1,1]
	addsd	%xmm1, %xmm0
	movsd	-104(%rbp), %xmm1               # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	-96(%rbp), %xmm1                # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -96(%rbp)
	fldt	-64(%rbp)
	fldl	-104(%rbp)
	fmulp	%st, %st(1)
	fstpl	-144(%rbp)
	movsd	-144(%rbp), %xmm0               # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)
# %bb.3:                                #   in Loop: Header=BB96_1 Depth=1
	movq	-112(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -112(%rbp)
	jmp	.LBB96_1
.LBB96_4:
	movsd	.LCPI96_0(%rip), %xmm0          # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1                # xmm1 = mem[0],zero
	divsd	-104(%rbp), %xmm1
	movsd	%xmm1, -88(%rbp)
	movsd	-88(%rbp), %xmm1                # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB96_6
# %bb.5:
	movsd	.LCPI96_0(%rip), %xmm0          # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	callq	nextafter@PLT
	movsd	%xmm0, -88(%rbp)
.LBB96_6:
	movsd	-88(%rbp), %xmm0                # xmm0 = mem[0],zero
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	movsd	%xmm0, -200(%rbp)               # 8-byte Spill
	jne	.LBB96_8
# %bb.7:
	movsd	-200(%rbp), %xmm0               # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addq	$224, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB96_8:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end96:
	.size	_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEET_RT1_, .Lfunc_end96-_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEET_RT1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE3maxEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE3maxEv,comdat
	.weak	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE3maxEv # -- Begin function _ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE3maxEv
	.p2align	4, 0x90
	.type	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE3maxEv,@function
_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE3maxEv: # @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE3maxEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	$-1, %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end97:
	.size	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE3maxEv, .Lfunc_end97-_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE3maxEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE3minEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE3minEv,comdat
	.weak	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE3minEv # -- Begin function _ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE3minEv
	.p2align	4, 0x90
	.type	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE3minEv,@function
_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE3minEv: # @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE3minEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end98:
	.size	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE3minEv, .Lfunc_end98-_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE3minEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt3loge,"axG",@progbits,_ZSt3loge,comdat
	.weak	_ZSt3loge                       # -- Begin function _ZSt3loge
	.p2align	4, 0x90
	.type	_ZSt3loge,@function
_ZSt3loge:                              # @_ZSt3loge
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	fldt	16(%rbp)
	fstpt	-16(%rbp)
	fldt	-16(%rbp)
	movq	%rsp, %rax
	fstpt	(%rax)
	callq	logl@PLT
	fld	%st(0)
	fstp	%st(0)
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end99:
	.size	_ZSt3loge, .Lfunc_end99-_ZSt3loge
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv,comdat
	.weak	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv # -- Begin function _ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv
	.p2align	4, 0x90
	.type	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv,@function
_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv: # @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv
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
	cmpq	$312, 2496(%rax)                # imm = 0x138
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	jb	.LBB100_2
# %bb.1:
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv
.LBB100_2:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movq	2496(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 2496(%rax)
	movq	(%rax,%rcx,8), %rcx
	movq	%rcx, -16(%rbp)
	movq	-16(%rbp), %rcx
	shrq	$29, %rcx
	movabsq	$6148914691236517205, %rdx      # imm = 0x5555555555555555
	andq	%rdx, %rcx
	xorq	-16(%rbp), %rcx
	movq	%rcx, -16(%rbp)
	movq	-16(%rbp), %rcx
	shlq	$17, %rcx
	movabsq	$8202884508482404352, %rdx      # imm = 0x71D67FFFEDA60000
	andq	%rdx, %rcx
	xorq	-16(%rbp), %rcx
	movq	%rcx, -16(%rbp)
	movq	-16(%rbp), %rcx
	shlq	$37, %rcx
	movabsq	$-2270628950310912, %rdx        # imm = 0xFFF7EEE000000000
	andq	%rdx, %rcx
	xorq	-16(%rbp), %rcx
	movq	%rcx, -16(%rbp)
	movq	-16(%rbp), %rcx
	shrq	$43, %rcx
	xorq	-16(%rbp), %rcx
	movq	%rcx, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end100:
	.size	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv, .Lfunc_end100-_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv,comdat
	.weak	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv # -- Begin function _ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv
	.p2align	4, 0x90
	.type	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv,@function
_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv: # @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$-2147483648, -16(%rbp)         # imm = 0x80000000
	movq	$2147483647, -24(%rbp)          # imm = 0x7FFFFFFF
	movq	$0, -32(%rbp)
	movq	%rax, -72(%rbp)                 # 8-byte Spill
.LBB101_1:                              # =>This Inner Loop Header: Depth=1
	cmpq	$156, -32(%rbp)
	jae	.LBB101_4
# %bb.2:                                #   in Loop: Header=BB101_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movq	-72(%rbp), %rsi                 # 8-byte Reload
	movq	(%rsi,%rdx,8), %rdx
	andq	$-2147483648, %rdx              # imm = 0x80000000
	movq	-32(%rbp), %rdi
	movq	8(%rsi,%rdi,8), %rdi
	andq	$2147483647, %rdi               # imm = 0x7FFFFFFF
	orq	%rdi, %rdx
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rdx
	movq	1248(%rsi,%rdx,8), %rdx
	movq	-40(%rbp), %rdi
	shrq	$1, %rdi
	xorq	%rdi, %rdx
	movq	-40(%rbp), %rdi
	andq	$1, %rdi
	cmpq	$0, %rdi
	movabsq	$-5403634167711393303, %rdi     # imm = 0xB5026F5AA96619E9
	cmovneq	%rdi, %rcx
	xorq	%rcx, %rdx
	movq	-32(%rbp), %rcx
	movq	%rdx, (%rsi,%rcx,8)
# %bb.3:                                #   in Loop: Header=BB101_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB101_1
.LBB101_4:
	movq	$156, -48(%rbp)
.LBB101_5:                              # =>This Inner Loop Header: Depth=1
	cmpq	$311, -48(%rbp)                 # imm = 0x137
	jae	.LBB101_8
# %bb.6:                                #   in Loop: Header=BB101_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	movq	-72(%rbp), %rsi                 # 8-byte Reload
	movq	(%rsi,%rdx,8), %rdx
	andq	$-2147483648, %rdx              # imm = 0x80000000
	movq	-48(%rbp), %rdi
	movq	8(%rsi,%rdi,8), %rdi
	andq	$2147483647, %rdi               # imm = 0x7FFFFFFF
	orq	%rdi, %rdx
	movq	%rdx, -56(%rbp)
	movq	-48(%rbp), %rdx
	movq	-1248(%rsi,%rdx,8), %rdx
	movq	-56(%rbp), %rdi
	shrq	$1, %rdi
	xorq	%rdi, %rdx
	movq	-56(%rbp), %rdi
	andq	$1, %rdi
	cmpq	$0, %rdi
	movabsq	$-5403634167711393303, %rdi     # imm = 0xB5026F5AA96619E9
	cmovneq	%rdi, %rcx
	xorq	%rcx, %rdx
	movq	-48(%rbp), %rcx
	movq	%rdx, (%rsi,%rcx,8)
# %bb.7:                                #   in Loop: Header=BB101_5 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB101_5
.LBB101_8:
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-72(%rbp), %rdx                 # 8-byte Reload
	movq	2488(%rdx), %rsi
	andq	$-2147483648, %rsi              # imm = 0x80000000
	movq	(%rdx), %rdi
	andq	$2147483647, %rdi               # imm = 0x7FFFFFFF
	orq	%rdi, %rsi
	movq	%rsi, -64(%rbp)
	movq	1240(%rdx), %rsi
	movq	-64(%rbp), %rdi
	shrq	$1, %rdi
	xorq	%rdi, %rsi
	movq	-64(%rbp), %rdi
	andq	$1, %rdi
	cmpq	$0, %rdi
	movabsq	$-5403634167711393303, %rdi     # imm = 0xB5026F5AA96619E9
	cmovneq	%rdi, %rcx
	xorq	%rcx, %rsi
	movq	%rsi, 2488(%rdx)
	movq	$0, 2496(%rdx)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end101:
	.size	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv, .Lfunc_end101-_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_bits.cpp
	.type	_GLOBAL__sub_I_bits.cpp,@function
_GLOBAL__sub_I_bits.cpp:                # @_GLOBAL__sub_I_bits.cpp
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__cxx_global_var_init
	callq	__cxx_global_var_init.1
	callq	__cxx_global_var_init.2
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end102:
	.size	_GLOBAL__sub_I_bits.cpp, .Lfunc_end102-_GLOBAL__sub_I_bits.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	unif,@object                    # @unif
	.bss
	.globl	unif
	.p2align	3
unif:
	.zero	16
	.size	unif, 16

	.type	rng,@object                     # @rng
	.globl	rng
	.p2align	3
rng:
	.zero	2504
	.size	rng, 2504

	.type	bitscan_cache,@object           # @bitscan_cache
	.globl	bitscan_cache
	.p2align	4
bitscan_cache:
	.zero	131072
	.size	bitscan_cache, 131072

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"initializing bitscan cache"
	.size	.L.str, 27

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"value != 0"
	.size	.L.str.3, 11

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"src/misc/bits.cpp"
	.size	.L.str.4, 18

	.type	.L__PRETTY_FUNCTION__._Z9init_bitsv,@object # @__PRETTY_FUNCTION__._Z9init_bitsv
.L__PRETTY_FUNCTION__._Z9init_bitsv:
	.asciz	"void init_bits()"
	.size	.L__PRETTY_FUNCTION__._Z9init_bitsv, 17

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"set random seed to "
	.size	.L.str.5, 20

	.type	_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits,@object # @_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits
	.section	.rodata._ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits,"aG",@progbits,_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits,comdat
	.weak	_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits
	.p2align	4
_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits:
	.asciz	"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899"
	.size	_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits, 201

	.type	.L.str.6,@object                # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"vector::_M_realloc_insert"
	.size	.L.str.6, 26

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_bits.cpp
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
	.addrsig_sym __cxx_global_var_init.2
	.addrsig_sym _Z12verbose_infoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym __assert_fail
	.addrsig_sym _ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_
	.addrsig_sym _ZNSt7__cxx119to_stringEi
	.addrsig_sym _ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE4seedEm
	.addrsig_sym _ZNSt6chrono3_V212system_clock3nowEv
	.addrsig_sym _ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.addrsig_sym _ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	.addrsig_sym _ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE4seedISt8seed_seqEENSt9enable_ifIXsr8__detail13__is_seed_seqIT_S0_mEE5valueEvE4typeERS4_
	.addrsig_sym _Z8randRealv
	.addrsig_sym _ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_
	.addrsig_sym _ZN7u64List5ClearEv
	.addrsig_sym _ZN7u64List6AppendEm
	.addrsig_sym _ZNSt8__detail14__to_chars_lenIjEEjT_i
	.addrsig_sym _ZNSt8__detail18__to_chars_10_implIjEEvPcjT_
	.addrsig_sym _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	.addrsig_sym _ZSt8_DestroyIPjjEvT_S1_RSaIT0_E
	.addrsig_sym _ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv
	.addrsig_sym __clang_call_terminate
	.addrsig_sym __cxa_begin_catch
	.addrsig_sym _ZSt9terminatev
	.addrsig_sym _ZSt8_DestroyIPjEvT_S1_
	.addrsig_sym _ZNSt12_Destroy_auxILb1EE9__destroyIPjEEvT_S3_
	.addrsig_sym _ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm
	.addrsig_sym _ZNSt16allocator_traitsISaIjEE10deallocateERS0_Pjm
	.addrsig_sym _ZN9__gnu_cxx13new_allocatorIjE10deallocateEPjm
	.addrsig_sym _ZdlPv
	.addrsig_sym _ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_
	.addrsig_sym _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc
	.addrsig_sym _ZNSt8__detail5__modImLm0ELm1ELm0EEET_S1_
	.addrsig_sym _ZNSt8__detail5__modImLm312ELm1ELm0EEET_S1_
	.addrsig_sym _ZNSt8__detail4_ModImLm0ELm1ELm0ELb1ELb0EE6__calcEm
	.addrsig_sym _ZNSt8__detail4_ModImLm312ELm1ELm0ELb1ELb1EE6__calcEm
	.addrsig_sym _ZNKSt16initializer_listIjE5beginEv
	.addrsig_sym _ZNKSt16initializer_listIjE3endEv
	.addrsig_sym _ZNSt6vectorIjSaIjEE9push_backEOj
	.addrsig_sym _ZNSt8__detail5__modIjLj0ELj1ELj0EEET_S1_
	.addrsig_sym _ZNKSt16initializer_listIjE4sizeEv
	.addrsig_sym _ZNSt6vectorIjSaIjEE12emplace_backIJjEEEvDpOT_
	.addrsig_sym _ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_
	.addrsig_sym _ZNSt16allocator_traitsISaIjEE9constructIjJjEEEvRS0_PT_DpOT0_
	.addrsig_sym _ZSt7forwardIjEOT_RNSt16remove_referenceIS0_E4typeE
	.addrsig_sym _ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_
	.addrsig_sym _ZNSt6vectorIjSaIjEE3endEv
	.addrsig_sym _ZN9__gnu_cxx13new_allocatorIjE9constructIjJjEEEvPT_DpOT0_
	.addrsig_sym _ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc
	.addrsig_sym _ZN9__gnu_cxxmiIPjSt6vectorIjSaIjEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	.addrsig_sym _ZNSt6vectorIjSaIjEE5beginEv
	.addrsig_sym _ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm
	.addrsig_sym _ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_
	.addrsig_sym _ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv
	.addrsig_sym _ZNKSt6vectorIjSaIjEE8max_sizeEv
	.addrsig_sym _ZNKSt6vectorIjSaIjEE4sizeEv
	.addrsig_sym _ZSt20__throw_length_errorPKc
	.addrsig_sym _ZSt3maxImERKT_S2_S2_
	.addrsig_sym _ZNSt6vectorIjSaIjEE11_S_max_sizeERKS0_
	.addrsig_sym _ZNKSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv
	.addrsig_sym _ZNSt16allocator_traitsISaIjEE8max_sizeERKS0_
	.addrsig_sym _ZSt3minImERKT_S2_S2_
	.addrsig_sym _ZNK9__gnu_cxx13new_allocatorIjE8max_sizeEv
	.addrsig_sym _ZNK9__gnu_cxx13new_allocatorIjE11_M_max_sizeEv
	.addrsig_sym _ZNSt16allocator_traitsISaIjEE8allocateERS0_m
	.addrsig_sym _ZN9__gnu_cxx13new_allocatorIjE8allocateEmPKv
	.addrsig_sym _ZSt17__throw_bad_allocv
	.addrsig_sym _Znwm
	.addrsig_sym _ZNSt6vectorIjSaIjEE14_S_do_relocateEPjS2_S2_RS0_St17integral_constantIbLb1EE
	.addrsig_sym _ZSt12__relocate_aIPjS0_SaIjEET0_T_S3_S2_RT1_
	.addrsig_sym _ZSt14__relocate_a_1IjjENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E
	.addrsig_sym _ZSt12__niter_baseIPjET_S1_
	.addrsig_sym _ZNSt8__detail4_ModIjLj0ELj1ELj0ELb1ELb0EE6__calcEj
	.addrsig_sym _ZNSt8seed_seq8generateIPjEEvT_S2_
	.addrsig_sym _ZSt4fillIPjjEvT_S1_RKT0_
	.addrsig_sym _ZNSt6vectorIjSaIjEEixEm
	.addrsig_sym _ZSt8__fill_aIPjjEvT_S1_RKT0_
	.addrsig_sym _ZSt9__fill_a1IPjjEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_
	.addrsig_sym _ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_RKNS0_10param_typeE
	.addrsig_sym _ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEdEclEv
	.addrsig_sym _ZNKSt25uniform_real_distributionIdE10param_type1bEv
	.addrsig_sym _ZNKSt25uniform_real_distributionIdE10param_type1aEv
	.addrsig_sym _ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEET_RT1_
	.addrsig_sym _ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE3maxEv
	.addrsig_sym _ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE3minEv
	.addrsig_sym _ZSt3loge
	.addrsig_sym _ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv
	.addrsig_sym nextafter
	.addrsig_sym logl
	.addrsig_sym _ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv
	.addrsig_sym _GLOBAL__sub_I_bits.cpp
	.addrsig_sym _Unwind_Resume
	.addrsig_sym __stack_chk_fail
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym unif
	.addrsig_sym rng
	.addrsig_sym bitscan_cache
	.addrsig_sym _ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits
