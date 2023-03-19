//
// Created by os on 11/19/22.
//

#include "../h/_SlabAllocator.h"
#include "../h/_slab.h"
#include "../h/_Console.h"

const int kmem_cache_t::MAX = 20; //maksimalan broj objektnih keseva
const int kmem_cache_t::buffPowMin = 5;
const int kmem_cache_t::buffPowMax = 17;
_BuddyTree* kmem_cache_t::buddy;
_Slab::_Slab(size_t slotSize, size_t slabSize) {
    this->slotSize = slotSize; this->slabSize = slabSize;
}
void _Slab::init(int num) {
    char* ptr = (char*)free;
    for (int i = 0; i < num - 1; i++) {
        *(void**)ptr = ptr + slotSize;
        ptr += slotSize;
    }
    *(void**)ptr = nullptr;
}
void* _Slab::alloc() {
    if (!free) return nullptr;
    void* ret = free;
    free = *(void**)free;
    allocated++;
    return ret;
}
void _Slab::dealloc(void* ptr) {
    *(void**)ptr = free;
    free = ptr;
    allocated--;
}
bool _Slab::isEmpty() {
    return allocated == 0;
}
bool _Slab::isFull() {
    return free == nullptr;
}
_ObjSlab::_ObjSlab(size_t slotSize, size_t slabSize) : _Slab(slotSize, slabSize) {
    prev = next = nullptr;
    allocated = 0;
    free = (char*)this + sizeof(_Slab);
    //Ulancavanje slotova
    init((slabSize - sizeof(_ObjSlab)) / slotSize);
}
bool _ObjSlab::contains(void* adr) {
    return adr > this && adr < (char*)this + slabSize;
}
_BuffSlab::_BuffSlab(size_t slotSize, size_t slabSize, void* slabSpace) : _Slab(slotSize, slabSize) {
    slab = slabSpace;
    prev = next = nullptr;
    allocated = 0;
    free = slab;
    this->slotSize = slotSize;
    init(slabSize / slotSize);
}
bool _BuffSlab::contains(void* adr) {
    return adr >= slab && adr < (char*)slab + slabSize;
}


