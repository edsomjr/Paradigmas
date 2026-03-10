## Frame
\bbcover{Programação Lógica}{Lógica de Primeira Ordem}{Prof. Edson Alves}{Campus UnB Gama: Faculdade de Ciências e Tecnologias em Engenharia}

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Variáveis e constantes}
    @title.anchor = west

body => Rect
    @body.x = 0.75
    @body.y = 5.5
    @body.u = 13.5
    @body.v = 2
    @body.fill = blue!10!white
    &body.rounded corners

box => Rect
    @box.x = 0.75
    @box.y = 5.5
    @box.u = 13.5
    @box.v = 2
    @box.color = BBBlue
    &box.draw
    &box.very thick
    &box.rounded corners

header => Rect
    @header.x = 0.75
    @header.y = 5.5
    @header.u = 13.5
    @header.v = 4.5
    @header.fill = BBBlue
    @header.color = BBBlue
    &header.draw
    &header.very thick
    &header.rounded corners


a => Node
    @a.x = 1
    @a.y = 5
    @a.text = \bbchalk{Definição} 
    @a.anchor = west
    @a.color = white

b1 => Node
    @b1.x = 1
    @b1.y = 4
    @b1.text = \bbtext{Uma variável é um símbolo que representa um objeto não especificado de um}
    @b1.anchor = west
    @b1.color = white

b2 => Node
    @b2.x = 1
    @b2.y = 3.25
    @b2.text = \bbtext{determinado conjunto $U$, o qual é chamado conjunto universal para a variável.}
    @b2.anchor = west
    @b2.color = white

b3 => Node
    @b3.x = 1
    @b3.y = 2.5
    @b3.text = \bbtext{Um membro específico do conjunto universal é denominado constante.}
    @b3.anchor = west
    @b3.color = white


## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Termos em Prolog}
    @title.anchor = west

--- 

a => Node
    @a.x = 1
    @a.y = 6
    @a.text = $\star$ \bbtext{Prolog tem um único tipo de dado, denominado \bbbold{termo}}
    @a.anchor = west
    @a.color = white

--- 

b => Node
    @b.x = 1
    @b.y = 5
    @b.text = $\star$ \bbtext{Os argumentos dos predicados Prolog podem ser termos}
    @b.anchor = west
    @b.color = white

--- 

c => Node
    @c.x = 1
    @c.y = 4
    @c.text = $\star$ \bbtext{Um \bbbold{átomo} é um nome de propósito geral, composto por uma sequência de}
    @c.anchor = west
    @c.color = white

c1 => Node
    @c1.x = 0.5
    @c1.y = 3.5
    @c1.text = \bbtext{caracteres, iniciada com letra minúscula}
    @c1.anchor = west
    @c1.color = white

---
d => Node
    @d.x = 1
    @d.y = 2.5
    @d.text = $\star$ \bbtext{Delimitar um átomo por aspas simples permite o uso de iniciais maiúsculas e}
    @d.anchor = west
    @d.color = white

d1 => Node
    @d1.x = 0.5
    @d1.y = 2
    @d1.text = \bbtext{espaços em branco}
    @d1.anchor = west
    @d1.color = white

---
e => Node
    @e.x = 1
    @e.y = 1
    @e.text = $\star$ \bbtext{\bbbold{Números} (inteiros ou flutuantes) são termos primitivos de Prolog}
    @e.anchor = west
    @e.color = white

## Text

\inputsnippet{prolog}{1}{17}{codes/terms.pl}

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Sentenças abertas}
    @title.anchor = west

body => Rect
    @body.x = 0.75
    @body.y = 5.5
    @body.u = 13.75
    @body.v = 1.25
    @body.fill = blue!10!white
    &body.rounded corners

box => Rect
    @box.x = 0.75
    @box.y = 5.5
    @box.u = 13.75
    @box.v = 1.25
    @box.color = BBBlue
    &box.draw
    &box.very thick
    &box.rounded corners

header => Rect
    @header.x = 0.75
    @header.y = 5.5
    @header.u = 13.75
    @header.v = 4.5
    @header.fill = BBBlue
    @header.color = BBBlue
    &header.draw
    &header.very thick
    &header.rounded corners

a => Node
    @a.x = 1
    @a.y = 5
    @a.text = \bbchalk{Definição} 
    @a.anchor = west
    @a.color = white

b1 => Node
    @b1.x = 1
    @b1.y = 4
    @b1.text = \bbtext{Uma sentença aberta $S(x)$ em $x$ é uma expressão na qual o símbolo $x$ ocorre}
    @b1.anchor = west
    @b1.color = white

