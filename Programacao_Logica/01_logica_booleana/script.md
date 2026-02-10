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
