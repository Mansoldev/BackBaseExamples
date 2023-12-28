'Script que pide el nombre de una carpeta y si existe nos escriba sus propiedades
cv=1
dim medida:medida=array(" bytes"," Kb"," Mb"," Gb"," Tb")

function calcular(xc)
       munidad="bytes"  
       for x=1 to ubound(medida)      
           if  xc>=1024 then
               xc=xc/1024
               munidad=medida(x)
               else
               exit for
           end if
       next
     calcular=formatNumber(xc,2)&munidad
end function

do
  carp=inputbox(string(6,13)&cv&"/3 Que carpeta muestro?","Asir-2 comprobar carpeta")
  cv=cv+1
loop until carp<>"" or cv>3
if cv>3 then wscript.quit

set FSO=wscript.createobject("Scripting.FileSystemObject")

if FSO.FolderExists(carp) then 
  set FSOC=FSO.GetFolder(carp)
else
  FSO.CreateFolder(carp)
end if

cadena="PROPIEDADES DE "&carp&chr(13)
cadena=cadena&string(52,"_")&chr(13)&chr(13)
cadena=cadena&"Su unidad es la: "&FSOC.Drive&chr(13)
cadena=cadena&"Su nombre es: "&FSOC.Name&chr(13)
cadena=cadena&"Tipo de fichero: "&FSOC.Type&chr(13)
cadena=cadena&"Atributos de la carpeta: "&FSOC.Attributes&chr(13)
cadena=cadena&"Se encuentra en: "&FSOC.ParentFolder&chr(13)
cadena=cadena&"Tamaño total: "&calcular(FSOC.Size)&chr(13)
cadena=cadena&string(52,"_")&chr(13)&chr(13)
cadena=cadena&"La carpeta se creo: "&FSOC.DateCreated&chr(13)
cadena=cadena&"El ultimo acceso fue: "&FSOC.DateLastAccessed&chr(13)
cadena=cadena&"La ultima modificación fue: "&FSOC.DateLastModified&chr(13)

'cadena=cadena&"Esta contenida en: "&FSOC.Path&chr(13)
'cadena=cadena&"Nombre de un fichero: "&FSOC.ShortName&chr(13)
'cadena=cadena&"Path de un fichero: "&FSOC.ShortPath&chr(13)

msgbox(cadena)