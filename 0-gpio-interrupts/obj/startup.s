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
	.file	"startup.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "/home/armaan/arm-toolchain/boards/TM4C123GH6PM/startup.c"
	.align	1
	.global	Default_Handler
	.syntax unified
	.thumb
	.thumb_func
	.type	Default_Handler, %function
Default_Handler:
.LFB1:
	.loc 1 227 28 view -0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.L2:
	.loc 1 228 5 view .LVU1
	.loc 1 230 5 view .LVU2
	.loc 1 228 11 view .LVU3
	b	.L2
	.cfi_endproc
.LFE1:
	.size	Default_Handler, .-Default_Handler
	.weak	PWM1Fault_ISR
	.thumb_set PWM1Fault_ISR,Default_Handler
	.weak	PWM1Generator3_ISR
	.thumb_set PWM1Generator3_ISR,Default_Handler
	.weak	PWM1Generator2_ISR
	.thumb_set PWM1Generator2_ISR,Default_Handler
	.weak	PWM1Generator1_ISR
	.thumb_set PWM1Generator1_ISR,Default_Handler
	.weak	PWM1Generator0_ISR
	.thumb_set PWM1Generator0_ISR,Default_Handler
	.weak	SystemException_ISR
	.thumb_set SystemException_ISR,Default_Handler
	.weak	WideTimer5B_ISR
	.thumb_set WideTimer5B_ISR,Default_Handler
	.weak	WideTimer5A_ISR
	.thumb_set WideTimer5A_ISR,Default_Handler
	.weak	WideTimer4B_ISR
	.thumb_set WideTimer4B_ISR,Default_Handler
	.weak	WideTimer4A_ISR
	.thumb_set WideTimer4A_ISR,Default_Handler
	.weak	WideTimer3B_ISR
	.thumb_set WideTimer3B_ISR,Default_Handler
	.weak	WideTimer3A_ISR
	.thumb_set WideTimer3A_ISR,Default_Handler
	.weak	WideTimer2B_ISR
	.thumb_set WideTimer2B_ISR,Default_Handler
	.weak	WideTimer2A_ISR
	.thumb_set WideTimer2A_ISR,Default_Handler
	.weak	WideTimer1B_ISR
	.thumb_set WideTimer1B_ISR,Default_Handler
	.weak	WideTimer1A_ISR
	.thumb_set WideTimer1A_ISR,Default_Handler
	.weak	WideTimer0B_ISR
	.thumb_set WideTimer0B_ISR,Default_Handler
	.weak	WideTimer0A_ISR
	.thumb_set WideTimer0A_ISR,Default_Handler
	.weak	Timer5B_ISR
	.thumb_set Timer5B_ISR,Default_Handler
	.weak	Timer5A_ISR
	.thumb_set Timer5A_ISR,Default_Handler
	.weak	Timer4B_ISR
	.thumb_set Timer4B_ISR,Default_Handler
	.weak	Timer4A_ISR
	.thumb_set Timer4A_ISR,Default_Handler
	.weak	I2C3_ISR
	.thumb_set I2C3_ISR,Default_Handler
	.weak	I2C2_ISR
	.thumb_set I2C2_ISR,Default_Handler
	.weak	UART7_ISR
	.thumb_set UART7_ISR,Default_Handler
	.weak	UART6_ISR
	.thumb_set UART6_ISR,Default_Handler
	.weak	UART5_ISR
	.thumb_set UART5_ISR,Default_Handler
	.weak	UART4_ISR
	.thumb_set UART4_ISR,Default_Handler
	.weak	UART3_ISR
	.thumb_set UART3_ISR,Default_Handler
	.weak	SPI3_ISR
	.thumb_set SPI3_ISR,Default_Handler
	.weak	SPI2_ISR
	.thumb_set SPI2_ISR,Default_Handler
	.weak	ADC1Sequence3_ISR
	.thumb_set ADC1Sequence3_ISR,Default_Handler
	.weak	ADC1Sequence2_ISR
	.thumb_set ADC1Sequence2_ISR,Default_Handler
	.weak	ADC1Sequence1_ISR
	.thumb_set ADC1Sequence1_ISR,Default_Handler
	.weak	ADC1Sequence0_ISR
	.thumb_set ADC1Sequence0_ISR,Default_Handler
	.weak	UDMAError_ISR
	.thumb_set UDMAError_ISR,Default_Handler
	.weak	UDMASoftware_ISR
	.thumb_set UDMASoftware_ISR,Default_Handler
	.weak	PWM0Generator3_ISR
	.thumb_set PWM0Generator3_ISR,Default_Handler
	.weak	USB0_ISR
	.thumb_set USB0_ISR,Default_Handler
	.weak	Hibernation_ISR
	.thumb_set Hibernation_ISR,Default_Handler
	.weak	CAN1_ISR
	.thumb_set CAN1_ISR,Default_Handler
	.weak	CAN0_ISR
	.thumb_set CAN0_ISR,Default_Handler
	.weak	QEI1_ISR
	.thumb_set QEI1_ISR,Default_Handler
	.weak	I2C1_ISR
	.thumb_set I2C1_ISR,Default_Handler
	.weak	Timer3B_ISR
	.thumb_set Timer3B_ISR,Default_Handler
	.weak	Timer3A_ISR
	.thumb_set Timer3A_ISR,Default_Handler
	.weak	SPI1_ISR
	.thumb_set SPI1_ISR,Default_Handler
	.weak	UART2_ISR
	.thumb_set UART2_ISR,Default_Handler
	.weak	GPIOPortF_ISR
	.thumb_set GPIOPortF_ISR,Default_Handler
	.weak	FlashCtrl_ISR
	.thumb_set FlashCtrl_ISR,Default_Handler
	.weak	SystemCtrl_ISR
	.thumb_set SystemCtrl_ISR,Default_Handler
	.weak	AnalogComparator1_ISR
	.thumb_set AnalogComparator1_ISR,Default_Handler
	.weak	AnalogComparator0_ISR
	.thumb_set AnalogComparator0_ISR,Default_Handler
	.weak	Timer2B_ISR
	.thumb_set Timer2B_ISR,Default_Handler
	.weak	Timer2A_ISR
	.thumb_set Timer2A_ISR,Default_Handler
	.weak	Timer1B_ISR
	.thumb_set Timer1B_ISR,Default_Handler
	.weak	Timer1A_ISR
	.thumb_set Timer1A_ISR,Default_Handler
	.weak	Timer0B_ISR
	.thumb_set Timer0B_ISR,Default_Handler
	.weak	Timer0A_ISR
	.thumb_set Timer0A_ISR,Default_Handler
	.weak	WatchDogTimer_ISR
	.thumb_set WatchDogTimer_ISR,Default_Handler
	.weak	ADC0Sequence3_ISR
	.thumb_set ADC0Sequence3_ISR,Default_Handler
	.weak	ADC0Sequence2_ISR
	.thumb_set ADC0Sequence2_ISR,Default_Handler
	.weak	ADC0Sequence1_ISR
	.thumb_set ADC0Sequence1_ISR,Default_Handler
	.weak	ADC0Sequence0_ISR
	.thumb_set ADC0Sequence0_ISR,Default_Handler
	.weak	QEI0_ISR
	.thumb_set QEI0_ISR,Default_Handler
	.weak	PWM0Generator2_ISR
	.thumb_set PWM0Generator2_ISR,Default_Handler
	.weak	PWM0Generator1_ISR
	.thumb_set PWM0Generator1_ISR,Default_Handler
	.weak	PWM0Generator0_ISR
	.thumb_set PWM0Generator0_ISR,Default_Handler
	.weak	PWM0Fault_ISR
	.thumb_set PWM0Fault_ISR,Default_Handler
	.weak	I2C0_ISR
	.thumb_set I2C0_ISR,Default_Handler
	.weak	SPI0_ISR
	.thumb_set SPI0_ISR,Default_Handler
	.weak	UART1_ISR
	.thumb_set UART1_ISR,Default_Handler
	.weak	UART0_ISR
	.thumb_set UART0_ISR,Default_Handler
	.weak	GPIOPortE_ISR
	.thumb_set GPIOPortE_ISR,Default_Handler
	.weak	GPIOPortD_ISR
	.thumb_set GPIOPortD_ISR,Default_Handler
	.weak	GPIOPortC_ISR
	.thumb_set GPIOPortC_ISR,Default_Handler
	.weak	GPIOPortB_ISR
	.thumb_set GPIOPortB_ISR,Default_Handler
	.weak	GPIOPortA_ISR
	.thumb_set GPIOPortA_ISR,Default_Handler
	.weak	UsageFault_Handler
	.thumb_set UsageFault_Handler,Default_Handler
	.weak	BusFault_Handler
	.thumb_set BusFault_Handler,Default_Handler
	.weak	MemManageFault_Handler
	.thumb_set MemManageFault_Handler,Default_Handler
	.weak	HardFault_Handler
	.thumb_set HardFault_Handler,Default_Handler
	.weak	SysTick_Handler
	.thumb_set SysTick_Handler,Default_Handler
	.weak	PendSV_Handler
	.thumb_set PendSV_Handler,Default_Handler
	.weak	DebugMonitor_Handler
	.thumb_set DebugMonitor_Handler,Default_Handler
	.weak	SVC_Handler
	.thumb_set SVC_Handler,Default_Handler
	.weak	NMI_Handler
	.thumb_set NMI_Handler,Default_Handler
	.align	1
	.global	Reset_Handler
	.syntax unified
	.thumb
	.thumb_func
	.type	Reset_Handler, %function
