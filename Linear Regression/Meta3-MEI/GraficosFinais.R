curve(254.3+0.03740*x, main= "Comparação das expressões das regressões lineares dos diferentes algoritmos para a variação de N", 1000,10000, ylim = c(0,700)) #Bubble
curve(27.91+0.0008137*x, , col = "red",add=TRUE) #Insertion
curve(64.79+0.0006053*x, add = TRUE, col="green") #Merge
curve(66.21+0.002881*x, add=TRUE,col="orange") #Quick

legend("right",legend=c("BubbleSort", "InsertionSort", "MergeSort", "QuickSort"), lty=c(1,1,1,1), col=c("black","red","green","orange"),lwd=1:1,bty="n")



curve(1/(0.001796+0.211149*x), main= "Comparação das expressões das regressões reciprocas dos diferentes algoritmos para a variação do EPS", 0.01,0.20, ylim = c(0,300)) #Bubble
curve(1/(0.042599+0.482548*x), , col = "red",add=TRUE) #Insertion
curve(1/(0.023793+0.532862*x), add = TRUE, col="green") #Merge
curve(1/(0.0177057+0.4761530*x), add=TRUE,col="orange") #Quick

legend("right",legend=c("BubbleSort", "InsertionSort", "MergeSort", "QuickSort"), lty=c(1,1,1,1), col=c("black","red","green","orange"),lwd=1:1,bty="n")