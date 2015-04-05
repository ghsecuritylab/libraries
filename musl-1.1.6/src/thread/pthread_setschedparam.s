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
	.file	"src/thread/pthread_setschedparam.bc"
	.globl	pthread_setschedparam
	.align	2
	.type	pthread_setschedparam,%function
pthread_setschedparam:                  @ @pthread_setschedparam
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	mov	r7, r0
	mov	r8, r2
	mov	r6, r1
	add	r4, r7, #156
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r0, r4
	bl	__lock
	ldr	r0, [r7, #128]
	mov	r5, #3
	cmp	r0, #0
	bne	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                @ %cond.false
	ldr	r0, [r7, #24]
	mov	r7, #156
	mov	r1, r6
	mov	r2, r8
	@APP
	svc	#0
	@NO_APP
	rsb	r5, r0, #0
	b	.LBB0_5
.LBB0_5:                                @ %cond.end
	mov	r0, r4
	bl	__unlock
	mov	r0, r5
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp0:
	.size	pthread_setschedparam, .Ltmp0-pthread_setschedparam
	.cantunwind
	.fnend

	.hidden	__lock
	.hidden	__unlock

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