b2 => Node
    @b2.x = 1
    @b2.y = 3.25
    @b2.text = \bbtext{uma ou mais vezes e que, caso todas as ocorrências de $x$ sejam substituídas}
    @b2.anchor = west
    @b2.color = white

b3 => Node
    @b3.x = 1
    @b3.y = 2.5
    @b3.text = \bbtext{por uma constante $v$ do conjunto universal de $x$, $S(v)$ se torna uma proposição.}
    @b3.anchor = west
    @b3.color = white

b4 => Node
    @b4.x = 1
    @b4.y = 1.75
    @b4.text = \bbtext{Sentenças abertas também são chamadas predicados ou funções proposicionais.}
    @b4.anchor = west
    @b4.color = white

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Variáveis em Prolog}
    @title.anchor = west

--- 

a => Node
    @a.x = 1
    @a.y = 6
    @a.text = $\star$ \bbtext{Prolog também tem termos do tipo variável}
    @a.anchor = west
    @a.color = white

--- 

b => Node
    @b.x = 1
    @b.y = 5
    @b.text = $\star$ \bbtext{Variáveis devem iniciar em letra maiúscula ou com o caractere \code{prolog}{'_'}}
    @b.anchor = west
    @b.color = white

--- 

c => Node
    @c.x = 1
    @c.y = 4
    @c.text = $\star$ \bbtext{As variáveis permitem a declaração de sentenças abertas em Prolog, denominadas}
    @c.anchor = west
    @c.color = white

c1 => Node
    @c1.x = 0.5
    @c1.y = 3.5
    @c1.text = \bbtext{regras}
    @c1.anchor = west
    @c1.color = white

---
d => Node
    @d.x = 1
    @d.y = 2.5
    @d.text = $\star$ \bbtext{A sintaxe para a declaração da regra \code{prolog}{rule/N} é}
    @d.anchor = west
    @d.color = white

d8 => Node
    @d8.x = 7
    @d8.y = 1
    @d8.text = \code{prolog}{rule(X1, X2, ..., XN) :- body.}

---

d1 => Node
    @d1.x = 3.5
    @d1.y = 1.75
    @d1.text = \bbcomment{nome}
    @d1.anchor = east

e1 => Edge
    @e1.x = 4
    @e1.y = 1.25
    @e1.u = 4.8
    @e1.v = 1.25
    @e1.color = BBViolet
    &e1.thick

p1 => Path
    @p1.path = (4.4, 1.25) -- (4.4, 1.75) -- (3.5, 1.75)
    @p1.color = BBViolet
    &p1.-latex
    &p1.thick

---

d2 => Node
    @d2.x = 6.5
    @d2.y = -0.1
    @d2.text = \bbcomment{argumentos}

p2 => Path
    @p2.path = (5, 0.8) -- (5, 0.6) -- (8, 0.6) -- (8, 0.8)
    @p2.color = BBViolet
    &p2.thick

e2 => Edge
    @e2.x = 6.5
    @e2.y = 0.6
    @e2.u = 6.5
    @e2.v = 0.1
    @e2.color = BBViolet
    &e2.thick
    &e2.-latex


---

d3 => Node
    @d3.x = 8.7
    @d3.y = 1.75
    @d3.text = \bbcomment{aridade}
    @d3.anchor = west

p3 => Path
    @p3.path = (7.9, 1.2) -- (7.9, 1.75) -- (8.7, 1.75)
    @p3.color = BBViolet
    &p3.thick
    &p3.-latex

---

d4 => Node
    @d4.x = 10.5
    @d4.y = 0.2
    @d4.text = \bbcomment{corpo}
    @d4.anchor = west

p4 => Path
    @p4.path = (9.4, 0.8) -- (9.4, 0.2) -- (10.5, 0.2)
    @p4.color = BBViolet
    &p4.thick
    &p4.-latex

---

d5 => Node
    @d5.x = 11.5
    @d5.y = 0.92
    @d5.text = \bbcomment{terminador}
    @d5.anchor = west

p5 => Path
    @p5.path = (10, 0.92) -- (11.5, 0.92)
    @p5.color = BBViolet
    &p5.thick
    &p5.-latex


## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Declarando regras em Prolog}
    @title.anchor = west

---

