## Frame
\bbcover{Programação Lógica}{Recursão}{Prof. Edson Alves}{Campus UnB Gama: Faculdade de Ciências e Tecnologias em Engenharia}

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Recursão em Prolog}
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
