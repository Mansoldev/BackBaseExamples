l=[1,2,3,-1,4]
l2=[num for num in l if num>0]
s=["H","O","L","A"]
s2=[c * num for c in s
                for num in l
                    if num>0]
s3=(c * num for c in s
                for num in l
                    if num>0)

print(l)
print(l2)
print(s2)
#GENERADOR
#print(s3.next()) 2,7
for letra in s3:
    print(letra)
print("\n")

def factorial(n):
    i=1;
    while n>1:
        i=n*i
        yield i #como return para generadores
        n-=1

for e in factorial(5):
    print(e)

