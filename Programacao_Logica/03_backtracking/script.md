## Frame
\bbcover{Programação Lógica}{Backtracking}{Prof. Edson Alves}{Campus UnB Gama: Faculdade de Ciências e Tecnologias em Engenharia}

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{\textit{Backtracking}}
    @title.anchor = west

---

a => Node
    @a.x = 1
    @a.y = 6
    @a.text = $\star$ \bbtext{Quando Prolog tenta satisfazer um objetivo a respeito de um predicado, ele percorre}
    @a.anchor = west

a1 => Node
    @a1.x = 0.5
    @a1.y = 5.5
    @a1.text = \bbtext{todas as cláusulas que definem o predicado}
    @a1.anchor = west

---
b => Node
    @b.x = 1
    @b.y = 4.5
    @b.text = $\star$ \bbtext{Se o objetivo e a cláusula unificam, ela satisfaz o objetivo e é marcada} 
    @b.anchor = west

---
c => Node
    @c.x = 1
    @c.y = 3.5
    @c.text = $\star$ \bbtext{O interpretador retorna os valores atados, no caso de variáveis, ou apenas ``\code{prolog}{true}''},
    @c.anchor = west

c1 => Node
    @c1.x = 0.5
    @c1.y = 3
    @c1.text = \bbtext{no caso em que todos os argumentos são constantes}
    @c1.anchor = west

---
d => Node
    @d.x = 1
    @d.y = 2
    @d.text = $\star$ \bbtext{Caso o usuário solicite, por meio do ponto-e-vírgula, ele retoma a busca entre as} 
    @d.anchor = west

d1 => Node
    @d1.x = 0.5
    @d1.y = 1.5
    @d1.text = \bbtext{cláusulas a partir da última marcação, desatando as variáveis previamente atadas}
    @d1.anchor = west

---
e => Node
    @e.x = 1
    @e.y = 0.5
    @e.text = $\star$ \bbtext{Este processo é denominado \bbenglish{backtracking}}
    @e.anchor = west

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Objetivos e fluxo de controle}
    @title.anchor = west

---

a => Node
    @a.x = 1
    @a.y = 6
    @a.text = $\star$ \bbtext{Um objetivo em Prolog tem quatro portas que representam o fluxo de controle de}
    @a.anchor = west

a1 => Node
    @a1.x = 0.5
    @a1.y = 5.5
    @a1.text = \bbtext{sua avaliação: chamada (\bbenglish{call}), saída (\bbenglish{exit}), retomada (\bbenglish{redo}) e falha (\bbenglish{fail})}
    @a1.anchor = west

---

b => Node
    @b.x = 1
    @b.y = 4.5
    @b.text = $\star$ \bbtext{A avaliação do objetivo inicia na chamada (porta \bbenglish{call})}
    @b.anchor = west

---
c => Node
    @c.x = 1
    @c.y = 3.5
    @c.text = $\star$ \bbtext{Se alguma cláusula unifica com o objetivo, a avaliação termina (porta \bbenglish{exit}), atando} 
    @c.anchor = west


c1 => Node
    @c1.x = 0.5
    @c1.y = 3
    @c1.text = \bbtext{as variáveis com os devidos elementos dos conjuntos universais}
    @c1.anchor = west

---
d => Node
    @d.x = 1
    @d.y = 2
    @d.text = $\star$ \bbtext{Caso contrário, a avaliação falha (porta \bbenglish{fail})}
    @d.anchor = west

