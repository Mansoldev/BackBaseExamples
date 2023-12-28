'presentar los 100 primeros numeros naturales, sustituyendo el digito de las decenas por una letra mayuscula
letras="ABCDEFGHIJKLMNÑOPQRSTUVWXYZ"
num=1
cadena=""

for x=0 to 9 step 1
	for y=0 to 9 step 1
		if num>10 then
			cadena=cadena&mid(letras,x,1)&mid(num,2,1)&chr(9)
		else
			cadena=cadena&num&chr(9)
		end if
		num=num+1
	next
	cadena=cadena&chr(13)
next
msgbox(cadena)