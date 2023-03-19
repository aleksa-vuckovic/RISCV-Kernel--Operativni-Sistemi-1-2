//
// Created by os on 5/20/22.
//
#ifndef _syscall_cpp
#define _syscall_cpp

#include "syscall_c.h"

void* operator new(size_t);
void operator delete(void*);
void* operator new[](size_t);
void operator delete[](void*);

class Thread {
public:
    Thread(void (*body)(void*), void*arg);
    virtual ~Thread();

    int start();

    static void dispatch();
    static int sleep(time_t);

protected:
    Thread();
    virtual void run() {}

private:
    thread_t myHandle = 0;
    static void wrapper(void* obj);
};

class Semaphore {
public:
    Semaphore(unsigned init = 1);
    virtual ~Semaphore();

    int wait();
    int signal();

private:
    sem_t myHandle;
};

class PeriodicThread : public Thread {
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {}
    void run() override;
};

class Console {
public:
    static char getc();
    static void putc(char);
};
#endif