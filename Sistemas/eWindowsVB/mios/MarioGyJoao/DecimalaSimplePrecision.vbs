'subrutina para los errores, llamada errorbin para que no haya conflicto
sub errordec(mensaje)
    msgbox mensaje,16,"ERROR!"   
end sub

'Pedir el numero al usuario
dec=trim(Inputbox (string(5,13)&"Dame un numero decimal","DE DECIMAL A BINARIO USANDO SIMPLE PRECISION"))

'escepciones, si está vacio, si es un numero y si es binario
select case true
	case dec="":errordec "No has introducido un valor"
	case not isnumeric(dec):errordec "No has introducido un valor numerico"
	case InStr(dec,".")<>0:errordec "los decimales se indican con (,) no con (.)"
	case else
		'Guardamos el signo y le quitamos y dividimos el numero en su parte decimal y su parte entera.
		if left(dec,1)="-" then
			signo=1
			dec=right(dec,len(dec)-1)
		else
			signo=0
		end if
		coma=InStr(dec,",")
		decEntero=left(dec,coma-1)
		decDecimal=right(dec,len(dec)-coma)
		decDecimal="0,"&decDecimal
		'PARTE ENTERA DEL BINARIO
		'cogemos los modulos de las divisiones del decimal entero
		do
			actual=actual&decEntero mod 2
			decEntero=decEntero\2
		loop until decEntero<1
		'le damos la vuelta para obtener el resultado en binario
		for x=len(actual) to 1 step -1
			binEntero=binEntero&mid(actual,x,1)
		next
		'PARTE DECIMAL DEL BINARIO
		'le restamos a 23 el numero de cifras de la parte entera ya en binario para dejar solo los 23 bits más significativos
		vueltas=23-len(binEntero)
		for x=1 to vueltas
			decDecimal=decDecimal*2
			select case true
				case decDecimal<1
					binDecimal=binDecimal&"0"
				case decDecimal>1
					binDecimal=binDecimal&"1"
					decDecimal=decDecimal-1
			end select
			
		next
		'MANTISA
		mantisa=binEntero&binDecimal
		'EXPONENTE
		exponente=128+len(binEntero)
		'pasamos el exponente a binario, tomando el modulo de sus divisiones e invirtiendolo
		do
			vexponente=vexponente&exponente mod 2
			exponente=exponente\2
		loop until exponente<1
		for x=len(vexponente) to 1 step -1
			binExponente=binExponente&mid(vexponente,x,1)
		next
		'MONTAR EN SIMPLE PRECISION
		'aqui cagó.
		if signo=1 then
			for x=1 to len(mantisa)
				select case mid(mantisa,x,1)
					case 0
						auxmantisa=auxmantisa&"1"
					case 1
						auxmantisa=auxmantisa&"0"
				end select
			next
			mantisa=auxmantisa
		end if
		resultado=signo&binExponente&mantisa
		c="RESULTADO EN BINARIO: "&chr(13)&resultado&chr(13)&chr(13)
		'RESULTADO EN HEXADECIMAL
		CHexadecimales="0000 0001 0010 0011 0100 0101 0110 0111 1000 1001 1010 1011 1100 1101 1110 1111"
		LHexadecimales="A B C D E F"
		Hexadecimales=split(CHexadecimales," ")
		LetrasHexadecimales=split(LHexadecimales," ")
		
		'ciclo que realiza la conversion cogiendo 4 cifras de bin y convirtiendolas a base 16
		for x=1 to len(resultado) step 4
			HexActual=mid(resultado,x,4)
			for y=0 to ubound(Hexadecimales)
				if HexActual=Hexadecimales(y) then
				'si las primeras 4 cifras coinciden con las de la posicion del array y superan 9, restamos 10 y cogemos las letras del array LetrasHexadecimal
					if y>9 then
						posLH=y-10
						ResultHex=ResultHex&letrasHexadecimales(posLH)
					else
						ResultHex=ResultHex&y
					end if
				end if
			next
		next
		c=c&" RESULTADO EN HEXADECIMAL:"&chr(13)&chr(9)&ResultHex
		msgbox c
end select
