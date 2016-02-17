#include <stdio.h>
#include <string.h>
 
int main()
{
	int n;
	scanf("%d", &n);
	char str[31];
	while(n--)
	{
		scanf("%s", &str);
		int len = strlen(str);
		for(int i = 0; i < len; i++)
		{
			if(str[i]!=str[i+1])
			{
				printf("%c", str[i]);
			}
		}
		printf("\n");
	}
    return 0;
}
