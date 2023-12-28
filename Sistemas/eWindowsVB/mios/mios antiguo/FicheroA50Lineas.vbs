
set fso=wscript.createobject("Scripting.FileSystemObject")
if not fso.fileexists("epdlp.txt") then
   msgbox "El fichero no existe o lo has escrito mal",16,"ASIR-2 FSO"
   set fso=nothing
   wscript.quit
end if
set fe=fso.opentextfile("epdlp.txt",1,false)
set fs=fso.opentextfile("auxiliar.txt",2,true)
while not fe.atendofstream
      lineaE=fe.readline
      lineaS=lineaE
      salida="no"
      do
      l=len(lineaS)
      if l<=50 then
         fs.writeLine(lineaS)
         salida="si"
      else
         lineaS2=left(lineaS,50)
         uc=right(lineaS2,1)
         if uc<>"." and uc<>"," and uc<>";" and uc<>" " then
            lineaS2=left(lineaS,49)&"-"
         end if 
        
         fs.writeLine(lineaS2)
         l=len(lineaS)-49
         lineaS=right(lineaS,l)      
      end if
      loop until salida="si"
wend
fs.close
fe.close
fso.deleteFile("epdlp.txt")
fso.movefile "auxiliar.txt","epdlp.txt"
set fs=nothing
set fe=nothing
set fso=nothing