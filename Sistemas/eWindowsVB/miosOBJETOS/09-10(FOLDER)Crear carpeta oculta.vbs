'Pedir un nombre de carpeta a crear, creamos la carpeta añadiendole al nombre dado por el usuario, nombredado-ASIR2
' darle atributo de ocultacion
carp=inputbox(string(5,13)&"Que carpeta desea crear?","ASIR2")
set fso=wscript.createobject("Scripting.FileSystemObject")
carp=carp&"-ASIR2"
on error resume next
fso.createFolder(carp)
if err<>0 then
	msgbox "ERROR!!! No se ha podido crear la carpeta",16
end if
set carpeta=fso.getfolder(carp)
carpeta.attributes=18
fso=nothing
carpeta=nothing

