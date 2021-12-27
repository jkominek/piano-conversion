cmake_minimum_required(VERSION 3.13)
include(pico_sdk_import.cmake)

project(adc_3ch C CXX ASM)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)
pico_sdk_init()

add_executable(adc_3ch
        adc_3ch.c
)

# enable usb output, disable uart output
pico_enable_stdio_usb(adc_3ch 1)
pico_enable_stdio_uart(adc_3ch 0)

# create map/bin/hex file etc.
pico_add_extra_outputs(adc_3ch)

#target_link_libraries(adc_3ch pico_stdlib)
target_link_libraries(adc_3ch pico_stdlib hardware_adc)

