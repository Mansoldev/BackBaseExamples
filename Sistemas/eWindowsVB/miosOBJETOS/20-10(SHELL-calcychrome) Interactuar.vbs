' Preguntamos por pantalla si el usuario quiere ejecutar la calculadora, y en caso de si la ejecutamos, si dice no, ejecutar google
Set osh=WScript.CreateObject("WScript.Shell")
calculadora=msgbox("Desea ejecutar la calculadora?",36,"Ejecutador")
if calculadora=6 then
	osh.exec "calc"
else
	osh.run "http://www.google.es"
end if

set osh=nothing