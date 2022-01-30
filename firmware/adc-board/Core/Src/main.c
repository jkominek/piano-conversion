/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
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
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "usb_device.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
//#include "usbd_cdc_if.h"
#include "hdlc.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
ADC_HandleTypeDef hadc1;
ADC_HandleTypeDef hadc2;
ADC_HandleTypeDef hadc3;
DMA_HandleTypeDef hdma_adc1;
DMA_HandleTypeDef hdma_adc2;
DMA_HandleTypeDef hdma_adc3;

TIM_HandleTypeDef htim4;

UART_HandleTypeDef huart1;
UART_HandleTypeDef huart2;
UART_HandleTypeDef huart3;
DMA_HandleTypeDef hdma_usart3_rx;

/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
void PeriphCommonClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_DMA_Init(void);
static void MX_ADC1_Init(void);
static void MX_ADC2_Init(void);
static void MX_ADC3_Init(void);
static void MX_USART1_UART_Init(void);
static void MX_USART3_UART_Init(void);
static void MX_USART2_UART_Init(void);
static void MX_TIM4_Init(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

// important stuff in here!
struct systemstatus status;

// we should compute sample_rate from the clock
// and timer configuration.
uint32_t sample_rate = 16000;

#define DMASIZE 1
// Instruct the compiler to align these to cache-line boundaries
// They'll always be read/written as blocks, independently from
// the others, or anything else.
// We also move them into the .dmabuffers section, which is the
// only thing in RAM_D3, so as to minimize contention between
// DMA copying the ADC values into RAM, and everything else we do.
__attribute__ ((aligned (32))) __attribute__(( section(".dmabuffers") )) uint16_t adc1_buffer[7*DMASIZE];
// adc2 drops some DMAs here and there.
__attribute__ ((aligned (32))) __attribute__(( section(".dmabuffers") )) uint16_t adc2_buffer[7*DMASIZE];
__attribute__ ((aligned (32))) __attribute__(( section(".dmabuffers") )) uint16_t adc3_buffer[8*DMASIZE];

// Represents what we need to know for a sensor.
// Values in here should only be altered by external
// configuration processes.
// updates to this structure should be done as atomically
// as possible. prepare a new copy on the stack, disable
// interrupts, bcopy into this array, and reenable.
// TODO get this stored in DTCM
struct sensorconf {
	// True means we're watching a hammer; rises only
	_Bool hammer;
	// Hammer stuff
	// absolute position must be above this to trigger derivative calculations
	// that's a prereq for a note to occur. it should, ideally, be between
	// "impact" and the let off point.
	float minpos;

	// Key stick stuff
	int hammerchan; // corresponding hammer
	float offpos;     // reading at which to trip to off
} conf[22];

struct sensorstate {
	uint32_t notesent; // 0=nothing sent recently, otherwise time of send
	float sentval; // the velocity we sent.
	_Bool damperup;
	_Bool notesounding; // we've sent a noteon, and haven't yet sent a noteoff for it
} state[22];

uint16_t collectstats = 0;
struct sensorstat {
	uint16_t min;
	uint16_t max;
	uint32_t sum;
	uint32_t count;
} stats[22];

struct __attribute__((__packed__)) sensortrip {
	float velocity;
	uint8_t chan;
};

#define BUFSIZE 32
// TODO move these into DTCM
int bufferptrs[3] = { 0 }; // points to the locations we'll write to next. one past the most recent value.
float sensorbuffer[22][BUFSIZE] = { 0.0 };
float derivs[22][3] = { 0.0 } ;
int derividxs[22] = { 0 };

#define FIR_LEN 13
// TODO want this in DTCM also
// scipy.signal.savgol_coeffs(13, 2, deriv=1, use='dot', delta=0.01)
// the delta doesn't matter, so it was chosen to bring the values to ~1.0
float filter[FIR_LEN] = { -3.2967032967033107, -2.7472527472527473,
		-2.197802197802188, -1.64835164835163, -1.0989010989010746,
		-0.5494505494505213, 2.9531932455029164e-14, 0.5494505494505779,
		1.098901098901124, 1.6483516483516676, 2.1978021978022086,
		2.7472527472527473, 3.296703296703284 };
// supposedly argerich can play 11.52 notes/second
// 16000 samples per second. let's leave her some room,
// and assume 16 notes/second. 16000/16 = 1000
#define MINCYCLESBETWEENNOTES 500

_Bool update_setting(uint8_t channel, uint8_t setting, uint32_t value)
{
	if(channel<0 || channel>=22) {
		return 0;
	}
	switch(setting) {
	case 0: {
		// channel type
		if(value==0 || value==1) {
			conf[channel].hammer = value;
			return 1;
		}
		break;
	}
	case 1: {
		// hammer minpos
		float v = *((float *)&value);
		if(conf[channel].hammer && v>1.0 && v<65535.0) {
			conf[channel].minpos = v;
			return 1;
		}
		break;
	}
	case 2: {
		// damper off pos
		float v = *((float *)&value);
		if((!conf[channel].hammer) && v>1.0 && v<65535.0) {
			conf[channel].offpos = v;
			return 1;
		}
		break;
	}
	case 3: {
		// hammer channel for this dampener
		if(conf[channel].hammer)
			// channel is a hammer, not a dampener, can't set this.
			return 0;
		if(value<0 || value>=22)
			// channel out of range
			return 0;
		if(!conf[value].hammer)
			// target channel isn't a hammer!
			return 0;
		conf[channel].hammerchan = value;
		return 1;
	}
	}

	// couldn't successfully process whatever it was.
	return 0;
}

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* Enable I-Cache---------------------------------------------------------*/
  SCB_EnableICache();

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

/* Configure the peripherals common clocks */
  PeriphCommonClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_DMA_Init();
  MX_ADC1_Init();
  MX_ADC2_Init();
  MX_ADC3_Init();
  MX_USART1_UART_Init();
  MX_USART3_UART_Init();
  MX_USART2_UART_Init();
  MX_USB_DEVICE_Init();
  MX_TIM4_Init();
  /* USER CODE BEGIN 2 */

  HDLC_Init(&huart3, &hdma_usart3_rx);

  // put some plausible values in the autodetection routines.
  // and get the state initialized.
  for(int i=0; i<22; i++) {
	  // hammer default
	  conf[i].minpos = 15000;

	  // keystick default
	  conf[i].offpos = 9000;

	  state[i].notesent = 0;
	  state[i].sentval = 0.0;
	  state[i].damperup = 0;
	  state[i].notesounding = 0;
  }
  // the hammers
  conf[0].hammer = 1;
  conf[1].hammer = 1;
  conf[2].hammer = 1;
  conf[4].hammer = 1;
  conf[6].hammer = 1;
  conf[9].minpos = 20000;
  conf[9].hammer = 1;
  conf[10].hammer = 1;
  conf[18].hammer = 1;
  conf[18].minpos = 12000;
  conf[19].hammer = 1;
  conf[20].hammer = 1;
  conf[21].hammer = 1;
  // key sticks
  conf[3].hammerchan = 2;
  conf[5].hammerchan = 6;
  conf[5].offpos = 5000;
  conf[7].hammerchan = 0;
  conf[7].offpos = 5000;
  conf[8].hammerchan = 10;
  conf[11].hammerchan = 9;
  conf[11].offpos = 5000;
  conf[12].hammerchan = 1;
  conf[13].hammerchan = 4;
  conf[13].offpos = 5000;
  conf[14].hammerchan = 18;
  conf[15].hammerchan = 19;
  conf[16].hammerchan = 20;
  conf[17].hammerchan = 21;

  HAL_Delay(10);
  HAL_ADCEx_Calibration_Start(&hadc1, ADC_CALIB_OFFSET, ADC_SINGLE_ENDED);
  HAL_Delay(10);
  HAL_ADCEx_Calibration_Start(&hadc2, ADC_CALIB_OFFSET, ADC_SINGLE_ENDED);
  HAL_Delay(10);
  HAL_ADCEx_Calibration_Start(&hadc3, ADC_CALIB_OFFSET, ADC_SINGLE_ENDED);
  HAL_Delay(10);


  {
	  // fill out / initialize the system status struct
	  status.uniqueid[0] = HAL_GetUIDw0();
	  status.uniqueid[1] = HAL_GetUIDw1();
	  status.uniqueid[2] = HAL_GetUIDw2();
	  status.devid = HAL_GetDEVID();
	  status.revid = HAL_GetREVID();
	  // derived this expression from the code for HAL_GetUIDw0
	  status.flashsize = READ_REG(*((uint32_t *)FLASHSIZE_BASE));

	  // this one is actually important, we use it in places
	  status.sample_time = 0;
	  status.adc1_dmas = 0;
	  status.adc2_dmas = 0;
	  status.adc3_dmas = 0;
  }

  HDLC_Send_Frame(&huart3, 0x03, "calibdone", 9);

  HAL_TIM_Base_Start_IT(&htim4);

  // start timer
  HAL_ADC_Start_DMA(&hadc1, (uint32_t*)adc1_buffer, 7*DMASIZE);
  HAL_ADC_Start_DMA(&hadc2, (uint32_t*)adc2_buffer, 7*DMASIZE);
  HAL_ADC_Start_DMA(&hadc3, (uint32_t*)adc3_buffer, 8*DMASIZE);
  HAL_TIM_OC_Start(&htim4, TIM_CHANNEL_4);

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */

  uint32_t last_clock_pulse = 1<<30;
  while (1)
  {
	  // systick & DMA should wake us up occasionally
	  __asm("wfi");

	  // how much time has passed since our last clock message?
	  // if(lots) { output new clock message }
	  uint32_t clock_rate = sample_rate * 64; // 64 seconds; should be a bitshift
	  if(  ((status.sample_time < last_clock_pulse) &&
		    ((UINT32_MAX - last_clock_pulse) + status.sample_time >= clock_rate))
		|| ((status.sample_time > last_clock_pulse) &&
			(status.sample_time - last_clock_pulse >= clock_rate)) ) {
		  // we've passed clock_rate worth of samples, so we'll send another clock message
		  HDLC_Send_Frame(&huart3, 0x07, (uint8_t*)&(status.sample_time), sizeof(uint32_t));
		  last_clock_pulse = status.sample_time;
	  }

	  if(collectstats) {
		  if((status.sample_time % collectstats)==0) {
			  // we should be collecting stats. send them out.
			  HDLC_Send_Frame(&huart3, 0x0C, (uint8_t*)stats, sizeof(stats));
			  for(int i=0; i<22; i++) {
				  stats[i].min = -1;
				  stats[i].max = 0;
				  stats[i].sum = 0;
				  stats[i].count = 0;
			  }
		  }
	  }

	  // this will bail out rather quickly if we haven't received
	  // any new data, so it's probably fine to check it regularly.
	  HDLC_Process_Input();

    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};
  RCC_CRSInitTypeDef RCC_CRSInitStruct = {0};

  /** Supply configuration update enable
  */
  HAL_PWREx_ConfigSupply(PWR_LDO_SUPPLY);
  /** Configure the main internal regulator output voltage
  */
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE0);

  while(!__HAL_PWR_GET_FLAG(PWR_FLAG_VOSRDY)) {}
  /** Macro to configure the PLL clock source
  */
  __HAL_RCC_PLL_PLLSOURCE_CONFIG(RCC_PLLSOURCE_HSI);
  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI48|RCC_OSCILLATORTYPE_HSI;
  RCC_OscInitStruct.HSIState = RCC_HSI_DIV1;
  RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.HSI48State = RCC_HSI48_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
  RCC_OscInitStruct.PLL.PLLM = 8;
  RCC_OscInitStruct.PLL.PLLN = 120;
  RCC_OscInitStruct.PLL.PLLP = 2;
  RCC_OscInitStruct.PLL.PLLQ = 5;
  RCC_OscInitStruct.PLL.PLLR = 2;
  RCC_OscInitStruct.PLL.PLLRGE = RCC_PLL1VCIRANGE_3;
  RCC_OscInitStruct.PLL.PLLVCOSEL = RCC_PLL1VCOWIDE;
  RCC_OscInitStruct.PLL.PLLFRACN = 0;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2
                              |RCC_CLOCKTYPE_D3PCLK1|RCC_CLOCKTYPE_D1PCLK1;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.SYSCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_HCLK_DIV2;
  RCC_ClkInitStruct.APB3CLKDivider = RCC_APB3_DIV2;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_APB1_DIV2;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_APB2_DIV2;
  RCC_ClkInitStruct.APB4CLKDivider = RCC_APB4_DIV2;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_4) != HAL_OK)
  {
    Error_Handler();
  }
  /** Enable the SYSCFG APB clock
  */
  __HAL_RCC_CRS_CLK_ENABLE();
  /** Configures CRS
  */
  RCC_CRSInitStruct.Prescaler = RCC_CRS_SYNC_DIV1;
  RCC_CRSInitStruct.Source = RCC_CRS_SYNC_SOURCE_USB2;
  RCC_CRSInitStruct.Polarity = RCC_CRS_SYNC_POLARITY_RISING;
  RCC_CRSInitStruct.ReloadValue = __HAL_RCC_CRS_RELOADVALUE_CALCULATE(48000000,1000);
  RCC_CRSInitStruct.ErrorLimitValue = 34;
  RCC_CRSInitStruct.HSI48CalibrationValue = 32;

  HAL_RCCEx_CRSConfig(&RCC_CRSInitStruct);
}

