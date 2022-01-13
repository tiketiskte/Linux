//practice 2.42
#include <stdio.h>
int div16(int x) {
	int bias = (x >> 31) & 0xF;
	return (x + bias) >> 4;
}

int main(void) {
	printf("%d\n", div16(-12340));
	return 0;
}