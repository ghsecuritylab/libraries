	.text
	.syntax unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.eabi_attribute	6, 1	@ Tag_CPU_arch
	.eabi_attribute	8, 1	@ Tag_ARM_ISA_use
	.eabi_attribute	17, 1	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute	21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute	23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute	34, 0	@ Tag_CPU_unaligned_access
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	18, 4	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute	26, 2	@ Tag_ABI_enum_size
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.file	"src/exit/quick_exit.bc"
	.globl	quick_exit
	.align	2
	.type	quick_exit,%function
quick_exit:                             @ @quick_exit
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	mov	r4, r0
	bl	__funcs_on_quick_exit
	mov	r0, r4
	bl	_Exit
.Ltmp0:
	.size	quick_exit, .Ltmp0-quick_exit
	.cantunwind
	.fnend

	.align	2
	.type	dummy,%function
dummy:                                  @ @dummy
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	mov	pc, lr
.Ltmp1:
	.size	dummy, .Ltmp1-dummy
	.cantunwind
	.fnend


	.weak	__funcs_on_quick_exit
__funcs_on_quick_exit = dummy
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
