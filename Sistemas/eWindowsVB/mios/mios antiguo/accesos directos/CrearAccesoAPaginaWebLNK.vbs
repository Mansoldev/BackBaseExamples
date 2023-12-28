set WshShell = WScript.CreateObject("WScript.Shell")
Escritorio=WshShell.SpecialFolders("Desktop")
set AccesoDirecto=WshShell.CreateShortcut(Escritorio&"\w3schools.lnk")
AccesoDirecto.TargetPath = "http://www.w3schools.com"
AccesoDirecto.iconLocation="c:\windows\system32\imageres.dll,10"
AccesoDirecto.Save
wscript.echo "Creado el acceseo directo en "&Escritorio
