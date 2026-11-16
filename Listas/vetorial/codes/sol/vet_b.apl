    (⍳!+) 5                   ⍝ monádica: (⍳5)!5, isto é, k!5
5 10 10 5 1
    (⍳5)!5
5 10 10 5 1
    (⍳!+) 3
3 3 1
    1 2 3 (⍳!+) 2             ⍝ diádica: (1 2 3⍳2)!(1 2 3+2)
3 6 10
    (1 2 3⍳2)!(1 2 3+2)
3 6 10
    3 1 2 (⍳!+) 1
6 1 3
    1 2 3 (⍳!+) 7             ⍝ 7 não está em ⍺: ⍳ dá 4
70 126 210
    5 (⍳!+) 5                 ⍝ ⍳ diádico precisa de um vetor à esquerda
RANK ERROR
