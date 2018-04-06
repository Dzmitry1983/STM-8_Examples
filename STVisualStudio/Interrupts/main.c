/* MAIN.C file
 * 
 * Copyright (c) 2002-2005 STMicroelectronics
 */

/* Includes ------------------------------------------------------------------*/
#include "stm8s.h"

#define LED_GPIO_PORT  GPIOB
#define LED_GPIO_PIN  GPIO_PIN_5

#define BUTTON_GPIO_PORT 	GPIOA
#define BUTTON_GPIO_PIN		GPIO_PIN_3

void Delay (uint32_t nCount);

void main(void)
{
	
  /* Initialize I/Os in Output Mode */
	GPIO_DeInit(LED_GPIO_PORT);
	GPIO_DeInit(BUTTON_GPIO_PORT);
	GPIO_Init(LED_GPIO_PORT, LED_GPIO_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
	GPIO_Init(BUTTON_GPIO_PORT, BUTTON_GPIO_PIN, GPIO_MODE_IN_FL_IT);
//	GPIO_Init(BUTTON_GPIO_PORT, BUTTON_GPIO_PIN, GPIO_MODE_IN_PU_IT);
	
	
	EXTI_DeInit();
	
//	EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOA, EXTI_SENSITIVITY_FALL_LOW);
//	EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOA, EXTI_SENSITIVITY_RISE_ONLY);
//	EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOA, EXTI_SENSITIVITY_FALL_ONLY);
	EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOA, EXTI_SENSITIVITY_RISE_FALL);
//	EXTI_SetTLISensitivity(EXTI_TLISENSITIVITY_RISE_ONLY);
	enableInterrupts();
	while (1)
	{
		//sleep until itnerrupt
		halt();
		
		Delay(6000);
		GPIO_WriteReverse(GPIOB, GPIO_PIN_5);
	}

}

void Delay(uint32_t nCount)
{
  /* Decrement nCount value */
  while (nCount != 0)
  {
    nCount--;
  }
}

#ifdef USE_FULL_ASSERT
void assert_failed(uint8_t* file, uint32_t line)
{
	while (1)
	{
	}
}
#endif
