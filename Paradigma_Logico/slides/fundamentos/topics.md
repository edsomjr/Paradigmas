## Programação Lógica

- Foi desenvolvida a partir de um teorema desenvolvido no contexto do processamento de linguagens naturais
- Permite prototipamento e desenvolvimento rápidos devido sua proximidade semântica com a especificação lógica do problema ser resolvido
- A programaçaõ sob o paradigma lógico é declarativa
- Os programas são compostos por uma série de relações lógicas e consultas sobre se uma determinada proposição é ou não verdadeira
- Caso seja verdadeira, também é possível determinar qual atribuição de valores lógicos às variáveis da proposição a torna verdadeira
- Para se tornar um paradigma prático, é necessário o apoio de subrotinas extra-lógicas que controlem o I/O e forcem o fluxo de execução do programa

### Prolog

- Prolog = PROgramming in LOGic
- Um programa em Prolog é composto de uma coleção de pequenas unidades modulares, denominadas **predicatos**
- Os predicatos são semelhantes às subrotinas de outras linguagens
- Eles podem ser testados e adicionados separadamente em um programa, de modo que é possível construir programas incrementalmente
- O ato de inserir de códigos no _listener_ Prolog é denonimado **consultar**
- É possível consultar diretamente um arquivo fonte no _listener_ Prolog por meio da subrotina `consult()`:
```
consult(source)
```
- Se o arquivo for modificado, ele deve ser recarregado com a rotina `reconsult(source)`
- A extensão deve ser `*.pl` (o Vim pode identificar estes arquivos como arquivos Perl)
- Usando o comando
```
prolog -s source.pdb
```
as afirmações são carregadas do arquivo e o terminal fica pronto para consultas
- A proposição _Todas as pessoas são mortais_ ou _Para todo X, X é mortal se X é um pessoa_ é escrita em Prolog como
```
    mortal(X) :- person(X) .
```
- A proposição _Sócrates é uma pessoa_ é escrita como
```
    person(socrates) .
```
- Estas duas proposições permitem que Prolog demonstre se Sócrates é ou não mortal, por meio da consulta
```
    mortal(socrates) .
```
- A consulta
```
    mortal(X) .
```
retorna todos os valores de `X` tal que a proposição é verdadeira (neste caso, `X = socrates`)
- O jargão de Prolog é composto por termos de programação, termos de bancos de dados e termos lógicos
- Não há uma divisão clara, em Prolog, entre dados e procedimentos
- Um programa em Prolog é um banco de dados Prolog
- Sinômios para um termo são introduzidos entre parêntesis
- Por exemplo, no nível mais alto temos `program(database)` 
- Um programa é composto por predicados (procedimentos, registros, relações)
- Cada predicado é definido um nome e um número (**arity**)
- **arity** é o número de argumentos (atributos, campos) do predicado
- Dois predicados com nomes diferentes, mais **arities** distintas, são considerados distintos
- No código são três predicados: `person/1, mortal_report/0, mortal/1`
- `person/1` remete a um registro com um campo
- `mortal_report/0` parece uma subrotina sem argumentos
- `mortal/1` remete a uma regra ou proposição que está em algum lugar entre dados e procedimentso
- Cada predicado do programa é definido pela existência de uma ou mais **cláusulas** no banco de dados
- No programa, `person/1` tem 4 cláusulas, os demais predicatos apenas uma cláusula
- Cada cláusula pode ser uma **regra** ou um **fato**
- As 4 cláusulas de `person/1` são fatos
- As demais são regras

== Fatos

- Os fatos são os predicados mais simples do Prolog
- Se assemelham a registros em um banco de dados relacional
- A sintaxe para a declaração de um fato é
```
    pred(arg1, arg2, ..., argN) .
```
onde `pred` é o nome do fato, e `arg1, arg2, ..., argN` são os argumento, sendo `N` a **arity** - O ponto final (`.`) encerra todas as cláusulas de Prolog
- Se a aridade do predicado for zero, a sintaxe se reduz a
```
    pred .
```
- Os argumentos podem ser quaisquer termos válidos de Prolog
- Os termos básicos são
    * inteiro: número positivo, negativo ou zero, com valor absoluto máximo dependendo da implementação
    * átomo: uma constante de texto iniciada com letra minúscula
    * variável: começa com letra maiúscula ou underscore
    * estrutura: termos complexos
- Algumas implementações podem estender esta lista, com strings e ponto flutuante, por exemplo
- O uso de aspas simples permitem a construção de átomos pode meio de qualquer combinação válida de caracteres
- Os nomes dos predicados seguem as mesmas regras dos átomos
- Os fatos são frequentemente utilizados para inserir informações no programa
- Por exemplo, para o predicato `paciente/3` podem ser atestados os seguintes fatos:
```
    paciente('Maria Rita', 35, sus)
    paciente('Pedro Silva', 70, amil)
```
- As aspas foram usadas nos nomes porque começam em maiúsculas e porque tem espaços
- Um _listener_ Prolog deve fornecer meios de inserção de fatos e regras em uma base de dados dinâmica, a qual pode ser consultada (**query**, **call**)
- A base de dados é atualizada por meio de consultas (`consult()` ou `reconsult()`)
- Os predicados podem ser inseridos diretamente no _listener_, mas não são gravados entre as sessões
- Os nomes utilizados no fato são indiferentes para o Prolog, mas para a aplicação as relações devem ser compatíveis com a semântica dos identificadores escolhidos
- Prolog considera distintos os fatos `fato(a, b)` e `fato(b, a)`
