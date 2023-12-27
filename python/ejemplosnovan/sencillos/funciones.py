def suma(num1, num2):
	return num1 + num2

print suma(2,5)

def potencia_defecto(n1=2, n2=2):
	potencia_n = n1 ** n2
	print potencia_n

potencia_defecto()

def print_cadena(cad,v=2,*mas):
	print cad * v
	for cadena in mas:
		print cadena * v
	
print_cadena("Hola",4,"adios")

#Def mi_funcion(cad, v=2,**algomas):
#	print cad * v
#	
#	print algomas['cadenaextra']
#	print algomas['cadenademas']

#Mi_funcion("Adios",5,cadenaextra = "Hola", cadenademas = "Adios")
