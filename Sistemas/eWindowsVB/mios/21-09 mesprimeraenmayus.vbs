'Muestra el mes actual con la primera letra en mayusculas
a=date
l="abcdefghijklmn�opqrstuvwxyz"
L="ABCDEFGHIJKLMN�OPQRSTUVWXYZ"

mes=monthname(month(a))
ini=left(mes,1)
inif=ucase(ini)
n=len(mes)-1
resto=right(mes,n)



fin=ini&resto
msgbox(fin)