Reset_Handler:
.LFB0:
	.loc 1 206 26 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 208 5 view .LVU5
	.loc 1 212 5 view .LVU6
.LVL0:
	.loc 1 213 5 view .LVU7
	.loc 1 213 5 is_stmt 0 view .LVU8
	ldr	r3, .L8
	.loc 1 212 9 view .LVU9
	ldr	r2, .L8+4
	.loc 1 213 30 discriminator 1 view .LVU10
	ldr	r1, .L8+8
.LVL1:
.L4:
	.loc 1 213 30 is_stmt 1 discriminator 1 view .LVU11
	cmp	r3, r1
	bcc	.L5
	.loc 1 219 15 is_stmt 0 view .LVU12
	ldr	r3, .L8+12
.LVL2:
	.loc 1 219 29 discriminator 1 view .LVU13
	ldr	r2, .L8+16
.LVL3:
	.loc 1 220 17 view .LVU14
	movs	r1, #0
.LVL4:
.L6:
	.loc 1 219 29 is_stmt 1 discriminator 1 view .LVU15
	cmp	r3, r2
	bcc	.L7
	.loc 1 224 5 view .LVU16
	b	main
.LVL5:
.L5:
	.loc 1 214 9 view .LVU17
	.loc 1 214 17 is_stmt 0 view .LVU18
	ldr	r0, [r2], #4
