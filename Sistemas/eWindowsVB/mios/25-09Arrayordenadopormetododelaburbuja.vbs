'Montar un array de 10 elementos aleatorios entre 10 y 99, ordenarlo por el metodo de la burbuja de menor a mayor y displayarlo
randomize timer
dim a(9)
dim b(9)
for x=0 to ubound(a)
	Num=int(rnd*90+10)
	a(x)=Num
	b(x)=Num
next

for x=0 to ubound(a)-1
	for y=x+1 to ubound(a)
		if a(x) > a(y) then
			aux=a(x)
			a(x)=a(y)
			a(y)=aux
		end if
		if b(y) > b(x) then
			aux2=b(x)
			b(x)=b(y)
			b(y)=aux2
		end if
	next
next

c=""
for n=0 to ubound(a)
	c=c&a(n)&chr(13)
next
'b=join(a,",")
msgbox c
