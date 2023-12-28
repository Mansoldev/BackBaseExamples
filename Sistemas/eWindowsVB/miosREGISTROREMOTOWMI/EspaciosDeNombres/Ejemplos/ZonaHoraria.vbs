Option Explicit
'On Error Resume Next
Dim Consulta
Dim owmi
Dim coleccion
Dim elemento
Dim cad
Dim Maquina
Dim NombreEspacio
Maquina="."
NombreEspacio="\root\CIMV2"
Consulta="SELECT * FROM Win32_TimeZone"

Set owmi=GetObject("winmgmts:\\"&Maquina&NombreEspacio)
Set coleccion=owmi.ExecQuery(Consulta)
cad=""
For Each elemento In coleccion
cad=cad&chr(13)&elemento.Bias  
cad=cad&chr(13)&elemento.Caption  
cad=cad&chr(13)&elemento.DaylightBias  
cad=cad&chr(13)&elemento.DaylightDay  
cad=cad&chr(13)&elemento.DaylightDayOfWeek  
cad=cad&chr(13)&elemento.DaylightHour  
cad=cad&chr(13)&elemento.DaylightMillisecond  
cad=cad&chr(13)&elemento.DaylightMinute  
cad=cad&chr(13)&elemento.DaylightMonth  
cad=cad&chr(13)&elemento.DaylightName  
cad=cad&chr(13)&elemento.DaylightSecond  
cad=cad&chr(13)&elemento.DaylightYear  
cad=cad&chr(13)&elemento.Description  
cad=cad&chr(13)&elemento.SettingID  
cad=cad&chr(13)&elemento.StandardBias  
cad=cad&chr(13)&elemento.StandardDay  
cad=cad&chr(13)&elemento.StandardDayOfWeek  
cad=cad&chr(13)&elemento.StandardHour  
cad=cad&chr(13)&elemento.StandardMillisecond  
cad=cad&chr(13)&elemento.StandardMinute  
cad=cad&chr(13)&elemento.StandardMonth  
cad=cad&chr(13)&elemento.StandardName  
cad=cad&chr(13)&elemento.StandardSecond  
cad=cad&chr(13)&elemento.StandardYear  
Next
wscript.echo cad