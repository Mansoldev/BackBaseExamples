'216 ASCII, desde el 32 al 255, saliendo en 5 columnas, EJ: 32-y 33-z
linea=0
columna=0

for x=33 to 255 step 1
	'If condición = algo then
	'	Hacer esto
	'Else
	'	No hagas nade de lo anterior, haz esto
	'End if
	celda=x&"-"&chr(x)
	cadena=cadena&celda&chr(9)
next
msgbox(cadena)