.LVL6:
	.loc 1 214 17 view .LVU19
	str	r0, [r3], #4
.LVL7:
	.loc 1 214 17 view .LVU20
	b	.L4
.LVL8:
.L7:
	.loc 1 220 9 is_stmt 1 view .LVU21
	.loc 1 220 17 is_stmt 0 view .LVU22
	str	r1, [r3], #4
.LVL9:
	.loc 1 220 17 view .LVU23
	b	.L6
.L9:
	.align	2
.L8:
	.word	_data
	.word	_etext
	.word	_edata
	.word	_bss
	.word	_ebss
	.cfi_endproc
.LFE0:
	.size	Reset_Handler, .-Reset_Handler
	.global	vectors
	.section	.vector_table,"a"
	.align	2
	.type	vectors, %object
	.size	vectors, 616
vectors:
	.word	_stack_ptr
	.word	Reset_Handler
	.word	NMI_Handler
	.word	HardFault_Handler
	.word	MemManageFault_Handler
	.word	BusFault_Handler
	.word	UsageFault_Handler
	.word	0
	.word	0
	.word	0
	.word	0
	.word	SVC_Handler
	.word	DebugMonitor_Handler
	.word	0
	.word	PendSV_Handler
	.word	SysTick_Handler
	.word	GPIOPortA_ISR
	.word	GPIOPortB_ISR
	.word	GPIOPortC_ISR
	.word	GPIOPortD_ISR
	.word	GPIOPortE_ISR
	.word	UART0_ISR
	.word	UART1_ISR
	.word	SPI0_ISR
	.word	I2C0_ISR
	.word	PWM0Fault_ISR
	.word	PWM0Generator0_ISR
	.word	PWM0Generator1_ISR
	.word	PWM0Generator2_ISR
	.word	QEI0_ISR
	.word	ADC0Sequence0_ISR
	.word	ADC0Sequence1_ISR
	.word	ADC0Sequence2_ISR
	.word	ADC0Sequence3_ISR
	.word	WatchDogTimer_ISR
	.word	Timer0A_ISR
	.word	Timer0B_ISR
	.word	Timer1A_ISR
	.word	Timer1B_ISR
	.word	Timer2A_ISR
	.word	Timer2B_ISR
	.word	AnalogComparator0_ISR
	.word	AnalogComparator1_ISR
	.word	0
	.word	SystemCtrl_ISR
	.word	FlashCtrl_ISR
	.word	GPIOPortF_ISR
	.word	0
	.word	0
	.word	UART2_ISR
	.word	SPI1_ISR
	.word	Timer3A_ISR
	.word	Timer3B_ISR
	.word	I2C1_ISR
	.word	QEI1_ISR
	.word	CAN0_ISR
	.word	CAN1_ISR
	.word	0
	.word	0
	.word	Hibernation_ISR
	.word	USB0_ISR
	.word	PWM0Generator3_ISR
	.word	UDMASoftware_ISR
	.word	UDMAError_ISR
	.word	ADC1Sequence0_ISR
	.word	ADC1Sequence1_ISR
	.word	ADC1Sequence2_ISR
	.word	ADC1Sequence3_ISR
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	SPI2_ISR
	.word	SPI3_ISR
	.word	UART3_ISR
	.word	UART4_ISR
	.word	UART5_ISR
	.word	UART6_ISR
	.word	UART7_ISR
	.word	0
	.word	0
	.word	0
	.word	0
	.word	I2C2_ISR
	.word	I2C3_ISR
	.word	Timer4A_ISR
	.word	Timer4B_ISR
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	Timer5A_ISR
	.word	Timer5B_ISR
	.word	WideTimer0A_ISR
	.word	WideTimer0B_ISR
	.word	WideTimer1A_ISR
	.word	WideTimer1B_ISR
	.word	WideTimer2A_ISR
	.word	WideTimer2B_ISR
	.word	WideTimer3A_ISR
	.word	WideTimer3B_ISR
	.word	WideTimer4A_ISR
	.word	WideTimer4B_ISR
	.word	WideTimer5A_ISR
	.word	WideTimer5B_ISR
	.word	SystemException_ISR
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	PWM1Generator0_ISR
	.word	PWM1Generator1_ISR
	.word	PWM1Generator2_ISR
	.word	PWM1Generator3_ISR
	.word	PWM1Fault_ISR
	.text
