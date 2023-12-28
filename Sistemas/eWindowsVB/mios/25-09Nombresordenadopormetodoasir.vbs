'ordenar el array de nombres mediante el metodo de asir
NombresC="Carlos=Francisco Javier=Juan Manuel=Guillermo=Mario=Sergio=Mario=Jose Ignacio=Juanma=Estefania=Sara=Carolina=Ivan=Zoila=Desislava=Ruben=Angel Miguel=Guillermo=Abraham=Alberto=Diego=Patrick=Sergio"
Nombres=split(NombresC,"=")

for x=0 to ubound(Nombres)-1
	if Nombres(x) > Nombres(x+1) then
		aux=Nombres(x)
		Nombres(x)=Nombres(x+1)
		Nombres(x+1)=aux
		x=x-1
	end if
next

c=chr(9)&string(3," ")&"ASIR-2"&chr(13)&chr(9)&"==========="&chr(9)&chr(13)&chr(13)
for n=0 to ubound(Nombres)
	c=c&chr(9)&n&"-"&Nombres(n)&chr(13)
next
msgbox c



