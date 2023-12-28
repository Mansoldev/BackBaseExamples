Set objWMIService = GetObject("winmgmts:\\.\root\cimv2")
Set IPConfigSet=objWMIService.ExecQuery("Select IPAddress from Win32_NetworkAdapterConfiguration ")
 
For Each IPConfig in IPConfigSet
    If Not IsNull(IPConfig.IPAddress) Then 
        For i=LBound(IPConfig.IPAddress) to UBound(IPConfig.IPAddress)
            WScript.Echo IPConfig.IPAddress(i)
        Next
    End If
Next
