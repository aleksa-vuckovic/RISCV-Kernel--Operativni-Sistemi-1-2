//
// Created by os on 5/3/22.
//

#include "../h/_Console.h"
#include "../h/_Buffer.h"
#include "../h/_Mem.h"
#include "../h/_Thread.h"
#include "../h/_Sem.h"
#include "../h/_SBIT.h"

_Buffer* _Console::buffin;
_Buffer* _Console::buffout;
_Sem* _Console::ready;
_Sem* _Console::go;
void _Console::init() {
    buffin = new _Buffer(INPUT_BUFFER_SIZE);
    buffout = new _Buffer(OUTPUT_BUFFER_SIZE);
    ready = new _Sem(0);
    go = new _Sem(0);
    _Thread::create(nullptr, &putter, _Thread::TOP_PRIORITY, _Thread::SET_START);
}

void _Console::putc(char c) {
    buffout->put(c);
    go->signal();
    _Thread::dispatch();
}
char _Console::getc() {
    return buffin->get();
}

void _Console::handle() {
    char status;
    while (1) {
        if (buffin->full()) break;//kod punog bafera se samo odlaze ucitavanje
        status = *(char*)CONSOLE_STATUS;
        if (!(status & CONSOLE_RX_STATUS_BIT)) break;
        char c = *(char*)CONSOLE_RX_DATA;
        buffin->put(c);
    }
    status = *(char*)CONSOLE_STATUS;
    if (status & CONSOLE_TX_STATUS_BIT) {
        ready->signalEvent();
    }
    plic_complete(10);
    return;
}

void _Console::putter() {
    _SBIT::SIEdisable();
    while(true) {
        go->wait();
        if (buffout->empty()) break;
        char c = buffout->get();

        while (true) {
            ready->wait();
            char status = *(char*)CONSOLE_STATUS;
            if (status & CONSOLE_TX_STATUS_BIT) {
                *(char *) CONSOLE_TX_DATA = c;
                break;
            }
            //moze da se desi da do budjenja niti putter periferija iz nekog razloga resetuje ready bit
        }
        //dajem malo vremena hardveru da ponovo generise prekid
        /*_SBIT::SSIEdisable();
        _SBIT::SIEenable();
        for (int i = 0; i < 10; i++);
        _SBIT::SIEdisable();
        _SBIT::SSIEenable();*/
        //
    }
}

void _Console::printString(const char* s) {
    while (*s) {
        buffout->put(*s++);
        go->signal();
    }
    _Thread::dispatch();
}
void _Console::printNum(uint64 x) {
    if (x == 0) {putc('0'); return; }
    char buff[30];
    int i = 0;
    while (x) {
        buff[i++] = '0' + x % 10;
        x /= 10;
    }
    char buff2[31]; int j = 0;
    while (i--) {
        buff2[j++] = buff[i];
    }
    buff2[j] = '\0';
    printString(buff2);
};
