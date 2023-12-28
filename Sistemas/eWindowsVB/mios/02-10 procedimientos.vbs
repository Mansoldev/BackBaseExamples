'Pedir por pantalla un valor entre 1 y 10 y escribir un cuadrado de * con las dimensiones aceptadas.
sub Ncubo(dimension)
	c=""
	for x=1 to dimension
		for y=1 to dimension
			c=c&"   "&"*"
		next
		c=c&chr(13)
	next
	wscript.echo c
end sub

cubo=inputbox(string(5,13)&"Dame un numero","ASIR2")
if cubo="" then msgbox "ERROR, no has introducido numero": wscript.quit 
if not isnumeric(cubo) then msgbox "ERROR, no has introducido numero": wscript.quit 
if cubo<1 or cubo>32 then msgbox "ERROR, cuota no valida": wscript.quit
Ncubo(cubo)
