# $HOME/toolchain/boards/TM4C123GH6PM/board.mk
# --
# Board-specific facts only.
# variable assignment only.
# --
# Refer:
# TivaC Manual:
# ARM-Cortex M4 TRM: https://developer.arm.com/documentation/ddi0439/b/Introduction/Product-documentation/Documentation
# Tivaware Sources: $HOME/ti/tivaware/


MCU        := TM4C123GH6PM
# CPU flags (from arm cortex m4 trm)
# ffreestanding to prevent memcpy in startup.c
# hardfp: default tivaware make compiles tivaware libs with hard float abi
# use hard only when we know the board has a fpu.
# See: https://stackoverflow.com/questions/3321468/whats-the-difference-between-hard-and-soft-floating-point-numbers
ARCH_FLAGS := -mcpu=cortex-m4 -mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard

# -ffreestanding technically not an arch flag.

LDSCRIPT   := $(TOOLCHAIN)/boards/$(MCU)/$(MCU).ld
# from startup.c
ENTRY      := Reset_Handler 
# compiled into final elf
BOARD_SRCS := $(TOOLCHAIN)/boards/$(MCU)/startup.c 
# external libraries
TIVAWARE := $(HOME)/ti/tivaware

# add path to preprocessor search directory
# in source files that use the library,
# need to #include wrt SDK_INC
# ex. #include "driverlib/<file>.h"
INCLUDES := -I$(TIVAWARE)


# PART_ selects register map, TARGET_IS_ selects silicon revision for ROM calls
# defs are used to conditionally compile the tivaware libs based on the board.
# from the arm m4 trm
DEFS       := -DPART_TM4C123GH6PM -DTARGET_IS_TM4C123_RB1
LDLIBS     := -L$(TIVAWARE)/driverlib/gcc -ldriver -L$(TIVAWARE)/sensorlib/gcc -lsensor


FLASHER    := lm4flash
FLASHDEV   := /dev/ttyACM0
