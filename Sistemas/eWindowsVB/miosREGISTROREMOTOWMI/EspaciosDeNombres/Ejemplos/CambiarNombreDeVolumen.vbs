set so=createobject("Wscript.Shell")
if so.expandenvironmentstrings("%username%")<>"Administrador" then msgbox "No eres Administrador ":wscript.quit
Set Unidad=GetObject("WinMgmts:\\.\root\cimv2:Win32_LogicalDisk='C:'")
WScript.Echo "Nombre anterior:"&Unidad.VolumeName
Unidad.VolumeName="Unidad C"
Unidad.Put_
WScript.Echo "Modificación ejecutada"
WScript.Echo "Nombre posterior: " & Unidad.VolumeName
