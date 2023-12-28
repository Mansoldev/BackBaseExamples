set objeto=WScript.CreateObject("WScript.Shell")
objeto.run "c:\windows\system32\mspaint.exe"
cadena=day(date)&"-"&month(date)&"-"&year(date)&"-"&hour(time)&"-"&minute(time)
objeto.AppActivate "Paint"
wscript.sleep 1000
objeto.SendKeys "^(v)"
wscript.sleep 1000
objeto.SendKeys "{F12}"
wscript.sleep 1000
objeto.SendKeys "yuyu"&cadena
wscript.sleep 1000
objeto.SendKeys "~"
wscript.sleep 1000
objeto.SendKeys "%({F4})"
