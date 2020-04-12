#include <assert.h>
#include <inttypes.h>

uint64_t bit_and(uint64_t, uint64_t);
uint64_t bit_or(uint64_t, uint64_t);
uint64_t bit_xor(uint64_t, uint64_t);
uint64_t bit_not(uint64_t);

int main(void) {
    assert(bit_and(0b11001001, 0b10011011) == 0b10001001);
    assert(bit_or(0b11001001, 0b10011011) == 0b11011011);
    assert(bit_xor(0b11001001, 0b10011011) == 0b01010010);
    assert((bit_not(0b11001001) & 0xFF) == 0b00110110);
}
