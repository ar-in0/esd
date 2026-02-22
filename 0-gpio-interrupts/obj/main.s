	.cpu cortex-m4
	.arch armv7e-m
	.fpu fpv4-sp-d16
	.eabi_attribute 27, 1
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "main.c"
	.align	1
	.global	GPIOIntHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	GPIOIntHandler, %function
GPIOIntHandler:
.LFB8:
	.loc 1 214 23 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 215 5 view .LVU1
	.loc 1 214 23 is_stmt 0 view .LVU2
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 215 18 view .LVU3
	movs	r1, #1
	ldr	r0, .L10
	bl	GPIOIntStatus
.LVL0:
	mov	r4, r0
.LVL1:
	.loc 1 229 5 is_stmt 1 view .LVU4
	mov	r1, r0
	ldr	r0, .L10
.LVL2:
	.loc 1 229 5 is_stmt 0 view .LVU5
	bl	GPIOIntClear
.LVL3:
	.loc 1 233 5 is_stmt 1 view .LVU6
	.loc 1 233 8 is_stmt 0 view .LVU7
	lsls	r2, r4, #27
	bpl	.L2
	.loc 1 234 9 is_stmt 1 view .LVU8
	.loc 1 234 29 is_stmt 0 view .LVU9
	ldr	r2, .L10+4
	ldrh	r3, [r2]
	adds	r3, r3, #1
	sxth	r3, r3
	strh	r3, [r2]	@ movhi
	.loc 1 235 9 is_stmt 1 view .LVU10
	.loc 1 235 45 is_stmt 0 view .LVU11
	ldrh	r3, [r2]
	movs	r2, #3
	sxth	r3, r3
	sdiv	r2, r3, r2
	add	r2, r2, r2, lsl #1
	subs	r3, r3, r2
	sxth	r3, r3
	.loc 1 235 24 view .LVU12
	ldr	r2, .L10+8
	ldrh	r2, [r2, r3, lsl #1]
	.loc 1 235 16 view .LVU13
	ldr	r3, .L10+12
	strh	r2, [r3]	@ movhi
.L2:
	.loc 1 238 5 is_stmt 1 view .LVU14
	.loc 1 238 8 is_stmt 0 view .LVU15
	lsls	r3, r4, #31
	bpl	.L1
.LBB4:
.LBI4:
	.loc 1 214 6 is_stmt 1 view .LVU16
.LBB5:
	.loc 1 239 9 view .LVU17
	.loc 1 239 30 is_stmt 0 view .LVU18
	ldr	r2, .L10+4
	ldrh	r3, [r2, #2]
	adds	r3, r3, #1
	sxth	r3, r3
	strh	r3, [r2, #2]	@ movhi
	.loc 1 240 9 is_stmt 1 view .LVU19
	.loc 1 240 48 is_stmt 0 view .LVU20
	ldrh	r3, [r2, #2]
	movs	r2, #3
	sxth	r3, r3
	sdiv	r2, r3, r2
	add	r2, r2, r2, lsl #1
	subs	r3, r3, r2
	.loc 1 240 26 view .LVU21
	ldr	r2, .L10+8
	sxtah	r3, r2, r3
	ldrb	r2, [r3, #6]	@ zero_extendqisi2
	.loc 1 240 17 view .LVU22
	ldr	r3, .L10+12
	strb	r2, [r3, #2]
.L1:
.LBE5:
.LBE4:
	.loc 1 242 1 view .LVU23
	pop	{r4, pc}
.LVL4:
.L11:
	.loc 1 242 1 view .LVU24
	.align	2
.L10:
	.word	1073893376
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LANCHOR2
	.cfi_endproc
.LFE8:
	.size	GPIOIntHandler, .-GPIOIntHandler
	.align	1
	.global	unlockPF0
	.syntax unified
	.thumb
	.thumb_func
	.type	unlockPF0, %function
unlockPF0:
.LFB0:
	.loc 1 44 22 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 45 5 view .LVU26
	.loc 1 45 47 is_stmt 0 view .LVU27
	ldr	r3, .L13
	ldr	r2, .L13+4
	str	r2, [r3, #1312]
	.loc 1 62 5 is_stmt 1 view .LVU28
	.loc 1 62 6 is_stmt 0 view .LVU29
	ldr	r2, [r3, #1316]
	.loc 1 62 47 view .LVU30
	orr	r2, r2, #1
	str	r2, [r3, #1316]
	.loc 1 63 1 view .LVU31
	bx	lr
.L14:
	.align	2
.L13:
	.word	1073893376
	.word	1280262987
	.cfi_endproc
.LFE0:
	.size	unlockPF0, .-unlockPF0
	.align	1
	.global	initInterrupts
	.syntax unified
	.thumb
	.thumb_func
	.type	initInterrupts, %function
initInterrupts:
.LFB3:
	.loc 1 151 23 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 152 5 view .LVU33
	.loc 1 151 23 is_stmt 0 view .LVU34
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 154 5 view .LVU35
	ldr	r4, .L16
	movs	r1, #17
	mov	r0, r4
	.loc 1 152 5 view .LVU36
	bl	unlockPF0
.LVL5:
	.loc 1 154 5 is_stmt 1 view .LVU37
	bl	GPIOPinTypeGPIOInput
.LVL6:
	.loc 1 160 5 view .LVU38
	movs	r3, #10
	movs	r2, #1
	mov	r0, r4
	movs	r1, #17
	bl	GPIOPadConfigSet
.LVL7:
	.loc 1 162 5 view .LVU39
	mov	r0, r4
	movs	r1, #17
	bl	GPIOIntEnable
.LVL8:
	.loc 1 163 5 view .LVU40
	mov	r0, r4
	movs	r2, #0
	movs	r1, #17
	bl	GPIOIntTypeSet
.LVL9:
	.loc 1 164 5 view .LVU41
	movs	r1, #0
	movs	r0, #46
	bl	IntPrioritySet
.LVL10:
	.loc 1 166 5 view .LVU42
	.loc 1 167 1 is_stmt 0 view .LVU43
	pop	{r4, lr}
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 166 5 view .LVU44
	ldr	r1, .L16+4
	movs	r0, #46
	b	IntRegister
.LVL11:
.L17:
	.align	2
.L16:
	.word	1073893376
	.word	GPIOIntHandler
	.cfi_endproc
.LFE3:
	.size	initInterrupts, .-initInterrupts
	.align	1
	.global	initHardware
	.syntax unified
	.thumb
	.thumb_func
	.type	initHardware, %function
initHardware:
.LFB2:
	.loc 1 86 25 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 113 5 view .LVU46
	.loc 1 86 25 is_stmt 0 view .LVU47
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 113 5 view .LVU48
	ldr	r0, .L19
	.loc 1 122 5 view .LVU49
	ldr	r4, .L19+4
	.loc 1 113 5 view .LVU50
	bl	SysCtlClockSet
.LVL12:
	.loc 1 120 5 is_stmt 1 view .LVU51
	ldr	r0, .L19+8
	bl	SysCtlPeripheralEnable
.LVL13:
	.loc 1 122 5 view .LVU52
	mov	r0, r4
	movs	r1, #14
	bl	GPIOPinTypeGPIOOutput
.LVL14:
	.loc 1 146 5 view .LVU53
	movs	r2, #14
	mov	r0, r4
	mov	r1, r2
	bl	GPIOPinWrite
.LVL15:
	.loc 1 148 5 view .LVU54
	.loc 1 149 1 is_stmt 0 view .LVU55
	pop	{r4, lr}
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 148 5 view .LVU56
	b	initInterrupts
.LVL16:
.L20:
	.align	2
.L19:
	.word	37750080
	.word	1073893376
	.word	-268433403
	.cfi_endproc
.LFE2:
	.size	initHardware, .-initHardware
	.align	1
	.global	ledToggle
	.syntax unified
	.thumb
	.thumb_func
	.type	ledToggle, %function
ledToggle:
.LFB4:
	.loc 1 169 22 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 170 5 view .LVU58
	.loc 1 169 22 is_stmt 0 view .LVU59
	push	{r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 171 9 view .LVU60
	ldr	r0, .L24
	movs	r1, #14
	bl	GPIOPinRead
.LVL17:
	.loc 1 172 5 is_stmt 1 view .LVU61
	.loc 1 172 8 is_stmt 0 view .LVU62
	uxtb	r0, r0
	.loc 1 172 8 view .LVU63
	cbz	r0, .L22
	.loc 1 173 9 is_stmt 1 view .LVU64
	movs	r2, #0
.L23:
	.loc 1 178 1 is_stmt 0 view .LVU65
	pop	{r3, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 3
	.cfi_def_cfa_offset 0
	.loc 1 175 9 view .LVU66
	ldr	r0, .L24
.LVL18:
	.loc 1 175 9 view .LVU67
	movs	r1, #14
	b	GPIOPinWrite
.LVL19:
.L22:
	.cfi_restore_state
	.loc 1 175 9 is_stmt 1 view .LVU68
	movs	r2, #12
	b	.L23
.L25:
	.align	2
.L24:
	.word	1073893376
	.cfi_endproc
.LFE4:
	.size	ledToggle, .-ledToggle
	.align	1
	.global	ledToggleV1
	.syntax unified
	.thumb
	.thumb_func
	.type	ledToggleV1, %function
ledToggleV1:
.LFB5:
	.loc 1 180 24 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 184 5 view .LVU70
	.loc 1 180 24 is_stmt 0 view .LVU71
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 185 9 view .LVU72
	movs	r1, #14
	ldr	r0, .L33
	bl	GPIOPinRead
.LVL20:
	.loc 1 184 13 view .LVU73
	uxtb	r4, r0
.LVL21:
	.loc 1 186 5 is_stmt 1 view .LVU74
	.loc 1 187 19 is_stmt 0 view .LVU75
	cmp	r4, #14
	it	eq
	moveq	r4, #6
.LVL22:
	.loc 1 190 5 is_stmt 1 view .LVU76
	ldr	r0, .L33
	movs	r2, #0
	movs	r1, #14
	bl	GPIOPinWrite
.LVL23:
	.loc 1 192 5 view .LVU77
	cmp	r4, #10
	beq	.L28
	cmp	r4, #12
	beq	.L29
	cmp	r4, #6
	bne	.L26
.LVL24:
	.loc 1 194 9 view .LVU78
	movs	r2, #10
.LVL25:
.L32:
	.loc 1 206 1 is_stmt 0 view .LVU79
	pop	{r4, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 202 9 view .LVU80
	ldr	r0, .L33
	movs	r1, #14
	b	GPIOPinWrite
.LVL26:
.L28:
	.cfi_restore_state
	.loc 1 198 9 is_stmt 1 view .LVU81
	movs	r2, #12
	b	.L32
.L29:
	.loc 1 202 9 view .LVU82
	movs	r2, #6
	b	.L32
.L26:
	.loc 1 206 1 is_stmt 0 view .LVU83
	pop	{r4, pc}
.LVL27:
.L34:
	.loc 1 206 1 view .LVU84
	.align	2
.L33:
	.word	1073893376
	.cfi_endproc
.LFE5:
	.size	ledToggleV1, .-ledToggleV1
	.align	1
	.global	delay
	.syntax unified
	.thumb
	.thumb_func
	.type	delay, %function
delay:
.LFB6:
	.loc 1 208 18 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 209 5 view .LVU86
	ldr	r0, .L36
	b	SysCtlDelay
.LVL28:
.L37:
	.align	2
.L36:
	.word	10000000
	.cfi_endproc
.LFE6:
	.size	delay, .-delay
	.align	1
	.global	delayV1
	.syntax unified
	.thumb
	.thumb_func
	.type	delayV1, %function
delayV1:
.LVL29:
.LFB7:
	.loc 1 212 32 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 212 34 view .LVU88
	movw	r3, #20000
	muls	r0, r3, r0
.LVL30:
	.loc 1 212 34 is_stmt 0 view .LVU89
	b	SysCtlDelay
.LVL31:
	.cfi_endproc
.LFE7:
	.size	delayV1, .-delayV1
	.align	1
	.global	ledToggleV2
	.syntax unified
	.thumb
	.thumb_func
	.type	ledToggleV2, %function
ledToggleV2:
.LVL32:
.LFB9:
	.loc 1 244 34 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 246 5 view .LVU91
	.loc 1 244 34 is_stmt 0 view .LVU92
	mov	r2, r0
	.loc 1 246 5 view .LVU93
	movs	r1, #14
	ldr	r0, .L40
.LVL33:
	.loc 1 246 5 view .LVU94
	b	GPIOPinWrite
.LVL34:
.L41:
	.loc 1 246 5 view .LVU95
	.align	2
.L40:
	.word	1073893376
	.cfi_endproc
.LFE9:
	.size	ledToggleV2, .-ledToggleV2
	.section	.text.startup,"ax",%progbits
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.type	main, %function
main:
.LFB1:
	.loc 1 65 17 is_stmt 1 view -0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 67 5 view .LVU97
	.loc 1 65 17 is_stmt 0 view .LVU98
	push	{r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 67 5 view .LVU99
	bl	initHardware
.LVL35:
	.loc 1 69 5 is_stmt 1 view .LVU100
	bl	delay
.LVL36:
	.loc 1 70 5 view .LVU101
	bl	delay
.LVL37:
	.loc 1 73 5 view .LVU102
	movs	r0, #46
	bl	IntEnable
.LVL38:
	.loc 1 74 5 view .LVU103
	bl	IntMasterEnable
.LVL39:
	.loc 1 79 9 is_stmt 0 view .LVU104
	ldr	r4, .L44
	.loc 1 81 9 view .LVU105
	ldr	r5, .L44+4
.L43:
	.loc 1 76 5 is_stmt 1 view .LVU106
	.loc 1 79 9 view .LVU107
	ldrb	r0, [r4, #2]	@ zero_extendqisi2
	bl	ledToggleV2
.LVL40:
	.loc 1 80 9 view .LVU108
	ldrh	r0, [r4]
	uxth	r0, r0
	bl	delayV1
.LVL41:
	.loc 1 81 9 view .LVU109
	mov	r0, r5
	movs	r2, #0
	movs	r1, #14
	bl	GPIOPinWrite
.LVL42:
	.loc 1 82 9 discriminator 1 view .LVU110
	ldrh	r0, [r4]
	uxth	r0, r0
	bl	delayV1
.LVL43:
	.loc 1 76 11 view .LVU111
	b	.L43
.L45:
	.align	2
.L44:
	.word	.LANCHOR2
	.word	1073893376
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.global	_colour
	.global	COLOURS
	.global	i16ToggleCountColour
	.global	_delay
	.global	DELAYS
	.global	i16ToggleCountDelay
	.section	.rodata
	.align	1
	.set	.LANCHOR1,. + 0
	.type	DELAYS, %object
	.size	DELAYS, 6
DELAYS:
	.short	500
	.short	1000
	.short	2000
	.type	COLOURS, %object
	.size	COLOURS, 3
COLOURS:
	.ascii	"\006\012\014"
	.data
	.align	1
	.set	.LANCHOR2,. + 0
	.type	_delay, %object
	.size	_delay, 2
_delay:
	.short	500
	.type	_colour, %object
	.size	_colour, 1
_colour:
	.byte	6
	.bss
	.align	1
	.set	.LANCHOR0,. + 0
	.type	i16ToggleCountDelay, %object
	.size	i16ToggleCountDelay, 2
i16ToggleCountDelay:
	.space	2
	.type	i16ToggleCountColour, %object
	.size	i16ToggleCountColour, 2
i16ToggleCountColour:
	.space	2
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/arm-none-eabi/13.2.1/include/stdint.h"
	.file 3 "/home/armaan/ti/tivaware/driverlib/gpio.h"
	.file 4 "/home/armaan/ti/tivaware/driverlib/sysctl.h"
	.file 5 "/home/armaan/ti/tivaware/driverlib/interrupt.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x6ac
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x13
	.4byte	.LASF48
	.byte	0xc
	.4byte	.LASF49
	.4byte	.LASF50
	.4byte	.LLRL5
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0xa
	.4byte	.LASF6
	.byte	0x25
	.byte	0x13
	.4byte	0x59
	.uleb128 0xc
	.4byte	0x49
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0xa
	.4byte	.LASF7
	.byte	0x28
	.byte	0x12
	.4byte	0x6b
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0xa
	.4byte	.LASF10
	.byte	0x2e
	.byte	0x17
	.4byte	0x2d
	.uleb128 0xb
	.4byte	0x79
	.uleb128 0xc
	.4byte	0x79
	.uleb128 0xa
	.4byte	.LASF11
	.byte	0x31
	.byte	0x1c
	.4byte	0x3b
	.uleb128 0xb
	.4byte	0x8e
	.uleb128 0xc
	.4byte	0x8e
	.uleb128 0xa
	.4byte	.LASF12
	.byte	0x34
	.byte	0x1b
	.4byte	0xae
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x14
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x1e
	.byte	0x12
	.4byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	i16ToggleCountDelay
	.uleb128 0xe
	.4byte	0x99
	.4byte	0xdc
	.uleb128 0xf
	.4byte	0x34
	.byte	0
	.uleb128 0xb
	.4byte	0xcd
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x1f
	.byte	0x10
	.4byte	0xdc
	.uleb128 0x5
	.byte	0x3
	.4byte	DELAYS
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x20
	.byte	0x13
	.4byte	0x9e
	.uleb128 0x5
	.byte	0x3
	.4byte	_delay
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x22
	.byte	0x12
	.4byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	i16ToggleCountColour
	.uleb128 0xe
	.4byte	0x84
	.4byte	0x123
	.uleb128 0xf
	.4byte	0x34
	.byte	0
	.uleb128 0xb
	.4byte	0x114
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x23
	.byte	0xf
	.4byte	0x123
	.uleb128 0x5
	.byte	0x3
	.4byte	COLOURS
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x24
	.byte	0x12
	.4byte	0x89
	.uleb128 0x5
	.byte	0x3
	.4byte	_colour
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0x3
	.byte	0x99
	.4byte	0x160
	.uleb128 0x2
	.4byte	0xa3
	.uleb128 0x2
	.4byte	0xa3
	.byte	0
	.uleb128 0x10
	.4byte	.LASF23
	.byte	0x98
	.byte	0x11
	.4byte	0xa3
	.4byte	0x17a
	.uleb128 0x2
	.4byte	0xa3
	.uleb128 0x2
	.4byte	0x17a
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF20
	.uleb128 0xd
	.4byte	.LASF22
	.2byte	0x277
	.4byte	0x192
	.uleb128 0x2
	.4byte	0xa3
	.byte	0
	.uleb128 0x10
	.4byte	.LASF24
	.byte	0x9f
	.byte	0x10
	.4byte	0x60
	.4byte	0x1ac
	.uleb128 0x2
	.4byte	0xa3
	.uleb128 0x2
	.4byte	0x79
	.byte	0
	.uleb128 0x5
	.4byte	.LASF25
	.byte	0x5
	.byte	0x45
	.4byte	0x1c2
	.uleb128 0x2
	.4byte	0xa3
	.uleb128 0x2
	.4byte	0x1c2
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.4byte	0x1c8
	.uleb128 0x16
	.uleb128 0x5
	.4byte	.LASF26
	.byte	0x5
	.byte	0x49
	.4byte	0x1df
	.uleb128 0x2
	.4byte	0xa3
	.uleb128 0x2
	.4byte	0x79
	.byte	0
	.uleb128 0x5
	.4byte	.LASF27
	.byte	0x3
	.byte	0x8f
	.4byte	0x1fa
	.uleb128 0x2
	.4byte	0xa3
	.uleb128 0x2
	.4byte	0x79
	.uleb128 0x2
	.4byte	0xa3
	.byte	0
	.uleb128 0x5
	.4byte	.LASF28
	.byte	0x3
	.byte	0x96
	.4byte	0x210
	.uleb128 0x2
	.4byte	0xa3
	.uleb128 0x2
	.4byte	0xa3
	.byte	0
	.uleb128 0x5
	.4byte	.LASF29
	.byte	0x3
	.byte	0x92
	.4byte	0x230
	.uleb128 0x2
	.4byte	0xa3
	.uleb128 0x2
	.4byte	0x79
	.uleb128 0x2
	.4byte	0xa3
	.uleb128 0x2
	.4byte	0xa3
	.byte	0
	.uleb128 0x5
	.4byte	.LASF30
	.byte	0x3
	.byte	0xaa
	.4byte	0x246
	.uleb128 0x2
	.4byte	0xa3
	.uleb128 0x2
	.4byte	0x79
	.byte	0
	.uleb128 0x5
	.4byte	.LASF31
	.byte	0x3
	.byte	0xab
	.4byte	0x25c
	.uleb128 0x2
	.4byte	0xa3
	.uleb128 0x2
	.4byte	0x79
	.byte	0
	.uleb128 0xd
	.4byte	.LASF32
	.2byte	0x25d
	.4byte	0x26d
	.uleb128 0x2
	.4byte	0xa3
	.byte	0
	.uleb128 0xd
	.4byte	.LASF33
	.2byte	0x27a
	.4byte	0x27e
	.uleb128 0x2
	.4byte	0xa3
	.byte	0
	.uleb128 0x5
	.4byte	.LASF34
	.byte	0x3
	.byte	0xa0
	.4byte	0x299
	.uleb128 0x2
	.4byte	0xa3
	.uleb128 0x2
	.4byte	0x79
	.uleb128 0x2
	.4byte	0x79
	.byte	0
	.uleb128 0x17
	.4byte	.LASF51
	.byte	0x5
	.byte	0x43
	.byte	0xc
	.4byte	0x17a
	.uleb128 0x5
	.4byte	.LASF35
	.byte	0x5
	.byte	0x4c
	.4byte	0x2b6
	.uleb128 0x2
	.4byte	0xa3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF37
	.byte	0xf4
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x303
	.uleb128 0x11
	.4byte	.LASF39
	.byte	0xf4
	.byte	0x1a
	.4byte	0x79
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x9
	.4byte	.LVL34
	.4byte	0x27e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0xc
	.4byte	0x40025000
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF36
	.byte	0x1
	.byte	0xd6
	.byte	0x6
	.byte	0x1
	.4byte	0x31d
	.uleb128 0x19
	.4byte	.LASF52
	.byte	0x1
	.byte	0xd7
	.byte	0x9
	.4byte	0xb5
	.byte	0
	.uleb128 0x6
	.4byte	.LASF38
	.byte	0xd4
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x360
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0xd4
	.byte	0x17
	.4byte	0x8e
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x9
	.4byte	.LVL31
	.4byte	0x181
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0xd
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x34
	.byte	0xa8
	.uleb128 0
	.byte	0xa
	.2byte	0x4e20
	.byte	0x1e
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0xd0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x388
	.uleb128 0x9
	.4byte	.LVL28
	.4byte	0x181
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0xc
	.4byte	0x989680
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF42
	.byte	0xb4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x404
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0xb8
	.4byte	0x79
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x3
	.4byte	.LVL20
	.4byte	0x192
	.4byte	0x3ca
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0xc
	.4byte	0x40025000
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3e
	.byte	0
	.uleb128 0x3
	.4byte	.LVL23
	.4byte	0x27e
	.4byte	0x3eb
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0xc
	.4byte	0x40025000
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x9
	.4byte	.LVL26
	.4byte	0x27e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0xc
	.4byte	0x40025000
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3e
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF44
	.byte	0xa9
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x45f
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0xaa
	.4byte	0x79
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x3
	.4byte	.LVL17
	.4byte	0x192
	.4byte	0x446
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0xc
	.4byte	0x40025000
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3e
	.byte	0
	.uleb128 0x9
	.4byte	.LVL19
	.4byte	0x27e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0xc
	.4byte	0x40025000
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3e
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF45
	.byte	0x97
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x522
	.uleb128 0x7
	.4byte	.LVL5
	.4byte	0x62c
	.uleb128 0x3
	.4byte	.LVL6
	.4byte	0x230
	.4byte	0x495
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LVL7
	.4byte	0x210
	.4byte	0x4b8
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x41
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x3
	.4byte	.LVL8
	.4byte	0x1fa
	.4byte	0x4d1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LVL9
	.4byte	0x1df
	.4byte	0x4ef
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x41
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3
	.4byte	.LVL10
	.4byte	0x1c9
	.4byte	0x508
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x2e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x9
	.4byte	.LVL11
	.4byte	0x1ac
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x2e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	GPIOIntHandler
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF46
	.byte	0x56
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5a6
	.uleb128 0x3
	.4byte	.LVL12
	.4byte	0x26d
	.4byte	0x54d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0xc
	.4byte	0x2400540
	.byte	0
	.uleb128 0x3
	.4byte	.LVL13
	.4byte	0x25c
	.4byte	0x565
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x6
	.byte	0x11
	.sleb128 -268433403
	.byte	0
	.uleb128 0x3
	.4byte	.LVL14
	.4byte	0x246
	.4byte	0x57e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3e
	.byte	0
	.uleb128 0x3
	.4byte	.LVL15
	.4byte	0x27e
	.4byte	0x59c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x3e
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL16
	.4byte	0x45f
	.byte	0
	.uleb128 0x6
	.4byte	.LASF47
	.byte	0x41
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x62c
	.uleb128 0x7
	.4byte	.LVL35
	.4byte	0x522
	.uleb128 0x7
	.4byte	.LVL36
	.4byte	0x360
	.uleb128 0x7
	.4byte	.LVL37
	.4byte	0x360
	.uleb128 0x3
	.4byte	.LVL38
	.4byte	0x2a5
	.4byte	0x5e9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x2e
	.byte	0
	.uleb128 0x7
	.4byte	.LVL39
	.4byte	0x299
	.uleb128 0x7
	.4byte	.LVL40
	.4byte	0x2b6
	.uleb128 0x7
	.4byte	.LVL41
	.4byte	0x31d
	.uleb128 0x3
	.4byte	.LVL42
	.4byte	0x27e
	.4byte	0x622
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x7
	.4byte	.LVL43
	.4byte	0x31d
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF53
	.byte	0x1
	.byte	0x2c
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.4byte	0x303
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1d
	.4byte	0x310
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x1e
	.4byte	0x303
	.4byte	.LBI4
	.byte	.LVU16
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0xd6
	.byte	0x6
	.4byte	0x679
	.uleb128 0x1f
	.4byte	0x310
	.byte	0
	.uleb128 0x3
	.4byte	.LVL0
	.4byte	0x160
	.4byte	0x695
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0xc
	.4byte	0x40025000
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x20
	.4byte	.LVL3
	.4byte	0x14a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0xc
	.4byte	0x40025000
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.uleb128 0x1
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
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x82
	.uleb128 0x19
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x21
	.sleb128 2
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x82
	.uleb128 0x19
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loclists,"",%progbits
	.4byte	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.Ldebug_loc0:
.LVUS4:
	.uleb128 0
	.uleb128 .LVU94
	.uleb128 .LVU94
	.uleb128 .LVU95
	.uleb128 .LVU95
	.uleb128 0
.LLST4:
	.byte	0x6
	.4byte	.LVL32
	.byte	0x4
	.uleb128 .LVL32-.LVL32
	.uleb128 .LVL33-.LVL32
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL33-.LVL32
	.uleb128 .LVL34-1-.LVL32
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL34-1-.LVL32
	.uleb128 .LFE9-.LVL32
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU89
	.uleb128 .LVU89
	.uleb128 0
.LLST3:
	.byte	0x6
	.4byte	.LVL29
	.byte	0x4
	.uleb128 .LVL29-.LVL29
	.uleb128 .LVL30-.LVL29
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL30-.LVL29
	.uleb128 .LFE7-.LVL29
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x3b
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 .LVU74
	.uleb128 .LVU78
	.uleb128 .LVU78
	.uleb128 .LVU79
	.uleb128 .LVU81
	.uleb128 .LVU84
.LLST2:
	.byte	0x6
	.4byte	.LVL21
	.byte	0x4
	.uleb128 .LVL21-.LVL21
	.uleb128 .LVL24-.LVL21
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL24-.LVL21
	.uleb128 .LVL25-.LVL21
	.uleb128 0x2
	.byte	0x36
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL26-.LVL21
	.uleb128 .LVL27-.LVL21
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS1:
	.uleb128 .LVU61
	.uleb128 .LVU67
	.uleb128 .LVU68
	.uleb128 0
.LLST1:
	.byte	0x6
	.4byte	.LVL17
	.byte	0x4
	.uleb128 .LVL17-.LVL17
	.uleb128 .LVL18-.LVL17
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL19-.LVL17
	.uleb128 .LFE4-.LVL17
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS0:
	.uleb128 .LVU4
	.uleb128 .LVU5
	.uleb128 .LVU5
	.uleb128 .LVU6
	.uleb128 .LVU6
	.uleb128 .LVU24
.LLST0:
	.byte	0x6
	.4byte	.LVL1
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LVL2-.LVL1
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL2-.LVL1
	.uleb128 .LVL3-1-.LVL1
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL3-1-.LVL1
	.uleb128 .LVL4-.LVL1
	.uleb128 0x1
	.byte	0x54
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",%progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	0
	.4byte	0
	.section	.debug_rnglists,"",%progbits
.Ldebug_ranges0:
	.4byte	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.LLRL5:
	.byte	0x7
	.4byte	.Ltext0
	.uleb128 .Letext0-.Ltext0
	.byte	0x7
	.4byte	.LFB1
	.uleb128 .LFE1-.LFB1
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF42:
	.ascii	"ledToggleV1\000"
.LASF37:
	.ascii	"ledToggleV2\000"
.LASF34:
	.ascii	"GPIOPinWrite\000"
.LASF24:
	.ascii	"GPIOPinRead\000"
.LASF50:
	.ascii	"/home/armaan/Fun-CS/Embedded/Lab1\000"
.LASF44:
	.ascii	"ledToggle\000"
.LASF53:
	.ascii	"unlockPF0\000"
.LASF30:
	.ascii	"GPIOPinTypeGPIOInput\000"
.LASF27:
	.ascii	"GPIOIntTypeSet\000"
.LASF36:
	.ascii	"GPIOIntHandler\000"
.LASF52:
	.ascii	"status\000"
.LASF33:
	.ascii	"SysCtlClockSet\000"
.LASF39:
	.ascii	"colour\000"
.LASF32:
	.ascii	"SysCtlPeripheralEnable\000"
.LASF41:
	.ascii	"delay\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF48:
	.ascii	"GNU C99 13.2.1 20231009 -mcpu=cortex-m4 -mthumb -mf"
	.ascii	"pu=fpv4-sp-d16 -mfloat-abi=hard -march=armv7e-m+fp "
	.ascii	"-ggdb -Os -std=c99 -ffreestanding\000"
.LASF40:
	.ascii	"delayMs\000"
.LASF28:
	.ascii	"GPIOIntEnable\000"
.LASF13:
	.ascii	"long unsigned int\000"
.LASF23:
	.ascii	"GPIOIntStatus\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF21:
	.ascii	"GPIOIntClear\000"
.LASF46:
	.ascii	"initHardware\000"
.LASF17:
	.ascii	"i16ToggleCountColour\000"
.LASF26:
	.ascii	"IntPrioritySet\000"
.LASF35:
	.ascii	"IntEnable\000"
.LASF47:
	.ascii	"main\000"
.LASF45:
	.ascii	"initInterrupts\000"
.LASF25:
	.ascii	"IntRegister\000"
.LASF16:
	.ascii	"_delay\000"
.LASF38:
	.ascii	"delayV1\000"
.LASF2:
	.ascii	"unsigned int\000"
.LASF0:
	.ascii	"long long unsigned int\000"
.LASF10:
	.ascii	"uint8_t\000"
.LASF51:
	.ascii	"IntMasterEnable\000"
.LASF6:
	.ascii	"int16_t\000"
.LASF43:
	.ascii	"LEDColour\000"
.LASF7:
	.ascii	"int32_t\000"
.LASF14:
	.ascii	"i16ToggleCountDelay\000"
.LASF22:
	.ascii	"SysCtlDelay\000"
.LASF9:
	.ascii	"long long int\000"
.LASF29:
	.ascii	"GPIOPadConfigSet\000"
.LASF49:
	.ascii	"main.c\000"
.LASF5:
	.ascii	"short int\000"
.LASF15:
	.ascii	"DELAYS\000"
.LASF18:
	.ascii	"COLOURS\000"
.LASF11:
	.ascii	"uint16_t\000"
.LASF12:
	.ascii	"uint32_t\000"
.LASF8:
	.ascii	"long int\000"
.LASF31:
	.ascii	"GPIOPinTypeGPIOOutput\000"
.LASF4:
	.ascii	"signed char\000"
.LASF20:
	.ascii	"_Bool\000"
.LASF19:
	.ascii	"_colour\000"
	.ident	"GCC: (15:13.2.rel1-2) 13.2.1 20231009"