kmem_cache_t* kmem_cache_t::cacheMem; //memorija u koju se smestaju kesevi
kmem_cache_t* kmem_cache_t::freeHead; //lista slobodnih
kmem_cache_t* kmem_cache_t::allocatedHead; //lista zauzetih
_BuffSlab* kmem_cache_t::buffSlabHead;
_BuffSlab* kmem_cache_t::formatBuffSlabSpace(_BuffSlab* start, void* end) {
    _BuffSlab* prev, *cur;
    prev = nullptr; cur = start;
    while (cur + 1 <= end) {
        new (cur) _BuffSlab();
        if (prev) prev->next = cur;
        prev = cur; cur++;
    }
    if (!prev) return nullptr;
    prev->next = nullptr;
    return prev;
}
void kmem_cache_t::expandBuffSlabSpace() {
    _BuffSlab* newspace = (_BuffSlab*)buddy->allocBlock(0);
    if (!newspace) return;
    _BuffSlab* last = formatBuffSlabSpace(newspace, (char*)newspace + BLOCK_SIZE);
    last->next = buffSlabHead; buffSlabHead = newspace;
}
_BuffSlab* kmem_cache_t::allocBuffSlab() {
    if (!buffSlabHead) expandBuffSlabSpace();
    if (!buffSlabHead) return nullptr;
    _BuffSlab* ret = buffSlabHead;
    buffSlabHead = (_BuffSlab*)(ret->next);
    return ret;
}
void kmem_cache_t::deallocBuffSlab(_BuffSlab* slab) {
    slab->next = buffSlabHead;
    buffSlabHead = slab;
}
void kmem_cache_t::kmem_init(_BuddyTree* bud) {
    buddy = bud;
    int buffCnt = buffPowMax - buffPowMin + 1;
    //size_t cacheMemSize = (MAX + buffCnt) * sizeof(kmem_cache_t);
    cacheMem = (kmem_cache_t*)buddy->allocBlock(0);
    //inicijalizacija objektnih keseva
    kmem_cache_t* prev = nullptr, * cur = nullptr;
    for (int i = 0; i < MAX; i++) {
        prev = cur;
        cur = cacheMem + buffCnt + i;
        new (cacheMem + buffCnt + i) kmem_cache_t();
        cur->prev = prev; cur->next = nullptr;
        if (prev) prev->next = cur;
    }
    freeHead = cacheMem + buffCnt;
    allocatedHead = nullptr;
    //inicjalizacija bafer slabova
    buffSlabHead = (_BuffSlab*)(cacheMem + buffCnt + MAX);
    if (!formatBuffSlabSpace(buffSlabHead, (char*)cacheMem + BLOCK_SIZE)) {
        buffSlabHead = nullptr; expandBuffSlabSpace();
    }
    //inicijalizacija bafer keseva
    size_t buffSize = 1 << buffPowMin;
    for (int i = 0; i < buffCnt; i++) {
        new (cacheMem + i) kmem_cache_t("buffCache", buffSize, nullptr, nullptr, true);
        buffSize <<= 1;
    }
}
kmem_cache_t* kmem_cache_t::allocKct() {
    if (!freeHead) return nullptr;
    //izbacuje se iz liste slobodnih
    kmem_cache_t* ret = freeHead;
    freeHead = freeHead->next;
    if (freeHead) freeHead->prev = nullptr;
    //ubacuje se u listu alociranih
    ret->next = allocatedHead; ret->prev = nullptr;
    if (allocatedHead) allocatedHead->prev = ret;
    return ret;
}
void kmem_cache_t::deallocKct(kmem_cache_t* kct) {
    //izbacuje se iz liste alociranih
    if (kct->prev) kct->prev->next = kct->next;
    else allocatedHead = kct->next;
    if (kct->next) kct->next->prev = kct->prev;
    //ubacuje se u listu slobodnih
    kct->next = freeHead;
    kct->prev = nullptr;
    if (freeHead) freeHead->prev = kct;
    freeHead = kct;
}
kmem_cache_t* kmem_cache_t::getBuffCache(size_t size) {
    //dohvata BUFFCACHE za bafer prosledjene velicine
    int pow = 0; size_t buffSize = 1;
    while (buffSize < size) pow++, buffSize <<= 1;
    if (pow < buffPowMin) pow = buffPowMin;
    if (pow > buffPowMax) pow = buffPowMax;
    return cacheMem + pow - buffPowMin;
}
void kmem_cache_t::move(_Slab** listFrom, _Slab** listTo, _Slab* slab) {
    //izbacivanje
    _Slab* prev = slab->prev;
    if (prev) prev->next = slab->next;
    else *listFrom = slab->next;
    _Slab* next = slab->next;
    if (next) next->prev = prev;
    //ubacivanje
    slab->next = *listTo; slab->prev = nullptr;
    if (*listTo) (*listTo)->prev = slab;
    *listTo = slab;
}
bool kmem_cache_t::deallocBuff(void* buff) {
    for (int i = 0; i < buffPowMax - buffPowMin + 1; i++) {
        if (cacheMem[i].dealloc(buff)) return true;
    }
    return false;
}

