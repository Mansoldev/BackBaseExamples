Set objWMIService = GetObject("winmgmts:\\.\root\cimv2")
Set colNetCards=objWMIService.ExecQuery("Select * From Win32_NetworkAdapterConfiguration Where IPEnabled = True")
For Each objNetCard in colNetCards
    objNetCard.ReleaseDHCPLease()
Next
