//
// Created by os on 5/2/22.
//

#include "../h/_Thread.h"
#include "../h/_Mem.h"
#include "../h/_Scheduler.h"
#include "../h/_Sleep.h"
#include "../h/_SBIT.h"
#include "../h/_Sem.h"
#include "../h/_Console.h"
#include "../h/_WaitManager.h"

thread_t _Thread::running = nullptr;//globalna promenljiva koja ukazuje ne pcb trenutno izvrsavane niti
int _Thread::total = 0;//ukupan broj startovanih niti (ukljucujuci uspavane)
int _Thread::user = 0;//ukupan broj nedemonskih niti
time_t _Thread::time = DEFAULT_TIME_SLICE;
time_t _Thread::clock = 0;
const size_t _Thread::DEFAULT_SSP_SIZE = 4096*2;
thread_t _Thread::main;

kmem_cache_t* _Thread::cache = nullptr;

void* _Thread::operator new(size_t) {
    if (!cache) cache = kmem_cache_create("Thread Cache", sizeof(_Thread), nullptr, nullptr);
    return kmem_cache_alloc(cache);
}
void _Thread::operator delete(void* addr) {
    kmem_cache_free(cache, addr);
}
_Thread::~_Thread() {}
_Thread::_Thread(void* (*startRoutine)(void*), void* arg, void* stackSpace, size_t stackSize, int priority, bool daemon, bool isVoid) {
    flags = 0u;
    if (daemon) flags |= 32u;
    this->priority = priority;
    parent = running;
    waitManager = nullptr;
    if (isVoid) returnValue = nullptr;
    else returnValue = (void*)1;

    sp = stackSpace;
    sptop = (void *) ((char *) sp - stackSize);
    sp = (void *) ((uint64) sp - (uint64) sp % 16);
    ssptop = _Mem::allocate((_Thread::DEFAULT_SSP_SIZE));
    ssp = (char*)ssptop + _Thread::DEFAULT_SSP_SIZE;
    ssp = (void*)((uint64)ssp - (uint64)ssp%16); //sp i ssp moraju biti deljivi sa 16
    //stavljam na sstek start_routine i arg kako be starter mogao da zapocne nit
    __asm__ volatile("mv t5, %0": : "r"(ssp));
    __asm__ volatile("sd %0, -8(t5)" : : "r"(startRoutine));
    __asm__ volatile("sd %0, -16(t5)" : : "r"(arg));
    pc = (uint64) &starter;
}
_Thread::_Thread(void* (*startRoutine)(void*), void* arg, size_t stackSize, int priority, bool daemon, bool isVoid) :
_Thread(startRoutine, arg, (char*)_Mem::allocate(stackSize) + stackSize, stackSize, priority, daemon, isVoid) {}
_Thread::_Thread(void* (*startRoutine)(void*), void* arg, int priority, bool daemon, bool isVoid) :
_Thread(startRoutine, arg, nullptr, 0, priority, daemon, isVoid) { pc = (uint64) &sstarter; }
_Thread::_Thread() {
    sp = ssp = sptop = ssptop = nullptr;
    flags =  4;
    parent = nullptr; waitManager =  nullptr; priority = TOP_PRIORITY; returnValue = nullptr; pc = 0;
}