a => Node
    @a.x = 1
    @a.y = 6
    @a.text = $\star$ \bbtext{Assim como os fatos, as regras devem ser declaradas em um arquivo `\bblink{.pl}}'
    @a.anchor = west

---

b => Node
    @b.x = 1
    @b.y = 5
    @b.text = $\star$ \bbtext{O corpo de uma regra deve ou ser uma proposição composta ou ser omitido}
    @b.anchor = west

---

c => Node
    @c.x = 1
    @c.y = 4
    @c.text = $\star$ \bbtext{Regras sem corpo correspondem a fatos. Por exemplo, o fato e a regra abaixo são }
    @c.anchor = west

c1 => Node
    @c1.x = 0.5
    @c1.y = 3.5
    @c1.text = \bbtext{equivalentes:}
    @c1.anchor = west

c2 => Node
    @c2.x = 2
    @c2.y = 2.5
    @c2.text = \inputsyntax{prolog}{codes/equiv.pl}
    @c2.anchor = west

---

d => Node
    @d.x = 1
    @d.y = 1.5
    @d.text = $\star$ \bbtext{Também como nos fatos, podemos ter múltiplas regras para o mesmo predicado: o }
    @d.anchor = west

d1 => Node
    @d1.x = 0.5
    @d1.y = 1
    @d1.text = \bbtext{predicado será determinado pelo disjunção de todas as regras e fatos declarados}
    @d1.anchor = west

---

e => Node
    @e.x = 1
    @e.y = 0
    @e.text = $\star$ \bbtext{Em Prolog, fatos e regras são denominados cláusulas}
    @e.anchor = west

## Text

\inputsnippet{prolog}{1}{18}{codes/rules.pl}

## Scene

title => Node
    @title.x = 0
    @title.y = 6.5
    @title.text = \Large \bbbold{Quantificador existencial}
    @title.anchor = west

body => Rect
    @body.x = 0.75
    @body.y = 5.5
    @body.u = 13.5
    @body.v = 2
    @body.fill = blue!10!white
    &body.rounded corners

box => Rect
    @box.x = 0.75
    @box.y = 5.5
    @box.u = 13.5
    @box.v = 2
    @box.color = BBBlue
    &box.draw
    &box.very thick
    &box.rounded corners

header => Rect
    @header.x = 0.75
    @header.y = 5.5
    @header.u = 13.5
    @header.v = 4.5
    @header.fill = BBBlue
    @header.color = BBBlue
    &header.draw
    &header.very thick
    &header.rounded corners


a => Node
    @a.x = 1
    @a.y = 5
    @a.text = \bbchalk{Definição} 
    @a.anchor = west
    @a.color = white

b1 => Node
    @b1.x = 1
    @b1.y = 4
    @b1.text = \bbtext{Sejam $S(x)$ uma sentença aberta. O quantificador existencial $\exists$ é utilizado na}
    @b1.anchor = west
    @b1.color = white

b2 => Node
    @b2.x = 1
    @b2.y = 3.25
    @b2.text = \bbtext{construção $\exists x.S(x)$, a qual significa que existe pelo menos um elemento no}
    @b2.anchor = west
    @b2.color = white

b3 => Node
    @b3.x = 1
    @b3.y = 2.5
    @b3.text = \bbtext{conjunto universal de $x$ tal que $S(x)$ é verdadeira.}
    @b3.anchor = west
    @b3.color = white

## End

## Scene

title => Node
    @title.x = 0
    @title.y = 6.5
    @title.text = \Large \bbbold{Referências}
    @title.anchor = west

a => Node
    @a.x = 1
    @a.y = 3
    @a.text = $\star$ \bbbold{SWI-Prolog.} \bbenglish{https://www.swi-prolog.org/,} \bbtext{acesso em 10/02/2026.}
    @a.anchor = west

b => Node
    @b.x = 1
    @b.y = 2
    @b.text = $\star$ \bbbold{WOLFRAM}\bbtext{, Stephen.} \bbenglish{George Boole: A 200-Year View,} \bbtext{acesso em 10/02/2026.}
    @b.anchor = west

c => Node
    @c.x = 1
    @c.y = 5
    @c.text = $\star$ \bbbold{dtonhofer/prolog\_notes.} \bbenglish{Negação as Failure,} \bbtext{acesso em 18/02/2026.}
    @c.anchor = west

d => Node
    @d.x = 1
    @d.y = 4
    @d.text = $\star$ \bbbold{MERRIT}\bbtext{, Dennis.} \bbenglish{Adventure in Prolog, Amzi!,} \bbtext{191 pgs, 2017.}
    @d.anchor = west

https://math.libretexts.org/Courses/SUNY_Schenectady_County_Community_College/Discrete_Structures/02%3A_Logical_Reasoning/2.03%3A_Open_Sentences_and_Sets, acesso em 10/03/2026

https://en.wikipedia.org/wiki/Prolog_syntax_and_semantics, acesso em 10/03/2026

https://www.bcb.gov.br/estabilidadefinanceira/historicocotacoes, 10/03/2026

## End

?- unb(fernando).
false.

?- unb(diana).
true.

?- ifb(X).
X = fernando.

?- unb(X).
X = ana ;
X = beto ;
X = carlos ;
X = diana ;
X = esther.

