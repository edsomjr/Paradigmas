## Frame
\bbcover{Programação Lógica}{Lógica Proposicional Booleana}{Prof. Edson Alves}{Campus UnB Gama: Faculdade de Ciências e Tecnologias em Engenharia}

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{George Boole}
    @title.anchor = west

moses => Node
	@moses.x = 3
	@moses.y = 4
	@moses.text = \includegraphics[scale=0.2]{figs/george-boole.png}

flag => Node
	@flag.x = 1.2
	@flag.y = 1.2
	@flag.text = \includegraphics[scale=0.005]{figs/england.png}
	@flag.anchor = west

dates => Node
	@dates.x = 3.5
	@dates.y = 1.2
	@dates.text = * \bbtext{1815} \hspace*{0.05in} \bbtext{\textdagger\ 1864}

---

article => Node
    @article.x = 6
    @article.y = 6
    @article.text = \large {\bbnote{The Mathematic Analysis of Logic (1847)}}
    @article.anchor = west

---

a => Node
    @a.x = 6.5
    @a.y = 5
    @a.text = $\star$ \bbtext{Proposta de formalização da lógica por meio da}
    @a.anchor = west

b => Node
    @b.x = 6
    @b.y = 4.5
    @b.text = \bbtext{matemática}
    @b.anchor = west

---

c => Node
    @c.x = 6.5
    @c.y = 3.5
    @c.text = $\star$ \bbtext{O livro introduz os fundamentos da lógica}
    @c.anchor = west

c1 => Node
    @c1.x = 6
    @c1.y = 3
    @c1.text = \bbtext{proposicional booleana}
    @c1.anchor = west

---

d => Node
    @d.x = 6.5
    @d.y = 2
    @d.text = $\star$ \bbtext{Ele resgata e expande estes fundamentos no seu}
    @d.anchor = west

d1 => Node
    @d1.x = 6
    @d1.y = 1.5
    @d1.text = \bbtext{livro mais conhecido, } \bbnote{An Investigation of the Laws}
    @d1.anchor = west

d2 => Node
    @d2.x = 6
    @d2.y = 1
    @d2.text = \bbnote{of Thought (1849)}
    @d2.anchor = west

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Lógica Proposicional Booleana}
    @title.anchor = west

---

terms => Node
    @terms.x = 0.5
    @terms.y = 5
    @terms.text = \bbemph{Termos primitivos}
    @terms.anchor = west

---

a => Node
    @a.x = 1
    @a.y = 4
    @a.text = $\star$ \bbtext{Proposição}
    @a.anchor = west

---

b => Node
    @b.x = 1
    @b.y = 3
    @b.text = $\star$ \bbtext{Verdadeiro}
    @b.anchor = west

---

c => Node
    @c.x = 1
    @c.y = 2
    @c.text = $\star$ \bbtext{Falso}
    @c.anchor = west


---

axioms => Node
    @axioms.x = 7
    @axioms.y = 5
    @axioms.text = \bbemph{Axiomas}
    @axioms.anchor = west

---

d => Node
    @d.x = 7.5
    @d.y = 4
    @d.text = $\star$ \bbtext{Princípio do terceiro excluído}
    @d.anchor = west

---

e => Node
    @e.x = 7.5
    @e.y = 3
    @e.text = $\star$ \bbtext{Princípio da não-contradição}
    @e.anchor = west

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Prolog (1972)}
    @title.anchor = west

---

a => Node
    @a.x = 4
    @a.y = 6
    @a.text = \bbemph{Proponentes}

--- 

alain => Node
	@alain.x = 2
	@alain.y = 3
	@alain.text = \includegraphics[scale=0.35]{figs/alain.jpg}

alain_name => Node
	@alain_name.x = 2
	@alain_name.y = 0.5
	@alain_name.text = \bbtext{Alain Colmerauer}

--- 

philippe => Node
	@philippe.x = 6.5
	@philippe.y = 3
	@philippe.text = \includegraphics[scale=0.4]{figs/philippe.jpg}

philippe_name => Node
	@philippe_name.x = 6.5
	@philippe_name.y = 0.5
	@philippe_name.text = \bbtext{Philippe Roussel}

---

b => Node
    @b.x = 11
    @b.y = 6
    @b.text = \bbemph{Inspiração}

--- 

