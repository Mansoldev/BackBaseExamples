sub salir()
   set objWMIService=nothing
   Set colClasses=nothing
   wscript.quit
end sub

espacio=inputBox(string(5,13)&ucase("Qué espacio de nombres?"),"WMI ASIR2")
if espacio="" then wscript.quit

on error resume next
Set objWMIService=GetObject("winmgmts:\\.\root\"&espacio)
if err<>0 then
 msgbox "ERROR! El nombre de espacio está mal escrito o no existe",16,"ASIR-2 Espacio de nombres"
 set objWMIService=nothing
 wscript.quit
end if
Set colClasses = objWMIService.SubclassesOf()
res=msgbox(espacio&" dispone de "&colClasses.count&" clases"&string(2,13)&"¿QUIERES VER UN LISTADO?",36,ucase(espacio)&" Las clases")
if res<>6 then salir

cad=""
nl=0
nlt=1
For Each objClass In colClasses
     cad=cad&chr(13)&"["&nlt&"] "&objClass.Path_.Path
     nlt=nlt+1
if nl>23 then
      nl=1
      res=msgbox(cad&string(2,13)&"¿CONTINUAR?",4,ucase(espacio)&" Las clases")
      if res<>6 then salir
      cad=""   
else
       nl=nl+1
end if
Next
wscript.echo cad
salir
