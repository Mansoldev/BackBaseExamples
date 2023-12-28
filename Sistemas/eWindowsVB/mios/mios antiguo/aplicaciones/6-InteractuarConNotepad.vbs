set WshShell = WScript.CreateObject("WScript.Shell")
WshShell.exec "notepad.exe"
WScript.Sleep 100
WshShell.AppActivate "Bloc de notas"
WScript.Sleep 1000
WshShell.SendKeys "ASIR2!!"
WshShell.SendKeys WshShell.CurrentDirectory
WshShell.SendKeys "+{HOME}"
WshShell.SendKeys "^(c)"
WScript.Sleep 1500
WshShell.SendKeys "~"
WshShell.SendKeys "^(v)"
WshShell.SendKeys "~"
WshShell.SendKeys "~"
WshShell.SendKeys "^(v)"
WshShell.SendKeys "~"
WshShell.SendKeys "AHORA"&now
WshShell.SendKeys "~"
WshShell.SendKeys "{x 10}"
WScript.Sleep 1500
WshShell.SendKeys "~"
WshShell.SendKeys "^(g)"
WshShell.SendKeys "HOLA.txt"
WshShell.SendKeys "~"

