clase=inputbox(string(5,chr(13))&"QUE CLASE QUIERES ANALIZAR?","WMI ASIR2")
set fso=createobject("Scripting.fileSystemObject")
set oWMIC=GetObject("Winmgmts:\root\CIMV2:"&clase)

set fichero=fso.OpenTextFile("Propiedades"&clase&".txt",2,true)        
for each propiedad in oWMIC.Properties_
	fichero.WriteLine "*"&propiedad.Name&" :"
next
fichero.close


set fichero=nothing
set oWMIC=nothing
set fso=nothing