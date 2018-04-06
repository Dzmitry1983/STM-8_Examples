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
/*
	PC5 - SPI_SCK
	PC6 - SPI_MOSI
	PC7 - SPI_MISO
	PA3 - SPI_NSS - need to enable by ST Visual Programmer
*/

#define LED_GPIO_PORT  GPIOB
#define LED_GPIO_PIN  GPIO_PIN_5

volatile uint8_t bufferSPI[100];
volatile uint8_t offsetSPI = 0;
volatile int countValueSPI = 0;

/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
void Delay (uint32_t nCount);
void init(void);

/* Private functions ---------------------------------------------------------*/
/* Public functions ----------------------------------------------------------*/

/**
  * @brief  Main program.
  * @param  None
  * @retval None
  */
void main(void)
{
	int countN = 0;
	static int lastCount = 0;
  
	
	init();
	GPIO_WriteHigh(LED_GPIO_PORT, LED_GPIO_PIN);
//	GPIO_WriteLow(LED_GPIO_PORT, LED_GPIO_PIN);
	
	
  while (1)
  {
	  
	  uint8_t res;
	  uint8_t send = 0;

	  bool isNeedSend = FALSE;
	  SPI_ITConfig(SPI_IT_RXNE, DISABLE);
	  
		while (offsetSPI > 0) {
			offsetSPI--;
			res = bufferSPI[offsetSPI];
			
			if (res == 0) {
				isNeedSend = TRUE;
			}
			
			
		  
		}
	  
	  
	  
	if (isNeedSend) {
		isNeedSend = FALSE;
		
		// send = lastValueSPI;
			send = countValueSPI;
			if (SPI_GetFlagStatus(SPI_FLAG_TXE) == SET) {
				SPI_SendData(send);
				GPIO_WriteReverse(LED_GPIO_PORT, LED_GPIO_PIN);
				
			}
		
	}
		
	
//	GPIO_WriteReverse(LED_GPIO_PORT, LED_GPIO_PIN);
	SPI_ITConfig(SPI_IT_RXNE, ENABLE);
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

void init(void)
{
	//Initiakuze clocks
	CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
	CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV1);
	
	/* Initialize I/Os in Output Mode */
	GPIO_DeInit(LED_GPIO_PORT);
	GPIO_Init(LED_GPIO_PORT, (GPIO_Pin_TypeDef)LED_GPIO_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
	
	
	SPI_DeInit();

	SPI_Init(SPI_FIRSTBIT_MSB, SPI_BAUDRATEPRESCALER_2, SPI_MODE_SLAVE, SPI_CLOCKPOLARITY_LOW, SPI_CLOCKPHASE_1EDGE, SPI_DATADIRECTION_2LINES_FULLDUPLEX, SPI_NSS_SOFT, 1);
	SPI->CRCPR = (uint8_t)0;
	
	SPI_ITConfig(SPI_IT_RXNE, ENABLE);
	SPI_Cmd(ENABLE);
	
	enableInterrupts();
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
