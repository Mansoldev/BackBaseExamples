set os=CreateObject("WScript.Shell")
set fso=CreateObject("Scripting.FileSystemObject")

camino=os.CurrentDirectory

os.run ("%comspec% /c net view|find "&chr(34)&"\\B"&chr(34)&">"&camino&"\maquinas.txt"),0,true

set fichero=fso.opentextfile(camino&"\maquinas.txt",1)

dim maquinas()
cu=1
while not fichero.atEndOfStream
      maquina=split(fichero.readLine,chr(32))  
         redim preserve maquinas(cu)
         maquinas(cu)=maquina(0)  
         cu=cu+1   
wend
wscript.sleep 1000
fichero.close
'fso.deleteFile(camino&"\maquinas.txt")

if not fso.FolderExists("C:\BOLETIN") then
	os.run ("%comspec% /c mkdir C:\BOLETIN"),0,true
	wscript.sleep 200
	os.run ("%comspec% /c net share BOLETIN=C:\BOLETIN /GRANT:Todos,READ"),0,true
end if


for x=1 to ubound(maquinas)
	
	wscript.sleep 1000
	os.run ("%comspec% /c net use Z: "&maquinas(x)&"\C$ AdminUser2015 /user:Administrador"),0,true
	on error resume next

	cadena=cadena&"Z:\users\public\desktop\BOLETIN_B11_06.lnk"
	os.popup "Creando Acceso Directo",1,"ASIR-2",64
	Set AD=OS.createshortcut(cadena) 
	AD.targetpath="\\B11_06\BOLETIN"
	AD.windowstyle=3
	AD.iconlocation="C:\windows\system32\imageres.dll,32"
	AD.description="Acceso directo a BOLETIN"
	AD.workingdirectory ="C:\"
	wscript.sleep 1000
	AD.save
	cadena=""
	set AD=nothing
	wscript.sleep 1000
	os.run ("%comspec% /c net use Z: /DELETE"),0,true

next
	os.popup "Procesos terminados",1,"ASIR-2",64

set fichero=nothing
set fso=nothing
set os=nothing