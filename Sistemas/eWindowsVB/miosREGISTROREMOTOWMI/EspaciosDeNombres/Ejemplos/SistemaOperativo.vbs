Maquina="."
Set objWMIService=GetObject("winmgmts:\\"&Maquina&"\root\CIMV2")
Set colItems=objWMIService.ExecQuery("SELECT * FROM Win32_OperatingSystem")
For Each objItem In colItems
    WScript.Echo objItem.Caption
Next
