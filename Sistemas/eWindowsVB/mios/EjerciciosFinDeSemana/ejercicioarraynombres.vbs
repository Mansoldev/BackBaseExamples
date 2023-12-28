'0: Control del array de nombres. 
'1: Script que presente la lista de nombres indicando, a su lado, el número de veces que aparece dicho nombre, no apareciendo más que una vez cada nombre.
'2: Al finalizar el proceso, así mismo, se presentarán el nombre más largo y el más corto, ambos con su número de letras correspondiente. 
'3: Por último, escogeremos dos nombres al azar, y se le sustituirán sus vocales por la letra o.
randomize timer
NombresC="ASIR2=Carlos=Joao=Guillermo=Alberto=Ivan=Diego=Abraham=Guillermo=Desislava=Sara=Victor=Juan Manuel=Mario=Sergio=David=José Ignacio=Mario=Zoila=Carolina=Ángel Miguel=Francisco Javier=Patrick"
Nombres=split(NombresC,"=")

'1 Presentar el numero de veces que se repite cada nombre
columnas=(ubound(Nombres))
redim ContNombres(columnas,1)
for x=0 to ubound(Nombres)
	ContNombres(x,0)=Nombres(x)
	ContNombres(x,1)=1
next

Desaparecen=0
for x=0 to ubound(ContNombres)-1
	NombreAux=ContNombres(x,0)
	for y=x+1 to ubound(ContNombres)
		if NombreAux = ContNombres(y,0) then
			ContNombres(x,1)=ContNombres(x,1)+1
			ContNombres(y,1)=ContNombres(y,1)-1
			Desaparecen=Desaparecen+1
		end if
	next
next

NewColumnas=columnas-Desaparecen
redim NombresRepe(Newcolumnas,2)
ContColumna=0
for x=0 to ubound(NombresRepe)
	if ContNombres(x,1) <> 0 then
		NombresRepe(ContColumna,0)=ContNombres(x,0)
		NombresRepe(ContColumna,1)=ContNombres(x,1)
		ContColumna=ContColumna+1
	end if
next

c1="Numero que se repita cada nombre:"&chr(13)&"========================="&chr(13)&chr(13)
for n=0 to ubound(NombresRepe)
	c1=c1&NombresRepe(n,0)&"-"&NombresRepe(n,1)&chr(13)
next
msgbox c1


'2 Presentar el nombre mas largo y el mas corto
NombreML=""
NombreMC=string(25,97)

for each Nombre in Nombres
	if len(Nombre)>len(NombreML) then
		NombreML=Nombre
	else if len(Nombre)<len(NombreMC) then
		NombreMC=Nombre
	end if
end if
next
msgbox("El nombre mas largo es "&NombreML&" con "&len(NombreML)&" letras"&chr(13)&"El nombre mas corto es "&NombreMC&" con "&len(NombreMC)&" letras")

'3 dos nombres al azar, sustituyendose sus vocales por la letra o.
c2=""
for x=1 to 2
	random=rnd*(ubound(Nombres))
	resulN=Nombres(random)
	Nombrei=split(resulN,"")
	for y=0 to ubound(Nombrei)
		Select case Nombrei(y)
			Case a,e,i,u
				Nombrei(y)=o
		End select
	next
	NombreF=join(Nombrei)
	c2=c2&" "&NombreF
next

msgbox(c2)










