int test_zero(void) {
  volatile int *p = (int *)0;
  *p = 2025;
  return *p;
}