################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
OBJS += \
./Drivers/CMSIS/system_stm32f4xx.o 

C_DEPS += \
./Drivers/CMSIS/system_stm32f4xx.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/system_stm32f4xx.o: C:/Users/aquil/OneDrive/Documentos/VTR/StmVtrTest/Core/Src/system_stm32f4xx.c Drivers/CMSIS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F405xx -c -IC:/Users/aquil/OneDrive/Documentos/VTR/StmVtrTest/Drivers/STM32F4xx_HAL_Driver/Inc -IC:/Users/aquil/OneDrive/Documentos/VTR/StmVtrTest/Drivers/STM32F4xx_HAL_Driver/Src -IC:/Users/aquil/OneDrive/Documentos/VTR/StmVtrTest/Drivers/CMSIS/Include -IC:/Users/aquil/OneDrive/Documentos/VTR/StmVtrTest/Drivers/CMSIS/Device/ST/STM32F4xx/Include -IC:/Users/aquil/OneDrive/Documentos/VTR/StmVtrTest/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS

clean-Drivers-2f-CMSIS:
	-$(RM) ./Drivers/CMSIS/system_stm32f4xx.cyclo ./Drivers/CMSIS/system_stm32f4xx.d ./Drivers/CMSIS/system_stm32f4xx.o ./Drivers/CMSIS/system_stm32f4xx.su

.PHONY: clean-Drivers-2f-CMSIS

