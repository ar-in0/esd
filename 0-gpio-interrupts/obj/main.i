# 0 "main.c"
# 1 "/home/armaan/Fun-CS/Embedded/Lab1//"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "main.c"

# 1 "/usr/lib/gcc/arm-none-eabi/13.2.1/include/stdbool.h" 1 3 4
# 3 "main.c" 2
# 1 "/usr/lib/gcc/arm-none-eabi/13.2.1/include/stdint.h" 1 3 4
# 34 "/usr/lib/gcc/arm-none-eabi/13.2.1/include/stdint.h" 3 4

# 34 "/usr/lib/gcc/arm-none-eabi/13.2.1/include/stdint.h" 3 4
typedef signed char int8_t;


typedef short int int16_t;


typedef long int int32_t;


typedef long long int int64_t;


typedef unsigned char uint8_t;


typedef short unsigned int uint16_t;


typedef long unsigned int uint32_t;


typedef long long unsigned int uint64_t;




typedef signed char int_least8_t;
typedef short int int_least16_t;
typedef long int int_least32_t;
typedef long long int int_least64_t;
typedef unsigned char uint_least8_t;
typedef short unsigned int uint_least16_t;
typedef long unsigned int uint_least32_t;
typedef long long unsigned int uint_least64_t;



typedef int int_fast8_t;
typedef int int_fast16_t;
typedef int int_fast32_t;
typedef long long int int_fast64_t;
typedef unsigned int uint_fast8_t;
typedef unsigned int uint_fast16_t;
typedef unsigned int uint_fast32_t;
typedef long long unsigned int uint_fast64_t;




typedef int intptr_t;


typedef unsigned int uintptr_t;




typedef long long int intmax_t;
typedef long long unsigned int uintmax_t;
# 4 "main.c" 2

# 1 "/home/armaan/ti/tivaware/driverlib/gpio.h" 1
# 140 "/home/armaan/ti/tivaware/driverlib/gpio.h"

# 140 "/home/armaan/ti/tivaware/driverlib/gpio.h"
extern void GPIODirModeSet(uint32_t ui32Port, uint8_t ui8Pins,
                           uint32_t ui32PinIO);
extern uint32_t GPIODirModeGet(uint32_t ui32Port, uint8_t ui8Pin);
extern void GPIOIntTypeSet(uint32_t ui32Port, uint8_t ui8Pins,
                           uint32_t ui32IntType);
extern uint32_t GPIOIntTypeGet(uint32_t ui32Port, uint8_t ui8Pin);
extern void GPIOPadConfigSet(uint32_t ui32Port, uint8_t ui8Pins,
                             uint32_t ui32Strength, uint32_t ui32PadType);
extern void GPIOPadConfigGet(uint32_t ui32Port, uint8_t ui8Pin,
                             uint32_t *pui32Strength, uint32_t *pui32PadType);
extern void GPIOIntEnable(uint32_t ui32Port, uint32_t ui32IntFlags);
extern void GPIOIntDisable(uint32_t ui32Port, uint32_t ui32IntFlags);
extern uint32_t GPIOIntStatus(uint32_t ui32Port, 
# 152 "/home/armaan/ti/tivaware/driverlib/gpio.h" 3 4
                                                _Bool 
# 152 "/home/armaan/ti/tivaware/driverlib/gpio.h"
                                                     bMasked);
extern void GPIOIntClear(uint32_t ui32Port, uint32_t ui32IntFlags);
extern void GPIOIntRegister(uint32_t ui32Port, void (*pfnIntHandler)(void));
extern void GPIOIntUnregister(uint32_t ui32Port);
extern void GPIOIntRegisterPin(uint32_t ui32Port, uint32_t ui32Pin,
                               void (*pfnIntHandler)(void));
