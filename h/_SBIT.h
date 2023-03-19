//
// Created by os on 5/3/22.
//

#ifndef PROJECT_BASE__SBIT_H
#define PROJECT_BASE__SBIT_H

//Funckije za manipulaciju bitova sstatus i sip registara
class _SBIT{
public:
    static void SIEenable(); //dozvoli prekid
    static void SIEdisable(); //zabrani prekid
    static void SPIEenable();
    static void SPIEdisable();
    static void SEIEenable(); //dozvoli tajmer prekid
    static void SEIEdisable(); //zabrani tajmer prekid
    static void SSPclear();
    static void SIP1clear(); //ocisti tajmer zahtev
    static void SIP9clear(); //ocisti hardver zahtev (ne koristi se)
    static void SIP1set();
    static void SIP9set();
    static void SSIEenable(); //dozvoli hardverski prekid
    static void SSIEdisable(); //zabrani hardverski prekid
    static void SUMset();
    static void SATPset(uint64);
};


#endif //PROJECT_BASE__SBIT_H
