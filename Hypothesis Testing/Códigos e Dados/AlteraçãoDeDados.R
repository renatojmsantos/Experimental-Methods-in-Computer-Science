Nome_Q = "QuickSort"
Nome_M = "MergeSort"
Nome_B = "BubbleSort"
Nome_I = "InsertionSort"


#Alteração Dos Ficheiros Inicais

m_Q_1000_1_N.2_aux1 <- c(as.character(m_Q_1000_1_N.2$V1[1400:1500]))
m_Q_1000_1_N.2_aux2 <- c(as.character(m_Q_1000_1_N.2$V2[1400:1500]))
m_Q_1000_1_N.2_aux3 <- c(m_Q_1000_1_N.2$V3[1400:1500])
m_Q_1000_1_N.2 = data.frame(EPS = m_Q_1000_1_N.2_aux1, N = m_Q_1000_1_N.2_aux2, TamanhoMaximo=m_Q_1000_1_N.2_aux3, Algoritmo = Nome_Q)

m_Q_1000_5_N.2_aux1 <- c(as.character(m_Q_1000_5_N.2$V1[1400:1500]))
m_Q_1000_5_N.2_aux2 <- c(as.character(m_Q_1000_5_N.2$V2[1400:1500]))
m_Q_1000_5_N.2_aux3 <- c(m_Q_1000_5_N.2$V3[1400:1500])
m_Q_1000_5_N.2 = data.frame(EPS = m_Q_1000_5_N.2_aux1, N = m_Q_1000_5_N.2_aux2, TamanhoMaximo=m_Q_1000_5_N.2_aux3, Algoritmo = Nome_Q)

m_Q_1000_10_N.2_aux1 <- c(as.character(m_Q_1000_10_N.2$V1[1400:1500]))
m_Q_1000_10_N.2_aux2 <- c(as.character(m_Q_1000_10_N.2$V2[1400:1500]))
m_Q_1000_10_N.2_aux3 <- c(m_Q_1000_10_N.2$V3[1400:1500])
m_Q_1000_10_N.2 = data.frame(EPS = m_Q_1000_10_N.2_aux1, N = m_Q_1000_10_N.2_aux2, TamanhoMaximo=m_Q_1000_10_N.2_aux3, Algoritmo = Nome_Q)


m_M_1000_1_N.2_aux1 <- c(as.character(m_M_1000_1_N.2$V1[500:600]))
m_M_1000_1_N.2_aux2 <- c(as.character(m_M_1000_1_N.2$V2[500:600]))
m_M_1000_1_N.2_aux3 <- c(m_M_1000_1_N.2$V3[500:600])
m_M_1000_1_N.2 = data.frame(EPS = m_M_1000_1_N.2_aux1, N = m_M_1000_1_N.2_aux2, TamanhoMaximo=m_M_1000_1_N.2_aux3, Algoritmo = Nome_M)


m_M_1000_5_N.2_aux1 <- c(as.character(m_M_1000_5_N.2$V1[1400:1500]))
m_M_1000_5_N.2_aux2 <- c(as.character(m_M_1000_5_N.2$V2[1400:1500]))
m_M_1000_5_N.2_aux3 <- c(m_M_1000_5_N.2$V3[1400:1500])
m_M_1000_5_N.2 = data.frame(EPS = m_M_1000_5_N.2_aux1, N = m_M_1000_5_N.2_aux2, TamanhoMaximo=m_M_1000_5_N.2_aux3, Algoritmo = Nome_M)


m_M_1000_10_N.2_aux1 <- c(as.character(m_M_1000_10_N.2$V1[1300:1400]))
m_M_1000_10_N.2_aux2 <- c(as.character(m_M_1000_10_N.2$V2[1300:1400]))
m_M_1000_10_N.2_aux3 <- c(m_M_1000_10_N.2$V3[1300:1400])
m_M_1000_10_N.2 = data.frame(EPS = m_M_1000_10_N.2_aux1, N = m_M_1000_10_N.2_aux2, TamanhoMaximo=m_M_1000_10_N.2_aux3, Algoritmo = Nome_M)


