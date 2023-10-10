/*
 * File: main.S
 * Created Date: 2023-10-09 03:34:09 pm
 * Author: Mathieu Escouteloup
 * -----
 * Last Modified: 2023-10-10 06:59:43 pm
 * Modified By: Mathieu Escouteloup
 * -----
 * License: See LICENSE.md
 * Copyright (c) 2023 HerdWare
 * -----
 * Description: 
 */

#include "cpu.h"
#include "main.h"

## ******************************
##             CODE
## ******************************
## ------------------------------
##             MAIN
## ------------------------------
.globl main
main:
  # main save
  addi sp, sp, -4
  sw ra, 0(sp)

  # main body

  # main end
  lw ra, 0(sp)
  addi sp, sp, 4
  ret

## ------------------------------
##     FUNCTION: gpio_pin_set
## ------------------------------
gpio_pin_set:

## ------------------------------
##    FUNCTION: gpio_pin_reset
## ------------------------------
gpio_pin_reset:

## ******************************
##             DATA
## ******************************
.section .data

.section .rodata