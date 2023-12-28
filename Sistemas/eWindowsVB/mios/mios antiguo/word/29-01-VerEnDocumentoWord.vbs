de="AllUsersDesktop,AllUsersStartMenu,AllUsersPrograms,AllUsersStartup,Desktop,Favorites,Templates,Startup,StartMenu,SendTo,Recent,Programs,PrintHood,MyDocuments,Fonts"
Ade=split(de,",")
ex="Escritorio de todos los Users ,Menú inicio ,Carpeta de programas ,Carpeta de inicio de todos los users ,Path del escritorio ,Path de la carpeta favoritos ,"
ex2="Path de la carpeta plantillas ,Path de la carpeta de inicio ,Path del menú inicio ,Path de la carpeta Enviar a ,Path de la carpeta Documentos recientes ,"
ex3="Path de programas ,Impresión ,Documentos ,Path de la carpeta de las fuentes "
ex=ex&ex2&ex3
Aex=split(ex,",")

Set oW=Wscript.createObject("Word.Application")

oW.Visible=true
set oDW=oW.Documents.Add()
set seleccionado=oW.selection
seleccionado.font.name="Century Gothic"
seleccionado.font.size="48"
seleccionado.font.bold=false
seleccionado.font.shadow=true
seleccionado.typetext "ASIR-2"
seleccionado.typeParagraph()

seleccionado.font.size="11"
seleccionado.font.bold=true
seleccionado.font.shadow=false
seleccionado.typetext "CATÁLOGO DE DIRECTORIOS ESPECIALES DEL SISTEMA"
seleccionado.typetext chr(13)
seleccionado.typetext "Creado el "&now
seleccionado.typeParagraph()

seleccionado.font.size="11"
seleccionado.font.bold=false
seleccionado.font.shadow=false
cl=1
cadena=""
set yuyu=createobject("WScript.Shell")
da=yuyu.currentDirectory
for x=0 to ubound(Aex)
   cadena=cadena&ucase(Aex(x))&chr(13)
   cadena=cadena&string(len(Aex(x)),"=")&chr(13)
   cadena=cadena&yuyu.SpecialFolders(Ade(x))&chr(13)
   if cl<10 then
      cl=cl+1
      else
      seleccionado.typetext cadena
      cl=1
      cadena=""
   end if
next
seleccionado.typetext cadena
oDW.saveAS(da&"\DirectoriosSistema.doc")
re=msgbox("Quieres ver el documento?",36,"ASIR2")
if re=7 then
oDW.close
oW.quit
end if
set seleccionado=nothing
set oDW=nothing
set oW=nothing

