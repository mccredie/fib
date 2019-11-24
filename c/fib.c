
#include <stdio.h>
#include <stdlib.h>

void fib(int count);

int main(int argc, char** argv) {
  int count;
  if (argc < 2) {
    fprintf(stderr, "Error: require argument count.\n");
    return 1;
  }

  count = atoi(argv[1]);

  fib(count);
}

void fib(int count) {
  int tmp = 0, a = 1, b = 1;

  for (int i = 0; i < count; ++i) {
    printf("%d\n", a);
    tmp = a;
    a = b;
    b = b + tmp;
  }
}
