//
// Created by os on 5/2/22.
//

#ifndef PROJECT_BASE__THREAD_H
#define PROJECT_BASE__THREAD_H
#include "../lib/hw.h"
#include "types.h"
#include "_slab.h"
class _WaitManager;

class _Thread{
    void* sp, *ssp, *sptop, *ssptop;//sptop i ssptop pokazuju na adresu vrha (tj. dna) steka, tj. na adresu
    //vracenu iz mem_alloc
    uint64 pc;//ovde se cuva pc kad se menja kontekst
    unsigned flags; //7 - interrupted, 6 - limitReached, 5 - daemon, 4 - parentjoin, 3 - finished, 2 - started, 1 - toppriority, 0 - kicked
    int priority;
    thread_t parent;
    void* returnValue;
    _WaitManager* waitManager;

    static kmem_cache_t* cache;
public:
    void* operator new(size_t);
    void operator delete(void* addr);
    _Thread(void* (*startRoutine)(void*), void* arg, void* sp, size_t stackSize, int priority = NORM_PRIORITY, bool daemon = false, bool isVoid = false);
    _Thread(void* (*startRoutine)(void*), void* arg, size_t stackSize, int priority = NORM_PRIORITY, bool daemon = false, bool isVoid = false);
    _Thread(void* (*startRoutine)(void*), void* arg, int priority = NORM_PRIORITY, bool daemon = false, bool isVoid = false);
    _Thread();
    ~_Thread();

    //OSNOVNE METODE
    static int create(thread_t* handle, void* (*startRoutine)(void*), void* arg, void* stackSpace, size_t stackSize, int priority, int options);
    static int create(thread_t* handle, void* (*startRoutine)(void*), void* arg, size_t stackSize, int priority, int options);
    static int create(thread_t* handle, void* (*startRoutine)(void*), void* arg, int priority, int options);
    static int create(thread_t* handle, void (*startRoutine)(void*), void* arg, void* stack_space, size_t stackSize, int priority, int options);
    static int create(thread_t* handle, void (*startRoutine)(void*), void* arg, size_t stackSize, int priority, int options);
    static int create(thread_t* handle, void (*startRoutine)(void*), void* arg, int priority, int options);
    static int create(thread_t* handle, void (*startRoutine)(void), void* stack_space, size_t stackSize, int priority, int options);
    static int create(thread_t* handle, void (*startRoutine)(void), size_t stackSize, int priority, int options);
    static int create(thread_t* handle, void (*startRoutine)(void), int priority, int options);

    static int exit(void* ret);
    static void abort();
    static void dispatch();
    static void safeDispatch();
    static int timeSleep(time_t time);
    int getPriority() { return priority; }

    //funkcije za postavljanje i dohvatanje flag bitova
    int kicked();
    void kick();
    int started();
    int start();
    void finish();
    int finished();
    int daemon();
    void parentWait();
    int parentWaiting();
    void parentWaitStop();
    void limitReach();
    int limitReached();
    int interrupt();
    int interrupted();
    int isInterrupted();
    int top();

    //FUNKCIJE ZA IMPLEMENTACIJU CEKANJA
    int join(void** pret);
    int joinLimit(void** pret, time_t limit);
    //dodela wait manager-a
    void setManager(_WaitManager*);
    //obavestavanje o izlasku iz nekog reda cekanja
    int sem_pass(sem_t);
    int sleepPass();
    int joinPass();
    int sem_kick(sem_t);
    int check_wait(int);
    void removeManager();

    static time_t getTime() { return clock; }
    static void tick();
    static int normalize(int priority);
    static thread_t running;
    static thread_t main;

private:
    static void thread_dispatch();
    static void busyWait();

    static time_t time;//preostalo vreme na procesoru
    static time_t clock;//ukupno proteklo vreme
    static int total; //ukupan broj niti
    static int user; //ukupan broj nedemonskih niti

    static void starter();
    static void sstarter();

    friend int main();


public:
    static const size_t DEFAULT_SSP_SIZE;
    static const int TOP_PRIORITY = 1000;
    static const int MAX_PRIORITY = 100;
    static const int MIN_PRIORITY = -100;
    static const int NORM_PRIORITY = 0;

    static const int SET_DAEMON = 2;
    static const int SET_START = 1;
};
#endif //PROJECT_BASE__THREAD_H
