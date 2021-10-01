    A ← 2 3 5 ⍴ ⍳9 ⋄ A      ⍝ A tem duas matrizes com 5 linhas e 3 colunas cada
1 2 3 4 5
6 7 8 9 1
2 3 4 5 6
         
7 8 9 1 2
3 4 5 6 7
8 9 1 2 3
      +/[2] A               ⍝ A redução tem 2 linhas com colunas, cada elemento 
 9 12 15 18 12              ⍝ correponde a soma das linhas das matrizes de A
18 21 15  9 12
