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
    @title.y = 7
    @title.text = \Large \bbbold{Listas em Prolog}
    @title.anchor = west

---
a => Node
    @a.x = 1
    @a.y = 6
    @a.text = $\star$ \bbtext{Em Prolog, uma \bbbold{lista} é uma coleção de termos de quaisquer tipos. A sintaxe}
    @a.anchor = west

a1 => Node
    @a1.x = 0.5
    @a1.y = 5.5
    @a1.text = \bbtext{para declaração de uma lista é:}
    @a1.anchor = west

b1 => Node
    @b1.x = 2
    @b1.y = 4.5
    @b1.text = \code{prolog}{[term1, term2, ..., termN]}
    @b1.anchor = west

---
c => Node
    @c.x = 1
    @c.y = 3.5
    @c.text = $\star$ \bbtext{Uma lista vazia, também denominada \code{prolog}{nil}, é representada por \code{prolog}{[]}}
    @c.anchor = west

---
d => Node
    @d.x = 1
    @d.y = 2.5
    @d.text = $\star$ \bbtext{A unificação trata as listas como uma estrutura de dados}
    @d.anchor = west

d1 => Node
    @d1.x = 2
    @d1.y = 1
    @d1.text = \inputsyntax{prolog}{codes/lists.pl}
    @d1.anchor = west

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Casamento de padrão em listas}
    @title.anchor = west

---
a => Node
    @a.x = 1
    @a.y = 6
    @a.text = $\star$ \bbtext{A notação \code{prolog}{[X | Y]} ata \code{prolog}{X} ao primeiro elemento da lista, chamado \bbenglish{head}, e ata \code{prolog}{Y}}
    @a.anchor = west

a1 => Node
    @a1.x = 0.5
    @a1.y = 5.5
    @a1.text = \bbtext{a uma lista com todos os demais elementos, denominada \bbenglish{tail}}
    @a1.anchor = west

---
b => Node
    @b.x = 2
    @b.y = 2.5
    @b.text = \inputsyntax{prolog}{codes/head_and_tail.pl}
    @b.anchor = west

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Listas e predicados}
    @title.anchor = west

---
a => Node
    @a.x = 1
    @a.y = 6
    @a.text = $\star$ \bbtext{Embora tenha uma sintaxe especial, uma lista é, de fato, um predicado de dois}
    @a.anchor = west

a1 => Node
    @a1.x = 0.5
    @a1.y = 5.5
    @a1.text = \bbtext{argumentos}
    @a1.anchor = west

---
b => Node
    @b.x = 1
    @b.y = 4.5
    @b.text = $\star$ \bbtext{ O primeiro argumento do predicado \code{prolog}{'[|]'/2} é o \bbenglish{head} da lista e o segundo é o \bbenglish{tail}}
    @b.anchor = west

b1 => Node
    @b1.x = 2
    @b1.y = 3.5
    @b1.text = \inputsyntax{prolog}{codes/cons.pl}
    @b1.anchor = west

---
c => Node
    @c.x = 1
    @c.y = 2.5
    @c.text = $\star$ \bbtext{A estrutura da lista é adequada para rotinas recursivas:}
    @c.anchor = west

c1 => Node
    @c1.x = 2
    @c1.y = 1
    @c1.text = \inputsyntax{prolog}{codes/length.pl}
    @c1.anchor = west

## Text

\inputsnippet{prolog}{1}{12}{codes/primes.pl}

## Text

\inputsnippet{prolog}{14}{26}{codes/primes.pl}

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Teste de pertinência}
    @title.anchor = west

---
a => Node
    @a.x = 1
    @a.y = 6
    @a.text = $\star$ \bbtext{O predicado \code{prolog}{member/2} determina se um termo é ou não membro da lista indicada}
    @a.anchor = west

---
b => Node
    @b.x = 1
    @b.y = 5
    @b.text = $\star$ \bbtext{Ele pode implementado da seguinte maneira:}
    @b.anchor = west


b1 => Node
    @b1.x = 2
    @b1.y = 4
    @b1.text = \inputsyntax{prolog}{codes/member.pl}
    @b1.anchor = west

---
c => Node
    @c.x = 1
    @c.y = 3
    @c.text = $\star$ \bbtext{A primeira cláusula verifica se o elemento é o primeiro elemento (\bbenglish{head}) da lista}
    @c.anchor = west

---
d => Node
    @d.x = 1
    @d.y = 2
    @d.text = $\star$ \bbtext{A segunda é a cláusula recursiva, que procura o elemento no restante (\bbenglish{tail}) da lista}
    @d.anchor = west

---
e => Node
    @e.x = 1
    @e.y = 1
    @e.text = $\star$ \bbtext{Ambas falham em listas vazias, pois \code{prolog}{[]} e \code{prolog}{[H|T]} não unificam}
    @e.anchor = west

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Concatenação de listas}
    @title.anchor = west

---
a => Node
    @a.x = 1
    @a.y = 6
    @a.text = $\star$ \bbtext{O predicado \code{prolog}{append/3}  anexa o segundo argumento ao primeiro, unificando o}
    @a.anchor = west


a1 => Node
    @a1.x = 0.5
    @a1.y = 5.5
    @a1.text = \bbtext{resultado com o terceiro:}
    @a1.anchor = west

a2 => Node
    @a2.x = 2
    @a2.y = 4.5
    @a2.text = \inputsyntax{prolog}{codes/append_example.pl}
    @a2.anchor = west

---
b => Node
    @b.x = 1
    @b.y = 3.5
    @b.text = $\star$ \bbtext{Ele pode implementado da seguinte maneira:}
    @b.anchor = west


b1 => Node
    @b1.x = 2
    @b1.y = 2.5
    @b1.text = \inputsyntax{prolog}{codes/append_impl.pl}
    @b1.anchor = west

