//
// Created by os on 6/1/22.
//
#include "../h/_WaitManager.h"
#include "../h/_Sem.h"
#include "../h/_Sleep.h"

_WaitManager::_WaitManager(thread_t my_thread) : myThread(my_thread) {}
int _WaitManager::sem_pass(sem_t) { return 0;}
int _WaitManager::sleep_pass() { return 0;}
int _WaitManager::join_pass() { return 0;}
int _WaitManager::interrupt() { return 1;}
_WaitManager::~_WaitManager() {}

_SemManager::_SemManager(thread_t my_thread, sem_t sem) : _WaitManager(my_thread), sem(sem) {}
kmem_cache_t* _SemManager::cache = nullptr;
int _SemManager::sem_pass(sem_t sem) {
    this->sem = nullptr;
    return 1;
}
int _SemManager::interrupt() {
    sem->remove(myThread);
    sem = nullptr;
    return 1;
}

_SleepManager::_SleepManager(thread_t my_thread) : _WaitManager(my_thread) {}
kmem_cache_t* _SleepManager::cache = nullptr;
int _SleepManager::sleep_pass() {
    return 1;
}
int _SleepManager::interrupt() {
    _Sleep::remove(myThread);
    return 1;
}

_JoinManager::_JoinManager(thread_t my_thread, thread_t join_thread) : _WaitManager(my_thread), join_thread(join_thread) {}
kmem_cache_t* _JoinManager::cache = nullptr;
int _JoinManager::join_pass() {
    join_thread = nullptr;
    return 1;
}
int _JoinManager::interrupt() {
    join_thread->parentWaitStop();
    join_thread = nullptr;
    return 1;
}

_SemORManager::_SemORManager(thread_t my_thread, sem_t sem1, sem_t sem2) : _WaitManager(my_thread), sem1(sem1), sem2(sem2) {}
kmem_cache_t* _SemORManager::cache = nullptr;
int _SemORManager::sem_pass(sem_t sem) {
    if (sem == sem1) sem2->remove(myThread);
    else sem1->remove(myThread);
    sem1 = sem2 = nullptr;
    return 1;
}
int _SemORManager::interrupt() {
    if (sem1) sem1->remove(myThread);
    if (sem2) sem2->remove(myThread);
    sem1 = sem2 = nullptr;
    return 1;
}

_SemANDManager::_SemANDManager(thread_t my_thread, sem_t sem1, sem_t sem2) : _WaitManager(my_thread), sem1(sem1), sem2(sem2) {}
kmem_cache_t* _SemANDManager::cache = nullptr;
int _SemANDManager::sem_pass(sem_t sem) {
    if (sem == sem1) sem1 = nullptr;
    else sem2 = nullptr;
    if (!sem1 && !sem2) return 1;
    else return 0;
}
int _SemANDManager::interrupt() {
    if (sem1) sem1->remove(myThread);
    if (sem2) sem2->remove(myThread);
    sem1 = sem2 = nullptr;
    return 1;
}

_SemSleepManager::_SemSleepManager(thread_t my_thread, sem_t sem) : _WaitManager(my_thread), sem(sem) {}
kmem_cache_t* _SemSleepManager::cache = nullptr;
int _SemSleepManager::sem_pass(sem_t sem) {
    this->sem = nullptr;
    _Sleep::remove(myThread);
    return 1;
}
int _SemSleepManager::sleep_pass() {
    sem->remove(myThread);
    sem = nullptr;
    myThread->limitReach();
    return 1;
}
int _SemSleepManager::interrupt() {
    sem->remove(myThread);
    sem = nullptr;
    _Sleep::remove(myThread);
    return 1;
}

_JoinSleepManager::_JoinSleepManager(thread_t my_thread, thread_t join_thread) : _WaitManager(my_thread), join_thread(join_thread) {}
kmem_cache_t* _JoinSleepManager::cache = nullptr;
int _JoinSleepManager::join_pass() {
    join_thread = nullptr;
    _Sleep::remove(myThread);
    return 1;
}
int _JoinSleepManager::sleep_pass() {
    join_thread->parentWaitStop();
    join_thread = nullptr;
    myThread->limitReach();
    return 1;
}
int _JoinSleepManager::interrupt() {
    join_thread->parentWaitStop();
    join_thread = nullptr;
    _Sleep::remove(myThread);
    return 1;
}

_SemORSleepManager::_SemORSleepManager(thread_t my_thread, sem_t sem1, sem_t sem2) : _WaitManager(my_thread), sem1(sem1), sem2(sem2) {}
kmem_cache_t* _SemORSleepManager::cache = nullptr;
int _SemORSleepManager::sem_pass(sem_t sem) {
    if (sem == sem1) sem2->remove(myThread);
    else sem1->remove(myThread);
    sem1 = sem2 = nullptr;
    _Sleep::remove(myThread);
    return 1;
}
int _SemORSleepManager::sleep_pass() {
    sem1->remove(myThread);
    sem2->remove(myThread);
    sem1 = sem2 = nullptr;
    myThread->limitReach();
    return 1;
}
int _SemORSleepManager::interrupt() {
    sem1->remove(myThread);
    sem2->remove(myThread);
    sem1 = sem2 = nullptr;
    _Sleep::remove(myThread);
    return 1;
}

_SemANDSleepManager::_SemANDSleepManager(thread_t my_thread, sem_t sem1, sem_t sem2) : _WaitManager(my_thread), sem1(sem1), sem2(sem2) {}
kmem_cache_t* _SemANDSleepManager::cache = nullptr;
int _SemANDSleepManager::sem_pass(sem_t sem) {
    if (sem == sem1) sem1 = nullptr;
    else sem2 = nullptr;
    if (!sem1 && !sem2) {
        _Sleep::remove(myThread);
        return 1;
    }
    return 0;
}
int _SemANDSleepManager::sleep_pass() {
    if (sem1) sem1->remove(myThread);
    if (sem2) sem2->remove(myThread);
    sem1 = sem2 = nullptr;
    myThread->limitReach();
    return 1;
}
int _SemANDSleepManager::interrupt() {
    if (sem1) sem1->remove(myThread);
    if (sem2) sem2->remove(myThread);
    sem1 = sem2 = nullptr;
    _Sleep::remove(myThread);
    return 1;
}