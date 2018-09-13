	.file	"sched_helper.c"
	.text
.Ltext0:
	.type	intr_enable, @function
intr_enable:
.LFB0:
	.file 1 "include/main/interrupt.h"
	.loc 1 68 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 69 0
#APP
# 69 "include/main/interrupt.h" 1
	sti
# 0 "" 2
	.loc 1 70 0
#NO_APP
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	intr_enable, .-intr_enable
	.type	intr_disable, @function
intr_disable:
.LFB1:
	.loc 1 73 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 74 0
#APP
# 74 "include/main/interrupt.h" 1
	cli
# 0 "" 2
	.loc 1 75 0
#NO_APP
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	intr_disable, .-intr_disable
	.type	intr_wait, @function
intr_wait:
.LFB2:
	.loc 1 82 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 89 0
#APP
# 89 "include/main/interrupt.h" 1
	sti
	hlt
# 0 "" 2
	.loc 1 91 0
#NO_APP
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2:
	.size	intr_wait, .-intr_wait
	.type	intr_setipl, @function
intr_setipl:
.LFB3:
	.loc 1 98 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movb	%al, -12(%ebp)
	.loc 1 99 0
	movzbl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	apic_setipl
	.loc 1 100 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE3:
	.size	intr_setipl, .-intr_setipl
	.type	intr_getipl, @function
intr_getipl:
.LFB4:
	.loc 1 104 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 105 0
	call	apic_getipl
	.loc 1 106 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE4:
	.size	intr_getipl, .-intr_getipl
	.type	equals, @function
equals:
.LFB5:
	.file 2 "include/util/debug.h"
	.loc 2 235 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 2 235 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	sete	%al
	movzbl	%al, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE5:
	.size	equals, .-equals
	.type	notequals, @function
notequals:
.LFB6:
	.loc 2 236 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 2 236 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	setne	%al
	movzbl	%al, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE6:
	.size	notequals, .-notequals
	.type	lessthan, @function
lessthan:
.LFB7:
	.loc 2 237 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 2 237 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	setl	%al
	movzbl	%al, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE7:
	.size	lessthan, .-lessthan
	.type	greaterthan, @function
greaterthan:
.LFB8:
	.loc 2 238 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 2 238 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	setg	%al
	movzbl	%al, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE8:
	.size	greaterthan, .-greaterthan
	.type	lessthaneq, @function
lessthaneq:
.LFB9:
	.loc 2 239 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 2 239 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	setle	%al
	movzbl	%al, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE9:
	.size	lessthaneq, .-lessthaneq
	.type	greaterthaneq, @function
greaterthaneq:
.LFB10:
	.loc 2 240 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 2 240 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	setge	%al
	movzbl	%al, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE10:
	.size	greaterthaneq, .-greaterthaneq
	.globl	sched_sleep_on
	.type	sched_sleep_on, @function
sched_sleep_on:
.LFB11:
	.file 3 "proc/sched_helper.c"
	.loc 3 42 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 3 44 0
	movl	curthr, %eax
	movl	$2, 48(%eax)
	.loc 3 45 0
	movl	curthr, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ktqueue_enqueue
	.loc 3 46 0
	call	sched_switch
	.loc 3 47 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE11:
	.size	sched_sleep_on, .-sched_sleep_on
	.section	.rodata
.LC0:
	.string	"%s"
.LC1:
	.string	"proc/sched_helper.c"
.LC2:
	.string	"%s:%d %s(): "
.LC3:
	.string	"(GRADING1C)\n"
.LC4:
	.string	"\033[0m"
	.align 4
.LC5:
	.string	"(tempthr->kt_state==KT_SLEEP_CANCELLABLE)||(tempthr->kt_state==KT_SLEEP)"
.LC6:
	.string	"assertion failed: %s"
.LC7:
	.string	"(GRADING1A 4.a)\n"
	.text
	.globl	sched_wakeup_on
	.type	sched_wakeup_on, @function
sched_wakeup_on:
.LFB12:
	.loc 3 51 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$76, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 3 53 0
	movl	$0, -28(%ebp)
	.loc 3 54 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	sched_queue_empty
	testl	%eax, %eax
	je	.L21
	.loc 3 56 0
	movl	dbg_modes, %eax
	movl	dbg_modes+4, %edx
	movl	%eax, %esi
	andl	$16777216, %esi
	movl	%esi, -48(%ebp)
	movl	%edx, %eax
	andl	$0, %eax
	movl	%eax, -44(%ebp)
	movl	-48(%ebp), %edx
	movl	-44(%ebp), %ecx
	movl	%ecx, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L22
	.loc 3 56 0 is_stmt 0 discriminator 1
	movl	$16777216, (%esp)
	movl	$0, 4(%esp)
	call	dbg_color
	movl	%eax, 4(%esp)
	movl	$.LC0, (%esp)
	call	dbg_print
	movl	$__func__.1317, 12(%esp)
	movl	$56, 8(%esp)
	movl	$.LC1, 4(%esp)
	movl	$.LC2, (%esp)
	call	dbg_print
	movl	$.LC3, (%esp)
	call	dbg_print
	movl	$.LC4, 4(%esp)
	movl	$.LC0, (%esp)
	call	dbg_print
.L22:
	.loc 3 57 0 is_stmt 1
	movl	$0, %eax
	jmp	.L23
.L21:
	.loc 3 59 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ktqueue_dequeue
	movl	%eax, -28(%ebp)
	.loc 3 60 0
	movl	-28(%ebp), %eax
	movl	48(%eax), %eax
	cmpl	$3, %eax
	je	.L24
	.loc 3 60 0 is_stmt 0 discriminator 1
	movl	-28(%ebp), %eax
	movl	48(%eax), %eax
	cmpl	$2, %eax
	je	.L24
	movl	$.LC5, 16(%esp)
	movl	$.LC6, 12(%esp)
	movl	$__func__.1317, 8(%esp)
	movl	$60, 4(%esp)
	movl	$.LC1, (%esp)
	call	dbg_panic
.L24:
	.loc 3 61 0 is_stmt 1
	movl	dbg_modes, %eax
	movl	dbg_modes+4, %edx
	movl	%eax, %edi
	andl	$16777216, %edi
	movl	%edi, -56(%ebp)
	movl	%edx, %eax
	andl	$0, %eax
	movl	%eax, -52(%ebp)
	movl	-56(%ebp), %edx
	movl	-52(%ebp), %ecx
	movl	%ecx, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L25
	.loc 3 61 0 is_stmt 0 discriminator 1
	movl	$16777216, (%esp)
	movl	$0, 4(%esp)
	call	dbg_color
	movl	%eax, 4(%esp)
	movl	$.LC0, (%esp)
	call	dbg_print
	movl	$__func__.1317, 12(%esp)
	movl	$61, 8(%esp)
	movl	$.LC1, 4(%esp)
	movl	$.LC2, (%esp)
	call	dbg_print
	movl	$.LC7, (%esp)
	call	dbg_print
	movl	$.LC4, 4(%esp)
	movl	$.LC0, (%esp)
	call	dbg_print
.L25:
	.loc 3 62 0 is_stmt 1
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	sched_make_runnable
	.loc 3 63 0
	movl	dbg_modes, %eax
	movl	dbg_modes+4, %edx
	movl	%eax, %edi
	andl	$16777216, %edi
	movl	%edi, %ebx
	movl	%edx, %eax
	andl	$0, %eax
	movl	%eax, %esi
	movl	%esi, %eax
	orl	%ebx, %eax
	testl	%eax, %eax
	je	.L26
	.loc 3 63 0 is_stmt 0 discriminator 1
	movl	$16777216, (%esp)
	movl	$0, 4(%esp)
	call	dbg_color
	movl	%eax, 4(%esp)
	movl	$.LC0, (%esp)
	call	dbg_print
	movl	$__func__.1317, 12(%esp)
	movl	$63, 8(%esp)
	movl	$.LC1, 4(%esp)
	movl	$.LC2, (%esp)
	call	dbg_print
	movl	$.LC3, (%esp)
	call	dbg_print
	movl	$.LC4, 4(%esp)
	movl	$.LC0, (%esp)
	call	dbg_print
.L26:
	.loc 3 64 0 is_stmt 1
	movl	-28(%ebp), %eax
.L23:
	.loc 3 65 0
	addl	$76, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE12:
	.size	sched_wakeup_on, .-sched_wakeup_on
	.globl	sched_broadcast_on
	.type	sched_broadcast_on, @function
sched_broadcast_on:
.LFB13:
	.loc 3 69 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 3 71 0
	movl	$0, -12(%ebp)
	.loc 3 72 0
	jmp	.L28
.L29:
	.loc 3 74 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ktqueue_dequeue
	movl	%eax, -12(%ebp)
	.loc 3 75 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	sched_make_runnable
.L28:
	.loc 3 72 0 discriminator 1
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	sched_queue_empty
	testl	%eax, %eax
	je	.L29
	.loc 3 77 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE13:
	.size	sched_broadcast_on, .-sched_broadcast_on
	.section	.rodata
	.type	__func__.1317, @object
	.size	__func__.1317, 16
__func__.1317:
	.string	"sched_wakeup_on"
	.text
