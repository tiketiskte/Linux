//practice 2.42
#include <stdio.h>
int div16(int x) {
	int bias = (x >> 31) & 0xF;
	printf("%d\n", bias);
	return (x + bias) >> 4;
}

int main(void) {
	// int x = 65535;
	// printf("%d %d %d\n", x * x, div16(-12340), -9%16);
	// unsigned i;
	size_t i;
	int cnt = 100;
	for(i = cnt - 2; i < cnt; i--) {
		printf("%lu\n", i);
	}
	return 0;
}