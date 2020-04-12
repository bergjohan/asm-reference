#include <assert.h>
#include <inttypes.h>

int64_t ret42(void);
int64_t square(int64_t);
int64_t mul2(int64_t, int64_t);
int64_t mul3(int64_t, int64_t, int64_t);
int64_t mul4(int64_t, int64_t, int64_t, int64_t);
int64_t mul5(int64_t, int64_t, int64_t, int64_t, int64_t);
int64_t mul6(int64_t, int64_t, int64_t, int64_t, int64_t, int64_t);
int64_t mul7(int64_t, int64_t, int64_t, int64_t, int64_t, int64_t, int64_t);
int64_t cube(int64_t);
int myatoi(const char *);

int main(void) {
    assert(ret42() == 42);
    assert(square(5) == 25);
    assert(mul2(2, 3) == 6);
    assert(mul3(2, 3, 4) == 24);
    assert(mul4(2, 3, 4, 5) == 120);
    assert(mul5(2, 3, 4, 5, 6) == 720);
    assert(mul6(2, 3, 4, 5, 6, 7) == 5040);
    assert(mul7(2, 3, 4, 5, 6, 7, 8) == 40320);
    assert(cube(5) == 125);
    assert(myatoi("5") == 5);
}
