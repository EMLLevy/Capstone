################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/DistanceFunctions.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_boolean_distance.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f32.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f32.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f32.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f32.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f32.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f32.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_dice_distance.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f32.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_hamming_distance.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_jaccard_distance.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f32.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_kulsinski_distance.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f32.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_rogerstanimoto_distance.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_russellrao_distance.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_sokalmichener_distance.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_sokalsneath_distance.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_yule_distance.c 

OBJS += \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/DistanceFunctions.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_boolean_distance.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f32.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f32.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f32.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f32.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f32.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f32.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_dice_distance.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f32.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_hamming_distance.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_jaccard_distance.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f32.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_kulsinski_distance.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f32.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_rogerstanimoto_distance.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_russellrao_distance.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_sokalmichener_distance.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_sokalsneath_distance.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_yule_distance.o 

C_DEPS += \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/DistanceFunctions.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_boolean_distance.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f32.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f32.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f32.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f32.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f32.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f32.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_dice_distance.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f32.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_hamming_distance.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_jaccard_distance.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f32.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_kulsinski_distance.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f32.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_rogerstanimoto_distance.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_russellrao_distance.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_sokalmichener_distance.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_sokalsneath_distance.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_yule_distance.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/DSP/Source/DistanceFunctions/DistanceFunctions.o: ../Drivers/CMSIS/DSP/Source/DistanceFunctions/DistanceFunctions.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32H7A3xxQ -DDEBUG -DARM_MATH_CM7 -c -I../Core/Inc -I"../Drivers/CMSIS/DSP/PrivateInclude" -I../Drivers/CMSIS/DSP/Include -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Source/DistanceFunctions/DistanceFunctions.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_boolean_distance.o: ../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_boolean_distance.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32H7A3xxQ -DDEBUG -DARM_MATH_CM7 -c -I../Core/Inc -I"../Drivers/CMSIS/DSP/PrivateInclude" -I../Drivers/CMSIS/DSP/Include -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_boolean_distance.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f32.o: ../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f32.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32H7A3xxQ -DDEBUG -DARM_MATH_CM7 -c -I../Core/Inc -I"../Drivers/CMSIS/DSP/PrivateInclude" -I../Drivers/CMSIS/DSP/Include -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f32.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f32.o: ../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f32.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32H7A3xxQ -DDEBUG -DARM_MATH_CM7 -c -I../Core/Inc -I"../Drivers/CMSIS/DSP/PrivateInclude" -I../Drivers/CMSIS/DSP/Include -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f32.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f32.o: ../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f32.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32H7A3xxQ -DDEBUG -DARM_MATH_CM7 -c -I../Core/Inc -I"../Drivers/CMSIS/DSP/PrivateInclude" -I../Drivers/CMSIS/DSP/Include -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f32.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f32.o: ../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f32.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32H7A3xxQ -DDEBUG -DARM_MATH_CM7 -c -I../Core/Inc -I"../Drivers/CMSIS/DSP/PrivateInclude" -I../Drivers/CMSIS/DSP/Include -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f32.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f32.o: ../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f32.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32H7A3xxQ -DDEBUG -DARM_MATH_CM7 -c -I../Core/Inc -I"../Drivers/CMSIS/DSP/PrivateInclude" -I../Drivers/CMSIS/DSP/Include -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f32.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f32.o: ../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f32.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32H7A3xxQ -DDEBUG -DARM_MATH_CM7 -c -I../Core/Inc -I"../Drivers/CMSIS/DSP/PrivateInclude" -I../Drivers/CMSIS/DSP/Include -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f32.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_dice_distance.o: ../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_dice_distance.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32H7A3xxQ -DDEBUG -DARM_MATH_CM7 -c -I../Core/Inc -I"../Drivers/CMSIS/DSP/PrivateInclude" -I../Drivers/CMSIS/DSP/Include -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_dice_distance.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f32.o: ../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f32.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32H7A3xxQ -DDEBUG -DARM_MATH_CM7 -c -I../Core/Inc -I"../Drivers/CMSIS/DSP/PrivateInclude" -I../Drivers/CMSIS/DSP/Include -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f32.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_hamming_distance.o: ../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_hamming_distance.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32H7A3xxQ -DDEBUG -DARM_MATH_CM7 -c -I../Core/Inc -I"../Drivers/CMSIS/DSP/PrivateInclude" -I../Drivers/CMSIS/DSP/Include -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_hamming_distance.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_jaccard_distance.o: ../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_jaccard_distance.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32H7A3xxQ -DDEBUG -DARM_MATH_CM7 -c -I../Core/Inc -I"../Drivers/CMSIS/DSP/PrivateInclude" -I../Drivers/CMSIS/DSP/Include -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_jaccard_distance.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f32.o: ../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f32.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32H7A3xxQ -DDEBUG -DARM_MATH_CM7 -c -I../Core/Inc -I"../Drivers/CMSIS/DSP/PrivateInclude" -I../Drivers/CMSIS/DSP/Include -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f32.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_kulsinski_distance.o: ../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_kulsinski_distance.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32H7A3xxQ -DDEBUG -DARM_MATH_CM7 -c -I../Core/Inc -I"../Drivers/CMSIS/DSP/PrivateInclude" -I../Drivers/CMSIS/DSP/Include -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_kulsinski_distance.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f32.o: ../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f32.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32H7A3xxQ -DDEBUG -DARM_MATH_CM7 -c -I../Core/Inc -I"../Drivers/CMSIS/DSP/PrivateInclude" -I../Drivers/CMSIS/DSP/Include -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f32.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_rogerstanimoto_distance.o: ../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_rogerstanimoto_distance.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32H7A3xxQ -DDEBUG -DARM_MATH_CM7 -c -I../Core/Inc -I"../Drivers/CMSIS/DSP/PrivateInclude" -I../Drivers/CMSIS/DSP/Include -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_rogerstanimoto_distance.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_russellrao_distance.o: ../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_russellrao_distance.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32H7A3xxQ -DDEBUG -DARM_MATH_CM7 -c -I../Core/Inc -I"../Drivers/CMSIS/DSP/PrivateInclude" -I../Drivers/CMSIS/DSP/Include -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_russellrao_distance.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_sokalmichener_distance.o: ../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_sokalmichener_distance.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32H7A3xxQ -DDEBUG -DARM_MATH_CM7 -c -I../Core/Inc -I"../Drivers/CMSIS/DSP/PrivateInclude" -I../Drivers/CMSIS/DSP/Include -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_sokalmichener_distance.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_sokalsneath_distance.o: ../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_sokalsneath_distance.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32H7A3xxQ -DDEBUG -DARM_MATH_CM7 -c -I../Core/Inc -I"../Drivers/CMSIS/DSP/PrivateInclude" -I../Drivers/CMSIS/DSP/Include -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_sokalsneath_distance.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_yule_distance.o: ../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_yule_distance.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32H7A3xxQ -DDEBUG -DARM_MATH_CM7 -c -I../Core/Inc -I"../Drivers/CMSIS/DSP/PrivateInclude" -I../Drivers/CMSIS/DSP/Include -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_yule_distance.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

