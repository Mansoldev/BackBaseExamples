class Humano:
	def __init__(self,edad):
		self.edad = edad
		print "Soy un nuevo objeto"
		
	def hablar(self,mensaje):
		print mensaje

class IngSistemas(Humano):
	def programar(self,lenguaje):
		print "Voy a programar en", lenguaje

class LicDerecho(Humano):
	def estudiarCaso(self,de):
		print "Debo estudiar el caso de", de
	
pedro = IngSistemas(26)
raul = LicDerecho(21)

pedro.hablar('Hola')
print ""
pedro.programar('Python')
raul.estudiarCaso('Pedro')