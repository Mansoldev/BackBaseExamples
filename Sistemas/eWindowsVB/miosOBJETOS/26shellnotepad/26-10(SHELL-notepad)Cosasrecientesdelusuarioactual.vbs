set fso=createObject("Scripting.FileSystemObject")
set osh=createObject("wscript.Shell")

'1 Creas las variables de las rutas
reciente=osh.expandEnvironmentStrings("%appdata%\Microsoft\Windows\Recent")
aqui=osh.CurrentDirectory

'2 Creas el texto con el resultado del comando
osh.run ("%comspec% /c dir /b /a "&reciente&">"&aqui&"\recentito.txt")
wscript.sleep 2500

'3-4 Abres el Notepad y el fichero en modo lectura
osh.exec "notepad.exe"
wscript.sleep 500
osh.appactivate "Bloc de notas"

set recentito=fso.OpenTextFile(aqui&"\recentito.txt",1)
'5 lee linea a linea y lo envia a notepad sin .ink
while not recentito.atendofstream
	linea=recentito.readline
	num=len(linea)-4
	osh.sendkeys left(linea,num)
	osh.sendkeys "~"
wend
recentito.close

'6 Borras el fichero y guardas el notepad.
fso.DeleteFile(aqui&"\recentito.txt")
user=osh.expandEnvironmentStrings("%USERNAME%")
donde=osh.expandEnvironmentStrings("%userprofile%\desktop")
wscript.sleep 500

osh.sendkeys "^(g)"
wscript.sleep 500
osh.sendkeys donde&"\QUEHACE"&user&".txt"
wscript.sleep 500
osh.sendkeys "~"
wscript.sleep 500
osh.sendkeys "%{F4}"


set recentito=nothing
set fso=nothing
set osh=nothing