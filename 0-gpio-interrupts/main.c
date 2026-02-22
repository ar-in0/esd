// @19Feb: TODO: Make interrupt handlers shorter, use flag pattern.
#include <stdbool.h>
#include <stdint.h>

#include "driverlib/gpio.h"
#include "driverlib/interrupt.h"
#include "driverlib/sysctl.h"
#include "driverlib/timer.h"
#include "inc/hw_ints.h"
#include "inc/hw_memmap.h"
#include "inc/hw_types.h"

void initHardware(void);
void ledToggle(void);
void ledToggleV1(void);
void delay(void);
void delayV1(uint16_t delayMs);
void ledToggleV2(uint8_t colour);
void initInterrupts(void);
void GPIOIntHandler(void);

#define COLOUR_CYAN 0b00001100
#define COLOUR_GREEN 0b00001010
#define COLOUR_VIOLET 0b00000110
#define COLOUR_WHITE 0b00001110

//---------------------------------------
// Globals
//---------------------------------------
volatile int16_t i16ToggleCountDelay = 0;
const uint16_t DELAYS[3] = {500, 1000, 2000};
volatile uint16_t _delay = DELAYS[0];

volatile int16_t i16ToggleCountColour = 0;
const uint8_t COLOURS[3] = {COLOUR_VIOLET, COLOUR_GREEN, COLOUR_CYAN};
volatile uint8_t _colour = COLOURS[0];

#define LOCK_F (*((volatile unsigned long *)0x40025520))
#define CR_F (*((volatile unsigned long *)0x40025524))

// file:///home/armaan/Fun-CS/Embedded/ESD_2023_Materials/useful_tips_HW1.pdf
// peripheral (i.e. port F needs to be on first, afterperipheralenable)
// https://www.airsupplylab.com/ti-tiva-series/tiva_lesson-09-gpio-ports-and-configurations.html
void unlockPF0(void) {
    LOCK_F = 0x4C4F434B; // write magic value to GPIOLOCK

    // tell GPIOCR that we want to be able to program gpio
    // pin 0. (without LOCKF write, GPIOCR cannot be accessed.)
    // Every port has GPIOCR, GPIOLOCK i.e control register and lock register
    // We only care about port F hence _F
    // ---
    // Writing control register manually via assignment means the
    // bitmask will be reset to only those bits that
    // are speciied. We need to use all required pins here.
    // The default value in the CR is 0b1111 1110. Here we are
    // resetting, and its ok because we arent using any more pins
    // in the program. This is an atomic write.
    // --
    // |= modify only pin0 and leave rest as default.
    // there is a ready modify write here. This is fine
    // since interrupts are not enabled just yet.
    CR_F |= GPIO_PIN_0;
}

void main(void) {

    initHardware(); // init hardware via Xware

    delay(); // create a delay of ~0.1sec
    delay(); // create a delay of ~0.1sec

    // allow interrupts only after the startup delay
    IntEnable(INT_GPIOF_TM4C123);
    IntMasterEnable();

    while (1) // forever loop
    {
        /* ledToggle(); // toggle LED */
        ledToggleV2(_colour);
        delayV1(_delay); // create a delay of ~0.1sec
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1 | GPIO_PIN_2 | GPIO_PIN_3, 0);
        delayV1(_delay); // needed, otherwise off time will be invisible
    }
}

