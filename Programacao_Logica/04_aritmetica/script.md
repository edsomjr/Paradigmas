## Frame
\bbcover{Programação Lógica}{Aritmética}{Prof. Edson Alves}{Campus UnB Gama: Faculdade de Ciências e Tecnologias em Engenharia}

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Operador \code{prolog}{is/2}}
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
    @title.y = 7
    @title.text = \Large \bbbold{Operadores em Prolog}
    @title.anchor = west

---
a => Node
    @a.x = 1
    @a.y = 6
    @a.text = $\star$ \bbtext{Operadores são predicados que suportam, além da pré-fixada padrão, as notações}
    @a.anchor = west

a1 => Node
    @a1.x = 0.5
    @a1.y = 5.5
    @a1.text = \bbtext{infixada ou pós-fixada}
    @a1.anchor = west

---
b => Node
    @b.x = 1
    @b.y = 4.5
    @b.text = $\star$ \bbtext{Novos operadores podem ser declarados por meio da diretiva \code{prolog}{op/3}:}
    @b.anchor = west

b1 => Node
    @b1.x = 2
    @b1.y = 3.5
    @b1.text = \code{prolog}{:- op(Precedence, Type, Name).}
    @b1.anchor = west

---
c => Node
    @c.x = 1
    @c.y = 2.5
    @c.text = $\star$ \bbtext{\code{prolog}{Name} é o átomo que nomeia o operador e \code{prolog}{Precedence} é um inteiro entre \code{prolog}{0} e \code{prolog}{1200}:}
    @c.anchor = west

c1 => Node
    @c1.x = 0.5
    @c1.y = 2
    @c1.text = \bbtext{quando menor o valor, maior a precedência}
    @c1.anchor = west

---
d => Node
    @d.x = 1
    @d.y = 1
    @d.text = $\star$ \bbtext{\code{prolog}{Type} é um átomo, composto pelos caracteres \code{prolog}{x}, \code{prolog}{y} e \code{prolog}{f}, que determina a posição}
    @d.anchor = west

d1 => Node
    @d1.x = 0.5
    @d1.y = 0.5
    @d1.text = \bbtext{do operador (indicada por \code{prolog}{f}) e a associatividade (determinada pela posição de \code{prolog}{y})}
    @d1.anchor = west

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Operadores em Prolog}
    @title.anchor = west

a => Node
    @a.x = 1
    @a.y = 6
    @a.text = $\star$ \bbtext{Por exemplo, o átomo \code{prolog}{xfy} caracteriza um operador binário, infixado e associativo}
    @a.anchor = west

a1 => Node
    @a1.x = 0.5
    @a1.y = 5.5
    @a1.text = \bbtext{à direita}
    @a1.anchor = west

---
b => Node
    @b.x = 1
    @b.y = 4.5
    @b.text = $\star$ \bbtext{Já o átomo \code{prolog}{xf} caracteriza um operador unário e pós-fixado}
    @b.anchor = west

---
e => Node
    @e.x = 1
    @e.y = 3.5
    @e.text = $\star$ \bbtext{O valor \code{prolog}{0} (zero) para precedência, de fato, apaga a declaração do operador}
    @e.anchor = west


---
c => Node
    @c.x = 1
    @c.y = 2.5
    @c.text = $\star$ \bbtext{O tipo e a precedência de um operador pré-definido podem ser obtidos por meio do}
    @c.anchor = west

c1 => Node
    @c1.x = 0.5
    @c1.y = 2
    @c1.text = \bbtext{predicado \code{prolog}{current_op/3}, cuja sintaxe é:}
    @c1.anchor = west

d => Node
    @d.x = 2
    @d.y = 1
    @d.text = \code{prolog}{current_op(Precedence, Type, Name).}
    @d.anchor = west

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Operadores aritméticos}
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
    @op.text = \bbemph{Operador}
    @op.anchor = west

type => Node
    @type.x = 3
    @type.y = 5.5
    @type.text = \bbemph{Tipo}
    @type.anchor = west

