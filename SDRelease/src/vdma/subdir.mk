################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/vdma/xaxivdma.c \
../src/vdma/xaxivdma_channel.c \
../src/vdma/xaxivdma_g.c \
../src/vdma/xaxivdma_sinit.c 

OBJS += \
./src/vdma/xaxivdma.o \
./src/vdma/xaxivdma_channel.o \
./src/vdma/xaxivdma_g.o \
./src/vdma/xaxivdma_sinit.o 

C_DEPS += \
./src/vdma/xaxivdma.d \
./src/vdma/xaxivdma_channel.d \
./src/vdma/xaxivdma_g.d \
./src/vdma/xaxivdma_sinit.d 


# Each subdirectory must supply rules for building sources it contributes
src/vdma/%.o: ../src/vdma/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDSCC Compiler'
	sdscc -Wall -O3 -I"../src" -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<" -sds-hw ocvSwFastCorner my_ocv_sw.cpp  -clkid 3 -sds-end -sds-pf /home/vgr16/homedir/ZYBO_SDSoC_platforms-master/2015.4/zybo_hdmi_in
	@echo 'Finished building: $<'
	@echo ' '


