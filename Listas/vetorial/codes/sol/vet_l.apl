    (⍴⍴≡) 2 3⍴⍳6              ⍝ monádica: forma de ⍵, com ≡⍵
1 1 1
1 1 1
    (⍴⍴≡) 1 (2 3)             ⍝ profundidade negativa
¯2 ¯2
    (⍴⍴≡) 5                   ⍝ escalar
0
    2 (⍴⍴≡) 3                 ⍝ diádica: forma 2⍴3 = 3 3, preenchida com 2≡3
0 0 0
0 0 0
0 0 0
    2 (⍴⍴≡) 2                 ⍝ forma 2 2, preenchida com 2≡2
1 1
1 1
    2 (⍴⍴≡) 2.5               ⍝ 2⍴2.5 não é uma forma válida
DOMAIN ERROR
