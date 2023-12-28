' Tras crear una carpeta que os valga de pruebas y concederle atributos de solo lectura, ocultacion, sistema y compactarla.
' Crear un script capaz de borrar dicha carpeta y tras comprobar que ya no existe finalizar el proceso
set fso=wscript.createobject("Scripting.FileSystemObject")
'carp=inputbox(string(5,13)&"Que carpeta desea borrar?","ASIR2")
'if carp="" then wscript.quit
carp="pruebas"
borrar=msgbox("Quieres borrar la carpeta "&carp,36,"ASIR-2")
if borrar=7 then wscript.quit
on error resume next
fso.deleteFolder carp,true
if err<>0 then
	msgbox "ERROR!!! No se ha podido borrar la carpeta",16
	wscript.quit
end if

if not fso.FolderExists(carp) then
	msgbox "Felicidades, la carpeta "&carp&" ya no existe"
end if
fso=nothing