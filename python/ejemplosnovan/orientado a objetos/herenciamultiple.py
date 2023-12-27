class Humano:
	def __init__(self,edad):
		self.edad = edad
		
	def hablar(self,mensaje):
		print mensaje

class IngSistemas(Humano):
	def programar(self,lenguaje):
		print "Voy a programar en", lenguaje

class LicDerecho(Humano):
	def estudiarCaso(self,de):
		print "Debo estudiar el caso de", de

class Estudioso(IngSistemas,LicDerecho):
	pass
		
		
pedro = IngSistemas(26)
raul = LicDerecho(21)
pepe = Estudioso(19)

pepe.hablar("Hola soy de herencia multiple")
pepe.programar("C++")
pepe.estudiarCaso('Juan')