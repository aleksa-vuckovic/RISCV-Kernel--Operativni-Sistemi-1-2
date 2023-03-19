//
// Created by os on 11/24/22.
//
#include "../lib/hw.h"
#include "../h/_slab.h"
#include "../h/_BuddyAllocator.h"
#include "../h/_PMT.h"

_PMT::_PMT(bool direct) {
    if (!direct) return;
    for (int i = 0; i < 512; i++) {
        entries[i].setDefaultLeaf(); //PRAVIM SUPERPAGE
        entries[i].setFrame(((uint64)i) << 18);
        /*_PMTE* pmt2 = (_PMTE*) buddyAlloc(0);
        entries[i].setFrame((uint64)pmt2 >> 12);
        for (int j = 0; j < 512; j++) {
            pmt2[j].setDefaultNode();
            _PMTE* pmt3 = (_PMTE*)buddyAlloc(0);
            pmt2[j].setFrame((uint64)pmt2 >> 12);
            for (int k = 0; k < 512; k++) {
                pmt3[k].setDefaultLeaf();
                uint64 frame = ((uint64)k << 18) | ((uint64)j << 9) | ((uint64)i);
                pmt3[k].setFrame(frame);
            }
        }*/
    }
}
_PMTE* _PMT::getEntry(uint64 page) {
    int k = page & 0x1ffull;
    int j = (page >> 9) & 0x1ffull;
    int i = (page >> 18) & 0x1ffull;
    if (!entries[i].isValid()) return nullptr;
    if (entries[i].isLeaf()) {
        _PMTE *pmt2 = (_PMTE *) buddyAlloc(0);
        uint64 supFrame = entries[i].getFrame();
        entries[i].setDefaultNode();
        entries[i].setFrame((uint64) pmt2 >> 12);
        for (int t = 0; t < 512; t++) {
            pmt2[t].setDefaultLeaf();
            pmt2[t].setFrame(supFrame | ((uint64) t) << 9);
        }
    }
    uint64 pmt2frame = entries[i].getFrame();
    _PMTE* pmt2 = (_PMTE*) (pmt2frame << 12);
    if (!pmt2[j].isValid()) return nullptr;
    if (pmt2[j].isLeaf()) {
        _PMTE *pmt3 = (_PMTE *) buddyAlloc(0);
        uint64 supFrame = pmt2[j].getFrame();
        pmt2[j].setDefaultNode();
        pmt2[j].setFrame((uint64) pmt3 >> 12);
        for (int t = 0; t < 512; t++) {
            pmt3[t].setDefaultLeaf();
            pmt3[t].setFrame(supFrame | (uint64)t);
        }
    }
    uint64 pmt3frame = pmt2[j].getFrame();
    _PMTE* pmt3 = (_PMTE*) (pmt3frame << 12);
    if (!pmt3[k].isValid()) return nullptr;
    return pmt3 + k;
}

void _PMT::clearU(uint64 page) {
    _PMTE* entry = getEntry(page);
    if (!entry) return;
    entry->clearU();
}
void _PMT::clearU(uint64 start, uint64 end) {
    for (uint64 cur = start; cur <= end; cur++) clearU(cur);
}

    /*
     * ////1. Obezbediti da buddy tree alocira poravnato sa blokovima (pocetna adresa mora biti poravnata sa blokom)
     * ////2. Izracunati koje stranice treba obeleziti kao kernelove
     * ////3. Buddy tree staviti u javnu sekciju kmem.
     * ////4. Dodati u kmem funkciju koja vraca poslednju zauzetu adresu za koriscenje od strane buddy tree
     *      Da bih taj visak iskoristio.
     * ////5. Alociraj PM i setuj kernelovske stranice
     * ////6. upisi u sstatus SUM = 1
     * ////7. Upisi u SATP MODE i adresu _PMT
     */