'UNIDADES DEL SISTEMA
function calcular(b)
    medidas=split("Bytes KB MB GB TB PB EB ZB YB BB"," ")
	unidadActual="Bytes"
	for x=1 to ubound(medidas)
		if b>=1000 then
			b=b/1000
		else
			exit for
		end if
	next
    calcular=formatNumber(b,2)&medidas(x)
end function

function TU(tipo)
	tipoUnidad=array("DESCONOCIDA","PORTABLE","FIJA","DE RED","DE CD","RAM")
	TU=tipoUnidad(tipo)
end function

set fso=wscript.createObject("Scripting.FileSystemObject")
set unidades=fso.drives

c="Las unidades activas son:"
msgbox c

for each disco in unidades
	if disco.isready then
		c=chr(9)&chr(9)&disco.path&chr(13)&"============================="&chr(13)
		c=c&"Su nombre de unidad "&disco.VolumeName&chr(13)
		c=c&" con un tipo de unidad "&TU(disco.DriveType)&chr(13)
		c=c&" con un sistema de archivos "&disco.FileSystem&chr(13)
		c=c&" con un espacio libre "&calcular(disco.FreeSpace)&chr(13)
		c=c&" de un total de "&calcular(disco.TotalSize)&chr(13)
		c=c&" y su numero de serie es "&disco.SerialNumber&chr(13)
		msgbox c
	end if
next

set unidades=nothing
set fso=nothing

