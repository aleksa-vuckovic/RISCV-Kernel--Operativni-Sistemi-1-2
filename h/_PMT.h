//
// Created by os on 11/26/22.
//

#ifndef BASE_PREDAJA__PMT_H
#define BASE_PREDAJA__PMT_H

class _PMTE {
    uint64 val;
    /*
     * 63 - 54 : ? = 0
     * 53 - 10 : Frame
     * 9 - 8 : RSW = 0
     * 7 : D = 1
     * 6 : A = 1 //Postavlja A i D na 1 jer implementacija ni mogla da izazove page fault u suprotnom
     * 5 : G = 1 //Global, jer ce biti samo jedna _PMT
     * 4 : U
     * 3 : X = 1
     * 2 : W = 1;
     * 1 : R = 1
     * 0 : V
     */
public:
    _PMTE() { val = 0; }
    void setV() { val |= 1; }
    bool isValid() { return val & 1;}
    void clearV() { val &= ~(uint64)1; }
    void setRWX () { val |= 14; }
    bool isLeaf() { return (val >> 1) & 7ull; }
    void setAD() { val |= 192; }
    void setFrame(uint64 frame) {
        val &= 0xFFC00000000003FFULL;
        val |= frame << 10;
    }
    uint64 getFrame() {
        return (val >> 10) & 0xFFFFFFFFFFFULL;
    }
    void setG() { val |= 32; }
    void setDefaultLeaf() {
        val = 0;
        setV(); setRWX(); setAD(); setG(); setU();
    }
    void setDefaultNode() {
        val = 0;
        setV();
    }
    void setU() { val |= 16; }
    void clearU() { val &= ~(uint64)16; }
};

class _PMT {
    _PMTE entries[512];

public:
    _PMT() {} //prazna tabela preslikavanja
    _PMT(bool direct);
    _PMTE* getEntry(uint64 page);

    void clearU(uint64 page);
    void clearU(uint64 start, uint64 end);
};

#endif //BASE_PREDAJA__PMT_H
