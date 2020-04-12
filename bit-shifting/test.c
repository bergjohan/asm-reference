#include <assert.h>
#include <inttypes.h>

uint64_t shift_left(uint64_t);
uint64_t shift_right(uint64_t);

int main(void) {
    assert(shift_left(0b00101111) == 0b01011110);
    assert(shift_right(0b00101111) == 0b00010111);
}
