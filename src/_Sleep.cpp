//
// Created by os on 5/3/22.
//

#include "../h/_Sleep.h"
#include "../h/_Mem.h"
#include "../h/_Scheduler.h"

kmem_cache_t* _Sleep::Node::cache = nullptr;

void *_Sleep::Node::operator new(size_t size) {
    if (!cache) cache = kmem_cache_create("Sleep::Node Cache", sizeof(_Sleep::Node), nullptr, nullptr);
    return kmem_cache_alloc(cache);
}
void _Sleep::Node::operator delete(void *adr) {
    kmem_cache_free(cache, adr);
}

_Sleep::Node* _Sleep::first = nullptr;

thread_t _Sleep::wake_first() {
    thread_t ret;
    if (first && first->left == 0) {
        ret = first->thread;
        Node* old = first;
        first = first->next;
        delete old;
        return ret;
    }
    return nullptr;//nema vise niti za budjenje
}
int _Sleep::put(thread_t thread, time_t time) {
    Node* cur = first, *prev = 0;
    time_t left = time;
    while (cur && left >= cur->left) {
        left -= cur->left;
        prev = cur, cur = cur->next;
    }
    Node* newnode = new Node(thread, left);
    if (!newnode) return -1; //greska u alokaciji
    newnode->next = cur;
    if (prev) prev->next = newnode;
    else first = newnode;
    if (cur) cur->left -= left;
    return 0;
}
void _Sleep::tick() {
    if (first) first->left--;
    thread_t woken;
    while ((woken = wake_first())) {
        woken->sleepPass();
    }
}

int _Sleep::remove(thread_t thread) {
    Node* prev = nullptr, *cur = first;
    while (cur && cur->thread != thread) prev = cur, cur = cur->next;
    if (!cur) return -1;
    if (prev) prev->next = cur->next;
    else first = cur->next;
    Node* ret = cur; cur = cur->next;
    if (cur) cur->left += ret->left;
    delete ret;
    return 0;
}