prec => Node
    @prec.x = 5
    @prec.y = 5.5
    @prec.text = \bbemph{Precedência}
    @prec.anchor = west


desc => Node
    @desc.x = 7.5
    @desc.y = 5.5
    @desc.text = \bbemph{Descrição}
    @desc.anchor = west

---

add => Node
    @add.x = 1.2
    @add.y = 4.5
    @add.text = \footnotesize \code{prolog}{+/2}

add_type => Node
    @add_type.x = 3.5
    @add_type.y = 4.5
    @add_type.text = \footnotesize \code{prolog}{yfx}

add_prec => Node
    @add_prec.x = 6.5
    @add_prec.y = 4.5
    @add_prec.text = \footnotesize \code{prolog}{500}
    @add_prec.anchor = east


add_desc => Node
    @add_desc.x = 7.5
    @add_desc.y = 4.5
    @add_desc.text = \footnotesize \bbtext{Adição}
    @add_desc.anchor = west

---

sub => Node
    @sub.x = 1.2
    @sub.y = 4
    @sub.text = \footnotesize \code{prolog}{-/2}

sub_type => Node
    @sub_type.x = 3.5
    @sub_type.y = 4
    @sub_type.text = \footnotesize \code{prolog}{yfx}

sub_prec => Node
    @sub_prec.x = 6.5
    @sub_prec.y = 4
    @sub_prec.text = \footnotesize \code{prolog}{500}
    @sub_prec.anchor = east

sub_desc => Node
    @sub_desc.x = 7.5
    @sub_desc.y = 4
    @sub_desc.text = \footnotesize \bbtext{Subtração}
    @sub_desc.anchor = west

---

mul => Node
    @mul.x = 1.2
    @mul.y = 3.5
    @mul.text = \footnotesize \code{prolog}{*/2}

mul_type => Node
    @mul_type.x = 3.5
    @mul_type.y = 3.5
    @mul_type.text = \footnotesize \code{prolog}{yfx}

mul_prec => Node
    @mul_prec.x = 6.5
    @mul_prec.y = 3.5
    @mul_prec.text = \footnotesize \code{prolog}{400}
    @mul_prec.anchor = east

mul_desc => Node
    @mul_desc.x = 7.5
    @mul_desc.y = 3.5
    @mul_desc.text = \footnotesize \bbtext{Multiplicação}
    @mul_desc.anchor = west

---

divr => Node
    @divr.x = 1.2
    @divr.y = 3
    @divr.text = \footnotesize \code{prolog}{//2}

divr_type => Node
    @divr_type.x = 3.5
    @divr_type.y = 3
    @divr_type.text = \footnotesize \code{prolog}{yfx}

divr_prec => Node
    @divr_prec.x = 6.5
    @divr_prec.y = 3
    @divr_prec.text = \footnotesize \code{prolog}{400}
    @divr_prec.anchor = east

divr_desc => Node
    @divr_desc.x = 7.5
    @divr_desc.y = 3
    @divr_desc.text = \footnotesize \bbtext{Divisão nos reais}
    @divr_desc.anchor = west

---

div => Node
    @div.x = 1.2
    @div.y = 2.5
    @div.text = \footnotesize \code{prolog}{div/2}

div_type => Node
    @div_type.x = 3.5
    @div_type.y = 2.5
    @div_type.text = \footnotesize \code{prolog}{yfx}

div_prec => Node
    @div_prec.x = 6.5
    @div_prec.y = 2.5
    @div_prec.text = \footnotesize \code{prolog}{400}
    @div_prec.anchor = east

div_desc => Node
    @div_desc.x = 7.5
    @div_desc.y = 2.5
    @div_desc.text = \footnotesize \bbtext{Quociente da divisão inteira}
    @div_desc.anchor = west

---

mod => Node
    @mod.x = 1.2
    @mod.y = 2
    @mod.text = \footnotesize \code{prolog}{mod/2}

mod_type => Node
    @mod_type.x = 3.5
    @mod_type.y = 2
    @mod_type.text = \footnotesize \code{prolog}{yfx}

mod_prec => Node
    @mod_prec.x = 6.5
    @mod_prec.y = 2
    @mod_prec.text = \footnotesize \code{prolog}{400}
    @mod_prec.anchor = east

mod_desc => Node
    @mod_desc.x = 7.5
    @mod_desc.y = 2
    @mod_desc.text = \footnotesize \bbtext{Resto euclidiano da divisão inteira}
    @mod_desc.anchor = west


---

exp => Node
    @exp.x = 1.2
    @exp.y = 1.5
    @exp.text = \footnotesize \code{prolog}{^/2}

exp_type => Node
    @exp_type.x = 3.5
    @exp_type.y = 1.5
    @exp_type.text = \footnotesize \code{prolog}{xfy}

exp_prec => Node
    @exp_prec.x = 6.5
    @exp_prec.y = 1.5
    @exp_prec.text = \footnotesize \code{prolog}{200}
    @exp_prec.anchor = east

exp_desc => Node
    @exp_desc.x = 7.5
    @exp_desc.y = 1.5
    @exp_desc.text = \footnotesize \bbtext{\code{prolog}{a ^ b} equivale a $a^b$}
    @exp_desc.anchor = west

end => Edge
    @end.x = 0
    @end.y = 1
    @end.u = 13
    @end.v = 1
    &end.very thick

## Text

\inputcode{prolog}{codes/expr.pl}

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Funções aritméticas}
    @title.anchor = west

