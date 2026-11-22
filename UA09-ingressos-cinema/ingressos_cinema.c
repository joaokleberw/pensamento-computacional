// UA09 - Desafio: ingressos de cinema (C)
// Autor: Joao Kleber - Pensamento Computacional (UNIVALI)
/* Fiz o programa usando printf para mostrar as mensagens na tela e scanf para ler o que o usuário digita. Coloquei o preço do ingresso em uma variável (preco = 12.50) no começo do código, assim é fácil mudar o valor depois. O programa mostra os filmes, pede o número do filme e a quantidade de ingressos, calcula o total (quantidade x preço) e no final mostra o filme escolhido, a quantidade e o valor total com duas casas decimais (%.2f). */

#include <stdio.h>

int main() {
    int opcao, quantidade;
    float preco = 12.50;  // para mudar o valor do ingresso, basta alterar aqui
    float total;

    printf("=== CINEMA ===\n");
    printf("1 - Vingadores 4 - da Marvel\n");
    printf("2 - Como Treinar o Seu Dragao 3\n");
    printf("3 - Dumbo\n");
    printf("4 - Shazam!\n");
    printf("Digite o numero do filme: ");
    scanf("%d", &opcao);

    printf("Digite a quantidade de ingressos: ");
    scanf("%d", &quantidade);

    total = quantidade * preco;

    printf("\nVoce escolheu o filme numero %d\n", opcao);
    if (opcao == 1)
        printf("Filme: Vingadores 4 - da Marvel\n");
    else if (opcao == 2)
        printf("Filme: Como Treinar o Seu Dragao 3\n");
    else if (opcao == 3)
        printf("Filme: Dumbo\n");
    else if (opcao == 4)
        printf("Filme: Shazam!\n");
    else
        printf("Opcao invalida!\n");

    printf("Quantidade de ingressos: %d\n", quantidade);
    printf("Valor de cada ingresso: R$ %.2f\n", preco);
    printf("Valor total: R$ %.2f\n", total);

    return 0;
}
