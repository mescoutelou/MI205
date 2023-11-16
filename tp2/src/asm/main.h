/*
 * File: main.h
 * Created Date: 2023-02-26 09:08:32 pm
 * Author: Mathieu Escouteloup
 * -----
 * Last Modified: 2023-10-10 04:57:55 pm
 * Modified By: Mathieu Escouteloup
 * -----
 * License: See LICENSE.md
 * Copyright (c) 2023 HerdWare
 * -----
 * Description: 
 */


// ******************************
//            MACROS
// ******************************
#define UARCH_BYPASS_EN \
li t5, 0x00000100; \
csrs 0x7c7, t5;

#define UARCH_NLP_EN \
li t5, 0x00000e00; \
csrs 0x7c7, t5;

#define UARCH_BYPASS_DIS \
li t5, 0x00000100; \
csrc 0x7c7, t5;

#define UARCH_NLP_DIS \
li t5, 0x00000e00; \
csrc 0x7c7, t5;
