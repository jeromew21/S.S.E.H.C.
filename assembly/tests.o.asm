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
	subq	$48, %rsp
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
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	.L.str.3(%rip), %rsi
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	-4(%rbp), %esi
	movq	%rax, %rdi
	callq	_ZNSolsEi@PLT
	movq	%rax, %rdi
	leaq	.L.str.4(%rip), %rsi
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
	leaq	.L.str.5(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	.L.str.6(%rip), %rsi
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E@PLT
.LBB1_3:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	.L.str.7(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	addq	$48, %rsp
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
	leaq	.L.str.8(%rip), %rsi
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
	leaq	.L.str.9(%rip), %rsi
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
	.globl	_Z18position_mate_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbRiS7_ # -- Begin function _Z18position_mate_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbRiS7_
	.p2align	4, 0x90
	.type	_Z18position_mate_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbRiS7_,@function
_Z18position_mate_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbRiS7_: # @_Z18position_mate_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbRiS7_
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
	subq	$1424, %rsp                     # imm = 0x590
                                        # kill: def $sil killed $sil killed $esi
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -1360(%rbp)
	andb	$1, %sil
	movb	%sil, -1361(%rbp)
	movq	%rdx, -1376(%rbp)
	movq	%rcx, -1384(%rbp)
	leaq	-1280(%rbp), %rdi
	callq	_ZN5BoardC1Ev@PLT
	movq	-1360(%rbp), %rsi
.Ltmp24:
	leaq	-1312(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_@PLT
.Ltmp25:
	jmp	.LBB5_1
.LBB5_1:
.Ltmp26:
	leaq	-1280(%rbp), %rdi
	leaq	-1312(%rbp), %rsi
	callq	_ZN5Board12LoadPositionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.Ltmp27:
	jmp	.LBB5_2
.LBB5_2:
	leaq	-1312(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.Ltmp29:
	leaq	-1280(%rbp), %rdi
	callq	_ZN5Board6statusEv@PLT
.Ltmp30:
	movl	%eax, -1404(%rbp)               # 4-byte Spill
	jmp	.LBB5_3
.LBB5_3:
	movl	-1404(%rbp), %eax               # 4-byte Reload
	movl	%eax, -1400(%rbp)
	movb	-1361(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %edi
	cmpl	$1, -1400(%rbp)
	movb	$1, %cl
	movl	%edi, -1408(%rbp)               # 4-byte Spill
	movb	%cl, -1409(%rbp)                # 1-byte Spill
	je	.LBB5_5
# %bb.4:
	cmpl	$0, -1400(%rbp)
	sete	%al
	movb	%al, -1409(%rbp)                # 1-byte Spill
.LBB5_5:
	movb	-1409(%rbp), %al                # 1-byte Reload
	movzbl	%al, %ecx
	andl	$1, %ecx
	leaq	-1352(%rbp), %rdx
	movq	%rdx, %rdi
	movl	%ecx, -1416(%rbp)               # 4-byte Spill
	movq	%rdx, -1424(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp32:
	leaq	.L.str.10(%rip), %rsi
	leaq	-1344(%rbp), %rdi
	movq	-1424(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp33:
	jmp	.LBB5_6
.LBB5_6:
	movq	-1376(%rbp), %rcx
	movq	-1384(%rbp), %r8
.Ltmp35:
	leaq	-1344(%rbp), %rdx
	movl	-1408(%rbp), %edi               # 4-byte Reload
	movl	-1416(%rbp), %esi               # 4-byte Reload
	callq	_Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_
.Ltmp36:
	jmp	.LBB5_7
.LBB5_7:
	leaq	-1344(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1352(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-1280(%rbp), %rdi
	callq	_ZN5BoardD2Ev
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB5_16
# %bb.8:
	addq	$1424, %rsp                     # imm = 0x590
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB5_9:
	.cfi_def_cfa %rbp, 16
.Ltmp31:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1392(%rbp)
	movl	%edx, -1396(%rbp)
	jmp	.LBB5_14
.LBB5_10:
.Ltmp28:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1392(%rbp)
	movl	%edx, -1396(%rbp)
	leaq	-1312(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.LBB5_14
.LBB5_11:
.Ltmp34:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1392(%rbp)
	movl	%edx, -1396(%rbp)
	jmp	.LBB5_13
.LBB5_12:
.Ltmp37:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1392(%rbp)
	movl	%edx, -1396(%rbp)
	leaq	-1344(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB5_13:
	leaq	-1352(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
.LBB5_14:
	leaq	-1280(%rbp), %rdi
	callq	_ZN5BoardD2Ev
# %bb.15:
	movq	-1392(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.LBB5_16:
	callq	__stack_chk_fail@PLT
.Lfunc_end5:
	.size	_Z18position_mate_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbRiS7_, .Lfunc_end5-_Z18position_mate_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbRiS7_
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
	.uleb128 .Ltmp31-.Lfunc_begin1          #     jumps to .Ltmp31
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
	.uleb128 .Ltmp36-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Lfunc_end5-.Ltmp36            #   Call between .Ltmp36 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2
                                        # -- End function
	.text
	.globl	_Z11perft4_testiRiS_            # -- Begin function _Z11perft4_testiRiS_
	.p2align	4, 0x90
	.type	_Z11perft4_testiRiS_,@function
_Z11perft4_testiRiS_:                   # @_Z11perft4_testiRiS_
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
	subq	$1568, %rsp                     # imm = 0x620
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movl	%edi, -1476(%rbp)
	movq	%rsi, -1488(%rbp)
	movq	%rdx, -1496(%rbp)
	leaq	-1280(%rbp), %rdi
	callq	_ZN5BoardC1Ev@PLT
.Ltmp38:
	leaq	-1440(%rbp), %rdi
	callq	_ZN5perft7CounterC2Ev
.Ltmp39:
	jmp	.LBB6_1
.LBB6_1:
	leaq	-1448(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1520(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp40:
	leaq	.L.str.11(%rip), %rsi
	leaq	-1312(%rbp), %rdi
	movq	-1520(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp41:
	jmp	.LBB6_2
.LBB6_2:
.Ltmp43:
	leaq	-1280(%rbp), %rdi
	leaq	-1312(%rbp), %rsi
	callq	_ZN5Board12LoadPositionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.Ltmp44:
	jmp	.LBB6_3
.LBB6_3:
	leaq	-1312(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1448(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movl	-1476(%rbp), %esi
.Ltmp46:
	leaq	-1280(%rbp), %rdi
	leaq	-1440(%rbp), %rdx
	callq	_ZN5perft5perftER5BoardiRNS_7CounterE@PLT
.Ltmp47:
	jmp	.LBB6_4
.LBB6_4:
	movslq	-1476(%rbp), %rax
	leaq	_ZL17perft_test4_nodes(%rip), %rcx
	movl	(%rcx,%rax,4), %edi
	movl	-1440(%rbp), %esi
	leaq	-1456(%rbp), %rax
	movl	%edi, -1524(%rbp)               # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -1528(%rbp)               # 4-byte Spill
	movq	%rax, -1536(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp49:
	leaq	.L.str.12(%rip), %rsi
	leaq	-1344(%rbp), %rdi
	movq	-1536(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp50:
	jmp	.LBB6_5
.LBB6_5:
	movq	-1488(%rbp), %rcx
	movq	-1496(%rbp), %r8
.Ltmp52:
	leaq	-1344(%rbp), %rdx
	movl	-1524(%rbp), %edi               # 4-byte Reload
	movl	-1528(%rbp), %esi               # 4-byte Reload
	callq	_Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_
.Ltmp53:
	jmp	.LBB6_6
.LBB6_6:
	leaq	-1344(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1456(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movslq	-1476(%rbp), %rax
	leaq	_ZL17perft_test4_mates(%rip), %rcx
	movl	(%rcx,%rax,4), %edi
	movl	-1416(%rbp), %esi
	leaq	-1464(%rbp), %rax
	movl	%edi, -1540(%rbp)               # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -1544(%rbp)               # 4-byte Spill
	movq	%rax, -1552(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp55:
	leaq	.L.str.13(%rip), %rsi
	leaq	-1376(%rbp), %rdi
	movq	-1552(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp56:
	jmp	.LBB6_7
.LBB6_7:
	movq	-1488(%rbp), %rcx
	movq	-1496(%rbp), %r8
.Ltmp58:
	leaq	-1376(%rbp), %rdx
	movl	-1540(%rbp), %edi               # 4-byte Reload
	movl	-1544(%rbp), %esi               # 4-byte Reload
	callq	_Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_
.Ltmp59:
	jmp	.LBB6_8
.LBB6_8:
	leaq	-1376(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1464(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movslq	-1476(%rbp), %rax
	leaq	_ZL22perft_test4_promotions(%rip), %rcx
	movl	(%rcx,%rax,4), %edi
	movl	-1424(%rbp), %esi
	leaq	-1472(%rbp), %rax
	movl	%edi, -1556(%rbp)               # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -1560(%rbp)               # 4-byte Spill
	movq	%rax, -1568(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp61:
	leaq	.L.str.14(%rip), %rsi
	leaq	-1408(%rbp), %rdi
	movq	-1568(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp62:
	jmp	.LBB6_9
.LBB6_9:
	movq	-1488(%rbp), %rcx
	movq	-1496(%rbp), %r8
.Ltmp64:
	leaq	-1408(%rbp), %rdx
	movl	-1556(%rbp), %edi               # 4-byte Reload
	movl	-1560(%rbp), %esi               # 4-byte Reload
	callq	_Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_
.Ltmp65:
	jmp	.LBB6_10
.LBB6_10:
	leaq	-1408(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1472(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-1280(%rbp), %rdi
	callq	_ZN5BoardD2Ev
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB6_27
# %bb.11:
	addq	$1568, %rsp                     # imm = 0x620
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB6_12:
	.cfi_def_cfa %rbp, 16
.Ltmp48:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1504(%rbp)
	movl	%edx, -1508(%rbp)
	jmp	.LBB6_25
.LBB6_13:
.Ltmp42:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1504(%rbp)
	movl	%edx, -1508(%rbp)
	jmp	.LBB6_15
.LBB6_14:
.Ltmp45:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1504(%rbp)
	movl	%edx, -1508(%rbp)
	leaq	-1312(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB6_15:
	leaq	-1448(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB6_25
.LBB6_16:
.Ltmp51:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1504(%rbp)
	movl	%edx, -1508(%rbp)
	jmp	.LBB6_18
.LBB6_17:
.Ltmp54:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1504(%rbp)
	movl	%edx, -1508(%rbp)
	leaq	-1344(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB6_18:
	leaq	-1456(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB6_25
.LBB6_19:
.Ltmp57:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1504(%rbp)
	movl	%edx, -1508(%rbp)
	jmp	.LBB6_21
.LBB6_20:
.Ltmp60:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1504(%rbp)
	movl	%edx, -1508(%rbp)
	leaq	-1376(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB6_21:
	leaq	-1464(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB6_25
.LBB6_22:
.Ltmp63:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1504(%rbp)
	movl	%edx, -1508(%rbp)
	jmp	.LBB6_24
.LBB6_23:
.Ltmp66:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1504(%rbp)
	movl	%edx, -1508(%rbp)
	leaq	-1408(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB6_24:
	leaq	-1472(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
.LBB6_25:
	leaq	-1280(%rbp), %rdi
	callq	_ZN5BoardD2Ev
# %bb.26:
	movq	-1504(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.LBB6_27:
	callq	__stack_chk_fail@PLT
.Lfunc_end6:
	.size	_Z11perft4_testiRiS_, .Lfunc_end6-_Z11perft4_testiRiS_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table6:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp38-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp38
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp39-.Ltmp38                #   Call between .Ltmp38 and .Ltmp39
	.uleb128 .Ltmp48-.Lfunc_begin2          #     jumps to .Ltmp48
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin2          #     jumps to .Ltmp42
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin2          #     jumps to .Ltmp45
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp47-.Ltmp46                #   Call between .Ltmp46 and .Ltmp47
	.uleb128 .Ltmp48-.Lfunc_begin2          #     jumps to .Ltmp48
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Ltmp50-.Ltmp49                #   Call between .Ltmp49 and .Ltmp50
	.uleb128 .Ltmp51-.Lfunc_begin2          #     jumps to .Ltmp51
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin2          # >> Call Site 7 <<
	.uleb128 .Ltmp53-.Ltmp52                #   Call between .Ltmp52 and .Ltmp53
	.uleb128 .Ltmp54-.Lfunc_begin2          #     jumps to .Ltmp54
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp55-.Lfunc_begin2          # >> Call Site 8 <<
	.uleb128 .Ltmp56-.Ltmp55                #   Call between .Ltmp55 and .Ltmp56
	.uleb128 .Ltmp57-.Lfunc_begin2          #     jumps to .Ltmp57
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp58-.Lfunc_begin2          # >> Call Site 9 <<
	.uleb128 .Ltmp59-.Ltmp58                #   Call between .Ltmp58 and .Ltmp59
	.uleb128 .Ltmp60-.Lfunc_begin2          #     jumps to .Ltmp60
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp61-.Lfunc_begin2          # >> Call Site 10 <<
	.uleb128 .Ltmp62-.Ltmp61                #   Call between .Ltmp61 and .Ltmp62
	.uleb128 .Ltmp63-.Lfunc_begin2          #     jumps to .Ltmp63
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp64-.Lfunc_begin2          # >> Call Site 11 <<
	.uleb128 .Ltmp65-.Ltmp64                #   Call between .Ltmp64 and .Ltmp65
	.uleb128 .Ltmp66-.Lfunc_begin2          #     jumps to .Ltmp66
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin2          # >> Call Site 12 <<
	.uleb128 .Lfunc_end6-.Ltmp65            #   Call between .Ltmp65 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
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
.Lfunc_end7:
	.size	_ZN5perft7CounterC2Ev, .Lfunc_end7-_ZN5perft7CounterC2Ev
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_Z17perft_tricky_testiRiS_      # -- Begin function _Z17perft_tricky_testiRiS_
	.p2align	4, 0x90
	.type	_Z17perft_tricky_testiRiS_,@function
_Z17perft_tricky_testiRiS_:             # @_Z17perft_tricky_testiRiS_
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
	subq	$1456, %rsp                     # imm = 0x5B0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movl	%edi, -1396(%rbp)
	movq	%rsi, -1408(%rbp)
	movq	%rdx, -1416(%rbp)
	leaq	-1280(%rbp), %rdi
	callq	_ZN5BoardC1Ev@PLT
.Ltmp67:
	leaq	-1376(%rbp), %rdi
	callq	_ZN5perft7CounterC2Ev
.Ltmp68:
	jmp	.LBB8_1
.LBB8_1:
	leaq	-1384(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1440(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp69:
	leaq	.L.str.15(%rip), %rsi
	leaq	-1312(%rbp), %rdi
	movq	-1440(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp70:
	jmp	.LBB8_2
.LBB8_2:
.Ltmp72:
	leaq	-1280(%rbp), %rdi
	leaq	-1312(%rbp), %rsi
	callq	_ZN5Board12LoadPositionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.Ltmp73:
	jmp	.LBB8_3
.LBB8_3:
	leaq	-1312(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1384(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movl	-1396(%rbp), %esi
.Ltmp75:
	leaq	-1280(%rbp), %rdi
	leaq	-1376(%rbp), %rdx
	callq	_ZN5perft5perftER5BoardiRNS_7CounterE@PLT
.Ltmp76:
	jmp	.LBB8_4
.LBB8_4:
	movslq	-1396(%rbp), %rax
	leaq	_ZL18perft_tricky_nodes(%rip), %rcx
	movl	(%rcx,%rax,4), %edi
	movl	-1376(%rbp), %esi
	leaq	-1392(%rbp), %rax
	movl	%edi, -1444(%rbp)               # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -1448(%rbp)               # 4-byte Spill
	movq	%rax, -1456(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp78:
	leaq	.L.str.12(%rip), %rsi
	leaq	-1344(%rbp), %rdi
	movq	-1456(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp79:
	jmp	.LBB8_5
.LBB8_5:
	movq	-1408(%rbp), %rcx
	movq	-1416(%rbp), %r8
.Ltmp81:
	leaq	-1344(%rbp), %rdx
	movl	-1444(%rbp), %edi               # 4-byte Reload
	movl	-1448(%rbp), %esi               # 4-byte Reload
	callq	_Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_
.Ltmp82:
	jmp	.LBB8_6
.LBB8_6:
	leaq	-1344(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1392(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-1280(%rbp), %rdi
	callq	_ZN5BoardD2Ev
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB8_17
# %bb.7:
	addq	$1456, %rsp                     # imm = 0x5B0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB8_8:
	.cfi_def_cfa %rbp, 16
.Ltmp77:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1424(%rbp)
	movl	%edx, -1428(%rbp)
	jmp	.LBB8_15
.LBB8_9:
.Ltmp71:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1424(%rbp)
	movl	%edx, -1428(%rbp)
	jmp	.LBB8_11
.LBB8_10:
.Ltmp74:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1424(%rbp)
	movl	%edx, -1428(%rbp)
	leaq	-1312(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB8_11:
	leaq	-1384(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB8_15
.LBB8_12:
.Ltmp80:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1424(%rbp)
	movl	%edx, -1428(%rbp)
	jmp	.LBB8_14
.LBB8_13:
.Ltmp83:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1424(%rbp)
	movl	%edx, -1428(%rbp)
	leaq	-1344(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB8_14:
	leaq	-1392(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
.LBB8_15:
	leaq	-1280(%rbp), %rdi
	callq	_ZN5BoardD2Ev
# %bb.16:
	movq	-1424(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.LBB8_17:
	callq	__stack_chk_fail@PLT
.Lfunc_end8:
	.size	_Z17perft_tricky_testiRiS_, .Lfunc_end8-_Z17perft_tricky_testiRiS_
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
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp67-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp67
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp67-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp68-.Ltmp67                #   Call between .Ltmp67 and .Ltmp68
	.uleb128 .Ltmp77-.Lfunc_begin3          #     jumps to .Ltmp77
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp69-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp70-.Ltmp69                #   Call between .Ltmp69 and .Ltmp70
	.uleb128 .Ltmp71-.Lfunc_begin3          #     jumps to .Ltmp71
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp72-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp73-.Ltmp72                #   Call between .Ltmp72 and .Ltmp73
	.uleb128 .Ltmp74-.Lfunc_begin3          #     jumps to .Ltmp74
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp75-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Ltmp76-.Ltmp75                #   Call between .Ltmp75 and .Ltmp76
	.uleb128 .Ltmp77-.Lfunc_begin3          #     jumps to .Ltmp77
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp78-.Lfunc_begin3          # >> Call Site 6 <<
	.uleb128 .Ltmp79-.Ltmp78                #   Call between .Ltmp78 and .Ltmp79
	.uleb128 .Ltmp80-.Lfunc_begin3          #     jumps to .Ltmp80
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp81-.Lfunc_begin3          # >> Call Site 7 <<
	.uleb128 .Ltmp82-.Ltmp81                #   Call between .Ltmp81 and .Ltmp82
	.uleb128 .Ltmp83-.Lfunc_begin3          #     jumps to .Ltmp83
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp82-.Lfunc_begin3          # >> Call Site 8 <<
	.uleb128 .Lfunc_end8-.Ltmp82            #   Call between .Ltmp82 and .Lfunc_end8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2
                                        # -- End function
	.text
	.globl	_Z19perft_kiwipete_testiRiS_    # -- Begin function _Z19perft_kiwipete_testiRiS_
	.p2align	4, 0x90
	.type	_Z19perft_kiwipete_testiRiS_,@function
_Z19perft_kiwipete_testiRiS_:           # @_Z19perft_kiwipete_testiRiS_
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
	subq	$1792, %rsp                     # imm = 0x700
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movl	%edi, -1636(%rbp)
	movq	%rsi, -1648(%rbp)
	movq	%rdx, -1656(%rbp)
	leaq	-1280(%rbp), %rdi
	callq	_ZN5BoardC1Ev@PLT
.Ltmp84:
	leaq	-1568(%rbp), %rdi
	callq	_ZN5perft7CounterC2Ev
.Ltmp85:
	jmp	.LBB9_1
.LBB9_1:
	leaq	-1576(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1680(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp86:
	leaq	.L.str.16(%rip), %rsi
	leaq	-1312(%rbp), %rdi
	movq	-1680(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp87:
	jmp	.LBB9_2
.LBB9_2:
.Ltmp89:
	leaq	-1280(%rbp), %rdi
	leaq	-1312(%rbp), %rsi
	callq	_ZN5Board12LoadPositionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.Ltmp90:
	jmp	.LBB9_3
.LBB9_3:
	leaq	-1312(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1576(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movl	-1636(%rbp), %esi
.Ltmp92:
	leaq	-1280(%rbp), %rdi
	leaq	-1568(%rbp), %rdx
	callq	_ZN5perft5perftER5BoardiRNS_7CounterE@PLT
.Ltmp93:
	jmp	.LBB9_4
.LBB9_4:
	movslq	-1636(%rbp), %rax
	leaq	_ZL14perft_kp_nodes(%rip), %rcx
	movl	(%rcx,%rax,4), %edi
	movl	-1568(%rbp), %esi
	leaq	-1584(%rbp), %rax
	movl	%edi, -1684(%rbp)               # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -1688(%rbp)               # 4-byte Spill
	movq	%rax, -1696(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp95:
	leaq	.L.str.12(%rip), %rsi
	leaq	-1344(%rbp), %rdi
	movq	-1696(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp96:
	jmp	.LBB9_5
.LBB9_5:
	movq	-1648(%rbp), %rcx
	movq	-1656(%rbp), %r8
.Ltmp98:
	leaq	-1344(%rbp), %rdx
	movl	-1684(%rbp), %edi               # 4-byte Reload
	movl	-1688(%rbp), %esi               # 4-byte Reload
	callq	_Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_
.Ltmp99:
	jmp	.LBB9_6
.LBB9_6:
	leaq	-1344(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1584(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movslq	-1636(%rbp), %rax
	leaq	_ZL17perft_kp_captures(%rip), %rcx
	movl	(%rcx,%rax,4), %edi
	movl	-1564(%rbp), %esi
	leaq	-1592(%rbp), %rax
	movl	%edi, -1700(%rbp)               # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -1704(%rbp)               # 4-byte Spill
	movq	%rax, -1712(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp101:
	leaq	.L.str.17(%rip), %rsi
	leaq	-1376(%rbp), %rdi
	movq	-1712(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp102:
	jmp	.LBB9_7
.LBB9_7:
	movq	-1648(%rbp), %rcx
	movq	-1656(%rbp), %r8
.Ltmp104:
	leaq	-1376(%rbp), %rdx
	movl	-1700(%rbp), %edi               # 4-byte Reload
	movl	-1704(%rbp), %esi               # 4-byte Reload
	callq	_Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_
.Ltmp105:
	jmp	.LBB9_8
.LBB9_8:
	leaq	-1376(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1592(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movslq	-1636(%rbp), %rax
	leaq	_ZL15perft_kp_checks(%rip), %rcx
	movl	(%rcx,%rax,4), %edi
	movl	-1548(%rbp), %esi
	leaq	-1600(%rbp), %rax
	movl	%edi, -1716(%rbp)               # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -1720(%rbp)               # 4-byte Spill
	movq	%rax, -1728(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp107:
	leaq	.L.str.18(%rip), %rsi
	leaq	-1408(%rbp), %rdi
	movq	-1728(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp108:
	jmp	.LBB9_9
.LBB9_9:
	movq	-1648(%rbp), %rcx
	movq	-1656(%rbp), %r8
.Ltmp110:
	leaq	-1408(%rbp), %rdx
	movl	-1716(%rbp), %edi               # 4-byte Reload
	movl	-1720(%rbp), %esi               # 4-byte Reload
	callq	_Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_
.Ltmp111:
	jmp	.LBB9_10
.LBB9_10:
	leaq	-1408(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1600(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movslq	-1636(%rbp), %rax
	leaq	_ZL12perft_kp_eps(%rip), %rcx
	movl	(%rcx,%rax,4), %edi
	movl	-1560(%rbp), %esi
	leaq	-1608(%rbp), %rax
	movl	%edi, -1732(%rbp)               # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -1736(%rbp)               # 4-byte Spill
	movq	%rax, -1744(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp113:
	leaq	.L.str.19(%rip), %rsi
	leaq	-1440(%rbp), %rdi
	movq	-1744(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp114:
	jmp	.LBB9_11
.LBB9_11:
	movq	-1648(%rbp), %rcx
	movq	-1656(%rbp), %r8
.Ltmp116:
	leaq	-1440(%rbp), %rdx
	movl	-1732(%rbp), %edi               # 4-byte Reload
	movl	-1736(%rbp), %esi               # 4-byte Reload
	callq	_Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_
.Ltmp117:
	jmp	.LBB9_12
.LBB9_12:
	leaq	-1440(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1608(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movslq	-1636(%rbp), %rax
	leaq	_ZL16perft_kp_castles(%rip), %rcx
	movl	(%rcx,%rax,4), %edi
	movl	-1556(%rbp), %esi
	leaq	-1616(%rbp), %rax
	movl	%edi, -1748(%rbp)               # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -1752(%rbp)               # 4-byte Spill
	movq	%rax, -1760(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp119:
	leaq	.L.str.20(%rip), %rsi
	leaq	-1472(%rbp), %rdi
	movq	-1760(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp120:
	jmp	.LBB9_13
.LBB9_13:
	movq	-1648(%rbp), %rcx
	movq	-1656(%rbp), %r8
.Ltmp122:
	leaq	-1472(%rbp), %rdx
	movl	-1748(%rbp), %edi               # 4-byte Reload
	movl	-1752(%rbp), %esi               # 4-byte Reload
	callq	_Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_
.Ltmp123:
	jmp	.LBB9_14
.LBB9_14:
	leaq	-1472(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1616(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movslq	-1636(%rbp), %rax
	leaq	_ZL14perft_kp_mates(%rip), %rcx
	movl	(%rcx,%rax,4), %edi
	movl	-1544(%rbp), %esi
	leaq	-1624(%rbp), %rax
	movl	%edi, -1764(%rbp)               # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -1768(%rbp)               # 4-byte Spill
	movq	%rax, -1776(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp125:
	leaq	.L.str.13(%rip), %rsi
	leaq	-1504(%rbp), %rdi
	movq	-1776(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp126:
	jmp	.LBB9_15
.LBB9_15:
	movq	-1648(%rbp), %rcx
	movq	-1656(%rbp), %r8
.Ltmp128:
	leaq	-1504(%rbp), %rdx
	movl	-1764(%rbp), %edi               # 4-byte Reload
	movl	-1768(%rbp), %esi               # 4-byte Reload
	callq	_Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_
.Ltmp129:
	jmp	.LBB9_16
.LBB9_16:
	leaq	-1504(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1624(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movslq	-1636(%rbp), %rax
	leaq	_ZL15perft_kp_promos(%rip), %rcx
	movl	(%rcx,%rax,4), %edi
	movl	-1552(%rbp), %esi
	leaq	-1632(%rbp), %rax
	movl	%edi, -1780(%rbp)               # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -1784(%rbp)               # 4-byte Spill
	movq	%rax, -1792(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp131:
	leaq	.L.str.14(%rip), %rsi
	leaq	-1536(%rbp), %rdi
	movq	-1792(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp132:
	jmp	.LBB9_17
.LBB9_17:
	movq	-1648(%rbp), %rcx
	movq	-1656(%rbp), %r8
.Ltmp134:
	leaq	-1536(%rbp), %rdx
	movl	-1780(%rbp), %edi               # 4-byte Reload
	movl	-1784(%rbp), %esi               # 4-byte Reload
	callq	_Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_
.Ltmp135:
	jmp	.LBB9_18
.LBB9_18:
	leaq	-1536(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1632(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-1280(%rbp), %rdi
	callq	_ZN5BoardD2Ev
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB9_47
# %bb.19:
	addq	$1792, %rsp                     # imm = 0x700
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB9_20:
	.cfi_def_cfa %rbp, 16
.Ltmp94:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1664(%rbp)
	movl	%edx, -1668(%rbp)
	jmp	.LBB9_45
.LBB9_21:
.Ltmp88:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1664(%rbp)
	movl	%edx, -1668(%rbp)
	jmp	.LBB9_23
.LBB9_22:
.Ltmp91:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1664(%rbp)
	movl	%edx, -1668(%rbp)
	leaq	-1312(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB9_23:
	leaq	-1576(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB9_45
.LBB9_24:
.Ltmp97:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1664(%rbp)
	movl	%edx, -1668(%rbp)
	jmp	.LBB9_26
.LBB9_25:
.Ltmp100:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1664(%rbp)
	movl	%edx, -1668(%rbp)
	leaq	-1344(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB9_26:
	leaq	-1584(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB9_45
.LBB9_27:
.Ltmp103:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1664(%rbp)
	movl	%edx, -1668(%rbp)
	jmp	.LBB9_29
.LBB9_28:
.Ltmp106:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1664(%rbp)
	movl	%edx, -1668(%rbp)
	leaq	-1376(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB9_29:
	leaq	-1592(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB9_45
.LBB9_30:
.Ltmp109:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1664(%rbp)
	movl	%edx, -1668(%rbp)
	jmp	.LBB9_32
.LBB9_31:
.Ltmp112:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1664(%rbp)
	movl	%edx, -1668(%rbp)
	leaq	-1408(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB9_32:
	leaq	-1600(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB9_45
.LBB9_33:
.Ltmp115:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1664(%rbp)
	movl	%edx, -1668(%rbp)
	jmp	.LBB9_35
.LBB9_34:
.Ltmp118:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1664(%rbp)
	movl	%edx, -1668(%rbp)
	leaq	-1440(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB9_35:
	leaq	-1608(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB9_45
.LBB9_36:
.Ltmp121:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1664(%rbp)
	movl	%edx, -1668(%rbp)
	jmp	.LBB9_38
.LBB9_37:
.Ltmp124:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1664(%rbp)
	movl	%edx, -1668(%rbp)
	leaq	-1472(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB9_38:
	leaq	-1616(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB9_45
.LBB9_39:
.Ltmp127:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1664(%rbp)
	movl	%edx, -1668(%rbp)
	jmp	.LBB9_41
.LBB9_40:
.Ltmp130:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1664(%rbp)
	movl	%edx, -1668(%rbp)
	leaq	-1504(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB9_41:
	leaq	-1624(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB9_45
.LBB9_42:
.Ltmp133:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1664(%rbp)
	movl	%edx, -1668(%rbp)
	jmp	.LBB9_44
.LBB9_43:
.Ltmp136:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1664(%rbp)
	movl	%edx, -1668(%rbp)
	leaq	-1536(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB9_44:
	leaq	-1632(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
.LBB9_45:
	leaq	-1280(%rbp), %rdi
	callq	_ZN5BoardD2Ev
# %bb.46:
	movq	-1664(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.LBB9_47:
	callq	__stack_chk_fail@PLT
.Lfunc_end9:
	.size	_Z19perft_kiwipete_testiRiS_, .Lfunc_end9-_Z19perft_kiwipete_testiRiS_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table9:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp84-.Lfunc_begin4          #   Call between .Lfunc_begin4 and .Ltmp84
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp84-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Ltmp85-.Ltmp84                #   Call between .Ltmp84 and .Ltmp85
	.uleb128 .Ltmp94-.Lfunc_begin4          #     jumps to .Ltmp94
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp86-.Lfunc_begin4          # >> Call Site 3 <<
	.uleb128 .Ltmp87-.Ltmp86                #   Call between .Ltmp86 and .Ltmp87
	.uleb128 .Ltmp88-.Lfunc_begin4          #     jumps to .Ltmp88
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp89-.Lfunc_begin4          # >> Call Site 4 <<
	.uleb128 .Ltmp90-.Ltmp89                #   Call between .Ltmp89 and .Ltmp90
	.uleb128 .Ltmp91-.Lfunc_begin4          #     jumps to .Ltmp91
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp92-.Lfunc_begin4          # >> Call Site 5 <<
	.uleb128 .Ltmp93-.Ltmp92                #   Call between .Ltmp92 and .Ltmp93
	.uleb128 .Ltmp94-.Lfunc_begin4          #     jumps to .Ltmp94
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp95-.Lfunc_begin4          # >> Call Site 6 <<
	.uleb128 .Ltmp96-.Ltmp95                #   Call between .Ltmp95 and .Ltmp96
	.uleb128 .Ltmp97-.Lfunc_begin4          #     jumps to .Ltmp97
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp98-.Lfunc_begin4          # >> Call Site 7 <<
	.uleb128 .Ltmp99-.Ltmp98                #   Call between .Ltmp98 and .Ltmp99
	.uleb128 .Ltmp100-.Lfunc_begin4         #     jumps to .Ltmp100
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp101-.Lfunc_begin4         # >> Call Site 8 <<
	.uleb128 .Ltmp102-.Ltmp101              #   Call between .Ltmp101 and .Ltmp102
	.uleb128 .Ltmp103-.Lfunc_begin4         #     jumps to .Ltmp103
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp104-.Lfunc_begin4         # >> Call Site 9 <<
	.uleb128 .Ltmp105-.Ltmp104              #   Call between .Ltmp104 and .Ltmp105
	.uleb128 .Ltmp106-.Lfunc_begin4         #     jumps to .Ltmp106
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp107-.Lfunc_begin4         # >> Call Site 10 <<
	.uleb128 .Ltmp108-.Ltmp107              #   Call between .Ltmp107 and .Ltmp108
	.uleb128 .Ltmp109-.Lfunc_begin4         #     jumps to .Ltmp109
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp110-.Lfunc_begin4         # >> Call Site 11 <<
	.uleb128 .Ltmp111-.Ltmp110              #   Call between .Ltmp110 and .Ltmp111
	.uleb128 .Ltmp112-.Lfunc_begin4         #     jumps to .Ltmp112
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp113-.Lfunc_begin4         # >> Call Site 12 <<
	.uleb128 .Ltmp114-.Ltmp113              #   Call between .Ltmp113 and .Ltmp114
	.uleb128 .Ltmp115-.Lfunc_begin4         #     jumps to .Ltmp115
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp116-.Lfunc_begin4         # >> Call Site 13 <<
	.uleb128 .Ltmp117-.Ltmp116              #   Call between .Ltmp116 and .Ltmp117
	.uleb128 .Ltmp118-.Lfunc_begin4         #     jumps to .Ltmp118
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp119-.Lfunc_begin4         # >> Call Site 14 <<
	.uleb128 .Ltmp120-.Ltmp119              #   Call between .Ltmp119 and .Ltmp120
	.uleb128 .Ltmp121-.Lfunc_begin4         #     jumps to .Ltmp121
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp122-.Lfunc_begin4         # >> Call Site 15 <<
	.uleb128 .Ltmp123-.Ltmp122              #   Call between .Ltmp122 and .Ltmp123
	.uleb128 .Ltmp124-.Lfunc_begin4         #     jumps to .Ltmp124
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp125-.Lfunc_begin4         # >> Call Site 16 <<
	.uleb128 .Ltmp126-.Ltmp125              #   Call between .Ltmp125 and .Ltmp126
	.uleb128 .Ltmp127-.Lfunc_begin4         #     jumps to .Ltmp127
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp128-.Lfunc_begin4         # >> Call Site 17 <<
	.uleb128 .Ltmp129-.Ltmp128              #   Call between .Ltmp128 and .Ltmp129
	.uleb128 .Ltmp130-.Lfunc_begin4         #     jumps to .Ltmp130
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp131-.Lfunc_begin4         # >> Call Site 18 <<
	.uleb128 .Ltmp132-.Ltmp131              #   Call between .Ltmp131 and .Ltmp132
	.uleb128 .Ltmp133-.Lfunc_begin4         #     jumps to .Ltmp133
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp134-.Lfunc_begin4         # >> Call Site 19 <<
	.uleb128 .Ltmp135-.Ltmp134              #   Call between .Ltmp134 and .Ltmp135
	.uleb128 .Ltmp136-.Lfunc_begin4         #     jumps to .Ltmp136
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp135-.Lfunc_begin4         # >> Call Site 20 <<
	.uleb128 .Lfunc_end9-.Ltmp135           #   Call between .Ltmp135 and .Lfunc_end9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2
                                        # -- End function
	.text
	.globl	_Z20perft_classical_testiRiS_   # -- Begin function _Z20perft_classical_testiRiS_
	.p2align	4, 0x90
	.type	_Z20perft_classical_testiRiS_,@function
_Z20perft_classical_testiRiS_:          # @_Z20perft_classical_testiRiS_
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
	subq	$1584, %rsp                     # imm = 0x630
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movl	%edi, -1476(%rbp)
	movq	%rsi, -1488(%rbp)
	movq	%rdx, -1496(%rbp)
	leaq	-1280(%rbp), %rdi
	callq	_ZN5BoardC1Ev@PLT
.Ltmp137:
	leaq	-1440(%rbp), %rdi
	callq	_ZN5perft7CounterC2Ev
.Ltmp138:
	jmp	.LBB10_1
.LBB10_1:
	movl	-1476(%rbp), %esi
.Ltmp139:
	leaq	-1280(%rbp), %rdi
	leaq	-1440(%rbp), %rdx
	callq	_ZN5perft5perftER5BoardiRNS_7CounterE@PLT
.Ltmp140:
	jmp	.LBB10_2
.LBB10_2:
	movslq	-1476(%rbp), %rax
	leaq	_ZL21perft_classical_nodes(%rip), %rcx
	movl	(%rcx,%rax,4), %edi
	movl	-1440(%rbp), %esi
	leaq	-1448(%rbp), %rax
	movl	%edi, -1512(%rbp)               # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -1516(%rbp)               # 4-byte Spill
	movq	%rax, -1528(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp142:
	leaq	.L.str.12(%rip), %rsi
	leaq	-1312(%rbp), %rdi
	movq	-1528(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp143:
	jmp	.LBB10_3
.LBB10_3:
	movq	-1488(%rbp), %rcx
	movq	-1496(%rbp), %r8
.Ltmp145:
	leaq	-1312(%rbp), %rdx
	movl	-1512(%rbp), %edi               # 4-byte Reload
	movl	-1516(%rbp), %esi               # 4-byte Reload
	callq	_Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_
.Ltmp146:
	jmp	.LBB10_4
.LBB10_4:
	leaq	-1312(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1448(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movslq	-1476(%rbp), %rax
	leaq	_ZL24perft_classical_captures(%rip), %rcx
	movl	(%rcx,%rax,4), %edi
	movl	-1436(%rbp), %esi
	leaq	-1456(%rbp), %rax
	movl	%edi, -1532(%rbp)               # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -1536(%rbp)               # 4-byte Spill
	movq	%rax, -1544(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp148:
	leaq	.L.str.17(%rip), %rsi
	leaq	-1344(%rbp), %rdi
	movq	-1544(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp149:
	jmp	.LBB10_5
.LBB10_5:
	movq	-1488(%rbp), %rcx
	movq	-1496(%rbp), %r8
.Ltmp151:
	leaq	-1344(%rbp), %rdx
	movl	-1532(%rbp), %edi               # 4-byte Reload
	movl	-1536(%rbp), %esi               # 4-byte Reload
	callq	_Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_
.Ltmp152:
	jmp	.LBB10_6
.LBB10_6:
	leaq	-1344(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1456(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movslq	-1476(%rbp), %rax
	leaq	_ZL22perft_classical_checks(%rip), %rcx
	movl	(%rcx,%rax,4), %edi
	movl	-1420(%rbp), %esi
	leaq	-1464(%rbp), %rax
	movl	%edi, -1548(%rbp)               # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -1552(%rbp)               # 4-byte Spill
	movq	%rax, -1560(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp154:
	leaq	.L.str.18(%rip), %rsi
	leaq	-1376(%rbp), %rdi
	movq	-1560(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp155:
	jmp	.LBB10_7
.LBB10_7:
	movq	-1488(%rbp), %rcx
	movq	-1496(%rbp), %r8
.Ltmp157:
	leaq	-1376(%rbp), %rdx
	movl	-1548(%rbp), %edi               # 4-byte Reload
	movl	-1552(%rbp), %esi               # 4-byte Reload
	callq	_Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_
.Ltmp158:
	jmp	.LBB10_8
.LBB10_8:
	leaq	-1376(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1464(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movslq	-1476(%rbp), %rax
	leaq	_ZL21perft_classical_mates(%rip), %rcx
	movl	(%rcx,%rax,4), %edi
	movl	-1416(%rbp), %esi
	leaq	-1472(%rbp), %rax
	movl	%edi, -1564(%rbp)               # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -1568(%rbp)               # 4-byte Spill
	movq	%rax, -1576(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp160:
	leaq	.L.str.13(%rip), %rsi
	leaq	-1408(%rbp), %rdi
	movq	-1576(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp161:
	jmp	.LBB10_9
.LBB10_9:
	movq	-1488(%rbp), %rcx
	movq	-1496(%rbp), %r8
.Ltmp163:
	leaq	-1408(%rbp), %rdx
	movl	-1564(%rbp), %edi               # 4-byte Reload
	movl	-1568(%rbp), %esi               # 4-byte Reload
	callq	_Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_
.Ltmp164:
	jmp	.LBB10_10
.LBB10_10:
	leaq	-1408(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1472(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-1280(%rbp), %rdi
	callq	_ZN5BoardD2Ev
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB10_27
# %bb.11:
	addq	$1584, %rsp                     # imm = 0x630
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB10_12:
	.cfi_def_cfa %rbp, 16
.Ltmp141:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1504(%rbp)
	movl	%edx, -1508(%rbp)
	jmp	.LBB10_25
.LBB10_13:
.Ltmp144:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1504(%rbp)
	movl	%edx, -1508(%rbp)
	jmp	.LBB10_15
.LBB10_14:
.Ltmp147:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1504(%rbp)
	movl	%edx, -1508(%rbp)
	leaq	-1312(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB10_15:
	leaq	-1448(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB10_25
.LBB10_16:
.Ltmp150:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1504(%rbp)
	movl	%edx, -1508(%rbp)
	jmp	.LBB10_18
.LBB10_17:
.Ltmp153:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1504(%rbp)
	movl	%edx, -1508(%rbp)
	leaq	-1344(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB10_18:
	leaq	-1456(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB10_25
.LBB10_19:
.Ltmp156:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1504(%rbp)
	movl	%edx, -1508(%rbp)
	jmp	.LBB10_21
.LBB10_20:
.Ltmp159:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1504(%rbp)
	movl	%edx, -1508(%rbp)
	leaq	-1376(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB10_21:
	leaq	-1464(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB10_25
.LBB10_22:
.Ltmp162:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1504(%rbp)
	movl	%edx, -1508(%rbp)
	jmp	.LBB10_24
.LBB10_23:
.Ltmp165:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1504(%rbp)
	movl	%edx, -1508(%rbp)
	leaq	-1408(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB10_24:
	leaq	-1472(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
.LBB10_25:
	leaq	-1280(%rbp), %rdi
	callq	_ZN5BoardD2Ev
# %bb.26:
	movq	-1504(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.LBB10_27:
	callq	__stack_chk_fail@PLT
.Lfunc_end10:
	.size	_Z20perft_classical_testiRiS_, .Lfunc_end10-_Z20perft_classical_testiRiS_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table10:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp137-.Lfunc_begin5         #   Call between .Lfunc_begin5 and .Ltmp137
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp137-.Lfunc_begin5         # >> Call Site 2 <<
	.uleb128 .Ltmp140-.Ltmp137              #   Call between .Ltmp137 and .Ltmp140
	.uleb128 .Ltmp141-.Lfunc_begin5         #     jumps to .Ltmp141
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp142-.Lfunc_begin5         # >> Call Site 3 <<
	.uleb128 .Ltmp143-.Ltmp142              #   Call between .Ltmp142 and .Ltmp143
	.uleb128 .Ltmp144-.Lfunc_begin5         #     jumps to .Ltmp144
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp145-.Lfunc_begin5         # >> Call Site 4 <<
	.uleb128 .Ltmp146-.Ltmp145              #   Call between .Ltmp145 and .Ltmp146
	.uleb128 .Ltmp147-.Lfunc_begin5         #     jumps to .Ltmp147
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp148-.Lfunc_begin5         # >> Call Site 5 <<
	.uleb128 .Ltmp149-.Ltmp148              #   Call between .Ltmp148 and .Ltmp149
	.uleb128 .Ltmp150-.Lfunc_begin5         #     jumps to .Ltmp150
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp151-.Lfunc_begin5         # >> Call Site 6 <<
	.uleb128 .Ltmp152-.Ltmp151              #   Call between .Ltmp151 and .Ltmp152
	.uleb128 .Ltmp153-.Lfunc_begin5         #     jumps to .Ltmp153
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp154-.Lfunc_begin5         # >> Call Site 7 <<
	.uleb128 .Ltmp155-.Ltmp154              #   Call between .Ltmp154 and .Ltmp155
	.uleb128 .Ltmp156-.Lfunc_begin5         #     jumps to .Ltmp156
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp157-.Lfunc_begin5         # >> Call Site 8 <<
	.uleb128 .Ltmp158-.Ltmp157              #   Call between .Ltmp157 and .Ltmp158
	.uleb128 .Ltmp159-.Lfunc_begin5         #     jumps to .Ltmp159
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp160-.Lfunc_begin5         # >> Call Site 9 <<
	.uleb128 .Ltmp161-.Ltmp160              #   Call between .Ltmp160 and .Ltmp161
	.uleb128 .Ltmp162-.Lfunc_begin5         #     jumps to .Ltmp162
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp163-.Lfunc_begin5         # >> Call Site 10 <<
	.uleb128 .Ltmp164-.Ltmp163              #   Call between .Ltmp163 and .Ltmp164
	.uleb128 .Ltmp165-.Lfunc_begin5         #     jumps to .Ltmp165
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp164-.Lfunc_begin5         # >> Call Site 11 <<
	.uleb128 .Lfunc_end10-.Ltmp164          #   Call between .Ltmp164 and .Lfunc_end10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
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
	leaq	.L.str.21(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	movq	%rax, %rdi
	leaq	.L.str.21(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E@PLT
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end11:
	.size	_Z6bannerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .Lfunc_end11-_Z6bannerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_endproc
                                        # -- End function
	.globl	_Z9run_testsv                   # -- Begin function _Z9run_testsv
	.p2align	4, 0x90
	.type	_Z9run_testsv,@function
_Z9run_testsv:                          # @_Z9run_testsv
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
	subq	$1360, %rsp                     # imm = 0x550
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movl	$0, -940(%rbp)
	movl	$0, -944(%rbp)
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	.L.str.22(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.L.str.23(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	-952(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -1152(%rbp)               # 8-byte Spill
	movq	%rcx, -1160(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp166:
	leaq	.L.str.24(%rip), %rsi
	leaq	-40(%rbp), %rdi
	movq	-1160(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp167:
	jmp	.LBB12_1
.LBB12_1:
.Ltmp169:
	leaq	-40(%rbp), %rdi
	callq	_Z6bannerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Ltmp170:
	jmp	.LBB12_2
.LBB12_2:
	leaq	-40(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-952(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-960(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1168(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp172:
	leaq	.L.str.25(%rip), %rsi
	leaq	-72(%rbp), %rdi
	movq	-1168(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp173:
	jmp	.LBB12_3
.LBB12_3:
.Ltmp175:
	leaq	-72(%rbp), %rdi
	movl	$41, %esi
	xorl	%edx, %edx
	leaq	-940(%rbp), %rcx
	leaq	-944(%rbp), %r8
	callq	_Z18position_load_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRiS7_
.Ltmp176:
	jmp	.LBB12_4
.LBB12_4:
	leaq	-72(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-960(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-968(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1176(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp178:
	leaq	.L.str.26(%rip), %rsi
	leaq	-104(%rbp), %rdi
	movq	-1176(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp179:
	jmp	.LBB12_5
.LBB12_5:
.Ltmp181:
	leaq	-104(%rbp), %rdi
	movl	$4, %esi
	movl	$1, %edx
	leaq	-940(%rbp), %rcx
	leaq	-944(%rbp), %r8
	callq	_Z18position_load_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRiS7_
.Ltmp182:
	jmp	.LBB12_6
.LBB12_6:
	leaq	-104(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-968(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-976(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1184(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp184:
	leaq	.L.str.27(%rip), %rsi
	leaq	-136(%rbp), %rdi
	movq	-1184(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp185:
	jmp	.LBB12_7
.LBB12_7:
.Ltmp187:
	leaq	-136(%rbp), %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	leaq	-940(%rbp), %rcx
	leaq	-944(%rbp), %r8
	callq	_Z18position_load_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRiS7_
.Ltmp188:
	jmp	.LBB12_8
.LBB12_8:
	leaq	-136(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-976(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-984(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1192(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp190:
	leaq	.L.str.28(%rip), %rsi
	leaq	-168(%rbp), %rdi
	movq	-1192(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp191:
	jmp	.LBB12_9
.LBB12_9:
.Ltmp193:
	leaq	-168(%rbp), %rdi
	movl	$22, %esi
	xorl	%edx, %edx
	leaq	-940(%rbp), %rcx
	leaq	-944(%rbp), %r8
	callq	_Z18position_load_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRiS7_
.Ltmp194:
	jmp	.LBB12_10
.LBB12_10:
	leaq	-168(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-984(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-992(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1200(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp196:
	leaq	.L.str.29(%rip), %rsi
	leaq	-200(%rbp), %rdi
	movq	-1200(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp197:
	jmp	.LBB12_11
.LBB12_11:
.Ltmp199:
	leaq	-200(%rbp), %rdi
	movl	$29, %esi
	xorl	%edx, %edx
	leaq	-940(%rbp), %rcx
	leaq	-944(%rbp), %r8
	callq	_Z18position_load_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRiS7_
.Ltmp200:
	jmp	.LBB12_12
.LBB12_12:
	leaq	-200(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-992(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-1000(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1208(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp202:
	leaq	.L.str.30(%rip), %rsi
	leaq	-232(%rbp), %rdi
	movq	-1208(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp203:
	jmp	.LBB12_13
.LBB12_13:
.Ltmp205:
	leaq	-232(%rbp), %rdi
	movl	$21, %esi
	xorl	%edx, %edx
	leaq	-940(%rbp), %rcx
	leaq	-944(%rbp), %r8
	callq	_Z18position_load_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRiS7_
.Ltmp206:
	jmp	.LBB12_14
.LBB12_14:
	leaq	-232(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1000(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-1008(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1216(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp208:
	leaq	.L.str.31(%rip), %rsi
	leaq	-264(%rbp), %rdi
	movq	-1216(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp209:
	jmp	.LBB12_15
.LBB12_15:
.Ltmp211:
	leaq	-264(%rbp), %rdi
	movl	$22, %esi
	xorl	%edx, %edx
	leaq	-940(%rbp), %rcx
	leaq	-944(%rbp), %r8
	callq	_Z18position_load_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRiS7_
.Ltmp212:
	jmp	.LBB12_16
.LBB12_16:
	leaq	-264(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1008(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-1016(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1224(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp214:
	leaq	.L.str.32(%rip), %rsi
	leaq	-296(%rbp), %rdi
	movq	-1224(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp215:
	jmp	.LBB12_17
.LBB12_17:
.Ltmp217:
	leaq	-296(%rbp), %rdi
	movl	$21, %esi
	xorl	%edx, %edx
	leaq	-940(%rbp), %rcx
	leaq	-944(%rbp), %r8
	callq	_Z18position_load_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRiS7_
.Ltmp218:
	jmp	.LBB12_18
.LBB12_18:
	leaq	-296(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1016(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-1024(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1232(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp220:
	leaq	.L.str.33(%rip), %rsi
	leaq	-328(%rbp), %rdi
	movq	-1232(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp221:
	jmp	.LBB12_19
.LBB12_19:
.Ltmp223:
	leaq	-328(%rbp), %rdi
	movl	$21, %esi
	xorl	%edx, %edx
	leaq	-940(%rbp), %rcx
	leaq	-944(%rbp), %r8
	callq	_Z18position_load_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRiS7_
.Ltmp224:
	jmp	.LBB12_20
.LBB12_20:
	leaq	-328(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1024(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-1032(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1240(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp226:
	leaq	.L.str.16(%rip), %rsi
	leaq	-360(%rbp), %rdi
	movq	-1240(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp227:
	jmp	.LBB12_21
.LBB12_21:
.Ltmp229:
	leaq	-360(%rbp), %rdi
	movl	$48, %esi
	xorl	%edx, %edx
	leaq	-940(%rbp), %rcx
	leaq	-944(%rbp), %r8
	callq	_Z18position_load_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRiS7_
.Ltmp230:
	jmp	.LBB12_22
.LBB12_22:
	leaq	-360(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1032(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-1040(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1248(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp232:
	leaq	.L.str.15(%rip), %rsi
	leaq	-392(%rbp), %rdi
	movq	-1248(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp233:
	jmp	.LBB12_23
.LBB12_23:
.Ltmp235:
	leaq	-392(%rbp), %rdi
	movl	$44, %esi
	xorl	%edx, %edx
	leaq	-940(%rbp), %rcx
	leaq	-944(%rbp), %r8
	callq	_Z18position_load_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRiS7_
.Ltmp236:
	jmp	.LBB12_24
.LBB12_24:
	leaq	-392(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1040(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-1048(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1256(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp238:
	leaq	.L.str.34(%rip), %rsi
	leaq	-424(%rbp), %rdi
	movq	-1256(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp239:
	jmp	.LBB12_25
.LBB12_25:
.Ltmp241:
	leaq	-424(%rbp), %rdi
	movl	$38, %esi
	xorl	%edx, %edx
	leaq	-940(%rbp), %rcx
	leaq	-944(%rbp), %r8
	callq	_Z18position_load_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRiS7_
.Ltmp242:
	jmp	.LBB12_26
.LBB12_26:
	leaq	-424(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1048(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-1056(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1264(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp244:
	leaq	.L.str.35(%rip), %rsi
	leaq	-456(%rbp), %rdi
	movq	-1264(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp245:
	jmp	.LBB12_27
.LBB12_27:
.Ltmp247:
	leaq	-456(%rbp), %rdi
	callq	_Z6bannerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Ltmp248:
	jmp	.LBB12_28
.LBB12_28:
	leaq	-456(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1056(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-1064(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1272(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp250:
	leaq	.L.str.36(%rip), %rsi
	leaq	-488(%rbp), %rdi
	movq	-1272(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp251:
	jmp	.LBB12_29
.LBB12_29:
.Ltmp253:
	leaq	-488(%rbp), %rdi
	xorl	%esi, %esi
	leaq	-940(%rbp), %rdx
	leaq	-944(%rbp), %rcx
	callq	_Z18position_mate_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbRiS7_
.Ltmp254:
	jmp	.LBB12_30
.LBB12_30:
	leaq	-488(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1064(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-1072(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1280(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp256:
	leaq	.L.str.37(%rip), %rsi
	leaq	-520(%rbp), %rdi
	movq	-1280(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp257:
	jmp	.LBB12_31
.LBB12_31:
.Ltmp259:
	leaq	-520(%rbp), %rdi
	movl	$1, %esi
	leaq	-940(%rbp), %rdx
	leaq	-944(%rbp), %rcx
	callq	_Z18position_mate_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbRiS7_
.Ltmp260:
	jmp	.LBB12_32
.LBB12_32:
	leaq	-520(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1072(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-1080(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1288(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp262:
	leaq	.L.str.38(%rip), %rsi
	leaq	-552(%rbp), %rdi
	movq	-1288(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp263:
	jmp	.LBB12_33
.LBB12_33:
.Ltmp265:
	leaq	-552(%rbp), %rdi
	movl	$1, %esi
	leaq	-940(%rbp), %rdx
	leaq	-944(%rbp), %rcx
	callq	_Z18position_mate_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbRiS7_
.Ltmp266:
	jmp	.LBB12_34
.LBB12_34:
	leaq	-552(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1080(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-1088(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1296(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp268:
	leaq	.L.str.39(%rip), %rsi
	leaq	-584(%rbp), %rdi
	movq	-1296(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp269:
	jmp	.LBB12_35
.LBB12_35:
.Ltmp271:
	leaq	-584(%rbp), %rdi
	movl	$1, %esi
	leaq	-940(%rbp), %rdx
	leaq	-944(%rbp), %rcx
	callq	_Z18position_mate_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbRiS7_
.Ltmp272:
	jmp	.LBB12_36
.LBB12_36:
	leaq	-584(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1088(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-1096(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1304(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp274:
	leaq	.L.str.40(%rip), %rsi
	leaq	-616(%rbp), %rdi
	movq	-1304(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp275:
	jmp	.LBB12_37
.LBB12_37:
.Ltmp277:
	leaq	-616(%rbp), %rdi
	xorl	%esi, %esi
	leaq	-940(%rbp), %rdx
	leaq	-944(%rbp), %rcx
	callq	_Z18position_mate_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbRiS7_
.Ltmp278:
	jmp	.LBB12_38
.LBB12_38:
	leaq	-616(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1096(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1312(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp280:
	leaq	.L.str.41(%rip), %rsi
	leaq	-648(%rbp), %rdi
	movq	-1312(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp281:
	jmp	.LBB12_39
.LBB12_39:
.Ltmp283:
	leaq	-648(%rbp), %rdi
	movl	$1, %esi
	leaq	-940(%rbp), %rdx
	leaq	-944(%rbp), %rcx
	callq	_Z18position_mate_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbRiS7_
.Ltmp284:
	jmp	.LBB12_40
.LBB12_40:
	leaq	-648(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1104(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-1112(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1320(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp286:
	leaq	.L.str.42(%rip), %rsi
	leaq	-680(%rbp), %rdi
	movq	-1320(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp287:
	jmp	.LBB12_41
.LBB12_41:
.Ltmp289:
	leaq	-680(%rbp), %rdi
	movl	$1, %esi
	leaq	-940(%rbp), %rdx
	leaq	-944(%rbp), %rcx
	callq	_Z18position_mate_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbRiS7_
.Ltmp290:
	jmp	.LBB12_42
.LBB12_42:
	leaq	-680(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1112(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movl	$1, -1128(%rbp)
.LBB12_43:                              # =>This Inner Loop Header: Depth=1
	cmpl	$5, -1128(%rbp)
	jge	.LBB12_114
# %bb.44:                               #   in Loop: Header=BB12_43 Depth=1
	movl	-1128(%rbp), %esi
	leaq	-744(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1328(%rbp)               # 8-byte Spill
	callq	_ZNSt7__cxx119to_stringEi
.Ltmp310:
	leaq	.L.str.43(%rip), %rsi
	leaq	-712(%rbp), %rdi
	movq	-1328(%rbp), %rdx               # 8-byte Reload
	callq	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_
.Ltmp311:
	jmp	.LBB12_45
.LBB12_45:                              #   in Loop: Header=BB12_43 Depth=1
.Ltmp313:
	leaq	-712(%rbp), %rdi
	callq	_Z6bannerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Ltmp314:
	jmp	.LBB12_46
.LBB12_46:                              #   in Loop: Header=BB12_43 Depth=1
	leaq	-712(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-744(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movl	-1128(%rbp), %edi
	leaq	-940(%rbp), %rsi
	leaq	-944(%rbp), %rdx
	callq	_Z11perft4_testiRiS_
# %bb.47:                               #   in Loop: Header=BB12_43 Depth=1
	movl	-1128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1128(%rbp)
	jmp	.LBB12_43
.LBB12_48:
.Ltmp168:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	jmp	.LBB12_50
.LBB12_49:
.Ltmp171:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	leaq	-40(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB12_50:
	leaq	-952(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB12_143
.LBB12_51:
.Ltmp174:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	jmp	.LBB12_53
.LBB12_52:
.Ltmp177:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	leaq	-72(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB12_53:
	leaq	-960(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB12_143
.LBB12_54:
.Ltmp180:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	jmp	.LBB12_56
.LBB12_55:
.Ltmp183:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	leaq	-104(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB12_56:
	leaq	-968(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB12_143
.LBB12_57:
.Ltmp186:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	jmp	.LBB12_59
.LBB12_58:
.Ltmp189:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	leaq	-136(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB12_59:
	leaq	-976(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB12_143
.LBB12_60:
.Ltmp192:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	jmp	.LBB12_62
.LBB12_61:
.Ltmp195:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	leaq	-168(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB12_62:
	leaq	-984(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB12_143
.LBB12_63:
.Ltmp198:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	jmp	.LBB12_65
.LBB12_64:
.Ltmp201:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	leaq	-200(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB12_65:
	leaq	-992(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB12_143
.LBB12_66:
.Ltmp204:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	jmp	.LBB12_68
.LBB12_67:
.Ltmp207:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	leaq	-232(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB12_68:
	leaq	-1000(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB12_143
.LBB12_69:
.Ltmp210:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	jmp	.LBB12_71
.LBB12_70:
.Ltmp213:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	leaq	-264(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB12_71:
	leaq	-1008(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB12_143
.LBB12_72:
.Ltmp216:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	jmp	.LBB12_74
.LBB12_73:
.Ltmp219:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	leaq	-296(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB12_74:
	leaq	-1016(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB12_143
.LBB12_75:
.Ltmp222:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	jmp	.LBB12_77
.LBB12_76:
.Ltmp225:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	leaq	-328(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB12_77:
	leaq	-1024(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB12_143
.LBB12_78:
.Ltmp228:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	jmp	.LBB12_80
.LBB12_79:
.Ltmp231:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	leaq	-360(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB12_80:
	leaq	-1032(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB12_143
.LBB12_81:
.Ltmp234:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	jmp	.LBB12_83
.LBB12_82:
.Ltmp237:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	leaq	-392(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB12_83:
	leaq	-1040(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB12_143
.LBB12_84:
.Ltmp240:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	jmp	.LBB12_86
.LBB12_85:
.Ltmp243:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	leaq	-424(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB12_86:
	leaq	-1048(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB12_143
.LBB12_87:
.Ltmp246:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	jmp	.LBB12_89
.LBB12_88:
.Ltmp249:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	leaq	-456(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB12_89:
	leaq	-1056(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB12_143
.LBB12_90:
.Ltmp252:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	jmp	.LBB12_92
.LBB12_91:
.Ltmp255:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	leaq	-488(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB12_92:
	leaq	-1064(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB12_143
.LBB12_93:
.Ltmp258:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	jmp	.LBB12_95
.LBB12_94:
.Ltmp261:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	leaq	-520(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB12_95:
	leaq	-1072(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB12_143
.LBB12_96:
.Ltmp264:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	jmp	.LBB12_98
.LBB12_97:
.Ltmp267:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	leaq	-552(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB12_98:
	leaq	-1080(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB12_143
.LBB12_99:
.Ltmp270:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	jmp	.LBB12_101
.LBB12_100:
.Ltmp273:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	leaq	-584(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB12_101:
	leaq	-1088(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB12_143
.LBB12_102:
.Ltmp276:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	jmp	.LBB12_104
.LBB12_103:
.Ltmp279:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	leaq	-616(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB12_104:
	leaq	-1096(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB12_143
.LBB12_105:
.Ltmp282:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	jmp	.LBB12_107
.LBB12_106:
.Ltmp285:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	leaq	-648(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB12_107:
	leaq	-1104(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB12_143
.LBB12_108:
.Ltmp288:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	jmp	.LBB12_110
.LBB12_109:
.Ltmp291:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	leaq	-680(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB12_110:
	leaq	-1112(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB12_143
.LBB12_111:
.Ltmp312:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	jmp	.LBB12_113
.LBB12_112:
.Ltmp315:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	leaq	-712(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB12_113:
	leaq	-744(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.LBB12_143
.LBB12_114:
	movl	$1, -1132(%rbp)
.LBB12_115:                             # =>This Inner Loop Header: Depth=1
	cmpl	$6, -1132(%rbp)
	jge	.LBB12_123
# %bb.116:                              #   in Loop: Header=BB12_115 Depth=1
	movl	-1132(%rbp), %esi
	leaq	-808(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1336(%rbp)               # 8-byte Spill
	callq	_ZNSt7__cxx119to_stringEi
.Ltmp304:
	leaq	.L.str.44(%rip), %rsi
	leaq	-776(%rbp), %rdi
	movq	-1336(%rbp), %rdx               # 8-byte Reload
	callq	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_
.Ltmp305:
	jmp	.LBB12_117
.LBB12_117:                             #   in Loop: Header=BB12_115 Depth=1
.Ltmp307:
	leaq	-776(%rbp), %rdi
	callq	_Z6bannerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Ltmp308:
	jmp	.LBB12_118
.LBB12_118:                             #   in Loop: Header=BB12_115 Depth=1
	leaq	-776(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-808(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movl	-1132(%rbp), %edi
	leaq	-940(%rbp), %rsi
	leaq	-944(%rbp), %rdx
	callq	_Z20perft_classical_testiRiS_
# %bb.119:                              #   in Loop: Header=BB12_115 Depth=1
	movl	-1132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1132(%rbp)
	jmp	.LBB12_115
.LBB12_120:
.Ltmp306:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	jmp	.LBB12_122
.LBB12_121:
.Ltmp309:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	leaq	-776(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB12_122:
	leaq	-808(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.LBB12_143
.LBB12_123:
	movl	$1, -1136(%rbp)
.LBB12_124:                             # =>This Inner Loop Header: Depth=1
	cmpl	$5, -1136(%rbp)
	jge	.LBB12_132
# %bb.125:                              #   in Loop: Header=BB12_124 Depth=1
	movl	-1136(%rbp), %esi
	leaq	-872(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1344(%rbp)               # 8-byte Spill
	callq	_ZNSt7__cxx119to_stringEi
.Ltmp298:
	leaq	.L.str.45(%rip), %rsi
	leaq	-840(%rbp), %rdi
	movq	-1344(%rbp), %rdx               # 8-byte Reload
	callq	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_
.Ltmp299:
	jmp	.LBB12_126
.LBB12_126:                             #   in Loop: Header=BB12_124 Depth=1
.Ltmp301:
	leaq	-840(%rbp), %rdi
	callq	_Z6bannerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Ltmp302:
	jmp	.LBB12_127
.LBB12_127:                             #   in Loop: Header=BB12_124 Depth=1
	leaq	-840(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-872(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movl	-1136(%rbp), %edi
	leaq	-940(%rbp), %rsi
	leaq	-944(%rbp), %rdx
	callq	_Z19perft_kiwipete_testiRiS_
# %bb.128:                              #   in Loop: Header=BB12_124 Depth=1
	movl	-1136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1136(%rbp)
	jmp	.LBB12_124
.LBB12_129:
.Ltmp300:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	jmp	.LBB12_131
.LBB12_130:
.Ltmp303:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	leaq	-840(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB12_131:
	leaq	-872(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.LBB12_143
.LBB12_132:
	movl	$1, -1140(%rbp)
.LBB12_133:                             # =>This Inner Loop Header: Depth=1
	cmpl	$6, -1140(%rbp)
	jge	.LBB12_141
# %bb.134:                              #   in Loop: Header=BB12_133 Depth=1
	movl	-1140(%rbp), %esi
	leaq	-936(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1352(%rbp)               # 8-byte Spill
	callq	_ZNSt7__cxx119to_stringEi
.Ltmp292:
	leaq	.L.str.46(%rip), %rsi
	leaq	-904(%rbp), %rdi
	movq	-1352(%rbp), %rdx               # 8-byte Reload
	callq	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_
.Ltmp293:
	jmp	.LBB12_135
.LBB12_135:                             #   in Loop: Header=BB12_133 Depth=1
.Ltmp295:
	leaq	-904(%rbp), %rdi
	callq	_Z6bannerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Ltmp296:
	jmp	.LBB12_136
.LBB12_136:                             #   in Loop: Header=BB12_133 Depth=1
	leaq	-904(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-936(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movl	-1140(%rbp), %edi
	leaq	-940(%rbp), %rsi
	leaq	-944(%rbp), %rdx
	callq	_Z17perft_tricky_testiRiS_
# %bb.137:                              #   in Loop: Header=BB12_133 Depth=1
	movl	-1140(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1140(%rbp)
	jmp	.LBB12_133
.LBB12_138:
.Ltmp294:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	jmp	.LBB12_140
.LBB12_139:
.Ltmp297:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1120(%rbp)
	movl	%edx, -1124(%rbp)
	leaq	-904(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB12_140:
	leaq	-936(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.LBB12_143
.LBB12_141:
	movl	-944(%rbp), %esi
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	callq	_ZNSolsEi@PLT
	leaq	.L.str.47(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	-940(%rbp), %esi
	movq	%rax, %rdi
	callq	_ZNSolsEi@PLT
	leaq	.L.str.48(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E@PLT
	movq	%fs:40, %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	jne	.LBB12_144
# %bb.142:
	addq	$1360, %rsp                     # imm = 0x550
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB12_143:
	.cfi_def_cfa %rbp, 16
	movq	-1120(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.LBB12_144:
	callq	__stack_chk_fail@PLT
.Lfunc_end12:
	.size	_Z9run_testsv, .Lfunc_end12-_Z9run_testsv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table12:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6    # >> Call Site 1 <<
	.uleb128 .Ltmp166-.Lfunc_begin6         #   Call between .Lfunc_begin6 and .Ltmp166
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp166-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Ltmp167-.Ltmp166              #   Call between .Ltmp166 and .Ltmp167
	.uleb128 .Ltmp168-.Lfunc_begin6         #     jumps to .Ltmp168
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp169-.Lfunc_begin6         # >> Call Site 3 <<
	.uleb128 .Ltmp170-.Ltmp169              #   Call between .Ltmp169 and .Ltmp170
	.uleb128 .Ltmp171-.Lfunc_begin6         #     jumps to .Ltmp171
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp172-.Lfunc_begin6         # >> Call Site 4 <<
	.uleb128 .Ltmp173-.Ltmp172              #   Call between .Ltmp172 and .Ltmp173
	.uleb128 .Ltmp174-.Lfunc_begin6         #     jumps to .Ltmp174
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp175-.Lfunc_begin6         # >> Call Site 5 <<
	.uleb128 .Ltmp176-.Ltmp175              #   Call between .Ltmp175 and .Ltmp176
	.uleb128 .Ltmp177-.Lfunc_begin6         #     jumps to .Ltmp177
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp178-.Lfunc_begin6         # >> Call Site 6 <<
	.uleb128 .Ltmp179-.Ltmp178              #   Call between .Ltmp178 and .Ltmp179
	.uleb128 .Ltmp180-.Lfunc_begin6         #     jumps to .Ltmp180
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp181-.Lfunc_begin6         # >> Call Site 7 <<
	.uleb128 .Ltmp182-.Ltmp181              #   Call between .Ltmp181 and .Ltmp182
	.uleb128 .Ltmp183-.Lfunc_begin6         #     jumps to .Ltmp183
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp184-.Lfunc_begin6         # >> Call Site 8 <<
	.uleb128 .Ltmp185-.Ltmp184              #   Call between .Ltmp184 and .Ltmp185
	.uleb128 .Ltmp186-.Lfunc_begin6         #     jumps to .Ltmp186
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp187-.Lfunc_begin6         # >> Call Site 9 <<
	.uleb128 .Ltmp188-.Ltmp187              #   Call between .Ltmp187 and .Ltmp188
	.uleb128 .Ltmp189-.Lfunc_begin6         #     jumps to .Ltmp189
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp190-.Lfunc_begin6         # >> Call Site 10 <<
	.uleb128 .Ltmp191-.Ltmp190              #   Call between .Ltmp190 and .Ltmp191
	.uleb128 .Ltmp192-.Lfunc_begin6         #     jumps to .Ltmp192
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp193-.Lfunc_begin6         # >> Call Site 11 <<
	.uleb128 .Ltmp194-.Ltmp193              #   Call between .Ltmp193 and .Ltmp194
	.uleb128 .Ltmp195-.Lfunc_begin6         #     jumps to .Ltmp195
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp196-.Lfunc_begin6         # >> Call Site 12 <<
	.uleb128 .Ltmp197-.Ltmp196              #   Call between .Ltmp196 and .Ltmp197
	.uleb128 .Ltmp198-.Lfunc_begin6         #     jumps to .Ltmp198
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp199-.Lfunc_begin6         # >> Call Site 13 <<
	.uleb128 .Ltmp200-.Ltmp199              #   Call between .Ltmp199 and .Ltmp200
	.uleb128 .Ltmp201-.Lfunc_begin6         #     jumps to .Ltmp201
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp202-.Lfunc_begin6         # >> Call Site 14 <<
	.uleb128 .Ltmp203-.Ltmp202              #   Call between .Ltmp202 and .Ltmp203
	.uleb128 .Ltmp204-.Lfunc_begin6         #     jumps to .Ltmp204
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp205-.Lfunc_begin6         # >> Call Site 15 <<
	.uleb128 .Ltmp206-.Ltmp205              #   Call between .Ltmp205 and .Ltmp206
	.uleb128 .Ltmp207-.Lfunc_begin6         #     jumps to .Ltmp207
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp208-.Lfunc_begin6         # >> Call Site 16 <<
	.uleb128 .Ltmp209-.Ltmp208              #   Call between .Ltmp208 and .Ltmp209
	.uleb128 .Ltmp210-.Lfunc_begin6         #     jumps to .Ltmp210
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp211-.Lfunc_begin6         # >> Call Site 17 <<
	.uleb128 .Ltmp212-.Ltmp211              #   Call between .Ltmp211 and .Ltmp212
	.uleb128 .Ltmp213-.Lfunc_begin6         #     jumps to .Ltmp213
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp214-.Lfunc_begin6         # >> Call Site 18 <<
	.uleb128 .Ltmp215-.Ltmp214              #   Call between .Ltmp214 and .Ltmp215
	.uleb128 .Ltmp216-.Lfunc_begin6         #     jumps to .Ltmp216
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp217-.Lfunc_begin6         # >> Call Site 19 <<
	.uleb128 .Ltmp218-.Ltmp217              #   Call between .Ltmp217 and .Ltmp218
	.uleb128 .Ltmp219-.Lfunc_begin6         #     jumps to .Ltmp219
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp220-.Lfunc_begin6         # >> Call Site 20 <<
	.uleb128 .Ltmp221-.Ltmp220              #   Call between .Ltmp220 and .Ltmp221
	.uleb128 .Ltmp222-.Lfunc_begin6         #     jumps to .Ltmp222
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp223-.Lfunc_begin6         # >> Call Site 21 <<
	.uleb128 .Ltmp224-.Ltmp223              #   Call between .Ltmp223 and .Ltmp224
	.uleb128 .Ltmp225-.Lfunc_begin6         #     jumps to .Ltmp225
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp226-.Lfunc_begin6         # >> Call Site 22 <<
	.uleb128 .Ltmp227-.Ltmp226              #   Call between .Ltmp226 and .Ltmp227
	.uleb128 .Ltmp228-.Lfunc_begin6         #     jumps to .Ltmp228
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp229-.Lfunc_begin6         # >> Call Site 23 <<
	.uleb128 .Ltmp230-.Ltmp229              #   Call between .Ltmp229 and .Ltmp230
	.uleb128 .Ltmp231-.Lfunc_begin6         #     jumps to .Ltmp231
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp232-.Lfunc_begin6         # >> Call Site 24 <<
	.uleb128 .Ltmp233-.Ltmp232              #   Call between .Ltmp232 and .Ltmp233
	.uleb128 .Ltmp234-.Lfunc_begin6         #     jumps to .Ltmp234
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp235-.Lfunc_begin6         # >> Call Site 25 <<
	.uleb128 .Ltmp236-.Ltmp235              #   Call between .Ltmp235 and .Ltmp236
	.uleb128 .Ltmp237-.Lfunc_begin6         #     jumps to .Ltmp237
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp238-.Lfunc_begin6         # >> Call Site 26 <<
	.uleb128 .Ltmp239-.Ltmp238              #   Call between .Ltmp238 and .Ltmp239
	.uleb128 .Ltmp240-.Lfunc_begin6         #     jumps to .Ltmp240
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp241-.Lfunc_begin6         # >> Call Site 27 <<
	.uleb128 .Ltmp242-.Ltmp241              #   Call between .Ltmp241 and .Ltmp242
	.uleb128 .Ltmp243-.Lfunc_begin6         #     jumps to .Ltmp243
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp244-.Lfunc_begin6         # >> Call Site 28 <<
	.uleb128 .Ltmp245-.Ltmp244              #   Call between .Ltmp244 and .Ltmp245
	.uleb128 .Ltmp246-.Lfunc_begin6         #     jumps to .Ltmp246
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp247-.Lfunc_begin6         # >> Call Site 29 <<
	.uleb128 .Ltmp248-.Ltmp247              #   Call between .Ltmp247 and .Ltmp248
	.uleb128 .Ltmp249-.Lfunc_begin6         #     jumps to .Ltmp249
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp250-.Lfunc_begin6         # >> Call Site 30 <<
	.uleb128 .Ltmp251-.Ltmp250              #   Call between .Ltmp250 and .Ltmp251
	.uleb128 .Ltmp252-.Lfunc_begin6         #     jumps to .Ltmp252
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp253-.Lfunc_begin6         # >> Call Site 31 <<
	.uleb128 .Ltmp254-.Ltmp253              #   Call between .Ltmp253 and .Ltmp254
	.uleb128 .Ltmp255-.Lfunc_begin6         #     jumps to .Ltmp255
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp256-.Lfunc_begin6         # >> Call Site 32 <<
	.uleb128 .Ltmp257-.Ltmp256              #   Call between .Ltmp256 and .Ltmp257
	.uleb128 .Ltmp258-.Lfunc_begin6         #     jumps to .Ltmp258
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp259-.Lfunc_begin6         # >> Call Site 33 <<
	.uleb128 .Ltmp260-.Ltmp259              #   Call between .Ltmp259 and .Ltmp260
	.uleb128 .Ltmp261-.Lfunc_begin6         #     jumps to .Ltmp261
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp262-.Lfunc_begin6         # >> Call Site 34 <<
	.uleb128 .Ltmp263-.Ltmp262              #   Call between .Ltmp262 and .Ltmp263
	.uleb128 .Ltmp264-.Lfunc_begin6         #     jumps to .Ltmp264
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp265-.Lfunc_begin6         # >> Call Site 35 <<
	.uleb128 .Ltmp266-.Ltmp265              #   Call between .Ltmp265 and .Ltmp266
	.uleb128 .Ltmp267-.Lfunc_begin6         #     jumps to .Ltmp267
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp268-.Lfunc_begin6         # >> Call Site 36 <<
	.uleb128 .Ltmp269-.Ltmp268              #   Call between .Ltmp268 and .Ltmp269
	.uleb128 .Ltmp270-.Lfunc_begin6         #     jumps to .Ltmp270
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp271-.Lfunc_begin6         # >> Call Site 37 <<
	.uleb128 .Ltmp272-.Ltmp271              #   Call between .Ltmp271 and .Ltmp272
	.uleb128 .Ltmp273-.Lfunc_begin6         #     jumps to .Ltmp273
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp274-.Lfunc_begin6         # >> Call Site 38 <<
	.uleb128 .Ltmp275-.Ltmp274              #   Call between .Ltmp274 and .Ltmp275
	.uleb128 .Ltmp276-.Lfunc_begin6         #     jumps to .Ltmp276
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp277-.Lfunc_begin6         # >> Call Site 39 <<
	.uleb128 .Ltmp278-.Ltmp277              #   Call between .Ltmp277 and .Ltmp278
	.uleb128 .Ltmp279-.Lfunc_begin6         #     jumps to .Ltmp279
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp280-.Lfunc_begin6         # >> Call Site 40 <<
	.uleb128 .Ltmp281-.Ltmp280              #   Call between .Ltmp280 and .Ltmp281
	.uleb128 .Ltmp282-.Lfunc_begin6         #     jumps to .Ltmp282
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp283-.Lfunc_begin6         # >> Call Site 41 <<
	.uleb128 .Ltmp284-.Ltmp283              #   Call between .Ltmp283 and .Ltmp284
	.uleb128 .Ltmp285-.Lfunc_begin6         #     jumps to .Ltmp285
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp286-.Lfunc_begin6         # >> Call Site 42 <<
	.uleb128 .Ltmp287-.Ltmp286              #   Call between .Ltmp286 and .Ltmp287
	.uleb128 .Ltmp288-.Lfunc_begin6         #     jumps to .Ltmp288
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp289-.Lfunc_begin6         # >> Call Site 43 <<
	.uleb128 .Ltmp290-.Ltmp289              #   Call between .Ltmp289 and .Ltmp290
	.uleb128 .Ltmp291-.Lfunc_begin6         #     jumps to .Ltmp291
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp290-.Lfunc_begin6         # >> Call Site 44 <<
	.uleb128 .Ltmp310-.Ltmp290              #   Call between .Ltmp290 and .Ltmp310
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp310-.Lfunc_begin6         # >> Call Site 45 <<
	.uleb128 .Ltmp311-.Ltmp310              #   Call between .Ltmp310 and .Ltmp311
	.uleb128 .Ltmp312-.Lfunc_begin6         #     jumps to .Ltmp312
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp313-.Lfunc_begin6         # >> Call Site 46 <<
	.uleb128 .Ltmp314-.Ltmp313              #   Call between .Ltmp313 and .Ltmp314
	.uleb128 .Ltmp315-.Lfunc_begin6         #     jumps to .Ltmp315
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp314-.Lfunc_begin6         # >> Call Site 47 <<
	.uleb128 .Ltmp304-.Ltmp314              #   Call between .Ltmp314 and .Ltmp304
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp304-.Lfunc_begin6         # >> Call Site 48 <<
	.uleb128 .Ltmp305-.Ltmp304              #   Call between .Ltmp304 and .Ltmp305
	.uleb128 .Ltmp306-.Lfunc_begin6         #     jumps to .Ltmp306
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp307-.Lfunc_begin6         # >> Call Site 49 <<
	.uleb128 .Ltmp308-.Ltmp307              #   Call between .Ltmp307 and .Ltmp308
	.uleb128 .Ltmp309-.Lfunc_begin6         #     jumps to .Ltmp309
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp308-.Lfunc_begin6         # >> Call Site 50 <<
	.uleb128 .Ltmp298-.Ltmp308              #   Call between .Ltmp308 and .Ltmp298
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp298-.Lfunc_begin6         # >> Call Site 51 <<
	.uleb128 .Ltmp299-.Ltmp298              #   Call between .Ltmp298 and .Ltmp299
	.uleb128 .Ltmp300-.Lfunc_begin6         #     jumps to .Ltmp300
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp301-.Lfunc_begin6         # >> Call Site 52 <<
	.uleb128 .Ltmp302-.Ltmp301              #   Call between .Ltmp301 and .Ltmp302
	.uleb128 .Ltmp303-.Lfunc_begin6         #     jumps to .Ltmp303
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp302-.Lfunc_begin6         # >> Call Site 53 <<
	.uleb128 .Ltmp292-.Ltmp302              #   Call between .Ltmp302 and .Ltmp292
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp292-.Lfunc_begin6         # >> Call Site 54 <<
	.uleb128 .Ltmp293-.Ltmp292              #   Call between .Ltmp292 and .Ltmp293
	.uleb128 .Ltmp294-.Lfunc_begin6         #     jumps to .Ltmp294
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp295-.Lfunc_begin6         # >> Call Site 55 <<
	.uleb128 .Ltmp296-.Ltmp295              #   Call between .Ltmp295 and .Ltmp296
	.uleb128 .Ltmp297-.Lfunc_begin6         #     jumps to .Ltmp297
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp296-.Lfunc_begin6         # >> Call Site 56 <<
	.uleb128 .Lfunc_end12-.Ltmp296          #   Call between .Ltmp296 and .Lfunc_end12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
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
.Lfunc_end13:
	.size	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_, .Lfunc_end13-_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx119to_stringEi,"axG",@progbits,_ZNSt7__cxx119to_stringEi,comdat
	.weak	_ZNSt7__cxx119to_stringEi       # -- Begin function _ZNSt7__cxx119to_stringEi
	.p2align	4, 0x90
	.type	_ZNSt7__cxx119to_stringEi,@function
_ZNSt7__cxx119to_stringEi:              # @_ZNSt7__cxx119to_stringEi
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
	je	.LBB14_2
# %bb.1:
	movl	-28(%rbp), %eax
	xorl	$-1, %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)                 # 4-byte Spill
	jmp	.LBB14_3
.LBB14_2:
	movl	-28(%rbp), %eax
	movl	%eax, -84(%rbp)                 # 4-byte Spill
.LBB14_3:
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
.Ltmp316:
	movl	$45, %edx
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movq	-96(%rbp), %rsi                 # 8-byte Reload
	movq	-104(%rbp), %rcx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EmcRKS3_@PLT
.Ltmp317:
	jmp	.LBB14_4
.LBB14_4:
	leaq	-16(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movzbl	-29(%rbp), %eax
	movl	%eax, %ecx
                                        # kill: def $ecx killed $ecx killed $rcx
	andl	$1, %ecx
	movl	%ecx, %esi
.Ltmp319:
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm@PLT
.Ltmp320:
	movq	%rax, -112(%rbp)                # 8-byte Spill
	jmp	.LBB14_5
.LBB14_5:
	movl	-40(%rbp), %esi
	movl	-36(%rbp), %edx
	movq	-112(%rbp), %rdi                # 8-byte Reload
	callq	_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_
	movb	$1, -41(%rbp)
	testb	$1, -41(%rbp)
	jne	.LBB14_9
	jmp	.LBB14_8
.LBB14_6:
.Ltmp318:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -56(%rbp)
	movl	%edx, -60(%rbp)
	leaq	-16(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB14_11
.LBB14_7:
.Ltmp321:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -56(%rbp)
	movl	%edx, -60(%rbp)
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.LBB14_11
.LBB14_8:
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB14_9:
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB14_12
# %bb.10:
	movq	-80(%rbp), %rax                 # 8-byte Reload
	addq	$112, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB14_11:
	.cfi_def_cfa %rbp, 16
	movq	-56(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.LBB14_12:
	callq	__stack_chk_fail@PLT
.Lfunc_end14:
	.size	_ZNSt7__cxx119to_stringEi, .Lfunc_end14-_ZNSt7__cxx119to_stringEi
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table14:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Ltmp316-.Lfunc_begin7         # >> Call Site 1 <<
	.uleb128 .Ltmp317-.Ltmp316              #   Call between .Ltmp316 and .Ltmp317
	.uleb128 .Ltmp318-.Lfunc_begin7         #     jumps to .Ltmp318
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp319-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Ltmp320-.Ltmp319              #   Call between .Ltmp319 and .Ltmp320
	.uleb128 .Ltmp321-.Lfunc_begin7         #     jumps to .Ltmp321
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp320-.Lfunc_begin7         # >> Call Site 3 <<
	.uleb128 .Lfunc_end14-.Ltmp320          #   Call between .Ltmp320 and .Lfunc_end14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
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
.Lfunc_end15:
	.size	_ZN5board10StateStackD2Ev, .Lfunc_end15-_ZN5board10StateStackD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIN5board5StateESaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorIN5board5StateESaIS1_EED2Ev,comdat
	.weak	_ZNSt6vectorIN5board5StateESaIS1_EED2Ev # -- Begin function _ZNSt6vectorIN5board5StateESaIS1_EED2Ev
	.p2align	4, 0x90
	.type	_ZNSt6vectorIN5board5StateESaIS1_EED2Ev,@function
_ZNSt6vectorIN5board5StateESaIS1_EED2Ev: # @_ZNSt6vectorIN5board5StateESaIS1_EED2Ev
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception8
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
.Ltmp322:
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	-48(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZSt8_DestroyIPN5board5StateES1_EvT_S3_RSaIT0_E
.Ltmp323:
	jmp	.LBB16_1
.LBB16_1:
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB16_2:
	.cfi_def_cfa %rbp, 16
.Ltmp324:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev
# %bb.3:
	movq	-16(%rbp), %rdi
	callq	__clang_call_terminate
.Lfunc_end16:
	.size	_ZNSt6vectorIN5board5StateESaIS1_EED2Ev, .Lfunc_end16-_ZNSt6vectorIN5board5StateESaIS1_EED2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table16:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	156                             # @TType Encoding = indirect pcrel sdata8
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Ltmp322-.Lfunc_begin8         # >> Call Site 1 <<
	.uleb128 .Ltmp323-.Ltmp322              #   Call between .Ltmp322 and .Ltmp323
	.uleb128 .Ltmp324-.Lfunc_begin8         #     jumps to .Ltmp324
	.byte	1                               #   On action: 1
.Lcst_end8:
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
.Lfunc_end17:
	.size	_ZSt8_DestroyIPN5board5StateES1_EvT_S3_RSaIT0_E, .Lfunc_end17-_ZSt8_DestroyIPN5board5StateES1_EvT_S3_RSaIT0_E
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
.Lfunc_end18:
	.size	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv, .Lfunc_end18-_ZNSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev,comdat
	.weak	_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev # -- Begin function _ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev,@function
_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev: # @_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception9
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
.Ltmp325:
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE13_M_deallocateEPS1_m
.Ltmp326:
	jmp	.LBB19_1
.LBB19_1:
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implD2Ev
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB19_2:
	.cfi_def_cfa %rbp, 16
.Ltmp327:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implD2Ev
# %bb.3:
	movq	-16(%rbp), %rdi
	callq	__clang_call_terminate
.Lfunc_end19:
	.size	_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev, .Lfunc_end19-_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table19:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	156                             # @TType Encoding = indirect pcrel sdata8
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Ltmp325-.Lfunc_begin9         # >> Call Site 1 <<
	.uleb128 .Ltmp326-.Ltmp325              #   Call between .Ltmp325 and .Ltmp326
	.uleb128 .Ltmp327-.Lfunc_begin9         #     jumps to .Ltmp327
	.byte	1                               #   On action: 1
.Lcst_end9:
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
.Lfunc_end20:
	.size	__clang_call_terminate, .Lfunc_end20-__clang_call_terminate
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
.Lfunc_end21:
	.size	_ZSt8_DestroyIPN5board5StateEEvT_S3_, .Lfunc_end21-_ZSt8_DestroyIPN5board5StateEEvT_S3_
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
.Lfunc_end22:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPN5board5StateEEEvT_S5_, .Lfunc_end22-_ZNSt12_Destroy_auxILb1EE9__destroyIPN5board5StateEEEvT_S5_
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
	je	.LBB23_2
# %bb.1:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	_ZNSt16allocator_traitsISaIN5board5StateEEE10deallocateERS2_PS1_m
.LBB23_2:
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end23:
	.size	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE13_M_deallocateEPS1_m, .Lfunc_end23-_ZNSt12_Vector_baseIN5board5StateESaIS1_EE13_M_deallocateEPS1_m
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
.Lfunc_end24:
	.size	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implD2Ev, .Lfunc_end24-_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implD2Ev
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
.Lfunc_end25:
	.size	_ZNSt16allocator_traitsISaIN5board5StateEEE10deallocateERS2_PS1_m, .Lfunc_end25-_ZNSt16allocator_traitsISaIN5board5StateEEE10deallocateERS2_PS1_m
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
.Lfunc_end26:
	.size	_ZN9__gnu_cxx13new_allocatorIN5board5StateEE10deallocateEPS2_m, .Lfunc_end26-_ZN9__gnu_cxx13new_allocatorIN5board5StateEE10deallocateEPS2_m
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
.Lfunc_end27:
	.size	_ZNSaIN5board5StateEED2Ev, .Lfunc_end27-_ZNSaIN5board5StateEED2Ev
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
.Lfunc_end28:
	.size	_ZN9__gnu_cxx13new_allocatorIN5board5StateEED2Ev, .Lfunc_end28-_ZN9__gnu_cxx13new_allocatorIN5board5StateEED2Ev
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
.LBB29_1:                               # =>This Inner Loop Header: Depth=1
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jae	.LBB29_3
# %bb.2:
	movl	-16(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB29_10
.LBB29_3:                               #   in Loop: Header=BB29_1 Depth=1
	movl	-8(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jae	.LBB29_5
# %bb.4:
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB29_10
.LBB29_5:                               #   in Loop: Header=BB29_1 Depth=1
	movl	-8(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jae	.LBB29_7
# %bb.6:
	movl	-16(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB29_10
.LBB29_7:                               #   in Loop: Header=BB29_1 Depth=1
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	cmpq	-32(%rbp), %rcx
	jae	.LBB29_9
# %bb.8:
	movl	-16(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB29_10
.LBB29_9:                               #   in Loop: Header=BB29_1 Depth=1
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
	jmp	.LBB29_1
.LBB29_10:
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end29:
	.size	_ZNSt8__detail14__to_chars_lenIjEEjT_i, .Lfunc_end29-_ZNSt8__detail14__to_chars_lenIjEEjT_i
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
.LBB30_1:                               # =>This Inner Loop Header: Depth=1
	cmpl	$100, -16(%rbp)
	jb	.LBB30_3
# %bb.2:                                #   in Loop: Header=BB30_1 Depth=1
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
	jmp	.LBB30_1
.LBB30_3:
	cmpl	$10, -16(%rbp)
	jb	.LBB30_5
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
	jmp	.LBB30_6
.LBB30_5:
	movl	-16(%rbp), %eax
	addl	$48, %eax
                                        # kill: def $al killed $al killed $eax
	movq	-8(%rbp), %rcx
	movb	%al, (%rcx)
.LBB30_6:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end30:
	.size	_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_, .Lfunc_end30-_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_
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
.Lfunc_end31:
	.size	_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_, .Lfunc_end31-_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_
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
.Lfunc_end32:
	.size	_GLOBAL__sub_I_tests.cpp, .Lfunc_end32-_GLOBAL__sub_I_tests.cpp
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
	.asciz	"\033[31m"
	.size	.L.str.2, 6

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Expected "
	.size	.L.str.3, 10

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	", got "
	.size	.L.str.4, 7

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"\033[32m"
	.size	.L.str.5, 6

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"OK"
	.size	.L.str.6, 3

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"\033[0m"
	.size	.L.str.7, 5

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"is check?"
	.size	.L.str.8, 10

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"count legal"
	.size	.L.str.9, 12

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"is mate?"
	.size	.L.str.10, 9

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"r3k2r/Pppp1ppp/1b3nbN/nP6/BBP1P3/q4N2/Pp1P2PP/R2Q1RK1 w kq - 0 1"
	.size	.L.str.11, 65

	.type	_ZL17perft_test4_nodes,@object  # @_ZL17perft_test4_nodes
	.section	.rodata,"a",@progbits
	.p2align	4
_ZL17perft_test4_nodes:
	.long	0                               # 0x0
	.long	6                               # 0x6
	.long	264                             # 0x108
	.long	9467                            # 0x24fb
	.long	422333                          # 0x671bd
	.size	_ZL17perft_test4_nodes, 20

	.type	.L.str.12,@object               # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"node count"
	.size	.L.str.12, 11

	.type	_ZL17perft_test4_mates,@object  # @_ZL17perft_test4_mates
	.section	.rodata,"a",@progbits
	.p2align	4
_ZL17perft_test4_mates:
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	22                              # 0x16
	.long	5                               # 0x5
	.size	_ZL17perft_test4_mates, 20

	.type	.L.str.13,@object               # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"mate count"
	.size	.L.str.13, 11

	.type	_ZL22perft_test4_promotions,@object # @_ZL22perft_test4_promotions
	.section	.rodata,"a",@progbits
	.p2align	4
_ZL22perft_test4_promotions:
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	48                              # 0x30
	.long	120                             # 0x78
	.long	60032                           # 0xea80
	.size	_ZL22perft_test4_promotions, 20

	.type	.L.str.14,@object               # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"promo count"
	.size	.L.str.14, 12

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"rnbq1k1r/pp1Pbppp/2p5/8/2B5/8/PPP1NnPP/RNBQK2R w KQ - 1 8"
	.size	.L.str.15, 58

	.type	_ZL18perft_tricky_nodes,@object # @_ZL18perft_tricky_nodes
	.section	.rodata,"a",@progbits
	.p2align	4
_ZL18perft_tricky_nodes:
	.long	0                               # 0x0
	.long	44                              # 0x2c
	.long	1486                            # 0x5ce
	.long	62379                           # 0xf3ab
	.long	2103487                         # 0x2018bf
	.long	89941194                        # 0x55c64ca
	.size	_ZL18perft_tricky_nodes, 24

	.type	.L.str.16,@object               # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"r3k2r/p1ppqpb1/bn2pnp1/3PN3/1p2P3/2N2Q1p/PPPBBPPP/R3K2R w KQkq - "
	.size	.L.str.16, 66

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

	.type	_ZL17perft_kp_captures,@object  # @_ZL17perft_kp_captures
	.p2align	4
_ZL17perft_kp_captures:
	.long	0                               # 0x0
	.long	8                               # 0x8
	.long	351                             # 0x15f
	.long	17102                           # 0x42ce
	.long	757163                          # 0xb8dab
	.long	35043416                        # 0x216b858
	.size	_ZL17perft_kp_captures, 24

	.type	.L.str.17,@object               # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"capture count"
	.size	.L.str.17, 14

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

	.type	.L.str.18,@object               # @.str.18
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.18:
	.asciz	"check count"
	.size	.L.str.18, 12

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

	.type	.L.str.19,@object               # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"en passant count"
	.size	.L.str.19, 17

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

	.type	.L.str.20,@object               # @.str.20
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.20:
	.asciz	"castle count"
	.size	.L.str.20, 13

	.type	_ZL14perft_kp_mates,@object     # @_ZL14perft_kp_mates
	.section	.rodata,"a",@progbits
	.p2align	4
_ZL14perft_kp_mates:
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	43                              # 0x2b
	.long	30171                           # 0x75db
	.size	_ZL14perft_kp_mates, 24

	.type	_ZL15perft_kp_promos,@object    # @_ZL15perft_kp_promos
	.p2align	4
_ZL15perft_kp_promos:
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	15172                           # 0x3b44
	.long	8392                            # 0x20c8
	.size	_ZL15perft_kp_promos, 24

	.type	_ZL21perft_classical_nodes,@object # @_ZL21perft_classical_nodes
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

	.type	_ZL21perft_classical_mates,@object # @_ZL21perft_classical_mates
	.p2align	4
_ZL21perft_classical_mates:
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	8                               # 0x8
	.long	347                             # 0x15b
	.size	_ZL21perft_classical_mates, 24

	.type	.L.str.21,@object               # @.str.21
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.21:
	.asciz	"-----"
	.size	.L.str.21, 6

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"Running test suite."
	.size	.L.str.22, 20

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"\n"
	.size	.L.str.23, 2

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"Load FEN Basic Test"
	.size	.L.str.24, 20

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"r1b4k/pp4p1/3n1nqp/3B4/2P2p2/2Q4P/PB2PP2/R5RK b - - 2 30"
	.size	.L.str.25, 57

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"rn1qk2r/pp3ppp/4pn2/3p4/8/1P1P2P1/PBPbQP1P/2KR1BNR w kq - 0 11"
	.size	.L.str.26, 63

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"r1b1kbnr/pppp1Npp/8/8/4q3/5n2/PPPPBP1P/RNBQKR2 w Qkq - 2 8"
	.size	.L.str.27, 59

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"rnbqkbnr/pppp1ppp/8/4p3/8/5N2/PPPPPPPP/RNBQKB1R w KQkq - 0 2"
	.size	.L.str.28, 61

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"rnbqkbnr/pppp1ppp/8/4p3/3P4/8/PPP1PPPP/RNBQKBNR w KQkq - 0 2"
	.size	.L.str.29, 61

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"rnbqkbnr/ppppppp1/8/7p/P7/8/1PPPPPPP/RNBQKBNR w KQkq - 0 2"
	.size	.L.str.30, 59

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"rnbqkbnr/ppp1pppp/8/3p4/8/5N2/PPPPPPPP/RNBQKB1R w KQkq - 0 2"
	.size	.L.str.31, 61

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"rnbqkbnr/pppppp1p/6p1/8/8/1P6/P1PPPPPP/RNBQKBNR w KQkq - 0 2"
	.size	.L.str.32, 61

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"rnbqkbnr/pp1ppppp/8/2p5/6P1/8/PPPPPP1P/RNBQKBNR w KQkq - 0 2"
	.size	.L.str.33, 61

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"rnbqkbnr/1p1ppp2/p6p/2pP2p1/4P3/P7/1PP2PPP/RNBQKBNR w KQkq c6 0 5"
	.size	.L.str.34, 66

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"Checkmate tests"
	.size	.L.str.35, 16

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"rnbqkbnr/ppppp1pp/8/5p1Q/4P3/8/PPPP1PPP/RNB1KBNR b KQkq - 1 2"
	.size	.L.str.36, 62

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"rnb1kbnr/pppp1ppp/8/4p3/5PPq/8/PPPPP2P/RNBQKBNR w KQkq - 1 3"
	.size	.L.str.37, 61

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"kr6/ppN5/8/8/8/6P1/3K4/8 b - - 0 1"
	.size	.L.str.38, 35

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"r2qk2r/p1pp1Qb1/bn1Pp1p1/4N3/1p2P1n1/P1N4p/1PPBBPPP/R3K2R b KQkq - 0 3"
	.size	.L.str.39, 71

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"3rk1nr/p1ppqQb1/Bn2p1p1/1N1PN3/1p2P3/7p/PPPB1PPP/R3K2R b KQk - 0 3"
	.size	.L.str.40, 67

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"3r1knr/p1Npqpb1/Bn2p1N1/3P4/1p2P3/5Q1p/PPPB1PPP/R3K2R b KQ - 0 4"
	.size	.L.str.41, 65

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"r2qk2r/p1pp1Qb1/bn2p1p1/3PN3/1p2P3/2N4p/PPPBBPPP/R3K2R b KQkq - 0 2"
	.size	.L.str.42, 68

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"PERFT 4 depth="
	.size	.L.str.43, 15

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"PERFT classical depth="
	.size	.L.str.44, 23

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"PERFT kiwipete depth="
	.size	.L.str.45, 22

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"PERFT tricky depth="
	.size	.L.str.46, 20

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"/"
	.size	.L.str.47, 2

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	" tests passed."
	.size	.L.str.48, 15

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
	.addrsig_sym _Z18position_mate_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbRiS7_
	.addrsig_sym _ZN5Board6statusEv
	.addrsig_sym _Z11perft4_testiRiS_
	.addrsig_sym _ZN5perft5perftER5BoardiRNS_7CounterE
	.addrsig_sym _Z17perft_tricky_testiRiS_
	.addrsig_sym _Z19perft_kiwipete_testiRiS_
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
	.addrsig_sym _ZL17perft_test4_nodes
	.addrsig_sym _ZL17perft_test4_mates
	.addrsig_sym _ZL22perft_test4_promotions
	.addrsig_sym _ZL18perft_tricky_nodes
	.addrsig_sym _ZL14perft_kp_nodes
	.addrsig_sym _ZL17perft_kp_captures
	.addrsig_sym _ZL15perft_kp_checks
	.addrsig_sym _ZL12perft_kp_eps
	.addrsig_sym _ZL16perft_kp_castles
	.addrsig_sym _ZL14perft_kp_mates
	.addrsig_sym _ZL15perft_kp_promos
	.addrsig_sym _ZL21perft_classical_nodes
	.addrsig_sym _ZL24perft_classical_captures
	.addrsig_sym _ZL22perft_classical_checks
	.addrsig_sym _ZL21perft_classical_mates
	.addrsig_sym _ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits
