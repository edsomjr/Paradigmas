    ⍴ (⊃⊂⍳) 3                 ⍝ monádica: 3 ⊂ ⍳3
9
    ⍴¨ (⊃⊂⍳) 3                ⍝ tamanho de cada partição
 0  0  1  0  0  1  0  0  1
    ⊃¨ (⊃⊂⍳) 3                ⍝ primeiro elemento de cada uma
0 0 1 0 0 2 0 0 3
    (,1) (⊃⊂⍳) 1 2 3          ⍝ diádica: ((,1)⊃⍵) ⊂ ((,1)⍳⍵)
 1  2  2
    (,1)⍳1 2 3
1 2 2
    1 (⊃⊂⍳) 1 2 3             ⍝ ⍳ diádico exige vetor à esquerda
RANK ERROR
