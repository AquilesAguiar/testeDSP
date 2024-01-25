#include "GDSP_Codec.h"

HAL_StatusTypeDef GDSP_Codec_Init(GDSP_Codec *codec, I2C_HandleTypeDef *I2Chandle, GPIO_TypeDef *nrstPinBank, uint16_t nrstPin){
	codec->I2Chandle = I2Chandle;
	codec->nrstPinBank = nrstPinBank;
	codec->nrstPin = nrstPin;

	GDSP_Codec_Reset(codec);

	HAL_StatusTypeDef status;

	status = GDSP_Codec_WriteRegister(codec, 0x01, 0x01);
	HAL_Delay(10);

	status = GDSP_Codec_WriteRegister(codec, 0x03, 0x10);

	status = GDSP_Codec_WriteRegister(codec, 0x07, 0x08);

	status = GDSP_Codec_WriteRegister(codec, 0x0F, 0x00);
	status = GDSP_Codec_WriteRegister(codec, 0x10, 0x80);
	status = GDSP_Codec_WriteRegister(codec, 0x11, 0x0F);
	status = GDSP_Codec_WriteRegister(codec, 0x13, 0x7C);
	status = GDSP_Codec_WriteRegister(codec, 0x25, 0x80);
	status = GDSP_Codec_WriteRegister(codec, 0x28, 0x80);
	status = GDSP_Codec_WriteRegister(codec, 0x2B, 0x00);
	status = GDSP_Codec_WriteRegister(codec, 0x52, 0x80);
	status = GDSP_Codec_WriteRegister(codec, 0x56, 0x0B);
	status = GDSP_Codec_WriteRegister(codec, 0x65, 0x01);

	return status;
}

void GDSP_Codec_Reset(GDSP_Codec *codec){
	HAL_GPIO_WritePin(codec->nrstPinBank, codec->nrstPin, GPIO_PIN_RESET);
	HAL_delay(25);
	HAL_GPIO_WritePin(codec->nrstPinBank, codec->nrstPin, GPIO_PIN_SET);
	HAL_delay(25);
}
HAL_StatusTypeDef GDSP_Codec_WriteRegister(GDSP_Codec *codec, uint8_t regAddr, uint8_t val){
	HAL_StatusTypeDef status = HAL_I2C_Mem_Write(codec->I2Chandle, GDSP_CODEC_I2C_ADDR, regAddr, I2C_MEMADD_SIZE_8BIT, &val, 1, HAL_MAX_DELAY);
	return status;
}

HAL_StatusTypeDef GDSP_Codec_ReadRegister(GDSP_Codec *codec, uint8_t regAddr, uint8_t val){
	HAL_StatusTypeDef status = HAL_I2C_Mem_Read(codec->I2Chandle, GDSP_CODEC_I2C_ADDR, regAddr, I2C_MEMADD_SIZE_8BIT, &val, 1, HAL_MAX_DELAY);
	return status;
}
