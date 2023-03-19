//
// Created by os on 5/3/22.
//

#include "../h/_Buffer.h"
#include "../h/_Mem.h"
#include "../h/_Sem.h"

kmem_cache_t* _Buffer::cache = nullptr;

void* _Buffer::operator new(size_t) {
    if (!cache) cache = kmem_cache_create("Buffer Cache", sizeof(_Buffer), nullptr, nullptr);
    return kmem_cache_alloc(cache);
}
void _Buffer::operator delete(void* addr) {
    kmem_cache_free(cache, addr);
}

_Buffer::_Buffer(unsigned sz) {
    front = rear = 0;
    size = sz;
    arr = (char*) _Mem::alloc(_Mem::getBlockNum(sizeof(char) * size));
    _Sem::open(&semin, size);
    _Sem::open(&semout, 0);
}

void _Buffer::put(char c) {
    semin->wait();
    arr[rear] = c;
    rear = (rear + 1) % size;
    semout->signal();
}
char _Buffer::get() {
    semout->wait();
    char ret = arr[front];
    front = (front + 1) % size;
    semin->signal();
    return ret;
}

int _Buffer::full() {
    return semin->getVal() <= 0;
}
int _Buffer::empty() {
    return semout->getVal() <= 0;
}

