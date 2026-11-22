// UA15 - Desafio: media da turma com vetor (C)
// Autor: Joao Kleber - Pensamento Computacional (UNIVALI)

#include <stdio.h>

int main()
{
    // Declaracao das variaveis
    float notas[50], soma = 0, media;
    int quantidade, i;

    // Informar o tamanho da turma
    printf("Digite a quantidade de alunos (maximo 50): ");
    scanf("%d", &quantidade);

    // Verificar se a quantidade e valida
    if (quantidade >= 1 && quantidade <= 50)
    {
        // Ler as notas dos alunos
        for (i = 0; i < quantidade; i++)
        {
            printf("Digite a nota do aluno %d: ", i + 1);
            scanf("%f", &notas[i]);

            soma = soma + notas[i];
        }

        // Calcular a media da turma
        media = soma / quantidade;

        // Mostrar o resultado
        printf("\nSoma das notas: %.2f", soma);
        printf("\nMedia da turma: %.2f\n", media);
    }
    else
    {
        printf("\nQuantidade de alunos invalida!\n");
    }

    return 0;
}
