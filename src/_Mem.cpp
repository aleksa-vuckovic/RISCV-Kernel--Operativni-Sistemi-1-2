//
// Created by os on 5/2/22.
//

#include "../h/_Mem.h"


const size_t _Mem::header_size = sizeof(size_t); //kada se alocira neki segment, prvih header_size bajtova sluzi da se
//zapamti broj alociranih blokova, zbog cega ce C API funkcija zapravo da alocira header_size bajtova vise
_Mem::Descriptor* _Mem::head;
void _Mem::init(const void* heap_start, const void* heap_end) {
    head = (_Mem::Descriptor*)heap_start;
    head->blocknum = (size_t)((char*)heap_end - (char*)heap_start) / MEM_BLOCK_SIZE; //visak memorije koji je manji od
    //MEM_BLOCK_SIZE se ignorise i ne alocira
    head->next = 0;
}

void* _Mem::alloc(size_t size) {
    _Mem::Descriptor* cur = head, *prev = 0;
    while (cur && cur->blocknum < size) prev = cur, cur = cur->next; //first-fit
    if (!cur) return 0;//nema mesta;
    _Mem::Descriptor* next;
    if (cur->blocknum == size) next = cur->next;
    else {//nealocirani deo segmenta postaje novi segment
        next = (_Mem::Descriptor*)((char*)cur + size * MEM_BLOCK_SIZE);
        next->blocknum = cur->blocknum - size;
        next->next = cur->next;
        cur->blocknum = size;
    }
    if (prev) prev->next = next;
    else head = next;
    return (void*)((char*)cur + header_size);//vraca se pokazivac koji pokazuje IZA header-a
}
void* _Mem::allocate(size_t size) {
    return _Mem::alloc(_Mem::getBlockNum(size));
}
int _Mem::free(void* addr) {
    if (!addr) return 0;
    _Mem::Descriptor* cur = (_Mem::Descriptor*)((char*)addr - header_size);
    void* end = (void*)((char*)cur + cur->blocknum * MEM_BLOCK_SIZE);
    _Mem::Descriptor* next = head, *prev = 0;
    while (next && next < cur) prev = next, next = next->next;//u lancu slobodnih segmenata, trazimo prvi segment
    //iza segemnta koji se dealocira (to ce biti next, a prev ce biti prvi prethodni)
    if (prev && (char*)prev + prev->blocknum * MEM_BLOCK_SIZE == (char*)cur) {//ako su prev i cur spojeni
        prev->blocknum +=  cur->blocknum;
        cur = prev;
    }
    else if (prev) prev->next = cur;
    else head = cur;
    if (next && (void*)next == end) {//ako su spojeni next i cur
        cur->blocknum += next->blocknum;
        cur->next = next->next;
    }
    else cur->next = next;
    return 0;
}

size_t _Mem::getBlockNum(size_t size) {
    return (size + header_size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
}

//Operatori new delete u globalnom prostoru moraju da koriste sistemski poziv. Kako ne bih bespotrebno koristio
//sistemske pozive u kernel kodu, sve klase koje koristim u kernelu imaju svoj redefinisani new i delete.