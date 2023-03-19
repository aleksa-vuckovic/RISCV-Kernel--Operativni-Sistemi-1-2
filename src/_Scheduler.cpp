//
// Created by os on 5/3/22.
//

#include "../h/_Scheduler.h"
#include "../h/_Thread.h"

_ThreadPriorityQueue _Scheduler::ready = _ThreadPriorityQueue();

int _Scheduler::put(thread_t thread) {
    return ready.add(thread);
}
int _Scheduler::get() {
    _Thread::running = ready.remove();
    return 0;
}
int _Scheduler::empty() {
    return ready.empty();
}