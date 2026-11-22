// UA16 - Desafio: calculo do MINMAX de uma matriz 5x5 (VisuAlg)
// Autor: Joao Kleber - Pensamento Computacional (UNIVALI)

algoritmo "Calculo_MINMAX"

var
   matriz: vetor[1..5,1..5] de real
   i, j: inteiro
   linhaMenor, colunaMenor: inteiro
   menor, minmax: real

inicio

   // Leitura da matriz

   para i de 1 ate 5 faca
      para j de 1 ate 5 faca
         escreva("Digite o valor da posicao ", i, ",", j, ": ")
         leia(matriz[i,j])
      fimpara
   fimpara

   // Encontrar o menor elemento da matriz

   menor <- matriz[1,1]
   linhaMenor <- 1
   colunaMenor <- 1

   para i de 1 ate 5 faca
      para j de 1 ate 5 faca
         se matriz[i,j] < menor entao
            menor <- matriz[i,j]
            linhaMenor <- i
            colunaMenor <- j
         fimse
      fimpara
   fimpara

   // Encontrar o maior elemento da linha do menor valor

   minmax <- matriz[linhaMenor,1]

   para j de 1 ate 5 faca
      se matriz[linhaMenor,j] > minmax entao
         minmax <- matriz[linhaMenor,j]
      fimse
   fimpara

   // Mostrar a matriz

   escreval("")
   escreval("Matriz informada:")

   para i de 1 ate 5 faca
      para j de 1 ate 5 faca
         escreva(matriz[i,j]:8:2, " ")
      fimpara
      escreval("")
   fimpara

   // Mostrar os resultados

   escreval("")
   escreval("Menor elemento: ", menor)
   escreval("Linha do menor elemento: ", linhaMenor)
   escreval("Coluna do menor elemento: ", colunaMenor)
   escreval("Valor MINMAX: ", minmax)

fimalgoritmo
