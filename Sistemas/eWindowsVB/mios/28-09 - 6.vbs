'
f=imputbox(string(5,13)&"Escribe una frase","ASIR2")
if frase="" then
	msgbox "ERROR, no has escrito nada",16,"ASIR2"
	wscript.quit
end if

palabras=split(f," ")


