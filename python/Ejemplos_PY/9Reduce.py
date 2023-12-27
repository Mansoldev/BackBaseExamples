from functools import reduce

numeros=(1,2,3,4)
def suma(x,y):
     return x+y

sumar=reduce(suma,numeros)
print(sumar)
print("\n")


s=('H','o','l','a','_','M','u','n','d','o')
r=(1,2,3,4,5,6,7,8,9)

def concatenar(a,b):
     return a+b

ss=reduce(concatenar,s)
sr=reduce(concatenar,r)
print(type(ss))
print(ss)
print(sr)
