//
// Created by os on 5/3/22.
//

#ifndef PROJECT_BASE_TYPES_H
#define PROJECT_BASE_TYPES_H
#include "../lib/hw.h"

class _Thread;
typedef _Thread* thread_t;

extern const int MAX_PRIORITY;
extern const int MIN_PRIORITY;
extern const int NORM_PRIORITY;

extern const int SET_START;
extern const int SET_DAEMON;

class _Sem;
typedef _Sem* sem_t;


#endif //PROJECT_BASE_TYPES_H
