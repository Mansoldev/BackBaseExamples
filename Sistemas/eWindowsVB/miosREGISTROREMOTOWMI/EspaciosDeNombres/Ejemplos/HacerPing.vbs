
ips=inputBox("Dirección IP","WMI ASIR2")
if ips="" then wscript.quit

Set objWMIService = GetObject("winmgmts:\\.\root\cimv2")
Set colPings = objWMIService.ExecQuery("Select * From Win32_PingStatus where Address ='"&ips&"'")

For Each objStatus in colPings
    If IsNull(objStatus.StatusCode) or objStatus.StatusCode<>0 Then 
        WScript.Echo ips&" No responde" 
    Else
        Wscript.Echo ips&" Si responde"
    End If
Next
