# Implementação iterativa
def fib(N):
    if N < 2:
        return N

    a = 0
    b = 1

    for _ in range(N):
        a, b = b, a + b

    return a

# Computa o bilionésimo número de Fibonacci em Python
# Tempo de execução: 9,251s
print(fib(10**6))
