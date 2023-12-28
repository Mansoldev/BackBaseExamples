'script capaz de modificar un fichero de texto dejando como resultado el mismo fichero de texto pero con lineas de a 40 caracteres
'Para eso diferenciar las palabras que no acaben y ponerlas guión.
fichero=elpoder.txt
nlinea=0
cont=1

set fso=createobject("Scripting.FileSystemObject")
set cursor=fso.opentextfile(fichero,1)
set temporal=fso.opentextfile(a.txt,8,true)

while not cursor.AtEndOfStream
  linea=linea&cursor.readLine
  nlinea=len(linea)
  ltlinea=40
  while nlinea>40 AND ltlinea>=40
    tlinea=mid(linea,cont,40)
    cont=cont+40
    ltlinea=len(tlinea)

    if ltlinea>0 AND ltlinea<40 then
      exit do
    else if ltlinea=40 
        temporal.writeline(tlinea)
    end if

    if ltlinea>40 then
      tlinea=""
    end fi
  wend

  cont=1
  if ltlinea!=40 then
    linea=tlinea
  end fi
wend
cursor.close
temporal.close




