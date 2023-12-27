lista=['Sara','Pedro',25,67]

print(len(lista))

for elemento in lista:
    print(elemento)

lista2=['Juan','David',89]
listaf=lista+lista2
print(listaf)

if 89 in listaf:
    print('Si está')
else:
    print('No está')

print(listaf[1:4])
print(listaf[-1])
