def funcionA(x):
    def funcionB(y):
        return x+y
    return funcionB

funcion=funcionA(5)
print(funcion(3))
