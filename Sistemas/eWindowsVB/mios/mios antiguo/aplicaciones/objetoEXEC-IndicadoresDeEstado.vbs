Dim objetoShell,objetoExec
Set objetoShell=wscript.createobject("wscript.shell")
Set objetoExec=objetoShell.Exec("calc.exe")
WScript.Echo objetoExec.Status
WScript.Echo objetoExec.ProcessID
WScript.Echo objetoExec.ExitCode 