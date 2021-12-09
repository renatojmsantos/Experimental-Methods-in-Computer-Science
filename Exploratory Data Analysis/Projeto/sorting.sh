gcc quicksort.c -o quick -Wall
gcc bubblesort.c -o bubble -Wall
gcc mergesort.c -o merge -Wall
gcc insertionsort.c -o insertion -Wall

python gen.py>data.in

for i in {1..1500}
do
	
	./quick < data.in
    
	./bubble < data.in
    
	./merge < data.in
    
	./insertion < data.in

done
