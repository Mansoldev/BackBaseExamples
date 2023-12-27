from functools import reduce

def suma(n,m):
    return n+m

def filtrar(n):
    return (n == 'o')

li=[1,-2,1,-4]
lo=[5,3,6,7]
s="Hoola Mundo"

print(list(map(suma,li,lo)))
print(list(filter(filtrar,s)))
print(reduce(suma,lo))
print("\n")

print(list(map(lambda n,m: n+m ,li,lo)))
print(list(filter(lambda n: n=='o' ,s)))
print(reduce(lambda n,m: n+m,lo))
print("\n")

ss=lambda n,m: n+m
print(list(map(ss ,li,lo)))
print(reduce(ss,lo))

print(ss(3,4))
