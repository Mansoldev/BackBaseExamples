'Presentar en un inputbox las maquinas al alcance de la nuestra, 
'pedir en ese inputbox el nombre de la máquina y presentar de esa máquina,
'tras pedir usuario y password, los mismo datos que el ejercicio 1.
'2 leer fichero y guardao en una cadena&","
'3 Presentar el array en el inputbox
set oShell=createObject("wscript.shell")
oShell.run ("C:\windows\system32\cmd /k net view >maquinas.txt"),,true

set fichero=fso.OpenTextFile("maquinas.txt",1,true)        
while fichero.AtEndOfStream<>true
	hola=hola&fichero.readline&chr(13)
wend
fichero.close
set fichero=nothing

maquina=Inputbox(hola&"De qué máquina quieres ver los comandos que se ejecutan al inicio?","ASIR-2 REMOTO")
user=Inputbox(string(5,chr(13))&"Usuario de la maquina","ASIR-2 REMOTO")
pass=Inputbox(string(5,chr(13))&"Contraseña para ese usuario","ASIR-2 REMOTO")
oShell.run ("C:\windows\system32\cmd /k wmic /node:"&maquina&" /user:"&user&" /password:"&pass&" startup get command,location>holi.txt"),,true



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
set fichero=fso.OpenTextFile("holi.txt",1,true)
fichero.SkipLine
while fichero.AtEndOfStream<>true
	fichero.readline
	seleccionado.Font.bold=true
	seleccionado.Font.shadow=true
	seleccionado.TypeText fichero.&": "&chr(13)
	seleccionado.Font.bold=false
	seleccionado.Font.shadow=false
	seleccionado.TypeText OBJ.Location&chr(13)&chr(13)
wend
fichero.close 
set fichero=nothing

set osh=createObject("Wscript.Shell")
aqui=osh.CurrentDirectory
oDW.saveAS(aqui&"\ComandosalInicio.doc")
oW.Quit
set seleccionado=nothing
set oDW=nothing
set oW=nothing



set oShell=nothing