library(sciplot)


#QuickSort a variar N
boxplot(TamanhoMaximo~N, data = Tabela_QuickSort_A_Variar_N, ylim = c(200,2500))
lineplot.CI(N, TamanhoMaximo, data = Tabela_QuickSort_A_Variar_N, xlab="Variação do N", ylab = "Tamanho do maior array organizado", main = "Intervalos de confiança do QuickSort a variar N")

#QuickSort a variar EPS
boxplot(TamanhoMaximo~EPS, data = Tabela_QuickSort_A_Variar_EPS, ylim = c(0,500))
lineplot.CI(EPS, TamanhoMaximo, data = Tabela_QuickSort_A_Variar_EPS, xlab="Variação do EPS", ylab = "Tamanho do maior array organizado", main = "Intrevalos de confiança do QuickSort a variar EPS")


#MergeSort a variar N
boxplot(TamanhoMaximo~N, data = Tabela_MergeSort_A_Variar_N, ylim = c(0,2900))
lineplot.CI(N, TamanhoMaximo, data = Tabela_MergeSort_A_Variar_N, xlab="Variação do N", ylab = "Tamanho do maior array organizado", main = "Intrevalos de confiança do MergeSort a variar N")

#MergeSort a variar EPS
boxplot(TamanhoMaximo~EPS, data = Tabela_MergeSort_A_Variar_EPS, ylim = c(30,600))
lineplot.CI(EPS, TamanhoMaximo, data = Tabela_MergeSort_A_Variar_EPS, xlab="Variação do EPS", ylab = "Tamanho do maior array organizado", main = "Intrevalos de confiança do MergeSort a variar EPS")


#InsertionSort a variar N
boxplot(TamanhoMaximo~N, data = Tabela_InsertionSort_A_Variar_N, ylim = c(150,1350))
lineplot.CI(N, TamanhoMaximo, data = Tabela_InsertionSort_A_Variar_N, xlab="Variação do N", ylab = "Tamanho do maior array organizado", main = "Intrevalos de confiança do InsertionSort a variar N")

#InsertionSort a variar EPS
boxplot(TamanhoMaximo~EPS, data = Tabela_InsertionSort_A_Variar_EPS, ylim=c(100,200))
lineplot.CI(EPS, TamanhoMaximo, data = Tabela_InsertionSort_A_Variar_EPS, xlab="Variação do EPS", ylab = "Tamanho do maior array organizado", main = "Intrevalos de confiança do InsertionSort a variar EPS")




#Intervalos de confiança para avariação do EPS

lineplot.CI(EPS, TamanhoMaximo, data = Tabela_A_Variar_EPS_Global, xlab="Variação do EPS", ylab = "Tamanho do maior array organizado", main = "Intrevalos de confiança do QuickSort a variar EPS")

#Intervalos de confiança para avariação do N

lineplot.CI(EPS, TamanhoMaximo, data = Tabela_A_Variar_N_Global, xlab="Variação do EPS", ylab = "Tamanho do maior array organizado", main = "Intrevalos de confiança do QuickSort a variar N")