/*Za kreiranje niti postoje 3*3 opcije:
 * vrsta rutine (void* void*, void void*, void void)
 * alociranje steka : vec alociran, nije alociran i prosledjena je velicina, ne treba alocirati (sistemske niti)
*/
int _Thread::create(thread_t* handle, void* (*startRoutine)(void*), void* arg, void* stackSpace, size_t stackSize, int priority, int options) {
    thread_t t = new _Thread(startRoutine, arg, stackSpace, stackSize, priority, (options & SET_DAEMON) || running->daemon());
    if (!t || !t->ssptop) return -1; //greska u alokaciji
    if (handle) *handle = t;
    if (options & SET_START) return t->start();
    return 0;
}
int _Thread::create(thread_t* handle, void* (*startRoutine)(void*), void* arg, size_t stackSize, int priority, int options) {
    thread_t t = new _Thread(startRoutine, arg, stackSize, priority, (options & SET_DAEMON) || running->daemon());
    if (!t || !t->ssptop) return -1; //greska u alokaciji
    if (handle) *handle = t;
    if (options & SET_START) return t->start();
    return 0;
}
int _Thread::create(thread_t* handle, void* (*startRoutine)(void*), void* arg, int priority, int options) {
    thread_t t = new _Thread(startRoutine, arg, priority, (options & SET_DAEMON) || running->daemon());
    if (!t || !t->ssptop) return -1; //greska u alokaciji
    if (handle) *handle = t;
    if (options & SET_START) return t->start();
    return 0;
}
int _Thread::create(thread_t* handle, void (*startRoutine)(void*), void* arg, void* stackSpace, size_t stackSize, int priority, int options) {
    thread_t t = new _Thread((void*(*)(void*))startRoutine, arg, stackSpace, stackSize, priority, (options & SET_DAEMON) || running->daemon(), true);
    if (!t) return -1; //greska u alokaciji
    if (handle) *handle = t;
    if (options & SET_START) return t->start();
    return 0;
}
int _Thread::create(thread_t* handle, void (*startRoutine)(void*), void* arg, size_t stackSize, int priority, int options) {
    thread_t t = new _Thread((void*(*)(void*))startRoutine, arg, stackSize, priority, (options & SET_DAEMON) || running->daemon(), true);
    if (!t) return -1; //greska u alokaciji
    if (handle) *handle = t;
    if (options & SET_START) return t->start();
    return 0;
}
int _Thread::create(thread_t* handle, void (*startRoutine)(void*), void* arg, int priority, int options) {
    thread_t t = new _Thread((void*(*)(void*))startRoutine, arg, priority, (options & SET_DAEMON) || running->daemon(), true);
    if (!t || !t->ssptop) return -1; //greska u alokaciji
    if (handle) *handle = t;
    if (options & SET_START) return t->start();
    return 0;
}
int _Thread::create(thread_t* handle, void (*startRoutine)(void), void* stackSpace, size_t stackSize, int priority, int options) {
    return create(handle, (void(*)(void*))startRoutine, nullptr, stackSpace, stackSize, priority, options);
}
int _Thread::create(thread_t* handle, void (*startRoutine)(void), size_t stackSize, int priority, int options) {
    return create(handle, (void(*)(void*))startRoutine, nullptr, stackSize, priority, options);
}
int _Thread::create(thread_t* handle, void (*startRoutine)(void), int priority, int options) {
    return create(handle, (void(*)(void*))startRoutine, nullptr, priority, options);
}
//cekanje da se probudi neka nit (ili da prodje buffer semafor)
//pritom moraju da budu dozvoljeni prekidi tajmera da bi tajmer mogao da radi svoj posao
//kao i hardvera u slucaju da sve niti npr cekaju da ucitaju karakter
void _Thread::busyWait() {
    time = 1000;
    _SBIT::SIEenable();//dozvola prekida (tajmera)
    while (_Scheduler::empty()) time = 1000;
    _SBIT::SIEdisable();
    time = DEFAULT_TIME_SLICE;
}

int _Thread::exit(void* ret) {
    _SBIT::SIEdisable();
    //ako jos ima niti, ali su sve uspavane, cekam da se neka probudi (ne racunajuci putter)
    total--; if (!running->daemon()) user--;
    if (running->returnValue) running->returnValue = ret;
    running->finish();
    if (running->parentWaiting()) running->parent->joinPass();//_Scheduler::put(running->parent);
    if (user == 1) _Console::go->signal(); //signalizira se putter niti da su sve korisnicke niti zavrsile

    if (user > 0) busyWait();
    //delete running;
    _Mem::free(running->sptop); _Mem::free(running->ssptop);
    //Odavde nadalje se i dalje koristi prostor koji je bio namenjen dealociranom ssp-u. To je u redu jer:
    //1) sigurno do prelaska na kontekst sledece niti nece se alocirati taj, ni bilo koji drugi deo memorije
    //2) sigurno se nece menjati header oslobodjenog bloka - to bi se desilo samo u slucaju prekoracenja steka
    if (!user) {
        running = main;
    }
    else _Scheduler::get(); //siguran sam da ce moci jer readyFirst != 0
    __asm__ volatile("mv ra, %0" : : "r"(running->pc));
    __asm__ volatile("ret");
    return 0;
}
void _Thread::abort() {
    running = main;
    __asm__ volatile("mv ra, %0" : : "r"(running->pc));
    __asm__ volatile("ret");
}

void _Thread::tick() {
    _Sleep::tick();
    time--;
    clock++;
    if (time <= 0) {
        _Scheduler::put(running); //stavljam _running u ready
        time = DEFAULT_TIME_SLICE;
        thread_dispatch();
    }
}