---
a => Node
    @a.x = 1
    @a.y = 6
    @a.text = $\star$ \bbtext{Os operadores aritméticos apresentados são denominados \bbbold{funções aritméticas}}
    @a.anchor = west

---
b => Node
    @b.x = 1
    @b.y = 5
    @b.text = $\star$ \bbtext{Isto porque ``retornam'' o valor de suas operações, ao invés de atá-los a uma variável}
    @b.anchor = west

---
c => Node
    @c.x = 1
    @c.y = 4
    @c.text = $\star$ \bbtext{O primeiro passo para tornar um predicado uma função aritmética é carregar a }
    @c.anchor = west

c1 => Node
    @c1.x = 0.5
    @c1.y = 3.5
    @c1.text = \bbtext{biblioteca de aritmética}
    @c1.anchor = west

---
d => Node
    @d.x = 1
    @d.y = 2.5
    @d.text = $\star$ \bbtext{O segundo passo é definir o predicado como uma função aritmética por meio da }
    @d.anchor = west

d1 => Node
    @d1.x = 0.5
    @d1.y = 2
    @d1.text = \bbtext{diretiva \code{prolog}{arithmetic_function}}
    @d1.anchor = west

---
e => Node
    @e.x = 1
    @e.y = 1
    @e.text = $\star$ \bbtext{A variável a ser ``retornada'' deve ser a última, dentre as listadas nos argumentos}
    @e.anchor = west

e1 => Node
    @e1.x = 0.5
    @e1.y = 0.5
    @e1.text = \bbtext{do predicado}
    @e1.anchor = west

## Text

\inputcode{prolog}{codes/user_arithmetic_function.pl}

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Operadores relacionais}
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
    @op.text = \bbemph{Operador}
    @op.anchor = west

type => Node
    @type.x = 3
    @type.y = 5.5
    @type.text = \bbemph{Tipo}
    @type.anchor = west

prec => Node
    @prec.x = 5
    @prec.y = 5.5
    @prec.text = \bbemph{Precedência}
    @prec.anchor = west


desc => Node
    @desc.x = 7.5
    @desc.y = 5.5
    @desc.text = \bbemph{Descrição}
    @desc.anchor = west

---

greater => Node
    @greater.x = 1.2
    @greater.y = 4.5
    @greater.text = \footnotesize \code{prolog}{>/2}

greater_type => Node
    @greater_type.x = 3.5
    @greater_type.y = 4.5
    @greater_type.text = \footnotesize \code{prolog}{xfx}

greater_prec => Node
    @greater_prec.x = 6.5
    @greater_prec.y = 4.5
    @greater_prec.text = \footnotesize \code{prolog}{700}
    @greater_prec.anchor = east


