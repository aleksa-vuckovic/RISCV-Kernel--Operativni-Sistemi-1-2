//
// Created by os on 5/3/22.
//

#include "../h/_ThreadList.h"
#include "../h/_Mem.h"

kmem_cache_t* _ThreadList::Node::cache = nullptr;
void* _ThreadList::Node::operator new(size_t size) {
    if (!cache) cache = kmem_cache_create("Thread_list::Node Cache", sizeof(_ThreadList::Node), nullptr, nullptr);
    return kmem_cache_alloc(cache);
}
void _ThreadList::Node::operator delete(void* addr) {
    kmem_cache_free(cache, addr);
}

kmem_cache_t* _ThreadList::cache = nullptr;
void* _ThreadList::operator new(size_t) {
    if (!cache) kmem_cache_create("Thread_list cache", sizeof(_ThreadList), nullptr, nullptr);
    return kmem_cache_alloc(cache);
}
void _ThreadList::operator delete(void* addr) {
    kmem_cache_free(cache, addr);
}

int _ThreadList::add(thread_t thread) {
    Node* node = new Node(thread);
    if (node == nullptr) return -1;
    node->next = nullptr;
    if (last) last->next = node;
    else first = node;
    last = node;
    return 0;
}
thread_t _ThreadList::remove() {
    if (!first) return nullptr; //nema niti u listi
    Node* node = first;
    first = first->next;
    if (!first) last = nullptr;
    thread_t ret = node->thread;
    delete node;
    return ret;
}
int _ThreadList::empty() {
    return !first;
}
int _ThreadList::remove(thread_t thread) {
    Node* prev = nullptr, *cur = first;
    while (cur && cur->thread != thread) prev = cur, cur = cur->next;
    if (!cur) return -1;
    if (prev) prev->next = cur->next;
    else first = cur->next;
    if (last == cur) last = prev;
    delete cur;
    return 0;
}