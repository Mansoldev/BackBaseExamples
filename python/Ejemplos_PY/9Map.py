#Funcion map()
def lower(elementos):
    return elementos.lower()

lista=["MARIO","JuAn","No"]
print(list(map(lower,lista)))
print([cad.lower() for cad in lista])
print("\n")


def operador(n,m):
    if n==None or m==None:
        return 0

    return n+m

l1=[1,2,3,4]
t1=(9,8,7)

lr=list(map(operador,l1,t1))
print(l1)
print(t1)
print(lr)
print("\n")
