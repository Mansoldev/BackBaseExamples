'Comparamos la clase que nos han dado con todas las que existen en ese espacio de nombres.

clase=inputbox(string(5,chr(13))&"QUE CLASE QUIERES VIDEAR?","WMI ASIR2")
Set oWMI=GetObject("winmgmts:\\.\root\CIMV2")
Set oClasses=oWMI.SubclassesOf()
Set fso=CreateObject("Scripting.FileSystemObject") 

'Comprobar si exista la clase en CIMV2
esta=false
For Each classe In oClasses
	nclase=classe.Path_.Class
    if nclase=clase then
		esta=true
	end if
Next

'Comprobar si está su fichero de propiedades
estaf=false
if fso.fileExists("Propiedades"&clase&".txt") then
	estaf=true
end if

'Generar vbs si se cumplen las condiciones
if esta=true and estaf=true then
	wscript.echo "Existe el fichero y es una calse de CIMW2"
else
	wscript.echo "No existe el fichero o no es una clase de CIMW2"
end if


set fs=nothing
set oClasses=nothing
set oWMI=nothing