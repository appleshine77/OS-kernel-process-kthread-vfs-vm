	.file	"kmutex.c"
	.text
.Ltext0:
	.type	equals, @function
equals:
.LFB0:
	.file 1 "include/util/debug.h"
	.loc 1 235 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 235 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	sete	%al
	movzbl	%al, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	equals, .-equals
	.type	notequals, @function
notequals:
.LFB1:
	.loc 1 236 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 236 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	setne	%al
	movzbl	%al, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	notequals, .-notequals
	.type	lessthan, @function
lessthan:
.LFB2:
	.loc 1 237 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 237 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	setl	%al
	movzbl	%al, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2:
	.size	lessthan, .-lessthan
	.type	greaterthan, @function
greaterthan:
.LFB3:
	.loc 1 238 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 238 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	setg	%al
	movzbl	%al, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE3:
	.size	greaterthan, .-greaterthan
	.type	lessthaneq, @function
lessthaneq:
.LFB4:
	.loc 1 239 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 239 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	setle	%al
	movzbl	%al, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE4:
	.size	lessthaneq, .-lessthaneq
	.type	greaterthaneq, @function
greaterthaneq:
.LFB5:
	.loc 1 240 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 240 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	setge	%al
	movzbl	%al, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE5:
	.size	greaterthaneq, .-greaterthaneq
	.globl	kmutex_init
	.type	kmutex_init, @function
