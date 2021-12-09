#Librarias
library(sciplot)
library(ggplot2)

#Interações entre Quick, Merge e InsertionSort EPS = 1/ N, EPS = 5/N e EPS = 10/ N com N =1000, maxr = N/2?

boxplot(TamanhoMaximo~EPS, data = Tabela_A_Variar_EPS_Global)
boxplot(TamanhoMaximo~Algoritmo, data = Tabela_A_Variar_EPS_Global)

#Gráfico de interação com intervalos de confiança

df<-with(Tabela_A_Variar_EPS_Global, aggregate(TamanhoMaximo, list(Algoritmo=Algoritmo, EPS=EPS), mean))
df$se<-with(Tabela_A_Variar_EPS_Global, aggregate(TamanhoMaximo, list(Algoritmo=Algoritmo, EPS=EPS), function(x) sd(x)/sqrt(10)))[,3]
gp<-ggplot(df, aes(x=EPS, y=x, colour=Algoritmo, group=Algoritmo))
gp+geom_line(aes(linetype=Algoritmo)) + geom_point(aes(shape=Algoritmo)) + geom_errorbar(aes(ymax=x+se, ymin=x-se))



#Two-way ANOVA

#Sem interação
aov.out = aov(TamanhoMaximo ~ Algoritmo+EPS, data = Tabela_A_Variar_EPS_Global)
summary(aov.out)

#Two-way ANOVA
#Com interação
aov.out = aov(TamanhoMaximo ~ Algoritmo*EPS, data = Tabela_A_Variar_EPS_Global)
summary(aov.out)

qqnorm(aov.out$res)
qqline(aov.out$res)
plot(aov.out)
#qqplot(aov.out)



#Shapiro test
shapiro.test(aov.out$res)

#Bartlett Test
bartlett.test(TamanhoMaximo~interaction(Algoritmo,EPS), data=Tabela_A_Variar_EPS_Global)
 
#Não usamos pois os pressupostos não são satisfeitos
t = TukeyHSD(aov.out,alternative="two.sided")
print(t)

#Teste não paramétrico
aov.out = aov(TamanhoMaximo~Algoritmo*EPS, data=Tabela_A_Variar_EPS_Global)
FA = summary(aov.out)[[1]]$F[1]
FE = summary(aov.out)[[1]]$F[2]
FAE = summary(aov.out)[[1]]$F[3]
pvalueA = 0 # p-value for System
pvalueE = 0 # p-value for Programmer
pvalueAE = 0 # p-value for interaction
for (i in 1:5000){
  Tabela_A_Variar_EPS_Global$Tamanho = sample(Tabela_A_Variar_EPS_Global$TamanhoMaximo)
  aov.out = aov(Tamanho~Algoritmo*EPS, data=Tabela_A_Variar_EPS_Global)
  pFA = summary(aov.out)[[1]]$F[1]
  pFE = summary(aov.out)[[1]]$F[2]
  pFAE = summary(aov.out)[[1]]$F[3]
  if (pFA >= FA)
    pvalueA = pvalueA + 1
  if (pFE >= FE)
    pvalueP = pvalueP + 1
  if (pFAE >= FAE)
    pvalueAE = pvalueAE + 1
}
print(pvalueA/5000)
print(pvalueE/5000)
print(pvalueAE/5000)



#Interações entre Quick, Merge e InsertionSort N = 1000,3000,6000?

boxplot(TamanhoMaximo~N, data = Tabela_A_Variar_N_Global)
boxplot(TamanhoMaximo~Algoritmo, data = Tabela_A_Variar_N_Global)



#Gráfico de interação com intervalos de confiança

df<-with(Tabela_A_Variar_N_Global, aggregate(TamanhoMaximo, list(Algoritmo=Algoritmo, N=N), mean))
df$se<-with(Tabela_A_Variar_N_Global, aggregate(TamanhoMaximo, list(Algoritmo=Algoritmo, N=N), function(x) sd(x)/sqrt(10)))[,3]
gp<-ggplot(df, aes(x=N, y=x, colour=Algoritmo, group=Algoritmo))
gp+geom_line(aes(linetype=Algoritmo)) + geom_point(aes(shape=Algoritmo)) + geom_errorbar(aes(ymax=x+se, ymin=x-se))



#Two-way ANOVA
#Sem interação
aov.out = aov(TamanhoMaximo ~ N+Algoritmo, data = Tabela_A_Variar_N_Global)
summary(aov1.out)
#Com interação
aov.out = aov(TamanhoMaximo ~ N*Algoritmo, data = Tabela_A_Variar_N_Global)
summary(aov.out)


qqnorm(aov.out$res)
qqline(aov.out$res)

#Shapiro Test
shapiro.test(aov1.out$res)

#Bartlett Test
bartlett.test(TamanhoMaximo~interaction(Algoritmo,N), data=Tabela_A_Variar_N_Global)

#Não usamos pois os pressupostos não são satisfeitos
t = TukeyHSD(aov1.out,alternative="two.sided")
print(t)



#Teste não paramétrico
aov.out = aov(TamanhoMaximo~Algoritmo*N, data=Tabela_A_Variar_N_Global)
FA = summary(aov.out)[[1]]$F[1]
FN = summary(aov.out)[[1]]$F[2]
FAN = summary(aov.out)[[1]]$F[3]
pvalueA = 0 # p-value for System
pvalueN = 0 # p-value for Programmer
pvalueAN = 0 # p-value for interaction
for (i in 1:5000){
  Tabela_A_Variar_N_Global$Tamanho = sample(Tabela_A_Variar_N_Global$TamanhoMaximo)
  aov.out = aov(Tamanho~Algoritmo*N, data=Tabela_A_Variar_N_Global)
  pFA = summary(aov.out)[[1]]$F[1]
  pFN = summary(aov.out)[[1]]$F[2]
  pFAN = summary(aov.out)[[1]]$F[3]
  if (pFA >= FA)
    pvalueA = pvalueA + 1
  if (pFN >= FN)
    pvalueN = pvalueN + 1
  if (pFAN >= FAN)
    pvalueAN = pvalueAN + 1
}
print(pvalueA/5000)
print(pvalueN/5000)
print(pvalueAN/5000)

