'pedir un numero y dar su ascii
Numero=inputbox(string(5,chr(13))&"Escribe un numero entre 33 y 255","Devuelvedor de ASCIIs")
if IsNumeric(Numero) and Numero<>"" and Numero>=33 and Numero<=255 then
	msgbox chr(Numero)
else
	msgbox "ERROR, el Caracter "&Caracter&" No es numerico o está vacio o no está en el rango",16,"ASIR2"
	wscript.quit
end if



