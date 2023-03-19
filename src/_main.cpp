//
// Created by os on 5/3/22.
//
#include "../lib/hw.h"
#include "../h/_Thread.h"
#include "../h/_Mem.h"
#include "../h/_SBIT.h"
#include "../h/_Console.h"
#include "../h/_PMT.h"
#include "../h/_placementNew.h"
extern "C" void trap();
void userMain();

const uint64 FIRSTKERNELPAGE = 0x80000ul;
const uint64 LASTKERNELPAGE = 0x80010ul;
_PMT* pmt;


int main() {
    _SBIT::SIEdisable();
    _SBIT::SSIEenable();
    _SBIT::SEIEenable();//dozvoljavam prekide (kada je SIE ukljucen)
    __asm__ volatile("csrw stvec, %0" : : "r"(&trap));//inicijalizujem pokazivac na prekidnu rutinu

    //RASPODELA MEMORIJE
    uint64 kernelHeapStart = (uint64)HEAP_START_ADDR;
    kernelHeapStart = (kernelHeapStart + PAGEOFFMASK) & ~PAGEOFFMASK;
    size_t memSize = (uint64)HEAP_END_ADDR - kernelHeapStart;
    kmem_init((void*)kernelHeapStart, memSize / 8 / BLOCK_SIZE);
    uint64 userHeapStart = (uint64)getBuddyEnd();
    userHeapStart = (userHeapStart + PAGEOFFMASK) & ~PAGEOFFMASK; //prva sledeca stranica
    _Mem::init((void*)userHeapStart, HEAP_END_ADDR);
    //KRAJ RASPODELE MEMORIJE

    //INICIJALIZACIJA PMT
    pmt = (_PMT*)buddyAlloc(0);
    new(pmt) _PMT(true);
    pmt->clearU(((kernelHeapStart) >> PAGEOFF), (((uint64)userHeapStart) >> PAGEOFF) - 1);
    pmt->clearU(FIRSTKERNELPAGE, LASTKERNELPAGE);
    uint64 satp = 0x8000000000000000ul | (((uint64)pmt) >> PAGEOFF);
    _SBIT::SUMset();
    _SBIT::SATPset(satp);
    //KRAJ INICIJALIZACIJE PMT

    _Thread::main = new _Thread();
    _Thread::running = _Thread::main;
    _Console::init();

    //Kreiranje prve korisnicke niti
    _Thread::create(nullptr, &userMain, DEFAULT_STACK_SIZE, _Thread::NORM_PRIORITY, _Thread::SET_START);
    _Thread::thread_dispatch();
/*
    //Kreiranje prve korisnicke nit varijanta 2 - nit ima sistemske privilegije
    _Thread::create(nullptr, &userMain, _Thread::NORM_PRIORITY, _Thread::SET_START);
    _Thread::thread_dispatch();
*/

    return 0;
}