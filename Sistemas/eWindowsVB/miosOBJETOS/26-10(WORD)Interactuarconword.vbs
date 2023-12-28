' Crear un informe word con las siguientes caracteristicas, epigrafe "ASIR-2", en un tamaño intermedio "Nombre de la maquina y nombre de usuario"
' y como linea de detalle el contenido del fichero quehaceUSUARIO.txt, si no esta creado ejecutar el vbs
' 2.0 pone sun logotipo encima y luego lo guardamos en alguna carpeta
set fso=createObject("Scripting.FileSystemObject")
set osh=createObject("Wscript.Shell")
set oW=wscript.createobject("Word.Application")
oW.visible=true
set oDW=oW.Documents.Add()

aqui=osh.CurrentDirectory
if fso.FileExists(aqui&"\Recientes.doc") then
	fso.DeleteFile(aqui&"\Recientes.doc")
end if

'2.0 IMAGEN
Set seleccionado=oW.Selection
for x=1 to 7
 seleccionado.typeparagraph()
next
wscript.sleep 500
Set forma=oDW.Shapes
forma.AddPicture(aqui&"\visualstudio.png")

'PARRAFO 1
seleccionado.Font.Name="Century Gothic"
seleccionado.Font.Size="48"
seleccionado.Font.shadow=true
seleccionado.Font.bold=true
seleccionado.Font.italic=true
seleccionado.font.color=RGB(0,100,100)
seleccionado.TypeText "ASIR-2"
seleccionado.TypeParagraph()

'PARRAFO 2
maquina=osh.expandEnvironmentStrings("%COMPUTERNAME%")
user=osh.expandEnvironmentStrings("%USERNAME%")
seleccionado.Font.Size="18"
seleccionado.Font.shadow=false
seleccionado.Font.bold=false
seleccionado.Font.italic=false
seleccionado.font.color=RGB(100,0,100)
seleccionado.TypeText "Nombre de la máquina: "&maquina&chr(13)&"Nombre de usuario: "&user
seleccionado.TypeParagraph()

'PARRAFO 3
escritorio=osh.expandEnvironmentStrings("%userprofile%\desktop")
user=osh.expandEnvironmentStrings("%USERNAME%")
if not fso.fileExists(escritorio&"\QUEHACE"&user&".txt") then
	osh.run (aqui&"\26shellnotepad\26-10(SHELL-notepad)Cosasrecientesdelusuarioactual.vbs")
	wscript.sleep 5000
end if

seleccionado.Font.Size="12"
seleccionado.font.color=RGB(0,0,0)
seleccionado.TypeText chr(13)
set fiche=fso.OpenTextFile(escritorio&"\QUEHACE"&user&".txt",1)
while not fiche.atendofstream
	linea=fiche.readline
	seleccionado.TypeText linea&chr(13)
wend
fiche.close
seleccionado.TypeParagraph()

oDW.saveAS(aqui&"\Recientes.doc")
oW.Quit

set fiche=nothing
set forma=nothing
set seleccionado=nothing
set oDW=nothing
set oW=nothing
set osh=nothing