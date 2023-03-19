//
// Created by os on 5/3/22.
//

#ifndef PROJECT_BASE__BUFFER_H
#define PROJECT_BASE__BUFFER_H
#include "types.h"
#include "_slab.h"

//Standardni bafer sa semaforima
class _Buffer {
    char* arr;
    unsigned front, rear, size;
    sem_t semin, semout;

    static kmem_cache_t* cache;
public:
    void* operator new(size_t);
    void operator delete(void*);
    _Buffer(unsigned size);
    void put(char c);
    char get();
    int full();
    int empty();
};


#endif //PROJECT_BASE__BUFFER_H