greater_desc => Node
    @greater_desc.x = 7.5
    @greater_desc.y = 4.5
    @greater_desc.text = \footnotesize \bbtext{Maior que}
    @greater_desc.anchor = west

---

lesser => Node
    @lesser.x = 1.2
    @lesser.y = 4
    @lesser.text = \footnotesize \code{prolog}{</2}

lesser_type => Node
    @lesser_type.x = 3.5
    @lesser_type.y = 4
    @lesser_type.text = \footnotesize \code{prolog}{xfx}

lesser_prec => Node
    @lesser_prec.x = 6.5
    @lesser_prec.y = 4
    @lesser_prec.text = \footnotesize \code{prolog}{700}
    @lesser_prec.anchor = east

lesser_desc => Node
    @lesser_desc.x = 7.5
    @lesser_desc.y = 4
    @lesser_desc.text = \footnotesize \bbtext{Menor que}
    @lesser_desc.anchor = west

---

ge => Node
    @ge.x = 1.2
    @ge.y = 3.5
    @ge.text = \footnotesize \code{prolog}{>}\code{prolog}{=/2}

ge_type => Node
    @ge_type.x = 3.5
    @ge_type.y = 3.5
    @ge_type.text = \footnotesize \code{prolog}{xfx}

ge_prec => Node
    @ge_prec.x = 6.5
    @ge_prec.y = 3.5
    @ge_prec.text = \footnotesize \code{prolog}{700}
    @ge_prec.anchor = east

ge_desc => Node
    @ge_desc.x = 7.5
    @ge_desc.y = 3.5
    @ge_desc.text = \footnotesize \bbtext{Maior ou igual que}
    @ge_desc.anchor = west

---

le => Node
    @le.x = 1.2
    @le.y = 3
    @le.text = \footnotesize \code{prolog}{=</2}

le_type => Node
    @le_type.x = 3.5
    @le_type.y = 3
    @le_type.text = \footnotesize \code{prolog}{xfx}

le_prec => Node
    @le_prec.x = 6.5
    @le_prec.y = 3
    @le_prec.text = \footnotesize \code{prolog}{700}
    @le_prec.anchor = east

le_desc => Node
    @le_desc.x = 7.5
    @le_desc.y = 3
    @le_desc.text = \footnotesize \bbtext{Menor ou igual que}
    @le_desc.anchor = west

---

eq => Node
    @eq.x = 1.2
    @eq.y = 2.5
    @eq.text = \footnotesize \code{prolog}{=:=/2}

eq_type => Node
    @eq_type.x = 3.5
    @eq_type.y = 2.5
    @eq_type.text = \footnotesize \code{prolog}{xfx}

eq_prec => Node
    @eq_prec.x = 6.5
    @eq_prec.y = 2.5
    @eq_prec.text = \footnotesize \code{prolog}{700}
    @eq_prec.anchor = east

eq_desc => Node
    @eq_desc.x = 7.5
    @eq_desc.y = 2.5
    @eq_desc.text = \footnotesize \bbtext{Igual}
    @eq_desc.anchor = west

---

neq => Node
    @neq.x = 1.2
    @neq.y = 2
    @neq.text = \footnotesize \code{prolog}{=\=/2}

neq_type => Node
    @neq_type.x = 3.5
    @neq_type.y = 2
    @neq_type.text = \footnotesize \code{prolog}{xfx}

neq_prec => Node
    @neq_prec.x = 6.5
    @neq_prec.y = 2
    @neq_prec.text = \footnotesize \code{prolog}{700}
    @neq_prec.anchor = east

neq_desc => Node
    @neq_desc.x = 7.5
    @neq_desc.y = 2
    @neq_desc.text = \footnotesize \bbtext{Diferente}
    @neq_desc.anchor = west


end => Edge
    @end.x = 0
    @end.y = 1.5
    @end.u = 13
    @end.v = 1.5
    &end.very thick

## Text

