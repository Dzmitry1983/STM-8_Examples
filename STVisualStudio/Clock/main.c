/* MAIN.C file
 * 
 * Copyright (c) 2002-2005 STMicroelectronics
 */

/* Includes ------------------------------------------------------------------*/
/* Includes ------------------------------------------------------------------*/
#include "stm8s.h"
/**
  * @addtogroup CLK_MaxSpeed
  * @{
  */

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/

#define LED_GPIO_PORT  GPIOB
#define LED_GPIO_PIN  GPIO_PIN_5

#define BUTTON_GPIO_PORT 	GPIOA
#define BUTTON_GPIO_PIN		GPIO_PIN_3
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Public functions ----------------------------------------------------------*/
/* Global variables ----------------------------------------------------------*/
/* Private functions ---------------------------------------------------------*/

/**
  * @brief  Main program.
  * @param  None
  * @retval None
  */
void main(void)
{
	bool ButtonPressed = FALSE;	
	ErrorStatus status = FALSE;
    /* GPIO Configuration  -----------------------------------------*/
	GPIO_DeInit(LED_GPIO_PORT);
	GPIO_DeInit(BUTTON_GPIO_PORT);
	GPIO_Init(LED_GPIO_PORT, (GPIO_Pin_TypeDef)LED_GPIO_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
	GPIO_Init(BUTTON_GPIO_PORT, BUTTON_GPIO_PIN, GPIO_MODE_IN_FL_NO_IT);
    
    /* Enable general interrupts */
    enableInterrupts();    
    
    /* Clock configuration -----------------------------------------*/
    

    CLK_DeInit();
    /* Configure the Fcpu to DIV1*/
    CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV1);
    
    /* Configure the HSI prescaler to the optimal value */
    CLK_SYSCLKConfig(CLK_PRESCALER_HSIDIV1);

    /* Output Fcpu on CLK_CCO pin */
    CLK_CCOConfig(CLK_OUTPUT_CPU);
        
    /* Configure the system clock to use HSE clock source and to run at 24Mhz */
    status = CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO, CLK_SOURCE_HSE, DISABLE, CLK_CURRENTCLOCKSTATE_DISABLE);
    
    while (ButtonPressed == FALSE)
    {
    }
    /* Configure the system clock to use HSI clock source and to run at 16Mhz */
    status = CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO, CLK_SOURCE_HSI, DISABLE, CLK_CURRENTCLOCKSTATE_DISABLE);    
    
	
	
	
    while (1)
    {
    }
}

/**
  * @brief  Configure system clock to run at Maximum clock speed and output the 
  *         system clock on CCO pin
  * @param  None
  * @retval None
  */

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

/**
  * @}
  */