void initHardware(void) {
    // Set CPU Clock to 40MHz. 400MHz PLL/2 = 200 DIV 5 = 40MHz
    // https://controllerstech.com/tm4c123-clock-configuration/
    // "Accurate crystal": The actual osciallation frequency is reliably equal
    // to stated frequency usually ~30ppm error, i.e. for 60mhz crystal, the
    // actual osciallation may be between 599970hz - 600030hz, which is pretty
    // accurate
    // --
    // OTOH, TIVAC internal RC oscillator has error 3%, i.e 30000ppm.
    // for 60mhz stated, actual is 5970000hz - 6030000hz.
    // Some applications require as precice timing as possible
    // --
    // In reality, TIVA C has 16mhz internal RC oscillator., and another
    // external crystal oscillator at 16mhz (more accurate)
    // ===
    // "PLL": hardware that allows you to multiply the base frequency
    // of the oscillator - allows you to set a higher system clock frequency
    // than raw oscillator. Peripherals and mcu needs to have same "baud rate",
    // which is why the mcu clock frequency needs to be multiplied in the first
    // place.
    // PLL multiples the raw freq to 400mhz, and dividers are used to bring it
    // back to the tivac allowed range (<=80mhz)
    // DIV_5: divide 400/5 i.e. 80mhz
    // DIV_2_5: divide 400/2.5 i.e. 160, disallowed, hw caps to 80mhz
    // --
    // XTAL_16MHZ: tell mcu that osc_main is 16mhz
    // OSC_MAIN: use the external crystal oscillator
    SysCtlClockSet(SYSCTL_OSC_MAIN | SYSCTL_USE_PLL | SYSCTL_XTAL_16MHZ |
                   SYSCTL_SYSDIV_5);

    // ADD Tiva-C GPIO setup - enables port F, sets pins 1-3 (RGB) pins for
    // output A peripheral is always connected to a PORT. LEDS are on port F At
    // reset, all the peripherals are disabled, enable makes it possible to
    // read/write to them.
    SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOF);

    GPIOPinTypeGPIOOutput(GPIO_PORTF_BASE,
                          GPIO_PIN_1 | GPIO_PIN_2 | GPIO_PIN_3);

    // Turn on the LED
    // From
    // https://software-dl.ti.com/trainingTTO/trainingTTO_public_sw/GSW-TM4C123G-LaunchPad/TM4C123G_LaunchPad_Workshop_Workbook.pdf
    // Each port (A-F) has upto 8 GPIO pins. The datasheet shows which pin
    // corresponds to what hardware. For example, pg 23 of
    // file:///home/armaan/Fun-CS/Embedded/ESD_2023_Materials/Tiva-Manual_new.pdf
    // shows that PF1 (portfpin1 -> Red Led, portfpin2 ->blue Led,
    // portfpin3->Green Led)
    // --
    // TIVAWare allows us to specify the pins of the port that we want to
    // access, and can specify it using a bitmask og GPIO_PIN_x Without a HAL,
    // we need to pass a bitmask that enables the exact right pins (0-7) of the
    // port base register (to select pins).
    // --
    // CPU writes 32 bit address to the address bus. All addresses are 4 byte
    // aligned, so every address must have LSB 0b00. HW interprets bits 9:2 of
    // the address bus as the mask that selects pins for a given port.
    // Effectively, we use portf and the pin offsets to generate an address, and
    // that address is such that the 9:2 bits are 1 for the gpio pin that needs
    // to be written to. To activate pin2, value needs its bit 2 to be set allow
    // writes to pf1, pf2, pf3 pf1: red pf2: blue pf3:green
    GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1 | GPIO_PIN_2 | GPIO_PIN_3,
                 COLOUR_WHITE);
    initInterrupts();
}

void initInterrupts() {
    unlockPF0();
    // setup PF4 interrupt handler to change delay value.
    GPIOPinTypeGPIOInput(GPIO_PORTF_BASE, GPIO_PIN_4 | GPIO_PIN_0);
    // switch on - PF4 connected to GND.
    // without pull up, pin may be 0 or some indeterminate voltage
    // to cleanly see a voltage transition to GND on switch close,
    // we must set the pull up i.e set pf4 pin high, but weakly so (so that
    // gnd can switch it to 0)
    GPIOPadConfigSet(GPIO_PORTF_BASE, GPIO_PIN_4 | GPIO_PIN_0,
                     GPIO_STRENGTH_2MA, GPIO_PIN_TYPE_STD_WPU);
    GPIOIntEnable(GPIO_PORTF_BASE, GPIO_INT_PIN_4 | GPIO_INT_PIN_0);
    GPIOIntTypeSet(GPIO_PORTF_BASE, GPIO_PIN_4 | GPIO_PIN_0, GPIO_FALLING_EDGE);
    IntPrioritySet(INT_GPIOF_TM4C123, 0); // port F has single interrupt vector,
                                          // cannot assign handler per piin
    IntRegister(INT_GPIOF_TM4C123, GPIOIntHandler);
}

