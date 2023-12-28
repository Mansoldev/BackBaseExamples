'Script que escriba, en un único display, los primeros 20 elementos de la serie de Fibonacci, en cinco columnas.
'Serie Fibonacci 0,1,1,2,3,5,8,13,21,35,56……
n1=0
n2=2
r=0
cadena="0,"&chr(9)&"1,"&chr(9)
c=3

for x=1 to 20
	r=n1+n2
	cadena=cadena&r&chr(9)
	resto=c mod 5
	if resto=0 then cadena=cadena&chr(13)
		c=c+1
	n1=n2:n2=r
next
wscript.echo cadena
