'Pedir por pantalla el nombre de una carpeta y si existe, devolver como resultado su lista de atributos.
nc=inputbox(string(5,13)&"Que carpeta?","ASIR-2")
if nc="" then msgbox "ERROR! No has introducido Na de Na",16,"ASIR-2":wscript.quit

set fso=createobject("Scripting.FileSystemObject")
if not fso.folderExists(nc) then msgbox "ERROR! No existe la carpeta",16,"ASIR-2":wscript.quit

set carpeta=fso.getFolder(nc)
pita="CARPETA "&carpeta
c=pita&chr(13)&string(len(pita)+15,42)&chr(13)

c=c&"Atributos: "&carpeta.Attributes&chr(13)

atrib=carpeta.Attributes
do
	select case true
		case atrib>=2048
			atributo=atributo&"Carpeta comprimida"
			atrib=atrib-2048
		case atrib>=1024
			atributo=atributo&"Enlace"
			atrib=atrib-1024
		case atrib>=32
			atributo=atributo&"Carpeta cambiada en el ultimo Backup"
			atrib=atrib-32
		case atrib>=16
			atributo=atributo&"Carpeta"
			atrib=atrib-16
		case atrib>=4
			atributo=atributo&" de sistema"
			atrib=atrib-4
		case atrib>=2
			atributo=atributo&" oculta"
			atrib=atrib-2
		case atrib=1
			atributo=atributo&" de solo lectura"
			atrib=atrib-1
end select
loop until atrib=0

msgbox c&atributo

