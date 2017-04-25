################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/xil/xil_assert.c \
../src/xil/xil_io.c 

OBJS += \
./src/xil/xil_assert.o \
./src/xil/xil_io.o 

C_DEPS += \
./src/xil/xil_assert.d \
./src/xil/xil_io.d 


# Each subdirectory must supply rules for building sources it contributes
src/xil/%.o: ../src/xil/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDSCC Compiler'
	sdscc -Wall -O3 -I"../src" -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<" -sds-hw ocvSwFastCorner my_ocv_sw.cpp  -clkid 3 -sds-end -sds-pf /home/vgr16/homedir/ZYBO_SDSoC_platforms-master/2015.4/zybo_hdmi_in
	@echo 'Finished building: $<'
	@echo ' '


