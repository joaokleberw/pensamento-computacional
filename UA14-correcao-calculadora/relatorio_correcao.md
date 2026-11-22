# UA14 - Desafio: relatório de correção da calculadora em C

Autor: Joao Kleber - Pensamento Computacional (UNIVALI)

Após analisar o código apresentado, identifiquei dois problemas principais que precisam ser corrigidos para que o programa funcione conforme o solicitado.

## 1. Erro na leitura dos números – Linhas 16 a 19

**Problema:** o programa solicita os dois números antes de verificar qual operação foi escolhida pelo usuário. Dessa forma, mesmo que o usuário digite uma opção inválida ou escolha 5 para encerrar, o programa solicita os números.

**Correção:** a leitura dos números deve acontecer somente quando o operador informado estiver entre 1 e 4.

```c
if (operador >= 1 && operador <= 4)
{
    printf("Digite o primeiro numero: ");
    scanf("%f", &numero1);

    printf("Digite o segundo numero: ");
    scanf("%f", &numero2);
}
```

## 2. Erro na condição do while – Linha 46

**Problema:** a condição apresentada é:

```c
while(operador != 4);
```

Porém, de acordo com o menu, o número 5 é utilizado para encerrar o programa. Portanto, a condição está incorreta.

**Correção:**

```c
while(operador != 5);
```

Assim, o programa continuará executando enquanto o usuário não escolher a opção 5.

## 3. Verificação de opções inválidas

Também é importante acrescentar uma verificação para informar quando o usuário digitar uma opção diferente de 1, 2, 3, 4 ou 5.

```c
default:
    printf("Opcao invalida! Tente novamente.\n");
```

Essa verificação deve ficar dentro da estrutura `switch`.

## Conclusão

Após as correções, a calculadora deverá solicitar os números somente quando uma operação válida for escolhida, realizar o cálculo correspondente e apresentar o resultado. O programa continuará exibindo o menu até que o usuário escolha a opção 5, encerrando a execução.

Com essas alterações, o código ficará de acordo com as regras apresentadas no enunciado.
