Set objWMIService=GetObject("winmgmts:\\.\root\cimv2")
Set colNetAdapters=objWMIService.ExecQuery("Select * from Win32_NetworkAdapterConfiguration where IPEnabled=TRUE")
For Each objNetAdapter in colNetAdapters
    wscript.echo objNetAdapter.caption
Next