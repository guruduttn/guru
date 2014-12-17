################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CU_SRCS += \
../src/Sample.cu 

CU_DEPS += \
./src/Sample.d 

OBJS += \
./src/Sample.o 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cu
	@echo 'Building file: $<'
	@echo 'Invoking: NVCC Compiler'
	/usr/local/cuda-6.5/bin/nvcc -G -g -O0 -ccbin arm-linux-gnueabihf-g++-4.6 -gencode arch=compute_20,code=sm_20 --target-cpu-architecture ARM -m32 -odir "src" -M -o "$(@:%.o=%.d)" "$<"
	/usr/local/cuda-6.5/bin/nvcc -G -g -O0 --compile --relocatable-device-code=false -gencode arch=compute_20,code=compute_20 -gencode arch=compute_20,code=sm_20 --target-cpu-architecture ARM -m32 -ccbin arm-linux-gnueabihf-g++-4.6  -x cu -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


