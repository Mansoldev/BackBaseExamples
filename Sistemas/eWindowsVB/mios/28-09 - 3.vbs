'pedir una cifra y devolver el numero de digitos
do
	num=inputbox(string(5,chr(13))&"Escribe un numero","ASIR-2")
loop until isnumeric(num)

if num="" then
	msgbox "ERROR, lo que has dado: "&num&" no es una cifra numerica",16,"ASIR2"
	wscript.quit
else
	msgbox "El numero dado "&num&" tiene "&len(num)&" cifras"
end if

