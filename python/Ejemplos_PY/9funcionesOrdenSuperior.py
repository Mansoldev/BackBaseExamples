#Funcion de orden superior
def saludo(idioma):
    def saludo_es():
        print("Hola")
    def saludo_en():
        print("Hi")
    idioma_func={"es":saludo_es,
                "en":saludo_en
                }
    return idioma_func[idioma]

saludar=saludo("en")
saludar()
print("\n")

#OTRA
def prueba(f):
    return f()

def porEnviar():
    return 2+2

print(prueba(porEnviar))

def seleccion(operacion):
    def suma(n,m):
        return n+m

    def multiplicacion(n,m):
        return n*m
    
    if operacion == "suma":
        return suma

    if operacion == "multi":
        return multiplicacion

fGuardada=input("¿Operación:?")
opera=seleccion(fGuardada)

print(opera(3,4))
