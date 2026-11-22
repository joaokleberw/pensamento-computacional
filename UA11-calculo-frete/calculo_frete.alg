// UA11 - Desafio: Calculo do frete (VisuAlg)
// Autor: Joao Kleber - Pensamento Computacional (UNIVALI)

algoritmo "Calculo_Frete"

var
   distancia, quantidade_pecas, regiao: inteiro
   quantidade_pecas_acima_1000: inteiro

   rastreamento: caractere

   taxa_rastreamento, valor_litro: real
   valor_pecas, valor_pecas_ate_1000: real
   valor_pecas_acima_1000, desconto: real
   valor_frete_km, frete_total: real

inicio

   // Inicializacao das variaveis

   taxa_rastreamento <- 0
   desconto <- 0
   valor_pecas <- 0
   valor_pecas_ate_1000 <- 0
   valor_pecas_acima_1000 <- 0

   // Perguntar sobre rastreamento

   escreva("Deseja rastreamento? (S/N): ")
   leia(rastreamento)

   se (rastreamento = "S") ou (rastreamento = "s") entao
      taxa_rastreamento <- 200
   senao
      taxa_rastreamento <- 0
   fimse

   // Entrada dos dados

   escreva("Informe a distancia em km: ")
   leia(distancia)

   escreva("Informe a quantidade de pecas: ")
   leia(quantidade_pecas)

   escreva("Informe o valor do litro de combustivel: ")
   leia(valor_litro)

   // Menu de regioes

   escreval("REGIOES PARA FRETE")
   escreval("1 - Sul")
   escreval("2 - Sudeste")
   escreval("3 - Centro-oeste")

   escreva("Digite a regiao: ")
   leia(regiao)

   // Calculo do frete das pecas

   se (quantidade_pecas <= 1000) entao

      se (regiao = 1) entao
         valor_pecas <- quantidade_pecas * 1.00
      senao
         se (regiao = 2) entao
            valor_pecas <- quantidade_pecas * 1.20
         senao
            se (regiao = 3) entao
               valor_pecas <- quantidade_pecas * 1.30
            fimse
         fimse
      fimse

      valor_pecas_ate_1000 <- valor_pecas

   senao

      quantidade_pecas_acima_1000 <- quantidade_pecas - 1000

      se (regiao = 1) entao

         valor_pecas_ate_1000 <- 1000 * 1.00
         desconto <- quantidade_pecas_acima_1000 * 1.00 * 0.10
         valor_pecas_acima_1000 <- (quantidade_pecas_acima_1000 * 1.00) - desconto

      senao

         se (regiao = 2) entao

            valor_pecas_ate_1000 <- 1000 * 1.20
            desconto <- quantidade_pecas_acima_1000 * 1.20 * 0.12
            valor_pecas_acima_1000 <- (quantidade_pecas_acima_1000 * 1.20) - desconto

         senao

            se (regiao = 3) entao

               valor_pecas_ate_1000 <- 1000 * 1.30
               desconto <- quantidade_pecas_acima_1000 * 1.30 * 0.13
               valor_pecas_acima_1000 <- (quantidade_pecas_acima_1000 * 1.30) - desconto

            fimse

         fimse

      fimse

      valor_pecas <- valor_pecas_ate_1000 + valor_pecas_acima_1000

   fimse

   // Calculo do frete por quilometro

   valor_frete_km <- distancia * valor_litro

   // Calculo do valor total

   frete_total <- valor_pecas + taxa_rastreamento + valor_frete_km

   // Exibicao dos resultados

   escreval("")
   escreval("===== RESULTADO DO FRETE =====")
   escreval("Taxa do rastreamento: R$ ", taxa_rastreamento:0:2)
   escreval("Valor do frete pelas pecas: R$ ", valor_pecas:0:2)
   escreval("Valor do frete por quilometro: R$ ", valor_frete_km:0:2)
   escreval("Total do frete: R$ ", frete_total:0:2)

fimalgoritmo
