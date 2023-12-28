'Script capaz de pedir un nombre de carpeta y si existe ocultarla y asignarla el atributo de solo lectura.
cv=1
set FSO=wscript.createobject("Scripting.FileSystemObject")

do
  carp=inputbox(string(6,13)&cv&"/3 Que carpeta protejo?","Asir-2 comprobar carpeta")
  cv=cv+1
loop until carp<>"" or cv>3
if cv>3 then wscript.quit

if FSO.FolderExists(carp) then
  set carppro=FSO.GetFolder(carp)
  carppro.attributes=19
  msgbox "La carpeta "&carp&" ahora está oculta y es de solo lectura"
else
  msgbox "No existe la carpeta "&carp
end if