#include <assert.h>
#include <inttypes.h>

int equal(int64_t, int64_t);
int not_equal(int64_t, int64_t);
int less(int64_t, int64_t);
int less_equal(int64_t, int64_t);
int greater(int64_t, int64_t);
int greater_equal(int64_t, int64_t);

int main(void) {
    assert(equal(5, 3) == 0);
    assert(not_equal(5, 3) == 1);
    assert(less(5, 3) == 0);
    assert(less_equal(5, 3) == 0);
    assert(greater(5, 3) == 1);
    assert(greater_equal(5, 3) == 1);
}
