'subrutina para los errores, llamada errorbin para que no haya conflicto
sub errorbin(mensaje)
    msgbox mensaje,16,"ERROR!"   
end sub

'funcion que comprueba si el numero que le pasan está compuesto de 1s y 0s solamente
Function isbinario(num)
	loes=true
	for x=1 to len(num)
		actual=mid(num,x,1)
		if actual<>0 and actual<>1 then 
			loes=false
		end if
	next
	if loes=true then 
		isbinario=true
	else 
		isbinario=false
	end if
End Function
'Array para convertir con su indice a octales
COctales="000 001 010 011 100 101 110 111"
Octales=split(COctales," ")

'Pedir el numero al usuario
bin=trim(Inputbox (string(5,13)&"Dame un numero binario entero","DE BINARIO ENTERO A OCTAL"))
'si es negativo, guardamos la información para añadie el signo al final y se le quitamos
if left(bin,1)="-" then
	signo=1
	bin=right(bin,len(bin)-1)
end if

'excepciones, si está vacio, si es un numero, si tiene comas o puntos y si es binario
select case true
	case bin="":errorbin "No has introducido un valor"
	case not isnumeric(bin):errorbin "No has introducido un valor numerico"
	case InStr(bin,",")<>0:errorbin "No se admiten decimales"
	case InStr(bin,".")<>0:errorbin "No se admiten decimales"
	case not isbinario(bin):errorbin "No has introducido un valor en base 2"
	case else
		'añadir 0s a la izquierda hasta que podamos dividir la cifra pasada por el usuario de 3 en 3
		if len(bin) Mod 3<>0 then
			if (len(bin)+1) Mod 3=0 then
				bin="0"&bin
			else
				bin="00"&bin
			end if
		end if
		'ciclo que realiza la conversion cogiendo 3 cifras de bin y convirtiendolas a base 8
		for x=1 to len(bin) step 3
			OctalesM=mid(bin,x,3)
			for y=0 to ubound(Octales)
				if OctalesM=Octales(y) then
				'si las primeras tres cifras son 000 no imprimimos el 0
					if x=1 and y=0 then
					else
					numeroOctal=numeroOctal&y
					end if
				end if
			next
		next
		'Dependiendo de si era negativo, el resultado es negativo o no
		if signo=1 then
			msgbox "-"&numeroOctal
		else
			msgbox numeroOctal
		end if
end select



