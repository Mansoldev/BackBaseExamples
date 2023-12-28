do
res=inputbox("Que número convierto?","ASIR-2")
loop until res<>"" and isnumeric(res)

set oS = WScript.CreateObject("WScript.Shell")
oS.exec "calc"
WScript.Sleep 1000
oS.AppActivate "Calculadora"
WScript.Sleep 100
oS.SendKeys "%(3)"
WScript.Sleep 500
oS.SendKeys res
WScript.Sleep 500
oS.SendKeys "{F8}"
WScript.Sleep 500
oS.SendKeys "^(c)"
WScript.Sleep 500
oS.SendKeys "%{f4}"

oS.exec "notepad"
WScript.Sleep 1000
oS.AppActivate "Bloc de notas"
WScript.Sleep 500
oS.SendKeys "^(v)"
WScript.Sleep 500
oS.SendKeys "~"


