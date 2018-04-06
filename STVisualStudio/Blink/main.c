/* Includes ------------------------------------------------------------------*/
#include "stm8s.h"

/* Private define ------------------------------------------------------------*/
#define LED_GPIO_PORT  GPIOB
#define LED_GPIO_PIN  GPIO_PIN_5

/* Private function prototypes -----------------------------------------------*/
void Delay (uint32_t nCount);

/* Public functions ----------------------------------------------------------*/
void main(void)
{
  /* Initialize I/Os in Output Mode */
	GPIO_DeInit(LED_GPIO_PORT);
	GPIO_Init(LED_GPIO_PORT, (GPIO_Pin_TypeDef)LED_GPIO_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
  while (1)
  {
    /* Toggles LEDs */
	GPIO_WriteReverse(LED_GPIO_PORT, (GPIO_Pin_TypeDef)LED_GPIO_PIN);
	Delay(6000);
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
