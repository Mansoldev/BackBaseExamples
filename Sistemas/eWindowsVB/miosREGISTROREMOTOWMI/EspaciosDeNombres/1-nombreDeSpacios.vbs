Set oWMIC=GetObject("winmgmts:\\.\root")
Set ColeccionNS=oWMIC.InstancesOf("__NAMESPACE")
cadena=""
For Each oNS In ColeccionNS
            cadena=cadena&chr(13)&oNS.Name
Next
wscript.echo cadena