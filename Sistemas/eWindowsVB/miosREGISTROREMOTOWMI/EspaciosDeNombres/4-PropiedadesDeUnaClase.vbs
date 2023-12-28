'queClase="Win32_BootConfiguration"
'queClase="Win32_TimeZone"
queClase="Win32_DiskPartition"
'queClase="Win32_OperatingSystem"
'queClase="Win32_ComputerSystem"
'queClase="Win32_UserDesktop"
'queClase="Win32_DiskDrive"




Set objWMIService=GetObject("winmgmts:\\.\root\CIMV2:"&queClase)
WScript.Echo "El número de Propiedades de la clase :"&queClase&" es "&objWMIService.Properties_.count
cad="Nombre de las propiedades"&chr(13)
cad=cad&"========================"&chr(13)
For Each objItem in objWMIService.Properties_
    cad=cad&chr(13)&"Propiedad: " & objItem.name
Next
wscript.echo cad