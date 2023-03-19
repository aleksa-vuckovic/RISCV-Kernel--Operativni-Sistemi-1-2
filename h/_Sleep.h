//
// Created by os on 5/3/22.
//

#ifndef PROJECT_BASE__SLEEP_H
#define PROJECT_BASE__SLEEP_H
#include "_Thread.h"
#include "_slab.h"

class _Sleep {
    struct Node {
        thread_t thread;
        time_t left;
        Node* next;
        Node(thread_t thread, time_t left) : thread(thread), left(left), next(nullptr) {}

        static kmem_cache_t* cache;
        void* operator new(size_t size);
        void operator delete (void*adr);
    };
    static Node* first;
    static thread_t wake_first(); //vraca prvu nit ako je vreme za budjenje, u suprotnom vraca nullptr

public:
    static int put(thread_t thread, time_t time); //stavlja u red spavanja
    static void tick(); //otkucaj
    static int remove(thread_t thread); //brise nit iz reda spavanja
};


#endif //PROJECT_BASE__SLEEP_H
