## Frame
\bbcover{Combinadores}{Base $SK$}{Prof. Edson Alves}{Campus UnB Gama: Faculdade de Ciências e Tecnologias em Engenharia}

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Base SK}
    @title.anchor = west

---

a => Node
    @a.x = 4
    @a.y = 3.5
    @a.text = \includegraphics[scale=0.2]{figs/starling.png}

a1 => Node
    @a1.x = 4
    @a1.y = 0.75
    @a1.text = \bbtext{Estorninho (\bbenglish{starling})}

---

b => Node
    @b.x = 11
    @b.y = 3.5
    @b.text = \includegraphics[scale=0.235]{figs/kestrel.jpg}

b1 => Node
    @b1.x = 11
    @b1.y = 0.75
    @b1.text = \bbtext{Cernícalo americano (\bbenglish{kestrel})}

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Combinador $I$}
    @title.anchor = west

---

a => Node
    @a.x = 0.5
    @a.y = 6
    @a.text = $\star$ \bbtext{Das definições de $I$ e $K$, segue que}
    @a.anchor = west

a1 => Node
    @a1.x = 2.5
    @a1.y = 5.25
    @a1.text = $Ix = x = Kxy$
    @a1.anchor = west

---

b => Node
    @b.x = 0.5
    @b.y = 4.5
    @b.text = $\star$ \bbtext{Como $y$ é arbitrário, ele pode ser substituído por $Kx$:}
    @b.anchor = west

b1 => Node
    @b1.x = 2.5
    @b1.y = 3.75
    @b1.text = $Ix = Kx(Kx)$
    @b1.anchor = west

---

c => Node
    @c.x = 0.5
    @c.y = 3
    @c.text = $\star$ \bbtext{Da definição de $S$,  temos que}
    @c.anchor = west

c1 => Node
    @c1.x = 2.5
    @c1.y = 2.25
    @c1.text = $I = SKK$
    @c1.anchor = west

---

d => Node
    @d.x = 0.5
    @d.y = 1.5
    @d.text = $\star$ \bbtext{Note que o segundo $K$ pode ser subsituído por uma}
    @d.anchor = west

d1 => Node
    @d1.x = 0
    @d1.y = 0.75
    @d1.text = \bbtext{função arbitrária}
    @d1.anchor = west


---

identity => Node
    @identity.x = 12
    @identity.y = 4
    @identity.text = \includegraphics[scale=.3]{figs/identity.png}

