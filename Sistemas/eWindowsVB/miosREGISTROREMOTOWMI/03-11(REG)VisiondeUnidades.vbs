'script que al ejecutarlo: Presenta menú: 1 restringir, 2 autorizar
'1 restringe al usuario actual el acceso y visualizacion de la unidad C:
'2 si es autorizar damos los pasos necesarios para que vea y acceda a lo capado
set os=wscript.CreateObject("WScript.Shell")
c="1 - Restringir"&chr(13)&"2 - Autorizar"&chr(13)
opcion=inputbox(c&chr(13)&chr(13)&"Que deseas hacer?","ASIR2 - CAPAR")

select case opcion
	case 1
		os.RegWrite "HKLM\cobaya\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoViewOnDrive",4,"REG_DWORD"
		os.RegWrite "HKLM\cobaya\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoDrives",4,"REG_DWORD"
	case 2
		os.RegWrite "HKLM\cobaya\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoViewOnDrive",0,"REG_DWORD"
		os.RegWrite "HKLM\cobaya\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoDrives",0,"REG_DWORD"
	case else
		wscript.echo "Valor no valido"
		wscript.quit
end select

set os=nothing