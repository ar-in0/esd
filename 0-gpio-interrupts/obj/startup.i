# 0 "/home/armaan/arm-toolchain/boards/TM4C123GH6PM/startup.c"
# 1 "/home/armaan/Fun-CS/Embedded/Lab1//"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/home/armaan/arm-toolchain/boards/TM4C123GH6PM/startup.c"
# 27 "/home/armaan/arm-toolchain/boards/TM4C123GH6PM/startup.c"
# 1 "/home/armaan/arm-toolchain/boards/TM4C123GH6PM/startup.h" 1
# 36 "/home/armaan/arm-toolchain/boards/TM4C123GH6PM/startup.h"
typedef void (*element_t)(void);


typedef union {
    element_t isr;
    void *stack_top;
} vector_table_t;







void Default_Handler(void);



void Reset_Handler(void);
__attribute__((weak, alias("Default_Handler"))) void NMI_Handler(void);
__attribute__((weak, alias("Default_Handler"))) void SVC_Handler(void);
__attribute__((weak, alias("Default_Handler"))) void DebugMonitor_Handler(void);
__attribute__((weak, alias("Default_Handler"))) void PendSV_Handler(void);
__attribute__((weak, alias("Default_Handler"))) void SysTick_Handler(void);



__attribute__((weak, alias("Default_Handler"))) void HardFault_Handler(void);
__attribute__((weak, alias("Default_Handler"))) void MemManageFault_Handler(void);
__attribute__((weak, alias("Default_Handler"))) void BusFault_Handler(void);
__attribute__((weak, alias("Default_Handler"))) void UsageFault_Handler(void);




__attribute__((weak, alias("Default_Handler"))) void GPIOPortA_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void GPIOPortB_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void GPIOPortC_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void GPIOPortD_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void GPIOPortE_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void UART0_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void UART1_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void SPI0_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void I2C0_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void PWM0Fault_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void PWM0Generator0_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void PWM0Generator1_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void PWM0Generator2_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void QEI0_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void ADC0Sequence0_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void ADC0Sequence1_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void ADC0Sequence2_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void ADC0Sequence3_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void WatchDogTimer_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void Timer0A_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void Timer0B_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void Timer1A_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void Timer1B_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void Timer2A_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void Timer2B_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void AnalogComparator0_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void AnalogComparator1_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void SystemCtrl_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void FlashCtrl_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void GPIOPortF_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void UART2_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void SPI1_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void Timer3A_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void Timer3B_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void I2C1_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void QEI1_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void CAN0_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void CAN1_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void Hibernation_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void USB0_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void PWM0Generator3_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void UDMASoftware_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void UDMAError_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void ADC1Sequence0_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void ADC1Sequence1_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void ADC1Sequence2_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void ADC1Sequence3_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void SPI2_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void SPI3_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void UART3_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void UART4_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void UART5_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void UART6_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void UART7_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void I2C2_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void I2C3_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void Timer4A_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void Timer4B_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void Timer5A_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void Timer5B_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void WideTimer0A_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void WideTimer0B_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void WideTimer1A_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void WideTimer1B_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void WideTimer2A_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void WideTimer2B_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void WideTimer3A_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void WideTimer3B_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void WideTimer4A_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void WideTimer4B_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void WideTimer5A_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void WideTimer5B_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void SystemException_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void PWM1Generator0_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void PWM1Generator1_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void PWM1Generator2_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void PWM1Generator3_ISR(void);
__attribute__((weak, alias("Default_Handler"))) void PWM1Fault_ISR(void);






extern int main(void);


extern int _stack_ptr;

extern int _etext;

extern int _data;
extern int _edata;

extern int _bss;
extern int _ebss;
# 28 "/home/armaan/arm-toolchain/boards/TM4C123GH6PM/startup.c" 2






__attribute__((section(
    ".vector_table")))


const vector_table_t vectors[] = {
    {.stack_top = &_stack_ptr},
    Reset_Handler,

    NMI_Handler,
    HardFault_Handler,
    MemManageFault_Handler,

    BusFault_Handler,
    UsageFault_Handler,
    0,
    0,
    0,
    0,
    SVC_Handler,
    DebugMonitor_Handler,
    0,
    PendSV_Handler,

    SysTick_Handler,
    GPIOPortA_ISR,

    GPIOPortB_ISR,

    GPIOPortC_ISR,

    GPIOPortD_ISR,

    GPIOPortE_ISR,

    UART0_ISR,
    UART1_ISR,
    SPI0_ISR,
    I2C0_ISR,
    PWM0Fault_ISR,
    PWM0Generator0_ISR,
    PWM0Generator1_ISR,
    PWM0Generator2_ISR,
    QEI0_ISR,
    ADC0Sequence0_ISR,
    ADC0Sequence1_ISR,
    ADC0Sequence2_ISR,
    ADC0Sequence3_ISR,
    WatchDogTimer_ISR,
    Timer0A_ISR,
    Timer0B_ISR,
    Timer1A_ISR,
    Timer1B_ISR,
    Timer2A_ISR,
    Timer2B_ISR,
    AnalogComparator0_ISR,
    AnalogComparator1_ISR,
    0,
    SystemCtrl_ISR,
    FlashCtrl_ISR,
    GPIOPortF_ISR,
    0,
    0,
    UART2_ISR,
    SPI1_ISR,
    Timer3A_ISR,
    Timer3B_ISR,
    I2C1_ISR,
    QEI1_ISR,
    CAN0_ISR,
    CAN1_ISR,
    0,
    0,
    Hibernation_ISR,
    USB0_ISR,
    PWM0Generator3_ISR,
    UDMASoftware_ISR,
    UDMAError_ISR,
    ADC1Sequence0_ISR,
    ADC1Sequence1_ISR,
    ADC1Sequence2_ISR,
    ADC1Sequence3_ISR,
    0,
    0,
    0,
    0,
    0,
    SPI2_ISR,
    SPI3_ISR,
    UART3_ISR,
    UART4_ISR,
    UART5_ISR,
    UART6_ISR,
    UART7_ISR,
    0,
    0,
    0,
    0,
    I2C2_ISR,
    I2C3_ISR,
    Timer4A_ISR,
    Timer4B_ISR,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    Timer5A_ISR,
    Timer5B_ISR,
    WideTimer0A_ISR,
    WideTimer0B_ISR,
    WideTimer1A_ISR,
    WideTimer1B_ISR,
    WideTimer2A_ISR,
    WideTimer2B_ISR,
    WideTimer3A_ISR,
    WideTimer3B_ISR,
    WideTimer4A_ISR,
    WideTimer4B_ISR,
    WideTimer5A_ISR,
    WideTimer5B_ISR,
    SystemException_ISR,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    PWM1Generator0_ISR,
    PWM1Generator1_ISR,
    PWM1Generator2_ISR,
    PWM1Generator3_ISR,
    PWM1Fault_ISR,
};




void Reset_Handler(void) {

    int *src, *dest;



    src = &_etext;
    for (dest = &_data; dest < &_edata;) {
        *dest++ = *src++;
    }



    for (dest = &_bss; dest < &_ebss;) {
        *dest++ = 0;
    }


    main();
}

void Default_Handler(void) {
    while (1) {

    }
}
