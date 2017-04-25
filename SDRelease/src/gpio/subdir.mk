################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/gpio/xgpio.c \
../src/gpio/xgpio_extra.c \
../src/gpio/xgpio_g.c \
../src/gpio/xgpio_intr.c \
../src/gpio/xgpio_selftest.c \
../src/gpio/xgpio_sinit.c 

OBJS += \
./src/gpio/xgpio.o \
./src/gpio/xgpio_extra.o \
./src/gpio/xgpio_g.o \
./src/gpio/xgpio_intr.o \
./src/gpio/xgpio_selftest.o \
./src/gpio/xgpio_sinit.o 

C_DEPS += \
./src/gpio/xgpio.d \
./src/gpio/xgpio_extra.d \
./src/gpio/xgpio_g.d \
./src/gpio/xgpio_intr.d \
./src/gpio/xgpio_selftest.d \
./src/gpio/xgpio_sinit.d 


# Each subdirectory must supply rules for building sources it contributes
src/gpio/%.o: ../src/gpio/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDSCC Compiler'
	sdscc -Wall -O3 -I"../src" -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<" -sds-hw ocvSwFastCorner my_ocv_sw.cpp  -clkid 3 -sds-end -sds-pf /home/vgr16/homedir/ZYBO_SDSoC_platforms-master/2015.4/zybo_hdmi_in
	@echo 'Finished building: $<'
	@echo ' '


