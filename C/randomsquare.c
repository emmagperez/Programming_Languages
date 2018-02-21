/*Emma Perez*/
# include <stdio.h>
# include <stdlib.h>
# include <time.h>

int main(int argc, char* argv[])
{
	int height, width, i, j;
	
	width = atoi(argv[1]);
	height = atoi(argv[2]);
	
	char txtArr[] = {"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890!@#$&*"};
	
	char *array = NULL;
	array = malloc(((width+1)*height+1)*sizeof(char));
	
	srand(time(NULL));
	
	for(i = 0; i < ((width+1)*height); i++)
	{	
		char newLine = '\n';
		if(i % (width+1) == 0)
		{
			array[i] = newLine;
		}
		else 
		{
			int r = rand() % 68;
			array[i]= txtArr[r];
		}
		
	}
	
	array[((width+1)*height)] = '\0';
	
	for(j = 0; j < ((width+1)*height); j++)
	{
		printf(" %c", array[j]);
	}
	
	printf("\n");
	
	free(array);

}
