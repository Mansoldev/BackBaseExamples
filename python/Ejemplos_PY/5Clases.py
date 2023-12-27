class Persona:
    nBrazos=0
    nPiernas=0
    cabello=True
    cCabello="Defecto"
    hambre=5

    def __init__(self):
        self.brazos=2
        self.piernas=2

    def dormir():
        pass
    def comer(self):
        self.hambre=0

class Hombre(Persona):
    nombre="Defecto"
    sexo="M"

    def cambiarNombre(self,nombre):
        self.nombre=nombre

class Mujer(Persona):
    nombre="Defecto"
    sexo="F"

Jose=Hombre()
Jose.comer()
print(Jose.hambre)