m_B_1000_1_N.2_aux1 <- c(as.character(m_B_1000_1_N.2$V1[1300:1400]))
m_B_1000_1_N.2_aux2 <- c(as.character(m_B_1000_1_N.2$V2[1300:1400]))
m_B_1000_1_N.2_aux3 <- c(m_B_1000_1_N.2$V3[1300:1400])
m_B_1000_1_N.2 = data.frame(EPS = m_B_1000_1_N.2_aux1, N = m_B_1000_1_N.2_aux2, TamanhoMaximo=m_B_1000_1_N.2_aux3, Algoritmo = Nome_B)


m_B_1000_5_N.2_aux1 <- c(as.character(m_B_1000_5_N.2$V1[1300:1400]))
m_B_1000_5_N.2_aux2 <- c(as.character(m_B_1000_5_N.2$V2[1300:1400]))
m_B_1000_5_N.2_aux3 <- c(m_B_1000_5_N.2$V3[1300:1400])
m_B_1000_5_N.2 = data.frame(EPS = m_B_1000_5_N.2_aux1, N = m_B_1000_5_N.2_aux2, TamanhoMaximo=m_B_1000_5_N.2_aux3, Algoritmo = Nome_B)


m_B_1000_10_N.2_aux1 <- c(as.character(m_B_1000_10_N.2$V1[1400:1500]))
m_B_1000_10_N.2_aux2 <- c(as.character(m_B_1000_10_N.2$V2[1400:1500]))
m_B_1000_10_N.2_aux3 <- c(m_B_1000_10_N.2$V3[1400:1500])
m_B_1000_10_N.2 = data.frame(EPS = m_B_1000_10_N.2_aux1, N = m_B_1000_10_N.2_aux2, TamanhoMaximo=m_B_1000_10_N.2_aux3, Algoritmo = Nome_B)


m_I_1000_1_N.2_aux1 <- c(as.character(m_I_1000_1_N.2$V1[1:100]))
m_I_1000_1_N.2_aux2 <- c(as.character(m_I_1000_1_N.2$V2[1:100]))
m_I_1000_1_N.2_aux3 <- c(m_I_1000_1_N.2$V3[1:100])
m_I_1000_1_N.2 = data.frame(EPS = m_I_1000_1_N.2_aux1, N = m_I_1000_1_N.2_aux2, TamanhoMaximo=m_I_1000_1_N.2_aux3, Algoritmo = Nome_I)

m_I_1000_5_N.2_aux1 <- c(as.character(m_I_1000_5_N.2$V1[1:100]))
m_I_1000_5_N.2_aux2 <- c(as.character(m_I_1000_5_N.2$V2[1:100]))
m_I_1000_5_N.2_aux3 <- c(m_I_1000_5_N.2$V3[1:100])
m_I_1000_5_N.2 = data.frame(EPS = m_I_1000_5_N.2_aux1, N = m_I_1000_5_N.2_aux2, TamanhoMaximo=m_I_1000_5_N.2_aux3, Algoritmo = Nome_I)

m_I_1000_10_N.2_aux1 <- c(as.character(m_I_1000_10_N.2$V1[1:100]))
m_I_1000_10_N.2_aux2 <- c(as.character(m_I_1000_10_N.2$V2[1:100]))
m_I_1000_10_N.2_aux3 <- c(m_I_1000_10_N.2$V3[1:100])
m_I_1000_10_N.2 = data.frame(EPS = m_I_1000_10_N.2_aux1, N = m_I_1000_10_N.2_aux2, TamanhoMaximo=m_I_1000_10_N.2_aux3, Algoritmo = Nome_I)

m_Q_3000_1_N.2_aux1 <- c(as.character(m_Q_3000_1_N.2$V1[1100:1200]))
m_Q_3000_1_N.2_aux2 <- c(as.character(m_Q_3000_1_N.2$V2[1100:1200]))
m_Q_3000_1_N.2_aux3 <- c(m_Q_3000_1_N.2$V3[1100:1200])
m_Q_3000_1_N.2 = data.frame(EPS = m_Q_3000_1_N.2_aux1, N = m_Q_3000_1_N.2_aux2, TamanhoMaximo=m_Q_3000_1_N.2_aux3, Algoritmo = Nome_Q)