robert => Node
	@robert.x = 11
	@robert.y = 3
	@robert.text = \includegraphics[scale=0.35]{figs/robert.jpg}

robert_name => Node
	@robert_name.x = 11
	@robert_name.y = 0.5
	@robert_name.text = \bbtext{Robert Kowalski}

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{SWI Prolog}
    @title.anchor = west

---

a => Node
    @a.x = 1
    @a.y = 6
    @a.text = $\star$ \bbtext{ Prolog é uma contração da expressão ``PROgramming in LOGic''}
    @a.anchor = west

---

b => Node
    @b.x = 1
    @b.y = 5
    @b.text = $\star$ \bbtext{Tem raízes na lógica de primeira ordem}
    @b.anchor = west

---

c1 => Node
    @c1.x = 1
    @c1.y = 4
    @c1.text = $\star$ \bbtext{O SWI-Prolog pode ser instalado por meio do comando}
    @c1.anchor = west

c2 => Node
    @c2.x = 2
    @c2.y = 3
    @c2.text = \mintinline{bash}{$ sudo apt-get install swi-prolog}
    @c2.anchor = west

---

d1 => Node
    @d1.x = 1
    @d1.y = 2
    @d1.text = $\star$ \bbtext{O interpretador (}\bbenglish{listener}\bbtext{) Prolog pode ser invocado com o comando}
    @d1.anchor = west

d2 => Node
    @d2.x = 2
    @d2.y = 1
    @d2.text = \mintinline{bash}{$ prolog}
    @d2.anchor = west

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Valores lógicos em Prolog}
    @title.anchor = west

---

a1 => Node
    @a1.x = 1
    @a1.y = 6
    @a1.text = $\star$ \bbtext{Prolog implementa os termos primitivos} \bbenglish{verdadeiro} \bbtext{e} \bbenglish{falso} \bbtext{por meio dos}
    @a1.anchor = west

a2 => Node
    @a2.x = 0.5
    @a2.y = 5.5
    @a2.text = \bbtext{predicados \code{prolog}{true/0} e \code{prolog}{false/0}}
    @a2.anchor = west

---

b => Node
    @b.x = 2
    @b.y = 4
    @b.text = \inputsyntax{prolog}{codes/true_false.pl}
    @b.anchor = west

---

c => Node
    @c.x = 1
    @c.y = 2.5
    @c.text = $\star$ \bbtext{Prolog faz distinção entre maiúsculas e minúsculas}
    @c.anchor = west


---

d => Node
    @d.x = 2
    @d.y = 1.25
    @d.text = \inputsyntax{prolog}{codes/42.pl}
    @d.anchor = west

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Conectivos da lógica proposicional booleana}
    @title.anchor = west

---

top => Edge
    @top.x = 0
    @top.y = 6
    @top.u = 13
    @top.v = 6
    &top.very thick

mid => Edge
    @mid.x = 0
    @mid.y = 5
    @mid.u = 13
    @mid.v = 5
    &mid.thick

op => Node
    @op.x = 0.25
    @op.y = 5.5
    @op.text = \bbemph{Operação}
    @op.anchor = west

read => Node
    @read.x = 3
    @read.y = 5.5
    @read.text = \bbemph{Leitura}
    @read.anchor = west

desc => Node
    @desc.x = 5.5
    @desc.y = 5.5
    @desc.text = \bbemph{Definição}
    @desc.anchor = west

---

not => Node
    @not.x = 1.2
    @not.y = 4.5
    @not.text = $\lnot a$

not_read => Node
    @not_read.x = 3.8
    @not_read.y = 4.5
    @not_read.text = \footnotesize \bbtext{não $a$}

not_desc => Node
    @not_desc.x = 5.5
    @not_desc.y = 4.5
    @not_desc.text = \footnotesize \bbtext{Inverte o valor lógico de $a$}
    @not_desc.anchor = west

---

or => Node
    @or.x = 1.2
    @or.y = 3.75
    @or.text = $a\vee b$

or_read => Node
    @or_read.x = 3.8
    @or_read.y = 3.75
    @or_read.text = \footnotesize \bbtext{$a$ ou $b$}

or_desc => Node
    @or_desc.x = 5.5
    @or_desc.y = 3.75
    @or_desc.text = \footnotesize \bbtext{Falso apenas se $a$ e $b$ são ambos falsos}
    @or_desc.anchor = west

