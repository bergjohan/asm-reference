#include <assert.h>
#include <inttypes.h>

int64_t sum_of_squares(int64_t start, int64_t end);

int main(void) {
    assert(sum_of_squares(1, 100) == 338350);
}
