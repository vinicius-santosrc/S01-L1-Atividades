# IA_REPORT.md

## Identificação

Nome completo: Vinicius da Silva Santos  
Matrícula: 637

## Modelo utilizado

foi utilizado o ChatGPT, modelo GPT-5.5 Thinking, como ferramenta de apoio para tirar dúvidas, revisar conceitos de Programação Orientada a Objetos e ajudar na organização das ideias durante a resolução dos exercícios.

---

# Histórico de Prompts, Respostas Obtidas e Relatório de Aprendizado

## Prompt 1 — Entendimento geral do Exercício 1

### Prompt enviado

"to fazendo um exercício em Java sobre o Castelo Animado do Howl. (colei uma parte do enunciado) o enunciado pede uma classe abstrata `Personagem`, uma classe `Mago`, uma classe `Divisao`, uma classe `CasteloAnimado` com `ArrayList<Divisao>` e um `main` para testar.

### Resposta obtida

a resposta explicou que a classe `Personagem` deveria ser abstrata porque serve como um modelo geral para personagens, mas não necessariamente deve ser instanciada diretamente. A classe `Mago` representa herança, pois reaproveita os atributos e métodos de `Personagem` e implementa o método abstrato `apresentar`.

### Relatório de satisfação e aprendizado

essa resposta me ajudou principalmente na interpretação da questao. antes de começar a escrever as classes, eu tinha dúvida sobre como separar o que era herança, o que era abstração e o que era agregação

---

## Prompt 2 — Dúvida sobre classe abstrata e método abstrato

### Prompt enviado

no exercício do Castelo Animado, por que a classe `Personagem` precisa ser abstrata? qual a diferença entre declarar o método `apresentar` como abstrato e criar um método normal dentro da classe?
[colei a parte do enunciado falando]

### Resposta obtida

A resposta explicou que uma classe abstrata é usada quando existe uma ideia geral, mas incompleta. No caso, `Personagem` representa qualquer personagem, mas cada personagem pode se apresentar de uma forma diferente. Por isso, o método `apresentar` pode ser abstrato. foi explicado também que um método abstrato não possui corpo na classe base. Ele apenas define uma obrigação para as classes filhas. Assim, classes como `Mago` precisam implementar o método usando `@Override`.

### Relatório de satisfação e aprendizado

a resposta tirou minha dúvida sobre o motivo de usar `abstract`. entendi que não era apenas uma exigência do exercício, mas uma forma de representar melhor o problema.
Também aprendi que métodos abstratos ajudam a garantir que todas as subclasses tenham determinado comportamento, mesmo que cada uma implemente esse comportamento de forma diferente.

---

## Prompt 3 — Entendimento do Exercício 2 sobre polimorfismo

### Prompt enviado

[com o codigo enviado]: existe uma classe `Cafe`, uma classe `CafeGourmet` que herda de `Cafe`, e um método `calcularPrecoFinal`. como funciona o polimorfismo nesse caso, principalmente quando eu guardo cafés normais e cafés gourmet no mesmo array?

### Resposta obtida

a resposta explicou que o `ArrayList<Cafe>` pode armazenar objetos da classe `Cafe` e também objetos de classes filhas, como `CafeGourmet`. Isso acontece porque um objeto `CafeGourmet` também é um `Cafe`.
Também foi explicado que, quando o método `calcularPrecoFinal` é chamado, o Java verifica em tempo de execução qual é o tipo real do objeto. Se o objeto for um `CafeGourmet`, será executada a versão sobrescrita do método, que soma o bônus de aroma ao preço base.

### Relatório de satisfação e aprendizado

com o exemplo do café, ficou mais fácil entender que o polimorfismo permite tratar vários objetos de forma geral, mas mantendo comportamentos específicos quando necessário.

---

# Conclusão geral

o uso da inteligencia artificial foi útil como ferramenta de apoio durante a resolução da atividade, principalmente para esclarecer dúvidas de interpretação dos enunciados e revisar conceitos de Programação Orientada a Objetos em Java.
o principal aprendizado foi perceber que a modelagem/arquitetura das classes deve partir da leitura cuidadosa do enunciado. Antes de escrever o código, é importante identificar quais elementos viram classes, quais classes possuem relação de herança, quais objetos fazem parte de outros e quais objetos apenas são utilizados por eles
