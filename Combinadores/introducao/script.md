## Frame
\bbcover{Combinadores}{Introdução}{Prof. Edson Alves}{Campus UnB Gama: Faculdade de Ciências e Tecnologias em Engenharia}

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Moses Schönfinkel}
    @title.anchor = west

moses => Node
	@moses.x = 3
	@moses.y = 4
	@moses.text = \includegraphics[scale=0.3]{figs/moses2.png}

flag => Node
	@flag.x = 1.2
	@flag.y = 1.5
	@flag.text = \includegraphics[scale=0.015]{figs/ucrania.png}
	@flag.anchor = west

dates => Node
	@dates.x = 3.5
	@dates.y = 1.5
	@dates.text = * \bbtext{1889} \hspace*{0.05in} \bbtext{\textdagger\ 1942}

---

article => Node
    @article.x = 6
    @article.y = 6
    @article.text = \large {\bbnote{On the building blocks of mathematical logic}}
    @article.anchor = west

---

a => Node
    @a.x = 6.5
    @a.y = 5
    @a.text = $\star$ \bbtext{As ideias foram apresentadas em 1920}
    @a.anchor = west

---

b => Node
    @b.x = 6.5
    @b.y = 4
    @b.text = $\star$ \bbtext{O artigo foi publicado em 1924}
    @b.anchor = west

---

c => Node
    @c.x = 6.5
    @c.y = 3
    @c.text = $\star$ \bbtext{Introduziu os combinadores}
    @c.anchor = west

---

d => Node
    @d.x = 6.5
    @d.y = 2
    @d.text = $\star$ \bbtext{Resgatou a ideia de Frege (1893) de tratar}
    @d.anchor = west

d1 => Node
    @d1.x = 6
    @d1.y = 1.4
    @d1.text = \bbtext{todas as funções como unárias (\bbenglish{currying})}
    @d1.anchor = west

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

## End

% The propositional logic of Principia Mathematica and some of its forerunners by Daniel J. O'Leary
## End

% The propositional logic of Principia Mathematica and some of its forerunners by Daniel J. O'Leary

