n = [[1, 2, 3], [4, 5, 6, 7, 8, 9]]
# Agreg� ac� tu funci�n
def combinar(listas):
    resultados = []
    for numeros in listas:
        for numero in numeros:
            resultados.append(numero)
    return resultados

print combinar(n)