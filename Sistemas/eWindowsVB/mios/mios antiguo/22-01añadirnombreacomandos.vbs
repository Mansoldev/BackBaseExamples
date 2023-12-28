'Script que añada a un fichero llamado comandos, el nombre del fichero pedido por pantalla

set FSO=wscript.createobject("Scripting.FileSystemObject")

comando=inputbox(string(6,13)&" Que comando?","Asir-2")
set FSOf=FSO.opentextfile(comandos.txt,8,true)
FSOf.writeline(comando&" "&now)
FSOf.close

set FSOf=nothing
set FSO=nothing

