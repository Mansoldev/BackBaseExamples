'Script capaz de manejar un array con los nombres de tus compañeros y realizar las siguientes tareas, por separado:
'1 Displayar la frase sale a la pizarra y un nombre escojido al azar de un alumno.
'2 El nombre más repetido.
'3 Nombre más largo y el más corto.
'4 Escoge dos nombres al azar y reemplazar las vocales por oes.

'1
randomize timer
NombresC="Carlos=Francisco Javier=Juan Manuel=Guillermo=Mario=Sergio=Mario=Jose Ignacio=Juanma=Estefania=Sara=Carolina=Ivan=Zoila=Desislava=Ruben=Angel Miguel=Guillermo=Abraham=Alberto=Diego=Patrick=Sergio"
Nombres=split(NombresC,"=")

Numero=int(rnd*ubound(nombres))
msgbox("Sale a la pizarra: "&Nombres(Numero))

'2
'dim CNombres()
'For x=0 to ubound(Nombres)
'	Nombre=Nombres(x)
	
'Next

'3
NombreML=""
NombreMC="aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"

for each Nombre in Nombres
	if len(Nombre)>len(NombreML) then
		NombreML=Nombre
	else if len(Nombre)<len(NombreMC) then
		NombreMC=Nombre
	end if
end if
next
msgbox("El nombre mas largo es "&NombreML&" con "&len(NombreML)&" letras"&chr(13)&"Y el nombre mas corto es "&NombreMC&" con "&len(NombreMC)&" letras")

'4
Num1=int(rnd*ubound(nombres))
Num2=int(rnd*ubound(nombres))
Nom1=Nombres(Num1)
Nom2=Nombres(Num2)



'msgbox("Sale a la pizarra: "&Nombres(Numero))