---
e => Node
    @e.x = 1
    @e.y = 1
    @e.text = $\star$ \bbtext{Se for bem sucedida e seguida de um `\code{prolog}{;}', a avaliação é retomada (porta \bbenglish{redo}) a}
    @e.anchor = west


e1 => Node
    @e1.x = 0.5
    @e1.y = 0.5
    @e1.text = \bbtext{partir do ponto que parou, após desatar as variáveis}
    @e1.anchor = west

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Visualização do fluxo de uma consulta simples em Prolog}
    @title.anchor = west

goal => Rect
    @goal.x = 4.5
    @goal.y = 5.5
    @goal.u = 8.5
    @goal.v = 1.5
    &goal.very thick

label => Node
    @label.x = 6.5
    @label.y = 3.5
    @label.text = \bbtext{Objetivo}

e1 => Edge
    @e1.x = 3.5
    @e1.y = 5
    @e1.u = 4.5
    @e1.v = 5
    @e1.color = BBViolet
    &e1.thick
    &e1.-latex

call => Node
    @call.x = 3.5
    @call.y = 5.05
    @call.text = \bbenglish{call}
    @call.anchor = east

e2 => Edge
    @e2.x = 3.5
    @e2.y = 2
    @e2.u = 4.5
    @e2.v = 2
    @e2.color = BBViolet
    &e2.thick
    &e2.latex-

fail => Node
    @fail.x = 3.5
    @fail.y = 2
    @fail.text = \bbenglish{fail}
    @fail.anchor = east

e3 => Edge
    @e3.x = 8.5
    @e3.y = 5
    @e3.u = 9.5
    @e3.v = 5
    @e3.color = BBViolet
    &e3.thick
    &e3.-latex

exit => Node
    @exit.x = 9.5
    @exit.y = 5.05
    @exit.text = \bbenglish{exit}
    @exit.anchor = west

e4 => Edge
    @e4.x = 8.5
    @e4.y = 2
    @e4.u = 9.5
    @e4.v = 2
    @e4.color = BBViolet
    &e4.thick
    &e4.latex-

redo => Node
    @redo.x = 9.5
    @redo.y = 2.05
    @redo.text = \bbenglish{redo}
    @redo.anchor = west

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Consultas compostas}
    @title.anchor = west

---

a => Node
    @a.x = 1
    @a.y = 6
    @a.text = $\star$ \bbtext{Consultas simples podem ser combinadas em consultas \bbbold{compostas} por meio do}
    @a.anchor = west

a1 => Node
    @a1.x = 0.5
    @a1.y = 5.5
    @a1.text = \bbtext{operador `\code{prolog}{,/2}' (\bbbold{e} lógico)}
    @a1.anchor = west

---

b => Node
    @b.x = 1
    @b.y = 4.5
    @b.text = $\star$ \bbtext{A sintaxe para consultas compostas é}
    @b.anchor = west

b1 => Node
    @b1.x = 2
    @b1.y = 3.5
    @b1.text = \footnotesize \code{prolog}{?- query1(a1, ..., ak), query2(b1, ..., br), ..., queryN(z1, ..., zs).}
    @b1.anchor = west

---

c => Node
    @c.x = 1
    @c.y = 2.5
    @c.text = $\star$ \bbtext{Se uma mesma variável aparece em mais de um predicado da consulta composta,}
    @c.anchor = west

c1 => Node
    @c1.x = 0.5
    @c1.y = 2
    @c1.text = \bbtext{ela deve assumir o mesmo valor em todos eles}
    @c1.anchor = west

---

d => Node
    @d.x = 1
    @d.y = 1
    @d.text = $\star$ \bbtext{O escopo de uma variável lógica é uma consulta, seja simples ou composta}
    @d.anchor = west

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Fluxo de controle de consultas compostas}
    @title.anchor = west

---
a => Node
    @a.x = 1
    @a.y = 6
    @a.text = $\star$ \bbtext{O \bbenglish{backtracking} tentar unificar todos os objetivos, da esquerda para a direita}
    @a.anchor = west

---
b => Node
    @b.x = 1
    @b.y = 5
    @b.text = $\star$ \bbtext{Ele encerra com sucesso apenas se sai pela porta \bbenglish{exit} do predicado mais à direita}
    @b.anchor = west


---
c => Node
    @c.x = 1
    @c.y = 4
    @c.text = $\star$ \bbtext{Se uma consulta sai pela porta \bbenglish{redo}, apenas as variáveis atadas no predicado}
    @c.anchor = west


c1 => Node
    @c1.x = 0.5
    @c1.y = 3.5
    @c1.text = \bbtext{referente à saída são desatadas (nos demais, à esquerda, permanecem atadas)}
    @c1.anchor = west

---
d => Node
    @d.x = 1
    @d.y = 2.5
    @d.text = $\star$ \bbtext{Se a consulta falha para algum dos predicados, ela falha como um todo}
    @d.anchor = west

---
e => Node
    @e.x = 1
    @e.y = 1.5
    @e.text = $\star$ \bbtext{ A inserção do ponto-e-vírgula no interpretador força uma reentrada no último} 
    @e.anchor = west

e1 => Node
    @e1.x = 0.5
    @e1.y = 1
    @e1.text = \bbtext{predicado pela porta \bbenglish{redo}}
    @e1.anchor = west

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Visualização do fluxo de uma consulta composta em Prolog}
    @title.anchor = west

goal1 => Rect
    @goal1.x = 1.5
    @goal1.y = 5
    @goal1.u = 4.5
    @goal1.v = 2
    &goal1.very thick

