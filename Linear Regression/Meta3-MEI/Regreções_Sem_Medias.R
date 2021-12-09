#Ver melhor todas mas principalmete a merge a variar o N



#---------------------------------------A VARIAR O N------------------------------------------------

#----Regreções para o QuickSort a variar o N

#Linear
lr.out=lm(Tabela_Quick_A_Variar_N$TamanhoMaximo~Tabela_Quick_A_Variar_N$N)
summary(lr.out)

plot(Tabela_Quick_A_Variar_N$TamanhoMaximo~Tabela_Quick_A_Variar_N$N)
abline(lr.out) #Da análise deste fráfico vemos que se parece com uma função logaritmica, vamos tentar essa

#Logaritmica
lr.out=lm(Tabela_Quick_A_Variar_N$TamanhoMaximo~log(Tabela_Quick_A_Variar_N$N))
summary(lr.out) #Como o R Squared é alto fazemos esta

plot(Tabela_Quick_A_Variar_N$TamanhoMaximo~Tabela_Quick_A_Variar_N$N)
abline(lr.out)

#Exponencial
lr.out=lm(log(Tabela_Quick_A_Variar_N$TamanhoMaximo)~Tabela_Quick_A_Variar_N$N)
summary(lr.out)

#Quadrática
lr.out=lm(sqrt(Tabela_Quick_A_Variar_N$TamanhoMaximo)~Tabela_Quick_A_Variar_N$N)
summary(lr.out)

#Reciproca
lr.out=lm((1/Tabela_Quick_A_Variar_N$TamanhoMaximo)~Tabela_Quick_A_Variar_N$N)
summary(lr.out)

#Power
lr.out=lm(log(Tabela_Quick_A_Variar_N$TamanhoMaximo)~log(Tabela_Quick_A_Variar_N$N))
summary(lr.out)

#Traçar curva

#Linear?

#linear 
curve(6.621e+01+2.881e-03*x, 1000,10000, main = "QuickSort com variação do N", ylim = c(0,170))
#exponencial
curve(exp(4.177e+00+3.766e-05*x), 1000, 10000,add=TRUE, ylim = c(0,130), col = "green")
#quadratica
curve((8.106e+00+1.639e-04*x)^2, 1000, 10000, add=TRUE, ylim = c(0,130), , col = "blue")
#reciproca
curve(1/(1.559e-02-5.125e-07*x), 1000,10000, add=TRUE, ylim = c(0,130), , col = "orange")
#logaritmica
curve(-18.7723+12.0918*log(x), 1000, 10000, add=TRUE, ylim = c(0,130), col = "purple")
#power #exp(a)*exp(b)^log(x)
curve(21.105*1.173^log(x), 1000,10000,add=TRUE, ylim = c(0,130))

points(Tabela_Quick_A_Variar_N$TamanhoMaximo~Tabela_Quick_A_Variar_N$N)




#----Regreções para BubbleSort a variar o N

#Linear
lr.out=lm(Tabela_Bubble_A_Variar_N$TamanhoMaximo~Tabela_Bubble_A_Variar_N$N)
summary(lr.out)

plot(Tabela_Bubble_A_Variar_N$TamanhoMaximo~Tabela_Bubble_A_Variar_N$N, log="x")
abline(lr.out) #Da análise deste fráfico vemos que se parece com uma função logaritmica, vamos tentar essa

#Logaritmica
lr.out=lm(Tabela_Bubble_A_Variar_N$TamanhoMaximo~log(Tabela_Bubble_A_Variar_N$N))
summary(lr.out)#Como o R Squared é alto fazemos esta

#Exponencial
lr.out=lm(log(Tabela_Bubble_A_Variar_N$TamanhoMaximo)~Tabela_Bubble_A_Variar_N$N)
summary(lr.out)

#Quadrática
lr.out=lm(sqrt(Tabela_Bubble_A_Variar_N$TamanhoMaximo)~Tabela_Bubble_A_Variar_N$N)
summary(lr.out)

#Reciproca
lr.out=lm((1/Tabela_Bubble_A_Variar_N$TamanhoMaximo)~Tabela_Bubble_A_Variar_N$N)
summary(lr.out)

#Power
lr.out=lm(log(Tabela_Bubble_A_Variar_N$TamanhoMaximo)~log(Tabela_Bubble_A_Variar_N$N))
summary(lr.out)

#Traçar a curva

#Lienar ou exponencial?

