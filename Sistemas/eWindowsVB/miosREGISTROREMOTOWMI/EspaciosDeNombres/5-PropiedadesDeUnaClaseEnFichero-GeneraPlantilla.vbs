sub salir()
   set owmi=nothing
   set ofso=nothing
   wscript.quit
end sub

set ofso=createobject("Scripting.fileSystemObject")
clase=inputBox(string(5,13)&ucase("qué clase quieres analizar?"),"WMI ASIR2")
if clase="" then set ofso=nothing:wscript.quit
on error resume next
set owmi=getObject("Winmgmts:\\.\root\CIMV2:"&clase)
if err<>0 then
   msgbox "Lo que has escrito no es una clase de cimv2",16,"WMI ASIR2"
   salir
end if
set fichero=ofso.opentextfile("Propiedades"&clase&".txt",2,true)
cadena=""
nl=1
for each propiedad in owmi.Properties_
cadena=cadena&vbcr&propiedad.Name
fichero.writeline "*"&propiedad.Name&" : "&propiedad.Value
if nl<25 then
   nl=nl+1
   else
   wscript.echo cadena
   cadena=""
   nl=1
end if
 
next
wscript.echo cadena
fichero.close
set fichero=nothing
salir