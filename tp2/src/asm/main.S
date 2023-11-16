/*
 * File: main.S
 * Created Date: 2023-10-09 03:34:09 pm
 * Author: Mathieu Escouteloup
 * -----
 * Last Modified: 2023-11-16 07:07:54 pm
 * Modified By: Mathieu Escouteloup
 * -----
 * License: See LICENSE.md
 * Copyright (c) 2023 HerdWare
 * -----
 * Description: 
 */

#include "../cpu.h"
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
##     FUNCTION: func_loop
## ------------------------------
func_loop:

## ******************************
##             DATA
## ******************************
.section .data

.section .rodata