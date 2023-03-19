//
// Created by os on 11/19/22.
//

#include "../h/_slab.h"
#include "../h/_SlabAllocator.h"

void kmem_init(void *space, int block_num) {
    kmem_cache_t::kmem_init(space, block_num);
}
kmem_cache_t *kmem_cache_create(const char *name, size_t size, void (*ctor)(void *), void (*dtor)(void *)) {
    return kmem_cache_t::kmem_cache_create(name, size, ctor, dtor);
}
int kmem_cache_shrink(kmem_cache_t *cachep) {
    return kmem_cache_t::kmem_cache_shrink(cachep);
}
void* kmem_cache_alloc(kmem_cache_t *cachep) {
    return kmem_cache_t::kmem_cache_alloc(cachep);
}
void kmem_cache_free(kmem_cache_t *cachep, void *objp) {
    kmem_cache_t::kmem_cache_free(cachep, objp);
}
void* kmalloc(size_t size) {
    return kmem_cache_t::kmalloc(size);
}
void kfree(const void *objp) {
    kmem_cache_t::kfree(objp);
}
void kmem_cache_destroy(kmem_cache_t *cachep) {
    kmem_cache_t::kmem_cache_destroy(cachep);
}
void kmem_cache_info(kmem_cache_t *cachep) {
    kmem_cache_t::kmem_cache_info(cachep);
}
int kmem_cache_error(kmem_cache_t *cachep) {
    return kmem_cache_t::kmem_cache_error(cachep);
}

void kmem_cache_info_buff(int pow) {
    kmem_cache_t::kmem_cache_info_buff(pow);
}
void* buddyAlloc(int pow) {
    return kmem_cache_t::buddyAlloc(pow);
}
void buddyFree(void* ptr) {
    return kmem_cache_t::buddyFree(ptr);
}
void* getBuddyEnd() {
    return kmem_cache_t::getBuddyEnd();
}

const int PAGEOFFMASK = kmem_cache_t::PAGEOFFMASK;
const int PAGEOFF = kmem_cache_t::PAGEOFF;