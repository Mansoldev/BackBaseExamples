'Cuantos ficheros y carpetas contiene C:\windows\system32?

set fso=wscript.createobject("Scripting.FileSystemObject")
set carp=fso.GetFolder("C:\Windows\System32")
set ficheros=carp.Files
set carpetas=carp.SubFolders
contf=0
contc=0

for each fichero in ficheros
	contf=contf+1
next

for each carpeta in carpetas
	contc=contc+1
next

msgbox "La carpeta C:\Windows\system32 tiene:"&chr(13)&chr(13)&contc&" carpetas"&chr(13)&contf&" ficheros"

set fso=nothing
set carp=nothing
