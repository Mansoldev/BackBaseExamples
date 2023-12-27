class Circulo():
    def __init__(self,radio):
        self.radio=radio

    @property
    def area(self):
        return 3,1416*(self.radio**2)

c=Circulo(10)
print(c.area)    


#polimorfismo
class Perro():
    def avanzar(self):
        print("4 patas")
class Perico():
    def avanzar(self):
        print("volar")

def mover(animal):
    animal.avanzar()

perro=Perro()
perico=Perico()
perro.avanzar()
perico.avanzar()

mover(perro)
mover(perico)


#introspeccion
class Intro():
    def __init__(self,valor):
        self.valor=valor
    def segundo(self):
        Print("segundo")
    def tercero(self):
        Print("tercero")

dato=Intro("valor")
print(dir(dato))
print(isinstance(dato,Intro))
print(hasattr(dato,"Introver"))