.Letext0:
	.file 4 "include/types.h"
	.file 5 "include/util/list.h"
	.file 6 "include/proc/sched.h"
	.file 7 "include/mm/pagetable.h"
	.file 8 "include/proc/context.h"
	.file 9 "include/proc/kthread.h"
	.file 10 "include/proc/proc.h"
	.file 11 "include/vm/vmmap.h"
	.file 12 "include/globals.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x654
	.value	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF612
	.byte	0x1
	.long	.LASF613
	.long	.LASF614
	.long	.Ltext0
	.long	.Letext0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF520
	.uleb128 0x3
	.long	.LASF524
	.byte	0x4
	.byte	0x1a
	.long	0x3b
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF521
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF522
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF523
	.uleb128 0x3
	.long	.LASF525
	.byte	0x4
	.byte	0x1d
	.long	0x5b
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF526
	.byte	0x4
	.byte	0x1e
	.long	0x6d
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF527
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF528
	.uleb128 0x3
	.long	.LASF529
	.byte	0x4
	.byte	0x21
	.long	0x86
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF530
	.uleb128 0x3
	.long	.LASF531
	.byte	0x4
	.byte	0x23
	.long	0x6d
	.uleb128 0x3
	.long	.LASF532
	.byte	0x4
	.byte	0x2b
	.long	0x62
	.uleb128 0x3
	.long	.LASF533
	.byte	0x4
	.byte	0x2f
	.long	0x50
	.uleb128 0x5
	.long	.LASF538
	.byte	0x8
	.byte	0x5
	.byte	0x45
	.long	0xd3
	.uleb128 0x6
	.long	.LASF534
	.byte	0x5
	.byte	0x46
	.long	0xd3
	.byte	0
	.uleb128 0x6
	.long	.LASF535
	.byte	0x5
	.byte	0x47
	.long	0xd3
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xae
	.uleb128 0x3
	.long	.LASF536
	.byte	0x5
	.byte	0x48
	.long	0xae
	.uleb128 0x3
	.long	.LASF537
	.byte	0x5
	.byte	0x48
	.long	0xae
	.uleb128 0x5
	.long	.LASF539
	.byte	0xc
	.byte	0x6
	.byte	0x18
	.long	0x114
	.uleb128 0x6
	.long	.LASF540
	.byte	0x6
	.byte	0x19
	.long	0xd9
	.byte	0
	.uleb128 0x6
	.long	.LASF541
	.byte	0x6
	.byte	0x1a
	.long	0x5b
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	.LASF542
	.byte	0x6
	.byte	0x1b
	.long	0xef
	.uleb128 0x3
	.long	.LASF543
	.byte	0x7
	.byte	0x29
	.long	0x12a
	.uleb128 0x8
	.long	.LASF595
	.byte	0x1
	.uleb128 0x9
	.byte	0x4
	.uleb128 0x5
	.long	.LASF544
	.byte	0x18
	.byte	0x8
	.byte	0x1f
	.long	0x187
	.uleb128 0x6
	.long	.LASF545
	.byte	0x8
	.byte	0x20
	.long	0x62
	.byte	0
	.uleb128 0x6
	.long	.LASF546
	.byte	0x8
	.byte	0x21
	.long	0x62
	.byte	0x4
	.uleb128 0x6
	.long	.LASF547
	.byte	0x8
	.byte	0x22
	.long	0x62
	.byte	0x8
	.uleb128 0x6
	.long	.LASF548
	.byte	0x8
	.byte	0x24
	.long	0x187
	.byte	0xc
	.uleb128 0x6
	.long	.LASF549
	.byte	0x8
	.byte	0x26
	.long	0x8d
	.byte	0x10
	.uleb128 0x6
	.long	.LASF550
	.byte	0x8
	.byte	0x27
	.long	0x98
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x11f
	.uleb128 0x3
	.long	.LASF551
	.byte	0x8
	.byte	0x28
	.long	0x132
	.uleb128 0xa
	.byte	0x4
	.byte	0x9
	.byte	0x23
	.long	0x1bf
	.uleb128 0xb
	.long	.LASF552
	.sleb128 0
	.uleb128 0xb
	.long	.LASF553
	.sleb128 1
	.uleb128 0xb
	.long	.LASF554
	.sleb128 2
	.uleb128 0xb
	.long	.LASF555
	.sleb128 3
	.uleb128 0xb
	.long	.LASF556
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.long	.LASF557
	.byte	0x9
	.byte	0x29
	.long	0x198
	.uleb128 0x5
	.long	.LASF558
	.byte	0x44
	.byte	0x9
	.byte	0x2c
	.long	0x24f
	.uleb128 0x6
	.long	.LASF559
	.byte	0x9
	.byte	0x2d
	.long	0x18d
	.byte	0
	.uleb128 0x6
	.long	.LASF560
	.byte	0x9
	.byte	0x2e
	.long	0x24f
	.byte	0x18
	.uleb128 0x6
	.long	.LASF561
	.byte	0x9
	.byte	0x2f
	.long	0x130
	.byte	0x1c
	.uleb128 0x6
	.long	.LASF562
	.byte	0x9
	.byte	0x30
	.long	0x5b
	.byte	0x20
	.uleb128 0x6
	.long	.LASF563
	.byte	0x9
	.byte	0x31
	.long	0x338
	.byte	0x24
	.uleb128 0x6
	.long	.LASF564
	.byte	0x9
	.byte	0x33
	.long	0x5b
	.byte	0x28
	.uleb128 0x6
	.long	.LASF565
	.byte	0x9
	.byte	0x34
	.long	0x33e
	.byte	0x2c
	.uleb128 0x6
	.long	.LASF566
	.byte	0x9
	.byte	0x35
	.long	0x1bf
	.byte	0x30
	.uleb128 0x6
	.long	.LASF567
	.byte	0x9
	.byte	0x3c
	.long	0xe4
	.byte	0x34
	.uleb128 0x6
	.long	.LASF568
	.byte	0x9
	.byte	0x3d
	.long	0xe4
	.byte	0x3c
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x255
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF569
	.uleb128 0xc
	.long	.LASF570
	.value	0x1d0
	.byte	0xa
	.byte	0x2b
	.long	0x338
	.uleb128 0x6
	.long	.LASF571
	.byte	0xa
	.byte	0x2c
	.long	0xa3
	.byte	0
	.uleb128 0x6
	.long	.LASF572
	.byte	0xa
	.byte	0x2d
	.long	0x39a
	.byte	0x4
	.uleb128 0xd
	.long	.LASF573
	.byte	0xa
	.byte	0x2f
	.long	0xd9
	.value	0x104
	.uleb128 0xd
	.long	.LASF574
	.byte	0xa
	.byte	0x30
	.long	0xd9
	.value	0x10c
	.uleb128 0xd
	.long	.LASF575
	.byte	0xa
	.byte	0x31
	.long	0x338
	.value	0x114
	.uleb128 0xd
	.long	.LASF576
	.byte	0xa
	.byte	0x33
	.long	0x5b
	.value	0x118
	.uleb128 0xd
	.long	.LASF577
	.byte	0xa
	.byte	0x34
	.long	0x38f
	.value	0x11c
	.uleb128 0xd
	.long	.LASF578
	.byte	0xa
	.byte	0x3d
	.long	0x114
	.value	0x120
	.uleb128 0xd
	.long	.LASF579
	.byte	0xa
	.byte	0x3f
	.long	0x187
	.value	0x12c
	.uleb128 0xd
	.long	.LASF580
	.byte	0xa
	.byte	0x41
	.long	0xe4
	.value	0x130
	.uleb128 0xd
	.long	.LASF581
	.byte	0xa
	.byte	0x42
	.long	0xe4
	.value	0x138
	.uleb128 0xd
	.long	.LASF582
	.byte	0xa
	.byte	0x45
	.long	0x3b1
	.value	0x140
	.uleb128 0xd
	.long	.LASF583
	.byte	0xa
	.byte	0x46
	.long	0x3d3
	.value	0x1c0
	.uleb128 0xd
	.long	.LASF584
	.byte	0xa
	.byte	0x49
	.long	0x130
	.value	0x1c4
	.uleb128 0xd
	.long	.LASF585
	.byte	0xa
	.byte	0x4a
	.long	0x130
	.value	0x1c8
	.uleb128 0xd
	.long	.LASF586
	.byte	0xa
	.byte	0x4b
	.long	0x374
	.value	0x1cc
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x25c
	.uleb128 0x7
	.byte	0x4
	.long	0x114
	.uleb128 0x3
	.long	.LASF587
	.byte	0x9
	.byte	0x42
	.long	0x1ca
	.uleb128 0x5
	.long	.LASF588
	.byte	0xc
	.byte	0xb
	.byte	0x20
	.long	0x374
	.uleb128 0x6
	.long	.LASF589
	.byte	0xb
	.byte	0x21
	.long	0xd9
	.byte	0
	.uleb128 0x6
	.long	.LASF590
	.byte	0xb
	.byte	0x22
	.long	0x338
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x34f
	.uleb128 0xa
	.byte	0x4
	.byte	0xa
	.byte	0x26
	.long	0x38f
	.uleb128 0xb
	.long	.LASF591
	.sleb128 0
	.uleb128 0xb
	.long	.LASF592
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.long	.LASF593
	.byte	0xa
	.byte	0x29
	.long	0x37a
	.uleb128 0xe
	.long	0x255
	.long	0x3aa
	.uleb128 0xf
	.long	0x3aa
	.byte	0xff
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF594
	.uleb128 0xe
	.long	0x3c1
	.long	0x3c1
	.uleb128 0xf
	.long	0x3aa
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x3c7
	.uleb128 0x8
	.long	.LASF596
	.byte	0x1
	.uleb128 0x8
	.long	.LASF597
	.byte	0x1
	.uleb128 0x7
	.byte	0x4
	.long	0x3cd
	.uleb128 0x10
	.long	.LASF598
	.byte	0x1
	.byte	0x43
	.long	.LFB0
	.long	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x10
	.long	.LASF599
	.byte	0x1
	.byte	0x48
	.long	.LFB1
	.long	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x10
	.long	.LASF600
	.byte	0x1
	.byte	0x51
	.long	.LFB2
	.long	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x11
	.long	.LASF615
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.long	.LFB3
	.long	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x435
	.uleb128 0x12
	.string	"ipl"
	.byte	0x1
	.byte	0x61
	.long	0x30
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.long	.LASF616
	.byte	0x1
	.byte	0x67
	.long	0x30
	.long	.LFB4
	.long	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x14
	.long	.LASF601
	.byte	0x2
	.byte	0xeb
	.byte	0x1
	.long	0x5b
	.long	.LFB5
	.long	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x47f
	.uleb128 0x12
	.string	"l"
	.byte	0x2
	.byte	0xeb
	.long	0x5b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.string	"r"
	.byte	0x2
	.byte	0xeb
	.long	0x5b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x14
	.long	.LASF602
	.byte	0x2
	.byte	0xec
	.byte	0x1
	.long	0x5b
	.long	.LFB6
	.long	.LFE6
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x4b3
	.uleb128 0x12
	.string	"l"
	.byte	0x2
	.byte	0xec
	.long	0x5b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.string	"r"
	.byte	0x2
	.byte	0xec
	.long	0x5b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x14
	.long	.LASF603
	.byte	0x2
	.byte	0xed
	.byte	0x1
	.long	0x5b
	.long	.LFB7
	.long	.LFE7
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x4e7
	.uleb128 0x12
	.string	"l"
	.byte	0x2
	.byte	0xed
	.long	0x5b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.string	"r"
	.byte	0x2
	.byte	0xed
	.long	0x5b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x14
	.long	.LASF604
	.byte	0x2
	.byte	0xee
	.byte	0x1
	.long	0x5b
	.long	.LFB8
	.long	.LFE8
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x51b
	.uleb128 0x12
	.string	"l"
	.byte	0x2
	.byte	0xee
	.long	0x5b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.string	"r"
	.byte	0x2
	.byte	0xee
	.long	0x5b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x14
	.long	.LASF605
	.byte	0x2
	.byte	0xef
	.byte	0x1
	.long	0x5b
	.long	.LFB9
	.long	.LFE9
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x54f
	.uleb128 0x12
	.string	"l"
	.byte	0x2
	.byte	0xef
	.long	0x5b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.string	"r"
	.byte	0x2
	.byte	0xef
	.long	0x5b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x14
	.long	.LASF606
	.byte	0x2
	.byte	0xf0
	.byte	0x1
	.long	0x5b
	.long	.LFB10
	.long	.LFE10
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x583
	.uleb128 0x12
	.string	"l"
	.byte	0x2
	.byte	0xf0
	.long	0x5b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.string	"r"
	.byte	0x2
	.byte	0xf0
	.long	0x5b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF607
	.byte	0x3
	.byte	0x29
	.byte	0x1
	.long	.LFB11
	.long	.LFE11
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x5a8
	.uleb128 0x12
	.string	"q"
	.byte	0x3
	.byte	0x29
	.long	0x33e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF617
	.byte	0x3
	.byte	0x32
	.byte	0x1
	.long	0x5ef
	.long	.LFB12
	.long	.LFE12
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x5ef
	.uleb128 0x12
	.string	"q"
	.byte	0x3
	.byte	0x32
	.long	0x33e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.long	.LASF609
	.byte	0x3
	.byte	0x35
	.long	0x5ef
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.long	.LASF618
	.long	0x605
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__func__.1317
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x344
	.uleb128 0xe
	.long	0x255
	.long	0x605
	.uleb128 0xf
	.long	0x3aa
	.byte	0xf
	.byte	0
	.uleb128 0x19
	.long	0x5f5
	.uleb128 0x15
	.byte	0x1
	.long	.LASF608
	.byte	0x3
	.byte	0x44
	.byte	0x1
	.long	.LFB13
	.long	.LFE13
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x63d
	.uleb128 0x12
	.string	"q"
	.byte	0x3
	.byte	0x44
	.long	0x33e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.long	.LASF609
	.byte	0x3
	.byte	0x47
	.long	0x5ef
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1a
	.long	.LASF610
	.byte	0xc
	.byte	0x18
	.long	0x5ef
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.long	.LASF611
	.byte	0x2
	.byte	0xa3
	.long	0x7b
	.byte	0x1
	.byte	0x1
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.uleb128 0x2119
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2116
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	0
	.long	0
	.section	.debug_macro,"",@progbits
