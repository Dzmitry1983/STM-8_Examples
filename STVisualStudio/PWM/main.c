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

/* Private macro -------------------------------------------------------------*/
#define checkByMax(x, xMax) if (x >= xMax) { x = 0; }


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
	uint16_t t1 = 0;
	uint16_t t2 = 0;
	uint16_t t3 = 0;
	uint16_t t4 = 0;
	uint16_t timeMax = 5000;
	int n = 0;
	
	CLK_DeInit();
	TIM1_DeInit();
	CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
	CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV1);

	TIM1_TimeBaseInit(0, TIM1_COUNTERMODE_UP, timeMax, 0);
	TIM1_OC1Init(TIM1_OCMODE_PWM2, TIM1_OUTPUTSTATE_ENABLE, TIM1_OUTPUTNSTATE_DISABLE, t1, TIM1_OCPOLARITY_LOW, TIM1_OCNPOLARITY_HIGH, TIM1_OCIDLESTATE_SET, TIM1_OCNIDLESTATE_RESET); //ch6, ch3
	TIM1_OC2Init(TIM1_OCMODE_PWM2, TIM1_OUTPUTSTATE_ENABLE, TIM1_OUTPUTNSTATE_DISABLE, t2, TIM1_OCPOLARITY_LOW, TIM1_OCNPOLARITY_HIGH, TIM1_OCIDLESTATE_RESET, TIM1_OCNIDLESTATE_RESET); //ch7, ch4
	TIM1_OC3Init(TIM1_OCMODE_PWM2, TIM1_OUTPUTSTATE_ENABLE, TIM1_OUTPUTNSTATE_DISABLE, t3, TIM1_OCPOLARITY_LOW, TIM1_OCNPOLARITY_HIGH, TIM1_OCIDLESTATE_SET, TIM1_OCNIDLESTATE_RESET); //ch3
	TIM1_OC4Init(TIM1_OCMODE_PWM2, TIM1_OUTPUTSTATE_ENABLE, t4, TIM1_OCPOLARITY_LOW, TIM1_OCIDLESTATE_RESET); //ch4
	TIM1_Cmd(ENABLE);
	TIM1_CtrlPWMOutputs(ENABLE);

	while (1)
	{
		
		uint16_t *value0 = 0;
		uint16_t *value1 = 0;
		
		
		switch (n) {
			case 0:
				value0 = &t1;
				value1 = &t4;
				break;
			case 1:
				value0 = &t2;
				value1 = &t1;
				break;
			case 2:
				value0 = &t3;
				value1 = &t2;
				break;
			case 3:
				value0 = &t4;
				value1 = &t3;
				break;
			default:
			break;
		}
		(*value0) ++;
		if (*value1 > 1) {
			(*value1)--;
		}
		if (*value0 >= timeMax) {
			*value0 = timeMax;
			n++;
			checkByMax(n, 4);
		}

		
		TIM1_SetCompare1(t1);
		TIM1_SetCompare2(t2);
		TIM1_SetCompare3(t3);
		TIM1_SetCompare4(t4);
	
	
		Delay(50);

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
		nop();
	}
}
#endif
