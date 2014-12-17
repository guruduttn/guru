################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/oceanFFT.cpp 

CU_SRCS += \
../src/oceanFFT_kernel.cu 

CU_DEPS += \
./src/oceanFFT_kernel.d 

OBJS += \
./src/oceanFFT.o \
./src/oceanFFT_kernel.o 

CPP_DEPS += \
./src/oceanFFT.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: NVCC Compiler'
	/usr/local/cuda-6.5/bin/nvcc -I"/usr/local/cuda-6.5/samples/5_Simulations" -I"/usr/local/cuda-6.5/samples/common/inc" -I"/home/gurudutt/cuda-workspace/Freshone" -G -g -O0 -ccbin arm-linux-gnueabihf-g++-4.6 -gencode arch=compute_20,code=sm_20 --target-cpu-architecture ARM -m32 -odir "src" -M -o "$(@:%.o=%.d)" "$<"
	/usr/local/cuda-6.5/bin/nvcc -I"/usr/local/cuda-6.5/samples/5_Simulations" -I"/usr/local/cuda-6.5/samples/common/inc" -I"/home/gurudutt/cuda-workspace/Freshone" -G -g -O0 --compile --target-cpu-architecture ARM -m32 -ccbin arm-linux-gnueabihf-g++-4.6  -x c++ -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../src/%.cu
	@echo 'Building file: $<'
	@echo 'Invoking: NVCC Compiler'
	/usr/local/cuda-6.5/bin/nvcc -I"/usr/local/cuda-6.5/samples/5_Simulations" -I"/usr/local/cuda-6.5/samples/common/inc" -I"/home/gurudutt/cuda-workspace/Freshone" -G -g -O0 -ccbin arm-linux-gnueabihf-g++-4.6 -gencode arch=compute_20,code=sm_20 --target-cpu-architecture ARM -m32 -odir "src" -M -o "$(@:%.o=%.d)" "$<"
	/usr/local/cuda-6.5/bin/nvcc -I"/usr/local/cuda-6.5/samples/5_Simulations" -I"/usr/local/cuda-6.5/samples/common/inc" -I"/home/gurudutt/cuda-workspace/Freshone" -G -g -O0 --compile --relocatable-device-code=false -gencode arch=compute_20,code=compute_20 -gencode arch=compute_20,code=sm_20 --target-cpu-architecture ARM -m32 -ccbin arm-linux-gnueabihf-g++-4.6  -x cu -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


