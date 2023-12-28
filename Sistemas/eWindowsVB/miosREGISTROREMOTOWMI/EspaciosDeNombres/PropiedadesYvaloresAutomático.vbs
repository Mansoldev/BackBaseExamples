res=inputbox(string(5,13)&"¿De qué clase quieres ver valores actuales?","WMI ASIR2")
if res="" then wscript.quit
set ow=getobject("Winmgmts:\\.\root\cimv2")
set todasClases=ow.SubclassesOf()
esta="no"
For Each clase In todasClases
     if clase.Path_.Class=res then esta="si"
next
set todasClases=nothing
set ow=nothing
if esta="no" then msgbox res&" no es una clase de cimv2",16,"WMI ASIR-2":wscript.quit

res2=msgbox("¿Quieres guardar los datos en un fichero?",36,"WMI ASIR-2")
if res2=6 then
   set fso=createobject("Scripting.FileSystemObject")
   set os=createobject("WSCript.Shell")
   sitio=os.currentDirectory
   set ficheroSalida=fso.opentextfile(sitio&"\Valores"&res&".txt",2,true)
end if
'=========================================================== crear array con las propiedades de la clase consultada
set ow=getobject("Winmgmts:\\.\root\CIMV2:"&res)
cad=""
for each pro in ow.Properties_
   cad=cad&pro.name&","
next
ArrayPropiedades=split(cad,",")
'===========================================================
set ow2=getObject("Winmgmts:\\.\root\CIMV2")
Set elementosColeccion=ow2.ExecQuery("Select * from "&res)
cadena=""
for each objeto in elementosColeccion
    for x=0 to ubound(ArrayPropiedades)
        on error resume next
        execute("valor=objeto."&ArrayPropiedades(x))
        cadena=cadena&chr(13)&ArrayPropiedades(x)&" :"&valor
        if res2=6 then
           ficheroSalida.writeline ArrayPropiedades(x)&" :"&valor
        end if
    next
next
msgbox cadena
if res2=6 then
   set fso=nothing
   set os=nothing
   ficheroSalida.close
   set ficheroSalida=nothinge
end if
set ow2=nothing
set ow=nothing
