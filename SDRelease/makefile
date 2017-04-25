################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf _sds sd_card

# All of the sources participating in the build are defined here
-include sources.mk
-include src/xillinio/subdir.mk
-include src/xil/subdir.mk
-include src/vtc/subdir.mk
-include src/video_capture/subdir.mk
-include src/vdma/subdir.mk
-include src/tools/subdir.mk
-include src/gpio/subdir.mk
-include src/dynclk/subdir.mk
-include src/display_ctrl/subdir.mk
-include src/cv/subdir.mk
-include src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: pre-build main-build

# Main-build Target
main-build: face_with_corner.elf

# Tool invocations
face_with_corner.elf: $(OBJS)  $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: SDS++ Linker'
	sds++ -Wl,-rpath-link=/home/vgr16/homedir/ZYBO_SDSoC_platforms-master/2015.4/zybo_hdmi_in/arm-xilinx-linux-gnueabi/lib -o "face_with_corner.elf" $(OBJS) $(USER_OBJS) $(LIBS) -dmclkid 3  -sds-pf /home/vgr16/homedir/ZYBO_SDSoC_platforms-master/2015.4/zybo_hdmi_in
	@echo 'Finished building target: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(CC_DEPS)$(EXECUTABLES)$(C_UPPER_DEPS)$(OBJS)$(CXX_DEPS)$(C_DEPS)$(CPP_DEPS) face_with_corner.elf
	-@echo ' '

pre-build:
	-sdsoc_make_clean SDRelease
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY: main-build pre-build

-include ../makefile.targets