#linear 
curve(2.543e+02+3.740e-02*x, 1000,10000, main = "BubbleSort com variação do N", ylim = c(0,1500))
#exponencial
curve(exp(5.505e+00+9.534e-05*x), 1000, 10000,add=TRUE, ylim = c(0,1000), col = "green")
#quadratica
curve((1.583e+01+9.247e-04*x)^2, 1000, 10000, add=TRUE, ylim = c(0,1000), , col = "blue")
#reciproca
curve(1/(4.268e-03-2.861e-07 *x), 1000,10000, add=TRUE, ylim = c(0,1000), , col = "orange")
#logaritmica
curve(-857.030+ 157.943*log(x), 1000, 10000, add=TRUE, ylim = c(0,1000), col = "purple")
#power #exp(a)*exp(b)^log(x)
curve(13.19*1.512^log(x), 1000,10000,add=TRUE, ylim = c(0,1000))

points(Tabela_Bubble_A_Variar_N$TamanhoMaximo~Tabela_Bubble_A_Variar_N$N)

#a regreçao é uma expressao que tenta aproximar \ diminuir a diferença da soma dos pontos
#como temos outliers eles vao estar a influenciar o valores que vao dar origem á expressao

#A power dá melhor


#----Regreções para MergeSort a variar o N

#Linear
lr.out=lm(Tabela_Merge_A_Variar_N$TamanhoMaximo~Tabela_Merge_A_Variar_N$N)
summary(lr.out)

plot(Tabela_Merge_A_Variar_N$TamanhoMaximo~Tabela_Merge_A_Variar_N$N, log="x", ylim = c(0,500))
abline(lr.out) #Da análise deste fráfico vemos que se parece com uma função logaritmica, vamos tentar essa

#Logaritmica
lr.out=lm(Tabela_Merge_A_Variar_N$TamanhoMaximo~log(Tabela_Merge_A_Variar_N$N))
summary(lr.out)#Como o R Squared é alto fazemos esta

#Exponencial
lr.out=lm(log(Tabela_Merge_A_Variar_N$TamanhoMaximo)~Tabela_Merge_A_Variar_N$N)
summary(lr.out)

#Quadrática
lr.out=lm(sqrt(Tabela_Merge_A_Variar_N$TamanhoMaximo)~Tabela_Merge_A_Variar_N$N)
summary(lr.out)

#Reciproca
lr.out=lm((1/Tabela_Merge_A_Variar_N$TamanhoMaximo)~Tabela_Merge_A_Variar_N$N)
summary(lr.out)

#Power
lr.out=lm(log(Tabela_Merge_A_Variar_N$TamanhoMaximo)~log(Tabela_Merge_A_Variar_N$N))
summary(lr.out)

#Traçar a curva 
#LINEAR
curve(6.479e+01 + 6.053e-04*x,1000,10000, ylim=c(0,200),main = "MergeSort com variação do N") #Linear
curve(44.6288 +2.8159 *log(x),1000,10000, ylim=c(0,200),main = "MergeSort com variação do N", add=TRUE) #Logaritmica dá o Rsquared mais elevado
curve(45.1*1.048^log(x), 1000,10000, ylim=c(0,200), main = "MergeSort com variação do N", add=TRUE) #Power
points(Tabela_Merge_A_Variar_N$TamanhoMaximo~Tabela_Merge_A_Variar_N$N)


#----Regreções para InsertionSort a variar o N

#Linear
lr.out=lm(Tabela_Insertion_A_Variar_N$TamanhoMaximo~Tabela_Insertion_A_Variar_N$N)
summary(lr.out)  

plot(Tabela_Insertion_A_Variar_N$TamanhoMaximo~Tabela_Insertion_A_Variar_N$N, log="x", ylim = c(0,100))
abline(lr.out)

#Logaritmica
lr.out=lm(Tabela_Insertion_A_Variar_N$TamanhoMaximo~log(Tabela_Insertion_A_Variar_N$N))
summary(lr.out)#Como o R Squared é alto fazemos esta

#Exponencial
lr.out=lm(log(Tabela_Insertion_A_Variar_N$TamanhoMaximo)~Tabela_Insertion_A_Variar_N$N)
summary(lr.out)

#Quadrática
lr.out=lm(sqrt(Tabela_Insertion_A_Variar_N$TamanhoMaximo)~Tabela_Insertion_A_Variar_N$N)
summary(lr.out)

#Reciproca
lr.out=lm((1/Tabela_Insertion_A_Variar_N$TamanhoMaximo)~Tabela_Insertion_A_Variar_N$N)
summary(lr.out)

