#include "cpu.h"

.section .data
.section .text
## ******************************
##             BOOT
## ******************************
.globl _start
_start:
  la sp, _stack

_init:
  li t0, ADDR_PLTF_GPIOB
  li t1, 0xf7000000
  sw t1, 0(t0)
  sw zero, 4(t0)

  call main

## ******************************
##             END
## ******************************
.globl _end
_end:
  li t0, ADDR_PLTF_GPIOA
  li t1, (1 << GPIOA_BIT_END)
  sw t1, 0(t0)
  sw t1, 4(t0)
_end_loop:
  j _end_loop