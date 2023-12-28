'CARPETAS
nc=inputbox(string(5,13)&"Que carpeta?","ASIR-2")
if nc="" then msgbox "ERROR! No has introducido Na de Na",16,"ASIR-2":wscript.quit

set fso=createobject("Scripting.FileSystemObject")
if not fso.folderExists(nc) then msgbox "ERROR! No existe la carpeta",16,"ASIR-2":wscript.quit

set carpeta=fso.getFolder(nc)
pita="CARPETA "&carpeta
c=pita&chr(13)&string(len(pita)+15,42)&chr(13)

c=c&"Fecha de creacion: "&carpeta.dateCreated&chr(13)
c=c&"Fecha de ultima modificacion: "&carpeta.dateLastModified&chr(13)
c=c&"Fecha de ultimo acceso: "&carpeta.dateLastAccessed&chr(13)
c=c&chr(13)
c=c&"Atributos: "&carpeta.Attributes&chr(13)
'c=c&"Fecha de creacion: "&carpeta.dateCreated&chr(13)

msgbox c