'Escribir por pantalla una letra aleatoria, un fonema (consonante y vocal) aleatorio y una palabra de tres fonemas aleatoria

Randomize timer
letras=array("a","e","i","o","u","b","c","d","f","g","h","j","k","l","m","n","ñ","p","q","r","s","t","v","w","x","y","z")

la=letras(int(ubound(letras)*rnd+0))
fo1=letras(int((ubound(letras)-5)*rnd+5))&letras(int(5*rnd+0))
fo2=letras(int((ubound(letras)-5)*rnd+5))&letras(int(5*rnd+0))
fo3=letras(int((ubound(letras)-5)*rnd+5))&letras(int(5*rnd+0))
final=fo1&fo2&fo3

wscript.echo "Una letra aleatoria: "&la&chr(13)&"Un fonema aleatorio: "&fo1&chr(13)&"Palabra aleatoria formada por 3 fonemas: "&final