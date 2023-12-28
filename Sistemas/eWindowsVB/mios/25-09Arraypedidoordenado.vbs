'script capaz de pedir 5 marcas de coches, guardarlos en un array y que te los devuelva ordenados alfabeticamente en un array
dim Marca(4)
for x=0 to 4
	vuelta=x+1
	Do
		Marca(x)=inputbox(string(5,13)&vuelta&"\5 Dame una marca de coche","MARCAS")
	Loop until Marca(x)<>""
next

for x=0 to ubound(Marca)-1
	for y=x+1 to ubound(Marca)
		if Marca(x) > Marca(y) then
			aux=Marca(x)
			Marca(x)=Marca(y)
			Marca(y)=aux
		end if
	next
next

c="Marcas Ordenadas"&chr(13)&"=============="&chr(13)&chr(13)
for n=0 to ubound(Marca)
	prefijo=n+1
	c=c&prefijo&"-"&Marca(n)&chr(13)
next
msgbox c