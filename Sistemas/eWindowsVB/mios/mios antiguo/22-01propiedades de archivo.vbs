'Script que pide el nombre de fichero y si existe nos escriba sus propiedades

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
  fichero=inputbox(string(6,13)&cv&"/3 Que carpeta muestro?","Asir-2 comprobar carpeta")
  cv=cv+1
loop until fichero<>"" or cv>3
if cv>3 then wscript.quit

set FSO=wscript.createobject("Scripting.FileSystemObject")
if not FSO.FileExists(fichero) then 
  msgbox "El fichero no existe o lo has escrito mal",16,"ASIR-2"
else
  FSO.CreateFile(fichero)
end if

'Nombre
'Atributos
'fecha cracion
'ultimo acceso
'fecha modificacion
'SITUACION
'unidad
'camino

'extension
'base del nombre
'OTROS DATOS
'tamaño
'tipo de fichero

'OpenTextFile(fichero,[1lectura,2escritura,8])