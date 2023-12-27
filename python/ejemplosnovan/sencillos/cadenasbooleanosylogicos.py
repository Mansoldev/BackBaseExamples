#Comillas simples
cads = 'texto entre \n comillas simples'
#Comilas dobles
cadd = "texto entre \n\t comillas dobles"
#comillas triples
cadc = """ Texto linea 1
linea 2
linea 3
linea 4
.
.
.
Linea N
"""

print "Imprimiendo texto entre comillas simples dobles y triples"
print cads
print ""
print cadd
print ""
print cadc
print ""

#Repeticion y conatenacion
print "REPETICION Y CONCATENACION\n"
cad = "Cadena" * 3
cad2 = "Cadena 2"
cadcad2= cad + cad2

print cad
print cad2
print cadcad2

#Booleanos
print ""
print "BOOLEANOS Y OPERADORES LOGICOS"
print ""

bT = True
bF = False
bAnd = True and False
bOr = True or False
bNot = not True

print bAnd
print bOr
print bNot