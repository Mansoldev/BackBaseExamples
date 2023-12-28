set fso=createobject("Scripting.FileSystemObject")
set os=createObject("wscript.shell")
sitio=os.currentdirectory
maquina=os.expandenvironmentStrings("%computername%")

os.run("%comspec% /c net view|find "&chr(34)&"\\"&chr(34)&">"&sitio&"\temporal.txt"),0,true

set fichero=fso.opentextfile(sitio&"\temporal.txt",1)
while not fichero.atendofstream
	mma=fichero.readline
	cad=cad&mma&","
wend
fichero.close
fso.deletefile(sitio&"\temporal.txt")

set fichero=nothing
set os=nothing
set fso=nothing

maquinasS=split(cad,",")
for x=0 to ubound(maquinasS)-1
	'msgbox maquinasS(x)
	maquinaLimpia=split(maquinasS(x)," ")
	'msgbox replace(maquinaLimpia(0),"\\","")&"*"
	c=c&replace(maquinaLimpia(0),"\\","")&","
	cadena=cadena&replace(maquinaLimpia(0),"\\","")&chr(13)
next
superA=split(c,",")
'for x=0 to ubound(superA)-1
'	msgbox superA(x)
'next

res=ucase(inputbox(cadena&string(2,13)&ucase("Que máquina quieres controlar?"),"WMI ASIR2"))
'msgbox res
if res="" then msgbox wscript.quit
esta="no"
for x=0 to ubound(superA)-1
	if superA(x)=res then esta="si"
next
if esta="no" then msgbox "Error!",16,"WMI ASIR2":wscript.quit

'seguir



