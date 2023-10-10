/*
 * File: func.c
 * Created Date: 2023-10-09 08:59:17 pm
 * Author: Mathieu Escouteloup
 * -----
 * Last Modified: 2023-10-10 12:29:16 pm
 * Modified By: Mathieu Escouteloup
 * -----
 * License: See LICENSE.md
 * Copyright (c) 2023 HerdWare
 * -----
 * Description: 
 */

#include "func.h"

void func_set_pin_c (uint32_t *p_gpio, uint8_t pin) {
  *p_gpio |= (1 << pin);
}

void func_reset_pin_c (uint32_t *p_gpio, uint8_t pin) {
  *p_gpio &= ~(1 << pin);
}

uint16_t func_mul_c (uint8_t a, uint8_t b) {
//  return (uint16_t) a * b;
  return 0;
}

uint16_t func_mulop_c (uint8_t a, uint8_t b) {
//  return (uint16_t) a * b;
  return 0;
}

uint16_t func_mulp2_c (uint8_t a, uint8_t b) {
//  uint8_t p2 = 1;
//  for (uint32_t i = 0; i < b; i = i + 1) {
//    p2 = p2 * 2;
//  }
//  return (uint16_t) a * p2;
  return 0;
}