extern void GPIOIntUnregisterPin(uint32_t ui32Port, uint32_t ui32Pin);
extern int32_t GPIOPinRead(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinWrite(uint32_t ui32Port, uint8_t ui8Pins, uint8_t ui8Val);
extern void GPIOPinConfigure(uint32_t ui32PinConfig);
extern void GPIOPinTypeADC(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeCAN(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeComparator(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeComparatorOutput(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeDIVSCLK(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeEPI(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeEthernetLED(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeEthernetMII(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeGPIOInput(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeGPIOOutput(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeGPIOOutputOD(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeHibernateRTCCLK(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeI2C(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeI2CSCL(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeLCD(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeOneWire(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypePWM(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeQEI(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeSSI(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeTimer(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeTrace(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeUART(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeUSBAnalog(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeUSBDigital(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeWakeHigh(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeWakeLow(uint32_t ui32Port, uint8_t ui8Pins);
extern uint32_t GPIOPinWakeStatus(uint32_t ui32Port);
extern void GPIODMATriggerEnable(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIODMATriggerDisable(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOADCTriggerEnable(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOADCTriggerDisable(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOUnlockPin(uint32_t ui32Port, uint8_t ui8Pins);
# 6 "main.c" 2
# 1 "/home/armaan/ti/tivaware/driverlib/interrupt.h" 1
# 67 "/home/armaan/ti/tivaware/driverlib/interrupt.h"
extern 
# 67 "/home/armaan/ti/tivaware/driverlib/interrupt.h" 3 4
      _Bool 
# 67 "/home/armaan/ti/tivaware/driverlib/interrupt.h"
           IntMasterEnable(void);
extern 
# 68 "/home/armaan/ti/tivaware/driverlib/interrupt.h" 3 4
      _Bool 
# 68 "/home/armaan/ti/tivaware/driverlib/interrupt.h"
           IntMasterDisable(void);
extern void IntRegister(uint32_t ui32Interrupt, void (*pfnHandler)(void));
extern void IntUnregister(uint32_t ui32Interrupt);
extern void IntPriorityGroupingSet(uint32_t ui32Bits);
extern uint32_t IntPriorityGroupingGet(void);
extern void IntPrioritySet(uint32_t ui32Interrupt,
                           uint8_t ui8Priority);
extern int32_t IntPriorityGet(uint32_t ui32Interrupt);
extern void IntEnable(uint32_t ui32Interrupt);
extern void IntDisable(uint32_t ui32Interrupt);
extern uint32_t IntIsEnabled(uint32_t ui32Interrupt);
extern void IntPendSet(uint32_t ui32Interrupt);
extern void IntPendClear(uint32_t ui32Interrupt);
extern void IntPriorityMaskSet(uint32_t ui32PriorityMask);
extern uint32_t IntPriorityMaskGet(void);
extern void IntTrigger(uint32_t ui32Interrupt);
# 7 "main.c" 2
# 1 "/home/armaan/ti/tivaware/driverlib/sysctl.h" 1
# 597 "/home/armaan/ti/tivaware/driverlib/sysctl.h"
extern uint32_t SysCtlSRAMSizeGet(void);
extern uint32_t SysCtlFlashSizeGet(void);
extern uint32_t SysCtlFlashSectorSizeGet(void);
extern 
# 600 "/home/armaan/ti/tivaware/driverlib/sysctl.h" 3 4
      _Bool 
# 600 "/home/armaan/ti/tivaware/driverlib/sysctl.h"
           SysCtlPeripheralPresent(uint32_t ui32Peripheral);
extern 
# 601 "/home/armaan/ti/tivaware/driverlib/sysctl.h" 3 4
      _Bool 
# 601 "/home/armaan/ti/tivaware/driverlib/sysctl.h"
           SysCtlPeripheralReady(uint32_t ui32Peripheral);
extern void SysCtlPeripheralPowerOn(uint32_t ui32Peripheral);
extern void SysCtlPeripheralPowerOff(uint32_t ui32Peripheral);
extern void SysCtlPeripheralReset(uint32_t ui32Peripheral);
extern void SysCtlPeripheralEnable(uint32_t ui32Peripheral);
extern void SysCtlPeripheralDisable(uint32_t ui32Peripheral);
extern void SysCtlPeripheralSleepEnable(uint32_t ui32Peripheral);
extern void SysCtlPeripheralSleepDisable(uint32_t ui32Peripheral);
extern void SysCtlPeripheralDeepSleepEnable(uint32_t ui32Peripheral);
extern void SysCtlPeripheralDeepSleepDisable(uint32_t ui32Peripheral);
extern void SysCtlPeripheralClockGating(
# 611 "/home/armaan/ti/tivaware/driverlib/sysctl.h" 3 4
                                       _Bool 
# 611 "/home/armaan/ti/tivaware/driverlib/sysctl.h"
                                            bEnable);
extern void SysCtlIntRegister(void (*pfnHandler)(void));
extern void SysCtlIntUnregister(void);
extern void SysCtlIntEnable(uint32_t ui32Ints);
extern void SysCtlIntDisable(uint32_t ui32Ints);
extern void SysCtlIntClear(uint32_t ui32Ints);
extern uint32_t SysCtlIntStatus(
# 617 "/home/armaan/ti/tivaware/driverlib/sysctl.h" 3 4
                               _Bool 
# 617 "/home/armaan/ti/tivaware/driverlib/sysctl.h"
                                    bMasked);
extern void SysCtlLDOSleepSet(uint32_t ui32Voltage);
extern uint32_t SysCtlLDOSleepGet(void);
extern void SysCtlLDODeepSleepSet(uint32_t ui32Voltage);
extern uint32_t SysCtlLDODeepSleepGet(void);
extern void SysCtlSleepPowerSet(uint32_t ui32Config);
extern void SysCtlDeepSleepPowerSet(uint32_t ui32Config);
extern void SysCtlReset(void);
extern void SysCtlSleep(void);
extern void SysCtlDeepSleep(void);
extern uint32_t SysCtlResetCauseGet(void);
extern void SysCtlResetCauseClear(uint32_t ui32Causes);
extern void SysCtlBrownOutConfigSet(uint32_t ui32Config,
                                    uint32_t ui32Delay);
extern void SysCtlDelay(uint32_t ui32Count);
extern void SysCtlMOSCConfigSet(uint32_t ui32Config);
extern uint32_t SysCtlPIOSCCalibrate(uint32_t ui32Type);
extern void SysCtlClockSet(uint32_t ui32Config);
extern uint32_t SysCtlClockGet(void);
extern void SysCtlDeepSleepClockSet(uint32_t ui32Config);
extern void SysCtlDeepSleepClockConfigSet(uint32_t ui32Div,
                                          uint32_t ui32Config);
extern void SysCtlPWMClockSet(uint32_t ui32Config);
extern uint32_t SysCtlPWMClockGet(void);
extern void SysCtlIOSCVerificationSet(
# 641 "/home/armaan/ti/tivaware/driverlib/sysctl.h" 3 4
                                     _Bool 
# 641 "/home/armaan/ti/tivaware/driverlib/sysctl.h"
                                          bEnable);
extern void SysCtlMOSCVerificationSet(
# 642 "/home/armaan/ti/tivaware/driverlib/sysctl.h" 3 4
                                     _Bool 
# 642 "/home/armaan/ti/tivaware/driverlib/sysctl.h"
                                          bEnable);
extern void SysCtlPLLVerificationSet(
# 643 "/home/armaan/ti/tivaware/driverlib/sysctl.h" 3 4
                                    _Bool 
# 643 "/home/armaan/ti/tivaware/driverlib/sysctl.h"
                                         bEnable);
extern void SysCtlClkVerificationClear(void);
extern void SysCtlGPIOAHBEnable(uint32_t ui32GPIOPeripheral);
extern void SysCtlGPIOAHBDisable(uint32_t ui32GPIOPeripheral);
extern void SysCtlUSBPLLEnable(void);
extern void SysCtlUSBPLLDisable(void);
extern uint32_t SysCtlClockFreqSet(uint32_t ui32Config,
                                   uint32_t ui32SysClock);
extern void SysCtlResetBehaviorSet(uint32_t ui32Behavior);
extern uint32_t SysCtlResetBehaviorGet(void);
extern void SysCtlClockOutConfig(uint32_t ui32Config, uint32_t ui32Div);
extern void SysCtlAltClkConfig(uint32_t ui32Config);
extern uint32_t SysCtlNMIStatus(void);
extern void SysCtlNMIClear(uint32_t ui32Status);
extern void SysCtlVoltageEventConfig(uint32_t ui32Config);
extern uint32_t SysCtlVoltageEventStatus(void);
extern void SysCtlVoltageEventClear(uint32_t ui32Status);
extern 
# 660 "/home/armaan/ti/tivaware/driverlib/sysctl.h" 3 4
      _Bool 
# 660 "/home/armaan/ti/tivaware/driverlib/sysctl.h"
           SysCtlVCOGet(uint32_t ui32Crystal, uint32_t *pui32VCOFrequency);
# 8 "main.c" 2
# 1 "/home/armaan/ti/tivaware/driverlib/timer.h" 1
# 245 "/home/armaan/ti/tivaware/driverlib/timer.h"
extern void TimerEnable(uint32_t ui32Base, uint32_t ui32Timer);
extern void TimerDisable(uint32_t ui32Base, uint32_t ui32Timer);
extern void TimerConfigure(uint32_t ui32Base, uint32_t ui32Config);
extern void TimerControlLevel(uint32_t ui32Base, uint32_t ui32Timer,
                              
# 249 "/home/armaan/ti/tivaware/driverlib/timer.h" 3 4
                             _Bool 
# 249 "/home/armaan/ti/tivaware/driverlib/timer.h"
                                  bInvert);
extern void TimerControlTrigger(uint32_t ui32Base, uint32_t ui32Timer,
                                
# 251 "/home/armaan/ti/tivaware/driverlib/timer.h" 3 4
                               _Bool 
# 251 "/home/armaan/ti/tivaware/driverlib/timer.h"
                                    bEnable);
extern void TimerControlEvent(uint32_t ui32Base, uint32_t ui32Timer,
                              uint32_t ui32Event);
extern void TimerControlStall(uint32_t ui32Base, uint32_t ui32Timer,
                              
# 255 "/home/armaan/ti/tivaware/driverlib/timer.h" 3 4
                             _Bool 
# 255 "/home/armaan/ti/tivaware/driverlib/timer.h"
                                  bStall);
extern void TimerControlWaitOnTrigger(uint32_t ui32Base, uint32_t ui32Timer,
                                      
# 257 "/home/armaan/ti/tivaware/driverlib/timer.h" 3 4
                                     _Bool 
# 257 "/home/armaan/ti/tivaware/driverlib/timer.h"
                                          bWait);
extern void TimerRTCEnable(uint32_t ui32Base);
extern void TimerRTCDisable(uint32_t ui32Base);
extern void TimerPrescaleSet(uint32_t ui32Base, uint32_t ui32Timer,
                             uint32_t ui32Value);
extern uint32_t TimerPrescaleGet(uint32_t ui32Base, uint32_t ui32Timer);
extern void TimerPrescaleMatchSet(uint32_t ui32Base, uint32_t ui32Timer,
                                  uint32_t ui32Value);
extern uint32_t TimerPrescaleMatchGet(uint32_t ui32Base, uint32_t ui32Timer);
extern void TimerLoadSet(uint32_t ui32Base, uint32_t ui32Timer,
                         uint32_t ui32Value);
extern uint32_t TimerLoadGet(uint32_t ui32Base, uint32_t ui32Timer);
extern void TimerLoadSet64(uint32_t ui32Base, uint64_t ui64Value);
extern uint64_t TimerLoadGet64(uint32_t ui32Base);
extern uint32_t TimerValueGet(uint32_t ui32Base, uint32_t ui32Timer);
extern uint64_t TimerValueGet64(uint32_t ui32Base);
extern void TimerMatchSet(uint32_t ui32Base, uint32_t ui32Timer,
                          uint32_t ui32Value);
extern uint32_t TimerMatchGet(uint32_t ui32Base, uint32_t ui32Timer);
extern void TimerMatchSet64(uint32_t ui32Base, uint64_t ui64Value);
extern uint64_t TimerMatchGet64(uint32_t ui32Base);
extern void TimerIntRegister(uint32_t ui32Base, uint32_t ui32Timer,
                             void (*pfnHandler)(void));
extern void TimerIntUnregister(uint32_t ui32Base, uint32_t ui32Timer);
extern void TimerIntEnable(uint32_t ui32Base, uint32_t ui32IntFlags);
extern void TimerIntDisable(uint32_t ui32Base, uint32_t ui32IntFlags);
extern uint32_t TimerIntStatus(uint32_t ui32Base, 
# 283 "/home/armaan/ti/tivaware/driverlib/timer.h" 3 4
                                                 _Bool 
# 283 "/home/armaan/ti/tivaware/driverlib/timer.h"
                                                      bMasked);
extern void TimerIntClear(uint32_t ui32Base, uint32_t ui32IntFlags);
extern void TimerSynchronize(uint32_t ui32Base, uint32_t ui32Timers);
extern uint32_t TimerClockSourceGet(uint32_t ui32Base);
extern void TimerClockSourceSet(uint32_t ui32Base, uint32_t ui32Source);
extern uint32_t TimerADCEventGet(uint32_t ui32Base);
extern void TimerADCEventSet(uint32_t ui32Base, uint32_t ui32ADCEvent);
extern uint32_t TimerDMAEventGet(uint32_t ui32Base);
extern void TimerDMAEventSet(uint32_t ui32Base, uint32_t ui32DMAEvent);
extern void TimerUpdateMode(uint32_t ui32Base, uint32_t ui32Timer,
                            uint32_t ui32Config);
# 9 "main.c" 2
# 1 "/home/armaan/ti/tivaware/inc/hw_ints.h" 1
# 10 "main.c" 2
# 1 "/home/armaan/ti/tivaware/inc/hw_memmap.h" 1
# 11 "main.c" 2
# 1 "/home/armaan/ti/tivaware/inc/hw_types.h" 1
# 12 "main.c" 2

void initHardware(void);
void ledToggle(void);
void ledToggleV1(void);
void delay(void);
void delayV1(uint16_t delayMs);
void ledToggleV2(uint8_t colour);
void initInterrupts(void);
void GPIOIntHandler(void);
# 30 "main.c"
volatile int16_t i16ToggleCountDelay = 0;
const uint16_t DELAYS[3] = {500, 1000, 2000};
volatile uint16_t _delay = DELAYS[0];

volatile int16_t i16ToggleCountColour = 0;
const uint8_t COLOURS[3] = {0b00000110, 0b00001010, 0b00001100};
volatile uint8_t _colour = COLOURS[0];







void unlockPF0(void) {
    (*((volatile unsigned long *)0x40025520)) = 0x4C4F434B;
# 62 "main.c"
    (*((volatile unsigned long *)0x40025524)) |= 0x00000001;
}

void main(void) {

    initHardware();

    delay();
    delay();


    IntEnable(46);
    IntMasterEnable();

    while (1)
    {

        ledToggleV2(_colour);
        delayV1(_delay);
        GPIOPinWrite(0x40025000, 0x00000002 | 0x00000004 | 0x00000008, 0);
        delayV1(_delay);
    }
}

void initHardware(void) {
# 113 "main.c"
    SysCtlClockSet(0x00000000 | 0x00000000 | 0x00000540 |
                   0x02400000);





    SysCtlPeripheralEnable(0xf0000805);

    GPIOPinTypeGPIOOutput(0x40025000,
                          0x00000002 | 0x00000004 | 0x00000008);
# 146 "main.c"
    GPIOPinWrite(0x40025000, 0x00000002 | 0x00000004 | 0x00000008,
                 0b00001110);
    initInterrupts();
}

void initInterrupts() {
    unlockPF0();

    GPIOPinTypeGPIOInput(0x40025000, 0x00000010 | 0x00000001);





    GPIOPadConfigSet(0x40025000, 0x00000010 | 0x00000001,
                     0x00000001, 0x0000000A);
    GPIOIntEnable(0x40025000, 0x00000010 | 0x00000001);
    GPIOIntTypeSet(0x40025000, 0x00000010 | 0x00000001, 0x00000000);
    IntPrioritySet(46, 0);

    IntRegister(46, GPIOIntHandler);
}

void ledToggle(void) {
    uint8_t LEDColour =
        GPIOPinRead(0x40025000, 0x00000002 | 0x00000004 | 0x00000008);
    if (LEDColour) {
        GPIOPinWrite(0x40025000, 0x00000002 | 0x00000004 | 0x00000008, 0);
    } else {
        GPIOPinWrite(0x40025000, 0x00000002 | 0x00000004 | 0x00000008,
                     0b00001100);
    }
}

void ledToggleV1(void) {



    uint8_t LEDColour =
        GPIOPinRead(0x40025000, 0x00000002 | 0x00000004 | 0x00000008);
    if (LEDColour == 0b00001110) {
        LEDColour = 0b00000110;
    }

    GPIOPinWrite(0x40025000, 0x00000002 | 0x00000004 | 0x00000008, 0);

    switch (LEDColour) {
    case 0b00000110:
        GPIOPinWrite(0x40025000, 0x00000002 | 0x00000004 | 0x00000008,
                     0b00001010);
        break;
    case 0b00001010:
        GPIOPinWrite(0x40025000, 0x00000002 | 0x00000004 | 0x00000008,
                     0b00001100);
        break;
    case 0b00001100:
        GPIOPinWrite(0x40025000, 0x00000002 | 0x00000004 | 0x00000008,
                     0b00000110);
        break;
    }
}

void delay(void) {
    SysCtlDelay(500 * 20000);
}

void delayV1(uint16_t delayMs) { SysCtlDelay((uint32_t)delayMs * 20000); }

void GPIOIntHandler() {
    int status = GPIOIntStatus(0x40025000, 
# 215 "main.c" 3 4
                                               1
# 215 "main.c"
                                                   );
# 229 "main.c"
    GPIOIntClear(0x40025000, status);



    if (status & 0x00000010) {
        i16ToggleCountDelay += 1;
        _delay = DELAYS[i16ToggleCountDelay % 3];
    }

    if (status & 0x00000001) {
        i16ToggleCountColour += 1;
        _colour = COLOURS[i16ToggleCountColour % 3];
    }
}

void ledToggleV2(uint8_t colour) {

    GPIOPinWrite(0x40025000, 0x00000002 | 0x00000004 | 0x00000008, colour);
}