#Power
lr.out=lm(log(Tabela_Insertion_A_Variar_N$TamanhoMaximo)~log(Tabela_Insertion_A_Variar_N$N))
summary(lr.out)

#Traçar a curva
  #Linear

curve(2.791e+01 + 8.137e-04*x, 1000,10000, ylim = c(0,100), main = "InsertionSort com variação do N")
#curve( 4.1499+3.3859*log(x),0,10000, main = "InsertionSort com variação do N") #logaritmica
points(Tabela_Insertion_A_Variar_N$TamanhoMaximo~Tabela_Insertion_A_Variar_N$N)



#---------------------------------------A VARIAR O EPS------------------------------------------------  



#----Regreções para o QuickSort a variar o EPS  

#Linear
lr.out=lm(Tabela_Quick_A_Variar_EPS$TamanhoMaximo~Tabela_Quick_A_Variar_EPS$Probabilidade)
summary(lr.out)

plot(Tabela_Quick_A_Variar_EPS$TamanhoMaximo~Tabela_Quick_A_Variar_EPS$Probabilidade, log="x")
abline(lr.out) #Da análise do gráfico parece uma logaritmica invertida

#Logaritmica
lr.out=lm(Tabela_Quick_A_Variar_EPS$TamanhoMaximo~log(Tabela_Quick_A_Variar_EPS$Probabilidade))
summary(lr.out) #R squared elevado

#Exponencial
lr.out=lm(log(Tabela_Quick_A_Variar_EPS$TamanhoMaximo)~Tabela_Quick_A_Variar_EPS$Probabilidade)
summary(lr.out)

#Quadratica
lr.out=lm(sqrt(Tabela_Quick_A_Variar_EPS$TamanhoMaximo)~Tabela_Quick_A_Variar_EPS$Probabilidade)
summary(lr.out)

#Reciproca
lr.out=lm((1/Tabela_Quick_A_Variar_EPS$TamanhoMaximo)~Tabela_Quick_A_Variar_EPS$Probabilidade)
summary(lr.out)
plot(1/Tabela_Quick_A_Variar_EPS$TamanhoMaximo~Tabela_Quick_A_Variar_EPS$Probabilidade)
abline(lr.out)

#Power
lr.out=lm(log(Tabela_Quick_A_Variar_EPS$TamanhoMaximo)~log(Tabela_Quick_A_Variar_EPS$Probabilidade))
summary(lr.out)

#Traçar a curva 
#Reciproca?
  #linear 
  curve(49.533-245.877*x, 0.0,0.20, main = "QuickSort com variação do EPS", ylim = c(0,130), col = "red")
  #exponencial
  curve(exp(3.12886-5.54249*x), 0.0, 0.20,add=TRUE, ylim = c(0,130), col = "green")
  #quadratica
  curve((4.78988-10.75780*x)^2, 0.0, 0.20, add=TRUE, ylim = c(0,130), , col = "blue")
  #reciproca
  curve(1/(0.0177057+0.4761530*x), 0.0,0.20, main = "QuickSort com variação do EPS",ylim = c(0,130), col = "black", y = "y")
  #logaritmica
  curve(-2.5342-6.3080*log(x), 0.0, 0.20, add=TRUE, ylim = c(0,130), col = "red")
  
  legend("top", legend=c("Função Reciproca", "Função Logaritmica"), lty=c(1,1), col=c("black","red"),lwd=1:1,bty="n")
  #power #exp(a)*exp(b)^log(x)
  curve(4.667*0.683^log(x), 0.0,0.20,add=TRUE, ylim = c(0,130))
  
  
  points(Tabela_Quick_A_Variar_EPS$TamanhoMaximo~Tabela_Quick_A_Variar_EPS$Probabilidade)


#----Regreções para BubbleSort a variar o EPS

#Linear
lr.out=lm(Tabela_Bubble_A_Variar_EPS$TamanhoMaximo~Tabela_Bubble_A_Variar_EPS$Probabilidade)
summary(lr.out)

plot(Tabela_Bubble_A_Variar_EPS$TamanhoMaximo~Tabela_Bubble_A_Variar_EPS$Probabilidade, log="x")
abline(lr.out) #Da análise deste fráfico vemos que se parece com uma função logaritmica, vamos tentar essa

#Logaritmica
lr.out=lm(Tabela_Bubble_A_Variar_EPS$TamanhoMaximo~log(Tabela_Bubble_A_Variar_EPS$Probabilidade))
summary(lr.out)