---

and => Node
    @and.x = 1.2
    @and.y = 3
    @and.text = $a\ \scalebox{0.8}\&\  b$

and_read => Node
    @and_read.x = 3.8
    @and_read.y = 3
    @and_read.text = \footnotesize \bbtext{$a$ e $b$}

and_desc => Node
    @and_desc.x = 5.5
    @and_desc.y = 3
    @and_desc.text = \footnotesize \bbtext{Verdadeiro apenas se $a$ e $b$ são ambos verdadeiros}
    @and_desc.anchor = west

---

conditional => Node
    @conditional.x = 1.2
    @conditional.y = 2.25
    @conditional.text = $a \to  b$

conditional_read => Node
    @conditional_read.x = 3.8
    @conditional_read.y = 2.25
    @conditional_read.text = \footnotesize \bbtext{se $a$, então $b$}

conditional_desc => Node
    @conditional_desc.x = 5.5
    @conditional_desc.y = 2.25
    @conditional_desc.text = \footnotesize \bbtext{Falso apenas se $a$ é verdadeiro e $b$ é falso}
    @conditional_desc.anchor = west

---

equivalence => Node
    @equivalence.x = 1.2
    @equivalence.y = 1.5
    @equivalence.text = $a\ \scalebox{1.2}[0.8]{\leftrightarrow}\ b$

equivalence_read => Node
    @equivalence_read.x = 3.8
    @equivalence_read.y = 1.5
    @equivalence_read.text = \footnotesize \bbtext{$a$ é equivalente a $b$}

equivalence_desc => Node
    @equivalence_desc.x = 5.5
    @equivalence_desc.y = 1.5
    @equivalence_desc.text = \footnotesize \bbtext{Verdadeiro se ambos tem mesmo valor lógico}
    @equivalence_desc.anchor = west


end => Edge
    @end.x = 0
    @end.y = 1
    @end.u = 13
    @end.v = 1
    &end.very thick

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Fatos}
    @title.anchor = west

---
a => Node
    @a.x = 1
    @a.y = 6
    @a.text = $\star$ \bbtext{Fatos são os predicados mais simples da linguagem Prolog}
    @a.anchor = west

---
b => Node
    @b.x = 1
    @b.y = 5
    @b.text = $\star$ \bbtext{Eles correspondem a proposições verdadeiras}
    @b.anchor = west

---
c => Node
    @c.x = 1
    @c.y = 4
    @c.text = $\star$ \bbtext{A sintaxe para a declaração do fato \code{prolog}{pred/N} é}
    @c.anchor = west

---
d => Node
    @d.x = 7
    @d.y = 2.5
    @d.text = \code{prolog}{pred(arg1, arg2, ..., argN).}

---

d1 => Node
    @d1.x = 3.5
    @d1.y = 3.25
    @d1.text = \bbcomment{nome}
    @d1.anchor = east

e1 => Edge
    @e1.x = 4.2
    @e1.y = 2.8
    @e1.u = 5
    @e1.v = 2.8
    @e1.color = BBViolet
    &e1.thick

p1 => Path
    @p1.path = (4.6, 2.8) -- (4.6, 3.25) -- (3.5, 3.25)
    @p1.color = BBViolet
    &p1.-latex
    &p1.thick

---

d2 => Node
    @d2.x = 7.3
    @d2.y = 1.2
    @d2.text = \bbcomment{argumentos}

p2 => Path
    @p2.path = (5.25, 2.3) -- (5.25, 2.2) -- (9.35, 2.2) -- (9.35, 2.3)
    @p2.color = BBViolet
    &p2.thick

e2 => Edge
    @e2.x = 7.3
    @e2.y = 2.2
    @e2.u = 7.3
    @e2.v = 1.5
    @e2.color = BBViolet
    &e2.thick
    &e2.-latex


---

d3 => Node
    @d3.x = 10
    @d3.y = 3.2
    @d3.text = \bbcomment{aridade}
    @d3.anchor = west

p3 => Path
    @p3.path = (9.25, 2.8) -- (9.25, 3.2) -- (10.05, 3.2)
    @p3.color = BBViolet
    &p3.thick
    &p3.-latex

---

d4 => Node
    @d4.x = 10.5
    @d4.y = 2.1
    @d4.text = \bbcomment{terminador}
    @d4.anchor = west

