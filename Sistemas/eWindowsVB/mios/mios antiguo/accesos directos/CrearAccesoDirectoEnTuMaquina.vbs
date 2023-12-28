Set oS=createobject("wscript.shell")
Msgbox "Tu escritorio está en "&oS.specialfolders("Desktop")
cadena=oS.specialfolders("Desktop")&"\Anotar.lnk"
Set ellink=oS.createshortcut(cadena) 'creamos el link
Ellink.targetpath="C:\windows\notepad.exe" 'completamos los valores
Ellink.windowstyle=3
Ellink.hotkey="CTRL+SHIFT+N"
Ellink.iconlocation="C:\windows\system32\imageres.dll,20"
Ellink.description="Acceso directo a notepad"
Ellink.workingdirectory ="C:\"
Ellink.save
set ellink=nothing
set oS=nothing