#Exponencial
lr.out=lm(log(Tabela_Bubble_A_Variar_EPS$TamanhoMaximo)~Tabela_Bubble_A_Variar_EPS$Probabilidade)
summary(lr.out)

#Quadrática
lr.out=lm(sqrt(Tabela_Bubble_A_Variar_EPS$TamanhoMaximo)~Tabela_Bubble_A_Variar_EPS$Probabilidade)
summary(lr.out)

#Reciproca
lr.out=lm((1/Tabela_Bubble_A_Variar_EPS$TamanhoMaximo)~Tabela_Bubble_A_Variar_EPS$Probabilidade)
summary(lr.out)

#Power
lr.out=lm(log(Tabela_Bubble_A_Variar_EPS$TamanhoMaximo)~log(Tabela_Bubble_A_Variar_EPS$Probabilidade))
summary(lr.out)


#Traçar a curva
#curve(-139.675-79.874*log(x),0,0.10, main = "BubbleSort com variação do EPS")

#linear 
curve(184.038-965.173*x, 0.01,0.20, main = "Bubble com variação do EPS", ylim = c(0,500), col = "red")
#exponencial
curve(exp(5.23255-11.49654*x), 0.01, 0.20,add=TRUE, ylim = c(0,200), col = "green")
#quadratica
curve((13.4560-49.7543*x)^2, 0.01, 0.20, add=TRUE, ylim = c(0,200), , col = "blue")
#reciproca
curve(1/(0.001796+0.211149*x), 0.01,0.20, add=TRUE, ylim = c(0,200), , col = "orange")
#logaritmica
curve(-103.489-70.499*log(x), 0.01, 0.20, add=TRUE, ylim = c(0,200), col = "purple")
#power #exp(a)*exp(b)^log(x)
curve(7.80*0.47^log(x), 0.01,0.20,add=TRUE, ylim = c(0,130))

#exponencial
curve(exp(5.23255-11.49654*x), 0.01, 0.20, main = "Bubble com variação do EPS",ylim = c(0,500))
#reciproca
curve(1/(0.001796+0.211149*x), 0.01,0.20,add=TRUE,ylim = c(0,500), col = "red")
legend("top", legend=c("Função Exponencial", "Função Reciproca"), lty=c(1,1), col=c("black","red"),lwd=1:1,bty="n")

#reciproca
points(Tabela_Bubble_A_Variar_EPS$TamanhoMaximo~Tabela_Bubble_A_Variar_EPS$Probabilidade)


#----Regreções para MergeSort a variar o EPS    O LOGARITMICO FICA MAS PRÓXIMO QUE O POWER, MAS O POWER FICA MAIS DISTANTE DOS PONTOS

#Linear
lr.out=lm(Tabela_Merge_A_Variar_EPS$TamanhoMaximo~Tabela_Merge_A_Variar_EPS$Probabilidade)
summary(lr.out)

plot(Tabela_Merge_A_Variar_EPS$TamanhoMaximo~Tabela_Merge_A_Variar_EPS$Probabilidade, log="x")
abline(lr.out) #Da análise deste fráfico vemos que se parece com uma função logaritmica, vamos tentar essa

#Logaritmica
lr.out=lm(Tabela_Merge_A_Variar_EPS$TamanhoMaximo~log(Tabela_Merge_A_Variar_EPS$Probabilidade))
summary(lr.out)

#Exponencial
lr.out=lm(log(Tabela_Merge_A_Variar_EPS$TamanhoMaximo)~Tabela_Merge_A_Variar_EPS$Probabilidade)
summary(lr.out)

#Quadratica
lr.out=lm(sqrt(Tabela_Merge_A_Variar_EPS$TamanhoMaximo)~Tabela_Merge_A_Variar_EPS$Probabilidade)
summary(lr.out)

#Reciproca
lr.out=lm((1/Tabela_Merge_A_Variar_EPS$TamanhoMaximo)~Tabela_Merge_A_Variar_EPS$Probabilidade)
summary(lr.out)

#Power
lr.out=lm(log(Tabela_Merge_A_Variar_EPS$TamanhoMaximo)~log(Tabela_Merge_A_Variar_EPS$Probabilidade))
summary(lr.out)

#Traçar a curva
#reciproca e log