kmutex_init:
.LFB6:
	.file 2 "proc/kmutex.c"
	.loc 2 35 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 2 37 0
	movl	8(%ebp), %eax
	movl	$0, 12(%eax)
	.loc 2 38 0
	movl	8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 39 0
	movl	8(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 2 40 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE6:
	.size	kmutex_init, .-kmutex_init
	.section	.rodata
	.align 4
.LC0:
	.string	"curthr && (curthr != mtx->km_holder)"
.LC1:
	.string	"assertion failed: %s"
.LC2:
	.string	"proc/kmutex.c"
.LC3:
	.string	"%s"
.LC4:
	.string	"%s:%d %s(): "
.LC5:
	.string	"(GRADING1A 6.a)\n"
.LC6:
	.string	"\033[0m"
.LC7:
	.string	"(GRADING1C)\n"
	.text
	.globl	kmutex_lock
	.type	kmutex_lock, @function
kmutex_lock:
.LFB7:
	.loc 2 50 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$60, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 2 52 0
	movl	curthr, %eax
	testl	%eax, %eax
	je	.L15
	.loc 2 52 0 is_stmt 0 discriminator 2
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	curthr, %eax
	cmpl	%eax, %edx
	jne	.L16
.L15:
	.loc 2 52 0 discriminator 1
	movl	$.LC0, 16(%esp)
	movl	$.LC1, 12(%esp)
	movl	$__func__.1269, 8(%esp)
	movl	$52, 4(%esp)
	movl	$.LC2, (%esp)
	call	dbg_panic
.L16:
	.loc 2 53 0 is_stmt 1
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
	je	.L17
	.loc 2 53 0 is_stmt 0 discriminator 1
	movl	$16777216, (%esp)
	movl	$0, 4(%esp)
	call	dbg_color
	movl	%eax, 4(%esp)
	movl	$.LC3, (%esp)
	call	dbg_print
	movl	$__func__.1269, 12(%esp)
	movl	$53, 8(%esp)
	movl	$.LC2, 4(%esp)
	movl	$.LC4, (%esp)
	call	dbg_print
	movl	$.LC5, (%esp)
	call	dbg_print
	movl	$.LC6, 4(%esp)
	movl	$.LC3, (%esp)
	call	dbg_print
.L17:
	.loc 2 54 0 is_stmt 1
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L18
	.loc 2 55 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	sched_sleep_on
	.loc 2 56 0
	movl	dbg_modes, %eax
	movl	dbg_modes+4, %edx
	movl	%eax, %esi
	andl	$16777216, %esi
	movl	%esi, -32(%ebp)
	movl	%edx, %eax
	andl	$0, %eax
	movl	%eax, -28(%ebp)
	movl	-32(%ebp), %ecx
	movl	-28(%ebp), %ebx
	movl	%ebx, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L20
	.loc 2 56 0 is_stmt 0 discriminator 1
	movl	$16777216, (%esp)
	movl	$0, 4(%esp)
	call	dbg_color
	movl	%eax, 4(%esp)
	movl	$.LC3, (%esp)
	call	dbg_print
	movl	$__func__.1269, 12(%esp)
	movl	$56, 8(%esp)
	movl	$.LC2, 4(%esp)
	movl	$.LC4, (%esp)
	call	dbg_print
	movl	$.LC7, (%esp)
	call	dbg_print
	movl	$.LC6, 4(%esp)
	movl	$.LC3, (%esp)
	call	dbg_print
	jmp	.L20
.L18:
	.loc 2 58 0 is_stmt 1
	movl	curthr, %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 2 59 0
	movl	dbg_modes, %eax
	movl	dbg_modes+4, %edx
	movl	%eax, %ecx
	andl	$16777216, %ecx
	movl	%ecx, -40(%ebp)
	movl	%edx, %eax
	andl	$0, %eax
	movl	%eax, -36(%ebp)
	movl	-40(%ebp), %esi
	movl	-36(%ebp), %edi
	movl	%edi, %eax
	orl	%esi, %eax
	testl	%eax, %eax
	je	.L20
	.loc 2 59 0 is_stmt 0 discriminator 1
	movl	$16777216, (%esp)
	movl	$0, 4(%esp)
	call	dbg_color
	movl	%eax, 4(%esp)
	movl	$.LC3, (%esp)
	call	dbg_print
	movl	$__func__.1269, 12(%esp)
	movl	$59, 8(%esp)
	movl	$.LC2, 4(%esp)
	movl	$.LC4, (%esp)
	call	dbg_print
	movl	$.LC7, (%esp)
	call	dbg_print
	movl	$.LC6, 4(%esp)
	movl	$.LC3, (%esp)
	call	dbg_print
.L20:
	.loc 2 61 0 is_stmt 1
	movl	dbg_modes, %eax
	movl	dbg_modes+4, %edx
	movl	%eax, %esi
	andl	$16777216, %esi
	movl	%esi, -48(%ebp)
	movl	%edx, %eax
	andl	$0, %eax
	movl	%eax, -44(%ebp)
	movl	-48(%ebp), %ecx
	movl	-44(%ebp), %ebx
	movl	%ebx, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L14
	.loc 2 61 0 is_stmt 0 discriminator 1
	movl	$16777216, (%esp)
	movl	$0, 4(%esp)
	call	dbg_color
	movl	%eax, 4(%esp)
	movl	$.LC3, (%esp)
	call	dbg_print
	movl	$__func__.1269, 12(%esp)
	movl	$61, 8(%esp)
	movl	$.LC2, 4(%esp)
	movl	$.LC4, (%esp)
	call	dbg_print
	movl	$.LC7, (%esp)
	call	dbg_print
	movl	$.LC6, 4(%esp)
	movl	$.LC3, (%esp)
	call	dbg_print
.L14:
	.loc 2 62 0 is_stmt 1
	addl	$60, %esp
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
.LFE7:
	.size	kmutex_lock, .-kmutex_lock
	.section	.rodata
.LC8:
	.string	"(GRADING1A 6.b)\n"
	.text
	.globl	kmutex_lock_cancellable
	.type	kmutex_lock_cancellable, @function
kmutex_lock_cancellable:
.LFB8:
	.loc 2 70 0
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
	.loc 2 72 0
	movl	curthr, %eax
	testl	%eax, %eax
	je	.L23
	.loc 2 72 0 is_stmt 0 discriminator 2
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	curthr, %eax
	cmpl	%eax, %edx
	jne	.L24
.L23:
	.loc 2 72 0 discriminator 1
	movl	$.LC0, 16(%esp)
	movl	$.LC1, 12(%esp)
	movl	$__func__.1273, 8(%esp)
	movl	$72, 4(%esp)
	movl	$.LC2, (%esp)
	call	dbg_panic
.L24:
	.loc 2 73 0 is_stmt 1
	movl	dbg_modes, %eax
	movl	dbg_modes+4, %edx
	movl	%eax, %ecx
	andl	$16777216, %ecx
	movl	%ecx, %ebx
	movl	%edx, %eax
	andl	$0, %eax
	movl	%eax, %esi
	movl	%esi, %eax
	orl	%ebx, %eax
	testl	%eax, %eax
	je	.L25
	.loc 2 73 0 is_stmt 0 discriminator 1
	movl	$16777216, (%esp)
	movl	$0, 4(%esp)
	call	dbg_color
	movl	%eax, 4(%esp)
	movl	$.LC3, (%esp)
	call	dbg_print
	movl	$__func__.1273, 12(%esp)
	movl	$73, 8(%esp)
	movl	$.LC2, 4(%esp)
	movl	$.LC4, (%esp)
	call	dbg_print
	movl	$.LC8, (%esp)
	call	dbg_print
	movl	$.LC6, 4(%esp)
	movl	$.LC3, (%esp)
	call	dbg_print
.L25:
	.loc 2 74 0 is_stmt 1
	movl	dbg_modes, %eax
	movl	dbg_modes+4, %edx
	movl	%eax, %esi
	andl	$16777216, %esi
	movl	%esi, -32(%ebp)
	movl	%edx, %eax
	andl	$0, %eax
	movl	%eax, -28(%ebp)
	movl	-32(%ebp), %ecx
	movl	-28(%ebp), %ebx
	movl	%ebx, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L26
	.loc 2 74 0 is_stmt 0 discriminator 1
	movl	$16777216, (%esp)
	movl	$0, 4(%esp)
	call	dbg_color
	movl	%eax, 4(%esp)
	movl	$.LC3, (%esp)
	call	dbg_print
	movl	$__func__.1273, 12(%esp)
	movl	$74, 8(%esp)
	movl	$.LC2, 4(%esp)
	movl	$.LC4, (%esp)
	call	dbg_print
	movl	$.LC7, (%esp)
	call	dbg_print
	movl	$.LC6, 4(%esp)
	movl	$.LC3, (%esp)
	call	dbg_print
.L26:
	.loc 2 75 0 is_stmt 1
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L27
	.loc 2 76 0
	movl	dbg_modes, %eax
	movl	dbg_modes+4, %edx
	movl	%eax, %edi
	andl	$16777216, %edi
	movl	%edi, -40(%ebp)
	movl	%edx, %eax
	andl	$0, %eax
	movl	%eax, -36(%ebp)
	movl	-40(%ebp), %esi
	movl	-36(%ebp), %edi
	movl	%edi, %eax
	orl	%esi, %eax
	testl	%eax, %eax
	je	.L28
	.loc 2 76 0 is_stmt 0 discriminator 1
	movl	$16777216, (%esp)
	movl	$0, 4(%esp)
	call	dbg_color
	movl	%eax, 4(%esp)
	movl	$.LC3, (%esp)
	call	dbg_print
	movl	$__func__.1273, 12(%esp)
	movl	$76, 8(%esp)
	movl	$.LC2, 4(%esp)
	movl	$.LC4, (%esp)
	call	dbg_print
	movl	$.LC7, (%esp)
	call	dbg_print
	movl	$.LC6, 4(%esp)
	movl	$.LC3, (%esp)
	call	dbg_print
.L28:
	.loc 2 77 0 is_stmt 1
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	sched_cancellable_sleep_on
	jmp	.L29
.L27:
	.loc 2 79 0
	movl	curthr, %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 2 80 0
	movl	dbg_modes, %eax
	movl	dbg_modes+4, %edx
	movl	%eax, %ecx
	andl	$16777216, %ecx
	movl	%ecx, -48(%ebp)
	movl	%edx, %eax
	andl	$0, %eax
	movl	%eax, -44(%ebp)
	movl	-48(%ebp), %ecx
	movl	-44(%ebp), %ebx
	movl	%ebx, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L30
	.loc 2 80 0 is_stmt 0 discriminator 1
	movl	$16777216, (%esp)
	movl	$0, 4(%esp)
	call	dbg_color
	movl	%eax, 4(%esp)
	movl	$.LC3, (%esp)
	call	dbg_print
	movl	$__func__.1273, 12(%esp)
	movl	$80, 8(%esp)
	movl	$.LC2, 4(%esp)
	movl	$.LC4, (%esp)
	call	dbg_print
	movl	$.LC7, (%esp)
	call	dbg_print
	movl	$.LC6, 4(%esp)
	movl	$.LC3, (%esp)
	call	dbg_print
.L30:
	.loc 2 82 0 is_stmt 1
	movl	dbg_modes, %eax
	movl	dbg_modes+4, %edx
	movl	%eax, %esi
	andl	$16777216, %esi
	movl	%esi, -56(%ebp)
	movl	%edx, %eax
	andl	$0, %eax
	movl	%eax, -52(%ebp)
	movl	-56(%ebp), %esi
	movl	-52(%ebp), %edi
	movl	%edi, %eax
	orl	%esi, %eax
	testl	%eax, %eax
	je	.L31
	.loc 2 82 0 is_stmt 0 discriminator 1
	movl	$16777216, (%esp)
	movl	$0, 4(%esp)
	call	dbg_color
	movl	%eax, 4(%esp)
	movl	$.LC3, (%esp)
	call	dbg_print
	movl	$__func__.1273, 12(%esp)
	movl	$82, 8(%esp)
	movl	$.LC2, 4(%esp)
	movl	$.LC4, (%esp)
	call	dbg_print
	movl	$.LC7, (%esp)
	call	dbg_print
	movl	$.LC6, 4(%esp)
	movl	$.LC3, (%esp)
	call	dbg_print
.L31:
	.loc 2 83 0 is_stmt 1
	movl	$0, %eax
.L29:
	.loc 2 84 0
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
.LFE8:
	.size	kmutex_lock_cancellable, .-kmutex_lock_cancellable
	.section	.rodata
	.align 4
.LC9:
	.string	"curthr && mtx->km_holder == curthr"
.LC10:
	.string	"(GRADING1A 6.c)\n"
.LC11:
	.string	"curthr != mtx->km_holder"
	.text
	.globl	kmutex_unlock
	.type	kmutex_unlock, @function
kmutex_unlock:
.LFB9:
	.loc 2 101 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$44, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 2 103 0
	movl	curthr, %eax
	testl	%eax, %eax
	je	.L33
	.loc 2 103 0 is_stmt 0 discriminator 2
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	curthr, %eax
	cmpl	%eax, %edx
	je	.L34
.L33:
	.loc 2 103 0 discriminator 1
	movl	$.LC9, 16(%esp)
	movl	$.LC1, 12(%esp)
	movl	$__func__.1277, 8(%esp)
	movl	$103, 4(%esp)
	movl	$.LC2, (%esp)
	call	dbg_panic
.L34:
	.loc 2 104 0 is_stmt 1
	movl	dbg_modes, %eax
	movl	dbg_modes+4, %edx
	movl	%eax, %edi
	andl	$16777216, %edi
	movl	%edi, -32(%ebp)
	movl	%edx, %eax
	andl	$0, %eax
	movl	%eax, -28(%ebp)
	movl	-32(%ebp), %edx
	movl	-28(%ebp), %ecx
	movl	%ecx, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L35
	.loc 2 104 0 is_stmt 0 discriminator 1
	movl	$16777216, (%esp)
	movl	$0, 4(%esp)
	call	dbg_color
	movl	%eax, 4(%esp)
	movl	$.LC3, (%esp)
	call	dbg_print
	movl	$__func__.1277, 12(%esp)
	movl	$104, 8(%esp)
	movl	$.LC2, 4(%esp)
	movl	$.LC4, (%esp)
	call	dbg_print
	movl	$.LC10, (%esp)
	call	dbg_print
	movl	$.LC6, 4(%esp)
	movl	$.LC3, (%esp)
	call	dbg_print
.L35:
	.loc 2 105 0 is_stmt 1
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	sched_wakeup_on
	movl	8(%ebp), %edx
	movl	%eax, 12(%edx)
	.loc 2 107 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	curthr, %eax
	cmpl	%eax, %edx
	jne	.L36
	.loc 2 107 0 is_stmt 0 discriminator 1
	movl	$.LC11, 16(%esp)
	movl	$.LC1, 12(%esp)
	movl	$__func__.1277, 8(%esp)
	movl	$107, 4(%esp)
	movl	$.LC2, (%esp)
	call	dbg_panic
.L36:
	.loc 2 108 0 is_stmt 1
	movl	dbg_modes, %eax
	movl	dbg_modes+4, %edx
	movl	%eax, %ecx
	andl	$16777216, %ecx
	movl	%ecx, %ebx
	movl	%edx, %eax
	andl	$0, %eax
	movl	%eax, %esi
	movl	%esi, %eax
	orl	%ebx, %eax
	testl	%eax, %eax
	je	.L32
	.loc 2 108 0 is_stmt 0 discriminator 1
	movl	$16777216, (%esp)
	movl	$0, 4(%esp)
	call	dbg_color
	movl	%eax, 4(%esp)
	movl	$.LC3, (%esp)
	call	dbg_print
	movl	$__func__.1277, 12(%esp)
	movl	$108, 8(%esp)
	movl	$.LC2, 4(%esp)
	movl	$.LC4, (%esp)
	call	dbg_print
	movl	$.LC10, (%esp)
	call	dbg_print
	movl	$.LC6, 4(%esp)
	movl	$.LC3, (%esp)
	call	dbg_print
.L32:
	.loc 2 110 0 is_stmt 1
	addl	$44, %esp
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
.LFE9:
	.size	kmutex_unlock, .-kmutex_unlock
	.section	.rodata
	.type	__func__.1269, @object
	.size	__func__.1269, 12
__func__.1269:
	.string	"kmutex_lock"
	.type	__func__.1273, @object
	.size	__func__.1273, 24
__func__.1273:
	.string	"kmutex_lock_cancellable"
	.type	__func__.1277, @object
	.size	__func__.1277, 14
__func__.1277:
	.string	"kmutex_unlock"
	.text
.Letext0:
	.file 3 "include/types.h"
	.file 4 "include/util/list.h"
	.file 5 "include/proc/sched.h"
	.file 6 "include/mm/pagetable.h"
	.file 7 "include/proc/context.h"
	.file 8 "include/proc/kthread.h"
	.file 9 "include/proc/proc.h"
	.file 10 "include/vm/vmmap.h"
	.file 11 "include/proc/kmutex.h"
	.file 12 "include/globals.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x66e
	.value	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF600
	.byte	0x1
	.long	.LASF601
	.long	.LASF602
	.long	.Ltext0
	.long	.Letext0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF507
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF508
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF509
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF510
	.uleb128 0x3
	.long	.LASF511
	.byte	0x3
	.byte	0x1d
	.long	0x50
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF512
	.byte	0x3
	.byte	0x1e
	.long	0x62
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF513
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF514
	.uleb128 0x3
	.long	.LASF515
	.byte	0x3
	.byte	0x21
	.long	0x7b
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF516
	.uleb128 0x3
	.long	.LASF517
	.byte	0x3
	.byte	0x23
	.long	0x62
	.uleb128 0x3
	.long	.LASF518
	.byte	0x3
	.byte	0x2b
	.long	0x57
	.uleb128 0x3
	.long	.LASF519
	.byte	0x3
	.byte	0x2f
	.long	0x45
	.uleb128 0x5
	.long	.LASF524
	.byte	0x8
	.byte	0x4
	.byte	0x45
	.long	0xc8
	.uleb128 0x6
	.long	.LASF520
	.byte	0x4
	.byte	0x46
	.long	0xc8
	.byte	0
	.uleb128 0x6
	.long	.LASF521
	.byte	0x4
	.byte	0x47
	.long	0xc8
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xa3
	.uleb128 0x3
	.long	.LASF522
	.byte	0x4
	.byte	0x48
	.long	0xa3
	.uleb128 0x3
	.long	.LASF523
	.byte	0x4
	.byte	0x48
	.long	0xa3
	.uleb128 0x5
	.long	.LASF525
	.byte	0xc
	.byte	0x5
	.byte	0x18
	.long	0x109
	.uleb128 0x6
	.long	.LASF526
	.byte	0x5
	.byte	0x19
	.long	0xce
	.byte	0
	.uleb128 0x6
	.long	.LASF527
	.byte	0x5
	.byte	0x1a
	.long	0x50
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	.LASF528
	.byte	0x5
	.byte	0x1b
	.long	0xe4
	.uleb128 0x3
	.long	.LASF529
	.byte	0x6
	.byte	0x29
	.long	0x11f
	.uleb128 0x8
	.long	.LASF581
	.byte	0x1
	.uleb128 0x9
	.byte	0x4
	.uleb128 0x5
	.long	.LASF530
	.byte	0x18
	.byte	0x7
	.byte	0x1f
	.long	0x17c
	.uleb128 0x6
	.long	.LASF531
	.byte	0x7
	.byte	0x20
	.long	0x57
	.byte	0
	.uleb128 0x6
	.long	.LASF532
	.byte	0x7
	.byte	0x21
	.long	0x57
	.byte	0x4
	.uleb128 0x6
	.long	.LASF533
	.byte	0x7
	.byte	0x22
	.long	0x57
	.byte	0x8
	.uleb128 0x6
	.long	.LASF534
	.byte	0x7
	.byte	0x24
	.long	0x17c
	.byte	0xc
	.uleb128 0x6
	.long	.LASF535
	.byte	0x7
	.byte	0x26
	.long	0x82
	.byte	0x10
	.uleb128 0x6
	.long	.LASF536
	.byte	0x7
	.byte	0x27
	.long	0x8d
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x114
	.uleb128 0x3
	.long	.LASF537
	.byte	0x7
	.byte	0x28
	.long	0x127
	.uleb128 0xa
	.byte	0x4
	.byte	0x8
	.byte	0x23
	.long	0x1b4
	.uleb128 0xb
	.long	.LASF538
	.sleb128 0
	.uleb128 0xb
	.long	.LASF539
	.sleb128 1
	.uleb128 0xb
	.long	.LASF540
	.sleb128 2
	.uleb128 0xb
	.long	.LASF541
	.sleb128 3
	.uleb128 0xb
	.long	.LASF542
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.long	.LASF543
	.byte	0x8
	.byte	0x29
	.long	0x18d
	.uleb128 0x5
	.long	.LASF544
	.byte	0x44
	.byte	0x8
	.byte	0x2c
	.long	0x244
	.uleb128 0x6
	.long	.LASF545
	.byte	0x8
	.byte	0x2d
	.long	0x182
	.byte	0
	.uleb128 0x6
	.long	.LASF546
	.byte	0x8
	.byte	0x2e
	.long	0x244
	.byte	0x18
	.uleb128 0x6
	.long	.LASF547
	.byte	0x8
	.byte	0x2f
	.long	0x125
	.byte	0x1c
	.uleb128 0x6
	.long	.LASF548
	.byte	0x8
	.byte	0x30
	.long	0x50
	.byte	0x20
	.uleb128 0x6
	.long	.LASF549
	.byte	0x8
	.byte	0x31
	.long	0x32d
	.byte	0x24
	.uleb128 0x6
	.long	.LASF550
	.byte	0x8
	.byte	0x33
	.long	0x50
	.byte	0x28
	.uleb128 0x6
	.long	.LASF551
	.byte	0x8
	.byte	0x34
	.long	0x333
	.byte	0x2c
	.uleb128 0x6
	.long	.LASF552
	.byte	0x8
	.byte	0x35
	.long	0x1b4
	.byte	0x30
	.uleb128 0x6
	.long	.LASF553
	.byte	0x8
	.byte	0x3c
	.long	0xd9
	.byte	0x34
	.uleb128 0x6
	.long	.LASF554
	.byte	0x8
	.byte	0x3d
	.long	0xd9
	.byte	0x3c
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x24a
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF555
	.uleb128 0xc
	.long	.LASF556
	.value	0x1d0
	.byte	0x9
	.byte	0x2b
	.long	0x32d
	.uleb128 0x6
	.long	.LASF557
	.byte	0x9
	.byte	0x2c
	.long	0x98
	.byte	0
	.uleb128 0x6
	.long	.LASF558
	.byte	0x9
	.byte	0x2d
	.long	0x38f
	.byte	0x4
	.uleb128 0xd
	.long	.LASF559
	.byte	0x9
	.byte	0x2f
	.long	0xce
	.value	0x104
	.uleb128 0xd
	.long	.LASF560
	.byte	0x9
	.byte	0x30
	.long	0xce
	.value	0x10c
	.uleb128 0xd
	.long	.LASF561
	.byte	0x9
	.byte	0x31
	.long	0x32d
	.value	0x114
	.uleb128 0xd
	.long	.LASF562
	.byte	0x9
	.byte	0x33
	.long	0x50
	.value	0x118
	.uleb128 0xd
	.long	.LASF563
	.byte	0x9
	.byte	0x34
	.long	0x384
	.value	0x11c
	.uleb128 0xd
	.long	.LASF564
	.byte	0x9
	.byte	0x3d
	.long	0x109
	.value	0x120
	.uleb128 0xd
	.long	.LASF565
	.byte	0x9
	.byte	0x3f
	.long	0x17c
	.value	0x12c
	.uleb128 0xd
	.long	.LASF566
	.byte	0x9
	.byte	0x41
	.long	0xd9
	.value	0x130
	.uleb128 0xd
	.long	.LASF567
	.byte	0x9
	.byte	0x42
	.long	0xd9
	.value	0x138
	.uleb128 0xd
	.long	.LASF568
	.byte	0x9
	.byte	0x45
	.long	0x3a6
	.value	0x140
	.uleb128 0xd
	.long	.LASF569
	.byte	0x9
	.byte	0x46
	.long	0x3c8
	.value	0x1c0
	.uleb128 0xd
	.long	.LASF570
	.byte	0x9
	.byte	0x49
	.long	0x125
	.value	0x1c4
	.uleb128 0xd
	.long	.LASF571
	.byte	0x9
	.byte	0x4a
	.long	0x125
	.value	0x1c8
	.uleb128 0xd
	.long	.LASF572
	.byte	0x9
	.byte	0x4b
	.long	0x369
	.value	0x1cc
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x251
	.uleb128 0x7
	.byte	0x4
	.long	0x109
	.uleb128 0x3
	.long	.LASF573
	.byte	0x8
	.byte	0x42
	.long	0x1bf
	.uleb128 0x5
	.long	.LASF574
	.byte	0xc
	.byte	0xa
	.byte	0x20
	.long	0x369
	.uleb128 0x6
	.long	.LASF575
	.byte	0xa
	.byte	0x21
	.long	0xce
	.byte	0
	.uleb128 0x6
	.long	.LASF576
	.byte	0xa
	.byte	0x22
	.long	0x32d
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x344
	.uleb128 0xa
	.byte	0x4
	.byte	0x9
	.byte	0x26
	.long	0x384
	.uleb128 0xb
	.long	.LASF577
	.sleb128 0
	.uleb128 0xb
	.long	.LASF578
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.long	.LASF579
	.byte	0x9
	.byte	0x29
	.long	0x36f
	.uleb128 0xe
	.long	0x24a
	.long	0x39f
	.uleb128 0xf
	.long	0x39f
	.byte	0xff
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF580
	.uleb128 0xe
	.long	0x3b6
	.long	0x3b6
	.uleb128 0xf
	.long	0x39f
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x3bc
	.uleb128 0x8
	.long	.LASF582
	.byte	0x1
	.uleb128 0x8
	.long	.LASF583
	.byte	0x1
	.uleb128 0x7
	.byte	0x4
	.long	0x3c2
	.uleb128 0x5
	.long	.LASF584
	.byte	0x10
	.byte	0xb
	.byte	0x17
	.long	0x3f3
	.uleb128 0x6
	.long	.LASF585
	.byte	0xb
	.byte	0x18
	.long	0x109
	.byte	0
	.uleb128 0x6
	.long	.LASF586
	.byte	0xb
	.byte	0x19
	.long	0x3f3
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x1bf
	.uleb128 0x3
	.long	.LASF587
	.byte	0xb
	.byte	0x1a
	.long	0x3ce
	.uleb128 0x10
	.long	.LASF588
	.byte	0x1
	.byte	0xeb
	.byte	0x1
	.long	0x50
	.long	.LFB0
	.long	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x438
	.uleb128 0x11
	.string	"l"
	.byte	0x1
	.byte	0xeb
	.long	0x50
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.string	"r"
	.byte	0x1
	.byte	0xeb
	.long	0x50
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x10
	.long	.LASF589
	.byte	0x1
	.byte	0xec
	.byte	0x1
	.long	0x50
	.long	.LFB1
	.long	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x46c
	.uleb128 0x11
	.string	"l"
	.byte	0x1
	.byte	0xec
	.long	0x50
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.string	"r"
	.byte	0x1
	.byte	0xec
	.long	0x50
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x10
	.long	.LASF590
	.byte	0x1
	.byte	0xed
	.byte	0x1
	.long	0x50
	.long	.LFB2
	.long	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x4a0
	.uleb128 0x11
	.string	"l"
	.byte	0x1
	.byte	0xed
	.long	0x50
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.string	"r"
	.byte	0x1
	.byte	0xed
	.long	0x50
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x10
	.long	.LASF591
	.byte	0x1
	.byte	0xee
	.byte	0x1
	.long	0x50
	.long	.LFB3
	.long	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x4d4
	.uleb128 0x11
	.string	"l"
	.byte	0x1
	.byte	0xee
	.long	0x50
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.string	"r"
	.byte	0x1
	.byte	0xee
	.long	0x50
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x10
	.long	.LASF592
	.byte	0x1
	.byte	0xef
	.byte	0x1
	.long	0x50
	.long	.LFB4
	.long	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x508
	.uleb128 0x11
	.string	"l"
	.byte	0x1
	.byte	0xef
	.long	0x50
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.string	"r"
	.byte	0x1
	.byte	0xef
	.long	0x50
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x10
	.long	.LASF593
	.byte	0x1
	.byte	0xf0
	.byte	0x1
	.long	0x50
	.long	.LFB5
	.long	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x53c
	.uleb128 0x11
	.string	"l"
	.byte	0x1
	.byte	0xf0
	.long	0x50
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.string	"r"
	.byte	0x1
	.byte	0xf0
	.long	0x50
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF594
	.byte	0x2
	.byte	0x22
	.byte	0x1
	.long	.LFB6
	.long	.LFE6
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x563
	.uleb128 0x11
	.string	"mtx"
	.byte	0x2
	.byte	0x22
	.long	0x563
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x3f9
	.uleb128 0x13
	.byte	0x1
	.long	.LASF595
	.byte	0x2
	.byte	0x31
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x5a0
	.uleb128 0x11
	.string	"mtx"
	.byte	0x2
	.byte	0x31
	.long	0x563
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.long	.LASF596
	.long	0x5b0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__func__.1269
	.byte	0
	.uleb128 0xe
	.long	0x24a
	.long	0x5b0
	.uleb128 0xf
	.long	0x39f
	.byte	0xb
	.byte	0
	.uleb128 0x15
	.long	0x5a0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF603
	.byte	0x2
	.byte	0x45
	.byte	0x1
	.long	0x50
	.long	.LFB8
	.long	.LFE8
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x5f0
	.uleb128 0x11
	.string	"mtx"
	.byte	0x2
	.byte	0x45
	.long	0x563
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.long	.LASF596
	.long	0x600
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__func__.1273
	.byte	0
	.uleb128 0xe
	.long	0x24a
	.long	0x600
	.uleb128 0xf
	.long	0x39f
	.byte	0x17
	.byte	0
	.uleb128 0x15
	.long	0x5f0
	.uleb128 0x13
	.byte	0x1
	.long	.LASF597
	.byte	0x2
	.byte	0x64
	.byte	0x1
	.long	.LFB9
	.long	.LFE9
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x63c
	.uleb128 0x11
	.string	"mtx"
	.byte	0x2
	.byte	0x64
	.long	0x563
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.long	.LASF596
	.long	0x64c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__func__.1277
	.byte	0
	.uleb128 0xe
	.long	0x24a
	.long	0x64c
	.uleb128 0xf
	.long	0x39f
	.byte	0xd
	.byte	0
	.uleb128 0x15
	.long	0x63c
	.uleb128 0x17
	.long	.LASF598
	.byte	0xc
	.byte	0x18
	.long	0x65e
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.byte	0x4
	.long	0x339
	.uleb128 0x17
	.long	.LASF599
	.byte	0x1
	.byte	0xa3
	.long	0x70
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x2
	.byte	0x3
	.uleb128 0x13
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x15
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x1a
	.uleb128 0x4
	.file 13 "include/kernel.h"
	.byte	0x3
	.uleb128 0x15
	.uleb128 0xd
	.byte	0x3
	.uleb128 0x15
	.uleb128 0x3
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
	.uleb128 0x5
	.byte	0x4
	.byte	0x3
	.uleb128 0x1d
	.uleb128 0x7
	.byte	0x3
	.uleb128 0x17
	.uleb128 0x6
	.byte	0x7
	.long	.Ldebug_macro4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x16
	.uleb128 0x9
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0xa
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
	.file 16 "include/mm/page.h"
	.byte	0x3
	.uleb128 0x17
	.uleb128 0x10
	.byte	0x7
	.long	.Ldebug_macro9
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro10
	.byte	0x4
	.byte	0x3
	.uleb128 0x19
	.uleb128 0xb
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
	.section	.debug_macro,"G",@progbits,wm4.page.h.28.82b38a267fcd1fcab2bb3d81713f3559,comdat
.Ldebug_macro9:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF427
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF428
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF429
	.byte	0x5
	.uleb128 0x20
	.long	.LASF430
	.byte	0x5
	.uleb128 0x21
	.long	.LASF431
	.byte	0x5
	.uleb128 0x22
	.long	.LASF432
	.byte	0x5
	.uleb128 0x24
	.long	.LASF433
	.byte	0x5
	.uleb128 0x25
	.long	.LASF434
	.byte	0x5
	.uleb128 0x27
	.long	.LASF435
	.byte	0x5
	.uleb128 0x29
	.long	.LASF436
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF437
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.debug.h.44.63925e77bcf481d7929b9179119fc5a0,comdat
.Ldebug_macro10:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF438
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF439
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF440
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF441
	.byte	0x5
	.uleb128 0x30
	.long	.LASF442
	.byte	0x5
	.uleb128 0x31
	.long	.LASF443
	.byte	0x5
	.uleb128 0x32
	.long	.LASF444
	.byte	0x5
	.uleb128 0x33
	.long	.LASF445
	.byte	0x5
	.uleb128 0x34
	.long	.LASF446
	.byte	0x5
	.uleb128 0x36
	.long	.LASF447
	.byte	0x5
	.uleb128 0x37
	.long	.LASF448
	.byte	0x5
	.uleb128 0x38
	.long	.LASF449
	.byte	0x5
	.uleb128 0x39
	.long	.LASF450
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF451
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF452
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF453
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF454
	.byte	0x5
	.uleb128 0x43
	.long	.LASF455
	.byte	0x5
	.uleb128 0x44
	.long	.LASF456
	.byte	0x5
	.uleb128 0x45
	.long	.LASF457
	.byte	0x5
	.uleb128 0x46
	.long	.LASF458
	.byte	0x5
	.uleb128 0x47
	.long	.LASF459
	.byte	0x5
	.uleb128 0x48
	.long	.LASF460
	.byte	0x5
	.uleb128 0x49
	.long	.LASF461
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF462
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF463
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF464
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF465
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF466
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF467
	.byte	0x5
	.uleb128 0x50
	.long	.LASF468
	.byte	0x5
	.uleb128 0x51
	.long	.LASF469
	.byte	0x5
	.uleb128 0x52
	.long	.LASF470
	.byte	0x5
	.uleb128 0x53
	.long	.LASF471
	.byte	0x5
	.uleb128 0x54
	.long	.LASF472
	.byte	0x5
	.uleb128 0x55
	.long	.LASF473
	.byte	0x5
	.uleb128 0x56
	.long	.LASF474
	.byte	0x5
	.uleb128 0x57
	.long	.LASF475
	.byte	0x5
	.uleb128 0x58
	.long	.LASF476
	.byte	0x5
	.uleb128 0x59
	.long	.LASF477
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF478
	.byte	0x5
	.uleb128 0x5b
	.long	.LASF479
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF480
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF481
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF482
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF483
	.byte	0x5
	.uleb128 0x60
	.long	.LASF484
	.byte	0x5
	.uleb128 0x61
	.long	.LASF485
	.byte	0x5
	.uleb128 0x63
	.long	.LASF486
	.byte	0x5
	.uleb128 0x64
	.long	.LASF487
	.byte	0x5
	.uleb128 0x65
	.long	.LASF488
	.byte	0x5
	.uleb128 0x66
	.long	.LASF489
	.byte	0x5
	.uleb128 0x67
	.long	.LASF490
	.byte	0x5
	.uleb128 0x68
	.long	.LASF491
	.byte	0x5
	.uleb128 0x72
	.long	.LASF492
	.byte	0x5
	.uleb128 0xac
	.long	.LASF493
	.byte	0x5
	.uleb128 0xb5
	.long	.LASF494
	.byte	0x5
	.uleb128 0xbf
	.long	.LASF495
	.byte	0x5
	.uleb128 0xc8
	.long	.LASF496
	.byte	0x5
	.uleb128 0xd1
	.long	.LASF497
	.byte	0x5
	.uleb128 0xdc
	.long	.LASF498
	.byte	0x5
	.uleb128 0xdf
	.long	.LASF499
	.byte	0x5
	.uleb128 0xe1
	.long	.LASF500
	.byte	0x5
	.uleb128 0xf2
	.long	.LASF501
	.byte	0x5
	.uleb128 0xf3
	.long	.LASF502
	.byte	0x5
	.uleb128 0xf4
	.long	.LASF503
	.byte	0x5
	.uleb128 0xf5
	.long	.LASF504
	.byte	0x5
	.uleb128 0xf6
	.long	.LASF505
	.byte	0x5
	.uleb128 0xf7
	.long	.LASF506
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF520:
	.string	"l_next"
.LASF330:
	.string	"ENAMETOOLONG 36"
.LASF364:
	.string	"ECOMM 70"
.LASF75:
	.string	"__PTRDIFF_MAX__ 2147483647"
.LASF445:
	.string	"_CYAN_ \"\\x1b[36;40m\""
.LASF522:
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
.LASF536:
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
.LASF568:
	.string	"p_files"
.LASF243:
	.string	"QUOTE(...) QUOTE_BY_NAME(__VA_ARGS__)"
.LASF83:
	.string	"__INT8_MAX__ 127"
.LASF100:
	.string	"__UINT8_C(c) c"
.LASF237:
	.string	"NOT_YET_IMPLEMENTED(f) (dbg_print(\"Not yet implemented: %s, file %s, line %d\\n\", f, __FILE__, __LINE__))"
.LASF443:
	.string	"_BLUE_ \"\\x1b[34;40m\""
.LASF276:
	.string	"VMMAP_DIR_HILO 2"
.LASF592:
	.string	"lessthaneq"
.LASF482:
	.string	"DBG_VM DBG_MODE(28)"
.LASF571:
	.string	"p_start_brk"
.LASF346:
	.string	"EBADE 52"
.LASF526:
	.string	"tq_list"
.LASF136:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF194:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF535:
	.string	"c_kstack"
.LASF213:
	.string	"__i686__ 1"
.LASF206:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF425:
	.string	"ENOTRECOVERABLE 131"
.LASF499:
	.string	"KASSERT(x) do { if (!(x)) panic(\"assertion failed: %s\", #x); } while(0)"
.LASF156:
	.string	"__LDBL_MIN__ 3.36210314311209350626e-4932L"
.LASF502:
	.string	"KASSERTNEQ(l,r) KASSERT_GENERIC(l, r, notequals, \"!=\")"
.LASF158:
	.string	"__LDBL_DENORM_MIN__ 3.64519953188247460253e-4951L"
.LASF405:
	.string	"ECONNREFUSED 111"
.LASF4:
	.string	"__GNUC_MINOR__ 8"
.LASF513:
	.string	"unsigned int"
.LASF255:
	.string	"list_head(list,type,member) list_item((list)->l_next, type, member)"
.LASF271:
	.string	"PT_ACCESSED 0x020"
.LASF297:
	.string	"ESRCH 3"
.LASF17:
	.string	"__SIZEOF_SHORT__ 2"
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
.LASF497:
	.string	"dbg_active(mode) (dbg_modes & (mode))"
.LASF475:
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
.LASF511:
	.string	"int32_t"
.LASF40:
	.string	"__INT16_TYPE__ short int"
.LASF167:
	.string	"__DEC32_EPSILON__ 1E-6DF"
.LASF386:
	.string	"ENOPROTOOPT 92"
.LASF149:
	.string	"__LDBL_DIG__ 18"
.LASF456:
	.string	"DBG_CORE DBG_MODE(0)"
.LASF8:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF306:
	.string	"ENOMEM 12"
.LASF94:
	.string	"__INT16_C(c) c"
.LASF576:
	.string	"vmm_proc"
.LASF591:
	.string	"greaterthan"
.LASF481:
	.string	"DBG_OSYSCALL DBG_MODE(25)"
.LASF130:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092e-45F"
.LASF47:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF298:
	.string	"EINTR 4"
.LASF279:
	.string	"KMEM_FRAC(x) (((x)>>2)+((x)>>3))"
.LASF460:
	.string	"DBG_DISK DBG_MODE(4)"
.LASF80:
	.string	"__UINTMAX_C(c) c ## ULL"
.LASF108:
	.string	"__INT_FAST16_MAX__ 2147483647"
.LASF557:
	.string	"p_pid"
.LASF27:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF99:
	.string	"__UINT_LEAST8_MAX__ 255"
.LASF505:
	.string	"KASSERT_GREQ(l,r) KASSERT_GENERIC(l, r, greaterthaneq, \">=\")"
.LASF66:
	.string	"__SCHAR_MAX__ 127"
.LASF72:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF590:
	.string	"lessthan"
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
.LASF523:
	.string	"list_link_t"
.LASF367:
	.string	"EDOTDOT 73"
.LASF368:
	.string	"EBADMSG 74"
.LASF358:
	.string	"ENONET 64"
.LASF106:
	.string	"__UINT64_C(c) c ## ULL"
.LASF327:
	.string	"EDOM 33"
.LASF223:
	.string	"__DECIMAL_BID_FORMAT__ 1"
.LASF415:
	.string	"EREMOTEIO 121"
.LASF319:
	.string	"ENOTTY 25"
.LASF90:
	.string	"__UINT64_MAX__ 18446744073709551615ULL"
.LASF542:
	.string	"KT_EXITED"
.LASF58:
	.string	"__INT_FAST64_TYPE__ long long int"
.LASF524:
	.string	"list"
.LASF92:
	.string	"__INT8_C(c) c"
.LASF507:
	.string	"signed char"
.LASF501:
	.string	"KASSERTEQ(l,r) KASSERT_GENERIC(l, r, equals, \"==\")"
.LASF76:
	.string	"__SIZE_MAX__ 4294967295U"
.LASF49:
	.string	"__INT_LEAST32_TYPE__ int"
.LASF289:
	.string	"VFS_ROOTFS_DEV \"disk0\""
.LASF463:
	.string	"DBG_PAGEALLOC DBG_MODE(7)"
.LASF512:
	.string	"uint32_t"
.LASF345:
	.string	"EL2HLT 51"
.LASF339:
	.string	"EL2NSYNC 45"
.LASF450:
	.string	"_BBLUE_ \"\\x1b[1;34;40m\""
.LASF250:
	.string	"list_insert_tail(list,link) list_insert_before(list, link)"
.LASF349:
	.string	"ENOANO 55"
.LASF238:
	.string	"MIN(a,b) ((a) < (b) ? (a) : (b))"
.LASF428:
	.string	"PAGE_SIZE ((uint32_t)(1UL<<PAGE_SHIFT))"
.LASF109:
	.string	"__INT_FAST32_MAX__ 2147483647"
.LASF221:
	.string	"__unix__ 1"
.LASF188:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF433:
	.string	"PN_TO_ADDR(x) ((void *)(((uint32_t)(x)) << PAGE_SHIFT))"
.LASF562:
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
.LASF447:
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
.LASF578:
	.string	"PROC_DEAD"
.LASF157:
	.string	"__LDBL_EPSILON__ 1.08420217248550443401e-19L"
.LASF353:
	.string	"EBFONT 59"
.LASF384:
	.string	"EMSGSIZE 90"
.LASF516:
	.string	"long long unsigned int"
.LASF322:
	.string	"ENOSPC 28"
.LASF177:
	.string	"__DEC128_MIN_EXP__ (-6142)"
.LASF582:
	.string	"file"
.LASF474:
	.string	"DBG_BRK DBG_MODE(18)"
.LASF181:
	.string	"__DEC128_EPSILON__ 1E-33DL"
.LASF602:
	.string	"/home/hsia947/Documents/H3/weenix-assignment-3.0.0/weenix/kernel"
.LASF258:
	.string	"list_iterate_reverse(list,var,type,member) do { list_link_t *__link; list_link_t *__prev; for (__link = (list)->l_prev; __link != (list); __link = __prev) { var = list_item(__link, type, member); __prev = __link->l_prev; do"
.LASF119:
	.string	"__FLT_RADIX__ 2"
.LASF20:
	.string	"__SIZEOF_LONG_DOUBLE__ 12"
.LASF446:
	.string	"_WHITE_ \"\\x1b[37;40m\""
.LASF424:
	.string	"EOWNERDEAD 130"
.LASF105:
	.string	"__UINT_LEAST64_MAX__ 18446744073709551615ULL"
.LASF267:
	.string	"PT_WRITE 0x002"
.LASF341:
	.string	"EL3RST 47"
.LASF262:
	.string	"PD_USER 0x004"
.LASF60:
	.string	"__UINT_FAST16_TYPE__ unsigned int"
.LASF586:
	.string	"km_holder"
.LASF211:
	.string	"__ATOMIC_HLE_RELEASE 131072"
.LASF152:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF478:
	.string	"DBG_KB DBG_MODE(22)"
.LASF232:
	.string	"NULL 0"
.LASF529:
	.string	"pagedir_t"
.LASF64:
	.string	"__UINTPTR_TYPE__ unsigned int"
.LASF173:
	.string	"__DEC64_MAX__ 9.999999999999999E384DD"
.LASF395:
	.string	"ENETUNREACH 101"
.LASF198:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF603:
	.string	"kmutex_lock_cancellable"
.LASF229:
	.string	"CS402TESTS 10"
.LASF107:
	.string	"__INT_FAST8_MAX__ 127"
.LASF467:
	.string	"DBG_PROC DBG_MODE(11)"
.LASF24:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF207:
	.string	"__SIZEOF_PTRDIFF_T__ 4"
.LASF506:
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
.LASF489:
	.string	"DBG_ELF DBG_MODE(37)"
.LASF362:
	.string	"EADV 68"
.LASF337:
	.string	"EIDRM 43"
.LASF261:
	.string	"PD_WRITE 0x002"
.LASF451:
	.string	"_BMAGENTA_ \"\\x1b[1;35;40m\""
.LASF518:
	.string	"size_t"
.LASF421:
	.string	"EKEYEXPIRED 127"
.LASF309:
	.string	"ENOTBLK 15"
.LASF441:
	.string	"_GREEN_ \"\\x1b[32;40m\""
.LASF226:
	.string	"__NDISKS__ 1"
.LASF525:
	.string	"ktqueue"
.LASF387:
	.string	"EPROTONOSUPPORT 93"
.LASF333:
	.string	"ENOTEMPTY 39"
.LASF521:
	.string	"l_prev"
.LASF141:
	.string	"__DBL_MAX__ ((double)1.79769313486231570815e+308L)"
.LASF564:
	.string	"p_wait"
.LASF316:
	.string	"EINVAL 22"
.LASF233:
	.string	"inline __attribute__ ((always_inline,used))"
.LASF479:
	.string	"DBG_THR DBG_MODE(23)"
.LASF65:
	.string	"__GXX_ABI_VERSION 1002"
.LASF224:
	.string	"__DRIVERS__ 1"
.LASF112:
	.string	"__UINT_FAST16_MAX__ 4294967295U"
.LASF495:
	.string	"dbgq(mode,...) do { if (dbg_active(mode)) { dbg_print(\"%s\", dbg_color(mode)); dbg_print(__VA_ARGS__); dbg_print(\"%s\", _NORMAL_); } } while(0)"
.LASF357:
	.string	"ENOSR 63"
.LASF430:
	.string	"PAGE_ALIGN_DOWN(x) ((void*)(((uintptr_t)(x))&PAGE_MASK))"
.LASF484:
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
.LASF598:
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
.LASF561:
	.string	"p_pproc"
.LASF588:
	.string	"equals"
.LASF567:
	.string	"p_child_link"
.LASF406:
	.string	"EHOSTDOWN 112"
.LASF190:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF290:
	.string	"VFS_ROOTFS_TYPE \"ramfs\""
.LASF461:
	.string	"DBG_TEMP DBG_MODE(5)"
.LASF601:
	.string	"proc/kmutex.c"
.LASF528:
	.string	"ktqueue_t"
.LASF252:
	.string	"list_remove_head(list) list_remove((list)->l_next)"
.LASF257:
	.string	"list_iterate_begin(list,var,type,member) do { list_link_t *__link; list_link_t *__next; for (__link = (list)->l_next; __link != (list); __link = __next) { var = list_item(__link, type, member); __next = __link->l_next; do"
.LASF137:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF555:
	.string	"char"
.LASF240:
	.string	"CONTAINER_OF(obj,type,member) ((type *)((char *)(obj) - offsetof(type, member)))"
.LASF151:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF459:
	.string	"DBG_SCHED DBG_MODE(3)"
.LASF62:
	.string	"__UINT_FAST64_TYPE__ long long unsigned int"
.LASF303:
	.string	"EBADF 9"
.LASF326:
	.string	"EPIPE 32"
.LASF79:
	.string	"__UINTMAX_MAX__ 18446744073709551615ULL"
.LASF448:
	.string	"_BGREEN_ \"\\x1b[1;32;40m\""
.LASF216:
	.string	"__code_model_32__ 1"
.LASF544:
	.string	"kthread"
.LASF422:
	.string	"EKEYREVOKED 128"
.LASF230:
	.string	"CS402INITCHOICE 0"
.LASF553:
	.string	"kt_qlink"
.LASF313:
	.string	"ENODEV 19"
.LASF464:
	.string	"DBG_INTR DBG_MODE(8)"
.LASF453:
	.string	"_BWHITE_ \"\\x1b[1;37;40m\""
.LASF413:
	.string	"ENAVAIL 119"
.LASF196:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF292:
	.string	"PROC_NAME_LEN 256"
.LASF585:
	.string	"km_waitq"
.LASF492:
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
.LASF563:
	.string	"p_state"
.LASF332:
	.string	"ENOSYS 38"
.LASF264:
	.string	"PD_CACHE_DISABLED 0x010"
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
.LASF419:
	.string	"ECANCELED 125"
.LASF48:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF217:
	.string	"__gnu_linux__ 1"
.LASF480:
	.string	"DBG_PRINT DBG_MODE(24)"
.LASF135:
	.string	"__DBL_DIG__ 15"
.LASF570:
	.string	"p_brk"
.LASF458:
	.string	"DBG_INIT DBG_MODE(2)"
.LASF97:
	.string	"__INT_LEAST64_MAX__ 9223372036854775807LL"
.LASF483:
	.string	"DBG_TEST DBG_MODE(30)"
.LASF589:
	.string	"notequals"
.LASF385:
	.string	"EPROTOTYPE 91"
.LASF286:
	.string	"MAX_VNODES 1024"
.LASF398:
	.string	"ECONNRESET 104"
.LASF199:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF265:
	.string	"PD_ACCESSED 0x020"
.LASF469:
	.string	"DBG_PFRAME DBG_MODE(13)"
.LASF254:
	.string	"list_item(link,type,member) (type*)((char*)(link) - offsetof(type, member))"
.LASF273:
	.string	"PT_SIZE 0x080"
.LASF584:
	.string	"kmutex"
.LASF84:
	.string	"__INT16_MAX__ 32767"
.LASF514:
	.string	"long long int"
.LASF22:
	.string	"__CHAR_BIT__ 8"
.LASF546:
	.string	"kt_kstack"
.LASF244:
	.string	"list_link_init(link) do { (link)->l_next = (link)->l_prev = NULL; } while (0);"
.LASF532:
	.string	"c_esp"
.LASF192:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF13:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF519:
	.string	"pid_t"
.LASF266:
	.string	"PT_PRESENT 0x001"
.LASF455:
	.string	"DBG_ALL (~0ULL)"
.LASF377:
	.string	"ELIBEXEC 83"
.LASF299:
	.string	"EIO 5"
.LASF352:
	.string	"EDEADLOCK EDEADLK"
.LASF67:
	.string	"__SHRT_MAX__ 32767"
.LASF29:
	.string	"__SIZEOF_POINTER__ 4"
.LASF12:
	.string	"__ATOMIC_CONSUME 1"
.LASF465:
	.string	"DBG_TERM DBG_MODE(9)"
.LASF222:
	.string	"__ELF__ 1"
.LASF288:
	.string	"NFILES 32"
.LASF575:
	.string	"vmm_list"
.LASF231:
	.string	"GDBWAIT 0"
.LASF203:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF527:
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
.LASF549:
	.string	"kt_proc"
.LASF334:
	.string	"ELOOP 40"
.LASF0:
	.string	"__STDC__ 1"
.LASF15:
	.string	"__SIZEOF_LONG__ 4"
.LASF347:
	.string	"EBADR 53"
.LASF437:
	.string	"PAGE_SAME(addr1,addr2) (PAGE_ALIGN_DOWN(addr1) == PAGE_ALIGN_DOWN(addr2))"
.LASF111:
	.string	"__UINT_FAST8_MAX__ 255"
.LASF493:
	.string	"DBG_BUFFER_SIZE (PAGE_SIZE)"
.LASF6:
	.string	"__VERSION__ \"4.8.4\""
.LASF541:
	.string	"KT_SLEEP_CANCELLABLE"
.LASF400:
	.string	"EISCONN 106"
.LASF33:
	.string	"__WINT_TYPE__ unsigned int"
.LASF486:
	.string	"DBG_MEMDEV DBG_MODE(33)"
.LASF503:
	.string	"KASSERT_GREATER(l,r) KASSERT_GENERIC(l, r, greaterthan, \">\")"
.LASF552:
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
.LASF462:
	.string	"DBG_KMALLOC DBG_MODE(6)"
.LASF566:
	.string	"p_list_link"
.LASF296:
	.string	"ENOENT 2"
.LASF487:
	.string	"DBG_ANON DBG_MODE(34)"
.LASF543:
	.string	"kthread_state_t"
.LASF74:
	.string	"__WINT_MIN__ 0U"
.LASF468:
	.string	"DBG_VNREF DBG_MODE(12)"
.LASF148:
	.string	"__LDBL_MANT_DIG__ 64"
.LASF404:
	.string	"ETIMEDOUT 110"
.LASF129:
	.string	"__FLT_EPSILON__ 1.19209289550781250000e-7F"
.LASF178:
	.string	"__DEC128_MAX_EXP__ 6145"
.LASF573:
	.string	"kthread_t"
.LASF595:
	.string	"kmutex_lock"
.LASF248:
	.string	"list_insert_before(old,new) do { list_link_t *prev = (new); list_link_t *next = (old); prev->l_next = next; prev->l_prev = next->l_prev; next->l_prev->l_next = prev; next->l_prev = prev; } while(0)"
.LASF325:
	.string	"EMLINK 31"
.LASF160:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF280:
	.string	"PF_HASH_SIZE 17"
.LASF540:
	.string	"KT_SLEEP"
.LASF593:
	.string	"greaterthaneq"
.LASF205:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF545:
	.string	"kt_ctx"
.LASF530:
	.string	"context"
.LASF28:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF242:
	.string	"QUOTE_BY_VALUE(x) QUOTE_BY_NAME(x)"
.LASF162:
	.string	"__DEC32_MANT_DIG__ 7"
.LASF558:
	.string	"p_comm"
.LASF170:
	.string	"__DEC64_MIN_EXP__ (-382)"
.LASF82:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF408:
	.string	"EALREADY 114"
.LASF71:
	.string	"__WCHAR_MAX__ 2147483647L"
.LASF9:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF102:
	.string	"__UINT16_C(c) c"
.LASF476:
	.string	"DBG_VFS DBG_MODE(20)"
.LASF432:
	.string	"PAGE_OFFSET(x) ((uintptr_t)(x)&~PAGE_MASK)"
.LASF50:
	.string	"__INT_LEAST64_TYPE__ long long int"
.LASF414:
	.string	"EISNAM 120"
.LASF144:
	.string	"__DBL_DENORM_MIN__ ((double)4.94065645841246544177e-324L)"
.LASF212:
	.string	"__i686 1"
.LASF365:
	.string	"EPROTO 71"
.LASF410:
	.string	"ESTALE 116"
.LASF35:
	.string	"__UINTMAX_TYPE__ long long unsigned int"
.LASF235:
	.string	"likely(x) __builtin_expect((x), 1)"
.LASF234:
	.string	"unlikely(x) __builtin_expect((x), 0)"
.LASF314:
	.string	"ENOTDIR 20"
.LASF340:
	.string	"EL3HLT 46"
.LASF87:
	.string	"__UINT8_MAX__ 255"
.LASF380:
	.string	"ESTRPIPE 86"
.LASF548:
	.string	"kt_errno"
.LASF597:
	.string	"kmutex_unlock"
.LASF26:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF388:
	.string	"ESOCKTNOSUPPORT 94"
.LASF73:
	.string	"__WINT_MAX__ 4294967295U"
.LASF126:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF531:
	.string	"c_eip"
.LASF379:
	.string	"ERESTART 85"
.LASF471:
	.string	"DBG_SYSCALL DBG_MODE(15)"
.LASF301:
	.string	"E2BIG 7"
.LASF150:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF315:
	.string	"EISDIR 21"
.LASF93:
	.string	"__INT_LEAST16_MAX__ 32767"
.LASF539:
	.string	"KT_RUN"
.LASF434:
	.string	"ADDR_TO_PN(x) (((uint32_t)(x)) >> PAGE_SHIFT)"
.LASF440:
	.string	"_RED_ \"\\x1b[31;40m\""
.LASF113:
	.string	"__UINT_FAST32_MAX__ 4294967295U"
.LASF509:
	.string	"short int"
.LASF587:
	.string	"kmutex_t"
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
.LASF438:
	.string	"_NORMAL_ \"\\x1b[0m\""
.LASF537:
	.string	"context_t"
.LASF351:
	.string	"EBADSLT 57"
.LASF473:
	.string	"DBG_PGTBL DBG_MODE(17)"
.LASF550:
	.string	"kt_cancelled"
.LASF179:
	.string	"__DEC128_MIN__ 1E-6143DL"
.LASF390:
	.string	"EPFNOSUPPORT 96"
.LASF449:
	.string	"_BYELLOW_ \"\\x1b[1;33;40m\""
.LASF427:
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
.LASF490:
	.string	"DBG_USER DBG_MODE(38)"
.LASF515:
	.string	"uint64_t"
.LASF45:
	.string	"__UINT32_TYPE__ unsigned int"
.LASF496:
	.string	"dbginfo(mode,func,data) do { if (dbg_active(mode)) { dbg_print(\"%s\", dbg_color(mode)); dbg_printinfo(func, data); dbg_print(\"%s\", _NORMAL_); } } while(0)"
.LASF282:
	.string	"PAGEOUTD_FREE_MIN_SHIFT 4"
.LASF246:
	.string	"list_init(list) do { (list)->l_next = (list)->l_prev = (list); } while (0);"
.LASF86:
	.string	"__INT64_MAX__ 9223372036854775807LL"
.LASF98:
	.string	"__INT64_C(c) c ## LL"
.LASF444:
	.string	"_MAGENTA_ \"\\x1b[35;40m\""
.LASF466:
	.string	"DBG_FORK DBG_MODE(10)"
.LASF491:
	.string	"DBG_DEFAULT DBG_ERROR"
.LASF581:
	.string	"pagedir"
.LASF16:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF43:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF260:
	.string	"PD_PRESENT 0x001"
.LASF442:
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
.LASF599:
	.string	"dbg_modes"
.LASF354:
	.string	"ENOSTR 60"
.LASF472:
	.string	"DBG_FREF DBG_MODE(16)"
.LASF350:
	.string	"EBADRQC 56"
.LASF81:
	.string	"__SIG_ATOMIC_MAX__ 2147483647"
.LASF517:
	.string	"uintptr_t"
.LASF202:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF554:
	.string	"kt_plink"
.LASF556:
	.string	"proc"
.LASF580:
	.string	"sizetype"
.LASF452:
	.string	"_BCYAN_ \"\\x1b[1;36;40m\""
.LASF184:
	.string	"__USER_LABEL_PREFIX__ "
.LASF397:
	.string	"ECONNABORTED 103"
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
.LASF220:
	.string	"__unix 1"
.LASF88:
	.string	"__UINT16_MAX__ 65535"
.LASF381:
	.string	"EUSERS 87"
.LASF210:
	.string	"__ATOMIC_HLE_ACQUIRE 65536"
.LASF2:
	.string	"__STDC_HOSTED__ 0"
.LASF488:
	.string	"DBG_VMMAP DBG_MODE(35)"
.LASF369:
	.string	"EOVERFLOW 75"
.LASF77:
	.string	"__INTMAX_MAX__ 9223372036854775807LL"
.LASF228:
	.string	"__KERNEL__ 1"
.LASF204:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF110:
	.string	"__INT_FAST64_MAX__ 9223372036854775807LL"
.LASF343:
	.string	"EUNATCH 49"
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
.LASF579:
	.string	"proc_state_t"
.LASF11:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF470:
	.string	"DBG_ERROR DBG_MODE(14)"
.LASF457:
	.string	"DBG_MM DBG_MODE(1)"
.LASF508:
	.string	"unsigned char"
.LASF163:
	.string	"__DEC32_MIN_EXP__ (-94)"
.LASF164:
	.string	"__DEC32_MAX_EXP__ 97"
.LASF494:
	.string	"dbg(mode,...) do { if (dbg_active(mode)) { dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"%s:%d %s(): \",__FILE__, __LINE__, __func__); dbg_print(__VA_ARGS__); dbg_print(\"%s\", _NORMAL_); } } while(0)"
.LASF360:
	.string	"EREMOTE 66"
.LASF95:
	.string	"__INT_LEAST32_MAX__ 2147483647"
.LASF547:
	.string	"kt_retval"
.LASF373:
	.string	"ELIBACC 79"
.LASF63:
	.string	"__INTPTR_TYPE__ int"
.LASF409:
	.string	"EINPROGRESS 115"
.LASF118:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF600:
	.string	"GNU C 4.8.4 -m32 -march=i686 -g3 -gdwarf-3 -std=c99 -ffreestanding -fno-builtin -fno-stack-protector -fsigned-char"
.LASF304:
	.string	"ECHILD 10"
.LASF485:
	.string	"DBG_TESTFAIL DBG_MODE(32)"
.LASF403:
	.string	"ETOOMANYREFS 109"
.LASF51:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF251:
	.string	"list_remove(link) do { list_link_t *ll = (link); list_link_t *prev = ll->l_prev; list_link_t *next = ll->l_next; prev->l_next = next; next->l_prev = prev; ll->l_next = ll->l_prev = NULL; } while(0)"
.LASF291:
	.string	"PROC_MAX_COUNT 65536"
.LASF268:
	.string	"PT_USER 0x004"
.LASF363:
	.string	"ESRMNT 69"
.LASF533:
	.string	"c_ebp"
.LASF256:
	.string	"list_tail(list,type,member) list_item((list)->l_prev, type, member)"
.LASF594:
	.string	"kmutex_init"
.LASF114:
	.string	"__UINT_FAST64_MAX__ 18446744073709551615ULL"
.LASF30:
	.string	"__SIZE_TYPE__ unsigned int"
.LASF431:
	.string	"PAGE_ALIGN_UP(x) ((void*)(((((uintptr_t)(x))-1)&PAGE_MASK)+PAGE_SIZE))"
.LASF215:
	.string	"__pentiumpro__ 1"
.LASF583:
	.string	"vnode"
.LASF138:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF538:
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
.LASF287:
	.string	"NAME_LEN 28"
.LASF146:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF572:
	.string	"p_vmmap"
.LASF103:
	.string	"__UINT_LEAST32_MAX__ 4294967295U"
.LASF259:
	.string	"list_iterate_end() while(0); } } while(0)"
.LASF57:
	.string	"__INT_FAST32_TYPE__ int"
.LASF577:
	.string	"PROC_RUNNING"
.LASF133:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF14:
	.string	"__SIZEOF_INT__ 4"
.LASF551:
	.string	"kt_wchan"
.LASF34:
	.string	"__INTMAX_TYPE__ long long int"
.LASF569:
	.string	"p_cwd"
.LASF78:
	.string	"__INTMAX_C(c) c ## LL"
.LASF302:
	.string	"ENOEXEC 8"
.LASF504:
	.string	"KASSERT_LESS(l,r) KASSERT_GENERIC(l, r, lessthan, \"<\")"
.LASF565:
	.string	"p_pagedir"
.LASF46:
	.string	"__UINT64_TYPE__ long long unsigned int"
.LASF416:
	.string	"EDQUOT 122"
.LASF318:
	.string	"EMFILE 24"
.LASF139:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF510:
	.string	"short unsigned int"
.LASF370:
	.string	"ENOTUNIQ 76"
.LASF185:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF18:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF477:
	.string	"DBG_S5FS DBG_MODE(21)"
.LASF305:
	.string	"EAGAIN 11"
.LASF155:
	.string	"__LDBL_MAX__ 1.18973149535723176502e+4932L"
.LASF560:
	.string	"p_children"
.LASF52:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF143:
	.string	"__DBL_EPSILON__ ((double)2.22044604925031308085e-16L)"
.LASF335:
	.string	"EWOULDBLOCK EAGAIN"
.LASF596:
	.string	"__func__"
.LASF122:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF429:
	.string	"PAGE_MASK (0xffffffff<<PAGE_SHIFT)"
.LASF180:
	.string	"__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL"
.LASF439:
	.string	"_BLACK_ \"\\x1b[30;47m\""
.LASF183:
	.string	"__REGISTER_PREFIX__ "
.LASF391:
	.string	"EAFNOSUPPORT 97"
.LASF21:
	.string	"__SIZEOF_SIZE_T__ 4"
.LASF187:
	.string	"__STRICT_ANSI__ 1"
.LASF436:
	.string	"PAGE_NSIZES 8"
.LASF263:
	.string	"PD_WRITE_THROUGH 0x008"
.LASF376:
	.string	"ELIBMAX 82"
.LASF382:
	.string	"ENOTSOCK 88"
.LASF145:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF498:
	.string	"panic(fmt,args...) dbg_panic(__FILE__, __LINE__, __func__, (fmt), ## args)"
.LASF219:
	.string	"__linux__ 1"
.LASF500:
	.ascii	"K"
	.string	"ASSERT_GENERIC(left,right,comparator,comp_str) do { int __left = (int)(left); int __right = (int)(right); if (!comparator(__left, __right)) { panic(\"assertion failed: %s %s %s. Left: %d, Right: %d\\n\", #left, comp_str, #right, __left, __right); } } while(0)"
.LASF574:
	.string	"vmmap"
.LASF371:
	.string	"EBADFD 77"
.LASF559:
	.string	"p_threads"
.LASF324:
	.string	"EROFS 30"
.LASF277:
	.string	"DEFAULT_STACK_SIZE (56*1024)"
.LASF308:
	.string	"EFAULT 14"
.LASF283:
	.string	"MAXPATHLEN 1024"
.LASF454:
	.string	"DBG_MODE(x) (1ULL << (x))"
.LASF153:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF172:
	.string	"__DEC64_MIN__ 1E-383DD"
.LASF214:
	.string	"__pentiumpro 1"
.LASF68:
	.string	"__INT_MAX__ 2147483647"
.LASF38:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF374:
	.string	"ELIBBAD 80"
.LASF191:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1"
.LASF435:
	.string	"PAGE_ALIGNED(x) (0 == ((uintptr_t)(x)) % PAGE_SIZE)"
.LASF159:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF284:
	.string	"MAX_FILES 1024"
.LASF169:
	.string	"__DEC64_MANT_DIG__ 16"
.LASF131:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF534:
	.string	"c_pdptr"
.LASF154:
	.string	"__DECIMAL_DIG__ 21"
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.4) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
