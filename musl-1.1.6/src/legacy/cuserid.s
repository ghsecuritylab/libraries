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
	.file	"src/legacy/cuserid.bc"
	.globl	cuserid
	.align	2
	.type	cuserid,%function
cuserid:                                @ @cuserid
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	.pad	#40
	sub	sp, sp, #40
	.pad	#1024
	sub	sp, sp, #1024
	b	.LBB0_2
.LBB0_2:                                @ %entry
	mov	r4, r0
	bl	geteuid
	add	r5, sp, #1024
	b	.LBB0_3
.LBB0_3:                                @ %entry
	add	r2, sp, #8
	mov	r3, #1024
	add	r1, r5, #8
	add	r5, sp, #1024
	b	.LBB0_4
.LBB0_4:                                @ %entry
	str	r1, [sp]
	add	r1, r5, #12
	bl	getpwuid_r
	mov	r1, r0
	mov	r0, #0
	cmp	r1, #0
	bne	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                @ %if.end
	ldr	r3, [sp, #1036]
	ldr	r2, .LCPI0_0
	mov	r0, r4
	mov	r1, #20
	bl	snprintf
	mov	r0, r4
	b	.LBB0_6
.LCPI0_0:
	.long	.L.str
.LBB0_6:                                @ %cleanup
	add	sp, sp, #40
	add	sp, sp, #1024
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp0:
	.size	cuserid, .Ltmp0-cuserid
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"%s"
	.size	.L.str, 3


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
