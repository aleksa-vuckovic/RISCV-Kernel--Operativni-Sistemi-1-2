#include "../h/_BuddyAllocator.h"
#include "../h/syscall_c.h"
#include "../h/syscall_cpp.h"
#include "../h/_slab.h"

void printstring(const char* s) {
    while (*s) putc(*s++);
}
void printNum(uint64 x) {
    char buff[30];
    int i = 0;
    while (x) {
        buff[i++] = '0' + x % 10;
        x /= 10;
    }
    char buff2[31]; int j = 0;
    while (i--) {
        buff2[j++] = buff[i];
    }
    buff2[j] = '\0';
    printstring(buff2);
};
void line() {
    printstring("----------------------------------------\n");
}

void testBuddy() {
    char* heap = new char[200];
    _BuddyTree* tree = new (heap) _BuddyTree(heap + 200, 10, 0);

    tree->print(); line();

    void* p1 = tree->alloc(10);
    tree->print(); line();
    tree->alloc(20);
    tree->print(); line();
    tree->alloc(35);
    tree->print(); line();
    void* p4 = tree->alloc(10);
    tree->print(); line();
    tree->dealloc(p1);
    tree->print(); line();
    tree->dealloc(p4);
    tree->print(); line();
}


class Car {
    const char* name;
    int wheels;
public:
    Car(const char* name = "DefaultCar", int wheels = 4) {
        this->name = name;
        this->wheels = wheels;
    }
    void print() {
        printstring("Auto");
        printstring(name);
        printstring(" | Tockova: ");
        printNum(wheels);
        putc('\n');
    }
};

void CarCtor(void* car) {
    new (car) Car();
}

void testCache() {
    kmem_cache_t* carCache = kmem_cache_create("MojKes1", sizeof(Car), CarCtor, nullptr);
    Car* car = (Car*)kmem_cache_alloc(carCache);
    car->print();
    kmem_cache_free(carCache, car);
    int ret = kmem_cache_shrink(carCache);
    if (ret) printstring("SHRINK!\n");
    else printstring("NO SHRINK!\n");
    kmem_cache_shrink(carCache);
    kmem_cache_free(carCache, nullptr);
    kmem_cache_error(carCache);
    kmem_cache_info(carCache);

    int i = 0;
    Car* cars[3563];
    while (true) {
        car = (Car*)kmem_cache_alloc(carCache);
        if (car == nullptr || i == 3563) {
            kmem_cache_error(carCache);
            break;
        }
        else {
            cars[i] = car;
            printstring("ALLOC SUCCESS! ");
            printNum(++i);
            putc('\n');
        }
    }
    line();
    for (int j = 0; j < i; j++) {
        printNum(j + 1);
        printstring(". ");
        cars[j]->print();
    }

    kmem_cache_destroy(carCache);
    putc('\n');

    int* arr = (int*)kmalloc(10 * sizeof(int));
    if (arr) {
        for (int i = 0; i < 10; i++) arr[i] = i;
        kfree(arr);
    }
    else {
        printstring("ERROR\n");
    }
}
#define MAX 1000
void testCache2() {
    kmem_cache_t* carCache = kmem_cache_create("MojKes1", sizeof(Car), CarCtor, nullptr);
    Car* cars[MAX];
    for (int i = 0; i < MAX; i++) cars[i] = (Car*)kmem_cache_alloc(carCache);
    kmem_cache_error(carCache);
    kmem_cache_info(carCache);
    for (int i = MAX; i > MAX/2; i--) kmem_cache_free(carCache, cars[i]);
    kmem_cache_info(carCache);
    kmem_cache_shrink(carCache);
    kmem_cache_info(carCache);
    kmem_cache_destroy(carCache);
    return;
}

void testBuffCache() {
    int* arrs[100];
    for (int i = 0; i < 100; i++) arrs[i] = (int*)kmalloc(1000*sizeof(int));
    kmem_cache_info_buff(11);
    kmem_cache_info_buff(12);
    for (int i = 50; i < 100; i++) kfree(arrs[i]);
    kmem_cache_info_buff(12);
    for (int i = 50; i < 100; i++) arrs[i] = (int*)kmalloc(1000*sizeof(int));
    kmem_cache_info_buff(12);
}

