#Ver melhor todas mas principalmete a merge a variar o N


#-----------------------------------------------TESTE PARA FAZER COM TODOS SEM SER COM AS MÉDIAS----------------------------------------------------------------------------------------
lr.out = lm(Tabela_Bubble_A_Variar_N$TamanhoMaximo~Tabela_Bubble_A_Variar_N$N)
summary(lr.out)

plot(Tabela_Bubble_A_Variar_N$TamanhoMaximo~Tabela_Bubble_A_Variar_N$N)
abline(lr.out)

#Logaritmica
lr.out=lm(Tabela_Bubble_A_Variar_N$TamanhoMaximo~log(Tabela_Bubble_A_Variar_N$N))
summary(lr.out) #Como o R Squared é alto fazemos esta

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

curve(2.57946 * (x ^ 0.41364 ),0,10000, main = "MergeSort com variação do EPS")
points(Tabela_Bubble_A_Variar_N$TamanhoMaximo~Tabela_Bubble_A_Variar_N$N)

#---------------------------------------------------------------------------------------------------------------------------------------


#---------------------------------------A VARIAR O N------------------------------------------------

#----Regreções para o QuickSort a variar o N
  
  #Linear
  lr.out=lm(Tabela_Medias_Quick_A_Variar_N$TamanhoMaximo~Tabela_Medias_Quick_A_Variar_N$N)
  summary(lr.out)
  
  plot(Tabela_Medias_Quick_A_Variar_N$TamanhoMaximo~Tabela_Medias_Quick_A_Variar_N$N)
  abline(lr.out) #Da análise deste fráfico vemos que se parece com uma função logaritmica, vamos tentar essa
  
  #Logaritmica
  lr.out=lm(Tabela_Medias_Quick_A_Variar_N$TamanhoMaximo~log(Tabela_Medias_Quick_A_Variar_N$N))
  summary(lr.out) #Como o R Squared é alto fazemos esta
  
  #Exponencial
  lr.out=lm(log(Tabela_Medias_Quick_A_Variar_N$TamanhoMaximo)~Tabela_Medias_Quick_A_Variar_N$N)
  summary(lr.out)
  
  #Quadrática
  lr.out=lm(sqrt(Tabela_Medias_Quick_A_Variar_N$TamanhoMaximo)~Tabela_Medias_Quick_A_Variar_N$N)
  summary(lr.out)
  
  #Reciproca
  lr.out=lm((1/Tabela_Medias_Quick_A_Variar_N$TamanhoMaximo)~Tabela_Medias_Quick_A_Variar_N$N)
  summary(lr.out)
  
  #Power
  lr.out=lm(log(Tabela_Medias_Quick_A_Variar_N$TamanhoMaximo)~log(Tabela_Medias_Quick_A_Variar_N$N))
  summary(lr.out)
  
  #Traçar a curva
  curve(-18.7723+12.0918*log(x), 0, 10000, main = "QuickSort com variação do N")
  points(Tabela_Medias_Quick_A_Variar_N$TamanhoMaximo~Tabela_Medias_Quick_A_Variar_N$N)

  
#----Regreções para BubbleSort a variar o N
  
  #Linear
  lr.out=lm(Tabela_Medias_Bubble_A_Variar_N$TamanhoMaximo~Tabela_Medias_Bubble_A_Variar_N$N)
  summary(lr.out)
  
  plot(Tabela_Medias_Bubble_A_Variar_N$TamanhoMaximo~Tabela_Medias_Bubble_A_Variar_N$N)
  abline(lr.out) #Da análise deste fráfico vemos que se parece com uma função logaritmica, vamos tentar essa
  
  #Logaritmica
  lr.out=lm(Tabela_Medias_Bubble_A_Variar_N$TamanhoMaximo~log(Tabela_Medias_Bubble_A_Variar_N$N))
  summary(lr.out)#Como o R Squared é alto fazemos esta
  
  #Exponencial
  lr.out=lm(log(Tabela_Medias_Bubble_A_Variar_N$TamanhoMaximo)~Tabela_Medias_Bubble_A_Variar_N$N)
  summary(lr.out)
  
  #Quadrática
  lr.out=lm(sqrt(Tabela_Medias_Bubble_A_Variar_N$TamanhoMaximo)~Tabela_Medias_Bubble_A_Variar_N$N)
  summary(lr.out)
  
  #Reciproca
  lr.out=lm((1/Tabela_Medias_Bubble_A_Variar_N$TamanhoMaximo)~Tabela_Medias_Bubble_A_Variar_N$N)
  summary(lr.out)
  
  #Power
  lr.out=lm(log(Tabela_Medias_Bubble_A_Variar_N$TamanhoMaximo)~log(Tabela_Medias_Bubble_A_Variar_N$N))
  summary(lr.out)
  
  #Traçar a curva
  curve(-857.03+157.94*log(x),0,10000, main = "BubbleSort com variação do N")
  points(Tabela_Medias_Bubble_A_Variar_N$TamanhoMaximo~Tabela_Medias_Bubble_A_Variar_N$N)


