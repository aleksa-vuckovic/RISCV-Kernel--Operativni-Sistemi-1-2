//
// Created by os on 11/19/22.
//

#ifndef PROJECT_BASE__SLABALLOCATOR_H
#define PROJECT_BASE__SLABALLOCATOR_H
#include "_BuddyAllocator.h"

class _Slab {
protected:
    void* free;
    int allocated;
    size_t slotSize, slabSize;
    _Slab(size_t slotSize, size_t slabSize);
    _Slab() {}
    void init(int num);
public:
    _Slab* next, *prev;
    virtual void* alloc();
    virtual void dealloc(void*);
    virtual bool isEmpty();
    virtual bool isFull();
    virtual int getAllocatedCount() { return allocated; }
    virtual bool contains(void* adr) { return false; }//ova bi trebalo da bude pure virtual ali ne moze*
};

class _ObjSlab : public _Slab {
public:
    _ObjSlab(size_t slotSize, size_t slabSize);
    _ObjSlab() {}
    virtual bool contains(void* adr);
};

class _BuffSlab : public _Slab {
    void* slab;
public:
    _BuffSlab(size_t slotSize, size_t slabSize, void* slabSpace);
    _BuffSlab() {}
    virtual bool contains(void* adr);
    void* getSlab() { return slab; }
};

//objekat koji predstavlja jedan kes za objekte
class kmem_cache_t {
    static const int MAX; //maksimalan broj objektnih keseva
    //naime, potrebno je alocirati deo dodeljenog prostora i za smestanja kontrolnih struktura - liste keseva
    //sto se tice broja keseva, posto se za svaku vrstu objekta pravi samo jedan kes, unapred ce biti poznato koliko keseva treba da postoji
    //pa nema potrebe omogucavati prosirenje ovog prostora
    //kesevi za bafere nisu ulancani, oni se nalaze na samom pocetku ovog prostora, dok su ostali smesteni iza i ulancani su u listu slobodnih i listu koriscenih
    static const int buffPowMin;
    static const int buffPowMax;

    static kmem_cache_t* cacheMem; //memorija u koju se smestaju kesevi
    static kmem_cache_t* freeHead; //lista slobodnih
    static kmem_cache_t* allocatedHead; //lista zauzetih
    static kmem_cache_t* allocKct();
    static void deallocKct(kmem_cache_t*);
    static _BuffSlab* buffSlabHead;
    static _BuffSlab* formatBuffSlabSpace(_BuffSlab*, void* end);
    static void expandBuffSlabSpace();
    static _BuffSlab* allocBuffSlab();
    static void deallocBuffSlab(_BuffSlab*);
    static void kmem_init(_BuddyTree* bud);
    static _BuddyTree* buddy;

    static kmem_cache_t* getBuffCache(size_t size);
    static void move(_Slab** listFrom, _Slab** listTo, _Slab* slab);
    static bool deallocBuff(void* buff);

    _Slab* full, * free, *partial;
    const char* name;
    size_t slotSize, slabSize;
    void (*ctor)(void*);
    void (*dtor)(void*);
    bool buffCache;
    kmem_cache_t *next, *prev;
    const char* err = nullptr;

    /*RAZLIKE IZMEDJU BUFFCACHE I OBJCACHE
    * BUFFCACHE niju u listi, alocira se  i konstruise pri inicijalizaciji, dok se BUFFCACHE alocira iz liste slobodnih
    */
    kmem_cache_t(kmem_cache_t&&) = delete;
    void calcSlabSize();
    kmem_cache_t(const char* name, size_t size, void (*ctor)(void*), void (*dtor)(void*), bool buffCache);
    kmem_cache_t();
    void deallocSlabs(_Slab* head);
    ~kmem_cache_t();
    _Slab* allocSlab();
    void* alloc();
    bool dealloc(void* obj);
    int shrink();

    int slabNum();
    int slabCapacity();
    int allocatedSlotNum();
    void printInfo();
    int printError();

public:
    static void kmem_init(void* space, int block_num);
    static kmem_cache_t* kmem_cache_create(const char* name, size_t size, void (*ctor)(void*), void (*dtor)(void*));
    static int kmem_cache_shrink(kmem_cache_t* cachep);
    static void* kmem_cache_alloc(kmem_cache_t* cachep);
    static void kmem_cache_free(kmem_cache_t* cachep, void* objp);
    static  void* kmalloc(size_t size);
    static void kfree(const void* objp);
    static void kmem_cache_destroy(kmem_cache_t* cachep);
    static void kmem_cache_info(kmem_cache_t* cachep);
    static int kmem_cache_error(kmem_cache_t* cachep);
    static void kmem_cache_info_buff(int pow);

    static void* buddyAlloc(int pow);
    static void buddyFree(void* ptr);
    static void* getBuddyEnd();
    static const uint64 PAGEOFFMASK = 0xFFFull;
    static const int PAGEOFF = 12;
};

#endif //PROJECT_BASE__SLABALLOCATOR_H
