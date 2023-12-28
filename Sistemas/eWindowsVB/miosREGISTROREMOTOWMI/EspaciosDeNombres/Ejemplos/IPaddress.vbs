Set owmi=GetObject("winmgmts:\\.\root\cimv2")
Set adaptadores=owmi.ExecQuery("Select * From Win32_NetworkAdapterConfiguration Where IPEnabled = True")
cad=""
For Each objItem in adaptadores
cad=cad&vbcr&"Caption "&objItem.Caption
cad=cad&vbcr&"====================="
cad=cad&vbcr&"Mac "&objItem.MACAddress
For Each strAddress in objItem.IPAddress
cad=cad&vbcr&strAddress
Next
cad=cad&vbcr&"_____________________"&vbcr
Next 
wscript.echo cad