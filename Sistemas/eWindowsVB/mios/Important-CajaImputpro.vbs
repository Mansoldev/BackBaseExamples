dim Marca(4)
for x=0 to 4
	vuelta=x+1
	Do
		Marca(x)=inputbox(string(5,13)&vuelta&"\5 Dame una marca de coche","Marcas")
	Loop until Marca(x)<>""
next