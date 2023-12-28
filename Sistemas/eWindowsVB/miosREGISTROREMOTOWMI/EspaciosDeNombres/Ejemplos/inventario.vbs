 '*inventario de equipo*  
   
Set owmi = GetObject("winmgmts:\root\cimv2")
Set colPropiedades = owmi.ExecQuery ("Select * from Win32_OperatingSystem") 
cad=""
For Each oSistemaOperativo in colPropiedades
     cad=cad&vbcr&"********************"
     cad=cad&vbcr&"SISTEMA"
     cad=cad&vbcr& "********************"
     cad=cad&vbcr&"Nombre Sistema: " & oSistemaOperativo.Name 
     cad=cad&vbcr&"Versi�n Sistem: " & oSistemaOperativo.Version
     cad=cad&vbcr&"Services Packs: " & oSistemaOperativo.ServicePackMajorVersion & "." & oSistemaOperativo.ServicePackMinorVersion 
     cad=cad&vbcr&"Nombre Creador: " & oSistemaOperativo.Manufacturer
     cad=cad&vbcr&"Dir.   Windows: " & oSistemaOperativo.WindowsDirectory
     cad=cad&vbcr&"Confg.  Local : " & oSistemaOperativo.Locale
     cad=cad&vbcr&"Memoria F�sic.: " & oSistemaOperativo.FreePhysicalMemory
     cad=cad&vbcr&"Memoria Virtu.: " & oSistemaOperativo.TotalVirtualMemorySize
     cad=cad&vbcr&"Mem. Vir. dis.: " & oSistemaOperativo.FreeVirtualMemory
     cad=cad&vbcr&"Paginamiento  : " & oSistemaOperativo.SizeStoredInPagingFiles
Next
Set colPropiedades = owmi.ExecQuery ("Select * from Win32_ComputerSystem")
For Each oOrdenador in colPropiedades
     cad=cad&vbcr&"********************"
     cad=cad&vbcr&"EQUIPO"
     cad=cad&vbcr&"********************"
     cad=cad&vbcr&"Nombre Equipo : "&oOrdenador.Name
     cad=cad&vbcr&"Constructor Equipo : "&oOrdenador.Manufacturer
     cad=cad&vbcr&"Modelo Equipo : "& oOrdenador.Model
     cad=cad&vbcr&"Zona horaria  : "&oOrdenador.CurrentTimeZone
     cad=cad&vbcr&"Memoria f�sica: " & oOrdenador.TotalPhysicalMemory
Next
Set colPropiedades = owmi.ExecQuery ("Select * from Win32_Processor")
For Each oProcesador in colPropiedades
     cad=cad&vbcr&"********************"
     cad=cad&vbcr&"PROCESADOR"
     cad=cad&vbcr&"********************"
     cad=cad&vbcr&"Tipo Proc.  : " & oProcesador.Architecture
     cad=cad&vbcr&"Descripci�n : " & oProcesador.Description
Next
Set colPropiedades = owmi.ExecQuery ("Select * from Win32_BIOS")
For Each oBIOS in colPropiedades
     cad=cad&vbcr&"********************"
     cad=cad&vbcr&"BIOS"
     cad=cad&vbcr&"********************"
     cad=cad&vbcr& oBIOS.Version  
Next
wscript.echo cad