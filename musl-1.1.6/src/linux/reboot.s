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
	.file	"src/linux/reboot.bc"
	.globl	reboot
	.align	2
	.type	reboot,%function
reboot:                                 @ @reboot
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r7, lr}
	push	{r7, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	mov	r2, r0
	ldr	r0, .LCPI0_2
	ldr	r1, .LCPI0_3
	mov	r7, #88
	@APP
	svc	#0
	@NO_APP
	pop	{r7, lr}
	b	__syscall_ret
.LCPI0_2:
	.long	4276215469              @ 0xfee1dead
.LCPI0_3:
	.long	672274793               @ 0x28121969
.Ltmp0:
	.size	reboot, .Ltmp0-reboot
	.cantunwind
	.fnend

	.hidden	__syscall_ret

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