.Ldebug_macro0:
	.value	0x4
	.byte	0x2
	.long	.Ldebug_line0
	.byte	0x7
	.long	.Ldebug_macro1
	.byte	0x3
	.uleb128 0
	.uleb128 0x3
	.byte	0x3
	.uleb128 0x13
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x15
	.uleb128 0x9
	.byte	0x3
	.uleb128 0x1a
	.uleb128 0x5
	.file 13 "include/kernel.h"
	.byte	0x3
	.uleb128 0x15
	.uleb128 0xd
	.byte	0x3
	.uleb128 0x15
	.uleb128 0x4
	.byte	0x5
	.uleb128 0x17
	.long	.LASF232
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro2
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro3
	.byte	0x4
	.byte	0x3
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0x4
	.byte	0x3
	.uleb128 0x1d
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x17
	.uleb128 0x7
	.byte	0x7
	.long	.Ldebug_macro4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x16
	.uleb128 0xa
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x7
	.long	.Ldebug_macro5
	.byte	0x4
	.file 14 "include/config.h"
	.byte	0x3
	.uleb128 0x1d
	.uleb128 0xe
	.byte	0x7
	.long	.Ldebug_macro6
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro7
	.byte	0x4
	.byte	0x4
	.file 15 "include/errno.h"
	.byte	0x3
	.uleb128 0x14
	.uleb128 0xf
	.byte	0x7
	.long	.Ldebug_macro8
	.byte	0x4
	.byte	0x3
	.uleb128 0x16
	.uleb128 0x1
	.file 16 "include/main/apic.h"
	.byte	0x3
	.uleb128 0x18
	.uleb128 0x10
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro9
	.byte	0x4
	.file 17 "include/util/init.h"
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0x11
	.byte	0x7
	.long	.Ldebug_macro10
	.byte	0x4
	.byte	0x3
	.uleb128 0x1c
	.uleb128 0x2
	.file 18 "include/mm/page.h"
	.byte	0x3
	.uleb128 0x17
	.uleb128 0x12
	.byte	0x7
	.long	.Ldebug_macro11
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro12
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.0.0e664645792a53b987eb2bb1656c3dbe,comdat
.Ldebug_macro1:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0
	.long	.LASF0
	.byte	0x5
	.uleb128 0
	.long	.LASF1
	.byte	0x5
	.uleb128 0
	.long	.LASF2
	.byte	0x5
	.uleb128 0
	.long	.LASF3
	.byte	0x5
	.uleb128 0
	.long	.LASF4
	.byte	0x5
	.uleb128 0
	.long	.LASF5
	.byte	0x5
	.uleb128 0
	.long	.LASF6
	.byte	0x5
	.uleb128 0
	.long	.LASF7
	.byte	0x5
	.uleb128 0
	.long	.LASF8
	.byte	0x5
	.uleb128 0
	.long	.LASF9
	.byte	0x5
	.uleb128 0
	.long	.LASF10
	.byte	0x5
	.uleb128 0
	.long	.LASF11
	.byte	0x5
	.uleb128 0
	.long	.LASF12
	.byte	0x5
	.uleb128 0
	.long	.LASF13
	.byte	0x5
	.uleb128 0
	.long	.LASF14
	.byte	0x5
	.uleb128 0
	.long	.LASF15
	.byte	0x5
	.uleb128 0
	.long	.LASF16
	.byte	0x5
	.uleb128 0
	.long	.LASF17
	.byte	0x5
	.uleb128 0
	.long	.LASF18
	.byte	0x5
	.uleb128 0
	.long	.LASF19
	.byte	0x5
	.uleb128 0
	.long	.LASF20
	.byte	0x5
	.uleb128 0
	.long	.LASF21
	.byte	0x5
	.uleb128 0
	.long	.LASF22
	.byte	0x5
	.uleb128 0
	.long	.LASF23
	.byte	0x5
	.uleb128 0
	.long	.LASF24
	.byte	0x5
	.uleb128 0
	.long	.LASF25
	.byte	0x5
	.uleb128 0
	.long	.LASF26
	.byte	0x5
	.uleb128 0
	.long	.LASF27
	.byte	0x5
	.uleb128 0
	.long	.LASF28
	.byte	0x5
	.uleb128 0
	.long	.LASF29
	.byte	0x5
	.uleb128 0
	.long	.LASF30
	.byte	0x5
	.uleb128 0
	.long	.LASF31
	.byte	0x5
	.uleb128 0
	.long	.LASF32
	.byte	0x5
	.uleb128 0
	.long	.LASF33
	.byte	0x5
	.uleb128 0
	.long	.LASF34
	.byte	0x5
	.uleb128 0
	.long	.LASF35
	.byte	0x5
	.uleb128 0
	.long	.LASF36
	.byte	0x5
	.uleb128 0
	.long	.LASF37
	.byte	0x5
	.uleb128 0
	.long	.LASF38
	.byte	0x5
	.uleb128 0
	.long	.LASF39
	.byte	0x5
	.uleb128 0
	.long	.LASF40
	.byte	0x5
	.uleb128 0
	.long	.LASF41
	.byte	0x5
	.uleb128 0
	.long	.LASF42
	.byte	0x5
	.uleb128 0
	.long	.LASF43
	.byte	0x5
	.uleb128 0
	.long	.LASF44
	.byte	0x5
	.uleb128 0
	.long	.LASF45
	.byte	0x5
	.uleb128 0
	.long	.LASF46
	.byte	0x5
	.uleb128 0
	.long	.LASF47
	.byte	0x5
	.uleb128 0
	.long	.LASF48
	.byte	0x5
	.uleb128 0
	.long	.LASF49
	.byte	0x5
	.uleb128 0
	.long	.LASF50
	.byte	0x5
	.uleb128 0
	.long	.LASF51
	.byte	0x5
	.uleb128 0
	.long	.LASF52
	.byte	0x5
	.uleb128 0
	.long	.LASF53
	.byte	0x5
	.uleb128 0
	.long	.LASF54
	.byte	0x5
	.uleb128 0
	.long	.LASF55
	.byte	0x5
	.uleb128 0
	.long	.LASF56
	.byte	0x5
	.uleb128 0
	.long	.LASF57
	.byte	0x5
	.uleb128 0
	.long	.LASF58
	.byte	0x5
	.uleb128 0
	.long	.LASF59
	.byte	0x5
	.uleb128 0
	.long	.LASF60
	.byte	0x5
	.uleb128 0
	.long	.LASF61
	.byte	0x5
	.uleb128 0
	.long	.LASF62
	.byte	0x5
	.uleb128 0
	.long	.LASF63
	.byte	0x5
	.uleb128 0
	.long	.LASF64
	.byte	0x5
	.uleb128 0
	.long	.LASF65
	.byte	0x5
	.uleb128 0
	.long	.LASF66
	.byte	0x5
	.uleb128 0
	.long	.LASF67
	.byte	0x5
	.uleb128 0
	.long	.LASF68
	.byte	0x5
	.uleb128 0
	.long	.LASF69
	.byte	0x5
	.uleb128 0
	.long	.LASF70
	.byte	0x5
	.uleb128 0
	.long	.LASF71
	.byte	0x5
	.uleb128 0
	.long	.LASF72
	.byte	0x5
	.uleb128 0
	.long	.LASF73
	.byte	0x5
	.uleb128 0
	.long	.LASF74
	.byte	0x5
	.uleb128 0
	.long	.LASF75
	.byte	0x5
	.uleb128 0
	.long	.LASF76
	.byte	0x5
	.uleb128 0
	.long	.LASF77
	.byte	0x5
	.uleb128 0
	.long	.LASF78
	.byte	0x5
	.uleb128 0
	.long	.LASF79
	.byte	0x5
	.uleb128 0
	.long	.LASF80
	.byte	0x5
	.uleb128 0
	.long	.LASF81
	.byte	0x5
	.uleb128 0
	.long	.LASF82
	.byte	0x5
	.uleb128 0
	.long	.LASF83
	.byte	0x5
	.uleb128 0
	.long	.LASF84
	.byte	0x5
	.uleb128 0
	.long	.LASF85
	.byte	0x5
	.uleb128 0
	.long	.LASF86
	.byte	0x5
	.uleb128 0
	.long	.LASF87
	.byte	0x5
	.uleb128 0
	.long	.LASF88
	.byte	0x5
	.uleb128 0
	.long	.LASF89
	.byte	0x5
	.uleb128 0
	.long	.LASF90
	.byte	0x5
	.uleb128 0
	.long	.LASF91
	.byte	0x5
	.uleb128 0
	.long	.LASF92
	.byte	0x5
	.uleb128 0
	.long	.LASF93
	.byte	0x5
	.uleb128 0
	.long	.LASF94
	.byte	0x5
	.uleb128 0
	.long	.LASF95
	.byte	0x5
	.uleb128 0
	.long	.LASF96
	.byte	0x5
	.uleb128 0
	.long	.LASF97
	.byte	0x5
	.uleb128 0
	.long	.LASF98
	.byte	0x5
	.uleb128 0
	.long	.LASF99
	.byte	0x5
	.uleb128 0
	.long	.LASF100
	.byte	0x5
	.uleb128 0
	.long	.LASF101
	.byte	0x5
	.uleb128 0
	.long	.LASF102
	.byte	0x5
	.uleb128 0
	.long	.LASF103
	.byte	0x5
	.uleb128 0
	.long	.LASF104
	.byte	0x5
	.uleb128 0
	.long	.LASF105
	.byte	0x5
	.uleb128 0
	.long	.LASF106
	.byte	0x5
	.uleb128 0
	.long	.LASF107
	.byte	0x5
	.uleb128 0
	.long	.LASF108
	.byte	0x5
	.uleb128 0
	.long	.LASF109
	.byte	0x5
	.uleb128 0
	.long	.LASF110
	.byte	0x5
	.uleb128 0
	.long	.LASF111
	.byte	0x5
	.uleb128 0
	.long	.LASF112
	.byte	0x5
	.uleb128 0
	.long	.LASF113
	.byte	0x5
	.uleb128 0
	.long	.LASF114
	.byte	0x5
	.uleb128 0
	.long	.LASF115
	.byte	0x5
	.uleb128 0
	.long	.LASF116
	.byte	0x5
	.uleb128 0
	.long	.LASF117
	.byte	0x5
	.uleb128 0
	.long	.LASF118
	.byte	0x5
	.uleb128 0
	.long	.LASF119
	.byte	0x5
	.uleb128 0
	.long	.LASF120
	.byte	0x5
	.uleb128 0
	.long	.LASF121
	.byte	0x5
	.uleb128 0
	.long	.LASF122
	.byte	0x5
	.uleb128 0
	.long	.LASF123
	.byte	0x5
	.uleb128 0
	.long	.LASF124
	.byte	0x5
	.uleb128 0
	.long	.LASF125
	.byte	0x5
	.uleb128 0
	.long	.LASF126
	.byte	0x5
	.uleb128 0
	.long	.LASF127
	.byte	0x5
	.uleb128 0
	.long	.LASF128
	.byte	0x5
	.uleb128 0
	.long	.LASF129
	.byte	0x5
	.uleb128 0
	.long	.LASF130
	.byte	0x5
	.uleb128 0
	.long	.LASF131
	.byte	0x5
	.uleb128 0
	.long	.LASF132
	.byte	0x5
	.uleb128 0
	.long	.LASF133
	.byte	0x5
	.uleb128 0
	.long	.LASF134
	.byte	0x5
	.uleb128 0
	.long	.LASF135
	.byte	0x5
	.uleb128 0
	.long	.LASF136
	.byte	0x5
	.uleb128 0
	.long	.LASF137
	.byte	0x5
	.uleb128 0
	.long	.LASF138
	.byte	0x5
	.uleb128 0
	.long	.LASF139
	.byte	0x5
	.uleb128 0
	.long	.LASF140
	.byte	0x5
	.uleb128 0
	.long	.LASF141
	.byte	0x5
	.uleb128 0
	.long	.LASF142
	.byte	0x5
	.uleb128 0
	.long	.LASF143
	.byte	0x5
	.uleb128 0
	.long	.LASF144
	.byte	0x5
	.uleb128 0
	.long	.LASF145
	.byte	0x5
	.uleb128 0
	.long	.LASF146
	.byte	0x5
	.uleb128 0
	.long	.LASF147
	.byte	0x5
	.uleb128 0
	.long	.LASF148
	.byte	0x5
	.uleb128 0
	.long	.LASF149
	.byte	0x5
	.uleb128 0
	.long	.LASF150
	.byte	0x5
	.uleb128 0
	.long	.LASF151
	.byte	0x5
	.uleb128 0
	.long	.LASF152
	.byte	0x5
	.uleb128 0
	.long	.LASF153
	.byte	0x5
	.uleb128 0
	.long	.LASF154
	.byte	0x5
	.uleb128 0
	.long	.LASF155
	.byte	0x5
	.uleb128 0
	.long	.LASF156
	.byte	0x5
	.uleb128 0
	.long	.LASF157
	.byte	0x5
	.uleb128 0
	.long	.LASF158
	.byte	0x5
	.uleb128 0
	.long	.LASF159
	.byte	0x5
	.uleb128 0
	.long	.LASF160
	.byte	0x5
	.uleb128 0
	.long	.LASF161
	.byte	0x5
	.uleb128 0
	.long	.LASF162
	.byte	0x5
	.uleb128 0
	.long	.LASF163
	.byte	0x5
	.uleb128 0
	.long	.LASF164
	.byte	0x5
	.uleb128 0
	.long	.LASF165
	.byte	0x5
	.uleb128 0
	.long	.LASF166
	.byte	0x5
	.uleb128 0
	.long	.LASF167
	.byte	0x5
	.uleb128 0
	.long	.LASF168
	.byte	0x5
	.uleb128 0
	.long	.LASF169
	.byte	0x5
	.uleb128 0
	.long	.LASF170
	.byte	0x5
	.uleb128 0
	.long	.LASF171
	.byte	0x5
	.uleb128 0
	.long	.LASF172
	.byte	0x5
	.uleb128 0
	.long	.LASF173
	.byte	0x5
	.uleb128 0
	.long	.LASF174
	.byte	0x5
	.uleb128 0
	.long	.LASF175
	.byte	0x5
	.uleb128 0
	.long	.LASF176
	.byte	0x5
	.uleb128 0
	.long	.LASF177
	.byte	0x5
	.uleb128 0
	.long	.LASF178
	.byte	0x5
	.uleb128 0
	.long	.LASF179
	.byte	0x5
	.uleb128 0
	.long	.LASF180
	.byte	0x5
	.uleb128 0
	.long	.LASF181
	.byte	0x5
	.uleb128 0
	.long	.LASF182
	.byte	0x5
	.uleb128 0
	.long	.LASF183
	.byte	0x5
	.uleb128 0
	.long	.LASF184
	.byte	0x5
	.uleb128 0
	.long	.LASF185
	.byte	0x5
	.uleb128 0
	.long	.LASF186
	.byte	0x5
	.uleb128 0
	.long	.LASF187
	.byte	0x5
	.uleb128 0
	.long	.LASF188
	.byte	0x5
	.uleb128 0
	.long	.LASF189
	.byte	0x5
	.uleb128 0
	.long	.LASF190
	.byte	0x5
	.uleb128 0
	.long	.LASF191
	.byte	0x5
	.uleb128 0
	.long	.LASF192
	.byte	0x5
	.uleb128 0
	.long	.LASF193
	.byte	0x5
	.uleb128 0
	.long	.LASF194
	.byte	0x5
	.uleb128 0
	.long	.LASF195
	.byte	0x5
	.uleb128 0
	.long	.LASF196
	.byte	0x5
	.uleb128 0
	.long	.LASF197
	.byte	0x5
	.uleb128 0
	.long	.LASF198
	.byte	0x5
	.uleb128 0
	.long	.LASF199
	.byte	0x5
	.uleb128 0
	.long	.LASF200
	.byte	0x5
	.uleb128 0
	.long	.LASF201
	.byte	0x5
	.uleb128 0
	.long	.LASF202
	.byte	0x5
	.uleb128 0
	.long	.LASF203
	.byte	0x5
	.uleb128 0
	.long	.LASF204
	.byte	0x5
	.uleb128 0
	.long	.LASF205
	.byte	0x5
	.uleb128 0
	.long	.LASF206
	.byte	0x5
	.uleb128 0
	.long	.LASF207
	.byte	0x5
	.uleb128 0
	.long	.LASF208
	.byte	0x5
	.uleb128 0
	.long	.LASF209
	.byte	0x5
	.uleb128 0
	.long	.LASF210
	.byte	0x5
	.uleb128 0
	.long	.LASF211
	.byte	0x5
	.uleb128 0
	.long	.LASF212
	.byte	0x5
	.uleb128 0
	.long	.LASF213
	.byte	0x5
	.uleb128 0
	.long	.LASF214
	.byte	0x5
	.uleb128 0
	.long	.LASF215
	.byte	0x5
	.uleb128 0
	.long	.LASF216
	.byte	0x5
	.uleb128 0
	.long	.LASF217
	.byte	0x5
	.uleb128 0
	.long	.LASF218
	.byte	0x5
	.uleb128 0
	.long	.LASF219
	.byte	0x5
	.uleb128 0
	.long	.LASF220
	.byte	0x5
	.uleb128 0
	.long	.LASF221
	.byte	0x5
	.uleb128 0
	.long	.LASF222
	.byte	0x5
	.uleb128 0
	.long	.LASF223
	.byte	0x5
	.uleb128 0
	.long	.LASF224
	.byte	0x5
	.uleb128 0
	.long	.LASF225
	.byte	0x5
	.uleb128 0
	.long	.LASF226
	.byte	0x5
	.uleb128 0
	.long	.LASF227
	.byte	0x5
	.uleb128 0
	.long	.LASF228
	.byte	0x5
	.uleb128 0
	.long	.LASF229
	.byte	0x5
	.uleb128 0
	.long	.LASF230
	.byte	0x5
	.uleb128 0
	.long	.LASF231
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.kernel.h.42.ef81c40607fb4b50bc36151e2d9b7464,comdat
.Ldebug_macro2:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF233
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF234
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF235
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF236
	.byte	0x5
	.uleb128 0x31
	.long	.LASF237
	.byte	0x5
	.uleb128 0x36
	.long	.LASF238
	.byte	0x5
	.uleb128 0x39
	.long	.LASF239
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF240
	.byte	0x5
	.uleb128 0x47
	.long	.LASF241
	.byte	0x5
	.uleb128 0x48
	.long	.LASF242
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF243
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.list.h.74.e893a2db0b9482089e43ef16892a09f3,comdat
.Ldebug_macro3:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF244
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF245
	.byte	0x5
	.uleb128 0x52
	.long	.LASF246
	.byte	0x5
	.uleb128 0x57
	.long	.LASF247
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF248
	.byte	0x5
	.uleb128 0x64
	.long	.LASF249
	.byte	0x5
	.uleb128 0x67
	.long	.LASF250
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF251
	.byte	0x5
	.uleb128 0x74
	.long	.LASF252
	.byte	0x5
	.uleb128 0x77
	.long	.LASF253
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF254
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF255
	.byte	0x5
	.uleb128 0x80
	.long	.LASF256
	.byte	0x5
	.uleb128 0x83
	.long	.LASF257
	.byte	0x5
	.uleb128 0x8e
	.long	.LASF258
	.byte	0x5
	.uleb128 0x99
	.long	.LASF259
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.pagetable.h.21.7984d0fb6b9a4732a0dd1518d8ba3ea7,comdat
.Ldebug_macro4:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x15
	.long	.LASF260
	.byte	0x5
	.uleb128 0x16
	.long	.LASF261
	.byte	0x5
	.uleb128 0x17
	.long	.LASF262
	.byte	0x5
	.uleb128 0x18
	.long	.LASF263
	.byte	0x5
	.uleb128 0x19
	.long	.LASF264
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF265
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF266
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF267
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF268
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF269
	.byte	0x5
	.uleb128 0x20
	.long	.LASF270
	.byte	0x5
	.uleb128 0x21
	.long	.LASF271
	.byte	0x5
	.uleb128 0x22
	.long	.LASF272
	.byte	0x5
	.uleb128 0x23
	.long	.LASF273
	.byte	0x5
	.uleb128 0x24
	.long	.LASF274
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.vmmap.h.25.115d35caca53c7b0de9c750bc4fa47ec,comdat
.Ldebug_macro5:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x19
	.long	.LASF275
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF276
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.config.h.32.51ca44199f8ad46c63980589bd3247aa,comdat
.Ldebug_macro6:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x20
	.long	.LASF277
	.byte	0x5
	.uleb128 0x21
	.long	.LASF278
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF279
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF280
	.byte	0x5
	.uleb128 0x30
	.long	.LASF281
	.byte	0x5
	.uleb128 0x31
	.long	.LASF282
	.byte	0x5
	.uleb128 0x38
	.long	.LASF283
	.byte	0x5
	.uleb128 0x39
	.long	.LASF284
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF285
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF286
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF287
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF288
	.byte	0x5
	.uleb128 0x40
	.long	.LASF289
	.byte	0x5
	.uleb128 0x46
	.long	.LASF290
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.proc.h.31.0010f01140e497165662ba65048ec29f,comdat
.Ldebug_macro7:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF291
	.byte	0x5
	.uleb128 0x20
	.long	.LASF292
	.byte	0x5
	.uleb128 0x51
	.long	.LASF293
	.byte	0x5
	.uleb128 0x52
	.long	.LASF294
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.errno.h.30.897102df9ec48b93d2dca829e18760d3,comdat
.Ldebug_macro8:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF295
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF296
	.byte	0x5
	.uleb128 0x20
	.long	.LASF297
	.byte	0x5
	.uleb128 0x21
	.long	.LASF298
	.byte	0x5
	.uleb128 0x22
	.long	.LASF299
	.byte	0x5
	.uleb128 0x23
	.long	.LASF300
	.byte	0x5
	.uleb128 0x24
	.long	.LASF301
	.byte	0x5
	.uleb128 0x25
	.long	.LASF302
	.byte	0x5
	.uleb128 0x26
	.long	.LASF303
	.byte	0x5
	.uleb128 0x27
	.long	.LASF304
	.byte	0x5
	.uleb128 0x28
	.long	.LASF305
	.byte	0x5
	.uleb128 0x29
	.long	.LASF306
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF307
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF308
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF309
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF310
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF311
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF312
	.byte	0x5
	.uleb128 0x30
	.long	.LASF313
	.byte	0x5
	.uleb128 0x31
	.long	.LASF314
	.byte	0x5
	.uleb128 0x32
	.long	.LASF315
	.byte	0x5
	.uleb128 0x33
	.long	.LASF316
	.byte	0x5
	.uleb128 0x34
	.long	.LASF317
	.byte	0x5
	.uleb128 0x35
	.long	.LASF318
	.byte	0x5
	.uleb128 0x36
	.long	.LASF319
	.byte	0x5
	.uleb128 0x37
	.long	.LASF320
	.byte	0x5
	.uleb128 0x38
	.long	.LASF321
	.byte	0x5
	.uleb128 0x39
	.long	.LASF322
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF323
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF324
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF325
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF326
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF327
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF328
	.byte	0x5
	.uleb128 0x41
	.long	.LASF329
	.byte	0x5
	.uleb128 0x42
	.long	.LASF330
	.byte	0x5
	.uleb128 0x43
	.long	.LASF331
	.byte	0x5
	.uleb128 0x44
	.long	.LASF332
	.byte	0x5
	.uleb128 0x45
	.long	.LASF333
	.byte	0x5
	.uleb128 0x46
	.long	.LASF334
	.byte	0x5
	.uleb128 0x47
	.long	.LASF335
	.byte	0x5
	.uleb128 0x48
	.long	.LASF336
	.byte	0x5
	.uleb128 0x49
	.long	.LASF337
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF338
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF339
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF340
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF341
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF342
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF343
	.byte	0x5
	.uleb128 0x50
	.long	.LASF344
	.byte	0x5
	.uleb128 0x51
	.long	.LASF345
	.byte	0x5
	.uleb128 0x52
	.long	.LASF346
	.byte	0x5
	.uleb128 0x53
	.long	.LASF347
	.byte	0x5
	.uleb128 0x54
	.long	.LASF348
	.byte	0x5
	.uleb128 0x55
	.long	.LASF349
	.byte	0x5
	.uleb128 0x56
	.long	.LASF350
	.byte	0x5
	.uleb128 0x57
	.long	.LASF351
	.byte	0x5
	.uleb128 0x59
	.long	.LASF352
	.byte	0x5
	.uleb128 0x5b
	.long	.LASF353
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF354
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF355
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF356
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF357
	.byte	0x5
	.uleb128 0x60
	.long	.LASF358
	.byte	0x5
	.uleb128 0x61
	.long	.LASF359
	.byte	0x5
	.uleb128 0x62
	.long	.LASF360
	.byte	0x5
	.uleb128 0x63
	.long	.LASF361
	.byte	0x5
	.uleb128 0x64
	.long	.LASF362
	.byte	0x5
	.uleb128 0x65
	.long	.LASF363
	.byte	0x5
	.uleb128 0x66
	.long	.LASF364
	.byte	0x5
	.uleb128 0x67
	.long	.LASF365
	.byte	0x5
	.uleb128 0x68
	.long	.LASF366
	.byte	0x5
	.uleb128 0x69
	.long	.LASF367
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF368
	.byte	0x5
	.uleb128 0x6b
	.long	.LASF369
	.byte	0x5
	.uleb128 0x6c
	.long	.LASF370
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF371
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF372
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF373
	.byte	0x5
	.uleb128 0x70
	.long	.LASF374
	.byte	0x5
	.uleb128 0x71
	.long	.LASF375
	.byte	0x5
	.uleb128 0x72
	.long	.LASF376
	.byte	0x5
	.uleb128 0x73
	.long	.LASF377
	.byte	0x5
	.uleb128 0x74
	.long	.LASF378
	.byte	0x5
	.uleb128 0x75
	.long	.LASF379
	.byte	0x5
	.uleb128 0x76
	.long	.LASF380
	.byte	0x5
	.uleb128 0x77
	.long	.LASF381
	.byte	0x5
	.uleb128 0x78
	.long	.LASF382
	.byte	0x5
	.uleb128 0x79
	.long	.LASF383
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF384
	.byte	0x5
	.uleb128 0x7b
	.long	.LASF385
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF386
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF387
	.byte	0x5
	.uleb128 0x7e
	.long	.LASF388
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF389
	.byte	0x5
	.uleb128 0x80
	.long	.LASF390
	.byte	0x5
	.uleb128 0x81
	.long	.LASF391
	.byte	0x5
	.uleb128 0x82
	.long	.LASF392
	.byte	0x5
	.uleb128 0x83
	.long	.LASF393
	.byte	0x5
	.uleb128 0x84
	.long	.LASF394
	.byte	0x5
	.uleb128 0x85
	.long	.LASF395
	.byte	0x5
	.uleb128 0x86
	.long	.LASF396
	.byte	0x5
	.uleb128 0x87
	.long	.LASF397
	.byte	0x5
	.uleb128 0x88
	.long	.LASF398
	.byte	0x5
	.uleb128 0x89
	.long	.LASF399
	.byte	0x5
	.uleb128 0x8a
	.long	.LASF400
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF401
	.byte	0x5
	.uleb128 0x8c
	.long	.LASF402
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF403
	.byte	0x5
	.uleb128 0x8e
	.long	.LASF404
	.byte	0x5
	.uleb128 0x8f
	.long	.LASF405
	.byte	0x5
	.uleb128 0x90
	.long	.LASF406
	.byte	0x5
	.uleb128 0x91
	.long	.LASF407
	.byte	0x5
	.uleb128 0x92
	.long	.LASF408
	.byte	0x5
	.uleb128 0x93
	.long	.LASF409
	.byte	0x5
	.uleb128 0x94
	.long	.LASF410
	.byte	0x5
	.uleb128 0x95
	.long	.LASF411
	.byte	0x5
	.uleb128 0x96
	.long	.LASF412
	.byte	0x5
	.uleb128 0x97
	.long	.LASF413
	.byte	0x5
	.uleb128 0x98
	.long	.LASF414
	.byte	0x5
	.uleb128 0x99
	.long	.LASF415
	.byte	0x5
	.uleb128 0x9a
	.long	.LASF416
	.byte	0x5
	.uleb128 0x9c
	.long	.LASF417
	.byte	0x5
	.uleb128 0x9d
	.long	.LASF418
	.byte	0x5
	.uleb128 0x9e
	.long	.LASF419
	.byte	0x5
	.uleb128 0x9f
	.long	.LASF420
	.byte	0x5
	.uleb128 0xa0
	.long	.LASF421
	.byte	0x5
	.uleb128 0xa1
	.long	.LASF422
	.byte	0x5
	.uleb128 0xa2
	.long	.LASF423
	.byte	0x5
	.uleb128 0xa5
	.long	.LASF424
	.byte	0x5
	.uleb128 0xa6
	.long	.LASF425
	.byte	0x5
	.uleb128 0xa9
	.long	.LASF426
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.interrupt.h.26.9a7548fee3a6d40b9a98a938f036ce2b,comdat
.Ldebug_macro9:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF427
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF428
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF429
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF430
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF431
	.byte	0x5
	.uleb128 0x20
	.long	.LASF432
	.byte	0x5
	.uleb128 0x21
	.long	.LASF433
	.byte	0x5
	.uleb128 0x22
	.long	.LASF434
	.byte	0x5
	.uleb128 0x23
	.long	.LASF435
	.byte	0x5
	.uleb128 0x28
	.long	.LASF436
	.byte	0x5
	.uleb128 0x29
	.long	.LASF437
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.init.h.21.12b3240aeb2f2464ae4c8c1b43811184,comdat
.Ldebug_macro10:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x15
	.long	.LASF438
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF439
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.page.h.28.82b38a267fcd1fcab2bb3d81713f3559,comdat
.Ldebug_macro11:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF440
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF441
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF442
	.byte	0x5
	.uleb128 0x20
	.long	.LASF443
	.byte	0x5
	.uleb128 0x21
	.long	.LASF444
	.byte	0x5
	.uleb128 0x22
	.long	.LASF445
	.byte	0x5
	.uleb128 0x24
	.long	.LASF446
	.byte	0x5
	.uleb128 0x25
	.long	.LASF447
	.byte	0x5
	.uleb128 0x27
	.long	.LASF448
	.byte	0x5
	.uleb128 0x29
	.long	.LASF449
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF450
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.debug.h.44.63925e77bcf481d7929b9179119fc5a0,comdat
.Ldebug_macro12:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF451
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF452
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF453
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF454
	.byte	0x5
	.uleb128 0x30
	.long	.LASF455
	.byte	0x5
	.uleb128 0x31
	.long	.LASF456
	.byte	0x5
	.uleb128 0x32
	.long	.LASF457
	.byte	0x5
	.uleb128 0x33
	.long	.LASF458
	.byte	0x5
	.uleb128 0x34
	.long	.LASF459
	.byte	0x5
	.uleb128 0x36
	.long	.LASF460
	.byte	0x5
	.uleb128 0x37
	.long	.LASF461
	.byte	0x5
	.uleb128 0x38
	.long	.LASF462
	.byte	0x5
	.uleb128 0x39
	.long	.LASF463
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF464
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF465
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF466
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF467
	.byte	0x5
	.uleb128 0x43
	.long	.LASF468
	.byte	0x5
	.uleb128 0x44
	.long	.LASF469
	.byte	0x5
	.uleb128 0x45
	.long	.LASF470
	.byte	0x5
	.uleb128 0x46
	.long	.LASF471
	.byte	0x5
	.uleb128 0x47
	.long	.LASF472
	.byte	0x5
	.uleb128 0x48
	.long	.LASF473
	.byte	0x5
	.uleb128 0x49
	.long	.LASF474
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF475
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF476
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF477
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF478
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF479
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF480
	.byte	0x5
	.uleb128 0x50
	.long	.LASF481
	.byte	0x5
	.uleb128 0x51
	.long	.LASF482
	.byte	0x5
	.uleb128 0x52
	.long	.LASF483
	.byte	0x5
	.uleb128 0x53
	.long	.LASF484
	.byte	0x5
	.uleb128 0x54
	.long	.LASF485
	.byte	0x5
	.uleb128 0x55
	.long	.LASF486
	.byte	0x5
	.uleb128 0x56
	.long	.LASF487
	.byte	0x5
	.uleb128 0x57
	.long	.LASF488
	.byte	0x5
	.uleb128 0x58
	.long	.LASF489
	.byte	0x5
	.uleb128 0x59
	.long	.LASF490
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF491
	.byte	0x5
	.uleb128 0x5b
	.long	.LASF492
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF493
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF494
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF495
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF496
	.byte	0x5
	.uleb128 0x60
	.long	.LASF497
	.byte	0x5
	.uleb128 0x61
	.long	.LASF498
	.byte	0x5
	.uleb128 0x63
	.long	.LASF499
	.byte	0x5
	.uleb128 0x64
	.long	.LASF500
	.byte	0x5
	.uleb128 0x65
	.long	.LASF501
	.byte	0x5
	.uleb128 0x66
	.long	.LASF502
	.byte	0x5
	.uleb128 0x67
	.long	.LASF503
	.byte	0x5
	.uleb128 0x68
	.long	.LASF504
	.byte	0x5
	.uleb128 0x72
	.long	.LASF505
	.byte	0x5
	.uleb128 0xac
	.long	.LASF506
	.byte	0x5
	.uleb128 0xb5
	.long	.LASF507
	.byte	0x5
	.uleb128 0xbf
	.long	.LASF508
	.byte	0x5
	.uleb128 0xc8
	.long	.LASF509
	.byte	0x5
	.uleb128 0xd1
	.long	.LASF510
	.byte	0x5
	.uleb128 0xdc
	.long	.LASF511
	.byte	0x5
	.uleb128 0xdf
	.long	.LASF512
	.byte	0x5
	.uleb128 0xe1
	.long	.LASF513
	.byte	0x5
	.uleb128 0xf2
	.long	.LASF514
	.byte	0x5
	.uleb128 0xf3
	.long	.LASF515
	.byte	0x5
	.uleb128 0xf4
	.long	.LASF516
	.byte	0x5
	.uleb128 0xf5
	.long	.LASF517
	.byte	0x5
	.uleb128 0xf6
	.long	.LASF518
	.byte	0x5
	.uleb128 0xf7
	.long	.LASF519
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF330:
	.string	"ENAMETOOLONG 36"
