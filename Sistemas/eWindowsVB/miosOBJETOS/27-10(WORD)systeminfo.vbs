'Utilizando el comando systeminfo produce un informe word cuyo contenido sea el siguiente:
'Logotipo
'Fecha actual()now
'nombre de la maquina
'nombre del usuario registrado
'como información las caracteristicas de systeminfo

set fso=createObject("Scripting.FileSystemObject")
set osh=createObject("Wscript.Shell")
set oW=wscript.createobject("Word.Application")
oW.visible=true
set oDW=oW.Documents.Add()

'Si ya se ha eecutado
aqui=osh.CurrentDirectory
if fso.FileExists(aqui&"\systeminfo.doc") then
	fso.DeleteFile(aqui&"\systeminfo.doc")
end if

'1 logotipo
Set seleccionado=oW.Selection
for x=1 to 7
 seleccionado.typeparagraph()
next
wscript.sleep 500
Set forma=oDW.Shapes
forma.AddPicture(aqui&"\visualstudio.png")

'2 fecha actual
seleccionado.Font.Name="Century Gothic"
seleccionado.Font.Size="18"
seleccionado.Font.shadow=false
seleccionado.Font.bold=false
seleccionado.Font.italic=false
seleccionado.font.color=RGB(0,0,0)
seleccionado.TypeText ""&now
seleccionado.TypeParagraph()

'3 Nombre de la máquina
maquina=osh.expandEnvironmentStrings("%COMPUTERNAME%")
seleccionado.TypeText ""&maquina
seleccionado.TypeParagraph()

'4 Nombre del usuario registrado
user=osh.expandEnvironmentStrings("%USERNAME%")
seleccionado.TypeText ""&user
seleccionado.TypeParagraph()

'5 como información las caracteristicas de systeminfo
seleccionado.Font.Size="11"
osh.run ("%comspec% /c systeminfo>"&aqui&"\temp.txt"),,true
set fiche=fso.OpenTextFile(aqui&"\temp.txt",1)
fiche.skipline
yano=0
while not fiche.atendofstream AND yano=0
	linea=fiche.readline
	lin=split(linea,":")
	plin1=lin(0)
	plin2=lin(1)
	seleccionado.Font.bold=true
	seleccionado.TypeText ""&plin1&": "
	seleccionado.Font.bold=false
	ca=":"
	for x=1 to ubound(lin)
		if x=ubound(lin) then ca=""
		seleccionado.TypeText ""&ltrim(lin(x))&ca
	next
	seleccionado.TypeText chr(13)
	if left(linea,5)="Revis" then
		yano=1
	end if
wend
fiche.close
fso.DeleteFile(aqui&"\temp.txt")

oDW.saveAS(aqui&"\systeminfo.doc")
oW.Quit

set fiche=nothing
set forma=nothing
set seleccionado=nothing
set oDW=nothing
set oW=nothing
set osh=nothing