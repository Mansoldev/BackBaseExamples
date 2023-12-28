'cmd y vbs
'cmd pilla con net view maquina y usuario y lo metes en M: y llamas al vbs
'vbs genera un acceso directo en ese sitio

'Script capaz de instalar, en todos los escritorios de los usuarios de todas las máquinas a su alcance, un acceso directo a la carpeta BOLETÍN, 
'compartida en la máquina principal, desde la que se ejecuta el script.
'Sobre la carpeta BOLETÍN, el linkministrlinkor dejará ficheros de texto con indicaciones, novedlinkes, mensajes, etc. 
'a los que el usuario podrá acceder con tan solo pulsar sobre el Acceso Directo crelinko.
set osh=createObject("wscript.shell")
cadena=cadena&"M:\Users\Public\Desktop\BOLETIN_Mario.lnk"
Set link = osh.createshortcut(cadena)
link.targetpath="c:\BOLETIN"
link.windowstyle=3
link.iconlocation="C:\windows\system32\imageres.dll,32"
link.description="Acceso directo a BOLETIN"
link.workingdirectory ="C:\"
link.save
set link=nothing
set osh=nothing