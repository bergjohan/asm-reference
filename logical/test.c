#include <assert.h>
#include <inttypes.h>

int logical_and(int64_t, int64_t);
int logical_or(int64_t, int64_t);
int logical_not(int64_t);

int main(void) {
    assert(logical_and(0, 0) == 0);
    assert(logical_and(0, 1) == 0);
    assert(logical_and(1, 0) == 0);
    assert(logical_and(1, 1) == 1);

    assert(logical_or(0, 0) == 0);
    assert(logical_or(0, 1) == 1);
    assert(logical_or(1, 0) == 1);
    assert(logical_or(1, 1) == 1);

    assert(logical_not(0) == 1);
    assert(logical_not(1) == 0);
}
