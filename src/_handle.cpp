//
// Created by os on 5/3/22.
//

//
// Created by os on 4/15/22.
//
#include "../lib/hw.h"
//#include "../lib/console.h"
#include "../h/_Mem.h"
#include "../h/_Thread.h"
#include "../h/_Sem.h"
#include "../h/_Console.h"
#include "../h/_SBIT.h"

#define TIMER 0x8000000000000001UL
#define HARDWARE 0x8000000000000009UL
#define BADCODE 0X0000000000000002UL
#define BADREAD 0x0000000000000005UL
#define BADWRITE 0x0000000000000007UL
#define ECALL 0x0000000000000008UL
#define ECALL2 0x0000000000000009UL
#define IPF 0x0CUL
#define LPF 0x0DUL
#define SPF 0x0FUL

uint64 _handle(uint64 type, uint64 a, uint64 b, uint64 c, uint64 d, uint64 e, uint64 f, uint64 g) {
    uint64 cause;
    __asm__ volatile("csrr %0, scause" : "=r"(cause));
    if (cause == TIMER) {
        _SBIT::SIP1clear();
        _Thread::tick();
        return 0;
    }
    else if (cause == HARDWARE) {
        //console_handler();
        if (plic_claim() == 10) _Console::handle();//console_handler();//
        //ako nije 10? nepoznat prekid
        //_Thread::dispatch();//dispatch da bi putter ako je signaliziran odmah uradio svoje...
        return 0;
    }
    else if (cause == IPF || cause == LPF || cause == SPF) {
        if (cause == IPF) _Console::printString("ERROR: Instruction Page Fault!!\n");
        else if (cause == LPF) _Console::printString("ERROR: Load Page Fault!!\n");
        else _Console::printString("ERROR: Store Page Fault!!\n");
        _Thread::abort();
    }
    else if (cause != ECALL && cause != ECALL2) {
        //NEPREDVIDJENI PREKIDI
        return 0;
    }
    //softverski prekid
    __asm__ volatile("csrc sip, 0x2");
    switch(type) {
        case 0x01:
            return (uint64)_Mem::allocate((size_t)a);
        case 0x02:
            return _Mem::free((void*)a);

        case 0x11:
            return _Thread::create((thread_t *) a, (void* (*)(void *)) b, (void *) c, (void *) d, (size_t) e,
                                       _Thread::normalize((int) f), (int) (g));
        case 0x12:
            return _Thread::create((thread_t *) a, (void (*)(void *)) b, (void *) c, (void *) d, (size_t) e,
                                   _Thread::normalize((int) f), (int) (g));
        case 0x13:
            return _Thread::exit((void*)a);
        case 0x14:
            _Thread::dispatch();
            return 0;
        case 0x15:
            return ((thread_t)a)->start();
        case 0x16:
            return ((thread_t)a)->join((void**)b);
        case 0x17:
            return ((thread_t) a)->joinLimit((void **) b, (time_t) c);
        case 0x18:
            return ((thread_t)a)->interrupt();
        case 0x19:
            return _Thread::running->interrupted();

        case 0x21:
            return _Sem::open((sem_t*)a, (unsigned)b);
        case 0x22:
            return _Sem::close((sem_t)a);
        case 0x23:
            return ((sem_t)a)->wait();
        case 0x24:
            return ((sem_t)a)->signal();
        case 0x25:
            return _Sem::waitOR((sem_t) a, (sem_t) b);
        case 0x26:
            return _Sem::semWaitAND((sem_t) a, (sem_t) b);
        case 0x27:
            return ((sem_t)a)->wait((time_t)b);
        case 0x28:
            return _Sem::semWaitORLimit((sem_t) a, (sem_t) b, (time_t) c);
        case 0x29:
            return _Sem::semWaitANDLimit((sem_t) a, (sem_t) b, (time_t) c);

        case 0x31:
            return _Thread::timeSleep((time_t) a);
        case 0x32:
            return _Thread::getTime();

        case 0x41:
            return _Console::getc();
        case 0x42:
            _Console::putc((char)a);
            return 0;
        default:
            break;
    }
    return 0;
}
