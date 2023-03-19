//
// Created by os on 11/26/22.
//

#include "../h/_placementNew.h"

void* operator new( size_t, void* where ) {
    return where;
}