int _Thread::timeSleep(time_t time) {
    if (_Thread::running->isInterrupted()) return 2; //prekinuta nit se automatski izbacuje
    int ret;
    //za time = 0 radi se samo dispatch
    if (!time) {
        ret = _Scheduler::put(running);
        if (ret) return ret;
    }
    else {
        ret = _Sleep::put(running, time);
        if (ret) return ret;
        _WaitManager* manager = new _SleepManager(_Thread::running);
        if (!manager) return -1;
        _Thread::running->setManager(manager);
    }
    safeDispatch();
    return 0;
}

void _Thread::dispatch() {
    _Scheduler::put(running);
    time = DEFAULT_TIME_SLICE;
    thread_dispatch();
}

int _Thread::kicked() {
    if (flags & 1ul) {
        flags = flags & ~1ul;
        return 1;
    }
    return 0;
}
void _Thread::kick() {
    flags = flags | 1ul;
}
int _Thread::top() {
    return priority == TOP_PRIORITY;
}
int _Thread::start() {
    if (started()) return 1;
    flags = flags | 4u;
    int ret = _Scheduler::put(this);
    if (ret < 0) {
        return ret; //greska u put (alokacija)
    }
    total++;
    if (!daemon()) user++;
    return 0;
}
int _Thread::started() {
    return (flags & 4u) != 0;
}
void _Thread::finish() {
    flags = flags | 8u;
}
int _Thread::finished() {
    return (flags & 8u) != 0u;
}
void _Thread::parentWait() {
    flags = flags | 16u;
}
int _Thread::parentWaiting() {
    return (flags & 16u) != 0u;
}
void _Thread::parentWaitStop() {
    flags &= ~(16u);
}
int _Thread::daemon() {
    return (flags & 32u) != 0u;
}
void _Thread::limitReach() {
    flags = flags | 64u;
}
int _Thread::limitReached() {
    int ret = flags & 64u ? 1 : 0;
    flags = flags & ~64u;
    return ret;
}
int _Thread::interrupt() {
    if (finished()) return 0;
    flags |= 128u;
    if (waitManager) {
        int ret = waitManager->interrupt();
        return check_wait(ret);
    }
    return 0;
}
int _Thread::interrupted() {
    int ret = flags & 128u ? 1 : 0;
    flags &= ~128u;
    return ret;
}
int _Thread::isInterrupted() {
    return (flags & 128u ? 1 : 0);
}
int _Thread::join(void** pret) {
    if (running != parent) return -1; //join moze da pozove samo roditeljska nit
    if (running->isInterrupted()) return 0; //prekinuta nit se automatski izbacuje
    if (!finished()) {
        _WaitManager* manager = new _JoinManager(_Thread::running, this);
        if (!manager) return -1;
        parentWait();
        safeDispatch();
    }
    if (pret) *pret = returnValue;
    return 0;
}
int _Thread::joinLimit(void** pret, time_t limit) {
    if (running != parent) return -1;
    if (_Thread::running->isInterrupted()) return 0; //prekinuta nit se automatski izbacuje
    if (!finished()) {
        if (!limit) return 1;
        _WaitManager* manager = new _JoinSleepManager(_Thread::running, this);
        if (!manager) return -1;
        int ret = _Sleep::put(running, limit);
        if (ret) { running->removeManager(); return ret;}
        parentWait();
        safeDispatch();
    }
    if (running->limitReached()) return 1;
    if (pret) *pret = returnValue;
    return 0;
}
void _Thread::safeDispatch() {
    busyWait();
    time = DEFAULT_TIME_SLICE;
    thread_dispatch();
}

int _Thread::normalize(int priority) {
    if (priority > 100) priority = 100;
    else if (priority < -100) priority = -100;
    return priority;
}

void _Thread::setManager(_WaitManager* manager) {
    waitManager = manager;
}
int _Thread::sem_pass(sem_t s) {
    int ret = waitManager->sem_pass(s);
    return check_wait(ret);
}
int _Thread::sleepPass() {
    int ret = waitManager->sleep_pass();
    return check_wait(ret);
}
int _Thread::joinPass() {
    int ret = waitManager->join_pass();
    return check_wait(ret);
}
int _Thread::sem_kick(sem_t sem) {
    kick();
    int ret = waitManager->sem_pass(sem);
    return check_wait(ret);
}
int _Thread::check_wait(int ret) {
    if (!ret) return 0;
    removeManager();
    return _Scheduler::put(this);
}
void _Thread::removeManager() {
    if (waitManager) {
        delete waitManager;
        waitManager = nullptr;
    }
}