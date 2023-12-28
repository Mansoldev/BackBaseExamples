

dim tablero(7,7)
varini=0

for x=0 to 7
	for y=0 to 7
		tablero(x,y)=varini
		if varini=0 and y<>7 then
			varini=1
		else
			varini=0
		end if
	next
next

