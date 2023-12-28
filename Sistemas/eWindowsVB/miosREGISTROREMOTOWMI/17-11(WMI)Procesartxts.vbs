set fso=createobject("Scripting.fileSystemObject")
set oW=wscript.createobject("Word.Application")
oW.visible=true
set oDW=oW.Documents.Add()
Set seleccionado=oW.Selection

set osh=createObject("Wscript.Shell")
aqui=osh.CurrentDirectory
'PARRAFO 1
seleccionado.Font.Name="Century Gothic"
seleccionado.Font.Size="48"
seleccionado.Font.shadow=true
seleccionado.Font.bold=true
seleccionado.Font.italic=true
seleccionado.font.color=RGB(0,100,100)
seleccionado.TypeText "WMI ASIR-2"
seleccionado.TypeParagraph()
'QUITAR COSAS DEL TITULO
seleccionado.Font.shadow=false
seleccionado.Font.italic=false

Clases="Win32_ComputerSystem Win32_OperatingSystem Win32_Processor Win32_BIOS"
AClases=split(Clases," ")


for each ele in AClases
	Set oWMI=GetObject("winmgmts:\root\cimv2")
	'PARRAFOS DE CLASES
	seleccionado.Font.Size="18"
	seleccionado.font.color=RGB(100,0,100)
	seleccionado.TypeText ele
	
	'PARRAFO DE PROPIEDADES
	seleccionado.Font.Size="12"
	seleccionado.font.color=RGB(0,0,0)
	seleccionado.TypeText chr(13)
	
	Set Objetos=oWMI.ExecQuery("Select * from "&ele)
	for each OBJ in Objetos
		set fichero=fso.OpenTextFile("Propiedades"&ele&".txt",1,true)        
		while fichero.AtEndOfStream<>true
			Propiedad=fichero.readline
			'Aqui esta la solucion
			C="valor=OBJ."&Propiedad
			on error resume next
			execute(C)
			seleccionado.Font.bold=true
			seleccionado.Font.shadow=true
			seleccionado.TypeText Propiedad&": "
			seleccionado.Font.bold=false
			seleccionado.Font.shadow=false
			seleccionado.TypeText valor&chr(13)
		wend
		fichero.close
		set fichero=nothing
	next
	seleccionado.TypeParagraph()
	
	set oWMI=nothing
	set Objetos=nothing
next

oDW.saveAS(aqui&"\PropiedadesCIMV2.doc")
oW.Quit

set osh=nothing
set oW=nothing
set fso=nothing