'script que pide el nombre de una carpeta y si existe la borra.
cv=1
set FSO=wscript.createobject("Scripting.FileSystemObject")

do
  carp=inputbox(string(6,13)&cv&"/3 Que carpeta borro?","Asir-2 comprobar carpeta")
  cv=cv+1
loop until carp<>"" or cv>3
if cv>3 then wscript.quit

if FSO.FolderExists(carp) then
  FSO.DeleteFolder(carp)
  msgbox "Carpeta "&carp&" borrada"
else
  msgbox "No existe la carpeta "&carp
end if