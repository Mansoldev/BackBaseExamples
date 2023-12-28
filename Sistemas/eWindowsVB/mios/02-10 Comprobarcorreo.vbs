'Pedir un correo electronico y devolver la frase si puede ser o no un correo dependiendo de: 
'Si vacio sale, 
correo=inputbox("Dame un correo"&string(5,13),"ASIR2")
if correo="" then msgbox "ERROR, no has escrito nada": wscript.quit 
at=InStr(correo,"@")
if at<>0 then
	po=len(correo)
	punto=InStrrev(correo,".")
	if (punto+2)=po or (punto+3)=po then
		wscript.echo "FELICIDADES!!!! Es un correo valido."&chr(13)&"El correo consta de "&po&" caracteres, el @ esta en la posicion "&at&" y el punto en la posicion "&punto
	else
		wscript.echo "La URL del servidor es incorrecta"
	end if
else
	wscript.echo "Para ser un correo valido, necesita una URL del servidor"
end if
