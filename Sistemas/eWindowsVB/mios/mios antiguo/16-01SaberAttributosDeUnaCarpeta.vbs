nv=1
do
 carpeta=inputbox(string(6,13)&nv&"/3 Qué carpeta ?","ASIR-2 FSO")
 nv=nv+1
loop until carpeta<>"" or nv>3
if carpeta="" then wscript.quit
set fso=wscript.createobject("Scripting.FileSystemObject")

if fso.folderExists(carpeta) then
   set car=fso.getFolder(carpeta)
   msgbox "La carpeta "&carpeta&" tiene de atributos "&car.attributes
else
 msgbox "La carpeta "&carpeta&" no existe",16,"ASIR-2"
end if