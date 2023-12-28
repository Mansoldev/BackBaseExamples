set oWmi=getObject("Winmgmts:\root\cimv2:Win32_DiskDrive")
cad="":c=1:cp=1
for each propiedad in oWmi.Properties_

    if c<10 then
       cad=cad&"["&cp&"] "&propiedad.name&chr(13)
       c=c+1
       cp=cp+1
    else
       msgbox cad
       cad=""
       c=1
    end if

next 
if c<=10 then msgbox cad