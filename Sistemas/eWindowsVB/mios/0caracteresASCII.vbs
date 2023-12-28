'216 ASCII, desde el 32 al 255, saliendo en 5 columnas, EJ: 32-y 33-z
x=32

for f=0 to 48
	for c=0 to 4
		'no me funciona chr(), he tenido que usar string
		celda=x&"-"&string(1,x)
		x=x+1
		cadena=cadena&celda&VbTab
	next
	cadena=cadena&chr(13)
next  
msgbox(cadena)