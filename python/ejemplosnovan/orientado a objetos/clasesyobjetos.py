class Humano:
	def __init__(self,edad):
		self.edad = edad
		print "Soy un nuevo objeto"
		
	def hablar(self,mensaje):
		print mensaje
	
pedro = Humano(26)
raul = Humano(21)

print "soy Raul y tengo", raul.edad
print "soy Pedro y tengo", raul.edad
pedro.hablar('Hola')
raul.hablar('Hola,Pedro!')