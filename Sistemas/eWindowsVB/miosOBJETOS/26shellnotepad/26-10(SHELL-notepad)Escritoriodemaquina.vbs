set fso=createObject("Scripting.FileSystemObject")
set osh=createObject("wscript.Shell")

'1 Ejecutamos el script anterior
aqui=osh.CurrentDirectory
osh.run (aqui&"\26-10(SHELL-notepad)Cosasrecientesdelusuarioactual.vbs")
wscript.sleep 5000 

'2 Muestra en un notepad el contenido del escritorio del usuario
escritorio=osh.expandEnvironmentStrings("%userprofile%\desktop")
osh.run "notepad.exe"
wscript.sleep 500
osh.appactivate "Bloc de notas"
wscript.sleep 500

osh.run ("%comspec% /c dir /b /a "&escritorio&">"&aqui&"\temp.txt")
wscript.sleep 500
osh.sendkeys "{= 30}"



set recentito=nothing
set fso=nothing
set osh=nothing