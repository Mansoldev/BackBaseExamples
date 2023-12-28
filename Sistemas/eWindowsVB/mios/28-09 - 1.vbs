'Pedir un caracter y pedir su numero decimal ASCII
Caracter=inputbox(string(5,chr(13))&"Escribe un caracter?","Devuelvedor de ASCIIs")
if Caracter<>"" and len(caracter)=1 then
	cAscii=asc(Caracter)
	msgbox "El caracter "&Caracter&" equivale en ASCII a "&cAscii,36,"Caracter dado en ASCII"
else
	msgbox "ERROR, el Caracter "&Caracter&" está vacio o contiene más de un caracter",16,"ASIR2"
	wscript.quit
end if


