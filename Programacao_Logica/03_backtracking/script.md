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

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Predicados extra-lógicos}
    @title.anchor = west

---
a => Node
    @a.x = 1
    @a.y = 6
    @a.text = $\star$ \bbtext{São predicados pré-definidos em Prolog, para os quais são há cláusulas}
    @a.anchor = west

---
b => Node
    @b.x = 1
    @b.y = 5
    @b.text = $\star$ \bbtext{Quando um objetivo unifica com um predicado extra-lógico, o interpretador Prolog}
    @b.anchor = west

b1 => Node
    @b1.x = 0.5
    @b1.y = 4.5
    @b1.text = \bbtext{chama uma rotina interna pré-definida}
    @b1.anchor = west

---
c => Node
    @c.x = 1
    @c.y = 3.5
    @c.text = $\star$ \bbtext{Estas rotinas realizam tarefas que estão fora do contexto da prova de teoremas} 
    @c.anchor = west

c1 => Node
    @c1.x = 0.5
    @c1.y = 3
    @c1.text = \bbtext{lógicos, como, por exemplo, escrever uma mensagem no terminal}
    @c1.anchor = west

---
d => Node
    @d.x = 1
    @d.y = 2
    @d.text = $\star$ \bbtext{Ele respondem tanto na porta \bbenglish{call} quando na porta \bbenglish{redo}}
    @d.anchor = west

---
e => Node
    @e.x = 1
    @e.y = 1
    @e.text = $\star$ \bbtext{A resposta na porta \bbenglish{redo} é denominada comportamento no \bbenglish{backtracking}}
    @e.anchor = west

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Exemplos de predicados extra-lógicos}
    @title.anchor = west

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
    @op.x = 0.25
    @op.y = 5.5
    @op.text = \bbemph{Predicado}
    @op.anchor = west

read => Node
    @read.x = 3
    @read.y = 5.5
    @read.text = \bbemph{Resposta na porta \bbenglish{call}}
    @read.anchor = west

desc => Node
    @desc.x = 9
    @desc.y = 5.5
    @desc.text = \bbemph{Resposta na porta \bbenglish{redo}}
    @desc.anchor = west

---

write => Node
    @write.x = 0.5
    @write.y = 4.25
    @write.text = \footnotesize \code{prolog}{write/1}
    @write.anchor = west

write_read => Node
    @write_read.x = 3
    @write_read.y = 4.5
    @write_read.text = \footnotesize \bbtext{Casa com qualquer padrão. Como efeito cola-}
    @write_read.anchor = west

write_read1 => Node
    @write_read1.x = 3
    @write_read1.y = 4
    @write_read1.text = \footnotesize \bbtext{teral, escreve seu argumento no console}
    @write_read1.anchor = west


write_desc => Node
    @write_desc.x = 11
    @write_desc.y = 4.5
    @write_desc.text = \footnotesize \bbtext{Sempre falha}

---

nl => Node
    @nl.x = 0.5
    @nl.y = 3
    @nl.text = \footnotesize \code{prolog}{nl/0}
    @nl.anchor = west

nl_read => Node
    @nl_read.x = 3
    @nl_read.y = 3
    @nl_read.text = \footnotesize \bbtext{Sempre é bem sucedido. Inicia uma nova linha}
    @nl_read.anchor = west

nl_desc => Node
    @nl_desc.x = 11
    @nl_desc.y = 3
    @nl_desc.text = \footnotesize \bbtext{Sempre falha}

---

tab => Node
    @tab.x = 0.5
    @tab.y = 2
    @tab.text = \footnotesize \code{prolog}{tab/1}
    @tab.anchor = west

tab_read => Node
    @tab_read.x = 3
    @tab_read.y = 2
    @tab_read.text = \footnotesize \bbtext{Avança o cursor $N$ espaços}
    @tab_read.anchor = west

tab_desc => Node
    @tab_desc.x = 11
    @tab_desc.y = 2
    @tab_desc.text = \footnotesize \bbtext{Sempre falha}

---

