################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Display/display.c \
../Display/fonts.c \
../Display/ili9341.c \
../Display/st7789.c 

OBJS += \
./Display/display.o \
./Display/fonts.o \
./Display/ili9341.o \
./Display/st7789.o 

C_DEPS += \
./Display/display.d \
./Display/fonts.d \
./Display/ili9341.d \
./Display/st7789.d 


# Each subdirectory must supply rules for building sources it contributes
Display/%.o Display/%.su Display/%.cyclo: ../Display/%.c Display/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -DSTM32F103xB -DUSE_FULL_LL_DRIVER -DHSE_VALUE=8000000 -DHSE_STARTUP_TIMEOUT=100 -DLSE_STARTUP_TIMEOUT=5000 -DLSE_VALUE=32768 -DHSI_VALUE=8000000 -DLSI_VALUE=40000 -DVDD_VALUE=3300 -DPREFETCH_ENABLE=1 -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/SamaraPRO/STM32Cube/Repository/STM32F103C8T6/Display" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Display

clean-Display:
	-$(RM) ./Display/display.cyclo ./Display/display.d ./Display/display.o ./Display/display.su ./Display/fonts.cyclo ./Display/fonts.d ./Display/fonts.o ./Display/fonts.su ./Display/ili9341.cyclo ./Display/ili9341.d ./Display/ili9341.o ./Display/ili9341.su ./Display/st7789.cyclo ./Display/st7789.d ./Display/st7789.o ./Display/st7789.su

.PHONY: clean-Display

