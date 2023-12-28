atributos=split("Solo lectura,Oculta,Oculta y solo lectura,Sistema,Sistema y solo lectura,Oculto y del sistema,Sistema oculta y solo lectura")
nv=1
do
  carpeta=inputbox(string(6,13)&nv&"/3 Qué carpeta ?","ASIR-2 FSO")
  nv=nv+1
loop until carpeta<>"" or nv>3
if carpeta="" then wscript.quit
set fso=wscript.createobject("Scripting.FileSystemObject")

if fso.folderExists(carpeta) then
  set car=fso.getFolder(carpeta)
  n=car.attributes
  msgbox n
  if n=1040 then
    msgbox "la carpeta "&carpeta&" es un enlace"
    wscript.quit
  end if
  n=n-16
  if n=0 then
    msgbox "la carpeta "&carpeta&" no tiene atributos"
    wscript.quit
  end if
  msgbox carpeta&chr(13)&"Tiene los atributos:"&chr(13)&atributos(n)
else
  msgbox "La carpeta "&carpeta&" no existe",16,"ASIR-2"
end if
