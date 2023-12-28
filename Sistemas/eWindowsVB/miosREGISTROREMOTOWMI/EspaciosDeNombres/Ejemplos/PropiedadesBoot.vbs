
Set objWMIService=GetObject("winmgmts:\root\cimv2")
Set colItems= objWMIService.ExecQuery("Select * from Win32_BootConfiguration")

For Each objItem in colItems
    cad=""
    cad=cad&vbcrlf&"Boot Directory: " & objItem.BootDirectory
    cad=cad&vbcrlf&"Configuration Path: " & objItem.ConfigurationPath
    cad=cad&vbcrlf&"Description: " & objItem.Description
    cad=cad&vbcrlf&"Last Drive: " & objItem.LastDrive
    cad=cad&vbcrlf&"Name: " & objItem.Name
    cad=cad&vbcrlf&"Scratch Directory: " & objItem.ScratchDirectory
    cad=cad&vbcrlf&"Setting ID: " & objItem.SettingID
    cad=cad&vbcrlf&"Temp Directory: " & objItem.TempDirectory
    wscript.echo cad
Next

