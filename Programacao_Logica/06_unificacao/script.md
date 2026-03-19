## Frame
\bbcover{Programação Lógica}{Unificação}{Prof. Edson Alves}{Campus UnB Gama: Faculdade de Ciências e Tecnologias em Engenharia}

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Processos de unificação}
    @title.anchor = west

---

top => Edge
    @top.x = 0
    @top.y = 6
    @top.u = 13.5
    @top.v = 6
    &top.very thick

mid => Edge
    @mid.x = 0
    @mid.y = 5
    @mid.u = 13.5
    @mid.v = 5
    &mid.thick

op => Node
    @op.x = 2
    @op.y = 5.5
    @op.text = \bbemph{Elementos}

read => Node
    @read.x = 4.5
    @read.y = 5.5
    @read.text = \bbemph{Comportamento}
    @read.anchor = west

---

not => Node
    @not.x = 2
    @not.y = 4.25
    @not.text = \bbtext{Variável e termo}

not_read => Node
    @not_read.x = 4.5
    @not_read.y = 4.5
    @not_read.text = \footnotesize \bbtext{Uma variável unifica com qualquer termo, inclusive outras variáveis. }
    @not_read.anchor = west

not_desc => Node
    @not_desc.x = 4.5
    @not_desc.y = 4
    @not_desc.text = \footnotesize \bbtext{O valor do termo unificado é atado à variavel em questão}
    @not_desc.anchor = west

---

or => Node
    @or.x = 2
    @or.y = 2.75
    @or.text = \bbtext{Primitivo e primitivo}

or_read => Node
    @or_read.x = 4.5
    @or_read.y = 3
    @or_read.text = \footnotesize \bbtext{Dois termos primitivos (átomos ou números) unificam apenas se são} 
    @or_read.anchor = west

or_desc => Node
    @or_desc.x = 4.5
    @or_desc.y = 2.5
    @or_desc.text = \footnotesize \bbtext{são idênticos}
    @or_desc.anchor = west

---

and => Node
    @and.x = 2
    @and.y = 1.25
    @and.text = \bbtext{Estrutura e estrutura}

and_read => Node
    @and_read.x = 4.5
    @and_read.y = 1.5
    @and_read.text = \footnotesize \bbtext{Unificam se tem mesmo construtor, mesma aridade e cada par de} 
    @and_read.anchor = west

and_desc => Node
    @and_desc.x = 4.5
    @and_desc.y = 1
    @and_desc.text = \footnotesize \bbtext{argumentos correspondentes unificam}
    @and_desc.anchor = west


end => Edge
    @end.x = 0
    @end.y = 0.5
    @end.u = 13.5
    @end.v = 0.5
    &end.very thick

## End

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Processos de unificação}
    @title.anchor = west

---
a => Node
    @a.x = 1
    @a.y = 6
    @a.text = $\star$ \bbtext{Em Prolog, predicados podem ser definidos recursivamente}
    @a.anchor = west

---
b => Node
    @b.x = 1
    @b.y = 5
    @b.text = $\star$ \bbtext{Um predicado é definido \bbbold{recursivamente} se uma ou mais regras em sua definição}
    @b.anchor = west

b1 => Node
    @b1.x = 0.5
    @b1.y = 4.5
    @b1.text = \bbtext{se referem ao próprio predicado}
    @b1.anchor = west

---
c => Node
    @c.x = 1
    @c.y = 3.5
    @c.text = $\star$ \bbtext{Uma definição recursiva é composta de duas partes:}
    @c.anchor = west

c1 => Node
    @c1.x = 2
    @c1.y = 3
    @c1.text = \bbbold{1.} \bbtext{uma ou mais cláusulas-base; e}
    @c1.anchor = west

c2 => Node
    @c2.x = 2
    @c2.y = 2.5
    @c2.text = \bbbold{2.} \bbtext{uma ou mais regras recursivas}
    @c2.anchor = west

---
d => Node
    @d.x = 1
    @d.y = 1.5
    @d.text = $\star$ \bbtext{Cláusulas-base devem ser fatos ou generalizações}
    @d.anchor = west

---
e => Node
    @e.x = 1
    @e.y = 0.5
    @e.text = $\star$ \bbtext{O tratamento das regras recursiva se dá naturalmente pelo \bbenglish{backtracking}}
    @e.anchor = west

## Text

\inputcode{prolog}{codes/fact.pl}

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Características da recursão em Prolog}
    @title.anchor = west

---
a => Node
    @a.x = 1
    @a.y = 6
    @a.text = $\star$ \bbtext{Cada nível de recursão tem seu próprio conjunto de variáveis}
    @a.anchor = west

---
b => Node
    @b.x = 1
    @b.y = 5
    @b.text = $\star$ \bbtext{A unificação entre o objetivo e o padrão de uma regra recursiva define as relações}
    @b.anchor = west

b1 => Node
    @b1.x = 0.5
    @b1.y = 4.5
    @b1.text = \bbtext{entre as variáveis de diferentes níveis}
    @b1.anchor = west

---
c => Node
    @c.x = 1
    @c.y = 3.5
    @c.text = $\star$ \bbtext{Em uma regra recursiva, é preciso garantir que os parâmetros não caracterizem uma}
    @c.anchor = west

