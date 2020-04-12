#include <assert.h>
#include <inttypes.h>

int64_t increment(int64_t);
int64_t decrement(int64_t);

int main(void) {
    assert(increment(5) == 6);
    assert(decrement(5) == 4);
}
