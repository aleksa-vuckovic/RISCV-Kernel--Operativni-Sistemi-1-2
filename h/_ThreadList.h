//
// Created by os on 5/3/22.
//

#ifndef PROJECT_BASE__THREAD_LIST_H
#define PROJECT_BASE__THREAD_LIST_H
#include "types.h"
#include "_slab.h"
class _ThreadList {
    struct Node {
        thread_t thread;
        Node* next;
        static kmem_cache_t* cache;
        void* operator new(size_t);
        void operator delete(void*);
        Node(thread_t thread) : thread(thread), next(nullptr) {}
    };
    Node* first = nullptr;
    Node* last = nullptr;
public:
    static kmem_cache_t* cache;
    void* operator new(size_t);
    void operator delete(void*);
    int add(thread_t thread);
    thread_t remove();
    int remove(thread_t);
    int empty();
};
#endif //PROJECT_BASE__THREAD_LIST_H
