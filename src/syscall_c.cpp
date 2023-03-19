//
// Created by os on 5/3/22.
//

#include "../h/syscall_c.h"
#include "../h/ABI.h"

void* mem_alloc(size_t size) {
    return (void*)ABIcall(0x01ul, (uint64)size);
}
int mem_free(void* addr) {
    return (int)ABIcall(0x02ul, (uint64)addr);
}

int thread_create(thread_t* handle, void*(*startRoutine)(void*), void* arg, size_t stackSize, int priority, int options) {
    char* sp = (char*) mem_alloc(stackSize); if (!sp) return -1;
    sp = sp + stackSize;
    return (int)ABIcall(0x11ul, (uint64)handle, (uint64)startRoutine, (uint64)arg, (uint64)sp, (uint64)stackSize, (uint64)priority, (uint64)options);
}
int thread_create(thread_t* handle, void(*startRoutine)(void*), void* arg, size_t stackSize, int priority, int options) {
    char* sp = (char*) mem_alloc(stackSize); if(!sp) return -1;
    sp = sp + stackSize;
    return (int)ABIcall(0x12ul, (uint64)handle, (uint64)startRoutine, (uint64)arg, (uint64)sp, (uint64)stackSize, (uint64)priority, (uint64)options);
}
int thread_create(thread_t* handle, void(*startRoutine)(void), void* arg, size_t stackSize, int priority, int options) {
    return thread_create(handle, (void(*)(void*))startRoutine, arg, stackSize, priority, options);
}
int thread_exit(void* ret) {
    return (int)ABIcall(0x13ul, (uint64)ret);
}
void thread_dispatch() {
    ABIcall(0x14ul);
}
int thread_start(thread_t handle) {
    return (int)ABIcall(0x15ul, (uint64)handle);
}
int thread_join(thread_t handle, void** pret) {
    return (int)ABIcall(0x16ul, (uint64)handle, (uint64)pret);
}
int thread_join_limit(thread_t handle, void** pret, time_t limit) {
    return (int)ABIcall(0x17ul, (uint64)handle, (uint64)pret, (uint64)limit);
}
int thread_interrupt(thread_t handle) {
    return (int)ABIcall(0x18ul, (uint64)handle);
}
int thread_interrupted() {
    return (int)ABIcall(0x19ul);
}

int sem_open(sem_t* handle, unsigned init) {
    return (int)ABIcall(0x21ul, (uint64)handle, (uint64)init);
}
int sem_close(sem_t handle) {
    return (int)ABIcall(0x22ul, (uint64)handle);
}
int sem_wait(sem_t handle) {
    return (int)ABIcall(0x23ul, (uint64)handle);
}
int sem_signal(sem_t handle) {
    return (int)ABIcall(0x24ul, (uint64)handle);
}
int sem_wait_or(sem_t sem1, sem_t sem2) {
    return (int)ABIcall(0x25ul, (uint64)sem1, (uint64)sem2);
}
int sem_wait_and(sem_t sem1, sem_t sem2) {
    return (int)ABIcall(0x26ul, (uint64)sem1, (uint64)sem2);
}
int sem_wait_limit(sem_t sem, time_t limit) {
    return (int)ABIcall(0x27ul, (uint64)sem, (uint64)limit);
}
int sem_wait_or_limit(sem_t sem1, sem_t sem2, time_t limit) {
    return (int)ABIcall(0x28ul, (uint64)sem1, (uint64)sem2, (uint64)limit);
}
int sem_wait_and_limit(sem_t sem1, sem_t sem2, time_t limit) {
    return (int)ABIcall(0x29ul, (uint64)sem1, (uint64)sem2, (uint64)limit);
}

int time_sleep(time_t time) {
    return (int)ABIcall(0x31ul, (uint64)time);
}
int get_time() {
    return (int)ABIcall(0x32ul);
}

char getc() {
    return (char)ABIcall(0x41ul);
}
void putc(char c) {
    ABIcall(0x42ul, (uint64)c);
}

const int MAX_PRIORITY = 100;
const int MIN_PRIORITY = -100;
const int NORM_PRIORITY = 0;

const int SET_START = 1;
const int SET_DAEMON = 2;
