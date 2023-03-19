//
// Created by os on 5/2/22.
//

#ifndef PROJECT_BASE__MEM_H
#define PROJECT_BASE__MEM_H
#include "../lib/hw.h"

//Klasa za alokaciju memorije
class _Mem {
private:
    struct Descriptor{
        size_t blocknum;
        Descriptor* next;
    };
    static Descriptor* head; //prvi slobodan blok
public:
    static void init(const void* heap_start, const void* heap_end); //inicijalizuje ulancanu listu blokova
    static void* alloc(size_t blocknum); //alocira ceo broj blokova
    static void* allocate(size_t size); //alocira cao broj blokova potreban za size bajtova
    static int free(void* addr);
    static const size_t header_size; //velicina header-a koji mora da ostane na pocetku bloka kada se alocira. tu se pamti velicina alociranog bloka
    //pokazivac koji se vraca iz alokatora pokazuje na lokaciju posle tog header-a
    static size_t getBlockNum(size_t size); //vraca broj blokova koje treba alocirati za size bajtova
};

#endif //PROJECT_BASE__MEM_H
