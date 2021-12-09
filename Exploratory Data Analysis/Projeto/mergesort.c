// Adapted from Rosetta Code

#include <stdlib.h>     
#include <stdio.h>
#include <time.h>
#include <unistd.h>
#include <string.h>

#define MAX 10000

int A[MAX], B[MAX];
int conta_falhas;
double eps;

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


double r(){
    return (double)rand() / (double)RAND_MAX ;
}


void merge (int *a, int n, int m) {
    int i, j, k;
    int *x = malloc(n * sizeof (int));
    for (i = 0, j = m, k = 0; k < n; k++) {
        if (r() > eps) {			//no failure
		x[k] = j == n ? a[i++]
             	: i == m      ? a[j++]
             	: a[j] < a[i] ? a[j++]
             	:               a[i++];
    	}
	else {			// failure
        
        conta_falhas++;
		x[k] = j == n ? a[i++]
             	: i == m      ? a[j++]
             	: a[j] >= a[i] ? a[j++]
             	:               a[i++];
    	}
    }
    for (i = 0; i < n; i++) {
        a[i] = x[i];
    }
    free(x);
}
 
void merge_sort (int *a, int n) {
    if (n < 2)
        return;
    int m = n / 2;
    merge_sort(a, m);
    merge_sort(a + m, n - m);
    merge(a, n, m);
}



int main() {

        FILE *fp;
        fp = fopen("dataMerge.out","a+");

        int n, i;
    
        conta_falhas = 0;

        scanf("%lf",&eps);
        scanf("%d",&n);

        //printf("%lf %d\n", eps,n); //print input
        fprintf(fp,"%lf %d\n", eps,n);

        for (i=0; i < n; i++)
                scanf("%d",&A[i]);
        srand((unsigned) time(NULL));
        memcpy(B, A, sizeof(A));
       	
        //fprintf(fp, "%d", A[0]);
        //printf("%d",A[0]);
        //for (i=1; i<n;i++)
                //printf(" %d", A[i]);
                //fprintf(fp, " %d", A[i]);
        //printf("\n");
        //fprintf(fp, "\n");

        merge_sort(A,n);

        //fprintf(fp, "%d", A[0]);
       // for (i=1; i<n;i++)
           // fprintf(fp," %d",A[i]);
        //fprintf(fp, "\n");
        eps = -1.0;
        int count = LNDS(n);

        merge_sort(B,n);

        //fprintf(fp, "%d", B[0]);
        //for (i=1; i<n;i++)
            //fprintf(fp, " %d", B[i]);
        fprintf(fp, "%d\n", count);
    
        fprintf(fp,"%d\n", conta_falhas);

        fprintf(fp,"\n");
        //sleep(1);
}





