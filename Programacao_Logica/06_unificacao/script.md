## Frame
\bbcover{Programação Lógica}{Unificação}{Prof. Edson Alves}{Campus UnB Gama: Faculdade de Ciências e Tecnologias em Engenharia}

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Processos de unificação}
    @title.anchor = west

---

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
    @op.x = 2
    @op.y = 5.5
    @op.text = \bbemph{Elementos}

read => Node
    @read.x = 4.5
    @read.y = 5.5
    @read.text = \bbemph{Comportamento}
    @read.anchor = west

---

not => Node
    @not.x = 2
    @not.y = 4.25
    @not.text = \bbtext{Variável e termo}

not_read => Node
    @not_read.x = 4.5
    @not_read.y = 4.5
    @not_read.text = \footnotesize \bbtext{Uma variável unifica com qualquer termo, inclusive outras variáveis. }
    @not_read.anchor = west

not_desc => Node
    @not_desc.x = 4.5
    @not_desc.y = 4
    @not_desc.text = \footnotesize \bbtext{O valor do termo unificado é atado à variavel em questão}
    @not_desc.anchor = west

---

or => Node
    @or.x = 2
    @or.y = 2.75
    @or.text = \bbtext{Primitivo e primitivo}

or_read => Node
    @or_read.x = 4.5
    @or_read.y = 3
    @or_read.text = \footnotesize \bbtext{Dois termos primitivos (átomos ou números) unificam apenas se são} 
    @or_read.anchor = west

or_desc => Node
    @or_desc.x = 4.5
    @or_desc.y = 2.5
    @or_desc.text = \footnotesize \bbtext{são idênticos}
    @or_desc.anchor = west

---

and => Node
    @and.x = 2
    @and.y = 1.25
    @and.text = \bbtext{Estrutura e estrutura}

and_read => Node
    @and_read.x = 4.5
    @and_read.y = 1.5
    @and_read.text = \footnotesize \bbtext{Unificam se tem mesmo construtor, mesma aridade e cada par de} 
    @and_read.anchor = west

and_desc => Node
    @and_desc.x = 4.5
    @and_desc.y = 1
    @and_desc.text = \footnotesize \bbtext{argumentos correspondentes unificam}
    @and_desc.anchor = west


end => Edge
    @end.x = 0
    @end.y = 0.5
    @end.u = 13.5
    @end.v = 0.5
    &end.very thick

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Predicado \code{prolog}{=/2}}
    @title.anchor = west

---
a => Node
    @a.x = 1
    @a.y = 6
    @a.text = $\star$ \bbtext{O predicado pré-definido \code{prolog}{=/2} é bem sucedido se ambos argumentos unificam,} 
    @a.anchor = west

a1 => Node
    @a1.x = 0.5
    @a1.y = 5.5
    @a1.text = \bbtext{e falha, caso contrário}
    @a1.anchor = west

---
b => Node
    @b.x = 2
    @b.y = 2.5
    @b.text = \inputsyntax{prolog}{codes/eq.pl}
    @b.anchor = west

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Unificação de variáveis e termos primitivos}
    @title.anchor = west

---
a => Node
    @a.x = 1
    @a.y = 6
    @a.text = $\star$ \bbtext{Ao unificar com um termo primitivo, a variável é atada ao seu valor}
    @a.anchor = west

---
b => Node
    @b.x = 2
    @b.y = 2.75
    @b.text = \inputsyntax{prolog}{codes/primitivo.pl}
    @b.anchor = west

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Unificação entre variáveis}
    @title.anchor = west

---
a => Node
    @a.x = 1
    @a.y = 6
    @a.text = $\star$ \bbtext{Duas variáveis sempre unificam}
    @a.anchor = west

---
b => Node
    @b.x = 2
    @b.y = 2.75
    @b.text = \inputsyntax{prolog}{codes/variables.pl}
    @b.anchor = west


## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Unificação em consultas compostas}
    @title.anchor = west

---
a => Node
    @a.x = 1
    @a.y = 6
    @a.text = $\star$ \bbtext{A variável anônima `\code{prolog}{_}' é um \bbenglish{wildcard} e não é atada a valor algum}
    @a.anchor = west

---
c => Node
    @c.x = 1
    @c.y = 5
    @c.text = $\star$ \bbtext{O predicado \code{prolog}{\=/2} retorna verdadeiro se os seus argumentos não unificam}
    @c.anchor = west

---
b => Node
    @b.x = 2
    @b.y = 2.5
    @b.text = \footnotesize{\inputsyntax{prolog}{codes/compostas.pl}}
    @b.anchor = west

## Text

\inputcode{prolog}{codes/simpsons.pl}

## Scene

title => Node
    @title.x = 0
    @title.y = 6.5
    @title.text = \Large \bbbold{Referências}
    @title.anchor = west

a => Node
    @a.x = 1
    @a.y = 2.5
    @a.text = $\star$ \bbbold{SWI-Prolog.} \bbenglish{https://www.swi-prolog.org/,} \bbtext{acesso em 13/03/2026.}
    @a.anchor = west

c => Node
    @c.x = 1
    @c.y = 1.5
    @c.text = $\star$ \bbbold{Wikipédia.} \bbenglish{Prolog,} \bbtext{acesso em 13/03/2026.}
    @c.anchor = west

d => Node
    @d.x = 1
    @d.y = 3.5
    @d.text = $\star$ \bbbold{MERRIT}\bbtext{, Dennis.} \bbenglish{Adventure in Prolog, Amzi!,} \bbtext{191 pgs, 2017.}
    @d.anchor = west

e => Node
    @e.x = 1
    @e.y = 5
    @e.text = $\star$ \bbbold{BLACKBURN}\bbtext{, Patrick, } \bbbold{BOS}\bbtext{, Johan,} \bbbold{STRIEGNITZ}, \bbtext{Kristina.} \bbenglish{Learn Prolog Now!,}
    @e.anchor = west

e1 => Node
    @e1.x = 0.5
    @e1.y = 4.5
    @e1.text = \bbtext{Online, 2026.}
    @e1.anchor = west


## End
