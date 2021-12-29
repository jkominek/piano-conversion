#include <stdio.h>
#include "pico/stdlib.h"
#include "hardware/gpio.h"
#include "hardware/adc.h"

int main() {
    stdio_init_all();
    adc_init();
    adc_gpio_init(26);
    adc_gpio_init(27);
    adc_gpio_init(28);
    adc_select_input(0);
    // 0b0001 is 26
    // 0b0010 is 27
    // 0b0100 is 28
    // 0b0111 = 0x07 is all of them 
    adc_set_round_robin(7);

    // some time to start minicom or similar
    sleep_ms(2000);

    int interval = 50;
    printf("Interval of %dms. Number of ADC is %d\n", interval, 3);
    uint16_t r1, r2, r3;
    while (1) {
        r1 = adc_read();
        r2 = adc_read();
        r3 = adc_read();
        printf("%d, %d, %d\n", r1, r2, r3);
        sleep_ms(interval);
    }
}