.LASF364:
	.string	"ECOMM 70"
.LASF75:
	.string	"__PTRDIFF_MAX__ 2147483647"
.LASF458:
	.string	"_CYAN_ \"\\x1b[36;40m\""
.LASF536:
	.string	"list_t"
.LASF70:
	.string	"__LONG_LONG_MAX__ 9223372036854775807LL"
.LASF175:
	.string	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD"
.LASF236:
	.string	"offsetof(type,member) ((uint32_t)((char*)&((type *)(0))->member - (char*)0))"
.LASF140:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF117:
	.string	"__FLT_EVAL_METHOD__ 2"
.LASF550:
	.string	"c_kstacksz"
.LASF128:
	.string	"__FLT_MIN__ 1.17549435082228750797e-38F"
.LASF239:
	.string	"MAX(a,b) ((a) > (b) ? (a) : (b))"
.LASF399:
	.string	"ENOBUFS 105"
.LASF420:
	.string	"ENOKEY 126"
.LASF201:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF401:
	.string	"ENOTCONN 107"
.LASF174:
	.string	"__DEC64_EPSILON__ 1E-15DD"
.LASF91:
	.string	"__INT_LEAST8_MAX__ 127"
.LASF582:
	.string	"p_files"
.LASF243:
	.string	"QUOTE(...) QUOTE_BY_NAME(__VA_ARGS__)"
