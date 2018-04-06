/* MAIN.C file
 * 
 * Copyright (c) 2002-2005 STMicroelectronics
 */

/* Includes ------------------------------------------------------------------*/
#include "stm8s.h"

/**
  * @addtogroup GPIO_Toggle
  * @{
  */

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Evalboard I/Os configuration */

#define LED_GPIO_PORT  GPIOB
#define LED_GPIO_PIN  GPIO_PIN_5

#define BUTTON_GPIO_PORT 	GPIOA
#define BUTTON_GPIO_PIN		GPIO_PIN_3


/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
void Delay (uint32_t nCount);

/* Private functions ---------------------------------------------------------*/
/* Public functions ----------------------------------------------------------*/

/**
  * @brief  Main program.
  * @param  None
  * @retval None
  */
void main(void)
{

  /* Initialize I/Os in Output Mode */
	GPIO_DeInit(LED_GPIO_PORT);
	GPIO_DeInit(BUTTON_GPIO_PORT);
	GPIO_Init(LED_GPIO_PORT, (GPIO_Pin_TypeDef)LED_GPIO_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
	GPIO_Init(BUTTON_GPIO_PORT, BUTTON_GPIO_PIN, GPIO_MODE_IN_FL_NO_IT);
  while (1)
  {
		
    /* Toggles LEDs */
		int ButtonPressed = GPIO_ReadInputPin(BUTTON_GPIO_PORT, BUTTON_GPIO_PIN) != 0;
		
		if (ButtonPressed == TRUE) {
			GPIO_WriteReverse(LED_GPIO_PORT, (GPIO_Pin_TypeDef)LED_GPIO_PIN);
//					GPIO_WriteHigh(LED_GPIO_PORT, LED_GPIO_PIN);
			}
		else {
			GPIO_WriteLow(LED_GPIO_PORT, LED_GPIO_PIN);
				
		}
			
			
	//GPIO_WriteReverse(LED_GPIO_PORT, (GPIO_Pin_TypeDef)LED_GPIO_PIN);
	Delay(6000);
  }

}

/**
  * @brief Delay
  * @param nCount
  * @retval None
  */
void Delay(uint32_t nCount)
{
  /* Decrement nCount value */
  while (nCount != 0)
  {
    nCount--;
  }
}

#ifdef USE_FULL_ASSERT

/**
  * @brief  Reports the name of the source file and the source line number
  *   where the assert_param error has occurred.
  * @param file: pointer to the source file name
  * @param line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t* file, uint32_t line)
{ 
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */

  /* Infinite loop */
  while (1)
  {
  }
}
#endif
