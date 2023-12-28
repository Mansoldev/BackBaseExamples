dim fso,unidades
dim medida:medida=array("bytes","Kb","Mb","Gb","Tb")
tipoUnidad=Array("Unidad no identificada","Unidad Removible","Unidad Fija","Unidad de Red","Unidad de CD-ROM","Disco virtual RAM")
set fso=wscript.createobject("Scripting.FileSystemObject")
set discos=fso.drives

Set OS=WScript.CreateObject("WScript.Shell")
Set SE=OS.Environment("PROCESS")

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

cadena="FSO"&chr(13)
cadena=cadena&"Unidades encontradas en "&SE("COMPUTERNAME")&" "&discos.count&chr(13)
msgbox cadena,64,"ASIR-2 SISTEMA DE ALMACENAMIENTO"

for each unidad in discos
    cadena="UNIDAD "&unidad.Path&chr(13)
    cadena=cadena&string(20,45)&chr(13)
    estado=unidad.IsReady
    if estado=true then 
       cadena=cadena&"SISTEMA "&unidad.FileSystem&chr(13) 
       cadena=cadena&"Tipo "&tipoUnidad(unidad.drivetype)&chr(13)
       cadena=cadena&"Tamaño total "&calcular(unidad.TotalSize)&chr(13)
       cadena=cadena&"Espacio libre "&calcular(unidad.FreeSpace)&chr(13)
       cadena=cadena&"Número de serie "&unidad.SerialNumber&chr(13)
       cadena=cadena&"Nombre del volumen "&unidad.Volumename&chr(13)
       else
       cadena=cadena&"DESACTIVADA!!"&chr(13)
    end if             
    msgbox cadena&chr(13)
    cadena=""
next
set discos=nothing
set FSO=nothing