label => Node
    @label.x = 12
    @label.y = 0.75
    @label.text = \footnotesize \bbtext{Albatroz de cauda curta (\bbenglish{`idiot bird'})}

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Combinador $B$}
    @title.anchor = west

---

bluebird => Node
    @bluebird.x = 3
    @bluebird.y = 4.5
    @bluebird.text = \includegraphics[scale=0.2]{figs/bluebird.jpg}

label => Node
    @label.x = 3
    @label.y = 2.5
    @label.text = \footnotesize \bbtext{Tordo-azul-oriental (\bbenglish{bluebird})}

---

a => Node
    @a.x = 5.5
    @a.y = 6
    @a.text = $\star$ \bbtext{Representado por Schönfinkel pela letra $Z$}
    @a.anchor = west

---

b => Node
    @b.x = 5.5
    @b.y = 5
    @b.text = $\star$ \bbtext{Pela definição,}
    @b.anchor = west

b1 => Node
    @b1.x = 8
    @b1.y = 4.25
    @b1.text = $Bfgx = f(gx)$
    @b1.anchor = west

---

c => Node
    @c.x = 5.5
    @c.y = 3.5
    @c.text = $\star$ \bbtext{Observe que}
    @c.anchor = west

c1 => Node
    @c1.x = 6
    @c1.y = 2.75
    @c1.text = $f(gx) = (Kfx)(gx) = S(Kf)gx = (KSf)(Kf)gx$
    @c1.anchor = west

---

d => Node
    @d.x = 5.5
    @d.y = 2
    @d.text = $\star$ \bbtext{Uma nova fusão em $f$ nos leva a}
    @d.anchor = west

d1 => Node
    @d1.x = 8
    @d1.y = 1.25
    @d1.text = $f(gx) = S(KS)Kfgx$
    @d1.anchor = west

---

e => Node
    @e.x = 5.5
    @e.y = 0.5
    @e.text = $\star$ \bbtext{Portanto, $B = S(KS)K$}
    @e.anchor = west

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Combinador $C$}
    @title.anchor = west

---
cardinal => Node
    @cardinal.x = 12
    @cardinal.y = 4
    @cardinal.text = \includegraphics[scale=0.125]{figs/cardinal.jpg}

label => Node
    @label.x = 12
    @label.y = 1.25
    @label.text = \footnotesize \bbtext{Cardeal-do-norte (\bbenglish{cardinal})}

a => Node
    @a.x = .5
    @a.y = 6
    @a.text = $\star$ \bbtext{Corresponde ao combinador $T$ de Schönfinkel}
    @a.anchor = west

---

b => Node
    @b.x = .5
    @b.y = 5
    @b.text = $\star$ \bbtext{Vale a seguinte sequência de transformações:}
    @b.anchor = west

b1 => Node
    @b1.x = 1.25
    @b1.y = 4
    @b1.text = $fxy = fx(Kyx) = (fx)(Kyx) = Sf(Ky)x$
    @b1.anchor = west

b2 => Node
    @b2.x = 2
    @b2.y = 3.25
    @b2.text = $= (Sf)(Ky)x = B(Sf)Kyx$
    @b2.anchor = west

b3 => Node
    @b3.x = 2
    @b3.y = 2.5
    @b3.text = $= BBSfKyx = (BBSf)Kyx$
    @b3.anchor = west

b4 => Node
    @b4.x = 2
    @b4.y = 1.75
    @b4.text = $= (BBSf)(KKf)yx = S(BBS)(KK)fyx$
    @b4.anchor = west

---
c => Node
    @c.x = 0.5
    @c.y = 0.7
    @c.text = $\star$ \bbtext{Portanto, $C = S(BBS)(KK)$}
    @c.anchor = west

## Text

\begin{tikzpicture}
    \node[draw,opacity=0] at (0, 0) {x};
    \node[draw,opacity=0] at (14, 8) {x};
	\node[anchor=west] (title) at (0.0, 7.0) { \Large \bbbold{Função de imcompatibilidade $U$} };

\node[anchor=west] at (0, 3.5) {\begin{tcolorbox}[colback=blue!5,colframe=blue!60!green,title=\textbf{Funções de incompatibilidade}]
\bbtext{O conectivo fundamental de Schönfinkel
$$
fx\ |^x\ gx,
$$
depende de duas funções proposicionais de um argumento $f$ e $g$, logo tem forma $U(f, g)$. Assim, usando a transformação de funções de múltiplos argumentos,
$$
Ufg = fx\ |^x\ gx,
$$
é a equação que define a função de incompatibilidade $U$.}
\end{tcolorbox}};

\end{tikzpicture}

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Principais resultados do artigo}
    @title.anchor = west

---

a => Node
    @a.x = 1
    @a.y = 6
    @a.text = $\star$ \bbtext{Schönfinkel afirma que qualquer fórmula lógica de primeira ordem pode ser }
    @a.anchor = west

a1 => Node
    @a1.x = 0.5
    @a1.y = 5.5
    @a1.text = \bbtext{expressa em termos das funções particulares $I, C, T, Z, S$ e $U$.}
    @a1.anchor = west

---

b => Node
    @b.x = 1
    @b.y = 4.5
    @b.text = $\star$ \bbtext{Dadas as reduções já apresentadas, de fato qualque fórmula lógica de primeira}
    @b.anchor = west

b1 => Node
    @b1.x = 0.5
    @b1.y = 4
    @b1.text = \bbtext{ordem pode ser expressa em termos $C, S$ e $U$.}
    @b1.anchor = west

---

c => Node
    @c.x = 1
    @c.y = 3
    @c.text = $\star$ \bbtext{Schönfinkel enuncia, mas não prova, este resultado. Ele dá apenas exemplos destas}
    @c.anchor = west

c1 => Node
    @c1.x = 0.5
    @c1.y = 2.5
    @c1.text = \bbtext{representações.}
    @c1.anchor = west

---

d => Node
    @d.x = 1
    @d.y = 1.5
    @d.text = $\star$ \bbtext{Ele esteve muito próximo de um resultado fundamental, mas não enunciou:}
    @d.anchor = west

d1 => Node
    @d1.x = 0.5
    @d1.y = 1
    @d1.text = \bbtext{``Qualquer combinador pode ser expresso em termos de $S$ e $K$ apenas (base $SK$)''.}
    @d1.anchor = west

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Principais resultados do artigo}
    @title.anchor = west

---

a => Node
    @a.x = 1
    @a.y = 6
    @a.text = $\star$ \bbtext{Na útlima seção, Schönfinkel introduz a função $J$, definida pelas igualdades}
    @a.anchor = west

a1 => Node
    @a1.x = 7
    @a1.y = 5
    @a1.text = $JC = U,\ \ \ JS = C, \ \ \ \mbox{e}\ \ \ Jx = S$,

a2 => Node
    @a2.x = 0.5
    @a2.y = 4.25
    @a2.text = \bbtext{onde $x$ é qualquer termo diferente de $C$ e $S$.}
    @a2.anchor = west

---

b => Node
    @b.x = 1
    @b.y = 3.5
    @b.text = $\star$ \bbtext{Ele argumenta que $J$ é diferente de $C$ e $S$, pois tem apenas 3 valores, enquanto}
    @b.anchor = west

b1 => Node
    @b1.x = 0.5
    @b1.y = 3
    @b1.text = \bbtext{que $C$ s $S$ tem infinitos.}
    @b1.anchor = west

---

c => Node
    @c.x = 1
    @c.y = 2
    @c.text = $\star$ \bbtext{Daí ele apresenta as seguintes reduções: }
    @c.anchor = west

c1 => Node
    @c1.x = 7
    @c1.y = 1.25
    @c1.text = $JJ = S,\ \ \ J(JJ) = JS = C\ \ \ \mbox{e}\ \ \ \ J[J(JJ)] = JC = U$

---

d => Node
    @d.x = 1
    @d.y = 0.5
    @d.text = $\star$ \bbtext{Portanto, qualquer forma lógica pode ser expressão apenas por $J$ e parêntesis.}
    @d.anchor = west

## Text

\begin{tikzpicture}
    \node[draw,opacity=0] at (0, 0) {x};
    \node[draw,opacity=0] at (14, 8) {x};
	\node[anchor=west] (title) at (0.0, 7.0) { \Large \bbbold{Combinadores} };

\node[anchor=west] at (0, 4.5) {\begin{tcolorbox}[colback=blue!5,colframe=blue!60!green,title=\textbf{Definição de combinador}]
\bbtext{Sejam $x_1, x_2, x_3, \ldots, x_N$ termos sem quaisquer restrições. Um combinador $\mathcal{C}$ é uma função destas variáveis
tal que seu valor depende única e exclusivamente de aplicação destes termos e de combinadores previamente definidos.}
\end{tcolorbox}};

\end{tikzpicture}

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Cálculo $SK$}
    @title.anchor = west

---

a => Node
    @a.x = 1
    @a.y = 6
    @a.text = $\star$ \bbtext{É um sistema computacional minimalista}
    @a.anchor = west

---
b => Node
    @b.x = 1
    @b.y = 5
    @b.text = $\star$ \bbtext{Todos os objetos são funções unárias}
    @b.anchor = west

---
c => Node
    @c.x = 1
    @c.y = 4
    @c.text = $\star$ \bbtext{Há apenas duas primitivas: $S$ e $K$}
    @c.anchor = west

---
d => Node
    @d.x = 1
    @d.y = 3
    @d.text = $\star$ \bbtext{Os parêntesis, que completam a sintaxe, são usados apenas para alterar}
    @d.anchor = west

d1 => Node
    @d1.x = 0.5
    @d1.y = 2.5
    @d1.text = \bbtext{a ordem de avaliação das expressões}
    @d1.anchor = west

---
e => Node
    @e.x = 1
    @e.y = 1.5
    @e.text = $\star$ \bbtext{A avaliação é feita da esquerda para a direita (formalmente, redução beta)}
    @e.anchor = west

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Redução beta}
    @title.anchor = west

---
a => Node
    @a.x = 0.5
    @a.y = 6
    @a.text = $\star$ \bbtext{Inicia aplicando a subexpressão mais à esquerda, se houverem argumentos suficiente}
    @a.anchor = west

---
b => Node
    @b.x = 0.5
    @b.y = 5
    @b.text = $\star$ \bbtext{Subexpressões à direita não são avaliadas (\bbenglish{lazy evaluation})}
    @b.anchor = west

---
c => Node
    @c.x = 0.5
    @c.y = 4
    @c.text = $\star$ \bbtext{Isto ocorre para evitar que termos que seriam descartados não se expandam }
    @c.anchor = west

c1 => Node
    @c1.x = 0
    @c1.y = 3.5
    @c1.text = \bbtext{infinitamente ou que não terminem}
    @c1.anchor = west


---
d => Node
    @d.x = 0.5
    @d.y = 2.5
    @d.text = $\star$ \bbtext{Por exemplo, a redução beta de $SII(SII)$ não termina, mas}
    @d.anchor = west

d1 => Node
    @d1.x = 7
    @d1.y = 1.74
    @d1.text = $KS(SII(SII)) = S$

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Combinador $M$}
    @title.anchor = west

---
mockingbird => Node
    @mockingbird.x = 11
    @mockingbird.y = 4.5
    @mockingbird.text = \includegraphics[scale=0.035]{figs/mockingbird.jpg}

label => Node
    @label.x = 11
    @label.y = 2
    @label.text = \footnotesize \bbtext{Tordo-imitador (\bbenglish{mockingbird})}

---
a => Node
    @a.x = 1
    @a.y = 6
    @a.text = $\star$ \bbtext{Por definição, $Mx = xx$}
    @a.anchor = west

---
b => Node
    @b.x = 1
    @b.y = 5
    @b.text = $\star$ \bbtext{Observe que:}
    @b.anchor = west

b1 => Node
    @b1.x = 2
    @b1.y = 4
    @b1.text = $Ma = aa = Ia(Ia) = SIIa$
    @b1.anchor = west

---
c => Node
    @c.x = 1
    @c.y = 3
    @c.text = $\star$ \bbtext{Portanto, $M = SII$}
    @c.anchor = west

---
d => Node
    @d.x = 1
    @d.y = 2
    @d.text = $\star$ \bbtext{A redução beta de $MM$ não termina}
    @d.anchor = west

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{\textit{To Mock a Mockingbird}}
    @title.anchor = west

---
a => Node
    @a.x = 0.5
    @a.y = 6
    @a.text = \bbbold{Definições:}
    @a.anchor = west

---
b => Node
    @b.x = 1
    @b.y = 5
    @b.text = $\star$ \bbtext{As letras maiúsculas ($A, B, \ldots$) são pássaros}
    @b.anchor = west

---
c => Node
    @c.x = 1
    @c.y = 4
    @c.text = $\star$ \bbtext{Quando o pássaro $A$ ouve o nome do pássaro $B$, ele responde o nome do}
    @c.anchor = west

c1 => Node
    @c1.x = 0.5
    @c1.y = 3.5
    @c1.text = \bbtext{pássaro $AB$}
    @c1.anchor = west

---
d => Node
    @d.x = 1
    @d.y = 2.5
    @d.text = $\star$ \bbtext{Em geral, $AB\neq BA$}
    @d.anchor = west

---
e => Node
    @e.x = 1
    @e.y = 1.5
    @e.text = $\star$ \bbtext{Para três pássaros quaisquer $A, B, C$, temos que $(AB)C$ e $A(BC)$ não são,}
    @e.anchor = west

e1 => Node
    @e1.x = 0.5
    @e1.y = 1
    @e1.text = \bbtext{necessariamente, iguais}
    @e1.anchor = west

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{\textit{The Significance of the Mockinbird}}
    @title.anchor = west

---
a => Node
    @a.x = 1
    @a.y = 6
    @a.text = $\star$ \bbtext{Se, ao ouvir o nome do pássaro $B$, $A$ responde $B$, dizemos que $A$ gosta de $B$}
    @a.anchor = west

---
b => Node
    @b.x = 1
    @b.y = 5
    @b.text = $\star$ \bbtext{Em notação simbólica, $A$ gosta de $B$ se $AB = B$}
    @b.anchor = west

---
c => Node
    @c.x = 1
    @c.y = 4
    @c.text = $\star$ \bbtext{Assuma que, na floresta, para quaisquer dois pássaros $A$ e $B$ existe um pássaro $C$}
    @c.anchor = west

c1 => Node
    @c1.x = 0.5
    @c1.y = 3.5
    @c1.text = \bbtext{tal que, para qualquer pássaro $x$, $Cx = A(Bx)$}
    @c1.anchor = west

---
d => Node
    @d.x = 1
    @d.y = 2.5
    @d.text = $\star$ \bbtext{Assuma também que o tordo-imitador $M$ mora na floresta}
    @d.anchor = west

---
e => Node
    @e.x = 1
    @e.y = 1.5
    @e.text = $\star$ \bbtext{Há dois rumores na floresta: $(a)$ que todo pássaro da floresta gosta de alguém; e }
    @e.anchor = west

e1 => Node
    @e1.x = 0.5
    @e1.y = 1.0
    @e1.text = \bbtext{$(b)$ que existe ao menos um pássaro que não gosta de ninguém}
    @e1.anchor = west

---
g => Node
    @g.x = 1
    @g.y = 0
    @g.text = $\star$ \bbtext{Qual dos dois rumores é verdadeiro?}
    @g.anchor = west

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Solução}
    @title.anchor = west

---
a => Node
    @a.x = 1
    @a.y = 6
    @a.text = $\star$ \bbtext{Seja $C$ o pássaro que compõem $A$ e $M$, isto é, $Cx = A(Mx)$ para qualquer}
    @a.anchor = west

a1 => Node
    @a1.x = 0.5
    @a1.y = 5.5
    @a1.text = \bbtext{pássaro $x$}
    @a1.anchor = west

---
b => Node
    @b.x = 1
    @b.y = 4.5
    @b.text = $\star$ \bbtext{Quando $C$ escuta seu próprio nome, qual é o pássaro que ele responde?}
    @b.anchor = west

---
c => Node
    @c.x = 1
    @c.y = 3.5
    @c.text = $\star$ \bbtext{Temos que $CC = A(MC)$, o que equivale a $A(MC) = CC$}
    @c.anchor = west

---
d => Node
    @d.x = 1
    @d.y = 2.5
    @d.text = $\star$ \bbtext{Quando ouve $C$, o tordo-imitador responde $MC = CC$}
    @d.anchor = west

---
e => Node
    @e.x = 1
    @e.y = 1.5
    @e.text = $\star$ \bbtext{Assim, quando ouve o nome do pássaro $MC$, o pássaro $A$ responde}
    @e.anchor = west

e1 => Node
    @e1.x = 7
    @e1.y = 0.75
    @e1.text = $A(MC) = CC = MC$

---
f => Node
    @f.x = 1
    @f.y = 0
    @f.text = $\star$ \bbtext{Portanto, o primeiro rumor é o verdadeiro}
    @f.anchor = west

## Scene

title => Node
    @title.x = 0
    @title.y = 6.5
    @title.text = \Large \bbbold{Referências}
    @title.anchor = west

a => Node
    @a.x = 1
    @a.y = 5
    @a.text = $\star$ \bbbold{USDA.} \href{https://www.aphis.usda.gov/operational-wildlife-activities/starlings-blackbirds}{\bbenglish{Operational Activities: Starlings and Blackbirds}}\bbtext{. Acesso em 07/04/2025.}
    @a.anchor = west

b => Node
    @b.x = 1
    @b.y = 4
    @b.text = $\star$ \bbbold{CornellLab.} \href{https://www.allaboutbirds.org/guide/American_Kestrel/id}{\bbenglish{American Kestrel: Identification}}\bbtext{. Acesso em 07/04/2025.}
    @b.anchor = west

c => Node
    @c.x = 1
    @c.y = 3
    @c.text = $\star$ \bbbold{HAYASHI}\bbtext{, Tobias.} \href{https://www.tobiashayashi.com/blog/2019/1/23/the-rare-idiot-bird}{\bbenglish{The rare `idiot bird'}}\bbtext{. Acesso em 07/04/2025}.
    @c.anchor = west

d => Node
    @d.x = 1
    @d.y = 2
    @d.text = $\star$ \bbbold{Wikipédia.} \href{https://en.wikipedia.org/wiki/Bluebird}{\bbenglish{Bluebird}}\bbtext{. Acesso em 07/04/2025.}
    @d.anchor = west

e => Node
    @e.x = 1
    @e.y = 1
    @e.text = $\star$ \bbbold{Tucson Bird Alliance.} \href{https://tucsonbirds.org/bird_profile/northern-cardinal/?ref=tas}{\bbenglish{Northern Cardinal}}\bbtext{. Acesso em 08/04/2025.}
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
    @a.text = $\star$ \bbbold{Wikipédia.} \href{https://en.wikipedia.org/wiki/Combinatory_logic}{\bbenglish{Combinatory Logic}}\bbtext{. Acesso em 08/04/2025.}
    @a.anchor = west

b => Node
    @b.x = 1
    @b.y = 4
    @b.text = $\star$ \bbbold{AMIKO}\bbtext{, Komi.} \href{https://komiamiko.me/math/ordinals/2020/06/21/ski-numerals.html}{\bbenglish{Large Numbers in the SKI combinador calculus}}\bbtext{. Acesso em 10/04/2025.}
    @b.anchor = west

c => Node
    @c.x = 1
    @c.y = 3
    @c.text = $\star$ \bbbold{CornellLab.} \href{https://www.allaboutbirds.org/guide/Northern_Mockingbird/id}{\bbenglish{Northern Mockingbird}}\bbtext{. Acesso em 11/04/2025.}
    @c.anchor = west

d => Node
    @d.x = 1
    @d.y = 2
    @d.text = $\star$ \bbbold{SMULLYAN}\bbtext{, Raymond M.} \href{https://www.amazon.com.br/Mock-Mockingbird-Other-Logic-Puzzles/dp/0192801422}{\bbenglish{To Mock a Mockingbird and Other Logic Puzzles}}\bbtext{. Oxford}
    @d.anchor = west

d1 => Node
    @d1.x = 0.5
    @d1.y = 1.5
    @d1.text = \bbtext{Press, 2000.}
    @d1.anchor = west


## End
