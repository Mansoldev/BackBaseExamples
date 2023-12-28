randomize timer
NombresC="ASIR2=Carlos=Joao=Guillermo=Alberto=Ivan=Diego=Abraham=Guillermo=Desislava=Sara=Victor=Juan Manuel=Mario=Sergio=David=José Ignacio=Mario=Zoila=Carolina=Ángel Miguel=Francisco Javier=Patrick"
Nombres=split(NombresC,"=")

'3 dos nombres al azar, sustituyendose sus vocales por la letra o.
c2=""
for x=1 to 2
	random=rnd*(ubound(Nombres))
	resulN=Nombres(random)
	Nombrei=split(resulN)
	'for y=0 to ubound(Nombrei)
	'	Select case Nombrei(y)
	'		Case a,e,i,u
	'			Nombrei(y)=o
	'	End select
	'next
	'NombreF=join(Nombrei)
	'c2=c2&" "&NombreF
next

c2="Array NombreI:"&chr(13)&"========================="&chr(13)&chr(13)
for n=0 to ubound(Nombrei)
	c2=c2&Nombrei(n)&chr(13)
next

msgbox c2


