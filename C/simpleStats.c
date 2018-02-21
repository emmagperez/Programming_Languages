/*Emma Perez*/
#include <stdio.h>

int main()
{
	int count, array[100], i, j, curr; 
	printf("Enter the number of elements you wish to input: \n");
	scanf("%d", &count);
	printf("Enter %d elements \n", count);
	
	// putting user input into array
	for(i = 0; i < count; i++)
	{
		scanf("%d", &array[i]);
	}
	
	//insertion sort algorithm
	for (j = 1; j < count ; j++)
	{
		while(j > 0 && array[j] < array[j-1])
		{
			curr = array[j];
			array[j] = array[j-1];
			array[j-1] = curr;		
			j--;
		}
	}
	
	//Calculations below
	int min, max, mode, countm, maxCount,k, l;
	float median, sum, average, left, right;
	
	//calculating min and max
	min = array[0]; 
	max = array[count-1];
	
	// calculating median
	if(count % 2)
	{
		median = array[count/2];
	} 
	else 
	{
		left = array[(count-1)/2];  
		right =  array[(count+1)/2];
		median = ((left + right )/2);
	}
	// calculating mode
	mode = 0;
	countm = 1;
	maxCount = 0;
	for(k = 0; k < count - 1; k++)
	{
		sum+=array[k];
		if(array[k] == array[k+1])
		{
			countm++;
			if(countm > maxCount)
			{
				maxCount = countm;
				mode = array[k];
			}
		}
		else 
		{
			countm = 1;
		}		
	}
	
	//Calculating average
	sum = 0;
	for(l = 0; l < count; l++)
	{
		sum+=array[l];
	}
	average = (sum/count);

	printf("Min: %d\n", min);
	printf("Max: %d\n", max);
	printf("Median: %.2f\n", median);
	printf("average: %.2f\n", average);
	printf("Mode: %d\n", mode);
	return 0;
	
}