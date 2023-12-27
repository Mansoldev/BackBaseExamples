#capturar la excepcion
lista=[2,4]

try:
    print(lista[4])
except IndexError:
    print("Error: Error en el índice")
else:
    print("No hay error")
finally:
    print(lista[-1])

#lanzar excepciones 
try:
    raise TypeError
except:
    print("Errores con los tipos")

#Definir excepciones
class Err(Exception):
    def __init__(self,valor):
        self.valorError=valor
    def __str__(self):
        print("No se puede dividir entre 1 el numero",self.valorError)

d=5
n=1
try:
    raise Err(4)
except Err:
    print("Error escrito")

if n==1:
    raise Err(d)

print("\n")

#CODIGO FACILITO:

print("Bienvenido")

try:
    print(1/0)
    print(l)
except (TypeError,NameError):
    print("Error en tipo de dato o la variable no existe")
except ZeroDivisionError:
    print("No se puede dividir entre 0")

print("Adios")



