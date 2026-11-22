// UA05 - Desafio: inverter um numero de 4 digitos (VisuAlg)
// Autor: Joao Kleber - Pensamento Computacional (UNIVALI)

algoritmo "Numero_Invertido"

var
   numero, invertido: inteiro
   milhar, centena, dezena, unidade: inteiro

inicio

   escreva("Digite um numero de 4 digitos: ")
   leia(numero)

   milhar <- numero div 1000
   centena <- (numero div 100) mod 10
   dezena <- (numero div 10) mod 10
   unidade <- numero mod 10

   invertido <- unidade * 1000 + dezena * 100 + centena * 10 + milhar

   escreval("Numero invertido: ", invertido)

fimalgoritmo
