def primerD(funcion):
    def funcionDecorada(*args,**kkwars):
        print("Primer decorador")
    return funcionDecorada

@primerD
def funcion():
    print("Mi primer decorador")

funcion()
print("\n")



def decorador(function):
    def funDecorada(*args,**kwargs):
        print("Funcion ejecutada", function.__name__)
        function(*args,**kwargs)

    return funDecorada

@decorador
def resta(n,m):
    print(n-m)

#cada vez que llamamos a resta ejecuta el decorador
resta(8,2)
print("\n")


loggeado=False
usuario="CodigoFacilito"

def admin(f):
    def comprobar(*args,**kwargs):
        if loggeado:
            f(*args,**kwargs)
        else:
            print("No tiene permisos dde ejecutar",f.__name__)

    return comprobar

@admin
@decorador
def suma(n,m):
    print(n+m)

suma(3,9)
