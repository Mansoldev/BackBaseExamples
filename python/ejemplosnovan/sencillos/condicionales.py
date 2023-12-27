#encoding: utf-8
edad = 18
m_edad = raw_input("¿Cual es tu edad? ")

if m_edad >= edad:
	print "eres mayor de edad"
	if True:
		print 'Esto se ejecuta siempre que sea mayor de edad'
else:
	print "eres menor de edad"
	
print ""

if m_edad >= 0 and m_edad <= 2:
	print "Imposible, eres un bebe"
elif m_edad >= 2 and m_edad <= 18:
	print "Eres un niño"
elif m_edad <=27:
	print "Eres un joven"
else:
	print "Eres un adulto"