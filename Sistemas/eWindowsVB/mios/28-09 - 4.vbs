'invertir la frase pedida
frase=inputbox(string(5,chr(13))&"Dame una frase","ASIR-2")

if frase="" then
	msgbox "ERROR, no has escrito nada",16,"ASIR2"
	wscript.quit
else
	resul=strReverse(frase)
	msgbox "La frase: "&frase&chr(13)&"Al revés es: "&resul
end if






