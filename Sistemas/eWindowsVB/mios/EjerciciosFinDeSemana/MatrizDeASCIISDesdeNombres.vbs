'=========================================================================================
' carga una matriz dinámica, con las letras, en código ASCII, que componen cada uno de los 
' nombres de ASIR2.
'=========================================================================================

n="ASIR2=Estratonico=Carlos=Joao=Guillermo=Alberto=Ivan=Diego=Abraham=Guillermo=Desislava=Sara=Victor=Juan Manuel=Mario=Sergio=David=José Ignacio=Mario=Zoila=Carolina=Ángel Miguel=Francisco Javier=Patrick"
nombres=split(n,"=")
c=0
for x=1 to ubound(nombres)
    if c<len(nombres(x)) then c=len(nombres(x)) 
next
redim n2(ubound(nombres),c)
for x=1 to ubound(n2,1)
    for y=1 to len(nombres(x))
        n2(x,y)=asc(mid(nombres(x),y,1))
    next
next 
contador=1
for x=1 to ubound(n2,1)
    cadena=cadena&contador&"-"
    for y=1 to ubound(n2,2)
        cadena=cadena&n2(x,y)&chr(32)
    next
    cadena=cadena&chr(13)
    contador=contador+1
next
msgbox cadena