m_Q_6000_1_N.2_aux1 <- c(as.character(m_Q_6000_1_N.2$V1[1:100]))
m_Q_6000_1_N.2_aux2 <- c(as.character(m_Q_6000_1_N.2$V2[1:100]))
m_Q_6000_1_N.2_aux3 <- c(m_Q_6000_1_N.2$V3[1:100])
m_Q_6000_1_N.2 = data.frame(EPS = m_Q_6000_1_N.2_aux1, N = m_Q_6000_1_N.2_aux2, TamanhoMaximo=m_Q_6000_1_N.2_aux3, Algoritmo = Nome_Q)

m_Q_8000_1_N.2_aux1 <- c(as.character(m_Q_8000_1_N.2$V1[1:100]))
m_Q_8000_1_N.2_aux2 <- c(as.character(m_Q_8000_1_N.2$V2[1:100]))
m_Q_8000_1_N.2_aux3 <- c(m_Q_8000_1_N.2$V3[1:100])
m_Q_8000_1_N.2 = data.frame(EPS = m_Q_8000_1_N.2_aux1, N = m_Q_8000_1_N.2_aux2, TamanhoMaximo=m_Q_8000_1_N.2_aux3, Algoritmo = Nome_Q)

m_M_3000_1_N.2_aux1 <- c(as.character(m_M_3000_1_N.2$V1[1:100]))
m_M_3000_1_N.2_aux2 <- c(as.character(m_M_3000_1_N.2$V2[1:100]))
m_M_3000_1_N.2_aux3 <- c(m_M_3000_1_N.2$V3[1:100])
m_M_3000_1_N.2 = data.frame(EPS = m_M_3000_1_N.2_aux1, N = m_M_3000_1_N.2_aux2, TamanhoMaximo=m_M_3000_1_N.2_aux3, Algoritmo = Nome_M)

m_M_6000_1_N.2_aux1 <- c(as.character(m_M_6000_1_N.2$V1[1:100]))
m_M_6000_1_N.2_aux2 <- c(as.character(m_M_6000_1_N.2$V2[1:100]))
m_M_6000_1_N.2_aux3 <- c(m_M_6000_1_N.2$V3[1:100])
m_M_6000_1_N.2 = data.frame(EPS = m_M_6000_1_N.2_aux1, N = m_M_6000_1_N.2_aux2, TamanhoMaximo=m_M_6000_1_N.2_aux3, Algoritmo = Nome_M)

m_M_8000_1_N.2_aux1 <- c(as.character(m_M_8000_1_N.2$V1[1:100]))
m_M_8000_1_N.2_aux2 <- c(as.character(m_M_8000_1_N.2$V2[1:100]))
m_M_8000_1_N.2_aux3 <- c(m_M_8000_1_N.2$V3[1:100])
m_M_8000_1_N.2 = data.frame(EPS = m_M_8000_1_N.2_aux1, N = m_M_8000_1_N.2_aux2, TamanhoMaximo=m_M_8000_1_N.2_aux3, Algoritmo = Nome_M)


m_B_3000_1_N.2_aux1 <- c(as.character(m_B_3000_1_N.2$V1[200:300]))
m_B_3000_1_N.2_aux2 <- c(as.character(m_B_3000_1_N.2$V2[200:300]))
m_B_3000_1_N.2_aux3 <- c(m_B_3000_1_N.2$V3[200:300])
m_B_3000_1_N.2 = data.frame(EPS = m_B_3000_1_N.2_aux1, N = m_B_3000_1_N.2_aux2, TamanhoMaximo=m_B_3000_1_N.2_aux3, Algoritmo = Nome_B)

m_B_6000_1_N.2_aux1 <- c(as.character(m_B_6000_1_N.2$V1[1:100]))
m_B_6000_1_N.2_aux2 <- c(as.character(m_B_6000_1_N.2$V2[1:100]))
m_B_6000_1_N.2_aux3 <- c(m_B_6000_1_N.2$V3[1:100])
m_B_6000_1_N.2 = data.frame(EPS = m_B_6000_1_N.2_aux1, N = m_B_6000_1_N.2_aux2, TamanhoMaximo=m_B_6000_1_N.2_aux3, Algoritmo = Nome_B)

m_B_8000_1_N.2_aux1 <- c(as.character(m_B_8000_1_N.2$V1[100:200]))
m_B_8000_1_N.2_aux2 <- c(as.character(m_B_8000_1_N.2$V2[100:200]))
m_B_8000_1_N.2_aux3 <- c(m_B_8000_1_N.2$V3[100:200])
m_B_8000_1_N.2 = data.frame(EPS = m_B_8000_1_N.2_aux1, N = m_B_8000_1_N.2_aux2, TamanhoMaximo=m_B_8000_1_N.2_aux3, Algoritmo = Nome_B)