c1 => Node
    @c1.x = 0.5
    @c1.y = 3
    @c1.text = \bbtext{dentre as cláusulas-base}
    @c1.anchor = west

---
d => Node
    @d.x = 1
    @d.y = 2
    @d.text = $\star$ \bbtext{Sem esse cuidado, um retorno pela porta \code{prolog}{redo} em alguma das subconsultas da regra}
    @d.anchor = west

d1 => Node
    @d1.x = 0.5
    @d1.y = 1.5
    @d1.text = \bbtext{pode fazer com que, eventualmente, um conjunto de valores que caracteriza uma cláusula-}
    @d1.anchor = west

d2 => Node
    @d2.x = 0.5
    @d2.y = 1
    @d2.text = \bbtext{base avance na regra recursiva, causando erros de execução como laços infinitos}
    @d2.anchor = west

## Text

\inputcode{prolog}{codes/fibo.pl}

## Text

\inputcode{python}{codes/fibo.py}

## Text

\inputcode{prolog}{codes/fibo2.pl}

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Estruturas de dados em Prolog}
    @title.anchor = west

---
a => Node
    @a.x = 1
    @a.y = 6
    @a.text = $\star$ \bbtext{Uma estrutura de dados combina termos primitivos (átomos, inteiros, etc) e}
    @a.anchor = west

a1 => Node
    @a1.x = 0.5
    @a1.y = 5.5
    @a1.text = \bbtext{estruturas em tipos compostos}
    @a1.anchor = west

---
b => Node
    @b.x = 1
    @b.y = 4.5
    @b.text = $\star$ \bbtext{A sintaxe de declaração de uma estrutura de dados é}
    @b.anchor = west

b1 => Node
    @b1.x = 2
    @b1.y = 3.5
    @b1.text = \code{prolog}{functor(arg1, arg2, ..., argN).}
    @b1.anchor = west

---
c => Node
    @c.x = 1
    @c.y = 2.5
    @c.text = $\star$ \bbtext{Cada argumento pode ser um tipo primitivo ou outra estrutura}
    @c.anchor = west

---
d => Node
    @d.x = 1
    @d.y = 1.5
    @d.text = $\star$ \bbtext{A declaração de uma estrutura é semelhante à declaração de um fato ou regra}
    @d.anchor = west


d1 => Node
    @d1.x = 2
    @d1.y = 0.5
    @d1.text = \inputsyntax{prolog}{codes/car.pl}
    @d1.anchor = west

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Consultas envolvendo estruturas de dados}
    @title.anchor = west

---
a => Node
    @a.x = 1
    @a.y = 6
    @a.text = $\star$ \bbtext{A ordem dos argumentos influencia o resultado de um consulta}
    @a.anchor = west

a1 => Node
    @a1.x = 2
    @a1.y = 5
    @a1.text = \code{prolog}{car(X, red, _).}
    @a1.anchor = west

---
b => Node
    @b.x = 1
    @b.y = 4
    @b.text = $\star$ \bbtext{Campos podem ser ignorados com a variável anônima `\code{prolog}{_}'}
    @b.anchor = west

---
c => Node
    @c.x = 1
    @c.y = 3
    @c.text = $\star$ \bbtext{Estruturas podem ser aninhadas, com o intuito de aumentar a legibilidade}
    @c.anchor = west

c1 => Node
    @c1.x = 2
    @c1.y = 2
    @c1.text = \code{prolog}{car(honda, color(red), doors(4)).}
    @c1.anchor = west

---
d => Node
    @d.x = 1
    @d.y = 1
    @d.text = $\star$ \bbtext{As duas cláusulas acima não unificam}
    @d.anchor = west

## Text

\inputsnippet{prolog}{1}{17}{codes/matrioskas.pl}

## Text

\inputsnippet{prolog}{19}{32}{codes/matrioskas.pl}

## Scene

title => Node
    @title.x = 0
    @title.y = 6.5
    @title.text = \Large \bbbold{Referências}
    @title.anchor = west

a => Node
    @a.x = 1
    @a.y = 2.5
    @a.text = $\star$ \bbbold{SWI-Prolog.} \bbenglish{https://www.swi-prolog.org/,} \bbtext{acesso em 13/03/2026.}
    @a.anchor = west

c => Node
    @c.x = 1
    @c.y = 1.5
    @c.text = $\star$ \bbbold{Wikipédia.} \bbenglish{Prolog,} \bbtext{acesso em 13/03/2026.}
    @c.anchor = west

d => Node
    @d.x = 1
    @d.y = 3.5
    @d.text = $\star$ \bbbold{MERRIT}\bbtext{, Dennis.} \bbenglish{Adventure in Prolog, Amzi!,} \bbtext{191 pgs, 2017.}
    @d.anchor = west

e => Node
    @e.x = 1
    @e.y = 5
    @e.text = $\star$ \bbbold{BLACKBURN}\bbtext{, Patrick, } \bbbold{BOS}\bbtext{, Johan,} \bbbold{STRIEGNITZ}, \bbtext{Kristina.} \bbenglish{Learn Prolog Now!,}
    @e.anchor = west

e1 => Node
    @e1.x = 0.5
    @e1.y = 4.5
    @e1.text = \bbtext{Online, 2026.}
    @e1.anchor = west


## End