---
c => Node
    @c.x = 1
    @c.y = 1
    @c.text = $\star$ \bbtext{\code{prolog}{append/3} também pode ser utilizado para decompor listas}
    @c.anchor = west

## Text 

\inputcode{prolog}{codes/append.pl}

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Listas e fatos}
    @title.anchor = west

---
a => Node
    @a.x = 1
    @a.y = 6
    @a.text = $\star$ \bbtext{É possível declarar fatos a partir de uma lista, consultando \code{prolog}{assertz/1} no \bbenglish{head}}
    @a.anchor = west

a1 => Node
    @a1.x = 0.5
    @a1.y = 5.5
    @a1.text = \bbtext{da lista recursivamente}
    @a1.anchor = west

a2 => Node
    @a2.x = 2
    @a2.y = 4
    @a2.text = \inputsyntax{prolog}{codes/list_to_facts.pl}
    @a2.anchor = west

---
b => Node
    @b.x = 1
    @b.y = 2.5
    @b.text = $\star$ \bbtext{Para o processo inverso, Prolog disponibiliza o predicado \code{prolog}{findall/3}}
    @b.anchor = west

---
c => Node
    @c.x = 1
    @c.y = 1.5
    @c.text = $\star$ \bbtext{O primeiro argumento é o padrão para os termos, o segundo o objetivo e o terceiro}
    @c.anchor = west

c1 => Node
    @c1.x = 0.5
    @c1.y = 1.0
    @c1.text = \bbtext{é a lista resultante}
    @c1.anchor = west

## Text

\inputcode{prolog}{codes/findall.pl}

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Predicado \code{prolog}{maplist/N}}
    @title.anchor = west

---
a => Node
    @a.x = 1
    @a.y = 6
    @a.text = $\star$ \bbtext{O predicado \code{prolog}{maplist/N} retorna verdadeiro se o objetivo \code{prolog}{Goal} é bem sucedido}
    @a.anchor = west

a1 => Node
    @a1.x = 0.5
    @a1.y = 5.5
    @a1.text = \bbtext{para todas $(N-1)$-uplas de elementos correspondentes das listas indicadas}
    @a1.anchor = west

---
b => Node
    @b.x = 1
    @b.y = 4.5
    @b.text = $\star$ \bbtext{Ele pode ser definido da seguinte maneira:}
    @b.anchor = west

b1 => Node
    @b1.x = 2
    @b1.y = 2.625
    @b1.text = \inputsyntax{prolog}{codes/maplist.pl}
    @b1.anchor = west

---
c => Node
    @c.x = 1
    @c.y = 0.5
    @c.text = $\star$ \bbtext{SWI-Prolog disponibiliza versões deste predicado para $N\in[2, 5]$}
    @c.anchor = west

## Text

\inputsnippet{prolog}{1}{19}{codes/maplist_examples.pl}

## Text

\inputsnippet{prolog}{1}{19}{codes/maplist_examples_2.pl}

## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Predicado \code{prolog}{include/3}}
    @title.anchor = west

---
a => Node
    @a.x = 1
    @a.y = 6
    @a.text = $\star$ \bbtext{O predicado \code{prolog}{include/3} filtra os elementos da lista para os quais o objetivo}
    @a.anchor = west

a1 => Node
    @a1.x = 0.5
    @a1.y = 5.5
    @a1.text = \bbtext{é verdadeiro}
    @a1.anchor = west

---
b => Node
    @b.x = 1
    @b.y = 4.5
    @b.text = $\star$ \bbtext{A sintaxe é}
    @b.anchor = west

b1 => Node
    @b1.x = 2
    @b1.y = 3.5
    @b1.text = \code{prolog}{include(Goal, List, Filtered).}
    @b1.anchor = west

---
c => Node
    @c.x = 1
    @c.y = 2.5
    @c.text = $\star$ \bbtext{O predicado \code{prolog}{exclude/3} é similar, porém mantém os elementos para os quais}
    @c.anchor = west

c1 => Node
    @c1.x = 0.5
    @c1.y = 2
    @c1.text = \bbtext{o objetivo falha}
    @c1.anchor = west

---
d => Node
    @d.x = 1
    @d.y = 1
    @d.text = $\star$ \bbtext{Os parâmetros são os mesmos do predicado \code{prolog}{include/3}, com mesma ordem}
    @d.anchor = west

## Text

\inputcode{prolog}{codes/include.pl}


## Scene

title => Node
    @title.x = 0
    @title.y = 7
    @title.text = \Large \bbbold{Predicado \code{prolog}{foldl/N}}
    @title.anchor = west

---
a => Node
    @a.x = 1
    @a.y = 6
    @a.text = $\star$ \bbtext{O predicado \code{prolog}{foldl/N} ``dobra'' os elementos de $m\in[1,4]$ listas por meio}
    @a.anchor = west

a1 => Node
    @a1.x = 0.5
    @a1.y = 5.5
    @a1.text = \bbtext{do objetivo \code{prolog}{Goal/(m+1)}, onde \code{prolog}{V0} é o valor inicial}
    @a1.anchor = west

---
b => Node
    @b.x = 1
    @b.y = 4.5
    @b.text = $\star$ \bbtext{Ele pode ser definido da seguinte maneira:}
    @b.anchor = west

b1 => Node
    @b1.x = 2
    @b1.y = 2.625
    @b1.text = \inputsyntax{prolog}{codes/foldl.pl}
    @b1.anchor = west

---
c => Node
    @c.x = 1
    @c.y = 0.5
    @c.text = $\star$ \bbtext{O predicado \code{prolog}{scanl/N} é similar, mantendo porém os resultados parciais}
    @c.anchor = west


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
