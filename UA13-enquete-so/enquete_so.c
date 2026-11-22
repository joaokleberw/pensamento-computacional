// UA13 - Desafio: Enquete sobre sistemas operacionais (C)
// Autor: Joao Kleber - Pensamento Computacional (UNIVALI)

#include <stdio.h>

int main()
{
    // Declaracao das variaveis
    int voto;
    int windows = 0, unix = 0, linux = 0;
    int netware = 0, mac = 0, outro = 0;
    int total = 0;

    // Apresentacao da enquete
    printf("=== ENQUETE ===\n");
    printf("Qual o melhor sistema operacional para servidores?\n");

    printf("\n1 - Windows Server");
    printf("\n2 - Unix");
    printf("\n3 - Linux");
    printf("\n4 - Netware");
    printf("\n5 - Mac OS");
    printf("\n6 - Outro");
    printf("\n0 - Encerrar votacao");

    printf("\n\nDigite seu voto: ");
    scanf("%d", &voto);

    // Repeticao da votacao
    while (voto != 0)
    {
        // Verificar se o voto e valido
        if (voto >= 1 && voto <= 6)
        {
            total++;

            // Contabilizar os votos
            switch (voto)
            {
                case 1:
                    windows++;
                    break;

                case 2:
                    unix++;
                    break;

                case 3:
                    linux++;
                    break;

                case 4:
                    netware++;
                    break;

                case 5:
                    mac++;
                    break;

                case 6:
                    outro++;
                    break;
            }
        }
        else
        {
            printf("Voto invalido! Digite de 1 a 6.\n");
        }

        // Solicitar outro voto
        printf("\nDigite seu voto (0 para encerrar): ");
        scanf("%d", &voto);
    }

    // Apresentar os resultados
    printf("\n===== RESULTADO DA ENQUETE =====\n");

    if (total > 0)
    {
        printf("\nWindows Server: %d votos - %.2f%%",
               windows, (windows * 100.0) / total);

        printf("\nUnix: %d votos - %.2f%%",
               unix, (unix * 100.0) / total);

        printf("\nLinux: %d votos - %.2f%%",
               linux, (linux * 100.0) / total);

        printf("\nNetware: %d votos - %.2f%%",
               netware, (netware * 100.0) / total);

        printf("\nMac OS: %d votos - %.2f%%",
               mac, (mac * 100.0) / total);

        printf("\nOutro: %d votos - %.2f%%",
               outro, (outro * 100.0) / total);
    }
    else
    {
        printf("\nNenhum voto foi registrado.\n");
    }

    printf("\n\nTotal de votos: %d\n", total);

    return 0;
}
