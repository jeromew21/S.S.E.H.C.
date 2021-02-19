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
	.globl	_Z17perft_tricky_testiRiS_      # -- Begin function _Z17perft_tricky_testiRiS_
	.p2align	4, 0x90
	.type	_Z17perft_tricky_testiRiS_,@function
_Z17perft_tricky_testiRiS_:             # @_Z17perft_tricky_testiRiS_
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
	subq	$1456, %rsp                     # imm = 0x5B0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movl	%edi, -1396(%rbp)
	movq	%rsi, -1408(%rbp)
	movq	%rdx, -1416(%rbp)
	leaq	-1280(%rbp), %rdi
	callq	_ZN5BoardC1Ev@PLT
.Ltmp38:
	leaq	-1376(%rbp), %rdi
	callq	_ZN5perft7CounterC2Ev
.Ltmp39:
	jmp	.LBB6_1
.LBB6_1:
	leaq	-1384(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1440(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp40:
	leaq	.L.str.11(%rip), %rsi
	leaq	-1312(%rbp), %rdi
	movq	-1440(%rbp), %rdx               # 8-byte Reload
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
	leaq	-1384(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movl	-1396(%rbp), %esi
.Ltmp46:
	leaq	-1280(%rbp), %rdi
	leaq	-1376(%rbp), %rdx
	callq	_ZN5perft5perftER5BoardiRNS_7CounterE@PLT
.Ltmp47:
	jmp	.LBB6_4
.LBB6_4:
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
.Ltmp49:
	leaq	.L.str.12(%rip), %rsi
	leaq	-1344(%rbp), %rdi
	movq	-1456(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp50:
	jmp	.LBB6_5
.LBB6_5:
	movq	-1408(%rbp), %rcx
	movq	-1416(%rbp), %r8
.Ltmp52:
	leaq	-1344(%rbp), %rdx
	movl	-1444(%rbp), %edi               # 4-byte Reload
	movl	-1448(%rbp), %esi               # 4-byte Reload
	callq	_Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_
.Ltmp53:
	jmp	.LBB6_6
.LBB6_6:
	leaq	-1344(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1392(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-1280(%rbp), %rdi
	callq	_ZN5BoardD2Ev
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB6_17
# %bb.7:
	addq	$1456, %rsp                     # imm = 0x5B0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB6_8:
	.cfi_def_cfa %rbp, 16
.Ltmp48:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1424(%rbp)
	movl	%edx, -1428(%rbp)
	jmp	.LBB6_15
.LBB6_9:
.Ltmp42:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1424(%rbp)
	movl	%edx, -1428(%rbp)
	jmp	.LBB6_11
.LBB6_10:
.Ltmp45:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1424(%rbp)
	movl	%edx, -1428(%rbp)
	leaq	-1312(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB6_11:
	leaq	-1384(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB6_15
.LBB6_12:
.Ltmp51:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1424(%rbp)
	movl	%edx, -1428(%rbp)
	jmp	.LBB6_14
.LBB6_13:
.Ltmp54:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1424(%rbp)
	movl	%edx, -1428(%rbp)
	leaq	-1344(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB6_14:
	leaq	-1392(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
.LBB6_15:
	leaq	-1280(%rbp), %rdi
	callq	_ZN5BoardD2Ev
# %bb.16:
	movq	-1424(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.LBB6_17:
	callq	__stack_chk_fail@PLT
.Lfunc_end6:
	.size	_Z17perft_tricky_testiRiS_, .Lfunc_end6-_Z17perft_tricky_testiRiS_
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
	.uleb128 .Ltmp53-.Lfunc_begin2          # >> Call Site 8 <<
	.uleb128 .Lfunc_end6-.Ltmp53            #   Call between .Ltmp53 and .Lfunc_end6
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
	.globl	_Z19perft_kiwipete_testiRiS_    # -- Begin function _Z19perft_kiwipete_testiRiS_
	.p2align	4, 0x90
	.type	_Z19perft_kiwipete_testiRiS_,@function
_Z19perft_kiwipete_testiRiS_:           # @_Z19perft_kiwipete_testiRiS_
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
	subq	$1744, %rsp                     # imm = 0x6D0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movl	%edi, -1596(%rbp)
	movq	%rsi, -1608(%rbp)
	movq	%rdx, -1616(%rbp)
	leaq	-1280(%rbp), %rdi
	callq	_ZN5BoardC1Ev@PLT
.Ltmp55:
	leaq	-1536(%rbp), %rdi
	callq	_ZN5perft7CounterC2Ev
.Ltmp56:
	jmp	.LBB8_1
.LBB8_1:
	leaq	-1544(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1640(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp57:
	leaq	.L.str.13(%rip), %rsi
	leaq	-1312(%rbp), %rdi
	movq	-1640(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp58:
	jmp	.LBB8_2
.LBB8_2:
.Ltmp60:
	leaq	-1280(%rbp), %rdi
	leaq	-1312(%rbp), %rsi
	callq	_ZN5Board12LoadPositionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.Ltmp61:
	jmp	.LBB8_3
.LBB8_3:
	leaq	-1312(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1544(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movl	-1596(%rbp), %esi
.Ltmp63:
	leaq	-1280(%rbp), %rdi
	leaq	-1536(%rbp), %rdx
	callq	_ZN5perft5perftER5BoardiRNS_7CounterE@PLT
.Ltmp64:
	jmp	.LBB8_4
.LBB8_4:
	movslq	-1596(%rbp), %rax
	leaq	_ZL14perft_kp_nodes(%rip), %rcx
	movl	(%rcx,%rax,4), %edi
	movl	-1536(%rbp), %esi
	leaq	-1552(%rbp), %rax
	movl	%edi, -1644(%rbp)               # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -1648(%rbp)               # 4-byte Spill
	movq	%rax, -1656(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp66:
	leaq	.L.str.12(%rip), %rsi
	leaq	-1344(%rbp), %rdi
	movq	-1656(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp67:
	jmp	.LBB8_5
.LBB8_5:
	movq	-1608(%rbp), %rcx
	movq	-1616(%rbp), %r8
.Ltmp69:
	leaq	-1344(%rbp), %rdx
	movl	-1644(%rbp), %edi               # 4-byte Reload
	movl	-1648(%rbp), %esi               # 4-byte Reload
	callq	_Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_
.Ltmp70:
	jmp	.LBB8_6
.LBB8_6:
	leaq	-1344(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1552(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movslq	-1596(%rbp), %rax
	leaq	_ZL17perft_kp_captures(%rip), %rcx
	movl	(%rcx,%rax,4), %edi
	movl	-1532(%rbp), %esi
	leaq	-1560(%rbp), %rax
	movl	%edi, -1660(%rbp)               # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -1664(%rbp)               # 4-byte Spill
	movq	%rax, -1672(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp72:
	leaq	.L.str.14(%rip), %rsi
	leaq	-1376(%rbp), %rdi
	movq	-1672(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp73:
	jmp	.LBB8_7
.LBB8_7:
	movq	-1608(%rbp), %rcx
	movq	-1616(%rbp), %r8
.Ltmp75:
	leaq	-1376(%rbp), %rdx
	movl	-1660(%rbp), %edi               # 4-byte Reload
	movl	-1664(%rbp), %esi               # 4-byte Reload
	callq	_Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_
.Ltmp76:
	jmp	.LBB8_8
.LBB8_8:
	leaq	-1376(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1560(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movslq	-1596(%rbp), %rax
	leaq	_ZL15perft_kp_checks(%rip), %rcx
	movl	(%rcx,%rax,4), %edi
	movl	-1516(%rbp), %esi
	leaq	-1568(%rbp), %rax
	movl	%edi, -1676(%rbp)               # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -1680(%rbp)               # 4-byte Spill
	movq	%rax, -1688(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp78:
	leaq	.L.str.15(%rip), %rsi
	leaq	-1408(%rbp), %rdi
	movq	-1688(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp79:
	jmp	.LBB8_9
.LBB8_9:
	movq	-1608(%rbp), %rcx
	movq	-1616(%rbp), %r8
.Ltmp81:
	leaq	-1408(%rbp), %rdx
	movl	-1676(%rbp), %edi               # 4-byte Reload
	movl	-1680(%rbp), %esi               # 4-byte Reload
	callq	_Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_
.Ltmp82:
	jmp	.LBB8_10
.LBB8_10:
	leaq	-1408(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1568(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movslq	-1596(%rbp), %rax
	leaq	_ZL12perft_kp_eps(%rip), %rcx
	movl	(%rcx,%rax,4), %edi
	movl	-1528(%rbp), %esi
	leaq	-1576(%rbp), %rax
	movl	%edi, -1692(%rbp)               # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -1696(%rbp)               # 4-byte Spill
	movq	%rax, -1704(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp84:
	leaq	.L.str.16(%rip), %rsi
	leaq	-1440(%rbp), %rdi
	movq	-1704(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp85:
	jmp	.LBB8_11
.LBB8_11:
	movq	-1608(%rbp), %rcx
	movq	-1616(%rbp), %r8
.Ltmp87:
	leaq	-1440(%rbp), %rdx
	movl	-1692(%rbp), %edi               # 4-byte Reload
	movl	-1696(%rbp), %esi               # 4-byte Reload
	callq	_Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_
.Ltmp88:
	jmp	.LBB8_12
.LBB8_12:
	leaq	-1440(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1576(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movslq	-1596(%rbp), %rax
	leaq	_ZL16perft_kp_castles(%rip), %rcx
	movl	(%rcx,%rax,4), %edi
	movl	-1524(%rbp), %esi
	leaq	-1584(%rbp), %rax
	movl	%edi, -1708(%rbp)               # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -1712(%rbp)               # 4-byte Spill
	movq	%rax, -1720(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp90:
	leaq	.L.str.17(%rip), %rsi
	leaq	-1472(%rbp), %rdi
	movq	-1720(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp91:
	jmp	.LBB8_13
.LBB8_13:
	movq	-1608(%rbp), %rcx
	movq	-1616(%rbp), %r8
.Ltmp93:
	leaq	-1472(%rbp), %rdx
	movl	-1708(%rbp), %edi               # 4-byte Reload
	movl	-1712(%rbp), %esi               # 4-byte Reload
	callq	_Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_
.Ltmp94:
	jmp	.LBB8_14
.LBB8_14:
	leaq	-1472(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1584(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movslq	-1596(%rbp), %rax
	leaq	_ZL14perft_kp_mates(%rip), %rcx
	movl	(%rcx,%rax,4), %edi
	movl	-1512(%rbp), %esi
	leaq	-1592(%rbp), %rax
	movl	%edi, -1724(%rbp)               # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -1728(%rbp)               # 4-byte Spill
	movq	%rax, -1736(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp96:
	leaq	.L.str.18(%rip), %rsi
	leaq	-1504(%rbp), %rdi
	movq	-1736(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp97:
	jmp	.LBB8_15
.LBB8_15:
	movq	-1608(%rbp), %rcx
	movq	-1616(%rbp), %r8
.Ltmp99:
	leaq	-1504(%rbp), %rdx
	movl	-1724(%rbp), %edi               # 4-byte Reload
	movl	-1728(%rbp), %esi               # 4-byte Reload
	callq	_Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_
.Ltmp100:
	jmp	.LBB8_16
.LBB8_16:
	leaq	-1504(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1592(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-1280(%rbp), %rdi
	callq	_ZN5BoardD2Ev
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB8_42
# %bb.17:
	addq	$1744, %rsp                     # imm = 0x6D0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB8_18:
	.cfi_def_cfa %rbp, 16
.Ltmp65:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1624(%rbp)
	movl	%edx, -1628(%rbp)
	jmp	.LBB8_40
.LBB8_19:
.Ltmp59:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1624(%rbp)
	movl	%edx, -1628(%rbp)
	jmp	.LBB8_21
.LBB8_20:
.Ltmp62:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1624(%rbp)
	movl	%edx, -1628(%rbp)
	leaq	-1312(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB8_21:
	leaq	-1544(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB8_40
.LBB8_22:
.Ltmp68:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1624(%rbp)
	movl	%edx, -1628(%rbp)
	jmp	.LBB8_24
.LBB8_23:
.Ltmp71:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1624(%rbp)
	movl	%edx, -1628(%rbp)
	leaq	-1344(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB8_24:
	leaq	-1552(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB8_40
.LBB8_25:
.Ltmp74:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1624(%rbp)
	movl	%edx, -1628(%rbp)
	jmp	.LBB8_27
.LBB8_26:
.Ltmp77:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1624(%rbp)
	movl	%edx, -1628(%rbp)
	leaq	-1376(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB8_27:
	leaq	-1560(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB8_40
.LBB8_28:
.Ltmp80:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1624(%rbp)
	movl	%edx, -1628(%rbp)
	jmp	.LBB8_30
.LBB8_29:
.Ltmp83:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1624(%rbp)
	movl	%edx, -1628(%rbp)
	leaq	-1408(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB8_30:
	leaq	-1568(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB8_40
.LBB8_31:
.Ltmp86:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1624(%rbp)
	movl	%edx, -1628(%rbp)
	jmp	.LBB8_33
.LBB8_32:
.Ltmp89:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1624(%rbp)
	movl	%edx, -1628(%rbp)
	leaq	-1440(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB8_33:
	leaq	-1576(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB8_40
.LBB8_34:
.Ltmp92:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1624(%rbp)
	movl	%edx, -1628(%rbp)
	jmp	.LBB8_36
.LBB8_35:
.Ltmp95:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1624(%rbp)
	movl	%edx, -1628(%rbp)
	leaq	-1472(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB8_36:
	leaq	-1584(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB8_40
.LBB8_37:
.Ltmp98:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1624(%rbp)
	movl	%edx, -1628(%rbp)
	jmp	.LBB8_39
.LBB8_38:
.Ltmp101:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1624(%rbp)
	movl	%edx, -1628(%rbp)
	leaq	-1504(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB8_39:
	leaq	-1592(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
.LBB8_40:
	leaq	-1280(%rbp), %rdi
	callq	_ZN5BoardD2Ev
# %bb.41:
	movq	-1624(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.LBB8_42:
	callq	__stack_chk_fail@PLT
.Lfunc_end8:
	.size	_Z19perft_kiwipete_testiRiS_, .Lfunc_end8-_Z19perft_kiwipete_testiRiS_
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
	.uleb128 .Ltmp55-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp55
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp55-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp56-.Ltmp55                #   Call between .Ltmp55 and .Ltmp56
	.uleb128 .Ltmp65-.Lfunc_begin3          #     jumps to .Ltmp65
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp57-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp58-.Ltmp57                #   Call between .Ltmp57 and .Ltmp58
	.uleb128 .Ltmp59-.Lfunc_begin3          #     jumps to .Ltmp59
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp60-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp61-.Ltmp60                #   Call between .Ltmp60 and .Ltmp61
	.uleb128 .Ltmp62-.Lfunc_begin3          #     jumps to .Ltmp62
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp63-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Ltmp64-.Ltmp63                #   Call between .Ltmp63 and .Ltmp64
	.uleb128 .Ltmp65-.Lfunc_begin3          #     jumps to .Ltmp65
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp66-.Lfunc_begin3          # >> Call Site 6 <<
	.uleb128 .Ltmp67-.Ltmp66                #   Call between .Ltmp66 and .Ltmp67
	.uleb128 .Ltmp68-.Lfunc_begin3          #     jumps to .Ltmp68
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp69-.Lfunc_begin3          # >> Call Site 7 <<
	.uleb128 .Ltmp70-.Ltmp69                #   Call between .Ltmp69 and .Ltmp70
	.uleb128 .Ltmp71-.Lfunc_begin3          #     jumps to .Ltmp71
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp72-.Lfunc_begin3          # >> Call Site 8 <<
	.uleb128 .Ltmp73-.Ltmp72                #   Call between .Ltmp72 and .Ltmp73
	.uleb128 .Ltmp74-.Lfunc_begin3          #     jumps to .Ltmp74
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp75-.Lfunc_begin3          # >> Call Site 9 <<
	.uleb128 .Ltmp76-.Ltmp75                #   Call between .Ltmp75 and .Ltmp76
	.uleb128 .Ltmp77-.Lfunc_begin3          #     jumps to .Ltmp77
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp78-.Lfunc_begin3          # >> Call Site 10 <<
	.uleb128 .Ltmp79-.Ltmp78                #   Call between .Ltmp78 and .Ltmp79
	.uleb128 .Ltmp80-.Lfunc_begin3          #     jumps to .Ltmp80
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp81-.Lfunc_begin3          # >> Call Site 11 <<
	.uleb128 .Ltmp82-.Ltmp81                #   Call between .Ltmp81 and .Ltmp82
	.uleb128 .Ltmp83-.Lfunc_begin3          #     jumps to .Ltmp83
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp84-.Lfunc_begin3          # >> Call Site 12 <<
	.uleb128 .Ltmp85-.Ltmp84                #   Call between .Ltmp84 and .Ltmp85
	.uleb128 .Ltmp86-.Lfunc_begin3          #     jumps to .Ltmp86
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp87-.Lfunc_begin3          # >> Call Site 13 <<
	.uleb128 .Ltmp88-.Ltmp87                #   Call between .Ltmp87 and .Ltmp88
	.uleb128 .Ltmp89-.Lfunc_begin3          #     jumps to .Ltmp89
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp90-.Lfunc_begin3          # >> Call Site 14 <<
	.uleb128 .Ltmp91-.Ltmp90                #   Call between .Ltmp90 and .Ltmp91
	.uleb128 .Ltmp92-.Lfunc_begin3          #     jumps to .Ltmp92
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp93-.Lfunc_begin3          # >> Call Site 15 <<
	.uleb128 .Ltmp94-.Ltmp93                #   Call between .Ltmp93 and .Ltmp94
	.uleb128 .Ltmp95-.Lfunc_begin3          #     jumps to .Ltmp95
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp96-.Lfunc_begin3          # >> Call Site 16 <<
	.uleb128 .Ltmp97-.Ltmp96                #   Call between .Ltmp96 and .Ltmp97
	.uleb128 .Ltmp98-.Lfunc_begin3          #     jumps to .Ltmp98
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp99-.Lfunc_begin3          # >> Call Site 17 <<
	.uleb128 .Ltmp100-.Ltmp99               #   Call between .Ltmp99 and .Ltmp100
	.uleb128 .Ltmp101-.Lfunc_begin3         #     jumps to .Ltmp101
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp100-.Lfunc_begin3         # >> Call Site 18 <<
	.uleb128 .Lfunc_end8-.Ltmp100           #   Call between .Ltmp100 and .Lfunc_end8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2
                                        # -- End function
	.text
	.globl	_Z20perft_classical_testiRiS_   # -- Begin function _Z20perft_classical_testiRiS_
	.p2align	4, 0x90
	.type	_Z20perft_classical_testiRiS_,@function
_Z20perft_classical_testiRiS_:          # @_Z20perft_classical_testiRiS_
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
	subq	$1584, %rsp                     # imm = 0x630
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movl	%edi, -1476(%rbp)
	movq	%rsi, -1488(%rbp)
	movq	%rdx, -1496(%rbp)
	leaq	-1280(%rbp), %rdi
	callq	_ZN5BoardC1Ev@PLT
.Ltmp102:
	leaq	-1440(%rbp), %rdi
	callq	_ZN5perft7CounterC2Ev
.Ltmp103:
	jmp	.LBB9_1
.LBB9_1:
	movl	-1476(%rbp), %esi
.Ltmp104:
	leaq	-1280(%rbp), %rdi
	leaq	-1440(%rbp), %rdx
	callq	_ZN5perft5perftER5BoardiRNS_7CounterE@PLT
.Ltmp105:
	jmp	.LBB9_2
.LBB9_2:
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
.Ltmp107:
	leaq	.L.str.12(%rip), %rsi
	leaq	-1312(%rbp), %rdi
	movq	-1528(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp108:
	jmp	.LBB9_3
.LBB9_3:
	movq	-1488(%rbp), %rcx
	movq	-1496(%rbp), %r8
.Ltmp110:
	leaq	-1312(%rbp), %rdx
	movl	-1512(%rbp), %edi               # 4-byte Reload
	movl	-1516(%rbp), %esi               # 4-byte Reload
	callq	_Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_
.Ltmp111:
	jmp	.LBB9_4
.LBB9_4:
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
.Ltmp113:
	leaq	.L.str.14(%rip), %rsi
	leaq	-1344(%rbp), %rdi
	movq	-1544(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp114:
	jmp	.LBB9_5
.LBB9_5:
	movq	-1488(%rbp), %rcx
	movq	-1496(%rbp), %r8
.Ltmp116:
	leaq	-1344(%rbp), %rdx
	movl	-1532(%rbp), %edi               # 4-byte Reload
	movl	-1536(%rbp), %esi               # 4-byte Reload
	callq	_Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_
.Ltmp117:
	jmp	.LBB9_6
.LBB9_6:
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
.Ltmp119:
	leaq	.L.str.15(%rip), %rsi
	leaq	-1376(%rbp), %rdi
	movq	-1560(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp120:
	jmp	.LBB9_7
.LBB9_7:
	movq	-1488(%rbp), %rcx
	movq	-1496(%rbp), %r8
.Ltmp122:
	leaq	-1376(%rbp), %rdx
	movl	-1548(%rbp), %edi               # 4-byte Reload
	movl	-1552(%rbp), %esi               # 4-byte Reload
	callq	_Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_
.Ltmp123:
	jmp	.LBB9_8
.LBB9_8:
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
.Ltmp125:
	leaq	.L.str.18(%rip), %rsi
	leaq	-1408(%rbp), %rdi
	movq	-1576(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp126:
	jmp	.LBB9_9
.LBB9_9:
	movq	-1488(%rbp), %rcx
	movq	-1496(%rbp), %r8
.Ltmp128:
	leaq	-1408(%rbp), %rdx
	movl	-1564(%rbp), %edi               # 4-byte Reload
	movl	-1568(%rbp), %esi               # 4-byte Reload
	callq	_Z6expectiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_
.Ltmp129:
	jmp	.LBB9_10
.LBB9_10:
	leaq	-1408(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1472(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-1280(%rbp), %rdi
	callq	_ZN5BoardD2Ev
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB9_27
# %bb.11:
	addq	$1584, %rsp                     # imm = 0x630
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB9_12:
	.cfi_def_cfa %rbp, 16
.Ltmp106:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1504(%rbp)
	movl	%edx, -1508(%rbp)
	jmp	.LBB9_25
.LBB9_13:
.Ltmp109:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1504(%rbp)
	movl	%edx, -1508(%rbp)
	jmp	.LBB9_15
.LBB9_14:
.Ltmp112:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1504(%rbp)
	movl	%edx, -1508(%rbp)
	leaq	-1312(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB9_15:
	leaq	-1448(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB9_25
.LBB9_16:
.Ltmp115:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1504(%rbp)
	movl	%edx, -1508(%rbp)
	jmp	.LBB9_18
.LBB9_17:
.Ltmp118:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1504(%rbp)
	movl	%edx, -1508(%rbp)
	leaq	-1344(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB9_18:
	leaq	-1456(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB9_25
.LBB9_19:
.Ltmp121:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1504(%rbp)
	movl	%edx, -1508(%rbp)
	jmp	.LBB9_21
.LBB9_20:
.Ltmp124:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1504(%rbp)
	movl	%edx, -1508(%rbp)
	leaq	-1376(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB9_21:
	leaq	-1464(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB9_25
.LBB9_22:
.Ltmp127:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1504(%rbp)
	movl	%edx, -1508(%rbp)
	jmp	.LBB9_24
.LBB9_23:
.Ltmp130:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1504(%rbp)
	movl	%edx, -1508(%rbp)
	leaq	-1408(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB9_24:
	leaq	-1472(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
.LBB9_25:
	leaq	-1280(%rbp), %rdi
	callq	_ZN5BoardD2Ev
# %bb.26:
	movq	-1504(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.LBB9_27:
	callq	__stack_chk_fail@PLT
.Lfunc_end9:
	.size	_Z20perft_classical_testiRiS_, .Lfunc_end9-_Z20perft_classical_testiRiS_
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
	.uleb128 .Ltmp102-.Lfunc_begin4         #   Call between .Lfunc_begin4 and .Ltmp102
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp102-.Lfunc_begin4         # >> Call Site 2 <<
	.uleb128 .Ltmp105-.Ltmp102              #   Call between .Ltmp102 and .Ltmp105
	.uleb128 .Ltmp106-.Lfunc_begin4         #     jumps to .Ltmp106
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp107-.Lfunc_begin4         # >> Call Site 3 <<
	.uleb128 .Ltmp108-.Ltmp107              #   Call between .Ltmp107 and .Ltmp108
	.uleb128 .Ltmp109-.Lfunc_begin4         #     jumps to .Ltmp109
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp110-.Lfunc_begin4         # >> Call Site 4 <<
	.uleb128 .Ltmp111-.Ltmp110              #   Call between .Ltmp110 and .Ltmp111
	.uleb128 .Ltmp112-.Lfunc_begin4         #     jumps to .Ltmp112
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp113-.Lfunc_begin4         # >> Call Site 5 <<
	.uleb128 .Ltmp114-.Ltmp113              #   Call between .Ltmp113 and .Ltmp114
	.uleb128 .Ltmp115-.Lfunc_begin4         #     jumps to .Ltmp115
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp116-.Lfunc_begin4         # >> Call Site 6 <<
	.uleb128 .Ltmp117-.Ltmp116              #   Call between .Ltmp116 and .Ltmp117
	.uleb128 .Ltmp118-.Lfunc_begin4         #     jumps to .Ltmp118
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp119-.Lfunc_begin4         # >> Call Site 7 <<
	.uleb128 .Ltmp120-.Ltmp119              #   Call between .Ltmp119 and .Ltmp120
	.uleb128 .Ltmp121-.Lfunc_begin4         #     jumps to .Ltmp121
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp122-.Lfunc_begin4         # >> Call Site 8 <<
	.uleb128 .Ltmp123-.Ltmp122              #   Call between .Ltmp122 and .Ltmp123
	.uleb128 .Ltmp124-.Lfunc_begin4         #     jumps to .Ltmp124
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp125-.Lfunc_begin4         # >> Call Site 9 <<
	.uleb128 .Ltmp126-.Ltmp125              #   Call between .Ltmp125 and .Ltmp126
	.uleb128 .Ltmp127-.Lfunc_begin4         #     jumps to .Ltmp127
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp128-.Lfunc_begin4         # >> Call Site 10 <<
	.uleb128 .Ltmp129-.Ltmp128              #   Call between .Ltmp128 and .Ltmp129
	.uleb128 .Ltmp130-.Lfunc_begin4         #     jumps to .Ltmp130
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp129-.Lfunc_begin4         # >> Call Site 11 <<
	.uleb128 .Lfunc_end9-.Ltmp129           #   Call between .Ltmp129 and .Lfunc_end9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
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
	leaq	.L.str.19(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	movq	%rax, %rdi
	leaq	.L.str.19(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E@PLT
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end10:
	.size	_Z6bannerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .Lfunc_end10-_Z6bannerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_endproc
                                        # -- End function
	.globl	_Z9run_testsv                   # -- Begin function _Z9run_testsv
	.p2align	4, 0x90
	.type	_Z9run_testsv,@function
_Z9run_testsv:                          # @_Z9run_testsv
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
	subq	$1280, %rsp                     # imm = 0x500
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movl	$0, -876(%rbp)
	movl	$0, -880(%rbp)
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	.L.str.20(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.L.str.21(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	-888(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -1080(%rbp)               # 8-byte Spill
	movq	%rcx, -1088(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp131:
	leaq	.L.str.22(%rip), %rsi
	leaq	-40(%rbp), %rdi
	movq	-1088(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp132:
	jmp	.LBB11_1
.LBB11_1:
.Ltmp134:
	leaq	-40(%rbp), %rdi
	callq	_Z6bannerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Ltmp135:
	jmp	.LBB11_2
.LBB11_2:
	leaq	-40(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-888(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-896(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1096(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp137:
	leaq	.L.str.23(%rip), %rsi
	leaq	-72(%rbp), %rdi
	movq	-1096(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp138:
	jmp	.LBB11_3
.LBB11_3:
.Ltmp140:
	leaq	-72(%rbp), %rdi
	movl	$41, %esi
	xorl	%edx, %edx
	leaq	-876(%rbp), %rcx
	leaq	-880(%rbp), %r8
	callq	_Z18position_load_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRiS7_
.Ltmp141:
	jmp	.LBB11_4
.LBB11_4:
	leaq	-72(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-896(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-904(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1104(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp143:
	leaq	.L.str.24(%rip), %rsi
	leaq	-104(%rbp), %rdi
	movq	-1104(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp144:
	jmp	.LBB11_5
.LBB11_5:
.Ltmp146:
	leaq	-104(%rbp), %rdi
	movl	$4, %esi
	movl	$1, %edx
	leaq	-876(%rbp), %rcx
	leaq	-880(%rbp), %r8
	callq	_Z18position_load_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRiS7_
.Ltmp147:
	jmp	.LBB11_6
.LBB11_6:
	leaq	-104(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-904(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-912(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1112(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp149:
	leaq	.L.str.25(%rip), %rsi
	leaq	-136(%rbp), %rdi
	movq	-1112(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp150:
	jmp	.LBB11_7
.LBB11_7:
.Ltmp152:
	leaq	-136(%rbp), %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	leaq	-876(%rbp), %rcx
	leaq	-880(%rbp), %r8
	callq	_Z18position_load_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRiS7_
.Ltmp153:
	jmp	.LBB11_8
.LBB11_8:
	leaq	-136(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-912(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-920(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1120(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp155:
	leaq	.L.str.26(%rip), %rsi
	leaq	-168(%rbp), %rdi
	movq	-1120(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp156:
	jmp	.LBB11_9
.LBB11_9:
.Ltmp158:
	leaq	-168(%rbp), %rdi
	movl	$22, %esi
	xorl	%edx, %edx
	leaq	-876(%rbp), %rcx
	leaq	-880(%rbp), %r8
	callq	_Z18position_load_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRiS7_
.Ltmp159:
	jmp	.LBB11_10
.LBB11_10:
	leaq	-168(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-920(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-928(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1128(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp161:
	leaq	.L.str.27(%rip), %rsi
	leaq	-200(%rbp), %rdi
	movq	-1128(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp162:
	jmp	.LBB11_11
.LBB11_11:
.Ltmp164:
	leaq	-200(%rbp), %rdi
	movl	$29, %esi
	xorl	%edx, %edx
	leaq	-876(%rbp), %rcx
	leaq	-880(%rbp), %r8
	callq	_Z18position_load_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRiS7_
.Ltmp165:
	jmp	.LBB11_12
.LBB11_12:
	leaq	-200(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-928(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-936(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1136(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp167:
	leaq	.L.str.28(%rip), %rsi
	leaq	-232(%rbp), %rdi
	movq	-1136(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp168:
	jmp	.LBB11_13
.LBB11_13:
.Ltmp170:
	leaq	-232(%rbp), %rdi
	movl	$21, %esi
	xorl	%edx, %edx
	leaq	-876(%rbp), %rcx
	leaq	-880(%rbp), %r8
	callq	_Z18position_load_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRiS7_
.Ltmp171:
	jmp	.LBB11_14
.LBB11_14:
	leaq	-232(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-936(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-944(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1144(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp173:
	leaq	.L.str.29(%rip), %rsi
	leaq	-264(%rbp), %rdi
	movq	-1144(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp174:
	jmp	.LBB11_15
.LBB11_15:
.Ltmp176:
	leaq	-264(%rbp), %rdi
	movl	$22, %esi
	xorl	%edx, %edx
	leaq	-876(%rbp), %rcx
	leaq	-880(%rbp), %r8
	callq	_Z18position_load_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRiS7_
.Ltmp177:
	jmp	.LBB11_16
.LBB11_16:
	leaq	-264(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-944(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-952(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1152(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp179:
	leaq	.L.str.30(%rip), %rsi
	leaq	-296(%rbp), %rdi
	movq	-1152(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp180:
	jmp	.LBB11_17
.LBB11_17:
.Ltmp182:
	leaq	-296(%rbp), %rdi
	movl	$21, %esi
	xorl	%edx, %edx
	leaq	-876(%rbp), %rcx
	leaq	-880(%rbp), %r8
	callq	_Z18position_load_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRiS7_
.Ltmp183:
	jmp	.LBB11_18
.LBB11_18:
	leaq	-296(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-952(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-960(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1160(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp185:
	leaq	.L.str.31(%rip), %rsi
	leaq	-328(%rbp), %rdi
	movq	-1160(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp186:
	jmp	.LBB11_19
.LBB11_19:
.Ltmp188:
	leaq	-328(%rbp), %rdi
	movl	$21, %esi
	xorl	%edx, %edx
	leaq	-876(%rbp), %rcx
	leaq	-880(%rbp), %r8
	callq	_Z18position_load_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRiS7_
.Ltmp189:
	jmp	.LBB11_20
.LBB11_20:
	leaq	-328(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-960(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-968(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1168(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp191:
	leaq	.L.str.13(%rip), %rsi
	leaq	-360(%rbp), %rdi
	movq	-1168(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp192:
	jmp	.LBB11_21
.LBB11_21:
.Ltmp194:
	leaq	-360(%rbp), %rdi
	movl	$48, %esi
	xorl	%edx, %edx
	leaq	-876(%rbp), %rcx
	leaq	-880(%rbp), %r8
	callq	_Z18position_load_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRiS7_
.Ltmp195:
	jmp	.LBB11_22
.LBB11_22:
	leaq	-360(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-968(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-976(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1176(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp197:
	leaq	.L.str.11(%rip), %rsi
	leaq	-392(%rbp), %rdi
	movq	-1176(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp198:
	jmp	.LBB11_23
.LBB11_23:
.Ltmp200:
	leaq	-392(%rbp), %rdi
	movl	$44, %esi
	xorl	%edx, %edx
	leaq	-876(%rbp), %rcx
	leaq	-880(%rbp), %r8
	callq	_Z18position_load_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRiS7_
.Ltmp201:
	jmp	.LBB11_24
.LBB11_24:
	leaq	-392(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-976(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-984(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1184(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp203:
	leaq	.L.str.32(%rip), %rsi
	leaq	-424(%rbp), %rdi
	movq	-1184(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp204:
	jmp	.LBB11_25
.LBB11_25:
.Ltmp206:
	leaq	-424(%rbp), %rdi
	movl	$38, %esi
	xorl	%edx, %edx
	leaq	-876(%rbp), %rcx
	leaq	-880(%rbp), %r8
	callq	_Z18position_load_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRiS7_
.Ltmp207:
	jmp	.LBB11_26
.LBB11_26:
	leaq	-424(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-984(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-992(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1192(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp209:
	leaq	.L.str.33(%rip), %rsi
	leaq	-456(%rbp), %rdi
	movq	-1192(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp210:
	jmp	.LBB11_27
.LBB11_27:
.Ltmp212:
	leaq	-456(%rbp), %rdi
	callq	_Z6bannerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Ltmp213:
	jmp	.LBB11_28
.LBB11_28:
	leaq	-456(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-992(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-1000(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1200(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp215:
	leaq	.L.str.34(%rip), %rsi
	leaq	-488(%rbp), %rdi
	movq	-1200(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp216:
	jmp	.LBB11_29
.LBB11_29:
.Ltmp218:
	leaq	-488(%rbp), %rdi
	xorl	%esi, %esi
	leaq	-876(%rbp), %rdx
	leaq	-880(%rbp), %rcx
	callq	_Z18position_mate_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbRiS7_
.Ltmp219:
	jmp	.LBB11_30
.LBB11_30:
	leaq	-488(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1000(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-1008(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1208(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp221:
	leaq	.L.str.35(%rip), %rsi
	leaq	-520(%rbp), %rdi
	movq	-1208(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp222:
	jmp	.LBB11_31
.LBB11_31:
.Ltmp224:
	leaq	-520(%rbp), %rdi
	movl	$1, %esi
	leaq	-876(%rbp), %rdx
	leaq	-880(%rbp), %rcx
	callq	_Z18position_mate_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbRiS7_
.Ltmp225:
	jmp	.LBB11_32
.LBB11_32:
	leaq	-520(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1008(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-1016(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1216(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp227:
	leaq	.L.str.36(%rip), %rsi
	leaq	-552(%rbp), %rdi
	movq	-1216(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp228:
	jmp	.LBB11_33
.LBB11_33:
.Ltmp230:
	leaq	-552(%rbp), %rdi
	movl	$1, %esi
	leaq	-876(%rbp), %rdx
	leaq	-880(%rbp), %rcx
	callq	_Z18position_mate_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbRiS7_
.Ltmp231:
	jmp	.LBB11_34
.LBB11_34:
	leaq	-552(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1016(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-1024(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1224(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp233:
	leaq	.L.str.37(%rip), %rsi
	leaq	-584(%rbp), %rdi
	movq	-1224(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp234:
	jmp	.LBB11_35
.LBB11_35:
.Ltmp236:
	leaq	-584(%rbp), %rdi
	movl	$1, %esi
	leaq	-876(%rbp), %rdx
	leaq	-880(%rbp), %rcx
	callq	_Z18position_mate_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbRiS7_
.Ltmp237:
	jmp	.LBB11_36
.LBB11_36:
	leaq	-584(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1024(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-1032(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1232(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp239:
	leaq	.L.str.38(%rip), %rsi
	leaq	-616(%rbp), %rdi
	movq	-1232(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp240:
	jmp	.LBB11_37
.LBB11_37:
.Ltmp242:
	leaq	-616(%rbp), %rdi
	xorl	%esi, %esi
	leaq	-876(%rbp), %rdx
	leaq	-880(%rbp), %rcx
	callq	_Z18position_mate_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbRiS7_
.Ltmp243:
	jmp	.LBB11_38
.LBB11_38:
	leaq	-616(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1032(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-1040(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1240(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp245:
	leaq	.L.str.39(%rip), %rsi
	leaq	-648(%rbp), %rdi
	movq	-1240(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp246:
	jmp	.LBB11_39
.LBB11_39:
.Ltmp248:
	leaq	-648(%rbp), %rdi
	movl	$1, %esi
	leaq	-876(%rbp), %rdx
	leaq	-880(%rbp), %rcx
	callq	_Z18position_mate_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbRiS7_
.Ltmp249:
	jmp	.LBB11_40
.LBB11_40:
	leaq	-648(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1040(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	leaq	-1048(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1248(%rbp)               # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp251:
	leaq	.L.str.40(%rip), %rsi
	leaq	-680(%rbp), %rdi
	movq	-1248(%rbp), %rdx               # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp252:
	jmp	.LBB11_41
.LBB11_41:
.Ltmp254:
	leaq	-680(%rbp), %rdi
	movl	$1, %esi
	leaq	-876(%rbp), %rdx
	leaq	-880(%rbp), %rcx
	callq	_Z18position_mate_testRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbRiS7_
.Ltmp255:
	jmp	.LBB11_42
.LBB11_42:
	leaq	-680(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1048(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movl	$1, -1064(%rbp)
.LBB11_43:                              # =>This Inner Loop Header: Depth=1
	cmpl	$6, -1064(%rbp)
	jge	.LBB11_114
# %bb.44:                               #   in Loop: Header=BB11_43 Depth=1
	movl	-1064(%rbp), %esi
	leaq	-744(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1256(%rbp)               # 8-byte Spill
	callq	_ZNSt7__cxx119to_stringEi
.Ltmp269:
	leaq	.L.str.41(%rip), %rsi
	leaq	-712(%rbp), %rdi
	movq	-1256(%rbp), %rdx               # 8-byte Reload
	callq	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_
.Ltmp270:
	jmp	.LBB11_45
.LBB11_45:                              #   in Loop: Header=BB11_43 Depth=1
.Ltmp272:
	leaq	-712(%rbp), %rdi
	callq	_Z6bannerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Ltmp273:
	jmp	.LBB11_46
.LBB11_46:                              #   in Loop: Header=BB11_43 Depth=1
	leaq	-712(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-744(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movl	-1064(%rbp), %edi
	leaq	-876(%rbp), %rsi
	leaq	-880(%rbp), %rdx
	callq	_Z20perft_classical_testiRiS_
# %bb.47:                               #   in Loop: Header=BB11_43 Depth=1
	movl	-1064(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1064(%rbp)
	jmp	.LBB11_43
.LBB11_48:
.Ltmp133:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1056(%rbp)
	movl	%edx, -1060(%rbp)
	jmp	.LBB11_50
.LBB11_49:
.Ltmp136:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1056(%rbp)
	movl	%edx, -1060(%rbp)
	leaq	-40(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB11_50:
	leaq	-888(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB11_134
.LBB11_51:
.Ltmp139:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1056(%rbp)
	movl	%edx, -1060(%rbp)
	jmp	.LBB11_53
.LBB11_52:
.Ltmp142:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1056(%rbp)
	movl	%edx, -1060(%rbp)
	leaq	-72(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB11_53:
	leaq	-896(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB11_134
.LBB11_54:
.Ltmp145:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1056(%rbp)
	movl	%edx, -1060(%rbp)
	jmp	.LBB11_56
.LBB11_55:
.Ltmp148:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1056(%rbp)
	movl	%edx, -1060(%rbp)
	leaq	-104(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB11_56:
	leaq	-904(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB11_134
.LBB11_57:
.Ltmp151:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1056(%rbp)
	movl	%edx, -1060(%rbp)
	jmp	.LBB11_59
.LBB11_58:
.Ltmp154:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1056(%rbp)
	movl	%edx, -1060(%rbp)
	leaq	-136(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB11_59:
	leaq	-912(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB11_134
.LBB11_60:
.Ltmp157:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1056(%rbp)
	movl	%edx, -1060(%rbp)
	jmp	.LBB11_62
.LBB11_61:
.Ltmp160:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1056(%rbp)
	movl	%edx, -1060(%rbp)
	leaq	-168(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB11_62:
	leaq	-920(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB11_134
.LBB11_63:
.Ltmp163:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1056(%rbp)
	movl	%edx, -1060(%rbp)
	jmp	.LBB11_65
.LBB11_64:
.Ltmp166:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1056(%rbp)
	movl	%edx, -1060(%rbp)
	leaq	-200(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB11_65:
	leaq	-928(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB11_134
.LBB11_66:
.Ltmp169:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1056(%rbp)
	movl	%edx, -1060(%rbp)
	jmp	.LBB11_68
.LBB11_67:
.Ltmp172:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1056(%rbp)
	movl	%edx, -1060(%rbp)
	leaq	-232(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB11_68:
	leaq	-936(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB11_134
.LBB11_69:
.Ltmp175:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1056(%rbp)
	movl	%edx, -1060(%rbp)
	jmp	.LBB11_71
.LBB11_70:
.Ltmp178:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1056(%rbp)
	movl	%edx, -1060(%rbp)
	leaq	-264(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB11_71:
	leaq	-944(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB11_134
.LBB11_72:
.Ltmp181:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1056(%rbp)
	movl	%edx, -1060(%rbp)
	jmp	.LBB11_74
.LBB11_73:
.Ltmp184:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1056(%rbp)
	movl	%edx, -1060(%rbp)
	leaq	-296(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB11_74:
	leaq	-952(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB11_134
.LBB11_75:
.Ltmp187:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1056(%rbp)
	movl	%edx, -1060(%rbp)
	jmp	.LBB11_77
.LBB11_76:
.Ltmp190:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1056(%rbp)
	movl	%edx, -1060(%rbp)
	leaq	-328(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB11_77:
	leaq	-960(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB11_134
.LBB11_78:
.Ltmp193:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1056(%rbp)
	movl	%edx, -1060(%rbp)
	jmp	.LBB11_80
.LBB11_79:
.Ltmp196:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1056(%rbp)
	movl	%edx, -1060(%rbp)
	leaq	-360(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB11_80:
	leaq	-968(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB11_134
.LBB11_81:
.Ltmp199:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1056(%rbp)
	movl	%edx, -1060(%rbp)
	jmp	.LBB11_83
.LBB11_82:
.Ltmp202:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1056(%rbp)
	movl	%edx, -1060(%rbp)
	leaq	-392(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB11_83:
	leaq	-976(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB11_134
.LBB11_84:
.Ltmp205:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1056(%rbp)
	movl	%edx, -1060(%rbp)
	jmp	.LBB11_86
.LBB11_85:
.Ltmp208:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1056(%rbp)
	movl	%edx, -1060(%rbp)
	leaq	-424(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB11_86:
	leaq	-984(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB11_134
.LBB11_87:
.Ltmp211:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1056(%rbp)
	movl	%edx, -1060(%rbp)
	jmp	.LBB11_89
.LBB11_88:
.Ltmp214:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1056(%rbp)
	movl	%edx, -1060(%rbp)
	leaq	-456(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB11_89:
	leaq	-992(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB11_134
.LBB11_90:
.Ltmp217:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1056(%rbp)
	movl	%edx, -1060(%rbp)
	jmp	.LBB11_92
.LBB11_91:
.Ltmp220:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1056(%rbp)
	movl	%edx, -1060(%rbp)
	leaq	-488(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB11_92:
	leaq	-1000(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB11_134
.LBB11_93:
.Ltmp223:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1056(%rbp)
	movl	%edx, -1060(%rbp)
	jmp	.LBB11_95
.LBB11_94:
.Ltmp226:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1056(%rbp)
	movl	%edx, -1060(%rbp)
	leaq	-520(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB11_95:
	leaq	-1008(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB11_134
.LBB11_96:
.Ltmp229:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1056(%rbp)
	movl	%edx, -1060(%rbp)
	jmp	.LBB11_98
.LBB11_97:
.Ltmp232:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1056(%rbp)
	movl	%edx, -1060(%rbp)
	leaq	-552(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB11_98:
	leaq	-1016(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB11_134
.LBB11_99:
.Ltmp235:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1056(%rbp)
	movl	%edx, -1060(%rbp)
	jmp	.LBB11_101
.LBB11_100:
.Ltmp238:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1056(%rbp)
	movl	%edx, -1060(%rbp)
	leaq	-584(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB11_101:
	leaq	-1024(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB11_134
.LBB11_102:
.Ltmp241:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1056(%rbp)
	movl	%edx, -1060(%rbp)
	jmp	.LBB11_104
.LBB11_103:
.Ltmp244:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1056(%rbp)
	movl	%edx, -1060(%rbp)
	leaq	-616(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB11_104:
	leaq	-1032(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB11_134
.LBB11_105:
.Ltmp247:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1056(%rbp)
	movl	%edx, -1060(%rbp)
	jmp	.LBB11_107
.LBB11_106:
.Ltmp250:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1056(%rbp)
	movl	%edx, -1060(%rbp)
	leaq	-648(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB11_107:
	leaq	-1040(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB11_134
.LBB11_108:
.Ltmp253:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1056(%rbp)
	movl	%edx, -1060(%rbp)
	jmp	.LBB11_110
.LBB11_109:
.Ltmp256:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1056(%rbp)
	movl	%edx, -1060(%rbp)
	leaq	-680(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB11_110:
	leaq	-1048(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB11_134
.LBB11_111:
.Ltmp271:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1056(%rbp)
	movl	%edx, -1060(%rbp)
	jmp	.LBB11_113
.LBB11_112:
.Ltmp274:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1056(%rbp)
	movl	%edx, -1060(%rbp)
	leaq	-712(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB11_113:
	leaq	-744(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.LBB11_134
.LBB11_114:
	movl	$1, -1068(%rbp)
.LBB11_115:                             # =>This Inner Loop Header: Depth=1
	cmpl	$5, -1068(%rbp)
	jge	.LBB11_123
# %bb.116:                              #   in Loop: Header=BB11_115 Depth=1
	movl	-1068(%rbp), %esi
	leaq	-808(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1264(%rbp)               # 8-byte Spill
	callq	_ZNSt7__cxx119to_stringEi
.Ltmp263:
	leaq	.L.str.42(%rip), %rsi
	leaq	-776(%rbp), %rdi
	movq	-1264(%rbp), %rdx               # 8-byte Reload
	callq	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_
.Ltmp264:
	jmp	.LBB11_117
.LBB11_117:                             #   in Loop: Header=BB11_115 Depth=1
.Ltmp266:
	leaq	-776(%rbp), %rdi
	callq	_Z6bannerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Ltmp267:
	jmp	.LBB11_118
.LBB11_118:                             #   in Loop: Header=BB11_115 Depth=1
	leaq	-776(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-808(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movl	-1068(%rbp), %edi
	leaq	-876(%rbp), %rsi
	leaq	-880(%rbp), %rdx
	callq	_Z19perft_kiwipete_testiRiS_
# %bb.119:                              #   in Loop: Header=BB11_115 Depth=1
	movl	-1068(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1068(%rbp)
	jmp	.LBB11_115
.LBB11_120:
.Ltmp265:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1056(%rbp)
	movl	%edx, -1060(%rbp)
	jmp	.LBB11_122
.LBB11_121:
.Ltmp268:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1056(%rbp)
	movl	%edx, -1060(%rbp)
	leaq	-776(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB11_122:
	leaq	-808(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.LBB11_134
.LBB11_123:
	movl	$1, -1072(%rbp)
.LBB11_124:                             # =>This Inner Loop Header: Depth=1
	cmpl	$5, -1072(%rbp)
	jge	.LBB11_132
# %bb.125:                              #   in Loop: Header=BB11_124 Depth=1
	movl	-1072(%rbp), %esi
	leaq	-872(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1272(%rbp)               # 8-byte Spill
	callq	_ZNSt7__cxx119to_stringEi
.Ltmp257:
	leaq	.L.str.43(%rip), %rsi
	leaq	-840(%rbp), %rdi
	movq	-1272(%rbp), %rdx               # 8-byte Reload
	callq	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_
.Ltmp258:
	jmp	.LBB11_126
.LBB11_126:                             #   in Loop: Header=BB11_124 Depth=1
.Ltmp260:
	leaq	-840(%rbp), %rdi
	callq	_Z6bannerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Ltmp261:
	jmp	.LBB11_127
.LBB11_127:                             #   in Loop: Header=BB11_124 Depth=1
	leaq	-840(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-872(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movl	-1072(%rbp), %edi
	leaq	-876(%rbp), %rsi
	leaq	-880(%rbp), %rdx
	callq	_Z17perft_tricky_testiRiS_
# %bb.128:                              #   in Loop: Header=BB11_124 Depth=1
	movl	-1072(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1072(%rbp)
	jmp	.LBB11_124
.LBB11_129:
.Ltmp259:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1056(%rbp)
	movl	%edx, -1060(%rbp)
	jmp	.LBB11_131
.LBB11_130:
.Ltmp262:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -1056(%rbp)
	movl	%edx, -1060(%rbp)
	leaq	-840(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB11_131:
	leaq	-872(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.LBB11_134
.LBB11_132:
	movl	-880(%rbp), %esi
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	callq	_ZNSolsEi@PLT
	leaq	.L.str.44(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	-876(%rbp), %esi
	movq	%rax, %rdi
	callq	_ZNSolsEi@PLT
	leaq	.L.str.45(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E@PLT
	movq	%fs:40, %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	jne	.LBB11_135
# %bb.133:
	addq	$1280, %rsp                     # imm = 0x500
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB11_134:
	.cfi_def_cfa %rbp, 16
	movq	-1056(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.LBB11_135:
	callq	__stack_chk_fail@PLT
.Lfunc_end11:
	.size	_Z9run_testsv, .Lfunc_end11-_Z9run_testsv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table11:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp131-.Lfunc_begin5         #   Call between .Lfunc_begin5 and .Ltmp131
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp131-.Lfunc_begin5         # >> Call Site 2 <<
	.uleb128 .Ltmp132-.Ltmp131              #   Call between .Ltmp131 and .Ltmp132
	.uleb128 .Ltmp133-.Lfunc_begin5         #     jumps to .Ltmp133
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp134-.Lfunc_begin5         # >> Call Site 3 <<
	.uleb128 .Ltmp135-.Ltmp134              #   Call between .Ltmp134 and .Ltmp135
	.uleb128 .Ltmp136-.Lfunc_begin5         #     jumps to .Ltmp136
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp137-.Lfunc_begin5         # >> Call Site 4 <<
	.uleb128 .Ltmp138-.Ltmp137              #   Call between .Ltmp137 and .Ltmp138
	.uleb128 .Ltmp139-.Lfunc_begin5         #     jumps to .Ltmp139
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp140-.Lfunc_begin5         # >> Call Site 5 <<
	.uleb128 .Ltmp141-.Ltmp140              #   Call between .Ltmp140 and .Ltmp141
	.uleb128 .Ltmp142-.Lfunc_begin5         #     jumps to .Ltmp142
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp143-.Lfunc_begin5         # >> Call Site 6 <<
	.uleb128 .Ltmp144-.Ltmp143              #   Call between .Ltmp143 and .Ltmp144
	.uleb128 .Ltmp145-.Lfunc_begin5         #     jumps to .Ltmp145
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp146-.Lfunc_begin5         # >> Call Site 7 <<
	.uleb128 .Ltmp147-.Ltmp146              #   Call between .Ltmp146 and .Ltmp147
	.uleb128 .Ltmp148-.Lfunc_begin5         #     jumps to .Ltmp148
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp149-.Lfunc_begin5         # >> Call Site 8 <<
	.uleb128 .Ltmp150-.Ltmp149              #   Call between .Ltmp149 and .Ltmp150
	.uleb128 .Ltmp151-.Lfunc_begin5         #     jumps to .Ltmp151
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp152-.Lfunc_begin5         # >> Call Site 9 <<
	.uleb128 .Ltmp153-.Ltmp152              #   Call between .Ltmp152 and .Ltmp153
	.uleb128 .Ltmp154-.Lfunc_begin5         #     jumps to .Ltmp154
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp155-.Lfunc_begin5         # >> Call Site 10 <<
	.uleb128 .Ltmp156-.Ltmp155              #   Call between .Ltmp155 and .Ltmp156
	.uleb128 .Ltmp157-.Lfunc_begin5         #     jumps to .Ltmp157
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp158-.Lfunc_begin5         # >> Call Site 11 <<
	.uleb128 .Ltmp159-.Ltmp158              #   Call between .Ltmp158 and .Ltmp159
	.uleb128 .Ltmp160-.Lfunc_begin5         #     jumps to .Ltmp160
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp161-.Lfunc_begin5         # >> Call Site 12 <<
	.uleb128 .Ltmp162-.Ltmp161              #   Call between .Ltmp161 and .Ltmp162
	.uleb128 .Ltmp163-.Lfunc_begin5         #     jumps to .Ltmp163
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp164-.Lfunc_begin5         # >> Call Site 13 <<
	.uleb128 .Ltmp165-.Ltmp164              #   Call between .Ltmp164 and .Ltmp165
	.uleb128 .Ltmp166-.Lfunc_begin5         #     jumps to .Ltmp166
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp167-.Lfunc_begin5         # >> Call Site 14 <<
	.uleb128 .Ltmp168-.Ltmp167              #   Call between .Ltmp167 and .Ltmp168
	.uleb128 .Ltmp169-.Lfunc_begin5         #     jumps to .Ltmp169
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp170-.Lfunc_begin5         # >> Call Site 15 <<
	.uleb128 .Ltmp171-.Ltmp170              #   Call between .Ltmp170 and .Ltmp171
	.uleb128 .Ltmp172-.Lfunc_begin5         #     jumps to .Ltmp172
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp173-.Lfunc_begin5         # >> Call Site 16 <<
	.uleb128 .Ltmp174-.Ltmp173              #   Call between .Ltmp173 and .Ltmp174
	.uleb128 .Ltmp175-.Lfunc_begin5         #     jumps to .Ltmp175
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp176-.Lfunc_begin5         # >> Call Site 17 <<
	.uleb128 .Ltmp177-.Ltmp176              #   Call between .Ltmp176 and .Ltmp177
	.uleb128 .Ltmp178-.Lfunc_begin5         #     jumps to .Ltmp178
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp179-.Lfunc_begin5         # >> Call Site 18 <<
	.uleb128 .Ltmp180-.Ltmp179              #   Call between .Ltmp179 and .Ltmp180
	.uleb128 .Ltmp181-.Lfunc_begin5         #     jumps to .Ltmp181
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp182-.Lfunc_begin5         # >> Call Site 19 <<
	.uleb128 .Ltmp183-.Ltmp182              #   Call between .Ltmp182 and .Ltmp183
	.uleb128 .Ltmp184-.Lfunc_begin5         #     jumps to .Ltmp184
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp185-.Lfunc_begin5         # >> Call Site 20 <<
	.uleb128 .Ltmp186-.Ltmp185              #   Call between .Ltmp185 and .Ltmp186
	.uleb128 .Ltmp187-.Lfunc_begin5         #     jumps to .Ltmp187
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp188-.Lfunc_begin5         # >> Call Site 21 <<
	.uleb128 .Ltmp189-.Ltmp188              #   Call between .Ltmp188 and .Ltmp189
	.uleb128 .Ltmp190-.Lfunc_begin5         #     jumps to .Ltmp190
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp191-.Lfunc_begin5         # >> Call Site 22 <<
	.uleb128 .Ltmp192-.Ltmp191              #   Call between .Ltmp191 and .Ltmp192
	.uleb128 .Ltmp193-.Lfunc_begin5         #     jumps to .Ltmp193
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp194-.Lfunc_begin5         # >> Call Site 23 <<
	.uleb128 .Ltmp195-.Ltmp194              #   Call between .Ltmp194 and .Ltmp195
	.uleb128 .Ltmp196-.Lfunc_begin5         #     jumps to .Ltmp196
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp197-.Lfunc_begin5         # >> Call Site 24 <<
	.uleb128 .Ltmp198-.Ltmp197              #   Call between .Ltmp197 and .Ltmp198
	.uleb128 .Ltmp199-.Lfunc_begin5         #     jumps to .Ltmp199
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp200-.Lfunc_begin5         # >> Call Site 25 <<
	.uleb128 .Ltmp201-.Ltmp200              #   Call between .Ltmp200 and .Ltmp201
	.uleb128 .Ltmp202-.Lfunc_begin5         #     jumps to .Ltmp202
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp203-.Lfunc_begin5         # >> Call Site 26 <<
	.uleb128 .Ltmp204-.Ltmp203              #   Call between .Ltmp203 and .Ltmp204
	.uleb128 .Ltmp205-.Lfunc_begin5         #     jumps to .Ltmp205
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp206-.Lfunc_begin5         # >> Call Site 27 <<
	.uleb128 .Ltmp207-.Ltmp206              #   Call between .Ltmp206 and .Ltmp207
	.uleb128 .Ltmp208-.Lfunc_begin5         #     jumps to .Ltmp208
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp209-.Lfunc_begin5         # >> Call Site 28 <<
	.uleb128 .Ltmp210-.Ltmp209              #   Call between .Ltmp209 and .Ltmp210
	.uleb128 .Ltmp211-.Lfunc_begin5         #     jumps to .Ltmp211
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp212-.Lfunc_begin5         # >> Call Site 29 <<
	.uleb128 .Ltmp213-.Ltmp212              #   Call between .Ltmp212 and .Ltmp213
	.uleb128 .Ltmp214-.Lfunc_begin5         #     jumps to .Ltmp214
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp215-.Lfunc_begin5         # >> Call Site 30 <<
	.uleb128 .Ltmp216-.Ltmp215              #   Call between .Ltmp215 and .Ltmp216
	.uleb128 .Ltmp217-.Lfunc_begin5         #     jumps to .Ltmp217
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp218-.Lfunc_begin5         # >> Call Site 31 <<
	.uleb128 .Ltmp219-.Ltmp218              #   Call between .Ltmp218 and .Ltmp219
	.uleb128 .Ltmp220-.Lfunc_begin5         #     jumps to .Ltmp220
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp221-.Lfunc_begin5         # >> Call Site 32 <<
	.uleb128 .Ltmp222-.Ltmp221              #   Call between .Ltmp221 and .Ltmp222
	.uleb128 .Ltmp223-.Lfunc_begin5         #     jumps to .Ltmp223
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp224-.Lfunc_begin5         # >> Call Site 33 <<
	.uleb128 .Ltmp225-.Ltmp224              #   Call between .Ltmp224 and .Ltmp225
	.uleb128 .Ltmp226-.Lfunc_begin5         #     jumps to .Ltmp226
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp227-.Lfunc_begin5         # >> Call Site 34 <<
	.uleb128 .Ltmp228-.Ltmp227              #   Call between .Ltmp227 and .Ltmp228
	.uleb128 .Ltmp229-.Lfunc_begin5         #     jumps to .Ltmp229
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp230-.Lfunc_begin5         # >> Call Site 35 <<
	.uleb128 .Ltmp231-.Ltmp230              #   Call between .Ltmp230 and .Ltmp231
	.uleb128 .Ltmp232-.Lfunc_begin5         #     jumps to .Ltmp232
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp233-.Lfunc_begin5         # >> Call Site 36 <<
	.uleb128 .Ltmp234-.Ltmp233              #   Call between .Ltmp233 and .Ltmp234
	.uleb128 .Ltmp235-.Lfunc_begin5         #     jumps to .Ltmp235
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp236-.Lfunc_begin5         # >> Call Site 37 <<
	.uleb128 .Ltmp237-.Ltmp236              #   Call between .Ltmp236 and .Ltmp237
	.uleb128 .Ltmp238-.Lfunc_begin5         #     jumps to .Ltmp238
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp239-.Lfunc_begin5         # >> Call Site 38 <<
	.uleb128 .Ltmp240-.Ltmp239              #   Call between .Ltmp239 and .Ltmp240
	.uleb128 .Ltmp241-.Lfunc_begin5         #     jumps to .Ltmp241
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp242-.Lfunc_begin5         # >> Call Site 39 <<
	.uleb128 .Ltmp243-.Ltmp242              #   Call between .Ltmp242 and .Ltmp243
	.uleb128 .Ltmp244-.Lfunc_begin5         #     jumps to .Ltmp244
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp245-.Lfunc_begin5         # >> Call Site 40 <<
	.uleb128 .Ltmp246-.Ltmp245              #   Call between .Ltmp245 and .Ltmp246
	.uleb128 .Ltmp247-.Lfunc_begin5         #     jumps to .Ltmp247
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp248-.Lfunc_begin5         # >> Call Site 41 <<
	.uleb128 .Ltmp249-.Ltmp248              #   Call between .Ltmp248 and .Ltmp249
	.uleb128 .Ltmp250-.Lfunc_begin5         #     jumps to .Ltmp250
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp251-.Lfunc_begin5         # >> Call Site 42 <<
	.uleb128 .Ltmp252-.Ltmp251              #   Call between .Ltmp251 and .Ltmp252
	.uleb128 .Ltmp253-.Lfunc_begin5         #     jumps to .Ltmp253
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp254-.Lfunc_begin5         # >> Call Site 43 <<
	.uleb128 .Ltmp255-.Ltmp254              #   Call between .Ltmp254 and .Ltmp255
	.uleb128 .Ltmp256-.Lfunc_begin5         #     jumps to .Ltmp256
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp255-.Lfunc_begin5         # >> Call Site 44 <<
	.uleb128 .Ltmp269-.Ltmp255              #   Call between .Ltmp255 and .Ltmp269
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp269-.Lfunc_begin5         # >> Call Site 45 <<
	.uleb128 .Ltmp270-.Ltmp269              #   Call between .Ltmp269 and .Ltmp270
	.uleb128 .Ltmp271-.Lfunc_begin5         #     jumps to .Ltmp271
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp272-.Lfunc_begin5         # >> Call Site 46 <<
	.uleb128 .Ltmp273-.Ltmp272              #   Call between .Ltmp272 and .Ltmp273
	.uleb128 .Ltmp274-.Lfunc_begin5         #     jumps to .Ltmp274
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp273-.Lfunc_begin5         # >> Call Site 47 <<
	.uleb128 .Ltmp263-.Ltmp273              #   Call between .Ltmp273 and .Ltmp263
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp263-.Lfunc_begin5         # >> Call Site 48 <<
	.uleb128 .Ltmp264-.Ltmp263              #   Call between .Ltmp263 and .Ltmp264
	.uleb128 .Ltmp265-.Lfunc_begin5         #     jumps to .Ltmp265
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp266-.Lfunc_begin5         # >> Call Site 49 <<
	.uleb128 .Ltmp267-.Ltmp266              #   Call between .Ltmp266 and .Ltmp267
	.uleb128 .Ltmp268-.Lfunc_begin5         #     jumps to .Ltmp268
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp267-.Lfunc_begin5         # >> Call Site 50 <<
	.uleb128 .Ltmp257-.Ltmp267              #   Call between .Ltmp267 and .Ltmp257
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp257-.Lfunc_begin5         # >> Call Site 51 <<
	.uleb128 .Ltmp258-.Ltmp257              #   Call between .Ltmp257 and .Ltmp258
	.uleb128 .Ltmp259-.Lfunc_begin5         #     jumps to .Ltmp259
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp260-.Lfunc_begin5         # >> Call Site 52 <<
	.uleb128 .Ltmp261-.Ltmp260              #   Call between .Ltmp260 and .Ltmp261
	.uleb128 .Ltmp262-.Lfunc_begin5         #     jumps to .Ltmp262
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp261-.Lfunc_begin5         # >> Call Site 53 <<
	.uleb128 .Lfunc_end11-.Ltmp261          #   Call between .Ltmp261 and .Lfunc_end11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
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
.Lfunc_end12:
	.size	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_, .Lfunc_end12-_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx119to_stringEi,"axG",@progbits,_ZNSt7__cxx119to_stringEi,comdat
	.weak	_ZNSt7__cxx119to_stringEi       # -- Begin function _ZNSt7__cxx119to_stringEi
	.p2align	4, 0x90
	.type	_ZNSt7__cxx119to_stringEi,@function
_ZNSt7__cxx119to_stringEi:              # @_ZNSt7__cxx119to_stringEi
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
	je	.LBB13_2
# %bb.1:
	movl	-28(%rbp), %eax
	xorl	$-1, %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)                 # 4-byte Spill
	jmp	.LBB13_3
.LBB13_2:
	movl	-28(%rbp), %eax
	movl	%eax, -84(%rbp)                 # 4-byte Spill
.LBB13_3:
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
.Ltmp275:
	movl	$45, %edx
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movq	-96(%rbp), %rsi                 # 8-byte Reload
	movq	-104(%rbp), %rcx                # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EmcRKS3_@PLT
.Ltmp276:
	jmp	.LBB13_4
.LBB13_4:
	leaq	-16(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movzbl	-29(%rbp), %eax
	movl	%eax, %ecx
                                        # kill: def $ecx killed $ecx killed $rcx
	andl	$1, %ecx
	movl	%ecx, %esi
.Ltmp278:
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm@PLT
.Ltmp279:
	movq	%rax, -112(%rbp)                # 8-byte Spill
	jmp	.LBB13_5
.LBB13_5:
	movl	-40(%rbp), %esi
	movl	-36(%rbp), %edx
	movq	-112(%rbp), %rdi                # 8-byte Reload
	callq	_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_
	movb	$1, -41(%rbp)
	testb	$1, -41(%rbp)
	jne	.LBB13_9
	jmp	.LBB13_8
.LBB13_6:
.Ltmp277:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -56(%rbp)
	movl	%edx, -60(%rbp)
	leaq	-16(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	jmp	.LBB13_11
.LBB13_7:
.Ltmp280:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -56(%rbp)
	movl	%edx, -60(%rbp)
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.LBB13_11
.LBB13_8:
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB13_9:
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB13_12
# %bb.10:
	movq	-80(%rbp), %rax                 # 8-byte Reload
	addq	$112, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB13_11:
	.cfi_def_cfa %rbp, 16
	movq	-56(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.LBB13_12:
	callq	__stack_chk_fail@PLT
.Lfunc_end13:
	.size	_ZNSt7__cxx119to_stringEi, .Lfunc_end13-_ZNSt7__cxx119to_stringEi
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table13:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Ltmp275-.Lfunc_begin6         # >> Call Site 1 <<
	.uleb128 .Ltmp276-.Ltmp275              #   Call between .Ltmp275 and .Ltmp276
	.uleb128 .Ltmp277-.Lfunc_begin6         #     jumps to .Ltmp277
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp278-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Ltmp279-.Ltmp278              #   Call between .Ltmp278 and .Ltmp279
	.uleb128 .Ltmp280-.Lfunc_begin6         #     jumps to .Ltmp280
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp279-.Lfunc_begin6         # >> Call Site 3 <<
	.uleb128 .Lfunc_end13-.Ltmp279          #   Call between .Ltmp279 and .Lfunc_end13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
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
.Lfunc_end14:
	.size	_ZN5board10StateStackD2Ev, .Lfunc_end14-_ZN5board10StateStackD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIN5board5StateESaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorIN5board5StateESaIS1_EED2Ev,comdat
	.weak	_ZNSt6vectorIN5board5StateESaIS1_EED2Ev # -- Begin function _ZNSt6vectorIN5board5StateESaIS1_EED2Ev
	.p2align	4, 0x90
	.type	_ZNSt6vectorIN5board5StateESaIS1_EED2Ev,@function
_ZNSt6vectorIN5board5StateESaIS1_EED2Ev: # @_ZNSt6vectorIN5board5StateESaIS1_EED2Ev
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
.Ltmp281:
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	-48(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZSt8_DestroyIPN5board5StateES1_EvT_S3_RSaIT0_E
.Ltmp282:
	jmp	.LBB15_1
.LBB15_1:
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB15_2:
	.cfi_def_cfa %rbp, 16
.Ltmp283:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev
# %bb.3:
	movq	-16(%rbp), %rdi
	callq	__clang_call_terminate
.Lfunc_end15:
	.size	_ZNSt6vectorIN5board5StateESaIS1_EED2Ev, .Lfunc_end15-_ZNSt6vectorIN5board5StateESaIS1_EED2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table15:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	156                             # @TType Encoding = indirect pcrel sdata8
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Ltmp281-.Lfunc_begin7         # >> Call Site 1 <<
	.uleb128 .Ltmp282-.Ltmp281              #   Call between .Ltmp281 and .Ltmp282
	.uleb128 .Ltmp283-.Lfunc_begin7         #     jumps to .Ltmp283
	.byte	1                               #   On action: 1
.Lcst_end7:
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
.Lfunc_end16:
	.size	_ZSt8_DestroyIPN5board5StateES1_EvT_S3_RSaIT0_E, .Lfunc_end16-_ZSt8_DestroyIPN5board5StateES1_EvT_S3_RSaIT0_E
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
.Lfunc_end17:
	.size	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv, .Lfunc_end17-_ZNSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev,comdat
	.weak	_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev # -- Begin function _ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev,@function
_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev: # @_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	16(%rax), %rdx
	subq	%rcx, %rdx
	sarq	$6, %rdx
	movabsq	$-1085102592571150095, %rsi     # imm = 0xF0F0F0F0F0F0F0F1
	imulq	%rsi, %rdx
.Ltmp284:
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE13_M_deallocateEPS1_m
.Ltmp285:
	jmp	.LBB18_1
.LBB18_1:
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implD2Ev
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB18_2:
	.cfi_def_cfa %rbp, 16
.Ltmp286:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implD2Ev
# %bb.3:
	movq	-16(%rbp), %rdi
	callq	__clang_call_terminate
.Lfunc_end18:
	.size	_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev, .Lfunc_end18-_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table18:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	156                             # @TType Encoding = indirect pcrel sdata8
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Ltmp284-.Lfunc_begin8         # >> Call Site 1 <<
	.uleb128 .Ltmp285-.Ltmp284              #   Call between .Ltmp284 and .Ltmp285
	.uleb128 .Ltmp286-.Lfunc_begin8         #     jumps to .Ltmp286
	.byte	1                               #   On action: 1
.Lcst_end8:
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
.Lfunc_end20:
	.size	_ZSt8_DestroyIPN5board5StateEEvT_S3_, .Lfunc_end20-_ZSt8_DestroyIPN5board5StateEEvT_S3_
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
.Lfunc_end21:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPN5board5StateEEEvT_S5_, .Lfunc_end21-_ZNSt12_Destroy_auxILb1EE9__destroyIPN5board5StateEEEvT_S5_
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
	je	.LBB22_2
# %bb.1:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	_ZNSt16allocator_traitsISaIN5board5StateEEE10deallocateERS2_PS1_m
.LBB22_2:
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end22:
	.size	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE13_M_deallocateEPS1_m, .Lfunc_end22-_ZNSt12_Vector_baseIN5board5StateESaIS1_EE13_M_deallocateEPS1_m
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
.Lfunc_end23:
	.size	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implD2Ev, .Lfunc_end23-_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implD2Ev
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
.Lfunc_end24:
	.size	_ZNSt16allocator_traitsISaIN5board5StateEEE10deallocateERS2_PS1_m, .Lfunc_end24-_ZNSt16allocator_traitsISaIN5board5StateEEE10deallocateERS2_PS1_m
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
.Lfunc_end25:
	.size	_ZN9__gnu_cxx13new_allocatorIN5board5StateEE10deallocateEPS2_m, .Lfunc_end25-_ZN9__gnu_cxx13new_allocatorIN5board5StateEE10deallocateEPS2_m
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
.Lfunc_end26:
	.size	_ZNSaIN5board5StateEED2Ev, .Lfunc_end26-_ZNSaIN5board5StateEED2Ev
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
.Lfunc_end27:
	.size	_ZN9__gnu_cxx13new_allocatorIN5board5StateEED2Ev, .Lfunc_end27-_ZN9__gnu_cxx13new_allocatorIN5board5StateEED2Ev
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
.LBB28_1:                               # =>This Inner Loop Header: Depth=1
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jae	.LBB28_3
# %bb.2:
	movl	-16(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB28_10
.LBB28_3:                               #   in Loop: Header=BB28_1 Depth=1
	movl	-8(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jae	.LBB28_5
# %bb.4:
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB28_10
.LBB28_5:                               #   in Loop: Header=BB28_1 Depth=1
	movl	-8(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jae	.LBB28_7
# %bb.6:
	movl	-16(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB28_10
.LBB28_7:                               #   in Loop: Header=BB28_1 Depth=1
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	cmpq	-32(%rbp), %rcx
	jae	.LBB28_9
# %bb.8:
	movl	-16(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB28_10
.LBB28_9:                               #   in Loop: Header=BB28_1 Depth=1
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
	jmp	.LBB28_1
.LBB28_10:
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end28:
	.size	_ZNSt8__detail14__to_chars_lenIjEEjT_i, .Lfunc_end28-_ZNSt8__detail14__to_chars_lenIjEEjT_i
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
.LBB29_1:                               # =>This Inner Loop Header: Depth=1
	cmpl	$100, -16(%rbp)
	jb	.LBB29_3
# %bb.2:                                #   in Loop: Header=BB29_1 Depth=1
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
	jmp	.LBB29_1
.LBB29_3:
	cmpl	$10, -16(%rbp)
	jb	.LBB29_5
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
	jmp	.LBB29_6
.LBB29_5:
	movl	-16(%rbp), %eax
	addl	$48, %eax
                                        # kill: def $al killed $al killed $eax
	movq	-8(%rbp), %rcx
	movb	%al, (%rcx)
.LBB29_6:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end29:
	.size	_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_, .Lfunc_end29-_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_
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
.Lfunc_end30:
	.size	_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_, .Lfunc_end30-_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_
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
.Lfunc_end31:
	.size	_GLOBAL__sub_I_tests.cpp, .Lfunc_end31-_GLOBAL__sub_I_tests.cpp
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
	.asciz	"rnbq1k1r/pp1Pbppp/2p5/8/2B5/8/PPP1NnPP/RNBQK2R w KQ - 1 8"
	.size	.L.str.11, 58

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

	.type	.L.str.12,@object               # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"node count"
	.size	.L.str.12, 11

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"r3k2r/p1ppqpb1/bn2pnp1/3PN3/1p2P3/2N2Q1p/PPPBBPPP/R3K2R w KQkq - "
	.size	.L.str.13, 66

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

	.type	.L.str.14,@object               # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"capture count"
	.size	.L.str.14, 14

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

	.type	.L.str.15,@object               # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"check count"
	.size	.L.str.15, 12

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

	.type	.L.str.16,@object               # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"en passant count"
	.size	.L.str.16, 17

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

	.type	.L.str.17,@object               # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"castle count"
	.size	.L.str.17, 13

	.type	_ZL14perft_kp_mates,@object     # @_ZL14perft_kp_mates
	.section	.rodata,"a",@progbits
	.p2align	4
_ZL14perft_kp_mates:
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	43                              # 0x2b
	.long	30171                           # 0x75db
	.long	360003                          # 0x57e43
	.size	_ZL14perft_kp_mates, 24

	.type	.L.str.18,@object               # @.str.18
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.18:
	.asciz	"mate count"
	.size	.L.str.18, 11

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

	.type	.L.str.19,@object               # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"-----"
	.size	.L.str.19, 6

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"Running test suite."
	.size	.L.str.20, 20

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"\n"
	.size	.L.str.21, 2

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"Load FEN Basic Test"
	.size	.L.str.22, 20

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"r1b4k/pp4p1/3n1nqp/3B4/2P2p2/2Q4P/PB2PP2/R5RK b - - 2 30"
	.size	.L.str.23, 57

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"rn1qk2r/pp3ppp/4pn2/3p4/8/1P1P2P1/PBPbQP1P/2KR1BNR w kq - 0 11"
	.size	.L.str.24, 63

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"r1b1kbnr/pppp1Npp/8/8/4q3/5n2/PPPPBP1P/RNBQKR2 w Qkq - 2 8"
	.size	.L.str.25, 59

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"rnbqkbnr/pppp1ppp/8/4p3/8/5N2/PPPPPPPP/RNBQKB1R w KQkq - 0 2"
	.size	.L.str.26, 61

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"rnbqkbnr/pppp1ppp/8/4p3/3P4/8/PPP1PPPP/RNBQKBNR w KQkq - 0 2"
	.size	.L.str.27, 61

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"rnbqkbnr/ppppppp1/8/7p/P7/8/1PPPPPPP/RNBQKBNR w KQkq - 0 2"
	.size	.L.str.28, 59

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"rnbqkbnr/ppp1pppp/8/3p4/8/5N2/PPPPPPPP/RNBQKB1R w KQkq - 0 2"
	.size	.L.str.29, 61

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"rnbqkbnr/pppppp1p/6p1/8/8/1P6/P1PPPPPP/RNBQKBNR w KQkq - 0 2"
	.size	.L.str.30, 61

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"rnbqkbnr/pp1ppppp/8/2p5/6P1/8/PPPPPP1P/RNBQKBNR w KQkq - 0 2"
	.size	.L.str.31, 61

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"rnbqkbnr/1p1ppp2/p6p/2pP2p1/4P3/P7/1PP2PPP/RNBQKBNR w KQkq c6 0 5"
	.size	.L.str.32, 66

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"Checkmate tests"
	.size	.L.str.33, 16

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"rnbqkbnr/ppppp1pp/8/5p1Q/4P3/8/PPPP1PPP/RNB1KBNR b KQkq - 1 2"
	.size	.L.str.34, 62

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"rnb1kbnr/pppp1ppp/8/4p3/5PPq/8/PPPPP2P/RNBQKBNR w KQkq - 1 3"
	.size	.L.str.35, 61

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"kr6/ppN5/8/8/8/6P1/3K4/8 b - - 0 1"
	.size	.L.str.36, 35

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"r2qk2r/p1pp1Qb1/bn1Pp1p1/4N3/1p2P1n1/P1N4p/1PPBBPPP/R3K2R b KQkq - 0 3"
	.size	.L.str.37, 71

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"3rk1nr/p1ppqQb1/Bn2p1p1/1N1PN3/1p2P3/7p/PPPB1PPP/R3K2R b KQk - 0 3"
	.size	.L.str.38, 67

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"3r1knr/p1Npqpb1/Bn2p1N1/3P4/1p2P3/5Q1p/PPPB1PPP/R3K2R b KQ - 0 4"
	.size	.L.str.39, 65

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"r2qk2r/p1pp1Qb1/bn2p1p1/3PN3/1p2P3/2N4p/PPPBBPPP/R3K2R b KQkq - 0 2"
	.size	.L.str.40, 68

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"PERFT classical depth="
	.size	.L.str.41, 23

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"PERFT kiwipete depth="
	.size	.L.str.42, 22

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"PERFT tricky depth="
	.size	.L.str.43, 20

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"/"
	.size	.L.str.44, 2

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	" tests passed."
	.size	.L.str.45, 15

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
	.addrsig_sym _Z17perft_tricky_testiRiS_
	.addrsig_sym _ZN5perft5perftER5BoardiRNS_7CounterE
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
	.addrsig_sym _ZL18perft_tricky_nodes
	.addrsig_sym _ZL14perft_kp_nodes
	.addrsig_sym _ZL17perft_kp_captures
	.addrsig_sym _ZL15perft_kp_checks
	.addrsig_sym _ZL12perft_kp_eps
	.addrsig_sym _ZL16perft_kp_castles
	.addrsig_sym _ZL14perft_kp_mates
	.addrsig_sym _ZL21perft_classical_nodes
	.addrsig_sym _ZL24perft_classical_captures
	.addrsig_sym _ZL22perft_classical_checks
	.addrsig_sym _ZL21perft_classical_mates
	.addrsig_sym _ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits
