//
// Created by os on 11/19/22.
//

#ifndef PROJECT_BASE__BUDDYALLOCATOR_H
#define PROJECT_BASE__BUDDYALLOCATOR_H
#include "../lib/hw.h"
#include "_placementNew.h"
typedef unsigned data_t;


/*BUDDY ALOKACIJA
Za vođenje evidencije o alociranim segmentima koristi se binarno stablo, ali sa dodatkom ulančavanja slobodnih čvorova na istom nivou, čime se postiže log(n) složenost i za alokaciju i za dealokaciju.
Stablo je predstavljeno u linearizovanom obliku, kao kompletno binarno stablo, pri čemu se u polju active pamti da li čvor zaista postoji u stablu ili ne, a u polju leaf da li je čvor list.
Stablo je kompletno, pa ako čvor nije list onda mora imati oba potomka (ovo sledi iz prirode algoritma alokacije).
Do potomaka i pretka se dolazi standardno, jednostavnim aritmetičkim operacijama (2i + 1, 2i + 2, (i - 1) / 2).

*/


class _BuddyNode {
    data_t data;
    //data se sastoji iz sledecih bitova:
    //15 - active -> oznacava da li je cvor deo trenutne konfiguracije stabla
    //14 - leaf -> oznacava da li je cvor list (nepodeljeni deo memorije)
    //13 - free -> oznacava da li je cvor slobodan (vazi samo ako je active = leaf = 1)
    //12..0 - next -> oznacava sledeci cvor u listi listova na istom nivou
    static const unsigned DATA_LEN;
    static const data_t M_ACTIVE;
    static const data_t M_LEAF;
    static const data_t M_FREE;
    static const data_t NEXT;
    bool isActive() { return data & M_ACTIVE; }
    bool isLeaf() { return data & M_LEAF; }
    bool isFree() { return data & M_FREE; }
    void setActive() { data |= M_ACTIVE; }
    void setLeaf() { data |= M_LEAF; }
    void setFree() { data |= M_FREE; }
    void clearActive() { data &= ~M_ACTIVE; }
    void clearLeaf() { data &= ~M_LEAF; }
    void clearFree() { data &= ~M_FREE; }
public:
    _BuddyNode() { setOut(); }
    int next();
    void setNext(int next);
    void setFresh() { setActive(); setLeaf(); setFree(); } //111
    bool isFresh() { return isActive() && isLeaf() && isFree(); }
    void setOut() { clearActive(); clearLeaf(); clearFree(); } //000
    bool isOut() { return !isActive() && !isLeaf() && !isFree(); }
    void setSplit() { setActive(); clearLeaf(); clearFree(); } //100
    bool isSplit() { return isActive() && !isLeaf() && !isFree(); }
    void setAllocated() { setActive(); setLeaf(); clearFree(); } //110
    bool isAllocated() { return isActive() && isLeaf() && !isFree(); }

    void printState();
};

class _BuddyTree {
    _BuddyNode* arr;
    int* lists;
    void* start, *end; //pocetak i kraj prostora za alociranje
    int blockNum; //ukupan broj blokova velicine blockSize od kojih se sastoji prostor za alociranje
    int pow; //broj nivoa u stablu - 1 | redundantno ali koristno
    size_t blockSize;

    static size_t extraMemoryNeeded(int blockNum, int pow) {
        //racuna koliko memorije zauzimaju dodatne strukture za datu velicinu i broj blokova (linearizovano stablo i liste)
        return (2 * blockNum - 1) * (sizeof(_BuddyNode)) + (pow + 1) * sizeof(int);
    }
    int calcLevel(size_t size); //racuna stepen bloka koji treba alocirati kako bi se dobilo size memorije
    int calcLevel(int n); //racuna stepen bloka na osnovu polozaja u linearizovanom stablu
    int left(int node) { return (2 * node + 1); }
    int right(int node) { return (2 * node + 2); }
    int parent(int node) { return (node - 1) / 2; }
    int sibling(int node) { return (node & 1) ? node + 1 : node - 1; }
    void split(int level); //uzima prvi slobodan cvor sa nivoa level, deli ga na dva, azurira stanje u stablu, kao i u listama

    void* calcAddress(int node, int level); //racuna adresu bloka koji je predstavljen cvorom node u linearizovanom stablu
    int findNode(void* ptr);
public:
    _BuddyTree(void* HEAP_END, size_t blockSize, uint64 alignMask);
    void* alloc(size_t size);
    void* allocBlock(int level); //alocira blok stepena level
    void dealloc(void* ptr);
    void print();
    void* getEnd() { return end; }
};


#endif //PROJECT_BASE__BUDDYALLOCATOR_H