.Letext0:
	.file 2 "/home/armaan/arm-toolchain/boards/TM4C123GH6PM/startup.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x144
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0xc
	.4byte	.LASF13
	.4byte	.LASF14
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x24
	.byte	0x10
	.4byte	0x31
	.uleb128 0x3
	.4byte	0x36
	.uleb128 0x6
	.uleb128 0x7
	.byte	0x4
	.byte	0x2
	.byte	0x27
	.byte	0x9
	.4byte	0x59
	.uleb128 0x8
	.ascii	"isr\000"
	.byte	0x2
	.byte	0x28
	.byte	0xf
	.4byte	0x26
	.uleb128 0x9
	.4byte	.LASF0
	.byte	0x2
	.byte	0x29
	.byte	0xb
	.4byte	0x59
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF2
	.byte	0x2a
	.byte	0x3
	.4byte	0x37
	.uleb128 0x4
	.4byte	0x5b
	.uleb128 0x1
	.4byte	.LASF3
	.byte	0x9e
	.4byte	0x75
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x1
	.4byte	.LASF4
	.byte	0xa0
	.4byte	0x75
	.uleb128 0x1
	.4byte	.LASF5
	.byte	0xa2
	.4byte	0x75
	.uleb128 0x1
	.4byte	.LASF6
	.byte	0xa3
	.4byte	0x75
	.uleb128 0x1
	.4byte	.LASF7
	.byte	0xa5
	.4byte	0x75
	.uleb128 0x1
	.4byte	.LASF8
	.byte	0xa6
	.4byte	0x75
	.uleb128 0xc
	.4byte	0x66
	.4byte	0xbe
	.uleb128 0xd
	.4byte	0xc3
	.byte	0x99
	.byte	0
	.uleb128 0x4
	.4byte	0xae
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0xf
	.4byte	.LASF10
	.byte	0x1
	.byte	0x26
	.byte	0x16
	.4byte	0xbe
	.uleb128 0x5
	.byte	0x3
	.4byte	vectors
	.uleb128 0x10
	.4byte	.LASF15
	.byte	0x2
	.byte	0x9b
	.byte	0xc
	.4byte	0x75
	.uleb128 0x11
	.4byte	.LASF16
	.byte	0x1
	.byte	0xe3
	.byte	0x6
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x12
	.4byte	.LASF17
	.byte	0x1
	.byte	0xce
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x142
	.uleb128 0x13
	.ascii	"src\000"
	.byte	0x1
	.byte	0xd0
	.byte	0xa
	.4byte	0x142
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x14
	.4byte	.LASF11
	.byte	0x1
	.byte	0xd0
	.byte	0x10
	.4byte	0x142
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x15
	.4byte	.LVL5
	.4byte	0xdc
	.byte	0
	.uleb128 0x3
	.4byte	0x75
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 12
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.uleb128 0x3
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xd
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
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
	.uleb128 0x14
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.byte	0
	.section	.debug_loclists,"",%progbits
	.4byte	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.Ldebug_loc0:
