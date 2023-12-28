' Dado el fichero comandos.txt, depurar dicho fichero eliminando los numeros, poniendo en mayuscula los ficheros .msc, 
' eliminando los .exe y dejando en minusculas los .cpl
set fso=wscript.createobject("Scripting.FileSystemObject")

set leer=fso.OpenTextFile("Comandos.txt",1,true)
set aus=fso.OpenTextFile("aus.txt",2,true)
while leer.AtEndOfStream<>true
	l=leer.ReadLine
	lsn=split(l,"-")
	lsnse=ltrim(lsn(1))
	ext=right(lsnse,4)
	select case ext
		case ".cpl"
			aus.WriteLine lsnse
		case ".msc"
			fin=UCase(lsnse)
			aus.WriteLine fin
	end select
wend
aus.close
leer.close

fso.DeleteFile("Comandos.txt")
set nuevo=fso.GetFile("aus.txt")
nuevo.Name="Comandos.txt"

set nuevo=nothing
set aus=nothing
set leer=nothing
set fso=nothing