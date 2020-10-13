################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Drivers/STM32H7xx_HAL_Driver/Src/subdir.mk
-include Core/Startup/subdir.mk
-include Core/Src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
theremin.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
theremin.list \

OBJCOPY_BIN += \
theremin.bin \


# All Target
all: theremin.elf secondary-outputs

# Tool invocations
theremin.elf: $(OBJS) $(USER_OBJS) C:\Users\skyzo\STM32CubeIDE\workspace_1.4.0\Capstone\theremin\STM32H7A3ZITXQ_FLASH.ld
	arm-none-eabi-gcc -o "theremin.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m7 -T"C:\Users\skyzo\STM32CubeIDE\workspace_1.4.0\Capstone\theremin\STM32H7A3ZITXQ_FLASH.ld" --specs=nosys.specs -Wl,-Map="theremin.map" -Wl,--gc-sections -static -L"../Drivers/CMSIS/DSP/Lib" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

theremin.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "theremin.list"
	@echo 'Finished building: $@'
	@echo ' '

theremin.bin: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "theremin.bin"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) *
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_BIN)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
