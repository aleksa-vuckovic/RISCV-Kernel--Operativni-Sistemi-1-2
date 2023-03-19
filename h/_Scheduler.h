//
// Created by os on 5/3/22.
//

#ifndef PROJECT_BASE__SCHEDULER_H
#define PROJECT_BASE__SCHEDULER_H
#include "_ThreadPriorityQueue.h"

//Scheduler koji je u stvari samo omotac oko prioritetnog reda
class _Scheduler {
    static _ThreadPriorityQueue ready;
public:
    static int put(thread_t thread);
    static int get(); //ne vraca thread vec odmah upisuje u _Thread::running
    static int empty();
};


#endif //PROJECT_BASE__SCHEDULER_H
