#include <assert.h>

double to_fahrenheit(double celsius);

int main(void) {
    assert(to_fahrenheit(100) == 212);
}
