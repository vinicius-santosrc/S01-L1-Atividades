

# IA_REPORT.md

## Identificação

Nome completo: Vinicius da Silva Santos  
Matrícula: 637

## Modelo utilizado

foi utilizado o ChatGPT, modelo GPT-5.5 Thinking

---

# Histórico de Prompts, Respostas Obtidas e Relatório de Aprendizado

## Prompt 1 — exercício 1

### Prompt enviado

de acordo com o pdf enviado, me ajude a consultar o banco de dados de um arquivo externo .pl

### Resposta obtida

a resposta trouxe um trecho de código onde mostrava o codigo com a implementação do ":- consult('banco_rl14.pl').". também ajustou alguns erros que estava na sintaxe

### Relatório de satisfação e aprendizado

ajudou bastante no para conectar o banco com o exercicio e evitar todos exercicios em um arquivo somente

---

## Prompt 2 — separação dos exercícios

### Prompt enviado

separe por arquivos os exercicios e mande aqui o nome etc

### Resposta obtida

a resposta sugeriu separar a atividade em arquivos como `exercicio1.pl`, `exercicio2.pl`, `exercicio3.pl` e `exercicio4.pl`, mantendo o arquivo `banco_rl14.pl` como base de dados principal.

### Relatório de satisfação e aprendizado

foi útil para organizar melhor a entrega. entendi que cada exercício pode ficar em um arquivo separado, mas todos podem usar o mesmo banco de dados com o consult.

---

## Prompt 3 — dúvida sobre regra com OU e E

### Prompt enviado

como faço uma regra em prolog usando OU e E para o exercicio da especie_chave?

### Resposta obtida

a resposta mostrou que em Prolog o `,` funciona como E e o `;` funciona como OU. também mostrou que era importante usar parênteses para separar as condições corretamente.

### Relatório de satisfação e aprendizado

essa resposta ajudou porque eu estava confundindo a ordem das condições. aprendi que sem os parênteses o Prolog pode interpretar a regra de um jeito diferente do esperado.

---

## Prompt 4 — dúvida sobre variáveis diferentes

### Prompt enviado

no exercicio 2, como verifico se um animal tem dois nichos diferentes?

### Resposta obtida

a resposta explicou o uso de `X \= Y` para comparar se dois valores são diferentes. também mostrou uma regra usando `nicho(Animal, X)` e `nicho(Animal, Y)`.

### Relatório de satisfação e aprendizado

ajudou a entender melhor como o Prolog trabalha com variáveis lógicas. aprendi que posso buscar dois resultados para o mesmo predicado e depois testar se eles são diferentes.

---

## Prompt 5 — dúvida sobre competidores diretos

### Prompt enviado

por que a regra de competidores_diretos esta retornando false no banco do exercicio?

### Resposta obtida

a resposta explicou que a regra exige que dois elementos se alimentem do sol e da terra ao mesmo tempo, mas no banco usado só plantas atende essa condição. como não tem outro elemento igual, a consulta retorna false.

### Relatório de satisfação e aprendizado

foi importante porque eu achei que o código estava errado, mas na verdade o resultado false fazia sentido com os fatos do banco. aprendi a conferir os fatos antes de achar que a regra está errada.

---

# Conclusão geral

a ferramenta serviu como apoio para auxiliar e ampliar meus conhecimentos em programação lógica com acesso a arquivos externos, separação dos exercícios e ajustes em alguns erros que cometi na atividade. também ajudou a entender melhor conceitos como regras, consultas, uso de OU/E, comparação de variáveis e recursividade em Prolog.