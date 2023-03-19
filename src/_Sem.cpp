//
// Created by os on 5/3/22.
//

#include "../h/_Sem.h"
#include "../h/_Thread.h"
#include "../h/_ThreadList.h"
#include "../h/_Mem.h"
#include "../h/_Scheduler.h"
#include "../h/_Sleep.h"
#include "../h/_WaitManager.h"

kmem_cache_t* _Sem::cache = nullptr;

void* _Sem::operator new(size_t) {
    if (!cache) cache = kmem_cache_create("Sem Cache", sizeof(_Sem), nullptr, nullptr);
    return kmem_cache_alloc(cache);
}
void _Sem::operator delete(void* addr) {
    kmem_cache_free(cache, addr);
}
_Sem::_Sem(unsigned v) {
    val = v;
}

int _Sem::open(sem_t* handle, unsigned init) {
    if (!handle) return -3; //mora negde da se zapamti semafor. To je odgovornost pozivaoca.
    sem_t sem = new _Sem(init);
    if (!sem) return -1; //greska u alokaciji
    *handle = sem;
    return 0;
}
int _Sem::close(sem_t handle) {
    thread_t thread;
    while (!handle->list.empty()) {
        thread = handle->list.remove();
        thread->sem_kick(handle);
    }
    delete handle;
    return 0;
}

int _Sem::wait() {
    if (_Thread::running->isInterrupted()) return 0; //prekinuta nit se automatski izbacuje
    if (val > 0) {
        val--;
        return 0;
    }
    _WaitManager* manager = new _SemManager(_Thread::running, this);
    if (!manager) return -1;
    _Thread::running->setManager(manager);
    int ret = list.add(_Thread::running);
    if (ret) { _Thread::running->removeManager(); return ret; }
    _Thread::safeDispatch();
    if (_Thread::running->kicked()) return 3;
    return 0;
}
int _Sem::signal() {
    if (!list.empty()) {
        thread_t thread = list.remove();
        return thread->sem_pass(this);
    }
    else {
        val++;
        return 0;
    }
}
int _Sem::signalEvent() {
    if (val >= 1) return 0;
    return signal();
}
int _Sem::signalAll() {
    while (!list.empty()) {
        int ret = signal();
        if (ret < 0) return ret;
    }
    return 0;
}

int _Sem::remove(thread_t thread) {
    return list.remove(thread);
}
int _Sem::wait(time_t limit) {
    if (_Thread::running->isInterrupted()) return 0; //prekinuta nit se automatski izbacuje
    if (val > 0) {
        val--;
        return 0;
    }
    if (!limit) return 1;
    _WaitManager* manager = new _SemSleepManager(_Thread::running, this);
    if (!manager) return -1;
    int ret = list.add(_Thread::running);
    if (ret) { _Thread::running->removeManager(); return ret; }
    ret = _Sleep::put(_Thread::running, limit);
    if (ret) { remove(_Thread::running);
        _Thread::running->removeManager(); return ret; }
    _Thread::safeDispatch();
    if (_Thread::running->limitReached()) return 1;
    if (_Thread::running->kicked()) return 3;
    return 0;
}
//dodatne funkcije
int _Sem::waitOR(sem_t sem1, sem_t sem2) {
    if (_Thread::running->isInterrupted()) return 0; //prekinuta nit se automatski izbacuje
    if (sem1->val > 0) { sem1->val--; return 0; }
    else if (sem2->val > 0) { sem2->val--; return 0; }
    _WaitManager* manager = new _SemORManager(_Thread::running, sem1, sem2);
    if (!manager) return -1;
    int ret = sem1->list.add(_Thread::running);
    if (ret) { _Thread::running->removeManager(); return ret;}
    ret = sem2->list.add(_Thread::running);
    if (ret) { sem1->remove(_Thread::running);
        _Thread::running->removeManager(); return ret;}
    _Thread::safeDispatch();
    if (_Thread::running->kicked()) return 3;
    return 0;
}
int _Sem::semWaitAND(sem_t sem1, sem_t sem2) {
    if (_Thread::running->isInterrupted()) return 0; //prekinuta nit se automatski izbacuje
    if (sem1->val > 0) { sem1->val--; sem1 = nullptr; }
    if (sem2->val > 0) { sem2->val--; sem2 = nullptr; }
    if (!sem1 && !sem2) return 0;
    _WaitManager* manager = new _SemANDManager(_Thread::running, sem1, sem2);
    if (!manager) return -1;
    _Thread::running->setManager(manager);
    int ret = 0;
    if (sem1) ret = sem1->list.add(_Thread::running);
    if (ret) { _Thread::running->removeManager(); return ret;}
    if (sem2) ret = sem2->list.add(_Thread::running);
    if (ret) { if (sem1) sem1->remove(_Thread::running);
        _Thread::running->removeManager(); return ret;}
    _Thread::safeDispatch();
    if (_Thread::running->kicked()) return 3;
    return 0;
}
int _Sem::semWaitORLimit(sem_t sem1, sem_t sem2, time_t limit) {
    if (_Thread::running->isInterrupted()) return 0; //prekinuta nit se automatski izbacuje
    if (sem1->val > 0) {sem1->val--; return 0;}
    else if (sem2->val > 0) { sem2->val--; return 0;}
    if (!limit) return 1;
    _WaitManager* manager = new _SemORSleepManager(_Thread::running, sem1, sem2);
    if (!manager) return -1;
    int ret = sem1->list.add(_Thread::running);
    if (ret) { _Thread::running->removeManager(); return ret;}
    ret = sem2->list.add(_Thread::running);
    if (ret) { sem1->remove(_Thread::running);
        _Thread::running->removeManager(); return ret;}
    ret = _Sleep::put(_Thread::running, limit);
    if (ret) {sem1->remove(_Thread::running); sem2->remove(_Thread::running);
        _Thread::running->removeManager(); return ret;}
    _Thread::safeDispatch();
    if (_Thread::running->limitReached()) return 1;
    if (_Thread::running->kicked()) return -3;
    return 0;
}
int _Sem::semWaitANDLimit(sem_t sem1, sem_t sem2, time_t limit) {
    if (_Thread::running->isInterrupted()) return 0; //prekinuta nit se automatski izbacuje
    if (sem1->val > 0) { sem1->val--; sem1 = nullptr; }
    if (sem2->val > 0) { sem2->val--; sem2 = nullptr; }
    if (!sem1 && !sem2) return 0;
    if (!limit) return 1;
    _WaitManager* manager = new _SemANDSleepManager(_Thread::running, sem1, sem2);
    if (!manager) return -1;
    int ret = 0;
    if (sem1) ret = sem1->list.add(_Thread::running);
    if (ret) { _Thread::running->removeManager(); return ret;}
    if (sem2) ret = sem2->list.add(_Thread::running);
    if (ret) { if (sem1) sem1->remove(_Thread::running);
        _Thread::running->removeManager(); return ret;}
    ret = _Sleep::put(_Thread::running, limit);
    if (ret) { if (sem1) sem1->remove(_Thread::running); if (sem2) sem2->remove(_Thread::running);
        _Thread::running->removeManager(); return ret;}
    _Thread::safeDispatch();
    if (_Thread::running->limitReached()) return 1;
    if (_Thread::running->kicked()) return -3;
    return 0;
}