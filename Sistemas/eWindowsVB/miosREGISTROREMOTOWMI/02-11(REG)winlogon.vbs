set os=WScript.CreateObject("WScript.Shell")
'1 leer LegalNoticeText
texto=os.RegRead("HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\LegalNoticeText")
if texto="" then 
	wscript.echo "La clave LegalNoticeText está vacia."&chr(13)
end if
'2 Preguntar si se desea modificar  o eliminar mensaje.
modificar=inputbox(string(5,chr(13))&"Desea modificar o eliminar el mensaje?","REGISTRO - MENSAJE")
if modificar="" then wscript.quit
'3 y 4
select case true
	case modificar="modificar"
		do
		tit=inputbox(string(5,chr(13))&"Que titulo?","REGISTRO - MODIFICAR")
		loop until tit<>""
		do
		men=inputbox(string(5,chr(13))&"Que mensaje?","REGISTRO - MODIFICAR")
		loop until tit<>""
		os.RegWrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\LegalNoticeCaption",tit,"REG_SZ"
		os.RegWrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\LegalNoticeText",men,"REG_SZ"
	case modificar="eliminar"
		os.RegWrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\LegalNoticeCaption","","REG_SZ"
		os.RegWrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\LegalNoticeText","","REG_SZ"
	case else
		wscript.echo "Se esperaba MODIFICAR o ELIMINAR"
		wscript.quit
end select

set os=nothing