################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/DSP/Examples/ARM/arm_class_marks_example/RTE/Device/ARMCM3/startup_ARMCM3.c \
../Drivers/CMSIS/DSP/Examples/ARM/arm_class_marks_example/RTE/Device/ARMCM3/system_ARMCM3.c 

OBJS += \
./Drivers/CMSIS/DSP/Examples/ARM/arm_class_marks_example/RTE/Device/ARMCM3/startup_ARMCM3.o \
./Drivers/CMSIS/DSP/Examples/ARM/arm_class_marks_example/RTE/Device/ARMCM3/system_ARMCM3.o 

C_DEPS += \
./Drivers/CMSIS/DSP/Examples/ARM/arm_class_marks_example/RTE/Device/ARMCM3/startup_ARMCM3.d \
./Drivers/CMSIS/DSP/Examples/ARM/arm_class_marks_example/RTE/Device/ARMCM3/system_ARMCM3.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/DSP/Examples/ARM/arm_class_marks_example/RTE/Device/ARMCM3/%.o Drivers/CMSIS/DSP/Examples/ARM/arm_class_marks_example/RTE/Device/ARMCM3/%.su Drivers/CMSIS/DSP/Examples/ARM/arm_class_marks_example/RTE/Device/ARMCM3/%.cyclo: ../Drivers/CMSIS/DSP/Examples/ARM/arm_class_marks_example/RTE/Device/ARMCM3/%.c Drivers/CMSIS/DSP/Examples/ARM/arm_class_marks_example/RTE/Device/ARMCM3/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F405xx -c -IC:/Users/aquil/OneDrive/Documentos/VTR/StmVtrTest/Drivers/STM32F4xx_HAL_Driver/Inc -IC:/Users/aquil/OneDrive/Documentos/VTR/StmVtrTest/Drivers/STM32F4xx_HAL_Driver/Src -IC:/Users/aquil/OneDrive/Documentos/VTR/StmVtrTest/Drivers/CMSIS/Include -IC:/Users/aquil/OneDrive/Documentos/VTR/StmVtrTest/Drivers/CMSIS/Device/ST/STM32F4xx/Include -IC:/Users/aquil/OneDrive/Documentos/VTR/StmVtrTest/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS-2f-DSP-2f-Examples-2f-ARM-2f-arm_class_marks_example-2f-RTE-2f-Device-2f-ARMCM3

clean-Drivers-2f-CMSIS-2f-DSP-2f-Examples-2f-ARM-2f-arm_class_marks_example-2f-RTE-2f-Device-2f-ARMCM3:
	-$(RM) ./Drivers/CMSIS/DSP/Examples/ARM/arm_class_marks_example/RTE/Device/ARMCM3/startup_ARMCM3.cyclo ./Drivers/CMSIS/DSP/Examples/ARM/arm_class_marks_example/RTE/Device/ARMCM3/startup_ARMCM3.d ./Drivers/CMSIS/DSP/Examples/ARM/arm_class_marks_example/RTE/Device/ARMCM3/startup_ARMCM3.o ./Drivers/CMSIS/DSP/Examples/ARM/arm_class_marks_example/RTE/Device/ARMCM3/startup_ARMCM3.su ./Drivers/CMSIS/DSP/Examples/ARM/arm_class_marks_example/RTE/Device/ARMCM3/system_ARMCM3.cyclo ./Drivers/CMSIS/DSP/Examples/ARM/arm_class_marks_example/RTE/Device/ARMCM3/system_ARMCM3.d ./Drivers/CMSIS/DSP/Examples/ARM/arm_class_marks_example/RTE/Device/ARMCM3/system_ARMCM3.o ./Drivers/CMSIS/DSP/Examples/ARM/arm_class_marks_example/RTE/Device/ARMCM3/system_ARMCM3.su

.PHONY: clean-Drivers-2f-CMSIS-2f-DSP-2f-Examples-2f-ARM-2f-arm_class_marks_example-2f-RTE-2f-Device-2f-ARMCM3
