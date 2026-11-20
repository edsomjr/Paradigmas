    ⍒ 3 1 2 4                 ⍝ descendente
4 1 3 2
    ⍋ 4 1 3 2                 ⍝ ascendente
2 4 3 1
    (⍋⍒) 3 1 2 4              ⍝ monádica: posto de cada elemento
2 4 3 1
    (⍋⍒) 5 5 1                ⍝ empates: pela posição
1 2 3
    'cba' (⍋⍒) 'cab'          ⍝ diádica: alfabeto c<b<a
3 1 2
    1 2 3 (⍋⍒) 3 1 2          ⍝ ⍺ deve ser de caracteres
DOMAIN ERROR
