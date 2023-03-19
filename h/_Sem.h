//
// Created by os on 5/3/22.
//

#ifndef PROJECT_BASE__SEM_H
#define PROJECT_BASE__SEM_H
#include "_ThreadList.h"
#include "types.h"
#include "_slab.h"

class _Sem {
    _ThreadList list; //obican red
    unsigned val; //val se nikad ne spusta ispod 0

    static kmem_cache_t* cache;
public:
    void* operator new(size_t);
    void operator delete(void* addr);
    _Sem(unsigned);

    int wait();
    int signal();
    int signalEvent(); //signal koji nikad ne povecava val iznad 1
    int signalAll(); //oslobadja sve koji cekaju na semaforu
    int wait(time_t limit); //cekanje sa vremenskim ogranicenjem
    unsigned getVal() { return val; }
    int remove(thread_t);

    static int open(sem_t* handle, unsigned init);
    static int close(sem_t handle);
    //dodatne funkcije
    static int waitOR(sem_t sem1, sem_t sem2);
    static int semWaitAND(sem_t sem1, sem_t sem2);
    static int semWaitORLimit(sem_t sem1, sem_t sem2, time_t limit);
    static int semWaitANDLimit(sem_t sem1, sem_t sem2, time_t limit);
};



#endif //PROJECT_BASE__SEM_H
