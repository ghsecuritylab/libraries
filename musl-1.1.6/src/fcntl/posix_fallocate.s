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
	.file	"src/fcntl/posix_fallocate.bc"
	.globl	posix_fallocate
	.align	2
	.type	posix_fallocate,%function
posix_fallocate:                        @ @posix_fallocate
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r7, lr}
	push	{r4, r5, r7, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	ldr	r4, [sp, #16]
	ldr	r5, [sp, #20]
	b	.LBB0_2
.LBB0_2:                                @ %entry
	mov	r7, #352
	mov	r1, #0
	@APP
	svc	#0
	@NO_APP
	rsb	r0, r0, #0
	pop	{r4, r5, r7, lr}
	mov	pc, lr
.Ltmp0:
	.size	posix_fallocate, .Ltmp0-posix_fallocate
	.cantunwind
	.fnend


	.weak	posix_fallocate64
posix_fallocate64 = posix_fallocate
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
