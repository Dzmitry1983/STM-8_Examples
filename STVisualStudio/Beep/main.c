/* MAIN.C file
 * 
 * Copyright (c) 2002-2005 STMicroelectronics
 */

/* Includes ------------------------------------------------------------------*/
#include "stm8s.h"

/**
  * @addtogroup BEEP_3SignalsGeneration
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
/* Global variables ----------------------------------------------------------*/

/* Private function prototypes -----------------------------------------------*/
static void CLK_Config(void);
void Delay (uint16_t nCount);
uint32_t LSIMeasurment(void);
/* Private functions ---------------------------------------------------------*/

void main(void)
{
    uint8_t i = 0;
	uint32_t timHZ = 0;
    bool prevStatus = FALSE;
	bool buttonPressed = FALSE;
	//GPIO initialization
	GPIO_DeInit(LED_GPIO_PORT);
	GPIO_DeInit(BUTTON_GPIO_PORT);
	GPIO_Init(LED_GPIO_PORT, (GPIO_Pin_TypeDef)LED_GPIO_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
	GPIO_Init(BUTTON_GPIO_PORT, BUTTON_GPIO_PIN, GPIO_MODE_IN_FL_NO_IT);
	
	//CLC initialization
	CLK_DeInit();
    CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV1);
    CLK_SYSCLKConfig(CLK_PRESCALER_HSIDIV1); // set 16 MHz for CPU
    TIM4_DeInit();

	timHZ = LSIMeasurment();
	BEEP_LSICalibrationConfig(timHZ);

    while (1)
	{
		buttonPressed = GPIO_ReadInputPin(BUTTON_GPIO_PORT, BUTTON_GPIO_PIN) != 0;
		Delay(500);
		if (buttonPressed == TRUE) 
		{
			GPIO_WriteHigh(LED_GPIO_PORT, LED_GPIO_PIN);
		}
		else 
		{
			GPIO_WriteLow(LED_GPIO_PORT, LED_GPIO_PIN);
		}
		
		if (prevStatus == buttonPressed) {
			
			continue;
		}
		prevStatus = buttonPressed;
		//		continue;
        if (buttonPressed == TRUE)
        {
            switch (i)
            {
            case 0:
                BEEP_Cmd(DISABLE);
                Delay(100);
                BEEP_Init(BEEP_FREQUENCY_1KHZ);
                BEEP_Cmd(ENABLE);
                i = 1;
                break;
            case 1:
                BEEP_Cmd(DISABLE);
                Delay(100);
                BEEP_Init(BEEP_FREQUENCY_2KHZ);
                BEEP_Cmd(ENABLE);
                i = 2;
                break;
            case 2:
                BEEP_Cmd(DISABLE);
                Delay(100);
                BEEP_Init(BEEP_FREQUENCY_4KHZ);
                BEEP_Cmd(ENABLE);
                i = 3;
                break;
            case 3:
                BEEP_Cmd(DISABLE);
                i = 0;
                break;
						default:
						    break;
            }
        }

    }

}

/**
  * @brief  Measure the LSI frequency using timer IC1 and update the calibration registers.
  * @note   It is recommended to use a timer clock frequency of at least 10MHz in order 
	*         to obtain a better in the LSI frequency measurement.
  * @param  None
  * @retval None
  */
uint32_t LSIMeasurment(void)
{

 uint32_t lsi_freq_hz = 0x0;
  uint32_t fmaster = 0x0;
  uint16_t ICValue1 = 0x0;
  uint16_t ICValue2 = 0x0;

  /* Get master frequency */
  fmaster = CLK_GetClockFreq();


  /* Enable the LSI measurement: LSI clock connected to timer Input Capture 1 */
  AWU->CSR |= AWU_CSR_MSR;

  /* Measure the LSI frequency with TIMER Input Capture 1 */

  /* Capture only every 8 events!!! */
  /* Enable capture of TI1 */
  TIM1_ICInit(TIM1_CHANNEL_1, TIM1_ICPOLARITY_RISING, TIM1_ICSELECTION_DIRECTTI, TIM1_ICPSC_DIV8, 0);

  /* Enable TIM1 */
  TIM1_Cmd(ENABLE);

  /* wait a capture on cc1 */
  while((TIM1->SR1 & TIM1_FLAG_CC1) != TIM1_FLAG_CC1);
  /* Get CCR1 value*/
  ICValue1 = TIM1_GetCapture1();
  TIM1_ClearFlag(TIM1_FLAG_CC1);


  /* wait a capture on cc1 */
  while((TIM1->SR1 & TIM1_FLAG_CC1) != TIM1_FLAG_CC1);
  /* Get CCR1 value*/
  ICValue2 = TIM1_GetCapture1();
  TIM1_ClearFlag(TIM1_FLAG_CC1);

  /* Disable IC1 input capture */
  TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
  /* Disable timer2 */
  TIM1_Cmd(DISABLE);

  lsi_freq_hz = (8 * fmaster) / (ICValue2 - ICValue1);

  /* Disable the LSI measurement: LSI clock disconnected from timer Input Capture 1 */
  AWU->CSR &= (uint8_t)(~AWU_CSR_MSR);
 return (lsi_freq_hz);
}

void Delay(uint16_t nCount)
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
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
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
