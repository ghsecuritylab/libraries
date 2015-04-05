// RUN: %clangxx_asan -O0 %s -o %t && not %run %t 2>&1 | FileCheck %s --check-prefix=CHECK-%os --check-prefix=CHECK
// RUN: %clangxx_asan -O1 %s -o %t && not %run %t 2>&1 | FileCheck %s --check-prefix=CHECK-%os --check-prefix=CHECK
// RUN: %clangxx_asan -O2 %s -o %t && not %run %t 2>&1 | FileCheck %s --check-prefix=CHECK-%os --check-prefix=CHECK
// RUN: %clangxx_asan -O3 %s -o %t && not %run %t 2>&1 | FileCheck %s --check-prefix=CHECK-%os --check-prefix=CHECK
// XFAIL: arm-linux-gnueabi
// XFAIL: armv7l-unknown-linux-gnueabihf

#include <stdlib.h>
int main() {
  char *x = (char*)malloc(10 * sizeof(char));
  free(x);
  return x[5];
  // CHECK: {{.*ERROR: AddressSanitizer: heap-use-after-free on address}}
  // CHECK:   {{0x.* at pc 0x.* bp 0x.* sp 0x.*}}
  // CHECK: {{READ of size 1 at 0x.* thread T0}}
  // CHECK: {{    #0 0x.* in main .*use-after-free.cc:10}}
  // CHECK: {{0x.* is located 5 bytes inside of 10-byte region .0x.*,0x.*}}
  // CHECK: {{freed by thread T0 here:}}

  // CHECK-Linux: {{    #0 0x.* in .*free}}
  // CHECK-Linux: {{    #1 0x.* in main .*use-after-free.cc:9}}

  // CHECK-Darwin: {{    #0 0x.* in wrap_free}}
  // CHECK-Darwin: {{    #1 0x.* in main .*use-after-free.cc:9}}

  // CHECK: {{previously allocated by thread T0 here:}}

  // CHECK-Linux: {{    #0 0x.* in .*malloc}}
  // CHECK-Linux: {{    #1 0x.* in main .*use-after-free.cc:8}}

  // CHECK-Darwin: {{    #0 0x.* in wrap_malloc.*}}
  // CHECK-Darwin: {{    #1 0x.* in main .*use-after-free.cc:8}}
  // CHECK: Shadow byte legend (one shadow byte represents 8 application bytes):
  // CHECK: Global redzone:
  // CHECK: ASan internal:
}
