//
// Created by os on 5/3/22.
//

#ifndef PROJECT_BASE_SYSCALL_C_H
#define PROJECT_BASE_SYSCALL_C_H
#include "../lib/hw.h"
#include "types.h"

void* operator new(size_t);
void operator delete(void*);

void* mem_alloc(size_t size);
int mem_free(void* addr);

int thread_create(thread_t* handle, void*(*startRoutine)(void*), void* arg, size_t stackSize = DEFAULT_STACK_SIZE, int priority = NORM_PRIORITY, int options = SET_START);
int thread_create(thread_t* handle, void(*startRoutine)(void*), void* arg, size_t stackSize = DEFAULT_STACK_SIZE, int priority = NORM_PRIORITY, int options = SET_START);
int thread_create(thread_t* handle, void(*startRoutine)(void), void* arg, size_t stackSize = DEFAULT_STACK_SIZE, int priority = NORM_PRIORITY, int options = SET_START);
int thread_exit(void* ret = nullptr);
void thread_dispatch();
int thread_start(thread_t handle);
int thread_join(thread_t handle, void** pret);
int thread_join_limit(thread_t handle, void** pret, time_t limit);
int thread_interrupt(thread_t handle);
int thread_interrupted();

int sem_open(sem_t* handle, unsigned init);
int sem_close(sem_t handle);
int sem_wait(sem_t handle);
int sem_signal(sem_t handle);
int sem_wait_or(sem_t sem1, sem_t sem2);
int sem_wait_and(sem_t sem1, sem_t sem2);
int sem_wait_limit(sem_t sem, time_t limit);
int sem_wait_or_limit(sem_t sem1, sem_t sem2, time_t limit);
int sem_wait_and_limit(sem_t sem1, sem_t sem2, time_t limit);

int time_sleep(time_t time);
int get_time();

char getc();
void putc(char c);

#endif //PROJECT_BASE_SYSCALL_C_H
