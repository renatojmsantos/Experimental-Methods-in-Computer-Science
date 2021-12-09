//Adapted Rosetta Code


#include <stdlib.h>     
#include <stdio.h>
#include <time.h>
#include <string.h>
#include <unistd.h>


#define MAX 1000000

int A[MAX], B[MAX];
int conta_falhas;
double eps;

double r(){
    return (double)rand() / (double)RAND_MAX ;
}

// computes the length of the longest non-decreasing string
//
int LNDS(int n) {

  int max = 1; 
  int len = 1;
  for (int i = 1; i < n; i++) {
    if(A[i-1] <= A[i]) {
        len++;
        if (len > max) 
            max=len;
    } 
      else{
          len=1;
      }
      
  }
  return max;
}



void swap(int *a, int *b) {
  int c = *a;
  *a = *b;
  *b = c;
}
 
int partition(int A[], int p, int q) {
  swap(&A[p + (rand() % (q - p + 1))], &A[q]);   // PIVOT = A[q]
 
  int i = p - 1;
  for(int j = p; j <= q; j++) {
	if (r() > eps) { 	// no failure	
		if(A[j] <= A[q])
      			swap(&A[++i], &A[j]);
	}
	else {			// failure
        
        conta_falhas++;
		if (A[j] > A[q]) 
			swap(&A[++i], &A[j]);
	}
  }
 
  return i;
}
 
void quicksort(int A[], int p, int q) {

	if(p < q) {
    		int pivotIndx = partition(A, p, q);
    		quicksort(A, p, pivotIndx - 1);
    		quicksort(A, pivotIndx + 1, q);
    	}	
}


int main() {

	
	FILE *fp;
	fp = fopen("dataQuick.out","a+");

	int n, i;
    
    conta_falhas =0;
    
	scanf("%lf",&eps);
	scanf("%d",&n);

	//printf("%lf %d\n", eps,n); //print variaveis do input
	fprintf(fp,"%lf %d", eps,n);

	for (i=0; i < n; i++) 
		scanf("%d",&A[i]);
	srand((unsigned) time(NULL));
	memcpy(B, A, sizeof(A));
	
	//fprintf(fp, "%d", A[0]);
	//printf("%d",A[0]);
	//for (i=1; i<n;i++)
		//printf(" %d", A[i]); // print array original
		//fprintf(fp, " %d", A[i]);
	//printf("\n");
	//fprintf(fp, "\n");

	quicksort(A,0,n-1);

	//printf("%d",A[0]);
	//fprintf(fp, "%d", A[0]);
	//for (i=1; i<n;i++)
		//printf(" %d", A[i]); // print semi ordenado
		//fprintf(fp," %d",A[i]);
	//printf("\n");
	//fprintf(fp, "\n");

	int count = LNDS(n);
	eps = -1.0;
	
	quicksort(B,0,n-1);
	
	//fprintf(fp, "%d", B[0]);
	//printf("%d",B[0]);
    //for (i=1; i<n;i++)
    	//printf(" %d", B[i]); // print ordenado
    	//fprintf(fp, " %d", B[i]);
    //printf("\n%d\n",count); // falha memoria
    fprintf(fp, "\n%d\n", count); //numero de erros? The size of the largest sorted subarray in 2).
    
    fprintf(fp,"%d\n", conta_falhas);

    fprintf(fp,"\n");

  	//sleep(1);
}
