    (⍟×\) 1 2 3 4             ⍝ monádica: log do produto acumulado
0 0.6931471806 1.791759469 3.17805383
    ×\ 1 2 3 4
1 2 6 24
    +\⍟ 1 2 3 4               ⍝ soma acumulada dos logs
0 0.6931471806 1.791759469 3.17805383
    (⍟×\) 1 ¯1 2              ⍝ log de negativo é complexo
0 0J3.141592654 0.6931471806J3.141592654
    2 (⍟×\) 3 4               ⍝ ×\ não tem forma diádica
SYNTAX ERROR: The function does not take a left argument
