do
  respuesta=trim(inputbox(string(5,chr(13))&ucase("Escribe una bonita frase")))
loop until respuesta<>""

cadena="La frase tiene un total de "&len(respuesta)&" caracteres"
a=split(respuesta," ")
cadena=cadena&" y un total de "&ubound(a)+1&" palabras"
cadena=cadena&chr(13)&"Al reves es: "&strreverse(respuesta)

r=""
for x=0 to ubound(a)
  r=r&ucase(left(a(x),1))
  r=r&right(a(x),len(a(x))-1)
  r=r&" "
next
cadena=cadena&chr(13)&"Con la primera en mayuscula: "&r

wscript.echo cadena