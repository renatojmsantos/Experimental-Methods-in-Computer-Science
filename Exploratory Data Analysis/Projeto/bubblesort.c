 
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



void bubble_sort (int *a, int n) {
    int i, t, j = n, s = 1;
    while (s) {
        s = 0;
        for (i = 1; i < j; i++) {
	  if (r() > eps) {        // no failure  
            if (a[i] < a[i - 1]) {
                t = a[i];
                a[i] = a[i - 1];
                a[i - 1] = t;
                s = 1;
            }
	  }
	  else{			// failure
          
            conta_falhas++;
            if (a[i] >= a[i - 1]) {
                t = a[i];
                a[i] = a[i - 1];
                a[i - 1] = t;
                s = 1;
            }
	  }
        }
        j--;
    }
}


int main() {

    FILE *fp;
    fp = fopen("dataBubble.out","a+");

    int n, i;
    
    conta_falhas = 0;

    scanf("%lf",&eps);
    scanf("%d",&n);

    fprintf(fp,"%lf %d\n", eps,n);

    for (i=0; i < n; i++)
            scanf("%d",&A[i]);
    srand((unsigned) time(NULL));
    memcpy(B, A, sizeof(A));
    
    /*fprintf(fp, "%d", A[0]);
    for (i=1; i<n;i++)
        fprintf(fp, " %d", A[i]);
    fprintf(fp, "\n");*/

    bubble_sort(A,n);

    /*fprintf(fp, "%d", A[0]);
    for (i=1; i<n;i++)
        fprintf(fp," %d",A[i]);
    printf("\n");*/

    int count = LNDS(n);
    eps = -1.0;
    

    bubble_sort(B,n);
    
    //fprintf(fp, "%d", B[0]);
    //for (i=1; i<n;i++)
        //fprintf(fp, " %d", B[i]);
    fprintf(fp, "%d\n", count);
    fprintf(fp,"%d\n", conta_falhas);

    fprintf(fp,"\n");
    //sleep(1);

	return 0;
}