.LASF83:
	.string	"__INT8_MAX__ 127"
.LASF100:
	.string	"__UINT8_C(c) c"
.LASF237:
	.string	"NOT_YET_IMPLEMENTED(f) (dbg_print(\"Not yet implemented: %s, file %s, line %d\\n\", f, __FILE__, __LINE__))"
.LASF276:
	.string	"VMMAP_DIR_HILO 2"
.LASF605:
	.string	"lessthaneq"
.LASF585:
	.string	"p_start_brk"
.LASF346:
	.string	"EBADE 52"
.LASF540:
	.string	"tq_list"
.LASF136:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF194:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF549:
	.string	"c_kstack"
.LASF436:
	.string	"IPL_LOW 0"
.LASF213:
	.string	"__i686__ 1"
.LASF608:
	.string	"sched_broadcast_on"
.LASF206:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF425:
	.string	"ENOTRECOVERABLE 131"
.LASF512:
	.string	"KASSERT(x) do { if (!(x)) panic(\"assertion failed: %s\", #x); } while(0)"
.LASF156:
	.string	"__LDBL_MIN__ 3.36210314311209350626e-4932L"
.LASF515:
	.string	"KASSERTNEQ(l,r) KASSERT_GENERIC(l, r, notequals, \"!=\")"
.LASF158:
	.string	"__LDBL_DENORM_MIN__ 3.64519953188247460253e-4951L"
.LASF405:
	.string	"ECONNREFUSED 111"
.LASF4:
	.string	"__GNUC_MINOR__ 8"
.LASF527:
	.string	"unsigned int"
.LASF271:
	.string	"PT_ACCESSED 0x020"
.LASF297:
	.string	"ESRCH 3"
.LASF21:
	.string	"__SIZEOF_SIZE_T__ 4"
.LASF36:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF392:
	.string	"EADDRINUSE 98"
.LASF378:
	.string	"EILSEQ 84"
.LASF300:
	.string	"ENXIO 6"
.LASF3:
	.string	"__GNUC__ 4"
.LASF25:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF510:
	.string	"dbg_active(mode) (dbg_modes & (mode))"
.LASF488:
	.string	"DBG_EXEC DBG_MODE(19)"
.LASF389:
	.string	"EOPNOTSUPP 95"
.LASF134:
	.string	"__DBL_MANT_DIG__ 53"
.LASF54:
	.string	"__UINT_LEAST64_TYPE__ long long unsigned int"
.LASF375:
	.string	"ELIBSCN 81"
.LASF10:
	.string	"__ATOMIC_RELEASE 3"
.LASF31:
	.string	"__PTRDIFF_TYPE__ int"
.LASF525:
	.string	"int32_t"
.LASF40:
	.string	"__INT16_TYPE__ short int"
.LASF502:
	.string	"DBG_ELF DBG_MODE(37)"
.LASF167:
	.string	"__DEC32_EPSILON__ 1E-6DF"
.LASF386:
	.string	"ENOPROTOOPT 92"
.LASF149:
	.string	"__LDBL_DIG__ 18"
.LASF469:
	.string	"DBG_CORE DBG_MODE(0)"
.LASF8:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF306:
	.string	"ENOMEM 12"
.LASF94:
	.string	"__INT16_C(c) c"
.LASF590:
	.string	"vmm_proc"
.LASF17:
	.string	"__SIZEOF_SHORT__ 2"
.LASF494:
	.string	"DBG_OSYSCALL DBG_MODE(25)"
.LASF130:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092e-45F"
.LASF47:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF298:
	.string	"EINTR 4"
.LASF279:
	.string	"KMEM_FRAC(x) (((x)>>2)+((x)>>3))"
.LASF473:
	.string	"DBG_DISK DBG_MODE(4)"
.LASF80:
	.string	"__UINTMAX_C(c) c ## ULL"
.LASF108:
	.string	"__INT_FAST16_MAX__ 2147483647"
