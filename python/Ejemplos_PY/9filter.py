def filtro(elem):
    return (elem > 0)

def filtra(elem):
    return (elem == "o")

l=[1,-3,2,-7,-8,-9,10]
s="Hola Mundo, como te llamas"
lr=list(filter(filtro,l))
ls=list(filter(filtra,s))

print(l)
print(lr)
print(s)
print(ls)
