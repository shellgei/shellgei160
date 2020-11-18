#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int b()
{
	return rand()%10;
}

void a()
{
	int i = 0, j = b();
	for (; i < j; i++){
		puts("a");
	}
}

int main(int argc, char const *argv[])
{
	srand(time(NULL));
	a();
	return 0;
}