.LASF571:
	.string	"p_pid"
.LASF27:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF99:
	.string	"__UINT_LEAST8_MAX__ 255"
.LASF518:
	.string	"KASSERT_GREQ(l,r) KASSERT_GENERIC(l, r, greaterthaneq, \">=\")"
.LASF66:
	.string	"__SCHAR_MAX__ 127"
.LASF72:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF251:
	.string	"list_remove(link) do { list_link_t *ll = (link); list_link_t *prev = ll->l_prev; list_link_t *next = ll->l_next; prev->l_next = next; next->l_prev = prev; ll->l_next = ll->l_prev = NULL; } while(0)"
.LASF127:
	.string	"__FLT_MAX__ 3.40282346638528859812e+38F"
.LASF372:
	.string	"EREMCHG 78"
.LASF182:
	.string	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL"
.LASF55:
	.string	"__INT_FAST8_TYPE__ signed char"
.LASF7:
	.string	"__ATOMIC_RELAXED 0"
.LASF247:
	.string	"list_empty(list) ((list)->l_next == (list))"
.LASF537:
	.string	"list_link_t"
.LASF367:
	.string	"EDOTDOT 73"
.LASF368:
	.string	"EBADMSG 74"
.LASF358:
	.string	"ENONET 64"
.LASF507:
	.string	"dbg(mode,...) do { if (dbg_active(mode)) { dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"%s:%d %s(): \",__FILE__, __LINE__, __func__); dbg_print(__VA_ARGS__); dbg_print(\"%s\", _NORMAL_); } } while(0)"
.LASF106:
	.string	"__UINT64_C(c) c ## ULL"
.LASF327:
	.string	"EDOM 33"
.LASF430:
	.string	"INTR_PAGE_FAULT 0x0e"
.LASF223:
	.string	"__DECIMAL_BID_FORMAT__ 1"
.LASF607:
	.string	"sched_sleep_on"
.LASF319:
	.string	"ENOTTY 25"
.LASF90:
	.string	"__UINT64_MAX__ 18446744073709551615ULL"
.LASF556:
	.string	"KT_EXITED"
.LASF58:
	.string	"__INT_FAST64_TYPE__ long long int"
.LASF538:
	.string	"list"
.LASF92:
	.string	"__INT8_C(c) c"
.LASF520:
	.string	"signed char"
.LASF514:
	.string	"KASSERTEQ(l,r) KASSERT_GENERIC(l, r, equals, \"==\")"
.LASF76:
	.string	"__SIZE_MAX__ 4294967295U"
.LASF49:
	.string	"__INT_LEAST32_TYPE__ int"
.LASF289:
	.string	"VFS_ROOTFS_DEV \"disk0\""
.LASF476:
	.string	"DBG_PAGEALLOC DBG_MODE(7)"
.LASF526:
	.string	"uint32_t"
.LASF345:
	.string	"EL2HLT 51"
.LASF339:
	.string	"EL2NSYNC 45"
.LASF463:
	.string	"_BBLUE_ \"\\x1b[1;34;40m\""
.LASF250:
	.string	"list_insert_tail(list,link) list_insert_before(list, link)"
.LASF349:
	.string	"ENOANO 55"
.LASF238:
	.string	"MIN(a,b) ((a) < (b) ? (a) : (b))"
.LASF441:
	.string	"PAGE_SIZE ((uint32_t)(1UL<<PAGE_SHIFT))"
.LASF109:
	.string	"__INT_FAST32_MAX__ 2147483647"
.LASF221:
	.string	"__unix__ 1"
.LASF188:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF446:
	.string	"PN_TO_ADDR(x) ((void *)(((uint32_t)(x)) << PAGE_SHIFT))"
.LASF576:
	.string	"p_status"
.LASF294:
	.string	"PID_INIT 1"
.LASF241:
	.string	"QUOTE_BY_NAME(...) #__VA_ARGS__"
.LASF275:
	.string	"VMMAP_DIR_LOHI 1"
.LASF121:
	.string	"__FLT_DIG__ 6"
.LASF189:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF328:
	.string	"ERANGE 34"
.LASF460:
	.string	"_BRED_ \"\\x1b[1;31;40m\""
.LASF307:
	.string	"EACCES 13"
.LASF227:
	.string	"__DBG__ error,temp,print,test"
.LASF142:
	.string	"__DBL_MIN__ ((double)2.22507385850720138309e-308L)"
.LASF165:
	.string	"__DEC32_MIN__ 1E-95DF"
.LASF310:
	.string	"EBUSY 16"
.LASF592:
	.string	"PROC_DEAD"
.LASF157:
	.string	"__LDBL_EPSILON__ 1.08420217248550443401e-19L"
.LASF598:
	.string	"intr_enable"
.LASF353:
	.string	"EBFONT 59"
.LASF384:
	.string	"EMSGSIZE 90"
.LASF530:
	.string	"long long unsigned int"
.LASF322:
	.string	"ENOSPC 28"
.LASF177:
	.string	"__DEC128_MIN_EXP__ (-6142)"
.LASF596:
	.string	"file"
.LASF181:
	.string	"__DEC128_EPSILON__ 1E-33DL"
.LASF614:
	.string	"/home/hsia947/Documents/H3/weenix-assignment-3.0.0/weenix/kernel"
.LASF258:
	.string	"list_iterate_reverse(list,var,type,member) do { list_link_t *__link; list_link_t *__prev; for (__link = (list)->l_prev; __link != (list); __link = __prev) { var = list_item(__link, type, member); __prev = __link->l_prev; do"
.LASF119:
	.string	"__FLT_RADIX__ 2"
.LASF20:
	.string	"__SIZEOF_LONG_DOUBLE__ 12"
.LASF437:
	.string	"IPL_HIGH (0xff)"
.LASF459:
	.string	"_WHITE_ \"\\x1b[37;40m\""
.LASF424:
	.string	"EOWNERDEAD 130"
.LASF105:
	.string	"__UINT_LEAST64_MAX__ 18446744073709551615ULL"
.LASF439:
	.string	"init_depends(name) __asm__ ( \".pushsection .init\\n\\t\" \".long 0\\n\\t\" \".string \\\"\" #name \"\\\"\\n\\t\" \".popsection\\n\\t\" );"
.LASF267:
	.string	"PT_WRITE 0x002"
.LASF341:
	.string	"EL3RST 47"
.LASF262:
	.string	"PD_USER 0x004"
.LASF60:
	.string	"__UINT_FAST16_TYPE__ unsigned int"
.LASF255:
	.string	"list_head(list,type,member) list_item((list)->l_next, type, member)"
.LASF211:
	.string	"__ATOMIC_HLE_RELEASE 131072"
.LASF154:
	.string	"__DECIMAL_DIG__ 21"
.LASF152:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF491:
	.string	"DBG_KB DBG_MODE(22)"
.LASF232:
	.string	"NULL 0"
.LASF429:
	.string	"INTR_GPF 0x0d"
.LASF543:
	.string	"pagedir_t"
.LASF64:
	.string	"__UINTPTR_TYPE__ unsigned int"
.LASF173:
	.string	"__DEC64_MAX__ 9.999999999999999E384DD"
.LASF395:
	.string	"ENETUNREACH 101"
.LASF198:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF487:
	.string	"DBG_BRK DBG_MODE(18)"
.LASF229:
	.string	"CS402TESTS 10"
.LASF107:
	.string	"__INT_FAST8_MAX__ 127"
.LASF480:
	.string	"DBG_PROC DBG_MODE(11)"
.LASF24:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF207:
	.string	"__SIZEOF_PTRDIFF_T__ 4"
.LASF519:
	.string	"KASSERT_LESSEQ(l,r) KASSERT_GENERIC(l, r, lessthaneq, \"<=\")"
.LASF344:
	.string	"ENOCSI 50"
.LASF331:
	.string	"ENOLCK 37"
.LASF176:
	.string	"__DEC128_MANT_DIG__ 34"
.LASF147:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF41:
	.string	"__INT32_TYPE__ int"
.LASF604:
	.string	"greaterthan"
.LASF362:
	.string	"EADV 68"
.LASF337:
	.string	"EIDRM 43"
.LASF261:
	.string	"PD_WRITE 0x002"
.LASF464:
	.string	"_BMAGENTA_ \"\\x1b[1;35;40m\""
.LASF532:
	.string	"size_t"
.LASF421:
	.string	"EKEYEXPIRED 127"
.LASF309:
	.string	"ENOTBLK 15"
.LASF454:
	.string	"_GREEN_ \"\\x1b[32;40m\""
.LASF226:
	.string	"__NDISKS__ 1"
.LASF539:
	.string	"ktqueue"
.LASF387:
	.string	"EPROTONOSUPPORT 93"
.LASF333:
	.string	"ENOTEMPTY 39"
.LASF535:
	.string	"l_prev"
.LASF141:
	.string	"__DBL_MAX__ ((double)1.79769313486231570815e+308L)"
.LASF578:
	.string	"p_wait"
.LASF316:
	.string	"EINVAL 22"
.LASF233:
	.string	"inline __attribute__ ((always_inline,used))"
.LASF492:
	.string	"DBG_THR DBG_MODE(23)"
.LASF65:
	.string	"__GXX_ABI_VERSION 1002"
.LASF224:
	.string	"__DRIVERS__ 1"
.LASF112:
	.string	"__UINT_FAST16_MAX__ 4294967295U"
.LASF508:
	.string	"dbgq(mode,...) do { if (dbg_active(mode)) { dbg_print(\"%s\", dbg_color(mode)); dbg_print(__VA_ARGS__); dbg_print(\"%s\", _NORMAL_); } } while(0)"
.LASF357:
	.string	"ENOSR 63"
.LASF562:
	.string	"kt_errno"
.LASF497:
	.string	"DBG_TESTPASS DBG_MODE(31)"
.LASF412:
	.string	"ENOTNAM 118"
.LASF320:
	.string	"ETXTBSY 26"
.LASF56:
	.string	"__INT_FAST16_TYPE__ int"
.LASF312:
	.string	"EXDEV 18"
.LASF209:
	.string	"__i386__ 1"
.LASF44:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF269:
	.string	"PT_WRITE_THROUGH 0x008"
.LASF396:
	.string	"ENETRESET 102"
.LASF270:
	.string	"PT_CACHE_DISABLED 0x010"
.LASF193:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF610:
	.string	"curthr"
.LASF23:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF42:
	.string	"__INT64_TYPE__ long long int"
.LASF125:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF407:
	.string	"EHOSTUNREACH 113"
.LASF393:
	.string	"EADDRNOTAVAIL 99"
.LASF85:
	.string	"__INT32_MAX__ 2147483647"
.LASF295:
	.string	"EPERM 1"
.LASF186:
	.string	"__NO_INLINE__ 1"
.LASF120:
	.string	"__FLT_MANT_DIG__ 24"
.LASF274:
	.string	"PT_GLOBAL 0x100"
.LASF575:
	.string	"p_pproc"
.LASF601:
	.string	"equals"
.LASF581:
	.string	"p_child_link"
.LASF406:
	.string	"EHOSTDOWN 112"
.LASF190:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF290:
	.string	"VFS_ROOTFS_TYPE \"ramfs\""
.LASF474:
	.string	"DBG_TEMP DBG_MODE(5)"
.LASF264:
	.string	"PD_CACHE_DISABLED 0x010"
.LASF332:
	.string	"ENOSYS 38"
.LASF542:
	.string	"ktqueue_t"
.LASF252:
	.string	"list_remove_head(list) list_remove((list)->l_next)"
.LASF257:
	.string	"list_iterate_begin(list,var,type,member) do { list_link_t *__link; list_link_t *__next; for (__link = (list)->l_next; __link != (list); __link = __next) { var = list_item(__link, type, member); __next = __link->l_next; do"
.LASF434:
	.string	"INTR_DISK_PRIMARY 0xd0"
.LASF137:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF569:
	.string	"char"
.LASF240:
	.string	"CONTAINER_OF(obj,type,member) ((type *)((char *)(obj) - offsetof(type, member)))"
.LASF151:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF472:
	.string	"DBG_SCHED DBG_MODE(3)"
.LASF475:
	.string	"DBG_KMALLOC DBG_MODE(6)"
.LASF303:
	.string	"EBADF 9"
.LASF326:
	.string	"EPIPE 32"
.LASF79:
	.string	"__UINTMAX_MAX__ 18446744073709551615ULL"
.LASF524:
	.string	"uint8_t"
.LASF216:
	.string	"__code_model_32__ 1"
.LASF558:
	.string	"kthread"
.LASF422:
	.string	"EKEYREVOKED 128"
.LASF230:
	.string	"CS402INITCHOICE 0"
.LASF287:
	.string	"NAME_LEN 28"
