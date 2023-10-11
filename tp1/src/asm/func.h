/*
 * File: func.h
 * Created Date: 2023-10-10 07:29:56 am
 * Author: Mathieu Escouteloup
 * -----
 * Last Modified: 2023-10-11 08:00:34 am
 * Modified By: Mathieu Escouteloup
 * -----
 * License: See LICENSE.md
 * Copyright (c) 2023 HerdWare
 * -----
 * Description: 
 */


#include <stdint.h>

void func_set_pin_c (int *p_gpio, char pin);
void func_reset_pin_c (int *p_gpio, char pin);
short func_mul_c (char a, char b);
short func_mulop_c (char a, char b);
short func_mulp2_c (char a, char b);
