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
	.file	"src/unistd/alarm.bc"
	.globl	alarm
	.align	2
	.type	alarm,%function
alarm:                                  @ @alarm
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r7, lr}
	push	{r7, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	.pad	#16
	sub	sp, sp, #16
	mov	r1, #0
	mov	r7, #104
	b	.LBB0_2
.LBB0_2:                                @ %entry
	str	r1, [sp, #4]
	str	r1, [sp]
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r1, sp
	mov	r0, #0
	mov	r2, r1
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_4
.LBB0_4:                                @ %entry
	ldr	r1, [sp, #12]
	ldr	r0, [sp, #8]
	cmp	r1, #0
	addne	r0, r0, #1
	add	sp, sp, #16
	pop	{r7, lr}
	mov	pc, lr
.Ltmp0:
	.size	alarm, .Ltmp0-alarm
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