#----Regreções para MergeSort a variar o N
  
  #Linear
  lr.out=lm(Tabela_Medias_Merge_A_Variar_N$TamanhoMaximo~Tabela_Medias_Merge_A_Variar_N$N)
  summary(lr.out)
  
  plot(Tabela_Medias_Merge_A_Variar_N$TamanhoMaximo~Tabela_Medias_Merge_A_Variar_N$N)
  abline(lr.out) #Da análise deste fráfico vemos que se parece com uma função logaritmica, vamos tentar essa
  
  #Logaritmica
  lr.out=lm(Tabela_Medias_Merge_A_Variar_N$TamanhoMaximo~log(Tabela_Medias_Merge_A_Variar_N$N))
  summary(lr.out)#Como o R Squared é alto fazemos esta
  
  #Exponencial
  lr.out=lm(log(Tabela_Medias_Merge_A_Variar_N$TamanhoMaximo)~Tabela_Medias_Merge_A_Variar_N$N)
  summary(lr.out)
  
  #Quadrática
  lr.out=lm(sqrt(Tabela_Medias_Merge_A_Variar_N$TamanhoMaximo)~Tabela_Medias_Merge_A_Variar_N$N)
  summary(lr.out)
  
  #Reciproca
  lr.out=lm((1/Tabela_Medias_Merge_A_Variar_N$TamanhoMaximo)~Tabela_Medias_Merge_A_Variar_N$N)
  summary(lr.out)
  
  #Power
  lr.out=lm(log(Tabela_Medias_Merge_A_Variar_N$TamanhoMaximo)~log(Tabela_Medias_Merge_A_Variar_N$N))
  summary(lr.out)
  
  #Traçar a curva
  curve(44.6288 +2.8159 *log(x),0,10000, main = "MergeSort com variação do N") #Logaritmica dá o Rsquared mais elevado
  points(Tabela_Medias_Merge_A_Variar_N$TamanhoMaximo~Tabela_Medias_Merge_A_Variar_N$N)
  
  
#----Regreções para InsertionSort a variar o N
  
  #Linear
  lr.out=lm(Tabela_Medias_Insertion_A_Variar_N$TamanhoMaximo~Tabela_Medias_Insertion_A_Variar_N$N)
  summary(lr.out)  
  
  plot(Tabela_Medias_Insertion_A_Variar_N$TamanhoMaximo~Tabela_Medias_Insertion_A_Variar_N$N)
  abline(lr.out)
  
  #Logaritmica
  lr.out=lm(Tabela_Medias_Insertion_A_Variar_N$TamanhoMaximo~log(Tabela_Medias_Insertion_A_Variar_N$N))
  summary(lr.out)#Como o R Squared é alto fazemos esta
  
  #Exponencial
  lr.out=lm(log(Tabela_Medias_Insertion_A_Variar_N$TamanhoMaximo)~Tabela_Medias_Insertion_A_Variar_N$N)
  summary(lr.out)
  
  #Quadrática
  lr.out=lm(sqrt(Tabela_Medias_Insertion_A_Variar_N$TamanhoMaximo)~Tabela_Medias_Insertion_A_Variar_N$N)
  summary(lr.out)
  
  #Reciproca
  lr.out=lm((1/Tabela_Medias_Insertion_A_Variar_N$TamanhoMaximo)~Tabela_Medias_Insertion_A_Variar_N$N)
  summary(lr.out)
  
  #Power
  lr.out=lm(log(Tabela_Medias_Insertion_A_Variar_N$TamanhoMaximo)~log(Tabela_Medias_Insertion_A_Variar_N$N))
  summary(lr.out)
  
  #Traçar a curva
  curve( 4.1499+3.3859*log(x),0,10000, main = "InsertionSort com variação do N")
  points(Tabela_Medias_Insertion_A_Variar_N$TamanhoMaximo~Tabela_Medias_Insertion_A_Variar_N$N)


    
#---------------------------------------A VARIAR O EPS------------------------------------------------  

  
  