fail => Node
    @fail.x = 0.5
    @fail.y = 1
    @fail.text = \footnotesize \code{prolog}{fail/0}
    @fail.anchor = west

fail_read => Node
    @fail_read.x = 3
    @fail_read.y = 1
    @fail_read.text = \footnotesize \bbtext{Sempre falha. Equivale a \code{prolog}{false/0}.}
    @fail_read.anchor = west

fail_desc => Node
    @fail_desc.x = 11
    @fail_desc.y = 1
    @fail_desc.text = \footnotesize \bbtext{-}

end => Edge
    @end.x = 0
    @end.y = 0.5
    @end.u = 13.5
    @end.v = 0.5
    &end.very thick

## Text

\inputsnippet{prolog}{1}{19}{codes/unb_report.pl}

## Text

\inputsnippet{prolog}{1}{19}{codes/quadrilaterals.pl}

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Condicionais}
    @title.anchor = west

---
a => Node
    @a.x = 1
    @a.y = 6
    @a.text = $\star$ \bbtext{O predicado extra-lógico \code{prolog}{->/2} habilita o uso de condicionais em Prolog}
    @a.anchor = west

---
b => Node
    @b.x = 1
    @b.y = 5
    @b.text = $\star$ \bbtext{As sintaxes para os construtos condicionais são:}
    @b.anchor = west

b1 => Node
    @b1.x = 2
    @b1.y = 4.5
    @b1.text = \code{prolog}{If -> Then}
    @b1.anchor = west

b2 => Node
    @b2.x = 2
    @b2.y = 4
    @b2.text = \code{prolog}{If -> Then ; Else}
    @b2.anchor = west

---
c => Node
    @c.x = 1
    @c.y = 3
    @c.text = $\star$ \bbtext{Em ambos casos, se a variável \code{prolog}{If} corresponder a um predicado verdadeiro, o}
    @c.anchor = west

c2 => Node
    @c2.x = 0.5
    @c2.y = 2.5
    @c2.text = \bbtext{fluxo seguirá para o predicado \code{prolog}{Then}}
    @c2.anchor = west

---
d => Node
    @d.x = 1
    @d.y = 1.5
    @d.text = $\star$ \bbtext{No segundo caso, se a variável \code{prolog}{If} corresponder a um predicado falso, o fluxo}
    @d.anchor = west

d2 => Node
    @d2.x = 0.5
    @d2.y = 1
    @d2.text = \bbtext{seguirá para o predicado \code{prolog}{Else}}
    @d2.anchor = west

## Text

\inputsnippet{prolog}{1}{18}{codes/truth_table.pl}

## Text

\inputsnippet{prolog}{20}{40}{codes/truth_table.pl}

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Rastreamento}
    @title.anchor = west

---
a => Node
    @a.x = 1
    @a.y = 6
    @a.text = $\star$ \bbtext{O predicado \code{prolog}{trace/0} permite o rastreamento do fluxo de controle}
    @a.anchor = west

---
b => Node
    @b.x = 1
    @b.y = 5
    @b.text = $\star$ \bbtext{Após sua chamada, todas as consultas subsequentes serão rastreadas}
    @b.anchor = west

---
c => Node
    @c.x = 1
    @c.y = 4
    @c.text = $\star$ \bbtext{O comando \code{prolog}{creep} avança para o próximo passo da execução}
    @c.anchor = west

---
d => Node
    @d.x = 1
    @d.y = 3
    @d.text = $\star$ \bbtext{No SWI-Prolog, este comando pode ser inserido através da barra de espaço}
    @d.anchor = west


---
e => Node
    @e.x = 1
    @e.y = 2
    @e.text = $\star$ \bbtext{Para desativar o modo de rastreamento, consulte o predicado \code{prolog}{notrace/0}, e em}
    @e.anchor = west

e1 => Node
    @e1.x = 0.5
    @e1.y = 1.5
    @e1.text = \bbtext{seguida consulte o predicado \code{prolog}{nodebug/0}}
    @e1.anchor = west

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
