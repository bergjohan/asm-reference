#include <assert.h>
#include <inttypes.h>

int64_t i8_to_i64(int8_t);
uint64_t u8_to_u64(uint8_t);

int main(void) {
    assert(i8_to_i64(-1) == -1);
    assert(u8_to_u64(-1) == (uint8_t)-1);
}