#----Regreções para o QuickSort a variar o EPS    VER MELHOR ESTA ENTRE POWER E LOGARITMICA
  
  #Linear
  lr.out=lm(Tabela_Medias_Quick_A_Variar_EPS$TamanhoMaximo~Tabela_Medias_Quick_A_Variar_EPS$Probabilidade)
  summary(lr.out)
  
  plot(Tabela_Medias_Quick_A_Variar_EPS$TamanhoMaximo~Tabela_Medias_Quick_A_Variar_EPS$Probabilidade)
  abline(lr.out) #Da análise do gráfico parece uma logaritmica invertida
  
  #Logaritmica
  lr.out=lm(Tabela_Medias_Insertion_A_Variar_EPS$TamanhoMaximo~log(Tabela_Medias_Insertion_A_Variar_EPS$Probabilidade))
  summary(lr.out) #R squared elevado
  
  #Exponencial
  lr.out=lm(log(Tabela_Medias_Insertion_A_Variar_EPS$TamanhoMaximo)~Tabela_Medias_Insertion_A_Variar_EPS$Probabilidade)
  summary(lr.out)
  
  #Quadratica
  lr.out=lm(sqrt(Tabela_Medias_Insertion_A_Variar_EPS$TamanhoMaximo)~Tabela_Medias_Insertion_A_Variar_EPS$Probabilidade)
  summary(lr.out)
  
  #Reciproca
  lr.out=lm((1/Tabela_Medias_Insertion_A_Variar_EPS$TamanhoMaximo)~Tabela_Medias_Insertion_A_Variar_EPS$Probabilidade)
  summary(lr.out)
  
  #Power
  lr.out=lm(log(Tabela_Medias_Insertion_A_Variar_EPS$TamanhoMaximo)~log(Tabela_Medias_Insertion_A_Variar_EPS$Probabilidade))
  summary(lr.out)
  
  #Traçar a curva
  #curve( -5.5562-7.0903*log(x),0,0.10, main = "QuickSort com variação do EPS")
  curve( 1.553382 * (x ^ -0.381279),0,0.10, main = "QuickSort com variação do EPS")
  points(Tabela_Medias_Quick_A_Variar_EPS$TamanhoMaximo~Tabela_Medias_Quick_A_Variar_EPS$Probabilidade)#Um ponto não aparece
  
  
#----Regreções para BubbleSort a variar o EPS
  
  #Linear
  lr.out=lm(Tabela_Medias_Bubble_A_Variar_EPS$TamanhoMaximo~Tabela_Medias_Bubble_A_Variar_EPS$Probabilidade)
  summary(lr.out)
  
  plot(Tabela_Medias_Bubble_A_Variar_EPS$TamanhoMaximo~Tabela_Medias_Bubble_A_Variar_EPS$Probabilidade)
  abline(lr.out) #Da análise deste fráfico vemos que se parece com uma função logaritmica, vamos tentar essa
  
  #Logaritmica
  lr.out=lm(Tabela_Medias_Bubble_A_Variar_EPS$TamanhoMaximo~log(Tabela_Medias_Bubble_A_Variar_EPS$Probabilidade))
  summary(lr.out)#Como o R Squared é alto fazemos esta
  
  #Exponencial
  lr.out=lm(log(Tabela_Medias_Bubble_A_Variar_EPS$TamanhoMaximo)~Tabela_Medias_Bubble_A_Variar_EPS$Probabilidade)
  summary(lr.out)
  
  #Quadrática
  lr.out=lm(sqrt(Tabela_Medias_Bubble_A_Variar_EPS$TamanhoMaximo)~Tabela_Medias_Bubble_A_Variar_EPS$Probabilidade)
  summary(lr.out)
  
  #Reciproca
  lr.out=lm((1/Tabela_Medias_Bubble_A_Variar_EPS$TamanhoMaximo)~Tabela_Medias_Bubble_A_Variar_EPS$Probabilidade)
  summary(lr.out)
  
  #Power
  lr.out=lm(log(Tabela_Medias_Bubble_A_Variar_EPS$TamanhoMaximo)~log(Tabela_Medias_Bubble_A_Variar_EPS$Probabilidade))
  summary(lr.out)
  
  
  #Traçar a curva
  curve(-139.675-79.874*log(x),0,0.10, main = "BubbleSort com variação do EPS")
  points(Tabela_Medias_Bubble_A_Variar_EPS$TamanhoMaximo~Tabela_Medias_Bubble_A_Variar_EPS$Probabilidade)#Os pontos não aparecem
  
  
