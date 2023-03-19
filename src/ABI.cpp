//
// Created by os on 5/3/22.
//

#include "../h/ABI.h"

uint64 ABIcall(uint64 code, uint64 a, uint64 b, uint64 c, uint64 d, uint64 e, uint64 f, uint64 g) {
    __asm__ volatile("ecall");
    uint64 res;
    __asm__ volatile("mv %0, a0" : "=r"(res));//povratna vrednost se nalazi u a0 nakon softverskog prekida
    return res;
}