.LASF567:
	.string	"kt_qlink"
.LASF313:
	.string	"ENODEV 19"
.LASF477:
	.string	"DBG_INTR DBG_MODE(8)"
.LASF466:
	.string	"_BWHITE_ \"\\x1b[1;37;40m\""
.LASF413:
	.string	"ENAVAIL 119"
.LASF170:
	.string	"__DEC64_MIN_EXP__ (-382)"
.LASF400:
	.string	"EISCONN 106"
.LASF292:
	.string	"PROC_NAME_LEN 256"
.LASF505:
	.ascii	"DBG_TAB {\"error\", DBG_ERROR, _BWHITE_ }, {\"temp\", DBG_TE"
	.ascii	"MP, _NORMAL_ }, {\"print\", DBG_PRINT, _NORMAL_ }, {\"test\""
	.ascii	", DBG_TEST, _RED_ }, {\"testpass\", DBG_TESTPASS, _GREEN_ },"
	.ascii	" {\"testfail\", DBG_TESTFAIL, _RED_ }, {\"proc\", DBG_PROC, "
	.ascii	"_BLUE_ }, {\"thr\", DBG_THR, _CYAN_ }, {\"sched\", DBG_SCHED"
	.ascii	", _GREEN_ }, {\"init\", DBG_INIT, _NORMAL_ }, {\"term\", DBG"
	.ascii	"_TERM, _BMAGENTA_ }, {\"disk\", DBG_DISK, _YELLOW_ }, {\"mem"
	.ascii	"dev\", DBG_MEMDEV, _BBLUE_ }, {\"vfs\", DBG_VFS, _WHITE_ }, "
	.ascii	"{\"fref\", DBG_FREF, _MAGENTA_ }, {\"vnref\", DBG_VNREF, _CY"
	.ascii	"AN_ }, {\"s5fs\", DBG_S5FS, _BRED_ }, {\"pframe\", DBG_PFRAM"
	.ascii	"E, _BMAGENTA_ }, {\"anon\", DBG_ANON, _WHITE_ }, {\"vmmap\","
	.ascii	" DBG_VMMAP, _BGREEN_ }, {\"fork\", DBG_FORK, _BYELLOW_ }, {\""
	.ascii	"brk\", DBG_BRK , _YELLOW_ }, {\"exec\", DBG_EXEC, _BRED_ }, "
	.ascii	"{\"elf\", DBG_ELF, _BGREEN_ }, {\"pgtbl\", DBG_PGTBL, _BBLUE"
	.ascii	"_ }, {\"osyscall\", DBG_OSYSCALL, _BMAGENTA_ }, {\"vm\", DBG"
	.ascii	"_VM, _RED_ }, {\"syscall\", DBG_SYSCALL, _RED_ }, {\"intr\""
	.string	", DBG_INTR, _BRED_ }, {\"kmalloc\", DBG_KMALLOC, _MAGENTA_ }, {\"pagealloc\", DBG_PAGEALLOC, _WHITE_ }, {\"kb\", DBG_KB, _BLUE_ }, {\"core\", DBG_CORE, _GREEN_ }, {\"mm\", DBG_MM, _RED_ }, {\"user\", DBG_USER, _BYELLOW_}, {\"all\", DBG_ALL, _NORMAL_ }, { NULL, 0, NULL }"
.LASF89:
	.string	"__UINT32_MAX__ 4294967295U"
.LASF383:
	.string	"EDESTADDRREQ 89"
.LASF577:
	.string	"p_state"
.LASF260:
	.string	"PD_PRESENT 0x001"
.LASF272:
	.string	"PT_DIRTY 0x040"
.LASF245:
	.string	"list_link_is_linked(link) (((link)->l_next != NULL) && ((link)->l_prev != NULL))"
.LASF356:
	.string	"ETIME 62"
.LASF166:
	.string	"__DEC32_MAX__ 9.999999E96DF"
.LASF37:
	.string	"__CHAR32_TYPE__ unsigned int"
.LASF611:
	.string	"dbg_modes"
.LASF419:
	.string	"ECANCELED 125"
.LASF48:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF217:
	.string	"__gnu_linux__ 1"
.LASF432:
	.string	"INTR_APICTIMER 0xf0"
.LASF493:
	.string	"DBG_PRINT DBG_MODE(24)"
.LASF135:
	.string	"__DBL_DIG__ 15"
.LASF584:
	.string	"p_brk"
.LASF153:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF97:
	.string	"__INT_LEAST64_MAX__ 9223372036854775807LL"
.LASF496:
	.string	"DBG_TEST DBG_MODE(30)"
.LASF602:
	.string	"notequals"
.LASF286:
	.string	"MAX_VNODES 1024"
.LASF398:
	.string	"ECONNRESET 104"
.LASF199:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF265:
	.string	"PD_ACCESSED 0x020"
.LASF482:
	.string	"DBG_PFRAME DBG_MODE(13)"
.LASF254:
	.string	"list_item(link,type,member) (type*)((char*)(link) - offsetof(type, member))"
.LASF273:
	.string	"PT_SIZE 0x080"
.LASF433:
	.string	"INTR_KEYBOARD 0xe0"
.LASF84:
	.string	"__INT16_MAX__ 32767"
.LASF528:
	.string	"long long int"
.LASF22:
	.string	"__CHAR_BIT__ 8"
.LASF560:
	.string	"kt_kstack"
.LASF244:
	.string	"list_link_init(link) do { (link)->l_next = (link)->l_prev = NULL; } while (0);"
.LASF410:
	.string	"ESTALE 116"
.LASF192:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF13:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF533:
	.string	"pid_t"
.LASF266:
	.string	"PT_PRESENT 0x001"
.LASF468:
	.string	"DBG_ALL (~0ULL)"
.LASF377:
	.string	"ELIBEXEC 83"
.LASF299:
	.string	"EIO 5"
.LASF352:
	.string	"EDEADLOCK EDEADLK"
.LASF67:
	.string	"__SHRT_MAX__ 32767"
.LASF544:
	.string	"context"
.LASF471:
	.string	"DBG_INIT DBG_MODE(2)"
.LASF12:
	.string	"__ATOMIC_CONSUME 1"
.LASF478:
	.string	"DBG_TERM DBG_MODE(9)"
.LASF222:
	.string	"__ELF__ 1"
.LASF288:
	.string	"NFILES 32"
.LASF589:
	.string	"vmm_list"
.LASF231:
	.string	"GDBWAIT 0"
.LASF203:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF541:
	.string	"tq_size"
.LASF168:
	.string	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF"
.LASF355:
	.string	"ENODATA 61"
.LASF132:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF342:
	.string	"ELNRNG 48"
.LASF323:
	.string	"ESPIPE 29"
.LASF563:
	.string	"kt_proc"
.LASF334:
	.string	"ELOOP 40"
.LASF0:
	.string	"__STDC__ 1"
.LASF15:
	.string	"__SIZEOF_LONG__ 4"
.LASF347:
	.string	"EBADR 53"
.LASF450:
	.string	"PAGE_SAME(addr1,addr2) (PAGE_ALIGN_DOWN(addr1) == PAGE_ALIGN_DOWN(addr2))"
.LASF111:
	.string	"__UINT_FAST8_MAX__ 255"
.LASF506:
	.string	"DBG_BUFFER_SIZE (PAGE_SIZE)"
.LASF6:
	.string	"__VERSION__ \"4.8.4\""
.LASF555:
	.string	"KT_SLEEP_CANCELLABLE"
.LASF616:
	.string	"intr_getipl"
.LASF33:
	.string	"__WINT_TYPE__ unsigned int"
.LASF499:
	.string	"DBG_MEMDEV DBG_MODE(33)"
.LASF516:
	.string	"KASSERT_GREATER(l,r) KASSERT_GENERIC(l, r, greaterthan, \">\")"
.LASF566:
	.string	"kt_state"
.LASF104:
	.string	"__UINT32_C(c) c ## U"
.LASF253:
	.string	"list_remove_tail(list) list_remove((list)->l_prev)"
.LASF417:
	.string	"ENOMEDIUM 123"
.LASF19:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF278:
	.string	"TICK_MSECS 10"
.LASF438:
	.string	"init_func(func) __asm__ ( \".pushsection .init\\n\\t\" \".long \" #func \"\\n\\t\" \".string \\\"\" #func \"\\\"\\n\\t\" \".popsection\\n\\t\" );"
.LASF580:
	.string	"p_list_link"
.LASF296:
	.string	"ENOENT 2"
.LASF500:
	.string	"DBG_ANON DBG_MODE(34)"
.LASF557:
	.string	"kthread_state_t"
.LASF74:
	.string	"__WINT_MIN__ 0U"
.LASF481:
	.string	"DBG_VNREF DBG_MODE(12)"
.LASF148:
	.string	"__LDBL_MANT_DIG__ 64"
.LASF404:
	.string	"ETIMEDOUT 110"
.LASF129:
	.string	"__FLT_EPSILON__ 1.19209289550781250000e-7F"
.LASF178:
	.string	"__DEC128_MAX_EXP__ 6145"
.LASF617:
	.string	"sched_wakeup_on"
.LASF587:
	.string	"kthread_t"
.LASF248:
	.string	"list_insert_before(old,new) do { list_link_t *prev = (new); list_link_t *next = (old); prev->l_next = next; prev->l_prev = next->l_prev; next->l_prev->l_next = prev; next->l_prev = prev; } while(0)"
.LASF325:
	.string	"EMLINK 31"
.LASF160:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF62:
	.string	"__UINT_FAST64_TYPE__ long long unsigned int"
.LASF554:
	.string	"KT_SLEEP"
.LASF606:
	.string	"greaterthaneq"
.LASF205:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF559:
	.string	"kt_ctx"
.LASF28:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF242:
	.string	"QUOTE_BY_VALUE(x) QUOTE_BY_NAME(x)"
.LASF162:
	.string	"__DEC32_MANT_DIG__ 7"
.LASF572:
	.string	"p_comm"
.LASF82:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF408:
	.string	"EALREADY 114"
.LASF431:
	.string	"INTR_PIT 0xf1"
.LASF71:
	.string	"__WCHAR_MAX__ 2147483647L"
.LASF9:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF102:
	.string	"__UINT16_C(c) c"
.LASF489:
	.string	"DBG_VFS DBG_MODE(20)"
.LASF445:
	.string	"PAGE_OFFSET(x) ((uintptr_t)(x)&~PAGE_MASK)"
.LASF50:
	.string	"__INT_LEAST64_TYPE__ long long int"
.LASF414:
	.string	"EISNAM 120"
.LASF144:
	.string	"__DBL_DENORM_MIN__ ((double)4.94065645841246544177e-324L)"
.LASF495:
	.string	"DBG_VM DBG_MODE(28)"
.LASF212:
	.string	"__i686 1"
.LASF365:
	.string	"EPROTO 71"
.LASF35:
	.string	"__UINTMAX_TYPE__ long long unsigned int"
.LASF235:
	.string	"likely(x) __builtin_expect((x), 1)"
.LASF234:
	.string	"unlikely(x) __builtin_expect((x), 0)"
.LASF314:
	.string	"ENOTDIR 20"
.LASF603:
	.string	"lessthan"
.LASF87:
	.string	"__UINT8_MAX__ 255"
.LASF435:
	.string	"INTR_DISK_SECONDARY 0xd1"
.LASF380:
	.string	"ESTRPIPE 86"
.LASF196:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF591:
	.string	"PROC_RUNNING"
.LASF26:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF388:
	.string	"ESOCKTNOSUPPORT 94"
.LASF73:
	.string	"__WINT_MAX__ 4294967295U"
.LASF126:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF545:
	.string	"c_eip"
.LASF379:
	.string	"ERESTART 85"
.LASF484:
	.string	"DBG_SYSCALL DBG_MODE(15)"
.LASF301:
	.string	"E2BIG 7"
.LASF150:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF315:
	.string	"EISDIR 21"
.LASF93:
	.string	"__INT_LEAST16_MAX__ 32767"
.LASF553:
	.string	"KT_RUN"
.LASF447:
	.string	"ADDR_TO_PN(x) (((uint32_t)(x)) >> PAGE_SHIFT)"
.LASF453:
	.string	"_RED_ \"\\x1b[31;40m\""
.LASF113:
	.string	"__UINT_FAST32_MAX__ 4294967295U"
.LASF522:
	.string	"short int"
.LASF397:
	.string	"ECONNABORTED 103"
.LASF171:
	.string	"__DEC64_MAX_EXP__ 385"
.LASF208:
	.string	"__i386 1"
.LASF311:
	.string	"EEXIST 17"
.LASF115:
	.string	"__INTPTR_MAX__ 2147483647"
.LASF336:
	.string	"ENOMSG 42"
