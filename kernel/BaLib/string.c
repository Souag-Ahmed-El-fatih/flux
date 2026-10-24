


#include <BaLib/stdint.h>

/*
	string lenght
	ex:
		char name[] = "ahmed";
		printf("%d", strlen());
*/
size_t srelen(char *string) {
	int counter = 0;
	while (string[counter] != '\0') 
		counter++;
	return counter;
}

/*
	string comprad
	ex:
		if(strcmp(str, str2) == 0)
			printf("str = str2");
*/
int strcmp(char *str1, char *str2) {
	int c = 0;
	while (str1[c] != '\0' || str2[c] != '\0') {
		if (str1[c] < str2[c])
			return -1;
		else if (str1[c] > str2[c])
			return 1;
		c++;
	}
	return 0;
}
