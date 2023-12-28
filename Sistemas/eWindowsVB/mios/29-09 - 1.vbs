'sustituir los espacios de la frase pedida por _, si no se escribe frase de error y fin de script
frase=trim(inputbox(string(5,chr(13))&"Escribe una frase","ASIR-2"))

if frase="" then
	msgbox "ERROR, has dado una frase vacia",16,"ASIR2"
	wscript.quit
else
	msgbox replace(frase," ","_")
end if

