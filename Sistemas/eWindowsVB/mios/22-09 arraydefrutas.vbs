'Crear mediante split, un array que contenga nombres de frutas, escribir los elementos de dicho array en un solo display, mediante un ciclo for.
f="Membrillo Cereza Kiwi Pi�a Higo Pl�tano Uva Paraguaya Melocot�n Frambuesa Mel�n Litchi Ciruela Nectarina Papaya Mango Fresa Coco Mandarina Maracuya Pomelo Manzana Albaricoque Caqui Aguacate"
a=split(f," ")
for each ele in a
	cadena=cadena&ele&chr(13)
next
msgbox cadena