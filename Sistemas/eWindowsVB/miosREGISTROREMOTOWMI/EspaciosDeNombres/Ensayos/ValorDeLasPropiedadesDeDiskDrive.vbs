nDisco = 0
Set objWMIService = GetObject("winmgmts:\root\cimv2")
Set elementosColeccion=objWMIService.ExecQuery("Select * from Win32_DiskDrive")
cad=""
For Each objetoColeccion in elementosColeccion
nDisco = nDisco + 1
cad=cad&chr(13)&"DISCO"&nDisco
cad=cad&chr(13)&"================="
cad=cad&chr(13)&"Caption: "&objetoColeccion.Caption 
cad=cad&chr(13)&"Descripción: " & objetoColeccion.Description 
cad=cad&chr(13)&"Manufactura: " & objetoColeccion.Manufacturer 
cad=cad&chr(13)&"Modelo: " & objetoColeccion.Model 
cad=cad&chr(13)&"Nombre: " & objetoColeccion.Name 
cad=cad&chr(13)&"Particiones: " & objetoColeccion.Partitions 
cad=cad&chr(13)&"Tamaño: " & objetoColeccion.Size 
cad=cad&chr(13)&"Estado: " & objetoColeccion.Status 
cad=cad&chr(13)&"Nombre del Sistema: " & objetoColeccion.SystemName 
cad=cad&chr(13)&"Total Cilindros: " & objetoColeccion.TotalCylinders 
cad=cad&chr(13)&"Total Cabezas: " & objetoColeccion.TotalHeads 
cad=cad&chr(13)&"Total Sectores: " & objetoColeccion.TotalSectors 
cad=cad&chr(13)&"Total Tracks: " & objetoColeccion.TotalTracks 
cad=cad&chr(13)&"Tracks Por Cilindro: " & objetoColeccion.TracksPerCylinder 
wscript.echo cad
cad=""
Next
WSCript.Quit