void kmem_cache_t::calcSlabSize() {
    slabSize = BLOCK_SIZE;
    if (buffCache) {
        while (slotSize > slabSize) slabSize <<= 1;
    }
    else {
        size_t headerSize = sizeof(_ObjSlab);
        if (slotSize <= BLOCK_SIZE / 8) return;
        else while (slotSize > slabSize - headerSize || (slabSize - headerSize) % slotSize > slotSize / 8) slabSize <<= 1;
    }
}
kmem_cache_t::kmem_cache_t(const char* name, size_t size, void (*ctor)(void*), void (*dtor)(void*), bool buffCache) {
    this->name = name;
    this->slotSize = size;
    if (buffCache) {
        //ovde bi trebalo proveriti da li je size stepen dvojke
    }
    this->ctor = ctor;
    this->dtor = dtor;
    this->buffCache = buffCache;
    full = free = partial = nullptr;
    err = nullptr;
    calcSlabSize();
}
kmem_cache_t::kmem_cache_t() {
    full = free = partial = nullptr;
    ctor = dtor = nullptr;
    name = nullptr;
    next = prev = nullptr;
    slotSize = slabSize = 0;
    buffCache = false;
    err = nullptr;
}
void kmem_cache_t::deallocSlabs(_Slab* head) {
    _Slab* cur = head;
    while (cur) {
        _Slab* tmp = cur;
        cur = cur->next;
        if (buffCache) {
            _BuffSlab* t = (_BuffSlab*)tmp;
            buddy->dealloc(t->getSlab());
            deallocBuffSlab(t);
        }
        else buddy->dealloc(tmp);
    }
}
kmem_cache_t::~kmem_cache_t() {
    //dealokacija i reset podataka
    deallocSlabs(full); deallocSlabs(partial); deallocSlabs(free);
    full = partial = free = nullptr;
    ctor = dtor = nullptr;
    name = nullptr;
    slotSize = slabSize = 0;
    buffCache = false;
    err = nullptr;
}
_Slab* kmem_cache_t::allocSlab() {
    if (buffCache) {
        _BuffSlab* slab = allocBuffSlab();
        if (!slab) return nullptr;
        void* slabSpace = buddy->alloc(slabSize);
        if (!slabSpace) { deallocBuffSlab(slab); return nullptr; }
        new (slab) _BuffSlab(slotSize, slabSize, slabSpace);
        return slab;
    }
    else {
        _ObjSlab* ret = (_ObjSlab*)buddy->alloc(slabSize);
        if (!ret) return nullptr;
        new (ret) _ObjSlab(slotSize, slabSize);
        return ret;
    }

}
void* kmem_cache_t::alloc() {
    void* ret;
    if (partial) {
        ret = partial->alloc();
        if (partial->isFull()) move(&partial, &full, partial); //prebacivanje iz partial u full listu
    }
    else {
        if (!free) free = allocSlab();
        if (!free) {
            err = "ALLOCATION_ERROR: COULD NOT ALLOCATE SLAB";
            return nullptr;
        }
        ret = free->alloc();
        if (free->isFull()) move(&free, &full, free); //prebacivanje iz free u full listu
        else move(&free, &partial, free); //prebacivanje iz free u partial listu
    }
    if (ctor) ctor(ret);
    return ret;
}
/*bool kmem_cache_t::contains(_Slab* slab, void* obj) {
    return obj > slab && obj < (char*)slab + slabSize;
}*/
bool kmem_cache_t::dealloc(void* obj) {
    if (dtor) dtor(obj);
    _Slab* cur = full;
    while (cur) {
        if (cur->contains(obj)) {
            cur->dealloc(obj);
            if (cur->isEmpty()) move(&full, &free, cur); //prebacivanje iz full u free
            else move(&full, &partial, cur); //prebacivanje iz full u partial
            return true;
        }
        cur = cur->next;
    }
    cur = partial;
    while (cur) {
        if (cur->contains(obj)) {
            cur->dealloc(obj);
            if (cur->isEmpty()) move(&partial, &free, cur); //prebacivanje iz full u free
            return true;
        }
        cur = cur->next;
    }
    if (!buffCache) err = "DEALLOCATION_ERROR: SLOT ADDRESS NOT FOUND IN CACHE.";
    return false;
}
int kmem_cache_t::shrink() {
    if (free) {
        deallocSlabs(free);
        free = nullptr;
        return 1;
    }
    return 0;
}
int kmem_cache_t::slabNum() {
    int res = 0;
    _Slab* arrs[] = {free, partial, full};
    for (int i = 0; i < 3; i++) {
        _Slab* cur = arrs[i];
        while (cur) { res++; cur = cur->next; }
    }
    return res;
}
int kmem_cache_t::slabCapacity() {
    size_t actualSize = buffCache ? slabSize : slabSize - sizeof(_ObjSlab);
    return actualSize / slotSize;
}
int kmem_cache_t::allocatedSlotNum() {
    int res = 0;
    _Slab* arrs[] = {free, partial, full};
    for (int i = 1; i < 3; i++) {
        _Slab* cur = arrs[i];
        while (cur) { res += cur->getAllocatedCount(); cur = cur->next; }
    }
    return res;
}
void kmem_cache_t::printInfo() {
    int slabCnt = slabNum();
    int slabCap = slabCapacity();
    _Console::printString("Cache: ");
    _Console::printString(name);
    _Console::putc('\n');

    _Console::printString("Slot size: ");
    _Console::printNum(slotSize);
    _Console::putc('\n');

    _Console::printString("Slab size: ");
    _Console::printNum(slabSize);
    _Console::putc('\n');

    _Console::printString("Slots per slab: ");
    _Console::printNum(slabCap);
    _Console::putc('\n');

    _Console::printString("Number of slabs: ");
    _Console::printNum(slabCnt);
    _Console::putc('\n');

    _Console::printString("Allocated objects / Total slots: ");
    _Console::printNum(allocatedSlotNum());
    _Console::printString(" / ");
    _Console::printNum(slabCnt * slabCap);
    _Console::putc('\n');

    _Console::putc('\n');
}
int kmem_cache_t::printError() {
    if (err) {
        _Console::printString(err);
        _Console::putc('\n');
        err = nullptr;
        return 1;
    }
    else {
        _Console::printString("NO ERROR!\n");
        return 0;
    }
}