#linear 
curve(46.381-237.735*x, 0.01,0.20, main = "Merge com variação do EPS", ylim = c(0,200), col = "red")
#exponencial
curve(exp(3.71949-9.42356*x), 0.01, 0.20,add=TRUE, ylim = c(0,200), col = "green")
#quadratica
curve((6.59732-22.56694*x)^2, 0.01, 0.20, add=TRUE, ylim = c(0,200), , col = "blue")
#reciproca
curve(1/(0.023793+0.532862*x), 0.01,0.20, add=TRUE, ylim = c(0,200), , col = "orange")
#logaritmica
curve(-27.789-18.613*log(x), 0.01, 0.20, add=TRUE, ylim = c(0,200), col = "purple")
#power #exp(a)*exp(b)^log(x)
curve(2.572*0.508^log(x), 0.01,0.20, add=TRUE,ylim = c(0,130))

#curve(0.3*exp(1)/x, 0.01,0.20,add=TRUE, ylim = c(0,130)) função que o professor disse


#reciproca
curve(1/(0.023793+0.532862*x), 0.01,0.20, main = "Merge com variação do EPS",ylim = c(0,200),ybal="y")
#logaritmica
curve(-27.789-18.613*log(x), 0.01, 0.20, add=TRUE, ylim = c(0,200), col="red")
legend("top", legend=c("Função Reciproca", "Função Logaritmica"), lty=c(1,1), col=c("black","red"),lwd=1:1,bty="n")

points(Tabela_Merge_A_Variar_EPS$TamanhoMaximo~Tabela_Merge_A_Variar_EPS$Probabilidade)#Os pontos não aparecem



#Regreções para InsertionSort a variar o EPS    

#Linear
lr.out=lm(Tabela_Insertion_A_Variar_EPS$TamanhoMaximo~Tabela_Insertion_A_Variar_EPS$Probabilidade)
summary(lr.out)  

plot(Tabela_Insertion_A_Variar_EPS$TamanhoMaximo~Tabela_Insertion_A_Variar_EPS$Probabilidade, log="x")
abline(lr.out)

#Logaritmica
lr.out=lm(Tabela_Insertion_A_Variar_EPS$TamanhoMaximo~log(Tabela_Insertion_A_Variar_EPS$Probabilidade))
summary(lr.out)#Como o R Squared é alto fazemos esta

#Exponencial
lr.out=lm(log(Tabela_Insertion_A_Variar_EPS$TamanhoMaximo)~Tabela_Insertion_A_Variar_EPS$Probabilidade)
summary(lr.out)

#Quadratico
lr.out=lm(sqrt(Tabela_Insertion_A_Variar_EPS$TamanhoMaximo)~Tabela_Insertion_A_Variar_EPS$Probabilidade)
summary(lr.out)

#Reciproca
lr.out=lm((1/Tabela_Insertion_A_Variar_EPS$TamanhoMaximo)~Tabela_Insertion_A_Variar_EPS$Probabilidade)
summary(lr.out)

#Power
lr.out=lm(log(Tabela_Insertion_A_Variar_EPS$TamanhoMaximo)~log(Tabela_Insertion_A_Variar_EPS$Probabilidade))
summary(lr.out)

#Traçar a curva

#LOGARITMICA

#linear 
curve(23.1801-86.2366*x, 0.01,0.20, main = "Insertion com variação do EPS", ylim = c(0,50), col = "red")
#exponencial
curve(exp(3.12886 -5.54249*x), 0.01, 0.20,add=TRUE, ylim = c(0,50), col = "green")
#quadratica
curve((4.78988 -10.75780*x)^2, 0.01, 0.20, add=TRUE, ylim = c(0,50), , col = "blue")
#reciproca
curve(1/(0.042599 +0.402548*x), 0.01,0.20, add=TRUE, ylim = c(0,50), , col = "orange")
#logaritmica
curve(-2.5342-6.3080 *log(x), 0.01, 0.20, add=TRUE, ylim = c(0,50), col = "purple")
#power #exp(a)*exp(b)^log(x)
curve(4.667*0.682^log(x), 0.01,0.20,add=TRUE, ylim = c(0,50))



#reciproca
curve(1/(0.042599 +0.402548*x), 0.01,0.20, main = "Insertion com variação do EPS", yval="y", ylim = c(0,80))
#logaritmica
curve(-2.5342-6.3080 *log(x), 0.01, 0.20, add=TRUE, ylim = c(0,50), col = "red")

legend("top", legend=c("Função Reciproca", "Função Logaritmica"), lty=c(1,1), col=c("black","red"),lwd=1:1,bty="n")


points(Tabela_Insertion_A_Variar_EPS$TamanhoMaximo~Tabela_Insertion_A_Variar_EPS$Probabilidade)



#regreções no mesmo gráfico, a variar N


#regreções no mesmo gráfico, a variar EPS



