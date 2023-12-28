sub salir()
   set objWMIService=nothing
   Set colClasses=nothing
   wscript.quit
end sub

Set objWMIService=GetObject("winmgmts:\\.\root\CIMV2")
Set colClasses=objWMIService.SubclassesOf()
res=msgbox("cimv2 dispone de "&colClasses.count&" clases"&chr(13)&"¿QUIERES VER UN LISTADO?",36,"CIMV2 Las clases")
if res<>6 then salir
cad=""
nl=0
nlt=1
For Each objClass In colClasses
     cad=cad&chr(13)&"["&nlt&"] "&objClass.Path_.Class
     nlt=nlt+1
if nl>23 then
      nl=1
       res=msgbox(cad&string(2,13)&"¿CONTINUAR?",4,"CIMV2 Las clases")
       if res<>6 then salir
      cad=""   
    else
      nl=nl+1
    end if
Next
wscript.echo cad
salir