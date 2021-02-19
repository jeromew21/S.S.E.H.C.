	.text
	.file	"tests.cpp"
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
	.globl	_Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_ # -- Begin function _Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_
	.p2align	4, 0x90
	.type	_Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_,@function
_Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_: # @_Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	_ZSt4cout@GOTPCREL(%rip), %rax
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-24(%rbp), %rcx
	movl	(%rcx), %esi
	addl	$1, %esi
	movl	%esi, (%rcx)
	movq	%rax, %rdi
	leaq	.L.str(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	movq	%rax, %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	-4(%rbp), %r9d
	cmpl	-8(%rbp), %r9d
	je	.LBB1_2
# %bb.1:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	.L.str.2(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	-4(%rbp), %esi
	movq	%rax, %rdi
	callq	_ZNSolsEi@PLT
	movq	%rax, %rdi
	leaq	.L.str.3(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	-8(%rbp), %esi
	movq	%rax, %rdi
	callq	_ZNSolsEi@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E@PLT
	jmp	.LBB1_3
.LBB1_2:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	leaq	.L.str.4(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E@PLT
.LBB1_3:
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	_Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_, .Lfunc_end1-_Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_
	.cfi_endproc
                                        # -- End function
	.globl	_Z20perft_classical_testiRiS_   # -- Begin function _Z20perft_classical_testiRiS_
	.p2align	4, 0x90
	.type	_Z20perft_classical_testiRiS_,@function
_Z20perft_classical_testiRiS_:          # @_Z20perft_classical_testiRiS_
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
	subq	$1472, %rsp                     # imm = 0x5C0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movl	%edi, -1396(%rbp)
	movq	%rsi, -1408(%rbp)
	movq	%rdx, -1416(%rbp)
	leaq	-1280(%rbp), %rdi
	callq	_ZN5BoardC1Ev@PLT
.Ltmp0:
	leaq	-1376(%rbp), %rdi
	callq	_ZN5perft7CounterC2Ev
.Ltmp1:
	jmp	.LBB2_1
.LBB2_1:
	movl	-1396(%rbp), %esi
.Ltmp2:
	leaq	-1280(%rbp), %rdi
	leaq	-1376(%rbp), %rdx
	callq	_ZN5perft5perftER5BoardiRNS_7CounterE@PLT
.Ltmp3:
	jmp	.LBB2_2
.LBB2_2:
	movslq	-1396(%rbp), %rax
	leaq	_ZL21perft_classical_nodes(%rip), %rcx
	movl	(%rcx,%rax,4), %edi
	movl	-1376(%rbp), %esi
	leaq	-1384(%rbp), %rax
	movl	%edi, -1432(%rbp)               # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -1436(%rbp)               # 4-byte Spill
	movq	%rax, -1448(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp5:
	leaq	.L.str.5(%rip), %rsi
	leaq	-1312(%rbp), %rdi
	movq	-1448(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp6:
	jmp	.LBB2_3
.LBB2_3:
	movq	-1408(%rbp), %rcx
	movq	-1416(%rbp), %r8
.Ltmp8:
	leaq	-1312(%rbp), %rdx
	movl	-1432(%rbp), %edi               # 4-byte Reload
	movl	-1436(%rbp), %esi               # 4-byte Reload
	callq	_Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_
.Ltmp9:
	jmp	.LBB2_4
.LBB2_4:
	leaq	-1312(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1384(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movslq	-1396(%rbp), %rax
	leaq	_ZL24perft_classical_captures(%rip), %rcx
	movl	(%rcx,%rax,4), %edi
	movl	-1372(%rbp), %esi
	leaq	-1392(%rbp), %rax
	movl	%edi, -1452(%rbp)               # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -1456(%rbp)               # 4-byte Spill
	movq	%rax, -1464(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp11:
	leaq	.L.str.6(%rip), %rsi
	leaq	-1344(%rbp), %rdi
	movq	-1464(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp12:
	jmp	.LBB2_5
.LBB2_5:
	movq	-1408(%rbp), %rcx
	movq	-1416(%rbp), %r8
.Ltmp14:
	leaq	-1344(%rbp), %rdx
	movl	-1452(%rbp), %edi               # 4-byte Reload
	movl	-1456(%rbp), %esi               # 4-byte Reload
	callq	_Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_
.Ltmp15:
	jmp	.LBB2_6
.LBB2_6:
	leaq	-1344(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1392(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-1280(%rbp), %rdi
	callq	_ZN5BoardD2Ev
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB2_17
# %bb.7:
	addq	$1472, %rsp                     # imm = 0x5C0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB2_8:
	.cfi_def_cfa %rbp, 16
.Ltmp4:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1424(%rbp)
	movl	%edx, -1428(%rbp)
	jmp	.LBB2_15
.LBB2_9:
.Ltmp7:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1424(%rbp)
	movl	%edx, -1428(%rbp)
	jmp	.LBB2_11
.LBB2_10:
.Ltmp10:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1424(%rbp)
	movl	%edx, -1428(%rbp)
	leaq	-1312(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB2_11:
	leaq	-1384(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB2_15
.LBB2_12:
.Ltmp13:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1424(%rbp)
	movl	%edx, -1428(%rbp)
	jmp	.LBB2_14
.LBB2_13:
.Ltmp16:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1424(%rbp)
	movl	%edx, -1428(%rbp)
	leaq	-1344(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB2_14:
	leaq	-1392(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
.LBB2_15:
	leaq	-1280(%rbp), %rdi
	callq	_ZN5BoardD2Ev
# %bb.16:
	movq	-1424(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.LBB2_17:
	callq	__stack_chk_fail@PLT
.Lfunc_end2:
	.size	_Z20perft_classical_testiRiS_, .Lfunc_end2-_Z20perft_classical_testiRiS_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table2:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp3-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp3
	.uleb128 .Ltmp4-.Lfunc_begin0           #     jumps to .Ltmp4
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp5-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp6-.Ltmp5                  #   Call between .Ltmp5 and .Ltmp6
	.uleb128 .Ltmp7-.Lfunc_begin0           #     jumps to .Ltmp7
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp8-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp9-.Ltmp8                  #   Call between .Ltmp8 and .Ltmp9
	.uleb128 .Ltmp10-.Lfunc_begin0          #     jumps to .Ltmp10
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp12-.Ltmp11                #   Call between .Ltmp11 and .Ltmp12
	.uleb128 .Ltmp13-.Lfunc_begin0          #     jumps to .Ltmp13
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp14-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp15-.Ltmp14                #   Call between .Ltmp14 and .Ltmp15
	.uleb128 .Ltmp16-.Lfunc_begin0          #     jumps to .Ltmp16
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Lfunc_end2-.Ltmp15            #   Call between .Ltmp15 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2
                                        # -- End function
	.section	.text._ZN5perft7CounterC2Ev,"axG",@progbits,_ZN5perft7CounterC2Ev,comdat
	.weak	_ZN5perft7CounterC2Ev           # -- Begin function _ZN5perft7CounterC2Ev
	.p2align	4, 0x90
	.type	_ZN5perft7CounterC2Ev,@function
_ZN5perft7CounterC2Ev:                  # @_ZN5perft7CounterC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	movl	$0, 4(%rax)
	movl	$0, 8(%rax)
	movl	$0, 12(%rax)
	movl	$0, 16(%rax)
	movl	$0, 20(%rax)
	movl	$0, 24(%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	_ZN5perft7CounterC2Ev, .Lfunc_end3-_ZN5perft7CounterC2Ev
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
.Lfunc_end4:
	.size	_ZN5BoardD2Ev, .Lfunc_end4-_ZN5BoardD2Ev
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_Z6bannerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE # -- Begin function _Z6bannerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.p2align	4, 0x90
	.type	_Z6bannerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@function
_Z6bannerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: # @_Z6bannerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
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
	leaq	.L.str.7(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	movq	%rax, %rdi
	leaq	.L.str.7(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E@PLT
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	_Z6bannerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .Lfunc_end5-_Z6bannerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_endproc
                                        # -- End function
	.globl	_Z9run_testsv                   # -- Begin function _Z9run_testsv
	.p2align	4, 0x90
	.type	_Z9run_testsv,@function
_Z9run_testsv:                          # @_Z9run_testsv
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
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -80(%rbp)
	leaq	.L.str.8(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdi
	leaq	.L.str.9(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$1, -84(%rbp)
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$6, -84(%rbp)
	jge	.LBB6_9
# %bb.2:                                #   in Loop: Header=BB6_1 Depth=1
	movl	-84(%rbp), %esi
	leaq	-72(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -112(%rbp)                # 8-byte Spill
	callq	_ZNSt7__cxx119to_stringEi
.Ltmp17:
	leaq	.L.str.10(%rip), %rsi
	leaq	-40(%rbp), %rdi
	movq	-112(%rbp), %rdx                # 8-byte Reload
	callq	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_
.Ltmp18:
	jmp	.LBB6_3
.LBB6_3:                                #   in Loop: Header=BB6_1 Depth=1
.Ltmp20:
	leaq	-40(%rbp), %rdi
	callq	_Z6bannerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Ltmp21:
	jmp	.LBB6_4
.LBB6_4:                                #   in Loop: Header=BB6_1 Depth=1
	leaq	-40(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-72(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movl	-84(%rbp), %edi
	leaq	-76(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	callq	_Z20perft_classical_testiRiS_
# %bb.5:                                #   in Loop: Header=BB6_1 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB6_1
.LBB6_6:
.Ltmp19:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -96(%rbp)
	movl	%edx, -100(%rbp)
	jmp	.LBB6_8
.LBB6_7:
.Ltmp22:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -96(%rbp)
	movl	%edx, -100(%rbp)
	leaq	-40(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB6_8:
	leaq	-72(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.LBB6_11
.LBB6_9:
	movl	-80(%rbp), %esi
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	callq	_ZNSolsEi@PLT
	leaq	.L.str.11(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	_ZNSolsEi@PLT
	leaq	.L.str.12(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E@PLT
	movq	%fs:40, %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	jne	.LBB6_12
# %bb.10:
	addq	$112, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB6_11:
	.cfi_def_cfa %rbp, 16
	movq	-96(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.LBB6_12:
	callq	__stack_chk_fail@PLT
.Lfunc_end6:
	.size	_Z9run_testsv, .Lfunc_end6-_Z9run_testsv
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
	.uleb128 .Ltmp17-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp17
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp18-.Ltmp17                #   Call between .Ltmp17 and .Ltmp18
	.uleb128 .Ltmp19-.Lfunc_begin1          #     jumps to .Ltmp19
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp21-.Ltmp20                #   Call between .Ltmp20 and .Ltmp21
	.uleb128 .Ltmp22-.Lfunc_begin1          #     jumps to .Ltmp22
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Lfunc_end6-.Ltmp21            #   Call between .Ltmp21 and .Lfunc_end6
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
.Ltmp23:
	movl	$45, %edx
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movq	-96(%rbp), %rsi                 # 8-byte Reload
	movq	-104(%rbp), %rcx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EmcRKS3_@PLT
.Ltmp24:
	jmp	.LBB8_4
.LBB8_4:
	leaq	-16(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movzbl	-29(%rbp), %eax
	movl	%eax, %ecx
                                        # kill: def $ecx killed $ecx killed $rcx
	andl	$1, %ecx
	movl	%ecx, %esi
.Ltmp26:
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm@PLT
.Ltmp27:
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
.Ltmp25:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -56(%rbp)
	movl	%edx, -60(%rbp)
	leaq	-16(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB8_11
.LBB8_7:
.Ltmp28:
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
	.uleb128 .Ltmp23-.Lfunc_begin2          # >> Call Site 1 <<
	.uleb128 .Ltmp24-.Ltmp23                #   Call between .Ltmp23 and .Ltmp24
	.uleb128 .Ltmp25-.Lfunc_begin2          #     jumps to .Ltmp25
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp27-.Ltmp26                #   Call between .Ltmp26 and .Ltmp27
	.uleb128 .Ltmp28-.Lfunc_begin2          #     jumps to .Ltmp28
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Lfunc_end8-.Ltmp27            #   Call between .Ltmp27 and .Lfunc_end8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2
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
.Lfunc_end9:
	.size	_ZN5board10StateStackD2Ev, .Lfunc_end9-_ZN5board10StateStackD2Ev
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
.Ltmp29:
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	-48(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZSt8_DestroyIPN5board5StateES1_EvT_S3_RSaIT0_E
.Ltmp30:
	jmp	.LBB10_1
.LBB10_1:
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB10_2:
	.cfi_def_cfa %rbp, 16
.Ltmp31:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev
# %bb.3:
	movq	-16(%rbp), %rdi
	callq	__clang_call_terminate
.Lfunc_end10:
	.size	_ZNSt6vectorIN5board5StateESaIS1_EED2Ev, .Lfunc_end10-_ZNSt6vectorIN5board5StateESaIS1_EED2Ev
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
	.uleb128 .Ltmp29-.Lfunc_begin3          # >> Call Site 1 <<
	.uleb128 .Ltmp30-.Ltmp29                #   Call between .Ltmp29 and .Ltmp30
	.uleb128 .Ltmp31-.Lfunc_begin3          #     jumps to .Ltmp31
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
.Lfunc_end11:
	.size	_ZSt8_DestroyIPN5board5StateES1_EvT_S3_RSaIT0_E, .Lfunc_end11-_ZSt8_DestroyIPN5board5StateES1_EvT_S3_RSaIT0_E
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
.Lfunc_end12:
	.size	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv, .Lfunc_end12-_ZNSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv
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
.Ltmp32:
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE13_M_deallocateEPS1_m
.Ltmp33:
	jmp	.LBB13_1
.LBB13_1:
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implD2Ev
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB13_2:
	.cfi_def_cfa %rbp, 16
.Ltmp34:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implD2Ev
# %bb.3:
	movq	-16(%rbp), %rdi
	callq	__clang_call_terminate
.Lfunc_end13:
	.size	_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev, .Lfunc_end13-_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table13:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	156                             # @TType Encoding = indirect pcrel sdata8
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp32-.Lfunc_begin4          # >> Call Site 1 <<
	.uleb128 .Ltmp33-.Ltmp32                #   Call between .Ltmp32 and .Ltmp33
	.uleb128 .Ltmp34-.Lfunc_begin4          #     jumps to .Ltmp34
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
.Lfunc_end14:
	.size	__clang_call_terminate, .Lfunc_end14-__clang_call_terminate
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
.Lfunc_end15:
	.size	_ZSt8_DestroyIPN5board5StateEEvT_S3_, .Lfunc_end15-_ZSt8_DestroyIPN5board5StateEEvT_S3_
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
.Lfunc_end16:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPN5board5StateEEEvT_S5_, .Lfunc_end16-_ZNSt12_Destroy_auxILb1EE9__destroyIPN5board5StateEEEvT_S5_
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
	je	.LBB17_2
# %bb.1:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	_ZNSt16allocator_traitsISaIN5board5StateEEE10deallocateERS2_PS1_m
.LBB17_2:
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end17:
	.size	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE13_M_deallocateEPS1_m, .Lfunc_end17-_ZNSt12_Vector_baseIN5board5StateESaIS1_EE13_M_deallocateEPS1_m
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
.Lfunc_end18:
	.size	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implD2Ev, .Lfunc_end18-_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implD2Ev
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
.Lfunc_end19:
	.size	_ZNSt16allocator_traitsISaIN5board5StateEEE10deallocateERS2_PS1_m, .Lfunc_end19-_ZNSt16allocator_traitsISaIN5board5StateEEE10deallocateERS2_PS1_m
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
.Lfunc_end20:
	.size	_ZN9__gnu_cxx13new_allocatorIN5board5StateEE10deallocateEPS2_m, .Lfunc_end20-_ZN9__gnu_cxx13new_allocatorIN5board5StateEE10deallocateEPS2_m
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
.Lfunc_end21:
	.size	_ZNSaIN5board5StateEED2Ev, .Lfunc_end21-_ZNSaIN5board5StateEED2Ev
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
.Lfunc_end22:
	.size	_ZN9__gnu_cxx13new_allocatorIN5board5StateEED2Ev, .Lfunc_end22-_ZN9__gnu_cxx13new_allocatorIN5board5StateEED2Ev
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
.Lfunc_end25:
	.size	_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_, .Lfunc_end25-_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_tests.cpp
	.type	_GLOBAL__sub_I_tests.cpp,@function
_GLOBAL__sub_I_tests.cpp:               # @_GLOBAL__sub_I_tests.cpp
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
.Lfunc_end26:
	.size	_GLOBAL__sub_I_tests.cpp, .Lfunc_end26-_GLOBAL__sub_I_tests.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"["
	.size	.L.str, 2

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"] "
	.size	.L.str.1, 3

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Expected "
	.size	.L.str.2, 10

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	", got "
	.size	.L.str.3, 7

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"OK"
	.size	.L.str.4, 3

	.type	_ZL21perft_classical_nodes,@object # @_ZL21perft_classical_nodes
	.section	.rodata,"a",@progbits
	.p2align	4
_ZL21perft_classical_nodes:
	.long	1                               # 0x1
	.long	20                              # 0x14
	.long	400                             # 0x190
	.long	8902                            # 0x22c6
	.long	197281                          # 0x302a1
	.long	4865609                         # 0x4a3e49
	.size	_ZL21perft_classical_nodes, 24

	.type	.L.str.5,@object                # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"node count"
	.size	.L.str.5, 11

	.type	_ZL24perft_classical_captures,@object # @_ZL24perft_classical_captures
	.section	.rodata,"a",@progbits
	.p2align	4
_ZL24perft_classical_captures:
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	34                              # 0x22
	.long	1576                            # 0x628
	.long	82719                           # 0x1431f
	.size	_ZL24perft_classical_captures, 24

	.type	.L.str.6,@object                # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"capture count"
	.size	.L.str.6, 14

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"-----"
	.size	.L.str.7, 6

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Running test suite."
	.size	.L.str.8, 20

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"\n"
	.size	.L.str.9, 2

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"PERFT classical depth="
	.size	.L.str.10, 23

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"/"
	.size	.L.str.11, 2

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	" tests passed."
	.size	.L.str.12, 15

	.type	_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits,@object # @_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits
	.section	.rodata._ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits,"aG",@progbits,_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits,comdat
	.weak	_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits
	.p2align	4
_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits:
	.asciz	"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899"
	.size	_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits, 201

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_tests.cpp
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
	.addrsig_sym _Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_
	.addrsig_sym _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	.addrsig_sym _ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	.addrsig_sym _ZNSolsEi
	.addrsig_sym _ZNSolsEPFRSoS_E
	.addrsig_sym _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.addrsig_sym _Z20perft_classical_testiRiS_
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _ZN5perft5perftER5BoardiRNS_7CounterE
	.addrsig_sym _Z6bannerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.addrsig_sym _ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_
	.addrsig_sym _ZNSt7__cxx119to_stringEi
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
	.addrsig_sym _ZNSt8__detail14__to_chars_lenIjEEjT_i
	.addrsig_sym _ZNSt8__detail18__to_chars_10_implIjEEvPcjT_
	.addrsig_sym _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	.addrsig_sym _ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_
	.addrsig_sym _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc
	.addrsig_sym _GLOBAL__sub_I_tests.cpp
	.addrsig_sym _Unwind_Resume
	.addrsig_sym __stack_chk_fail
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym _ZSt4cout
	.addrsig_sym _ZL21perft_classical_nodes
	.addrsig_sym _ZL24perft_classical_captures
	.addrsig_sym _ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits
