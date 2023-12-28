'script que pida un nombre de carpeta y si no existe la cree
cv=1
set FSO=wscript.createobject("Scripting.FileSystemObject")

do
  carp=inputbox(string(6,13)&cv&"/3 Que carpeta creo?","Asir-2 comprobar carpeta")
  cv=cv+1
loop until carp<>"" or cv>3
if cv>3 then wscript.quit

if FSO.FolderExists(carp) then
  msgbox "Existe la carpeta"
else
  FSO.CreateFolder(carp)
  msgbox "Carpeta "&carp&" creada"
end if
