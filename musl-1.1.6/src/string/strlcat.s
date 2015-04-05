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
	.file	"src/string/strlcat.bc"
	.globl	strlcat
	.align	2
	.type	strlcat,%function
strlcat:                                @ @strlcat
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	mov	r6, r2
	mov	r7, r0
	mov	r5, r1
	mov	r1, r6
	b	.LBB0_3
.LBB0_3:                                @ %entry
                                        @ kill: R0<def> R7<kill>
	bl	strnlen
	mov	r4, r0
	cmp	r4, r6
	bne	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                @ %if.then
	mov	r0, r5
	bl	strlen
	b	.LBB0_6
.LBB0_5:                                @ %if.end
	add	r0, r7, r4
	sub	r2, r6, r4
	mov	r1, r5
	bl	strlcpy
	b	.LBB0_6
.LBB0_6:                                @ %return
	add	r0, r0, r4
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	strlcat, .Ltmp0-strlcat
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
