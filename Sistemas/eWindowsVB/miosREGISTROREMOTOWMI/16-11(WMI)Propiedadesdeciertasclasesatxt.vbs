Clases="Win32_ComputerSystem Win32_OperatingSystem Win32_Processor Win32_BIOS"
AClases=split(Clases," ")
set fso=createobject("Scripting.fileSystemObject")

for each ele in AClases
	set oWMIC=GetObject("Winmgmts:\root\CIMV2:"&ele)
	set fichero=fso.OpenTextFile("Propiedades"&ele&".txt",2,true)        
	for each propiedad in oWMIC.Properties_
		fichero.WriteLine propiedad.Name
	next
	fichero.close
next


set fichero=nothing
set oWMIC=nothing
set fso=nothing