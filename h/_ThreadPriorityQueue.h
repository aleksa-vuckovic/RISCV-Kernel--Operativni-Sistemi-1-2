//
// Created by os on 5/30/22.
//

#ifndef PROJECT_BASE__THREAD_PRIORITY_QUEUE_H
#define PROJECT_BASE__THREAD_PRIORITY_QUEUE_H
#include "types.h"
#include "_slab.h"
class _ThreadPriorityQueue {
    struct Node {
        thread_t thread;
        Node* next;
        Node* prev;
        Node(thread_t thread) : thread(thread), next(0), prev(0) {}
        static kmem_cache_t* cache;
        void* operator new(size_t);
        void operator delete(void*);
    };
    Node* first, *last;
public:
    _ThreadPriorityQueue() : first(nullptr), last(nullptr) {}
    static kmem_cache_t* cache;
    void* operator new(size_t);
    void operator delete(void*);
    int add(thread_t);
    thread_t remove();
    int empty();
};
#endif //PROJECT_BASE__THREAD_PRIORITY_QUEUE_H
