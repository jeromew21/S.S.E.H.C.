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
	.globl	_Z18position_load_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRiS7_ # -- Begin function _Z18position_load_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRiS7_
	.p2align	4, 0x90
	.type	_Z18position_load_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRiS7_,@function
_Z18position_load_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRiS7_: # @_Z18position_load_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRiS7_
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
	subq	$2000, %rsp                     # imm = 0x7D0
                                        # kill: def $dl killed $dl killed $edx
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -1920(%rbp)
	movl	%esi, -1924(%rbp)
	andb	$1, %dl
	movb	%dl, -1925(%rbp)
	movq	%rcx, -1936(%rbp)
	movq	%r8, -1944(%rbp)
	leaq	-1280(%rbp), %rdi
	callq	_ZN5BoardC1Ev@PLT
	movq	-1920(%rbp), %rsi
.Ltmp0:
	leaq	-1312(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_@PLT
.Ltmp1:
	jmp	.LBB2_1
.LBB2_1:
.Ltmp2:
	leaq	-1280(%rbp), %rdi
	leaq	-1312(%rbp), %rsi
	callq	_ZN5Board12LoadPositionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.Ltmp3:
	jmp	.LBB2_2
.LBB2_2:
	leaq	-1312(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movzbl	-1925(%rbp), %eax
	andl	$1, %eax
.Ltmp5:
	leaq	-1280(%rbp), %rdi
	movl	%eax, -1960(%rbp)               # 4-byte Spill
	callq	_ZNK5Board8is_checkEv@PLT
.Ltmp6:
	movb	%al, -1961(%rbp)                # 1-byte Spill
	jmp	.LBB2_3
.LBB2_3:
	movb	-1961(%rbp), %al                # 1-byte Reload
	movzbl	%al, %ecx
	andl	$1, %ecx
	leaq	-1904(%rbp), %rdx
	movq	%rdx, %rdi
	movl	%ecx, -1968(%rbp)               # 4-byte Spill
	movq	%rdx, -1976(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp7:
	leaq	.L.str.5(%rip), %rsi
	leaq	-1344(%rbp), %rdi
	movq	-1976(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp8:
	jmp	.LBB2_4
.LBB2_4:
	movq	-1936(%rbp), %rcx
	movq	-1944(%rbp), %r8
.Ltmp10:
	leaq	-1344(%rbp), %rdx
	movl	-1960(%rbp), %edi               # 4-byte Reload
	movl	-1968(%rbp), %esi               # 4-byte Reload
	callq	_Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_
.Ltmp11:
	jmp	.LBB2_5
.LBB2_5:
	leaq	-1344(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1904(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movl	-1924(%rbp), %edi
.Ltmp13:
	leaq	-1864(%rbp), %rax
	leaq	-1280(%rbp), %rsi
	movl	%edi, -1980(%rbp)               # 4-byte Spill
	movq	%rax, %rdi
	callq	_ZN5Board11legal_movesEv@PLT
.Ltmp14:
	jmp	.LBB2_6
.LBB2_6:
.Ltmp15:
	leaq	-1864(%rbp), %rdi
	callq	_ZNK8MoveListILi256EE4sizeEv
.Ltmp16:
	movl	%eax, -1984(%rbp)               # 4-byte Spill
	jmp	.LBB2_7
.LBB2_7:
	leaq	-1912(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1992(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp18:
	leaq	.L.str.6(%rip), %rsi
	leaq	-1896(%rbp), %rdi
	movq	-1992(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp19:
	jmp	.LBB2_8
.LBB2_8:
	movq	-1936(%rbp), %rcx
	movq	-1944(%rbp), %r8
.Ltmp21:
	leaq	-1896(%rbp), %rdx
	movl	-1980(%rbp), %edi               # 4-byte Reload
	movl	-1984(%rbp), %esi               # 4-byte Reload
	callq	_Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_
.Ltmp22:
	jmp	.LBB2_9
.LBB2_9:
	leaq	-1896(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1912(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-1280(%rbp), %rdi
	callq	_ZN5BoardD2Ev
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB2_21
# %bb.10:
	addq	$2000, %rsp                     # imm = 0x7D0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB2_11:
	.cfi_def_cfa %rbp, 16
.Ltmp17:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1952(%rbp)
	movl	%edx, -1956(%rbp)
	jmp	.LBB2_19
.LBB2_12:
.Ltmp4:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1952(%rbp)
	movl	%edx, -1956(%rbp)
	leaq	-1312(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.LBB2_19
.LBB2_13:
.Ltmp9:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1952(%rbp)
	movl	%edx, -1956(%rbp)
	jmp	.LBB2_15
.LBB2_14:
.Ltmp12:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1952(%rbp)
	movl	%edx, -1956(%rbp)
	leaq	-1344(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB2_15:
	leaq	-1904(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB2_19
.LBB2_16:
.Ltmp20:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1952(%rbp)
	movl	%edx, -1956(%rbp)
	jmp	.LBB2_18
.LBB2_17:
.Ltmp23:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1952(%rbp)
	movl	%edx, -1956(%rbp)
	leaq	-1896(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB2_18:
	leaq	-1912(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
.LBB2_19:
	leaq	-1280(%rbp), %rdi
	callq	_ZN5BoardD2Ev
# %bb.20:
	movq	-1952(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.LBB2_21:
	callq	__stack_chk_fail@PLT
.Lfunc_end2:
	.size	_Z18position_load_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRiS7_, .Lfunc_end2-_Z18position_load_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRiS7_
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
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp17-.Lfunc_begin0          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp2-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp3-.Ltmp2                  #   Call between .Ltmp2 and .Ltmp3
	.uleb128 .Ltmp4-.Lfunc_begin0           #     jumps to .Ltmp4
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp5-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp6-.Ltmp5                  #   Call between .Ltmp5 and .Ltmp6
	.uleb128 .Ltmp17-.Lfunc_begin0          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp8-.Ltmp7                  #   Call between .Ltmp7 and .Ltmp8
	.uleb128 .Ltmp9-.Lfunc_begin0           #     jumps to .Ltmp9
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp11-.Ltmp10                #   Call between .Ltmp10 and .Ltmp11
	.uleb128 .Ltmp12-.Lfunc_begin0          #     jumps to .Ltmp12
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp16-.Ltmp13                #   Call between .Ltmp13 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin0          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin0          #     jumps to .Ltmp20
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin0          #     jumps to .Ltmp23
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Lfunc_end2-.Ltmp22            #   Call between .Ltmp22 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
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
.Lfunc_end3:
	.size	_ZNK8MoveListILi256EE4sizeEv, .Lfunc_end3-_ZNK8MoveListILi256EE4sizeEv
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
	.globl	_Z20perft_classical_testiRiS_   # -- Begin function _Z20perft_classical_testiRiS_
	.p2align	4, 0x90
	.type	_Z20perft_classical_testiRiS_,@function
_Z20perft_classical_testiRiS_:          # @_Z20perft_classical_testiRiS_
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
	subq	$1520, %rsp                     # imm = 0x5F0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movl	%edi, -1436(%rbp)
	movq	%rsi, -1448(%rbp)
	movq	%rdx, -1456(%rbp)
	leaq	-1280(%rbp), %rdi
	callq	_ZN5BoardC1Ev@PLT
.Ltmp24:
	leaq	-1408(%rbp), %rdi
	callq	_ZN5perft7CounterC2Ev
.Ltmp25:
	jmp	.LBB5_1
.LBB5_1:
	movl	-1436(%rbp), %esi
.Ltmp26:
	leaq	-1280(%rbp), %rdi
	leaq	-1408(%rbp), %rdx
	callq	_ZN5perft5perftER5BoardiRNS_7CounterE@PLT
.Ltmp27:
	jmp	.LBB5_2
.LBB5_2:
	movslq	-1436(%rbp), %rax
	leaq	_ZL21perft_classical_nodes(%rip), %rcx
	movl	(%rcx,%rax,4), %edi
	movl	-1408(%rbp), %esi
	leaq	-1416(%rbp), %rax
	movl	%edi, -1472(%rbp)               # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -1476(%rbp)               # 4-byte Spill
	movq	%rax, -1488(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp29:
	leaq	.L.str.7(%rip), %rsi
	leaq	-1312(%rbp), %rdi
	movq	-1488(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp30:
	jmp	.LBB5_3
.LBB5_3:
	movq	-1448(%rbp), %rcx
	movq	-1456(%rbp), %r8
.Ltmp32:
	leaq	-1312(%rbp), %rdx
	movl	-1472(%rbp), %edi               # 4-byte Reload
	movl	-1476(%rbp), %esi               # 4-byte Reload
	callq	_Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_
.Ltmp33:
	jmp	.LBB5_4
.LBB5_4:
	leaq	-1312(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1416(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movslq	-1436(%rbp), %rax
	leaq	_ZL24perft_classical_captures(%rip), %rcx
	movl	(%rcx,%rax,4), %edi
	movl	-1404(%rbp), %esi
	leaq	-1424(%rbp), %rax
	movl	%edi, -1492(%rbp)               # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -1496(%rbp)               # 4-byte Spill
	movq	%rax, -1504(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp35:
	leaq	.L.str.8(%rip), %rsi
	leaq	-1344(%rbp), %rdi
	movq	-1504(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp36:
	jmp	.LBB5_5
.LBB5_5:
	movq	-1448(%rbp), %rcx
	movq	-1456(%rbp), %r8
.Ltmp38:
	leaq	-1344(%rbp), %rdx
	movl	-1492(%rbp), %edi               # 4-byte Reload
	movl	-1496(%rbp), %esi               # 4-byte Reload
	callq	_Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_
.Ltmp39:
	jmp	.LBB5_6
.LBB5_6:
	leaq	-1344(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1424(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movslq	-1436(%rbp), %rax
	leaq	_ZL24perft_classical_captures(%rip), %rcx
	movl	(%rcx,%rax,4), %edi
	movl	-1388(%rbp), %esi
	leaq	-1432(%rbp), %rax
	movl	%edi, -1508(%rbp)               # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -1512(%rbp)               # 4-byte Spill
	movq	%rax, -1520(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp41:
	leaq	.L.str.9(%rip), %rsi
	leaq	-1376(%rbp), %rdi
	movq	-1520(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp42:
	jmp	.LBB5_7
.LBB5_7:
	movq	-1448(%rbp), %rcx
	movq	-1456(%rbp), %r8
.Ltmp44:
	leaq	-1376(%rbp), %rdx
	movl	-1508(%rbp), %edi               # 4-byte Reload
	movl	-1512(%rbp), %esi               # 4-byte Reload
	callq	_Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_
.Ltmp45:
	jmp	.LBB5_8
.LBB5_8:
	leaq	-1376(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1432(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-1280(%rbp), %rdi
	callq	_ZN5BoardD2Ev
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB5_22
# %bb.9:
	addq	$1520, %rsp                     # imm = 0x5F0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB5_10:
	.cfi_def_cfa %rbp, 16
.Ltmp28:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1464(%rbp)
	movl	%edx, -1468(%rbp)
	jmp	.LBB5_20
.LBB5_11:
.Ltmp31:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1464(%rbp)
	movl	%edx, -1468(%rbp)
	jmp	.LBB5_13
.LBB5_12:
.Ltmp34:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1464(%rbp)
	movl	%edx, -1468(%rbp)
	leaq	-1312(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB5_13:
	leaq	-1416(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB5_20
.LBB5_14:
.Ltmp37:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1464(%rbp)
	movl	%edx, -1468(%rbp)
	jmp	.LBB5_16
.LBB5_15:
.Ltmp40:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1464(%rbp)
	movl	%edx, -1468(%rbp)
	leaq	-1344(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB5_16:
	leaq	-1424(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB5_20
.LBB5_17:
.Ltmp43:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1464(%rbp)
	movl	%edx, -1468(%rbp)
	jmp	.LBB5_19
.LBB5_18:
.Ltmp46:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1464(%rbp)
	movl	%edx, -1468(%rbp)
	leaq	-1376(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB5_19:
	leaq	-1432(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
.LBB5_20:
	leaq	-1280(%rbp), %rdi
	callq	_ZN5BoardD2Ev
# %bb.21:
	movq	-1464(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.LBB5_22:
	callq	__stack_chk_fail@PLT
.Lfunc_end5:
	.size	_Z20perft_classical_testiRiS_, .Lfunc_end5-_Z20perft_classical_testiRiS_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table5:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp24-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp24
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp27-.Ltmp24                #   Call between .Ltmp24 and .Ltmp27
	.uleb128 .Ltmp28-.Lfunc_begin1          #     jumps to .Ltmp28
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp30-.Ltmp29                #   Call between .Ltmp29 and .Ltmp30
	.uleb128 .Ltmp31-.Lfunc_begin1          #     jumps to .Ltmp31
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp32-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp33-.Ltmp32                #   Call between .Ltmp32 and .Ltmp33
	.uleb128 .Ltmp34-.Lfunc_begin1          #     jumps to .Ltmp34
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp36-.Ltmp35                #   Call between .Ltmp35 and .Ltmp36
	.uleb128 .Ltmp37-.Lfunc_begin1          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp39-.Ltmp38                #   Call between .Ltmp38 and .Ltmp39
	.uleb128 .Ltmp40-.Lfunc_begin1          #     jumps to .Ltmp40
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp41-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Ltmp42-.Ltmp41                #   Call between .Ltmp41 and .Ltmp42
	.uleb128 .Ltmp43-.Lfunc_begin1          #     jumps to .Ltmp43
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin1          # >> Call Site 8 <<
	.uleb128 .Ltmp45-.Ltmp44                #   Call between .Ltmp44 and .Ltmp45
	.uleb128 .Ltmp46-.Lfunc_begin1          #     jumps to .Ltmp46
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp45-.Lfunc_begin1          # >> Call Site 9 <<
	.uleb128 .Lfunc_end5-.Ltmp45            #   Call between .Ltmp45 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
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
.Lfunc_end6:
	.size	_ZN5perft7CounterC2Ev, .Lfunc_end6-_ZN5perft7CounterC2Ev
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
	leaq	.L.str.10(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	movq	%rax, %rdi
	leaq	.L.str.10(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E@PLT
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	_Z6bannerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .Lfunc_end7-_Z6bannerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_endproc
                                        # -- End function
	.globl	_Z9run_testsv                   # -- Begin function _Z9run_testsv
	.p2align	4, 0x90
	.type	_Z9run_testsv,@function
_Z9run_testsv:                          # @_Z9run_testsv
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
	subq	$304, %rsp                      # imm = 0x130
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movl	$0, -204(%rbp)
	movl	$0, -208(%rbp)
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	.L.str.11(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.L.str.12(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	-216(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -264(%rbp)                # 8-byte Spill
	movq	%rcx, -272(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp47:
	leaq	.L.str.13(%rip), %rsi
	leaq	-40(%rbp), %rdi
	movq	-272(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp48:
	jmp	.LBB8_1
.LBB8_1:
.Ltmp50:
	leaq	-40(%rbp), %rdi
	callq	_Z6bannerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Ltmp51:
	jmp	.LBB8_2
.LBB8_2:
	leaq	-40(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-216(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -280(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp53:
	leaq	.L.str.14(%rip), %rsi
	leaq	-72(%rbp), %rdi
	movq	-280(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp54:
	jmp	.LBB8_3
.LBB8_3:
.Ltmp56:
	leaq	-72(%rbp), %rdi
	movl	$41, %esi
	xorl	%edx, %edx
	leaq	-204(%rbp), %rcx
	leaq	-208(%rbp), %r8
	callq	_Z18position_load_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRiS7_
.Ltmp57:
	jmp	.LBB8_4
.LBB8_4:
	leaq	-72(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-224(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-232(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -288(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp59:
	leaq	.L.str.15(%rip), %rsi
	leaq	-104(%rbp), %rdi
	movq	-288(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp60:
	jmp	.LBB8_5
.LBB8_5:
.Ltmp62:
	leaq	-104(%rbp), %rdi
	movl	$4, %esi
	movl	$1, %edx
	leaq	-204(%rbp), %rcx
	leaq	-208(%rbp), %r8
	callq	_Z18position_load_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRiS7_
.Ltmp63:
	jmp	.LBB8_6
.LBB8_6:
	leaq	-104(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-232(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -296(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp65:
	leaq	.L.str.16(%rip), %rsi
	leaq	-136(%rbp), %rdi
	movq	-296(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp66:
	jmp	.LBB8_7
.LBB8_7:
.Ltmp68:
	leaq	-136(%rbp), %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	leaq	-204(%rbp), %rcx
	leaq	-208(%rbp), %r8
	callq	_Z18position_load_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRiS7_
.Ltmp69:
	jmp	.LBB8_8
.LBB8_8:
	leaq	-136(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-240(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movl	$1, -256(%rbp)
.LBB8_9:                                # =>This Inner Loop Header: Depth=1
	cmpl	$6, -256(%rbp)
	jge	.LBB8_29
# %bb.10:                               #   in Loop: Header=BB8_9 Depth=1
	movl	-256(%rbp), %esi
	leaq	-200(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -304(%rbp)                # 8-byte Spill
	callq	_ZNSt7__cxx119to_stringEi
.Ltmp71:
	leaq	.L.str.17(%rip), %rsi
	leaq	-168(%rbp), %rdi
	movq	-304(%rbp), %rdx                # 8-byte Reload
	callq	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_
.Ltmp72:
	jmp	.LBB8_11
.LBB8_11:                               #   in Loop: Header=BB8_9 Depth=1
.Ltmp74:
	leaq	-168(%rbp), %rdi
	callq	_Z6bannerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Ltmp75:
	jmp	.LBB8_12
.LBB8_12:                               #   in Loop: Header=BB8_9 Depth=1
	leaq	-168(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-200(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movl	-256(%rbp), %edi
	leaq	-204(%rbp), %rsi
	leaq	-208(%rbp), %rdx
	callq	_Z20perft_classical_testiRiS_
# %bb.13:                               #   in Loop: Header=BB8_9 Depth=1
	movl	-256(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -256(%rbp)
	jmp	.LBB8_9
.LBB8_14:
.Ltmp49:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -248(%rbp)
	movl	%edx, -252(%rbp)
	jmp	.LBB8_16
.LBB8_15:
.Ltmp52:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -248(%rbp)
	movl	%edx, -252(%rbp)
	leaq	-40(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB8_16:
	leaq	-216(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB8_31
.LBB8_17:
.Ltmp55:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -248(%rbp)
	movl	%edx, -252(%rbp)
	jmp	.LBB8_19
.LBB8_18:
.Ltmp58:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -248(%rbp)
	movl	%edx, -252(%rbp)
	leaq	-72(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB8_19:
	leaq	-224(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB8_31
.LBB8_20:
.Ltmp61:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -248(%rbp)
	movl	%edx, -252(%rbp)
	jmp	.LBB8_22
.LBB8_21:
.Ltmp64:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -248(%rbp)
	movl	%edx, -252(%rbp)
	leaq	-104(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB8_22:
	leaq	-232(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB8_31
.LBB8_23:
.Ltmp67:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -248(%rbp)
	movl	%edx, -252(%rbp)
	jmp	.LBB8_25
.LBB8_24:
.Ltmp70:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -248(%rbp)
	movl	%edx, -252(%rbp)
	leaq	-136(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB8_25:
	leaq	-240(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB8_31
.LBB8_26:
.Ltmp73:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -248(%rbp)
	movl	%edx, -252(%rbp)
	jmp	.LBB8_28
.LBB8_27:
.Ltmp76:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -248(%rbp)
	movl	%edx, -252(%rbp)
	leaq	-168(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB8_28:
	leaq	-200(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.LBB8_31
.LBB8_29:
	movl	-208(%rbp), %esi
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	callq	_ZNSolsEi@PLT
	leaq	.L.str.18(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	-204(%rbp), %esi
	movq	%rax, %rdi
	callq	_ZNSolsEi@PLT
	leaq	.L.str.19(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E@PLT
	movq	%fs:40, %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	jne	.LBB8_32
# %bb.30:
	addq	$304, %rsp                      # imm = 0x130
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB8_31:
	.cfi_def_cfa %rbp, 16
	movq	-248(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.LBB8_32:
	callq	__stack_chk_fail@PLT
.Lfunc_end8:
	.size	_Z9run_testsv, .Lfunc_end8-_Z9run_testsv
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
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp47-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp47
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp48-.Ltmp47                #   Call between .Ltmp47 and .Ltmp48
	.uleb128 .Ltmp49-.Lfunc_begin2          #     jumps to .Ltmp49
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp51-.Ltmp50                #   Call between .Ltmp50 and .Ltmp51
	.uleb128 .Ltmp52-.Lfunc_begin2          #     jumps to .Ltmp52
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp54-.Ltmp53                #   Call between .Ltmp53 and .Ltmp54
	.uleb128 .Ltmp55-.Lfunc_begin2          #     jumps to .Ltmp55
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp56-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp57-.Ltmp56                #   Call between .Ltmp56 and .Ltmp57
	.uleb128 .Ltmp58-.Lfunc_begin2          #     jumps to .Ltmp58
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp59-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Ltmp60-.Ltmp59                #   Call between .Ltmp59 and .Ltmp60
	.uleb128 .Ltmp61-.Lfunc_begin2          #     jumps to .Ltmp61
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp62-.Lfunc_begin2          # >> Call Site 7 <<
	.uleb128 .Ltmp63-.Ltmp62                #   Call between .Ltmp62 and .Ltmp63
	.uleb128 .Ltmp64-.Lfunc_begin2          #     jumps to .Ltmp64
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin2          # >> Call Site 8 <<
	.uleb128 .Ltmp66-.Ltmp65                #   Call between .Ltmp65 and .Ltmp66
	.uleb128 .Ltmp67-.Lfunc_begin2          #     jumps to .Ltmp67
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp68-.Lfunc_begin2          # >> Call Site 9 <<
	.uleb128 .Ltmp69-.Ltmp68                #   Call between .Ltmp68 and .Ltmp69
	.uleb128 .Ltmp70-.Lfunc_begin2          #     jumps to .Ltmp70
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp69-.Lfunc_begin2          # >> Call Site 10 <<
	.uleb128 .Ltmp71-.Ltmp69                #   Call between .Ltmp69 and .Ltmp71
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp71-.Lfunc_begin2          # >> Call Site 11 <<
	.uleb128 .Ltmp72-.Ltmp71                #   Call between .Ltmp71 and .Ltmp72
	.uleb128 .Ltmp73-.Lfunc_begin2          #     jumps to .Ltmp73
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp74-.Lfunc_begin2          # >> Call Site 12 <<
	.uleb128 .Ltmp75-.Ltmp74                #   Call between .Ltmp74 and .Ltmp75
	.uleb128 .Ltmp76-.Lfunc_begin2          #     jumps to .Ltmp76
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp75-.Lfunc_begin2          # >> Call Site 13 <<
	.uleb128 .Lfunc_end8-.Ltmp75            #   Call between .Ltmp75 and .Lfunc_end8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
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
.Lfunc_end9:
	.size	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_, .Lfunc_end9-_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx119to_stringEi,"axG",@progbits,_ZNSt7__cxx119to_stringEi,comdat
	.weak	_ZNSt7__cxx119to_stringEi       # -- Begin function _ZNSt7__cxx119to_stringEi
	.p2align	4, 0x90
	.type	_ZNSt7__cxx119to_stringEi,@function
_ZNSt7__cxx119to_stringEi:              # @_ZNSt7__cxx119to_stringEi
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
	je	.LBB10_2
# %bb.1:
	movl	-28(%rbp), %eax
	xorl	$-1, %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)                 # 4-byte Spill
	jmp	.LBB10_3
.LBB10_2:
	movl	-28(%rbp), %eax
	movl	%eax, -84(%rbp)                 # 4-byte Spill
.LBB10_3:
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
.Ltmp77:
	movl	$45, %edx
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movq	-96(%rbp), %rsi                 # 8-byte Reload
	movq	-104(%rbp), %rcx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EmcRKS3_@PLT
.Ltmp78:
	jmp	.LBB10_4
.LBB10_4:
	leaq	-16(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movzbl	-29(%rbp), %eax
	movl	%eax, %ecx
                                        # kill: def $ecx killed $ecx killed $rcx
	andl	$1, %ecx
	movl	%ecx, %esi
.Ltmp80:
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm@PLT
.Ltmp81:
	movq	%rax, -112(%rbp)                # 8-byte Spill
	jmp	.LBB10_5
.LBB10_5:
	movl	-40(%rbp), %esi
	movl	-36(%rbp), %edx
	movq	-112(%rbp), %rdi                # 8-byte Reload
	callq	_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_
	movb	$1, -41(%rbp)
	testb	$1, -41(%rbp)
	jne	.LBB10_9
	jmp	.LBB10_8
.LBB10_6:
.Ltmp79:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -56(%rbp)
	movl	%edx, -60(%rbp)
	leaq	-16(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB10_11
.LBB10_7:
.Ltmp82:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -56(%rbp)
	movl	%edx, -60(%rbp)
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.LBB10_11
.LBB10_8:
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB10_9:
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB10_12
# %bb.10:
	movq	-80(%rbp), %rax                 # 8-byte Reload
	addq	$112, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB10_11:
	.cfi_def_cfa %rbp, 16
	movq	-56(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.LBB10_12:
	callq	__stack_chk_fail@PLT
.Lfunc_end10:
	.size	_ZNSt7__cxx119to_stringEi, .Lfunc_end10-_ZNSt7__cxx119to_stringEi
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
	.uleb128 .Ltmp77-.Lfunc_begin3          # >> Call Site 1 <<
	.uleb128 .Ltmp78-.Ltmp77                #   Call between .Ltmp77 and .Ltmp78
	.uleb128 .Ltmp79-.Lfunc_begin3          #     jumps to .Ltmp79
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp80-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp81-.Ltmp80                #   Call between .Ltmp80 and .Ltmp81
	.uleb128 .Ltmp82-.Lfunc_begin3          #     jumps to .Ltmp82
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp81-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Lfunc_end10-.Ltmp81           #   Call between .Ltmp81 and .Lfunc_end10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
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
.Lfunc_end11:
	.size	_ZN5board10StateStackD2Ev, .Lfunc_end11-_ZN5board10StateStackD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIN5board5StateESaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorIN5board5StateESaIS1_EED2Ev,comdat
	.weak	_ZNSt6vectorIN5board5StateESaIS1_EED2Ev # -- Begin function _ZNSt6vectorIN5board5StateESaIS1_EED2Ev
	.p2align	4, 0x90
	.type	_ZNSt6vectorIN5board5StateESaIS1_EED2Ev,@function
_ZNSt6vectorIN5board5StateESaIS1_EED2Ev: # @_ZNSt6vectorIN5board5StateESaIS1_EED2Ev
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
.Ltmp83:
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	-48(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZSt8_DestroyIPN5board5StateES1_EvT_S3_RSaIT0_E
.Ltmp84:
	jmp	.LBB12_1
.LBB12_1:
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB12_2:
	.cfi_def_cfa %rbp, 16
.Ltmp85:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev
# %bb.3:
	movq	-16(%rbp), %rdi
	callq	__clang_call_terminate
.Lfunc_end12:
	.size	_ZNSt6vectorIN5board5StateESaIS1_EED2Ev, .Lfunc_end12-_ZNSt6vectorIN5board5StateESaIS1_EED2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table12:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	156                             # @TType Encoding = indirect pcrel sdata8
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp83-.Lfunc_begin4          # >> Call Site 1 <<
	.uleb128 .Ltmp84-.Ltmp83                #   Call between .Ltmp83 and .Ltmp84
	.uleb128 .Ltmp85-.Lfunc_begin4          #     jumps to .Ltmp85
	.byte	1                               #   On action: 1
.Lcst_end4:
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
.Lfunc_end13:
	.size	_ZSt8_DestroyIPN5board5StateES1_EvT_S3_RSaIT0_E, .Lfunc_end13-_ZSt8_DestroyIPN5board5StateES1_EvT_S3_RSaIT0_E
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
.Lfunc_end14:
	.size	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv, .Lfunc_end14-_ZNSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev,comdat
	.weak	_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev # -- Begin function _ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev,@function
_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev: # @_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	16(%rax), %rdx
	subq	%rcx, %rdx
	sarq	$6, %rdx
	movabsq	$-1085102592571150095, %rsi     # imm = 0xF0F0F0F0F0F0F0F1
	imulq	%rsi, %rdx
.Ltmp86:
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE13_M_deallocateEPS1_m
.Ltmp87:
	jmp	.LBB15_1
.LBB15_1:
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implD2Ev
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB15_2:
	.cfi_def_cfa %rbp, 16
.Ltmp88:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implD2Ev
# %bb.3:
	movq	-16(%rbp), %rdi
	callq	__clang_call_terminate
.Lfunc_end15:
	.size	_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev, .Lfunc_end15-_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table15:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	156                             # @TType Encoding = indirect pcrel sdata8
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp86-.Lfunc_begin5          # >> Call Site 1 <<
	.uleb128 .Ltmp87-.Ltmp86                #   Call between .Ltmp86 and .Ltmp87
	.uleb128 .Ltmp88-.Lfunc_begin5          #     jumps to .Ltmp88
	.byte	1                               #   On action: 1
.Lcst_end5:
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
.Lfunc_end16:
	.size	__clang_call_terminate, .Lfunc_end16-__clang_call_terminate
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
.Lfunc_end17:
	.size	_ZSt8_DestroyIPN5board5StateEEvT_S3_, .Lfunc_end17-_ZSt8_DestroyIPN5board5StateEEvT_S3_
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
.Lfunc_end18:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPN5board5StateEEEvT_S5_, .Lfunc_end18-_ZNSt12_Destroy_auxILb1EE9__destroyIPN5board5StateEEEvT_S5_
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
	je	.LBB19_2
# %bb.1:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	_ZNSt16allocator_traitsISaIN5board5StateEEE10deallocateERS2_PS1_m
.LBB19_2:
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end19:
	.size	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE13_M_deallocateEPS1_m, .Lfunc_end19-_ZNSt12_Vector_baseIN5board5StateESaIS1_EE13_M_deallocateEPS1_m
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
.Lfunc_end20:
	.size	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implD2Ev, .Lfunc_end20-_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implD2Ev
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
.Lfunc_end21:
	.size	_ZNSt16allocator_traitsISaIN5board5StateEEE10deallocateERS2_PS1_m, .Lfunc_end21-_ZNSt16allocator_traitsISaIN5board5StateEEE10deallocateERS2_PS1_m
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
.Lfunc_end22:
	.size	_ZN9__gnu_cxx13new_allocatorIN5board5StateEE10deallocateEPS2_m, .Lfunc_end22-_ZN9__gnu_cxx13new_allocatorIN5board5StateEE10deallocateEPS2_m
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
.Lfunc_end23:
	.size	_ZNSaIN5board5StateEED2Ev, .Lfunc_end23-_ZNSaIN5board5StateEED2Ev
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
.Lfunc_end24:
	.size	_ZN9__gnu_cxx13new_allocatorIN5board5StateEED2Ev, .Lfunc_end24-_ZN9__gnu_cxx13new_allocatorIN5board5StateEED2Ev
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
.LBB25_1:                               # =>This Inner Loop Header: Depth=1
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jae	.LBB25_3
# %bb.2:
	movl	-16(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB25_10
.LBB25_3:                               #   in Loop: Header=BB25_1 Depth=1
	movl	-8(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jae	.LBB25_5
# %bb.4:
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB25_10
.LBB25_5:                               #   in Loop: Header=BB25_1 Depth=1
	movl	-8(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jae	.LBB25_7
# %bb.6:
	movl	-16(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB25_10
.LBB25_7:                               #   in Loop: Header=BB25_1 Depth=1
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	cmpq	-32(%rbp), %rcx
	jae	.LBB25_9
# %bb.8:
	movl	-16(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB25_10
.LBB25_9:                               #   in Loop: Header=BB25_1 Depth=1
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
	jmp	.LBB25_1
.LBB25_10:
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end25:
	.size	_ZNSt8__detail14__to_chars_lenIjEEjT_i, .Lfunc_end25-_ZNSt8__detail14__to_chars_lenIjEEjT_i
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
.LBB26_1:                               # =>This Inner Loop Header: Depth=1
	cmpl	$100, -16(%rbp)
	jb	.LBB26_3
# %bb.2:                                #   in Loop: Header=BB26_1 Depth=1
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
	jmp	.LBB26_1
.LBB26_3:
	cmpl	$10, -16(%rbp)
	jb	.LBB26_5
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
	jmp	.LBB26_6
.LBB26_5:
	movl	-16(%rbp), %eax
	addl	$48, %eax
                                        # kill: def $al killed $al killed $eax
	movq	-8(%rbp), %rcx
	movb	%al, (%rcx)
.LBB26_6:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end26:
	.size	_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_, .Lfunc_end26-_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_
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
.Lfunc_end27:
	.size	_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_, .Lfunc_end27-_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_
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
.Lfunc_end28:
	.size	_GLOBAL__sub_I_tests.cpp, .Lfunc_end28-_GLOBAL__sub_I_tests.cpp
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

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"is check?"
	.size	.L.str.5, 10

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"count legal"
	.size	.L.str.6, 12

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

	.type	.L.str.7,@object                # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"node count"
	.size	.L.str.7, 11

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

	.type	.L.str.8,@object                # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"capture count"
	.size	.L.str.8, 14

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"check count"
	.size	.L.str.9, 12

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"-----"
	.size	.L.str.10, 6

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Running test suite."
	.size	.L.str.11, 20

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"\n"
	.size	.L.str.12, 2

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"Load FEN Basic Test"
	.size	.L.str.13, 20

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"r1b4k/pp4p1/3n1nqp/3B4/2P2p2/2Q4P/PB2PP2/R5RK b - - 2 30"
	.size	.L.str.14, 57

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"rn1qk2r/pp3ppp/4pn2/3p4/8/1P1P2P1/PBPbQP1P/2KR1BNR w kq - 0 11"
	.size	.L.str.15, 63

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"r1b1kbnr/pppp1Npp/8/8/4q3/5n2/PPPPBP1P/RNBQKR2 w Qkq - 2 8"
	.size	.L.str.16, 59

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"PERFT classical depth="
	.size	.L.str.17, 23

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"/"
	.size	.L.str.18, 2

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	" tests passed."
	.size	.L.str.19, 15

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
	.addrsig_sym _Z18position_load_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRiS7_
	.addrsig_sym _ZN5Board12LoadPositionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _ZNK5Board8is_checkEv
	.addrsig_sym _ZN5Board11legal_movesEv
	.addrsig_sym _ZNK8MoveListILi256EE4sizeEv
	.addrsig_sym _Z20perft_classical_testiRiS_
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
