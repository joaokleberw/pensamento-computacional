// UA12 - Desafio: Pedra-Papel-Tesoura (C)
// Autor: Joao Kleber - Pensamento Computacional (UNIVALI)

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main()
{
    // Declaracao das variaveis
    int jogador, computador;

    // Sorteio aleatorio do computador
    srand(time(NULL));

    // Menu do jogo
    printf("=== PEDRA, PAPEL E TESOURA ===\n");

    printf("\nEscolha sua jogada:\n");
    printf("1 - Pedra\n");
    printf("2 - Papel\n");
    printf("3 - Tesoura\n");

    printf("\nDigite sua escolha: ");
    scanf("%d", &jogador);

    // Verificar se a opcao e valida
    if (jogador < 1 || jogador > 3)
    {
        printf("\nOpcao invalida!\n");
    }
    else
    {
        // Computador escolhe aleatoriamente
        computador = rand() % 3 + 1;

        // Mostrar a jogada do jogador
        if (jogador == 1)
            printf("\nVoce escolheu Pedra.\n");
        else if (jogador == 2)
            printf("\nVoce escolheu Papel.\n");
        else
            printf("\nVoce escolheu Tesoura.\n");

        // Mostrar a jogada do computador
        if (computador == 1)
            printf("Computador escolheu Pedra.\n");
        else if (computador == 2)
            printf("Computador escolheu Papel.\n");
        else
            printf("Computador escolheu Tesoura.\n");

        // Verificar o resultado
        if (jogador == computador)
        {
            printf("\nResultado: EMPATE!\n");
        }
        else if (jogador == 1 && computador == 3)
        {
            printf("\nVoce venceu! Pedra quebra tesoura.\n");
        }
        else if (jogador == 2 && computador == 1)
        {
            printf("\nVoce venceu! Papel cobre pedra.\n");
        }
        else if (jogador == 3 && computador == 2)
        {
            printf("\nVoce venceu! Tesoura corta papel.\n");
        }
        else
        {
            printf("\nO computador venceu!\n");
        }
    }

    printf("\nObrigado por jogar!\n");

    return 0;
}