#----Regreções para MergeSort a variar o EPS    O LOGARITMICO FICA MAS PRÓXIMO QUE O POWER, MAS O POWER FICA MAIS DISTANTE DOS PONTOS
  
  #Linear
  lr.out=lm(Tabela_Medias_Merge_A_Variar_EPS$TamanhoMaximo~Tabela_Medias_Merge_A_Variar_EPS$Probabilidade)
  summary(lr.out)
  
  plot(Tabela_Medias_Merge_A_Variar_EPS$TamanhoMaximo~Tabela_Medias_Merge_A_Variar_EPS$Probabilidade)
  abline(lr.out) #Da análise deste fráfico vemos que se parece com uma função logaritmica, vamos tentar essa
  
  #Logaritmica
  lr.out=lm(Tabela_Medias_Merge_A_Variar_EPS$TamanhoMaximo~log(Tabela_Medias_Merge_A_Variar_EPS$Probabilidade))
  summary(lr.out)#Como o R Squared é alto fazemos esta
  
  #Exponencial
  lr.out=lm(log(Tabela_Medias_Merge_A_Variar_EPS$TamanhoMaximo)~Tabela_Medias_Merge_A_Variar_EPS$Probabilidade)
  summary(lr.out)
  
  #Quadratica
  lr.out=lm(sqrt(Tabela_Medias_Merge_A_Variar_EPS$TamanhoMaximo)~Tabela_Medias_Merge_A_Variar_EPS$Probabilidade)
  summary(lr.out)
  
  #Reciproca
  lr.out=lm((1/Tabela_Medias_Merge_A_Variar_EPS$TamanhoMaximo)~Tabela_Medias_Merge_A_Variar_EPS$Probabilidade)
  summary(lr.out)
  
  #Power
  lr.out=lm(log(Tabela_Medias_Merge_A_Variar_EPS$TamanhoMaximo)~log(Tabela_Medias_Merge_A_Variar_EPS$Probabilidade))
  summary(lr.out)
  
  #Traçar a curva
  #curve(-46.302-23.391*log(x),0,0.10, main = "MergeSort com variação do EPS") #Logaritmica
  curve(1/(0.01146+0.76888*x),0,0.10, main = "MergeSort com variação do EPS") #Reciproca
  #curve(0.71146 * (x ^ -0.74247),0,0.10, main = "MergeSort com variação do EPS") #Power
  points(Tabela_Medias_Merge_A_Variar_EPS$TamanhoMaximo~Tabela_Medias_Merge_A_Variar_EPS$Probabilidade)#Os pontos não aparecem
  
  
#Regreções para InsertionSort a variar o EPS    O LOGARITMICO FICA MAS PRÓXIMO QUE O POWER, MAS O POWER FICA MAIS DISTANTE DOS PONTOS
  
  
  #Linear
  lr.out=lm(Tabela_Medias_Insertion_A_Variar_EPS$TamanhoMaximo~Tabela_Medias_Insertion_A_Variar_EPS$Probabilidade)
  summary(lr.out)  
  
  plot(Tabela_Medias_Insertion_A_Variar_EPS$TamanhoMaximo~Tabela_Medias_Insertion_A_Variar_EPS$Probabilidade)
  abline(lr.out)
  
  #Logaritmica
  lr.out=lm(Tabela_Medias_Insertion_A_Variar_EPS$TamanhoMaximo~log(Tabela_Medias_Insertion_A_Variar_EPS$Probabilidade))
  summary(lr.out)#Como o R Squared é alto fazemos esta
  
  #Exponencial
  lr.out=lm(log(Tabela_Medias_Insertion_A_Variar_EPS$TamanhoMaximo)~Tabela_Medias_Insertion_A_Variar_EPS$Probabilidade)
  summary(lr.out)
  
  #Quadratico
  lr.out=lm(sqrt(Tabela_Medias_Insertion_A_Variar_EPS$TamanhoMaximo)~Tabela_Medias_Insertion_A_Variar_EPS$Probabilidade)
  summary(lr.out)
  
  #Reciproca
  lr.out=lm((1/Tabela_Medias_Insertion_A_Variar_EPS$TamanhoMaximo)~Tabela_Medias_Insertion_A_Variar_EPS$Probabilidade)
  summary(lr.out)
  
  #Power
  lr.out=lm(log(Tabela_Medias_Insertion_A_Variar_EPS$TamanhoMaximo)~log(Tabela_Medias_Insertion_A_Variar_EPS$Probabilidade))
  summary(lr.out)
  
  #Traçar a curva
  curve( -5.5562-7.0903*log(x),0,0.10, main = "InsertionSort com variação do EPS") #Logaritmica
  curve(1.553382 * x^-0.381279 ,0,0.10, main = "InsertionSort com variação do EPS") #Power
  points(Tabela_Medias_Insertion_A_Variar_EPS$TamanhoMaximo~Tabela_Medias_Insertion_A_Variar_EPS$Probabilidade)
  
  
  
  
#regreções no mesmo gráfico, a variar N
  
  
#regreções no mesmo gráfico, a variar EPS
  
  
    
  