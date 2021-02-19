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
	.globl	_Z19perft_kiwipete_testiRiS_    # -- Begin function _Z19perft_kiwipete_testiRiS_
	.p2align	4, 0x90
	.type	_Z19perft_kiwipete_testiRiS_,@function
_Z19perft_kiwipete_testiRiS_:           # @_Z19perft_kiwipete_testiRiS_
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
	subq	$1680, %rsp                     # imm = 0x690
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movl	%edi, -1556(%rbp)
	movq	%rsi, -1568(%rbp)
	movq	%rdx, -1576(%rbp)
	leaq	-1280(%rbp), %rdi
	callq	_ZN5BoardC1Ev@PLT
.Ltmp24:
	leaq	-1504(%rbp), %rdi
	callq	_ZN5perft7CounterC2Ev
.Ltmp25:
	jmp	.LBB5_1
.LBB5_1:
	leaq	-1512(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1600(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp26:
	leaq	.L.str.7(%rip), %rsi
	leaq	-1312(%rbp), %rdi
	movq	-1600(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp27:
	jmp	.LBB5_2
.LBB5_2:
.Ltmp29:
	leaq	-1280(%rbp), %rdi
	leaq	-1312(%rbp), %rsi
	callq	_ZN5Board12LoadPositionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.Ltmp30:
	jmp	.LBB5_3
.LBB5_3:
	leaq	-1312(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1512(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movl	-1556(%rbp), %esi
.Ltmp32:
	leaq	-1280(%rbp), %rdi
	leaq	-1504(%rbp), %rdx
	callq	_ZN5perft5perftER5BoardiRNS_7CounterE@PLT
.Ltmp33:
	jmp	.LBB5_4
.LBB5_4:
	movslq	-1556(%rbp), %rax
	leaq	_ZL14perft_kp_nodes(%rip), %rcx
	movl	(%rcx,%rax,4), %edi
	movl	-1504(%rbp), %esi
	leaq	-1520(%rbp), %rax
	movl	%edi, -1604(%rbp)               # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -1608(%rbp)               # 4-byte Spill
	movq	%rax, -1616(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp35:
	leaq	.L.str.8(%rip), %rsi
	leaq	-1344(%rbp), %rdi
	movq	-1616(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp36:
	jmp	.LBB5_5
.LBB5_5:
	movq	-1568(%rbp), %rcx
	movq	-1576(%rbp), %r8
.Ltmp38:
	leaq	-1344(%rbp), %rdx
	movl	-1604(%rbp), %edi               # 4-byte Reload
	movl	-1608(%rbp), %esi               # 4-byte Reload
	callq	_Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_
.Ltmp39:
	jmp	.LBB5_6
.LBB5_6:
	leaq	-1344(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1520(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movslq	-1556(%rbp), %rax
	leaq	_ZL17perft_kp_captures(%rip), %rcx
	movl	(%rcx,%rax,4), %edi
	movl	-1500(%rbp), %esi
	leaq	-1528(%rbp), %rax
	movl	%edi, -1620(%rbp)               # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -1624(%rbp)               # 4-byte Spill
	movq	%rax, -1632(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp41:
	leaq	.L.str.9(%rip), %rsi
	leaq	-1376(%rbp), %rdi
	movq	-1632(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp42:
	jmp	.LBB5_7
.LBB5_7:
	movq	-1568(%rbp), %rcx
	movq	-1576(%rbp), %r8
.Ltmp44:
	leaq	-1376(%rbp), %rdx
	movl	-1620(%rbp), %edi               # 4-byte Reload
	movl	-1624(%rbp), %esi               # 4-byte Reload
	callq	_Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_
.Ltmp45:
	jmp	.LBB5_8
.LBB5_8:
	leaq	-1376(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1528(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movslq	-1556(%rbp), %rax
	leaq	_ZL15perft_kp_checks(%rip), %rcx
	movl	(%rcx,%rax,4), %edi
	movl	-1484(%rbp), %esi
	leaq	-1536(%rbp), %rax
	movl	%edi, -1636(%rbp)               # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -1640(%rbp)               # 4-byte Spill
	movq	%rax, -1648(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp47:
	leaq	.L.str.10(%rip), %rsi
	leaq	-1408(%rbp), %rdi
	movq	-1648(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp48:
	jmp	.LBB5_9
.LBB5_9:
	movq	-1568(%rbp), %rcx
	movq	-1576(%rbp), %r8
.Ltmp50:
	leaq	-1408(%rbp), %rdx
	movl	-1636(%rbp), %edi               # 4-byte Reload
	movl	-1640(%rbp), %esi               # 4-byte Reload
	callq	_Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_
.Ltmp51:
	jmp	.LBB5_10
.LBB5_10:
	leaq	-1408(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1536(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movslq	-1556(%rbp), %rax
	leaq	_ZL12perft_kp_eps(%rip), %rcx
	movl	(%rcx,%rax,4), %edi
	movl	-1496(%rbp), %esi
	leaq	-1544(%rbp), %rax
	movl	%edi, -1652(%rbp)               # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -1656(%rbp)               # 4-byte Spill
	movq	%rax, -1664(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp53:
	leaq	.L.str.11(%rip), %rsi
	leaq	-1440(%rbp), %rdi
	movq	-1664(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp54:
	jmp	.LBB5_11
.LBB5_11:
	movq	-1568(%rbp), %rcx
	movq	-1576(%rbp), %r8
.Ltmp56:
	leaq	-1440(%rbp), %rdx
	movl	-1652(%rbp), %edi               # 4-byte Reload
	movl	-1656(%rbp), %esi               # 4-byte Reload
	callq	_Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_
.Ltmp57:
	jmp	.LBB5_12
.LBB5_12:
	leaq	-1440(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1544(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movslq	-1556(%rbp), %rax
	leaq	_ZL16perft_kp_castles(%rip), %rcx
	movl	(%rcx,%rax,4), %edi
	movl	-1492(%rbp), %esi
	leaq	-1552(%rbp), %rax
	movl	%edi, -1668(%rbp)               # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -1672(%rbp)               # 4-byte Spill
	movq	%rax, -1680(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp59:
	leaq	.L.str.12(%rip), %rsi
	leaq	-1472(%rbp), %rdi
	movq	-1680(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp60:
	jmp	.LBB5_13
.LBB5_13:
	movq	-1568(%rbp), %rcx
	movq	-1576(%rbp), %r8
.Ltmp62:
	leaq	-1472(%rbp), %rdx
	movl	-1668(%rbp), %edi               # 4-byte Reload
	movl	-1672(%rbp), %esi               # 4-byte Reload
	callq	_Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_
.Ltmp63:
	jmp	.LBB5_14
.LBB5_14:
	leaq	-1472(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1552(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-1280(%rbp), %rdi
	callq	_ZN5BoardD2Ev
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB5_37
# %bb.15:
	addq	$1680, %rsp                     # imm = 0x690
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB5_16:
	.cfi_def_cfa %rbp, 16
.Ltmp34:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1584(%rbp)
	movl	%edx, -1588(%rbp)
	jmp	.LBB5_35
.LBB5_17:
.Ltmp28:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1584(%rbp)
	movl	%edx, -1588(%rbp)
	jmp	.LBB5_19
.LBB5_18:
.Ltmp31:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1584(%rbp)
	movl	%edx, -1588(%rbp)
	leaq	-1312(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB5_19:
	leaq	-1512(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB5_35
.LBB5_20:
.Ltmp37:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1584(%rbp)
	movl	%edx, -1588(%rbp)
	jmp	.LBB5_22
.LBB5_21:
.Ltmp40:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1584(%rbp)
	movl	%edx, -1588(%rbp)
	leaq	-1344(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB5_22:
	leaq	-1520(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB5_35
.LBB5_23:
.Ltmp43:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1584(%rbp)
	movl	%edx, -1588(%rbp)
	jmp	.LBB5_25
.LBB5_24:
.Ltmp46:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1584(%rbp)
	movl	%edx, -1588(%rbp)
	leaq	-1376(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB5_25:
	leaq	-1528(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB5_35
.LBB5_26:
.Ltmp49:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1584(%rbp)
	movl	%edx, -1588(%rbp)
	jmp	.LBB5_28
.LBB5_27:
.Ltmp52:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1584(%rbp)
	movl	%edx, -1588(%rbp)
	leaq	-1408(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB5_28:
	leaq	-1536(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB5_35
.LBB5_29:
.Ltmp55:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1584(%rbp)
	movl	%edx, -1588(%rbp)
	jmp	.LBB5_31
.LBB5_30:
.Ltmp58:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1584(%rbp)
	movl	%edx, -1588(%rbp)
	leaq	-1440(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB5_31:
	leaq	-1544(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB5_35
.LBB5_32:
.Ltmp61:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1584(%rbp)
	movl	%edx, -1588(%rbp)
	jmp	.LBB5_34
.LBB5_33:
.Ltmp64:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1584(%rbp)
	movl	%edx, -1588(%rbp)
	leaq	-1472(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB5_34:
	leaq	-1552(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
.LBB5_35:
	leaq	-1280(%rbp), %rdi
	callq	_ZN5BoardD2Ev
# %bb.36:
	movq	-1584(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.LBB5_37:
	callq	__stack_chk_fail@PLT
.Lfunc_end5:
	.size	_Z19perft_kiwipete_testiRiS_, .Lfunc_end5-_Z19perft_kiwipete_testiRiS_
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
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp34-.Lfunc_begin1          #     jumps to .Ltmp34
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp27-.Ltmp26                #   Call between .Ltmp26 and .Ltmp27
	.uleb128 .Ltmp28-.Lfunc_begin1          #     jumps to .Ltmp28
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp30-.Ltmp29                #   Call between .Ltmp29 and .Ltmp30
	.uleb128 .Ltmp31-.Lfunc_begin1          #     jumps to .Ltmp31
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp32-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp33-.Ltmp32                #   Call between .Ltmp32 and .Ltmp33
	.uleb128 .Ltmp34-.Lfunc_begin1          #     jumps to .Ltmp34
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp36-.Ltmp35                #   Call between .Ltmp35 and .Ltmp36
	.uleb128 .Ltmp37-.Lfunc_begin1          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Ltmp39-.Ltmp38                #   Call between .Ltmp38 and .Ltmp39
	.uleb128 .Ltmp40-.Lfunc_begin1          #     jumps to .Ltmp40
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp41-.Lfunc_begin1          # >> Call Site 8 <<
	.uleb128 .Ltmp42-.Ltmp41                #   Call between .Ltmp41 and .Ltmp42
	.uleb128 .Ltmp43-.Lfunc_begin1          #     jumps to .Ltmp43
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin1          # >> Call Site 9 <<
	.uleb128 .Ltmp45-.Ltmp44                #   Call between .Ltmp44 and .Ltmp45
	.uleb128 .Ltmp46-.Lfunc_begin1          #     jumps to .Ltmp46
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin1          # >> Call Site 10 <<
	.uleb128 .Ltmp48-.Ltmp47                #   Call between .Ltmp47 and .Ltmp48
	.uleb128 .Ltmp49-.Lfunc_begin1          #     jumps to .Ltmp49
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin1          # >> Call Site 11 <<
	.uleb128 .Ltmp51-.Ltmp50                #   Call between .Ltmp50 and .Ltmp51
	.uleb128 .Ltmp52-.Lfunc_begin1          #     jumps to .Ltmp52
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin1          # >> Call Site 12 <<
	.uleb128 .Ltmp54-.Ltmp53                #   Call between .Ltmp53 and .Ltmp54
	.uleb128 .Ltmp55-.Lfunc_begin1          #     jumps to .Ltmp55
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp56-.Lfunc_begin1          # >> Call Site 13 <<
	.uleb128 .Ltmp57-.Ltmp56                #   Call between .Ltmp56 and .Ltmp57
	.uleb128 .Ltmp58-.Lfunc_begin1          #     jumps to .Ltmp58
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp59-.Lfunc_begin1          # >> Call Site 14 <<
	.uleb128 .Ltmp60-.Ltmp59                #   Call between .Ltmp59 and .Ltmp60
	.uleb128 .Ltmp61-.Lfunc_begin1          #     jumps to .Ltmp61
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp62-.Lfunc_begin1          # >> Call Site 15 <<
	.uleb128 .Ltmp63-.Ltmp62                #   Call between .Ltmp62 and .Ltmp63
	.uleb128 .Ltmp64-.Lfunc_begin1          #     jumps to .Ltmp64
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp63-.Lfunc_begin1          # >> Call Site 16 <<
	.uleb128 .Lfunc_end5-.Ltmp63            #   Call between .Ltmp63 and .Lfunc_end5
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
	.globl	_Z20perft_classical_testiRiS_   # -- Begin function _Z20perft_classical_testiRiS_
	.p2align	4, 0x90
	.type	_Z20perft_classical_testiRiS_,@function
_Z20perft_classical_testiRiS_:          # @_Z20perft_classical_testiRiS_
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
	subq	$1520, %rsp                     # imm = 0x5F0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movl	%edi, -1436(%rbp)
	movq	%rsi, -1448(%rbp)
	movq	%rdx, -1456(%rbp)
	leaq	-1280(%rbp), %rdi
	callq	_ZN5BoardC1Ev@PLT
.Ltmp65:
	leaq	-1408(%rbp), %rdi
	callq	_ZN5perft7CounterC2Ev
.Ltmp66:
	jmp	.LBB7_1
.LBB7_1:
	movl	-1436(%rbp), %esi
.Ltmp67:
	leaq	-1280(%rbp), %rdi
	leaq	-1408(%rbp), %rdx
	callq	_ZN5perft5perftER5BoardiRNS_7CounterE@PLT
.Ltmp68:
	jmp	.LBB7_2
.LBB7_2:
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
.Ltmp70:
	leaq	.L.str.8(%rip), %rsi
	leaq	-1312(%rbp), %rdi
	movq	-1488(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp71:
	jmp	.LBB7_3
.LBB7_3:
	movq	-1448(%rbp), %rcx
	movq	-1456(%rbp), %r8
.Ltmp73:
	leaq	-1312(%rbp), %rdx
	movl	-1472(%rbp), %edi               # 4-byte Reload
	movl	-1476(%rbp), %esi               # 4-byte Reload
	callq	_Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_
.Ltmp74:
	jmp	.LBB7_4
.LBB7_4:
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
.Ltmp76:
	leaq	.L.str.9(%rip), %rsi
	leaq	-1344(%rbp), %rdi
	movq	-1504(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp77:
	jmp	.LBB7_5
.LBB7_5:
	movq	-1448(%rbp), %rcx
	movq	-1456(%rbp), %r8
.Ltmp79:
	leaq	-1344(%rbp), %rdx
	movl	-1492(%rbp), %edi               # 4-byte Reload
	movl	-1496(%rbp), %esi               # 4-byte Reload
	callq	_Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_
.Ltmp80:
	jmp	.LBB7_6
.LBB7_6:
	leaq	-1344(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1424(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movslq	-1436(%rbp), %rax
	leaq	_ZL22perft_classical_checks(%rip), %rcx
	movl	(%rcx,%rax,4), %edi
	movl	-1388(%rbp), %esi
	leaq	-1432(%rbp), %rax
	movl	%edi, -1508(%rbp)               # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -1512(%rbp)               # 4-byte Spill
	movq	%rax, -1520(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp82:
	leaq	.L.str.10(%rip), %rsi
	leaq	-1376(%rbp), %rdi
	movq	-1520(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp83:
	jmp	.LBB7_7
.LBB7_7:
	movq	-1448(%rbp), %rcx
	movq	-1456(%rbp), %r8
.Ltmp85:
	leaq	-1376(%rbp), %rdx
	movl	-1508(%rbp), %edi               # 4-byte Reload
	movl	-1512(%rbp), %esi               # 4-byte Reload
	callq	_Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_
.Ltmp86:
	jmp	.LBB7_8
.LBB7_8:
	leaq	-1376(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1432(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-1280(%rbp), %rdi
	callq	_ZN5BoardD2Ev
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB7_22
# %bb.9:
	addq	$1520, %rsp                     # imm = 0x5F0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB7_10:
	.cfi_def_cfa %rbp, 16
.Ltmp69:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1464(%rbp)
	movl	%edx, -1468(%rbp)
	jmp	.LBB7_20
.LBB7_11:
.Ltmp72:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1464(%rbp)
	movl	%edx, -1468(%rbp)
	jmp	.LBB7_13
.LBB7_12:
.Ltmp75:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1464(%rbp)
	movl	%edx, -1468(%rbp)
	leaq	-1312(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB7_13:
	leaq	-1416(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB7_20
.LBB7_14:
.Ltmp78:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1464(%rbp)
	movl	%edx, -1468(%rbp)
	jmp	.LBB7_16
.LBB7_15:
.Ltmp81:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1464(%rbp)
	movl	%edx, -1468(%rbp)
	leaq	-1344(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB7_16:
	leaq	-1424(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB7_20
.LBB7_17:
.Ltmp84:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1464(%rbp)
	movl	%edx, -1468(%rbp)
	jmp	.LBB7_19
.LBB7_18:
.Ltmp87:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1464(%rbp)
	movl	%edx, -1468(%rbp)
	leaq	-1376(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB7_19:
	leaq	-1432(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
.LBB7_20:
	leaq	-1280(%rbp), %rdi
	callq	_ZN5BoardD2Ev
# %bb.21:
	movq	-1464(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.LBB7_22:
	callq	__stack_chk_fail@PLT
.Lfunc_end7:
	.size	_Z20perft_classical_testiRiS_, .Lfunc_end7-_Z20perft_classical_testiRiS_
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
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp65-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp65
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp68-.Ltmp65                #   Call between .Ltmp65 and .Ltmp68
	.uleb128 .Ltmp69-.Lfunc_begin2          #     jumps to .Ltmp69
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp70-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp71-.Ltmp70                #   Call between .Ltmp70 and .Ltmp71
	.uleb128 .Ltmp72-.Lfunc_begin2          #     jumps to .Ltmp72
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp73-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp74-.Ltmp73                #   Call between .Ltmp73 and .Ltmp74
	.uleb128 .Ltmp75-.Lfunc_begin2          #     jumps to .Ltmp75
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp76-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp77-.Ltmp76                #   Call between .Ltmp76 and .Ltmp77
	.uleb128 .Ltmp78-.Lfunc_begin2          #     jumps to .Ltmp78
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp79-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Ltmp80-.Ltmp79                #   Call between .Ltmp79 and .Ltmp80
	.uleb128 .Ltmp81-.Lfunc_begin2          #     jumps to .Ltmp81
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp82-.Lfunc_begin2          # >> Call Site 7 <<
	.uleb128 .Ltmp83-.Ltmp82                #   Call between .Ltmp82 and .Ltmp83
	.uleb128 .Ltmp84-.Lfunc_begin2          #     jumps to .Ltmp84
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp85-.Lfunc_begin2          # >> Call Site 8 <<
	.uleb128 .Ltmp86-.Ltmp85                #   Call between .Ltmp85 and .Ltmp86
	.uleb128 .Ltmp87-.Lfunc_begin2          #     jumps to .Ltmp87
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp86-.Lfunc_begin2          # >> Call Site 9 <<
	.uleb128 .Lfunc_end7-.Ltmp86            #   Call between .Ltmp86 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2
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
	leaq	.L.str.13(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	movq	%rax, %rdi
	leaq	.L.str.13(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E@PLT
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end8:
	.size	_Z6bannerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .Lfunc_end8-_Z6bannerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_endproc
                                        # -- End function
	.globl	_Z9run_testsv                   # -- Begin function _Z9run_testsv
	.p2align	4, 0x90
	.type	_Z9run_testsv,@function
_Z9run_testsv:                          # @_Z9run_testsv
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
	subq	$720, %rsp                      # imm = 0x2D0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movl	$0, -492(%rbp)
	movl	$0, -496(%rbp)
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	.L.str.14(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.L.str.15(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	-504(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -616(%rbp)                # 8-byte Spill
	movq	%rcx, -624(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp88:
	leaq	.L.str.16(%rip), %rsi
	leaq	-40(%rbp), %rdi
	movq	-624(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp89:
	jmp	.LBB9_1
.LBB9_1:
.Ltmp91:
	leaq	-40(%rbp), %rdi
	callq	_Z6bannerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Ltmp92:
	jmp	.LBB9_2
.LBB9_2:
	leaq	-40(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-504(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-512(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -632(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp94:
	leaq	.L.str.17(%rip), %rsi
	leaq	-72(%rbp), %rdi
	movq	-632(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp95:
	jmp	.LBB9_3
.LBB9_3:
.Ltmp97:
	leaq	-72(%rbp), %rdi
	movl	$41, %esi
	xorl	%edx, %edx
	leaq	-492(%rbp), %rcx
	leaq	-496(%rbp), %r8
	callq	_Z18position_load_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRiS7_
.Ltmp98:
	jmp	.LBB9_4
.LBB9_4:
	leaq	-72(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-512(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-520(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -640(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp100:
	leaq	.L.str.18(%rip), %rsi
	leaq	-104(%rbp), %rdi
	movq	-640(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp101:
	jmp	.LBB9_5
.LBB9_5:
.Ltmp103:
	leaq	-104(%rbp), %rdi
	movl	$4, %esi
	movl	$1, %edx
	leaq	-492(%rbp), %rcx
	leaq	-496(%rbp), %r8
	callq	_Z18position_load_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRiS7_
.Ltmp104:
	jmp	.LBB9_6
.LBB9_6:
	leaq	-104(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-520(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -648(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp106:
	leaq	.L.str.19(%rip), %rsi
	leaq	-136(%rbp), %rdi
	movq	-648(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp107:
	jmp	.LBB9_7
.LBB9_7:
.Ltmp109:
	leaq	-136(%rbp), %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	leaq	-492(%rbp), %rcx
	leaq	-496(%rbp), %r8
	callq	_Z18position_load_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRiS7_
.Ltmp110:
	jmp	.LBB9_8
.LBB9_8:
	leaq	-136(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-528(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-536(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -656(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp112:
	leaq	.L.str.20(%rip), %rsi
	leaq	-168(%rbp), %rdi
	movq	-656(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp113:
	jmp	.LBB9_9
.LBB9_9:
.Ltmp115:
	leaq	-168(%rbp), %rdi
	movl	$22, %esi
	xorl	%edx, %edx
	leaq	-492(%rbp), %rcx
	leaq	-496(%rbp), %r8
	callq	_Z18position_load_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRiS7_
.Ltmp116:
	jmp	.LBB9_10
.LBB9_10:
	leaq	-168(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-536(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -664(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp118:
	leaq	.L.str.21(%rip), %rsi
	leaq	-200(%rbp), %rdi
	movq	-664(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp119:
	jmp	.LBB9_11
.LBB9_11:
.Ltmp121:
	leaq	-200(%rbp), %rdi
	movl	$29, %esi
	xorl	%edx, %edx
	leaq	-492(%rbp), %rcx
	leaq	-496(%rbp), %r8
	callq	_Z18position_load_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRiS7_
.Ltmp122:
	jmp	.LBB9_12
.LBB9_12:
	leaq	-200(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-544(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-552(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -672(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp124:
	leaq	.L.str.22(%rip), %rsi
	leaq	-232(%rbp), %rdi
	movq	-672(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp125:
	jmp	.LBB9_13
.LBB9_13:
.Ltmp127:
	leaq	-232(%rbp), %rdi
	movl	$21, %esi
	xorl	%edx, %edx
	leaq	-492(%rbp), %rcx
	leaq	-496(%rbp), %r8
	callq	_Z18position_load_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRiS7_
.Ltmp128:
	jmp	.LBB9_14
.LBB9_14:
	leaq	-232(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-552(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -680(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp130:
	leaq	.L.str.23(%rip), %rsi
	leaq	-264(%rbp), %rdi
	movq	-680(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp131:
	jmp	.LBB9_15
.LBB9_15:
.Ltmp133:
	leaq	-264(%rbp), %rdi
	movl	$22, %esi
	xorl	%edx, %edx
	leaq	-492(%rbp), %rcx
	leaq	-496(%rbp), %r8
	callq	_Z18position_load_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRiS7_
.Ltmp134:
	jmp	.LBB9_16
.LBB9_16:
	leaq	-264(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-560(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-568(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -688(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp136:
	leaq	.L.str.24(%rip), %rsi
	leaq	-296(%rbp), %rdi
	movq	-688(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp137:
	jmp	.LBB9_17
.LBB9_17:
.Ltmp139:
	leaq	-296(%rbp), %rdi
	movl	$21, %esi
	xorl	%edx, %edx
	leaq	-492(%rbp), %rcx
	leaq	-496(%rbp), %r8
	callq	_Z18position_load_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRiS7_
.Ltmp140:
	jmp	.LBB9_18
.LBB9_18:
	leaq	-296(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-568(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -696(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp142:
	leaq	.L.str.25(%rip), %rsi
	leaq	-328(%rbp), %rdi
	movq	-696(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp143:
	jmp	.LBB9_19
.LBB9_19:
.Ltmp145:
	leaq	-328(%rbp), %rdi
	movl	$21, %esi
	xorl	%edx, %edx
	leaq	-492(%rbp), %rcx
	leaq	-496(%rbp), %r8
	callq	_Z18position_load_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRiS7_
.Ltmp146:
	jmp	.LBB9_20
.LBB9_20:
	leaq	-328(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-576(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-584(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -704(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp148:
	leaq	.L.str.7(%rip), %rsi
	leaq	-360(%rbp), %rdi
	movq	-704(%rbp), %rdx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp149:
	jmp	.LBB9_21
.LBB9_21:
.Ltmp151:
	leaq	-360(%rbp), %rdi
	movl	$48, %esi
	xorl	%edx, %edx
	leaq	-492(%rbp), %rcx
	leaq	-496(%rbp), %r8
	callq	_Z18position_load_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRiS7_
.Ltmp152:
	jmp	.LBB9_22
.LBB9_22:
	leaq	-360(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-584(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movl	$1, -600(%rbp)
.LBB9_23:                               # =>This Inner Loop Header: Depth=1
	cmpl	$5, -600(%rbp)
	jge	.LBB9_64
# %bb.24:                               #   in Loop: Header=BB9_23 Depth=1
	movl	-600(%rbp), %esi
	leaq	-424(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -712(%rbp)                # 8-byte Spill
	callq	_ZNSt7__cxx119to_stringEi
.Ltmp160:
	leaq	.L.str.26(%rip), %rsi
	leaq	-392(%rbp), %rdi
	movq	-712(%rbp), %rdx                # 8-byte Reload
	callq	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_
.Ltmp161:
	jmp	.LBB9_25
.LBB9_25:                               #   in Loop: Header=BB9_23 Depth=1
.Ltmp163:
	leaq	-392(%rbp), %rdi
	callq	_Z6bannerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Ltmp164:
	jmp	.LBB9_26
.LBB9_26:                               #   in Loop: Header=BB9_23 Depth=1
	leaq	-392(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-424(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movl	-600(%rbp), %edi
	leaq	-492(%rbp), %rsi
	leaq	-496(%rbp), %rdx
	callq	_Z20perft_classical_testiRiS_
# %bb.27:                               #   in Loop: Header=BB9_23 Depth=1
	movl	-600(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -600(%rbp)
	jmp	.LBB9_23
.LBB9_28:
.Ltmp90:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -592(%rbp)
	movl	%edx, -596(%rbp)
	jmp	.LBB9_30
.LBB9_29:
.Ltmp93:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -592(%rbp)
	movl	%edx, -596(%rbp)
	leaq	-40(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB9_30:
	leaq	-504(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB9_75
.LBB9_31:
.Ltmp96:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -592(%rbp)
	movl	%edx, -596(%rbp)
	jmp	.LBB9_33
.LBB9_32:
.Ltmp99:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -592(%rbp)
	movl	%edx, -596(%rbp)
	leaq	-72(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB9_33:
	leaq	-512(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB9_75
.LBB9_34:
.Ltmp102:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -592(%rbp)
	movl	%edx, -596(%rbp)
	jmp	.LBB9_36
.LBB9_35:
.Ltmp105:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -592(%rbp)
	movl	%edx, -596(%rbp)
	leaq	-104(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB9_36:
	leaq	-520(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB9_75
.LBB9_37:
.Ltmp108:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -592(%rbp)
	movl	%edx, -596(%rbp)
	jmp	.LBB9_39
.LBB9_38:
.Ltmp111:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -592(%rbp)
	movl	%edx, -596(%rbp)
	leaq	-136(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB9_39:
	leaq	-528(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB9_75
.LBB9_40:
.Ltmp114:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -592(%rbp)
	movl	%edx, -596(%rbp)
	jmp	.LBB9_42
.LBB9_41:
.Ltmp117:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -592(%rbp)
	movl	%edx, -596(%rbp)
	leaq	-168(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB9_42:
	leaq	-536(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB9_75
.LBB9_43:
.Ltmp120:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -592(%rbp)
	movl	%edx, -596(%rbp)
	jmp	.LBB9_45
.LBB9_44:
.Ltmp123:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -592(%rbp)
	movl	%edx, -596(%rbp)
	leaq	-200(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB9_45:
	leaq	-544(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB9_75
.LBB9_46:
.Ltmp126:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -592(%rbp)
	movl	%edx, -596(%rbp)
	jmp	.LBB9_48
.LBB9_47:
.Ltmp129:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -592(%rbp)
	movl	%edx, -596(%rbp)
	leaq	-232(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB9_48:
	leaq	-552(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB9_75
.LBB9_49:
.Ltmp132:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -592(%rbp)
	movl	%edx, -596(%rbp)
	jmp	.LBB9_51
.LBB9_50:
.Ltmp135:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -592(%rbp)
	movl	%edx, -596(%rbp)
	leaq	-264(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB9_51:
	leaq	-560(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB9_75
.LBB9_52:
.Ltmp138:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -592(%rbp)
	movl	%edx, -596(%rbp)
	jmp	.LBB9_54
.LBB9_53:
.Ltmp141:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -592(%rbp)
	movl	%edx, -596(%rbp)
	leaq	-296(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB9_54:
	leaq	-568(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB9_75
.LBB9_55:
.Ltmp144:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -592(%rbp)
	movl	%edx, -596(%rbp)
	jmp	.LBB9_57
.LBB9_56:
.Ltmp147:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -592(%rbp)
	movl	%edx, -596(%rbp)
	leaq	-328(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB9_57:
	leaq	-576(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB9_75
.LBB9_58:
.Ltmp150:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -592(%rbp)
	movl	%edx, -596(%rbp)
	jmp	.LBB9_60
.LBB9_59:
.Ltmp153:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -592(%rbp)
	movl	%edx, -596(%rbp)
	leaq	-360(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB9_60:
	leaq	-584(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB9_75
.LBB9_61:
.Ltmp162:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -592(%rbp)
	movl	%edx, -596(%rbp)
	jmp	.LBB9_63
.LBB9_62:
.Ltmp165:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -592(%rbp)
	movl	%edx, -596(%rbp)
	leaq	-392(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB9_63:
	leaq	-424(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.LBB9_75
.LBB9_64:
	movl	$1, -604(%rbp)
.LBB9_65:                               # =>This Inner Loop Header: Depth=1
	cmpl	$4, -604(%rbp)
	jge	.LBB9_73
# %bb.66:                               #   in Loop: Header=BB9_65 Depth=1
	movl	-604(%rbp), %esi
	leaq	-488(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -720(%rbp)                # 8-byte Spill
	callq	_ZNSt7__cxx119to_stringEi
.Ltmp154:
	leaq	.L.str.27(%rip), %rsi
	leaq	-456(%rbp), %rdi
	movq	-720(%rbp), %rdx                # 8-byte Reload
	callq	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_
.Ltmp155:
	jmp	.LBB9_67
.LBB9_67:                               #   in Loop: Header=BB9_65 Depth=1
.Ltmp157:
	leaq	-456(%rbp), %rdi
	callq	_Z6bannerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Ltmp158:
	jmp	.LBB9_68
.LBB9_68:                               #   in Loop: Header=BB9_65 Depth=1
	leaq	-456(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-488(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movl	-604(%rbp), %edi
	leaq	-492(%rbp), %rsi
	leaq	-496(%rbp), %rdx
	callq	_Z19perft_kiwipete_testiRiS_
# %bb.69:                               #   in Loop: Header=BB9_65 Depth=1
	movl	-604(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -604(%rbp)
	jmp	.LBB9_65
.LBB9_70:
.Ltmp156:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -592(%rbp)
	movl	%edx, -596(%rbp)
	jmp	.LBB9_72
.LBB9_71:
.Ltmp159:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -592(%rbp)
	movl	%edx, -596(%rbp)
	leaq	-456(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB9_72:
	leaq	-488(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.LBB9_75
.LBB9_73:
	movl	-496(%rbp), %esi
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	callq	_ZNSolsEi@PLT
	leaq	.L.str.28(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	-492(%rbp), %esi
	movq	%rax, %rdi
	callq	_ZNSolsEi@PLT
	leaq	.L.str.29(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E@PLT
	movq	%fs:40, %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	jne	.LBB9_76
# %bb.74:
	addq	$720, %rsp                      # imm = 0x2D0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB9_75:
	.cfi_def_cfa %rbp, 16
	movq	-592(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.LBB9_76:
	callq	__stack_chk_fail@PLT
.Lfunc_end9:
	.size	_Z9run_testsv, .Lfunc_end9-_Z9run_testsv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table9:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp88-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp88
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp88-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp89-.Ltmp88                #   Call between .Ltmp88 and .Ltmp89
	.uleb128 .Ltmp90-.Lfunc_begin3          #     jumps to .Ltmp90
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp91-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp92-.Ltmp91                #   Call between .Ltmp91 and .Ltmp92
	.uleb128 .Ltmp93-.Lfunc_begin3          #     jumps to .Ltmp93
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp94-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp95-.Ltmp94                #   Call between .Ltmp94 and .Ltmp95
	.uleb128 .Ltmp96-.Lfunc_begin3          #     jumps to .Ltmp96
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp97-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Ltmp98-.Ltmp97                #   Call between .Ltmp97 and .Ltmp98
	.uleb128 .Ltmp99-.Lfunc_begin3          #     jumps to .Ltmp99
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp100-.Lfunc_begin3         # >> Call Site 6 <<
	.uleb128 .Ltmp101-.Ltmp100              #   Call between .Ltmp100 and .Ltmp101
	.uleb128 .Ltmp102-.Lfunc_begin3         #     jumps to .Ltmp102
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp103-.Lfunc_begin3         # >> Call Site 7 <<
	.uleb128 .Ltmp104-.Ltmp103              #   Call between .Ltmp103 and .Ltmp104
	.uleb128 .Ltmp105-.Lfunc_begin3         #     jumps to .Ltmp105
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp106-.Lfunc_begin3         # >> Call Site 8 <<
	.uleb128 .Ltmp107-.Ltmp106              #   Call between .Ltmp106 and .Ltmp107
	.uleb128 .Ltmp108-.Lfunc_begin3         #     jumps to .Ltmp108
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp109-.Lfunc_begin3         # >> Call Site 9 <<
	.uleb128 .Ltmp110-.Ltmp109              #   Call between .Ltmp109 and .Ltmp110
	.uleb128 .Ltmp111-.Lfunc_begin3         #     jumps to .Ltmp111
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp112-.Lfunc_begin3         # >> Call Site 10 <<
	.uleb128 .Ltmp113-.Ltmp112              #   Call between .Ltmp112 and .Ltmp113
	.uleb128 .Ltmp114-.Lfunc_begin3         #     jumps to .Ltmp114
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp115-.Lfunc_begin3         # >> Call Site 11 <<
	.uleb128 .Ltmp116-.Ltmp115              #   Call between .Ltmp115 and .Ltmp116
	.uleb128 .Ltmp117-.Lfunc_begin3         #     jumps to .Ltmp117
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp118-.Lfunc_begin3         # >> Call Site 12 <<
	.uleb128 .Ltmp119-.Ltmp118              #   Call between .Ltmp118 and .Ltmp119
	.uleb128 .Ltmp120-.Lfunc_begin3         #     jumps to .Ltmp120
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp121-.Lfunc_begin3         # >> Call Site 13 <<
	.uleb128 .Ltmp122-.Ltmp121              #   Call between .Ltmp121 and .Ltmp122
	.uleb128 .Ltmp123-.Lfunc_begin3         #     jumps to .Ltmp123
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp124-.Lfunc_begin3         # >> Call Site 14 <<
	.uleb128 .Ltmp125-.Ltmp124              #   Call between .Ltmp124 and .Ltmp125
	.uleb128 .Ltmp126-.Lfunc_begin3         #     jumps to .Ltmp126
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp127-.Lfunc_begin3         # >> Call Site 15 <<
	.uleb128 .Ltmp128-.Ltmp127              #   Call between .Ltmp127 and .Ltmp128
	.uleb128 .Ltmp129-.Lfunc_begin3         #     jumps to .Ltmp129
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp130-.Lfunc_begin3         # >> Call Site 16 <<
	.uleb128 .Ltmp131-.Ltmp130              #   Call between .Ltmp130 and .Ltmp131
	.uleb128 .Ltmp132-.Lfunc_begin3         #     jumps to .Ltmp132
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp133-.Lfunc_begin3         # >> Call Site 17 <<
	.uleb128 .Ltmp134-.Ltmp133              #   Call between .Ltmp133 and .Ltmp134
	.uleb128 .Ltmp135-.Lfunc_begin3         #     jumps to .Ltmp135
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp136-.Lfunc_begin3         # >> Call Site 18 <<
	.uleb128 .Ltmp137-.Ltmp136              #   Call between .Ltmp136 and .Ltmp137
	.uleb128 .Ltmp138-.Lfunc_begin3         #     jumps to .Ltmp138
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp139-.Lfunc_begin3         # >> Call Site 19 <<
	.uleb128 .Ltmp140-.Ltmp139              #   Call between .Ltmp139 and .Ltmp140
	.uleb128 .Ltmp141-.Lfunc_begin3         #     jumps to .Ltmp141
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp142-.Lfunc_begin3         # >> Call Site 20 <<
	.uleb128 .Ltmp143-.Ltmp142              #   Call between .Ltmp142 and .Ltmp143
	.uleb128 .Ltmp144-.Lfunc_begin3         #     jumps to .Ltmp144
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp145-.Lfunc_begin3         # >> Call Site 21 <<
	.uleb128 .Ltmp146-.Ltmp145              #   Call between .Ltmp145 and .Ltmp146
	.uleb128 .Ltmp147-.Lfunc_begin3         #     jumps to .Ltmp147
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp148-.Lfunc_begin3         # >> Call Site 22 <<
	.uleb128 .Ltmp149-.Ltmp148              #   Call between .Ltmp148 and .Ltmp149
	.uleb128 .Ltmp150-.Lfunc_begin3         #     jumps to .Ltmp150
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp151-.Lfunc_begin3         # >> Call Site 23 <<
	.uleb128 .Ltmp152-.Ltmp151              #   Call between .Ltmp151 and .Ltmp152
	.uleb128 .Ltmp153-.Lfunc_begin3         #     jumps to .Ltmp153
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp152-.Lfunc_begin3         # >> Call Site 24 <<
	.uleb128 .Ltmp160-.Ltmp152              #   Call between .Ltmp152 and .Ltmp160
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp160-.Lfunc_begin3         # >> Call Site 25 <<
	.uleb128 .Ltmp161-.Ltmp160              #   Call between .Ltmp160 and .Ltmp161
	.uleb128 .Ltmp162-.Lfunc_begin3         #     jumps to .Ltmp162
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp163-.Lfunc_begin3         # >> Call Site 26 <<
	.uleb128 .Ltmp164-.Ltmp163              #   Call between .Ltmp163 and .Ltmp164
	.uleb128 .Ltmp165-.Lfunc_begin3         #     jumps to .Ltmp165
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp164-.Lfunc_begin3         # >> Call Site 27 <<
	.uleb128 .Ltmp154-.Ltmp164              #   Call between .Ltmp164 and .Ltmp154
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp154-.Lfunc_begin3         # >> Call Site 28 <<
	.uleb128 .Ltmp155-.Ltmp154              #   Call between .Ltmp154 and .Ltmp155
	.uleb128 .Ltmp156-.Lfunc_begin3         #     jumps to .Ltmp156
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp157-.Lfunc_begin3         # >> Call Site 29 <<
	.uleb128 .Ltmp158-.Ltmp157              #   Call between .Ltmp157 and .Ltmp158
	.uleb128 .Ltmp159-.Lfunc_begin3         #     jumps to .Ltmp159
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp158-.Lfunc_begin3         # >> Call Site 30 <<
	.uleb128 .Lfunc_end9-.Ltmp158           #   Call between .Ltmp158 and .Lfunc_end9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
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
.Lfunc_end10:
	.size	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_, .Lfunc_end10-_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx119to_stringEi,"axG",@progbits,_ZNSt7__cxx119to_stringEi,comdat
	.weak	_ZNSt7__cxx119to_stringEi       # -- Begin function _ZNSt7__cxx119to_stringEi
	.p2align	4, 0x90
	.type	_ZNSt7__cxx119to_stringEi,@function
_ZNSt7__cxx119to_stringEi:              # @_ZNSt7__cxx119to_stringEi
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
	je	.LBB11_2
# %bb.1:
	movl	-28(%rbp), %eax
	xorl	$-1, %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)                 # 4-byte Spill
	jmp	.LBB11_3
.LBB11_2:
	movl	-28(%rbp), %eax
	movl	%eax, -84(%rbp)                 # 4-byte Spill
.LBB11_3:
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
.Ltmp166:
	movl	$45, %edx
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movq	-96(%rbp), %rsi                 # 8-byte Reload
	movq	-104(%rbp), %rcx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EmcRKS3_@PLT
.Ltmp167:
	jmp	.LBB11_4
.LBB11_4:
	leaq	-16(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movzbl	-29(%rbp), %eax
	movl	%eax, %ecx
                                        # kill: def $ecx killed $ecx killed $rcx
	andl	$1, %ecx
	movl	%ecx, %esi
.Ltmp169:
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm@PLT
.Ltmp170:
	movq	%rax, -112(%rbp)                # 8-byte Spill
	jmp	.LBB11_5
.LBB11_5:
	movl	-40(%rbp), %esi
	movl	-36(%rbp), %edx
	movq	-112(%rbp), %rdi                # 8-byte Reload
	callq	_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_
	movb	$1, -41(%rbp)
	testb	$1, -41(%rbp)
	jne	.LBB11_9
	jmp	.LBB11_8
.LBB11_6:
.Ltmp168:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -56(%rbp)
	movl	%edx, -60(%rbp)
	leaq	-16(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB11_11
.LBB11_7:
.Ltmp171:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -56(%rbp)
	movl	%edx, -60(%rbp)
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.LBB11_11
.LBB11_8:
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB11_9:
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB11_12
# %bb.10:
	movq	-80(%rbp), %rax                 # 8-byte Reload
	addq	$112, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB11_11:
	.cfi_def_cfa %rbp, 16
	movq	-56(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.LBB11_12:
	callq	__stack_chk_fail@PLT
.Lfunc_end11:
	.size	_ZNSt7__cxx119to_stringEi, .Lfunc_end11-_ZNSt7__cxx119to_stringEi
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
	.uleb128 .Ltmp166-.Lfunc_begin4         # >> Call Site 1 <<
	.uleb128 .Ltmp167-.Ltmp166              #   Call between .Ltmp166 and .Ltmp167
	.uleb128 .Ltmp168-.Lfunc_begin4         #     jumps to .Ltmp168
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp169-.Lfunc_begin4         # >> Call Site 2 <<
	.uleb128 .Ltmp170-.Ltmp169              #   Call between .Ltmp169 and .Ltmp170
	.uleb128 .Ltmp171-.Lfunc_begin4         #     jumps to .Ltmp171
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp170-.Lfunc_begin4         # >> Call Site 3 <<
	.uleb128 .Lfunc_end11-.Ltmp170          #   Call between .Ltmp170 and .Lfunc_end11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
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
.Lfunc_end12:
	.size	_ZN5board10StateStackD2Ev, .Lfunc_end12-_ZN5board10StateStackD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIN5board5StateESaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorIN5board5StateESaIS1_EED2Ev,comdat
	.weak	_ZNSt6vectorIN5board5StateESaIS1_EED2Ev # -- Begin function _ZNSt6vectorIN5board5StateESaIS1_EED2Ev
	.p2align	4, 0x90
	.type	_ZNSt6vectorIN5board5StateESaIS1_EED2Ev,@function
_ZNSt6vectorIN5board5StateESaIS1_EED2Ev: # @_ZNSt6vectorIN5board5StateESaIS1_EED2Ev
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
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv
.Ltmp172:
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	-48(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZSt8_DestroyIPN5board5StateES1_EvT_S3_RSaIT0_E
.Ltmp173:
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
.Ltmp174:
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
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	156                             # @TType Encoding = indirect pcrel sdata8
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp172-.Lfunc_begin5         # >> Call Site 1 <<
	.uleb128 .Ltmp173-.Ltmp172              #   Call between .Ltmp172 and .Ltmp173
	.uleb128 .Ltmp174-.Lfunc_begin5         #     jumps to .Ltmp174
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
	sarq	$6, %rdx
	movabsq	$-1085102592571150095, %rsi     # imm = 0xF0F0F0F0F0F0F0F1
	imulq	%rsi, %rdx
.Ltmp175:
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE13_M_deallocateEPS1_m
.Ltmp176:
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
.Ltmp177:
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
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	156                             # @TType Encoding = indirect pcrel sdata8
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Ltmp175-.Lfunc_begin6         # >> Call Site 1 <<
	.uleb128 .Ltmp176-.Ltmp175              #   Call between .Ltmp175 and .Ltmp176
	.uleb128 .Ltmp177-.Lfunc_begin6         #     jumps to .Ltmp177
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
.LBB26_1:                               # =>This Inner Loop Header: Depth=1
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jae	.LBB26_3
# %bb.2:
	movl	-16(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB26_10
.LBB26_3:                               #   in Loop: Header=BB26_1 Depth=1
	movl	-8(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jae	.LBB26_5
# %bb.4:
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB26_10
.LBB26_5:                               #   in Loop: Header=BB26_1 Depth=1
	movl	-8(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jae	.LBB26_7
# %bb.6:
	movl	-16(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB26_10
.LBB26_7:                               #   in Loop: Header=BB26_1 Depth=1
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	cmpq	-32(%rbp), %rcx
	jae	.LBB26_9
# %bb.8:
	movl	-16(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB26_10
.LBB26_9:                               #   in Loop: Header=BB26_1 Depth=1
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
	jmp	.LBB26_1
.LBB26_10:
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end26:
	.size	_ZNSt8__detail14__to_chars_lenIjEEjT_i, .Lfunc_end26-_ZNSt8__detail14__to_chars_lenIjEEjT_i
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
.LBB27_1:                               # =>This Inner Loop Header: Depth=1
	cmpl	$100, -16(%rbp)
	jb	.LBB27_3
# %bb.2:                                #   in Loop: Header=BB27_1 Depth=1
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
	jmp	.LBB27_1
.LBB27_3:
	cmpl	$10, -16(%rbp)
	jb	.LBB27_5
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
	jmp	.LBB27_6
.LBB27_5:
	movl	-16(%rbp), %eax
	addl	$48, %eax
                                        # kill: def $al killed $al killed $eax
	movq	-8(%rbp), %rcx
	movb	%al, (%rcx)
.LBB27_6:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end27:
	.size	_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_, .Lfunc_end27-_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_
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
.Lfunc_end28:
	.size	_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_, .Lfunc_end28-_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_
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
.Lfunc_end29:
	.size	_GLOBAL__sub_I_tests.cpp, .Lfunc_end29-_GLOBAL__sub_I_tests.cpp
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

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"r3k2r/p1ppqpb1/bn2pnp1/3PN3/1p2P3/2N2Q1p/PPPBBPPP/R3K2R w KQkq - "
	.size	.L.str.7, 66

	.type	_ZL14perft_kp_nodes,@object     # @_ZL14perft_kp_nodes
	.section	.rodata,"a",@progbits
	.p2align	4
_ZL14perft_kp_nodes:
	.long	0                               # 0x0
	.long	48                              # 0x30
	.long	2039                            # 0x7f7
	.long	97862                           # 0x17e46
	.long	4085603                         # 0x3e5763
	.long	193690690                       # 0xb8b7c42
	.size	_ZL14perft_kp_nodes, 24

	.type	.L.str.8,@object                # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"node count"
	.size	.L.str.8, 11

	.type	_ZL17perft_kp_captures,@object  # @_ZL17perft_kp_captures
	.section	.rodata,"a",@progbits
	.p2align	4
_ZL17perft_kp_captures:
	.long	0                               # 0x0
	.long	8                               # 0x8
	.long	351                             # 0x15f
	.long	17102                           # 0x42ce
	.long	757163                          # 0xb8dab
	.long	35043416                        # 0x216b858
	.size	_ZL17perft_kp_captures, 24

	.type	.L.str.9,@object                # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"capture count"
	.size	.L.str.9, 14

	.type	_ZL15perft_kp_checks,@object    # @_ZL15perft_kp_checks
	.section	.rodata,"a",@progbits
	.p2align	4
_ZL15perft_kp_checks:
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	3                               # 0x3
	.long	993                             # 0x3e1
	.long	25523                           # 0x63b3
	.long	3309887                         # 0x32813f
	.size	_ZL15perft_kp_checks, 24

	.type	.L.str.10,@object               # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"check count"
	.size	.L.str.10, 12

	.type	_ZL12perft_kp_eps,@object       # @_ZL12perft_kp_eps
	.section	.rodata,"a",@progbits
	.p2align	4
_ZL12perft_kp_eps:
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	45                              # 0x2d
	.long	1929                            # 0x789
	.long	73365                           # 0x11e95
	.size	_ZL12perft_kp_eps, 24

	.type	.L.str.11,@object               # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"en passant count"
	.size	.L.str.11, 17

	.type	_ZL16perft_kp_castles,@object   # @_ZL16perft_kp_castles
	.section	.rodata,"a",@progbits
	.p2align	4
_ZL16perft_kp_castles:
	.long	0                               # 0x0
	.long	2                               # 0x2
	.long	91                              # 0x5b
	.long	3162                            # 0xc5a
	.long	128013                          # 0x1f40d
	.long	4993637                         # 0x4c3265
	.size	_ZL16perft_kp_castles, 24

	.type	.L.str.12,@object               # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"castle count"
	.size	.L.str.12, 13

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

	.type	_ZL24perft_classical_captures,@object # @_ZL24perft_classical_captures
	.p2align	4
_ZL24perft_classical_captures:
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	34                              # 0x22
	.long	1576                            # 0x628
	.long	82719                           # 0x1431f
	.size	_ZL24perft_classical_captures, 24

	.type	_ZL22perft_classical_checks,@object # @_ZL22perft_classical_checks
	.p2align	4
_ZL22perft_classical_checks:
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	12                              # 0xc
	.long	469                             # 0x1d5
	.long	27351                           # 0x6ad7
	.size	_ZL22perft_classical_checks, 24

	.type	.L.str.13,@object               # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"-----"
	.size	.L.str.13, 6

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Running test suite."
	.size	.L.str.14, 20

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"\n"
	.size	.L.str.15, 2

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"Load FEN Basic Test"
	.size	.L.str.16, 20

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"r1b4k/pp4p1/3n1nqp/3B4/2P2p2/2Q4P/PB2PP2/R5RK b - - 2 30"
	.size	.L.str.17, 57

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"rn1qk2r/pp3ppp/4pn2/3p4/8/1P1P2P1/PBPbQP1P/2KR1BNR w kq - 0 11"
	.size	.L.str.18, 63

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"r1b1kbnr/pppp1Npp/8/8/4q3/5n2/PPPPBP1P/RNBQKR2 w Qkq - 2 8"
	.size	.L.str.19, 59

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"rnbqkbnr/pppp1ppp/8/4p3/8/5N2/PPPPPPPP/RNBQKB1R w KQkq - 0 2"
	.size	.L.str.20, 61

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"rnbqkbnr/pppp1ppp/8/4p3/3P4/8/PPP1PPPP/RNBQKBNR w KQkq - 0 2"
	.size	.L.str.21, 61

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"rnbqkbnr/ppppppp1/8/7p/P7/8/1PPPPPPP/RNBQKBNR w KQkq - 0 2"
	.size	.L.str.22, 59

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"rnbqkbnr/ppp1pppp/8/3p4/8/5N2/PPPPPPPP/RNBQKB1R w KQkq - 0 2"
	.size	.L.str.23, 61

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"rnbqkbnr/pppppp1p/6p1/8/8/1P6/P1PPPPPP/RNBQKBNR w KQkq - 0 2"
	.size	.L.str.24, 61

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"rnbqkbnr/pp1ppppp/8/2p5/6P1/8/PPPPPP1P/RNBQKBNR w KQkq - 0 2"
	.size	.L.str.25, 61

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"PERFT classical depth="
	.size	.L.str.26, 23

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"PERFT kiwipete depth="
	.size	.L.str.27, 22

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"/"
	.size	.L.str.28, 2

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	" tests passed."
	.size	.L.str.29, 15

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
	.addrsig_sym _Z19perft_kiwipete_testiRiS_
	.addrsig_sym _ZN5perft5perftER5BoardiRNS_7CounterE
	.addrsig_sym _Z20perft_classical_testiRiS_
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
	.addrsig_sym _ZL14perft_kp_nodes
	.addrsig_sym _ZL17perft_kp_captures
	.addrsig_sym _ZL15perft_kp_checks
	.addrsig_sym _ZL12perft_kp_eps
	.addrsig_sym _ZL16perft_kp_castles
	.addrsig_sym _ZL21perft_classical_nodes
	.addrsig_sym _ZL24perft_classical_captures
	.addrsig_sym _ZL22perft_classical_checks
	.addrsig_sym _ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits
