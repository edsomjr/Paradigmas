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
    @title.y = 6.5
    @title.text = \Large \bbbold{Referências}
    @title.anchor = west

a => Node
    @a.x = 1
    @a.y = 5
    @a.text = $\star$ \bbbold{WOLFRAM}\bbtext{, Stephen.} \bbenglish{George Boole: A 200-Year View,} \bbtext{acesso em 10/02/2026.}
    @a.anchor = west

## End

a1 => Node
    @a1.x = 0.5
    @a1.y = 4.25
    @a1.text = \bbtext{Mathematische Annalen (in German). 92 (3–4): 305–316, 1924.}
    @a1.anchor = west

b => Node
    @b.x = 1
    @b.y = 3.5
    @b.text = $\star$ \bbbold{O'LEARY}\bbtext{, Daniel J.} \bbenglish{The Propositional Logic of Principia Mathematica and Some}
    @b.anchor = west

b1 => Node
    @b1.x = 0.5
    @b1.y = 2.75
    @b1.text = \bbenglish{of Its Forerunners·} \bbtext{Russell: The Journal of Bertrand Russell Studies 8 (1) (1988).}
    @b1.anchor = west

c => Node
    @c.x = 1
    @c.y = 2
    @c.text = $\star$ \bbbold{FILHO}\bbtext{, Edgard de Alencar.} \bbenglish{Introdução à Lógica Matemática.} \bbtext{Nobel, 2009.}
    @c.anchor = west

## End

https://writings-stephenwolfram-com.translate.goog/2015/11/george-boole-a-200-year-view/?_x_tr_sl=en&_x_tr_tl=pt&_x_tr_hl=pt&_x_tr_pto=tc
## End
## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \bbemph{Termos primitivos}
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
    @op.text = \bbemph{Operação$^1$}
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
    @not.text = $\bar{a}$

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
    @equivalence.text = $a\ \scalebox{1.2}[0.8]{\sim}\ b$

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

---

footnote => Node
    @footnote.x = 0.5
    @footnote.y = 0.6
    @footnote.text = \footnotesize \bbtext{$^1$\ Notação de Hilbert}
    @footnote.anchor = west

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Redução tradicional (linguagens de programação)}
    @title.anchor = west

---

label => Node
    @label.x = 1
    @label.y = 5
    @label.text = \large \bbbold{Primitivos:}\ \ {\large $\bar{}, \scalebox{0.7}{\&}, \vee$}
    @label.anchor = west

---

label2 => Node
    @label2.x = 1
    @label2.y = 4
    @label2.text = \large \bbbold{Reduções:}
    @label2.anchor = west

---

conditional => Node
    @conditional.x = 7
    @conditional.y = 3.5
    @conditional.text = \Large $p \to q\ \equiv \ \bar{p}\vee q$

---

biconditional => Node
    @biconditional.x = 7
    @biconditional.y = 2.25
    @biconditional.text = \Large $p\ \scalebox{1.2}[0.8]{\sim}\ q\ \equiv\ (p\ \scalebox{0.7}{\&}\ q)\vee (\bar{p}\ \scalebox{0.7}{\&}\  \bar{q})$


## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Redução de Whitehead e Russell}
    @title.anchor = west

---

label => Node
    @label.x = 1
    @label.y = 5
    @label.text = \large \bbbold{Primitivos:}\ \ {\large $\bar{}, \vee$}
    @label.anchor = west

---

label2 => Node
    @label2.x = 1
    @label2.y = 4
    @label2.text = \large \bbbold{Reduções:}
    @label2.anchor = west

---
and => Node
    @and.x = 7
    @and.y = 3.5
    @and.text = \Large $p\ \scalebox{0.8}{\&}\ q\ \equiv \overline{(\bar{p}\vee \bar{q})}$
---

conditional => Node
    @conditional.x = 7
    @conditional.y = 2.25
    @conditional.text = \Large $p \to q\ \equiv \ \bar{p}\vee q$

---

biconditional => Node
    @biconditional.x = 7
    @biconditional.y = 1
    @biconditional.text = \Large $p\ \scalebox{1.2}[0.8]{\sim}\ q\ \equiv\ (p\to q)\ \scalebox{0.7}{\&}\ (\bar{q}\to  \bar{p})$

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Conectivos de Scheffer}
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
    @op.text = \bbemph{Conectivo}
    @op.anchor = west

read => Node
    @read.x = 3
    @read.y = 5.5
    @read.text = \bbemph{Nome}
    @read.anchor = west

desc => Node
    @desc.x = 5.5
    @desc.y = 5.5
    @desc.text = \bbemph{Definição}
    @desc.anchor = west

---

and => Node
    @and.x = 1.2
    @and.y = 4.25
    @and.text = $\downarrow$

and_read => Node
    @and_read.x = 3.8
    @and_read.y = 4.25
    @and_read.text = \footnotesize \bbtext{negação conjunta}

and_desc => Node
    @and_desc.x = 5.5
    @and_desc.y = 4.5
    @and_desc.text = \footnotesize \bbtext{Verdadeira somente quando ambas proposições são falsas}
    @and_desc.anchor = west

and_desc2 => Node
    @and_desc2.x = 5.5
    @and_desc2.y = 4
    @and_desc2.text = \footnotesize $(p\downarrow q\equiv \bar{p}\ \scalebox{0.8}{\&}\ \bar{q})$
    @and_desc2.anchor = west

---

not => Node
    @not.x = 1.2
    @not.y = 2.75
    @not.text = $\uparrow$

not_read => Node
    @not_read.x = 3.8
    @not_read.y = 2.75
    @not_read.text = \footnotesize \bbtext{negação disjunta}

not_desc => Node
    @not_desc.x = 5.5
    @not_desc.y = 3
    @not_desc.text = \footnotesize \bbtext{Falsa somente quando ambas proposições são verdadeiras}
    @not_desc.anchor = west

not_desc2 => Node
    @not_desc2.x = 5.5
    @not_desc2.y = 2.5
    @not_desc2.text = \footnotesize $(p\uparrow q\equiv \bar{p}\vee \bar{q})$
    @not_desc2.anchor = west

end => Edge
    @end.x = 0
    @end.y = 2
    @end.u = 13
    @end.v = 2
    &end.very thick

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Redução de Scheffer (1913)}
    @title.anchor = west

---

label => Node
    @label.x = 1
    @label.y = 5
    @label.text = \large \bbbold{Primitivo:}\ \ {\large $\uparrow$} \bbtext{(notação de Schönfinkel: $p\ |\ q$)}
    @label.anchor = west

---

label2 => Node
    @label2.x = 1
    @label2.y = 4
    @label2.text = \large \bbbold{Reduções:}
    @label2.anchor = west

---
and => Node
    @and.x = 7
    @and.y = 3.5
    @and.text = \Large $p\ \scalebox{0.8}{\&}\ q\ \equiv\ (p\ |\ q)\ |\ (p\ |\ q)$

---

or => Node
    @or.x = 7
    @or.y = 2.25
    @or.text = \Large $p \vee q\ \equiv \ (p\ |\ p)\ |\ (q\ |\ q)$

---

not => Node
    @not.x = 7
    @not.y = 1
    @not.text = \Large $\bar{p} \equiv\ (p\ |\ p)$

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Quantificadores}
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
    @op.text = \bbemph{Notação}
    @op.anchor = west

read => Node
    @read.x = 3
    @read.y = 5.5
    @read.text = \bbemph{Nome}
    @read.anchor = west

desc => Node
    @desc.x = 5.5
    @desc.y = 5.5
    @desc.text = \bbemph{Definição}
    @desc.anchor = west

---

exists => Node
    @exists.x = 1.2
    @exists.y = 4.5
    @exists.text = $(Ex)f(x)$

exists2 => Node
    @exists2.x = 1.2
    @exists2.y = 4
    @exists2.text = $\exists x.f(x)$


exists_read => Node
    @exists_read.x = 3.8
    @exists_read.y = 4.5
    @exists_read.text = \footnotesize \bbtext{quantificador}

exists_read2 => Node
    @exists_read2.x = 3.8
    @exists_read2.y = 4
    @exists_read2.text = \footnotesize \bbtext{existencial}


exists_desc => Node
    @exists_desc.x = 5.5
    @exists_desc.y = 4.25
    @exists_desc.text = \footnotesize \bbtext{Existe ao menos um $x$ que tem a propriedade $f$}
    @exists_desc.anchor = west

---

forall => Node
    @forall.x = 1.2
    @forall.y = 3
    @forall.text = $(x)f(x)$

forall2 => Node
    @forall2.x = 1.2
    @forall2.y = 2.5
    @forall2.text = $\forall x.f(x)$


forall_read => Node
    @forall_read.x = 3.8
    @forall_read.y = 3
    @forall_read.text = \footnotesize \bbtext{quantificador}

forall_read2 => Node
    @forall_read2.x = 3.8
    @forall_read2.y = 2.5
    @forall_read2.text = \footnotesize \bbtext{universal}


forall_desc => Node
    @forall_desc.x = 5.5
    @forall_desc.y = 2.75
    @forall_desc.text = \footnotesize \bbtext{Todo $x$ tem a propriedade $f$}
    @forall_desc.anchor = west

end => Edge
    @end.x = 0
    @end.y = 2
    @end.u = 13
    @end.v = 2
    &end.very thick

---

connective => Node
    @connective.x = 0
    @connective.y = 1
    @connective.text = \footnotesize \bbbold{Conectivo fundamental de Schönfinkel}: $f(x)\, |^x\, g(x)\ \equiv\ (x)[\overline{f(x)}\vee\overline{g(x)}]\ \equiv\ (x)\overline{f(x)\ \scalebox{0.8}{\&}\ g(x)}$
    @connective.anchor = west

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Reduções de Schönfinkel}
    @title.anchor = west

---

label => Node
    @label.x = 0
    @label.y = 6
    @label.text = \large \bbbold{Primitivo:}\ \ {\large $f(x)\, |^x\,  g(x)$}
    @label.anchor = west

---

label2 => Node
    @label2.x = 0
    @label2.y = 5
    @label2.text = \large \bbbold{Reduções:}
    @label2.anchor = west

---

not => Node
    @not.x = 0.5
    @not.y = 4
    @not.text = \large $\bar{a} = a\, |^x\,  a$
    @not.anchor = west

---

or => Node
    @or.x = 0.5
    @or.y = 3
    @or.text = \large $a\vee b = (x)(a\vee b) = \bar{a}\, |^x\,  \bar{b} = (a\, |^y\,  a)\, |^x\,  (b\, |^y\, b)$
    @or.anchor = west

---

exists => Node
    @exists.x = 0.5
    @exists.y = 2
    @exists.text = \large $(x)f(x) = (x)(\overline{\overline{f(x)}}\vee \overline{\overline{f(x)}})  = \overline{f(x)}\, |^x\, \overline{f(x)} = (f(x)\, |^y\, f(x))\, |^x\, (f(x)\, |^y\, f(x))$
    @exists.anchor = west

---

forall => Node
    @forall.x = 0.5
    @forall.y = 1
    @forall.text = \large $(Ex)f(x) = \overline{(x)\overline{f(x)}}$
    @forall.anchor = west

## Text

\begin{tikzpicture}
    \node[draw,opacity=0] at (0, 0) {x};
    \node[draw,opacity=0] at (14, 8) {x};
	\node[anchor=west] (title) at (0.0, 7.0) { \Large \bbbold{Cálculo funcional} };

\node[anchor=west] at (0, 3.5) {\begin{tcolorbox}[colback=blue!5,colframe=blue!60!green,title=\textbf{Funções de um argumento}]
\bbtext{Uma função $f$ de um argumento $x$ pode ser representada pela justaposição dos símbolos da função e de seu argumento. Em notação matemática,}
$$
f(x)\ \equiv\ fx
$$
\end{tcolorbox}};

\end{tikzpicture}

## Text

\begin{tikzpicture}
    \node[draw,opacity=0] at (0, 0) {x};
    \node[draw,opacity=0] at (14, 8) {x};
	\node[anchor=west] (title) at (0.0, 7.5) { \Large \bbbold{Cálculo funcional} };

\node[anchor=west] at (0, 3.5) {\begin{tcolorbox}[colback=blue!5,colframe=blue!60!green,title=\textbf{Funções de vários argumentos}]
\bbtext{Uma função $F(x, y)$ de dois argumentos pode ser reduzida a duas funções de um único argumento. Defina, para um $x$ fixo, a função
$G_x(y)$ tal que $G_x(y) = F(x, y)$. Ou seja, uma vez fixado $x$, $G_x$ coincide com $F$ em todos os pares $(x, y)$. Como $G$ é uma função de um
único argumento, podemos escrever $G = fx$ e}
$$
F(x, y) = G_x(y) = (G_x)y = (fx)y = fxy
$$
\bbtext{Esta redução pode ser aplicada para uma função $H$ com $N$ argumentos $x_1, x_2, \ldots, x_N$:}
$$
H(x_1, x_2, \ldots, x_N) = Hx_1x_2\ldots x_N
$$
\end{tcolorbox}};

\end{tikzpicture}

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Combinadores}
    @title.anchor = west

---

a => Node
    @a.x = 1
    @a.y = 6
    @a.text = $\star$ \bbtext{No artigo, Schönfinkel os denominou \bbnote{funções particulares}}
    @a.anchor = west

---
b => Node
    @b.x = 1
    @b.y = 5
    @b.text = $\star$ \bbtext{Foram propostos cinco combinadores:}
    @b.anchor = west

---
c => Node
    @c.x = 2
    @c.y = 4.5
    @c.text = $\circ$ \footnotesize \bbtext{Função identidade $I$ (\bbenglish{Identitätsfunktion})}
    @c.anchor = west

---

c2 => Node
    @c2.x = 2
    @c2.y = 4
    @c2.text = $\circ$ \footnotesize \bbtext{Função constância $C$ (\bbenglish{Konstanzfuncktion})}
    @c2.anchor = west

---

c3 => Node
    @c3.x = 2
    @c3.y = 3.5
    @c3.text = $\circ$ \footnotesize \bbtext{Função de intercâmbio $T$  (\bbenglish{Vertauschungsfunktion})}
    @c3.anchor = west

---

c4 => Node
    @c4.x = 2
    @c4.y = 3
    @c4.text = $\circ$ \footnotesize \bbtext{Função de composição $Z$  (\bbenglish{Zusammeensetzungsfunktion})}
    @c4.anchor = west

---

c5 => Node
    @c5.x = 2
    @c5.y = 2.5
    @c5.text = $\circ$ \footnotesize \bbtext{Função de fusão $S$  (\bbenglish{Verschmelzungsfunktion})}
    @c5.anchor = west

---
d1 => Node
    @d1.x = 1
    @d1.y = 1.5
    @d1.text = $\star$ \bbtext{Posteriormente, o combinador $C$ passou a usar a notação $K$, remetendo ao termo}
    @d1.anchor = west

d2 => Node
    @d2.x = 0.5
    @d2.y = 1.0
    @d2.text = \bbtext{original em alemão}
    @d2.anchor = west

## Text

\begin{tikzpicture}
    \node[draw,opacity=0] at (0, 0) {x};
    \node[draw,opacity=0] at (14, 8) {x};
	\node[anchor=west] (title) at (0.0, 7.0) { \Large \bbbold{Combinador $I$} };

\node[anchor=west] at (0, 3.5) {\begin{tcolorbox}[colback=blue!5,colframe=blue!60!green,title=\textbf{Função identidade}]
\bbtext{A função identidade $I$ é uma função cujo argumento não tem nenhuma restrição (pode ser, inclusive, uma função) e cujo valor
sempre coincide com seu argumento. Assim,}
$$
Ix = x
$$
\bbtext{onde o sinal de igualdade não representa equivalência lógica, e sim que ambos lados da expressão tem mesmo significado (por exemplo,
$II = I$).}
\end{tcolorbox}};

\end{tikzpicture}

## Text

\begin{tikzpicture}
    \node[draw,opacity=0] at (0, 0) {x};
    \node[draw,opacity=0] at (14, 8) {x};
	\node[anchor=west] (title) at (0.0, 7.0) { \Large \bbbold{Combinador $K$} };

\node[anchor=west] at (0, 3.5) {\begin{tcolorbox}[colback=blue!5,colframe=blue!60!green,title=\textbf{Função constância}]
\bbtext{Assuma que, para um argumento $x$ arbitrário, o valor da função seja sempre igual a um valor fixo $a$. Esta função depende de $a$, logo
tem a forma $Ka$. Podemos escrever
$$
(Ka)y = a
$$
Permitindo que $a$ também seja variável, obtemos
$$
(Kx)y = x,\ \ \mbox{ou}\ \ Kxy = x,
$$
a equação que define a função constância $K$.}
\end{tcolorbox}};

\end{tikzpicture}

## Text

\begin{tikzpicture}
    \node[draw,opacity=0] at (0, 0) {x};
    \node[draw,opacity=0] at (14, 8) {x};
	\node[anchor=west] (title) at (0.0, 7.0) { \Large \bbbold{Combinador $T$} };

\node[anchor=west] at (0, 3.5) {\begin{tcolorbox}[colback=blue!5,colframe=blue!60!green,title=\textbf{Função de intercâmbio}]
\bbtext{A função de intercâmbio $T$ recebe como argumento uma função da função $\varphi x y$ e retorna uma função
$$
\psi = T\varphi
$$
tal que o valor $\psi xy$ coincide com $\varphi y x$ para todos os argumentos $x$ e $y$ para os quais $\varphi$ tem significado. Assim,
$$
(T\varphi)xy = \varphi yx,
$$
onde os parêntesis podem ser omitidos.}
\end{tcolorbox}};

\end{tikzpicture}

## Text

\begin{tikzpicture}
    \node[draw,opacity=0] at (0, 0) {x};
    \node[draw,opacity=0] at (14, 8) {x};
	\node[anchor=west] (title) at (0.0, 7.5) { \Large \bbbold{Combinador $Z$} };

\node[anchor=west] at (0, 3.5) {\begin{tcolorbox}[colback=blue!5,colframe=blue!60!green,title=\textbf{Função de composição}]
\bbtext{Se uma função $f$ de um argumento recebe, como argumento, o valor de uma função $g$ de um argumento, a função $F = f(gx)$ é a função
composta de $f$ e $g$. A função $F$ é o valor de uma certa função $Z'$ de $f$ e $g$. Assim
$$
[Z'(\varphi, \chi)]x = \varphi(\chi x)
$$
Usando a convenção de trocar $Z'$ por uma função de um argumento, obtemos
$$
Z\varphi \chi x = \varphi(\chi x),
$$
a função de composição $Z$, onde os parêntesis não podem ser eliminados.}
\end{tcolorbox}};

\end{tikzpicture}

## Text

\begin{tikzpicture}
    \node[draw,opacity=0] at (0, 0) {x};
    \node[draw,opacity=0] at (14, 8) {x};
	\node[anchor=west] (title) at (0.0, 7.0) { \Large \bbbold{Combinador $S$} };

\node[anchor=west] at (0, 3.5) {\begin{tcolorbox}[colback=blue!5,colframe=blue!60!green,title=\textbf{Função de fusão}]
\bbtext{Se na expressão $fxy$ substituirmos $y$ pelo valor de uma função $g$ em $x$, obtemos
$$
fx(gx) = Fx
$$
Esta função $F = S'(f, g)$ depende das funções $f$ e $g$, de modo que $[S'(\varphi, \chi)]x = \varphi x(\chi x)$. A substuição por
funções de um argumento leva a
$$
S\varphi \chi x = \varphi x(\chi x),
$$
a função de fusão $S$.}
\end{tcolorbox}};

\end{tikzpicture}

