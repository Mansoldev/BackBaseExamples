strComputer = "." 
Set objWMIService = GetObject("winmgmts:\\" & strComputer & "\root\CIMV2") 
Set colItems = objWMIService.ExecQuery("SELECT * FROM Win32_NetworkAdapter")
cadena=""
For Each objItem in colItems  
   cadena=cadena&vbcr&"Nombre: "&objItem.Name   
   cadena=cadena&vbcr&"Descripcion: " & objItem.Description
   cadena=cadena&vbcr&"__________________________________" 
Next
wscript.echo cadena