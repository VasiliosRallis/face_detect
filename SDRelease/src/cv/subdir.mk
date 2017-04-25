################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/cv/my_ocv_hw.cpp \
../src/cv/my_ocv_sw.cpp 

OBJS += \
./src/cv/my_ocv_hw.o \
./src/cv/my_ocv_sw.o 

CPP_DEPS += \
./src/cv/my_ocv_hw.d \
./src/cv/my_ocv_sw.d 


# Each subdirectory must supply rules for building sources it contributes
src/cv/%.o: ../src/cv/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: SDS++ Compiler'
	sds++ -Wall -O3 -I"../src" -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<" -sds-hw ocvSwFastCorner my_ocv_sw.cpp  -clkid 3 -sds-end -sds-pf /home/vgr16/homedir/ZYBO_SDSoC_platforms-master/2015.4/zybo_hdmi_in
	@echo 'Finished building: $<'
	@echo ' '