void ledToggle(void) {
    uint8_t LEDColour =
        GPIOPinRead(GPIO_PORTF_BASE, GPIO_PIN_1 | GPIO_PIN_2 | GPIO_PIN_3);
    if (LEDColour) {
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1 | GPIO_PIN_2 | GPIO_PIN_3, 0);
    } else {
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1 | GPIO_PIN_2 | GPIO_PIN_3,
                     COLOUR_CYAN);
    }
}

void ledToggleV1(void) {
    // returns a uin8_t with the bits-of-interest values returned (either 1 or
    // 0), while the other bits are set to zero Therefore, return value > 0
    // means SOME led (pf1/pf2/pf3) is set
    uint8_t LEDColour =
        GPIOPinRead(GPIO_PORTF_BASE, GPIO_PIN_1 | GPIO_PIN_2 | GPIO_PIN_3);
    if (LEDColour == COLOUR_WHITE) {
        LEDColour = COLOUR_VIOLET;
    }
    // reset colour
    GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1 | GPIO_PIN_2 | GPIO_PIN_3, 0);

    switch (LEDColour) {
    case COLOUR_VIOLET:
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1 | GPIO_PIN_2 | GPIO_PIN_3,
                     COLOUR_GREEN);
        break;
    case COLOUR_GREEN:
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1 | GPIO_PIN_2 | GPIO_PIN_3,
                     COLOUR_CYAN);
        break;
    case COLOUR_CYAN:
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1 | GPIO_PIN_2 | GPIO_PIN_3,
                     COLOUR_VIOLET);
        break;
    }
}

void delay(void) {
    SysCtlDelay(500 * 20000); // creates ~500ms delay - TivaWare fxn
}

void delayV1(uint16_t delayMs) { SysCtlDelay((uint32_t)delayMs * 20000); }

void GPIOIntHandler() {
    int status = GPIOIntStatus(GPIO_PORTF_BASE, true);
    // if no clear, interrupt fires continuously
    // when the switch is pressed, the pf4 pin gets a signal
    // and this is sent to the S input of an SR-latch. the
    // SR latch output is what asserts the CPU interrupt line. This latch
    // holds the output value. If not reset, the output value will remain
    // SET after the first interrupt, and cpu interrupt line will remain
    // asserted always - int handler will be entered several times when the
    // switch is pressed, the pf4 pin gets a signal and this is sent to the S
    // input of an SR-latch. the SR latch output is what asserts the CPU
    // interrupt line. This latch holds the output value. If not reset, the
    // output value will remain SET after the first interrupt, and cpu interrupt
    // line will remain asserted always - int handler will be entered several
    // times
    GPIOIntClear(GPIO_PORTF_BASE, status); // clears the latch

    // returns bitmask of all the pins. Enabled bits
    // have an active interrupt.
    if (status & GPIO_INT_PIN_4) {
        i16ToggleCountDelay += 1;
        _delay = DELAYS[i16ToggleCountDelay % 3];
    }

    if (status & GPIO_INT_PIN_0) {
        i16ToggleCountColour += 1;
        _colour = COLOURS[i16ToggleCountColour % 3];
    }
}

void ledToggleV2(uint8_t colour) {

    GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1 | GPIO_PIN_2 | GPIO_PIN_3, colour);
}
