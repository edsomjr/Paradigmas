## Frame
\bbcover{Programação Lógica}{Aritmética}{Prof. Edson Alves}{Campus UnB Gama: Faculdade de Ciências e Tecnologias em Engenharia}

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{\textit{Operator \code{prolog}{is/2}}}
    @title.anchor = west

---
a => Node
    @a.x = 1
    @a.y = 6
    @a.text = $\star$ \bbtext{O predicado extra-lógico \code{prolog}{is/2} é utilizado para computar expressões aritméticas}
    @a.anchor = west

a1 => Node
    @a1.x = 0.5
    @a1.y = 5.5
    @a1.text = \bbtext{em Prolog}
    @a1.anchor = west

---
b => Node
    @b.x = 1
    @b.y = 4.5
    @b.text = $\star$ \bbtext{Sua sintaxe, em notação infixada, é dada por}
    @b.anchor = west

b1 => Node
    @b1.x = 2
    @b1.y = 3.5
    @b1.text = \code{prolog}{Number is Expr.}
    @b1.anchor = west

---
c => Node
    @c.x = 1
    @c.y = 2.5
    @c.text = $\star$ \bbtext{O resultado da expressão \code{prolog}{Expr} é atado à variável \code{prolog}{Number}}
    @c.anchor = west

---
d => Node
    @d.x = 1
    @d.y = 1.5
    @d.text = $\star$ \bbtext{Parêntesis podem ser utilizados para evitar ambiguidades e alterar a ordem de}
    @d.anchor = west

d1 => Node
    @d1.x = 0.5
    @d1.y = 1 
    @d1.text = \bbtext{precedência dos operadores}
    @d1.anchor = west

## Text

\inputsnippet{prolog}{1}{20}{codes/is.pl}

## Scene

title => Node
    @title.x = 0
    @title.y = 6.5
    @title.text = \Large \bbbold{Referências}
    @title.anchor = west

a => Node
    @a.x = 1
    @a.y = 4
    @a.text = $\star$ \bbbold{SWI-Prolog.} \bbenglish{https://www.swi-prolog.org/,} \bbtext{acesso em 10/03/2026.}
    @a.anchor = west

c => Node
    @c.x = 1
    @c.y = 3
    @c.text = $\star$ \bbbold{Wikipédia.} \bbenglish{Prolog,} \bbtext{acesso em 10/11/2020.}
    @c.anchor = west

d => Node
    @d.x = 1
    @d.y = 5
    @d.text = $\star$ \bbbold{MERRIT}\bbtext{, Dennis.} \bbenglish{Adventure in Prolog, Amzi!,} \bbtext{191 pgs, 2017.}
    @d.anchor = west

## End
