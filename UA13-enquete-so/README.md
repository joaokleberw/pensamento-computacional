# UA13 — Enquete de sistemas operacionais

**Linguagem:** C

## O problema
Recebe votos até o usuário digitar 0 e mostra a quantidade e a porcentagem de cada opção.

## O que pratiquei
`while`, `switch`, contadores

## Como rodar
`gcc -std=c99 enquete_so.c -o enquete && ./enquete`

> No Linux, use `-std=c99`: lá `unix` e `linux` já são nomes reservados pelo compilador. No Windows compila normalmente.

Arquivo: [`enquete_so.c`](enquete_so.c)
