# toolchain makefile, generic

CC      := arm-none-eabi-gcc
LD      := arm-none-eabi-ld
OBJCOPY := arm-none-eabi-objcopy
SIZE    := arm-none-eabi-size

# CURDIR puts output in invocation directory i.e. from where the original make was called.
# obj and bin will be generated in the project directory
OBJDIR  := $(CURDIR)/obj/
BINDIR  := $(CURDIR)/bin/

# board.mk appends BOARD_SRCS, project Makefile appends its own SRCS
SRCS    += $(BOARD_SRCS)

# $(addprefix a, $(notdir b))
# b: take every .c in srcs and make it .o in name
# notdir: strip the parent directory from the src names
# just convention
# addprefix: .o names in the board_srcs are moved to obj/.o
# i.e. project build directory.
OBJS    := $(addprefix $(OBJDIR),$(notdir $(SRCS:.c=.o)))


# MD: create dependency file. Lists components of every .o
CFLAGS  := $(ARCH_FLAGS) -ggdb -ffreestanding -Os -std=c99 -MD -c -save-temps $(INCLUDES) $(DEFS)

# linker only pulls .o files that contains the symbol that is used by the program
# For even finer grained pulling, see --gc-sections, -ffunction-sections
# Linker LD doesnt recognise the arch_flags, so remove them
LDFLAGS := -T $(LDSCRIPT) -e $(ENTRY)
# without this, make will not find startup.c
vpath %.c $(sort $(dir $(SRCS)))

# If a .c source isn't found locally, also search TivaWare utils.
vpath %.c $(TIVAWARE)/utils

.DEFAULT_GOAL := all

all: $(BINDIR)$(TARGET).bin

$(OBJDIR)%.o: %.c
	@mkdir -p $(@D)
	$(CC) $(CFLAGS) -o $@ $<    

# LDLIBS must come after the .o files because
# the linker resolves symbols in a single left-to-right pass.
# When it encounters a static library (-l), it only pulls in
# archive members that satisfy currently undefined symbols.
# If the library appears before the .o files, no symbols
# are undefined yet, so nothing gets extracted.
$(BINDIR)$(TARGET).elf: $(OBJS)
	@mkdir -p $(@D)
	$(LD) $(LDFLAGS) -o $@ $^ $(LDLIBS)

$(BINDIR)$(TARGET).bin: $(BINDIR)$(TARGET).elf
	$(OBJCOPY) -O binary $< $@

size: $(BINDIR)$(TARGET).elf
	$(SIZE) $<

flash: $(BINDIR)$(TARGET).bin
	$(FLASHER) -S $(FLASHDEV) $<

clean:
	rm -rf $(OBJDIR) $(BINDIR)

.PHONY: all size flash clean
