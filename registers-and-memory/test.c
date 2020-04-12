#include <assert.h>
#include <inttypes.h>

void swapi8(int8_t *, int8_t *);
void swapi16(int16_t *, int16_t *);
void swapi32(int32_t *, int32_t *);
void swapi64(int64_t *, int64_t *);
void swap(int64_t *, int64_t *);

int main(void) {
    int8_t ai8 = 5;
    int8_t bi8 = 3;
    int16_t ai16 = 5;
    int16_t bi16 = 3;
    int32_t ai32 = 5;
    int32_t bi32 = 3;
    int64_t ai64 = 5;
    int64_t bi64 = 3;

    swapi8(&ai8, &bi8);
    assert(ai8 == 3);
    assert(bi8 == 5);

    swapi16(&ai16, &bi16);
    assert(ai16 == 3);
    assert(bi16 == 5);

    swapi32(&ai32, &bi32);
    assert(ai32 == 3);
    assert(bi32 == 5);

    swapi64(&ai64, &bi64);
    assert(ai64 == 3);
    assert(bi64 == 5);

    swap(&ai64, &bi64);
    assert(ai64 == 5);
    assert(bi64 == 3);
}