void f(void*) {}
void testLoadPageFault() {
    thread_t handle;
    thread_create(&handle, &f, nullptr);
    printstring("Kreirana nit, sada probam pristup.\n");
    uint64 sp = *(uint64*)handle;
    printstring("Uspeh! - ");
    printNum(sp);
}
#include "../h/_Thread.h"
void testInstructionPageFault() {
    _Thread::dispatch();
}
void testStorePageFault() {
    _Thread::running = nullptr;
}
#include "../h/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta
/*
void userMain() {
    //testBuddy();
    //testCache();
    //testCache2();
    //testBuffCache();
    //ConsumerProducerCPP::testConsumerProducer();
    //testLoadPageFault();
    //testInstructionPageFault();
    //testStorePageFault();
}*/

/*
#define RUN_NUM (5)
#define ITERATIONS (1000)

#define shared_size (8)
#define MASK (0xA5)

struct data_s {
    int id;
    kmem_cache_t  *shared;
    int iterations;
};

const char * const CACHE_NAMES[] = {"tc_0",
                                    "tc_1",
                                    "tc_2",
                                    "tc_3",
                                    "tc_4"};

void memset(const void *data, int size, int value) {
    for (int j = 0; j < size; j++) {
        ((char *)data)[j] = value;
    }
}

void construct(void *data) {
    static int i = 1;
    printNum(i++); printstring(" Shared object constructed.\n");
    memset(data, shared_size, MASK);
}

int check(void *data, size_t size) {
    int ret = 1;
    for (size_t i = 0; i < size; i++) {
        if (((unsigned char *)data)[i] != MASK) {
            ret = 0;
        }
    }

    return ret;
}

struct objects_s {
    kmem_cache_t *cache;
    void *data;
};

void work(void* pdata) {
    struct data_s data = *(struct data_s*) pdata;
    int size = 0;
    int object_size = data.id + 8;
    kmem_cache_t *cache = kmem_cache_create(CACHE_NAMES[data.id], object_size, 0, 0);

    struct objects_s *objs = (struct objects_s*)(kmalloc(sizeof(struct objects_s) * data.iterations));

    for (int i = 0; i < data.iterations; i++) {
        if (i % 100 == 0) {
            objs[size].data = kmem_cache_alloc(data.shared);
            objs[size].cache = data.shared;
            if (!check(objs[size].data, shared_size)) {
                printstring("Value not correct!");
            }
        }
        else {
            objs[size].data = kmem_cache_alloc(cache);
            objs[size].cache = cache;
            memset(objs[size].data, object_size, MASK);
        }
        size++;
    }

    kmem_cache_info(cache);
    kmem_cache_info(data.shared);

    for (int i = 0; i < size; i++) {
        if (!check(objs[i].data, (cache == objs[i].cache) ? object_size : shared_size)) {
            printstring("Value not correct!");
        }
        kmem_cache_free(objs[i].cache, objs[i].data);
    }

    kfree(objs);
    kmem_cache_destroy(cache);
}



void runs(void(*work)(void*), struct data_s* data, int num) {
    for (int i = 0; i < num; i++) {
        struct data_s private_data;
        private_data = *(struct data_s*) data;
        private_data.id = i;
        work(&private_data);
    }
}

void userMain() {
    kmem_cache_t *shared = kmem_cache_create("shared object", shared_size, construct, nullptr);

    struct data_s data;
    data.shared = shared;
    data.iterations = ITERATIONS;
    runs(work, &data, RUN_NUM);

    kmem_cache_destroy(shared);
}
*/

struct thread_data {
    int id;
};

class ForkThread : public Thread {
public:
    ForkThread(long _id) noexcept : Thread(), id(_id), finished(false) {}
    virtual void run() {
        printstring("Started thread id: "); printNum(id); printstring("\n");

        ForkThread* thread = new ForkThread(id + 1);
        ForkThread** threads = (ForkThread** ) mem_alloc(sizeof(ForkThread*) * id);

        if (threads != nullptr) {
            for (long i = 0; i < id; i++) {
                threads[i] = new ForkThread(id);
            }

            if (thread != nullptr) {
                if (thread->start() == 0) {

                    for (int i = 0; i < 5000; i++) {
                        for (int j = 0; j < 5000; j++) {

                        }
                        thread_dispatch();
                    }

                    while (!thread->isFinished()) {
                        thread_dispatch();
                    }
                }
                delete thread;
            }

            for (long i = 0; i < id; i++) {
                if (threads[i]) delete threads[i];
            }

            mem_free(threads);
        }

        printstring("Finished thread id: "); printNum(id); printstring("\n");

        finished = true;
    }

    bool isFinished() const {
        return finished;
    }

private:
    long id;
    bool finished;
};


void userMain() {
    ForkThread thread(1);

    thread.start();

    while (!thread.isFinished()) {
        thread_dispatch();
    }

    printstring("User main finished\n");
}