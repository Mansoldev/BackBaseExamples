function Calcular(xc)
       medida=split("Bytes KB MB GB TB PB EB ZB YB BB"," ")
       munidad="Bytes"  
       for x=1 to ubound(medida)      
           if  xc>=1000 then
               xc=xc/1000
               munidad=medida(x)
           else
               exit for
           end if
       next
     Calcular=formatNumber(xc,2)&munidad
end function

Set Computadora=GetObject("WinMgmts:\root\CIMV2")
Set conjunto=Computadora.ExecQuery("SELECT * FROM Win32_LogicalDisk WHERE Name>'b:'")
cad=""
For Each o In conjunto
  on error resume next
  cad=cad&o.name&" "&o.VolumeName&" Tamaño: "&Calcular(o.size)&chr(13)
next
msgbox cad