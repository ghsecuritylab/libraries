// RUN: %clangxx_tsan -O1 %s -o %t && not %run %t 2>&1 | FileCheck %s
#include "test.h"
#include <string.h>

int x[4], y[4], z[4];

void *MemCpyThread(void *a) {
  memcpy((int*)a, z, 16);
  barrier_wait(&barrier);
  return NULL;
}

void *MemMoveThread(void *a) {
  memmove((int*)a, z, 16);
  return NULL;
}

void *MemSetThread(void *a) {
  barrier_wait(&barrier);
  memset((int*)a, 0, 16);
  return NULL;
}

int main() {
  barrier_init(&barrier, 2);
  pthread_t t[2];
  // Race on x between memcpy and memset
  pthread_create(&t[0], NULL, MemCpyThread, x);
  pthread_create(&t[1], NULL, MemSetThread, x);
  pthread_join(t[0], NULL);
  pthread_join(t[1], NULL);
  // Race on y between memmove and memset
  pthread_create(&t[0], NULL, MemMoveThread, y);
  pthread_create(&t[1], NULL, MemSetThread, y);
  pthread_join(t[0], NULL);
  pthread_join(t[1], NULL);

  printf("PASS\n");
  return 0;
}

// CHECK: WARNING: ThreadSanitizer: data race
// CHECK:   #0 memset
// CHECK:   #1 MemSetThread
// CHECK:  Previous write
// CHECK:   #0 memcpy
// CHECK:   #1 MemCpyThread

// CHECK: WARNING: ThreadSanitizer: data race
// CHECK:   #0 memset
// CHECK:   #1 MemSetThread
// CHECK:  Previous write
// CHECK:   #0 memmove
// CHECK:   #1 MemMoveThread