.LVUS0:
	.uleb128 .LVU11
	.uleb128 .LVU14
	.uleb128 .LVU17
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 .LVU19
	.uleb128 .LVU19
	.uleb128 .LVU21
.LLST0:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LVL5-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LVL6-.Ltext0
	.uleb128 0x3
	.byte	0x72
	.sleb128 4
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LVL8-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0
.LVUS1:
	.uleb128 .LVU11
	.uleb128 .LVU13
	.uleb128 .LVU15
	.uleb128 .LVU17
	.uleb128 .LVU17
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 .LVU20
	.uleb128 .LVU20
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 .LVU23
	.uleb128 .LVU23
	.uleb128 0
.LLST1:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL2-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LVL5-1-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LVL5-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LVL7-.Ltext0
	.uleb128 0x3
	.byte	0x73
	.sleb128 4
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.Ltext0
	.uleb128 .LVL8-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL8-.Ltext0
	.uleb128 .LVL9-.Ltext0
	.uleb128 0x3
	.byte	0x73
	.sleb128 4
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL9-.Ltext0
	.uleb128 .LFE0-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF16:
	.ascii	"Default_Handler\000"
.LASF9:
	.ascii	"unsigned int\000"
.LASF8:
	.ascii	"_ebss\000"
.LASF14:
	.ascii	"/home/armaan/Fun-CS/Embedded/Lab1\000"
.LASF11:
	.ascii	"dest\000"
.LASF6:
	.ascii	"_edata\000"
.LASF4:
	.ascii	"_etext\000"
.LASF17:
	.ascii	"Reset_Handler\000"
.LASF0:
	.ascii	"stack_top\000"
.LASF12:
	.ascii	"GNU C99 13.2.1 20231009 -mcpu=cortex-m4 -mthumb -mf"
	.ascii	"pu=fpv4-sp-d16 -mfloat-abi=hard -march=armv7e-m+fp "
	.ascii	"-ggdb -Os -std=c99 -ffreestanding\000"
.LASF15:
	.ascii	"main\000"
.LASF3:
	.ascii	"_stack_ptr\000"
.LASF2:
	.ascii	"vector_table_t\000"
.LASF7:
	.ascii	"_bss\000"
.LASF5:
	.ascii	"_data\000"
.LASF10:
	.ascii	"vectors\000"
.LASF13:
	.ascii	"/home/armaan/arm-toolchain/boards/TM4C123GH6PM/star"
	.ascii	"tup.c\000"
.LASF1:
	.ascii	"element_t\000"
	.ident	"GCC: (15:13.2.rel1-2) 13.2.1 20231009"
