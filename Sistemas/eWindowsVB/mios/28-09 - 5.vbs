'
frase=inputbox(string(5,chr(13))&"Dame una frase","ASIR-2")

letras=split("a á A Á b B c C d D e é E É f  F g G h H i í I Í j J k K l L m M n N o ó O Ó p P q Q r R s S t T u ú U Ú v V w W x X y Y z Z"," ")
digitos=split("0 1 2 3 4 5 6 7 8 9"," ")
ndigitos=0
nletras=0
nespCarac=0
npalabras=0

palabras=split(frase," ")

for p=0 to ubound(palabras)
	npalabras=npalabras+1
	for l=1 to len(palabras(p))
		letra=mid(palabras(p),l,1)
		for v=0 to ubound(letras)
			if letra=letras(v) then
				nletras=nletras+1
			end if
		next
		select case asc(letra)
			case 209,241: nletras=nletras+1
		end select
		for v=0 to ubound(digitos)
			if letra=digitos(v) then
				ndigitos=ndigitos+1
			end if
		next
	next
next

nespCarac=len(frase)-nletras-ndigitos
nespCarac=nespCarac+ubound(palabras)

msgbox frase&chr(13)&"tiene "&nletras&" letras, "&ndigitos&" digitos, "&nespCarac&" caracteres especiales y "&npalabras&" palabras"
