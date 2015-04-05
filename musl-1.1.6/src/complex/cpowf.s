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
	.file	"src/complex/cpowf.bc"
	.globl	cpowf
	.align	2
	.type	cpowf,%function
cpowf:                                  @ @cpowf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#32
	sub	sp, sp, #32
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r9, r0
	add	r0, sp, #24
	mov	r10, r3
	bl	clogf
	b	.LBB0_4
.LBB0_4:                                @ %entry
	ldr	r7, [sp, #28]
	ldr	r6, [sp, #24]
	mov	r0, r10
	mov	r1, r7
	b	.LBB0_5
.LBB0_5:                                @ %entry
	bl	__aeabi_fmul
	ldr	r8, [sp, #64]
	mov	r4, r0
	mov	r1, r6
	b	.LBB0_6
.LBB0_6:                                @ %entry
	mov	r0, r8
	bl	__aeabi_fmul
	mov	r1, r4
	bl	__aeabi_fadd
	b	.LBB0_7
.LBB0_7:                                @ %entry
	mov	r4, r0
	mov	r0, r10
	mov	r1, r6
	bl	__aeabi_fmul
	b	.LBB0_8
.LBB0_8:                                @ %entry
	mov	r5, r0
	mov	r0, r8
	mov	r1, r7
	bl	__aeabi_fmul
	b	.LBB0_9
.LBB0_9:                                @ %entry
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fsub
	mov	r5, r0
	b	.LBB0_10
.LBB0_10:                               @ %entry
	mov	r1, r5
                                        @ kill: R0<def> R5<kill>
	bl	__aeabi_fcmpun
	cmp	r0, #0
	beq	.LBB0_12
	b	.LBB0_11
.LBB0_11:                               @ %entry
	mov	r0, r4
	mov	r1, r4
	bl	__aeabi_fcmpun
	cmp	r0, #0
	bne	.LBB0_14
	b	.LBB0_12
.LBB0_12:                               @ %complex_mul_cont
	add	r0, sp, #8
	mov	r1, r5
	mov	r2, r4
	bl	cexpf
	b	.LBB0_13
.LBB0_13:                               @ %complex_mul_cont
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	stm	r9, {r0, r1}
	add	sp, sp, #32
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	pc, lr
.LBB0_14:                               @ %complex_mul_libcall
	add	r0, sp, #16
	mov	r1, r10
	mov	r2, r8
	mov	r3, r6
	b	.LBB0_15
.LBB0_15:                               @ %complex_mul_libcall
	str	r7, [sp]
	bl	__mulsc3
	ldr	r5, [sp, #16]
	ldr	r4, [sp, #20]
	b	.LBB0_12
.Ltmp0:
	.size	cpowf, .Ltmp0-cpowf
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits