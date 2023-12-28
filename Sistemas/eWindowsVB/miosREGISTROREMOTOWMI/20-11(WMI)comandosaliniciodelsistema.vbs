'1 script que presente en un fichero de Word aquellos comandos y su ubicación 
'en el registro que se ejecuten en la máquina local al inicio del sistema.
set WMIC=getobject("winmgmts:\root\cimv2")
Set Objetos=WMIC.ExecQuery("Select Command,Location from Win32_StartupCommand")

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
seleccionado.TypeText "STARTUP ASIR-2"
seleccionado.TypeParagraph()

seleccionado.Font.Size="12"
seleccionado.font.color=RGB(0,0,0)
for each OBJ in Objetos
	seleccionado.Font.bold=true
	seleccionado.Font.shadow=true
	seleccionado.TypeText OBJ.Command&": "&chr(13)
	seleccionado.Font.bold=false
	seleccionado.Font.shadow=false
	seleccionado.TypeText OBJ.Location&chr(13)&chr(13)
next

set osh=createObject("Wscript.Shell")
aqui=osh.CurrentDirectory
oDW.saveAS(aqui&"\ComandosalInicio.doc")
oW.Quit

set osh=nothing
set seleccionado=nothing
set oDW=nothing
set oW=nothing
set objetos=nothing
set WMIC=nothing

