#include "stm32f4xx_gpio.h"

void led_init(void)
{
    GPIO_InitTypeDef GPIO_InitStruct = {
        .GPIO_Pin = GPIO_Pin_13 | GPIO_Pin_14,
        .GPIO_Mode = GPIO_Mode_OUT,
        .GPIO_Speed = GPIO_Speed_50MHz,
        .GPIO_OType =GPIO_OType_PP,
        .GPIO_PuPd = GPIO_PuPd_DOWN
    };

    RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOG, ENABLE);

    GPIO_Init(GPIOG, &GPIO_InitStruct);
}

void led_write(int state)
{
    GPIO_WriteBit(GPIOG, GPIO_Pin_13, state);
    GPIO_WriteBit(GPIOG, GPIO_Pin_14, state);
}
