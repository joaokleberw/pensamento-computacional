// UA07 - Desafio: consumo mensal de energia eletrica (VisuAlg)
// Autor: Joao Kleber - Pensamento Computacional (UNIVALI)
//
// Usei real para potencia, horas, consumos e preco porque podem ter casas decimais.
// Usei inteiro para os dias, que e uma contagem.

algoritmo "consumo_energia"
var
   potencia_chuveiro, potencia_freezer, potencia_geladeira, potencia_lampada: real
   horas_chuveiro, horas_freezer, horas_geladeira, horas_lampada: real
   dias: inteiro
   preco_kwh: real
   consumo_chuveiro, consumo_freezer, consumo_geladeira, consumo_lampada: real
   consumo_total, valor_conta: real

inicio
   // valores da tabela
   potencia_chuveiro <- 3000
   horas_chuveiro <- 1
   potencia_freezer <- 200
   horas_freezer <- 24
   potencia_geladeira <- 250
   horas_geladeira <- 24
   potencia_lampada <- 120
   horas_lampada <- 5

   // dados do problema
   dias <- 30
   preco_kwh <- 0.30

   // consumo de cada aparelho (watts / 1000 para virar kW)
   consumo_chuveiro <- potencia_chuveiro / 1000 * horas_chuveiro * dias
   consumo_freezer <- potencia_freezer / 1000 * horas_freezer * dias
   consumo_geladeira <- potencia_geladeira / 1000 * horas_geladeira * dias
   consumo_lampada <- potencia_lampada / 1000 * horas_lampada * dias

   // total e valor da conta
   consumo_total <- consumo_chuveiro + consumo_freezer + consumo_geladeira + consumo_lampada
   valor_conta <- consumo_total * preco_kwh

   // resultados
   escreval("Chuveiro: ", consumo_chuveiro, " kW")
   escreval("Freezer: ", consumo_freezer, " kW")
   escreval("Geladeira: ", consumo_geladeira, " kW")
   escreval("Lâmpada: ", consumo_lampada, " kW")
   escreval("Consumo total: ", consumo_total, " kW")
   escreval("Valor da conta: R$ ", valor_conta)
fimalgoritmo
