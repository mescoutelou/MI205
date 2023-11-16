/*
 * File: main.S
 * Created Date: 2023-10-09 03:34:09 pm
 * Author: Mathieu Escouteloup
 * -----
 * Last Modified: 2023-11-10 03:13:37 pm
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
  li t4, 0x87654321
  li t5, 0x1
  div t6, t4, t5    
  add t3, t4, t5  

  # main end
  lw ra, 0(sp)
  addi sp, sp, 4
  ret

## ******************************
##             DATA
## ******************************
.section .data

.section .rodata