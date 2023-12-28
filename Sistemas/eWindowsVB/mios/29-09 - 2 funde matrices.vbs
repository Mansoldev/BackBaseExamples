'presentar dos matrices, una de dos numeros y dos letras y ver si el usuario las quiere fundir
letrasM="A B C D E F G H I J K L M N O P Q R S T U V W X Y Z"
letras=split(letrasM," ")
randomize timer
dim N(9,9),L(9,9)

MN="MATRIZ N"&chr(13)&chr(13)
ML="MATRIZ L"&chr(13)&chr(13)
for i=0 to ubound(N,1)
	for j=0 to ubound(N,2)
		random=int(rnd*100)
		if random<10 then
			random=0&random
		end if
		N(i,j)=random
		L(i,j)=letras(int(rnd*26))&letras(int(rnd*26))
		MN=MN&N(i,j)&" "
		ML=ML&L(i,j)&" "
	next
	MN=MN&chr(13)
	ML=ML&chr(13)
next
msgbox MN
msgbox ML
fundir=msgbox("Quieres fundir estas matrices?",36,"ASIR-2")

if fundir=7 then wscript.quit

MNL="MATRIZ NL"&chr(13)&chr(13)
dim NL(9,9)
for i=0 to ubound(NL,1)
	for j=0 to 9
		NL(i,j)=N(i,j)&L(i,j)
		MNL=MNL&NL(i,j)&"  "
	next
	MNL=MNL&chr(13)
next
msgbox MNL