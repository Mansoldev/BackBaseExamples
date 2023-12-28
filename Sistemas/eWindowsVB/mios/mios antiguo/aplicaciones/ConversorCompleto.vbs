set osh=wscript.createobject("WScript.Shell")

do
n=inputbox("Número","ASIR2")
loop until n<>"" and isnumeric(n)

'Calculadora
osh.exec "calc"
osh.appactivate "Calculadora"
wscript.sleep 500
osh.sendkeys "%(3)"
wscript.sleep 500
osh.sendkeys n
wscript.sleep 500
osh.sendkeys "^(c)"
wscript.sleep 500

'Decimal
osh.exec "notepad"
osh.appactivate "Blod de notas"
wscript.sleep 500
osh.sendkeys "Decimal: "
wscript.sleep 500
osh.sendkeys "^(v)"
wscript.sleep 500
osh.sendkeys "~"


'Binario
wscript.sleep 1000
osh.appactivate "Calculadora"
wscript.sleep 500
osh.SendKeys "%(3)"
wscript.Sleep 500
osh.sendkeys "^(v)"
wscript.Sleep 500
osh.sendkeys "{F8}"
wscript.Sleep 500
osh.sendkeys "^(c)"
wscript.sleep 500
osh.appactivate "Bloc de notas"
osh.SendKeys "Binario: "
wscript.sleep 500
osh.sendkeys "^(v)"
osh.sendkeys "~"

'Octal
wscript.sleep 1000
osh.appactivate "Calculadora"
wscript.sleep 500
osh.SendKeys "%(3)"
wscript.Sleep 500
osh.sendkeys "^(v)"
wscript.Sleep 500
osh.sendkeys "{F7}"
wscript.Sleep 500
osh.sendkeys "^(c)"
wscript.sleep 500
osh.appactivate "Bloc de notas"
osh.SendKeys "Octal: "
wscript.sleep 500
osh.sendkeys "^(v)"
osh.sendkeys "~"

'Hexadecimal
wscript.sleep 1000
osh.appactivate "Calculadora"
wscript.sleep 500
osh.SendKeys "%(3)"
wscript.Sleep 500
osh.sendkeys "^(v)"
wscript.Sleep 500
osh.sendkeys "{F5}"
wscript.Sleep 500
osh.sendkeys "^(c)"
wscript.sleep 500
osh.appactivate "Bloc de notas"
osh.SendKeys "Hexadecimal: "
wscript.sleep 500
osh.sendkeys "^(v)"
osh.sendkeys "~"



'===================================================Guardar fichero en c:\asir-2\resultados.txt
set fso=wscript.createobject("Scripting.FileSystemObject")
if not fso.folderexists("c:\ASIR-2") then
	fso.createfolder("c:\ASIR-2")
end if
ruta="C:\ASIR-2"
if fso.FileExists("c:\ASIR-2\resultados.txt") then
	fso.deletefile("c:\ASIR-2\resultados.txt")
end if
'=====================================================================Guardar blog de notas
wscript.sleep 1000
osh.sendkeys "^(g)"
wscript.sleep 500
osh.sendkeys ruta&"\resultados.txt"
wscript.sleep 1000
osh.sendkeys "~"
wscript.sleep 1000
osh.sendkeys "%{F4}"
wscript.sleep 1000
osh.appactivate "Calculadora"
osh.sendkeys "%{F4}"
wscript.sleep 500

'==========================================================Presentar datos en fichero de word

set fichero=fso.opentextfile("c:\ASIR-2\resultados.txt",1)
set objword=wscript.createobject("Word.Application")
objword.visible=true
set ow=objword.Documents.Add()
set seleccion=objword.selection

seleccion.font.name="Consolas"
seleccion.font.size="12"
seleccion.font.italic=true
while not fichero.AtEndOfStream
seleccion.typetext fichero.readline&vbcrlf

wend
seleccion.typeparagraph()
fichero.close
set seleccion=nothing
set ow=nothing
set objword=nothing
set fso=nothing
set osh=nothing











