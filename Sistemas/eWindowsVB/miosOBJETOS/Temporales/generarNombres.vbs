Set FSO=wscript.CreateObject("Scripting.FileSystemObject")
For i=1 to 10
    ficheroTemporal=FSO.GetTempName
    cadena=cadena&ficheroTemporal&chr(13)
Next
msgbox cadena
set FSO=nothing