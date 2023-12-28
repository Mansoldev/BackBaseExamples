'Crear mediante split, un array que contenga nombres de frutas, escribir los elementos de dicho array en un solo display, mediante un ciclo for.
randomize timer
f="Membrillo Cereza Kiwi Piña Higo Platano Uva Paraguaya Melocoton Frambuesa Melon Litchi Ciruela Nectarina Papaya Mango Fresa Coco Mandarina Maracuya Pomelo Manzana Albaricoque Caqui Aguacate"
a=split(f," ")
cadena="Vamos a beber..."&chr(13) 
for x=1 to 3
	random=rnd*(ubound(a))
	resul=a(random)
	Select case x
	Case 1
		cadena=cadena&"Zumo de "&resul
	Case 2
		cadena=cadena&" con "&resul
	Case else
		if resul="Higo" then
			cadena=cadena&" e "&resul
		else
			cadena=cadena&" y "&resul
		end if
	End select
next

msgbox cadena, 0, "Zumo de frutas"