class Persona():
    edad=23
    def __new__(cls,nombre,nacionalidad):
        print("new")
        return super().__new__(cls)
    def __init__(self,nombre,nacionalidad):
        print("init")
        self.nombre=nombre
        self.nacionalidad=nacionalidad
    def nadar(self):
        print("Estoy nadando")
    def despedir(self):
        print("Adios")
    @classmethod
    def saludar(cls,nombre):
        print("Hola",nombre)
    @staticmethod
    def nadando():
        print("nado")


Mario=Persona('Mario','Español')
print(Mario.nombre)
print(Mario.nacionalidad)
print(Mario.edad)
Mario.nadar()
Mario.saludar("Elena")
