#include "llist.h"
#include <stdio.h>

int main(int argc, char const *argv[])
{
	LList* testlist = llnew();	

	int d1[1] = {1};
	int d2[1] = {100};
	int d3[1] = {1000};

	llappend(testlist, d1);
	int* a = (int*)llgetvalue(testlist,0);
	printf("Value 1: %i\n",*a);

	llinsert(testlist, d2, 0);
	a = (int*)llgetvalue(testlist,0);
	int* b = (int*)llgetvalue(testlist,1);
	printf("Value 1: %i\nValue 2: %i\n",*a,*b);

	llset(testlist, d3, 1);
	a = (int*)llgetvalue(testlist,0);
	b = (int*)llgetvalue(testlist,1);
	printf("Value 1: %i\nValue 2: %i\n",*a,*b);
	return 0;
}
