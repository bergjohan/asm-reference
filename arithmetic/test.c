#include <assert.h>
#include <inttypes.h>

int64_t add(int64_t, int64_t);
int64_t subtract(int64_t, int64_t);
int64_t multiply(int64_t, int64_t);
int64_t divide(int64_t, int64_t);
int64_t modulus(int64_t, int64_t);
int64_t negate(int64_t);

int main(void) {
    assert(add(5, 3) == 8);
    assert(subtract(5, 3) == 2);
    assert(multiply(5, 3) == 15);
    assert(divide(5, 3) == 1);
    assert(modulus(5, 3) == 2);
    assert(negate(-5) == 5);
}