/**
  * @brief Peripherals Common Clock Configuration
  * @retval None
  */
void PeriphCommonClock_Config(void)
{
  RCC_PeriphCLKInitTypeDef PeriphClkInitStruct = {0};

  /** Initializes the peripherals clock
  */
  PeriphClkInitStruct.PeriphClockSelection = RCC_PERIPHCLK_ADC|RCC_PERIPHCLK_USART1
                              |RCC_PERIPHCLK_USART2|RCC_PERIPHCLK_USART3;
  PeriphClkInitStruct.PLL2.PLL2M = 4;
  PeriphClkInitStruct.PLL2.PLL2N = 30;
  PeriphClkInitStruct.PLL2.PLL2P = 4;
  PeriphClkInitStruct.PLL2.PLL2Q = 16;
  PeriphClkInitStruct.PLL2.PLL2R = 2;
  PeriphClkInitStruct.PLL2.PLL2RGE = RCC_PLL2VCIRANGE_3;
  PeriphClkInitStruct.PLL2.PLL2VCOSEL = RCC_PLL2VCOWIDE;
  PeriphClkInitStruct.PLL2.PLL2FRACN = 0;
  PeriphClkInitStruct.PLL3.PLL3M = 4;
  PeriphClkInitStruct.PLL3.PLL3N = 48;
  PeriphClkInitStruct.PLL3.PLL3P = 2;
  PeriphClkInitStruct.PLL3.PLL3Q = 8;
  PeriphClkInitStruct.PLL3.PLL3R = 6;
  PeriphClkInitStruct.PLL3.PLL3RGE = RCC_PLL3VCIRANGE_3;
  PeriphClkInitStruct.PLL3.PLL3VCOSEL = RCC_PLL3VCOWIDE;
  PeriphClkInitStruct.PLL3.PLL3FRACN = 0;
  PeriphClkInitStruct.Usart234578ClockSelection = RCC_USART234578CLKSOURCE_PLL3;
  PeriphClkInitStruct.Usart16ClockSelection = RCC_USART16CLKSOURCE_PLL3;
  PeriphClkInitStruct.AdcClockSelection = RCC_ADCCLKSOURCE_PLL2;
  if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief ADC1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_ADC1_Init(void)
{

  /* USER CODE BEGIN ADC1_Init 0 */

  /* USER CODE END ADC1_Init 0 */

  ADC_MultiModeTypeDef multimode = {0};
  ADC_ChannelConfTypeDef sConfig = {0};

  /* USER CODE BEGIN ADC1_Init 1 */

  /* USER CODE END ADC1_Init 1 */
  /** Common config
  */
  hadc1.Instance = ADC1;
  hadc1.Init.ClockPrescaler = ADC_CLOCK_ASYNC_DIV1;
  hadc1.Init.Resolution = ADC_RESOLUTION_16B;
  hadc1.Init.ScanConvMode = ADC_SCAN_ENABLE;
  hadc1.Init.EOCSelection = ADC_EOC_SEQ_CONV;
  hadc1.Init.LowPowerAutoWait = DISABLE;
  hadc1.Init.ContinuousConvMode = DISABLE;
  hadc1.Init.NbrOfConversion = 7;
  hadc1.Init.DiscontinuousConvMode = DISABLE;
  hadc1.Init.ExternalTrigConv = ADC_EXTERNALTRIG_T4_TRGO;
  hadc1.Init.ExternalTrigConvEdge = ADC_EXTERNALTRIGCONVEDGE_RISING;
  hadc1.Init.ConversionDataManagement = ADC_CONVERSIONDATA_DMA_CIRCULAR;
  hadc1.Init.Overrun = ADC_OVR_DATA_PRESERVED;
  hadc1.Init.LeftBitShift = ADC_LEFTBITSHIFT_NONE;
  hadc1.Init.OversamplingMode = DISABLE;
  if (HAL_ADC_Init(&hadc1) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure the ADC multi-mode
  */
  multimode.Mode = ADC_MODE_INDEPENDENT;
  if (HAL_ADCEx_MultiModeConfigChannel(&hadc1, &multimode) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure Regular Channel
  */
  sConfig.Channel = ADC_CHANNEL_7;
  sConfig.Rank = ADC_REGULAR_RANK_1;
  sConfig.SamplingTime = ADC_SAMPLETIME_32CYCLES_5;
  sConfig.SingleDiff = ADC_SINGLE_ENDED;
  sConfig.OffsetNumber = ADC_OFFSET_NONE;
  sConfig.Offset = 0;
  sConfig.OffsetSignedSaturation = DISABLE;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure Regular Channel
  */
  sConfig.Channel = ADC_CHANNEL_11;
  sConfig.Rank = ADC_REGULAR_RANK_2;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure Regular Channel
  */
  sConfig.Channel = ADC_CHANNEL_15;
  sConfig.Rank = ADC_REGULAR_RANK_3;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure Regular Channel
  */
  sConfig.Channel = ADC_CHANNEL_16;
  sConfig.Rank = ADC_REGULAR_RANK_4;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure Regular Channel
  */
  sConfig.Channel = ADC_CHANNEL_17;
  sConfig.Rank = ADC_REGULAR_RANK_5;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure Regular Channel
  */
  sConfig.Channel = ADC_CHANNEL_18;
  sConfig.Rank = ADC_REGULAR_RANK_6;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure Regular Channel
  */
  sConfig.Channel = ADC_CHANNEL_19;
  sConfig.Rank = ADC_REGULAR_RANK_7;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN ADC1_Init 2 */

  /* USER CODE END ADC1_Init 2 */

}

/**
  * @brief ADC2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_ADC2_Init(void)
{

  /* USER CODE BEGIN ADC2_Init 0 */

  /* USER CODE END ADC2_Init 0 */

  ADC_ChannelConfTypeDef sConfig = {0};

  /* USER CODE BEGIN ADC2_Init 1 */

  /* USER CODE END ADC2_Init 1 */
  /** Common config
  */
  hadc2.Instance = ADC2;
  hadc2.Init.ClockPrescaler = ADC_CLOCK_ASYNC_DIV1;
  hadc2.Init.Resolution = ADC_RESOLUTION_16B;
  hadc2.Init.ScanConvMode = ADC_SCAN_ENABLE;
  hadc2.Init.EOCSelection = ADC_EOC_SEQ_CONV;
  hadc2.Init.LowPowerAutoWait = DISABLE;
  hadc2.Init.ContinuousConvMode = DISABLE;
  hadc2.Init.NbrOfConversion = 7;
  hadc2.Init.DiscontinuousConvMode = DISABLE;
  hadc2.Init.ExternalTrigConv = ADC_EXTERNALTRIG_T4_TRGO;
  hadc2.Init.ExternalTrigConvEdge = ADC_EXTERNALTRIGCONVEDGE_FALLING;
  hadc2.Init.ConversionDataManagement = ADC_CONVERSIONDATA_DMA_CIRCULAR;
  hadc2.Init.Overrun = ADC_OVR_DATA_PRESERVED;
  hadc2.Init.LeftBitShift = ADC_LEFTBITSHIFT_NONE;
  hadc2.Init.OversamplingMode = DISABLE;
  if (HAL_ADC_Init(&hadc2) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure Regular Channel
  */
  sConfig.Channel = ADC_CHANNEL_3;
  sConfig.Rank = ADC_REGULAR_RANK_1;
  sConfig.SamplingTime = ADC_SAMPLETIME_32CYCLES_5;
  sConfig.SingleDiff = ADC_SINGLE_ENDED;
  sConfig.OffsetNumber = ADC_OFFSET_NONE;
  sConfig.Offset = 0;
  sConfig.OffsetSignedSaturation = DISABLE;
  if (HAL_ADC_ConfigChannel(&hadc2, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure Regular Channel
  */
  sConfig.Channel = ADC_CHANNEL_4;
  sConfig.Rank = ADC_REGULAR_RANK_2;
  if (HAL_ADC_ConfigChannel(&hadc2, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure Regular Channel
  */
  sConfig.Channel = ADC_CHANNEL_5;
  sConfig.Rank = ADC_REGULAR_RANK_3;
  if (HAL_ADC_ConfigChannel(&hadc2, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure Regular Channel
  */
  sConfig.Channel = ADC_CHANNEL_8;
  sConfig.Rank = ADC_REGULAR_RANK_4;
  if (HAL_ADC_ConfigChannel(&hadc2, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure Regular Channel
  */
  sConfig.Channel = ADC_CHANNEL_9;
  sConfig.Rank = ADC_REGULAR_RANK_5;
  if (HAL_ADC_ConfigChannel(&hadc2, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure Regular Channel
  */
  sConfig.Channel = ADC_CHANNEL_10;
  sConfig.Rank = ADC_REGULAR_RANK_6;
  if (HAL_ADC_ConfigChannel(&hadc2, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure Regular Channel
  */
  sConfig.Channel = ADC_CHANNEL_14;
  sConfig.Rank = ADC_REGULAR_RANK_7;
  if (HAL_ADC_ConfigChannel(&hadc2, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN ADC2_Init 2 */

  /* USER CODE END ADC2_Init 2 */

}

/**
  * @brief ADC3 Initialization Function
  * @param None
  * @retval None
  */
static void MX_ADC3_Init(void)
{

  /* USER CODE BEGIN ADC3_Init 0 */

  /* USER CODE END ADC3_Init 0 */

  ADC_ChannelConfTypeDef sConfig = {0};

  /* USER CODE BEGIN ADC3_Init 1 */

  /* USER CODE END ADC3_Init 1 */
  /** Common config
  */
  hadc3.Instance = ADC3;
  hadc3.Init.ClockPrescaler = ADC_CLOCK_ASYNC_DIV1;
  hadc3.Init.Resolution = ADC_RESOLUTION_16B;
  hadc3.Init.ScanConvMode = ADC_SCAN_ENABLE;
  hadc3.Init.EOCSelection = ADC_EOC_SEQ_CONV;
  hadc3.Init.LowPowerAutoWait = DISABLE;
  hadc3.Init.ContinuousConvMode = DISABLE;
  hadc3.Init.NbrOfConversion = 8;
  hadc3.Init.DiscontinuousConvMode = DISABLE;
  hadc3.Init.ExternalTrigConv = ADC_EXTERNALTRIG_T4_TRGO;
  hadc3.Init.ExternalTrigConvEdge = ADC_EXTERNALTRIGCONVEDGE_RISING;
  hadc3.Init.ConversionDataManagement = ADC_CONVERSIONDATA_DMA_CIRCULAR;
  hadc3.Init.Overrun = ADC_OVR_DATA_PRESERVED;
  hadc3.Init.LeftBitShift = ADC_LEFTBITSHIFT_NONE;
  hadc3.Init.OversamplingMode = DISABLE;
  if (HAL_ADC_Init(&hadc3) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure Regular Channel
  */
  sConfig.Channel = ADC_CHANNEL_2;
  sConfig.Rank = ADC_REGULAR_RANK_1;
  sConfig.SamplingTime = ADC_SAMPLETIME_32CYCLES_5;
  sConfig.SingleDiff = ADC_SINGLE_ENDED;
  sConfig.OffsetNumber = ADC_OFFSET_NONE;
  sConfig.Offset = 0;
  sConfig.OffsetSignedSaturation = DISABLE;
  if (HAL_ADC_ConfigChannel(&hadc3, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure Regular Channel
  */
  sConfig.Channel = ADC_CHANNEL_3;
  sConfig.Rank = ADC_REGULAR_RANK_2;
  if (HAL_ADC_ConfigChannel(&hadc3, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure Regular Channel
  */
  sConfig.Channel = ADC_CHANNEL_4;
  sConfig.Rank = ADC_REGULAR_RANK_3;
  if (HAL_ADC_ConfigChannel(&hadc3, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure Regular Channel
  */
  sConfig.Channel = ADC_CHANNEL_5;
  sConfig.Rank = ADC_REGULAR_RANK_4;
  if (HAL_ADC_ConfigChannel(&hadc3, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure Regular Channel
  */
  sConfig.Channel = ADC_CHANNEL_6;
  sConfig.Rank = ADC_REGULAR_RANK_5;
  if (HAL_ADC_ConfigChannel(&hadc3, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure Regular Channel
  */
  sConfig.Channel = ADC_CHANNEL_7;
  sConfig.Rank = ADC_REGULAR_RANK_6;
  if (HAL_ADC_ConfigChannel(&hadc3, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure Regular Channel
  */
  sConfig.Channel = ADC_CHANNEL_8;
  sConfig.Rank = ADC_REGULAR_RANK_7;
  if (HAL_ADC_ConfigChannel(&hadc3, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure Regular Channel
  */
  sConfig.Channel = ADC_CHANNEL_9;
  sConfig.Rank = ADC_REGULAR_RANK_8;
  if (HAL_ADC_ConfigChannel(&hadc3, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN ADC3_Init 2 */

  /* USER CODE END ADC3_Init 2 */

}

/**
  * @brief TIM4 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM4_Init(void)
{

  /* USER CODE BEGIN TIM4_Init 0 */

  /* USER CODE END TIM4_Init 0 */

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};
  TIM_OC_InitTypeDef sConfigOC = {0};

  /* USER CODE BEGIN TIM4_Init 1 */

  /* USER CODE END TIM4_Init 1 */
  htim4.Instance = TIM4;
  htim4.Init.Prescaler = 1;
  htim4.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim4.Init.Period = 7499;
  htim4.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim4.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim4) != HAL_OK)
  {
    Error_Handler();
  }
  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim4, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_TIM_OC_Init(&htim4) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_UPDATE;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim4, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sConfigOC.OCMode = TIM_OCMODE_TIMING;
  sConfigOC.Pulse = 0;
  sConfigOC.OCPolarity = TIM_OCPOLARITY_HIGH;
  sConfigOC.OCFastMode = TIM_OCFAST_DISABLE;
  if (HAL_TIM_OC_ConfigChannel(&htim4, &sConfigOC, TIM_CHANNEL_4) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM4_Init 2 */

  /* USER CODE END TIM4_Init 2 */

}

/**
  * @brief USART1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_USART1_UART_Init(void)
{

  /* USER CODE BEGIN USART1_Init 0 */

  /* USER CODE END USART1_Init 0 */

  /* USER CODE BEGIN USART1_Init 1 */

  /* USER CODE END USART1_Init 1 */
  huart1.Instance = USART1;
  huart1.Init.BaudRate = 3000000;
  huart1.Init.WordLength = UART_WORDLENGTH_8B;
  huart1.Init.StopBits = UART_STOPBITS_1;
  huart1.Init.Parity = UART_PARITY_NONE;
  huart1.Init.Mode = UART_MODE_TX_RX;
  huart1.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart1.Init.OverSampling = UART_OVERSAMPLING_16;
  huart1.Init.OneBitSampling = UART_ONE_BIT_SAMPLE_DISABLE;
  huart1.Init.ClockPrescaler = UART_PRESCALER_DIV1;
  huart1.AdvancedInit.AdvFeatureInit = UART_ADVFEATURE_NO_INIT;
  if (HAL_UART_Init(&huart1) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_UARTEx_SetTxFifoThreshold(&huart1, UART_TXFIFO_THRESHOLD_1_8) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_UARTEx_SetRxFifoThreshold(&huart1, UART_RXFIFO_THRESHOLD_1_8) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_UARTEx_EnableFifoMode(&huart1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN USART1_Init 2 */

  /* USER CODE END USART1_Init 2 */

}

/**
  * @brief USART2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_USART2_UART_Init(void)
{

  /* USER CODE BEGIN USART2_Init 0 */

  /* USER CODE END USART2_Init 0 */

  /* USER CODE BEGIN USART2_Init 1 */

  /* USER CODE END USART2_Init 1 */
  huart2.Instance = USART2;
  huart2.Init.BaudRate = 3000000;
  huart2.Init.WordLength = UART_WORDLENGTH_8B;
  huart2.Init.StopBits = UART_STOPBITS_1;
  huart2.Init.Parity = UART_PARITY_NONE;
  huart2.Init.Mode = UART_MODE_TX_RX;
  huart2.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart2.Init.OverSampling = UART_OVERSAMPLING_16;
  huart2.Init.OneBitSampling = UART_ONE_BIT_SAMPLE_DISABLE;
  huart2.Init.ClockPrescaler = UART_PRESCALER_DIV1;
  huart2.AdvancedInit.AdvFeatureInit = UART_ADVFEATURE_NO_INIT;
  if (HAL_UART_Init(&huart2) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_UARTEx_SetTxFifoThreshold(&huart2, UART_TXFIFO_THRESHOLD_1_8) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_UARTEx_SetRxFifoThreshold(&huart2, UART_RXFIFO_THRESHOLD_1_8) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_UARTEx_EnableFifoMode(&huart2) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN USART2_Init 2 */

  /* USER CODE END USART2_Init 2 */

}

/**
  * @brief USART3 Initialization Function
  * @param None
  * @retval None
  */
static void MX_USART3_UART_Init(void)
{

  /* USER CODE BEGIN USART3_Init 0 */

  /* USER CODE END USART3_Init 0 */

  /* USER CODE BEGIN USART3_Init 1 */

  /* USER CODE END USART3_Init 1 */
  huart3.Instance = USART3;
  huart3.Init.BaudRate = 3000000;
  huart3.Init.WordLength = UART_WORDLENGTH_8B;
  huart3.Init.StopBits = UART_STOPBITS_1;
  huart3.Init.Parity = UART_PARITY_NONE;
  huart3.Init.Mode = UART_MODE_TX_RX;
  huart3.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart3.Init.OverSampling = UART_OVERSAMPLING_16;
  huart3.Init.OneBitSampling = UART_ONE_BIT_SAMPLE_DISABLE;
  huart3.Init.ClockPrescaler = UART_PRESCALER_DIV1;
  huart3.AdvancedInit.AdvFeatureInit = UART_ADVFEATURE_NO_INIT;
  if (HAL_UART_Init(&huart3) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_UARTEx_SetTxFifoThreshold(&huart3, UART_TXFIFO_THRESHOLD_1_8) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_UARTEx_SetRxFifoThreshold(&huart3, UART_RXFIFO_THRESHOLD_1_8) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_UARTEx_EnableFifoMode(&huart3) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN USART3_Init 2 */

  /* USER CODE END USART3_Init 2 */

}

/**
  * Enable DMA controller clock
  */
static void MX_DMA_Init(void)
{

  /* DMA controller clock enable */
  __HAL_RCC_DMA1_CLK_ENABLE();
  __HAL_RCC_DMA2_CLK_ENABLE();

  /* DMA interrupt init */
  /* DMA1_Stream0_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA1_Stream0_IRQn, 1, 0);
  HAL_NVIC_EnableIRQ(DMA1_Stream0_IRQn);
  /* DMA1_Stream1_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA1_Stream1_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(DMA1_Stream1_IRQn);
  /* DMA2_Stream0_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA2_Stream0_IRQn, 1, 0);
  HAL_NVIC_EnableIRQ(DMA2_Stream0_IRQn);
  /* DMA2_Stream1_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA2_Stream1_IRQn, 1, 0);
  HAL_NVIC_EnableIRQ(DMA2_Stream1_IRQn);

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOF_CLK_ENABLE();
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();
  __HAL_RCC_GPIOG_CLK_ENABLE();
  __HAL_RCC_GPIOD_CLK_ENABLE();
  __HAL_RCC_GPIOE_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(LED4_GPIO_Port, LED4_Pin, GPIO_PIN_SET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(LED3_GPIO_Port, LED3_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOE, LED2_Pin|LED1_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pins : TP23_Pin TP24_Pin */
  GPIO_InitStruct.Pin = TP23_Pin|TP24_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOG, &GPIO_InitStruct);

  /*Configure GPIO pins : TP28_Pin TP25_Pin */
  GPIO_InitStruct.Pin = TP28_Pin|TP25_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

  /*Configure GPIO pins : TP26_Pin TP27_Pin */
  GPIO_InitStruct.Pin = TP26_Pin|TP27_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /*Configure GPIO pins : LED4_Pin LED3_Pin */
  GPIO_InitStruct.Pin = LED4_Pin|LED3_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

  /*Configure GPIO pins : LED2_Pin LED1_Pin */
  GPIO_InitStruct.Pin = LED2_Pin|LED1_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOE, &GPIO_InitStruct);

}

/* USER CODE BEGIN 4 */

void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
	if(htim == &htim4) {
		status.sample_time += 1;
	}
}

static inline __attribute__((always_inline)) float computefilter(int chan, int idxs[])
{
	float v = 0.0;
	for(int i=0; i<FIR_LEN; i++) {
		// TODO check to see what the compiler-emitted assembly looks like.
		// if we're not using the fused multiply and add instruction, fix it.
		v += filter[i] * sensorbuffer[chan][idxs[i]];
	}
	return v;
}

static inline uint16_t min(uint16_t a, uint16_t b) {
	return (a<b) ? a : b;
}

static inline uint16_t max(uint16_t a, uint16_t b) {
	return (a>b) ? a : b;
}

// TODO move this into ITCM?
void HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef *hadc)
{
	uint32_t now = status.sample_time;

	// Set up the variations on the copy loop
	uint16_t *buf;
	int cnt = 7;
	int offset = 0;
	int whichadc;
	int idxs[FIR_LEN] = {0};
	if(hadc==&hadc1) {
		buf = adc1_buffer;
		whichadc = 0;
		status.adc1_dmas++;
	} else if(hadc==&hadc2) {
		buf = adc2_buffer;
		offset = 7;
		whichadc = 1;
		status.adc2_dmas++;
	} else if(hadc==&hadc3){
		buf = adc3_buffer;
		cnt = 8;
		offset = 14;
		whichadc = 2;
		status.adc3_dmas++;
	} else {
		return;
	}

	int bufptr = bufferptrs[whichadc];

	// Copy the ADC buffers into the main circular buffer.
	for(int samp=0; samp<DMASIZE; samp++) {
		// each channel in there
		for(int i=0; i<cnt; i++) {
			int chan = offset+i;
			uint16_t v = 65535 - buf[samp*cnt+i];
			sensorbuffer[chan][(bufptr+samp) % BUFSIZE] = (float)(v);

			if(collectstats) {
				stats[chan].min = min(stats[chan].min, v);
				stats[chan].max = max(stats[chan].max, v);
				stats[chan].count++;
				stats[chan].sum += v;
			}
		}
	}

	// update bufferptrs to reflect new data
	bufptr = bufferptrs[whichadc] = (bufferptrs[whichadc] + DMASIZE) % BUFSIZE;

	// if we've been asked to stream a sensor out the serial port...
	if(0) {
		float buffer[1];
		buffer[0] = sensorbuffer[11][bufptr];
	    // read the DMASIZE values before bufptr
		HDLC_Send_Frame(&huart3, 0x0A, (uint8_t*)buffer, sizeof(buffer));
	}

	// TODO fill idxs with enough indexes to do two FIR/deriv calculations
	// for now-DMABUF/2 and now.
	for(int idx=0; idx<FIR_LEN; idx++) {
		// start from bufptr, which represents the next spot to write to
		// subtract one to get back to the most recent value
		// then go back by the length of the FIR filter
		// then add back the idx we want
		// that might be negative, so add BUFSIZE before doing %BUFSIZE.
		idxs[idx] = ((bufptr - 1 - FIR_LEN + idx) + BUFSIZE) % BUFSIZE;
	}
	// index of the middle value for the filter
	// division is right for odd numbers
	int mid = idxs[FIR_LEN/2];

#define INFDERIV(chan) { derivs[chan][derividxs[chan]] = INFINITY; derividxs[chan] = (1 + derividxs[chan]) % 3; }

	// We'll process the chunk we just got.
	for(int chan=offset; chan<offset+cnt; chan++) {
		if(conf[chan].hammer) {
			// Hammer

			// note that anywhere we skip this and don't compute the
			// derivative, we put +INF in for the current derivative.
			// this ensures that when we go to check to see if there
			// is a derivative peak, we don't use stale data.

			// This represents the "don't rapidly send multiple note-ons"
			// condition. At least MINCYCLESBETWEENNOTES has to pass before
			// we'll even look at the data again.
			if(state[chan].notesent) {
				// we've sent something recently.
				if(state[chan].notesent < now) {
					// no wrap situation
					if(state[chan].notesent < (now - MINCYCLESBETWEENNOTES)) {
						// enough time has passed.
						state[chan].notesent = 0;
					} else {
						// not enough time, ignore
						INFDERIV(chan);
						continue;
					}
				} else {
					// we've wrapped
					if((state[chan].notesent + MINCYCLESBETWEENNOTES) < now) {
						// also enough time as passed
						state[chan].notesent = 0;
					} else {
						// not enough time, ignore
						INFDERIV(chan);
						continue;
					}
				}
			}

			// This is the "the string can't sound until the hammer is close
			// enough" condition. If we're not close, don't look at the data.
			if(sensorbuffer[chan][mid] < conf[chan].minpos) {
				// hammer is too low
				INFDERIV(chan);
				continue;
			}

			// Ok, now we need the derivative
			float v = computefilter(chan, idxs);
			int didx = derividxs[chan]; // where we're putting our value
			derivs[chan][derividxs[chan]] = v;

			float derivold, derivmid, derivnew;
			derivnew = v;
			derivmid = derivs[chan][(didx + 3 - 1) % 3];
			derivold = derivs[chan][(didx + 3 - 2) % 3];

			// increment the spot we'll put the derivative
			derividxs[chan] = (1 + derividxs[chan]) % 3;

			// if derivmid is equal to either of the others, then we don't
			// actually trigger. but we're dealing with a float computed from
			// FIR_LEN input values. equality is unlikely.
			if(derivmid > 0.0 && derivmid > derivold && derivmid > derivnew) {
				state[chan].notesent = now;
				state[chan].sentval = v;
				state[chan].notesounding = 1;

				struct sensortrip msg;
				msg.chan = chan;
				msg.velocity = derivmid;
				HDLC_Send_Frame(&huart3, 0x08, (uint8_t*)&msg, sizeof(msg));
			}

		} else {
			// Key stick

			int hammerchan = conf[chan].hammerchan;

			// if the damper is up
			if(state[chan].damperup) {
				if(sensorbuffer[chan][mid] < conf[chan].offpos - 32) {
					// damper appears to have dropped back down.
					state[chan].damperup = 0;

					if(state[hammerchan].notesounding) {
						// our hammer has a note sounding. issue a note off.
						state[hammerchan].notesounding = 0;

						struct sensortrip msg;
						msg.chan = chan;
						// this is actually the derivative from a few
						// samples ago. good enough. key stick moves slowly.
						msg.velocity = computefilter(chan, idxs);
						HDLC_Send_Frame(&huart3, 0x08, (uint8_t*)&msg, sizeof(msg));
					}
				}
			} else {
				// damper is _down_
				if(sensorbuffer[chan][mid] > conf[chan].offpos + 32) {
					// damper appears to have been raised.
					state[chan].damperup = 1;

					// if we wanted to send "pre-lift" messages
					/*
					struct sensortrip msg;
					msg.chan = chan;
					msg.velocity = computefilter(chan, idxs);
					HDLC_Send_Frame(&huart3, 0x08, (uint8_t*)&msg, sizeof(msg));
					*/
				}
			}

/*
			if(state[hammerchan].notesounding) {
				if(sensorbuffer[chan][mid] < conf[chan].offpos) {
					// we've dropped low enough. we're dampening now,
					// so mark the note as stopped.
					state[hammerchan].notesounding = 0;
					state[hammerchan].damperup = 0;

					struct sensortrip msg;
					msg.chan = chan;
					// this is actually the derivative from a few
					// samples ago. good enough.
					msg.velocity = computefilter(chan, idxs);
					HDLC_Send_Frame(&huart3, 0x08, (uint8_t*)&msg, sizeof(msg));
				}
			}
*/
		}
	}
}

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  HDLC_Send_Frame(&huart3, 0x7F, "err", 3);

  // restart
  NVIC_SystemReset();

  /*
  __disable_irq();
  while (1)
  {
  }
  */

  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