m_I_3000_1_N.2_aux1 <- c(as.character(m_I_3000_1_N.2$V1[1:100]))
m_I_3000_1_N.2_aux2 <- c(as.character(m_I_3000_1_N.2$V2[1:100]))
m_I_3000_1_N.2_aux3 <- c(m_I_3000_1_N.2$V3[1:100])
m_I_3000_1_N.2 = data.frame(EPS = m_I_3000_1_N.2_aux1, N = m_I_3000_1_N.2_aux2, TamanhoMaximo=m_I_3000_1_N.2_aux3, Algoritmo = Nome_I)

m_I_6000_1_N.2_aux1 <- c(as.character(m_I_6000_1_N.2$V1[1:100]))
m_I_6000_1_N.2_aux2 <- c(as.character(m_I_6000_1_N.2$V2[1:100]))
m_I_6000_1_N.2_aux3 <- c(m_I_6000_1_N.2$V3[1:100])
m_I_6000_1_N.2 = data.frame(EPS = m_I_6000_1_N.2_aux1, N = m_I_6000_1_N.2_aux2, TamanhoMaximo=m_I_6000_1_N.2_aux3, Algoritmo = Nome_I)


m_I_8000_1_N.2_aux1 <- c(as.character(m_I_8000_1_N.2$V1[1:100]))
m_I_8000_1_N.2_aux2 <- c(as.character(m_I_8000_1_N.2$V2[1:100]))
m_I_8000_1_N.2_aux3 <- c(m_I_8000_1_N.2$V3[1:100])
m_I_8000_1_N.2 = data.frame(EPS = m_I_8000_1_N.2_aux1, N = m_I_8000_1_N.2_aux2, TamanhoMaximo=m_I_8000_1_N.2_aux3, Algoritmo = Nome_I)

#------------------------------------------------------------------------------------------------------------------

#Tabelas para fazer os gráficos das interseções


#QuickSort para variação do EPS
Tabela_QuickSort_A_Variar_EPS <-rbind(m_Q_1000_1_N.2, m_Q_1000_5_N.2, m_Q_1000_10_N.2)

#MergeSort para variação do EPS
Tabela_MergeSort_A_Variar_EPS <-rbind(m_M_1000_1_N.2, m_M_1000_5_N.2, m_M_1000_10_N.2)

#BubbleSort para variação do EPS
Tabela_BubbleSort_A_Variar_EPS <-rbind(m_B_1000_1_N.2, m_B_1000_5_N.2, m_B_1000_10_N.2)

#InsertionSort para variação do EPS
Tabela_InsertionSort_A_Variar_EPS <-rbind(m_I_1000_1_N.2, m_I_1000_5_N.2, m_I_1000_10_N.2)

#Tabela total a variar o EPS
Tabela_A_Variar_EPS_Global <-rbind(Tabela_QuickSort_A_Variar_EPS,Tabela_MergeSort_A_Variar_EPS,Tabela_InsertionSort_A_Variar_EPS) #,Tabela_BubbleSort_A_Variar_EPS



#QuickSort para variação do N
Tabela_QuickSort_A_Variar_N <-rbind(m_Q_1000_1_N.2,m_Q_3000_1_N.2,m_Q_6000_1_N.2)

#MergeSort para variação do N
Tabela_MergeSort_A_Variar_N <-rbind(m_M_1000_1_N.2,m_M_3000_1_N.2,m_M_6000_1_N.2)

#BubbleSort para variação do N
Tabela_BubbleSort_A_Variar_N <-rbind(m_B_1000_1_N.2,m_B_3000_1_N.2,m_B_6000_1_N.2)

#InsertionSort para variação do N
Tabela_InsertionSort_A_Variar_N <-rbind(m_I_1000_1_N.2,m_I_3000_1_N.2,m_I_6000_1_N.2)

#Tabela total a variar o N
Tabela_A_Variar_N_Global <-rbind(Tabela_QuickSort_A_Variar_N, Tabela_MergeSort_A_Variar_N, Tabela_InsertionSort_A_Variar_N) #, Tabela_BubbleSort_A_Variar_N




