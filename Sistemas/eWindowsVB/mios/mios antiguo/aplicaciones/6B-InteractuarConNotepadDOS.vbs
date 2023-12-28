set fso=Wscript.createobject("Scripting.FileSystemObject")
set oS = WScript.CreateObject("WScript.Shell")
oS.exec "notepad.exe"
WScript.Sleep 100
oS.AppActivate "Bloc de notas"
WScript.Sleep 1000
aqui=oS.currentDirectory
oS.exec "cmd /k qprocess>"&aqui&"\procesos.txt"
WScript.Sleep 1000
set fi=fso.opentextfile("procesos.txt")
while not fi.atendofstream
 os.sendKeys fi.readline
 os.sendKeys "~"
wend
fi.close
fso.deletefile("procesos.txt")
set fi=nothing
set oS=nothing
set fso=nothing


