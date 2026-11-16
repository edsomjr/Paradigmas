    (⌈÷⌊) 2.5                 ⍝ monádica: 3÷2
1.5
    (⌈÷⌊) 1.5 2.5 4
2 1.5 1
    (⌈÷⌊) 0.5                 ⍝ 1÷0
DOMAIN ERROR: Divide by zero
    3 (⌈÷⌊) 12                ⍝ diádica: (3⌈12)÷(3⌊12)
4
    1 5 2 (⌈÷⌊) 4 4 4
4 1.25 2
    0 (⌈÷⌊) 5                 ⍝ 5÷0
DOMAIN ERROR: Divide by zero
