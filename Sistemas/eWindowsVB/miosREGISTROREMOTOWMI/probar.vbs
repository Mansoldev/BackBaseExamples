set oShell=createObject("wscript.shell")
oShell.run ("C:\windows\system32\cmd /k wmic /node:B11_05 /user:Administrador /password:AdminUser2015 startup get command,location>holi.txt"),,true
maquina="B11_05"

set oW=wscript.createobject("Word.Application")
oW.visible=true
set oDW=oW.Documents.Add()
Set seleccionado=oW.Selection

'PARRAFO 1
seleccionado.Font.Name="Century Gothic"
seleccionado.Font.Size="48"
seleccionado.Font.shadow=true
seleccionado.Font.bold=true
seleccionado.Font.italic=true
seleccionado.font.color=RGB(0,100,100)
seleccionado.TypeText maquina&" ASIR-2"
seleccionado.TypeParagraph()

seleccionado.Font.Size="12"
seleccionado.font.color=RGB(0,0,0)
set fso=createobject("Scripting.FileSystemObject")
set fichero=fso.OpenTextFile("holi.txt",1,true)
fichero.SkipLine
while fichero.AtEndOfStream<>true
	linea=fichero.readline
	lineaA=split(linea,"  ")
	command=lineaA(0)
	location=lineaA(1)
	seleccionado.Font.bold=true
	seleccionado.Font.shadow=true
	seleccionado.TypeText command&": "
	seleccionado.Font.bold=false
	seleccionado.Font.shadow=false
	seleccionado.TypeText location&chr(13)
wend
fichero.close 
set fichero=nothing

set oShell=createObject("Wscript.Shell")
aqui=oShell.CurrentDirectory
oDW.saveAS(aqui&"\ComandosalInicio.doc")
oW.Quit

set fso=nothing
set seleccionado=nothing
set oDW=nothing
set oW=nothing
set oShell=nothing