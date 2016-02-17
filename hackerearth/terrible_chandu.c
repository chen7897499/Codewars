#include <stdio.h>
#include <string.h>

int main()
{
	int n;
	char temp[31];
	scanf("%d", &n);
	while(n--)
	{
		scanf("%s", &temp);
		int counter = strlen(temp)-1; //去掉结尾的那个\0 
		
		while(counter >= 0)
		{
			printf("%c", temp[counter]);
			counter--;
		}
		printf("\n");
	}
    return 0;
}

