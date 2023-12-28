' utilizando el codigo necesario para saber los atributos de una carpeta, presentaremos los atributos en forma de menu y preguntaremos
' quieres cambiar los atributos? al pulsar si: si no es un enlace, le asignamos el atributo 16 y el 2
nc=inputbox(string(5,13)&"Que carpeta?","ASIR-2")
if nc="" then msgbox "ERROR! No has introducido Na de Na",16,"ASIR-2":wscript.quit

set fso=createobject("Scripting.FileSystemObject")
if not fso.folderExists(nc) then msgbox "ERROR! No existe la carpeta",16,"ASIR-2":wscript.quit
set carpeta=fso.getFolder(nc)

atrib=carpeta.Attributes
do
	select case true
		case atrib>=2048
			atributo=atributo&"2048 - Carpeta comprimida"&chr(13)
			atrib=atrib-2048
		case atrib>=1024
			atributo=atributo&"1024 - Enlace"&chr(13)
			atrib=atrib-1024
		case atrib>=32
			atributo=atributo&"32 - Carpeta cambiada en el ultimo Backup"&chr(13)
			atrib=atrib-32
		case atrib>=16
			atributo=atributo&"16 - Carpeta"&chr(13)
			atrib=atrib-16
		case atrib>=4
			atributo=atributo&"4 - de sistema"&chr(13)
			atrib=atrib-4
		case atrib>=2
			atributo=atributo&"2 - oculta"&chr(13)
			atrib=atrib-2
		case atrib=1
			atributo=atributo&"1 - de solo lectura"&chr(13)
			atrib=atrib-1
end select
loop until atrib=0

changeAttrib=msgbox(carpeta&chr(13)&"=================================="&chr(13)&atributo&"Quieres cambiar los atributos?",36,"ASIR-2")
if changeAttrib=7 then wscript.quit

carpeta.attributes=18
'msgbox carpeta.attributes

