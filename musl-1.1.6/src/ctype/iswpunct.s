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
	.file	"src/ctype/iswpunct.bc"
	.globl	iswpunct
	.align	2
	.type	iswpunct,%function
iswpunct:                               @ @iswpunct
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	mov	r1, #0
	cmp	r1, r0, lsr #17
	bne	.LBB0_3
	b	.LBB0_1
.LBB0_1:                                @ %if.then
	ldr	r1, .LCPI0_0
	mov	r3, #31
	and	r3, r3, r0, lsr #3
	ldrb	r2, [r1, r0, lsr #8]
	b	.LBB0_2
.LCPI0_0:
	.long	table
.LBB0_2:                                @ %if.then
	and	r0, r0, #7
	orr	r2, r3, r2, lsl #5
	ldrb	r1, [r1, r2]
	mov	r2, #1
	and	r1, r2, r1, lsr r0
	b	.LBB0_3
.LBB0_3:                                @ %return
	mov	r0, r1
	mov	pc, lr
.Ltmp0:
	.size	iswpunct, .Ltmp0-iswpunct
	.cantunwind
	.fnend

	.globl	__iswpunct_l
	.align	2
	.type	__iswpunct_l,%function
__iswpunct_l:                           @ @__iswpunct_l
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	b	iswpunct
.Ltmp1:
	.size	__iswpunct_l, .Ltmp1-__iswpunct_l
	.cantunwind
	.fnend

	.type	table,%object           @ @table
	.section	.rodata,"a",%progbits
table:
	.asciz	"\022\020\023\024\025\026\027\030\031\032\033\034\035\036\037 !\020\020\"#\020$%&'()*+\020,-.\021/0\021\0211\021\021\02123456789\021\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020:\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020;\020<=>?@A\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020B\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020C\020\020D\020EFG\020H\020I\020\020\020\020JKLM\020\020N\020OP\020\020\020\020Q\020\020\020\020\020\020\020\020\020\020\020\020\020R\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020S\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020TUVW\020\020XY\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020Z\020[\\]^_`ab\020\020\020\020\020\020\020\020\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\376\377\000\374\001\000\000\370\001\000\000x\000\000\000\000\377\373\337\373\000\000\200\000\000\000\200\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000<\000\374\377\340\257\377\377\377\377\377\377\377\377\377\377\337\377\377\377\377\377 @\260\000\000\000\000\000\000\000\000\000\000\000\000\000@\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\374\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\374\000\000\000\000\000\206\376\377\377\377\000@I\000\000\000\000\000\030\000\337\377\000\310\000\000\000\000\000\000\000\001\000<\000\000\000\000\000\000\000\000\000\000\000\000\020\340\001\036\000`\377\277\000\000\000\000\000\000\377\007\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\370\317\003\000\000\000\003\000 \377\177\000\000\000N\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\374\000\000\000\000\000\000\000\000\000\020\000 \036\0000\000\001\000\000\000\000\000\000\000\000\020\000 \000\000\000\000\374\017\000\000\000\000\000\000\000\020\000 \000\000\000\000\000\000\000\000\000\000\000\000\000\020\000 \000\000\000\000\003\000\000\000\000\000\000\000\000\020\000 \000\000\000\000\375\000\000\000\000\000\000\000\000\000\000 \000\000\000\000\377\007\000\000\000\000\000\000\000\000\000 \000\000\000\000\000\377\000\000\000\000\000\000\000\020\000 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000 \000\000\000\000?\002\000\000\000\000\000\000\000\000\000\004\000\000\000\000\020\000\000\000\000\000\000\200\000\200\300\337\000\f\000\000\000\000\000\000\000\000\000\000\000\000\000\037\000\000\000\000\000\000\376\377\377\377\000\374\377\377\000\000\000\000\000\000\000\000\374\000\000\000\000\000\000\300\377\337\377\007\000\000\000\000\000\000\000\000\000\000\200\006\000\374\000\000\030>\000\000\200\277\000\314\000\000\000\000\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\000\000\000\000`\377\377\377\037\000\000\377\003\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000`\000\000\001\000\000\030\000\000\000\000\000\000\000\000\0008\000\000\000\000\020\000\000\000p\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0000\000\000\376\177/\000\000\377\003\377\177\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0161\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\304\377\377\377\377\000\000\000\300\000\000\000\000\000\000\000\000\001\000\340\237\000\000\000\000\177?\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\020\000\020\000\000\374\377\377\377\037\000\000\000\000\000\f\000\000\000\000\000\000@\000\f\360\000\000\000\000\000\000\300\370\000\000\000\000\000\000\000\300\000\000\000\000\000\000\000\000\377\000\377\377\377!\020\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\377\377\377\377\177\000\000\360\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\240\003\340\000\340\000\340\000`\200\370\377\377\377\374\377\377\377\377\377\177\037\374\361\177\377\177\000\000\377\377\377\003\000\000\377\377\377\377\001\000{\003\320\301\257B\000\f\037\274\377\377\000\000\000\000\000\002\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\017\000\377\377\377\377\177\000\000\000\377\007\000\000\377\377\377\377\377\377\377\377\377\377?\000\000\000\000\000\000\374\377\377\376\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\037\377\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\340\207\003\376\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\200\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\377\377\377\377\377\177\377\017\000\000\000\000\000\000\000\000\377\377\377\373\377\377\377\377\377\377\377\377\377\377\017\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377?\000\000\000\377\017\036\377\377\377\001\374\301\340\000\000\000\000\000\000\000\000\000\000\000\036\001\000\000\000\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\377\377\000\000\000\000\377\377\377\377\017\000\000\000\377\377\377\177\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\177\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\377\377\377\377\377\377\377\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\377\377\377\377\377\377\177\000\000\000\000\000\000\300\000\340\000\000\000\000\000\000\000\000\000\000\000\200\017p\000\000\000\000\000\000\000\000\000\000\000\000\000\000\377\000\377\377\177\000\003\000\000\000\000\000\000\000\000\000\000\000\000\006\000\000\000\000\000\000\000\000\000\000\000\000\000\000D\b\000\000\000\017\377\003\000\000\000\000\000\000\360\000\000\000\000\000\000\000\000\000\020\300\000\000\377\377\003\007\000\000\000\000\000\370\000\000\000\000\b\200\000\000\000\000\000\000\000\000\000\000\b\000\377?\000\300\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\360\000\000\200\013\000\000\000\000\000\000\000\200\002\000\000\300\000\000C\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0008\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\200\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\374\377\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\300\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0000\377\377\377\003\177\000\377\377\377\377\367\377\177\017\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\200\376\377\000\374\001\000\000\370\001\000\000\370?\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\177\177\0000\207\377\377\377\377\377\217\377\000\000\000\000\000\000\340\377\377\007\377\017\000\000\000\000\000\000\377\377\377\377\377?\000\000\000\000\017\000\000\000\000\000\000\000\000\000\000\000\000\000\000\200\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\200\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\300\217\000\000\000\200\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\207\377\000\377\001\000\000\000\340\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\376\000\000\000\377\000\000\000\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\377\377\377\177\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\300?\374\377?\000\000\000\003\000\000\000\000\000\000\376\003\000\000\000\000\000\000\000\000\000\000\000\000\000\030\000\017\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\341\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\300\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\017\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\200\007\000\000\000\000\000\000\000\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377?\000\377\377\377\377\177\376\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377?\000\000\000\000\377\377\377\377\377\377\377\377?\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\177\000\377\377\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\b\000\000\000\b\000\000 \000\000\000 \000\000\200\000\000\000\200\000\000\000\002\000\000\000\002\000\000\b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\003\000\377\377\377\377\377\017\377\377\377\377\377\377\377\377\377\377\377\377\017\000\377\177\376\177\376\377\376\377\000\000\000\000\377\007\377\377\377\177\377\377\377\377\377\377\377\017\377\377\377\377\377\007\000\000\000\000\000\000\000\000\300\377\377\377\007\000\377\377\377\377\377\007\377\001\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\377\377\377\377\001\000\277\377\377\377\377\377\377\377\377\037\377\377\017\000\377\377\377\377\337\007\000\000\377\377\001\000\377\377\377\377\377\377\377\177\375\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\036\377\377\377\377\377\377\377?\017\000\377\377\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\370\377\377\377\377\377\377\377\377\341\377\000\000\000\000\000\000\377\377\377\377\377\377\377\377?\000\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\017\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.size	table, 3168


	.weak	iswpunct_l
iswpunct_l = __iswpunct_l
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
