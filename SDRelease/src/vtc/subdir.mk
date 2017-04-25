################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/vtc/xvtc.c \
../src/vtc/xvtc_g.c \
../src/vtc/xvtc_intr.c \
../src/vtc/xvtc_selftest.c \
../src/vtc/xvtc_sinit.c 

OBJS += \
./src/vtc/xvtc.o \
./src/vtc/xvtc_g.o \
./src/vtc/xvtc_intr.o \
./src/vtc/xvtc_selftest.o \
./src/vtc/xvtc_sinit.o 

C_DEPS += \
./src/vtc/xvtc.d \
./src/vtc/xvtc_g.d \
./src/vtc/xvtc_intr.d \
./src/vtc/xvtc_selftest.d \
./src/vtc/xvtc_sinit.d 


# Each subdirectory must supply rules for building sources it contributes
src/vtc/%.o: ../src/vtc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDSCC Compiler'
	sdscc -Wall -O3 -I"../src" -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<" -sds-hw ocvSwFastCorner my_ocv_sw.cpp  -clkid 3 -sds-end -sds-pf /home/vgr16/homedir/ZYBO_SDSoC_platforms-master/2015.4/zybo_hdmi_in
	@echo 'Finished building: $<'
	@echo ' '


