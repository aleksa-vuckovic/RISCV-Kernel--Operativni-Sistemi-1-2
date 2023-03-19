//
// Created by os on 11/19/22.
//

#include "../h/_BuddyAllocator.h"
#include "../h/_Console.h"

const unsigned _BuddyNode::DATA_LEN = sizeof(data_t) * 8;
const data_t _BuddyNode::M_ACTIVE = 1 << (DATA_LEN - 1); //1000..0
const data_t _BuddyNode::M_LEAF = 1 << (DATA_LEN - 2); //0100..0
const data_t _BuddyNode::M_FREE = 1 << (DATA_LEN - 3); //0010..0
const data_t _BuddyNode::NEXT = ~(M_ACTIVE | M_LEAF | M_FREE); //00011..1
int _BuddyNode::next() {
    data_t ret = data & NEXT;
    if (ret == NEXT) {
        return -1;
    }
    else return ret;
}
void _BuddyNode::setNext(int next) {
    data_t tmp;
    if (next == -1) tmp = NEXT;
    else tmp = (data_t)next & NEXT; //ovde treba paziti da svi indeksi mogu da stanu u tip data_t bez najvisa 3 bita, i u skladu sa tim treba odabrati tip data_t (unsigned short/int/long)
    data &= ~NEXT;
    data |= tmp;
}
void _BuddyNode::printState() {
    if (isSplit())  _Console::putc('+');
    else if (isAllocated()) _Console::putc('#');
    else if (isFresh()) _Console::putc('o');
    else _Console::putc(' ');
}

int _BuddyTree::calcLevel(size_t size) {
    //racuna stepen bloka koji treba alocirati kako bi se dobilo size memorije
    int t = (size + blockSize - 1) / blockSize; //broj osnovnih blokova koji pokriva datu velicinu
    int pow = 0;
    int num = 1;
    while (num < t) num <<= 1, pow++;
    return pow;
}
int _BuddyTree::calcLevel(int n) {
    //racuna stepen bloka na osnovu polozaja u linearizovanom stablu
    int d = 0;
    int tmp = (n + 1) >> 1;
    while (tmp) d++, tmp >>= 1;
    return pow - d;
}
void _BuddyTree::split(int level) {
    //uzima prvi slobodan cvor sa nivoa level, deli ga na dva, azurira stanje u stablu, kao i u listama
    if (level == 0 || lists[level] == -1) return; //greska
    int node = lists[level];
    arr[node].setSplit();
    lists[level] = arr[node].next(); //izbacuje se iz liste
    int l = left(node), r = right(node);
    arr[l].setFresh(); arr[r].setFresh(); //dodati su u stablo kao slobodni listovi
    arr[r].setNext(lists[level - 1]);
    arr[l].setNext(r);
    lists[level - 1] = l; //dodati su u listu
}
void* _BuddyTree::calcAddress(int node, int level) {
    //racuna adresu bloka koji je predstavljen cvorom node u linearizovanom stablu
    int p = pow - level;
    //racunam 2^p - 1 sto je broj cvorova na prethodnim nivoima, kao i indeks prvog cvor na tom nivou
    int low = (1 << p) - 1;
    //racunam velicinu bloka na nivou level kao blockSize * 2^level
    size_t size = blockSize << level;
    int ord = node - low;
    return ((char*)start + ord * size);
}
int _BuddyTree::findNode(void* ptr) {
    size_t span = (char*)ptr - (char*)start;
    int ord = span / blockSize;
    if (ord * blockSize != span) return -1; //ako adresa nije poravnata na ceo broj blokova
    //Pronalazimo cvor koji odgovara datoj adresu u najnizem nivou
    int node = (1 << pow) - 1 + ord;
    while (1) {
        if (!arr[node].isOut()) return node;
        if (!(node & 1)) return -1; //ako je desni potomak, onda dalji preci nemaju istu adresu, a takodje je tu ukljucen i slucaj korena
        node = parent(node);
    }
    return -1;
}
//Potrebno je u datom prostoru alocirati niz od 2*blockNum buddyNode-ova, kao i log(blockNum) + 1 pokazivac u vidu int-a
_BuddyTree::_BuddyTree(void* heapEnd, size_t blockSize, uint64 alignMask) {
    /*
     * Prostor od this do HEAP_END je podeljene na sledeci nacin:
     * this - struktura _BuddyTree
     * nakon toga sledi niz cvorova (2 * blockNum - 1 cvorova)
     * nakon toga sledi niz od (pow + 1) pokazivaca (tj. integera koji predstavljaju indekse u stablu)
     * nakon toga se preskace do sledeceg pocetka nove stranica kako bi blokovi bili pravnati (na osnovu alignMask)
     * odatle (start) pa sve do end je memorija za alokaciju
     * nealociran deo (od end do heapEnd) moze se koristiti za druge stvari (van buddyTree-a)
     */
    this->blockSize = blockSize;
    //racunanje maksimalnog broj blokova
    blockNum = 1, pow = 0;
    while (true) {
        size_t extra = extraMemoryNeeded(blockNum, pow);
        uint64 heapStart = (uint64)((char*)(this + 1) + extra);
        heapStart = (heapStart + alignMask) & ~alignMask;
        if (heapStart + (uint64)blockNum * blockSize > (uint64)heapEnd) break;
        blockNum *= 2; pow++;
    }
    blockNum /= 2, pow--;
    arr = (_BuddyNode*)(this + 1);
    lists = (int*)(arr + 2 * blockNum - 1);
    start = (void*)(((uint64)(lists + pow + 1) + alignMask) & ~alignMask);
    end = (char*)start + blockNum * blockSize;
    //inizijalizacija stabla i lista
    for (int i = 0; i < 2 * blockNum - 1; i++) new (arr + i) _BuddyNode();
    arr[0].setFresh(); arr[0].setNext(-1);
    for (int i = 0; i < pow; i++) lists[i] = -1;
    lists[pow] = 0;
}
void* _BuddyTree::alloc(size_t size) {
    //alocira blok na osnovu zadate velicine
    int level = calcLevel(size);
    return allocBlock(level);
}
void* _BuddyTree::allocBlock(int level) {
    //alocira blok stepena level
    int curlvl = level;
    while (curlvl <= pow && lists[curlvl] == -1) {
        curlvl++;
    }
    if (curlvl > pow) return nullptr;

    while (curlvl > level) {
        split(curlvl);
        curlvl--;
    }

    int ret = lists[level];
    lists[level] = arr[ret].next();
    arr[ret].setNext(-1);
    arr[ret].setAllocated();
    return calcAddress(ret, level);
}
void _BuddyTree::dealloc(void* ptr) {
    int node = findNode(ptr);
    if (node == -1) return; //greska, losa adresa
    while (node && arr[sibling(node)].isFresh()) { //spajaju se i deaktiviraju svi cvorovi kod kojih je to moguce
        arr[node].setOut();
        arr[sibling(node)].setOut();
        node = parent(node);
    }
    arr[node].setFresh();
    int lvl = calcLevel(node);
    arr[node].setNext(lists[lvl]);
    lists[lvl] = node;
}
void _BuddyTree::print() {
    int t = 0;
    int m = 1;
    for (int i = 0; i <= pow; i++) {
        for (int j = t; j < t + m; j++) {
            arr[j].printState();
            if (j != t + m - 1) _Console::printString(" | ");
        }
        _Console::putc('\n');
        t = (t + 1) * 2 - 1;
        m *= 2;
    }
}

