'Escribe en un unico display, 4 letras adquiridas de forma aleatoria.
randomize timer
letras="a b c d e f g h i j k l m n ñ o p q r s t u v w x y z"
b=ucase(letras)
a=split(b," ")
for x=1 to 4
	random=rnd*(ubound(a)-1)
	cad=cad&a(random)&" "
next
msgbox cad
