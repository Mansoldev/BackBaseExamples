Set osh=WScript.CreateObject("WScript.Shell")
osh.exec "notepad"
wscript.sleep 500
osh.appactivate "Bloc de notas"
osh.sendkeys "Hola caracola"

set osh=nothing