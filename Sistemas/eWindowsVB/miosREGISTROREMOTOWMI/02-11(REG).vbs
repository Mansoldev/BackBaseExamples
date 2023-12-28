'Script que sea capaz de hacer las siguientes acciones: se escribe en Windows\system32
'comprueba si en la variable autorun para toda la maquina está instalada una llamada a si mismo
'si no es asi se instala, comprueba el nombre del usuario y si es alumno crea una carpeta, si no existe, en la raiz llamada pruebas
set os=wscript.CreateObject("WScript.Shell")
set fso=wscript.CreateObject("Scripting.FileSystemObject")
esta=os.RegRead("HKCU\Software\Microsoft\Windows\CurrentVersion\Run\comprobar")
aqui=os.CurrentDirectory
if esta="" then
	wscript.echo "La clave run está vacia"
end if

fso.copyfile aqui&"\02-11(REG).vbs","C:\Windows\System32\eje2.vbs"





set os=nothing
set fso=nothing