p4 => Path
    @p4.path = (9.675, 2.3) -- (9.675, 2.1) -- (10.5, 2.1)
    @p4.color = BBViolet
    &p4.thick
    &p4.-latex

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Declarando fatos em Prolog}
    @title.anchor = west

---
a => Node
    @a.x = 1
    @a.y = 6
    @a.text = $\star$ \bbtext{Em Prolog, os fatos devem ser declarados em arquivos, que serão lidos}
    @a.anchor = west

a1 => Node
    @a1.x = 0.5
    @a1.y = 5.5
    @a1.text = \bbtext{posteriormente pelo interpretador}
    @a1.anchor = west


---
b => Node
    @b.x = 1
    @b.y = 4.5
    @b.text = $\star$ \bbtext{A extensão deste arquivos deve ser \lq\bblink{.pl}'}
    @b.anchor = west

---
c => Node
    @c.x = 1
    @c.y = 3.5
    @c.text = $\star$ \bbtext{O interpretador pode ler um arquivo em sua inicialização, por meio da opção \lq\bblink{-s}\rq:}
    @c.anchor = west

c1 => Node
    @c1.x = 2
    @c1.y = 2.5
    @c1.text = \code{bash}{$ prolog -s source.pl}
    @c1.anchor = west

---
d => Node
    @d.x = 1
    @d.y = 1.5
    @d.text = $\star$ \bbtext{Os predicados \code{prolog}{consult/1} e \code{prolog}{reconsult/1} podem ser usados para carregar}
    @d.anchor = west

d1 => Node
    @d1.x = 0.5
    @d1.y = 1
    @d1.text = \bbtext{ou recarregar um arquivo em uma sessão interativa do interpretador Prolog}
    @d1.anchor = west

## Text

\inputsnippet{prolog}{1}{10}{codes/conectivos.pl}

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Programas em Prolog}
    @title.anchor = west

---
a => Node
    @a.x = 1
    @a.y = 6
    @a.text = $\star$ \bbtext{Em Prolog, os programas correspondem a consultas na base de fatos carregada}
    @a.anchor = west

a1 => Node
    @a1.x = 0.5
    @a1.y = 5.5
    @a1.text = \bbtext{no interpretador}
    @a1.anchor = west

---

b => Node
    @b.x = 1
    @b.y = 4.5
    @b.text = $\star$ \bbtext{Cada consulta é feita diretamente no interpretador e deve indicar o nome do}
    @b.anchor = west

b1 => Node
    @b1.x = 0.5
    @b1.y = 4
    @b1.text = \bbtext{predicado, seus os argumentos e o terminador (ponto final)}
    @b1.anchor = west

---

c => Node
    @c.x = 1
    @c.y = 3
    @c.text = $\star$ \bbtext{Se a consulta consiste em um único fato, o interpretador retornará verdadeiro}
    @c.anchor = west

c1 => Node
    @c1.x = 0.5
    @c1.y = 2.5
    @c1.text = \bbtext{se o fato em questão faz parte da base de fatos, ou falso, caso contrário}
    @c1.anchor = west

---

e => Node
    @e.x = 1
    @e.y = 1.5
    @e.text = $\star$ \bbtext{A opção \lq\code{prolog}{-s}\rq\ e os predicados \code{prolog}{consult/1} e \code{prolog}{reconsult/1} manipulam a base de}
    @e.anchor = west

e1 => Node
    @e1.x = 0.5
    @e1.y = 1
    @e1.text = \bbtext{fatos do interpretador, adicionando novos fatos ou atualizando os fatos existentes}
    @e1.anchor = west


## Text

\inputcode{prolog}{codes/program.pl}

## Scene

title => Node
    @title.x = 0
    @title.y = 6.5
    @title.text = \Large \bbbold{Referências}
    @title.anchor = west


a => Node
    @a.x = 1
    @a.y = 5
    @a.text = $\star$ \bbbold{SWI-Prolog.} \bbenglish{https://www.swi-prolog.org/,} \bbtext{acesso em 10/02/2026.}
    @a.anchor = west

b => Node
    @b.x = 1
    @b.y = 4
    @b.text = $\star$ \bbbold{WOLFRAM}\bbtext{, Stephen.} \bbenglish{George Boole: A 200-Year View,} \bbtext{acesso em 10/02/2026.}
    @b.anchor = west

## End
