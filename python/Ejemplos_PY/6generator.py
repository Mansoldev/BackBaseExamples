def numeros():
    n=1
    while True:
        yield n
        n=n+1

i=numeros()
print(i)
print(i.__next__())
print(i.__next__())