goal2 => Rect
    @goal2.x = 5.5
    @goal2.y = 5
    @goal2.u = 8.5
    @goal2.v = 2
    &goal2.very thick

goal3 => Rect
    @goal3.x = 9.5
    @goal3.y = 5
    @goal3.u = 12.5
    @goal3.v = 2
    &goal3.very thick


label1 => Node
    @label1.x = 3
    @label1.y = 3.5
    @label1.text = \LARGE $Q_1$

label2 => Node
    @label2.x = 7
    @label2.y = 3.5
    @label2.text = \LARGE $Q_2$

label3 => Node
    @label3.x = 11
    @label3.y = 3.5
    @label3.text = \LARGE $Q_3$


e1 => Edge
    @e1.x = 0.5
    @e1.y = 4.5
    @e1.u = 1.5
    @e1.v = 4.5
    @e1.color = BBViolet
    &e1.thick
    &e1.-latex

e11 => Edge
    @e11.x = 4.5
    @e11.y = 4.5
    @e11.u = 5.5
    @e11.v = 4.5
    @e11.color = BBViolet
    &e11.thick
    &e11.-latex

e12 => Edge
    @e12.x = 8.5
    @e12.y = 4.5
    @e12.u = 9.5
    @e12.v = 4.5
    @e12.color = BBViolet
    &e12.thick
    &e12.-latex


call => Node
    @call.x = 0.5
    @call.y = 4.5
    @call.text = \bbenglish{call}
    @call.anchor = east

e2 => Edge
    @e2.x = 0.5
    @e2.y = 2.5
    @e2.u = 1.5
    @e2.v = 2.5
    @e2.color = BBViolet
    &e2.thick
    &e2.latex-

e21 => Edge
    @e21.x = 4.5
    @e21.y = 2.5
    @e21.u = 5.5
    @e21.v = 2.5
    @e21.color = BBViolet
    &e21.thick
    &e21.latex-

e22 => Edge
    @e22.x = 8.5
    @e22.y = 2.5
    @e22.u = 9.5
    @e22.v = 2.5
    @e22.color = BBViolet
    &e22.thick
    &e22.latex-


fail => Node
    @fail.x = 0.5
    @fail.y = 2.5
    @fail.text = \bbenglish{fail}
    @fail.anchor = east

e3 => Edge
    @e3.x = 12.5
    @e3.y = 4.5
    @e3.u = 13.5
    @e3.v = 4.5
    @e3.color = BBViolet
    &e3.thick
    &e3.-latex

exit => Node
    @exit.x = 13.5
    @exit.y = 4.5
    @exit.text = \bbenglish{exit}
    @exit.anchor = west

e4 => Edge
    @e4.x = 12.5
    @e4.y = 2.5
    @e4.u = 13.5
    @e4.v = 2.5
    @e4.color = BBViolet
    &e4.thick
    &e4.latex-

redo => Node
    @redo.x = 13.5
    @redo.y = 2.5
    @redo.text = \bbenglish{redo}
    @redo.anchor = west

## Text

\inputsnippet{prolog}{1}{17}{codes/capital.pl}

## End
## Scene

title => Node
    @title.x = 0
    @title.y = 6.5
    @title.text = \Large \bbbold{Referências}
    @title.anchor = west

a => Node
    @a.x = 1
    @a.y = 2
    @a.text = $\star$ \bbbold{SWI-Prolog.} \bbenglish{https://www.swi-prolog.org/,} \bbtext{acesso em 10/03/2026.}
    @a.anchor = west

b => Node
    @b.x = 1
    @b.y = 4
    @b.text = $\star$ \bbbold{LibreTexts Mathematics.} \bbenglish{Open Sentences and Sets,} \bbtext{acesso em 10/03/2026.}
    @b.anchor = west

c => Node
    @c.x = 1
    @c.y = 1
    @c.text = $\star$ \bbbold{Wikipédia.} \bbenglish{Prolog syntax and semantics,} \bbtext{acesso em 10/03/2026.}
    @c.anchor = west

d => Node
    @d.x = 1
    @d.y = 3
    @d.text = $\star$ \bbbold{MERRIT}\bbtext{, Dennis.} \bbenglish{Adventure in Prolog, Amzi!,} \bbtext{191 pgs, 2017.}
    @d.anchor = west

e => Node
    @e.x = 1
    @e.y = 5
    @e.text = $\star$ \bbbold{Banco Central do Brasil.} \bbenglish{Cotações e boletins,} \bbtext{acesso em 10/03/2026.}
    @e.anchor = west

## End
