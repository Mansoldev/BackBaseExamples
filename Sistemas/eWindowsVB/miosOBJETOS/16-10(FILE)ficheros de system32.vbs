'Abrir fichero y escribir
set fso=wscript.createobject("Scripting.FileSystemObject")
set carpeta=fso.GetFolder("C:\Windows\System32")
set ficheros=carpeta.files

cont=0
set resultado=fso.OpenTextFile("Comandos.txt",2,true)
for each fichero in ficheros
	ext=fso.GetExtensionName(fichero)
	if ext="exe" OR ext="cpl" OR ext="msc" then
		cont=cont+1
		if cont>=100 then
			resultado.WriteLine cont&"-"&fichero.name
		else
			resultado.WriteLine cont&"- "&fichero.name
		end if
	end if
next
resultado.close
msgbox "He encontrado "&cont&" comandos"

set resultado=nothing
set ficheros=nothing
set carpeta=nothing
set fso=nothing
