'ordenar por el metodo de la burbuja el array de alumnos
NombresC="Carlos=Francisco Javier=Juan Manuel=Guillermo=Mario=Sergio=Mario=Jose Ignacio=Juanma=Estefania=Sara=Carolina=Ivan=Zoila=Desislava=Ruben=Angel Miguel=Guillermo=Abraham=Alberto=Diego=Patrick=Sergio"
Nombres=split(NombresC,"=")

for x=0 to ubound(Nombres)-1
	for y=x+1 to ubound(Nombres)
		if Nombres(x) > Nombres(y) then
			aux=Nombres(x)
			Nombres(x)=Nombres(y)
			Nombres(y)=aux
		end if
	next
next

c=chr(9)&string(3," ")&"ASIR-2"&chr(13)&chr(9)&"==========="&chr(9)&chr(13)&chr(13)
for n=0 to ubound(Nombres)
	c=c&chr(9)&n&"-"&Nombres(n)&chr(13)
next
msgbox c