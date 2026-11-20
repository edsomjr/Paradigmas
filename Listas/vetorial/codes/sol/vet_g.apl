    (≡⍴>) 1 2 3               ⍝ > não tem forma monádica
SYNTAX ERROR: The function requires a left argument
    1 2 3 (≡⍴>) 1 2 3         ⍝ diádica: ≡ dá 1, logo 1⍴(0 0 0)
0
    ⍴ 1 2 3 (≡⍴>) 1 2 3       ⍝ um elemento
1
    1 2 3 (≡⍴>) 3 2 1         ⍝ ≡ dá 0, logo 0⍴(0 0 1): vazio
    ⍴ 1 2 3 (≡⍴>) 3 2 1
0
    1 2 (≡⍴>) 1 2 3           ⍝ formas diferentes
LENGTH ERROR: Mismatched left and right argument shapes
