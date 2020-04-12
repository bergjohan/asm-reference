#include <assert.h>
#include <inttypes.h>
#include <string.h>

const char *hello(void);
int64_t array_sum(int64_t *arr, int64_t size);

int main(void) {
    int64_t numbers[] = {1, 2, 3, 4, 5};

    assert(!strcmp(hello(), "hello, world!"));
    assert(array_sum(numbers, 5) == 15);
}
