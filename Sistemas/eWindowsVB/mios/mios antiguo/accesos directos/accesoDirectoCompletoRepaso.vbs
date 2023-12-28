Set oS=createobject("wscript.shell")
Set oFS=createobject("Scripting.FileSystemObject")
sitio=oS.currentDirectory
oS.run("c:\windows\system32\cmd /c net view|find "&chr(34)&"\\"&chr(34)&">"&sitio&"\maquinas.txt"),,true
if not oFS.fileExists(sitio&"\maquinas.txt") then
msgbox "No he podido crear fichero temporal",16,"ASIR2"
wscript.quit
end if
set m=oFs.opentextfile(sitio&"\maquinas.txt")
cadena=""
while not m.atendofstream
 cadena=cadena&m.readline&chr(13)
wend
R=inputbox(cadena&"Qué maquina?","ASIR-2")
P=inputbox("Password de Administrador?","ASIR-2")
oS.run("c:\windows\system32\cmd /c net use \\"&R&"\IPC$ "&P&" /user:Administrador"),,true
oS.run("c:\windows\system32\cmd /c net use x: \\"&R&"\C$"),,true
cadena="x:\users\public\desktop\P3.lnk"
Set ellink=oS.createshortcut(cadena) 'creamos el link
Ellink.targetpath="\\Carlos-pc\Todo"'completamos los valores
Ellink.windowstyle=3
Ellink.hotkey="CTRL+SHIFT+N"
Ellink.iconlocation="C:\windows\notepad.exe,0"
Ellink.description="Acceso directo a RECURSOS"
Ellink.workingdirectory ="C:\"
Ellink.save
oS.run("c:\windows\system32\cmd /c net use \\"&R&"\IPC$ /delete"),,true
oS.run("c:\windows\system32\cmd /c net use x: /delete"),,true
set ellink=nothing
set oS=nothing