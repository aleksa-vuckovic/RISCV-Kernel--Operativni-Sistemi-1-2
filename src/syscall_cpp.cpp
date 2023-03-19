//
// Created by os on 5/20/22.
//
#include "../h/syscall_cpp.h"
#include "../h/syscall_c.h"

struct periodList {
    PeriodicThread* owner;
    time_t period;
    periodList* next;
    periodList(PeriodicThread* owner, time_t period) : owner(owner), period(period), next(nullptr) {}

    static periodList* head;
    static void add(PeriodicThread* owner, time_t period) {
        periodList* node = new periodList(owner, period);
        node->next = head; head = node;
    }
    static time_t findPeriod(PeriodicThread* owner) {
        periodList* cur = head;
        while (cur) {
            if (cur->owner == owner) return cur->period;
            cur = cur->next;
        }
        return 0;
    }
};
periodList* periodList::head = nullptr;

void* operator new(size_t size) {
    return mem_alloc(size);
}
void operator delete(void* ptr) {
    mem_free(ptr);
}
void* operator new[](size_t size) {
    return mem_alloc(size);
}
void operator delete[](void* adr) {
    mem_free(adr);
}


Thread::Thread(void (*body)(void*), void*arg) {
    thread_create(&myHandle, body, arg, DEFAULT_STACK_SIZE, NORM_PRIORITY, 0);
}
Thread::~Thread() {}
int Thread::start() {
    if (myHandle == 0) return -1;
    return thread_start(myHandle);
}
void Thread::dispatch() {
    thread_dispatch();
}
int Thread::sleep(time_t time) {
    return time_sleep(time);
}
Thread::Thread() {
    thread_create(&myHandle, &wrapper, (void*)this, DEFAULT_STACK_SIZE, NORM_PRIORITY, 0);
}
void Thread::wrapper(void* obj) {
    Thread* t = (Thread*)obj;
    t->run();
}

Semaphore::Semaphore(unsigned init) {
    int res = sem_open(&myHandle, init);
    if (res < 0) {
        myHandle = nullptr;
    }
}
Semaphore::~Semaphore() {
    if (myHandle) sem_close(myHandle);
}
int Semaphore::wait() {
    if (!myHandle) return -4;
    return sem_wait(myHandle);
}
int Semaphore::signal() {
    if (!myHandle) return -4;
    return sem_signal(myHandle);
}



PeriodicThread::PeriodicThread(time_t period) {
    periodList::add(this, period);
    return;
}
void PeriodicThread::run() {
    while(1) {
        periodicActivation();
        time_sleep(periodList::findPeriod(this));
    }
}

char Console::getc() {
    return ::getc();
}
void Console::putc(char c) {
    ::putc(c);
}