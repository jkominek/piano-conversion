/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2020 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under Ultimate Liberty license
  * SLA0044, the "License"; You may not use this file except in compliance with
  * the License. You may obtain a copy of the License at:
  *                             www.st.com/SLA0044
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32h7xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define Sen22_Pin GPIO_PIN_3
#define Sen22_GPIO_Port GPIOF
#define Sen21_Pin GPIO_PIN_4
#define Sen21_GPIO_Port GPIOF
#define Sen20_Pin GPIO_PIN_5
#define Sen20_GPIO_Port GPIOF
#define Sen19_Pin GPIO_PIN_6
#define Sen19_GPIO_Port GPIOF
#define Sen18_Pin GPIO_PIN_7
#define Sen18_GPIO_Port GPIOF
#define Sen17_Pin GPIO_PIN_8
#define Sen17_GPIO_Port GPIOF
#define Sen16_Pin GPIO_PIN_9
#define Sen16_GPIO_Port GPIOF
#define Sen15_Pin GPIO_PIN_10
#define Sen15_GPIO_Port GPIOF
#define Sen14_Pin GPIO_PIN_0
#define Sen14_GPIO_Port GPIOC
#define Sen13_Pin GPIO_PIN_1
#define Sen13_GPIO_Port GPIOC
#define Sen10_Pin GPIO_PIN_0
#define Sen10_GPIO_Port GPIOA
#define Sen11_Pin GPIO_PIN_1
#define Sen11_GPIO_Port GPIOA
#define Sen12_Pin GPIO_PIN_2
#define Sen12_GPIO_Port GPIOA
#define Sen9_Pin GPIO_PIN_3
#define Sen9_GPIO_Port GPIOA
#define Sen8_Pin GPIO_PIN_4
#define Sen8_GPIO_Port GPIOA
#define Sen7_Pin GPIO_PIN_5
#define Sen7_GPIO_Port GPIOA
#define Sen6_Pin GPIO_PIN_6
#define Sen6_GPIO_Port GPIOA
#define Sen5_Pin GPIO_PIN_7
#define Sen5_GPIO_Port GPIOA
#define Sen4_Pin GPIO_PIN_4
#define Sen4_GPIO_Port GPIOC
#define Sen3_Pin GPIO_PIN_5
#define Sen3_GPIO_Port GPIOC
#define Sen2_Pin GPIO_PIN_0
#define Sen2_GPIO_Port GPIOB
#define Sen1_Pin GPIO_PIN_1
#define Sen1_GPIO_Port GPIOB
#define RS485_TX_Pin GPIO_PIN_10
#define RS485_TX_GPIO_Port GPIOB
#define RS485_RX_Pin GPIO_PIN_11
#define RS485_RX_GPIO_Port GPIOB
#define TP23_Pin GPIO_PIN_7
#define TP23_GPIO_Port GPIOG
#define TP24_Pin GPIO_PIN_8
#define TP24_GPIO_Port GPIOG
#define TP28_Pin GPIO_PIN_8
#define TP28_GPIO_Port GPIOC
#define TP25_Pin GPIO_PIN_9
#define TP25_GPIO_Port GPIOC
#define TP26_Pin GPIO_PIN_8
#define TP26_GPIO_Port GPIOA
#define TP27_Pin GPIO_PIN_10
#define TP27_GPIO_Port GPIOA
#define LED4_Pin GPIO_PIN_10
#define LED4_GPIO_Port GPIOC
#define LED3_Pin GPIO_PIN_12
#define LED3_GPIO_Port GPIOC
#define LED2_Pin GPIO_PIN_0
#define LED2_GPIO_Port GPIOE
#define LED1_Pin GPIO_PIN_1
#define LED1_GPIO_Port GPIOE
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */
