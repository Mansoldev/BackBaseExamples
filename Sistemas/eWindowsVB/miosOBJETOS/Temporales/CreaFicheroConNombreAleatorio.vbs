'randomize timer
Set objFSO = CreateObject("Scripting.FileSystemObject")
camino="C:\FSO"
if not objFSO.folderExists(camino) then 
 set carpeta=objFSO.createFolder(camino)
end if
nombre=objFSO.GetTempName
wscript.echo nombre
nombreCompleto=objFSO.BuildPath(camino,nombre)
wscript.echo nombreCompleto
Set archivo=objFSO.openTextFile(nombreCompleto,8,true)
archivo.writeline now
archivo.close