#include <stdio.h>
#include <stdlib.h>

int main() {
	static const char * const str = "Hello World!\n";
	puts(str);
	exit(42);
}
