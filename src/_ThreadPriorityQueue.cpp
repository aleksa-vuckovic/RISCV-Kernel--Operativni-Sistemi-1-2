//
// Created by os on 5/30/22.
//


#include "../h/_ThreadPriorityQueue.h"
#include "../h/_Thread.h"
#include "../h/_Mem.h"

kmem_cache_t* _ThreadPriorityQueue::Node::cache = nullptr;
void* _ThreadPriorityQueue::Node::operator new(size_t size) {
    if (!cache) cache = kmem_cache_create("Thread_priority_queue::Node", sizeof(_ThreadPriorityQueue::Node), nullptr, nullptr);
    return kmem_cache_alloc(cache);
}
void _ThreadPriorityQueue::Node::operator delete(void* addr) {
    kmem_cache_free(cache, addr);
}

kmem_cache_t* _ThreadPriorityQueue::cache = nullptr;
void* _ThreadPriorityQueue::operator new(size_t size) {
    if (!cache) cache = kmem_cache_create("Thread_priority_queue Cache", sizeof(_ThreadPriorityQueue), nullptr, nullptr);
    return kmem_cache_alloc(cache);
}
void _ThreadPriorityQueue::operator delete(void* addr) {
    kmem_cache_free(cache, addr);
}

int _ThreadPriorityQueue::add(thread_t thread) {
    Node* cur = new Node(thread);
    if (!cur) return -1;
    Node* prev, *next;
    if (thread->top()) {
        prev = nullptr, next = first;
    }
    else {
        prev = last, next = nullptr;
        while (prev && prev->thread->getPriority() < thread->getPriority()) {
            next = prev; prev = prev->prev;
        }
    }
    cur->next = next;
    if (next) next->prev = cur;
    else last = cur;
    cur->prev = prev;
    if (prev) prev->next = cur;
    else first = cur;
    return 0;
}
thread_t _ThreadPriorityQueue::remove() {
    if (!first) return nullptr;
    thread_t ret = first->thread;
    Node* node = first;
    first = node->next;
    if (first) first->prev = nullptr;
    else last = nullptr;
    delete node;
    return ret;
}
int _ThreadPriorityQueue::empty() {
    return !first;
}