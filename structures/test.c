#include <assert.h>
#include <inttypes.h>

void init_point(int64_t, int64_t);
int64_t get_x(void);
int64_t get_y(void);
struct pointi32 make_pointi32(int32_t, int32_t);
struct pointi64 make_pointi64(int64_t, int64_t);
struct pointi64 add_pointi64(struct pointi64, struct pointi64);

struct pointi32 {
    int32_t x;
    int32_t y;
};

struct pointi64 {
    int64_t x;
    int64_t y;
};

int main(void) {
    struct pointi32 p1 = make_pointi32(1, 2);
    struct pointi64 p2 = make_pointi64(1, 2);
    struct pointi64 p3 = make_pointi64(3, 4);
    struct pointi64 p4 = add_pointi64(p2, p3);

    init_point(3, 5);
    assert(get_x() == 3);
    assert(get_y() == 5);

    assert(p1.x == 1);
    assert(p1.y == 2);

    assert(p2.x == 1);
    assert(p2.y == 2);

    assert(p3.x == 3);
    assert(p3.y == 4);

    assert(p4.x == 4);
    assert(p4.y == 6);
}
