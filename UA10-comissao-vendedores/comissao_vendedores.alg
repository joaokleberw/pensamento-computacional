// UA10 - Desafio: comissao dos vendedores (VisuAlg)
// Autor: Joao Kleber - Pensamento Computacional (UNIVALI)

algoritmo "comissao_vendedores"
var
   salario_base, vendas, comissao, salario_final: real

inicio
   escreva("Digite o salario-base: ")
   leia(salario_base)

   escreva("Digite o valor das vendas: ")
   leia(vendas)

   comissao <- 0

   se vendas < 55000 entao
      comissao <- 100
   fimse

   se (vendas >= 55000) e (vendas <= 100000) entao
      comissao <- vendas * 0.02
   fimse

   se vendas > 100000 entao
      comissao <- 5000
   fimse

   salario_final <- salario_base + comissao

   escreval("Comissao: R$ ", comissao:0:2)
   escreval("Salario final: R$ ", salario_final:0:2)
fimalgoritmo