void kmem_cache_t::kmem_init(void* space, int block_num) {
    void* heap_end = (char*)space + block_num * BLOCK_SIZE;
    _BuddyTree* buddy = new(space) _BuddyTree(heap_end, BLOCK_SIZE, PAGEOFFMASK);
    kmem_init(buddy);
}
kmem_cache_t* kmem_cache_t::kmem_cache_create(const char* name, size_t size, void (*ctor)(void*), void (*dtor)(void*)) {
    kmem_cache_t* ret = allocKct();
    new (ret) kmem_cache_t(name, size, ctor, dtor, false);
    return ret;
}
int kmem_cache_t::kmem_cache_shrink(kmem_cache_t* cachep) {
    return cachep->shrink();
}
void* kmem_cache_t::kmem_cache_alloc(kmem_cache_t* cachep) {
    return cachep->alloc();
}
void kmem_cache_t::kmem_cache_free(kmem_cache_t* cachep, void* objp) {
    cachep->dealloc(objp);
}
void* kmem_cache_t::kmalloc(size_t size) {
    kmem_cache_t* cache = getBuffCache(size);
    return cache->alloc();
}
void kmem_cache_t::kfree(const void* objp) {
    void* obj = (void*) objp;
    deallocBuff(obj);
}
void kmem_cache_t::kmem_cache_destroy(kmem_cache_t* cachep) {
    cachep->~kmem_cache_t();
    deallocKct(cachep);
}
void kmem_cache_t::kmem_cache_info(kmem_cache_t* cachep) {
    cachep->printInfo();
}
int kmem_cache_t::kmem_cache_error(kmem_cache_t* cachep) {
    return cachep->printError();
}
void kmem_cache_t::kmem_cache_info_buff(int pow) {
    if (pow < buffPowMin || pow > buffPowMax) return;
    int i = pow - buffPowMin;
    cacheMem[i].printInfo();
}

void* kmem_cache_t::buddyAlloc(int pow) {
    return buddy->allocBlock(pow);
}
void kmem_cache_t::buddyFree(void* ptr) {
    buddy->dealloc(ptr);
}
void* kmem_cache_t::getBuddyEnd() {
    return buddy->getEnd();
}