\inputcode{prolog}{codes/roots.pl}

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Predicados com múltiplas semânticas}
    @title.anchor = west

---
a => Node
    @a.x = 1
    @a.y = 6
    @a.text = $\star$ \bbtext{Alguns predicados em Prolog podem ter mais do que uma semântica}
    @a.anchor = west

---
b => Node
    @b.x = 1
    @b.y = 5
    @b.text = $\star$ \bbtext{Por exemplo, o sucessor de \code{prolog}{2} pode ser obtido pelo predicado \code{prolog}{succ/2}:}
    @b.anchor = west

b1 => Node
    @b1.x = 2
    @b1.y = 4
    @b1.text = \inputsyntax{prolog}{codes/succ1.pl}
    @b1.anchor = west

---
c => Node
    @c.x = 1
    @c.y = 3
    @c.text = $\star$ \bbtext{Já o antecessor de \code{prolog}{2} pode ser obtido pelo mesmo predicado:}
    @c.anchor = west

c1 => Node
    @c1.x = 2
    @c1.y = 2
    @c1.text = \inputsyntax{prolog}{codes/succ2.pl}
    @c1.anchor = west

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Implementação de predicados com múltiplas semânticas}
    @title.anchor = west

---
a => Node
    @a.x = 1
    @a.y = 6
    @a.text = $\star$ \bbtext{É possível implementar predicados com múltiplas semânticas por meio de condicio-}
    @a.anchor = west

a1 => Node
    @a1.x = 0.5
    @a1.y = 5.5
    @a1.text = \bbtext{nais e de predicados extra-lógicos que verificam o tipo de um termo}
    @a1.anchor = west


---
b => Node
    @b.x = 1
    @b.y = 4.5
    @b.text = $\star$ \bbtext{O predicado \code{prolog}{var/1} retorna verdadeiro se a variável é \bbbold{livre}, isto é, se ainda não foi}
    @b.anchor = west

b1 => Node
    @b1.x = 0.5
    @b1.y = 4
    @b1.text = \bbtext{atada na consulta}
    @b1.anchor = west

---
c => Node
    @c.x = 1
    @c.y = 3
    @c.text = $\star$ \bbtext{O predicado \code{prolog}{nonvar/1} retorna verdadeiro se a variável já foi atada previamente na}
    @c.anchor = west

c1 => Node
    @c1.x = 0.5
    @c1.y = 2.5
    @c1.text = \bbtext{consulta}
    @c1.anchor = west

---
d => Node
    @d.x = 1
    @d.y = 1.5
    @d.text = $\star$ \bbtext{Prolog também traz predicados para confirmar o tipo do termo como, por exemplo,}
    @d.anchor = west

d1 => Node
    @d1.x = 0.5
    @d1.y = 1
    @d1.text = \bbtext{os predicados \code{prolog}{integer/1}, \code{prolog}{number/1} e \code{prolog}{atom/1}}
    @d1.anchor = west

## Text

\inputcode{prolog}{codes/celsius.pl}


## Text

\inputsnippet{prolog}{1}{18}{codes/sudoku.pl}

## Text

\inputsnippet{prolog}{20}{39}{codes/sudoku.pl}

## Scene

title => Node
    @title.x = 0
    @title.y = 6.5
    @title.text = \Large \bbbold{Referências}
    @title.anchor = west

a => Node
    @a.x = 1
    @a.y = 4
    @a.text = $\star$ \bbbold{SWI-Prolog.} \bbenglish{https://www.swi-prolog.org/,} \bbtext{acesso em 13/03/2026.}
    @a.anchor = west

c => Node
    @c.x = 1
    @c.y = 3
    @c.text = $\star$ \bbbold{Wikipédia.} \bbenglish{Prolog,} \bbtext{acesso em 13/03/2026.}
    @c.anchor = west

d => Node
    @d.x = 1
    @d.y = 5
    @d.text = $\star$ \bbbold{MERRIT}\bbtext{, Dennis.} \bbenglish{Adventure in Prolog, Amzi!,} \bbtext{191 pgs, 2017.}
    @d.anchor = west

## End
