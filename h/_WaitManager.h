//
// Created by os on 6/1/22.
//

#ifndef PROJECT_BASE__WAIT_MANAGER_H
#define PROJECT_BASE__WAIT_MANAGER_H

#include "types.h"
#include "_Mem.h"
#include "_slab.h"

class _WaitManager {
public:
    _WaitManager(thread_t my_thread);
    virtual int sem_pass(sem_t);
    virtual int sleep_pass();
    virtual int join_pass();
    virtual int interrupt();
    virtual ~_WaitManager();// = 0;

protected:
    thread_t myThread;
};

class _SemManager : public _WaitManager {
public:
    _SemManager(thread_t my_thread, sem_t sem);
    static kmem_cache_t* cache;
    void*  operator new(size_t size) {
        if (!cache) cache = kmem_cache_create("Sem_manager Cache", sizeof(_SemManager), nullptr, nullptr);
        return kmem_cache_alloc(cache);
    }
    void operator delete(void* adr) { kmem_cache_free(cache, adr);}
    int sem_pass(sem_t sem) override;
    virtual int interrupt() override;

private:
    sem_t sem;
};

class _SleepManager : public _WaitManager {
public:
    _SleepManager(thread_t my_thread);
    static kmem_cache_t* cache;
    void*  operator new(size_t size) {
        if (!cache) cache = kmem_cache_create("Sleep_manager Cache", sizeof(_SleepManager), nullptr, nullptr);
        return kmem_cache_alloc(cache);
    }
    void operator delete(void* adr) { kmem_cache_free(cache, adr);}
    int sleep_pass() override;
    virtual int interrupt() override;
};

class _JoinManager : public _WaitManager {
public:
    _JoinManager(thread_t my_thread, thread_t join_thread);
    static kmem_cache_t* cache;
    void*  operator new(size_t size) {
        if (!cache) cache = kmem_cache_create("Join_manager Cache", sizeof(_JoinManager), nullptr, nullptr);
        return kmem_cache_alloc(cache);
    }
    void operator delete(void* adr) { kmem_cache_free(cache, adr);}

    int join_pass() override;
    virtual int interrupt() override;

private:
    thread_t join_thread;
};

class _SemORManager : public _WaitManager {
public:
    _SemORManager(thread_t my_thread, sem_t sem1, sem_t sem2);
    static kmem_cache_t* cache;
    void*  operator new(size_t size) {
        if (!cache) cache = kmem_cache_create("SemOR_manager Cache", sizeof(_SemORManager), nullptr, nullptr);
        return kmem_cache_alloc(cache);
    }
    void operator delete(void* adr) { kmem_cache_free(cache, adr);}

    int sem_pass(sem_t sem) override;
    virtual int interrupt() override;

private:
    sem_t sem1, sem2;
};

class _SemANDManager : public _WaitManager {
public:
    _SemANDManager(thread_t my_thread, sem_t sem1, sem_t sem2);
    static kmem_cache_t* cache;
    void*  operator new(size_t size) {
        if (!cache) cache = kmem_cache_create("SemAND_manager Cache", sizeof(_SemANDManager), nullptr, nullptr);
        return kmem_cache_alloc(cache);
    }
    void operator delete(void* adr) { kmem_cache_free(cache, adr);}

    int sem_pass(sem_t sem) override;
    virtual int interrupt() override;

private:
    sem_t sem1, sem2;
};

class _SemSleepManager : public _WaitManager {
public:
    _SemSleepManager(thread_t my_thread, sem_t sem);
    static kmem_cache_t* cache;
    void*  operator new(size_t size) {
        if (!cache) cache = kmem_cache_create("SemSleep_manager Cache", sizeof(_SemSleepManager), nullptr, nullptr);
        return kmem_cache_alloc(cache);
    }
    void operator delete(void* adr) { kmem_cache_free(cache, adr);}

    int sem_pass(sem_t sem) override;
    int sleep_pass() override;
    virtual int interrupt() override;

private:
    sem_t sem;
};

class _JoinSleepManager : public _WaitManager {
public:
    _JoinSleepManager(thread_t my_thread, thread_t join_thread);
    static kmem_cache_t* cache;
    void*  operator new(size_t size) {
        if (!cache) cache = kmem_cache_create("JoinSleep_manager Cache", sizeof(_JoinSleepManager), nullptr, nullptr);
        return kmem_cache_alloc(cache);
    }
    void operator delete(void* adr) { kmem_cache_free(cache, adr);}

    int join_pass() override;
    int sleep_pass() override;
    virtual int interrupt() override;

private:
    thread_t join_thread = join_thread;
};

class _SemORSleepManager : public _WaitManager {
public:
    _SemORSleepManager(thread_t my_thread, sem_t sem1, sem_t sem2);
    static kmem_cache_t* cache;
    void*  operator new(size_t size) {
        if (!cache) cache = kmem_cache_create("SemORSleep_manager Cache", sizeof(_SemORSleepManager), nullptr, nullptr);
        return kmem_cache_alloc(cache);
    }
    void operator delete(void* adr) { kmem_cache_free(cache, adr);}

    int sem_pass(sem_t sem) override;
    int sleep_pass() override;
    virtual int interrupt() override;

private:
    sem_t sem1, sem2;
};

class _SemANDSleepManager : public _WaitManager {
public:
    _SemANDSleepManager(thread_t my_thread, sem_t sem1, sem_t sem2);
    static kmem_cache_t* cache;
    void*  operator new(size_t size) {
        if (!cache) cache = kmem_cache_create("SemANDSleep_manager Cache", sizeof(_SemANDSleepManager), nullptr, nullptr);
        return kmem_cache_alloc(cache);
    }
    void operator delete(void* adr) { kmem_cache_free(cache, adr);}

    int sem_pass(sem_t sem) override;
    int sleep_pass() override;
    virtual int interrupt() override;

private:
    sem_t sem1, sem2;
};

#endif //PROJECT_BASE__WAIT_MANAGER_H
