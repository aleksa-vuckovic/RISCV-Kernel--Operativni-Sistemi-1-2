//
// Created by os on 5/3/22.
//

#ifndef PROJECT_BASE__CONSOLE_H
#define PROJECT_BASE__CONSOLE_H
#include "_Buffer.h"
#include "types.h"

//Klasa za rad sa konzolom
class _Console {
    static const unsigned INPUT_BUFFER_SIZE = 1000;
    static const unsigned OUTPUT_BUFFER_SIZE = 1000;
    static _Buffer* buffin;
    static _Buffer* buffout;
    static _Sem* ready;

public:
    static void init();//funkcija koja alocira bafere i pokrece putter nit
    static void putc(char c);//funkcija koja samo stavlja karakter u output bafer, neblokirajuca
    static char getc();//blokirajuca funkcija koja vraca karakter iz input bafera
    static void handle();//obrada prekida konzole
    static void putter();//nit koja uzima karaktere iz output bafera i salje na konzolu
    //semafor ready se signalizira kada je konzola spremna, a go kada postoji karakter u baferu
    //nit najpre ceka na go, pa na ready semaforu, i zatim salje karakter
    static _Sem* go;

    static void printString(const char* s);
    static void printNum(uint64);
};


#endif //PROJECT_BASE__CONSOLE_H