.LASF321:
	.string	"EFBIG 27"
.LASF61:
	.string	"__UINT_FAST32_TYPE__ unsigned int"
.LASF451:
	.string	"_NORMAL_ \"\\x1b[0m\""
.LASF551:
	.string	"context_t"
.LASF351:
	.string	"EBADSLT 57"
.LASF486:
	.string	"DBG_PGTBL DBG_MODE(17)"
.LASF564:
	.string	"kt_cancelled"
.LASF179:
	.string	"__DEC128_MIN__ 1E-6143DL"
.LASF390:
	.string	"EPFNOSUPPORT 96"
.LASF462:
	.string	"_BYELLOW_ \"\\x1b[1;33;40m\""
.LASF440:
	.string	"PAGE_SHIFT 12"
.LASF361:
	.string	"ENOLINK 67"
.LASF59:
	.string	"__UINT_FAST8_TYPE__ unsigned char"
.LASF96:
	.string	"__INT32_C(c) c"
.LASF161:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF39:
	.string	"__INT8_TYPE__ signed char"
.LASF423:
	.string	"EKEYREJECTED 129"
.LASF218:
	.string	"__linux 1"
.LASF394:
	.string	"ENETDOWN 100"
.LASF249:
	.string	"list_insert_head(list,link) list_insert_before((list)->l_next, link)"
.LASF5:
	.string	"__GNUC_PATCHLEVEL__ 4"
.LASF411:
	.string	"EUCLEAN 117"
.LASF503:
	.string	"DBG_USER DBG_MODE(38)"
.LASF529:
	.string	"uint64_t"
.LASF45:
	.string	"__UINT32_TYPE__ unsigned int"
.LASF509:
	.string	"dbginfo(mode,func,data) do { if (dbg_active(mode)) { dbg_print(\"%s\", dbg_color(mode)); dbg_printinfo(func, data); dbg_print(\"%s\", _NORMAL_); } } while(0)"
.LASF385:
	.string	"EPROTOTYPE 91"
.LASF282:
	.string	"PAGEOUTD_FREE_MIN_SHIFT 4"
.LASF246:
	.string	"list_init(list) do { (list)->l_next = (list)->l_prev = (list); } while (0);"
.LASF86:
	.string	"__INT64_MAX__ 9223372036854775807LL"
.LASF98:
	.string	"__INT64_C(c) c ## LL"
.LASF457:
	.string	"_MAGENTA_ \"\\x1b[35;40m\""
.LASF479:
	.string	"DBG_FORK DBG_MODE(10)"
.LASF504:
	.string	"DBG_DEFAULT DBG_ERROR"
.LASF595:
	.string	"pagedir"
.LASF16:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF43:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF455:
	.string	"_YELLOW_ \"\\x1b[33;40m\""
.LASF359:
	.string	"ENOPKG 65"
.LASF101:
	.string	"__UINT_LEAST16_MAX__ 65535"
.LASF317:
	.string	"ENFILE 23"
.LASF329:
	.string	"EDEADLK 35"
.LASF293:
	.string	"PID_IDLE 0"
.LASF29:
	.string	"__SIZEOF_POINTER__ 4"
.LASF354:
	.string	"ENOSTR 60"
.LASF485:
	.string	"DBG_FREF DBG_MODE(16)"
.LASF428:
	.string	"INTR_INVALID_OPCODE 0x06"
.LASF350:
	.string	"EBADRQC 56"
.LASF81:
	.string	"__SIG_ATOMIC_MAX__ 2147483647"
.LASF531:
	.string	"uintptr_t"
.LASF202:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF568:
	.string	"kt_plink"
.LASF600:
	.string	"intr_wait"
.LASF570:
	.string	"proc"
.LASF594:
	.string	"sizetype"
.LASF465:
	.string	"_BCYAN_ \"\\x1b[1;36;40m\""
.LASF184:
	.string	"__USER_LABEL_PREFIX__ "
.LASF456:
	.string	"_BLUE_ \"\\x1b[34;40m\""
.LASF116:
	.string	"__UINTPTR_MAX__ 4294967295U"
.LASF426:
	.string	"ENOTSUP EOPNOTSUPP"
.LASF195:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF1:
	.string	"__STDC_VERSION__ 199901L"
.LASF32:
	.string	"__WCHAR_TYPE__ long int"
.LASF615:
	.string	"intr_setipl"
.LASF220:
	.string	"__unix 1"
.LASF88:
	.string	"__UINT16_MAX__ 65535"
.LASF443:
	.string	"PAGE_ALIGN_DOWN(x) ((void*)(((uintptr_t)(x))&PAGE_MASK))"
.LASF381:
	.string	"EUSERS 87"
.LASF210:
	.string	"__ATOMIC_HLE_ACQUIRE 65536"
.LASF2:
	.string	"__STDC_HOSTED__ 0"
.LASF501:
	.string	"DBG_VMMAP DBG_MODE(35)"
.LASF369:
	.string	"EOVERFLOW 75"
.LASF77:
	.string	"__INTMAX_MAX__ 9223372036854775807LL"
.LASF228:
	.string	"__KERNEL__ 1"
.LASF461:
	.string	"_BGREEN_ \"\\x1b[1;32;40m\""
.LASF204:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF110:
	.string	"__INT_FAST64_MAX__ 9223372036854775807LL"
.LASF343:
	.string	"EUNATCH 49"
.LASF280:
	.string	"PF_HASH_SIZE 17"
.LASF418:
	.string	"EMEDIUMTYPE 124"
.LASF366:
	.string	"EMULTIHOP 72"
.LASF225:
	.string	"__NTERMS__ 3"
.LASF402:
	.string	"ESHUTDOWN 108"
.LASF200:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 2"
.LASF124:
	.string	"__FLT_MAX_EXP__ 128"
.LASF593:
	.string	"proc_state_t"
.LASF11:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF483:
	.string	"DBG_ERROR DBG_MODE(14)"
.LASF470:
	.string	"DBG_MM DBG_MODE(1)"
.LASF521:
	.string	"unsigned char"
.LASF163:
	.string	"__DEC32_MIN_EXP__ (-94)"
.LASF164:
	.string	"__DEC32_MAX_EXP__ 97"
.LASF340:
	.string	"EL3HLT 46"
.LASF360:
	.string	"EREMOTE 66"
.LASF95:
	.string	"__INT_LEAST32_MAX__ 2147483647"
.LASF561:
	.string	"kt_retval"
.LASF373:
	.string	"ELIBACC 79"
.LASF63:
	.string	"__INTPTR_TYPE__ int"
.LASF409:
	.string	"EINPROGRESS 115"
.LASF118:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF612:
	.string	"GNU C 4.8.4 -m32 -march=i686 -g3 -gdwarf-3 -std=c99 -ffreestanding -fno-builtin -fno-stack-protector -fsigned-char"
.LASF304:
	.string	"ECHILD 10"
.LASF498:
	.string	"DBG_TESTFAIL DBG_MODE(32)"
.LASF403:
	.string	"ETOOMANYREFS 109"
.LASF51:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF291:
	.string	"PROC_MAX_COUNT 65536"
.LASF268:
	.string	"PT_USER 0x004"
.LASF363:
	.string	"ESRMNT 69"
.LASF547:
	.string	"c_ebp"
.LASF256:
	.string	"list_tail(list,type,member) list_item((list)->l_prev, type, member)"
.LASF114:
	.string	"__UINT_FAST64_MAX__ 18446744073709551615ULL"
.LASF30:
	.string	"__SIZE_TYPE__ unsigned int"
.LASF444:
	.string	"PAGE_ALIGN_UP(x) ((void*)(((((uintptr_t)(x))-1)&PAGE_MASK)+PAGE_SIZE))"
.LASF215:
	.string	"__pentiumpro__ 1"
.LASF597:
	.string	"vnode"
.LASF138:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF552:
	.string	"KT_NO_STATE"
.LASF348:
	.string	"EXFULL 54"
.LASF69:
	.string	"__LONG_MAX__ 2147483647L"
.LASF197:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF338:
	.string	"ECHRNG 44"
.LASF53:
	.string	"__UINT_LEAST32_TYPE__ unsigned int"
.LASF281:
	.string	"PAGEOUTD_FREE_TARGET_SHIFT 5"
.LASF123:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF285:
	.string	"MAX_VFS 8"
.LASF609:
	.string	"tempthr"
.LASF146:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF586:
	.string	"p_vmmap"
.LASF103:
	.string	"__UINT_LEAST32_MAX__ 4294967295U"
.LASF259:
	.string	"list_iterate_end() while(0); } } while(0)"
.LASF57:
	.string	"__INT_FAST32_TYPE__ int"
.LASF133:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF14:
	.string	"__SIZEOF_INT__ 4"
.LASF565:
	.string	"kt_wchan"
.LASF34:
	.string	"__INTMAX_TYPE__ long long int"
.LASF583:
	.string	"p_cwd"
.LASF78:
	.string	"__INTMAX_C(c) c ## LL"
.LASF302:
	.string	"ENOEXEC 8"
.LASF517:
	.string	"KASSERT_LESS(l,r) KASSERT_GENERIC(l, r, lessthan, \"<\")"
.LASF579:
	.string	"p_pagedir"
.LASF46:
	.string	"__UINT64_TYPE__ long long unsigned int"
.LASF416:
	.string	"EDQUOT 122"
.LASF318:
	.string	"EMFILE 24"
.LASF139:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF523:
	.string	"short unsigned int"
.LASF370:
	.string	"ENOTUNIQ 76"
.LASF185:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF18:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF490:
	.string	"DBG_S5FS DBG_MODE(21)"
.LASF305:
	.string	"EAGAIN 11"
.LASF155:
	.string	"__LDBL_MAX__ 1.18973149535723176502e+4932L"
.LASF574:
	.string	"p_children"
.LASF52:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF143:
	.string	"__DBL_EPSILON__ ((double)2.22044604925031308085e-16L)"
.LASF335:
	.string	"EWOULDBLOCK EAGAIN"
.LASF618:
	.string	"__func__"
.LASF122:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF534:
	.string	"l_next"
.LASF442:
	.string	"PAGE_MASK (0xffffffff<<PAGE_SHIFT)"
.LASF180:
	.string	"__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL"
.LASF452:
	.string	"_BLACK_ \"\\x1b[30;47m\""
.LASF183:
	.string	"__REGISTER_PREFIX__ "
.LASF391:
	.string	"EAFNOSUPPORT 97"
.LASF187:
	.string	"__STRICT_ANSI__ 1"
.LASF449:
	.string	"PAGE_NSIZES 8"
.LASF376:
	.string	"ELIBMAX 82"
.LASF382:
	.string	"ENOTSOCK 88"
.LASF145:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF415:
	.string	"EREMOTEIO 121"
.LASF511:
	.string	"panic(fmt,args...) dbg_panic(__FILE__, __LINE__, __func__, (fmt), ## args)"
.LASF219:
	.string	"__linux__ 1"
.LASF513:
	.ascii	"K"
	.string	"ASSERT_GENERIC(left,right,comparator,comp_str) do { int __left = (int)(left); int __right = (int)(right); if (!comparator(__left, __right)) { panic(\"assertion failed: %s %s %s. Left: %d, Right: %d\\n\", #left, comp_str, #right, __left, __right); } } while(0)"
.LASF588:
	.string	"vmmap"
.LASF371:
	.string	"EBADFD 77"
.LASF573:
	.string	"p_threads"
.LASF324:
	.string	"EROFS 30"
.LASF277:
	.string	"DEFAULT_STACK_SIZE (56*1024)"
.LASF308:
	.string	"EFAULT 14"
.LASF283:
	.string	"MAXPATHLEN 1024"
.LASF427:
	.string	"INTR_DIVIDE_BY_ZERO 0x00"
.LASF467:
	.string	"DBG_MODE(x) (1ULL << (x))"
.LASF546:
	.string	"c_esp"
.LASF172:
	.string	"__DEC64_MIN__ 1E-383DD"
.LASF214:
	.string	"__pentiumpro 1"
.LASF68:
	.string	"__INT_MAX__ 2147483647"
.LASF38:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF599:
	.string	"intr_disable"
.LASF374:
	.string	"ELIBBAD 80"
.LASF191:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1"
.LASF448:
	.string	"PAGE_ALIGNED(x) (0 == ((uintptr_t)(x)) % PAGE_SIZE)"
.LASF159:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF284:
	.string	"MAX_FILES 1024"
.LASF613:
	.string	"proc/sched_helper.c"
.LASF169:
	.string	"__DEC64_MANT_DIG__ 16"
.LASF131:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF548:
	.string	"c_pdptr"
.LASF263:
	.string	"PD_WRITE_THROUGH 0x008"
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.4) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
