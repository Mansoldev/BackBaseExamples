'============================================================= DATOS CONEXIÓN
Maquina=inputbox(string(6,13)&"Nombre de la máquina","PEDRAZ")
if Maquina="" then wscript.quit 
Red=inputbox(string(6,13)&"Nombre de la red o dominio","PEDRAZ")
if Red="" then wscript.quit
Usuario=inputbox(string(6,13)&"Nombre de usuario en la máquina "&Maquina,"PEDRAZ")
if Usuario="" then wscript.quit
Password=inputbox(string(6,13)&"Password para el usuario "&Usuario&chr(13)&" en la máquina "&Maquina,"PEDRAZ")
if Password="" then wscript.quit
'============================================================= CREACIÓN DE OBJETO LOCATOR
Set objSWbemLocator=CreateObject("WbemScripting.SWbemLocator")
on error resume next
'============================================================= CONEXIÓN CON EL SERVIDOR
Set objSWbemServices=objSWbemLocator.ConnectServer(Maquina,"root\cimv2",Usuario,Password,"","ntlmdomain:"+Red)
if err=0 then
'============================================================== COLECCIÓN CON LAS PROPIEDADES DE LA CLASE Win32_Process
Set colSwbemObjectSet=objSWbemServices.ExecQuery("Select * From Win32_Process")
'============================================================== PRESENTACIÓN
cadena="PROCESOS EJECUTÁNDOSE EN "&Maquina&string(2,13)
cl=1
cp=1
For Each objProcess in colSWbemObjectSet
    cadena=cadena&"["&cp&"] "&objProcess.Name&chr(13)
    cp=cp+1 
    if cl>15 then
       msgbox cadena
       cadena="PROCESOS EJECUTÁNDOSE EN "&Maquina&string(2,13)
       cl=1
    else
      cl=cl+1
    end if
Next
msgbox cadena
else
msgbox "Imposible conectar con la máquina "&Maquina,16,"PEDRAZ"
end if
